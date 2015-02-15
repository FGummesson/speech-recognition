##ifndef  DATABASE
#define DATABASE 

// Database is used as a storage for spoken words. Each db object stores schur coeffs of one word. 

#define DB_LENGTH	(120)	//10 columns with 12 coeffs in each. 


typedef struct struct database_t;
struct database_t{
	database_t* next;
	double data[DB_LENGTH];
};

#endif