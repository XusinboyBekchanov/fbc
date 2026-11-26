' TEST_MODE : MULTI_MODULE_TEST

'' UDTs of 1 to 8 bytes (only integers) returned by value, mixed with C:
'' - FB calls C functions returning them
'' - C calls FB functions returning them
'' On linux-x86_64 they are returned in RAX, so sizes 3, 5, 6 and 7 must
'' not be returned through a hidden pointer, and the caller must store
'' only the bytes of the UDT.

#macro hDefine( N )
	type T##N field = 1
		b(0 to N-1) as ubyte
	end type

	extern "C"
		declare function c##N() as T##N
		declare function check_fb##N() as long

		function fb##N() as T##N
			dim r as T##N
			for i as integer = 0 to N-1
				r.b(i) = 20 * N + i
			next
			return r
		end function
	end extern

	scope
		dim a(0 to 1) as T##N
		a(1).b(0) = &hAA
		a(0) = c##N()
		for i as integer = 0 to N-1
			ASSERT( a(0).b(i) = 10 * N + i )
		next
		ASSERT( a(1).b(0) = &hAA )

		ASSERT( check_fb##N() <> 0 )
	end scope
#endmacro

hDefine( 1 )
hDefine( 2 )
hDefine( 3 )
hDefine( 4 )
hDefine( 5 )
hDefine( 6 )
hDefine( 7 )
hDefine( 8 )
