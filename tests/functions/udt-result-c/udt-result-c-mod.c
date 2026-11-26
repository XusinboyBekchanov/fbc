/* UDTs of 1 to 8 bytes (only integers) returned by value:
   C functions called from FB, and FB functions called from C */

#define DEFINE_T( N ) \
	typedef struct { unsigned char b[N]; } T##N; \
	T##N c##N( void ) \
	{ \
		T##N r; \
		int i; \
		for( i = 0; i < N; i++ ) \
			r.b[i] = 10 * N + i; \
		return r; \
	} \
	T##N fb##N( void ); \
	int check_fb##N( void ) \
	{ \
		T##N a[2]; \
		int i, ok = 1; \
		a[1].b[0] = 0xAA; \
		a[0] = fb##N(); \
		for( i = 0; i < N; i++ ) \
			ok &= ( a[0].b[i] == 20 * N + i ); \
		ok &= ( a[1].b[0] == 0xAA ); \
		return ok; \
	}

DEFINE_T( 1 )
DEFINE_T( 2 )
DEFINE_T( 3 )
DEFINE_T( 4 )
DEFINE_T( 5 )
DEFINE_T( 6 )
DEFINE_T( 7 )
DEFINE_T( 8 )
