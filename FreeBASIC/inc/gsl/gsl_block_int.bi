''
''
'' gsl_block_int -- header translated with help of SWIG FB wrapper
''
'' NOTICE: This file is part of the FreeBASIC Compiler package and can't
''         be included in other distributions without authorization.
''
''
#ifndef __gsl_block_int_bi__
#define __gsl_block_int_bi__

#include once "gsl/gsl_errno.bi"
#include once "gsl/gsl_types.bi"

type gsl_block_int_struct
	size as integer
	data as integer ptr
end type

type gsl_block_int as gsl_block_int_struct

declare function gsl_block_int_alloc cdecl alias "gsl_block_int_alloc" (byval n as integer) as gsl_block_int ptr
declare function gsl_block_int_calloc cdecl alias "gsl_block_int_calloc" (byval n as integer) as gsl_block_int ptr
declare sub gsl_block_int_free cdecl alias "gsl_block_int_free" (byval b as gsl_block_int ptr)
declare function gsl_block_int_fread cdecl alias "gsl_block_int_fread" (byval stream as FILE ptr, byval b as gsl_block_int ptr) as integer
declare function gsl_block_int_fwrite cdecl alias "gsl_block_int_fwrite" (byval stream as FILE ptr, byval b as gsl_block_int ptr) as integer
declare function gsl_block_int_fscanf cdecl alias "gsl_block_int_fscanf" (byval stream as FILE ptr, byval b as gsl_block_int ptr) as integer
declare function gsl_block_int_fprintf cdecl alias "gsl_block_int_fprintf" (byval stream as FILE ptr, byval b as gsl_block_int ptr, byval format as string) as integer
declare function gsl_block_int_raw_fread cdecl alias "gsl_block_int_raw_fread" (byval stream as FILE ptr, byval b as integer ptr, byval n as integer, byval stride as integer) as integer
declare function gsl_block_int_raw_fwrite cdecl alias "gsl_block_int_raw_fwrite" (byval stream as FILE ptr, byval b as integer ptr, byval n as integer, byval stride as integer) as integer
declare function gsl_block_int_raw_fscanf cdecl alias "gsl_block_int_raw_fscanf" (byval stream as FILE ptr, byval b as integer ptr, byval n as integer, byval stride as integer) as integer
declare function gsl_block_int_raw_fprintf cdecl alias "gsl_block_int_raw_fprintf" (byval stream as FILE ptr, byval b as integer ptr, byval n as integer, byval stride as integer, byval format as string) as integer
declare function gsl_block_int_size cdecl alias "gsl_block_int_size" (byval b as gsl_block_int ptr) as integer
declare function gsl_block_int_data cdecl alias "gsl_block_int_data" (byval b as gsl_block_int ptr) as integer ptr

#endif
