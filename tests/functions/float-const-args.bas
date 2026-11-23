#include "fbcunit.bi"

'' SINGLE/DOUBLE constants passed as arguments, in registers and on the
'' stack (the 9th float argument is on the stack on win64 and linux):
'' - -0.0 must keep its sign (gas64 passed +0.0)
'' - negative SINGLE constants on the stack (gas64 emitted 'push 0x80000000'
''   or similar on linux, which does not assemble)

SUITE( fbc_tests.functions.float_const_args )

	private function signS( byval x as single ) as integer
		return (*cptr( ulong ptr, @x )) shr 31
	end function

	private function signD( byval x as double ) as integer
		return (*cptr( ulongint ptr, @x )) shr 63
	end function

	private function lastS( byval a as single, byval b as single, byval c as single, byval d as single, _
		byval e as single, byval f as single, byval g as single, byval h as single, byval x as single ) as single
		return x
	end function

	private function lastD( byval a as double, byval b as double, byval c as double, byval d as double, _
		byval e as double, byval f as double, byval g as double, byval h as double, byval x as double ) as double
		return x
	end function

	private function lastS2( byval a as single, byval b as single, byval c as single, byval d as single, _
		byval e as single, byval f as single, byval g as single, byval h as single, byval x as single, byval y as single ) as single
		return x * 1000 + y
	end function

	TEST( negativeZero )
		CU_ASSERT_EQUAL( signS( -0.0! ), 1 )
		CU_ASSERT_EQUAL( signS( 0.0! ), 0 )
		CU_ASSERT_EQUAL( signD( -0.0 ), 1 )
		CU_ASSERT_EQUAL( signD( 0.0 ), 0 )

		dim as single s = lastS( 1, 2, 3, 4, 5, 6, 7, 8, -0.0! )
		CU_ASSERT_EQUAL( signS( s ), 1 )
		dim as double d = lastD( 1, 2, 3, 4, 5, 6, 7, 8, -0.0 )
		CU_ASSERT_EQUAL( signD( d ), 1 )
	END_TEST

	TEST( onStack )
		CU_ASSERT_EQUAL( lastS( 1, 2, 3, 4, 5, 6, 7, 8, -1.5! ), -1.5! )
		CU_ASSERT_EQUAL( lastS( 1, 2, 3, 4, 5, 6, 7, 8, 2.5! ), 2.5! )
		CU_ASSERT_EQUAL( lastS( -1, -2, -3, -4, -5, -6, -7, -8, -1e30! ), -1e30! )
		CU_ASSERT_EQUAL( lastD( 1, 2, 3, 4, 5, 6, 7, 8, -1.5 ), -1.5 )
		CU_ASSERT_EQUAL( lastD( 1, 2, 3, 4, 5, 6, 7, 8, 2.5 ), 2.5 )

		'' 2 SINGLEs on the stack: each must keep its own value
		CU_ASSERT_EQUAL( lastS2( 1, 2, 3, 4, 5, 6, 7, 8, -1.5!, -2.5! ), -1502.5! )
		CU_ASSERT_EQUAL( lastS2( 1, 2, 3, 4, 5, 6, 7, 8, -1.5!, 2.5! ), -1497.5! )
		CU_ASSERT_EQUAL( lastS2( 1, 2, 3, 4, 5, 6, 7, 8, 1.5!, -2.5! ), 1497.5! )
	END_TEST

END_SUITE
