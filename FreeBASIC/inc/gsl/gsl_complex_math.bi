''
''
'' gsl_complex_math -- header translated with help of SWIG FB wrapper
''
'' NOTICE: This file is part of the FreeBASIC Compiler package and can't
''         be included in other distributions without authorization.
''
''
#ifndef __gsl_complex_math_bi__
#define __gsl_complex_math_bi__

#include once "gsl/gsl_complex.bi"
#include once "gsl/gsl_types.bi"

declare function gsl_complex_rect cdecl alias "gsl_complex_rect" (byval x as double, byval y as double) as gsl_complex
declare function gsl_complex_polar cdecl alias "gsl_complex_polar" (byval r as double, byval theta as double) as gsl_complex
declare function gsl_complex_arg cdecl alias "gsl_complex_arg" (byval z as gsl_complex) as double
declare function gsl_complex_abs cdecl alias "gsl_complex_abs" (byval z as gsl_complex) as double
declare function gsl_complex_abs2 cdecl alias "gsl_complex_abs2" (byval z as gsl_complex) as double
declare function gsl_complex_logabs cdecl alias "gsl_complex_logabs" (byval z as gsl_complex) as double
declare function gsl_complex_add cdecl alias "gsl_complex_add" (byval a as gsl_complex, byval b as gsl_complex) as gsl_complex
declare function gsl_complex_sub cdecl alias "gsl_complex_sub" (byval a as gsl_complex, byval b as gsl_complex) as gsl_complex
declare function gsl_complex_mul cdecl alias "gsl_complex_mul" (byval a as gsl_complex, byval b as gsl_complex) as gsl_complex
declare function gsl_complex_div cdecl alias "gsl_complex_div" (byval a as gsl_complex, byval b as gsl_complex) as gsl_complex
declare function gsl_complex_add_real cdecl alias "gsl_complex_add_real" (byval a as gsl_complex, byval x as double) as gsl_complex
declare function gsl_complex_sub_real cdecl alias "gsl_complex_sub_real" (byval a as gsl_complex, byval x as double) as gsl_complex
declare function gsl_complex_mul_real cdecl alias "gsl_complex_mul_real" (byval a as gsl_complex, byval x as double) as gsl_complex
declare function gsl_complex_div_real cdecl alias "gsl_complex_div_real" (byval a as gsl_complex, byval x as double) as gsl_complex
declare function gsl_complex_add_imag cdecl alias "gsl_complex_add_imag" (byval a as gsl_complex, byval y as double) as gsl_complex
declare function gsl_complex_sub_imag cdecl alias "gsl_complex_sub_imag" (byval a as gsl_complex, byval y as double) as gsl_complex
declare function gsl_complex_mul_imag cdecl alias "gsl_complex_mul_imag" (byval a as gsl_complex, byval y as double) as gsl_complex
declare function gsl_complex_div_imag cdecl alias "gsl_complex_div_imag" (byval a as gsl_complex, byval y as double) as gsl_complex
declare function gsl_complex_conjugate cdecl alias "gsl_complex_conjugate" (byval z as gsl_complex) as gsl_complex
declare function gsl_complex_inverse cdecl alias "gsl_complex_inverse" (byval a as gsl_complex) as gsl_complex
declare function gsl_complex_negative cdecl alias "gsl_complex_negative" (byval a as gsl_complex) as gsl_complex
declare function gsl_complex_sqrt cdecl alias "gsl_complex_sqrt" (byval z as gsl_complex) as gsl_complex
declare function gsl_complex_sqrt_real cdecl alias "gsl_complex_sqrt_real" (byval x as double) as gsl_complex
declare function gsl_complex_pow cdecl alias "gsl_complex_pow" (byval a as gsl_complex, byval b as gsl_complex) as gsl_complex
declare function gsl_complex_pow_real cdecl alias "gsl_complex_pow_real" (byval a as gsl_complex, byval b as double) as gsl_complex
declare function gsl_complex_exp cdecl alias "gsl_complex_exp" (byval a as gsl_complex) as gsl_complex
declare function gsl_complex_log cdecl alias "gsl_complex_log" (byval a as gsl_complex) as gsl_complex
declare function gsl_complex_log10 cdecl alias "gsl_complex_log10" (byval a as gsl_complex) as gsl_complex
declare function gsl_complex_log_b cdecl alias "gsl_complex_log_b" (byval a as gsl_complex, byval b as gsl_complex) as gsl_complex
declare function gsl_complex_sin cdecl alias "gsl_complex_sin" (byval a as gsl_complex) as gsl_complex
declare function gsl_complex_cos cdecl alias "gsl_complex_cos" (byval a as gsl_complex) as gsl_complex
declare function gsl_complex_sec cdecl alias "gsl_complex_sec" (byval a as gsl_complex) as gsl_complex
declare function gsl_complex_csc cdecl alias "gsl_complex_csc" (byval a as gsl_complex) as gsl_complex
declare function gsl_complex_tan cdecl alias "gsl_complex_tan" (byval a as gsl_complex) as gsl_complex
declare function gsl_complex_cot cdecl alias "gsl_complex_cot" (byval a as gsl_complex) as gsl_complex
declare function gsl_complex_arcsin cdecl alias "gsl_complex_arcsin" (byval a as gsl_complex) as gsl_complex
declare function gsl_complex_arcsin_real cdecl alias "gsl_complex_arcsin_real" (byval a as double) as gsl_complex
declare function gsl_complex_arccos cdecl alias "gsl_complex_arccos" (byval a as gsl_complex) as gsl_complex
declare function gsl_complex_arccos_real cdecl alias "gsl_complex_arccos_real" (byval a as double) as gsl_complex
declare function gsl_complex_arcsec cdecl alias "gsl_complex_arcsec" (byval a as gsl_complex) as gsl_complex
declare function gsl_complex_arcsec_real cdecl alias "gsl_complex_arcsec_real" (byval a as double) as gsl_complex
declare function gsl_complex_arccsc cdecl alias "gsl_complex_arccsc" (byval a as gsl_complex) as gsl_complex
declare function gsl_complex_arccsc_real cdecl alias "gsl_complex_arccsc_real" (byval a as double) as gsl_complex
declare function gsl_complex_arctan cdecl alias "gsl_complex_arctan" (byval a as gsl_complex) as gsl_complex
declare function gsl_complex_arccot cdecl alias "gsl_complex_arccot" (byval a as gsl_complex) as gsl_complex
declare function gsl_complex_sinh cdecl alias "gsl_complex_sinh" (byval a as gsl_complex) as gsl_complex
declare function gsl_complex_cosh cdecl alias "gsl_complex_cosh" (byval a as gsl_complex) as gsl_complex
declare function gsl_complex_sech cdecl alias "gsl_complex_sech" (byval a as gsl_complex) as gsl_complex
declare function gsl_complex_csch cdecl alias "gsl_complex_csch" (byval a as gsl_complex) as gsl_complex
declare function gsl_complex_tanh cdecl alias "gsl_complex_tanh" (byval a as gsl_complex) as gsl_complex
declare function gsl_complex_coth cdecl alias "gsl_complex_coth" (byval a as gsl_complex) as gsl_complex
declare function gsl_complex_arcsinh cdecl alias "gsl_complex_arcsinh" (byval a as gsl_complex) as gsl_complex
declare function gsl_complex_arccosh cdecl alias "gsl_complex_arccosh" (byval a as gsl_complex) as gsl_complex
declare function gsl_complex_arccosh_real cdecl alias "gsl_complex_arccosh_real" (byval a as double) as gsl_complex
declare function gsl_complex_arcsech cdecl alias "gsl_complex_arcsech" (byval a as gsl_complex) as gsl_complex
declare function gsl_complex_arccsch cdecl alias "gsl_complex_arccsch" (byval a as gsl_complex) as gsl_complex
declare function gsl_complex_arctanh cdecl alias "gsl_complex_arctanh" (byval a as gsl_complex) as gsl_complex
declare function gsl_complex_arctanh_real cdecl alias "gsl_complex_arctanh_real" (byval a as double) as gsl_complex
declare function gsl_complex_arccoth cdecl alias "gsl_complex_arccoth" (byval a as gsl_complex) as gsl_complex

#endif
