''
''
'' gsl_sf_laguerre -- header translated with help of SWIG FB wrapper
''
'' NOTICE: This file is part of the FreeBASIC Compiler package and can't
''         be included in other distributions without authorization.
''
''
#ifndef __gsl_sf_laguerre_bi__
#define __gsl_sf_laguerre_bi__

#include once "gsl/gsl_sf_result.bi"
#include once "gsl/gsl_types.bi"

declare function gsl_sf_laguerre_1_e cdecl alias "gsl_sf_laguerre_1_e" (byval a as double, byval x as double, byval result as gsl_sf_result ptr) as integer
declare function gsl_sf_laguerre_2_e cdecl alias "gsl_sf_laguerre_2_e" (byval a as double, byval x as double, byval result as gsl_sf_result ptr) as integer
declare function gsl_sf_laguerre_3_e cdecl alias "gsl_sf_laguerre_3_e" (byval a as double, byval x as double, byval result as gsl_sf_result ptr) as integer
declare function gsl_sf_laguerre_1 cdecl alias "gsl_sf_laguerre_1" (byval a as double, byval x as double) as double
declare function gsl_sf_laguerre_2 cdecl alias "gsl_sf_laguerre_2" (byval a as double, byval x as double) as double
declare function gsl_sf_laguerre_3 cdecl alias "gsl_sf_laguerre_3" (byval a as double, byval x as double) as double
declare function gsl_sf_laguerre_n_e cdecl alias "gsl_sf_laguerre_n_e" (byval n as integer, byval a as double, byval x as double, byval result as gsl_sf_result ptr) as integer
declare function gsl_sf_laguerre_n cdecl alias "gsl_sf_laguerre_n" (byval n as integer, byval a as double, byval x as double) as double

#endif
