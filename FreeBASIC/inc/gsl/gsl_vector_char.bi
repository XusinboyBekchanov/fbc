''
''
'' gsl_vector_char -- header translated with help of SWIG FB wrapper
''
'' NOTICE: This file is part of the FreeBASIC Compiler package and can't
''         be included in other distributions without authorization.
''
''
#ifndef __gsl_vector_char_bi__
#define __gsl_vector_char_bi__

#include once "gsl/gsl_types.bi"
#include once "gsl/gsl_errno.bi"
#include once "gsl/gsl_check_range.bi"
#include once "gsl/gsl_block_char.bi"

type gsl_vector_char
	size as integer
	stride as integer
	data as byte ptr
	block as gsl_block_char ptr
	owner as integer
end type

type _gsl_vector_char_view
	vector as gsl_vector_char
end type

type gsl_vector_char_view as _gsl_vector_char_view

type _gsl_vector_char_const_view
	vector as gsl_vector_char
end type

type gsl_vector_char_const_view as _gsl_vector_char_const_view

declare function gsl_vector_char_alloc cdecl alias "gsl_vector_char_alloc" (byval n as integer) as gsl_vector_char ptr
declare function gsl_vector_char_calloc cdecl alias "gsl_vector_char_calloc" (byval n as integer) as gsl_vector_char ptr
declare function gsl_vector_char_alloc_from_block cdecl alias "gsl_vector_char_alloc_from_block" (byval b as gsl_block_char ptr, byval offset as integer, byval n as integer, byval stride as integer) as gsl_vector_char ptr
declare function gsl_vector_char_alloc_from_vector cdecl alias "gsl_vector_char_alloc_from_vector" (byval v as gsl_vector_char ptr, byval offset as integer, byval n as integer, byval stride as integer) as gsl_vector_char ptr
declare sub gsl_vector_char_free cdecl alias "gsl_vector_char_free" (byval v as gsl_vector_char ptr)
declare function gsl_vector_char_view_array cdecl alias "gsl_vector_char_view_array" (byval v as string, byval n as integer) as _gsl_vector_char_view
declare function gsl_vector_char_view_array_with_stride cdecl alias "gsl_vector_char_view_array_with_stride" (byval base as string, byval stride as integer, byval n as integer) as _gsl_vector_char_view
declare function gsl_vector_char_const_view_array cdecl alias "gsl_vector_char_const_view_array" (byval v as string, byval n as integer) as _gsl_vector_char_const_view
declare function gsl_vector_char_const_view_array_with_stride cdecl alias "gsl_vector_char_const_view_array_with_stride" (byval base as string, byval stride as integer, byval n as integer) as _gsl_vector_char_const_view
declare function gsl_vector_char_subvector cdecl alias "gsl_vector_char_subvector" (byval v as gsl_vector_char ptr, byval i as integer, byval n as integer) as _gsl_vector_char_view
declare function gsl_vector_char_subvector_with_stride cdecl alias "gsl_vector_char_subvector_with_stride" (byval v as gsl_vector_char ptr, byval i as integer, byval stride as integer, byval n as integer) as _gsl_vector_char_view
declare function gsl_vector_char_const_subvector cdecl alias "gsl_vector_char_const_subvector" (byval v as gsl_vector_char ptr, byval i as integer, byval n as integer) as _gsl_vector_char_const_view
declare function gsl_vector_char_const_subvector_with_stride cdecl alias "gsl_vector_char_const_subvector_with_stride" (byval v as gsl_vector_char ptr, byval i as integer, byval stride as integer, byval n as integer) as _gsl_vector_char_const_view
declare function gsl_vector_char_get cdecl alias "gsl_vector_char_get" (byval v as gsl_vector_char ptr, byval i as integer) as byte
declare sub gsl_vector_char_set cdecl alias "gsl_vector_char_set" (byval v as gsl_vector_char ptr, byval i as integer, byval x as byte)
declare function gsl_vector_char_ptr cdecl alias "gsl_vector_char_ptr" (byval v as gsl_vector_char ptr, byval i as integer) as zstring ptr
declare function gsl_vector_char_const_ptr cdecl alias "gsl_vector_char_const_ptr" (byval v as gsl_vector_char ptr, byval i as integer) as zstring ptr
declare sub gsl_vector_char_set_zero cdecl alias "gsl_vector_char_set_zero" (byval v as gsl_vector_char ptr)
declare sub gsl_vector_char_set_all cdecl alias "gsl_vector_char_set_all" (byval v as gsl_vector_char ptr, byval x as byte)
declare function gsl_vector_char_set_basis cdecl alias "gsl_vector_char_set_basis" (byval v as gsl_vector_char ptr, byval i as integer) as integer
declare function gsl_vector_char_fread cdecl alias "gsl_vector_char_fread" (byval stream as FILE ptr, byval v as gsl_vector_char ptr) as integer
declare function gsl_vector_char_fwrite cdecl alias "gsl_vector_char_fwrite" (byval stream as FILE ptr, byval v as gsl_vector_char ptr) as integer
declare function gsl_vector_char_fscanf cdecl alias "gsl_vector_char_fscanf" (byval stream as FILE ptr, byval v as gsl_vector_char ptr) as integer
declare function gsl_vector_char_fprintf cdecl alias "gsl_vector_char_fprintf" (byval stream as FILE ptr, byval v as gsl_vector_char ptr, byval format as string) as integer
declare function gsl_vector_char_memcpy cdecl alias "gsl_vector_char_memcpy" (byval dest as gsl_vector_char ptr, byval src as gsl_vector_char ptr) as integer
declare function gsl_vector_char_reverse cdecl alias "gsl_vector_char_reverse" (byval v as gsl_vector_char ptr) as integer
declare function gsl_vector_char_swap cdecl alias "gsl_vector_char_swap" (byval v as gsl_vector_char ptr, byval w as gsl_vector_char ptr) as integer
declare function gsl_vector_char_swap_elements cdecl alias "gsl_vector_char_swap_elements" (byval v as gsl_vector_char ptr, byval i as integer, byval j as integer) as integer
declare function gsl_vector_char_max cdecl alias "gsl_vector_char_max" (byval v as gsl_vector_char ptr) as byte
declare function gsl_vector_char_min cdecl alias "gsl_vector_char_min" (byval v as gsl_vector_char ptr) as byte
declare sub gsl_vector_char_minmax cdecl alias "gsl_vector_char_minmax" (byval v as gsl_vector_char ptr, byval min_out as string, byval max_out as string)
declare function gsl_vector_char_max_index cdecl alias "gsl_vector_char_max_index" (byval v as gsl_vector_char ptr) as integer
declare function gsl_vector_char_min_index cdecl alias "gsl_vector_char_min_index" (byval v as gsl_vector_char ptr) as integer
declare sub gsl_vector_char_minmax_index cdecl alias "gsl_vector_char_minmax_index" (byval v as gsl_vector_char ptr, byval imin as integer ptr, byval imax as integer ptr)
declare function gsl_vector_char_add cdecl alias "gsl_vector_char_add" (byval a as gsl_vector_char ptr, byval b as gsl_vector_char ptr) as integer
declare function gsl_vector_char_sub cdecl alias "gsl_vector_char_sub" (byval a as gsl_vector_char ptr, byval b as gsl_vector_char ptr) as integer
declare function gsl_vector_char_mul cdecl alias "gsl_vector_char_mul" (byval a as gsl_vector_char ptr, byval b as gsl_vector_char ptr) as integer
declare function gsl_vector_char_div cdecl alias "gsl_vector_char_div" (byval a as gsl_vector_char ptr, byval b as gsl_vector_char ptr) as integer
declare function gsl_vector_char_scale cdecl alias "gsl_vector_char_scale" (byval a as gsl_vector_char ptr, byval x as double) as integer
declare function gsl_vector_char_add_constant cdecl alias "gsl_vector_char_add_constant" (byval a as gsl_vector_char ptr, byval x as double) as integer
declare function gsl_vector_char_isnull cdecl alias "gsl_vector_char_isnull" (byval v as gsl_vector_char ptr) as integer

#endif
