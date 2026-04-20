; ModuleID = 'cBench/consumer_jpeg_c/src/cjpeg.c'
source_filename = "cBench/consumer_jpeg_c/src/cjpeg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jpeg_compress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, double, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [16 x i8], [16 x i8], [16 x i8], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.cjpeg_source_struct = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }

@progname = internal global ptr null, align 8, !dbg !0
@.str = private unnamed_addr constant [6 x i8] c"cjpeg\00", align 1, !dbg !319
@cdjpeg_message_table = internal constant [44 x ptr] [ptr null, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr null], align 16, !dbg !505
@stderr = external global ptr, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"%s: only one input file\0A\00", align 1, !dbg !324
@.str.2 = private unnamed_addr constant [3 x i8] c"rb\00", align 1, !dbg !329
@.str.3 = private unnamed_addr constant [19 x i8] c"%s: can't open %s\0A\00", align 1, !dbg !334
@outfilename = internal global ptr null, align 8, !dbg !341
@.str.4 = private unnamed_addr constant [3 x i8] c"wb\00", align 1, !dbg !339
@stdin = external global ptr, align 8
@stdout = external global ptr, align 8
@.str.5 = private unnamed_addr constant [32 x i8] c"Unsupported BMP colormap format\00", align 1, !dbg !343
@.str.6 = private unnamed_addr constant [43 x i8] c"Only 8- and 24-bit BMP files are supported\00", align 1, !dbg !348
@.str.7 = private unnamed_addr constant [36 x i8] c"Invalid BMP file: bad header length\00", align 1, !dbg !353
@.str.8 = private unnamed_addr constant [42 x i8] c"Invalid BMP file: biPlanes not equal to 1\00", align 1, !dbg !358
@.str.9 = private unnamed_addr constant [36 x i8] c"BMP output must be grayscale or RGB\00", align 1, !dbg !363
@.str.10 = private unnamed_addr constant [41 x i8] c"Sorry, compressed BMPs not yet supported\00", align 1, !dbg !365
@.str.11 = private unnamed_addr constant [40 x i8] c"Not a BMP file - does not start with BM\00", align 1, !dbg !370
@.str.12 = private unnamed_addr constant [23 x i8] c"%ux%u 24-bit BMP image\00", align 1, !dbg !375
@.str.13 = private unnamed_addr constant [34 x i8] c"%ux%u 8-bit colormapped BMP image\00", align 1, !dbg !380
@.str.14 = private unnamed_addr constant [27 x i8] c"%ux%u 24-bit OS2 BMP image\00", align 1, !dbg !385
@.str.15 = private unnamed_addr constant [38 x i8] c"%ux%u 8-bit colormapped OS2 BMP image\00", align 1, !dbg !390
@.str.16 = private unnamed_addr constant [24 x i8] c"GIF output got confused\00", align 1, !dbg !395
@.str.17 = private unnamed_addr constant [22 x i8] c"Bogus GIF codesize %d\00", align 1, !dbg !400
@.str.18 = private unnamed_addr constant [36 x i8] c"GIF output must be grayscale or RGB\00", align 1, !dbg !405
@.str.19 = private unnamed_addr constant [27 x i8] c"Too few images in GIF file\00", align 1, !dbg !407
@.str.20 = private unnamed_addr constant [15 x i8] c"Not a GIF file\00", align 1, !dbg !409
@.str.21 = private unnamed_addr constant [19 x i8] c"%ux%ux%d GIF image\00", align 1, !dbg !414
@.str.22 = private unnamed_addr constant [48 x i8] c"Warning: unexpected GIF version number '%c%c%c'\00", align 1, !dbg !416
@.str.23 = private unnamed_addr constant [44 x i8] c"Ignoring GIF extension block of type 0x%02x\00", align 1, !dbg !421
@.str.24 = private unnamed_addr constant [35 x i8] c"Caution: nonsquare pixels in input\00", align 1, !dbg !426
@.str.25 = private unnamed_addr constant [25 x i8] c"Corrupt data in GIF file\00", align 1, !dbg !431
@.str.26 = private unnamed_addr constant [40 x i8] c"Bogus char 0x%02x in GIF file, ignoring\00", align 1, !dbg !433
@.str.27 = private unnamed_addr constant [27 x i8] c"Premature end of GIF image\00", align 1, !dbg !435
@.str.28 = private unnamed_addr constant [20 x i8] c"Ran out of GIF bits\00", align 1, !dbg !437
@.str.29 = private unnamed_addr constant [36 x i8] c"PPM output must be grayscale or RGB\00", align 1, !dbg !442
@.str.30 = private unnamed_addr constant [28 x i8] c"Nonnumeric data in PPM file\00", align 1, !dbg !444
@.str.31 = private unnamed_addr constant [15 x i8] c"Not a PPM file\00", align 1, !dbg !449
@.str.32 = private unnamed_addr constant [16 x i8] c"%ux%u PGM image\00", align 1, !dbg !451
@.str.33 = private unnamed_addr constant [21 x i8] c"%ux%u text PGM image\00", align 1, !dbg !456
@.str.34 = private unnamed_addr constant [16 x i8] c"%ux%u PPM image\00", align 1, !dbg !461
@.str.35 = private unnamed_addr constant [21 x i8] c"%ux%u text PPM image\00", align 1, !dbg !463
@.str.36 = private unnamed_addr constant [34 x i8] c"Unsupported Targa colormap format\00", align 1, !dbg !465
@.str.37 = private unnamed_addr constant [34 x i8] c"Invalid or unsupported Targa file\00", align 1, !dbg !467
@.str.38 = private unnamed_addr constant [38 x i8] c"Targa output must be grayscale or RGB\00", align 1, !dbg !469
@.str.39 = private unnamed_addr constant [22 x i8] c"%ux%u RGB Targa image\00", align 1, !dbg !471
@.str.40 = private unnamed_addr constant [28 x i8] c"%ux%u grayscale Targa image\00", align 1, !dbg !473
@.str.41 = private unnamed_addr constant [30 x i8] c"%ux%u colormapped Targa image\00", align 1, !dbg !475
@.str.42 = private unnamed_addr constant [51 x i8] c"Color map file is invalid or of unsupported format\00", align 1, !dbg !480
@.str.43 = private unnamed_addr constant [53 x i8] c"Output file format cannot handle %d colormap entries\00", align 1, !dbg !485
@.str.44 = private unnamed_addr constant [14 x i8] c"ungetc failed\00", align 1, !dbg !490
@.str.45 = private unnamed_addr constant [59 x i8] c"Unrecognized input file format --- perhaps you need -targa\00", align 1, !dbg !495
@.str.46 = private unnamed_addr constant [31 x i8] c"Unsupported output file format\00", align 1, !dbg !500
@is_targa = internal global i32 0, align 4, !dbg !767
@.str.47 = private unnamed_addr constant [11 x i8] c"arithmetic\00", align 1, !dbg !508
@.str.48 = private unnamed_addr constant [44 x i8] c"%s: sorry, arithmetic coding not supported\0A\00", align 1, !dbg !513
@.str.49 = private unnamed_addr constant [9 x i8] c"baseline\00", align 1, !dbg !515
@.str.50 = private unnamed_addr constant [4 x i8] c"dct\00", align 1, !dbg !520
@.str.51 = private unnamed_addr constant [4 x i8] c"int\00", align 1, !dbg !525
@.str.52 = private unnamed_addr constant [5 x i8] c"fast\00", align 1, !dbg !527
@.str.53 = private unnamed_addr constant [6 x i8] c"float\00", align 1, !dbg !532
@.str.54 = private unnamed_addr constant [6 x i8] c"debug\00", align 1, !dbg !534
@.str.55 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1, !dbg !536
@parse_switches.printed_version = internal global i32 0, align 4, !dbg !539
@.str.56 = private unnamed_addr constant [47 x i8] c"Independent JPEG Group's CJPEG, version %s\0A%s\0A\00", align 1, !dbg !714
@.str.57 = private unnamed_addr constant [13 x i8] c"6a  7-Feb-96\00", align 1, !dbg !719
@.str.58 = private unnamed_addr constant [35 x i8] c"Copyright (C) 1996, Thomas G. Lane\00", align 1, !dbg !724
@.str.59 = private unnamed_addr constant [10 x i8] c"grayscale\00", align 1, !dbg !726
@.str.60 = private unnamed_addr constant [10 x i8] c"greyscale\00", align 1, !dbg !729
@.str.61 = private unnamed_addr constant [10 x i8] c"maxmemory\00", align 1, !dbg !731
@.str.62 = private unnamed_addr constant [6 x i8] c"%ld%c\00", align 1, !dbg !733
@.str.63 = private unnamed_addr constant [9 x i8] c"optimize\00", align 1, !dbg !735
@.str.64 = private unnamed_addr constant [9 x i8] c"optimise\00", align 1, !dbg !737
@.str.65 = private unnamed_addr constant [8 x i8] c"outfile\00", align 1, !dbg !739
@.str.66 = private unnamed_addr constant [12 x i8] c"progressive\00", align 1, !dbg !741
@.str.67 = private unnamed_addr constant [8 x i8] c"quality\00", align 1, !dbg !746
@.str.68 = private unnamed_addr constant [3 x i8] c"%d\00", align 1, !dbg !748
@.str.69 = private unnamed_addr constant [7 x i8] c"qslots\00", align 1, !dbg !750
@.str.70 = private unnamed_addr constant [8 x i8] c"qtables\00", align 1, !dbg !755
@.str.71 = private unnamed_addr constant [8 x i8] c"restart\00", align 1, !dbg !757
@.str.72 = private unnamed_addr constant [7 x i8] c"sample\00", align 1, !dbg !759
@.str.73 = private unnamed_addr constant [6 x i8] c"scans\00", align 1, !dbg !761
@.str.74 = private unnamed_addr constant [7 x i8] c"smooth\00", align 1, !dbg !763
@.str.75 = private unnamed_addr constant [6 x i8] c"targa\00", align 1, !dbg !765
@.str.76 = private unnamed_addr constant [22 x i8] c"usage: %s [switches] \00", align 1, !dbg !769
@.str.77 = private unnamed_addr constant [13 x i8] c"[inputfile]\0A\00", align 1, !dbg !771
@.str.78 = private unnamed_addr constant [38 x i8] c"Switches (names may be abbreviated):\0A\00", align 1, !dbg !773
@.str.79 = private unnamed_addr constant [69 x i8] c"  -quality N     Compression quality (0..100; 5-95 is useful range)\0A\00", align 1, !dbg !775
@.str.80 = private unnamed_addr constant [46 x i8] c"  -grayscale     Create monochrome JPEG file\0A\00", align 1, !dbg !780
@.str.81 = private unnamed_addr constant [78 x i8] c"  -optimize      Optimize Huffman table (smaller file, but slow compression)\0A\00", align 1, !dbg !785
@.str.82 = private unnamed_addr constant [47 x i8] c"  -progressive   Create progressive JPEG file\0A\00", align 1, !dbg !790
@.str.83 = private unnamed_addr constant [66 x i8] c"  -targa         Input file is Targa format (usually not needed)\0A\00", align 1, !dbg !792
@.str.84 = private unnamed_addr constant [30 x i8] c"Switches for advanced users:\0A\00", align 1, !dbg !797
@.str.85 = private unnamed_addr constant [43 x i8] c"  -dct int       Use integer DCT method%s\0A\00", align 1, !dbg !799
@.str.86 = private unnamed_addr constant [11 x i8] c" (default)\00", align 1, !dbg !801
@.str.87 = private unnamed_addr constant [57 x i8] c"  -dct fast      Use fast integer DCT (less accurate)%s\0A\00", align 1, !dbg !803
@.str.88 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !808
@.str.89 = private unnamed_addr constant [50 x i8] c"  -dct float     Use floating-point DCT method%s\0A\00", align 1, !dbg !813
@.str.90 = private unnamed_addr constant [68 x i8] c"  -restart N     Set restart interval in rows, or in blocks with B\0A\00", align 1, !dbg !818
@.str.91 = private unnamed_addr constant [63 x i8] c"  -smooth N      Smooth dithered input (N=1..100 is strength)\0A\00", align 1, !dbg !823
@.str.92 = private unnamed_addr constant [52 x i8] c"  -maxmemory N   Maximum memory to use (in kbytes)\0A\00", align 1, !dbg !828
@.str.93 = private unnamed_addr constant [47 x i8] c"  -outfile name  Specify name for output file\0A\00", align 1, !dbg !833
@.str.94 = private unnamed_addr constant [44 x i8] c"  -verbose  or  -debug   Emit debug output\0A\00", align 1, !dbg !835
@.str.95 = private unnamed_addr constant [23 x i8] c"Switches for wizards:\0A\00", align 1, !dbg !837
@.str.96 = private unnamed_addr constant [40 x i8] c"  -baseline      Force baseline output\0A\00", align 1, !dbg !839
@.str.97 = private unnamed_addr constant [56 x i8] c"  -qtables file  Use quantization tables given in file\0A\00", align 1, !dbg !841
@.str.98 = private unnamed_addr constant [56 x i8] c"  -qslots N[,...]    Set component quantization tables\0A\00", align 1, !dbg !846
@.str.99 = private unnamed_addr constant [53 x i8] c"  -sample HxV[,...]  Set component sampling factors\0A\00", align 1, !dbg !848
@.str.100 = private unnamed_addr constant [57 x i8] c"  -scans file    Create multi-scan JPEG per script file\0A\00", align 1, !dbg !850

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main1(i32 noundef %0, ptr noundef %1) #0 !dbg !860 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca %struct.jpeg_compress_struct, align 8
  %6 = alloca %struct.jpeg_error_mgr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
    #dbg_declare(ptr %3, !863, !DIExpression(), !864)
  store ptr %1, ptr %4, align 8
    #dbg_declare(ptr %4, !865, !DIExpression(), !866)
    #dbg_declare(ptr %5, !867, !DIExpression(), !868)
    #dbg_declare(ptr %6, !869, !DIExpression(), !870)
    #dbg_declare(ptr %7, !871, !DIExpression(), !872)
    #dbg_declare(ptr %8, !873, !DIExpression(), !939)
    #dbg_declare(ptr %9, !940, !DIExpression(), !941)
    #dbg_declare(ptr %10, !942, !DIExpression(), !943)
    #dbg_declare(ptr %11, !944, !DIExpression(), !945)
  %12 = load ptr, ptr %4, align 8, !dbg !946
  %13 = getelementptr inbounds ptr, ptr %12, i64 0, !dbg !946
  %14 = load ptr, ptr %13, align 8, !dbg !946
  store ptr %14, ptr @progname, align 8, !dbg !947
  %15 = load ptr, ptr @progname, align 8, !dbg !948
  %16 = icmp eq ptr %15, null, !dbg !950
  br i1 %16, label %23, label %17, !dbg !951

17:                                               ; preds = %2
  %18 = load ptr, ptr @progname, align 8, !dbg !952
  %19 = getelementptr inbounds i8, ptr %18, i64 0, !dbg !952
  %20 = load i8, ptr %19, align 1, !dbg !952
  %21 = sext i8 %20 to i32, !dbg !952
  %22 = icmp eq i32 %21, 0, !dbg !953
  br i1 %22, label %23, label %24, !dbg !951

23:                                               ; preds = %17, %2
  store ptr @.str, ptr @progname, align 8, !dbg !954
  br label %24, !dbg !955

24:                                               ; preds = %23, %17
  %25 = call ptr @jpeg_std_error(ptr noundef %6), !dbg !956
  %26 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %5, i32 0, i32 0, !dbg !957
  store ptr %25, ptr %26, align 8, !dbg !958
  call void @jpeg_CreateCompress(ptr noundef %5, i32 noundef 61, i64 noundef 496), !dbg !959
  %27 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %6, i32 0, i32 11, !dbg !960
  store ptr @cdjpeg_message_table, ptr %27, align 8, !dbg !961
  %28 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %6, i32 0, i32 12, !dbg !962
  store i32 1000, ptr %28, align 8, !dbg !963
  %29 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %6, i32 0, i32 13, !dbg !964
  store i32 1043, ptr %29, align 4, !dbg !965
  %30 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %5, i32 0, i32 9, !dbg !966
  store i32 2, ptr %30, align 4, !dbg !967
  call void @jpeg_set_defaults(ptr noundef %5), !dbg !968
  %31 = load i32, ptr %3, align 4, !dbg !969
  %32 = load ptr, ptr %4, align 8, !dbg !970
  %33 = call i32 @parse_switches(ptr noundef %5, i32 noundef %31, ptr noundef %32, i32 noundef 0, i32 noundef 0), !dbg !971
  store i32 %33, ptr %7, align 4, !dbg !972
  %34 = load i32, ptr %7, align 4, !dbg !973
  %35 = load i32, ptr %3, align 4, !dbg !975
  %36 = sub nsw i32 %35, 1, !dbg !976
  %37 = icmp slt i32 %34, %36, !dbg !977
  br i1 %37, label %38, label %42, !dbg !977

38:                                               ; preds = %24
  %39 = load ptr, ptr @stderr, align 8, !dbg !978
  %40 = load ptr, ptr @progname, align 8, !dbg !980
  %41 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %39, ptr noundef @.str.1, ptr noundef %40) #4, !dbg !981
  call void @usage(), !dbg !982
  br label %42, !dbg !983

42:                                               ; preds = %38, %24
  %43 = load i32, ptr %7, align 4, !dbg !984
  %44 = load i32, ptr %3, align 4, !dbg !986
  %45 = icmp slt i32 %43, %44, !dbg !987
  br i1 %45, label %46, label %64, !dbg !987

46:                                               ; preds = %42
  %47 = load ptr, ptr %4, align 8, !dbg !988
  %48 = load i32, ptr %7, align 4, !dbg !991
  %49 = sext i32 %48 to i64, !dbg !988
  %50 = getelementptr inbounds ptr, ptr %47, i64 %49, !dbg !988
  %51 = load ptr, ptr %50, align 8, !dbg !988
  %52 = call noalias ptr @fopen(ptr noundef %51, ptr noundef @.str.2), !dbg !992
  store ptr %52, ptr %9, align 8, !dbg !993
  %53 = icmp eq ptr %52, null, !dbg !994
  br i1 %53, label %54, label %63, !dbg !994

54:                                               ; preds = %46
  %55 = load ptr, ptr @stderr, align 8, !dbg !995
  %56 = load ptr, ptr @progname, align 8, !dbg !997
  %57 = load ptr, ptr %4, align 8, !dbg !998
  %58 = load i32, ptr %7, align 4, !dbg !999
  %59 = sext i32 %58 to i64, !dbg !998
  %60 = getelementptr inbounds ptr, ptr %57, i64 %59, !dbg !998
  %61 = load ptr, ptr %60, align 8, !dbg !998
  %62 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %55, ptr noundef @.str.3, ptr noundef %56, ptr noundef %61) #4, !dbg !1000
  call void @exit(i32 noundef 1) #5, !dbg !1001
  unreachable, !dbg !1001

63:                                               ; preds = %46
  br label %66, !dbg !1002

64:                                               ; preds = %42
  %65 = call ptr @read_stdin(), !dbg !1003
  store ptr %65, ptr %9, align 8, !dbg !1005
  br label %66

66:                                               ; preds = %64, %63
  %67 = load ptr, ptr @outfilename, align 8, !dbg !1006
  %68 = icmp ne ptr %67, null, !dbg !1008
  br i1 %68, label %69, label %79, !dbg !1008

69:                                               ; preds = %66
  %70 = load ptr, ptr @outfilename, align 8, !dbg !1009
  %71 = call noalias ptr @fopen(ptr noundef %70, ptr noundef @.str.4), !dbg !1012
  store ptr %71, ptr %10, align 8, !dbg !1013
  %72 = icmp eq ptr %71, null, !dbg !1014
  br i1 %72, label %73, label %78, !dbg !1014

73:                                               ; preds = %69
  %74 = load ptr, ptr @stderr, align 8, !dbg !1015
  %75 = load ptr, ptr @progname, align 8, !dbg !1017
  %76 = load ptr, ptr @outfilename, align 8, !dbg !1018
  %77 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %74, ptr noundef @.str.3, ptr noundef %75, ptr noundef %76) #4, !dbg !1019
  call void @exit(i32 noundef 1) #5, !dbg !1020
  unreachable, !dbg !1020

78:                                               ; preds = %69
  br label %81, !dbg !1021

79:                                               ; preds = %66
  %80 = call ptr @write_stdout(), !dbg !1022
  store ptr %80, ptr %10, align 8, !dbg !1024
  br label %81

81:                                               ; preds = %79, %78
  %82 = load ptr, ptr %9, align 8, !dbg !1025
  %83 = call ptr @select_file_type(ptr noundef %5, ptr noundef %82), !dbg !1026
  store ptr %83, ptr %8, align 8, !dbg !1027
  %84 = load ptr, ptr %9, align 8, !dbg !1028
  %85 = load ptr, ptr %8, align 8, !dbg !1029
  %86 = getelementptr inbounds nuw %struct.cjpeg_source_struct, ptr %85, i32 0, i32 3, !dbg !1030
  store ptr %84, ptr %86, align 8, !dbg !1031
  %87 = load ptr, ptr %8, align 8, !dbg !1032
  %88 = getelementptr inbounds nuw %struct.cjpeg_source_struct, ptr %87, i32 0, i32 0, !dbg !1033
  %89 = load ptr, ptr %88, align 8, !dbg !1033
  %90 = load ptr, ptr %8, align 8, !dbg !1034
  call void %89(ptr noundef %5, ptr noundef %90), !dbg !1035
  call void @jpeg_default_colorspace(ptr noundef %5), !dbg !1036
  %91 = load i32, ptr %3, align 4, !dbg !1037
  %92 = load ptr, ptr %4, align 8, !dbg !1038
  %93 = call i32 @parse_switches(ptr noundef %5, i32 noundef %91, ptr noundef %92, i32 noundef 0, i32 noundef 1), !dbg !1039
  store i32 %93, ptr %7, align 4, !dbg !1040
  %94 = load ptr, ptr %10, align 8, !dbg !1041
  call void @jpeg_stdio_dest(ptr noundef %5, ptr noundef %94), !dbg !1042
  call void @jpeg_start_compress(ptr noundef %5, i32 noundef 1), !dbg !1043
  br label %95, !dbg !1044

95:                                               ; preds = %101, %81
  %96 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %5, i32 0, i32 36, !dbg !1045
  %97 = load i32, ptr %96, align 8, !dbg !1045
  %98 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %5, i32 0, i32 7, !dbg !1046
  %99 = load i32, ptr %98, align 4, !dbg !1046
  %100 = icmp ult i32 %97, %99, !dbg !1047
  br i1 %100, label %101, label %112, !dbg !1044

101:                                              ; preds = %95
  %102 = load ptr, ptr %8, align 8, !dbg !1048
  %103 = getelementptr inbounds nuw %struct.cjpeg_source_struct, ptr %102, i32 0, i32 1, !dbg !1050
  %104 = load ptr, ptr %103, align 8, !dbg !1050
  %105 = load ptr, ptr %8, align 8, !dbg !1051
  %106 = call i32 %104(ptr noundef %5, ptr noundef %105), !dbg !1052
  store i32 %106, ptr %11, align 4, !dbg !1053
  %107 = load ptr, ptr %8, align 8, !dbg !1054
  %108 = getelementptr inbounds nuw %struct.cjpeg_source_struct, ptr %107, i32 0, i32 4, !dbg !1055
  %109 = load ptr, ptr %108, align 8, !dbg !1055
  %110 = load i32, ptr %11, align 4, !dbg !1056
  %111 = call i32 @jpeg_write_scanlines(ptr noundef %5, ptr noundef %109, i32 noundef %110), !dbg !1057
  br label %95, !dbg !1044, !llvm.loop !1058

112:                                              ; preds = %95
  %113 = load ptr, ptr %8, align 8, !dbg !1061
  %114 = getelementptr inbounds nuw %struct.cjpeg_source_struct, ptr %113, i32 0, i32 2, !dbg !1062
  %115 = load ptr, ptr %114, align 8, !dbg !1062
  %116 = load ptr, ptr %8, align 8, !dbg !1063
  call void %115(ptr noundef %5, ptr noundef %116), !dbg !1064
  call void @jpeg_finish_compress(ptr noundef %5), !dbg !1065
  call void @jpeg_destroy_compress(ptr noundef %5), !dbg !1066
  %117 = load ptr, ptr %9, align 8, !dbg !1067
  %118 = load ptr, ptr @stdin, align 8, !dbg !1069
  %119 = icmp ne ptr %117, %118, !dbg !1070
  br i1 %119, label %120, label %123, !dbg !1070

120:                                              ; preds = %112
  %121 = load ptr, ptr %9, align 8, !dbg !1071
  %122 = call i32 @fclose(ptr noundef %121), !dbg !1072
  br label %123, !dbg !1072

123:                                              ; preds = %120, %112
  %124 = load ptr, ptr %10, align 8, !dbg !1073
  %125 = load ptr, ptr @stdout, align 8, !dbg !1075
  %126 = icmp ne ptr %124, %125, !dbg !1076
  br i1 %126, label %127, label %130, !dbg !1076

127:                                              ; preds = %123
  %128 = load ptr, ptr %10, align 8, !dbg !1077
  %129 = call i32 @fclose(ptr noundef %128), !dbg !1078
  br label %130, !dbg !1078

130:                                              ; preds = %127, %123
  ret i32 0, !dbg !1079
}

declare ptr @jpeg_std_error(ptr noundef) #1

declare void @jpeg_CreateCompress(ptr noundef, i32 noundef, i64 noundef) #1

declare void @jpeg_set_defaults(ptr noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @parse_switches(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 !dbg !541 {
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca ptr, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  %19 = alloca ptr, align 8
  %20 = alloca ptr, align 8
  %21 = alloca i64, align 8
  %22 = alloca i8, align 1
  %23 = alloca i64, align 8
  %24 = alloca i8, align 1
  %25 = alloca i32, align 4
  store ptr %0, ptr %6, align 8
    #dbg_declare(ptr %6, !1080, !DIExpression(), !1081)
  store i32 %1, ptr %7, align 4
    #dbg_declare(ptr %7, !1082, !DIExpression(), !1083)
  store ptr %2, ptr %8, align 8
    #dbg_declare(ptr %8, !1084, !DIExpression(), !1085)
  store i32 %3, ptr %9, align 4
    #dbg_declare(ptr %9, !1086, !DIExpression(), !1087)
  store i32 %4, ptr %10, align 4
    #dbg_declare(ptr %10, !1088, !DIExpression(), !1089)
    #dbg_declare(ptr %11, !1090, !DIExpression(), !1091)
    #dbg_declare(ptr %12, !1092, !DIExpression(), !1093)
    #dbg_declare(ptr %13, !1094, !DIExpression(), !1095)
    #dbg_declare(ptr %14, !1096, !DIExpression(), !1097)
    #dbg_declare(ptr %15, !1098, !DIExpression(), !1099)
    #dbg_declare(ptr %16, !1100, !DIExpression(), !1101)
    #dbg_declare(ptr %17, !1102, !DIExpression(), !1103)
  store ptr null, ptr %17, align 8, !dbg !1103
    #dbg_declare(ptr %18, !1104, !DIExpression(), !1105)
  store ptr null, ptr %18, align 8, !dbg !1105
    #dbg_declare(ptr %19, !1106, !DIExpression(), !1107)
  store ptr null, ptr %19, align 8, !dbg !1107
    #dbg_declare(ptr %20, !1108, !DIExpression(), !1109)
  store ptr null, ptr %20, align 8, !dbg !1109
  store i32 75, ptr %13, align 4, !dbg !1110
  store i32 100, ptr %14, align 4, !dbg !1111
  store i32 0, ptr %15, align 4, !dbg !1112
  store i32 0, ptr %16, align 4, !dbg !1113
  store i32 0, ptr @is_targa, align 4, !dbg !1114
  store ptr null, ptr @outfilename, align 8, !dbg !1115
  %26 = load ptr, ptr %6, align 8, !dbg !1116
  %27 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %26, i32 0, i32 0, !dbg !1117
  %28 = load ptr, ptr %27, align 8, !dbg !1117
  %29 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %28, i32 0, i32 7, !dbg !1118
  store i32 0, ptr %29, align 4, !dbg !1119
  store i32 1, ptr %11, align 4, !dbg !1120
  br label %30, !dbg !1122

30:                                               ; preds = %398, %5
  %31 = load i32, ptr %11, align 4, !dbg !1123
  %32 = load i32, ptr %7, align 4, !dbg !1125
  %33 = icmp slt i32 %31, %32, !dbg !1126
  br i1 %33, label %34, label %401, !dbg !1127

34:                                               ; preds = %30
  %35 = load ptr, ptr %8, align 8, !dbg !1128
  %36 = load i32, ptr %11, align 4, !dbg !1130
  %37 = sext i32 %36 to i64, !dbg !1128
  %38 = getelementptr inbounds ptr, ptr %35, i64 %37, !dbg !1128
  %39 = load ptr, ptr %38, align 8, !dbg !1128
  store ptr %39, ptr %12, align 8, !dbg !1131
  %40 = load ptr, ptr %12, align 8, !dbg !1132
  %41 = load i8, ptr %40, align 1, !dbg !1134
  %42 = sext i8 %41 to i32, !dbg !1134
  %43 = icmp ne i32 %42, 45, !dbg !1135
  br i1 %43, label %44, label %50, !dbg !1135

44:                                               ; preds = %34
  %45 = load i32, ptr %11, align 4, !dbg !1136
  %46 = load i32, ptr %9, align 4, !dbg !1139
  %47 = icmp sle i32 %45, %46, !dbg !1140
  br i1 %47, label %48, label %49, !dbg !1140

48:                                               ; preds = %44
  store ptr null, ptr @outfilename, align 8, !dbg !1141
  br label %398, !dbg !1143

49:                                               ; preds = %44
  br label %401, !dbg !1144

50:                                               ; preds = %34
  %51 = load ptr, ptr %12, align 8, !dbg !1145
  %52 = getelementptr inbounds nuw i8, ptr %51, i32 1, !dbg !1145
  store ptr %52, ptr %12, align 8, !dbg !1145
  %53 = load ptr, ptr %12, align 8, !dbg !1146
  %54 = call i32 @keymatch(ptr noundef %53, ptr noundef @.str.47, i32 noundef 1), !dbg !1148
  %55 = icmp ne i32 %54, 0, !dbg !1148
  br i1 %55, label %56, label %60, !dbg !1148

56:                                               ; preds = %50
  %57 = load ptr, ptr @stderr, align 8, !dbg !1149
  %58 = load ptr, ptr @progname, align 8, !dbg !1151
  %59 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %57, ptr noundef @.str.48, ptr noundef %58) #4, !dbg !1152
  call void @exit(i32 noundef 1) #5, !dbg !1153
  unreachable, !dbg !1153

60:                                               ; preds = %50
  %61 = load ptr, ptr %12, align 8, !dbg !1154
  %62 = call i32 @keymatch(ptr noundef %61, ptr noundef @.str.49, i32 noundef 1), !dbg !1156
  %63 = icmp ne i32 %62, 0, !dbg !1156
  br i1 %63, label %64, label %65, !dbg !1156

64:                                               ; preds = %60
  store i32 1, ptr %15, align 4, !dbg !1157
  br label %396, !dbg !1159

65:                                               ; preds = %60
  %66 = load ptr, ptr %12, align 8, !dbg !1160
  %67 = call i32 @keymatch(ptr noundef %66, ptr noundef @.str.50, i32 noundef 2), !dbg !1162
  %68 = icmp ne i32 %67, 0, !dbg !1162
  br i1 %68, label %69, label %112, !dbg !1162

69:                                               ; preds = %65
  %70 = load i32, ptr %11, align 4, !dbg !1163
  %71 = add nsw i32 %70, 1, !dbg !1163
  store i32 %71, ptr %11, align 4, !dbg !1163
  %72 = load i32, ptr %7, align 4, !dbg !1166
  %73 = icmp sge i32 %71, %72, !dbg !1167
  br i1 %73, label %74, label %75, !dbg !1167

74:                                               ; preds = %69
  call void @usage(), !dbg !1168
  br label %75, !dbg !1168

75:                                               ; preds = %74, %69
  %76 = load ptr, ptr %8, align 8, !dbg !1169
  %77 = load i32, ptr %11, align 4, !dbg !1171
  %78 = sext i32 %77 to i64, !dbg !1169
  %79 = getelementptr inbounds ptr, ptr %76, i64 %78, !dbg !1169
  %80 = load ptr, ptr %79, align 8, !dbg !1169
  %81 = call i32 @keymatch(ptr noundef %80, ptr noundef @.str.51, i32 noundef 1), !dbg !1172
  %82 = icmp ne i32 %81, 0, !dbg !1172
  br i1 %82, label %83, label %86, !dbg !1172

83:                                               ; preds = %75
  %84 = load ptr, ptr %6, align 8, !dbg !1173
  %85 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %84, i32 0, i32 28, !dbg !1175
  store i32 0, ptr %85, align 4, !dbg !1176
  br label %111, !dbg !1177

86:                                               ; preds = %75
  %87 = load ptr, ptr %8, align 8, !dbg !1178
  %88 = load i32, ptr %11, align 4, !dbg !1180
  %89 = sext i32 %88 to i64, !dbg !1178
  %90 = getelementptr inbounds ptr, ptr %87, i64 %89, !dbg !1178
  %91 = load ptr, ptr %90, align 8, !dbg !1178
  %92 = call i32 @keymatch(ptr noundef %91, ptr noundef @.str.52, i32 noundef 2), !dbg !1181
  %93 = icmp ne i32 %92, 0, !dbg !1181
  br i1 %93, label %94, label %97, !dbg !1181

94:                                               ; preds = %86
  %95 = load ptr, ptr %6, align 8, !dbg !1182
  %96 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %95, i32 0, i32 28, !dbg !1184
  store i32 1, ptr %96, align 4, !dbg !1185
  br label %110, !dbg !1186

97:                                               ; preds = %86
  %98 = load ptr, ptr %8, align 8, !dbg !1187
  %99 = load i32, ptr %11, align 4, !dbg !1189
  %100 = sext i32 %99 to i64, !dbg !1187
  %101 = getelementptr inbounds ptr, ptr %98, i64 %100, !dbg !1187
  %102 = load ptr, ptr %101, align 8, !dbg !1187
  %103 = call i32 @keymatch(ptr noundef %102, ptr noundef @.str.53, i32 noundef 2), !dbg !1190
  %104 = icmp ne i32 %103, 0, !dbg !1190
  br i1 %104, label %105, label %108, !dbg !1190

105:                                              ; preds = %97
  %106 = load ptr, ptr %6, align 8, !dbg !1191
  %107 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %106, i32 0, i32 28, !dbg !1193
  store i32 2, ptr %107, align 4, !dbg !1194
  br label %109, !dbg !1195

108:                                              ; preds = %97
  call void @usage(), !dbg !1196
  br label %109

109:                                              ; preds = %108, %105
  br label %110

110:                                              ; preds = %109, %94
  br label %111

111:                                              ; preds = %110, %83
  br label %395, !dbg !1197

112:                                              ; preds = %65
  %113 = load ptr, ptr %12, align 8, !dbg !1198
  %114 = call i32 @keymatch(ptr noundef %113, ptr noundef @.str.54, i32 noundef 1), !dbg !1200
  %115 = icmp ne i32 %114, 0, !dbg !1200
  br i1 %115, label %120, label %116, !dbg !1201

116:                                              ; preds = %112
  %117 = load ptr, ptr %12, align 8, !dbg !1202
  %118 = call i32 @keymatch(ptr noundef %117, ptr noundef @.str.55, i32 noundef 1), !dbg !1203
  %119 = icmp ne i32 %118, 0, !dbg !1203
  br i1 %119, label %120, label %133, !dbg !1201

120:                                              ; preds = %116, %112
  %121 = load i32, ptr @parse_switches.printed_version, align 4, !dbg !1204
  %122 = icmp ne i32 %121, 0, !dbg !1204
  br i1 %122, label %126, label %123, !dbg !1207

123:                                              ; preds = %120
  %124 = load ptr, ptr @stderr, align 8, !dbg !1208
  %125 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %124, ptr noundef @.str.56, ptr noundef @.str.57, ptr noundef @.str.58) #4, !dbg !1210
  store i32 1, ptr @parse_switches.printed_version, align 4, !dbg !1211
  br label %126, !dbg !1212

126:                                              ; preds = %123, %120
  %127 = load ptr, ptr %6, align 8, !dbg !1213
  %128 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %127, i32 0, i32 0, !dbg !1214
  %129 = load ptr, ptr %128, align 8, !dbg !1214
  %130 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %129, i32 0, i32 7, !dbg !1215
  %131 = load i32, ptr %130, align 4, !dbg !1216
  %132 = add nsw i32 %131, 1, !dbg !1216
  store i32 %132, ptr %130, align 4, !dbg !1216
  br label %394, !dbg !1217

133:                                              ; preds = %116
  %134 = load ptr, ptr %12, align 8, !dbg !1218
  %135 = call i32 @keymatch(ptr noundef %134, ptr noundef @.str.59, i32 noundef 2), !dbg !1220
  %136 = icmp ne i32 %135, 0, !dbg !1220
  br i1 %136, label %141, label %137, !dbg !1221

137:                                              ; preds = %133
  %138 = load ptr, ptr %12, align 8, !dbg !1222
  %139 = call i32 @keymatch(ptr noundef %138, ptr noundef @.str.60, i32 noundef 2), !dbg !1223
  %140 = icmp ne i32 %139, 0, !dbg !1223
  br i1 %140, label %141, label %143, !dbg !1221

141:                                              ; preds = %137, %133
  %142 = load ptr, ptr %6, align 8, !dbg !1224
  call void @jpeg_set_colorspace(ptr noundef %142, i32 noundef 1), !dbg !1226
  br label %393, !dbg !1227

143:                                              ; preds = %137
  %144 = load ptr, ptr %12, align 8, !dbg !1228
  %145 = call i32 @keymatch(ptr noundef %144, ptr noundef @.str.61, i32 noundef 3), !dbg !1230
  %146 = icmp ne i32 %145, 0, !dbg !1230
  br i1 %146, label %147, label %180, !dbg !1230

147:                                              ; preds = %143
    #dbg_declare(ptr %21, !1231, !DIExpression(), !1233)
    #dbg_declare(ptr %22, !1234, !DIExpression(), !1235)
  store i8 120, ptr %22, align 1, !dbg !1235
  %148 = load i32, ptr %11, align 4, !dbg !1236
  %149 = add nsw i32 %148, 1, !dbg !1236
  store i32 %149, ptr %11, align 4, !dbg !1236
  %150 = load i32, ptr %7, align 4, !dbg !1238
  %151 = icmp sge i32 %149, %150, !dbg !1239
  br i1 %151, label %152, label %153, !dbg !1239

152:                                              ; preds = %147
  call void @usage(), !dbg !1240
  br label %153, !dbg !1240

153:                                              ; preds = %152, %147
  %154 = load ptr, ptr %8, align 8, !dbg !1241
  %155 = load i32, ptr %11, align 4, !dbg !1243
  %156 = sext i32 %155 to i64, !dbg !1241
  %157 = getelementptr inbounds ptr, ptr %154, i64 %156, !dbg !1241
  %158 = load ptr, ptr %157, align 8, !dbg !1241
  %159 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %158, ptr noundef @.str.62, ptr noundef %21, ptr noundef %22) #4, !dbg !1244
  %160 = icmp slt i32 %159, 1, !dbg !1245
  br i1 %160, label %161, label %162, !dbg !1245

161:                                              ; preds = %153
  call void @usage(), !dbg !1246
  br label %162, !dbg !1246

162:                                              ; preds = %161, %153
  %163 = load i8, ptr %22, align 1, !dbg !1247
  %164 = sext i8 %163 to i32, !dbg !1247
  %165 = icmp eq i32 %164, 109, !dbg !1249
  br i1 %165, label %170, label %166, !dbg !1250

166:                                              ; preds = %162
  %167 = load i8, ptr %22, align 1, !dbg !1251
  %168 = sext i8 %167 to i32, !dbg !1251
  %169 = icmp eq i32 %168, 77, !dbg !1252
  br i1 %169, label %170, label %173, !dbg !1250

170:                                              ; preds = %166, %162
  %171 = load i64, ptr %21, align 8, !dbg !1253
  %172 = mul nsw i64 %171, 1000, !dbg !1253
  store i64 %172, ptr %21, align 8, !dbg !1253
  br label %173, !dbg !1254

173:                                              ; preds = %170, %166
  %174 = load i64, ptr %21, align 8, !dbg !1255
  %175 = mul nsw i64 %174, 1000, !dbg !1256
  %176 = load ptr, ptr %6, align 8, !dbg !1257
  %177 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %176, i32 0, i32 1, !dbg !1258
  %178 = load ptr, ptr %177, align 8, !dbg !1258
  %179 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %178, i32 0, i32 11, !dbg !1259
  store i64 %175, ptr %179, align 8, !dbg !1260
  br label %392, !dbg !1261

180:                                              ; preds = %143
  %181 = load ptr, ptr %12, align 8, !dbg !1262
  %182 = call i32 @keymatch(ptr noundef %181, ptr noundef @.str.63, i32 noundef 1), !dbg !1264
  %183 = icmp ne i32 %182, 0, !dbg !1264
  br i1 %183, label %188, label %184, !dbg !1265

184:                                              ; preds = %180
  %185 = load ptr, ptr %12, align 8, !dbg !1266
  %186 = call i32 @keymatch(ptr noundef %185, ptr noundef @.str.64, i32 noundef 1), !dbg !1267
  %187 = icmp ne i32 %186, 0, !dbg !1267
  br i1 %187, label %188, label %191, !dbg !1265

188:                                              ; preds = %184, %180
  %189 = load ptr, ptr %6, align 8, !dbg !1268
  %190 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %189, i32 0, i32 25, !dbg !1270
  store i32 1, ptr %190, align 8, !dbg !1271
  br label %391, !dbg !1272

191:                                              ; preds = %184
  %192 = load ptr, ptr %12, align 8, !dbg !1273
  %193 = call i32 @keymatch(ptr noundef %192, ptr noundef @.str.65, i32 noundef 4), !dbg !1275
  %194 = icmp ne i32 %193, 0, !dbg !1275
  br i1 %194, label %195, label %207, !dbg !1275

195:                                              ; preds = %191
  %196 = load i32, ptr %11, align 4, !dbg !1276
  %197 = add nsw i32 %196, 1, !dbg !1276
  store i32 %197, ptr %11, align 4, !dbg !1276
  %198 = load i32, ptr %7, align 4, !dbg !1279
  %199 = icmp sge i32 %197, %198, !dbg !1280
  br i1 %199, label %200, label %201, !dbg !1280

200:                                              ; preds = %195
  call void @usage(), !dbg !1281
  br label %201, !dbg !1281

201:                                              ; preds = %200, %195
  %202 = load ptr, ptr %8, align 8, !dbg !1282
  %203 = load i32, ptr %11, align 4, !dbg !1283
  %204 = sext i32 %203 to i64, !dbg !1282
  %205 = getelementptr inbounds ptr, ptr %202, i64 %204, !dbg !1282
  %206 = load ptr, ptr %205, align 8, !dbg !1282
  store ptr %206, ptr @outfilename, align 8, !dbg !1284
  br label %390, !dbg !1285

207:                                              ; preds = %191
  %208 = load ptr, ptr %12, align 8, !dbg !1286
  %209 = call i32 @keymatch(ptr noundef %208, ptr noundef @.str.66, i32 noundef 1), !dbg !1288
  %210 = icmp ne i32 %209, 0, !dbg !1288
  br i1 %210, label %211, label %212, !dbg !1288

211:                                              ; preds = %207
  store i32 1, ptr %16, align 4, !dbg !1289
  br label %389, !dbg !1291

212:                                              ; preds = %207
  %213 = load ptr, ptr %12, align 8, !dbg !1292
  %214 = call i32 @keymatch(ptr noundef %213, ptr noundef @.str.67, i32 noundef 1), !dbg !1294
  %215 = icmp ne i32 %214, 0, !dbg !1294
  br i1 %215, label %216, label %234, !dbg !1294

216:                                              ; preds = %212
  %217 = load i32, ptr %11, align 4, !dbg !1295
  %218 = add nsw i32 %217, 1, !dbg !1295
  store i32 %218, ptr %11, align 4, !dbg !1295
  %219 = load i32, ptr %7, align 4, !dbg !1298
  %220 = icmp sge i32 %218, %219, !dbg !1299
  br i1 %220, label %221, label %222, !dbg !1299

221:                                              ; preds = %216
  call void @usage(), !dbg !1300
  br label %222, !dbg !1300

222:                                              ; preds = %221, %216
  %223 = load ptr, ptr %8, align 8, !dbg !1301
  %224 = load i32, ptr %11, align 4, !dbg !1303
  %225 = sext i32 %224 to i64, !dbg !1301
  %226 = getelementptr inbounds ptr, ptr %223, i64 %225, !dbg !1301
  %227 = load ptr, ptr %226, align 8, !dbg !1301
  %228 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %227, ptr noundef @.str.68, ptr noundef %13) #4, !dbg !1304
  %229 = icmp ne i32 %228, 1, !dbg !1305
  br i1 %229, label %230, label %231, !dbg !1305

230:                                              ; preds = %222
  call void @usage(), !dbg !1306
  br label %231, !dbg !1306

231:                                              ; preds = %230, %222
  %232 = load i32, ptr %13, align 4, !dbg !1307
  %233 = call i32 @jpeg_quality_scaling(i32 noundef %232), !dbg !1308
  store i32 %233, ptr %14, align 4, !dbg !1309
  br label %388, !dbg !1310

234:                                              ; preds = %212
  %235 = load ptr, ptr %12, align 8, !dbg !1311
  %236 = call i32 @keymatch(ptr noundef %235, ptr noundef @.str.69, i32 noundef 2), !dbg !1313
  %237 = icmp ne i32 %236, 0, !dbg !1313
  br i1 %237, label %238, label %250, !dbg !1313

238:                                              ; preds = %234
  %239 = load i32, ptr %11, align 4, !dbg !1314
  %240 = add nsw i32 %239, 1, !dbg !1314
  store i32 %240, ptr %11, align 4, !dbg !1314
  %241 = load i32, ptr %7, align 4, !dbg !1317
  %242 = icmp sge i32 %240, %241, !dbg !1318
  br i1 %242, label %243, label %244, !dbg !1318

243:                                              ; preds = %238
  call void @usage(), !dbg !1319
  br label %244, !dbg !1319

244:                                              ; preds = %243, %238
  %245 = load ptr, ptr %8, align 8, !dbg !1320
  %246 = load i32, ptr %11, align 4, !dbg !1321
  %247 = sext i32 %246 to i64, !dbg !1320
  %248 = getelementptr inbounds ptr, ptr %245, i64 %247, !dbg !1320
  %249 = load ptr, ptr %248, align 8, !dbg !1320
  store ptr %249, ptr %18, align 8, !dbg !1322
  br label %387, !dbg !1323

250:                                              ; preds = %234
  %251 = load ptr, ptr %12, align 8, !dbg !1324
  %252 = call i32 @keymatch(ptr noundef %251, ptr noundef @.str.70, i32 noundef 2), !dbg !1326
  %253 = icmp ne i32 %252, 0, !dbg !1326
  br i1 %253, label %254, label %266, !dbg !1326

254:                                              ; preds = %250
  %255 = load i32, ptr %11, align 4, !dbg !1327
  %256 = add nsw i32 %255, 1, !dbg !1327
  store i32 %256, ptr %11, align 4, !dbg !1327
  %257 = load i32, ptr %7, align 4, !dbg !1330
  %258 = icmp sge i32 %256, %257, !dbg !1331
  br i1 %258, label %259, label %260, !dbg !1331

259:                                              ; preds = %254
  call void @usage(), !dbg !1332
  br label %260, !dbg !1332

260:                                              ; preds = %259, %254
  %261 = load ptr, ptr %8, align 8, !dbg !1333
  %262 = load i32, ptr %11, align 4, !dbg !1334
  %263 = sext i32 %262 to i64, !dbg !1333
  %264 = getelementptr inbounds ptr, ptr %261, i64 %263, !dbg !1333
  %265 = load ptr, ptr %264, align 8, !dbg !1333
  store ptr %265, ptr %17, align 8, !dbg !1335
  br label %386, !dbg !1336

266:                                              ; preds = %250
  %267 = load ptr, ptr %12, align 8, !dbg !1337
  %268 = call i32 @keymatch(ptr noundef %267, ptr noundef @.str.71, i32 noundef 1), !dbg !1339
  %269 = icmp ne i32 %268, 0, !dbg !1339
  br i1 %269, label %270, label %313, !dbg !1339

270:                                              ; preds = %266
    #dbg_declare(ptr %23, !1340, !DIExpression(), !1342)
    #dbg_declare(ptr %24, !1343, !DIExpression(), !1344)
  store i8 120, ptr %24, align 1, !dbg !1344
  %271 = load i32, ptr %11, align 4, !dbg !1345
  %272 = add nsw i32 %271, 1, !dbg !1345
  store i32 %272, ptr %11, align 4, !dbg !1345
  %273 = load i32, ptr %7, align 4, !dbg !1347
  %274 = icmp sge i32 %272, %273, !dbg !1348
  br i1 %274, label %275, label %276, !dbg !1348

275:                                              ; preds = %270
  call void @usage(), !dbg !1349
  br label %276, !dbg !1349

276:                                              ; preds = %275, %270
  %277 = load ptr, ptr %8, align 8, !dbg !1350
  %278 = load i32, ptr %11, align 4, !dbg !1352
  %279 = sext i32 %278 to i64, !dbg !1350
  %280 = getelementptr inbounds ptr, ptr %277, i64 %279, !dbg !1350
  %281 = load ptr, ptr %280, align 8, !dbg !1350
  %282 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %281, ptr noundef @.str.62, ptr noundef %23, ptr noundef %24) #4, !dbg !1353
  %283 = icmp slt i32 %282, 1, !dbg !1354
  br i1 %283, label %284, label %285, !dbg !1354

284:                                              ; preds = %276
  call void @usage(), !dbg !1355
  br label %285, !dbg !1355

285:                                              ; preds = %284, %276
  %286 = load i64, ptr %23, align 8, !dbg !1356
  %287 = icmp slt i64 %286, 0, !dbg !1358
  br i1 %287, label %291, label %288, !dbg !1359

288:                                              ; preds = %285
  %289 = load i64, ptr %23, align 8, !dbg !1360
  %290 = icmp sgt i64 %289, 65535, !dbg !1361
  br i1 %290, label %291, label %292, !dbg !1359

291:                                              ; preds = %288, %285
  call void @usage(), !dbg !1362
  br label %292, !dbg !1362

292:                                              ; preds = %291, %288
  %293 = load i8, ptr %24, align 1, !dbg !1363
  %294 = sext i8 %293 to i32, !dbg !1363
  %295 = icmp eq i32 %294, 98, !dbg !1365
  br i1 %295, label %300, label %296, !dbg !1366

296:                                              ; preds = %292
  %297 = load i8, ptr %24, align 1, !dbg !1367
  %298 = sext i8 %297 to i32, !dbg !1367
  %299 = icmp eq i32 %298, 66, !dbg !1368
  br i1 %299, label %300, label %307, !dbg !1366

300:                                              ; preds = %296, %292
  %301 = load i64, ptr %23, align 8, !dbg !1369
  %302 = trunc i64 %301 to i32, !dbg !1371
  %303 = load ptr, ptr %6, align 8, !dbg !1372
  %304 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %303, i32 0, i32 29, !dbg !1373
  store i32 %302, ptr %304, align 8, !dbg !1374
  %305 = load ptr, ptr %6, align 8, !dbg !1375
  %306 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %305, i32 0, i32 30, !dbg !1376
  store i32 0, ptr %306, align 4, !dbg !1377
  br label %312, !dbg !1378

307:                                              ; preds = %296
  %308 = load i64, ptr %23, align 8, !dbg !1379
  %309 = trunc i64 %308 to i32, !dbg !1381
  %310 = load ptr, ptr %6, align 8, !dbg !1382
  %311 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %310, i32 0, i32 30, !dbg !1383
  store i32 %309, ptr %311, align 4, !dbg !1384
  br label %312

312:                                              ; preds = %307, %300
  br label %385, !dbg !1385

313:                                              ; preds = %266
  %314 = load ptr, ptr %12, align 8, !dbg !1386
  %315 = call i32 @keymatch(ptr noundef %314, ptr noundef @.str.72, i32 noundef 2), !dbg !1388
  %316 = icmp ne i32 %315, 0, !dbg !1388
  br i1 %316, label %317, label %329, !dbg !1388

317:                                              ; preds = %313
  %318 = load i32, ptr %11, align 4, !dbg !1389
  %319 = add nsw i32 %318, 1, !dbg !1389
  store i32 %319, ptr %11, align 4, !dbg !1389
  %320 = load i32, ptr %7, align 4, !dbg !1392
  %321 = icmp sge i32 %319, %320, !dbg !1393
  br i1 %321, label %322, label %323, !dbg !1393

322:                                              ; preds = %317
  call void @usage(), !dbg !1394
  br label %323, !dbg !1394

323:                                              ; preds = %322, %317
  %324 = load ptr, ptr %8, align 8, !dbg !1395
  %325 = load i32, ptr %11, align 4, !dbg !1396
  %326 = sext i32 %325 to i64, !dbg !1395
  %327 = getelementptr inbounds ptr, ptr %324, i64 %326, !dbg !1395
  %328 = load ptr, ptr %327, align 8, !dbg !1395
  store ptr %328, ptr %19, align 8, !dbg !1397
  br label %384, !dbg !1398

329:                                              ; preds = %313
  %330 = load ptr, ptr %12, align 8, !dbg !1399
  %331 = call i32 @keymatch(ptr noundef %330, ptr noundef @.str.73, i32 noundef 2), !dbg !1401
  %332 = icmp ne i32 %331, 0, !dbg !1401
  br i1 %332, label %333, label %345, !dbg !1401

333:                                              ; preds = %329
  %334 = load i32, ptr %11, align 4, !dbg !1402
  %335 = add nsw i32 %334, 1, !dbg !1402
  store i32 %335, ptr %11, align 4, !dbg !1402
  %336 = load i32, ptr %7, align 4, !dbg !1405
  %337 = icmp sge i32 %335, %336, !dbg !1406
  br i1 %337, label %338, label %339, !dbg !1406

338:                                              ; preds = %333
  call void @usage(), !dbg !1407
  br label %339, !dbg !1407

339:                                              ; preds = %338, %333
  %340 = load ptr, ptr %8, align 8, !dbg !1408
  %341 = load i32, ptr %11, align 4, !dbg !1409
  %342 = sext i32 %341 to i64, !dbg !1408
  %343 = getelementptr inbounds ptr, ptr %340, i64 %342, !dbg !1408
  %344 = load ptr, ptr %343, align 8, !dbg !1408
  store ptr %344, ptr %20, align 8, !dbg !1410
  br label %383, !dbg !1411

345:                                              ; preds = %329
  %346 = load ptr, ptr %12, align 8, !dbg !1412
  %347 = call i32 @keymatch(ptr noundef %346, ptr noundef @.str.74, i32 noundef 2), !dbg !1414
  %348 = icmp ne i32 %347, 0, !dbg !1414
  br i1 %348, label %349, label %375, !dbg !1414

349:                                              ; preds = %345
    #dbg_declare(ptr %25, !1415, !DIExpression(), !1417)
  %350 = load i32, ptr %11, align 4, !dbg !1418
  %351 = add nsw i32 %350, 1, !dbg !1418
  store i32 %351, ptr %11, align 4, !dbg !1418
  %352 = load i32, ptr %7, align 4, !dbg !1420
  %353 = icmp sge i32 %351, %352, !dbg !1421
  br i1 %353, label %354, label %355, !dbg !1421

354:                                              ; preds = %349
  call void @usage(), !dbg !1422
  br label %355, !dbg !1422

355:                                              ; preds = %354, %349
  %356 = load ptr, ptr %8, align 8, !dbg !1423
  %357 = load i32, ptr %11, align 4, !dbg !1425
  %358 = sext i32 %357 to i64, !dbg !1423
  %359 = getelementptr inbounds ptr, ptr %356, i64 %358, !dbg !1423
  %360 = load ptr, ptr %359, align 8, !dbg !1423
  %361 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %360, ptr noundef @.str.68, ptr noundef %25) #4, !dbg !1426
  %362 = icmp ne i32 %361, 1, !dbg !1427
  br i1 %362, label %363, label %364, !dbg !1427

363:                                              ; preds = %355
  call void @usage(), !dbg !1428
  br label %364, !dbg !1428

364:                                              ; preds = %363, %355
  %365 = load i32, ptr %25, align 4, !dbg !1429
  %366 = icmp slt i32 %365, 0, !dbg !1431
  br i1 %366, label %370, label %367, !dbg !1432

367:                                              ; preds = %364
  %368 = load i32, ptr %25, align 4, !dbg !1433
  %369 = icmp sgt i32 %368, 100, !dbg !1434
  br i1 %369, label %370, label %371, !dbg !1432

370:                                              ; preds = %367, %364
  call void @usage(), !dbg !1435
  br label %371, !dbg !1435

371:                                              ; preds = %370, %367
  %372 = load i32, ptr %25, align 4, !dbg !1436
  %373 = load ptr, ptr %6, align 8, !dbg !1437
  %374 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %373, i32 0, i32 27, !dbg !1438
  store i32 %372, ptr %374, align 8, !dbg !1439
  br label %382, !dbg !1440

375:                                              ; preds = %345
  %376 = load ptr, ptr %12, align 8, !dbg !1441
  %377 = call i32 @keymatch(ptr noundef %376, ptr noundef @.str.75, i32 noundef 1), !dbg !1443
  %378 = icmp ne i32 %377, 0, !dbg !1443
  br i1 %378, label %379, label %380, !dbg !1443

379:                                              ; preds = %375
  store i32 1, ptr @is_targa, align 4, !dbg !1444
  br label %381, !dbg !1446

380:                                              ; preds = %375
  call void @usage(), !dbg !1447
  br label %381

381:                                              ; preds = %380, %379
  br label %382

382:                                              ; preds = %381, %371
  br label %383

383:                                              ; preds = %382, %339
  br label %384

384:                                              ; preds = %383, %323
  br label %385

385:                                              ; preds = %384, %312
  br label %386

386:                                              ; preds = %385, %260
  br label %387

387:                                              ; preds = %386, %244
  br label %388

388:                                              ; preds = %387, %231
  br label %389

389:                                              ; preds = %388, %211
  br label %390

390:                                              ; preds = %389, %201
  br label %391

391:                                              ; preds = %390, %188
  br label %392

392:                                              ; preds = %391, %173
  br label %393

393:                                              ; preds = %392, %141
  br label %394

394:                                              ; preds = %393, %126
  br label %395

395:                                              ; preds = %394, %111
  br label %396

396:                                              ; preds = %395, %64
  br label %397

397:                                              ; preds = %396
  br label %398, !dbg !1449

398:                                              ; preds = %397, %48
  %399 = load i32, ptr %11, align 4, !dbg !1450
  %400 = add nsw i32 %399, 1, !dbg !1450
  store i32 %400, ptr %11, align 4, !dbg !1450
  br label %30, !dbg !1451, !llvm.loop !1452

401:                                              ; preds = %49, %30
  %402 = load i32, ptr %10, align 4, !dbg !1454
  %403 = icmp ne i32 %402, 0, !dbg !1454
  br i1 %403, label %404, label %455, !dbg !1454

404:                                              ; preds = %401
  %405 = load ptr, ptr %6, align 8, !dbg !1456
  %406 = load i32, ptr %13, align 4, !dbg !1458
  %407 = load i32, ptr %15, align 4, !dbg !1459
  call void @jpeg_set_quality(ptr noundef %405, i32 noundef %406, i32 noundef %407), !dbg !1460
  %408 = load ptr, ptr %17, align 8, !dbg !1461
  %409 = icmp ne ptr %408, null, !dbg !1463
  br i1 %409, label %410, label %419, !dbg !1463

410:                                              ; preds = %404
  %411 = load ptr, ptr %6, align 8, !dbg !1464
  %412 = load ptr, ptr %17, align 8, !dbg !1466
  %413 = load i32, ptr %14, align 4, !dbg !1467
  %414 = load i32, ptr %15, align 4, !dbg !1468
  %415 = call i32 @read_quant_tables(ptr noundef %411, ptr noundef %412, i32 noundef %413, i32 noundef %414), !dbg !1469
  %416 = icmp ne i32 %415, 0, !dbg !1469
  br i1 %416, label %418, label %417, !dbg !1470

417:                                              ; preds = %410
  call void @usage(), !dbg !1471
  br label %418, !dbg !1471

418:                                              ; preds = %417, %410
  br label %419, !dbg !1472

419:                                              ; preds = %418, %404
  %420 = load ptr, ptr %18, align 8, !dbg !1473
  %421 = icmp ne ptr %420, null, !dbg !1475
  br i1 %421, label %422, label %429, !dbg !1475

422:                                              ; preds = %419
  %423 = load ptr, ptr %6, align 8, !dbg !1476
  %424 = load ptr, ptr %18, align 8, !dbg !1478
  %425 = call i32 @set_quant_slots(ptr noundef %423, ptr noundef %424), !dbg !1479
  %426 = icmp ne i32 %425, 0, !dbg !1479
  br i1 %426, label %428, label %427, !dbg !1480

427:                                              ; preds = %422
  call void @usage(), !dbg !1481
  br label %428, !dbg !1481

428:                                              ; preds = %427, %422
  br label %429, !dbg !1482

429:                                              ; preds = %428, %419
  %430 = load ptr, ptr %19, align 8, !dbg !1483
  %431 = icmp ne ptr %430, null, !dbg !1485
  br i1 %431, label %432, label %439, !dbg !1485

432:                                              ; preds = %429
  %433 = load ptr, ptr %6, align 8, !dbg !1486
  %434 = load ptr, ptr %19, align 8, !dbg !1488
  %435 = call i32 @set_sample_factors(ptr noundef %433, ptr noundef %434), !dbg !1489
  %436 = icmp ne i32 %435, 0, !dbg !1489
  br i1 %436, label %438, label %437, !dbg !1490

437:                                              ; preds = %432
  call void @usage(), !dbg !1491
  br label %438, !dbg !1491

438:                                              ; preds = %437, %432
  br label %439, !dbg !1492

439:                                              ; preds = %438, %429
  %440 = load i32, ptr %16, align 4, !dbg !1493
  %441 = icmp ne i32 %440, 0, !dbg !1493
  br i1 %441, label %442, label %444, !dbg !1493

442:                                              ; preds = %439
  %443 = load ptr, ptr %6, align 8, !dbg !1495
  call void @jpeg_simple_progression(ptr noundef %443), !dbg !1496
  br label %444, !dbg !1496

444:                                              ; preds = %442, %439
  %445 = load ptr, ptr %20, align 8, !dbg !1497
  %446 = icmp ne ptr %445, null, !dbg !1499
  br i1 %446, label %447, label %454, !dbg !1499

447:                                              ; preds = %444
  %448 = load ptr, ptr %6, align 8, !dbg !1500
  %449 = load ptr, ptr %20, align 8, !dbg !1502
  %450 = call i32 @read_scan_script(ptr noundef %448, ptr noundef %449), !dbg !1503
  %451 = icmp ne i32 %450, 0, !dbg !1503
  br i1 %451, label %453, label %452, !dbg !1504

452:                                              ; preds = %447
  call void @usage(), !dbg !1505
  br label %453, !dbg !1505

453:                                              ; preds = %452, %447
  br label %454, !dbg !1506

454:                                              ; preds = %453, %444
  br label %455, !dbg !1507

455:                                              ; preds = %454, %401
  %456 = load i32, ptr %11, align 4, !dbg !1508
  ret i32 %456, !dbg !1509
}

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define internal void @usage() #0 !dbg !1510 {
  %1 = load ptr, ptr @stderr, align 8, !dbg !1513
  %2 = load ptr, ptr @progname, align 8, !dbg !1514
  %3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.76, ptr noundef %2) #4, !dbg !1515
  %4 = load ptr, ptr @stderr, align 8, !dbg !1516
  %5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.77) #4, !dbg !1517
  %6 = load ptr, ptr @stderr, align 8, !dbg !1518
  %7 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef @.str.78) #4, !dbg !1519
  %8 = load ptr, ptr @stderr, align 8, !dbg !1520
  %9 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef @.str.79) #4, !dbg !1521
  %10 = load ptr, ptr @stderr, align 8, !dbg !1522
  %11 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef @.str.80) #4, !dbg !1523
  %12 = load ptr, ptr @stderr, align 8, !dbg !1524
  %13 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef @.str.81) #4, !dbg !1525
  %14 = load ptr, ptr @stderr, align 8, !dbg !1526
  %15 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef @.str.82) #4, !dbg !1527
  %16 = load ptr, ptr @stderr, align 8, !dbg !1528
  %17 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef @.str.83) #4, !dbg !1529
  %18 = load ptr, ptr @stderr, align 8, !dbg !1530
  %19 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef @.str.84) #4, !dbg !1531
  %20 = load ptr, ptr @stderr, align 8, !dbg !1532
  %21 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef @.str.85, ptr noundef @.str.86) #4, !dbg !1533
  %22 = load ptr, ptr @stderr, align 8, !dbg !1534
  %23 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef @.str.87, ptr noundef @.str.88) #4, !dbg !1535
  %24 = load ptr, ptr @stderr, align 8, !dbg !1536
  %25 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %24, ptr noundef @.str.89, ptr noundef @.str.88) #4, !dbg !1537
  %26 = load ptr, ptr @stderr, align 8, !dbg !1538
  %27 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %26, ptr noundef @.str.90) #4, !dbg !1539
  %28 = load ptr, ptr @stderr, align 8, !dbg !1540
  %29 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %28, ptr noundef @.str.91) #4, !dbg !1541
  %30 = load ptr, ptr @stderr, align 8, !dbg !1542
  %31 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %30, ptr noundef @.str.92) #4, !dbg !1543
  %32 = load ptr, ptr @stderr, align 8, !dbg !1544
  %33 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef @.str.93) #4, !dbg !1545
  %34 = load ptr, ptr @stderr, align 8, !dbg !1546
  %35 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %34, ptr noundef @.str.94) #4, !dbg !1547
  %36 = load ptr, ptr @stderr, align 8, !dbg !1548
  %37 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %36, ptr noundef @.str.95) #4, !dbg !1549
  %38 = load ptr, ptr @stderr, align 8, !dbg !1550
  %39 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %38, ptr noundef @.str.96) #4, !dbg !1551
  %40 = load ptr, ptr @stderr, align 8, !dbg !1552
  %41 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %40, ptr noundef @.str.97) #4, !dbg !1553
  %42 = load ptr, ptr @stderr, align 8, !dbg !1554
  %43 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %42, ptr noundef @.str.98) #4, !dbg !1555
  %44 = load ptr, ptr @stderr, align 8, !dbg !1556
  %45 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %44, ptr noundef @.str.99) #4, !dbg !1557
  %46 = load ptr, ptr @stderr, align 8, !dbg !1558
  %47 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %46, ptr noundef @.str.100) #4, !dbg !1559
  call void @exit(i32 noundef 1) #5, !dbg !1560
  unreachable, !dbg !1560
}

declare noalias ptr @fopen(ptr noundef, ptr noundef) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #3

declare ptr @read_stdin() #1

declare ptr @write_stdout() #1

; Function Attrs: noinline nounwind uwtable
define internal ptr @select_file_type(ptr noundef %0, ptr noundef %1) #0 !dbg !1561 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
    #dbg_declare(ptr %4, !1564, !DIExpression(), !1565)
  store ptr %1, ptr %5, align 8
    #dbg_declare(ptr %5, !1566, !DIExpression(), !1567)
    #dbg_declare(ptr %6, !1568, !DIExpression(), !1569)
  %7 = load i32, ptr @is_targa, align 4, !dbg !1570
  %8 = icmp ne i32 %7, 0, !dbg !1570
  br i1 %8, label %9, label %12, !dbg !1570

9:                                                ; preds = %2
  %10 = load ptr, ptr %4, align 8, !dbg !1572
  %11 = call ptr @jinit_read_targa(ptr noundef %10), !dbg !1574
  store ptr %11, ptr %3, align 8, !dbg !1575
  br label %69, !dbg !1575

12:                                               ; preds = %2
  %13 = load ptr, ptr %5, align 8, !dbg !1576
  %14 = call i32 @getc(ptr noundef %13), !dbg !1578
  store i32 %14, ptr %6, align 4, !dbg !1579
  %15 = icmp eq i32 %14, -1, !dbg !1580
  br i1 %15, label %16, label %27, !dbg !1580

16:                                               ; preds = %12
  %17 = load ptr, ptr %4, align 8, !dbg !1581
  %18 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %17, i32 0, i32 0, !dbg !1581
  %19 = load ptr, ptr %18, align 8, !dbg !1581
  %20 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %19, i32 0, i32 5, !dbg !1581
  store i32 41, ptr %20, align 8, !dbg !1581
  %21 = load ptr, ptr %4, align 8, !dbg !1581
  %22 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %21, i32 0, i32 0, !dbg !1581
  %23 = load ptr, ptr %22, align 8, !dbg !1581
  %24 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %23, i32 0, i32 0, !dbg !1581
  %25 = load ptr, ptr %24, align 8, !dbg !1581
  %26 = load ptr, ptr %4, align 8, !dbg !1581
  call void %25(ptr noundef %26), !dbg !1581
  br label %27, !dbg !1581

27:                                               ; preds = %16, %12
  %28 = load i32, ptr %6, align 4, !dbg !1582
  %29 = load ptr, ptr %5, align 8, !dbg !1584
  %30 = call i32 @ungetc(i32 noundef %28, ptr noundef %29), !dbg !1585
  %31 = icmp eq i32 %30, -1, !dbg !1586
  br i1 %31, label %32, label %43, !dbg !1586

32:                                               ; preds = %27
  %33 = load ptr, ptr %4, align 8, !dbg !1587
  %34 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %33, i32 0, i32 0, !dbg !1587
  %35 = load ptr, ptr %34, align 8, !dbg !1587
  %36 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %35, i32 0, i32 5, !dbg !1587
  store i32 1040, ptr %36, align 8, !dbg !1587
  %37 = load ptr, ptr %4, align 8, !dbg !1587
  %38 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %37, i32 0, i32 0, !dbg !1587
  %39 = load ptr, ptr %38, align 8, !dbg !1587
  %40 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %39, i32 0, i32 0, !dbg !1587
  %41 = load ptr, ptr %40, align 8, !dbg !1587
  %42 = load ptr, ptr %4, align 8, !dbg !1587
  call void %41(ptr noundef %42), !dbg !1587
  br label %43, !dbg !1587

43:                                               ; preds = %32, %27
  %44 = load i32, ptr %6, align 4, !dbg !1588
  switch i32 %44, label %57 [
    i32 66, label %45
    i32 71, label %48
    i32 80, label %51
    i32 0, label %54
  ], !dbg !1589

45:                                               ; preds = %43
  %46 = load ptr, ptr %4, align 8, !dbg !1590
  %47 = call ptr @jinit_read_bmp(ptr noundef %46), !dbg !1592
  store ptr %47, ptr %3, align 8, !dbg !1593
  br label %69, !dbg !1593

48:                                               ; preds = %43
  %49 = load ptr, ptr %4, align 8, !dbg !1594
  %50 = call ptr @jinit_read_gif(ptr noundef %49), !dbg !1595
  store ptr %50, ptr %3, align 8, !dbg !1596
  br label %69, !dbg !1596

51:                                               ; preds = %43
  %52 = load ptr, ptr %4, align 8, !dbg !1597
  %53 = call ptr @jinit_read_ppm(ptr noundef %52), !dbg !1598
  store ptr %53, ptr %3, align 8, !dbg !1599
  br label %69, !dbg !1599

54:                                               ; preds = %43
  %55 = load ptr, ptr %4, align 8, !dbg !1600
  %56 = call ptr @jinit_read_targa(ptr noundef %55), !dbg !1601
  store ptr %56, ptr %3, align 8, !dbg !1602
  br label %69, !dbg !1602

57:                                               ; preds = %43
  %58 = load ptr, ptr %4, align 8, !dbg !1603
  %59 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %58, i32 0, i32 0, !dbg !1603
  %60 = load ptr, ptr %59, align 8, !dbg !1603
  %61 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %60, i32 0, i32 5, !dbg !1603
  store i32 1041, ptr %61, align 8, !dbg !1603
  %62 = load ptr, ptr %4, align 8, !dbg !1603
  %63 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %62, i32 0, i32 0, !dbg !1603
  %64 = load ptr, ptr %63, align 8, !dbg !1603
  %65 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %64, i32 0, i32 0, !dbg !1603
  %66 = load ptr, ptr %65, align 8, !dbg !1603
  %67 = load ptr, ptr %4, align 8, !dbg !1603
  call void %66(ptr noundef %67), !dbg !1603
  br label %68, !dbg !1604

68:                                               ; preds = %57
  store ptr null, ptr %3, align 8, !dbg !1605
  br label %69, !dbg !1605

69:                                               ; preds = %68, %54, %51, %48, %45, %9
  %70 = load ptr, ptr %3, align 8, !dbg !1606
  ret ptr %70, !dbg !1606
}

declare void @jpeg_default_colorspace(ptr noundef) #1

declare void @jpeg_stdio_dest(ptr noundef, ptr noundef) #1

declare void @jpeg_start_compress(ptr noundef, i32 noundef) #1

declare i32 @jpeg_write_scanlines(ptr noundef, ptr noundef, i32 noundef) #1

declare void @jpeg_finish_compress(ptr noundef) #1

declare void @jpeg_destroy_compress(ptr noundef) #1

declare i32 @fclose(ptr noundef) #1

declare i32 @keymatch(ptr noundef, ptr noundef, i32 noundef) #1

declare void @jpeg_set_colorspace(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(ptr noundef, ptr noundef, ...) #2

declare i32 @jpeg_quality_scaling(i32 noundef) #1

declare void @jpeg_set_quality(ptr noundef, i32 noundef, i32 noundef) #1

declare i32 @read_quant_tables(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

declare i32 @set_quant_slots(ptr noundef, ptr noundef) #1

declare i32 @set_sample_factors(ptr noundef, ptr noundef) #1

declare void @jpeg_simple_progression(ptr noundef) #1

declare i32 @read_scan_script(ptr noundef, ptr noundef) #1

declare ptr @jinit_read_targa(ptr noundef) #1

declare i32 @getc(ptr noundef) #1

declare i32 @ungetc(i32 noundef, ptr noundef) #1

declare ptr @jinit_read_bmp(ptr noundef) #1

declare ptr @jinit_read_gif(ptr noundef) #1

declare ptr @jinit_read_ppm(ptr noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!852, !853, !854, !855, !856, !857, !858}
!llvm.ident = !{!859}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "progname", scope: !2, file: !3, line: 136, type: !239, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !191, globals: !318, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "cBench/consumer_jpeg_c/src/cjpeg.c", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "ae40e50ff97a024efca78d8b500f9da0")
!4 = !{!5, !15, !20, !67}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 194, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jpeglib.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "2a2b23235fe587b10147d741e3371e67")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14}
!9 = !DIEnumerator(name: "JCS_UNKNOWN", value: 0)
!10 = !DIEnumerator(name: "JCS_GRAYSCALE", value: 1)
!11 = !DIEnumerator(name: "JCS_RGB", value: 2)
!12 = !DIEnumerator(name: "JCS_YCbCr", value: 3)
!13 = !DIEnumerator(name: "JCS_CMYK", value: 4)
!14 = !DIEnumerator(name: "JCS_YCCK", value: 5)
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 205, baseType: !7, size: 32, elements: !16)
!16 = !{!17, !18, !19}
!17 = !DIEnumerator(name: "JDCT_ISLOW", value: 0)
!18 = !DIEnumerator(name: "JDCT_IFAST", value: 1)
!19 = !DIEnumerator(name: "JDCT_FLOAT", value: 2)
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !21, line: 33, baseType: !7, size: 32, elements: !22)
!21 = !DIFile(filename: "cBench/consumer_jpeg_c/src/cderror.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "023c024f882773b78143e7b16d959dcc")
!22 = !{!23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66}
!23 = !DIEnumerator(name: "JMSG_FIRSTADDONCODE", value: 1000)
!24 = !DIEnumerator(name: "JERR_BMP_BADCMAP", value: 1001)
!25 = !DIEnumerator(name: "JERR_BMP_BADDEPTH", value: 1002)
!26 = !DIEnumerator(name: "JERR_BMP_BADHEADER", value: 1003)
!27 = !DIEnumerator(name: "JERR_BMP_BADPLANES", value: 1004)
!28 = !DIEnumerator(name: "JERR_BMP_COLORSPACE", value: 1005)
!29 = !DIEnumerator(name: "JERR_BMP_COMPRESSED", value: 1006)
!30 = !DIEnumerator(name: "JERR_BMP_NOT", value: 1007)
!31 = !DIEnumerator(name: "JTRC_BMP", value: 1008)
!32 = !DIEnumerator(name: "JTRC_BMP_MAPPED", value: 1009)
!33 = !DIEnumerator(name: "JTRC_BMP_OS2", value: 1010)
!34 = !DIEnumerator(name: "JTRC_BMP_OS2_MAPPED", value: 1011)
!35 = !DIEnumerator(name: "JERR_GIF_BUG", value: 1012)
!36 = !DIEnumerator(name: "JERR_GIF_CODESIZE", value: 1013)
!37 = !DIEnumerator(name: "JERR_GIF_COLORSPACE", value: 1014)
!38 = !DIEnumerator(name: "JERR_GIF_IMAGENOTFOUND", value: 1015)
!39 = !DIEnumerator(name: "JERR_GIF_NOT", value: 1016)
!40 = !DIEnumerator(name: "JTRC_GIF", value: 1017)
!41 = !DIEnumerator(name: "JTRC_GIF_BADVERSION", value: 1018)
!42 = !DIEnumerator(name: "JTRC_GIF_EXTENSION", value: 1019)
!43 = !DIEnumerator(name: "JTRC_GIF_NONSQUARE", value: 1020)
!44 = !DIEnumerator(name: "JWRN_GIF_BADDATA", value: 1021)
!45 = !DIEnumerator(name: "JWRN_GIF_CHAR", value: 1022)
!46 = !DIEnumerator(name: "JWRN_GIF_ENDCODE", value: 1023)
!47 = !DIEnumerator(name: "JWRN_GIF_NOMOREDATA", value: 1024)
!48 = !DIEnumerator(name: "JERR_PPM_COLORSPACE", value: 1025)
!49 = !DIEnumerator(name: "JERR_PPM_NONNUMERIC", value: 1026)
!50 = !DIEnumerator(name: "JERR_PPM_NOT", value: 1027)
!51 = !DIEnumerator(name: "JTRC_PGM", value: 1028)
!52 = !DIEnumerator(name: "JTRC_PGM_TEXT", value: 1029)
!53 = !DIEnumerator(name: "JTRC_PPM", value: 1030)
!54 = !DIEnumerator(name: "JTRC_PPM_TEXT", value: 1031)
!55 = !DIEnumerator(name: "JERR_TGA_BADCMAP", value: 1032)
!56 = !DIEnumerator(name: "JERR_TGA_BADPARMS", value: 1033)
!57 = !DIEnumerator(name: "JERR_TGA_COLORSPACE", value: 1034)
!58 = !DIEnumerator(name: "JTRC_TGA", value: 1035)
!59 = !DIEnumerator(name: "JTRC_TGA_GRAY", value: 1036)
!60 = !DIEnumerator(name: "JTRC_TGA_MAPPED", value: 1037)
!61 = !DIEnumerator(name: "JERR_BAD_CMAP_FILE", value: 1038)
!62 = !DIEnumerator(name: "JERR_TOO_MANY_COLORS", value: 1039)
!63 = !DIEnumerator(name: "JERR_UNGETC_FAILED", value: 1040)
!64 = !DIEnumerator(name: "JERR_UNKNOWN_FORMAT", value: 1041)
!65 = !DIEnumerator(name: "JERR_UNSUPPORTED_FORMAT", value: 1042)
!66 = !DIEnumerator(name: "JMSG_LASTADDONCODE", value: 1043)
!67 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !68, line: 33, baseType: !7, size: 32, elements: !69)
!68 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jerror.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "a232f2460ff0049c960896e323d8710b")
!69 = !{!70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190}
!70 = !DIEnumerator(name: "JMSG_NOMESSAGE", value: 0)
!71 = !DIEnumerator(name: "JERR_ARITH_NOTIMPL", value: 1)
!72 = !DIEnumerator(name: "JERR_BAD_ALIGN_TYPE", value: 2)
!73 = !DIEnumerator(name: "JERR_BAD_ALLOC_CHUNK", value: 3)
!74 = !DIEnumerator(name: "JERR_BAD_BUFFER_MODE", value: 4)
!75 = !DIEnumerator(name: "JERR_BAD_COMPONENT_ID", value: 5)
!76 = !DIEnumerator(name: "JERR_BAD_DCTSIZE", value: 6)
!77 = !DIEnumerator(name: "JERR_BAD_IN_COLORSPACE", value: 7)
!78 = !DIEnumerator(name: "JERR_BAD_J_COLORSPACE", value: 8)
!79 = !DIEnumerator(name: "JERR_BAD_LENGTH", value: 9)
!80 = !DIEnumerator(name: "JERR_BAD_LIB_VERSION", value: 10)
!81 = !DIEnumerator(name: "JERR_BAD_MCU_SIZE", value: 11)
!82 = !DIEnumerator(name: "JERR_BAD_POOL_ID", value: 12)
!83 = !DIEnumerator(name: "JERR_BAD_PRECISION", value: 13)
!84 = !DIEnumerator(name: "JERR_BAD_PROGRESSION", value: 14)
!85 = !DIEnumerator(name: "JERR_BAD_PROG_SCRIPT", value: 15)
!86 = !DIEnumerator(name: "JERR_BAD_SAMPLING", value: 16)
!87 = !DIEnumerator(name: "JERR_BAD_SCAN_SCRIPT", value: 17)
!88 = !DIEnumerator(name: "JERR_BAD_STATE", value: 18)
!89 = !DIEnumerator(name: "JERR_BAD_STRUCT_SIZE", value: 19)
!90 = !DIEnumerator(name: "JERR_BAD_VIRTUAL_ACCESS", value: 20)
!91 = !DIEnumerator(name: "JERR_BUFFER_SIZE", value: 21)
!92 = !DIEnumerator(name: "JERR_CANT_SUSPEND", value: 22)
!93 = !DIEnumerator(name: "JERR_CCIR601_NOTIMPL", value: 23)
!94 = !DIEnumerator(name: "JERR_COMPONENT_COUNT", value: 24)
!95 = !DIEnumerator(name: "JERR_CONVERSION_NOTIMPL", value: 25)
!96 = !DIEnumerator(name: "JERR_DAC_INDEX", value: 26)
!97 = !DIEnumerator(name: "JERR_DAC_VALUE", value: 27)
!98 = !DIEnumerator(name: "JERR_DHT_COUNTS", value: 28)
!99 = !DIEnumerator(name: "JERR_DHT_INDEX", value: 29)
!100 = !DIEnumerator(name: "JERR_DQT_INDEX", value: 30)
!101 = !DIEnumerator(name: "JERR_EMPTY_IMAGE", value: 31)
!102 = !DIEnumerator(name: "JERR_EMS_READ", value: 32)
!103 = !DIEnumerator(name: "JERR_EMS_WRITE", value: 33)
!104 = !DIEnumerator(name: "JERR_EOI_EXPECTED", value: 34)
!105 = !DIEnumerator(name: "JERR_FILE_READ", value: 35)
!106 = !DIEnumerator(name: "JERR_FILE_WRITE", value: 36)
!107 = !DIEnumerator(name: "JERR_FRACT_SAMPLE_NOTIMPL", value: 37)
!108 = !DIEnumerator(name: "JERR_HUFF_CLEN_OVERFLOW", value: 38)
!109 = !DIEnumerator(name: "JERR_HUFF_MISSING_CODE", value: 39)
!110 = !DIEnumerator(name: "JERR_IMAGE_TOO_BIG", value: 40)
!111 = !DIEnumerator(name: "JERR_INPUT_EMPTY", value: 41)
!112 = !DIEnumerator(name: "JERR_INPUT_EOF", value: 42)
!113 = !DIEnumerator(name: "JERR_MISMATCHED_QUANT_TABLE", value: 43)
!114 = !DIEnumerator(name: "JERR_MISSING_DATA", value: 44)
!115 = !DIEnumerator(name: "JERR_MODE_CHANGE", value: 45)
!116 = !DIEnumerator(name: "JERR_NOTIMPL", value: 46)
!117 = !DIEnumerator(name: "JERR_NOT_COMPILED", value: 47)
!118 = !DIEnumerator(name: "JERR_NO_BACKING_STORE", value: 48)
!119 = !DIEnumerator(name: "JERR_NO_HUFF_TABLE", value: 49)
!120 = !DIEnumerator(name: "JERR_NO_IMAGE", value: 50)
!121 = !DIEnumerator(name: "JERR_NO_QUANT_TABLE", value: 51)
!122 = !DIEnumerator(name: "JERR_NO_SOI", value: 52)
!123 = !DIEnumerator(name: "JERR_OUT_OF_MEMORY", value: 53)
!124 = !DIEnumerator(name: "JERR_QUANT_COMPONENTS", value: 54)
!125 = !DIEnumerator(name: "JERR_QUANT_FEW_COLORS", value: 55)
!126 = !DIEnumerator(name: "JERR_QUANT_MANY_COLORS", value: 56)
!127 = !DIEnumerator(name: "JERR_SOF_DUPLICATE", value: 57)
!128 = !DIEnumerator(name: "JERR_SOF_NO_SOS", value: 58)
!129 = !DIEnumerator(name: "JERR_SOF_UNSUPPORTED", value: 59)
!130 = !DIEnumerator(name: "JERR_SOI_DUPLICATE", value: 60)
!131 = !DIEnumerator(name: "JERR_SOS_NO_SOF", value: 61)
!132 = !DIEnumerator(name: "JERR_TFILE_CREATE", value: 62)
!133 = !DIEnumerator(name: "JERR_TFILE_READ", value: 63)
!134 = !DIEnumerator(name: "JERR_TFILE_SEEK", value: 64)
!135 = !DIEnumerator(name: "JERR_TFILE_WRITE", value: 65)
!136 = !DIEnumerator(name: "JERR_TOO_LITTLE_DATA", value: 66)
!137 = !DIEnumerator(name: "JERR_UNKNOWN_MARKER", value: 67)
!138 = !DIEnumerator(name: "JERR_VIRTUAL_BUG", value: 68)
!139 = !DIEnumerator(name: "JERR_WIDTH_OVERFLOW", value: 69)
!140 = !DIEnumerator(name: "JERR_XMS_READ", value: 70)
!141 = !DIEnumerator(name: "JERR_XMS_WRITE", value: 71)
!142 = !DIEnumerator(name: "JMSG_COPYRIGHT", value: 72)
!143 = !DIEnumerator(name: "JMSG_VERSION", value: 73)
!144 = !DIEnumerator(name: "JTRC_16BIT_TABLES", value: 74)
!145 = !DIEnumerator(name: "JTRC_ADOBE", value: 75)
!146 = !DIEnumerator(name: "JTRC_APP0", value: 76)
!147 = !DIEnumerator(name: "JTRC_APP14", value: 77)
!148 = !DIEnumerator(name: "JTRC_DAC", value: 78)
!149 = !DIEnumerator(name: "JTRC_DHT", value: 79)
!150 = !DIEnumerator(name: "JTRC_DQT", value: 80)
!151 = !DIEnumerator(name: "JTRC_DRI", value: 81)
!152 = !DIEnumerator(name: "JTRC_EMS_CLOSE", value: 82)
!153 = !DIEnumerator(name: "JTRC_EMS_OPEN", value: 83)
!154 = !DIEnumerator(name: "JTRC_EOI", value: 84)
!155 = !DIEnumerator(name: "JTRC_HUFFBITS", value: 85)
!156 = !DIEnumerator(name: "JTRC_JFIF", value: 86)
!157 = !DIEnumerator(name: "JTRC_JFIF_BADTHUMBNAILSIZE", value: 87)
!158 = !DIEnumerator(name: "JTRC_JFIF_MINOR", value: 88)
!159 = !DIEnumerator(name: "JTRC_JFIF_THUMBNAIL", value: 89)
!160 = !DIEnumerator(name: "JTRC_MISC_MARKER", value: 90)
!161 = !DIEnumerator(name: "JTRC_PARMLESS_MARKER", value: 91)
!162 = !DIEnumerator(name: "JTRC_QUANTVALS", value: 92)
!163 = !DIEnumerator(name: "JTRC_QUANT_3_NCOLORS", value: 93)
!164 = !DIEnumerator(name: "JTRC_QUANT_NCOLORS", value: 94)
!165 = !DIEnumerator(name: "JTRC_QUANT_SELECTED", value: 95)
!166 = !DIEnumerator(name: "JTRC_RECOVERY_ACTION", value: 96)
!167 = !DIEnumerator(name: "JTRC_RST", value: 97)
!168 = !DIEnumerator(name: "JTRC_SMOOTH_NOTIMPL", value: 98)
!169 = !DIEnumerator(name: "JTRC_SOF", value: 99)
!170 = !DIEnumerator(name: "JTRC_SOF_COMPONENT", value: 100)
!171 = !DIEnumerator(name: "JTRC_SOI", value: 101)
!172 = !DIEnumerator(name: "JTRC_SOS", value: 102)
!173 = !DIEnumerator(name: "JTRC_SOS_COMPONENT", value: 103)
!174 = !DIEnumerator(name: "JTRC_SOS_PARAMS", value: 104)
!175 = !DIEnumerator(name: "JTRC_TFILE_CLOSE", value: 105)
!176 = !DIEnumerator(name: "JTRC_TFILE_OPEN", value: 106)
!177 = !DIEnumerator(name: "JTRC_UNKNOWN_IDS", value: 107)
!178 = !DIEnumerator(name: "JTRC_XMS_CLOSE", value: 108)
!179 = !DIEnumerator(name: "JTRC_XMS_OPEN", value: 109)
!180 = !DIEnumerator(name: "JWRN_ADOBE_XFORM", value: 110)
!181 = !DIEnumerator(name: "JWRN_BOGUS_PROGRESSION", value: 111)
!182 = !DIEnumerator(name: "JWRN_EXTRANEOUS_DATA", value: 112)
!183 = !DIEnumerator(name: "JWRN_HIT_MARKER", value: 113)
!184 = !DIEnumerator(name: "JWRN_HUFF_BAD_CODE", value: 114)
!185 = !DIEnumerator(name: "JWRN_JFIF_MAJOR", value: 115)
!186 = !DIEnumerator(name: "JWRN_JPEG_EOF", value: 116)
!187 = !DIEnumerator(name: "JWRN_MUST_RESYNC", value: 117)
!188 = !DIEnumerator(name: "JWRN_NOT_SEQUENTIAL", value: 118)
!189 = !DIEnumerator(name: "JWRN_TOO_MUCH_DATA", value: 119)
!190 = !DIEnumerator(name: "JMSG_LASTMSGCODE", value: 120)
!191 = !{!192, !193, !7, !196, !197}
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !194, line: 18, baseType: !195)
!194 = !DIFile(filename: "/usr/local/lib/clang/20/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!195 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!196 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "j_common_ptr", file: !6, line: 248, baseType: !198)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_common_struct", file: !6, line: 240, size: 256, elements: !200)
!200 = !{!201, !245, !307, !316, !317}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !199, file: !6, line: 241, baseType: !202, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_error_mgr", file: !6, line: 618, size: 1344, elements: !204)
!204 = !{!205, !209, !213, !214, !220, !221, !222, !233, !234, !236, !241, !242, !243, !244}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "error_exit", scope: !203, file: !6, line: 620, baseType: !206, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = !DISubroutineType(types: !208)
!208 = !{null, !197}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "emit_message", scope: !203, file: !6, line: 622, baseType: !210, size: 64, offset: 64)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = !DISubroutineType(types: !212)
!212 = !{null, !197, !196}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "output_message", scope: !203, file: !6, line: 624, baseType: !206, size: 64, offset: 128)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "format_message", scope: !203, file: !6, line: 626, baseType: !215, size: 64, offset: 192)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = !DISubroutineType(types: !217)
!217 = !{null, !197, !218}
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "reset_error_mgr", scope: !203, file: !6, line: 629, baseType: !206, size: 64, offset: 256)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "msg_code", scope: !203, file: !6, line: 634, baseType: !196, size: 32, offset: 320)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "msg_parm", scope: !203, file: !6, line: 639, baseType: !223, size: 640, offset: 352)
!223 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !203, file: !6, line: 636, size: 640, elements: !224)
!224 = !{!225, !229}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !223, file: !6, line: 637, baseType: !226, size: 256)
!226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !196, size: 256, elements: !227)
!227 = !{!228}
!228 = !DISubrange(count: 8)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !223, file: !6, line: 638, baseType: !230, size: 640)
!230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 640, elements: !231)
!231 = !{!232}
!232 = !DISubrange(count: 80)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "trace_level", scope: !203, file: !6, line: 643, baseType: !196, size: 32, offset: 992)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "num_warnings", scope: !203, file: !6, line: 651, baseType: !235, size: 64, offset: 1024)
!235 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "jpeg_message_table", scope: !203, file: !6, line: 663, baseType: !237, size: 64, offset: 1088)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !239)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !219)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "last_jpeg_message", scope: !203, file: !6, line: 664, baseType: !196, size: 32, offset: 1152)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "addon_message_table", scope: !203, file: !6, line: 668, baseType: !237, size: 64, offset: 1216)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "first_addon_message", scope: !203, file: !6, line: 669, baseType: !196, size: 32, offset: 1280)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "last_addon_message", scope: !203, file: !6, line: 670, baseType: !196, size: 32, offset: 1312)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !199, file: !6, line: 241, baseType: !246, size: 64, offset: 64)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_memory_mgr", file: !6, line: 731, size: 768, elements: !248)
!248 = !{!249, !253, !254, !266, !280, !288, !295, !296, !300, !304, !305, !306}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_small", scope: !247, file: !6, line: 733, baseType: !250, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!251 = !DISubroutineType(types: !252)
!252 = !{!192, !197, !196, !193}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_large", scope: !247, file: !6, line: 735, baseType: !250, size: 64, offset: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_sarray", scope: !247, file: !6, line: 737, baseType: !255, size: 64, offset: 128)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = !DISubroutineType(types: !257)
!257 = !{!258, !197, !196, !265, !265}
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPARRAY", file: !6, line: 67, baseType: !259)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPROW", file: !6, line: 66, baseType: !261)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPLE", file: !263, line: 59, baseType: !264)
!263 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jmorecfg.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "56a0eda58fafa6bdd5498f702a998c09")
!264 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "JDIMENSION", file: !263, line: 171, baseType: !7)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_barray", scope: !247, file: !6, line: 740, baseType: !267, size: 64, offset: 192)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = !DISubroutineType(types: !269)
!269 = !{!270, !197, !196, !265, !265}
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "JBLOCKARRAY", file: !6, line: 72, baseType: !271)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "JBLOCKROW", file: !6, line: 71, baseType: !273)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "JBLOCK", file: !6, line: 70, baseType: !275)
!275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !276, size: 1024, elements: !278)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "JCOEF", file: !263, line: 99, baseType: !277)
!277 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!278 = !{!279}
!279 = !DISubrange(count: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "request_virt_sarray", scope: !247, file: !6, line: 743, baseType: !281, size: 64, offset: 256)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = !DISubroutineType(types: !283)
!283 = !{!284, !197, !196, !287, !265, !265, !265}
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "jvirt_sarray_ptr", file: !6, line: 727, baseType: !285)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = !DICompositeType(tag: DW_TAG_structure_type, name: "jvirt_sarray_control", file: !6, line: 727, flags: DIFlagFwdDecl)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "boolean", file: !263, line: 227, baseType: !196)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "request_virt_barray", scope: !247, file: !6, line: 749, baseType: !289, size: 64, offset: 320)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = !DISubroutineType(types: !291)
!291 = !{!292, !197, !196, !287, !265, !265, !265}
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "jvirt_barray_ptr", file: !6, line: 728, baseType: !293)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = !DICompositeType(tag: DW_TAG_structure_type, name: "jvirt_barray_control", file: !6, line: 728, flags: DIFlagFwdDecl)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "realize_virt_arrays", scope: !247, file: !6, line: 755, baseType: !206, size: 64, offset: 384)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "access_virt_sarray", scope: !247, file: !6, line: 756, baseType: !297, size: 64, offset: 448)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = !DISubroutineType(types: !299)
!299 = !{!258, !197, !284, !265, !265, !287}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "access_virt_barray", scope: !247, file: !6, line: 761, baseType: !301, size: 64, offset: 512)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = !DISubroutineType(types: !303)
!303 = !{!270, !197, !292, !265, !265, !287}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "free_pool", scope: !247, file: !6, line: 766, baseType: !210, size: 64, offset: 576)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "self_destruct", scope: !247, file: !6, line: 767, baseType: !206, size: 64, offset: 640)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "max_memory_to_use", scope: !247, file: !6, line: 774, baseType: !235, size: 64, offset: 704)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "progress", scope: !199, file: !6, line: 241, baseType: !308, size: 64, offset: 128)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_progress_mgr", file: !6, line: 676, size: 256, elements: !310)
!310 = !{!311, !312, !313, !314, !315}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "progress_monitor", scope: !309, file: !6, line: 677, baseType: !206, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "pass_counter", scope: !309, file: !6, line: 679, baseType: !235, size: 64, offset: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "pass_limit", scope: !309, file: !6, line: 680, baseType: !235, size: 64, offset: 128)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "completed_passes", scope: !309, file: !6, line: 681, baseType: !196, size: 32, offset: 192)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "total_passes", scope: !309, file: !6, line: 682, baseType: !196, size: 32, offset: 224)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "is_decompressor", scope: !199, file: !6, line: 241, baseType: !287, size: 32, offset: 192)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "global_state", scope: !199, file: !6, line: 241, baseType: !196, size: 32, offset: 224)
!318 = !{!319, !324, !329, !334, !339, !0, !341, !343, !348, !353, !358, !363, !365, !370, !375, !380, !385, !390, !395, !400, !405, !407, !409, !414, !416, !421, !426, !431, !433, !435, !437, !442, !444, !449, !451, !456, !461, !463, !465, !467, !469, !471, !473, !475, !480, !485, !490, !495, !500, !505, !508, !513, !515, !520, !525, !527, !532, !534, !536, !539, !714, !719, !724, !726, !729, !731, !733, !735, !737, !739, !741, !746, !748, !750, !755, !757, !759, !761, !763, !765, !767, !769, !771, !773, !775, !780, !785, !790, !792, !797, !799, !801, !803, !808, !813, !818, !823, !828, !833, !835, !837, !839, !841, !846, !848, !850}
!319 = !DIGlobalVariableExpression(var: !320, expr: !DIExpression())
!320 = distinct !DIGlobalVariable(scope: null, file: !3, line: 481, type: !321, isLocal: true, isDefinition: true)
!321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 48, elements: !322)
!322 = !{!323}
!323 = !DISubrange(count: 6)
!324 = !DIGlobalVariableExpression(var: !325, expr: !DIExpression())
!325 = distinct !DIGlobalVariable(scope: null, file: !3, line: 532, type: !326, isLocal: true, isDefinition: true)
!326 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 200, elements: !327)
!327 = !{!328}
!328 = !DISubrange(count: 25)
!329 = !DIGlobalVariableExpression(var: !330, expr: !DIExpression())
!330 = distinct !DIGlobalVariable(scope: null, file: !3, line: 539, type: !331, isLocal: true, isDefinition: true)
!331 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 24, elements: !332)
!332 = !{!333}
!333 = !DISubrange(count: 3)
!334 = !DIGlobalVariableExpression(var: !335, expr: !DIExpression())
!335 = distinct !DIGlobalVariable(scope: null, file: !3, line: 540, type: !336, isLocal: true, isDefinition: true)
!336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 152, elements: !337)
!337 = !{!338}
!338 = !DISubrange(count: 19)
!339 = !DIGlobalVariableExpression(var: !340, expr: !DIExpression())
!340 = distinct !DIGlobalVariable(scope: null, file: !3, line: 550, type: !331, isLocal: true, isDefinition: true)
!341 = !DIGlobalVariableExpression(var: !342, expr: !DIExpression())
!342 = distinct !DIGlobalVariable(name: "outfilename", scope: !2, file: !3, line: 137, type: !218, isLocal: true, isDefinition: true)
!343 = !DIGlobalVariableExpression(var: !344, expr: !DIExpression())
!344 = distinct !DIGlobalVariable(scope: null, file: !21, line: 42, type: !345, isLocal: true, isDefinition: true)
!345 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 256, elements: !346)
!346 = !{!347}
!347 = !DISubrange(count: 32)
!348 = !DIGlobalVariableExpression(var: !349, expr: !DIExpression())
!349 = distinct !DIGlobalVariable(scope: null, file: !21, line: 43, type: !350, isLocal: true, isDefinition: true)
!350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 344, elements: !351)
!351 = !{!352}
!352 = !DISubrange(count: 43)
!353 = !DIGlobalVariableExpression(var: !354, expr: !DIExpression())
!354 = distinct !DIGlobalVariable(scope: null, file: !21, line: 44, type: !355, isLocal: true, isDefinition: true)
!355 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 288, elements: !356)
!356 = !{!357}
!357 = !DISubrange(count: 36)
!358 = !DIGlobalVariableExpression(var: !359, expr: !DIExpression())
!359 = distinct !DIGlobalVariable(scope: null, file: !21, line: 45, type: !360, isLocal: true, isDefinition: true)
!360 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 336, elements: !361)
!361 = !{!362}
!362 = !DISubrange(count: 42)
!363 = !DIGlobalVariableExpression(var: !364, expr: !DIExpression())
!364 = distinct !DIGlobalVariable(scope: null, file: !21, line: 46, type: !355, isLocal: true, isDefinition: true)
!365 = !DIGlobalVariableExpression(var: !366, expr: !DIExpression())
!366 = distinct !DIGlobalVariable(scope: null, file: !21, line: 47, type: !367, isLocal: true, isDefinition: true)
!367 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 328, elements: !368)
!368 = !{!369}
!369 = !DISubrange(count: 41)
!370 = !DIGlobalVariableExpression(var: !371, expr: !DIExpression())
!371 = distinct !DIGlobalVariable(scope: null, file: !21, line: 48, type: !372, isLocal: true, isDefinition: true)
!372 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 320, elements: !373)
!373 = !{!374}
!374 = !DISubrange(count: 40)
!375 = !DIGlobalVariableExpression(var: !376, expr: !DIExpression())
!376 = distinct !DIGlobalVariable(scope: null, file: !21, line: 49, type: !377, isLocal: true, isDefinition: true)
!377 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 184, elements: !378)
!378 = !{!379}
!379 = !DISubrange(count: 23)
!380 = !DIGlobalVariableExpression(var: !381, expr: !DIExpression())
!381 = distinct !DIGlobalVariable(scope: null, file: !21, line: 50, type: !382, isLocal: true, isDefinition: true)
!382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 272, elements: !383)
!383 = !{!384}
!384 = !DISubrange(count: 34)
!385 = !DIGlobalVariableExpression(var: !386, expr: !DIExpression())
!386 = distinct !DIGlobalVariable(scope: null, file: !21, line: 51, type: !387, isLocal: true, isDefinition: true)
!387 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 216, elements: !388)
!388 = !{!389}
!389 = !DISubrange(count: 27)
!390 = !DIGlobalVariableExpression(var: !391, expr: !DIExpression())
!391 = distinct !DIGlobalVariable(scope: null, file: !21, line: 52, type: !392, isLocal: true, isDefinition: true)
!392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 304, elements: !393)
!393 = !{!394}
!394 = !DISubrange(count: 38)
!395 = !DIGlobalVariableExpression(var: !396, expr: !DIExpression())
!396 = distinct !DIGlobalVariable(scope: null, file: !21, line: 56, type: !397, isLocal: true, isDefinition: true)
!397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 192, elements: !398)
!398 = !{!399}
!399 = !DISubrange(count: 24)
!400 = !DIGlobalVariableExpression(var: !401, expr: !DIExpression())
!401 = distinct !DIGlobalVariable(scope: null, file: !21, line: 57, type: !402, isLocal: true, isDefinition: true)
!402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 176, elements: !403)
!403 = !{!404}
!404 = !DISubrange(count: 22)
!405 = !DIGlobalVariableExpression(var: !406, expr: !DIExpression())
!406 = distinct !DIGlobalVariable(scope: null, file: !21, line: 58, type: !355, isLocal: true, isDefinition: true)
!407 = !DIGlobalVariableExpression(var: !408, expr: !DIExpression())
!408 = distinct !DIGlobalVariable(scope: null, file: !21, line: 59, type: !387, isLocal: true, isDefinition: true)
!409 = !DIGlobalVariableExpression(var: !410, expr: !DIExpression())
!410 = distinct !DIGlobalVariable(scope: null, file: !21, line: 60, type: !411, isLocal: true, isDefinition: true)
!411 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 120, elements: !412)
!412 = !{!413}
!413 = !DISubrange(count: 15)
!414 = !DIGlobalVariableExpression(var: !415, expr: !DIExpression())
!415 = distinct !DIGlobalVariable(scope: null, file: !21, line: 61, type: !336, isLocal: true, isDefinition: true)
!416 = !DIGlobalVariableExpression(var: !417, expr: !DIExpression())
!417 = distinct !DIGlobalVariable(scope: null, file: !21, line: 62, type: !418, isLocal: true, isDefinition: true)
!418 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 384, elements: !419)
!419 = !{!420}
!420 = !DISubrange(count: 48)
!421 = !DIGlobalVariableExpression(var: !422, expr: !DIExpression())
!422 = distinct !DIGlobalVariable(scope: null, file: !21, line: 64, type: !423, isLocal: true, isDefinition: true)
!423 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 352, elements: !424)
!424 = !{!425}
!425 = !DISubrange(count: 44)
!426 = !DIGlobalVariableExpression(var: !427, expr: !DIExpression())
!427 = distinct !DIGlobalVariable(scope: null, file: !21, line: 65, type: !428, isLocal: true, isDefinition: true)
!428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 280, elements: !429)
!429 = !{!430}
!430 = !DISubrange(count: 35)
!431 = !DIGlobalVariableExpression(var: !432, expr: !DIExpression())
!432 = distinct !DIGlobalVariable(scope: null, file: !21, line: 66, type: !326, isLocal: true, isDefinition: true)
!433 = !DIGlobalVariableExpression(var: !434, expr: !DIExpression())
!434 = distinct !DIGlobalVariable(scope: null, file: !21, line: 67, type: !372, isLocal: true, isDefinition: true)
!435 = !DIGlobalVariableExpression(var: !436, expr: !DIExpression())
!436 = distinct !DIGlobalVariable(scope: null, file: !21, line: 68, type: !387, isLocal: true, isDefinition: true)
!437 = !DIGlobalVariableExpression(var: !438, expr: !DIExpression())
!438 = distinct !DIGlobalVariable(scope: null, file: !21, line: 69, type: !439, isLocal: true, isDefinition: true)
!439 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 160, elements: !440)
!440 = !{!441}
!441 = !DISubrange(count: 20)
!442 = !DIGlobalVariableExpression(var: !443, expr: !DIExpression())
!443 = distinct !DIGlobalVariable(scope: null, file: !21, line: 73, type: !355, isLocal: true, isDefinition: true)
!444 = !DIGlobalVariableExpression(var: !445, expr: !DIExpression())
!445 = distinct !DIGlobalVariable(scope: null, file: !21, line: 74, type: !446, isLocal: true, isDefinition: true)
!446 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 224, elements: !447)
!447 = !{!448}
!448 = !DISubrange(count: 28)
!449 = !DIGlobalVariableExpression(var: !450, expr: !DIExpression())
!450 = distinct !DIGlobalVariable(scope: null, file: !21, line: 75, type: !411, isLocal: true, isDefinition: true)
!451 = !DIGlobalVariableExpression(var: !452, expr: !DIExpression())
!452 = distinct !DIGlobalVariable(scope: null, file: !21, line: 76, type: !453, isLocal: true, isDefinition: true)
!453 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 128, elements: !454)
!454 = !{!455}
!455 = !DISubrange(count: 16)
!456 = !DIGlobalVariableExpression(var: !457, expr: !DIExpression())
!457 = distinct !DIGlobalVariable(scope: null, file: !21, line: 77, type: !458, isLocal: true, isDefinition: true)
!458 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 168, elements: !459)
!459 = !{!460}
!460 = !DISubrange(count: 21)
!461 = !DIGlobalVariableExpression(var: !462, expr: !DIExpression())
!462 = distinct !DIGlobalVariable(scope: null, file: !21, line: 78, type: !453, isLocal: true, isDefinition: true)
!463 = !DIGlobalVariableExpression(var: !464, expr: !DIExpression())
!464 = distinct !DIGlobalVariable(scope: null, file: !21, line: 79, type: !458, isLocal: true, isDefinition: true)
!465 = !DIGlobalVariableExpression(var: !466, expr: !DIExpression())
!466 = distinct !DIGlobalVariable(scope: null, file: !21, line: 100, type: !382, isLocal: true, isDefinition: true)
!467 = !DIGlobalVariableExpression(var: !468, expr: !DIExpression())
!468 = distinct !DIGlobalVariable(scope: null, file: !21, line: 101, type: !382, isLocal: true, isDefinition: true)
!469 = !DIGlobalVariableExpression(var: !470, expr: !DIExpression())
!470 = distinct !DIGlobalVariable(scope: null, file: !21, line: 102, type: !392, isLocal: true, isDefinition: true)
!471 = !DIGlobalVariableExpression(var: !472, expr: !DIExpression())
!472 = distinct !DIGlobalVariable(scope: null, file: !21, line: 103, type: !402, isLocal: true, isDefinition: true)
!473 = !DIGlobalVariableExpression(var: !474, expr: !DIExpression())
!474 = distinct !DIGlobalVariable(scope: null, file: !21, line: 104, type: !446, isLocal: true, isDefinition: true)
!475 = !DIGlobalVariableExpression(var: !476, expr: !DIExpression())
!476 = distinct !DIGlobalVariable(scope: null, file: !21, line: 105, type: !477, isLocal: true, isDefinition: true)
!477 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 240, elements: !478)
!478 = !{!479}
!479 = !DISubrange(count: 30)
!480 = !DIGlobalVariableExpression(var: !481, expr: !DIExpression())
!481 = distinct !DIGlobalVariable(scope: null, file: !21, line: 110, type: !482, isLocal: true, isDefinition: true)
!482 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 408, elements: !483)
!483 = !{!484}
!484 = !DISubrange(count: 51)
!485 = !DIGlobalVariableExpression(var: !486, expr: !DIExpression())
!486 = distinct !DIGlobalVariable(scope: null, file: !21, line: 112, type: !487, isLocal: true, isDefinition: true)
!487 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 424, elements: !488)
!488 = !{!489}
!489 = !DISubrange(count: 53)
!490 = !DIGlobalVariableExpression(var: !491, expr: !DIExpression())
!491 = distinct !DIGlobalVariable(scope: null, file: !21, line: 114, type: !492, isLocal: true, isDefinition: true)
!492 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 112, elements: !493)
!493 = !{!494}
!494 = !DISubrange(count: 14)
!495 = !DIGlobalVariableExpression(var: !496, expr: !DIExpression())
!496 = distinct !DIGlobalVariable(scope: null, file: !21, line: 116, type: !497, isLocal: true, isDefinition: true)
!497 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 472, elements: !498)
!498 = !{!499}
!499 = !DISubrange(count: 59)
!500 = !DIGlobalVariableExpression(var: !501, expr: !DIExpression())
!501 = distinct !DIGlobalVariable(scope: null, file: !21, line: 121, type: !502, isLocal: true, isDefinition: true)
!502 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 248, elements: !503)
!503 = !{!504}
!504 = !DISubrange(count: 31)
!505 = !DIGlobalVariableExpression(var: !506, expr: !DIExpression())
!506 = distinct !DIGlobalVariable(name: "cdjpeg_message_table", scope: !2, file: !3, line: 44, type: !507, isLocal: true, isDefinition: true)
!507 = !DICompositeType(tag: DW_TAG_array_type, baseType: !238, size: 2816, elements: !424)
!508 = !DIGlobalVariableExpression(var: !509, expr: !DIExpression())
!509 = distinct !DIGlobalVariable(scope: null, file: !3, line: 247, type: !510, isLocal: true, isDefinition: true)
!510 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 88, elements: !511)
!511 = !{!512}
!512 = !DISubrange(count: 11)
!513 = !DIGlobalVariableExpression(var: !514, expr: !DIExpression())
!514 = distinct !DIGlobalVariable(scope: null, file: !3, line: 252, type: !423, isLocal: true, isDefinition: true)
!515 = !DIGlobalVariableExpression(var: !516, expr: !DIExpression())
!516 = distinct !DIGlobalVariable(scope: null, file: !3, line: 257, type: !517, isLocal: true, isDefinition: true)
!517 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 72, elements: !518)
!518 = !{!519}
!519 = !DISubrange(count: 9)
!520 = !DIGlobalVariableExpression(var: !521, expr: !DIExpression())
!521 = distinct !DIGlobalVariable(scope: null, file: !3, line: 261, type: !522, isLocal: true, isDefinition: true)
!522 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 32, elements: !523)
!523 = !{!524}
!524 = !DISubrange(count: 4)
!525 = !DIGlobalVariableExpression(var: !526, expr: !DIExpression())
!526 = distinct !DIGlobalVariable(scope: null, file: !3, line: 265, type: !522, isLocal: true, isDefinition: true)
!527 = !DIGlobalVariableExpression(var: !528, expr: !DIExpression())
!528 = distinct !DIGlobalVariable(scope: null, file: !3, line: 267, type: !529, isLocal: true, isDefinition: true)
!529 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 40, elements: !530)
!530 = !{!531}
!531 = !DISubrange(count: 5)
!532 = !DIGlobalVariableExpression(var: !533, expr: !DIExpression())
!533 = distinct !DIGlobalVariable(scope: null, file: !3, line: 269, type: !321, isLocal: true, isDefinition: true)
!534 = !DIGlobalVariableExpression(var: !535, expr: !DIExpression())
!535 = distinct !DIGlobalVariable(scope: null, file: !3, line: 274, type: !321, isLocal: true, isDefinition: true)
!536 = !DIGlobalVariableExpression(var: !537, expr: !DIExpression())
!537 = distinct !DIGlobalVariable(scope: null, file: !3, line: 274, type: !538, isLocal: true, isDefinition: true)
!538 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 64, elements: !227)
!539 = !DIGlobalVariableExpression(var: !540, expr: !DIExpression())
!540 = distinct !DIGlobalVariable(name: "printed_version", scope: !541, file: !3, line: 277, type: !287, isLocal: true, isDefinition: true)
!541 = distinct !DISubprogram(name: "parse_switches", scope: !3, file: !3, line: 199, type: !542, scopeLine: 209, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !713)
!542 = !DISubroutineType(types: !543)
!543 = !{!196, !544, !196, !712, !196, !287}
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "j_compress_ptr", file: !6, line: 249, baseType: !545)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_compress_struct", file: !6, line: 255, size: 3968, elements: !547)
!547 = !{!548, !549, !550, !551, !552, !553, !570, !571, !572, !573, !575, !577, !578, !579, !580, !615, !617, !633, !634, !636, !637, !638, !639, !652, !653, !654, !655, !656, !657, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !674, !675, !676, !677, !681, !682, !683, !684, !685, !688, !691, !694, !697, !700, !703, !706, !709}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !546, file: !6, line: 256, baseType: !202, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !546, file: !6, line: 256, baseType: !246, size: 64, offset: 64)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "progress", scope: !546, file: !6, line: 256, baseType: !308, size: 64, offset: 128)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "is_decompressor", scope: !546, file: !6, line: 256, baseType: !287, size: 32, offset: 192)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "global_state", scope: !546, file: !6, line: 256, baseType: !196, size: 32, offset: 224)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !546, file: !6, line: 259, baseType: !554, size: 64, offset: 256)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_destination_mgr", file: !6, line: 688, size: 320, elements: !556)
!556 = !{!557, !560, !561, !565, !569}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "next_output_byte", scope: !555, file: !6, line: 689, baseType: !558, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_typedef, name: "JOCTET", file: !263, line: 110, baseType: !264)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "free_in_buffer", scope: !555, file: !6, line: 690, baseType: !193, size: 64, offset: 64)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "init_destination", scope: !555, file: !6, line: 692, baseType: !562, size: 64, offset: 128)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = !DISubroutineType(types: !564)
!564 = !{null, !544}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "empty_output_buffer", scope: !555, file: !6, line: 693, baseType: !566, size: 64, offset: 192)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!567 = !DISubroutineType(types: !568)
!568 = !{!287, !544}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "term_destination", scope: !555, file: !6, line: 694, baseType: !562, size: 64, offset: 256)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "image_width", scope: !546, file: !6, line: 266, baseType: !265, size: 32, offset: 320)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "image_height", scope: !546, file: !6, line: 267, baseType: !265, size: 32, offset: 352)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "input_components", scope: !546, file: !6, line: 268, baseType: !196, size: 32, offset: 384)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "in_color_space", scope: !546, file: !6, line: 269, baseType: !574, size: 32, offset: 416)
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_COLOR_SPACE", file: !6, line: 201, baseType: !5)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "input_gamma", scope: !546, file: !6, line: 271, baseType: !576, size: 64, offset: 448)
!576 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "data_precision", scope: !546, file: !6, line: 281, baseType: !196, size: 32, offset: 512)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "num_components", scope: !546, file: !6, line: 283, baseType: !196, size: 32, offset: 544)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "jpeg_color_space", scope: !546, file: !6, line: 284, baseType: !574, size: 32, offset: 576)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "comp_info", scope: !546, file: !6, line: 286, baseType: !581, size: 64, offset: 640)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_typedef, name: "jpeg_component_info", file: !6, line: 179, baseType: !583)
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 116, size: 768, elements: !584)
!584 = !{!585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !614}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "component_id", scope: !583, file: !6, line: 120, baseType: !196, size: 32)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "component_index", scope: !583, file: !6, line: 121, baseType: !196, size: 32, offset: 32)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "h_samp_factor", scope: !583, file: !6, line: 122, baseType: !196, size: 32, offset: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "v_samp_factor", scope: !583, file: !6, line: 123, baseType: !196, size: 32, offset: 96)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "quant_tbl_no", scope: !583, file: !6, line: 124, baseType: !196, size: 32, offset: 128)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "dc_tbl_no", scope: !583, file: !6, line: 129, baseType: !196, size: 32, offset: 160)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tbl_no", scope: !583, file: !6, line: 130, baseType: !196, size: 32, offset: 192)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "width_in_blocks", scope: !583, file: !6, line: 139, baseType: !265, size: 32, offset: 224)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "height_in_blocks", scope: !583, file: !6, line: 140, baseType: !265, size: 32, offset: 256)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "DCT_scaled_size", scope: !583, file: !6, line: 147, baseType: !196, size: 32, offset: 288)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "downsampled_width", scope: !583, file: !6, line: 154, baseType: !265, size: 32, offset: 320)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "downsampled_height", scope: !583, file: !6, line: 155, baseType: !265, size: 32, offset: 352)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "component_needed", scope: !583, file: !6, line: 160, baseType: !287, size: 32, offset: 384)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_width", scope: !583, file: !6, line: 164, baseType: !196, size: 32, offset: 416)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_height", scope: !583, file: !6, line: 165, baseType: !196, size: 32, offset: 448)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_blocks", scope: !583, file: !6, line: 166, baseType: !196, size: 32, offset: 480)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_sample_width", scope: !583, file: !6, line: 167, baseType: !196, size: 32, offset: 512)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "last_col_width", scope: !583, file: !6, line: 168, baseType: !196, size: 32, offset: 544)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "last_row_height", scope: !583, file: !6, line: 169, baseType: !196, size: 32, offset: 576)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "quant_table", scope: !583, file: !6, line: 175, baseType: !605, size: 64, offset: 640)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = !DIDerivedType(tag: DW_TAG_typedef, name: "JQUANT_TBL", file: !6, line: 95, baseType: !607)
!607 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 83, size: 1056, elements: !608)
!608 = !{!609, !613}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "quantval", scope: !607, file: !6, line: 88, baseType: !610, size: 1024)
!610 = !DICompositeType(tag: DW_TAG_array_type, baseType: !611, size: 1024, elements: !278)
!611 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT16", file: !263, line: 147, baseType: !612)
!612 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "sent_table", scope: !607, file: !6, line: 94, baseType: !287, size: 32, offset: 1024)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "dct_table", scope: !583, file: !6, line: 178, baseType: !192, size: 64, offset: 704)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "quant_tbl_ptrs", scope: !546, file: !6, line: 289, baseType: !616, size: 256, offset: 704)
!616 = !DICompositeType(tag: DW_TAG_array_type, baseType: !605, size: 256, elements: !523)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "dc_huff_tbl_ptrs", scope: !546, file: !6, line: 292, baseType: !618, size: 256, offset: 960)
!618 = !DICompositeType(tag: DW_TAG_array_type, baseType: !619, size: 256, elements: !523)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_typedef, name: "JHUFF_TBL", file: !6, line: 111, baseType: !621)
!621 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 100, size: 2240, elements: !622)
!622 = !{!623, !628, !632}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !621, file: !6, line: 102, baseType: !624, size: 136)
!624 = !DICompositeType(tag: DW_TAG_array_type, baseType: !625, size: 136, elements: !626)
!625 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT8", file: !263, line: 135, baseType: !264)
!626 = !{!627}
!627 = !DISubrange(count: 17)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "huffval", scope: !621, file: !6, line: 104, baseType: !629, size: 2048, offset: 136)
!629 = !DICompositeType(tag: DW_TAG_array_type, baseType: !625, size: 2048, elements: !630)
!630 = !{!631}
!631 = !DISubrange(count: 256)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "sent_table", scope: !621, file: !6, line: 110, baseType: !287, size: 32, offset: 2208)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "ac_huff_tbl_ptrs", scope: !546, file: !6, line: 293, baseType: !618, size: 256, offset: 1216)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "arith_dc_L", scope: !546, file: !6, line: 296, baseType: !635, size: 128, offset: 1472)
!635 = !DICompositeType(tag: DW_TAG_array_type, baseType: !625, size: 128, elements: !454)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "arith_dc_U", scope: !546, file: !6, line: 297, baseType: !635, size: 128, offset: 1600)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "arith_ac_K", scope: !546, file: !6, line: 298, baseType: !635, size: 128, offset: 1728)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "num_scans", scope: !546, file: !6, line: 300, baseType: !196, size: 32, offset: 1856)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "scan_info", scope: !546, file: !6, line: 301, baseType: !640, size: 64, offset: 1920)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !642)
!642 = !DIDerivedType(tag: DW_TAG_typedef, name: "jpeg_scan_info", file: !6, line: 189, baseType: !643)
!643 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 184, size: 288, elements: !644)
!644 = !{!645, !646, !648, !649, !650, !651}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "comps_in_scan", scope: !643, file: !6, line: 185, baseType: !196, size: 32)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "component_index", scope: !643, file: !6, line: 186, baseType: !647, size: 128, offset: 32)
!647 = !DICompositeType(tag: DW_TAG_array_type, baseType: !196, size: 128, elements: !523)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "Ss", scope: !643, file: !6, line: 187, baseType: !196, size: 32, offset: 160)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "Se", scope: !643, file: !6, line: 187, baseType: !196, size: 32, offset: 192)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "Ah", scope: !643, file: !6, line: 188, baseType: !196, size: 32, offset: 224)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "Al", scope: !643, file: !6, line: 188, baseType: !196, size: 32, offset: 256)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "raw_data_in", scope: !546, file: !6, line: 307, baseType: !287, size: 32, offset: 1984)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "arith_code", scope: !546, file: !6, line: 308, baseType: !287, size: 32, offset: 2016)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_coding", scope: !546, file: !6, line: 309, baseType: !287, size: 32, offset: 2048)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "CCIR601_sampling", scope: !546, file: !6, line: 310, baseType: !287, size: 32, offset: 2080)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "smoothing_factor", scope: !546, file: !6, line: 311, baseType: !196, size: 32, offset: 2112)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "dct_method", scope: !546, file: !6, line: 312, baseType: !658, size: 32, offset: 2144)
!658 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_DCT_METHOD", file: !6, line: 209, baseType: !15)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "restart_interval", scope: !546, file: !6, line: 319, baseType: !7, size: 32, offset: 2176)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "restart_in_rows", scope: !546, file: !6, line: 320, baseType: !196, size: 32, offset: 2208)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "write_JFIF_header", scope: !546, file: !6, line: 324, baseType: !287, size: 32, offset: 2240)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "density_unit", scope: !546, file: !6, line: 329, baseType: !625, size: 8, offset: 2272)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "X_density", scope: !546, file: !6, line: 330, baseType: !611, size: 16, offset: 2288)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "Y_density", scope: !546, file: !6, line: 331, baseType: !611, size: 16, offset: 2304)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "write_Adobe_marker", scope: !546, file: !6, line: 332, baseType: !287, size: 32, offset: 2336)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "next_scanline", scope: !546, file: !6, line: 339, baseType: !265, size: 32, offset: 2368)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "progressive_mode", scope: !546, file: !6, line: 348, baseType: !287, size: 32, offset: 2400)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "max_h_samp_factor", scope: !546, file: !6, line: 349, baseType: !196, size: 32, offset: 2432)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "max_v_samp_factor", scope: !546, file: !6, line: 350, baseType: !196, size: 32, offset: 2464)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "total_iMCU_rows", scope: !546, file: !6, line: 352, baseType: !265, size: 32, offset: 2496)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "comps_in_scan", scope: !546, file: !6, line: 363, baseType: !196, size: 32, offset: 2528)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "cur_comp_info", scope: !546, file: !6, line: 364, baseType: !673, size: 256, offset: 2560)
!673 = !DICompositeType(tag: DW_TAG_array_type, baseType: !581, size: 256, elements: !523)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "MCUs_per_row", scope: !546, file: !6, line: 367, baseType: !265, size: 32, offset: 2816)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_rows_in_scan", scope: !546, file: !6, line: 368, baseType: !265, size: 32, offset: 2848)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "blocks_in_MCU", scope: !546, file: !6, line: 370, baseType: !196, size: 32, offset: 2880)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_membership", scope: !546, file: !6, line: 371, baseType: !678, size: 320, offset: 2912)
!678 = !DICompositeType(tag: DW_TAG_array_type, baseType: !196, size: 320, elements: !679)
!679 = !{!680}
!680 = !DISubrange(count: 10)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "Ss", scope: !546, file: !6, line: 375, baseType: !196, size: 32, offset: 3232)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "Se", scope: !546, file: !6, line: 375, baseType: !196, size: 32, offset: 3264)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "Ah", scope: !546, file: !6, line: 375, baseType: !196, size: 32, offset: 3296)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "Al", scope: !546, file: !6, line: 375, baseType: !196, size: 32, offset: 3328)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !546, file: !6, line: 380, baseType: !686, size: 64, offset: 3392)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_comp_master", file: !6, line: 380, flags: DIFlagFwdDecl)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "main", scope: !546, file: !6, line: 381, baseType: !689, size: 64, offset: 3456)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_c_main_controller", file: !6, line: 381, flags: DIFlagFwdDecl)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "prep", scope: !546, file: !6, line: 382, baseType: !692, size: 64, offset: 3520)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_c_prep_controller", file: !6, line: 382, flags: DIFlagFwdDecl)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "coef", scope: !546, file: !6, line: 383, baseType: !695, size: 64, offset: 3584)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!696 = !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_c_coef_controller", file: !6, line: 383, flags: DIFlagFwdDecl)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "marker", scope: !546, file: !6, line: 384, baseType: !698, size: 64, offset: 3648)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_marker_writer", file: !6, line: 384, flags: DIFlagFwdDecl)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "cconvert", scope: !546, file: !6, line: 385, baseType: !701, size: 64, offset: 3712)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_color_converter", file: !6, line: 385, flags: DIFlagFwdDecl)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "downsample", scope: !546, file: !6, line: 386, baseType: !704, size: 64, offset: 3776)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_downsampler", file: !6, line: 386, flags: DIFlagFwdDecl)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "fdct", scope: !546, file: !6, line: 387, baseType: !707, size: 64, offset: 3840)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_forward_dct", file: !6, line: 387, flags: DIFlagFwdDecl)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "entropy", scope: !546, file: !6, line: 388, baseType: !710, size: 64, offset: 3904)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_entropy_encoder", file: !6, line: 388, flags: DIFlagFwdDecl)
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!713 = !{}
!714 = !DIGlobalVariableExpression(var: !715, expr: !DIExpression())
!715 = distinct !DIGlobalVariable(scope: null, file: !3, line: 280, type: !716, isLocal: true, isDefinition: true)
!716 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 376, elements: !717)
!717 = !{!718}
!718 = !DISubrange(count: 47)
!719 = !DIGlobalVariableExpression(var: !720, expr: !DIExpression())
!720 = distinct !DIGlobalVariable(scope: null, file: !3, line: 281, type: !721, isLocal: true, isDefinition: true)
!721 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 104, elements: !722)
!722 = !{!723}
!723 = !DISubrange(count: 13)
!724 = !DIGlobalVariableExpression(var: !725, expr: !DIExpression())
!725 = distinct !DIGlobalVariable(scope: null, file: !3, line: 281, type: !428, isLocal: true, isDefinition: true)
!726 = !DIGlobalVariableExpression(var: !727, expr: !DIExpression())
!727 = distinct !DIGlobalVariable(scope: null, file: !3, line: 286, type: !728, isLocal: true, isDefinition: true)
!728 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 80, elements: !679)
!729 = !DIGlobalVariableExpression(var: !730, expr: !DIExpression())
!730 = distinct !DIGlobalVariable(scope: null, file: !3, line: 286, type: !728, isLocal: true, isDefinition: true)
!731 = !DIGlobalVariableExpression(var: !732, expr: !DIExpression())
!732 = distinct !DIGlobalVariable(scope: null, file: !3, line: 290, type: !728, isLocal: true, isDefinition: true)
!733 = !DIGlobalVariableExpression(var: !734, expr: !DIExpression())
!734 = distinct !DIGlobalVariable(scope: null, file: !3, line: 297, type: !321, isLocal: true, isDefinition: true)
!735 = !DIGlobalVariableExpression(var: !736, expr: !DIExpression())
!736 = distinct !DIGlobalVariable(scope: null, file: !3, line: 303, type: !517, isLocal: true, isDefinition: true)
!737 = !DIGlobalVariableExpression(var: !738, expr: !DIExpression())
!738 = distinct !DIGlobalVariable(scope: null, file: !3, line: 303, type: !517, isLocal: true, isDefinition: true)
!739 = !DIGlobalVariableExpression(var: !740, expr: !DIExpression())
!740 = distinct !DIGlobalVariable(scope: null, file: !3, line: 313, type: !538, isLocal: true, isDefinition: true)
!741 = !DIGlobalVariableExpression(var: !742, expr: !DIExpression())
!742 = distinct !DIGlobalVariable(scope: null, file: !3, line: 319, type: !743, isLocal: true, isDefinition: true)
!743 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 96, elements: !744)
!744 = !{!745}
!745 = !DISubrange(count: 12)
!746 = !DIGlobalVariableExpression(var: !747, expr: !DIExpression())
!747 = distinct !DIGlobalVariable(scope: null, file: !3, line: 330, type: !538, isLocal: true, isDefinition: true)
!748 = !DIGlobalVariableExpression(var: !749, expr: !DIExpression())
!749 = distinct !DIGlobalVariable(scope: null, file: !3, line: 334, type: !331, isLocal: true, isDefinition: true)
!750 = !DIGlobalVariableExpression(var: !751, expr: !DIExpression())
!751 = distinct !DIGlobalVariable(scope: null, file: !3, line: 339, type: !752, isLocal: true, isDefinition: true)
!752 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 56, elements: !753)
!753 = !{!754}
!754 = !DISubrange(count: 7)
!755 = !DIGlobalVariableExpression(var: !756, expr: !DIExpression())
!756 = distinct !DIGlobalVariable(scope: null, file: !3, line: 349, type: !538, isLocal: true, isDefinition: true)
!757 = !DIGlobalVariableExpression(var: !758, expr: !DIExpression())
!758 = distinct !DIGlobalVariable(scope: null, file: !3, line: 356, type: !538, isLocal: true, isDefinition: true)
!759 = !DIGlobalVariableExpression(var: !760, expr: !DIExpression())
!760 = distinct !DIGlobalVariable(scope: null, file: !3, line: 375, type: !752, isLocal: true, isDefinition: true)
!761 = !DIGlobalVariableExpression(var: !762, expr: !DIExpression())
!762 = distinct !DIGlobalVariable(scope: null, file: !3, line: 385, type: !321, isLocal: true, isDefinition: true)
!763 = !DIGlobalVariableExpression(var: !764, expr: !DIExpression())
!764 = distinct !DIGlobalVariable(scope: null, file: !3, line: 398, type: !752, isLocal: true, isDefinition: true)
!765 = !DIGlobalVariableExpression(var: !766, expr: !DIExpression())
!766 = distinct !DIGlobalVariable(scope: null, file: !3, line: 410, type: !321, isLocal: true, isDefinition: true)
!767 = !DIGlobalVariableExpression(var: !768, expr: !DIExpression())
!768 = distinct !DIGlobalVariable(name: "is_targa", scope: !2, file: !3, line: 76, type: !287, isLocal: true, isDefinition: true)
!769 = !DIGlobalVariableExpression(var: !770, expr: !DIExpression())
!770 = distinct !DIGlobalVariable(scope: null, file: !3, line: 144, type: !402, isLocal: true, isDefinition: true)
!771 = !DIGlobalVariableExpression(var: !772, expr: !DIExpression())
!772 = distinct !DIGlobalVariable(scope: null, file: !3, line: 148, type: !721, isLocal: true, isDefinition: true)
!773 = !DIGlobalVariableExpression(var: !774, expr: !DIExpression())
!774 = distinct !DIGlobalVariable(scope: null, file: !3, line: 151, type: !392, isLocal: true, isDefinition: true)
!775 = !DIGlobalVariableExpression(var: !776, expr: !DIExpression())
!776 = distinct !DIGlobalVariable(scope: null, file: !3, line: 152, type: !777, isLocal: true, isDefinition: true)
!777 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 552, elements: !778)
!778 = !{!779}
!779 = !DISubrange(count: 69)
!780 = !DIGlobalVariableExpression(var: !781, expr: !DIExpression())
!781 = distinct !DIGlobalVariable(scope: null, file: !3, line: 153, type: !782, isLocal: true, isDefinition: true)
!782 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 368, elements: !783)
!783 = !{!784}
!784 = !DISubrange(count: 46)
!785 = !DIGlobalVariableExpression(var: !786, expr: !DIExpression())
!786 = distinct !DIGlobalVariable(scope: null, file: !3, line: 155, type: !787, isLocal: true, isDefinition: true)
!787 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 624, elements: !788)
!788 = !{!789}
!789 = !DISubrange(count: 78)
!790 = !DIGlobalVariableExpression(var: !791, expr: !DIExpression())
!791 = distinct !DIGlobalVariable(scope: null, file: !3, line: 158, type: !716, isLocal: true, isDefinition: true)
!792 = !DIGlobalVariableExpression(var: !793, expr: !DIExpression())
!793 = distinct !DIGlobalVariable(scope: null, file: !3, line: 161, type: !794, isLocal: true, isDefinition: true)
!794 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 528, elements: !795)
!795 = !{!796}
!796 = !DISubrange(count: 66)
!797 = !DIGlobalVariableExpression(var: !798, expr: !DIExpression())
!798 = distinct !DIGlobalVariable(scope: null, file: !3, line: 163, type: !477, isLocal: true, isDefinition: true)
!799 = !DIGlobalVariableExpression(var: !800, expr: !DIExpression())
!800 = distinct !DIGlobalVariable(scope: null, file: !3, line: 165, type: !350, isLocal: true, isDefinition: true)
!801 = !DIGlobalVariableExpression(var: !802, expr: !DIExpression())
!802 = distinct !DIGlobalVariable(scope: null, file: !3, line: 166, type: !510, isLocal: true, isDefinition: true)
!803 = !DIGlobalVariableExpression(var: !804, expr: !DIExpression())
!804 = distinct !DIGlobalVariable(scope: null, file: !3, line: 169, type: !805, isLocal: true, isDefinition: true)
!805 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 456, elements: !806)
!806 = !{!807}
!807 = !DISubrange(count: 57)
!808 = !DIGlobalVariableExpression(var: !809, expr: !DIExpression())
!809 = distinct !DIGlobalVariable(scope: null, file: !3, line: 170, type: !810, isLocal: true, isDefinition: true)
!810 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 8, elements: !811)
!811 = !{!812}
!812 = !DISubrange(count: 1)
!813 = !DIGlobalVariableExpression(var: !814, expr: !DIExpression())
!814 = distinct !DIGlobalVariable(scope: null, file: !3, line: 173, type: !815, isLocal: true, isDefinition: true)
!815 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 400, elements: !816)
!816 = !{!817}
!817 = !DISubrange(count: 50)
!818 = !DIGlobalVariableExpression(var: !819, expr: !DIExpression())
!819 = distinct !DIGlobalVariable(scope: null, file: !3, line: 176, type: !820, isLocal: true, isDefinition: true)
!820 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 544, elements: !821)
!821 = !{!822}
!822 = !DISubrange(count: 68)
!823 = !DIGlobalVariableExpression(var: !824, expr: !DIExpression())
!824 = distinct !DIGlobalVariable(scope: null, file: !3, line: 178, type: !825, isLocal: true, isDefinition: true)
!825 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 504, elements: !826)
!826 = !{!827}
!827 = !DISubrange(count: 63)
!828 = !DIGlobalVariableExpression(var: !829, expr: !DIExpression())
!829 = distinct !DIGlobalVariable(scope: null, file: !3, line: 180, type: !830, isLocal: true, isDefinition: true)
!830 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 416, elements: !831)
!831 = !{!832}
!832 = !DISubrange(count: 52)
!833 = !DIGlobalVariableExpression(var: !834, expr: !DIExpression())
!834 = distinct !DIGlobalVariable(scope: null, file: !3, line: 181, type: !716, isLocal: true, isDefinition: true)
!835 = !DIGlobalVariableExpression(var: !836, expr: !DIExpression())
!836 = distinct !DIGlobalVariable(scope: null, file: !3, line: 182, type: !423, isLocal: true, isDefinition: true)
!837 = !DIGlobalVariableExpression(var: !838, expr: !DIExpression())
!838 = distinct !DIGlobalVariable(scope: null, file: !3, line: 183, type: !377, isLocal: true, isDefinition: true)
!839 = !DIGlobalVariableExpression(var: !840, expr: !DIExpression())
!840 = distinct !DIGlobalVariable(scope: null, file: !3, line: 187, type: !372, isLocal: true, isDefinition: true)
!841 = !DIGlobalVariableExpression(var: !842, expr: !DIExpression())
!842 = distinct !DIGlobalVariable(scope: null, file: !3, line: 188, type: !843, isLocal: true, isDefinition: true)
!843 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 448, elements: !844)
!844 = !{!845}
!845 = !DISubrange(count: 56)
!846 = !DIGlobalVariableExpression(var: !847, expr: !DIExpression())
!847 = distinct !DIGlobalVariable(scope: null, file: !3, line: 189, type: !843, isLocal: true, isDefinition: true)
!848 = !DIGlobalVariableExpression(var: !849, expr: !DIExpression())
!849 = distinct !DIGlobalVariable(scope: null, file: !3, line: 190, type: !487, isLocal: true, isDefinition: true)
!850 = !DIGlobalVariableExpression(var: !851, expr: !DIExpression())
!851 = distinct !DIGlobalVariable(scope: null, file: !3, line: 192, type: !805, isLocal: true, isDefinition: true)
!852 = !{i32 7, !"Dwarf Version", i32 5}
!853 = !{i32 2, !"Debug Info Version", i32 3}
!854 = !{i32 1, !"wchar_size", i32 4}
!855 = !{i32 8, !"PIC Level", i32 2}
!856 = !{i32 7, !"PIE Level", i32 2}
!857 = !{i32 7, !"uwtable", i32 2}
!858 = !{i32 7, !"frame-pointer", i32 2}
!859 = !{!"clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)"}
!860 = distinct !DISubprogram(name: "main1", scope: !3, file: !3, line: 461, type: !861, scopeLine: 462, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !713)
!861 = !DISubroutineType(types: !862)
!862 = !{!196, !196, !712}
!863 = !DILocalVariable(name: "argc", arg: 1, scope: !860, file: !3, line: 461, type: !196)
!864 = !DILocation(line: 461, column: 12, scope: !860)
!865 = !DILocalVariable(name: "argv", arg: 2, scope: !860, file: !3, line: 461, type: !712)
!866 = !DILocation(line: 461, column: 25, scope: !860)
!867 = !DILocalVariable(name: "cinfo", scope: !860, file: !3, line: 463, type: !546)
!868 = !DILocation(line: 463, column: 31, scope: !860)
!869 = !DILocalVariable(name: "jerr", scope: !860, file: !3, line: 464, type: !203)
!870 = !DILocation(line: 464, column: 25, scope: !860)
!871 = !DILocalVariable(name: "file_index", scope: !860, file: !3, line: 468, type: !196)
!872 = !DILocation(line: 468, column: 7, scope: !860)
!873 = !DILocalVariable(name: "src_mgr", scope: !860, file: !3, line: 469, type: !874)
!874 = !DIDerivedType(tag: DW_TAG_typedef, name: "cjpeg_source_ptr", file: !875, line: 24, baseType: !876)
!875 = !DIFile(filename: "cBench/consumer_jpeg_c/src/cdjpeg.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "bced6b83fac9f9ba4577dcff987736ac")
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cjpeg_source_struct", file: !875, line: 26, size: 384, elements: !878)
!878 = !{!879, !883, !887, !888, !937, !938}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "start_input", scope: !877, file: !875, line: 27, baseType: !880, size: 64)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!881 = !DISubroutineType(types: !882)
!882 = !{null, !544, !874}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "get_pixel_rows", scope: !877, file: !875, line: 29, baseType: !884, size: 64, offset: 64)
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!885 = !DISubroutineType(types: !886)
!886 = !{!265, !544, !874}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "finish_input", scope: !877, file: !875, line: 31, baseType: !880, size: 64, offset: 128)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "input_file", scope: !877, file: !875, line: 34, baseType: !889, size: 64, offset: 192)
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!890 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !891, line: 7, baseType: !892)
!891 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !893, line: 49, size: 1728, elements: !894)
!893 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!894 = !{!895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !910, !912, !913, !914, !917, !918, !920, !921, !924, !926, !929, !932, !933, !934, !935, !936}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !892, file: !893, line: 51, baseType: !196, size: 32)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !892, file: !893, line: 54, baseType: !218, size: 64, offset: 64)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !892, file: !893, line: 55, baseType: !218, size: 64, offset: 128)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !892, file: !893, line: 56, baseType: !218, size: 64, offset: 192)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !892, file: !893, line: 57, baseType: !218, size: 64, offset: 256)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !892, file: !893, line: 58, baseType: !218, size: 64, offset: 320)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !892, file: !893, line: 59, baseType: !218, size: 64, offset: 384)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !892, file: !893, line: 60, baseType: !218, size: 64, offset: 448)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !892, file: !893, line: 61, baseType: !218, size: 64, offset: 512)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !892, file: !893, line: 64, baseType: !218, size: 64, offset: 576)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !892, file: !893, line: 65, baseType: !218, size: 64, offset: 640)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !892, file: !893, line: 66, baseType: !218, size: 64, offset: 704)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !892, file: !893, line: 68, baseType: !908, size: 64, offset: 768)
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !909, size: 64)
!909 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !893, line: 36, flags: DIFlagFwdDecl)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !892, file: !893, line: 70, baseType: !911, size: 64, offset: 832)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !892, file: !893, line: 72, baseType: !196, size: 32, offset: 896)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !892, file: !893, line: 73, baseType: !196, size: 32, offset: 928)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !892, file: !893, line: 74, baseType: !915, size: 64, offset: 960)
!915 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !916, line: 152, baseType: !235)
!916 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!917 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !892, file: !893, line: 77, baseType: !612, size: 16, offset: 1024)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !892, file: !893, line: 78, baseType: !919, size: 8, offset: 1040)
!919 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !892, file: !893, line: 79, baseType: !810, size: 8, offset: 1048)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !892, file: !893, line: 81, baseType: !922, size: 64, offset: 1088)
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!923 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !893, line: 43, baseType: null)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !892, file: !893, line: 89, baseType: !925, size: 64, offset: 1152)
!925 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !916, line: 153, baseType: !235)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !892, file: !893, line: 91, baseType: !927, size: 64, offset: 1216)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!928 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !893, line: 37, flags: DIFlagFwdDecl)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !892, file: !893, line: 92, baseType: !930, size: 64, offset: 1280)
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!931 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !893, line: 38, flags: DIFlagFwdDecl)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !892, file: !893, line: 93, baseType: !911, size: 64, offset: 1344)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !892, file: !893, line: 94, baseType: !192, size: 64, offset: 1408)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !892, file: !893, line: 95, baseType: !193, size: 64, offset: 1472)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !892, file: !893, line: 96, baseType: !196, size: 32, offset: 1536)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !892, file: !893, line: 98, baseType: !439, size: 160, offset: 1568)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !877, file: !875, line: 36, baseType: !258, size: 64, offset: 256)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_height", scope: !877, file: !875, line: 37, baseType: !265, size: 32, offset: 320)
!939 = !DILocation(line: 469, column: 20, scope: !860)
!940 = !DILocalVariable(name: "input_file", scope: !860, file: !3, line: 470, type: !889)
!941 = !DILocation(line: 470, column: 10, scope: !860)
!942 = !DILocalVariable(name: "output_file", scope: !860, file: !3, line: 471, type: !889)
!943 = !DILocation(line: 471, column: 10, scope: !860)
!944 = !DILocalVariable(name: "num_scanlines", scope: !860, file: !3, line: 472, type: !265)
!945 = !DILocation(line: 472, column: 14, scope: !860)
!946 = !DILocation(line: 479, column: 14, scope: !860)
!947 = !DILocation(line: 479, column: 12, scope: !860)
!948 = !DILocation(line: 480, column: 7, scope: !949)
!949 = distinct !DILexicalBlock(scope: !860, file: !3, line: 480, column: 7)
!950 = !DILocation(line: 480, column: 16, scope: !949)
!951 = !DILocation(line: 480, column: 24, scope: !949)
!952 = !DILocation(line: 480, column: 27, scope: !949)
!953 = !DILocation(line: 480, column: 39, scope: !949)
!954 = !DILocation(line: 481, column: 14, scope: !949)
!955 = !DILocation(line: 481, column: 5, scope: !949)
!956 = !DILocation(line: 484, column: 15, scope: !860)
!957 = !DILocation(line: 484, column: 9, scope: !860)
!958 = !DILocation(line: 484, column: 13, scope: !860)
!959 = !DILocation(line: 485, column: 3, scope: !860)
!960 = !DILocation(line: 487, column: 8, scope: !860)
!961 = !DILocation(line: 487, column: 28, scope: !860)
!962 = !DILocation(line: 488, column: 8, scope: !860)
!963 = !DILocation(line: 488, column: 28, scope: !860)
!964 = !DILocation(line: 489, column: 8, scope: !860)
!965 = !DILocation(line: 489, column: 27, scope: !860)
!966 = !DILocation(line: 502, column: 9, scope: !860)
!967 = !DILocation(line: 502, column: 24, scope: !860)
!968 = !DILocation(line: 503, column: 3, scope: !860)
!969 = !DILocation(line: 511, column: 39, scope: !860)
!970 = !DILocation(line: 511, column: 45, scope: !860)
!971 = !DILocation(line: 511, column: 16, scope: !860)
!972 = !DILocation(line: 511, column: 14, scope: !860)
!973 = !DILocation(line: 531, column: 7, scope: !974)
!974 = distinct !DILexicalBlock(scope: !860, file: !3, line: 531, column: 7)
!975 = !DILocation(line: 531, column: 20, scope: !974)
!976 = !DILocation(line: 531, column: 24, scope: !974)
!977 = !DILocation(line: 531, column: 18, scope: !974)
!978 = !DILocation(line: 532, column: 13, scope: !979)
!979 = distinct !DILexicalBlock(scope: !974, file: !3, line: 531, column: 28)
!980 = !DILocation(line: 532, column: 50, scope: !979)
!981 = !DILocation(line: 532, column: 5, scope: !979)
!982 = !DILocation(line: 533, column: 5, scope: !979)
!983 = !DILocation(line: 534, column: 3, scope: !979)
!984 = !DILocation(line: 538, column: 7, scope: !985)
!985 = distinct !DILexicalBlock(scope: !860, file: !3, line: 538, column: 7)
!986 = !DILocation(line: 538, column: 20, scope: !985)
!987 = !DILocation(line: 538, column: 18, scope: !985)
!988 = !DILocation(line: 539, column: 29, scope: !989)
!989 = distinct !DILexicalBlock(scope: !990, file: !3, line: 539, column: 9)
!990 = distinct !DILexicalBlock(scope: !985, file: !3, line: 538, column: 26)
!991 = !DILocation(line: 539, column: 34, scope: !989)
!992 = !DILocation(line: 539, column: 23, scope: !989)
!993 = !DILocation(line: 539, column: 21, scope: !989)
!994 = !DILocation(line: 539, column: 61, scope: !989)
!995 = !DILocation(line: 540, column: 15, scope: !996)
!996 = distinct !DILexicalBlock(scope: !989, file: !3, line: 539, column: 70)
!997 = !DILocation(line: 540, column: 46, scope: !996)
!998 = !DILocation(line: 540, column: 56, scope: !996)
!999 = !DILocation(line: 540, column: 61, scope: !996)
!1000 = !DILocation(line: 540, column: 7, scope: !996)
!1001 = !DILocation(line: 541, column: 7, scope: !996)
!1002 = !DILocation(line: 543, column: 3, scope: !990)
!1003 = !DILocation(line: 545, column: 18, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !985, file: !3, line: 543, column: 10)
!1005 = !DILocation(line: 545, column: 16, scope: !1004)
!1006 = !DILocation(line: 549, column: 7, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !860, file: !3, line: 549, column: 7)
!1008 = !DILocation(line: 549, column: 19, scope: !1007)
!1009 = !DILocation(line: 550, column: 30, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !1011, file: !3, line: 550, column: 9)
!1011 = distinct !DILexicalBlock(scope: !1007, file: !3, line: 549, column: 28)
!1012 = !DILocation(line: 550, column: 24, scope: !1010)
!1013 = !DILocation(line: 550, column: 22, scope: !1010)
!1014 = !DILocation(line: 550, column: 58, scope: !1010)
!1015 = !DILocation(line: 551, column: 15, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !1010, file: !3, line: 550, column: 67)
!1017 = !DILocation(line: 551, column: 46, scope: !1016)
!1018 = !DILocation(line: 551, column: 56, scope: !1016)
!1019 = !DILocation(line: 551, column: 7, scope: !1016)
!1020 = !DILocation(line: 552, column: 7, scope: !1016)
!1021 = !DILocation(line: 554, column: 3, scope: !1011)
!1022 = !DILocation(line: 556, column: 19, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !1007, file: !3, line: 554, column: 10)
!1024 = !DILocation(line: 556, column: 17, scope: !1023)
!1025 = !DILocation(line: 564, column: 38, scope: !860)
!1026 = !DILocation(line: 564, column: 13, scope: !860)
!1027 = !DILocation(line: 564, column: 11, scope: !860)
!1028 = !DILocation(line: 565, column: 25, scope: !860)
!1029 = !DILocation(line: 565, column: 3, scope: !860)
!1030 = !DILocation(line: 565, column: 12, scope: !860)
!1031 = !DILocation(line: 565, column: 23, scope: !860)
!1032 = !DILocation(line: 568, column: 5, scope: !860)
!1033 = !DILocation(line: 568, column: 14, scope: !860)
!1034 = !DILocation(line: 568, column: 36, scope: !860)
!1035 = !DILocation(line: 568, column: 3, scope: !860)
!1036 = !DILocation(line: 571, column: 3, scope: !860)
!1037 = !DILocation(line: 574, column: 39, scope: !860)
!1038 = !DILocation(line: 574, column: 45, scope: !860)
!1039 = !DILocation(line: 574, column: 16, scope: !860)
!1040 = !DILocation(line: 574, column: 14, scope: !860)
!1041 = !DILocation(line: 577, column: 27, scope: !860)
!1042 = !DILocation(line: 577, column: 3, scope: !860)
!1043 = !DILocation(line: 580, column: 3, scope: !860)
!1044 = !DILocation(line: 583, column: 3, scope: !860)
!1045 = !DILocation(line: 583, column: 16, scope: !860)
!1046 = !DILocation(line: 583, column: 38, scope: !860)
!1047 = !DILocation(line: 583, column: 30, scope: !860)
!1048 = !DILocation(line: 584, column: 23, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !860, file: !3, line: 583, column: 52)
!1050 = !DILocation(line: 584, column: 32, scope: !1049)
!1051 = !DILocation(line: 584, column: 57, scope: !1049)
!1052 = !DILocation(line: 584, column: 21, scope: !1049)
!1053 = !DILocation(line: 584, column: 19, scope: !1049)
!1054 = !DILocation(line: 585, column: 41, scope: !1049)
!1055 = !DILocation(line: 585, column: 50, scope: !1049)
!1056 = !DILocation(line: 585, column: 58, scope: !1049)
!1057 = !DILocation(line: 585, column: 12, scope: !1049)
!1058 = distinct !{!1058, !1044, !1059, !1060}
!1059 = !DILocation(line: 586, column: 3, scope: !860)
!1060 = !{!"llvm.loop.mustprogress"}
!1061 = !DILocation(line: 589, column: 5, scope: !860)
!1062 = !DILocation(line: 589, column: 14, scope: !860)
!1063 = !DILocation(line: 589, column: 37, scope: !860)
!1064 = !DILocation(line: 589, column: 3, scope: !860)
!1065 = !DILocation(line: 590, column: 3, scope: !860)
!1066 = !DILocation(line: 591, column: 3, scope: !860)
!1067 = !DILocation(line: 594, column: 7, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !860, file: !3, line: 594, column: 7)
!1069 = !DILocation(line: 594, column: 21, scope: !1068)
!1070 = !DILocation(line: 594, column: 18, scope: !1068)
!1071 = !DILocation(line: 595, column: 12, scope: !1068)
!1072 = !DILocation(line: 595, column: 5, scope: !1068)
!1073 = !DILocation(line: 596, column: 7, scope: !1074)
!1074 = distinct !DILexicalBlock(scope: !860, file: !3, line: 596, column: 7)
!1075 = !DILocation(line: 596, column: 22, scope: !1074)
!1076 = !DILocation(line: 596, column: 19, scope: !1074)
!1077 = !DILocation(line: 597, column: 12, scope: !1074)
!1078 = !DILocation(line: 597, column: 5, scope: !1074)
!1079 = !DILocation(line: 607, column: 3, scope: !860)
!1080 = !DILocalVariable(name: "cinfo", arg: 1, scope: !541, file: !3, line: 199, type: !544)
!1081 = !DILocation(line: 199, column: 32, scope: !541)
!1082 = !DILocalVariable(name: "argc", arg: 2, scope: !541, file: !3, line: 199, type: !196)
!1083 = !DILocation(line: 199, column: 43, scope: !541)
!1084 = !DILocalVariable(name: "argv", arg: 3, scope: !541, file: !3, line: 199, type: !712)
!1085 = !DILocation(line: 199, column: 56, scope: !541)
!1086 = !DILocalVariable(name: "last_file_arg_seen", arg: 4, scope: !541, file: !3, line: 200, type: !196)
!1087 = !DILocation(line: 200, column: 7, scope: !541)
!1088 = !DILocalVariable(name: "for_real", arg: 5, scope: !541, file: !3, line: 200, type: !287)
!1089 = !DILocation(line: 200, column: 35, scope: !541)
!1090 = !DILocalVariable(name: "argn", scope: !541, file: !3, line: 210, type: !196)
!1091 = !DILocation(line: 210, column: 7, scope: !541)
!1092 = !DILocalVariable(name: "arg", scope: !541, file: !3, line: 211, type: !218)
!1093 = !DILocation(line: 211, column: 10, scope: !541)
!1094 = !DILocalVariable(name: "quality", scope: !541, file: !3, line: 212, type: !196)
!1095 = !DILocation(line: 212, column: 7, scope: !541)
!1096 = !DILocalVariable(name: "q_scale_factor", scope: !541, file: !3, line: 213, type: !196)
!1097 = !DILocation(line: 213, column: 7, scope: !541)
!1098 = !DILocalVariable(name: "force_baseline", scope: !541, file: !3, line: 214, type: !287)
!1099 = !DILocation(line: 214, column: 11, scope: !541)
!1100 = !DILocalVariable(name: "simple_progressive", scope: !541, file: !3, line: 215, type: !287)
!1101 = !DILocation(line: 215, column: 11, scope: !541)
!1102 = !DILocalVariable(name: "qtablefile", scope: !541, file: !3, line: 216, type: !218)
!1103 = !DILocation(line: 216, column: 10, scope: !541)
!1104 = !DILocalVariable(name: "qslotsarg", scope: !541, file: !3, line: 217, type: !218)
!1105 = !DILocation(line: 217, column: 10, scope: !541)
!1106 = !DILocalVariable(name: "samplearg", scope: !541, file: !3, line: 218, type: !218)
!1107 = !DILocation(line: 218, column: 10, scope: !541)
!1108 = !DILocalVariable(name: "scansarg", scope: !541, file: !3, line: 219, type: !218)
!1109 = !DILocation(line: 219, column: 10, scope: !541)
!1110 = !DILocation(line: 225, column: 11, scope: !541)
!1111 = !DILocation(line: 226, column: 18, scope: !541)
!1112 = !DILocation(line: 227, column: 18, scope: !541)
!1113 = !DILocation(line: 228, column: 22, scope: !541)
!1114 = !DILocation(line: 229, column: 12, scope: !541)
!1115 = !DILocation(line: 230, column: 15, scope: !541)
!1116 = !DILocation(line: 231, column: 3, scope: !541)
!1117 = !DILocation(line: 231, column: 10, scope: !541)
!1118 = !DILocation(line: 231, column: 15, scope: !541)
!1119 = !DILocation(line: 231, column: 27, scope: !541)
!1120 = !DILocation(line: 235, column: 13, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !541, file: !3, line: 235, column: 3)
!1122 = !DILocation(line: 235, column: 8, scope: !1121)
!1123 = !DILocation(line: 235, column: 18, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1121, file: !3, line: 235, column: 3)
!1125 = !DILocation(line: 235, column: 25, scope: !1124)
!1126 = !DILocation(line: 235, column: 23, scope: !1124)
!1127 = !DILocation(line: 235, column: 3, scope: !1121)
!1128 = !DILocation(line: 236, column: 11, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1124, file: !3, line: 235, column: 39)
!1130 = !DILocation(line: 236, column: 16, scope: !1129)
!1131 = !DILocation(line: 236, column: 9, scope: !1129)
!1132 = !DILocation(line: 237, column: 10, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1129, file: !3, line: 237, column: 9)
!1134 = !DILocation(line: 237, column: 9, scope: !1133)
!1135 = !DILocation(line: 237, column: 14, scope: !1133)
!1136 = !DILocation(line: 239, column: 11, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1138, file: !3, line: 239, column: 11)
!1138 = distinct !DILexicalBlock(scope: !1133, file: !3, line: 237, column: 22)
!1139 = !DILocation(line: 239, column: 19, scope: !1137)
!1140 = !DILocation(line: 239, column: 16, scope: !1137)
!1141 = !DILocation(line: 240, column: 14, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !1137, file: !3, line: 239, column: 39)
!1143 = !DILocation(line: 241, column: 2, scope: !1142)
!1144 = !DILocation(line: 243, column: 7, scope: !1138)
!1145 = !DILocation(line: 245, column: 8, scope: !1129)
!1146 = !DILocation(line: 247, column: 18, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1129, file: !3, line: 247, column: 9)
!1148 = !DILocation(line: 247, column: 9, scope: !1147)
!1149 = !DILocation(line: 252, column: 15, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !1147, file: !3, line: 247, column: 41)
!1151 = !DILocation(line: 253, column: 8, scope: !1150)
!1152 = !DILocation(line: 252, column: 7, scope: !1150)
!1153 = !DILocation(line: 254, column: 7, scope: !1150)
!1154 = !DILocation(line: 257, column: 25, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1147, file: !3, line: 257, column: 16)
!1156 = !DILocation(line: 257, column: 16, scope: !1155)
!1157 = !DILocation(line: 259, column: 22, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1155, file: !3, line: 257, column: 46)
!1159 = !DILocation(line: 261, column: 5, scope: !1158)
!1160 = !DILocation(line: 261, column: 25, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1155, file: !3, line: 261, column: 16)
!1162 = !DILocation(line: 261, column: 16, scope: !1161)
!1163 = !DILocation(line: 263, column: 11, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1165, file: !3, line: 263, column: 11)
!1165 = distinct !DILexicalBlock(scope: !1161, file: !3, line: 261, column: 41)
!1166 = !DILocation(line: 263, column: 21, scope: !1164)
!1167 = !DILocation(line: 263, column: 18, scope: !1164)
!1168 = !DILocation(line: 264, column: 2, scope: !1164)
!1169 = !DILocation(line: 265, column: 20, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1165, file: !3, line: 265, column: 11)
!1171 = !DILocation(line: 265, column: 25, scope: !1170)
!1172 = !DILocation(line: 265, column: 11, scope: !1170)
!1173 = !DILocation(line: 266, column: 2, scope: !1174)
!1174 = distinct !DILexicalBlock(scope: !1170, file: !3, line: 265, column: 43)
!1175 = !DILocation(line: 266, column: 9, scope: !1174)
!1176 = !DILocation(line: 266, column: 20, scope: !1174)
!1177 = !DILocation(line: 267, column: 7, scope: !1174)
!1178 = !DILocation(line: 267, column: 27, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1170, file: !3, line: 267, column: 18)
!1180 = !DILocation(line: 267, column: 32, scope: !1179)
!1181 = !DILocation(line: 267, column: 18, scope: !1179)
!1182 = !DILocation(line: 268, column: 2, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !1179, file: !3, line: 267, column: 51)
!1184 = !DILocation(line: 268, column: 9, scope: !1183)
!1185 = !DILocation(line: 268, column: 20, scope: !1183)
!1186 = !DILocation(line: 269, column: 7, scope: !1183)
!1187 = !DILocation(line: 269, column: 27, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1179, file: !3, line: 269, column: 18)
!1189 = !DILocation(line: 269, column: 32, scope: !1188)
!1190 = !DILocation(line: 269, column: 18, scope: !1188)
!1191 = !DILocation(line: 270, column: 2, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1188, file: !3, line: 269, column: 52)
!1193 = !DILocation(line: 270, column: 9, scope: !1192)
!1194 = !DILocation(line: 270, column: 20, scope: !1192)
!1195 = !DILocation(line: 271, column: 7, scope: !1192)
!1196 = !DILocation(line: 272, column: 2, scope: !1188)
!1197 = !DILocation(line: 274, column: 5, scope: !1165)
!1198 = !DILocation(line: 274, column: 25, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1161, file: !3, line: 274, column: 16)
!1200 = !DILocation(line: 274, column: 16, scope: !1199)
!1201 = !DILocation(line: 274, column: 42, scope: !1199)
!1202 = !DILocation(line: 274, column: 54, scope: !1199)
!1203 = !DILocation(line: 274, column: 45, scope: !1199)
!1204 = !DILocation(line: 279, column: 13, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !1206, file: !3, line: 279, column: 11)
!1206 = distinct !DILexicalBlock(scope: !1199, file: !3, line: 274, column: 74)
!1207 = !DILocation(line: 279, column: 11, scope: !1205)
!1208 = !DILocation(line: 280, column: 10, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1205, file: !3, line: 279, column: 30)
!1210 = !DILocation(line: 280, column: 2, scope: !1209)
!1211 = !DILocation(line: 282, column: 18, scope: !1209)
!1212 = !DILocation(line: 283, column: 7, scope: !1209)
!1213 = !DILocation(line: 284, column: 7, scope: !1206)
!1214 = !DILocation(line: 284, column: 14, scope: !1206)
!1215 = !DILocation(line: 284, column: 19, scope: !1206)
!1216 = !DILocation(line: 284, column: 30, scope: !1206)
!1217 = !DILocation(line: 286, column: 5, scope: !1206)
!1218 = !DILocation(line: 286, column: 25, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1199, file: !3, line: 286, column: 16)
!1220 = !DILocation(line: 286, column: 16, scope: !1219)
!1221 = !DILocation(line: 286, column: 46, scope: !1219)
!1222 = !DILocation(line: 286, column: 58, scope: !1219)
!1223 = !DILocation(line: 286, column: 49, scope: !1219)
!1224 = !DILocation(line: 288, column: 27, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1219, file: !3, line: 286, column: 79)
!1226 = !DILocation(line: 288, column: 7, scope: !1225)
!1227 = !DILocation(line: 290, column: 5, scope: !1225)
!1228 = !DILocation(line: 290, column: 25, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !1219, file: !3, line: 290, column: 16)
!1230 = !DILocation(line: 290, column: 16, scope: !1229)
!1231 = !DILocalVariable(name: "lval", scope: !1232, file: !3, line: 292, type: !235)
!1232 = distinct !DILexicalBlock(scope: !1229, file: !3, line: 290, column: 47)
!1233 = !DILocation(line: 292, column: 12, scope: !1232)
!1234 = !DILocalVariable(name: "ch", scope: !1232, file: !3, line: 293, type: !219)
!1235 = !DILocation(line: 293, column: 12, scope: !1232)
!1236 = !DILocation(line: 295, column: 11, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1232, file: !3, line: 295, column: 11)
!1238 = !DILocation(line: 295, column: 21, scope: !1237)
!1239 = !DILocation(line: 295, column: 18, scope: !1237)
!1240 = !DILocation(line: 296, column: 2, scope: !1237)
!1241 = !DILocation(line: 297, column: 18, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !1232, file: !3, line: 297, column: 11)
!1243 = !DILocation(line: 297, column: 23, scope: !1242)
!1244 = !DILocation(line: 297, column: 11, scope: !1242)
!1245 = !DILocation(line: 297, column: 51, scope: !1242)
!1246 = !DILocation(line: 298, column: 2, scope: !1242)
!1247 = !DILocation(line: 299, column: 11, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1232, file: !3, line: 299, column: 11)
!1249 = !DILocation(line: 299, column: 14, scope: !1248)
!1250 = !DILocation(line: 299, column: 21, scope: !1248)
!1251 = !DILocation(line: 299, column: 24, scope: !1248)
!1252 = !DILocation(line: 299, column: 27, scope: !1248)
!1253 = !DILocation(line: 300, column: 7, scope: !1248)
!1254 = !DILocation(line: 300, column: 2, scope: !1248)
!1255 = !DILocation(line: 301, column: 39, scope: !1232)
!1256 = !DILocation(line: 301, column: 44, scope: !1232)
!1257 = !DILocation(line: 301, column: 7, scope: !1232)
!1258 = !DILocation(line: 301, column: 14, scope: !1232)
!1259 = !DILocation(line: 301, column: 19, scope: !1232)
!1260 = !DILocation(line: 301, column: 37, scope: !1232)
!1261 = !DILocation(line: 303, column: 5, scope: !1232)
!1262 = !DILocation(line: 303, column: 25, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !1229, file: !3, line: 303, column: 16)
!1264 = !DILocation(line: 303, column: 16, scope: !1263)
!1265 = !DILocation(line: 303, column: 45, scope: !1263)
!1266 = !DILocation(line: 303, column: 57, scope: !1263)
!1267 = !DILocation(line: 303, column: 48, scope: !1263)
!1268 = !DILocation(line: 306, column: 7, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1263, file: !3, line: 303, column: 78)
!1270 = !DILocation(line: 306, column: 14, scope: !1269)
!1271 = !DILocation(line: 306, column: 30, scope: !1269)
!1272 = !DILocation(line: 313, column: 5, scope: !1269)
!1273 = !DILocation(line: 313, column: 25, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1263, file: !3, line: 313, column: 16)
!1275 = !DILocation(line: 313, column: 16, scope: !1274)
!1276 = !DILocation(line: 315, column: 11, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !1278, file: !3, line: 315, column: 11)
!1278 = distinct !DILexicalBlock(scope: !1274, file: !3, line: 313, column: 45)
!1279 = !DILocation(line: 315, column: 21, scope: !1277)
!1280 = !DILocation(line: 315, column: 18, scope: !1277)
!1281 = !DILocation(line: 316, column: 2, scope: !1277)
!1282 = !DILocation(line: 317, column: 21, scope: !1278)
!1283 = !DILocation(line: 317, column: 26, scope: !1278)
!1284 = !DILocation(line: 317, column: 19, scope: !1278)
!1285 = !DILocation(line: 319, column: 5, scope: !1278)
!1286 = !DILocation(line: 319, column: 25, scope: !1287)
!1287 = distinct !DILexicalBlock(scope: !1274, file: !3, line: 319, column: 16)
!1288 = !DILocation(line: 319, column: 16, scope: !1287)
!1289 = !DILocation(line: 322, column: 26, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1287, file: !3, line: 319, column: 49)
!1291 = !DILocation(line: 330, column: 5, scope: !1290)
!1292 = !DILocation(line: 330, column: 25, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1287, file: !3, line: 330, column: 16)
!1294 = !DILocation(line: 330, column: 16, scope: !1293)
!1295 = !DILocation(line: 332, column: 11, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1297, file: !3, line: 332, column: 11)
!1297 = distinct !DILexicalBlock(scope: !1293, file: !3, line: 330, column: 45)
!1298 = !DILocation(line: 332, column: 21, scope: !1296)
!1299 = !DILocation(line: 332, column: 18, scope: !1296)
!1300 = !DILocation(line: 333, column: 2, scope: !1296)
!1301 = !DILocation(line: 334, column: 18, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1297, file: !3, line: 334, column: 11)
!1303 = !DILocation(line: 334, column: 23, scope: !1302)
!1304 = !DILocation(line: 334, column: 11, scope: !1302)
!1305 = !DILocation(line: 334, column: 46, scope: !1302)
!1306 = !DILocation(line: 335, column: 2, scope: !1302)
!1307 = !DILocation(line: 337, column: 45, scope: !1297)
!1308 = !DILocation(line: 337, column: 24, scope: !1297)
!1309 = !DILocation(line: 337, column: 22, scope: !1297)
!1310 = !DILocation(line: 339, column: 5, scope: !1297)
!1311 = !DILocation(line: 339, column: 25, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1293, file: !3, line: 339, column: 16)
!1313 = !DILocation(line: 339, column: 16, scope: !1312)
!1314 = !DILocation(line: 341, column: 11, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1316, file: !3, line: 341, column: 11)
!1316 = distinct !DILexicalBlock(scope: !1312, file: !3, line: 339, column: 44)
!1317 = !DILocation(line: 341, column: 21, scope: !1315)
!1318 = !DILocation(line: 341, column: 18, scope: !1315)
!1319 = !DILocation(line: 342, column: 2, scope: !1315)
!1320 = !DILocation(line: 343, column: 19, scope: !1316)
!1321 = !DILocation(line: 343, column: 24, scope: !1316)
!1322 = !DILocation(line: 343, column: 17, scope: !1316)
!1323 = !DILocation(line: 349, column: 5, scope: !1316)
!1324 = !DILocation(line: 349, column: 25, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1312, file: !3, line: 349, column: 16)
!1326 = !DILocation(line: 349, column: 16, scope: !1325)
!1327 = !DILocation(line: 351, column: 11, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1329, file: !3, line: 351, column: 11)
!1329 = distinct !DILexicalBlock(scope: !1325, file: !3, line: 349, column: 45)
!1330 = !DILocation(line: 351, column: 21, scope: !1328)
!1331 = !DILocation(line: 351, column: 18, scope: !1328)
!1332 = !DILocation(line: 352, column: 2, scope: !1328)
!1333 = !DILocation(line: 353, column: 20, scope: !1329)
!1334 = !DILocation(line: 353, column: 25, scope: !1329)
!1335 = !DILocation(line: 353, column: 18, scope: !1329)
!1336 = !DILocation(line: 356, column: 5, scope: !1329)
!1337 = !DILocation(line: 356, column: 25, scope: !1338)
!1338 = distinct !DILexicalBlock(scope: !1325, file: !3, line: 356, column: 16)
!1339 = !DILocation(line: 356, column: 16, scope: !1338)
!1340 = !DILocalVariable(name: "lval", scope: !1341, file: !3, line: 358, type: !235)
!1341 = distinct !DILexicalBlock(scope: !1338, file: !3, line: 356, column: 45)
!1342 = !DILocation(line: 358, column: 12, scope: !1341)
!1343 = !DILocalVariable(name: "ch", scope: !1341, file: !3, line: 359, type: !219)
!1344 = !DILocation(line: 359, column: 12, scope: !1341)
!1345 = !DILocation(line: 361, column: 11, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1341, file: !3, line: 361, column: 11)
!1347 = !DILocation(line: 361, column: 21, scope: !1346)
!1348 = !DILocation(line: 361, column: 18, scope: !1346)
!1349 = !DILocation(line: 362, column: 2, scope: !1346)
!1350 = !DILocation(line: 363, column: 18, scope: !1351)
!1351 = distinct !DILexicalBlock(scope: !1341, file: !3, line: 363, column: 11)
!1352 = !DILocation(line: 363, column: 23, scope: !1351)
!1353 = !DILocation(line: 363, column: 11, scope: !1351)
!1354 = !DILocation(line: 363, column: 51, scope: !1351)
!1355 = !DILocation(line: 364, column: 2, scope: !1351)
!1356 = !DILocation(line: 365, column: 11, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1341, file: !3, line: 365, column: 11)
!1358 = !DILocation(line: 365, column: 16, scope: !1357)
!1359 = !DILocation(line: 365, column: 20, scope: !1357)
!1360 = !DILocation(line: 365, column: 23, scope: !1357)
!1361 = !DILocation(line: 365, column: 28, scope: !1357)
!1362 = !DILocation(line: 366, column: 2, scope: !1357)
!1363 = !DILocation(line: 367, column: 11, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !1341, file: !3, line: 367, column: 11)
!1365 = !DILocation(line: 367, column: 14, scope: !1364)
!1366 = !DILocation(line: 367, column: 21, scope: !1364)
!1367 = !DILocation(line: 367, column: 24, scope: !1364)
!1368 = !DILocation(line: 367, column: 27, scope: !1364)
!1369 = !DILocation(line: 368, column: 43, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1364, file: !3, line: 367, column: 35)
!1371 = !DILocation(line: 368, column: 28, scope: !1370)
!1372 = !DILocation(line: 368, column: 2, scope: !1370)
!1373 = !DILocation(line: 368, column: 9, scope: !1370)
!1374 = !DILocation(line: 368, column: 26, scope: !1370)
!1375 = !DILocation(line: 369, column: 2, scope: !1370)
!1376 = !DILocation(line: 369, column: 9, scope: !1370)
!1377 = !DILocation(line: 369, column: 25, scope: !1370)
!1378 = !DILocation(line: 370, column: 7, scope: !1370)
!1379 = !DILocation(line: 371, column: 33, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !1364, file: !3, line: 370, column: 14)
!1381 = !DILocation(line: 371, column: 27, scope: !1380)
!1382 = !DILocation(line: 371, column: 2, scope: !1380)
!1383 = !DILocation(line: 371, column: 9, scope: !1380)
!1384 = !DILocation(line: 371, column: 25, scope: !1380)
!1385 = !DILocation(line: 375, column: 5, scope: !1341)
!1386 = !DILocation(line: 375, column: 25, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !1338, file: !3, line: 375, column: 16)
!1388 = !DILocation(line: 375, column: 16, scope: !1387)
!1389 = !DILocation(line: 377, column: 11, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1391, file: !3, line: 377, column: 11)
!1391 = distinct !DILexicalBlock(scope: !1387, file: !3, line: 375, column: 44)
!1392 = !DILocation(line: 377, column: 21, scope: !1390)
!1393 = !DILocation(line: 377, column: 18, scope: !1390)
!1394 = !DILocation(line: 378, column: 2, scope: !1390)
!1395 = !DILocation(line: 379, column: 19, scope: !1391)
!1396 = !DILocation(line: 379, column: 24, scope: !1391)
!1397 = !DILocation(line: 379, column: 17, scope: !1391)
!1398 = !DILocation(line: 385, column: 5, scope: !1391)
!1399 = !DILocation(line: 385, column: 25, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !1387, file: !3, line: 385, column: 16)
!1401 = !DILocation(line: 385, column: 16, scope: !1400)
!1402 = !DILocation(line: 388, column: 11, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !1404, file: !3, line: 388, column: 11)
!1404 = distinct !DILexicalBlock(scope: !1400, file: !3, line: 385, column: 43)
!1405 = !DILocation(line: 388, column: 21, scope: !1403)
!1406 = !DILocation(line: 388, column: 18, scope: !1403)
!1407 = !DILocation(line: 389, column: 2, scope: !1403)
!1408 = !DILocation(line: 390, column: 18, scope: !1404)
!1409 = !DILocation(line: 390, column: 23, scope: !1404)
!1410 = !DILocation(line: 390, column: 16, scope: !1404)
!1411 = !DILocation(line: 398, column: 5, scope: !1404)
!1412 = !DILocation(line: 398, column: 25, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !1400, file: !3, line: 398, column: 16)
!1414 = !DILocation(line: 398, column: 16, scope: !1413)
!1415 = !DILocalVariable(name: "val", scope: !1416, file: !3, line: 400, type: !196)
!1416 = distinct !DILexicalBlock(scope: !1413, file: !3, line: 398, column: 44)
!1417 = !DILocation(line: 400, column: 11, scope: !1416)
!1418 = !DILocation(line: 402, column: 11, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1416, file: !3, line: 402, column: 11)
!1420 = !DILocation(line: 402, column: 21, scope: !1419)
!1421 = !DILocation(line: 402, column: 18, scope: !1419)
!1422 = !DILocation(line: 403, column: 2, scope: !1419)
!1423 = !DILocation(line: 404, column: 18, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1416, file: !3, line: 404, column: 11)
!1425 = !DILocation(line: 404, column: 23, scope: !1424)
!1426 = !DILocation(line: 404, column: 11, scope: !1424)
!1427 = !DILocation(line: 404, column: 42, scope: !1424)
!1428 = !DILocation(line: 405, column: 2, scope: !1424)
!1429 = !DILocation(line: 406, column: 11, scope: !1430)
!1430 = distinct !DILexicalBlock(scope: !1416, file: !3, line: 406, column: 11)
!1431 = !DILocation(line: 406, column: 15, scope: !1430)
!1432 = !DILocation(line: 406, column: 19, scope: !1430)
!1433 = !DILocation(line: 406, column: 22, scope: !1430)
!1434 = !DILocation(line: 406, column: 26, scope: !1430)
!1435 = !DILocation(line: 407, column: 2, scope: !1430)
!1436 = !DILocation(line: 408, column: 33, scope: !1416)
!1437 = !DILocation(line: 408, column: 7, scope: !1416)
!1438 = !DILocation(line: 408, column: 14, scope: !1416)
!1439 = !DILocation(line: 408, column: 31, scope: !1416)
!1440 = !DILocation(line: 410, column: 5, scope: !1416)
!1441 = !DILocation(line: 410, column: 25, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !1413, file: !3, line: 410, column: 16)
!1443 = !DILocation(line: 410, column: 16, scope: !1442)
!1444 = !DILocation(line: 412, column: 16, scope: !1445)
!1445 = distinct !DILexicalBlock(scope: !1442, file: !3, line: 410, column: 43)
!1446 = !DILocation(line: 414, column: 5, scope: !1445)
!1447 = !DILocation(line: 415, column: 7, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !1442, file: !3, line: 414, column: 12)
!1449 = !DILocation(line: 417, column: 3, scope: !1129)
!1450 = !DILocation(line: 235, column: 35, scope: !1124)
!1451 = !DILocation(line: 235, column: 3, scope: !1124)
!1452 = distinct !{!1452, !1127, !1453, !1060}
!1453 = !DILocation(line: 417, column: 3, scope: !1121)
!1454 = !DILocation(line: 421, column: 7, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !541, file: !3, line: 421, column: 7)
!1456 = !DILocation(line: 425, column: 22, scope: !1457)
!1457 = distinct !DILexicalBlock(scope: !1455, file: !3, line: 421, column: 17)
!1458 = !DILocation(line: 425, column: 29, scope: !1457)
!1459 = !DILocation(line: 425, column: 38, scope: !1457)
!1460 = !DILocation(line: 425, column: 5, scope: !1457)
!1461 = !DILocation(line: 427, column: 9, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1457, file: !3, line: 427, column: 9)
!1463 = !DILocation(line: 427, column: 20, scope: !1462)
!1464 = !DILocation(line: 428, column: 31, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !1462, file: !3, line: 428, column: 11)
!1466 = !DILocation(line: 428, column: 38, scope: !1465)
!1467 = !DILocation(line: 429, column: 10, scope: !1465)
!1468 = !DILocation(line: 429, column: 26, scope: !1465)
!1469 = !DILocation(line: 428, column: 13, scope: !1465)
!1470 = !DILocation(line: 428, column: 11, scope: !1465)
!1471 = !DILocation(line: 430, column: 2, scope: !1465)
!1472 = !DILocation(line: 429, column: 40, scope: !1465)
!1473 = !DILocation(line: 432, column: 9, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !1457, file: !3, line: 432, column: 9)
!1475 = !DILocation(line: 432, column: 19, scope: !1474)
!1476 = !DILocation(line: 433, column: 29, scope: !1477)
!1477 = distinct !DILexicalBlock(scope: !1474, file: !3, line: 433, column: 11)
!1478 = !DILocation(line: 433, column: 36, scope: !1477)
!1479 = !DILocation(line: 433, column: 13, scope: !1477)
!1480 = !DILocation(line: 433, column: 11, scope: !1477)
!1481 = !DILocation(line: 434, column: 2, scope: !1477)
!1482 = !DILocation(line: 433, column: 45, scope: !1477)
!1483 = !DILocation(line: 436, column: 9, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !1457, file: !3, line: 436, column: 9)
!1485 = !DILocation(line: 436, column: 19, scope: !1484)
!1486 = !DILocation(line: 437, column: 32, scope: !1487)
!1487 = distinct !DILexicalBlock(scope: !1484, file: !3, line: 437, column: 11)
!1488 = !DILocation(line: 437, column: 39, scope: !1487)
!1489 = !DILocation(line: 437, column: 13, scope: !1487)
!1490 = !DILocation(line: 437, column: 11, scope: !1487)
!1491 = !DILocation(line: 438, column: 2, scope: !1487)
!1492 = !DILocation(line: 437, column: 48, scope: !1487)
!1493 = !DILocation(line: 441, column: 9, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1457, file: !3, line: 441, column: 9)
!1495 = !DILocation(line: 442, column: 31, scope: !1494)
!1496 = !DILocation(line: 442, column: 7, scope: !1494)
!1497 = !DILocation(line: 446, column: 9, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1457, file: !3, line: 446, column: 9)
!1499 = !DILocation(line: 446, column: 18, scope: !1498)
!1500 = !DILocation(line: 447, column: 30, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1498, file: !3, line: 447, column: 11)
!1502 = !DILocation(line: 447, column: 37, scope: !1501)
!1503 = !DILocation(line: 447, column: 13, scope: !1501)
!1504 = !DILocation(line: 447, column: 11, scope: !1501)
!1505 = !DILocation(line: 448, column: 2, scope: !1501)
!1506 = !DILocation(line: 447, column: 45, scope: !1501)
!1507 = !DILocation(line: 450, column: 3, scope: !1457)
!1508 = !DILocation(line: 452, column: 10, scope: !541)
!1509 = !DILocation(line: 452, column: 3, scope: !541)
!1510 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 141, type: !1511, scopeLine: 143, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2)
!1511 = !DISubroutineType(types: !1512)
!1512 = !{null}
!1513 = !DILocation(line: 144, column: 11, scope: !1510)
!1514 = !DILocation(line: 144, column: 44, scope: !1510)
!1515 = !DILocation(line: 144, column: 3, scope: !1510)
!1516 = !DILocation(line: 148, column: 11, scope: !1510)
!1517 = !DILocation(line: 148, column: 3, scope: !1510)
!1518 = !DILocation(line: 151, column: 11, scope: !1510)
!1519 = !DILocation(line: 151, column: 3, scope: !1510)
!1520 = !DILocation(line: 152, column: 11, scope: !1510)
!1521 = !DILocation(line: 152, column: 3, scope: !1510)
!1522 = !DILocation(line: 153, column: 11, scope: !1510)
!1523 = !DILocation(line: 153, column: 3, scope: !1510)
!1524 = !DILocation(line: 155, column: 11, scope: !1510)
!1525 = !DILocation(line: 155, column: 3, scope: !1510)
!1526 = !DILocation(line: 158, column: 11, scope: !1510)
!1527 = !DILocation(line: 158, column: 3, scope: !1510)
!1528 = !DILocation(line: 161, column: 11, scope: !1510)
!1529 = !DILocation(line: 161, column: 3, scope: !1510)
!1530 = !DILocation(line: 163, column: 11, scope: !1510)
!1531 = !DILocation(line: 163, column: 3, scope: !1510)
!1532 = !DILocation(line: 165, column: 11, scope: !1510)
!1533 = !DILocation(line: 165, column: 3, scope: !1510)
!1534 = !DILocation(line: 169, column: 11, scope: !1510)
!1535 = !DILocation(line: 169, column: 3, scope: !1510)
!1536 = !DILocation(line: 173, column: 11, scope: !1510)
!1537 = !DILocation(line: 173, column: 3, scope: !1510)
!1538 = !DILocation(line: 176, column: 11, scope: !1510)
!1539 = !DILocation(line: 176, column: 3, scope: !1510)
!1540 = !DILocation(line: 178, column: 11, scope: !1510)
!1541 = !DILocation(line: 178, column: 3, scope: !1510)
!1542 = !DILocation(line: 180, column: 11, scope: !1510)
!1543 = !DILocation(line: 180, column: 3, scope: !1510)
!1544 = !DILocation(line: 181, column: 11, scope: !1510)
!1545 = !DILocation(line: 181, column: 3, scope: !1510)
!1546 = !DILocation(line: 182, column: 11, scope: !1510)
!1547 = !DILocation(line: 182, column: 3, scope: !1510)
!1548 = !DILocation(line: 183, column: 11, scope: !1510)
!1549 = !DILocation(line: 183, column: 3, scope: !1510)
!1550 = !DILocation(line: 187, column: 11, scope: !1510)
!1551 = !DILocation(line: 187, column: 3, scope: !1510)
!1552 = !DILocation(line: 188, column: 11, scope: !1510)
!1553 = !DILocation(line: 188, column: 3, scope: !1510)
!1554 = !DILocation(line: 189, column: 11, scope: !1510)
!1555 = !DILocation(line: 189, column: 3, scope: !1510)
!1556 = !DILocation(line: 190, column: 11, scope: !1510)
!1557 = !DILocation(line: 190, column: 3, scope: !1510)
!1558 = !DILocation(line: 192, column: 11, scope: !1510)
!1559 = !DILocation(line: 192, column: 3, scope: !1510)
!1560 = !DILocation(line: 194, column: 3, scope: !1510)
!1561 = distinct !DISubprogram(name: "select_file_type", scope: !3, file: !3, line: 80, type: !1562, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !713)
!1562 = !DISubroutineType(types: !1563)
!1563 = !{!874, !544, !889}
!1564 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1561, file: !3, line: 80, type: !544)
!1565 = !DILocation(line: 80, column: 34, scope: !1561)
!1566 = !DILocalVariable(name: "infile", arg: 2, scope: !1561, file: !3, line: 80, type: !889)
!1567 = !DILocation(line: 80, column: 48, scope: !1561)
!1568 = !DILocalVariable(name: "c", scope: !1561, file: !3, line: 82, type: !196)
!1569 = !DILocation(line: 82, column: 7, scope: !1561)
!1570 = !DILocation(line: 84, column: 7, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1561, file: !3, line: 84, column: 7)
!1572 = !DILocation(line: 86, column: 29, scope: !1573)
!1573 = distinct !DILexicalBlock(scope: !1571, file: !3, line: 84, column: 17)
!1574 = !DILocation(line: 86, column: 12, scope: !1573)
!1575 = !DILocation(line: 86, column: 5, scope: !1573)
!1576 = !DILocation(line: 92, column: 17, scope: !1577)
!1577 = distinct !DILexicalBlock(scope: !1561, file: !3, line: 92, column: 7)
!1578 = !DILocation(line: 92, column: 12, scope: !1577)
!1579 = !DILocation(line: 92, column: 10, scope: !1577)
!1580 = !DILocation(line: 92, column: 26, scope: !1577)
!1581 = !DILocation(line: 93, column: 5, scope: !1577)
!1582 = !DILocation(line: 94, column: 14, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1561, file: !3, line: 94, column: 7)
!1584 = !DILocation(line: 94, column: 17, scope: !1583)
!1585 = !DILocation(line: 94, column: 7, scope: !1583)
!1586 = !DILocation(line: 94, column: 25, scope: !1583)
!1587 = !DILocation(line: 95, column: 5, scope: !1583)
!1588 = !DILocation(line: 97, column: 11, scope: !1561)
!1589 = !DILocation(line: 97, column: 3, scope: !1561)
!1590 = !DILocation(line: 100, column: 27, scope: !1591)
!1591 = distinct !DILexicalBlock(scope: !1561, file: !3, line: 97, column: 14)
!1592 = !DILocation(line: 100, column: 12, scope: !1591)
!1593 = !DILocation(line: 100, column: 5, scope: !1591)
!1594 = !DILocation(line: 104, column: 27, scope: !1591)
!1595 = !DILocation(line: 104, column: 12, scope: !1591)
!1596 = !DILocation(line: 104, column: 5, scope: !1591)
!1597 = !DILocation(line: 108, column: 27, scope: !1591)
!1598 = !DILocation(line: 108, column: 12, scope: !1591)
!1599 = !DILocation(line: 108, column: 5, scope: !1591)
!1600 = !DILocation(line: 116, column: 29, scope: !1591)
!1601 = !DILocation(line: 116, column: 12, scope: !1591)
!1602 = !DILocation(line: 116, column: 5, scope: !1591)
!1603 = !DILocation(line: 119, column: 5, scope: !1591)
!1604 = !DILocation(line: 120, column: 5, scope: !1591)
!1605 = !DILocation(line: 123, column: 3, scope: !1561)
!1606 = !DILocation(line: 124, column: 1, scope: !1561)
