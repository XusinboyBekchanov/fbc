''
''
'' gsl_sort_vector_char -- header translated with help of SWIG FB wrapper
''
'' NOTICE: This file is part of the FreeBASIC Compiler package and can't
''         be included in other distributions without authorization.
''
''
#ifndef __gsl_sort_vector_char_bi__
#define __gsl_sort_vector_char_bi__

#include once "gsl/gsl_errno.bi"
#include once "gsl/gsl_permutation.bi"
#include once "gsl/gsl_vector_char.bi"
#include once "gsl/gsl_types.bi"

declare sub gsl_sort_vector_char cdecl alias "gsl_sort_vector_char" (byval v as gsl_vector_char ptr)
declare function gsl_sort_vector_char_index cdecl alias "gsl_sort_vector_char_index" (byval p as gsl_permutation ptr, byval v as gsl_vector_char ptr) as integer
declare function gsl_sort_vector_char_smallest cdecl alias "gsl_sort_vector_char_smallest" (byval dest as string, byval k as integer, byval v as gsl_vector_char ptr) as integer
declare function gsl_sort_vector_char_largest cdecl alias "gsl_sort_vector_char_largest" (byval dest as string, byval k as integer, byval v as gsl_vector_char ptr) as integer
declare function gsl_sort_vector_char_smallest_index cdecl alias "gsl_sort_vector_char_smallest_index" (byval p as integer ptr, byval k as integer, byval v as gsl_vector_char ptr) as integer
declare function gsl_sort_vector_char_largest_index cdecl alias "gsl_sort_vector_char_largest_index" (byval p as integer ptr, byval k as integer, byval v as gsl_vector_char ptr) as integer

#endif
