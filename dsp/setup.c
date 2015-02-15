

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

	double data[DB_LENGTH] = []	//TODO: fill with schur coeffs from matlab 
	
	temp->data = data;
	temp->next = NULL;

	database_t* head = temp;
	database_t* last = head;

	temp = NULL;
	
	//From here to --->
	temp = malloc(sizeof(database_t));
	if(temp = NULL){
		fprintf(stderr, "out of memory at %d, in %s\n", (__LINE__ - 2), __FILE__);
		exit(1);
	}

	data[DB_LENGTH] = [] //TODO: fill with schur coeffs from matlab
	temp->data = data;
	temp->next = NULL;

	last->next = temp;
	last = temp;

	// ---> here adds one new database to the list of spoken words which we 
	//  wants to match agianst.  

	dsp_set_leds(0);
	dsp_set_leds(SETUP_LEDS);
	dsp_set_leds(0);

	return head;

}


//tear down ?
