''
''
'' gsl_message -- header translated with help of SWIG FB wrapper
''
'' NOTICE: This file is part of the FreeBASIC Compiler package and can't
''         be included in other distributions without authorization.
''
''
#ifndef __gsl_message_bi__
#define __gsl_message_bi__

#include once "gsl/gsl_types.bi"

declare sub gsl_message cdecl alias "gsl_message" (byval message as string, byval file as string, byval line as integer, byval mask as uinteger)

#define GSL_MESSAGE_MASK &hffffffffu

enum 
	GSL_MESSAGE_MASK_A = 1
	GSL_MESSAGE_MASK_B = 2
	GSL_MESSAGE_MASK_C = 4
	GSL_MESSAGE_MASK_D = 8
	GSL_MESSAGE_MASK_E = 16
	GSL_MESSAGE_MASK_F = 32
	GSL_MESSAGE_MASK_G = 64
	GSL_MESSAGE_MASK_H = 128
end enum

#endif
