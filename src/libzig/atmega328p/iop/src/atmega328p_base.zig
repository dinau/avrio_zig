pub const __builtin_bswap16 = @import("std").zig.c_builtins.__builtin_bswap16;
pub const __builtin_bswap32 = @import("std").zig.c_builtins.__builtin_bswap32;
pub const __builtin_bswap64 = @import("std").zig.c_builtins.__builtin_bswap64;
pub const __builtin_signbit = @import("std").zig.c_builtins.__builtin_signbit;
pub const __builtin_signbitf = @import("std").zig.c_builtins.__builtin_signbitf;
pub const __builtin_popcount = @import("std").zig.c_builtins.__builtin_popcount;
pub const __builtin_ctz = @import("std").zig.c_builtins.__builtin_ctz;
pub const __builtin_clz = @import("std").zig.c_builtins.__builtin_clz;
pub const __builtin_sqrt = @import("std").zig.c_builtins.__builtin_sqrt;
pub const __builtin_sqrtf = @import("std").zig.c_builtins.__builtin_sqrtf;
pub const __builtin_sin = @import("std").zig.c_builtins.__builtin_sin;
pub const __builtin_sinf = @import("std").zig.c_builtins.__builtin_sinf;
pub const __builtin_cos = @import("std").zig.c_builtins.__builtin_cos;
pub const __builtin_cosf = @import("std").zig.c_builtins.__builtin_cosf;
pub const __builtin_exp = @import("std").zig.c_builtins.__builtin_exp;
pub const __builtin_expf = @import("std").zig.c_builtins.__builtin_expf;
pub const __builtin_exp2 = @import("std").zig.c_builtins.__builtin_exp2;
pub const __builtin_exp2f = @import("std").zig.c_builtins.__builtin_exp2f;
pub const __builtin_log = @import("std").zig.c_builtins.__builtin_log;
pub const __builtin_logf = @import("std").zig.c_builtins.__builtin_logf;
pub const __builtin_log2 = @import("std").zig.c_builtins.__builtin_log2;
pub const __builtin_log2f = @import("std").zig.c_builtins.__builtin_log2f;
pub const __builtin_log10 = @import("std").zig.c_builtins.__builtin_log10;
pub const __builtin_log10f = @import("std").zig.c_builtins.__builtin_log10f;
pub const __builtin_abs = @import("std").zig.c_builtins.__builtin_abs;
pub const __builtin_labs = @import("std").zig.c_builtins.__builtin_labs;
pub const __builtin_llabs = @import("std").zig.c_builtins.__builtin_llabs;
pub const __builtin_fabs = @import("std").zig.c_builtins.__builtin_fabs;
pub const __builtin_fabsf = @import("std").zig.c_builtins.__builtin_fabsf;
pub const __builtin_floor = @import("std").zig.c_builtins.__builtin_floor;
pub const __builtin_floorf = @import("std").zig.c_builtins.__builtin_floorf;
pub const __builtin_ceil = @import("std").zig.c_builtins.__builtin_ceil;
pub const __builtin_ceilf = @import("std").zig.c_builtins.__builtin_ceilf;
pub const __builtin_trunc = @import("std").zig.c_builtins.__builtin_trunc;
pub const __builtin_truncf = @import("std").zig.c_builtins.__builtin_truncf;
pub const __builtin_round = @import("std").zig.c_builtins.__builtin_round;
pub const __builtin_roundf = @import("std").zig.c_builtins.__builtin_roundf;
pub const __builtin_strlen = @import("std").zig.c_builtins.__builtin_strlen;
pub const __builtin_strcmp = @import("std").zig.c_builtins.__builtin_strcmp;
pub const __builtin_object_size = @import("std").zig.c_builtins.__builtin_object_size;
pub const __builtin___memset_chk = @import("std").zig.c_builtins.__builtin___memset_chk;
pub const __builtin_memset = @import("std").zig.c_builtins.__builtin_memset;
pub const __builtin___memcpy_chk = @import("std").zig.c_builtins.__builtin___memcpy_chk;
pub const __builtin_memcpy = @import("std").zig.c_builtins.__builtin_memcpy;
pub const __builtin_expect = @import("std").zig.c_builtins.__builtin_expect;
pub const __builtin_nanf = @import("std").zig.c_builtins.__builtin_nanf;
pub const __builtin_huge_valf = @import("std").zig.c_builtins.__builtin_huge_valf;
pub const __builtin_inff = @import("std").zig.c_builtins.__builtin_inff;
pub const __builtin_isnan = @import("std").zig.c_builtins.__builtin_isnan;
pub const __builtin_isinf = @import("std").zig.c_builtins.__builtin_isinf;
pub const __builtin_isinf_sign = @import("std").zig.c_builtins.__builtin_isinf_sign;
pub const __has_builtin = @import("std").zig.c_builtins.__has_builtin;
pub const __builtin_assume = @import("std").zig.c_builtins.__builtin_assume;
pub const __builtin_unreachable = @import("std").zig.c_builtins.__builtin_unreachable;
pub const __builtin_constant_p = @import("std").zig.c_builtins.__builtin_constant_p;
pub const __builtin_mul_overflow = @import("std").zig.c_builtins.__builtin_mul_overflow;
pub const __builtin_va_list = [*c]u8;
pub const __gnuc_va_list = __builtin_va_list;
pub const va_list = __gnuc_va_list;
// C:\zig\lib\libc\include\any-windows-any/_mingw.h:610:3: warning: TODO implement translation of stmt class GCCAsmStmtClass

// C:\zig\lib\libc\include\any-windows-any/_mingw.h:605:36: warning: unable to translate function, demoted to extern
pub extern fn __debugbreak() void;
// C:\zig\lib\libc\include\any-windows-any/_mingw.h:632:3: warning: TODO implement translation of stmt class GCCAsmStmtClass

// C:\zig\lib\libc\include\any-windows-any/_mingw.h:626:60: warning: unable to translate function, demoted to extern
pub extern fn __fastfail(arg_code: c_uint) noreturn;
pub extern fn __mingw_get_crt_info() [*c]const u8;
pub const rsize_t = usize;
pub const ptrdiff_t = c_longlong;
pub const wchar_t = c_ushort;
pub const wint_t = c_ushort;
pub const wctype_t = c_ushort;
pub const errno_t = c_int;
pub const __time32_t = c_long;
pub const __time64_t = c_longlong;
pub const time_t = __time64_t;
pub const struct_threadlocaleinfostruct = extern struct {
    _locale_pctype: [*c]const c_ushort = @import("std").mem.zeroes([*c]const c_ushort),
    _locale_mb_cur_max: c_int = @import("std").mem.zeroes(c_int),
    _locale_lc_codepage: c_uint = @import("std").mem.zeroes(c_uint),
};
pub const struct_threadmbcinfostruct = opaque {};
pub const pthreadlocinfo = [*c]struct_threadlocaleinfostruct;
pub const pthreadmbcinfo = ?*struct_threadmbcinfostruct;
pub const struct___lc_time_data = opaque {};
pub const struct_localeinfo_struct = extern struct {
    locinfo: pthreadlocinfo = @import("std").mem.zeroes(pthreadlocinfo),
    mbcinfo: pthreadmbcinfo = @import("std").mem.zeroes(pthreadmbcinfo),
};
pub const _locale_tstruct = struct_localeinfo_struct;
pub const _locale_t = [*c]struct_localeinfo_struct;
pub const struct_tagLC_ID = extern struct {
    wLanguage: c_ushort = @import("std").mem.zeroes(c_ushort),
    wCountry: c_ushort = @import("std").mem.zeroes(c_ushort),
    wCodePage: c_ushort = @import("std").mem.zeroes(c_ushort),
};
pub const LC_ID = struct_tagLC_ID;
pub const LPLC_ID = [*c]struct_tagLC_ID;
pub const threadlocinfo = struct_threadlocaleinfostruct;
pub const int_least8_t = i8;
pub const uint_least8_t = u8;
pub const int_least16_t = c_short;
pub const uint_least16_t = c_ushort;
pub const int_least32_t = c_int;
pub const uint_least32_t = c_uint;
pub const int_least64_t = c_longlong;
pub const uint_least64_t = c_ulonglong;
pub const int_fast8_t = i8;
pub const uint_fast8_t = u8;
pub const int_fast16_t = c_short;
pub const uint_fast16_t = c_ushort;
pub const int_fast32_t = c_int;
pub const uint_fast32_t = c_uint;
pub const int_fast64_t = c_longlong;
pub const uint_fast64_t = c_ulonglong;
pub const intmax_t = c_longlong;
pub const uintmax_t = c_ulonglong;
pub const imaxdiv_t = extern struct {
    quot: intmax_t = @import("std").mem.zeroes(intmax_t),
    rem: intmax_t = @import("std").mem.zeroes(intmax_t),
};
pub fn imaxabs(arg_j: intmax_t) callconv(.c) intmax_t {
    var j = arg_j;
    _ = &j;
    return if (j >= @as(intmax_t, @bitCast(@as(c_longlong, @as(c_int, 0))))) j else -j;
}
pub extern fn imaxdiv(numer: intmax_t, denom: intmax_t) imaxdiv_t;
pub extern fn strtoimax(noalias nptr: [*c]const u8, noalias endptr: [*c][*c]u8, base: c_int) intmax_t;
pub extern fn strtoumax(noalias nptr: [*c]const u8, noalias endptr: [*c][*c]u8, base: c_int) uintmax_t;
pub extern fn wcstoimax(noalias nptr: [*c]const wchar_t, noalias endptr: [*c][*c]wchar_t, base: c_int) intmax_t;
pub extern fn wcstoumax(noalias nptr: [*c]const wchar_t, noalias endptr: [*c][*c]wchar_t, base: c_int) uintmax_t;
pub const __fuse_t = extern struct {
    low: u8 = @import("std").mem.zeroes(u8),
    high: u8 = @import("std").mem.zeroes(u8),
    extended: u8 = @import("std").mem.zeroes(u8),
};
pub const __llvm__ = @as(c_int, 1);
pub const __clang__ = @as(c_int, 1);
pub const __clang_major__ = @as(c_int, 20);
pub const __clang_minor__ = @as(c_int, 1);
pub const __clang_patchlevel__ = @as(c_int, 2);
pub const __clang_version__ = "20.1.2 (https://github.com/ziglang/zig-bootstrap 7ef74e656cf8ddbd6bf891a8475892aa1afa6891)";
pub const __GNUC__ = @as(c_int, 4);
pub const __GNUC_MINOR__ = @as(c_int, 2);
pub const __GNUC_PATCHLEVEL__ = @as(c_int, 1);
pub const __GXX_ABI_VERSION = @as(c_int, 1002);
pub const __ATOMIC_RELAXED = @as(c_int, 0);
pub const __ATOMIC_CONSUME = @as(c_int, 1);
pub const __ATOMIC_ACQUIRE = @as(c_int, 2);
pub const __ATOMIC_RELEASE = @as(c_int, 3);
pub const __ATOMIC_ACQ_REL = @as(c_int, 4);
pub const __ATOMIC_SEQ_CST = @as(c_int, 5);
pub const __MEMORY_SCOPE_SYSTEM = @as(c_int, 0);
pub const __MEMORY_SCOPE_DEVICE = @as(c_int, 1);
pub const __MEMORY_SCOPE_WRKGRP = @as(c_int, 2);
pub const __MEMORY_SCOPE_WVFRNT = @as(c_int, 3);
pub const __MEMORY_SCOPE_SINGLE = @as(c_int, 4);
pub const __OPENCL_MEMORY_SCOPE_WORK_ITEM = @as(c_int, 0);
pub const __OPENCL_MEMORY_SCOPE_WORK_GROUP = @as(c_int, 1);
pub const __OPENCL_MEMORY_SCOPE_DEVICE = @as(c_int, 2);
pub const __OPENCL_MEMORY_SCOPE_ALL_SVM_DEVICES = @as(c_int, 3);
pub const __OPENCL_MEMORY_SCOPE_SUB_GROUP = @as(c_int, 4);
pub const __FPCLASS_SNAN = @as(c_int, 0x0001);
pub const __FPCLASS_QNAN = @as(c_int, 0x0002);
pub const __FPCLASS_NEGINF = @as(c_int, 0x0004);
pub const __FPCLASS_NEGNORMAL = @as(c_int, 0x0008);
pub const __FPCLASS_NEGSUBNORMAL = @as(c_int, 0x0010);
pub const __FPCLASS_NEGZERO = @as(c_int, 0x0020);
pub const __FPCLASS_POSZERO = @as(c_int, 0x0040);
pub const __FPCLASS_POSSUBNORMAL = @as(c_int, 0x0080);
pub const __FPCLASS_POSNORMAL = @as(c_int, 0x0100);
pub const __FPCLASS_POSINF = @as(c_int, 0x0200);
pub const __PRAGMA_REDEFINE_EXTNAME = @as(c_int, 1);
pub const __VERSION__ = "Clang 20.1.2 (https://github.com/ziglang/zig-bootstrap 7ef74e656cf8ddbd6bf891a8475892aa1afa6891)";
pub const __GXX_TYPEINFO_EQUALITY_INLINE = @as(c_int, 0);
pub const __OBJC_BOOL_IS_BOOL = @as(c_int, 0);
pub const __CONSTANT_CFSTRINGS__ = @as(c_int, 1);
pub const __SEH__ = @as(c_int, 1);
pub const __clang_literal_encoding__ = "UTF-8";
pub const __clang_wide_literal_encoding__ = "UTF-16";
pub const __OPTIMIZE__ = @as(c_int, 1);
pub const __ORDER_LITTLE_ENDIAN__ = @as(c_int, 1234);
pub const __ORDER_BIG_ENDIAN__ = @as(c_int, 4321);
pub const __ORDER_PDP_ENDIAN__ = @as(c_int, 3412);
pub const __BYTE_ORDER__ = __ORDER_LITTLE_ENDIAN__;
pub const __LITTLE_ENDIAN__ = @as(c_int, 1);
pub const __CHAR_BIT__ = @as(c_int, 8);
pub const __BOOL_WIDTH__ = @as(c_int, 1);
pub const __SHRT_WIDTH__ = @as(c_int, 16);
pub const __INT_WIDTH__ = @as(c_int, 32);
pub const __LONG_WIDTH__ = @as(c_int, 32);
pub const __LLONG_WIDTH__ = @as(c_int, 64);
pub const __BITINT_MAXWIDTH__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 8388608, .decimal);
pub const __SCHAR_MAX__ = @as(c_int, 127);
pub const __SHRT_MAX__ = @as(c_int, 32767);
pub const __INT_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __LONG_MAX__ = @as(c_long, 2147483647);
pub const __LONG_LONG_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __WCHAR_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __WCHAR_WIDTH__ = @as(c_int, 16);
pub const __WINT_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __WINT_WIDTH__ = @as(c_int, 16);
pub const __INTMAX_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __INTMAX_WIDTH__ = @as(c_int, 64);
pub const __SIZE_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub const __SIZE_WIDTH__ = @as(c_int, 64);
pub const __UINTMAX_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub const __UINTMAX_WIDTH__ = @as(c_int, 64);
pub const __PTRDIFF_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __PTRDIFF_WIDTH__ = @as(c_int, 64);
pub const __INTPTR_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __INTPTR_WIDTH__ = @as(c_int, 64);
pub const __UINTPTR_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub const __UINTPTR_WIDTH__ = @as(c_int, 64);
pub const __SIZEOF_DOUBLE__ = @as(c_int, 8);
pub const __SIZEOF_FLOAT__ = @as(c_int, 4);
pub const __SIZEOF_INT__ = @as(c_int, 4);
pub const __SIZEOF_LONG__ = @as(c_int, 4);
pub const __SIZEOF_LONG_DOUBLE__ = @as(c_int, 16);
pub const __SIZEOF_LONG_LONG__ = @as(c_int, 8);
pub const __SIZEOF_POINTER__ = @as(c_int, 8);
pub const __SIZEOF_SHORT__ = @as(c_int, 2);
pub const __SIZEOF_PTRDIFF_T__ = @as(c_int, 8);
pub const __SIZEOF_SIZE_T__ = @as(c_int, 8);
pub const __SIZEOF_WCHAR_T__ = @as(c_int, 2);
pub const __SIZEOF_WINT_T__ = @as(c_int, 2);
pub const __SIZEOF_INT128__ = @as(c_int, 16);
pub const __INTMAX_TYPE__ = c_longlong;
pub const __INTMAX_FMTd__ = "lld";
pub const __INTMAX_FMTi__ = "lli";
pub const __INTMAX_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `LL`");
// (no file):96:9
pub const __INTMAX_C = @import("std").zig.c_translation.Macros.LL_SUFFIX;
pub const __UINTMAX_TYPE__ = c_ulonglong;
pub const __UINTMAX_FMTo__ = "llo";
pub const __UINTMAX_FMTu__ = "llu";
pub const __UINTMAX_FMTx__ = "llx";
pub const __UINTMAX_FMTX__ = "llX";
pub const __UINTMAX_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `ULL`");
// (no file):103:9
pub const __UINTMAX_C = @import("std").zig.c_translation.Macros.ULL_SUFFIX;
pub const __PTRDIFF_TYPE__ = c_longlong;
pub const __PTRDIFF_FMTd__ = "lld";
pub const __PTRDIFF_FMTi__ = "lli";
pub const __INTPTR_TYPE__ = c_longlong;
pub const __INTPTR_FMTd__ = "lld";
pub const __INTPTR_FMTi__ = "lli";
pub const __SIZE_TYPE__ = c_ulonglong;
pub const __SIZE_FMTo__ = "llo";
pub const __SIZE_FMTu__ = "llu";
pub const __SIZE_FMTx__ = "llx";
pub const __SIZE_FMTX__ = "llX";
pub const __WCHAR_TYPE__ = c_ushort;
pub const __WINT_TYPE__ = c_ushort;
pub const __SIG_ATOMIC_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __SIG_ATOMIC_WIDTH__ = @as(c_int, 32);
pub const __CHAR16_TYPE__ = c_ushort;
pub const __CHAR32_TYPE__ = c_uint;
pub const __UINTPTR_TYPE__ = c_ulonglong;
pub const __UINTPTR_FMTo__ = "llo";
pub const __UINTPTR_FMTu__ = "llu";
pub const __UINTPTR_FMTx__ = "llx";
pub const __UINTPTR_FMTX__ = "llX";
pub const __FLT16_DENORM_MIN__ = @as(f16, 5.9604644775390625e-8);
pub const __FLT16_NORM_MAX__ = @as(f16, 6.5504e+4);
pub const __FLT16_HAS_DENORM__ = @as(c_int, 1);
pub const __FLT16_DIG__ = @as(c_int, 3);
pub const __FLT16_DECIMAL_DIG__ = @as(c_int, 5);
pub const __FLT16_EPSILON__ = @as(f16, 9.765625e-4);
pub const __FLT16_HAS_INFINITY__ = @as(c_int, 1);
pub const __FLT16_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __FLT16_MANT_DIG__ = @as(c_int, 11);
pub const __FLT16_MAX_10_EXP__ = @as(c_int, 4);
pub const __FLT16_MAX_EXP__ = @as(c_int, 16);
pub const __FLT16_MAX__ = @as(f16, 6.5504e+4);
pub const __FLT16_MIN_10_EXP__ = -@as(c_int, 4);
pub const __FLT16_MIN_EXP__ = -@as(c_int, 13);
pub const __FLT16_MIN__ = @as(f16, 6.103515625e-5);
pub const __FLT_DENORM_MIN__ = @as(f32, 1.40129846e-45);
pub const __FLT_NORM_MAX__ = @as(f32, 3.40282347e+38);
pub const __FLT_HAS_DENORM__ = @as(c_int, 1);
pub const __FLT_DIG__ = @as(c_int, 6);
pub const __FLT_DECIMAL_DIG__ = @as(c_int, 9);
pub const __FLT_EPSILON__ = @as(f32, 1.19209290e-7);
pub const __FLT_HAS_INFINITY__ = @as(c_int, 1);
pub const __FLT_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __FLT_MANT_DIG__ = @as(c_int, 24);
pub const __FLT_MAX_10_EXP__ = @as(c_int, 38);
pub const __FLT_MAX_EXP__ = @as(c_int, 128);
pub const __FLT_MAX__ = @as(f32, 3.40282347e+38);
pub const __FLT_MIN_10_EXP__ = -@as(c_int, 37);
pub const __FLT_MIN_EXP__ = -@as(c_int, 125);
pub const __FLT_MIN__ = @as(f32, 1.17549435e-38);
pub const __DBL_DENORM_MIN__ = @as(f64, 4.9406564584124654e-324);
pub const __DBL_NORM_MAX__ = @as(f64, 1.7976931348623157e+308);
pub const __DBL_HAS_DENORM__ = @as(c_int, 1);
pub const __DBL_DIG__ = @as(c_int, 15);
pub const __DBL_DECIMAL_DIG__ = @as(c_int, 17);
pub const __DBL_EPSILON__ = @as(f64, 2.2204460492503131e-16);
pub const __DBL_HAS_INFINITY__ = @as(c_int, 1);
pub const __DBL_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __DBL_MANT_DIG__ = @as(c_int, 53);
pub const __DBL_MAX_10_EXP__ = @as(c_int, 308);
pub const __DBL_MAX_EXP__ = @as(c_int, 1024);
pub const __DBL_MAX__ = @as(f64, 1.7976931348623157e+308);
pub const __DBL_MIN_10_EXP__ = -@as(c_int, 307);
pub const __DBL_MIN_EXP__ = -@as(c_int, 1021);
pub const __DBL_MIN__ = @as(f64, 2.2250738585072014e-308);
pub const __LDBL_DENORM_MIN__ = @as(c_longdouble, 3.64519953188247460253e-4951);
pub const __LDBL_NORM_MAX__ = @as(c_longdouble, 1.18973149535723176502e+4932);
pub const __LDBL_HAS_DENORM__ = @as(c_int, 1);
pub const __LDBL_DIG__ = @as(c_int, 18);
pub const __LDBL_DECIMAL_DIG__ = @as(c_int, 21);
pub const __LDBL_EPSILON__ = @as(c_longdouble, 1.08420217248550443401e-19);
pub const __LDBL_HAS_INFINITY__ = @as(c_int, 1);
pub const __LDBL_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __LDBL_MANT_DIG__ = @as(c_int, 64);
pub const __LDBL_MAX_10_EXP__ = @as(c_int, 4932);
pub const __LDBL_MAX_EXP__ = @as(c_int, 16384);
pub const __LDBL_MAX__ = @as(c_longdouble, 1.18973149535723176502e+4932);
pub const __LDBL_MIN_10_EXP__ = -@as(c_int, 4931);
pub const __LDBL_MIN_EXP__ = -@as(c_int, 16381);
pub const __LDBL_MIN__ = @as(c_longdouble, 3.36210314311209350626e-4932);
pub const __POINTER_WIDTH__ = @as(c_int, 64);
pub const __BIGGEST_ALIGNMENT__ = @as(c_int, 16);
pub const __WCHAR_UNSIGNED__ = @as(c_int, 1);
pub const __WINT_UNSIGNED__ = @as(c_int, 1);
pub const __INT8_TYPE__ = i8;
pub const __INT8_FMTd__ = "hhd";
pub const __INT8_FMTi__ = "hhi";
pub const __INT8_C_SUFFIX__ = "";
pub inline fn __INT8_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub const __INT16_TYPE__ = c_short;
pub const __INT16_FMTd__ = "hd";
pub const __INT16_FMTi__ = "hi";
pub const __INT16_C_SUFFIX__ = "";
pub inline fn __INT16_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub const __INT32_TYPE__ = c_int;
pub const __INT32_FMTd__ = "d";
pub const __INT32_FMTi__ = "i";
pub const __INT32_C_SUFFIX__ = "";
pub inline fn __INT32_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub const __INT64_TYPE__ = c_longlong;
pub const __INT64_FMTd__ = "lld";
pub const __INT64_FMTi__ = "lli";
pub const __INT64_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `LL`");
// (no file):209:9
pub const __INT64_C = @import("std").zig.c_translation.Macros.LL_SUFFIX;
pub const __UINT8_TYPE__ = u8;
pub const __UINT8_FMTo__ = "hho";
pub const __UINT8_FMTu__ = "hhu";
pub const __UINT8_FMTx__ = "hhx";
pub const __UINT8_FMTX__ = "hhX";
pub const __UINT8_C_SUFFIX__ = "";
pub inline fn __UINT8_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub const __UINT8_MAX__ = @as(c_int, 255);
pub const __INT8_MAX__ = @as(c_int, 127);
pub const __UINT16_TYPE__ = c_ushort;
pub const __UINT16_FMTo__ = "ho";
pub const __UINT16_FMTu__ = "hu";
pub const __UINT16_FMTx__ = "hx";
pub const __UINT16_FMTX__ = "hX";
pub const __UINT16_C_SUFFIX__ = "";
pub inline fn __UINT16_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub const __UINT16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __INT16_MAX__ = @as(c_int, 32767);
pub const __UINT32_TYPE__ = c_uint;
pub const __UINT32_FMTo__ = "o";
pub const __UINT32_FMTu__ = "u";
pub const __UINT32_FMTx__ = "x";
pub const __UINT32_FMTX__ = "X";
pub const __UINT32_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `U`");
// (no file):234:9
pub const __UINT32_C = @import("std").zig.c_translation.Macros.U_SUFFIX;
pub const __UINT32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __INT32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __UINT64_TYPE__ = c_ulonglong;
pub const __UINT64_FMTo__ = "llo";
pub const __UINT64_FMTu__ = "llu";
pub const __UINT64_FMTx__ = "llx";
pub const __UINT64_FMTX__ = "llX";
pub const __UINT64_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `ULL`");
// (no file):243:9
pub const __UINT64_C = @import("std").zig.c_translation.Macros.ULL_SUFFIX;
pub const __UINT64_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub const __INT64_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __INT_LEAST8_TYPE__ = i8;
pub const __INT_LEAST8_MAX__ = @as(c_int, 127);
pub const __INT_LEAST8_WIDTH__ = @as(c_int, 8);
pub const __INT_LEAST8_FMTd__ = "hhd";
pub const __INT_LEAST8_FMTi__ = "hhi";
pub const __UINT_LEAST8_TYPE__ = u8;
pub const __UINT_LEAST8_MAX__ = @as(c_int, 255);
pub const __UINT_LEAST8_FMTo__ = "hho";
pub const __UINT_LEAST8_FMTu__ = "hhu";
pub const __UINT_LEAST8_FMTx__ = "hhx";
pub const __UINT_LEAST8_FMTX__ = "hhX";
pub const __INT_LEAST16_TYPE__ = c_short;
pub const __INT_LEAST16_MAX__ = @as(c_int, 32767);
pub const __INT_LEAST16_WIDTH__ = @as(c_int, 16);
pub const __INT_LEAST16_FMTd__ = "hd";
pub const __INT_LEAST16_FMTi__ = "hi";
pub const __UINT_LEAST16_TYPE__ = c_ushort;
pub const __UINT_LEAST16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __UINT_LEAST16_FMTo__ = "ho";
pub const __UINT_LEAST16_FMTu__ = "hu";
pub const __UINT_LEAST16_FMTx__ = "hx";
pub const __UINT_LEAST16_FMTX__ = "hX";
pub const __INT_LEAST32_TYPE__ = c_int;
pub const __INT_LEAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_LEAST32_WIDTH__ = @as(c_int, 32);
pub const __INT_LEAST32_FMTd__ = "d";
pub const __INT_LEAST32_FMTi__ = "i";
pub const __UINT_LEAST32_TYPE__ = c_uint;
pub const __UINT_LEAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __UINT_LEAST32_FMTo__ = "o";
pub const __UINT_LEAST32_FMTu__ = "u";
pub const __UINT_LEAST32_FMTx__ = "x";
pub const __UINT_LEAST32_FMTX__ = "X";
pub const __INT_LEAST64_TYPE__ = c_longlong;
pub const __INT_LEAST64_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __INT_LEAST64_WIDTH__ = @as(c_int, 64);
pub const __INT_LEAST64_FMTd__ = "lld";
pub const __INT_LEAST64_FMTi__ = "lli";
pub const __UINT_LEAST64_TYPE__ = c_ulonglong;
pub const __UINT_LEAST64_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub const __UINT_LEAST64_FMTo__ = "llo";
pub const __UINT_LEAST64_FMTu__ = "llu";
pub const __UINT_LEAST64_FMTx__ = "llx";
pub const __UINT_LEAST64_FMTX__ = "llX";
pub const __INT_FAST8_TYPE__ = i8;
pub const __INT_FAST8_MAX__ = @as(c_int, 127);
pub const __INT_FAST8_WIDTH__ = @as(c_int, 8);
pub const __INT_FAST8_FMTd__ = "hhd";
pub const __INT_FAST8_FMTi__ = "hhi";
pub const __UINT_FAST8_TYPE__ = u8;
pub const __UINT_FAST8_MAX__ = @as(c_int, 255);
pub const __UINT_FAST8_FMTo__ = "hho";
pub const __UINT_FAST8_FMTu__ = "hhu";
pub const __UINT_FAST8_FMTx__ = "hhx";
pub const __UINT_FAST8_FMTX__ = "hhX";
pub const __INT_FAST16_TYPE__ = c_short;
pub const __INT_FAST16_MAX__ = @as(c_int, 32767);
pub const __INT_FAST16_WIDTH__ = @as(c_int, 16);
pub const __INT_FAST16_FMTd__ = "hd";
pub const __INT_FAST16_FMTi__ = "hi";
pub const __UINT_FAST16_TYPE__ = c_ushort;
pub const __UINT_FAST16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __UINT_FAST16_FMTo__ = "ho";
pub const __UINT_FAST16_FMTu__ = "hu";
pub const __UINT_FAST16_FMTx__ = "hx";
pub const __UINT_FAST16_FMTX__ = "hX";
pub const __INT_FAST32_TYPE__ = c_int;
pub const __INT_FAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_FAST32_WIDTH__ = @as(c_int, 32);
pub const __INT_FAST32_FMTd__ = "d";
pub const __INT_FAST32_FMTi__ = "i";
pub const __UINT_FAST32_TYPE__ = c_uint;
pub const __UINT_FAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __UINT_FAST32_FMTo__ = "o";
pub const __UINT_FAST32_FMTu__ = "u";
pub const __UINT_FAST32_FMTx__ = "x";
pub const __UINT_FAST32_FMTX__ = "X";
pub const __INT_FAST64_TYPE__ = c_longlong;
pub const __INT_FAST64_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __INT_FAST64_WIDTH__ = @as(c_int, 64);
pub const __INT_FAST64_FMTd__ = "lld";
pub const __INT_FAST64_FMTi__ = "lli";
pub const __UINT_FAST64_TYPE__ = c_ulonglong;
pub const __UINT_FAST64_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub const __UINT_FAST64_FMTo__ = "llo";
pub const __UINT_FAST64_FMTu__ = "llu";
pub const __UINT_FAST64_FMTx__ = "llx";
pub const __UINT_FAST64_FMTX__ = "llX";
pub const __USER_LABEL_PREFIX__ = "";
pub const __FINITE_MATH_ONLY__ = @as(c_int, 0);
pub const __GNUC_STDC_INLINE__ = @as(c_int, 1);
pub const __GCC_ATOMIC_TEST_AND_SET_TRUEVAL = @as(c_int, 1);
pub const __GCC_DESTRUCTIVE_SIZE = @as(c_int, 64);
pub const __GCC_CONSTRUCTIVE_SIZE = @as(c_int, 64);
pub const __CLANG_ATOMIC_BOOL_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR16_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR32_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_WCHAR_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_SHORT_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_INT_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_LONG_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_LLONG_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_POINTER_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_BOOL_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR16_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR32_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_WCHAR_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_SHORT_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_INT_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_LONG_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_LLONG_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_POINTER_LOCK_FREE = @as(c_int, 2);
pub const __PIC__ = @as(c_int, 2);
pub const __pic__ = @as(c_int, 2);
pub const __FLT_RADIX__ = @as(c_int, 2);
pub const __DECIMAL_DIG__ = __LDBL_DECIMAL_DIG__;
pub const __GCC_ASM_FLAG_OUTPUTS__ = @as(c_int, 1);
pub const __code_model_small__ = @as(c_int, 1);
pub const __amd64__ = @as(c_int, 1);
pub const __amd64 = @as(c_int, 1);
pub const __x86_64 = @as(c_int, 1);
pub const __x86_64__ = @as(c_int, 1);
pub const __SEG_GS = @as(c_int, 1);
pub const __SEG_FS = @as(c_int, 1);
pub const __seg_gs = @compileError("unable to translate macro: undefined identifier `address_space`");
// (no file):375:9
pub const __seg_fs = @compileError("unable to translate macro: undefined identifier `address_space`");
// (no file):376:9
pub const __corei7 = @as(c_int, 1);
pub const __corei7__ = @as(c_int, 1);
pub const __tune_corei7__ = @as(c_int, 1);
pub const __REGISTER_PREFIX__ = "";
pub const __NO_MATH_INLINES = @as(c_int, 1);
pub const __AES__ = @as(c_int, 1);
pub const __VAES__ = @as(c_int, 1);
pub const __PCLMUL__ = @as(c_int, 1);
pub const __VPCLMULQDQ__ = @as(c_int, 1);
pub const __LAHF_SAHF__ = @as(c_int, 1);
pub const __LZCNT__ = @as(c_int, 1);
pub const __RDRND__ = @as(c_int, 1);
pub const __FSGSBASE__ = @as(c_int, 1);
pub const __BMI__ = @as(c_int, 1);
pub const __BMI2__ = @as(c_int, 1);
pub const __POPCNT__ = @as(c_int, 1);
pub const __PRFCHW__ = @as(c_int, 1);
pub const __RDSEED__ = @as(c_int, 1);
pub const __ADX__ = @as(c_int, 1);
pub const __MOVBE__ = @as(c_int, 1);
pub const __FMA__ = @as(c_int, 1);
pub const __F16C__ = @as(c_int, 1);
pub const __GFNI__ = @as(c_int, 1);
pub const __SHA__ = @as(c_int, 1);
pub const __FXSR__ = @as(c_int, 1);
pub const __XSAVE__ = @as(c_int, 1);
pub const __XSAVEOPT__ = @as(c_int, 1);
pub const __XSAVEC__ = @as(c_int, 1);
pub const __XSAVES__ = @as(c_int, 1);
pub const __CLFLUSHOPT__ = @as(c_int, 1);
pub const __CLWB__ = @as(c_int, 1);
pub const __SHSTK__ = @as(c_int, 1);
pub const __RDPID__ = @as(c_int, 1);
pub const __WAITPKG__ = @as(c_int, 1);
pub const __MOVDIRI__ = @as(c_int, 1);
pub const __MOVDIR64B__ = @as(c_int, 1);
pub const __PTWRITE__ = @as(c_int, 1);
pub const __INVPCID__ = @as(c_int, 1);
pub const __HRESET__ = @as(c_int, 1);
pub const __AVXVNNI__ = @as(c_int, 1);
pub const __SERIALIZE__ = @as(c_int, 1);
pub const __CRC32__ = @as(c_int, 1);
pub const __AVX2__ = @as(c_int, 1);
pub const __AVX__ = @as(c_int, 1);
pub const __SSE4_2__ = @as(c_int, 1);
pub const __SSE4_1__ = @as(c_int, 1);
pub const __SSSE3__ = @as(c_int, 1);
pub const __SSE3__ = @as(c_int, 1);
pub const __SSE2__ = @as(c_int, 1);
pub const __SSE2_MATH__ = @as(c_int, 1);
pub const __SSE__ = @as(c_int, 1);
pub const __SSE_MATH__ = @as(c_int, 1);
pub const __MMX__ = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_16 = @as(c_int, 1);
pub const __SIZEOF_FLOAT128__ = @as(c_int, 16);
pub const _WIN32 = @as(c_int, 1);
pub const _WIN64 = @as(c_int, 1);
pub const WIN32 = @as(c_int, 1);
pub const __WIN32 = @as(c_int, 1);
pub const __WIN32__ = @as(c_int, 1);
pub const WINNT = @as(c_int, 1);
pub const __WINNT = @as(c_int, 1);
pub const __WINNT__ = @as(c_int, 1);
pub const WIN64 = @as(c_int, 1);
pub const __WIN64 = @as(c_int, 1);
pub const __WIN64__ = @as(c_int, 1);
pub const __MINGW64__ = @as(c_int, 1);
pub const __MSVCRT__ = @as(c_int, 1);
pub const __MINGW32__ = @as(c_int, 1);
pub const __declspec = @compileError("unable to translate C expr: unexpected token '__attribute__'");
// (no file):450:9
pub const _cdecl = @compileError("unable to translate macro: undefined identifier `__cdecl__`");
// (no file):451:9
pub const __cdecl = @compileError("unable to translate macro: undefined identifier `__cdecl__`");
// (no file):452:9
pub const _stdcall = @compileError("unable to translate macro: undefined identifier `__stdcall__`");
// (no file):453:9
pub const __stdcall = @compileError("unable to translate macro: undefined identifier `__stdcall__`");
// (no file):454:9
pub const _fastcall = @compileError("unable to translate macro: undefined identifier `__fastcall__`");
// (no file):455:9
pub const __fastcall = @compileError("unable to translate macro: undefined identifier `__fastcall__`");
// (no file):456:9
pub const _thiscall = @compileError("unable to translate macro: undefined identifier `__thiscall__`");
// (no file):457:9
pub const __thiscall = @compileError("unable to translate macro: undefined identifier `__thiscall__`");
// (no file):458:9
pub const _pascal = @compileError("unable to translate macro: undefined identifier `__pascal__`");
// (no file):459:9
pub const __pascal = @compileError("unable to translate macro: undefined identifier `__pascal__`");
// (no file):460:9
pub const __STDC__ = @as(c_int, 1);
pub const __STDC_HOSTED__ = @as(c_int, 1);
pub const __STDC_VERSION__ = @as(c_long, 201710);
pub const __STDC_UTF_16__ = @as(c_int, 1);
pub const __STDC_UTF_32__ = @as(c_int, 1);
pub const __STDC_EMBED_NOT_FOUND__ = @as(c_int, 0);
pub const __STDC_EMBED_FOUND__ = @as(c_int, 1);
pub const __STDC_EMBED_EMPTY__ = @as(c_int, 2);
pub const NDEBUG = @as(c_int, 1);
pub const __MSVCRT_VERSION__ = @as(c_int, 0xE00);
pub const _WIN32_WINNT = @as(c_int, 0x0a00);
pub const __AVR_ATmega328P__ = "";
pub const _AVR_IO_H_ = "";
pub const _AVR_SFR_DEFS_H_ = @as(c_int, 1);
pub const _SFR_ASM_COMPAT = @as(c_int, 0);
pub const __CLANG_INTTYPES_H = "";
pub const _INTTYPES_H_ = "";
pub const _INC_CRTDEFS = "";
pub const _INC_CORECRT = "";
pub const _INC__MINGW_H = "";
pub const _INC_CRTDEFS_MACRO = "";
pub const __MINGW64_PASTE2 = @compileError("unable to translate C expr: unexpected token '##'");
// C:\zig\lib\libc\include\any-windows-any/_mingw_mac.h:10:9
pub inline fn __MINGW64_PASTE(x: anytype, y: anytype) @TypeOf(__MINGW64_PASTE2(x, y)) {
    _ = &x;
    _ = &y;
    return __MINGW64_PASTE2(x, y);
}
pub const __STRINGIFY = @compileError("unable to translate C expr: unexpected token '#'");
// C:\zig\lib\libc\include\any-windows-any/_mingw_mac.h:13:9
pub inline fn __MINGW64_STRINGIFY(x: anytype) @TypeOf(__STRINGIFY(x)) {
    _ = &x;
    return __STRINGIFY(x);
}
pub const __MINGW64_VERSION_MAJOR = @as(c_int, 13);
pub const __MINGW64_VERSION_MINOR = @as(c_int, 0);
pub const __MINGW64_VERSION_BUGFIX = @as(c_int, 0);
pub const __MINGW64_VERSION_RC = @as(c_int, 0);
pub const __MINGW64_VERSION_STR = __MINGW64_STRINGIFY(__MINGW64_VERSION_MAJOR) ++ "." ++ __MINGW64_STRINGIFY(__MINGW64_VERSION_MINOR) ++ "." ++ __MINGW64_STRINGIFY(__MINGW64_VERSION_BUGFIX);
pub const __MINGW64_VERSION_STATE = "alpha";
pub const __MINGW32_MAJOR_VERSION = @as(c_int, 3);
pub const __MINGW32_MINOR_VERSION = @as(c_int, 11);
pub const _M_AMD64 = @as(c_int, 100);
pub const _M_X64 = @as(c_int, 100);
pub const @"_" = @as(c_int, 1);
pub const __MINGW_USE_UNDERSCORE_PREFIX = @as(c_int, 0);
pub const __MINGW_IMP_SYMBOL = @compileError("unable to translate macro: undefined identifier `__imp_`");
// C:\zig\lib\libc\include\any-windows-any/_mingw_mac.h:129:11
pub const __MINGW_IMP_LSYMBOL = @compileError("unable to translate macro: undefined identifier `__imp_`");
// C:\zig\lib\libc\include\any-windows-any/_mingw_mac.h:130:11
pub inline fn __MINGW_USYMBOL(sym: anytype) @TypeOf(sym) {
    _ = &sym;
    return sym;
}
pub inline fn __MINGW_LSYMBOL(sym: anytype) @TypeOf(__MINGW64_PASTE(@"_", sym)) {
    _ = &sym;
    return __MINGW64_PASTE(@"_", sym);
}
pub const __MINGW_ASM_CALL = @compileError("unable to translate C expr: unexpected token '__asm__'");
// C:\zig\lib\libc\include\any-windows-any/_mingw_mac.h:140:9
pub const __MINGW_ASM_CRT_CALL = @compileError("unable to translate C expr: unexpected token '__asm__'");
// C:\zig\lib\libc\include\any-windows-any/_mingw_mac.h:141:9
pub const __MINGW_EXTENSION = @compileError("unable to translate C expr: unexpected token '__extension__'");
// C:\zig\lib\libc\include\any-windows-any/_mingw_mac.h:173:13
pub const __C89_NAMELESS = __MINGW_EXTENSION;
pub const __C89_NAMELESSSTRUCTNAME = "";
pub const __C89_NAMELESSSTRUCTNAME1 = "";
pub const __C89_NAMELESSSTRUCTNAME2 = "";
pub const __C89_NAMELESSSTRUCTNAME3 = "";
pub const __C89_NAMELESSSTRUCTNAME4 = "";
pub const __C89_NAMELESSSTRUCTNAME5 = "";
pub const __C89_NAMELESSUNIONNAME = "";
pub const __C89_NAMELESSUNIONNAME1 = "";
pub const __C89_NAMELESSUNIONNAME2 = "";
pub const __C89_NAMELESSUNIONNAME3 = "";
pub const __C89_NAMELESSUNIONNAME4 = "";
pub const __C89_NAMELESSUNIONNAME5 = "";
pub const __C89_NAMELESSUNIONNAME6 = "";
pub const __C89_NAMELESSUNIONNAME7 = "";
pub const __C89_NAMELESSUNIONNAME8 = "";
pub const __GNU_EXTENSION = __MINGW_EXTENSION;
pub const __MINGW_HAVE_ANSI_C99_PRINTF = @as(c_int, 1);
pub const __MINGW_HAVE_WIDE_C99_PRINTF = @as(c_int, 1);
pub const __MINGW_HAVE_ANSI_C99_SCANF = @as(c_int, 1);
pub const __MINGW_HAVE_WIDE_C99_SCANF = @as(c_int, 1);
pub const __MINGW_POISON_NAME = @compileError("unable to translate macro: undefined identifier `_layout_has_not_been_verified_and_its_declaration_is_most_likely_incorrect`");
// C:\zig\lib\libc\include\any-windows-any/_mingw_mac.h:213:11
pub const __MSABI_LONG = @import("std").zig.c_translation.Macros.L_SUFFIX;
pub const __MINGW_GCC_VERSION = ((__GNUC__ * @as(c_int, 10000)) + (__GNUC_MINOR__ * @as(c_int, 100))) + __GNUC_PATCHLEVEL__;
pub inline fn __MINGW_GNUC_PREREQ(major: anytype, minor: anytype) @TypeOf((__GNUC__ > major) or ((__GNUC__ == major) and (__GNUC_MINOR__ >= minor))) {
    _ = &major;
    _ = &minor;
    return (__GNUC__ > major) or ((__GNUC__ == major) and (__GNUC_MINOR__ >= minor));
}
pub inline fn __MINGW_MSC_PREREQ(major: anytype, minor: anytype) @TypeOf(@as(c_int, 0)) {
    _ = &major;
    _ = &minor;
    return @as(c_int, 0);
}
pub const __MINGW_ATTRIB_DEPRECATED_STR = @compileError("unable to translate C expr: unexpected token ''");
// C:\zig\lib\libc\include\any-windows-any/_mingw_mac.h:257:11
pub const __MINGW_SEC_WARN_STR = "This function or variable may be unsafe, use _CRT_SECURE_NO_WARNINGS to disable deprecation";
pub const __MINGW_MSVC2005_DEPREC_STR = "This POSIX function is deprecated beginning in Visual C++ 2005, use _CRT_NONSTDC_NO_DEPRECATE to disable deprecation";
pub const __MINGW_ATTRIB_DEPRECATED_MSVC2005 = __MINGW_ATTRIB_DEPRECATED_STR(__MINGW_MSVC2005_DEPREC_STR);
pub const __MINGW_ATTRIB_DEPRECATED_SEC_WARN = __MINGW_ATTRIB_DEPRECATED_STR(__MINGW_SEC_WARN_STR);
pub const __MINGW_MS_PRINTF = @compileError("unable to translate macro: undefined identifier `__format__`");
// C:\zig\lib\libc\include\any-windows-any/_mingw_mac.h:281:9
pub const __MINGW_MS_SCANF = @compileError("unable to translate macro: undefined identifier `__format__`");
// C:\zig\lib\libc\include\any-windows-any/_mingw_mac.h:284:9
pub const __MINGW_GNU_PRINTF = @compileError("unable to translate macro: undefined identifier `__format__`");
// C:\zig\lib\libc\include\any-windows-any/_mingw_mac.h:287:9
pub const __MINGW_GNU_SCANF = @compileError("unable to translate macro: undefined identifier `__format__`");
// C:\zig\lib\libc\include\any-windows-any/_mingw_mac.h:290:9
pub const __mingw_ovr = @compileError("unable to translate macro: undefined identifier `__unused__`");
// C:\zig\lib\libc\include\any-windows-any/_mingw_mac.h:311:11
pub const __mingw_attribute_artificial = @compileError("unable to translate macro: undefined identifier `__artificial__`");
// C:\zig\lib\libc\include\any-windows-any/_mingw_mac.h:318:11
pub const __MINGW_SELECTANY = @compileError("unable to translate macro: undefined identifier `__selectany__`");
// C:\zig\lib\libc\include\any-windows-any/_mingw_mac.h:324:9
pub const __MINGW_FORTIFY_LEVEL = @as(c_int, 0);
pub const __mingw_bos_ovr = __mingw_ovr;
pub const __MINGW_FORTIFY_VA_ARG = @as(c_int, 0);
pub const _INC_MINGW_SECAPI = "";
pub const _CRT_SECURE_CPP_OVERLOAD_SECURE_NAMES = @as(c_int, 0);
pub const _CRT_SECURE_CPP_OVERLOAD_SECURE_NAMES_MEMORY = @as(c_int, 0);
pub const _CRT_SECURE_CPP_OVERLOAD_STANDARD_NAMES = @as(c_int, 0);
pub const _CRT_SECURE_CPP_OVERLOAD_STANDARD_NAMES_COUNT = @as(c_int, 0);
pub const _CRT_SECURE_CPP_OVERLOAD_STANDARD_NAMES_MEMORY = @as(c_int, 0);
pub const __MINGW_CRT_NAME_CONCAT2 = @compileError("unable to translate macro: undefined identifier `_s`");
// C:\zig\lib\libc\include\any-windows-any/_mingw_secapi.h:41:9
pub const __CRT_SECURE_CPP_OVERLOAD_STANDARD_NAMES_MEMORY_0_3_ = @compileError("unable to translate C expr: unexpected token ';'");
// C:\zig\lib\libc\include\any-windows-any/_mingw_secapi.h:69:9
pub const __LONG32 = c_long;
pub const __MINGW_IMPORT = @compileError("unable to translate macro: undefined identifier `__dllimport__`");
// C:\zig\lib\libc\include\any-windows-any/_mingw.h:44:12
pub const __USE_CRTIMP = @as(c_int, 1);
pub const _CRTIMP = @compileError("unable to translate macro: undefined identifier `__dllimport__`");
// C:\zig\lib\libc\include\any-windows-any/_mingw.h:52:15
pub const __DECLSPEC_SUPPORTED = "";
pub const USE___UUIDOF = @as(c_int, 0);
pub const _inline = @compileError("unable to translate C expr: unexpected token '__inline'");
// C:\zig\lib\libc\include\any-windows-any/_mingw.h:74:9
pub const __CRT_INLINE = @compileError("unable to translate macro: undefined identifier `__gnu_inline__`");
// C:\zig\lib\libc\include\any-windows-any/_mingw.h:83:11
pub const __MINGW_INTRIN_INLINE = @compileError("unable to translate macro: undefined identifier `__always_inline__`");
// C:\zig\lib\libc\include\any-windows-any/_mingw.h:90:9
pub const __MINGW_CXX11_CONSTEXPR = "";
pub const __MINGW_CXX14_CONSTEXPR = "";
pub const __UNUSED_PARAM = @compileError("unable to translate macro: undefined identifier `__unused__`");
// C:\zig\lib\libc\include\any-windows-any/_mingw.h:118:11
pub const __restrict_arr = @compileError("unable to translate C expr: unexpected token '__restrict'");
// C:\zig\lib\libc\include\any-windows-any/_mingw.h:133:10
pub const __MINGW_ATTRIB_NORETURN = @compileError("unable to translate macro: undefined identifier `__noreturn__`");
// C:\zig\lib\libc\include\any-windows-any/_mingw.h:149:9
pub const __MINGW_ATTRIB_CONST = @compileError("unable to translate C expr: unexpected token '__attribute__'");
// C:\zig\lib\libc\include\any-windows-any/_mingw.h:150:9
pub const __MINGW_ATTRIB_MALLOC = @compileError("unable to translate macro: undefined identifier `__malloc__`");
// C:\zig\lib\libc\include\any-windows-any/_mingw.h:160:9
pub const __MINGW_ATTRIB_PURE = @compileError("unable to translate macro: undefined identifier `__pure__`");
// C:\zig\lib\libc\include\any-windows-any/_mingw.h:161:9
pub const __MINGW_ATTRIB_NONNULL = @compileError("unable to translate macro: undefined identifier `__nonnull__`");
// C:\zig\lib\libc\include\any-windows-any/_mingw.h:174:9
pub const __MINGW_ATTRIB_UNUSED = @compileError("unable to translate macro: undefined identifier `__unused__`");
// C:\zig\lib\libc\include\any-windows-any/_mingw.h:180:9
pub const __MINGW_ATTRIB_USED = @compileError("unable to translate macro: undefined identifier `__used__`");
// C:\zig\lib\libc\include\any-windows-any/_mingw.h:186:9
pub const __MINGW_ATTRIB_DEPRECATED = @compileError("unable to translate macro: undefined identifier `__deprecated__`");
// C:\zig\lib\libc\include\any-windows-any/_mingw.h:187:9
pub const __MINGW_ATTRIB_DEPRECATED_MSG = @compileError("unable to translate macro: undefined identifier `__deprecated__`");
// C:\zig\lib\libc\include\any-windows-any/_mingw.h:189:9
pub const __MINGW_NOTHROW = @compileError("unable to translate macro: undefined identifier `__nothrow__`");
// C:\zig\lib\libc\include\any-windows-any/_mingw.h:204:9
pub const __MINGW_ATTRIB_NO_OPTIMIZE = "";
pub const __MINGW_PRAGMA_PARAM = @compileError("unable to translate C expr: unexpected token ''");
// C:\zig\lib\libc\include\any-windows-any/_mingw.h:222:9
pub const __MINGW_BROKEN_INTERFACE = @compileError("unable to translate macro: undefined identifier `message`");
// C:\zig\lib\libc\include\any-windows-any/_mingw.h:225:9
pub const _UCRT = "";
pub inline fn __MINGW_UCRT_ASM_CALL(func: anytype) @TypeOf(__MINGW_ASM_CALL(func)) {
    _ = &func;
    return __MINGW_ASM_CALL(func);
}
pub const _INT128_DEFINED = "";
pub const __int8 = u8;
pub const __int16 = c_short;
pub const __int32 = c_int;
pub const __int64 = c_longlong;
pub const __ptr32 = "";
pub const __ptr64 = "";
pub const __unaligned = "";
pub const __w64 = "";
pub const __forceinline = @compileError("unable to translate macro: undefined identifier `__always_inline__`");
// C:\zig\lib\libc\include\any-windows-any/_mingw.h:290:9
pub const __nothrow = "";
pub const _INC_VADEFS = "";
pub const MINGW_SDK_INIT = "";
pub const MINGW_HAS_SECURE_API = @as(c_int, 1);
pub const __STDC_SECURE_LIB__ = @as(c_long, 200411);
pub const __GOT_SECURE_LIB__ = __STDC_SECURE_LIB__;
pub const MINGW_DDK_H = "";
pub const MINGW_HAS_DDK_H = @as(c_int, 1);
pub const _CRT_PACKING = @as(c_int, 8);
pub const __GNUC_VA_LIST = "";
pub const _VA_LIST_DEFINED = "";
pub inline fn _ADDRESSOF(v: anytype) @TypeOf(&v) {
    _ = &v;
    return &v;
}
pub const _crt_va_start = @compileError("unable to translate macro: undefined identifier `__builtin_va_start`");
// C:\zig\lib\libc\include\any-windows-any/vadefs.h:48:9
pub const _crt_va_arg = @compileError("unable to translate C expr: unexpected token 'an identifier'");
// C:\zig\lib\libc\include\any-windows-any/vadefs.h:49:9
pub const _crt_va_end = @compileError("unable to translate macro: undefined identifier `__builtin_va_end`");
// C:\zig\lib\libc\include\any-windows-any/vadefs.h:50:9
pub const _crt_va_copy = @compileError("unable to translate macro: undefined identifier `__builtin_va_copy`");
// C:\zig\lib\libc\include\any-windows-any/vadefs.h:51:9
pub const __CRT_STRINGIZE = @compileError("unable to translate C expr: unexpected token '#'");
// C:\zig\lib\libc\include\any-windows-any/_mingw.h:309:9
pub inline fn _CRT_STRINGIZE(_Value: anytype) @TypeOf(__CRT_STRINGIZE(_Value)) {
    _ = &_Value;
    return __CRT_STRINGIZE(_Value);
}
pub const __CRT_WIDE = @compileError("unable to translate macro: undefined identifier `L`");
// C:\zig\lib\libc\include\any-windows-any/_mingw.h:314:9
pub inline fn _CRT_WIDE(_String: anytype) @TypeOf(__CRT_WIDE(_String)) {
    _ = &_String;
    return __CRT_WIDE(_String);
}
pub const _W64 = "";
pub const _CRTIMP_NOIA64 = _CRTIMP;
pub const _CRTIMP2 = _CRTIMP;
pub const _CRTIMP_ALTERNATIVE = _CRTIMP;
pub const _CRT_ALTERNATIVE_IMPORTED = "";
pub const _MRTIMP2 = _CRTIMP;
pub const _DLL = "";
pub const _MT = "";
pub const _MCRTIMP = _CRTIMP;
pub const _CRTIMP_PURE = _CRTIMP;
pub const _PGLOBAL = "";
pub const _AGLOBAL = "";
pub const _SECURECRT_FILL_BUFFER_PATTERN = @as(c_int, 0xFD);
pub const _CRT_DEPRECATE_TEXT = @compileError("unable to translate macro: undefined identifier `deprecated`");
// C:\zig\lib\libc\include\any-windows-any/_mingw.h:373:9
pub const _CRT_INSECURE_DEPRECATE_MEMORY = @compileError("unable to translate C expr: unexpected token ''");
// C:\zig\lib\libc\include\any-windows-any/_mingw.h:376:9
pub const _CRT_INSECURE_DEPRECATE_GLOBALS = @compileError("unable to translate C expr: unexpected token ''");
// C:\zig\lib\libc\include\any-windows-any/_mingw.h:380:9
pub const _CRT_MANAGED_HEAP_DEPRECATE = "";
pub const _CRT_OBSOLETE = @compileError("unable to translate C expr: unexpected token ''");
// C:\zig\lib\libc\include\any-windows-any/_mingw.h:388:9
pub const _CONST_RETURN = "";
pub const UNALIGNED = "";
pub const _CRT_ALIGN = @compileError("unable to translate macro: undefined identifier `__aligned__`");
// C:\zig\lib\libc\include\any-windows-any/_mingw.h:415:9
pub const __CRTDECL = __cdecl;
pub const _ARGMAX = @as(c_int, 100);
pub const _TRUNCATE = @import("std").zig.c_translation.cast(usize, -@as(c_int, 1));
pub inline fn _CRT_UNUSED(x: anytype) anyopaque {
    _ = &x;
    return @import("std").zig.c_translation.cast(anyopaque, x);
}
pub const __USE_MINGW_ANSI_STDIO = @as(c_int, 0);
pub const _CRT_glob = @compileError("unable to translate macro: undefined identifier `_dowildcard`");
// C:\zig\lib\libc\include\any-windows-any/_mingw.h:479:9
pub const __ANONYMOUS_DEFINED = "";
pub const _ANONYMOUS_UNION = __MINGW_EXTENSION;
pub const _ANONYMOUS_STRUCT = __MINGW_EXTENSION;
pub const _UNION_NAME = @compileError("unable to translate C expr: unexpected token ''");
// C:\zig\lib\libc\include\any-windows-any/_mingw.h:499:9
pub const _STRUCT_NAME = @compileError("unable to translate C expr: unexpected token ''");
// C:\zig\lib\libc\include\any-windows-any/_mingw.h:500:9
pub const DUMMYUNIONNAME = "";
pub const DUMMYUNIONNAME1 = "";
pub const DUMMYUNIONNAME2 = "";
pub const DUMMYUNIONNAME3 = "";
pub const DUMMYUNIONNAME4 = "";
pub const DUMMYUNIONNAME5 = "";
pub const DUMMYUNIONNAME6 = "";
pub const DUMMYUNIONNAME7 = "";
pub const DUMMYUNIONNAME8 = "";
pub const DUMMYUNIONNAME9 = "";
pub const DUMMYSTRUCTNAME = "";
pub const DUMMYSTRUCTNAME1 = "";
pub const DUMMYSTRUCTNAME2 = "";
pub const DUMMYSTRUCTNAME3 = "";
pub const DUMMYSTRUCTNAME4 = "";
pub const DUMMYSTRUCTNAME5 = "";
pub const __CRT_UUID_DECL = @compileError("unable to translate C expr: unexpected token ''");
// C:\zig\lib\libc\include\any-windows-any/_mingw.h:587:9
pub const __MINGW_DEBUGBREAK_IMPL = !(__has_builtin(__debugbreak) != 0);
pub const __MINGW_FASTFAIL_IMPL = !(__has_builtin(__fastfail) != 0);
pub const __MINGW_PREFETCH_IMPL = @compileError("unable to translate macro: undefined identifier `__prefetch`");
// C:\zig\lib\libc\include\any-windows-any/_mingw.h:644:9
pub const _CRTNOALIAS = "";
pub const _CRTRESTRICT = "";
pub const _SIZE_T_DEFINED = "";
pub const _SSIZE_T_DEFINED = "";
pub const _RSIZE_T_DEFINED = "";
pub const _INTPTR_T_DEFINED = "";
pub const __intptr_t_defined = "";
pub const _UINTPTR_T_DEFINED = "";
pub const __uintptr_t_defined = "";
pub const _PTRDIFF_T_DEFINED = "";
pub const _PTRDIFF_T_ = "";
pub const _WCHAR_T_DEFINED = "";
pub const _WCTYPE_T_DEFINED = "";
pub const _WINT_T = "";
pub const _ERRCODE_DEFINED = "";
pub const _TIME32_T_DEFINED = "";
pub const _TIME64_T_DEFINED = "";
pub const _TIME_T_DEFINED = "";
pub const _CRT_SECURE_CPP_NOTHROW = @compileError("unable to translate macro: undefined identifier `throw`");
// C:\zig\lib\libc\include\any-windows-any/corecrt.h:143:9
pub const __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0 = @compileError("unable to translate C expr: unexpected token ''");
// C:\zig\lib\libc\include\any-windows-any/corecrt.h:262:9
pub const __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 = @compileError("unable to translate C expr: unexpected token ''");
// C:\zig\lib\libc\include\any-windows-any/corecrt.h:263:9
pub const __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2 = @compileError("unable to translate C expr: unexpected token ''");
// C:\zig\lib\libc\include\any-windows-any/corecrt.h:264:9
pub const __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_3 = @compileError("unable to translate C expr: unexpected token ''");
// C:\zig\lib\libc\include\any-windows-any/corecrt.h:265:9
pub const __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_4 = @compileError("unable to translate C expr: unexpected token ''");
// C:\zig\lib\libc\include\any-windows-any/corecrt.h:266:9
pub const __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1 = @compileError("unable to translate C expr: unexpected token ''");
// C:\zig\lib\libc\include\any-windows-any/corecrt.h:267:9
pub const __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_2 = @compileError("unable to translate C expr: unexpected token ''");
// C:\zig\lib\libc\include\any-windows-any/corecrt.h:268:9
pub const __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_3 = @compileError("unable to translate C expr: unexpected token ''");
// C:\zig\lib\libc\include\any-windows-any/corecrt.h:269:9
pub const __DEFINE_CPP_OVERLOAD_SECURE_FUNC_2_0 = @compileError("unable to translate C expr: unexpected token ''");
// C:\zig\lib\libc\include\any-windows-any/corecrt.h:270:9
pub const __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1_ARGLIST = @compileError("unable to translate C expr: unexpected token ''");
// C:\zig\lib\libc\include\any-windows-any/corecrt.h:271:9
pub const __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2_ARGLIST = @compileError("unable to translate C expr: unexpected token ''");
// C:\zig\lib\libc\include\any-windows-any/corecrt.h:272:9
pub const __DEFINE_CPP_OVERLOAD_SECURE_FUNC_SPLITPATH = @compileError("unable to translate C expr: unexpected token ''");
// C:\zig\lib\libc\include\any-windows-any/corecrt.h:273:9
pub const __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0 = @compileError("unable to translate macro: undefined identifier `__func_name`");
// C:\zig\lib\libc\include\any-windows-any/corecrt.h:277:9
pub const __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1 = @compileError("unable to translate macro: undefined identifier `__func_name`");
// C:\zig\lib\libc\include\any-windows-any/corecrt.h:279:9
pub const __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_2 = @compileError("unable to translate macro: undefined identifier `__func_name`");
// C:\zig\lib\libc\include\any-windows-any/corecrt.h:281:9
pub const __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_3 = @compileError("unable to translate macro: undefined identifier `__func_name`");
// C:\zig\lib\libc\include\any-windows-any/corecrt.h:283:9
pub const __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_4 = @compileError("unable to translate macro: undefined identifier `__func_name`");
// C:\zig\lib\libc\include\any-windows-any/corecrt.h:285:9
pub const __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0_EX = @compileError("unable to translate C expr: unexpected token ''");
// C:\zig\lib\libc\include\any-windows-any/corecrt.h:422:9
pub const __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX = @compileError("unable to translate C expr: unexpected token ''");
// C:\zig\lib\libc\include\any-windows-any/corecrt.h:423:9
pub const __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_2_EX = @compileError("unable to translate C expr: unexpected token ''");
// C:\zig\lib\libc\include\any-windows-any/corecrt.h:424:9
pub const __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_3_EX = @compileError("unable to translate C expr: unexpected token ''");
// C:\zig\lib\libc\include\any-windows-any/corecrt.h:425:9
pub const __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_4_EX = @compileError("unable to translate C expr: unexpected token ''");
// C:\zig\lib\libc\include\any-windows-any/corecrt.h:426:9
pub const _TAGLC_ID_DEFINED = "";
pub const _THREADLOCALEINFO = "";
pub const __crt_typefix = @compileError("unable to translate C expr: unexpected token ''");
// C:\zig\lib\libc\include\any-windows-any/corecrt.h:486:9
pub const _CRT_USE_WINAPI_FAMILY_DESKTOP_APP = "";
pub const __CLANG_STDINT_H = "";
pub const _STDINT_H = "";
pub const __need_wint_t = "";
pub const __need_wchar_t = "";
pub const _WCHAR_T = "";
pub const INT8_MIN = -@as(c_int, 128);
pub const INT16_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_int, 32768, .decimal);
pub const INT32_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal) - @as(c_int, 1);
pub const INT64_MIN = -@as(c_longlong, 9223372036854775807) - @as(c_int, 1);
pub const INT8_MAX = @as(c_int, 127);
pub const INT16_MAX = @as(c_int, 32767);
pub const INT32_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const INT64_MAX = @as(c_longlong, 9223372036854775807);
pub const UINT8_MAX = @as(c_int, 255);
pub const UINT16_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const UINT32_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 0xffffffff, .hex);
pub const UINT64_MAX = @as(c_ulonglong, 0xffffffffffffffff);
pub const INT_LEAST8_MIN = INT8_MIN;
pub const INT_LEAST16_MIN = INT16_MIN;
pub const INT_LEAST32_MIN = INT32_MIN;
pub const INT_LEAST64_MIN = INT64_MIN;
pub const INT_LEAST8_MAX = INT8_MAX;
pub const INT_LEAST16_MAX = INT16_MAX;
pub const INT_LEAST32_MAX = INT32_MAX;
pub const INT_LEAST64_MAX = INT64_MAX;
pub const UINT_LEAST8_MAX = UINT8_MAX;
pub const UINT_LEAST16_MAX = UINT16_MAX;
pub const UINT_LEAST32_MAX = UINT32_MAX;
pub const UINT_LEAST64_MAX = UINT64_MAX;
pub const INT_FAST8_MIN = INT8_MIN;
pub const INT_FAST16_MIN = INT16_MIN;
pub const INT_FAST32_MIN = INT32_MIN;
pub const INT_FAST64_MIN = INT64_MIN;
pub const INT_FAST8_MAX = INT8_MAX;
pub const INT_FAST16_MAX = INT16_MAX;
pub const INT_FAST32_MAX = INT32_MAX;
pub const INT_FAST64_MAX = INT64_MAX;
pub const UINT_FAST8_MAX = UINT8_MAX;
pub const UINT_FAST16_MAX = UINT16_MAX;
pub const UINT_FAST32_MAX = UINT32_MAX;
pub const UINT_FAST64_MAX = UINT64_MAX;
pub const INTPTR_MIN = INT64_MIN;
pub const INTPTR_MAX = INT64_MAX;
pub const UINTPTR_MAX = UINT64_MAX;
pub const INTMAX_MIN = INT64_MIN;
pub const INTMAX_MAX = INT64_MAX;
pub const UINTMAX_MAX = UINT64_MAX;
pub const PTRDIFF_MIN = INT64_MIN;
pub const PTRDIFF_MAX = INT64_MAX;
pub const SIG_ATOMIC_MIN = INT32_MIN;
pub const SIG_ATOMIC_MAX = INT32_MAX;
pub const SIZE_MAX = UINT64_MAX;
pub const WCHAR_MIN = @as(c_uint, 0);
pub const WCHAR_MAX = @as(c_uint, 0xffff);
pub const WINT_MIN = @as(c_uint, 0);
pub const WINT_MAX = @as(c_uint, 0xffff);
pub inline fn INT8_C(val: anytype) @TypeOf((INT_LEAST8_MAX - INT_LEAST8_MAX) + val) {
    _ = &val;
    return (INT_LEAST8_MAX - INT_LEAST8_MAX) + val;
}
pub inline fn INT16_C(val: anytype) @TypeOf((INT_LEAST16_MAX - INT_LEAST16_MAX) + val) {
    _ = &val;
    return (INT_LEAST16_MAX - INT_LEAST16_MAX) + val;
}
pub inline fn INT32_C(val: anytype) @TypeOf((INT_LEAST32_MAX - INT_LEAST32_MAX) + val) {
    _ = &val;
    return (INT_LEAST32_MAX - INT_LEAST32_MAX) + val;
}
pub const INT64_C = @import("std").zig.c_translation.Macros.LL_SUFFIX;
pub inline fn UINT8_C(val: anytype) @TypeOf(val) {
    _ = &val;
    return val;
}
pub inline fn UINT16_C(val: anytype) @TypeOf(val) {
    _ = &val;
    return val;
}
pub const UINT32_C = @import("std").zig.c_translation.Macros.U_SUFFIX;
pub const UINT64_C = @import("std").zig.c_translation.Macros.ULL_SUFFIX;
pub const INTMAX_C = @import("std").zig.c_translation.Macros.LL_SUFFIX;
pub const UINTMAX_C = @import("std").zig.c_translation.Macros.ULL_SUFFIX;
pub const PRId64 = "lld";
pub const PRIi64 = "lli";
pub const PRIo64 = "llo";
pub const PRIu64 = "llu";
pub const PRIx64 = "llx";
pub const PRIX64 = "llX";
pub const PRId8 = "d";
pub const PRId16 = "d";
pub const PRId32 = "d";
pub const PRIdLEAST8 = "d";
pub const PRIdLEAST16 = "d";
pub const PRIdLEAST32 = "d";
pub const PRIdLEAST64 = PRId64;
pub const PRIdFAST8 = "d";
pub const PRIdFAST16 = "d";
pub const PRIdFAST32 = "d";
pub const PRIdFAST64 = PRId64;
pub const PRIdMAX = PRId64;
pub const PRIi8 = "i";
pub const PRIi16 = "i";
pub const PRIi32 = "i";
pub const PRIiLEAST8 = "i";
pub const PRIiLEAST16 = "i";
pub const PRIiLEAST32 = "i";
pub const PRIiLEAST64 = PRIi64;
pub const PRIiFAST8 = "i";
pub const PRIiFAST16 = "i";
pub const PRIiFAST32 = "i";
pub const PRIiFAST64 = PRIi64;
pub const PRIiMAX = PRIi64;
pub const PRIo8 = "o";
pub const PRIo16 = "o";
pub const PRIo32 = "o";
pub const PRIoLEAST8 = "o";
pub const PRIoLEAST16 = "o";
pub const PRIoLEAST32 = "o";
pub const PRIoLEAST64 = PRIo64;
pub const PRIoFAST8 = "o";
pub const PRIoFAST16 = "o";
pub const PRIoFAST32 = "o";
pub const PRIoFAST64 = PRIo64;
pub const PRIoMAX = PRIo64;
pub const PRIu8 = "u";
pub const PRIu16 = "u";
pub const PRIu32 = "u";
pub const PRIuLEAST8 = "u";
pub const PRIuLEAST16 = "u";
pub const PRIuLEAST32 = "u";
pub const PRIuLEAST64 = PRIu64;
pub const PRIuFAST8 = "u";
pub const PRIuFAST16 = "u";
pub const PRIuFAST32 = "u";
pub const PRIuFAST64 = PRIu64;
pub const PRIuMAX = PRIu64;
pub const PRIx8 = "x";
pub const PRIx16 = "x";
pub const PRIx32 = "x";
pub const PRIxLEAST8 = "x";
pub const PRIxLEAST16 = "x";
pub const PRIxLEAST32 = "x";
pub const PRIxLEAST64 = PRIx64;
pub const PRIxFAST8 = "x";
pub const PRIxFAST16 = "x";
pub const PRIxFAST32 = "x";
pub const PRIxFAST64 = PRIx64;
pub const PRIxMAX = PRIx64;
pub const PRIX8 = "X";
pub const PRIX16 = "X";
pub const PRIX32 = "X";
pub const PRIXLEAST8 = "X";
pub const PRIXLEAST16 = "X";
pub const PRIXLEAST32 = "X";
pub const PRIXLEAST64 = PRIX64;
pub const PRIXFAST8 = "X";
pub const PRIXFAST16 = "X";
pub const PRIXFAST32 = "X";
pub const PRIXFAST64 = PRIX64;
pub const PRIXMAX = PRIX64;
pub const SCNd16 = "hd";
pub const SCNd32 = "d";
pub const SCNd64 = PRId64;
pub const SCNdLEAST16 = "hd";
pub const SCNdLEAST32 = "d";
pub const SCNdLEAST64 = PRId64;
pub const SCNdFAST16 = "hd";
pub const SCNdFAST32 = "d";
pub const SCNdFAST64 = PRId64;
pub const SCNdMAX = PRId64;
pub const SCNi16 = "hi";
pub const SCNi32 = "i";
pub const SCNi64 = PRIi64;
pub const SCNiLEAST16 = "hi";
pub const SCNiLEAST32 = "i";
pub const SCNiLEAST64 = PRIi64;
pub const SCNiFAST16 = "hi";
pub const SCNiFAST32 = "i";
pub const SCNiFAST64 = PRIi64;
pub const SCNiMAX = PRIi64;
pub const SCNo16 = "ho";
pub const SCNo32 = "o";
pub const SCNo64 = PRIo64;
pub const SCNoLEAST16 = "ho";
pub const SCNoLEAST32 = "o";
pub const SCNoLEAST64 = PRIo64;
pub const SCNoFAST16 = "ho";
pub const SCNoFAST32 = "o";
pub const SCNoFAST64 = PRIo64;
pub const SCNoMAX = PRIo64;
pub const SCNx16 = "hx";
pub const SCNx32 = "x";
pub const SCNx64 = PRIx64;
pub const SCNxLEAST16 = "hx";
pub const SCNxLEAST32 = "x";
pub const SCNxLEAST64 = PRIx64;
pub const SCNxFAST16 = "hx";
pub const SCNxFAST32 = "x";
pub const SCNxFAST64 = PRIx64;
pub const SCNxMAX = PRIx64;
pub const SCNu16 = "hu";
pub const SCNu32 = "u";
pub const SCNu64 = PRIu64;
pub const SCNuLEAST16 = "hu";
pub const SCNuLEAST32 = "u";
pub const SCNuLEAST64 = PRIu64;
pub const SCNuFAST16 = "hu";
pub const SCNuFAST32 = "u";
pub const SCNuFAST64 = PRIu64;
pub const SCNuMAX = PRIu64;
pub const PRIdPTR = PRId64;
pub const PRIiPTR = PRIi64;
pub const PRIoPTR = PRIo64;
pub const PRIuPTR = PRIu64;
pub const PRIxPTR = PRIx64;
pub const PRIXPTR = PRIX64;
pub const SCNdPTR = PRId64;
pub const SCNiPTR = PRIi64;
pub const SCNoPTR = PRIo64;
pub const SCNxPTR = PRIx64;
pub const SCNuPTR = PRIu64;
pub const SCNd8 = "hhd";
pub const SCNdLEAST8 = "hhd";
pub const SCNdFAST8 = "hhd";
pub const SCNi8 = "hhi";
pub const SCNiLEAST8 = "hhi";
pub const SCNiFAST8 = "hhi";
pub const SCNo8 = "hho";
pub const SCNoLEAST8 = "hho";
pub const SCNoFAST8 = "hho";
pub const SCNx8 = "hhx";
pub const SCNxLEAST8 = "hhx";
pub const SCNxFAST8 = "hhx";
pub const SCNu8 = "hhu";
pub const SCNuLEAST8 = "hhu";
pub const SCNuFAST8 = "hhu";
//pub const _MMIO_BYTE = @compileError("unable to translate C expr: unexpected token 'volatile'");
pub fn _MMIO_BYTE(adr: c_uint) *volatile u8 {
    return @ptrFromInt(adr);
}
// C:\zig-data\avr\avrio_zig\src\libzig\atmega328p\..\..\libc/avr/sfr_defs.h:128:9
//pub const _MMIO_WORD = @compileError("unable to translate C expr: unexpected token 'volatile'");
pub fn _MMIO_WORD(adr: c_uint) *volatile u16 {
    return @ptrFromInt(adr);
}
// C:\zig-data\avr\avrio_zig\src\libzig\atmega328p\..\..\libc/avr/sfr_defs.h:129:9
//pub const _MMIO_DWORD = @compileError("unable to translate C expr: unexpected token 'volatile'");
pub fn _MMIO_DWORD(adr: c_uint) *volatile u32 {
    return @ptrFromInt(adr);
}
// C:\zig-data\avr\avrio_zig\src\libzig\atmega328p\..\..\libc/avr/sfr_defs.h:130:9
pub const __SFR_OFFSET = @as(c_int, 0x20);
pub inline fn _SFR_MEM8(mem_addr: anytype) @TypeOf(_MMIO_BYTE(mem_addr)) {
    _ = &mem_addr;
    return _MMIO_BYTE(mem_addr);
}
pub inline fn _SFR_MEM16(mem_addr: anytype) @TypeOf(_MMIO_WORD(mem_addr)) {
    _ = &mem_addr;
    return _MMIO_WORD(mem_addr);
}
pub inline fn _SFR_MEM32(mem_addr: anytype) @TypeOf(_MMIO_DWORD(mem_addr)) {
    _ = &mem_addr;
    return _MMIO_DWORD(mem_addr);
}
pub inline fn _SFR_IO8(io_addr: anytype) @TypeOf(_MMIO_BYTE(io_addr + __SFR_OFFSET)) {
    _ = &io_addr;
    return _MMIO_BYTE(io_addr + __SFR_OFFSET);
}
pub inline fn _SFR_IO16(io_addr: anytype) @TypeOf(_MMIO_WORD(io_addr + __SFR_OFFSET)) {
    _ = &io_addr;
    return _MMIO_WORD(io_addr + __SFR_OFFSET);
}
pub inline fn _SFR_MEM_ADDR(sfr: anytype) u16 {
    _ = &sfr;
    return @import("std").zig.c_translation.cast(u16, &sfr);
}
pub inline fn _SFR_IO_ADDR(sfr: anytype) @TypeOf(_SFR_MEM_ADDR(sfr) - __SFR_OFFSET) {
    _ = &sfr;
    return _SFR_MEM_ADDR(sfr) - __SFR_OFFSET;
}
pub inline fn _SFR_IO_REG_P(sfr: anytype) @TypeOf(_SFR_MEM_ADDR(sfr) < (@as(c_int, 0x40) + __SFR_OFFSET)) {
    _ = &sfr;
    return _SFR_MEM_ADDR(sfr) < (@as(c_int, 0x40) + __SFR_OFFSET);
}
pub inline fn _SFR_ADDR(sfr: anytype) @TypeOf(_SFR_MEM_ADDR(sfr)) {
    _ = &sfr;
    return _SFR_MEM_ADDR(sfr);
}
pub inline fn _SFR_BYTE(sfr: anytype) @TypeOf(_MMIO_BYTE(_SFR_ADDR(sfr))) {
    _ = &sfr;
    return _MMIO_BYTE(_SFR_ADDR(sfr));
}
pub inline fn _SFR_WORD(sfr: anytype) @TypeOf(_MMIO_WORD(_SFR_ADDR(sfr))) {
    _ = &sfr;
    return _MMIO_WORD(_SFR_ADDR(sfr));
}
pub inline fn _SFR_DWORD(sfr: anytype) @TypeOf(_MMIO_DWORD(_SFR_ADDR(sfr))) {
    _ = &sfr;
    return _MMIO_DWORD(_SFR_ADDR(sfr));
}
pub inline fn _BV(bit: anytype) @TypeOf(@as(c_int, 1) << bit) {
    _ = &bit;
    return @as(c_int, 1) << bit;
}
pub const _VECTOR = @compileError("unable to translate macro: undefined identifier `__vector_`");
// C:\zig-data\avr\avrio_zig\src\libzig\atmega328p\..\..\libc/avr/sfr_defs.h:213:9
pub inline fn bit_is_set(sfr: anytype, bit: anytype) @TypeOf(_SFR_BYTE(sfr) & _BV(bit)) {
    _ = &sfr;
    _ = &bit;
    return _SFR_BYTE(sfr) & _BV(bit);
}
pub inline fn bit_is_clear(sfr: anytype, bit: anytype) @TypeOf(!((_SFR_BYTE(sfr) & _BV(bit)) != 0)) {
    _ = &sfr;
    _ = &bit;
    return !((_SFR_BYTE(sfr) & _BV(bit)) != 0);
}
pub const loop_until_bit_is_set = @compileError("unable to translate C expr: unexpected token 'do'");
// C:\zig-data\avr\avrio_zig\src\libzig\atmega328p\..\..\libc/avr/sfr_defs.h:254:9
pub const loop_until_bit_is_clear = @compileError("unable to translate C expr: unexpected token 'do'");
// C:\zig-data\avr\avrio_zig\src\libzig\atmega328p\..\..\libc/avr/sfr_defs.h:263:9
pub const _AVR_IOXXX_H_ = "iom328p.h";
pub const _AVR_IOM328P_H_ = @as(c_int, 1);
pub const PINB = _SFR_IO8(@as(c_int, 0x03));
pub const PINB0 = @as(c_int, 0);
pub const PINB1 = @as(c_int, 1);
pub const PINB2 = @as(c_int, 2);
pub const PINB3 = @as(c_int, 3);
pub const PINB4 = @as(c_int, 4);
pub const PINB5 = @as(c_int, 5);
pub const PINB6 = @as(c_int, 6);
pub const PINB7 = @as(c_int, 7);
pub const DDRB = _SFR_IO8(@as(c_int, 0x04));
pub const DDB0 = @as(c_int, 0);
pub const DDB1 = @as(c_int, 1);
pub const DDB2 = @as(c_int, 2);
pub const DDB3 = @as(c_int, 3);
pub const DDB4 = @as(c_int, 4);
pub const DDB5 = @as(c_int, 5);
pub const DDB6 = @as(c_int, 6);
pub const DDB7 = @as(c_int, 7);
pub const PORTB = _SFR_IO8(@as(c_int, 0x05));
pub const PORTB0 = @as(c_int, 0);
pub const PORTB1 = @as(c_int, 1);
pub const PORTB2 = @as(c_int, 2);
pub const PORTB3 = @as(c_int, 3);
pub const PORTB4 = @as(c_int, 4);
pub const PORTB5 = @as(c_int, 5);
pub const PORTB6 = @as(c_int, 6);
pub const PORTB7 = @as(c_int, 7);
pub const PINC = _SFR_IO8(@as(c_int, 0x06));
pub const PINC0 = @as(c_int, 0);
pub const PINC1 = @as(c_int, 1);
pub const PINC2 = @as(c_int, 2);
pub const PINC3 = @as(c_int, 3);
pub const PINC4 = @as(c_int, 4);
pub const PINC5 = @as(c_int, 5);
pub const PINC6 = @as(c_int, 6);
pub const DDRC = _SFR_IO8(@as(c_int, 0x07));
pub const DDC0 = @as(c_int, 0);
pub const DDC1 = @as(c_int, 1);
pub const DDC2 = @as(c_int, 2);
pub const DDC3 = @as(c_int, 3);
pub const DDC4 = @as(c_int, 4);
pub const DDC5 = @as(c_int, 5);
pub const DDC6 = @as(c_int, 6);
pub const PORTC = _SFR_IO8(@as(c_int, 0x08));
pub const PORTC0 = @as(c_int, 0);
pub const PORTC1 = @as(c_int, 1);
pub const PORTC2 = @as(c_int, 2);
pub const PORTC3 = @as(c_int, 3);
pub const PORTC4 = @as(c_int, 4);
pub const PORTC5 = @as(c_int, 5);
pub const PORTC6 = @as(c_int, 6);
pub const PIND = _SFR_IO8(@as(c_int, 0x09));
pub const PIND0 = @as(c_int, 0);
pub const PIND1 = @as(c_int, 1);
pub const PIND2 = @as(c_int, 2);
pub const PIND3 = @as(c_int, 3);
pub const PIND4 = @as(c_int, 4);
pub const PIND5 = @as(c_int, 5);
pub const PIND6 = @as(c_int, 6);
pub const PIND7 = @as(c_int, 7);
pub const DDRD = _SFR_IO8(@as(c_int, 0x0A));
pub const DDD0 = @as(c_int, 0);
pub const DDD1 = @as(c_int, 1);
pub const DDD2 = @as(c_int, 2);
pub const DDD3 = @as(c_int, 3);
pub const DDD4 = @as(c_int, 4);
pub const DDD5 = @as(c_int, 5);
pub const DDD6 = @as(c_int, 6);
pub const DDD7 = @as(c_int, 7);
pub const PORTD = _SFR_IO8(@as(c_int, 0x0B));
pub const PORTD0 = @as(c_int, 0);
pub const PORTD1 = @as(c_int, 1);
pub const PORTD2 = @as(c_int, 2);
pub const PORTD3 = @as(c_int, 3);
pub const PORTD4 = @as(c_int, 4);
pub const PORTD5 = @as(c_int, 5);
pub const PORTD6 = @as(c_int, 6);
pub const PORTD7 = @as(c_int, 7);
pub const TIFR0 = _SFR_IO8(@as(c_int, 0x15));
pub const TOV0 = @as(c_int, 0);
pub const OCF0A = @as(c_int, 1);
pub const OCF0B = @as(c_int, 2);
pub const TIFR1 = _SFR_IO8(@as(c_int, 0x16));
pub const TOV1 = @as(c_int, 0);
pub const OCF1A = @as(c_int, 1);
pub const OCF1B = @as(c_int, 2);
pub const ICF1 = @as(c_int, 5);
pub const TIFR2 = _SFR_IO8(@as(c_int, 0x17));
pub const TOV2 = @as(c_int, 0);
pub const OCF2A = @as(c_int, 1);
pub const OCF2B = @as(c_int, 2);
pub const PCIFR = _SFR_IO8(@as(c_int, 0x1B));
pub const PCIF0 = @as(c_int, 0);
pub const PCIF1 = @as(c_int, 1);
pub const PCIF2 = @as(c_int, 2);
pub const EIFR = _SFR_IO8(@as(c_int, 0x1C));
pub const INTF0 = @as(c_int, 0);
pub const INTF1 = @as(c_int, 1);
pub const EIMSK = _SFR_IO8(@as(c_int, 0x1D));
pub const INT0 = @as(c_int, 0);
pub const INT1 = @as(c_int, 1);
pub const GPIOR0 = _SFR_IO8(@as(c_int, 0x1E));
pub const GPIOR00 = @as(c_int, 0);
pub const GPIOR01 = @as(c_int, 1);
pub const GPIOR02 = @as(c_int, 2);
pub const GPIOR03 = @as(c_int, 3);
pub const GPIOR04 = @as(c_int, 4);
pub const GPIOR05 = @as(c_int, 5);
pub const GPIOR06 = @as(c_int, 6);
pub const GPIOR07 = @as(c_int, 7);
pub const EECR = _SFR_IO8(@as(c_int, 0x1F));
pub const EERE = @as(c_int, 0);
pub const EEPE = @as(c_int, 1);
pub const EEMPE = @as(c_int, 2);
pub const EERIE = @as(c_int, 3);
pub const EEPM0 = @as(c_int, 4);
pub const EEPM1 = @as(c_int, 5);
pub const EEDR = _SFR_IO8(@as(c_int, 0x20));
pub const EEDR0 = @as(c_int, 0);
pub const EEDR1 = @as(c_int, 1);
pub const EEDR2 = @as(c_int, 2);
pub const EEDR3 = @as(c_int, 3);
pub const EEDR4 = @as(c_int, 4);
pub const EEDR5 = @as(c_int, 5);
pub const EEDR6 = @as(c_int, 6);
pub const EEDR7 = @as(c_int, 7);
pub const EEAR = _SFR_IO16(@as(c_int, 0x21));
pub const EEARL = _SFR_IO8(@as(c_int, 0x21));
pub const EEAR0 = @as(c_int, 0);
pub const EEAR1 = @as(c_int, 1);
pub const EEAR2 = @as(c_int, 2);
pub const EEAR3 = @as(c_int, 3);
pub const EEAR4 = @as(c_int, 4);
pub const EEAR5 = @as(c_int, 5);
pub const EEAR6 = @as(c_int, 6);
pub const EEAR7 = @as(c_int, 7);
pub const EEARH = _SFR_IO8(@as(c_int, 0x22));
pub const EEAR8 = @as(c_int, 0);
pub const EEAR9 = @as(c_int, 1);
pub const _EEPROM_REG_LOCATIONS_ = @compileError("invalid number suffix: 'F2021'");
// C:\zig-data\avr\avrio_zig\src\libzig\atmega328p\..\..\libc/avr/iom328p.h:214:9
pub const GTCCR = _SFR_IO8(@as(c_int, 0x23));
pub const PSRSYNC = @as(c_int, 0);
pub const PSRASY = @as(c_int, 1);
pub const TSM = @as(c_int, 7);
pub const TCCR0A = _SFR_IO8(@as(c_int, 0x24));
pub const WGM00 = @as(c_int, 0);
pub const WGM01 = @as(c_int, 1);
pub const COM0B0 = @as(c_int, 4);
pub const COM0B1 = @as(c_int, 5);
pub const COM0A0 = @as(c_int, 6);
pub const COM0A1 = @as(c_int, 7);
pub const TCCR0B = _SFR_IO8(@as(c_int, 0x25));
pub const CS00 = @as(c_int, 0);
pub const CS01 = @as(c_int, 1);
pub const CS02 = @as(c_int, 2);
pub const WGM02 = @as(c_int, 3);
pub const FOC0B = @as(c_int, 6);
pub const FOC0A = @as(c_int, 7);
pub const TCNT0 = _SFR_IO8(@as(c_int, 0x26));
pub const TCNT0_0 = @as(c_int, 0);
pub const TCNT0_1 = @as(c_int, 1);
pub const TCNT0_2 = @as(c_int, 2);
pub const TCNT0_3 = @as(c_int, 3);
pub const TCNT0_4 = @as(c_int, 4);
pub const TCNT0_5 = @as(c_int, 5);
pub const TCNT0_6 = @as(c_int, 6);
pub const TCNT0_7 = @as(c_int, 7);
pub const OCR0A = _SFR_IO8(@as(c_int, 0x27));
pub const OCR0A_0 = @as(c_int, 0);
pub const OCR0A_1 = @as(c_int, 1);
pub const OCR0A_2 = @as(c_int, 2);
pub const OCR0A_3 = @as(c_int, 3);
pub const OCR0A_4 = @as(c_int, 4);
pub const OCR0A_5 = @as(c_int, 5);
pub const OCR0A_6 = @as(c_int, 6);
pub const OCR0A_7 = @as(c_int, 7);
pub const OCR0B = _SFR_IO8(@as(c_int, 0x28));
pub const OCR0B_0 = @as(c_int, 0);
pub const OCR0B_1 = @as(c_int, 1);
pub const OCR0B_2 = @as(c_int, 2);
pub const OCR0B_3 = @as(c_int, 3);
pub const OCR0B_4 = @as(c_int, 4);
pub const OCR0B_5 = @as(c_int, 5);
pub const OCR0B_6 = @as(c_int, 6);
pub const OCR0B_7 = @as(c_int, 7);
pub const GPIOR1 = _SFR_IO8(@as(c_int, 0x2A));
pub const GPIOR10 = @as(c_int, 0);
pub const GPIOR11 = @as(c_int, 1);
pub const GPIOR12 = @as(c_int, 2);
pub const GPIOR13 = @as(c_int, 3);
pub const GPIOR14 = @as(c_int, 4);
pub const GPIOR15 = @as(c_int, 5);
pub const GPIOR16 = @as(c_int, 6);
pub const GPIOR17 = @as(c_int, 7);
pub const GPIOR2 = _SFR_IO8(@as(c_int, 0x2B));
pub const GPIOR20 = @as(c_int, 0);
pub const GPIOR21 = @as(c_int, 1);
pub const GPIOR22 = @as(c_int, 2);
pub const GPIOR23 = @as(c_int, 3);
pub const GPIOR24 = @as(c_int, 4);
pub const GPIOR25 = @as(c_int, 5);
pub const GPIOR26 = @as(c_int, 6);
pub const GPIOR27 = @as(c_int, 7);
pub const SPCR = _SFR_IO8(@as(c_int, 0x2C));
pub const SPR0 = @as(c_int, 0);
pub const SPR1 = @as(c_int, 1);
pub const CPHA = @as(c_int, 2);
pub const CPOL = @as(c_int, 3);
pub const MSTR = @as(c_int, 4);
pub const DORD = @as(c_int, 5);
pub const SPE = @as(c_int, 6);
pub const SPIE = @as(c_int, 7);
pub const SPSR = _SFR_IO8(@as(c_int, 0x2D));
pub const SPI2X = @as(c_int, 0);
pub const WCOL = @as(c_int, 6);
pub const SPIF = @as(c_int, 7);
pub const SPDR = _SFR_IO8(@as(c_int, 0x2E));
pub const SPDR0 = @as(c_int, 0);
pub const SPDR1 = @as(c_int, 1);
pub const SPDR2 = @as(c_int, 2);
pub const SPDR3 = @as(c_int, 3);
pub const SPDR4 = @as(c_int, 4);
pub const SPDR5 = @as(c_int, 5);
pub const SPDR6 = @as(c_int, 6);
pub const SPDR7 = @as(c_int, 7);
pub const ACSR = _SFR_IO8(@as(c_int, 0x30));
pub const ACIS0 = @as(c_int, 0);
pub const ACIS1 = @as(c_int, 1);
pub const ACIC = @as(c_int, 2);
pub const ACIE = @as(c_int, 3);
pub const ACI = @as(c_int, 4);
pub const ACO = @as(c_int, 5);
pub const ACBG = @as(c_int, 6);
pub const ACD = @as(c_int, 7);
pub const SMCR = _SFR_IO8(@as(c_int, 0x33));
pub const SE = @as(c_int, 0);
pub const SM0 = @as(c_int, 1);
pub const SM1 = @as(c_int, 2);
pub const SM2 = @as(c_int, 3);
pub const MCUSR = _SFR_IO8(@as(c_int, 0x34));
pub const PORF = @as(c_int, 0);
pub const EXTRF = @as(c_int, 1);
pub const BORF = @as(c_int, 2);
pub const WDRF = @as(c_int, 3);
pub const MCUCR = _SFR_IO8(@as(c_int, 0x35));
pub const IVCE = @as(c_int, 0);
pub const IVSEL = @as(c_int, 1);
pub const PUD = @as(c_int, 4);
pub const BODSE = @as(c_int, 5);
pub const BODS = @as(c_int, 6);
pub const SPMCSR = _SFR_IO8(@as(c_int, 0x37));
pub const SELFPRGEN = @as(c_int, 0);
pub const SPMEN = @as(c_int, 0);
pub const PGERS = @as(c_int, 1);
pub const PGWRT = @as(c_int, 2);
pub const BLBSET = @as(c_int, 3);
pub const RWWSRE = @as(c_int, 4);
pub const SIGRD = @as(c_int, 5);
pub const RWWSB = @as(c_int, 6);
pub const SPMIE = @as(c_int, 7);
pub const WDTCSR = _SFR_MEM8(@as(c_int, 0x60));
pub const WDP0 = @as(c_int, 0);
pub const WDP1 = @as(c_int, 1);
pub const WDP2 = @as(c_int, 2);
pub const WDE = @as(c_int, 3);
pub const WDCE = @as(c_int, 4);
pub const WDP3 = @as(c_int, 5);
pub const WDIE = @as(c_int, 6);
pub const WDIF = @as(c_int, 7);
pub const CLKPR = _SFR_MEM8(@as(c_int, 0x61));
pub const CLKPS0 = @as(c_int, 0);
pub const CLKPS1 = @as(c_int, 1);
pub const CLKPS2 = @as(c_int, 2);
pub const CLKPS3 = @as(c_int, 3);
pub const CLKPCE = @as(c_int, 7);
pub const PRR = _SFR_MEM8(@as(c_int, 0x64));
pub const PRADC = @as(c_int, 0);
pub const PRUSART0 = @as(c_int, 1);
pub const PRSPI = @as(c_int, 2);
pub const PRTIM1 = @as(c_int, 3);
pub const PRTIM0 = @as(c_int, 5);
pub const PRTIM2 = @as(c_int, 6);
pub const PRTWI = @as(c_int, 7);
pub const __AVR_HAVE_PRR = ((((((@as(c_int, 1) << PRADC) | (@as(c_int, 1) << PRUSART0)) | (@as(c_int, 1) << PRSPI)) | (@as(c_int, 1) << PRTIM1)) | (@as(c_int, 1) << PRTIM0)) | (@as(c_int, 1) << PRTIM2)) | (@as(c_int, 1) << PRTWI);
pub const __AVR_HAVE_PRR_PRADC = "";
pub const __AVR_HAVE_PRR_PRUSART0 = "";
pub const __AVR_HAVE_PRR_PRSPI = "";
pub const __AVR_HAVE_PRR_PRTIM1 = "";
pub const __AVR_HAVE_PRR_PRTIM0 = "";
pub const __AVR_HAVE_PRR_PRTIM2 = "";
pub const __AVR_HAVE_PRR_PRTWI = "";
pub const OSCCAL = _SFR_MEM8(@as(c_int, 0x66));
pub const CAL0 = @as(c_int, 0);
pub const CAL1 = @as(c_int, 1);
pub const CAL2 = @as(c_int, 2);
pub const CAL3 = @as(c_int, 3);
pub const CAL4 = @as(c_int, 4);
pub const CAL5 = @as(c_int, 5);
pub const CAL6 = @as(c_int, 6);
pub const CAL7 = @as(c_int, 7);
pub const PCICR = _SFR_MEM8(@as(c_int, 0x68));
pub const PCIE0 = @as(c_int, 0);
pub const PCIE1 = @as(c_int, 1);
pub const PCIE2 = @as(c_int, 2);
pub const EICRA = _SFR_MEM8(@as(c_int, 0x69));
pub const ISC00 = @as(c_int, 0);
pub const ISC01 = @as(c_int, 1);
pub const ISC10 = @as(c_int, 2);
pub const ISC11 = @as(c_int, 3);
pub const PCMSK0 = _SFR_MEM8(@as(c_int, 0x6B));
pub const PCINT0 = @as(c_int, 0);
pub const PCINT1 = @as(c_int, 1);
pub const PCINT2 = @as(c_int, 2);
pub const PCINT3 = @as(c_int, 3);
pub const PCINT4 = @as(c_int, 4);
pub const PCINT5 = @as(c_int, 5);
pub const PCINT6 = @as(c_int, 6);
pub const PCINT7 = @as(c_int, 7);
pub const PCMSK1 = _SFR_MEM8(@as(c_int, 0x6C));
pub const PCINT8 = @as(c_int, 0);
pub const PCINT9 = @as(c_int, 1);
pub const PCINT10 = @as(c_int, 2);
pub const PCINT11 = @as(c_int, 3);
pub const PCINT12 = @as(c_int, 4);
pub const PCINT13 = @as(c_int, 5);
pub const PCINT14 = @as(c_int, 6);
pub const PCMSK2 = _SFR_MEM8(@as(c_int, 0x6D));
pub const PCINT16 = @as(c_int, 0);
pub const PCINT17 = @as(c_int, 1);
pub const PCINT18 = @as(c_int, 2);
pub const PCINT19 = @as(c_int, 3);
pub const PCINT20 = @as(c_int, 4);
pub const PCINT21 = @as(c_int, 5);
pub const PCINT22 = @as(c_int, 6);
pub const PCINT23 = @as(c_int, 7);
pub const TIMSK0 = _SFR_MEM8(@as(c_int, 0x6E));
pub const TOIE0 = @as(c_int, 0);
pub const OCIE0A = @as(c_int, 1);
pub const OCIE0B = @as(c_int, 2);
pub const TIMSK1 = _SFR_MEM8(@as(c_int, 0x6F));
pub const TOIE1 = @as(c_int, 0);
pub const OCIE1A = @as(c_int, 1);
pub const OCIE1B = @as(c_int, 2);
pub const ICIE1 = @as(c_int, 5);
pub const TIMSK2 = _SFR_MEM8(@as(c_int, 0x70));
pub const TOIE2 = @as(c_int, 0);
pub const OCIE2A = @as(c_int, 1);
pub const OCIE2B = @as(c_int, 2);
pub const ADC = _SFR_MEM16(@as(c_int, 0x78));
pub const ADCW = _SFR_MEM16(@as(c_int, 0x78));
pub const ADCL = _SFR_MEM8(@as(c_int, 0x78));
pub const ADCL0 = @as(c_int, 0);
pub const ADCL1 = @as(c_int, 1);
pub const ADCL2 = @as(c_int, 2);
pub const ADCL3 = @as(c_int, 3);
pub const ADCL4 = @as(c_int, 4);
pub const ADCL5 = @as(c_int, 5);
pub const ADCL6 = @as(c_int, 6);
pub const ADCL7 = @as(c_int, 7);
pub const ADCH = _SFR_MEM8(@as(c_int, 0x79));
pub const ADCH0 = @as(c_int, 0);
pub const ADCH1 = @as(c_int, 1);
pub const ADCH2 = @as(c_int, 2);
pub const ADCH3 = @as(c_int, 3);
pub const ADCH4 = @as(c_int, 4);
pub const ADCH5 = @as(c_int, 5);
pub const ADCH6 = @as(c_int, 6);
pub const ADCH7 = @as(c_int, 7);
pub const ADCSRA = _SFR_MEM8(@as(c_int, 0x7A));
pub const ADPS0 = @as(c_int, 0);
pub const ADPS1 = @as(c_int, 1);
pub const ADPS2 = @as(c_int, 2);
pub const ADIE = @as(c_int, 3);
pub const ADIF = @as(c_int, 4);
pub const ADATE = @as(c_int, 5);
pub const ADSC = @as(c_int, 6);
pub const ADEN = @as(c_int, 7);
pub const ADCSRB = _SFR_MEM8(@as(c_int, 0x7B));
pub const ADTS0 = @as(c_int, 0);
pub const ADTS1 = @as(c_int, 1);
pub const ADTS2 = @as(c_int, 2);
pub const ACME = @as(c_int, 6);
pub const ADMUX = _SFR_MEM8(@as(c_int, 0x7C));
pub const MUX0 = @as(c_int, 0);
pub const MUX1 = @as(c_int, 1);
pub const MUX2 = @as(c_int, 2);
pub const MUX3 = @as(c_int, 3);
pub const ADLAR = @as(c_int, 5);
pub const REFS0 = @as(c_int, 6);
pub const REFS1 = @as(c_int, 7);
pub const DIDR0 = _SFR_MEM8(@as(c_int, 0x7E));
pub const ADC0D = @as(c_int, 0);
pub const ADC1D = @as(c_int, 1);
pub const ADC2D = @as(c_int, 2);
pub const ADC3D = @as(c_int, 3);
pub const ADC4D = @as(c_int, 4);
pub const ADC5D = @as(c_int, 5);
pub const DIDR1 = _SFR_MEM8(@as(c_int, 0x7F));
pub const AIN0D = @as(c_int, 0);
pub const AIN1D = @as(c_int, 1);
pub const TCCR1A = _SFR_MEM8(@as(c_int, 0x80));
pub const WGM10 = @as(c_int, 0);
pub const WGM11 = @as(c_int, 1);
pub const COM1B0 = @as(c_int, 4);
pub const COM1B1 = @as(c_int, 5);
pub const COM1A0 = @as(c_int, 6);
pub const COM1A1 = @as(c_int, 7);
pub const TCCR1B = _SFR_MEM8(@as(c_int, 0x81));
pub const CS10 = @as(c_int, 0);
pub const CS11 = @as(c_int, 1);
pub const CS12 = @as(c_int, 2);
pub const WGM12 = @as(c_int, 3);
pub const WGM13 = @as(c_int, 4);
pub const ICES1 = @as(c_int, 6);
pub const ICNC1 = @as(c_int, 7);
pub const TCCR1C = _SFR_MEM8(@as(c_int, 0x82));
pub const FOC1B = @as(c_int, 6);
pub const FOC1A = @as(c_int, 7);
pub const TCNT1 = _SFR_MEM16(@as(c_int, 0x84));
pub const TCNT1L = _SFR_MEM8(@as(c_int, 0x84));
pub const TCNT1L0 = @as(c_int, 0);
pub const TCNT1L1 = @as(c_int, 1);
pub const TCNT1L2 = @as(c_int, 2);
pub const TCNT1L3 = @as(c_int, 3);
pub const TCNT1L4 = @as(c_int, 4);
pub const TCNT1L5 = @as(c_int, 5);
pub const TCNT1L6 = @as(c_int, 6);
pub const TCNT1L7 = @as(c_int, 7);
pub const TCNT1H = _SFR_MEM8(@as(c_int, 0x85));
pub const TCNT1H0 = @as(c_int, 0);
pub const TCNT1H1 = @as(c_int, 1);
pub const TCNT1H2 = @as(c_int, 2);
pub const TCNT1H3 = @as(c_int, 3);
pub const TCNT1H4 = @as(c_int, 4);
pub const TCNT1H5 = @as(c_int, 5);
pub const TCNT1H6 = @as(c_int, 6);
pub const TCNT1H7 = @as(c_int, 7);
pub const ICR1 = _SFR_MEM16(@as(c_int, 0x86));
pub const ICR1L = _SFR_MEM8(@as(c_int, 0x86));
pub const ICR1L0 = @as(c_int, 0);
pub const ICR1L1 = @as(c_int, 1);
pub const ICR1L2 = @as(c_int, 2);
pub const ICR1L3 = @as(c_int, 3);
pub const ICR1L4 = @as(c_int, 4);
pub const ICR1L5 = @as(c_int, 5);
pub const ICR1L6 = @as(c_int, 6);
pub const ICR1L7 = @as(c_int, 7);
pub const ICR1H = _SFR_MEM8(@as(c_int, 0x87));
pub const ICR1H0 = @as(c_int, 0);
pub const ICR1H1 = @as(c_int, 1);
pub const ICR1H2 = @as(c_int, 2);
pub const ICR1H3 = @as(c_int, 3);
pub const ICR1H4 = @as(c_int, 4);
pub const ICR1H5 = @as(c_int, 5);
pub const ICR1H6 = @as(c_int, 6);
pub const ICR1H7 = @as(c_int, 7);
pub const OCR1A = _SFR_MEM16(@as(c_int, 0x88));
pub const OCR1AL = _SFR_MEM8(@as(c_int, 0x88));
pub const OCR1AL0 = @as(c_int, 0);
pub const OCR1AL1 = @as(c_int, 1);
pub const OCR1AL2 = @as(c_int, 2);
pub const OCR1AL3 = @as(c_int, 3);
pub const OCR1AL4 = @as(c_int, 4);
pub const OCR1AL5 = @as(c_int, 5);
pub const OCR1AL6 = @as(c_int, 6);
pub const OCR1AL7 = @as(c_int, 7);
pub const OCR1AH = _SFR_MEM8(@as(c_int, 0x89));
pub const OCR1AH0 = @as(c_int, 0);
pub const OCR1AH1 = @as(c_int, 1);
pub const OCR1AH2 = @as(c_int, 2);
pub const OCR1AH3 = @as(c_int, 3);
pub const OCR1AH4 = @as(c_int, 4);
pub const OCR1AH5 = @as(c_int, 5);
pub const OCR1AH6 = @as(c_int, 6);
pub const OCR1AH7 = @as(c_int, 7);
pub const OCR1B = _SFR_MEM16(@as(c_int, 0x8A));
pub const OCR1BL = _SFR_MEM8(@as(c_int, 0x8A));
pub const OCR1BL0 = @as(c_int, 0);
pub const OCR1BL1 = @as(c_int, 1);
pub const OCR1BL2 = @as(c_int, 2);
pub const OCR1BL3 = @as(c_int, 3);
pub const OCR1BL4 = @as(c_int, 4);
pub const OCR1BL5 = @as(c_int, 5);
pub const OCR1BL6 = @as(c_int, 6);
pub const OCR1BL7 = @as(c_int, 7);
pub const OCR1BH = _SFR_MEM8(@as(c_int, 0x8B));
pub const OCR1BH0 = @as(c_int, 0);
pub const OCR1BH1 = @as(c_int, 1);
pub const OCR1BH2 = @as(c_int, 2);
pub const OCR1BH3 = @as(c_int, 3);
pub const OCR1BH4 = @as(c_int, 4);
pub const OCR1BH5 = @as(c_int, 5);
pub const OCR1BH6 = @as(c_int, 6);
pub const OCR1BH7 = @as(c_int, 7);
pub const TCCR2A = _SFR_MEM8(@as(c_int, 0xB0));
pub const WGM20 = @as(c_int, 0);
pub const WGM21 = @as(c_int, 1);
pub const COM2B0 = @as(c_int, 4);
pub const COM2B1 = @as(c_int, 5);
pub const COM2A0 = @as(c_int, 6);
pub const COM2A1 = @as(c_int, 7);
pub const TCCR2B = _SFR_MEM8(@as(c_int, 0xB1));
pub const CS20 = @as(c_int, 0);
pub const CS21 = @as(c_int, 1);
pub const CS22 = @as(c_int, 2);
pub const WGM22 = @as(c_int, 3);
pub const FOC2B = @as(c_int, 6);
pub const FOC2A = @as(c_int, 7);
pub const TCNT2 = _SFR_MEM8(@as(c_int, 0xB2));
pub const TCNT2_0 = @as(c_int, 0);
pub const TCNT2_1 = @as(c_int, 1);
pub const TCNT2_2 = @as(c_int, 2);
pub const TCNT2_3 = @as(c_int, 3);
pub const TCNT2_4 = @as(c_int, 4);
pub const TCNT2_5 = @as(c_int, 5);
pub const TCNT2_6 = @as(c_int, 6);
pub const TCNT2_7 = @as(c_int, 7);
pub const OCR2A = _SFR_MEM8(@as(c_int, 0xB3));
pub const OCR2_0 = @as(c_int, 0);
pub const OCR2_1 = @as(c_int, 1);
pub const OCR2_2 = @as(c_int, 2);
pub const OCR2_3 = @as(c_int, 3);
pub const OCR2_4 = @as(c_int, 4);
pub const OCR2_5 = @as(c_int, 5);
pub const OCR2_6 = @as(c_int, 6);
pub const OCR2_7 = @as(c_int, 7);
pub const OCR2B = _SFR_MEM8(@as(c_int, 0xB4));
pub const ASSR = _SFR_MEM8(@as(c_int, 0xB6));
pub const TCR2BUB = @as(c_int, 0);
pub const TCR2AUB = @as(c_int, 1);
pub const OCR2BUB = @as(c_int, 2);
pub const OCR2AUB = @as(c_int, 3);
pub const TCN2UB = @as(c_int, 4);
pub const AS2 = @as(c_int, 5);
pub const EXCLK = @as(c_int, 6);
pub const TWBR = _SFR_MEM8(@as(c_int, 0xB8));
pub const TWBR0 = @as(c_int, 0);
pub const TWBR1 = @as(c_int, 1);
pub const TWBR2 = @as(c_int, 2);
pub const TWBR3 = @as(c_int, 3);
pub const TWBR4 = @as(c_int, 4);
pub const TWBR5 = @as(c_int, 5);
pub const TWBR6 = @as(c_int, 6);
pub const TWBR7 = @as(c_int, 7);
pub const TWSR = _SFR_MEM8(@as(c_int, 0xB9));
pub const TWPS0 = @as(c_int, 0);
pub const TWPS1 = @as(c_int, 1);
pub const TWS3 = @as(c_int, 3);
pub const TWS4 = @as(c_int, 4);
pub const TWS5 = @as(c_int, 5);
pub const TWS6 = @as(c_int, 6);
pub const TWS7 = @as(c_int, 7);
pub const TWAR = _SFR_MEM8(@as(c_int, 0xBA));
pub const TWGCE = @as(c_int, 0);
pub const TWA0 = @as(c_int, 1);
pub const TWA1 = @as(c_int, 2);
pub const TWA2 = @as(c_int, 3);
pub const TWA3 = @as(c_int, 4);
pub const TWA4 = @as(c_int, 5);
pub const TWA5 = @as(c_int, 6);
pub const TWA6 = @as(c_int, 7);
pub const TWDR = _SFR_MEM8(@as(c_int, 0xBB));
pub const TWD0 = @as(c_int, 0);
pub const TWD1 = @as(c_int, 1);
pub const TWD2 = @as(c_int, 2);
pub const TWD3 = @as(c_int, 3);
pub const TWD4 = @as(c_int, 4);
pub const TWD5 = @as(c_int, 5);
pub const TWD6 = @as(c_int, 6);
pub const TWD7 = @as(c_int, 7);
pub const TWCR = _SFR_MEM8(@as(c_int, 0xBC));
pub const TWIE = @as(c_int, 0);
pub const TWEN = @as(c_int, 2);
pub const TWWC = @as(c_int, 3);
pub const TWSTO = @as(c_int, 4);
pub const TWSTA = @as(c_int, 5);
pub const TWEA = @as(c_int, 6);
pub const TWINT = @as(c_int, 7);
pub const TWAMR = _SFR_MEM8(@as(c_int, 0xBD));
pub const TWAM0 = @as(c_int, 0);
pub const TWAM1 = @as(c_int, 1);
pub const TWAM2 = @as(c_int, 2);
pub const TWAM3 = @as(c_int, 3);
pub const TWAM4 = @as(c_int, 4);
pub const TWAM5 = @as(c_int, 5);
pub const TWAM6 = @as(c_int, 6);
pub const UCSR0A = _SFR_MEM8(@as(c_int, 0xC0));
pub const MPCM0 = @as(c_int, 0);
pub const U2X0 = @as(c_int, 1);
pub const UPE0 = @as(c_int, 2);
pub const DOR0 = @as(c_int, 3);
pub const FE0 = @as(c_int, 4);
pub const UDRE0 = @as(c_int, 5);
pub const TXC0 = @as(c_int, 6);
pub const RXC0 = @as(c_int, 7);
pub const UCSR0B = _SFR_MEM8(@as(c_int, 0xC1));
pub const TXB80 = @as(c_int, 0);
pub const RXB80 = @as(c_int, 1);
pub const UCSZ02 = @as(c_int, 2);
pub const TXEN0 = @as(c_int, 3);
pub const RXEN0 = @as(c_int, 4);
pub const UDRIE0 = @as(c_int, 5);
pub const TXCIE0 = @as(c_int, 6);
pub const RXCIE0 = @as(c_int, 7);
pub const UCSR0C = _SFR_MEM8(@as(c_int, 0xC2));
pub const UCPOL0 = @as(c_int, 0);
pub const UCSZ00 = @as(c_int, 1);
pub const UCPHA0 = @as(c_int, 1);
pub const UCSZ01 = @as(c_int, 2);
pub const UDORD0 = @as(c_int, 2);
pub const USBS0 = @as(c_int, 3);
pub const UPM00 = @as(c_int, 4);
pub const UPM01 = @as(c_int, 5);
pub const UMSEL00 = @as(c_int, 6);
pub const UMSEL01 = @as(c_int, 7);
pub const UBRR0 = _SFR_MEM16(@as(c_int, 0xC4));
pub const UBRR0L = _SFR_MEM8(@as(c_int, 0xC4));
pub const UBRR0_0 = @as(c_int, 0);
pub const UBRR0_1 = @as(c_int, 1);
pub const UBRR0_2 = @as(c_int, 2);
pub const UBRR0_3 = @as(c_int, 3);
pub const UBRR0_4 = @as(c_int, 4);
pub const UBRR0_5 = @as(c_int, 5);
pub const UBRR0_6 = @as(c_int, 6);
pub const UBRR0_7 = @as(c_int, 7);
pub const UBRR0H = _SFR_MEM8(@as(c_int, 0xC5));
pub const UBRR0_8 = @as(c_int, 0);
pub const UBRR0_9 = @as(c_int, 1);
pub const UBRR0_10 = @as(c_int, 2);
pub const UBRR0_11 = @as(c_int, 3);
pub const UDR0 = _SFR_MEM8(@as(c_int, 0xC6));
pub const UDR0_0 = @as(c_int, 0);
pub const UDR0_1 = @as(c_int, 1);
pub const UDR0_2 = @as(c_int, 2);
pub const UDR0_3 = @as(c_int, 3);
pub const UDR0_4 = @as(c_int, 4);
pub const UDR0_5 = @as(c_int, 5);
pub const UDR0_6 = @as(c_int, 6);
pub const UDR0_7 = @as(c_int, 7);
pub const INT0_vect_num = @as(c_int, 1);
pub const INT0_vect = _VECTOR(@as(c_int, 1));
pub const INT1_vect_num = @as(c_int, 2);
pub const INT1_vect = _VECTOR(@as(c_int, 2));
pub const PCINT0_vect_num = @as(c_int, 3);
pub const PCINT0_vect = _VECTOR(@as(c_int, 3));
pub const PCINT1_vect_num = @as(c_int, 4);
pub const PCINT1_vect = _VECTOR(@as(c_int, 4));
pub const PCINT2_vect_num = @as(c_int, 5);
pub const PCINT2_vect = _VECTOR(@as(c_int, 5));
pub const WDT_vect_num = @as(c_int, 6);
pub const WDT_vect = _VECTOR(@as(c_int, 6));
pub const TIMER2_COMPA_vect_num = @as(c_int, 7);
pub const TIMER2_COMPA_vect = _VECTOR(@as(c_int, 7));
pub const TIMER2_COMPB_vect_num = @as(c_int, 8);
pub const TIMER2_COMPB_vect = _VECTOR(@as(c_int, 8));
pub const TIMER2_OVF_vect_num = @as(c_int, 9);
pub const TIMER2_OVF_vect = _VECTOR(@as(c_int, 9));
pub const TIMER1_CAPT_vect_num = @as(c_int, 10);
pub const TIMER1_CAPT_vect = _VECTOR(@as(c_int, 10));
pub const TIMER1_COMPA_vect_num = @as(c_int, 11);
pub const TIMER1_COMPA_vect = _VECTOR(@as(c_int, 11));
pub const TIMER1_COMPB_vect_num = @as(c_int, 12);
pub const TIMER1_COMPB_vect = _VECTOR(@as(c_int, 12));
pub const TIMER1_OVF_vect_num = @as(c_int, 13);
pub const TIMER1_OVF_vect = _VECTOR(@as(c_int, 13));
pub const TIMER0_COMPA_vect_num = @as(c_int, 14);
pub const TIMER0_COMPA_vect = _VECTOR(@as(c_int, 14));
pub const TIMER0_COMPB_vect_num = @as(c_int, 15);
pub const TIMER0_COMPB_vect = _VECTOR(@as(c_int, 15));
pub const TIMER0_OVF_vect_num = @as(c_int, 16);
pub const TIMER0_OVF_vect = _VECTOR(@as(c_int, 16));
pub const SPI_STC_vect_num = @as(c_int, 17);
pub const SPI_STC_vect = _VECTOR(@as(c_int, 17));
pub const USART_RX_vect_num = @as(c_int, 18);
pub const USART_RX_vect = _VECTOR(@as(c_int, 18));
pub const USART_UDRE_vect_num = @as(c_int, 19);
pub const USART_UDRE_vect = _VECTOR(@as(c_int, 19));
pub const USART_TX_vect_num = @as(c_int, 20);
pub const USART_TX_vect = _VECTOR(@as(c_int, 20));
pub const ADC_vect_num = @as(c_int, 21);
pub const ADC_vect = _VECTOR(@as(c_int, 21));
pub const EE_READY_vect_num = @as(c_int, 22);
pub const EE_READY_vect = _VECTOR(@as(c_int, 22));
pub const ANALOG_COMP_vect_num = @as(c_int, 23);
pub const ANALOG_COMP_vect = _VECTOR(@as(c_int, 23));
pub const TWI_vect_num = @as(c_int, 24);
pub const TWI_vect = _VECTOR(@as(c_int, 24));
pub const SPM_READY_vect_num = @as(c_int, 25);
pub const SPM_READY_vect = _VECTOR(@as(c_int, 25));
pub const _VECTORS_SIZE = @as(c_int, 26) * @as(c_int, 4);
pub const SPM_PAGESIZE = @as(c_int, 128);
pub const RAMSTART = @as(c_int, 0x100);
pub const RAMEND = @as(c_int, 0x8FF);
pub const XRAMSIZE = @as(c_int, 0);
pub const XRAMEND = RAMEND;
pub const E2END = @as(c_int, 0x3FF);
pub const E2PAGESIZE = @as(c_int, 4);
pub const FLASHEND = @as(c_int, 0x7FFF);
pub const FUSE_MEMORY_SIZE = @as(c_int, 3);
pub const FUSE_CKSEL0 = @import("std").zig.c_translation.cast(u8, ~_BV(@as(c_int, 0)));
pub const FUSE_CKSEL1 = @import("std").zig.c_translation.cast(u8, ~_BV(@as(c_int, 1)));
pub const FUSE_CKSEL2 = @import("std").zig.c_translation.cast(u8, ~_BV(@as(c_int, 2)));
pub const FUSE_CKSEL3 = @import("std").zig.c_translation.cast(u8, ~_BV(@as(c_int, 3)));
pub const FUSE_SUT0 = @import("std").zig.c_translation.cast(u8, ~_BV(@as(c_int, 4)));
pub const FUSE_SUT1 = @import("std").zig.c_translation.cast(u8, ~_BV(@as(c_int, 5)));
pub const FUSE_CKOUT = @import("std").zig.c_translation.cast(u8, ~_BV(@as(c_int, 6)));
pub const FUSE_CKDIV8 = @import("std").zig.c_translation.cast(u8, ~_BV(@as(c_int, 7)));
pub const LFUSE_DEFAULT = (((FUSE_CKSEL0 & FUSE_CKSEL2) & FUSE_CKSEL3) & FUSE_SUT0) & FUSE_CKDIV8;
pub const FUSE_BOOTRST = @import("std").zig.c_translation.cast(u8, ~_BV(@as(c_int, 0)));
pub const FUSE_BOOTSZ0 = @import("std").zig.c_translation.cast(u8, ~_BV(@as(c_int, 1)));
pub const FUSE_BOOTSZ1 = @import("std").zig.c_translation.cast(u8, ~_BV(@as(c_int, 2)));
pub const FUSE_EESAVE = @import("std").zig.c_translation.cast(u8, ~_BV(@as(c_int, 3)));
pub const FUSE_WDTON = @import("std").zig.c_translation.cast(u8, ~_BV(@as(c_int, 4)));
pub const FUSE_SPIEN = @import("std").zig.c_translation.cast(u8, ~_BV(@as(c_int, 5)));
pub const FUSE_DWEN = @import("std").zig.c_translation.cast(u8, ~_BV(@as(c_int, 6)));
pub const FUSE_RSTDISBL = @import("std").zig.c_translation.cast(u8, ~_BV(@as(c_int, 7)));
pub const HFUSE_DEFAULT = (FUSE_BOOTSZ0 & FUSE_BOOTSZ1) & FUSE_SPIEN;
pub const FUSE_BODLEVEL0 = @import("std").zig.c_translation.cast(u8, ~_BV(@as(c_int, 0)));
pub const FUSE_BODLEVEL1 = @import("std").zig.c_translation.cast(u8, ~_BV(@as(c_int, 1)));
pub const FUSE_BODLEVEL2 = @import("std").zig.c_translation.cast(u8, ~_BV(@as(c_int, 2)));
pub const EFUSE_DEFAULT = @as(c_int, 0xFF);
pub const __LOCK_BITS_EXIST = "";
pub const __BOOT_LOCK_BITS_0_EXIST = "";
pub const __BOOT_LOCK_BITS_1_EXIST = "";
pub const SIGNATURE_0 = @as(c_int, 0x1E);
pub const SIGNATURE_1 = @as(c_int, 0x95);
pub const SIGNATURE_2 = @as(c_int, 0x0F);
pub const SLEEP_MODE_IDLE = @as(c_int, 0x00) << @as(c_int, 1);
pub const SLEEP_MODE_ADC = @as(c_int, 0x01) << @as(c_int, 1);
pub const SLEEP_MODE_PWR_DOWN = @as(c_int, 0x02) << @as(c_int, 1);
pub const SLEEP_MODE_PWR_SAVE = @as(c_int, 0x03) << @as(c_int, 1);
pub const SLEEP_MODE_STANDBY = @as(c_int, 0x06) << @as(c_int, 1);
pub const SLEEP_MODE_EXT_STANDBY = @as(c_int, 0x07) << @as(c_int, 1);
pub const _AVR_PORTPINS_H_ = @as(c_int, 1);
pub const PORT7 = @as(c_int, 7);
pub const PORT6 = @as(c_int, 6);
pub const PORT5 = @as(c_int, 5);
pub const PORT4 = @as(c_int, 4);
pub const PORT3 = @as(c_int, 3);
pub const PORT2 = @as(c_int, 2);
pub const PORT1 = @as(c_int, 1);
pub const PORT0 = @as(c_int, 0);
pub const DD7 = @as(c_int, 7);
pub const DD6 = @as(c_int, 6);
pub const DD5 = @as(c_int, 5);
pub const DD4 = @as(c_int, 4);
pub const DD3 = @as(c_int, 3);
pub const DD2 = @as(c_int, 2);
pub const DD1 = @as(c_int, 1);
pub const DD0 = @as(c_int, 0);
pub const PIN7 = @as(c_int, 7);
pub const PIN6 = @as(c_int, 6);
pub const PIN5 = @as(c_int, 5);
pub const PIN4 = @as(c_int, 4);
pub const PIN3 = @as(c_int, 3);
pub const PIN2 = @as(c_int, 2);
pub const PIN1 = @as(c_int, 1);
pub const PIN0 = @as(c_int, 0);
pub const PB0 = PORTB0;
pub const PB1 = PORTB1;
pub const PB2 = PORTB2;
pub const PB3 = PORTB3;
pub const PB4 = PORTB4;
pub const PB5 = PORTB5;
pub const PB6 = PORTB6;
pub const PB7 = PORTB7;
pub const PC0 = PORTC0;
pub const PC1 = PORTC1;
pub const PC2 = PORTC2;
pub const PC3 = PORTC3;
pub const PC4 = PORTC4;
pub const PC5 = PORTC5;
pub const PC6 = PORTC6;
pub const PD0 = PORTD0;
pub const PD1 = PORTD1;
pub const PD2 = PORTD2;
pub const PD3 = PORTD3;
pub const PD4 = PORTD4;
pub const PD5 = PORTD5;
pub const PD6 = PORTD6;
pub const PD7 = PORTD7;
pub const _AVR_COMMON_H = "";
pub const SPL = _SFR_IO8(@as(c_int, 0x3D));
pub const SP = _SFR_IO16(@as(c_int, 0x3D));
pub const SPH = _SFR_IO8(@as(c_int, 0x3E));
pub const SREG = _SFR_IO8(@as(c_int, 0x3F));
pub const SREG_C = @as(c_int, 0);
pub const SREG_Z = @as(c_int, 1);
pub const SREG_N = @as(c_int, 2);
pub const SREG_V = @as(c_int, 3);
pub const SREG_S = @as(c_int, 4);
pub const SREG_H = @as(c_int, 5);
pub const SREG_T = @as(c_int, 6);
pub const SREG_I = @as(c_int, 7);
pub const XL = @compileError("unable to translate macro: undefined identifier `r26`");
// C:\zig-data\avr\avrio_zig\src\libzig\atmega328p\..\..\libc/avr/common.h:215:11
pub const XH = @compileError("unable to translate macro: undefined identifier `r27`");
// C:\zig-data\avr\avrio_zig\src\libzig\atmega328p\..\..\libc/avr/common.h:216:11
pub const YL = @compileError("unable to translate macro: undefined identifier `r28`");
// C:\zig-data\avr\avrio_zig\src\libzig\atmega328p\..\..\libc/avr/common.h:217:11
pub const YH = @compileError("unable to translate macro: undefined identifier `r29`");
// C:\zig-data\avr\avrio_zig\src\libzig\atmega328p\..\..\libc/avr/common.h:218:11
pub const ZL = @compileError("unable to translate macro: undefined identifier `r30`");
// C:\zig-data\avr\avrio_zig\src\libzig\atmega328p\..\..\libc/avr/common.h:220:9
pub const ZH = @compileError("unable to translate macro: undefined identifier `r31`");
// C:\zig-data\avr\avrio_zig\src\libzig\atmega328p\..\..\libc/avr/common.h:221:9
pub const AVR_STATUS_REG = SREG;
pub const AVR_STATUS_ADDR = _SFR_IO_ADDR(SREG);
pub const AVR_STACK_POINTER_REG = SP;
pub const AVR_STACK_POINTER_ADDR = _SFR_IO_ADDR(SP);
pub const _HAVE_AVR_STACK_POINTER_HI = @as(c_int, 1);
pub const AVR_STACK_POINTER_HI_REG = SPH;
pub const AVR_STACK_POINTER_HI_ADDR = _SFR_IO_ADDR(SPH);
pub const AVR_STACK_POINTER_LO_REG = SPL;
pub const AVR_STACK_POINTER_LO_ADDR = _SFR_IO_ADDR(SPL);
pub const _AVR_VERSION_H_ = "";
pub const __AVR_LIBC_VERSION_STRING__ = "2.0.0";
pub const __AVR_LIBC_VERSION__ = @as(c_ulong, 20000);
pub const __AVR_LIBC_DATE_STRING__ = "20150208";
pub const __AVR_LIBC_DATE_ = @as(c_ulong, 20150208);
pub const __AVR_LIBC_MAJOR__ = @as(c_int, 2);
pub const __AVR_LIBC_MINOR__ = @as(c_int, 0);
pub const __AVR_LIBC_REVISION__ = @as(c_int, 0);
pub const _AVR_FUSE_H_ = @as(c_int, 1);
pub const FUSEMEM = @compileError("unable to translate macro: undefined identifier `__used__`");
// C:\zig-data\avr\avrio_zig\src\libzig\atmega328p\..\..\libc/avr/fuse.h:226:9
pub const FUSES = @compileError("unable to translate macro: undefined identifier `__fuse`");
// C:\zig-data\avr\avrio_zig\src\libzig\atmega328p\..\..\libc/avr/fuse.h:267:13
pub const _AVR_LOCK_H_ = @as(c_int, 1);
pub const LOCKMEM = @compileError("unable to translate macro: undefined identifier `__used__`");
// C:\zig-data\avr\avrio_zig\src\libzig\atmega328p\..\..\libc/avr/lock.h:190:9
pub const LOCKBITS = @compileError("unable to translate macro: undefined identifier `__lock`");
// C:\zig-data\avr\avrio_zig\src\libzig\atmega328p\..\..\libc/avr/lock.h:194:9
pub const LB_MODE_1 = @as(c_int, 0xFF);
pub const LB_MODE_2 = @as(c_int, 0xFE);
pub const LB_MODE_3 = @as(c_int, 0xFC);
pub const BLB0_MODE_1 = @as(c_int, 0xFF);
pub const BLB0_MODE_2 = @as(c_int, 0xFB);
pub const BLB0_MODE_3 = @as(c_int, 0xF3);
pub const BLB0_MODE_4 = @as(c_int, 0xF7);
pub const BLB1_MODE_1 = @as(c_int, 0xFF);
pub const BLB1_MODE_2 = @as(c_int, 0xEF);
pub const BLB1_MODE_3 = @as(c_int, 0xCF);
pub const BLB1_MODE_4 = @as(c_int, 0xDF);
pub const LOCKBITS_DEFAULT = @as(c_int, 0xFF);
pub const threadlocaleinfostruct = struct_threadlocaleinfostruct;
pub const threadmbcinfostruct = struct_threadmbcinfostruct;
pub const __lc_time_data = struct___lc_time_data;
pub const localeinfo_struct = struct_localeinfo_struct;
pub const tagLC_ID = struct_tagLC_ID;
