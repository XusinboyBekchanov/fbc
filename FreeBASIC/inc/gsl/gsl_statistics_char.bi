''
''
'' gsl_statistics_char -- header translated with help of SWIG FB wrapper
''
'' NOTICE: This file is part of the FreeBASIC Compiler package and can't
''         be included in other distributions without authorization.
''
''
#ifndef __gsl_statistics_char_bi__
#define __gsl_statistics_char_bi__

#include once "gsl/gsl_types.bi"

declare function gsl_stats_char_mean cdecl alias "gsl_stats_char_mean" (byval data as string, byval stride as integer, byval n as integer) as double
declare function gsl_stats_char_variance cdecl alias "gsl_stats_char_variance" (byval data as string, byval stride as integer, byval n as integer) as double
declare function gsl_stats_char_sd cdecl alias "gsl_stats_char_sd" (byval data as string, byval stride as integer, byval n as integer) as double
declare function gsl_stats_char_variance_with_fixed_mean cdecl alias "gsl_stats_char_variance_with_fixed_mean" (byval data as string, byval stride as integer, byval n as integer, byval mean as double) as double
declare function gsl_stats_char_sd_with_fixed_mean cdecl alias "gsl_stats_char_sd_with_fixed_mean" (byval data as string, byval stride as integer, byval n as integer, byval mean as double) as double
declare function gsl_stats_char_absdev cdecl alias "gsl_stats_char_absdev" (byval data as string, byval stride as integer, byval n as integer) as double
declare function gsl_stats_char_skew cdecl alias "gsl_stats_char_skew" (byval data as string, byval stride as integer, byval n as integer) as double
declare function gsl_stats_char_kurtosis cdecl alias "gsl_stats_char_kurtosis" (byval data as string, byval stride as integer, byval n as integer) as double
declare function gsl_stats_char_lag1_autocorrelation cdecl alias "gsl_stats_char_lag1_autocorrelation" (byval data as string, byval stride as integer, byval n as integer) as double
declare function gsl_stats_char_covariance cdecl alias "gsl_stats_char_covariance" (byval data1 as string, byval stride1 as integer, byval data2 as string, byval stride2 as integer, byval n as integer) as double
declare function gsl_stats_char_variance_m cdecl alias "gsl_stats_char_variance_m" (byval data as string, byval stride as integer, byval n as integer, byval mean as double) as double
declare function gsl_stats_char_sd_m cdecl alias "gsl_stats_char_sd_m" (byval data as string, byval stride as integer, byval n as integer, byval mean as double) as double
declare function gsl_stats_char_absdev_m cdecl alias "gsl_stats_char_absdev_m" (byval data as string, byval stride as integer, byval n as integer, byval mean as double) as double
declare function gsl_stats_char_skew_m_sd cdecl alias "gsl_stats_char_skew_m_sd" (byval data as string, byval stride as integer, byval n as integer, byval mean as double, byval sd as double) as double
declare function gsl_stats_char_kurtosis_m_sd cdecl alias "gsl_stats_char_kurtosis_m_sd" (byval data as string, byval stride as integer, byval n as integer, byval mean as double, byval sd as double) as double
declare function gsl_stats_char_lag1_autocorrelation_m cdecl alias "gsl_stats_char_lag1_autocorrelation_m" (byval data as string, byval stride as integer, byval n as integer, byval mean as double) as double
declare function gsl_stats_char_covariance_m cdecl alias "gsl_stats_char_covariance_m" (byval data1 as string, byval stride1 as integer, byval data2 as string, byval stride2 as integer, byval n as integer, byval mean1 as double, byval mean2 as double) as double
declare function gsl_stats_char_pvariance cdecl alias "gsl_stats_char_pvariance" (byval data1 as string, byval stride1 as integer, byval n1 as integer, byval data2 as string, byval stride2 as integer, byval n2 as integer) as double
declare function gsl_stats_char_ttest cdecl alias "gsl_stats_char_ttest" (byval data1 as string, byval stride1 as integer, byval n1 as integer, byval data2 as string, byval stride2 as integer, byval n2 as integer) as double
declare function gsl_stats_char_max cdecl alias "gsl_stats_char_max" (byval data as string, byval stride as integer, byval n as integer) as byte
declare function gsl_stats_char_min cdecl alias "gsl_stats_char_min" (byval data as string, byval stride as integer, byval n as integer) as byte
declare sub gsl_stats_char_minmax cdecl alias "gsl_stats_char_minmax" (byval min as string, byval max as string, byval data as string, byval stride as integer, byval n as integer)
declare function gsl_stats_char_max_index cdecl alias "gsl_stats_char_max_index" (byval data as string, byval stride as integer, byval n as integer) as integer
declare function gsl_stats_char_min_index cdecl alias "gsl_stats_char_min_index" (byval data as string, byval stride as integer, byval n as integer) as integer
declare sub gsl_stats_char_minmax_index cdecl alias "gsl_stats_char_minmax_index" (byval min_index as integer ptr, byval max_index as integer ptr, byval data as string, byval stride as integer, byval n as integer)
declare function gsl_stats_char_median_from_sorted_data cdecl alias "gsl_stats_char_median_from_sorted_data" (byval sorted_data as string, byval stride as integer, byval n as integer) as double
declare function gsl_stats_char_quantile_from_sorted_data cdecl alias "gsl_stats_char_quantile_from_sorted_data" (byval sorted_data as string, byval stride as integer, byval n as integer, byval f as double) as double

#endif
