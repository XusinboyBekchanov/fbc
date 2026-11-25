#include "fbcunit.bi"

'' UDTs of 8 bytes or less are returned in one register on x86_64 SysV.
'' With gas64 they were stored as 8 bytes, so storing a smaller one into an
'' array element or through a pointer also overwrote the following bytes.

SUITE( fbc_tests.functions.udt_result_small )

	#macro hDefineBytes( N )
		type TB##N field = 1
			as ubyte b(0 to N - 1)
		end type

		private function getTB##N( byval seed as integer ) as TB##N
			dim as TB##N r
			for i as integer = 0 to N - 1
				r.b(i) = seed + i
			next
			return r
		end function

		private sub hCheckTB##N( byref r as TB##N, byval seed as integer )
			for i as integer = 0 to N - 1
				CU_ASSERT_EQUAL( r.b(i), seed + i )
			next
		end sub

		TEST( bytes##N )
			dim as TB##N v
			v = getTB##N( 10 )
			hCheckTB##N( v, 10 )
			CU_ASSERT_EQUAL( getTB##N( 15 ).b(N - 1), 15 + N - 1 )

			'' the next element must not change
			dim as TB##N arr(0 to 2)
			dim as integer idx = 1
			for i as integer = 0 to N - 1
				arr(2).b(i) = 99
			next
			arr(idx) = getTB##N( 20 )
			hCheckTB##N( arr(1), 20 )
			for i as integer = 0 to N - 1
				CU_ASSERT_EQUAL( arr(2).b(i), 99 )
			next

			dim as TB##N ptr p = new TB##N[2]
			for i as integer = 0 to N - 1
				p[1].b(i) = 99
			next
			*p = getTB##N( 30 )
			hCheckTB##N( p[0], 30 )
			for i as integer = 0 to N - 1
				CU_ASSERT_EQUAL( p[1].b(i), 99 )
			next
			delete[] p
		END_TEST
	#endmacro

	hDefineBytes( 1 )
	hDefineBytes( 2 )
	hDefineBytes( 3 )
	hDefineBytes( 4 )
	hDefineBytes( 5 )
	hDefineBytes( 6 )
	hDefineBytes( 7 )
	hDefineBytes( 8 )

	type TS2
		as short a, b
	end type

	type TSB
		as short a
		as byte b
	end type

	type TSng
		as single x
	end type

	private function getTS2( byval a as short, byval b as short ) as TS2
		return type( a, b )
	end function

	private function getTSB( ) as TSB
		return type( -300, -5 )
	end function

	private function getTSng( byval v as single ) as TSng
		return type( v )
	end function

	TEST( fields )
		dim as integer i = 1

		dim as TS2 sa(0 to 2)
		sa(2).a = 55 : sa(2).b = 66
		sa(i) = getTS2( 3, -4 )
		CU_ASSERT_EQUAL( sa(1).a, 3 )
		CU_ASSERT_EQUAL( sa(1).b, -4 )
		CU_ASSERT_EQUAL( sa(2).a, 55 )
		CU_ASSERT_EQUAL( sa(2).b, 66 )

		dim as TSB ba(0 to 2)
		ba(2).a = 77
		ba(i) = getTSB( )
		CU_ASSERT_EQUAL( ba(1).a, -300 )
		CU_ASSERT_EQUAL( ba(1).b, -5 )
		CU_ASSERT_EQUAL( ba(2).a, 77 )

		dim as TSng fa(0 to 2)
		fa(2).x = 9.5
		fa(i) = getTSng( 1.25 )
		CU_ASSERT_EQUAL( fa(1).x, 1.25 )
		CU_ASSERT_EQUAL( fa(2).x, 9.5 )
		CU_ASSERT_EQUAL( getTSng( 2.5 ).x, 2.5 )
	END_TEST

END_SUITE
