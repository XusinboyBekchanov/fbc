''
''
'' gsl_block_complex_long_double -- header translated with help of SWIG FB wrapper
''
'' NOTICE: This file is part of the FreeBASIC Compiler package and can't
''         be included in other distributions without authorization.
''
''
#ifndef __gsl_block_complex_long_double_bi__
#define __gsl_block_complex_long_double_bi__

#include once "gsl/gsl_errno.bi"
#include once "gsl/gsl_types.bi"

type gsl_block_complex_long_double_struct
	size as integer
	data as double ptr
end type

type gsl_block_complex_long_double as gsl_block_complex_long_double_struct

declare function gsl_block_complex_long_double_alloc cdecl alias "gsl_block_complex_long_double_alloc" (byval n as integer) as gsl_block_complex_long_double ptr
declare function gsl_block_complex_long_double_calloc cdecl alias "gsl_block_complex_long_double_calloc" (byval n as integer) as gsl_block_complex_long_double ptr
declare sub gsl_block_complex_long_double_free cdecl alias "gsl_block_complex_long_double_free" (byval b as gsl_block_complex_long_double ptr)
declare function gsl_block_complex_long_double_fread cdecl alias "gsl_block_complex_long_double_fread" (byval stream as FILE ptr, byval b as gsl_block_complex_long_double ptr) as integer
declare function gsl_block_complex_long_double_fwrite cdecl alias "gsl_block_complex_long_double_fwrite" (byval stream as FILE ptr, byval b as gsl_block_complex_long_double ptr) as integer
declare function gsl_block_complex_long_double_fscanf cdecl alias "gsl_block_complex_long_double_fscanf" (byval stream as FILE ptr, byval b as gsl_block_complex_long_double ptr) as integer
declare function gsl_block_complex_long_double_fprintf cdecl alias "gsl_block_complex_long_double_fprintf" (byval stream as FILE ptr, byval b as gsl_block_complex_long_double ptr, byval format as string) as integer
declare function gsl_block_complex_long_double_raw_fread cdecl alias "gsl_block_complex_long_double_raw_fread" (byval stream as FILE ptr, byval b as double ptr, byval n as integer, byval stride as integer) as integer
declare function gsl_block_complex_long_double_raw_fwrite cdecl alias "gsl_block_complex_long_double_raw_fwrite" (byval stream as FILE ptr, byval b as double ptr, byval n as integer, byval stride as integer) as integer
declare function gsl_block_complex_long_double_raw_fscanf cdecl alias "gsl_block_complex_long_double_raw_fscanf" (byval stream as FILE ptr, byval b as double ptr, byval n as integer, byval stride as integer) as integer
declare function gsl_block_complex_long_double_raw_fprintf cdecl alias "gsl_block_complex_long_double_raw_fprintf" (byval stream as FILE ptr, byval b as double ptr, byval n as integer, byval stride as integer, byval format as string) as integer
declare function gsl_block_complex_long_double_size cdecl alias "gsl_block_complex_long_double_size" (byval b as gsl_block_complex_long_double ptr) as integer
declare function gsl_block_complex_long_double_data cdecl alias "gsl_block_complex_long_double_data" (byval b as gsl_block_complex_long_double ptr) as double ptr

#endif
