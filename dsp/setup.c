

#include "setup.h"
#include <stdio.h>

database_t* setup(void)
{
	
	//maybe need to turn off physical interrupts here.

	dsp_set_leds(SETUP_LEDS);

	database_t* temp = malloc(sizeof(database_t));
	if(temp = NULL){
		fprintf(stderr, "out of memory at %d, in %s\n", (__LINE__ - 2), __FILE__);
		exit(1);
	}

	data = []	//TODO: fill with schur coeffs from matlab 
	temp->data = data;
	database_t* head = temp;



	database_t* temp = malloc(sizeof(database_t));
	if(temp = NULL){
		fprintf(stderr, "out of memory at %d, in %s\n", (__LINE__ - 2), __FILE__);
		exit(1);
	}



	return head;

}
