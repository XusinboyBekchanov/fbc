' TEST_MODE : COMPILE_AND_RUN_OK

'' -lang qb: &h0000FFFF and &h0000FF00 are 16-bit INTEGER literals (-1 and
'' &hFF00 sign-extended), so __LOWORD() and __HIBYTE() kept the higher bits

#define ASSERT(e) if (e) = 0 then fb_Assert(__FILE__, __LINE__, __FUNCTION__, #e)

ASSERT( __LOWORD( &H12345678& ) = &H5678& )
ASSERT( __HIWORD( &H12345678& ) = &H1234& )
ASSERT( __LOWORD( -1& ) = 65535& )
ASSERT( __LOBYTE( &H1234& ) = &H34& )
ASSERT( __HIBYTE( &H1234& ) = &H12& )
ASSERT( __HIBYTE( &HFF00& ) = 255& )
ASSERT( __HIBYTE( -1& ) = 255& )

DIM x AS LONG
x = &HABCDEF12&
ASSERT( __LOWORD( x ) = &HEF12& )
ASSERT( __HIBYTE( x ) = &HEF& )
