#include "fbcunit.bi"

'' A procedure declared with a BYREF AS ANY parameter and defined with a
'' typed parameter: calls placed after the definition must still accept any
'' type, like the calls placed before it (they failed with "Type mismatch").

declare sub setFirstLong( byref p as any, byval v as long )

private sub callBefore( )
	dim as double d = 0
	setFirstLong( d, 5 )
end sub

sub setFirstLong( byref p as long, byval v as long )
	p = v
end sub

SUITE( fbc_tests.functions.byref_any_after_define )

	TEST( afterDefinition )
		dim as long l = 0
		setFirstLong( l, 7 )
		CU_ASSERT_EQUAL( l, 7 )

		dim as longint li = 0
		setFirstLong( li, 9 )
		CU_ASSERT_EQUAL( li, 9 )

		dim as short sh(0 to 3)
		setFirstLong( sh(0), &h00030004 )
		CU_ASSERT_EQUAL( sh(0), 4 )
		CU_ASSERT_EQUAL( sh(1), 3 )

		callBefore( )
	END_TEST

END_SUITE
