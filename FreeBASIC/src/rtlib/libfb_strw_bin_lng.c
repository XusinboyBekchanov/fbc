/*
 *  libfb - FreeBASIC's runtime library
 *	Copyright (C) 2004-2005 Andre V. T. Vicentini (av1ctor@yahoo.com.br) and others.
 *
 *  This library is free software; you can redistribute it and/or
 *  modify it under the terms of the GNU Lesser General Public
 *  License as published by the Free Software Foundation; either
 *  version 2.1 of the License, or (at your option) any later version.
 *
 *  This library is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 *  Lesser General Public License for more details.
 *
 *  You should have received a copy of the GNU Lesser General Public
 *  License along with this library; if not, write to the Free Software
 *  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

/*
 * strw_bin_lng.c -- binw$ routine for long long's
 *
 * chng: apr/2005 written [v1ctor]
 *
 */

#include "fb.h"

/*:::::*/
FBCALL FB_WCHAR *fb_WstrBinEx_l ( unsigned long long num, int digits )
{
	FB_WCHAR *dst, *buf;
	int i, totdigs;

	if( digits > 0 )
	{
		totdigs = (digits < sizeof( long long ) << 3? digits: sizeof( long long ) << 3);
		if( digits > sizeof( long long ) << 3 )
			digits = sizeof( long long ) << 3;
	}
	else
		totdigs = sizeof( long long ) << 3;


	/* alloc temp string */
    dst = fb_wstr_AllocTemp( totdigs );
	if( dst == NULL )
		return NULL;

	/* convert */
	buf = dst;

	if( num == 0ULL )
	{
		if( digits <= 0 )
			digits = 1;

		while( digits-- )
			*buf++ = _LC('0');
	}
	else
	{
		num <<= ((sizeof( long long ) << 3) - totdigs);

		for( i = 0; i < totdigs; i++, num <<= 1 )
			if( num & 0x8000000000000000ULL )
				break;

		if( digits > 0 )
		{
			digits -= totdigs - i;
			while( digits-- )
				*buf++ = _LC('0');
		}

		for( ; i < totdigs; i++, num <<= 1 )
			if( num & 0x8000000000000000ULL )
				*buf++ = _LC('1');
			else
				*buf++ = _LC('0');
	}

	/* add null-term */
	*buf = _LC('\0');

	return dst;
}

/*:::::*/
FBCALL FB_WCHAR *fb_WstrBin_l ( unsigned long long num )
{
	return fb_WstrBinEx_l( num, 0 );
}
