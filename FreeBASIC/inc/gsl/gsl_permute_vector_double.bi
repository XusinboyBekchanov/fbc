''
''
'' gsl_permute_vector_double -- header translated with help of SWIG FB wrapper
''
'' NOTICE: This file is part of the FreeBASIC Compiler package and can't
''         be included in other distributions without authorization.
''
''
#ifndef __gsl_permute_vector_double_bi__
#define __gsl_permute_vector_double_bi__

#include once "gsl/gsl_errno.bi"
#include once "gsl/gsl_permutation.bi"
#include once "gsl/gsl_vector_double.bi"
#include once "gsl/gsl_types.bi"

declare function gsl_permute_vector cdecl alias "gsl_permute_vector" (byval p as gsl_permutation ptr, byval v as gsl_vector ptr) as integer
declare function gsl_permute_vector_inverse cdecl alias "gsl_permute_vector_inverse" (byval p as gsl_permutation ptr, byval v as gsl_vector ptr) as integer

#endif
