#include "fbcunit.bi"

'' gas64 peephole optimization #04 joins 'lea reg, X' and 'mov ... N[reg], Y'.
'' When X is a shared variable ('lea r11, G$[rip+0]') the result was not
'' valid asm ('mov QWORD PTR 8G$[rip+0], 0'), so writing through an offset
'' pointer to a shared variable failed to assemble.

SUITE( fbc_tests.optimizations.gas64_lea_shared_offset )

	type T
		as integer a
		as string s
	end type

	dim shared as T g
	dim shared as integer arr(0 to 3)
	dim shared as long l3(0 to 3)

	TEST( stringLen )
		g.s = "abcdef"
		'' reset the length of the string, the buffer stays allocated
		*(cast(integer ptr, varptr(g.s)) + 1) = 0
		CU_ASSERT_EQUAL( len(g.s), 0 )
		g.s += "xy"
		CU_ASSERT_EQUAL( g.s, "xy" )
	END_TEST

	TEST( offsets )
		*(cast(integer ptr, @arr(0)) + 2) = 77
		CU_ASSERT_EQUAL( arr(2), 77 )
		*(cast(integer ptr, @arr(0)) + 1) = -5
		CU_ASSERT_EQUAL( arr(1), -5 )
		*(cast(long ptr, @l3(0)) + 3) = 123456
		CU_ASSERT_EQUAL( l3(3), 123456 )
		CU_ASSERT_EQUAL( arr(0), 0 )
		CU_ASSERT_EQUAL( l3(0), 0 )
	END_TEST

END_SUITE
