#include <stdint.h>
#include "altera_avalon_tse.h"
#include "eth_init.h"

#define MDIO_ADDR 0x0A



int init_eth(uint8_t* mac){
	printf("I am ethernet!\n");

	uint32_t * eth_base_reg;
	eth_base_reg = (uint32_t*)ETH_BASE;



	printf("Eth reg %X \n", eth_base_reg[2]);

	eth_base_reg[3] = 0x17231c00;
	eth_base_reg[4] = 0x0000CB4a;

	printf("mac 0 reg %X \n", eth_base_reg[3]);
	printf("mac 1 reg %X \n", eth_base_reg[4]);


	uint32_t mac_config = 0x0;
	mac_config = 0x00000008;
	eth_base_reg[2] = mac_config;
	eth_base_reg[2] = eth_base_reg[2] | 0x00000003;

	eth_base_reg[2] = eth_base_reg[2] | 0x00002000;

	//Desktop mac 30-5A-3A-E1-2D-AF
	printf("MAC enabled, reg %X \n", eth_base_reg[2]);

	return 0;

}

