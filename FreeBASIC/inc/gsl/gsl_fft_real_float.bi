''
''
'' gsl_fft_real_float -- header translated with help of SWIG FB wrapper
''
'' NOTICE: This file is part of the FreeBASIC Compiler package and can't
''         be included in other distributions without authorization.
''
''
#ifndef __gsl_fft_real_float_bi__
#define __gsl_fft_real_float_bi__

#include once "gsl/gsl_math.bi"
#include once "gsl/gsl_complex.bi"
#include once "gsl/gsl_fft.bi"
#include once "gsl/gsl_types.bi"

declare function gsl_fft_real_float_radix2_transform cdecl alias "gsl_fft_real_float_radix2_transform" (byval data as single ptr, byval stride as integer, byval n as integer) as integer

type gsl_fft_real_wavetable_float
	n as integer
	nf as integer
	factor(0 to 64-1) as integer ptr
	twiddle(0 to 64-1) as gsl_complex_float ptr ptr
	trig as gsl_complex_float ptr
end type

type gsl_fft_real_workspace_float
	n as integer
	scratch as single ptr
end type

declare function gsl_fft_real_wavetable_float_alloc cdecl alias "gsl_fft_real_wavetable_float_alloc" (byval n as integer) as gsl_fft_real_wavetable_float ptr
declare sub gsl_fft_real_wavetable_float_free cdecl alias "gsl_fft_real_wavetable_float_free" (byval wavetable as gsl_fft_real_wavetable_float ptr)
declare function gsl_fft_real_workspace_float_alloc cdecl alias "gsl_fft_real_workspace_float_alloc" (byval n as integer) as gsl_fft_real_workspace_float ptr
declare sub gsl_fft_real_workspace_float_free cdecl alias "gsl_fft_real_workspace_float_free" (byval workspace as gsl_fft_real_workspace_float ptr)
declare function gsl_fft_real_float_transform cdecl alias "gsl_fft_real_float_transform" (byval data as single ptr, byval stride as integer, byval n as integer, byval wavetable as gsl_fft_real_wavetable_float ptr, byval work as gsl_fft_real_workspace_float ptr) as integer
declare function gsl_fft_real_float_unpack cdecl alias "gsl_fft_real_float_unpack" (byval real_float_coefficient as single ptr, byval complex_coefficient as single ptr, byval stride as integer, byval n as integer) as integer

#endif
