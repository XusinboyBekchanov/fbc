#include "fbcunit.bi"

'' Procedures and shared variables in the global namespace can be named
'' like asm registers/keywords (they get a '$' suffix in the emitted asm).
'' fbc only warned and the generated code did not assemble.

private sub rax( byref n as integer )
	n += 1
end sub

private function fs( byval n as integer ) as integer
	return n * 2
end function

dim shared as integer rdx = 3

SUITE( fbc_tests.functions.asm_keyword_names )

	TEST( names )
		dim as integer n = 10
		rax( n )
		CU_ASSERT_EQUAL( n, 11 )
		CU_ASSERT_EQUAL( fs( 21 ), 42 )
		CU_ASSERT_EQUAL( rdx, 3 )
		rdx += 1
		CU_ASSERT_EQUAL( rdx, 4 )
	END_TEST

END_SUITE
