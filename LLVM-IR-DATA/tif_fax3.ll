; ModuleID = 'cBench/consumer_tiff2bw/src/tif_fax3.c'
source_filename = "cBench/consumer_tiff2bw/src/tif_fax3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tableentry = type { i16, i16, i16 }
%struct.TIFFFieldInfo = type { i32, i16, i16, i32, i16, i8, i8, ptr }
%struct.TIFFFaxTabEnt = type { i8, i8, i32 }
%struct.tiff = type { ptr, i32, i32, i32, i32, i32, %struct.TIFFDirectory, %struct.TIFFHeader, ptr, ptr, ptr, i32, i16, i32, i32, i32, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr }
%struct.TIFFDirectory = type { [3 x i64], i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, double, double, float, float, i16, i16, float, float, [2 x i16], [3 x ptr], [2 x i16], i16, ptr, double, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i16, ptr, ptr, [2 x i16], i16, ptr, ptr, ptr, [3 x ptr], i16, i16, [2 x i16], i32, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i32, ptr, ptr, float, ptr, ptr }
%struct.TIFFHeader = type { i16, i16, i32 }
%struct.Fax3BaseState = type { i32, i32, i32, i16, i32, i32, i32, i32, ptr, i32, ptr, ptr }
%struct.Fax3DecodeState = type { %struct.Fax3BaseState, ptr, i32, i32, i32, ptr, ptr, ptr, ptr }
%struct.Fax3EncodeState = type { %struct.Fax3BaseState, i32, i32, i32, ptr, i32, i32 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@TIFFFaxWhiteCodes = dso_local constant [109 x %struct.tableentry] [%struct.tableentry { i16 8, i16 53, i16 0 }, %struct.tableentry { i16 6, i16 7, i16 1 }, %struct.tableentry { i16 4, i16 7, i16 2 }, %struct.tableentry { i16 4, i16 8, i16 3 }, %struct.tableentry { i16 4, i16 11, i16 4 }, %struct.tableentry { i16 4, i16 12, i16 5 }, %struct.tableentry { i16 4, i16 14, i16 6 }, %struct.tableentry { i16 4, i16 15, i16 7 }, %struct.tableentry { i16 5, i16 19, i16 8 }, %struct.tableentry { i16 5, i16 20, i16 9 }, %struct.tableentry { i16 5, i16 7, i16 10 }, %struct.tableentry { i16 5, i16 8, i16 11 }, %struct.tableentry { i16 6, i16 8, i16 12 }, %struct.tableentry { i16 6, i16 3, i16 13 }, %struct.tableentry { i16 6, i16 52, i16 14 }, %struct.tableentry { i16 6, i16 53, i16 15 }, %struct.tableentry { i16 6, i16 42, i16 16 }, %struct.tableentry { i16 6, i16 43, i16 17 }, %struct.tableentry { i16 7, i16 39, i16 18 }, %struct.tableentry { i16 7, i16 12, i16 19 }, %struct.tableentry { i16 7, i16 8, i16 20 }, %struct.tableentry { i16 7, i16 23, i16 21 }, %struct.tableentry { i16 7, i16 3, i16 22 }, %struct.tableentry { i16 7, i16 4, i16 23 }, %struct.tableentry { i16 7, i16 40, i16 24 }, %struct.tableentry { i16 7, i16 43, i16 25 }, %struct.tableentry { i16 7, i16 19, i16 26 }, %struct.tableentry { i16 7, i16 36, i16 27 }, %struct.tableentry { i16 7, i16 24, i16 28 }, %struct.tableentry { i16 8, i16 2, i16 29 }, %struct.tableentry { i16 8, i16 3, i16 30 }, %struct.tableentry { i16 8, i16 26, i16 31 }, %struct.tableentry { i16 8, i16 27, i16 32 }, %struct.tableentry { i16 8, i16 18, i16 33 }, %struct.tableentry { i16 8, i16 19, i16 34 }, %struct.tableentry { i16 8, i16 20, i16 35 }, %struct.tableentry { i16 8, i16 21, i16 36 }, %struct.tableentry { i16 8, i16 22, i16 37 }, %struct.tableentry { i16 8, i16 23, i16 38 }, %struct.tableentry { i16 8, i16 40, i16 39 }, %struct.tableentry { i16 8, i16 41, i16 40 }, %struct.tableentry { i16 8, i16 42, i16 41 }, %struct.tableentry { i16 8, i16 43, i16 42 }, %struct.tableentry { i16 8, i16 44, i16 43 }, %struct.tableentry { i16 8, i16 45, i16 44 }, %struct.tableentry { i16 8, i16 4, i16 45 }, %struct.tableentry { i16 8, i16 5, i16 46 }, %struct.tableentry { i16 8, i16 10, i16 47 }, %struct.tableentry { i16 8, i16 11, i16 48 }, %struct.tableentry { i16 8, i16 82, i16 49 }, %struct.tableentry { i16 8, i16 83, i16 50 }, %struct.tableentry { i16 8, i16 84, i16 51 }, %struct.tableentry { i16 8, i16 85, i16 52 }, %struct.tableentry { i16 8, i16 36, i16 53 }, %struct.tableentry { i16 8, i16 37, i16 54 }, %struct.tableentry { i16 8, i16 88, i16 55 }, %struct.tableentry { i16 8, i16 89, i16 56 }, %struct.tableentry { i16 8, i16 90, i16 57 }, %struct.tableentry { i16 8, i16 91, i16 58 }, %struct.tableentry { i16 8, i16 74, i16 59 }, %struct.tableentry { i16 8, i16 75, i16 60 }, %struct.tableentry { i16 8, i16 50, i16 61 }, %struct.tableentry { i16 8, i16 51, i16 62 }, %struct.tableentry { i16 8, i16 52, i16 63 }, %struct.tableentry { i16 5, i16 27, i16 64 }, %struct.tableentry { i16 5, i16 18, i16 128 }, %struct.tableentry { i16 6, i16 23, i16 192 }, %struct.tableentry { i16 7, i16 55, i16 256 }, %struct.tableentry { i16 8, i16 54, i16 320 }, %struct.tableentry { i16 8, i16 55, i16 384 }, %struct.tableentry { i16 8, i16 100, i16 448 }, %struct.tableentry { i16 8, i16 101, i16 512 }, %struct.tableentry { i16 8, i16 104, i16 576 }, %struct.tableentry { i16 8, i16 103, i16 640 }, %struct.tableentry { i16 9, i16 204, i16 704 }, %struct.tableentry { i16 9, i16 205, i16 768 }, %struct.tableentry { i16 9, i16 210, i16 832 }, %struct.tableentry { i16 9, i16 211, i16 896 }, %struct.tableentry { i16 9, i16 212, i16 960 }, %struct.tableentry { i16 9, i16 213, i16 1024 }, %struct.tableentry { i16 9, i16 214, i16 1088 }, %struct.tableentry { i16 9, i16 215, i16 1152 }, %struct.tableentry { i16 9, i16 216, i16 1216 }, %struct.tableentry { i16 9, i16 217, i16 1280 }, %struct.tableentry { i16 9, i16 218, i16 1344 }, %struct.tableentry { i16 9, i16 219, i16 1408 }, %struct.tableentry { i16 9, i16 152, i16 1472 }, %struct.tableentry { i16 9, i16 153, i16 1536 }, %struct.tableentry { i16 9, i16 154, i16 1600 }, %struct.tableentry { i16 6, i16 24, i16 1664 }, %struct.tableentry { i16 9, i16 155, i16 1728 }, %struct.tableentry { i16 11, i16 8, i16 1792 }, %struct.tableentry { i16 11, i16 12, i16 1856 }, %struct.tableentry { i16 11, i16 13, i16 1920 }, %struct.tableentry { i16 12, i16 18, i16 1984 }, %struct.tableentry { i16 12, i16 19, i16 2048 }, %struct.tableentry { i16 12, i16 20, i16 2112 }, %struct.tableentry { i16 12, i16 21, i16 2176 }, %struct.tableentry { i16 12, i16 22, i16 2240 }, %struct.tableentry { i16 12, i16 23, i16 2304 }, %struct.tableentry { i16 12, i16 28, i16 2368 }, %struct.tableentry { i16 12, i16 29, i16 2432 }, %struct.tableentry { i16 12, i16 30, i16 2496 }, %struct.tableentry { i16 12, i16 31, i16 2560 }, %struct.tableentry { i16 12, i16 1, i16 -1 }, %struct.tableentry { i16 9, i16 1, i16 -2 }, %struct.tableentry { i16 10, i16 1, i16 -2 }, %struct.tableentry { i16 11, i16 1, i16 -2 }, %struct.tableentry { i16 12, i16 0, i16 -2 }], align 16, !dbg !0
@TIFFFaxBlackCodes = dso_local constant [109 x %struct.tableentry] [%struct.tableentry { i16 10, i16 55, i16 0 }, %struct.tableentry { i16 3, i16 2, i16 1 }, %struct.tableentry { i16 2, i16 3, i16 2 }, %struct.tableentry { i16 2, i16 2, i16 3 }, %struct.tableentry { i16 3, i16 3, i16 4 }, %struct.tableentry { i16 4, i16 3, i16 5 }, %struct.tableentry { i16 4, i16 2, i16 6 }, %struct.tableentry { i16 5, i16 3, i16 7 }, %struct.tableentry { i16 6, i16 5, i16 8 }, %struct.tableentry { i16 6, i16 4, i16 9 }, %struct.tableentry { i16 7, i16 4, i16 10 }, %struct.tableentry { i16 7, i16 5, i16 11 }, %struct.tableentry { i16 7, i16 7, i16 12 }, %struct.tableentry { i16 8, i16 4, i16 13 }, %struct.tableentry { i16 8, i16 7, i16 14 }, %struct.tableentry { i16 9, i16 24, i16 15 }, %struct.tableentry { i16 10, i16 23, i16 16 }, %struct.tableentry { i16 10, i16 24, i16 17 }, %struct.tableentry { i16 10, i16 8, i16 18 }, %struct.tableentry { i16 11, i16 103, i16 19 }, %struct.tableentry { i16 11, i16 104, i16 20 }, %struct.tableentry { i16 11, i16 108, i16 21 }, %struct.tableentry { i16 11, i16 55, i16 22 }, %struct.tableentry { i16 11, i16 40, i16 23 }, %struct.tableentry { i16 11, i16 23, i16 24 }, %struct.tableentry { i16 11, i16 24, i16 25 }, %struct.tableentry { i16 12, i16 202, i16 26 }, %struct.tableentry { i16 12, i16 203, i16 27 }, %struct.tableentry { i16 12, i16 204, i16 28 }, %struct.tableentry { i16 12, i16 205, i16 29 }, %struct.tableentry { i16 12, i16 104, i16 30 }, %struct.tableentry { i16 12, i16 105, i16 31 }, %struct.tableentry { i16 12, i16 106, i16 32 }, %struct.tableentry { i16 12, i16 107, i16 33 }, %struct.tableentry { i16 12, i16 210, i16 34 }, %struct.tableentry { i16 12, i16 211, i16 35 }, %struct.tableentry { i16 12, i16 212, i16 36 }, %struct.tableentry { i16 12, i16 213, i16 37 }, %struct.tableentry { i16 12, i16 214, i16 38 }, %struct.tableentry { i16 12, i16 215, i16 39 }, %struct.tableentry { i16 12, i16 108, i16 40 }, %struct.tableentry { i16 12, i16 109, i16 41 }, %struct.tableentry { i16 12, i16 218, i16 42 }, %struct.tableentry { i16 12, i16 219, i16 43 }, %struct.tableentry { i16 12, i16 84, i16 44 }, %struct.tableentry { i16 12, i16 85, i16 45 }, %struct.tableentry { i16 12, i16 86, i16 46 }, %struct.tableentry { i16 12, i16 87, i16 47 }, %struct.tableentry { i16 12, i16 100, i16 48 }, %struct.tableentry { i16 12, i16 101, i16 49 }, %struct.tableentry { i16 12, i16 82, i16 50 }, %struct.tableentry { i16 12, i16 83, i16 51 }, %struct.tableentry { i16 12, i16 36, i16 52 }, %struct.tableentry { i16 12, i16 55, i16 53 }, %struct.tableentry { i16 12, i16 56, i16 54 }, %struct.tableentry { i16 12, i16 39, i16 55 }, %struct.tableentry { i16 12, i16 40, i16 56 }, %struct.tableentry { i16 12, i16 88, i16 57 }, %struct.tableentry { i16 12, i16 89, i16 58 }, %struct.tableentry { i16 12, i16 43, i16 59 }, %struct.tableentry { i16 12, i16 44, i16 60 }, %struct.tableentry { i16 12, i16 90, i16 61 }, %struct.tableentry { i16 12, i16 102, i16 62 }, %struct.tableentry { i16 12, i16 103, i16 63 }, %struct.tableentry { i16 10, i16 15, i16 64 }, %struct.tableentry { i16 12, i16 200, i16 128 }, %struct.tableentry { i16 12, i16 201, i16 192 }, %struct.tableentry { i16 12, i16 91, i16 256 }, %struct.tableentry { i16 12, i16 51, i16 320 }, %struct.tableentry { i16 12, i16 52, i16 384 }, %struct.tableentry { i16 12, i16 53, i16 448 }, %struct.tableentry { i16 13, i16 108, i16 512 }, %struct.tableentry { i16 13, i16 109, i16 576 }, %struct.tableentry { i16 13, i16 74, i16 640 }, %struct.tableentry { i16 13, i16 75, i16 704 }, %struct.tableentry { i16 13, i16 76, i16 768 }, %struct.tableentry { i16 13, i16 77, i16 832 }, %struct.tableentry { i16 13, i16 114, i16 896 }, %struct.tableentry { i16 13, i16 115, i16 960 }, %struct.tableentry { i16 13, i16 116, i16 1024 }, %struct.tableentry { i16 13, i16 117, i16 1088 }, %struct.tableentry { i16 13, i16 118, i16 1152 }, %struct.tableentry { i16 13, i16 119, i16 1216 }, %struct.tableentry { i16 13, i16 82, i16 1280 }, %struct.tableentry { i16 13, i16 83, i16 1344 }, %struct.tableentry { i16 13, i16 84, i16 1408 }, %struct.tableentry { i16 13, i16 85, i16 1472 }, %struct.tableentry { i16 13, i16 90, i16 1536 }, %struct.tableentry { i16 13, i16 91, i16 1600 }, %struct.tableentry { i16 13, i16 100, i16 1664 }, %struct.tableentry { i16 13, i16 101, i16 1728 }, %struct.tableentry { i16 11, i16 8, i16 1792 }, %struct.tableentry { i16 11, i16 12, i16 1856 }, %struct.tableentry { i16 11, i16 13, i16 1920 }, %struct.tableentry { i16 12, i16 18, i16 1984 }, %struct.tableentry { i16 12, i16 19, i16 2048 }, %struct.tableentry { i16 12, i16 20, i16 2112 }, %struct.tableentry { i16 12, i16 21, i16 2176 }, %struct.tableentry { i16 12, i16 22, i16 2240 }, %struct.tableentry { i16 12, i16 23, i16 2304 }, %struct.tableentry { i16 12, i16 28, i16 2368 }, %struct.tableentry { i16 12, i16 29, i16 2432 }, %struct.tableentry { i16 12, i16 30, i16 2496 }, %struct.tableentry { i16 12, i16 31, i16 2560 }, %struct.tableentry { i16 12, i16 1, i16 -1 }, %struct.tableentry { i16 9, i16 1, i16 -2 }, %struct.tableentry { i16 10, i16 1, i16 -2 }, %struct.tableentry { i16 11, i16 1, i16 -2 }, %struct.tableentry { i16 12, i16 0, i16 -2 }], align 16, !dbg !420
@_TIFFFax3fillruns._fillmasks = internal constant [9 x i8] c"\00\80\C0\E0\F0\F8\FC\FE\FF", align 1, !dbg !433
@.str = private unnamed_addr constant [11 x i8] c"x == lastx\00", align 1, !dbg !443
@.str.1 = private unnamed_addr constant [39 x i8] c"cBench/consumer_tiff2bw/src/tif_fax3.c\00", align 1, !dbg !448
@__PRETTY_FUNCTION__._TIFFFax3fillruns = private unnamed_addr constant [61 x i8] c"void _TIFFFax3fillruns(u_char *, uint32 *, uint32 *, uint32)\00", align 1, !dbg !453
@fax3FieldInfo = internal constant [1 x %struct.TIFFFieldInfo] [%struct.TIFFFieldInfo { i32 292, i16 1, i16 1, i32 4, i16 68, i8 0, i8 0, ptr @.str.43 }], align 16, !dbg !651
@fax4FieldInfo = internal constant [1 x %struct.TIFFFieldInfo] [%struct.TIFFFieldInfo { i32 293, i16 1, i16 1, i32 4, i16 68, i8 0, i8 0, ptr @.str.44 }], align 16, !dbg !656
@.str.2 = private unnamed_addr constant [18 x i8] c"TIFFInitCCITTFax3\00", align 1, !dbg !459
@.str.3 = private unnamed_addr constant [29 x i8] c"%s: No space for state block\00", align 1, !dbg !464
@faxFieldInfo = internal constant [10 x %struct.TIFFFieldInfo] [%struct.TIFFFieldInfo { i32 65536, i16 0, i16 0, i32 0, i16 0, i8 0, i8 0, ptr @.str.4 }, %struct.TIFFFieldInfo { i32 65540, i16 0, i16 0, i32 0, i16 0, i8 0, i8 0, ptr @.str.5 }, %struct.TIFFFieldInfo { i32 326, i16 1, i16 1, i32 4, i16 62, i8 1, i8 0, ptr @.str.6 }, %struct.TIFFFieldInfo { i32 326, i16 1, i16 1, i32 3, i16 62, i8 1, i8 0, ptr @.str.6 }, %struct.TIFFFieldInfo { i32 327, i16 1, i16 1, i32 3, i16 63, i8 1, i8 0, ptr @.str.7 }, %struct.TIFFFieldInfo { i32 328, i16 1, i16 1, i32 4, i16 64, i8 1, i8 0, ptr @.str.8 }, %struct.TIFFFieldInfo { i32 328, i16 1, i16 1, i32 3, i16 64, i8 1, i8 0, ptr @.str.8 }, %struct.TIFFFieldInfo { i32 34908, i16 1, i16 1, i32 4, i16 65, i8 1, i8 0, ptr @.str.9 }, %struct.TIFFFieldInfo { i32 34909, i16 -1, i16 -1, i32 2, i16 66, i8 1, i8 0, ptr @.str.10 }, %struct.TIFFFieldInfo { i32 34910, i16 1, i16 1, i32 4, i16 67, i8 1, i8 0, ptr @.str.11 }], align 16, !dbg !500
@.str.4 = private unnamed_addr constant [8 x i8] c"FaxMode\00", align 1, !dbg !469
@.str.5 = private unnamed_addr constant [12 x i8] c"FaxFillFunc\00", align 1, !dbg !474
@.str.6 = private unnamed_addr constant [12 x i8] c"BadFaxLines\00", align 1, !dbg !479
@.str.7 = private unnamed_addr constant [13 x i8] c"CleanFaxData\00", align 1, !dbg !481
@.str.8 = private unnamed_addr constant [23 x i8] c"ConsecutiveBadFaxLines\00", align 1, !dbg !486
@.str.9 = private unnamed_addr constant [14 x i8] c"FaxRecvParams\00", align 1, !dbg !491
@.str.10 = private unnamed_addr constant [14 x i8] c"FaxSubAddress\00", align 1, !dbg !496
@.str.11 = private unnamed_addr constant [12 x i8] c"FaxRecvTime\00", align 1, !dbg !498
@.str.12 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !506
@.str.13 = private unnamed_addr constant [19 x i8] c"  Group 4 Options:\00", align 1, !dbg !509
@.str.14 = private unnamed_addr constant [20 x i8] c"%suncompressed data\00", align 1, !dbg !514
@.str.15 = private unnamed_addr constant [19 x i8] c"  Group 3 Options:\00", align 1, !dbg !516
@.str.16 = private unnamed_addr constant [15 x i8] c"%s2-d encoding\00", align 1, !dbg !518
@.str.17 = private unnamed_addr constant [2 x i8] c"+\00", align 1, !dbg !523
@.str.18 = private unnamed_addr constant [14 x i8] c"%sEOL padding\00", align 1, !dbg !525
@.str.19 = private unnamed_addr constant [16 x i8] c" (%lu = 0x%lx)\0A\00", align 1, !dbg !527
@.str.20 = private unnamed_addr constant [12 x i8] c"  Fax Data:\00", align 1, !dbg !532
@.str.21 = private unnamed_addr constant [7 x i8] c" clean\00", align 1, !dbg !534
@.str.22 = private unnamed_addr constant [22 x i8] c" receiver regenerated\00", align 1, !dbg !539
@.str.23 = private unnamed_addr constant [20 x i8] c" uncorrected errors\00", align 1, !dbg !544
@.str.24 = private unnamed_addr constant [14 x i8] c" (%u = 0x%x)\0A\00", align 1, !dbg !546
@.str.25 = private unnamed_addr constant [22 x i8] c"  Bad Fax Lines: %lu\0A\00", align 1, !dbg !548
@.str.26 = private unnamed_addr constant [34 x i8] c"  Consecutive Bad Fax Lines: %lu\0A\00", align 1, !dbg !550
@.str.27 = private unnamed_addr constant [33 x i8] c"  Fax Receive Parameters: %08lx\0A\00", align 1, !dbg !555
@.str.28 = private unnamed_addr constant [22 x i8] c"  Fax SubAddress: %s\0A\00", align 1, !dbg !560
@.str.29 = private unnamed_addr constant [30 x i8] c"  Fax Receive Time: %lu secs\0A\00", align 1, !dbg !562
@.str.30 = private unnamed_addr constant [54 x i8] c"Bits/sample must be 1 for Group 3/4 encoding/decoding\00", align 1, !dbg !567
@.str.31 = private unnamed_addr constant [15 x i8] c"Fax3SetupState\00", align 1, !dbg !572
@.str.32 = private unnamed_addr constant [38 x i8] c"%s: No space for Group 3/4 run arrays\00", align 1, !dbg !574
@.str.33 = private unnamed_addr constant [42 x i8] c"%s: No space for Group 3/4 reference line\00", align 1, !dbg !579
@Fax3Decode2D.module = internal constant [13 x i8] c"Fax3Decode2D\00", align 1, !dbg !584
@TIFFFaxWhiteTable = external constant [0 x %struct.TIFFFaxTabEnt], align 4
@TIFFFaxBlackTable = external constant [0 x %struct.TIFFFaxTabEnt], align 4
@TIFFFaxMainTable = external constant [0 x %struct.TIFFFaxTabEnt], align 4
@.str.34 = private unnamed_addr constant [41 x i8] c"%s: Bad code word at scanline %d (x %lu)\00", align 1, !dbg !588
@.str.35 = private unnamed_addr constant [41 x i8] c"%s: Premature EOF at scanline %d (x %lu)\00", align 1, !dbg !593
@.str.36 = private unnamed_addr constant [46 x i8] c"%s: %s at scanline %d (got %lu, expected %lu)\00", align 1, !dbg !595
@.str.37 = private unnamed_addr constant [14 x i8] c"Premature EOL\00", align 1, !dbg !600
@.str.38 = private unnamed_addr constant [21 x i8] c"Line length mismatch\00", align 1, !dbg !602
@.str.39 = private unnamed_addr constant [61 x i8] c"%s: Uncompressed data (not supported) at scanline %d (x %lu)\00", align 1, !dbg !607
@.str.40 = private unnamed_addr constant [11 x i8] c"sp != NULL\00", align 1, !dbg !610
@__PRETTY_FUNCTION__.Fax3PreDecode = private unnamed_addr constant [37 x i8] c"int Fax3PreDecode(TIFF *, tsample_t)\00", align 1, !dbg !612
@Fax3Decode1D.module = internal constant [13 x i8] c"Fax3Decode1D\00", align 1, !dbg !617
@__PRETTY_FUNCTION__.Fax3PreEncode = private unnamed_addr constant [37 x i8] c"int Fax3PreEncode(TIFF *, tsample_t)\00", align 1, !dbg !620
@_msbmask = internal constant [9 x i32] [i32 0, i32 1, i32 3, i32 7, i32 15, i32 31, i32 63, i32 127, i32 255], align 16, !dbg !622
@zeroruns = internal constant <{ [128 x i8], [128 x i8] }> <{ [128 x i8] c"\08\07\06\06\05\05\05\05\04\04\04\04\04\04\04\04\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", [128 x i8] zeroinitializer }>, align 16, !dbg !625
@.str.42 = private unnamed_addr constant [27 x i8] c"te->runlen == 64*(span>>6)\00", align 1, !dbg !630
@__PRETTY_FUNCTION__.putspan = private unnamed_addr constant [48 x i8] c"void putspan(TIFF *, int32, const tableentry *)\00", align 1, !dbg !635
@oneruns = internal constant [256 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\04\04\04\04\04\04\04\04\05\05\05\05\06\06\07\08", align 16, !dbg !640
@horizcode = internal constant %struct.tableentry { i16 3, i16 1, i16 0 }, align 2, !dbg !642
@vcodes = internal constant [7 x %struct.tableentry] [%struct.tableentry { i16 7, i16 3, i16 0 }, %struct.tableentry { i16 6, i16 3, i16 0 }, %struct.tableentry { i16 3, i16 3, i16 0 }, %struct.tableentry { i16 1, i16 1, i16 0 }, %struct.tableentry { i16 3, i16 2, i16 0 }, %struct.tableentry { i16 6, i16 2, i16 0 }, %struct.tableentry { i16 7, i16 2, i16 0 }], align 16, !dbg !644
@passcode = internal constant %struct.tableentry { i16 4, i16 1, i16 0 }, align 2, !dbg !647
@.str.43 = private unnamed_addr constant [14 x i8] c"Group3Options\00", align 1, !dbg !649
@.str.44 = private unnamed_addr constant [14 x i8] c"Group4Options\00", align 1, !dbg !654
@Fax4Decode.module = internal constant [11 x i8] c"Fax4Decode\00", align 1, !dbg !658
@Fax3DecodeRLE.module = internal constant [14 x i8] c"Fax3DecodeRLE\00", align 1, !dbg !662

; Function Attrs: noinline nounwind uwtable
define dso_local void @_TIFFFax3fillruns(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 !dbg !435 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
    #dbg_declare(ptr %5, !674, !DIExpression(), !675)
  store ptr %1, ptr %6, align 8
    #dbg_declare(ptr %6, !676, !DIExpression(), !677)
  store ptr %2, ptr %7, align 8
    #dbg_declare(ptr %7, !678, !DIExpression(), !679)
  store i32 %3, ptr %8, align 4
    #dbg_declare(ptr %8, !680, !DIExpression(), !681)
    #dbg_declare(ptr %9, !682, !DIExpression(), !683)
    #dbg_declare(ptr %10, !684, !DIExpression(), !685)
    #dbg_declare(ptr %11, !686, !DIExpression(), !687)
    #dbg_declare(ptr %12, !688, !DIExpression(), !689)
    #dbg_declare(ptr %13, !690, !DIExpression(), !691)
    #dbg_declare(ptr %14, !692, !DIExpression(), !693)
    #dbg_declare(ptr %15, !694, !DIExpression(), !695)
  %16 = load ptr, ptr %7, align 8, !dbg !696
  %17 = load ptr, ptr %6, align 8, !dbg !698
  %18 = ptrtoint ptr %16 to i64, !dbg !699
  %19 = ptrtoint ptr %17 to i64, !dbg !699
  %20 = sub i64 %18, %19, !dbg !699
  %21 = sdiv exact i64 %20, 4, !dbg !699
  %22 = and i64 %21, 1, !dbg !700
  %23 = icmp ne i64 %22, 0, !dbg !700
  br i1 %23, label %24, label %27, !dbg !700

24:                                               ; preds = %4
  %25 = load ptr, ptr %7, align 8, !dbg !701
  %26 = getelementptr inbounds nuw i32, ptr %25, i32 1, !dbg !701
  store ptr %26, ptr %7, align 8, !dbg !701
  store i32 0, ptr %25, align 4, !dbg !702
  br label %27, !dbg !703

27:                                               ; preds = %24, %4
  store i32 0, ptr %10, align 4, !dbg !704
  br label %28, !dbg !705

28:                                               ; preds = %347, %27
  %29 = load ptr, ptr %6, align 8, !dbg !706
  %30 = load ptr, ptr %7, align 8, !dbg !709
  %31 = icmp ult ptr %29, %30, !dbg !710
  br i1 %31, label %32, label %350, !dbg !711

32:                                               ; preds = %28
  %33 = load ptr, ptr %6, align 8, !dbg !712
  %34 = getelementptr inbounds i32, ptr %33, i64 0, !dbg !712
  %35 = load i32, ptr %34, align 4, !dbg !712
  store i32 %35, ptr %12, align 4, !dbg !714
  %36 = load i32, ptr %10, align 4, !dbg !715
  %37 = load i32, ptr %12, align 4, !dbg !717
  %38 = add i32 %36, %37, !dbg !718
  %39 = load i32, ptr %8, align 4, !dbg !719
  %40 = icmp ugt i32 %38, %39, !dbg !720
  br i1 %40, label %41, label %49, !dbg !720

41:                                               ; preds = %32
  %42 = load i32, ptr %8, align 4, !dbg !721
  %43 = load i32, ptr %10, align 4, !dbg !722
  %44 = sub i32 %42, %43, !dbg !723
  %45 = trunc i32 %44 to i16, !dbg !724
  %46 = zext i16 %45 to i32, !dbg !724
  %47 = load ptr, ptr %6, align 8, !dbg !725
  %48 = getelementptr inbounds i32, ptr %47, i64 0, !dbg !725
  store i32 %46, ptr %48, align 4, !dbg !726
  store i32 %46, ptr %12, align 4, !dbg !727
  br label %49, !dbg !728

49:                                               ; preds = %41, %32
  %50 = load i32, ptr %12, align 4, !dbg !729
  %51 = icmp ne i32 %50, 0, !dbg !729
  br i1 %51, label %52, label %191, !dbg !729

52:                                               ; preds = %49
  %53 = load ptr, ptr %5, align 8, !dbg !731
  %54 = load i32, ptr %10, align 4, !dbg !733
  %55 = lshr i32 %54, 3, !dbg !734
  %56 = zext i32 %55 to i64, !dbg !735
  %57 = getelementptr inbounds nuw i8, ptr %53, i64 %56, !dbg !735
  store ptr %57, ptr %9, align 8, !dbg !736
  %58 = load i32, ptr %10, align 4, !dbg !737
  %59 = and i32 %58, 7, !dbg !738
  store i32 %59, ptr %11, align 4, !dbg !739
  %60 = load i32, ptr %12, align 4, !dbg !740
  %61 = load i32, ptr %11, align 4, !dbg !742
  %62 = sub i32 8, %61, !dbg !743
  %63 = icmp ugt i32 %60, %62, !dbg !744
  br i1 %63, label %64, label %170, !dbg !744

64:                                               ; preds = %52
  %65 = load i32, ptr %11, align 4, !dbg !745
  %66 = icmp ne i32 %65, 0, !dbg !745
  br i1 %66, label %67, label %81, !dbg !745

67:                                               ; preds = %64
  %68 = load i32, ptr %11, align 4, !dbg !748
  %69 = sub i32 8, %68, !dbg !750
  %70 = shl i32 255, %69, !dbg !751
  %71 = load ptr, ptr %9, align 8, !dbg !752
  %72 = getelementptr inbounds nuw i8, ptr %71, i32 1, !dbg !752
  store ptr %72, ptr %9, align 8, !dbg !752
  %73 = load i8, ptr %71, align 1, !dbg !753
  %74 = zext i8 %73 to i32, !dbg !753
  %75 = and i32 %74, %70, !dbg !753
  %76 = trunc i32 %75 to i8, !dbg !753
  store i8 %76, ptr %71, align 1, !dbg !753
  %77 = load i32, ptr %11, align 4, !dbg !754
  %78 = sub i32 8, %77, !dbg !755
  %79 = load i32, ptr %12, align 4, !dbg !756
  %80 = sub i32 %79, %78, !dbg !756
  store i32 %80, ptr %12, align 4, !dbg !756
  br label %81, !dbg !757

81:                                               ; preds = %67, %64
  %82 = load i32, ptr %12, align 4, !dbg !758
  %83 = lshr i32 %82, 3, !dbg !760
  store i32 %83, ptr %13, align 4, !dbg !761
  %84 = icmp ne i32 %83, 0, !dbg !762
  br i1 %84, label %85, label %161, !dbg !762

85:                                               ; preds = %81
  %86 = load i32, ptr %13, align 4, !dbg !763
  %87 = sext i32 %86 to i64, !dbg !763
  %88 = udiv i64 %87, 8, !dbg !766
  %89 = icmp ugt i64 %88, 1, !dbg !767
  br i1 %89, label %90, label %130, !dbg !767

90:                                               ; preds = %85
  br label %91, !dbg !768

91:                                               ; preds = %105, %90
  %92 = load i32, ptr %13, align 4, !dbg !770
  %93 = icmp ne i32 %92, 0, !dbg !770
  br i1 %93, label %94, label %100, !dbg !773

94:                                               ; preds = %91
  %95 = load ptr, ptr %9, align 8, !dbg !774
  %96 = ptrtoint ptr %95 to i64, !dbg !774
  %97 = and i64 %96, 7, !dbg !774
  %98 = icmp eq i64 %97, 0, !dbg !774
  %99 = xor i1 %98, true, !dbg !775
  br label %100

100:                                              ; preds = %94, %91
  %101 = phi i1 [ false, %91 ], [ %99, %94 ], !dbg !776
  br i1 %101, label %102, label %108, !dbg !777

102:                                              ; preds = %100
  %103 = load ptr, ptr %9, align 8, !dbg !778
  %104 = getelementptr inbounds nuw i8, ptr %103, i32 1, !dbg !778
  store ptr %104, ptr %9, align 8, !dbg !778
  store i8 0, ptr %103, align 1, !dbg !779
  br label %105, !dbg !780

105:                                              ; preds = %102
  %106 = load i32, ptr %13, align 4, !dbg !781
  %107 = add nsw i32 %106, -1, !dbg !781
  store i32 %107, ptr %13, align 4, !dbg !781
  br label %91, !dbg !782, !llvm.loop !783

108:                                              ; preds = %100
  %109 = load ptr, ptr %9, align 8, !dbg !786
  store ptr %109, ptr %15, align 8, !dbg !787
  %110 = load i32, ptr %13, align 4, !dbg !788
  %111 = sext i32 %110 to i64, !dbg !788
  %112 = udiv i64 %111, 8, !dbg !789
  %113 = trunc i64 %112 to i32, !dbg !790
  store i32 %113, ptr %14, align 4, !dbg !791
  %114 = load i32, ptr %14, align 4, !dbg !792
  %115 = sext i32 %114 to i64, !dbg !792
  %116 = mul i64 %115, 8, !dbg !793
  %117 = load i32, ptr %13, align 4, !dbg !794
  %118 = sext i32 %117 to i64, !dbg !794
  %119 = sub i64 %118, %116, !dbg !794
  %120 = trunc i64 %119 to i32, !dbg !794
  store i32 %120, ptr %13, align 4, !dbg !794
  br label %121, !dbg !795

121:                                              ; preds = %124, %108
  %122 = load ptr, ptr %15, align 8, !dbg !796
  %123 = getelementptr inbounds nuw i64, ptr %122, i32 1, !dbg !796
  store ptr %123, ptr %15, align 8, !dbg !796
  store i64 0, ptr %122, align 8, !dbg !798
  br label %124, !dbg !799

124:                                              ; preds = %121
  %125 = load i32, ptr %14, align 4, !dbg !800
  %126 = add nsw i32 %125, -1, !dbg !800
  store i32 %126, ptr %14, align 4, !dbg !800
  %127 = icmp ne i32 %126, 0, !dbg !799
  br i1 %127, label %121, label %128, !dbg !799, !llvm.loop !801

128:                                              ; preds = %124
  %129 = load ptr, ptr %15, align 8, !dbg !803
  store ptr %129, ptr %9, align 8, !dbg !804
  br label %130, !dbg !805

130:                                              ; preds = %128, %85
  %131 = load i32, ptr %13, align 4, !dbg !806
  switch i32 %131, label %158 [
    i32 7, label %132
    i32 6, label %135
    i32 5, label %138
    i32 4, label %141
    i32 3, label %144
    i32 2, label %147
    i32 1, label %150
    i32 0, label %157
  ], !dbg !806

132:                                              ; preds = %130
  %133 = load ptr, ptr %9, align 8, !dbg !807
  %134 = getelementptr inbounds i8, ptr %133, i64 6, !dbg !807
  store i8 0, ptr %134, align 1, !dbg !807
  br label %135, !dbg !807

135:                                              ; preds = %130, %132
  %136 = load ptr, ptr %9, align 8, !dbg !807
  %137 = getelementptr inbounds i8, ptr %136, i64 5, !dbg !807
  store i8 0, ptr %137, align 1, !dbg !807
  br label %138, !dbg !807

138:                                              ; preds = %130, %135
  %139 = load ptr, ptr %9, align 8, !dbg !807
  %140 = getelementptr inbounds i8, ptr %139, i64 4, !dbg !807
  store i8 0, ptr %140, align 1, !dbg !807
  br label %141, !dbg !807

141:                                              ; preds = %130, %138
  %142 = load ptr, ptr %9, align 8, !dbg !807
  %143 = getelementptr inbounds i8, ptr %142, i64 3, !dbg !807
  store i8 0, ptr %143, align 1, !dbg !807
  br label %144, !dbg !807

144:                                              ; preds = %130, %141
  %145 = load ptr, ptr %9, align 8, !dbg !807
  %146 = getelementptr inbounds i8, ptr %145, i64 2, !dbg !807
  store i8 0, ptr %146, align 1, !dbg !807
  br label %147, !dbg !807

147:                                              ; preds = %130, %144
  %148 = load ptr, ptr %9, align 8, !dbg !807
  %149 = getelementptr inbounds i8, ptr %148, i64 1, !dbg !807
  store i8 0, ptr %149, align 1, !dbg !807
  br label %150, !dbg !807

150:                                              ; preds = %130, %147
  %151 = load ptr, ptr %9, align 8, !dbg !807
  %152 = getelementptr inbounds i8, ptr %151, i64 0, !dbg !807
  store i8 0, ptr %152, align 1, !dbg !807
  %153 = load i32, ptr %13, align 4, !dbg !807
  %154 = load ptr, ptr %9, align 8, !dbg !807
  %155 = sext i32 %153 to i64, !dbg !807
  %156 = getelementptr inbounds i8, ptr %154, i64 %155, !dbg !807
  store ptr %156, ptr %9, align 8, !dbg !807
  br label %157, !dbg !807

157:                                              ; preds = %130, %150
  br label %158, !dbg !807

158:                                              ; preds = %157, %130
  %159 = load i32, ptr %12, align 4, !dbg !809
  %160 = and i32 %159, 7, !dbg !809
  store i32 %160, ptr %12, align 4, !dbg !809
  br label %161, !dbg !810

161:                                              ; preds = %158, %81
  %162 = load i32, ptr %12, align 4, !dbg !811
  %163 = ashr i32 255, %162, !dbg !812
  %164 = load ptr, ptr %9, align 8, !dbg !813
  %165 = getelementptr inbounds i8, ptr %164, i64 0, !dbg !813
  %166 = load i8, ptr %165, align 1, !dbg !814
  %167 = zext i8 %166 to i32, !dbg !814
  %168 = and i32 %167, %163, !dbg !814
  %169 = trunc i32 %168 to i8, !dbg !814
  store i8 %169, ptr %165, align 1, !dbg !814
  br label %185, !dbg !815

170:                                              ; preds = %52
  %171 = load i32, ptr %12, align 4, !dbg !816
  %172 = zext i32 %171 to i64, !dbg !817
  %173 = getelementptr inbounds nuw [9 x i8], ptr @_TIFFFax3fillruns._fillmasks, i64 0, i64 %172, !dbg !817
  %174 = load i8, ptr %173, align 1, !dbg !817
  %175 = zext i8 %174 to i32, !dbg !817
  %176 = load i32, ptr %11, align 4, !dbg !818
  %177 = ashr i32 %175, %176, !dbg !819
  %178 = xor i32 %177, -1, !dbg !820
  %179 = load ptr, ptr %9, align 8, !dbg !821
  %180 = getelementptr inbounds i8, ptr %179, i64 0, !dbg !821
  %181 = load i8, ptr %180, align 1, !dbg !822
  %182 = zext i8 %181 to i32, !dbg !822
  %183 = and i32 %182, %178, !dbg !822
  %184 = trunc i32 %183 to i8, !dbg !822
  store i8 %184, ptr %180, align 1, !dbg !822
  br label %185

185:                                              ; preds = %170, %161
  %186 = load ptr, ptr %6, align 8, !dbg !823
  %187 = getelementptr inbounds i32, ptr %186, i64 0, !dbg !823
  %188 = load i32, ptr %187, align 4, !dbg !823
  %189 = load i32, ptr %10, align 4, !dbg !824
  %190 = add i32 %189, %188, !dbg !824
  store i32 %190, ptr %10, align 4, !dbg !824
  br label %191, !dbg !825

191:                                              ; preds = %185, %49
  %192 = load ptr, ptr %6, align 8, !dbg !826
  %193 = getelementptr inbounds i32, ptr %192, i64 1, !dbg !826
  %194 = load i32, ptr %193, align 4, !dbg !826
  store i32 %194, ptr %12, align 4, !dbg !827
  %195 = load i32, ptr %10, align 4, !dbg !828
  %196 = load i32, ptr %12, align 4, !dbg !830
  %197 = add i32 %195, %196, !dbg !831
  %198 = load i32, ptr %8, align 4, !dbg !832
  %199 = icmp ugt i32 %197, %198, !dbg !833
  br i1 %199, label %200, label %206, !dbg !833

200:                                              ; preds = %191
  %201 = load i32, ptr %8, align 4, !dbg !834
  %202 = load i32, ptr %10, align 4, !dbg !835
  %203 = sub i32 %201, %202, !dbg !836
  %204 = load ptr, ptr %6, align 8, !dbg !837
  %205 = getelementptr inbounds i32, ptr %204, i64 1, !dbg !837
  store i32 %203, ptr %205, align 4, !dbg !838
  store i32 %203, ptr %12, align 4, !dbg !839
  br label %206, !dbg !840

206:                                              ; preds = %200, %191
  %207 = load i32, ptr %12, align 4, !dbg !841
  %208 = icmp ne i32 %207, 0, !dbg !841
  br i1 %208, label %209, label %346, !dbg !841

209:                                              ; preds = %206
  %210 = load ptr, ptr %5, align 8, !dbg !843
  %211 = load i32, ptr %10, align 4, !dbg !845
  %212 = lshr i32 %211, 3, !dbg !846
  %213 = zext i32 %212 to i64, !dbg !847
  %214 = getelementptr inbounds nuw i8, ptr %210, i64 %213, !dbg !847
  store ptr %214, ptr %9, align 8, !dbg !848
  %215 = load i32, ptr %10, align 4, !dbg !849
  %216 = and i32 %215, 7, !dbg !850
  store i32 %216, ptr %11, align 4, !dbg !851
  %217 = load i32, ptr %12, align 4, !dbg !852
  %218 = load i32, ptr %11, align 4, !dbg !854
  %219 = sub i32 8, %218, !dbg !855
  %220 = icmp ugt i32 %217, %219, !dbg !856
  br i1 %220, label %221, label %326, !dbg !856

221:                                              ; preds = %209
  %222 = load i32, ptr %11, align 4, !dbg !857
  %223 = icmp ne i32 %222, 0, !dbg !857
  br i1 %223, label %224, label %237, !dbg !857

224:                                              ; preds = %221
  %225 = load i32, ptr %11, align 4, !dbg !860
  %226 = ashr i32 255, %225, !dbg !862
  %227 = load ptr, ptr %9, align 8, !dbg !863
  %228 = getelementptr inbounds nuw i8, ptr %227, i32 1, !dbg !863
  store ptr %228, ptr %9, align 8, !dbg !863
  %229 = load i8, ptr %227, align 1, !dbg !864
  %230 = zext i8 %229 to i32, !dbg !864
  %231 = or i32 %230, %226, !dbg !864
  %232 = trunc i32 %231 to i8, !dbg !864
  store i8 %232, ptr %227, align 1, !dbg !864
  %233 = load i32, ptr %11, align 4, !dbg !865
  %234 = sub i32 8, %233, !dbg !866
  %235 = load i32, ptr %12, align 4, !dbg !867
  %236 = sub i32 %235, %234, !dbg !867
  store i32 %236, ptr %12, align 4, !dbg !867
  br label %237, !dbg !868

237:                                              ; preds = %224, %221
  %238 = load i32, ptr %12, align 4, !dbg !869
  %239 = lshr i32 %238, 3, !dbg !871
  store i32 %239, ptr %13, align 4, !dbg !872
  %240 = icmp ne i32 %239, 0, !dbg !873
  br i1 %240, label %241, label %317, !dbg !873

241:                                              ; preds = %237
  %242 = load i32, ptr %13, align 4, !dbg !874
  %243 = sext i32 %242 to i64, !dbg !874
  %244 = udiv i64 %243, 8, !dbg !877
  %245 = icmp ugt i64 %244, 1, !dbg !878
  br i1 %245, label %246, label %286, !dbg !878

246:                                              ; preds = %241
  br label %247, !dbg !879

247:                                              ; preds = %261, %246
  %248 = load i32, ptr %13, align 4, !dbg !881
  %249 = icmp ne i32 %248, 0, !dbg !881
  br i1 %249, label %250, label %256, !dbg !884

250:                                              ; preds = %247
  %251 = load ptr, ptr %9, align 8, !dbg !885
  %252 = ptrtoint ptr %251 to i64, !dbg !885
  %253 = and i64 %252, 7, !dbg !885
  %254 = icmp eq i64 %253, 0, !dbg !885
  %255 = xor i1 %254, true, !dbg !886
  br label %256

256:                                              ; preds = %250, %247
  %257 = phi i1 [ false, %247 ], [ %255, %250 ], !dbg !887
  br i1 %257, label %258, label %264, !dbg !888

258:                                              ; preds = %256
  %259 = load ptr, ptr %9, align 8, !dbg !889
  %260 = getelementptr inbounds nuw i8, ptr %259, i32 1, !dbg !889
  store ptr %260, ptr %9, align 8, !dbg !889
  store i8 -1, ptr %259, align 1, !dbg !890
  br label %261, !dbg !891

261:                                              ; preds = %258
  %262 = load i32, ptr %13, align 4, !dbg !892
  %263 = add nsw i32 %262, -1, !dbg !892
  store i32 %263, ptr %13, align 4, !dbg !892
  br label %247, !dbg !893, !llvm.loop !894

264:                                              ; preds = %256
  %265 = load ptr, ptr %9, align 8, !dbg !896
  store ptr %265, ptr %15, align 8, !dbg !897
  %266 = load i32, ptr %13, align 4, !dbg !898
  %267 = sext i32 %266 to i64, !dbg !898
  %268 = udiv i64 %267, 8, !dbg !899
  %269 = trunc i64 %268 to i32, !dbg !900
  store i32 %269, ptr %14, align 4, !dbg !901
  %270 = load i32, ptr %14, align 4, !dbg !902
  %271 = sext i32 %270 to i64, !dbg !902
  %272 = mul i64 %271, 8, !dbg !903
  %273 = load i32, ptr %13, align 4, !dbg !904
  %274 = sext i32 %273 to i64, !dbg !904
  %275 = sub i64 %274, %272, !dbg !904
  %276 = trunc i64 %275 to i32, !dbg !904
  store i32 %276, ptr %13, align 4, !dbg !904
  br label %277, !dbg !905

277:                                              ; preds = %280, %264
  %278 = load ptr, ptr %15, align 8, !dbg !906
  %279 = getelementptr inbounds nuw i64, ptr %278, i32 1, !dbg !906
  store ptr %279, ptr %15, align 8, !dbg !906
  store i64 -1, ptr %278, align 8, !dbg !908
  br label %280, !dbg !909

280:                                              ; preds = %277
  %281 = load i32, ptr %14, align 4, !dbg !910
  %282 = add nsw i32 %281, -1, !dbg !910
  store i32 %282, ptr %14, align 4, !dbg !910
  %283 = icmp ne i32 %282, 0, !dbg !909
  br i1 %283, label %277, label %284, !dbg !909, !llvm.loop !911

284:                                              ; preds = %280
  %285 = load ptr, ptr %15, align 8, !dbg !913
  store ptr %285, ptr %9, align 8, !dbg !914
  br label %286, !dbg !915

286:                                              ; preds = %284, %241
  %287 = load i32, ptr %13, align 4, !dbg !916
  switch i32 %287, label %314 [
    i32 7, label %288
    i32 6, label %291
    i32 5, label %294
    i32 4, label %297
    i32 3, label %300
    i32 2, label %303
    i32 1, label %306
    i32 0, label %313
  ], !dbg !916

288:                                              ; preds = %286
  %289 = load ptr, ptr %9, align 8, !dbg !917
  %290 = getelementptr inbounds i8, ptr %289, i64 6, !dbg !917
  store i8 -1, ptr %290, align 1, !dbg !917
  br label %291, !dbg !917

291:                                              ; preds = %286, %288
  %292 = load ptr, ptr %9, align 8, !dbg !917
  %293 = getelementptr inbounds i8, ptr %292, i64 5, !dbg !917
  store i8 -1, ptr %293, align 1, !dbg !917
  br label %294, !dbg !917

294:                                              ; preds = %286, %291
  %295 = load ptr, ptr %9, align 8, !dbg !917
  %296 = getelementptr inbounds i8, ptr %295, i64 4, !dbg !917
  store i8 -1, ptr %296, align 1, !dbg !917
  br label %297, !dbg !917

297:                                              ; preds = %286, %294
  %298 = load ptr, ptr %9, align 8, !dbg !917
  %299 = getelementptr inbounds i8, ptr %298, i64 3, !dbg !917
  store i8 -1, ptr %299, align 1, !dbg !917
  br label %300, !dbg !917

300:                                              ; preds = %286, %297
  %301 = load ptr, ptr %9, align 8, !dbg !917
  %302 = getelementptr inbounds i8, ptr %301, i64 2, !dbg !917
  store i8 -1, ptr %302, align 1, !dbg !917
  br label %303, !dbg !917

303:                                              ; preds = %286, %300
  %304 = load ptr, ptr %9, align 8, !dbg !917
  %305 = getelementptr inbounds i8, ptr %304, i64 1, !dbg !917
  store i8 -1, ptr %305, align 1, !dbg !917
  br label %306, !dbg !917

306:                                              ; preds = %286, %303
  %307 = load ptr, ptr %9, align 8, !dbg !917
  %308 = getelementptr inbounds i8, ptr %307, i64 0, !dbg !917
  store i8 -1, ptr %308, align 1, !dbg !917
  %309 = load i32, ptr %13, align 4, !dbg !917
  %310 = load ptr, ptr %9, align 8, !dbg !917
  %311 = sext i32 %309 to i64, !dbg !917
  %312 = getelementptr inbounds i8, ptr %310, i64 %311, !dbg !917
  store ptr %312, ptr %9, align 8, !dbg !917
  br label %313, !dbg !917

313:                                              ; preds = %286, %306
  br label %314, !dbg !917

314:                                              ; preds = %313, %286
  %315 = load i32, ptr %12, align 4, !dbg !919
  %316 = and i32 %315, 7, !dbg !919
  store i32 %316, ptr %12, align 4, !dbg !919
  br label %317, !dbg !920

317:                                              ; preds = %314, %237
  %318 = load i32, ptr %12, align 4, !dbg !921
  %319 = ashr i32 65280, %318, !dbg !922
  %320 = load ptr, ptr %9, align 8, !dbg !923
  %321 = getelementptr inbounds i8, ptr %320, i64 0, !dbg !923
  %322 = load i8, ptr %321, align 1, !dbg !924
  %323 = zext i8 %322 to i32, !dbg !924
  %324 = or i32 %323, %319, !dbg !924
  %325 = trunc i32 %324 to i8, !dbg !924
  store i8 %325, ptr %321, align 1, !dbg !924
  br label %340, !dbg !925

326:                                              ; preds = %209
  %327 = load i32, ptr %12, align 4, !dbg !926
  %328 = zext i32 %327 to i64, !dbg !927
  %329 = getelementptr inbounds nuw [9 x i8], ptr @_TIFFFax3fillruns._fillmasks, i64 0, i64 %328, !dbg !927
  %330 = load i8, ptr %329, align 1, !dbg !927
  %331 = zext i8 %330 to i32, !dbg !927
  %332 = load i32, ptr %11, align 4, !dbg !928
  %333 = ashr i32 %331, %332, !dbg !929
  %334 = load ptr, ptr %9, align 8, !dbg !930
  %335 = getelementptr inbounds i8, ptr %334, i64 0, !dbg !930
  %336 = load i8, ptr %335, align 1, !dbg !931
  %337 = zext i8 %336 to i32, !dbg !931
  %338 = or i32 %337, %333, !dbg !931
  %339 = trunc i32 %338 to i8, !dbg !931
  store i8 %339, ptr %335, align 1, !dbg !931
  br label %340

340:                                              ; preds = %326, %317
  %341 = load ptr, ptr %6, align 8, !dbg !932
  %342 = getelementptr inbounds i32, ptr %341, i64 1, !dbg !932
  %343 = load i32, ptr %342, align 4, !dbg !932
  %344 = load i32, ptr %10, align 4, !dbg !933
  %345 = add i32 %344, %343, !dbg !933
  store i32 %345, ptr %10, align 4, !dbg !933
  br label %346, !dbg !934

346:                                              ; preds = %340, %206
  br label %347, !dbg !935

347:                                              ; preds = %346
  %348 = load ptr, ptr %6, align 8, !dbg !936
  %349 = getelementptr inbounds i32, ptr %348, i64 2, !dbg !936
  store ptr %349, ptr %6, align 8, !dbg !936
  br label %28, !dbg !937, !llvm.loop !938

350:                                              ; preds = %28
  %351 = load i32, ptr %10, align 4, !dbg !940
  %352 = load i32, ptr %8, align 4, !dbg !940
  %353 = icmp eq i32 %351, %352, !dbg !940
  br i1 %353, label %354, label %355, !dbg !940

354:                                              ; preds = %350
  br label %356, !dbg !940

355:                                              ; preds = %350
  call void @__assert_fail(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 454, ptr noundef @__PRETTY_FUNCTION__._TIFFFax3fillruns) #4, !dbg !940
  unreachable, !dbg !940

356:                                              ; preds = %354
  ret void, !dbg !943
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @TIFFInitCCITTFax3(ptr noundef %0, i32 noundef %1) #0 !dbg !944 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
    #dbg_declare(ptr %4, !947, !DIExpression(), !948)
  store i32 %1, ptr %5, align 4
    #dbg_declare(ptr %5, !949, !DIExpression(), !950)
  %6 = load ptr, ptr %4, align 8, !dbg !951
  %7 = call i32 @InitCCITTFax3(ptr noundef %6), !dbg !953
  %8 = icmp ne i32 %7, 0, !dbg !953
  br i1 %8, label %9, label %13, !dbg !953

9:                                                ; preds = %2
  %10 = load ptr, ptr %4, align 8, !dbg !954
  call void @_TIFFMergeFieldInfo(ptr noundef %10, ptr noundef @fax3FieldInfo, i32 noundef 1), !dbg !956
  %11 = load ptr, ptr %4, align 8, !dbg !957
  %12 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %11, i32 noundef 65536, i32 noundef 1), !dbg !958
  store i32 %12, ptr %3, align 4, !dbg !959
  br label %14, !dbg !959

13:                                               ; preds = %2
  store i32 0, ptr %3, align 4, !dbg !960
  br label %14, !dbg !960

14:                                               ; preds = %13, %9
  %15 = load i32, ptr %3, align 4, !dbg !961
  ret i32 %15, !dbg !961
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @InitCCITTFax3(ptr noundef %0) #0 !dbg !962 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !963, !DIExpression(), !964)
    #dbg_declare(ptr %4, !965, !DIExpression(), !966)
  %5 = load ptr, ptr %3, align 8, !dbg !967
  %6 = getelementptr inbounds nuw %struct.tiff, ptr %5, i32 0, i32 2, !dbg !969
  %7 = load i32, ptr %6, align 4, !dbg !969
  %8 = icmp eq i32 %7, 0, !dbg !970
  br i1 %8, label %9, label %13, !dbg !970

9:                                                ; preds = %1
  %10 = call ptr @_TIFFmalloc(i32 noundef 120), !dbg !971
  %11 = load ptr, ptr %3, align 8, !dbg !972
  %12 = getelementptr inbounds nuw %struct.tiff, ptr %11, i32 0, i32 37, !dbg !973
  store ptr %10, ptr %12, align 8, !dbg !974
  br label %17, !dbg !972

13:                                               ; preds = %1
  %14 = call ptr @_TIFFmalloc(i32 noundef 96), !dbg !975
  %15 = load ptr, ptr %3, align 8, !dbg !976
  %16 = getelementptr inbounds nuw %struct.tiff, ptr %15, i32 0, i32 37, !dbg !977
  store ptr %14, ptr %16, align 8, !dbg !978
  br label %17

17:                                               ; preds = %13, %9
  %18 = load ptr, ptr %3, align 8, !dbg !979
  %19 = getelementptr inbounds nuw %struct.tiff, ptr %18, i32 0, i32 37, !dbg !981
  %20 = load ptr, ptr %19, align 8, !dbg !981
  %21 = icmp eq ptr %20, null, !dbg !982
  br i1 %21, label %22, label %26, !dbg !982

22:                                               ; preds = %17
  %23 = load ptr, ptr %3, align 8, !dbg !983
  %24 = getelementptr inbounds nuw %struct.tiff, ptr %23, i32 0, i32 0, !dbg !985
  %25 = load ptr, ptr %24, align 8, !dbg !985
  call void (ptr, ptr, ...) @TIFFError(ptr noundef @.str.2, ptr noundef @.str.3, ptr noundef %25), !dbg !986
  store i32 0, ptr %2, align 4, !dbg !987
  br label %100, !dbg !987

26:                                               ; preds = %17
  %27 = load ptr, ptr %3, align 8, !dbg !988
  %28 = getelementptr inbounds nuw %struct.tiff, ptr %27, i32 0, i32 37, !dbg !988
  %29 = load ptr, ptr %28, align 8, !dbg !988
  store ptr %29, ptr %4, align 8, !dbg !989
  %30 = load ptr, ptr %3, align 8, !dbg !990
  call void @_TIFFMergeFieldInfo(ptr noundef %30, ptr noundef @faxFieldInfo, i32 noundef 10), !dbg !991
  %31 = load ptr, ptr %3, align 8, !dbg !992
  %32 = getelementptr inbounds nuw %struct.tiff, ptr %31, i32 0, i32 58, !dbg !993
  %33 = load ptr, ptr %32, align 8, !dbg !993
  %34 = load ptr, ptr %4, align 8, !dbg !994
  %35 = getelementptr inbounds nuw %struct.Fax3BaseState, ptr %34, i32 0, i32 10, !dbg !995
  store ptr %33, ptr %35, align 8, !dbg !996
  %36 = load ptr, ptr %3, align 8, !dbg !997
  %37 = getelementptr inbounds nuw %struct.tiff, ptr %36, i32 0, i32 58, !dbg !998
  store ptr @Fax3VGetField, ptr %37, align 8, !dbg !999
  %38 = load ptr, ptr %3, align 8, !dbg !1000
  %39 = getelementptr inbounds nuw %struct.tiff, ptr %38, i32 0, i32 57, !dbg !1001
  %40 = load ptr, ptr %39, align 8, !dbg !1001
  %41 = load ptr, ptr %4, align 8, !dbg !1002
  %42 = getelementptr inbounds nuw %struct.Fax3BaseState, ptr %41, i32 0, i32 11, !dbg !1003
  store ptr %40, ptr %42, align 8, !dbg !1004
  %43 = load ptr, ptr %3, align 8, !dbg !1005
  %44 = getelementptr inbounds nuw %struct.tiff, ptr %43, i32 0, i32 57, !dbg !1006
  store ptr @Fax3VSetField, ptr %44, align 8, !dbg !1007
  %45 = load ptr, ptr %3, align 8, !dbg !1008
  %46 = getelementptr inbounds nuw %struct.tiff, ptr %45, i32 0, i32 59, !dbg !1009
  store ptr @Fax3PrintDir, ptr %46, align 8, !dbg !1010
  %47 = load ptr, ptr %4, align 8, !dbg !1011
  %48 = getelementptr inbounds nuw %struct.Fax3BaseState, ptr %47, i32 0, i32 6, !dbg !1012
  store i32 0, ptr %48, align 8, !dbg !1013
  %49 = load ptr, ptr %4, align 8, !dbg !1014
  %50 = getelementptr inbounds nuw %struct.Fax3BaseState, ptr %49, i32 0, i32 7, !dbg !1015
  store i32 0, ptr %50, align 4, !dbg !1016
  %51 = load ptr, ptr %4, align 8, !dbg !1017
  %52 = getelementptr inbounds nuw %struct.Fax3BaseState, ptr %51, i32 0, i32 8, !dbg !1018
  store ptr null, ptr %52, align 8, !dbg !1019
  %53 = load ptr, ptr %3, align 8, !dbg !1020
  %54 = getelementptr inbounds nuw %struct.tiff, ptr %53, i32 0, i32 2, !dbg !1022
  %55 = load i32, ptr %54, align 4, !dbg !1022
  %56 = icmp eq i32 %55, 0, !dbg !1023
  br i1 %56, label %57, label %68, !dbg !1023

57:                                               ; preds = %26
  %58 = load ptr, ptr %3, align 8, !dbg !1024
  %59 = getelementptr inbounds nuw %struct.tiff, ptr %58, i32 0, i32 3, !dbg !1026
  %60 = load i32, ptr %59, align 8, !dbg !1027
  %61 = or i32 %60, 256, !dbg !1027
  store i32 %61, ptr %59, align 8, !dbg !1027
  %62 = load ptr, ptr %3, align 8, !dbg !1028
  %63 = getelementptr inbounds nuw %struct.tiff, ptr %62, i32 0, i32 37, !dbg !1028
  %64 = load ptr, ptr %63, align 8, !dbg !1028
  %65 = getelementptr inbounds nuw %struct.Fax3DecodeState, ptr %64, i32 0, i32 6, !dbg !1029
  store ptr null, ptr %65, align 8, !dbg !1030
  %66 = load ptr, ptr %3, align 8, !dbg !1031
  %67 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %66, i32 noundef 65540, ptr noundef @_TIFFFax3fillruns), !dbg !1032
  br label %73, !dbg !1033

68:                                               ; preds = %26
  %69 = load ptr, ptr %3, align 8, !dbg !1034
  %70 = getelementptr inbounds nuw %struct.tiff, ptr %69, i32 0, i32 37, !dbg !1034
  %71 = load ptr, ptr %70, align 8, !dbg !1034
  %72 = getelementptr inbounds nuw %struct.Fax3EncodeState, ptr %71, i32 0, i32 4, !dbg !1035
  store ptr null, ptr %72, align 8, !dbg !1036
  br label %73

73:                                               ; preds = %68, %57
  %74 = load ptr, ptr %3, align 8, !dbg !1037
  %75 = getelementptr inbounds nuw %struct.tiff, ptr %74, i32 0, i32 21, !dbg !1038
  store ptr @Fax3SetupState, ptr %75, align 8, !dbg !1039
  %76 = load ptr, ptr %3, align 8, !dbg !1040
  %77 = getelementptr inbounds nuw %struct.tiff, ptr %76, i32 0, i32 22, !dbg !1041
  store ptr @Fax3PreDecode, ptr %77, align 8, !dbg !1042
  %78 = load ptr, ptr %3, align 8, !dbg !1043
  %79 = getelementptr inbounds nuw %struct.tiff, ptr %78, i32 0, i32 26, !dbg !1044
  store ptr @Fax3Decode1D, ptr %79, align 8, !dbg !1045
  %80 = load ptr, ptr %3, align 8, !dbg !1046
  %81 = getelementptr inbounds nuw %struct.tiff, ptr %80, i32 0, i32 28, !dbg !1047
  store ptr @Fax3Decode1D, ptr %81, align 8, !dbg !1048
  %82 = load ptr, ptr %3, align 8, !dbg !1049
  %83 = getelementptr inbounds nuw %struct.tiff, ptr %82, i32 0, i32 30, !dbg !1050
  store ptr @Fax3Decode1D, ptr %83, align 8, !dbg !1051
  %84 = load ptr, ptr %3, align 8, !dbg !1052
  %85 = getelementptr inbounds nuw %struct.tiff, ptr %84, i32 0, i32 23, !dbg !1053
  store ptr @Fax3SetupState, ptr %85, align 8, !dbg !1054
  %86 = load ptr, ptr %3, align 8, !dbg !1055
  %87 = getelementptr inbounds nuw %struct.tiff, ptr %86, i32 0, i32 24, !dbg !1056
  store ptr @Fax3PreEncode, ptr %87, align 8, !dbg !1057
  %88 = load ptr, ptr %3, align 8, !dbg !1058
  %89 = getelementptr inbounds nuw %struct.tiff, ptr %88, i32 0, i32 25, !dbg !1059
  store ptr @Fax3PostEncode, ptr %89, align 8, !dbg !1060
  %90 = load ptr, ptr %3, align 8, !dbg !1061
  %91 = getelementptr inbounds nuw %struct.tiff, ptr %90, i32 0, i32 27, !dbg !1062
  store ptr @Fax3Encode, ptr %91, align 8, !dbg !1063
  %92 = load ptr, ptr %3, align 8, !dbg !1064
  %93 = getelementptr inbounds nuw %struct.tiff, ptr %92, i32 0, i32 29, !dbg !1065
  store ptr @Fax3Encode, ptr %93, align 8, !dbg !1066
  %94 = load ptr, ptr %3, align 8, !dbg !1067
  %95 = getelementptr inbounds nuw %struct.tiff, ptr %94, i32 0, i32 31, !dbg !1068
  store ptr @Fax3Encode, ptr %95, align 8, !dbg !1069
  %96 = load ptr, ptr %3, align 8, !dbg !1070
  %97 = getelementptr inbounds nuw %struct.tiff, ptr %96, i32 0, i32 32, !dbg !1071
  store ptr @Fax3Close, ptr %97, align 8, !dbg !1072
  %98 = load ptr, ptr %3, align 8, !dbg !1073
  %99 = getelementptr inbounds nuw %struct.tiff, ptr %98, i32 0, i32 34, !dbg !1074
  store ptr @Fax3Cleanup, ptr %99, align 8, !dbg !1075
  store i32 1, ptr %2, align 4, !dbg !1076
  br label %100, !dbg !1076

100:                                              ; preds = %73, %22
  %101 = load i32, ptr %2, align 4, !dbg !1077
  ret i32 %101, !dbg !1077
}

declare void @_TIFFMergeFieldInfo(ptr noundef, ptr noundef, i32 noundef) #2

declare i32 @TIFFSetField(ptr noundef, i32 noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @TIFFInitCCITTFax4(ptr noundef %0, i32 noundef %1) #0 !dbg !1078 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
    #dbg_declare(ptr %4, !1079, !DIExpression(), !1080)
  store i32 %1, ptr %5, align 4
    #dbg_declare(ptr %5, !1081, !DIExpression(), !1082)
  %6 = load ptr, ptr %4, align 8, !dbg !1083
  %7 = call i32 @InitCCITTFax3(ptr noundef %6), !dbg !1085
  %8 = icmp ne i32 %7, 0, !dbg !1085
  br i1 %8, label %9, label %27, !dbg !1085

9:                                                ; preds = %2
  %10 = load ptr, ptr %4, align 8, !dbg !1086
  call void @_TIFFMergeFieldInfo(ptr noundef %10, ptr noundef @fax4FieldInfo, i32 noundef 1), !dbg !1088
  %11 = load ptr, ptr %4, align 8, !dbg !1089
  %12 = getelementptr inbounds nuw %struct.tiff, ptr %11, i32 0, i32 26, !dbg !1090
  store ptr @Fax4Decode, ptr %12, align 8, !dbg !1091
  %13 = load ptr, ptr %4, align 8, !dbg !1092
  %14 = getelementptr inbounds nuw %struct.tiff, ptr %13, i32 0, i32 28, !dbg !1093
  store ptr @Fax4Decode, ptr %14, align 8, !dbg !1094
  %15 = load ptr, ptr %4, align 8, !dbg !1095
  %16 = getelementptr inbounds nuw %struct.tiff, ptr %15, i32 0, i32 30, !dbg !1096
  store ptr @Fax4Decode, ptr %16, align 8, !dbg !1097
  %17 = load ptr, ptr %4, align 8, !dbg !1098
  %18 = getelementptr inbounds nuw %struct.tiff, ptr %17, i32 0, i32 27, !dbg !1099
  store ptr @Fax4Encode, ptr %18, align 8, !dbg !1100
  %19 = load ptr, ptr %4, align 8, !dbg !1101
  %20 = getelementptr inbounds nuw %struct.tiff, ptr %19, i32 0, i32 29, !dbg !1102
  store ptr @Fax4Encode, ptr %20, align 8, !dbg !1103
  %21 = load ptr, ptr %4, align 8, !dbg !1104
  %22 = getelementptr inbounds nuw %struct.tiff, ptr %21, i32 0, i32 31, !dbg !1105
  store ptr @Fax4Encode, ptr %22, align 8, !dbg !1106
  %23 = load ptr, ptr %4, align 8, !dbg !1107
  %24 = getelementptr inbounds nuw %struct.tiff, ptr %23, i32 0, i32 25, !dbg !1108
  store ptr @Fax4PostEncode, ptr %24, align 8, !dbg !1109
  %25 = load ptr, ptr %4, align 8, !dbg !1110
  %26 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %25, i32 noundef 65536, i32 noundef 1), !dbg !1111
  store i32 %26, ptr %3, align 4, !dbg !1112
  br label %28, !dbg !1112

27:                                               ; preds = %2
  store i32 0, ptr %3, align 4, !dbg !1113
  br label %28, !dbg !1113

28:                                               ; preds = %27, %9
  %29 = load i32, ptr %3, align 4, !dbg !1114
  ret i32 %29, !dbg !1114
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @Fax4Decode(ptr noundef %0, ptr noundef %1, i32 noundef %2, i16 noundef zeroext %3) #0 !dbg !660 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i16, align 2
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  %19 = alloca ptr, align 8
  %20 = alloca i32, align 4
  %21 = alloca ptr, align 8
  %22 = alloca ptr, align 8
  %23 = alloca i32, align 4
  %24 = alloca ptr, align 8
  %25 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8
    #dbg_declare(ptr %6, !1115, !DIExpression(), !1116)
  store ptr %1, ptr %7, align 8
    #dbg_declare(ptr %7, !1117, !DIExpression(), !1118)
  store i32 %2, ptr %8, align 4
    #dbg_declare(ptr %8, !1119, !DIExpression(), !1120)
  store i16 %3, ptr %9, align 2
    #dbg_declare(ptr %9, !1121, !DIExpression(), !1122)
    #dbg_declare(ptr %10, !1123, !DIExpression(), !1124)
  %26 = load ptr, ptr %6, align 8, !dbg !1124
  %27 = getelementptr inbounds nuw %struct.tiff, ptr %26, i32 0, i32 37, !dbg !1124
  %28 = load ptr, ptr %27, align 8, !dbg !1124
  store ptr %28, ptr %10, align 8, !dbg !1124
    #dbg_declare(ptr %11, !1125, !DIExpression(), !1124)
    #dbg_declare(ptr %12, !1126, !DIExpression(), !1124)
  %29 = load ptr, ptr %10, align 8, !dbg !1124
  %30 = getelementptr inbounds nuw %struct.Fax3DecodeState, ptr %29, i32 0, i32 0, !dbg !1124
  %31 = getelementptr inbounds nuw %struct.Fax3BaseState, ptr %30, i32 0, i32 2, !dbg !1124
  %32 = load i32, ptr %31, align 8, !dbg !1124
  store i32 %32, ptr %12, align 4, !dbg !1124
    #dbg_declare(ptr %13, !1127, !DIExpression(), !1124)
    #dbg_declare(ptr %14, !1128, !DIExpression(), !1124)
    #dbg_declare(ptr %15, !1129, !DIExpression(), !1124)
    #dbg_declare(ptr %16, !1130, !DIExpression(), !1124)
    #dbg_declare(ptr %17, !1131, !DIExpression(), !1124)
    #dbg_declare(ptr %18, !1132, !DIExpression(), !1124)
    #dbg_declare(ptr %19, !1133, !DIExpression(), !1124)
    #dbg_declare(ptr %20, !1134, !DIExpression(), !1124)
    #dbg_declare(ptr %21, !1135, !DIExpression(), !1124)
  %33 = load ptr, ptr %10, align 8, !dbg !1124
  %34 = getelementptr inbounds nuw %struct.Fax3DecodeState, ptr %33, i32 0, i32 1, !dbg !1124
  %35 = load ptr, ptr %34, align 8, !dbg !1124
  store ptr %35, ptr %21, align 8, !dbg !1124
    #dbg_declare(ptr %22, !1136, !DIExpression(), !1124)
    #dbg_declare(ptr %23, !1145, !DIExpression(), !1124)
    #dbg_declare(ptr %24, !1146, !DIExpression(), !1124)
  %36 = load i16, ptr %9, align 2, !dbg !1147
  br label %37, !dbg !1148

37:                                               ; preds = %4
  %38 = load ptr, ptr %10, align 8, !dbg !1149
  %39 = getelementptr inbounds nuw %struct.Fax3DecodeState, ptr %38, i32 0, i32 2, !dbg !1149
  %40 = load i32, ptr %39, align 8, !dbg !1149
  store i32 %40, ptr %13, align 4, !dbg !1149
  %41 = load ptr, ptr %10, align 8, !dbg !1149
  %42 = getelementptr inbounds nuw %struct.Fax3DecodeState, ptr %41, i32 0, i32 3, !dbg !1149
  %43 = load i32, ptr %42, align 4, !dbg !1149
  store i32 %43, ptr %14, align 4, !dbg !1149
  %44 = load ptr, ptr %10, align 8, !dbg !1149
  %45 = getelementptr inbounds nuw %struct.Fax3DecodeState, ptr %44, i32 0, i32 4, !dbg !1149
  %46 = load i32, ptr %45, align 8, !dbg !1149
  store i32 %46, ptr %20, align 4, !dbg !1149
  %47 = load ptr, ptr %6, align 8, !dbg !1149
  %48 = getelementptr inbounds nuw %struct.tiff, ptr %47, i32 0, i32 42, !dbg !1149
  %49 = load ptr, ptr %48, align 8, !dbg !1149
  store ptr %49, ptr %16, align 8, !dbg !1149
  %50 = load ptr, ptr %16, align 8, !dbg !1149
  %51 = load ptr, ptr %6, align 8, !dbg !1149
  %52 = getelementptr inbounds nuw %struct.tiff, ptr %51, i32 0, i32 43, !dbg !1149
  %53 = load i32, ptr %52, align 8, !dbg !1149
  %54 = sext i32 %53 to i64, !dbg !1149
  %55 = getelementptr inbounds i8, ptr %50, i64 %54, !dbg !1149
  store ptr %55, ptr %17, align 8, !dbg !1149
  br label %56, !dbg !1149

56:                                               ; preds = %37
  br label %57, !dbg !1151

57:                                               ; preds = %1196, %56
  %58 = load i32, ptr %8, align 4, !dbg !1152
  %59 = sext i32 %58 to i64, !dbg !1153
  %60 = icmp sgt i64 %59, 0, !dbg !1154
  br i1 %60, label %61, label %1232, !dbg !1151

61:                                               ; preds = %57
  store i32 0, ptr %11, align 4, !dbg !1155
  store i32 0, ptr %15, align 4, !dbg !1157
  %62 = load ptr, ptr %10, align 8, !dbg !1158
  %63 = getelementptr inbounds nuw %struct.Fax3DecodeState, ptr %62, i32 0, i32 8, !dbg !1159
  %64 = load ptr, ptr %63, align 8, !dbg !1159
  store ptr %64, ptr %19, align 8, !dbg !1160
  store ptr %64, ptr %18, align 8, !dbg !1161
  %65 = load ptr, ptr %10, align 8, !dbg !1162
  %66 = getelementptr inbounds nuw %struct.Fax3DecodeState, ptr %65, i32 0, i32 7, !dbg !1163
  %67 = load ptr, ptr %66, align 8, !dbg !1163
  store ptr %67, ptr %24, align 8, !dbg !1164
  %68 = load ptr, ptr %24, align 8, !dbg !1165
  %69 = getelementptr inbounds nuw i32, ptr %68, i32 1, !dbg !1165
  store ptr %69, ptr %24, align 8, !dbg !1165
  %70 = load i32, ptr %68, align 4, !dbg !1166
  store i32 %70, ptr %23, align 4, !dbg !1167
  br label %71, !dbg !1168

71:                                               ; preds = %61
  br label %72, !dbg !1169

72:                                               ; preds = %982, %71
  %73 = load i32, ptr %11, align 4, !dbg !1169
  %74 = load i32, ptr %12, align 4, !dbg !1169
  %75 = icmp slt i32 %73, %74, !dbg !1169
  br i1 %75, label %76, label %983, !dbg !1169

76:                                               ; preds = %72
  br label %77, !dbg !1171

77:                                               ; preds = %76
  br label %78, !dbg !1173

78:                                               ; preds = %77
  %79 = load i32, ptr %14, align 4, !dbg !1175
  %80 = icmp slt i32 %79, 7, !dbg !1175
  br i1 %80, label %81, label %106, !dbg !1175

81:                                               ; preds = %78
  %82 = load ptr, ptr %16, align 8, !dbg !1178
  %83 = load ptr, ptr %17, align 8, !dbg !1178
  %84 = icmp uge ptr %82, %83, !dbg !1178
  br i1 %84, label %85, label %90, !dbg !1178

85:                                               ; preds = %81
  %86 = load i32, ptr %14, align 4, !dbg !1181
  %87 = icmp eq i32 %86, 0, !dbg !1181
  br i1 %87, label %88, label %89, !dbg !1181

88:                                               ; preds = %85
  br label %875, !dbg !1181

89:                                               ; preds = %85
  store i32 7, ptr %14, align 4, !dbg !1184
  br label %105, !dbg !1184

90:                                               ; preds = %81
  %91 = load ptr, ptr %21, align 8, !dbg !1185
  %92 = load ptr, ptr %16, align 8, !dbg !1185
  %93 = getelementptr inbounds nuw i8, ptr %92, i32 1, !dbg !1185
  store ptr %93, ptr %16, align 8, !dbg !1185
  %94 = load i8, ptr %92, align 1, !dbg !1185
  %95 = zext i8 %94 to i64, !dbg !1185
  %96 = getelementptr inbounds nuw i8, ptr %91, i64 %95, !dbg !1185
  %97 = load i8, ptr %96, align 1, !dbg !1185
  %98 = zext i8 %97 to i32, !dbg !1185
  %99 = load i32, ptr %14, align 4, !dbg !1185
  %100 = shl i32 %98, %99, !dbg !1185
  %101 = load i32, ptr %13, align 4, !dbg !1185
  %102 = or i32 %101, %100, !dbg !1185
  store i32 %102, ptr %13, align 4, !dbg !1185
  %103 = load i32, ptr %14, align 4, !dbg !1185
  %104 = add nsw i32 %103, 8, !dbg !1185
  store i32 %104, ptr %14, align 4, !dbg !1185
  br label %105

105:                                              ; preds = %90, %89
  br label %106, !dbg !1187

106:                                              ; preds = %105, %78
  br label %107, !dbg !1188

107:                                              ; preds = %106
  %108 = load i32, ptr %13, align 4, !dbg !1173
  %109 = and i32 %108, 127, !dbg !1173
  %110 = zext i32 %109 to i64, !dbg !1173
  %111 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr @TIFFFaxMainTable, i64 %110, !dbg !1173
  store ptr %111, ptr %22, align 8, !dbg !1173
  br label %112, !dbg !1173

112:                                              ; preds = %107
  %113 = load ptr, ptr %22, align 8, !dbg !1189
  %114 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr %113, i32 0, i32 1, !dbg !1189
  %115 = load i8, ptr %114, align 1, !dbg !1189
  %116 = zext i8 %115 to i32, !dbg !1189
  %117 = load i32, ptr %14, align 4, !dbg !1189
  %118 = sub nsw i32 %117, %116, !dbg !1189
  store i32 %118, ptr %14, align 4, !dbg !1189
  %119 = load ptr, ptr %22, align 8, !dbg !1189
  %120 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr %119, i32 0, i32 1, !dbg !1189
  %121 = load i8, ptr %120, align 1, !dbg !1189
  %122 = zext i8 %121 to i32, !dbg !1189
  %123 = load i32, ptr %13, align 4, !dbg !1189
  %124 = lshr i32 %123, %122, !dbg !1189
  store i32 %124, ptr %13, align 4, !dbg !1189
  br label %125, !dbg !1189

125:                                              ; preds = %112
  br label %126, !dbg !1173

126:                                              ; preds = %125
  %127 = load ptr, ptr %22, align 8, !dbg !1171
  %128 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr %127, i32 0, i32 0, !dbg !1171
  %129 = load i8, ptr %128, align 4, !dbg !1171
  %130 = zext i8 %129 to i32, !dbg !1171
  switch i32 %130, label %865 [
    i32 1, label %131
    i32 2, label %178
    i32 3, label %648
    i32 4, label %698
    i32 5, label %756
    i32 6, label %814
    i32 12, label %822
  ], !dbg !1171

131:                                              ; preds = %126
  br label %132, !dbg !1191

132:                                              ; preds = %131
  %133 = load ptr, ptr %18, align 8, !dbg !1193
  %134 = load ptr, ptr %19, align 8, !dbg !1193
  %135 = icmp ne ptr %133, %134, !dbg !1193
  br i1 %135, label %136, label %160, !dbg !1193

136:                                              ; preds = %132
  br label %137, !dbg !1193

137:                                              ; preds = %147, %136
  %138 = load i32, ptr %23, align 4, !dbg !1193
  %139 = load i32, ptr %11, align 4, !dbg !1193
  %140 = icmp sle i32 %138, %139, !dbg !1193
  br i1 %140, label %141, label %145, !dbg !1193

141:                                              ; preds = %137
  %142 = load i32, ptr %23, align 4, !dbg !1193
  %143 = load i32, ptr %12, align 4, !dbg !1193
  %144 = icmp slt i32 %142, %143, !dbg !1193
  br label %145

145:                                              ; preds = %141, %137
  %146 = phi i1 [ false, %137 ], [ %144, %141 ], !dbg !1196
  br i1 %146, label %147, label %159, !dbg !1193

147:                                              ; preds = %145
  %148 = load ptr, ptr %24, align 8, !dbg !1197
  %149 = getelementptr inbounds i32, ptr %148, i64 0, !dbg !1197
  %150 = load i32, ptr %149, align 4, !dbg !1197
  %151 = load ptr, ptr %24, align 8, !dbg !1197
  %152 = getelementptr inbounds i32, ptr %151, i64 1, !dbg !1197
  %153 = load i32, ptr %152, align 4, !dbg !1197
  %154 = add i32 %150, %153, !dbg !1197
  %155 = load i32, ptr %23, align 4, !dbg !1197
  %156 = add i32 %155, %154, !dbg !1197
  store i32 %156, ptr %23, align 4, !dbg !1197
  %157 = load ptr, ptr %24, align 8, !dbg !1197
  %158 = getelementptr inbounds i32, ptr %157, i64 2, !dbg !1197
  store ptr %158, ptr %24, align 8, !dbg !1197
  br label %137, !dbg !1193, !llvm.loop !1199

159:                                              ; preds = %145
  br label %160, !dbg !1193

160:                                              ; preds = %159, %132
  br label %161, !dbg !1200

161:                                              ; preds = %160
  %162 = load ptr, ptr %24, align 8, !dbg !1191
  %163 = getelementptr inbounds nuw i32, ptr %162, i32 1, !dbg !1191
  store ptr %163, ptr %24, align 8, !dbg !1191
  %164 = load i32, ptr %162, align 4, !dbg !1191
  %165 = load i32, ptr %23, align 4, !dbg !1191
  %166 = add i32 %165, %164, !dbg !1191
  store i32 %166, ptr %23, align 4, !dbg !1191
  %167 = load i32, ptr %23, align 4, !dbg !1191
  %168 = load i32, ptr %11, align 4, !dbg !1191
  %169 = sub nsw i32 %167, %168, !dbg !1191
  %170 = load i32, ptr %15, align 4, !dbg !1191
  %171 = add nsw i32 %170, %169, !dbg !1191
  store i32 %171, ptr %15, align 4, !dbg !1191
  %172 = load i32, ptr %23, align 4, !dbg !1191
  store i32 %172, ptr %11, align 4, !dbg !1191
  %173 = load ptr, ptr %24, align 8, !dbg !1191
  %174 = getelementptr inbounds nuw i32, ptr %173, i32 1, !dbg !1191
  store ptr %174, ptr %24, align 8, !dbg !1191
  %175 = load i32, ptr %173, align 4, !dbg !1191
  %176 = load i32, ptr %23, align 4, !dbg !1191
  %177 = add i32 %176, %175, !dbg !1191
  store i32 %177, ptr %23, align 4, !dbg !1191
  br label %982, !dbg !1191

178:                                              ; preds = %126
  %179 = load ptr, ptr %18, align 8, !dbg !1201
  %180 = load ptr, ptr %19, align 8, !dbg !1201
  %181 = ptrtoint ptr %179 to i64, !dbg !1201
  %182 = ptrtoint ptr %180 to i64, !dbg !1201
  %183 = sub i64 %181, %182, !dbg !1201
  %184 = sdiv exact i64 %183, 4, !dbg !1201
  %185 = and i64 %184, 1, !dbg !1201
  %186 = icmp ne i64 %185, 0, !dbg !1201
  br i1 %186, label %187, label %402, !dbg !1201

187:                                              ; preds = %178
  br label %188, !dbg !1203

188:                                              ; preds = %293, %187
  br label %189, !dbg !1205

189:                                              ; preds = %188
  br label %190, !dbg !1209

190:                                              ; preds = %189
  %191 = load i32, ptr %14, align 4, !dbg !1211
  %192 = icmp slt i32 %191, 13, !dbg !1211
  br i1 %192, label %193, label %241, !dbg !1211

193:                                              ; preds = %190
  %194 = load ptr, ptr %16, align 8, !dbg !1214
  %195 = load ptr, ptr %17, align 8, !dbg !1214
  %196 = icmp uge ptr %194, %195, !dbg !1214
  br i1 %196, label %197, label %202, !dbg !1214

197:                                              ; preds = %193
  %198 = load i32, ptr %14, align 4, !dbg !1217
  %199 = icmp eq i32 %198, 0, !dbg !1217
  br i1 %199, label %200, label %201, !dbg !1217

200:                                              ; preds = %197
  br label %875, !dbg !1217

201:                                              ; preds = %197
  store i32 13, ptr %14, align 4, !dbg !1220
  br label %240, !dbg !1220

202:                                              ; preds = %193
  %203 = load ptr, ptr %21, align 8, !dbg !1221
  %204 = load ptr, ptr %16, align 8, !dbg !1221
  %205 = getelementptr inbounds nuw i8, ptr %204, i32 1, !dbg !1221
  store ptr %205, ptr %16, align 8, !dbg !1221
  %206 = load i8, ptr %204, align 1, !dbg !1221
  %207 = zext i8 %206 to i64, !dbg !1221
  %208 = getelementptr inbounds nuw i8, ptr %203, i64 %207, !dbg !1221
  %209 = load i8, ptr %208, align 1, !dbg !1221
  %210 = zext i8 %209 to i32, !dbg !1221
  %211 = load i32, ptr %14, align 4, !dbg !1221
  %212 = shl i32 %210, %211, !dbg !1221
  %213 = load i32, ptr %13, align 4, !dbg !1221
  %214 = or i32 %213, %212, !dbg !1221
  store i32 %214, ptr %13, align 4, !dbg !1221
  %215 = load i32, ptr %14, align 4, !dbg !1223
  %216 = add nsw i32 %215, 8, !dbg !1223
  store i32 %216, ptr %14, align 4, !dbg !1223
  %217 = icmp slt i32 %216, 13, !dbg !1223
  br i1 %217, label %218, label %239, !dbg !1223

218:                                              ; preds = %202
  %219 = load ptr, ptr %16, align 8, !dbg !1225
  %220 = load ptr, ptr %17, align 8, !dbg !1225
  %221 = icmp uge ptr %219, %220, !dbg !1225
  br i1 %221, label %222, label %223, !dbg !1225

222:                                              ; preds = %218
  store i32 13, ptr %14, align 4, !dbg !1228
  br label %238, !dbg !1228

223:                                              ; preds = %218
  %224 = load ptr, ptr %21, align 8, !dbg !1230
  %225 = load ptr, ptr %16, align 8, !dbg !1230
  %226 = getelementptr inbounds nuw i8, ptr %225, i32 1, !dbg !1230
  store ptr %226, ptr %16, align 8, !dbg !1230
  %227 = load i8, ptr %225, align 1, !dbg !1230
  %228 = zext i8 %227 to i64, !dbg !1230
  %229 = getelementptr inbounds nuw i8, ptr %224, i64 %228, !dbg !1230
  %230 = load i8, ptr %229, align 1, !dbg !1230
  %231 = zext i8 %230 to i32, !dbg !1230
  %232 = load i32, ptr %14, align 4, !dbg !1230
  %233 = shl i32 %231, %232, !dbg !1230
  %234 = load i32, ptr %13, align 4, !dbg !1230
  %235 = or i32 %234, %233, !dbg !1230
  store i32 %235, ptr %13, align 4, !dbg !1230
  %236 = load i32, ptr %14, align 4, !dbg !1230
  %237 = add nsw i32 %236, 8, !dbg !1230
  store i32 %237, ptr %14, align 4, !dbg !1230
  br label %238

238:                                              ; preds = %223, %222
  br label %239, !dbg !1232

239:                                              ; preds = %238, %202
  br label %240

240:                                              ; preds = %239, %201
  br label %241, !dbg !1233

241:                                              ; preds = %240, %190
  br label %242, !dbg !1234

242:                                              ; preds = %241
  %243 = load i32, ptr %13, align 4, !dbg !1209
  %244 = and i32 %243, 8191, !dbg !1209
  %245 = zext i32 %244 to i64, !dbg !1209
  %246 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr @TIFFFaxBlackTable, i64 %245, !dbg !1209
  store ptr %246, ptr %22, align 8, !dbg !1209
  br label %247, !dbg !1209

247:                                              ; preds = %242
  %248 = load ptr, ptr %22, align 8, !dbg !1235
  %249 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr %248, i32 0, i32 1, !dbg !1235
  %250 = load i8, ptr %249, align 1, !dbg !1235
  %251 = zext i8 %250 to i32, !dbg !1235
  %252 = load i32, ptr %14, align 4, !dbg !1235
  %253 = sub nsw i32 %252, %251, !dbg !1235
  store i32 %253, ptr %14, align 4, !dbg !1235
  %254 = load ptr, ptr %22, align 8, !dbg !1235
  %255 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr %254, i32 0, i32 1, !dbg !1235
  %256 = load i8, ptr %255, align 1, !dbg !1235
  %257 = zext i8 %256 to i32, !dbg !1235
  %258 = load i32, ptr %13, align 4, !dbg !1235
  %259 = lshr i32 %258, %257, !dbg !1235
  store i32 %259, ptr %13, align 4, !dbg !1235
  br label %260, !dbg !1235

260:                                              ; preds = %247
  br label %261, !dbg !1209

261:                                              ; preds = %260
  %262 = load ptr, ptr %22, align 8, !dbg !1205
  %263 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr %262, i32 0, i32 0, !dbg !1205
  %264 = load i8, ptr %263, align 4, !dbg !1205
  %265 = zext i8 %264 to i32, !dbg !1205
  switch i32 %265, label %292 [
    i32 8, label %266
    i32 10, label %281
    i32 11, label %281
  ], !dbg !1205

266:                                              ; preds = %261
  br label %267, !dbg !1237

267:                                              ; preds = %266
  %268 = load i32, ptr %15, align 4, !dbg !1239
  %269 = load ptr, ptr %22, align 8, !dbg !1239
  %270 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr %269, i32 0, i32 2, !dbg !1239
  %271 = load i32, ptr %270, align 4, !dbg !1239
  %272 = add i32 %268, %271, !dbg !1239
  %273 = load ptr, ptr %18, align 8, !dbg !1239
  %274 = getelementptr inbounds nuw i32, ptr %273, i32 1, !dbg !1239
  store ptr %274, ptr %18, align 8, !dbg !1239
  store i32 %272, ptr %273, align 4, !dbg !1239
  %275 = load ptr, ptr %22, align 8, !dbg !1239
  %276 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr %275, i32 0, i32 2, !dbg !1239
  %277 = load i32, ptr %276, align 4, !dbg !1239
  %278 = load i32, ptr %11, align 4, !dbg !1239
  %279 = add i32 %278, %277, !dbg !1239
  store i32 %279, ptr %11, align 4, !dbg !1239
  store i32 0, ptr %15, align 4, !dbg !1239
  br label %280, !dbg !1239

280:                                              ; preds = %267
  br label %294, !dbg !1237

281:                                              ; preds = %261, %261
  %282 = load ptr, ptr %22, align 8, !dbg !1237
  %283 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr %282, i32 0, i32 2, !dbg !1237
  %284 = load i32, ptr %283, align 4, !dbg !1237
  %285 = load i32, ptr %11, align 4, !dbg !1237
  %286 = add i32 %285, %284, !dbg !1237
  store i32 %286, ptr %11, align 4, !dbg !1237
  %287 = load ptr, ptr %22, align 8, !dbg !1237
  %288 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr %287, i32 0, i32 2, !dbg !1237
  %289 = load i32, ptr %288, align 4, !dbg !1237
  %290 = load i32, ptr %15, align 4, !dbg !1237
  %291 = add i32 %290, %289, !dbg !1237
  store i32 %291, ptr %15, align 4, !dbg !1237
  br label %293, !dbg !1237

292:                                              ; preds = %261
  br label %869, !dbg !1237

293:                                              ; preds = %281
  br label %188, !dbg !1241, !llvm.loop !1242

294:                                              ; preds = %280
    #dbg_label(!1244, !1203)
  br label %295, !dbg !1203

295:                                              ; preds = %400, %294
  br label %296, !dbg !1245

296:                                              ; preds = %295
  br label %297, !dbg !1249

297:                                              ; preds = %296
  %298 = load i32, ptr %14, align 4, !dbg !1251
  %299 = icmp slt i32 %298, 12, !dbg !1251
  br i1 %299, label %300, label %348, !dbg !1251

300:                                              ; preds = %297
  %301 = load ptr, ptr %16, align 8, !dbg !1254
  %302 = load ptr, ptr %17, align 8, !dbg !1254
  %303 = icmp uge ptr %301, %302, !dbg !1254
  br i1 %303, label %304, label %309, !dbg !1254

304:                                              ; preds = %300
  %305 = load i32, ptr %14, align 4, !dbg !1257
  %306 = icmp eq i32 %305, 0, !dbg !1257
  br i1 %306, label %307, label %308, !dbg !1257

307:                                              ; preds = %304
  br label %875, !dbg !1257

308:                                              ; preds = %304
  store i32 12, ptr %14, align 4, !dbg !1260
  br label %347, !dbg !1260

309:                                              ; preds = %300
  %310 = load ptr, ptr %21, align 8, !dbg !1261
  %311 = load ptr, ptr %16, align 8, !dbg !1261
  %312 = getelementptr inbounds nuw i8, ptr %311, i32 1, !dbg !1261
  store ptr %312, ptr %16, align 8, !dbg !1261
  %313 = load i8, ptr %311, align 1, !dbg !1261
  %314 = zext i8 %313 to i64, !dbg !1261
  %315 = getelementptr inbounds nuw i8, ptr %310, i64 %314, !dbg !1261
  %316 = load i8, ptr %315, align 1, !dbg !1261
  %317 = zext i8 %316 to i32, !dbg !1261
  %318 = load i32, ptr %14, align 4, !dbg !1261
  %319 = shl i32 %317, %318, !dbg !1261
  %320 = load i32, ptr %13, align 4, !dbg !1261
  %321 = or i32 %320, %319, !dbg !1261
  store i32 %321, ptr %13, align 4, !dbg !1261
  %322 = load i32, ptr %14, align 4, !dbg !1263
  %323 = add nsw i32 %322, 8, !dbg !1263
  store i32 %323, ptr %14, align 4, !dbg !1263
  %324 = icmp slt i32 %323, 12, !dbg !1263
  br i1 %324, label %325, label %346, !dbg !1263

325:                                              ; preds = %309
  %326 = load ptr, ptr %16, align 8, !dbg !1265
  %327 = load ptr, ptr %17, align 8, !dbg !1265
  %328 = icmp uge ptr %326, %327, !dbg !1265
  br i1 %328, label %329, label %330, !dbg !1265

329:                                              ; preds = %325
  store i32 12, ptr %14, align 4, !dbg !1268
  br label %345, !dbg !1268

330:                                              ; preds = %325
  %331 = load ptr, ptr %21, align 8, !dbg !1270
  %332 = load ptr, ptr %16, align 8, !dbg !1270
  %333 = getelementptr inbounds nuw i8, ptr %332, i32 1, !dbg !1270
  store ptr %333, ptr %16, align 8, !dbg !1270
  %334 = load i8, ptr %332, align 1, !dbg !1270
  %335 = zext i8 %334 to i64, !dbg !1270
  %336 = getelementptr inbounds nuw i8, ptr %331, i64 %335, !dbg !1270
  %337 = load i8, ptr %336, align 1, !dbg !1270
  %338 = zext i8 %337 to i32, !dbg !1270
  %339 = load i32, ptr %14, align 4, !dbg !1270
  %340 = shl i32 %338, %339, !dbg !1270
  %341 = load i32, ptr %13, align 4, !dbg !1270
  %342 = or i32 %341, %340, !dbg !1270
  store i32 %342, ptr %13, align 4, !dbg !1270
  %343 = load i32, ptr %14, align 4, !dbg !1270
  %344 = add nsw i32 %343, 8, !dbg !1270
  store i32 %344, ptr %14, align 4, !dbg !1270
  br label %345

345:                                              ; preds = %330, %329
  br label %346, !dbg !1272

346:                                              ; preds = %345, %309
  br label %347

347:                                              ; preds = %346, %308
  br label %348, !dbg !1273

348:                                              ; preds = %347, %297
  br label %349, !dbg !1274

349:                                              ; preds = %348
  %350 = load i32, ptr %13, align 4, !dbg !1249
  %351 = and i32 %350, 4095, !dbg !1249
  %352 = zext i32 %351 to i64, !dbg !1249
  %353 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr @TIFFFaxWhiteTable, i64 %352, !dbg !1249
  store ptr %353, ptr %22, align 8, !dbg !1249
  br label %354, !dbg !1249

354:                                              ; preds = %349
  %355 = load ptr, ptr %22, align 8, !dbg !1275
  %356 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr %355, i32 0, i32 1, !dbg !1275
  %357 = load i8, ptr %356, align 1, !dbg !1275
  %358 = zext i8 %357 to i32, !dbg !1275
  %359 = load i32, ptr %14, align 4, !dbg !1275
  %360 = sub nsw i32 %359, %358, !dbg !1275
  store i32 %360, ptr %14, align 4, !dbg !1275
  %361 = load ptr, ptr %22, align 8, !dbg !1275
  %362 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr %361, i32 0, i32 1, !dbg !1275
  %363 = load i8, ptr %362, align 1, !dbg !1275
  %364 = zext i8 %363 to i32, !dbg !1275
  %365 = load i32, ptr %13, align 4, !dbg !1275
  %366 = lshr i32 %365, %364, !dbg !1275
  store i32 %366, ptr %13, align 4, !dbg !1275
  br label %367, !dbg !1275

367:                                              ; preds = %354
  br label %368, !dbg !1249

368:                                              ; preds = %367
  %369 = load ptr, ptr %22, align 8, !dbg !1245
  %370 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr %369, i32 0, i32 0, !dbg !1245
  %371 = load i8, ptr %370, align 4, !dbg !1245
  %372 = zext i8 %371 to i32, !dbg !1245
  switch i32 %372, label %399 [
    i32 7, label %373
    i32 9, label %388
    i32 11, label %388
  ], !dbg !1245

373:                                              ; preds = %368
  br label %374, !dbg !1277

374:                                              ; preds = %373
  %375 = load i32, ptr %15, align 4, !dbg !1279
  %376 = load ptr, ptr %22, align 8, !dbg !1279
  %377 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr %376, i32 0, i32 2, !dbg !1279
  %378 = load i32, ptr %377, align 4, !dbg !1279
  %379 = add i32 %375, %378, !dbg !1279
  %380 = load ptr, ptr %18, align 8, !dbg !1279
  %381 = getelementptr inbounds nuw i32, ptr %380, i32 1, !dbg !1279
  store ptr %381, ptr %18, align 8, !dbg !1279
  store i32 %379, ptr %380, align 4, !dbg !1279
  %382 = load ptr, ptr %22, align 8, !dbg !1279
  %383 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr %382, i32 0, i32 2, !dbg !1279
  %384 = load i32, ptr %383, align 4, !dbg !1279
  %385 = load i32, ptr %11, align 4, !dbg !1279
  %386 = add i32 %385, %384, !dbg !1279
  store i32 %386, ptr %11, align 4, !dbg !1279
  store i32 0, ptr %15, align 4, !dbg !1279
  br label %387, !dbg !1279

387:                                              ; preds = %374
  br label %401, !dbg !1277

388:                                              ; preds = %368, %368
  %389 = load ptr, ptr %22, align 8, !dbg !1277
  %390 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr %389, i32 0, i32 2, !dbg !1277
  %391 = load i32, ptr %390, align 4, !dbg !1277
  %392 = load i32, ptr %11, align 4, !dbg !1277
  %393 = add i32 %392, %391, !dbg !1277
  store i32 %393, ptr %11, align 4, !dbg !1277
  %394 = load ptr, ptr %22, align 8, !dbg !1277
  %395 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr %394, i32 0, i32 2, !dbg !1277
  %396 = load i32, ptr %395, align 4, !dbg !1277
  %397 = load i32, ptr %15, align 4, !dbg !1277
  %398 = add i32 %397, %396, !dbg !1277
  store i32 %398, ptr %15, align 4, !dbg !1277
  br label %400, !dbg !1277

399:                                              ; preds = %368
  br label %872, !dbg !1277

400:                                              ; preds = %388
  br label %295, !dbg !1281, !llvm.loop !1282

401:                                              ; preds = %387
    #dbg_label(!1284, !1203)
  br label %617, !dbg !1203

402:                                              ; preds = %178
  br label %403, !dbg !1285

403:                                              ; preds = %508, %402
  br label %404, !dbg !1287

404:                                              ; preds = %403
  br label %405, !dbg !1291

405:                                              ; preds = %404
  %406 = load i32, ptr %14, align 4, !dbg !1293
  %407 = icmp slt i32 %406, 12, !dbg !1293
  br i1 %407, label %408, label %456, !dbg !1293

408:                                              ; preds = %405
  %409 = load ptr, ptr %16, align 8, !dbg !1296
  %410 = load ptr, ptr %17, align 8, !dbg !1296
  %411 = icmp uge ptr %409, %410, !dbg !1296
  br i1 %411, label %412, label %417, !dbg !1296

412:                                              ; preds = %408
  %413 = load i32, ptr %14, align 4, !dbg !1299
  %414 = icmp eq i32 %413, 0, !dbg !1299
  br i1 %414, label %415, label %416, !dbg !1299

415:                                              ; preds = %412
  br label %875, !dbg !1299

416:                                              ; preds = %412
  store i32 12, ptr %14, align 4, !dbg !1302
  br label %455, !dbg !1302

417:                                              ; preds = %408
  %418 = load ptr, ptr %21, align 8, !dbg !1303
  %419 = load ptr, ptr %16, align 8, !dbg !1303
  %420 = getelementptr inbounds nuw i8, ptr %419, i32 1, !dbg !1303
  store ptr %420, ptr %16, align 8, !dbg !1303
  %421 = load i8, ptr %419, align 1, !dbg !1303
  %422 = zext i8 %421 to i64, !dbg !1303
  %423 = getelementptr inbounds nuw i8, ptr %418, i64 %422, !dbg !1303
  %424 = load i8, ptr %423, align 1, !dbg !1303
  %425 = zext i8 %424 to i32, !dbg !1303
  %426 = load i32, ptr %14, align 4, !dbg !1303
  %427 = shl i32 %425, %426, !dbg !1303
  %428 = load i32, ptr %13, align 4, !dbg !1303
  %429 = or i32 %428, %427, !dbg !1303
  store i32 %429, ptr %13, align 4, !dbg !1303
  %430 = load i32, ptr %14, align 4, !dbg !1305
  %431 = add nsw i32 %430, 8, !dbg !1305
  store i32 %431, ptr %14, align 4, !dbg !1305
  %432 = icmp slt i32 %431, 12, !dbg !1305
  br i1 %432, label %433, label %454, !dbg !1305

433:                                              ; preds = %417
  %434 = load ptr, ptr %16, align 8, !dbg !1307
  %435 = load ptr, ptr %17, align 8, !dbg !1307
  %436 = icmp uge ptr %434, %435, !dbg !1307
  br i1 %436, label %437, label %438, !dbg !1307

437:                                              ; preds = %433
  store i32 12, ptr %14, align 4, !dbg !1310
  br label %453, !dbg !1310

438:                                              ; preds = %433
  %439 = load ptr, ptr %21, align 8, !dbg !1312
  %440 = load ptr, ptr %16, align 8, !dbg !1312
  %441 = getelementptr inbounds nuw i8, ptr %440, i32 1, !dbg !1312
  store ptr %441, ptr %16, align 8, !dbg !1312
  %442 = load i8, ptr %440, align 1, !dbg !1312
  %443 = zext i8 %442 to i64, !dbg !1312
  %444 = getelementptr inbounds nuw i8, ptr %439, i64 %443, !dbg !1312
  %445 = load i8, ptr %444, align 1, !dbg !1312
  %446 = zext i8 %445 to i32, !dbg !1312
  %447 = load i32, ptr %14, align 4, !dbg !1312
  %448 = shl i32 %446, %447, !dbg !1312
  %449 = load i32, ptr %13, align 4, !dbg !1312
  %450 = or i32 %449, %448, !dbg !1312
  store i32 %450, ptr %13, align 4, !dbg !1312
  %451 = load i32, ptr %14, align 4, !dbg !1312
  %452 = add nsw i32 %451, 8, !dbg !1312
  store i32 %452, ptr %14, align 4, !dbg !1312
  br label %453

453:                                              ; preds = %438, %437
  br label %454, !dbg !1314

454:                                              ; preds = %453, %417
  br label %455

455:                                              ; preds = %454, %416
  br label %456, !dbg !1315

456:                                              ; preds = %455, %405
  br label %457, !dbg !1316

457:                                              ; preds = %456
  %458 = load i32, ptr %13, align 4, !dbg !1291
  %459 = and i32 %458, 4095, !dbg !1291
  %460 = zext i32 %459 to i64, !dbg !1291
  %461 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr @TIFFFaxWhiteTable, i64 %460, !dbg !1291
  store ptr %461, ptr %22, align 8, !dbg !1291
  br label %462, !dbg !1291

462:                                              ; preds = %457
  %463 = load ptr, ptr %22, align 8, !dbg !1317
  %464 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr %463, i32 0, i32 1, !dbg !1317
  %465 = load i8, ptr %464, align 1, !dbg !1317
  %466 = zext i8 %465 to i32, !dbg !1317
  %467 = load i32, ptr %14, align 4, !dbg !1317
  %468 = sub nsw i32 %467, %466, !dbg !1317
  store i32 %468, ptr %14, align 4, !dbg !1317
  %469 = load ptr, ptr %22, align 8, !dbg !1317
  %470 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr %469, i32 0, i32 1, !dbg !1317
  %471 = load i8, ptr %470, align 1, !dbg !1317
  %472 = zext i8 %471 to i32, !dbg !1317
  %473 = load i32, ptr %13, align 4, !dbg !1317
  %474 = lshr i32 %473, %472, !dbg !1317
  store i32 %474, ptr %13, align 4, !dbg !1317
  br label %475, !dbg !1317

475:                                              ; preds = %462
  br label %476, !dbg !1291

476:                                              ; preds = %475
  %477 = load ptr, ptr %22, align 8, !dbg !1287
  %478 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr %477, i32 0, i32 0, !dbg !1287
  %479 = load i8, ptr %478, align 4, !dbg !1287
  %480 = zext i8 %479 to i32, !dbg !1287
  switch i32 %480, label %507 [
    i32 7, label %481
    i32 9, label %496
    i32 11, label %496
  ], !dbg !1287

481:                                              ; preds = %476
  br label %482, !dbg !1319

482:                                              ; preds = %481
  %483 = load i32, ptr %15, align 4, !dbg !1321
  %484 = load ptr, ptr %22, align 8, !dbg !1321
  %485 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr %484, i32 0, i32 2, !dbg !1321
  %486 = load i32, ptr %485, align 4, !dbg !1321
  %487 = add i32 %483, %486, !dbg !1321
  %488 = load ptr, ptr %18, align 8, !dbg !1321
  %489 = getelementptr inbounds nuw i32, ptr %488, i32 1, !dbg !1321
  store ptr %489, ptr %18, align 8, !dbg !1321
  store i32 %487, ptr %488, align 4, !dbg !1321
  %490 = load ptr, ptr %22, align 8, !dbg !1321
  %491 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr %490, i32 0, i32 2, !dbg !1321
  %492 = load i32, ptr %491, align 4, !dbg !1321
  %493 = load i32, ptr %11, align 4, !dbg !1321
  %494 = add i32 %493, %492, !dbg !1321
  store i32 %494, ptr %11, align 4, !dbg !1321
  store i32 0, ptr %15, align 4, !dbg !1321
  br label %495, !dbg !1321

495:                                              ; preds = %482
  br label %509, !dbg !1319

496:                                              ; preds = %476, %476
  %497 = load ptr, ptr %22, align 8, !dbg !1319
  %498 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr %497, i32 0, i32 2, !dbg !1319
  %499 = load i32, ptr %498, align 4, !dbg !1319
  %500 = load i32, ptr %11, align 4, !dbg !1319
  %501 = add i32 %500, %499, !dbg !1319
  store i32 %501, ptr %11, align 4, !dbg !1319
  %502 = load ptr, ptr %22, align 8, !dbg !1319
  %503 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr %502, i32 0, i32 2, !dbg !1319
  %504 = load i32, ptr %503, align 4, !dbg !1319
  %505 = load i32, ptr %15, align 4, !dbg !1319
  %506 = add i32 %505, %504, !dbg !1319
  store i32 %506, ptr %15, align 4, !dbg !1319
  br label %508, !dbg !1319

507:                                              ; preds = %476
  br label %872, !dbg !1319

508:                                              ; preds = %496
  br label %403, !dbg !1323, !llvm.loop !1324

509:                                              ; preds = %495
    #dbg_label(!1326, !1285)
  br label %510, !dbg !1285

510:                                              ; preds = %615, %509
  br label %511, !dbg !1327

511:                                              ; preds = %510
  br label %512, !dbg !1331

512:                                              ; preds = %511
  %513 = load i32, ptr %14, align 4, !dbg !1333
  %514 = icmp slt i32 %513, 13, !dbg !1333
  br i1 %514, label %515, label %563, !dbg !1333

515:                                              ; preds = %512
  %516 = load ptr, ptr %16, align 8, !dbg !1336
  %517 = load ptr, ptr %17, align 8, !dbg !1336
  %518 = icmp uge ptr %516, %517, !dbg !1336
  br i1 %518, label %519, label %524, !dbg !1336

519:                                              ; preds = %515
  %520 = load i32, ptr %14, align 4, !dbg !1339
  %521 = icmp eq i32 %520, 0, !dbg !1339
  br i1 %521, label %522, label %523, !dbg !1339

522:                                              ; preds = %519
  br label %875, !dbg !1339

523:                                              ; preds = %519
  store i32 13, ptr %14, align 4, !dbg !1342
  br label %562, !dbg !1342

524:                                              ; preds = %515
  %525 = load ptr, ptr %21, align 8, !dbg !1343
  %526 = load ptr, ptr %16, align 8, !dbg !1343
  %527 = getelementptr inbounds nuw i8, ptr %526, i32 1, !dbg !1343
  store ptr %527, ptr %16, align 8, !dbg !1343
  %528 = load i8, ptr %526, align 1, !dbg !1343
  %529 = zext i8 %528 to i64, !dbg !1343
  %530 = getelementptr inbounds nuw i8, ptr %525, i64 %529, !dbg !1343
  %531 = load i8, ptr %530, align 1, !dbg !1343
  %532 = zext i8 %531 to i32, !dbg !1343
  %533 = load i32, ptr %14, align 4, !dbg !1343
  %534 = shl i32 %532, %533, !dbg !1343
  %535 = load i32, ptr %13, align 4, !dbg !1343
  %536 = or i32 %535, %534, !dbg !1343
  store i32 %536, ptr %13, align 4, !dbg !1343
  %537 = load i32, ptr %14, align 4, !dbg !1345
  %538 = add nsw i32 %537, 8, !dbg !1345
  store i32 %538, ptr %14, align 4, !dbg !1345
  %539 = icmp slt i32 %538, 13, !dbg !1345
  br i1 %539, label %540, label %561, !dbg !1345

540:                                              ; preds = %524
  %541 = load ptr, ptr %16, align 8, !dbg !1347
  %542 = load ptr, ptr %17, align 8, !dbg !1347
  %543 = icmp uge ptr %541, %542, !dbg !1347
  br i1 %543, label %544, label %545, !dbg !1347

544:                                              ; preds = %540
  store i32 13, ptr %14, align 4, !dbg !1350
  br label %560, !dbg !1350

545:                                              ; preds = %540
  %546 = load ptr, ptr %21, align 8, !dbg !1352
  %547 = load ptr, ptr %16, align 8, !dbg !1352
  %548 = getelementptr inbounds nuw i8, ptr %547, i32 1, !dbg !1352
  store ptr %548, ptr %16, align 8, !dbg !1352
  %549 = load i8, ptr %547, align 1, !dbg !1352
  %550 = zext i8 %549 to i64, !dbg !1352
  %551 = getelementptr inbounds nuw i8, ptr %546, i64 %550, !dbg !1352
  %552 = load i8, ptr %551, align 1, !dbg !1352
  %553 = zext i8 %552 to i32, !dbg !1352
  %554 = load i32, ptr %14, align 4, !dbg !1352
  %555 = shl i32 %553, %554, !dbg !1352
  %556 = load i32, ptr %13, align 4, !dbg !1352
  %557 = or i32 %556, %555, !dbg !1352
  store i32 %557, ptr %13, align 4, !dbg !1352
  %558 = load i32, ptr %14, align 4, !dbg !1352
  %559 = add nsw i32 %558, 8, !dbg !1352
  store i32 %559, ptr %14, align 4, !dbg !1352
  br label %560

560:                                              ; preds = %545, %544
  br label %561, !dbg !1354

561:                                              ; preds = %560, %524
  br label %562

562:                                              ; preds = %561, %523
  br label %563, !dbg !1355

563:                                              ; preds = %562, %512
  br label %564, !dbg !1356

564:                                              ; preds = %563
  %565 = load i32, ptr %13, align 4, !dbg !1331
  %566 = and i32 %565, 8191, !dbg !1331
  %567 = zext i32 %566 to i64, !dbg !1331
  %568 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr @TIFFFaxBlackTable, i64 %567, !dbg !1331
  store ptr %568, ptr %22, align 8, !dbg !1331
  br label %569, !dbg !1331

569:                                              ; preds = %564
  %570 = load ptr, ptr %22, align 8, !dbg !1357
  %571 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr %570, i32 0, i32 1, !dbg !1357
  %572 = load i8, ptr %571, align 1, !dbg !1357
  %573 = zext i8 %572 to i32, !dbg !1357
  %574 = load i32, ptr %14, align 4, !dbg !1357
  %575 = sub nsw i32 %574, %573, !dbg !1357
  store i32 %575, ptr %14, align 4, !dbg !1357
  %576 = load ptr, ptr %22, align 8, !dbg !1357
  %577 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr %576, i32 0, i32 1, !dbg !1357
  %578 = load i8, ptr %577, align 1, !dbg !1357
  %579 = zext i8 %578 to i32, !dbg !1357
  %580 = load i32, ptr %13, align 4, !dbg !1357
  %581 = lshr i32 %580, %579, !dbg !1357
  store i32 %581, ptr %13, align 4, !dbg !1357
  br label %582, !dbg !1357

582:                                              ; preds = %569
  br label %583, !dbg !1331

583:                                              ; preds = %582
  %584 = load ptr, ptr %22, align 8, !dbg !1327
  %585 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr %584, i32 0, i32 0, !dbg !1327
  %586 = load i8, ptr %585, align 4, !dbg !1327
  %587 = zext i8 %586 to i32, !dbg !1327
  switch i32 %587, label %614 [
    i32 8, label %588
    i32 10, label %603
    i32 11, label %603
  ], !dbg !1327

588:                                              ; preds = %583
  br label %589, !dbg !1359

589:                                              ; preds = %588
  %590 = load i32, ptr %15, align 4, !dbg !1361
  %591 = load ptr, ptr %22, align 8, !dbg !1361
  %592 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr %591, i32 0, i32 2, !dbg !1361
  %593 = load i32, ptr %592, align 4, !dbg !1361
  %594 = add i32 %590, %593, !dbg !1361
  %595 = load ptr, ptr %18, align 8, !dbg !1361
  %596 = getelementptr inbounds nuw i32, ptr %595, i32 1, !dbg !1361
  store ptr %596, ptr %18, align 8, !dbg !1361
  store i32 %594, ptr %595, align 4, !dbg !1361
  %597 = load ptr, ptr %22, align 8, !dbg !1361
  %598 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr %597, i32 0, i32 2, !dbg !1361
  %599 = load i32, ptr %598, align 4, !dbg !1361
  %600 = load i32, ptr %11, align 4, !dbg !1361
  %601 = add i32 %600, %599, !dbg !1361
  store i32 %601, ptr %11, align 4, !dbg !1361
  store i32 0, ptr %15, align 4, !dbg !1361
  br label %602, !dbg !1361

602:                                              ; preds = %589
  br label %616, !dbg !1359

603:                                              ; preds = %583, %583
  %604 = load ptr, ptr %22, align 8, !dbg !1359
  %605 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr %604, i32 0, i32 2, !dbg !1359
  %606 = load i32, ptr %605, align 4, !dbg !1359
  %607 = load i32, ptr %11, align 4, !dbg !1359
  %608 = add i32 %607, %606, !dbg !1359
  store i32 %608, ptr %11, align 4, !dbg !1359
  %609 = load ptr, ptr %22, align 8, !dbg !1359
  %610 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr %609, i32 0, i32 2, !dbg !1359
  %611 = load i32, ptr %610, align 4, !dbg !1359
  %612 = load i32, ptr %15, align 4, !dbg !1359
  %613 = add i32 %612, %611, !dbg !1359
  store i32 %613, ptr %15, align 4, !dbg !1359
  br label %615, !dbg !1359

614:                                              ; preds = %583
  br label %869, !dbg !1359

615:                                              ; preds = %603
  br label %510, !dbg !1363, !llvm.loop !1364

616:                                              ; preds = %602
    #dbg_label(!1366, !1285)
  br label %617

617:                                              ; preds = %616, %401
  br label %618, !dbg !1191

618:                                              ; preds = %617
  %619 = load ptr, ptr %18, align 8, !dbg !1367
  %620 = load ptr, ptr %19, align 8, !dbg !1367
  %621 = icmp ne ptr %619, %620, !dbg !1367
  br i1 %621, label %622, label %646, !dbg !1367

622:                                              ; preds = %618
  br label %623, !dbg !1367

623:                                              ; preds = %633, %622
  %624 = load i32, ptr %23, align 4, !dbg !1367
  %625 = load i32, ptr %11, align 4, !dbg !1367
  %626 = icmp sle i32 %624, %625, !dbg !1367
  br i1 %626, label %627, label %631, !dbg !1367

627:                                              ; preds = %623
  %628 = load i32, ptr %23, align 4, !dbg !1367
  %629 = load i32, ptr %12, align 4, !dbg !1367
  %630 = icmp slt i32 %628, %629, !dbg !1367
  br label %631

631:                                              ; preds = %627, %623
  %632 = phi i1 [ false, %623 ], [ %630, %627 ], !dbg !1370
  br i1 %632, label %633, label %645, !dbg !1367

633:                                              ; preds = %631
  %634 = load ptr, ptr %24, align 8, !dbg !1371
  %635 = getelementptr inbounds i32, ptr %634, i64 0, !dbg !1371
  %636 = load i32, ptr %635, align 4, !dbg !1371
  %637 = load ptr, ptr %24, align 8, !dbg !1371
  %638 = getelementptr inbounds i32, ptr %637, i64 1, !dbg !1371
  %639 = load i32, ptr %638, align 4, !dbg !1371
  %640 = add i32 %636, %639, !dbg !1371
  %641 = load i32, ptr %23, align 4, !dbg !1371
  %642 = add i32 %641, %640, !dbg !1371
  store i32 %642, ptr %23, align 4, !dbg !1371
  %643 = load ptr, ptr %24, align 8, !dbg !1371
  %644 = getelementptr inbounds i32, ptr %643, i64 2, !dbg !1371
  store ptr %644, ptr %24, align 8, !dbg !1371
  br label %623, !dbg !1367, !llvm.loop !1373

645:                                              ; preds = %631
  br label %646, !dbg !1367

646:                                              ; preds = %645, %618
  br label %647, !dbg !1374

647:                                              ; preds = %646
  br label %982, !dbg !1191

648:                                              ; preds = %126
  br label %649, !dbg !1191

649:                                              ; preds = %648
  %650 = load ptr, ptr %18, align 8, !dbg !1375
  %651 = load ptr, ptr %19, align 8, !dbg !1375
  %652 = icmp ne ptr %650, %651, !dbg !1375
  br i1 %652, label %653, label %677, !dbg !1375

653:                                              ; preds = %649
  br label %654, !dbg !1375

654:                                              ; preds = %664, %653
  %655 = load i32, ptr %23, align 4, !dbg !1375
  %656 = load i32, ptr %11, align 4, !dbg !1375
  %657 = icmp sle i32 %655, %656, !dbg !1375
  br i1 %657, label %658, label %662, !dbg !1375

658:                                              ; preds = %654
  %659 = load i32, ptr %23, align 4, !dbg !1375
  %660 = load i32, ptr %12, align 4, !dbg !1375
  %661 = icmp slt i32 %659, %660, !dbg !1375
  br label %662

662:                                              ; preds = %658, %654
  %663 = phi i1 [ false, %654 ], [ %661, %658 ], !dbg !1378
  br i1 %663, label %664, label %676, !dbg !1375

664:                                              ; preds = %662
  %665 = load ptr, ptr %24, align 8, !dbg !1379
  %666 = getelementptr inbounds i32, ptr %665, i64 0, !dbg !1379
  %667 = load i32, ptr %666, align 4, !dbg !1379
  %668 = load ptr, ptr %24, align 8, !dbg !1379
  %669 = getelementptr inbounds i32, ptr %668, i64 1, !dbg !1379
  %670 = load i32, ptr %669, align 4, !dbg !1379
  %671 = add i32 %667, %670, !dbg !1379
  %672 = load i32, ptr %23, align 4, !dbg !1379
  %673 = add i32 %672, %671, !dbg !1379
  store i32 %673, ptr %23, align 4, !dbg !1379
  %674 = load ptr, ptr %24, align 8, !dbg !1379
  %675 = getelementptr inbounds i32, ptr %674, i64 2, !dbg !1379
  store ptr %675, ptr %24, align 8, !dbg !1379
  br label %654, !dbg !1375, !llvm.loop !1381

676:                                              ; preds = %662
  br label %677, !dbg !1375

677:                                              ; preds = %676, %649
  br label %678, !dbg !1382

678:                                              ; preds = %677
  br label %679, !dbg !1191

679:                                              ; preds = %678
  %680 = load i32, ptr %15, align 4, !dbg !1383
  %681 = load i32, ptr %23, align 4, !dbg !1383
  %682 = load i32, ptr %11, align 4, !dbg !1383
  %683 = sub nsw i32 %681, %682, !dbg !1383
  %684 = add nsw i32 %680, %683, !dbg !1383
  %685 = load ptr, ptr %18, align 8, !dbg !1383
  %686 = getelementptr inbounds nuw i32, ptr %685, i32 1, !dbg !1383
  store ptr %686, ptr %18, align 8, !dbg !1383
  store i32 %684, ptr %685, align 4, !dbg !1383
  %687 = load i32, ptr %23, align 4, !dbg !1383
  %688 = load i32, ptr %11, align 4, !dbg !1383
  %689 = sub nsw i32 %687, %688, !dbg !1383
  %690 = load i32, ptr %11, align 4, !dbg !1383
  %691 = add nsw i32 %690, %689, !dbg !1383
  store i32 %691, ptr %11, align 4, !dbg !1383
  store i32 0, ptr %15, align 4, !dbg !1383
  br label %692, !dbg !1383

692:                                              ; preds = %679
  %693 = load ptr, ptr %24, align 8, !dbg !1191
  %694 = getelementptr inbounds nuw i32, ptr %693, i32 1, !dbg !1191
  store ptr %694, ptr %24, align 8, !dbg !1191
  %695 = load i32, ptr %693, align 4, !dbg !1191
  %696 = load i32, ptr %23, align 4, !dbg !1191
  %697 = add i32 %696, %695, !dbg !1191
  store i32 %697, ptr %23, align 4, !dbg !1191
  br label %982, !dbg !1191

698:                                              ; preds = %126
  br label %699, !dbg !1191

699:                                              ; preds = %698
  %700 = load ptr, ptr %18, align 8, !dbg !1385
  %701 = load ptr, ptr %19, align 8, !dbg !1385
  %702 = icmp ne ptr %700, %701, !dbg !1385
  br i1 %702, label %703, label %727, !dbg !1385

703:                                              ; preds = %699
  br label %704, !dbg !1385

704:                                              ; preds = %714, %703
  %705 = load i32, ptr %23, align 4, !dbg !1385
  %706 = load i32, ptr %11, align 4, !dbg !1385
  %707 = icmp sle i32 %705, %706, !dbg !1385
  br i1 %707, label %708, label %712, !dbg !1385

708:                                              ; preds = %704
  %709 = load i32, ptr %23, align 4, !dbg !1385
  %710 = load i32, ptr %12, align 4, !dbg !1385
  %711 = icmp slt i32 %709, %710, !dbg !1385
  br label %712

712:                                              ; preds = %708, %704
  %713 = phi i1 [ false, %704 ], [ %711, %708 ], !dbg !1388
  br i1 %713, label %714, label %726, !dbg !1385

714:                                              ; preds = %712
  %715 = load ptr, ptr %24, align 8, !dbg !1389
  %716 = getelementptr inbounds i32, ptr %715, i64 0, !dbg !1389
  %717 = load i32, ptr %716, align 4, !dbg !1389
  %718 = load ptr, ptr %24, align 8, !dbg !1389
  %719 = getelementptr inbounds i32, ptr %718, i64 1, !dbg !1389
  %720 = load i32, ptr %719, align 4, !dbg !1389
  %721 = add i32 %717, %720, !dbg !1389
  %722 = load i32, ptr %23, align 4, !dbg !1389
  %723 = add i32 %722, %721, !dbg !1389
  store i32 %723, ptr %23, align 4, !dbg !1389
  %724 = load ptr, ptr %24, align 8, !dbg !1389
  %725 = getelementptr inbounds i32, ptr %724, i64 2, !dbg !1389
  store ptr %725, ptr %24, align 8, !dbg !1389
  br label %704, !dbg !1385, !llvm.loop !1391

726:                                              ; preds = %712
  br label %727, !dbg !1385

727:                                              ; preds = %726, %699
  br label %728, !dbg !1392

728:                                              ; preds = %727
  br label %729, !dbg !1191

729:                                              ; preds = %728
  %730 = load i32, ptr %15, align 4, !dbg !1393
  %731 = load i32, ptr %23, align 4, !dbg !1393
  %732 = load i32, ptr %11, align 4, !dbg !1393
  %733 = sub nsw i32 %731, %732, !dbg !1393
  %734 = load ptr, ptr %22, align 8, !dbg !1393
  %735 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr %734, i32 0, i32 2, !dbg !1393
  %736 = load i32, ptr %735, align 4, !dbg !1393
  %737 = add i32 %733, %736, !dbg !1393
  %738 = add i32 %730, %737, !dbg !1393
  %739 = load ptr, ptr %18, align 8, !dbg !1393
  %740 = getelementptr inbounds nuw i32, ptr %739, i32 1, !dbg !1393
  store ptr %740, ptr %18, align 8, !dbg !1393
  store i32 %738, ptr %739, align 4, !dbg !1393
  %741 = load i32, ptr %23, align 4, !dbg !1393
  %742 = load i32, ptr %11, align 4, !dbg !1393
  %743 = sub nsw i32 %741, %742, !dbg !1393
  %744 = load ptr, ptr %22, align 8, !dbg !1393
  %745 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr %744, i32 0, i32 2, !dbg !1393
  %746 = load i32, ptr %745, align 4, !dbg !1393
  %747 = add i32 %743, %746, !dbg !1393
  %748 = load i32, ptr %11, align 4, !dbg !1393
  %749 = add i32 %748, %747, !dbg !1393
  store i32 %749, ptr %11, align 4, !dbg !1393
  store i32 0, ptr %15, align 4, !dbg !1393
  br label %750, !dbg !1393

750:                                              ; preds = %729
  %751 = load ptr, ptr %24, align 8, !dbg !1191
  %752 = getelementptr inbounds nuw i32, ptr %751, i32 1, !dbg !1191
  store ptr %752, ptr %24, align 8, !dbg !1191
  %753 = load i32, ptr %751, align 4, !dbg !1191
  %754 = load i32, ptr %23, align 4, !dbg !1191
  %755 = add i32 %754, %753, !dbg !1191
  store i32 %755, ptr %23, align 4, !dbg !1191
  br label %982, !dbg !1191

756:                                              ; preds = %126
  br label %757, !dbg !1191

757:                                              ; preds = %756
  %758 = load ptr, ptr %18, align 8, !dbg !1395
  %759 = load ptr, ptr %19, align 8, !dbg !1395
  %760 = icmp ne ptr %758, %759, !dbg !1395
  br i1 %760, label %761, label %785, !dbg !1395

761:                                              ; preds = %757
  br label %762, !dbg !1395

762:                                              ; preds = %772, %761
  %763 = load i32, ptr %23, align 4, !dbg !1395
  %764 = load i32, ptr %11, align 4, !dbg !1395
  %765 = icmp sle i32 %763, %764, !dbg !1395
  br i1 %765, label %766, label %770, !dbg !1395

766:                                              ; preds = %762
  %767 = load i32, ptr %23, align 4, !dbg !1395
  %768 = load i32, ptr %12, align 4, !dbg !1395
  %769 = icmp slt i32 %767, %768, !dbg !1395
  br label %770

770:                                              ; preds = %766, %762
  %771 = phi i1 [ false, %762 ], [ %769, %766 ], !dbg !1398
  br i1 %771, label %772, label %784, !dbg !1395

772:                                              ; preds = %770
  %773 = load ptr, ptr %24, align 8, !dbg !1399
  %774 = getelementptr inbounds i32, ptr %773, i64 0, !dbg !1399
  %775 = load i32, ptr %774, align 4, !dbg !1399
  %776 = load ptr, ptr %24, align 8, !dbg !1399
  %777 = getelementptr inbounds i32, ptr %776, i64 1, !dbg !1399
  %778 = load i32, ptr %777, align 4, !dbg !1399
  %779 = add i32 %775, %778, !dbg !1399
  %780 = load i32, ptr %23, align 4, !dbg !1399
  %781 = add i32 %780, %779, !dbg !1399
  store i32 %781, ptr %23, align 4, !dbg !1399
  %782 = load ptr, ptr %24, align 8, !dbg !1399
  %783 = getelementptr inbounds i32, ptr %782, i64 2, !dbg !1399
  store ptr %783, ptr %24, align 8, !dbg !1399
  br label %762, !dbg !1395, !llvm.loop !1401

784:                                              ; preds = %770
  br label %785, !dbg !1395

785:                                              ; preds = %784, %757
  br label %786, !dbg !1402

786:                                              ; preds = %785
  br label %787, !dbg !1191

787:                                              ; preds = %786
  %788 = load i32, ptr %15, align 4, !dbg !1403
  %789 = load i32, ptr %23, align 4, !dbg !1403
  %790 = load i32, ptr %11, align 4, !dbg !1403
  %791 = sub nsw i32 %789, %790, !dbg !1403
  %792 = load ptr, ptr %22, align 8, !dbg !1403
  %793 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr %792, i32 0, i32 2, !dbg !1403
  %794 = load i32, ptr %793, align 4, !dbg !1403
  %795 = sub i32 %791, %794, !dbg !1403
  %796 = add i32 %788, %795, !dbg !1403
  %797 = load ptr, ptr %18, align 8, !dbg !1403
  %798 = getelementptr inbounds nuw i32, ptr %797, i32 1, !dbg !1403
  store ptr %798, ptr %18, align 8, !dbg !1403
  store i32 %796, ptr %797, align 4, !dbg !1403
  %799 = load i32, ptr %23, align 4, !dbg !1403
  %800 = load i32, ptr %11, align 4, !dbg !1403
  %801 = sub nsw i32 %799, %800, !dbg !1403
  %802 = load ptr, ptr %22, align 8, !dbg !1403
  %803 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr %802, i32 0, i32 2, !dbg !1403
  %804 = load i32, ptr %803, align 4, !dbg !1403
  %805 = sub i32 %801, %804, !dbg !1403
  %806 = load i32, ptr %11, align 4, !dbg !1403
  %807 = add i32 %806, %805, !dbg !1403
  store i32 %807, ptr %11, align 4, !dbg !1403
  store i32 0, ptr %15, align 4, !dbg !1403
  br label %808, !dbg !1403

808:                                              ; preds = %787
  %809 = load ptr, ptr %24, align 8, !dbg !1191
  %810 = getelementptr inbounds i32, ptr %809, i32 -1, !dbg !1191
  store ptr %810, ptr %24, align 8, !dbg !1191
  %811 = load i32, ptr %810, align 4, !dbg !1191
  %812 = load i32, ptr %23, align 4, !dbg !1191
  %813 = sub i32 %812, %811, !dbg !1191
  store i32 %813, ptr %23, align 4, !dbg !1191
  br label %982, !dbg !1191

814:                                              ; preds = %126
  %815 = load i32, ptr %12, align 4, !dbg !1191
  %816 = load i32, ptr %11, align 4, !dbg !1191
  %817 = sub nsw i32 %815, %816, !dbg !1191
  %818 = load ptr, ptr %18, align 8, !dbg !1191
  %819 = getelementptr inbounds nuw i32, ptr %818, i32 1, !dbg !1191
  store ptr %819, ptr %18, align 8, !dbg !1191
  store i32 %817, ptr %818, align 4, !dbg !1191
  %820 = load ptr, ptr %6, align 8, !dbg !1191
  %821 = load i32, ptr %11, align 4, !dbg !1191
  call void @Fax3Extension(ptr noundef @Fax4Decode.module, ptr noundef %820, i32 noundef %821), !dbg !1191
  br label %1044, !dbg !1191

822:                                              ; preds = %126
  %823 = load i32, ptr %12, align 4, !dbg !1191
  %824 = load i32, ptr %11, align 4, !dbg !1191
  %825 = sub nsw i32 %823, %824, !dbg !1191
  %826 = load ptr, ptr %18, align 8, !dbg !1191
  %827 = getelementptr inbounds nuw i32, ptr %826, i32 1, !dbg !1191
  store ptr %827, ptr %18, align 8, !dbg !1191
  store i32 %825, ptr %826, align 4, !dbg !1191
  br label %828, !dbg !1191

828:                                              ; preds = %822
  %829 = load i32, ptr %14, align 4, !dbg !1405
  %830 = icmp slt i32 %829, 5, !dbg !1405
  br i1 %830, label %831, label %856, !dbg !1405

831:                                              ; preds = %828
  %832 = load ptr, ptr %16, align 8, !dbg !1408
  %833 = load ptr, ptr %17, align 8, !dbg !1408
  %834 = icmp uge ptr %832, %833, !dbg !1408
  br i1 %834, label %835, label %840, !dbg !1408

835:                                              ; preds = %831
  %836 = load i32, ptr %14, align 4, !dbg !1411
  %837 = icmp eq i32 %836, 0, !dbg !1411
  br i1 %837, label %838, label %839, !dbg !1411

838:                                              ; preds = %835
  br label %875, !dbg !1411

839:                                              ; preds = %835
  store i32 5, ptr %14, align 4, !dbg !1414
  br label %855, !dbg !1414

840:                                              ; preds = %831
  %841 = load ptr, ptr %21, align 8, !dbg !1415
  %842 = load ptr, ptr %16, align 8, !dbg !1415
  %843 = getelementptr inbounds nuw i8, ptr %842, i32 1, !dbg !1415
  store ptr %843, ptr %16, align 8, !dbg !1415
  %844 = load i8, ptr %842, align 1, !dbg !1415
  %845 = zext i8 %844 to i64, !dbg !1415
  %846 = getelementptr inbounds nuw i8, ptr %841, i64 %845, !dbg !1415
  %847 = load i8, ptr %846, align 1, !dbg !1415
  %848 = zext i8 %847 to i32, !dbg !1415
  %849 = load i32, ptr %14, align 4, !dbg !1415
  %850 = shl i32 %848, %849, !dbg !1415
  %851 = load i32, ptr %13, align 4, !dbg !1415
  %852 = or i32 %851, %850, !dbg !1415
  store i32 %852, ptr %13, align 4, !dbg !1415
  %853 = load i32, ptr %14, align 4, !dbg !1415
  %854 = add nsw i32 %853, 8, !dbg !1415
  store i32 %854, ptr %14, align 4, !dbg !1415
  br label %855

855:                                              ; preds = %840, %839
  br label %856, !dbg !1417

856:                                              ; preds = %855, %828
  br label %857, !dbg !1418

857:                                              ; preds = %856
  %858 = load i32, ptr %13, align 4, !dbg !1419
  %859 = and i32 %858, 31, !dbg !1419
  %860 = icmp ne i32 %859, 0, !dbg !1419
  br i1 %860, label %861, label %864, !dbg !1419

861:                                              ; preds = %857
  %862 = load ptr, ptr %6, align 8, !dbg !1419
  %863 = load i32, ptr %11, align 4, !dbg !1419
  call void @Fax3Unexpected(ptr noundef @Fax4Decode.module, ptr noundef %862, i32 noundef %863), !dbg !1419
  br label %864, !dbg !1419

864:                                              ; preds = %861, %857
  store i32 1, ptr %20, align 4, !dbg !1191
  br label %1044, !dbg !1191

865:                                              ; preds = %126
  br label %866, !dbg !1191

866:                                              ; preds = %1026, %865
    #dbg_label(!1421, !1191)
  %867 = load ptr, ptr %6, align 8, !dbg !1191
  %868 = load i32, ptr %11, align 4, !dbg !1191
  call void @Fax3Unexpected(ptr noundef @Fax4Decode.module, ptr noundef %867, i32 noundef %868), !dbg !1191
  br label %1044, !dbg !1191

869:                                              ; preds = %614, %292
    #dbg_label(!1422, !1191)
  %870 = load ptr, ptr %6, align 8, !dbg !1191
  %871 = load i32, ptr %11, align 4, !dbg !1191
  call void @Fax3Unexpected(ptr noundef @Fax4Decode.module, ptr noundef %870, i32 noundef %871), !dbg !1191
  br label %1044, !dbg !1191

872:                                              ; preds = %507, %399
    #dbg_label(!1423, !1191)
  %873 = load ptr, ptr %6, align 8, !dbg !1191
  %874 = load i32, ptr %11, align 4, !dbg !1191
  call void @Fax3Unexpected(ptr noundef @Fax4Decode.module, ptr noundef %873, i32 noundef %874), !dbg !1191
  br label %1044, !dbg !1191

875:                                              ; preds = %1003, %838, %522, %415, %307, %200, %88
    #dbg_label(!1424, !1191)
  %876 = load ptr, ptr %6, align 8, !dbg !1191
  %877 = load i32, ptr %11, align 4, !dbg !1191
  call void @Fax3PrematureEOF(ptr noundef @Fax4Decode.module, ptr noundef %876, i32 noundef %877), !dbg !1191
  br label %878, !dbg !1191

878:                                              ; preds = %875
  %879 = load i32, ptr %15, align 4, !dbg !1425
  %880 = icmp ne i32 %879, 0, !dbg !1425
  br i1 %880, label %881, label %890, !dbg !1425

881:                                              ; preds = %878
  br label %882, !dbg !1425

882:                                              ; preds = %881
  %883 = load i32, ptr %15, align 4, !dbg !1428
  %884 = add nsw i32 %883, 0, !dbg !1428
  %885 = load ptr, ptr %18, align 8, !dbg !1428
  %886 = getelementptr inbounds nuw i32, ptr %885, i32 1, !dbg !1428
  store ptr %886, ptr %18, align 8, !dbg !1428
  store i32 %884, ptr %885, align 4, !dbg !1428
  %887 = load i32, ptr %11, align 4, !dbg !1428
  %888 = add nsw i32 %887, 0, !dbg !1428
  store i32 %888, ptr %11, align 4, !dbg !1428
  store i32 0, ptr %15, align 4, !dbg !1428
  br label %889, !dbg !1428

889:                                              ; preds = %882
  br label %890, !dbg !1428

890:                                              ; preds = %889, %878
  %891 = load i32, ptr %11, align 4, !dbg !1430
  %892 = load i32, ptr %12, align 4, !dbg !1430
  %893 = icmp ne i32 %891, %892, !dbg !1430
  br i1 %893, label %894, label %980, !dbg !1430

894:                                              ; preds = %890
  %895 = load ptr, ptr %6, align 8, !dbg !1432
  %896 = load i32, ptr %11, align 4, !dbg !1432
  %897 = load i32, ptr %12, align 4, !dbg !1432
  call void @Fax3BadLength(ptr noundef @Fax4Decode.module, ptr noundef %895, i32 noundef %896, i32 noundef %897), !dbg !1432
  br label %898, !dbg !1432

898:                                              ; preds = %908, %894
  %899 = load i32, ptr %11, align 4, !dbg !1432
  %900 = load i32, ptr %12, align 4, !dbg !1432
  %901 = icmp sgt i32 %899, %900, !dbg !1432
  br i1 %901, label %902, label %906, !dbg !1432

902:                                              ; preds = %898
  %903 = load ptr, ptr %18, align 8, !dbg !1432
  %904 = load ptr, ptr %19, align 8, !dbg !1432
  %905 = icmp ugt ptr %903, %904, !dbg !1432
  br label %906

906:                                              ; preds = %902, %898
  %907 = phi i1 [ false, %898 ], [ %905, %902 ], !dbg !1434
  br i1 %907, label %908, label %914, !dbg !1432

908:                                              ; preds = %906
  %909 = load ptr, ptr %18, align 8, !dbg !1432
  %910 = getelementptr inbounds i32, ptr %909, i32 -1, !dbg !1432
  store ptr %910, ptr %18, align 8, !dbg !1432
  %911 = load i32, ptr %910, align 4, !dbg !1432
  %912 = load i32, ptr %11, align 4, !dbg !1432
  %913 = sub i32 %912, %911, !dbg !1432
  store i32 %913, ptr %11, align 4, !dbg !1432
  br label %898, !dbg !1432, !llvm.loop !1435

914:                                              ; preds = %906
  %915 = load i32, ptr %11, align 4, !dbg !1436
  %916 = load i32, ptr %12, align 4, !dbg !1436
  %917 = icmp slt i32 %915, %916, !dbg !1436
  br i1 %917, label %918, label %955, !dbg !1436

918:                                              ; preds = %914
  %919 = load i32, ptr %11, align 4, !dbg !1438
  %920 = icmp slt i32 %919, 0, !dbg !1438
  br i1 %920, label %921, label %922, !dbg !1438

921:                                              ; preds = %918
  store i32 0, ptr %11, align 4, !dbg !1438
  br label %922, !dbg !1438

922:                                              ; preds = %921, %918
  %923 = load ptr, ptr %18, align 8, !dbg !1441
  %924 = load ptr, ptr %19, align 8, !dbg !1441
  %925 = ptrtoint ptr %923 to i64, !dbg !1441
  %926 = ptrtoint ptr %924 to i64, !dbg !1441
  %927 = sub i64 %925, %926, !dbg !1441
  %928 = sdiv exact i64 %927, 4, !dbg !1441
  %929 = and i64 %928, 1, !dbg !1441
  %930 = icmp ne i64 %929, 0, !dbg !1441
  br i1 %930, label %931, label %940, !dbg !1441

931:                                              ; preds = %922
  br label %932, !dbg !1441

932:                                              ; preds = %931
  %933 = load i32, ptr %15, align 4, !dbg !1443
  %934 = add nsw i32 %933, 0, !dbg !1443
  %935 = load ptr, ptr %18, align 8, !dbg !1443
  %936 = getelementptr inbounds nuw i32, ptr %935, i32 1, !dbg !1443
  store ptr %936, ptr %18, align 8, !dbg !1443
  store i32 %934, ptr %935, align 4, !dbg !1443
  %937 = load i32, ptr %11, align 4, !dbg !1443
  %938 = add nsw i32 %937, 0, !dbg !1443
  store i32 %938, ptr %11, align 4, !dbg !1443
  store i32 0, ptr %15, align 4, !dbg !1443
  br label %939, !dbg !1443

939:                                              ; preds = %932
  br label %940, !dbg !1443

940:                                              ; preds = %939, %922
  br label %941, !dbg !1445

941:                                              ; preds = %940
  %942 = load i32, ptr %15, align 4, !dbg !1446
  %943 = load i32, ptr %12, align 4, !dbg !1446
  %944 = load i32, ptr %11, align 4, !dbg !1446
  %945 = sub nsw i32 %943, %944, !dbg !1446
  %946 = add nsw i32 %942, %945, !dbg !1446
  %947 = load ptr, ptr %18, align 8, !dbg !1446
  %948 = getelementptr inbounds nuw i32, ptr %947, i32 1, !dbg !1446
  store ptr %948, ptr %18, align 8, !dbg !1446
  store i32 %946, ptr %947, align 4, !dbg !1446
  %949 = load i32, ptr %12, align 4, !dbg !1446
  %950 = load i32, ptr %11, align 4, !dbg !1446
  %951 = sub nsw i32 %949, %950, !dbg !1446
  %952 = load i32, ptr %11, align 4, !dbg !1446
  %953 = add nsw i32 %952, %951, !dbg !1446
  store i32 %953, ptr %11, align 4, !dbg !1446
  store i32 0, ptr %15, align 4, !dbg !1446
  br label %954, !dbg !1446

954:                                              ; preds = %941
  br label %979, !dbg !1445

955:                                              ; preds = %914
  %956 = load i32, ptr %11, align 4, !dbg !1448
  %957 = load i32, ptr %12, align 4, !dbg !1448
  %958 = icmp sgt i32 %956, %957, !dbg !1448
  br i1 %958, label %959, label %978, !dbg !1448

959:                                              ; preds = %955
  br label %960, !dbg !1450

960:                                              ; preds = %959
  %961 = load i32, ptr %15, align 4, !dbg !1452
  %962 = load i32, ptr %12, align 4, !dbg !1452
  %963 = add nsw i32 %961, %962, !dbg !1452
  %964 = load ptr, ptr %18, align 8, !dbg !1452
  %965 = getelementptr inbounds nuw i32, ptr %964, i32 1, !dbg !1452
  store ptr %965, ptr %18, align 8, !dbg !1452
  store i32 %963, ptr %964, align 4, !dbg !1452
  %966 = load i32, ptr %12, align 4, !dbg !1452
  %967 = load i32, ptr %11, align 4, !dbg !1452
  %968 = add nsw i32 %967, %966, !dbg !1452
  store i32 %968, ptr %11, align 4, !dbg !1452
  store i32 0, ptr %15, align 4, !dbg !1452
  br label %969, !dbg !1452

969:                                              ; preds = %960
  br label %970, !dbg !1450

970:                                              ; preds = %969
  %971 = load i32, ptr %15, align 4, !dbg !1454
  %972 = add nsw i32 %971, 0, !dbg !1454
  %973 = load ptr, ptr %18, align 8, !dbg !1454
  %974 = getelementptr inbounds nuw i32, ptr %973, i32 1, !dbg !1454
  store ptr %974, ptr %18, align 8, !dbg !1454
  store i32 %972, ptr %973, align 4, !dbg !1454
  %975 = load i32, ptr %11, align 4, !dbg !1454
  %976 = add nsw i32 %975, 0, !dbg !1454
  store i32 %976, ptr %11, align 4, !dbg !1454
  store i32 0, ptr %15, align 4, !dbg !1454
  br label %977, !dbg !1454

977:                                              ; preds = %970
  br label %978, !dbg !1450

978:                                              ; preds = %977, %955
  br label %979

979:                                              ; preds = %978, %954
  br label %980, !dbg !1432

980:                                              ; preds = %979, %890
  br label %981, !dbg !1456

981:                                              ; preds = %980
  br label %1197, !dbg !1191

982:                                              ; preds = %808, %750, %692, %647, %161
  br label %72, !dbg !1169, !llvm.loop !1457

983:                                              ; preds = %72
  %984 = load i32, ptr %15, align 4, !dbg !1458
  %985 = icmp ne i32 %984, 0, !dbg !1458
  br i1 %985, label %986, label %1043, !dbg !1458

986:                                              ; preds = %983
  %987 = load i32, ptr %15, align 4, !dbg !1460
  %988 = load i32, ptr %11, align 4, !dbg !1460
  %989 = add nsw i32 %987, %988, !dbg !1460
  %990 = load i32, ptr %12, align 4, !dbg !1460
  %991 = icmp slt i32 %989, %990, !dbg !1460
  br i1 %991, label %992, label %1034, !dbg !1460

992:                                              ; preds = %986
  br label %993, !dbg !1463

993:                                              ; preds = %992
  %994 = load i32, ptr %14, align 4, !dbg !1465
  %995 = icmp slt i32 %994, 1, !dbg !1465
  br i1 %995, label %996, label %1021, !dbg !1465

996:                                              ; preds = %993
  %997 = load ptr, ptr %16, align 8, !dbg !1468
  %998 = load ptr, ptr %17, align 8, !dbg !1468
  %999 = icmp uge ptr %997, %998, !dbg !1468
  br i1 %999, label %1000, label %1005, !dbg !1468

1000:                                             ; preds = %996
  %1001 = load i32, ptr %14, align 4, !dbg !1471
  %1002 = icmp eq i32 %1001, 0, !dbg !1471
  br i1 %1002, label %1003, label %1004, !dbg !1471

1003:                                             ; preds = %1000
  br label %875, !dbg !1471

1004:                                             ; preds = %1000
  store i32 1, ptr %14, align 4, !dbg !1474
  br label %1020, !dbg !1474

1005:                                             ; preds = %996
  %1006 = load ptr, ptr %21, align 8, !dbg !1475
  %1007 = load ptr, ptr %16, align 8, !dbg !1475
  %1008 = getelementptr inbounds nuw i8, ptr %1007, i32 1, !dbg !1475
  store ptr %1008, ptr %16, align 8, !dbg !1475
  %1009 = load i8, ptr %1007, align 1, !dbg !1475
  %1010 = zext i8 %1009 to i64, !dbg !1475
  %1011 = getelementptr inbounds nuw i8, ptr %1006, i64 %1010, !dbg !1475
  %1012 = load i8, ptr %1011, align 1, !dbg !1475
  %1013 = zext i8 %1012 to i32, !dbg !1475
  %1014 = load i32, ptr %14, align 4, !dbg !1475
  %1015 = shl i32 %1013, %1014, !dbg !1475
  %1016 = load i32, ptr %13, align 4, !dbg !1475
  %1017 = or i32 %1016, %1015, !dbg !1475
  store i32 %1017, ptr %13, align 4, !dbg !1475
  %1018 = load i32, ptr %14, align 4, !dbg !1475
  %1019 = add nsw i32 %1018, 8, !dbg !1475
  store i32 %1019, ptr %14, align 4, !dbg !1475
  br label %1020

1020:                                             ; preds = %1005, %1004
  br label %1021, !dbg !1477

1021:                                             ; preds = %1020, %993
  br label %1022, !dbg !1478

1022:                                             ; preds = %1021
  %1023 = load i32, ptr %13, align 4, !dbg !1479
  %1024 = and i32 %1023, 1, !dbg !1479
  %1025 = icmp ne i32 %1024, 0, !dbg !1479
  br i1 %1025, label %1027, label %1026, !dbg !1479

1026:                                             ; preds = %1022
  br label %866, !dbg !1479

1027:                                             ; preds = %1022
  br label %1028, !dbg !1463

1028:                                             ; preds = %1027
  %1029 = load i32, ptr %14, align 4, !dbg !1481
  %1030 = sub nsw i32 %1029, 1, !dbg !1481
  store i32 %1030, ptr %14, align 4, !dbg !1481
  %1031 = load i32, ptr %13, align 4, !dbg !1481
  %1032 = lshr i32 %1031, 1, !dbg !1481
  store i32 %1032, ptr %13, align 4, !dbg !1481
  br label %1033, !dbg !1481

1033:                                             ; preds = %1028
  br label %1034, !dbg !1463

1034:                                             ; preds = %1033, %986
  br label %1035, !dbg !1483

1035:                                             ; preds = %1034
  %1036 = load i32, ptr %15, align 4, !dbg !1484
  %1037 = add nsw i32 %1036, 0, !dbg !1484
  %1038 = load ptr, ptr %18, align 8, !dbg !1484
  %1039 = getelementptr inbounds nuw i32, ptr %1038, i32 1, !dbg !1484
  store ptr %1039, ptr %18, align 8, !dbg !1484
  store i32 %1037, ptr %1038, align 4, !dbg !1484
  %1040 = load i32, ptr %11, align 4, !dbg !1484
  %1041 = add nsw i32 %1040, 0, !dbg !1484
  store i32 %1041, ptr %11, align 4, !dbg !1484
  store i32 0, ptr %15, align 4, !dbg !1484
  br label %1042, !dbg !1484

1042:                                             ; preds = %1035
  br label %1043, !dbg !1483

1043:                                             ; preds = %1042, %983
  br label %1044, !dbg !1458

1044:                                             ; preds = %1043, %872, %869, %866, %864, %814
    #dbg_label(!1486, !1169)
  br label %1045, !dbg !1169

1045:                                             ; preds = %1044
  %1046 = load i32, ptr %15, align 4, !dbg !1487
  %1047 = icmp ne i32 %1046, 0, !dbg !1487
  br i1 %1047, label %1048, label %1057, !dbg !1487

1048:                                             ; preds = %1045
  br label %1049, !dbg !1487

1049:                                             ; preds = %1048
  %1050 = load i32, ptr %15, align 4, !dbg !1490
  %1051 = add nsw i32 %1050, 0, !dbg !1490
  %1052 = load ptr, ptr %18, align 8, !dbg !1490
  %1053 = getelementptr inbounds nuw i32, ptr %1052, i32 1, !dbg !1490
  store ptr %1053, ptr %18, align 8, !dbg !1490
  store i32 %1051, ptr %1052, align 4, !dbg !1490
  %1054 = load i32, ptr %11, align 4, !dbg !1490
  %1055 = add nsw i32 %1054, 0, !dbg !1490
  store i32 %1055, ptr %11, align 4, !dbg !1490
  store i32 0, ptr %15, align 4, !dbg !1490
  br label %1056, !dbg !1490

1056:                                             ; preds = %1049
  br label %1057, !dbg !1490

1057:                                             ; preds = %1056, %1045
  %1058 = load i32, ptr %11, align 4, !dbg !1492
  %1059 = load i32, ptr %12, align 4, !dbg !1492
  %1060 = icmp ne i32 %1058, %1059, !dbg !1492
  br i1 %1060, label %1061, label %1147, !dbg !1492

1061:                                             ; preds = %1057
  %1062 = load ptr, ptr %6, align 8, !dbg !1494
  %1063 = load i32, ptr %11, align 4, !dbg !1494
  %1064 = load i32, ptr %12, align 4, !dbg !1494
  call void @Fax3BadLength(ptr noundef @Fax4Decode.module, ptr noundef %1062, i32 noundef %1063, i32 noundef %1064), !dbg !1494
  br label %1065, !dbg !1494

1065:                                             ; preds = %1075, %1061
  %1066 = load i32, ptr %11, align 4, !dbg !1494
  %1067 = load i32, ptr %12, align 4, !dbg !1494
  %1068 = icmp sgt i32 %1066, %1067, !dbg !1494
  br i1 %1068, label %1069, label %1073, !dbg !1494

1069:                                             ; preds = %1065
  %1070 = load ptr, ptr %18, align 8, !dbg !1494
  %1071 = load ptr, ptr %19, align 8, !dbg !1494
  %1072 = icmp ugt ptr %1070, %1071, !dbg !1494
  br label %1073

1073:                                             ; preds = %1069, %1065
  %1074 = phi i1 [ false, %1065 ], [ %1072, %1069 ], !dbg !1496
  br i1 %1074, label %1075, label %1081, !dbg !1494

1075:                                             ; preds = %1073
  %1076 = load ptr, ptr %18, align 8, !dbg !1494
  %1077 = getelementptr inbounds i32, ptr %1076, i32 -1, !dbg !1494
  store ptr %1077, ptr %18, align 8, !dbg !1494
  %1078 = load i32, ptr %1077, align 4, !dbg !1494
  %1079 = load i32, ptr %11, align 4, !dbg !1494
  %1080 = sub i32 %1079, %1078, !dbg !1494
  store i32 %1080, ptr %11, align 4, !dbg !1494
  br label %1065, !dbg !1494, !llvm.loop !1497

1081:                                             ; preds = %1073
  %1082 = load i32, ptr %11, align 4, !dbg !1498
  %1083 = load i32, ptr %12, align 4, !dbg !1498
  %1084 = icmp slt i32 %1082, %1083, !dbg !1498
  br i1 %1084, label %1085, label %1122, !dbg !1498

1085:                                             ; preds = %1081
  %1086 = load i32, ptr %11, align 4, !dbg !1500
  %1087 = icmp slt i32 %1086, 0, !dbg !1500
  br i1 %1087, label %1088, label %1089, !dbg !1500

1088:                                             ; preds = %1085
  store i32 0, ptr %11, align 4, !dbg !1500
  br label %1089, !dbg !1500

1089:                                             ; preds = %1088, %1085
  %1090 = load ptr, ptr %18, align 8, !dbg !1503
  %1091 = load ptr, ptr %19, align 8, !dbg !1503
  %1092 = ptrtoint ptr %1090 to i64, !dbg !1503
  %1093 = ptrtoint ptr %1091 to i64, !dbg !1503
  %1094 = sub i64 %1092, %1093, !dbg !1503
  %1095 = sdiv exact i64 %1094, 4, !dbg !1503
  %1096 = and i64 %1095, 1, !dbg !1503
  %1097 = icmp ne i64 %1096, 0, !dbg !1503
  br i1 %1097, label %1098, label %1107, !dbg !1503

1098:                                             ; preds = %1089
  br label %1099, !dbg !1503

1099:                                             ; preds = %1098
  %1100 = load i32, ptr %15, align 4, !dbg !1505
  %1101 = add nsw i32 %1100, 0, !dbg !1505
  %1102 = load ptr, ptr %18, align 8, !dbg !1505
  %1103 = getelementptr inbounds nuw i32, ptr %1102, i32 1, !dbg !1505
  store ptr %1103, ptr %18, align 8, !dbg !1505
  store i32 %1101, ptr %1102, align 4, !dbg !1505
  %1104 = load i32, ptr %11, align 4, !dbg !1505
  %1105 = add nsw i32 %1104, 0, !dbg !1505
  store i32 %1105, ptr %11, align 4, !dbg !1505
  store i32 0, ptr %15, align 4, !dbg !1505
  br label %1106, !dbg !1505

1106:                                             ; preds = %1099
  br label %1107, !dbg !1505

1107:                                             ; preds = %1106, %1089
  br label %1108, !dbg !1507

1108:                                             ; preds = %1107
  %1109 = load i32, ptr %15, align 4, !dbg !1508
  %1110 = load i32, ptr %12, align 4, !dbg !1508
  %1111 = load i32, ptr %11, align 4, !dbg !1508
  %1112 = sub nsw i32 %1110, %1111, !dbg !1508
  %1113 = add nsw i32 %1109, %1112, !dbg !1508
  %1114 = load ptr, ptr %18, align 8, !dbg !1508
  %1115 = getelementptr inbounds nuw i32, ptr %1114, i32 1, !dbg !1508
  store ptr %1115, ptr %18, align 8, !dbg !1508
  store i32 %1113, ptr %1114, align 4, !dbg !1508
  %1116 = load i32, ptr %12, align 4, !dbg !1508
  %1117 = load i32, ptr %11, align 4, !dbg !1508
  %1118 = sub nsw i32 %1116, %1117, !dbg !1508
  %1119 = load i32, ptr %11, align 4, !dbg !1508
  %1120 = add nsw i32 %1119, %1118, !dbg !1508
  store i32 %1120, ptr %11, align 4, !dbg !1508
  store i32 0, ptr %15, align 4, !dbg !1508
  br label %1121, !dbg !1508

1121:                                             ; preds = %1108
  br label %1146, !dbg !1507

1122:                                             ; preds = %1081
  %1123 = load i32, ptr %11, align 4, !dbg !1510
  %1124 = load i32, ptr %12, align 4, !dbg !1510
  %1125 = icmp sgt i32 %1123, %1124, !dbg !1510
  br i1 %1125, label %1126, label %1145, !dbg !1510

1126:                                             ; preds = %1122
  br label %1127, !dbg !1512

1127:                                             ; preds = %1126
  %1128 = load i32, ptr %15, align 4, !dbg !1514
  %1129 = load i32, ptr %12, align 4, !dbg !1514
  %1130 = add nsw i32 %1128, %1129, !dbg !1514
  %1131 = load ptr, ptr %18, align 8, !dbg !1514
  %1132 = getelementptr inbounds nuw i32, ptr %1131, i32 1, !dbg !1514
  store ptr %1132, ptr %18, align 8, !dbg !1514
  store i32 %1130, ptr %1131, align 4, !dbg !1514
  %1133 = load i32, ptr %12, align 4, !dbg !1514
  %1134 = load i32, ptr %11, align 4, !dbg !1514
  %1135 = add nsw i32 %1134, %1133, !dbg !1514
  store i32 %1135, ptr %11, align 4, !dbg !1514
  store i32 0, ptr %15, align 4, !dbg !1514
  br label %1136, !dbg !1514

1136:                                             ; preds = %1127
  br label %1137, !dbg !1512

1137:                                             ; preds = %1136
  %1138 = load i32, ptr %15, align 4, !dbg !1516
  %1139 = add nsw i32 %1138, 0, !dbg !1516
  %1140 = load ptr, ptr %18, align 8, !dbg !1516
  %1141 = getelementptr inbounds nuw i32, ptr %1140, i32 1, !dbg !1516
  store ptr %1141, ptr %18, align 8, !dbg !1516
  store i32 %1139, ptr %1140, align 4, !dbg !1516
  %1142 = load i32, ptr %11, align 4, !dbg !1516
  %1143 = add nsw i32 %1142, 0, !dbg !1516
  store i32 %1143, ptr %11, align 4, !dbg !1516
  store i32 0, ptr %15, align 4, !dbg !1516
  br label %1144, !dbg !1516

1144:                                             ; preds = %1137
  br label %1145, !dbg !1512

1145:                                             ; preds = %1144, %1122
  br label %1146

1146:                                             ; preds = %1145, %1121
  br label %1147, !dbg !1494

1147:                                             ; preds = %1146, %1057
  br label %1148, !dbg !1518

1148:                                             ; preds = %1147
  br label %1149, !dbg !1169

1149:                                             ; preds = %1148
  %1150 = load ptr, ptr %10, align 8, !dbg !1519
  %1151 = getelementptr inbounds nuw %struct.Fax3DecodeState, ptr %1150, i32 0, i32 5, !dbg !1520
  %1152 = load ptr, ptr %1151, align 8, !dbg !1520
  %1153 = load ptr, ptr %7, align 8, !dbg !1521
  %1154 = load ptr, ptr %19, align 8, !dbg !1522
  %1155 = load ptr, ptr %18, align 8, !dbg !1523
  %1156 = load i32, ptr %12, align 4, !dbg !1524
  call void %1152(ptr noundef %1153, ptr noundef %1154, ptr noundef %1155, i32 noundef %1156), !dbg !1525
  br label %1157, !dbg !1526

1157:                                             ; preds = %1149
  %1158 = load i32, ptr %15, align 4, !dbg !1527
  %1159 = add nsw i32 %1158, 0, !dbg !1527
  %1160 = load ptr, ptr %18, align 8, !dbg !1527
  %1161 = getelementptr inbounds nuw i32, ptr %1160, i32 1, !dbg !1527
  store ptr %1161, ptr %18, align 8, !dbg !1527
  store i32 %1159, ptr %1160, align 4, !dbg !1527
  %1162 = load i32, ptr %11, align 4, !dbg !1527
  %1163 = add nsw i32 %1162, 0, !dbg !1527
  store i32 %1163, ptr %11, align 4, !dbg !1527
  store i32 0, ptr %15, align 4, !dbg !1527
  br label %1164, !dbg !1527

1164:                                             ; preds = %1157
    #dbg_declare(ptr %25, !1529, !DIExpression(), !1531)
  %1165 = load ptr, ptr %10, align 8, !dbg !1531
  %1166 = getelementptr inbounds nuw %struct.Fax3DecodeState, ptr %1165, i32 0, i32 8, !dbg !1531
  %1167 = load ptr, ptr %1166, align 8, !dbg !1531
  store ptr %1167, ptr %25, align 8, !dbg !1531
  %1168 = load ptr, ptr %10, align 8, !dbg !1531
  %1169 = getelementptr inbounds nuw %struct.Fax3DecodeState, ptr %1168, i32 0, i32 7, !dbg !1531
  %1170 = load ptr, ptr %1169, align 8, !dbg !1531
  %1171 = load ptr, ptr %10, align 8, !dbg !1531
  %1172 = getelementptr inbounds nuw %struct.Fax3DecodeState, ptr %1171, i32 0, i32 8, !dbg !1531
  store ptr %1170, ptr %1172, align 8, !dbg !1531
  %1173 = load ptr, ptr %25, align 8, !dbg !1531
  %1174 = load ptr, ptr %10, align 8, !dbg !1531
  %1175 = getelementptr inbounds nuw %struct.Fax3DecodeState, ptr %1174, i32 0, i32 7, !dbg !1531
  store ptr %1173, ptr %1175, align 8, !dbg !1531
  %1176 = load ptr, ptr %10, align 8, !dbg !1532
  %1177 = getelementptr inbounds nuw %struct.Fax3DecodeState, ptr %1176, i32 0, i32 0, !dbg !1533
  %1178 = getelementptr inbounds nuw %struct.Fax3BaseState, ptr %1177, i32 0, i32 1, !dbg !1534
  %1179 = load i32, ptr %1178, align 4, !dbg !1534
  %1180 = load ptr, ptr %7, align 8, !dbg !1535
  %1181 = zext i32 %1179 to i64, !dbg !1535
  %1182 = getelementptr inbounds nuw i8, ptr %1180, i64 %1181, !dbg !1535
  store ptr %1182, ptr %7, align 8, !dbg !1535
  %1183 = load ptr, ptr %10, align 8, !dbg !1536
  %1184 = getelementptr inbounds nuw %struct.Fax3DecodeState, ptr %1183, i32 0, i32 0, !dbg !1537
  %1185 = getelementptr inbounds nuw %struct.Fax3BaseState, ptr %1184, i32 0, i32 1, !dbg !1538
  %1186 = load i32, ptr %1185, align 4, !dbg !1538
  %1187 = load i32, ptr %8, align 4, !dbg !1539
  %1188 = sub i32 %1187, %1186, !dbg !1539
  store i32 %1188, ptr %8, align 4, !dbg !1539
  %1189 = load i32, ptr %8, align 4, !dbg !1540
  %1190 = icmp ne i32 %1189, 0, !dbg !1542
  br i1 %1190, label %1191, label %1196, !dbg !1542

1191:                                             ; preds = %1164
  %1192 = load ptr, ptr %6, align 8, !dbg !1543
  %1193 = getelementptr inbounds nuw %struct.tiff, ptr %1192, i32 0, i32 11, !dbg !1544
  %1194 = load i32, ptr %1193, align 8, !dbg !1545
  %1195 = add i32 %1194, 1, !dbg !1545
  store i32 %1195, ptr %1193, align 8, !dbg !1545
  br label %1196, !dbg !1543

1196:                                             ; preds = %1191, %1164
  br label %57, !dbg !1546, !llvm.loop !1547

1197:                                             ; preds = %981
    #dbg_label(!1549, !1550)
  %1198 = load ptr, ptr %10, align 8, !dbg !1551
  %1199 = getelementptr inbounds nuw %struct.Fax3DecodeState, ptr %1198, i32 0, i32 5, !dbg !1552
  %1200 = load ptr, ptr %1199, align 8, !dbg !1552
  %1201 = load ptr, ptr %7, align 8, !dbg !1553
  %1202 = load ptr, ptr %19, align 8, !dbg !1554
  %1203 = load ptr, ptr %18, align 8, !dbg !1555
  %1204 = load i32, ptr %12, align 4, !dbg !1556
  call void %1200(ptr noundef %1201, ptr noundef %1202, ptr noundef %1203, i32 noundef %1204), !dbg !1557
  br label %1205, !dbg !1558

1205:                                             ; preds = %1197
  %1206 = load i32, ptr %14, align 4, !dbg !1559
  %1207 = load ptr, ptr %10, align 8, !dbg !1559
  %1208 = getelementptr inbounds nuw %struct.Fax3DecodeState, ptr %1207, i32 0, i32 3, !dbg !1559
  store i32 %1206, ptr %1208, align 4, !dbg !1559
  %1209 = load i32, ptr %13, align 4, !dbg !1559
  %1210 = load ptr, ptr %10, align 8, !dbg !1559
  %1211 = getelementptr inbounds nuw %struct.Fax3DecodeState, ptr %1210, i32 0, i32 2, !dbg !1559
  store i32 %1209, ptr %1211, align 8, !dbg !1559
  %1212 = load i32, ptr %20, align 4, !dbg !1559
  %1213 = load ptr, ptr %10, align 8, !dbg !1559
  %1214 = getelementptr inbounds nuw %struct.Fax3DecodeState, ptr %1213, i32 0, i32 4, !dbg !1559
  store i32 %1212, ptr %1214, align 8, !dbg !1559
  %1215 = load ptr, ptr %16, align 8, !dbg !1559
  %1216 = load ptr, ptr %6, align 8, !dbg !1559
  %1217 = getelementptr inbounds nuw %struct.tiff, ptr %1216, i32 0, i32 42, !dbg !1559
  %1218 = load ptr, ptr %1217, align 8, !dbg !1559
  %1219 = ptrtoint ptr %1215 to i64, !dbg !1559
  %1220 = ptrtoint ptr %1218 to i64, !dbg !1559
  %1221 = sub i64 %1219, %1220, !dbg !1559
  %1222 = load ptr, ptr %6, align 8, !dbg !1559
  %1223 = getelementptr inbounds nuw %struct.tiff, ptr %1222, i32 0, i32 43, !dbg !1559
  %1224 = load i32, ptr %1223, align 8, !dbg !1559
  %1225 = sext i32 %1224 to i64, !dbg !1559
  %1226 = sub nsw i64 %1225, %1221, !dbg !1559
  %1227 = trunc i64 %1226 to i32, !dbg !1559
  store i32 %1227, ptr %1223, align 8, !dbg !1559
  %1228 = load ptr, ptr %16, align 8, !dbg !1559
  %1229 = load ptr, ptr %6, align 8, !dbg !1559
  %1230 = getelementptr inbounds nuw %struct.tiff, ptr %1229, i32 0, i32 42, !dbg !1559
  store ptr %1228, ptr %1230, align 8, !dbg !1559
  br label %1231, !dbg !1559

1231:                                             ; preds = %1205
  store i32 -1, ptr %5, align 4, !dbg !1561
  br label %1260, !dbg !1561

1232:                                             ; preds = %57
  br label %1233, !dbg !1562

1233:                                             ; preds = %1232
  %1234 = load i32, ptr %14, align 4, !dbg !1563
  %1235 = load ptr, ptr %10, align 8, !dbg !1563
  %1236 = getelementptr inbounds nuw %struct.Fax3DecodeState, ptr %1235, i32 0, i32 3, !dbg !1563
  store i32 %1234, ptr %1236, align 4, !dbg !1563
  %1237 = load i32, ptr %13, align 4, !dbg !1563
  %1238 = load ptr, ptr %10, align 8, !dbg !1563
  %1239 = getelementptr inbounds nuw %struct.Fax3DecodeState, ptr %1238, i32 0, i32 2, !dbg !1563
  store i32 %1237, ptr %1239, align 8, !dbg !1563
  %1240 = load i32, ptr %20, align 4, !dbg !1563
  %1241 = load ptr, ptr %10, align 8, !dbg !1563
  %1242 = getelementptr inbounds nuw %struct.Fax3DecodeState, ptr %1241, i32 0, i32 4, !dbg !1563
  store i32 %1240, ptr %1242, align 8, !dbg !1563
  %1243 = load ptr, ptr %16, align 8, !dbg !1563
  %1244 = load ptr, ptr %6, align 8, !dbg !1563
  %1245 = getelementptr inbounds nuw %struct.tiff, ptr %1244, i32 0, i32 42, !dbg !1563
  %1246 = load ptr, ptr %1245, align 8, !dbg !1563
  %1247 = ptrtoint ptr %1243 to i64, !dbg !1563
  %1248 = ptrtoint ptr %1246 to i64, !dbg !1563
  %1249 = sub i64 %1247, %1248, !dbg !1563
  %1250 = load ptr, ptr %6, align 8, !dbg !1563
  %1251 = getelementptr inbounds nuw %struct.tiff, ptr %1250, i32 0, i32 43, !dbg !1563
  %1252 = load i32, ptr %1251, align 8, !dbg !1563
  %1253 = sext i32 %1252 to i64, !dbg !1563
  %1254 = sub nsw i64 %1253, %1249, !dbg !1563
  %1255 = trunc i64 %1254 to i32, !dbg !1563
  store i32 %1255, ptr %1251, align 8, !dbg !1563
  %1256 = load ptr, ptr %16, align 8, !dbg !1563
  %1257 = load ptr, ptr %6, align 8, !dbg !1563
  %1258 = getelementptr inbounds nuw %struct.tiff, ptr %1257, i32 0, i32 42, !dbg !1563
  store ptr %1256, ptr %1258, align 8, !dbg !1563
  br label %1259, !dbg !1563

1259:                                             ; preds = %1233
  store i32 1, ptr %5, align 4, !dbg !1565
  br label %1260, !dbg !1565

1260:                                             ; preds = %1259, %1231
  %1261 = load i32, ptr %5, align 4, !dbg !1566
  ret i32 %1261, !dbg !1566
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @Fax4Encode(ptr noundef %0, ptr noundef %1, i32 noundef %2, i16 noundef zeroext %3) #0 !dbg !1567 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i16, align 2
  %10 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8
    #dbg_declare(ptr %6, !1568, !DIExpression(), !1569)
  store ptr %1, ptr %7, align 8
    #dbg_declare(ptr %7, !1570, !DIExpression(), !1571)
  store i32 %2, ptr %8, align 4
    #dbg_declare(ptr %8, !1572, !DIExpression(), !1573)
  store i16 %3, ptr %9, align 2
    #dbg_declare(ptr %9, !1574, !DIExpression(), !1575)
    #dbg_declare(ptr %10, !1576, !DIExpression(), !1577)
  %11 = load ptr, ptr %6, align 8, !dbg !1578
  %12 = getelementptr inbounds nuw %struct.tiff, ptr %11, i32 0, i32 37, !dbg !1578
  %13 = load ptr, ptr %12, align 8, !dbg !1578
  store ptr %13, ptr %10, align 8, !dbg !1577
  %14 = load i16, ptr %9, align 2, !dbg !1579
  br label %15, !dbg !1580

15:                                               ; preds = %61, %4
  %16 = load i32, ptr %8, align 4, !dbg !1581
  %17 = sext i32 %16 to i64, !dbg !1582
  %18 = icmp sgt i64 %17, 0, !dbg !1583
  br i1 %18, label %19, label %62, !dbg !1580

19:                                               ; preds = %15
  %20 = load ptr, ptr %6, align 8, !dbg !1584
  %21 = load ptr, ptr %7, align 8, !dbg !1587
  %22 = load ptr, ptr %10, align 8, !dbg !1588
  %23 = getelementptr inbounds nuw %struct.Fax3EncodeState, ptr %22, i32 0, i32 4, !dbg !1589
  %24 = load ptr, ptr %23, align 8, !dbg !1589
  %25 = load ptr, ptr %10, align 8, !dbg !1590
  %26 = getelementptr inbounds nuw %struct.Fax3EncodeState, ptr %25, i32 0, i32 0, !dbg !1591
  %27 = getelementptr inbounds nuw %struct.Fax3BaseState, ptr %26, i32 0, i32 2, !dbg !1592
  %28 = load i32, ptr %27, align 8, !dbg !1592
  %29 = call i32 @Fax3Encode2DRow(ptr noundef %20, ptr noundef %21, ptr noundef %24, i32 noundef %28), !dbg !1593
  %30 = icmp ne i32 %29, 0, !dbg !1593
  br i1 %30, label %32, label %31, !dbg !1594

31:                                               ; preds = %19
  store i32 0, ptr %5, align 4, !dbg !1595
  br label %63, !dbg !1595

32:                                               ; preds = %19
  %33 = load ptr, ptr %10, align 8, !dbg !1596
  %34 = getelementptr inbounds nuw %struct.Fax3EncodeState, ptr %33, i32 0, i32 4, !dbg !1597
  %35 = load ptr, ptr %34, align 8, !dbg !1597
  %36 = load ptr, ptr %7, align 8, !dbg !1598
  %37 = load ptr, ptr %10, align 8, !dbg !1599
  %38 = getelementptr inbounds nuw %struct.Fax3EncodeState, ptr %37, i32 0, i32 0, !dbg !1600
  %39 = getelementptr inbounds nuw %struct.Fax3BaseState, ptr %38, i32 0, i32 1, !dbg !1601
  %40 = load i32, ptr %39, align 4, !dbg !1601
  call void @_TIFFmemcpy(ptr noundef %35, ptr noundef %36, i32 noundef %40), !dbg !1602
  %41 = load ptr, ptr %10, align 8, !dbg !1603
  %42 = getelementptr inbounds nuw %struct.Fax3EncodeState, ptr %41, i32 0, i32 0, !dbg !1604
  %43 = getelementptr inbounds nuw %struct.Fax3BaseState, ptr %42, i32 0, i32 1, !dbg !1605
  %44 = load i32, ptr %43, align 4, !dbg !1605
  %45 = load ptr, ptr %7, align 8, !dbg !1606
  %46 = zext i32 %44 to i64, !dbg !1606
  %47 = getelementptr inbounds nuw i8, ptr %45, i64 %46, !dbg !1606
  store ptr %47, ptr %7, align 8, !dbg !1606
  %48 = load ptr, ptr %10, align 8, !dbg !1607
  %49 = getelementptr inbounds nuw %struct.Fax3EncodeState, ptr %48, i32 0, i32 0, !dbg !1608
  %50 = getelementptr inbounds nuw %struct.Fax3BaseState, ptr %49, i32 0, i32 1, !dbg !1609
  %51 = load i32, ptr %50, align 4, !dbg !1609
  %52 = load i32, ptr %8, align 4, !dbg !1610
  %53 = sub i32 %52, %51, !dbg !1610
  store i32 %53, ptr %8, align 4, !dbg !1610
  %54 = load i32, ptr %8, align 4, !dbg !1611
  %55 = icmp ne i32 %54, 0, !dbg !1613
  br i1 %55, label %56, label %61, !dbg !1613

56:                                               ; preds = %32
  %57 = load ptr, ptr %6, align 8, !dbg !1614
  %58 = getelementptr inbounds nuw %struct.tiff, ptr %57, i32 0, i32 11, !dbg !1615
  %59 = load i32, ptr %58, align 8, !dbg !1616
  %60 = add i32 %59, 1, !dbg !1616
  store i32 %60, ptr %58, align 8, !dbg !1616
  br label %61, !dbg !1614

61:                                               ; preds = %56, %32
  br label %15, !dbg !1580, !llvm.loop !1617

62:                                               ; preds = %15
  store i32 1, ptr %5, align 4, !dbg !1619
  br label %63, !dbg !1619

63:                                               ; preds = %62, %31
  %64 = load i32, ptr %5, align 4, !dbg !1620
  ret i32 %64, !dbg !1620
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @Fax4PostEncode(ptr noundef %0) #0 !dbg !1621 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !1622, !DIExpression(), !1623)
    #dbg_declare(ptr %3, !1624, !DIExpression(), !1625)
  %4 = load ptr, ptr %2, align 8, !dbg !1626
  %5 = getelementptr inbounds nuw %struct.tiff, ptr %4, i32 0, i32 37, !dbg !1626
  %6 = load ptr, ptr %5, align 8, !dbg !1626
  store ptr %6, ptr %3, align 8, !dbg !1625
  %7 = load ptr, ptr %2, align 8, !dbg !1627
  call void @Fax3PutBits(ptr noundef %7, i32 noundef 1, i32 noundef 12), !dbg !1628
  %8 = load ptr, ptr %2, align 8, !dbg !1629
  call void @Fax3PutBits(ptr noundef %8, i32 noundef 1, i32 noundef 12), !dbg !1630
  %9 = load ptr, ptr %3, align 8, !dbg !1631
  %10 = getelementptr inbounds nuw %struct.Fax3EncodeState, ptr %9, i32 0, i32 2, !dbg !1633
  %11 = load i32, ptr %10, align 4, !dbg !1633
  %12 = icmp ne i32 %11, 8, !dbg !1634
  br i1 %12, label %13, label %41, !dbg !1634

13:                                               ; preds = %1
  %14 = load ptr, ptr %2, align 8, !dbg !1635
  %15 = getelementptr inbounds nuw %struct.tiff, ptr %14, i32 0, i32 43, !dbg !1635
  %16 = load i32, ptr %15, align 8, !dbg !1635
  %17 = load ptr, ptr %2, align 8, !dbg !1635
  %18 = getelementptr inbounds nuw %struct.tiff, ptr %17, i32 0, i32 41, !dbg !1635
  %19 = load i32, ptr %18, align 8, !dbg !1635
  %20 = icmp sge i32 %16, %19, !dbg !1635
  br i1 %20, label %21, label %24, !dbg !1635

21:                                               ; preds = %13
  %22 = load ptr, ptr %2, align 8, !dbg !1635
  %23 = call i32 @TIFFFlushData1(ptr noundef %22), !dbg !1635
  br label %24, !dbg !1635

24:                                               ; preds = %21, %13
  %25 = load ptr, ptr %3, align 8, !dbg !1638
  %26 = getelementptr inbounds nuw %struct.Fax3EncodeState, ptr %25, i32 0, i32 1, !dbg !1638
  %27 = load i32, ptr %26, align 8, !dbg !1638
  %28 = trunc i32 %27 to i8, !dbg !1638
  %29 = load ptr, ptr %2, align 8, !dbg !1638
  %30 = getelementptr inbounds nuw %struct.tiff, ptr %29, i32 0, i32 42, !dbg !1638
  %31 = load ptr, ptr %30, align 8, !dbg !1638
  %32 = getelementptr inbounds nuw i8, ptr %31, i32 1, !dbg !1638
  store ptr %32, ptr %30, align 8, !dbg !1638
  store i8 %28, ptr %31, align 1, !dbg !1638
  %33 = load ptr, ptr %2, align 8, !dbg !1638
  %34 = getelementptr inbounds nuw %struct.tiff, ptr %33, i32 0, i32 43, !dbg !1638
  %35 = load i32, ptr %34, align 8, !dbg !1638
  %36 = add nsw i32 %35, 1, !dbg !1638
  store i32 %36, ptr %34, align 8, !dbg !1638
  %37 = load ptr, ptr %3, align 8, !dbg !1638
  %38 = getelementptr inbounds nuw %struct.Fax3EncodeState, ptr %37, i32 0, i32 1, !dbg !1638
  store i32 0, ptr %38, align 8, !dbg !1638
  %39 = load ptr, ptr %3, align 8, !dbg !1638
  %40 = getelementptr inbounds nuw %struct.Fax3EncodeState, ptr %39, i32 0, i32 2, !dbg !1638
  store i32 8, ptr %40, align 4, !dbg !1638
  br label %41, !dbg !1638

41:                                               ; preds = %24, %1
  ret i32 1, !dbg !1639
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @TIFFInitCCITTRLE(ptr noundef %0, i32 noundef %1) #0 !dbg !1640 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
    #dbg_declare(ptr %4, !1641, !DIExpression(), !1642)
  store i32 %1, ptr %5, align 4
    #dbg_declare(ptr %5, !1643, !DIExpression(), !1644)
  %6 = load ptr, ptr %4, align 8, !dbg !1645
  %7 = call i32 @InitCCITTFax3(ptr noundef %6), !dbg !1647
  %8 = icmp ne i32 %7, 0, !dbg !1647
  br i1 %8, label %9, label %18, !dbg !1647

9:                                                ; preds = %2
  %10 = load ptr, ptr %4, align 8, !dbg !1648
  %11 = getelementptr inbounds nuw %struct.tiff, ptr %10, i32 0, i32 26, !dbg !1650
  store ptr @Fax3DecodeRLE, ptr %11, align 8, !dbg !1651
  %12 = load ptr, ptr %4, align 8, !dbg !1652
  %13 = getelementptr inbounds nuw %struct.tiff, ptr %12, i32 0, i32 28, !dbg !1653
  store ptr @Fax3DecodeRLE, ptr %13, align 8, !dbg !1654
  %14 = load ptr, ptr %4, align 8, !dbg !1655
  %15 = getelementptr inbounds nuw %struct.tiff, ptr %14, i32 0, i32 30, !dbg !1656
  store ptr @Fax3DecodeRLE, ptr %15, align 8, !dbg !1657
  %16 = load ptr, ptr %4, align 8, !dbg !1658
  %17 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %16, i32 noundef 65536, i32 noundef 7), !dbg !1659
  store i32 %17, ptr %3, align 4, !dbg !1660
  br label %19, !dbg !1660

18:                                               ; preds = %2
  store i32 0, ptr %3, align 4, !dbg !1661
  br label %19, !dbg !1661

19:                                               ; preds = %18, %9
  %20 = load i32, ptr %3, align 4, !dbg !1662
  ret i32 %20, !dbg !1662
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @Fax3DecodeRLE(ptr noundef %0, ptr noundef %1, i32 noundef %2, i16 noundef zeroext %3) #0 !dbg !664 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i16, align 2
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  %19 = alloca ptr, align 8
  %20 = alloca i32, align 4
  %21 = alloca ptr, align 8
  %22 = alloca ptr, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store ptr %0, ptr %6, align 8
    #dbg_declare(ptr %6, !1663, !DIExpression(), !1664)
  store ptr %1, ptr %7, align 8
    #dbg_declare(ptr %7, !1665, !DIExpression(), !1666)
  store i32 %2, ptr %8, align 4
    #dbg_declare(ptr %8, !1667, !DIExpression(), !1668)
  store i16 %3, ptr %9, align 2
    #dbg_declare(ptr %9, !1669, !DIExpression(), !1670)
    #dbg_declare(ptr %10, !1671, !DIExpression(), !1672)
  %26 = load ptr, ptr %6, align 8, !dbg !1672
  %27 = getelementptr inbounds nuw %struct.tiff, ptr %26, i32 0, i32 37, !dbg !1672
  %28 = load ptr, ptr %27, align 8, !dbg !1672
  store ptr %28, ptr %10, align 8, !dbg !1672
    #dbg_declare(ptr %11, !1673, !DIExpression(), !1672)
    #dbg_declare(ptr %12, !1674, !DIExpression(), !1672)
  %29 = load ptr, ptr %10, align 8, !dbg !1672
  %30 = getelementptr inbounds nuw %struct.Fax3DecodeState, ptr %29, i32 0, i32 0, !dbg !1672
  %31 = getelementptr inbounds nuw %struct.Fax3BaseState, ptr %30, i32 0, i32 2, !dbg !1672
  %32 = load i32, ptr %31, align 8, !dbg !1672
  store i32 %32, ptr %12, align 4, !dbg !1672
    #dbg_declare(ptr %13, !1675, !DIExpression(), !1672)
    #dbg_declare(ptr %14, !1676, !DIExpression(), !1672)
    #dbg_declare(ptr %15, !1677, !DIExpression(), !1672)
    #dbg_declare(ptr %16, !1678, !DIExpression(), !1672)
    #dbg_declare(ptr %17, !1679, !DIExpression(), !1672)
    #dbg_declare(ptr %18, !1680, !DIExpression(), !1672)
    #dbg_declare(ptr %19, !1681, !DIExpression(), !1672)
    #dbg_declare(ptr %20, !1682, !DIExpression(), !1672)
    #dbg_declare(ptr %21, !1683, !DIExpression(), !1672)
  %33 = load ptr, ptr %10, align 8, !dbg !1672
  %34 = getelementptr inbounds nuw %struct.Fax3DecodeState, ptr %33, i32 0, i32 1, !dbg !1672
  %35 = load ptr, ptr %34, align 8, !dbg !1672
  store ptr %35, ptr %21, align 8, !dbg !1672
    #dbg_declare(ptr %22, !1684, !DIExpression(), !1672)
    #dbg_declare(ptr %23, !1685, !DIExpression(), !1686)
  %36 = load ptr, ptr %10, align 8, !dbg !1687
  %37 = getelementptr inbounds nuw %struct.Fax3DecodeState, ptr %36, i32 0, i32 0, !dbg !1688
  %38 = getelementptr inbounds nuw %struct.Fax3BaseState, ptr %37, i32 0, i32 0, !dbg !1689
  %39 = load i32, ptr %38, align 8, !dbg !1689
  store i32 %39, ptr %23, align 4, !dbg !1686
  %40 = load i16, ptr %9, align 2, !dbg !1690
  br label %41, !dbg !1691

41:                                               ; preds = %4
  %42 = load ptr, ptr %10, align 8, !dbg !1692
  %43 = getelementptr inbounds nuw %struct.Fax3DecodeState, ptr %42, i32 0, i32 2, !dbg !1692
  %44 = load i32, ptr %43, align 8, !dbg !1692
  store i32 %44, ptr %13, align 4, !dbg !1692
  %45 = load ptr, ptr %10, align 8, !dbg !1692
  %46 = getelementptr inbounds nuw %struct.Fax3DecodeState, ptr %45, i32 0, i32 3, !dbg !1692
  %47 = load i32, ptr %46, align 4, !dbg !1692
  store i32 %47, ptr %14, align 4, !dbg !1692
  %48 = load ptr, ptr %10, align 8, !dbg !1692
  %49 = getelementptr inbounds nuw %struct.Fax3DecodeState, ptr %48, i32 0, i32 4, !dbg !1692
  %50 = load i32, ptr %49, align 8, !dbg !1692
  store i32 %50, ptr %20, align 4, !dbg !1692
  %51 = load ptr, ptr %6, align 8, !dbg !1692
  %52 = getelementptr inbounds nuw %struct.tiff, ptr %51, i32 0, i32 42, !dbg !1692
  %53 = load ptr, ptr %52, align 8, !dbg !1692
  store ptr %53, ptr %16, align 8, !dbg !1692
  %54 = load ptr, ptr %16, align 8, !dbg !1692
  %55 = load ptr, ptr %6, align 8, !dbg !1692
  %56 = getelementptr inbounds nuw %struct.tiff, ptr %55, i32 0, i32 43, !dbg !1692
  %57 = load i32, ptr %56, align 8, !dbg !1692
  %58 = sext i32 %57 to i64, !dbg !1692
  %59 = getelementptr inbounds i8, ptr %54, i64 %58, !dbg !1692
  store ptr %59, ptr %17, align 8, !dbg !1692
  br label %60, !dbg !1692

60:                                               ; preds = %41
  %61 = load ptr, ptr %10, align 8, !dbg !1694
  %62 = getelementptr inbounds nuw %struct.Fax3DecodeState, ptr %61, i32 0, i32 8, !dbg !1695
  %63 = load ptr, ptr %62, align 8, !dbg !1695
  store ptr %63, ptr %19, align 8, !dbg !1696
  br label %64, !dbg !1697

64:                                               ; preds = %588, %60
  %65 = load i32, ptr %8, align 4, !dbg !1698
  %66 = sext i32 %65 to i64, !dbg !1699
  %67 = icmp sgt i64 %66, 0, !dbg !1700
  br i1 %67, label %68, label %624, !dbg !1697

68:                                               ; preds = %64
  store i32 0, ptr %11, align 4, !dbg !1701
  store i32 0, ptr %15, align 4, !dbg !1703
  %69 = load ptr, ptr %19, align 8, !dbg !1704
  store ptr %69, ptr %18, align 8, !dbg !1705
  br label %70, !dbg !1706

70:                                               ; preds = %68
  br label %71, !dbg !1707

71:                                               ; preds = %301, %70
  br label %72, !dbg !1709

72:                                               ; preds = %180, %71
  br label %73, !dbg !1713

73:                                               ; preds = %72
  br label %74, !dbg !1717

74:                                               ; preds = %73
  %75 = load i32, ptr %14, align 4, !dbg !1719
  %76 = icmp slt i32 %75, 12, !dbg !1719
  br i1 %76, label %77, label %125, !dbg !1719

77:                                               ; preds = %74
  %78 = load ptr, ptr %16, align 8, !dbg !1722
  %79 = load ptr, ptr %17, align 8, !dbg !1722
  %80 = icmp uge ptr %78, %79, !dbg !1722
  br i1 %80, label %81, label %86, !dbg !1722

81:                                               ; preds = %77
  %82 = load i32, ptr %14, align 4, !dbg !1725
  %83 = icmp eq i32 %82, 0, !dbg !1725
  br i1 %83, label %84, label %85, !dbg !1725

84:                                               ; preds = %81
  br label %302, !dbg !1725

85:                                               ; preds = %81
  store i32 12, ptr %14, align 4, !dbg !1728
  br label %124, !dbg !1728

86:                                               ; preds = %77
  %87 = load ptr, ptr %21, align 8, !dbg !1729
  %88 = load ptr, ptr %16, align 8, !dbg !1729
  %89 = getelementptr inbounds nuw i8, ptr %88, i32 1, !dbg !1729
  store ptr %89, ptr %16, align 8, !dbg !1729
  %90 = load i8, ptr %88, align 1, !dbg !1729
  %91 = zext i8 %90 to i64, !dbg !1729
  %92 = getelementptr inbounds nuw i8, ptr %87, i64 %91, !dbg !1729
  %93 = load i8, ptr %92, align 1, !dbg !1729
  %94 = zext i8 %93 to i32, !dbg !1729
  %95 = load i32, ptr %14, align 4, !dbg !1729
  %96 = shl i32 %94, %95, !dbg !1729
  %97 = load i32, ptr %13, align 4, !dbg !1729
  %98 = or i32 %97, %96, !dbg !1729
  store i32 %98, ptr %13, align 4, !dbg !1729
  %99 = load i32, ptr %14, align 4, !dbg !1731
  %100 = add nsw i32 %99, 8, !dbg !1731
  store i32 %100, ptr %14, align 4, !dbg !1731
  %101 = icmp slt i32 %100, 12, !dbg !1731
  br i1 %101, label %102, label %123, !dbg !1731

102:                                              ; preds = %86
  %103 = load ptr, ptr %16, align 8, !dbg !1733
  %104 = load ptr, ptr %17, align 8, !dbg !1733
  %105 = icmp uge ptr %103, %104, !dbg !1733
  br i1 %105, label %106, label %107, !dbg !1733

106:                                              ; preds = %102
  store i32 12, ptr %14, align 4, !dbg !1736
  br label %122, !dbg !1736

107:                                              ; preds = %102
  %108 = load ptr, ptr %21, align 8, !dbg !1738
  %109 = load ptr, ptr %16, align 8, !dbg !1738
  %110 = getelementptr inbounds nuw i8, ptr %109, i32 1, !dbg !1738
  store ptr %110, ptr %16, align 8, !dbg !1738
  %111 = load i8, ptr %109, align 1, !dbg !1738
  %112 = zext i8 %111 to i64, !dbg !1738
  %113 = getelementptr inbounds nuw i8, ptr %108, i64 %112, !dbg !1738
  %114 = load i8, ptr %113, align 1, !dbg !1738
  %115 = zext i8 %114 to i32, !dbg !1738
  %116 = load i32, ptr %14, align 4, !dbg !1738
  %117 = shl i32 %115, %116, !dbg !1738
  %118 = load i32, ptr %13, align 4, !dbg !1738
  %119 = or i32 %118, %117, !dbg !1738
  store i32 %119, ptr %13, align 4, !dbg !1738
  %120 = load i32, ptr %14, align 4, !dbg !1738
  %121 = add nsw i32 %120, 8, !dbg !1738
  store i32 %121, ptr %14, align 4, !dbg !1738
  br label %122

122:                                              ; preds = %107, %106
  br label %123, !dbg !1740

123:                                              ; preds = %122, %86
  br label %124

124:                                              ; preds = %123, %85
  br label %125, !dbg !1741

125:                                              ; preds = %124, %74
  br label %126, !dbg !1742

126:                                              ; preds = %125
  %127 = load i32, ptr %13, align 4, !dbg !1717
  %128 = and i32 %127, 4095, !dbg !1717
  %129 = zext i32 %128 to i64, !dbg !1717
  %130 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr @TIFFFaxWhiteTable, i64 %129, !dbg !1717
  store ptr %130, ptr %22, align 8, !dbg !1717
  br label %131, !dbg !1717

131:                                              ; preds = %126
  %132 = load ptr, ptr %22, align 8, !dbg !1743
  %133 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr %132, i32 0, i32 1, !dbg !1743
  %134 = load i8, ptr %133, align 1, !dbg !1743
  %135 = zext i8 %134 to i32, !dbg !1743
  %136 = load i32, ptr %14, align 4, !dbg !1743
  %137 = sub nsw i32 %136, %135, !dbg !1743
  store i32 %137, ptr %14, align 4, !dbg !1743
  %138 = load ptr, ptr %22, align 8, !dbg !1743
  %139 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr %138, i32 0, i32 1, !dbg !1743
  %140 = load i8, ptr %139, align 1, !dbg !1743
  %141 = zext i8 %140 to i32, !dbg !1743
  %142 = load i32, ptr %13, align 4, !dbg !1743
  %143 = lshr i32 %142, %141, !dbg !1743
  store i32 %143, ptr %13, align 4, !dbg !1743
  br label %144, !dbg !1743

144:                                              ; preds = %131
  br label %145, !dbg !1717

145:                                              ; preds = %144
  %146 = load ptr, ptr %22, align 8, !dbg !1713
  %147 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr %146, i32 0, i32 0, !dbg !1713
  %148 = load i8, ptr %147, align 4, !dbg !1713
  %149 = zext i8 %148 to i32, !dbg !1713
  switch i32 %149, label %177 [
    i32 12, label %150
    i32 7, label %151
    i32 9, label %166
    i32 11, label %166
  ], !dbg !1713

150:                                              ; preds = %145
  store i32 1, ptr %20, align 4, !dbg !1745
  br label %409, !dbg !1745

151:                                              ; preds = %145
  br label %152, !dbg !1745

152:                                              ; preds = %151
  %153 = load i32, ptr %15, align 4, !dbg !1747
  %154 = load ptr, ptr %22, align 8, !dbg !1747
  %155 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr %154, i32 0, i32 2, !dbg !1747
  %156 = load i32, ptr %155, align 4, !dbg !1747
  %157 = add i32 %153, %156, !dbg !1747
  %158 = load ptr, ptr %18, align 8, !dbg !1747
  %159 = getelementptr inbounds nuw i32, ptr %158, i32 1, !dbg !1747
  store ptr %159, ptr %18, align 8, !dbg !1747
  store i32 %157, ptr %158, align 4, !dbg !1747
  %160 = load ptr, ptr %22, align 8, !dbg !1747
  %161 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr %160, i32 0, i32 2, !dbg !1747
  %162 = load i32, ptr %161, align 4, !dbg !1747
  %163 = load i32, ptr %11, align 4, !dbg !1747
  %164 = add i32 %163, %162, !dbg !1747
  store i32 %164, ptr %11, align 4, !dbg !1747
  store i32 0, ptr %15, align 4, !dbg !1747
  br label %165, !dbg !1747

165:                                              ; preds = %152
  br label %181, !dbg !1745

166:                                              ; preds = %145, %145
  %167 = load ptr, ptr %22, align 8, !dbg !1745
  %168 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr %167, i32 0, i32 2, !dbg !1745
  %169 = load i32, ptr %168, align 4, !dbg !1745
  %170 = load i32, ptr %11, align 4, !dbg !1745
  %171 = add i32 %170, %169, !dbg !1745
  store i32 %171, ptr %11, align 4, !dbg !1745
  %172 = load ptr, ptr %22, align 8, !dbg !1745
  %173 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr %172, i32 0, i32 2, !dbg !1745
  %174 = load i32, ptr %173, align 4, !dbg !1745
  %175 = load i32, ptr %15, align 4, !dbg !1745
  %176 = add i32 %175, %174, !dbg !1745
  store i32 %176, ptr %15, align 4, !dbg !1745
  br label %180, !dbg !1745

177:                                              ; preds = %145
  %178 = load ptr, ptr %6, align 8, !dbg !1745
  %179 = load i32, ptr %11, align 4, !dbg !1745
  call void @Fax3Unexpected(ptr noundef @Fax3DecodeRLE.module, ptr noundef %178, i32 noundef %179), !dbg !1745
  br label %409, !dbg !1745

180:                                              ; preds = %166
  br label %72, !dbg !1749, !llvm.loop !1750

181:                                              ; preds = %165
    #dbg_label(!1752, !1709)
  %182 = load i32, ptr %11, align 4, !dbg !1753
  %183 = load i32, ptr %12, align 4, !dbg !1753
  %184 = icmp sge i32 %182, %183, !dbg !1753
  br i1 %184, label %185, label %186, !dbg !1753

185:                                              ; preds = %181
  br label %409, !dbg !1753

186:                                              ; preds = %181
  br label %187, !dbg !1709

187:                                              ; preds = %295, %186
  br label %188, !dbg !1755

188:                                              ; preds = %187
  br label %189, !dbg !1759

189:                                              ; preds = %188
  %190 = load i32, ptr %14, align 4, !dbg !1761
  %191 = icmp slt i32 %190, 13, !dbg !1761
  br i1 %191, label %192, label %240, !dbg !1761

192:                                              ; preds = %189
  %193 = load ptr, ptr %16, align 8, !dbg !1764
  %194 = load ptr, ptr %17, align 8, !dbg !1764
  %195 = icmp uge ptr %193, %194, !dbg !1764
  br i1 %195, label %196, label %201, !dbg !1764

196:                                              ; preds = %192
  %197 = load i32, ptr %14, align 4, !dbg !1767
  %198 = icmp eq i32 %197, 0, !dbg !1767
  br i1 %198, label %199, label %200, !dbg !1767

199:                                              ; preds = %196
  br label %302, !dbg !1767

200:                                              ; preds = %196
  store i32 13, ptr %14, align 4, !dbg !1770
  br label %239, !dbg !1770

201:                                              ; preds = %192
  %202 = load ptr, ptr %21, align 8, !dbg !1771
  %203 = load ptr, ptr %16, align 8, !dbg !1771
  %204 = getelementptr inbounds nuw i8, ptr %203, i32 1, !dbg !1771
  store ptr %204, ptr %16, align 8, !dbg !1771
  %205 = load i8, ptr %203, align 1, !dbg !1771
  %206 = zext i8 %205 to i64, !dbg !1771
  %207 = getelementptr inbounds nuw i8, ptr %202, i64 %206, !dbg !1771
  %208 = load i8, ptr %207, align 1, !dbg !1771
  %209 = zext i8 %208 to i32, !dbg !1771
  %210 = load i32, ptr %14, align 4, !dbg !1771
  %211 = shl i32 %209, %210, !dbg !1771
  %212 = load i32, ptr %13, align 4, !dbg !1771
  %213 = or i32 %212, %211, !dbg !1771
  store i32 %213, ptr %13, align 4, !dbg !1771
  %214 = load i32, ptr %14, align 4, !dbg !1773
  %215 = add nsw i32 %214, 8, !dbg !1773
  store i32 %215, ptr %14, align 4, !dbg !1773
  %216 = icmp slt i32 %215, 13, !dbg !1773
  br i1 %216, label %217, label %238, !dbg !1773

217:                                              ; preds = %201
  %218 = load ptr, ptr %16, align 8, !dbg !1775
  %219 = load ptr, ptr %17, align 8, !dbg !1775
  %220 = icmp uge ptr %218, %219, !dbg !1775
  br i1 %220, label %221, label %222, !dbg !1775

221:                                              ; preds = %217
  store i32 13, ptr %14, align 4, !dbg !1778
  br label %237, !dbg !1778

222:                                              ; preds = %217
  %223 = load ptr, ptr %21, align 8, !dbg !1780
  %224 = load ptr, ptr %16, align 8, !dbg !1780
  %225 = getelementptr inbounds nuw i8, ptr %224, i32 1, !dbg !1780
  store ptr %225, ptr %16, align 8, !dbg !1780
  %226 = load i8, ptr %224, align 1, !dbg !1780
  %227 = zext i8 %226 to i64, !dbg !1780
  %228 = getelementptr inbounds nuw i8, ptr %223, i64 %227, !dbg !1780
  %229 = load i8, ptr %228, align 1, !dbg !1780
  %230 = zext i8 %229 to i32, !dbg !1780
  %231 = load i32, ptr %14, align 4, !dbg !1780
  %232 = shl i32 %230, %231, !dbg !1780
  %233 = load i32, ptr %13, align 4, !dbg !1780
  %234 = or i32 %233, %232, !dbg !1780
  store i32 %234, ptr %13, align 4, !dbg !1780
  %235 = load i32, ptr %14, align 4, !dbg !1780
  %236 = add nsw i32 %235, 8, !dbg !1780
  store i32 %236, ptr %14, align 4, !dbg !1780
  br label %237

237:                                              ; preds = %222, %221
  br label %238, !dbg !1782

238:                                              ; preds = %237, %201
  br label %239

239:                                              ; preds = %238, %200
  br label %240, !dbg !1783

240:                                              ; preds = %239, %189
  br label %241, !dbg !1784

241:                                              ; preds = %240
  %242 = load i32, ptr %13, align 4, !dbg !1759
  %243 = and i32 %242, 8191, !dbg !1759
  %244 = zext i32 %243 to i64, !dbg !1759
  %245 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr @TIFFFaxBlackTable, i64 %244, !dbg !1759
  store ptr %245, ptr %22, align 8, !dbg !1759
  br label %246, !dbg !1759

246:                                              ; preds = %241
  %247 = load ptr, ptr %22, align 8, !dbg !1785
  %248 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr %247, i32 0, i32 1, !dbg !1785
  %249 = load i8, ptr %248, align 1, !dbg !1785
  %250 = zext i8 %249 to i32, !dbg !1785
  %251 = load i32, ptr %14, align 4, !dbg !1785
  %252 = sub nsw i32 %251, %250, !dbg !1785
  store i32 %252, ptr %14, align 4, !dbg !1785
  %253 = load ptr, ptr %22, align 8, !dbg !1785
  %254 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr %253, i32 0, i32 1, !dbg !1785
  %255 = load i8, ptr %254, align 1, !dbg !1785
  %256 = zext i8 %255 to i32, !dbg !1785
  %257 = load i32, ptr %13, align 4, !dbg !1785
  %258 = lshr i32 %257, %256, !dbg !1785
  store i32 %258, ptr %13, align 4, !dbg !1785
  br label %259, !dbg !1785

259:                                              ; preds = %246
  br label %260, !dbg !1759

260:                                              ; preds = %259
  %261 = load ptr, ptr %22, align 8, !dbg !1755
  %262 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr %261, i32 0, i32 0, !dbg !1755
  %263 = load i8, ptr %262, align 4, !dbg !1755
  %264 = zext i8 %263 to i32, !dbg !1755
  switch i32 %264, label %292 [
    i32 12, label %265
    i32 8, label %266
    i32 10, label %281
    i32 11, label %281
  ], !dbg !1755

265:                                              ; preds = %260
  store i32 1, ptr %20, align 4, !dbg !1787
  br label %409, !dbg !1787

266:                                              ; preds = %260
  br label %267, !dbg !1787

267:                                              ; preds = %266
  %268 = load i32, ptr %15, align 4, !dbg !1789
  %269 = load ptr, ptr %22, align 8, !dbg !1789
  %270 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr %269, i32 0, i32 2, !dbg !1789
  %271 = load i32, ptr %270, align 4, !dbg !1789
  %272 = add i32 %268, %271, !dbg !1789
  %273 = load ptr, ptr %18, align 8, !dbg !1789
  %274 = getelementptr inbounds nuw i32, ptr %273, i32 1, !dbg !1789
  store ptr %274, ptr %18, align 8, !dbg !1789
  store i32 %272, ptr %273, align 4, !dbg !1789
  %275 = load ptr, ptr %22, align 8, !dbg !1789
  %276 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr %275, i32 0, i32 2, !dbg !1789
  %277 = load i32, ptr %276, align 4, !dbg !1789
  %278 = load i32, ptr %11, align 4, !dbg !1789
  %279 = add i32 %278, %277, !dbg !1789
  store i32 %279, ptr %11, align 4, !dbg !1789
  store i32 0, ptr %15, align 4, !dbg !1789
  br label %280, !dbg !1789

280:                                              ; preds = %267
  br label %296, !dbg !1787

281:                                              ; preds = %260, %260
  %282 = load ptr, ptr %22, align 8, !dbg !1787
  %283 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr %282, i32 0, i32 2, !dbg !1787
  %284 = load i32, ptr %283, align 4, !dbg !1787
  %285 = load i32, ptr %11, align 4, !dbg !1787
  %286 = add i32 %285, %284, !dbg !1787
  store i32 %286, ptr %11, align 4, !dbg !1787
  %287 = load ptr, ptr %22, align 8, !dbg !1787
  %288 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr %287, i32 0, i32 2, !dbg !1787
  %289 = load i32, ptr %288, align 4, !dbg !1787
  %290 = load i32, ptr %15, align 4, !dbg !1787
  %291 = add i32 %290, %289, !dbg !1787
  store i32 %291, ptr %15, align 4, !dbg !1787
  br label %295, !dbg !1787

292:                                              ; preds = %260
  %293 = load ptr, ptr %6, align 8, !dbg !1787
  %294 = load i32, ptr %11, align 4, !dbg !1787
  call void @Fax3Unexpected(ptr noundef @Fax3DecodeRLE.module, ptr noundef %293, i32 noundef %294), !dbg !1787
  br label %409, !dbg !1787

295:                                              ; preds = %281
  br label %187, !dbg !1791, !llvm.loop !1792

296:                                              ; preds = %280
    #dbg_label(!1794, !1709)
  %297 = load i32, ptr %11, align 4, !dbg !1795
  %298 = load i32, ptr %12, align 4, !dbg !1795
  %299 = icmp sge i32 %297, %298, !dbg !1795
  br i1 %299, label %300, label %301, !dbg !1795

300:                                              ; preds = %296
  br label %409, !dbg !1795

301:                                              ; preds = %296
  br label %71, !dbg !1797, !llvm.loop !1798

302:                                              ; preds = %199, %84
    #dbg_label(!1800, !1707)
  %303 = load ptr, ptr %6, align 8, !dbg !1707
  %304 = load i32, ptr %11, align 4, !dbg !1707
  call void @Fax3PrematureEOF(ptr noundef @Fax3DecodeRLE.module, ptr noundef %303, i32 noundef %304), !dbg !1707
  br label %305, !dbg !1707

305:                                              ; preds = %302
  %306 = load i32, ptr %15, align 4, !dbg !1801
  %307 = icmp ne i32 %306, 0, !dbg !1801
  br i1 %307, label %308, label %317, !dbg !1801

308:                                              ; preds = %305
  br label %309, !dbg !1801

309:                                              ; preds = %308
  %310 = load i32, ptr %15, align 4, !dbg !1804
  %311 = add nsw i32 %310, 0, !dbg !1804
  %312 = load ptr, ptr %18, align 8, !dbg !1804
  %313 = getelementptr inbounds nuw i32, ptr %312, i32 1, !dbg !1804
  store ptr %313, ptr %18, align 8, !dbg !1804
  store i32 %311, ptr %312, align 4, !dbg !1804
  %314 = load i32, ptr %11, align 4, !dbg !1804
  %315 = add nsw i32 %314, 0, !dbg !1804
  store i32 %315, ptr %11, align 4, !dbg !1804
  store i32 0, ptr %15, align 4, !dbg !1804
  br label %316, !dbg !1804

316:                                              ; preds = %309
  br label %317, !dbg !1804

317:                                              ; preds = %316, %305
  %318 = load i32, ptr %11, align 4, !dbg !1806
  %319 = load i32, ptr %12, align 4, !dbg !1806
  %320 = icmp ne i32 %318, %319, !dbg !1806
  br i1 %320, label %321, label %407, !dbg !1806

321:                                              ; preds = %317
  %322 = load ptr, ptr %6, align 8, !dbg !1808
  %323 = load i32, ptr %11, align 4, !dbg !1808
  %324 = load i32, ptr %12, align 4, !dbg !1808
  call void @Fax3BadLength(ptr noundef @Fax3DecodeRLE.module, ptr noundef %322, i32 noundef %323, i32 noundef %324), !dbg !1808
  br label %325, !dbg !1808

325:                                              ; preds = %335, %321
  %326 = load i32, ptr %11, align 4, !dbg !1808
  %327 = load i32, ptr %12, align 4, !dbg !1808
  %328 = icmp sgt i32 %326, %327, !dbg !1808
  br i1 %328, label %329, label %333, !dbg !1808

329:                                              ; preds = %325
  %330 = load ptr, ptr %18, align 8, !dbg !1808
  %331 = load ptr, ptr %19, align 8, !dbg !1808
  %332 = icmp ugt ptr %330, %331, !dbg !1808
  br label %333

333:                                              ; preds = %329, %325
  %334 = phi i1 [ false, %325 ], [ %332, %329 ], !dbg !1810
  br i1 %334, label %335, label %341, !dbg !1808

335:                                              ; preds = %333
  %336 = load ptr, ptr %18, align 8, !dbg !1808
  %337 = getelementptr inbounds i32, ptr %336, i32 -1, !dbg !1808
  store ptr %337, ptr %18, align 8, !dbg !1808
  %338 = load i32, ptr %337, align 4, !dbg !1808
  %339 = load i32, ptr %11, align 4, !dbg !1808
  %340 = sub i32 %339, %338, !dbg !1808
  store i32 %340, ptr %11, align 4, !dbg !1808
  br label %325, !dbg !1808, !llvm.loop !1811

341:                                              ; preds = %333
  %342 = load i32, ptr %11, align 4, !dbg !1812
  %343 = load i32, ptr %12, align 4, !dbg !1812
  %344 = icmp slt i32 %342, %343, !dbg !1812
  br i1 %344, label %345, label %382, !dbg !1812

345:                                              ; preds = %341
  %346 = load i32, ptr %11, align 4, !dbg !1814
  %347 = icmp slt i32 %346, 0, !dbg !1814
  br i1 %347, label %348, label %349, !dbg !1814

348:                                              ; preds = %345
  store i32 0, ptr %11, align 4, !dbg !1814
  br label %349, !dbg !1814

349:                                              ; preds = %348, %345
  %350 = load ptr, ptr %18, align 8, !dbg !1817
  %351 = load ptr, ptr %19, align 8, !dbg !1817
  %352 = ptrtoint ptr %350 to i64, !dbg !1817
  %353 = ptrtoint ptr %351 to i64, !dbg !1817
  %354 = sub i64 %352, %353, !dbg !1817
  %355 = sdiv exact i64 %354, 4, !dbg !1817
  %356 = and i64 %355, 1, !dbg !1817
  %357 = icmp ne i64 %356, 0, !dbg !1817
  br i1 %357, label %358, label %367, !dbg !1817

358:                                              ; preds = %349
  br label %359, !dbg !1817

359:                                              ; preds = %358
  %360 = load i32, ptr %15, align 4, !dbg !1819
  %361 = add nsw i32 %360, 0, !dbg !1819
  %362 = load ptr, ptr %18, align 8, !dbg !1819
  %363 = getelementptr inbounds nuw i32, ptr %362, i32 1, !dbg !1819
  store ptr %363, ptr %18, align 8, !dbg !1819
  store i32 %361, ptr %362, align 4, !dbg !1819
  %364 = load i32, ptr %11, align 4, !dbg !1819
  %365 = add nsw i32 %364, 0, !dbg !1819
  store i32 %365, ptr %11, align 4, !dbg !1819
  store i32 0, ptr %15, align 4, !dbg !1819
  br label %366, !dbg !1819

366:                                              ; preds = %359
  br label %367, !dbg !1819

367:                                              ; preds = %366, %349
  br label %368, !dbg !1821

368:                                              ; preds = %367
  %369 = load i32, ptr %15, align 4, !dbg !1822
  %370 = load i32, ptr %12, align 4, !dbg !1822
  %371 = load i32, ptr %11, align 4, !dbg !1822
  %372 = sub nsw i32 %370, %371, !dbg !1822
  %373 = add nsw i32 %369, %372, !dbg !1822
  %374 = load ptr, ptr %18, align 8, !dbg !1822
  %375 = getelementptr inbounds nuw i32, ptr %374, i32 1, !dbg !1822
  store ptr %375, ptr %18, align 8, !dbg !1822
  store i32 %373, ptr %374, align 4, !dbg !1822
  %376 = load i32, ptr %12, align 4, !dbg !1822
  %377 = load i32, ptr %11, align 4, !dbg !1822
  %378 = sub nsw i32 %376, %377, !dbg !1822
  %379 = load i32, ptr %11, align 4, !dbg !1822
  %380 = add nsw i32 %379, %378, !dbg !1822
  store i32 %380, ptr %11, align 4, !dbg !1822
  store i32 0, ptr %15, align 4, !dbg !1822
  br label %381, !dbg !1822

381:                                              ; preds = %368
  br label %406, !dbg !1821

382:                                              ; preds = %341
  %383 = load i32, ptr %11, align 4, !dbg !1824
  %384 = load i32, ptr %12, align 4, !dbg !1824
  %385 = icmp sgt i32 %383, %384, !dbg !1824
  br i1 %385, label %386, label %405, !dbg !1824

386:                                              ; preds = %382
  br label %387, !dbg !1826

387:                                              ; preds = %386
  %388 = load i32, ptr %15, align 4, !dbg !1828
  %389 = load i32, ptr %12, align 4, !dbg !1828
  %390 = add nsw i32 %388, %389, !dbg !1828
  %391 = load ptr, ptr %18, align 8, !dbg !1828
  %392 = getelementptr inbounds nuw i32, ptr %391, i32 1, !dbg !1828
  store ptr %392, ptr %18, align 8, !dbg !1828
  store i32 %390, ptr %391, align 4, !dbg !1828
  %393 = load i32, ptr %12, align 4, !dbg !1828
  %394 = load i32, ptr %11, align 4, !dbg !1828
  %395 = add nsw i32 %394, %393, !dbg !1828
  store i32 %395, ptr %11, align 4, !dbg !1828
  store i32 0, ptr %15, align 4, !dbg !1828
  br label %396, !dbg !1828

396:                                              ; preds = %387
  br label %397, !dbg !1826

397:                                              ; preds = %396
  %398 = load i32, ptr %15, align 4, !dbg !1830
  %399 = add nsw i32 %398, 0, !dbg !1830
  %400 = load ptr, ptr %18, align 8, !dbg !1830
  %401 = getelementptr inbounds nuw i32, ptr %400, i32 1, !dbg !1830
  store ptr %401, ptr %18, align 8, !dbg !1830
  store i32 %399, ptr %400, align 4, !dbg !1830
  %402 = load i32, ptr %11, align 4, !dbg !1830
  %403 = add nsw i32 %402, 0, !dbg !1830
  store i32 %403, ptr %11, align 4, !dbg !1830
  store i32 0, ptr %15, align 4, !dbg !1830
  br label %404, !dbg !1830

404:                                              ; preds = %397
  br label %405, !dbg !1826

405:                                              ; preds = %404, %382
  br label %406

406:                                              ; preds = %405, %381
  br label %407, !dbg !1808

407:                                              ; preds = %406, %317
  br label %408, !dbg !1832

408:                                              ; preds = %407
  br label %589, !dbg !1707

409:                                              ; preds = %300, %292, %265, %185, %177, %150
    #dbg_label(!1833, !1707)
  br label %410, !dbg !1707

410:                                              ; preds = %409
  %411 = load i32, ptr %15, align 4, !dbg !1834
  %412 = icmp ne i32 %411, 0, !dbg !1834
  br i1 %412, label %413, label %422, !dbg !1834

413:                                              ; preds = %410
  br label %414, !dbg !1834

414:                                              ; preds = %413
  %415 = load i32, ptr %15, align 4, !dbg !1837
  %416 = add nsw i32 %415, 0, !dbg !1837
  %417 = load ptr, ptr %18, align 8, !dbg !1837
  %418 = getelementptr inbounds nuw i32, ptr %417, i32 1, !dbg !1837
  store ptr %418, ptr %18, align 8, !dbg !1837
  store i32 %416, ptr %417, align 4, !dbg !1837
  %419 = load i32, ptr %11, align 4, !dbg !1837
  %420 = add nsw i32 %419, 0, !dbg !1837
  store i32 %420, ptr %11, align 4, !dbg !1837
  store i32 0, ptr %15, align 4, !dbg !1837
  br label %421, !dbg !1837

421:                                              ; preds = %414
  br label %422, !dbg !1837

422:                                              ; preds = %421, %410
  %423 = load i32, ptr %11, align 4, !dbg !1839
  %424 = load i32, ptr %12, align 4, !dbg !1839
  %425 = icmp ne i32 %423, %424, !dbg !1839
  br i1 %425, label %426, label %512, !dbg !1839

426:                                              ; preds = %422
  %427 = load ptr, ptr %6, align 8, !dbg !1841
  %428 = load i32, ptr %11, align 4, !dbg !1841
  %429 = load i32, ptr %12, align 4, !dbg !1841
  call void @Fax3BadLength(ptr noundef @Fax3DecodeRLE.module, ptr noundef %427, i32 noundef %428, i32 noundef %429), !dbg !1841
  br label %430, !dbg !1841

430:                                              ; preds = %440, %426
  %431 = load i32, ptr %11, align 4, !dbg !1841
  %432 = load i32, ptr %12, align 4, !dbg !1841
  %433 = icmp sgt i32 %431, %432, !dbg !1841
  br i1 %433, label %434, label %438, !dbg !1841

434:                                              ; preds = %430
  %435 = load ptr, ptr %18, align 8, !dbg !1841
  %436 = load ptr, ptr %19, align 8, !dbg !1841
  %437 = icmp ugt ptr %435, %436, !dbg !1841
  br label %438

438:                                              ; preds = %434, %430
  %439 = phi i1 [ false, %430 ], [ %437, %434 ], !dbg !1843
  br i1 %439, label %440, label %446, !dbg !1841

440:                                              ; preds = %438
  %441 = load ptr, ptr %18, align 8, !dbg !1841
  %442 = getelementptr inbounds i32, ptr %441, i32 -1, !dbg !1841
  store ptr %442, ptr %18, align 8, !dbg !1841
  %443 = load i32, ptr %442, align 4, !dbg !1841
  %444 = load i32, ptr %11, align 4, !dbg !1841
  %445 = sub i32 %444, %443, !dbg !1841
  store i32 %445, ptr %11, align 4, !dbg !1841
  br label %430, !dbg !1841, !llvm.loop !1844

446:                                              ; preds = %438
  %447 = load i32, ptr %11, align 4, !dbg !1845
  %448 = load i32, ptr %12, align 4, !dbg !1845
  %449 = icmp slt i32 %447, %448, !dbg !1845
  br i1 %449, label %450, label %487, !dbg !1845

450:                                              ; preds = %446
  %451 = load i32, ptr %11, align 4, !dbg !1847
  %452 = icmp slt i32 %451, 0, !dbg !1847
  br i1 %452, label %453, label %454, !dbg !1847

453:                                              ; preds = %450
  store i32 0, ptr %11, align 4, !dbg !1847
  br label %454, !dbg !1847

454:                                              ; preds = %453, %450
  %455 = load ptr, ptr %18, align 8, !dbg !1850
  %456 = load ptr, ptr %19, align 8, !dbg !1850
  %457 = ptrtoint ptr %455 to i64, !dbg !1850
  %458 = ptrtoint ptr %456 to i64, !dbg !1850
  %459 = sub i64 %457, %458, !dbg !1850
  %460 = sdiv exact i64 %459, 4, !dbg !1850
  %461 = and i64 %460, 1, !dbg !1850
  %462 = icmp ne i64 %461, 0, !dbg !1850
  br i1 %462, label %463, label %472, !dbg !1850

463:                                              ; preds = %454
  br label %464, !dbg !1850

464:                                              ; preds = %463
  %465 = load i32, ptr %15, align 4, !dbg !1852
  %466 = add nsw i32 %465, 0, !dbg !1852
  %467 = load ptr, ptr %18, align 8, !dbg !1852
  %468 = getelementptr inbounds nuw i32, ptr %467, i32 1, !dbg !1852
  store ptr %468, ptr %18, align 8, !dbg !1852
  store i32 %466, ptr %467, align 4, !dbg !1852
  %469 = load i32, ptr %11, align 4, !dbg !1852
  %470 = add nsw i32 %469, 0, !dbg !1852
  store i32 %470, ptr %11, align 4, !dbg !1852
  store i32 0, ptr %15, align 4, !dbg !1852
  br label %471, !dbg !1852

471:                                              ; preds = %464
  br label %472, !dbg !1852

472:                                              ; preds = %471, %454
  br label %473, !dbg !1854

473:                                              ; preds = %472
  %474 = load i32, ptr %15, align 4, !dbg !1855
  %475 = load i32, ptr %12, align 4, !dbg !1855
  %476 = load i32, ptr %11, align 4, !dbg !1855
  %477 = sub nsw i32 %475, %476, !dbg !1855
  %478 = add nsw i32 %474, %477, !dbg !1855
  %479 = load ptr, ptr %18, align 8, !dbg !1855
  %480 = getelementptr inbounds nuw i32, ptr %479, i32 1, !dbg !1855
  store ptr %480, ptr %18, align 8, !dbg !1855
  store i32 %478, ptr %479, align 4, !dbg !1855
  %481 = load i32, ptr %12, align 4, !dbg !1855
  %482 = load i32, ptr %11, align 4, !dbg !1855
  %483 = sub nsw i32 %481, %482, !dbg !1855
  %484 = load i32, ptr %11, align 4, !dbg !1855
  %485 = add nsw i32 %484, %483, !dbg !1855
  store i32 %485, ptr %11, align 4, !dbg !1855
  store i32 0, ptr %15, align 4, !dbg !1855
  br label %486, !dbg !1855

486:                                              ; preds = %473
  br label %511, !dbg !1854

487:                                              ; preds = %446
  %488 = load i32, ptr %11, align 4, !dbg !1857
  %489 = load i32, ptr %12, align 4, !dbg !1857
  %490 = icmp sgt i32 %488, %489, !dbg !1857
  br i1 %490, label %491, label %510, !dbg !1857

491:                                              ; preds = %487
  br label %492, !dbg !1859

492:                                              ; preds = %491
  %493 = load i32, ptr %15, align 4, !dbg !1861
  %494 = load i32, ptr %12, align 4, !dbg !1861
  %495 = add nsw i32 %493, %494, !dbg !1861
  %496 = load ptr, ptr %18, align 8, !dbg !1861
  %497 = getelementptr inbounds nuw i32, ptr %496, i32 1, !dbg !1861
  store ptr %497, ptr %18, align 8, !dbg !1861
  store i32 %495, ptr %496, align 4, !dbg !1861
  %498 = load i32, ptr %12, align 4, !dbg !1861
  %499 = load i32, ptr %11, align 4, !dbg !1861
  %500 = add nsw i32 %499, %498, !dbg !1861
  store i32 %500, ptr %11, align 4, !dbg !1861
  store i32 0, ptr %15, align 4, !dbg !1861
  br label %501, !dbg !1861

501:                                              ; preds = %492
  br label %502, !dbg !1859

502:                                              ; preds = %501
  %503 = load i32, ptr %15, align 4, !dbg !1863
  %504 = add nsw i32 %503, 0, !dbg !1863
  %505 = load ptr, ptr %18, align 8, !dbg !1863
  %506 = getelementptr inbounds nuw i32, ptr %505, i32 1, !dbg !1863
  store ptr %506, ptr %18, align 8, !dbg !1863
  store i32 %504, ptr %505, align 4, !dbg !1863
  %507 = load i32, ptr %11, align 4, !dbg !1863
  %508 = add nsw i32 %507, 0, !dbg !1863
  store i32 %508, ptr %11, align 4, !dbg !1863
  store i32 0, ptr %15, align 4, !dbg !1863
  br label %509, !dbg !1863

509:                                              ; preds = %502
  br label %510, !dbg !1859

510:                                              ; preds = %509, %487
  br label %511

511:                                              ; preds = %510, %486
  br label %512, !dbg !1841

512:                                              ; preds = %511, %422
  br label %513, !dbg !1865

513:                                              ; preds = %512
  br label %514, !dbg !1707

514:                                              ; preds = %513
  %515 = load ptr, ptr %10, align 8, !dbg !1866
  %516 = getelementptr inbounds nuw %struct.Fax3DecodeState, ptr %515, i32 0, i32 5, !dbg !1867
  %517 = load ptr, ptr %516, align 8, !dbg !1867
  %518 = load ptr, ptr %7, align 8, !dbg !1868
  %519 = load ptr, ptr %19, align 8, !dbg !1869
  %520 = load ptr, ptr %18, align 8, !dbg !1870
  %521 = load i32, ptr %12, align 4, !dbg !1871
  call void %517(ptr noundef %518, ptr noundef %519, ptr noundef %520, i32 noundef %521), !dbg !1872
  %522 = load i32, ptr %23, align 4, !dbg !1873
  %523 = and i32 %522, 4, !dbg !1875
  %524 = icmp ne i32 %523, 0, !dbg !1875
  br i1 %524, label %525, label %538, !dbg !1875

525:                                              ; preds = %514
    #dbg_declare(ptr %24, !1876, !DIExpression(), !1878)
  %526 = load i32, ptr %14, align 4, !dbg !1879
  %527 = load i32, ptr %14, align 4, !dbg !1880
  %528 = and i32 %527, -8, !dbg !1881
  %529 = sub nsw i32 %526, %528, !dbg !1882
  store i32 %529, ptr %24, align 4, !dbg !1878
  br label %530, !dbg !1883

530:                                              ; preds = %525
  %531 = load i32, ptr %24, align 4, !dbg !1884
  %532 = load i32, ptr %14, align 4, !dbg !1884
  %533 = sub nsw i32 %532, %531, !dbg !1884
  store i32 %533, ptr %14, align 4, !dbg !1884
  %534 = load i32, ptr %24, align 4, !dbg !1884
  %535 = load i32, ptr %13, align 4, !dbg !1884
  %536 = lshr i32 %535, %534, !dbg !1884
  store i32 %536, ptr %13, align 4, !dbg !1884
  br label %537, !dbg !1884

537:                                              ; preds = %530
  br label %567, !dbg !1886

538:                                              ; preds = %514
  %539 = load i32, ptr %23, align 4, !dbg !1887
  %540 = and i32 %539, 8, !dbg !1889
  %541 = icmp ne i32 %540, 0, !dbg !1889
  br i1 %541, label %542, label %566, !dbg !1889

542:                                              ; preds = %538
    #dbg_declare(ptr %25, !1890, !DIExpression(), !1892)
  %543 = load i32, ptr %14, align 4, !dbg !1893
  %544 = load i32, ptr %14, align 4, !dbg !1894
  %545 = and i32 %544, -16, !dbg !1895
  %546 = sub nsw i32 %543, %545, !dbg !1896
  store i32 %546, ptr %25, align 4, !dbg !1892
  br label %547, !dbg !1897

547:                                              ; preds = %542
  %548 = load i32, ptr %25, align 4, !dbg !1898
  %549 = load i32, ptr %14, align 4, !dbg !1898
  %550 = sub nsw i32 %549, %548, !dbg !1898
  store i32 %550, ptr %14, align 4, !dbg !1898
  %551 = load i32, ptr %25, align 4, !dbg !1898
  %552 = load i32, ptr %13, align 4, !dbg !1898
  %553 = lshr i32 %552, %551, !dbg !1898
  store i32 %553, ptr %13, align 4, !dbg !1898
  br label %554, !dbg !1898

554:                                              ; preds = %547
  %555 = load i32, ptr %14, align 4, !dbg !1900
  %556 = icmp eq i32 %555, 0, !dbg !1902
  br i1 %556, label %557, label %565, !dbg !1903

557:                                              ; preds = %554
  %558 = load ptr, ptr %16, align 8, !dbg !1904
  %559 = ptrtoint ptr %558 to i64, !dbg !1904
  %560 = and i64 %559, 1, !dbg !1904
  %561 = icmp eq i64 %560, 0, !dbg !1904
  br i1 %561, label %565, label %562, !dbg !1903

562:                                              ; preds = %557
  %563 = load ptr, ptr %16, align 8, !dbg !1905
  %564 = getelementptr inbounds nuw i8, ptr %563, i32 1, !dbg !1905
  store ptr %564, ptr %16, align 8, !dbg !1905
  br label %565, !dbg !1906

565:                                              ; preds = %562, %557, %554
  br label %566, !dbg !1907

566:                                              ; preds = %565, %538
  br label %567

567:                                              ; preds = %566, %537
  %568 = load ptr, ptr %10, align 8, !dbg !1908
  %569 = getelementptr inbounds nuw %struct.Fax3DecodeState, ptr %568, i32 0, i32 0, !dbg !1909
  %570 = getelementptr inbounds nuw %struct.Fax3BaseState, ptr %569, i32 0, i32 1, !dbg !1910
  %571 = load i32, ptr %570, align 4, !dbg !1910
  %572 = load ptr, ptr %7, align 8, !dbg !1911
  %573 = zext i32 %571 to i64, !dbg !1911
  %574 = getelementptr inbounds nuw i8, ptr %572, i64 %573, !dbg !1911
  store ptr %574, ptr %7, align 8, !dbg !1911
  %575 = load ptr, ptr %10, align 8, !dbg !1912
  %576 = getelementptr inbounds nuw %struct.Fax3DecodeState, ptr %575, i32 0, i32 0, !dbg !1913
  %577 = getelementptr inbounds nuw %struct.Fax3BaseState, ptr %576, i32 0, i32 1, !dbg !1914
  %578 = load i32, ptr %577, align 4, !dbg !1914
  %579 = load i32, ptr %8, align 4, !dbg !1915
  %580 = sub i32 %579, %578, !dbg !1915
  store i32 %580, ptr %8, align 4, !dbg !1915
  %581 = load i32, ptr %8, align 4, !dbg !1916
  %582 = icmp ne i32 %581, 0, !dbg !1918
  br i1 %582, label %583, label %588, !dbg !1918

583:                                              ; preds = %567
  %584 = load ptr, ptr %6, align 8, !dbg !1919
  %585 = getelementptr inbounds nuw %struct.tiff, ptr %584, i32 0, i32 11, !dbg !1920
  %586 = load i32, ptr %585, align 8, !dbg !1921
  %587 = add i32 %586, 1, !dbg !1921
  store i32 %587, ptr %585, align 8, !dbg !1921
  br label %588, !dbg !1919

588:                                              ; preds = %583, %567
  br label %64, !dbg !1922, !llvm.loop !1923

589:                                              ; preds = %408
    #dbg_label(!1925, !1926)
  %590 = load ptr, ptr %10, align 8, !dbg !1927
  %591 = getelementptr inbounds nuw %struct.Fax3DecodeState, ptr %590, i32 0, i32 5, !dbg !1928
  %592 = load ptr, ptr %591, align 8, !dbg !1928
  %593 = load ptr, ptr %7, align 8, !dbg !1929
  %594 = load ptr, ptr %19, align 8, !dbg !1930
  %595 = load ptr, ptr %18, align 8, !dbg !1931
  %596 = load i32, ptr %12, align 4, !dbg !1932
  call void %592(ptr noundef %593, ptr noundef %594, ptr noundef %595, i32 noundef %596), !dbg !1933
  br label %597, !dbg !1934

597:                                              ; preds = %589
  %598 = load i32, ptr %14, align 4, !dbg !1935
  %599 = load ptr, ptr %10, align 8, !dbg !1935
  %600 = getelementptr inbounds nuw %struct.Fax3DecodeState, ptr %599, i32 0, i32 3, !dbg !1935
  store i32 %598, ptr %600, align 4, !dbg !1935
  %601 = load i32, ptr %13, align 4, !dbg !1935
  %602 = load ptr, ptr %10, align 8, !dbg !1935
  %603 = getelementptr inbounds nuw %struct.Fax3DecodeState, ptr %602, i32 0, i32 2, !dbg !1935
  store i32 %601, ptr %603, align 8, !dbg !1935
  %604 = load i32, ptr %20, align 4, !dbg !1935
  %605 = load ptr, ptr %10, align 8, !dbg !1935
  %606 = getelementptr inbounds nuw %struct.Fax3DecodeState, ptr %605, i32 0, i32 4, !dbg !1935
  store i32 %604, ptr %606, align 8, !dbg !1935
  %607 = load ptr, ptr %16, align 8, !dbg !1935
  %608 = load ptr, ptr %6, align 8, !dbg !1935
  %609 = getelementptr inbounds nuw %struct.tiff, ptr %608, i32 0, i32 42, !dbg !1935
  %610 = load ptr, ptr %609, align 8, !dbg !1935
  %611 = ptrtoint ptr %607 to i64, !dbg !1935
  %612 = ptrtoint ptr %610 to i64, !dbg !1935
  %613 = sub i64 %611, %612, !dbg !1935
  %614 = load ptr, ptr %6, align 8, !dbg !1935
  %615 = getelementptr inbounds nuw %struct.tiff, ptr %614, i32 0, i32 43, !dbg !1935
  %616 = load i32, ptr %615, align 8, !dbg !1935
  %617 = sext i32 %616 to i64, !dbg !1935
  %618 = sub nsw i64 %617, %613, !dbg !1935
  %619 = trunc i64 %618 to i32, !dbg !1935
  store i32 %619, ptr %615, align 8, !dbg !1935
  %620 = load ptr, ptr %16, align 8, !dbg !1935
  %621 = load ptr, ptr %6, align 8, !dbg !1935
  %622 = getelementptr inbounds nuw %struct.tiff, ptr %621, i32 0, i32 42, !dbg !1935
  store ptr %620, ptr %622, align 8, !dbg !1935
  br label %623, !dbg !1935

623:                                              ; preds = %597
  store i32 -1, ptr %5, align 4, !dbg !1937
  br label %652, !dbg !1937

624:                                              ; preds = %64
  br label %625, !dbg !1938

625:                                              ; preds = %624
  %626 = load i32, ptr %14, align 4, !dbg !1939
  %627 = load ptr, ptr %10, align 8, !dbg !1939
  %628 = getelementptr inbounds nuw %struct.Fax3DecodeState, ptr %627, i32 0, i32 3, !dbg !1939
  store i32 %626, ptr %628, align 4, !dbg !1939
  %629 = load i32, ptr %13, align 4, !dbg !1939
  %630 = load ptr, ptr %10, align 8, !dbg !1939
  %631 = getelementptr inbounds nuw %struct.Fax3DecodeState, ptr %630, i32 0, i32 2, !dbg !1939
  store i32 %629, ptr %631, align 8, !dbg !1939
  %632 = load i32, ptr %20, align 4, !dbg !1939
  %633 = load ptr, ptr %10, align 8, !dbg !1939
  %634 = getelementptr inbounds nuw %struct.Fax3DecodeState, ptr %633, i32 0, i32 4, !dbg !1939
  store i32 %632, ptr %634, align 8, !dbg !1939
  %635 = load ptr, ptr %16, align 8, !dbg !1939
  %636 = load ptr, ptr %6, align 8, !dbg !1939
  %637 = getelementptr inbounds nuw %struct.tiff, ptr %636, i32 0, i32 42, !dbg !1939
  %638 = load ptr, ptr %637, align 8, !dbg !1939
  %639 = ptrtoint ptr %635 to i64, !dbg !1939
  %640 = ptrtoint ptr %638 to i64, !dbg !1939
  %641 = sub i64 %639, %640, !dbg !1939
  %642 = load ptr, ptr %6, align 8, !dbg !1939
  %643 = getelementptr inbounds nuw %struct.tiff, ptr %642, i32 0, i32 43, !dbg !1939
  %644 = load i32, ptr %643, align 8, !dbg !1939
  %645 = sext i32 %644 to i64, !dbg !1939
  %646 = sub nsw i64 %645, %641, !dbg !1939
  %647 = trunc i64 %646 to i32, !dbg !1939
  store i32 %647, ptr %643, align 8, !dbg !1939
  %648 = load ptr, ptr %16, align 8, !dbg !1939
  %649 = load ptr, ptr %6, align 8, !dbg !1939
  %650 = getelementptr inbounds nuw %struct.tiff, ptr %649, i32 0, i32 42, !dbg !1939
  store ptr %648, ptr %650, align 8, !dbg !1939
  br label %651, !dbg !1939

651:                                              ; preds = %625
  store i32 1, ptr %5, align 4, !dbg !1941
  br label %652, !dbg !1941

652:                                              ; preds = %651, %623
  %653 = load i32, ptr %5, align 4, !dbg !1942
  ret i32 %653, !dbg !1942
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @TIFFInitCCITTRLEW(ptr noundef %0, i32 noundef %1) #0 !dbg !1943 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
    #dbg_declare(ptr %4, !1944, !DIExpression(), !1945)
  store i32 %1, ptr %5, align 4
    #dbg_declare(ptr %5, !1946, !DIExpression(), !1947)
  %6 = load ptr, ptr %4, align 8, !dbg !1948
  %7 = call i32 @InitCCITTFax3(ptr noundef %6), !dbg !1950
  %8 = icmp ne i32 %7, 0, !dbg !1950
  br i1 %8, label %9, label %18, !dbg !1950

9:                                                ; preds = %2
  %10 = load ptr, ptr %4, align 8, !dbg !1951
  %11 = getelementptr inbounds nuw %struct.tiff, ptr %10, i32 0, i32 26, !dbg !1953
  store ptr @Fax3DecodeRLE, ptr %11, align 8, !dbg !1954
  %12 = load ptr, ptr %4, align 8, !dbg !1955
  %13 = getelementptr inbounds nuw %struct.tiff, ptr %12, i32 0, i32 28, !dbg !1956
  store ptr @Fax3DecodeRLE, ptr %13, align 8, !dbg !1957
  %14 = load ptr, ptr %4, align 8, !dbg !1958
  %15 = getelementptr inbounds nuw %struct.tiff, ptr %14, i32 0, i32 30, !dbg !1959
  store ptr @Fax3DecodeRLE, ptr %15, align 8, !dbg !1960
  %16 = load ptr, ptr %4, align 8, !dbg !1961
  %17 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %16, i32 noundef 65536, i32 noundef 11), !dbg !1962
  store i32 %17, ptr %3, align 4, !dbg !1963
  br label %19, !dbg !1963

18:                                               ; preds = %2
  store i32 0, ptr %3, align 4, !dbg !1964
  br label %19, !dbg !1964

19:                                               ; preds = %18, %9
  %20 = load i32, ptr %3, align 4, !dbg !1965
  ret i32 %20, !dbg !1965
}

declare ptr @_TIFFmalloc(i32 noundef) #2

declare void @TIFFError(ptr noundef, ptr noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @Fax3VGetField(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 !dbg !1966 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
    #dbg_declare(ptr %5, !1967, !DIExpression(), !1968)
  store i32 %1, ptr %6, align 4
    #dbg_declare(ptr %6, !1969, !DIExpression(), !1970)
  store ptr %2, ptr %7, align 8
    #dbg_declare(ptr %7, !1971, !DIExpression(), !1972)
    #dbg_declare(ptr %8, !1973, !DIExpression(), !1974)
  %9 = load ptr, ptr %5, align 8, !dbg !1975
  %10 = getelementptr inbounds nuw %struct.tiff, ptr %9, i32 0, i32 37, !dbg !1975
  %11 = load ptr, ptr %10, align 8, !dbg !1975
  store ptr %11, ptr %8, align 8, !dbg !1974
  %12 = load i32, ptr %6, align 4, !dbg !1976
  switch i32 %12, label %201 [
    i32 65536, label %13
    i32 65540, label %33
    i32 292, label %61
    i32 293, label %61
    i32 326, label %81
    i32 327, label %101
    i32 328, label %121
    i32 34908, label %141
    i32 34909, label %161
    i32 34910, label %181
  ], !dbg !1977

13:                                               ; preds = %3
  %14 = load ptr, ptr %8, align 8, !dbg !1978
  %15 = getelementptr inbounds nuw %struct.Fax3BaseState, ptr %14, i32 0, i32 0, !dbg !1980
  %16 = load i32, ptr %15, align 8, !dbg !1980
  %17 = load ptr, ptr %7, align 8, !dbg !1981
  %18 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %17, i32 0, i32 0, !dbg !1981
  %19 = load i32, ptr %18, align 8, !dbg !1981
  %20 = icmp ule i32 %19, 40, !dbg !1981
  br i1 %20, label %21, label %26, !dbg !1981

21:                                               ; preds = %13
  %22 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %17, i32 0, i32 3, !dbg !1981
  %23 = load ptr, ptr %22, align 8, !dbg !1981
  %24 = getelementptr i8, ptr %23, i32 %19, !dbg !1981
  %25 = add i32 %19, 8, !dbg !1981
  store i32 %25, ptr %18, align 8, !dbg !1981
  br label %30, !dbg !1981

26:                                               ; preds = %13
  %27 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %17, i32 0, i32 2, !dbg !1981
  %28 = load ptr, ptr %27, align 8, !dbg !1981
  %29 = getelementptr i8, ptr %28, i32 8, !dbg !1981
  store ptr %29, ptr %27, align 8, !dbg !1981
  br label %30, !dbg !1981

30:                                               ; preds = %26, %21
  %31 = phi ptr [ %24, %21 ], [ %28, %26 ], !dbg !1981
  %32 = load ptr, ptr %31, align 8, !dbg !1981
  store i32 %16, ptr %32, align 4, !dbg !1982
  br label %209, !dbg !1983

33:                                               ; preds = %3
  %34 = load ptr, ptr %5, align 8, !dbg !1984
  %35 = getelementptr inbounds nuw %struct.tiff, ptr %34, i32 0, i32 2, !dbg !1986
  %36 = load i32, ptr %35, align 4, !dbg !1986
  %37 = icmp eq i32 %36, 0, !dbg !1987
  br i1 %37, label %38, label %60, !dbg !1987

38:                                               ; preds = %33
  %39 = load ptr, ptr %5, align 8, !dbg !1988
  %40 = getelementptr inbounds nuw %struct.tiff, ptr %39, i32 0, i32 37, !dbg !1988
  %41 = load ptr, ptr %40, align 8, !dbg !1988
  %42 = getelementptr inbounds nuw %struct.Fax3DecodeState, ptr %41, i32 0, i32 5, !dbg !1989
  %43 = load ptr, ptr %42, align 8, !dbg !1989
  %44 = load ptr, ptr %7, align 8, !dbg !1990
  %45 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %44, i32 0, i32 0, !dbg !1990
  %46 = load i32, ptr %45, align 8, !dbg !1990
  %47 = icmp ule i32 %46, 40, !dbg !1990
  br i1 %47, label %48, label %53, !dbg !1990

48:                                               ; preds = %38
  %49 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %44, i32 0, i32 3, !dbg !1990
  %50 = load ptr, ptr %49, align 8, !dbg !1990
  %51 = getelementptr i8, ptr %50, i32 %46, !dbg !1990
  %52 = add i32 %46, 8, !dbg !1990
  store i32 %52, ptr %45, align 8, !dbg !1990
  br label %57, !dbg !1990

53:                                               ; preds = %38
  %54 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %44, i32 0, i32 2, !dbg !1990
  %55 = load ptr, ptr %54, align 8, !dbg !1990
  %56 = getelementptr i8, ptr %55, i32 8, !dbg !1990
  store ptr %56, ptr %54, align 8, !dbg !1990
  br label %57, !dbg !1990

57:                                               ; preds = %53, %48
  %58 = phi ptr [ %51, %48 ], [ %55, %53 ], !dbg !1990
  %59 = load ptr, ptr %58, align 8, !dbg !1990
  store ptr %43, ptr %59, align 8, !dbg !1991
  br label %60, !dbg !1992

60:                                               ; preds = %57, %33
  br label %209, !dbg !1993

61:                                               ; preds = %3, %3
  %62 = load ptr, ptr %8, align 8, !dbg !1994
  %63 = getelementptr inbounds nuw %struct.Fax3BaseState, ptr %62, i32 0, i32 6, !dbg !1995
  %64 = load i32, ptr %63, align 8, !dbg !1995
  %65 = load ptr, ptr %7, align 8, !dbg !1996
  %66 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %65, i32 0, i32 0, !dbg !1996
  %67 = load i32, ptr %66, align 8, !dbg !1996
  %68 = icmp ule i32 %67, 40, !dbg !1996
  br i1 %68, label %69, label %74, !dbg !1996

69:                                               ; preds = %61
  %70 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %65, i32 0, i32 3, !dbg !1996
  %71 = load ptr, ptr %70, align 8, !dbg !1996
  %72 = getelementptr i8, ptr %71, i32 %67, !dbg !1996
  %73 = add i32 %67, 8, !dbg !1996
  store i32 %73, ptr %66, align 8, !dbg !1996
  br label %78, !dbg !1996

74:                                               ; preds = %61
  %75 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %65, i32 0, i32 2, !dbg !1996
  %76 = load ptr, ptr %75, align 8, !dbg !1996
  %77 = getelementptr i8, ptr %76, i32 8, !dbg !1996
  store ptr %77, ptr %75, align 8, !dbg !1996
  br label %78, !dbg !1996

78:                                               ; preds = %74, %69
  %79 = phi ptr [ %72, %69 ], [ %76, %74 ], !dbg !1996
  %80 = load ptr, ptr %79, align 8, !dbg !1996
  store i32 %64, ptr %80, align 4, !dbg !1997
  br label %209, !dbg !1998

81:                                               ; preds = %3
  %82 = load ptr, ptr %8, align 8, !dbg !1999
  %83 = getelementptr inbounds nuw %struct.Fax3BaseState, ptr %82, i32 0, i32 5, !dbg !2000
  %84 = load i32, ptr %83, align 4, !dbg !2000
  %85 = load ptr, ptr %7, align 8, !dbg !2001
  %86 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %85, i32 0, i32 0, !dbg !2001
  %87 = load i32, ptr %86, align 8, !dbg !2001
  %88 = icmp ule i32 %87, 40, !dbg !2001
  br i1 %88, label %89, label %94, !dbg !2001

89:                                               ; preds = %81
  %90 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %85, i32 0, i32 3, !dbg !2001
  %91 = load ptr, ptr %90, align 8, !dbg !2001
  %92 = getelementptr i8, ptr %91, i32 %87, !dbg !2001
  %93 = add i32 %87, 8, !dbg !2001
  store i32 %93, ptr %86, align 8, !dbg !2001
  br label %98, !dbg !2001

94:                                               ; preds = %81
  %95 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %85, i32 0, i32 2, !dbg !2001
  %96 = load ptr, ptr %95, align 8, !dbg !2001
  %97 = getelementptr i8, ptr %96, i32 8, !dbg !2001
  store ptr %97, ptr %95, align 8, !dbg !2001
  br label %98, !dbg !2001

98:                                               ; preds = %94, %89
  %99 = phi ptr [ %92, %89 ], [ %96, %94 ], !dbg !2001
  %100 = load ptr, ptr %99, align 8, !dbg !2001
  store i32 %84, ptr %100, align 4, !dbg !2002
  br label %209, !dbg !2003

101:                                              ; preds = %3
  %102 = load ptr, ptr %8, align 8, !dbg !2004
  %103 = getelementptr inbounds nuw %struct.Fax3BaseState, ptr %102, i32 0, i32 3, !dbg !2005
  %104 = load i16, ptr %103, align 4, !dbg !2005
  %105 = load ptr, ptr %7, align 8, !dbg !2006
  %106 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %105, i32 0, i32 0, !dbg !2006
  %107 = load i32, ptr %106, align 8, !dbg !2006
  %108 = icmp ule i32 %107, 40, !dbg !2006
  br i1 %108, label %109, label %114, !dbg !2006

109:                                              ; preds = %101
  %110 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %105, i32 0, i32 3, !dbg !2006
  %111 = load ptr, ptr %110, align 8, !dbg !2006
  %112 = getelementptr i8, ptr %111, i32 %107, !dbg !2006
  %113 = add i32 %107, 8, !dbg !2006
  store i32 %113, ptr %106, align 8, !dbg !2006
  br label %118, !dbg !2006

114:                                              ; preds = %101
  %115 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %105, i32 0, i32 2, !dbg !2006
  %116 = load ptr, ptr %115, align 8, !dbg !2006
  %117 = getelementptr i8, ptr %116, i32 8, !dbg !2006
  store ptr %117, ptr %115, align 8, !dbg !2006
  br label %118, !dbg !2006

118:                                              ; preds = %114, %109
  %119 = phi ptr [ %112, %109 ], [ %116, %114 ], !dbg !2006
  %120 = load ptr, ptr %119, align 8, !dbg !2006
  store i16 %104, ptr %120, align 2, !dbg !2007
  br label %209, !dbg !2008

121:                                              ; preds = %3
  %122 = load ptr, ptr %8, align 8, !dbg !2009
  %123 = getelementptr inbounds nuw %struct.Fax3BaseState, ptr %122, i32 0, i32 4, !dbg !2010
  %124 = load i32, ptr %123, align 8, !dbg !2010
  %125 = load ptr, ptr %7, align 8, !dbg !2011
  %126 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %125, i32 0, i32 0, !dbg !2011
  %127 = load i32, ptr %126, align 8, !dbg !2011
  %128 = icmp ule i32 %127, 40, !dbg !2011
  br i1 %128, label %129, label %134, !dbg !2011

129:                                              ; preds = %121
  %130 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %125, i32 0, i32 3, !dbg !2011
  %131 = load ptr, ptr %130, align 8, !dbg !2011
  %132 = getelementptr i8, ptr %131, i32 %127, !dbg !2011
  %133 = add i32 %127, 8, !dbg !2011
  store i32 %133, ptr %126, align 8, !dbg !2011
  br label %138, !dbg !2011

134:                                              ; preds = %121
  %135 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %125, i32 0, i32 2, !dbg !2011
  %136 = load ptr, ptr %135, align 8, !dbg !2011
  %137 = getelementptr i8, ptr %136, i32 8, !dbg !2011
  store ptr %137, ptr %135, align 8, !dbg !2011
  br label %138, !dbg !2011

138:                                              ; preds = %134, %129
  %139 = phi ptr [ %132, %129 ], [ %136, %134 ], !dbg !2011
  %140 = load ptr, ptr %139, align 8, !dbg !2011
  store i32 %124, ptr %140, align 4, !dbg !2012
  br label %209, !dbg !2013

141:                                              ; preds = %3
  %142 = load ptr, ptr %8, align 8, !dbg !2014
  %143 = getelementptr inbounds nuw %struct.Fax3BaseState, ptr %142, i32 0, i32 7, !dbg !2015
  %144 = load i32, ptr %143, align 4, !dbg !2015
  %145 = load ptr, ptr %7, align 8, !dbg !2016
  %146 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %145, i32 0, i32 0, !dbg !2016
  %147 = load i32, ptr %146, align 8, !dbg !2016
  %148 = icmp ule i32 %147, 40, !dbg !2016
  br i1 %148, label %149, label %154, !dbg !2016

149:                                              ; preds = %141
  %150 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %145, i32 0, i32 3, !dbg !2016
  %151 = load ptr, ptr %150, align 8, !dbg !2016
  %152 = getelementptr i8, ptr %151, i32 %147, !dbg !2016
  %153 = add i32 %147, 8, !dbg !2016
  store i32 %153, ptr %146, align 8, !dbg !2016
  br label %158, !dbg !2016

154:                                              ; preds = %141
  %155 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %145, i32 0, i32 2, !dbg !2016
  %156 = load ptr, ptr %155, align 8, !dbg !2016
  %157 = getelementptr i8, ptr %156, i32 8, !dbg !2016
  store ptr %157, ptr %155, align 8, !dbg !2016
  br label %158, !dbg !2016

158:                                              ; preds = %154, %149
  %159 = phi ptr [ %152, %149 ], [ %156, %154 ], !dbg !2016
  %160 = load ptr, ptr %159, align 8, !dbg !2016
  store i32 %144, ptr %160, align 4, !dbg !2017
  br label %209, !dbg !2018

161:                                              ; preds = %3
  %162 = load ptr, ptr %8, align 8, !dbg !2019
  %163 = getelementptr inbounds nuw %struct.Fax3BaseState, ptr %162, i32 0, i32 8, !dbg !2020
  %164 = load ptr, ptr %163, align 8, !dbg !2020
  %165 = load ptr, ptr %7, align 8, !dbg !2021
  %166 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %165, i32 0, i32 0, !dbg !2021
  %167 = load i32, ptr %166, align 8, !dbg !2021
  %168 = icmp ule i32 %167, 40, !dbg !2021
  br i1 %168, label %169, label %174, !dbg !2021

169:                                              ; preds = %161
  %170 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %165, i32 0, i32 3, !dbg !2021
  %171 = load ptr, ptr %170, align 8, !dbg !2021
  %172 = getelementptr i8, ptr %171, i32 %167, !dbg !2021
  %173 = add i32 %167, 8, !dbg !2021
  store i32 %173, ptr %166, align 8, !dbg !2021
  br label %178, !dbg !2021

174:                                              ; preds = %161
  %175 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %165, i32 0, i32 2, !dbg !2021
  %176 = load ptr, ptr %175, align 8, !dbg !2021
  %177 = getelementptr i8, ptr %176, i32 8, !dbg !2021
  store ptr %177, ptr %175, align 8, !dbg !2021
  br label %178, !dbg !2021

178:                                              ; preds = %174, %169
  %179 = phi ptr [ %172, %169 ], [ %176, %174 ], !dbg !2021
  %180 = load ptr, ptr %179, align 8, !dbg !2021
  store ptr %164, ptr %180, align 8, !dbg !2022
  br label %209, !dbg !2023

181:                                              ; preds = %3
  %182 = load ptr, ptr %8, align 8, !dbg !2024
  %183 = getelementptr inbounds nuw %struct.Fax3BaseState, ptr %182, i32 0, i32 9, !dbg !2025
  %184 = load i32, ptr %183, align 8, !dbg !2025
  %185 = load ptr, ptr %7, align 8, !dbg !2026
  %186 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %185, i32 0, i32 0, !dbg !2026
  %187 = load i32, ptr %186, align 8, !dbg !2026
  %188 = icmp ule i32 %187, 40, !dbg !2026
  br i1 %188, label %189, label %194, !dbg !2026

189:                                              ; preds = %181
  %190 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %185, i32 0, i32 3, !dbg !2026
  %191 = load ptr, ptr %190, align 8, !dbg !2026
  %192 = getelementptr i8, ptr %191, i32 %187, !dbg !2026
  %193 = add i32 %187, 8, !dbg !2026
  store i32 %193, ptr %186, align 8, !dbg !2026
  br label %198, !dbg !2026

194:                                              ; preds = %181
  %195 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %185, i32 0, i32 2, !dbg !2026
  %196 = load ptr, ptr %195, align 8, !dbg !2026
  %197 = getelementptr i8, ptr %196, i32 8, !dbg !2026
  store ptr %197, ptr %195, align 8, !dbg !2026
  br label %198, !dbg !2026

198:                                              ; preds = %194, %189
  %199 = phi ptr [ %192, %189 ], [ %196, %194 ], !dbg !2026
  %200 = load ptr, ptr %199, align 8, !dbg !2026
  store i32 %184, ptr %200, align 4, !dbg !2027
  br label %209, !dbg !2028

201:                                              ; preds = %3
  %202 = load ptr, ptr %8, align 8, !dbg !2029
  %203 = getelementptr inbounds nuw %struct.Fax3BaseState, ptr %202, i32 0, i32 10, !dbg !2030
  %204 = load ptr, ptr %203, align 8, !dbg !2030
  %205 = load ptr, ptr %5, align 8, !dbg !2031
  %206 = load i32, ptr %6, align 4, !dbg !2032
  %207 = load ptr, ptr %7, align 8, !dbg !2033
  %208 = call i32 %204(ptr noundef %205, i32 noundef %206, ptr noundef %207), !dbg !2034
  store i32 %208, ptr %4, align 4, !dbg !2035
  br label %210, !dbg !2035

209:                                              ; preds = %198, %178, %158, %138, %118, %98, %78, %60, %30
  store i32 1, ptr %4, align 4, !dbg !2036
  br label %210, !dbg !2036

210:                                              ; preds = %209, %201
  %211 = load i32, ptr %4, align 4, !dbg !2037
  ret i32 %211, !dbg !2037
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @Fax3VSetField(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 !dbg !2038 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
    #dbg_declare(ptr %5, !2039, !DIExpression(), !2040)
  store i32 %1, ptr %6, align 4
    #dbg_declare(ptr %6, !2041, !DIExpression(), !2042)
  store ptr %2, ptr %7, align 8
    #dbg_declare(ptr %7, !2043, !DIExpression(), !2044)
    #dbg_declare(ptr %8, !2045, !DIExpression(), !2046)
  %9 = load ptr, ptr %5, align 8, !dbg !2047
  %10 = getelementptr inbounds nuw %struct.tiff, ptr %9, i32 0, i32 37, !dbg !2047
  %11 = load ptr, ptr %10, align 8, !dbg !2047
  store ptr %11, ptr %8, align 8, !dbg !2046
  %12 = load i32, ptr %6, align 4, !dbg !2048
  switch i32 %12, label %193 [
    i32 65536, label %13
    i32 65540, label %32
    i32 292, label %59
    i32 293, label %59
    i32 326, label %78
    i32 327, label %97
    i32 328, label %117
    i32 34908, label %136
    i32 34909, label %155
    i32 34910, label %174
  ], !dbg !2049

13:                                               ; preds = %3
  %14 = load ptr, ptr %7, align 8, !dbg !2050
  %15 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %14, i32 0, i32 0, !dbg !2050
  %16 = load i32, ptr %15, align 8, !dbg !2050
  %17 = icmp ule i32 %16, 40, !dbg !2050
  br i1 %17, label %18, label %23, !dbg !2050

18:                                               ; preds = %13
  %19 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %14, i32 0, i32 3, !dbg !2050
  %20 = load ptr, ptr %19, align 8, !dbg !2050
  %21 = getelementptr i8, ptr %20, i32 %16, !dbg !2050
  %22 = add i32 %16, 8, !dbg !2050
  store i32 %22, ptr %15, align 8, !dbg !2050
  br label %27, !dbg !2050

23:                                               ; preds = %13
  %24 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %14, i32 0, i32 2, !dbg !2050
  %25 = load ptr, ptr %24, align 8, !dbg !2050
  %26 = getelementptr i8, ptr %25, i32 8, !dbg !2050
  store ptr %26, ptr %24, align 8, !dbg !2050
  br label %27, !dbg !2050

27:                                               ; preds = %23, %18
  %28 = phi ptr [ %21, %18 ], [ %25, %23 ], !dbg !2050
  %29 = load i32, ptr %28, align 4, !dbg !2050
  %30 = load ptr, ptr %8, align 8, !dbg !2052
  %31 = getelementptr inbounds nuw %struct.Fax3BaseState, ptr %30, i32 0, i32 0, !dbg !2053
  store i32 %29, ptr %31, align 8, !dbg !2054
  store i32 1, ptr %4, align 4, !dbg !2055
  br label %229, !dbg !2055

32:                                               ; preds = %3
  %33 = load ptr, ptr %5, align 8, !dbg !2056
  %34 = getelementptr inbounds nuw %struct.tiff, ptr %33, i32 0, i32 2, !dbg !2058
  %35 = load i32, ptr %34, align 4, !dbg !2058
  %36 = icmp eq i32 %35, 0, !dbg !2059
  br i1 %36, label %37, label %58, !dbg !2059

37:                                               ; preds = %32
  %38 = load ptr, ptr %7, align 8, !dbg !2060
  %39 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %38, i32 0, i32 0, !dbg !2060
  %40 = load i32, ptr %39, align 8, !dbg !2060
  %41 = icmp ule i32 %40, 40, !dbg !2060
  br i1 %41, label %42, label %47, !dbg !2060

42:                                               ; preds = %37
  %43 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %38, i32 0, i32 3, !dbg !2060
  %44 = load ptr, ptr %43, align 8, !dbg !2060
  %45 = getelementptr i8, ptr %44, i32 %40, !dbg !2060
  %46 = add i32 %40, 8, !dbg !2060
  store i32 %46, ptr %39, align 8, !dbg !2060
  br label %51, !dbg !2060

47:                                               ; preds = %37
  %48 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %38, i32 0, i32 2, !dbg !2060
  %49 = load ptr, ptr %48, align 8, !dbg !2060
  %50 = getelementptr i8, ptr %49, i32 8, !dbg !2060
  store ptr %50, ptr %48, align 8, !dbg !2060
  br label %51, !dbg !2060

51:                                               ; preds = %47, %42
  %52 = phi ptr [ %45, %42 ], [ %49, %47 ], !dbg !2060
  %53 = load ptr, ptr %52, align 8, !dbg !2060
  %54 = load ptr, ptr %5, align 8, !dbg !2061
  %55 = getelementptr inbounds nuw %struct.tiff, ptr %54, i32 0, i32 37, !dbg !2061
  %56 = load ptr, ptr %55, align 8, !dbg !2061
  %57 = getelementptr inbounds nuw %struct.Fax3DecodeState, ptr %56, i32 0, i32 5, !dbg !2062
  store ptr %53, ptr %57, align 8, !dbg !2063
  br label %58, !dbg !2061

58:                                               ; preds = %51, %32
  store i32 1, ptr %4, align 4, !dbg !2064
  br label %229, !dbg !2064

59:                                               ; preds = %3, %3
  %60 = load ptr, ptr %7, align 8, !dbg !2065
  %61 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %60, i32 0, i32 0, !dbg !2065
  %62 = load i32, ptr %61, align 8, !dbg !2065
  %63 = icmp ule i32 %62, 40, !dbg !2065
  br i1 %63, label %64, label %69, !dbg !2065

64:                                               ; preds = %59
  %65 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %60, i32 0, i32 3, !dbg !2065
  %66 = load ptr, ptr %65, align 8, !dbg !2065
  %67 = getelementptr i8, ptr %66, i32 %62, !dbg !2065
  %68 = add i32 %62, 8, !dbg !2065
  store i32 %68, ptr %61, align 8, !dbg !2065
  br label %73, !dbg !2065

69:                                               ; preds = %59
  %70 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %60, i32 0, i32 2, !dbg !2065
  %71 = load ptr, ptr %70, align 8, !dbg !2065
  %72 = getelementptr i8, ptr %71, i32 8, !dbg !2065
  store ptr %72, ptr %70, align 8, !dbg !2065
  br label %73, !dbg !2065

73:                                               ; preds = %69, %64
  %74 = phi ptr [ %67, %64 ], [ %71, %69 ], !dbg !2065
  %75 = load i32, ptr %74, align 4, !dbg !2065
  %76 = load ptr, ptr %8, align 8, !dbg !2066
  %77 = getelementptr inbounds nuw %struct.Fax3BaseState, ptr %76, i32 0, i32 6, !dbg !2067
  store i32 %75, ptr %77, align 8, !dbg !2068
  br label %201, !dbg !2069

78:                                               ; preds = %3
  %79 = load ptr, ptr %7, align 8, !dbg !2070
  %80 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %79, i32 0, i32 0, !dbg !2070
  %81 = load i32, ptr %80, align 8, !dbg !2070
  %82 = icmp ule i32 %81, 40, !dbg !2070
  br i1 %82, label %83, label %88, !dbg !2070

83:                                               ; preds = %78
  %84 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %79, i32 0, i32 3, !dbg !2070
  %85 = load ptr, ptr %84, align 8, !dbg !2070
  %86 = getelementptr i8, ptr %85, i32 %81, !dbg !2070
  %87 = add i32 %81, 8, !dbg !2070
  store i32 %87, ptr %80, align 8, !dbg !2070
  br label %92, !dbg !2070

88:                                               ; preds = %78
  %89 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %79, i32 0, i32 2, !dbg !2070
  %90 = load ptr, ptr %89, align 8, !dbg !2070
  %91 = getelementptr i8, ptr %90, i32 8, !dbg !2070
  store ptr %91, ptr %89, align 8, !dbg !2070
  br label %92, !dbg !2070

92:                                               ; preds = %88, %83
  %93 = phi ptr [ %86, %83 ], [ %90, %88 ], !dbg !2070
  %94 = load i32, ptr %93, align 4, !dbg !2070
  %95 = load ptr, ptr %8, align 8, !dbg !2071
  %96 = getelementptr inbounds nuw %struct.Fax3BaseState, ptr %95, i32 0, i32 5, !dbg !2072
  store i32 %94, ptr %96, align 4, !dbg !2073
  br label %201, !dbg !2074

97:                                               ; preds = %3
  %98 = load ptr, ptr %7, align 8, !dbg !2075
  %99 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %98, i32 0, i32 0, !dbg !2075
  %100 = load i32, ptr %99, align 8, !dbg !2075
  %101 = icmp ule i32 %100, 40, !dbg !2075
  br i1 %101, label %102, label %107, !dbg !2075

102:                                              ; preds = %97
  %103 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %98, i32 0, i32 3, !dbg !2075
  %104 = load ptr, ptr %103, align 8, !dbg !2075
  %105 = getelementptr i8, ptr %104, i32 %100, !dbg !2075
  %106 = add i32 %100, 8, !dbg !2075
  store i32 %106, ptr %99, align 8, !dbg !2075
  br label %111, !dbg !2075

107:                                              ; preds = %97
  %108 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %98, i32 0, i32 2, !dbg !2075
  %109 = load ptr, ptr %108, align 8, !dbg !2075
  %110 = getelementptr i8, ptr %109, i32 8, !dbg !2075
  store ptr %110, ptr %108, align 8, !dbg !2075
  br label %111, !dbg !2075

111:                                              ; preds = %107, %102
  %112 = phi ptr [ %105, %102 ], [ %109, %107 ], !dbg !2075
  %113 = load i32, ptr %112, align 4, !dbg !2075
  %114 = trunc i32 %113 to i16, !dbg !2076
  %115 = load ptr, ptr %8, align 8, !dbg !2077
  %116 = getelementptr inbounds nuw %struct.Fax3BaseState, ptr %115, i32 0, i32 3, !dbg !2078
  store i16 %114, ptr %116, align 4, !dbg !2079
  br label %201, !dbg !2080

117:                                              ; preds = %3
  %118 = load ptr, ptr %7, align 8, !dbg !2081
  %119 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %118, i32 0, i32 0, !dbg !2081
  %120 = load i32, ptr %119, align 8, !dbg !2081
  %121 = icmp ule i32 %120, 40, !dbg !2081
  br i1 %121, label %122, label %127, !dbg !2081

122:                                              ; preds = %117
  %123 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %118, i32 0, i32 3, !dbg !2081
  %124 = load ptr, ptr %123, align 8, !dbg !2081
  %125 = getelementptr i8, ptr %124, i32 %120, !dbg !2081
  %126 = add i32 %120, 8, !dbg !2081
  store i32 %126, ptr %119, align 8, !dbg !2081
  br label %131, !dbg !2081

127:                                              ; preds = %117
  %128 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %118, i32 0, i32 2, !dbg !2081
  %129 = load ptr, ptr %128, align 8, !dbg !2081
  %130 = getelementptr i8, ptr %129, i32 8, !dbg !2081
  store ptr %130, ptr %128, align 8, !dbg !2081
  br label %131, !dbg !2081

131:                                              ; preds = %127, %122
  %132 = phi ptr [ %125, %122 ], [ %129, %127 ], !dbg !2081
  %133 = load i32, ptr %132, align 4, !dbg !2081
  %134 = load ptr, ptr %8, align 8, !dbg !2082
  %135 = getelementptr inbounds nuw %struct.Fax3BaseState, ptr %134, i32 0, i32 4, !dbg !2083
  store i32 %133, ptr %135, align 8, !dbg !2084
  br label %201, !dbg !2085

136:                                              ; preds = %3
  %137 = load ptr, ptr %7, align 8, !dbg !2086
  %138 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %137, i32 0, i32 0, !dbg !2086
  %139 = load i32, ptr %138, align 8, !dbg !2086
  %140 = icmp ule i32 %139, 40, !dbg !2086
  br i1 %140, label %141, label %146, !dbg !2086

141:                                              ; preds = %136
  %142 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %137, i32 0, i32 3, !dbg !2086
  %143 = load ptr, ptr %142, align 8, !dbg !2086
  %144 = getelementptr i8, ptr %143, i32 %139, !dbg !2086
  %145 = add i32 %139, 8, !dbg !2086
  store i32 %145, ptr %138, align 8, !dbg !2086
  br label %150, !dbg !2086

146:                                              ; preds = %136
  %147 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %137, i32 0, i32 2, !dbg !2086
  %148 = load ptr, ptr %147, align 8, !dbg !2086
  %149 = getelementptr i8, ptr %148, i32 8, !dbg !2086
  store ptr %149, ptr %147, align 8, !dbg !2086
  br label %150, !dbg !2086

150:                                              ; preds = %146, %141
  %151 = phi ptr [ %144, %141 ], [ %148, %146 ], !dbg !2086
  %152 = load i32, ptr %151, align 4, !dbg !2086
  %153 = load ptr, ptr %8, align 8, !dbg !2087
  %154 = getelementptr inbounds nuw %struct.Fax3BaseState, ptr %153, i32 0, i32 7, !dbg !2088
  store i32 %152, ptr %154, align 4, !dbg !2089
  br label %201, !dbg !2090

155:                                              ; preds = %3
  %156 = load ptr, ptr %8, align 8, !dbg !2091
  %157 = getelementptr inbounds nuw %struct.Fax3BaseState, ptr %156, i32 0, i32 8, !dbg !2092
  %158 = load ptr, ptr %7, align 8, !dbg !2093
  %159 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %158, i32 0, i32 0, !dbg !2093
  %160 = load i32, ptr %159, align 8, !dbg !2093
  %161 = icmp ule i32 %160, 40, !dbg !2093
  br i1 %161, label %162, label %167, !dbg !2093

162:                                              ; preds = %155
  %163 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %158, i32 0, i32 3, !dbg !2093
  %164 = load ptr, ptr %163, align 8, !dbg !2093
  %165 = getelementptr i8, ptr %164, i32 %160, !dbg !2093
  %166 = add i32 %160, 8, !dbg !2093
  store i32 %166, ptr %159, align 8, !dbg !2093
  br label %171, !dbg !2093

167:                                              ; preds = %155
  %168 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %158, i32 0, i32 2, !dbg !2093
  %169 = load ptr, ptr %168, align 8, !dbg !2093
  %170 = getelementptr i8, ptr %169, i32 8, !dbg !2093
  store ptr %170, ptr %168, align 8, !dbg !2093
  br label %171, !dbg !2093

171:                                              ; preds = %167, %162
  %172 = phi ptr [ %165, %162 ], [ %169, %167 ], !dbg !2093
  %173 = load ptr, ptr %172, align 8, !dbg !2093
  call void @_TIFFsetString(ptr noundef %157, ptr noundef %173), !dbg !2094
  br label %201, !dbg !2095

174:                                              ; preds = %3
  %175 = load ptr, ptr %7, align 8, !dbg !2096
  %176 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %175, i32 0, i32 0, !dbg !2096
  %177 = load i32, ptr %176, align 8, !dbg !2096
  %178 = icmp ule i32 %177, 40, !dbg !2096
  br i1 %178, label %179, label %184, !dbg !2096

179:                                              ; preds = %174
  %180 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %175, i32 0, i32 3, !dbg !2096
  %181 = load ptr, ptr %180, align 8, !dbg !2096
  %182 = getelementptr i8, ptr %181, i32 %177, !dbg !2096
  %183 = add i32 %177, 8, !dbg !2096
  store i32 %183, ptr %176, align 8, !dbg !2096
  br label %188, !dbg !2096

184:                                              ; preds = %174
  %185 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %175, i32 0, i32 2, !dbg !2096
  %186 = load ptr, ptr %185, align 8, !dbg !2096
  %187 = getelementptr i8, ptr %186, i32 8, !dbg !2096
  store ptr %187, ptr %185, align 8, !dbg !2096
  br label %188, !dbg !2096

188:                                              ; preds = %184, %179
  %189 = phi ptr [ %182, %179 ], [ %186, %184 ], !dbg !2096
  %190 = load i32, ptr %189, align 4, !dbg !2096
  %191 = load ptr, ptr %8, align 8, !dbg !2097
  %192 = getelementptr inbounds nuw %struct.Fax3BaseState, ptr %191, i32 0, i32 9, !dbg !2098
  store i32 %190, ptr %192, align 8, !dbg !2099
  br label %201, !dbg !2100

193:                                              ; preds = %3
  %194 = load ptr, ptr %8, align 8, !dbg !2101
  %195 = getelementptr inbounds nuw %struct.Fax3BaseState, ptr %194, i32 0, i32 11, !dbg !2102
  %196 = load ptr, ptr %195, align 8, !dbg !2102
  %197 = load ptr, ptr %5, align 8, !dbg !2103
  %198 = load i32, ptr %6, align 4, !dbg !2104
  %199 = load ptr, ptr %7, align 8, !dbg !2105
  %200 = call i32 %196(ptr noundef %197, i32 noundef %198, ptr noundef %199), !dbg !2106
  store i32 %200, ptr %4, align 4, !dbg !2107
  br label %229, !dbg !2107

201:                                              ; preds = %188, %171, %150, %131, %111, %92, %73
  %202 = load ptr, ptr %5, align 8, !dbg !2108
  %203 = load i32, ptr %6, align 4, !dbg !2108
  %204 = call ptr @_TIFFFieldWithTag(ptr noundef %202, i32 noundef %203), !dbg !2108
  %205 = getelementptr inbounds nuw %struct.TIFFFieldInfo, ptr %204, i32 0, i32 4, !dbg !2108
  %206 = load i16, ptr %205, align 4, !dbg !2108
  %207 = zext i16 %206 to i32, !dbg !2108
  %208 = and i32 %207, 31, !dbg !2108
  %209 = zext i32 %208 to i64, !dbg !2108
  %210 = shl i64 1, %209, !dbg !2108
  %211 = load ptr, ptr %5, align 8, !dbg !2108
  %212 = getelementptr inbounds nuw %struct.tiff, ptr %211, i32 0, i32 6, !dbg !2108
  %213 = getelementptr inbounds nuw %struct.TIFFDirectory, ptr %212, i32 0, i32 0, !dbg !2108
  %214 = load ptr, ptr %5, align 8, !dbg !2108
  %215 = load i32, ptr %6, align 4, !dbg !2108
  %216 = call ptr @_TIFFFieldWithTag(ptr noundef %214, i32 noundef %215), !dbg !2108
  %217 = getelementptr inbounds nuw %struct.TIFFFieldInfo, ptr %216, i32 0, i32 4, !dbg !2108
  %218 = load i16, ptr %217, align 4, !dbg !2108
  %219 = zext i16 %218 to i32, !dbg !2108
  %220 = sdiv i32 %219, 32, !dbg !2108
  %221 = sext i32 %220 to i64, !dbg !2108
  %222 = getelementptr inbounds [3 x i64], ptr %213, i64 0, i64 %221, !dbg !2108
  %223 = load i64, ptr %222, align 8, !dbg !2108
  %224 = or i64 %223, %210, !dbg !2108
  store i64 %224, ptr %222, align 8, !dbg !2108
  %225 = load ptr, ptr %5, align 8, !dbg !2109
  %226 = getelementptr inbounds nuw %struct.tiff, ptr %225, i32 0, i32 3, !dbg !2110
  %227 = load i32, ptr %226, align 8, !dbg !2111
  %228 = or i32 %227, 8, !dbg !2111
  store i32 %228, ptr %226, align 8, !dbg !2111
  store i32 1, ptr %4, align 4, !dbg !2112
  br label %229, !dbg !2112

229:                                              ; preds = %201, %193, %58, %27
  %230 = load i32, ptr %4, align 4, !dbg !2113
  ret i32 %230, !dbg !2113
}

; Function Attrs: noinline nounwind uwtable
define internal void @Fax3PrintDir(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 !dbg !2114 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
    #dbg_declare(ptr %4, !2115, !DIExpression(), !2116)
  store ptr %1, ptr %5, align 8
    #dbg_declare(ptr %5, !2117, !DIExpression(), !2118)
  store i64 %2, ptr %6, align 8
    #dbg_declare(ptr %6, !2119, !DIExpression(), !2120)
    #dbg_declare(ptr %7, !2121, !DIExpression(), !2122)
  %9 = load ptr, ptr %4, align 8, !dbg !2123
  %10 = getelementptr inbounds nuw %struct.tiff, ptr %9, i32 0, i32 37, !dbg !2123
  %11 = load ptr, ptr %10, align 8, !dbg !2123
  store ptr %11, ptr %7, align 8, !dbg !2122
  %12 = load i64, ptr %6, align 8, !dbg !2124
  %13 = load ptr, ptr %4, align 8, !dbg !2125
  %14 = getelementptr inbounds nuw %struct.tiff, ptr %13, i32 0, i32 6, !dbg !2125
  %15 = getelementptr inbounds nuw %struct.TIFFDirectory, ptr %14, i32 0, i32 0, !dbg !2125
  %16 = getelementptr inbounds [3 x i64], ptr %15, i64 0, i64 2, !dbg !2125
  %17 = load i64, ptr %16, align 8, !dbg !2125
  %18 = and i64 %17, 16, !dbg !2125
  %19 = icmp ne i64 %18, 0, !dbg !2125
  br i1 %19, label %20, label %84, !dbg !2125

20:                                               ; preds = %3
    #dbg_declare(ptr %8, !2127, !DIExpression(), !2130)
  store ptr @.str.12, ptr %8, align 8, !dbg !2130
  %21 = load ptr, ptr %4, align 8, !dbg !2131
  %22 = getelementptr inbounds nuw %struct.tiff, ptr %21, i32 0, i32 6, !dbg !2133
  %23 = getelementptr inbounds nuw %struct.TIFFDirectory, ptr %22, i32 0, i32 10, !dbg !2134
  %24 = load i16, ptr %23, align 8, !dbg !2134
  %25 = zext i16 %24 to i32, !dbg !2131
  %26 = icmp eq i32 %25, 4, !dbg !2135
  br i1 %26, label %27, label %40, !dbg !2135

27:                                               ; preds = %20
  %28 = load ptr, ptr %5, align 8, !dbg !2136
  %29 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %28, ptr noundef @.str.13) #5, !dbg !2138
  %30 = load ptr, ptr %7, align 8, !dbg !2139
  %31 = getelementptr inbounds nuw %struct.Fax3BaseState, ptr %30, i32 0, i32 6, !dbg !2141
  %32 = load i32, ptr %31, align 8, !dbg !2141
  %33 = and i32 %32, 2, !dbg !2142
  %34 = icmp ne i32 %33, 0, !dbg !2142
  br i1 %34, label %35, label %39, !dbg !2142

35:                                               ; preds = %27
  %36 = load ptr, ptr %5, align 8, !dbg !2143
  %37 = load ptr, ptr %8, align 8, !dbg !2144
  %38 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %36, ptr noundef @.str.14, ptr noundef %37) #5, !dbg !2145
  br label %39, !dbg !2145

39:                                               ; preds = %35, %27
  br label %73, !dbg !2146

40:                                               ; preds = %20
  %41 = load ptr, ptr %5, align 8, !dbg !2147
  %42 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %41, ptr noundef @.str.15) #5, !dbg !2149
  %43 = load ptr, ptr %7, align 8, !dbg !2150
  %44 = getelementptr inbounds nuw %struct.Fax3BaseState, ptr %43, i32 0, i32 6, !dbg !2152
  %45 = load i32, ptr %44, align 8, !dbg !2152
  %46 = and i32 %45, 1, !dbg !2153
  %47 = icmp ne i32 %46, 0, !dbg !2153
  br i1 %47, label %48, label %52, !dbg !2153

48:                                               ; preds = %40
  %49 = load ptr, ptr %5, align 8, !dbg !2154
  %50 = load ptr, ptr %8, align 8, !dbg !2155
  %51 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %49, ptr noundef @.str.16, ptr noundef %50) #5, !dbg !2156
  store ptr @.str.17, ptr %8, align 8, !dbg !2157
  br label %52, !dbg !2156

52:                                               ; preds = %48, %40
  %53 = load ptr, ptr %7, align 8, !dbg !2158
  %54 = getelementptr inbounds nuw %struct.Fax3BaseState, ptr %53, i32 0, i32 6, !dbg !2160
  %55 = load i32, ptr %54, align 8, !dbg !2160
  %56 = and i32 %55, 4, !dbg !2161
  %57 = icmp ne i32 %56, 0, !dbg !2161
  br i1 %57, label %58, label %62, !dbg !2161

58:                                               ; preds = %52
  %59 = load ptr, ptr %5, align 8, !dbg !2162
  %60 = load ptr, ptr %8, align 8, !dbg !2163
  %61 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %59, ptr noundef @.str.18, ptr noundef %60) #5, !dbg !2164
  store ptr @.str.17, ptr %8, align 8, !dbg !2165
  br label %62, !dbg !2164

62:                                               ; preds = %58, %52
  %63 = load ptr, ptr %7, align 8, !dbg !2166
  %64 = getelementptr inbounds nuw %struct.Fax3BaseState, ptr %63, i32 0, i32 6, !dbg !2168
  %65 = load i32, ptr %64, align 8, !dbg !2168
  %66 = and i32 %65, 2, !dbg !2169
  %67 = icmp ne i32 %66, 0, !dbg !2169
  br i1 %67, label %68, label %72, !dbg !2169

68:                                               ; preds = %62
  %69 = load ptr, ptr %5, align 8, !dbg !2170
  %70 = load ptr, ptr %8, align 8, !dbg !2171
  %71 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %69, ptr noundef @.str.14, ptr noundef %70) #5, !dbg !2172
  br label %72, !dbg !2172

72:                                               ; preds = %68, %62
  br label %73

73:                                               ; preds = %72, %39
  %74 = load ptr, ptr %5, align 8, !dbg !2173
  %75 = load ptr, ptr %7, align 8, !dbg !2174
  %76 = getelementptr inbounds nuw %struct.Fax3BaseState, ptr %75, i32 0, i32 6, !dbg !2175
  %77 = load i32, ptr %76, align 8, !dbg !2175
  %78 = zext i32 %77 to i64, !dbg !2176
  %79 = load ptr, ptr %7, align 8, !dbg !2177
  %80 = getelementptr inbounds nuw %struct.Fax3BaseState, ptr %79, i32 0, i32 6, !dbg !2178
  %81 = load i32, ptr %80, align 8, !dbg !2178
  %82 = zext i32 %81 to i64, !dbg !2179
  %83 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %74, ptr noundef @.str.19, i64 noundef %78, i64 noundef %82) #5, !dbg !2180
  br label %84, !dbg !2181

84:                                               ; preds = %73, %3
  %85 = load ptr, ptr %4, align 8, !dbg !2182
  %86 = getelementptr inbounds nuw %struct.tiff, ptr %85, i32 0, i32 6, !dbg !2182
  %87 = getelementptr inbounds nuw %struct.TIFFDirectory, ptr %86, i32 0, i32 0, !dbg !2182
  %88 = getelementptr inbounds [3 x i64], ptr %87, i64 0, i64 1, !dbg !2182
  %89 = load i64, ptr %88, align 8, !dbg !2182
  %90 = and i64 %89, 2147483648, !dbg !2182
  %91 = icmp ne i64 %90, 0, !dbg !2182
  br i1 %91, label %92, label %119, !dbg !2182

92:                                               ; preds = %84
  %93 = load ptr, ptr %5, align 8, !dbg !2184
  %94 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %93, ptr noundef @.str.20) #5, !dbg !2186
  %95 = load ptr, ptr %7, align 8, !dbg !2187
  %96 = getelementptr inbounds nuw %struct.Fax3BaseState, ptr %95, i32 0, i32 3, !dbg !2188
  %97 = load i16, ptr %96, align 4, !dbg !2188
  %98 = zext i16 %97 to i32, !dbg !2187
  switch i32 %98, label %108 [
    i32 0, label %99
    i32 1, label %102
    i32 2, label %105
  ], !dbg !2189

99:                                               ; preds = %92
  %100 = load ptr, ptr %5, align 8, !dbg !2190
  %101 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %100, ptr noundef @.str.21) #5, !dbg !2192
  br label %108, !dbg !2193

102:                                              ; preds = %92
  %103 = load ptr, ptr %5, align 8, !dbg !2194
  %104 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %103, ptr noundef @.str.22) #5, !dbg !2195
  br label %108, !dbg !2196

105:                                              ; preds = %92
  %106 = load ptr, ptr %5, align 8, !dbg !2197
  %107 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %106, ptr noundef @.str.23) #5, !dbg !2198
  br label %108, !dbg !2199

108:                                              ; preds = %92, %105, %102, %99
  %109 = load ptr, ptr %5, align 8, !dbg !2200
  %110 = load ptr, ptr %7, align 8, !dbg !2201
  %111 = getelementptr inbounds nuw %struct.Fax3BaseState, ptr %110, i32 0, i32 3, !dbg !2202
  %112 = load i16, ptr %111, align 4, !dbg !2202
  %113 = zext i16 %112 to i32, !dbg !2201
  %114 = load ptr, ptr %7, align 8, !dbg !2203
  %115 = getelementptr inbounds nuw %struct.Fax3BaseState, ptr %114, i32 0, i32 3, !dbg !2204
  %116 = load i16, ptr %115, align 4, !dbg !2204
  %117 = zext i16 %116 to i32, !dbg !2203
  %118 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %109, ptr noundef @.str.24, i32 noundef %113, i32 noundef %117) #5, !dbg !2205
  br label %119, !dbg !2206

119:                                              ; preds = %108, %84
  %120 = load ptr, ptr %4, align 8, !dbg !2207
  %121 = getelementptr inbounds nuw %struct.tiff, ptr %120, i32 0, i32 6, !dbg !2207
  %122 = getelementptr inbounds nuw %struct.TIFFDirectory, ptr %121, i32 0, i32 0, !dbg !2207
  %123 = getelementptr inbounds [3 x i64], ptr %122, i64 0, i64 1, !dbg !2207
  %124 = load i64, ptr %123, align 8, !dbg !2207
  %125 = and i64 %124, 1073741824, !dbg !2207
  %126 = icmp ne i64 %125, 0, !dbg !2207
  br i1 %126, label %127, label %134, !dbg !2207

127:                                              ; preds = %119
  %128 = load ptr, ptr %5, align 8, !dbg !2209
  %129 = load ptr, ptr %7, align 8, !dbg !2210
  %130 = getelementptr inbounds nuw %struct.Fax3BaseState, ptr %129, i32 0, i32 5, !dbg !2211
  %131 = load i32, ptr %130, align 4, !dbg !2211
  %132 = zext i32 %131 to i64, !dbg !2212
  %133 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %128, ptr noundef @.str.25, i64 noundef %132) #5, !dbg !2213
  br label %134, !dbg !2213

134:                                              ; preds = %127, %119
  %135 = load ptr, ptr %4, align 8, !dbg !2214
  %136 = getelementptr inbounds nuw %struct.tiff, ptr %135, i32 0, i32 6, !dbg !2214
  %137 = getelementptr inbounds nuw %struct.TIFFDirectory, ptr %136, i32 0, i32 0, !dbg !2214
  %138 = getelementptr inbounds [3 x i64], ptr %137, i64 0, i64 2, !dbg !2214
  %139 = load i64, ptr %138, align 8, !dbg !2214
  %140 = and i64 %139, 1, !dbg !2214
  %141 = icmp ne i64 %140, 0, !dbg !2214
  br i1 %141, label %142, label %149, !dbg !2214

142:                                              ; preds = %134
  %143 = load ptr, ptr %5, align 8, !dbg !2216
  %144 = load ptr, ptr %7, align 8, !dbg !2217
  %145 = getelementptr inbounds nuw %struct.Fax3BaseState, ptr %144, i32 0, i32 4, !dbg !2218
  %146 = load i32, ptr %145, align 8, !dbg !2218
  %147 = zext i32 %146 to i64, !dbg !2219
  %148 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %143, ptr noundef @.str.26, i64 noundef %147) #5, !dbg !2220
  br label %149, !dbg !2220

149:                                              ; preds = %142, %134
  %150 = load ptr, ptr %4, align 8, !dbg !2221
  %151 = getelementptr inbounds nuw %struct.tiff, ptr %150, i32 0, i32 6, !dbg !2221
  %152 = getelementptr inbounds nuw %struct.TIFFDirectory, ptr %151, i32 0, i32 0, !dbg !2221
  %153 = getelementptr inbounds [3 x i64], ptr %152, i64 0, i64 2, !dbg !2221
  %154 = load i64, ptr %153, align 8, !dbg !2221
  %155 = and i64 %154, 2, !dbg !2221
  %156 = icmp ne i64 %155, 0, !dbg !2221
  br i1 %156, label %157, label %164, !dbg !2221

157:                                              ; preds = %149
  %158 = load ptr, ptr %5, align 8, !dbg !2223
  %159 = load ptr, ptr %7, align 8, !dbg !2224
  %160 = getelementptr inbounds nuw %struct.Fax3BaseState, ptr %159, i32 0, i32 7, !dbg !2225
  %161 = load i32, ptr %160, align 4, !dbg !2225
  %162 = zext i32 %161 to i64, !dbg !2226
  %163 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %158, ptr noundef @.str.27, i64 noundef %162) #5, !dbg !2227
  br label %164, !dbg !2227

164:                                              ; preds = %157, %149
  %165 = load ptr, ptr %4, align 8, !dbg !2228
  %166 = getelementptr inbounds nuw %struct.tiff, ptr %165, i32 0, i32 6, !dbg !2228
  %167 = getelementptr inbounds nuw %struct.TIFFDirectory, ptr %166, i32 0, i32 0, !dbg !2228
  %168 = getelementptr inbounds [3 x i64], ptr %167, i64 0, i64 2, !dbg !2228
  %169 = load i64, ptr %168, align 8, !dbg !2228
  %170 = and i64 %169, 4, !dbg !2228
  %171 = icmp ne i64 %170, 0, !dbg !2228
  br i1 %171, label %172, label %178, !dbg !2228

172:                                              ; preds = %164
  %173 = load ptr, ptr %5, align 8, !dbg !2230
  %174 = load ptr, ptr %7, align 8, !dbg !2231
  %175 = getelementptr inbounds nuw %struct.Fax3BaseState, ptr %174, i32 0, i32 8, !dbg !2232
  %176 = load ptr, ptr %175, align 8, !dbg !2232
  %177 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %173, ptr noundef @.str.28, ptr noundef %176) #5, !dbg !2233
  br label %178, !dbg !2233

178:                                              ; preds = %172, %164
  %179 = load ptr, ptr %4, align 8, !dbg !2234
  %180 = getelementptr inbounds nuw %struct.tiff, ptr %179, i32 0, i32 6, !dbg !2234
  %181 = getelementptr inbounds nuw %struct.TIFFDirectory, ptr %180, i32 0, i32 0, !dbg !2234
  %182 = getelementptr inbounds [3 x i64], ptr %181, i64 0, i64 2, !dbg !2234
  %183 = load i64, ptr %182, align 8, !dbg !2234
  %184 = and i64 %183, 8, !dbg !2234
  %185 = icmp ne i64 %184, 0, !dbg !2234
  br i1 %185, label %186, label %193, !dbg !2234

186:                                              ; preds = %178
  %187 = load ptr, ptr %5, align 8, !dbg !2236
  %188 = load ptr, ptr %7, align 8, !dbg !2237
  %189 = getelementptr inbounds nuw %struct.Fax3BaseState, ptr %188, i32 0, i32 9, !dbg !2238
  %190 = load i32, ptr %189, align 8, !dbg !2238
  %191 = zext i32 %190 to i64, !dbg !2239
  %192 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %187, ptr noundef @.str.29, i64 noundef %191) #5, !dbg !2240
  br label %193, !dbg !2240

193:                                              ; preds = %186, %178
  ret void, !dbg !2241
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @Fax3SetupState(ptr noundef %0) #0 !dbg !2242 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !2243, !DIExpression(), !2244)
    #dbg_declare(ptr %4, !2245, !DIExpression(), !2247)
  %12 = load ptr, ptr %3, align 8, !dbg !2248
  %13 = getelementptr inbounds nuw %struct.tiff, ptr %12, i32 0, i32 6, !dbg !2249
  store ptr %13, ptr %4, align 8, !dbg !2247
    #dbg_declare(ptr %5, !2250, !DIExpression(), !2251)
  %14 = load ptr, ptr %3, align 8, !dbg !2252
  %15 = getelementptr inbounds nuw %struct.tiff, ptr %14, i32 0, i32 37, !dbg !2252
  %16 = load ptr, ptr %15, align 8, !dbg !2252
  store ptr %16, ptr %5, align 8, !dbg !2251
    #dbg_declare(ptr %6, !2253, !DIExpression(), !2254)
    #dbg_declare(ptr %7, !2255, !DIExpression(), !2256)
    #dbg_declare(ptr %8, !2257, !DIExpression(), !2258)
  %17 = load ptr, ptr %4, align 8, !dbg !2259
  %18 = getelementptr inbounds nuw %struct.TIFFDirectory, ptr %17, i32 0, i32 8, !dbg !2261
  %19 = load i16, ptr %18, align 4, !dbg !2261
  %20 = zext i16 %19 to i32, !dbg !2259
  %21 = icmp ne i32 %20, 1, !dbg !2262
  br i1 %21, label %22, label %26, !dbg !2262

22:                                               ; preds = %1
  %23 = load ptr, ptr %3, align 8, !dbg !2263
  %24 = getelementptr inbounds nuw %struct.tiff, ptr %23, i32 0, i32 0, !dbg !2265
  %25 = load ptr, ptr %24, align 8, !dbg !2265
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %25, ptr noundef @.str.30), !dbg !2266
  store i32 0, ptr %2, align 4, !dbg !2267
  br label %173, !dbg !2267

26:                                               ; preds = %1
  %27 = load ptr, ptr %3, align 8, !dbg !2268
  %28 = getelementptr inbounds nuw %struct.tiff, ptr %27, i32 0, i32 3, !dbg !2268
  %29 = load i32, ptr %28, align 8, !dbg !2268
  %30 = and i32 %29, 1024, !dbg !2268
  %31 = icmp ne i32 %30, 0, !dbg !2268
  br i1 %31, label %32, label %40, !dbg !2268

32:                                               ; preds = %26
  %33 = load ptr, ptr %3, align 8, !dbg !2270
  %34 = call i32 @TIFFTileRowSize(ptr noundef %33), !dbg !2272
  %35 = sext i32 %34 to i64, !dbg !2272
  store i64 %35, ptr %6, align 8, !dbg !2273
  %36 = load ptr, ptr %4, align 8, !dbg !2274
  %37 = getelementptr inbounds nuw %struct.TIFFDirectory, ptr %36, i32 0, i32 4, !dbg !2275
  %38 = load i32, ptr %37, align 4, !dbg !2275
  %39 = zext i32 %38 to i64, !dbg !2274
  store i64 %39, ptr %7, align 8, !dbg !2276
  br label %48, !dbg !2277

40:                                               ; preds = %26
  %41 = load ptr, ptr %3, align 8, !dbg !2278
  %42 = call i32 @TIFFScanlineSize(ptr noundef %41), !dbg !2280
  %43 = sext i32 %42 to i64, !dbg !2280
  store i64 %43, ptr %6, align 8, !dbg !2281
  %44 = load ptr, ptr %4, align 8, !dbg !2282
  %45 = getelementptr inbounds nuw %struct.TIFFDirectory, ptr %44, i32 0, i32 1, !dbg !2283
  %46 = load i32, ptr %45, align 8, !dbg !2283
  %47 = zext i32 %46 to i64, !dbg !2282
  store i64 %47, ptr %7, align 8, !dbg !2284
  br label %48

48:                                               ; preds = %40, %32
  %49 = load i64, ptr %6, align 8, !dbg !2285
  %50 = trunc i64 %49 to i32, !dbg !2286
  %51 = load ptr, ptr %5, align 8, !dbg !2287
  %52 = getelementptr inbounds nuw %struct.Fax3BaseState, ptr %51, i32 0, i32 1, !dbg !2288
  store i32 %50, ptr %52, align 4, !dbg !2289
  %53 = load i64, ptr %7, align 8, !dbg !2290
  %54 = trunc i64 %53 to i32, !dbg !2291
  %55 = load ptr, ptr %5, align 8, !dbg !2292
  %56 = getelementptr inbounds nuw %struct.Fax3BaseState, ptr %55, i32 0, i32 2, !dbg !2293
  store i32 %54, ptr %56, align 8, !dbg !2294
  %57 = load ptr, ptr %5, align 8, !dbg !2295
  %58 = getelementptr inbounds nuw %struct.Fax3BaseState, ptr %57, i32 0, i32 6, !dbg !2296
  %59 = load i32, ptr %58, align 8, !dbg !2296
  %60 = and i32 %59, 1, !dbg !2297
  %61 = icmp ne i32 %60, 0, !dbg !2297
  br i1 %61, label %68, label %62, !dbg !2298

62:                                               ; preds = %48
  %63 = load ptr, ptr %4, align 8, !dbg !2299
  %64 = getelementptr inbounds nuw %struct.TIFFDirectory, ptr %63, i32 0, i32 10, !dbg !2300
  %65 = load i16, ptr %64, align 8, !dbg !2300
  %66 = zext i16 %65 to i32, !dbg !2299
  %67 = icmp eq i32 %66, 4, !dbg !2301
  br label %68, !dbg !2298

68:                                               ; preds = %62, %48
  %69 = phi i1 [ true, %48 ], [ %67, %62 ]
  %70 = zext i1 %69 to i32, !dbg !2298
  store i32 %70, ptr %8, align 4, !dbg !2302
  %71 = load ptr, ptr %3, align 8, !dbg !2303
  %72 = getelementptr inbounds nuw %struct.tiff, ptr %71, i32 0, i32 2, !dbg !2305
  %73 = load i32, ptr %72, align 4, !dbg !2305
  %74 = icmp eq i32 %73, 0, !dbg !2306
  br i1 %74, label %75, label %145, !dbg !2306

75:                                               ; preds = %68
    #dbg_declare(ptr %9, !2307, !DIExpression(), !2309)
  %76 = load ptr, ptr %3, align 8, !dbg !2310
  %77 = getelementptr inbounds nuw %struct.tiff, ptr %76, i32 0, i32 37, !dbg !2310
  %78 = load ptr, ptr %77, align 8, !dbg !2310
  store ptr %78, ptr %9, align 8, !dbg !2309
    #dbg_declare(ptr %10, !2311, !DIExpression(), !2312)
  %79 = load i32, ptr %8, align 4, !dbg !2313
  %80 = icmp ne i32 %79, 0, !dbg !2313
  br i1 %80, label %81, label %89, !dbg !2313

81:                                               ; preds = %75
  %82 = load i64, ptr %7, align 8, !dbg !2314
  %83 = trunc i64 %82 to i32, !dbg !2314
  %84 = add i32 %83, 31, !dbg !2314
  %85 = udiv i32 %84, 32, !dbg !2314
  %86 = mul i32 %85, 32, !dbg !2314
  %87 = mul i32 2, %86, !dbg !2315
  %88 = zext i32 %87 to i64, !dbg !2316
  br label %91, !dbg !2313

89:                                               ; preds = %75
  %90 = load i64, ptr %7, align 8, !dbg !2317
  br label %91, !dbg !2313

91:                                               ; preds = %89, %81
  %92 = phi i64 [ %88, %81 ], [ %90, %89 ], !dbg !2313
  %93 = trunc i64 %92 to i32, !dbg !2313
  store i32 %93, ptr %10, align 4, !dbg !2312
  %94 = load i32, ptr %10, align 4, !dbg !2318
  %95 = zext i32 %94 to i64, !dbg !2318
  %96 = mul i64 %95, 4, !dbg !2319
  %97 = trunc i64 %96 to i32, !dbg !2318
  %98 = call ptr @_TIFFmalloc(i32 noundef %97), !dbg !2320
  %99 = load ptr, ptr %9, align 8, !dbg !2321
  %100 = getelementptr inbounds nuw %struct.Fax3DecodeState, ptr %99, i32 0, i32 6, !dbg !2322
  store ptr %98, ptr %100, align 8, !dbg !2323
  %101 = load ptr, ptr %9, align 8, !dbg !2324
  %102 = getelementptr inbounds nuw %struct.Fax3DecodeState, ptr %101, i32 0, i32 6, !dbg !2326
  %103 = load ptr, ptr %102, align 8, !dbg !2326
  %104 = icmp eq ptr %103, null, !dbg !2327
  br i1 %104, label %105, label %109, !dbg !2327

105:                                              ; preds = %91
  %106 = load ptr, ptr %3, align 8, !dbg !2328
  %107 = getelementptr inbounds nuw %struct.tiff, ptr %106, i32 0, i32 0, !dbg !2330
  %108 = load ptr, ptr %107, align 8, !dbg !2330
  call void (ptr, ptr, ...) @TIFFError(ptr noundef @.str.31, ptr noundef @.str.32, ptr noundef %108), !dbg !2331
  store i32 0, ptr %2, align 4, !dbg !2332
  br label %173, !dbg !2332

109:                                              ; preds = %91
  %110 = load ptr, ptr %9, align 8, !dbg !2333
  %111 = getelementptr inbounds nuw %struct.Fax3DecodeState, ptr %110, i32 0, i32 6, !dbg !2334
  %112 = load ptr, ptr %111, align 8, !dbg !2334
  %113 = load ptr, ptr %9, align 8, !dbg !2335
  %114 = getelementptr inbounds nuw %struct.Fax3DecodeState, ptr %113, i32 0, i32 8, !dbg !2336
  store ptr %112, ptr %114, align 8, !dbg !2337
  %115 = load i32, ptr %8, align 4, !dbg !2338
  %116 = icmp ne i32 %115, 0, !dbg !2338
  br i1 %116, label %117, label %127, !dbg !2338

117:                                              ; preds = %109
  %118 = load ptr, ptr %9, align 8, !dbg !2340
  %119 = getelementptr inbounds nuw %struct.Fax3DecodeState, ptr %118, i32 0, i32 6, !dbg !2341
  %120 = load ptr, ptr %119, align 8, !dbg !2341
  %121 = load i32, ptr %10, align 4, !dbg !2342
  %122 = lshr i32 %121, 1, !dbg !2343
  %123 = zext i32 %122 to i64, !dbg !2344
  %124 = getelementptr inbounds nuw i32, ptr %120, i64 %123, !dbg !2344
  %125 = load ptr, ptr %9, align 8, !dbg !2345
  %126 = getelementptr inbounds nuw %struct.Fax3DecodeState, ptr %125, i32 0, i32 7, !dbg !2346
  store ptr %124, ptr %126, align 8, !dbg !2347
  br label %130, !dbg !2345

127:                                              ; preds = %109
  %128 = load ptr, ptr %9, align 8, !dbg !2348
  %129 = getelementptr inbounds nuw %struct.Fax3DecodeState, ptr %128, i32 0, i32 7, !dbg !2349
  store ptr null, ptr %129, align 8, !dbg !2350
  br label %130

130:                                              ; preds = %127, %117
  %131 = load ptr, ptr %9, align 8, !dbg !2351
  %132 = getelementptr inbounds nuw %struct.Fax3DecodeState, ptr %131, i32 0, i32 0, !dbg !2351
  %133 = getelementptr inbounds nuw %struct.Fax3BaseState, ptr %132, i32 0, i32 6, !dbg !2351
  %134 = load i32, ptr %133, align 8, !dbg !2351
  %135 = and i32 %134, 1, !dbg !2351
  %136 = icmp ne i32 %135, 0, !dbg !2351
  br i1 %136, label %137, label %144, !dbg !2351

137:                                              ; preds = %130
  %138 = load ptr, ptr %3, align 8, !dbg !2353
  %139 = getelementptr inbounds nuw %struct.tiff, ptr %138, i32 0, i32 26, !dbg !2355
  store ptr @Fax3Decode2D, ptr %139, align 8, !dbg !2356
  %140 = load ptr, ptr %3, align 8, !dbg !2357
  %141 = getelementptr inbounds nuw %struct.tiff, ptr %140, i32 0, i32 28, !dbg !2358
  store ptr @Fax3Decode2D, ptr %141, align 8, !dbg !2359
  %142 = load ptr, ptr %3, align 8, !dbg !2360
  %143 = getelementptr inbounds nuw %struct.tiff, ptr %142, i32 0, i32 30, !dbg !2361
  store ptr @Fax3Decode2D, ptr %143, align 8, !dbg !2362
  br label %144, !dbg !2363

144:                                              ; preds = %137, %130
  br label %172, !dbg !2364

145:                                              ; preds = %68
  %146 = load i32, ptr %8, align 4, !dbg !2365
  %147 = icmp ne i32 %146, 0, !dbg !2365
  br i1 %147, label %148, label %166, !dbg !2365

148:                                              ; preds = %145
    #dbg_declare(ptr %11, !2367, !DIExpression(), !2369)
  %149 = load ptr, ptr %3, align 8, !dbg !2370
  %150 = getelementptr inbounds nuw %struct.tiff, ptr %149, i32 0, i32 37, !dbg !2370
  %151 = load ptr, ptr %150, align 8, !dbg !2370
  store ptr %151, ptr %11, align 8, !dbg !2369
  %152 = load i64, ptr %6, align 8, !dbg !2371
  %153 = trunc i64 %152 to i32, !dbg !2371
  %154 = call ptr @_TIFFmalloc(i32 noundef %153), !dbg !2372
  %155 = load ptr, ptr %11, align 8, !dbg !2373
  %156 = getelementptr inbounds nuw %struct.Fax3EncodeState, ptr %155, i32 0, i32 4, !dbg !2374
  store ptr %154, ptr %156, align 8, !dbg !2375
  %157 = load ptr, ptr %11, align 8, !dbg !2376
  %158 = getelementptr inbounds nuw %struct.Fax3EncodeState, ptr %157, i32 0, i32 4, !dbg !2378
  %159 = load ptr, ptr %158, align 8, !dbg !2378
  %160 = icmp eq ptr %159, null, !dbg !2379
  br i1 %160, label %161, label %165, !dbg !2379

161:                                              ; preds = %148
  %162 = load ptr, ptr %3, align 8, !dbg !2380
  %163 = getelementptr inbounds nuw %struct.tiff, ptr %162, i32 0, i32 0, !dbg !2382
  %164 = load ptr, ptr %163, align 8, !dbg !2382
  call void (ptr, ptr, ...) @TIFFError(ptr noundef @.str.31, ptr noundef @.str.33, ptr noundef %164), !dbg !2383
  store i32 0, ptr %2, align 4, !dbg !2384
  br label %173, !dbg !2384

165:                                              ; preds = %148
  br label %171, !dbg !2385

166:                                              ; preds = %145
  %167 = load ptr, ptr %3, align 8, !dbg !2386
  %168 = getelementptr inbounds nuw %struct.tiff, ptr %167, i32 0, i32 37, !dbg !2386
  %169 = load ptr, ptr %168, align 8, !dbg !2386
  %170 = getelementptr inbounds nuw %struct.Fax3EncodeState, ptr %169, i32 0, i32 4, !dbg !2387
  store ptr null, ptr %170, align 8, !dbg !2388
  br label %171

171:                                              ; preds = %166, %165
  br label %172

172:                                              ; preds = %171, %144
  store i32 1, ptr %2, align 4, !dbg !2389
  br label %173, !dbg !2389

173:                                              ; preds = %172, %161, %105, %22
  %174 = load i32, ptr %2, align 4, !dbg !2390
  ret i32 %174, !dbg !2390
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @Fax3PreDecode(ptr noundef %0, i16 noundef zeroext %1) #0 !dbg !2391 {
  %3 = alloca ptr, align 8
  %4 = alloca i16, align 2
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !2392, !DIExpression(), !2393)
  store i16 %1, ptr %4, align 2
    #dbg_declare(ptr %4, !2394, !DIExpression(), !2395)
    #dbg_declare(ptr %5, !2396, !DIExpression(), !2397)
  %6 = load ptr, ptr %3, align 8, !dbg !2398
  %7 = getelementptr inbounds nuw %struct.tiff, ptr %6, i32 0, i32 37, !dbg !2398
  %8 = load ptr, ptr %7, align 8, !dbg !2398
  store ptr %8, ptr %5, align 8, !dbg !2397
  %9 = load i16, ptr %4, align 2, !dbg !2399
  %10 = load ptr, ptr %5, align 8, !dbg !2400
  %11 = icmp ne ptr %10, null, !dbg !2400
  br i1 %11, label %12, label %13, !dbg !2400

12:                                               ; preds = %2
  br label %14, !dbg !2400

13:                                               ; preds = %2
  call void @__assert_fail(ptr noundef @.str.40, ptr noundef @.str.1, i32 noundef 160, ptr noundef @__PRETTY_FUNCTION__.Fax3PreDecode) #4, !dbg !2400
  unreachable, !dbg !2400

14:                                               ; preds = %12
  %15 = load ptr, ptr %5, align 8, !dbg !2403
  %16 = getelementptr inbounds nuw %struct.Fax3DecodeState, ptr %15, i32 0, i32 3, !dbg !2404
  store i32 0, ptr %16, align 4, !dbg !2405
  %17 = load ptr, ptr %5, align 8, !dbg !2406
  %18 = getelementptr inbounds nuw %struct.Fax3DecodeState, ptr %17, i32 0, i32 2, !dbg !2407
  store i32 0, ptr %18, align 8, !dbg !2408
  %19 = load ptr, ptr %5, align 8, !dbg !2409
  %20 = getelementptr inbounds nuw %struct.Fax3DecodeState, ptr %19, i32 0, i32 4, !dbg !2410
  store i32 0, ptr %20, align 8, !dbg !2411
  %21 = load ptr, ptr %3, align 8, !dbg !2412
  %22 = getelementptr inbounds nuw %struct.tiff, ptr %21, i32 0, i32 6, !dbg !2413
  %23 = getelementptr inbounds nuw %struct.TIFFDirectory, ptr %22, i32 0, i32 13, !dbg !2414
  %24 = load i16, ptr %23, align 2, !dbg !2414
  %25 = zext i16 %24 to i32, !dbg !2412
  %26 = icmp ne i32 %25, 2, !dbg !2415
  %27 = zext i1 %26 to i32, !dbg !2415
  %28 = call ptr @TIFFGetBitRevTable(i32 noundef %27), !dbg !2416
  %29 = load ptr, ptr %5, align 8, !dbg !2417
  %30 = getelementptr inbounds nuw %struct.Fax3DecodeState, ptr %29, i32 0, i32 1, !dbg !2418
  store ptr %28, ptr %30, align 8, !dbg !2419
  %31 = load ptr, ptr %5, align 8, !dbg !2420
  %32 = getelementptr inbounds nuw %struct.Fax3DecodeState, ptr %31, i32 0, i32 7, !dbg !2422
  %33 = load ptr, ptr %32, align 8, !dbg !2422
  %34 = icmp ne ptr %33, null, !dbg !2420
  br i1 %34, label %35, label %50, !dbg !2420

35:                                               ; preds = %14
  %36 = load ptr, ptr %5, align 8, !dbg !2423
  %37 = getelementptr inbounds nuw %struct.Fax3DecodeState, ptr %36, i32 0, i32 0, !dbg !2425
  %38 = getelementptr inbounds nuw %struct.Fax3BaseState, ptr %37, i32 0, i32 2, !dbg !2426
  %39 = load i32, ptr %38, align 8, !dbg !2426
  %40 = trunc i32 %39 to i16, !dbg !2427
  %41 = zext i16 %40 to i32, !dbg !2427
  %42 = load ptr, ptr %5, align 8, !dbg !2428
  %43 = getelementptr inbounds nuw %struct.Fax3DecodeState, ptr %42, i32 0, i32 7, !dbg !2429
  %44 = load ptr, ptr %43, align 8, !dbg !2429
  %45 = getelementptr inbounds i32, ptr %44, i64 0, !dbg !2428
  store i32 %41, ptr %45, align 4, !dbg !2430
  %46 = load ptr, ptr %5, align 8, !dbg !2431
  %47 = getelementptr inbounds nuw %struct.Fax3DecodeState, ptr %46, i32 0, i32 7, !dbg !2432
  %48 = load ptr, ptr %47, align 8, !dbg !2432
  %49 = getelementptr inbounds i32, ptr %48, i64 1, !dbg !2431
  store i32 0, ptr %49, align 4, !dbg !2433
  br label %50, !dbg !2434

50:                                               ; preds = %35, %14
  ret i32 1, !dbg !2435
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @Fax3Decode1D(ptr noundef %0, ptr noundef %1, i32 noundef %2, i16 noundef zeroext %3) #0 !dbg !619 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i16, align 2
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  %19 = alloca ptr, align 8
  %20 = alloca i32, align 4
  %21 = alloca ptr, align 8
  %22 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8
    #dbg_declare(ptr %6, !2436, !DIExpression(), !2437)
  store ptr %1, ptr %7, align 8
    #dbg_declare(ptr %7, !2438, !DIExpression(), !2439)
  store i32 %2, ptr %8, align 4
    #dbg_declare(ptr %8, !2440, !DIExpression(), !2441)
  store i16 %3, ptr %9, align 2
    #dbg_declare(ptr %9, !2442, !DIExpression(), !2443)
    #dbg_declare(ptr %10, !2444, !DIExpression(), !2445)
  %23 = load ptr, ptr %6, align 8, !dbg !2445
  %24 = getelementptr inbounds nuw %struct.tiff, ptr %23, i32 0, i32 37, !dbg !2445
  %25 = load ptr, ptr %24, align 8, !dbg !2445
  store ptr %25, ptr %10, align 8, !dbg !2445
    #dbg_declare(ptr %11, !2446, !DIExpression(), !2445)
    #dbg_declare(ptr %12, !2447, !DIExpression(), !2445)
  %26 = load ptr, ptr %10, align 8, !dbg !2445
  %27 = getelementptr inbounds nuw %struct.Fax3DecodeState, ptr %26, i32 0, i32 0, !dbg !2445
  %28 = getelementptr inbounds nuw %struct.Fax3BaseState, ptr %27, i32 0, i32 2, !dbg !2445
  %29 = load i32, ptr %28, align 8, !dbg !2445
  store i32 %29, ptr %12, align 4, !dbg !2445
    #dbg_declare(ptr %13, !2448, !DIExpression(), !2445)
    #dbg_declare(ptr %14, !2449, !DIExpression(), !2445)
    #dbg_declare(ptr %15, !2450, !DIExpression(), !2445)
    #dbg_declare(ptr %16, !2451, !DIExpression(), !2445)
    #dbg_declare(ptr %17, !2452, !DIExpression(), !2445)
    #dbg_declare(ptr %18, !2453, !DIExpression(), !2445)
    #dbg_declare(ptr %19, !2454, !DIExpression(), !2445)
    #dbg_declare(ptr %20, !2455, !DIExpression(), !2445)
    #dbg_declare(ptr %21, !2456, !DIExpression(), !2445)
  %30 = load ptr, ptr %10, align 8, !dbg !2445
  %31 = getelementptr inbounds nuw %struct.Fax3DecodeState, ptr %30, i32 0, i32 1, !dbg !2445
  %32 = load ptr, ptr %31, align 8, !dbg !2445
  store ptr %32, ptr %21, align 8, !dbg !2445
    #dbg_declare(ptr %22, !2457, !DIExpression(), !2445)
  %33 = load i16, ptr %9, align 2, !dbg !2458
  br label %34, !dbg !2459

34:                                               ; preds = %4
  %35 = load ptr, ptr %10, align 8, !dbg !2460
  %36 = getelementptr inbounds nuw %struct.Fax3DecodeState, ptr %35, i32 0, i32 2, !dbg !2460
  %37 = load i32, ptr %36, align 8, !dbg !2460
  store i32 %37, ptr %13, align 4, !dbg !2460
  %38 = load ptr, ptr %10, align 8, !dbg !2460
  %39 = getelementptr inbounds nuw %struct.Fax3DecodeState, ptr %38, i32 0, i32 3, !dbg !2460
  %40 = load i32, ptr %39, align 4, !dbg !2460
  store i32 %40, ptr %14, align 4, !dbg !2460
  %41 = load ptr, ptr %10, align 8, !dbg !2460
  %42 = getelementptr inbounds nuw %struct.Fax3DecodeState, ptr %41, i32 0, i32 4, !dbg !2460
  %43 = load i32, ptr %42, align 8, !dbg !2460
  store i32 %43, ptr %20, align 4, !dbg !2460
  %44 = load ptr, ptr %6, align 8, !dbg !2460
  %45 = getelementptr inbounds nuw %struct.tiff, ptr %44, i32 0, i32 42, !dbg !2460
  %46 = load ptr, ptr %45, align 8, !dbg !2460
  store ptr %46, ptr %16, align 8, !dbg !2460
  %47 = load ptr, ptr %16, align 8, !dbg !2460
  %48 = load ptr, ptr %6, align 8, !dbg !2460
  %49 = getelementptr inbounds nuw %struct.tiff, ptr %48, i32 0, i32 43, !dbg !2460
  %50 = load i32, ptr %49, align 8, !dbg !2460
  %51 = sext i32 %50 to i64, !dbg !2460
  %52 = getelementptr inbounds i8, ptr %47, i64 %51, !dbg !2460
  store ptr %52, ptr %17, align 8, !dbg !2460
  br label %53, !dbg !2460

53:                                               ; preds = %34
  %54 = load ptr, ptr %10, align 8, !dbg !2462
  %55 = getelementptr inbounds nuw %struct.Fax3DecodeState, ptr %54, i32 0, i32 8, !dbg !2463
  %56 = load ptr, ptr %55, align 8, !dbg !2463
  store ptr %56, ptr %19, align 8, !dbg !2464
  br label %57, !dbg !2465

57:                                               ; preds = %668, %53
  %58 = load i32, ptr %8, align 4, !dbg !2466
  %59 = sext i32 %58 to i64, !dbg !2467
  %60 = icmp sgt i64 %59, 0, !dbg !2468
  br i1 %60, label %61, label %809, !dbg !2465

61:                                               ; preds = %57
  store i32 0, ptr %11, align 4, !dbg !2469
  store i32 0, ptr %15, align 4, !dbg !2471
  %62 = load ptr, ptr %19, align 8, !dbg !2472
  store ptr %62, ptr %18, align 8, !dbg !2473
  br label %63, !dbg !2474

63:                                               ; preds = %61
  %64 = load i32, ptr %20, align 4, !dbg !2475
  %65 = icmp eq i32 %64, 0, !dbg !2475
  br i1 %65, label %66, label %133, !dbg !2475

66:                                               ; preds = %63
  br label %67, !dbg !2478

67:                                               ; preds = %131, %66
  br label %68, !dbg !2480

68:                                               ; preds = %67
  %69 = load i32, ptr %14, align 4, !dbg !2484
  %70 = icmp slt i32 %69, 11, !dbg !2484
  br i1 %70, label %71, label %119, !dbg !2484

71:                                               ; preds = %68
  %72 = load ptr, ptr %16, align 8, !dbg !2487
  %73 = load ptr, ptr %17, align 8, !dbg !2487
  %74 = icmp uge ptr %72, %73, !dbg !2487
  br i1 %74, label %75, label %80, !dbg !2487

75:                                               ; preds = %71
  %76 = load i32, ptr %14, align 4, !dbg !2490
  %77 = icmp eq i32 %76, 0, !dbg !2490
  br i1 %77, label %78, label %79, !dbg !2490

78:                                               ; preds = %75
  br label %669, !dbg !2490

79:                                               ; preds = %75
  store i32 11, ptr %14, align 4, !dbg !2493
  br label %118, !dbg !2493

80:                                               ; preds = %71
  %81 = load ptr, ptr %21, align 8, !dbg !2494
  %82 = load ptr, ptr %16, align 8, !dbg !2494
  %83 = getelementptr inbounds nuw i8, ptr %82, i32 1, !dbg !2494
  store ptr %83, ptr %16, align 8, !dbg !2494
  %84 = load i8, ptr %82, align 1, !dbg !2494
  %85 = zext i8 %84 to i64, !dbg !2494
  %86 = getelementptr inbounds nuw i8, ptr %81, i64 %85, !dbg !2494
  %87 = load i8, ptr %86, align 1, !dbg !2494
  %88 = zext i8 %87 to i32, !dbg !2494
  %89 = load i32, ptr %14, align 4, !dbg !2494
  %90 = shl i32 %88, %89, !dbg !2494
  %91 = load i32, ptr %13, align 4, !dbg !2494
  %92 = or i32 %91, %90, !dbg !2494
  store i32 %92, ptr %13, align 4, !dbg !2494
  %93 = load i32, ptr %14, align 4, !dbg !2496
  %94 = add nsw i32 %93, 8, !dbg !2496
  store i32 %94, ptr %14, align 4, !dbg !2496
  %95 = icmp slt i32 %94, 11, !dbg !2496
  br i1 %95, label %96, label %117, !dbg !2496

96:                                               ; preds = %80
  %97 = load ptr, ptr %16, align 8, !dbg !2498
  %98 = load ptr, ptr %17, align 8, !dbg !2498
  %99 = icmp uge ptr %97, %98, !dbg !2498
  br i1 %99, label %100, label %101, !dbg !2498

100:                                              ; preds = %96
  store i32 11, ptr %14, align 4, !dbg !2501
  br label %116, !dbg !2501

101:                                              ; preds = %96
  %102 = load ptr, ptr %21, align 8, !dbg !2503
  %103 = load ptr, ptr %16, align 8, !dbg !2503
  %104 = getelementptr inbounds nuw i8, ptr %103, i32 1, !dbg !2503
  store ptr %104, ptr %16, align 8, !dbg !2503
  %105 = load i8, ptr %103, align 1, !dbg !2503
  %106 = zext i8 %105 to i64, !dbg !2503
  %107 = getelementptr inbounds nuw i8, ptr %102, i64 %106, !dbg !2503
  %108 = load i8, ptr %107, align 1, !dbg !2503
  %109 = zext i8 %108 to i32, !dbg !2503
  %110 = load i32, ptr %14, align 4, !dbg !2503
  %111 = shl i32 %109, %110, !dbg !2503
  %112 = load i32, ptr %13, align 4, !dbg !2503
  %113 = or i32 %112, %111, !dbg !2503
  store i32 %113, ptr %13, align 4, !dbg !2503
  %114 = load i32, ptr %14, align 4, !dbg !2503
  %115 = add nsw i32 %114, 8, !dbg !2503
  store i32 %115, ptr %14, align 4, !dbg !2503
  br label %116

116:                                              ; preds = %101, %100
  br label %117, !dbg !2505

117:                                              ; preds = %116, %80
  br label %118

118:                                              ; preds = %117, %79
  br label %119, !dbg !2506

119:                                              ; preds = %118, %68
  br label %120, !dbg !2507

120:                                              ; preds = %119
  %121 = load i32, ptr %13, align 4, !dbg !2508
  %122 = and i32 %121, 2047, !dbg !2508
  %123 = icmp eq i32 %122, 0, !dbg !2508
  br i1 %123, label %124, label %125, !dbg !2508

124:                                              ; preds = %120
  br label %132, !dbg !2508

125:                                              ; preds = %120
  br label %126, !dbg !2480

126:                                              ; preds = %125
  %127 = load i32, ptr %14, align 4, !dbg !2510
  %128 = sub nsw i32 %127, 1, !dbg !2510
  store i32 %128, ptr %14, align 4, !dbg !2510
  %129 = load i32, ptr %13, align 4, !dbg !2510
  %130 = lshr i32 %129, 1, !dbg !2510
  store i32 %130, ptr %13, align 4, !dbg !2510
  br label %131, !dbg !2510

131:                                              ; preds = %126
  br label %67, !dbg !2512, !llvm.loop !2513

132:                                              ; preds = %124
  br label %133, !dbg !2478

133:                                              ; preds = %132, %63
  br label %134, !dbg !2515

134:                                              ; preds = %175, %133
  br label %135, !dbg !2516

135:                                              ; preds = %134
  %136 = load i32, ptr %14, align 4, !dbg !2520
  %137 = icmp slt i32 %136, 8, !dbg !2520
  br i1 %137, label %138, label %163, !dbg !2520

138:                                              ; preds = %135
  %139 = load ptr, ptr %16, align 8, !dbg !2523
  %140 = load ptr, ptr %17, align 8, !dbg !2523
  %141 = icmp uge ptr %139, %140, !dbg !2523
  br i1 %141, label %142, label %147, !dbg !2523

142:                                              ; preds = %138
  %143 = load i32, ptr %14, align 4, !dbg !2526
  %144 = icmp eq i32 %143, 0, !dbg !2526
  br i1 %144, label %145, label %146, !dbg !2526

145:                                              ; preds = %142
  br label %669, !dbg !2526

146:                                              ; preds = %142
  store i32 8, ptr %14, align 4, !dbg !2529
  br label %162, !dbg !2529

147:                                              ; preds = %138
  %148 = load ptr, ptr %21, align 8, !dbg !2530
  %149 = load ptr, ptr %16, align 8, !dbg !2530
  %150 = getelementptr inbounds nuw i8, ptr %149, i32 1, !dbg !2530
  store ptr %150, ptr %16, align 8, !dbg !2530
  %151 = load i8, ptr %149, align 1, !dbg !2530
  %152 = zext i8 %151 to i64, !dbg !2530
  %153 = getelementptr inbounds nuw i8, ptr %148, i64 %152, !dbg !2530
  %154 = load i8, ptr %153, align 1, !dbg !2530
  %155 = zext i8 %154 to i32, !dbg !2530
  %156 = load i32, ptr %14, align 4, !dbg !2530
  %157 = shl i32 %155, %156, !dbg !2530
  %158 = load i32, ptr %13, align 4, !dbg !2530
  %159 = or i32 %158, %157, !dbg !2530
  store i32 %159, ptr %13, align 4, !dbg !2530
  %160 = load i32, ptr %14, align 4, !dbg !2530
  %161 = add nsw i32 %160, 8, !dbg !2530
  store i32 %161, ptr %14, align 4, !dbg !2530
  br label %162

162:                                              ; preds = %147, %146
  br label %163, !dbg !2532

163:                                              ; preds = %162, %135
  br label %164, !dbg !2533

164:                                              ; preds = %163
  %165 = load i32, ptr %13, align 4, !dbg !2534
  %166 = and i32 %165, 255, !dbg !2534
  %167 = icmp ne i32 %166, 0, !dbg !2534
  br i1 %167, label %168, label %169, !dbg !2534

168:                                              ; preds = %164
  br label %176, !dbg !2534

169:                                              ; preds = %164
  br label %170, !dbg !2516

170:                                              ; preds = %169
  %171 = load i32, ptr %14, align 4, !dbg !2536
  %172 = sub nsw i32 %171, 8, !dbg !2536
  store i32 %172, ptr %14, align 4, !dbg !2536
  %173 = load i32, ptr %13, align 4, !dbg !2536
  %174 = lshr i32 %173, 8, !dbg !2536
  store i32 %174, ptr %13, align 4, !dbg !2536
  br label %175, !dbg !2536

175:                                              ; preds = %170
  br label %134, !dbg !2538, !llvm.loop !2539

176:                                              ; preds = %168
  br label %177, !dbg !2515

177:                                              ; preds = %187, %176
  %178 = load i32, ptr %13, align 4, !dbg !2515
  %179 = and i32 %178, 1, !dbg !2515
  %180 = icmp eq i32 %179, 0, !dbg !2515
  br i1 %180, label %181, label %188, !dbg !2515

181:                                              ; preds = %177
  br label %182, !dbg !2515

182:                                              ; preds = %181
  %183 = load i32, ptr %14, align 4, !dbg !2541
  %184 = sub nsw i32 %183, 1, !dbg !2541
  store i32 %184, ptr %14, align 4, !dbg !2541
  %185 = load i32, ptr %13, align 4, !dbg !2541
  %186 = lshr i32 %185, 1, !dbg !2541
  store i32 %186, ptr %13, align 4, !dbg !2541
  br label %187, !dbg !2541

187:                                              ; preds = %182
  br label %177, !dbg !2515, !llvm.loop !2543

188:                                              ; preds = %177
  br label %189, !dbg !2515

189:                                              ; preds = %188
  %190 = load i32, ptr %14, align 4, !dbg !2544
  %191 = sub nsw i32 %190, 1, !dbg !2544
  store i32 %191, ptr %14, align 4, !dbg !2544
  %192 = load i32, ptr %13, align 4, !dbg !2544
  %193 = lshr i32 %192, 1, !dbg !2544
  store i32 %193, ptr %13, align 4, !dbg !2544
  br label %194, !dbg !2544

194:                                              ; preds = %189
  store i32 0, ptr %20, align 4, !dbg !2515
  br label %195, !dbg !2515

195:                                              ; preds = %194
  br label %196, !dbg !2546

196:                                              ; preds = %195
  br label %197, !dbg !2547

197:                                              ; preds = %427, %196
  br label %198, !dbg !2549

198:                                              ; preds = %306, %197
  br label %199, !dbg !2553

199:                                              ; preds = %198
  br label %200, !dbg !2557

200:                                              ; preds = %199
  %201 = load i32, ptr %14, align 4, !dbg !2559
  %202 = icmp slt i32 %201, 12, !dbg !2559
  br i1 %202, label %203, label %251, !dbg !2559

203:                                              ; preds = %200
  %204 = load ptr, ptr %16, align 8, !dbg !2562
  %205 = load ptr, ptr %17, align 8, !dbg !2562
  %206 = icmp uge ptr %204, %205, !dbg !2562
  br i1 %206, label %207, label %212, !dbg !2562

207:                                              ; preds = %203
  %208 = load i32, ptr %14, align 4, !dbg !2565
  %209 = icmp eq i32 %208, 0, !dbg !2565
  br i1 %209, label %210, label %211, !dbg !2565

210:                                              ; preds = %207
  br label %428, !dbg !2565

211:                                              ; preds = %207
  store i32 12, ptr %14, align 4, !dbg !2568
  br label %250, !dbg !2568

212:                                              ; preds = %203
  %213 = load ptr, ptr %21, align 8, !dbg !2569
  %214 = load ptr, ptr %16, align 8, !dbg !2569
  %215 = getelementptr inbounds nuw i8, ptr %214, i32 1, !dbg !2569
  store ptr %215, ptr %16, align 8, !dbg !2569
  %216 = load i8, ptr %214, align 1, !dbg !2569
  %217 = zext i8 %216 to i64, !dbg !2569
  %218 = getelementptr inbounds nuw i8, ptr %213, i64 %217, !dbg !2569
  %219 = load i8, ptr %218, align 1, !dbg !2569
  %220 = zext i8 %219 to i32, !dbg !2569
  %221 = load i32, ptr %14, align 4, !dbg !2569
  %222 = shl i32 %220, %221, !dbg !2569
  %223 = load i32, ptr %13, align 4, !dbg !2569
  %224 = or i32 %223, %222, !dbg !2569
  store i32 %224, ptr %13, align 4, !dbg !2569
  %225 = load i32, ptr %14, align 4, !dbg !2571
  %226 = add nsw i32 %225, 8, !dbg !2571
  store i32 %226, ptr %14, align 4, !dbg !2571
  %227 = icmp slt i32 %226, 12, !dbg !2571
  br i1 %227, label %228, label %249, !dbg !2571

228:                                              ; preds = %212
  %229 = load ptr, ptr %16, align 8, !dbg !2573
  %230 = load ptr, ptr %17, align 8, !dbg !2573
  %231 = icmp uge ptr %229, %230, !dbg !2573
  br i1 %231, label %232, label %233, !dbg !2573

232:                                              ; preds = %228
  store i32 12, ptr %14, align 4, !dbg !2576
  br label %248, !dbg !2576

233:                                              ; preds = %228
  %234 = load ptr, ptr %21, align 8, !dbg !2578
  %235 = load ptr, ptr %16, align 8, !dbg !2578
  %236 = getelementptr inbounds nuw i8, ptr %235, i32 1, !dbg !2578
  store ptr %236, ptr %16, align 8, !dbg !2578
  %237 = load i8, ptr %235, align 1, !dbg !2578
  %238 = zext i8 %237 to i64, !dbg !2578
  %239 = getelementptr inbounds nuw i8, ptr %234, i64 %238, !dbg !2578
  %240 = load i8, ptr %239, align 1, !dbg !2578
  %241 = zext i8 %240 to i32, !dbg !2578
  %242 = load i32, ptr %14, align 4, !dbg !2578
  %243 = shl i32 %241, %242, !dbg !2578
  %244 = load i32, ptr %13, align 4, !dbg !2578
  %245 = or i32 %244, %243, !dbg !2578
  store i32 %245, ptr %13, align 4, !dbg !2578
  %246 = load i32, ptr %14, align 4, !dbg !2578
  %247 = add nsw i32 %246, 8, !dbg !2578
  store i32 %247, ptr %14, align 4, !dbg !2578
  br label %248

248:                                              ; preds = %233, %232
  br label %249, !dbg !2580

249:                                              ; preds = %248, %212
  br label %250

250:                                              ; preds = %249, %211
  br label %251, !dbg !2581

251:                                              ; preds = %250, %200
  br label %252, !dbg !2582

252:                                              ; preds = %251
  %253 = load i32, ptr %13, align 4, !dbg !2557
  %254 = and i32 %253, 4095, !dbg !2557
  %255 = zext i32 %254 to i64, !dbg !2557
  %256 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr @TIFFFaxWhiteTable, i64 %255, !dbg !2557
  store ptr %256, ptr %22, align 8, !dbg !2557
  br label %257, !dbg !2557

257:                                              ; preds = %252
  %258 = load ptr, ptr %22, align 8, !dbg !2583
  %259 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr %258, i32 0, i32 1, !dbg !2583
  %260 = load i8, ptr %259, align 1, !dbg !2583
  %261 = zext i8 %260 to i32, !dbg !2583
  %262 = load i32, ptr %14, align 4, !dbg !2583
  %263 = sub nsw i32 %262, %261, !dbg !2583
  store i32 %263, ptr %14, align 4, !dbg !2583
  %264 = load ptr, ptr %22, align 8, !dbg !2583
  %265 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr %264, i32 0, i32 1, !dbg !2583
  %266 = load i8, ptr %265, align 1, !dbg !2583
  %267 = zext i8 %266 to i32, !dbg !2583
  %268 = load i32, ptr %13, align 4, !dbg !2583
  %269 = lshr i32 %268, %267, !dbg !2583
  store i32 %269, ptr %13, align 4, !dbg !2583
  br label %270, !dbg !2583

270:                                              ; preds = %257
  br label %271, !dbg !2557

271:                                              ; preds = %270
  %272 = load ptr, ptr %22, align 8, !dbg !2553
  %273 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr %272, i32 0, i32 0, !dbg !2553
  %274 = load i8, ptr %273, align 4, !dbg !2553
  %275 = zext i8 %274 to i32, !dbg !2553
  switch i32 %275, label %303 [
    i32 12, label %276
    i32 7, label %277
    i32 9, label %292
    i32 11, label %292
  ], !dbg !2553

276:                                              ; preds = %271
  store i32 1, ptr %20, align 4, !dbg !2585
  br label %535, !dbg !2585

277:                                              ; preds = %271
  br label %278, !dbg !2585

278:                                              ; preds = %277
  %279 = load i32, ptr %15, align 4, !dbg !2587
  %280 = load ptr, ptr %22, align 8, !dbg !2587
  %281 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr %280, i32 0, i32 2, !dbg !2587
  %282 = load i32, ptr %281, align 4, !dbg !2587
  %283 = add i32 %279, %282, !dbg !2587
  %284 = load ptr, ptr %18, align 8, !dbg !2587
  %285 = getelementptr inbounds nuw i32, ptr %284, i32 1, !dbg !2587
  store ptr %285, ptr %18, align 8, !dbg !2587
  store i32 %283, ptr %284, align 4, !dbg !2587
  %286 = load ptr, ptr %22, align 8, !dbg !2587
  %287 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr %286, i32 0, i32 2, !dbg !2587
  %288 = load i32, ptr %287, align 4, !dbg !2587
  %289 = load i32, ptr %11, align 4, !dbg !2587
  %290 = add i32 %289, %288, !dbg !2587
  store i32 %290, ptr %11, align 4, !dbg !2587
  store i32 0, ptr %15, align 4, !dbg !2587
  br label %291, !dbg !2587

291:                                              ; preds = %278
  br label %307, !dbg !2585

292:                                              ; preds = %271, %271
  %293 = load ptr, ptr %22, align 8, !dbg !2585
  %294 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr %293, i32 0, i32 2, !dbg !2585
  %295 = load i32, ptr %294, align 4, !dbg !2585
  %296 = load i32, ptr %11, align 4, !dbg !2585
  %297 = add i32 %296, %295, !dbg !2585
  store i32 %297, ptr %11, align 4, !dbg !2585
  %298 = load ptr, ptr %22, align 8, !dbg !2585
  %299 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr %298, i32 0, i32 2, !dbg !2585
  %300 = load i32, ptr %299, align 4, !dbg !2585
  %301 = load i32, ptr %15, align 4, !dbg !2585
  %302 = add i32 %301, %300, !dbg !2585
  store i32 %302, ptr %15, align 4, !dbg !2585
  br label %306, !dbg !2585

303:                                              ; preds = %271
  %304 = load ptr, ptr %6, align 8, !dbg !2585
  %305 = load i32, ptr %11, align 4, !dbg !2585
  call void @Fax3Unexpected(ptr noundef @Fax3Decode1D.module, ptr noundef %304, i32 noundef %305), !dbg !2585
  br label %535, !dbg !2585

306:                                              ; preds = %292
  br label %198, !dbg !2589, !llvm.loop !2590

307:                                              ; preds = %291
    #dbg_label(!2592, !2549)
  %308 = load i32, ptr %11, align 4, !dbg !2593
  %309 = load i32, ptr %12, align 4, !dbg !2593
  %310 = icmp sge i32 %308, %309, !dbg !2593
  br i1 %310, label %311, label %312, !dbg !2593

311:                                              ; preds = %307
  br label %535, !dbg !2593

312:                                              ; preds = %307
  br label %313, !dbg !2549

313:                                              ; preds = %421, %312
  br label %314, !dbg !2595

314:                                              ; preds = %313
  br label %315, !dbg !2599

315:                                              ; preds = %314
  %316 = load i32, ptr %14, align 4, !dbg !2601
  %317 = icmp slt i32 %316, 13, !dbg !2601
  br i1 %317, label %318, label %366, !dbg !2601

318:                                              ; preds = %315
  %319 = load ptr, ptr %16, align 8, !dbg !2604
  %320 = load ptr, ptr %17, align 8, !dbg !2604
  %321 = icmp uge ptr %319, %320, !dbg !2604
  br i1 %321, label %322, label %327, !dbg !2604

322:                                              ; preds = %318
  %323 = load i32, ptr %14, align 4, !dbg !2607
  %324 = icmp eq i32 %323, 0, !dbg !2607
  br i1 %324, label %325, label %326, !dbg !2607

325:                                              ; preds = %322
  br label %428, !dbg !2607

326:                                              ; preds = %322
  store i32 13, ptr %14, align 4, !dbg !2610
  br label %365, !dbg !2610

327:                                              ; preds = %318
  %328 = load ptr, ptr %21, align 8, !dbg !2611
  %329 = load ptr, ptr %16, align 8, !dbg !2611
  %330 = getelementptr inbounds nuw i8, ptr %329, i32 1, !dbg !2611
  store ptr %330, ptr %16, align 8, !dbg !2611
  %331 = load i8, ptr %329, align 1, !dbg !2611
  %332 = zext i8 %331 to i64, !dbg !2611
  %333 = getelementptr inbounds nuw i8, ptr %328, i64 %332, !dbg !2611
  %334 = load i8, ptr %333, align 1, !dbg !2611
  %335 = zext i8 %334 to i32, !dbg !2611
  %336 = load i32, ptr %14, align 4, !dbg !2611
  %337 = shl i32 %335, %336, !dbg !2611
  %338 = load i32, ptr %13, align 4, !dbg !2611
  %339 = or i32 %338, %337, !dbg !2611
  store i32 %339, ptr %13, align 4, !dbg !2611
  %340 = load i32, ptr %14, align 4, !dbg !2613
  %341 = add nsw i32 %340, 8, !dbg !2613
  store i32 %341, ptr %14, align 4, !dbg !2613
  %342 = icmp slt i32 %341, 13, !dbg !2613
  br i1 %342, label %343, label %364, !dbg !2613

343:                                              ; preds = %327
  %344 = load ptr, ptr %16, align 8, !dbg !2615
  %345 = load ptr, ptr %17, align 8, !dbg !2615
  %346 = icmp uge ptr %344, %345, !dbg !2615
  br i1 %346, label %347, label %348, !dbg !2615

347:                                              ; preds = %343
  store i32 13, ptr %14, align 4, !dbg !2618
  br label %363, !dbg !2618

348:                                              ; preds = %343
  %349 = load ptr, ptr %21, align 8, !dbg !2620
  %350 = load ptr, ptr %16, align 8, !dbg !2620
  %351 = getelementptr inbounds nuw i8, ptr %350, i32 1, !dbg !2620
  store ptr %351, ptr %16, align 8, !dbg !2620
  %352 = load i8, ptr %350, align 1, !dbg !2620
  %353 = zext i8 %352 to i64, !dbg !2620
  %354 = getelementptr inbounds nuw i8, ptr %349, i64 %353, !dbg !2620
  %355 = load i8, ptr %354, align 1, !dbg !2620
  %356 = zext i8 %355 to i32, !dbg !2620
  %357 = load i32, ptr %14, align 4, !dbg !2620
  %358 = shl i32 %356, %357, !dbg !2620
  %359 = load i32, ptr %13, align 4, !dbg !2620
  %360 = or i32 %359, %358, !dbg !2620
  store i32 %360, ptr %13, align 4, !dbg !2620
  %361 = load i32, ptr %14, align 4, !dbg !2620
  %362 = add nsw i32 %361, 8, !dbg !2620
  store i32 %362, ptr %14, align 4, !dbg !2620
  br label %363

363:                                              ; preds = %348, %347
  br label %364, !dbg !2622

364:                                              ; preds = %363, %327
  br label %365

365:                                              ; preds = %364, %326
  br label %366, !dbg !2623

366:                                              ; preds = %365, %315
  br label %367, !dbg !2624

367:                                              ; preds = %366
  %368 = load i32, ptr %13, align 4, !dbg !2599
  %369 = and i32 %368, 8191, !dbg !2599
  %370 = zext i32 %369 to i64, !dbg !2599
  %371 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr @TIFFFaxBlackTable, i64 %370, !dbg !2599
  store ptr %371, ptr %22, align 8, !dbg !2599
  br label %372, !dbg !2599

372:                                              ; preds = %367
  %373 = load ptr, ptr %22, align 8, !dbg !2625
  %374 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr %373, i32 0, i32 1, !dbg !2625
  %375 = load i8, ptr %374, align 1, !dbg !2625
  %376 = zext i8 %375 to i32, !dbg !2625
  %377 = load i32, ptr %14, align 4, !dbg !2625
  %378 = sub nsw i32 %377, %376, !dbg !2625
  store i32 %378, ptr %14, align 4, !dbg !2625
  %379 = load ptr, ptr %22, align 8, !dbg !2625
  %380 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr %379, i32 0, i32 1, !dbg !2625
  %381 = load i8, ptr %380, align 1, !dbg !2625
  %382 = zext i8 %381 to i32, !dbg !2625
  %383 = load i32, ptr %13, align 4, !dbg !2625
  %384 = lshr i32 %383, %382, !dbg !2625
  store i32 %384, ptr %13, align 4, !dbg !2625
  br label %385, !dbg !2625

385:                                              ; preds = %372
  br label %386, !dbg !2599

386:                                              ; preds = %385
  %387 = load ptr, ptr %22, align 8, !dbg !2595
  %388 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr %387, i32 0, i32 0, !dbg !2595
  %389 = load i8, ptr %388, align 4, !dbg !2595
  %390 = zext i8 %389 to i32, !dbg !2595
  switch i32 %390, label %418 [
    i32 12, label %391
    i32 8, label %392
    i32 10, label %407
    i32 11, label %407
  ], !dbg !2595

391:                                              ; preds = %386
  store i32 1, ptr %20, align 4, !dbg !2627
  br label %535, !dbg !2627

392:                                              ; preds = %386
  br label %393, !dbg !2627

393:                                              ; preds = %392
  %394 = load i32, ptr %15, align 4, !dbg !2629
  %395 = load ptr, ptr %22, align 8, !dbg !2629
  %396 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr %395, i32 0, i32 2, !dbg !2629
  %397 = load i32, ptr %396, align 4, !dbg !2629
  %398 = add i32 %394, %397, !dbg !2629
  %399 = load ptr, ptr %18, align 8, !dbg !2629
  %400 = getelementptr inbounds nuw i32, ptr %399, i32 1, !dbg !2629
  store ptr %400, ptr %18, align 8, !dbg !2629
  store i32 %398, ptr %399, align 4, !dbg !2629
  %401 = load ptr, ptr %22, align 8, !dbg !2629
  %402 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr %401, i32 0, i32 2, !dbg !2629
  %403 = load i32, ptr %402, align 4, !dbg !2629
  %404 = load i32, ptr %11, align 4, !dbg !2629
  %405 = add i32 %404, %403, !dbg !2629
  store i32 %405, ptr %11, align 4, !dbg !2629
  store i32 0, ptr %15, align 4, !dbg !2629
  br label %406, !dbg !2629

406:                                              ; preds = %393
  br label %422, !dbg !2627

407:                                              ; preds = %386, %386
  %408 = load ptr, ptr %22, align 8, !dbg !2627
  %409 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr %408, i32 0, i32 2, !dbg !2627
  %410 = load i32, ptr %409, align 4, !dbg !2627
  %411 = load i32, ptr %11, align 4, !dbg !2627
  %412 = add i32 %411, %410, !dbg !2627
  store i32 %412, ptr %11, align 4, !dbg !2627
  %413 = load ptr, ptr %22, align 8, !dbg !2627
  %414 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr %413, i32 0, i32 2, !dbg !2627
  %415 = load i32, ptr %414, align 4, !dbg !2627
  %416 = load i32, ptr %15, align 4, !dbg !2627
  %417 = add i32 %416, %415, !dbg !2627
  store i32 %417, ptr %15, align 4, !dbg !2627
  br label %421, !dbg !2627

418:                                              ; preds = %386
  %419 = load ptr, ptr %6, align 8, !dbg !2627
  %420 = load i32, ptr %11, align 4, !dbg !2627
  call void @Fax3Unexpected(ptr noundef @Fax3Decode1D.module, ptr noundef %419, i32 noundef %420), !dbg !2627
  br label %535, !dbg !2627

421:                                              ; preds = %407
  br label %313, !dbg !2631, !llvm.loop !2632

422:                                              ; preds = %406
    #dbg_label(!2634, !2549)
  %423 = load i32, ptr %11, align 4, !dbg !2635
  %424 = load i32, ptr %12, align 4, !dbg !2635
  %425 = icmp sge i32 %423, %424, !dbg !2635
  br i1 %425, label %426, label %427, !dbg !2635

426:                                              ; preds = %422
  br label %535, !dbg !2635

427:                                              ; preds = %422
  br label %197, !dbg !2637, !llvm.loop !2638

428:                                              ; preds = %325, %210
    #dbg_label(!2640, !2547)
  %429 = load ptr, ptr %6, align 8, !dbg !2547
  %430 = load i32, ptr %11, align 4, !dbg !2547
  call void @Fax3PrematureEOF(ptr noundef @Fax3Decode1D.module, ptr noundef %429, i32 noundef %430), !dbg !2547
  br label %431, !dbg !2547

431:                                              ; preds = %428
  %432 = load i32, ptr %15, align 4, !dbg !2641
  %433 = icmp ne i32 %432, 0, !dbg !2641
  br i1 %433, label %434, label %443, !dbg !2641

434:                                              ; preds = %431
  br label %435, !dbg !2641

435:                                              ; preds = %434
  %436 = load i32, ptr %15, align 4, !dbg !2644
  %437 = add nsw i32 %436, 0, !dbg !2644
  %438 = load ptr, ptr %18, align 8, !dbg !2644
  %439 = getelementptr inbounds nuw i32, ptr %438, i32 1, !dbg !2644
  store ptr %439, ptr %18, align 8, !dbg !2644
  store i32 %437, ptr %438, align 4, !dbg !2644
  %440 = load i32, ptr %11, align 4, !dbg !2644
  %441 = add nsw i32 %440, 0, !dbg !2644
  store i32 %441, ptr %11, align 4, !dbg !2644
  store i32 0, ptr %15, align 4, !dbg !2644
  br label %442, !dbg !2644

442:                                              ; preds = %435
  br label %443, !dbg !2644

443:                                              ; preds = %442, %431
  %444 = load i32, ptr %11, align 4, !dbg !2646
  %445 = load i32, ptr %12, align 4, !dbg !2646
  %446 = icmp ne i32 %444, %445, !dbg !2646
  br i1 %446, label %447, label %533, !dbg !2646

447:                                              ; preds = %443
  %448 = load ptr, ptr %6, align 8, !dbg !2648
  %449 = load i32, ptr %11, align 4, !dbg !2648
  %450 = load i32, ptr %12, align 4, !dbg !2648
  call void @Fax3BadLength(ptr noundef @Fax3Decode1D.module, ptr noundef %448, i32 noundef %449, i32 noundef %450), !dbg !2648
  br label %451, !dbg !2648

451:                                              ; preds = %461, %447
  %452 = load i32, ptr %11, align 4, !dbg !2648
  %453 = load i32, ptr %12, align 4, !dbg !2648
  %454 = icmp sgt i32 %452, %453, !dbg !2648
  br i1 %454, label %455, label %459, !dbg !2648

455:                                              ; preds = %451
  %456 = load ptr, ptr %18, align 8, !dbg !2648
  %457 = load ptr, ptr %19, align 8, !dbg !2648
  %458 = icmp ugt ptr %456, %457, !dbg !2648
  br label %459

459:                                              ; preds = %455, %451
  %460 = phi i1 [ false, %451 ], [ %458, %455 ], !dbg !2650
  br i1 %460, label %461, label %467, !dbg !2648

461:                                              ; preds = %459
  %462 = load ptr, ptr %18, align 8, !dbg !2648
  %463 = getelementptr inbounds i32, ptr %462, i32 -1, !dbg !2648
  store ptr %463, ptr %18, align 8, !dbg !2648
  %464 = load i32, ptr %463, align 4, !dbg !2648
  %465 = load i32, ptr %11, align 4, !dbg !2648
  %466 = sub i32 %465, %464, !dbg !2648
  store i32 %466, ptr %11, align 4, !dbg !2648
  br label %451, !dbg !2648, !llvm.loop !2651

467:                                              ; preds = %459
  %468 = load i32, ptr %11, align 4, !dbg !2652
  %469 = load i32, ptr %12, align 4, !dbg !2652
  %470 = icmp slt i32 %468, %469, !dbg !2652
  br i1 %470, label %471, label %508, !dbg !2652

471:                                              ; preds = %467
  %472 = load i32, ptr %11, align 4, !dbg !2654
  %473 = icmp slt i32 %472, 0, !dbg !2654
  br i1 %473, label %474, label %475, !dbg !2654

474:                                              ; preds = %471
  store i32 0, ptr %11, align 4, !dbg !2654
  br label %475, !dbg !2654

475:                                              ; preds = %474, %471
  %476 = load ptr, ptr %18, align 8, !dbg !2657
  %477 = load ptr, ptr %19, align 8, !dbg !2657
  %478 = ptrtoint ptr %476 to i64, !dbg !2657
  %479 = ptrtoint ptr %477 to i64, !dbg !2657
  %480 = sub i64 %478, %479, !dbg !2657
  %481 = sdiv exact i64 %480, 4, !dbg !2657
  %482 = and i64 %481, 1, !dbg !2657
  %483 = icmp ne i64 %482, 0, !dbg !2657
  br i1 %483, label %484, label %493, !dbg !2657

484:                                              ; preds = %475
  br label %485, !dbg !2657

485:                                              ; preds = %484
  %486 = load i32, ptr %15, align 4, !dbg !2659
  %487 = add nsw i32 %486, 0, !dbg !2659
  %488 = load ptr, ptr %18, align 8, !dbg !2659
  %489 = getelementptr inbounds nuw i32, ptr %488, i32 1, !dbg !2659
  store ptr %489, ptr %18, align 8, !dbg !2659
  store i32 %487, ptr %488, align 4, !dbg !2659
  %490 = load i32, ptr %11, align 4, !dbg !2659
  %491 = add nsw i32 %490, 0, !dbg !2659
  store i32 %491, ptr %11, align 4, !dbg !2659
  store i32 0, ptr %15, align 4, !dbg !2659
  br label %492, !dbg !2659

492:                                              ; preds = %485
  br label %493, !dbg !2659

493:                                              ; preds = %492, %475
  br label %494, !dbg !2661

494:                                              ; preds = %493
  %495 = load i32, ptr %15, align 4, !dbg !2662
  %496 = load i32, ptr %12, align 4, !dbg !2662
  %497 = load i32, ptr %11, align 4, !dbg !2662
  %498 = sub nsw i32 %496, %497, !dbg !2662
  %499 = add nsw i32 %495, %498, !dbg !2662
  %500 = load ptr, ptr %18, align 8, !dbg !2662
  %501 = getelementptr inbounds nuw i32, ptr %500, i32 1, !dbg !2662
  store ptr %501, ptr %18, align 8, !dbg !2662
  store i32 %499, ptr %500, align 4, !dbg !2662
  %502 = load i32, ptr %12, align 4, !dbg !2662
  %503 = load i32, ptr %11, align 4, !dbg !2662
  %504 = sub nsw i32 %502, %503, !dbg !2662
  %505 = load i32, ptr %11, align 4, !dbg !2662
  %506 = add nsw i32 %505, %504, !dbg !2662
  store i32 %506, ptr %11, align 4, !dbg !2662
  store i32 0, ptr %15, align 4, !dbg !2662
  br label %507, !dbg !2662

507:                                              ; preds = %494
  br label %532, !dbg !2661

508:                                              ; preds = %467
  %509 = load i32, ptr %11, align 4, !dbg !2664
  %510 = load i32, ptr %12, align 4, !dbg !2664
  %511 = icmp sgt i32 %509, %510, !dbg !2664
  br i1 %511, label %512, label %531, !dbg !2664

512:                                              ; preds = %508
  br label %513, !dbg !2666

513:                                              ; preds = %512
  %514 = load i32, ptr %15, align 4, !dbg !2668
  %515 = load i32, ptr %12, align 4, !dbg !2668
  %516 = add nsw i32 %514, %515, !dbg !2668
  %517 = load ptr, ptr %18, align 8, !dbg !2668
  %518 = getelementptr inbounds nuw i32, ptr %517, i32 1, !dbg !2668
  store ptr %518, ptr %18, align 8, !dbg !2668
  store i32 %516, ptr %517, align 4, !dbg !2668
  %519 = load i32, ptr %12, align 4, !dbg !2668
  %520 = load i32, ptr %11, align 4, !dbg !2668
  %521 = add nsw i32 %520, %519, !dbg !2668
  store i32 %521, ptr %11, align 4, !dbg !2668
  store i32 0, ptr %15, align 4, !dbg !2668
  br label %522, !dbg !2668

522:                                              ; preds = %513
  br label %523, !dbg !2666

523:                                              ; preds = %522
  %524 = load i32, ptr %15, align 4, !dbg !2670
  %525 = add nsw i32 %524, 0, !dbg !2670
  %526 = load ptr, ptr %18, align 8, !dbg !2670
  %527 = getelementptr inbounds nuw i32, ptr %526, i32 1, !dbg !2670
  store ptr %527, ptr %18, align 8, !dbg !2670
  store i32 %525, ptr %526, align 4, !dbg !2670
  %528 = load i32, ptr %11, align 4, !dbg !2670
  %529 = add nsw i32 %528, 0, !dbg !2670
  store i32 %529, ptr %11, align 4, !dbg !2670
  store i32 0, ptr %15, align 4, !dbg !2670
  br label %530, !dbg !2670

530:                                              ; preds = %523
  br label %531, !dbg !2666

531:                                              ; preds = %530, %508
  br label %532

532:                                              ; preds = %531, %507
  br label %533, !dbg !2648

533:                                              ; preds = %532, %443
  br label %534, !dbg !2672

534:                                              ; preds = %533
  br label %774, !dbg !2547

535:                                              ; preds = %426, %418, %391, %311, %303, %276
    #dbg_label(!2673, !2547)
  br label %536, !dbg !2547

536:                                              ; preds = %535
  %537 = load i32, ptr %15, align 4, !dbg !2674
  %538 = icmp ne i32 %537, 0, !dbg !2674
  br i1 %538, label %539, label %548, !dbg !2674

539:                                              ; preds = %536
  br label %540, !dbg !2674

540:                                              ; preds = %539
  %541 = load i32, ptr %15, align 4, !dbg !2677
  %542 = add nsw i32 %541, 0, !dbg !2677
  %543 = load ptr, ptr %18, align 8, !dbg !2677
  %544 = getelementptr inbounds nuw i32, ptr %543, i32 1, !dbg !2677
  store ptr %544, ptr %18, align 8, !dbg !2677
  store i32 %542, ptr %543, align 4, !dbg !2677
  %545 = load i32, ptr %11, align 4, !dbg !2677
  %546 = add nsw i32 %545, 0, !dbg !2677
  store i32 %546, ptr %11, align 4, !dbg !2677
  store i32 0, ptr %15, align 4, !dbg !2677
  br label %547, !dbg !2677

547:                                              ; preds = %540
  br label %548, !dbg !2677

548:                                              ; preds = %547, %536
  %549 = load i32, ptr %11, align 4, !dbg !2679
  %550 = load i32, ptr %12, align 4, !dbg !2679
  %551 = icmp ne i32 %549, %550, !dbg !2679
  br i1 %551, label %552, label %638, !dbg !2679

552:                                              ; preds = %548
  %553 = load ptr, ptr %6, align 8, !dbg !2681
  %554 = load i32, ptr %11, align 4, !dbg !2681
  %555 = load i32, ptr %12, align 4, !dbg !2681
  call void @Fax3BadLength(ptr noundef @Fax3Decode1D.module, ptr noundef %553, i32 noundef %554, i32 noundef %555), !dbg !2681
  br label %556, !dbg !2681

556:                                              ; preds = %566, %552
  %557 = load i32, ptr %11, align 4, !dbg !2681
  %558 = load i32, ptr %12, align 4, !dbg !2681
  %559 = icmp sgt i32 %557, %558, !dbg !2681
  br i1 %559, label %560, label %564, !dbg !2681

560:                                              ; preds = %556
  %561 = load ptr, ptr %18, align 8, !dbg !2681
  %562 = load ptr, ptr %19, align 8, !dbg !2681
  %563 = icmp ugt ptr %561, %562, !dbg !2681
  br label %564

564:                                              ; preds = %560, %556
  %565 = phi i1 [ false, %556 ], [ %563, %560 ], !dbg !2683
  br i1 %565, label %566, label %572, !dbg !2681

566:                                              ; preds = %564
  %567 = load ptr, ptr %18, align 8, !dbg !2681
  %568 = getelementptr inbounds i32, ptr %567, i32 -1, !dbg !2681
  store ptr %568, ptr %18, align 8, !dbg !2681
  %569 = load i32, ptr %568, align 4, !dbg !2681
  %570 = load i32, ptr %11, align 4, !dbg !2681
  %571 = sub i32 %570, %569, !dbg !2681
  store i32 %571, ptr %11, align 4, !dbg !2681
  br label %556, !dbg !2681, !llvm.loop !2684

572:                                              ; preds = %564
  %573 = load i32, ptr %11, align 4, !dbg !2685
  %574 = load i32, ptr %12, align 4, !dbg !2685
  %575 = icmp slt i32 %573, %574, !dbg !2685
  br i1 %575, label %576, label %613, !dbg !2685

576:                                              ; preds = %572
  %577 = load i32, ptr %11, align 4, !dbg !2687
  %578 = icmp slt i32 %577, 0, !dbg !2687
  br i1 %578, label %579, label %580, !dbg !2687

579:                                              ; preds = %576
  store i32 0, ptr %11, align 4, !dbg !2687
  br label %580, !dbg !2687

580:                                              ; preds = %579, %576
  %581 = load ptr, ptr %18, align 8, !dbg !2690
  %582 = load ptr, ptr %19, align 8, !dbg !2690
  %583 = ptrtoint ptr %581 to i64, !dbg !2690
  %584 = ptrtoint ptr %582 to i64, !dbg !2690
  %585 = sub i64 %583, %584, !dbg !2690
  %586 = sdiv exact i64 %585, 4, !dbg !2690
  %587 = and i64 %586, 1, !dbg !2690
  %588 = icmp ne i64 %587, 0, !dbg !2690
  br i1 %588, label %589, label %598, !dbg !2690

589:                                              ; preds = %580
  br label %590, !dbg !2690

590:                                              ; preds = %589
  %591 = load i32, ptr %15, align 4, !dbg !2692
  %592 = add nsw i32 %591, 0, !dbg !2692
  %593 = load ptr, ptr %18, align 8, !dbg !2692
  %594 = getelementptr inbounds nuw i32, ptr %593, i32 1, !dbg !2692
  store ptr %594, ptr %18, align 8, !dbg !2692
  store i32 %592, ptr %593, align 4, !dbg !2692
  %595 = load i32, ptr %11, align 4, !dbg !2692
  %596 = add nsw i32 %595, 0, !dbg !2692
  store i32 %596, ptr %11, align 4, !dbg !2692
  store i32 0, ptr %15, align 4, !dbg !2692
  br label %597, !dbg !2692

597:                                              ; preds = %590
  br label %598, !dbg !2692

598:                                              ; preds = %597, %580
  br label %599, !dbg !2694

599:                                              ; preds = %598
  %600 = load i32, ptr %15, align 4, !dbg !2695
  %601 = load i32, ptr %12, align 4, !dbg !2695
  %602 = load i32, ptr %11, align 4, !dbg !2695
  %603 = sub nsw i32 %601, %602, !dbg !2695
  %604 = add nsw i32 %600, %603, !dbg !2695
  %605 = load ptr, ptr %18, align 8, !dbg !2695
  %606 = getelementptr inbounds nuw i32, ptr %605, i32 1, !dbg !2695
  store ptr %606, ptr %18, align 8, !dbg !2695
  store i32 %604, ptr %605, align 4, !dbg !2695
  %607 = load i32, ptr %12, align 4, !dbg !2695
  %608 = load i32, ptr %11, align 4, !dbg !2695
  %609 = sub nsw i32 %607, %608, !dbg !2695
  %610 = load i32, ptr %11, align 4, !dbg !2695
  %611 = add nsw i32 %610, %609, !dbg !2695
  store i32 %611, ptr %11, align 4, !dbg !2695
  store i32 0, ptr %15, align 4, !dbg !2695
  br label %612, !dbg !2695

612:                                              ; preds = %599
  br label %637, !dbg !2694

613:                                              ; preds = %572
  %614 = load i32, ptr %11, align 4, !dbg !2697
  %615 = load i32, ptr %12, align 4, !dbg !2697
  %616 = icmp sgt i32 %614, %615, !dbg !2697
  br i1 %616, label %617, label %636, !dbg !2697

617:                                              ; preds = %613
  br label %618, !dbg !2699

618:                                              ; preds = %617
  %619 = load i32, ptr %15, align 4, !dbg !2701
  %620 = load i32, ptr %12, align 4, !dbg !2701
  %621 = add nsw i32 %619, %620, !dbg !2701
  %622 = load ptr, ptr %18, align 8, !dbg !2701
  %623 = getelementptr inbounds nuw i32, ptr %622, i32 1, !dbg !2701
  store ptr %623, ptr %18, align 8, !dbg !2701
  store i32 %621, ptr %622, align 4, !dbg !2701
  %624 = load i32, ptr %12, align 4, !dbg !2701
  %625 = load i32, ptr %11, align 4, !dbg !2701
  %626 = add nsw i32 %625, %624, !dbg !2701
  store i32 %626, ptr %11, align 4, !dbg !2701
  store i32 0, ptr %15, align 4, !dbg !2701
  br label %627, !dbg !2701

627:                                              ; preds = %618
  br label %628, !dbg !2699

628:                                              ; preds = %627
  %629 = load i32, ptr %15, align 4, !dbg !2703
  %630 = add nsw i32 %629, 0, !dbg !2703
  %631 = load ptr, ptr %18, align 8, !dbg !2703
  %632 = getelementptr inbounds nuw i32, ptr %631, i32 1, !dbg !2703
  store ptr %632, ptr %18, align 8, !dbg !2703
  store i32 %630, ptr %631, align 4, !dbg !2703
  %633 = load i32, ptr %11, align 4, !dbg !2703
  %634 = add nsw i32 %633, 0, !dbg !2703
  store i32 %634, ptr %11, align 4, !dbg !2703
  store i32 0, ptr %15, align 4, !dbg !2703
  br label %635, !dbg !2703

635:                                              ; preds = %628
  br label %636, !dbg !2699

636:                                              ; preds = %635, %613
  br label %637

637:                                              ; preds = %636, %612
  br label %638, !dbg !2681

638:                                              ; preds = %637, %548
  br label %639, !dbg !2705

639:                                              ; preds = %638
  br label %640, !dbg !2547

640:                                              ; preds = %639
  %641 = load ptr, ptr %10, align 8, !dbg !2706
  %642 = getelementptr inbounds nuw %struct.Fax3DecodeState, ptr %641, i32 0, i32 5, !dbg !2707
  %643 = load ptr, ptr %642, align 8, !dbg !2707
  %644 = load ptr, ptr %7, align 8, !dbg !2708
  %645 = load ptr, ptr %19, align 8, !dbg !2709
  %646 = load ptr, ptr %18, align 8, !dbg !2710
  %647 = load i32, ptr %12, align 4, !dbg !2711
  call void %643(ptr noundef %644, ptr noundef %645, ptr noundef %646, i32 noundef %647), !dbg !2712
  %648 = load ptr, ptr %10, align 8, !dbg !2713
  %649 = getelementptr inbounds nuw %struct.Fax3DecodeState, ptr %648, i32 0, i32 0, !dbg !2714
  %650 = getelementptr inbounds nuw %struct.Fax3BaseState, ptr %649, i32 0, i32 1, !dbg !2715
  %651 = load i32, ptr %650, align 4, !dbg !2715
  %652 = load ptr, ptr %7, align 8, !dbg !2716
  %653 = zext i32 %651 to i64, !dbg !2716
  %654 = getelementptr inbounds nuw i8, ptr %652, i64 %653, !dbg !2716
  store ptr %654, ptr %7, align 8, !dbg !2716
  %655 = load ptr, ptr %10, align 8, !dbg !2717
  %656 = getelementptr inbounds nuw %struct.Fax3DecodeState, ptr %655, i32 0, i32 0, !dbg !2718
  %657 = getelementptr inbounds nuw %struct.Fax3BaseState, ptr %656, i32 0, i32 1, !dbg !2719
  %658 = load i32, ptr %657, align 4, !dbg !2719
  %659 = load i32, ptr %8, align 4, !dbg !2720
  %660 = sub i32 %659, %658, !dbg !2720
  store i32 %660, ptr %8, align 4, !dbg !2720
  %661 = load i32, ptr %8, align 4, !dbg !2721
  %662 = icmp ne i32 %661, 0, !dbg !2723
  br i1 %662, label %663, label %668, !dbg !2723

663:                                              ; preds = %640
  %664 = load ptr, ptr %6, align 8, !dbg !2724
  %665 = getelementptr inbounds nuw %struct.tiff, ptr %664, i32 0, i32 11, !dbg !2725
  %666 = load i32, ptr %665, align 8, !dbg !2726
  %667 = add i32 %666, 1, !dbg !2726
  store i32 %667, ptr %665, align 8, !dbg !2726
  br label %668, !dbg !2724

668:                                              ; preds = %663, %640
  br label %57, !dbg !2727, !llvm.loop !2728

669:                                              ; preds = %145, %78
    #dbg_label(!2730, !2731)
  br label %670, !dbg !2732

670:                                              ; preds = %669
  %671 = load i32, ptr %15, align 4, !dbg !2733
  %672 = icmp ne i32 %671, 0, !dbg !2733
  br i1 %672, label %673, label %682, !dbg !2733

673:                                              ; preds = %670
  br label %674, !dbg !2733

674:                                              ; preds = %673
  %675 = load i32, ptr %15, align 4, !dbg !2736
  %676 = add nsw i32 %675, 0, !dbg !2736
  %677 = load ptr, ptr %18, align 8, !dbg !2736
  %678 = getelementptr inbounds nuw i32, ptr %677, i32 1, !dbg !2736
  store ptr %678, ptr %18, align 8, !dbg !2736
  store i32 %676, ptr %677, align 4, !dbg !2736
  %679 = load i32, ptr %11, align 4, !dbg !2736
  %680 = add nsw i32 %679, 0, !dbg !2736
  store i32 %680, ptr %11, align 4, !dbg !2736
  store i32 0, ptr %15, align 4, !dbg !2736
  br label %681, !dbg !2736

681:                                              ; preds = %674
  br label %682, !dbg !2736

682:                                              ; preds = %681, %670
  %683 = load i32, ptr %11, align 4, !dbg !2738
  %684 = load i32, ptr %12, align 4, !dbg !2738
  %685 = icmp ne i32 %683, %684, !dbg !2738
  br i1 %685, label %686, label %772, !dbg !2738

686:                                              ; preds = %682
  %687 = load ptr, ptr %6, align 8, !dbg !2740
  %688 = load i32, ptr %11, align 4, !dbg !2740
  %689 = load i32, ptr %12, align 4, !dbg !2740
  call void @Fax3BadLength(ptr noundef @Fax3Decode1D.module, ptr noundef %687, i32 noundef %688, i32 noundef %689), !dbg !2740
  br label %690, !dbg !2740

690:                                              ; preds = %700, %686
  %691 = load i32, ptr %11, align 4, !dbg !2740
  %692 = load i32, ptr %12, align 4, !dbg !2740
  %693 = icmp sgt i32 %691, %692, !dbg !2740
  br i1 %693, label %694, label %698, !dbg !2740

694:                                              ; preds = %690
  %695 = load ptr, ptr %18, align 8, !dbg !2740
  %696 = load ptr, ptr %19, align 8, !dbg !2740
  %697 = icmp ugt ptr %695, %696, !dbg !2740
  br label %698

698:                                              ; preds = %694, %690
  %699 = phi i1 [ false, %690 ], [ %697, %694 ], !dbg !2742
  br i1 %699, label %700, label %706, !dbg !2740

700:                                              ; preds = %698
  %701 = load ptr, ptr %18, align 8, !dbg !2740
  %702 = getelementptr inbounds i32, ptr %701, i32 -1, !dbg !2740
  store ptr %702, ptr %18, align 8, !dbg !2740
  %703 = load i32, ptr %702, align 4, !dbg !2740
  %704 = load i32, ptr %11, align 4, !dbg !2740
  %705 = sub i32 %704, %703, !dbg !2740
  store i32 %705, ptr %11, align 4, !dbg !2740
  br label %690, !dbg !2740, !llvm.loop !2743

706:                                              ; preds = %698
  %707 = load i32, ptr %11, align 4, !dbg !2744
  %708 = load i32, ptr %12, align 4, !dbg !2744
  %709 = icmp slt i32 %707, %708, !dbg !2744
  br i1 %709, label %710, label %747, !dbg !2744

710:                                              ; preds = %706
  %711 = load i32, ptr %11, align 4, !dbg !2746
  %712 = icmp slt i32 %711, 0, !dbg !2746
  br i1 %712, label %713, label %714, !dbg !2746

713:                                              ; preds = %710
  store i32 0, ptr %11, align 4, !dbg !2746
  br label %714, !dbg !2746

714:                                              ; preds = %713, %710
  %715 = load ptr, ptr %18, align 8, !dbg !2749
  %716 = load ptr, ptr %19, align 8, !dbg !2749
  %717 = ptrtoint ptr %715 to i64, !dbg !2749
  %718 = ptrtoint ptr %716 to i64, !dbg !2749
  %719 = sub i64 %717, %718, !dbg !2749
  %720 = sdiv exact i64 %719, 4, !dbg !2749
  %721 = and i64 %720, 1, !dbg !2749
  %722 = icmp ne i64 %721, 0, !dbg !2749
  br i1 %722, label %723, label %732, !dbg !2749

723:                                              ; preds = %714
  br label %724, !dbg !2749

724:                                              ; preds = %723
  %725 = load i32, ptr %15, align 4, !dbg !2751
  %726 = add nsw i32 %725, 0, !dbg !2751
  %727 = load ptr, ptr %18, align 8, !dbg !2751
  %728 = getelementptr inbounds nuw i32, ptr %727, i32 1, !dbg !2751
  store ptr %728, ptr %18, align 8, !dbg !2751
  store i32 %726, ptr %727, align 4, !dbg !2751
  %729 = load i32, ptr %11, align 4, !dbg !2751
  %730 = add nsw i32 %729, 0, !dbg !2751
  store i32 %730, ptr %11, align 4, !dbg !2751
  store i32 0, ptr %15, align 4, !dbg !2751
  br label %731, !dbg !2751

731:                                              ; preds = %724
  br label %732, !dbg !2751

732:                                              ; preds = %731, %714
  br label %733, !dbg !2753

733:                                              ; preds = %732
  %734 = load i32, ptr %15, align 4, !dbg !2754
  %735 = load i32, ptr %12, align 4, !dbg !2754
  %736 = load i32, ptr %11, align 4, !dbg !2754
  %737 = sub nsw i32 %735, %736, !dbg !2754
  %738 = add nsw i32 %734, %737, !dbg !2754
  %739 = load ptr, ptr %18, align 8, !dbg !2754
  %740 = getelementptr inbounds nuw i32, ptr %739, i32 1, !dbg !2754
  store ptr %740, ptr %18, align 8, !dbg !2754
  store i32 %738, ptr %739, align 4, !dbg !2754
  %741 = load i32, ptr %12, align 4, !dbg !2754
  %742 = load i32, ptr %11, align 4, !dbg !2754
  %743 = sub nsw i32 %741, %742, !dbg !2754
  %744 = load i32, ptr %11, align 4, !dbg !2754
  %745 = add nsw i32 %744, %743, !dbg !2754
  store i32 %745, ptr %11, align 4, !dbg !2754
  store i32 0, ptr %15, align 4, !dbg !2754
  br label %746, !dbg !2754

746:                                              ; preds = %733
  br label %771, !dbg !2753

747:                                              ; preds = %706
  %748 = load i32, ptr %11, align 4, !dbg !2756
  %749 = load i32, ptr %12, align 4, !dbg !2756
  %750 = icmp sgt i32 %748, %749, !dbg !2756
  br i1 %750, label %751, label %770, !dbg !2756

751:                                              ; preds = %747
  br label %752, !dbg !2758

752:                                              ; preds = %751
  %753 = load i32, ptr %15, align 4, !dbg !2760
  %754 = load i32, ptr %12, align 4, !dbg !2760
  %755 = add nsw i32 %753, %754, !dbg !2760
  %756 = load ptr, ptr %18, align 8, !dbg !2760
  %757 = getelementptr inbounds nuw i32, ptr %756, i32 1, !dbg !2760
  store ptr %757, ptr %18, align 8, !dbg !2760
  store i32 %755, ptr %756, align 4, !dbg !2760
  %758 = load i32, ptr %12, align 4, !dbg !2760
  %759 = load i32, ptr %11, align 4, !dbg !2760
  %760 = add nsw i32 %759, %758, !dbg !2760
  store i32 %760, ptr %11, align 4, !dbg !2760
  store i32 0, ptr %15, align 4, !dbg !2760
  br label %761, !dbg !2760

761:                                              ; preds = %752
  br label %762, !dbg !2758

762:                                              ; preds = %761
  %763 = load i32, ptr %15, align 4, !dbg !2762
  %764 = add nsw i32 %763, 0, !dbg !2762
  %765 = load ptr, ptr %18, align 8, !dbg !2762
  %766 = getelementptr inbounds nuw i32, ptr %765, i32 1, !dbg !2762
  store ptr %766, ptr %18, align 8, !dbg !2762
  store i32 %764, ptr %765, align 4, !dbg !2762
  %767 = load i32, ptr %11, align 4, !dbg !2762
  %768 = add nsw i32 %767, 0, !dbg !2762
  store i32 %768, ptr %11, align 4, !dbg !2762
  store i32 0, ptr %15, align 4, !dbg !2762
  br label %769, !dbg !2762

769:                                              ; preds = %762
  br label %770, !dbg !2758

770:                                              ; preds = %769, %747
  br label %771

771:                                              ; preds = %770, %746
  br label %772, !dbg !2740

772:                                              ; preds = %771, %682
  br label %773, !dbg !2764

773:                                              ; preds = %772
  br label %774, !dbg !2764

774:                                              ; preds = %773, %534
    #dbg_label(!2765, !2766)
  %775 = load ptr, ptr %10, align 8, !dbg !2767
  %776 = getelementptr inbounds nuw %struct.Fax3DecodeState, ptr %775, i32 0, i32 5, !dbg !2768
  %777 = load ptr, ptr %776, align 8, !dbg !2768
  %778 = load ptr, ptr %7, align 8, !dbg !2769
  %779 = load ptr, ptr %19, align 8, !dbg !2770
  %780 = load ptr, ptr %18, align 8, !dbg !2771
  %781 = load i32, ptr %12, align 4, !dbg !2772
  call void %777(ptr noundef %778, ptr noundef %779, ptr noundef %780, i32 noundef %781), !dbg !2773
  br label %782, !dbg !2774

782:                                              ; preds = %774
  %783 = load i32, ptr %14, align 4, !dbg !2775
  %784 = load ptr, ptr %10, align 8, !dbg !2775
  %785 = getelementptr inbounds nuw %struct.Fax3DecodeState, ptr %784, i32 0, i32 3, !dbg !2775
  store i32 %783, ptr %785, align 4, !dbg !2775
  %786 = load i32, ptr %13, align 4, !dbg !2775
  %787 = load ptr, ptr %10, align 8, !dbg !2775
  %788 = getelementptr inbounds nuw %struct.Fax3DecodeState, ptr %787, i32 0, i32 2, !dbg !2775
  store i32 %786, ptr %788, align 8, !dbg !2775
  %789 = load i32, ptr %20, align 4, !dbg !2775
  %790 = load ptr, ptr %10, align 8, !dbg !2775
  %791 = getelementptr inbounds nuw %struct.Fax3DecodeState, ptr %790, i32 0, i32 4, !dbg !2775
  store i32 %789, ptr %791, align 8, !dbg !2775
  %792 = load ptr, ptr %16, align 8, !dbg !2775
  %793 = load ptr, ptr %6, align 8, !dbg !2775
  %794 = getelementptr inbounds nuw %struct.tiff, ptr %793, i32 0, i32 42, !dbg !2775
  %795 = load ptr, ptr %794, align 8, !dbg !2775
  %796 = ptrtoint ptr %792 to i64, !dbg !2775
  %797 = ptrtoint ptr %795 to i64, !dbg !2775
  %798 = sub i64 %796, %797, !dbg !2775
  %799 = load ptr, ptr %6, align 8, !dbg !2775
  %800 = getelementptr inbounds nuw %struct.tiff, ptr %799, i32 0, i32 43, !dbg !2775
  %801 = load i32, ptr %800, align 8, !dbg !2775
  %802 = sext i32 %801 to i64, !dbg !2775
  %803 = sub nsw i64 %802, %798, !dbg !2775
  %804 = trunc i64 %803 to i32, !dbg !2775
  store i32 %804, ptr %800, align 8, !dbg !2775
  %805 = load ptr, ptr %16, align 8, !dbg !2775
  %806 = load ptr, ptr %6, align 8, !dbg !2775
  %807 = getelementptr inbounds nuw %struct.tiff, ptr %806, i32 0, i32 42, !dbg !2775
  store ptr %805, ptr %807, align 8, !dbg !2775
  br label %808, !dbg !2775

808:                                              ; preds = %782
  store i32 -1, ptr %5, align 4, !dbg !2777
  br label %837, !dbg !2777

809:                                              ; preds = %57
  br label %810, !dbg !2778

810:                                              ; preds = %809
  %811 = load i32, ptr %14, align 4, !dbg !2779
  %812 = load ptr, ptr %10, align 8, !dbg !2779
  %813 = getelementptr inbounds nuw %struct.Fax3DecodeState, ptr %812, i32 0, i32 3, !dbg !2779
  store i32 %811, ptr %813, align 4, !dbg !2779
  %814 = load i32, ptr %13, align 4, !dbg !2779
  %815 = load ptr, ptr %10, align 8, !dbg !2779
  %816 = getelementptr inbounds nuw %struct.Fax3DecodeState, ptr %815, i32 0, i32 2, !dbg !2779
  store i32 %814, ptr %816, align 8, !dbg !2779
  %817 = load i32, ptr %20, align 4, !dbg !2779
  %818 = load ptr, ptr %10, align 8, !dbg !2779
  %819 = getelementptr inbounds nuw %struct.Fax3DecodeState, ptr %818, i32 0, i32 4, !dbg !2779
  store i32 %817, ptr %819, align 8, !dbg !2779
  %820 = load ptr, ptr %16, align 8, !dbg !2779
  %821 = load ptr, ptr %6, align 8, !dbg !2779
  %822 = getelementptr inbounds nuw %struct.tiff, ptr %821, i32 0, i32 42, !dbg !2779
  %823 = load ptr, ptr %822, align 8, !dbg !2779
  %824 = ptrtoint ptr %820 to i64, !dbg !2779
  %825 = ptrtoint ptr %823 to i64, !dbg !2779
  %826 = sub i64 %824, %825, !dbg !2779
  %827 = load ptr, ptr %6, align 8, !dbg !2779
  %828 = getelementptr inbounds nuw %struct.tiff, ptr %827, i32 0, i32 43, !dbg !2779
  %829 = load i32, ptr %828, align 8, !dbg !2779
  %830 = sext i32 %829 to i64, !dbg !2779
  %831 = sub nsw i64 %830, %826, !dbg !2779
  %832 = trunc i64 %831 to i32, !dbg !2779
  store i32 %832, ptr %828, align 8, !dbg !2779
  %833 = load ptr, ptr %16, align 8, !dbg !2779
  %834 = load ptr, ptr %6, align 8, !dbg !2779
  %835 = getelementptr inbounds nuw %struct.tiff, ptr %834, i32 0, i32 42, !dbg !2779
  store ptr %833, ptr %835, align 8, !dbg !2779
  br label %836, !dbg !2779

836:                                              ; preds = %810
  store i32 1, ptr %5, align 4, !dbg !2781
  br label %837, !dbg !2781

837:                                              ; preds = %836, %808
  %838 = load i32, ptr %5, align 4, !dbg !2782
  ret i32 %838, !dbg !2782
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @Fax3PreEncode(ptr noundef %0, i16 noundef zeroext %1) #0 !dbg !2783 {
  %3 = alloca ptr, align 8
  %4 = alloca i16, align 2
  %5 = alloca ptr, align 8
  %6 = alloca float, align 4
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !2784, !DIExpression(), !2785)
  store i16 %1, ptr %4, align 2
    #dbg_declare(ptr %4, !2786, !DIExpression(), !2787)
    #dbg_declare(ptr %5, !2788, !DIExpression(), !2789)
  %7 = load ptr, ptr %3, align 8, !dbg !2790
  %8 = getelementptr inbounds nuw %struct.tiff, ptr %7, i32 0, i32 37, !dbg !2790
  %9 = load ptr, ptr %8, align 8, !dbg !2790
  store ptr %9, ptr %5, align 8, !dbg !2789
  %10 = load i16, ptr %4, align 2, !dbg !2791
  %11 = load ptr, ptr %5, align 8, !dbg !2792
  %12 = icmp ne ptr %11, null, !dbg !2792
  br i1 %12, label %13, label %14, !dbg !2792

13:                                               ; preds = %2
  br label %15, !dbg !2792

14:                                               ; preds = %2
  call void @__assert_fail(ptr noundef @.str.40, ptr noundef @.str.1, i32 noundef 699, ptr noundef @__PRETTY_FUNCTION__.Fax3PreEncode) #4, !dbg !2792
  unreachable, !dbg !2792

15:                                               ; preds = %13
  %16 = load ptr, ptr %5, align 8, !dbg !2795
  %17 = getelementptr inbounds nuw %struct.Fax3EncodeState, ptr %16, i32 0, i32 2, !dbg !2796
  store i32 8, ptr %17, align 4, !dbg !2797
  %18 = load ptr, ptr %5, align 8, !dbg !2798
  %19 = getelementptr inbounds nuw %struct.Fax3EncodeState, ptr %18, i32 0, i32 1, !dbg !2799
  store i32 0, ptr %19, align 8, !dbg !2800
  %20 = load ptr, ptr %5, align 8, !dbg !2801
  %21 = getelementptr inbounds nuw %struct.Fax3EncodeState, ptr %20, i32 0, i32 3, !dbg !2802
  store i32 0, ptr %21, align 8, !dbg !2803
  %22 = load ptr, ptr %5, align 8, !dbg !2804
  %23 = getelementptr inbounds nuw %struct.Fax3EncodeState, ptr %22, i32 0, i32 4, !dbg !2806
  %24 = load ptr, ptr %23, align 8, !dbg !2806
  %25 = icmp ne ptr %24, null, !dbg !2804
  br i1 %25, label %26, label %34, !dbg !2804

26:                                               ; preds = %15
  %27 = load ptr, ptr %5, align 8, !dbg !2807
  %28 = getelementptr inbounds nuw %struct.Fax3EncodeState, ptr %27, i32 0, i32 4, !dbg !2808
  %29 = load ptr, ptr %28, align 8, !dbg !2808
  %30 = load ptr, ptr %5, align 8, !dbg !2809
  %31 = getelementptr inbounds nuw %struct.Fax3EncodeState, ptr %30, i32 0, i32 0, !dbg !2810
  %32 = getelementptr inbounds nuw %struct.Fax3BaseState, ptr %31, i32 0, i32 1, !dbg !2811
  %33 = load i32, ptr %32, align 4, !dbg !2811
  call void @_TIFFmemset(ptr noundef %29, i32 noundef 0, i32 noundef %33), !dbg !2812
  br label %34, !dbg !2812

34:                                               ; preds = %26, %15
  %35 = load ptr, ptr %5, align 8, !dbg !2813
  %36 = getelementptr inbounds nuw %struct.Fax3EncodeState, ptr %35, i32 0, i32 0, !dbg !2813
  %37 = getelementptr inbounds nuw %struct.Fax3BaseState, ptr %36, i32 0, i32 6, !dbg !2813
  %38 = load i32, ptr %37, align 8, !dbg !2813
  %39 = and i32 %38, 1, !dbg !2813
  %40 = icmp ne i32 %39, 0, !dbg !2813
  br i1 %40, label %41, label %68, !dbg !2813

41:                                               ; preds = %34
    #dbg_declare(ptr %6, !2815, !DIExpression(), !2817)
  %42 = load ptr, ptr %3, align 8, !dbg !2818
  %43 = getelementptr inbounds nuw %struct.tiff, ptr %42, i32 0, i32 6, !dbg !2819
  %44 = getelementptr inbounds nuw %struct.TIFFDirectory, ptr %43, i32 0, i32 22, !dbg !2820
  %45 = load float, ptr %44, align 4, !dbg !2820
  store float %45, ptr %6, align 4, !dbg !2817
  %46 = load ptr, ptr %3, align 8, !dbg !2821
  %47 = getelementptr inbounds nuw %struct.tiff, ptr %46, i32 0, i32 6, !dbg !2823
  %48 = getelementptr inbounds nuw %struct.TIFFDirectory, ptr %47, i32 0, i32 23, !dbg !2824
  %49 = load i16, ptr %48, align 8, !dbg !2824
  %50 = zext i16 %49 to i32, !dbg !2821
  %51 = icmp eq i32 %50, 3, !dbg !2825
  br i1 %51, label %52, label %55, !dbg !2825

52:                                               ; preds = %41
  %53 = load float, ptr %6, align 4, !dbg !2826
  %54 = fmul float %53, 0x400451EB80000000, !dbg !2826
  store float %54, ptr %6, align 4, !dbg !2826
  br label %55, !dbg !2827

55:                                               ; preds = %52, %41
  %56 = load float, ptr %6, align 4, !dbg !2828
  %57 = fcmp ogt float %56, 1.500000e+02, !dbg !2829
  %58 = zext i1 %57 to i64, !dbg !2828
  %59 = select i1 %57, i32 4, i32 2, !dbg !2828
  %60 = load ptr, ptr %5, align 8, !dbg !2830
  %61 = getelementptr inbounds nuw %struct.Fax3EncodeState, ptr %60, i32 0, i32 6, !dbg !2831
  store i32 %59, ptr %61, align 4, !dbg !2832
  %62 = load ptr, ptr %5, align 8, !dbg !2833
  %63 = getelementptr inbounds nuw %struct.Fax3EncodeState, ptr %62, i32 0, i32 6, !dbg !2834
  %64 = load i32, ptr %63, align 4, !dbg !2834
  %65 = sub nsw i32 %64, 1, !dbg !2835
  %66 = load ptr, ptr %5, align 8, !dbg !2836
  %67 = getelementptr inbounds nuw %struct.Fax3EncodeState, ptr %66, i32 0, i32 5, !dbg !2837
  store i32 %65, ptr %67, align 8, !dbg !2838
  br label %73, !dbg !2839

68:                                               ; preds = %34
  %69 = load ptr, ptr %5, align 8, !dbg !2840
  %70 = getelementptr inbounds nuw %struct.Fax3EncodeState, ptr %69, i32 0, i32 6, !dbg !2841
  store i32 0, ptr %70, align 4, !dbg !2842
  %71 = load ptr, ptr %5, align 8, !dbg !2843
  %72 = getelementptr inbounds nuw %struct.Fax3EncodeState, ptr %71, i32 0, i32 5, !dbg !2844
  store i32 0, ptr %72, align 8, !dbg !2845
  br label %73

73:                                               ; preds = %68, %55
  ret i32 1, !dbg !2846
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @Fax3PostEncode(ptr noundef %0) #0 !dbg !2847 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !2848, !DIExpression(), !2849)
    #dbg_declare(ptr %3, !2850, !DIExpression(), !2851)
  %4 = load ptr, ptr %2, align 8, !dbg !2852
  %5 = getelementptr inbounds nuw %struct.tiff, ptr %4, i32 0, i32 37, !dbg !2852
  %6 = load ptr, ptr %5, align 8, !dbg !2852
  store ptr %6, ptr %3, align 8, !dbg !2851
  %7 = load ptr, ptr %3, align 8, !dbg !2853
  %8 = getelementptr inbounds nuw %struct.Fax3EncodeState, ptr %7, i32 0, i32 2, !dbg !2855
  %9 = load i32, ptr %8, align 4, !dbg !2855
  %10 = icmp ne i32 %9, 8, !dbg !2856
  br i1 %10, label %11, label %39, !dbg !2856

11:                                               ; preds = %1
  %12 = load ptr, ptr %2, align 8, !dbg !2857
  %13 = getelementptr inbounds nuw %struct.tiff, ptr %12, i32 0, i32 43, !dbg !2857
  %14 = load i32, ptr %13, align 8, !dbg !2857
  %15 = load ptr, ptr %2, align 8, !dbg !2857
  %16 = getelementptr inbounds nuw %struct.tiff, ptr %15, i32 0, i32 41, !dbg !2857
  %17 = load i32, ptr %16, align 8, !dbg !2857
  %18 = icmp sge i32 %14, %17, !dbg !2857
  br i1 %18, label %19, label %22, !dbg !2857

19:                                               ; preds = %11
  %20 = load ptr, ptr %2, align 8, !dbg !2857
  %21 = call i32 @TIFFFlushData1(ptr noundef %20), !dbg !2857
  br label %22, !dbg !2857

22:                                               ; preds = %19, %11
  %23 = load ptr, ptr %3, align 8, !dbg !2860
  %24 = getelementptr inbounds nuw %struct.Fax3EncodeState, ptr %23, i32 0, i32 1, !dbg !2860
  %25 = load i32, ptr %24, align 8, !dbg !2860
  %26 = trunc i32 %25 to i8, !dbg !2860
  %27 = load ptr, ptr %2, align 8, !dbg !2860
  %28 = getelementptr inbounds nuw %struct.tiff, ptr %27, i32 0, i32 42, !dbg !2860
  %29 = load ptr, ptr %28, align 8, !dbg !2860
  %30 = getelementptr inbounds nuw i8, ptr %29, i32 1, !dbg !2860
  store ptr %30, ptr %28, align 8, !dbg !2860
  store i8 %26, ptr %29, align 1, !dbg !2860
  %31 = load ptr, ptr %2, align 8, !dbg !2860
  %32 = getelementptr inbounds nuw %struct.tiff, ptr %31, i32 0, i32 43, !dbg !2860
  %33 = load i32, ptr %32, align 8, !dbg !2860
  %34 = add nsw i32 %33, 1, !dbg !2860
  store i32 %34, ptr %32, align 8, !dbg !2860
  %35 = load ptr, ptr %3, align 8, !dbg !2860
  %36 = getelementptr inbounds nuw %struct.Fax3EncodeState, ptr %35, i32 0, i32 1, !dbg !2860
  store i32 0, ptr %36, align 8, !dbg !2860
  %37 = load ptr, ptr %3, align 8, !dbg !2860
  %38 = getelementptr inbounds nuw %struct.Fax3EncodeState, ptr %37, i32 0, i32 2, !dbg !2860
  store i32 8, ptr %38, align 4, !dbg !2860
  br label %39, !dbg !2860

39:                                               ; preds = %22, %1
  ret i32 1, !dbg !2861
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @Fax3Encode(ptr noundef %0, ptr noundef %1, i32 noundef %2, i16 noundef zeroext %3) #0 !dbg !2862 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i16, align 2
  %10 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8
    #dbg_declare(ptr %6, !2863, !DIExpression(), !2864)
  store ptr %1, ptr %7, align 8
    #dbg_declare(ptr %7, !2865, !DIExpression(), !2866)
  store i32 %2, ptr %8, align 4
    #dbg_declare(ptr %8, !2867, !DIExpression(), !2868)
  store i16 %3, ptr %9, align 2
    #dbg_declare(ptr %9, !2869, !DIExpression(), !2870)
    #dbg_declare(ptr %10, !2871, !DIExpression(), !2872)
  %11 = load ptr, ptr %6, align 8, !dbg !2873
  %12 = getelementptr inbounds nuw %struct.tiff, ptr %11, i32 0, i32 37, !dbg !2873
  %13 = load ptr, ptr %12, align 8, !dbg !2873
  store ptr %13, ptr %10, align 8, !dbg !2872
  %14 = load i16, ptr %9, align 2, !dbg !2874
  br label %15, !dbg !2875

15:                                               ; preds = %127, %4
  %16 = load i32, ptr %8, align 4, !dbg !2876
  %17 = sext i32 %16 to i64, !dbg !2877
  %18 = icmp sgt i64 %17, 0, !dbg !2878
  br i1 %18, label %19, label %128, !dbg !2875

19:                                               ; preds = %15
  %20 = load ptr, ptr %10, align 8, !dbg !2879
  %21 = getelementptr inbounds nuw %struct.Fax3EncodeState, ptr %20, i32 0, i32 0, !dbg !2882
  %22 = getelementptr inbounds nuw %struct.Fax3BaseState, ptr %21, i32 0, i32 0, !dbg !2883
  %23 = load i32, ptr %22, align 8, !dbg !2883
  %24 = and i32 %23, 2, !dbg !2884
  %25 = icmp eq i32 %24, 0, !dbg !2885
  br i1 %25, label %26, label %28, !dbg !2885

26:                                               ; preds = %19
  %27 = load ptr, ptr %6, align 8, !dbg !2886
  call void @Fax3PutEOL(ptr noundef %27), !dbg !2887
  br label %28, !dbg !2887

28:                                               ; preds = %26, %19
  %29 = load ptr, ptr %10, align 8, !dbg !2888
  %30 = getelementptr inbounds nuw %struct.Fax3EncodeState, ptr %29, i32 0, i32 0, !dbg !2888
  %31 = getelementptr inbounds nuw %struct.Fax3BaseState, ptr %30, i32 0, i32 6, !dbg !2888
  %32 = load i32, ptr %31, align 8, !dbg !2888
  %33 = and i32 %32, 1, !dbg !2888
  %34 = icmp ne i32 %33, 0, !dbg !2888
  br i1 %34, label %35, label %95, !dbg !2888

35:                                               ; preds = %28
  %36 = load ptr, ptr %10, align 8, !dbg !2890
  %37 = getelementptr inbounds nuw %struct.Fax3EncodeState, ptr %36, i32 0, i32 3, !dbg !2893
  %38 = load i32, ptr %37, align 8, !dbg !2893
  %39 = icmp eq i32 %38, 0, !dbg !2894
  br i1 %39, label %40, label %53, !dbg !2894

40:                                               ; preds = %35
  %41 = load ptr, ptr %6, align 8, !dbg !2895
  %42 = load ptr, ptr %7, align 8, !dbg !2898
  %43 = load ptr, ptr %10, align 8, !dbg !2899
  %44 = getelementptr inbounds nuw %struct.Fax3EncodeState, ptr %43, i32 0, i32 0, !dbg !2900
  %45 = getelementptr inbounds nuw %struct.Fax3BaseState, ptr %44, i32 0, i32 2, !dbg !2901
  %46 = load i32, ptr %45, align 8, !dbg !2901
  %47 = call i32 @Fax3Encode1DRow(ptr noundef %41, ptr noundef %42, i32 noundef %46), !dbg !2902
  %48 = icmp ne i32 %47, 0, !dbg !2902
  br i1 %48, label %50, label %49, !dbg !2903

49:                                               ; preds = %40
  store i32 0, ptr %5, align 4, !dbg !2904
  br label %129, !dbg !2904

50:                                               ; preds = %40
  %51 = load ptr, ptr %10, align 8, !dbg !2905
  %52 = getelementptr inbounds nuw %struct.Fax3EncodeState, ptr %51, i32 0, i32 3, !dbg !2906
  store i32 1, ptr %52, align 8, !dbg !2907
  br label %71, !dbg !2908

53:                                               ; preds = %35
  %54 = load ptr, ptr %6, align 8, !dbg !2909
  %55 = load ptr, ptr %7, align 8, !dbg !2912
  %56 = load ptr, ptr %10, align 8, !dbg !2913
  %57 = getelementptr inbounds nuw %struct.Fax3EncodeState, ptr %56, i32 0, i32 4, !dbg !2914
  %58 = load ptr, ptr %57, align 8, !dbg !2914
  %59 = load ptr, ptr %10, align 8, !dbg !2915
  %60 = getelementptr inbounds nuw %struct.Fax3EncodeState, ptr %59, i32 0, i32 0, !dbg !2916
  %61 = getelementptr inbounds nuw %struct.Fax3BaseState, ptr %60, i32 0, i32 2, !dbg !2917
  %62 = load i32, ptr %61, align 8, !dbg !2917
  %63 = call i32 @Fax3Encode2DRow(ptr noundef %54, ptr noundef %55, ptr noundef %58, i32 noundef %62), !dbg !2918
  %64 = icmp ne i32 %63, 0, !dbg !2918
  br i1 %64, label %66, label %65, !dbg !2919

65:                                               ; preds = %53
  store i32 0, ptr %5, align 4, !dbg !2920
  br label %129, !dbg !2920

66:                                               ; preds = %53
  %67 = load ptr, ptr %10, align 8, !dbg !2921
  %68 = getelementptr inbounds nuw %struct.Fax3EncodeState, ptr %67, i32 0, i32 5, !dbg !2922
  %69 = load i32, ptr %68, align 8, !dbg !2923
  %70 = add nsw i32 %69, -1, !dbg !2923
  store i32 %70, ptr %68, align 8, !dbg !2923
  br label %71

71:                                               ; preds = %66, %50
  %72 = load ptr, ptr %10, align 8, !dbg !2924
  %73 = getelementptr inbounds nuw %struct.Fax3EncodeState, ptr %72, i32 0, i32 5, !dbg !2926
  %74 = load i32, ptr %73, align 8, !dbg !2926
  %75 = icmp eq i32 %74, 0, !dbg !2927
  br i1 %75, label %76, label %85, !dbg !2927

76:                                               ; preds = %71
  %77 = load ptr, ptr %10, align 8, !dbg !2928
  %78 = getelementptr inbounds nuw %struct.Fax3EncodeState, ptr %77, i32 0, i32 3, !dbg !2930
  store i32 0, ptr %78, align 8, !dbg !2931
  %79 = load ptr, ptr %10, align 8, !dbg !2932
  %80 = getelementptr inbounds nuw %struct.Fax3EncodeState, ptr %79, i32 0, i32 6, !dbg !2933
  %81 = load i32, ptr %80, align 4, !dbg !2933
  %82 = sub nsw i32 %81, 1, !dbg !2934
  %83 = load ptr, ptr %10, align 8, !dbg !2935
  %84 = getelementptr inbounds nuw %struct.Fax3EncodeState, ptr %83, i32 0, i32 5, !dbg !2936
  store i32 %82, ptr %84, align 8, !dbg !2937
  br label %94, !dbg !2938

85:                                               ; preds = %71
  %86 = load ptr, ptr %10, align 8, !dbg !2939
  %87 = getelementptr inbounds nuw %struct.Fax3EncodeState, ptr %86, i32 0, i32 4, !dbg !2940
  %88 = load ptr, ptr %87, align 8, !dbg !2940
  %89 = load ptr, ptr %7, align 8, !dbg !2941
  %90 = load ptr, ptr %10, align 8, !dbg !2942
  %91 = getelementptr inbounds nuw %struct.Fax3EncodeState, ptr %90, i32 0, i32 0, !dbg !2943
  %92 = getelementptr inbounds nuw %struct.Fax3BaseState, ptr %91, i32 0, i32 1, !dbg !2944
  %93 = load i32, ptr %92, align 4, !dbg !2944
  call void @_TIFFmemcpy(ptr noundef %88, ptr noundef %89, i32 noundef %93), !dbg !2945
  br label %94

94:                                               ; preds = %85, %76
  br label %106, !dbg !2946

95:                                               ; preds = %28
  %96 = load ptr, ptr %6, align 8, !dbg !2947
  %97 = load ptr, ptr %7, align 8, !dbg !2950
  %98 = load ptr, ptr %10, align 8, !dbg !2951
  %99 = getelementptr inbounds nuw %struct.Fax3EncodeState, ptr %98, i32 0, i32 0, !dbg !2952
  %100 = getelementptr inbounds nuw %struct.Fax3BaseState, ptr %99, i32 0, i32 2, !dbg !2953
  %101 = load i32, ptr %100, align 8, !dbg !2953
  %102 = call i32 @Fax3Encode1DRow(ptr noundef %96, ptr noundef %97, i32 noundef %101), !dbg !2954
  %103 = icmp ne i32 %102, 0, !dbg !2954
  br i1 %103, label %105, label %104, !dbg !2955

104:                                              ; preds = %95
  store i32 0, ptr %5, align 4, !dbg !2956
  br label %129, !dbg !2956

105:                                              ; preds = %95
  br label %106

106:                                              ; preds = %105, %94
  %107 = load ptr, ptr %10, align 8, !dbg !2957
  %108 = getelementptr inbounds nuw %struct.Fax3EncodeState, ptr %107, i32 0, i32 0, !dbg !2958
  %109 = getelementptr inbounds nuw %struct.Fax3BaseState, ptr %108, i32 0, i32 1, !dbg !2959
  %110 = load i32, ptr %109, align 4, !dbg !2959
  %111 = load ptr, ptr %7, align 8, !dbg !2960
  %112 = zext i32 %110 to i64, !dbg !2960
  %113 = getelementptr inbounds nuw i8, ptr %111, i64 %112, !dbg !2960
  store ptr %113, ptr %7, align 8, !dbg !2960
  %114 = load ptr, ptr %10, align 8, !dbg !2961
  %115 = getelementptr inbounds nuw %struct.Fax3EncodeState, ptr %114, i32 0, i32 0, !dbg !2962
  %116 = getelementptr inbounds nuw %struct.Fax3BaseState, ptr %115, i32 0, i32 1, !dbg !2963
  %117 = load i32, ptr %116, align 4, !dbg !2963
  %118 = load i32, ptr %8, align 4, !dbg !2964
  %119 = sub i32 %118, %117, !dbg !2964
  store i32 %119, ptr %8, align 4, !dbg !2964
  %120 = load i32, ptr %8, align 4, !dbg !2965
  %121 = icmp ne i32 %120, 0, !dbg !2967
  br i1 %121, label %122, label %127, !dbg !2967

122:                                              ; preds = %106
  %123 = load ptr, ptr %6, align 8, !dbg !2968
  %124 = getelementptr inbounds nuw %struct.tiff, ptr %123, i32 0, i32 11, !dbg !2969
  %125 = load i32, ptr %124, align 8, !dbg !2970
  %126 = add i32 %125, 1, !dbg !2970
  store i32 %126, ptr %124, align 8, !dbg !2970
  br label %127, !dbg !2968

127:                                              ; preds = %122, %106
  br label %15, !dbg !2875, !llvm.loop !2971

128:                                              ; preds = %15
  store i32 1, ptr %5, align 4, !dbg !2973
  br label %129, !dbg !2973

129:                                              ; preds = %128, %104, %65, %49
  %130 = load i32, ptr %5, align 4, !dbg !2974
  ret i32 %130, !dbg !2974
}

; Function Attrs: noinline nounwind uwtable
define internal void @Fax3Close(ptr noundef %0) #0 !dbg !2975 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !2976, !DIExpression(), !2977)
  %7 = load ptr, ptr %2, align 8, !dbg !2978
  %8 = getelementptr inbounds nuw %struct.tiff, ptr %7, i32 0, i32 37, !dbg !2978
  %9 = load ptr, ptr %8, align 8, !dbg !2978
  %10 = getelementptr inbounds nuw %struct.Fax3BaseState, ptr %9, i32 0, i32 0, !dbg !2980
  %11 = load i32, ptr %10, align 8, !dbg !2980
  %12 = and i32 %11, 1, !dbg !2981
  %13 = icmp eq i32 %12, 0, !dbg !2982
  br i1 %13, label %14, label %74, !dbg !2982

14:                                               ; preds = %1
    #dbg_declare(ptr %3, !2983, !DIExpression(), !2985)
  %15 = load ptr, ptr %2, align 8, !dbg !2986
  %16 = getelementptr inbounds nuw %struct.tiff, ptr %15, i32 0, i32 37, !dbg !2986
  %17 = load ptr, ptr %16, align 8, !dbg !2986
  store ptr %17, ptr %3, align 8, !dbg !2985
    #dbg_declare(ptr %4, !2987, !DIExpression(), !2990)
  store i32 1, ptr %4, align 4, !dbg !2990
    #dbg_declare(ptr %5, !2991, !DIExpression(), !2992)
  store i32 12, ptr %5, align 4, !dbg !2992
    #dbg_declare(ptr %6, !2993, !DIExpression(), !2994)
  %18 = load ptr, ptr %3, align 8, !dbg !2995
  %19 = getelementptr inbounds nuw %struct.Fax3EncodeState, ptr %18, i32 0, i32 0, !dbg !2995
  %20 = getelementptr inbounds nuw %struct.Fax3BaseState, ptr %19, i32 0, i32 6, !dbg !2995
  %21 = load i32, ptr %20, align 8, !dbg !2995
  %22 = and i32 %21, 1, !dbg !2995
  %23 = icmp ne i32 %22, 0, !dbg !2995
  br i1 %23, label %24, label %35, !dbg !2995

24:                                               ; preds = %14
  %25 = load i32, ptr %4, align 4, !dbg !2997
  %26 = shl i32 %25, 1, !dbg !2998
  %27 = load ptr, ptr %3, align 8, !dbg !2999
  %28 = getelementptr inbounds nuw %struct.Fax3EncodeState, ptr %27, i32 0, i32 3, !dbg !3000
  %29 = load i32, ptr %28, align 8, !dbg !3000
  %30 = icmp eq i32 %29, 0, !dbg !3001
  %31 = zext i1 %30 to i32, !dbg !3001
  %32 = or i32 %26, %31, !dbg !3002
  store i32 %32, ptr %4, align 4, !dbg !3003
  %33 = load i32, ptr %5, align 4, !dbg !3004
  %34 = add i32 %33, 1, !dbg !3004
  store i32 %34, ptr %5, align 4, !dbg !3004
  br label %35, !dbg !3005

35:                                               ; preds = %24, %14
  store i32 0, ptr %6, align 4, !dbg !3006
  br label %36, !dbg !3008

36:                                               ; preds = %43, %35
  %37 = load i32, ptr %6, align 4, !dbg !3009
  %38 = icmp slt i32 %37, 6, !dbg !3011
  br i1 %38, label %39, label %46, !dbg !3012

39:                                               ; preds = %36
  %40 = load ptr, ptr %2, align 8, !dbg !3013
  %41 = load i32, ptr %4, align 4, !dbg !3014
  %42 = load i32, ptr %5, align 4, !dbg !3015
  call void @Fax3PutBits(ptr noundef %40, i32 noundef %41, i32 noundef %42), !dbg !3016
  br label %43, !dbg !3016

43:                                               ; preds = %39
  %44 = load i32, ptr %6, align 4, !dbg !3017
  %45 = add nsw i32 %44, 1, !dbg !3017
  store i32 %45, ptr %6, align 4, !dbg !3017
  br label %36, !dbg !3018, !llvm.loop !3019

46:                                               ; preds = %36
  %47 = load ptr, ptr %2, align 8, !dbg !3021
  %48 = getelementptr inbounds nuw %struct.tiff, ptr %47, i32 0, i32 43, !dbg !3021
  %49 = load i32, ptr %48, align 8, !dbg !3021
  %50 = load ptr, ptr %2, align 8, !dbg !3021
  %51 = getelementptr inbounds nuw %struct.tiff, ptr %50, i32 0, i32 41, !dbg !3021
  %52 = load i32, ptr %51, align 8, !dbg !3021
  %53 = icmp sge i32 %49, %52, !dbg !3021
  br i1 %53, label %54, label %57, !dbg !3021

54:                                               ; preds = %46
  %55 = load ptr, ptr %2, align 8, !dbg !3021
  %56 = call i32 @TIFFFlushData1(ptr noundef %55), !dbg !3021
  br label %57, !dbg !3021

57:                                               ; preds = %54, %46
  %58 = load ptr, ptr %3, align 8, !dbg !3024
  %59 = getelementptr inbounds nuw %struct.Fax3EncodeState, ptr %58, i32 0, i32 1, !dbg !3024
  %60 = load i32, ptr %59, align 8, !dbg !3024
  %61 = trunc i32 %60 to i8, !dbg !3024
  %62 = load ptr, ptr %2, align 8, !dbg !3024
  %63 = getelementptr inbounds nuw %struct.tiff, ptr %62, i32 0, i32 42, !dbg !3024
  %64 = load ptr, ptr %63, align 8, !dbg !3024
  %65 = getelementptr inbounds nuw i8, ptr %64, i32 1, !dbg !3024
  store ptr %65, ptr %63, align 8, !dbg !3024
  store i8 %61, ptr %64, align 1, !dbg !3024
  %66 = load ptr, ptr %2, align 8, !dbg !3024
  %67 = getelementptr inbounds nuw %struct.tiff, ptr %66, i32 0, i32 43, !dbg !3024
  %68 = load i32, ptr %67, align 8, !dbg !3024
  %69 = add nsw i32 %68, 1, !dbg !3024
  store i32 %69, ptr %67, align 8, !dbg !3024
  %70 = load ptr, ptr %3, align 8, !dbg !3024
  %71 = getelementptr inbounds nuw %struct.Fax3EncodeState, ptr %70, i32 0, i32 1, !dbg !3024
  store i32 0, ptr %71, align 8, !dbg !3024
  %72 = load ptr, ptr %3, align 8, !dbg !3024
  %73 = getelementptr inbounds nuw %struct.Fax3EncodeState, ptr %72, i32 0, i32 2, !dbg !3024
  store i32 8, ptr %73, align 4, !dbg !3024
  br label %74, !dbg !3025

74:                                               ; preds = %57, %1
  ret void, !dbg !3026
}

; Function Attrs: noinline nounwind uwtable
define internal void @Fax3Cleanup(ptr noundef %0) #0 !dbg !3027 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !3028, !DIExpression(), !3029)
  %5 = load ptr, ptr %2, align 8, !dbg !3030
  %6 = getelementptr inbounds nuw %struct.tiff, ptr %5, i32 0, i32 37, !dbg !3032
  %7 = load ptr, ptr %6, align 8, !dbg !3032
  %8 = icmp ne ptr %7, null, !dbg !3030
  br i1 %8, label %9, label %59, !dbg !3030

9:                                                ; preds = %1
  %10 = load ptr, ptr %2, align 8, !dbg !3033
  %11 = getelementptr inbounds nuw %struct.tiff, ptr %10, i32 0, i32 2, !dbg !3036
  %12 = load i32, ptr %11, align 4, !dbg !3036
  %13 = icmp eq i32 %12, 0, !dbg !3037
  br i1 %13, label %14, label %27, !dbg !3037

14:                                               ; preds = %9
    #dbg_declare(ptr %3, !3038, !DIExpression(), !3040)
  %15 = load ptr, ptr %2, align 8, !dbg !3041
  %16 = getelementptr inbounds nuw %struct.tiff, ptr %15, i32 0, i32 37, !dbg !3041
  %17 = load ptr, ptr %16, align 8, !dbg !3041
  store ptr %17, ptr %3, align 8, !dbg !3040
  %18 = load ptr, ptr %3, align 8, !dbg !3042
  %19 = getelementptr inbounds nuw %struct.Fax3DecodeState, ptr %18, i32 0, i32 6, !dbg !3044
  %20 = load ptr, ptr %19, align 8, !dbg !3044
  %21 = icmp ne ptr %20, null, !dbg !3042
  br i1 %21, label %22, label %26, !dbg !3042

22:                                               ; preds = %14
  %23 = load ptr, ptr %3, align 8, !dbg !3045
  %24 = getelementptr inbounds nuw %struct.Fax3DecodeState, ptr %23, i32 0, i32 6, !dbg !3046
  %25 = load ptr, ptr %24, align 8, !dbg !3046
  call void @_TIFFfree(ptr noundef %25), !dbg !3047
  br label %26, !dbg !3047

26:                                               ; preds = %22, %14
  br label %40, !dbg !3048

27:                                               ; preds = %9
    #dbg_declare(ptr %4, !3049, !DIExpression(), !3051)
  %28 = load ptr, ptr %2, align 8, !dbg !3052
  %29 = getelementptr inbounds nuw %struct.tiff, ptr %28, i32 0, i32 37, !dbg !3052
  %30 = load ptr, ptr %29, align 8, !dbg !3052
  store ptr %30, ptr %4, align 8, !dbg !3051
  %31 = load ptr, ptr %4, align 8, !dbg !3053
  %32 = getelementptr inbounds nuw %struct.Fax3EncodeState, ptr %31, i32 0, i32 4, !dbg !3055
  %33 = load ptr, ptr %32, align 8, !dbg !3055
  %34 = icmp ne ptr %33, null, !dbg !3053
  br i1 %34, label %35, label %39, !dbg !3053

35:                                               ; preds = %27
  %36 = load ptr, ptr %4, align 8, !dbg !3056
  %37 = getelementptr inbounds nuw %struct.Fax3EncodeState, ptr %36, i32 0, i32 4, !dbg !3057
  %38 = load ptr, ptr %37, align 8, !dbg !3057
  call void @_TIFFfree(ptr noundef %38), !dbg !3058
  br label %39, !dbg !3058

39:                                               ; preds = %35, %27
  br label %40

40:                                               ; preds = %39, %26
  %41 = load ptr, ptr %2, align 8, !dbg !3059
  %42 = getelementptr inbounds nuw %struct.tiff, ptr %41, i32 0, i32 37, !dbg !3059
  %43 = load ptr, ptr %42, align 8, !dbg !3059
  %44 = getelementptr inbounds nuw %struct.Fax3BaseState, ptr %43, i32 0, i32 8, !dbg !3061
  %45 = load ptr, ptr %44, align 8, !dbg !3061
  %46 = icmp ne ptr %45, null, !dbg !3059
  br i1 %46, label %47, label %53, !dbg !3059

47:                                               ; preds = %40
  %48 = load ptr, ptr %2, align 8, !dbg !3062
  %49 = getelementptr inbounds nuw %struct.tiff, ptr %48, i32 0, i32 37, !dbg !3062
  %50 = load ptr, ptr %49, align 8, !dbg !3062
  %51 = getelementptr inbounds nuw %struct.Fax3BaseState, ptr %50, i32 0, i32 8, !dbg !3063
  %52 = load ptr, ptr %51, align 8, !dbg !3063
  call void @_TIFFfree(ptr noundef %52), !dbg !3064
  br label %53, !dbg !3064

53:                                               ; preds = %47, %40
  %54 = load ptr, ptr %2, align 8, !dbg !3065
  %55 = getelementptr inbounds nuw %struct.tiff, ptr %54, i32 0, i32 37, !dbg !3066
  %56 = load ptr, ptr %55, align 8, !dbg !3066
  call void @_TIFFfree(ptr noundef %56), !dbg !3067
  %57 = load ptr, ptr %2, align 8, !dbg !3068
  %58 = getelementptr inbounds nuw %struct.tiff, ptr %57, i32 0, i32 37, !dbg !3069
  store ptr null, ptr %58, align 8, !dbg !3070
  br label %59, !dbg !3071

59:                                               ; preds = %53, %1
  ret void, !dbg !3072
}

declare void @_TIFFsetString(ptr noundef, ptr noundef) #2

declare ptr @_TIFFFieldWithTag(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #3

declare i32 @TIFFTileRowSize(ptr noundef) #2

declare i32 @TIFFScanlineSize(ptr noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @Fax3Decode2D(ptr noundef %0, ptr noundef %1, i32 noundef %2, i16 noundef zeroext %3) #0 !dbg !586 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i16, align 2
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  %19 = alloca ptr, align 8
  %20 = alloca i32, align 4
  %21 = alloca ptr, align 8
  %22 = alloca ptr, align 8
  %23 = alloca i32, align 4
  %24 = alloca ptr, align 8
  %25 = alloca i32, align 4
  %26 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8
    #dbg_declare(ptr %6, !3073, !DIExpression(), !3074)
  store ptr %1, ptr %7, align 8
    #dbg_declare(ptr %7, !3075, !DIExpression(), !3076)
  store i32 %2, ptr %8, align 4
    #dbg_declare(ptr %8, !3077, !DIExpression(), !3078)
  store i16 %3, ptr %9, align 2
    #dbg_declare(ptr %9, !3079, !DIExpression(), !3080)
    #dbg_declare(ptr %10, !3081, !DIExpression(), !3082)
  %27 = load ptr, ptr %6, align 8, !dbg !3082
  %28 = getelementptr inbounds nuw %struct.tiff, ptr %27, i32 0, i32 37, !dbg !3082
  %29 = load ptr, ptr %28, align 8, !dbg !3082
  store ptr %29, ptr %10, align 8, !dbg !3082
    #dbg_declare(ptr %11, !3083, !DIExpression(), !3082)
    #dbg_declare(ptr %12, !3084, !DIExpression(), !3082)
  %30 = load ptr, ptr %10, align 8, !dbg !3082
  %31 = getelementptr inbounds nuw %struct.Fax3DecodeState, ptr %30, i32 0, i32 0, !dbg !3082
  %32 = getelementptr inbounds nuw %struct.Fax3BaseState, ptr %31, i32 0, i32 2, !dbg !3082
  %33 = load i32, ptr %32, align 8, !dbg !3082
  store i32 %33, ptr %12, align 4, !dbg !3082
    #dbg_declare(ptr %13, !3085, !DIExpression(), !3082)
    #dbg_declare(ptr %14, !3086, !DIExpression(), !3082)
    #dbg_declare(ptr %15, !3087, !DIExpression(), !3082)
    #dbg_declare(ptr %16, !3088, !DIExpression(), !3082)
    #dbg_declare(ptr %17, !3089, !DIExpression(), !3082)
    #dbg_declare(ptr %18, !3090, !DIExpression(), !3082)
    #dbg_declare(ptr %19, !3091, !DIExpression(), !3082)
    #dbg_declare(ptr %20, !3092, !DIExpression(), !3082)
    #dbg_declare(ptr %21, !3093, !DIExpression(), !3082)
  %34 = load ptr, ptr %10, align 8, !dbg !3082
  %35 = getelementptr inbounds nuw %struct.Fax3DecodeState, ptr %34, i32 0, i32 1, !dbg !3082
  %36 = load ptr, ptr %35, align 8, !dbg !3082
  store ptr %36, ptr %21, align 8, !dbg !3082
    #dbg_declare(ptr %22, !3094, !DIExpression(), !3082)
    #dbg_declare(ptr %23, !3095, !DIExpression(), !3082)
    #dbg_declare(ptr %24, !3096, !DIExpression(), !3082)
    #dbg_declare(ptr %25, !3097, !DIExpression(), !3098)
  %37 = load i16, ptr %9, align 2, !dbg !3099
  br label %38, !dbg !3100

38:                                               ; preds = %4
  %39 = load ptr, ptr %10, align 8, !dbg !3101
  %40 = getelementptr inbounds nuw %struct.Fax3DecodeState, ptr %39, i32 0, i32 2, !dbg !3101
  %41 = load i32, ptr %40, align 8, !dbg !3101
  store i32 %41, ptr %13, align 4, !dbg !3101
  %42 = load ptr, ptr %10, align 8, !dbg !3101
  %43 = getelementptr inbounds nuw %struct.Fax3DecodeState, ptr %42, i32 0, i32 3, !dbg !3101
  %44 = load i32, ptr %43, align 4, !dbg !3101
  store i32 %44, ptr %14, align 4, !dbg !3101
  %45 = load ptr, ptr %10, align 8, !dbg !3101
  %46 = getelementptr inbounds nuw %struct.Fax3DecodeState, ptr %45, i32 0, i32 4, !dbg !3101
  %47 = load i32, ptr %46, align 8, !dbg !3101
  store i32 %47, ptr %20, align 4, !dbg !3101
  %48 = load ptr, ptr %6, align 8, !dbg !3101
  %49 = getelementptr inbounds nuw %struct.tiff, ptr %48, i32 0, i32 42, !dbg !3101
  %50 = load ptr, ptr %49, align 8, !dbg !3101
  store ptr %50, ptr %16, align 8, !dbg !3101
  %51 = load ptr, ptr %16, align 8, !dbg !3101
  %52 = load ptr, ptr %6, align 8, !dbg !3101
  %53 = getelementptr inbounds nuw %struct.tiff, ptr %52, i32 0, i32 43, !dbg !3101
  %54 = load i32, ptr %53, align 8, !dbg !3101
  %55 = sext i32 %54 to i64, !dbg !3101
  %56 = getelementptr inbounds i8, ptr %51, i64 %55, !dbg !3101
  store ptr %56, ptr %17, align 8, !dbg !3101
  br label %57, !dbg !3101

57:                                               ; preds = %38
  br label %58, !dbg !3103

58:                                               ; preds = %1818, %57
  %59 = load i32, ptr %8, align 4, !dbg !3104
  %60 = sext i32 %59 to i64, !dbg !3105
  %61 = icmp sgt i64 %60, 0, !dbg !3106
  br i1 %61, label %62, label %1959, !dbg !3103

62:                                               ; preds = %58
  store i32 0, ptr %11, align 4, !dbg !3107
  store i32 0, ptr %15, align 4, !dbg !3109
  %63 = load ptr, ptr %10, align 8, !dbg !3110
  %64 = getelementptr inbounds nuw %struct.Fax3DecodeState, ptr %63, i32 0, i32 8, !dbg !3111
  %65 = load ptr, ptr %64, align 8, !dbg !3111
  store ptr %65, ptr %19, align 8, !dbg !3112
  store ptr %65, ptr %18, align 8, !dbg !3113
  br label %66, !dbg !3114

66:                                               ; preds = %62
  %67 = load i32, ptr %20, align 4, !dbg !3115
  %68 = icmp eq i32 %67, 0, !dbg !3115
  br i1 %68, label %69, label %136, !dbg !3115

69:                                               ; preds = %66
  br label %70, !dbg !3118

70:                                               ; preds = %134, %69
  br label %71, !dbg !3120

71:                                               ; preds = %70
  %72 = load i32, ptr %14, align 4, !dbg !3124
  %73 = icmp slt i32 %72, 11, !dbg !3124
  br i1 %73, label %74, label %122, !dbg !3124

74:                                               ; preds = %71
  %75 = load ptr, ptr %16, align 8, !dbg !3127
  %76 = load ptr, ptr %17, align 8, !dbg !3127
  %77 = icmp uge ptr %75, %76, !dbg !3127
  br i1 %77, label %78, label %83, !dbg !3127

78:                                               ; preds = %74
  %79 = load i32, ptr %14, align 4, !dbg !3130
  %80 = icmp eq i32 %79, 0, !dbg !3130
  br i1 %80, label %81, label %82, !dbg !3130

81:                                               ; preds = %78
  br label %1819, !dbg !3130

82:                                               ; preds = %78
  store i32 11, ptr %14, align 4, !dbg !3133
  br label %121, !dbg !3133

83:                                               ; preds = %74
  %84 = load ptr, ptr %21, align 8, !dbg !3134
  %85 = load ptr, ptr %16, align 8, !dbg !3134
  %86 = getelementptr inbounds nuw i8, ptr %85, i32 1, !dbg !3134
  store ptr %86, ptr %16, align 8, !dbg !3134
  %87 = load i8, ptr %85, align 1, !dbg !3134
  %88 = zext i8 %87 to i64, !dbg !3134
  %89 = getelementptr inbounds nuw i8, ptr %84, i64 %88, !dbg !3134
  %90 = load i8, ptr %89, align 1, !dbg !3134
  %91 = zext i8 %90 to i32, !dbg !3134
  %92 = load i32, ptr %14, align 4, !dbg !3134
  %93 = shl i32 %91, %92, !dbg !3134
  %94 = load i32, ptr %13, align 4, !dbg !3134
  %95 = or i32 %94, %93, !dbg !3134
  store i32 %95, ptr %13, align 4, !dbg !3134
  %96 = load i32, ptr %14, align 4, !dbg !3136
  %97 = add nsw i32 %96, 8, !dbg !3136
  store i32 %97, ptr %14, align 4, !dbg !3136
  %98 = icmp slt i32 %97, 11, !dbg !3136
  br i1 %98, label %99, label %120, !dbg !3136

99:                                               ; preds = %83
  %100 = load ptr, ptr %16, align 8, !dbg !3138
  %101 = load ptr, ptr %17, align 8, !dbg !3138
  %102 = icmp uge ptr %100, %101, !dbg !3138
  br i1 %102, label %103, label %104, !dbg !3138

103:                                              ; preds = %99
  store i32 11, ptr %14, align 4, !dbg !3141
  br label %119, !dbg !3141

104:                                              ; preds = %99
  %105 = load ptr, ptr %21, align 8, !dbg !3143
  %106 = load ptr, ptr %16, align 8, !dbg !3143
  %107 = getelementptr inbounds nuw i8, ptr %106, i32 1, !dbg !3143
  store ptr %107, ptr %16, align 8, !dbg !3143
  %108 = load i8, ptr %106, align 1, !dbg !3143
  %109 = zext i8 %108 to i64, !dbg !3143
  %110 = getelementptr inbounds nuw i8, ptr %105, i64 %109, !dbg !3143
  %111 = load i8, ptr %110, align 1, !dbg !3143
  %112 = zext i8 %111 to i32, !dbg !3143
  %113 = load i32, ptr %14, align 4, !dbg !3143
  %114 = shl i32 %112, %113, !dbg !3143
  %115 = load i32, ptr %13, align 4, !dbg !3143
  %116 = or i32 %115, %114, !dbg !3143
  store i32 %116, ptr %13, align 4, !dbg !3143
  %117 = load i32, ptr %14, align 4, !dbg !3143
  %118 = add nsw i32 %117, 8, !dbg !3143
  store i32 %118, ptr %14, align 4, !dbg !3143
  br label %119

119:                                              ; preds = %104, %103
  br label %120, !dbg !3145

120:                                              ; preds = %119, %83
  br label %121

121:                                              ; preds = %120, %82
  br label %122, !dbg !3146

122:                                              ; preds = %121, %71
  br label %123, !dbg !3147

123:                                              ; preds = %122
  %124 = load i32, ptr %13, align 4, !dbg !3148
  %125 = and i32 %124, 2047, !dbg !3148
  %126 = icmp eq i32 %125, 0, !dbg !3148
  br i1 %126, label %127, label %128, !dbg !3148

127:                                              ; preds = %123
  br label %135, !dbg !3148

128:                                              ; preds = %123
  br label %129, !dbg !3120

129:                                              ; preds = %128
  %130 = load i32, ptr %14, align 4, !dbg !3150
  %131 = sub nsw i32 %130, 1, !dbg !3150
  store i32 %131, ptr %14, align 4, !dbg !3150
  %132 = load i32, ptr %13, align 4, !dbg !3150
  %133 = lshr i32 %132, 1, !dbg !3150
  store i32 %133, ptr %13, align 4, !dbg !3150
  br label %134, !dbg !3150

134:                                              ; preds = %129
  br label %70, !dbg !3152, !llvm.loop !3153

135:                                              ; preds = %127
  br label %136, !dbg !3118

136:                                              ; preds = %135, %66
  br label %137, !dbg !3155

137:                                              ; preds = %178, %136
  br label %138, !dbg !3156

138:                                              ; preds = %137
  %139 = load i32, ptr %14, align 4, !dbg !3160
  %140 = icmp slt i32 %139, 8, !dbg !3160
  br i1 %140, label %141, label %166, !dbg !3160

141:                                              ; preds = %138
  %142 = load ptr, ptr %16, align 8, !dbg !3163
  %143 = load ptr, ptr %17, align 8, !dbg !3163
  %144 = icmp uge ptr %142, %143, !dbg !3163
  br i1 %144, label %145, label %150, !dbg !3163

145:                                              ; preds = %141
  %146 = load i32, ptr %14, align 4, !dbg !3166
  %147 = icmp eq i32 %146, 0, !dbg !3166
  br i1 %147, label %148, label %149, !dbg !3166

148:                                              ; preds = %145
  br label %1819, !dbg !3166

149:                                              ; preds = %145
  store i32 8, ptr %14, align 4, !dbg !3169
  br label %165, !dbg !3169

150:                                              ; preds = %141
  %151 = load ptr, ptr %21, align 8, !dbg !3170
  %152 = load ptr, ptr %16, align 8, !dbg !3170
  %153 = getelementptr inbounds nuw i8, ptr %152, i32 1, !dbg !3170
  store ptr %153, ptr %16, align 8, !dbg !3170
  %154 = load i8, ptr %152, align 1, !dbg !3170
  %155 = zext i8 %154 to i64, !dbg !3170
  %156 = getelementptr inbounds nuw i8, ptr %151, i64 %155, !dbg !3170
  %157 = load i8, ptr %156, align 1, !dbg !3170
  %158 = zext i8 %157 to i32, !dbg !3170
  %159 = load i32, ptr %14, align 4, !dbg !3170
  %160 = shl i32 %158, %159, !dbg !3170
  %161 = load i32, ptr %13, align 4, !dbg !3170
  %162 = or i32 %161, %160, !dbg !3170
  store i32 %162, ptr %13, align 4, !dbg !3170
  %163 = load i32, ptr %14, align 4, !dbg !3170
  %164 = add nsw i32 %163, 8, !dbg !3170
  store i32 %164, ptr %14, align 4, !dbg !3170
  br label %165

165:                                              ; preds = %150, %149
  br label %166, !dbg !3172

166:                                              ; preds = %165, %138
  br label %167, !dbg !3173

167:                                              ; preds = %166
  %168 = load i32, ptr %13, align 4, !dbg !3174
  %169 = and i32 %168, 255, !dbg !3174
  %170 = icmp ne i32 %169, 0, !dbg !3174
  br i1 %170, label %171, label %172, !dbg !3174

171:                                              ; preds = %167
  br label %179, !dbg !3174

172:                                              ; preds = %167
  br label %173, !dbg !3156

173:                                              ; preds = %172
  %174 = load i32, ptr %14, align 4, !dbg !3176
  %175 = sub nsw i32 %174, 8, !dbg !3176
  store i32 %175, ptr %14, align 4, !dbg !3176
  %176 = load i32, ptr %13, align 4, !dbg !3176
  %177 = lshr i32 %176, 8, !dbg !3176
  store i32 %177, ptr %13, align 4, !dbg !3176
  br label %178, !dbg !3176

178:                                              ; preds = %173
  br label %137, !dbg !3178, !llvm.loop !3179

179:                                              ; preds = %171
  br label %180, !dbg !3155

180:                                              ; preds = %190, %179
  %181 = load i32, ptr %13, align 4, !dbg !3155
  %182 = and i32 %181, 1, !dbg !3155
  %183 = icmp eq i32 %182, 0, !dbg !3155
  br i1 %183, label %184, label %191, !dbg !3155

184:                                              ; preds = %180
  br label %185, !dbg !3155

185:                                              ; preds = %184
  %186 = load i32, ptr %14, align 4, !dbg !3181
  %187 = sub nsw i32 %186, 1, !dbg !3181
  store i32 %187, ptr %14, align 4, !dbg !3181
  %188 = load i32, ptr %13, align 4, !dbg !3181
  %189 = lshr i32 %188, 1, !dbg !3181
  store i32 %189, ptr %13, align 4, !dbg !3181
  br label %190, !dbg !3181

190:                                              ; preds = %185
  br label %180, !dbg !3155, !llvm.loop !3183

191:                                              ; preds = %180
  br label %192, !dbg !3155

192:                                              ; preds = %191
  %193 = load i32, ptr %14, align 4, !dbg !3184
  %194 = sub nsw i32 %193, 1, !dbg !3184
  store i32 %194, ptr %14, align 4, !dbg !3184
  %195 = load i32, ptr %13, align 4, !dbg !3184
  %196 = lshr i32 %195, 1, !dbg !3184
  store i32 %196, ptr %13, align 4, !dbg !3184
  br label %197, !dbg !3184

197:                                              ; preds = %192
  store i32 0, ptr %20, align 4, !dbg !3155
  br label %198, !dbg !3155

198:                                              ; preds = %197
  br label %199, !dbg !3186

199:                                              ; preds = %198
  %200 = load i32, ptr %14, align 4, !dbg !3187
  %201 = icmp slt i32 %200, 1, !dbg !3187
  br i1 %201, label %202, label %227, !dbg !3187

202:                                              ; preds = %199
  %203 = load ptr, ptr %16, align 8, !dbg !3190
  %204 = load ptr, ptr %17, align 8, !dbg !3190
  %205 = icmp uge ptr %203, %204, !dbg !3190
  br i1 %205, label %206, label %211, !dbg !3190

206:                                              ; preds = %202
  %207 = load i32, ptr %14, align 4, !dbg !3193
  %208 = icmp eq i32 %207, 0, !dbg !3193
  br i1 %208, label %209, label %210, !dbg !3193

209:                                              ; preds = %206
  br label %1819, !dbg !3193

210:                                              ; preds = %206
  store i32 1, ptr %14, align 4, !dbg !3196
  br label %226, !dbg !3196

211:                                              ; preds = %202
  %212 = load ptr, ptr %21, align 8, !dbg !3197
  %213 = load ptr, ptr %16, align 8, !dbg !3197
  %214 = getelementptr inbounds nuw i8, ptr %213, i32 1, !dbg !3197
  store ptr %214, ptr %16, align 8, !dbg !3197
  %215 = load i8, ptr %213, align 1, !dbg !3197
  %216 = zext i8 %215 to i64, !dbg !3197
  %217 = getelementptr inbounds nuw i8, ptr %212, i64 %216, !dbg !3197
  %218 = load i8, ptr %217, align 1, !dbg !3197
  %219 = zext i8 %218 to i32, !dbg !3197
  %220 = load i32, ptr %14, align 4, !dbg !3197
  %221 = shl i32 %219, %220, !dbg !3197
  %222 = load i32, ptr %13, align 4, !dbg !3197
  %223 = or i32 %222, %221, !dbg !3197
  store i32 %223, ptr %13, align 4, !dbg !3197
  %224 = load i32, ptr %14, align 4, !dbg !3197
  %225 = add nsw i32 %224, 8, !dbg !3197
  store i32 %225, ptr %14, align 4, !dbg !3197
  br label %226

226:                                              ; preds = %211, %210
  br label %227, !dbg !3199

227:                                              ; preds = %226, %199
  br label %228, !dbg !3200

228:                                              ; preds = %227
  %229 = load i32, ptr %13, align 4, !dbg !3201
  %230 = and i32 %229, 1, !dbg !3201
  store i32 %230, ptr %25, align 4, !dbg !3202
  br label %231, !dbg !3203

231:                                              ; preds = %228
  %232 = load i32, ptr %14, align 4, !dbg !3204
  %233 = sub nsw i32 %232, 1, !dbg !3204
  store i32 %233, ptr %14, align 4, !dbg !3204
  %234 = load i32, ptr %13, align 4, !dbg !3204
  %235 = lshr i32 %234, 1, !dbg !3204
  store i32 %235, ptr %13, align 4, !dbg !3204
  br label %236, !dbg !3204

236:                                              ; preds = %231
  %237 = load ptr, ptr %10, align 8, !dbg !3206
  %238 = getelementptr inbounds nuw %struct.Fax3DecodeState, ptr %237, i32 0, i32 7, !dbg !3207
  %239 = load ptr, ptr %238, align 8, !dbg !3207
  store ptr %239, ptr %24, align 8, !dbg !3208
  %240 = load ptr, ptr %24, align 8, !dbg !3209
  %241 = getelementptr inbounds nuw i32, ptr %240, i32 1, !dbg !3209
  store ptr %241, ptr %24, align 8, !dbg !3209
  %242 = load i32, ptr %240, align 4, !dbg !3210
  store i32 %242, ptr %23, align 4, !dbg !3211
  %243 = load i32, ptr %25, align 4, !dbg !3212
  %244 = icmp ne i32 %243, 0, !dbg !3212
  br i1 %244, label %245, label %691, !dbg !3212

245:                                              ; preds = %236
  br label %246, !dbg !3214

246:                                              ; preds = %245
  br label %247, !dbg !3215

247:                                              ; preds = %477, %246
  br label %248, !dbg !3217

248:                                              ; preds = %356, %247
  br label %249, !dbg !3221

249:                                              ; preds = %248
  br label %250, !dbg !3225

250:                                              ; preds = %249
  %251 = load i32, ptr %14, align 4, !dbg !3227
  %252 = icmp slt i32 %251, 12, !dbg !3227
  br i1 %252, label %253, label %301, !dbg !3227

253:                                              ; preds = %250
  %254 = load ptr, ptr %16, align 8, !dbg !3230
  %255 = load ptr, ptr %17, align 8, !dbg !3230
  %256 = icmp uge ptr %254, %255, !dbg !3230
  br i1 %256, label %257, label %262, !dbg !3230

257:                                              ; preds = %253
  %258 = load i32, ptr %14, align 4, !dbg !3233
  %259 = icmp eq i32 %258, 0, !dbg !3233
  br i1 %259, label %260, label %261, !dbg !3233

260:                                              ; preds = %257
  br label %478, !dbg !3233

261:                                              ; preds = %257
  store i32 12, ptr %14, align 4, !dbg !3236
  br label %300, !dbg !3236

262:                                              ; preds = %253
  %263 = load ptr, ptr %21, align 8, !dbg !3237
  %264 = load ptr, ptr %16, align 8, !dbg !3237
  %265 = getelementptr inbounds nuw i8, ptr %264, i32 1, !dbg !3237
  store ptr %265, ptr %16, align 8, !dbg !3237
  %266 = load i8, ptr %264, align 1, !dbg !3237
  %267 = zext i8 %266 to i64, !dbg !3237
  %268 = getelementptr inbounds nuw i8, ptr %263, i64 %267, !dbg !3237
  %269 = load i8, ptr %268, align 1, !dbg !3237
  %270 = zext i8 %269 to i32, !dbg !3237
  %271 = load i32, ptr %14, align 4, !dbg !3237
  %272 = shl i32 %270, %271, !dbg !3237
  %273 = load i32, ptr %13, align 4, !dbg !3237
  %274 = or i32 %273, %272, !dbg !3237
  store i32 %274, ptr %13, align 4, !dbg !3237
  %275 = load i32, ptr %14, align 4, !dbg !3239
  %276 = add nsw i32 %275, 8, !dbg !3239
  store i32 %276, ptr %14, align 4, !dbg !3239
  %277 = icmp slt i32 %276, 12, !dbg !3239
  br i1 %277, label %278, label %299, !dbg !3239

278:                                              ; preds = %262
  %279 = load ptr, ptr %16, align 8, !dbg !3241
  %280 = load ptr, ptr %17, align 8, !dbg !3241
  %281 = icmp uge ptr %279, %280, !dbg !3241
  br i1 %281, label %282, label %283, !dbg !3241

282:                                              ; preds = %278
  store i32 12, ptr %14, align 4, !dbg !3244
  br label %298, !dbg !3244

283:                                              ; preds = %278
  %284 = load ptr, ptr %21, align 8, !dbg !3246
  %285 = load ptr, ptr %16, align 8, !dbg !3246
  %286 = getelementptr inbounds nuw i8, ptr %285, i32 1, !dbg !3246
  store ptr %286, ptr %16, align 8, !dbg !3246
  %287 = load i8, ptr %285, align 1, !dbg !3246
  %288 = zext i8 %287 to i64, !dbg !3246
  %289 = getelementptr inbounds nuw i8, ptr %284, i64 %288, !dbg !3246
  %290 = load i8, ptr %289, align 1, !dbg !3246
  %291 = zext i8 %290 to i32, !dbg !3246
  %292 = load i32, ptr %14, align 4, !dbg !3246
  %293 = shl i32 %291, %292, !dbg !3246
  %294 = load i32, ptr %13, align 4, !dbg !3246
  %295 = or i32 %294, %293, !dbg !3246
  store i32 %295, ptr %13, align 4, !dbg !3246
  %296 = load i32, ptr %14, align 4, !dbg !3246
  %297 = add nsw i32 %296, 8, !dbg !3246
  store i32 %297, ptr %14, align 4, !dbg !3246
  br label %298

298:                                              ; preds = %283, %282
  br label %299, !dbg !3248

299:                                              ; preds = %298, %262
  br label %300

300:                                              ; preds = %299, %261
  br label %301, !dbg !3249

301:                                              ; preds = %300, %250
  br label %302, !dbg !3250

302:                                              ; preds = %301
  %303 = load i32, ptr %13, align 4, !dbg !3225
  %304 = and i32 %303, 4095, !dbg !3225
  %305 = zext i32 %304 to i64, !dbg !3225
  %306 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr @TIFFFaxWhiteTable, i64 %305, !dbg !3225
  store ptr %306, ptr %22, align 8, !dbg !3225
  br label %307, !dbg !3225

307:                                              ; preds = %302
  %308 = load ptr, ptr %22, align 8, !dbg !3251
  %309 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr %308, i32 0, i32 1, !dbg !3251
  %310 = load i8, ptr %309, align 1, !dbg !3251
  %311 = zext i8 %310 to i32, !dbg !3251
  %312 = load i32, ptr %14, align 4, !dbg !3251
  %313 = sub nsw i32 %312, %311, !dbg !3251
  store i32 %313, ptr %14, align 4, !dbg !3251
  %314 = load ptr, ptr %22, align 8, !dbg !3251
  %315 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr %314, i32 0, i32 1, !dbg !3251
  %316 = load i8, ptr %315, align 1, !dbg !3251
  %317 = zext i8 %316 to i32, !dbg !3251
  %318 = load i32, ptr %13, align 4, !dbg !3251
  %319 = lshr i32 %318, %317, !dbg !3251
  store i32 %319, ptr %13, align 4, !dbg !3251
  br label %320, !dbg !3251

320:                                              ; preds = %307
  br label %321, !dbg !3225

321:                                              ; preds = %320
  %322 = load ptr, ptr %22, align 8, !dbg !3221
  %323 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr %322, i32 0, i32 0, !dbg !3221
  %324 = load i8, ptr %323, align 4, !dbg !3221
  %325 = zext i8 %324 to i32, !dbg !3221
  switch i32 %325, label %353 [
    i32 12, label %326
    i32 7, label %327
    i32 9, label %342
    i32 11, label %342
  ], !dbg !3221

326:                                              ; preds = %321
  store i32 1, ptr %20, align 4, !dbg !3253
  br label %585, !dbg !3253

327:                                              ; preds = %321
  br label %328, !dbg !3253

328:                                              ; preds = %327
  %329 = load i32, ptr %15, align 4, !dbg !3255
  %330 = load ptr, ptr %22, align 8, !dbg !3255
  %331 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr %330, i32 0, i32 2, !dbg !3255
  %332 = load i32, ptr %331, align 4, !dbg !3255
  %333 = add i32 %329, %332, !dbg !3255
  %334 = load ptr, ptr %18, align 8, !dbg !3255
  %335 = getelementptr inbounds nuw i32, ptr %334, i32 1, !dbg !3255
  store ptr %335, ptr %18, align 8, !dbg !3255
  store i32 %333, ptr %334, align 4, !dbg !3255
  %336 = load ptr, ptr %22, align 8, !dbg !3255
  %337 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr %336, i32 0, i32 2, !dbg !3255
  %338 = load i32, ptr %337, align 4, !dbg !3255
  %339 = load i32, ptr %11, align 4, !dbg !3255
  %340 = add i32 %339, %338, !dbg !3255
  store i32 %340, ptr %11, align 4, !dbg !3255
  store i32 0, ptr %15, align 4, !dbg !3255
  br label %341, !dbg !3255

341:                                              ; preds = %328
  br label %357, !dbg !3253

342:                                              ; preds = %321, %321
  %343 = load ptr, ptr %22, align 8, !dbg !3253
  %344 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr %343, i32 0, i32 2, !dbg !3253
  %345 = load i32, ptr %344, align 4, !dbg !3253
  %346 = load i32, ptr %11, align 4, !dbg !3253
  %347 = add i32 %346, %345, !dbg !3253
  store i32 %347, ptr %11, align 4, !dbg !3253
  %348 = load ptr, ptr %22, align 8, !dbg !3253
  %349 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr %348, i32 0, i32 2, !dbg !3253
  %350 = load i32, ptr %349, align 4, !dbg !3253
  %351 = load i32, ptr %15, align 4, !dbg !3253
  %352 = add i32 %351, %350, !dbg !3253
  store i32 %352, ptr %15, align 4, !dbg !3253
  br label %356, !dbg !3253

353:                                              ; preds = %321
  %354 = load ptr, ptr %6, align 8, !dbg !3253
  %355 = load i32, ptr %11, align 4, !dbg !3253
  call void @Fax3Unexpected(ptr noundef @Fax3Decode2D.module, ptr noundef %354, i32 noundef %355), !dbg !3253
  br label %585, !dbg !3253

356:                                              ; preds = %342
  br label %248, !dbg !3257, !llvm.loop !3258

357:                                              ; preds = %341
    #dbg_label(!3260, !3217)
  %358 = load i32, ptr %11, align 4, !dbg !3261
  %359 = load i32, ptr %12, align 4, !dbg !3261
  %360 = icmp sge i32 %358, %359, !dbg !3261
  br i1 %360, label %361, label %362, !dbg !3261

361:                                              ; preds = %357
  br label %585, !dbg !3261

362:                                              ; preds = %357
  br label %363, !dbg !3217

363:                                              ; preds = %471, %362
  br label %364, !dbg !3263

364:                                              ; preds = %363
  br label %365, !dbg !3267

365:                                              ; preds = %364
  %366 = load i32, ptr %14, align 4, !dbg !3269
  %367 = icmp slt i32 %366, 13, !dbg !3269
  br i1 %367, label %368, label %416, !dbg !3269

368:                                              ; preds = %365
  %369 = load ptr, ptr %16, align 8, !dbg !3272
  %370 = load ptr, ptr %17, align 8, !dbg !3272
  %371 = icmp uge ptr %369, %370, !dbg !3272
  br i1 %371, label %372, label %377, !dbg !3272

372:                                              ; preds = %368
  %373 = load i32, ptr %14, align 4, !dbg !3275
  %374 = icmp eq i32 %373, 0, !dbg !3275
  br i1 %374, label %375, label %376, !dbg !3275

375:                                              ; preds = %372
  br label %478, !dbg !3275

376:                                              ; preds = %372
  store i32 13, ptr %14, align 4, !dbg !3278
  br label %415, !dbg !3278

377:                                              ; preds = %368
  %378 = load ptr, ptr %21, align 8, !dbg !3279
  %379 = load ptr, ptr %16, align 8, !dbg !3279
  %380 = getelementptr inbounds nuw i8, ptr %379, i32 1, !dbg !3279
  store ptr %380, ptr %16, align 8, !dbg !3279
  %381 = load i8, ptr %379, align 1, !dbg !3279
  %382 = zext i8 %381 to i64, !dbg !3279
  %383 = getelementptr inbounds nuw i8, ptr %378, i64 %382, !dbg !3279
  %384 = load i8, ptr %383, align 1, !dbg !3279
  %385 = zext i8 %384 to i32, !dbg !3279
  %386 = load i32, ptr %14, align 4, !dbg !3279
  %387 = shl i32 %385, %386, !dbg !3279
  %388 = load i32, ptr %13, align 4, !dbg !3279
  %389 = or i32 %388, %387, !dbg !3279
  store i32 %389, ptr %13, align 4, !dbg !3279
  %390 = load i32, ptr %14, align 4, !dbg !3281
  %391 = add nsw i32 %390, 8, !dbg !3281
  store i32 %391, ptr %14, align 4, !dbg !3281
  %392 = icmp slt i32 %391, 13, !dbg !3281
  br i1 %392, label %393, label %414, !dbg !3281

393:                                              ; preds = %377
  %394 = load ptr, ptr %16, align 8, !dbg !3283
  %395 = load ptr, ptr %17, align 8, !dbg !3283
  %396 = icmp uge ptr %394, %395, !dbg !3283
  br i1 %396, label %397, label %398, !dbg !3283

397:                                              ; preds = %393
  store i32 13, ptr %14, align 4, !dbg !3286
  br label %413, !dbg !3286

398:                                              ; preds = %393
  %399 = load ptr, ptr %21, align 8, !dbg !3288
  %400 = load ptr, ptr %16, align 8, !dbg !3288
  %401 = getelementptr inbounds nuw i8, ptr %400, i32 1, !dbg !3288
  store ptr %401, ptr %16, align 8, !dbg !3288
  %402 = load i8, ptr %400, align 1, !dbg !3288
  %403 = zext i8 %402 to i64, !dbg !3288
  %404 = getelementptr inbounds nuw i8, ptr %399, i64 %403, !dbg !3288
  %405 = load i8, ptr %404, align 1, !dbg !3288
  %406 = zext i8 %405 to i32, !dbg !3288
  %407 = load i32, ptr %14, align 4, !dbg !3288
  %408 = shl i32 %406, %407, !dbg !3288
  %409 = load i32, ptr %13, align 4, !dbg !3288
  %410 = or i32 %409, %408, !dbg !3288
  store i32 %410, ptr %13, align 4, !dbg !3288
  %411 = load i32, ptr %14, align 4, !dbg !3288
  %412 = add nsw i32 %411, 8, !dbg !3288
  store i32 %412, ptr %14, align 4, !dbg !3288
  br label %413

413:                                              ; preds = %398, %397
  br label %414, !dbg !3290

414:                                              ; preds = %413, %377
  br label %415

415:                                              ; preds = %414, %376
  br label %416, !dbg !3291

416:                                              ; preds = %415, %365
  br label %417, !dbg !3292

417:                                              ; preds = %416
  %418 = load i32, ptr %13, align 4, !dbg !3267
  %419 = and i32 %418, 8191, !dbg !3267
  %420 = zext i32 %419 to i64, !dbg !3267
  %421 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr @TIFFFaxBlackTable, i64 %420, !dbg !3267
  store ptr %421, ptr %22, align 8, !dbg !3267
  br label %422, !dbg !3267

422:                                              ; preds = %417
  %423 = load ptr, ptr %22, align 8, !dbg !3293
  %424 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr %423, i32 0, i32 1, !dbg !3293
  %425 = load i8, ptr %424, align 1, !dbg !3293
  %426 = zext i8 %425 to i32, !dbg !3293
  %427 = load i32, ptr %14, align 4, !dbg !3293
  %428 = sub nsw i32 %427, %426, !dbg !3293
  store i32 %428, ptr %14, align 4, !dbg !3293
  %429 = load ptr, ptr %22, align 8, !dbg !3293
  %430 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr %429, i32 0, i32 1, !dbg !3293
  %431 = load i8, ptr %430, align 1, !dbg !3293
  %432 = zext i8 %431 to i32, !dbg !3293
  %433 = load i32, ptr %13, align 4, !dbg !3293
  %434 = lshr i32 %433, %432, !dbg !3293
  store i32 %434, ptr %13, align 4, !dbg !3293
  br label %435, !dbg !3293

435:                                              ; preds = %422
  br label %436, !dbg !3267

436:                                              ; preds = %435
  %437 = load ptr, ptr %22, align 8, !dbg !3263
  %438 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr %437, i32 0, i32 0, !dbg !3263
  %439 = load i8, ptr %438, align 4, !dbg !3263
  %440 = zext i8 %439 to i32, !dbg !3263
  switch i32 %440, label %468 [
    i32 12, label %441
    i32 8, label %442
    i32 10, label %457
    i32 11, label %457
  ], !dbg !3263

441:                                              ; preds = %436
  store i32 1, ptr %20, align 4, !dbg !3295
  br label %585, !dbg !3295

442:                                              ; preds = %436
  br label %443, !dbg !3295

443:                                              ; preds = %442
  %444 = load i32, ptr %15, align 4, !dbg !3297
  %445 = load ptr, ptr %22, align 8, !dbg !3297
  %446 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr %445, i32 0, i32 2, !dbg !3297
  %447 = load i32, ptr %446, align 4, !dbg !3297
  %448 = add i32 %444, %447, !dbg !3297
  %449 = load ptr, ptr %18, align 8, !dbg !3297
  %450 = getelementptr inbounds nuw i32, ptr %449, i32 1, !dbg !3297
  store ptr %450, ptr %18, align 8, !dbg !3297
  store i32 %448, ptr %449, align 4, !dbg !3297
  %451 = load ptr, ptr %22, align 8, !dbg !3297
  %452 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr %451, i32 0, i32 2, !dbg !3297
  %453 = load i32, ptr %452, align 4, !dbg !3297
  %454 = load i32, ptr %11, align 4, !dbg !3297
  %455 = add i32 %454, %453, !dbg !3297
  store i32 %455, ptr %11, align 4, !dbg !3297
  store i32 0, ptr %15, align 4, !dbg !3297
  br label %456, !dbg !3297

456:                                              ; preds = %443
  br label %472, !dbg !3295

457:                                              ; preds = %436, %436
  %458 = load ptr, ptr %22, align 8, !dbg !3295
  %459 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr %458, i32 0, i32 2, !dbg !3295
  %460 = load i32, ptr %459, align 4, !dbg !3295
  %461 = load i32, ptr %11, align 4, !dbg !3295
  %462 = add i32 %461, %460, !dbg !3295
  store i32 %462, ptr %11, align 4, !dbg !3295
  %463 = load ptr, ptr %22, align 8, !dbg !3295
  %464 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr %463, i32 0, i32 2, !dbg !3295
  %465 = load i32, ptr %464, align 4, !dbg !3295
  %466 = load i32, ptr %15, align 4, !dbg !3295
  %467 = add i32 %466, %465, !dbg !3295
  store i32 %467, ptr %15, align 4, !dbg !3295
  br label %471, !dbg !3295

468:                                              ; preds = %436
  %469 = load ptr, ptr %6, align 8, !dbg !3295
  %470 = load i32, ptr %11, align 4, !dbg !3295
  call void @Fax3Unexpected(ptr noundef @Fax3Decode2D.module, ptr noundef %469, i32 noundef %470), !dbg !3295
  br label %585, !dbg !3295

471:                                              ; preds = %457
  br label %363, !dbg !3299, !llvm.loop !3300

472:                                              ; preds = %456
    #dbg_label(!3302, !3217)
  %473 = load i32, ptr %11, align 4, !dbg !3303
  %474 = load i32, ptr %12, align 4, !dbg !3303
  %475 = icmp sge i32 %473, %474, !dbg !3303
  br i1 %475, label %476, label %477, !dbg !3303

476:                                              ; preds = %472
  br label %585, !dbg !3303

477:                                              ; preds = %472
  br label %247, !dbg !3305, !llvm.loop !3306

478:                                              ; preds = %375, %260
    #dbg_label(!3308, !3215)
  %479 = load ptr, ptr %6, align 8, !dbg !3215
  %480 = load i32, ptr %11, align 4, !dbg !3215
  call void @Fax3PrematureEOF(ptr noundef @Fax3Decode2D.module, ptr noundef %479, i32 noundef %480), !dbg !3215
  br label %481, !dbg !3215

481:                                              ; preds = %478
  %482 = load i32, ptr %15, align 4, !dbg !3309
  %483 = icmp ne i32 %482, 0, !dbg !3309
  br i1 %483, label %484, label %493, !dbg !3309

484:                                              ; preds = %481
  br label %485, !dbg !3309

485:                                              ; preds = %484
  %486 = load i32, ptr %15, align 4, !dbg !3312
  %487 = add nsw i32 %486, 0, !dbg !3312
  %488 = load ptr, ptr %18, align 8, !dbg !3312
  %489 = getelementptr inbounds nuw i32, ptr %488, i32 1, !dbg !3312
  store ptr %489, ptr %18, align 8, !dbg !3312
  store i32 %487, ptr %488, align 4, !dbg !3312
  %490 = load i32, ptr %11, align 4, !dbg !3312
  %491 = add nsw i32 %490, 0, !dbg !3312
  store i32 %491, ptr %11, align 4, !dbg !3312
  store i32 0, ptr %15, align 4, !dbg !3312
  br label %492, !dbg !3312

492:                                              ; preds = %485
  br label %493, !dbg !3312

493:                                              ; preds = %492, %481
  %494 = load i32, ptr %11, align 4, !dbg !3314
  %495 = load i32, ptr %12, align 4, !dbg !3314
  %496 = icmp ne i32 %494, %495, !dbg !3314
  br i1 %496, label %497, label %583, !dbg !3314

497:                                              ; preds = %493
  %498 = load ptr, ptr %6, align 8, !dbg !3316
  %499 = load i32, ptr %11, align 4, !dbg !3316
  %500 = load i32, ptr %12, align 4, !dbg !3316
  call void @Fax3BadLength(ptr noundef @Fax3Decode2D.module, ptr noundef %498, i32 noundef %499, i32 noundef %500), !dbg !3316
  br label %501, !dbg !3316

501:                                              ; preds = %511, %497
  %502 = load i32, ptr %11, align 4, !dbg !3316
  %503 = load i32, ptr %12, align 4, !dbg !3316
  %504 = icmp sgt i32 %502, %503, !dbg !3316
  br i1 %504, label %505, label %509, !dbg !3316

505:                                              ; preds = %501
  %506 = load ptr, ptr %18, align 8, !dbg !3316
  %507 = load ptr, ptr %19, align 8, !dbg !3316
  %508 = icmp ugt ptr %506, %507, !dbg !3316
  br label %509

509:                                              ; preds = %505, %501
  %510 = phi i1 [ false, %501 ], [ %508, %505 ], !dbg !3318
  br i1 %510, label %511, label %517, !dbg !3316

511:                                              ; preds = %509
  %512 = load ptr, ptr %18, align 8, !dbg !3316
  %513 = getelementptr inbounds i32, ptr %512, i32 -1, !dbg !3316
  store ptr %513, ptr %18, align 8, !dbg !3316
  %514 = load i32, ptr %513, align 4, !dbg !3316
  %515 = load i32, ptr %11, align 4, !dbg !3316
  %516 = sub i32 %515, %514, !dbg !3316
  store i32 %516, ptr %11, align 4, !dbg !3316
  br label %501, !dbg !3316, !llvm.loop !3319

517:                                              ; preds = %509
  %518 = load i32, ptr %11, align 4, !dbg !3320
  %519 = load i32, ptr %12, align 4, !dbg !3320
  %520 = icmp slt i32 %518, %519, !dbg !3320
  br i1 %520, label %521, label %558, !dbg !3320

521:                                              ; preds = %517
  %522 = load i32, ptr %11, align 4, !dbg !3322
  %523 = icmp slt i32 %522, 0, !dbg !3322
  br i1 %523, label %524, label %525, !dbg !3322

524:                                              ; preds = %521
  store i32 0, ptr %11, align 4, !dbg !3322
  br label %525, !dbg !3322

525:                                              ; preds = %524, %521
  %526 = load ptr, ptr %18, align 8, !dbg !3325
  %527 = load ptr, ptr %19, align 8, !dbg !3325
  %528 = ptrtoint ptr %526 to i64, !dbg !3325
  %529 = ptrtoint ptr %527 to i64, !dbg !3325
  %530 = sub i64 %528, %529, !dbg !3325
  %531 = sdiv exact i64 %530, 4, !dbg !3325
  %532 = and i64 %531, 1, !dbg !3325
  %533 = icmp ne i64 %532, 0, !dbg !3325
  br i1 %533, label %534, label %543, !dbg !3325

534:                                              ; preds = %525
  br label %535, !dbg !3325

535:                                              ; preds = %534
  %536 = load i32, ptr %15, align 4, !dbg !3327
  %537 = add nsw i32 %536, 0, !dbg !3327
  %538 = load ptr, ptr %18, align 8, !dbg !3327
  %539 = getelementptr inbounds nuw i32, ptr %538, i32 1, !dbg !3327
  store ptr %539, ptr %18, align 8, !dbg !3327
  store i32 %537, ptr %538, align 4, !dbg !3327
  %540 = load i32, ptr %11, align 4, !dbg !3327
  %541 = add nsw i32 %540, 0, !dbg !3327
  store i32 %541, ptr %11, align 4, !dbg !3327
  store i32 0, ptr %15, align 4, !dbg !3327
  br label %542, !dbg !3327

542:                                              ; preds = %535
  br label %543, !dbg !3327

543:                                              ; preds = %542, %525
  br label %544, !dbg !3329

544:                                              ; preds = %543
  %545 = load i32, ptr %15, align 4, !dbg !3330
  %546 = load i32, ptr %12, align 4, !dbg !3330
  %547 = load i32, ptr %11, align 4, !dbg !3330
  %548 = sub nsw i32 %546, %547, !dbg !3330
  %549 = add nsw i32 %545, %548, !dbg !3330
  %550 = load ptr, ptr %18, align 8, !dbg !3330
  %551 = getelementptr inbounds nuw i32, ptr %550, i32 1, !dbg !3330
  store ptr %551, ptr %18, align 8, !dbg !3330
  store i32 %549, ptr %550, align 4, !dbg !3330
  %552 = load i32, ptr %12, align 4, !dbg !3330
  %553 = load i32, ptr %11, align 4, !dbg !3330
  %554 = sub nsw i32 %552, %553, !dbg !3330
  %555 = load i32, ptr %11, align 4, !dbg !3330
  %556 = add nsw i32 %555, %554, !dbg !3330
  store i32 %556, ptr %11, align 4, !dbg !3330
  store i32 0, ptr %15, align 4, !dbg !3330
  br label %557, !dbg !3330

557:                                              ; preds = %544
  br label %582, !dbg !3329

558:                                              ; preds = %517
  %559 = load i32, ptr %11, align 4, !dbg !3332
  %560 = load i32, ptr %12, align 4, !dbg !3332
  %561 = icmp sgt i32 %559, %560, !dbg !3332
  br i1 %561, label %562, label %581, !dbg !3332

562:                                              ; preds = %558
  br label %563, !dbg !3334

563:                                              ; preds = %562
  %564 = load i32, ptr %15, align 4, !dbg !3336
  %565 = load i32, ptr %12, align 4, !dbg !3336
  %566 = add nsw i32 %564, %565, !dbg !3336
  %567 = load ptr, ptr %18, align 8, !dbg !3336
  %568 = getelementptr inbounds nuw i32, ptr %567, i32 1, !dbg !3336
  store ptr %568, ptr %18, align 8, !dbg !3336
  store i32 %566, ptr %567, align 4, !dbg !3336
  %569 = load i32, ptr %12, align 4, !dbg !3336
  %570 = load i32, ptr %11, align 4, !dbg !3336
  %571 = add nsw i32 %570, %569, !dbg !3336
  store i32 %571, ptr %11, align 4, !dbg !3336
  store i32 0, ptr %15, align 4, !dbg !3336
  br label %572, !dbg !3336

572:                                              ; preds = %563
  br label %573, !dbg !3334

573:                                              ; preds = %572
  %574 = load i32, ptr %15, align 4, !dbg !3338
  %575 = add nsw i32 %574, 0, !dbg !3338
  %576 = load ptr, ptr %18, align 8, !dbg !3338
  %577 = getelementptr inbounds nuw i32, ptr %576, i32 1, !dbg !3338
  store ptr %577, ptr %18, align 8, !dbg !3338
  store i32 %575, ptr %576, align 4, !dbg !3338
  %578 = load i32, ptr %11, align 4, !dbg !3338
  %579 = add nsw i32 %578, 0, !dbg !3338
  store i32 %579, ptr %11, align 4, !dbg !3338
  store i32 0, ptr %15, align 4, !dbg !3338
  br label %580, !dbg !3338

580:                                              ; preds = %573
  br label %581, !dbg !3334

581:                                              ; preds = %580, %558
  br label %582

582:                                              ; preds = %581, %557
  br label %583, !dbg !3316

583:                                              ; preds = %582, %493
  br label %584, !dbg !3340

584:                                              ; preds = %583
  br label %1924, !dbg !3215

585:                                              ; preds = %476, %468, %441, %361, %353, %326
    #dbg_label(!3341, !3215)
  br label %586, !dbg !3215

586:                                              ; preds = %585
  %587 = load i32, ptr %15, align 4, !dbg !3342
  %588 = icmp ne i32 %587, 0, !dbg !3342
  br i1 %588, label %589, label %598, !dbg !3342

589:                                              ; preds = %586
  br label %590, !dbg !3342

590:                                              ; preds = %589
  %591 = load i32, ptr %15, align 4, !dbg !3345
  %592 = add nsw i32 %591, 0, !dbg !3345
  %593 = load ptr, ptr %18, align 8, !dbg !3345
  %594 = getelementptr inbounds nuw i32, ptr %593, i32 1, !dbg !3345
  store ptr %594, ptr %18, align 8, !dbg !3345
  store i32 %592, ptr %593, align 4, !dbg !3345
  %595 = load i32, ptr %11, align 4, !dbg !3345
  %596 = add nsw i32 %595, 0, !dbg !3345
  store i32 %596, ptr %11, align 4, !dbg !3345
  store i32 0, ptr %15, align 4, !dbg !3345
  br label %597, !dbg !3345

597:                                              ; preds = %590
  br label %598, !dbg !3345

598:                                              ; preds = %597, %586
  %599 = load i32, ptr %11, align 4, !dbg !3347
  %600 = load i32, ptr %12, align 4, !dbg !3347
  %601 = icmp ne i32 %599, %600, !dbg !3347
  br i1 %601, label %602, label %688, !dbg !3347

602:                                              ; preds = %598
  %603 = load ptr, ptr %6, align 8, !dbg !3349
  %604 = load i32, ptr %11, align 4, !dbg !3349
  %605 = load i32, ptr %12, align 4, !dbg !3349
  call void @Fax3BadLength(ptr noundef @Fax3Decode2D.module, ptr noundef %603, i32 noundef %604, i32 noundef %605), !dbg !3349
  br label %606, !dbg !3349

606:                                              ; preds = %616, %602
  %607 = load i32, ptr %11, align 4, !dbg !3349
  %608 = load i32, ptr %12, align 4, !dbg !3349
  %609 = icmp sgt i32 %607, %608, !dbg !3349
  br i1 %609, label %610, label %614, !dbg !3349

610:                                              ; preds = %606
  %611 = load ptr, ptr %18, align 8, !dbg !3349
  %612 = load ptr, ptr %19, align 8, !dbg !3349
  %613 = icmp ugt ptr %611, %612, !dbg !3349
  br label %614

614:                                              ; preds = %610, %606
  %615 = phi i1 [ false, %606 ], [ %613, %610 ], !dbg !3351
  br i1 %615, label %616, label %622, !dbg !3349

616:                                              ; preds = %614
  %617 = load ptr, ptr %18, align 8, !dbg !3349
  %618 = getelementptr inbounds i32, ptr %617, i32 -1, !dbg !3349
  store ptr %618, ptr %18, align 8, !dbg !3349
  %619 = load i32, ptr %618, align 4, !dbg !3349
  %620 = load i32, ptr %11, align 4, !dbg !3349
  %621 = sub i32 %620, %619, !dbg !3349
  store i32 %621, ptr %11, align 4, !dbg !3349
  br label %606, !dbg !3349, !llvm.loop !3352

622:                                              ; preds = %614
  %623 = load i32, ptr %11, align 4, !dbg !3353
  %624 = load i32, ptr %12, align 4, !dbg !3353
  %625 = icmp slt i32 %623, %624, !dbg !3353
  br i1 %625, label %626, label %663, !dbg !3353

626:                                              ; preds = %622
  %627 = load i32, ptr %11, align 4, !dbg !3355
  %628 = icmp slt i32 %627, 0, !dbg !3355
  br i1 %628, label %629, label %630, !dbg !3355

629:                                              ; preds = %626
  store i32 0, ptr %11, align 4, !dbg !3355
  br label %630, !dbg !3355

630:                                              ; preds = %629, %626
  %631 = load ptr, ptr %18, align 8, !dbg !3358
  %632 = load ptr, ptr %19, align 8, !dbg !3358
  %633 = ptrtoint ptr %631 to i64, !dbg !3358
  %634 = ptrtoint ptr %632 to i64, !dbg !3358
  %635 = sub i64 %633, %634, !dbg !3358
  %636 = sdiv exact i64 %635, 4, !dbg !3358
  %637 = and i64 %636, 1, !dbg !3358
  %638 = icmp ne i64 %637, 0, !dbg !3358
  br i1 %638, label %639, label %648, !dbg !3358

639:                                              ; preds = %630
  br label %640, !dbg !3358

640:                                              ; preds = %639
  %641 = load i32, ptr %15, align 4, !dbg !3360
  %642 = add nsw i32 %641, 0, !dbg !3360
  %643 = load ptr, ptr %18, align 8, !dbg !3360
  %644 = getelementptr inbounds nuw i32, ptr %643, i32 1, !dbg !3360
  store ptr %644, ptr %18, align 8, !dbg !3360
  store i32 %642, ptr %643, align 4, !dbg !3360
  %645 = load i32, ptr %11, align 4, !dbg !3360
  %646 = add nsw i32 %645, 0, !dbg !3360
  store i32 %646, ptr %11, align 4, !dbg !3360
  store i32 0, ptr %15, align 4, !dbg !3360
  br label %647, !dbg !3360

647:                                              ; preds = %640
  br label %648, !dbg !3360

648:                                              ; preds = %647, %630
  br label %649, !dbg !3362

649:                                              ; preds = %648
  %650 = load i32, ptr %15, align 4, !dbg !3363
  %651 = load i32, ptr %12, align 4, !dbg !3363
  %652 = load i32, ptr %11, align 4, !dbg !3363
  %653 = sub nsw i32 %651, %652, !dbg !3363
  %654 = add nsw i32 %650, %653, !dbg !3363
  %655 = load ptr, ptr %18, align 8, !dbg !3363
  %656 = getelementptr inbounds nuw i32, ptr %655, i32 1, !dbg !3363
  store ptr %656, ptr %18, align 8, !dbg !3363
  store i32 %654, ptr %655, align 4, !dbg !3363
  %657 = load i32, ptr %12, align 4, !dbg !3363
  %658 = load i32, ptr %11, align 4, !dbg !3363
  %659 = sub nsw i32 %657, %658, !dbg !3363
  %660 = load i32, ptr %11, align 4, !dbg !3363
  %661 = add nsw i32 %660, %659, !dbg !3363
  store i32 %661, ptr %11, align 4, !dbg !3363
  store i32 0, ptr %15, align 4, !dbg !3363
  br label %662, !dbg !3363

662:                                              ; preds = %649
  br label %687, !dbg !3362

663:                                              ; preds = %622
  %664 = load i32, ptr %11, align 4, !dbg !3365
  %665 = load i32, ptr %12, align 4, !dbg !3365
  %666 = icmp sgt i32 %664, %665, !dbg !3365
  br i1 %666, label %667, label %686, !dbg !3365

667:                                              ; preds = %663
  br label %668, !dbg !3367

668:                                              ; preds = %667
  %669 = load i32, ptr %15, align 4, !dbg !3369
  %670 = load i32, ptr %12, align 4, !dbg !3369
  %671 = add nsw i32 %669, %670, !dbg !3369
  %672 = load ptr, ptr %18, align 8, !dbg !3369
  %673 = getelementptr inbounds nuw i32, ptr %672, i32 1, !dbg !3369
  store ptr %673, ptr %18, align 8, !dbg !3369
  store i32 %671, ptr %672, align 4, !dbg !3369
  %674 = load i32, ptr %12, align 4, !dbg !3369
  %675 = load i32, ptr %11, align 4, !dbg !3369
  %676 = add nsw i32 %675, %674, !dbg !3369
  store i32 %676, ptr %11, align 4, !dbg !3369
  store i32 0, ptr %15, align 4, !dbg !3369
  br label %677, !dbg !3369

677:                                              ; preds = %668
  br label %678, !dbg !3367

678:                                              ; preds = %677
  %679 = load i32, ptr %15, align 4, !dbg !3371
  %680 = add nsw i32 %679, 0, !dbg !3371
  %681 = load ptr, ptr %18, align 8, !dbg !3371
  %682 = getelementptr inbounds nuw i32, ptr %681, i32 1, !dbg !3371
  store ptr %682, ptr %18, align 8, !dbg !3371
  store i32 %680, ptr %681, align 4, !dbg !3371
  %683 = load i32, ptr %11, align 4, !dbg !3371
  %684 = add nsw i32 %683, 0, !dbg !3371
  store i32 %684, ptr %11, align 4, !dbg !3371
  store i32 0, ptr %15, align 4, !dbg !3371
  br label %685, !dbg !3371

685:                                              ; preds = %678
  br label %686, !dbg !3367

686:                                              ; preds = %685, %663
  br label %687

687:                                              ; preds = %686, %662
  br label %688, !dbg !3349

688:                                              ; preds = %687, %598
  br label %689, !dbg !3373

689:                                              ; preds = %688
  br label %690, !dbg !3215

690:                                              ; preds = %689
  br label %1771, !dbg !3215

691:                                              ; preds = %236
  br label %692, !dbg !3374

692:                                              ; preds = %691
  br label %693, !dbg !3375

693:                                              ; preds = %1603, %692
  %694 = load i32, ptr %11, align 4, !dbg !3375
  %695 = load i32, ptr %12, align 4, !dbg !3375
  %696 = icmp slt i32 %694, %695, !dbg !3375
  br i1 %696, label %697, label %1604, !dbg !3375

697:                                              ; preds = %693
  br label %698, !dbg !3377

698:                                              ; preds = %697
  br label %699, !dbg !3379

699:                                              ; preds = %698
  %700 = load i32, ptr %14, align 4, !dbg !3381
  %701 = icmp slt i32 %700, 7, !dbg !3381
  br i1 %701, label %702, label %727, !dbg !3381

702:                                              ; preds = %699
  %703 = load ptr, ptr %16, align 8, !dbg !3384
  %704 = load ptr, ptr %17, align 8, !dbg !3384
  %705 = icmp uge ptr %703, %704, !dbg !3384
  br i1 %705, label %706, label %711, !dbg !3384

706:                                              ; preds = %702
  %707 = load i32, ptr %14, align 4, !dbg !3387
  %708 = icmp eq i32 %707, 0, !dbg !3387
  br i1 %708, label %709, label %710, !dbg !3387

709:                                              ; preds = %706
  br label %1496, !dbg !3387

710:                                              ; preds = %706
  store i32 7, ptr %14, align 4, !dbg !3390
  br label %726, !dbg !3390

711:                                              ; preds = %702
  %712 = load ptr, ptr %21, align 8, !dbg !3391
  %713 = load ptr, ptr %16, align 8, !dbg !3391
  %714 = getelementptr inbounds nuw i8, ptr %713, i32 1, !dbg !3391
  store ptr %714, ptr %16, align 8, !dbg !3391
  %715 = load i8, ptr %713, align 1, !dbg !3391
  %716 = zext i8 %715 to i64, !dbg !3391
  %717 = getelementptr inbounds nuw i8, ptr %712, i64 %716, !dbg !3391
  %718 = load i8, ptr %717, align 1, !dbg !3391
  %719 = zext i8 %718 to i32, !dbg !3391
  %720 = load i32, ptr %14, align 4, !dbg !3391
  %721 = shl i32 %719, %720, !dbg !3391
  %722 = load i32, ptr %13, align 4, !dbg !3391
  %723 = or i32 %722, %721, !dbg !3391
  store i32 %723, ptr %13, align 4, !dbg !3391
  %724 = load i32, ptr %14, align 4, !dbg !3391
  %725 = add nsw i32 %724, 8, !dbg !3391
  store i32 %725, ptr %14, align 4, !dbg !3391
  br label %726

726:                                              ; preds = %711, %710
  br label %727, !dbg !3393

727:                                              ; preds = %726, %699
  br label %728, !dbg !3394

728:                                              ; preds = %727
  %729 = load i32, ptr %13, align 4, !dbg !3379
  %730 = and i32 %729, 127, !dbg !3379
  %731 = zext i32 %730 to i64, !dbg !3379
  %732 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr @TIFFFaxMainTable, i64 %731, !dbg !3379
  store ptr %732, ptr %22, align 8, !dbg !3379
  br label %733, !dbg !3379

733:                                              ; preds = %728
  %734 = load ptr, ptr %22, align 8, !dbg !3395
  %735 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr %734, i32 0, i32 1, !dbg !3395
  %736 = load i8, ptr %735, align 1, !dbg !3395
  %737 = zext i8 %736 to i32, !dbg !3395
  %738 = load i32, ptr %14, align 4, !dbg !3395
  %739 = sub nsw i32 %738, %737, !dbg !3395
  store i32 %739, ptr %14, align 4, !dbg !3395
  %740 = load ptr, ptr %22, align 8, !dbg !3395
  %741 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr %740, i32 0, i32 1, !dbg !3395
  %742 = load i8, ptr %741, align 1, !dbg !3395
  %743 = zext i8 %742 to i32, !dbg !3395
  %744 = load i32, ptr %13, align 4, !dbg !3395
  %745 = lshr i32 %744, %743, !dbg !3395
  store i32 %745, ptr %13, align 4, !dbg !3395
  br label %746, !dbg !3395

746:                                              ; preds = %733
  br label %747, !dbg !3379

747:                                              ; preds = %746
  %748 = load ptr, ptr %22, align 8, !dbg !3377
  %749 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr %748, i32 0, i32 0, !dbg !3377
  %750 = load i8, ptr %749, align 4, !dbg !3377
  %751 = zext i8 %750 to i32, !dbg !3377
  switch i32 %751, label %1486 [
    i32 1, label %752
    i32 2, label %799
    i32 3, label %1269
    i32 4, label %1319
    i32 5, label %1377
    i32 6, label %1435
    i32 12, label %1443
  ], !dbg !3377

752:                                              ; preds = %747
  br label %753, !dbg !3397

753:                                              ; preds = %752
  %754 = load ptr, ptr %18, align 8, !dbg !3399
  %755 = load ptr, ptr %19, align 8, !dbg !3399
  %756 = icmp ne ptr %754, %755, !dbg !3399
  br i1 %756, label %757, label %781, !dbg !3399

757:                                              ; preds = %753
  br label %758, !dbg !3399

758:                                              ; preds = %768, %757
  %759 = load i32, ptr %23, align 4, !dbg !3399
  %760 = load i32, ptr %11, align 4, !dbg !3399
  %761 = icmp sle i32 %759, %760, !dbg !3399
  br i1 %761, label %762, label %766, !dbg !3399

762:                                              ; preds = %758
  %763 = load i32, ptr %23, align 4, !dbg !3399
  %764 = load i32, ptr %12, align 4, !dbg !3399
  %765 = icmp slt i32 %763, %764, !dbg !3399
  br label %766

766:                                              ; preds = %762, %758
  %767 = phi i1 [ false, %758 ], [ %765, %762 ], !dbg !3402
  br i1 %767, label %768, label %780, !dbg !3399

768:                                              ; preds = %766
  %769 = load ptr, ptr %24, align 8, !dbg !3403
  %770 = getelementptr inbounds i32, ptr %769, i64 0, !dbg !3403
  %771 = load i32, ptr %770, align 4, !dbg !3403
  %772 = load ptr, ptr %24, align 8, !dbg !3403
  %773 = getelementptr inbounds i32, ptr %772, i64 1, !dbg !3403
  %774 = load i32, ptr %773, align 4, !dbg !3403
  %775 = add i32 %771, %774, !dbg !3403
  %776 = load i32, ptr %23, align 4, !dbg !3403
  %777 = add i32 %776, %775, !dbg !3403
  store i32 %777, ptr %23, align 4, !dbg !3403
  %778 = load ptr, ptr %24, align 8, !dbg !3403
  %779 = getelementptr inbounds i32, ptr %778, i64 2, !dbg !3403
  store ptr %779, ptr %24, align 8, !dbg !3403
  br label %758, !dbg !3399, !llvm.loop !3405

780:                                              ; preds = %766
  br label %781, !dbg !3399

781:                                              ; preds = %780, %753
  br label %782, !dbg !3406

782:                                              ; preds = %781
  %783 = load ptr, ptr %24, align 8, !dbg !3397
  %784 = getelementptr inbounds nuw i32, ptr %783, i32 1, !dbg !3397
  store ptr %784, ptr %24, align 8, !dbg !3397
  %785 = load i32, ptr %783, align 4, !dbg !3397
  %786 = load i32, ptr %23, align 4, !dbg !3397
  %787 = add i32 %786, %785, !dbg !3397
  store i32 %787, ptr %23, align 4, !dbg !3397
  %788 = load i32, ptr %23, align 4, !dbg !3397
  %789 = load i32, ptr %11, align 4, !dbg !3397
  %790 = sub nsw i32 %788, %789, !dbg !3397
  %791 = load i32, ptr %15, align 4, !dbg !3397
  %792 = add nsw i32 %791, %790, !dbg !3397
  store i32 %792, ptr %15, align 4, !dbg !3397
  %793 = load i32, ptr %23, align 4, !dbg !3397
  store i32 %793, ptr %11, align 4, !dbg !3397
  %794 = load ptr, ptr %24, align 8, !dbg !3397
  %795 = getelementptr inbounds nuw i32, ptr %794, i32 1, !dbg !3397
  store ptr %795, ptr %24, align 8, !dbg !3397
  %796 = load i32, ptr %794, align 4, !dbg !3397
  %797 = load i32, ptr %23, align 4, !dbg !3397
  %798 = add i32 %797, %796, !dbg !3397
  store i32 %798, ptr %23, align 4, !dbg !3397
  br label %1603, !dbg !3397

799:                                              ; preds = %747
  %800 = load ptr, ptr %18, align 8, !dbg !3407
  %801 = load ptr, ptr %19, align 8, !dbg !3407
  %802 = ptrtoint ptr %800 to i64, !dbg !3407
  %803 = ptrtoint ptr %801 to i64, !dbg !3407
  %804 = sub i64 %802, %803, !dbg !3407
  %805 = sdiv exact i64 %804, 4, !dbg !3407
  %806 = and i64 %805, 1, !dbg !3407
  %807 = icmp ne i64 %806, 0, !dbg !3407
  br i1 %807, label %808, label %1023, !dbg !3407

808:                                              ; preds = %799
  br label %809, !dbg !3409

809:                                              ; preds = %914, %808
  br label %810, !dbg !3411

810:                                              ; preds = %809
  br label %811, !dbg !3415

811:                                              ; preds = %810
  %812 = load i32, ptr %14, align 4, !dbg !3417
  %813 = icmp slt i32 %812, 13, !dbg !3417
  br i1 %813, label %814, label %862, !dbg !3417

814:                                              ; preds = %811
  %815 = load ptr, ptr %16, align 8, !dbg !3420
  %816 = load ptr, ptr %17, align 8, !dbg !3420
  %817 = icmp uge ptr %815, %816, !dbg !3420
  br i1 %817, label %818, label %823, !dbg !3420

818:                                              ; preds = %814
  %819 = load i32, ptr %14, align 4, !dbg !3423
  %820 = icmp eq i32 %819, 0, !dbg !3423
  br i1 %820, label %821, label %822, !dbg !3423

821:                                              ; preds = %818
  br label %1496, !dbg !3423

822:                                              ; preds = %818
  store i32 13, ptr %14, align 4, !dbg !3426
  br label %861, !dbg !3426

823:                                              ; preds = %814
  %824 = load ptr, ptr %21, align 8, !dbg !3427
  %825 = load ptr, ptr %16, align 8, !dbg !3427
  %826 = getelementptr inbounds nuw i8, ptr %825, i32 1, !dbg !3427
  store ptr %826, ptr %16, align 8, !dbg !3427
  %827 = load i8, ptr %825, align 1, !dbg !3427
  %828 = zext i8 %827 to i64, !dbg !3427
  %829 = getelementptr inbounds nuw i8, ptr %824, i64 %828, !dbg !3427
  %830 = load i8, ptr %829, align 1, !dbg !3427
  %831 = zext i8 %830 to i32, !dbg !3427
  %832 = load i32, ptr %14, align 4, !dbg !3427
  %833 = shl i32 %831, %832, !dbg !3427
  %834 = load i32, ptr %13, align 4, !dbg !3427
  %835 = or i32 %834, %833, !dbg !3427
  store i32 %835, ptr %13, align 4, !dbg !3427
  %836 = load i32, ptr %14, align 4, !dbg !3429
  %837 = add nsw i32 %836, 8, !dbg !3429
  store i32 %837, ptr %14, align 4, !dbg !3429
  %838 = icmp slt i32 %837, 13, !dbg !3429
  br i1 %838, label %839, label %860, !dbg !3429

839:                                              ; preds = %823
  %840 = load ptr, ptr %16, align 8, !dbg !3431
  %841 = load ptr, ptr %17, align 8, !dbg !3431
  %842 = icmp uge ptr %840, %841, !dbg !3431
  br i1 %842, label %843, label %844, !dbg !3431

843:                                              ; preds = %839
  store i32 13, ptr %14, align 4, !dbg !3434
  br label %859, !dbg !3434

844:                                              ; preds = %839
  %845 = load ptr, ptr %21, align 8, !dbg !3436
  %846 = load ptr, ptr %16, align 8, !dbg !3436
  %847 = getelementptr inbounds nuw i8, ptr %846, i32 1, !dbg !3436
  store ptr %847, ptr %16, align 8, !dbg !3436
  %848 = load i8, ptr %846, align 1, !dbg !3436
  %849 = zext i8 %848 to i64, !dbg !3436
  %850 = getelementptr inbounds nuw i8, ptr %845, i64 %849, !dbg !3436
  %851 = load i8, ptr %850, align 1, !dbg !3436
  %852 = zext i8 %851 to i32, !dbg !3436
  %853 = load i32, ptr %14, align 4, !dbg !3436
  %854 = shl i32 %852, %853, !dbg !3436
  %855 = load i32, ptr %13, align 4, !dbg !3436
  %856 = or i32 %855, %854, !dbg !3436
  store i32 %856, ptr %13, align 4, !dbg !3436
  %857 = load i32, ptr %14, align 4, !dbg !3436
  %858 = add nsw i32 %857, 8, !dbg !3436
  store i32 %858, ptr %14, align 4, !dbg !3436
  br label %859

859:                                              ; preds = %844, %843
  br label %860, !dbg !3438

860:                                              ; preds = %859, %823
  br label %861

861:                                              ; preds = %860, %822
  br label %862, !dbg !3439

862:                                              ; preds = %861, %811
  br label %863, !dbg !3440

863:                                              ; preds = %862
  %864 = load i32, ptr %13, align 4, !dbg !3415
  %865 = and i32 %864, 8191, !dbg !3415
  %866 = zext i32 %865 to i64, !dbg !3415
  %867 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr @TIFFFaxBlackTable, i64 %866, !dbg !3415
  store ptr %867, ptr %22, align 8, !dbg !3415
  br label %868, !dbg !3415

868:                                              ; preds = %863
  %869 = load ptr, ptr %22, align 8, !dbg !3441
  %870 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr %869, i32 0, i32 1, !dbg !3441
  %871 = load i8, ptr %870, align 1, !dbg !3441
  %872 = zext i8 %871 to i32, !dbg !3441
  %873 = load i32, ptr %14, align 4, !dbg !3441
  %874 = sub nsw i32 %873, %872, !dbg !3441
  store i32 %874, ptr %14, align 4, !dbg !3441
  %875 = load ptr, ptr %22, align 8, !dbg !3441
  %876 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr %875, i32 0, i32 1, !dbg !3441
  %877 = load i8, ptr %876, align 1, !dbg !3441
  %878 = zext i8 %877 to i32, !dbg !3441
  %879 = load i32, ptr %13, align 4, !dbg !3441
  %880 = lshr i32 %879, %878, !dbg !3441
  store i32 %880, ptr %13, align 4, !dbg !3441
  br label %881, !dbg !3441

881:                                              ; preds = %868
  br label %882, !dbg !3415

882:                                              ; preds = %881
  %883 = load ptr, ptr %22, align 8, !dbg !3411
  %884 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr %883, i32 0, i32 0, !dbg !3411
  %885 = load i8, ptr %884, align 4, !dbg !3411
  %886 = zext i8 %885 to i32, !dbg !3411
  switch i32 %886, label %913 [
    i32 8, label %887
    i32 10, label %902
    i32 11, label %902
  ], !dbg !3411

887:                                              ; preds = %882
  br label %888, !dbg !3443

888:                                              ; preds = %887
  %889 = load i32, ptr %15, align 4, !dbg !3445
  %890 = load ptr, ptr %22, align 8, !dbg !3445
  %891 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr %890, i32 0, i32 2, !dbg !3445
  %892 = load i32, ptr %891, align 4, !dbg !3445
  %893 = add i32 %889, %892, !dbg !3445
  %894 = load ptr, ptr %18, align 8, !dbg !3445
  %895 = getelementptr inbounds nuw i32, ptr %894, i32 1, !dbg !3445
  store ptr %895, ptr %18, align 8, !dbg !3445
  store i32 %893, ptr %894, align 4, !dbg !3445
  %896 = load ptr, ptr %22, align 8, !dbg !3445
  %897 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr %896, i32 0, i32 2, !dbg !3445
  %898 = load i32, ptr %897, align 4, !dbg !3445
  %899 = load i32, ptr %11, align 4, !dbg !3445
  %900 = add i32 %899, %898, !dbg !3445
  store i32 %900, ptr %11, align 4, !dbg !3445
  store i32 0, ptr %15, align 4, !dbg !3445
  br label %901, !dbg !3445

901:                                              ; preds = %888
  br label %915, !dbg !3443

902:                                              ; preds = %882, %882
  %903 = load ptr, ptr %22, align 8, !dbg !3443
  %904 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr %903, i32 0, i32 2, !dbg !3443
  %905 = load i32, ptr %904, align 4, !dbg !3443
  %906 = load i32, ptr %11, align 4, !dbg !3443
  %907 = add i32 %906, %905, !dbg !3443
  store i32 %907, ptr %11, align 4, !dbg !3443
  %908 = load ptr, ptr %22, align 8, !dbg !3443
  %909 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr %908, i32 0, i32 2, !dbg !3443
  %910 = load i32, ptr %909, align 4, !dbg !3443
  %911 = load i32, ptr %15, align 4, !dbg !3443
  %912 = add i32 %911, %910, !dbg !3443
  store i32 %912, ptr %15, align 4, !dbg !3443
  br label %914, !dbg !3443

913:                                              ; preds = %882
  br label %1490, !dbg !3443

914:                                              ; preds = %902
  br label %809, !dbg !3447, !llvm.loop !3448

915:                                              ; preds = %901
    #dbg_label(!3450, !3409)
  br label %916, !dbg !3409

916:                                              ; preds = %1021, %915
  br label %917, !dbg !3451

917:                                              ; preds = %916
  br label %918, !dbg !3455

918:                                              ; preds = %917
  %919 = load i32, ptr %14, align 4, !dbg !3457
  %920 = icmp slt i32 %919, 12, !dbg !3457
  br i1 %920, label %921, label %969, !dbg !3457

921:                                              ; preds = %918
  %922 = load ptr, ptr %16, align 8, !dbg !3460
  %923 = load ptr, ptr %17, align 8, !dbg !3460
  %924 = icmp uge ptr %922, %923, !dbg !3460
  br i1 %924, label %925, label %930, !dbg !3460

925:                                              ; preds = %921
  %926 = load i32, ptr %14, align 4, !dbg !3463
  %927 = icmp eq i32 %926, 0, !dbg !3463
  br i1 %927, label %928, label %929, !dbg !3463

928:                                              ; preds = %925
  br label %1496, !dbg !3463

929:                                              ; preds = %925
  store i32 12, ptr %14, align 4, !dbg !3466
  br label %968, !dbg !3466

930:                                              ; preds = %921
  %931 = load ptr, ptr %21, align 8, !dbg !3467
  %932 = load ptr, ptr %16, align 8, !dbg !3467
  %933 = getelementptr inbounds nuw i8, ptr %932, i32 1, !dbg !3467
  store ptr %933, ptr %16, align 8, !dbg !3467
  %934 = load i8, ptr %932, align 1, !dbg !3467
  %935 = zext i8 %934 to i64, !dbg !3467
  %936 = getelementptr inbounds nuw i8, ptr %931, i64 %935, !dbg !3467
  %937 = load i8, ptr %936, align 1, !dbg !3467
  %938 = zext i8 %937 to i32, !dbg !3467
  %939 = load i32, ptr %14, align 4, !dbg !3467
  %940 = shl i32 %938, %939, !dbg !3467
  %941 = load i32, ptr %13, align 4, !dbg !3467
  %942 = or i32 %941, %940, !dbg !3467
  store i32 %942, ptr %13, align 4, !dbg !3467
  %943 = load i32, ptr %14, align 4, !dbg !3469
  %944 = add nsw i32 %943, 8, !dbg !3469
  store i32 %944, ptr %14, align 4, !dbg !3469
  %945 = icmp slt i32 %944, 12, !dbg !3469
  br i1 %945, label %946, label %967, !dbg !3469

946:                                              ; preds = %930
  %947 = load ptr, ptr %16, align 8, !dbg !3471
  %948 = load ptr, ptr %17, align 8, !dbg !3471
  %949 = icmp uge ptr %947, %948, !dbg !3471
  br i1 %949, label %950, label %951, !dbg !3471

950:                                              ; preds = %946
  store i32 12, ptr %14, align 4, !dbg !3474
  br label %966, !dbg !3474

951:                                              ; preds = %946
  %952 = load ptr, ptr %21, align 8, !dbg !3476
  %953 = load ptr, ptr %16, align 8, !dbg !3476
  %954 = getelementptr inbounds nuw i8, ptr %953, i32 1, !dbg !3476
  store ptr %954, ptr %16, align 8, !dbg !3476
  %955 = load i8, ptr %953, align 1, !dbg !3476
  %956 = zext i8 %955 to i64, !dbg !3476
  %957 = getelementptr inbounds nuw i8, ptr %952, i64 %956, !dbg !3476
  %958 = load i8, ptr %957, align 1, !dbg !3476
  %959 = zext i8 %958 to i32, !dbg !3476
  %960 = load i32, ptr %14, align 4, !dbg !3476
  %961 = shl i32 %959, %960, !dbg !3476
  %962 = load i32, ptr %13, align 4, !dbg !3476
  %963 = or i32 %962, %961, !dbg !3476
  store i32 %963, ptr %13, align 4, !dbg !3476
  %964 = load i32, ptr %14, align 4, !dbg !3476
  %965 = add nsw i32 %964, 8, !dbg !3476
  store i32 %965, ptr %14, align 4, !dbg !3476
  br label %966

966:                                              ; preds = %951, %950
  br label %967, !dbg !3478

967:                                              ; preds = %966, %930
  br label %968

968:                                              ; preds = %967, %929
  br label %969, !dbg !3479

969:                                              ; preds = %968, %918
  br label %970, !dbg !3480

970:                                              ; preds = %969
  %971 = load i32, ptr %13, align 4, !dbg !3455
  %972 = and i32 %971, 4095, !dbg !3455
  %973 = zext i32 %972 to i64, !dbg !3455
  %974 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr @TIFFFaxWhiteTable, i64 %973, !dbg !3455
  store ptr %974, ptr %22, align 8, !dbg !3455
  br label %975, !dbg !3455

975:                                              ; preds = %970
  %976 = load ptr, ptr %22, align 8, !dbg !3481
  %977 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr %976, i32 0, i32 1, !dbg !3481
  %978 = load i8, ptr %977, align 1, !dbg !3481
  %979 = zext i8 %978 to i32, !dbg !3481
  %980 = load i32, ptr %14, align 4, !dbg !3481
  %981 = sub nsw i32 %980, %979, !dbg !3481
  store i32 %981, ptr %14, align 4, !dbg !3481
  %982 = load ptr, ptr %22, align 8, !dbg !3481
  %983 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr %982, i32 0, i32 1, !dbg !3481
  %984 = load i8, ptr %983, align 1, !dbg !3481
  %985 = zext i8 %984 to i32, !dbg !3481
  %986 = load i32, ptr %13, align 4, !dbg !3481
  %987 = lshr i32 %986, %985, !dbg !3481
  store i32 %987, ptr %13, align 4, !dbg !3481
  br label %988, !dbg !3481

988:                                              ; preds = %975
  br label %989, !dbg !3455

989:                                              ; preds = %988
  %990 = load ptr, ptr %22, align 8, !dbg !3451
  %991 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr %990, i32 0, i32 0, !dbg !3451
  %992 = load i8, ptr %991, align 4, !dbg !3451
  %993 = zext i8 %992 to i32, !dbg !3451
  switch i32 %993, label %1020 [
    i32 7, label %994
    i32 9, label %1009
    i32 11, label %1009
  ], !dbg !3451

994:                                              ; preds = %989
  br label %995, !dbg !3483

995:                                              ; preds = %994
  %996 = load i32, ptr %15, align 4, !dbg !3485
  %997 = load ptr, ptr %22, align 8, !dbg !3485
  %998 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr %997, i32 0, i32 2, !dbg !3485
  %999 = load i32, ptr %998, align 4, !dbg !3485
  %1000 = add i32 %996, %999, !dbg !3485
  %1001 = load ptr, ptr %18, align 8, !dbg !3485
  %1002 = getelementptr inbounds nuw i32, ptr %1001, i32 1, !dbg !3485
  store ptr %1002, ptr %18, align 8, !dbg !3485
  store i32 %1000, ptr %1001, align 4, !dbg !3485
  %1003 = load ptr, ptr %22, align 8, !dbg !3485
  %1004 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr %1003, i32 0, i32 2, !dbg !3485
  %1005 = load i32, ptr %1004, align 4, !dbg !3485
  %1006 = load i32, ptr %11, align 4, !dbg !3485
  %1007 = add i32 %1006, %1005, !dbg !3485
  store i32 %1007, ptr %11, align 4, !dbg !3485
  store i32 0, ptr %15, align 4, !dbg !3485
  br label %1008, !dbg !3485

1008:                                             ; preds = %995
  br label %1022, !dbg !3483

1009:                                             ; preds = %989, %989
  %1010 = load ptr, ptr %22, align 8, !dbg !3483
  %1011 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr %1010, i32 0, i32 2, !dbg !3483
  %1012 = load i32, ptr %1011, align 4, !dbg !3483
  %1013 = load i32, ptr %11, align 4, !dbg !3483
  %1014 = add i32 %1013, %1012, !dbg !3483
  store i32 %1014, ptr %11, align 4, !dbg !3483
  %1015 = load ptr, ptr %22, align 8, !dbg !3483
  %1016 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr %1015, i32 0, i32 2, !dbg !3483
  %1017 = load i32, ptr %1016, align 4, !dbg !3483
  %1018 = load i32, ptr %15, align 4, !dbg !3483
  %1019 = add i32 %1018, %1017, !dbg !3483
  store i32 %1019, ptr %15, align 4, !dbg !3483
  br label %1021, !dbg !3483

1020:                                             ; preds = %989
  br label %1493, !dbg !3483

1021:                                             ; preds = %1009
  br label %916, !dbg !3487, !llvm.loop !3488

1022:                                             ; preds = %1008
    #dbg_label(!3490, !3409)
  br label %1238, !dbg !3409

1023:                                             ; preds = %799
  br label %1024, !dbg !3491

1024:                                             ; preds = %1129, %1023
  br label %1025, !dbg !3493

1025:                                             ; preds = %1024
  br label %1026, !dbg !3497

1026:                                             ; preds = %1025
  %1027 = load i32, ptr %14, align 4, !dbg !3499
  %1028 = icmp slt i32 %1027, 12, !dbg !3499
  br i1 %1028, label %1029, label %1077, !dbg !3499

1029:                                             ; preds = %1026
  %1030 = load ptr, ptr %16, align 8, !dbg !3502
  %1031 = load ptr, ptr %17, align 8, !dbg !3502
  %1032 = icmp uge ptr %1030, %1031, !dbg !3502
  br i1 %1032, label %1033, label %1038, !dbg !3502

1033:                                             ; preds = %1029
  %1034 = load i32, ptr %14, align 4, !dbg !3505
  %1035 = icmp eq i32 %1034, 0, !dbg !3505
  br i1 %1035, label %1036, label %1037, !dbg !3505

1036:                                             ; preds = %1033
  br label %1496, !dbg !3505

1037:                                             ; preds = %1033
  store i32 12, ptr %14, align 4, !dbg !3508
  br label %1076, !dbg !3508

1038:                                             ; preds = %1029
  %1039 = load ptr, ptr %21, align 8, !dbg !3509
  %1040 = load ptr, ptr %16, align 8, !dbg !3509
  %1041 = getelementptr inbounds nuw i8, ptr %1040, i32 1, !dbg !3509
  store ptr %1041, ptr %16, align 8, !dbg !3509
  %1042 = load i8, ptr %1040, align 1, !dbg !3509
  %1043 = zext i8 %1042 to i64, !dbg !3509
  %1044 = getelementptr inbounds nuw i8, ptr %1039, i64 %1043, !dbg !3509
  %1045 = load i8, ptr %1044, align 1, !dbg !3509
  %1046 = zext i8 %1045 to i32, !dbg !3509
  %1047 = load i32, ptr %14, align 4, !dbg !3509
  %1048 = shl i32 %1046, %1047, !dbg !3509
  %1049 = load i32, ptr %13, align 4, !dbg !3509
  %1050 = or i32 %1049, %1048, !dbg !3509
  store i32 %1050, ptr %13, align 4, !dbg !3509
  %1051 = load i32, ptr %14, align 4, !dbg !3511
  %1052 = add nsw i32 %1051, 8, !dbg !3511
  store i32 %1052, ptr %14, align 4, !dbg !3511
  %1053 = icmp slt i32 %1052, 12, !dbg !3511
  br i1 %1053, label %1054, label %1075, !dbg !3511

1054:                                             ; preds = %1038
  %1055 = load ptr, ptr %16, align 8, !dbg !3513
  %1056 = load ptr, ptr %17, align 8, !dbg !3513
  %1057 = icmp uge ptr %1055, %1056, !dbg !3513
  br i1 %1057, label %1058, label %1059, !dbg !3513

1058:                                             ; preds = %1054
  store i32 12, ptr %14, align 4, !dbg !3516
  br label %1074, !dbg !3516

1059:                                             ; preds = %1054
  %1060 = load ptr, ptr %21, align 8, !dbg !3518
  %1061 = load ptr, ptr %16, align 8, !dbg !3518
  %1062 = getelementptr inbounds nuw i8, ptr %1061, i32 1, !dbg !3518
  store ptr %1062, ptr %16, align 8, !dbg !3518
  %1063 = load i8, ptr %1061, align 1, !dbg !3518
  %1064 = zext i8 %1063 to i64, !dbg !3518
  %1065 = getelementptr inbounds nuw i8, ptr %1060, i64 %1064, !dbg !3518
  %1066 = load i8, ptr %1065, align 1, !dbg !3518
  %1067 = zext i8 %1066 to i32, !dbg !3518
  %1068 = load i32, ptr %14, align 4, !dbg !3518
  %1069 = shl i32 %1067, %1068, !dbg !3518
  %1070 = load i32, ptr %13, align 4, !dbg !3518
  %1071 = or i32 %1070, %1069, !dbg !3518
  store i32 %1071, ptr %13, align 4, !dbg !3518
  %1072 = load i32, ptr %14, align 4, !dbg !3518
  %1073 = add nsw i32 %1072, 8, !dbg !3518
  store i32 %1073, ptr %14, align 4, !dbg !3518
  br label %1074

1074:                                             ; preds = %1059, %1058
  br label %1075, !dbg !3520

1075:                                             ; preds = %1074, %1038
  br label %1076

1076:                                             ; preds = %1075, %1037
  br label %1077, !dbg !3521

1077:                                             ; preds = %1076, %1026
  br label %1078, !dbg !3522

1078:                                             ; preds = %1077
  %1079 = load i32, ptr %13, align 4, !dbg !3497
  %1080 = and i32 %1079, 4095, !dbg !3497
  %1081 = zext i32 %1080 to i64, !dbg !3497
  %1082 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr @TIFFFaxWhiteTable, i64 %1081, !dbg !3497
  store ptr %1082, ptr %22, align 8, !dbg !3497
  br label %1083, !dbg !3497

1083:                                             ; preds = %1078
  %1084 = load ptr, ptr %22, align 8, !dbg !3523
  %1085 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr %1084, i32 0, i32 1, !dbg !3523
  %1086 = load i8, ptr %1085, align 1, !dbg !3523
  %1087 = zext i8 %1086 to i32, !dbg !3523
  %1088 = load i32, ptr %14, align 4, !dbg !3523
  %1089 = sub nsw i32 %1088, %1087, !dbg !3523
  store i32 %1089, ptr %14, align 4, !dbg !3523
  %1090 = load ptr, ptr %22, align 8, !dbg !3523
  %1091 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr %1090, i32 0, i32 1, !dbg !3523
  %1092 = load i8, ptr %1091, align 1, !dbg !3523
  %1093 = zext i8 %1092 to i32, !dbg !3523
  %1094 = load i32, ptr %13, align 4, !dbg !3523
  %1095 = lshr i32 %1094, %1093, !dbg !3523
  store i32 %1095, ptr %13, align 4, !dbg !3523
  br label %1096, !dbg !3523

1096:                                             ; preds = %1083
  br label %1097, !dbg !3497

1097:                                             ; preds = %1096
  %1098 = load ptr, ptr %22, align 8, !dbg !3493
  %1099 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr %1098, i32 0, i32 0, !dbg !3493
  %1100 = load i8, ptr %1099, align 4, !dbg !3493
  %1101 = zext i8 %1100 to i32, !dbg !3493
  switch i32 %1101, label %1128 [
    i32 7, label %1102
    i32 9, label %1117
    i32 11, label %1117
  ], !dbg !3493

1102:                                             ; preds = %1097
  br label %1103, !dbg !3525

1103:                                             ; preds = %1102
  %1104 = load i32, ptr %15, align 4, !dbg !3527
  %1105 = load ptr, ptr %22, align 8, !dbg !3527
  %1106 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr %1105, i32 0, i32 2, !dbg !3527
  %1107 = load i32, ptr %1106, align 4, !dbg !3527
  %1108 = add i32 %1104, %1107, !dbg !3527
  %1109 = load ptr, ptr %18, align 8, !dbg !3527
  %1110 = getelementptr inbounds nuw i32, ptr %1109, i32 1, !dbg !3527
  store ptr %1110, ptr %18, align 8, !dbg !3527
  store i32 %1108, ptr %1109, align 4, !dbg !3527
  %1111 = load ptr, ptr %22, align 8, !dbg !3527
  %1112 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr %1111, i32 0, i32 2, !dbg !3527
  %1113 = load i32, ptr %1112, align 4, !dbg !3527
  %1114 = load i32, ptr %11, align 4, !dbg !3527
  %1115 = add i32 %1114, %1113, !dbg !3527
  store i32 %1115, ptr %11, align 4, !dbg !3527
  store i32 0, ptr %15, align 4, !dbg !3527
  br label %1116, !dbg !3527

1116:                                             ; preds = %1103
  br label %1130, !dbg !3525

1117:                                             ; preds = %1097, %1097
  %1118 = load ptr, ptr %22, align 8, !dbg !3525
  %1119 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr %1118, i32 0, i32 2, !dbg !3525
  %1120 = load i32, ptr %1119, align 4, !dbg !3525
  %1121 = load i32, ptr %11, align 4, !dbg !3525
  %1122 = add i32 %1121, %1120, !dbg !3525
  store i32 %1122, ptr %11, align 4, !dbg !3525
  %1123 = load ptr, ptr %22, align 8, !dbg !3525
  %1124 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr %1123, i32 0, i32 2, !dbg !3525
  %1125 = load i32, ptr %1124, align 4, !dbg !3525
  %1126 = load i32, ptr %15, align 4, !dbg !3525
  %1127 = add i32 %1126, %1125, !dbg !3525
  store i32 %1127, ptr %15, align 4, !dbg !3525
  br label %1129, !dbg !3525

1128:                                             ; preds = %1097
  br label %1493, !dbg !3525

1129:                                             ; preds = %1117
  br label %1024, !dbg !3529, !llvm.loop !3530

1130:                                             ; preds = %1116
    #dbg_label(!3532, !3491)
  br label %1131, !dbg !3491

1131:                                             ; preds = %1236, %1130
  br label %1132, !dbg !3533

1132:                                             ; preds = %1131
  br label %1133, !dbg !3537

1133:                                             ; preds = %1132
  %1134 = load i32, ptr %14, align 4, !dbg !3539
  %1135 = icmp slt i32 %1134, 13, !dbg !3539
  br i1 %1135, label %1136, label %1184, !dbg !3539

1136:                                             ; preds = %1133
  %1137 = load ptr, ptr %16, align 8, !dbg !3542
  %1138 = load ptr, ptr %17, align 8, !dbg !3542
  %1139 = icmp uge ptr %1137, %1138, !dbg !3542
  br i1 %1139, label %1140, label %1145, !dbg !3542

1140:                                             ; preds = %1136
  %1141 = load i32, ptr %14, align 4, !dbg !3545
  %1142 = icmp eq i32 %1141, 0, !dbg !3545
  br i1 %1142, label %1143, label %1144, !dbg !3545

1143:                                             ; preds = %1140
  br label %1496, !dbg !3545

1144:                                             ; preds = %1140
  store i32 13, ptr %14, align 4, !dbg !3548
  br label %1183, !dbg !3548

1145:                                             ; preds = %1136
  %1146 = load ptr, ptr %21, align 8, !dbg !3549
  %1147 = load ptr, ptr %16, align 8, !dbg !3549
  %1148 = getelementptr inbounds nuw i8, ptr %1147, i32 1, !dbg !3549
  store ptr %1148, ptr %16, align 8, !dbg !3549
  %1149 = load i8, ptr %1147, align 1, !dbg !3549
  %1150 = zext i8 %1149 to i64, !dbg !3549
  %1151 = getelementptr inbounds nuw i8, ptr %1146, i64 %1150, !dbg !3549
  %1152 = load i8, ptr %1151, align 1, !dbg !3549
  %1153 = zext i8 %1152 to i32, !dbg !3549
  %1154 = load i32, ptr %14, align 4, !dbg !3549
  %1155 = shl i32 %1153, %1154, !dbg !3549
  %1156 = load i32, ptr %13, align 4, !dbg !3549
  %1157 = or i32 %1156, %1155, !dbg !3549
  store i32 %1157, ptr %13, align 4, !dbg !3549
  %1158 = load i32, ptr %14, align 4, !dbg !3551
  %1159 = add nsw i32 %1158, 8, !dbg !3551
  store i32 %1159, ptr %14, align 4, !dbg !3551
  %1160 = icmp slt i32 %1159, 13, !dbg !3551
  br i1 %1160, label %1161, label %1182, !dbg !3551

1161:                                             ; preds = %1145
  %1162 = load ptr, ptr %16, align 8, !dbg !3553
  %1163 = load ptr, ptr %17, align 8, !dbg !3553
  %1164 = icmp uge ptr %1162, %1163, !dbg !3553
  br i1 %1164, label %1165, label %1166, !dbg !3553

1165:                                             ; preds = %1161
  store i32 13, ptr %14, align 4, !dbg !3556
  br label %1181, !dbg !3556

1166:                                             ; preds = %1161
  %1167 = load ptr, ptr %21, align 8, !dbg !3558
  %1168 = load ptr, ptr %16, align 8, !dbg !3558
  %1169 = getelementptr inbounds nuw i8, ptr %1168, i32 1, !dbg !3558
  store ptr %1169, ptr %16, align 8, !dbg !3558
  %1170 = load i8, ptr %1168, align 1, !dbg !3558
  %1171 = zext i8 %1170 to i64, !dbg !3558
  %1172 = getelementptr inbounds nuw i8, ptr %1167, i64 %1171, !dbg !3558
  %1173 = load i8, ptr %1172, align 1, !dbg !3558
  %1174 = zext i8 %1173 to i32, !dbg !3558
  %1175 = load i32, ptr %14, align 4, !dbg !3558
  %1176 = shl i32 %1174, %1175, !dbg !3558
  %1177 = load i32, ptr %13, align 4, !dbg !3558
  %1178 = or i32 %1177, %1176, !dbg !3558
  store i32 %1178, ptr %13, align 4, !dbg !3558
  %1179 = load i32, ptr %14, align 4, !dbg !3558
  %1180 = add nsw i32 %1179, 8, !dbg !3558
  store i32 %1180, ptr %14, align 4, !dbg !3558
  br label %1181

1181:                                             ; preds = %1166, %1165
  br label %1182, !dbg !3560

1182:                                             ; preds = %1181, %1145
  br label %1183

1183:                                             ; preds = %1182, %1144
  br label %1184, !dbg !3561

1184:                                             ; preds = %1183, %1133
  br label %1185, !dbg !3562

1185:                                             ; preds = %1184
  %1186 = load i32, ptr %13, align 4, !dbg !3537
  %1187 = and i32 %1186, 8191, !dbg !3537
  %1188 = zext i32 %1187 to i64, !dbg !3537
  %1189 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr @TIFFFaxBlackTable, i64 %1188, !dbg !3537
  store ptr %1189, ptr %22, align 8, !dbg !3537
  br label %1190, !dbg !3537

1190:                                             ; preds = %1185
  %1191 = load ptr, ptr %22, align 8, !dbg !3563
  %1192 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr %1191, i32 0, i32 1, !dbg !3563
  %1193 = load i8, ptr %1192, align 1, !dbg !3563
  %1194 = zext i8 %1193 to i32, !dbg !3563
  %1195 = load i32, ptr %14, align 4, !dbg !3563
  %1196 = sub nsw i32 %1195, %1194, !dbg !3563
  store i32 %1196, ptr %14, align 4, !dbg !3563
  %1197 = load ptr, ptr %22, align 8, !dbg !3563
  %1198 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr %1197, i32 0, i32 1, !dbg !3563
  %1199 = load i8, ptr %1198, align 1, !dbg !3563
  %1200 = zext i8 %1199 to i32, !dbg !3563
  %1201 = load i32, ptr %13, align 4, !dbg !3563
  %1202 = lshr i32 %1201, %1200, !dbg !3563
  store i32 %1202, ptr %13, align 4, !dbg !3563
  br label %1203, !dbg !3563

1203:                                             ; preds = %1190
  br label %1204, !dbg !3537

1204:                                             ; preds = %1203
  %1205 = load ptr, ptr %22, align 8, !dbg !3533
  %1206 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr %1205, i32 0, i32 0, !dbg !3533
  %1207 = load i8, ptr %1206, align 4, !dbg !3533
  %1208 = zext i8 %1207 to i32, !dbg !3533
  switch i32 %1208, label %1235 [
    i32 8, label %1209
    i32 10, label %1224
    i32 11, label %1224
  ], !dbg !3533

1209:                                             ; preds = %1204
  br label %1210, !dbg !3565

1210:                                             ; preds = %1209
  %1211 = load i32, ptr %15, align 4, !dbg !3567
  %1212 = load ptr, ptr %22, align 8, !dbg !3567
  %1213 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr %1212, i32 0, i32 2, !dbg !3567
  %1214 = load i32, ptr %1213, align 4, !dbg !3567
  %1215 = add i32 %1211, %1214, !dbg !3567
  %1216 = load ptr, ptr %18, align 8, !dbg !3567
  %1217 = getelementptr inbounds nuw i32, ptr %1216, i32 1, !dbg !3567
  store ptr %1217, ptr %18, align 8, !dbg !3567
  store i32 %1215, ptr %1216, align 4, !dbg !3567
  %1218 = load ptr, ptr %22, align 8, !dbg !3567
  %1219 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr %1218, i32 0, i32 2, !dbg !3567
  %1220 = load i32, ptr %1219, align 4, !dbg !3567
  %1221 = load i32, ptr %11, align 4, !dbg !3567
  %1222 = add i32 %1221, %1220, !dbg !3567
  store i32 %1222, ptr %11, align 4, !dbg !3567
  store i32 0, ptr %15, align 4, !dbg !3567
  br label %1223, !dbg !3567

1223:                                             ; preds = %1210
  br label %1237, !dbg !3565

1224:                                             ; preds = %1204, %1204
  %1225 = load ptr, ptr %22, align 8, !dbg !3565
  %1226 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr %1225, i32 0, i32 2, !dbg !3565
  %1227 = load i32, ptr %1226, align 4, !dbg !3565
  %1228 = load i32, ptr %11, align 4, !dbg !3565
  %1229 = add i32 %1228, %1227, !dbg !3565
  store i32 %1229, ptr %11, align 4, !dbg !3565
  %1230 = load ptr, ptr %22, align 8, !dbg !3565
  %1231 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr %1230, i32 0, i32 2, !dbg !3565
  %1232 = load i32, ptr %1231, align 4, !dbg !3565
  %1233 = load i32, ptr %15, align 4, !dbg !3565
  %1234 = add i32 %1233, %1232, !dbg !3565
  store i32 %1234, ptr %15, align 4, !dbg !3565
  br label %1236, !dbg !3565

1235:                                             ; preds = %1204
  br label %1490, !dbg !3565

1236:                                             ; preds = %1224
  br label %1131, !dbg !3569, !llvm.loop !3570

1237:                                             ; preds = %1223
    #dbg_label(!3572, !3491)
  br label %1238

1238:                                             ; preds = %1237, %1022
  br label %1239, !dbg !3397

1239:                                             ; preds = %1238
  %1240 = load ptr, ptr %18, align 8, !dbg !3573
  %1241 = load ptr, ptr %19, align 8, !dbg !3573
  %1242 = icmp ne ptr %1240, %1241, !dbg !3573
  br i1 %1242, label %1243, label %1267, !dbg !3573

1243:                                             ; preds = %1239
  br label %1244, !dbg !3573

1244:                                             ; preds = %1254, %1243
  %1245 = load i32, ptr %23, align 4, !dbg !3573
  %1246 = load i32, ptr %11, align 4, !dbg !3573
  %1247 = icmp sle i32 %1245, %1246, !dbg !3573
  br i1 %1247, label %1248, label %1252, !dbg !3573

1248:                                             ; preds = %1244
  %1249 = load i32, ptr %23, align 4, !dbg !3573
  %1250 = load i32, ptr %12, align 4, !dbg !3573
  %1251 = icmp slt i32 %1249, %1250, !dbg !3573
  br label %1252

1252:                                             ; preds = %1248, %1244
  %1253 = phi i1 [ false, %1244 ], [ %1251, %1248 ], !dbg !3576
  br i1 %1253, label %1254, label %1266, !dbg !3573

1254:                                             ; preds = %1252
  %1255 = load ptr, ptr %24, align 8, !dbg !3577
  %1256 = getelementptr inbounds i32, ptr %1255, i64 0, !dbg !3577
  %1257 = load i32, ptr %1256, align 4, !dbg !3577
  %1258 = load ptr, ptr %24, align 8, !dbg !3577
  %1259 = getelementptr inbounds i32, ptr %1258, i64 1, !dbg !3577
  %1260 = load i32, ptr %1259, align 4, !dbg !3577
  %1261 = add i32 %1257, %1260, !dbg !3577
  %1262 = load i32, ptr %23, align 4, !dbg !3577
  %1263 = add i32 %1262, %1261, !dbg !3577
  store i32 %1263, ptr %23, align 4, !dbg !3577
  %1264 = load ptr, ptr %24, align 8, !dbg !3577
  %1265 = getelementptr inbounds i32, ptr %1264, i64 2, !dbg !3577
  store ptr %1265, ptr %24, align 8, !dbg !3577
  br label %1244, !dbg !3573, !llvm.loop !3579

1266:                                             ; preds = %1252
  br label %1267, !dbg !3573

1267:                                             ; preds = %1266, %1239
  br label %1268, !dbg !3580

1268:                                             ; preds = %1267
  br label %1603, !dbg !3397

1269:                                             ; preds = %747
  br label %1270, !dbg !3397

1270:                                             ; preds = %1269
  %1271 = load ptr, ptr %18, align 8, !dbg !3581
  %1272 = load ptr, ptr %19, align 8, !dbg !3581
  %1273 = icmp ne ptr %1271, %1272, !dbg !3581
  br i1 %1273, label %1274, label %1298, !dbg !3581

1274:                                             ; preds = %1270
  br label %1275, !dbg !3581

1275:                                             ; preds = %1285, %1274
  %1276 = load i32, ptr %23, align 4, !dbg !3581
  %1277 = load i32, ptr %11, align 4, !dbg !3581
  %1278 = icmp sle i32 %1276, %1277, !dbg !3581
  br i1 %1278, label %1279, label %1283, !dbg !3581

1279:                                             ; preds = %1275
  %1280 = load i32, ptr %23, align 4, !dbg !3581
  %1281 = load i32, ptr %12, align 4, !dbg !3581
  %1282 = icmp slt i32 %1280, %1281, !dbg !3581
  br label %1283

1283:                                             ; preds = %1279, %1275
  %1284 = phi i1 [ false, %1275 ], [ %1282, %1279 ], !dbg !3584
  br i1 %1284, label %1285, label %1297, !dbg !3581

1285:                                             ; preds = %1283
  %1286 = load ptr, ptr %24, align 8, !dbg !3585
  %1287 = getelementptr inbounds i32, ptr %1286, i64 0, !dbg !3585
  %1288 = load i32, ptr %1287, align 4, !dbg !3585
  %1289 = load ptr, ptr %24, align 8, !dbg !3585
  %1290 = getelementptr inbounds i32, ptr %1289, i64 1, !dbg !3585
  %1291 = load i32, ptr %1290, align 4, !dbg !3585
  %1292 = add i32 %1288, %1291, !dbg !3585
  %1293 = load i32, ptr %23, align 4, !dbg !3585
  %1294 = add i32 %1293, %1292, !dbg !3585
  store i32 %1294, ptr %23, align 4, !dbg !3585
  %1295 = load ptr, ptr %24, align 8, !dbg !3585
  %1296 = getelementptr inbounds i32, ptr %1295, i64 2, !dbg !3585
  store ptr %1296, ptr %24, align 8, !dbg !3585
  br label %1275, !dbg !3581, !llvm.loop !3587

1297:                                             ; preds = %1283
  br label %1298, !dbg !3581

1298:                                             ; preds = %1297, %1270
  br label %1299, !dbg !3588

1299:                                             ; preds = %1298
  br label %1300, !dbg !3397

1300:                                             ; preds = %1299
  %1301 = load i32, ptr %15, align 4, !dbg !3589
  %1302 = load i32, ptr %23, align 4, !dbg !3589
  %1303 = load i32, ptr %11, align 4, !dbg !3589
  %1304 = sub nsw i32 %1302, %1303, !dbg !3589
  %1305 = add nsw i32 %1301, %1304, !dbg !3589
  %1306 = load ptr, ptr %18, align 8, !dbg !3589
  %1307 = getelementptr inbounds nuw i32, ptr %1306, i32 1, !dbg !3589
  store ptr %1307, ptr %18, align 8, !dbg !3589
  store i32 %1305, ptr %1306, align 4, !dbg !3589
  %1308 = load i32, ptr %23, align 4, !dbg !3589
  %1309 = load i32, ptr %11, align 4, !dbg !3589
  %1310 = sub nsw i32 %1308, %1309, !dbg !3589
  %1311 = load i32, ptr %11, align 4, !dbg !3589
  %1312 = add nsw i32 %1311, %1310, !dbg !3589
  store i32 %1312, ptr %11, align 4, !dbg !3589
  store i32 0, ptr %15, align 4, !dbg !3589
  br label %1313, !dbg !3589

1313:                                             ; preds = %1300
  %1314 = load ptr, ptr %24, align 8, !dbg !3397
  %1315 = getelementptr inbounds nuw i32, ptr %1314, i32 1, !dbg !3397
  store ptr %1315, ptr %24, align 8, !dbg !3397
  %1316 = load i32, ptr %1314, align 4, !dbg !3397
  %1317 = load i32, ptr %23, align 4, !dbg !3397
  %1318 = add i32 %1317, %1316, !dbg !3397
  store i32 %1318, ptr %23, align 4, !dbg !3397
  br label %1603, !dbg !3397

1319:                                             ; preds = %747
  br label %1320, !dbg !3397

1320:                                             ; preds = %1319
  %1321 = load ptr, ptr %18, align 8, !dbg !3591
  %1322 = load ptr, ptr %19, align 8, !dbg !3591
  %1323 = icmp ne ptr %1321, %1322, !dbg !3591
  br i1 %1323, label %1324, label %1348, !dbg !3591

1324:                                             ; preds = %1320
  br label %1325, !dbg !3591

1325:                                             ; preds = %1335, %1324
  %1326 = load i32, ptr %23, align 4, !dbg !3591
  %1327 = load i32, ptr %11, align 4, !dbg !3591
  %1328 = icmp sle i32 %1326, %1327, !dbg !3591
  br i1 %1328, label %1329, label %1333, !dbg !3591

1329:                                             ; preds = %1325
  %1330 = load i32, ptr %23, align 4, !dbg !3591
  %1331 = load i32, ptr %12, align 4, !dbg !3591
  %1332 = icmp slt i32 %1330, %1331, !dbg !3591
  br label %1333

1333:                                             ; preds = %1329, %1325
  %1334 = phi i1 [ false, %1325 ], [ %1332, %1329 ], !dbg !3594
  br i1 %1334, label %1335, label %1347, !dbg !3591

1335:                                             ; preds = %1333
  %1336 = load ptr, ptr %24, align 8, !dbg !3595
  %1337 = getelementptr inbounds i32, ptr %1336, i64 0, !dbg !3595
  %1338 = load i32, ptr %1337, align 4, !dbg !3595
  %1339 = load ptr, ptr %24, align 8, !dbg !3595
  %1340 = getelementptr inbounds i32, ptr %1339, i64 1, !dbg !3595
  %1341 = load i32, ptr %1340, align 4, !dbg !3595
  %1342 = add i32 %1338, %1341, !dbg !3595
  %1343 = load i32, ptr %23, align 4, !dbg !3595
  %1344 = add i32 %1343, %1342, !dbg !3595
  store i32 %1344, ptr %23, align 4, !dbg !3595
  %1345 = load ptr, ptr %24, align 8, !dbg !3595
  %1346 = getelementptr inbounds i32, ptr %1345, i64 2, !dbg !3595
  store ptr %1346, ptr %24, align 8, !dbg !3595
  br label %1325, !dbg !3591, !llvm.loop !3597

1347:                                             ; preds = %1333
  br label %1348, !dbg !3591

1348:                                             ; preds = %1347, %1320
  br label %1349, !dbg !3598

1349:                                             ; preds = %1348
  br label %1350, !dbg !3397

1350:                                             ; preds = %1349
  %1351 = load i32, ptr %15, align 4, !dbg !3599
  %1352 = load i32, ptr %23, align 4, !dbg !3599
  %1353 = load i32, ptr %11, align 4, !dbg !3599
  %1354 = sub nsw i32 %1352, %1353, !dbg !3599
  %1355 = load ptr, ptr %22, align 8, !dbg !3599
  %1356 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr %1355, i32 0, i32 2, !dbg !3599
  %1357 = load i32, ptr %1356, align 4, !dbg !3599
  %1358 = add i32 %1354, %1357, !dbg !3599
  %1359 = add i32 %1351, %1358, !dbg !3599
  %1360 = load ptr, ptr %18, align 8, !dbg !3599
  %1361 = getelementptr inbounds nuw i32, ptr %1360, i32 1, !dbg !3599
  store ptr %1361, ptr %18, align 8, !dbg !3599
  store i32 %1359, ptr %1360, align 4, !dbg !3599
  %1362 = load i32, ptr %23, align 4, !dbg !3599
  %1363 = load i32, ptr %11, align 4, !dbg !3599
  %1364 = sub nsw i32 %1362, %1363, !dbg !3599
  %1365 = load ptr, ptr %22, align 8, !dbg !3599
  %1366 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr %1365, i32 0, i32 2, !dbg !3599
  %1367 = load i32, ptr %1366, align 4, !dbg !3599
  %1368 = add i32 %1364, %1367, !dbg !3599
  %1369 = load i32, ptr %11, align 4, !dbg !3599
  %1370 = add i32 %1369, %1368, !dbg !3599
  store i32 %1370, ptr %11, align 4, !dbg !3599
  store i32 0, ptr %15, align 4, !dbg !3599
  br label %1371, !dbg !3599

1371:                                             ; preds = %1350
  %1372 = load ptr, ptr %24, align 8, !dbg !3397
  %1373 = getelementptr inbounds nuw i32, ptr %1372, i32 1, !dbg !3397
  store ptr %1373, ptr %24, align 8, !dbg !3397
  %1374 = load i32, ptr %1372, align 4, !dbg !3397
  %1375 = load i32, ptr %23, align 4, !dbg !3397
  %1376 = add i32 %1375, %1374, !dbg !3397
  store i32 %1376, ptr %23, align 4, !dbg !3397
  br label %1603, !dbg !3397

1377:                                             ; preds = %747
  br label %1378, !dbg !3397

1378:                                             ; preds = %1377
  %1379 = load ptr, ptr %18, align 8, !dbg !3601
  %1380 = load ptr, ptr %19, align 8, !dbg !3601
  %1381 = icmp ne ptr %1379, %1380, !dbg !3601
  br i1 %1381, label %1382, label %1406, !dbg !3601

1382:                                             ; preds = %1378
  br label %1383, !dbg !3601

1383:                                             ; preds = %1393, %1382
  %1384 = load i32, ptr %23, align 4, !dbg !3601
  %1385 = load i32, ptr %11, align 4, !dbg !3601
  %1386 = icmp sle i32 %1384, %1385, !dbg !3601
  br i1 %1386, label %1387, label %1391, !dbg !3601

1387:                                             ; preds = %1383
  %1388 = load i32, ptr %23, align 4, !dbg !3601
  %1389 = load i32, ptr %12, align 4, !dbg !3601
  %1390 = icmp slt i32 %1388, %1389, !dbg !3601
  br label %1391

1391:                                             ; preds = %1387, %1383
  %1392 = phi i1 [ false, %1383 ], [ %1390, %1387 ], !dbg !3604
  br i1 %1392, label %1393, label %1405, !dbg !3601

1393:                                             ; preds = %1391
  %1394 = load ptr, ptr %24, align 8, !dbg !3605
  %1395 = getelementptr inbounds i32, ptr %1394, i64 0, !dbg !3605
  %1396 = load i32, ptr %1395, align 4, !dbg !3605
  %1397 = load ptr, ptr %24, align 8, !dbg !3605
  %1398 = getelementptr inbounds i32, ptr %1397, i64 1, !dbg !3605
  %1399 = load i32, ptr %1398, align 4, !dbg !3605
  %1400 = add i32 %1396, %1399, !dbg !3605
  %1401 = load i32, ptr %23, align 4, !dbg !3605
  %1402 = add i32 %1401, %1400, !dbg !3605
  store i32 %1402, ptr %23, align 4, !dbg !3605
  %1403 = load ptr, ptr %24, align 8, !dbg !3605
  %1404 = getelementptr inbounds i32, ptr %1403, i64 2, !dbg !3605
  store ptr %1404, ptr %24, align 8, !dbg !3605
  br label %1383, !dbg !3601, !llvm.loop !3607

1405:                                             ; preds = %1391
  br label %1406, !dbg !3601

1406:                                             ; preds = %1405, %1378
  br label %1407, !dbg !3608

1407:                                             ; preds = %1406
  br label %1408, !dbg !3397

1408:                                             ; preds = %1407
  %1409 = load i32, ptr %15, align 4, !dbg !3609
  %1410 = load i32, ptr %23, align 4, !dbg !3609
  %1411 = load i32, ptr %11, align 4, !dbg !3609
  %1412 = sub nsw i32 %1410, %1411, !dbg !3609
  %1413 = load ptr, ptr %22, align 8, !dbg !3609
  %1414 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr %1413, i32 0, i32 2, !dbg !3609
  %1415 = load i32, ptr %1414, align 4, !dbg !3609
  %1416 = sub i32 %1412, %1415, !dbg !3609
  %1417 = add i32 %1409, %1416, !dbg !3609
  %1418 = load ptr, ptr %18, align 8, !dbg !3609
  %1419 = getelementptr inbounds nuw i32, ptr %1418, i32 1, !dbg !3609
  store ptr %1419, ptr %18, align 8, !dbg !3609
  store i32 %1417, ptr %1418, align 4, !dbg !3609
  %1420 = load i32, ptr %23, align 4, !dbg !3609
  %1421 = load i32, ptr %11, align 4, !dbg !3609
  %1422 = sub nsw i32 %1420, %1421, !dbg !3609
  %1423 = load ptr, ptr %22, align 8, !dbg !3609
  %1424 = getelementptr inbounds nuw %struct.TIFFFaxTabEnt, ptr %1423, i32 0, i32 2, !dbg !3609
  %1425 = load i32, ptr %1424, align 4, !dbg !3609
  %1426 = sub i32 %1422, %1425, !dbg !3609
  %1427 = load i32, ptr %11, align 4, !dbg !3609
  %1428 = add i32 %1427, %1426, !dbg !3609
  store i32 %1428, ptr %11, align 4, !dbg !3609
  store i32 0, ptr %15, align 4, !dbg !3609
  br label %1429, !dbg !3609

1429:                                             ; preds = %1408
  %1430 = load ptr, ptr %24, align 8, !dbg !3397
  %1431 = getelementptr inbounds i32, ptr %1430, i32 -1, !dbg !3397
  store ptr %1431, ptr %24, align 8, !dbg !3397
  %1432 = load i32, ptr %1431, align 4, !dbg !3397
  %1433 = load i32, ptr %23, align 4, !dbg !3397
  %1434 = sub i32 %1433, %1432, !dbg !3397
  store i32 %1434, ptr %23, align 4, !dbg !3397
  br label %1603, !dbg !3397

1435:                                             ; preds = %747
  %1436 = load i32, ptr %12, align 4, !dbg !3397
  %1437 = load i32, ptr %11, align 4, !dbg !3397
  %1438 = sub nsw i32 %1436, %1437, !dbg !3397
  %1439 = load ptr, ptr %18, align 8, !dbg !3397
  %1440 = getelementptr inbounds nuw i32, ptr %1439, i32 1, !dbg !3397
  store ptr %1440, ptr %18, align 8, !dbg !3397
  store i32 %1438, ptr %1439, align 4, !dbg !3397
  %1441 = load ptr, ptr %6, align 8, !dbg !3397
  %1442 = load i32, ptr %11, align 4, !dbg !3397
  call void @Fax3Extension(ptr noundef @Fax3Decode2D.module, ptr noundef %1441, i32 noundef %1442), !dbg !3397
  br label %1665, !dbg !3397

1443:                                             ; preds = %747
  %1444 = load i32, ptr %12, align 4, !dbg !3397
  %1445 = load i32, ptr %11, align 4, !dbg !3397
  %1446 = sub nsw i32 %1444, %1445, !dbg !3397
  %1447 = load ptr, ptr %18, align 8, !dbg !3397
  %1448 = getelementptr inbounds nuw i32, ptr %1447, i32 1, !dbg !3397
  store ptr %1448, ptr %18, align 8, !dbg !3397
  store i32 %1446, ptr %1447, align 4, !dbg !3397
  br label %1449, !dbg !3397

1449:                                             ; preds = %1443
  %1450 = load i32, ptr %14, align 4, !dbg !3611
  %1451 = icmp slt i32 %1450, 5, !dbg !3611
  br i1 %1451, label %1452, label %1477, !dbg !3611

1452:                                             ; preds = %1449
  %1453 = load ptr, ptr %16, align 8, !dbg !3614
  %1454 = load ptr, ptr %17, align 8, !dbg !3614
  %1455 = icmp uge ptr %1453, %1454, !dbg !3614
  br i1 %1455, label %1456, label %1461, !dbg !3614

1456:                                             ; preds = %1452
  %1457 = load i32, ptr %14, align 4, !dbg !3617
  %1458 = icmp eq i32 %1457, 0, !dbg !3617
  br i1 %1458, label %1459, label %1460, !dbg !3617

1459:                                             ; preds = %1456
  br label %1496, !dbg !3617

1460:                                             ; preds = %1456
  store i32 5, ptr %14, align 4, !dbg !3620
  br label %1476, !dbg !3620

1461:                                             ; preds = %1452
  %1462 = load ptr, ptr %21, align 8, !dbg !3621
  %1463 = load ptr, ptr %16, align 8, !dbg !3621
  %1464 = getelementptr inbounds nuw i8, ptr %1463, i32 1, !dbg !3621
  store ptr %1464, ptr %16, align 8, !dbg !3621
  %1465 = load i8, ptr %1463, align 1, !dbg !3621
  %1466 = zext i8 %1465 to i64, !dbg !3621
  %1467 = getelementptr inbounds nuw i8, ptr %1462, i64 %1466, !dbg !3621
  %1468 = load i8, ptr %1467, align 1, !dbg !3621
  %1469 = zext i8 %1468 to i32, !dbg !3621
  %1470 = load i32, ptr %14, align 4, !dbg !3621
  %1471 = shl i32 %1469, %1470, !dbg !3621
  %1472 = load i32, ptr %13, align 4, !dbg !3621
  %1473 = or i32 %1472, %1471, !dbg !3621
  store i32 %1473, ptr %13, align 4, !dbg !3621
  %1474 = load i32, ptr %14, align 4, !dbg !3621
  %1475 = add nsw i32 %1474, 8, !dbg !3621
  store i32 %1475, ptr %14, align 4, !dbg !3621
  br label %1476

1476:                                             ; preds = %1461, %1460
  br label %1477, !dbg !3623

1477:                                             ; preds = %1476, %1449
  br label %1478, !dbg !3624

1478:                                             ; preds = %1477
  %1479 = load i32, ptr %13, align 4, !dbg !3625
  %1480 = and i32 %1479, 31, !dbg !3625
  %1481 = icmp ne i32 %1480, 0, !dbg !3625
  br i1 %1481, label %1482, label %1485, !dbg !3625

1482:                                             ; preds = %1478
  %1483 = load ptr, ptr %6, align 8, !dbg !3625
  %1484 = load i32, ptr %11, align 4, !dbg !3625
  call void @Fax3Unexpected(ptr noundef @Fax3Decode2D.module, ptr noundef %1483, i32 noundef %1484), !dbg !3625
  br label %1485, !dbg !3625

1485:                                             ; preds = %1482, %1478
  store i32 1, ptr %20, align 4, !dbg !3397
  br label %1665, !dbg !3397

1486:                                             ; preds = %747
  br label %1487, !dbg !3397

1487:                                             ; preds = %1647, %1486
    #dbg_label(!3627, !3397)
  %1488 = load ptr, ptr %6, align 8, !dbg !3397
  %1489 = load i32, ptr %11, align 4, !dbg !3397
  call void @Fax3Unexpected(ptr noundef @Fax3Decode2D.module, ptr noundef %1488, i32 noundef %1489), !dbg !3397
  br label %1665, !dbg !3397

1490:                                             ; preds = %1235, %913
    #dbg_label(!3628, !3397)
  %1491 = load ptr, ptr %6, align 8, !dbg !3397
  %1492 = load i32, ptr %11, align 4, !dbg !3397
  call void @Fax3Unexpected(ptr noundef @Fax3Decode2D.module, ptr noundef %1491, i32 noundef %1492), !dbg !3397
  br label %1665, !dbg !3397

1493:                                             ; preds = %1128, %1020
    #dbg_label(!3629, !3397)
  %1494 = load ptr, ptr %6, align 8, !dbg !3397
  %1495 = load i32, ptr %11, align 4, !dbg !3397
  call void @Fax3Unexpected(ptr noundef @Fax3Decode2D.module, ptr noundef %1494, i32 noundef %1495), !dbg !3397
  br label %1665, !dbg !3397

1496:                                             ; preds = %1624, %1459, %1143, %1036, %928, %821, %709
    #dbg_label(!3630, !3397)
  %1497 = load ptr, ptr %6, align 8, !dbg !3397
  %1498 = load i32, ptr %11, align 4, !dbg !3397
  call void @Fax3PrematureEOF(ptr noundef @Fax3Decode2D.module, ptr noundef %1497, i32 noundef %1498), !dbg !3397
  br label %1499, !dbg !3397

1499:                                             ; preds = %1496
  %1500 = load i32, ptr %15, align 4, !dbg !3631
  %1501 = icmp ne i32 %1500, 0, !dbg !3631
  br i1 %1501, label %1502, label %1511, !dbg !3631

1502:                                             ; preds = %1499
  br label %1503, !dbg !3631

1503:                                             ; preds = %1502
  %1504 = load i32, ptr %15, align 4, !dbg !3634
  %1505 = add nsw i32 %1504, 0, !dbg !3634
  %1506 = load ptr, ptr %18, align 8, !dbg !3634
  %1507 = getelementptr inbounds nuw i32, ptr %1506, i32 1, !dbg !3634
  store ptr %1507, ptr %18, align 8, !dbg !3634
  store i32 %1505, ptr %1506, align 4, !dbg !3634
  %1508 = load i32, ptr %11, align 4, !dbg !3634
  %1509 = add nsw i32 %1508, 0, !dbg !3634
  store i32 %1509, ptr %11, align 4, !dbg !3634
  store i32 0, ptr %15, align 4, !dbg !3634
  br label %1510, !dbg !3634

1510:                                             ; preds = %1503
  br label %1511, !dbg !3634

1511:                                             ; preds = %1510, %1499
  %1512 = load i32, ptr %11, align 4, !dbg !3636
  %1513 = load i32, ptr %12, align 4, !dbg !3636
  %1514 = icmp ne i32 %1512, %1513, !dbg !3636
  br i1 %1514, label %1515, label %1601, !dbg !3636

1515:                                             ; preds = %1511
  %1516 = load ptr, ptr %6, align 8, !dbg !3638
  %1517 = load i32, ptr %11, align 4, !dbg !3638
  %1518 = load i32, ptr %12, align 4, !dbg !3638
  call void @Fax3BadLength(ptr noundef @Fax3Decode2D.module, ptr noundef %1516, i32 noundef %1517, i32 noundef %1518), !dbg !3638
  br label %1519, !dbg !3638

1519:                                             ; preds = %1529, %1515
  %1520 = load i32, ptr %11, align 4, !dbg !3638
  %1521 = load i32, ptr %12, align 4, !dbg !3638
  %1522 = icmp sgt i32 %1520, %1521, !dbg !3638
  br i1 %1522, label %1523, label %1527, !dbg !3638

1523:                                             ; preds = %1519
  %1524 = load ptr, ptr %18, align 8, !dbg !3638
  %1525 = load ptr, ptr %19, align 8, !dbg !3638
  %1526 = icmp ugt ptr %1524, %1525, !dbg !3638
  br label %1527

1527:                                             ; preds = %1523, %1519
  %1528 = phi i1 [ false, %1519 ], [ %1526, %1523 ], !dbg !3640
  br i1 %1528, label %1529, label %1535, !dbg !3638

1529:                                             ; preds = %1527
  %1530 = load ptr, ptr %18, align 8, !dbg !3638
  %1531 = getelementptr inbounds i32, ptr %1530, i32 -1, !dbg !3638
  store ptr %1531, ptr %18, align 8, !dbg !3638
  %1532 = load i32, ptr %1531, align 4, !dbg !3638
  %1533 = load i32, ptr %11, align 4, !dbg !3638
  %1534 = sub i32 %1533, %1532, !dbg !3638
  store i32 %1534, ptr %11, align 4, !dbg !3638
  br label %1519, !dbg !3638, !llvm.loop !3641

1535:                                             ; preds = %1527
  %1536 = load i32, ptr %11, align 4, !dbg !3642
  %1537 = load i32, ptr %12, align 4, !dbg !3642
  %1538 = icmp slt i32 %1536, %1537, !dbg !3642
  br i1 %1538, label %1539, label %1576, !dbg !3642

1539:                                             ; preds = %1535
  %1540 = load i32, ptr %11, align 4, !dbg !3644
  %1541 = icmp slt i32 %1540, 0, !dbg !3644
  br i1 %1541, label %1542, label %1543, !dbg !3644

1542:                                             ; preds = %1539
  store i32 0, ptr %11, align 4, !dbg !3644
  br label %1543, !dbg !3644

1543:                                             ; preds = %1542, %1539
  %1544 = load ptr, ptr %18, align 8, !dbg !3647
  %1545 = load ptr, ptr %19, align 8, !dbg !3647
  %1546 = ptrtoint ptr %1544 to i64, !dbg !3647
  %1547 = ptrtoint ptr %1545 to i64, !dbg !3647
  %1548 = sub i64 %1546, %1547, !dbg !3647
  %1549 = sdiv exact i64 %1548, 4, !dbg !3647
  %1550 = and i64 %1549, 1, !dbg !3647
  %1551 = icmp ne i64 %1550, 0, !dbg !3647
  br i1 %1551, label %1552, label %1561, !dbg !3647

1552:                                             ; preds = %1543
  br label %1553, !dbg !3647

1553:                                             ; preds = %1552
  %1554 = load i32, ptr %15, align 4, !dbg !3649
  %1555 = add nsw i32 %1554, 0, !dbg !3649
  %1556 = load ptr, ptr %18, align 8, !dbg !3649
  %1557 = getelementptr inbounds nuw i32, ptr %1556, i32 1, !dbg !3649
  store ptr %1557, ptr %18, align 8, !dbg !3649
  store i32 %1555, ptr %1556, align 4, !dbg !3649
  %1558 = load i32, ptr %11, align 4, !dbg !3649
  %1559 = add nsw i32 %1558, 0, !dbg !3649
  store i32 %1559, ptr %11, align 4, !dbg !3649
  store i32 0, ptr %15, align 4, !dbg !3649
  br label %1560, !dbg !3649

1560:                                             ; preds = %1553
  br label %1561, !dbg !3649

1561:                                             ; preds = %1560, %1543
  br label %1562, !dbg !3651

1562:                                             ; preds = %1561
  %1563 = load i32, ptr %15, align 4, !dbg !3652
  %1564 = load i32, ptr %12, align 4, !dbg !3652
  %1565 = load i32, ptr %11, align 4, !dbg !3652
  %1566 = sub nsw i32 %1564, %1565, !dbg !3652
  %1567 = add nsw i32 %1563, %1566, !dbg !3652
  %1568 = load ptr, ptr %18, align 8, !dbg !3652
  %1569 = getelementptr inbounds nuw i32, ptr %1568, i32 1, !dbg !3652
  store ptr %1569, ptr %18, align 8, !dbg !3652
  store i32 %1567, ptr %1568, align 4, !dbg !3652
  %1570 = load i32, ptr %12, align 4, !dbg !3652
  %1571 = load i32, ptr %11, align 4, !dbg !3652
  %1572 = sub nsw i32 %1570, %1571, !dbg !3652
  %1573 = load i32, ptr %11, align 4, !dbg !3652
  %1574 = add nsw i32 %1573, %1572, !dbg !3652
  store i32 %1574, ptr %11, align 4, !dbg !3652
  store i32 0, ptr %15, align 4, !dbg !3652
  br label %1575, !dbg !3652

1575:                                             ; preds = %1562
  br label %1600, !dbg !3651

1576:                                             ; preds = %1535
  %1577 = load i32, ptr %11, align 4, !dbg !3654
  %1578 = load i32, ptr %12, align 4, !dbg !3654
  %1579 = icmp sgt i32 %1577, %1578, !dbg !3654
  br i1 %1579, label %1580, label %1599, !dbg !3654

1580:                                             ; preds = %1576
  br label %1581, !dbg !3656

1581:                                             ; preds = %1580
  %1582 = load i32, ptr %15, align 4, !dbg !3658
  %1583 = load i32, ptr %12, align 4, !dbg !3658
  %1584 = add nsw i32 %1582, %1583, !dbg !3658
  %1585 = load ptr, ptr %18, align 8, !dbg !3658
  %1586 = getelementptr inbounds nuw i32, ptr %1585, i32 1, !dbg !3658
  store ptr %1586, ptr %18, align 8, !dbg !3658
  store i32 %1584, ptr %1585, align 4, !dbg !3658
  %1587 = load i32, ptr %12, align 4, !dbg !3658
  %1588 = load i32, ptr %11, align 4, !dbg !3658
  %1589 = add nsw i32 %1588, %1587, !dbg !3658
  store i32 %1589, ptr %11, align 4, !dbg !3658
  store i32 0, ptr %15, align 4, !dbg !3658
  br label %1590, !dbg !3658

1590:                                             ; preds = %1581
  br label %1591, !dbg !3656

1591:                                             ; preds = %1590
  %1592 = load i32, ptr %15, align 4, !dbg !3660
  %1593 = add nsw i32 %1592, 0, !dbg !3660
  %1594 = load ptr, ptr %18, align 8, !dbg !3660
  %1595 = getelementptr inbounds nuw i32, ptr %1594, i32 1, !dbg !3660
  store ptr %1595, ptr %18, align 8, !dbg !3660
  store i32 %1593, ptr %1594, align 4, !dbg !3660
  %1596 = load i32, ptr %11, align 4, !dbg !3660
  %1597 = add nsw i32 %1596, 0, !dbg !3660
  store i32 %1597, ptr %11, align 4, !dbg !3660
  store i32 0, ptr %15, align 4, !dbg !3660
  br label %1598, !dbg !3660

1598:                                             ; preds = %1591
  br label %1599, !dbg !3656

1599:                                             ; preds = %1598, %1576
  br label %1600

1600:                                             ; preds = %1599, %1575
  br label %1601, !dbg !3638

1601:                                             ; preds = %1600, %1511
  br label %1602, !dbg !3662

1602:                                             ; preds = %1601
  br label %1924, !dbg !3397

1603:                                             ; preds = %1429, %1371, %1313, %1268, %782
  br label %693, !dbg !3375, !llvm.loop !3663

1604:                                             ; preds = %693
  %1605 = load i32, ptr %15, align 4, !dbg !3664
  %1606 = icmp ne i32 %1605, 0, !dbg !3664
  br i1 %1606, label %1607, label %1664, !dbg !3664

1607:                                             ; preds = %1604
  %1608 = load i32, ptr %15, align 4, !dbg !3666
  %1609 = load i32, ptr %11, align 4, !dbg !3666
  %1610 = add nsw i32 %1608, %1609, !dbg !3666
  %1611 = load i32, ptr %12, align 4, !dbg !3666
  %1612 = icmp slt i32 %1610, %1611, !dbg !3666
  br i1 %1612, label %1613, label %1655, !dbg !3666

1613:                                             ; preds = %1607
  br label %1614, !dbg !3669

1614:                                             ; preds = %1613
  %1615 = load i32, ptr %14, align 4, !dbg !3671
  %1616 = icmp slt i32 %1615, 1, !dbg !3671
  br i1 %1616, label %1617, label %1642, !dbg !3671

1617:                                             ; preds = %1614
  %1618 = load ptr, ptr %16, align 8, !dbg !3674
  %1619 = load ptr, ptr %17, align 8, !dbg !3674
  %1620 = icmp uge ptr %1618, %1619, !dbg !3674
  br i1 %1620, label %1621, label %1626, !dbg !3674

1621:                                             ; preds = %1617
  %1622 = load i32, ptr %14, align 4, !dbg !3677
  %1623 = icmp eq i32 %1622, 0, !dbg !3677
  br i1 %1623, label %1624, label %1625, !dbg !3677

1624:                                             ; preds = %1621
  br label %1496, !dbg !3677

1625:                                             ; preds = %1621
  store i32 1, ptr %14, align 4, !dbg !3680
  br label %1641, !dbg !3680

1626:                                             ; preds = %1617
  %1627 = load ptr, ptr %21, align 8, !dbg !3681
  %1628 = load ptr, ptr %16, align 8, !dbg !3681
  %1629 = getelementptr inbounds nuw i8, ptr %1628, i32 1, !dbg !3681
  store ptr %1629, ptr %16, align 8, !dbg !3681
  %1630 = load i8, ptr %1628, align 1, !dbg !3681
  %1631 = zext i8 %1630 to i64, !dbg !3681
  %1632 = getelementptr inbounds nuw i8, ptr %1627, i64 %1631, !dbg !3681
  %1633 = load i8, ptr %1632, align 1, !dbg !3681
  %1634 = zext i8 %1633 to i32, !dbg !3681
  %1635 = load i32, ptr %14, align 4, !dbg !3681
  %1636 = shl i32 %1634, %1635, !dbg !3681
  %1637 = load i32, ptr %13, align 4, !dbg !3681
  %1638 = or i32 %1637, %1636, !dbg !3681
  store i32 %1638, ptr %13, align 4, !dbg !3681
  %1639 = load i32, ptr %14, align 4, !dbg !3681
  %1640 = add nsw i32 %1639, 8, !dbg !3681
  store i32 %1640, ptr %14, align 4, !dbg !3681
  br label %1641

1641:                                             ; preds = %1626, %1625
  br label %1642, !dbg !3683

1642:                                             ; preds = %1641, %1614
  br label %1643, !dbg !3684

1643:                                             ; preds = %1642
  %1644 = load i32, ptr %13, align 4, !dbg !3685
  %1645 = and i32 %1644, 1, !dbg !3685
  %1646 = icmp ne i32 %1645, 0, !dbg !3685
  br i1 %1646, label %1648, label %1647, !dbg !3685

1647:                                             ; preds = %1643
  br label %1487, !dbg !3685

1648:                                             ; preds = %1643
  br label %1649, !dbg !3669

1649:                                             ; preds = %1648
  %1650 = load i32, ptr %14, align 4, !dbg !3687
  %1651 = sub nsw i32 %1650, 1, !dbg !3687
  store i32 %1651, ptr %14, align 4, !dbg !3687
  %1652 = load i32, ptr %13, align 4, !dbg !3687
  %1653 = lshr i32 %1652, 1, !dbg !3687
  store i32 %1653, ptr %13, align 4, !dbg !3687
  br label %1654, !dbg !3687

1654:                                             ; preds = %1649
  br label %1655, !dbg !3669

1655:                                             ; preds = %1654, %1607
  br label %1656, !dbg !3689

1656:                                             ; preds = %1655
  %1657 = load i32, ptr %15, align 4, !dbg !3690
  %1658 = add nsw i32 %1657, 0, !dbg !3690
  %1659 = load ptr, ptr %18, align 8, !dbg !3690
  %1660 = getelementptr inbounds nuw i32, ptr %1659, i32 1, !dbg !3690
  store ptr %1660, ptr %18, align 8, !dbg !3690
  store i32 %1658, ptr %1659, align 4, !dbg !3690
  %1661 = load i32, ptr %11, align 4, !dbg !3690
  %1662 = add nsw i32 %1661, 0, !dbg !3690
  store i32 %1662, ptr %11, align 4, !dbg !3690
  store i32 0, ptr %15, align 4, !dbg !3690
  br label %1663, !dbg !3690

1663:                                             ; preds = %1656
  br label %1664, !dbg !3689

1664:                                             ; preds = %1663, %1604
  br label %1665, !dbg !3664

1665:                                             ; preds = %1664, %1493, %1490, %1487, %1485, %1435
    #dbg_label(!3692, !3375)
  br label %1666, !dbg !3375

1666:                                             ; preds = %1665
  %1667 = load i32, ptr %15, align 4, !dbg !3693
  %1668 = icmp ne i32 %1667, 0, !dbg !3693
  br i1 %1668, label %1669, label %1678, !dbg !3693

1669:                                             ; preds = %1666
  br label %1670, !dbg !3693

1670:                                             ; preds = %1669
  %1671 = load i32, ptr %15, align 4, !dbg !3696
  %1672 = add nsw i32 %1671, 0, !dbg !3696
  %1673 = load ptr, ptr %18, align 8, !dbg !3696
  %1674 = getelementptr inbounds nuw i32, ptr %1673, i32 1, !dbg !3696
  store ptr %1674, ptr %18, align 8, !dbg !3696
  store i32 %1672, ptr %1673, align 4, !dbg !3696
  %1675 = load i32, ptr %11, align 4, !dbg !3696
  %1676 = add nsw i32 %1675, 0, !dbg !3696
  store i32 %1676, ptr %11, align 4, !dbg !3696
  store i32 0, ptr %15, align 4, !dbg !3696
  br label %1677, !dbg !3696

1677:                                             ; preds = %1670
  br label %1678, !dbg !3696

1678:                                             ; preds = %1677, %1666
  %1679 = load i32, ptr %11, align 4, !dbg !3698
  %1680 = load i32, ptr %12, align 4, !dbg !3698
  %1681 = icmp ne i32 %1679, %1680, !dbg !3698
  br i1 %1681, label %1682, label %1768, !dbg !3698

1682:                                             ; preds = %1678
  %1683 = load ptr, ptr %6, align 8, !dbg !3700
  %1684 = load i32, ptr %11, align 4, !dbg !3700
  %1685 = load i32, ptr %12, align 4, !dbg !3700
  call void @Fax3BadLength(ptr noundef @Fax3Decode2D.module, ptr noundef %1683, i32 noundef %1684, i32 noundef %1685), !dbg !3700
  br label %1686, !dbg !3700

1686:                                             ; preds = %1696, %1682
  %1687 = load i32, ptr %11, align 4, !dbg !3700
  %1688 = load i32, ptr %12, align 4, !dbg !3700
  %1689 = icmp sgt i32 %1687, %1688, !dbg !3700
  br i1 %1689, label %1690, label %1694, !dbg !3700

1690:                                             ; preds = %1686
  %1691 = load ptr, ptr %18, align 8, !dbg !3700
  %1692 = load ptr, ptr %19, align 8, !dbg !3700
  %1693 = icmp ugt ptr %1691, %1692, !dbg !3700
  br label %1694

1694:                                             ; preds = %1690, %1686
  %1695 = phi i1 [ false, %1686 ], [ %1693, %1690 ], !dbg !3702
  br i1 %1695, label %1696, label %1702, !dbg !3700

1696:                                             ; preds = %1694
  %1697 = load ptr, ptr %18, align 8, !dbg !3700
  %1698 = getelementptr inbounds i32, ptr %1697, i32 -1, !dbg !3700
  store ptr %1698, ptr %18, align 8, !dbg !3700
  %1699 = load i32, ptr %1698, align 4, !dbg !3700
  %1700 = load i32, ptr %11, align 4, !dbg !3700
  %1701 = sub i32 %1700, %1699, !dbg !3700
  store i32 %1701, ptr %11, align 4, !dbg !3700
  br label %1686, !dbg !3700, !llvm.loop !3703

1702:                                             ; preds = %1694
  %1703 = load i32, ptr %11, align 4, !dbg !3704
  %1704 = load i32, ptr %12, align 4, !dbg !3704
  %1705 = icmp slt i32 %1703, %1704, !dbg !3704
  br i1 %1705, label %1706, label %1743, !dbg !3704

1706:                                             ; preds = %1702
  %1707 = load i32, ptr %11, align 4, !dbg !3706
  %1708 = icmp slt i32 %1707, 0, !dbg !3706
  br i1 %1708, label %1709, label %1710, !dbg !3706

1709:                                             ; preds = %1706
  store i32 0, ptr %11, align 4, !dbg !3706
  br label %1710, !dbg !3706

1710:                                             ; preds = %1709, %1706
  %1711 = load ptr, ptr %18, align 8, !dbg !3709
  %1712 = load ptr, ptr %19, align 8, !dbg !3709
  %1713 = ptrtoint ptr %1711 to i64, !dbg !3709
  %1714 = ptrtoint ptr %1712 to i64, !dbg !3709
  %1715 = sub i64 %1713, %1714, !dbg !3709
  %1716 = sdiv exact i64 %1715, 4, !dbg !3709
  %1717 = and i64 %1716, 1, !dbg !3709
  %1718 = icmp ne i64 %1717, 0, !dbg !3709
  br i1 %1718, label %1719, label %1728, !dbg !3709

1719:                                             ; preds = %1710
  br label %1720, !dbg !3709

1720:                                             ; preds = %1719
  %1721 = load i32, ptr %15, align 4, !dbg !3711
  %1722 = add nsw i32 %1721, 0, !dbg !3711
  %1723 = load ptr, ptr %18, align 8, !dbg !3711
  %1724 = getelementptr inbounds nuw i32, ptr %1723, i32 1, !dbg !3711
  store ptr %1724, ptr %18, align 8, !dbg !3711
  store i32 %1722, ptr %1723, align 4, !dbg !3711
  %1725 = load i32, ptr %11, align 4, !dbg !3711
  %1726 = add nsw i32 %1725, 0, !dbg !3711
  store i32 %1726, ptr %11, align 4, !dbg !3711
  store i32 0, ptr %15, align 4, !dbg !3711
  br label %1727, !dbg !3711

1727:                                             ; preds = %1720
  br label %1728, !dbg !3711

1728:                                             ; preds = %1727, %1710
  br label %1729, !dbg !3713

1729:                                             ; preds = %1728
  %1730 = load i32, ptr %15, align 4, !dbg !3714
  %1731 = load i32, ptr %12, align 4, !dbg !3714
  %1732 = load i32, ptr %11, align 4, !dbg !3714
  %1733 = sub nsw i32 %1731, %1732, !dbg !3714
  %1734 = add nsw i32 %1730, %1733, !dbg !3714
  %1735 = load ptr, ptr %18, align 8, !dbg !3714
  %1736 = getelementptr inbounds nuw i32, ptr %1735, i32 1, !dbg !3714
  store ptr %1736, ptr %18, align 8, !dbg !3714
  store i32 %1734, ptr %1735, align 4, !dbg !3714
  %1737 = load i32, ptr %12, align 4, !dbg !3714
  %1738 = load i32, ptr %11, align 4, !dbg !3714
  %1739 = sub nsw i32 %1737, %1738, !dbg !3714
  %1740 = load i32, ptr %11, align 4, !dbg !3714
  %1741 = add nsw i32 %1740, %1739, !dbg !3714
  store i32 %1741, ptr %11, align 4, !dbg !3714
  store i32 0, ptr %15, align 4, !dbg !3714
  br label %1742, !dbg !3714

1742:                                             ; preds = %1729
  br label %1767, !dbg !3713

1743:                                             ; preds = %1702
  %1744 = load i32, ptr %11, align 4, !dbg !3716
  %1745 = load i32, ptr %12, align 4, !dbg !3716
  %1746 = icmp sgt i32 %1744, %1745, !dbg !3716
  br i1 %1746, label %1747, label %1766, !dbg !3716

1747:                                             ; preds = %1743
  br label %1748, !dbg !3718

1748:                                             ; preds = %1747
  %1749 = load i32, ptr %15, align 4, !dbg !3720
  %1750 = load i32, ptr %12, align 4, !dbg !3720
  %1751 = add nsw i32 %1749, %1750, !dbg !3720
  %1752 = load ptr, ptr %18, align 8, !dbg !3720
  %1753 = getelementptr inbounds nuw i32, ptr %1752, i32 1, !dbg !3720
  store ptr %1753, ptr %18, align 8, !dbg !3720
  store i32 %1751, ptr %1752, align 4, !dbg !3720
  %1754 = load i32, ptr %12, align 4, !dbg !3720
  %1755 = load i32, ptr %11, align 4, !dbg !3720
  %1756 = add nsw i32 %1755, %1754, !dbg !3720
  store i32 %1756, ptr %11, align 4, !dbg !3720
  store i32 0, ptr %15, align 4, !dbg !3720
  br label %1757, !dbg !3720

1757:                                             ; preds = %1748
  br label %1758, !dbg !3718

1758:                                             ; preds = %1757
  %1759 = load i32, ptr %15, align 4, !dbg !3722
  %1760 = add nsw i32 %1759, 0, !dbg !3722
  %1761 = load ptr, ptr %18, align 8, !dbg !3722
  %1762 = getelementptr inbounds nuw i32, ptr %1761, i32 1, !dbg !3722
  store ptr %1762, ptr %18, align 8, !dbg !3722
  store i32 %1760, ptr %1761, align 4, !dbg !3722
  %1763 = load i32, ptr %11, align 4, !dbg !3722
  %1764 = add nsw i32 %1763, 0, !dbg !3722
  store i32 %1764, ptr %11, align 4, !dbg !3722
  store i32 0, ptr %15, align 4, !dbg !3722
  br label %1765, !dbg !3722

1765:                                             ; preds = %1758
  br label %1766, !dbg !3718

1766:                                             ; preds = %1765, %1743
  br label %1767

1767:                                             ; preds = %1766, %1742
  br label %1768, !dbg !3700

1768:                                             ; preds = %1767, %1678
  br label %1769, !dbg !3724

1769:                                             ; preds = %1768
  br label %1770, !dbg !3375

1770:                                             ; preds = %1769
  br label %1771

1771:                                             ; preds = %1770, %690
  %1772 = load ptr, ptr %10, align 8, !dbg !3725
  %1773 = getelementptr inbounds nuw %struct.Fax3DecodeState, ptr %1772, i32 0, i32 5, !dbg !3726
  %1774 = load ptr, ptr %1773, align 8, !dbg !3726
  %1775 = load ptr, ptr %7, align 8, !dbg !3727
  %1776 = load ptr, ptr %19, align 8, !dbg !3728
  %1777 = load ptr, ptr %18, align 8, !dbg !3729
  %1778 = load i32, ptr %12, align 4, !dbg !3730
  call void %1774(ptr noundef %1775, ptr noundef %1776, ptr noundef %1777, i32 noundef %1778), !dbg !3731
  br label %1779, !dbg !3732

1779:                                             ; preds = %1771
  %1780 = load i32, ptr %15, align 4, !dbg !3733
  %1781 = add nsw i32 %1780, 0, !dbg !3733
  %1782 = load ptr, ptr %18, align 8, !dbg !3733
  %1783 = getelementptr inbounds nuw i32, ptr %1782, i32 1, !dbg !3733
  store ptr %1783, ptr %18, align 8, !dbg !3733
  store i32 %1781, ptr %1782, align 4, !dbg !3733
  %1784 = load i32, ptr %11, align 4, !dbg !3733
  %1785 = add nsw i32 %1784, 0, !dbg !3733
  store i32 %1785, ptr %11, align 4, !dbg !3733
  store i32 0, ptr %15, align 4, !dbg !3733
  br label %1786, !dbg !3733

1786:                                             ; preds = %1779
    #dbg_declare(ptr %26, !3735, !DIExpression(), !3737)
  %1787 = load ptr, ptr %10, align 8, !dbg !3737
  %1788 = getelementptr inbounds nuw %struct.Fax3DecodeState, ptr %1787, i32 0, i32 8, !dbg !3737
  %1789 = load ptr, ptr %1788, align 8, !dbg !3737
  store ptr %1789, ptr %26, align 8, !dbg !3737
  %1790 = load ptr, ptr %10, align 8, !dbg !3737
  %1791 = getelementptr inbounds nuw %struct.Fax3DecodeState, ptr %1790, i32 0, i32 7, !dbg !3737
  %1792 = load ptr, ptr %1791, align 8, !dbg !3737
  %1793 = load ptr, ptr %10, align 8, !dbg !3737
  %1794 = getelementptr inbounds nuw %struct.Fax3DecodeState, ptr %1793, i32 0, i32 8, !dbg !3737
  store ptr %1792, ptr %1794, align 8, !dbg !3737
  %1795 = load ptr, ptr %26, align 8, !dbg !3737
  %1796 = load ptr, ptr %10, align 8, !dbg !3737
  %1797 = getelementptr inbounds nuw %struct.Fax3DecodeState, ptr %1796, i32 0, i32 7, !dbg !3737
  store ptr %1795, ptr %1797, align 8, !dbg !3737
  %1798 = load ptr, ptr %10, align 8, !dbg !3738
  %1799 = getelementptr inbounds nuw %struct.Fax3DecodeState, ptr %1798, i32 0, i32 0, !dbg !3739
  %1800 = getelementptr inbounds nuw %struct.Fax3BaseState, ptr %1799, i32 0, i32 1, !dbg !3740
  %1801 = load i32, ptr %1800, align 4, !dbg !3740
  %1802 = load ptr, ptr %7, align 8, !dbg !3741
  %1803 = zext i32 %1801 to i64, !dbg !3741
  %1804 = getelementptr inbounds nuw i8, ptr %1802, i64 %1803, !dbg !3741
  store ptr %1804, ptr %7, align 8, !dbg !3741
  %1805 = load ptr, ptr %10, align 8, !dbg !3742
  %1806 = getelementptr inbounds nuw %struct.Fax3DecodeState, ptr %1805, i32 0, i32 0, !dbg !3743
  %1807 = getelementptr inbounds nuw %struct.Fax3BaseState, ptr %1806, i32 0, i32 1, !dbg !3744
  %1808 = load i32, ptr %1807, align 4, !dbg !3744
  %1809 = load i32, ptr %8, align 4, !dbg !3745
  %1810 = sub i32 %1809, %1808, !dbg !3745
  store i32 %1810, ptr %8, align 4, !dbg !3745
  %1811 = load i32, ptr %8, align 4, !dbg !3746
  %1812 = icmp ne i32 %1811, 0, !dbg !3748
  br i1 %1812, label %1813, label %1818, !dbg !3748

1813:                                             ; preds = %1786
  %1814 = load ptr, ptr %6, align 8, !dbg !3749
  %1815 = getelementptr inbounds nuw %struct.tiff, ptr %1814, i32 0, i32 11, !dbg !3750
  %1816 = load i32, ptr %1815, align 8, !dbg !3751
  %1817 = add i32 %1816, 1, !dbg !3751
  store i32 %1817, ptr %1815, align 8, !dbg !3751
  br label %1818, !dbg !3749

1818:                                             ; preds = %1813, %1786
  br label %58, !dbg !3752, !llvm.loop !3753

1819:                                             ; preds = %209, %148, %81
    #dbg_label(!3755, !3756)
  br label %1820, !dbg !3757

1820:                                             ; preds = %1819
  %1821 = load i32, ptr %15, align 4, !dbg !3758
  %1822 = icmp ne i32 %1821, 0, !dbg !3758
  br i1 %1822, label %1823, label %1832, !dbg !3758

1823:                                             ; preds = %1820
  br label %1824, !dbg !3758

1824:                                             ; preds = %1823
  %1825 = load i32, ptr %15, align 4, !dbg !3761
  %1826 = add nsw i32 %1825, 0, !dbg !3761
  %1827 = load ptr, ptr %18, align 8, !dbg !3761
  %1828 = getelementptr inbounds nuw i32, ptr %1827, i32 1, !dbg !3761
  store ptr %1828, ptr %18, align 8, !dbg !3761
  store i32 %1826, ptr %1827, align 4, !dbg !3761
  %1829 = load i32, ptr %11, align 4, !dbg !3761
  %1830 = add nsw i32 %1829, 0, !dbg !3761
  store i32 %1830, ptr %11, align 4, !dbg !3761
  store i32 0, ptr %15, align 4, !dbg !3761
  br label %1831, !dbg !3761

1831:                                             ; preds = %1824
  br label %1832, !dbg !3761

1832:                                             ; preds = %1831, %1820
  %1833 = load i32, ptr %11, align 4, !dbg !3763
  %1834 = load i32, ptr %12, align 4, !dbg !3763
  %1835 = icmp ne i32 %1833, %1834, !dbg !3763
  br i1 %1835, label %1836, label %1922, !dbg !3763

1836:                                             ; preds = %1832
  %1837 = load ptr, ptr %6, align 8, !dbg !3765
  %1838 = load i32, ptr %11, align 4, !dbg !3765
  %1839 = load i32, ptr %12, align 4, !dbg !3765
  call void @Fax3BadLength(ptr noundef @Fax3Decode2D.module, ptr noundef %1837, i32 noundef %1838, i32 noundef %1839), !dbg !3765
  br label %1840, !dbg !3765

1840:                                             ; preds = %1850, %1836
  %1841 = load i32, ptr %11, align 4, !dbg !3765
  %1842 = load i32, ptr %12, align 4, !dbg !3765
  %1843 = icmp sgt i32 %1841, %1842, !dbg !3765
  br i1 %1843, label %1844, label %1848, !dbg !3765

1844:                                             ; preds = %1840
  %1845 = load ptr, ptr %18, align 8, !dbg !3765
  %1846 = load ptr, ptr %19, align 8, !dbg !3765
  %1847 = icmp ugt ptr %1845, %1846, !dbg !3765
  br label %1848

1848:                                             ; preds = %1844, %1840
  %1849 = phi i1 [ false, %1840 ], [ %1847, %1844 ], !dbg !3767
  br i1 %1849, label %1850, label %1856, !dbg !3765

1850:                                             ; preds = %1848
  %1851 = load ptr, ptr %18, align 8, !dbg !3765
  %1852 = getelementptr inbounds i32, ptr %1851, i32 -1, !dbg !3765
  store ptr %1852, ptr %18, align 8, !dbg !3765
  %1853 = load i32, ptr %1852, align 4, !dbg !3765
  %1854 = load i32, ptr %11, align 4, !dbg !3765
  %1855 = sub i32 %1854, %1853, !dbg !3765
  store i32 %1855, ptr %11, align 4, !dbg !3765
  br label %1840, !dbg !3765, !llvm.loop !3768

1856:                                             ; preds = %1848
  %1857 = load i32, ptr %11, align 4, !dbg !3769
  %1858 = load i32, ptr %12, align 4, !dbg !3769
  %1859 = icmp slt i32 %1857, %1858, !dbg !3769
  br i1 %1859, label %1860, label %1897, !dbg !3769

1860:                                             ; preds = %1856
  %1861 = load i32, ptr %11, align 4, !dbg !3771
  %1862 = icmp slt i32 %1861, 0, !dbg !3771
  br i1 %1862, label %1863, label %1864, !dbg !3771

1863:                                             ; preds = %1860
  store i32 0, ptr %11, align 4, !dbg !3771
  br label %1864, !dbg !3771

1864:                                             ; preds = %1863, %1860
  %1865 = load ptr, ptr %18, align 8, !dbg !3774
  %1866 = load ptr, ptr %19, align 8, !dbg !3774
  %1867 = ptrtoint ptr %1865 to i64, !dbg !3774
  %1868 = ptrtoint ptr %1866 to i64, !dbg !3774
  %1869 = sub i64 %1867, %1868, !dbg !3774
  %1870 = sdiv exact i64 %1869, 4, !dbg !3774
  %1871 = and i64 %1870, 1, !dbg !3774
  %1872 = icmp ne i64 %1871, 0, !dbg !3774
  br i1 %1872, label %1873, label %1882, !dbg !3774

1873:                                             ; preds = %1864
  br label %1874, !dbg !3774

1874:                                             ; preds = %1873
  %1875 = load i32, ptr %15, align 4, !dbg !3776
  %1876 = add nsw i32 %1875, 0, !dbg !3776
  %1877 = load ptr, ptr %18, align 8, !dbg !3776
  %1878 = getelementptr inbounds nuw i32, ptr %1877, i32 1, !dbg !3776
  store ptr %1878, ptr %18, align 8, !dbg !3776
  store i32 %1876, ptr %1877, align 4, !dbg !3776
  %1879 = load i32, ptr %11, align 4, !dbg !3776
  %1880 = add nsw i32 %1879, 0, !dbg !3776
  store i32 %1880, ptr %11, align 4, !dbg !3776
  store i32 0, ptr %15, align 4, !dbg !3776
  br label %1881, !dbg !3776

1881:                                             ; preds = %1874
  br label %1882, !dbg !3776

1882:                                             ; preds = %1881, %1864
  br label %1883, !dbg !3778

1883:                                             ; preds = %1882
  %1884 = load i32, ptr %15, align 4, !dbg !3779
  %1885 = load i32, ptr %12, align 4, !dbg !3779
  %1886 = load i32, ptr %11, align 4, !dbg !3779
  %1887 = sub nsw i32 %1885, %1886, !dbg !3779
  %1888 = add nsw i32 %1884, %1887, !dbg !3779
  %1889 = load ptr, ptr %18, align 8, !dbg !3779
  %1890 = getelementptr inbounds nuw i32, ptr %1889, i32 1, !dbg !3779
  store ptr %1890, ptr %18, align 8, !dbg !3779
  store i32 %1888, ptr %1889, align 4, !dbg !3779
  %1891 = load i32, ptr %12, align 4, !dbg !3779
  %1892 = load i32, ptr %11, align 4, !dbg !3779
  %1893 = sub nsw i32 %1891, %1892, !dbg !3779
  %1894 = load i32, ptr %11, align 4, !dbg !3779
  %1895 = add nsw i32 %1894, %1893, !dbg !3779
  store i32 %1895, ptr %11, align 4, !dbg !3779
  store i32 0, ptr %15, align 4, !dbg !3779
  br label %1896, !dbg !3779

1896:                                             ; preds = %1883
  br label %1921, !dbg !3778

1897:                                             ; preds = %1856
  %1898 = load i32, ptr %11, align 4, !dbg !3781
  %1899 = load i32, ptr %12, align 4, !dbg !3781
  %1900 = icmp sgt i32 %1898, %1899, !dbg !3781
  br i1 %1900, label %1901, label %1920, !dbg !3781

1901:                                             ; preds = %1897
  br label %1902, !dbg !3783

1902:                                             ; preds = %1901
  %1903 = load i32, ptr %15, align 4, !dbg !3785
  %1904 = load i32, ptr %12, align 4, !dbg !3785
  %1905 = add nsw i32 %1903, %1904, !dbg !3785
  %1906 = load ptr, ptr %18, align 8, !dbg !3785
  %1907 = getelementptr inbounds nuw i32, ptr %1906, i32 1, !dbg !3785
  store ptr %1907, ptr %18, align 8, !dbg !3785
  store i32 %1905, ptr %1906, align 4, !dbg !3785
  %1908 = load i32, ptr %12, align 4, !dbg !3785
  %1909 = load i32, ptr %11, align 4, !dbg !3785
  %1910 = add nsw i32 %1909, %1908, !dbg !3785
  store i32 %1910, ptr %11, align 4, !dbg !3785
  store i32 0, ptr %15, align 4, !dbg !3785
  br label %1911, !dbg !3785

1911:                                             ; preds = %1902
  br label %1912, !dbg !3783

1912:                                             ; preds = %1911
  %1913 = load i32, ptr %15, align 4, !dbg !3787
  %1914 = add nsw i32 %1913, 0, !dbg !3787
  %1915 = load ptr, ptr %18, align 8, !dbg !3787
  %1916 = getelementptr inbounds nuw i32, ptr %1915, i32 1, !dbg !3787
  store ptr %1916, ptr %18, align 8, !dbg !3787
  store i32 %1914, ptr %1915, align 4, !dbg !3787
  %1917 = load i32, ptr %11, align 4, !dbg !3787
  %1918 = add nsw i32 %1917, 0, !dbg !3787
  store i32 %1918, ptr %11, align 4, !dbg !3787
  store i32 0, ptr %15, align 4, !dbg !3787
  br label %1919, !dbg !3787

1919:                                             ; preds = %1912
  br label %1920, !dbg !3783

1920:                                             ; preds = %1919, %1897
  br label %1921

1921:                                             ; preds = %1920, %1896
  br label %1922, !dbg !3765

1922:                                             ; preds = %1921, %1832
  br label %1923, !dbg !3789

1923:                                             ; preds = %1922
  br label %1924, !dbg !3789

1924:                                             ; preds = %1923, %1602, %584
    #dbg_label(!3790, !3791)
  %1925 = load ptr, ptr %10, align 8, !dbg !3792
  %1926 = getelementptr inbounds nuw %struct.Fax3DecodeState, ptr %1925, i32 0, i32 5, !dbg !3793
  %1927 = load ptr, ptr %1926, align 8, !dbg !3793
  %1928 = load ptr, ptr %7, align 8, !dbg !3794
  %1929 = load ptr, ptr %19, align 8, !dbg !3795
  %1930 = load ptr, ptr %18, align 8, !dbg !3796
  %1931 = load i32, ptr %12, align 4, !dbg !3797
  call void %1927(ptr noundef %1928, ptr noundef %1929, ptr noundef %1930, i32 noundef %1931), !dbg !3798
  br label %1932, !dbg !3799

1932:                                             ; preds = %1924
  %1933 = load i32, ptr %14, align 4, !dbg !3800
  %1934 = load ptr, ptr %10, align 8, !dbg !3800
  %1935 = getelementptr inbounds nuw %struct.Fax3DecodeState, ptr %1934, i32 0, i32 3, !dbg !3800
  store i32 %1933, ptr %1935, align 4, !dbg !3800
  %1936 = load i32, ptr %13, align 4, !dbg !3800
  %1937 = load ptr, ptr %10, align 8, !dbg !3800
  %1938 = getelementptr inbounds nuw %struct.Fax3DecodeState, ptr %1937, i32 0, i32 2, !dbg !3800
  store i32 %1936, ptr %1938, align 8, !dbg !3800
  %1939 = load i32, ptr %20, align 4, !dbg !3800
  %1940 = load ptr, ptr %10, align 8, !dbg !3800
  %1941 = getelementptr inbounds nuw %struct.Fax3DecodeState, ptr %1940, i32 0, i32 4, !dbg !3800
  store i32 %1939, ptr %1941, align 8, !dbg !3800
  %1942 = load ptr, ptr %16, align 8, !dbg !3800
  %1943 = load ptr, ptr %6, align 8, !dbg !3800
  %1944 = getelementptr inbounds nuw %struct.tiff, ptr %1943, i32 0, i32 42, !dbg !3800
  %1945 = load ptr, ptr %1944, align 8, !dbg !3800
  %1946 = ptrtoint ptr %1942 to i64, !dbg !3800
  %1947 = ptrtoint ptr %1945 to i64, !dbg !3800
  %1948 = sub i64 %1946, %1947, !dbg !3800
  %1949 = load ptr, ptr %6, align 8, !dbg !3800
  %1950 = getelementptr inbounds nuw %struct.tiff, ptr %1949, i32 0, i32 43, !dbg !3800
  %1951 = load i32, ptr %1950, align 8, !dbg !3800
  %1952 = sext i32 %1951 to i64, !dbg !3800
  %1953 = sub nsw i64 %1952, %1948, !dbg !3800
  %1954 = trunc i64 %1953 to i32, !dbg !3800
  store i32 %1954, ptr %1950, align 8, !dbg !3800
  %1955 = load ptr, ptr %16, align 8, !dbg !3800
  %1956 = load ptr, ptr %6, align 8, !dbg !3800
  %1957 = getelementptr inbounds nuw %struct.tiff, ptr %1956, i32 0, i32 42, !dbg !3800
  store ptr %1955, ptr %1957, align 8, !dbg !3800
  br label %1958, !dbg !3800

1958:                                             ; preds = %1932
  store i32 -1, ptr %5, align 4, !dbg !3802
  br label %1987, !dbg !3802

1959:                                             ; preds = %58
  br label %1960, !dbg !3803

1960:                                             ; preds = %1959
  %1961 = load i32, ptr %14, align 4, !dbg !3804
  %1962 = load ptr, ptr %10, align 8, !dbg !3804
  %1963 = getelementptr inbounds nuw %struct.Fax3DecodeState, ptr %1962, i32 0, i32 3, !dbg !3804
  store i32 %1961, ptr %1963, align 4, !dbg !3804
  %1964 = load i32, ptr %13, align 4, !dbg !3804
  %1965 = load ptr, ptr %10, align 8, !dbg !3804
  %1966 = getelementptr inbounds nuw %struct.Fax3DecodeState, ptr %1965, i32 0, i32 2, !dbg !3804
  store i32 %1964, ptr %1966, align 8, !dbg !3804
  %1967 = load i32, ptr %20, align 4, !dbg !3804
  %1968 = load ptr, ptr %10, align 8, !dbg !3804
  %1969 = getelementptr inbounds nuw %struct.Fax3DecodeState, ptr %1968, i32 0, i32 4, !dbg !3804
  store i32 %1967, ptr %1969, align 8, !dbg !3804
  %1970 = load ptr, ptr %16, align 8, !dbg !3804
  %1971 = load ptr, ptr %6, align 8, !dbg !3804
  %1972 = getelementptr inbounds nuw %struct.tiff, ptr %1971, i32 0, i32 42, !dbg !3804
  %1973 = load ptr, ptr %1972, align 8, !dbg !3804
  %1974 = ptrtoint ptr %1970 to i64, !dbg !3804
  %1975 = ptrtoint ptr %1973 to i64, !dbg !3804
  %1976 = sub i64 %1974, %1975, !dbg !3804
  %1977 = load ptr, ptr %6, align 8, !dbg !3804
  %1978 = getelementptr inbounds nuw %struct.tiff, ptr %1977, i32 0, i32 43, !dbg !3804
  %1979 = load i32, ptr %1978, align 8, !dbg !3804
  %1980 = sext i32 %1979 to i64, !dbg !3804
  %1981 = sub nsw i64 %1980, %1976, !dbg !3804
  %1982 = trunc i64 %1981 to i32, !dbg !3804
  store i32 %1982, ptr %1978, align 8, !dbg !3804
  %1983 = load ptr, ptr %16, align 8, !dbg !3804
  %1984 = load ptr, ptr %6, align 8, !dbg !3804
  %1985 = getelementptr inbounds nuw %struct.tiff, ptr %1984, i32 0, i32 42, !dbg !3804
  store ptr %1983, ptr %1985, align 8, !dbg !3804
  br label %1986, !dbg !3804

1986:                                             ; preds = %1960
  store i32 1, ptr %5, align 4, !dbg !3806
  br label %1987, !dbg !3806

1987:                                             ; preds = %1986, %1958
  %1988 = load i32, ptr %5, align 4, !dbg !3807
  ret i32 %1988, !dbg !3807
}

; Function Attrs: noinline nounwind uwtable
define internal void @Fax3Unexpected(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 !dbg !3808 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
    #dbg_declare(ptr %4, !3811, !DIExpression(), !3812)
  store ptr %1, ptr %5, align 8
    #dbg_declare(ptr %5, !3813, !DIExpression(), !3814)
  store i32 %2, ptr %6, align 4
    #dbg_declare(ptr %6, !3815, !DIExpression(), !3816)
  %7 = load ptr, ptr %4, align 8, !dbg !3817
  %8 = load ptr, ptr %5, align 8, !dbg !3818
  %9 = getelementptr inbounds nuw %struct.tiff, ptr %8, i32 0, i32 0, !dbg !3819
  %10 = load ptr, ptr %9, align 8, !dbg !3819
  %11 = load ptr, ptr %5, align 8, !dbg !3820
  %12 = getelementptr inbounds nuw %struct.tiff, ptr %11, i32 0, i32 11, !dbg !3821
  %13 = load i32, ptr %12, align 8, !dbg !3821
  %14 = load i32, ptr %6, align 4, !dbg !3822
  %15 = zext i32 %14 to i64, !dbg !3823
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %7, ptr noundef @.str.34, ptr noundef %10, i32 noundef %13, i64 noundef %15), !dbg !3824
  ret void, !dbg !3825
}

; Function Attrs: noinline nounwind uwtable
define internal void @Fax3PrematureEOF(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 !dbg !3826 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
    #dbg_declare(ptr %4, !3827, !DIExpression(), !3828)
  store ptr %1, ptr %5, align 8
    #dbg_declare(ptr %5, !3829, !DIExpression(), !3830)
  store i32 %2, ptr %6, align 4
    #dbg_declare(ptr %6, !3831, !DIExpression(), !3832)
  %7 = load ptr, ptr %4, align 8, !dbg !3833
  %8 = load ptr, ptr %5, align 8, !dbg !3834
  %9 = getelementptr inbounds nuw %struct.tiff, ptr %8, i32 0, i32 0, !dbg !3835
  %10 = load ptr, ptr %9, align 8, !dbg !3835
  %11 = load ptr, ptr %5, align 8, !dbg !3836
  %12 = getelementptr inbounds nuw %struct.tiff, ptr %11, i32 0, i32 11, !dbg !3837
  %13 = load i32, ptr %12, align 8, !dbg !3837
  %14 = load i32, ptr %6, align 4, !dbg !3838
  %15 = zext i32 %14 to i64, !dbg !3839
  call void (ptr, ptr, ...) @TIFFWarning(ptr noundef %7, ptr noundef @.str.35, ptr noundef %10, i32 noundef %13, i64 noundef %15), !dbg !3840
  ret void, !dbg !3841
}

; Function Attrs: noinline nounwind uwtable
define internal void @Fax3BadLength(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 !dbg !3842 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
    #dbg_declare(ptr %5, !3845, !DIExpression(), !3846)
  store ptr %1, ptr %6, align 8
    #dbg_declare(ptr %6, !3847, !DIExpression(), !3848)
  store i32 %2, ptr %7, align 4
    #dbg_declare(ptr %7, !3849, !DIExpression(), !3850)
  store i32 %3, ptr %8, align 4
    #dbg_declare(ptr %8, !3851, !DIExpression(), !3852)
  %9 = load ptr, ptr %5, align 8, !dbg !3853
  %10 = load ptr, ptr %6, align 8, !dbg !3854
  %11 = getelementptr inbounds nuw %struct.tiff, ptr %10, i32 0, i32 0, !dbg !3855
  %12 = load ptr, ptr %11, align 8, !dbg !3855
  %13 = load i32, ptr %7, align 4, !dbg !3856
  %14 = load i32, ptr %8, align 4, !dbg !3857
  %15 = icmp ult i32 %13, %14, !dbg !3858
  %16 = zext i1 %15 to i64, !dbg !3856
  %17 = select i1 %15, ptr @.str.37, ptr @.str.38, !dbg !3856
  %18 = load ptr, ptr %6, align 8, !dbg !3859
  %19 = getelementptr inbounds nuw %struct.tiff, ptr %18, i32 0, i32 11, !dbg !3860
  %20 = load i32, ptr %19, align 8, !dbg !3860
  %21 = load i32, ptr %7, align 4, !dbg !3861
  %22 = zext i32 %21 to i64, !dbg !3862
  %23 = load i32, ptr %8, align 4, !dbg !3863
  %24 = zext i32 %23 to i64, !dbg !3864
  call void (ptr, ptr, ...) @TIFFWarning(ptr noundef %9, ptr noundef @.str.36, ptr noundef %12, ptr noundef %17, i32 noundef %20, i64 noundef %22, i64 noundef %24), !dbg !3865
  ret void, !dbg !3866
}

; Function Attrs: noinline nounwind uwtable
define internal void @Fax3Extension(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 !dbg !3867 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
    #dbg_declare(ptr %4, !3868, !DIExpression(), !3869)
  store ptr %1, ptr %5, align 8
    #dbg_declare(ptr %5, !3870, !DIExpression(), !3871)
  store i32 %2, ptr %6, align 4
    #dbg_declare(ptr %6, !3872, !DIExpression(), !3873)
  %7 = load ptr, ptr %4, align 8, !dbg !3874
  %8 = load ptr, ptr %5, align 8, !dbg !3875
  %9 = getelementptr inbounds nuw %struct.tiff, ptr %8, i32 0, i32 0, !dbg !3876
  %10 = load ptr, ptr %9, align 8, !dbg !3876
  %11 = load ptr, ptr %5, align 8, !dbg !3877
  %12 = getelementptr inbounds nuw %struct.tiff, ptr %11, i32 0, i32 11, !dbg !3878
  %13 = load i32, ptr %12, align 8, !dbg !3878
  %14 = load i32, ptr %6, align 4, !dbg !3879
  %15 = zext i32 %14 to i64, !dbg !3880
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %7, ptr noundef @.str.39, ptr noundef %10, i32 noundef %13, i64 noundef %15), !dbg !3881
  ret void, !dbg !3882
}

declare void @TIFFWarning(ptr noundef, ptr noundef, ...) #2

declare ptr @TIFFGetBitRevTable(i32 noundef) #2

declare void @_TIFFmemset(ptr noundef, i32 noundef, i32 noundef) #2

declare i32 @TIFFFlushData1(ptr noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal void @Fax3PutEOL(ptr noundef %0) #0 !dbg !3883 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !3884, !DIExpression(), !3885)
    #dbg_declare(ptr %3, !3886, !DIExpression(), !3887)
  %10 = load ptr, ptr %2, align 8, !dbg !3888
  %11 = getelementptr inbounds nuw %struct.tiff, ptr %10, i32 0, i32 37, !dbg !3888
  %12 = load ptr, ptr %11, align 8, !dbg !3888
  store ptr %12, ptr %3, align 8, !dbg !3887
    #dbg_declare(ptr %4, !3889, !DIExpression(), !3890)
  %13 = load ptr, ptr %3, align 8, !dbg !3891
  %14 = getelementptr inbounds nuw %struct.Fax3EncodeState, ptr %13, i32 0, i32 2, !dbg !3892
  %15 = load i32, ptr %14, align 4, !dbg !3892
  store i32 %15, ptr %4, align 4, !dbg !3890
    #dbg_declare(ptr %5, !3893, !DIExpression(), !3894)
  %16 = load ptr, ptr %3, align 8, !dbg !3895
  %17 = getelementptr inbounds nuw %struct.Fax3EncodeState, ptr %16, i32 0, i32 1, !dbg !3896
  %18 = load i32, ptr %17, align 8, !dbg !3896
  store i32 %18, ptr %5, align 4, !dbg !3894
    #dbg_declare(ptr %6, !3897, !DIExpression(), !3898)
    #dbg_declare(ptr %7, !3899, !DIExpression(), !3900)
    #dbg_declare(ptr %8, !3901, !DIExpression(), !3902)
  %19 = load ptr, ptr %3, align 8, !dbg !3903
  %20 = getelementptr inbounds nuw %struct.Fax3EncodeState, ptr %19, i32 0, i32 0, !dbg !3905
  %21 = getelementptr inbounds nuw %struct.Fax3BaseState, ptr %20, i32 0, i32 6, !dbg !3906
  %22 = load i32, ptr %21, align 8, !dbg !3906
  %23 = and i32 %22, 4, !dbg !3907
  %24 = icmp ne i32 %23, 0, !dbg !3907
  br i1 %24, label %25, label %128, !dbg !3907

25:                                               ; preds = %1
    #dbg_declare(ptr %9, !3908, !DIExpression(), !3910)
  store i32 4, ptr %9, align 4, !dbg !3910
  %26 = load i32, ptr %9, align 4, !dbg !3911
  %27 = load ptr, ptr %3, align 8, !dbg !3913
  %28 = getelementptr inbounds nuw %struct.Fax3EncodeState, ptr %27, i32 0, i32 2, !dbg !3914
  %29 = load i32, ptr %28, align 4, !dbg !3914
  %30 = icmp ne i32 %26, %29, !dbg !3915
  br i1 %30, label %31, label %127, !dbg !3915

31:                                               ; preds = %25
  %32 = load i32, ptr %9, align 4, !dbg !3916
  %33 = load ptr, ptr %3, align 8, !dbg !3919
  %34 = getelementptr inbounds nuw %struct.Fax3EncodeState, ptr %33, i32 0, i32 2, !dbg !3920
  %35 = load i32, ptr %34, align 4, !dbg !3920
  %36 = icmp sgt i32 %32, %35, !dbg !3921
  br i1 %36, label %37, label %44, !dbg !3921

37:                                               ; preds = %31
  %38 = load ptr, ptr %3, align 8, !dbg !3922
  %39 = getelementptr inbounds nuw %struct.Fax3EncodeState, ptr %38, i32 0, i32 2, !dbg !3923
  %40 = load i32, ptr %39, align 4, !dbg !3923
  %41 = load i32, ptr %9, align 4, !dbg !3924
  %42 = sub nsw i32 8, %41, !dbg !3925
  %43 = add nsw i32 %40, %42, !dbg !3926
  store i32 %43, ptr %9, align 4, !dbg !3927
  br label %50, !dbg !3928

44:                                               ; preds = %31
  %45 = load ptr, ptr %3, align 8, !dbg !3929
  %46 = getelementptr inbounds nuw %struct.Fax3EncodeState, ptr %45, i32 0, i32 2, !dbg !3930
  %47 = load i32, ptr %46, align 4, !dbg !3930
  %48 = load i32, ptr %9, align 4, !dbg !3931
  %49 = sub nsw i32 %47, %48, !dbg !3932
  store i32 %49, ptr %9, align 4, !dbg !3933
  br label %50

50:                                               ; preds = %44, %37
  store i32 0, ptr %6, align 4, !dbg !3934
  %51 = load i32, ptr %9, align 4, !dbg !3935
  store i32 %51, ptr %8, align 4, !dbg !3936
  br label %52, !dbg !3937

52:                                               ; preds = %76, %50
  %53 = load i32, ptr %8, align 4, !dbg !3937
  %54 = load i32, ptr %4, align 4, !dbg !3937
  %55 = icmp ugt i32 %53, %54, !dbg !3937
  br i1 %55, label %56, label %87, !dbg !3937

56:                                               ; preds = %52
  %57 = load i32, ptr %8, align 4, !dbg !3939
  %58 = load i32, ptr %4, align 4, !dbg !3939
  %59 = sub i32 %57, %58, !dbg !3939
  %60 = ashr i32 0, %59, !dbg !3939
  %61 = load i32, ptr %5, align 4, !dbg !3939
  %62 = or i32 %61, %60, !dbg !3939
  store i32 %62, ptr %5, align 4, !dbg !3939
  %63 = load i32, ptr %4, align 4, !dbg !3939
  %64 = load i32, ptr %8, align 4, !dbg !3939
  %65 = sub i32 %64, %63, !dbg !3939
  store i32 %65, ptr %8, align 4, !dbg !3939
  %66 = load ptr, ptr %2, align 8, !dbg !3941
  %67 = getelementptr inbounds nuw %struct.tiff, ptr %66, i32 0, i32 43, !dbg !3941
  %68 = load i32, ptr %67, align 8, !dbg !3941
  %69 = load ptr, ptr %2, align 8, !dbg !3941
  %70 = getelementptr inbounds nuw %struct.tiff, ptr %69, i32 0, i32 41, !dbg !3941
  %71 = load i32, ptr %70, align 8, !dbg !3941
  %72 = icmp sge i32 %68, %71, !dbg !3941
  br i1 %72, label %73, label %76, !dbg !3941

73:                                               ; preds = %56
  %74 = load ptr, ptr %2, align 8, !dbg !3941
  %75 = call i32 @TIFFFlushData1(ptr noundef %74), !dbg !3941
  br label %76, !dbg !3941

76:                                               ; preds = %73, %56
  %77 = load i32, ptr %5, align 4, !dbg !3944
  %78 = trunc i32 %77 to i8, !dbg !3944
  %79 = load ptr, ptr %2, align 8, !dbg !3944
  %80 = getelementptr inbounds nuw %struct.tiff, ptr %79, i32 0, i32 42, !dbg !3944
  %81 = load ptr, ptr %80, align 8, !dbg !3944
  %82 = getelementptr inbounds nuw i8, ptr %81, i32 1, !dbg !3944
  store ptr %82, ptr %80, align 8, !dbg !3944
  store i8 %78, ptr %81, align 1, !dbg !3944
  %83 = load ptr, ptr %2, align 8, !dbg !3944
  %84 = getelementptr inbounds nuw %struct.tiff, ptr %83, i32 0, i32 43, !dbg !3944
  %85 = load i32, ptr %84, align 8, !dbg !3944
  %86 = add nsw i32 %85, 1, !dbg !3944
  store i32 %86, ptr %84, align 8, !dbg !3944
  store i32 0, ptr %5, align 4, !dbg !3944
  store i32 8, ptr %4, align 4, !dbg !3944
  br label %52, !dbg !3937, !llvm.loop !3945

87:                                               ; preds = %52
  %88 = load i32, ptr %8, align 4, !dbg !3937
  %89 = zext i32 %88 to i64, !dbg !3937
  %90 = getelementptr inbounds nuw [9 x i32], ptr @_msbmask, i64 0, i64 %89, !dbg !3937
  %91 = load i32, ptr %90, align 4, !dbg !3937
  %92 = and i32 0, %91, !dbg !3937
  %93 = load i32, ptr %4, align 4, !dbg !3937
  %94 = load i32, ptr %8, align 4, !dbg !3937
  %95 = sub i32 %93, %94, !dbg !3937
  %96 = shl i32 %92, %95, !dbg !3937
  %97 = load i32, ptr %5, align 4, !dbg !3937
  %98 = or i32 %97, %96, !dbg !3937
  store i32 %98, ptr %5, align 4, !dbg !3937
  %99 = load i32, ptr %8, align 4, !dbg !3937
  %100 = load i32, ptr %4, align 4, !dbg !3937
  %101 = sub i32 %100, %99, !dbg !3937
  store i32 %101, ptr %4, align 4, !dbg !3937
  %102 = load i32, ptr %4, align 4, !dbg !3946
  %103 = icmp eq i32 %102, 0, !dbg !3946
  br i1 %103, label %104, label %126, !dbg !3946

104:                                              ; preds = %87
  %105 = load ptr, ptr %2, align 8, !dbg !3948
  %106 = getelementptr inbounds nuw %struct.tiff, ptr %105, i32 0, i32 43, !dbg !3948
  %107 = load i32, ptr %106, align 8, !dbg !3948
  %108 = load ptr, ptr %2, align 8, !dbg !3948
  %109 = getelementptr inbounds nuw %struct.tiff, ptr %108, i32 0, i32 41, !dbg !3948
  %110 = load i32, ptr %109, align 8, !dbg !3948
  %111 = icmp sge i32 %107, %110, !dbg !3948
  br i1 %111, label %112, label %115, !dbg !3948

112:                                              ; preds = %104
  %113 = load ptr, ptr %2, align 8, !dbg !3948
  %114 = call i32 @TIFFFlushData1(ptr noundef %113), !dbg !3948
  br label %115, !dbg !3948

115:                                              ; preds = %112, %104
  %116 = load i32, ptr %5, align 4, !dbg !3951
  %117 = trunc i32 %116 to i8, !dbg !3951
  %118 = load ptr, ptr %2, align 8, !dbg !3951
  %119 = getelementptr inbounds nuw %struct.tiff, ptr %118, i32 0, i32 42, !dbg !3951
  %120 = load ptr, ptr %119, align 8, !dbg !3951
  %121 = getelementptr inbounds nuw i8, ptr %120, i32 1, !dbg !3951
  store ptr %121, ptr %119, align 8, !dbg !3951
  store i8 %117, ptr %120, align 1, !dbg !3951
  %122 = load ptr, ptr %2, align 8, !dbg !3951
  %123 = getelementptr inbounds nuw %struct.tiff, ptr %122, i32 0, i32 43, !dbg !3951
  %124 = load i32, ptr %123, align 8, !dbg !3951
  %125 = add nsw i32 %124, 1, !dbg !3951
  store i32 %125, ptr %123, align 8, !dbg !3951
  store i32 0, ptr %5, align 4, !dbg !3951
  store i32 8, ptr %4, align 4, !dbg !3951
  br label %126, !dbg !3951

126:                                              ; preds = %115, %87
  br label %127, !dbg !3952

127:                                              ; preds = %126, %25
  br label %128, !dbg !3953

128:                                              ; preds = %127, %1
  store i32 1, ptr %6, align 4, !dbg !3954
  store i32 12, ptr %7, align 4, !dbg !3955
  %129 = load ptr, ptr %3, align 8, !dbg !3956
  %130 = getelementptr inbounds nuw %struct.Fax3EncodeState, ptr %129, i32 0, i32 0, !dbg !3956
  %131 = getelementptr inbounds nuw %struct.Fax3BaseState, ptr %130, i32 0, i32 6, !dbg !3956
  %132 = load i32, ptr %131, align 8, !dbg !3956
  %133 = and i32 %132, 1, !dbg !3956
  %134 = icmp ne i32 %133, 0, !dbg !3956
  br i1 %134, label %135, label %146, !dbg !3956

135:                                              ; preds = %128
  %136 = load i32, ptr %6, align 4, !dbg !3958
  %137 = shl i32 %136, 1, !dbg !3959
  %138 = load ptr, ptr %3, align 8, !dbg !3960
  %139 = getelementptr inbounds nuw %struct.Fax3EncodeState, ptr %138, i32 0, i32 3, !dbg !3961
  %140 = load i32, ptr %139, align 8, !dbg !3961
  %141 = icmp eq i32 %140, 0, !dbg !3962
  %142 = zext i1 %141 to i32, !dbg !3962
  %143 = or i32 %137, %142, !dbg !3963
  store i32 %143, ptr %6, align 4, !dbg !3964
  %144 = load i32, ptr %7, align 4, !dbg !3965
  %145 = add i32 %144, 1, !dbg !3965
  store i32 %145, ptr %7, align 4, !dbg !3965
  br label %146, !dbg !3966

146:                                              ; preds = %135, %128
  br label %147, !dbg !3967

147:                                              ; preds = %172, %146
  %148 = load i32, ptr %7, align 4, !dbg !3967
  %149 = load i32, ptr %4, align 4, !dbg !3967
  %150 = icmp ugt i32 %148, %149, !dbg !3967
  br i1 %150, label %151, label %183, !dbg !3967

151:                                              ; preds = %147
  %152 = load i32, ptr %6, align 4, !dbg !3969
  %153 = load i32, ptr %7, align 4, !dbg !3969
  %154 = load i32, ptr %4, align 4, !dbg !3969
  %155 = sub i32 %153, %154, !dbg !3969
  %156 = lshr i32 %152, %155, !dbg !3969
  %157 = load i32, ptr %5, align 4, !dbg !3969
  %158 = or i32 %157, %156, !dbg !3969
  store i32 %158, ptr %5, align 4, !dbg !3969
  %159 = load i32, ptr %4, align 4, !dbg !3969
  %160 = load i32, ptr %7, align 4, !dbg !3969
  %161 = sub i32 %160, %159, !dbg !3969
  store i32 %161, ptr %7, align 4, !dbg !3969
  %162 = load ptr, ptr %2, align 8, !dbg !3971
  %163 = getelementptr inbounds nuw %struct.tiff, ptr %162, i32 0, i32 43, !dbg !3971
  %164 = load i32, ptr %163, align 8, !dbg !3971
  %165 = load ptr, ptr %2, align 8, !dbg !3971
  %166 = getelementptr inbounds nuw %struct.tiff, ptr %165, i32 0, i32 41, !dbg !3971
  %167 = load i32, ptr %166, align 8, !dbg !3971
  %168 = icmp sge i32 %164, %167, !dbg !3971
  br i1 %168, label %169, label %172, !dbg !3971

169:                                              ; preds = %151
  %170 = load ptr, ptr %2, align 8, !dbg !3971
  %171 = call i32 @TIFFFlushData1(ptr noundef %170), !dbg !3971
  br label %172, !dbg !3971

172:                                              ; preds = %169, %151
  %173 = load i32, ptr %5, align 4, !dbg !3974
  %174 = trunc i32 %173 to i8, !dbg !3974
  %175 = load ptr, ptr %2, align 8, !dbg !3974
  %176 = getelementptr inbounds nuw %struct.tiff, ptr %175, i32 0, i32 42, !dbg !3974
  %177 = load ptr, ptr %176, align 8, !dbg !3974
  %178 = getelementptr inbounds nuw i8, ptr %177, i32 1, !dbg !3974
  store ptr %178, ptr %176, align 8, !dbg !3974
  store i8 %174, ptr %177, align 1, !dbg !3974
  %179 = load ptr, ptr %2, align 8, !dbg !3974
  %180 = getelementptr inbounds nuw %struct.tiff, ptr %179, i32 0, i32 43, !dbg !3974
  %181 = load i32, ptr %180, align 8, !dbg !3974
  %182 = add nsw i32 %181, 1, !dbg !3974
  store i32 %182, ptr %180, align 8, !dbg !3974
  store i32 0, ptr %5, align 4, !dbg !3974
  store i32 8, ptr %4, align 4, !dbg !3974
  br label %147, !dbg !3967, !llvm.loop !3975

183:                                              ; preds = %147
  %184 = load i32, ptr %6, align 4, !dbg !3967
  %185 = load i32, ptr %7, align 4, !dbg !3967
  %186 = zext i32 %185 to i64, !dbg !3967
  %187 = getelementptr inbounds nuw [9 x i32], ptr @_msbmask, i64 0, i64 %186, !dbg !3967
  %188 = load i32, ptr %187, align 4, !dbg !3967
  %189 = and i32 %184, %188, !dbg !3967
  %190 = load i32, ptr %4, align 4, !dbg !3967
  %191 = load i32, ptr %7, align 4, !dbg !3967
  %192 = sub i32 %190, %191, !dbg !3967
  %193 = shl i32 %189, %192, !dbg !3967
  %194 = load i32, ptr %5, align 4, !dbg !3967
  %195 = or i32 %194, %193, !dbg !3967
  store i32 %195, ptr %5, align 4, !dbg !3967
  %196 = load i32, ptr %7, align 4, !dbg !3967
  %197 = load i32, ptr %4, align 4, !dbg !3967
  %198 = sub i32 %197, %196, !dbg !3967
  store i32 %198, ptr %4, align 4, !dbg !3967
  %199 = load i32, ptr %4, align 4, !dbg !3976
  %200 = icmp eq i32 %199, 0, !dbg !3976
  br i1 %200, label %201, label %223, !dbg !3976

201:                                              ; preds = %183
  %202 = load ptr, ptr %2, align 8, !dbg !3978
  %203 = getelementptr inbounds nuw %struct.tiff, ptr %202, i32 0, i32 43, !dbg !3978
  %204 = load i32, ptr %203, align 8, !dbg !3978
  %205 = load ptr, ptr %2, align 8, !dbg !3978
  %206 = getelementptr inbounds nuw %struct.tiff, ptr %205, i32 0, i32 41, !dbg !3978
  %207 = load i32, ptr %206, align 8, !dbg !3978
  %208 = icmp sge i32 %204, %207, !dbg !3978
  br i1 %208, label %209, label %212, !dbg !3978

209:                                              ; preds = %201
  %210 = load ptr, ptr %2, align 8, !dbg !3978
  %211 = call i32 @TIFFFlushData1(ptr noundef %210), !dbg !3978
  br label %212, !dbg !3978

212:                                              ; preds = %209, %201
  %213 = load i32, ptr %5, align 4, !dbg !3981
  %214 = trunc i32 %213 to i8, !dbg !3981
  %215 = load ptr, ptr %2, align 8, !dbg !3981
  %216 = getelementptr inbounds nuw %struct.tiff, ptr %215, i32 0, i32 42, !dbg !3981
  %217 = load ptr, ptr %216, align 8, !dbg !3981
  %218 = getelementptr inbounds nuw i8, ptr %217, i32 1, !dbg !3981
  store ptr %218, ptr %216, align 8, !dbg !3981
  store i8 %214, ptr %217, align 1, !dbg !3981
  %219 = load ptr, ptr %2, align 8, !dbg !3981
  %220 = getelementptr inbounds nuw %struct.tiff, ptr %219, i32 0, i32 43, !dbg !3981
  %221 = load i32, ptr %220, align 8, !dbg !3981
  %222 = add nsw i32 %221, 1, !dbg !3981
  store i32 %222, ptr %220, align 8, !dbg !3981
  store i32 0, ptr %5, align 4, !dbg !3981
  store i32 8, ptr %4, align 4, !dbg !3981
  br label %223, !dbg !3981

223:                                              ; preds = %212, %183
  %224 = load i32, ptr %5, align 4, !dbg !3982
  %225 = load ptr, ptr %3, align 8, !dbg !3983
  %226 = getelementptr inbounds nuw %struct.Fax3EncodeState, ptr %225, i32 0, i32 1, !dbg !3984
  store i32 %224, ptr %226, align 8, !dbg !3985
  %227 = load i32, ptr %4, align 4, !dbg !3986
  %228 = load ptr, ptr %3, align 8, !dbg !3987
  %229 = getelementptr inbounds nuw %struct.Fax3EncodeState, ptr %228, i32 0, i32 2, !dbg !3988
  store i32 %227, ptr %229, align 4, !dbg !3989
  ret void, !dbg !3990
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @Fax3Encode1DRow(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 !dbg !3991 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
    #dbg_declare(ptr %4, !3994, !DIExpression(), !3995)
  store ptr %1, ptr %5, align 8
    #dbg_declare(ptr %5, !3996, !DIExpression(), !3997)
  store i32 %2, ptr %6, align 4
    #dbg_declare(ptr %6, !3998, !DIExpression(), !3999)
    #dbg_declare(ptr %7, !4000, !DIExpression(), !4001)
  %10 = load ptr, ptr %4, align 8, !dbg !4002
  %11 = getelementptr inbounds nuw %struct.tiff, ptr %10, i32 0, i32 37, !dbg !4002
  %12 = load ptr, ptr %11, align 8, !dbg !4002
  store ptr %12, ptr %7, align 8, !dbg !4001
    #dbg_declare(ptr %8, !4003, !DIExpression(), !4004)
    #dbg_declare(ptr %9, !4005, !DIExpression(), !4006)
  store i32 0, ptr %9, align 4, !dbg !4006
  br label %13, !dbg !4007

13:                                               ; preds = %41, %3
  %14 = load ptr, ptr %5, align 8, !dbg !4008
  %15 = load i32, ptr %9, align 4, !dbg !4012
  %16 = load i32, ptr %6, align 4, !dbg !4013
  %17 = call i32 @find0span(ptr noundef %14, i32 noundef %15, i32 noundef %16), !dbg !4014
  store i32 %17, ptr %8, align 4, !dbg !4015
  %18 = load ptr, ptr %4, align 8, !dbg !4016
  %19 = load i32, ptr %8, align 4, !dbg !4017
  call void @putspan(ptr noundef %18, i32 noundef %19, ptr noundef @TIFFFaxWhiteCodes), !dbg !4018
  %20 = load i32, ptr %8, align 4, !dbg !4019
  %21 = load i32, ptr %9, align 4, !dbg !4020
  %22 = add i32 %21, %20, !dbg !4020
  store i32 %22, ptr %9, align 4, !dbg !4020
  %23 = load i32, ptr %9, align 4, !dbg !4021
  %24 = load i32, ptr %6, align 4, !dbg !4023
  %25 = icmp uge i32 %23, %24, !dbg !4024
  br i1 %25, label %26, label %27, !dbg !4024

26:                                               ; preds = %13
  br label %42, !dbg !4025

27:                                               ; preds = %13
  %28 = load ptr, ptr %5, align 8, !dbg !4026
  %29 = load i32, ptr %9, align 4, !dbg !4027
  %30 = load i32, ptr %6, align 4, !dbg !4028
  %31 = call i32 @find1span(ptr noundef %28, i32 noundef %29, i32 noundef %30), !dbg !4029
  store i32 %31, ptr %8, align 4, !dbg !4030
  %32 = load ptr, ptr %4, align 8, !dbg !4031
  %33 = load i32, ptr %8, align 4, !dbg !4032
  call void @putspan(ptr noundef %32, i32 noundef %33, ptr noundef @TIFFFaxBlackCodes), !dbg !4033
  %34 = load i32, ptr %8, align 4, !dbg !4034
  %35 = load i32, ptr %9, align 4, !dbg !4035
  %36 = add i32 %35, %34, !dbg !4035
  store i32 %36, ptr %9, align 4, !dbg !4035
  %37 = load i32, ptr %9, align 4, !dbg !4036
  %38 = load i32, ptr %6, align 4, !dbg !4038
  %39 = icmp uge i32 %37, %38, !dbg !4039
  br i1 %39, label %40, label %41, !dbg !4039

40:                                               ; preds = %27
  br label %42, !dbg !4040

41:                                               ; preds = %27
  br label %13, !dbg !4041, !llvm.loop !4042

42:                                               ; preds = %40, %26
  %43 = load ptr, ptr %7, align 8, !dbg !4045
  %44 = getelementptr inbounds nuw %struct.Fax3EncodeState, ptr %43, i32 0, i32 0, !dbg !4047
  %45 = getelementptr inbounds nuw %struct.Fax3BaseState, ptr %44, i32 0, i32 0, !dbg !4048
  %46 = load i32, ptr %45, align 8, !dbg !4048
  %47 = and i32 %46, 12, !dbg !4049
  %48 = icmp ne i32 %47, 0, !dbg !4049
  br i1 %48, label %49, label %125, !dbg !4049

49:                                               ; preds = %42
  %50 = load ptr, ptr %7, align 8, !dbg !4050
  %51 = getelementptr inbounds nuw %struct.Fax3EncodeState, ptr %50, i32 0, i32 2, !dbg !4053
  %52 = load i32, ptr %51, align 4, !dbg !4053
  %53 = icmp ne i32 %52, 8, !dbg !4054
  br i1 %53, label %54, label %82, !dbg !4054

54:                                               ; preds = %49
  %55 = load ptr, ptr %4, align 8, !dbg !4055
  %56 = getelementptr inbounds nuw %struct.tiff, ptr %55, i32 0, i32 43, !dbg !4055
  %57 = load i32, ptr %56, align 8, !dbg !4055
  %58 = load ptr, ptr %4, align 8, !dbg !4055
  %59 = getelementptr inbounds nuw %struct.tiff, ptr %58, i32 0, i32 41, !dbg !4055
  %60 = load i32, ptr %59, align 8, !dbg !4055
  %61 = icmp sge i32 %57, %60, !dbg !4055
  br i1 %61, label %62, label %65, !dbg !4055

62:                                               ; preds = %54
  %63 = load ptr, ptr %4, align 8, !dbg !4055
  %64 = call i32 @TIFFFlushData1(ptr noundef %63), !dbg !4055
  br label %65, !dbg !4055

65:                                               ; preds = %62, %54
  %66 = load ptr, ptr %7, align 8, !dbg !4058
  %67 = getelementptr inbounds nuw %struct.Fax3EncodeState, ptr %66, i32 0, i32 1, !dbg !4058
  %68 = load i32, ptr %67, align 8, !dbg !4058
  %69 = trunc i32 %68 to i8, !dbg !4058
  %70 = load ptr, ptr %4, align 8, !dbg !4058
  %71 = getelementptr inbounds nuw %struct.tiff, ptr %70, i32 0, i32 42, !dbg !4058
  %72 = load ptr, ptr %71, align 8, !dbg !4058
  %73 = getelementptr inbounds nuw i8, ptr %72, i32 1, !dbg !4058
  store ptr %73, ptr %71, align 8, !dbg !4058
  store i8 %69, ptr %72, align 1, !dbg !4058
  %74 = load ptr, ptr %4, align 8, !dbg !4058
  %75 = getelementptr inbounds nuw %struct.tiff, ptr %74, i32 0, i32 43, !dbg !4058
  %76 = load i32, ptr %75, align 8, !dbg !4058
  %77 = add nsw i32 %76, 1, !dbg !4058
  store i32 %77, ptr %75, align 8, !dbg !4058
  %78 = load ptr, ptr %7, align 8, !dbg !4058
  %79 = getelementptr inbounds nuw %struct.Fax3EncodeState, ptr %78, i32 0, i32 1, !dbg !4058
  store i32 0, ptr %79, align 8, !dbg !4058
  %80 = load ptr, ptr %7, align 8, !dbg !4058
  %81 = getelementptr inbounds nuw %struct.Fax3EncodeState, ptr %80, i32 0, i32 2, !dbg !4058
  store i32 8, ptr %81, align 4, !dbg !4058
  br label %82, !dbg !4058

82:                                               ; preds = %65, %49
  %83 = load ptr, ptr %7, align 8, !dbg !4059
  %84 = getelementptr inbounds nuw %struct.Fax3EncodeState, ptr %83, i32 0, i32 0, !dbg !4061
  %85 = getelementptr inbounds nuw %struct.Fax3BaseState, ptr %84, i32 0, i32 0, !dbg !4062
  %86 = load i32, ptr %85, align 8, !dbg !4062
  %87 = and i32 %86, 8, !dbg !4063
  %88 = icmp ne i32 %87, 0, !dbg !4063
  br i1 %88, label %89, label %124, !dbg !4064

89:                                               ; preds = %82
  %90 = load ptr, ptr %4, align 8, !dbg !4065
  %91 = getelementptr inbounds nuw %struct.tiff, ptr %90, i32 0, i32 42, !dbg !4065
  %92 = load ptr, ptr %91, align 8, !dbg !4065
  %93 = ptrtoint ptr %92 to i64, !dbg !4065
  %94 = and i64 %93, 1, !dbg !4065
  %95 = icmp eq i64 %94, 0, !dbg !4065
  br i1 %95, label %124, label %96, !dbg !4064

96:                                               ; preds = %89
  %97 = load ptr, ptr %4, align 8, !dbg !4066
  %98 = getelementptr inbounds nuw %struct.tiff, ptr %97, i32 0, i32 43, !dbg !4066
  %99 = load i32, ptr %98, align 8, !dbg !4066
  %100 = load ptr, ptr %4, align 8, !dbg !4066
  %101 = getelementptr inbounds nuw %struct.tiff, ptr %100, i32 0, i32 41, !dbg !4066
  %102 = load i32, ptr %101, align 8, !dbg !4066
  %103 = icmp sge i32 %99, %102, !dbg !4066
  br i1 %103, label %104, label %107, !dbg !4066

104:                                              ; preds = %96
  %105 = load ptr, ptr %4, align 8, !dbg !4066
  %106 = call i32 @TIFFFlushData1(ptr noundef %105), !dbg !4066
  br label %107, !dbg !4066

107:                                              ; preds = %104, %96
  %108 = load ptr, ptr %7, align 8, !dbg !4069
  %109 = getelementptr inbounds nuw %struct.Fax3EncodeState, ptr %108, i32 0, i32 1, !dbg !4069
  %110 = load i32, ptr %109, align 8, !dbg !4069
  %111 = trunc i32 %110 to i8, !dbg !4069
  %112 = load ptr, ptr %4, align 8, !dbg !4069
  %113 = getelementptr inbounds nuw %struct.tiff, ptr %112, i32 0, i32 42, !dbg !4069
  %114 = load ptr, ptr %113, align 8, !dbg !4069
  %115 = getelementptr inbounds nuw i8, ptr %114, i32 1, !dbg !4069
  store ptr %115, ptr %113, align 8, !dbg !4069
  store i8 %111, ptr %114, align 1, !dbg !4069
  %116 = load ptr, ptr %4, align 8, !dbg !4069
  %117 = getelementptr inbounds nuw %struct.tiff, ptr %116, i32 0, i32 43, !dbg !4069
  %118 = load i32, ptr %117, align 8, !dbg !4069
  %119 = add nsw i32 %118, 1, !dbg !4069
  store i32 %119, ptr %117, align 8, !dbg !4069
  %120 = load ptr, ptr %7, align 8, !dbg !4069
  %121 = getelementptr inbounds nuw %struct.Fax3EncodeState, ptr %120, i32 0, i32 1, !dbg !4069
  store i32 0, ptr %121, align 8, !dbg !4069
  %122 = load ptr, ptr %7, align 8, !dbg !4069
  %123 = getelementptr inbounds nuw %struct.Fax3EncodeState, ptr %122, i32 0, i32 2, !dbg !4069
  store i32 8, ptr %123, align 4, !dbg !4069
  br label %124, !dbg !4069

124:                                              ; preds = %107, %89, %82
  br label %125, !dbg !4070

125:                                              ; preds = %124, %42
  ret i32 1, !dbg !4071
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @Fax3Encode2DRow(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 !dbg !4072 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
    #dbg_declare(ptr %5, !4075, !DIExpression(), !4076)
  store ptr %1, ptr %6, align 8
    #dbg_declare(ptr %6, !4077, !DIExpression(), !4078)
  store ptr %2, ptr %7, align 8
    #dbg_declare(ptr %7, !4079, !DIExpression(), !4080)
  store i32 %3, ptr %8, align 4
    #dbg_declare(ptr %8, !4081, !DIExpression(), !4082)
    #dbg_declare(ptr %9, !4083, !DIExpression(), !4084)
  store i32 0, ptr %9, align 4, !dbg !4084
    #dbg_declare(ptr %10, !4085, !DIExpression(), !4086)
  %15 = load ptr, ptr %6, align 8, !dbg !4087
  %16 = getelementptr inbounds i8, ptr %15, i64 0, !dbg !4087
  %17 = load i8, ptr %16, align 1, !dbg !4087
  %18 = zext i8 %17 to i32, !dbg !4087
  %19 = ashr i32 %18, 7, !dbg !4087
  %20 = and i32 %19, 1, !dbg !4087
  %21 = icmp ne i32 %20, 0, !dbg !4088
  br i1 %21, label %22, label %23, !dbg !4087

22:                                               ; preds = %4
  br label %28, !dbg !4087

23:                                               ; preds = %4
  %24 = load ptr, ptr %6, align 8, !dbg !4089
  %25 = load i32, ptr %8, align 4, !dbg !4089
  %26 = call i32 @find0span(ptr noundef %24, i32 noundef 0, i32 noundef %25), !dbg !4089
  %27 = add nsw i32 0, %26, !dbg !4089
  br label %28, !dbg !4087

28:                                               ; preds = %23, %22
  %29 = phi i32 [ 0, %22 ], [ %27, %23 ], !dbg !4087
  store i32 %29, ptr %10, align 4, !dbg !4086
    #dbg_declare(ptr %11, !4090, !DIExpression(), !4091)
  %30 = load ptr, ptr %7, align 8, !dbg !4092
  %31 = getelementptr inbounds i8, ptr %30, i64 0, !dbg !4092
  %32 = load i8, ptr %31, align 1, !dbg !4092
  %33 = zext i8 %32 to i32, !dbg !4092
  %34 = ashr i32 %33, 7, !dbg !4092
  %35 = and i32 %34, 1, !dbg !4092
  %36 = icmp ne i32 %35, 0, !dbg !4093
  br i1 %36, label %37, label %38, !dbg !4092

37:                                               ; preds = %28
  br label %43, !dbg !4092

38:                                               ; preds = %28
  %39 = load ptr, ptr %7, align 8, !dbg !4094
  %40 = load i32, ptr %8, align 4, !dbg !4094
  %41 = call i32 @find0span(ptr noundef %39, i32 noundef 0, i32 noundef %40), !dbg !4094
  %42 = add nsw i32 0, %41, !dbg !4094
  br label %43, !dbg !4092

43:                                               ; preds = %38, %37
  %44 = phi i32 [ 0, %37 ], [ %42, %38 ], !dbg !4092
  store i32 %44, ptr %11, align 4, !dbg !4091
    #dbg_declare(ptr %12, !4095, !DIExpression(), !4096)
    #dbg_declare(ptr %13, !4097, !DIExpression(), !4098)
  br label %45, !dbg !4099

45:                                               ; preds = %273, %43
  %46 = load i32, ptr %11, align 4, !dbg !4100
  %47 = load i32, ptr %8, align 4, !dbg !4100
  %48 = icmp ult i32 %46, %47, !dbg !4100
  br i1 %48, label %49, label %77, !dbg !4100

49:                                               ; preds = %45
  %50 = load i32, ptr %11, align 4, !dbg !4100
  %51 = load ptr, ptr %7, align 8, !dbg !4100
  %52 = load i32, ptr %11, align 4, !dbg !4100
  %53 = lshr i32 %52, 3, !dbg !4100
  %54 = zext i32 %53 to i64, !dbg !4100
  %55 = getelementptr inbounds nuw i8, ptr %51, i64 %54, !dbg !4100
  %56 = load i8, ptr %55, align 1, !dbg !4100
  %57 = zext i8 %56 to i32, !dbg !4100
  %58 = load i32, ptr %11, align 4, !dbg !4100
  %59 = and i32 %58, 7, !dbg !4100
  %60 = sub i32 7, %59, !dbg !4100
  %61 = ashr i32 %57, %60, !dbg !4100
  %62 = and i32 %61, 1, !dbg !4100
  %63 = icmp ne i32 %62, 0, !dbg !4100
  br i1 %63, label %64, label %69, !dbg !4100

64:                                               ; preds = %49
  %65 = load ptr, ptr %7, align 8, !dbg !4100
  %66 = load i32, ptr %11, align 4, !dbg !4100
  %67 = load i32, ptr %8, align 4, !dbg !4100
  %68 = call i32 @find1span(ptr noundef %65, i32 noundef %66, i32 noundef %67), !dbg !4100
  br label %74, !dbg !4100

69:                                               ; preds = %49
  %70 = load ptr, ptr %7, align 8, !dbg !4100
  %71 = load i32, ptr %11, align 4, !dbg !4100
  %72 = load i32, ptr %8, align 4, !dbg !4100
  %73 = call i32 @find0span(ptr noundef %70, i32 noundef %71, i32 noundef %72), !dbg !4100
  br label %74, !dbg !4100

74:                                               ; preds = %69, %64
  %75 = phi i32 [ %68, %64 ], [ %73, %69 ], !dbg !4100
  %76 = add i32 %50, %75, !dbg !4100
  br label %79, !dbg !4100

77:                                               ; preds = %45
  %78 = load i32, ptr %8, align 4, !dbg !4100
  br label %79, !dbg !4100

79:                                               ; preds = %77, %74
  %80 = phi i32 [ %76, %74 ], [ %78, %77 ], !dbg !4100
  store i32 %80, ptr %13, align 4, !dbg !4104
  %81 = load i32, ptr %13, align 4, !dbg !4105
  %82 = load i32, ptr %10, align 4, !dbg !4107
  %83 = icmp uge i32 %81, %82, !dbg !4108
  br i1 %83, label %84, label %186, !dbg !4108

84:                                               ; preds = %79
    #dbg_declare(ptr %14, !4109, !DIExpression(), !4111)
  %85 = load i32, ptr %11, align 4, !dbg !4112
  %86 = load i32, ptr %10, align 4, !dbg !4113
  %87 = sub i32 %85, %86, !dbg !4114
  store i32 %87, ptr %14, align 4, !dbg !4111
  %88 = load i32, ptr %14, align 4, !dbg !4115
  %89 = icmp sle i32 -3, %88, !dbg !4117
  br i1 %89, label %90, label %93, !dbg !4118

90:                                               ; preds = %84
  %91 = load i32, ptr %14, align 4, !dbg !4119
  %92 = icmp sle i32 %91, 3, !dbg !4120
  br i1 %92, label %168, label %93, !dbg !4121

93:                                               ; preds = %90, %84
  %94 = load i32, ptr %10, align 4, !dbg !4122
  %95 = load i32, ptr %8, align 4, !dbg !4122
  %96 = icmp ult i32 %94, %95, !dbg !4122
  br i1 %96, label %97, label %125, !dbg !4122

97:                                               ; preds = %93
  %98 = load i32, ptr %10, align 4, !dbg !4122
  %99 = load ptr, ptr %6, align 8, !dbg !4122
  %100 = load i32, ptr %10, align 4, !dbg !4122
  %101 = lshr i32 %100, 3, !dbg !4122
  %102 = zext i32 %101 to i64, !dbg !4122
  %103 = getelementptr inbounds nuw i8, ptr %99, i64 %102, !dbg !4122
  %104 = load i8, ptr %103, align 1, !dbg !4122
  %105 = zext i8 %104 to i32, !dbg !4122
  %106 = load i32, ptr %10, align 4, !dbg !4122
  %107 = and i32 %106, 7, !dbg !4122
  %108 = sub i32 7, %107, !dbg !4122
  %109 = ashr i32 %105, %108, !dbg !4122
  %110 = and i32 %109, 1, !dbg !4122
  %111 = icmp ne i32 %110, 0, !dbg !4122
  br i1 %111, label %112, label %117, !dbg !4122

112:                                              ; preds = %97
  %113 = load ptr, ptr %6, align 8, !dbg !4122
  %114 = load i32, ptr %10, align 4, !dbg !4122
  %115 = load i32, ptr %8, align 4, !dbg !4122
  %116 = call i32 @find1span(ptr noundef %113, i32 noundef %114, i32 noundef %115), !dbg !4122
  br label %122, !dbg !4122

117:                                              ; preds = %97
  %118 = load ptr, ptr %6, align 8, !dbg !4122
  %119 = load i32, ptr %10, align 4, !dbg !4122
  %120 = load i32, ptr %8, align 4, !dbg !4122
  %121 = call i32 @find0span(ptr noundef %118, i32 noundef %119, i32 noundef %120), !dbg !4122
  br label %122, !dbg !4122

122:                                              ; preds = %117, %112
  %123 = phi i32 [ %116, %112 ], [ %121, %117 ], !dbg !4122
  %124 = add i32 %98, %123, !dbg !4122
  br label %127, !dbg !4122

125:                                              ; preds = %93
  %126 = load i32, ptr %8, align 4, !dbg !4122
  br label %127, !dbg !4122

127:                                              ; preds = %125, %122
  %128 = phi i32 [ %124, %122 ], [ %126, %125 ], !dbg !4122
  store i32 %128, ptr %12, align 4, !dbg !4124
  %129 = load ptr, ptr %5, align 8, !dbg !4125
  call void @Fax3PutBits(ptr noundef %129, i32 noundef 1, i32 noundef 3), !dbg !4125
  %130 = load i32, ptr %9, align 4, !dbg !4126
  %131 = load i32, ptr %10, align 4, !dbg !4128
  %132 = add i32 %130, %131, !dbg !4129
  %133 = icmp eq i32 %132, 0, !dbg !4130
  br i1 %133, label %148, label %134, !dbg !4131

134:                                              ; preds = %127
  %135 = load ptr, ptr %6, align 8, !dbg !4132
  %136 = load i32, ptr %9, align 4, !dbg !4132
  %137 = lshr i32 %136, 3, !dbg !4132
  %138 = zext i32 %137 to i64, !dbg !4132
  %139 = getelementptr inbounds nuw i8, ptr %135, i64 %138, !dbg !4132
  %140 = load i8, ptr %139, align 1, !dbg !4132
  %141 = zext i8 %140 to i32, !dbg !4132
  %142 = load i32, ptr %9, align 4, !dbg !4132
  %143 = and i32 %142, 7, !dbg !4132
  %144 = sub i32 7, %143, !dbg !4132
  %145 = ashr i32 %141, %144, !dbg !4132
  %146 = and i32 %145, 1, !dbg !4132
  %147 = icmp eq i32 %146, 0, !dbg !4133
  br i1 %147, label %148, label %157, !dbg !4131

148:                                              ; preds = %134, %127
  %149 = load ptr, ptr %5, align 8, !dbg !4134
  %150 = load i32, ptr %10, align 4, !dbg !4136
  %151 = load i32, ptr %9, align 4, !dbg !4137
  %152 = sub i32 %150, %151, !dbg !4138
  call void @putspan(ptr noundef %149, i32 noundef %152, ptr noundef @TIFFFaxWhiteCodes), !dbg !4139
  %153 = load ptr, ptr %5, align 8, !dbg !4140
  %154 = load i32, ptr %12, align 4, !dbg !4141
  %155 = load i32, ptr %10, align 4, !dbg !4142
  %156 = sub i32 %154, %155, !dbg !4143
  call void @putspan(ptr noundef %153, i32 noundef %156, ptr noundef @TIFFFaxBlackCodes), !dbg !4144
  br label %166, !dbg !4145

157:                                              ; preds = %134
  %158 = load ptr, ptr %5, align 8, !dbg !4146
  %159 = load i32, ptr %10, align 4, !dbg !4148
  %160 = load i32, ptr %9, align 4, !dbg !4149
  %161 = sub i32 %159, %160, !dbg !4150
  call void @putspan(ptr noundef %158, i32 noundef %161, ptr noundef @TIFFFaxBlackCodes), !dbg !4151
  %162 = load ptr, ptr %5, align 8, !dbg !4152
  %163 = load i32, ptr %12, align 4, !dbg !4153
  %164 = load i32, ptr %10, align 4, !dbg !4154
  %165 = sub i32 %163, %164, !dbg !4155
  call void @putspan(ptr noundef %162, i32 noundef %165, ptr noundef @TIFFFaxWhiteCodes), !dbg !4156
  br label %166

166:                                              ; preds = %157, %148
  %167 = load i32, ptr %12, align 4, !dbg !4157
  store i32 %167, ptr %9, align 4, !dbg !4158
  br label %185, !dbg !4159

168:                                              ; preds = %90
  %169 = load ptr, ptr %5, align 8, !dbg !4160
  %170 = load i32, ptr %14, align 4, !dbg !4160
  %171 = add nsw i32 %170, 3, !dbg !4160
  %172 = sext i32 %171 to i64, !dbg !4160
  %173 = getelementptr inbounds [7 x %struct.tableentry], ptr @vcodes, i64 0, i64 %172, !dbg !4160
  %174 = getelementptr inbounds nuw %struct.tableentry, ptr %173, i32 0, i32 1, !dbg !4160
  %175 = load i16, ptr %174, align 2, !dbg !4160
  %176 = zext i16 %175 to i32, !dbg !4160
  %177 = load i32, ptr %14, align 4, !dbg !4160
  %178 = add nsw i32 %177, 3, !dbg !4160
  %179 = sext i32 %178 to i64, !dbg !4160
  %180 = getelementptr inbounds [7 x %struct.tableentry], ptr @vcodes, i64 0, i64 %179, !dbg !4160
  %181 = getelementptr inbounds nuw %struct.tableentry, ptr %180, i32 0, i32 0, !dbg !4160
  %182 = load i16, ptr %181, align 2, !dbg !4160
  %183 = zext i16 %182 to i32, !dbg !4160
  call void @Fax3PutBits(ptr noundef %169, i32 noundef %176, i32 noundef %183), !dbg !4160
  %184 = load i32, ptr %10, align 4, !dbg !4162
  store i32 %184, ptr %9, align 4, !dbg !4163
  br label %185

185:                                              ; preds = %168, %166
  br label %189, !dbg !4164

186:                                              ; preds = %79
  %187 = load ptr, ptr %5, align 8, !dbg !4165
  call void @Fax3PutBits(ptr noundef %187, i32 noundef 1, i32 noundef 4), !dbg !4165
  %188 = load i32, ptr %13, align 4, !dbg !4167
  store i32 %188, ptr %9, align 4, !dbg !4168
  br label %189

189:                                              ; preds = %186, %185
  %190 = load i32, ptr %9, align 4, !dbg !4169
  %191 = load i32, ptr %8, align 4, !dbg !4171
  %192 = icmp uge i32 %190, %191, !dbg !4172
  br i1 %192, label %193, label %194, !dbg !4172

193:                                              ; preds = %189
  br label %276, !dbg !4173

194:                                              ; preds = %189
  %195 = load i32, ptr %9, align 4, !dbg !4174
  %196 = load ptr, ptr %6, align 8, !dbg !4174
  %197 = load i32, ptr %9, align 4, !dbg !4174
  %198 = lshr i32 %197, 3, !dbg !4174
  %199 = zext i32 %198 to i64, !dbg !4174
  %200 = getelementptr inbounds nuw i8, ptr %196, i64 %199, !dbg !4174
  %201 = load i8, ptr %200, align 1, !dbg !4174
  %202 = zext i8 %201 to i32, !dbg !4174
  %203 = load i32, ptr %9, align 4, !dbg !4174
  %204 = and i32 %203, 7, !dbg !4174
  %205 = sub i32 7, %204, !dbg !4174
  %206 = ashr i32 %202, %205, !dbg !4174
  %207 = and i32 %206, 1, !dbg !4174
  %208 = icmp ne i32 %207, 0, !dbg !4174
  br i1 %208, label %209, label %214, !dbg !4174

209:                                              ; preds = %194
  %210 = load ptr, ptr %6, align 8, !dbg !4174
  %211 = load i32, ptr %9, align 4, !dbg !4174
  %212 = load i32, ptr %8, align 4, !dbg !4174
  %213 = call i32 @find1span(ptr noundef %210, i32 noundef %211, i32 noundef %212), !dbg !4174
  br label %219, !dbg !4174

214:                                              ; preds = %194
  %215 = load ptr, ptr %6, align 8, !dbg !4174
  %216 = load i32, ptr %9, align 4, !dbg !4174
  %217 = load i32, ptr %8, align 4, !dbg !4174
  %218 = call i32 @find0span(ptr noundef %215, i32 noundef %216, i32 noundef %217), !dbg !4174
  br label %219, !dbg !4174

219:                                              ; preds = %214, %209
  %220 = phi i32 [ %213, %209 ], [ %218, %214 ], !dbg !4174
  %221 = add i32 %195, %220, !dbg !4174
  store i32 %221, ptr %10, align 4, !dbg !4175
  %222 = load i32, ptr %9, align 4, !dbg !4176
  %223 = load ptr, ptr %6, align 8, !dbg !4176
  %224 = load i32, ptr %9, align 4, !dbg !4176
  %225 = lshr i32 %224, 3, !dbg !4176
  %226 = zext i32 %225 to i64, !dbg !4176
  %227 = getelementptr inbounds nuw i8, ptr %223, i64 %226, !dbg !4176
  %228 = load i8, ptr %227, align 1, !dbg !4176
  %229 = zext i8 %228 to i32, !dbg !4176
  %230 = load i32, ptr %9, align 4, !dbg !4176
  %231 = and i32 %230, 7, !dbg !4176
  %232 = sub i32 7, %231, !dbg !4176
  %233 = ashr i32 %229, %232, !dbg !4176
  %234 = and i32 %233, 1, !dbg !4176
  %235 = icmp ne i32 %234, 0, !dbg !4176
  br i1 %235, label %241, label %236, !dbg !4176

236:                                              ; preds = %219
  %237 = load ptr, ptr %7, align 8, !dbg !4176
  %238 = load i32, ptr %9, align 4, !dbg !4176
  %239 = load i32, ptr %8, align 4, !dbg !4176
  %240 = call i32 @find1span(ptr noundef %237, i32 noundef %238, i32 noundef %239), !dbg !4176
  br label %246, !dbg !4176

241:                                              ; preds = %219
  %242 = load ptr, ptr %7, align 8, !dbg !4176
  %243 = load i32, ptr %9, align 4, !dbg !4176
  %244 = load i32, ptr %8, align 4, !dbg !4176
  %245 = call i32 @find0span(ptr noundef %242, i32 noundef %243, i32 noundef %244), !dbg !4176
  br label %246, !dbg !4176

246:                                              ; preds = %241, %236
  %247 = phi i32 [ %240, %236 ], [ %245, %241 ], !dbg !4176
  %248 = add i32 %222, %247, !dbg !4176
  store i32 %248, ptr %11, align 4, !dbg !4177
  %249 = load i32, ptr %11, align 4, !dbg !4178
  %250 = load ptr, ptr %6, align 8, !dbg !4178
  %251 = load i32, ptr %9, align 4, !dbg !4178
  %252 = lshr i32 %251, 3, !dbg !4178
  %253 = zext i32 %252 to i64, !dbg !4178
  %254 = getelementptr inbounds nuw i8, ptr %250, i64 %253, !dbg !4178
  %255 = load i8, ptr %254, align 1, !dbg !4178
  %256 = zext i8 %255 to i32, !dbg !4178
  %257 = load i32, ptr %9, align 4, !dbg !4178
  %258 = and i32 %257, 7, !dbg !4178
  %259 = sub i32 7, %258, !dbg !4178
  %260 = ashr i32 %256, %259, !dbg !4178
  %261 = and i32 %260, 1, !dbg !4178
  %262 = icmp ne i32 %261, 0, !dbg !4178
  br i1 %262, label %263, label %268, !dbg !4178

263:                                              ; preds = %246
  %264 = load ptr, ptr %7, align 8, !dbg !4178
  %265 = load i32, ptr %11, align 4, !dbg !4178
  %266 = load i32, ptr %8, align 4, !dbg !4178
  %267 = call i32 @find1span(ptr noundef %264, i32 noundef %265, i32 noundef %266), !dbg !4178
  br label %273, !dbg !4178

268:                                              ; preds = %246
  %269 = load ptr, ptr %7, align 8, !dbg !4178
  %270 = load i32, ptr %11, align 4, !dbg !4178
  %271 = load i32, ptr %8, align 4, !dbg !4178
  %272 = call i32 @find0span(ptr noundef %269, i32 noundef %270, i32 noundef %271), !dbg !4178
  br label %273, !dbg !4178

273:                                              ; preds = %268, %263
  %274 = phi i32 [ %267, %263 ], [ %272, %268 ], !dbg !4178
  %275 = add i32 %249, %274, !dbg !4178
  store i32 %275, ptr %11, align 4, !dbg !4179
  br label %45, !dbg !4180, !llvm.loop !4181

276:                                              ; preds = %193
  ret i32 1, !dbg !4184
}

declare void @_TIFFmemcpy(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @find0span(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 !dbg !4185 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
    #dbg_declare(ptr %5, !4188, !DIExpression(), !4189)
  store i32 %1, ptr %6, align 4
    #dbg_declare(ptr %6, !4190, !DIExpression(), !4191)
  store i32 %2, ptr %7, align 4
    #dbg_declare(ptr %7, !4192, !DIExpression(), !4193)
    #dbg_declare(ptr %8, !4194, !DIExpression(), !4195)
  %12 = load i32, ptr %7, align 4, !dbg !4196
  %13 = load i32, ptr %6, align 4, !dbg !4197
  %14 = sub nsw i32 %12, %13, !dbg !4198
  store i32 %14, ptr %8, align 4, !dbg !4195
    #dbg_declare(ptr %9, !4199, !DIExpression(), !4200)
    #dbg_declare(ptr %10, !4201, !DIExpression(), !4202)
  %15 = load i32, ptr %6, align 4, !dbg !4203
  %16 = ashr i32 %15, 3, !dbg !4204
  %17 = load ptr, ptr %5, align 8, !dbg !4205
  %18 = sext i32 %16 to i64, !dbg !4205
  %19 = getelementptr inbounds i8, ptr %17, i64 %18, !dbg !4205
  store ptr %19, ptr %5, align 8, !dbg !4205
  %20 = load i32, ptr %8, align 4, !dbg !4206
  %21 = icmp sgt i32 %20, 0, !dbg !4208
  br i1 %21, label %22, label %63, !dbg !4209

22:                                               ; preds = %3
  %23 = load i32, ptr %6, align 4, !dbg !4210
  %24 = and i32 %23, 7, !dbg !4211
  store i32 %24, ptr %9, align 4, !dbg !4212
  %25 = icmp ne i32 %24, 0, !dbg !4212
  br i1 %25, label %26, label %63, !dbg !4209

26:                                               ; preds = %22
  %27 = load ptr, ptr %5, align 8, !dbg !4213
  %28 = load i8, ptr %27, align 1, !dbg !4215
  %29 = zext i8 %28 to i32, !dbg !4215
  %30 = load i32, ptr %9, align 4, !dbg !4216
  %31 = shl i32 %29, %30, !dbg !4217
  %32 = and i32 %31, 255, !dbg !4218
  %33 = sext i32 %32 to i64, !dbg !4219
  %34 = getelementptr inbounds [256 x i8], ptr @zeroruns, i64 0, i64 %33, !dbg !4219
  %35 = load i8, ptr %34, align 1, !dbg !4219
  %36 = zext i8 %35 to i32, !dbg !4219
  store i32 %36, ptr %10, align 4, !dbg !4220
  %37 = load i32, ptr %10, align 4, !dbg !4221
  %38 = load i32, ptr %9, align 4, !dbg !4223
  %39 = sub nsw i32 8, %38, !dbg !4224
  %40 = icmp sgt i32 %37, %39, !dbg !4225
  br i1 %40, label %41, label %44, !dbg !4225

41:                                               ; preds = %26
  %42 = load i32, ptr %9, align 4, !dbg !4226
  %43 = sub nsw i32 8, %42, !dbg !4227
  store i32 %43, ptr %10, align 4, !dbg !4228
  br label %44, !dbg !4229

44:                                               ; preds = %41, %26
  %45 = load i32, ptr %10, align 4, !dbg !4230
  %46 = load i32, ptr %8, align 4, !dbg !4232
  %47 = icmp sgt i32 %45, %46, !dbg !4233
  br i1 %47, label %48, label %50, !dbg !4233

48:                                               ; preds = %44
  %49 = load i32, ptr %8, align 4, !dbg !4234
  store i32 %49, ptr %10, align 4, !dbg !4235
  br label %50, !dbg !4236

50:                                               ; preds = %48, %44
  %51 = load i32, ptr %9, align 4, !dbg !4237
  %52 = load i32, ptr %10, align 4, !dbg !4239
  %53 = add nsw i32 %51, %52, !dbg !4240
  %54 = icmp slt i32 %53, 8, !dbg !4241
  br i1 %54, label %55, label %57, !dbg !4241

55:                                               ; preds = %50
  %56 = load i32, ptr %10, align 4, !dbg !4242
  store i32 %56, ptr %4, align 4, !dbg !4243
  br label %169, !dbg !4243

57:                                               ; preds = %50
  %58 = load i32, ptr %10, align 4, !dbg !4244
  %59 = load i32, ptr %8, align 4, !dbg !4245
  %60 = sub nsw i32 %59, %58, !dbg !4245
  store i32 %60, ptr %8, align 4, !dbg !4245
  %61 = load ptr, ptr %5, align 8, !dbg !4246
  %62 = getelementptr inbounds nuw i8, ptr %61, i32 1, !dbg !4246
  store ptr %62, ptr %5, align 8, !dbg !4246
  br label %64, !dbg !4247

63:                                               ; preds = %22, %3
  store i32 0, ptr %10, align 4, !dbg !4248
  br label %64

64:                                               ; preds = %63, %57
  %65 = load i32, ptr %8, align 4, !dbg !4249
  %66 = sext i32 %65 to i64, !dbg !4249
  %67 = icmp uge i64 %66, 128, !dbg !4251
  br i1 %67, label %68, label %121, !dbg !4251

68:                                               ; preds = %64
    #dbg_declare(ptr %11, !4252, !DIExpression(), !4254)
  br label %69, !dbg !4255

69:                                               ; preds = %89, %68
  %70 = load ptr, ptr %5, align 8, !dbg !4256
  %71 = ptrtoint ptr %70 to i64, !dbg !4256
  %72 = and i64 %71, 7, !dbg !4256
  %73 = icmp eq i64 %72, 0, !dbg !4256
  %74 = xor i1 %73, true, !dbg !4257
  br i1 %74, label %75, label %96, !dbg !4255

75:                                               ; preds = %69
  %76 = load ptr, ptr %5, align 8, !dbg !4258
  %77 = load i8, ptr %76, align 1, !dbg !4261
  %78 = zext i8 %77 to i32, !dbg !4261
  %79 = icmp ne i32 %78, 0, !dbg !4262
  br i1 %79, label %80, label %89, !dbg !4262

80:                                               ; preds = %75
  %81 = load i32, ptr %10, align 4, !dbg !4263
  %82 = load ptr, ptr %5, align 8, !dbg !4264
  %83 = load i8, ptr %82, align 1, !dbg !4265
  %84 = zext i8 %83 to i64, !dbg !4266
  %85 = getelementptr inbounds nuw [256 x i8], ptr @zeroruns, i64 0, i64 %84, !dbg !4266
  %86 = load i8, ptr %85, align 1, !dbg !4266
  %87 = zext i8 %86 to i32, !dbg !4266
  %88 = add nsw i32 %81, %87, !dbg !4267
  store i32 %88, ptr %4, align 4, !dbg !4268
  br label %169, !dbg !4268

89:                                               ; preds = %75
  %90 = load i32, ptr %10, align 4, !dbg !4269
  %91 = add nsw i32 %90, 8, !dbg !4269
  store i32 %91, ptr %10, align 4, !dbg !4269
  %92 = load i32, ptr %8, align 4, !dbg !4270
  %93 = sub nsw i32 %92, 8, !dbg !4270
  store i32 %93, ptr %8, align 4, !dbg !4270
  %94 = load ptr, ptr %5, align 8, !dbg !4271
  %95 = getelementptr inbounds nuw i8, ptr %94, i32 1, !dbg !4271
  store ptr %95, ptr %5, align 8, !dbg !4271
  br label %69, !dbg !4255, !llvm.loop !4272

96:                                               ; preds = %69
  %97 = load ptr, ptr %5, align 8, !dbg !4274
  store ptr %97, ptr %11, align 8, !dbg !4275
  br label %98, !dbg !4276

98:                                               ; preds = %108, %96
  %99 = load i32, ptr %8, align 4, !dbg !4277
  %100 = sext i32 %99 to i64, !dbg !4277
  %101 = icmp uge i64 %100, 64, !dbg !4278
  br i1 %101, label %102, label %106, !dbg !4279

102:                                              ; preds = %98
  %103 = load ptr, ptr %11, align 8, !dbg !4280
  %104 = load i64, ptr %103, align 8, !dbg !4281
  %105 = icmp eq i64 %104, 0, !dbg !4282
  br label %106

106:                                              ; preds = %102, %98
  %107 = phi i1 [ false, %98 ], [ %105, %102 ], !dbg !4283
  br i1 %107, label %108, label %119, !dbg !4276

108:                                              ; preds = %106
  %109 = load i32, ptr %10, align 4, !dbg !4284
  %110 = sext i32 %109 to i64, !dbg !4284
  %111 = add i64 %110, 64, !dbg !4284
  %112 = trunc i64 %111 to i32, !dbg !4284
  store i32 %112, ptr %10, align 4, !dbg !4284
  %113 = load i32, ptr %8, align 4, !dbg !4286
  %114 = sext i32 %113 to i64, !dbg !4286
  %115 = sub i64 %114, 64, !dbg !4286
  %116 = trunc i64 %115 to i32, !dbg !4286
  store i32 %116, ptr %8, align 4, !dbg !4286
  %117 = load ptr, ptr %11, align 8, !dbg !4287
  %118 = getelementptr inbounds nuw i64, ptr %117, i32 1, !dbg !4287
  store ptr %118, ptr %11, align 8, !dbg !4287
  br label %98, !dbg !4276, !llvm.loop !4288

119:                                              ; preds = %106
  %120 = load ptr, ptr %11, align 8, !dbg !4290
  store ptr %120, ptr %5, align 8, !dbg !4291
  br label %121, !dbg !4292

121:                                              ; preds = %119, %64
  br label %122, !dbg !4293

122:                                              ; preds = %139, %121
  %123 = load i32, ptr %8, align 4, !dbg !4294
  %124 = icmp sge i32 %123, 8, !dbg !4295
  br i1 %124, label %125, label %146, !dbg !4293

125:                                              ; preds = %122
  %126 = load ptr, ptr %5, align 8, !dbg !4296
  %127 = load i8, ptr %126, align 1, !dbg !4299
  %128 = zext i8 %127 to i32, !dbg !4299
  %129 = icmp ne i32 %128, 0, !dbg !4300
  br i1 %129, label %130, label %139, !dbg !4300

130:                                              ; preds = %125
  %131 = load i32, ptr %10, align 4, !dbg !4301
  %132 = load ptr, ptr %5, align 8, !dbg !4302
  %133 = load i8, ptr %132, align 1, !dbg !4303
  %134 = zext i8 %133 to i64, !dbg !4304
  %135 = getelementptr inbounds nuw [256 x i8], ptr @zeroruns, i64 0, i64 %134, !dbg !4304
  %136 = load i8, ptr %135, align 1, !dbg !4304
  %137 = zext i8 %136 to i32, !dbg !4304
  %138 = add nsw i32 %131, %137, !dbg !4305
  store i32 %138, ptr %4, align 4, !dbg !4306
  br label %169, !dbg !4306

139:                                              ; preds = %125
  %140 = load i32, ptr %10, align 4, !dbg !4307
  %141 = add nsw i32 %140, 8, !dbg !4307
  store i32 %141, ptr %10, align 4, !dbg !4307
  %142 = load i32, ptr %8, align 4, !dbg !4308
  %143 = sub nsw i32 %142, 8, !dbg !4308
  store i32 %143, ptr %8, align 4, !dbg !4308
  %144 = load ptr, ptr %5, align 8, !dbg !4309
  %145 = getelementptr inbounds nuw i8, ptr %144, i32 1, !dbg !4309
  store ptr %145, ptr %5, align 8, !dbg !4309
  br label %122, !dbg !4293, !llvm.loop !4310

146:                                              ; preds = %122
  %147 = load i32, ptr %8, align 4, !dbg !4312
  %148 = icmp sgt i32 %147, 0, !dbg !4314
  br i1 %148, label %149, label %167, !dbg !4314

149:                                              ; preds = %146
  %150 = load ptr, ptr %5, align 8, !dbg !4315
  %151 = load i8, ptr %150, align 1, !dbg !4317
  %152 = zext i8 %151 to i64, !dbg !4318
  %153 = getelementptr inbounds nuw [256 x i8], ptr @zeroruns, i64 0, i64 %152, !dbg !4318
  %154 = load i8, ptr %153, align 1, !dbg !4318
  %155 = zext i8 %154 to i32, !dbg !4318
  store i32 %155, ptr %9, align 4, !dbg !4319
  %156 = load i32, ptr %9, align 4, !dbg !4320
  %157 = load i32, ptr %8, align 4, !dbg !4321
  %158 = icmp sgt i32 %156, %157, !dbg !4322
  br i1 %158, label %159, label %161, !dbg !4320

159:                                              ; preds = %149
  %160 = load i32, ptr %8, align 4, !dbg !4323
  br label %163, !dbg !4320

161:                                              ; preds = %149
  %162 = load i32, ptr %9, align 4, !dbg !4324
  br label %163, !dbg !4320

163:                                              ; preds = %161, %159
  %164 = phi i32 [ %160, %159 ], [ %162, %161 ], !dbg !4320
  %165 = load i32, ptr %10, align 4, !dbg !4325
  %166 = add nsw i32 %165, %164, !dbg !4325
  store i32 %166, ptr %10, align 4, !dbg !4325
  br label %167, !dbg !4326

167:                                              ; preds = %163, %146
  %168 = load i32, ptr %10, align 4, !dbg !4327
  store i32 %168, ptr %4, align 4, !dbg !4328
  br label %169, !dbg !4328

169:                                              ; preds = %167, %130, %80, %55
  %170 = load i32, ptr %4, align 4, !dbg !4329
  ret i32 %170, !dbg !4329
}

; Function Attrs: noinline nounwind uwtable
define internal void @putspan(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 !dbg !4330 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
    #dbg_declare(ptr %4, !4334, !DIExpression(), !4335)
  store i32 %1, ptr %5, align 4
    #dbg_declare(ptr %5, !4336, !DIExpression(), !4337)
  store ptr %2, ptr %6, align 8
    #dbg_declare(ptr %6, !4338, !DIExpression(), !4339)
    #dbg_declare(ptr %7, !4340, !DIExpression(), !4341)
  %14 = load ptr, ptr %4, align 8, !dbg !4342
  %15 = getelementptr inbounds nuw %struct.tiff, ptr %14, i32 0, i32 37, !dbg !4342
  %16 = load ptr, ptr %15, align 8, !dbg !4342
  store ptr %16, ptr %7, align 8, !dbg !4341
    #dbg_declare(ptr %8, !4343, !DIExpression(), !4344)
  %17 = load ptr, ptr %7, align 8, !dbg !4345
  %18 = getelementptr inbounds nuw %struct.Fax3EncodeState, ptr %17, i32 0, i32 2, !dbg !4346
  %19 = load i32, ptr %18, align 4, !dbg !4346
  store i32 %19, ptr %8, align 4, !dbg !4344
    #dbg_declare(ptr %9, !4347, !DIExpression(), !4348)
  %20 = load ptr, ptr %7, align 8, !dbg !4349
  %21 = getelementptr inbounds nuw %struct.Fax3EncodeState, ptr %20, i32 0, i32 1, !dbg !4350
  %22 = load i32, ptr %21, align 8, !dbg !4350
  store i32 %22, ptr %9, align 4, !dbg !4348
    #dbg_declare(ptr %10, !4351, !DIExpression(), !4352)
    #dbg_declare(ptr %11, !4353, !DIExpression(), !4354)
  br label %23, !dbg !4355

23:                                               ; preds = %113, %3
  %24 = load i32, ptr %5, align 4, !dbg !4356
  %25 = icmp sge i32 %24, 2624, !dbg !4357
  br i1 %25, label %26, label %120, !dbg !4355

26:                                               ; preds = %23
    #dbg_declare(ptr %12, !4358, !DIExpression(), !4360)
  %27 = load ptr, ptr %6, align 8, !dbg !4361
  %28 = getelementptr inbounds %struct.tableentry, ptr %27, i64 103, !dbg !4361
  store ptr %28, ptr %12, align 8, !dbg !4360
  %29 = load ptr, ptr %12, align 8, !dbg !4362
  %30 = getelementptr inbounds nuw %struct.tableentry, ptr %29, i32 0, i32 1, !dbg !4363
  %31 = load i16, ptr %30, align 2, !dbg !4363
  %32 = zext i16 %31 to i32, !dbg !4362
  store i32 %32, ptr %10, align 4, !dbg !4364
  %33 = load ptr, ptr %12, align 8, !dbg !4365
  %34 = getelementptr inbounds nuw %struct.tableentry, ptr %33, i32 0, i32 0, !dbg !4366
  %35 = load i16, ptr %34, align 2, !dbg !4366
  %36 = zext i16 %35 to i32, !dbg !4365
  store i32 %36, ptr %11, align 4, !dbg !4367
  br label %37, !dbg !4368

37:                                               ; preds = %62, %26
  %38 = load i32, ptr %11, align 4, !dbg !4368
  %39 = load i32, ptr %8, align 4, !dbg !4368
  %40 = icmp ugt i32 %38, %39, !dbg !4368
  br i1 %40, label %41, label %73, !dbg !4368

41:                                               ; preds = %37
  %42 = load i32, ptr %10, align 4, !dbg !4370
  %43 = load i32, ptr %11, align 4, !dbg !4370
  %44 = load i32, ptr %8, align 4, !dbg !4370
  %45 = sub i32 %43, %44, !dbg !4370
  %46 = lshr i32 %42, %45, !dbg !4370
  %47 = load i32, ptr %9, align 4, !dbg !4370
  %48 = or i32 %47, %46, !dbg !4370
  store i32 %48, ptr %9, align 4, !dbg !4370
  %49 = load i32, ptr %8, align 4, !dbg !4370
  %50 = load i32, ptr %11, align 4, !dbg !4370
  %51 = sub i32 %50, %49, !dbg !4370
  store i32 %51, ptr %11, align 4, !dbg !4370
  %52 = load ptr, ptr %4, align 8, !dbg !4372
  %53 = getelementptr inbounds nuw %struct.tiff, ptr %52, i32 0, i32 43, !dbg !4372
  %54 = load i32, ptr %53, align 8, !dbg !4372
  %55 = load ptr, ptr %4, align 8, !dbg !4372
  %56 = getelementptr inbounds nuw %struct.tiff, ptr %55, i32 0, i32 41, !dbg !4372
  %57 = load i32, ptr %56, align 8, !dbg !4372
  %58 = icmp sge i32 %54, %57, !dbg !4372
  br i1 %58, label %59, label %62, !dbg !4372

59:                                               ; preds = %41
  %60 = load ptr, ptr %4, align 8, !dbg !4372
  %61 = call i32 @TIFFFlushData1(ptr noundef %60), !dbg !4372
  br label %62, !dbg !4372

62:                                               ; preds = %59, %41
  %63 = load i32, ptr %9, align 4, !dbg !4375
  %64 = trunc i32 %63 to i8, !dbg !4375
  %65 = load ptr, ptr %4, align 8, !dbg !4375
  %66 = getelementptr inbounds nuw %struct.tiff, ptr %65, i32 0, i32 42, !dbg !4375
  %67 = load ptr, ptr %66, align 8, !dbg !4375
  %68 = getelementptr inbounds nuw i8, ptr %67, i32 1, !dbg !4375
  store ptr %68, ptr %66, align 8, !dbg !4375
  store i8 %64, ptr %67, align 1, !dbg !4375
  %69 = load ptr, ptr %4, align 8, !dbg !4375
  %70 = getelementptr inbounds nuw %struct.tiff, ptr %69, i32 0, i32 43, !dbg !4375
  %71 = load i32, ptr %70, align 8, !dbg !4375
  %72 = add nsw i32 %71, 1, !dbg !4375
  store i32 %72, ptr %70, align 8, !dbg !4375
  store i32 0, ptr %9, align 4, !dbg !4375
  store i32 8, ptr %8, align 4, !dbg !4375
  br label %37, !dbg !4368, !llvm.loop !4376

73:                                               ; preds = %37
  %74 = load i32, ptr %10, align 4, !dbg !4368
  %75 = load i32, ptr %11, align 4, !dbg !4368
  %76 = zext i32 %75 to i64, !dbg !4368
  %77 = getelementptr inbounds nuw [9 x i32], ptr @_msbmask, i64 0, i64 %76, !dbg !4368
  %78 = load i32, ptr %77, align 4, !dbg !4368
  %79 = and i32 %74, %78, !dbg !4368
  %80 = load i32, ptr %8, align 4, !dbg !4368
  %81 = load i32, ptr %11, align 4, !dbg !4368
  %82 = sub i32 %80, %81, !dbg !4368
  %83 = shl i32 %79, %82, !dbg !4368
  %84 = load i32, ptr %9, align 4, !dbg !4368
  %85 = or i32 %84, %83, !dbg !4368
  store i32 %85, ptr %9, align 4, !dbg !4368
  %86 = load i32, ptr %11, align 4, !dbg !4368
  %87 = load i32, ptr %8, align 4, !dbg !4368
  %88 = sub i32 %87, %86, !dbg !4368
  store i32 %88, ptr %8, align 4, !dbg !4368
  %89 = load i32, ptr %8, align 4, !dbg !4377
  %90 = icmp eq i32 %89, 0, !dbg !4377
  br i1 %90, label %91, label %113, !dbg !4377

91:                                               ; preds = %73
  %92 = load ptr, ptr %4, align 8, !dbg !4379
  %93 = getelementptr inbounds nuw %struct.tiff, ptr %92, i32 0, i32 43, !dbg !4379
  %94 = load i32, ptr %93, align 8, !dbg !4379
  %95 = load ptr, ptr %4, align 8, !dbg !4379
  %96 = getelementptr inbounds nuw %struct.tiff, ptr %95, i32 0, i32 41, !dbg !4379
  %97 = load i32, ptr %96, align 8, !dbg !4379
  %98 = icmp sge i32 %94, %97, !dbg !4379
  br i1 %98, label %99, label %102, !dbg !4379

99:                                               ; preds = %91
  %100 = load ptr, ptr %4, align 8, !dbg !4379
  %101 = call i32 @TIFFFlushData1(ptr noundef %100), !dbg !4379
  br label %102, !dbg !4379

102:                                              ; preds = %99, %91
  %103 = load i32, ptr %9, align 4, !dbg !4382
  %104 = trunc i32 %103 to i8, !dbg !4382
  %105 = load ptr, ptr %4, align 8, !dbg !4382
  %106 = getelementptr inbounds nuw %struct.tiff, ptr %105, i32 0, i32 42, !dbg !4382
  %107 = load ptr, ptr %106, align 8, !dbg !4382
  %108 = getelementptr inbounds nuw i8, ptr %107, i32 1, !dbg !4382
  store ptr %108, ptr %106, align 8, !dbg !4382
  store i8 %104, ptr %107, align 1, !dbg !4382
  %109 = load ptr, ptr %4, align 8, !dbg !4382
  %110 = getelementptr inbounds nuw %struct.tiff, ptr %109, i32 0, i32 43, !dbg !4382
  %111 = load i32, ptr %110, align 8, !dbg !4382
  %112 = add nsw i32 %111, 1, !dbg !4382
  store i32 %112, ptr %110, align 8, !dbg !4382
  store i32 0, ptr %9, align 4, !dbg !4382
  store i32 8, ptr %8, align 4, !dbg !4382
  br label %113, !dbg !4382

113:                                              ; preds = %102, %73
  %114 = load ptr, ptr %12, align 8, !dbg !4383
  %115 = getelementptr inbounds nuw %struct.tableentry, ptr %114, i32 0, i32 2, !dbg !4384
  %116 = load i16, ptr %115, align 2, !dbg !4384
  %117 = sext i16 %116 to i32, !dbg !4383
  %118 = load i32, ptr %5, align 4, !dbg !4385
  %119 = sub nsw i32 %118, %117, !dbg !4385
  store i32 %119, ptr %5, align 4, !dbg !4385
  br label %23, !dbg !4355, !llvm.loop !4386

120:                                              ; preds = %23
  %121 = load i32, ptr %5, align 4, !dbg !4388
  %122 = icmp sge i32 %121, 64, !dbg !4390
  br i1 %122, label %123, label %232, !dbg !4390

123:                                              ; preds = %120
    #dbg_declare(ptr %13, !4391, !DIExpression(), !4393)
  %124 = load ptr, ptr %6, align 8, !dbg !4394
  %125 = load i32, ptr %5, align 4, !dbg !4395
  %126 = ashr i32 %125, 6, !dbg !4396
  %127 = add nsw i32 63, %126, !dbg !4397
  %128 = sext i32 %127 to i64, !dbg !4394
  %129 = getelementptr inbounds %struct.tableentry, ptr %124, i64 %128, !dbg !4394
  store ptr %129, ptr %13, align 8, !dbg !4393
  %130 = load ptr, ptr %13, align 8, !dbg !4398
  %131 = getelementptr inbounds nuw %struct.tableentry, ptr %130, i32 0, i32 2, !dbg !4398
  %132 = load i16, ptr %131, align 2, !dbg !4398
  %133 = sext i16 %132 to i32, !dbg !4398
  %134 = load i32, ptr %5, align 4, !dbg !4398
  %135 = ashr i32 %134, 6, !dbg !4398
  %136 = mul nsw i32 64, %135, !dbg !4398
  %137 = icmp eq i32 %133, %136, !dbg !4398
  br i1 %137, label %138, label %139, !dbg !4398

138:                                              ; preds = %123
  br label %140, !dbg !4398

139:                                              ; preds = %123
  call void @__assert_fail(ptr noundef @.str.42, ptr noundef @.str.1, i32 noundef 632, ptr noundef @__PRETTY_FUNCTION__.putspan) #4, !dbg !4398
  unreachable, !dbg !4398

140:                                              ; preds = %138
  %141 = load ptr, ptr %13, align 8, !dbg !4401
  %142 = getelementptr inbounds nuw %struct.tableentry, ptr %141, i32 0, i32 1, !dbg !4402
  %143 = load i16, ptr %142, align 2, !dbg !4402
  %144 = zext i16 %143 to i32, !dbg !4401
  store i32 %144, ptr %10, align 4, !dbg !4403
  %145 = load ptr, ptr %13, align 8, !dbg !4404
  %146 = getelementptr inbounds nuw %struct.tableentry, ptr %145, i32 0, i32 0, !dbg !4405
  %147 = load i16, ptr %146, align 2, !dbg !4405
  %148 = zext i16 %147 to i32, !dbg !4404
  store i32 %148, ptr %11, align 4, !dbg !4406
  br label %149, !dbg !4407

149:                                              ; preds = %174, %140
  %150 = load i32, ptr %11, align 4, !dbg !4407
  %151 = load i32, ptr %8, align 4, !dbg !4407
  %152 = icmp ugt i32 %150, %151, !dbg !4407
  br i1 %152, label %153, label %185, !dbg !4407

153:                                              ; preds = %149
  %154 = load i32, ptr %10, align 4, !dbg !4409
  %155 = load i32, ptr %11, align 4, !dbg !4409
  %156 = load i32, ptr %8, align 4, !dbg !4409
  %157 = sub i32 %155, %156, !dbg !4409
  %158 = lshr i32 %154, %157, !dbg !4409
  %159 = load i32, ptr %9, align 4, !dbg !4409
  %160 = or i32 %159, %158, !dbg !4409
  store i32 %160, ptr %9, align 4, !dbg !4409
  %161 = load i32, ptr %8, align 4, !dbg !4409
  %162 = load i32, ptr %11, align 4, !dbg !4409
  %163 = sub i32 %162, %161, !dbg !4409
  store i32 %163, ptr %11, align 4, !dbg !4409
  %164 = load ptr, ptr %4, align 8, !dbg !4411
  %165 = getelementptr inbounds nuw %struct.tiff, ptr %164, i32 0, i32 43, !dbg !4411
  %166 = load i32, ptr %165, align 8, !dbg !4411
  %167 = load ptr, ptr %4, align 8, !dbg !4411
  %168 = getelementptr inbounds nuw %struct.tiff, ptr %167, i32 0, i32 41, !dbg !4411
  %169 = load i32, ptr %168, align 8, !dbg !4411
  %170 = icmp sge i32 %166, %169, !dbg !4411
  br i1 %170, label %171, label %174, !dbg !4411

171:                                              ; preds = %153
  %172 = load ptr, ptr %4, align 8, !dbg !4411
  %173 = call i32 @TIFFFlushData1(ptr noundef %172), !dbg !4411
  br label %174, !dbg !4411

174:                                              ; preds = %171, %153
  %175 = load i32, ptr %9, align 4, !dbg !4414
  %176 = trunc i32 %175 to i8, !dbg !4414
  %177 = load ptr, ptr %4, align 8, !dbg !4414
  %178 = getelementptr inbounds nuw %struct.tiff, ptr %177, i32 0, i32 42, !dbg !4414
  %179 = load ptr, ptr %178, align 8, !dbg !4414
  %180 = getelementptr inbounds nuw i8, ptr %179, i32 1, !dbg !4414
  store ptr %180, ptr %178, align 8, !dbg !4414
  store i8 %176, ptr %179, align 1, !dbg !4414
  %181 = load ptr, ptr %4, align 8, !dbg !4414
  %182 = getelementptr inbounds nuw %struct.tiff, ptr %181, i32 0, i32 43, !dbg !4414
  %183 = load i32, ptr %182, align 8, !dbg !4414
  %184 = add nsw i32 %183, 1, !dbg !4414
  store i32 %184, ptr %182, align 8, !dbg !4414
  store i32 0, ptr %9, align 4, !dbg !4414
  store i32 8, ptr %8, align 4, !dbg !4414
  br label %149, !dbg !4407, !llvm.loop !4415

185:                                              ; preds = %149
  %186 = load i32, ptr %10, align 4, !dbg !4407
  %187 = load i32, ptr %11, align 4, !dbg !4407
  %188 = zext i32 %187 to i64, !dbg !4407
  %189 = getelementptr inbounds nuw [9 x i32], ptr @_msbmask, i64 0, i64 %188, !dbg !4407
  %190 = load i32, ptr %189, align 4, !dbg !4407
  %191 = and i32 %186, %190, !dbg !4407
  %192 = load i32, ptr %8, align 4, !dbg !4407
  %193 = load i32, ptr %11, align 4, !dbg !4407
  %194 = sub i32 %192, %193, !dbg !4407
  %195 = shl i32 %191, %194, !dbg !4407
  %196 = load i32, ptr %9, align 4, !dbg !4407
  %197 = or i32 %196, %195, !dbg !4407
  store i32 %197, ptr %9, align 4, !dbg !4407
  %198 = load i32, ptr %11, align 4, !dbg !4407
  %199 = load i32, ptr %8, align 4, !dbg !4407
  %200 = sub i32 %199, %198, !dbg !4407
  store i32 %200, ptr %8, align 4, !dbg !4407
  %201 = load i32, ptr %8, align 4, !dbg !4416
  %202 = icmp eq i32 %201, 0, !dbg !4416
  br i1 %202, label %203, label %225, !dbg !4416

203:                                              ; preds = %185
  %204 = load ptr, ptr %4, align 8, !dbg !4418
  %205 = getelementptr inbounds nuw %struct.tiff, ptr %204, i32 0, i32 43, !dbg !4418
  %206 = load i32, ptr %205, align 8, !dbg !4418
  %207 = load ptr, ptr %4, align 8, !dbg !4418
  %208 = getelementptr inbounds nuw %struct.tiff, ptr %207, i32 0, i32 41, !dbg !4418
  %209 = load i32, ptr %208, align 8, !dbg !4418
  %210 = icmp sge i32 %206, %209, !dbg !4418
  br i1 %210, label %211, label %214, !dbg !4418

211:                                              ; preds = %203
  %212 = load ptr, ptr %4, align 8, !dbg !4418
  %213 = call i32 @TIFFFlushData1(ptr noundef %212), !dbg !4418
  br label %214, !dbg !4418

214:                                              ; preds = %211, %203
  %215 = load i32, ptr %9, align 4, !dbg !4421
  %216 = trunc i32 %215 to i8, !dbg !4421
  %217 = load ptr, ptr %4, align 8, !dbg !4421
  %218 = getelementptr inbounds nuw %struct.tiff, ptr %217, i32 0, i32 42, !dbg !4421
  %219 = load ptr, ptr %218, align 8, !dbg !4421
  %220 = getelementptr inbounds nuw i8, ptr %219, i32 1, !dbg !4421
  store ptr %220, ptr %218, align 8, !dbg !4421
  store i8 %216, ptr %219, align 1, !dbg !4421
  %221 = load ptr, ptr %4, align 8, !dbg !4421
  %222 = getelementptr inbounds nuw %struct.tiff, ptr %221, i32 0, i32 43, !dbg !4421
  %223 = load i32, ptr %222, align 8, !dbg !4421
  %224 = add nsw i32 %223, 1, !dbg !4421
  store i32 %224, ptr %222, align 8, !dbg !4421
  store i32 0, ptr %9, align 4, !dbg !4421
  store i32 8, ptr %8, align 4, !dbg !4421
  br label %225, !dbg !4421

225:                                              ; preds = %214, %185
  %226 = load ptr, ptr %13, align 8, !dbg !4422
  %227 = getelementptr inbounds nuw %struct.tableentry, ptr %226, i32 0, i32 2, !dbg !4423
  %228 = load i16, ptr %227, align 2, !dbg !4423
  %229 = sext i16 %228 to i32, !dbg !4422
  %230 = load i32, ptr %5, align 4, !dbg !4424
  %231 = sub nsw i32 %230, %229, !dbg !4424
  store i32 %231, ptr %5, align 4, !dbg !4424
  br label %232, !dbg !4425

232:                                              ; preds = %225, %120
  %233 = load ptr, ptr %6, align 8, !dbg !4426
  %234 = load i32, ptr %5, align 4, !dbg !4427
  %235 = sext i32 %234 to i64, !dbg !4426
  %236 = getelementptr inbounds %struct.tableentry, ptr %233, i64 %235, !dbg !4426
  %237 = getelementptr inbounds nuw %struct.tableentry, ptr %236, i32 0, i32 1, !dbg !4428
  %238 = load i16, ptr %237, align 2, !dbg !4428
  %239 = zext i16 %238 to i32, !dbg !4426
  store i32 %239, ptr %10, align 4, !dbg !4429
  %240 = load ptr, ptr %6, align 8, !dbg !4430
  %241 = load i32, ptr %5, align 4, !dbg !4431
  %242 = sext i32 %241 to i64, !dbg !4430
  %243 = getelementptr inbounds %struct.tableentry, ptr %240, i64 %242, !dbg !4430
  %244 = getelementptr inbounds nuw %struct.tableentry, ptr %243, i32 0, i32 0, !dbg !4432
  %245 = load i16, ptr %244, align 2, !dbg !4432
  %246 = zext i16 %245 to i32, !dbg !4430
  store i32 %246, ptr %11, align 4, !dbg !4433
  br label %247, !dbg !4434

247:                                              ; preds = %272, %232
  %248 = load i32, ptr %11, align 4, !dbg !4434
  %249 = load i32, ptr %8, align 4, !dbg !4434
  %250 = icmp ugt i32 %248, %249, !dbg !4434
  br i1 %250, label %251, label %283, !dbg !4434

251:                                              ; preds = %247
  %252 = load i32, ptr %10, align 4, !dbg !4436
  %253 = load i32, ptr %11, align 4, !dbg !4436
  %254 = load i32, ptr %8, align 4, !dbg !4436
  %255 = sub i32 %253, %254, !dbg !4436
  %256 = lshr i32 %252, %255, !dbg !4436
  %257 = load i32, ptr %9, align 4, !dbg !4436
  %258 = or i32 %257, %256, !dbg !4436
  store i32 %258, ptr %9, align 4, !dbg !4436
  %259 = load i32, ptr %8, align 4, !dbg !4436
  %260 = load i32, ptr %11, align 4, !dbg !4436
  %261 = sub i32 %260, %259, !dbg !4436
  store i32 %261, ptr %11, align 4, !dbg !4436
  %262 = load ptr, ptr %4, align 8, !dbg !4438
  %263 = getelementptr inbounds nuw %struct.tiff, ptr %262, i32 0, i32 43, !dbg !4438
  %264 = load i32, ptr %263, align 8, !dbg !4438
  %265 = load ptr, ptr %4, align 8, !dbg !4438
  %266 = getelementptr inbounds nuw %struct.tiff, ptr %265, i32 0, i32 41, !dbg !4438
  %267 = load i32, ptr %266, align 8, !dbg !4438
  %268 = icmp sge i32 %264, %267, !dbg !4438
  br i1 %268, label %269, label %272, !dbg !4438

269:                                              ; preds = %251
  %270 = load ptr, ptr %4, align 8, !dbg !4438
  %271 = call i32 @TIFFFlushData1(ptr noundef %270), !dbg !4438
  br label %272, !dbg !4438

272:                                              ; preds = %269, %251
  %273 = load i32, ptr %9, align 4, !dbg !4441
  %274 = trunc i32 %273 to i8, !dbg !4441
  %275 = load ptr, ptr %4, align 8, !dbg !4441
  %276 = getelementptr inbounds nuw %struct.tiff, ptr %275, i32 0, i32 42, !dbg !4441
  %277 = load ptr, ptr %276, align 8, !dbg !4441
  %278 = getelementptr inbounds nuw i8, ptr %277, i32 1, !dbg !4441
  store ptr %278, ptr %276, align 8, !dbg !4441
  store i8 %274, ptr %277, align 1, !dbg !4441
  %279 = load ptr, ptr %4, align 8, !dbg !4441
  %280 = getelementptr inbounds nuw %struct.tiff, ptr %279, i32 0, i32 43, !dbg !4441
  %281 = load i32, ptr %280, align 8, !dbg !4441
  %282 = add nsw i32 %281, 1, !dbg !4441
  store i32 %282, ptr %280, align 8, !dbg !4441
  store i32 0, ptr %9, align 4, !dbg !4441
  store i32 8, ptr %8, align 4, !dbg !4441
  br label %247, !dbg !4434, !llvm.loop !4442

283:                                              ; preds = %247
  %284 = load i32, ptr %10, align 4, !dbg !4434
  %285 = load i32, ptr %11, align 4, !dbg !4434
  %286 = zext i32 %285 to i64, !dbg !4434
  %287 = getelementptr inbounds nuw [9 x i32], ptr @_msbmask, i64 0, i64 %286, !dbg !4434
  %288 = load i32, ptr %287, align 4, !dbg !4434
  %289 = and i32 %284, %288, !dbg !4434
  %290 = load i32, ptr %8, align 4, !dbg !4434
  %291 = load i32, ptr %11, align 4, !dbg !4434
  %292 = sub i32 %290, %291, !dbg !4434
  %293 = shl i32 %289, %292, !dbg !4434
  %294 = load i32, ptr %9, align 4, !dbg !4434
  %295 = or i32 %294, %293, !dbg !4434
  store i32 %295, ptr %9, align 4, !dbg !4434
  %296 = load i32, ptr %11, align 4, !dbg !4434
  %297 = load i32, ptr %8, align 4, !dbg !4434
  %298 = sub i32 %297, %296, !dbg !4434
  store i32 %298, ptr %8, align 4, !dbg !4434
  %299 = load i32, ptr %8, align 4, !dbg !4443
  %300 = icmp eq i32 %299, 0, !dbg !4443
  br i1 %300, label %301, label %323, !dbg !4443

301:                                              ; preds = %283
  %302 = load ptr, ptr %4, align 8, !dbg !4445
  %303 = getelementptr inbounds nuw %struct.tiff, ptr %302, i32 0, i32 43, !dbg !4445
  %304 = load i32, ptr %303, align 8, !dbg !4445
  %305 = load ptr, ptr %4, align 8, !dbg !4445
  %306 = getelementptr inbounds nuw %struct.tiff, ptr %305, i32 0, i32 41, !dbg !4445
  %307 = load i32, ptr %306, align 8, !dbg !4445
  %308 = icmp sge i32 %304, %307, !dbg !4445
  br i1 %308, label %309, label %312, !dbg !4445

309:                                              ; preds = %301
  %310 = load ptr, ptr %4, align 8, !dbg !4445
  %311 = call i32 @TIFFFlushData1(ptr noundef %310), !dbg !4445
  br label %312, !dbg !4445

312:                                              ; preds = %309, %301
  %313 = load i32, ptr %9, align 4, !dbg !4448
  %314 = trunc i32 %313 to i8, !dbg !4448
  %315 = load ptr, ptr %4, align 8, !dbg !4448
  %316 = getelementptr inbounds nuw %struct.tiff, ptr %315, i32 0, i32 42, !dbg !4448
  %317 = load ptr, ptr %316, align 8, !dbg !4448
  %318 = getelementptr inbounds nuw i8, ptr %317, i32 1, !dbg !4448
  store ptr %318, ptr %316, align 8, !dbg !4448
  store i8 %314, ptr %317, align 1, !dbg !4448
  %319 = load ptr, ptr %4, align 8, !dbg !4448
  %320 = getelementptr inbounds nuw %struct.tiff, ptr %319, i32 0, i32 43, !dbg !4448
  %321 = load i32, ptr %320, align 8, !dbg !4448
  %322 = add nsw i32 %321, 1, !dbg !4448
  store i32 %322, ptr %320, align 8, !dbg !4448
  store i32 0, ptr %9, align 4, !dbg !4448
  store i32 8, ptr %8, align 4, !dbg !4448
  br label %323, !dbg !4448

323:                                              ; preds = %312, %283
  %324 = load i32, ptr %9, align 4, !dbg !4449
  %325 = load ptr, ptr %7, align 8, !dbg !4450
  %326 = getelementptr inbounds nuw %struct.Fax3EncodeState, ptr %325, i32 0, i32 1, !dbg !4451
  store i32 %324, ptr %326, align 8, !dbg !4452
  %327 = load i32, ptr %8, align 4, !dbg !4453
  %328 = load ptr, ptr %7, align 8, !dbg !4454
  %329 = getelementptr inbounds nuw %struct.Fax3EncodeState, ptr %328, i32 0, i32 2, !dbg !4455
  store i32 %327, ptr %329, align 4, !dbg !4456
  ret void, !dbg !4457
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @find1span(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 !dbg !4458 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
    #dbg_declare(ptr %5, !4459, !DIExpression(), !4460)
  store i32 %1, ptr %6, align 4
    #dbg_declare(ptr %6, !4461, !DIExpression(), !4462)
  store i32 %2, ptr %7, align 4
    #dbg_declare(ptr %7, !4463, !DIExpression(), !4464)
    #dbg_declare(ptr %8, !4465, !DIExpression(), !4466)
  %12 = load i32, ptr %7, align 4, !dbg !4467
  %13 = load i32, ptr %6, align 4, !dbg !4468
  %14 = sub nsw i32 %12, %13, !dbg !4469
  store i32 %14, ptr %8, align 4, !dbg !4466
    #dbg_declare(ptr %9, !4470, !DIExpression(), !4471)
    #dbg_declare(ptr %10, !4472, !DIExpression(), !4473)
  %15 = load i32, ptr %6, align 4, !dbg !4474
  %16 = ashr i32 %15, 3, !dbg !4475
  %17 = load ptr, ptr %5, align 8, !dbg !4476
  %18 = sext i32 %16 to i64, !dbg !4476
  %19 = getelementptr inbounds i8, ptr %17, i64 %18, !dbg !4476
  store ptr %19, ptr %5, align 8, !dbg !4476
  %20 = load i32, ptr %8, align 4, !dbg !4477
  %21 = icmp sgt i32 %20, 0, !dbg !4479
  br i1 %21, label %22, label %63, !dbg !4480

22:                                               ; preds = %3
  %23 = load i32, ptr %6, align 4, !dbg !4481
  %24 = and i32 %23, 7, !dbg !4482
  store i32 %24, ptr %9, align 4, !dbg !4483
  %25 = icmp ne i32 %24, 0, !dbg !4483
  br i1 %25, label %26, label %63, !dbg !4480

26:                                               ; preds = %22
  %27 = load ptr, ptr %5, align 8, !dbg !4484
  %28 = load i8, ptr %27, align 1, !dbg !4486
  %29 = zext i8 %28 to i32, !dbg !4486
  %30 = load i32, ptr %9, align 4, !dbg !4487
  %31 = shl i32 %29, %30, !dbg !4488
  %32 = and i32 %31, 255, !dbg !4489
  %33 = sext i32 %32 to i64, !dbg !4490
  %34 = getelementptr inbounds [256 x i8], ptr @oneruns, i64 0, i64 %33, !dbg !4490
  %35 = load i8, ptr %34, align 1, !dbg !4490
  %36 = zext i8 %35 to i32, !dbg !4490
  store i32 %36, ptr %10, align 4, !dbg !4491
  %37 = load i32, ptr %10, align 4, !dbg !4492
  %38 = load i32, ptr %9, align 4, !dbg !4494
  %39 = sub nsw i32 8, %38, !dbg !4495
  %40 = icmp sgt i32 %37, %39, !dbg !4496
  br i1 %40, label %41, label %44, !dbg !4496

41:                                               ; preds = %26
  %42 = load i32, ptr %9, align 4, !dbg !4497
  %43 = sub nsw i32 8, %42, !dbg !4498
  store i32 %43, ptr %10, align 4, !dbg !4499
  br label %44, !dbg !4500

44:                                               ; preds = %41, %26
  %45 = load i32, ptr %10, align 4, !dbg !4501
  %46 = load i32, ptr %8, align 4, !dbg !4503
  %47 = icmp sgt i32 %45, %46, !dbg !4504
  br i1 %47, label %48, label %50, !dbg !4504

48:                                               ; preds = %44
  %49 = load i32, ptr %8, align 4, !dbg !4505
  store i32 %49, ptr %10, align 4, !dbg !4506
  br label %50, !dbg !4507

50:                                               ; preds = %48, %44
  %51 = load i32, ptr %9, align 4, !dbg !4508
  %52 = load i32, ptr %10, align 4, !dbg !4510
  %53 = add nsw i32 %51, %52, !dbg !4511
  %54 = icmp slt i32 %53, 8, !dbg !4512
  br i1 %54, label %55, label %57, !dbg !4512

55:                                               ; preds = %50
  %56 = load i32, ptr %10, align 4, !dbg !4513
  store i32 %56, ptr %4, align 4, !dbg !4514
  br label %169, !dbg !4514

57:                                               ; preds = %50
  %58 = load i32, ptr %10, align 4, !dbg !4515
  %59 = load i32, ptr %8, align 4, !dbg !4516
  %60 = sub nsw i32 %59, %58, !dbg !4516
  store i32 %60, ptr %8, align 4, !dbg !4516
  %61 = load ptr, ptr %5, align 8, !dbg !4517
  %62 = getelementptr inbounds nuw i8, ptr %61, i32 1, !dbg !4517
  store ptr %62, ptr %5, align 8, !dbg !4517
  br label %64, !dbg !4518

63:                                               ; preds = %22, %3
  store i32 0, ptr %10, align 4, !dbg !4519
  br label %64

64:                                               ; preds = %63, %57
  %65 = load i32, ptr %8, align 4, !dbg !4520
  %66 = sext i32 %65 to i64, !dbg !4520
  %67 = icmp uge i64 %66, 128, !dbg !4522
  br i1 %67, label %68, label %121, !dbg !4522

68:                                               ; preds = %64
    #dbg_declare(ptr %11, !4523, !DIExpression(), !4525)
  br label %69, !dbg !4526

69:                                               ; preds = %89, %68
  %70 = load ptr, ptr %5, align 8, !dbg !4527
  %71 = ptrtoint ptr %70 to i64, !dbg !4527
  %72 = and i64 %71, 7, !dbg !4527
  %73 = icmp eq i64 %72, 0, !dbg !4527
  %74 = xor i1 %73, true, !dbg !4528
  br i1 %74, label %75, label %96, !dbg !4526

75:                                               ; preds = %69
  %76 = load ptr, ptr %5, align 8, !dbg !4529
  %77 = load i8, ptr %76, align 1, !dbg !4532
  %78 = zext i8 %77 to i32, !dbg !4532
  %79 = icmp ne i32 %78, 255, !dbg !4533
  br i1 %79, label %80, label %89, !dbg !4533

80:                                               ; preds = %75
  %81 = load i32, ptr %10, align 4, !dbg !4534
  %82 = load ptr, ptr %5, align 8, !dbg !4535
  %83 = load i8, ptr %82, align 1, !dbg !4536
  %84 = zext i8 %83 to i64, !dbg !4537
  %85 = getelementptr inbounds nuw [256 x i8], ptr @oneruns, i64 0, i64 %84, !dbg !4537
  %86 = load i8, ptr %85, align 1, !dbg !4537
  %87 = zext i8 %86 to i32, !dbg !4537
  %88 = add nsw i32 %81, %87, !dbg !4538
  store i32 %88, ptr %4, align 4, !dbg !4539
  br label %169, !dbg !4539

89:                                               ; preds = %75
  %90 = load i32, ptr %10, align 4, !dbg !4540
  %91 = add nsw i32 %90, 8, !dbg !4540
  store i32 %91, ptr %10, align 4, !dbg !4540
  %92 = load i32, ptr %8, align 4, !dbg !4541
  %93 = sub nsw i32 %92, 8, !dbg !4541
  store i32 %93, ptr %8, align 4, !dbg !4541
  %94 = load ptr, ptr %5, align 8, !dbg !4542
  %95 = getelementptr inbounds nuw i8, ptr %94, i32 1, !dbg !4542
  store ptr %95, ptr %5, align 8, !dbg !4542
  br label %69, !dbg !4526, !llvm.loop !4543

96:                                               ; preds = %69
  %97 = load ptr, ptr %5, align 8, !dbg !4545
  store ptr %97, ptr %11, align 8, !dbg !4546
  br label %98, !dbg !4547

98:                                               ; preds = %108, %96
  %99 = load i32, ptr %8, align 4, !dbg !4548
  %100 = sext i32 %99 to i64, !dbg !4548
  %101 = icmp uge i64 %100, 64, !dbg !4549
  br i1 %101, label %102, label %106, !dbg !4550

102:                                              ; preds = %98
  %103 = load ptr, ptr %11, align 8, !dbg !4551
  %104 = load i64, ptr %103, align 8, !dbg !4552
  %105 = icmp eq i64 %104, -1, !dbg !4553
  br label %106

106:                                              ; preds = %102, %98
  %107 = phi i1 [ false, %98 ], [ %105, %102 ], !dbg !4554
  br i1 %107, label %108, label %119, !dbg !4547

108:                                              ; preds = %106
  %109 = load i32, ptr %10, align 4, !dbg !4555
  %110 = sext i32 %109 to i64, !dbg !4555
  %111 = add i64 %110, 64, !dbg !4555
  %112 = trunc i64 %111 to i32, !dbg !4555
  store i32 %112, ptr %10, align 4, !dbg !4555
  %113 = load i32, ptr %8, align 4, !dbg !4557
  %114 = sext i32 %113 to i64, !dbg !4557
  %115 = sub i64 %114, 64, !dbg !4557
  %116 = trunc i64 %115 to i32, !dbg !4557
  store i32 %116, ptr %8, align 4, !dbg !4557
  %117 = load ptr, ptr %11, align 8, !dbg !4558
  %118 = getelementptr inbounds nuw i64, ptr %117, i32 1, !dbg !4558
  store ptr %118, ptr %11, align 8, !dbg !4558
  br label %98, !dbg !4547, !llvm.loop !4559

119:                                              ; preds = %106
  %120 = load ptr, ptr %11, align 8, !dbg !4561
  store ptr %120, ptr %5, align 8, !dbg !4562
  br label %121, !dbg !4563

121:                                              ; preds = %119, %64
  br label %122, !dbg !4564

122:                                              ; preds = %139, %121
  %123 = load i32, ptr %8, align 4, !dbg !4565
  %124 = icmp sge i32 %123, 8, !dbg !4566
  br i1 %124, label %125, label %146, !dbg !4564

125:                                              ; preds = %122
  %126 = load ptr, ptr %5, align 8, !dbg !4567
  %127 = load i8, ptr %126, align 1, !dbg !4570
  %128 = zext i8 %127 to i32, !dbg !4570
  %129 = icmp ne i32 %128, 255, !dbg !4571
  br i1 %129, label %130, label %139, !dbg !4571

130:                                              ; preds = %125
  %131 = load i32, ptr %10, align 4, !dbg !4572
  %132 = load ptr, ptr %5, align 8, !dbg !4573
  %133 = load i8, ptr %132, align 1, !dbg !4574
  %134 = zext i8 %133 to i64, !dbg !4575
  %135 = getelementptr inbounds nuw [256 x i8], ptr @oneruns, i64 0, i64 %134, !dbg !4575
  %136 = load i8, ptr %135, align 1, !dbg !4575
  %137 = zext i8 %136 to i32, !dbg !4575
  %138 = add nsw i32 %131, %137, !dbg !4576
  store i32 %138, ptr %4, align 4, !dbg !4577
  br label %169, !dbg !4577

139:                                              ; preds = %125
  %140 = load i32, ptr %10, align 4, !dbg !4578
  %141 = add nsw i32 %140, 8, !dbg !4578
  store i32 %141, ptr %10, align 4, !dbg !4578
  %142 = load i32, ptr %8, align 4, !dbg !4579
  %143 = sub nsw i32 %142, 8, !dbg !4579
  store i32 %143, ptr %8, align 4, !dbg !4579
  %144 = load ptr, ptr %5, align 8, !dbg !4580
  %145 = getelementptr inbounds nuw i8, ptr %144, i32 1, !dbg !4580
  store ptr %145, ptr %5, align 8, !dbg !4580
  br label %122, !dbg !4564, !llvm.loop !4581

146:                                              ; preds = %122
  %147 = load i32, ptr %8, align 4, !dbg !4583
  %148 = icmp sgt i32 %147, 0, !dbg !4585
  br i1 %148, label %149, label %167, !dbg !4585

149:                                              ; preds = %146
  %150 = load ptr, ptr %5, align 8, !dbg !4586
  %151 = load i8, ptr %150, align 1, !dbg !4588
  %152 = zext i8 %151 to i64, !dbg !4589
  %153 = getelementptr inbounds nuw [256 x i8], ptr @oneruns, i64 0, i64 %152, !dbg !4589
  %154 = load i8, ptr %153, align 1, !dbg !4589
  %155 = zext i8 %154 to i32, !dbg !4589
  store i32 %155, ptr %9, align 4, !dbg !4590
  %156 = load i32, ptr %9, align 4, !dbg !4591
  %157 = load i32, ptr %8, align 4, !dbg !4592
  %158 = icmp sgt i32 %156, %157, !dbg !4593
  br i1 %158, label %159, label %161, !dbg !4591

159:                                              ; preds = %149
  %160 = load i32, ptr %8, align 4, !dbg !4594
  br label %163, !dbg !4591

161:                                              ; preds = %149
  %162 = load i32, ptr %9, align 4, !dbg !4595
  br label %163, !dbg !4591

163:                                              ; preds = %161, %159
  %164 = phi i32 [ %160, %159 ], [ %162, %161 ], !dbg !4591
  %165 = load i32, ptr %10, align 4, !dbg !4596
  %166 = add nsw i32 %165, %164, !dbg !4596
  store i32 %166, ptr %10, align 4, !dbg !4596
  br label %167, !dbg !4597

167:                                              ; preds = %163, %146
  %168 = load i32, ptr %10, align 4, !dbg !4598
  store i32 %168, ptr %4, align 4, !dbg !4599
  br label %169, !dbg !4599

169:                                              ; preds = %167, %130, %80, %55
  %170 = load i32, ptr %4, align 4, !dbg !4600
  ret i32 %170, !dbg !4600
}

; Function Attrs: noinline nounwind uwtable
define internal void @Fax3PutBits(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 !dbg !4601 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
    #dbg_declare(ptr %4, !4604, !DIExpression(), !4605)
  store i32 %1, ptr %5, align 4
    #dbg_declare(ptr %5, !4606, !DIExpression(), !4607)
  store i32 %2, ptr %6, align 4
    #dbg_declare(ptr %6, !4608, !DIExpression(), !4609)
    #dbg_declare(ptr %7, !4610, !DIExpression(), !4611)
  %10 = load ptr, ptr %4, align 8, !dbg !4612
  %11 = getelementptr inbounds nuw %struct.tiff, ptr %10, i32 0, i32 37, !dbg !4612
  %12 = load ptr, ptr %11, align 8, !dbg !4612
  store ptr %12, ptr %7, align 8, !dbg !4611
    #dbg_declare(ptr %8, !4613, !DIExpression(), !4614)
  %13 = load ptr, ptr %7, align 8, !dbg !4615
  %14 = getelementptr inbounds nuw %struct.Fax3EncodeState, ptr %13, i32 0, i32 2, !dbg !4616
  %15 = load i32, ptr %14, align 4, !dbg !4616
  store i32 %15, ptr %8, align 4, !dbg !4614
    #dbg_declare(ptr %9, !4617, !DIExpression(), !4618)
  %16 = load ptr, ptr %7, align 8, !dbg !4619
  %17 = getelementptr inbounds nuw %struct.Fax3EncodeState, ptr %16, i32 0, i32 1, !dbg !4620
  %18 = load i32, ptr %17, align 8, !dbg !4620
  store i32 %18, ptr %9, align 4, !dbg !4618
  br label %19, !dbg !4621

19:                                               ; preds = %44, %3
  %20 = load i32, ptr %6, align 4, !dbg !4621
  %21 = load i32, ptr %8, align 4, !dbg !4621
  %22 = icmp ugt i32 %20, %21, !dbg !4621
  br i1 %22, label %23, label %55, !dbg !4621

23:                                               ; preds = %19
  %24 = load i32, ptr %5, align 4, !dbg !4623
  %25 = load i32, ptr %6, align 4, !dbg !4623
  %26 = load i32, ptr %8, align 4, !dbg !4623
  %27 = sub i32 %25, %26, !dbg !4623
  %28 = lshr i32 %24, %27, !dbg !4623
  %29 = load i32, ptr %9, align 4, !dbg !4623
  %30 = or i32 %29, %28, !dbg !4623
  store i32 %30, ptr %9, align 4, !dbg !4623
  %31 = load i32, ptr %8, align 4, !dbg !4623
  %32 = load i32, ptr %6, align 4, !dbg !4623
  %33 = sub i32 %32, %31, !dbg !4623
  store i32 %33, ptr %6, align 4, !dbg !4623
  %34 = load ptr, ptr %4, align 8, !dbg !4625
  %35 = getelementptr inbounds nuw %struct.tiff, ptr %34, i32 0, i32 43, !dbg !4625
  %36 = load i32, ptr %35, align 8, !dbg !4625
  %37 = load ptr, ptr %4, align 8, !dbg !4625
  %38 = getelementptr inbounds nuw %struct.tiff, ptr %37, i32 0, i32 41, !dbg !4625
  %39 = load i32, ptr %38, align 8, !dbg !4625
  %40 = icmp sge i32 %36, %39, !dbg !4625
  br i1 %40, label %41, label %44, !dbg !4625

41:                                               ; preds = %23
  %42 = load ptr, ptr %4, align 8, !dbg !4625
  %43 = call i32 @TIFFFlushData1(ptr noundef %42), !dbg !4625
  br label %44, !dbg !4625

44:                                               ; preds = %41, %23
  %45 = load i32, ptr %9, align 4, !dbg !4628
  %46 = trunc i32 %45 to i8, !dbg !4628
  %47 = load ptr, ptr %4, align 8, !dbg !4628
  %48 = getelementptr inbounds nuw %struct.tiff, ptr %47, i32 0, i32 42, !dbg !4628
  %49 = load ptr, ptr %48, align 8, !dbg !4628
  %50 = getelementptr inbounds nuw i8, ptr %49, i32 1, !dbg !4628
  store ptr %50, ptr %48, align 8, !dbg !4628
  store i8 %46, ptr %49, align 1, !dbg !4628
  %51 = load ptr, ptr %4, align 8, !dbg !4628
  %52 = getelementptr inbounds nuw %struct.tiff, ptr %51, i32 0, i32 43, !dbg !4628
  %53 = load i32, ptr %52, align 8, !dbg !4628
  %54 = add nsw i32 %53, 1, !dbg !4628
  store i32 %54, ptr %52, align 8, !dbg !4628
  store i32 0, ptr %9, align 4, !dbg !4628
  store i32 8, ptr %8, align 4, !dbg !4628
  br label %19, !dbg !4621, !llvm.loop !4629

55:                                               ; preds = %19
  %56 = load i32, ptr %5, align 4, !dbg !4621
  %57 = load i32, ptr %6, align 4, !dbg !4621
  %58 = zext i32 %57 to i64, !dbg !4621
  %59 = getelementptr inbounds nuw [9 x i32], ptr @_msbmask, i64 0, i64 %58, !dbg !4621
  %60 = load i32, ptr %59, align 4, !dbg !4621
  %61 = and i32 %56, %60, !dbg !4621
  %62 = load i32, ptr %8, align 4, !dbg !4621
  %63 = load i32, ptr %6, align 4, !dbg !4621
  %64 = sub i32 %62, %63, !dbg !4621
  %65 = shl i32 %61, %64, !dbg !4621
  %66 = load i32, ptr %9, align 4, !dbg !4621
  %67 = or i32 %66, %65, !dbg !4621
  store i32 %67, ptr %9, align 4, !dbg !4621
  %68 = load i32, ptr %6, align 4, !dbg !4621
  %69 = load i32, ptr %8, align 4, !dbg !4621
  %70 = sub i32 %69, %68, !dbg !4621
  store i32 %70, ptr %8, align 4, !dbg !4621
  %71 = load i32, ptr %8, align 4, !dbg !4630
  %72 = icmp eq i32 %71, 0, !dbg !4630
  br i1 %72, label %73, label %95, !dbg !4630

73:                                               ; preds = %55
  %74 = load ptr, ptr %4, align 8, !dbg !4632
  %75 = getelementptr inbounds nuw %struct.tiff, ptr %74, i32 0, i32 43, !dbg !4632
  %76 = load i32, ptr %75, align 8, !dbg !4632
  %77 = load ptr, ptr %4, align 8, !dbg !4632
  %78 = getelementptr inbounds nuw %struct.tiff, ptr %77, i32 0, i32 41, !dbg !4632
  %79 = load i32, ptr %78, align 8, !dbg !4632
  %80 = icmp sge i32 %76, %79, !dbg !4632
  br i1 %80, label %81, label %84, !dbg !4632

81:                                               ; preds = %73
  %82 = load ptr, ptr %4, align 8, !dbg !4632
  %83 = call i32 @TIFFFlushData1(ptr noundef %82), !dbg !4632
  br label %84, !dbg !4632

84:                                               ; preds = %81, %73
  %85 = load i32, ptr %9, align 4, !dbg !4635
  %86 = trunc i32 %85 to i8, !dbg !4635
  %87 = load ptr, ptr %4, align 8, !dbg !4635
  %88 = getelementptr inbounds nuw %struct.tiff, ptr %87, i32 0, i32 42, !dbg !4635
  %89 = load ptr, ptr %88, align 8, !dbg !4635
  %90 = getelementptr inbounds nuw i8, ptr %89, i32 1, !dbg !4635
  store ptr %90, ptr %88, align 8, !dbg !4635
  store i8 %86, ptr %89, align 1, !dbg !4635
  %91 = load ptr, ptr %4, align 8, !dbg !4635
  %92 = getelementptr inbounds nuw %struct.tiff, ptr %91, i32 0, i32 43, !dbg !4635
  %93 = load i32, ptr %92, align 8, !dbg !4635
  %94 = add nsw i32 %93, 1, !dbg !4635
  store i32 %94, ptr %92, align 8, !dbg !4635
  store i32 0, ptr %9, align 4, !dbg !4635
  store i32 8, ptr %8, align 4, !dbg !4635
  br label %95, !dbg !4635

95:                                               ; preds = %84, %55
  %96 = load i32, ptr %9, align 4, !dbg !4636
  %97 = load ptr, ptr %7, align 8, !dbg !4637
  %98 = getelementptr inbounds nuw %struct.Fax3EncodeState, ptr %97, i32 0, i32 1, !dbg !4638
  store i32 %96, ptr %98, align 8, !dbg !4639
  %99 = load i32, ptr %8, align 4, !dbg !4640
  %100 = load ptr, ptr %7, align 8, !dbg !4641
  %101 = getelementptr inbounds nuw %struct.Fax3EncodeState, ptr %100, i32 0, i32 2, !dbg !4642
  store i32 %99, ptr %101, align 4, !dbg !4643
  ret void, !dbg !4644
}

declare void @_TIFFfree(ptr noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!666, !667, !668, !669, !670, !671, !672}
!llvm.ident = !{!673}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "TIFFFaxWhiteCodes", scope: !2, file: !422, line: 58, type: !423, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !26, globals: !419, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "cBench/consumer_tiff2bw/src/tif_fax3.c", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "b04b5694cfc247b882a6abcb5bcec7f2")
!4 = !{!5, !22}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 120, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "cBench/consumer_tiff2bw/src/tiff.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "481b1fc81ef74ff952bf85d3f2d42aca")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21}
!9 = !DIEnumerator(name: "TIFF_NOTYPE", value: 0)
!10 = !DIEnumerator(name: "TIFF_BYTE", value: 1)
!11 = !DIEnumerator(name: "TIFF_ASCII", value: 2)
!12 = !DIEnumerator(name: "TIFF_SHORT", value: 3)
!13 = !DIEnumerator(name: "TIFF_LONG", value: 4)
!14 = !DIEnumerator(name: "TIFF_RATIONAL", value: 5)
!15 = !DIEnumerator(name: "TIFF_SBYTE", value: 6)
!16 = !DIEnumerator(name: "TIFF_UNDEFINED", value: 7)
!17 = !DIEnumerator(name: "TIFF_SSHORT", value: 8)
!18 = !DIEnumerator(name: "TIFF_SLONG", value: 9)
!19 = !DIEnumerator(name: "TIFF_SRATIONAL", value: 10)
!20 = !DIEnumerator(name: "TIFF_FLOAT", value: 11)
!21 = !DIEnumerator(name: "TIFF_DOUBLE", value: 12)
!22 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !3, line: 87, baseType: !7, size: 32, elements: !23)
!23 = !{!24, !25}
!24 = !DIEnumerator(name: "G3_1D", value: 0)
!25 = !DIEnumerator(name: "G3_2D", value: 1)
!26 = !{!27, !29, !34, !36, !38, !42, !46, !47, !386, !407, !53, !142, !403, !35}
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16", file: !6, line: 62, baseType: !28)
!28 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_long", file: !30, line: 36, baseType: !31)
!30 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_long", file: !32, line: 34, baseType: !33)
!32 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!33 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32", file: !6, line: 65, baseType: !37)
!37 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_char", file: !30, line: 33, baseType: !40)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_char", file: !32, line: 31, baseType: !41)
!41 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "tidata_t", file: !43, line: 56, baseType: !44)
!43 = !DIFile(filename: "cBench/consumer_tiff2bw/src/tiffiop.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "6324af1ca1eb1b70648c0ebf381681c1")
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "tidataval_t", file: !43, line: 55, baseType: !41)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "Fax3BaseState", file: !3, line: 71, baseType: !49)
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 57, size: 512, elements: !50)
!50 = !{!51, !52, !54, !55, !56, !57, !58, !59, !60, !63, !64, !385}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !49, file: !3, line: 58, baseType: !37, size: 32)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "rowbytes", scope: !49, file: !3, line: 59, baseType: !53, size: 32, offset: 32)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !6, line: 66, baseType: !7)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "rowpixels", scope: !49, file: !3, line: 60, baseType: !53, size: 32, offset: 64)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "cleanfaxdata", scope: !49, file: !3, line: 62, baseType: !27, size: 16, offset: 96)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "badfaxrun", scope: !49, file: !3, line: 63, baseType: !53, size: 32, offset: 128)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "badfaxlines", scope: !49, file: !3, line: 64, baseType: !53, size: 32, offset: 160)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "groupoptions", scope: !49, file: !3, line: 65, baseType: !53, size: 32, offset: 192)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "recvparams", scope: !49, file: !3, line: 66, baseType: !53, size: 32, offset: 224)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "subaddress", scope: !49, file: !3, line: 67, baseType: !61, size: 64, offset: 256)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "recvtime", scope: !49, file: !3, line: 68, baseType: !53, size: 32, offset: 320)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "vgetparent", scope: !49, file: !3, line: 69, baseType: !65, size: 64, offset: 384)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "TIFFVGetMethod", file: !43, line: 65, baseType: !66)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DISubroutineType(types: !68)
!68 = !{!37, !69, !302, !378}
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "TIFF", file: !71, line: 48, baseType: !72)
!71 = !DIFile(filename: "cBench/consumer_tiff2bw/src/tiffio.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "881752c035a7937b11611441903a05b9")
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tiff", file: !43, line: 70, size: 7040, elements: !73)
!73 = !{!74, !75, !76, !77, !78, !80, !81, !173, !180, !181, !184, !187, !188, !190, !191, !192, !193, !194, !195, !196, !198, !200, !205, !211, !212, !213, !214, !219, !220, !221, !222, !223, !224, !229, !234, !235, !240, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !263, !268, !269, !274, !275, !280, !285, !290, !295, !314, !315, !317, !318}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "tif_name", scope: !72, file: !43, line: 71, baseType: !61, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "tif_fd", scope: !72, file: !43, line: 72, baseType: !37, size: 32, offset: 64)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "tif_mode", scope: !72, file: !43, line: 73, baseType: !37, size: 32, offset: 96)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "tif_flags", scope: !72, file: !43, line: 74, baseType: !53, size: 32, offset: 128)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "tif_diroff", scope: !72, file: !43, line: 90, baseType: !79, size: 32, offset: 160)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "toff_t", file: !71, line: 75, baseType: !36)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "tif_nextdiroff", scope: !72, file: !43, line: 91, baseType: !79, size: 32, offset: 192)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "tif_dir", scope: !72, file: !43, line: 92, baseType: !82, size: 3776, offset: 256)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "TIFFDirectory", file: !83, line: 121, baseType: !84)
!83 = !DIFile(filename: "cBench/consumer_tiff2bw/src/tif_dir.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "467bfe3104f8edda1690c4215d0ca70c")
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !83, line: 36, size: 3776, elements: !85)
!85 = !{!86, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !110, !111, !113, !114, !115, !116, !117, !118, !122, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !140, !141, !143, !144, !145, !146, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "td_fieldsset", scope: !84, file: !83, line: 39, baseType: !87, size: 192)
!87 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 192, elements: !88)
!88 = !{!89}
!89 = !DISubrange(count: 3)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "td_imagewidth", scope: !84, file: !83, line: 41, baseType: !53, size: 32, offset: 192)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "td_imagelength", scope: !84, file: !83, line: 41, baseType: !53, size: 32, offset: 224)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "td_imagedepth", scope: !84, file: !83, line: 41, baseType: !53, size: 32, offset: 256)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "td_tilewidth", scope: !84, file: !83, line: 42, baseType: !53, size: 32, offset: 288)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "td_tilelength", scope: !84, file: !83, line: 42, baseType: !53, size: 32, offset: 320)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "td_tiledepth", scope: !84, file: !83, line: 42, baseType: !53, size: 32, offset: 352)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "td_subfiletype", scope: !84, file: !83, line: 43, baseType: !53, size: 32, offset: 384)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "td_bitspersample", scope: !84, file: !83, line: 44, baseType: !27, size: 16, offset: 416)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "td_sampleformat", scope: !84, file: !83, line: 45, baseType: !27, size: 16, offset: 432)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "td_compression", scope: !84, file: !83, line: 46, baseType: !27, size: 16, offset: 448)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "td_photometric", scope: !84, file: !83, line: 47, baseType: !27, size: 16, offset: 464)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "td_threshholding", scope: !84, file: !83, line: 48, baseType: !27, size: 16, offset: 480)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "td_fillorder", scope: !84, file: !83, line: 49, baseType: !27, size: 16, offset: 496)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "td_orientation", scope: !84, file: !83, line: 50, baseType: !27, size: 16, offset: 512)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "td_samplesperpixel", scope: !84, file: !83, line: 51, baseType: !27, size: 16, offset: 528)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "td_rowsperstrip", scope: !84, file: !83, line: 52, baseType: !53, size: 32, offset: 544)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "td_minsamplevalue", scope: !84, file: !83, line: 53, baseType: !27, size: 16, offset: 576)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "td_maxsamplevalue", scope: !84, file: !83, line: 53, baseType: !27, size: 16, offset: 592)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "td_sminsamplevalue", scope: !84, file: !83, line: 54, baseType: !109, size: 64, offset: 640)
!109 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "td_smaxsamplevalue", scope: !84, file: !83, line: 54, baseType: !109, size: 64, offset: 704)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "td_xresolution", scope: !84, file: !83, line: 55, baseType: !112, size: 32, offset: 768)
!112 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "td_yresolution", scope: !84, file: !83, line: 55, baseType: !112, size: 32, offset: 800)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "td_resolutionunit", scope: !84, file: !83, line: 56, baseType: !27, size: 16, offset: 832)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "td_planarconfig", scope: !84, file: !83, line: 57, baseType: !27, size: 16, offset: 848)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "td_xposition", scope: !84, file: !83, line: 58, baseType: !112, size: 32, offset: 864)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "td_yposition", scope: !84, file: !83, line: 58, baseType: !112, size: 32, offset: 896)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "td_pagenumber", scope: !84, file: !83, line: 59, baseType: !119, size: 32, offset: 928)
!119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 32, elements: !120)
!120 = !{!121}
!121 = !DISubrange(count: 2)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "td_colormap", scope: !84, file: !83, line: 60, baseType: !123, size: 192, offset: 960)
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 192, elements: !88)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "td_halftonehints", scope: !84, file: !83, line: 61, baseType: !119, size: 32, offset: 1152)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "td_extrasamples", scope: !84, file: !83, line: 62, baseType: !27, size: 16, offset: 1184)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "td_sampleinfo", scope: !84, file: !83, line: 63, baseType: !124, size: 64, offset: 1216)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "td_stonits", scope: !84, file: !83, line: 64, baseType: !109, size: 64, offset: 1280)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "td_documentname", scope: !84, file: !83, line: 65, baseType: !61, size: 64, offset: 1344)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "td_artist", scope: !84, file: !83, line: 66, baseType: !61, size: 64, offset: 1408)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "td_datetime", scope: !84, file: !83, line: 67, baseType: !61, size: 64, offset: 1472)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "td_hostcomputer", scope: !84, file: !83, line: 68, baseType: !61, size: 64, offset: 1536)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "td_imagedescription", scope: !84, file: !83, line: 69, baseType: !61, size: 64, offset: 1600)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "td_make", scope: !84, file: !83, line: 70, baseType: !61, size: 64, offset: 1664)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "td_model", scope: !84, file: !83, line: 71, baseType: !61, size: 64, offset: 1728)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "td_software", scope: !84, file: !83, line: 72, baseType: !61, size: 64, offset: 1792)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "td_pagename", scope: !84, file: !83, line: 73, baseType: !61, size: 64, offset: 1856)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "td_stripsperimage", scope: !84, file: !83, line: 74, baseType: !139, size: 32, offset: 1920)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "tstrip_t", file: !71, line: 71, baseType: !53)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "td_nstrips", scope: !84, file: !83, line: 75, baseType: !139, size: 32, offset: 1952)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "td_stripoffset", scope: !84, file: !83, line: 76, baseType: !142, size: 64, offset: 1984)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "td_stripbytecount", scope: !84, file: !83, line: 77, baseType: !142, size: 64, offset: 2048)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "td_nsubifd", scope: !84, file: !83, line: 79, baseType: !27, size: 16, offset: 2112)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "td_subifd", scope: !84, file: !83, line: 80, baseType: !142, size: 64, offset: 2176)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "td_ycbcrcoeffs", scope: !84, file: !83, line: 83, baseType: !147, size: 64, offset: 2240)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "td_ycbcrsubsampling", scope: !84, file: !83, line: 84, baseType: !119, size: 32, offset: 2304)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "td_ycbcrpositioning", scope: !84, file: !83, line: 85, baseType: !27, size: 16, offset: 2336)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "td_whitepoint", scope: !84, file: !83, line: 88, baseType: !147, size: 64, offset: 2368)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "td_primarychromas", scope: !84, file: !83, line: 89, baseType: !147, size: 64, offset: 2432)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "td_refblackwhite", scope: !84, file: !83, line: 90, baseType: !147, size: 64, offset: 2496)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "td_transferfunction", scope: !84, file: !83, line: 91, baseType: !123, size: 192, offset: 2560)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "td_inkset", scope: !84, file: !83, line: 94, baseType: !27, size: 16, offset: 2752)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "td_ninks", scope: !84, file: !83, line: 95, baseType: !27, size: 16, offset: 2768)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "td_dotrange", scope: !84, file: !83, line: 96, baseType: !119, size: 32, offset: 2784)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "td_inknameslen", scope: !84, file: !83, line: 97, baseType: !37, size: 32, offset: 2816)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "td_inknames", scope: !84, file: !83, line: 98, baseType: !61, size: 64, offset: 2880)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "td_targetprinter", scope: !84, file: !83, line: 99, baseType: !61, size: 64, offset: 2944)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "td_profileLength", scope: !84, file: !83, line: 102, baseType: !53, size: 32, offset: 3008)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "td_profileData", scope: !84, file: !83, line: 103, baseType: !46, size: 64, offset: 3072)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "td_photoshopLength", scope: !84, file: !83, line: 106, baseType: !53, size: 32, offset: 3136)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "td_photoshopData", scope: !84, file: !83, line: 107, baseType: !46, size: 64, offset: 3200)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "td_richtiffiptcLength", scope: !84, file: !83, line: 110, baseType: !53, size: 32, offset: 3264)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "td_richtiffiptcData", scope: !84, file: !83, line: 111, baseType: !46, size: 64, offset: 3328)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "td_imagefullwidth", scope: !84, file: !83, line: 114, baseType: !53, size: 32, offset: 3392)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "td_imagefulllength", scope: !84, file: !83, line: 114, baseType: !53, size: 32, offset: 3424)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "td_textureformat", scope: !84, file: !83, line: 115, baseType: !61, size: 64, offset: 3456)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "td_wrapmodes", scope: !84, file: !83, line: 116, baseType: !61, size: 64, offset: 3520)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "td_fovcot", scope: !84, file: !83, line: 117, baseType: !112, size: 32, offset: 3584)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "td_matrixWorldToScreen", scope: !84, file: !83, line: 118, baseType: !147, size: 64, offset: 3648)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "td_matrixWorldToCamera", scope: !84, file: !83, line: 119, baseType: !147, size: 64, offset: 3712)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "tif_header", scope: !72, file: !43, line: 93, baseType: !174, size: 64, offset: 4032)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "TIFFHeader", file: !6, line: 85, baseType: !175)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 81, size: 64, elements: !176)
!176 = !{!177, !178, !179}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "tiff_magic", scope: !175, file: !6, line: 82, baseType: !27, size: 16)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "tiff_version", scope: !175, file: !6, line: 83, baseType: !27, size: 16, offset: 16)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "tiff_diroff", scope: !175, file: !6, line: 84, baseType: !53, size: 32, offset: 32)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "tif_clientdir", scope: !72, file: !43, line: 94, baseType: !42, size: 64, offset: 4096)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "tif_typeshift", scope: !72, file: !43, line: 95, baseType: !182, size: 64, offset: 4160)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "tif_typemask", scope: !72, file: !43, line: 96, baseType: !185, size: 64, offset: 4224)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "tif_row", scope: !72, file: !43, line: 97, baseType: !53, size: 32, offset: 4288)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "tif_curdir", scope: !72, file: !43, line: 98, baseType: !189, size: 16, offset: 4320)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "tdir_t", file: !71, line: 69, baseType: !27)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "tif_curstrip", scope: !72, file: !43, line: 99, baseType: !139, size: 32, offset: 4352)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "tif_curoff", scope: !72, file: !43, line: 100, baseType: !79, size: 32, offset: 4384)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "tif_dataoff", scope: !72, file: !43, line: 101, baseType: !79, size: 32, offset: 4416)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "tif_nsubifd", scope: !72, file: !43, line: 103, baseType: !27, size: 16, offset: 4448)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "tif_subifdoff", scope: !72, file: !43, line: 104, baseType: !79, size: 32, offset: 4480)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "tif_col", scope: !72, file: !43, line: 107, baseType: !53, size: 32, offset: 4512)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "tif_curtile", scope: !72, file: !43, line: 108, baseType: !197, size: 32, offset: 4544)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "ttile_t", file: !71, line: 72, baseType: !53)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "tif_tilesize", scope: !72, file: !43, line: 109, baseType: !199, size: 32, offset: 4576)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "tsize_t", file: !71, line: 73, baseType: !36)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "tif_setupdecode", scope: !72, file: !43, line: 111, baseType: !201, size: 64, offset: 4608)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "TIFFBoolMethod", file: !43, line: 59, baseType: !202)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = !DISubroutineType(types: !204)
!204 = !{!37, !69}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "tif_predecode", scope: !72, file: !43, line: 112, baseType: !206, size: 64, offset: 4672)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "TIFFPreMethod", file: !43, line: 60, baseType: !207)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DISubroutineType(types: !209)
!209 = !{!37, !69, !210}
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "tsample_t", file: !71, line: 70, baseType: !27)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "tif_setupencode", scope: !72, file: !43, line: 113, baseType: !201, size: 64, offset: 4736)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "tif_preencode", scope: !72, file: !43, line: 114, baseType: !206, size: 64, offset: 4800)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "tif_postencode", scope: !72, file: !43, line: 115, baseType: !201, size: 64, offset: 4864)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "tif_decoderow", scope: !72, file: !43, line: 116, baseType: !215, size: 64, offset: 4928)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "TIFFCodeMethod", file: !43, line: 61, baseType: !216)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!217 = !DISubroutineType(types: !218)
!218 = !{!37, !69, !42, !199, !210}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "tif_encoderow", scope: !72, file: !43, line: 117, baseType: !215, size: 64, offset: 4992)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "tif_decodestrip", scope: !72, file: !43, line: 118, baseType: !215, size: 64, offset: 5056)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "tif_encodestrip", scope: !72, file: !43, line: 119, baseType: !215, size: 64, offset: 5120)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "tif_decodetile", scope: !72, file: !43, line: 120, baseType: !215, size: 64, offset: 5184)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "tif_encodetile", scope: !72, file: !43, line: 121, baseType: !215, size: 64, offset: 5248)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "tif_close", scope: !72, file: !43, line: 122, baseType: !225, size: 64, offset: 5312)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "TIFFVoidMethod", file: !43, line: 58, baseType: !226)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = !DISubroutineType(types: !228)
!228 = !{null, !69}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "tif_seek", scope: !72, file: !43, line: 123, baseType: !230, size: 64, offset: 5376)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "TIFFSeekMethod", file: !43, line: 62, baseType: !231)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = !DISubroutineType(types: !233)
!233 = !{!37, !69, !53}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "tif_cleanup", scope: !72, file: !43, line: 124, baseType: !225, size: 64, offset: 5440)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "tif_defstripsize", scope: !72, file: !43, line: 125, baseType: !236, size: 64, offset: 5504)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "TIFFStripMethod", file: !43, line: 67, baseType: !237)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = !DISubroutineType(types: !239)
!239 = !{!53, !69, !53}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "tif_deftilesize", scope: !72, file: !43, line: 126, baseType: !241, size: 64, offset: 5568)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "TIFFTileMethod", file: !43, line: 68, baseType: !242)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = !DISubroutineType(types: !244)
!244 = !{null, !69, !142, !142}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "tif_data", scope: !72, file: !43, line: 127, baseType: !42, size: 64, offset: 5632)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "tif_scanlinesize", scope: !72, file: !43, line: 129, baseType: !199, size: 32, offset: 5696)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "tif_scanlineskew", scope: !72, file: !43, line: 130, baseType: !199, size: 32, offset: 5728)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "tif_rawdata", scope: !72, file: !43, line: 131, baseType: !42, size: 64, offset: 5760)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "tif_rawdatasize", scope: !72, file: !43, line: 132, baseType: !199, size: 32, offset: 5824)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "tif_rawcp", scope: !72, file: !43, line: 133, baseType: !42, size: 64, offset: 5888)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "tif_rawcc", scope: !72, file: !43, line: 134, baseType: !199, size: 32, offset: 5952)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "tif_base", scope: !72, file: !43, line: 136, baseType: !42, size: 64, offset: 6016)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "tif_size", scope: !72, file: !43, line: 137, baseType: !79, size: 32, offset: 6080)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "tif_mapproc", scope: !72, file: !43, line: 138, baseType: !255, size: 64, offset: 6144)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "TIFFMapFileProc", file: !71, line: 206, baseType: !256)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = !DISubroutineType(types: !258)
!258 = !{!37, !259, !260, !262}
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "thandle_t", file: !71, line: 88, baseType: !46)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "tdata_t", file: !71, line: 74, baseType: !46)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "tif_unmapproc", scope: !72, file: !43, line: 139, baseType: !264, size: 64, offset: 6208)
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "TIFFUnmapFileProc", file: !71, line: 207, baseType: !265)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = !DISubroutineType(types: !267)
!267 = !{null, !259, !261, !79}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "tif_clientdata", scope: !72, file: !43, line: 141, baseType: !259, size: 64, offset: 6272)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "tif_readproc", scope: !72, file: !43, line: 142, baseType: !270, size: 64, offset: 6336)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "TIFFReadWriteProc", file: !71, line: 202, baseType: !271)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = !DISubroutineType(types: !273)
!273 = !{!199, !259, !261, !199}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "tif_writeproc", scope: !72, file: !43, line: 143, baseType: !270, size: 64, offset: 6400)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "tif_seekproc", scope: !72, file: !43, line: 144, baseType: !276, size: 64, offset: 6464)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "TIFFSeekProc", file: !71, line: 203, baseType: !277)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = !DISubroutineType(types: !279)
!279 = !{!79, !259, !79, !37}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "tif_closeproc", scope: !72, file: !43, line: 145, baseType: !281, size: 64, offset: 6528)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "TIFFCloseProc", file: !71, line: 204, baseType: !282)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DISubroutineType(types: !284)
!284 = !{!37, !259}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "tif_sizeproc", scope: !72, file: !43, line: 146, baseType: !286, size: 64, offset: 6592)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "TIFFSizeProc", file: !71, line: 205, baseType: !287)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = !DISubroutineType(types: !289)
!289 = !{!79, !259}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "tif_postdecode", scope: !72, file: !43, line: 148, baseType: !291, size: 64, offset: 6656)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "TIFFPostMethod", file: !43, line: 63, baseType: !292)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = !DISubroutineType(types: !294)
!294 = !{null, !69, !42, !199}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "tif_fieldinfo", scope: !72, file: !43, line: 150, baseType: !296, size: 64, offset: 6720)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "TIFFFieldInfo", file: !83, line: 238, baseType: !299)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !83, line: 229, size: 192, elements: !300)
!300 = !{!301, !303, !305, !306, !308, !311, !312, !313}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "field_tag", scope: !299, file: !83, line: 230, baseType: !302, size: 32)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "ttag_t", file: !71, line: 68, baseType: !53)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "field_readcount", scope: !299, file: !83, line: 231, baseType: !304, size: 16, offset: 32)
!304 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "field_writecount", scope: !299, file: !83, line: 232, baseType: !304, size: 16, offset: 48)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "field_type", scope: !299, file: !83, line: 233, baseType: !307, size: 32, offset: 64)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "TIFFDataType", file: !6, line: 134, baseType: !5)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "field_bit", scope: !299, file: !83, line: 234, baseType: !309, size: 16, offset: 96)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_short", file: !30, line: 34, baseType: !310)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_short", file: !32, line: 32, baseType: !28)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "field_oktochange", scope: !299, file: !83, line: 235, baseType: !39, size: 8, offset: 112)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "field_passcount", scope: !299, file: !83, line: 236, baseType: !39, size: 8, offset: 120)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "field_name", scope: !299, file: !83, line: 237, baseType: !61, size: 64, offset: 128)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "tif_nfields", scope: !72, file: !43, line: 151, baseType: !37, size: 32, offset: 6784)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "tif_vsetfield", scope: !72, file: !43, line: 152, baseType: !316, size: 64, offset: 6848)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "TIFFVSetMethod", file: !43, line: 64, baseType: !66)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "tif_vgetfield", scope: !72, file: !43, line: 153, baseType: !65, size: 64, offset: 6912)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "tif_printdir", scope: !72, file: !43, line: 154, baseType: !319, size: 64, offset: 6976)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "TIFFPrintMethod", file: !43, line: 66, baseType: !320)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = !DISubroutineType(types: !322)
!322 = !{null, !69, !323, !35}
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !325, line: 7, baseType: !326)
!325 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !327, line: 49, size: 1728, elements: !328)
!327 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!328 = !{!329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !344, !346, !347, !348, !350, !351, !353, !357, !360, !362, !365, !368, !369, !370, !373, !374}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !326, file: !327, line: 51, baseType: !37, size: 32)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !326, file: !327, line: 54, baseType: !61, size: 64, offset: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !326, file: !327, line: 55, baseType: !61, size: 64, offset: 128)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !326, file: !327, line: 56, baseType: !61, size: 64, offset: 192)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !326, file: !327, line: 57, baseType: !61, size: 64, offset: 256)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !326, file: !327, line: 58, baseType: !61, size: 64, offset: 320)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !326, file: !327, line: 59, baseType: !61, size: 64, offset: 384)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !326, file: !327, line: 60, baseType: !61, size: 64, offset: 448)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !326, file: !327, line: 61, baseType: !61, size: 64, offset: 512)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !326, file: !327, line: 64, baseType: !61, size: 64, offset: 576)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !326, file: !327, line: 65, baseType: !61, size: 64, offset: 640)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !326, file: !327, line: 66, baseType: !61, size: 64, offset: 704)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !326, file: !327, line: 68, baseType: !342, size: 64, offset: 768)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!343 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !327, line: 36, flags: DIFlagFwdDecl)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !326, file: !327, line: 70, baseType: !345, size: 64, offset: 832)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !326, file: !327, line: 72, baseType: !37, size: 32, offset: 896)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !326, file: !327, line: 73, baseType: !37, size: 32, offset: 928)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !326, file: !327, line: 74, baseType: !349, size: 64, offset: 960)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !32, line: 152, baseType: !35)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !326, file: !327, line: 77, baseType: !28, size: 16, offset: 1024)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !326, file: !327, line: 78, baseType: !352, size: 8, offset: 1040)
!352 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !326, file: !327, line: 79, baseType: !354, size: 8, offset: 1048)
!354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 8, elements: !355)
!355 = !{!356}
!356 = !DISubrange(count: 1)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !326, file: !327, line: 81, baseType: !358, size: 64, offset: 1088)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !327, line: 43, baseType: null)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !326, file: !327, line: 89, baseType: !361, size: 64, offset: 1152)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !32, line: 153, baseType: !35)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !326, file: !327, line: 91, baseType: !363, size: 64, offset: 1216)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !327, line: 37, flags: DIFlagFwdDecl)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !326, file: !327, line: 92, baseType: !366, size: 64, offset: 1280)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !327, line: 38, flags: DIFlagFwdDecl)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !326, file: !327, line: 93, baseType: !345, size: 64, offset: 1344)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !326, file: !327, line: 94, baseType: !46, size: 64, offset: 1408)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !326, file: !327, line: 95, baseType: !371, size: 64, offset: 1472)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !372, line: 18, baseType: !33)
!372 = !DIFile(filename: "/usr/local/lib/clang/20/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!373 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !326, file: !327, line: 96, baseType: !37, size: 32, offset: 1536)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !326, file: !327, line: 98, baseType: !375, size: 160, offset: 1568)
!375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 160, elements: !376)
!376 = !{!377}
!377 = !DISubrange(count: 20)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !380)
!380 = !{!381, !382, !383, !384}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !379, file: !3, line: 455, baseType: !7, size: 32)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !379, file: !3, line: 455, baseType: !7, size: 32, offset: 32)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !379, file: !3, line: 455, baseType: !46, size: 64, offset: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !379, file: !3, line: 455, baseType: !46, size: 64, offset: 128)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "vsetparent", scope: !49, file: !3, line: 70, baseType: !316, size: 64, offset: 448)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "Fax3DecodeState", file: !3, line: 84, baseType: !388)
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 74, size: 960, elements: !389)
!389 = !{!390, !391, !394, !395, !396, !397, !404, !405, !406}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !388, file: !3, line: 75, baseType: !48, size: 512)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "bitmap", scope: !388, file: !3, line: 76, baseType: !392, size: 64, offset: 512)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !388, file: !3, line: 77, baseType: !53, size: 32, offset: 576)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "bit", scope: !388, file: !3, line: 78, baseType: !37, size: 32, offset: 608)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "EOLcnt", scope: !388, file: !3, line: 79, baseType: !37, size: 32, offset: 640)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !388, file: !3, line: 80, baseType: !398, size: 64, offset: 704)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "TIFFFaxFillFunc", file: !399, line: 55, baseType: !400)
!399 = !DIFile(filename: "cBench/consumer_tiff2bw/src/tif_fax3.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "8a709877085d393be218ee7894daaf5f")
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!401 = !DISubroutineType(types: !402)
!402 = !{null, !403, !142, !142, !53}
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "runs", scope: !388, file: !3, line: 81, baseType: !142, size: 64, offset: 768)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "refruns", scope: !388, file: !3, line: 82, baseType: !142, size: 64, offset: 832)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "curruns", scope: !388, file: !3, line: 83, baseType: !142, size: 64, offset: 896)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "Fax3EncodeState", file: !3, line: 96, baseType: !409)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 88, size: 768, elements: !410)
!410 = !{!411, !412, !413, !414, !416, !417, !418}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !409, file: !3, line: 89, baseType: !48, size: 512)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !409, file: !3, line: 90, baseType: !37, size: 32, offset: 512)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "bit", scope: !409, file: !3, line: 91, baseType: !37, size: 32, offset: 544)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !409, file: !3, line: 92, baseType: !415, size: 32, offset: 576)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "Ttag", file: !3, line: 87, baseType: !22)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "refline", scope: !409, file: !3, line: 93, baseType: !38, size: 64, offset: 640)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !409, file: !3, line: 94, baseType: !37, size: 32, offset: 704)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "maxk", scope: !409, file: !3, line: 95, baseType: !37, size: 32, offset: 736)
!419 = !{!0, !420, !433, !443, !448, !453, !459, !464, !469, !474, !479, !481, !486, !491, !496, !498, !500, !506, !509, !514, !516, !518, !523, !525, !527, !532, !534, !539, !544, !546, !548, !550, !555, !560, !562, !567, !572, !574, !579, !584, !588, !593, !595, !600, !602, !607, !610, !612, !617, !620, !622, !625, !630, !635, !640, !642, !644, !647, !649, !651, !654, !656, !658, !662}
!420 = !DIGlobalVariableExpression(var: !421, expr: !DIExpression())
!421 = distinct !DIGlobalVariable(name: "TIFFFaxBlackCodes", scope: !2, file: !422, line: 170, type: !423, isLocal: false, isDefinition: true)
!422 = !DIFile(filename: "cBench/consumer_tiff2bw/src/t4.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "e12aa4166172e4f74707a3f8d0e2378a")
!423 = !DICompositeType(tag: DW_TAG_array_type, baseType: !424, size: 5232, elements: !431)
!424 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !425)
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "tableentry", file: !422, line: 39, baseType: !426)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tableentry", file: !422, line: 35, size: 48, elements: !427)
!427 = !{!428, !429, !430}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !426, file: !422, line: 36, baseType: !28, size: 16)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !426, file: !422, line: 37, baseType: !28, size: 16, offset: 16)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "runlen", scope: !426, file: !422, line: 38, baseType: !304, size: 16, offset: 32)
!431 = !{!432}
!432 = !DISubrange(count: 109)
!433 = !DIGlobalVariableExpression(var: !434, expr: !DIExpression())
!434 = distinct !DIGlobalVariable(name: "_fillmasks", scope: !435, file: !3, line: 364, type: !439, isLocal: true, isDefinition: true)
!435 = distinct !DISubprogram(name: "_TIFFFax3fillruns", scope: !3, file: !3, line: 362, type: !436, scopeLine: 363, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !438)
!436 = !DISubroutineType(types: !437)
!437 = !{null, !38, !142, !142, !53}
!438 = !{}
!439 = !DICompositeType(tag: DW_TAG_array_type, baseType: !440, size: 72, elements: !441)
!440 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!441 = !{!442}
!442 = !DISubrange(count: 9)
!443 = !DIGlobalVariableExpression(var: !444, expr: !DIExpression())
!444 = distinct !DIGlobalVariable(scope: null, file: !3, line: 454, type: !445, isLocal: true, isDefinition: true)
!445 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 88, elements: !446)
!446 = !{!447}
!447 = !DISubrange(count: 11)
!448 = !DIGlobalVariableExpression(var: !449, expr: !DIExpression())
!449 = distinct !DIGlobalVariable(scope: null, file: !3, line: 454, type: !450, isLocal: true, isDefinition: true)
!450 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 312, elements: !451)
!451 = !{!452}
!452 = !DISubrange(count: 39)
!453 = !DIGlobalVariableExpression(var: !454, expr: !DIExpression())
!454 = distinct !DIGlobalVariable(scope: null, file: !3, line: 454, type: !455, isLocal: true, isDefinition: true)
!455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !456, size: 488, elements: !457)
!456 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !62)
!457 = !{!458}
!458 = !DISubrange(count: 61)
!459 = !DIGlobalVariableExpression(var: !460, expr: !DIExpression())
!460 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1293, type: !461, isLocal: true, isDefinition: true)
!461 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 144, elements: !462)
!462 = !{!463}
!463 = !DISubrange(count: 18)
!464 = !DIGlobalVariableExpression(var: !465, expr: !DIExpression())
!465 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1294, type: !466, isLocal: true, isDefinition: true)
!466 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 232, elements: !467)
!467 = !{!468}
!468 = !DISubrange(count: 29)
!469 = !DIGlobalVariableExpression(var: !470, expr: !DIExpression())
!470 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1107, type: !471, isLocal: true, isDefinition: true)
!471 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 64, elements: !472)
!472 = !{!473}
!473 = !DISubrange(count: 8)
!474 = !DIGlobalVariableExpression(var: !475, expr: !DIExpression())
!475 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1109, type: !476, isLocal: true, isDefinition: true)
!476 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 96, elements: !477)
!477 = !{!478}
!478 = !DISubrange(count: 12)
!479 = !DIGlobalVariableExpression(var: !480, expr: !DIExpression())
!480 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1111, type: !476, isLocal: true, isDefinition: true)
!481 = !DIGlobalVariableExpression(var: !482, expr: !DIExpression())
!482 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1115, type: !483, isLocal: true, isDefinition: true)
!483 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 104, elements: !484)
!484 = !{!485}
!485 = !DISubrange(count: 13)
!486 = !DIGlobalVariableExpression(var: !487, expr: !DIExpression())
!487 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1117, type: !488, isLocal: true, isDefinition: true)
!488 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 184, elements: !489)
!489 = !{!490}
!490 = !DISubrange(count: 23)
!491 = !DIGlobalVariableExpression(var: !492, expr: !DIExpression())
!492 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1121, type: !493, isLocal: true, isDefinition: true)
!493 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 112, elements: !494)
!494 = !{!495}
!495 = !DISubrange(count: 14)
!496 = !DIGlobalVariableExpression(var: !497, expr: !DIExpression())
!497 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1123, type: !493, isLocal: true, isDefinition: true)
!498 = !DIGlobalVariableExpression(var: !499, expr: !DIExpression())
!499 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1125, type: !476, isLocal: true, isDefinition: true)
!500 = !DIGlobalVariableExpression(var: !501, expr: !DIExpression())
!501 = distinct !DIGlobalVariable(name: "faxFieldInfo", scope: !2, file: !3, line: 1105, type: !502, isLocal: true, isDefinition: true)
!502 = !DICompositeType(tag: DW_TAG_array_type, baseType: !503, size: 1920, elements: !504)
!503 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !298)
!504 = !{!505}
!505 = !DISubrange(count: 10)
!506 = !DIGlobalVariableExpression(var: !507, expr: !DIExpression())
!507 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1228, type: !508, isLocal: true, isDefinition: true)
!508 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 16, elements: !120)
!509 = !DIGlobalVariableExpression(var: !510, expr: !DIExpression())
!510 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1230, type: !511, isLocal: true, isDefinition: true)
!511 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 152, elements: !512)
!512 = !{!513}
!513 = !DISubrange(count: 19)
!514 = !DIGlobalVariableExpression(var: !515, expr: !DIExpression())
!515 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1232, type: !375, isLocal: true, isDefinition: true)
!516 = !DIGlobalVariableExpression(var: !517, expr: !DIExpression())
!517 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1235, type: !511, isLocal: true, isDefinition: true)
!518 = !DIGlobalVariableExpression(var: !519, expr: !DIExpression())
!519 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1237, type: !520, isLocal: true, isDefinition: true)
!520 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 120, elements: !521)
!521 = !{!522}
!522 = !DISubrange(count: 15)
!523 = !DIGlobalVariableExpression(var: !524, expr: !DIExpression())
!524 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1237, type: !508, isLocal: true, isDefinition: true)
!525 = !DIGlobalVariableExpression(var: !526, expr: !DIExpression())
!526 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1239, type: !493, isLocal: true, isDefinition: true)
!527 = !DIGlobalVariableExpression(var: !528, expr: !DIExpression())
!528 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1243, type: !529, isLocal: true, isDefinition: true)
!529 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 128, elements: !530)
!530 = !{!531}
!531 = !DISubrange(count: 16)
!532 = !DIGlobalVariableExpression(var: !533, expr: !DIExpression())
!533 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1247, type: !476, isLocal: true, isDefinition: true)
!534 = !DIGlobalVariableExpression(var: !535, expr: !DIExpression())
!535 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1250, type: !536, isLocal: true, isDefinition: true)
!536 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 56, elements: !537)
!537 = !{!538}
!538 = !DISubrange(count: 7)
!539 = !DIGlobalVariableExpression(var: !540, expr: !DIExpression())
!540 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1253, type: !541, isLocal: true, isDefinition: true)
!541 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 176, elements: !542)
!542 = !{!543}
!543 = !DISubrange(count: 22)
!544 = !DIGlobalVariableExpression(var: !545, expr: !DIExpression())
!545 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1256, type: !375, isLocal: true, isDefinition: true)
!546 = !DIGlobalVariableExpression(var: !547, expr: !DIExpression())
!547 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1259, type: !493, isLocal: true, isDefinition: true)
!548 = !DIGlobalVariableExpression(var: !549, expr: !DIExpression())
!549 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1263, type: !541, isLocal: true, isDefinition: true)
!550 = !DIGlobalVariableExpression(var: !551, expr: !DIExpression())
!551 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1265, type: !552, isLocal: true, isDefinition: true)
!552 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 272, elements: !553)
!553 = !{!554}
!554 = !DISubrange(count: 34)
!555 = !DIGlobalVariableExpression(var: !556, expr: !DIExpression())
!556 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1268, type: !557, isLocal: true, isDefinition: true)
!557 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 264, elements: !558)
!558 = !{!559}
!559 = !DISubrange(count: 33)
!560 = !DIGlobalVariableExpression(var: !561, expr: !DIExpression())
!561 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1271, type: !541, isLocal: true, isDefinition: true)
!562 = !DIGlobalVariableExpression(var: !563, expr: !DIExpression())
!563 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1273, type: !564, isLocal: true, isDefinition: true)
!564 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 240, elements: !565)
!565 = !{!566}
!566 = !DISubrange(count: 30)
!567 = !DIGlobalVariableExpression(var: !568, expr: !DIExpression())
!568 = distinct !DIGlobalVariable(scope: null, file: !3, line: 476, type: !569, isLocal: true, isDefinition: true)
!569 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 432, elements: !570)
!570 = !{!571}
!571 = !DISubrange(count: 54)
!572 = !DIGlobalVariableExpression(var: !573, expr: !DIExpression())
!573 = distinct !DIGlobalVariable(scope: null, file: !3, line: 505, type: !520, isLocal: true, isDefinition: true)
!574 = !DIGlobalVariableExpression(var: !575, expr: !DIExpression())
!575 = distinct !DIGlobalVariable(scope: null, file: !3, line: 506, type: !576, isLocal: true, isDefinition: true)
!576 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 304, elements: !577)
!577 = !{!578}
!578 = !DISubrange(count: 38)
!579 = !DIGlobalVariableExpression(var: !580, expr: !DIExpression())
!580 = distinct !DIGlobalVariable(scope: null, file: !3, line: 532, type: !581, isLocal: true, isDefinition: true)
!581 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 336, elements: !582)
!582 = !{!583}
!583 = !DISubrange(count: 42)
!584 = !DIGlobalVariableExpression(var: !585, expr: !DIExpression())
!585 = distinct !DIGlobalVariable(name: "module", scope: !586, file: !3, line: 269, type: !587, isLocal: true, isDefinition: true)
!586 = distinct !DISubprogram(name: "Fax3Decode2D", scope: !3, file: !3, line: 267, type: !217, scopeLine: 268, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !438)
!587 = !DICompositeType(tag: DW_TAG_array_type, baseType: !456, size: 104, elements: !484)
!588 = !DIGlobalVariableExpression(var: !589, expr: !DIExpression())
!589 = distinct !DIGlobalVariable(scope: null, file: !3, line: 189, type: !590, isLocal: true, isDefinition: true)
!590 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 328, elements: !591)
!591 = !{!592}
!592 = !DISubrange(count: 41)
!593 = !DIGlobalVariableExpression(var: !594, expr: !DIExpression())
!594 = distinct !DIGlobalVariable(scope: null, file: !3, line: 216, type: !590, isLocal: true, isDefinition: true)
!595 = !DIGlobalVariableExpression(var: !596, expr: !DIExpression())
!596 = distinct !DIGlobalVariable(scope: null, file: !3, line: 206, type: !597, isLocal: true, isDefinition: true)
!597 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 368, elements: !598)
!598 = !{!599}
!599 = !DISubrange(count: 46)
!600 = !DIGlobalVariableExpression(var: !601, expr: !DIExpression())
!601 = distinct !DIGlobalVariable(scope: null, file: !3, line: 208, type: !493, isLocal: true, isDefinition: true)
!602 = !DIGlobalVariableExpression(var: !603, expr: !DIExpression())
!603 = distinct !DIGlobalVariable(scope: null, file: !3, line: 208, type: !604, isLocal: true, isDefinition: true)
!604 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 168, elements: !605)
!605 = !{!606}
!606 = !DISubrange(count: 21)
!607 = !DIGlobalVariableExpression(var: !608, expr: !DIExpression())
!608 = distinct !DIGlobalVariable(scope: null, file: !3, line: 198, type: !609, isLocal: true, isDefinition: true)
!609 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 488, elements: !457)
!610 = !DIGlobalVariableExpression(var: !611, expr: !DIExpression())
!611 = distinct !DIGlobalVariable(scope: null, file: !3, line: 160, type: !445, isLocal: true, isDefinition: true)
!612 = !DIGlobalVariableExpression(var: !613, expr: !DIExpression())
!613 = distinct !DIGlobalVariable(scope: null, file: !3, line: 160, type: !614, isLocal: true, isDefinition: true)
!614 = !DICompositeType(tag: DW_TAG_array_type, baseType: !456, size: 296, elements: !615)
!615 = !{!616}
!616 = !DISubrange(count: 37)
!617 = !DIGlobalVariableExpression(var: !618, expr: !DIExpression())
!618 = distinct !DIGlobalVariable(name: "module", scope: !619, file: !3, line: 229, type: !587, isLocal: true, isDefinition: true)
!619 = distinct !DISubprogram(name: "Fax3Decode1D", scope: !3, file: !3, line: 227, type: !217, scopeLine: 228, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !438)
!620 = !DIGlobalVariableExpression(var: !621, expr: !DIExpression())
!621 = distinct !DIGlobalVariable(scope: null, file: !3, line: 699, type: !614, isLocal: true, isDefinition: true)
!622 = !DIGlobalVariableExpression(var: !623, expr: !DIExpression())
!623 = distinct !DIGlobalVariable(name: "_msbmask", scope: !2, file: !3, line: 559, type: !624, isLocal: true, isDefinition: true)
!624 = !DICompositeType(tag: DW_TAG_array_type, baseType: !183, size: 288, elements: !441)
!625 = !DIGlobalVariableExpression(var: !626, expr: !DIExpression())
!626 = distinct !DIGlobalVariable(name: "zeroruns", scope: !2, file: !3, line: 731, type: !627, isLocal: true, isDefinition: true)
!627 = !DICompositeType(tag: DW_TAG_array_type, baseType: !393, size: 2048, elements: !628)
!628 = !{!629}
!629 = !DISubrange(count: 256)
!630 = !DIGlobalVariableExpression(var: !631, expr: !DIExpression())
!631 = distinct !DIGlobalVariable(scope: null, file: !3, line: 632, type: !632, isLocal: true, isDefinition: true)
!632 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 216, elements: !633)
!633 = !{!634}
!634 = !DISubrange(count: 27)
!635 = !DIGlobalVariableExpression(var: !636, expr: !DIExpression())
!636 = distinct !DIGlobalVariable(scope: null, file: !3, line: 632, type: !637, isLocal: true, isDefinition: true)
!637 = !DICompositeType(tag: DW_TAG_array_type, baseType: !456, size: 384, elements: !638)
!638 = !{!639}
!639 = !DISubrange(count: 48)
!640 = !DIGlobalVariableExpression(var: !641, expr: !DIExpression())
!641 = distinct !DIGlobalVariable(name: "oneruns", scope: !2, file: !3, line: 749, type: !627, isLocal: true, isDefinition: true)
!642 = !DIGlobalVariableExpression(var: !643, expr: !DIExpression())
!643 = distinct !DIGlobalVariable(name: "horizcode", scope: !2, file: !3, line: 950, type: !424, isLocal: true, isDefinition: true)
!644 = !DIGlobalVariableExpression(var: !645, expr: !DIExpression())
!645 = distinct !DIGlobalVariable(name: "vcodes", scope: !2, file: !3, line: 954, type: !646, isLocal: true, isDefinition: true)
!646 = !DICompositeType(tag: DW_TAG_array_type, baseType: !424, size: 336, elements: !537)
!647 = !DIGlobalVariableExpression(var: !648, expr: !DIExpression())
!648 = distinct !DIGlobalVariable(name: "passcode", scope: !2, file: !3, line: 952, type: !424, isLocal: true, isDefinition: true)
!649 = !DIGlobalVariableExpression(var: !650, expr: !DIExpression())
!650 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1129, type: !493, isLocal: true, isDefinition: true)
!651 = !DIGlobalVariableExpression(var: !652, expr: !DIExpression())
!652 = distinct !DIGlobalVariable(name: "fax3FieldInfo", scope: !2, file: !3, line: 1127, type: !653, isLocal: true, isDefinition: true)
!653 = !DICompositeType(tag: DW_TAG_array_type, baseType: !503, size: 192, elements: !355)
!654 = !DIGlobalVariableExpression(var: !655, expr: !DIExpression())
!655 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1133, type: !493, isLocal: true, isDefinition: true)
!656 = !DIGlobalVariableExpression(var: !657, expr: !DIExpression())
!657 = distinct !DIGlobalVariable(name: "fax4FieldInfo", scope: !2, file: !3, line: 1131, type: !653, isLocal: true, isDefinition: true)
!658 = !DIGlobalVariableExpression(var: !659, expr: !DIExpression())
!659 = distinct !DIGlobalVariable(name: "module", scope: !660, file: !3, line: 1366, type: !661, isLocal: true, isDefinition: true)
!660 = distinct !DISubprogram(name: "Fax4Decode", scope: !3, file: !3, line: 1364, type: !217, scopeLine: 1365, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !438)
!661 = !DICompositeType(tag: DW_TAG_array_type, baseType: !456, size: 88, elements: !446)
!662 = !DIGlobalVariableExpression(var: !663, expr: !DIExpression())
!663 = distinct !DIGlobalVariable(name: "module", scope: !664, file: !3, line: 1466, type: !665, isLocal: true, isDefinition: true)
!664 = distinct !DISubprogram(name: "Fax3DecodeRLE", scope: !3, file: !3, line: 1464, type: !217, scopeLine: 1465, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !438)
!665 = !DICompositeType(tag: DW_TAG_array_type, baseType: !456, size: 112, elements: !494)
!666 = !{i32 7, !"Dwarf Version", i32 5}
!667 = !{i32 2, !"Debug Info Version", i32 3}
!668 = !{i32 1, !"wchar_size", i32 4}
!669 = !{i32 8, !"PIC Level", i32 2}
!670 = !{i32 7, !"PIE Level", i32 2}
!671 = !{i32 7, !"uwtable", i32 2}
!672 = !{i32 7, !"frame-pointer", i32 2}
!673 = !{!"clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)"}
!674 = !DILocalVariable(name: "buf", arg: 1, scope: !435, file: !3, line: 362, type: !38)
!675 = !DILocation(line: 362, column: 27, scope: !435)
!676 = !DILocalVariable(name: "runs", arg: 2, scope: !435, file: !3, line: 362, type: !142)
!677 = !DILocation(line: 362, column: 40, scope: !435)
!678 = !DILocalVariable(name: "erun", arg: 3, scope: !435, file: !3, line: 362, type: !142)
!679 = !DILocation(line: 362, column: 54, scope: !435)
!680 = !DILocalVariable(name: "lastx", arg: 4, scope: !435, file: !3, line: 362, type: !53)
!681 = !DILocation(line: 362, column: 67, scope: !435)
!682 = !DILocalVariable(name: "cp", scope: !435, file: !3, line: 366, type: !38)
!683 = !DILocation(line: 366, column: 10, scope: !435)
!684 = !DILocalVariable(name: "x", scope: !435, file: !3, line: 367, type: !53)
!685 = !DILocation(line: 367, column: 9, scope: !435)
!686 = !DILocalVariable(name: "bx", scope: !435, file: !3, line: 367, type: !53)
!687 = !DILocation(line: 367, column: 12, scope: !435)
!688 = !DILocalVariable(name: "run", scope: !435, file: !3, line: 367, type: !53)
!689 = !DILocation(line: 367, column: 16, scope: !435)
!690 = !DILocalVariable(name: "n", scope: !435, file: !3, line: 368, type: !36)
!691 = !DILocation(line: 368, column: 8, scope: !435)
!692 = !DILocalVariable(name: "nw", scope: !435, file: !3, line: 368, type: !36)
!693 = !DILocation(line: 368, column: 11, scope: !435)
!694 = !DILocalVariable(name: "lp", scope: !435, file: !3, line: 369, type: !34)
!695 = !DILocation(line: 369, column: 8, scope: !435)
!696 = !DILocation(line: 371, column: 7, scope: !697)
!697 = distinct !DILexicalBlock(scope: !435, file: !3, line: 371, column: 6)
!698 = !DILocation(line: 371, column: 12, scope: !697)
!699 = !DILocation(line: 371, column: 11, scope: !697)
!700 = !DILocation(line: 371, column: 17, scope: !697)
!701 = !DILocation(line: 372, column: 11, scope: !697)
!702 = !DILocation(line: 372, column: 14, scope: !697)
!703 = !DILocation(line: 372, column: 6, scope: !697)
!704 = !DILocation(line: 373, column: 4, scope: !435)
!705 = !DILocation(line: 374, column: 2, scope: !435)
!706 = !DILocation(line: 374, column: 9, scope: !707)
!707 = distinct !DILexicalBlock(scope: !708, file: !3, line: 374, column: 2)
!708 = distinct !DILexicalBlock(scope: !435, file: !3, line: 374, column: 2)
!709 = !DILocation(line: 374, column: 16, scope: !707)
!710 = !DILocation(line: 374, column: 14, scope: !707)
!711 = !DILocation(line: 374, column: 2, scope: !708)
!712 = !DILocation(line: 375, column: 12, scope: !713)
!713 = distinct !DILexicalBlock(scope: !707, file: !3, line: 374, column: 33)
!714 = !DILocation(line: 375, column: 10, scope: !713)
!715 = !DILocation(line: 376, column: 10, scope: !716)
!716 = distinct !DILexicalBlock(scope: !713, file: !3, line: 376, column: 10)
!717 = !DILocation(line: 376, column: 12, scope: !716)
!718 = !DILocation(line: 376, column: 11, scope: !716)
!719 = !DILocation(line: 376, column: 18, scope: !716)
!720 = !DILocation(line: 376, column: 16, scope: !716)
!721 = !DILocation(line: 377, column: 29, scope: !716)
!722 = !DILocation(line: 377, column: 37, scope: !716)
!723 = !DILocation(line: 377, column: 35, scope: !716)
!724 = !DILocation(line: 377, column: 19, scope: !716)
!725 = !DILocation(line: 377, column: 9, scope: !716)
!726 = !DILocation(line: 377, column: 17, scope: !716)
!727 = !DILocation(line: 377, column: 7, scope: !716)
!728 = !DILocation(line: 377, column: 3, scope: !716)
!729 = !DILocation(line: 378, column: 10, scope: !730)
!730 = distinct !DILexicalBlock(scope: !713, file: !3, line: 378, column: 10)
!731 = !DILocation(line: 379, column: 8, scope: !732)
!732 = distinct !DILexicalBlock(scope: !730, file: !3, line: 378, column: 15)
!733 = !DILocation(line: 379, column: 15, scope: !732)
!734 = !DILocation(line: 379, column: 16, scope: !732)
!735 = !DILocation(line: 379, column: 12, scope: !732)
!736 = !DILocation(line: 379, column: 6, scope: !732)
!737 = !DILocation(line: 380, column: 8, scope: !732)
!738 = !DILocation(line: 380, column: 9, scope: !732)
!739 = !DILocation(line: 380, column: 6, scope: !732)
!740 = !DILocation(line: 381, column: 7, scope: !741)
!741 = distinct !DILexicalBlock(scope: !732, file: !3, line: 381, column: 7)
!742 = !DILocation(line: 381, column: 15, scope: !741)
!743 = !DILocation(line: 381, column: 14, scope: !741)
!744 = !DILocation(line: 381, column: 11, scope: !741)
!745 = !DILocation(line: 382, column: 11, scope: !746)
!746 = distinct !DILexicalBlock(scope: !747, file: !3, line: 382, column: 11)
!747 = distinct !DILexicalBlock(scope: !741, file: !3, line: 381, column: 19)
!748 = !DILocation(line: 383, column: 24, scope: !749)
!749 = distinct !DILexicalBlock(scope: !746, file: !3, line: 382, column: 15)
!750 = !DILocation(line: 383, column: 23, scope: !749)
!751 = !DILocation(line: 383, column: 18, scope: !749)
!752 = !DILocation(line: 383, column: 7, scope: !749)
!753 = !DILocation(line: 383, column: 10, scope: !749)
!754 = !DILocation(line: 384, column: 13, scope: !749)
!755 = !DILocation(line: 384, column: 12, scope: !749)
!756 = !DILocation(line: 384, column: 8, scope: !749)
!757 = !DILocation(line: 385, column: 7, scope: !749)
!758 = !DILocation(line: 386, column: 16, scope: !759)
!759 = distinct !DILexicalBlock(scope: !747, file: !3, line: 386, column: 11)
!760 = !DILocation(line: 386, column: 20, scope: !759)
!761 = !DILocation(line: 386, column: 14, scope: !759)
!762 = !DILocation(line: 386, column: 26, scope: !759)
!763 = !DILocation(line: 387, column: 9, scope: !764)
!764 = distinct !DILexicalBlock(scope: !765, file: !3, line: 387, column: 8)
!765 = distinct !DILexicalBlock(scope: !759, file: !3, line: 386, column: 33)
!766 = !DILocation(line: 387, column: 10, scope: !764)
!767 = !DILocation(line: 387, column: 26, scope: !764)
!768 = !DILocation(line: 391, column: 8, scope: !769)
!769 = distinct !DILexicalBlock(scope: !764, file: !3, line: 387, column: 31)
!770 = !DILocation(line: 391, column: 15, scope: !771)
!771 = distinct !DILexicalBlock(scope: !772, file: !3, line: 391, column: 8)
!772 = distinct !DILexicalBlock(scope: !769, file: !3, line: 391, column: 8)
!773 = !DILocation(line: 391, column: 17, scope: !771)
!774 = !DILocation(line: 391, column: 21, scope: !771)
!775 = !DILocation(line: 391, column: 20, scope: !771)
!776 = !DILocation(line: 0, scope: !771)
!777 = !DILocation(line: 391, column: 8, scope: !772)
!778 = !DILocation(line: 392, column: 12, scope: !771)
!779 = !DILocation(line: 392, column: 15, scope: !771)
!780 = !DILocation(line: 392, column: 9, scope: !771)
!781 = !DILocation(line: 391, column: 43, scope: !771)
!782 = !DILocation(line: 391, column: 8, scope: !771)
!783 = distinct !{!783, !777, !784, !785}
!784 = !DILocation(line: 392, column: 17, scope: !772)
!785 = !{!"llvm.loop.mustprogress"}
!786 = !DILocation(line: 393, column: 21, scope: !769)
!787 = !DILocation(line: 393, column: 11, scope: !769)
!788 = !DILocation(line: 394, column: 21, scope: !769)
!789 = !DILocation(line: 394, column: 23, scope: !769)
!790 = !DILocation(line: 394, column: 13, scope: !769)
!791 = !DILocation(line: 394, column: 11, scope: !769)
!792 = !DILocation(line: 395, column: 13, scope: !769)
!793 = !DILocation(line: 395, column: 16, scope: !769)
!794 = !DILocation(line: 395, column: 10, scope: !769)
!795 = !DILocation(line: 396, column: 8, scope: !769)
!796 = !DILocation(line: 397, column: 12, scope: !797)
!797 = distinct !DILexicalBlock(scope: !769, file: !3, line: 396, column: 11)
!798 = !DILocation(line: 397, column: 15, scope: !797)
!799 = !DILocation(line: 398, column: 8, scope: !797)
!800 = !DILocation(line: 398, column: 17, scope: !769)
!801 = distinct !{!801, !795, !802, !785}
!802 = !DILocation(line: 398, column: 21, scope: !769)
!803 = !DILocation(line: 399, column: 23, scope: !769)
!804 = !DILocation(line: 399, column: 11, scope: !769)
!805 = !DILocation(line: 400, column: 4, scope: !769)
!806 = !DILocation(line: 401, column: 4, scope: !765)
!807 = !DILocation(line: 401, column: 4, scope: !808)
!808 = distinct !DILexicalBlock(scope: !765, file: !3, line: 401, column: 4)
!809 = !DILocation(line: 402, column: 8, scope: !765)
!810 = !DILocation(line: 403, column: 7, scope: !765)
!811 = !DILocation(line: 408, column: 24, scope: !747)
!812 = !DILocation(line: 408, column: 21, scope: !747)
!813 = !DILocation(line: 408, column: 7, scope: !747)
!814 = !DILocation(line: 408, column: 13, scope: !747)
!815 = !DILocation(line: 410, column: 3, scope: !747)
!816 = !DILocation(line: 411, column: 29, scope: !741)
!817 = !DILocation(line: 411, column: 18, scope: !741)
!818 = !DILocation(line: 411, column: 35, scope: !741)
!819 = !DILocation(line: 411, column: 33, scope: !741)
!820 = !DILocation(line: 411, column: 16, scope: !741)
!821 = !DILocation(line: 411, column: 7, scope: !741)
!822 = !DILocation(line: 411, column: 13, scope: !741)
!823 = !DILocation(line: 412, column: 8, scope: !732)
!824 = !DILocation(line: 412, column: 5, scope: !732)
!825 = !DILocation(line: 413, column: 6, scope: !732)
!826 = !DILocation(line: 414, column: 12, scope: !713)
!827 = !DILocation(line: 414, column: 10, scope: !713)
!828 = !DILocation(line: 415, column: 10, scope: !829)
!829 = distinct !DILexicalBlock(scope: !713, file: !3, line: 415, column: 10)
!830 = !DILocation(line: 415, column: 12, scope: !829)
!831 = !DILocation(line: 415, column: 11, scope: !829)
!832 = !DILocation(line: 415, column: 18, scope: !829)
!833 = !DILocation(line: 415, column: 16, scope: !829)
!834 = !DILocation(line: 416, column: 19, scope: !829)
!835 = !DILocation(line: 416, column: 27, scope: !829)
!836 = !DILocation(line: 416, column: 25, scope: !829)
!837 = !DILocation(line: 416, column: 9, scope: !829)
!838 = !DILocation(line: 416, column: 17, scope: !829)
!839 = !DILocation(line: 416, column: 7, scope: !829)
!840 = !DILocation(line: 416, column: 3, scope: !829)
!841 = !DILocation(line: 417, column: 10, scope: !842)
!842 = distinct !DILexicalBlock(scope: !713, file: !3, line: 417, column: 10)
!843 = !DILocation(line: 418, column: 8, scope: !844)
!844 = distinct !DILexicalBlock(scope: !842, file: !3, line: 417, column: 15)
!845 = !DILocation(line: 418, column: 15, scope: !844)
!846 = !DILocation(line: 418, column: 16, scope: !844)
!847 = !DILocation(line: 418, column: 12, scope: !844)
!848 = !DILocation(line: 418, column: 6, scope: !844)
!849 = !DILocation(line: 419, column: 8, scope: !844)
!850 = !DILocation(line: 419, column: 9, scope: !844)
!851 = !DILocation(line: 419, column: 6, scope: !844)
!852 = !DILocation(line: 420, column: 7, scope: !853)
!853 = distinct !DILexicalBlock(scope: !844, file: !3, line: 420, column: 7)
!854 = !DILocation(line: 420, column: 15, scope: !853)
!855 = !DILocation(line: 420, column: 14, scope: !853)
!856 = !DILocation(line: 420, column: 11, scope: !853)
!857 = !DILocation(line: 421, column: 11, scope: !858)
!858 = distinct !DILexicalBlock(scope: !859, file: !3, line: 421, column: 11)
!859 = distinct !DILexicalBlock(scope: !853, file: !3, line: 420, column: 19)
!860 = !DILocation(line: 422, column: 21, scope: !861)
!861 = distinct !DILexicalBlock(scope: !858, file: !3, line: 421, column: 15)
!862 = !DILocation(line: 422, column: 18, scope: !861)
!863 = !DILocation(line: 422, column: 7, scope: !861)
!864 = !DILocation(line: 422, column: 10, scope: !861)
!865 = !DILocation(line: 423, column: 13, scope: !861)
!866 = !DILocation(line: 423, column: 12, scope: !861)
!867 = !DILocation(line: 423, column: 8, scope: !861)
!868 = !DILocation(line: 424, column: 7, scope: !861)
!869 = !DILocation(line: 425, column: 16, scope: !870)
!870 = distinct !DILexicalBlock(scope: !859, file: !3, line: 425, column: 11)
!871 = !DILocation(line: 425, column: 19, scope: !870)
!872 = !DILocation(line: 425, column: 14, scope: !870)
!873 = !DILocation(line: 425, column: 24, scope: !870)
!874 = !DILocation(line: 426, column: 9, scope: !875)
!875 = distinct !DILexicalBlock(scope: !876, file: !3, line: 426, column: 8)
!876 = distinct !DILexicalBlock(scope: !870, file: !3, line: 425, column: 31)
!877 = !DILocation(line: 426, column: 10, scope: !875)
!878 = !DILocation(line: 426, column: 26, scope: !875)
!879 = !DILocation(line: 430, column: 8, scope: !880)
!880 = distinct !DILexicalBlock(scope: !875, file: !3, line: 426, column: 31)
!881 = !DILocation(line: 430, column: 15, scope: !882)
!882 = distinct !DILexicalBlock(scope: !883, file: !3, line: 430, column: 8)
!883 = distinct !DILexicalBlock(scope: !880, file: !3, line: 430, column: 8)
!884 = !DILocation(line: 430, column: 17, scope: !882)
!885 = !DILocation(line: 430, column: 21, scope: !882)
!886 = !DILocation(line: 430, column: 20, scope: !882)
!887 = !DILocation(line: 0, scope: !882)
!888 = !DILocation(line: 430, column: 8, scope: !883)
!889 = !DILocation(line: 431, column: 8, scope: !882)
!890 = !DILocation(line: 431, column: 11, scope: !882)
!891 = !DILocation(line: 431, column: 5, scope: !882)
!892 = !DILocation(line: 430, column: 43, scope: !882)
!893 = !DILocation(line: 430, column: 8, scope: !882)
!894 = distinct !{!894, !888, !895, !785}
!895 = !DILocation(line: 431, column: 13, scope: !883)
!896 = !DILocation(line: 432, column: 21, scope: !880)
!897 = !DILocation(line: 432, column: 11, scope: !880)
!898 = !DILocation(line: 433, column: 21, scope: !880)
!899 = !DILocation(line: 433, column: 23, scope: !880)
!900 = !DILocation(line: 433, column: 13, scope: !880)
!901 = !DILocation(line: 433, column: 11, scope: !880)
!902 = !DILocation(line: 434, column: 13, scope: !880)
!903 = !DILocation(line: 434, column: 16, scope: !880)
!904 = !DILocation(line: 434, column: 10, scope: !880)
!905 = !DILocation(line: 435, column: 8, scope: !880)
!906 = !DILocation(line: 436, column: 8, scope: !907)
!907 = distinct !DILexicalBlock(scope: !880, file: !3, line: 435, column: 11)
!908 = !DILocation(line: 436, column: 11, scope: !907)
!909 = !DILocation(line: 437, column: 8, scope: !907)
!910 = !DILocation(line: 437, column: 17, scope: !880)
!911 = distinct !{!911, !905, !912, !785}
!912 = !DILocation(line: 437, column: 21, scope: !880)
!913 = !DILocation(line: 438, column: 23, scope: !880)
!914 = !DILocation(line: 438, column: 11, scope: !880)
!915 = !DILocation(line: 439, column: 4, scope: !880)
!916 = !DILocation(line: 440, column: 4, scope: !876)
!917 = !DILocation(line: 440, column: 4, scope: !918)
!918 = distinct !DILexicalBlock(scope: !876, file: !3, line: 440, column: 4)
!919 = !DILocation(line: 441, column: 8, scope: !876)
!920 = !DILocation(line: 442, column: 7, scope: !876)
!921 = !DILocation(line: 447, column: 26, scope: !859)
!922 = !DILocation(line: 447, column: 23, scope: !859)
!923 = !DILocation(line: 447, column: 7, scope: !859)
!924 = !DILocation(line: 447, column: 13, scope: !859)
!925 = !DILocation(line: 449, column: 3, scope: !859)
!926 = !DILocation(line: 450, column: 27, scope: !853)
!927 = !DILocation(line: 450, column: 16, scope: !853)
!928 = !DILocation(line: 450, column: 33, scope: !853)
!929 = !DILocation(line: 450, column: 31, scope: !853)
!930 = !DILocation(line: 450, column: 7, scope: !853)
!931 = !DILocation(line: 450, column: 13, scope: !853)
!932 = !DILocation(line: 451, column: 8, scope: !844)
!933 = !DILocation(line: 451, column: 5, scope: !844)
!934 = !DILocation(line: 452, column: 6, scope: !844)
!935 = !DILocation(line: 453, column: 2, scope: !713)
!936 = !DILocation(line: 374, column: 27, scope: !707)
!937 = !DILocation(line: 374, column: 2, scope: !707)
!938 = distinct !{!938, !711, !939, !785}
!939 = !DILocation(line: 453, column: 2, scope: !708)
!940 = !DILocation(line: 454, column: 2, scope: !941)
!941 = distinct !DILexicalBlock(scope: !942, file: !3, line: 454, column: 2)
!942 = distinct !DILexicalBlock(scope: !435, file: !3, line: 454, column: 2)
!943 = !DILocation(line: 455, column: 1, scope: !435)
!944 = distinct !DISubprogram(name: "TIFFInitCCITTFax3", scope: !3, file: !3, line: 1341, type: !945, scopeLine: 1342, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !438)
!945 = !DISubroutineType(types: !946)
!946 = !{!37, !69, !37}
!947 = !DILocalVariable(name: "tif", arg: 1, scope: !944, file: !3, line: 1341, type: !69)
!948 = !DILocation(line: 1341, column: 25, scope: !944)
!949 = !DILocalVariable(name: "scheme", arg: 2, scope: !944, file: !3, line: 1341, type: !37)
!950 = !DILocation(line: 1341, column: 34, scope: !944)
!951 = !DILocation(line: 1343, column: 20, scope: !952)
!952 = distinct !DILexicalBlock(scope: !944, file: !3, line: 1343, column: 6)
!953 = !DILocation(line: 1343, column: 6, scope: !952)
!954 = !DILocation(line: 1344, column: 23, scope: !955)
!955 = distinct !DILexicalBlock(scope: !952, file: !3, line: 1343, column: 26)
!956 = !DILocation(line: 1344, column: 3, scope: !955)
!957 = !DILocation(line: 1349, column: 23, scope: !955)
!958 = !DILocation(line: 1349, column: 10, scope: !955)
!959 = !DILocation(line: 1349, column: 3, scope: !955)
!960 = !DILocation(line: 1351, column: 3, scope: !952)
!961 = !DILocation(line: 1352, column: 1, scope: !944)
!962 = distinct !DISubprogram(name: "InitCCITTFax3", scope: !3, file: !3, line: 1278, type: !203, scopeLine: 1279, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !438)
!963 = !DILocalVariable(name: "tif", arg: 1, scope: !962, file: !3, line: 1278, type: !69)
!964 = !DILocation(line: 1278, column: 21, scope: !962)
!965 = !DILocalVariable(name: "sp", scope: !962, file: !3, line: 1280, type: !47)
!966 = !DILocation(line: 1280, column: 17, scope: !962)
!967 = !DILocation(line: 1285, column: 6, scope: !968)
!968 = distinct !DILexicalBlock(scope: !962, file: !3, line: 1285, column: 6)
!969 = !DILocation(line: 1285, column: 11, scope: !968)
!970 = !DILocation(line: 1285, column: 20, scope: !968)
!971 = !DILocation(line: 1287, column: 21, scope: !968)
!972 = !DILocation(line: 1286, column: 3, scope: !968)
!973 = !DILocation(line: 1286, column: 8, scope: !968)
!974 = !DILocation(line: 1286, column: 17, scope: !968)
!975 = !DILocation(line: 1290, column: 21, scope: !968)
!976 = !DILocation(line: 1289, column: 3, scope: !968)
!977 = !DILocation(line: 1289, column: 8, scope: !968)
!978 = !DILocation(line: 1289, column: 17, scope: !968)
!979 = !DILocation(line: 1292, column: 6, scope: !980)
!980 = distinct !DILexicalBlock(scope: !962, file: !3, line: 1292, column: 6)
!981 = !DILocation(line: 1292, column: 11, scope: !980)
!982 = !DILocation(line: 1292, column: 20, scope: !980)
!983 = !DILocation(line: 1294, column: 39, scope: !984)
!984 = distinct !DILexicalBlock(scope: !980, file: !3, line: 1292, column: 29)
!985 = !DILocation(line: 1294, column: 44, scope: !984)
!986 = !DILocation(line: 1293, column: 3, scope: !984)
!987 = !DILocation(line: 1295, column: 3, scope: !984)
!988 = !DILocation(line: 1297, column: 7, scope: !962)
!989 = !DILocation(line: 1297, column: 5, scope: !962)
!990 = !DILocation(line: 1303, column: 22, scope: !962)
!991 = !DILocation(line: 1303, column: 2, scope: !962)
!992 = !DILocation(line: 1304, column: 19, scope: !962)
!993 = !DILocation(line: 1304, column: 24, scope: !962)
!994 = !DILocation(line: 1304, column: 2, scope: !962)
!995 = !DILocation(line: 1304, column: 6, scope: !962)
!996 = !DILocation(line: 1304, column: 17, scope: !962)
!997 = !DILocation(line: 1305, column: 2, scope: !962)
!998 = !DILocation(line: 1305, column: 7, scope: !962)
!999 = !DILocation(line: 1305, column: 21, scope: !962)
!1000 = !DILocation(line: 1306, column: 19, scope: !962)
!1001 = !DILocation(line: 1306, column: 24, scope: !962)
!1002 = !DILocation(line: 1306, column: 2, scope: !962)
!1003 = !DILocation(line: 1306, column: 6, scope: !962)
!1004 = !DILocation(line: 1306, column: 17, scope: !962)
!1005 = !DILocation(line: 1307, column: 2, scope: !962)
!1006 = !DILocation(line: 1307, column: 7, scope: !962)
!1007 = !DILocation(line: 1307, column: 21, scope: !962)
!1008 = !DILocation(line: 1308, column: 2, scope: !962)
!1009 = !DILocation(line: 1308, column: 7, scope: !962)
!1010 = !DILocation(line: 1308, column: 20, scope: !962)
!1011 = !DILocation(line: 1309, column: 2, scope: !962)
!1012 = !DILocation(line: 1309, column: 6, scope: !962)
!1013 = !DILocation(line: 1309, column: 19, scope: !962)
!1014 = !DILocation(line: 1310, column: 2, scope: !962)
!1015 = !DILocation(line: 1310, column: 6, scope: !962)
!1016 = !DILocation(line: 1310, column: 17, scope: !962)
!1017 = !DILocation(line: 1311, column: 2, scope: !962)
!1018 = !DILocation(line: 1311, column: 6, scope: !962)
!1019 = !DILocation(line: 1311, column: 17, scope: !962)
!1020 = !DILocation(line: 1313, column: 6, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !962, file: !3, line: 1313, column: 6)
!1022 = !DILocation(line: 1313, column: 11, scope: !1021)
!1023 = !DILocation(line: 1313, column: 20, scope: !1021)
!1024 = !DILocation(line: 1314, column: 3, scope: !1025)
!1025 = distinct !DILexicalBlock(scope: !1021, file: !3, line: 1313, column: 33)
!1026 = !DILocation(line: 1314, column: 8, scope: !1025)
!1027 = !DILocation(line: 1314, column: 18, scope: !1025)
!1028 = !DILocation(line: 1315, column: 3, scope: !1025)
!1029 = !DILocation(line: 1315, column: 22, scope: !1025)
!1030 = !DILocation(line: 1315, column: 27, scope: !1025)
!1031 = !DILocation(line: 1316, column: 16, scope: !1025)
!1032 = !DILocation(line: 1316, column: 3, scope: !1025)
!1033 = !DILocation(line: 1317, column: 2, scope: !1025)
!1034 = !DILocation(line: 1318, column: 3, scope: !1021)
!1035 = !DILocation(line: 1318, column: 22, scope: !1021)
!1036 = !DILocation(line: 1318, column: 30, scope: !1021)
!1037 = !DILocation(line: 1323, column: 2, scope: !962)
!1038 = !DILocation(line: 1323, column: 7, scope: !962)
!1039 = !DILocation(line: 1323, column: 23, scope: !962)
!1040 = !DILocation(line: 1324, column: 2, scope: !962)
!1041 = !DILocation(line: 1324, column: 7, scope: !962)
!1042 = !DILocation(line: 1324, column: 21, scope: !962)
!1043 = !DILocation(line: 1325, column: 2, scope: !962)
!1044 = !DILocation(line: 1325, column: 7, scope: !962)
!1045 = !DILocation(line: 1325, column: 21, scope: !962)
!1046 = !DILocation(line: 1326, column: 2, scope: !962)
!1047 = !DILocation(line: 1326, column: 7, scope: !962)
!1048 = !DILocation(line: 1326, column: 23, scope: !962)
!1049 = !DILocation(line: 1327, column: 2, scope: !962)
!1050 = !DILocation(line: 1327, column: 7, scope: !962)
!1051 = !DILocation(line: 1327, column: 22, scope: !962)
!1052 = !DILocation(line: 1328, column: 2, scope: !962)
!1053 = !DILocation(line: 1328, column: 7, scope: !962)
!1054 = !DILocation(line: 1328, column: 23, scope: !962)
!1055 = !DILocation(line: 1329, column: 2, scope: !962)
!1056 = !DILocation(line: 1329, column: 7, scope: !962)
!1057 = !DILocation(line: 1329, column: 21, scope: !962)
!1058 = !DILocation(line: 1330, column: 2, scope: !962)
!1059 = !DILocation(line: 1330, column: 7, scope: !962)
!1060 = !DILocation(line: 1330, column: 22, scope: !962)
!1061 = !DILocation(line: 1331, column: 2, scope: !962)
!1062 = !DILocation(line: 1331, column: 7, scope: !962)
!1063 = !DILocation(line: 1331, column: 21, scope: !962)
!1064 = !DILocation(line: 1332, column: 2, scope: !962)
!1065 = !DILocation(line: 1332, column: 7, scope: !962)
!1066 = !DILocation(line: 1332, column: 23, scope: !962)
!1067 = !DILocation(line: 1333, column: 2, scope: !962)
!1068 = !DILocation(line: 1333, column: 7, scope: !962)
!1069 = !DILocation(line: 1333, column: 22, scope: !962)
!1070 = !DILocation(line: 1334, column: 2, scope: !962)
!1071 = !DILocation(line: 1334, column: 7, scope: !962)
!1072 = !DILocation(line: 1334, column: 17, scope: !962)
!1073 = !DILocation(line: 1335, column: 2, scope: !962)
!1074 = !DILocation(line: 1335, column: 7, scope: !962)
!1075 = !DILocation(line: 1335, column: 19, scope: !962)
!1076 = !DILocation(line: 1337, column: 2, scope: !962)
!1077 = !DILocation(line: 1338, column: 1, scope: !962)
!1078 = distinct !DISubprogram(name: "TIFFInitCCITTFax4", scope: !3, file: !3, line: 1435, type: !945, scopeLine: 1436, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !438)
!1079 = !DILocalVariable(name: "tif", arg: 1, scope: !1078, file: !3, line: 1435, type: !69)
!1080 = !DILocation(line: 1435, column: 25, scope: !1078)
!1081 = !DILocalVariable(name: "scheme", arg: 2, scope: !1078, file: !3, line: 1435, type: !37)
!1082 = !DILocation(line: 1435, column: 34, scope: !1078)
!1083 = !DILocation(line: 1437, column: 20, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1078, file: !3, line: 1437, column: 6)
!1085 = !DILocation(line: 1437, column: 6, scope: !1084)
!1086 = !DILocation(line: 1438, column: 23, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !1084, file: !3, line: 1437, column: 26)
!1088 = !DILocation(line: 1438, column: 3, scope: !1087)
!1089 = !DILocation(line: 1440, column: 3, scope: !1087)
!1090 = !DILocation(line: 1440, column: 8, scope: !1087)
!1091 = !DILocation(line: 1440, column: 22, scope: !1087)
!1092 = !DILocation(line: 1441, column: 3, scope: !1087)
!1093 = !DILocation(line: 1441, column: 8, scope: !1087)
!1094 = !DILocation(line: 1441, column: 24, scope: !1087)
!1095 = !DILocation(line: 1442, column: 3, scope: !1087)
!1096 = !DILocation(line: 1442, column: 8, scope: !1087)
!1097 = !DILocation(line: 1442, column: 23, scope: !1087)
!1098 = !DILocation(line: 1443, column: 3, scope: !1087)
!1099 = !DILocation(line: 1443, column: 8, scope: !1087)
!1100 = !DILocation(line: 1443, column: 22, scope: !1087)
!1101 = !DILocation(line: 1444, column: 3, scope: !1087)
!1102 = !DILocation(line: 1444, column: 8, scope: !1087)
!1103 = !DILocation(line: 1444, column: 24, scope: !1087)
!1104 = !DILocation(line: 1445, column: 3, scope: !1087)
!1105 = !DILocation(line: 1445, column: 8, scope: !1087)
!1106 = !DILocation(line: 1445, column: 23, scope: !1087)
!1107 = !DILocation(line: 1446, column: 3, scope: !1087)
!1108 = !DILocation(line: 1446, column: 8, scope: !1087)
!1109 = !DILocation(line: 1446, column: 23, scope: !1087)
!1110 = !DILocation(line: 1450, column: 23, scope: !1087)
!1111 = !DILocation(line: 1450, column: 10, scope: !1087)
!1112 = !DILocation(line: 1450, column: 3, scope: !1087)
!1113 = !DILocation(line: 1452, column: 3, scope: !1084)
!1114 = !DILocation(line: 1453, column: 1, scope: !1078)
!1115 = !DILocalVariable(name: "tif", arg: 1, scope: !660, file: !3, line: 1364, type: !69)
!1116 = !DILocation(line: 1364, column: 18, scope: !660)
!1117 = !DILocalVariable(name: "buf", arg: 2, scope: !660, file: !3, line: 1364, type: !42)
!1118 = !DILocation(line: 1364, column: 32, scope: !660)
!1119 = !DILocalVariable(name: "occ", arg: 3, scope: !660, file: !3, line: 1364, type: !199)
!1120 = !DILocation(line: 1364, column: 45, scope: !660)
!1121 = !DILocalVariable(name: "s", arg: 4, scope: !660, file: !3, line: 1364, type: !210)
!1122 = !DILocation(line: 1364, column: 60, scope: !660)
!1123 = !DILocalVariable(name: "sp", scope: !660, file: !3, line: 1366, type: !386)
!1124 = !DILocation(line: 1366, column: 2, scope: !660)
!1125 = !DILocalVariable(name: "a0", scope: !660, file: !3, line: 1366, type: !37)
!1126 = !DILocalVariable(name: "lastx", scope: !660, file: !3, line: 1366, type: !37)
!1127 = !DILocalVariable(name: "BitAcc", scope: !660, file: !3, line: 1366, type: !53)
!1128 = !DILocalVariable(name: "BitsAvail", scope: !660, file: !3, line: 1366, type: !37)
!1129 = !DILocalVariable(name: "RunLength", scope: !660, file: !3, line: 1366, type: !37)
!1130 = !DILocalVariable(name: "cp", scope: !660, file: !3, line: 1366, type: !38)
!1131 = !DILocalVariable(name: "ep", scope: !660, file: !3, line: 1366, type: !38)
!1132 = !DILocalVariable(name: "pa", scope: !660, file: !3, line: 1366, type: !142)
!1133 = !DILocalVariable(name: "thisrun", scope: !660, file: !3, line: 1366, type: !142)
!1134 = !DILocalVariable(name: "EOLcnt", scope: !660, file: !3, line: 1366, type: !37)
!1135 = !DILocalVariable(name: "bitmap", scope: !660, file: !3, line: 1366, type: !392)
!1136 = !DILocalVariable(name: "TabEnt", scope: !660, file: !3, line: 1366, type: !1137)
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1138 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1139)
!1139 = !DIDerivedType(tag: DW_TAG_typedef, name: "TIFFFaxTabEnt", file: !399, line: 88, baseType: !1140)
!1140 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !399, line: 84, size: 64, elements: !1141)
!1141 = !{!1142, !1143, !1144}
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "State", scope: !1140, file: !399, line: 85, baseType: !41, size: 8)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "Width", scope: !1140, file: !399, line: 86, baseType: !41, size: 8, offset: 8)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "Param", scope: !1140, file: !399, line: 87, baseType: !53, size: 32, offset: 32)
!1145 = !DILocalVariable(name: "b1", scope: !660, file: !3, line: 1366, type: !37)
!1146 = !DILocalVariable(name: "pb", scope: !660, file: !3, line: 1366, type: !142)
!1147 = !DILocation(line: 1368, column: 9, scope: !660)
!1148 = !DILocation(line: 1369, column: 2, scope: !660)
!1149 = !DILocation(line: 1369, column: 2, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !660, file: !3, line: 1369, column: 2)
!1151 = !DILocation(line: 1370, column: 2, scope: !660)
!1152 = !DILocation(line: 1370, column: 15, scope: !660)
!1153 = !DILocation(line: 1370, column: 9, scope: !660)
!1154 = !DILocation(line: 1370, column: 19, scope: !660)
!1155 = !DILocation(line: 1371, column: 6, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !660, file: !3, line: 1370, column: 24)
!1157 = !DILocation(line: 1372, column: 13, scope: !1156)
!1158 = !DILocation(line: 1373, column: 18, scope: !1156)
!1159 = !DILocation(line: 1373, column: 22, scope: !1156)
!1160 = !DILocation(line: 1373, column: 16, scope: !1156)
!1161 = !DILocation(line: 1373, column: 6, scope: !1156)
!1162 = !DILocation(line: 1374, column: 8, scope: !1156)
!1163 = !DILocation(line: 1374, column: 12, scope: !1156)
!1164 = !DILocation(line: 1374, column: 6, scope: !1156)
!1165 = !DILocation(line: 1375, column: 11, scope: !1156)
!1166 = !DILocation(line: 1375, column: 8, scope: !1156)
!1167 = !DILocation(line: 1375, column: 6, scope: !1156)
!1168 = !DILocation(line: 1381, column: 3, scope: !1156)
!1169 = !DILocation(line: 1381, column: 3, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1156, file: !3, line: 1381, column: 3)
!1171 = !DILocation(line: 1381, column: 3, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1170, file: !3, line: 1381, column: 3)
!1173 = !DILocation(line: 1381, column: 3, scope: !1174)
!1174 = distinct !DILexicalBlock(scope: !1172, file: !3, line: 1381, column: 3)
!1175 = !DILocation(line: 1381, column: 3, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1177, file: !3, line: 1381, column: 3)
!1177 = distinct !DILexicalBlock(scope: !1174, file: !3, line: 1381, column: 3)
!1178 = !DILocation(line: 1381, column: 3, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1180, file: !3, line: 1381, column: 3)
!1180 = distinct !DILexicalBlock(scope: !1176, file: !3, line: 1381, column: 3)
!1181 = !DILocation(line: 1381, column: 3, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1183, file: !3, line: 1381, column: 3)
!1183 = distinct !DILexicalBlock(scope: !1179, file: !3, line: 1381, column: 3)
!1184 = !DILocation(line: 1381, column: 3, scope: !1183)
!1185 = !DILocation(line: 1381, column: 3, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1179, file: !3, line: 1381, column: 3)
!1187 = !DILocation(line: 1381, column: 3, scope: !1180)
!1188 = !DILocation(line: 1381, column: 3, scope: !1177)
!1189 = !DILocation(line: 1381, column: 3, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1174, file: !3, line: 1381, column: 3)
!1191 = !DILocation(line: 1381, column: 3, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1172, file: !3, line: 1381, column: 3)
!1193 = !DILocation(line: 1381, column: 3, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1195, file: !3, line: 1381, column: 3)
!1195 = distinct !DILexicalBlock(scope: !1192, file: !3, line: 1381, column: 3)
!1196 = !DILocation(line: 0, scope: !1194)
!1197 = !DILocation(line: 1381, column: 3, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1194, file: !3, line: 1381, column: 3)
!1199 = distinct !{!1199, !1193, !1193, !785}
!1200 = !DILocation(line: 1381, column: 3, scope: !1195)
!1201 = !DILocation(line: 1381, column: 3, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !1192, file: !3, line: 1381, column: 3)
!1203 = !DILocation(line: 1381, column: 3, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1202, file: !3, line: 1381, column: 3)
!1205 = !DILocation(line: 1381, column: 3, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1207, file: !3, line: 1381, column: 3)
!1207 = distinct !DILexicalBlock(scope: !1208, file: !3, line: 1381, column: 3)
!1208 = distinct !DILexicalBlock(scope: !1204, file: !3, line: 1381, column: 3)
!1209 = !DILocation(line: 1381, column: 3, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1206, file: !3, line: 1381, column: 3)
!1211 = !DILocation(line: 1381, column: 3, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !1213, file: !3, line: 1381, column: 3)
!1213 = distinct !DILexicalBlock(scope: !1210, file: !3, line: 1381, column: 3)
!1214 = !DILocation(line: 1381, column: 3, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !1216, file: !3, line: 1381, column: 3)
!1216 = distinct !DILexicalBlock(scope: !1212, file: !3, line: 1381, column: 3)
!1217 = !DILocation(line: 1381, column: 3, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1219, file: !3, line: 1381, column: 3)
!1219 = distinct !DILexicalBlock(scope: !1215, file: !3, line: 1381, column: 3)
!1220 = !DILocation(line: 1381, column: 3, scope: !1219)
!1221 = !DILocation(line: 1381, column: 3, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1215, file: !3, line: 1381, column: 3)
!1223 = !DILocation(line: 1381, column: 3, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !1222, file: !3, line: 1381, column: 3)
!1225 = !DILocation(line: 1381, column: 3, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !1227, file: !3, line: 1381, column: 3)
!1227 = distinct !DILexicalBlock(scope: !1224, file: !3, line: 1381, column: 3)
!1228 = !DILocation(line: 1381, column: 3, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !1226, file: !3, line: 1381, column: 3)
!1230 = !DILocation(line: 1381, column: 3, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1226, file: !3, line: 1381, column: 3)
!1232 = !DILocation(line: 1381, column: 3, scope: !1227)
!1233 = !DILocation(line: 1381, column: 3, scope: !1216)
!1234 = !DILocation(line: 1381, column: 3, scope: !1213)
!1235 = !DILocation(line: 1381, column: 3, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1210, file: !3, line: 1381, column: 3)
!1237 = !DILocation(line: 1381, column: 3, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1206, file: !3, line: 1381, column: 3)
!1239 = !DILocation(line: 1381, column: 3, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1238, file: !3, line: 1381, column: 3)
!1241 = !DILocation(line: 1381, column: 3, scope: !1207)
!1242 = distinct !{!1242, !1243, !1243}
!1243 = !DILocation(line: 1381, column: 3, scope: !1208)
!1244 = !DILabel(scope: !1204, name: "doneWhite2da", file: !3, line: 1381)
!1245 = !DILocation(line: 1381, column: 3, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1247, file: !3, line: 1381, column: 3)
!1247 = distinct !DILexicalBlock(scope: !1248, file: !3, line: 1381, column: 3)
!1248 = distinct !DILexicalBlock(scope: !1204, file: !3, line: 1381, column: 3)
!1249 = !DILocation(line: 1381, column: 3, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1246, file: !3, line: 1381, column: 3)
!1251 = !DILocation(line: 1381, column: 3, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1253, file: !3, line: 1381, column: 3)
!1253 = distinct !DILexicalBlock(scope: !1250, file: !3, line: 1381, column: 3)
!1254 = !DILocation(line: 1381, column: 3, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !1256, file: !3, line: 1381, column: 3)
!1256 = distinct !DILexicalBlock(scope: !1252, file: !3, line: 1381, column: 3)
!1257 = !DILocation(line: 1381, column: 3, scope: !1258)
!1258 = distinct !DILexicalBlock(scope: !1259, file: !3, line: 1381, column: 3)
!1259 = distinct !DILexicalBlock(scope: !1255, file: !3, line: 1381, column: 3)
!1260 = !DILocation(line: 1381, column: 3, scope: !1259)
!1261 = !DILocation(line: 1381, column: 3, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1255, file: !3, line: 1381, column: 3)
!1263 = !DILocation(line: 1381, column: 3, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !1262, file: !3, line: 1381, column: 3)
!1265 = !DILocation(line: 1381, column: 3, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !1267, file: !3, line: 1381, column: 3)
!1267 = distinct !DILexicalBlock(scope: !1264, file: !3, line: 1381, column: 3)
!1268 = !DILocation(line: 1381, column: 3, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1266, file: !3, line: 1381, column: 3)
!1270 = !DILocation(line: 1381, column: 3, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !1266, file: !3, line: 1381, column: 3)
!1272 = !DILocation(line: 1381, column: 3, scope: !1267)
!1273 = !DILocation(line: 1381, column: 3, scope: !1256)
!1274 = !DILocation(line: 1381, column: 3, scope: !1253)
!1275 = !DILocation(line: 1381, column: 3, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !1250, file: !3, line: 1381, column: 3)
!1277 = !DILocation(line: 1381, column: 3, scope: !1278)
!1278 = distinct !DILexicalBlock(scope: !1246, file: !3, line: 1381, column: 3)
!1279 = !DILocation(line: 1381, column: 3, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1278, file: !3, line: 1381, column: 3)
!1281 = !DILocation(line: 1381, column: 3, scope: !1247)
!1282 = distinct !{!1282, !1283, !1283}
!1283 = !DILocation(line: 1381, column: 3, scope: !1248)
!1284 = !DILabel(scope: !1204, name: "doneBlack2da", file: !3, line: 1381)
!1285 = !DILocation(line: 1381, column: 3, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1202, file: !3, line: 1381, column: 3)
!1287 = !DILocation(line: 1381, column: 3, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1289, file: !3, line: 1381, column: 3)
!1289 = distinct !DILexicalBlock(scope: !1290, file: !3, line: 1381, column: 3)
!1290 = distinct !DILexicalBlock(scope: !1286, file: !3, line: 1381, column: 3)
!1291 = !DILocation(line: 1381, column: 3, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1288, file: !3, line: 1381, column: 3)
!1293 = !DILocation(line: 1381, column: 3, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1295, file: !3, line: 1381, column: 3)
!1295 = distinct !DILexicalBlock(scope: !1292, file: !3, line: 1381, column: 3)
!1296 = !DILocation(line: 1381, column: 3, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1298, file: !3, line: 1381, column: 3)
!1298 = distinct !DILexicalBlock(scope: !1294, file: !3, line: 1381, column: 3)
!1299 = !DILocation(line: 1381, column: 3, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1301, file: !3, line: 1381, column: 3)
!1301 = distinct !DILexicalBlock(scope: !1297, file: !3, line: 1381, column: 3)
!1302 = !DILocation(line: 1381, column: 3, scope: !1301)
!1303 = !DILocation(line: 1381, column: 3, scope: !1304)
!1304 = distinct !DILexicalBlock(scope: !1297, file: !3, line: 1381, column: 3)
!1305 = !DILocation(line: 1381, column: 3, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !1304, file: !3, line: 1381, column: 3)
!1307 = !DILocation(line: 1381, column: 3, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1309, file: !3, line: 1381, column: 3)
!1309 = distinct !DILexicalBlock(scope: !1306, file: !3, line: 1381, column: 3)
!1310 = !DILocation(line: 1381, column: 3, scope: !1311)
!1311 = distinct !DILexicalBlock(scope: !1308, file: !3, line: 1381, column: 3)
!1312 = !DILocation(line: 1381, column: 3, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1308, file: !3, line: 1381, column: 3)
!1314 = !DILocation(line: 1381, column: 3, scope: !1309)
!1315 = !DILocation(line: 1381, column: 3, scope: !1298)
!1316 = !DILocation(line: 1381, column: 3, scope: !1295)
!1317 = !DILocation(line: 1381, column: 3, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !1292, file: !3, line: 1381, column: 3)
!1319 = !DILocation(line: 1381, column: 3, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1288, file: !3, line: 1381, column: 3)
!1321 = !DILocation(line: 1381, column: 3, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1320, file: !3, line: 1381, column: 3)
!1323 = !DILocation(line: 1381, column: 3, scope: !1289)
!1324 = distinct !{!1324, !1325, !1325}
!1325 = !DILocation(line: 1381, column: 3, scope: !1290)
!1326 = !DILabel(scope: !1286, name: "doneWhite2db", file: !3, line: 1381)
!1327 = !DILocation(line: 1381, column: 3, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1329, file: !3, line: 1381, column: 3)
!1329 = distinct !DILexicalBlock(scope: !1330, file: !3, line: 1381, column: 3)
!1330 = distinct !DILexicalBlock(scope: !1286, file: !3, line: 1381, column: 3)
!1331 = !DILocation(line: 1381, column: 3, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1328, file: !3, line: 1381, column: 3)
!1333 = !DILocation(line: 1381, column: 3, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1335, file: !3, line: 1381, column: 3)
!1335 = distinct !DILexicalBlock(scope: !1332, file: !3, line: 1381, column: 3)
!1336 = !DILocation(line: 1381, column: 3, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1338, file: !3, line: 1381, column: 3)
!1338 = distinct !DILexicalBlock(scope: !1334, file: !3, line: 1381, column: 3)
!1339 = !DILocation(line: 1381, column: 3, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1341, file: !3, line: 1381, column: 3)
!1341 = distinct !DILexicalBlock(scope: !1337, file: !3, line: 1381, column: 3)
!1342 = !DILocation(line: 1381, column: 3, scope: !1341)
!1343 = !DILocation(line: 1381, column: 3, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !1337, file: !3, line: 1381, column: 3)
!1345 = !DILocation(line: 1381, column: 3, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1344, file: !3, line: 1381, column: 3)
!1347 = !DILocation(line: 1381, column: 3, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !1349, file: !3, line: 1381, column: 3)
!1349 = distinct !DILexicalBlock(scope: !1346, file: !3, line: 1381, column: 3)
!1350 = !DILocation(line: 1381, column: 3, scope: !1351)
!1351 = distinct !DILexicalBlock(scope: !1348, file: !3, line: 1381, column: 3)
!1352 = !DILocation(line: 1381, column: 3, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1348, file: !3, line: 1381, column: 3)
!1354 = !DILocation(line: 1381, column: 3, scope: !1349)
!1355 = !DILocation(line: 1381, column: 3, scope: !1338)
!1356 = !DILocation(line: 1381, column: 3, scope: !1335)
!1357 = !DILocation(line: 1381, column: 3, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1332, file: !3, line: 1381, column: 3)
!1359 = !DILocation(line: 1381, column: 3, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !1328, file: !3, line: 1381, column: 3)
!1361 = !DILocation(line: 1381, column: 3, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1360, file: !3, line: 1381, column: 3)
!1363 = !DILocation(line: 1381, column: 3, scope: !1329)
!1364 = distinct !{!1364, !1365, !1365}
!1365 = !DILocation(line: 1381, column: 3, scope: !1330)
!1366 = !DILabel(scope: !1286, name: "doneBlack2db", file: !3, line: 1381)
!1367 = !DILocation(line: 1381, column: 3, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1369, file: !3, line: 1381, column: 3)
!1369 = distinct !DILexicalBlock(scope: !1192, file: !3, line: 1381, column: 3)
!1370 = !DILocation(line: 0, scope: !1368)
!1371 = !DILocation(line: 1381, column: 3, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1368, file: !3, line: 1381, column: 3)
!1373 = distinct !{!1373, !1367, !1367, !785}
!1374 = !DILocation(line: 1381, column: 3, scope: !1369)
!1375 = !DILocation(line: 1381, column: 3, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1377, file: !3, line: 1381, column: 3)
!1377 = distinct !DILexicalBlock(scope: !1192, file: !3, line: 1381, column: 3)
!1378 = !DILocation(line: 0, scope: !1376)
!1379 = !DILocation(line: 1381, column: 3, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !1376, file: !3, line: 1381, column: 3)
!1381 = distinct !{!1381, !1375, !1375, !785}
!1382 = !DILocation(line: 1381, column: 3, scope: !1377)
!1383 = !DILocation(line: 1381, column: 3, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !1192, file: !3, line: 1381, column: 3)
!1385 = !DILocation(line: 1381, column: 3, scope: !1386)
!1386 = distinct !DILexicalBlock(scope: !1387, file: !3, line: 1381, column: 3)
!1387 = distinct !DILexicalBlock(scope: !1192, file: !3, line: 1381, column: 3)
!1388 = !DILocation(line: 0, scope: !1386)
!1389 = !DILocation(line: 1381, column: 3, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1386, file: !3, line: 1381, column: 3)
!1391 = distinct !{!1391, !1385, !1385, !785}
!1392 = !DILocation(line: 1381, column: 3, scope: !1387)
!1393 = !DILocation(line: 1381, column: 3, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !1192, file: !3, line: 1381, column: 3)
!1395 = !DILocation(line: 1381, column: 3, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1397, file: !3, line: 1381, column: 3)
!1397 = distinct !DILexicalBlock(scope: !1192, file: !3, line: 1381, column: 3)
!1398 = !DILocation(line: 0, scope: !1396)
!1399 = !DILocation(line: 1381, column: 3, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !1396, file: !3, line: 1381, column: 3)
!1401 = distinct !{!1401, !1395, !1395, !785}
!1402 = !DILocation(line: 1381, column: 3, scope: !1397)
!1403 = !DILocation(line: 1381, column: 3, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !1192, file: !3, line: 1381, column: 3)
!1405 = !DILocation(line: 1381, column: 3, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1407, file: !3, line: 1381, column: 3)
!1407 = distinct !DILexicalBlock(scope: !1192, file: !3, line: 1381, column: 3)
!1408 = !DILocation(line: 1381, column: 3, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1410, file: !3, line: 1381, column: 3)
!1410 = distinct !DILexicalBlock(scope: !1406, file: !3, line: 1381, column: 3)
!1411 = !DILocation(line: 1381, column: 3, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1413, file: !3, line: 1381, column: 3)
!1413 = distinct !DILexicalBlock(scope: !1409, file: !3, line: 1381, column: 3)
!1414 = !DILocation(line: 1381, column: 3, scope: !1413)
!1415 = !DILocation(line: 1381, column: 3, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1409, file: !3, line: 1381, column: 3)
!1417 = !DILocation(line: 1381, column: 3, scope: !1410)
!1418 = !DILocation(line: 1381, column: 3, scope: !1407)
!1419 = !DILocation(line: 1381, column: 3, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1192, file: !3, line: 1381, column: 3)
!1421 = !DILabel(scope: !1192, name: "badMain2d", file: !3, line: 1381)
!1422 = !DILabel(scope: !1192, name: "badBlack2d", file: !3, line: 1381)
!1423 = !DILabel(scope: !1192, name: "badWhite2d", file: !3, line: 1381)
!1424 = !DILabel(scope: !1192, name: "eof2d", file: !3, line: 1381)
!1425 = !DILocation(line: 1381, column: 3, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1427, file: !3, line: 1381, column: 3)
!1427 = distinct !DILexicalBlock(scope: !1192, file: !3, line: 1381, column: 3)
!1428 = !DILocation(line: 1381, column: 3, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1426, file: !3, line: 1381, column: 3)
!1430 = !DILocation(line: 1381, column: 3, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1427, file: !3, line: 1381, column: 3)
!1432 = !DILocation(line: 1381, column: 3, scope: !1433)
!1433 = distinct !DILexicalBlock(scope: !1431, file: !3, line: 1381, column: 3)
!1434 = !DILocation(line: 0, scope: !1433)
!1435 = distinct !{!1435, !1432, !1432, !785}
!1436 = !DILocation(line: 1381, column: 3, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !1433, file: !3, line: 1381, column: 3)
!1438 = !DILocation(line: 1381, column: 3, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1440, file: !3, line: 1381, column: 3)
!1440 = distinct !DILexicalBlock(scope: !1437, file: !3, line: 1381, column: 3)
!1441 = !DILocation(line: 1381, column: 3, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !1440, file: !3, line: 1381, column: 3)
!1443 = !DILocation(line: 1381, column: 3, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1442, file: !3, line: 1381, column: 3)
!1445 = !DILocation(line: 1381, column: 3, scope: !1440)
!1446 = !DILocation(line: 1381, column: 3, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !1440, file: !3, line: 1381, column: 3)
!1448 = !DILocation(line: 1381, column: 3, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1437, file: !3, line: 1381, column: 3)
!1450 = !DILocation(line: 1381, column: 3, scope: !1451)
!1451 = distinct !DILexicalBlock(scope: !1449, file: !3, line: 1381, column: 3)
!1452 = !DILocation(line: 1381, column: 3, scope: !1453)
!1453 = distinct !DILexicalBlock(scope: !1451, file: !3, line: 1381, column: 3)
!1454 = !DILocation(line: 1381, column: 3, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !1451, file: !3, line: 1381, column: 3)
!1456 = !DILocation(line: 1381, column: 3, scope: !1427)
!1457 = distinct !{!1457, !1169, !1169, !785}
!1458 = !DILocation(line: 1381, column: 3, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1170, file: !3, line: 1381, column: 3)
!1460 = !DILocation(line: 1381, column: 3, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !1462, file: !3, line: 1381, column: 3)
!1462 = distinct !DILexicalBlock(scope: !1459, file: !3, line: 1381, column: 3)
!1463 = !DILocation(line: 1381, column: 3, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !1461, file: !3, line: 1381, column: 3)
!1465 = !DILocation(line: 1381, column: 3, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1467, file: !3, line: 1381, column: 3)
!1467 = distinct !DILexicalBlock(scope: !1464, file: !3, line: 1381, column: 3)
!1468 = !DILocation(line: 1381, column: 3, scope: !1469)
!1469 = distinct !DILexicalBlock(scope: !1470, file: !3, line: 1381, column: 3)
!1470 = distinct !DILexicalBlock(scope: !1466, file: !3, line: 1381, column: 3)
!1471 = !DILocation(line: 1381, column: 3, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !1473, file: !3, line: 1381, column: 3)
!1473 = distinct !DILexicalBlock(scope: !1469, file: !3, line: 1381, column: 3)
!1474 = !DILocation(line: 1381, column: 3, scope: !1473)
!1475 = !DILocation(line: 1381, column: 3, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !1469, file: !3, line: 1381, column: 3)
!1477 = !DILocation(line: 1381, column: 3, scope: !1470)
!1478 = !DILocation(line: 1381, column: 3, scope: !1467)
!1479 = !DILocation(line: 1381, column: 3, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !1464, file: !3, line: 1381, column: 3)
!1481 = !DILocation(line: 1381, column: 3, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !1464, file: !3, line: 1381, column: 3)
!1483 = !DILocation(line: 1381, column: 3, scope: !1462)
!1484 = !DILocation(line: 1381, column: 3, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !1462, file: !3, line: 1381, column: 3)
!1486 = !DILabel(scope: !1170, name: "eol2d", file: !3, line: 1381)
!1487 = !DILocation(line: 1381, column: 3, scope: !1488)
!1488 = distinct !DILexicalBlock(scope: !1489, file: !3, line: 1381, column: 3)
!1489 = distinct !DILexicalBlock(scope: !1170, file: !3, line: 1381, column: 3)
!1490 = !DILocation(line: 1381, column: 3, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !1488, file: !3, line: 1381, column: 3)
!1492 = !DILocation(line: 1381, column: 3, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !1489, file: !3, line: 1381, column: 3)
!1494 = !DILocation(line: 1381, column: 3, scope: !1495)
!1495 = distinct !DILexicalBlock(scope: !1493, file: !3, line: 1381, column: 3)
!1496 = !DILocation(line: 0, scope: !1495)
!1497 = distinct !{!1497, !1494, !1494, !785}
!1498 = !DILocation(line: 1381, column: 3, scope: !1499)
!1499 = distinct !DILexicalBlock(scope: !1495, file: !3, line: 1381, column: 3)
!1500 = !DILocation(line: 1381, column: 3, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1502, file: !3, line: 1381, column: 3)
!1502 = distinct !DILexicalBlock(scope: !1499, file: !3, line: 1381, column: 3)
!1503 = !DILocation(line: 1381, column: 3, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1502, file: !3, line: 1381, column: 3)
!1505 = !DILocation(line: 1381, column: 3, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1504, file: !3, line: 1381, column: 3)
!1507 = !DILocation(line: 1381, column: 3, scope: !1502)
!1508 = !DILocation(line: 1381, column: 3, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1502, file: !3, line: 1381, column: 3)
!1510 = !DILocation(line: 1381, column: 3, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1499, file: !3, line: 1381, column: 3)
!1512 = !DILocation(line: 1381, column: 3, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1511, file: !3, line: 1381, column: 3)
!1514 = !DILocation(line: 1381, column: 3, scope: !1515)
!1515 = distinct !DILexicalBlock(scope: !1513, file: !3, line: 1381, column: 3)
!1516 = !DILocation(line: 1381, column: 3, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !1513, file: !3, line: 1381, column: 3)
!1518 = !DILocation(line: 1381, column: 3, scope: !1489)
!1519 = !DILocation(line: 1382, column: 5, scope: !1156)
!1520 = !DILocation(line: 1382, column: 9, scope: !1156)
!1521 = !DILocation(line: 1382, column: 15, scope: !1156)
!1522 = !DILocation(line: 1382, column: 20, scope: !1156)
!1523 = !DILocation(line: 1382, column: 29, scope: !1156)
!1524 = !DILocation(line: 1382, column: 33, scope: !1156)
!1525 = !DILocation(line: 1382, column: 3, scope: !1156)
!1526 = !DILocation(line: 1383, column: 3, scope: !1156)
!1527 = !DILocation(line: 1383, column: 3, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !1156, file: !3, line: 1383, column: 3)
!1529 = !DILocalVariable(name: "x", scope: !1530, file: !3, line: 1384, type: !142)
!1530 = distinct !DILexicalBlock(scope: !1156, file: !3, line: 1384, column: 3)
!1531 = !DILocation(line: 1384, column: 3, scope: !1530)
!1532 = !DILocation(line: 1385, column: 10, scope: !1156)
!1533 = !DILocation(line: 1385, column: 14, scope: !1156)
!1534 = !DILocation(line: 1385, column: 16, scope: !1156)
!1535 = !DILocation(line: 1385, column: 7, scope: !1156)
!1536 = !DILocation(line: 1386, column: 10, scope: !1156)
!1537 = !DILocation(line: 1386, column: 14, scope: !1156)
!1538 = !DILocation(line: 1386, column: 16, scope: !1156)
!1539 = !DILocation(line: 1386, column: 7, scope: !1156)
!1540 = !DILocation(line: 1387, column: 7, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1156, file: !3, line: 1387, column: 7)
!1542 = !DILocation(line: 1387, column: 11, scope: !1541)
!1543 = !DILocation(line: 1388, column: 4, scope: !1541)
!1544 = !DILocation(line: 1388, column: 9, scope: !1541)
!1545 = !DILocation(line: 1388, column: 16, scope: !1541)
!1546 = !DILocation(line: 1389, column: 3, scope: !1156)
!1547 = distinct !{!1547, !1151, !1548, !785}
!1548 = !DILocation(line: 1394, column: 2, scope: !660)
!1549 = !DILabel(scope: !1156, name: "EOFG4", file: !3, line: 1390)
!1550 = !DILocation(line: 1390, column: 2, scope: !1156)
!1551 = !DILocation(line: 1391, column: 5, scope: !1156)
!1552 = !DILocation(line: 1391, column: 9, scope: !1156)
!1553 = !DILocation(line: 1391, column: 15, scope: !1156)
!1554 = !DILocation(line: 1391, column: 20, scope: !1156)
!1555 = !DILocation(line: 1391, column: 29, scope: !1156)
!1556 = !DILocation(line: 1391, column: 33, scope: !1156)
!1557 = !DILocation(line: 1391, column: 3, scope: !1156)
!1558 = !DILocation(line: 1392, column: 3, scope: !1156)
!1559 = !DILocation(line: 1392, column: 3, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1156, file: !3, line: 1392, column: 3)
!1561 = !DILocation(line: 1393, column: 3, scope: !1156)
!1562 = !DILocation(line: 1395, column: 2, scope: !660)
!1563 = !DILocation(line: 1395, column: 2, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !660, file: !3, line: 1395, column: 2)
!1565 = !DILocation(line: 1396, column: 2, scope: !660)
!1566 = !DILocation(line: 1397, column: 1, scope: !660)
!1567 = distinct !DISubprogram(name: "Fax4Encode", scope: !3, file: !3, line: 1404, type: !217, scopeLine: 1405, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !438)
!1568 = !DILocalVariable(name: "tif", arg: 1, scope: !1567, file: !3, line: 1404, type: !69)
!1569 = !DILocation(line: 1404, column: 18, scope: !1567)
!1570 = !DILocalVariable(name: "bp", arg: 2, scope: !1567, file: !3, line: 1404, type: !42)
!1571 = !DILocation(line: 1404, column: 32, scope: !1567)
!1572 = !DILocalVariable(name: "cc", arg: 3, scope: !1567, file: !3, line: 1404, type: !199)
!1573 = !DILocation(line: 1404, column: 44, scope: !1567)
!1574 = !DILocalVariable(name: "s", arg: 4, scope: !1567, file: !3, line: 1404, type: !210)
!1575 = !DILocation(line: 1404, column: 58, scope: !1567)
!1576 = !DILocalVariable(name: "sp", scope: !1567, file: !3, line: 1406, type: !407)
!1577 = !DILocation(line: 1406, column: 19, scope: !1567)
!1578 = !DILocation(line: 1406, column: 24, scope: !1567)
!1579 = !DILocation(line: 1408, column: 9, scope: !1567)
!1580 = !DILocation(line: 1409, column: 2, scope: !1567)
!1581 = !DILocation(line: 1409, column: 15, scope: !1567)
!1582 = !DILocation(line: 1409, column: 9, scope: !1567)
!1583 = !DILocation(line: 1409, column: 18, scope: !1567)
!1584 = !DILocation(line: 1410, column: 24, scope: !1585)
!1585 = distinct !DILexicalBlock(scope: !1586, file: !3, line: 1410, column: 7)
!1586 = distinct !DILexicalBlock(scope: !1567, file: !3, line: 1409, column: 23)
!1587 = !DILocation(line: 1410, column: 29, scope: !1585)
!1588 = !DILocation(line: 1410, column: 33, scope: !1585)
!1589 = !DILocation(line: 1410, column: 37, scope: !1585)
!1590 = !DILocation(line: 1410, column: 46, scope: !1585)
!1591 = !DILocation(line: 1410, column: 50, scope: !1585)
!1592 = !DILocation(line: 1410, column: 52, scope: !1585)
!1593 = !DILocation(line: 1410, column: 8, scope: !1585)
!1594 = !DILocation(line: 1410, column: 7, scope: !1585)
!1595 = !DILocation(line: 1411, column: 4, scope: !1585)
!1596 = !DILocation(line: 1412, column: 15, scope: !1586)
!1597 = !DILocation(line: 1412, column: 19, scope: !1586)
!1598 = !DILocation(line: 1412, column: 28, scope: !1586)
!1599 = !DILocation(line: 1412, column: 32, scope: !1586)
!1600 = !DILocation(line: 1412, column: 36, scope: !1586)
!1601 = !DILocation(line: 1412, column: 38, scope: !1586)
!1602 = !DILocation(line: 1412, column: 3, scope: !1586)
!1603 = !DILocation(line: 1413, column: 9, scope: !1586)
!1604 = !DILocation(line: 1413, column: 13, scope: !1586)
!1605 = !DILocation(line: 1413, column: 15, scope: !1586)
!1606 = !DILocation(line: 1413, column: 6, scope: !1586)
!1607 = !DILocation(line: 1414, column: 9, scope: !1586)
!1608 = !DILocation(line: 1414, column: 13, scope: !1586)
!1609 = !DILocation(line: 1414, column: 15, scope: !1586)
!1610 = !DILocation(line: 1414, column: 6, scope: !1586)
!1611 = !DILocation(line: 1415, column: 7, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1586, file: !3, line: 1415, column: 7)
!1613 = !DILocation(line: 1415, column: 10, scope: !1612)
!1614 = !DILocation(line: 1416, column: 4, scope: !1612)
!1615 = !DILocation(line: 1416, column: 9, scope: !1612)
!1616 = !DILocation(line: 1416, column: 16, scope: !1612)
!1617 = distinct !{!1617, !1580, !1618, !785}
!1618 = !DILocation(line: 1417, column: 2, scope: !1567)
!1619 = !DILocation(line: 1418, column: 2, scope: !1567)
!1620 = !DILocation(line: 1419, column: 1, scope: !1567)
!1621 = distinct !DISubprogram(name: "Fax4PostEncode", scope: !3, file: !3, line: 1422, type: !203, scopeLine: 1423, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !438)
!1622 = !DILocalVariable(name: "tif", arg: 1, scope: !1621, file: !3, line: 1422, type: !69)
!1623 = !DILocation(line: 1422, column: 22, scope: !1621)
!1624 = !DILocalVariable(name: "sp", scope: !1621, file: !3, line: 1424, type: !407)
!1625 = !DILocation(line: 1424, column: 19, scope: !1621)
!1626 = !DILocation(line: 1424, column: 24, scope: !1621)
!1627 = !DILocation(line: 1427, column: 14, scope: !1621)
!1628 = !DILocation(line: 1427, column: 2, scope: !1621)
!1629 = !DILocation(line: 1428, column: 14, scope: !1621)
!1630 = !DILocation(line: 1428, column: 2, scope: !1621)
!1631 = !DILocation(line: 1429, column: 6, scope: !1632)
!1632 = distinct !DILexicalBlock(scope: !1621, file: !3, line: 1429, column: 6)
!1633 = !DILocation(line: 1429, column: 10, scope: !1632)
!1634 = !DILocation(line: 1429, column: 14, scope: !1632)
!1635 = !DILocation(line: 1430, column: 3, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !1637, file: !3, line: 1430, column: 3)
!1637 = distinct !DILexicalBlock(scope: !1632, file: !3, line: 1430, column: 3)
!1638 = !DILocation(line: 1430, column: 3, scope: !1637)
!1639 = !DILocation(line: 1431, column: 2, scope: !1621)
!1640 = distinct !DISubprogram(name: "TIFFInitCCITTRLE", scope: !3, file: !3, line: 1510, type: !945, scopeLine: 1511, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !438)
!1641 = !DILocalVariable(name: "tif", arg: 1, scope: !1640, file: !3, line: 1510, type: !69)
!1642 = !DILocation(line: 1510, column: 24, scope: !1640)
!1643 = !DILocalVariable(name: "scheme", arg: 2, scope: !1640, file: !3, line: 1510, type: !37)
!1644 = !DILocation(line: 1510, column: 33, scope: !1640)
!1645 = !DILocation(line: 1512, column: 20, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !1640, file: !3, line: 1512, column: 6)
!1647 = !DILocation(line: 1512, column: 6, scope: !1646)
!1648 = !DILocation(line: 1513, column: 3, scope: !1649)
!1649 = distinct !DILexicalBlock(scope: !1646, file: !3, line: 1512, column: 26)
!1650 = !DILocation(line: 1513, column: 8, scope: !1649)
!1651 = !DILocation(line: 1513, column: 22, scope: !1649)
!1652 = !DILocation(line: 1514, column: 3, scope: !1649)
!1653 = !DILocation(line: 1514, column: 8, scope: !1649)
!1654 = !DILocation(line: 1514, column: 24, scope: !1649)
!1655 = !DILocation(line: 1515, column: 3, scope: !1649)
!1656 = !DILocation(line: 1515, column: 8, scope: !1649)
!1657 = !DILocation(line: 1515, column: 23, scope: !1649)
!1658 = !DILocation(line: 1519, column: 23, scope: !1649)
!1659 = !DILocation(line: 1519, column: 10, scope: !1649)
!1660 = !DILocation(line: 1519, column: 3, scope: !1649)
!1661 = !DILocation(line: 1522, column: 3, scope: !1646)
!1662 = !DILocation(line: 1523, column: 1, scope: !1640)
!1663 = !DILocalVariable(name: "tif", arg: 1, scope: !664, file: !3, line: 1464, type: !69)
!1664 = !DILocation(line: 1464, column: 21, scope: !664)
!1665 = !DILocalVariable(name: "buf", arg: 2, scope: !664, file: !3, line: 1464, type: !42)
!1666 = !DILocation(line: 1464, column: 35, scope: !664)
!1667 = !DILocalVariable(name: "occ", arg: 3, scope: !664, file: !3, line: 1464, type: !199)
!1668 = !DILocation(line: 1464, column: 48, scope: !664)
!1669 = !DILocalVariable(name: "s", arg: 4, scope: !664, file: !3, line: 1464, type: !210)
!1670 = !DILocation(line: 1464, column: 63, scope: !664)
!1671 = !DILocalVariable(name: "sp", scope: !664, file: !3, line: 1466, type: !386)
!1672 = !DILocation(line: 1466, column: 2, scope: !664)
!1673 = !DILocalVariable(name: "a0", scope: !664, file: !3, line: 1466, type: !37)
!1674 = !DILocalVariable(name: "lastx", scope: !664, file: !3, line: 1466, type: !37)
!1675 = !DILocalVariable(name: "BitAcc", scope: !664, file: !3, line: 1466, type: !53)
!1676 = !DILocalVariable(name: "BitsAvail", scope: !664, file: !3, line: 1466, type: !37)
!1677 = !DILocalVariable(name: "RunLength", scope: !664, file: !3, line: 1466, type: !37)
!1678 = !DILocalVariable(name: "cp", scope: !664, file: !3, line: 1466, type: !38)
!1679 = !DILocalVariable(name: "ep", scope: !664, file: !3, line: 1466, type: !38)
!1680 = !DILocalVariable(name: "pa", scope: !664, file: !3, line: 1466, type: !142)
!1681 = !DILocalVariable(name: "thisrun", scope: !664, file: !3, line: 1466, type: !142)
!1682 = !DILocalVariable(name: "EOLcnt", scope: !664, file: !3, line: 1466, type: !37)
!1683 = !DILocalVariable(name: "bitmap", scope: !664, file: !3, line: 1466, type: !392)
!1684 = !DILocalVariable(name: "TabEnt", scope: !664, file: !3, line: 1466, type: !1137)
!1685 = !DILocalVariable(name: "mode", scope: !664, file: !3, line: 1467, type: !37)
!1686 = !DILocation(line: 1467, column: 6, scope: !664)
!1687 = !DILocation(line: 1467, column: 13, scope: !664)
!1688 = !DILocation(line: 1467, column: 17, scope: !664)
!1689 = !DILocation(line: 1467, column: 19, scope: !664)
!1690 = !DILocation(line: 1469, column: 9, scope: !664)
!1691 = !DILocation(line: 1470, column: 2, scope: !664)
!1692 = !DILocation(line: 1470, column: 2, scope: !1693)
!1693 = distinct !DILexicalBlock(scope: !664, file: !3, line: 1470, column: 2)
!1694 = !DILocation(line: 1471, column: 12, scope: !664)
!1695 = !DILocation(line: 1471, column: 16, scope: !664)
!1696 = !DILocation(line: 1471, column: 10, scope: !664)
!1697 = !DILocation(line: 1472, column: 2, scope: !664)
!1698 = !DILocation(line: 1472, column: 15, scope: !664)
!1699 = !DILocation(line: 1472, column: 9, scope: !664)
!1700 = !DILocation(line: 1472, column: 19, scope: !664)
!1701 = !DILocation(line: 1473, column: 6, scope: !1702)
!1702 = distinct !DILexicalBlock(scope: !664, file: !3, line: 1472, column: 24)
!1703 = !DILocation(line: 1474, column: 13, scope: !1702)
!1704 = !DILocation(line: 1475, column: 8, scope: !1702)
!1705 = !DILocation(line: 1475, column: 6, scope: !1702)
!1706 = !DILocation(line: 1481, column: 3, scope: !1702)
!1707 = !DILocation(line: 1481, column: 3, scope: !1708)
!1708 = distinct !DILexicalBlock(scope: !1702, file: !3, line: 1481, column: 3)
!1709 = !DILocation(line: 1481, column: 3, scope: !1710)
!1710 = distinct !DILexicalBlock(scope: !1711, file: !3, line: 1481, column: 3)
!1711 = distinct !DILexicalBlock(scope: !1712, file: !3, line: 1481, column: 3)
!1712 = distinct !DILexicalBlock(scope: !1708, file: !3, line: 1481, column: 3)
!1713 = !DILocation(line: 1481, column: 3, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !1715, file: !3, line: 1481, column: 3)
!1715 = distinct !DILexicalBlock(scope: !1716, file: !3, line: 1481, column: 3)
!1716 = distinct !DILexicalBlock(scope: !1710, file: !3, line: 1481, column: 3)
!1717 = !DILocation(line: 1481, column: 3, scope: !1718)
!1718 = distinct !DILexicalBlock(scope: !1714, file: !3, line: 1481, column: 3)
!1719 = !DILocation(line: 1481, column: 3, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1721, file: !3, line: 1481, column: 3)
!1721 = distinct !DILexicalBlock(scope: !1718, file: !3, line: 1481, column: 3)
!1722 = !DILocation(line: 1481, column: 3, scope: !1723)
!1723 = distinct !DILexicalBlock(scope: !1724, file: !3, line: 1481, column: 3)
!1724 = distinct !DILexicalBlock(scope: !1720, file: !3, line: 1481, column: 3)
!1725 = !DILocation(line: 1481, column: 3, scope: !1726)
!1726 = distinct !DILexicalBlock(scope: !1727, file: !3, line: 1481, column: 3)
!1727 = distinct !DILexicalBlock(scope: !1723, file: !3, line: 1481, column: 3)
!1728 = !DILocation(line: 1481, column: 3, scope: !1727)
!1729 = !DILocation(line: 1481, column: 3, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1723, file: !3, line: 1481, column: 3)
!1731 = !DILocation(line: 1481, column: 3, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !1730, file: !3, line: 1481, column: 3)
!1733 = !DILocation(line: 1481, column: 3, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !1735, file: !3, line: 1481, column: 3)
!1735 = distinct !DILexicalBlock(scope: !1732, file: !3, line: 1481, column: 3)
!1736 = !DILocation(line: 1481, column: 3, scope: !1737)
!1737 = distinct !DILexicalBlock(scope: !1734, file: !3, line: 1481, column: 3)
!1738 = !DILocation(line: 1481, column: 3, scope: !1739)
!1739 = distinct !DILexicalBlock(scope: !1734, file: !3, line: 1481, column: 3)
!1740 = !DILocation(line: 1481, column: 3, scope: !1735)
!1741 = !DILocation(line: 1481, column: 3, scope: !1724)
!1742 = !DILocation(line: 1481, column: 3, scope: !1721)
!1743 = !DILocation(line: 1481, column: 3, scope: !1744)
!1744 = distinct !DILexicalBlock(scope: !1718, file: !3, line: 1481, column: 3)
!1745 = !DILocation(line: 1481, column: 3, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !1714, file: !3, line: 1481, column: 3)
!1747 = !DILocation(line: 1481, column: 3, scope: !1748)
!1748 = distinct !DILexicalBlock(scope: !1746, file: !3, line: 1481, column: 3)
!1749 = !DILocation(line: 1481, column: 3, scope: !1715)
!1750 = distinct !{!1750, !1751, !1751}
!1751 = !DILocation(line: 1481, column: 3, scope: !1716)
!1752 = !DILabel(scope: !1710, name: "doneWhite1d", file: !3, line: 1481)
!1753 = !DILocation(line: 1481, column: 3, scope: !1754)
!1754 = distinct !DILexicalBlock(scope: !1710, file: !3, line: 1481, column: 3)
!1755 = !DILocation(line: 1481, column: 3, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1757, file: !3, line: 1481, column: 3)
!1757 = distinct !DILexicalBlock(scope: !1758, file: !3, line: 1481, column: 3)
!1758 = distinct !DILexicalBlock(scope: !1710, file: !3, line: 1481, column: 3)
!1759 = !DILocation(line: 1481, column: 3, scope: !1760)
!1760 = distinct !DILexicalBlock(scope: !1756, file: !3, line: 1481, column: 3)
!1761 = !DILocation(line: 1481, column: 3, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1763, file: !3, line: 1481, column: 3)
!1763 = distinct !DILexicalBlock(scope: !1760, file: !3, line: 1481, column: 3)
!1764 = !DILocation(line: 1481, column: 3, scope: !1765)
!1765 = distinct !DILexicalBlock(scope: !1766, file: !3, line: 1481, column: 3)
!1766 = distinct !DILexicalBlock(scope: !1762, file: !3, line: 1481, column: 3)
!1767 = !DILocation(line: 1481, column: 3, scope: !1768)
!1768 = distinct !DILexicalBlock(scope: !1769, file: !3, line: 1481, column: 3)
!1769 = distinct !DILexicalBlock(scope: !1765, file: !3, line: 1481, column: 3)
!1770 = !DILocation(line: 1481, column: 3, scope: !1769)
!1771 = !DILocation(line: 1481, column: 3, scope: !1772)
!1772 = distinct !DILexicalBlock(scope: !1765, file: !3, line: 1481, column: 3)
!1773 = !DILocation(line: 1481, column: 3, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !1772, file: !3, line: 1481, column: 3)
!1775 = !DILocation(line: 1481, column: 3, scope: !1776)
!1776 = distinct !DILexicalBlock(scope: !1777, file: !3, line: 1481, column: 3)
!1777 = distinct !DILexicalBlock(scope: !1774, file: !3, line: 1481, column: 3)
!1778 = !DILocation(line: 1481, column: 3, scope: !1779)
!1779 = distinct !DILexicalBlock(scope: !1776, file: !3, line: 1481, column: 3)
!1780 = !DILocation(line: 1481, column: 3, scope: !1781)
!1781 = distinct !DILexicalBlock(scope: !1776, file: !3, line: 1481, column: 3)
!1782 = !DILocation(line: 1481, column: 3, scope: !1777)
!1783 = !DILocation(line: 1481, column: 3, scope: !1766)
!1784 = !DILocation(line: 1481, column: 3, scope: !1763)
!1785 = !DILocation(line: 1481, column: 3, scope: !1786)
!1786 = distinct !DILexicalBlock(scope: !1760, file: !3, line: 1481, column: 3)
!1787 = !DILocation(line: 1481, column: 3, scope: !1788)
!1788 = distinct !DILexicalBlock(scope: !1756, file: !3, line: 1481, column: 3)
!1789 = !DILocation(line: 1481, column: 3, scope: !1790)
!1790 = distinct !DILexicalBlock(scope: !1788, file: !3, line: 1481, column: 3)
!1791 = !DILocation(line: 1481, column: 3, scope: !1757)
!1792 = distinct !{!1792, !1793, !1793}
!1793 = !DILocation(line: 1481, column: 3, scope: !1758)
!1794 = !DILabel(scope: !1710, name: "doneBlack1d", file: !3, line: 1481)
!1795 = !DILocation(line: 1481, column: 3, scope: !1796)
!1796 = distinct !DILexicalBlock(scope: !1710, file: !3, line: 1481, column: 3)
!1797 = !DILocation(line: 1481, column: 3, scope: !1711)
!1798 = distinct !{!1798, !1799, !1799}
!1799 = !DILocation(line: 1481, column: 3, scope: !1712)
!1800 = !DILabel(scope: !1708, name: "eof1d", file: !3, line: 1481)
!1801 = !DILocation(line: 1481, column: 3, scope: !1802)
!1802 = distinct !DILexicalBlock(scope: !1803, file: !3, line: 1481, column: 3)
!1803 = distinct !DILexicalBlock(scope: !1708, file: !3, line: 1481, column: 3)
!1804 = !DILocation(line: 1481, column: 3, scope: !1805)
!1805 = distinct !DILexicalBlock(scope: !1802, file: !3, line: 1481, column: 3)
!1806 = !DILocation(line: 1481, column: 3, scope: !1807)
!1807 = distinct !DILexicalBlock(scope: !1803, file: !3, line: 1481, column: 3)
!1808 = !DILocation(line: 1481, column: 3, scope: !1809)
!1809 = distinct !DILexicalBlock(scope: !1807, file: !3, line: 1481, column: 3)
!1810 = !DILocation(line: 0, scope: !1809)
!1811 = distinct !{!1811, !1808, !1808, !785}
!1812 = !DILocation(line: 1481, column: 3, scope: !1813)
!1813 = distinct !DILexicalBlock(scope: !1809, file: !3, line: 1481, column: 3)
!1814 = !DILocation(line: 1481, column: 3, scope: !1815)
!1815 = distinct !DILexicalBlock(scope: !1816, file: !3, line: 1481, column: 3)
!1816 = distinct !DILexicalBlock(scope: !1813, file: !3, line: 1481, column: 3)
!1817 = !DILocation(line: 1481, column: 3, scope: !1818)
!1818 = distinct !DILexicalBlock(scope: !1816, file: !3, line: 1481, column: 3)
!1819 = !DILocation(line: 1481, column: 3, scope: !1820)
!1820 = distinct !DILexicalBlock(scope: !1818, file: !3, line: 1481, column: 3)
!1821 = !DILocation(line: 1481, column: 3, scope: !1816)
!1822 = !DILocation(line: 1481, column: 3, scope: !1823)
!1823 = distinct !DILexicalBlock(scope: !1816, file: !3, line: 1481, column: 3)
!1824 = !DILocation(line: 1481, column: 3, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !1813, file: !3, line: 1481, column: 3)
!1826 = !DILocation(line: 1481, column: 3, scope: !1827)
!1827 = distinct !DILexicalBlock(scope: !1825, file: !3, line: 1481, column: 3)
!1828 = !DILocation(line: 1481, column: 3, scope: !1829)
!1829 = distinct !DILexicalBlock(scope: !1827, file: !3, line: 1481, column: 3)
!1830 = !DILocation(line: 1481, column: 3, scope: !1831)
!1831 = distinct !DILexicalBlock(scope: !1827, file: !3, line: 1481, column: 3)
!1832 = !DILocation(line: 1481, column: 3, scope: !1803)
!1833 = !DILabel(scope: !1708, name: "done1d", file: !3, line: 1481)
!1834 = !DILocation(line: 1481, column: 3, scope: !1835)
!1835 = distinct !DILexicalBlock(scope: !1836, file: !3, line: 1481, column: 3)
!1836 = distinct !DILexicalBlock(scope: !1708, file: !3, line: 1481, column: 3)
!1837 = !DILocation(line: 1481, column: 3, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !1835, file: !3, line: 1481, column: 3)
!1839 = !DILocation(line: 1481, column: 3, scope: !1840)
!1840 = distinct !DILexicalBlock(scope: !1836, file: !3, line: 1481, column: 3)
!1841 = !DILocation(line: 1481, column: 3, scope: !1842)
!1842 = distinct !DILexicalBlock(scope: !1840, file: !3, line: 1481, column: 3)
!1843 = !DILocation(line: 0, scope: !1842)
!1844 = distinct !{!1844, !1841, !1841, !785}
!1845 = !DILocation(line: 1481, column: 3, scope: !1846)
!1846 = distinct !DILexicalBlock(scope: !1842, file: !3, line: 1481, column: 3)
!1847 = !DILocation(line: 1481, column: 3, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !1849, file: !3, line: 1481, column: 3)
!1849 = distinct !DILexicalBlock(scope: !1846, file: !3, line: 1481, column: 3)
!1850 = !DILocation(line: 1481, column: 3, scope: !1851)
!1851 = distinct !DILexicalBlock(scope: !1849, file: !3, line: 1481, column: 3)
!1852 = !DILocation(line: 1481, column: 3, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !1851, file: !3, line: 1481, column: 3)
!1854 = !DILocation(line: 1481, column: 3, scope: !1849)
!1855 = !DILocation(line: 1481, column: 3, scope: !1856)
!1856 = distinct !DILexicalBlock(scope: !1849, file: !3, line: 1481, column: 3)
!1857 = !DILocation(line: 1481, column: 3, scope: !1858)
!1858 = distinct !DILexicalBlock(scope: !1846, file: !3, line: 1481, column: 3)
!1859 = !DILocation(line: 1481, column: 3, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !1858, file: !3, line: 1481, column: 3)
!1861 = !DILocation(line: 1481, column: 3, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1860, file: !3, line: 1481, column: 3)
!1863 = !DILocation(line: 1481, column: 3, scope: !1864)
!1864 = distinct !DILexicalBlock(scope: !1860, file: !3, line: 1481, column: 3)
!1865 = !DILocation(line: 1481, column: 3, scope: !1836)
!1866 = !DILocation(line: 1482, column: 5, scope: !1702)
!1867 = !DILocation(line: 1482, column: 9, scope: !1702)
!1868 = !DILocation(line: 1482, column: 15, scope: !1702)
!1869 = !DILocation(line: 1482, column: 20, scope: !1702)
!1870 = !DILocation(line: 1482, column: 29, scope: !1702)
!1871 = !DILocation(line: 1482, column: 33, scope: !1702)
!1872 = !DILocation(line: 1482, column: 3, scope: !1702)
!1873 = !DILocation(line: 1486, column: 7, scope: !1874)
!1874 = distinct !DILexicalBlock(scope: !1702, file: !3, line: 1486, column: 7)
!1875 = !DILocation(line: 1486, column: 12, scope: !1874)
!1876 = !DILocalVariable(name: "n", scope: !1877, file: !3, line: 1487, type: !37)
!1877 = distinct !DILexicalBlock(scope: !1874, file: !3, line: 1486, column: 33)
!1878 = !DILocation(line: 1487, column: 8, scope: !1877)
!1879 = !DILocation(line: 1487, column: 12, scope: !1877)
!1880 = !DILocation(line: 1487, column: 25, scope: !1877)
!1881 = !DILocation(line: 1487, column: 35, scope: !1877)
!1882 = !DILocation(line: 1487, column: 22, scope: !1877)
!1883 = !DILocation(line: 1488, column: 4, scope: !1877)
!1884 = !DILocation(line: 1488, column: 4, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !1877, file: !3, line: 1488, column: 4)
!1886 = !DILocation(line: 1489, column: 3, scope: !1877)
!1887 = !DILocation(line: 1489, column: 14, scope: !1888)
!1888 = distinct !DILexicalBlock(scope: !1874, file: !3, line: 1489, column: 14)
!1889 = !DILocation(line: 1489, column: 19, scope: !1888)
!1890 = !DILocalVariable(name: "n", scope: !1891, file: !3, line: 1490, type: !37)
!1891 = distinct !DILexicalBlock(scope: !1888, file: !3, line: 1489, column: 40)
!1892 = !DILocation(line: 1490, column: 8, scope: !1891)
!1893 = !DILocation(line: 1490, column: 12, scope: !1891)
!1894 = !DILocation(line: 1490, column: 25, scope: !1891)
!1895 = !DILocation(line: 1490, column: 35, scope: !1891)
!1896 = !DILocation(line: 1490, column: 22, scope: !1891)
!1897 = !DILocation(line: 1491, column: 4, scope: !1891)
!1898 = !DILocation(line: 1491, column: 4, scope: !1899)
!1899 = distinct !DILexicalBlock(scope: !1891, file: !3, line: 1491, column: 4)
!1900 = !DILocation(line: 1492, column: 8, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1891, file: !3, line: 1492, column: 8)
!1902 = !DILocation(line: 1492, column: 18, scope: !1901)
!1903 = !DILocation(line: 1492, column: 23, scope: !1901)
!1904 = !DILocation(line: 1492, column: 27, scope: !1901)
!1905 = !DILocation(line: 1493, column: 10, scope: !1901)
!1906 = !DILocation(line: 1493, column: 8, scope: !1901)
!1907 = !DILocation(line: 1494, column: 3, scope: !1891)
!1908 = !DILocation(line: 1495, column: 10, scope: !1702)
!1909 = !DILocation(line: 1495, column: 14, scope: !1702)
!1910 = !DILocation(line: 1495, column: 16, scope: !1702)
!1911 = !DILocation(line: 1495, column: 7, scope: !1702)
!1912 = !DILocation(line: 1496, column: 10, scope: !1702)
!1913 = !DILocation(line: 1496, column: 14, scope: !1702)
!1914 = !DILocation(line: 1496, column: 16, scope: !1702)
!1915 = !DILocation(line: 1496, column: 7, scope: !1702)
!1916 = !DILocation(line: 1497, column: 7, scope: !1917)
!1917 = distinct !DILexicalBlock(scope: !1702, file: !3, line: 1497, column: 7)
!1918 = !DILocation(line: 1497, column: 11, scope: !1917)
!1919 = !DILocation(line: 1498, column: 4, scope: !1917)
!1920 = !DILocation(line: 1498, column: 9, scope: !1917)
!1921 = !DILocation(line: 1498, column: 16, scope: !1917)
!1922 = !DILocation(line: 1499, column: 3, scope: !1702)
!1923 = distinct !{!1923, !1697, !1924, !785}
!1924 = !DILocation(line: 1504, column: 2, scope: !664)
!1925 = !DILabel(scope: !1702, name: "EOFRLE", file: !3, line: 1500)
!1926 = !DILocation(line: 1500, column: 2, scope: !1702)
!1927 = !DILocation(line: 1501, column: 5, scope: !1702)
!1928 = !DILocation(line: 1501, column: 9, scope: !1702)
!1929 = !DILocation(line: 1501, column: 15, scope: !1702)
!1930 = !DILocation(line: 1501, column: 20, scope: !1702)
!1931 = !DILocation(line: 1501, column: 29, scope: !1702)
!1932 = !DILocation(line: 1501, column: 33, scope: !1702)
!1933 = !DILocation(line: 1501, column: 3, scope: !1702)
!1934 = !DILocation(line: 1502, column: 3, scope: !1702)
!1935 = !DILocation(line: 1502, column: 3, scope: !1936)
!1936 = distinct !DILexicalBlock(scope: !1702, file: !3, line: 1502, column: 3)
!1937 = !DILocation(line: 1503, column: 3, scope: !1702)
!1938 = !DILocation(line: 1505, column: 2, scope: !664)
!1939 = !DILocation(line: 1505, column: 2, scope: !1940)
!1940 = distinct !DILexicalBlock(scope: !664, file: !3, line: 1505, column: 2)
!1941 = !DILocation(line: 1506, column: 2, scope: !664)
!1942 = !DILocation(line: 1507, column: 1, scope: !664)
!1943 = distinct !DISubprogram(name: "TIFFInitCCITTRLEW", scope: !3, file: !3, line: 1526, type: !945, scopeLine: 1527, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !438)
!1944 = !DILocalVariable(name: "tif", arg: 1, scope: !1943, file: !3, line: 1526, type: !69)
!1945 = !DILocation(line: 1526, column: 25, scope: !1943)
!1946 = !DILocalVariable(name: "scheme", arg: 2, scope: !1943, file: !3, line: 1526, type: !37)
!1947 = !DILocation(line: 1526, column: 34, scope: !1943)
!1948 = !DILocation(line: 1528, column: 20, scope: !1949)
!1949 = distinct !DILexicalBlock(scope: !1943, file: !3, line: 1528, column: 6)
!1950 = !DILocation(line: 1528, column: 6, scope: !1949)
!1951 = !DILocation(line: 1529, column: 3, scope: !1952)
!1952 = distinct !DILexicalBlock(scope: !1949, file: !3, line: 1528, column: 26)
!1953 = !DILocation(line: 1529, column: 8, scope: !1952)
!1954 = !DILocation(line: 1529, column: 22, scope: !1952)
!1955 = !DILocation(line: 1530, column: 3, scope: !1952)
!1956 = !DILocation(line: 1530, column: 8, scope: !1952)
!1957 = !DILocation(line: 1530, column: 24, scope: !1952)
!1958 = !DILocation(line: 1531, column: 3, scope: !1952)
!1959 = !DILocation(line: 1531, column: 8, scope: !1952)
!1960 = !DILocation(line: 1531, column: 23, scope: !1952)
!1961 = !DILocation(line: 1535, column: 23, scope: !1952)
!1962 = !DILocation(line: 1535, column: 10, scope: !1952)
!1963 = !DILocation(line: 1535, column: 3, scope: !1952)
!1964 = !DILocation(line: 1538, column: 3, scope: !1949)
!1965 = !DILocation(line: 1539, column: 1, scope: !1943)
!1966 = distinct !DISubprogram(name: "Fax3VGetField", scope: !3, file: !3, line: 1181, type: !67, scopeLine: 1182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !438)
!1967 = !DILocalVariable(name: "tif", arg: 1, scope: !1966, file: !3, line: 1181, type: !69)
!1968 = !DILocation(line: 1181, column: 21, scope: !1966)
!1969 = !DILocalVariable(name: "tag", arg: 2, scope: !1966, file: !3, line: 1181, type: !302)
!1970 = !DILocation(line: 1181, column: 33, scope: !1966)
!1971 = !DILocalVariable(name: "ap", arg: 3, scope: !1966, file: !3, line: 1181, type: !378)
!1972 = !DILocation(line: 1181, column: 46, scope: !1966)
!1973 = !DILocalVariable(name: "sp", scope: !1966, file: !3, line: 1183, type: !47)
!1974 = !DILocation(line: 1183, column: 17, scope: !1966)
!1975 = !DILocation(line: 1183, column: 22, scope: !1966)
!1976 = !DILocation(line: 1185, column: 10, scope: !1966)
!1977 = !DILocation(line: 1185, column: 2, scope: !1966)
!1978 = !DILocation(line: 1187, column: 23, scope: !1979)
!1979 = distinct !DILexicalBlock(scope: !1966, file: !3, line: 1185, column: 15)
!1980 = !DILocation(line: 1187, column: 27, scope: !1979)
!1981 = !DILocation(line: 1187, column: 4, scope: !1979)
!1982 = !DILocation(line: 1187, column: 21, scope: !1979)
!1983 = !DILocation(line: 1188, column: 3, scope: !1979)
!1984 = !DILocation(line: 1190, column: 7, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1979, file: !3, line: 1190, column: 7)
!1986 = !DILocation(line: 1190, column: 12, scope: !1985)
!1987 = !DILocation(line: 1190, column: 21, scope: !1985)
!1988 = !DILocation(line: 1191, column: 36, scope: !1985)
!1989 = !DILocation(line: 1191, column: 55, scope: !1985)
!1990 = !DILocation(line: 1191, column: 5, scope: !1985)
!1991 = !DILocation(line: 1191, column: 34, scope: !1985)
!1992 = !DILocation(line: 1191, column: 4, scope: !1985)
!1993 = !DILocation(line: 1192, column: 3, scope: !1979)
!1994 = !DILocation(line: 1195, column: 26, scope: !1979)
!1995 = !DILocation(line: 1195, column: 30, scope: !1979)
!1996 = !DILocation(line: 1195, column: 4, scope: !1979)
!1997 = !DILocation(line: 1195, column: 24, scope: !1979)
!1998 = !DILocation(line: 1196, column: 3, scope: !1979)
!1999 = !DILocation(line: 1198, column: 26, scope: !1979)
!2000 = !DILocation(line: 1198, column: 30, scope: !1979)
!2001 = !DILocation(line: 1198, column: 4, scope: !1979)
!2002 = !DILocation(line: 1198, column: 24, scope: !1979)
!2003 = !DILocation(line: 1199, column: 3, scope: !1979)
!2004 = !DILocation(line: 1201, column: 26, scope: !1979)
!2005 = !DILocation(line: 1201, column: 30, scope: !1979)
!2006 = !DILocation(line: 1201, column: 4, scope: !1979)
!2007 = !DILocation(line: 1201, column: 24, scope: !1979)
!2008 = !DILocation(line: 1202, column: 3, scope: !1979)
!2009 = !DILocation(line: 1204, column: 26, scope: !1979)
!2010 = !DILocation(line: 1204, column: 30, scope: !1979)
!2011 = !DILocation(line: 1204, column: 4, scope: !1979)
!2012 = !DILocation(line: 1204, column: 24, scope: !1979)
!2013 = !DILocation(line: 1205, column: 3, scope: !1979)
!2014 = !DILocation(line: 1207, column: 26, scope: !1979)
!2015 = !DILocation(line: 1207, column: 30, scope: !1979)
!2016 = !DILocation(line: 1207, column: 4, scope: !1979)
!2017 = !DILocation(line: 1207, column: 24, scope: !1979)
!2018 = !DILocation(line: 1208, column: 3, scope: !1979)
!2019 = !DILocation(line: 1210, column: 25, scope: !1979)
!2020 = !DILocation(line: 1210, column: 29, scope: !1979)
!2021 = !DILocation(line: 1210, column: 4, scope: !1979)
!2022 = !DILocation(line: 1210, column: 23, scope: !1979)
!2023 = !DILocation(line: 1211, column: 3, scope: !1979)
!2024 = !DILocation(line: 1213, column: 26, scope: !1979)
!2025 = !DILocation(line: 1213, column: 30, scope: !1979)
!2026 = !DILocation(line: 1213, column: 4, scope: !1979)
!2027 = !DILocation(line: 1213, column: 24, scope: !1979)
!2028 = !DILocation(line: 1214, column: 3, scope: !1979)
!2029 = !DILocation(line: 1216, column: 12, scope: !1979)
!2030 = !DILocation(line: 1216, column: 16, scope: !1979)
!2031 = !DILocation(line: 1216, column: 28, scope: !1979)
!2032 = !DILocation(line: 1216, column: 33, scope: !1979)
!2033 = !DILocation(line: 1216, column: 38, scope: !1979)
!2034 = !DILocation(line: 1216, column: 10, scope: !1979)
!2035 = !DILocation(line: 1216, column: 3, scope: !1979)
!2036 = !DILocation(line: 1218, column: 2, scope: !1966)
!2037 = !DILocation(line: 1219, column: 1, scope: !1966)
!2038 = distinct !DISubprogram(name: "Fax3VSetField", scope: !3, file: !3, line: 1138, type: !67, scopeLine: 1139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !438)
!2039 = !DILocalVariable(name: "tif", arg: 1, scope: !2038, file: !3, line: 1138, type: !69)
!2040 = !DILocation(line: 1138, column: 21, scope: !2038)
!2041 = !DILocalVariable(name: "tag", arg: 2, scope: !2038, file: !3, line: 1138, type: !302)
!2042 = !DILocation(line: 1138, column: 33, scope: !2038)
!2043 = !DILocalVariable(name: "ap", arg: 3, scope: !2038, file: !3, line: 1138, type: !378)
!2044 = !DILocation(line: 1138, column: 46, scope: !2038)
!2045 = !DILocalVariable(name: "sp", scope: !2038, file: !3, line: 1140, type: !47)
!2046 = !DILocation(line: 1140, column: 17, scope: !2038)
!2047 = !DILocation(line: 1140, column: 22, scope: !2038)
!2048 = !DILocation(line: 1142, column: 10, scope: !2038)
!2049 = !DILocation(line: 1142, column: 2, scope: !2038)
!2050 = !DILocation(line: 1144, column: 14, scope: !2051)
!2051 = distinct !DILexicalBlock(scope: !2038, file: !3, line: 1142, column: 15)
!2052 = !DILocation(line: 1144, column: 3, scope: !2051)
!2053 = !DILocation(line: 1144, column: 7, scope: !2051)
!2054 = !DILocation(line: 1144, column: 12, scope: !2051)
!2055 = !DILocation(line: 1145, column: 3, scope: !2051)
!2056 = !DILocation(line: 1147, column: 7, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !2051, file: !3, line: 1147, column: 7)
!2058 = !DILocation(line: 1147, column: 12, scope: !2057)
!2059 = !DILocation(line: 1147, column: 21, scope: !2057)
!2060 = !DILocation(line: 1148, column: 30, scope: !2057)
!2061 = !DILocation(line: 1148, column: 4, scope: !2057)
!2062 = !DILocation(line: 1148, column: 23, scope: !2057)
!2063 = !DILocation(line: 1148, column: 28, scope: !2057)
!2064 = !DILocation(line: 1149, column: 3, scope: !2051)
!2065 = !DILocation(line: 1152, column: 22, scope: !2051)
!2066 = !DILocation(line: 1152, column: 3, scope: !2051)
!2067 = !DILocation(line: 1152, column: 7, scope: !2051)
!2068 = !DILocation(line: 1152, column: 20, scope: !2051)
!2069 = !DILocation(line: 1153, column: 3, scope: !2051)
!2070 = !DILocation(line: 1155, column: 21, scope: !2051)
!2071 = !DILocation(line: 1155, column: 3, scope: !2051)
!2072 = !DILocation(line: 1155, column: 7, scope: !2051)
!2073 = !DILocation(line: 1155, column: 19, scope: !2051)
!2074 = !DILocation(line: 1156, column: 3, scope: !2051)
!2075 = !DILocation(line: 1158, column: 31, scope: !2051)
!2076 = !DILocation(line: 1158, column: 22, scope: !2051)
!2077 = !DILocation(line: 1158, column: 3, scope: !2051)
!2078 = !DILocation(line: 1158, column: 7, scope: !2051)
!2079 = !DILocation(line: 1158, column: 20, scope: !2051)
!2080 = !DILocation(line: 1159, column: 3, scope: !2051)
!2081 = !DILocation(line: 1161, column: 19, scope: !2051)
!2082 = !DILocation(line: 1161, column: 3, scope: !2051)
!2083 = !DILocation(line: 1161, column: 7, scope: !2051)
!2084 = !DILocation(line: 1161, column: 17, scope: !2051)
!2085 = !DILocation(line: 1162, column: 3, scope: !2051)
!2086 = !DILocation(line: 1164, column: 20, scope: !2051)
!2087 = !DILocation(line: 1164, column: 3, scope: !2051)
!2088 = !DILocation(line: 1164, column: 7, scope: !2051)
!2089 = !DILocation(line: 1164, column: 18, scope: !2051)
!2090 = !DILocation(line: 1165, column: 3, scope: !2051)
!2091 = !DILocation(line: 1167, column: 19, scope: !2051)
!2092 = !DILocation(line: 1167, column: 23, scope: !2051)
!2093 = !DILocation(line: 1167, column: 35, scope: !2051)
!2094 = !DILocation(line: 1167, column: 3, scope: !2051)
!2095 = !DILocation(line: 1168, column: 3, scope: !2051)
!2096 = !DILocation(line: 1170, column: 18, scope: !2051)
!2097 = !DILocation(line: 1170, column: 3, scope: !2051)
!2098 = !DILocation(line: 1170, column: 7, scope: !2051)
!2099 = !DILocation(line: 1170, column: 16, scope: !2051)
!2100 = !DILocation(line: 1171, column: 3, scope: !2051)
!2101 = !DILocation(line: 1173, column: 12, scope: !2051)
!2102 = !DILocation(line: 1173, column: 16, scope: !2051)
!2103 = !DILocation(line: 1173, column: 28, scope: !2051)
!2104 = !DILocation(line: 1173, column: 33, scope: !2051)
!2105 = !DILocation(line: 1173, column: 38, scope: !2051)
!2106 = !DILocation(line: 1173, column: 10, scope: !2051)
!2107 = !DILocation(line: 1173, column: 3, scope: !2051)
!2108 = !DILocation(line: 1175, column: 2, scope: !2038)
!2109 = !DILocation(line: 1176, column: 2, scope: !2038)
!2110 = !DILocation(line: 1176, column: 7, scope: !2038)
!2111 = !DILocation(line: 1176, column: 17, scope: !2038)
!2112 = !DILocation(line: 1177, column: 2, scope: !2038)
!2113 = !DILocation(line: 1178, column: 1, scope: !2038)
!2114 = distinct !DISubprogram(name: "Fax3PrintDir", scope: !3, file: !3, line: 1222, type: !321, scopeLine: 1223, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !438)
!2115 = !DILocalVariable(name: "tif", arg: 1, scope: !2114, file: !3, line: 1222, type: !69)
!2116 = !DILocation(line: 1222, column: 20, scope: !2114)
!2117 = !DILocalVariable(name: "fd", arg: 2, scope: !2114, file: !3, line: 1222, type: !323)
!2118 = !DILocation(line: 1222, column: 31, scope: !2114)
!2119 = !DILocalVariable(name: "flags", arg: 3, scope: !2114, file: !3, line: 1222, type: !35)
!2120 = !DILocation(line: 1222, column: 40, scope: !2114)
!2121 = !DILocalVariable(name: "sp", scope: !2114, file: !3, line: 1224, type: !47)
!2122 = !DILocation(line: 1224, column: 17, scope: !2114)
!2123 = !DILocation(line: 1224, column: 22, scope: !2114)
!2124 = !DILocation(line: 1226, column: 9, scope: !2114)
!2125 = !DILocation(line: 1227, column: 6, scope: !2126)
!2126 = distinct !DILexicalBlock(scope: !2114, file: !3, line: 1227, column: 6)
!2127 = !DILocalVariable(name: "sep", scope: !2128, file: !3, line: 1228, type: !2129)
!2128 = distinct !DILexicalBlock(scope: !2126, file: !3, line: 1227, column: 39)
!2129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!2130 = !DILocation(line: 1228, column: 15, scope: !2128)
!2131 = !DILocation(line: 1229, column: 7, scope: !2132)
!2132 = distinct !DILexicalBlock(scope: !2128, file: !3, line: 1229, column: 7)
!2133 = !DILocation(line: 1229, column: 12, scope: !2132)
!2134 = !DILocation(line: 1229, column: 20, scope: !2132)
!2135 = !DILocation(line: 1229, column: 35, scope: !2132)
!2136 = !DILocation(line: 1230, column: 12, scope: !2137)
!2137 = distinct !DILexicalBlock(scope: !2132, file: !3, line: 1229, column: 61)
!2138 = !DILocation(line: 1230, column: 4, scope: !2137)
!2139 = !DILocation(line: 1231, column: 8, scope: !2140)
!2140 = distinct !DILexicalBlock(scope: !2137, file: !3, line: 1231, column: 8)
!2141 = !DILocation(line: 1231, column: 12, scope: !2140)
!2142 = !DILocation(line: 1231, column: 25, scope: !2140)
!2143 = !DILocation(line: 1232, column: 13, scope: !2140)
!2144 = !DILocation(line: 1232, column: 40, scope: !2140)
!2145 = !DILocation(line: 1232, column: 5, scope: !2140)
!2146 = !DILocation(line: 1233, column: 3, scope: !2137)
!2147 = !DILocation(line: 1235, column: 12, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !2132, file: !3, line: 1233, column: 10)
!2149 = !DILocation(line: 1235, column: 4, scope: !2148)
!2150 = !DILocation(line: 1236, column: 8, scope: !2151)
!2151 = distinct !DILexicalBlock(scope: !2148, file: !3, line: 1236, column: 8)
!2152 = !DILocation(line: 1236, column: 12, scope: !2151)
!2153 = !DILocation(line: 1236, column: 25, scope: !2151)
!2154 = !DILocation(line: 1237, column: 13, scope: !2151)
!2155 = !DILocation(line: 1237, column: 35, scope: !2151)
!2156 = !DILocation(line: 1237, column: 5, scope: !2151)
!2157 = !DILocation(line: 1237, column: 45, scope: !2151)
!2158 = !DILocation(line: 1238, column: 8, scope: !2159)
!2159 = distinct !DILexicalBlock(scope: !2148, file: !3, line: 1238, column: 8)
!2160 = !DILocation(line: 1238, column: 12, scope: !2159)
!2161 = !DILocation(line: 1238, column: 25, scope: !2159)
!2162 = !DILocation(line: 1239, column: 13, scope: !2159)
!2163 = !DILocation(line: 1239, column: 34, scope: !2159)
!2164 = !DILocation(line: 1239, column: 5, scope: !2159)
!2165 = !DILocation(line: 1239, column: 44, scope: !2159)
!2166 = !DILocation(line: 1240, column: 8, scope: !2167)
!2167 = distinct !DILexicalBlock(scope: !2148, file: !3, line: 1240, column: 8)
!2168 = !DILocation(line: 1240, column: 12, scope: !2167)
!2169 = !DILocation(line: 1240, column: 25, scope: !2167)
!2170 = !DILocation(line: 1241, column: 13, scope: !2167)
!2171 = !DILocation(line: 1241, column: 40, scope: !2167)
!2172 = !DILocation(line: 1241, column: 5, scope: !2167)
!2173 = !DILocation(line: 1243, column: 11, scope: !2128)
!2174 = !DILocation(line: 1244, column: 16, scope: !2128)
!2175 = !DILocation(line: 1244, column: 20, scope: !2128)
!2176 = !DILocation(line: 1244, column: 7, scope: !2128)
!2177 = !DILocation(line: 1244, column: 43, scope: !2128)
!2178 = !DILocation(line: 1244, column: 47, scope: !2128)
!2179 = !DILocation(line: 1244, column: 34, scope: !2128)
!2180 = !DILocation(line: 1243, column: 3, scope: !2128)
!2181 = !DILocation(line: 1245, column: 2, scope: !2128)
!2182 = !DILocation(line: 1246, column: 6, scope: !2183)
!2183 = distinct !DILexicalBlock(scope: !2114, file: !3, line: 1246, column: 6)
!2184 = !DILocation(line: 1247, column: 11, scope: !2185)
!2185 = distinct !DILexicalBlock(scope: !2183, file: !3, line: 1246, column: 44)
!2186 = !DILocation(line: 1247, column: 3, scope: !2185)
!2187 = !DILocation(line: 1248, column: 11, scope: !2185)
!2188 = !DILocation(line: 1248, column: 15, scope: !2185)
!2189 = !DILocation(line: 1248, column: 3, scope: !2185)
!2190 = !DILocation(line: 1250, column: 12, scope: !2191)
!2191 = distinct !DILexicalBlock(scope: !2185, file: !3, line: 1248, column: 29)
!2192 = !DILocation(line: 1250, column: 4, scope: !2191)
!2193 = !DILocation(line: 1251, column: 4, scope: !2191)
!2194 = !DILocation(line: 1253, column: 12, scope: !2191)
!2195 = !DILocation(line: 1253, column: 4, scope: !2191)
!2196 = !DILocation(line: 1254, column: 4, scope: !2191)
!2197 = !DILocation(line: 1256, column: 12, scope: !2191)
!2198 = !DILocation(line: 1256, column: 4, scope: !2191)
!2199 = !DILocation(line: 1257, column: 4, scope: !2191)
!2200 = !DILocation(line: 1259, column: 11, scope: !2185)
!2201 = !DILocation(line: 1260, column: 7, scope: !2185)
!2202 = !DILocation(line: 1260, column: 11, scope: !2185)
!2203 = !DILocation(line: 1260, column: 25, scope: !2185)
!2204 = !DILocation(line: 1260, column: 29, scope: !2185)
!2205 = !DILocation(line: 1259, column: 3, scope: !2185)
!2206 = !DILocation(line: 1261, column: 2, scope: !2185)
!2207 = !DILocation(line: 1262, column: 6, scope: !2208)
!2208 = distinct !DILexicalBlock(scope: !2114, file: !3, line: 1262, column: 6)
!2209 = !DILocation(line: 1263, column: 11, scope: !2208)
!2210 = !DILocation(line: 1263, column: 50, scope: !2208)
!2211 = !DILocation(line: 1263, column: 54, scope: !2208)
!2212 = !DILocation(line: 1263, column: 41, scope: !2208)
!2213 = !DILocation(line: 1263, column: 3, scope: !2208)
!2214 = !DILocation(line: 1264, column: 6, scope: !2215)
!2215 = distinct !DILexicalBlock(scope: !2114, file: !3, line: 1264, column: 6)
!2216 = !DILocation(line: 1265, column: 11, scope: !2215)
!2217 = !DILocation(line: 1266, column: 16, scope: !2215)
!2218 = !DILocation(line: 1266, column: 20, scope: !2215)
!2219 = !DILocation(line: 1266, column: 7, scope: !2215)
!2220 = !DILocation(line: 1265, column: 3, scope: !2215)
!2221 = !DILocation(line: 1267, column: 6, scope: !2222)
!2222 = distinct !DILexicalBlock(scope: !2114, file: !3, line: 1267, column: 6)
!2223 = !DILocation(line: 1268, column: 11, scope: !2222)
!2224 = !DILocation(line: 1269, column: 15, scope: !2222)
!2225 = !DILocation(line: 1269, column: 19, scope: !2222)
!2226 = !DILocation(line: 1269, column: 6, scope: !2222)
!2227 = !DILocation(line: 1268, column: 3, scope: !2222)
!2228 = !DILocation(line: 1270, column: 6, scope: !2229)
!2229 = distinct !DILexicalBlock(scope: !2114, file: !3, line: 1270, column: 6)
!2230 = !DILocation(line: 1271, column: 11, scope: !2229)
!2231 = !DILocation(line: 1271, column: 41, scope: !2229)
!2232 = !DILocation(line: 1271, column: 45, scope: !2229)
!2233 = !DILocation(line: 1271, column: 3, scope: !2229)
!2234 = !DILocation(line: 1272, column: 6, scope: !2235)
!2235 = distinct !DILexicalBlock(scope: !2114, file: !3, line: 1272, column: 6)
!2236 = !DILocation(line: 1273, column: 11, scope: !2235)
!2237 = !DILocation(line: 1274, column: 16, scope: !2235)
!2238 = !DILocation(line: 1274, column: 20, scope: !2235)
!2239 = !DILocation(line: 1274, column: 7, scope: !2235)
!2240 = !DILocation(line: 1273, column: 3, scope: !2235)
!2241 = !DILocation(line: 1275, column: 1, scope: !2114)
!2242 = distinct !DISubprogram(name: "Fax3SetupState", scope: !3, file: !3, line: 467, type: !203, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !438)
!2243 = !DILocalVariable(name: "tif", arg: 1, scope: !2242, file: !3, line: 467, type: !69)
!2244 = !DILocation(line: 467, column: 22, scope: !2242)
!2245 = !DILocalVariable(name: "td", scope: !2242, file: !3, line: 469, type: !2246)
!2246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!2247 = !DILocation(line: 469, column: 17, scope: !2242)
!2248 = !DILocation(line: 469, column: 23, scope: !2242)
!2249 = !DILocation(line: 469, column: 28, scope: !2242)
!2250 = !DILocalVariable(name: "sp", scope: !2242, file: !3, line: 470, type: !47)
!2251 = !DILocation(line: 470, column: 17, scope: !2242)
!2252 = !DILocation(line: 470, column: 22, scope: !2242)
!2253 = !DILocalVariable(name: "rowbytes", scope: !2242, file: !3, line: 471, type: !35)
!2254 = !DILocation(line: 471, column: 7, scope: !2242)
!2255 = !DILocalVariable(name: "rowpixels", scope: !2242, file: !3, line: 471, type: !35)
!2256 = !DILocation(line: 471, column: 17, scope: !2242)
!2257 = !DILocalVariable(name: "needsRefLine", scope: !2242, file: !3, line: 472, type: !37)
!2258 = !DILocation(line: 472, column: 6, scope: !2242)
!2259 = !DILocation(line: 474, column: 6, scope: !2260)
!2260 = distinct !DILexicalBlock(scope: !2242, file: !3, line: 474, column: 6)
!2261 = !DILocation(line: 474, column: 10, scope: !2260)
!2262 = !DILocation(line: 474, column: 27, scope: !2260)
!2263 = !DILocation(line: 475, column: 13, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !2260, file: !3, line: 474, column: 33)
!2265 = !DILocation(line: 475, column: 18, scope: !2264)
!2266 = !DILocation(line: 475, column: 3, scope: !2264)
!2267 = !DILocation(line: 477, column: 3, scope: !2264)
!2268 = !DILocation(line: 482, column: 6, scope: !2269)
!2269 = distinct !DILexicalBlock(scope: !2242, file: !3, line: 482, column: 6)
!2270 = !DILocation(line: 483, column: 30, scope: !2271)
!2271 = distinct !DILexicalBlock(scope: !2269, file: !3, line: 482, column: 20)
!2272 = !DILocation(line: 483, column: 14, scope: !2271)
!2273 = !DILocation(line: 483, column: 12, scope: !2271)
!2274 = !DILocation(line: 484, column: 15, scope: !2271)
!2275 = !DILocation(line: 484, column: 19, scope: !2271)
!2276 = !DILocation(line: 484, column: 13, scope: !2271)
!2277 = !DILocation(line: 485, column: 2, scope: !2271)
!2278 = !DILocation(line: 486, column: 31, scope: !2279)
!2279 = distinct !DILexicalBlock(scope: !2269, file: !3, line: 485, column: 9)
!2280 = !DILocation(line: 486, column: 14, scope: !2279)
!2281 = !DILocation(line: 486, column: 12, scope: !2279)
!2282 = !DILocation(line: 487, column: 15, scope: !2279)
!2283 = !DILocation(line: 487, column: 19, scope: !2279)
!2284 = !DILocation(line: 487, column: 13, scope: !2279)
!2285 = !DILocation(line: 489, column: 26, scope: !2242)
!2286 = !DILocation(line: 489, column: 17, scope: !2242)
!2287 = !DILocation(line: 489, column: 2, scope: !2242)
!2288 = !DILocation(line: 489, column: 6, scope: !2242)
!2289 = !DILocation(line: 489, column: 15, scope: !2242)
!2290 = !DILocation(line: 490, column: 27, scope: !2242)
!2291 = !DILocation(line: 490, column: 18, scope: !2242)
!2292 = !DILocation(line: 490, column: 2, scope: !2242)
!2293 = !DILocation(line: 490, column: 6, scope: !2242)
!2294 = !DILocation(line: 490, column: 16, scope: !2242)
!2295 = !DILocation(line: 495, column: 7, scope: !2242)
!2296 = !DILocation(line: 495, column: 11, scope: !2242)
!2297 = !DILocation(line: 495, column: 24, scope: !2242)
!2298 = !DILocation(line: 495, column: 48, scope: !2242)
!2299 = !DILocation(line: 496, column: 6, scope: !2242)
!2300 = !DILocation(line: 496, column: 10, scope: !2242)
!2301 = !DILocation(line: 496, column: 25, scope: !2242)
!2302 = !DILocation(line: 494, column: 15, scope: !2242)
!2303 = !DILocation(line: 498, column: 6, scope: !2304)
!2304 = distinct !DILexicalBlock(scope: !2242, file: !3, line: 498, column: 6)
!2305 = !DILocation(line: 498, column: 11, scope: !2304)
!2306 = !DILocation(line: 498, column: 20, scope: !2304)
!2307 = !DILocalVariable(name: "dsp", scope: !2308, file: !3, line: 499, type: !386)
!2308 = distinct !DILexicalBlock(scope: !2304, file: !3, line: 498, column: 33)
!2309 = !DILocation(line: 499, column: 20, scope: !2308)
!2310 = !DILocation(line: 499, column: 26, scope: !2308)
!2311 = !DILocalVariable(name: "nruns", scope: !2308, file: !3, line: 500, type: !53)
!2312 = !DILocation(line: 500, column: 10, scope: !2308)
!2313 = !DILocation(line: 500, column: 18, scope: !2308)
!2314 = !DILocation(line: 501, column: 10, scope: !2308)
!2315 = !DILocation(line: 501, column: 9, scope: !2308)
!2316 = !DILocation(line: 501, column: 8, scope: !2308)
!2317 = !DILocation(line: 501, column: 38, scope: !2308)
!2318 = !DILocation(line: 503, column: 37, scope: !2308)
!2319 = !DILocation(line: 503, column: 42, scope: !2308)
!2320 = !DILocation(line: 503, column: 25, scope: !2308)
!2321 = !DILocation(line: 503, column: 3, scope: !2308)
!2322 = !DILocation(line: 503, column: 8, scope: !2308)
!2323 = !DILocation(line: 503, column: 13, scope: !2308)
!2324 = !DILocation(line: 504, column: 7, scope: !2325)
!2325 = distinct !DILexicalBlock(scope: !2308, file: !3, line: 504, column: 7)
!2326 = !DILocation(line: 504, column: 12, scope: !2325)
!2327 = !DILocation(line: 504, column: 17, scope: !2325)
!2328 = !DILocation(line: 507, column: 8, scope: !2329)
!2329 = distinct !DILexicalBlock(scope: !2325, file: !3, line: 504, column: 26)
!2330 = !DILocation(line: 507, column: 13, scope: !2329)
!2331 = !DILocation(line: 505, column: 4, scope: !2329)
!2332 = !DILocation(line: 508, column: 4, scope: !2329)
!2333 = !DILocation(line: 510, column: 18, scope: !2308)
!2334 = !DILocation(line: 510, column: 23, scope: !2308)
!2335 = !DILocation(line: 510, column: 3, scope: !2308)
!2336 = !DILocation(line: 510, column: 8, scope: !2308)
!2337 = !DILocation(line: 510, column: 16, scope: !2308)
!2338 = !DILocation(line: 511, column: 7, scope: !2339)
!2339 = distinct !DILexicalBlock(scope: !2308, file: !3, line: 511, column: 7)
!2340 = !DILocation(line: 512, column: 19, scope: !2339)
!2341 = !DILocation(line: 512, column: 24, scope: !2339)
!2342 = !DILocation(line: 512, column: 32, scope: !2339)
!2343 = !DILocation(line: 512, column: 37, scope: !2339)
!2344 = !DILocation(line: 512, column: 29, scope: !2339)
!2345 = !DILocation(line: 512, column: 4, scope: !2339)
!2346 = !DILocation(line: 512, column: 9, scope: !2339)
!2347 = !DILocation(line: 512, column: 17, scope: !2339)
!2348 = !DILocation(line: 514, column: 4, scope: !2339)
!2349 = !DILocation(line: 514, column: 9, scope: !2339)
!2350 = !DILocation(line: 514, column: 17, scope: !2339)
!2351 = !DILocation(line: 515, column: 7, scope: !2352)
!2352 = distinct !DILexicalBlock(scope: !2308, file: !3, line: 515, column: 7)
!2353 = !DILocation(line: 516, column: 4, scope: !2354)
!2354 = distinct !DILexicalBlock(scope: !2352, file: !3, line: 515, column: 26)
!2355 = !DILocation(line: 516, column: 9, scope: !2354)
!2356 = !DILocation(line: 516, column: 23, scope: !2354)
!2357 = !DILocation(line: 517, column: 4, scope: !2354)
!2358 = !DILocation(line: 517, column: 9, scope: !2354)
!2359 = !DILocation(line: 517, column: 25, scope: !2354)
!2360 = !DILocation(line: 518, column: 4, scope: !2354)
!2361 = !DILocation(line: 518, column: 9, scope: !2354)
!2362 = !DILocation(line: 518, column: 24, scope: !2354)
!2363 = !DILocation(line: 519, column: 3, scope: !2354)
!2364 = !DILocation(line: 520, column: 2, scope: !2308)
!2365 = !DILocation(line: 520, column: 13, scope: !2366)
!2366 = distinct !DILexicalBlock(scope: !2304, file: !3, line: 520, column: 13)
!2367 = !DILocalVariable(name: "esp", scope: !2368, file: !3, line: 521, type: !407)
!2368 = distinct !DILexicalBlock(scope: !2366, file: !3, line: 520, column: 27)
!2369 = !DILocation(line: 521, column: 20, scope: !2368)
!2370 = !DILocation(line: 521, column: 26, scope: !2368)
!2371 = !DILocation(line: 529, column: 40, scope: !2368)
!2372 = !DILocation(line: 529, column: 28, scope: !2368)
!2373 = !DILocation(line: 529, column: 3, scope: !2368)
!2374 = !DILocation(line: 529, column: 8, scope: !2368)
!2375 = !DILocation(line: 529, column: 16, scope: !2368)
!2376 = !DILocation(line: 530, column: 7, scope: !2377)
!2377 = distinct !DILexicalBlock(scope: !2368, file: !3, line: 530, column: 7)
!2378 = !DILocation(line: 530, column: 12, scope: !2377)
!2379 = !DILocation(line: 530, column: 20, scope: !2377)
!2380 = !DILocation(line: 533, column: 8, scope: !2381)
!2381 = distinct !DILexicalBlock(scope: !2377, file: !3, line: 530, column: 29)
!2382 = !DILocation(line: 533, column: 13, scope: !2381)
!2383 = !DILocation(line: 531, column: 4, scope: !2381)
!2384 = !DILocation(line: 534, column: 4, scope: !2381)
!2385 = !DILocation(line: 536, column: 2, scope: !2368)
!2386 = !DILocation(line: 537, column: 3, scope: !2366)
!2387 = !DILocation(line: 537, column: 22, scope: !2366)
!2388 = !DILocation(line: 537, column: 30, scope: !2366)
!2389 = !DILocation(line: 538, column: 2, scope: !2242)
!2390 = !DILocation(line: 539, column: 1, scope: !2242)
!2391 = distinct !DISubprogram(name: "Fax3PreDecode", scope: !3, file: !3, line: 155, type: !208, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !438)
!2392 = !DILocalVariable(name: "tif", arg: 1, scope: !2391, file: !3, line: 155, type: !69)
!2393 = !DILocation(line: 155, column: 21, scope: !2391)
!2394 = !DILocalVariable(name: "s", arg: 2, scope: !2391, file: !3, line: 155, type: !210)
!2395 = !DILocation(line: 155, column: 36, scope: !2391)
!2396 = !DILocalVariable(name: "sp", scope: !2391, file: !3, line: 157, type: !386)
!2397 = !DILocation(line: 157, column: 19, scope: !2391)
!2398 = !DILocation(line: 157, column: 24, scope: !2391)
!2399 = !DILocation(line: 159, column: 9, scope: !2391)
!2400 = !DILocation(line: 160, column: 2, scope: !2401)
!2401 = distinct !DILexicalBlock(scope: !2402, file: !3, line: 160, column: 2)
!2402 = distinct !DILexicalBlock(scope: !2391, file: !3, line: 160, column: 2)
!2403 = !DILocation(line: 161, column: 2, scope: !2391)
!2404 = !DILocation(line: 161, column: 6, scope: !2391)
!2405 = !DILocation(line: 161, column: 10, scope: !2391)
!2406 = !DILocation(line: 162, column: 2, scope: !2391)
!2407 = !DILocation(line: 162, column: 6, scope: !2391)
!2408 = !DILocation(line: 162, column: 11, scope: !2391)
!2409 = !DILocation(line: 163, column: 2, scope: !2391)
!2410 = !DILocation(line: 163, column: 6, scope: !2391)
!2411 = !DILocation(line: 163, column: 13, scope: !2391)
!2412 = !DILocation(line: 172, column: 25, scope: !2391)
!2413 = !DILocation(line: 172, column: 30, scope: !2391)
!2414 = !DILocation(line: 172, column: 38, scope: !2391)
!2415 = !DILocation(line: 172, column: 51, scope: !2391)
!2416 = !DILocation(line: 172, column: 6, scope: !2391)
!2417 = !DILocation(line: 171, column: 2, scope: !2391)
!2418 = !DILocation(line: 171, column: 6, scope: !2391)
!2419 = !DILocation(line: 171, column: 13, scope: !2391)
!2420 = !DILocation(line: 173, column: 6, scope: !2421)
!2421 = distinct !DILexicalBlock(scope: !2391, file: !3, line: 173, column: 6)
!2422 = !DILocation(line: 173, column: 10, scope: !2421)
!2423 = !DILocation(line: 174, column: 29, scope: !2424)
!2424 = distinct !DILexicalBlock(scope: !2421, file: !3, line: 173, column: 19)
!2425 = !DILocation(line: 174, column: 33, scope: !2424)
!2426 = !DILocation(line: 174, column: 35, scope: !2424)
!2427 = !DILocation(line: 174, column: 20, scope: !2424)
!2428 = !DILocation(line: 174, column: 3, scope: !2424)
!2429 = !DILocation(line: 174, column: 7, scope: !2424)
!2430 = !DILocation(line: 174, column: 18, scope: !2424)
!2431 = !DILocation(line: 175, column: 3, scope: !2424)
!2432 = !DILocation(line: 175, column: 7, scope: !2424)
!2433 = !DILocation(line: 175, column: 18, scope: !2424)
!2434 = !DILocation(line: 176, column: 2, scope: !2424)
!2435 = !DILocation(line: 177, column: 2, scope: !2391)
!2436 = !DILocalVariable(name: "tif", arg: 1, scope: !619, file: !3, line: 227, type: !69)
!2437 = !DILocation(line: 227, column: 20, scope: !619)
!2438 = !DILocalVariable(name: "buf", arg: 2, scope: !619, file: !3, line: 227, type: !42)
!2439 = !DILocation(line: 227, column: 34, scope: !619)
!2440 = !DILocalVariable(name: "occ", arg: 3, scope: !619, file: !3, line: 227, type: !199)
!2441 = !DILocation(line: 227, column: 47, scope: !619)
!2442 = !DILocalVariable(name: "s", arg: 4, scope: !619, file: !3, line: 227, type: !210)
!2443 = !DILocation(line: 227, column: 62, scope: !619)
!2444 = !DILocalVariable(name: "sp", scope: !619, file: !3, line: 229, type: !386)
!2445 = !DILocation(line: 229, column: 2, scope: !619)
!2446 = !DILocalVariable(name: "a0", scope: !619, file: !3, line: 229, type: !37)
!2447 = !DILocalVariable(name: "lastx", scope: !619, file: !3, line: 229, type: !37)
!2448 = !DILocalVariable(name: "BitAcc", scope: !619, file: !3, line: 229, type: !53)
!2449 = !DILocalVariable(name: "BitsAvail", scope: !619, file: !3, line: 229, type: !37)
!2450 = !DILocalVariable(name: "RunLength", scope: !619, file: !3, line: 229, type: !37)
!2451 = !DILocalVariable(name: "cp", scope: !619, file: !3, line: 229, type: !38)
!2452 = !DILocalVariable(name: "ep", scope: !619, file: !3, line: 229, type: !38)
!2453 = !DILocalVariable(name: "pa", scope: !619, file: !3, line: 229, type: !142)
!2454 = !DILocalVariable(name: "thisrun", scope: !619, file: !3, line: 229, type: !142)
!2455 = !DILocalVariable(name: "EOLcnt", scope: !619, file: !3, line: 229, type: !37)
!2456 = !DILocalVariable(name: "bitmap", scope: !619, file: !3, line: 229, type: !392)
!2457 = !DILocalVariable(name: "TabEnt", scope: !619, file: !3, line: 229, type: !1137)
!2458 = !DILocation(line: 231, column: 9, scope: !619)
!2459 = !DILocation(line: 232, column: 2, scope: !619)
!2460 = !DILocation(line: 232, column: 2, scope: !2461)
!2461 = distinct !DILexicalBlock(scope: !619, file: !3, line: 232, column: 2)
!2462 = !DILocation(line: 233, column: 12, scope: !619)
!2463 = !DILocation(line: 233, column: 16, scope: !619)
!2464 = !DILocation(line: 233, column: 10, scope: !619)
!2465 = !DILocation(line: 234, column: 2, scope: !619)
!2466 = !DILocation(line: 234, column: 15, scope: !619)
!2467 = !DILocation(line: 234, column: 9, scope: !619)
!2468 = !DILocation(line: 234, column: 19, scope: !619)
!2469 = !DILocation(line: 235, column: 6, scope: !2470)
!2470 = distinct !DILexicalBlock(scope: !619, file: !3, line: 234, column: 24)
!2471 = !DILocation(line: 236, column: 13, scope: !2470)
!2472 = !DILocation(line: 237, column: 8, scope: !2470)
!2473 = !DILocation(line: 237, column: 6, scope: !2470)
!2474 = !DILocation(line: 243, column: 3, scope: !2470)
!2475 = !DILocation(line: 243, column: 3, scope: !2476)
!2476 = distinct !DILexicalBlock(scope: !2477, file: !3, line: 243, column: 3)
!2477 = distinct !DILexicalBlock(scope: !2470, file: !3, line: 243, column: 3)
!2478 = !DILocation(line: 243, column: 3, scope: !2479)
!2479 = distinct !DILexicalBlock(scope: !2476, file: !3, line: 243, column: 3)
!2480 = !DILocation(line: 243, column: 3, scope: !2481)
!2481 = distinct !DILexicalBlock(scope: !2482, file: !3, line: 243, column: 3)
!2482 = distinct !DILexicalBlock(scope: !2483, file: !3, line: 243, column: 3)
!2483 = distinct !DILexicalBlock(scope: !2479, file: !3, line: 243, column: 3)
!2484 = !DILocation(line: 243, column: 3, scope: !2485)
!2485 = distinct !DILexicalBlock(scope: !2486, file: !3, line: 243, column: 3)
!2486 = distinct !DILexicalBlock(scope: !2481, file: !3, line: 243, column: 3)
!2487 = !DILocation(line: 243, column: 3, scope: !2488)
!2488 = distinct !DILexicalBlock(scope: !2489, file: !3, line: 243, column: 3)
!2489 = distinct !DILexicalBlock(scope: !2485, file: !3, line: 243, column: 3)
!2490 = !DILocation(line: 243, column: 3, scope: !2491)
!2491 = distinct !DILexicalBlock(scope: !2492, file: !3, line: 243, column: 3)
!2492 = distinct !DILexicalBlock(scope: !2488, file: !3, line: 243, column: 3)
!2493 = !DILocation(line: 243, column: 3, scope: !2492)
!2494 = !DILocation(line: 243, column: 3, scope: !2495)
!2495 = distinct !DILexicalBlock(scope: !2488, file: !3, line: 243, column: 3)
!2496 = !DILocation(line: 243, column: 3, scope: !2497)
!2497 = distinct !DILexicalBlock(scope: !2495, file: !3, line: 243, column: 3)
!2498 = !DILocation(line: 243, column: 3, scope: !2499)
!2499 = distinct !DILexicalBlock(scope: !2500, file: !3, line: 243, column: 3)
!2500 = distinct !DILexicalBlock(scope: !2497, file: !3, line: 243, column: 3)
!2501 = !DILocation(line: 243, column: 3, scope: !2502)
!2502 = distinct !DILexicalBlock(scope: !2499, file: !3, line: 243, column: 3)
!2503 = !DILocation(line: 243, column: 3, scope: !2504)
!2504 = distinct !DILexicalBlock(scope: !2499, file: !3, line: 243, column: 3)
!2505 = !DILocation(line: 243, column: 3, scope: !2500)
!2506 = !DILocation(line: 243, column: 3, scope: !2489)
!2507 = !DILocation(line: 243, column: 3, scope: !2486)
!2508 = !DILocation(line: 243, column: 3, scope: !2509)
!2509 = distinct !DILexicalBlock(scope: !2481, file: !3, line: 243, column: 3)
!2510 = !DILocation(line: 243, column: 3, scope: !2511)
!2511 = distinct !DILexicalBlock(scope: !2481, file: !3, line: 243, column: 3)
!2512 = !DILocation(line: 243, column: 3, scope: !2482)
!2513 = distinct !{!2513, !2514, !2514}
!2514 = !DILocation(line: 243, column: 3, scope: !2483)
!2515 = !DILocation(line: 243, column: 3, scope: !2477)
!2516 = !DILocation(line: 243, column: 3, scope: !2517)
!2517 = distinct !DILexicalBlock(scope: !2518, file: !3, line: 243, column: 3)
!2518 = distinct !DILexicalBlock(scope: !2519, file: !3, line: 243, column: 3)
!2519 = distinct !DILexicalBlock(scope: !2477, file: !3, line: 243, column: 3)
!2520 = !DILocation(line: 243, column: 3, scope: !2521)
!2521 = distinct !DILexicalBlock(scope: !2522, file: !3, line: 243, column: 3)
!2522 = distinct !DILexicalBlock(scope: !2517, file: !3, line: 243, column: 3)
!2523 = !DILocation(line: 243, column: 3, scope: !2524)
!2524 = distinct !DILexicalBlock(scope: !2525, file: !3, line: 243, column: 3)
!2525 = distinct !DILexicalBlock(scope: !2521, file: !3, line: 243, column: 3)
!2526 = !DILocation(line: 243, column: 3, scope: !2527)
!2527 = distinct !DILexicalBlock(scope: !2528, file: !3, line: 243, column: 3)
!2528 = distinct !DILexicalBlock(scope: !2524, file: !3, line: 243, column: 3)
!2529 = !DILocation(line: 243, column: 3, scope: !2528)
!2530 = !DILocation(line: 243, column: 3, scope: !2531)
!2531 = distinct !DILexicalBlock(scope: !2524, file: !3, line: 243, column: 3)
!2532 = !DILocation(line: 243, column: 3, scope: !2525)
!2533 = !DILocation(line: 243, column: 3, scope: !2522)
!2534 = !DILocation(line: 243, column: 3, scope: !2535)
!2535 = distinct !DILexicalBlock(scope: !2517, file: !3, line: 243, column: 3)
!2536 = !DILocation(line: 243, column: 3, scope: !2537)
!2537 = distinct !DILexicalBlock(scope: !2517, file: !3, line: 243, column: 3)
!2538 = !DILocation(line: 243, column: 3, scope: !2518)
!2539 = distinct !{!2539, !2540, !2540}
!2540 = !DILocation(line: 243, column: 3, scope: !2519)
!2541 = !DILocation(line: 243, column: 3, scope: !2542)
!2542 = distinct !DILexicalBlock(scope: !2477, file: !3, line: 243, column: 3)
!2543 = distinct !{!2543, !2515, !2515, !785}
!2544 = !DILocation(line: 243, column: 3, scope: !2545)
!2545 = distinct !DILexicalBlock(scope: !2477, file: !3, line: 243, column: 3)
!2546 = !DILocation(line: 244, column: 3, scope: !2470)
!2547 = !DILocation(line: 244, column: 3, scope: !2548)
!2548 = distinct !DILexicalBlock(scope: !2470, file: !3, line: 244, column: 3)
!2549 = !DILocation(line: 244, column: 3, scope: !2550)
!2550 = distinct !DILexicalBlock(scope: !2551, file: !3, line: 244, column: 3)
!2551 = distinct !DILexicalBlock(scope: !2552, file: !3, line: 244, column: 3)
!2552 = distinct !DILexicalBlock(scope: !2548, file: !3, line: 244, column: 3)
!2553 = !DILocation(line: 244, column: 3, scope: !2554)
!2554 = distinct !DILexicalBlock(scope: !2555, file: !3, line: 244, column: 3)
!2555 = distinct !DILexicalBlock(scope: !2556, file: !3, line: 244, column: 3)
!2556 = distinct !DILexicalBlock(scope: !2550, file: !3, line: 244, column: 3)
!2557 = !DILocation(line: 244, column: 3, scope: !2558)
!2558 = distinct !DILexicalBlock(scope: !2554, file: !3, line: 244, column: 3)
!2559 = !DILocation(line: 244, column: 3, scope: !2560)
!2560 = distinct !DILexicalBlock(scope: !2561, file: !3, line: 244, column: 3)
!2561 = distinct !DILexicalBlock(scope: !2558, file: !3, line: 244, column: 3)
!2562 = !DILocation(line: 244, column: 3, scope: !2563)
!2563 = distinct !DILexicalBlock(scope: !2564, file: !3, line: 244, column: 3)
!2564 = distinct !DILexicalBlock(scope: !2560, file: !3, line: 244, column: 3)
!2565 = !DILocation(line: 244, column: 3, scope: !2566)
!2566 = distinct !DILexicalBlock(scope: !2567, file: !3, line: 244, column: 3)
!2567 = distinct !DILexicalBlock(scope: !2563, file: !3, line: 244, column: 3)
!2568 = !DILocation(line: 244, column: 3, scope: !2567)
!2569 = !DILocation(line: 244, column: 3, scope: !2570)
!2570 = distinct !DILexicalBlock(scope: !2563, file: !3, line: 244, column: 3)
!2571 = !DILocation(line: 244, column: 3, scope: !2572)
!2572 = distinct !DILexicalBlock(scope: !2570, file: !3, line: 244, column: 3)
!2573 = !DILocation(line: 244, column: 3, scope: !2574)
!2574 = distinct !DILexicalBlock(scope: !2575, file: !3, line: 244, column: 3)
!2575 = distinct !DILexicalBlock(scope: !2572, file: !3, line: 244, column: 3)
!2576 = !DILocation(line: 244, column: 3, scope: !2577)
!2577 = distinct !DILexicalBlock(scope: !2574, file: !3, line: 244, column: 3)
!2578 = !DILocation(line: 244, column: 3, scope: !2579)
!2579 = distinct !DILexicalBlock(scope: !2574, file: !3, line: 244, column: 3)
!2580 = !DILocation(line: 244, column: 3, scope: !2575)
!2581 = !DILocation(line: 244, column: 3, scope: !2564)
!2582 = !DILocation(line: 244, column: 3, scope: !2561)
!2583 = !DILocation(line: 244, column: 3, scope: !2584)
!2584 = distinct !DILexicalBlock(scope: !2558, file: !3, line: 244, column: 3)
!2585 = !DILocation(line: 244, column: 3, scope: !2586)
!2586 = distinct !DILexicalBlock(scope: !2554, file: !3, line: 244, column: 3)
!2587 = !DILocation(line: 244, column: 3, scope: !2588)
!2588 = distinct !DILexicalBlock(scope: !2586, file: !3, line: 244, column: 3)
!2589 = !DILocation(line: 244, column: 3, scope: !2555)
!2590 = distinct !{!2590, !2591, !2591}
!2591 = !DILocation(line: 244, column: 3, scope: !2556)
!2592 = !DILabel(scope: !2550, name: "doneWhite1d", file: !3, line: 244)
!2593 = !DILocation(line: 244, column: 3, scope: !2594)
!2594 = distinct !DILexicalBlock(scope: !2550, file: !3, line: 244, column: 3)
!2595 = !DILocation(line: 244, column: 3, scope: !2596)
!2596 = distinct !DILexicalBlock(scope: !2597, file: !3, line: 244, column: 3)
!2597 = distinct !DILexicalBlock(scope: !2598, file: !3, line: 244, column: 3)
!2598 = distinct !DILexicalBlock(scope: !2550, file: !3, line: 244, column: 3)
!2599 = !DILocation(line: 244, column: 3, scope: !2600)
!2600 = distinct !DILexicalBlock(scope: !2596, file: !3, line: 244, column: 3)
!2601 = !DILocation(line: 244, column: 3, scope: !2602)
!2602 = distinct !DILexicalBlock(scope: !2603, file: !3, line: 244, column: 3)
!2603 = distinct !DILexicalBlock(scope: !2600, file: !3, line: 244, column: 3)
!2604 = !DILocation(line: 244, column: 3, scope: !2605)
!2605 = distinct !DILexicalBlock(scope: !2606, file: !3, line: 244, column: 3)
!2606 = distinct !DILexicalBlock(scope: !2602, file: !3, line: 244, column: 3)
!2607 = !DILocation(line: 244, column: 3, scope: !2608)
!2608 = distinct !DILexicalBlock(scope: !2609, file: !3, line: 244, column: 3)
!2609 = distinct !DILexicalBlock(scope: !2605, file: !3, line: 244, column: 3)
!2610 = !DILocation(line: 244, column: 3, scope: !2609)
!2611 = !DILocation(line: 244, column: 3, scope: !2612)
!2612 = distinct !DILexicalBlock(scope: !2605, file: !3, line: 244, column: 3)
!2613 = !DILocation(line: 244, column: 3, scope: !2614)
!2614 = distinct !DILexicalBlock(scope: !2612, file: !3, line: 244, column: 3)
!2615 = !DILocation(line: 244, column: 3, scope: !2616)
!2616 = distinct !DILexicalBlock(scope: !2617, file: !3, line: 244, column: 3)
!2617 = distinct !DILexicalBlock(scope: !2614, file: !3, line: 244, column: 3)
!2618 = !DILocation(line: 244, column: 3, scope: !2619)
!2619 = distinct !DILexicalBlock(scope: !2616, file: !3, line: 244, column: 3)
!2620 = !DILocation(line: 244, column: 3, scope: !2621)
!2621 = distinct !DILexicalBlock(scope: !2616, file: !3, line: 244, column: 3)
!2622 = !DILocation(line: 244, column: 3, scope: !2617)
!2623 = !DILocation(line: 244, column: 3, scope: !2606)
!2624 = !DILocation(line: 244, column: 3, scope: !2603)
!2625 = !DILocation(line: 244, column: 3, scope: !2626)
!2626 = distinct !DILexicalBlock(scope: !2600, file: !3, line: 244, column: 3)
!2627 = !DILocation(line: 244, column: 3, scope: !2628)
!2628 = distinct !DILexicalBlock(scope: !2596, file: !3, line: 244, column: 3)
!2629 = !DILocation(line: 244, column: 3, scope: !2630)
!2630 = distinct !DILexicalBlock(scope: !2628, file: !3, line: 244, column: 3)
!2631 = !DILocation(line: 244, column: 3, scope: !2597)
!2632 = distinct !{!2632, !2633, !2633}
!2633 = !DILocation(line: 244, column: 3, scope: !2598)
!2634 = !DILabel(scope: !2550, name: "doneBlack1d", file: !3, line: 244)
!2635 = !DILocation(line: 244, column: 3, scope: !2636)
!2636 = distinct !DILexicalBlock(scope: !2550, file: !3, line: 244, column: 3)
!2637 = !DILocation(line: 244, column: 3, scope: !2551)
!2638 = distinct !{!2638, !2639, !2639}
!2639 = !DILocation(line: 244, column: 3, scope: !2552)
!2640 = !DILabel(scope: !2548, name: "eof1d", file: !3, line: 244)
!2641 = !DILocation(line: 244, column: 3, scope: !2642)
!2642 = distinct !DILexicalBlock(scope: !2643, file: !3, line: 244, column: 3)
!2643 = distinct !DILexicalBlock(scope: !2548, file: !3, line: 244, column: 3)
!2644 = !DILocation(line: 244, column: 3, scope: !2645)
!2645 = distinct !DILexicalBlock(scope: !2642, file: !3, line: 244, column: 3)
!2646 = !DILocation(line: 244, column: 3, scope: !2647)
!2647 = distinct !DILexicalBlock(scope: !2643, file: !3, line: 244, column: 3)
!2648 = !DILocation(line: 244, column: 3, scope: !2649)
!2649 = distinct !DILexicalBlock(scope: !2647, file: !3, line: 244, column: 3)
!2650 = !DILocation(line: 0, scope: !2649)
!2651 = distinct !{!2651, !2648, !2648, !785}
!2652 = !DILocation(line: 244, column: 3, scope: !2653)
!2653 = distinct !DILexicalBlock(scope: !2649, file: !3, line: 244, column: 3)
!2654 = !DILocation(line: 244, column: 3, scope: !2655)
!2655 = distinct !DILexicalBlock(scope: !2656, file: !3, line: 244, column: 3)
!2656 = distinct !DILexicalBlock(scope: !2653, file: !3, line: 244, column: 3)
!2657 = !DILocation(line: 244, column: 3, scope: !2658)
!2658 = distinct !DILexicalBlock(scope: !2656, file: !3, line: 244, column: 3)
!2659 = !DILocation(line: 244, column: 3, scope: !2660)
!2660 = distinct !DILexicalBlock(scope: !2658, file: !3, line: 244, column: 3)
!2661 = !DILocation(line: 244, column: 3, scope: !2656)
!2662 = !DILocation(line: 244, column: 3, scope: !2663)
!2663 = distinct !DILexicalBlock(scope: !2656, file: !3, line: 244, column: 3)
!2664 = !DILocation(line: 244, column: 3, scope: !2665)
!2665 = distinct !DILexicalBlock(scope: !2653, file: !3, line: 244, column: 3)
!2666 = !DILocation(line: 244, column: 3, scope: !2667)
!2667 = distinct !DILexicalBlock(scope: !2665, file: !3, line: 244, column: 3)
!2668 = !DILocation(line: 244, column: 3, scope: !2669)
!2669 = distinct !DILexicalBlock(scope: !2667, file: !3, line: 244, column: 3)
!2670 = !DILocation(line: 244, column: 3, scope: !2671)
!2671 = distinct !DILexicalBlock(scope: !2667, file: !3, line: 244, column: 3)
!2672 = !DILocation(line: 244, column: 3, scope: !2643)
!2673 = !DILabel(scope: !2548, name: "done1d", file: !3, line: 244)
!2674 = !DILocation(line: 244, column: 3, scope: !2675)
!2675 = distinct !DILexicalBlock(scope: !2676, file: !3, line: 244, column: 3)
!2676 = distinct !DILexicalBlock(scope: !2548, file: !3, line: 244, column: 3)
!2677 = !DILocation(line: 244, column: 3, scope: !2678)
!2678 = distinct !DILexicalBlock(scope: !2675, file: !3, line: 244, column: 3)
!2679 = !DILocation(line: 244, column: 3, scope: !2680)
!2680 = distinct !DILexicalBlock(scope: !2676, file: !3, line: 244, column: 3)
!2681 = !DILocation(line: 244, column: 3, scope: !2682)
!2682 = distinct !DILexicalBlock(scope: !2680, file: !3, line: 244, column: 3)
!2683 = !DILocation(line: 0, scope: !2682)
!2684 = distinct !{!2684, !2681, !2681, !785}
!2685 = !DILocation(line: 244, column: 3, scope: !2686)
!2686 = distinct !DILexicalBlock(scope: !2682, file: !3, line: 244, column: 3)
!2687 = !DILocation(line: 244, column: 3, scope: !2688)
!2688 = distinct !DILexicalBlock(scope: !2689, file: !3, line: 244, column: 3)
!2689 = distinct !DILexicalBlock(scope: !2686, file: !3, line: 244, column: 3)
!2690 = !DILocation(line: 244, column: 3, scope: !2691)
!2691 = distinct !DILexicalBlock(scope: !2689, file: !3, line: 244, column: 3)
!2692 = !DILocation(line: 244, column: 3, scope: !2693)
!2693 = distinct !DILexicalBlock(scope: !2691, file: !3, line: 244, column: 3)
!2694 = !DILocation(line: 244, column: 3, scope: !2689)
!2695 = !DILocation(line: 244, column: 3, scope: !2696)
!2696 = distinct !DILexicalBlock(scope: !2689, file: !3, line: 244, column: 3)
!2697 = !DILocation(line: 244, column: 3, scope: !2698)
!2698 = distinct !DILexicalBlock(scope: !2686, file: !3, line: 244, column: 3)
!2699 = !DILocation(line: 244, column: 3, scope: !2700)
!2700 = distinct !DILexicalBlock(scope: !2698, file: !3, line: 244, column: 3)
!2701 = !DILocation(line: 244, column: 3, scope: !2702)
!2702 = distinct !DILexicalBlock(scope: !2700, file: !3, line: 244, column: 3)
!2703 = !DILocation(line: 244, column: 3, scope: !2704)
!2704 = distinct !DILexicalBlock(scope: !2700, file: !3, line: 244, column: 3)
!2705 = !DILocation(line: 244, column: 3, scope: !2676)
!2706 = !DILocation(line: 245, column: 5, scope: !2470)
!2707 = !DILocation(line: 245, column: 9, scope: !2470)
!2708 = !DILocation(line: 245, column: 15, scope: !2470)
!2709 = !DILocation(line: 245, column: 20, scope: !2470)
!2710 = !DILocation(line: 245, column: 29, scope: !2470)
!2711 = !DILocation(line: 245, column: 33, scope: !2470)
!2712 = !DILocation(line: 245, column: 3, scope: !2470)
!2713 = !DILocation(line: 246, column: 10, scope: !2470)
!2714 = !DILocation(line: 246, column: 14, scope: !2470)
!2715 = !DILocation(line: 246, column: 16, scope: !2470)
!2716 = !DILocation(line: 246, column: 7, scope: !2470)
!2717 = !DILocation(line: 247, column: 10, scope: !2470)
!2718 = !DILocation(line: 247, column: 14, scope: !2470)
!2719 = !DILocation(line: 247, column: 16, scope: !2470)
!2720 = !DILocation(line: 247, column: 7, scope: !2470)
!2721 = !DILocation(line: 248, column: 7, scope: !2722)
!2722 = distinct !DILexicalBlock(scope: !2470, file: !3, line: 248, column: 7)
!2723 = !DILocation(line: 248, column: 11, scope: !2722)
!2724 = !DILocation(line: 249, column: 4, scope: !2722)
!2725 = !DILocation(line: 249, column: 9, scope: !2722)
!2726 = !DILocation(line: 249, column: 16, scope: !2722)
!2727 = !DILocation(line: 250, column: 3, scope: !2470)
!2728 = distinct !{!2728, !2465, !2729, !785}
!2729 = !DILocation(line: 257, column: 2, scope: !619)
!2730 = !DILabel(scope: !2470, name: "EOF1D", file: !3, line: 251)
!2731 = !DILocation(line: 251, column: 2, scope: !2470)
!2732 = !DILocation(line: 252, column: 3, scope: !2470)
!2733 = !DILocation(line: 252, column: 3, scope: !2734)
!2734 = distinct !DILexicalBlock(scope: !2735, file: !3, line: 252, column: 3)
!2735 = distinct !DILexicalBlock(scope: !2470, file: !3, line: 252, column: 3)
!2736 = !DILocation(line: 252, column: 3, scope: !2737)
!2737 = distinct !DILexicalBlock(scope: !2734, file: !3, line: 252, column: 3)
!2738 = !DILocation(line: 252, column: 3, scope: !2739)
!2739 = distinct !DILexicalBlock(scope: !2735, file: !3, line: 252, column: 3)
!2740 = !DILocation(line: 252, column: 3, scope: !2741)
!2741 = distinct !DILexicalBlock(scope: !2739, file: !3, line: 252, column: 3)
!2742 = !DILocation(line: 0, scope: !2741)
!2743 = distinct !{!2743, !2740, !2740, !785}
!2744 = !DILocation(line: 252, column: 3, scope: !2745)
!2745 = distinct !DILexicalBlock(scope: !2741, file: !3, line: 252, column: 3)
!2746 = !DILocation(line: 252, column: 3, scope: !2747)
!2747 = distinct !DILexicalBlock(scope: !2748, file: !3, line: 252, column: 3)
!2748 = distinct !DILexicalBlock(scope: !2745, file: !3, line: 252, column: 3)
!2749 = !DILocation(line: 252, column: 3, scope: !2750)
!2750 = distinct !DILexicalBlock(scope: !2748, file: !3, line: 252, column: 3)
!2751 = !DILocation(line: 252, column: 3, scope: !2752)
!2752 = distinct !DILexicalBlock(scope: !2750, file: !3, line: 252, column: 3)
!2753 = !DILocation(line: 252, column: 3, scope: !2748)
!2754 = !DILocation(line: 252, column: 3, scope: !2755)
!2755 = distinct !DILexicalBlock(scope: !2748, file: !3, line: 252, column: 3)
!2756 = !DILocation(line: 252, column: 3, scope: !2757)
!2757 = distinct !DILexicalBlock(scope: !2745, file: !3, line: 252, column: 3)
!2758 = !DILocation(line: 252, column: 3, scope: !2759)
!2759 = distinct !DILexicalBlock(scope: !2757, file: !3, line: 252, column: 3)
!2760 = !DILocation(line: 252, column: 3, scope: !2761)
!2761 = distinct !DILexicalBlock(scope: !2759, file: !3, line: 252, column: 3)
!2762 = !DILocation(line: 252, column: 3, scope: !2763)
!2763 = distinct !DILexicalBlock(scope: !2759, file: !3, line: 252, column: 3)
!2764 = !DILocation(line: 252, column: 3, scope: !2735)
!2765 = !DILabel(scope: !2470, name: "EOF1Da", file: !3, line: 253)
!2766 = !DILocation(line: 253, column: 2, scope: !2470)
!2767 = !DILocation(line: 254, column: 5, scope: !2470)
!2768 = !DILocation(line: 254, column: 9, scope: !2470)
!2769 = !DILocation(line: 254, column: 15, scope: !2470)
!2770 = !DILocation(line: 254, column: 20, scope: !2470)
!2771 = !DILocation(line: 254, column: 29, scope: !2470)
!2772 = !DILocation(line: 254, column: 33, scope: !2470)
!2773 = !DILocation(line: 254, column: 3, scope: !2470)
!2774 = !DILocation(line: 255, column: 3, scope: !2470)
!2775 = !DILocation(line: 255, column: 3, scope: !2776)
!2776 = distinct !DILexicalBlock(scope: !2470, file: !3, line: 255, column: 3)
!2777 = !DILocation(line: 256, column: 3, scope: !2470)
!2778 = !DILocation(line: 258, column: 2, scope: !619)
!2779 = !DILocation(line: 258, column: 2, scope: !2780)
!2780 = distinct !DILexicalBlock(scope: !619, file: !3, line: 258, column: 2)
!2781 = !DILocation(line: 259, column: 2, scope: !619)
!2782 = !DILocation(line: 260, column: 1, scope: !619)
!2783 = distinct !DISubprogram(name: "Fax3PreEncode", scope: !3, file: !3, line: 694, type: !208, scopeLine: 695, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !438)
!2784 = !DILocalVariable(name: "tif", arg: 1, scope: !2783, file: !3, line: 694, type: !69)
!2785 = !DILocation(line: 694, column: 21, scope: !2783)
!2786 = !DILocalVariable(name: "s", arg: 2, scope: !2783, file: !3, line: 694, type: !210)
!2787 = !DILocation(line: 694, column: 36, scope: !2783)
!2788 = !DILocalVariable(name: "sp", scope: !2783, file: !3, line: 696, type: !407)
!2789 = !DILocation(line: 696, column: 19, scope: !2783)
!2790 = !DILocation(line: 696, column: 24, scope: !2783)
!2791 = !DILocation(line: 698, column: 9, scope: !2783)
!2792 = !DILocation(line: 699, column: 2, scope: !2793)
!2793 = distinct !DILexicalBlock(scope: !2794, file: !3, line: 699, column: 2)
!2794 = distinct !DILexicalBlock(scope: !2783, file: !3, line: 699, column: 2)
!2795 = !DILocation(line: 700, column: 2, scope: !2783)
!2796 = !DILocation(line: 700, column: 6, scope: !2783)
!2797 = !DILocation(line: 700, column: 10, scope: !2783)
!2798 = !DILocation(line: 701, column: 2, scope: !2783)
!2799 = !DILocation(line: 701, column: 6, scope: !2783)
!2800 = !DILocation(line: 701, column: 11, scope: !2783)
!2801 = !DILocation(line: 702, column: 2, scope: !2783)
!2802 = !DILocation(line: 702, column: 6, scope: !2783)
!2803 = !DILocation(line: 702, column: 10, scope: !2783)
!2804 = !DILocation(line: 708, column: 6, scope: !2805)
!2805 = distinct !DILexicalBlock(scope: !2783, file: !3, line: 708, column: 6)
!2806 = !DILocation(line: 708, column: 10, scope: !2805)
!2807 = !DILocation(line: 709, column: 15, scope: !2805)
!2808 = !DILocation(line: 709, column: 19, scope: !2805)
!2809 = !DILocation(line: 709, column: 34, scope: !2805)
!2810 = !DILocation(line: 709, column: 38, scope: !2805)
!2811 = !DILocation(line: 709, column: 40, scope: !2805)
!2812 = !DILocation(line: 709, column: 3, scope: !2805)
!2813 = !DILocation(line: 710, column: 6, scope: !2814)
!2814 = distinct !DILexicalBlock(scope: !2783, file: !3, line: 710, column: 6)
!2815 = !DILocalVariable(name: "res", scope: !2816, file: !3, line: 711, type: !112)
!2816 = distinct !DILexicalBlock(scope: !2814, file: !3, line: 710, column: 24)
!2817 = !DILocation(line: 711, column: 9, scope: !2816)
!2818 = !DILocation(line: 711, column: 15, scope: !2816)
!2819 = !DILocation(line: 711, column: 20, scope: !2816)
!2820 = !DILocation(line: 711, column: 28, scope: !2816)
!2821 = !DILocation(line: 722, column: 7, scope: !2822)
!2822 = distinct !DILexicalBlock(scope: !2816, file: !3, line: 722, column: 7)
!2823 = !DILocation(line: 722, column: 12, scope: !2822)
!2824 = !DILocation(line: 722, column: 20, scope: !2822)
!2825 = !DILocation(line: 722, column: 38, scope: !2822)
!2826 = !DILocation(line: 723, column: 8, scope: !2822)
!2827 = !DILocation(line: 723, column: 4, scope: !2822)
!2828 = !DILocation(line: 724, column: 15, scope: !2816)
!2829 = !DILocation(line: 724, column: 19, scope: !2816)
!2830 = !DILocation(line: 724, column: 3, scope: !2816)
!2831 = !DILocation(line: 724, column: 7, scope: !2816)
!2832 = !DILocation(line: 724, column: 12, scope: !2816)
!2833 = !DILocation(line: 725, column: 11, scope: !2816)
!2834 = !DILocation(line: 725, column: 15, scope: !2816)
!2835 = !DILocation(line: 725, column: 19, scope: !2816)
!2836 = !DILocation(line: 725, column: 3, scope: !2816)
!2837 = !DILocation(line: 725, column: 7, scope: !2816)
!2838 = !DILocation(line: 725, column: 9, scope: !2816)
!2839 = !DILocation(line: 726, column: 2, scope: !2816)
!2840 = !DILocation(line: 727, column: 11, scope: !2814)
!2841 = !DILocation(line: 727, column: 15, scope: !2814)
!2842 = !DILocation(line: 727, column: 20, scope: !2814)
!2843 = !DILocation(line: 727, column: 3, scope: !2814)
!2844 = !DILocation(line: 727, column: 7, scope: !2814)
!2845 = !DILocation(line: 727, column: 9, scope: !2814)
!2846 = !DILocation(line: 728, column: 2, scope: !2783)
!2847 = distinct !DISubprogram(name: "Fax3PostEncode", scope: !3, file: !3, line: 1050, type: !203, scopeLine: 1051, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !438)
!2848 = !DILocalVariable(name: "tif", arg: 1, scope: !2847, file: !3, line: 1050, type: !69)
!2849 = !DILocation(line: 1050, column: 22, scope: !2847)
!2850 = !DILocalVariable(name: "sp", scope: !2847, file: !3, line: 1052, type: !407)
!2851 = !DILocation(line: 1052, column: 19, scope: !2847)
!2852 = !DILocation(line: 1052, column: 24, scope: !2847)
!2853 = !DILocation(line: 1054, column: 6, scope: !2854)
!2854 = distinct !DILexicalBlock(scope: !2847, file: !3, line: 1054, column: 6)
!2855 = !DILocation(line: 1054, column: 10, scope: !2854)
!2856 = !DILocation(line: 1054, column: 14, scope: !2854)
!2857 = !DILocation(line: 1055, column: 3, scope: !2858)
!2858 = distinct !DILexicalBlock(scope: !2859, file: !3, line: 1055, column: 3)
!2859 = distinct !DILexicalBlock(scope: !2854, file: !3, line: 1055, column: 3)
!2860 = !DILocation(line: 1055, column: 3, scope: !2859)
!2861 = !DILocation(line: 1056, column: 2, scope: !2847)
!2862 = distinct !DISubprogram(name: "Fax3Encode", scope: !3, file: !3, line: 1014, type: !217, scopeLine: 1015, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !438)
!2863 = !DILocalVariable(name: "tif", arg: 1, scope: !2862, file: !3, line: 1014, type: !69)
!2864 = !DILocation(line: 1014, column: 18, scope: !2862)
!2865 = !DILocalVariable(name: "bp", arg: 2, scope: !2862, file: !3, line: 1014, type: !42)
!2866 = !DILocation(line: 1014, column: 32, scope: !2862)
!2867 = !DILocalVariable(name: "cc", arg: 3, scope: !2862, file: !3, line: 1014, type: !199)
!2868 = !DILocation(line: 1014, column: 44, scope: !2862)
!2869 = !DILocalVariable(name: "s", arg: 4, scope: !2862, file: !3, line: 1014, type: !210)
!2870 = !DILocation(line: 1014, column: 58, scope: !2862)
!2871 = !DILocalVariable(name: "sp", scope: !2862, file: !3, line: 1016, type: !407)
!2872 = !DILocation(line: 1016, column: 19, scope: !2862)
!2873 = !DILocation(line: 1016, column: 24, scope: !2862)
!2874 = !DILocation(line: 1018, column: 9, scope: !2862)
!2875 = !DILocation(line: 1019, column: 2, scope: !2862)
!2876 = !DILocation(line: 1019, column: 15, scope: !2862)
!2877 = !DILocation(line: 1019, column: 9, scope: !2862)
!2878 = !DILocation(line: 1019, column: 18, scope: !2862)
!2879 = !DILocation(line: 1020, column: 8, scope: !2880)
!2880 = distinct !DILexicalBlock(scope: !2881, file: !3, line: 1020, column: 7)
!2881 = distinct !DILexicalBlock(scope: !2862, file: !3, line: 1019, column: 23)
!2882 = !DILocation(line: 1020, column: 12, scope: !2880)
!2883 = !DILocation(line: 1020, column: 14, scope: !2880)
!2884 = !DILocation(line: 1020, column: 19, scope: !2880)
!2885 = !DILocation(line: 1020, column: 36, scope: !2880)
!2886 = !DILocation(line: 1021, column: 15, scope: !2880)
!2887 = !DILocation(line: 1021, column: 4, scope: !2880)
!2888 = !DILocation(line: 1022, column: 7, scope: !2889)
!2889 = distinct !DILexicalBlock(scope: !2881, file: !3, line: 1022, column: 7)
!2890 = !DILocation(line: 1023, column: 8, scope: !2891)
!2891 = distinct !DILexicalBlock(scope: !2892, file: !3, line: 1023, column: 8)
!2892 = distinct !DILexicalBlock(scope: !2889, file: !3, line: 1022, column: 25)
!2893 = !DILocation(line: 1023, column: 12, scope: !2891)
!2894 = !DILocation(line: 1023, column: 16, scope: !2891)
!2895 = !DILocation(line: 1024, column: 26, scope: !2896)
!2896 = distinct !DILexicalBlock(scope: !2897, file: !3, line: 1024, column: 9)
!2897 = distinct !DILexicalBlock(scope: !2891, file: !3, line: 1023, column: 26)
!2898 = !DILocation(line: 1024, column: 31, scope: !2896)
!2899 = !DILocation(line: 1024, column: 35, scope: !2896)
!2900 = !DILocation(line: 1024, column: 39, scope: !2896)
!2901 = !DILocation(line: 1024, column: 41, scope: !2896)
!2902 = !DILocation(line: 1024, column: 10, scope: !2896)
!2903 = !DILocation(line: 1024, column: 9, scope: !2896)
!2904 = !DILocation(line: 1025, column: 6, scope: !2896)
!2905 = !DILocation(line: 1026, column: 5, scope: !2897)
!2906 = !DILocation(line: 1026, column: 9, scope: !2897)
!2907 = !DILocation(line: 1026, column: 13, scope: !2897)
!2908 = !DILocation(line: 1027, column: 4, scope: !2897)
!2909 = !DILocation(line: 1028, column: 26, scope: !2910)
!2910 = distinct !DILexicalBlock(scope: !2911, file: !3, line: 1028, column: 9)
!2911 = distinct !DILexicalBlock(scope: !2891, file: !3, line: 1027, column: 11)
!2912 = !DILocation(line: 1028, column: 31, scope: !2910)
!2913 = !DILocation(line: 1028, column: 35, scope: !2910)
!2914 = !DILocation(line: 1028, column: 39, scope: !2910)
!2915 = !DILocation(line: 1028, column: 48, scope: !2910)
!2916 = !DILocation(line: 1028, column: 52, scope: !2910)
!2917 = !DILocation(line: 1028, column: 54, scope: !2910)
!2918 = !DILocation(line: 1028, column: 10, scope: !2910)
!2919 = !DILocation(line: 1028, column: 9, scope: !2910)
!2920 = !DILocation(line: 1029, column: 6, scope: !2910)
!2921 = !DILocation(line: 1030, column: 5, scope: !2911)
!2922 = !DILocation(line: 1030, column: 9, scope: !2911)
!2923 = !DILocation(line: 1030, column: 10, scope: !2911)
!2924 = !DILocation(line: 1032, column: 8, scope: !2925)
!2925 = distinct !DILexicalBlock(scope: !2892, file: !3, line: 1032, column: 8)
!2926 = !DILocation(line: 1032, column: 12, scope: !2925)
!2927 = !DILocation(line: 1032, column: 14, scope: !2925)
!2928 = !DILocation(line: 1033, column: 5, scope: !2929)
!2929 = distinct !DILexicalBlock(scope: !2925, file: !3, line: 1032, column: 20)
!2930 = !DILocation(line: 1033, column: 9, scope: !2929)
!2931 = !DILocation(line: 1033, column: 13, scope: !2929)
!2932 = !DILocation(line: 1034, column: 13, scope: !2929)
!2933 = !DILocation(line: 1034, column: 17, scope: !2929)
!2934 = !DILocation(line: 1034, column: 21, scope: !2929)
!2935 = !DILocation(line: 1034, column: 5, scope: !2929)
!2936 = !DILocation(line: 1034, column: 9, scope: !2929)
!2937 = !DILocation(line: 1034, column: 11, scope: !2929)
!2938 = !DILocation(line: 1035, column: 4, scope: !2929)
!2939 = !DILocation(line: 1036, column: 17, scope: !2925)
!2940 = !DILocation(line: 1036, column: 21, scope: !2925)
!2941 = !DILocation(line: 1036, column: 30, scope: !2925)
!2942 = !DILocation(line: 1036, column: 34, scope: !2925)
!2943 = !DILocation(line: 1036, column: 38, scope: !2925)
!2944 = !DILocation(line: 1036, column: 40, scope: !2925)
!2945 = !DILocation(line: 1036, column: 5, scope: !2925)
!2946 = !DILocation(line: 1037, column: 3, scope: !2892)
!2947 = !DILocation(line: 1038, column: 25, scope: !2948)
!2948 = distinct !DILexicalBlock(scope: !2949, file: !3, line: 1038, column: 8)
!2949 = distinct !DILexicalBlock(scope: !2889, file: !3, line: 1037, column: 10)
!2950 = !DILocation(line: 1038, column: 30, scope: !2948)
!2951 = !DILocation(line: 1038, column: 34, scope: !2948)
!2952 = !DILocation(line: 1038, column: 38, scope: !2948)
!2953 = !DILocation(line: 1038, column: 40, scope: !2948)
!2954 = !DILocation(line: 1038, column: 9, scope: !2948)
!2955 = !DILocation(line: 1038, column: 8, scope: !2948)
!2956 = !DILocation(line: 1039, column: 5, scope: !2948)
!2957 = !DILocation(line: 1041, column: 9, scope: !2881)
!2958 = !DILocation(line: 1041, column: 13, scope: !2881)
!2959 = !DILocation(line: 1041, column: 15, scope: !2881)
!2960 = !DILocation(line: 1041, column: 6, scope: !2881)
!2961 = !DILocation(line: 1042, column: 9, scope: !2881)
!2962 = !DILocation(line: 1042, column: 13, scope: !2881)
!2963 = !DILocation(line: 1042, column: 15, scope: !2881)
!2964 = !DILocation(line: 1042, column: 6, scope: !2881)
!2965 = !DILocation(line: 1043, column: 7, scope: !2966)
!2966 = distinct !DILexicalBlock(scope: !2881, file: !3, line: 1043, column: 7)
!2967 = !DILocation(line: 1043, column: 10, scope: !2966)
!2968 = !DILocation(line: 1044, column: 4, scope: !2966)
!2969 = !DILocation(line: 1044, column: 9, scope: !2966)
!2970 = !DILocation(line: 1044, column: 16, scope: !2966)
!2971 = distinct !{!2971, !2875, !2972, !785}
!2972 = !DILocation(line: 1045, column: 2, scope: !2862)
!2973 = !DILocation(line: 1046, column: 2, scope: !2862)
!2974 = !DILocation(line: 1047, column: 1, scope: !2862)
!2975 = distinct !DISubprogram(name: "Fax3Close", scope: !3, file: !3, line: 1060, type: !227, scopeLine: 1061, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !438)
!2976 = !DILocalVariable(name: "tif", arg: 1, scope: !2975, file: !3, line: 1060, type: !69)
!2977 = !DILocation(line: 1060, column: 17, scope: !2975)
!2978 = !DILocation(line: 1062, column: 7, scope: !2979)
!2979 = distinct !DILexicalBlock(scope: !2975, file: !3, line: 1062, column: 6)
!2980 = !DILocation(line: 1062, column: 23, scope: !2979)
!2981 = !DILocation(line: 1062, column: 28, scope: !2979)
!2982 = !DILocation(line: 1062, column: 45, scope: !2979)
!2983 = !DILocalVariable(name: "sp", scope: !2984, file: !3, line: 1063, type: !407)
!2984 = distinct !DILexicalBlock(scope: !2979, file: !3, line: 1062, column: 51)
!2985 = !DILocation(line: 1063, column: 20, scope: !2984)
!2986 = !DILocation(line: 1063, column: 25, scope: !2984)
!2987 = !DILocalVariable(name: "code", scope: !2984, file: !3, line: 1064, type: !2988)
!2988 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_int", file: !30, line: 35, baseType: !2989)
!2989 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_int", file: !32, line: 33, baseType: !7)
!2990 = !DILocation(line: 1064, column: 9, scope: !2984)
!2991 = !DILocalVariable(name: "length", scope: !2984, file: !3, line: 1065, type: !2988)
!2992 = !DILocation(line: 1065, column: 9, scope: !2984)
!2993 = !DILocalVariable(name: "i", scope: !2984, file: !3, line: 1066, type: !37)
!2994 = !DILocation(line: 1066, column: 7, scope: !2984)
!2995 = !DILocation(line: 1068, column: 7, scope: !2996)
!2996 = distinct !DILexicalBlock(scope: !2984, file: !3, line: 1068, column: 7)
!2997 = !DILocation(line: 1069, column: 12, scope: !2996)
!2998 = !DILocation(line: 1069, column: 16, scope: !2996)
!2999 = !DILocation(line: 1069, column: 24, scope: !2996)
!3000 = !DILocation(line: 1069, column: 28, scope: !2996)
!3001 = !DILocation(line: 1069, column: 32, scope: !2996)
!3002 = !DILocation(line: 1069, column: 21, scope: !2996)
!3003 = !DILocation(line: 1069, column: 9, scope: !2996)
!3004 = !DILocation(line: 1069, column: 49, scope: !2996)
!3005 = !DILocation(line: 1069, column: 4, scope: !2996)
!3006 = !DILocation(line: 1070, column: 10, scope: !3007)
!3007 = distinct !DILexicalBlock(scope: !2984, file: !3, line: 1070, column: 3)
!3008 = !DILocation(line: 1070, column: 8, scope: !3007)
!3009 = !DILocation(line: 1070, column: 15, scope: !3010)
!3010 = distinct !DILexicalBlock(scope: !3007, file: !3, line: 1070, column: 3)
!3011 = !DILocation(line: 1070, column: 17, scope: !3010)
!3012 = !DILocation(line: 1070, column: 3, scope: !3007)
!3013 = !DILocation(line: 1071, column: 16, scope: !3010)
!3014 = !DILocation(line: 1071, column: 21, scope: !3010)
!3015 = !DILocation(line: 1071, column: 27, scope: !3010)
!3016 = !DILocation(line: 1071, column: 4, scope: !3010)
!3017 = !DILocation(line: 1070, column: 23, scope: !3010)
!3018 = !DILocation(line: 1070, column: 3, scope: !3010)
!3019 = distinct !{!3019, !3012, !3020, !785}
!3020 = !DILocation(line: 1071, column: 33, scope: !3007)
!3021 = !DILocation(line: 1072, column: 3, scope: !3022)
!3022 = distinct !DILexicalBlock(scope: !3023, file: !3, line: 1072, column: 3)
!3023 = distinct !DILexicalBlock(scope: !2984, file: !3, line: 1072, column: 3)
!3024 = !DILocation(line: 1072, column: 3, scope: !3023)
!3025 = !DILocation(line: 1073, column: 2, scope: !2984)
!3026 = !DILocation(line: 1074, column: 1, scope: !2975)
!3027 = distinct !DISubprogram(name: "Fax3Cleanup", scope: !3, file: !3, line: 1077, type: !227, scopeLine: 1078, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !438)
!3028 = !DILocalVariable(name: "tif", arg: 1, scope: !3027, file: !3, line: 1077, type: !69)
!3029 = !DILocation(line: 1077, column: 19, scope: !3027)
!3030 = !DILocation(line: 1079, column: 6, scope: !3031)
!3031 = distinct !DILexicalBlock(scope: !3027, file: !3, line: 1079, column: 6)
!3032 = !DILocation(line: 1079, column: 11, scope: !3031)
!3033 = !DILocation(line: 1080, column: 7, scope: !3034)
!3034 = distinct !DILexicalBlock(scope: !3035, file: !3, line: 1080, column: 7)
!3035 = distinct !DILexicalBlock(scope: !3031, file: !3, line: 1079, column: 21)
!3036 = !DILocation(line: 1080, column: 12, scope: !3034)
!3037 = !DILocation(line: 1080, column: 21, scope: !3034)
!3038 = !DILocalVariable(name: "sp", scope: !3039, file: !3, line: 1081, type: !386)
!3039 = distinct !DILexicalBlock(scope: !3034, file: !3, line: 1080, column: 34)
!3040 = !DILocation(line: 1081, column: 21, scope: !3039)
!3041 = !DILocation(line: 1081, column: 26, scope: !3039)
!3042 = !DILocation(line: 1082, column: 8, scope: !3043)
!3043 = distinct !DILexicalBlock(scope: !3039, file: !3, line: 1082, column: 8)
!3044 = !DILocation(line: 1082, column: 12, scope: !3043)
!3045 = !DILocation(line: 1083, column: 15, scope: !3043)
!3046 = !DILocation(line: 1083, column: 19, scope: !3043)
!3047 = !DILocation(line: 1083, column: 5, scope: !3043)
!3048 = !DILocation(line: 1084, column: 3, scope: !3039)
!3049 = !DILocalVariable(name: "sp", scope: !3050, file: !3, line: 1085, type: !407)
!3050 = distinct !DILexicalBlock(scope: !3034, file: !3, line: 1084, column: 10)
!3051 = !DILocation(line: 1085, column: 21, scope: !3050)
!3052 = !DILocation(line: 1085, column: 26, scope: !3050)
!3053 = !DILocation(line: 1086, column: 8, scope: !3054)
!3054 = distinct !DILexicalBlock(scope: !3050, file: !3, line: 1086, column: 8)
!3055 = !DILocation(line: 1086, column: 12, scope: !3054)
!3056 = !DILocation(line: 1087, column: 15, scope: !3054)
!3057 = !DILocation(line: 1087, column: 19, scope: !3054)
!3058 = !DILocation(line: 1087, column: 5, scope: !3054)
!3059 = !DILocation(line: 1089, column: 7, scope: !3060)
!3060 = distinct !DILexicalBlock(scope: !3035, file: !3, line: 1089, column: 7)
!3061 = !DILocation(line: 1089, column: 23, scope: !3060)
!3062 = !DILocation(line: 1090, column: 14, scope: !3060)
!3063 = !DILocation(line: 1090, column: 30, scope: !3060)
!3064 = !DILocation(line: 1090, column: 4, scope: !3060)
!3065 = !DILocation(line: 1091, column: 13, scope: !3035)
!3066 = !DILocation(line: 1091, column: 18, scope: !3035)
!3067 = !DILocation(line: 1091, column: 3, scope: !3035)
!3068 = !DILocation(line: 1092, column: 3, scope: !3035)
!3069 = !DILocation(line: 1092, column: 8, scope: !3035)
!3070 = !DILocation(line: 1092, column: 17, scope: !3035)
!3071 = !DILocation(line: 1093, column: 2, scope: !3035)
!3072 = !DILocation(line: 1094, column: 1, scope: !3027)
!3073 = !DILocalVariable(name: "tif", arg: 1, scope: !586, file: !3, line: 267, type: !69)
!3074 = !DILocation(line: 267, column: 20, scope: !586)
!3075 = !DILocalVariable(name: "buf", arg: 2, scope: !586, file: !3, line: 267, type: !42)
!3076 = !DILocation(line: 267, column: 34, scope: !586)
!3077 = !DILocalVariable(name: "occ", arg: 3, scope: !586, file: !3, line: 267, type: !199)
!3078 = !DILocation(line: 267, column: 47, scope: !586)
!3079 = !DILocalVariable(name: "s", arg: 4, scope: !586, file: !3, line: 267, type: !210)
!3080 = !DILocation(line: 267, column: 62, scope: !586)
!3081 = !DILocalVariable(name: "sp", scope: !586, file: !3, line: 269, type: !386)
!3082 = !DILocation(line: 269, column: 2, scope: !586)
!3083 = !DILocalVariable(name: "a0", scope: !586, file: !3, line: 269, type: !37)
!3084 = !DILocalVariable(name: "lastx", scope: !586, file: !3, line: 269, type: !37)
!3085 = !DILocalVariable(name: "BitAcc", scope: !586, file: !3, line: 269, type: !53)
!3086 = !DILocalVariable(name: "BitsAvail", scope: !586, file: !3, line: 269, type: !37)
!3087 = !DILocalVariable(name: "RunLength", scope: !586, file: !3, line: 269, type: !37)
!3088 = !DILocalVariable(name: "cp", scope: !586, file: !3, line: 269, type: !38)
!3089 = !DILocalVariable(name: "ep", scope: !586, file: !3, line: 269, type: !38)
!3090 = !DILocalVariable(name: "pa", scope: !586, file: !3, line: 269, type: !142)
!3091 = !DILocalVariable(name: "thisrun", scope: !586, file: !3, line: 269, type: !142)
!3092 = !DILocalVariable(name: "EOLcnt", scope: !586, file: !3, line: 269, type: !37)
!3093 = !DILocalVariable(name: "bitmap", scope: !586, file: !3, line: 269, type: !392)
!3094 = !DILocalVariable(name: "TabEnt", scope: !586, file: !3, line: 269, type: !1137)
!3095 = !DILocalVariable(name: "b1", scope: !586, file: !3, line: 269, type: !37)
!3096 = !DILocalVariable(name: "pb", scope: !586, file: !3, line: 269, type: !142)
!3097 = !DILocalVariable(name: "is1D", scope: !586, file: !3, line: 270, type: !37)
!3098 = !DILocation(line: 270, column: 6, scope: !586)
!3099 = !DILocation(line: 272, column: 9, scope: !586)
!3100 = !DILocation(line: 273, column: 2, scope: !586)
!3101 = !DILocation(line: 273, column: 2, scope: !3102)
!3102 = distinct !DILexicalBlock(scope: !586, file: !3, line: 273, column: 2)
!3103 = !DILocation(line: 274, column: 2, scope: !586)
!3104 = !DILocation(line: 274, column: 15, scope: !586)
!3105 = !DILocation(line: 274, column: 9, scope: !586)
!3106 = !DILocation(line: 274, column: 19, scope: !586)
!3107 = !DILocation(line: 275, column: 6, scope: !3108)
!3108 = distinct !DILexicalBlock(scope: !586, file: !3, line: 274, column: 24)
!3109 = !DILocation(line: 276, column: 13, scope: !3108)
!3110 = !DILocation(line: 277, column: 18, scope: !3108)
!3111 = !DILocation(line: 277, column: 22, scope: !3108)
!3112 = !DILocation(line: 277, column: 16, scope: !3108)
!3113 = !DILocation(line: 277, column: 6, scope: !3108)
!3114 = !DILocation(line: 282, column: 3, scope: !3108)
!3115 = !DILocation(line: 282, column: 3, scope: !3116)
!3116 = distinct !DILexicalBlock(scope: !3117, file: !3, line: 282, column: 3)
!3117 = distinct !DILexicalBlock(scope: !3108, file: !3, line: 282, column: 3)
!3118 = !DILocation(line: 282, column: 3, scope: !3119)
!3119 = distinct !DILexicalBlock(scope: !3116, file: !3, line: 282, column: 3)
!3120 = !DILocation(line: 282, column: 3, scope: !3121)
!3121 = distinct !DILexicalBlock(scope: !3122, file: !3, line: 282, column: 3)
!3122 = distinct !DILexicalBlock(scope: !3123, file: !3, line: 282, column: 3)
!3123 = distinct !DILexicalBlock(scope: !3119, file: !3, line: 282, column: 3)
!3124 = !DILocation(line: 282, column: 3, scope: !3125)
!3125 = distinct !DILexicalBlock(scope: !3126, file: !3, line: 282, column: 3)
!3126 = distinct !DILexicalBlock(scope: !3121, file: !3, line: 282, column: 3)
!3127 = !DILocation(line: 282, column: 3, scope: !3128)
!3128 = distinct !DILexicalBlock(scope: !3129, file: !3, line: 282, column: 3)
!3129 = distinct !DILexicalBlock(scope: !3125, file: !3, line: 282, column: 3)
!3130 = !DILocation(line: 282, column: 3, scope: !3131)
!3131 = distinct !DILexicalBlock(scope: !3132, file: !3, line: 282, column: 3)
!3132 = distinct !DILexicalBlock(scope: !3128, file: !3, line: 282, column: 3)
!3133 = !DILocation(line: 282, column: 3, scope: !3132)
!3134 = !DILocation(line: 282, column: 3, scope: !3135)
!3135 = distinct !DILexicalBlock(scope: !3128, file: !3, line: 282, column: 3)
!3136 = !DILocation(line: 282, column: 3, scope: !3137)
!3137 = distinct !DILexicalBlock(scope: !3135, file: !3, line: 282, column: 3)
!3138 = !DILocation(line: 282, column: 3, scope: !3139)
!3139 = distinct !DILexicalBlock(scope: !3140, file: !3, line: 282, column: 3)
!3140 = distinct !DILexicalBlock(scope: !3137, file: !3, line: 282, column: 3)
!3141 = !DILocation(line: 282, column: 3, scope: !3142)
!3142 = distinct !DILexicalBlock(scope: !3139, file: !3, line: 282, column: 3)
!3143 = !DILocation(line: 282, column: 3, scope: !3144)
!3144 = distinct !DILexicalBlock(scope: !3139, file: !3, line: 282, column: 3)
!3145 = !DILocation(line: 282, column: 3, scope: !3140)
!3146 = !DILocation(line: 282, column: 3, scope: !3129)
!3147 = !DILocation(line: 282, column: 3, scope: !3126)
!3148 = !DILocation(line: 282, column: 3, scope: !3149)
!3149 = distinct !DILexicalBlock(scope: !3121, file: !3, line: 282, column: 3)
!3150 = !DILocation(line: 282, column: 3, scope: !3151)
!3151 = distinct !DILexicalBlock(scope: !3121, file: !3, line: 282, column: 3)
!3152 = !DILocation(line: 282, column: 3, scope: !3122)
!3153 = distinct !{!3153, !3154, !3154}
!3154 = !DILocation(line: 282, column: 3, scope: !3123)
!3155 = !DILocation(line: 282, column: 3, scope: !3117)
!3156 = !DILocation(line: 282, column: 3, scope: !3157)
!3157 = distinct !DILexicalBlock(scope: !3158, file: !3, line: 282, column: 3)
!3158 = distinct !DILexicalBlock(scope: !3159, file: !3, line: 282, column: 3)
!3159 = distinct !DILexicalBlock(scope: !3117, file: !3, line: 282, column: 3)
!3160 = !DILocation(line: 282, column: 3, scope: !3161)
!3161 = distinct !DILexicalBlock(scope: !3162, file: !3, line: 282, column: 3)
!3162 = distinct !DILexicalBlock(scope: !3157, file: !3, line: 282, column: 3)
!3163 = !DILocation(line: 282, column: 3, scope: !3164)
!3164 = distinct !DILexicalBlock(scope: !3165, file: !3, line: 282, column: 3)
!3165 = distinct !DILexicalBlock(scope: !3161, file: !3, line: 282, column: 3)
!3166 = !DILocation(line: 282, column: 3, scope: !3167)
!3167 = distinct !DILexicalBlock(scope: !3168, file: !3, line: 282, column: 3)
!3168 = distinct !DILexicalBlock(scope: !3164, file: !3, line: 282, column: 3)
!3169 = !DILocation(line: 282, column: 3, scope: !3168)
!3170 = !DILocation(line: 282, column: 3, scope: !3171)
!3171 = distinct !DILexicalBlock(scope: !3164, file: !3, line: 282, column: 3)
!3172 = !DILocation(line: 282, column: 3, scope: !3165)
!3173 = !DILocation(line: 282, column: 3, scope: !3162)
!3174 = !DILocation(line: 282, column: 3, scope: !3175)
!3175 = distinct !DILexicalBlock(scope: !3157, file: !3, line: 282, column: 3)
!3176 = !DILocation(line: 282, column: 3, scope: !3177)
!3177 = distinct !DILexicalBlock(scope: !3157, file: !3, line: 282, column: 3)
!3178 = !DILocation(line: 282, column: 3, scope: !3158)
!3179 = distinct !{!3179, !3180, !3180}
!3180 = !DILocation(line: 282, column: 3, scope: !3159)
!3181 = !DILocation(line: 282, column: 3, scope: !3182)
!3182 = distinct !DILexicalBlock(scope: !3117, file: !3, line: 282, column: 3)
!3183 = distinct !{!3183, !3155, !3155, !785}
!3184 = !DILocation(line: 282, column: 3, scope: !3185)
!3185 = distinct !DILexicalBlock(scope: !3117, file: !3, line: 282, column: 3)
!3186 = !DILocation(line: 283, column: 3, scope: !3108)
!3187 = !DILocation(line: 283, column: 3, scope: !3188)
!3188 = distinct !DILexicalBlock(scope: !3189, file: !3, line: 283, column: 3)
!3189 = distinct !DILexicalBlock(scope: !3108, file: !3, line: 283, column: 3)
!3190 = !DILocation(line: 283, column: 3, scope: !3191)
!3191 = distinct !DILexicalBlock(scope: !3192, file: !3, line: 283, column: 3)
!3192 = distinct !DILexicalBlock(scope: !3188, file: !3, line: 283, column: 3)
!3193 = !DILocation(line: 283, column: 3, scope: !3194)
!3194 = distinct !DILexicalBlock(scope: !3195, file: !3, line: 283, column: 3)
!3195 = distinct !DILexicalBlock(scope: !3191, file: !3, line: 283, column: 3)
!3196 = !DILocation(line: 283, column: 3, scope: !3195)
!3197 = !DILocation(line: 283, column: 3, scope: !3198)
!3198 = distinct !DILexicalBlock(scope: !3191, file: !3, line: 283, column: 3)
!3199 = !DILocation(line: 283, column: 3, scope: !3192)
!3200 = !DILocation(line: 283, column: 3, scope: !3189)
!3201 = !DILocation(line: 284, column: 10, scope: !3108)
!3202 = !DILocation(line: 284, column: 8, scope: !3108)
!3203 = !DILocation(line: 285, column: 3, scope: !3108)
!3204 = !DILocation(line: 285, column: 3, scope: !3205)
!3205 = distinct !DILexicalBlock(scope: !3108, file: !3, line: 285, column: 3)
!3206 = !DILocation(line: 291, column: 8, scope: !3108)
!3207 = !DILocation(line: 291, column: 12, scope: !3108)
!3208 = !DILocation(line: 291, column: 6, scope: !3108)
!3209 = !DILocation(line: 292, column: 11, scope: !3108)
!3210 = !DILocation(line: 292, column: 8, scope: !3108)
!3211 = !DILocation(line: 292, column: 6, scope: !3108)
!3212 = !DILocation(line: 293, column: 7, scope: !3213)
!3213 = distinct !DILexicalBlock(scope: !3108, file: !3, line: 293, column: 7)
!3214 = !DILocation(line: 294, column: 4, scope: !3213)
!3215 = !DILocation(line: 294, column: 4, scope: !3216)
!3216 = distinct !DILexicalBlock(scope: !3213, file: !3, line: 294, column: 4)
!3217 = !DILocation(line: 294, column: 4, scope: !3218)
!3218 = distinct !DILexicalBlock(scope: !3219, file: !3, line: 294, column: 4)
!3219 = distinct !DILexicalBlock(scope: !3220, file: !3, line: 294, column: 4)
!3220 = distinct !DILexicalBlock(scope: !3216, file: !3, line: 294, column: 4)
!3221 = !DILocation(line: 294, column: 4, scope: !3222)
!3222 = distinct !DILexicalBlock(scope: !3223, file: !3, line: 294, column: 4)
!3223 = distinct !DILexicalBlock(scope: !3224, file: !3, line: 294, column: 4)
!3224 = distinct !DILexicalBlock(scope: !3218, file: !3, line: 294, column: 4)
!3225 = !DILocation(line: 294, column: 4, scope: !3226)
!3226 = distinct !DILexicalBlock(scope: !3222, file: !3, line: 294, column: 4)
!3227 = !DILocation(line: 294, column: 4, scope: !3228)
!3228 = distinct !DILexicalBlock(scope: !3229, file: !3, line: 294, column: 4)
!3229 = distinct !DILexicalBlock(scope: !3226, file: !3, line: 294, column: 4)
!3230 = !DILocation(line: 294, column: 4, scope: !3231)
!3231 = distinct !DILexicalBlock(scope: !3232, file: !3, line: 294, column: 4)
!3232 = distinct !DILexicalBlock(scope: !3228, file: !3, line: 294, column: 4)
!3233 = !DILocation(line: 294, column: 4, scope: !3234)
!3234 = distinct !DILexicalBlock(scope: !3235, file: !3, line: 294, column: 4)
!3235 = distinct !DILexicalBlock(scope: !3231, file: !3, line: 294, column: 4)
!3236 = !DILocation(line: 294, column: 4, scope: !3235)
!3237 = !DILocation(line: 294, column: 4, scope: !3238)
!3238 = distinct !DILexicalBlock(scope: !3231, file: !3, line: 294, column: 4)
!3239 = !DILocation(line: 294, column: 4, scope: !3240)
!3240 = distinct !DILexicalBlock(scope: !3238, file: !3, line: 294, column: 4)
!3241 = !DILocation(line: 294, column: 4, scope: !3242)
!3242 = distinct !DILexicalBlock(scope: !3243, file: !3, line: 294, column: 4)
!3243 = distinct !DILexicalBlock(scope: !3240, file: !3, line: 294, column: 4)
!3244 = !DILocation(line: 294, column: 4, scope: !3245)
!3245 = distinct !DILexicalBlock(scope: !3242, file: !3, line: 294, column: 4)
!3246 = !DILocation(line: 294, column: 4, scope: !3247)
!3247 = distinct !DILexicalBlock(scope: !3242, file: !3, line: 294, column: 4)
!3248 = !DILocation(line: 294, column: 4, scope: !3243)
!3249 = !DILocation(line: 294, column: 4, scope: !3232)
!3250 = !DILocation(line: 294, column: 4, scope: !3229)
!3251 = !DILocation(line: 294, column: 4, scope: !3252)
!3252 = distinct !DILexicalBlock(scope: !3226, file: !3, line: 294, column: 4)
!3253 = !DILocation(line: 294, column: 4, scope: !3254)
!3254 = distinct !DILexicalBlock(scope: !3222, file: !3, line: 294, column: 4)
!3255 = !DILocation(line: 294, column: 4, scope: !3256)
!3256 = distinct !DILexicalBlock(scope: !3254, file: !3, line: 294, column: 4)
!3257 = !DILocation(line: 294, column: 4, scope: !3223)
!3258 = distinct !{!3258, !3259, !3259}
!3259 = !DILocation(line: 294, column: 4, scope: !3224)
!3260 = !DILabel(scope: !3218, name: "doneWhite1d", file: !3, line: 294)
!3261 = !DILocation(line: 294, column: 4, scope: !3262)
!3262 = distinct !DILexicalBlock(scope: !3218, file: !3, line: 294, column: 4)
!3263 = !DILocation(line: 294, column: 4, scope: !3264)
!3264 = distinct !DILexicalBlock(scope: !3265, file: !3, line: 294, column: 4)
!3265 = distinct !DILexicalBlock(scope: !3266, file: !3, line: 294, column: 4)
!3266 = distinct !DILexicalBlock(scope: !3218, file: !3, line: 294, column: 4)
!3267 = !DILocation(line: 294, column: 4, scope: !3268)
!3268 = distinct !DILexicalBlock(scope: !3264, file: !3, line: 294, column: 4)
!3269 = !DILocation(line: 294, column: 4, scope: !3270)
!3270 = distinct !DILexicalBlock(scope: !3271, file: !3, line: 294, column: 4)
!3271 = distinct !DILexicalBlock(scope: !3268, file: !3, line: 294, column: 4)
!3272 = !DILocation(line: 294, column: 4, scope: !3273)
!3273 = distinct !DILexicalBlock(scope: !3274, file: !3, line: 294, column: 4)
!3274 = distinct !DILexicalBlock(scope: !3270, file: !3, line: 294, column: 4)
!3275 = !DILocation(line: 294, column: 4, scope: !3276)
!3276 = distinct !DILexicalBlock(scope: !3277, file: !3, line: 294, column: 4)
!3277 = distinct !DILexicalBlock(scope: !3273, file: !3, line: 294, column: 4)
!3278 = !DILocation(line: 294, column: 4, scope: !3277)
!3279 = !DILocation(line: 294, column: 4, scope: !3280)
!3280 = distinct !DILexicalBlock(scope: !3273, file: !3, line: 294, column: 4)
!3281 = !DILocation(line: 294, column: 4, scope: !3282)
!3282 = distinct !DILexicalBlock(scope: !3280, file: !3, line: 294, column: 4)
!3283 = !DILocation(line: 294, column: 4, scope: !3284)
!3284 = distinct !DILexicalBlock(scope: !3285, file: !3, line: 294, column: 4)
!3285 = distinct !DILexicalBlock(scope: !3282, file: !3, line: 294, column: 4)
!3286 = !DILocation(line: 294, column: 4, scope: !3287)
!3287 = distinct !DILexicalBlock(scope: !3284, file: !3, line: 294, column: 4)
!3288 = !DILocation(line: 294, column: 4, scope: !3289)
!3289 = distinct !DILexicalBlock(scope: !3284, file: !3, line: 294, column: 4)
!3290 = !DILocation(line: 294, column: 4, scope: !3285)
!3291 = !DILocation(line: 294, column: 4, scope: !3274)
!3292 = !DILocation(line: 294, column: 4, scope: !3271)
!3293 = !DILocation(line: 294, column: 4, scope: !3294)
!3294 = distinct !DILexicalBlock(scope: !3268, file: !3, line: 294, column: 4)
!3295 = !DILocation(line: 294, column: 4, scope: !3296)
!3296 = distinct !DILexicalBlock(scope: !3264, file: !3, line: 294, column: 4)
!3297 = !DILocation(line: 294, column: 4, scope: !3298)
!3298 = distinct !DILexicalBlock(scope: !3296, file: !3, line: 294, column: 4)
!3299 = !DILocation(line: 294, column: 4, scope: !3265)
!3300 = distinct !{!3300, !3301, !3301}
!3301 = !DILocation(line: 294, column: 4, scope: !3266)
!3302 = !DILabel(scope: !3218, name: "doneBlack1d", file: !3, line: 294)
!3303 = !DILocation(line: 294, column: 4, scope: !3304)
!3304 = distinct !DILexicalBlock(scope: !3218, file: !3, line: 294, column: 4)
!3305 = !DILocation(line: 294, column: 4, scope: !3219)
!3306 = distinct !{!3306, !3307, !3307}
!3307 = !DILocation(line: 294, column: 4, scope: !3220)
!3308 = !DILabel(scope: !3216, name: "eof1d", file: !3, line: 294)
!3309 = !DILocation(line: 294, column: 4, scope: !3310)
!3310 = distinct !DILexicalBlock(scope: !3311, file: !3, line: 294, column: 4)
!3311 = distinct !DILexicalBlock(scope: !3216, file: !3, line: 294, column: 4)
!3312 = !DILocation(line: 294, column: 4, scope: !3313)
!3313 = distinct !DILexicalBlock(scope: !3310, file: !3, line: 294, column: 4)
!3314 = !DILocation(line: 294, column: 4, scope: !3315)
!3315 = distinct !DILexicalBlock(scope: !3311, file: !3, line: 294, column: 4)
!3316 = !DILocation(line: 294, column: 4, scope: !3317)
!3317 = distinct !DILexicalBlock(scope: !3315, file: !3, line: 294, column: 4)
!3318 = !DILocation(line: 0, scope: !3317)
!3319 = distinct !{!3319, !3316, !3316, !785}
!3320 = !DILocation(line: 294, column: 4, scope: !3321)
!3321 = distinct !DILexicalBlock(scope: !3317, file: !3, line: 294, column: 4)
!3322 = !DILocation(line: 294, column: 4, scope: !3323)
!3323 = distinct !DILexicalBlock(scope: !3324, file: !3, line: 294, column: 4)
!3324 = distinct !DILexicalBlock(scope: !3321, file: !3, line: 294, column: 4)
!3325 = !DILocation(line: 294, column: 4, scope: !3326)
!3326 = distinct !DILexicalBlock(scope: !3324, file: !3, line: 294, column: 4)
!3327 = !DILocation(line: 294, column: 4, scope: !3328)
!3328 = distinct !DILexicalBlock(scope: !3326, file: !3, line: 294, column: 4)
!3329 = !DILocation(line: 294, column: 4, scope: !3324)
!3330 = !DILocation(line: 294, column: 4, scope: !3331)
!3331 = distinct !DILexicalBlock(scope: !3324, file: !3, line: 294, column: 4)
!3332 = !DILocation(line: 294, column: 4, scope: !3333)
!3333 = distinct !DILexicalBlock(scope: !3321, file: !3, line: 294, column: 4)
!3334 = !DILocation(line: 294, column: 4, scope: !3335)
!3335 = distinct !DILexicalBlock(scope: !3333, file: !3, line: 294, column: 4)
!3336 = !DILocation(line: 294, column: 4, scope: !3337)
!3337 = distinct !DILexicalBlock(scope: !3335, file: !3, line: 294, column: 4)
!3338 = !DILocation(line: 294, column: 4, scope: !3339)
!3339 = distinct !DILexicalBlock(scope: !3335, file: !3, line: 294, column: 4)
!3340 = !DILocation(line: 294, column: 4, scope: !3311)
!3341 = !DILabel(scope: !3216, name: "done1d", file: !3, line: 294)
!3342 = !DILocation(line: 294, column: 4, scope: !3343)
!3343 = distinct !DILexicalBlock(scope: !3344, file: !3, line: 294, column: 4)
!3344 = distinct !DILexicalBlock(scope: !3216, file: !3, line: 294, column: 4)
!3345 = !DILocation(line: 294, column: 4, scope: !3346)
!3346 = distinct !DILexicalBlock(scope: !3343, file: !3, line: 294, column: 4)
!3347 = !DILocation(line: 294, column: 4, scope: !3348)
!3348 = distinct !DILexicalBlock(scope: !3344, file: !3, line: 294, column: 4)
!3349 = !DILocation(line: 294, column: 4, scope: !3350)
!3350 = distinct !DILexicalBlock(scope: !3348, file: !3, line: 294, column: 4)
!3351 = !DILocation(line: 0, scope: !3350)
!3352 = distinct !{!3352, !3349, !3349, !785}
!3353 = !DILocation(line: 294, column: 4, scope: !3354)
!3354 = distinct !DILexicalBlock(scope: !3350, file: !3, line: 294, column: 4)
!3355 = !DILocation(line: 294, column: 4, scope: !3356)
!3356 = distinct !DILexicalBlock(scope: !3357, file: !3, line: 294, column: 4)
!3357 = distinct !DILexicalBlock(scope: !3354, file: !3, line: 294, column: 4)
!3358 = !DILocation(line: 294, column: 4, scope: !3359)
!3359 = distinct !DILexicalBlock(scope: !3357, file: !3, line: 294, column: 4)
!3360 = !DILocation(line: 294, column: 4, scope: !3361)
!3361 = distinct !DILexicalBlock(scope: !3359, file: !3, line: 294, column: 4)
!3362 = !DILocation(line: 294, column: 4, scope: !3357)
!3363 = !DILocation(line: 294, column: 4, scope: !3364)
!3364 = distinct !DILexicalBlock(scope: !3357, file: !3, line: 294, column: 4)
!3365 = !DILocation(line: 294, column: 4, scope: !3366)
!3366 = distinct !DILexicalBlock(scope: !3354, file: !3, line: 294, column: 4)
!3367 = !DILocation(line: 294, column: 4, scope: !3368)
!3368 = distinct !DILexicalBlock(scope: !3366, file: !3, line: 294, column: 4)
!3369 = !DILocation(line: 294, column: 4, scope: !3370)
!3370 = distinct !DILexicalBlock(scope: !3368, file: !3, line: 294, column: 4)
!3371 = !DILocation(line: 294, column: 4, scope: !3372)
!3372 = distinct !DILexicalBlock(scope: !3368, file: !3, line: 294, column: 4)
!3373 = !DILocation(line: 294, column: 4, scope: !3344)
!3374 = !DILocation(line: 296, column: 4, scope: !3213)
!3375 = !DILocation(line: 296, column: 4, scope: !3376)
!3376 = distinct !DILexicalBlock(scope: !3213, file: !3, line: 296, column: 4)
!3377 = !DILocation(line: 296, column: 4, scope: !3378)
!3378 = distinct !DILexicalBlock(scope: !3376, file: !3, line: 296, column: 4)
!3379 = !DILocation(line: 296, column: 4, scope: !3380)
!3380 = distinct !DILexicalBlock(scope: !3378, file: !3, line: 296, column: 4)
!3381 = !DILocation(line: 296, column: 4, scope: !3382)
!3382 = distinct !DILexicalBlock(scope: !3383, file: !3, line: 296, column: 4)
!3383 = distinct !DILexicalBlock(scope: !3380, file: !3, line: 296, column: 4)
!3384 = !DILocation(line: 296, column: 4, scope: !3385)
!3385 = distinct !DILexicalBlock(scope: !3386, file: !3, line: 296, column: 4)
!3386 = distinct !DILexicalBlock(scope: !3382, file: !3, line: 296, column: 4)
!3387 = !DILocation(line: 296, column: 4, scope: !3388)
!3388 = distinct !DILexicalBlock(scope: !3389, file: !3, line: 296, column: 4)
!3389 = distinct !DILexicalBlock(scope: !3385, file: !3, line: 296, column: 4)
!3390 = !DILocation(line: 296, column: 4, scope: !3389)
!3391 = !DILocation(line: 296, column: 4, scope: !3392)
!3392 = distinct !DILexicalBlock(scope: !3385, file: !3, line: 296, column: 4)
!3393 = !DILocation(line: 296, column: 4, scope: !3386)
!3394 = !DILocation(line: 296, column: 4, scope: !3383)
!3395 = !DILocation(line: 296, column: 4, scope: !3396)
!3396 = distinct !DILexicalBlock(scope: !3380, file: !3, line: 296, column: 4)
!3397 = !DILocation(line: 296, column: 4, scope: !3398)
!3398 = distinct !DILexicalBlock(scope: !3378, file: !3, line: 296, column: 4)
!3399 = !DILocation(line: 296, column: 4, scope: !3400)
!3400 = distinct !DILexicalBlock(scope: !3401, file: !3, line: 296, column: 4)
!3401 = distinct !DILexicalBlock(scope: !3398, file: !3, line: 296, column: 4)
!3402 = !DILocation(line: 0, scope: !3400)
!3403 = !DILocation(line: 296, column: 4, scope: !3404)
!3404 = distinct !DILexicalBlock(scope: !3400, file: !3, line: 296, column: 4)
!3405 = distinct !{!3405, !3399, !3399, !785}
!3406 = !DILocation(line: 296, column: 4, scope: !3401)
!3407 = !DILocation(line: 296, column: 4, scope: !3408)
!3408 = distinct !DILexicalBlock(scope: !3398, file: !3, line: 296, column: 4)
!3409 = !DILocation(line: 296, column: 4, scope: !3410)
!3410 = distinct !DILexicalBlock(scope: !3408, file: !3, line: 296, column: 4)
!3411 = !DILocation(line: 296, column: 4, scope: !3412)
!3412 = distinct !DILexicalBlock(scope: !3413, file: !3, line: 296, column: 4)
!3413 = distinct !DILexicalBlock(scope: !3414, file: !3, line: 296, column: 4)
!3414 = distinct !DILexicalBlock(scope: !3410, file: !3, line: 296, column: 4)
!3415 = !DILocation(line: 296, column: 4, scope: !3416)
!3416 = distinct !DILexicalBlock(scope: !3412, file: !3, line: 296, column: 4)
!3417 = !DILocation(line: 296, column: 4, scope: !3418)
!3418 = distinct !DILexicalBlock(scope: !3419, file: !3, line: 296, column: 4)
!3419 = distinct !DILexicalBlock(scope: !3416, file: !3, line: 296, column: 4)
!3420 = !DILocation(line: 296, column: 4, scope: !3421)
!3421 = distinct !DILexicalBlock(scope: !3422, file: !3, line: 296, column: 4)
!3422 = distinct !DILexicalBlock(scope: !3418, file: !3, line: 296, column: 4)
!3423 = !DILocation(line: 296, column: 4, scope: !3424)
!3424 = distinct !DILexicalBlock(scope: !3425, file: !3, line: 296, column: 4)
!3425 = distinct !DILexicalBlock(scope: !3421, file: !3, line: 296, column: 4)
!3426 = !DILocation(line: 296, column: 4, scope: !3425)
!3427 = !DILocation(line: 296, column: 4, scope: !3428)
!3428 = distinct !DILexicalBlock(scope: !3421, file: !3, line: 296, column: 4)
!3429 = !DILocation(line: 296, column: 4, scope: !3430)
!3430 = distinct !DILexicalBlock(scope: !3428, file: !3, line: 296, column: 4)
!3431 = !DILocation(line: 296, column: 4, scope: !3432)
!3432 = distinct !DILexicalBlock(scope: !3433, file: !3, line: 296, column: 4)
!3433 = distinct !DILexicalBlock(scope: !3430, file: !3, line: 296, column: 4)
!3434 = !DILocation(line: 296, column: 4, scope: !3435)
!3435 = distinct !DILexicalBlock(scope: !3432, file: !3, line: 296, column: 4)
!3436 = !DILocation(line: 296, column: 4, scope: !3437)
!3437 = distinct !DILexicalBlock(scope: !3432, file: !3, line: 296, column: 4)
!3438 = !DILocation(line: 296, column: 4, scope: !3433)
!3439 = !DILocation(line: 296, column: 4, scope: !3422)
!3440 = !DILocation(line: 296, column: 4, scope: !3419)
!3441 = !DILocation(line: 296, column: 4, scope: !3442)
!3442 = distinct !DILexicalBlock(scope: !3416, file: !3, line: 296, column: 4)
!3443 = !DILocation(line: 296, column: 4, scope: !3444)
!3444 = distinct !DILexicalBlock(scope: !3412, file: !3, line: 296, column: 4)
!3445 = !DILocation(line: 296, column: 4, scope: !3446)
!3446 = distinct !DILexicalBlock(scope: !3444, file: !3, line: 296, column: 4)
!3447 = !DILocation(line: 296, column: 4, scope: !3413)
!3448 = distinct !{!3448, !3449, !3449}
!3449 = !DILocation(line: 296, column: 4, scope: !3414)
!3450 = !DILabel(scope: !3410, name: "doneWhite2da", file: !3, line: 296)
!3451 = !DILocation(line: 296, column: 4, scope: !3452)
!3452 = distinct !DILexicalBlock(scope: !3453, file: !3, line: 296, column: 4)
!3453 = distinct !DILexicalBlock(scope: !3454, file: !3, line: 296, column: 4)
!3454 = distinct !DILexicalBlock(scope: !3410, file: !3, line: 296, column: 4)
!3455 = !DILocation(line: 296, column: 4, scope: !3456)
!3456 = distinct !DILexicalBlock(scope: !3452, file: !3, line: 296, column: 4)
!3457 = !DILocation(line: 296, column: 4, scope: !3458)
!3458 = distinct !DILexicalBlock(scope: !3459, file: !3, line: 296, column: 4)
!3459 = distinct !DILexicalBlock(scope: !3456, file: !3, line: 296, column: 4)
!3460 = !DILocation(line: 296, column: 4, scope: !3461)
!3461 = distinct !DILexicalBlock(scope: !3462, file: !3, line: 296, column: 4)
!3462 = distinct !DILexicalBlock(scope: !3458, file: !3, line: 296, column: 4)
!3463 = !DILocation(line: 296, column: 4, scope: !3464)
!3464 = distinct !DILexicalBlock(scope: !3465, file: !3, line: 296, column: 4)
!3465 = distinct !DILexicalBlock(scope: !3461, file: !3, line: 296, column: 4)
!3466 = !DILocation(line: 296, column: 4, scope: !3465)
!3467 = !DILocation(line: 296, column: 4, scope: !3468)
!3468 = distinct !DILexicalBlock(scope: !3461, file: !3, line: 296, column: 4)
!3469 = !DILocation(line: 296, column: 4, scope: !3470)
!3470 = distinct !DILexicalBlock(scope: !3468, file: !3, line: 296, column: 4)
!3471 = !DILocation(line: 296, column: 4, scope: !3472)
!3472 = distinct !DILexicalBlock(scope: !3473, file: !3, line: 296, column: 4)
!3473 = distinct !DILexicalBlock(scope: !3470, file: !3, line: 296, column: 4)
!3474 = !DILocation(line: 296, column: 4, scope: !3475)
!3475 = distinct !DILexicalBlock(scope: !3472, file: !3, line: 296, column: 4)
!3476 = !DILocation(line: 296, column: 4, scope: !3477)
!3477 = distinct !DILexicalBlock(scope: !3472, file: !3, line: 296, column: 4)
!3478 = !DILocation(line: 296, column: 4, scope: !3473)
!3479 = !DILocation(line: 296, column: 4, scope: !3462)
!3480 = !DILocation(line: 296, column: 4, scope: !3459)
!3481 = !DILocation(line: 296, column: 4, scope: !3482)
!3482 = distinct !DILexicalBlock(scope: !3456, file: !3, line: 296, column: 4)
!3483 = !DILocation(line: 296, column: 4, scope: !3484)
!3484 = distinct !DILexicalBlock(scope: !3452, file: !3, line: 296, column: 4)
!3485 = !DILocation(line: 296, column: 4, scope: !3486)
!3486 = distinct !DILexicalBlock(scope: !3484, file: !3, line: 296, column: 4)
!3487 = !DILocation(line: 296, column: 4, scope: !3453)
!3488 = distinct !{!3488, !3489, !3489}
!3489 = !DILocation(line: 296, column: 4, scope: !3454)
!3490 = !DILabel(scope: !3410, name: "doneBlack2da", file: !3, line: 296)
!3491 = !DILocation(line: 296, column: 4, scope: !3492)
!3492 = distinct !DILexicalBlock(scope: !3408, file: !3, line: 296, column: 4)
!3493 = !DILocation(line: 296, column: 4, scope: !3494)
!3494 = distinct !DILexicalBlock(scope: !3495, file: !3, line: 296, column: 4)
!3495 = distinct !DILexicalBlock(scope: !3496, file: !3, line: 296, column: 4)
!3496 = distinct !DILexicalBlock(scope: !3492, file: !3, line: 296, column: 4)
!3497 = !DILocation(line: 296, column: 4, scope: !3498)
!3498 = distinct !DILexicalBlock(scope: !3494, file: !3, line: 296, column: 4)
!3499 = !DILocation(line: 296, column: 4, scope: !3500)
!3500 = distinct !DILexicalBlock(scope: !3501, file: !3, line: 296, column: 4)
!3501 = distinct !DILexicalBlock(scope: !3498, file: !3, line: 296, column: 4)
!3502 = !DILocation(line: 296, column: 4, scope: !3503)
!3503 = distinct !DILexicalBlock(scope: !3504, file: !3, line: 296, column: 4)
!3504 = distinct !DILexicalBlock(scope: !3500, file: !3, line: 296, column: 4)
!3505 = !DILocation(line: 296, column: 4, scope: !3506)
!3506 = distinct !DILexicalBlock(scope: !3507, file: !3, line: 296, column: 4)
!3507 = distinct !DILexicalBlock(scope: !3503, file: !3, line: 296, column: 4)
!3508 = !DILocation(line: 296, column: 4, scope: !3507)
!3509 = !DILocation(line: 296, column: 4, scope: !3510)
!3510 = distinct !DILexicalBlock(scope: !3503, file: !3, line: 296, column: 4)
!3511 = !DILocation(line: 296, column: 4, scope: !3512)
!3512 = distinct !DILexicalBlock(scope: !3510, file: !3, line: 296, column: 4)
!3513 = !DILocation(line: 296, column: 4, scope: !3514)
!3514 = distinct !DILexicalBlock(scope: !3515, file: !3, line: 296, column: 4)
!3515 = distinct !DILexicalBlock(scope: !3512, file: !3, line: 296, column: 4)
!3516 = !DILocation(line: 296, column: 4, scope: !3517)
!3517 = distinct !DILexicalBlock(scope: !3514, file: !3, line: 296, column: 4)
!3518 = !DILocation(line: 296, column: 4, scope: !3519)
!3519 = distinct !DILexicalBlock(scope: !3514, file: !3, line: 296, column: 4)
!3520 = !DILocation(line: 296, column: 4, scope: !3515)
!3521 = !DILocation(line: 296, column: 4, scope: !3504)
!3522 = !DILocation(line: 296, column: 4, scope: !3501)
!3523 = !DILocation(line: 296, column: 4, scope: !3524)
!3524 = distinct !DILexicalBlock(scope: !3498, file: !3, line: 296, column: 4)
!3525 = !DILocation(line: 296, column: 4, scope: !3526)
!3526 = distinct !DILexicalBlock(scope: !3494, file: !3, line: 296, column: 4)
!3527 = !DILocation(line: 296, column: 4, scope: !3528)
!3528 = distinct !DILexicalBlock(scope: !3526, file: !3, line: 296, column: 4)
!3529 = !DILocation(line: 296, column: 4, scope: !3495)
!3530 = distinct !{!3530, !3531, !3531}
!3531 = !DILocation(line: 296, column: 4, scope: !3496)
!3532 = !DILabel(scope: !3492, name: "doneWhite2db", file: !3, line: 296)
!3533 = !DILocation(line: 296, column: 4, scope: !3534)
!3534 = distinct !DILexicalBlock(scope: !3535, file: !3, line: 296, column: 4)
!3535 = distinct !DILexicalBlock(scope: !3536, file: !3, line: 296, column: 4)
!3536 = distinct !DILexicalBlock(scope: !3492, file: !3, line: 296, column: 4)
!3537 = !DILocation(line: 296, column: 4, scope: !3538)
!3538 = distinct !DILexicalBlock(scope: !3534, file: !3, line: 296, column: 4)
!3539 = !DILocation(line: 296, column: 4, scope: !3540)
!3540 = distinct !DILexicalBlock(scope: !3541, file: !3, line: 296, column: 4)
!3541 = distinct !DILexicalBlock(scope: !3538, file: !3, line: 296, column: 4)
!3542 = !DILocation(line: 296, column: 4, scope: !3543)
!3543 = distinct !DILexicalBlock(scope: !3544, file: !3, line: 296, column: 4)
!3544 = distinct !DILexicalBlock(scope: !3540, file: !3, line: 296, column: 4)
!3545 = !DILocation(line: 296, column: 4, scope: !3546)
!3546 = distinct !DILexicalBlock(scope: !3547, file: !3, line: 296, column: 4)
!3547 = distinct !DILexicalBlock(scope: !3543, file: !3, line: 296, column: 4)
!3548 = !DILocation(line: 296, column: 4, scope: !3547)
!3549 = !DILocation(line: 296, column: 4, scope: !3550)
!3550 = distinct !DILexicalBlock(scope: !3543, file: !3, line: 296, column: 4)
!3551 = !DILocation(line: 296, column: 4, scope: !3552)
!3552 = distinct !DILexicalBlock(scope: !3550, file: !3, line: 296, column: 4)
!3553 = !DILocation(line: 296, column: 4, scope: !3554)
!3554 = distinct !DILexicalBlock(scope: !3555, file: !3, line: 296, column: 4)
!3555 = distinct !DILexicalBlock(scope: !3552, file: !3, line: 296, column: 4)
!3556 = !DILocation(line: 296, column: 4, scope: !3557)
!3557 = distinct !DILexicalBlock(scope: !3554, file: !3, line: 296, column: 4)
!3558 = !DILocation(line: 296, column: 4, scope: !3559)
!3559 = distinct !DILexicalBlock(scope: !3554, file: !3, line: 296, column: 4)
!3560 = !DILocation(line: 296, column: 4, scope: !3555)
!3561 = !DILocation(line: 296, column: 4, scope: !3544)
!3562 = !DILocation(line: 296, column: 4, scope: !3541)
!3563 = !DILocation(line: 296, column: 4, scope: !3564)
!3564 = distinct !DILexicalBlock(scope: !3538, file: !3, line: 296, column: 4)
!3565 = !DILocation(line: 296, column: 4, scope: !3566)
!3566 = distinct !DILexicalBlock(scope: !3534, file: !3, line: 296, column: 4)
!3567 = !DILocation(line: 296, column: 4, scope: !3568)
!3568 = distinct !DILexicalBlock(scope: !3566, file: !3, line: 296, column: 4)
!3569 = !DILocation(line: 296, column: 4, scope: !3535)
!3570 = distinct !{!3570, !3571, !3571}
!3571 = !DILocation(line: 296, column: 4, scope: !3536)
!3572 = !DILabel(scope: !3492, name: "doneBlack2db", file: !3, line: 296)
!3573 = !DILocation(line: 296, column: 4, scope: !3574)
!3574 = distinct !DILexicalBlock(scope: !3575, file: !3, line: 296, column: 4)
!3575 = distinct !DILexicalBlock(scope: !3398, file: !3, line: 296, column: 4)
!3576 = !DILocation(line: 0, scope: !3574)
!3577 = !DILocation(line: 296, column: 4, scope: !3578)
!3578 = distinct !DILexicalBlock(scope: !3574, file: !3, line: 296, column: 4)
!3579 = distinct !{!3579, !3573, !3573, !785}
!3580 = !DILocation(line: 296, column: 4, scope: !3575)
!3581 = !DILocation(line: 296, column: 4, scope: !3582)
!3582 = distinct !DILexicalBlock(scope: !3583, file: !3, line: 296, column: 4)
!3583 = distinct !DILexicalBlock(scope: !3398, file: !3, line: 296, column: 4)
!3584 = !DILocation(line: 0, scope: !3582)
!3585 = !DILocation(line: 296, column: 4, scope: !3586)
!3586 = distinct !DILexicalBlock(scope: !3582, file: !3, line: 296, column: 4)
!3587 = distinct !{!3587, !3581, !3581, !785}
!3588 = !DILocation(line: 296, column: 4, scope: !3583)
!3589 = !DILocation(line: 296, column: 4, scope: !3590)
!3590 = distinct !DILexicalBlock(scope: !3398, file: !3, line: 296, column: 4)
!3591 = !DILocation(line: 296, column: 4, scope: !3592)
!3592 = distinct !DILexicalBlock(scope: !3593, file: !3, line: 296, column: 4)
!3593 = distinct !DILexicalBlock(scope: !3398, file: !3, line: 296, column: 4)
!3594 = !DILocation(line: 0, scope: !3592)
!3595 = !DILocation(line: 296, column: 4, scope: !3596)
!3596 = distinct !DILexicalBlock(scope: !3592, file: !3, line: 296, column: 4)
!3597 = distinct !{!3597, !3591, !3591, !785}
!3598 = !DILocation(line: 296, column: 4, scope: !3593)
!3599 = !DILocation(line: 296, column: 4, scope: !3600)
!3600 = distinct !DILexicalBlock(scope: !3398, file: !3, line: 296, column: 4)
!3601 = !DILocation(line: 296, column: 4, scope: !3602)
!3602 = distinct !DILexicalBlock(scope: !3603, file: !3, line: 296, column: 4)
!3603 = distinct !DILexicalBlock(scope: !3398, file: !3, line: 296, column: 4)
!3604 = !DILocation(line: 0, scope: !3602)
!3605 = !DILocation(line: 296, column: 4, scope: !3606)
!3606 = distinct !DILexicalBlock(scope: !3602, file: !3, line: 296, column: 4)
!3607 = distinct !{!3607, !3601, !3601, !785}
!3608 = !DILocation(line: 296, column: 4, scope: !3603)
!3609 = !DILocation(line: 296, column: 4, scope: !3610)
!3610 = distinct !DILexicalBlock(scope: !3398, file: !3, line: 296, column: 4)
!3611 = !DILocation(line: 296, column: 4, scope: !3612)
!3612 = distinct !DILexicalBlock(scope: !3613, file: !3, line: 296, column: 4)
!3613 = distinct !DILexicalBlock(scope: !3398, file: !3, line: 296, column: 4)
!3614 = !DILocation(line: 296, column: 4, scope: !3615)
!3615 = distinct !DILexicalBlock(scope: !3616, file: !3, line: 296, column: 4)
!3616 = distinct !DILexicalBlock(scope: !3612, file: !3, line: 296, column: 4)
!3617 = !DILocation(line: 296, column: 4, scope: !3618)
!3618 = distinct !DILexicalBlock(scope: !3619, file: !3, line: 296, column: 4)
!3619 = distinct !DILexicalBlock(scope: !3615, file: !3, line: 296, column: 4)
!3620 = !DILocation(line: 296, column: 4, scope: !3619)
!3621 = !DILocation(line: 296, column: 4, scope: !3622)
!3622 = distinct !DILexicalBlock(scope: !3615, file: !3, line: 296, column: 4)
!3623 = !DILocation(line: 296, column: 4, scope: !3616)
!3624 = !DILocation(line: 296, column: 4, scope: !3613)
!3625 = !DILocation(line: 296, column: 4, scope: !3626)
!3626 = distinct !DILexicalBlock(scope: !3398, file: !3, line: 296, column: 4)
!3627 = !DILabel(scope: !3398, name: "badMain2d", file: !3, line: 296)
!3628 = !DILabel(scope: !3398, name: "badBlack2d", file: !3, line: 296)
!3629 = !DILabel(scope: !3398, name: "badWhite2d", file: !3, line: 296)
!3630 = !DILabel(scope: !3398, name: "eof2d", file: !3, line: 296)
!3631 = !DILocation(line: 296, column: 4, scope: !3632)
!3632 = distinct !DILexicalBlock(scope: !3633, file: !3, line: 296, column: 4)
!3633 = distinct !DILexicalBlock(scope: !3398, file: !3, line: 296, column: 4)
!3634 = !DILocation(line: 296, column: 4, scope: !3635)
!3635 = distinct !DILexicalBlock(scope: !3632, file: !3, line: 296, column: 4)
!3636 = !DILocation(line: 296, column: 4, scope: !3637)
!3637 = distinct !DILexicalBlock(scope: !3633, file: !3, line: 296, column: 4)
!3638 = !DILocation(line: 296, column: 4, scope: !3639)
!3639 = distinct !DILexicalBlock(scope: !3637, file: !3, line: 296, column: 4)
!3640 = !DILocation(line: 0, scope: !3639)
!3641 = distinct !{!3641, !3638, !3638, !785}
!3642 = !DILocation(line: 296, column: 4, scope: !3643)
!3643 = distinct !DILexicalBlock(scope: !3639, file: !3, line: 296, column: 4)
!3644 = !DILocation(line: 296, column: 4, scope: !3645)
!3645 = distinct !DILexicalBlock(scope: !3646, file: !3, line: 296, column: 4)
!3646 = distinct !DILexicalBlock(scope: !3643, file: !3, line: 296, column: 4)
!3647 = !DILocation(line: 296, column: 4, scope: !3648)
!3648 = distinct !DILexicalBlock(scope: !3646, file: !3, line: 296, column: 4)
!3649 = !DILocation(line: 296, column: 4, scope: !3650)
!3650 = distinct !DILexicalBlock(scope: !3648, file: !3, line: 296, column: 4)
!3651 = !DILocation(line: 296, column: 4, scope: !3646)
!3652 = !DILocation(line: 296, column: 4, scope: !3653)
!3653 = distinct !DILexicalBlock(scope: !3646, file: !3, line: 296, column: 4)
!3654 = !DILocation(line: 296, column: 4, scope: !3655)
!3655 = distinct !DILexicalBlock(scope: !3643, file: !3, line: 296, column: 4)
!3656 = !DILocation(line: 296, column: 4, scope: !3657)
!3657 = distinct !DILexicalBlock(scope: !3655, file: !3, line: 296, column: 4)
!3658 = !DILocation(line: 296, column: 4, scope: !3659)
!3659 = distinct !DILexicalBlock(scope: !3657, file: !3, line: 296, column: 4)
!3660 = !DILocation(line: 296, column: 4, scope: !3661)
!3661 = distinct !DILexicalBlock(scope: !3657, file: !3, line: 296, column: 4)
!3662 = !DILocation(line: 296, column: 4, scope: !3633)
!3663 = distinct !{!3663, !3375, !3375, !785}
!3664 = !DILocation(line: 296, column: 4, scope: !3665)
!3665 = distinct !DILexicalBlock(scope: !3376, file: !3, line: 296, column: 4)
!3666 = !DILocation(line: 296, column: 4, scope: !3667)
!3667 = distinct !DILexicalBlock(scope: !3668, file: !3, line: 296, column: 4)
!3668 = distinct !DILexicalBlock(scope: !3665, file: !3, line: 296, column: 4)
!3669 = !DILocation(line: 296, column: 4, scope: !3670)
!3670 = distinct !DILexicalBlock(scope: !3667, file: !3, line: 296, column: 4)
!3671 = !DILocation(line: 296, column: 4, scope: !3672)
!3672 = distinct !DILexicalBlock(scope: !3673, file: !3, line: 296, column: 4)
!3673 = distinct !DILexicalBlock(scope: !3670, file: !3, line: 296, column: 4)
!3674 = !DILocation(line: 296, column: 4, scope: !3675)
!3675 = distinct !DILexicalBlock(scope: !3676, file: !3, line: 296, column: 4)
!3676 = distinct !DILexicalBlock(scope: !3672, file: !3, line: 296, column: 4)
!3677 = !DILocation(line: 296, column: 4, scope: !3678)
!3678 = distinct !DILexicalBlock(scope: !3679, file: !3, line: 296, column: 4)
!3679 = distinct !DILexicalBlock(scope: !3675, file: !3, line: 296, column: 4)
!3680 = !DILocation(line: 296, column: 4, scope: !3679)
!3681 = !DILocation(line: 296, column: 4, scope: !3682)
!3682 = distinct !DILexicalBlock(scope: !3675, file: !3, line: 296, column: 4)
!3683 = !DILocation(line: 296, column: 4, scope: !3676)
!3684 = !DILocation(line: 296, column: 4, scope: !3673)
!3685 = !DILocation(line: 296, column: 4, scope: !3686)
!3686 = distinct !DILexicalBlock(scope: !3670, file: !3, line: 296, column: 4)
!3687 = !DILocation(line: 296, column: 4, scope: !3688)
!3688 = distinct !DILexicalBlock(scope: !3670, file: !3, line: 296, column: 4)
!3689 = !DILocation(line: 296, column: 4, scope: !3668)
!3690 = !DILocation(line: 296, column: 4, scope: !3691)
!3691 = distinct !DILexicalBlock(scope: !3668, file: !3, line: 296, column: 4)
!3692 = !DILabel(scope: !3376, name: "eol2d", file: !3, line: 296)
!3693 = !DILocation(line: 296, column: 4, scope: !3694)
!3694 = distinct !DILexicalBlock(scope: !3695, file: !3, line: 296, column: 4)
!3695 = distinct !DILexicalBlock(scope: !3376, file: !3, line: 296, column: 4)
!3696 = !DILocation(line: 296, column: 4, scope: !3697)
!3697 = distinct !DILexicalBlock(scope: !3694, file: !3, line: 296, column: 4)
!3698 = !DILocation(line: 296, column: 4, scope: !3699)
!3699 = distinct !DILexicalBlock(scope: !3695, file: !3, line: 296, column: 4)
!3700 = !DILocation(line: 296, column: 4, scope: !3701)
!3701 = distinct !DILexicalBlock(scope: !3699, file: !3, line: 296, column: 4)
!3702 = !DILocation(line: 0, scope: !3701)
!3703 = distinct !{!3703, !3700, !3700, !785}
!3704 = !DILocation(line: 296, column: 4, scope: !3705)
!3705 = distinct !DILexicalBlock(scope: !3701, file: !3, line: 296, column: 4)
!3706 = !DILocation(line: 296, column: 4, scope: !3707)
!3707 = distinct !DILexicalBlock(scope: !3708, file: !3, line: 296, column: 4)
!3708 = distinct !DILexicalBlock(scope: !3705, file: !3, line: 296, column: 4)
!3709 = !DILocation(line: 296, column: 4, scope: !3710)
!3710 = distinct !DILexicalBlock(scope: !3708, file: !3, line: 296, column: 4)
!3711 = !DILocation(line: 296, column: 4, scope: !3712)
!3712 = distinct !DILexicalBlock(scope: !3710, file: !3, line: 296, column: 4)
!3713 = !DILocation(line: 296, column: 4, scope: !3708)
!3714 = !DILocation(line: 296, column: 4, scope: !3715)
!3715 = distinct !DILexicalBlock(scope: !3708, file: !3, line: 296, column: 4)
!3716 = !DILocation(line: 296, column: 4, scope: !3717)
!3717 = distinct !DILexicalBlock(scope: !3705, file: !3, line: 296, column: 4)
!3718 = !DILocation(line: 296, column: 4, scope: !3719)
!3719 = distinct !DILexicalBlock(scope: !3717, file: !3, line: 296, column: 4)
!3720 = !DILocation(line: 296, column: 4, scope: !3721)
!3721 = distinct !DILexicalBlock(scope: !3719, file: !3, line: 296, column: 4)
!3722 = !DILocation(line: 296, column: 4, scope: !3723)
!3723 = distinct !DILexicalBlock(scope: !3719, file: !3, line: 296, column: 4)
!3724 = !DILocation(line: 296, column: 4, scope: !3695)
!3725 = !DILocation(line: 297, column: 5, scope: !3108)
!3726 = !DILocation(line: 297, column: 9, scope: !3108)
!3727 = !DILocation(line: 297, column: 15, scope: !3108)
!3728 = !DILocation(line: 297, column: 20, scope: !3108)
!3729 = !DILocation(line: 297, column: 29, scope: !3108)
!3730 = !DILocation(line: 297, column: 33, scope: !3108)
!3731 = !DILocation(line: 297, column: 3, scope: !3108)
!3732 = !DILocation(line: 298, column: 3, scope: !3108)
!3733 = !DILocation(line: 298, column: 3, scope: !3734)
!3734 = distinct !DILexicalBlock(scope: !3108, file: !3, line: 298, column: 3)
!3735 = !DILocalVariable(name: "x", scope: !3736, file: !3, line: 299, type: !142)
!3736 = distinct !DILexicalBlock(scope: !3108, file: !3, line: 299, column: 3)
!3737 = !DILocation(line: 299, column: 3, scope: !3736)
!3738 = !DILocation(line: 300, column: 10, scope: !3108)
!3739 = !DILocation(line: 300, column: 14, scope: !3108)
!3740 = !DILocation(line: 300, column: 16, scope: !3108)
!3741 = !DILocation(line: 300, column: 7, scope: !3108)
!3742 = !DILocation(line: 301, column: 10, scope: !3108)
!3743 = !DILocation(line: 301, column: 14, scope: !3108)
!3744 = !DILocation(line: 301, column: 16, scope: !3108)
!3745 = !DILocation(line: 301, column: 7, scope: !3108)
!3746 = !DILocation(line: 302, column: 7, scope: !3747)
!3747 = distinct !DILexicalBlock(scope: !3108, file: !3, line: 302, column: 7)
!3748 = !DILocation(line: 302, column: 11, scope: !3747)
!3749 = !DILocation(line: 303, column: 4, scope: !3747)
!3750 = !DILocation(line: 303, column: 9, scope: !3747)
!3751 = !DILocation(line: 303, column: 16, scope: !3747)
!3752 = !DILocation(line: 304, column: 3, scope: !3108)
!3753 = distinct !{!3753, !3103, !3754, !785}
!3754 = !DILocation(line: 311, column: 2, scope: !586)
!3755 = !DILabel(scope: !3108, name: "EOF2D", file: !3, line: 305)
!3756 = !DILocation(line: 305, column: 2, scope: !3108)
!3757 = !DILocation(line: 306, column: 3, scope: !3108)
!3758 = !DILocation(line: 306, column: 3, scope: !3759)
!3759 = distinct !DILexicalBlock(scope: !3760, file: !3, line: 306, column: 3)
!3760 = distinct !DILexicalBlock(scope: !3108, file: !3, line: 306, column: 3)
!3761 = !DILocation(line: 306, column: 3, scope: !3762)
!3762 = distinct !DILexicalBlock(scope: !3759, file: !3, line: 306, column: 3)
!3763 = !DILocation(line: 306, column: 3, scope: !3764)
!3764 = distinct !DILexicalBlock(scope: !3760, file: !3, line: 306, column: 3)
!3765 = !DILocation(line: 306, column: 3, scope: !3766)
!3766 = distinct !DILexicalBlock(scope: !3764, file: !3, line: 306, column: 3)
!3767 = !DILocation(line: 0, scope: !3766)
!3768 = distinct !{!3768, !3765, !3765, !785}
!3769 = !DILocation(line: 306, column: 3, scope: !3770)
!3770 = distinct !DILexicalBlock(scope: !3766, file: !3, line: 306, column: 3)
!3771 = !DILocation(line: 306, column: 3, scope: !3772)
!3772 = distinct !DILexicalBlock(scope: !3773, file: !3, line: 306, column: 3)
!3773 = distinct !DILexicalBlock(scope: !3770, file: !3, line: 306, column: 3)
!3774 = !DILocation(line: 306, column: 3, scope: !3775)
!3775 = distinct !DILexicalBlock(scope: !3773, file: !3, line: 306, column: 3)
!3776 = !DILocation(line: 306, column: 3, scope: !3777)
!3777 = distinct !DILexicalBlock(scope: !3775, file: !3, line: 306, column: 3)
!3778 = !DILocation(line: 306, column: 3, scope: !3773)
!3779 = !DILocation(line: 306, column: 3, scope: !3780)
!3780 = distinct !DILexicalBlock(scope: !3773, file: !3, line: 306, column: 3)
!3781 = !DILocation(line: 306, column: 3, scope: !3782)
!3782 = distinct !DILexicalBlock(scope: !3770, file: !3, line: 306, column: 3)
!3783 = !DILocation(line: 306, column: 3, scope: !3784)
!3784 = distinct !DILexicalBlock(scope: !3782, file: !3, line: 306, column: 3)
!3785 = !DILocation(line: 306, column: 3, scope: !3786)
!3786 = distinct !DILexicalBlock(scope: !3784, file: !3, line: 306, column: 3)
!3787 = !DILocation(line: 306, column: 3, scope: !3788)
!3788 = distinct !DILexicalBlock(scope: !3784, file: !3, line: 306, column: 3)
!3789 = !DILocation(line: 306, column: 3, scope: !3760)
!3790 = !DILabel(scope: !3108, name: "EOF2Da", file: !3, line: 307)
!3791 = !DILocation(line: 307, column: 2, scope: !3108)
!3792 = !DILocation(line: 308, column: 5, scope: !3108)
!3793 = !DILocation(line: 308, column: 9, scope: !3108)
!3794 = !DILocation(line: 308, column: 15, scope: !3108)
!3795 = !DILocation(line: 308, column: 20, scope: !3108)
!3796 = !DILocation(line: 308, column: 29, scope: !3108)
!3797 = !DILocation(line: 308, column: 33, scope: !3108)
!3798 = !DILocation(line: 308, column: 3, scope: !3108)
!3799 = !DILocation(line: 309, column: 3, scope: !3108)
!3800 = !DILocation(line: 309, column: 3, scope: !3801)
!3801 = distinct !DILexicalBlock(scope: !3108, file: !3, line: 309, column: 3)
!3802 = !DILocation(line: 310, column: 3, scope: !3108)
!3803 = !DILocation(line: 312, column: 2, scope: !586)
!3804 = !DILocation(line: 312, column: 2, scope: !3805)
!3805 = distinct !DILexicalBlock(scope: !586, file: !3, line: 312, column: 2)
!3806 = !DILocation(line: 313, column: 2, scope: !586)
!3807 = !DILocation(line: 314, column: 1, scope: !586)
!3808 = distinct !DISubprogram(name: "Fax3Unexpected", scope: !3, file: !3, line: 187, type: !3809, scopeLine: 188, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !438)
!3809 = !DISubroutineType(types: !3810)
!3810 = !{null, !2129, !69, !53}
!3811 = !DILocalVariable(name: "module", arg: 1, scope: !3808, file: !3, line: 187, type: !2129)
!3812 = !DILocation(line: 187, column: 28, scope: !3808)
!3813 = !DILocalVariable(name: "tif", arg: 2, scope: !3808, file: !3, line: 187, type: !69)
!3814 = !DILocation(line: 187, column: 42, scope: !3808)
!3815 = !DILocalVariable(name: "a0", arg: 3, scope: !3808, file: !3, line: 187, type: !53)
!3816 = !DILocation(line: 187, column: 54, scope: !3808)
!3817 = !DILocation(line: 189, column: 12, scope: !3808)
!3818 = !DILocation(line: 190, column: 6, scope: !3808)
!3819 = !DILocation(line: 190, column: 11, scope: !3808)
!3820 = !DILocation(line: 190, column: 21, scope: !3808)
!3821 = !DILocation(line: 190, column: 26, scope: !3808)
!3822 = !DILocation(line: 190, column: 44, scope: !3808)
!3823 = !DILocation(line: 190, column: 35, scope: !3808)
!3824 = !DILocation(line: 189, column: 2, scope: !3808)
!3825 = !DILocation(line: 191, column: 1, scope: !3808)
!3826 = distinct !DISubprogram(name: "Fax3PrematureEOF", scope: !3, file: !3, line: 214, type: !3809, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !438)
!3827 = !DILocalVariable(name: "module", arg: 1, scope: !3826, file: !3, line: 214, type: !2129)
!3828 = !DILocation(line: 214, column: 30, scope: !3826)
!3829 = !DILocalVariable(name: "tif", arg: 2, scope: !3826, file: !3, line: 214, type: !69)
!3830 = !DILocation(line: 214, column: 44, scope: !3826)
!3831 = !DILocalVariable(name: "a0", arg: 3, scope: !3826, file: !3, line: 214, type: !53)
!3832 = !DILocation(line: 214, column: 56, scope: !3826)
!3833 = !DILocation(line: 216, column: 14, scope: !3826)
!3834 = !DILocation(line: 217, column: 6, scope: !3826)
!3835 = !DILocation(line: 217, column: 11, scope: !3826)
!3836 = !DILocation(line: 217, column: 21, scope: !3826)
!3837 = !DILocation(line: 217, column: 26, scope: !3826)
!3838 = !DILocation(line: 217, column: 44, scope: !3826)
!3839 = !DILocation(line: 217, column: 35, scope: !3826)
!3840 = !DILocation(line: 216, column: 2, scope: !3826)
!3841 = !DILocation(line: 218, column: 1, scope: !3826)
!3842 = distinct !DISubprogram(name: "Fax3BadLength", scope: !3, file: !3, line: 204, type: !3843, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !438)
!3843 = !DISubroutineType(types: !3844)
!3844 = !{null, !2129, !69, !53, !53}
!3845 = !DILocalVariable(name: "module", arg: 1, scope: !3842, file: !3, line: 204, type: !2129)
!3846 = !DILocation(line: 204, column: 27, scope: !3842)
!3847 = !DILocalVariable(name: "tif", arg: 2, scope: !3842, file: !3, line: 204, type: !69)
!3848 = !DILocation(line: 204, column: 41, scope: !3842)
!3849 = !DILocalVariable(name: "a0", arg: 3, scope: !3842, file: !3, line: 204, type: !53)
!3850 = !DILocation(line: 204, column: 53, scope: !3842)
!3851 = !DILocalVariable(name: "lastx", arg: 4, scope: !3842, file: !3, line: 204, type: !53)
!3852 = !DILocation(line: 204, column: 64, scope: !3842)
!3853 = !DILocation(line: 206, column: 14, scope: !3842)
!3854 = !DILocation(line: 207, column: 6, scope: !3842)
!3855 = !DILocation(line: 207, column: 11, scope: !3842)
!3856 = !DILocation(line: 208, column: 6, scope: !3842)
!3857 = !DILocation(line: 208, column: 11, scope: !3842)
!3858 = !DILocation(line: 208, column: 9, scope: !3842)
!3859 = !DILocation(line: 209, column: 6, scope: !3842)
!3860 = !DILocation(line: 209, column: 11, scope: !3842)
!3861 = !DILocation(line: 209, column: 29, scope: !3842)
!3862 = !DILocation(line: 209, column: 20, scope: !3842)
!3863 = !DILocation(line: 209, column: 42, scope: !3842)
!3864 = !DILocation(line: 209, column: 33, scope: !3842)
!3865 = !DILocation(line: 206, column: 2, scope: !3842)
!3866 = !DILocation(line: 210, column: 1, scope: !3842)
!3867 = distinct !DISubprogram(name: "Fax3Extension", scope: !3, file: !3, line: 195, type: !3809, scopeLine: 196, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !438)
!3868 = !DILocalVariable(name: "module", arg: 1, scope: !3867, file: !3, line: 195, type: !2129)
!3869 = !DILocation(line: 195, column: 27, scope: !3867)
!3870 = !DILocalVariable(name: "tif", arg: 2, scope: !3867, file: !3, line: 195, type: !69)
!3871 = !DILocation(line: 195, column: 41, scope: !3867)
!3872 = !DILocalVariable(name: "a0", arg: 3, scope: !3867, file: !3, line: 195, type: !53)
!3873 = !DILocation(line: 195, column: 53, scope: !3867)
!3874 = !DILocation(line: 197, column: 12, scope: !3867)
!3875 = !DILocation(line: 199, column: 6, scope: !3867)
!3876 = !DILocation(line: 199, column: 11, scope: !3867)
!3877 = !DILocation(line: 199, column: 21, scope: !3867)
!3878 = !DILocation(line: 199, column: 26, scope: !3867)
!3879 = !DILocation(line: 199, column: 44, scope: !3867)
!3880 = !DILocation(line: 199, column: 35, scope: !3867)
!3881 = !DILocation(line: 197, column: 2, scope: !3867)
!3882 = !DILocation(line: 200, column: 1, scope: !3867)
!3883 = distinct !DISubprogram(name: "Fax3PutEOL", scope: !3, file: !3, line: 657, type: !227, scopeLine: 658, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !438)
!3884 = !DILocalVariable(name: "tif", arg: 1, scope: !3883, file: !3, line: 657, type: !69)
!3885 = !DILocation(line: 657, column: 18, scope: !3883)
!3886 = !DILocalVariable(name: "sp", scope: !3883, file: !3, line: 659, type: !407)
!3887 = !DILocation(line: 659, column: 19, scope: !3883)
!3888 = !DILocation(line: 659, column: 24, scope: !3883)
!3889 = !DILocalVariable(name: "bit", scope: !3883, file: !3, line: 660, type: !2988)
!3890 = !DILocation(line: 660, column: 8, scope: !3883)
!3891 = !DILocation(line: 660, column: 14, scope: !3883)
!3892 = !DILocation(line: 660, column: 18, scope: !3883)
!3893 = !DILocalVariable(name: "data", scope: !3883, file: !3, line: 661, type: !37)
!3894 = !DILocation(line: 661, column: 6, scope: !3883)
!3895 = !DILocation(line: 661, column: 13, scope: !3883)
!3896 = !DILocation(line: 661, column: 17, scope: !3883)
!3897 = !DILocalVariable(name: "code", scope: !3883, file: !3, line: 662, type: !2988)
!3898 = !DILocation(line: 662, column: 8, scope: !3883)
!3899 = !DILocalVariable(name: "length", scope: !3883, file: !3, line: 662, type: !2988)
!3900 = !DILocation(line: 662, column: 14, scope: !3883)
!3901 = !DILocalVariable(name: "tparm", scope: !3883, file: !3, line: 662, type: !2988)
!3902 = !DILocation(line: 662, column: 22, scope: !3883)
!3903 = !DILocation(line: 664, column: 6, scope: !3904)
!3904 = distinct !DILexicalBlock(scope: !3883, file: !3, line: 664, column: 6)
!3905 = !DILocation(line: 664, column: 10, scope: !3904)
!3906 = !DILocation(line: 664, column: 12, scope: !3904)
!3907 = !DILocation(line: 664, column: 25, scope: !3904)
!3908 = !DILocalVariable(name: "align", scope: !3909, file: !3, line: 670, type: !37)
!3909 = distinct !DILexicalBlock(scope: !3904, file: !3, line: 664, column: 47)
!3910 = !DILocation(line: 670, column: 7, scope: !3909)
!3911 = !DILocation(line: 671, column: 7, scope: !3912)
!3912 = distinct !DILexicalBlock(scope: !3909, file: !3, line: 671, column: 7)
!3913 = !DILocation(line: 671, column: 16, scope: !3912)
!3914 = !DILocation(line: 671, column: 20, scope: !3912)
!3915 = !DILocation(line: 671, column: 13, scope: !3912)
!3916 = !DILocation(line: 672, column: 8, scope: !3917)
!3917 = distinct !DILexicalBlock(scope: !3918, file: !3, line: 672, column: 8)
!3918 = distinct !DILexicalBlock(scope: !3912, file: !3, line: 671, column: 25)
!3919 = !DILocation(line: 672, column: 16, scope: !3917)
!3920 = !DILocation(line: 672, column: 20, scope: !3917)
!3921 = !DILocation(line: 672, column: 14, scope: !3917)
!3922 = !DILocation(line: 673, column: 13, scope: !3917)
!3923 = !DILocation(line: 673, column: 17, scope: !3917)
!3924 = !DILocation(line: 673, column: 28, scope: !3917)
!3925 = !DILocation(line: 673, column: 26, scope: !3917)
!3926 = !DILocation(line: 673, column: 21, scope: !3917)
!3927 = !DILocation(line: 673, column: 11, scope: !3917)
!3928 = !DILocation(line: 673, column: 5, scope: !3917)
!3929 = !DILocation(line: 675, column: 13, scope: !3917)
!3930 = !DILocation(line: 675, column: 17, scope: !3917)
!3931 = !DILocation(line: 675, column: 23, scope: !3917)
!3932 = !DILocation(line: 675, column: 21, scope: !3917)
!3933 = !DILocation(line: 675, column: 11, scope: !3917)
!3934 = !DILocation(line: 676, column: 9, scope: !3918)
!3935 = !DILocation(line: 677, column: 10, scope: !3918)
!3936 = !DILocation(line: 677, column: 9, scope: !3918)
!3937 = !DILocation(line: 678, column: 4, scope: !3938)
!3938 = distinct !DILexicalBlock(scope: !3918, file: !3, line: 678, column: 4)
!3939 = !DILocation(line: 678, column: 4, scope: !3940)
!3940 = distinct !DILexicalBlock(scope: !3938, file: !3, line: 678, column: 4)
!3941 = !DILocation(line: 678, column: 4, scope: !3942)
!3942 = distinct !DILexicalBlock(scope: !3943, file: !3, line: 678, column: 4)
!3943 = distinct !DILexicalBlock(scope: !3940, file: !3, line: 678, column: 4)
!3944 = !DILocation(line: 678, column: 4, scope: !3943)
!3945 = distinct !{!3945, !3937, !3937, !785}
!3946 = !DILocation(line: 678, column: 4, scope: !3947)
!3947 = distinct !DILexicalBlock(scope: !3938, file: !3, line: 678, column: 4)
!3948 = !DILocation(line: 678, column: 4, scope: !3949)
!3949 = distinct !DILexicalBlock(scope: !3950, file: !3, line: 678, column: 4)
!3950 = distinct !DILexicalBlock(scope: !3947, file: !3, line: 678, column: 4)
!3951 = !DILocation(line: 678, column: 4, scope: !3950)
!3952 = !DILocation(line: 679, column: 3, scope: !3918)
!3953 = !DILocation(line: 680, column: 2, scope: !3909)
!3954 = !DILocation(line: 681, column: 7, scope: !3883)
!3955 = !DILocation(line: 681, column: 21, scope: !3883)
!3956 = !DILocation(line: 682, column: 6, scope: !3957)
!3957 = distinct !DILexicalBlock(scope: !3883, file: !3, line: 682, column: 6)
!3958 = !DILocation(line: 683, column: 11, scope: !3957)
!3959 = !DILocation(line: 683, column: 15, scope: !3957)
!3960 = !DILocation(line: 683, column: 23, scope: !3957)
!3961 = !DILocation(line: 683, column: 27, scope: !3957)
!3962 = !DILocation(line: 683, column: 31, scope: !3957)
!3963 = !DILocation(line: 683, column: 20, scope: !3957)
!3964 = !DILocation(line: 683, column: 8, scope: !3957)
!3965 = !DILocation(line: 683, column: 48, scope: !3957)
!3966 = !DILocation(line: 683, column: 3, scope: !3957)
!3967 = !DILocation(line: 684, column: 2, scope: !3968)
!3968 = distinct !DILexicalBlock(scope: !3883, file: !3, line: 684, column: 2)
!3969 = !DILocation(line: 684, column: 2, scope: !3970)
!3970 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 684, column: 2)
!3971 = !DILocation(line: 684, column: 2, scope: !3972)
!3972 = distinct !DILexicalBlock(scope: !3973, file: !3, line: 684, column: 2)
!3973 = distinct !DILexicalBlock(scope: !3970, file: !3, line: 684, column: 2)
!3974 = !DILocation(line: 684, column: 2, scope: !3973)
!3975 = distinct !{!3975, !3967, !3967, !785}
!3976 = !DILocation(line: 684, column: 2, scope: !3977)
!3977 = distinct !DILexicalBlock(scope: !3968, file: !3, line: 684, column: 2)
!3978 = !DILocation(line: 684, column: 2, scope: !3979)
!3979 = distinct !DILexicalBlock(scope: !3980, file: !3, line: 684, column: 2)
!3980 = distinct !DILexicalBlock(scope: !3977, file: !3, line: 684, column: 2)
!3981 = !DILocation(line: 684, column: 2, scope: !3980)
!3982 = !DILocation(line: 686, column: 13, scope: !3883)
!3983 = !DILocation(line: 686, column: 2, scope: !3883)
!3984 = !DILocation(line: 686, column: 6, scope: !3883)
!3985 = !DILocation(line: 686, column: 11, scope: !3883)
!3986 = !DILocation(line: 687, column: 12, scope: !3883)
!3987 = !DILocation(line: 687, column: 2, scope: !3883)
!3988 = !DILocation(line: 687, column: 6, scope: !3883)
!3989 = !DILocation(line: 687, column: 10, scope: !3883)
!3990 = !DILocation(line: 688, column: 1, scope: !3883)
!3991 = distinct !DISubprogram(name: "Fax3Encode1DRow", scope: !3, file: !3, line: 922, type: !3992, scopeLine: 923, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !438)
!3992 = !DISubroutineType(types: !3993)
!3993 = !{!37, !69, !38, !53}
!3994 = !DILocalVariable(name: "tif", arg: 1, scope: !3991, file: !3, line: 922, type: !69)
!3995 = !DILocation(line: 922, column: 23, scope: !3991)
!3996 = !DILocalVariable(name: "bp", arg: 2, scope: !3991, file: !3, line: 922, type: !38)
!3997 = !DILocation(line: 922, column: 36, scope: !3991)
!3998 = !DILocalVariable(name: "bits", arg: 3, scope: !3991, file: !3, line: 922, type: !53)
!3999 = !DILocation(line: 922, column: 47, scope: !3991)
!4000 = !DILocalVariable(name: "sp", scope: !3991, file: !3, line: 924, type: !407)
!4001 = !DILocation(line: 924, column: 19, scope: !3991)
!4002 = !DILocation(line: 924, column: 24, scope: !3991)
!4003 = !DILocalVariable(name: "span", scope: !3991, file: !3, line: 925, type: !36)
!4004 = !DILocation(line: 925, column: 8, scope: !3991)
!4005 = !DILocalVariable(name: "bs", scope: !3991, file: !3, line: 926, type: !53)
!4006 = !DILocation(line: 926, column: 16, scope: !3991)
!4007 = !DILocation(line: 928, column: 2, scope: !3991)
!4008 = !DILocation(line: 929, column: 20, scope: !4009)
!4009 = distinct !DILexicalBlock(scope: !4010, file: !3, line: 928, column: 11)
!4010 = distinct !DILexicalBlock(scope: !4011, file: !3, line: 928, column: 2)
!4011 = distinct !DILexicalBlock(scope: !3991, file: !3, line: 928, column: 2)
!4012 = !DILocation(line: 929, column: 24, scope: !4009)
!4013 = !DILocation(line: 929, column: 28, scope: !4009)
!4014 = !DILocation(line: 929, column: 10, scope: !4009)
!4015 = !DILocation(line: 929, column: 8, scope: !4009)
!4016 = !DILocation(line: 930, column: 11, scope: !4009)
!4017 = !DILocation(line: 930, column: 16, scope: !4009)
!4018 = !DILocation(line: 930, column: 3, scope: !4009)
!4019 = !DILocation(line: 931, column: 9, scope: !4009)
!4020 = !DILocation(line: 931, column: 6, scope: !4009)
!4021 = !DILocation(line: 932, column: 7, scope: !4022)
!4022 = distinct !DILexicalBlock(scope: !4009, file: !3, line: 932, column: 7)
!4023 = !DILocation(line: 932, column: 13, scope: !4022)
!4024 = !DILocation(line: 932, column: 10, scope: !4022)
!4025 = !DILocation(line: 933, column: 4, scope: !4022)
!4026 = !DILocation(line: 934, column: 20, scope: !4009)
!4027 = !DILocation(line: 934, column: 24, scope: !4009)
!4028 = !DILocation(line: 934, column: 28, scope: !4009)
!4029 = !DILocation(line: 934, column: 10, scope: !4009)
!4030 = !DILocation(line: 934, column: 8, scope: !4009)
!4031 = !DILocation(line: 935, column: 11, scope: !4009)
!4032 = !DILocation(line: 935, column: 16, scope: !4009)
!4033 = !DILocation(line: 935, column: 3, scope: !4009)
!4034 = !DILocation(line: 936, column: 9, scope: !4009)
!4035 = !DILocation(line: 936, column: 6, scope: !4009)
!4036 = !DILocation(line: 937, column: 7, scope: !4037)
!4037 = distinct !DILexicalBlock(scope: !4009, file: !3, line: 937, column: 7)
!4038 = !DILocation(line: 937, column: 13, scope: !4037)
!4039 = !DILocation(line: 937, column: 10, scope: !4037)
!4040 = !DILocation(line: 938, column: 4, scope: !4037)
!4041 = !DILocation(line: 928, column: 2, scope: !4010)
!4042 = distinct !{!4042, !4043, !4044}
!4043 = !DILocation(line: 928, column: 2, scope: !4011)
!4044 = !DILocation(line: 939, column: 2, scope: !4011)
!4045 = !DILocation(line: 940, column: 6, scope: !4046)
!4046 = distinct !DILexicalBlock(scope: !3991, file: !3, line: 940, column: 6)
!4047 = !DILocation(line: 940, column: 10, scope: !4046)
!4048 = !DILocation(line: 940, column: 12, scope: !4046)
!4049 = !DILocation(line: 940, column: 17, scope: !4046)
!4050 = !DILocation(line: 941, column: 7, scope: !4051)
!4051 = distinct !DILexicalBlock(scope: !4052, file: !3, line: 941, column: 7)
!4052 = distinct !DILexicalBlock(scope: !4046, file: !3, line: 940, column: 58)
!4053 = !DILocation(line: 941, column: 11, scope: !4051)
!4054 = !DILocation(line: 941, column: 15, scope: !4051)
!4055 = !DILocation(line: 942, column: 4, scope: !4056)
!4056 = distinct !DILexicalBlock(scope: !4057, file: !3, line: 942, column: 4)
!4057 = distinct !DILexicalBlock(scope: !4051, file: !3, line: 942, column: 4)
!4058 = !DILocation(line: 942, column: 4, scope: !4057)
!4059 = !DILocation(line: 943, column: 8, scope: !4060)
!4060 = distinct !DILexicalBlock(scope: !4052, file: !3, line: 943, column: 7)
!4061 = !DILocation(line: 943, column: 12, scope: !4060)
!4062 = !DILocation(line: 943, column: 14, scope: !4060)
!4063 = !DILocation(line: 943, column: 18, scope: !4060)
!4064 = !DILocation(line: 943, column: 38, scope: !4060)
!4065 = !DILocation(line: 944, column: 8, scope: !4060)
!4066 = !DILocation(line: 945, column: 4, scope: !4067)
!4067 = distinct !DILexicalBlock(scope: !4068, file: !3, line: 945, column: 4)
!4068 = distinct !DILexicalBlock(scope: !4060, file: !3, line: 945, column: 4)
!4069 = !DILocation(line: 945, column: 4, scope: !4068)
!4070 = !DILocation(line: 946, column: 2, scope: !4052)
!4071 = !DILocation(line: 947, column: 2, scope: !3991)
!4072 = distinct !DISubprogram(name: "Fax3Encode2DRow", scope: !3, file: !3, line: 969, type: !4073, scopeLine: 970, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !438)
!4073 = !DISubroutineType(types: !4074)
!4074 = !{!37, !69, !38, !38, !53}
!4075 = !DILocalVariable(name: "tif", arg: 1, scope: !4072, file: !3, line: 969, type: !69)
!4076 = !DILocation(line: 969, column: 23, scope: !4072)
!4077 = !DILocalVariable(name: "bp", arg: 2, scope: !4072, file: !3, line: 969, type: !38)
!4078 = !DILocation(line: 969, column: 36, scope: !4072)
!4079 = !DILocalVariable(name: "rp", arg: 3, scope: !4072, file: !3, line: 969, type: !38)
!4080 = !DILocation(line: 969, column: 48, scope: !4072)
!4081 = !DILocalVariable(name: "bits", arg: 4, scope: !4072, file: !3, line: 969, type: !53)
!4082 = !DILocation(line: 969, column: 59, scope: !4072)
!4083 = !DILocalVariable(name: "a0", scope: !4072, file: !3, line: 972, type: !53)
!4084 = !DILocation(line: 972, column: 16, scope: !4072)
!4085 = !DILocalVariable(name: "a1", scope: !4072, file: !3, line: 973, type: !53)
!4086 = !DILocation(line: 973, column: 9, scope: !4072)
!4087 = !DILocation(line: 973, column: 15, scope: !4072)
!4088 = !DILocation(line: 973, column: 28, scope: !4072)
!4089 = !DILocation(line: 973, column: 39, scope: !4072)
!4090 = !DILocalVariable(name: "b1", scope: !4072, file: !3, line: 974, type: !53)
!4091 = !DILocation(line: 974, column: 9, scope: !4072)
!4092 = !DILocation(line: 974, column: 15, scope: !4072)
!4093 = !DILocation(line: 974, column: 28, scope: !4072)
!4094 = !DILocation(line: 974, column: 39, scope: !4072)
!4095 = !DILocalVariable(name: "a2", scope: !4072, file: !3, line: 975, type: !53)
!4096 = !DILocation(line: 975, column: 9, scope: !4072)
!4097 = !DILocalVariable(name: "b2", scope: !4072, file: !3, line: 975, type: !53)
!4098 = !DILocation(line: 975, column: 13, scope: !4072)
!4099 = !DILocation(line: 977, column: 2, scope: !4072)
!4100 = !DILocation(line: 978, column: 8, scope: !4101)
!4101 = distinct !DILexicalBlock(scope: !4102, file: !3, line: 977, column: 11)
!4102 = distinct !DILexicalBlock(scope: !4103, file: !3, line: 977, column: 2)
!4103 = distinct !DILexicalBlock(scope: !4072, file: !3, line: 977, column: 2)
!4104 = !DILocation(line: 978, column: 6, scope: !4101)
!4105 = !DILocation(line: 979, column: 7, scope: !4106)
!4106 = distinct !DILexicalBlock(scope: !4101, file: !3, line: 979, column: 7)
!4107 = !DILocation(line: 979, column: 13, scope: !4106)
!4108 = !DILocation(line: 979, column: 10, scope: !4106)
!4109 = !DILocalVariable(name: "d", scope: !4110, file: !3, line: 980, type: !36)
!4110 = distinct !DILexicalBlock(scope: !4106, file: !3, line: 979, column: 17)
!4111 = !DILocation(line: 980, column: 10, scope: !4110)
!4112 = !DILocation(line: 980, column: 14, scope: !4110)
!4113 = !DILocation(line: 980, column: 19, scope: !4110)
!4114 = !DILocation(line: 980, column: 17, scope: !4110)
!4115 = !DILocation(line: 981, column: 16, scope: !4116)
!4116 = distinct !DILexicalBlock(scope: !4110, file: !3, line: 981, column: 8)
!4117 = !DILocation(line: 981, column: 13, scope: !4116)
!4118 = !DILocation(line: 981, column: 18, scope: !4116)
!4119 = !DILocation(line: 981, column: 21, scope: !4116)
!4120 = !DILocation(line: 981, column: 23, scope: !4116)
!4121 = !DILocation(line: 981, column: 8, scope: !4116)
!4122 = !DILocation(line: 982, column: 10, scope: !4123)
!4123 = distinct !DILexicalBlock(scope: !4116, file: !3, line: 981, column: 30)
!4124 = !DILocation(line: 982, column: 8, scope: !4123)
!4125 = !DILocation(line: 983, column: 5, scope: !4123)
!4126 = !DILocation(line: 984, column: 9, scope: !4127)
!4127 = distinct !DILexicalBlock(scope: !4123, file: !3, line: 984, column: 9)
!4128 = !DILocation(line: 984, column: 12, scope: !4127)
!4129 = !DILocation(line: 984, column: 11, scope: !4127)
!4130 = !DILocation(line: 984, column: 15, scope: !4127)
!4131 = !DILocation(line: 984, column: 20, scope: !4127)
!4132 = !DILocation(line: 984, column: 23, scope: !4127)
!4133 = !DILocation(line: 984, column: 37, scope: !4127)
!4134 = !DILocation(line: 985, column: 14, scope: !4135)
!4135 = distinct !DILexicalBlock(scope: !4127, file: !3, line: 984, column: 43)
!4136 = !DILocation(line: 985, column: 19, scope: !4135)
!4137 = !DILocation(line: 985, column: 22, scope: !4135)
!4138 = !DILocation(line: 985, column: 21, scope: !4135)
!4139 = !DILocation(line: 985, column: 6, scope: !4135)
!4140 = !DILocation(line: 986, column: 14, scope: !4135)
!4141 = !DILocation(line: 986, column: 19, scope: !4135)
!4142 = !DILocation(line: 986, column: 22, scope: !4135)
!4143 = !DILocation(line: 986, column: 21, scope: !4135)
!4144 = !DILocation(line: 986, column: 6, scope: !4135)
!4145 = !DILocation(line: 987, column: 5, scope: !4135)
!4146 = !DILocation(line: 988, column: 14, scope: !4147)
!4147 = distinct !DILexicalBlock(scope: !4127, file: !3, line: 987, column: 12)
!4148 = !DILocation(line: 988, column: 19, scope: !4147)
!4149 = !DILocation(line: 988, column: 22, scope: !4147)
!4150 = !DILocation(line: 988, column: 21, scope: !4147)
!4151 = !DILocation(line: 988, column: 6, scope: !4147)
!4152 = !DILocation(line: 989, column: 14, scope: !4147)
!4153 = !DILocation(line: 989, column: 19, scope: !4147)
!4154 = !DILocation(line: 989, column: 22, scope: !4147)
!4155 = !DILocation(line: 989, column: 21, scope: !4147)
!4156 = !DILocation(line: 989, column: 6, scope: !4147)
!4157 = !DILocation(line: 991, column: 10, scope: !4123)
!4158 = !DILocation(line: 991, column: 8, scope: !4123)
!4159 = !DILocation(line: 992, column: 4, scope: !4123)
!4160 = !DILocation(line: 993, column: 5, scope: !4161)
!4161 = distinct !DILexicalBlock(scope: !4116, file: !3, line: 992, column: 11)
!4162 = !DILocation(line: 994, column: 10, scope: !4161)
!4163 = !DILocation(line: 994, column: 8, scope: !4161)
!4164 = !DILocation(line: 996, column: 3, scope: !4110)
!4165 = !DILocation(line: 997, column: 4, scope: !4166)
!4166 = distinct !DILexicalBlock(scope: !4106, file: !3, line: 996, column: 10)
!4167 = !DILocation(line: 998, column: 9, scope: !4166)
!4168 = !DILocation(line: 998, column: 7, scope: !4166)
!4169 = !DILocation(line: 1000, column: 7, scope: !4170)
!4170 = distinct !DILexicalBlock(scope: !4101, file: !3, line: 1000, column: 7)
!4171 = !DILocation(line: 1000, column: 13, scope: !4170)
!4172 = !DILocation(line: 1000, column: 10, scope: !4170)
!4173 = !DILocation(line: 1001, column: 4, scope: !4170)
!4174 = !DILocation(line: 1002, column: 8, scope: !4101)
!4175 = !DILocation(line: 1002, column: 6, scope: !4101)
!4176 = !DILocation(line: 1003, column: 8, scope: !4101)
!4177 = !DILocation(line: 1003, column: 6, scope: !4101)
!4178 = !DILocation(line: 1004, column: 8, scope: !4101)
!4179 = !DILocation(line: 1004, column: 6, scope: !4101)
!4180 = !DILocation(line: 977, column: 2, scope: !4102)
!4181 = distinct !{!4181, !4182, !4183}
!4182 = !DILocation(line: 977, column: 2, scope: !4103)
!4183 = !DILocation(line: 1005, column: 2, scope: !4103)
!4184 = !DILocation(line: 1006, column: 2, scope: !4072)
!4185 = distinct !DISubprogram(name: "find0span", scope: !3, file: !3, line: 784, type: !4186, scopeLine: 785, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !438)
!4186 = !DISubroutineType(types: !4187)
!4187 = !{!36, !38, !36, !36}
!4188 = !DILocalVariable(name: "bp", arg: 1, scope: !4185, file: !3, line: 784, type: !38)
!4189 = !DILocation(line: 784, column: 19, scope: !4185)
!4190 = !DILocalVariable(name: "bs", arg: 2, scope: !4185, file: !3, line: 784, type: !36)
!4191 = !DILocation(line: 784, column: 29, scope: !4185)
!4192 = !DILocalVariable(name: "be", arg: 3, scope: !4185, file: !3, line: 784, type: !36)
!4193 = !DILocation(line: 784, column: 39, scope: !4185)
!4194 = !DILocalVariable(name: "bits", scope: !4185, file: !3, line: 786, type: !36)
!4195 = !DILocation(line: 786, column: 8, scope: !4185)
!4196 = !DILocation(line: 786, column: 15, scope: !4185)
!4197 = !DILocation(line: 786, column: 20, scope: !4185)
!4198 = !DILocation(line: 786, column: 18, scope: !4185)
!4199 = !DILocalVariable(name: "n", scope: !4185, file: !3, line: 787, type: !36)
!4200 = !DILocation(line: 787, column: 8, scope: !4185)
!4201 = !DILocalVariable(name: "span", scope: !4185, file: !3, line: 787, type: !36)
!4202 = !DILocation(line: 787, column: 11, scope: !4185)
!4203 = !DILocation(line: 789, column: 8, scope: !4185)
!4204 = !DILocation(line: 789, column: 10, scope: !4185)
!4205 = !DILocation(line: 789, column: 5, scope: !4185)
!4206 = !DILocation(line: 793, column: 6, scope: !4207)
!4207 = distinct !DILexicalBlock(scope: !4185, file: !3, line: 793, column: 6)
!4208 = !DILocation(line: 793, column: 11, scope: !4207)
!4209 = !DILocation(line: 793, column: 15, scope: !4207)
!4210 = !DILocation(line: 793, column: 24, scope: !4207)
!4211 = !DILocation(line: 793, column: 27, scope: !4207)
!4212 = !DILocation(line: 793, column: 21, scope: !4207)
!4213 = !DILocation(line: 794, column: 21, scope: !4214)
!4214 = distinct !DILexicalBlock(scope: !4207, file: !3, line: 793, column: 34)
!4215 = !DILocation(line: 794, column: 20, scope: !4214)
!4216 = !DILocation(line: 794, column: 27, scope: !4214)
!4217 = !DILocation(line: 794, column: 24, scope: !4214)
!4218 = !DILocation(line: 794, column: 30, scope: !4214)
!4219 = !DILocation(line: 794, column: 10, scope: !4214)
!4220 = !DILocation(line: 794, column: 8, scope: !4214)
!4221 = !DILocation(line: 795, column: 7, scope: !4222)
!4222 = distinct !DILexicalBlock(scope: !4214, file: !3, line: 795, column: 7)
!4223 = !DILocation(line: 795, column: 16, scope: !4222)
!4224 = !DILocation(line: 795, column: 15, scope: !4222)
!4225 = !DILocation(line: 795, column: 12, scope: !4222)
!4226 = !DILocation(line: 796, column: 13, scope: !4222)
!4227 = !DILocation(line: 796, column: 12, scope: !4222)
!4228 = !DILocation(line: 796, column: 9, scope: !4222)
!4229 = !DILocation(line: 796, column: 4, scope: !4222)
!4230 = !DILocation(line: 797, column: 7, scope: !4231)
!4231 = distinct !DILexicalBlock(scope: !4214, file: !3, line: 797, column: 7)
!4232 = !DILocation(line: 797, column: 14, scope: !4231)
!4233 = !DILocation(line: 797, column: 12, scope: !4231)
!4234 = !DILocation(line: 798, column: 11, scope: !4231)
!4235 = !DILocation(line: 798, column: 9, scope: !4231)
!4236 = !DILocation(line: 798, column: 4, scope: !4231)
!4237 = !DILocation(line: 799, column: 7, scope: !4238)
!4238 = distinct !DILexicalBlock(scope: !4214, file: !3, line: 799, column: 7)
!4239 = !DILocation(line: 799, column: 9, scope: !4238)
!4240 = !DILocation(line: 799, column: 8, scope: !4238)
!4241 = !DILocation(line: 799, column: 14, scope: !4238)
!4242 = !DILocation(line: 800, column: 12, scope: !4238)
!4243 = !DILocation(line: 800, column: 4, scope: !4238)
!4244 = !DILocation(line: 801, column: 11, scope: !4214)
!4245 = !DILocation(line: 801, column: 8, scope: !4214)
!4246 = !DILocation(line: 802, column: 5, scope: !4214)
!4247 = !DILocation(line: 803, column: 2, scope: !4214)
!4248 = !DILocation(line: 804, column: 8, scope: !4207)
!4249 = !DILocation(line: 805, column: 6, scope: !4250)
!4250 = distinct !DILexicalBlock(scope: !4185, file: !3, line: 805, column: 6)
!4251 = !DILocation(line: 805, column: 11, scope: !4250)
!4252 = !DILocalVariable(name: "lp", scope: !4253, file: !3, line: 806, type: !34)
!4253 = distinct !DILexicalBlock(scope: !4250, file: !3, line: 805, column: 33)
!4254 = !DILocation(line: 806, column: 9, scope: !4253)
!4255 = !DILocation(line: 810, column: 3, scope: !4253)
!4256 = !DILocation(line: 810, column: 11, scope: !4253)
!4257 = !DILocation(line: 810, column: 10, scope: !4253)
!4258 = !DILocation(line: 811, column: 9, scope: !4259)
!4259 = distinct !DILexicalBlock(scope: !4260, file: !3, line: 811, column: 8)
!4260 = distinct !DILexicalBlock(scope: !4253, file: !3, line: 810, column: 32)
!4261 = !DILocation(line: 811, column: 8, scope: !4259)
!4262 = !DILocation(line: 811, column: 12, scope: !4259)
!4263 = !DILocation(line: 812, column: 13, scope: !4259)
!4264 = !DILocation(line: 812, column: 30, scope: !4259)
!4265 = !DILocation(line: 812, column: 29, scope: !4259)
!4266 = !DILocation(line: 812, column: 20, scope: !4259)
!4267 = !DILocation(line: 812, column: 18, scope: !4259)
!4268 = !DILocation(line: 812, column: 5, scope: !4259)
!4269 = !DILocation(line: 813, column: 9, scope: !4260)
!4270 = !DILocation(line: 813, column: 20, scope: !4260)
!4271 = !DILocation(line: 814, column: 6, scope: !4260)
!4272 = distinct !{!4272, !4255, !4273, !785}
!4273 = !DILocation(line: 815, column: 3, scope: !4253)
!4274 = !DILocation(line: 816, column: 16, scope: !4253)
!4275 = !DILocation(line: 816, column: 6, scope: !4253)
!4276 = !DILocation(line: 817, column: 3, scope: !4253)
!4277 = !DILocation(line: 817, column: 10, scope: !4253)
!4278 = !DILocation(line: 817, column: 15, scope: !4253)
!4279 = !DILocation(line: 817, column: 34, scope: !4253)
!4280 = !DILocation(line: 817, column: 38, scope: !4253)
!4281 = !DILocation(line: 817, column: 37, scope: !4253)
!4282 = !DILocation(line: 817, column: 41, scope: !4253)
!4283 = !DILocation(line: 0, scope: !4253)
!4284 = !DILocation(line: 818, column: 9, scope: !4285)
!4285 = distinct !DILexicalBlock(scope: !4253, file: !3, line: 817, column: 47)
!4286 = !DILocation(line: 818, column: 34, scope: !4285)
!4287 = !DILocation(line: 819, column: 6, scope: !4285)
!4288 = distinct !{!4288, !4276, !4289, !785}
!4289 = !DILocation(line: 820, column: 3, scope: !4253)
!4290 = !DILocation(line: 821, column: 18, scope: !4253)
!4291 = !DILocation(line: 821, column: 6, scope: !4253)
!4292 = !DILocation(line: 822, column: 2, scope: !4253)
!4293 = !DILocation(line: 826, column: 2, scope: !4185)
!4294 = !DILocation(line: 826, column: 9, scope: !4185)
!4295 = !DILocation(line: 826, column: 14, scope: !4185)
!4296 = !DILocation(line: 827, column: 8, scope: !4297)
!4297 = distinct !DILexicalBlock(scope: !4298, file: !3, line: 827, column: 7)
!4298 = distinct !DILexicalBlock(scope: !4185, file: !3, line: 826, column: 20)
!4299 = !DILocation(line: 827, column: 7, scope: !4297)
!4300 = !DILocation(line: 827, column: 11, scope: !4297)
!4301 = !DILocation(line: 828, column: 12, scope: !4297)
!4302 = !DILocation(line: 828, column: 29, scope: !4297)
!4303 = !DILocation(line: 828, column: 28, scope: !4297)
!4304 = !DILocation(line: 828, column: 19, scope: !4297)
!4305 = !DILocation(line: 828, column: 17, scope: !4297)
!4306 = !DILocation(line: 828, column: 4, scope: !4297)
!4307 = !DILocation(line: 829, column: 8, scope: !4298)
!4308 = !DILocation(line: 829, column: 19, scope: !4298)
!4309 = !DILocation(line: 830, column: 5, scope: !4298)
!4310 = distinct !{!4310, !4293, !4311, !785}
!4311 = !DILocation(line: 831, column: 2, scope: !4185)
!4312 = !DILocation(line: 835, column: 6, scope: !4313)
!4313 = distinct !DILexicalBlock(scope: !4185, file: !3, line: 835, column: 6)
!4314 = !DILocation(line: 835, column: 11, scope: !4313)
!4315 = !DILocation(line: 836, column: 17, scope: !4316)
!4316 = distinct !DILexicalBlock(scope: !4313, file: !3, line: 835, column: 16)
!4317 = !DILocation(line: 836, column: 16, scope: !4316)
!4318 = !DILocation(line: 836, column: 7, scope: !4316)
!4319 = !DILocation(line: 836, column: 5, scope: !4316)
!4320 = !DILocation(line: 837, column: 12, scope: !4316)
!4321 = !DILocation(line: 837, column: 16, scope: !4316)
!4322 = !DILocation(line: 837, column: 14, scope: !4316)
!4323 = !DILocation(line: 837, column: 23, scope: !4316)
!4324 = !DILocation(line: 837, column: 30, scope: !4316)
!4325 = !DILocation(line: 837, column: 8, scope: !4316)
!4326 = !DILocation(line: 838, column: 2, scope: !4316)
!4327 = !DILocation(line: 839, column: 10, scope: !4185)
!4328 = !DILocation(line: 839, column: 2, scope: !4185)
!4329 = !DILocation(line: 840, column: 1, scope: !4185)
!4330 = distinct !DISubprogram(name: "putspan", scope: !3, file: !3, line: 614, type: !4331, scopeLine: 615, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !438)
!4331 = !DISubroutineType(types: !4332)
!4332 = !{null, !69, !36, !4333}
!4333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!4334 = !DILocalVariable(name: "tif", arg: 1, scope: !4330, file: !3, line: 614, type: !69)
!4335 = !DILocation(line: 614, column: 15, scope: !4330)
!4336 = !DILocalVariable(name: "span", arg: 2, scope: !4330, file: !3, line: 614, type: !36)
!4337 = !DILocation(line: 614, column: 26, scope: !4330)
!4338 = !DILocalVariable(name: "tab", arg: 3, scope: !4330, file: !3, line: 614, type: !4333)
!4339 = !DILocation(line: 614, column: 50, scope: !4330)
!4340 = !DILocalVariable(name: "sp", scope: !4330, file: !3, line: 616, type: !407)
!4341 = !DILocation(line: 616, column: 19, scope: !4330)
!4342 = !DILocation(line: 616, column: 24, scope: !4330)
!4343 = !DILocalVariable(name: "bit", scope: !4330, file: !3, line: 617, type: !2988)
!4344 = !DILocation(line: 617, column: 8, scope: !4330)
!4345 = !DILocation(line: 617, column: 14, scope: !4330)
!4346 = !DILocation(line: 617, column: 18, scope: !4330)
!4347 = !DILocalVariable(name: "data", scope: !4330, file: !3, line: 618, type: !37)
!4348 = !DILocation(line: 618, column: 6, scope: !4330)
!4349 = !DILocation(line: 618, column: 13, scope: !4330)
!4350 = !DILocation(line: 618, column: 17, scope: !4330)
!4351 = !DILocalVariable(name: "code", scope: !4330, file: !3, line: 619, type: !2988)
!4352 = !DILocation(line: 619, column: 8, scope: !4330)
!4353 = !DILocalVariable(name: "length", scope: !4330, file: !3, line: 619, type: !2988)
!4354 = !DILocation(line: 619, column: 14, scope: !4330)
!4355 = !DILocation(line: 621, column: 2, scope: !4330)
!4356 = !DILocation(line: 621, column: 9, scope: !4330)
!4357 = !DILocation(line: 621, column: 14, scope: !4330)
!4358 = !DILocalVariable(name: "te", scope: !4359, file: !3, line: 622, type: !4333)
!4359 = distinct !DILexicalBlock(scope: !4330, file: !3, line: 621, column: 23)
!4360 = !DILocation(line: 622, column: 21, scope: !4359)
!4361 = !DILocation(line: 622, column: 27, scope: !4359)
!4362 = !DILocation(line: 623, column: 10, scope: !4359)
!4363 = !DILocation(line: 623, column: 14, scope: !4359)
!4364 = !DILocation(line: 623, column: 8, scope: !4359)
!4365 = !DILocation(line: 623, column: 29, scope: !4359)
!4366 = !DILocation(line: 623, column: 33, scope: !4359)
!4367 = !DILocation(line: 623, column: 27, scope: !4359)
!4368 = !DILocation(line: 627, column: 3, scope: !4369)
!4369 = distinct !DILexicalBlock(scope: !4359, file: !3, line: 627, column: 3)
!4370 = !DILocation(line: 627, column: 3, scope: !4371)
!4371 = distinct !DILexicalBlock(scope: !4369, file: !3, line: 627, column: 3)
!4372 = !DILocation(line: 627, column: 3, scope: !4373)
!4373 = distinct !DILexicalBlock(scope: !4374, file: !3, line: 627, column: 3)
!4374 = distinct !DILexicalBlock(scope: !4371, file: !3, line: 627, column: 3)
!4375 = !DILocation(line: 627, column: 3, scope: !4374)
!4376 = distinct !{!4376, !4368, !4368, !785}
!4377 = !DILocation(line: 627, column: 3, scope: !4378)
!4378 = distinct !DILexicalBlock(scope: !4369, file: !3, line: 627, column: 3)
!4379 = !DILocation(line: 627, column: 3, scope: !4380)
!4380 = distinct !DILexicalBlock(scope: !4381, file: !3, line: 627, column: 3)
!4381 = distinct !DILexicalBlock(scope: !4378, file: !3, line: 627, column: 3)
!4382 = !DILocation(line: 627, column: 3, scope: !4381)
!4383 = !DILocation(line: 628, column: 11, scope: !4359)
!4384 = !DILocation(line: 628, column: 15, scope: !4359)
!4385 = !DILocation(line: 628, column: 8, scope: !4359)
!4386 = distinct !{!4386, !4355, !4387, !785}
!4387 = !DILocation(line: 629, column: 2, scope: !4330)
!4388 = !DILocation(line: 630, column: 6, scope: !4389)
!4389 = distinct !DILexicalBlock(scope: !4330, file: !3, line: 630, column: 6)
!4390 = !DILocation(line: 630, column: 11, scope: !4389)
!4391 = !DILocalVariable(name: "te", scope: !4392, file: !3, line: 631, type: !4333)
!4392 = distinct !DILexicalBlock(scope: !4389, file: !3, line: 630, column: 18)
!4393 = !DILocation(line: 631, column: 21, scope: !4392)
!4394 = !DILocation(line: 631, column: 27, scope: !4392)
!4395 = !DILocation(line: 631, column: 37, scope: !4392)
!4396 = !DILocation(line: 631, column: 41, scope: !4392)
!4397 = !DILocation(line: 631, column: 34, scope: !4392)
!4398 = !DILocation(line: 632, column: 3, scope: !4399)
!4399 = distinct !DILexicalBlock(scope: !4400, file: !3, line: 632, column: 3)
!4400 = distinct !DILexicalBlock(scope: !4392, file: !3, line: 632, column: 3)
!4401 = !DILocation(line: 633, column: 10, scope: !4392)
!4402 = !DILocation(line: 633, column: 14, scope: !4392)
!4403 = !DILocation(line: 633, column: 8, scope: !4392)
!4404 = !DILocation(line: 633, column: 29, scope: !4392)
!4405 = !DILocation(line: 633, column: 33, scope: !4392)
!4406 = !DILocation(line: 633, column: 27, scope: !4392)
!4407 = !DILocation(line: 637, column: 3, scope: !4408)
!4408 = distinct !DILexicalBlock(scope: !4392, file: !3, line: 637, column: 3)
!4409 = !DILocation(line: 637, column: 3, scope: !4410)
!4410 = distinct !DILexicalBlock(scope: !4408, file: !3, line: 637, column: 3)
!4411 = !DILocation(line: 637, column: 3, scope: !4412)
!4412 = distinct !DILexicalBlock(scope: !4413, file: !3, line: 637, column: 3)
!4413 = distinct !DILexicalBlock(scope: !4410, file: !3, line: 637, column: 3)
!4414 = !DILocation(line: 637, column: 3, scope: !4413)
!4415 = distinct !{!4415, !4407, !4407, !785}
!4416 = !DILocation(line: 637, column: 3, scope: !4417)
!4417 = distinct !DILexicalBlock(scope: !4408, file: !3, line: 637, column: 3)
!4418 = !DILocation(line: 637, column: 3, scope: !4419)
!4419 = distinct !DILexicalBlock(scope: !4420, file: !3, line: 637, column: 3)
!4420 = distinct !DILexicalBlock(scope: !4417, file: !3, line: 637, column: 3)
!4421 = !DILocation(line: 637, column: 3, scope: !4420)
!4422 = !DILocation(line: 638, column: 11, scope: !4392)
!4423 = !DILocation(line: 638, column: 15, scope: !4392)
!4424 = !DILocation(line: 638, column: 8, scope: !4392)
!4425 = !DILocation(line: 639, column: 2, scope: !4392)
!4426 = !DILocation(line: 640, column: 9, scope: !4330)
!4427 = !DILocation(line: 640, column: 13, scope: !4330)
!4428 = !DILocation(line: 640, column: 19, scope: !4330)
!4429 = !DILocation(line: 640, column: 7, scope: !4330)
!4430 = !DILocation(line: 640, column: 34, scope: !4330)
!4431 = !DILocation(line: 640, column: 38, scope: !4330)
!4432 = !DILocation(line: 640, column: 44, scope: !4330)
!4433 = !DILocation(line: 640, column: 32, scope: !4330)
!4434 = !DILocation(line: 644, column: 2, scope: !4435)
!4435 = distinct !DILexicalBlock(scope: !4330, file: !3, line: 644, column: 2)
!4436 = !DILocation(line: 644, column: 2, scope: !4437)
!4437 = distinct !DILexicalBlock(scope: !4435, file: !3, line: 644, column: 2)
!4438 = !DILocation(line: 644, column: 2, scope: !4439)
!4439 = distinct !DILexicalBlock(scope: !4440, file: !3, line: 644, column: 2)
!4440 = distinct !DILexicalBlock(scope: !4437, file: !3, line: 644, column: 2)
!4441 = !DILocation(line: 644, column: 2, scope: !4440)
!4442 = distinct !{!4442, !4434, !4434, !785}
!4443 = !DILocation(line: 644, column: 2, scope: !4444)
!4444 = distinct !DILexicalBlock(scope: !4435, file: !3, line: 644, column: 2)
!4445 = !DILocation(line: 644, column: 2, scope: !4446)
!4446 = distinct !DILexicalBlock(scope: !4447, file: !3, line: 644, column: 2)
!4447 = distinct !DILexicalBlock(scope: !4444, file: !3, line: 644, column: 2)
!4448 = !DILocation(line: 644, column: 2, scope: !4447)
!4449 = !DILocation(line: 646, column: 13, scope: !4330)
!4450 = !DILocation(line: 646, column: 2, scope: !4330)
!4451 = !DILocation(line: 646, column: 6, scope: !4330)
!4452 = !DILocation(line: 646, column: 11, scope: !4330)
!4453 = !DILocation(line: 647, column: 12, scope: !4330)
!4454 = !DILocation(line: 647, column: 2, scope: !4330)
!4455 = !DILocation(line: 647, column: 6, scope: !4330)
!4456 = !DILocation(line: 647, column: 10, scope: !4330)
!4457 = !DILocation(line: 648, column: 1, scope: !4330)
!4458 = distinct !DISubprogram(name: "find1span", scope: !3, file: !3, line: 843, type: !4186, scopeLine: 844, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !438)
!4459 = !DILocalVariable(name: "bp", arg: 1, scope: !4458, file: !3, line: 843, type: !38)
!4460 = !DILocation(line: 843, column: 19, scope: !4458)
!4461 = !DILocalVariable(name: "bs", arg: 2, scope: !4458, file: !3, line: 843, type: !36)
!4462 = !DILocation(line: 843, column: 29, scope: !4458)
!4463 = !DILocalVariable(name: "be", arg: 3, scope: !4458, file: !3, line: 843, type: !36)
!4464 = !DILocation(line: 843, column: 39, scope: !4458)
!4465 = !DILocalVariable(name: "bits", scope: !4458, file: !3, line: 845, type: !36)
!4466 = !DILocation(line: 845, column: 8, scope: !4458)
!4467 = !DILocation(line: 845, column: 15, scope: !4458)
!4468 = !DILocation(line: 845, column: 20, scope: !4458)
!4469 = !DILocation(line: 845, column: 18, scope: !4458)
!4470 = !DILocalVariable(name: "n", scope: !4458, file: !3, line: 846, type: !36)
!4471 = !DILocation(line: 846, column: 8, scope: !4458)
!4472 = !DILocalVariable(name: "span", scope: !4458, file: !3, line: 846, type: !36)
!4473 = !DILocation(line: 846, column: 11, scope: !4458)
!4474 = !DILocation(line: 848, column: 8, scope: !4458)
!4475 = !DILocation(line: 848, column: 10, scope: !4458)
!4476 = !DILocation(line: 848, column: 5, scope: !4458)
!4477 = !DILocation(line: 852, column: 6, scope: !4478)
!4478 = distinct !DILexicalBlock(scope: !4458, file: !3, line: 852, column: 6)
!4479 = !DILocation(line: 852, column: 11, scope: !4478)
!4480 = !DILocation(line: 852, column: 15, scope: !4478)
!4481 = !DILocation(line: 852, column: 24, scope: !4478)
!4482 = !DILocation(line: 852, column: 27, scope: !4478)
!4483 = !DILocation(line: 852, column: 21, scope: !4478)
!4484 = !DILocation(line: 853, column: 20, scope: !4485)
!4485 = distinct !DILexicalBlock(scope: !4478, file: !3, line: 852, column: 34)
!4486 = !DILocation(line: 853, column: 19, scope: !4485)
!4487 = !DILocation(line: 853, column: 26, scope: !4485)
!4488 = !DILocation(line: 853, column: 23, scope: !4485)
!4489 = !DILocation(line: 853, column: 29, scope: !4485)
!4490 = !DILocation(line: 853, column: 10, scope: !4485)
!4491 = !DILocation(line: 853, column: 8, scope: !4485)
!4492 = !DILocation(line: 854, column: 7, scope: !4493)
!4493 = distinct !DILexicalBlock(scope: !4485, file: !3, line: 854, column: 7)
!4494 = !DILocation(line: 854, column: 16, scope: !4493)
!4495 = !DILocation(line: 854, column: 15, scope: !4493)
!4496 = !DILocation(line: 854, column: 12, scope: !4493)
!4497 = !DILocation(line: 855, column: 13, scope: !4493)
!4498 = !DILocation(line: 855, column: 12, scope: !4493)
!4499 = !DILocation(line: 855, column: 9, scope: !4493)
!4500 = !DILocation(line: 855, column: 4, scope: !4493)
!4501 = !DILocation(line: 856, column: 7, scope: !4502)
!4502 = distinct !DILexicalBlock(scope: !4485, file: !3, line: 856, column: 7)
!4503 = !DILocation(line: 856, column: 14, scope: !4502)
!4504 = !DILocation(line: 856, column: 12, scope: !4502)
!4505 = !DILocation(line: 857, column: 11, scope: !4502)
!4506 = !DILocation(line: 857, column: 9, scope: !4502)
!4507 = !DILocation(line: 857, column: 4, scope: !4502)
!4508 = !DILocation(line: 858, column: 7, scope: !4509)
!4509 = distinct !DILexicalBlock(scope: !4485, file: !3, line: 858, column: 7)
!4510 = !DILocation(line: 858, column: 9, scope: !4509)
!4511 = !DILocation(line: 858, column: 8, scope: !4509)
!4512 = !DILocation(line: 858, column: 14, scope: !4509)
!4513 = !DILocation(line: 859, column: 12, scope: !4509)
!4514 = !DILocation(line: 859, column: 4, scope: !4509)
!4515 = !DILocation(line: 860, column: 11, scope: !4485)
!4516 = !DILocation(line: 860, column: 8, scope: !4485)
!4517 = !DILocation(line: 861, column: 5, scope: !4485)
!4518 = !DILocation(line: 862, column: 2, scope: !4485)
!4519 = !DILocation(line: 863, column: 8, scope: !4478)
!4520 = !DILocation(line: 864, column: 6, scope: !4521)
!4521 = distinct !DILexicalBlock(scope: !4458, file: !3, line: 864, column: 6)
!4522 = !DILocation(line: 864, column: 11, scope: !4521)
!4523 = !DILocalVariable(name: "lp", scope: !4524, file: !3, line: 865, type: !34)
!4524 = distinct !DILexicalBlock(scope: !4521, file: !3, line: 864, column: 33)
!4525 = !DILocation(line: 865, column: 9, scope: !4524)
!4526 = !DILocation(line: 869, column: 3, scope: !4524)
!4527 = !DILocation(line: 869, column: 11, scope: !4524)
!4528 = !DILocation(line: 869, column: 10, scope: !4524)
!4529 = !DILocation(line: 870, column: 9, scope: !4530)
!4530 = distinct !DILexicalBlock(scope: !4531, file: !3, line: 870, column: 8)
!4531 = distinct !DILexicalBlock(scope: !4524, file: !3, line: 869, column: 32)
!4532 = !DILocation(line: 870, column: 8, scope: !4530)
!4533 = !DILocation(line: 870, column: 12, scope: !4530)
!4534 = !DILocation(line: 871, column: 13, scope: !4530)
!4535 = !DILocation(line: 871, column: 29, scope: !4530)
!4536 = !DILocation(line: 871, column: 28, scope: !4530)
!4537 = !DILocation(line: 871, column: 20, scope: !4530)
!4538 = !DILocation(line: 871, column: 18, scope: !4530)
!4539 = !DILocation(line: 871, column: 5, scope: !4530)
!4540 = !DILocation(line: 872, column: 9, scope: !4531)
!4541 = !DILocation(line: 872, column: 20, scope: !4531)
!4542 = !DILocation(line: 873, column: 6, scope: !4531)
!4543 = distinct !{!4543, !4526, !4544, !785}
!4544 = !DILocation(line: 874, column: 3, scope: !4524)
!4545 = !DILocation(line: 875, column: 16, scope: !4524)
!4546 = !DILocation(line: 875, column: 6, scope: !4524)
!4547 = !DILocation(line: 876, column: 3, scope: !4524)
!4548 = !DILocation(line: 876, column: 10, scope: !4524)
!4549 = !DILocation(line: 876, column: 15, scope: !4524)
!4550 = !DILocation(line: 876, column: 34, scope: !4524)
!4551 = !DILocation(line: 876, column: 38, scope: !4524)
!4552 = !DILocation(line: 876, column: 37, scope: !4524)
!4553 = !DILocation(line: 876, column: 41, scope: !4524)
!4554 = !DILocation(line: 0, scope: !4524)
!4555 = !DILocation(line: 877, column: 9, scope: !4556)
!4556 = distinct !DILexicalBlock(scope: !4524, file: !3, line: 876, column: 48)
!4557 = !DILocation(line: 877, column: 34, scope: !4556)
!4558 = !DILocation(line: 878, column: 6, scope: !4556)
!4559 = distinct !{!4559, !4547, !4560, !785}
!4560 = !DILocation(line: 879, column: 3, scope: !4524)
!4561 = !DILocation(line: 880, column: 18, scope: !4524)
!4562 = !DILocation(line: 880, column: 6, scope: !4524)
!4563 = !DILocation(line: 881, column: 2, scope: !4524)
!4564 = !DILocation(line: 885, column: 2, scope: !4458)
!4565 = !DILocation(line: 885, column: 9, scope: !4458)
!4566 = !DILocation(line: 885, column: 14, scope: !4458)
!4567 = !DILocation(line: 886, column: 8, scope: !4568)
!4568 = distinct !DILexicalBlock(scope: !4569, file: !3, line: 886, column: 7)
!4569 = distinct !DILexicalBlock(scope: !4458, file: !3, line: 885, column: 20)
!4570 = !DILocation(line: 886, column: 7, scope: !4568)
!4571 = !DILocation(line: 886, column: 11, scope: !4568)
!4572 = !DILocation(line: 887, column: 12, scope: !4568)
!4573 = !DILocation(line: 887, column: 28, scope: !4568)
!4574 = !DILocation(line: 887, column: 27, scope: !4568)
!4575 = !DILocation(line: 887, column: 19, scope: !4568)
!4576 = !DILocation(line: 887, column: 17, scope: !4568)
!4577 = !DILocation(line: 887, column: 4, scope: !4568)
!4578 = !DILocation(line: 888, column: 8, scope: !4569)
!4579 = !DILocation(line: 888, column: 19, scope: !4569)
!4580 = !DILocation(line: 889, column: 5, scope: !4569)
!4581 = distinct !{!4581, !4564, !4582, !785}
!4582 = !DILocation(line: 890, column: 2, scope: !4458)
!4583 = !DILocation(line: 894, column: 6, scope: !4584)
!4584 = distinct !DILexicalBlock(scope: !4458, file: !3, line: 894, column: 6)
!4585 = !DILocation(line: 894, column: 11, scope: !4584)
!4586 = !DILocation(line: 895, column: 16, scope: !4587)
!4587 = distinct !DILexicalBlock(scope: !4584, file: !3, line: 894, column: 16)
!4588 = !DILocation(line: 895, column: 15, scope: !4587)
!4589 = !DILocation(line: 895, column: 7, scope: !4587)
!4590 = !DILocation(line: 895, column: 5, scope: !4587)
!4591 = !DILocation(line: 896, column: 12, scope: !4587)
!4592 = !DILocation(line: 896, column: 16, scope: !4587)
!4593 = !DILocation(line: 896, column: 14, scope: !4587)
!4594 = !DILocation(line: 896, column: 23, scope: !4587)
!4595 = !DILocation(line: 896, column: 30, scope: !4587)
!4596 = !DILocation(line: 896, column: 8, scope: !4587)
!4597 = !DILocation(line: 897, column: 2, scope: !4587)
!4598 = !DILocation(line: 898, column: 10, scope: !4458)
!4599 = !DILocation(line: 898, column: 2, scope: !4458)
!4600 = !DILocation(line: 899, column: 1, scope: !4458)
!4601 = distinct !DISubprogram(name: "Fax3PutBits", scope: !3, file: !3, line: 579, type: !4602, scopeLine: 580, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !438)
!4602 = !DISubroutineType(types: !4603)
!4603 = !{null, !69, !2988, !2988}
!4604 = !DILocalVariable(name: "tif", arg: 1, scope: !4601, file: !3, line: 579, type: !69)
!4605 = !DILocation(line: 579, column: 19, scope: !4601)
!4606 = !DILocalVariable(name: "bits", arg: 2, scope: !4601, file: !3, line: 579, type: !2988)
!4607 = !DILocation(line: 579, column: 30, scope: !4601)
!4608 = !DILocalVariable(name: "length", arg: 3, scope: !4601, file: !3, line: 579, type: !2988)
!4609 = !DILocation(line: 579, column: 42, scope: !4601)
!4610 = !DILocalVariable(name: "sp", scope: !4601, file: !3, line: 581, type: !407)
!4611 = !DILocation(line: 581, column: 19, scope: !4601)
!4612 = !DILocation(line: 581, column: 24, scope: !4601)
!4613 = !DILocalVariable(name: "bit", scope: !4601, file: !3, line: 582, type: !2988)
!4614 = !DILocation(line: 582, column: 8, scope: !4601)
!4615 = !DILocation(line: 582, column: 14, scope: !4601)
!4616 = !DILocation(line: 582, column: 18, scope: !4601)
!4617 = !DILocalVariable(name: "data", scope: !4601, file: !3, line: 583, type: !37)
!4618 = !DILocation(line: 583, column: 6, scope: !4601)
!4619 = !DILocation(line: 583, column: 13, scope: !4601)
!4620 = !DILocation(line: 583, column: 17, scope: !4601)
!4621 = !DILocation(line: 585, column: 2, scope: !4622)
!4622 = distinct !DILexicalBlock(scope: !4601, file: !3, line: 585, column: 2)
!4623 = !DILocation(line: 585, column: 2, scope: !4624)
!4624 = distinct !DILexicalBlock(scope: !4622, file: !3, line: 585, column: 2)
!4625 = !DILocation(line: 585, column: 2, scope: !4626)
!4626 = distinct !DILexicalBlock(scope: !4627, file: !3, line: 585, column: 2)
!4627 = distinct !DILexicalBlock(scope: !4624, file: !3, line: 585, column: 2)
!4628 = !DILocation(line: 585, column: 2, scope: !4627)
!4629 = distinct !{!4629, !4621, !4621, !785}
!4630 = !DILocation(line: 585, column: 2, scope: !4631)
!4631 = distinct !DILexicalBlock(scope: !4622, file: !3, line: 585, column: 2)
!4632 = !DILocation(line: 585, column: 2, scope: !4633)
!4633 = distinct !DILexicalBlock(scope: !4634, file: !3, line: 585, column: 2)
!4634 = distinct !DILexicalBlock(scope: !4631, file: !3, line: 585, column: 2)
!4635 = !DILocation(line: 585, column: 2, scope: !4634)
!4636 = !DILocation(line: 587, column: 13, scope: !4601)
!4637 = !DILocation(line: 587, column: 2, scope: !4601)
!4638 = !DILocation(line: 587, column: 6, scope: !4601)
!4639 = !DILocation(line: 587, column: 11, scope: !4601)
!4640 = !DILocation(line: 588, column: 12, scope: !4601)
!4641 = !DILocation(line: 588, column: 2, scope: !4601)
!4642 = !DILocation(line: 588, column: 6, scope: !4601)
!4643 = !DILocation(line: 588, column: 10, scope: !4601)
!4644 = !DILocation(line: 589, column: 1, scope: !4601)
