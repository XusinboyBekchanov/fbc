''
''
'' gsl_sort_vector_long_double -- header translated with help of SWIG FB wrapper
''
'' NOTICE: This file is part of the FreeBASIC Compiler package and can't
''         be included in other distributions without authorization.
''
''
#ifndef __gsl_sort_vector_long_double_bi__
#define __gsl_sort_vector_long_double_bi__

#include once "gsl/gsl_errno.bi"
#include once "gsl/gsl_permutation.bi"
#include once "gsl/gsl_vector_long_double.bi"
#include once "gsl/gsl_types.bi"

declare sub gsl_sort_vector_long_double cdecl alias "gsl_sort_vector_long_double" (byval v as gsl_vector_long_double ptr)
declare function gsl_sort_vector_long_double_index cdecl alias "gsl_sort_vector_long_double_index" (byval p as gsl_permutation ptr, byval v as gsl_vector_long_double ptr) as integer
declare function gsl_sort_vector_long_double_smallest cdecl alias "gsl_sort_vector_long_double_smallest" (byval dest as double ptr, byval k as integer, byval v as gsl_vector_long_double ptr) as integer
declare function gsl_sort_vector_long_double_largest cdecl alias "gsl_sort_vector_long_double_largest" (byval dest as double ptr, byval k as integer, byval v as gsl_vector_long_double ptr) as integer
declare function gsl_sort_vector_long_double_smallest_index cdecl alias "gsl_sort_vector_long_double_smallest_index" (byval p as integer ptr, byval k as integer, byval v as gsl_vector_long_double ptr) as integer
declare function gsl_sort_vector_long_double_largest_index cdecl alias "gsl_sort_vector_long_double_largest_index" (byval p as integer ptr, byval k as integer, byval v as gsl_vector_long_double ptr) as integer

#endif
