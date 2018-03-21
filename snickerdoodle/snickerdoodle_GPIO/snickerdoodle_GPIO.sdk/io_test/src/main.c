/*
 * main.c: snickerdoodle test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sleep.h>
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "xgpiops.h"
#include "xgpio.h"


#define ARRAY_COUNT(__ARRAY__)		(sizeof(__ARRAY__) / sizeof(__ARRAY__[0]))

#define BUFFER_LENGTH				(256)				/**< Command buffer */
#define MAX_ARGS					(16)				/**< Maximum number of arguments */

#define CHANNEL_PIN_MASK			((u32)0x1FFFFFF)	/**< Pin port mask */
#define NGPIO_PORTS					(4)					/**< Number of GPIO ports */
#define NGPIOS						(25)				/**< Number of GPIO pins per port */

#define PS_BANK0_MASK				((u32)0xFFFF0000)	/**< Bank 0 bit mask for J3 */
#define PS_BANK1_MASK				((u32)0x003000FF)	/**< Bank 1 bit mask for J3 */

/**
 * @struct fpga_gpio_conn
 * @brief  FPGA GPIO connector structure
 */
struct fpga_gpio_conn {
	const char		*name;		/**< Connector name */
	XGpio			*gpio;		/**< GPIO instance */
	unsigned		chan;		/**< Channel */
};


struct ps_gpio_bank {
	u32				id;
	u32				mask;
};


struct ps_gpio_pin {
	int				num;			/**< MIO number */
	u32				bank;			/**< Bank number */
	u32				mask;			/**< Bank mask for J3 */
	int				map;			/**< Connected MIO GPIO pin */
};


static XGpioPs ps_gpio;			/**< PS GPIO instance */
static XGpio axi_gpio0;			/**< AXI GPIO 0 instance */
static XGpio axi_gpio1;			/**< AXI GPIO 1 instance */


struct fpga_gpio_conn fpga_gpio_conns[] = {
		{ "JA1",	&axi_gpio0,	1 },
		{ "JA2",	&axi_gpio0,	2 },
		{ "JB1",	&axi_gpio1,	1 },
		{ "JB2",	&axi_gpio1,	2 }
};


struct ps_gpio_pin ps_gpio_pins[] = {
		{ 16,	XGPIOPS_BANK0,	PS_BANK0_MASK,	19 },
		{ 17,	XGPIOPS_BANK0,	PS_BANK0_MASK,	18 },
		{ 18,	XGPIOPS_BANK0,	PS_BANK0_MASK,	17 },
		{ 19,	XGPIOPS_BANK0,	PS_BANK0_MASK,	16 },
		{ 20,	XGPIOPS_BANK0,	PS_BANK0_MASK,	23 },
		{ 21,	XGPIOPS_BANK0,	PS_BANK0_MASK,	22 },
		{ 22,	XGPIOPS_BANK0,	PS_BANK0_MASK,	21 },
		{ 23,	XGPIOPS_BANK0,	PS_BANK0_MASK,	20 },
		{ 24,	XGPIOPS_BANK0,	PS_BANK0_MASK,	27 },
		{ 25,	XGPIOPS_BANK0,	PS_BANK0_MASK,	26 },
		{ 26,	XGPIOPS_BANK0,	PS_BANK0_MASK,	25 },
		{ 27,	XGPIOPS_BANK0,	PS_BANK0_MASK,	24 },
		{ 28,	XGPIOPS_BANK0,	PS_BANK0_MASK,	31 },
		{ 29,	XGPIOPS_BANK0,	PS_BANK0_MASK,	30 },
		{ 30,	XGPIOPS_BANK0,	PS_BANK0_MASK,	29 },
		{ 31,	XGPIOPS_BANK0,	PS_BANK0_MASK,	28 },
		{ 0,	XGPIOPS_BANK1,	PS_BANK1_MASK,	3 },
		{ 1,	XGPIOPS_BANK1,	PS_BANK1_MASK,	2 },
		{ 2,	XGPIOPS_BANK1,	PS_BANK1_MASK,	1 },
		{ 3,	XGPIOPS_BANK1,	PS_BANK1_MASK,	0 },
		{ 4,	XGPIOPS_BANK1,	PS_BANK1_MASK,	7 },
		{ 5,	XGPIOPS_BANK1,	PS_BANK1_MASK,	6 },
		{ 6,	XGPIOPS_BANK1,	PS_BANK1_MASK,	5 },
		{ 7,	XGPIOPS_BANK1,	PS_BANK1_MASK,	4 },
		{ 20,	XGPIOPS_BANK1,	PS_BANK1_MASK,	21 },
		{ 21,	XGPIOPS_BANK1,	PS_BANK1_MASK,	20 }
};

struct ps_gpio_bank ps_gpio_banks[] = {
		{ XGPIOPS_BANK0,	PS_BANK0_MASK },
		{ XGPIOPS_BANK1,	PS_BANK1_MASK },
};


/* Values represent bits (pins) connected to each pin index */
u32 pin_map[] = {
		0x0080000,		/* 0, Pin: 26 -> 25*/
		0x0040000,		/* 1, Pin: 24 -> 23 */
		0x0000020,		/* 2, Pin: 29 -> 30 */
		0x0000010,		/* 3, Pin: 31 -> 32*/
		0x0000008,		/* 4, Pin: 32 -> 31 */
		0x0000004,		/* 5, Pin: 30 -> 29 */
		0x0800000,		/* 6, Pin: 35 -> 36 */
		0x0400000,		/* 7, Pin: 37 -> 38 */
		0x1000800,		/* 8, Pin: 5  -> 6 + 4 */
		0x0000400,		/* 9, Pin: 7  -> 8 */
		0x0000200,		/* 10, Pin: 8 -> 7 */
		0x1000100,		/* 11, Pin: 6 -> 5 + 4 */
		0x0008000,		/* 12, Pin: 11 -> 12*/
		0x0004000,		/* 13, Pin: 13 -> 14 */
		0x0002000,		/* 14, Pin: 14 -> 13 */
		0x0001000,		/* 15, Pin: 12 -> 11 */
		0x0200000,		/* 16, Pin: 20 -> 19 */
		0x0100000,		/* 17, Pin: 18 -> 17 */
		0x0000002,		/* 18, Pin: 23 -> 24 */
		0x0000001,		/* 19, Pin: 25 -> 26 */
		0x0020000,		/* 20, Pin: 17 -> 18 */
		0x0010000,		/* 21, Pin: 19 -> 20 */
		0x0000080,		/* 22, Pin: 38 -> 37 */
		0x0000040,		/* 23, Pin: 36 -> 35 */
		0x0000900,		/* 24, Pin: 4 -> 6 + 5 */
};


/**
 *  @brief		Read All FPGA GPIOs
 *
 *  @param  data:	Pointer to data array to populate with data
 *  @param  len:	Length of data array
 *  @retval Number of GPIO ports (channels) read
 */
int gpio_read_all(u32 *data, int len)
{
	int i = 0;

	if (data == NULL)
		return -1;

	if (len != ARRAY_COUNT(fpga_gpio_conns))
		return -2;

	for (i = 0; i < ARRAY_COUNT(fpga_gpio_conns); i++) {
		*data++ = XGpio_DiscreteRead(fpga_gpio_conns[i].gpio, fpga_gpio_conns[i].chan) & CHANNEL_PIN_MASK;
	}

	return i;
}


/**
 * @brief		Run FPGA IO Test
 *
 * @param  gpio:		AXI GPIO connector structure to test
 * @param  conn_idx:	GPIO connector index in table
 * @param  buf_out:		Test output buffer
 * @param  buf_out_len:	Test output buffer length
 * @retval 0 on success, error status otherwise
 */
static int run_fpga_io_test(struct fpga_gpio_conn *gpio, int conn_idx, char *buf_out, int buf_out_len)
{
	int i, pin;
	u32 test_val;
	u32 read_data;
	u32 ps_gpio_dir;

	/* Set all pins on all connectors to 'input' */
	for (i = 0; i < ARRAY_COUNT(fpga_gpio_conns); i++) {
		/* Set all ports to input */
		XGpio_SetDataDirection(fpga_gpio_conns[i].gpio, fpga_gpio_conns[i].chan, CHANNEL_PIN_MASK);
	}

	/* Set all PS GPIO on J3 as 'input' */
	ps_gpio_dir = XGpioPs_GetDirection(&ps_gpio, XGPIOPS_BANK0);
	ps_gpio_dir &= ~(PS_BANK0_MASK);
	XGpioPs_SetDirection(&ps_gpio, XGPIOPS_BANK0, ps_gpio_dir);

	ps_gpio_dir = XGpioPs_GetDirection(&ps_gpio, XGPIOPS_BANK1);
	ps_gpio_dir &= ~(PS_BANK1_MASK);
	XGpioPs_SetDirection(&ps_gpio, XGPIOPS_BANK1, ps_gpio_dir);

	usleep(1000);

	/* Check that all of the FPGA IO read 'high' */
	for (i = 0; i < NGPIO_PORTS; i++) {
		if ((read_data = (XGpio_DiscreteRead(fpga_gpio_conns[i].gpio, fpga_gpio_conns[i].chan) & CHANNEL_PIN_MASK)) != CHANNEL_PIN_MASK) {
			snprintf(buf_out, buf_out_len, "<ERROR>: FPGA Connector %s - 0x%07lX (0x%07lX)", fpga_gpio_conns[i].name, CHANNEL_PIN_MASK, read_data);
			goto err;
		}
	}

	usleep(1000);

	/* Test each pin on the connector */
	for (pin = 0; pin < NGPIOS; pin++) {

		/* Set the pin as output */
		XGpio_SetDataDirection(gpio->gpio, gpio->chan, ~((u32)(1 << pin)));

		usleep(1000);
		XGpio_DiscreteWrite(gpio->gpio, gpio->chan, CHANNEL_PIN_MASK);

		usleep(1000);

		test_val = CHANNEL_PIN_MASK; //~((u32)(1 << pin)) & CHANNEL_PIN_MASK;
		for (i = 0; i < NGPIO_PORTS; i++) {
			if (i == conn_idx) {
				/* Reading the GPIO por	t with the pin set */
				if ((read_data = (XGpio_DiscreteRead(fpga_gpio_conns[i].gpio, fpga_gpio_conns[i].chan) & CHANNEL_PIN_MASK)) != test_val) {
					snprintf(buf_out, buf_out_len, "<ERROR>: FPGA Connector %s - 0x%07lX (0x%07lX)", fpga_gpio_conns[i].name, test_val, read_data);
					goto err;
				}
			} else {
				if ((read_data = (XGpio_DiscreteRead(fpga_gpio_conns[i].gpio, fpga_gpio_conns[i].chan) & CHANNEL_PIN_MASK)) != CHANNEL_PIN_MASK) {
					snprintf(buf_out, buf_out_len, "<ERROR>: FPGA Connector %s - 0x%07lX (0x%07lX)", fpga_gpio_conns[i].name, CHANNEL_PIN_MASK, read_data);
					goto err;
				}
			}
		}

		/* Read Bank 0 of PS GPIO */
		if ((read_data = (XGpioPs_Read(&ps_gpio, XGPIOPS_BANK0) & PS_BANK0_MASK)) != PS_BANK0_MASK) {
			snprintf(buf_out, buf_out_len, "<ERROR>: PS Connector %s - 0x%07lX (0x%07lX)", "J3", PS_BANK0_MASK, read_data);
			goto err;
		}

		/* Read Bank 1 of PS GPIO */
		if ((read_data = (XGpioPs_Read(&ps_gpio, XGPIOPS_BANK1) & PS_BANK1_MASK)) != PS_BANK1_MASK) {
			snprintf(buf_out, buf_out_len, "<ERROR>: PS Connector %s - 0x%07lX (0x%07lX)", "J3", PS_BANK1_MASK, read_data);
			goto err;
		}

		/* Set the pin to 'low' */
		XGpio_DiscreteWrite(gpio->gpio, gpio->chan, ~((u32)(1 << pin)));

		test_val = ~((u32)(pin_map[pin] | (1 << pin))) & CHANNEL_PIN_MASK;
		for (i = 0; i < NGPIO_PORTS; i++) {
			if (i == conn_idx) {
				/* Reading the GPIO port with the pin set */
				if ((read_data = (XGpio_DiscreteRead(fpga_gpio_conns[i].gpio, fpga_gpio_conns[i].chan) & CHANNEL_PIN_MASK)) != test_val) {
					snprintf(buf_out, buf_out_len, "<ERROR>: FPGA Connector %s - 0x%07lX (0x%07lX)", fpga_gpio_conns[i].name, test_val, read_data);
					goto err;
				}
			} else {
				if ((read_data = (XGpio_DiscreteRead(fpga_gpio_conns[i].gpio, fpga_gpio_conns[i].chan) & CHANNEL_PIN_MASK)) != CHANNEL_PIN_MASK) {
					snprintf(buf_out, buf_out_len, "<ERROR>: FPGA Connector %s - 0x%07lX (0x%07lX)", fpga_gpio_conns[i].name, CHANNEL_PIN_MASK, read_data);
					goto err;
				}
			}
		}

		/* Read Bank 0 of PS GPIO */
		if ((read_data = (XGpioPs_Read(&ps_gpio, XGPIOPS_BANK0) & PS_BANK0_MASK)) != PS_BANK0_MASK) {
			snprintf(buf_out, buf_out_len, "<ERROR>: PS Connector %s - 0x%07lX (0x%07lX)", "J3", PS_BANK0_MASK, read_data);
			goto err;
		}

		/* Read Bank 1 of PS GPIO */
		if ((read_data = (XGpioPs_Read(&ps_gpio, XGPIOPS_BANK1) & PS_BANK1_MASK)) != PS_BANK1_MASK) {
			snprintf(buf_out, buf_out_len, "<ERROR>: PS Connector %s - 0x%07lX (0x%07lX)", "J3", PS_BANK1_MASK, read_data);
			goto err;
		}

		/* Set the pin back 'high' */
		XGpio_DiscreteWrite(gpio->gpio, gpio->chan, CHANNEL_PIN_MASK);

		/* Reset all pins back to inputs */
		XGpio_SetDataDirection(gpio->gpio, gpio->chan, CHANNEL_PIN_MASK);

	}
	/* If we get this far, the test was successful */
	snprintf(buf_out, buf_out_len, "%-20s%-30s", gpio->name, "IO Test Successful");

	return 0;

err:
	/* Set all pins on all connectors to 'input' */
	for (i = 0; i < ARRAY_COUNT(fpga_gpio_conns); i++) {
		/* Set all ports to input */
		XGpio_SetDataDirection(fpga_gpio_conns[i].gpio, fpga_gpio_conns[i].chan, CHANNEL_PIN_MASK);
	}

	return -1;
}


/**
 * @brief		Run PS IO Test
 *
 * @param  gpio:		PS GPIO instance
 * @param  buf_out:		Test output buffer
 * @param  buf_out_len:	Test output buffer length
 * @retval 0 on success, error status otherwise
 */
static int run_ps_io_test(XGpioPs *gpio, char *buf_out, int buf_out_len)
{
	int i, pin;
	u32 read_data;
	u32 bank_dir;			/* Bank direction */
	u32 bank_oen;			/* Bank output enable */
	u32 bank_val;			/* Bank value */
	u32 test_val;			/* Value to test */

	/* Set all pins on all connectors to 'input' */
	for (i = 0; i < ARRAY_COUNT(fpga_gpio_conns); i++) {
		/* Set all ports to input */
		XGpio_SetDataDirection(fpga_gpio_conns[i].gpio, fpga_gpio_conns[i].chan, CHANNEL_PIN_MASK);
	}

	/* Set all PS GPIO on J3 as 'input' */
	bank_dir = XGpioPs_GetDirection(&ps_gpio, XGPIOPS_BANK0);
	bank_dir &= ~(PS_BANK0_MASK);
	XGpioPs_SetDirection(&ps_gpio, XGPIOPS_BANK0, bank_dir);

	bank_dir = XGpioPs_GetDirection(&ps_gpio, XGPIOPS_BANK1);
	bank_dir &= ~(PS_BANK1_MASK);
	XGpioPs_SetDirection(&ps_gpio, XGPIOPS_BANK1, bank_dir);

	usleep(1000);

	/* All FPGA I/O should read back 'high' */
	for (i = 0; i < NGPIO_PORTS; i++) {
		if ((read_data = (XGpio_DiscreteRead(fpga_gpio_conns[i].gpio, fpga_gpio_conns[i].chan) & CHANNEL_PIN_MASK)) != CHANNEL_PIN_MASK) {
			snprintf(buf_out, buf_out_len, "<ERROR>: FPGA Connector %s - 0x%07lX (0x%07lX)", fpga_gpio_conns[i].name, CHANNEL_PIN_MASK, read_data);
			goto err;
		}
	}

	usleep(1000);

	/* Test each pin on the connector */
	for (pin = 0; pin < ARRAY_COUNT(ps_gpio_pins); pin++) {

		/* Set the direction of the pin to 'output' */
		bank_dir = XGpioPs_GetDirection(&ps_gpio, ps_gpio_pins[pin].bank);
		bank_dir &= ~(ps_gpio_pins[pin].mask);
		bank_dir |= (1 << ps_gpio_pins[pin].num);
		XGpioPs_SetDirection(&ps_gpio, ps_gpio_pins[pin].bank, bank_dir);

		/* Enable the output of the pin */
		bank_oen = XGpioPs_GetOutputEnable(&ps_gpio, ps_gpio_pins[pin].bank);
		bank_oen &= ~(ps_gpio_pins[pin].mask);
		bank_oen |= (1 << ps_gpio_pins[pin].num);
		XGpioPs_SetOutputEnable(&ps_gpio, ps_gpio_pins[pin].bank, bank_oen);

		/* Set the pin to 'high' */
		bank_val = XGpioPs_Read(&ps_gpio, ps_gpio_pins[pin].bank);
		bank_val &= ~(ps_gpio_pins[pin].mask);
		bank_val |= ps_gpio_pins[pin].mask;
		XGpioPs_Write(&ps_gpio, ps_gpio_pins[pin].bank, bank_val);

		usleep(1000);

		/* All FPGA pins should remain 'high' while testing PS GPIO */
		for (i = 0; i < NGPIO_PORTS; i++) {
			if ((read_data = (XGpio_DiscreteRead(fpga_gpio_conns[i].gpio, fpga_gpio_conns[i].chan) & CHANNEL_PIN_MASK)) != CHANNEL_PIN_MASK) {
				snprintf(buf_out, buf_out_len, "<ERROR>: FPGA Connector %s - 0x%07lX (0x%07lX)", fpga_gpio_conns[i].name, CHANNEL_PIN_MASK, read_data);
				goto err;
			}
		}

		for (i = 0; i < 2; i++) {
			if ((read_data = (XGpioPs_Read(&ps_gpio, ps_gpio_banks[i].id) & ps_gpio_banks[i].mask)) != ps_gpio_banks[i].mask) {
				snprintf(buf_out, buf_out_len, "<ERROR>: PS Connector %s - 0x%07lX (0x%07lX)", "J3", ps_gpio_banks[i].mask, read_data);
				goto err;
			}

		}

		/* Set the pin 'low' */
		bank_val = XGpioPs_Read(&ps_gpio, ps_gpio_pins[pin].bank);
		bank_val &= ~(ps_gpio_pins[pin].mask);
		bank_val &= ~(1 << ps_gpio_pins[pin].num);
		XGpioPs_Write(&ps_gpio, ps_gpio_pins[pin].bank, bank_val);

		usleep(1000);

		/* The pin and it's connected pin should both read low */
		test_val = ~((1 << ps_gpio_pins[pin].num) | (1 << ps_gpio_pins[pin].map)) & ps_gpio_pins[pin].mask;
		for (i = 0; i < 2; i++) {
			if (ps_gpio_banks[i].id == ps_gpio_pins[pin].bank) {
				if ((read_data = (XGpioPs_Read(&ps_gpio, ps_gpio_pins[pin].bank) & ps_gpio_pins[pin].mask)) != test_val) {
					snprintf(buf_out, buf_out_len, "<ERROR>: PS Connector %s - 0x%07lX (0x%07lX)", "J3", test_val, read_data);
					goto err;
				}
			} else {
				/* The other bank should read back all 'high' */
				if ((read_data = (XGpioPs_Read(&ps_gpio, ps_gpio_banks[i].id) & ps_gpio_banks[i].mask)) != ps_gpio_banks[i].mask) {
					snprintf(buf_out, buf_out_len, "<ERROR>: PS Connector %s - 0x%07lX (0x%07lX)", "J3", ps_gpio_banks[i].mask, read_data);
					goto err;
				}
			}
		}

		/* All FPGA pins should remain 'high' while testing PS GPIO */
		for (i = 0; i < NGPIO_PORTS; i++) {
			if ((read_data = (XGpio_DiscreteRead(fpga_gpio_conns[i].gpio, fpga_gpio_conns[i].chan) & CHANNEL_PIN_MASK)) != CHANNEL_PIN_MASK) {
				snprintf(buf_out, buf_out_len, "<ERROR>: FPGA Connector %s - 0x%07lX (0x%07lX)", fpga_gpio_conns[i].name, CHANNEL_PIN_MASK, read_data);
				goto err;
			}
		}

		/* Reset the pin to 'high' */
		bank_val = XGpioPs_Read(&ps_gpio, ps_gpio_pins[pin].bank);
		bank_val &= ~(ps_gpio_pins[pin].mask);							/* Keep the current state of MIO pins not on J3 */
		bank_val |= ps_gpio_pins[pin].mask;								/* Write the entire bank to 'high' */
		XGpioPs_Write(&ps_gpio, ps_gpio_pins[pin].bank, bank_val);

		/* Disable output on pins */
		bank_oen = XGpioPs_GetOutputEnable(&ps_gpio, ps_gpio_pins[pin].bank);
		bank_oen &= ~(ps_gpio_pins[pin].mask);							/* Disable the output on the bank */
		XGpioPs_SetOutputEnable(&ps_gpio, ps_gpio_pins[pin].bank, bank_oen);

		/* Set pin as 'input' */
		bank_dir = XGpioPs_GetDirection(&ps_gpio, ps_gpio_pins[pin].bank);
		bank_dir &= ~(ps_gpio_pins[pin].mask);							/* Set the direction of the bank to 'input' */
		XGpioPs_SetDirection(&ps_gpio, ps_gpio_pins[pin].bank, bank_dir);
	}

	snprintf(buf_out, buf_out_len, "%-20s%-30s", "J3", "IO Test Successful");
	return 0;

err:
	/* Set all pins as 'input' before exiting */
	for (i = 0; i < ARRAY_COUNT(ps_gpio_banks); i++) {
		bank_oen = XGpioPs_GetOutputEnable(&ps_gpio, ps_gpio_banks[i].id);
		bank_oen &= ~(ps_gpio_banks[i].mask);
		XGpioPs_SetOutputEnable(&ps_gpio, ps_gpio_banks[i].id, bank_oen);

		bank_dir = XGpioPs_GetDirection(&ps_gpio, ps_gpio_banks[i].id);
		bank_dir &= ~(ps_gpio_banks[i].mask);
		XGpioPs_SetDirection(&ps_gpio, ps_gpio_banks[i].id, bank_dir);
	}
	return -1;
}


/**
 * @brief		Command Execution
 *
 * @param  src:			Null terminated source string to extract command
 * @param  buf_out:		Output buffer to use for command result
 * @param  buf_out_len:	Output buffer size
 * @retval Index of the matching command or -1 if not found
 */
static int command_exec(char *src, char *buf_out, uint32_t buf_out_len) {
	static char seps[] = " ,;\t\n\r";
	char *cmd_str;
	char *args[MAX_ARGS];
	int argc = 0;
	int i;
	struct fpga_gpio_conn *gpio;

	/* Scan the input string for separating tokens */
	cmd_str = strtok(src, seps);

	if (cmd_str == NULL)
		return -1;

	args[argc]= strtok(NULL, seps);

	while (args[argc] != NULL)
		args[++argc] = strtok(NULL, seps);

	/* Run through the connector list and pass the arguments */
	for (i = 0; i < ARRAY_COUNT(fpga_gpio_conns); i++) {
		gpio = &fpga_gpio_conns[i];

		if (strcasecmp(cmd_str, gpio->name) == 0) {
			/* A match was found, should execute test using the connector */

			/* Run the IO test */
			run_fpga_io_test(gpio, i, buf_out, buf_out_len);

			/* Return the index */
			return i;
		}
	}

	if (strcasecmp(cmd_str, "J3") == 0) {
		/* Run the IO test */
		run_ps_io_test(&ps_gpio, buf_out, buf_out_len);

		/* Return the index */
		return ++i;
	}

	/* If we've arrived here, the command was not found. Return the error. */
	snprintf(buf_out, buf_out_len, "<ERROR>: Invalid command: %s", cmd_str);

	return (-1);
}


/**
 * @main
 */
int main()
{
	int status;
	char *buf, *buf_out;
	int i = 0;
	XGpioPs_Config *ps_gpio_config;

    init_platform();

    /* Lookup PS GPIO configuration from table */
    if ((ps_gpio_config = XGpioPs_LookupConfig(XPAR_PS7_GPIO_0_DEVICE_ID)) == NULL)
    	return XST_FAILURE;

    /* Initialize PS GPIO */
	XGpioPs_CfgInitialize(&ps_gpio, ps_gpio_config, ps_gpio_config->BaseAddr);

    /* Initialize the AXI GPIO0 peripheral */
    status = XGpio_Initialize(&axi_gpio0, XPAR_GPIO_0_DEVICE_ID);
	if (status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/* Initialize the AXI GPIO1 peripheral */
    status = XGpio_Initialize(&axi_gpio1, XPAR_GPIO_1_DEVICE_ID);
	if (status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	buf = malloc(sizeof(char) * BUFFER_LENGTH);
	if (buf == NULL)
		return -1;

	buf_out = malloc(sizeof(char) * BUFFER_LENGTH);
	if (buf_out == NULL)
		return -1;

	/* Loop for handling commands */
	while (1) {

		/* Read '\r' delimited commands from the console (UART0) */
		buf[i] = inbyte();

		if (buf[i] == '\r') {
			/* Process the command */
			buf[i] = '\0';

			command_exec(buf, buf_out, BUFFER_LENGTH);

			strcat(buf_out, "\n");
			print(buf_out);

			memset(buf, '\0', BUFFER_LENGTH);
			i = 0;
		} else {
			i++;
		}
	}

	free(buf);
    cleanup_platform();

    return 0;
}
