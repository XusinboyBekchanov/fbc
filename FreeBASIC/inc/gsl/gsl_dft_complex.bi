''
''
'' gsl_dft_complex -- header translated with help of SWIG FB wrapper
''
'' NOTICE: This file is part of the FreeBASIC Compiler package and can't
''         be included in other distributions without authorization.
''
''
#ifndef __gsl_dft_complex_bi__
#define __gsl_dft_complex_bi__

#include once "gsl/gsl_math.bi"
#include once "gsl/gsl_complex.bi"
#include once "gsl/gsl_fft.bi"
#include once "gsl/gsl_types.bi"

declare function gsl_dft_complex_forward cdecl alias "gsl_dft_complex_forward" (byval data as double ptr, byval stride as integer, byval n as integer, byval result as double ptr) as integer
declare function gsl_dft_complex_backward cdecl alias "gsl_dft_complex_backward" (byval data as double ptr, byval stride as integer, byval n as integer, byval result as double ptr) as integer
declare function gsl_dft_complex_inverse cdecl alias "gsl_dft_complex_inverse" (byval data as double ptr, byval stride as integer, byval n as integer, byval result as double ptr) as integer
declare function gsl_dft_complex_transform cdecl alias "gsl_dft_complex_transform" (byval data as double ptr, byval stride as integer, byval n as integer, byval result as double ptr, byval sign as gsl_fft_direction) as integer

#endif
