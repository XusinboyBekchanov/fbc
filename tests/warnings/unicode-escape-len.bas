'' The length of a literal with \u and \U escapes: \u is 1 character,
'' \U above &hFFFF is 2 characters if wstring is 16-bit (a surrogate pair),
'' else 1. Too big a length gave 'Literal string too big, truncated'.
'' The warning comes from the ASM backends: gas on 32-bit targets and
'' gas64 (forced here) on 64-bit targets.

#ifdef __FB_64BIT__
	#cmdline "-gen gas64"
#endif

dim shared as wstring * 2 w1 = !"\u28F4"
print w1

#if sizeof(wstring) = 2
	dim shared as wstring * 3 w2 = !"\U0001F0A1"
#else
	dim shared as wstring * 2 w2 = !"\U0001F0A1"
#endif
print w2
