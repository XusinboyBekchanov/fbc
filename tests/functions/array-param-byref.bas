#include "fbcunit.bi"

'' Array parameters are always passed by descriptor (by reference),
'' so an explicit BYREF is allowed.

SUITE( fbc_tests.functions.array_param_byref )

	private sub setFirst( byref a() as integer, byval v as integer )
		a(lbound(a)) = v
	end sub

	private function sumAll( byref a() as integer ) as integer
		dim as integer s = 0
		for i as integer = lbound(a) to ubound(a)
			s += a(i)
		next
		return s
	end function

	declare sub proto( byref a() as integer )

	sub proto( a() as integer )
		a(1) = 258
	end sub

	TEST( explicitByref )
		dim as integer b(0 to 5)
		setFirst( b(), 789 )
		proto( b() )
		CU_ASSERT_EQUAL( b(0), 789 )
		CU_ASSERT_EQUAL( b(1), 258 )
		CU_ASSERT_EQUAL( sumAll( b() ), 789 + 258 )
	END_TEST

END_SUITE
