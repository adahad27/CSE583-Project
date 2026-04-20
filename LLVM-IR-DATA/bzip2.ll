; ModuleID = 'cBench/bzip2d/src/bzip2.c'
source_filename = "cBench/bzip2d/src/bzip2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.zzzz = type { ptr, ptr }
%struct.UInt64 = type { [8 x i8] }
%struct.utimbuf = type { i64, i64 }

@.str = private unnamed_addr constant [5 x i8] c".bz2\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [4 x i8] c".bz\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [6 x i8] c".tbz2\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [5 x i8] c".tbz\00", align 1, !dbg !17
@zSuffix = dso_local global [4 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], align 16, !dbg !19
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !62
@.str.5 = private unnamed_addr constant [5 x i8] c".tar\00", align 1, !dbg !67
@unzSuffix = dso_local global [4 x ptr] [ptr @.str.4, ptr @.str.4, ptr @.str.5, ptr @.str.5], align 16, !dbg !69
@outputHandleJustInCase = dso_local global ptr null, align 8, !dbg !213
@smallMode = dso_local global i8 0, align 1, !dbg !174
@keepInputFiles = dso_local global i8 0, align 1, !dbg !172
@forceOverwrite = dso_local global i8 0, align 1, !dbg !178
@noisy = dso_local global i8 0, align 1, !dbg !184
@verbosity = dso_local global i32 0, align 4, !dbg !170
@blockSize100k = dso_local global i32 0, align 4, !dbg !190
@testFailsExist = dso_local global i8 0, align 1, !dbg !180
@unzFailsExist = dso_local global i8 0, align 1, !dbg !182
@numFileNames = dso_local global i32 0, align 4, !dbg !186
@numFilesProcessed = dso_local global i32 0, align 4, !dbg !188
@workFactor = dso_local global i32 0, align 4, !dbg !268
@deleteOutputOnInterrupt = dso_local global i8 0, align 1, !dbg !176
@exitValue = dso_local global i32 0, align 4, !dbg !192
@inName = dso_local global [1034 x i8] zeroinitializer, align 16, !dbg !200
@.str.6 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1, !dbg !74
@outName = dso_local global [1034 x i8] zeroinitializer, align 16, !dbg !205
@progNameReally = dso_local global [1034 x i8] zeroinitializer, align 16, !dbg !211
@progName = dso_local global ptr null, align 8, !dbg !209
@.str.7 = private unnamed_addr constant [6 x i8] c"BZIP2\00", align 1, !dbg !79
@.str.8 = private unnamed_addr constant [5 x i8] c"BZIP\00", align 1, !dbg !81
@longestFileName = dso_local global i32 0, align 4, !dbg !198
@.str.9 = private unnamed_addr constant [3 x i8] c"--\00", align 1, !dbg !83
@srcMode = dso_local global i32 0, align 4, !dbg !196
@opMode = dso_local global i32 0, align 4, !dbg !194
@.str.10 = private unnamed_addr constant [6 x i8] c"unzip\00", align 1, !dbg !88
@.str.11 = private unnamed_addr constant [6 x i8] c"UNZIP\00", align 1, !dbg !90
@.str.12 = private unnamed_addr constant [6 x i8] c"z2cat\00", align 1, !dbg !92
@.str.13 = private unnamed_addr constant [6 x i8] c"Z2CAT\00", align 1, !dbg !94
@.str.14 = private unnamed_addr constant [5 x i8] c"zcat\00", align 1, !dbg !96
@.str.15 = private unnamed_addr constant [5 x i8] c"ZCAT\00", align 1, !dbg !98
@stderr = external global ptr, align 8
@.str.16 = private unnamed_addr constant [19 x i8] c"%s: Bad flag `%s'\0A\00", align 1, !dbg !100
@.str.17 = private unnamed_addr constant [9 x i8] c"--stdout\00", align 1, !dbg !105
@.str.18 = private unnamed_addr constant [13 x i8] c"--decompress\00", align 1, !dbg !110
@.str.19 = private unnamed_addr constant [11 x i8] c"--compress\00", align 1, !dbg !115
@.str.20 = private unnamed_addr constant [8 x i8] c"--force\00", align 1, !dbg !120
@.str.21 = private unnamed_addr constant [7 x i8] c"--test\00", align 1, !dbg !125
@.str.22 = private unnamed_addr constant [7 x i8] c"--keep\00", align 1, !dbg !127
@.str.23 = private unnamed_addr constant [8 x i8] c"--small\00", align 1, !dbg !129
@.str.24 = private unnamed_addr constant [8 x i8] c"--quiet\00", align 1, !dbg !131
@.str.25 = private unnamed_addr constant [10 x i8] c"--version\00", align 1, !dbg !133
@.str.26 = private unnamed_addr constant [10 x i8] c"--license\00", align 1, !dbg !138
@.str.27 = private unnamed_addr constant [14 x i8] c"--exponential\00", align 1, !dbg !140
@.str.28 = private unnamed_addr constant [18 x i8] c"--repetitive-best\00", align 1, !dbg !145
@.str.29 = private unnamed_addr constant [18 x i8] c"--repetitive-fast\00", align 1, !dbg !150
@.str.30 = private unnamed_addr constant [7 x i8] c"--fast\00", align 1, !dbg !152
@.str.31 = private unnamed_addr constant [7 x i8] c"--best\00", align 1, !dbg !154
@.str.32 = private unnamed_addr constant [10 x i8] c"--verbose\00", align 1, !dbg !156
@.str.33 = private unnamed_addr constant [7 x i8] c"--help\00", align 1, !dbg !158
@.str.34 = private unnamed_addr constant [40 x i8] c"%s: -c and -t cannot be used together.\0A\00", align 1, !dbg !160
@.str.35 = private unnamed_addr constant [113 x i8] c"\0AYou can use the `bzip2recover' program to attempt to recover\0Adata from undamaged sections of corrupted files.\0A\0A\00", align 1, !dbg !165
@tmpName = dso_local global [1034 x i8] zeroinitializer, align 16, !dbg !207
@.str.36 = private unnamed_addr constant [869 x i8] c"\0A%s: Caught a SIGSEGV or SIGBUS whilst compressing.\0A\0A   Possible causes are (most likely first):\0A   (1) This computer has unreliable memory or cache hardware\0A       (a surprisingly common problem; try a different machine.)\0A   (2) A bug in the compiler used to create this executable\0A       (unlikely, if you didn't compile bzip2 yourself.)\0A   (3) A real bug in bzip2 -- I hope this should never be the case.\0A   The user's manual, Section 4.3, has more info on (1) and (2).\0A   \0A   If you suspect this is a bug in bzip2, or are unsure about (1)\0A   or (2), feel free to report it to me at: jseward@bzip.org.\0A   Section 4.3 of the user's manual describes the info a useful\0A   bug report should have.  If the manual is available on your\0A   system, please try and read it before mailing me.  If you don't\0A   have the manual or can't be bothered to read it, mail me anyway.\0A\0A\00", align 1, !dbg !270
@.str.37 = private unnamed_addr constant [996 x i8] c"\0A%s: Caught a SIGSEGV or SIGBUS whilst decompressing.\0A\0A   Possible causes are (most likely first):\0A   (1) The compressed data is corrupted, and bzip2's usual checks\0A       failed to detect this.  Try bzip2 -tvv my_file.bz2.\0A   (2) This computer has unreliable memory or cache hardware\0A       (a surprisingly common problem; try a different machine.)\0A   (3) A bug in the compiler used to create this executable\0A       (unlikely, if you didn't compile bzip2 yourself.)\0A   (4) A real bug in bzip2 -- I hope this should never be the case.\0A   The user's manual, Section 4.3, has more info on (2) and (3).\0A   \0A   If you suspect this is a bug in bzip2, or are unsure about (2)\0A   or (3), feel free to report it to me at: jseward@bzip.org.\0A   Section 4.3 of the user's manual describes the info a useful\0A   bug report should have.  If the manual is available on your\0A   system, please try and read it before mailing me.  If you don't\0A   have the manual or can't be bothered to read it, mail me anyway.\0A\0A\00", align 1, !dbg !275
@.str.38 = private unnamed_addr constant [36 x i8] c"\09Input file = %s, output file = %s\0A\00", align 1, !dbg !280
@.str.39 = private unnamed_addr constant [44 x i8] c"%s: Deleting output file %s, if it exists.\0A\00", align 1, !dbg !285
@.str.40 = private unnamed_addr constant [59 x i8] c"%s: WARNING: deletion of output file (apparently) failed.\0A\00", align 1, !dbg !290
@.str.41 = private unnamed_addr constant [49 x i8] c"%s: WARNING: deletion of output file suppressed\0A\00", align 1, !dbg !295
@.str.42 = private unnamed_addr constant [56 x i8] c"%s:    since input file no longer exists.  Output file\0A\00", align 1, !dbg !300
@.str.43 = private unnamed_addr constant [32 x i8] c"%s:    `%s' may be incomplete.\0A\00", align 1, !dbg !305
@.str.44 = private unnamed_addr constant [61 x i8] c"%s:    I suggest doing an integrity test (bzip2 -tv) of it.\0A\00", align 1, !dbg !310
@.str.45 = private unnamed_addr constant [110 x i8] c"%s: WARNING: some files have not been processed:\0A%s:    %d specified on command line, %d not processed yet.\0A\0A\00", align 1, !dbg !315
@.str.46 = private unnamed_addr constant [241 x i8] c"\0AIt is possible that the compressed file(s) have become corrupted.\0AYou can use the -tvv option to test integrity of such files.\0A\0AYou can use the `bzip2recover' program to attempt to recover\0Adata from undamaged sections of corrupted files.\0A\0A\00", align 1, !dbg !320
@.str.47 = private unnamed_addr constant [120 x i8] c"bzip2: file name\0A`%s'\0Ais suspiciously (more than %d chars) long.\0ATry using a reasonable file name instead.  Sorry! :-)\0A\00", align 1, !dbg !325
@.str.48 = private unnamed_addr constant [38 x i8] c"\0A%s: couldn't allocate enough memory\0A\00", align 1, !dbg !330
@.str.49 = private unnamed_addr constant [531 x i8] c"bzip2, a block-sorting file compressor.  Version %s.\0A   \0A   Copyright (C) 1996-2006 by Julian Seward.\0A   \0A   This program is free software; you can redistribute it and/or modify\0A   it under the terms set out in the LICENSE file, which is included\0A   in the bzip2-1.0.4 source distribution.\0A   \0A   This program is distributed in the hope that it will be useful,\0A   but WITHOUT ANY WARRANTY; without even the implied warranty of\0A   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the\0A   LICENSE file for more details.\0A   \0A\00", align 1, !dbg !335
@.str.50 = private unnamed_addr constant [1230 x i8] c"bzip2, a block-sorting file compressor.  Version %s.\0A\0A   usage: %s [flags and input files in any order]\0A\0A   -h --help           print this message\0A   -d --decompress     force decompression\0A   -z --compress       force compression\0A   -k --keep           keep (don't delete) input files\0A   -f --force          overwrite existing output files\0A   -t --test           test compressed file integrity\0A   -c --stdout         output to standard out\0A   -q --quiet          suppress noncritical error messages\0A   -v --verbose        be verbose (a 2nd -v gives more)\0A   -L --license        display software version & license\0A   -V --version        display software version & license\0A   -s --small          use less memory (at most 2500k)\0A   -1 .. -9            set block size to 100k .. 900k\0A   --fast              alias for -1\0A   --best              alias for -9\0A\0A   If invoked as `bzip2', default action is to compress.\0A              as `bunzip2',  default action is to decompress.\0A              as `bzcat', default action is to decompress to stdout.\0A\0A   If no file names are given, bzip2 compresses or decompresses\0A   from standard input to standard output.  You can combine\0A   short flags, so `-v -4' means the same as -v4 or -4v, &c.\0A\0A\00", align 1, !dbg !340
@.str.51 = private unnamed_addr constant [49 x i8] c"%s: %s is redundant in versions 0.9.5 and above\0A\00", align 1, !dbg !345
@.str.52 = private unnamed_addr constant [45 x i8] c"\0A%s: Control-C or similar caught, quitting.\0A\00", align 1, !dbg !347
@.str.53 = private unnamed_addr constant [21 x i8] c"compress: bad modes\0A\00", align 1, !dbg !352
@.str.54 = private unnamed_addr constant [8 x i8] c"(stdin)\00", align 1, !dbg !357
@.str.55 = private unnamed_addr constant [9 x i8] c"(stdout)\00", align 1, !dbg !359
@.str.56 = private unnamed_addr constant [39 x i8] c"%s: There are no files matching `%s'.\0A\00", align 1, !dbg !361
@.str.57 = private unnamed_addr constant [35 x i8] c"%s: Can't open input file %s: %s.\0A\00", align 1, !dbg !366
@.str.58 = private unnamed_addr constant [42 x i8] c"%s: Input file %s already has %s suffix.\0A\00", align 1, !dbg !371
@.str.59 = private unnamed_addr constant [35 x i8] c"%s: Input file %s is a directory.\0A\00", align 1, !dbg !376
@.str.60 = private unnamed_addr constant [41 x i8] c"%s: Input file %s is not a normal file.\0A\00", align 1, !dbg !378
@.str.61 = private unnamed_addr constant [36 x i8] c"%s: Output file %s already exists.\0A\00", align 1, !dbg !383
@.str.62 = private unnamed_addr constant [40 x i8] c"%s: Input file %s has %d other link%s.\0A\00", align 1, !dbg !385
@.str.63 = private unnamed_addr constant [2 x i8] c"s\00", align 1, !dbg !387
@stdin = external global ptr, align 8
@stdout = external global ptr, align 8
@.str.64 = private unnamed_addr constant [50 x i8] c"%s: I won't write compressed data to a terminal.\0A\00", align 1, !dbg !392
@.str.65 = private unnamed_addr constant [34 x i8] c"%s: For help, type: `%s --help'.\0A\00", align 1, !dbg !397
@.str.66 = private unnamed_addr constant [3 x i8] c"rb\00", align 1, !dbg !402
@.str.67 = private unnamed_addr constant [3 x i8] c"wb\00", align 1, !dbg !404
@.str.68 = private unnamed_addr constant [38 x i8] c"%s: Can't create output file %s: %s.\0A\00", align 1, !dbg !406
@.str.69 = private unnamed_addr constant [22 x i8] c"compress: bad srcMode\00", align 1, !dbg !408
@.str.70 = private unnamed_addr constant [7 x i8] c"  %s: \00", align 1, !dbg !413
@.str.71 = private unnamed_addr constant [109 x i8] c"\0A%s: PANIC -- internal consistency error:\0A\09%s\0A\09This is a BUG.  Please report it to me at:\0A\09jseward@bzip.org\0A\00", align 1, !dbg !415
@fileMetaInfo = internal global %struct.stat zeroinitializer, align 8, !dbg !420
@.str.72 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !456
@.str.73 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !458
@.str.74 = private unnamed_addr constant [22 x i8] c" no data compressed.\0A\00", align 1, !dbg !460
@.str.75 = private unnamed_addr constant [57 x i8] c"%6.3f:1, %6.3f bits/byte, %5.2f%% saved, %s in, %s out.\0A\00", align 1, !dbg !462
@.str.76 = private unnamed_addr constant [26 x i8] c"compress:unexpected error\00", align 1, !dbg !467
@.str.77 = private unnamed_addr constant [236 x i8] c"bzip2: I'm not configured correctly for this platform!\0A\09I require Int32, Int16 and Char to have sizes\0A\09of 4, 2 and 1 bytes to run properly, and they don't.\0A\09Probably you can fix this by defining them correctly,\0A\09and recompiling.  Bye!\0A\00", align 1, !dbg !472
@.str.78 = private unnamed_addr constant [65 x i8] c"\0A%s: I/O or other error, bailing out.  Possible reason follows.\0A\00", align 1, !dbg !477
@.str.79 = private unnamed_addr constant [23 x i8] c"uncompress: bad modes\0A\00", align 1, !dbg !482
@.str.80 = private unnamed_addr constant [5 x i8] c".out\00", align 1, !dbg !487
@.str.81 = private unnamed_addr constant [50 x i8] c"%s: Can't guess original name for %s -- using %s\0A\00", align 1, !dbg !489
@.str.82 = private unnamed_addr constant [51 x i8] c"%s: I won't read compressed data from a terminal.\0A\00", align 1, !dbg !491
@.str.83 = private unnamed_addr constant [34 x i8] c"%s: Can't open input file %s:%s.\0A\00", align 1, !dbg !496
@.str.84 = private unnamed_addr constant [24 x i8] c"uncompress: bad srcMode\00", align 1, !dbg !498
@.str.85 = private unnamed_addr constant [6 x i8] c"done\0A\00", align 1, !dbg !503
@.str.86 = private unnamed_addr constant [19 x i8] c"not a bzip2 file.\0A\00", align 1, !dbg !505
@.str.87 = private unnamed_addr constant [29 x i8] c"%s: %s is not a bzip2 file.\0A\00", align 1, !dbg !507
@.str.88 = private unnamed_addr constant [27 x i8] c"decompress:bzReadGetUnused\00", align 1, !dbg !512
@.str.89 = private unnamed_addr constant [6 x i8] c"\0A    \00", align 1, !dbg !517
@.str.90 = private unnamed_addr constant [45 x i8] c"\0A%s: %s: trailing garbage after EOF ignored\0A\00", align 1, !dbg !519
@.str.91 = private unnamed_addr constant [28 x i8] c"decompress:unexpected error\00", align 1, !dbg !521
@.str.92 = private unnamed_addr constant [47 x i8] c"\0A%s: Data integrity error when decompressing.\0A\00", align 1, !dbg !526
@.str.93 = private unnamed_addr constant [95 x i8] c"\0A%s: Compressed file ends unexpectedly;\0A\09perhaps it is corrupted?  *Possible* reason follows.\0A\00", align 1, !dbg !531
@.str.94 = private unnamed_addr constant [18 x i8] c"testf: bad modes\0A\00", align 1, !dbg !536
@.str.95 = private unnamed_addr constant [30 x i8] c"%s: Can't open input %s: %s.\0A\00", align 1, !dbg !538
@.str.96 = private unnamed_addr constant [19 x i8] c"testf: bad srcMode\00", align 1, !dbg !543
@.str.97 = private unnamed_addr constant [4 x i8] c"ok\0A\00", align 1, !dbg !545
@.str.98 = private unnamed_addr constant [21 x i8] c"test:bzReadGetUnused\00", align 1, !dbg !547
@.str.99 = private unnamed_addr constant [9 x i8] c"%s: %s: \00", align 1, !dbg !549
@.str.100 = private unnamed_addr constant [36 x i8] c"data integrity (CRC) error in data\0A\00", align 1, !dbg !551
@.str.101 = private unnamed_addr constant [24 x i8] c"file ends unexpectedly\0A\00", align 1, !dbg !553
@.str.102 = private unnamed_addr constant [46 x i8] c"bad magic number (file not created by bzip2)\0A\00", align 1, !dbg !555
@.str.103 = private unnamed_addr constant [36 x i8] c"trailing garbage after EOF ignored\0A\00", align 1, !dbg !560
@.str.104 = private unnamed_addr constant [22 x i8] c"test:unexpected error\00", align 1, !dbg !562

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main1(i32 noundef %0, ptr noundef %1) #0 !dbg !572 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i8, align 1
  %11 = alloca ptr, align 8
  store i32 %0, ptr %3, align 4
    #dbg_declare(ptr %3, !578, !DIExpression(), !579)
  store ptr %1, ptr %4, align 8
    #dbg_declare(ptr %4, !580, !DIExpression(), !581)
    #dbg_declare(ptr %5, !582, !DIExpression(), !583)
    #dbg_declare(ptr %6, !584, !DIExpression(), !585)
    #dbg_declare(ptr %7, !586, !DIExpression(), !587)
    #dbg_declare(ptr %8, !588, !DIExpression(), !589)
    #dbg_declare(ptr %9, !590, !DIExpression(), !591)
    #dbg_declare(ptr %10, !592, !DIExpression(), !593)
  store ptr null, ptr @outputHandleJustInCase, align 8, !dbg !594
  store i8 0, ptr @smallMode, align 1, !dbg !595
  store i8 0, ptr @keepInputFiles, align 1, !dbg !596
  store i8 0, ptr @forceOverwrite, align 1, !dbg !597
  store i8 1, ptr @noisy, align 1, !dbg !598
  store i32 0, ptr @verbosity, align 4, !dbg !599
  store i32 9, ptr @blockSize100k, align 4, !dbg !600
  store i8 0, ptr @testFailsExist, align 1, !dbg !601
  store i8 0, ptr @unzFailsExist, align 1, !dbg !602
  store i32 0, ptr @numFileNames, align 4, !dbg !603
  store i32 0, ptr @numFilesProcessed, align 4, !dbg !604
  store i32 30, ptr @workFactor, align 4, !dbg !605
  store i8 0, ptr @deleteOutputOnInterrupt, align 1, !dbg !606
  store i32 0, ptr @exitValue, align 4, !dbg !607
  store i32 0, ptr %6, align 4, !dbg !608
  store i32 0, ptr %5, align 4, !dbg !609
  %12 = call ptr @signal(i32 noundef 11, ptr noundef @mySIGSEGVorSIGBUScatcher) #10, !dbg !610
  %13 = call ptr @signal(i32 noundef 7, ptr noundef @mySIGSEGVorSIGBUScatcher) #10, !dbg !611
  call void @copyFileName(ptr noundef @inName, ptr noundef @.str.6), !dbg !612
  call void @copyFileName(ptr noundef @outName, ptr noundef @.str.6), !dbg !613
  %14 = load ptr, ptr %4, align 8, !dbg !614
  %15 = getelementptr inbounds ptr, ptr %14, i64 0, !dbg !614
  %16 = load ptr, ptr %15, align 8, !dbg !614
  call void @copyFileName(ptr noundef @progNameReally, ptr noundef %16), !dbg !615
  store ptr @progNameReally, ptr @progName, align 8, !dbg !616
  store ptr @progNameReally, ptr %7, align 8, !dbg !617
  br label %17, !dbg !619

17:                                               ; preds = %31, %2
  %18 = load ptr, ptr %7, align 8, !dbg !620
  %19 = load i8, ptr %18, align 1, !dbg !622
  %20 = sext i8 %19 to i32, !dbg !622
  %21 = icmp ne i32 %20, 0, !dbg !623
  br i1 %21, label %22, label %34, !dbg !624

22:                                               ; preds = %17
  %23 = load ptr, ptr %7, align 8, !dbg !625
  %24 = load i8, ptr %23, align 1, !dbg !627
  %25 = sext i8 %24 to i32, !dbg !627
  %26 = icmp eq i32 %25, 47, !dbg !628
  br i1 %26, label %27, label %30, !dbg !628

27:                                               ; preds = %22
  %28 = load ptr, ptr %7, align 8, !dbg !629
  %29 = getelementptr inbounds i8, ptr %28, i64 1, !dbg !630
  store ptr %29, ptr @progName, align 8, !dbg !631
  br label %30, !dbg !632

30:                                               ; preds = %27, %22
  br label %31, !dbg !633

31:                                               ; preds = %30
  %32 = load ptr, ptr %7, align 8, !dbg !634
  %33 = getelementptr inbounds nuw i8, ptr %32, i32 1, !dbg !634
  store ptr %33, ptr %7, align 8, !dbg !634
  br label %17, !dbg !635, !llvm.loop !636

34:                                               ; preds = %17
  store ptr null, ptr %8, align 8, !dbg !639
  call void @addFlagsFromEnvVar(ptr noundef %8, ptr noundef @.str.7), !dbg !640
  call void @addFlagsFromEnvVar(ptr noundef %8, ptr noundef @.str.8), !dbg !641
  store i32 1, ptr %5, align 4, !dbg !642
  br label %35, !dbg !644

35:                                               ; preds = %48, %34
  %36 = load i32, ptr %5, align 4, !dbg !645
  %37 = load i32, ptr %3, align 4, !dbg !647
  %38 = sub nsw i32 %37, 1, !dbg !648
  %39 = icmp sle i32 %36, %38, !dbg !649
  br i1 %39, label %40, label %51, !dbg !650

40:                                               ; preds = %35
  %41 = load ptr, ptr %8, align 8, !dbg !651
  %42 = load ptr, ptr %4, align 8, !dbg !651
  %43 = load i32, ptr %5, align 4, !dbg !651
  %44 = sext i32 %43 to i64, !dbg !651
  %45 = getelementptr inbounds ptr, ptr %42, i64 %44, !dbg !651
  %46 = load ptr, ptr %45, align 8, !dbg !651
  %47 = call ptr @snocString(ptr noundef %41, ptr noundef %46), !dbg !651
  store ptr %47, ptr %8, align 8, !dbg !651
  br label %48, !dbg !651

48:                                               ; preds = %40
  %49 = load i32, ptr %5, align 4, !dbg !652
  %50 = add nsw i32 %49, 1, !dbg !652
  store i32 %50, ptr %5, align 4, !dbg !652
  br label %35, !dbg !653, !llvm.loop !654

51:                                               ; preds = %35
  store i32 7, ptr @longestFileName, align 4, !dbg !656
  store i32 0, ptr @numFileNames, align 4, !dbg !657
  store i8 1, ptr %10, align 1, !dbg !658
  %52 = load ptr, ptr %8, align 8, !dbg !659
  store ptr %52, ptr %9, align 8, !dbg !661
  br label %53, !dbg !662

53:                                               ; preds = %93, %51
  %54 = load ptr, ptr %9, align 8, !dbg !663
  %55 = icmp ne ptr %54, null, !dbg !665
  br i1 %55, label %56, label %97, !dbg !666

56:                                               ; preds = %53
  %57 = load ptr, ptr %9, align 8, !dbg !667
  %58 = getelementptr inbounds nuw %struct.zzzz, ptr %57, i32 0, i32 0, !dbg !667
  %59 = load ptr, ptr %58, align 8, !dbg !667
  %60 = call i32 @strcmp(ptr noundef %59, ptr noundef @.str.9) #11, !dbg !667
  %61 = icmp eq i32 %60, 0, !dbg !667
  br i1 %61, label %62, label %63, !dbg !667

62:                                               ; preds = %56
  store i8 0, ptr %10, align 1, !dbg !670
  br label %93, !dbg !672

63:                                               ; preds = %56
  %64 = load ptr, ptr %9, align 8, !dbg !673
  %65 = getelementptr inbounds nuw %struct.zzzz, ptr %64, i32 0, i32 0, !dbg !675
  %66 = load ptr, ptr %65, align 8, !dbg !675
  %67 = getelementptr inbounds i8, ptr %66, i64 0, !dbg !673
  %68 = load i8, ptr %67, align 1, !dbg !673
  %69 = sext i8 %68 to i32, !dbg !673
  %70 = icmp eq i32 %69, 45, !dbg !676
  br i1 %70, label %71, label %76, !dbg !677

71:                                               ; preds = %63
  %72 = load i8, ptr %10, align 1, !dbg !678
  %73 = zext i8 %72 to i32, !dbg !678
  %74 = icmp ne i32 %73, 0, !dbg !678
  br i1 %74, label %75, label %76, !dbg !677

75:                                               ; preds = %71
  br label %93, !dbg !679

76:                                               ; preds = %71, %63
  %77 = load i32, ptr @numFileNames, align 4, !dbg !680
  %78 = add nsw i32 %77, 1, !dbg !680
  store i32 %78, ptr @numFileNames, align 4, !dbg !680
  %79 = load i32, ptr @longestFileName, align 4, !dbg !681
  %80 = load ptr, ptr %9, align 8, !dbg !683
  %81 = getelementptr inbounds nuw %struct.zzzz, ptr %80, i32 0, i32 0, !dbg !684
  %82 = load ptr, ptr %81, align 8, !dbg !684
  %83 = call i64 @strlen(ptr noundef %82) #11, !dbg !685
  %84 = trunc i64 %83 to i32, !dbg !686
  %85 = icmp slt i32 %79, %84, !dbg !687
  br i1 %85, label %86, label %92, !dbg !687

86:                                               ; preds = %76
  %87 = load ptr, ptr %9, align 8, !dbg !688
  %88 = getelementptr inbounds nuw %struct.zzzz, ptr %87, i32 0, i32 0, !dbg !689
  %89 = load ptr, ptr %88, align 8, !dbg !689
  %90 = call i64 @strlen(ptr noundef %89) #11, !dbg !690
  %91 = trunc i64 %90 to i32, !dbg !691
  store i32 %91, ptr @longestFileName, align 4, !dbg !692
  br label %92, !dbg !693

92:                                               ; preds = %86, %76
  br label %93, !dbg !694

93:                                               ; preds = %92, %75, %62
  %94 = load ptr, ptr %9, align 8, !dbg !695
  %95 = getelementptr inbounds nuw %struct.zzzz, ptr %94, i32 0, i32 1, !dbg !696
  %96 = load ptr, ptr %95, align 8, !dbg !696
  store ptr %96, ptr %9, align 8, !dbg !697
  br label %53, !dbg !698, !llvm.loop !699

97:                                               ; preds = %53
  %98 = load i32, ptr @numFileNames, align 4, !dbg !701
  %99 = icmp eq i32 %98, 0, !dbg !703
  br i1 %99, label %100, label %101, !dbg !703

100:                                              ; preds = %97
  store i32 1, ptr @srcMode, align 4, !dbg !704
  br label %102, !dbg !705

101:                                              ; preds = %97
  store i32 3, ptr @srcMode, align 4, !dbg !706
  br label %102

102:                                              ; preds = %101, %100
  store i32 1, ptr @opMode, align 4, !dbg !707
  %103 = load ptr, ptr @progName, align 8, !dbg !708
  %104 = call ptr @strstr(ptr noundef %103, ptr noundef @.str.10) #11, !dbg !710
  %105 = icmp ne ptr %104, null, !dbg !711
  br i1 %105, label %110, label %106, !dbg !712

106:                                              ; preds = %102
  %107 = load ptr, ptr @progName, align 8, !dbg !713
  %108 = call ptr @strstr(ptr noundef %107, ptr noundef @.str.11) #11, !dbg !714
  %109 = icmp ne ptr %108, null, !dbg !715
  br i1 %109, label %110, label %111, !dbg !712

110:                                              ; preds = %106, %102
  store i32 2, ptr @opMode, align 4, !dbg !716
  br label %111, !dbg !717

111:                                              ; preds = %110, %106
  %112 = load ptr, ptr @progName, align 8, !dbg !718
  %113 = call ptr @strstr(ptr noundef %112, ptr noundef @.str.12) #11, !dbg !720
  %114 = icmp ne ptr %113, null, !dbg !721
  br i1 %114, label %127, label %115, !dbg !722

115:                                              ; preds = %111
  %116 = load ptr, ptr @progName, align 8, !dbg !723
  %117 = call ptr @strstr(ptr noundef %116, ptr noundef @.str.13) #11, !dbg !724
  %118 = icmp ne ptr %117, null, !dbg !725
  br i1 %118, label %127, label %119, !dbg !726

119:                                              ; preds = %115
  %120 = load ptr, ptr @progName, align 8, !dbg !727
  %121 = call ptr @strstr(ptr noundef %120, ptr noundef @.str.14) #11, !dbg !728
  %122 = icmp ne ptr %121, null, !dbg !729
  br i1 %122, label %127, label %123, !dbg !730

123:                                              ; preds = %119
  %124 = load ptr, ptr @progName, align 8, !dbg !731
  %125 = call ptr @strstr(ptr noundef %124, ptr noundef @.str.15) #11, !dbg !732
  %126 = icmp ne ptr %125, null, !dbg !733
  br i1 %126, label %127, label %132, !dbg !730

127:                                              ; preds = %123, %119, %115, %111
  store i32 2, ptr @opMode, align 4, !dbg !734
  %128 = load i32, ptr @numFileNames, align 4, !dbg !736
  %129 = icmp eq i32 %128, 0, !dbg !737
  %130 = zext i1 %129 to i64, !dbg !738
  %131 = select i1 %129, i32 1, i32 2, !dbg !738
  store i32 %131, ptr @srcMode, align 4, !dbg !739
  br label %132, !dbg !740

132:                                              ; preds = %127, %123
  %133 = load ptr, ptr %8, align 8, !dbg !741
  store ptr %133, ptr %9, align 8, !dbg !743
  br label %134, !dbg !744

134:                                              ; preds = %217, %132
  %135 = load ptr, ptr %9, align 8, !dbg !745
  %136 = icmp ne ptr %135, null, !dbg !747
  br i1 %136, label %137, label %221, !dbg !748

137:                                              ; preds = %134
  %138 = load ptr, ptr %9, align 8, !dbg !749
  %139 = getelementptr inbounds nuw %struct.zzzz, ptr %138, i32 0, i32 0, !dbg !749
  %140 = load ptr, ptr %139, align 8, !dbg !749
  %141 = call i32 @strcmp(ptr noundef %140, ptr noundef @.str.9) #11, !dbg !749
  %142 = icmp eq i32 %141, 0, !dbg !749
  br i1 %142, label %143, label %144, !dbg !749

143:                                              ; preds = %137
  br label %221, !dbg !752

144:                                              ; preds = %137
  %145 = load ptr, ptr %9, align 8, !dbg !753
  %146 = getelementptr inbounds nuw %struct.zzzz, ptr %145, i32 0, i32 0, !dbg !755
  %147 = load ptr, ptr %146, align 8, !dbg !755
  %148 = getelementptr inbounds i8, ptr %147, i64 0, !dbg !753
  %149 = load i8, ptr %148, align 1, !dbg !753
  %150 = sext i8 %149 to i32, !dbg !753
  %151 = icmp eq i32 %150, 45, !dbg !756
  br i1 %151, label %152, label %216, !dbg !757

152:                                              ; preds = %144
  %153 = load ptr, ptr %9, align 8, !dbg !758
  %154 = getelementptr inbounds nuw %struct.zzzz, ptr %153, i32 0, i32 0, !dbg !759
  %155 = load ptr, ptr %154, align 8, !dbg !759
  %156 = getelementptr inbounds i8, ptr %155, i64 1, !dbg !758
  %157 = load i8, ptr %156, align 1, !dbg !758
  %158 = sext i8 %157 to i32, !dbg !758
  %159 = icmp ne i32 %158, 45, !dbg !760
  br i1 %159, label %160, label %216, !dbg !757

160:                                              ; preds = %152
  store i32 1, ptr %6, align 4, !dbg !761
  br label %161, !dbg !764

161:                                              ; preds = %212, %160
  %162 = load ptr, ptr %9, align 8, !dbg !765
  %163 = getelementptr inbounds nuw %struct.zzzz, ptr %162, i32 0, i32 0, !dbg !767
  %164 = load ptr, ptr %163, align 8, !dbg !767
  %165 = load i32, ptr %6, align 4, !dbg !768
  %166 = sext i32 %165 to i64, !dbg !765
  %167 = getelementptr inbounds i8, ptr %164, i64 %166, !dbg !765
  %168 = load i8, ptr %167, align 1, !dbg !765
  %169 = sext i8 %168 to i32, !dbg !765
  %170 = icmp ne i32 %169, 0, !dbg !769
  br i1 %170, label %171, label %215, !dbg !770

171:                                              ; preds = %161
  %172 = load ptr, ptr %9, align 8, !dbg !771
  %173 = getelementptr inbounds nuw %struct.zzzz, ptr %172, i32 0, i32 0, !dbg !773
  %174 = load ptr, ptr %173, align 8, !dbg !773
  %175 = load i32, ptr %6, align 4, !dbg !774
  %176 = sext i32 %175 to i64, !dbg !771
  %177 = getelementptr inbounds i8, ptr %174, i64 %176, !dbg !771
  %178 = load i8, ptr %177, align 1, !dbg !771
  %179 = sext i8 %178 to i32, !dbg !771
  switch i32 %179, label %203 [
    i32 99, label %180
    i32 100, label %181
    i32 122, label %182
    i32 102, label %183
    i32 116, label %184
    i32 107, label %185
    i32 115, label %186
    i32 113, label %187
    i32 49, label %188
    i32 50, label %189
    i32 51, label %190
    i32 52, label %191
    i32 53, label %192
    i32 54, label %193
    i32 55, label %194
    i32 56, label %195
    i32 57, label %196
    i32 86, label %197
    i32 76, label %197
    i32 118, label %198
    i32 104, label %201
  ], !dbg !775

180:                                              ; preds = %171
  store i32 2, ptr @srcMode, align 4, !dbg !776
  br label %211, !dbg !778

181:                                              ; preds = %171
  store i32 2, ptr @opMode, align 4, !dbg !779
  br label %211, !dbg !780

182:                                              ; preds = %171
  store i32 1, ptr @opMode, align 4, !dbg !781
  br label %211, !dbg !782

183:                                              ; preds = %171
  store i8 1, ptr @forceOverwrite, align 1, !dbg !783
  br label %211, !dbg !784

184:                                              ; preds = %171
  store i32 3, ptr @opMode, align 4, !dbg !785
  br label %211, !dbg !786

185:                                              ; preds = %171
  store i8 1, ptr @keepInputFiles, align 1, !dbg !787
  br label %211, !dbg !788

186:                                              ; preds = %171
  store i8 1, ptr @smallMode, align 1, !dbg !789
  br label %211, !dbg !790

187:                                              ; preds = %171
  store i8 0, ptr @noisy, align 1, !dbg !791
  br label %211, !dbg !792

188:                                              ; preds = %171
  store i32 1, ptr @blockSize100k, align 4, !dbg !793
  br label %211, !dbg !794

189:                                              ; preds = %171
  store i32 2, ptr @blockSize100k, align 4, !dbg !795
  br label %211, !dbg !796

190:                                              ; preds = %171
  store i32 3, ptr @blockSize100k, align 4, !dbg !797
  br label %211, !dbg !798

191:                                              ; preds = %171
  store i32 4, ptr @blockSize100k, align 4, !dbg !799
  br label %211, !dbg !800

192:                                              ; preds = %171
  store i32 5, ptr @blockSize100k, align 4, !dbg !801
  br label %211, !dbg !802

193:                                              ; preds = %171
  store i32 6, ptr @blockSize100k, align 4, !dbg !803
  br label %211, !dbg !804

194:                                              ; preds = %171
  store i32 7, ptr @blockSize100k, align 4, !dbg !805
  br label %211, !dbg !806

195:                                              ; preds = %171
  store i32 8, ptr @blockSize100k, align 4, !dbg !807
  br label %211, !dbg !808

196:                                              ; preds = %171
  store i32 9, ptr @blockSize100k, align 4, !dbg !809
  br label %211, !dbg !810

197:                                              ; preds = %171, %171
  call void @license(), !dbg !811
  br label %211, !dbg !812

198:                                              ; preds = %171
  %199 = load i32, ptr @verbosity, align 4, !dbg !813
  %200 = add nsw i32 %199, 1, !dbg !813
  store i32 %200, ptr @verbosity, align 4, !dbg !813
  br label %211, !dbg !814

201:                                              ; preds = %171
  %202 = load ptr, ptr @progName, align 8, !dbg !815
  call void @usage(ptr noundef %202), !dbg !816
  call void @exit(i32 noundef 0) #12, !dbg !817
  unreachable, !dbg !817

203:                                              ; preds = %171
  %204 = load ptr, ptr @stderr, align 8, !dbg !818
  %205 = load ptr, ptr @progName, align 8, !dbg !819
  %206 = load ptr, ptr %9, align 8, !dbg !820
  %207 = getelementptr inbounds nuw %struct.zzzz, ptr %206, i32 0, i32 0, !dbg !821
  %208 = load ptr, ptr %207, align 8, !dbg !821
  %209 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %204, ptr noundef @.str.16, ptr noundef %205, ptr noundef %208) #10, !dbg !822
  %210 = load ptr, ptr @progName, align 8, !dbg !823
  call void @usage(ptr noundef %210), !dbg !824
  call void @exit(i32 noundef 1) #12, !dbg !825
  unreachable, !dbg !825

211:                                              ; preds = %198, %197, %196, %195, %194, %193, %192, %191, %190, %189, %188, %187, %186, %185, %184, %183, %182, %181, %180
  br label %212, !dbg !826

212:                                              ; preds = %211
  %213 = load i32, ptr %6, align 4, !dbg !827
  %214 = add nsw i32 %213, 1, !dbg !827
  store i32 %214, ptr %6, align 4, !dbg !827
  br label %161, !dbg !828, !llvm.loop !829

215:                                              ; preds = %161
  br label %216, !dbg !831

216:                                              ; preds = %215, %152, %144
  br label %217, !dbg !832

217:                                              ; preds = %216
  %218 = load ptr, ptr %9, align 8, !dbg !833
  %219 = getelementptr inbounds nuw %struct.zzzz, ptr %218, i32 0, i32 1, !dbg !834
  %220 = load ptr, ptr %219, align 8, !dbg !834
  store ptr %220, ptr %9, align 8, !dbg !835
  br label %134, !dbg !836, !llvm.loop !837

221:                                              ; preds = %143, %134
  %222 = load ptr, ptr %8, align 8, !dbg !839
  store ptr %222, ptr %9, align 8, !dbg !841
  br label %223, !dbg !842

223:                                              ; preds = %393, %221
  %224 = load ptr, ptr %9, align 8, !dbg !843
  %225 = icmp ne ptr %224, null, !dbg !845
  br i1 %225, label %226, label %397, !dbg !846

226:                                              ; preds = %223
  %227 = load ptr, ptr %9, align 8, !dbg !847
  %228 = getelementptr inbounds nuw %struct.zzzz, ptr %227, i32 0, i32 0, !dbg !847
  %229 = load ptr, ptr %228, align 8, !dbg !847
  %230 = call i32 @strcmp(ptr noundef %229, ptr noundef @.str.9) #11, !dbg !847
  %231 = icmp eq i32 %230, 0, !dbg !847
  br i1 %231, label %232, label %233, !dbg !847

232:                                              ; preds = %226
  br label %397, !dbg !850

233:                                              ; preds = %226
  %234 = load ptr, ptr %9, align 8, !dbg !851
  %235 = getelementptr inbounds nuw %struct.zzzz, ptr %234, i32 0, i32 0, !dbg !851
  %236 = load ptr, ptr %235, align 8, !dbg !851
  %237 = call i32 @strcmp(ptr noundef %236, ptr noundef @.str.17) #11, !dbg !851
  %238 = icmp eq i32 %237, 0, !dbg !851
  br i1 %238, label %239, label %240, !dbg !851

239:                                              ; preds = %233
  store i32 2, ptr @srcMode, align 4, !dbg !853
  br label %392, !dbg !854

240:                                              ; preds = %233
  %241 = load ptr, ptr %9, align 8, !dbg !855
  %242 = getelementptr inbounds nuw %struct.zzzz, ptr %241, i32 0, i32 0, !dbg !855
  %243 = load ptr, ptr %242, align 8, !dbg !855
  %244 = call i32 @strcmp(ptr noundef %243, ptr noundef @.str.18) #11, !dbg !855
  %245 = icmp eq i32 %244, 0, !dbg !855
  br i1 %245, label %246, label %247, !dbg !855

246:                                              ; preds = %240
  store i32 2, ptr @opMode, align 4, !dbg !857
  br label %391, !dbg !858

247:                                              ; preds = %240
  %248 = load ptr, ptr %9, align 8, !dbg !859
  %249 = getelementptr inbounds nuw %struct.zzzz, ptr %248, i32 0, i32 0, !dbg !859
  %250 = load ptr, ptr %249, align 8, !dbg !859
  %251 = call i32 @strcmp(ptr noundef %250, ptr noundef @.str.19) #11, !dbg !859
  %252 = icmp eq i32 %251, 0, !dbg !859
  br i1 %252, label %253, label %254, !dbg !859

253:                                              ; preds = %247
  store i32 1, ptr @opMode, align 4, !dbg !861
  br label %390, !dbg !862

254:                                              ; preds = %247
  %255 = load ptr, ptr %9, align 8, !dbg !863
  %256 = getelementptr inbounds nuw %struct.zzzz, ptr %255, i32 0, i32 0, !dbg !863
  %257 = load ptr, ptr %256, align 8, !dbg !863
  %258 = call i32 @strcmp(ptr noundef %257, ptr noundef @.str.20) #11, !dbg !863
  %259 = icmp eq i32 %258, 0, !dbg !863
  br i1 %259, label %260, label %261, !dbg !863

260:                                              ; preds = %254
  store i8 1, ptr @forceOverwrite, align 1, !dbg !865
  br label %389, !dbg !866

261:                                              ; preds = %254
  %262 = load ptr, ptr %9, align 8, !dbg !867
  %263 = getelementptr inbounds nuw %struct.zzzz, ptr %262, i32 0, i32 0, !dbg !867
  %264 = load ptr, ptr %263, align 8, !dbg !867
  %265 = call i32 @strcmp(ptr noundef %264, ptr noundef @.str.21) #11, !dbg !867
  %266 = icmp eq i32 %265, 0, !dbg !867
  br i1 %266, label %267, label %268, !dbg !867

267:                                              ; preds = %261
  store i32 3, ptr @opMode, align 4, !dbg !869
  br label %388, !dbg !870

268:                                              ; preds = %261
  %269 = load ptr, ptr %9, align 8, !dbg !871
  %270 = getelementptr inbounds nuw %struct.zzzz, ptr %269, i32 0, i32 0, !dbg !871
  %271 = load ptr, ptr %270, align 8, !dbg !871
  %272 = call i32 @strcmp(ptr noundef %271, ptr noundef @.str.22) #11, !dbg !871
  %273 = icmp eq i32 %272, 0, !dbg !871
  br i1 %273, label %274, label %275, !dbg !871

274:                                              ; preds = %268
  store i8 1, ptr @keepInputFiles, align 1, !dbg !873
  br label %387, !dbg !874

275:                                              ; preds = %268
  %276 = load ptr, ptr %9, align 8, !dbg !875
  %277 = getelementptr inbounds nuw %struct.zzzz, ptr %276, i32 0, i32 0, !dbg !875
  %278 = load ptr, ptr %277, align 8, !dbg !875
  %279 = call i32 @strcmp(ptr noundef %278, ptr noundef @.str.23) #11, !dbg !875
  %280 = icmp eq i32 %279, 0, !dbg !875
  br i1 %280, label %281, label %282, !dbg !875

281:                                              ; preds = %275
  store i8 1, ptr @smallMode, align 1, !dbg !877
  br label %386, !dbg !878

282:                                              ; preds = %275
  %283 = load ptr, ptr %9, align 8, !dbg !879
  %284 = getelementptr inbounds nuw %struct.zzzz, ptr %283, i32 0, i32 0, !dbg !879
  %285 = load ptr, ptr %284, align 8, !dbg !879
  %286 = call i32 @strcmp(ptr noundef %285, ptr noundef @.str.24) #11, !dbg !879
  %287 = icmp eq i32 %286, 0, !dbg !879
  br i1 %287, label %288, label %289, !dbg !879

288:                                              ; preds = %282
  store i8 0, ptr @noisy, align 1, !dbg !881
  br label %385, !dbg !882

289:                                              ; preds = %282
  %290 = load ptr, ptr %9, align 8, !dbg !883
  %291 = getelementptr inbounds nuw %struct.zzzz, ptr %290, i32 0, i32 0, !dbg !883
  %292 = load ptr, ptr %291, align 8, !dbg !883
  %293 = call i32 @strcmp(ptr noundef %292, ptr noundef @.str.25) #11, !dbg !883
  %294 = icmp eq i32 %293, 0, !dbg !883
  br i1 %294, label %295, label %296, !dbg !883

295:                                              ; preds = %289
  call void @license(), !dbg !885
  br label %384, !dbg !885

296:                                              ; preds = %289
  %297 = load ptr, ptr %9, align 8, !dbg !886
  %298 = getelementptr inbounds nuw %struct.zzzz, ptr %297, i32 0, i32 0, !dbg !886
  %299 = load ptr, ptr %298, align 8, !dbg !886
  %300 = call i32 @strcmp(ptr noundef %299, ptr noundef @.str.26) #11, !dbg !886
  %301 = icmp eq i32 %300, 0, !dbg !886
  br i1 %301, label %302, label %303, !dbg !886

302:                                              ; preds = %296
  call void @license(), !dbg !888
  br label %383, !dbg !888

303:                                              ; preds = %296
  %304 = load ptr, ptr %9, align 8, !dbg !889
  %305 = getelementptr inbounds nuw %struct.zzzz, ptr %304, i32 0, i32 0, !dbg !889
  %306 = load ptr, ptr %305, align 8, !dbg !889
  %307 = call i32 @strcmp(ptr noundef %306, ptr noundef @.str.27) #11, !dbg !889
  %308 = icmp eq i32 %307, 0, !dbg !889
  br i1 %308, label %309, label %310, !dbg !889

309:                                              ; preds = %303
  store i32 1, ptr @workFactor, align 4, !dbg !891
  br label %382, !dbg !892

310:                                              ; preds = %303
  %311 = load ptr, ptr %9, align 8, !dbg !893
  %312 = getelementptr inbounds nuw %struct.zzzz, ptr %311, i32 0, i32 0, !dbg !893
  %313 = load ptr, ptr %312, align 8, !dbg !893
  %314 = call i32 @strcmp(ptr noundef %313, ptr noundef @.str.28) #11, !dbg !893
  %315 = icmp eq i32 %314, 0, !dbg !893
  br i1 %315, label %316, label %320, !dbg !893

316:                                              ; preds = %310
  %317 = load ptr, ptr %9, align 8, !dbg !895
  %318 = getelementptr inbounds nuw %struct.zzzz, ptr %317, i32 0, i32 0, !dbg !896
  %319 = load ptr, ptr %318, align 8, !dbg !896
  call void @redundant(ptr noundef %319), !dbg !897
  br label %381, !dbg !897

320:                                              ; preds = %310
  %321 = load ptr, ptr %9, align 8, !dbg !898
  %322 = getelementptr inbounds nuw %struct.zzzz, ptr %321, i32 0, i32 0, !dbg !898
  %323 = load ptr, ptr %322, align 8, !dbg !898
  %324 = call i32 @strcmp(ptr noundef %323, ptr noundef @.str.29) #11, !dbg !898
  %325 = icmp eq i32 %324, 0, !dbg !898
  br i1 %325, label %326, label %330, !dbg !898

326:                                              ; preds = %320
  %327 = load ptr, ptr %9, align 8, !dbg !900
  %328 = getelementptr inbounds nuw %struct.zzzz, ptr %327, i32 0, i32 0, !dbg !901
  %329 = load ptr, ptr %328, align 8, !dbg !901
  call void @redundant(ptr noundef %329), !dbg !902
  br label %380, !dbg !902

330:                                              ; preds = %320
  %331 = load ptr, ptr %9, align 8, !dbg !903
  %332 = getelementptr inbounds nuw %struct.zzzz, ptr %331, i32 0, i32 0, !dbg !903
  %333 = load ptr, ptr %332, align 8, !dbg !903
  %334 = call i32 @strcmp(ptr noundef %333, ptr noundef @.str.30) #11, !dbg !903
  %335 = icmp eq i32 %334, 0, !dbg !903
  br i1 %335, label %336, label %337, !dbg !903

336:                                              ; preds = %330
  store i32 1, ptr @blockSize100k, align 4, !dbg !905
  br label %379, !dbg !906

337:                                              ; preds = %330
  %338 = load ptr, ptr %9, align 8, !dbg !907
  %339 = getelementptr inbounds nuw %struct.zzzz, ptr %338, i32 0, i32 0, !dbg !907
  %340 = load ptr, ptr %339, align 8, !dbg !907
  %341 = call i32 @strcmp(ptr noundef %340, ptr noundef @.str.31) #11, !dbg !907
  %342 = icmp eq i32 %341, 0, !dbg !907
  br i1 %342, label %343, label %344, !dbg !907

343:                                              ; preds = %337
  store i32 9, ptr @blockSize100k, align 4, !dbg !909
  br label %378, !dbg !910

344:                                              ; preds = %337
  %345 = load ptr, ptr %9, align 8, !dbg !911
  %346 = getelementptr inbounds nuw %struct.zzzz, ptr %345, i32 0, i32 0, !dbg !911
  %347 = load ptr, ptr %346, align 8, !dbg !911
  %348 = call i32 @strcmp(ptr noundef %347, ptr noundef @.str.32) #11, !dbg !911
  %349 = icmp eq i32 %348, 0, !dbg !911
  br i1 %349, label %350, label %353, !dbg !911

350:                                              ; preds = %344
  %351 = load i32, ptr @verbosity, align 4, !dbg !913
  %352 = add nsw i32 %351, 1, !dbg !913
  store i32 %352, ptr @verbosity, align 4, !dbg !913
  br label %377, !dbg !914

353:                                              ; preds = %344
  %354 = load ptr, ptr %9, align 8, !dbg !915
  %355 = getelementptr inbounds nuw %struct.zzzz, ptr %354, i32 0, i32 0, !dbg !915
  %356 = load ptr, ptr %355, align 8, !dbg !915
  %357 = call i32 @strcmp(ptr noundef %356, ptr noundef @.str.33) #11, !dbg !915
  %358 = icmp eq i32 %357, 0, !dbg !915
  br i1 %358, label %359, label %361, !dbg !915

359:                                              ; preds = %353
  %360 = load ptr, ptr @progName, align 8, !dbg !917
  call void @usage(ptr noundef %360), !dbg !919
  call void @exit(i32 noundef 0) #12, !dbg !920
  unreachable, !dbg !920

361:                                              ; preds = %353
  %362 = load ptr, ptr %9, align 8, !dbg !921
  %363 = getelementptr inbounds nuw %struct.zzzz, ptr %362, i32 0, i32 0, !dbg !923
  %364 = load ptr, ptr %363, align 8, !dbg !923
  %365 = call i32 @strncmp(ptr noundef %364, ptr noundef @.str.9, i64 noundef 2) #11, !dbg !924
  %366 = icmp eq i32 %365, 0, !dbg !925
  br i1 %366, label %367, label %375, !dbg !925

367:                                              ; preds = %361
  %368 = load ptr, ptr @stderr, align 8, !dbg !926
  %369 = load ptr, ptr @progName, align 8, !dbg !928
  %370 = load ptr, ptr %9, align 8, !dbg !929
  %371 = getelementptr inbounds nuw %struct.zzzz, ptr %370, i32 0, i32 0, !dbg !930
  %372 = load ptr, ptr %371, align 8, !dbg !930
  %373 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %368, ptr noundef @.str.16, ptr noundef %369, ptr noundef %372) #10, !dbg !931
  %374 = load ptr, ptr @progName, align 8, !dbg !932
  call void @usage(ptr noundef %374), !dbg !933
  call void @exit(i32 noundef 1) #12, !dbg !934
  unreachable, !dbg !934

375:                                              ; preds = %361
  br label %376

376:                                              ; preds = %375
  br label %377

377:                                              ; preds = %376, %350
  br label %378

378:                                              ; preds = %377, %343
  br label %379

379:                                              ; preds = %378, %336
  br label %380

380:                                              ; preds = %379, %326
  br label %381

381:                                              ; preds = %380, %316
  br label %382

382:                                              ; preds = %381, %309
  br label %383

383:                                              ; preds = %382, %302
  br label %384

384:                                              ; preds = %383, %295
  br label %385

385:                                              ; preds = %384, %288
  br label %386

386:                                              ; preds = %385, %281
  br label %387

387:                                              ; preds = %386, %274
  br label %388

388:                                              ; preds = %387, %267
  br label %389

389:                                              ; preds = %388, %260
  br label %390

390:                                              ; preds = %389, %253
  br label %391

391:                                              ; preds = %390, %246
  br label %392

392:                                              ; preds = %391, %239
  br label %393, !dbg !935

393:                                              ; preds = %392
  %394 = load ptr, ptr %9, align 8, !dbg !936
  %395 = getelementptr inbounds nuw %struct.zzzz, ptr %394, i32 0, i32 1, !dbg !937
  %396 = load ptr, ptr %395, align 8, !dbg !937
  store ptr %396, ptr %9, align 8, !dbg !938
  br label %223, !dbg !939, !llvm.loop !940

397:                                              ; preds = %232, %223
  %398 = load i32, ptr @verbosity, align 4, !dbg !942
  %399 = icmp sgt i32 %398, 4, !dbg !944
  br i1 %399, label %400, label %401, !dbg !944

400:                                              ; preds = %397
  store i32 4, ptr @verbosity, align 4, !dbg !945
  br label %401, !dbg !946

401:                                              ; preds = %400, %397
  %402 = load i32, ptr @opMode, align 4, !dbg !947
  %403 = icmp eq i32 %402, 1, !dbg !949
  br i1 %403, label %404, label %412, !dbg !950

404:                                              ; preds = %401
  %405 = load i8, ptr @smallMode, align 1, !dbg !951
  %406 = zext i8 %405 to i32, !dbg !951
  %407 = icmp ne i32 %406, 0, !dbg !951
  br i1 %407, label %408, label %412, !dbg !952

408:                                              ; preds = %404
  %409 = load i32, ptr @blockSize100k, align 4, !dbg !953
  %410 = icmp sgt i32 %409, 2, !dbg !954
  br i1 %410, label %411, label %412, !dbg !952

411:                                              ; preds = %408
  store i32 2, ptr @blockSize100k, align 4, !dbg !955
  br label %412, !dbg !956

412:                                              ; preds = %411, %408, %404, %401
  %413 = load i32, ptr @opMode, align 4, !dbg !957
  %414 = icmp eq i32 %413, 3, !dbg !959
  br i1 %414, label %415, label %422, !dbg !960

415:                                              ; preds = %412
  %416 = load i32, ptr @srcMode, align 4, !dbg !961
  %417 = icmp eq i32 %416, 2, !dbg !962
  br i1 %417, label %418, label %422, !dbg !960

418:                                              ; preds = %415
  %419 = load ptr, ptr @stderr, align 8, !dbg !963
  %420 = load ptr, ptr @progName, align 8, !dbg !965
  %421 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %419, ptr noundef @.str.34, ptr noundef %420) #10, !dbg !966
  call void @exit(i32 noundef 1) #12, !dbg !967
  unreachable, !dbg !967

422:                                              ; preds = %415, %412
  %423 = load i32, ptr @srcMode, align 4, !dbg !968
  %424 = icmp eq i32 %423, 2, !dbg !970
  br i1 %424, label %425, label %429, !dbg !971

425:                                              ; preds = %422
  %426 = load i32, ptr @numFileNames, align 4, !dbg !972
  %427 = icmp eq i32 %426, 0, !dbg !973
  br i1 %427, label %428, label %429, !dbg !971

428:                                              ; preds = %425
  store i32 1, ptr @srcMode, align 4, !dbg !974
  br label %429, !dbg !975

429:                                              ; preds = %428, %425, %422
  %430 = load i32, ptr @opMode, align 4, !dbg !976
  %431 = icmp ne i32 %430, 1, !dbg !978
  br i1 %431, label %432, label %433, !dbg !978

432:                                              ; preds = %429
  store i32 0, ptr @blockSize100k, align 4, !dbg !979
  br label %433, !dbg !980

433:                                              ; preds = %432, %429
  %434 = load i32, ptr @srcMode, align 4, !dbg !981
  %435 = icmp eq i32 %434, 3, !dbg !983
  br i1 %435, label %436, label %440, !dbg !983

436:                                              ; preds = %433
  %437 = call ptr @signal(i32 noundef 2, ptr noundef @mySignalCatcher) #10, !dbg !984
  %438 = call ptr @signal(i32 noundef 15, ptr noundef @mySignalCatcher) #10, !dbg !986
  %439 = call ptr @signal(i32 noundef 1, ptr noundef @mySignalCatcher) #10, !dbg !987
  br label %440, !dbg !988

440:                                              ; preds = %436, %433
  %441 = load i32, ptr @opMode, align 4, !dbg !989
  %442 = icmp eq i32 %441, 1, !dbg !991
  br i1 %442, label %443, label %484, !dbg !991

443:                                              ; preds = %440
  %444 = load i32, ptr @srcMode, align 4, !dbg !992
  %445 = icmp eq i32 %444, 1, !dbg !995
  br i1 %445, label %446, label %447, !dbg !995

446:                                              ; preds = %443
  call void @compress(ptr noundef null), !dbg !996
  br label %483, !dbg !998

447:                                              ; preds = %443
  store i8 1, ptr %10, align 1, !dbg !999
  %448 = load ptr, ptr %8, align 8, !dbg !1001
  store ptr %448, ptr %9, align 8, !dbg !1003
  br label %449, !dbg !1004

449:                                              ; preds = %478, %447
  %450 = load ptr, ptr %9, align 8, !dbg !1005
  %451 = icmp ne ptr %450, null, !dbg !1007
  br i1 %451, label %452, label %482, !dbg !1008

452:                                              ; preds = %449
  %453 = load ptr, ptr %9, align 8, !dbg !1009
  %454 = getelementptr inbounds nuw %struct.zzzz, ptr %453, i32 0, i32 0, !dbg !1009
  %455 = load ptr, ptr %454, align 8, !dbg !1009
  %456 = call i32 @strcmp(ptr noundef %455, ptr noundef @.str.9) #11, !dbg !1009
  %457 = icmp eq i32 %456, 0, !dbg !1009
  br i1 %457, label %458, label %459, !dbg !1009

458:                                              ; preds = %452
  store i8 0, ptr %10, align 1, !dbg !1012
  br label %478, !dbg !1014

459:                                              ; preds = %452
  %460 = load ptr, ptr %9, align 8, !dbg !1015
  %461 = getelementptr inbounds nuw %struct.zzzz, ptr %460, i32 0, i32 0, !dbg !1017
  %462 = load ptr, ptr %461, align 8, !dbg !1017
  %463 = getelementptr inbounds i8, ptr %462, i64 0, !dbg !1015
  %464 = load i8, ptr %463, align 1, !dbg !1015
  %465 = sext i8 %464 to i32, !dbg !1015
  %466 = icmp eq i32 %465, 45, !dbg !1018
  br i1 %466, label %467, label %472, !dbg !1019

467:                                              ; preds = %459
  %468 = load i8, ptr %10, align 1, !dbg !1020
  %469 = zext i8 %468 to i32, !dbg !1020
  %470 = icmp ne i32 %469, 0, !dbg !1020
  br i1 %470, label %471, label %472, !dbg !1019

471:                                              ; preds = %467
  br label %478, !dbg !1021

472:                                              ; preds = %467, %459
  %473 = load i32, ptr @numFilesProcessed, align 4, !dbg !1022
  %474 = add nsw i32 %473, 1, !dbg !1022
  store i32 %474, ptr @numFilesProcessed, align 4, !dbg !1022
  %475 = load ptr, ptr %9, align 8, !dbg !1023
  %476 = getelementptr inbounds nuw %struct.zzzz, ptr %475, i32 0, i32 0, !dbg !1024
  %477 = load ptr, ptr %476, align 8, !dbg !1024
  call void @compress(ptr noundef %477), !dbg !1025
  br label %478, !dbg !1026

478:                                              ; preds = %472, %471, %458
  %479 = load ptr, ptr %9, align 8, !dbg !1027
  %480 = getelementptr inbounds nuw %struct.zzzz, ptr %479, i32 0, i32 1, !dbg !1028
  %481 = load ptr, ptr %480, align 8, !dbg !1028
  store ptr %481, ptr %9, align 8, !dbg !1029
  br label %449, !dbg !1030, !llvm.loop !1031

482:                                              ; preds = %449
  br label %483

483:                                              ; preds = %482, %446
  br label %587, !dbg !1033

484:                                              ; preds = %440
  %485 = load i32, ptr @opMode, align 4, !dbg !1034
  %486 = icmp eq i32 %485, 2, !dbg !1036
  br i1 %486, label %487, label %533, !dbg !1036

487:                                              ; preds = %484
  store i8 0, ptr @unzFailsExist, align 1, !dbg !1037
  %488 = load i32, ptr @srcMode, align 4, !dbg !1039
  %489 = icmp eq i32 %488, 1, !dbg !1041
  br i1 %489, label %490, label %491, !dbg !1041

490:                                              ; preds = %487
  call void @uncompress(ptr noundef null), !dbg !1042
  br label %527, !dbg !1044

491:                                              ; preds = %487
  store i8 1, ptr %10, align 1, !dbg !1045
  %492 = load ptr, ptr %8, align 8, !dbg !1047
  store ptr %492, ptr %9, align 8, !dbg !1049
  br label %493, !dbg !1050

493:                                              ; preds = %522, %491
  %494 = load ptr, ptr %9, align 8, !dbg !1051
  %495 = icmp ne ptr %494, null, !dbg !1053
  br i1 %495, label %496, label %526, !dbg !1054

496:                                              ; preds = %493
  %497 = load ptr, ptr %9, align 8, !dbg !1055
  %498 = getelementptr inbounds nuw %struct.zzzz, ptr %497, i32 0, i32 0, !dbg !1055
  %499 = load ptr, ptr %498, align 8, !dbg !1055
  %500 = call i32 @strcmp(ptr noundef %499, ptr noundef @.str.9) #11, !dbg !1055
  %501 = icmp eq i32 %500, 0, !dbg !1055
  br i1 %501, label %502, label %503, !dbg !1055

502:                                              ; preds = %496
  store i8 0, ptr %10, align 1, !dbg !1058
  br label %522, !dbg !1060

503:                                              ; preds = %496
  %504 = load ptr, ptr %9, align 8, !dbg !1061
  %505 = getelementptr inbounds nuw %struct.zzzz, ptr %504, i32 0, i32 0, !dbg !1063
  %506 = load ptr, ptr %505, align 8, !dbg !1063
  %507 = getelementptr inbounds i8, ptr %506, i64 0, !dbg !1061
  %508 = load i8, ptr %507, align 1, !dbg !1061
  %509 = sext i8 %508 to i32, !dbg !1061
  %510 = icmp eq i32 %509, 45, !dbg !1064
  br i1 %510, label %511, label %516, !dbg !1065

511:                                              ; preds = %503
  %512 = load i8, ptr %10, align 1, !dbg !1066
  %513 = zext i8 %512 to i32, !dbg !1066
  %514 = icmp ne i32 %513, 0, !dbg !1066
  br i1 %514, label %515, label %516, !dbg !1065

515:                                              ; preds = %511
  br label %522, !dbg !1067

516:                                              ; preds = %511, %503
  %517 = load i32, ptr @numFilesProcessed, align 4, !dbg !1068
  %518 = add nsw i32 %517, 1, !dbg !1068
  store i32 %518, ptr @numFilesProcessed, align 4, !dbg !1068
  %519 = load ptr, ptr %9, align 8, !dbg !1069
  %520 = getelementptr inbounds nuw %struct.zzzz, ptr %519, i32 0, i32 0, !dbg !1070
  %521 = load ptr, ptr %520, align 8, !dbg !1070
  call void @uncompress(ptr noundef %521), !dbg !1071
  br label %522, !dbg !1072

522:                                              ; preds = %516, %515, %502
  %523 = load ptr, ptr %9, align 8, !dbg !1073
  %524 = getelementptr inbounds nuw %struct.zzzz, ptr %523, i32 0, i32 1, !dbg !1074
  %525 = load ptr, ptr %524, align 8, !dbg !1074
  store ptr %525, ptr %9, align 8, !dbg !1075
  br label %493, !dbg !1076, !llvm.loop !1077

526:                                              ; preds = %493
  br label %527

527:                                              ; preds = %526, %490
  %528 = load i8, ptr @unzFailsExist, align 1, !dbg !1079
  %529 = icmp ne i8 %528, 0, !dbg !1079
  br i1 %529, label %530, label %532, !dbg !1079

530:                                              ; preds = %527
  call void @setExit(i32 noundef 2), !dbg !1081
  %531 = load i32, ptr @exitValue, align 4, !dbg !1083
  call void @exit(i32 noundef %531) #12, !dbg !1084
  unreachable, !dbg !1084

532:                                              ; preds = %527
  br label %586, !dbg !1085

533:                                              ; preds = %484
  store i8 0, ptr @testFailsExist, align 1, !dbg !1086
  %534 = load i32, ptr @srcMode, align 4, !dbg !1088
  %535 = icmp eq i32 %534, 1, !dbg !1090
  br i1 %535, label %536, label %537, !dbg !1090

536:                                              ; preds = %533
  call void @testf(ptr noundef null), !dbg !1091
  br label %573, !dbg !1093

537:                                              ; preds = %533
  store i8 1, ptr %10, align 1, !dbg !1094
  %538 = load ptr, ptr %8, align 8, !dbg !1096
  store ptr %538, ptr %9, align 8, !dbg !1098
  br label %539, !dbg !1099

539:                                              ; preds = %568, %537
  %540 = load ptr, ptr %9, align 8, !dbg !1100
  %541 = icmp ne ptr %540, null, !dbg !1102
  br i1 %541, label %542, label %572, !dbg !1103

542:                                              ; preds = %539
  %543 = load ptr, ptr %9, align 8, !dbg !1104
  %544 = getelementptr inbounds nuw %struct.zzzz, ptr %543, i32 0, i32 0, !dbg !1104
  %545 = load ptr, ptr %544, align 8, !dbg !1104
  %546 = call i32 @strcmp(ptr noundef %545, ptr noundef @.str.9) #11, !dbg !1104
  %547 = icmp eq i32 %546, 0, !dbg !1104
  br i1 %547, label %548, label %549, !dbg !1104

548:                                              ; preds = %542
  store i8 0, ptr %10, align 1, !dbg !1107
  br label %568, !dbg !1109

549:                                              ; preds = %542
  %550 = load ptr, ptr %9, align 8, !dbg !1110
  %551 = getelementptr inbounds nuw %struct.zzzz, ptr %550, i32 0, i32 0, !dbg !1112
  %552 = load ptr, ptr %551, align 8, !dbg !1112
  %553 = getelementptr inbounds i8, ptr %552, i64 0, !dbg !1110
  %554 = load i8, ptr %553, align 1, !dbg !1110
  %555 = sext i8 %554 to i32, !dbg !1110
  %556 = icmp eq i32 %555, 45, !dbg !1113
  br i1 %556, label %557, label %562, !dbg !1114

557:                                              ; preds = %549
  %558 = load i8, ptr %10, align 1, !dbg !1115
  %559 = zext i8 %558 to i32, !dbg !1115
  %560 = icmp ne i32 %559, 0, !dbg !1115
  br i1 %560, label %561, label %562, !dbg !1114

561:                                              ; preds = %557
  br label %568, !dbg !1116

562:                                              ; preds = %557, %549
  %563 = load i32, ptr @numFilesProcessed, align 4, !dbg !1117
  %564 = add nsw i32 %563, 1, !dbg !1117
  store i32 %564, ptr @numFilesProcessed, align 4, !dbg !1117
  %565 = load ptr, ptr %9, align 8, !dbg !1118
  %566 = getelementptr inbounds nuw %struct.zzzz, ptr %565, i32 0, i32 0, !dbg !1119
  %567 = load ptr, ptr %566, align 8, !dbg !1119
  call void @testf(ptr noundef %567), !dbg !1120
  br label %568, !dbg !1121

568:                                              ; preds = %562, %561, %548
  %569 = load ptr, ptr %9, align 8, !dbg !1122
  %570 = getelementptr inbounds nuw %struct.zzzz, ptr %569, i32 0, i32 1, !dbg !1123
  %571 = load ptr, ptr %570, align 8, !dbg !1123
  store ptr %571, ptr %9, align 8, !dbg !1124
  br label %539, !dbg !1125, !llvm.loop !1126

572:                                              ; preds = %539
  br label %573

573:                                              ; preds = %572, %536
  %574 = load i8, ptr @testFailsExist, align 1, !dbg !1128
  %575 = zext i8 %574 to i32, !dbg !1128
  %576 = icmp ne i32 %575, 0, !dbg !1128
  br i1 %576, label %577, label %585, !dbg !1130

577:                                              ; preds = %573
  %578 = load i8, ptr @noisy, align 1, !dbg !1131
  %579 = zext i8 %578 to i32, !dbg !1131
  %580 = icmp ne i32 %579, 0, !dbg !1131
  br i1 %580, label %581, label %585, !dbg !1130

581:                                              ; preds = %577
  %582 = load ptr, ptr @stderr, align 8, !dbg !1132
  %583 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %582, ptr noundef @.str.35) #10, !dbg !1134
  call void @setExit(i32 noundef 2), !dbg !1135
  %584 = load i32, ptr @exitValue, align 4, !dbg !1136
  call void @exit(i32 noundef %584) #12, !dbg !1137
  unreachable, !dbg !1137

585:                                              ; preds = %577, %573
  br label %586

586:                                              ; preds = %585, %532
  br label %587

587:                                              ; preds = %586, %483
  %588 = load ptr, ptr %8, align 8, !dbg !1138
  store ptr %588, ptr %9, align 8, !dbg !1139
  br label %589, !dbg !1140

589:                                              ; preds = %604, %587
  %590 = load ptr, ptr %9, align 8, !dbg !1141
  %591 = icmp ne ptr %590, null, !dbg !1142
  br i1 %591, label %592, label %607, !dbg !1140

592:                                              ; preds = %589
    #dbg_declare(ptr %11, !1143, !DIExpression(), !1145)
  %593 = load ptr, ptr %9, align 8, !dbg !1146
  %594 = getelementptr inbounds nuw %struct.zzzz, ptr %593, i32 0, i32 1, !dbg !1147
  %595 = load ptr, ptr %594, align 8, !dbg !1147
  store ptr %595, ptr %11, align 8, !dbg !1145
  %596 = load ptr, ptr %9, align 8, !dbg !1148
  %597 = getelementptr inbounds nuw %struct.zzzz, ptr %596, i32 0, i32 0, !dbg !1150
  %598 = load ptr, ptr %597, align 8, !dbg !1150
  %599 = icmp ne ptr %598, null, !dbg !1151
  br i1 %599, label %600, label %604, !dbg !1151

600:                                              ; preds = %592
  %601 = load ptr, ptr %9, align 8, !dbg !1152
  %602 = getelementptr inbounds nuw %struct.zzzz, ptr %601, i32 0, i32 0, !dbg !1153
  %603 = load ptr, ptr %602, align 8, !dbg !1153
  call void @free(ptr noundef %603) #10, !dbg !1154
  br label %604, !dbg !1154

604:                                              ; preds = %600, %592
  %605 = load ptr, ptr %9, align 8, !dbg !1155
  call void @free(ptr noundef %605) #10, !dbg !1156
  %606 = load ptr, ptr %11, align 8, !dbg !1157
  store ptr %606, ptr %9, align 8, !dbg !1158
  br label %589, !dbg !1140, !llvm.loop !1159

607:                                              ; preds = %589
  %608 = load i32, ptr @exitValue, align 4, !dbg !1161
  ret i32 %608, !dbg !1162
}

; Function Attrs: nounwind
declare ptr @signal(i32 noundef, ptr noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @mySIGSEGVorSIGBUScatcher(i32 noundef %0) #0 !dbg !1163 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
    #dbg_declare(ptr %2, !1166, !DIExpression(), !1167)
  %3 = load i32, ptr @opMode, align 4, !dbg !1168
  %4 = icmp eq i32 %3, 1, !dbg !1170
  br i1 %4, label %5, label %9, !dbg !1170

5:                                                ; preds = %1
  %6 = load ptr, ptr @stderr, align 8, !dbg !1171
  %7 = load ptr, ptr @progName, align 8, !dbg !1172
  %8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef @.str.36, ptr noundef %7) #10, !dbg !1173
  br label %13, !dbg !1173

9:                                                ; preds = %1
  %10 = load ptr, ptr @stderr, align 8, !dbg !1174
  %11 = load ptr, ptr @progName, align 8, !dbg !1175
  %12 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef @.str.37, ptr noundef %11) #10, !dbg !1176
  br label %13

13:                                               ; preds = %9, %5
  call void @showFileNames(), !dbg !1177
  %14 = load i32, ptr @opMode, align 4, !dbg !1178
  %15 = icmp eq i32 %14, 1, !dbg !1180
  br i1 %15, label %16, label %17, !dbg !1180

16:                                               ; preds = %13
  call void @cleanUpAndFail(i32 noundef 3) #13, !dbg !1181
  unreachable, !dbg !1181

17:                                               ; preds = %13
  call void @cadvise(), !dbg !1182
  call void @cleanUpAndFail(i32 noundef 2) #13, !dbg !1184
  unreachable, !dbg !1184
}

; Function Attrs: noinline nounwind uwtable
define internal void @copyFileName(ptr noundef %0, ptr noundef %1) #0 !dbg !1185 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !1188, !DIExpression(), !1189)
  store ptr %1, ptr %4, align 8
    #dbg_declare(ptr %4, !1190, !DIExpression(), !1191)
  %5 = load ptr, ptr %4, align 8, !dbg !1192
  %6 = call i64 @strlen(ptr noundef %5) #11, !dbg !1194
  %7 = icmp ugt i64 %6, 1024, !dbg !1195
  br i1 %7, label %8, label %13, !dbg !1195

8:                                                ; preds = %2
  %9 = load ptr, ptr @stderr, align 8, !dbg !1196
  %10 = load ptr, ptr %4, align 8, !dbg !1198
  %11 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef @.str.47, ptr noundef %10, i32 noundef 1024) #10, !dbg !1199
  call void @setExit(i32 noundef 1), !dbg !1200
  %12 = load i32, ptr @exitValue, align 4, !dbg !1201
  call void @exit(i32 noundef %12) #12, !dbg !1202
  unreachable, !dbg !1202

13:                                               ; preds = %2
  %14 = load ptr, ptr %3, align 8, !dbg !1203
  %15 = load ptr, ptr %4, align 8, !dbg !1204
  %16 = call ptr @strncpy(ptr noundef %14, ptr noundef %15, i64 noundef 1024) #10, !dbg !1205
  %17 = load ptr, ptr %3, align 8, !dbg !1206
  %18 = getelementptr inbounds i8, ptr %17, i64 1024, !dbg !1206
  store i8 0, ptr %18, align 1, !dbg !1207
  ret void, !dbg !1208
}

; Function Attrs: noinline nounwind uwtable
define internal void @addFlagsFromEnvVar(ptr noundef %0, ptr noundef %1) #0 !dbg !1209 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !1213, !DIExpression(), !1214)
  store ptr %1, ptr %4, align 8
    #dbg_declare(ptr %4, !1215, !DIExpression(), !1216)
    #dbg_declare(ptr %5, !1217, !DIExpression(), !1218)
    #dbg_declare(ptr %6, !1219, !DIExpression(), !1220)
    #dbg_declare(ptr %7, !1221, !DIExpression(), !1222)
    #dbg_declare(ptr %8, !1223, !DIExpression(), !1224)
    #dbg_declare(ptr %9, !1225, !DIExpression(), !1226)
  %10 = load ptr, ptr %4, align 8, !dbg !1227
  %11 = call ptr @getenv(ptr noundef %10) #10, !dbg !1228
  store ptr %11, ptr %8, align 8, !dbg !1229
  %12 = load ptr, ptr %8, align 8, !dbg !1230
  %13 = icmp ne ptr %12, null, !dbg !1232
  br i1 %13, label %14, label %111, !dbg !1232

14:                                               ; preds = %2
  %15 = load ptr, ptr %8, align 8, !dbg !1233
  store ptr %15, ptr %9, align 8, !dbg !1235
  store i32 0, ptr %5, align 4, !dbg !1236
  br label %16, !dbg !1237

16:                                               ; preds = %14, %109
  %17 = load ptr, ptr %9, align 8, !dbg !1238
  %18 = load i32, ptr %5, align 4, !dbg !1241
  %19 = sext i32 %18 to i64, !dbg !1238
  %20 = getelementptr inbounds i8, ptr %17, i64 %19, !dbg !1238
  %21 = load i8, ptr %20, align 1, !dbg !1238
  %22 = sext i8 %21 to i32, !dbg !1238
  %23 = icmp eq i32 %22, 0, !dbg !1242
  br i1 %23, label %24, label %25, !dbg !1242

24:                                               ; preds = %16
  br label %110, !dbg !1243

25:                                               ; preds = %16
  %26 = load i32, ptr %5, align 4, !dbg !1244
  %27 = load ptr, ptr %9, align 8, !dbg !1245
  %28 = sext i32 %26 to i64, !dbg !1245
  %29 = getelementptr inbounds i8, ptr %27, i64 %28, !dbg !1245
  store ptr %29, ptr %9, align 8, !dbg !1245
  store i32 0, ptr %5, align 4, !dbg !1246
  br label %30, !dbg !1247

30:                                               ; preds = %43, %25
  %31 = call ptr @__ctype_b_loc() #14, !dbg !1248
  %32 = load ptr, ptr %31, align 8, !dbg !1248
  %33 = load ptr, ptr %9, align 8, !dbg !1248
  %34 = getelementptr inbounds i8, ptr %33, i64 0, !dbg !1248
  %35 = load i8, ptr %34, align 1, !dbg !1248
  %36 = sext i8 %35 to i32, !dbg !1248
  %37 = sext i32 %36 to i64, !dbg !1248
  %38 = getelementptr inbounds i16, ptr %32, i64 %37, !dbg !1248
  %39 = load i16, ptr %38, align 2, !dbg !1248
  %40 = zext i16 %39 to i32, !dbg !1248
  %41 = and i32 %40, 8192, !dbg !1248
  %42 = icmp ne i32 %41, 0, !dbg !1247
  br i1 %42, label %43, label %46, !dbg !1247

43:                                               ; preds = %30
  %44 = load ptr, ptr %9, align 8, !dbg !1249
  %45 = getelementptr inbounds nuw i8, ptr %44, i32 1, !dbg !1249
  store ptr %45, ptr %9, align 8, !dbg !1249
  br label %30, !dbg !1247, !llvm.loop !1250

46:                                               ; preds = %30
  br label %47, !dbg !1251

47:                                               ; preds = %73, %46
  %48 = load ptr, ptr %9, align 8, !dbg !1252
  %49 = load i32, ptr %5, align 4, !dbg !1253
  %50 = sext i32 %49 to i64, !dbg !1252
  %51 = getelementptr inbounds i8, ptr %48, i64 %50, !dbg !1252
  %52 = load i8, ptr %51, align 1, !dbg !1252
  %53 = sext i8 %52 to i32, !dbg !1252
  %54 = icmp ne i32 %53, 0, !dbg !1254
  br i1 %54, label %55, label %71, !dbg !1255

55:                                               ; preds = %47
  %56 = call ptr @__ctype_b_loc() #14, !dbg !1256
  %57 = load ptr, ptr %56, align 8, !dbg !1256
  %58 = load ptr, ptr %9, align 8, !dbg !1256
  %59 = load i32, ptr %5, align 4, !dbg !1256
  %60 = sext i32 %59 to i64, !dbg !1256
  %61 = getelementptr inbounds i8, ptr %58, i64 %60, !dbg !1256
  %62 = load i8, ptr %61, align 1, !dbg !1256
  %63 = sext i8 %62 to i32, !dbg !1256
  %64 = sext i32 %63 to i64, !dbg !1256
  %65 = getelementptr inbounds i16, ptr %57, i64 %64, !dbg !1256
  %66 = load i16, ptr %65, align 2, !dbg !1256
  %67 = zext i16 %66 to i32, !dbg !1256
  %68 = and i32 %67, 8192, !dbg !1256
  %69 = icmp ne i32 %68, 0, !dbg !1257
  %70 = xor i1 %69, true, !dbg !1257
  br label %71

71:                                               ; preds = %55, %47
  %72 = phi i1 [ false, %47 ], [ %70, %55 ], !dbg !1258
  br i1 %72, label %73, label %76, !dbg !1251

73:                                               ; preds = %71
  %74 = load i32, ptr %5, align 4, !dbg !1259
  %75 = add nsw i32 %74, 1, !dbg !1259
  store i32 %75, ptr %5, align 4, !dbg !1259
  br label %47, !dbg !1251, !llvm.loop !1260

76:                                               ; preds = %71
  %77 = load i32, ptr %5, align 4, !dbg !1261
  %78 = icmp sgt i32 %77, 0, !dbg !1263
  br i1 %78, label %79, label %109, !dbg !1263

79:                                               ; preds = %76
  %80 = load i32, ptr %5, align 4, !dbg !1264
  store i32 %80, ptr %7, align 4, !dbg !1266
  %81 = load i32, ptr %7, align 4, !dbg !1267
  %82 = icmp sgt i32 %81, 1024, !dbg !1269
  br i1 %82, label %83, label %84, !dbg !1269

83:                                               ; preds = %79
  store i32 1024, ptr %7, align 4, !dbg !1270
  br label %84, !dbg !1271

84:                                               ; preds = %83, %79
  store i32 0, ptr %6, align 4, !dbg !1272
  br label %85, !dbg !1274

85:                                               ; preds = %98, %84
  %86 = load i32, ptr %6, align 4, !dbg !1275
  %87 = load i32, ptr %7, align 4, !dbg !1277
  %88 = icmp slt i32 %86, %87, !dbg !1278
  br i1 %88, label %89, label %101, !dbg !1279

89:                                               ; preds = %85
  %90 = load ptr, ptr %9, align 8, !dbg !1280
  %91 = load i32, ptr %6, align 4, !dbg !1281
  %92 = sext i32 %91 to i64, !dbg !1280
  %93 = getelementptr inbounds i8, ptr %90, i64 %92, !dbg !1280
  %94 = load i8, ptr %93, align 1, !dbg !1280
  %95 = load i32, ptr %6, align 4, !dbg !1282
  %96 = sext i32 %95 to i64, !dbg !1283
  %97 = getelementptr inbounds [1034 x i8], ptr @tmpName, i64 0, i64 %96, !dbg !1283
  store i8 %94, ptr %97, align 1, !dbg !1284
  br label %98, !dbg !1283

98:                                               ; preds = %89
  %99 = load i32, ptr %6, align 4, !dbg !1285
  %100 = add nsw i32 %99, 1, !dbg !1285
  store i32 %100, ptr %6, align 4, !dbg !1285
  br label %85, !dbg !1286, !llvm.loop !1287

101:                                              ; preds = %85
  %102 = load i32, ptr %7, align 4, !dbg !1289
  %103 = sext i32 %102 to i64, !dbg !1290
  %104 = getelementptr inbounds [1034 x i8], ptr @tmpName, i64 0, i64 %103, !dbg !1290
  store i8 0, ptr %104, align 1, !dbg !1291
  %105 = load ptr, ptr %3, align 8, !dbg !1292
  %106 = load ptr, ptr %105, align 8, !dbg !1292
  %107 = call ptr @snocString(ptr noundef %106, ptr noundef @tmpName), !dbg !1292
  %108 = load ptr, ptr %3, align 8, !dbg !1292
  store ptr %107, ptr %108, align 8, !dbg !1292
  br label %109, !dbg !1293

109:                                              ; preds = %101, %76
  br label %16, !dbg !1237, !llvm.loop !1294

110:                                              ; preds = %24
  br label %111, !dbg !1296

111:                                              ; preds = %110, %2
  ret void, !dbg !1297
}

; Function Attrs: noinline nounwind uwtable
define internal ptr @snocString(ptr noundef %0, ptr noundef %1) #0 !dbg !1298 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
    #dbg_declare(ptr %4, !1301, !DIExpression(), !1302)
  store ptr %1, ptr %5, align 8
    #dbg_declare(ptr %5, !1303, !DIExpression(), !1304)
  %8 = load ptr, ptr %4, align 8, !dbg !1305
  %9 = icmp eq ptr %8, null, !dbg !1307
  br i1 %9, label %10, label %25, !dbg !1307

10:                                               ; preds = %2
    #dbg_declare(ptr %6, !1308, !DIExpression(), !1310)
  %11 = call ptr @mkCell(), !dbg !1311
  store ptr %11, ptr %6, align 8, !dbg !1310
  %12 = load ptr, ptr %5, align 8, !dbg !1312
  %13 = call i64 @strlen(ptr noundef %12) #11, !dbg !1313
  %14 = add i64 5, %13, !dbg !1314
  %15 = trunc i64 %14 to i32, !dbg !1315
  %16 = call ptr @myMalloc(i32 noundef %15), !dbg !1316
  %17 = load ptr, ptr %6, align 8, !dbg !1317
  %18 = getelementptr inbounds nuw %struct.zzzz, ptr %17, i32 0, i32 0, !dbg !1318
  store ptr %16, ptr %18, align 8, !dbg !1319
  %19 = load ptr, ptr %6, align 8, !dbg !1320
  %20 = getelementptr inbounds nuw %struct.zzzz, ptr %19, i32 0, i32 0, !dbg !1321
  %21 = load ptr, ptr %20, align 8, !dbg !1321
  %22 = load ptr, ptr %5, align 8, !dbg !1322
  %23 = call ptr @strcpy(ptr noundef %21, ptr noundef %22) #10, !dbg !1323
  %24 = load ptr, ptr %6, align 8, !dbg !1324
  store ptr %24, ptr %3, align 8, !dbg !1325
  br label %45, !dbg !1325

25:                                               ; preds = %2
    #dbg_declare(ptr %7, !1326, !DIExpression(), !1328)
  %26 = load ptr, ptr %4, align 8, !dbg !1329
  store ptr %26, ptr %7, align 8, !dbg !1328
  br label %27, !dbg !1330

27:                                               ; preds = %32, %25
  %28 = load ptr, ptr %7, align 8, !dbg !1331
  %29 = getelementptr inbounds nuw %struct.zzzz, ptr %28, i32 0, i32 1, !dbg !1332
  %30 = load ptr, ptr %29, align 8, !dbg !1332
  %31 = icmp ne ptr %30, null, !dbg !1333
  br i1 %31, label %32, label %36, !dbg !1330

32:                                               ; preds = %27
  %33 = load ptr, ptr %7, align 8, !dbg !1334
  %34 = getelementptr inbounds nuw %struct.zzzz, ptr %33, i32 0, i32 1, !dbg !1335
  %35 = load ptr, ptr %34, align 8, !dbg !1335
  store ptr %35, ptr %7, align 8, !dbg !1336
  br label %27, !dbg !1330, !llvm.loop !1337

36:                                               ; preds = %27
  %37 = load ptr, ptr %7, align 8, !dbg !1338
  %38 = getelementptr inbounds nuw %struct.zzzz, ptr %37, i32 0, i32 1, !dbg !1339
  %39 = load ptr, ptr %38, align 8, !dbg !1339
  %40 = load ptr, ptr %5, align 8, !dbg !1340
  %41 = call ptr @snocString(ptr noundef %39, ptr noundef %40), !dbg !1341
  %42 = load ptr, ptr %7, align 8, !dbg !1342
  %43 = getelementptr inbounds nuw %struct.zzzz, ptr %42, i32 0, i32 1, !dbg !1343
  store ptr %41, ptr %43, align 8, !dbg !1344
  %44 = load ptr, ptr %4, align 8, !dbg !1345
  store ptr %44, ptr %3, align 8, !dbg !1346
  br label %45, !dbg !1346

45:                                               ; preds = %36, %10
  %46 = load ptr, ptr %3, align 8, !dbg !1347
  ret ptr %46, !dbg !1347
}

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare ptr @strstr(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal void @license() #0 !dbg !1348 {
  %1 = load ptr, ptr @stderr, align 8, !dbg !1351
  %2 = call ptr @BZ2_bzlibVersion(), !dbg !1352
  %3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.49, ptr noundef %2) #10, !dbg !1353
  ret void, !dbg !1354
}

; Function Attrs: noinline nounwind uwtable
define internal void @usage(ptr noundef %0) #0 !dbg !1355 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !1358, !DIExpression(), !1359)
  %3 = load ptr, ptr @stderr, align 8, !dbg !1360
  %4 = call ptr @BZ2_bzlibVersion(), !dbg !1361
  %5 = load ptr, ptr %2, align 8, !dbg !1362
  %6 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str.50, ptr noundef %4, ptr noundef %5) #10, !dbg !1363
  ret void, !dbg !1364
}

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #3

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @redundant(ptr noundef %0) #0 !dbg !1365 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !1366, !DIExpression(), !1367)
  %3 = load ptr, ptr @stderr, align 8, !dbg !1368
  %4 = load ptr, ptr @progName, align 8, !dbg !1369
  %5 = load ptr, ptr %2, align 8, !dbg !1370
  %6 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str.51, ptr noundef %4, ptr noundef %5) #10, !dbg !1371
  ret void, !dbg !1372
}

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal void @mySignalCatcher(i32 noundef %0) #0 !dbg !1373 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
    #dbg_declare(ptr %2, !1374, !DIExpression(), !1375)
  %3 = load ptr, ptr @stderr, align 8, !dbg !1376
  %4 = load ptr, ptr @progName, align 8, !dbg !1377
  %5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str.52, ptr noundef %4) #10, !dbg !1378
  call void @cleanUpAndFail(i32 noundef 1) #13, !dbg !1379
  unreachable, !dbg !1379
}

; Function Attrs: noinline nounwind uwtable
define internal void @compress(ptr noundef %0) #0 !dbg !1380 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.stat, align 8
  %8 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !1381, !DIExpression(), !1382)
    #dbg_declare(ptr %3, !1383, !DIExpression(), !1384)
    #dbg_declare(ptr %4, !1385, !DIExpression(), !1386)
    #dbg_declare(ptr %5, !1387, !DIExpression(), !1388)
    #dbg_declare(ptr %6, !1389, !DIExpression(), !1390)
    #dbg_declare(ptr %7, !1391, !DIExpression(), !1392)
  store i8 0, ptr @deleteOutputOnInterrupt, align 1, !dbg !1393
  %9 = load ptr, ptr %2, align 8, !dbg !1394
  %10 = icmp eq ptr %9, null, !dbg !1396
  br i1 %10, label %11, label %15, !dbg !1397

11:                                               ; preds = %1
  %12 = load i32, ptr @srcMode, align 4, !dbg !1398
  %13 = icmp ne i32 %12, 1, !dbg !1399
  br i1 %13, label %14, label %15, !dbg !1397

14:                                               ; preds = %11
  call void @panic(ptr noundef @.str.53) #13, !dbg !1400
  unreachable, !dbg !1400

15:                                               ; preds = %11, %1
  %16 = load i32, ptr @srcMode, align 4, !dbg !1401
  switch i32 %16, label %24 [
    i32 1, label %17
    i32 3, label %18
    i32 2, label %22
  ], !dbg !1402

17:                                               ; preds = %15
  call void @copyFileName(ptr noundef @inName, ptr noundef @.str.54), !dbg !1403
  call void @copyFileName(ptr noundef @outName, ptr noundef @.str.55), !dbg !1405
  br label %24, !dbg !1406

18:                                               ; preds = %15
  %19 = load ptr, ptr %2, align 8, !dbg !1407
  call void @copyFileName(ptr noundef @inName, ptr noundef %19), !dbg !1408
  %20 = load ptr, ptr %2, align 8, !dbg !1409
  call void @copyFileName(ptr noundef @outName, ptr noundef %20), !dbg !1410
  %21 = call ptr @strcat(ptr noundef @outName, ptr noundef @.str) #10, !dbg !1411
  br label %24, !dbg !1412

22:                                               ; preds = %15
  %23 = load ptr, ptr %2, align 8, !dbg !1413
  call void @copyFileName(ptr noundef @inName, ptr noundef %23), !dbg !1414
  call void @copyFileName(ptr noundef @outName, ptr noundef @.str.55), !dbg !1415
  br label %24, !dbg !1416

24:                                               ; preds = %15, %22, %18, %17
  %25 = load i32, ptr @srcMode, align 4, !dbg !1417
  %26 = icmp ne i32 %25, 1, !dbg !1419
  br i1 %26, label %27, label %39, !dbg !1420

27:                                               ; preds = %24
  %28 = call zeroext i8 @containsDubiousChars(ptr noundef @inName), !dbg !1421
  %29 = zext i8 %28 to i32, !dbg !1421
  %30 = icmp ne i32 %29, 0, !dbg !1421
  br i1 %30, label %31, label %39, !dbg !1420

31:                                               ; preds = %27
  %32 = load i8, ptr @noisy, align 1, !dbg !1422
  %33 = icmp ne i8 %32, 0, !dbg !1422
  br i1 %33, label %34, label %38, !dbg !1422

34:                                               ; preds = %31
  %35 = load ptr, ptr @stderr, align 8, !dbg !1425
  %36 = load ptr, ptr @progName, align 8, !dbg !1426
  %37 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %35, ptr noundef @.str.56, ptr noundef %36, ptr noundef @inName) #10, !dbg !1427
  br label %38, !dbg !1427

38:                                               ; preds = %34, %31
  call void @setExit(i32 noundef 1), !dbg !1428
  br label %264, !dbg !1429

39:                                               ; preds = %27, %24
  %40 = load i32, ptr @srcMode, align 4, !dbg !1430
  %41 = icmp ne i32 %40, 1, !dbg !1432
  br i1 %41, label %42, label %52, !dbg !1433

42:                                               ; preds = %39
  %43 = call zeroext i8 @fileExists(ptr noundef @inName), !dbg !1434
  %44 = icmp ne i8 %43, 0, !dbg !1434
  br i1 %44, label %52, label %45, !dbg !1433

45:                                               ; preds = %42
  %46 = load ptr, ptr @stderr, align 8, !dbg !1435
  %47 = load ptr, ptr @progName, align 8, !dbg !1437
  %48 = call ptr @__errno_location() #14, !dbg !1438
  %49 = load i32, ptr %48, align 4, !dbg !1438
  %50 = call ptr @strerror(i32 noundef %49) #10, !dbg !1439
  %51 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %46, ptr noundef @.str.57, ptr noundef %47, ptr noundef @inName, ptr noundef %50) #10, !dbg !1440
  call void @setExit(i32 noundef 1), !dbg !1441
  br label %264, !dbg !1442

52:                                               ; preds = %42, %39
  store i32 0, ptr %6, align 4, !dbg !1443
  br label %53, !dbg !1445

53:                                               ; preds = %76, %52
  %54 = load i32, ptr %6, align 4, !dbg !1446
  %55 = icmp slt i32 %54, 4, !dbg !1448
  br i1 %55, label %56, label %79, !dbg !1449

56:                                               ; preds = %53
  %57 = load i32, ptr %6, align 4, !dbg !1450
  %58 = sext i32 %57 to i64, !dbg !1453
  %59 = getelementptr inbounds [4 x ptr], ptr @zSuffix, i64 0, i64 %58, !dbg !1453
  %60 = load ptr, ptr %59, align 8, !dbg !1453
  %61 = call zeroext i8 @hasSuffix(ptr noundef @inName, ptr noundef %60), !dbg !1454
  %62 = icmp ne i8 %61, 0, !dbg !1454
  br i1 %62, label %63, label %75, !dbg !1454

63:                                               ; preds = %56
  %64 = load i8, ptr @noisy, align 1, !dbg !1455
  %65 = icmp ne i8 %64, 0, !dbg !1455
  br i1 %65, label %66, label %74, !dbg !1455

66:                                               ; preds = %63
  %67 = load ptr, ptr @stderr, align 8, !dbg !1458
  %68 = load ptr, ptr @progName, align 8, !dbg !1459
  %69 = load i32, ptr %6, align 4, !dbg !1460
  %70 = sext i32 %69 to i64, !dbg !1461
  %71 = getelementptr inbounds [4 x ptr], ptr @zSuffix, i64 0, i64 %70, !dbg !1461
  %72 = load ptr, ptr %71, align 8, !dbg !1461
  %73 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %67, ptr noundef @.str.58, ptr noundef %68, ptr noundef @inName, ptr noundef %72) #10, !dbg !1462
  br label %74, !dbg !1462

74:                                               ; preds = %66, %63
  call void @setExit(i32 noundef 1), !dbg !1463
  br label %264, !dbg !1464

75:                                               ; preds = %56
  br label %76, !dbg !1465

76:                                               ; preds = %75
  %77 = load i32, ptr %6, align 4, !dbg !1466
  %78 = add nsw i32 %77, 1, !dbg !1466
  store i32 %78, ptr %6, align 4, !dbg !1466
  br label %53, !dbg !1467, !llvm.loop !1468

79:                                               ; preds = %53
  %80 = load i32, ptr @srcMode, align 4, !dbg !1470
  %81 = icmp eq i32 %80, 3, !dbg !1472
  br i1 %81, label %85, label %82, !dbg !1473

82:                                               ; preds = %79
  %83 = load i32, ptr @srcMode, align 4, !dbg !1474
  %84 = icmp eq i32 %83, 2, !dbg !1475
  br i1 %84, label %85, label %96, !dbg !1473

85:                                               ; preds = %82, %79
  %86 = call i32 @stat(ptr noundef @inName, ptr noundef %7) #10, !dbg !1476
  %87 = getelementptr inbounds nuw %struct.stat, ptr %7, i32 0, i32 3, !dbg !1478
  %88 = load i32, ptr %87, align 8, !dbg !1478
  %89 = and i32 %88, 61440, !dbg !1478
  %90 = icmp eq i32 %89, 16384, !dbg !1478
  br i1 %90, label %91, label %95, !dbg !1478

91:                                               ; preds = %85
  %92 = load ptr, ptr @stderr, align 8, !dbg !1480
  %93 = load ptr, ptr @progName, align 8, !dbg !1482
  %94 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %92, ptr noundef @.str.59, ptr noundef %93, ptr noundef @inName) #10, !dbg !1483
  call void @setExit(i32 noundef 1), !dbg !1484
  br label %264, !dbg !1485

95:                                               ; preds = %85
  br label %96, !dbg !1486

96:                                               ; preds = %95, %82
  %97 = load i32, ptr @srcMode, align 4, !dbg !1487
  %98 = icmp eq i32 %97, 3, !dbg !1489
  br i1 %98, label %99, label %114, !dbg !1490

99:                                               ; preds = %96
  %100 = load i8, ptr @forceOverwrite, align 1, !dbg !1491
  %101 = icmp ne i8 %100, 0, !dbg !1491
  br i1 %101, label %114, label %102, !dbg !1492

102:                                              ; preds = %99
  %103 = call zeroext i8 @notAStandardFile(ptr noundef @inName), !dbg !1493
  %104 = zext i8 %103 to i32, !dbg !1493
  %105 = icmp ne i32 %104, 0, !dbg !1493
  br i1 %105, label %106, label %114, !dbg !1492

106:                                              ; preds = %102
  %107 = load i8, ptr @noisy, align 1, !dbg !1494
  %108 = icmp ne i8 %107, 0, !dbg !1494
  br i1 %108, label %109, label %113, !dbg !1494

109:                                              ; preds = %106
  %110 = load ptr, ptr @stderr, align 8, !dbg !1497
  %111 = load ptr, ptr @progName, align 8, !dbg !1498
  %112 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %110, ptr noundef @.str.60, ptr noundef %111, ptr noundef @inName) #10, !dbg !1499
  br label %113, !dbg !1499

113:                                              ; preds = %109, %106
  call void @setExit(i32 noundef 1), !dbg !1500
  br label %264, !dbg !1501

114:                                              ; preds = %102, %99, %96
  %115 = load i32, ptr @srcMode, align 4, !dbg !1502
  %116 = icmp eq i32 %115, 3, !dbg !1504
  br i1 %116, label %117, label %131, !dbg !1505

117:                                              ; preds = %114
  %118 = call zeroext i8 @fileExists(ptr noundef @outName), !dbg !1506
  %119 = zext i8 %118 to i32, !dbg !1506
  %120 = icmp ne i32 %119, 0, !dbg !1506
  br i1 %120, label %121, label %131, !dbg !1505

121:                                              ; preds = %117
  %122 = load i8, ptr @forceOverwrite, align 1, !dbg !1507
  %123 = icmp ne i8 %122, 0, !dbg !1507
  br i1 %123, label %124, label %126, !dbg !1507

124:                                              ; preds = %121
  %125 = call i32 @remove(ptr noundef @outName) #10, !dbg !1510
  br label %130, !dbg !1512

126:                                              ; preds = %121
  %127 = load ptr, ptr @stderr, align 8, !dbg !1513
  %128 = load ptr, ptr @progName, align 8, !dbg !1515
  %129 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %127, ptr noundef @.str.61, ptr noundef %128, ptr noundef @outName) #10, !dbg !1516
  call void @setExit(i32 noundef 1), !dbg !1517
  br label %264, !dbg !1518

130:                                              ; preds = %124
  br label %131, !dbg !1519

131:                                              ; preds = %130, %117, %114
  %132 = load i32, ptr @srcMode, align 4, !dbg !1520
  %133 = icmp eq i32 %132, 3, !dbg !1522
  br i1 %133, label %134, label %149, !dbg !1523

134:                                              ; preds = %131
  %135 = load i8, ptr @forceOverwrite, align 1, !dbg !1524
  %136 = icmp ne i8 %135, 0, !dbg !1524
  br i1 %136, label %149, label %137, !dbg !1525

137:                                              ; preds = %134
  %138 = call i32 @countHardLinks(ptr noundef @inName), !dbg !1526
  store i32 %138, ptr %5, align 4, !dbg !1527
  %139 = icmp sgt i32 %138, 0, !dbg !1528
  br i1 %139, label %140, label %149, !dbg !1525

140:                                              ; preds = %137
  %141 = load ptr, ptr @stderr, align 8, !dbg !1529
  %142 = load ptr, ptr @progName, align 8, !dbg !1531
  %143 = load i32, ptr %5, align 4, !dbg !1532
  %144 = load i32, ptr %5, align 4, !dbg !1533
  %145 = icmp sgt i32 %144, 1, !dbg !1534
  %146 = zext i1 %145 to i64, !dbg !1533
  %147 = select i1 %145, ptr @.str.63, ptr @.str.4, !dbg !1533
  %148 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %141, ptr noundef @.str.62, ptr noundef %142, ptr noundef @inName, i32 noundef %143, ptr noundef %147) #10, !dbg !1535
  call void @setExit(i32 noundef 1), !dbg !1536
  br label %264, !dbg !1537

149:                                              ; preds = %137, %134, %131
  %150 = load i32, ptr @srcMode, align 4, !dbg !1538
  %151 = icmp eq i32 %150, 3, !dbg !1540
  br i1 %151, label %152, label %153, !dbg !1540

152:                                              ; preds = %149
  call void @saveInputFileMetaInfo(ptr noundef @inName), !dbg !1541
  br label %153, !dbg !1543

153:                                              ; preds = %152, %149
  %154 = load i32, ptr @srcMode, align 4, !dbg !1544
  switch i32 %154, label %238 [
    i32 1, label %155
    i32 2, label %171
    i32 3, label %203
  ], !dbg !1545

155:                                              ; preds = %153
  %156 = load ptr, ptr @stdin, align 8, !dbg !1546
  store ptr %156, ptr %3, align 8, !dbg !1548
  %157 = load ptr, ptr @stdout, align 8, !dbg !1549
  store ptr %157, ptr %4, align 8, !dbg !1550
  %158 = load ptr, ptr @stdout, align 8, !dbg !1551
  %159 = call i32 @fileno(ptr noundef %158) #10, !dbg !1553
  %160 = call i32 @isatty(i32 noundef %159) #10, !dbg !1554
  %161 = icmp ne i32 %160, 0, !dbg !1554
  br i1 %161, label %162, label %170, !dbg !1554

162:                                              ; preds = %155
  %163 = load ptr, ptr @stderr, align 8, !dbg !1555
  %164 = load ptr, ptr @progName, align 8, !dbg !1557
  %165 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %163, ptr noundef @.str.64, ptr noundef %164) #10, !dbg !1558
  %166 = load ptr, ptr @stderr, align 8, !dbg !1559
  %167 = load ptr, ptr @progName, align 8, !dbg !1560
  %168 = load ptr, ptr @progName, align 8, !dbg !1561
  %169 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %166, ptr noundef @.str.65, ptr noundef %167, ptr noundef %168) #10, !dbg !1562
  call void @setExit(i32 noundef 1), !dbg !1563
  br label %264, !dbg !1564

170:                                              ; preds = %155
  br label %239, !dbg !1565

171:                                              ; preds = %153
  %172 = call noalias ptr @fopen(ptr noundef @inName, ptr noundef @.str.66), !dbg !1566
  store ptr %172, ptr %3, align 8, !dbg !1567
  %173 = load ptr, ptr @stdout, align 8, !dbg !1568
  store ptr %173, ptr %4, align 8, !dbg !1569
  %174 = load ptr, ptr @stdout, align 8, !dbg !1570
  %175 = call i32 @fileno(ptr noundef %174) #10, !dbg !1572
  %176 = call i32 @isatty(i32 noundef %175) #10, !dbg !1573
  %177 = icmp ne i32 %176, 0, !dbg !1573
  br i1 %177, label %178, label %192, !dbg !1573

178:                                              ; preds = %171
  %179 = load ptr, ptr @stderr, align 8, !dbg !1574
  %180 = load ptr, ptr @progName, align 8, !dbg !1576
  %181 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %179, ptr noundef @.str.64, ptr noundef %180) #10, !dbg !1577
  %182 = load ptr, ptr @stderr, align 8, !dbg !1578
  %183 = load ptr, ptr @progName, align 8, !dbg !1579
  %184 = load ptr, ptr @progName, align 8, !dbg !1580
  %185 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %182, ptr noundef @.str.65, ptr noundef %183, ptr noundef %184) #10, !dbg !1581
  %186 = load ptr, ptr %3, align 8, !dbg !1582
  %187 = icmp ne ptr %186, null, !dbg !1584
  br i1 %187, label %188, label %191, !dbg !1584

188:                                              ; preds = %178
  %189 = load ptr, ptr %3, align 8, !dbg !1585
  %190 = call i32 @fclose(ptr noundef %189), !dbg !1586
  br label %191, !dbg !1586

191:                                              ; preds = %188, %178
  call void @setExit(i32 noundef 1), !dbg !1587
  br label %264, !dbg !1588

192:                                              ; preds = %171
  %193 = load ptr, ptr %3, align 8, !dbg !1589
  %194 = icmp eq ptr %193, null, !dbg !1591
  br i1 %194, label %195, label %202, !dbg !1591

195:                                              ; preds = %192
  %196 = load ptr, ptr @stderr, align 8, !dbg !1592
  %197 = load ptr, ptr @progName, align 8, !dbg !1594
  %198 = call ptr @__errno_location() #14, !dbg !1595
  %199 = load i32, ptr %198, align 4, !dbg !1595
  %200 = call ptr @strerror(i32 noundef %199) #10, !dbg !1596
  %201 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %196, ptr noundef @.str.57, ptr noundef %197, ptr noundef @inName, ptr noundef %200) #10, !dbg !1597
  call void @setExit(i32 noundef 1), !dbg !1598
  br label %264, !dbg !1599

202:                                              ; preds = %192
  br label %239, !dbg !1600

203:                                              ; preds = %153
  %204 = call noalias ptr @fopen(ptr noundef @inName, ptr noundef @.str.66), !dbg !1601
  store ptr %204, ptr %3, align 8, !dbg !1602
  %205 = call ptr @fopen_output_safely(ptr noundef @outName, ptr noundef @.str.67), !dbg !1603
  store ptr %205, ptr %4, align 8, !dbg !1604
  %206 = load ptr, ptr %4, align 8, !dbg !1605
  %207 = icmp eq ptr %206, null, !dbg !1607
  br i1 %207, label %208, label %221, !dbg !1607

208:                                              ; preds = %203
  %209 = load ptr, ptr @stderr, align 8, !dbg !1608
  %210 = load ptr, ptr @progName, align 8, !dbg !1610
  %211 = call ptr @__errno_location() #14, !dbg !1611
  %212 = load i32, ptr %211, align 4, !dbg !1611
  %213 = call ptr @strerror(i32 noundef %212) #10, !dbg !1612
  %214 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %209, ptr noundef @.str.68, ptr noundef %210, ptr noundef @outName, ptr noundef %213) #10, !dbg !1613
  %215 = load ptr, ptr %3, align 8, !dbg !1614
  %216 = icmp ne ptr %215, null, !dbg !1616
  br i1 %216, label %217, label %220, !dbg !1616

217:                                              ; preds = %208
  %218 = load ptr, ptr %3, align 8, !dbg !1617
  %219 = call i32 @fclose(ptr noundef %218), !dbg !1618
  br label %220, !dbg !1618

220:                                              ; preds = %217, %208
  call void @setExit(i32 noundef 1), !dbg !1619
  br label %264, !dbg !1620

221:                                              ; preds = %203
  %222 = load ptr, ptr %3, align 8, !dbg !1621
  %223 = icmp eq ptr %222, null, !dbg !1623
  br i1 %223, label %224, label %237, !dbg !1623

224:                                              ; preds = %221
  %225 = load ptr, ptr @stderr, align 8, !dbg !1624
  %226 = load ptr, ptr @progName, align 8, !dbg !1626
  %227 = call ptr @__errno_location() #14, !dbg !1627
  %228 = load i32, ptr %227, align 4, !dbg !1627
  %229 = call ptr @strerror(i32 noundef %228) #10, !dbg !1628
  %230 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %225, ptr noundef @.str.57, ptr noundef %226, ptr noundef @inName, ptr noundef %229) #10, !dbg !1629
  %231 = load ptr, ptr %4, align 8, !dbg !1630
  %232 = icmp ne ptr %231, null, !dbg !1632
  br i1 %232, label %233, label %236, !dbg !1632

233:                                              ; preds = %224
  %234 = load ptr, ptr %4, align 8, !dbg !1633
  %235 = call i32 @fclose(ptr noundef %234), !dbg !1634
  br label %236, !dbg !1634

236:                                              ; preds = %233, %224
  call void @setExit(i32 noundef 1), !dbg !1635
  br label %264, !dbg !1636

237:                                              ; preds = %221
  br label %239, !dbg !1637

238:                                              ; preds = %153
  call void @panic(ptr noundef @.str.69) #13, !dbg !1638
  unreachable, !dbg !1638

239:                                              ; preds = %237, %202, %170
  %240 = load i32, ptr @verbosity, align 4, !dbg !1639
  %241 = icmp sge i32 %240, 1, !dbg !1641
  br i1 %241, label %242, label %247, !dbg !1641

242:                                              ; preds = %239
  %243 = load ptr, ptr @stderr, align 8, !dbg !1642
  %244 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %243, ptr noundef @.str.70, ptr noundef @inName) #10, !dbg !1644
  call void @pad(ptr noundef @inName), !dbg !1645
  %245 = load ptr, ptr @stderr, align 8, !dbg !1646
  %246 = call i32 @fflush(ptr noundef %245), !dbg !1647
  br label %247, !dbg !1648

247:                                              ; preds = %242, %239
  %248 = load ptr, ptr %4, align 8, !dbg !1649
  store ptr %248, ptr @outputHandleJustInCase, align 8, !dbg !1650
  store i8 1, ptr @deleteOutputOnInterrupt, align 1, !dbg !1651
  %249 = load ptr, ptr %3, align 8, !dbg !1652
  %250 = load ptr, ptr %4, align 8, !dbg !1653
  call void @compressStream(ptr noundef %249, ptr noundef %250), !dbg !1654
  store ptr null, ptr @outputHandleJustInCase, align 8, !dbg !1655
  %251 = load i32, ptr @srcMode, align 4, !dbg !1656
  %252 = icmp eq i32 %251, 3, !dbg !1658
  br i1 %252, label %253, label %263, !dbg !1658

253:                                              ; preds = %247
  call void @applySavedTimeInfoToOutputFile(ptr noundef @outName), !dbg !1659
  store i8 0, ptr @deleteOutputOnInterrupt, align 1, !dbg !1661
  %254 = load i8, ptr @keepInputFiles, align 1, !dbg !1662
  %255 = icmp ne i8 %254, 0, !dbg !1662
  br i1 %255, label %262, label %256, !dbg !1664

256:                                              ; preds = %253
    #dbg_declare(ptr %8, !1665, !DIExpression(), !1667)
  %257 = call i32 @remove(ptr noundef @inName) #10, !dbg !1668
  store i32 %257, ptr %8, align 4, !dbg !1667
  %258 = load i32, ptr %8, align 4, !dbg !1669
  %259 = icmp ne i32 %258, 0, !dbg !1669
  br i1 %259, label %260, label %261, !dbg !1669

260:                                              ; preds = %256
  call void @ioError() #13, !dbg !1669
  unreachable, !dbg !1669

261:                                              ; preds = %256
  br label %262, !dbg !1672

262:                                              ; preds = %261, %253
  br label %263, !dbg !1673

263:                                              ; preds = %262, %247
  store i8 0, ptr @deleteOutputOnInterrupt, align 1, !dbg !1674
  br label %264, !dbg !1675

264:                                              ; preds = %263, %236, %220, %195, %191, %162, %140, %126, %113, %91, %74, %45, %38
  ret void, !dbg !1675
}

; Function Attrs: noinline nounwind uwtable
define internal void @uncompress(ptr noundef %0) #0 !dbg !1676 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca %struct.stat, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !1677, !DIExpression(), !1678)
    #dbg_declare(ptr %3, !1679, !DIExpression(), !1680)
    #dbg_declare(ptr %4, !1681, !DIExpression(), !1682)
    #dbg_declare(ptr %5, !1683, !DIExpression(), !1684)
    #dbg_declare(ptr %6, !1685, !DIExpression(), !1686)
    #dbg_declare(ptr %7, !1687, !DIExpression(), !1688)
    #dbg_declare(ptr %8, !1689, !DIExpression(), !1690)
    #dbg_declare(ptr %9, !1691, !DIExpression(), !1692)
  store i8 0, ptr @deleteOutputOnInterrupt, align 1, !dbg !1693
  %12 = load ptr, ptr %2, align 8, !dbg !1694
  %13 = icmp eq ptr %12, null, !dbg !1696
  br i1 %13, label %14, label %18, !dbg !1697

14:                                               ; preds = %1
  %15 = load i32, ptr @srcMode, align 4, !dbg !1698
  %16 = icmp ne i32 %15, 1, !dbg !1699
  br i1 %16, label %17, label %18, !dbg !1697

17:                                               ; preds = %14
  call void @panic(ptr noundef @.str.79) #13, !dbg !1700
  unreachable, !dbg !1700

18:                                               ; preds = %14, %1
  store i8 0, ptr %8, align 1, !dbg !1701
  %19 = load i32, ptr @srcMode, align 4, !dbg !1702
  switch i32 %19, label %47 [
    i32 1, label %20
    i32 3, label %21
    i32 2, label %45
  ], !dbg !1703

20:                                               ; preds = %18
  call void @copyFileName(ptr noundef @inName, ptr noundef @.str.54), !dbg !1704
  call void @copyFileName(ptr noundef @outName, ptr noundef @.str.55), !dbg !1706
  br label %47, !dbg !1707

21:                                               ; preds = %18
  %22 = load ptr, ptr %2, align 8, !dbg !1708
  call void @copyFileName(ptr noundef @inName, ptr noundef %22), !dbg !1709
  %23 = load ptr, ptr %2, align 8, !dbg !1710
  call void @copyFileName(ptr noundef @outName, ptr noundef %23), !dbg !1711
  store i32 0, ptr %6, align 4, !dbg !1712
  br label %24, !dbg !1714

24:                                               ; preds = %40, %21
  %25 = load i32, ptr %6, align 4, !dbg !1715
  %26 = icmp slt i32 %25, 4, !dbg !1717
  br i1 %26, label %27, label %43, !dbg !1718

27:                                               ; preds = %24
  %28 = load i32, ptr %6, align 4, !dbg !1719
  %29 = sext i32 %28 to i64, !dbg !1721
  %30 = getelementptr inbounds [4 x ptr], ptr @zSuffix, i64 0, i64 %29, !dbg !1721
  %31 = load ptr, ptr %30, align 8, !dbg !1721
  %32 = load i32, ptr %6, align 4, !dbg !1722
  %33 = sext i32 %32 to i64, !dbg !1723
  %34 = getelementptr inbounds [4 x ptr], ptr @unzSuffix, i64 0, i64 %33, !dbg !1723
  %35 = load ptr, ptr %34, align 8, !dbg !1723
  %36 = call zeroext i8 @mapSuffix(ptr noundef @outName, ptr noundef %31, ptr noundef %35), !dbg !1724
  %37 = icmp ne i8 %36, 0, !dbg !1724
  br i1 %37, label %38, label %39, !dbg !1724

38:                                               ; preds = %27
  br label %48, !dbg !1725

39:                                               ; preds = %27
  br label %40, !dbg !1726

40:                                               ; preds = %39
  %41 = load i32, ptr %6, align 4, !dbg !1727
  %42 = add nsw i32 %41, 1, !dbg !1727
  store i32 %42, ptr %6, align 4, !dbg !1727
  br label %24, !dbg !1728, !llvm.loop !1729

43:                                               ; preds = %24
  store i8 1, ptr %8, align 1, !dbg !1731
  %44 = call ptr @strcat(ptr noundef @outName, ptr noundef @.str.80) #10, !dbg !1732
  br label %47, !dbg !1733

45:                                               ; preds = %18
  %46 = load ptr, ptr %2, align 8, !dbg !1734
  call void @copyFileName(ptr noundef @inName, ptr noundef %46), !dbg !1735
  call void @copyFileName(ptr noundef @outName, ptr noundef @.str.55), !dbg !1736
  br label %47, !dbg !1737

47:                                               ; preds = %18, %45, %43, %20
  br label %48, !dbg !1738

48:                                               ; preds = %47, %38
    #dbg_label(!1739, !1740)
  %49 = load i32, ptr @srcMode, align 4, !dbg !1741
  %50 = icmp ne i32 %49, 1, !dbg !1743
  br i1 %50, label %51, label %63, !dbg !1744

51:                                               ; preds = %48
  %52 = call zeroext i8 @containsDubiousChars(ptr noundef @inName), !dbg !1745
  %53 = zext i8 %52 to i32, !dbg !1745
  %54 = icmp ne i32 %53, 0, !dbg !1745
  br i1 %54, label %55, label %63, !dbg !1744

55:                                               ; preds = %51
  %56 = load i8, ptr @noisy, align 1, !dbg !1746
  %57 = icmp ne i8 %56, 0, !dbg !1746
  br i1 %57, label %58, label %62, !dbg !1746

58:                                               ; preds = %55
  %59 = load ptr, ptr @stderr, align 8, !dbg !1749
  %60 = load ptr, ptr @progName, align 8, !dbg !1750
  %61 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %59, ptr noundef @.str.56, ptr noundef %60, ptr noundef @inName) #10, !dbg !1751
  br label %62, !dbg !1751

62:                                               ; preds = %58, %55
  call void @setExit(i32 noundef 1), !dbg !1752
  br label %294, !dbg !1753

63:                                               ; preds = %51, %48
  %64 = load i32, ptr @srcMode, align 4, !dbg !1754
  %65 = icmp ne i32 %64, 1, !dbg !1756
  br i1 %65, label %66, label %76, !dbg !1757

66:                                               ; preds = %63
  %67 = call zeroext i8 @fileExists(ptr noundef @inName), !dbg !1758
  %68 = icmp ne i8 %67, 0, !dbg !1758
  br i1 %68, label %76, label %69, !dbg !1757

69:                                               ; preds = %66
  %70 = load ptr, ptr @stderr, align 8, !dbg !1759
  %71 = load ptr, ptr @progName, align 8, !dbg !1761
  %72 = call ptr @__errno_location() #14, !dbg !1762
  %73 = load i32, ptr %72, align 4, !dbg !1762
  %74 = call ptr @strerror(i32 noundef %73) #10, !dbg !1763
  %75 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %70, ptr noundef @.str.57, ptr noundef %71, ptr noundef @inName, ptr noundef %74) #10, !dbg !1764
  call void @setExit(i32 noundef 1), !dbg !1765
  br label %294, !dbg !1766

76:                                               ; preds = %66, %63
  %77 = load i32, ptr @srcMode, align 4, !dbg !1767
  %78 = icmp eq i32 %77, 3, !dbg !1769
  br i1 %78, label %82, label %79, !dbg !1770

79:                                               ; preds = %76
  %80 = load i32, ptr @srcMode, align 4, !dbg !1771
  %81 = icmp eq i32 %80, 2, !dbg !1772
  br i1 %81, label %82, label %93, !dbg !1770

82:                                               ; preds = %79, %76
  %83 = call i32 @stat(ptr noundef @inName, ptr noundef %9) #10, !dbg !1773
  %84 = getelementptr inbounds nuw %struct.stat, ptr %9, i32 0, i32 3, !dbg !1775
  %85 = load i32, ptr %84, align 8, !dbg !1775
  %86 = and i32 %85, 61440, !dbg !1775
  %87 = icmp eq i32 %86, 16384, !dbg !1775
  br i1 %87, label %88, label %92, !dbg !1775

88:                                               ; preds = %82
  %89 = load ptr, ptr @stderr, align 8, !dbg !1777
  %90 = load ptr, ptr @progName, align 8, !dbg !1779
  %91 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %89, ptr noundef @.str.59, ptr noundef %90, ptr noundef @inName) #10, !dbg !1780
  call void @setExit(i32 noundef 1), !dbg !1781
  br label %294, !dbg !1782

92:                                               ; preds = %82
  br label %93, !dbg !1783

93:                                               ; preds = %92, %79
  %94 = load i32, ptr @srcMode, align 4, !dbg !1784
  %95 = icmp eq i32 %94, 3, !dbg !1786
  br i1 %95, label %96, label %111, !dbg !1787

96:                                               ; preds = %93
  %97 = load i8, ptr @forceOverwrite, align 1, !dbg !1788
  %98 = icmp ne i8 %97, 0, !dbg !1788
  br i1 %98, label %111, label %99, !dbg !1789

99:                                               ; preds = %96
  %100 = call zeroext i8 @notAStandardFile(ptr noundef @inName), !dbg !1790
  %101 = zext i8 %100 to i32, !dbg !1790
  %102 = icmp ne i32 %101, 0, !dbg !1790
  br i1 %102, label %103, label %111, !dbg !1789

103:                                              ; preds = %99
  %104 = load i8, ptr @noisy, align 1, !dbg !1791
  %105 = icmp ne i8 %104, 0, !dbg !1791
  br i1 %105, label %106, label %110, !dbg !1791

106:                                              ; preds = %103
  %107 = load ptr, ptr @stderr, align 8, !dbg !1794
  %108 = load ptr, ptr @progName, align 8, !dbg !1795
  %109 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %107, ptr noundef @.str.60, ptr noundef %108, ptr noundef @inName) #10, !dbg !1796
  br label %110, !dbg !1796

110:                                              ; preds = %106, %103
  call void @setExit(i32 noundef 1), !dbg !1797
  br label %294, !dbg !1798

111:                                              ; preds = %99, %96, %93
  %112 = load i8, ptr %8, align 1, !dbg !1799
  %113 = icmp ne i8 %112, 0, !dbg !1799
  br i1 %113, label %114, label %122, !dbg !1799

114:                                              ; preds = %111
  %115 = load i8, ptr @noisy, align 1, !dbg !1801
  %116 = icmp ne i8 %115, 0, !dbg !1801
  br i1 %116, label %117, label %121, !dbg !1801

117:                                              ; preds = %114
  %118 = load ptr, ptr @stderr, align 8, !dbg !1804
  %119 = load ptr, ptr @progName, align 8, !dbg !1805
  %120 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %118, ptr noundef @.str.81, ptr noundef %119, ptr noundef @inName, ptr noundef @outName) #10, !dbg !1806
  br label %121, !dbg !1806

121:                                              ; preds = %117, %114
  br label %122, !dbg !1807

122:                                              ; preds = %121, %111
  %123 = load i32, ptr @srcMode, align 4, !dbg !1808
  %124 = icmp eq i32 %123, 3, !dbg !1810
  br i1 %124, label %125, label %139, !dbg !1811

125:                                              ; preds = %122
  %126 = call zeroext i8 @fileExists(ptr noundef @outName), !dbg !1812
  %127 = zext i8 %126 to i32, !dbg !1812
  %128 = icmp ne i32 %127, 0, !dbg !1812
  br i1 %128, label %129, label %139, !dbg !1811

129:                                              ; preds = %125
  %130 = load i8, ptr @forceOverwrite, align 1, !dbg !1813
  %131 = icmp ne i8 %130, 0, !dbg !1813
  br i1 %131, label %132, label %134, !dbg !1813

132:                                              ; preds = %129
  %133 = call i32 @remove(ptr noundef @outName) #10, !dbg !1816
  br label %138, !dbg !1818

134:                                              ; preds = %129
  %135 = load ptr, ptr @stderr, align 8, !dbg !1819
  %136 = load ptr, ptr @progName, align 8, !dbg !1821
  %137 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %135, ptr noundef @.str.61, ptr noundef %136, ptr noundef @outName) #10, !dbg !1822
  call void @setExit(i32 noundef 1), !dbg !1823
  br label %294, !dbg !1824

138:                                              ; preds = %132
  br label %139, !dbg !1825

139:                                              ; preds = %138, %125, %122
  %140 = load i32, ptr @srcMode, align 4, !dbg !1826
  %141 = icmp eq i32 %140, 3, !dbg !1828
  br i1 %141, label %142, label %157, !dbg !1829

142:                                              ; preds = %139
  %143 = load i8, ptr @forceOverwrite, align 1, !dbg !1830
  %144 = icmp ne i8 %143, 0, !dbg !1830
  br i1 %144, label %157, label %145, !dbg !1831

145:                                              ; preds = %142
  %146 = call i32 @countHardLinks(ptr noundef @inName), !dbg !1832
  store i32 %146, ptr %5, align 4, !dbg !1833
  %147 = icmp sgt i32 %146, 0, !dbg !1834
  br i1 %147, label %148, label %157, !dbg !1831

148:                                              ; preds = %145
  %149 = load ptr, ptr @stderr, align 8, !dbg !1835
  %150 = load ptr, ptr @progName, align 8, !dbg !1837
  %151 = load i32, ptr %5, align 4, !dbg !1838
  %152 = load i32, ptr %5, align 4, !dbg !1839
  %153 = icmp sgt i32 %152, 1, !dbg !1840
  %154 = zext i1 %153 to i64, !dbg !1839
  %155 = select i1 %153, ptr @.str.63, ptr @.str.4, !dbg !1839
  %156 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %149, ptr noundef @.str.62, ptr noundef %150, ptr noundef @inName, i32 noundef %151, ptr noundef %155) #10, !dbg !1841
  call void @setExit(i32 noundef 1), !dbg !1842
  br label %294, !dbg !1843

157:                                              ; preds = %145, %142, %139
  %158 = load i32, ptr @srcMode, align 4, !dbg !1844
  %159 = icmp eq i32 %158, 3, !dbg !1846
  br i1 %159, label %160, label %161, !dbg !1846

160:                                              ; preds = %157
  call void @saveInputFileMetaInfo(ptr noundef @inName), !dbg !1847
  br label %161, !dbg !1849

161:                                              ; preds = %160, %157
  %162 = load i32, ptr @srcMode, align 4, !dbg !1850
  switch i32 %162, label %233 [
    i32 1, label %163
    i32 2, label %179
    i32 3, label %198
  ], !dbg !1851

163:                                              ; preds = %161
  %164 = load ptr, ptr @stdin, align 8, !dbg !1852
  store ptr %164, ptr %3, align 8, !dbg !1854
  %165 = load ptr, ptr @stdout, align 8, !dbg !1855
  store ptr %165, ptr %4, align 8, !dbg !1856
  %166 = load ptr, ptr @stdin, align 8, !dbg !1857
  %167 = call i32 @fileno(ptr noundef %166) #10, !dbg !1859
  %168 = call i32 @isatty(i32 noundef %167) #10, !dbg !1860
  %169 = icmp ne i32 %168, 0, !dbg !1860
  br i1 %169, label %170, label %178, !dbg !1860

170:                                              ; preds = %163
  %171 = load ptr, ptr @stderr, align 8, !dbg !1861
  %172 = load ptr, ptr @progName, align 8, !dbg !1863
  %173 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %171, ptr noundef @.str.82, ptr noundef %172) #10, !dbg !1864
  %174 = load ptr, ptr @stderr, align 8, !dbg !1865
  %175 = load ptr, ptr @progName, align 8, !dbg !1866
  %176 = load ptr, ptr @progName, align 8, !dbg !1867
  %177 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %174, ptr noundef @.str.65, ptr noundef %175, ptr noundef %176) #10, !dbg !1868
  call void @setExit(i32 noundef 1), !dbg !1869
  br label %294, !dbg !1870

178:                                              ; preds = %163
  br label %234, !dbg !1871

179:                                              ; preds = %161
  %180 = call noalias ptr @fopen(ptr noundef @inName, ptr noundef @.str.66), !dbg !1872
  store ptr %180, ptr %3, align 8, !dbg !1873
  %181 = load ptr, ptr @stdout, align 8, !dbg !1874
  store ptr %181, ptr %4, align 8, !dbg !1875
  %182 = load ptr, ptr %3, align 8, !dbg !1876
  %183 = icmp eq ptr %182, null, !dbg !1878
  br i1 %183, label %184, label %197, !dbg !1878

184:                                              ; preds = %179
  %185 = load ptr, ptr @stderr, align 8, !dbg !1879
  %186 = load ptr, ptr @progName, align 8, !dbg !1881
  %187 = call ptr @__errno_location() #14, !dbg !1882
  %188 = load i32, ptr %187, align 4, !dbg !1882
  %189 = call ptr @strerror(i32 noundef %188) #10, !dbg !1883
  %190 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %185, ptr noundef @.str.83, ptr noundef %186, ptr noundef @inName, ptr noundef %189) #10, !dbg !1884
  %191 = load ptr, ptr %3, align 8, !dbg !1885
  %192 = icmp ne ptr %191, null, !dbg !1887
  br i1 %192, label %193, label %196, !dbg !1887

193:                                              ; preds = %184
  %194 = load ptr, ptr %3, align 8, !dbg !1888
  %195 = call i32 @fclose(ptr noundef %194), !dbg !1889
  br label %196, !dbg !1889

196:                                              ; preds = %193, %184
  call void @setExit(i32 noundef 1), !dbg !1890
  br label %294, !dbg !1891

197:                                              ; preds = %179
  br label %234, !dbg !1892

198:                                              ; preds = %161
  %199 = call noalias ptr @fopen(ptr noundef @inName, ptr noundef @.str.66), !dbg !1893
  store ptr %199, ptr %3, align 8, !dbg !1894
  %200 = call ptr @fopen_output_safely(ptr noundef @outName, ptr noundef @.str.67), !dbg !1895
  store ptr %200, ptr %4, align 8, !dbg !1896
  %201 = load ptr, ptr %4, align 8, !dbg !1897
  %202 = icmp eq ptr %201, null, !dbg !1899
  br i1 %202, label %203, label %216, !dbg !1899

203:                                              ; preds = %198
  %204 = load ptr, ptr @stderr, align 8, !dbg !1900
  %205 = load ptr, ptr @progName, align 8, !dbg !1902
  %206 = call ptr @__errno_location() #14, !dbg !1903
  %207 = load i32, ptr %206, align 4, !dbg !1903
  %208 = call ptr @strerror(i32 noundef %207) #10, !dbg !1904
  %209 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %204, ptr noundef @.str.68, ptr noundef %205, ptr noundef @outName, ptr noundef %208) #10, !dbg !1905
  %210 = load ptr, ptr %3, align 8, !dbg !1906
  %211 = icmp ne ptr %210, null, !dbg !1908
  br i1 %211, label %212, label %215, !dbg !1908

212:                                              ; preds = %203
  %213 = load ptr, ptr %3, align 8, !dbg !1909
  %214 = call i32 @fclose(ptr noundef %213), !dbg !1910
  br label %215, !dbg !1910

215:                                              ; preds = %212, %203
  call void @setExit(i32 noundef 1), !dbg !1911
  br label %294, !dbg !1912

216:                                              ; preds = %198
  %217 = load ptr, ptr %3, align 8, !dbg !1913
  %218 = icmp eq ptr %217, null, !dbg !1915
  br i1 %218, label %219, label %232, !dbg !1915

219:                                              ; preds = %216
  %220 = load ptr, ptr @stderr, align 8, !dbg !1916
  %221 = load ptr, ptr @progName, align 8, !dbg !1918
  %222 = call ptr @__errno_location() #14, !dbg !1919
  %223 = load i32, ptr %222, align 4, !dbg !1919
  %224 = call ptr @strerror(i32 noundef %223) #10, !dbg !1920
  %225 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %220, ptr noundef @.str.57, ptr noundef %221, ptr noundef @inName, ptr noundef %224) #10, !dbg !1921
  %226 = load ptr, ptr %4, align 8, !dbg !1922
  %227 = icmp ne ptr %226, null, !dbg !1924
  br i1 %227, label %228, label %231, !dbg !1924

228:                                              ; preds = %219
  %229 = load ptr, ptr %4, align 8, !dbg !1925
  %230 = call i32 @fclose(ptr noundef %229), !dbg !1926
  br label %231, !dbg !1926

231:                                              ; preds = %228, %219
  call void @setExit(i32 noundef 1), !dbg !1927
  br label %294, !dbg !1928

232:                                              ; preds = %216
  br label %234, !dbg !1929

233:                                              ; preds = %161
  call void @panic(ptr noundef @.str.84) #13, !dbg !1930
  unreachable, !dbg !1930

234:                                              ; preds = %232, %197, %178
  %235 = load i32, ptr @verbosity, align 4, !dbg !1931
  %236 = icmp sge i32 %235, 1, !dbg !1933
  br i1 %236, label %237, label %242, !dbg !1933

237:                                              ; preds = %234
  %238 = load ptr, ptr @stderr, align 8, !dbg !1934
  %239 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %238, ptr noundef @.str.70, ptr noundef @inName) #10, !dbg !1936
  call void @pad(ptr noundef @inName), !dbg !1937
  %240 = load ptr, ptr @stderr, align 8, !dbg !1938
  %241 = call i32 @fflush(ptr noundef %240), !dbg !1939
  br label %242, !dbg !1940

242:                                              ; preds = %237, %234
  %243 = load ptr, ptr %4, align 8, !dbg !1941
  store ptr %243, ptr @outputHandleJustInCase, align 8, !dbg !1942
  store i8 1, ptr @deleteOutputOnInterrupt, align 1, !dbg !1943
  %244 = load ptr, ptr %3, align 8, !dbg !1944
  %245 = load ptr, ptr %4, align 8, !dbg !1945
  %246 = call zeroext i8 @uncompressStream(ptr noundef %244, ptr noundef %245), !dbg !1946
  store i8 %246, ptr %7, align 1, !dbg !1947
  store ptr null, ptr @outputHandleJustInCase, align 8, !dbg !1948
  %247 = load i8, ptr %7, align 1, !dbg !1949
  %248 = icmp ne i8 %247, 0, !dbg !1949
  br i1 %248, label %249, label %263, !dbg !1949

249:                                              ; preds = %242
  %250 = load i32, ptr @srcMode, align 4, !dbg !1951
  %251 = icmp eq i32 %250, 3, !dbg !1954
  br i1 %251, label %252, label %262, !dbg !1954

252:                                              ; preds = %249
  call void @applySavedTimeInfoToOutputFile(ptr noundef @outName), !dbg !1955
  store i8 0, ptr @deleteOutputOnInterrupt, align 1, !dbg !1957
  %253 = load i8, ptr @keepInputFiles, align 1, !dbg !1958
  %254 = icmp ne i8 %253, 0, !dbg !1958
  br i1 %254, label %261, label %255, !dbg !1960

255:                                              ; preds = %252
    #dbg_declare(ptr %10, !1961, !DIExpression(), !1963)
  %256 = call i32 @remove(ptr noundef @inName) #10, !dbg !1964
  store i32 %256, ptr %10, align 4, !dbg !1963
  %257 = load i32, ptr %10, align 4, !dbg !1965
  %258 = icmp ne i32 %257, 0, !dbg !1965
  br i1 %258, label %259, label %260, !dbg !1965

259:                                              ; preds = %255
  call void @ioError() #13, !dbg !1965
  unreachable, !dbg !1965

260:                                              ; preds = %255
  br label %261, !dbg !1968

261:                                              ; preds = %260, %252
  br label %262, !dbg !1969

262:                                              ; preds = %261, %249
  br label %273, !dbg !1970

263:                                              ; preds = %242
  store i8 1, ptr @unzFailsExist, align 1, !dbg !1971
  store i8 0, ptr @deleteOutputOnInterrupt, align 1, !dbg !1973
  %264 = load i32, ptr @srcMode, align 4, !dbg !1974
  %265 = icmp eq i32 %264, 3, !dbg !1976
  br i1 %265, label %266, label %272, !dbg !1976

266:                                              ; preds = %263
    #dbg_declare(ptr %11, !1977, !DIExpression(), !1979)
  %267 = call i32 @remove(ptr noundef @outName) #10, !dbg !1980
  store i32 %267, ptr %11, align 4, !dbg !1979
  %268 = load i32, ptr %11, align 4, !dbg !1981
  %269 = icmp ne i32 %268, 0, !dbg !1981
  br i1 %269, label %270, label %271, !dbg !1981

270:                                              ; preds = %266
  call void @ioError() #13, !dbg !1981
  unreachable, !dbg !1981

271:                                              ; preds = %266
  br label %272, !dbg !1984

272:                                              ; preds = %271, %263
  br label %273

273:                                              ; preds = %272, %262
  store i8 0, ptr @deleteOutputOnInterrupt, align 1, !dbg !1985
  %274 = load i8, ptr %7, align 1, !dbg !1986
  %275 = icmp ne i8 %274, 0, !dbg !1986
  br i1 %275, label %276, label %283, !dbg !1986

276:                                              ; preds = %273
  %277 = load i32, ptr @verbosity, align 4, !dbg !1988
  %278 = icmp sge i32 %277, 1, !dbg !1991
  br i1 %278, label %279, label %282, !dbg !1991

279:                                              ; preds = %276
  %280 = load ptr, ptr @stderr, align 8, !dbg !1992
  %281 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %280, ptr noundef @.str.85) #10, !dbg !1993
  br label %282, !dbg !1993

282:                                              ; preds = %279, %276
  br label %294, !dbg !1994

283:                                              ; preds = %273
  call void @setExit(i32 noundef 2), !dbg !1995
  %284 = load i32, ptr @verbosity, align 4, !dbg !1997
  %285 = icmp sge i32 %284, 1, !dbg !1999
  br i1 %285, label %286, label %289, !dbg !1999

286:                                              ; preds = %283
  %287 = load ptr, ptr @stderr, align 8, !dbg !2000
  %288 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %287, ptr noundef @.str.86) #10, !dbg !2001
  br label %293, !dbg !2001

289:                                              ; preds = %283
  %290 = load ptr, ptr @stderr, align 8, !dbg !2002
  %291 = load ptr, ptr @progName, align 8, !dbg !2003
  %292 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %290, ptr noundef @.str.87, ptr noundef %291, ptr noundef @inName) #10, !dbg !2004
  br label %293

293:                                              ; preds = %289, %286
  br label %294

294:                                              ; preds = %62, %69, %88, %110, %134, %148, %170, %196, %215, %231, %293, %282
  ret void, !dbg !2005
}

; Function Attrs: noinline nounwind uwtable
define internal void @setExit(i32 noundef %0) #0 !dbg !2006 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
    #dbg_declare(ptr %2, !2009, !DIExpression(), !2010)
  %3 = load i32, ptr %2, align 4, !dbg !2011
  %4 = load i32, ptr @exitValue, align 4, !dbg !2013
  %5 = icmp sgt i32 %3, %4, !dbg !2014
  br i1 %5, label %6, label %8, !dbg !2014

6:                                                ; preds = %1
  %7 = load i32, ptr %2, align 4, !dbg !2015
  store i32 %7, ptr @exitValue, align 4, !dbg !2016
  br label %8, !dbg !2017

8:                                                ; preds = %6, %1
  ret void, !dbg !2018
}

; Function Attrs: noinline nounwind uwtable
define internal void @testf(ptr noundef %0) #0 !dbg !2019 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i8, align 1
  %5 = alloca %struct.stat, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !2020, !DIExpression(), !2021)
    #dbg_declare(ptr %3, !2022, !DIExpression(), !2023)
    #dbg_declare(ptr %4, !2024, !DIExpression(), !2025)
    #dbg_declare(ptr %5, !2026, !DIExpression(), !2027)
  store i8 0, ptr @deleteOutputOnInterrupt, align 1, !dbg !2028
  %6 = load ptr, ptr %2, align 8, !dbg !2029
  %7 = icmp eq ptr %6, null, !dbg !2031
  br i1 %7, label %8, label %12, !dbg !2032

8:                                                ; preds = %1
  %9 = load i32, ptr @srcMode, align 4, !dbg !2033
  %10 = icmp ne i32 %9, 1, !dbg !2034
  br i1 %10, label %11, label %12, !dbg !2032

11:                                               ; preds = %8
  call void @panic(ptr noundef @.str.94) #13, !dbg !2035
  unreachable, !dbg !2035

12:                                               ; preds = %8, %1
  call void @copyFileName(ptr noundef @outName, ptr noundef @.str.6), !dbg !2036
  %13 = load i32, ptr @srcMode, align 4, !dbg !2037
  switch i32 %13, label %19 [
    i32 1, label %14
    i32 3, label %15
    i32 2, label %17
  ], !dbg !2038

14:                                               ; preds = %12
  call void @copyFileName(ptr noundef @inName, ptr noundef @.str.54), !dbg !2039
  br label %19, !dbg !2041

15:                                               ; preds = %12
  %16 = load ptr, ptr %2, align 8, !dbg !2042
  call void @copyFileName(ptr noundef @inName, ptr noundef %16), !dbg !2043
  br label %19, !dbg !2044

17:                                               ; preds = %12
  %18 = load ptr, ptr %2, align 8, !dbg !2045
  call void @copyFileName(ptr noundef @inName, ptr noundef %18), !dbg !2046
  br label %19, !dbg !2047

19:                                               ; preds = %12, %17, %15, %14
  %20 = load i32, ptr @srcMode, align 4, !dbg !2048
  %21 = icmp ne i32 %20, 1, !dbg !2050
  br i1 %21, label %22, label %34, !dbg !2051

22:                                               ; preds = %19
  %23 = call zeroext i8 @containsDubiousChars(ptr noundef @inName), !dbg !2052
  %24 = zext i8 %23 to i32, !dbg !2052
  %25 = icmp ne i32 %24, 0, !dbg !2052
  br i1 %25, label %26, label %34, !dbg !2051

26:                                               ; preds = %22
  %27 = load i8, ptr @noisy, align 1, !dbg !2053
  %28 = icmp ne i8 %27, 0, !dbg !2053
  br i1 %28, label %29, label %33, !dbg !2053

29:                                               ; preds = %26
  %30 = load ptr, ptr @stderr, align 8, !dbg !2056
  %31 = load ptr, ptr @progName, align 8, !dbg !2057
  %32 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %30, ptr noundef @.str.56, ptr noundef %31, ptr noundef @inName) #10, !dbg !2058
  br label %33, !dbg !2058

33:                                               ; preds = %29, %26
  call void @setExit(i32 noundef 1), !dbg !2059
  br label %115, !dbg !2060

34:                                               ; preds = %22, %19
  %35 = load i32, ptr @srcMode, align 4, !dbg !2061
  %36 = icmp ne i32 %35, 1, !dbg !2063
  br i1 %36, label %37, label %47, !dbg !2064

37:                                               ; preds = %34
  %38 = call zeroext i8 @fileExists(ptr noundef @inName), !dbg !2065
  %39 = icmp ne i8 %38, 0, !dbg !2065
  br i1 %39, label %47, label %40, !dbg !2064

40:                                               ; preds = %37
  %41 = load ptr, ptr @stderr, align 8, !dbg !2066
  %42 = load ptr, ptr @progName, align 8, !dbg !2068
  %43 = call ptr @__errno_location() #14, !dbg !2069
  %44 = load i32, ptr %43, align 4, !dbg !2069
  %45 = call ptr @strerror(i32 noundef %44) #10, !dbg !2070
  %46 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %41, ptr noundef @.str.95, ptr noundef %42, ptr noundef @inName, ptr noundef %45) #10, !dbg !2071
  call void @setExit(i32 noundef 1), !dbg !2072
  br label %115, !dbg !2073

47:                                               ; preds = %37, %34
  %48 = load i32, ptr @srcMode, align 4, !dbg !2074
  %49 = icmp ne i32 %48, 1, !dbg !2076
  br i1 %49, label %50, label %61, !dbg !2076

50:                                               ; preds = %47
  %51 = call i32 @stat(ptr noundef @inName, ptr noundef %5) #10, !dbg !2077
  %52 = getelementptr inbounds nuw %struct.stat, ptr %5, i32 0, i32 3, !dbg !2079
  %53 = load i32, ptr %52, align 8, !dbg !2079
  %54 = and i32 %53, 61440, !dbg !2079
  %55 = icmp eq i32 %54, 16384, !dbg !2079
  br i1 %55, label %56, label %60, !dbg !2079

56:                                               ; preds = %50
  %57 = load ptr, ptr @stderr, align 8, !dbg !2081
  %58 = load ptr, ptr @progName, align 8, !dbg !2083
  %59 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %57, ptr noundef @.str.59, ptr noundef %58, ptr noundef @inName) #10, !dbg !2084
  call void @setExit(i32 noundef 1), !dbg !2085
  br label %115, !dbg !2086

60:                                               ; preds = %50
  br label %61, !dbg !2087

61:                                               ; preds = %60, %47
  %62 = load i32, ptr @srcMode, align 4, !dbg !2088
  switch i32 %62, label %90 [
    i32 1, label %63
    i32 2, label %78
    i32 3, label %78
  ], !dbg !2089

63:                                               ; preds = %61
  %64 = load ptr, ptr @stdin, align 8, !dbg !2090
  %65 = call i32 @fileno(ptr noundef %64) #10, !dbg !2093
  %66 = call i32 @isatty(i32 noundef %65) #10, !dbg !2094
  %67 = icmp ne i32 %66, 0, !dbg !2094
  br i1 %67, label %68, label %76, !dbg !2094

68:                                               ; preds = %63
  %69 = load ptr, ptr @stderr, align 8, !dbg !2095
  %70 = load ptr, ptr @progName, align 8, !dbg !2097
  %71 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %69, ptr noundef @.str.82, ptr noundef %70) #10, !dbg !2098
  %72 = load ptr, ptr @stderr, align 8, !dbg !2099
  %73 = load ptr, ptr @progName, align 8, !dbg !2100
  %74 = load ptr, ptr @progName, align 8, !dbg !2101
  %75 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %72, ptr noundef @.str.65, ptr noundef %73, ptr noundef %74) #10, !dbg !2102
  call void @setExit(i32 noundef 1), !dbg !2103
  br label %115, !dbg !2104

76:                                               ; preds = %63
  %77 = load ptr, ptr @stdin, align 8, !dbg !2105
  store ptr %77, ptr %3, align 8, !dbg !2106
  br label %91, !dbg !2107

78:                                               ; preds = %61, %61
  %79 = call noalias ptr @fopen(ptr noundef @inName, ptr noundef @.str.66), !dbg !2108
  store ptr %79, ptr %3, align 8, !dbg !2109
  %80 = load ptr, ptr %3, align 8, !dbg !2110
  %81 = icmp eq ptr %80, null, !dbg !2112
  br i1 %81, label %82, label %89, !dbg !2112

82:                                               ; preds = %78
  %83 = load ptr, ptr @stderr, align 8, !dbg !2113
  %84 = load ptr, ptr @progName, align 8, !dbg !2115
  %85 = call ptr @__errno_location() #14, !dbg !2116
  %86 = load i32, ptr %85, align 4, !dbg !2116
  %87 = call ptr @strerror(i32 noundef %86) #10, !dbg !2117
  %88 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %83, ptr noundef @.str.83, ptr noundef %84, ptr noundef @inName, ptr noundef %87) #10, !dbg !2118
  call void @setExit(i32 noundef 1), !dbg !2119
  br label %115, !dbg !2120

89:                                               ; preds = %78
  br label %91, !dbg !2121

90:                                               ; preds = %61
  call void @panic(ptr noundef @.str.96) #13, !dbg !2122
  unreachable, !dbg !2122

91:                                               ; preds = %89, %76
  %92 = load i32, ptr @verbosity, align 4, !dbg !2123
  %93 = icmp sge i32 %92, 1, !dbg !2125
  br i1 %93, label %94, label %99, !dbg !2125

94:                                               ; preds = %91
  %95 = load ptr, ptr @stderr, align 8, !dbg !2126
  %96 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %95, ptr noundef @.str.70, ptr noundef @inName) #10, !dbg !2128
  call void @pad(ptr noundef @inName), !dbg !2129
  %97 = load ptr, ptr @stderr, align 8, !dbg !2130
  %98 = call i32 @fflush(ptr noundef %97), !dbg !2131
  br label %99, !dbg !2132

99:                                               ; preds = %94, %91
  store ptr null, ptr @outputHandleJustInCase, align 8, !dbg !2133
  %100 = load ptr, ptr %3, align 8, !dbg !2134
  %101 = call zeroext i8 @testStream(ptr noundef %100), !dbg !2135
  store i8 %101, ptr %4, align 1, !dbg !2136
  %102 = load i8, ptr %4, align 1, !dbg !2137
  %103 = zext i8 %102 to i32, !dbg !2137
  %104 = icmp ne i32 %103, 0, !dbg !2137
  br i1 %104, label %105, label %111, !dbg !2139

105:                                              ; preds = %99
  %106 = load i32, ptr @verbosity, align 4, !dbg !2140
  %107 = icmp sge i32 %106, 1, !dbg !2141
  br i1 %107, label %108, label %111, !dbg !2139

108:                                              ; preds = %105
  %109 = load ptr, ptr @stderr, align 8, !dbg !2142
  %110 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %109, ptr noundef @.str.97) #10, !dbg !2143
  br label %111, !dbg !2143

111:                                              ; preds = %108, %105, %99
  %112 = load i8, ptr %4, align 1, !dbg !2144
  %113 = icmp ne i8 %112, 0, !dbg !2144
  br i1 %113, label %115, label %114, !dbg !2146

114:                                              ; preds = %111
  store i8 1, ptr @testFailsExist, align 1, !dbg !2147
  br label %115, !dbg !2148

115:                                              ; preds = %33, %40, %56, %68, %82, %114, %111
  ret void, !dbg !2149
}

; Function Attrs: nounwind
declare void @free(ptr noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @showFileNames() #0 !dbg !2150 {
  %1 = load i8, ptr @noisy, align 1, !dbg !2151
  %2 = icmp ne i8 %1, 0, !dbg !2151
  br i1 %2, label %3, label %6, !dbg !2151

3:                                                ; preds = %0
  %4 = load ptr, ptr @stderr, align 8, !dbg !2153
  %5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.38, ptr noundef @inName, ptr noundef @outName) #10, !dbg !2154
  br label %6, !dbg !2154

6:                                                ; preds = %3, %0
  ret void, !dbg !2155
}

; Function Attrs: noinline noreturn nounwind uwtable
define internal void @cleanUpAndFail(i32 noundef %0) #4 !dbg !2156 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.stat, align 8
  store i32 %0, ptr %2, align 4
    #dbg_declare(ptr %2, !2157, !DIExpression(), !2158)
    #dbg_declare(ptr %3, !2159, !DIExpression(), !2160)
    #dbg_declare(ptr %4, !2161, !DIExpression(), !2162)
  %5 = load i32, ptr @srcMode, align 4, !dbg !2163
  %6 = icmp eq i32 %5, 3, !dbg !2165
  br i1 %6, label %7, label %54, !dbg !2166

7:                                                ; preds = %1
  %8 = load i32, ptr @opMode, align 4, !dbg !2167
  %9 = icmp ne i32 %8, 3, !dbg !2168
  br i1 %9, label %10, label %54, !dbg !2169

10:                                               ; preds = %7
  %11 = load i8, ptr @deleteOutputOnInterrupt, align 1, !dbg !2170
  %12 = zext i8 %11 to i32, !dbg !2170
  %13 = icmp ne i32 %12, 0, !dbg !2170
  br i1 %13, label %14, label %54, !dbg !2169

14:                                               ; preds = %10
  %15 = call i32 @stat(ptr noundef @inName, ptr noundef %4) #10, !dbg !2171
  store i32 %15, ptr %3, align 4, !dbg !2173
  %16 = load i32, ptr %3, align 4, !dbg !2174
  %17 = icmp eq i32 %16, 0, !dbg !2176
  br i1 %17, label %18, label %40, !dbg !2176

18:                                               ; preds = %14
  %19 = load i8, ptr @noisy, align 1, !dbg !2177
  %20 = icmp ne i8 %19, 0, !dbg !2177
  br i1 %20, label %21, label %25, !dbg !2177

21:                                               ; preds = %18
  %22 = load ptr, ptr @stderr, align 8, !dbg !2180
  %23 = load ptr, ptr @progName, align 8, !dbg !2181
  %24 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef @.str.39, ptr noundef %23, ptr noundef @outName) #10, !dbg !2182
  br label %25, !dbg !2182

25:                                               ; preds = %21, %18
  %26 = load ptr, ptr @outputHandleJustInCase, align 8, !dbg !2183
  %27 = icmp ne ptr %26, null, !dbg !2185
  br i1 %27, label %28, label %31, !dbg !2185

28:                                               ; preds = %25
  %29 = load ptr, ptr @outputHandleJustInCase, align 8, !dbg !2186
  %30 = call i32 @fclose(ptr noundef %29), !dbg !2187
  br label %31, !dbg !2187

31:                                               ; preds = %28, %25
  %32 = call i32 @remove(ptr noundef @outName) #10, !dbg !2188
  store i32 %32, ptr %3, align 4, !dbg !2189
  %33 = load i32, ptr %3, align 4, !dbg !2190
  %34 = icmp ne i32 %33, 0, !dbg !2192
  br i1 %34, label %35, label %39, !dbg !2192

35:                                               ; preds = %31
  %36 = load ptr, ptr @stderr, align 8, !dbg !2193
  %37 = load ptr, ptr @progName, align 8, !dbg !2194
  %38 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %36, ptr noundef @.str.40, ptr noundef %37) #10, !dbg !2195
  br label %39, !dbg !2195

39:                                               ; preds = %35, %31
  br label %53, !dbg !2196

40:                                               ; preds = %14
  %41 = load ptr, ptr @stderr, align 8, !dbg !2197
  %42 = load ptr, ptr @progName, align 8, !dbg !2199
  %43 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %41, ptr noundef @.str.41, ptr noundef %42) #10, !dbg !2200
  %44 = load ptr, ptr @stderr, align 8, !dbg !2201
  %45 = load ptr, ptr @progName, align 8, !dbg !2202
  %46 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %44, ptr noundef @.str.42, ptr noundef %45) #10, !dbg !2203
  %47 = load ptr, ptr @stderr, align 8, !dbg !2204
  %48 = load ptr, ptr @progName, align 8, !dbg !2205
  %49 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %47, ptr noundef @.str.43, ptr noundef %48, ptr noundef @outName) #10, !dbg !2206
  %50 = load ptr, ptr @stderr, align 8, !dbg !2207
  %51 = load ptr, ptr @progName, align 8, !dbg !2208
  %52 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %50, ptr noundef @.str.44, ptr noundef %51) #10, !dbg !2209
  br label %53

53:                                               ; preds = %40, %39
  br label %54, !dbg !2210

54:                                               ; preds = %53, %10, %7, %1
  %55 = load i8, ptr @noisy, align 1, !dbg !2211
  %56 = zext i8 %55 to i32, !dbg !2211
  %57 = icmp ne i32 %56, 0, !dbg !2211
  br i1 %57, label %58, label %74, !dbg !2213

58:                                               ; preds = %54
  %59 = load i32, ptr @numFileNames, align 4, !dbg !2214
  %60 = icmp sgt i32 %59, 0, !dbg !2215
  br i1 %60, label %61, label %74, !dbg !2216

61:                                               ; preds = %58
  %62 = load i32, ptr @numFilesProcessed, align 4, !dbg !2217
  %63 = load i32, ptr @numFileNames, align 4, !dbg !2218
  %64 = icmp slt i32 %62, %63, !dbg !2219
  br i1 %64, label %65, label %74, !dbg !2216

65:                                               ; preds = %61
  %66 = load ptr, ptr @stderr, align 8, !dbg !2220
  %67 = load ptr, ptr @progName, align 8, !dbg !2222
  %68 = load ptr, ptr @progName, align 8, !dbg !2223
  %69 = load i32, ptr @numFileNames, align 4, !dbg !2224
  %70 = load i32, ptr @numFileNames, align 4, !dbg !2225
  %71 = load i32, ptr @numFilesProcessed, align 4, !dbg !2226
  %72 = sub nsw i32 %70, %71, !dbg !2227
  %73 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %66, ptr noundef @.str.45, ptr noundef %67, ptr noundef %68, i32 noundef %69, i32 noundef %72) #10, !dbg !2228
  br label %74, !dbg !2229

74:                                               ; preds = %65, %61, %58, %54
  %75 = load i32, ptr %2, align 4, !dbg !2230
  call void @setExit(i32 noundef %75), !dbg !2231
  %76 = load i32, ptr @exitValue, align 4, !dbg !2232
  call void @exit(i32 noundef %76) #12, !dbg !2233
  unreachable, !dbg !2233
}

; Function Attrs: noinline nounwind uwtable
define internal void @cadvise() #0 !dbg !2234 {
  %1 = load i8, ptr @noisy, align 1, !dbg !2235
  %2 = icmp ne i8 %1, 0, !dbg !2235
  br i1 %2, label %3, label %6, !dbg !2235

3:                                                ; preds = %0
  %4 = load ptr, ptr @stderr, align 8, !dbg !2237
  %5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.46) #10, !dbg !2238
  br label %6, !dbg !2238

6:                                                ; preds = %3, %0
  ret void, !dbg !2239
}

; Function Attrs: nounwind
declare i32 @stat(ptr noundef, ptr noundef) #1

declare i32 @fclose(ptr noundef) #5

; Function Attrs: nounwind
declare i32 @remove(ptr noundef) #1

; Function Attrs: nounwind
declare ptr @strncpy(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: nounwind
declare ptr @getenv(ptr noundef) #1

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() #6

; Function Attrs: noinline nounwind uwtable
define internal ptr @mkCell() #0 !dbg !2240 {
  %1 = alloca ptr, align 8
    #dbg_declare(ptr %1, !2243, !DIExpression(), !2244)
  %2 = call ptr @myMalloc(i32 noundef 16), !dbg !2245
  store ptr %2, ptr %1, align 8, !dbg !2246
  %3 = load ptr, ptr %1, align 8, !dbg !2247
  %4 = getelementptr inbounds nuw %struct.zzzz, ptr %3, i32 0, i32 0, !dbg !2248
  store ptr null, ptr %4, align 8, !dbg !2249
  %5 = load ptr, ptr %1, align 8, !dbg !2250
  %6 = getelementptr inbounds nuw %struct.zzzz, ptr %5, i32 0, i32 1, !dbg !2251
  store ptr null, ptr %6, align 8, !dbg !2252
  %7 = load ptr, ptr %1, align 8, !dbg !2253
  ret ptr %7, !dbg !2254
}

; Function Attrs: noinline nounwind uwtable
define internal ptr @myMalloc(i32 noundef %0) #0 !dbg !2255 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  store i32 %0, ptr %2, align 4
    #dbg_declare(ptr %2, !2258, !DIExpression(), !2259)
    #dbg_declare(ptr %3, !2260, !DIExpression(), !2261)
  %4 = load i32, ptr %2, align 4, !dbg !2262
  %5 = sext i32 %4 to i64, !dbg !2263
  %6 = call noalias ptr @malloc(i64 noundef %5) #15, !dbg !2264
  store ptr %6, ptr %3, align 8, !dbg !2265
  %7 = load ptr, ptr %3, align 8, !dbg !2266
  %8 = icmp eq ptr %7, null, !dbg !2268
  br i1 %8, label %9, label %10, !dbg !2268

9:                                                ; preds = %1
  call void @outOfMemory() #13, !dbg !2269
  unreachable, !dbg !2269

10:                                               ; preds = %1
  %11 = load ptr, ptr %3, align 8, !dbg !2270
  ret ptr %11, !dbg !2271
}

; Function Attrs: nounwind
declare ptr @strcpy(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #7

; Function Attrs: noinline noreturn nounwind uwtable
define internal void @outOfMemory() #4 !dbg !2272 {
  %1 = load ptr, ptr @stderr, align 8, !dbg !2273
  %2 = load ptr, ptr @progName, align 8, !dbg !2274
  %3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.48, ptr noundef %2) #10, !dbg !2275
  call void @showFileNames(), !dbg !2276
  call void @cleanUpAndFail(i32 noundef 1) #13, !dbg !2277
  unreachable, !dbg !2277
}

declare ptr @BZ2_bzlibVersion() #5

; Function Attrs: noinline noreturn nounwind uwtable
define internal void @panic(ptr noundef %0) #4 !dbg !2278 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !2281, !DIExpression(), !2282)
  %3 = load ptr, ptr @stderr, align 8, !dbg !2283
  %4 = load ptr, ptr @progName, align 8, !dbg !2284
  %5 = load ptr, ptr %2, align 8, !dbg !2285
  %6 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str.71, ptr noundef %4, ptr noundef %5) #10, !dbg !2286
  call void @showFileNames(), !dbg !2287
  call void @cleanUpAndFail(i32 noundef 3) #13, !dbg !2288
  unreachable, !dbg !2288
}

; Function Attrs: nounwind
declare ptr @strcat(ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal zeroext i8 @containsDubiousChars(ptr noundef %0) #0 !dbg !2289 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !2292, !DIExpression(), !2293)
  ret i8 0, !dbg !2294
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i8 @fileExists(ptr noundef %0) #0 !dbg !2295 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i8, align 1
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !2296, !DIExpression(), !2297)
    #dbg_declare(ptr %3, !2298, !DIExpression(), !2299)
  %5 = load ptr, ptr %2, align 8, !dbg !2300
  %6 = call noalias ptr @fopen(ptr noundef %5, ptr noundef @.str.66), !dbg !2301
  store ptr %6, ptr %3, align 8, !dbg !2299
    #dbg_declare(ptr %4, !2302, !DIExpression(), !2303)
  %7 = load ptr, ptr %3, align 8, !dbg !2304
  %8 = icmp ne ptr %7, null, !dbg !2305
  %9 = zext i1 %8 to i32, !dbg !2305
  %10 = trunc i32 %9 to i8, !dbg !2306
  store i8 %10, ptr %4, align 1, !dbg !2303
  %11 = load ptr, ptr %3, align 8, !dbg !2307
  %12 = icmp ne ptr %11, null, !dbg !2309
  br i1 %12, label %13, label %16, !dbg !2309

13:                                               ; preds = %1
  %14 = load ptr, ptr %3, align 8, !dbg !2310
  %15 = call i32 @fclose(ptr noundef %14), !dbg !2311
  br label %16, !dbg !2311

16:                                               ; preds = %13, %1
  %17 = load i8, ptr %4, align 1, !dbg !2312
  ret i8 %17, !dbg !2313
}

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) #1

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #6

; Function Attrs: noinline nounwind uwtable
define internal zeroext i8 @hasSuffix(ptr noundef %0, ptr noundef %1) #0 !dbg !2314 {
  %3 = alloca i8, align 1
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
    #dbg_declare(ptr %4, !2317, !DIExpression(), !2318)
  store ptr %1, ptr %5, align 8
    #dbg_declare(ptr %5, !2319, !DIExpression(), !2320)
    #dbg_declare(ptr %6, !2321, !DIExpression(), !2322)
  %8 = load ptr, ptr %4, align 8, !dbg !2323
  %9 = call i64 @strlen(ptr noundef %8) #11, !dbg !2324
  %10 = trunc i64 %9 to i32, !dbg !2324
  store i32 %10, ptr %6, align 4, !dbg !2322
    #dbg_declare(ptr %7, !2325, !DIExpression(), !2326)
  %11 = load ptr, ptr %5, align 8, !dbg !2327
  %12 = call i64 @strlen(ptr noundef %11) #11, !dbg !2328
  %13 = trunc i64 %12 to i32, !dbg !2328
  store i32 %13, ptr %7, align 4, !dbg !2326
  %14 = load i32, ptr %6, align 4, !dbg !2329
  %15 = load i32, ptr %7, align 4, !dbg !2331
  %16 = icmp slt i32 %14, %15, !dbg !2332
  br i1 %16, label %17, label %18, !dbg !2332

17:                                               ; preds = %2
  store i8 0, ptr %3, align 1, !dbg !2333
  br label %32, !dbg !2333

18:                                               ; preds = %2
  %19 = load ptr, ptr %4, align 8, !dbg !2334
  %20 = load i32, ptr %6, align 4, !dbg !2336
  %21 = sext i32 %20 to i64, !dbg !2337
  %22 = getelementptr inbounds i8, ptr %19, i64 %21, !dbg !2337
  %23 = load i32, ptr %7, align 4, !dbg !2338
  %24 = sext i32 %23 to i64, !dbg !2339
  %25 = sub i64 0, %24, !dbg !2339
  %26 = getelementptr inbounds i8, ptr %22, i64 %25, !dbg !2339
  %27 = load ptr, ptr %5, align 8, !dbg !2340
  %28 = call i32 @strcmp(ptr noundef %26, ptr noundef %27) #11, !dbg !2341
  %29 = icmp eq i32 %28, 0, !dbg !2342
  br i1 %29, label %30, label %31, !dbg !2342

30:                                               ; preds = %18
  store i8 1, ptr %3, align 1, !dbg !2343
  br label %32, !dbg !2343

31:                                               ; preds = %18
  store i8 0, ptr %3, align 1, !dbg !2344
  br label %32, !dbg !2344

32:                                               ; preds = %31, %30, %17
  %33 = load i8, ptr %3, align 1, !dbg !2345
  ret i8 %33, !dbg !2345
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i8 @notAStandardFile(ptr noundef %0) #0 !dbg !2346 {
  %2 = alloca i8, align 1
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.stat, align 8
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !2347, !DIExpression(), !2348)
    #dbg_declare(ptr %4, !2349, !DIExpression(), !2350)
    #dbg_declare(ptr %5, !2351, !DIExpression(), !2352)
  %6 = load ptr, ptr %3, align 8, !dbg !2353
  %7 = call i32 @lstat(ptr noundef %6, ptr noundef %5) #10, !dbg !2354
  store i32 %7, ptr %4, align 4, !dbg !2355
  %8 = load i32, ptr %4, align 4, !dbg !2356
  %9 = icmp ne i32 %8, 0, !dbg !2358
  br i1 %9, label %10, label %11, !dbg !2358

10:                                               ; preds = %1
  store i8 1, ptr %2, align 1, !dbg !2359
  br label %18, !dbg !2359

11:                                               ; preds = %1
  %12 = getelementptr inbounds nuw %struct.stat, ptr %5, i32 0, i32 3, !dbg !2360
  %13 = load i32, ptr %12, align 8, !dbg !2360
  %14 = and i32 %13, 61440, !dbg !2360
  %15 = icmp eq i32 %14, 32768, !dbg !2360
  br i1 %15, label %16, label %17, !dbg !2360

16:                                               ; preds = %11
  store i8 0, ptr %2, align 1, !dbg !2362
  br label %18, !dbg !2362

17:                                               ; preds = %11
  store i8 1, ptr %2, align 1, !dbg !2363
  br label %18, !dbg !2363

18:                                               ; preds = %17, %16, %10
  %19 = load i8, ptr %2, align 1, !dbg !2364
  ret i8 %19, !dbg !2364
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @countHardLinks(ptr noundef %0) #0 !dbg !2365 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.stat, align 8
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !2368, !DIExpression(), !2369)
    #dbg_declare(ptr %4, !2370, !DIExpression(), !2371)
    #dbg_declare(ptr %5, !2372, !DIExpression(), !2373)
  %6 = load ptr, ptr %3, align 8, !dbg !2374
  %7 = call i32 @lstat(ptr noundef %6, ptr noundef %5) #10, !dbg !2375
  store i32 %7, ptr %4, align 4, !dbg !2376
  %8 = load i32, ptr %4, align 4, !dbg !2377
  %9 = icmp ne i32 %8, 0, !dbg !2379
  br i1 %9, label %10, label %11, !dbg !2379

10:                                               ; preds = %1
  store i32 0, ptr %2, align 4, !dbg !2380
  br label %16, !dbg !2380

11:                                               ; preds = %1
  %12 = getelementptr inbounds nuw %struct.stat, ptr %5, i32 0, i32 2, !dbg !2381
  %13 = load i64, ptr %12, align 8, !dbg !2381
  %14 = sub i64 %13, 1, !dbg !2382
  %15 = trunc i64 %14 to i32, !dbg !2383
  store i32 %15, ptr %2, align 4, !dbg !2384
  br label %16, !dbg !2384

16:                                               ; preds = %11, %10
  %17 = load i32, ptr %2, align 4, !dbg !2385
  ret i32 %17, !dbg !2385
}

; Function Attrs: noinline nounwind uwtable
define internal void @saveInputFileMetaInfo(ptr noundef %0) #0 !dbg !2386 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !2387, !DIExpression(), !2388)
    #dbg_declare(ptr %3, !2389, !DIExpression(), !2390)
  %4 = load ptr, ptr %2, align 8, !dbg !2391
  %5 = call i32 @stat(ptr noundef %4, ptr noundef @fileMetaInfo) #10, !dbg !2392
  store i32 %5, ptr %3, align 4, !dbg !2393
  %6 = load i32, ptr %3, align 4, !dbg !2394
  %7 = icmp ne i32 %6, 0, !dbg !2394
  br i1 %7, label %8, label %9, !dbg !2394

8:                                                ; preds = %1
  call void @ioError() #13, !dbg !2394
  unreachable, !dbg !2394

9:                                                ; preds = %1
  ret void, !dbg !2397
}

; Function Attrs: nounwind
declare i32 @isatty(i32 noundef) #1

; Function Attrs: nounwind
declare i32 @fileno(ptr noundef) #1

declare noalias ptr @fopen(ptr noundef, ptr noundef) #5

; Function Attrs: noinline nounwind uwtable
define internal ptr @fopen_output_safely(ptr noundef %0, ptr noundef %1) #0 !dbg !2398 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
    #dbg_declare(ptr %4, !2403, !DIExpression(), !2404)
  store ptr %1, ptr %5, align 8
    #dbg_declare(ptr %5, !2405, !DIExpression(), !2406)
    #dbg_declare(ptr %6, !2407, !DIExpression(), !2408)
    #dbg_declare(ptr %7, !2409, !DIExpression(), !2410)
  %8 = load ptr, ptr %4, align 8, !dbg !2411
  %9 = call i32 (ptr, i32, ...) @open(ptr noundef %8, i32 noundef 193, i32 noundef 384), !dbg !2412
  store i32 %9, ptr %7, align 4, !dbg !2413
  %10 = load i32, ptr %7, align 4, !dbg !2414
  %11 = icmp eq i32 %10, -1, !dbg !2416
  br i1 %11, label %12, label %13, !dbg !2416

12:                                               ; preds = %2
  store ptr null, ptr %3, align 8, !dbg !2417
  br label %24, !dbg !2417

13:                                               ; preds = %2
  %14 = load i32, ptr %7, align 4, !dbg !2418
  %15 = load ptr, ptr %5, align 8, !dbg !2419
  %16 = call noalias ptr @fdopen(i32 noundef %14, ptr noundef %15) #10, !dbg !2420
  store ptr %16, ptr %6, align 8, !dbg !2421
  %17 = load ptr, ptr %6, align 8, !dbg !2422
  %18 = icmp eq ptr %17, null, !dbg !2424
  br i1 %18, label %19, label %22, !dbg !2424

19:                                               ; preds = %13
  %20 = load i32, ptr %7, align 4, !dbg !2425
  %21 = call i32 @close(i32 noundef %20), !dbg !2426
  br label %22, !dbg !2426

22:                                               ; preds = %19, %13
  %23 = load ptr, ptr %6, align 8, !dbg !2427
  store ptr %23, ptr %3, align 8, !dbg !2428
  br label %24, !dbg !2428

24:                                               ; preds = %22, %12
  %25 = load ptr, ptr %3, align 8, !dbg !2429
  ret ptr %25, !dbg !2429
}

; Function Attrs: noinline nounwind uwtable
define internal void @pad(ptr noundef %0) #0 !dbg !2430 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !2431, !DIExpression(), !2432)
    #dbg_declare(ptr %3, !2433, !DIExpression(), !2434)
  %4 = load ptr, ptr %2, align 8, !dbg !2435
  %5 = call i64 @strlen(ptr noundef %4) #11, !dbg !2437
  %6 = trunc i64 %5 to i32, !dbg !2438
  %7 = load i32, ptr @longestFileName, align 4, !dbg !2439
  %8 = icmp sge i32 %6, %7, !dbg !2440
  br i1 %8, label %9, label %10, !dbg !2440

9:                                                ; preds = %1
  br label %25, !dbg !2441

10:                                               ; preds = %1
  store i32 1, ptr %3, align 4, !dbg !2442
  br label %11, !dbg !2444

11:                                               ; preds = %22, %10
  %12 = load i32, ptr %3, align 4, !dbg !2445
  %13 = load i32, ptr @longestFileName, align 4, !dbg !2447
  %14 = load ptr, ptr %2, align 8, !dbg !2448
  %15 = call i64 @strlen(ptr noundef %14) #11, !dbg !2449
  %16 = trunc i64 %15 to i32, !dbg !2450
  %17 = sub nsw i32 %13, %16, !dbg !2451
  %18 = icmp sle i32 %12, %17, !dbg !2452
  br i1 %18, label %19, label %25, !dbg !2453

19:                                               ; preds = %11
  %20 = load ptr, ptr @stderr, align 8, !dbg !2454
  %21 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef @.str.72) #10, !dbg !2455
  br label %22, !dbg !2455

22:                                               ; preds = %19
  %23 = load i32, ptr %3, align 4, !dbg !2456
  %24 = add nsw i32 %23, 1, !dbg !2456
  store i32 %24, ptr %3, align 4, !dbg !2456
  br label %11, !dbg !2457, !llvm.loop !2458

25:                                               ; preds = %9, %11
  ret void, !dbg !2460
}

declare i32 @fflush(ptr noundef) #5

; Function Attrs: noinline nounwind uwtable
define internal void @compressStream(ptr noundef %0, ptr noundef %1) #0 !dbg !2461 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca [5000 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [32 x i8], align 16
  %17 = alloca [32 x i8], align 16
  %18 = alloca %struct.UInt64, align 1
  %19 = alloca %struct.UInt64, align 1
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !2464, !DIExpression(), !2465)
  store ptr %1, ptr %4, align 8
    #dbg_declare(ptr %4, !2466, !DIExpression(), !2467)
    #dbg_declare(ptr %5, !2468, !DIExpression(), !2472)
  store ptr null, ptr %5, align 8, !dbg !2472
    #dbg_declare(ptr %6, !2473, !DIExpression(), !2477)
    #dbg_declare(ptr %7, !2478, !DIExpression(), !2479)
    #dbg_declare(ptr %8, !2480, !DIExpression(), !2482)
    #dbg_declare(ptr %9, !2483, !DIExpression(), !2484)
    #dbg_declare(ptr %10, !2485, !DIExpression(), !2486)
    #dbg_declare(ptr %11, !2487, !DIExpression(), !2488)
    #dbg_declare(ptr %12, !2489, !DIExpression(), !2490)
    #dbg_declare(ptr %13, !2491, !DIExpression(), !2492)
    #dbg_declare(ptr %14, !2493, !DIExpression(), !2494)
  %22 = load ptr, ptr %3, align 8, !dbg !2495
  %23 = call i32 @ferror(ptr noundef %22) #10, !dbg !2497
  %24 = icmp ne i32 %23, 0, !dbg !2497
  br i1 %24, label %25, label %26, !dbg !2497

25:                                               ; preds = %2
  br label %163, !dbg !2498

26:                                               ; preds = %2
  %27 = load ptr, ptr %4, align 8, !dbg !2499
  %28 = call i32 @ferror(ptr noundef %27) #10, !dbg !2501
  %29 = icmp ne i32 %28, 0, !dbg !2501
  br i1 %29, label %30, label %31, !dbg !2501

30:                                               ; preds = %26
  br label %163, !dbg !2502

31:                                               ; preds = %26
  %32 = load ptr, ptr %4, align 8, !dbg !2503
  %33 = load i32, ptr @blockSize100k, align 4, !dbg !2504
  %34 = load i32, ptr @verbosity, align 4, !dbg !2505
  %35 = load i32, ptr @workFactor, align 4, !dbg !2506
  %36 = call ptr @BZ2_bzWriteOpen(ptr noundef %12, ptr noundef %32, i32 noundef %33, i32 noundef %34, i32 noundef %35), !dbg !2507
  store ptr %36, ptr %5, align 8, !dbg !2508
  %37 = load i32, ptr %12, align 4, !dbg !2509
  %38 = icmp ne i32 %37, 0, !dbg !2511
  br i1 %38, label %39, label %40, !dbg !2511

39:                                               ; preds = %31
  br label %157, !dbg !2512

40:                                               ; preds = %31
  %41 = load i32, ptr @verbosity, align 4, !dbg !2513
  %42 = icmp sge i32 %41, 2, !dbg !2515
  br i1 %42, label %43, label %46, !dbg !2515

43:                                               ; preds = %40
  %44 = load ptr, ptr @stderr, align 8, !dbg !2516
  %45 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %44, ptr noundef @.str.73) #10, !dbg !2517
  br label %46, !dbg !2517

46:                                               ; preds = %43, %40
  br label %47, !dbg !2518

47:                                               ; preds = %46, %72
  %48 = load ptr, ptr %3, align 8, !dbg !2519
  %49 = call zeroext i8 @myfeof(ptr noundef %48), !dbg !2522
  %50 = icmp ne i8 %49, 0, !dbg !2522
  br i1 %50, label %51, label %52, !dbg !2522

51:                                               ; preds = %47
  br label %73, !dbg !2523

52:                                               ; preds = %47
  %53 = getelementptr inbounds [5000 x i8], ptr %6, i64 0, i64 0, !dbg !2524
  %54 = load ptr, ptr %3, align 8, !dbg !2525
  %55 = call i64 @fread(ptr noundef %53, i64 noundef 1, i64 noundef 5000, ptr noundef %54), !dbg !2526
  %56 = trunc i64 %55 to i32, !dbg !2526
  store i32 %56, ptr %7, align 4, !dbg !2527
  %57 = load ptr, ptr %3, align 8, !dbg !2528
  %58 = call i32 @ferror(ptr noundef %57) #10, !dbg !2530
  %59 = icmp ne i32 %58, 0, !dbg !2530
  br i1 %59, label %60, label %61, !dbg !2530

60:                                               ; preds = %52
  br label %163, !dbg !2531

61:                                               ; preds = %52
  %62 = load i32, ptr %7, align 4, !dbg !2532
  %63 = icmp sgt i32 %62, 0, !dbg !2534
  br i1 %63, label %64, label %68, !dbg !2534

64:                                               ; preds = %61
  %65 = load ptr, ptr %5, align 8, !dbg !2535
  %66 = getelementptr inbounds [5000 x i8], ptr %6, i64 0, i64 0, !dbg !2536
  %67 = load i32, ptr %7, align 4, !dbg !2537
  call void @BZ2_bzWrite(ptr noundef %12, ptr noundef %65, ptr noundef %66, i32 noundef %67), !dbg !2538
  br label %68, !dbg !2538

68:                                               ; preds = %64, %61
  %69 = load i32, ptr %12, align 4, !dbg !2539
  %70 = icmp ne i32 %69, 0, !dbg !2541
  br i1 %70, label %71, label %72, !dbg !2541

71:                                               ; preds = %68
  br label %157, !dbg !2542

72:                                               ; preds = %68
  br label %47, !dbg !2518, !llvm.loop !2543

73:                                               ; preds = %51
  %74 = load ptr, ptr %5, align 8, !dbg !2545
  call void @BZ2_bzWriteClose64(ptr noundef %12, ptr noundef %74, i32 noundef 0, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11), !dbg !2546
  %75 = load i32, ptr %12, align 4, !dbg !2547
  %76 = icmp ne i32 %75, 0, !dbg !2549
  br i1 %76, label %77, label %78, !dbg !2549

77:                                               ; preds = %73
  br label %157, !dbg !2550

78:                                               ; preds = %73
  %79 = load ptr, ptr %4, align 8, !dbg !2551
  %80 = call i32 @ferror(ptr noundef %79) #10, !dbg !2553
  %81 = icmp ne i32 %80, 0, !dbg !2553
  br i1 %81, label %82, label %83, !dbg !2553

82:                                               ; preds = %78
  br label %163, !dbg !2554

83:                                               ; preds = %78
  %84 = load ptr, ptr %4, align 8, !dbg !2555
  %85 = call i32 @fflush(ptr noundef %84), !dbg !2556
  store i32 %85, ptr %14, align 4, !dbg !2557
  %86 = load i32, ptr %14, align 4, !dbg !2558
  %87 = icmp eq i32 %86, -1, !dbg !2560
  br i1 %87, label %88, label %89, !dbg !2560

88:                                               ; preds = %83
  br label %163, !dbg !2561

89:                                               ; preds = %83
  %90 = load ptr, ptr %4, align 8, !dbg !2562
  %91 = load ptr, ptr @stdout, align 8, !dbg !2564
  %92 = icmp ne ptr %90, %91, !dbg !2565
  br i1 %92, label %93, label %107, !dbg !2565

93:                                               ; preds = %89
    #dbg_declare(ptr %15, !2566, !DIExpression(), !2568)
  %94 = load ptr, ptr %4, align 8, !dbg !2569
  %95 = call i32 @fileno(ptr noundef %94) #10, !dbg !2570
  store i32 %95, ptr %15, align 4, !dbg !2568
  %96 = load i32, ptr %15, align 4, !dbg !2571
  %97 = icmp slt i32 %96, 0, !dbg !2573
  br i1 %97, label %98, label %99, !dbg !2573

98:                                               ; preds = %93
  br label %163, !dbg !2574

99:                                               ; preds = %93
  %100 = load i32, ptr %15, align 4, !dbg !2575
  call void @applySavedFileAttrToOutputFile(i32 noundef %100), !dbg !2576
  %101 = load ptr, ptr %4, align 8, !dbg !2577
  %102 = call i32 @fclose(ptr noundef %101), !dbg !2578
  store i32 %102, ptr %14, align 4, !dbg !2579
  store ptr null, ptr @outputHandleJustInCase, align 8, !dbg !2580
  %103 = load i32, ptr %14, align 4, !dbg !2581
  %104 = icmp eq i32 %103, -1, !dbg !2583
  br i1 %104, label %105, label %106, !dbg !2583

105:                                              ; preds = %99
  br label %163, !dbg !2584

106:                                              ; preds = %99
  br label %107, !dbg !2585

107:                                              ; preds = %106, %89
  store ptr null, ptr @outputHandleJustInCase, align 8, !dbg !2586
  %108 = load ptr, ptr %3, align 8, !dbg !2587
  %109 = call i32 @ferror(ptr noundef %108) #10, !dbg !2589
  %110 = icmp ne i32 %109, 0, !dbg !2589
  br i1 %110, label %111, label %112, !dbg !2589

111:                                              ; preds = %107
  br label %163, !dbg !2590

112:                                              ; preds = %107
  %113 = load ptr, ptr %3, align 8, !dbg !2591
  %114 = call i32 @fclose(ptr noundef %113), !dbg !2592
  store i32 %114, ptr %14, align 4, !dbg !2593
  %115 = load i32, ptr %14, align 4, !dbg !2594
  %116 = icmp eq i32 %115, -1, !dbg !2596
  br i1 %116, label %117, label %118, !dbg !2596

117:                                              ; preds = %112
  br label %163, !dbg !2597

118:                                              ; preds = %112
  %119 = load i32, ptr @verbosity, align 4, !dbg !2598
  %120 = icmp sge i32 %119, 1, !dbg !2600
  br i1 %120, label %121, label %156, !dbg !2600

121:                                              ; preds = %118
  %122 = load i32, ptr %8, align 4, !dbg !2601
  %123 = icmp eq i32 %122, 0, !dbg !2604
  br i1 %123, label %124, label %130, !dbg !2605

124:                                              ; preds = %121
  %125 = load i32, ptr %9, align 4, !dbg !2606
  %126 = icmp eq i32 %125, 0, !dbg !2607
  br i1 %126, label %127, label %130, !dbg !2605

127:                                              ; preds = %124
  %128 = load ptr, ptr @stderr, align 8, !dbg !2608
  %129 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %128, ptr noundef @.str.74) #10, !dbg !2610
  br label %155, !dbg !2611

130:                                              ; preds = %124, %121
    #dbg_declare(ptr %16, !2612, !DIExpression(), !2615)
    #dbg_declare(ptr %17, !2616, !DIExpression(), !2617)
    #dbg_declare(ptr %18, !2618, !DIExpression(), !2624)
    #dbg_declare(ptr %19, !2625, !DIExpression(), !2626)
    #dbg_declare(ptr %20, !2627, !DIExpression(), !2628)
    #dbg_declare(ptr %21, !2629, !DIExpression(), !2630)
  %131 = load i32, ptr %8, align 4, !dbg !2631
  %132 = load i32, ptr %9, align 4, !dbg !2632
  call void @uInt64_from_UInt32s(ptr noundef %18, i32 noundef %131, i32 noundef %132), !dbg !2633
  %133 = load i32, ptr %10, align 4, !dbg !2634
  %134 = load i32, ptr %11, align 4, !dbg !2635
  call void @uInt64_from_UInt32s(ptr noundef %19, i32 noundef %133, i32 noundef %134), !dbg !2636
  %135 = call double @uInt64_to_double(ptr noundef %18), !dbg !2637
  store double %135, ptr %20, align 8, !dbg !2638
  %136 = call double @uInt64_to_double(ptr noundef %19), !dbg !2639
  store double %136, ptr %21, align 8, !dbg !2640
  %137 = getelementptr inbounds [32 x i8], ptr %16, i64 0, i64 0, !dbg !2641
  call void @uInt64_toAscii(ptr noundef %137, ptr noundef %18), !dbg !2642
  %138 = getelementptr inbounds [32 x i8], ptr %17, i64 0, i64 0, !dbg !2643
  call void @uInt64_toAscii(ptr noundef %138, ptr noundef %19), !dbg !2644
  %139 = load ptr, ptr @stderr, align 8, !dbg !2645
  %140 = load double, ptr %20, align 8, !dbg !2646
  %141 = load double, ptr %21, align 8, !dbg !2647
  %142 = fdiv double %140, %141, !dbg !2648
  %143 = load double, ptr %21, align 8, !dbg !2649
  %144 = fmul double 8.000000e+00, %143, !dbg !2650
  %145 = load double, ptr %20, align 8, !dbg !2651
  %146 = fdiv double %144, %145, !dbg !2652
  %147 = load double, ptr %21, align 8, !dbg !2653
  %148 = load double, ptr %20, align 8, !dbg !2654
  %149 = fdiv double %147, %148, !dbg !2655
  %150 = fsub double 1.000000e+00, %149, !dbg !2656
  %151 = fmul double 1.000000e+02, %150, !dbg !2657
  %152 = getelementptr inbounds [32 x i8], ptr %16, i64 0, i64 0, !dbg !2658
  %153 = getelementptr inbounds [32 x i8], ptr %17, i64 0, i64 0, !dbg !2659
  %154 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %139, ptr noundef @.str.75, double noundef %142, double noundef %146, double noundef %151, ptr noundef %152, ptr noundef %153) #10, !dbg !2660
  br label %155

155:                                              ; preds = %130, %127
  br label %156, !dbg !2661

156:                                              ; preds = %155, %118
  ret void, !dbg !2662

157:                                              ; preds = %77, %71, %39
    #dbg_label(!2663, !2664)
  %158 = load ptr, ptr %5, align 8, !dbg !2665
  call void @BZ2_bzWriteClose64(ptr noundef %13, ptr noundef %158, i32 noundef 1, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11), !dbg !2666
  %159 = load i32, ptr %12, align 4, !dbg !2667
  switch i32 %159, label %164 [
    i32 -9, label %160
    i32 -3, label %161
    i32 -6, label %162
  ], !dbg !2668

160:                                              ; preds = %157
  call void @configError() #13, !dbg !2669
  unreachable, !dbg !2669

161:                                              ; preds = %157
  call void @outOfMemory() #13, !dbg !2671
  unreachable, !dbg !2671

162:                                              ; preds = %157
  br label %163, !dbg !2671

163:                                              ; preds = %162, %117, %111, %105, %98, %88, %82, %60, %30, %25
    #dbg_label(!2672, !2673)
  call void @ioError() #13, !dbg !2674
  unreachable, !dbg !2674

164:                                              ; preds = %157
  call void @panic(ptr noundef @.str.76) #13, !dbg !2675
  unreachable, !dbg !2675
}

; Function Attrs: noinline nounwind uwtable
define internal void @applySavedTimeInfoToOutputFile(ptr noundef %0) #0 !dbg !2676 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.utimbuf, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !2677, !DIExpression(), !2678)
    #dbg_declare(ptr %3, !2679, !DIExpression(), !2680)
    #dbg_declare(ptr %4, !2681, !DIExpression(), !2687)
  %5 = load i64, ptr getelementptr inbounds nuw (%struct.stat, ptr @fileMetaInfo, i32 0, i32 11), align 8, !dbg !2688
  %6 = getelementptr inbounds nuw %struct.utimbuf, ptr %4, i32 0, i32 0, !dbg !2689
  store i64 %5, ptr %6, align 8, !dbg !2690
  %7 = load i64, ptr getelementptr inbounds nuw (%struct.stat, ptr @fileMetaInfo, i32 0, i32 12), align 8, !dbg !2691
  %8 = getelementptr inbounds nuw %struct.utimbuf, ptr %4, i32 0, i32 1, !dbg !2692
  store i64 %7, ptr %8, align 8, !dbg !2693
  %9 = load ptr, ptr %2, align 8, !dbg !2694
  %10 = call i32 @utime(ptr noundef %9, ptr noundef %4) #10, !dbg !2695
  store i32 %10, ptr %3, align 4, !dbg !2696
  %11 = load i32, ptr %3, align 4, !dbg !2697
  %12 = icmp ne i32 %11, 0, !dbg !2697
  br i1 %12, label %13, label %14, !dbg !2697

13:                                               ; preds = %1
  call void @ioError() #13, !dbg !2697
  unreachable, !dbg !2697

14:                                               ; preds = %1
  ret void, !dbg !2700
}

; Function Attrs: noinline noreturn nounwind uwtable
define internal void @ioError() #4 !dbg !2701 {
  %1 = load ptr, ptr @stderr, align 8, !dbg !2702
  %2 = load ptr, ptr @progName, align 8, !dbg !2703
  %3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.78, ptr noundef %2) #10, !dbg !2704
  %4 = load ptr, ptr @progName, align 8, !dbg !2705
  call void @perror(ptr noundef %4), !dbg !2706
  call void @showFileNames(), !dbg !2707
  call void @cleanUpAndFail(i32 noundef 1) #13, !dbg !2708
  unreachable, !dbg !2708
}

; Function Attrs: nounwind
declare i32 @lstat(ptr noundef, ptr noundef) #1

declare i32 @open(ptr noundef, i32 noundef, ...) #5

; Function Attrs: nounwind
declare noalias ptr @fdopen(i32 noundef, ptr noundef) #1

declare i32 @close(i32 noundef) #5

; Function Attrs: nounwind
declare i32 @ferror(ptr noundef) #1

declare ptr @BZ2_bzWriteOpen(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #5

; Function Attrs: noinline nounwind uwtable
define internal zeroext i8 @myfeof(ptr noundef %0) #0 !dbg !2709 {
  %2 = alloca i8, align 1
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !2712, !DIExpression(), !2713)
    #dbg_declare(ptr %4, !2714, !DIExpression(), !2715)
  %5 = load ptr, ptr %3, align 8, !dbg !2716
  %6 = call i32 @fgetc(ptr noundef %5), !dbg !2717
  store i32 %6, ptr %4, align 4, !dbg !2715
  %7 = load i32, ptr %4, align 4, !dbg !2718
  %8 = icmp eq i32 %7, -1, !dbg !2720
  br i1 %8, label %9, label %10, !dbg !2720

9:                                                ; preds = %1
  store i8 1, ptr %2, align 1, !dbg !2721
  br label %14, !dbg !2721

10:                                               ; preds = %1
  %11 = load i32, ptr %4, align 4, !dbg !2722
  %12 = load ptr, ptr %3, align 8, !dbg !2723
  %13 = call i32 @ungetc(i32 noundef %11, ptr noundef %12), !dbg !2724
  store i8 0, ptr %2, align 1, !dbg !2725
  br label %14, !dbg !2725

14:                                               ; preds = %10, %9
  %15 = load i8, ptr %2, align 1, !dbg !2726
  ret i8 %15, !dbg !2726
}

declare i64 @fread(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #5

declare void @BZ2_bzWrite(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #5

declare void @BZ2_bzWriteClose64(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: noinline nounwind uwtable
define internal void @applySavedFileAttrToOutputFile(i32 noundef %0) #0 !dbg !2727 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
    #dbg_declare(ptr %2, !2728, !DIExpression(), !2729)
    #dbg_declare(ptr %3, !2730, !DIExpression(), !2731)
  %4 = load i32, ptr %2, align 4, !dbg !2732
  %5 = load i32, ptr getelementptr inbounds nuw (%struct.stat, ptr @fileMetaInfo, i32 0, i32 3), align 8, !dbg !2733
  %6 = call i32 @fchmod(i32 noundef %4, i32 noundef %5) #10, !dbg !2734
  store i32 %6, ptr %3, align 4, !dbg !2735
  %7 = load i32, ptr %3, align 4, !dbg !2736
  %8 = icmp ne i32 %7, 0, !dbg !2736
  br i1 %8, label %9, label %10, !dbg !2736

9:                                                ; preds = %1
  call void @ioError() #13, !dbg !2736
  unreachable, !dbg !2736

10:                                               ; preds = %1
  %11 = load i32, ptr %2, align 4, !dbg !2739
  %12 = load i32, ptr getelementptr inbounds nuw (%struct.stat, ptr @fileMetaInfo, i32 0, i32 4), align 4, !dbg !2740
  %13 = load i32, ptr getelementptr inbounds nuw (%struct.stat, ptr @fileMetaInfo, i32 0, i32 5), align 8, !dbg !2741
  %14 = call i32 @fchown(i32 noundef %11, i32 noundef %12, i32 noundef %13) #10, !dbg !2742
  ret void, !dbg !2743
}

; Function Attrs: noinline nounwind uwtable
define internal void @uInt64_from_UInt32s(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 !dbg !2744 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
    #dbg_declare(ptr %4, !2748, !DIExpression(), !2749)
  store i32 %1, ptr %5, align 4
    #dbg_declare(ptr %5, !2750, !DIExpression(), !2751)
  store i32 %2, ptr %6, align 4
    #dbg_declare(ptr %6, !2752, !DIExpression(), !2753)
  %7 = load i32, ptr %6, align 4, !dbg !2754
  %8 = lshr i32 %7, 24, !dbg !2755
  %9 = and i32 %8, 255, !dbg !2756
  %10 = trunc i32 %9 to i8, !dbg !2757
  %11 = load ptr, ptr %4, align 8, !dbg !2758
  %12 = getelementptr inbounds nuw %struct.UInt64, ptr %11, i32 0, i32 0, !dbg !2759
  %13 = getelementptr inbounds [8 x i8], ptr %12, i64 0, i64 7, !dbg !2758
  store i8 %10, ptr %13, align 1, !dbg !2760
  %14 = load i32, ptr %6, align 4, !dbg !2761
  %15 = lshr i32 %14, 16, !dbg !2762
  %16 = and i32 %15, 255, !dbg !2763
  %17 = trunc i32 %16 to i8, !dbg !2764
  %18 = load ptr, ptr %4, align 8, !dbg !2765
  %19 = getelementptr inbounds nuw %struct.UInt64, ptr %18, i32 0, i32 0, !dbg !2766
  %20 = getelementptr inbounds [8 x i8], ptr %19, i64 0, i64 6, !dbg !2765
  store i8 %17, ptr %20, align 1, !dbg !2767
  %21 = load i32, ptr %6, align 4, !dbg !2768
  %22 = lshr i32 %21, 8, !dbg !2769
  %23 = and i32 %22, 255, !dbg !2770
  %24 = trunc i32 %23 to i8, !dbg !2771
  %25 = load ptr, ptr %4, align 8, !dbg !2772
  %26 = getelementptr inbounds nuw %struct.UInt64, ptr %25, i32 0, i32 0, !dbg !2773
  %27 = getelementptr inbounds [8 x i8], ptr %26, i64 0, i64 5, !dbg !2772
  store i8 %24, ptr %27, align 1, !dbg !2774
  %28 = load i32, ptr %6, align 4, !dbg !2775
  %29 = and i32 %28, 255, !dbg !2776
  %30 = trunc i32 %29 to i8, !dbg !2777
  %31 = load ptr, ptr %4, align 8, !dbg !2778
  %32 = getelementptr inbounds nuw %struct.UInt64, ptr %31, i32 0, i32 0, !dbg !2779
  %33 = getelementptr inbounds [8 x i8], ptr %32, i64 0, i64 4, !dbg !2778
  store i8 %30, ptr %33, align 1, !dbg !2780
  %34 = load i32, ptr %5, align 4, !dbg !2781
  %35 = lshr i32 %34, 24, !dbg !2782
  %36 = and i32 %35, 255, !dbg !2783
  %37 = trunc i32 %36 to i8, !dbg !2784
  %38 = load ptr, ptr %4, align 8, !dbg !2785
  %39 = getelementptr inbounds nuw %struct.UInt64, ptr %38, i32 0, i32 0, !dbg !2786
  %40 = getelementptr inbounds [8 x i8], ptr %39, i64 0, i64 3, !dbg !2785
  store i8 %37, ptr %40, align 1, !dbg !2787
  %41 = load i32, ptr %5, align 4, !dbg !2788
  %42 = lshr i32 %41, 16, !dbg !2789
  %43 = and i32 %42, 255, !dbg !2790
  %44 = trunc i32 %43 to i8, !dbg !2791
  %45 = load ptr, ptr %4, align 8, !dbg !2792
  %46 = getelementptr inbounds nuw %struct.UInt64, ptr %45, i32 0, i32 0, !dbg !2793
  %47 = getelementptr inbounds [8 x i8], ptr %46, i64 0, i64 2, !dbg !2792
  store i8 %44, ptr %47, align 1, !dbg !2794
  %48 = load i32, ptr %5, align 4, !dbg !2795
  %49 = lshr i32 %48, 8, !dbg !2796
  %50 = and i32 %49, 255, !dbg !2797
  %51 = trunc i32 %50 to i8, !dbg !2798
  %52 = load ptr, ptr %4, align 8, !dbg !2799
  %53 = getelementptr inbounds nuw %struct.UInt64, ptr %52, i32 0, i32 0, !dbg !2800
  %54 = getelementptr inbounds [8 x i8], ptr %53, i64 0, i64 1, !dbg !2799
  store i8 %51, ptr %54, align 1, !dbg !2801
  %55 = load i32, ptr %5, align 4, !dbg !2802
  %56 = and i32 %55, 255, !dbg !2803
  %57 = trunc i32 %56 to i8, !dbg !2804
  %58 = load ptr, ptr %4, align 8, !dbg !2805
  %59 = getelementptr inbounds nuw %struct.UInt64, ptr %58, i32 0, i32 0, !dbg !2806
  %60 = getelementptr inbounds [8 x i8], ptr %59, i64 0, i64 0, !dbg !2805
  store i8 %57, ptr %60, align 1, !dbg !2807
  ret void, !dbg !2808
}

; Function Attrs: noinline nounwind uwtable
define internal double @uInt64_to_double(ptr noundef %0) #0 !dbg !2809 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !2812, !DIExpression(), !2813)
    #dbg_declare(ptr %3, !2814, !DIExpression(), !2815)
    #dbg_declare(ptr %4, !2816, !DIExpression(), !2817)
  store double 1.000000e+00, ptr %4, align 8, !dbg !2817
    #dbg_declare(ptr %5, !2818, !DIExpression(), !2819)
  store double 0.000000e+00, ptr %5, align 8, !dbg !2819
  store i32 0, ptr %3, align 4, !dbg !2820
  br label %6, !dbg !2822

6:                                                ; preds = %22, %1
  %7 = load i32, ptr %3, align 4, !dbg !2823
  %8 = icmp slt i32 %7, 8, !dbg !2825
  br i1 %8, label %9, label %25, !dbg !2826

9:                                                ; preds = %6
  %10 = load double, ptr %4, align 8, !dbg !2827
  %11 = load ptr, ptr %2, align 8, !dbg !2829
  %12 = getelementptr inbounds nuw %struct.UInt64, ptr %11, i32 0, i32 0, !dbg !2830
  %13 = load i32, ptr %3, align 4, !dbg !2831
  %14 = sext i32 %13 to i64, !dbg !2829
  %15 = getelementptr inbounds [8 x i8], ptr %12, i64 0, i64 %14, !dbg !2829
  %16 = load i8, ptr %15, align 1, !dbg !2829
  %17 = uitofp i8 %16 to double, !dbg !2832
  %18 = load double, ptr %5, align 8, !dbg !2833
  %19 = call double @llvm.fmuladd.f64(double %10, double %17, double %18), !dbg !2833
  store double %19, ptr %5, align 8, !dbg !2833
  %20 = load double, ptr %4, align 8, !dbg !2834
  %21 = fmul double %20, 2.560000e+02, !dbg !2834
  store double %21, ptr %4, align 8, !dbg !2834
  br label %22, !dbg !2835

22:                                               ; preds = %9
  %23 = load i32, ptr %3, align 4, !dbg !2836
  %24 = add nsw i32 %23, 1, !dbg !2836
  store i32 %24, ptr %3, align 4, !dbg !2836
  br label %6, !dbg !2837, !llvm.loop !2838

25:                                               ; preds = %6
  %26 = load double, ptr %5, align 8, !dbg !2840
  ret double %26, !dbg !2841
}

; Function Attrs: noinline nounwind uwtable
define internal void @uInt64_toAscii(ptr noundef %0, ptr noundef %1) #0 !dbg !2842 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [32 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca %struct.UInt64, align 1
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !2845, !DIExpression(), !2846)
  store ptr %1, ptr %4, align 8
    #dbg_declare(ptr %4, !2847, !DIExpression(), !2848)
    #dbg_declare(ptr %5, !2849, !DIExpression(), !2850)
    #dbg_declare(ptr %6, !2851, !DIExpression(), !2852)
    #dbg_declare(ptr %7, !2853, !DIExpression(), !2855)
    #dbg_declare(ptr %8, !2856, !DIExpression(), !2857)
  store i32 0, ptr %8, align 4, !dbg !2857
    #dbg_declare(ptr %9, !2858, !DIExpression(), !2859)
  %10 = load ptr, ptr %4, align 8, !dbg !2860
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr align 1 %10, i64 8, i1 false), !dbg !2861
  br label %11, !dbg !2862

11:                                               ; preds = %21, %2
  %12 = call i32 @uInt64_qrm10(ptr noundef %9), !dbg !2863
  store i32 %12, ptr %6, align 4, !dbg !2865
  %13 = load i32, ptr %6, align 4, !dbg !2866
  %14 = add nsw i32 %13, 48, !dbg !2867
  %15 = trunc i32 %14 to i8, !dbg !2866
  %16 = load i32, ptr %8, align 4, !dbg !2868
  %17 = sext i32 %16 to i64, !dbg !2869
  %18 = getelementptr inbounds [32 x i8], ptr %7, i64 0, i64 %17, !dbg !2869
  store i8 %15, ptr %18, align 1, !dbg !2870
  %19 = load i32, ptr %8, align 4, !dbg !2871
  %20 = add nsw i32 %19, 1, !dbg !2871
  store i32 %20, ptr %8, align 4, !dbg !2871
  br label %21, !dbg !2872

21:                                               ; preds = %11
  %22 = call zeroext i8 @uInt64_isZero(ptr noundef %9), !dbg !2873
  %23 = icmp ne i8 %22, 0, !dbg !2874
  %24 = xor i1 %23, true, !dbg !2874
  br i1 %24, label %11, label %25, !dbg !2872, !llvm.loop !2875

25:                                               ; preds = %21
  %26 = load ptr, ptr %3, align 8, !dbg !2877
  %27 = load i32, ptr %8, align 4, !dbg !2878
  %28 = sext i32 %27 to i64, !dbg !2877
  %29 = getelementptr inbounds i8, ptr %26, i64 %28, !dbg !2877
  store i8 0, ptr %29, align 1, !dbg !2879
  store i32 0, ptr %5, align 4, !dbg !2880
  br label %30, !dbg !2882

30:                                               ; preds = %46, %25
  %31 = load i32, ptr %5, align 4, !dbg !2883
  %32 = load i32, ptr %8, align 4, !dbg !2885
  %33 = icmp slt i32 %31, %32, !dbg !2886
  br i1 %33, label %34, label %49, !dbg !2887

34:                                               ; preds = %30
  %35 = load i32, ptr %8, align 4, !dbg !2888
  %36 = load i32, ptr %5, align 4, !dbg !2889
  %37 = sub nsw i32 %35, %36, !dbg !2890
  %38 = sub nsw i32 %37, 1, !dbg !2891
  %39 = sext i32 %38 to i64, !dbg !2892
  %40 = getelementptr inbounds [32 x i8], ptr %7, i64 0, i64 %39, !dbg !2892
  %41 = load i8, ptr %40, align 1, !dbg !2892
  %42 = load ptr, ptr %3, align 8, !dbg !2893
  %43 = load i32, ptr %5, align 4, !dbg !2894
  %44 = sext i32 %43 to i64, !dbg !2893
  %45 = getelementptr inbounds i8, ptr %42, i64 %44, !dbg !2893
  store i8 %41, ptr %45, align 1, !dbg !2895
  br label %46, !dbg !2893

46:                                               ; preds = %34
  %47 = load i32, ptr %5, align 4, !dbg !2896
  %48 = add nsw i32 %47, 1, !dbg !2896
  store i32 %48, ptr %5, align 4, !dbg !2896
  br label %30, !dbg !2897, !llvm.loop !2898

49:                                               ; preds = %30
  ret void, !dbg !2900
}

; Function Attrs: noinline noreturn nounwind uwtable
define internal void @configError() #4 !dbg !2901 {
  %1 = load ptr, ptr @stderr, align 8, !dbg !2902
  %2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.77) #10, !dbg !2903
  call void @setExit(i32 noundef 3), !dbg !2904
  %3 = load i32, ptr @exitValue, align 4, !dbg !2905
  call void @exit(i32 noundef %3) #12, !dbg !2906
  unreachable, !dbg !2906
}

declare i32 @fgetc(ptr noundef) #5

declare i32 @ungetc(i32 noundef, ptr noundef) #5

; Function Attrs: nounwind
declare i32 @fchmod(i32 noundef, i32 noundef) #1

; Function Attrs: nounwind
declare i32 @fchown(i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #8

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: noinline nounwind uwtable
define internal i32 @uInt64_qrm10(ptr noundef %0) #0 !dbg !2907 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !2910, !DIExpression(), !2911)
    #dbg_declare(ptr %3, !2912, !DIExpression(), !2913)
    #dbg_declare(ptr %4, !2914, !DIExpression(), !2915)
    #dbg_declare(ptr %5, !2916, !DIExpression(), !2917)
  store i32 0, ptr %3, align 4, !dbg !2918
  store i32 7, ptr %5, align 4, !dbg !2919
  br label %6, !dbg !2921

6:                                                ; preds = %30, %1
  %7 = load i32, ptr %5, align 4, !dbg !2922
  %8 = icmp sge i32 %7, 0, !dbg !2924
  br i1 %8, label %9, label %33, !dbg !2925

9:                                                ; preds = %6
  %10 = load i32, ptr %3, align 4, !dbg !2926
  %11 = mul i32 %10, 256, !dbg !2928
  %12 = load ptr, ptr %2, align 8, !dbg !2929
  %13 = getelementptr inbounds nuw %struct.UInt64, ptr %12, i32 0, i32 0, !dbg !2930
  %14 = load i32, ptr %5, align 4, !dbg !2931
  %15 = sext i32 %14 to i64, !dbg !2929
  %16 = getelementptr inbounds [8 x i8], ptr %13, i64 0, i64 %15, !dbg !2929
  %17 = load i8, ptr %16, align 1, !dbg !2929
  %18 = zext i8 %17 to i32, !dbg !2929
  %19 = add i32 %11, %18, !dbg !2932
  store i32 %19, ptr %4, align 4, !dbg !2933
  %20 = load i32, ptr %4, align 4, !dbg !2934
  %21 = udiv i32 %20, 10, !dbg !2935
  %22 = trunc i32 %21 to i8, !dbg !2934
  %23 = load ptr, ptr %2, align 8, !dbg !2936
  %24 = getelementptr inbounds nuw %struct.UInt64, ptr %23, i32 0, i32 0, !dbg !2937
  %25 = load i32, ptr %5, align 4, !dbg !2938
  %26 = sext i32 %25 to i64, !dbg !2936
  %27 = getelementptr inbounds [8 x i8], ptr %24, i64 0, i64 %26, !dbg !2936
  store i8 %22, ptr %27, align 1, !dbg !2939
  %28 = load i32, ptr %4, align 4, !dbg !2940
  %29 = urem i32 %28, 10, !dbg !2941
  store i32 %29, ptr %3, align 4, !dbg !2942
  br label %30, !dbg !2943

30:                                               ; preds = %9
  %31 = load i32, ptr %5, align 4, !dbg !2944
  %32 = add nsw i32 %31, -1, !dbg !2944
  store i32 %32, ptr %5, align 4, !dbg !2944
  br label %6, !dbg !2945, !llvm.loop !2946

33:                                               ; preds = %6
  %34 = load i32, ptr %3, align 4, !dbg !2948
  ret i32 %34, !dbg !2949
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i8 @uInt64_isZero(ptr noundef %0) #0 !dbg !2950 {
  %2 = alloca i8, align 1
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !2953, !DIExpression(), !2954)
    #dbg_declare(ptr %4, !2955, !DIExpression(), !2956)
  store i32 0, ptr %4, align 4, !dbg !2957
  br label %5, !dbg !2959

5:                                                ; preds = %19, %1
  %6 = load i32, ptr %4, align 4, !dbg !2960
  %7 = icmp slt i32 %6, 8, !dbg !2962
  br i1 %7, label %8, label %22, !dbg !2963

8:                                                ; preds = %5
  %9 = load ptr, ptr %3, align 8, !dbg !2964
  %10 = getelementptr inbounds nuw %struct.UInt64, ptr %9, i32 0, i32 0, !dbg !2966
  %11 = load i32, ptr %4, align 4, !dbg !2967
  %12 = sext i32 %11 to i64, !dbg !2964
  %13 = getelementptr inbounds [8 x i8], ptr %10, i64 0, i64 %12, !dbg !2964
  %14 = load i8, ptr %13, align 1, !dbg !2964
  %15 = zext i8 %14 to i32, !dbg !2964
  %16 = icmp ne i32 %15, 0, !dbg !2968
  br i1 %16, label %17, label %18, !dbg !2968

17:                                               ; preds = %8
  store i8 0, ptr %2, align 1, !dbg !2969
  br label %23, !dbg !2969

18:                                               ; preds = %8
  br label %19, !dbg !2970

19:                                               ; preds = %18
  %20 = load i32, ptr %4, align 4, !dbg !2971
  %21 = add nsw i32 %20, 1, !dbg !2971
  store i32 %21, ptr %4, align 4, !dbg !2971
  br label %5, !dbg !2972, !llvm.loop !2973

22:                                               ; preds = %5
  store i8 1, ptr %2, align 1, !dbg !2975
  br label %23, !dbg !2975

23:                                               ; preds = %22, %17
  %24 = load i8, ptr %2, align 1, !dbg !2976
  ret i8 %24, !dbg !2976
}

; Function Attrs: nounwind
declare i32 @utime(ptr noundef, ptr noundef) #1

declare void @perror(ptr noundef) #5

; Function Attrs: noinline nounwind uwtable
define internal zeroext i8 @mapSuffix(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !2977 {
  %4 = alloca i8, align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
    #dbg_declare(ptr %5, !2980, !DIExpression(), !2981)
  store ptr %1, ptr %6, align 8
    #dbg_declare(ptr %6, !2982, !DIExpression(), !2983)
  store ptr %2, ptr %7, align 8
    #dbg_declare(ptr %7, !2984, !DIExpression(), !2985)
  %8 = load ptr, ptr %5, align 8, !dbg !2986
  %9 = load ptr, ptr %6, align 8, !dbg !2988
  %10 = call zeroext i8 @hasSuffix(ptr noundef %8, ptr noundef %9), !dbg !2989
  %11 = icmp ne i8 %10, 0, !dbg !2989
  br i1 %11, label %13, label %12, !dbg !2990

12:                                               ; preds = %3
  store i8 0, ptr %4, align 1, !dbg !2991
  br label %24, !dbg !2991

13:                                               ; preds = %3
  %14 = load ptr, ptr %5, align 8, !dbg !2992
  %15 = load ptr, ptr %5, align 8, !dbg !2993
  %16 = call i64 @strlen(ptr noundef %15) #11, !dbg !2994
  %17 = load ptr, ptr %6, align 8, !dbg !2995
  %18 = call i64 @strlen(ptr noundef %17) #11, !dbg !2996
  %19 = sub i64 %16, %18, !dbg !2997
  %20 = getelementptr inbounds nuw i8, ptr %14, i64 %19, !dbg !2992
  store i8 0, ptr %20, align 1, !dbg !2998
  %21 = load ptr, ptr %5, align 8, !dbg !2999
  %22 = load ptr, ptr %7, align 8, !dbg !3000
  %23 = call ptr @strcat(ptr noundef %21, ptr noundef %22) #10, !dbg !3001
  store i8 1, ptr %4, align 1, !dbg !3002
  br label %24, !dbg !3002

24:                                               ; preds = %13, %12
  %25 = load i8, ptr %4, align 1, !dbg !3003
  ret i8 %25, !dbg !3003
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i8 @uncompressStream(ptr noundef %0, ptr noundef %1) #0 !dbg !3004 {
  %3 = alloca i8, align 1
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [5000 x i8], align 16
  %14 = alloca [5000 x i8], align 16
  %15 = alloca i32, align 4
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
    #dbg_declare(ptr %4, !3007, !DIExpression(), !3008)
  store ptr %1, ptr %5, align 8
    #dbg_declare(ptr %5, !3009, !DIExpression(), !3010)
    #dbg_declare(ptr %6, !3011, !DIExpression(), !3012)
  store ptr null, ptr %6, align 8, !dbg !3012
    #dbg_declare(ptr %7, !3013, !DIExpression(), !3014)
    #dbg_declare(ptr %8, !3015, !DIExpression(), !3016)
    #dbg_declare(ptr %9, !3017, !DIExpression(), !3018)
    #dbg_declare(ptr %10, !3019, !DIExpression(), !3020)
    #dbg_declare(ptr %11, !3021, !DIExpression(), !3022)
    #dbg_declare(ptr %12, !3023, !DIExpression(), !3024)
    #dbg_declare(ptr %13, !3025, !DIExpression(), !3026)
    #dbg_declare(ptr %14, !3027, !DIExpression(), !3028)
    #dbg_declare(ptr %15, !3029, !DIExpression(), !3030)
    #dbg_declare(ptr %16, !3031, !DIExpression(), !3032)
    #dbg_declare(ptr %17, !3033, !DIExpression(), !3034)
  store i32 0, ptr %15, align 4, !dbg !3035
  store i32 0, ptr %11, align 4, !dbg !3036
  %19 = load ptr, ptr %5, align 8, !dbg !3037
  %20 = call i32 @ferror(ptr noundef %19) #10, !dbg !3039
  %21 = icmp ne i32 %20, 0, !dbg !3039
  br i1 %21, label %22, label %23, !dbg !3039

22:                                               ; preds = %2
  br label %213, !dbg !3040

23:                                               ; preds = %2
  %24 = load ptr, ptr %4, align 8, !dbg !3041
  %25 = call i32 @ferror(ptr noundef %24) #10, !dbg !3043
  %26 = icmp ne i32 %25, 0, !dbg !3043
  br i1 %26, label %27, label %28, !dbg !3043

27:                                               ; preds = %23
  br label %213, !dbg !3044

28:                                               ; preds = %23
  br label %29, !dbg !3045

29:                                               ; preds = %28, %118
  %30 = load ptr, ptr %4, align 8, !dbg !3046
  %31 = load i32, ptr @verbosity, align 4, !dbg !3048
  %32 = load i8, ptr @smallMode, align 1, !dbg !3049
  %33 = zext i8 %32 to i32, !dbg !3050
  %34 = getelementptr inbounds [5000 x i8], ptr %14, i64 0, i64 0, !dbg !3051
  %35 = load i32, ptr %15, align 4, !dbg !3052
  %36 = call ptr @BZ2_bzReadOpen(ptr noundef %7, ptr noundef %30, i32 noundef %31, i32 noundef %33, ptr noundef %34, i32 noundef %35), !dbg !3053
  store ptr %36, ptr %6, align 8, !dbg !3054
  %37 = load ptr, ptr %6, align 8, !dbg !3055
  %38 = icmp eq ptr %37, null, !dbg !3057
  br i1 %38, label %42, label %39, !dbg !3058

39:                                               ; preds = %29
  %40 = load i32, ptr %7, align 4, !dbg !3059
  %41 = icmp ne i32 %40, 0, !dbg !3060
  br i1 %41, label %42, label %43, !dbg !3058

42:                                               ; preds = %39, %29
  br label %208, !dbg !3061

43:                                               ; preds = %39
  %44 = load i32, ptr %11, align 4, !dbg !3062
  %45 = add nsw i32 %44, 1, !dbg !3062
  store i32 %45, ptr %11, align 4, !dbg !3062
  br label %46, !dbg !3063

46:                                               ; preds = %76, %43
  %47 = load i32, ptr %7, align 4, !dbg !3064
  %48 = icmp eq i32 %47, 0, !dbg !3065
  br i1 %48, label %49, label %77, !dbg !3063

49:                                               ; preds = %46
  %50 = load ptr, ptr %6, align 8, !dbg !3066
  %51 = getelementptr inbounds [5000 x i8], ptr %13, i64 0, i64 0, !dbg !3068
  %52 = call i32 @BZ2_bzRead(ptr noundef %7, ptr noundef %50, ptr noundef %51, i32 noundef 5000), !dbg !3069
  store i32 %52, ptr %10, align 4, !dbg !3070
  %53 = load i32, ptr %7, align 4, !dbg !3071
  %54 = icmp eq i32 %53, -5, !dbg !3073
  br i1 %54, label %55, label %56, !dbg !3073

55:                                               ; preds = %49
  br label %172, !dbg !3074

56:                                               ; preds = %49
  %57 = load i32, ptr %7, align 4, !dbg !3075
  %58 = icmp eq i32 %57, 0, !dbg !3077
  br i1 %58, label %62, label %59, !dbg !3078

59:                                               ; preds = %56
  %60 = load i32, ptr %7, align 4, !dbg !3079
  %61 = icmp eq i32 %60, 4, !dbg !3080
  br i1 %61, label %62, label %71, !dbg !3081

62:                                               ; preds = %59, %56
  %63 = load i32, ptr %10, align 4, !dbg !3082
  %64 = icmp sgt i32 %63, 0, !dbg !3083
  br i1 %64, label %65, label %71, !dbg !3081

65:                                               ; preds = %62
  %66 = getelementptr inbounds [5000 x i8], ptr %13, i64 0, i64 0, !dbg !3084
  %67 = load i32, ptr %10, align 4, !dbg !3085
  %68 = sext i32 %67 to i64, !dbg !3085
  %69 = load ptr, ptr %5, align 8, !dbg !3086
  %70 = call i64 @fwrite(ptr noundef %66, i64 noundef 1, i64 noundef %68, ptr noundef %69), !dbg !3087
  br label %71, !dbg !3087

71:                                               ; preds = %65, %62, %59
  %72 = load ptr, ptr %5, align 8, !dbg !3088
  %73 = call i32 @ferror(ptr noundef %72) #10, !dbg !3090
  %74 = icmp ne i32 %73, 0, !dbg !3090
  br i1 %74, label %75, label %76, !dbg !3090

75:                                               ; preds = %71
  br label %213, !dbg !3091

76:                                               ; preds = %71
  br label %46, !dbg !3063, !llvm.loop !3092

77:                                               ; preds = %46
  %78 = load i32, ptr %7, align 4, !dbg !3094
  %79 = icmp ne i32 %78, 4, !dbg !3096
  br i1 %79, label %80, label %81, !dbg !3096

80:                                               ; preds = %77
  br label %208, !dbg !3097

81:                                               ; preds = %77
  %82 = load ptr, ptr %6, align 8, !dbg !3098
  call void @BZ2_bzReadGetUnused(ptr noundef %7, ptr noundef %82, ptr noundef %16, ptr noundef %15), !dbg !3099
  %83 = load i32, ptr %7, align 4, !dbg !3100
  %84 = icmp ne i32 %83, 0, !dbg !3102
  br i1 %84, label %85, label %86, !dbg !3102

85:                                               ; preds = %81
  call void @panic(ptr noundef @.str.88) #13, !dbg !3103
  unreachable, !dbg !3103

86:                                               ; preds = %81
  %87 = load ptr, ptr %16, align 8, !dbg !3104
  store ptr %87, ptr %17, align 8, !dbg !3105
  store i32 0, ptr %12, align 4, !dbg !3106
  br label %88, !dbg !3108

88:                                               ; preds = %101, %86
  %89 = load i32, ptr %12, align 4, !dbg !3109
  %90 = load i32, ptr %15, align 4, !dbg !3111
  %91 = icmp slt i32 %89, %90, !dbg !3112
  br i1 %91, label %92, label %104, !dbg !3113

92:                                               ; preds = %88
  %93 = load ptr, ptr %17, align 8, !dbg !3114
  %94 = load i32, ptr %12, align 4, !dbg !3115
  %95 = sext i32 %94 to i64, !dbg !3114
  %96 = getelementptr inbounds i8, ptr %93, i64 %95, !dbg !3114
  %97 = load i8, ptr %96, align 1, !dbg !3114
  %98 = load i32, ptr %12, align 4, !dbg !3116
  %99 = sext i32 %98 to i64, !dbg !3117
  %100 = getelementptr inbounds [5000 x i8], ptr %14, i64 0, i64 %99, !dbg !3117
  store i8 %97, ptr %100, align 1, !dbg !3118
  br label %101, !dbg !3117

101:                                              ; preds = %92
  %102 = load i32, ptr %12, align 4, !dbg !3119
  %103 = add nsw i32 %102, 1, !dbg !3119
  store i32 %103, ptr %12, align 4, !dbg !3119
  br label %88, !dbg !3120, !llvm.loop !3121

104:                                              ; preds = %88
  %105 = load ptr, ptr %6, align 8, !dbg !3123
  call void @BZ2_bzReadClose(ptr noundef %7, ptr noundef %105), !dbg !3124
  %106 = load i32, ptr %7, align 4, !dbg !3125
  %107 = icmp ne i32 %106, 0, !dbg !3127
  br i1 %107, label %108, label %109, !dbg !3127

108:                                              ; preds = %104
  call void @panic(ptr noundef @.str.88) #13, !dbg !3128
  unreachable, !dbg !3128

109:                                              ; preds = %104
  %110 = load i32, ptr %15, align 4, !dbg !3129
  %111 = icmp eq i32 %110, 0, !dbg !3131
  br i1 %111, label %112, label %118, !dbg !3132

112:                                              ; preds = %109
  %113 = load ptr, ptr %4, align 8, !dbg !3133
  %114 = call zeroext i8 @myfeof(ptr noundef %113), !dbg !3134
  %115 = zext i8 %114 to i32, !dbg !3134
  %116 = icmp ne i32 %115, 0, !dbg !3134
  br i1 %116, label %117, label %118, !dbg !3132

117:                                              ; preds = %112
  br label %119, !dbg !3135

118:                                              ; preds = %112, %109
  br label %29, !dbg !3045, !llvm.loop !3136

119:                                              ; preds = %117
  br label %120, !dbg !3045

120:                                              ; preds = %206, %119
    #dbg_label(!3138, !3139)
  %121 = load ptr, ptr %4, align 8, !dbg !3140
  %122 = call i32 @ferror(ptr noundef %121) #10, !dbg !3142
  %123 = icmp ne i32 %122, 0, !dbg !3142
  br i1 %123, label %124, label %125, !dbg !3142

124:                                              ; preds = %120
  br label %213, !dbg !3143

125:                                              ; preds = %120
  %126 = load ptr, ptr %5, align 8, !dbg !3144
  %127 = load ptr, ptr @stdout, align 8, !dbg !3146
  %128 = icmp ne ptr %126, %127, !dbg !3147
  br i1 %128, label %129, label %137, !dbg !3147

129:                                              ; preds = %125
    #dbg_declare(ptr %18, !3148, !DIExpression(), !3150)
  %130 = load ptr, ptr %5, align 8, !dbg !3151
  %131 = call i32 @fileno(ptr noundef %130) #10, !dbg !3152
  store i32 %131, ptr %18, align 4, !dbg !3150
  %132 = load i32, ptr %18, align 4, !dbg !3153
  %133 = icmp slt i32 %132, 0, !dbg !3155
  br i1 %133, label %134, label %135, !dbg !3155

134:                                              ; preds = %129
  br label %213, !dbg !3156

135:                                              ; preds = %129
  %136 = load i32, ptr %18, align 4, !dbg !3157
  call void @applySavedFileAttrToOutputFile(i32 noundef %136), !dbg !3158
  br label %137, !dbg !3159

137:                                              ; preds = %135, %125
  %138 = load ptr, ptr %4, align 8, !dbg !3160
  %139 = call i32 @fclose(ptr noundef %138), !dbg !3161
  store i32 %139, ptr %9, align 4, !dbg !3162
  %140 = load i32, ptr %9, align 4, !dbg !3163
  %141 = icmp eq i32 %140, -1, !dbg !3165
  br i1 %141, label %142, label %143, !dbg !3165

142:                                              ; preds = %137
  br label %213, !dbg !3166

143:                                              ; preds = %137
  %144 = load ptr, ptr %5, align 8, !dbg !3167
  %145 = call i32 @ferror(ptr noundef %144) #10, !dbg !3169
  %146 = icmp ne i32 %145, 0, !dbg !3169
  br i1 %146, label %147, label %148, !dbg !3169

147:                                              ; preds = %143
  br label %213, !dbg !3170

148:                                              ; preds = %143
  %149 = load ptr, ptr %5, align 8, !dbg !3171
  %150 = call i32 @fflush(ptr noundef %149), !dbg !3172
  store i32 %150, ptr %9, align 4, !dbg !3173
  %151 = load i32, ptr %9, align 4, !dbg !3174
  %152 = icmp ne i32 %151, 0, !dbg !3176
  br i1 %152, label %153, label %154, !dbg !3176

153:                                              ; preds = %148
  br label %213, !dbg !3177

154:                                              ; preds = %148
  %155 = load ptr, ptr %5, align 8, !dbg !3178
  %156 = load ptr, ptr @stdout, align 8, !dbg !3180
  %157 = icmp ne ptr %155, %156, !dbg !3181
  br i1 %157, label %158, label %165, !dbg !3181

158:                                              ; preds = %154
  %159 = load ptr, ptr %5, align 8, !dbg !3182
  %160 = call i32 @fclose(ptr noundef %159), !dbg !3184
  store i32 %160, ptr %9, align 4, !dbg !3185
  store ptr null, ptr @outputHandleJustInCase, align 8, !dbg !3186
  %161 = load i32, ptr %9, align 4, !dbg !3187
  %162 = icmp eq i32 %161, -1, !dbg !3189
  br i1 %162, label %163, label %164, !dbg !3189

163:                                              ; preds = %158
  br label %213, !dbg !3190

164:                                              ; preds = %158
  br label %165, !dbg !3191

165:                                              ; preds = %164, %154
  store ptr null, ptr @outputHandleJustInCase, align 8, !dbg !3192
  %166 = load i32, ptr @verbosity, align 4, !dbg !3193
  %167 = icmp sge i32 %166, 2, !dbg !3195
  br i1 %167, label %168, label %171, !dbg !3195

168:                                              ; preds = %165
  %169 = load ptr, ptr @stderr, align 8, !dbg !3196
  %170 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %169, ptr noundef @.str.89) #10, !dbg !3197
  br label %171, !dbg !3197

171:                                              ; preds = %168, %165
  store i8 1, ptr %3, align 1, !dbg !3198
  br label %244, !dbg !3198

172:                                              ; preds = %55
    #dbg_label(!3199, !3200)
  %173 = load i8, ptr @forceOverwrite, align 1, !dbg !3201
  %174 = icmp ne i8 %173, 0, !dbg !3201
  br i1 %174, label %175, label %207, !dbg !3201

175:                                              ; preds = %172
  %176 = load ptr, ptr %4, align 8, !dbg !3203
  call void @rewind(ptr noundef %176), !dbg !3205
  br label %177, !dbg !3206

177:                                              ; preds = %175, %205
  %178 = load ptr, ptr %4, align 8, !dbg !3207
  %179 = call zeroext i8 @myfeof(ptr noundef %178), !dbg !3210
  %180 = icmp ne i8 %179, 0, !dbg !3210
  br i1 %180, label %181, label %182, !dbg !3210

181:                                              ; preds = %177
  br label %206, !dbg !3211

182:                                              ; preds = %177
  %183 = getelementptr inbounds [5000 x i8], ptr %13, i64 0, i64 0, !dbg !3212
  %184 = load ptr, ptr %4, align 8, !dbg !3213
  %185 = call i64 @fread(ptr noundef %183, i64 noundef 1, i64 noundef 5000, ptr noundef %184), !dbg !3214
  %186 = trunc i64 %185 to i32, !dbg !3214
  store i32 %186, ptr %10, align 4, !dbg !3215
  %187 = load ptr, ptr %4, align 8, !dbg !3216
  %188 = call i32 @ferror(ptr noundef %187) #10, !dbg !3218
  %189 = icmp ne i32 %188, 0, !dbg !3218
  br i1 %189, label %190, label %191, !dbg !3218

190:                                              ; preds = %182
  br label %213, !dbg !3219

191:                                              ; preds = %182
  %192 = load i32, ptr %10, align 4, !dbg !3220
  %193 = icmp sgt i32 %192, 0, !dbg !3222
  br i1 %193, label %194, label %200, !dbg !3222

194:                                              ; preds = %191
  %195 = getelementptr inbounds [5000 x i8], ptr %13, i64 0, i64 0, !dbg !3223
  %196 = load i32, ptr %10, align 4, !dbg !3224
  %197 = sext i32 %196 to i64, !dbg !3224
  %198 = load ptr, ptr %5, align 8, !dbg !3225
  %199 = call i64 @fwrite(ptr noundef %195, i64 noundef 1, i64 noundef %197, ptr noundef %198), !dbg !3226
  br label %200, !dbg !3226

200:                                              ; preds = %194, %191
  %201 = load ptr, ptr %5, align 8, !dbg !3227
  %202 = call i32 @ferror(ptr noundef %201) #10, !dbg !3229
  %203 = icmp ne i32 %202, 0, !dbg !3229
  br i1 %203, label %204, label %205, !dbg !3229

204:                                              ; preds = %200
  br label %213, !dbg !3230

205:                                              ; preds = %200
  br label %177, !dbg !3206, !llvm.loop !3231

206:                                              ; preds = %181
  br label %120, !dbg !3233

207:                                              ; preds = %172
  br label %208, !dbg !3201

208:                                              ; preds = %207, %80, %42
    #dbg_label(!3234, !3235)
  %209 = load ptr, ptr %6, align 8, !dbg !3236
  call void @BZ2_bzReadClose(ptr noundef %8, ptr noundef %209), !dbg !3237
  %210 = load i32, ptr %7, align 4, !dbg !3238
  switch i32 %210, label %243 [
    i32 -9, label %211
    i32 -6, label %212
    i32 -4, label %214
    i32 -3, label %215
    i32 -7, label %216
    i32 -5, label %217
  ], !dbg !3239

211:                                              ; preds = %208
  call void @configError() #13, !dbg !3240
  unreachable, !dbg !3240

212:                                              ; preds = %208
  br label %213, !dbg !3240

213:                                              ; preds = %212, %204, %190, %163, %153, %147, %142, %134, %124, %75, %27, %22
    #dbg_label(!3242, !3243)
  call void @ioError() #13, !dbg !3244
  unreachable, !dbg !3244

214:                                              ; preds = %208
  call void @crcError() #13, !dbg !3245
  unreachable, !dbg !3245

215:                                              ; preds = %208
  call void @outOfMemory() #13, !dbg !3246
  unreachable, !dbg !3246

216:                                              ; preds = %208
  call void @compressedStreamEOF() #13, !dbg !3247
  unreachable, !dbg !3247

217:                                              ; preds = %208
  %218 = load ptr, ptr %4, align 8, !dbg !3248
  %219 = load ptr, ptr @stdin, align 8, !dbg !3250
  %220 = icmp ne ptr %218, %219, !dbg !3251
  br i1 %220, label %221, label %224, !dbg !3251

221:                                              ; preds = %217
  %222 = load ptr, ptr %4, align 8, !dbg !3252
  %223 = call i32 @fclose(ptr noundef %222), !dbg !3253
  br label %224, !dbg !3253

224:                                              ; preds = %221, %217
  %225 = load ptr, ptr %5, align 8, !dbg !3254
  %226 = load ptr, ptr @stdout, align 8, !dbg !3256
  %227 = icmp ne ptr %225, %226, !dbg !3257
  br i1 %227, label %228, label %231, !dbg !3257

228:                                              ; preds = %224
  %229 = load ptr, ptr %5, align 8, !dbg !3258
  %230 = call i32 @fclose(ptr noundef %229), !dbg !3259
  br label %231, !dbg !3259

231:                                              ; preds = %228, %224
  %232 = load i32, ptr %11, align 4, !dbg !3260
  %233 = icmp eq i32 %232, 1, !dbg !3262
  br i1 %233, label %234, label %235, !dbg !3262

234:                                              ; preds = %231
  store i8 0, ptr %3, align 1, !dbg !3263
  br label %244, !dbg !3263

235:                                              ; preds = %231
  %236 = load i8, ptr @noisy, align 1, !dbg !3265
  %237 = icmp ne i8 %236, 0, !dbg !3265
  br i1 %237, label %238, label %242, !dbg !3265

238:                                              ; preds = %235
  %239 = load ptr, ptr @stderr, align 8, !dbg !3268
  %240 = load ptr, ptr @progName, align 8, !dbg !3269
  %241 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %239, ptr noundef @.str.90, ptr noundef %240, ptr noundef @inName) #10, !dbg !3270
  br label %242, !dbg !3270

242:                                              ; preds = %238, %235
  store i8 1, ptr %3, align 1, !dbg !3271
  br label %244, !dbg !3271

243:                                              ; preds = %208
  call void @panic(ptr noundef @.str.91) #13, !dbg !3272
  unreachable, !dbg !3272

244:                                              ; preds = %242, %234, %171
  %245 = load i8, ptr %3, align 1, !dbg !3273
  ret i8 %245, !dbg !3273
}

declare ptr @BZ2_bzReadOpen(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #5

declare i32 @BZ2_bzRead(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #5

declare i64 @fwrite(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #5

declare void @BZ2_bzReadGetUnused(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #5

declare void @BZ2_bzReadClose(ptr noundef, ptr noundef) #5

declare void @rewind(ptr noundef) #5

; Function Attrs: noinline noreturn nounwind uwtable
define internal void @crcError() #4 !dbg !3274 {
  %1 = load ptr, ptr @stderr, align 8, !dbg !3275
  %2 = load ptr, ptr @progName, align 8, !dbg !3276
  %3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.92, ptr noundef %2) #10, !dbg !3277
  call void @showFileNames(), !dbg !3278
  call void @cadvise(), !dbg !3279
  call void @cleanUpAndFail(i32 noundef 2) #13, !dbg !3280
  unreachable, !dbg !3280
}

; Function Attrs: noinline noreturn nounwind uwtable
define internal void @compressedStreamEOF() #4 !dbg !3281 {
  %1 = load i8, ptr @noisy, align 1, !dbg !3282
  %2 = icmp ne i8 %1, 0, !dbg !3282
  br i1 %2, label %3, label %8, !dbg !3282

3:                                                ; preds = %0
  %4 = load ptr, ptr @stderr, align 8, !dbg !3284
  %5 = load ptr, ptr @progName, align 8, !dbg !3286
  %6 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.93, ptr noundef %5) #10, !dbg !3287
  %7 = load ptr, ptr @progName, align 8, !dbg !3288
  call void @perror(ptr noundef %7), !dbg !3289
  call void @showFileNames(), !dbg !3290
  call void @cadvise(), !dbg !3291
  br label %8, !dbg !3292

8:                                                ; preds = %3, %0
  call void @cleanUpAndFail(i32 noundef 2) #13, !dbg !3293
  unreachable, !dbg !3293
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i8 @testStream(ptr noundef %0) #0 !dbg !3294 {
  %2 = alloca i8, align 1
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [5000 x i8], align 16
  %12 = alloca [5000 x i8], align 16
  %13 = alloca i32, align 4
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !3295, !DIExpression(), !3296)
    #dbg_declare(ptr %4, !3297, !DIExpression(), !3298)
  store ptr null, ptr %4, align 8, !dbg !3298
    #dbg_declare(ptr %5, !3299, !DIExpression(), !3300)
    #dbg_declare(ptr %6, !3301, !DIExpression(), !3302)
    #dbg_declare(ptr %7, !3303, !DIExpression(), !3304)
    #dbg_declare(ptr %8, !3305, !DIExpression(), !3306)
    #dbg_declare(ptr %9, !3307, !DIExpression(), !3308)
    #dbg_declare(ptr %10, !3309, !DIExpression(), !3310)
    #dbg_declare(ptr %11, !3311, !DIExpression(), !3312)
    #dbg_declare(ptr %12, !3313, !DIExpression(), !3314)
    #dbg_declare(ptr %13, !3315, !DIExpression(), !3316)
    #dbg_declare(ptr %14, !3317, !DIExpression(), !3318)
    #dbg_declare(ptr %15, !3319, !DIExpression(), !3320)
  store i32 0, ptr %13, align 4, !dbg !3321
  store i32 0, ptr %9, align 4, !dbg !3322
  %16 = load ptr, ptr %3, align 8, !dbg !3323
  %17 = call i32 @ferror(ptr noundef %16) #10, !dbg !3325
  %18 = icmp ne i32 %17, 0, !dbg !3325
  br i1 %18, label %19, label %20, !dbg !3325

19:                                               ; preds = %1
  br label %121, !dbg !3326

20:                                               ; preds = %1
  br label %21, !dbg !3327

21:                                               ; preds = %20, %90
  %22 = load ptr, ptr %3, align 8, !dbg !3328
  %23 = load i32, ptr @verbosity, align 4, !dbg !3330
  %24 = load i8, ptr @smallMode, align 1, !dbg !3331
  %25 = zext i8 %24 to i32, !dbg !3332
  %26 = getelementptr inbounds [5000 x i8], ptr %12, i64 0, i64 0, !dbg !3333
  %27 = load i32, ptr %13, align 4, !dbg !3334
  %28 = call ptr @BZ2_bzReadOpen(ptr noundef %5, ptr noundef %22, i32 noundef %23, i32 noundef %25, ptr noundef %26, i32 noundef %27), !dbg !3335
  store ptr %28, ptr %4, align 8, !dbg !3336
  %29 = load ptr, ptr %4, align 8, !dbg !3337
  %30 = icmp eq ptr %29, null, !dbg !3339
  br i1 %30, label %34, label %31, !dbg !3340

31:                                               ; preds = %21
  %32 = load i32, ptr %5, align 4, !dbg !3341
  %33 = icmp ne i32 %32, 0, !dbg !3342
  br i1 %33, label %34, label %35, !dbg !3340

34:                                               ; preds = %31, %21
  br label %109, !dbg !3343

35:                                               ; preds = %31
  %36 = load i32, ptr %9, align 4, !dbg !3344
  %37 = add nsw i32 %36, 1, !dbg !3344
  store i32 %37, ptr %9, align 4, !dbg !3344
  br label %38, !dbg !3345

38:                                               ; preds = %48, %35
  %39 = load i32, ptr %5, align 4, !dbg !3346
  %40 = icmp eq i32 %39, 0, !dbg !3347
  br i1 %40, label %41, label %49, !dbg !3345

41:                                               ; preds = %38
  %42 = load ptr, ptr %4, align 8, !dbg !3348
  %43 = getelementptr inbounds [5000 x i8], ptr %11, i64 0, i64 0, !dbg !3350
  %44 = call i32 @BZ2_bzRead(ptr noundef %5, ptr noundef %42, ptr noundef %43, i32 noundef 5000), !dbg !3351
  store i32 %44, ptr %8, align 4, !dbg !3352
  %45 = load i32, ptr %5, align 4, !dbg !3353
  %46 = icmp eq i32 %45, -5, !dbg !3355
  br i1 %46, label %47, label %48, !dbg !3355

47:                                               ; preds = %41
  br label %109, !dbg !3356

48:                                               ; preds = %41
  br label %38, !dbg !3345, !llvm.loop !3357

49:                                               ; preds = %38
  %50 = load i32, ptr %5, align 4, !dbg !3359
  %51 = icmp ne i32 %50, 4, !dbg !3361
  br i1 %51, label %52, label %53, !dbg !3361

52:                                               ; preds = %49
  br label %109, !dbg !3362

53:                                               ; preds = %49
  %54 = load ptr, ptr %4, align 8, !dbg !3363
  call void @BZ2_bzReadGetUnused(ptr noundef %5, ptr noundef %54, ptr noundef %14, ptr noundef %13), !dbg !3364
  %55 = load i32, ptr %5, align 4, !dbg !3365
  %56 = icmp ne i32 %55, 0, !dbg !3367
  br i1 %56, label %57, label %58, !dbg !3367

57:                                               ; preds = %53
  call void @panic(ptr noundef @.str.98) #13, !dbg !3368
  unreachable, !dbg !3368

58:                                               ; preds = %53
  %59 = load ptr, ptr %14, align 8, !dbg !3369
  store ptr %59, ptr %15, align 8, !dbg !3370
  store i32 0, ptr %10, align 4, !dbg !3371
  br label %60, !dbg !3373

60:                                               ; preds = %73, %58
  %61 = load i32, ptr %10, align 4, !dbg !3374
  %62 = load i32, ptr %13, align 4, !dbg !3376
  %63 = icmp slt i32 %61, %62, !dbg !3377
  br i1 %63, label %64, label %76, !dbg !3378

64:                                               ; preds = %60
  %65 = load ptr, ptr %15, align 8, !dbg !3379
  %66 = load i32, ptr %10, align 4, !dbg !3380
  %67 = sext i32 %66 to i64, !dbg !3379
  %68 = getelementptr inbounds i8, ptr %65, i64 %67, !dbg !3379
  %69 = load i8, ptr %68, align 1, !dbg !3379
  %70 = load i32, ptr %10, align 4, !dbg !3381
  %71 = sext i32 %70 to i64, !dbg !3382
  %72 = getelementptr inbounds [5000 x i8], ptr %12, i64 0, i64 %71, !dbg !3382
  store i8 %69, ptr %72, align 1, !dbg !3383
  br label %73, !dbg !3382

73:                                               ; preds = %64
  %74 = load i32, ptr %10, align 4, !dbg !3384
  %75 = add nsw i32 %74, 1, !dbg !3384
  store i32 %75, ptr %10, align 4, !dbg !3384
  br label %60, !dbg !3385, !llvm.loop !3386

76:                                               ; preds = %60
  %77 = load ptr, ptr %4, align 8, !dbg !3388
  call void @BZ2_bzReadClose(ptr noundef %5, ptr noundef %77), !dbg !3389
  %78 = load i32, ptr %5, align 4, !dbg !3390
  %79 = icmp ne i32 %78, 0, !dbg !3392
  br i1 %79, label %80, label %81, !dbg !3392

80:                                               ; preds = %76
  call void @panic(ptr noundef @.str.98) #13, !dbg !3393
  unreachable, !dbg !3393

81:                                               ; preds = %76
  %82 = load i32, ptr %13, align 4, !dbg !3394
  %83 = icmp eq i32 %82, 0, !dbg !3396
  br i1 %83, label %84, label %90, !dbg !3397

84:                                               ; preds = %81
  %85 = load ptr, ptr %3, align 8, !dbg !3398
  %86 = call zeroext i8 @myfeof(ptr noundef %85), !dbg !3399
  %87 = zext i8 %86 to i32, !dbg !3399
  %88 = icmp ne i32 %87, 0, !dbg !3399
  br i1 %88, label %89, label %90, !dbg !3397

89:                                               ; preds = %84
  br label %91, !dbg !3400

90:                                               ; preds = %84, %81
  br label %21, !dbg !3327, !llvm.loop !3401

91:                                               ; preds = %89
  %92 = load ptr, ptr %3, align 8, !dbg !3403
  %93 = call i32 @ferror(ptr noundef %92) #10, !dbg !3405
  %94 = icmp ne i32 %93, 0, !dbg !3405
  br i1 %94, label %95, label %96, !dbg !3405

95:                                               ; preds = %91
  br label %121, !dbg !3406

96:                                               ; preds = %91
  %97 = load ptr, ptr %3, align 8, !dbg !3407
  %98 = call i32 @fclose(ptr noundef %97), !dbg !3408
  store i32 %98, ptr %7, align 4, !dbg !3409
  %99 = load i32, ptr %7, align 4, !dbg !3410
  %100 = icmp eq i32 %99, -1, !dbg !3412
  br i1 %100, label %101, label %102, !dbg !3412

101:                                              ; preds = %96
  br label %121, !dbg !3413

102:                                              ; preds = %96
  %103 = load i32, ptr @verbosity, align 4, !dbg !3414
  %104 = icmp sge i32 %103, 2, !dbg !3416
  br i1 %104, label %105, label %108, !dbg !3416

105:                                              ; preds = %102
  %106 = load ptr, ptr @stderr, align 8, !dbg !3417
  %107 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %106, ptr noundef @.str.89) #10, !dbg !3418
  br label %108, !dbg !3418

108:                                              ; preds = %105, %102
  store i8 1, ptr %2, align 1, !dbg !3419
  br label %150, !dbg !3419

109:                                              ; preds = %52, %47, %34
    #dbg_label(!3420, !3421)
  %110 = load ptr, ptr %4, align 8, !dbg !3422
  call void @BZ2_bzReadClose(ptr noundef %6, ptr noundef %110), !dbg !3423
  %111 = load i32, ptr @verbosity, align 4, !dbg !3424
  %112 = icmp eq i32 %111, 0, !dbg !3426
  br i1 %112, label %113, label %117, !dbg !3426

113:                                              ; preds = %109
  %114 = load ptr, ptr @stderr, align 8, !dbg !3427
  %115 = load ptr, ptr @progName, align 8, !dbg !3428
  %116 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %114, ptr noundef @.str.99, ptr noundef %115, ptr noundef @inName) #10, !dbg !3429
  br label %117, !dbg !3429

117:                                              ; preds = %113, %109
  %118 = load i32, ptr %5, align 4, !dbg !3430
  switch i32 %118, label %149 [
    i32 -9, label %119
    i32 -6, label %120
    i32 -4, label %122
    i32 -3, label %125
    i32 -7, label %126
    i32 -5, label %129
  ], !dbg !3431

119:                                              ; preds = %117
  call void @configError() #13, !dbg !3432
  unreachable, !dbg !3432

120:                                              ; preds = %117
  br label %121, !dbg !3432

121:                                              ; preds = %120, %101, %95, %19
    #dbg_label(!3434, !3435)
  call void @ioError() #13, !dbg !3436
  unreachable, !dbg !3436

122:                                              ; preds = %117
  %123 = load ptr, ptr @stderr, align 8, !dbg !3437
  %124 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %123, ptr noundef @.str.100) #10, !dbg !3438
  store i8 0, ptr %2, align 1, !dbg !3439
  br label %150, !dbg !3439

125:                                              ; preds = %117
  call void @outOfMemory() #13, !dbg !3440
  unreachable, !dbg !3440

126:                                              ; preds = %117
  %127 = load ptr, ptr @stderr, align 8, !dbg !3441
  %128 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %127, ptr noundef @.str.101) #10, !dbg !3442
  store i8 0, ptr %2, align 1, !dbg !3443
  br label %150, !dbg !3443

129:                                              ; preds = %117
  %130 = load ptr, ptr %3, align 8, !dbg !3444
  %131 = load ptr, ptr @stdin, align 8, !dbg !3446
  %132 = icmp ne ptr %130, %131, !dbg !3447
  br i1 %132, label %133, label %136, !dbg !3447

133:                                              ; preds = %129
  %134 = load ptr, ptr %3, align 8, !dbg !3448
  %135 = call i32 @fclose(ptr noundef %134), !dbg !3449
  br label %136, !dbg !3449

136:                                              ; preds = %133, %129
  %137 = load i32, ptr %9, align 4, !dbg !3450
  %138 = icmp eq i32 %137, 1, !dbg !3452
  br i1 %138, label %139, label %142, !dbg !3452

139:                                              ; preds = %136
  %140 = load ptr, ptr @stderr, align 8, !dbg !3453
  %141 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %140, ptr noundef @.str.102) #10, !dbg !3455
  store i8 0, ptr %2, align 1, !dbg !3456
  br label %150, !dbg !3456

142:                                              ; preds = %136
  %143 = load i8, ptr @noisy, align 1, !dbg !3457
  %144 = icmp ne i8 %143, 0, !dbg !3457
  br i1 %144, label %145, label %148, !dbg !3457

145:                                              ; preds = %142
  %146 = load ptr, ptr @stderr, align 8, !dbg !3460
  %147 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %146, ptr noundef @.str.103) #10, !dbg !3461
  br label %148, !dbg !3461

148:                                              ; preds = %145, %142
  store i8 1, ptr %2, align 1, !dbg !3462
  br label %150, !dbg !3462

149:                                              ; preds = %117
  call void @panic(ptr noundef @.str.104) #13, !dbg !3463
  unreachable, !dbg !3463

150:                                              ; preds = %148, %139, %126, %122, %108
  %151 = load i8, ptr %2, align 1, !dbg !3464
  ret i8 %151, !dbg !3464
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(read) }
attributes #12 = { noreturn nounwind }
attributes #13 = { noreturn }
attributes #14 = { nounwind willreturn memory(none) }
attributes #15 = { nounwind allocsize(0) }

!llvm.dbg.cu = !{!21}
!llvm.module.flags = !{!564, !565, !566, !567, !568, !569, !570}
!llvm.ident = !{!571}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1105, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "cBench/bzip2d/src/bzip2.c", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "7a066e87ea878258d6c14eb314e01c11")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 5)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1105, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 4)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1105, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 6)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1105, type: !3, isLocal: true, isDefinition: true)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(name: "zSuffix", scope: !21, file: !2, line: 1104, type: !71, isLocal: false, isDefinition: true)
!21 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !22, retainedTypes: !39, globals: !61, splitDebugInlining: false, nameTableKind: None)
!22 = !{!23}
!23 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !24, line: 46, baseType: !25, size: 32, elements: !26)
!24 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!25 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!26 = !{!27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38}
!27 = !DIEnumerator(name: "_ISupper", value: 256)
!28 = !DIEnumerator(name: "_ISlower", value: 512)
!29 = !DIEnumerator(name: "_ISalpha", value: 1024)
!30 = !DIEnumerator(name: "_ISdigit", value: 2048)
!31 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!32 = !DIEnumerator(name: "_ISspace", value: 8192)
!33 = !DIEnumerator(name: "_ISprint", value: 16384)
!34 = !DIEnumerator(name: "_ISgraph", value: 32768)
!35 = !DIEnumerator(name: "_ISblank", value: 1)
!36 = !DIEnumerator(name: "_IScntrl", value: 2)
!37 = !DIEnumerator(name: "_ISpunct", value: 4)
!38 = !DIEnumerator(name: "_ISalnum", value: 8)
!39 = !{!40, !42, !44, !45, !46, !47, !48, !55, !58, !59, !60}
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bool", file: !2, line: 162, baseType: !41)
!41 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "Char", file: !2, line: 161, baseType: !4)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "Int32", file: !2, line: 164, baseType: !46)
!46 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!47 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "Cell", file: !2, line: 1699, baseType: !50)
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "zzzz", file: !2, line: 1695, size: 128, elements: !51)
!51 = !{!52, !53}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !50, file: !2, line: 1696, baseType: !42, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !50, file: !2, line: 1697, baseType: !54, size: 64, offset: 64)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !56, line: 18, baseType: !57)
!56 = !DIFile(filename: "/usr/local/lib/clang/20/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!57 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "UChar", file: !2, line: 163, baseType: !41)
!59 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!61 = !{!0, !7, !12, !17, !19, !62, !67, !69, !74, !79, !81, !83, !88, !90, !92, !94, !96, !98, !100, !105, !110, !115, !120, !125, !127, !129, !131, !133, !138, !140, !145, !150, !152, !154, !156, !158, !160, !165, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !205, !207, !209, !211, !213, !268, !270, !275, !280, !285, !290, !295, !300, !305, !310, !315, !320, !325, !330, !335, !340, !345, !347, !352, !357, !359, !361, !366, !371, !376, !378, !383, !385, !387, !392, !397, !402, !404, !406, !408, !413, !415, !420, !456, !458, !460, !462, !467, !472, !477, !482, !487, !489, !491, !496, !498, !503, !505, !507, !512, !517, !519, !521, !526, !531, !536, !538, !543, !545, !547, !549, !551, !553, !555, !560, !562}
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1107, type: !64, isLocal: true, isDefinition: true)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !65)
!65 = !{!66}
!66 = !DISubrange(count: 1)
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1107, type: !3, isLocal: true, isDefinition: true)
!69 = !DIGlobalVariableExpression(var: !70, expr: !DIExpression())
!70 = distinct !DIGlobalVariable(name: "unzSuffix", scope: !21, file: !2, line: 1106, type: !71, isLocal: false, isDefinition: true)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 256, elements: !10)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression())
!75 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1815, type: !76, isLocal: true, isDefinition: true)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !77)
!77 = !{!78}
!78 = !DISubrange(count: 7)
!79 = !DIGlobalVariableExpression(var: !80, expr: !DIExpression())
!80 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1828, type: !14, isLocal: true, isDefinition: true)
!81 = !DIGlobalVariableExpression(var: !82, expr: !DIExpression())
!82 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1829, type: !3, isLocal: true, isDefinition: true)
!83 = !DIGlobalVariableExpression(var: !84, expr: !DIExpression())
!84 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1839, type: !85, isLocal: true, isDefinition: true)
!85 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !86)
!86 = !{!87}
!87 = !DISubrange(count: 3)
!88 = !DIGlobalVariableExpression(var: !89, expr: !DIExpression())
!89 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1856, type: !14, isLocal: true, isDefinition: true)
!90 = !DIGlobalVariableExpression(var: !91, expr: !DIExpression())
!91 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1857, type: !14, isLocal: true, isDefinition: true)
!92 = !DIGlobalVariableExpression(var: !93, expr: !DIExpression())
!93 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1860, type: !14, isLocal: true, isDefinition: true)
!94 = !DIGlobalVariableExpression(var: !95, expr: !DIExpression())
!95 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1861, type: !14, isLocal: true, isDefinition: true)
!96 = !DIGlobalVariableExpression(var: !97, expr: !DIExpression())
!97 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1862, type: !3, isLocal: true, isDefinition: true)
!98 = !DIGlobalVariableExpression(var: !99, expr: !DIExpression())
!99 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1863, type: !3, isLocal: true, isDefinition: true)
!100 = !DIGlobalVariableExpression(var: !101, expr: !DIExpression())
!101 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1898, type: !102, isLocal: true, isDefinition: true)
!102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !103)
!103 = !{!104}
!104 = !DISubrange(count: 19)
!105 = !DIGlobalVariableExpression(var: !106, expr: !DIExpression())
!106 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1911, type: !107, isLocal: true, isDefinition: true)
!107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !108)
!108 = !{!109}
!109 = !DISubrange(count: 9)
!110 = !DIGlobalVariableExpression(var: !111, expr: !DIExpression())
!111 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1912, type: !112, isLocal: true, isDefinition: true)
!112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !113)
!113 = !{!114}
!114 = !DISubrange(count: 13)
!115 = !DIGlobalVariableExpression(var: !116, expr: !DIExpression())
!116 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1913, type: !117, isLocal: true, isDefinition: true)
!117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !118)
!118 = !{!119}
!119 = !DISubrange(count: 11)
!120 = !DIGlobalVariableExpression(var: !121, expr: !DIExpression())
!121 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1914, type: !122, isLocal: true, isDefinition: true)
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !123)
!123 = !{!124}
!124 = !DISubrange(count: 8)
!125 = !DIGlobalVariableExpression(var: !126, expr: !DIExpression())
!126 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1915, type: !76, isLocal: true, isDefinition: true)
!127 = !DIGlobalVariableExpression(var: !128, expr: !DIExpression())
!128 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1916, type: !76, isLocal: true, isDefinition: true)
!129 = !DIGlobalVariableExpression(var: !130, expr: !DIExpression())
!130 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1917, type: !122, isLocal: true, isDefinition: true)
!131 = !DIGlobalVariableExpression(var: !132, expr: !DIExpression())
!132 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1918, type: !122, isLocal: true, isDefinition: true)
!133 = !DIGlobalVariableExpression(var: !134, expr: !DIExpression())
!134 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1919, type: !135, isLocal: true, isDefinition: true)
!135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !136)
!136 = !{!137}
!137 = !DISubrange(count: 10)
!138 = !DIGlobalVariableExpression(var: !139, expr: !DIExpression())
!139 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1920, type: !135, isLocal: true, isDefinition: true)
!140 = !DIGlobalVariableExpression(var: !141, expr: !DIExpression())
!141 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1921, type: !142, isLocal: true, isDefinition: true)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !143)
!143 = !{!144}
!144 = !DISubrange(count: 14)
!145 = !DIGlobalVariableExpression(var: !146, expr: !DIExpression())
!146 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1922, type: !147, isLocal: true, isDefinition: true)
!147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !148)
!148 = !{!149}
!149 = !DISubrange(count: 18)
!150 = !DIGlobalVariableExpression(var: !151, expr: !DIExpression())
!151 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1923, type: !147, isLocal: true, isDefinition: true)
!152 = !DIGlobalVariableExpression(var: !153, expr: !DIExpression())
!153 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1924, type: !76, isLocal: true, isDefinition: true)
!154 = !DIGlobalVariableExpression(var: !155, expr: !DIExpression())
!155 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1925, type: !76, isLocal: true, isDefinition: true)
!156 = !DIGlobalVariableExpression(var: !157, expr: !DIExpression())
!157 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1926, type: !135, isLocal: true, isDefinition: true)
!158 = !DIGlobalVariableExpression(var: !159, expr: !DIExpression())
!159 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1927, type: !76, isLocal: true, isDefinition: true)
!160 = !DIGlobalVariableExpression(var: !161, expr: !DIExpression())
!161 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1941, type: !162, isLocal: true, isDefinition: true)
!162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !163)
!163 = !{!164}
!164 = !DISubrange(count: 40)
!165 = !DIGlobalVariableExpression(var: !166, expr: !DIExpression())
!166 = distinct !DIGlobalVariable(scope: null, file: !2, line: 2008, type: !167, isLocal: true, isDefinition: true)
!167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 904, elements: !168)
!168 = !{!169}
!169 = !DISubrange(count: 113)
!170 = !DIGlobalVariableExpression(var: !171, expr: !DIExpression())
!171 = distinct !DIGlobalVariable(name: "verbosity", scope: !21, file: !2, line: 183, type: !45, isLocal: false, isDefinition: true)
!172 = !DIGlobalVariableExpression(var: !173, expr: !DIExpression())
!173 = distinct !DIGlobalVariable(name: "keepInputFiles", scope: !21, file: !2, line: 184, type: !40, isLocal: false, isDefinition: true)
!174 = !DIGlobalVariableExpression(var: !175, expr: !DIExpression())
!175 = distinct !DIGlobalVariable(name: "smallMode", scope: !21, file: !2, line: 184, type: !40, isLocal: false, isDefinition: true)
!176 = !DIGlobalVariableExpression(var: !177, expr: !DIExpression())
!177 = distinct !DIGlobalVariable(name: "deleteOutputOnInterrupt", scope: !21, file: !2, line: 184, type: !40, isLocal: false, isDefinition: true)
!178 = !DIGlobalVariableExpression(var: !179, expr: !DIExpression())
!179 = distinct !DIGlobalVariable(name: "forceOverwrite", scope: !21, file: !2, line: 185, type: !40, isLocal: false, isDefinition: true)
!180 = !DIGlobalVariableExpression(var: !181, expr: !DIExpression())
!181 = distinct !DIGlobalVariable(name: "testFailsExist", scope: !21, file: !2, line: 185, type: !40, isLocal: false, isDefinition: true)
!182 = !DIGlobalVariableExpression(var: !183, expr: !DIExpression())
!183 = distinct !DIGlobalVariable(name: "unzFailsExist", scope: !21, file: !2, line: 185, type: !40, isLocal: false, isDefinition: true)
!184 = !DIGlobalVariableExpression(var: !185, expr: !DIExpression())
!185 = distinct !DIGlobalVariable(name: "noisy", scope: !21, file: !2, line: 185, type: !40, isLocal: false, isDefinition: true)
!186 = !DIGlobalVariableExpression(var: !187, expr: !DIExpression())
!187 = distinct !DIGlobalVariable(name: "numFileNames", scope: !21, file: !2, line: 186, type: !45, isLocal: false, isDefinition: true)
!188 = !DIGlobalVariableExpression(var: !189, expr: !DIExpression())
!189 = distinct !DIGlobalVariable(name: "numFilesProcessed", scope: !21, file: !2, line: 186, type: !45, isLocal: false, isDefinition: true)
!190 = !DIGlobalVariableExpression(var: !191, expr: !DIExpression())
!191 = distinct !DIGlobalVariable(name: "blockSize100k", scope: !21, file: !2, line: 186, type: !45, isLocal: false, isDefinition: true)
!192 = !DIGlobalVariableExpression(var: !193, expr: !DIExpression())
!193 = distinct !DIGlobalVariable(name: "exitValue", scope: !21, file: !2, line: 187, type: !45, isLocal: false, isDefinition: true)
!194 = !DIGlobalVariableExpression(var: !195, expr: !DIExpression())
!195 = distinct !DIGlobalVariable(name: "opMode", scope: !21, file: !2, line: 199, type: !45, isLocal: false, isDefinition: true)
!196 = !DIGlobalVariableExpression(var: !197, expr: !DIExpression())
!197 = distinct !DIGlobalVariable(name: "srcMode", scope: !21, file: !2, line: 200, type: !45, isLocal: false, isDefinition: true)
!198 = !DIGlobalVariableExpression(var: !199, expr: !DIExpression())
!199 = distinct !DIGlobalVariable(name: "longestFileName", scope: !21, file: !2, line: 204, type: !45, isLocal: false, isDefinition: true)
!200 = !DIGlobalVariableExpression(var: !201, expr: !DIExpression())
!201 = distinct !DIGlobalVariable(name: "inName", scope: !21, file: !2, line: 205, type: !202, isLocal: false, isDefinition: true)
!202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 8272, elements: !203)
!203 = !{!204}
!204 = !DISubrange(count: 1034)
!205 = !DIGlobalVariableExpression(var: !206, expr: !DIExpression())
!206 = distinct !DIGlobalVariable(name: "outName", scope: !21, file: !2, line: 206, type: !202, isLocal: false, isDefinition: true)
!207 = !DIGlobalVariableExpression(var: !208, expr: !DIExpression())
!208 = distinct !DIGlobalVariable(name: "tmpName", scope: !21, file: !2, line: 207, type: !202, isLocal: false, isDefinition: true)
!209 = !DIGlobalVariableExpression(var: !210, expr: !DIExpression())
!210 = distinct !DIGlobalVariable(name: "progName", scope: !21, file: !2, line: 208, type: !42, isLocal: false, isDefinition: true)
!211 = !DIGlobalVariableExpression(var: !212, expr: !DIExpression())
!212 = distinct !DIGlobalVariable(name: "progNameReally", scope: !21, file: !2, line: 209, type: !202, isLocal: false, isDefinition: true)
!213 = !DIGlobalVariableExpression(var: !214, expr: !DIExpression())
!214 = distinct !DIGlobalVariable(name: "outputHandleJustInCase", scope: !21, file: !2, line: 210, type: !215, isLocal: false, isDefinition: true)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !217, line: 7, baseType: !218)
!217 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !219, line: 49, size: 1728, elements: !220)
!219 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!220 = !{!221, !222, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !237, !239, !240, !241, !245, !246, !248, !249, !252, !254, !257, !260, !261, !262, !263, !264}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !218, file: !219, line: 51, baseType: !46, size: 32)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !218, file: !219, line: 54, baseType: !223, size: 64, offset: 64)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !218, file: !219, line: 55, baseType: !223, size: 64, offset: 128)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !218, file: !219, line: 56, baseType: !223, size: 64, offset: 192)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !218, file: !219, line: 57, baseType: !223, size: 64, offset: 256)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !218, file: !219, line: 58, baseType: !223, size: 64, offset: 320)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !218, file: !219, line: 59, baseType: !223, size: 64, offset: 384)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !218, file: !219, line: 60, baseType: !223, size: 64, offset: 448)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !218, file: !219, line: 61, baseType: !223, size: 64, offset: 512)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !218, file: !219, line: 64, baseType: !223, size: 64, offset: 576)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !218, file: !219, line: 65, baseType: !223, size: 64, offset: 640)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !218, file: !219, line: 66, baseType: !223, size: 64, offset: 704)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !218, file: !219, line: 68, baseType: !235, size: 64, offset: 768)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !219, line: 36, flags: DIFlagFwdDecl)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !218, file: !219, line: 70, baseType: !238, size: 64, offset: 832)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !218, file: !219, line: 72, baseType: !46, size: 32, offset: 896)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !218, file: !219, line: 73, baseType: !46, size: 32, offset: 928)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !218, file: !219, line: 74, baseType: !242, size: 64, offset: 960)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !243, line: 152, baseType: !244)
!243 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!244 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !218, file: !219, line: 77, baseType: !47, size: 16, offset: 1024)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !218, file: !219, line: 78, baseType: !247, size: 8, offset: 1040)
!247 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !218, file: !219, line: 79, baseType: !64, size: 8, offset: 1048)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !218, file: !219, line: 81, baseType: !250, size: 64, offset: 1088)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !219, line: 43, baseType: null)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !218, file: !219, line: 89, baseType: !253, size: 64, offset: 1152)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !243, line: 153, baseType: !244)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !218, file: !219, line: 91, baseType: !255, size: 64, offset: 1216)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !219, line: 37, flags: DIFlagFwdDecl)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !218, file: !219, line: 92, baseType: !258, size: 64, offset: 1280)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !219, line: 38, flags: DIFlagFwdDecl)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !218, file: !219, line: 93, baseType: !238, size: 64, offset: 1344)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !218, file: !219, line: 94, baseType: !44, size: 64, offset: 1408)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !218, file: !219, line: 95, baseType: !55, size: 64, offset: 1472)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !218, file: !219, line: 96, baseType: !46, size: 32, offset: 1536)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !218, file: !219, line: 98, baseType: !265, size: 160, offset: 1568)
!265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !266)
!266 = !{!267}
!267 = !DISubrange(count: 20)
!268 = !DIGlobalVariableExpression(var: !269, expr: !DIExpression())
!269 = distinct !DIGlobalVariable(name: "workFactor", scope: !21, file: !2, line: 211, type: !45, isLocal: false, isDefinition: true)
!270 = !DIGlobalVariableExpression(var: !271, expr: !DIExpression())
!271 = distinct !DIGlobalVariable(scope: null, file: !2, line: 821, type: !272, isLocal: true, isDefinition: true)
!272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 6952, elements: !273)
!273 = !{!274}
!274 = !DISubrange(count: 869)
!275 = !DIGlobalVariableExpression(var: !276, expr: !DIExpression())
!276 = distinct !DIGlobalVariable(scope: null, file: !2, line: 842, type: !277, isLocal: true, isDefinition: true)
!277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 7968, elements: !278)
!278 = !{!279}
!279 = !DISubrange(count: 996)
!280 = !DIGlobalVariableExpression(var: !281, expr: !DIExpression())
!281 = distinct !DIGlobalVariable(scope: null, file: !2, line: 679, type: !282, isLocal: true, isDefinition: true)
!282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !283)
!283 = !{!284}
!284 = !DISubrange(count: 36)
!285 = !DIGlobalVariableExpression(var: !286, expr: !DIExpression())
!286 = distinct !DIGlobalVariable(scope: null, file: !2, line: 705, type: !287, isLocal: true, isDefinition: true)
!287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !288)
!288 = !{!289}
!289 = !DISubrange(count: 44)
!290 = !DIGlobalVariableExpression(var: !291, expr: !DIExpression())
!291 = distinct !DIGlobalVariable(scope: null, file: !2, line: 712, type: !292, isLocal: true, isDefinition: true)
!292 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 472, elements: !293)
!293 = !{!294}
!294 = !DISubrange(count: 59)
!295 = !DIGlobalVariableExpression(var: !296, expr: !DIExpression())
!296 = distinct !DIGlobalVariable(scope: null, file: !2, line: 717, type: !297, isLocal: true, isDefinition: true)
!297 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 392, elements: !298)
!298 = !{!299}
!299 = !DISubrange(count: 49)
!300 = !DIGlobalVariableExpression(var: !301, expr: !DIExpression())
!301 = distinct !DIGlobalVariable(scope: null, file: !2, line: 720, type: !302, isLocal: true, isDefinition: true)
!302 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !303)
!303 = !{!304}
!304 = !DISubrange(count: 56)
!305 = !DIGlobalVariableExpression(var: !306, expr: !DIExpression())
!306 = distinct !DIGlobalVariable(scope: null, file: !2, line: 723, type: !307, isLocal: true, isDefinition: true)
!307 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !308)
!308 = !{!309}
!309 = !DISubrange(count: 32)
!310 = !DIGlobalVariableExpression(var: !311, expr: !DIExpression())
!311 = distinct !DIGlobalVariable(scope: null, file: !2, line: 726, type: !312, isLocal: true, isDefinition: true)
!312 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 488, elements: !313)
!313 = !{!314}
!314 = !DISubrange(count: 61)
!315 = !DIGlobalVariableExpression(var: !316, expr: !DIExpression())
!316 = distinct !DIGlobalVariable(scope: null, file: !2, line: 734, type: !317, isLocal: true, isDefinition: true)
!317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 880, elements: !318)
!318 = !{!319}
!319 = !DISubrange(count: 110)
!320 = !DIGlobalVariableExpression(var: !321, expr: !DIExpression())
!321 = distinct !DIGlobalVariable(scope: null, file: !2, line: 664, type: !322, isLocal: true, isDefinition: true)
!322 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1928, elements: !323)
!323 = !{!324}
!324 = !DISubrange(count: 241)
!325 = !DIGlobalVariableExpression(var: !326, expr: !DIExpression())
!326 = distinct !DIGlobalVariable(scope: null, file: !2, line: 924, type: !327, isLocal: true, isDefinition: true)
!327 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 960, elements: !328)
!328 = !{!329}
!329 = !DISubrange(count: 120)
!330 = !DIGlobalVariableExpression(var: !331, expr: !DIExpression())
!331 = distinct !DIGlobalVariable(scope: null, file: !2, line: 875, type: !332, isLocal: true, isDefinition: true)
!332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 304, elements: !333)
!333 = !{!334}
!334 = !DISubrange(count: 38)
!335 = !DIGlobalVariableExpression(var: !336, expr: !DIExpression())
!336 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1605, type: !337, isLocal: true, isDefinition: true)
!337 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 4248, elements: !338)
!338 = !{!339}
!339 = !DISubrange(count: 531)
!340 = !DIGlobalVariableExpression(var: !341, expr: !DIExpression())
!341 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1630, type: !342, isLocal: true, isDefinition: true)
!342 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 9840, elements: !343)
!343 = !{!344}
!344 = !DISubrange(count: 1230)
!345 = !DIGlobalVariableExpression(var: !346, expr: !DIExpression())
!346 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1674, type: !297, isLocal: true, isDefinition: true)
!347 = !DIGlobalVariableExpression(var: !348, expr: !DIExpression())
!348 = distinct !DIGlobalVariable(scope: null, file: !2, line: 808, type: !349, isLocal: true, isDefinition: true)
!349 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 360, elements: !350)
!350 = !{!351}
!351 = !DISubrange(count: 45)
!352 = !DIGlobalVariableExpression(var: !353, expr: !DIExpression())
!353 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1143, type: !354, isLocal: true, isDefinition: true)
!354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !355)
!355 = !{!356}
!356 = !DISubrange(count: 21)
!357 = !DIGlobalVariableExpression(var: !358, expr: !DIExpression())
!358 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1147, type: !122, isLocal: true, isDefinition: true)
!359 = !DIGlobalVariableExpression(var: !360, expr: !DIExpression())
!360 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1148, type: !107, isLocal: true, isDefinition: true)
!361 = !DIGlobalVariableExpression(var: !362, expr: !DIExpression())
!362 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1163, type: !363, isLocal: true, isDefinition: true)
!363 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !364)
!364 = !{!365}
!365 = !DISubrange(count: 39)
!366 = !DIGlobalVariableExpression(var: !367, expr: !DIExpression())
!367 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1169, type: !368, isLocal: true, isDefinition: true)
!368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 280, elements: !369)
!369 = !{!370}
!370 = !DISubrange(count: 35)
!371 = !DIGlobalVariableExpression(var: !372, expr: !DIExpression())
!372 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1178, type: !373, isLocal: true, isDefinition: true)
!373 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 336, elements: !374)
!374 = !{!375}
!375 = !DISubrange(count: 42)
!376 = !DIGlobalVariableExpression(var: !377, expr: !DIExpression())
!377 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1188, type: !368, isLocal: true, isDefinition: true)
!378 = !DIGlobalVariableExpression(var: !379, expr: !DIExpression())
!379 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1196, type: !380, isLocal: true, isDefinition: true)
!380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 328, elements: !381)
!381 = !{!382}
!382 = !DISubrange(count: 41)
!383 = !DIGlobalVariableExpression(var: !384, expr: !DIExpression())
!384 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1205, type: !282, isLocal: true, isDefinition: true)
!385 = !DIGlobalVariableExpression(var: !386, expr: !DIExpression())
!386 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1213, type: !162, isLocal: true, isDefinition: true)
!387 = !DIGlobalVariableExpression(var: !388, expr: !DIExpression())
!388 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1214, type: !389, isLocal: true, isDefinition: true)
!389 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !390)
!390 = !{!391}
!391 = !DISubrange(count: 2)
!392 = !DIGlobalVariableExpression(var: !393, expr: !DIExpression())
!393 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1232, type: !394, isLocal: true, isDefinition: true)
!394 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 400, elements: !395)
!395 = !{!396}
!396 = !DISubrange(count: 50)
!397 = !DIGlobalVariableExpression(var: !398, expr: !DIExpression())
!398 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1234, type: !399, isLocal: true, isDefinition: true)
!399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !400)
!400 = !{!401}
!401 = !DISubrange(count: 34)
!402 = !DIGlobalVariableExpression(var: !403, expr: !DIExpression())
!403 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1242, type: !85, isLocal: true, isDefinition: true)
!404 = !DIGlobalVariableExpression(var: !405, expr: !DIExpression())
!405 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1264, type: !85, isLocal: true, isDefinition: true)
!406 = !DIGlobalVariableExpression(var: !407, expr: !DIExpression())
!407 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1266, type: !332, isLocal: true, isDefinition: true)
!408 = !DIGlobalVariableExpression(var: !409, expr: !DIExpression())
!409 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1282, type: !410, isLocal: true, isDefinition: true)
!410 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !411)
!411 = !{!412}
!412 = !DISubrange(count: 22)
!413 = !DIGlobalVariableExpression(var: !414, expr: !DIExpression())
!414 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1287, type: !76, isLocal: true, isDefinition: true)
!415 = !DIGlobalVariableExpression(var: !416, expr: !DIExpression())
!416 = distinct !DIGlobalVariable(scope: null, file: !2, line: 749, type: !417, isLocal: true, isDefinition: true)
!417 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 872, elements: !418)
!418 = !{!419}
!419 = !DISubrange(count: 109)
!420 = !DIGlobalVariableExpression(var: !421, expr: !DIExpression())
!421 = distinct !DIGlobalVariable(name: "fileMetaInfo", scope: !21, file: !2, line: 1034, type: !422, isLocal: true, isDefinition: true)
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !423, line: 26, size: 1152, elements: !424)
!423 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "3ba283bc334370fe631cbc82f5229ed7")
!424 = !{!425, !427, !429, !431, !433, !435, !437, !438, !439, !440, !442, !444, !452, !453, !454}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !422, file: !423, line: 31, baseType: !426, size: 64)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !243, line: 145, baseType: !57)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !422, file: !423, line: 36, baseType: !428, size: 64, offset: 64)
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !243, line: 148, baseType: !57)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !422, file: !423, line: 44, baseType: !430, size: 64, offset: 128)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !243, line: 151, baseType: !57)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !422, file: !423, line: 45, baseType: !432, size: 32, offset: 192)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !243, line: 150, baseType: !25)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !422, file: !423, line: 47, baseType: !434, size: 32, offset: 224)
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !243, line: 146, baseType: !25)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !422, file: !423, line: 48, baseType: !436, size: 32, offset: 256)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !243, line: 147, baseType: !25)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !422, file: !423, line: 50, baseType: !46, size: 32, offset: 288)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !422, file: !423, line: 52, baseType: !426, size: 64, offset: 320)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !422, file: !423, line: 57, baseType: !242, size: 64, offset: 384)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !422, file: !423, line: 61, baseType: !441, size: 64, offset: 448)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !243, line: 175, baseType: !244)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !422, file: !423, line: 63, baseType: !443, size: 64, offset: 512)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !243, line: 180, baseType: !244)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !422, file: !423, line: 74, baseType: !445, size: 128, offset: 576)
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !446, line: 11, size: 128, elements: !447)
!446 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!447 = !{!448, !450}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !445, file: !446, line: 16, baseType: !449, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !243, line: 160, baseType: !244)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !445, file: !446, line: 21, baseType: !451, size: 64, offset: 64)
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !243, line: 197, baseType: !244)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !422, file: !423, line: 75, baseType: !445, size: 128, offset: 704)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !422, file: !423, line: 76, baseType: !445, size: 128, offset: 832)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !422, file: !423, line: 89, baseType: !455, size: 192, offset: 960)
!455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !451, size: 192, elements: !86)
!456 = !DIGlobalVariableExpression(var: !457, expr: !DIExpression())
!457 = distinct !DIGlobalVariable(scope: null, file: !2, line: 913, type: !389, isLocal: true, isDefinition: true)
!458 = !DIGlobalVariableExpression(var: !459, expr: !DIExpression())
!459 = distinct !DIGlobalVariable(scope: null, file: !2, line: 348, type: !389, isLocal: true, isDefinition: true)
!460 = !DIGlobalVariableExpression(var: !461, expr: !DIExpression())
!461 = distinct !DIGlobalVariable(scope: null, file: !2, line: 383, type: !410, isLocal: true, isDefinition: true)
!462 = !DIGlobalVariableExpression(var: !463, expr: !DIExpression())
!463 = distinct !DIGlobalVariable(scope: null, file: !2, line: 396, type: !464, isLocal: true, isDefinition: true)
!464 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 456, elements: !465)
!465 = !{!466}
!466 = !DISubrange(count: 57)
!467 = !DIGlobalVariableExpression(var: !468, expr: !DIExpression())
!468 = distinct !DIGlobalVariable(scope: null, file: !2, line: 422, type: !469, isLocal: true, isDefinition: true)
!469 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !470)
!470 = !{!471}
!471 = !DISubrange(count: 26)
!472 = !DIGlobalVariableExpression(var: !473, expr: !DIExpression())
!473 = distinct !DIGlobalVariable(scope: null, file: !2, line: 887, type: !474, isLocal: true, isDefinition: true)
!474 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1888, elements: !475)
!475 = !{!476}
!476 = !DISubrange(count: 236)
!477 = !DIGlobalVariableExpression(var: !478, expr: !DIExpression())
!478 = distinct !DIGlobalVariable(scope: null, file: !2, line: 794, type: !479, isLocal: true, isDefinition: true)
!479 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 520, elements: !480)
!480 = !{!481}
!481 = !DISubrange(count: 65)
!482 = !DIGlobalVariableExpression(var: !483, expr: !DIExpression())
!483 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1326, type: !484, isLocal: true, isDefinition: true)
!484 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !485)
!485 = !{!486}
!486 = !DISubrange(count: 23)
!487 = !DIGlobalVariableExpression(var: !488, expr: !DIExpression())
!488 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1341, type: !3, isLocal: true, isDefinition: true)
!489 = !DIGlobalVariableExpression(var: !490, expr: !DIExpression())
!490 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1383, type: !394, isLocal: true, isDefinition: true)
!491 = !DIGlobalVariableExpression(var: !492, expr: !DIExpression())
!492 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1418, type: !493, isLocal: true, isDefinition: true)
!493 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !494)
!494 = !{!495}
!495 = !DISubrange(count: 51)
!496 = !DIGlobalVariableExpression(var: !497, expr: !DIExpression())
!497 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1431, type: !399, isLocal: true, isDefinition: true)
!498 = !DIGlobalVariableExpression(var: !499, expr: !DIExpression())
!499 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1459, type: !500, isLocal: true, isDefinition: true)
!500 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !501)
!501 = !{!502}
!502 = !DISubrange(count: 24)
!503 = !DIGlobalVariableExpression(var: !504, expr: !DIExpression())
!504 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1497, type: !14, isLocal: true, isDefinition: true)
!505 = !DIGlobalVariableExpression(var: !506, expr: !DIExpression())
!506 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1501, type: !102, isLocal: true, isDefinition: true)
!507 = !DIGlobalVariableExpression(var: !508, expr: !DIExpression())
!508 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1503, type: !509, isLocal: true, isDefinition: true)
!509 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !510)
!510 = !{!511}
!511 = !DISubrange(count: 29)
!512 = !DIGlobalVariableExpression(var: !513, expr: !DIExpression())
!513 = distinct !DIGlobalVariable(scope: null, file: !2, line: 471, type: !514, isLocal: true, isDefinition: true)
!514 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !515)
!515 = !{!516}
!516 = !DISubrange(count: 27)
!517 = !DIGlobalVariableExpression(var: !518, expr: !DIExpression())
!518 = distinct !DIGlobalVariable(scope: null, file: !2, line: 501, type: !14, isLocal: true, isDefinition: true)
!519 = !DIGlobalVariableExpression(var: !520, expr: !DIExpression())
!520 = distinct !DIGlobalVariable(scope: null, file: !2, line: 539, type: !349, isLocal: true, isDefinition: true)
!521 = !DIGlobalVariableExpression(var: !522, expr: !DIExpression())
!522 = distinct !DIGlobalVariable(scope: null, file: !2, line: 544, type: !523, isLocal: true, isDefinition: true)
!523 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !524)
!524 = !{!525}
!525 = !DISubrange(count: 28)
!526 = !DIGlobalVariableExpression(var: !527, expr: !DIExpression())
!527 = distinct !DIGlobalVariable(scope: null, file: !2, line: 764, type: !528, isLocal: true, isDefinition: true)
!528 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 376, elements: !529)
!529 = !{!530}
!530 = !DISubrange(count: 47)
!531 = !DIGlobalVariableExpression(var: !532, expr: !DIExpression())
!532 = distinct !DIGlobalVariable(scope: null, file: !2, line: 778, type: !533, isLocal: true, isDefinition: true)
!533 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 760, elements: !534)
!534 = !{!535}
!535 = !DISubrange(count: 95)
!536 = !DIGlobalVariableExpression(var: !537, expr: !DIExpression())
!537 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1521, type: !147, isLocal: true, isDefinition: true)
!538 = !DIGlobalVariableExpression(var: !539, expr: !DIExpression())
!539 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1538, type: !540, isLocal: true, isDefinition: true)
!540 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !541)
!541 = !{!542}
!542 = !DISubrange(count: 30)
!543 = !DIGlobalVariableExpression(var: !544, expr: !DIExpression())
!544 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1580, type: !102, isLocal: true, isDefinition: true)
!545 = !DIGlobalVariableExpression(var: !546, expr: !DIExpression())
!546 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1594, type: !9, isLocal: true, isDefinition: true)
!547 = !DIGlobalVariableExpression(var: !548, expr: !DIExpression())
!548 = distinct !DIGlobalVariable(scope: null, file: !2, line: 586, type: !354, isLocal: true, isDefinition: true)
!549 = !DIGlobalVariableExpression(var: !550, expr: !DIExpression())
!550 = distinct !DIGlobalVariable(scope: null, file: !2, line: 607, type: !107, isLocal: true, isDefinition: true)
!551 = !DIGlobalVariableExpression(var: !552, expr: !DIExpression())
!552 = distinct !DIGlobalVariable(scope: null, file: !2, line: 616, type: !282, isLocal: true, isDefinition: true)
!553 = !DIGlobalVariableExpression(var: !554, expr: !DIExpression())
!554 = distinct !DIGlobalVariable(scope: null, file: !2, line: 622, type: !500, isLocal: true, isDefinition: true)
!555 = !DIGlobalVariableExpression(var: !556, expr: !DIExpression())
!556 = distinct !DIGlobalVariable(scope: null, file: !2, line: 628, type: !557, isLocal: true, isDefinition: true)
!557 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 368, elements: !558)
!558 = !{!559}
!559 = !DISubrange(count: 46)
!560 = !DIGlobalVariableExpression(var: !561, expr: !DIExpression())
!561 = distinct !DIGlobalVariable(scope: null, file: !2, line: 633, type: !282, isLocal: true, isDefinition: true)
!562 = !DIGlobalVariableExpression(var: !563, expr: !DIExpression())
!563 = distinct !DIGlobalVariable(scope: null, file: !2, line: 637, type: !410, isLocal: true, isDefinition: true)
!564 = !{i32 7, !"Dwarf Version", i32 5}
!565 = !{i32 2, !"Debug Info Version", i32 3}
!566 = !{i32 1, !"wchar_size", i32 4}
!567 = !{i32 8, !"PIC Level", i32 2}
!568 = !{i32 7, !"PIE Level", i32 2}
!569 = !{i32 7, !"uwtable", i32 2}
!570 = !{i32 7, !"frame-pointer", i32 2}
!571 = !{!"clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)"}
!572 = distinct !DISubprogram(name: "main1", scope: !2, file: !2, line: 1776, type: !573, scopeLine: 1777, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !21, retainedNodes: !577)
!573 = !DISubroutineType(types: !574)
!574 = !{!575, !575, !576}
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "IntNative", file: !2, line: 176, baseType: !46)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!577 = !{}
!578 = !DILocalVariable(name: "argc", arg: 1, scope: !572, file: !2, line: 1776, type: !575)
!579 = !DILocation(line: 1776, column: 29, scope: !572)
!580 = !DILocalVariable(name: "argv", arg: 2, scope: !572, file: !2, line: 1776, type: !576)
!581 = !DILocation(line: 1776, column: 41, scope: !572)
!582 = !DILocalVariable(name: "i", scope: !572, file: !2, line: 1778, type: !45)
!583 = !DILocation(line: 1778, column: 11, scope: !572)
!584 = !DILocalVariable(name: "j", scope: !572, file: !2, line: 1778, type: !45)
!585 = !DILocation(line: 1778, column: 14, scope: !572)
!586 = !DILocalVariable(name: "tmp", scope: !572, file: !2, line: 1779, type: !42)
!587 = !DILocation(line: 1779, column: 12, scope: !572)
!588 = !DILocalVariable(name: "argList", scope: !572, file: !2, line: 1780, type: !48)
!589 = !DILocation(line: 1780, column: 12, scope: !572)
!590 = !DILocalVariable(name: "aa", scope: !572, file: !2, line: 1781, type: !48)
!591 = !DILocation(line: 1781, column: 12, scope: !572)
!592 = !DILocalVariable(name: "decode", scope: !572, file: !2, line: 1782, type: !40)
!593 = !DILocation(line: 1782, column: 11, scope: !572)
!594 = !DILocation(line: 1791, column: 28, scope: !572)
!595 = !DILocation(line: 1792, column: 28, scope: !572)
!596 = !DILocation(line: 1793, column: 28, scope: !572)
!597 = !DILocation(line: 1794, column: 28, scope: !572)
!598 = !DILocation(line: 1795, column: 28, scope: !572)
!599 = !DILocation(line: 1796, column: 28, scope: !572)
!600 = !DILocation(line: 1797, column: 28, scope: !572)
!601 = !DILocation(line: 1798, column: 28, scope: !572)
!602 = !DILocation(line: 1799, column: 28, scope: !572)
!603 = !DILocation(line: 1800, column: 28, scope: !572)
!604 = !DILocation(line: 1801, column: 28, scope: !572)
!605 = !DILocation(line: 1802, column: 28, scope: !572)
!606 = !DILocation(line: 1803, column: 28, scope: !572)
!607 = !DILocation(line: 1804, column: 28, scope: !572)
!608 = !DILocation(line: 1805, column: 10, scope: !572)
!609 = !DILocation(line: 1805, column: 6, scope: !572)
!610 = !DILocation(line: 1808, column: 4, scope: !572)
!611 = !DILocation(line: 1811, column: 4, scope: !572)
!612 = !DILocation(line: 1815, column: 4, scope: !572)
!613 = !DILocation(line: 1816, column: 4, scope: !572)
!614 = !DILocation(line: 1818, column: 35, scope: !572)
!615 = !DILocation(line: 1818, column: 4, scope: !572)
!616 = !DILocation(line: 1819, column: 13, scope: !572)
!617 = !DILocation(line: 1820, column: 13, scope: !618)
!618 = distinct !DILexicalBlock(scope: !572, file: !2, line: 1820, column: 4)
!619 = !DILocation(line: 1820, column: 9, scope: !618)
!620 = !DILocation(line: 1820, column: 36, scope: !621)
!621 = distinct !DILexicalBlock(scope: !618, file: !2, line: 1820, column: 4)
!622 = !DILocation(line: 1820, column: 35, scope: !621)
!623 = !DILocation(line: 1820, column: 40, scope: !621)
!624 = !DILocation(line: 1820, column: 4, scope: !618)
!625 = !DILocation(line: 1821, column: 12, scope: !626)
!626 = distinct !DILexicalBlock(scope: !621, file: !2, line: 1821, column: 11)
!627 = !DILocation(line: 1821, column: 11, scope: !626)
!628 = !DILocation(line: 1821, column: 16, scope: !626)
!629 = !DILocation(line: 1821, column: 40, scope: !626)
!630 = !DILocation(line: 1821, column: 44, scope: !626)
!631 = !DILocation(line: 1821, column: 38, scope: !626)
!632 = !DILocation(line: 1821, column: 29, scope: !626)
!633 = !DILocation(line: 1821, column: 19, scope: !626)
!634 = !DILocation(line: 1820, column: 52, scope: !621)
!635 = !DILocation(line: 1820, column: 4, scope: !621)
!636 = distinct !{!636, !624, !637, !638}
!637 = !DILocation(line: 1821, column: 46, scope: !618)
!638 = !{!"llvm.loop.mustprogress"}
!639 = !DILocation(line: 1827, column: 12, scope: !572)
!640 = !DILocation(line: 1828, column: 4, scope: !572)
!641 = !DILocation(line: 1829, column: 4, scope: !572)
!642 = !DILocation(line: 1830, column: 11, scope: !643)
!643 = distinct !DILexicalBlock(scope: !572, file: !2, line: 1830, column: 4)
!644 = !DILocation(line: 1830, column: 9, scope: !643)
!645 = !DILocation(line: 1830, column: 16, scope: !646)
!646 = distinct !DILexicalBlock(scope: !643, file: !2, line: 1830, column: 4)
!647 = !DILocation(line: 1830, column: 21, scope: !646)
!648 = !DILocation(line: 1830, column: 25, scope: !646)
!649 = !DILocation(line: 1830, column: 18, scope: !646)
!650 = !DILocation(line: 1830, column: 4, scope: !643)
!651 = !DILocation(line: 1831, column: 7, scope: !646)
!652 = !DILocation(line: 1830, column: 30, scope: !646)
!653 = !DILocation(line: 1830, column: 4, scope: !646)
!654 = distinct !{!654, !650, !655, !638}
!655 = !DILocation(line: 1831, column: 7, scope: !643)
!656 = !DILocation(line: 1835, column: 20, scope: !572)
!657 = !DILocation(line: 1836, column: 20, scope: !572)
!658 = !DILocation(line: 1837, column: 20, scope: !572)
!659 = !DILocation(line: 1838, column: 14, scope: !660)
!660 = distinct !DILexicalBlock(scope: !572, file: !2, line: 1838, column: 4)
!661 = !DILocation(line: 1838, column: 12, scope: !660)
!662 = !DILocation(line: 1838, column: 9, scope: !660)
!663 = !DILocation(line: 1838, column: 23, scope: !664)
!664 = distinct !DILexicalBlock(scope: !660, file: !2, line: 1838, column: 4)
!665 = !DILocation(line: 1838, column: 26, scope: !664)
!666 = !DILocation(line: 1838, column: 4, scope: !660)
!667 = !DILocation(line: 1839, column: 11, scope: !668)
!668 = distinct !DILexicalBlock(scope: !669, file: !2, line: 1839, column: 11)
!669 = distinct !DILexicalBlock(scope: !664, file: !2, line: 1838, column: 50)
!670 = !DILocation(line: 1839, column: 34, scope: !671)
!671 = distinct !DILexicalBlock(scope: !668, file: !2, line: 1839, column: 25)
!672 = !DILocation(line: 1839, column: 43, scope: !671)
!673 = !DILocation(line: 1840, column: 11, scope: !674)
!674 = distinct !DILexicalBlock(scope: !669, file: !2, line: 1840, column: 11)
!675 = !DILocation(line: 1840, column: 15, scope: !674)
!676 = !DILocation(line: 1840, column: 23, scope: !674)
!677 = !DILocation(line: 1840, column: 30, scope: !674)
!678 = !DILocation(line: 1840, column: 33, scope: !674)
!679 = !DILocation(line: 1840, column: 41, scope: !674)
!680 = !DILocation(line: 1841, column: 19, scope: !669)
!681 = !DILocation(line: 1842, column: 11, scope: !682)
!682 = distinct !DILexicalBlock(scope: !669, file: !2, line: 1842, column: 11)
!683 = !DILocation(line: 1842, column: 43, scope: !682)
!684 = !DILocation(line: 1842, column: 47, scope: !682)
!685 = !DILocation(line: 1842, column: 36, scope: !682)
!686 = !DILocation(line: 1842, column: 29, scope: !682)
!687 = !DILocation(line: 1842, column: 27, scope: !682)
!688 = !DILocation(line: 1843, column: 42, scope: !682)
!689 = !DILocation(line: 1843, column: 46, scope: !682)
!690 = !DILocation(line: 1843, column: 35, scope: !682)
!691 = !DILocation(line: 1843, column: 28, scope: !682)
!692 = !DILocation(line: 1843, column: 26, scope: !682)
!693 = !DILocation(line: 1843, column: 10, scope: !682)
!694 = !DILocation(line: 1844, column: 4, scope: !669)
!695 = !DILocation(line: 1838, column: 40, scope: !664)
!696 = !DILocation(line: 1838, column: 44, scope: !664)
!697 = !DILocation(line: 1838, column: 38, scope: !664)
!698 = !DILocation(line: 1838, column: 4, scope: !664)
!699 = distinct !{!699, !666, !700, !638}
!700 = !DILocation(line: 1844, column: 4, scope: !660)
!701 = !DILocation(line: 1848, column: 8, scope: !702)
!702 = distinct !DILexicalBlock(scope: !572, file: !2, line: 1848, column: 8)
!703 = !DILocation(line: 1848, column: 21, scope: !702)
!704 = !DILocation(line: 1849, column: 15, scope: !702)
!705 = !DILocation(line: 1849, column: 7, scope: !702)
!706 = !DILocation(line: 1849, column: 38, scope: !702)
!707 = !DILocation(line: 1854, column: 11, scope: !572)
!708 = !DILocation(line: 1856, column: 19, scope: !709)
!709 = distinct !DILexicalBlock(scope: !572, file: !2, line: 1856, column: 9)
!710 = !DILocation(line: 1856, column: 10, scope: !709)
!711 = !DILocation(line: 1856, column: 39, scope: !709)
!712 = !DILocation(line: 1856, column: 45, scope: !709)
!713 = !DILocation(line: 1857, column: 19, scope: !709)
!714 = !DILocation(line: 1857, column: 10, scope: !709)
!715 = !DILocation(line: 1857, column: 39, scope: !709)
!716 = !DILocation(line: 1858, column: 14, scope: !709)
!717 = !DILocation(line: 1858, column: 7, scope: !709)
!718 = !DILocation(line: 1860, column: 19, scope: !719)
!719 = distinct !DILexicalBlock(scope: !572, file: !2, line: 1860, column: 9)
!720 = !DILocation(line: 1860, column: 10, scope: !719)
!721 = !DILocation(line: 1860, column: 39, scope: !719)
!722 = !DILocation(line: 1860, column: 45, scope: !719)
!723 = !DILocation(line: 1861, column: 19, scope: !719)
!724 = !DILocation(line: 1861, column: 10, scope: !719)
!725 = !DILocation(line: 1861, column: 39, scope: !719)
!726 = !DILocation(line: 1861, column: 45, scope: !719)
!727 = !DILocation(line: 1862, column: 19, scope: !719)
!728 = !DILocation(line: 1862, column: 10, scope: !719)
!729 = !DILocation(line: 1862, column: 38, scope: !719)
!730 = !DILocation(line: 1862, column: 45, scope: !719)
!731 = !DILocation(line: 1863, column: 19, scope: !719)
!732 = !DILocation(line: 1863, column: 10, scope: !719)
!733 = !DILocation(line: 1863, column: 38, scope: !719)
!734 = !DILocation(line: 1864, column: 14, scope: !735)
!735 = distinct !DILexicalBlock(scope: !719, file: !2, line: 1863, column: 47)
!736 = !DILocation(line: 1865, column: 18, scope: !735)
!737 = !DILocation(line: 1865, column: 31, scope: !735)
!738 = !DILocation(line: 1865, column: 17, scope: !735)
!739 = !DILocation(line: 1865, column: 15, scope: !735)
!740 = !DILocation(line: 1866, column: 4, scope: !735)
!741 = !DILocation(line: 1870, column: 14, scope: !742)
!742 = distinct !DILexicalBlock(scope: !572, file: !2, line: 1870, column: 4)
!743 = !DILocation(line: 1870, column: 12, scope: !742)
!744 = !DILocation(line: 1870, column: 9, scope: !742)
!745 = !DILocation(line: 1870, column: 23, scope: !746)
!746 = distinct !DILexicalBlock(scope: !742, file: !2, line: 1870, column: 4)
!747 = !DILocation(line: 1870, column: 26, scope: !746)
!748 = !DILocation(line: 1870, column: 4, scope: !742)
!749 = !DILocation(line: 1871, column: 11, scope: !750)
!750 = distinct !DILexicalBlock(scope: !751, file: !2, line: 1871, column: 11)
!751 = distinct !DILexicalBlock(scope: !746, file: !2, line: 1870, column: 50)
!752 = !DILocation(line: 1871, column: 25, scope: !750)
!753 = !DILocation(line: 1872, column: 11, scope: !754)
!754 = distinct !DILexicalBlock(scope: !751, file: !2, line: 1872, column: 11)
!755 = !DILocation(line: 1872, column: 15, scope: !754)
!756 = !DILocation(line: 1872, column: 23, scope: !754)
!757 = !DILocation(line: 1872, column: 30, scope: !754)
!758 = !DILocation(line: 1872, column: 33, scope: !754)
!759 = !DILocation(line: 1872, column: 37, scope: !754)
!760 = !DILocation(line: 1872, column: 45, scope: !754)
!761 = !DILocation(line: 1873, column: 17, scope: !762)
!762 = distinct !DILexicalBlock(scope: !763, file: !2, line: 1873, column: 10)
!763 = distinct !DILexicalBlock(scope: !754, file: !2, line: 1872, column: 53)
!764 = !DILocation(line: 1873, column: 15, scope: !762)
!765 = !DILocation(line: 1873, column: 22, scope: !766)
!766 = distinct !DILexicalBlock(scope: !762, file: !2, line: 1873, column: 10)
!767 = !DILocation(line: 1873, column: 26, scope: !766)
!768 = !DILocation(line: 1873, column: 31, scope: !766)
!769 = !DILocation(line: 1873, column: 34, scope: !766)
!770 = !DILocation(line: 1873, column: 10, scope: !762)
!771 = !DILocation(line: 1874, column: 21, scope: !772)
!772 = distinct !DILexicalBlock(scope: !766, file: !2, line: 1873, column: 48)
!773 = !DILocation(line: 1874, column: 25, scope: !772)
!774 = !DILocation(line: 1874, column: 30, scope: !772)
!775 = !DILocation(line: 1874, column: 13, scope: !772)
!776 = !DILocation(line: 1875, column: 43, scope: !777)
!777 = distinct !DILexicalBlock(scope: !772, file: !2, line: 1874, column: 34)
!778 = !DILocation(line: 1875, column: 53, scope: !777)
!779 = !DILocation(line: 1876, column: 43, scope: !777)
!780 = !DILocation(line: 1876, column: 53, scope: !777)
!781 = !DILocation(line: 1877, column: 43, scope: !777)
!782 = !DILocation(line: 1877, column: 51, scope: !777)
!783 = !DILocation(line: 1878, column: 43, scope: !777)
!784 = !DILocation(line: 1878, column: 51, scope: !777)
!785 = !DILocation(line: 1879, column: 43, scope: !777)
!786 = !DILocation(line: 1879, column: 54, scope: !777)
!787 = !DILocation(line: 1880, column: 43, scope: !777)
!788 = !DILocation(line: 1880, column: 51, scope: !777)
!789 = !DILocation(line: 1881, column: 43, scope: !777)
!790 = !DILocation(line: 1881, column: 51, scope: !777)
!791 = !DILocation(line: 1882, column: 43, scope: !777)
!792 = !DILocation(line: 1882, column: 52, scope: !777)
!793 = !DILocation(line: 1883, column: 43, scope: !777)
!794 = !DILocation(line: 1883, column: 48, scope: !777)
!795 = !DILocation(line: 1884, column: 43, scope: !777)
!796 = !DILocation(line: 1884, column: 48, scope: !777)
!797 = !DILocation(line: 1885, column: 43, scope: !777)
!798 = !DILocation(line: 1885, column: 48, scope: !777)
!799 = !DILocation(line: 1886, column: 43, scope: !777)
!800 = !DILocation(line: 1886, column: 48, scope: !777)
!801 = !DILocation(line: 1887, column: 43, scope: !777)
!802 = !DILocation(line: 1887, column: 48, scope: !777)
!803 = !DILocation(line: 1888, column: 43, scope: !777)
!804 = !DILocation(line: 1888, column: 48, scope: !777)
!805 = !DILocation(line: 1889, column: 43, scope: !777)
!806 = !DILocation(line: 1889, column: 48, scope: !777)
!807 = !DILocation(line: 1890, column: 43, scope: !777)
!808 = !DILocation(line: 1890, column: 48, scope: !777)
!809 = !DILocation(line: 1891, column: 43, scope: !777)
!810 = !DILocation(line: 1891, column: 48, scope: !777)
!811 = !DILocation(line: 1893, column: 26, scope: !777)
!812 = !DILocation(line: 1893, column: 48, scope: !777)
!813 = !DILocation(line: 1894, column: 35, scope: !777)
!814 = !DILocation(line: 1894, column: 39, scope: !777)
!815 = !DILocation(line: 1895, column: 34, scope: !777)
!816 = !DILocation(line: 1895, column: 26, scope: !777)
!817 = !DILocation(line: 1896, column: 26, scope: !777)
!818 = !DILocation(line: 1898, column: 36, scope: !777)
!819 = !DILocation(line: 1899, column: 36, scope: !777)
!820 = !DILocation(line: 1899, column: 46, scope: !777)
!821 = !DILocation(line: 1899, column: 50, scope: !777)
!822 = !DILocation(line: 1898, column: 26, scope: !777)
!823 = !DILocation(line: 1900, column: 34, scope: !777)
!824 = !DILocation(line: 1900, column: 26, scope: !777)
!825 = !DILocation(line: 1901, column: 26, scope: !777)
!826 = !DILocation(line: 1904, column: 10, scope: !772)
!827 = !DILocation(line: 1873, column: 44, scope: !766)
!828 = !DILocation(line: 1873, column: 10, scope: !766)
!829 = distinct !{!829, !770, !830, !638}
!830 = !DILocation(line: 1904, column: 10, scope: !762)
!831 = !DILocation(line: 1905, column: 7, scope: !763)
!832 = !DILocation(line: 1906, column: 4, scope: !751)
!833 = !DILocation(line: 1870, column: 40, scope: !746)
!834 = !DILocation(line: 1870, column: 44, scope: !746)
!835 = !DILocation(line: 1870, column: 38, scope: !746)
!836 = !DILocation(line: 1870, column: 4, scope: !746)
!837 = distinct !{!837, !748, !838, !638}
!838 = !DILocation(line: 1906, column: 4, scope: !742)
!839 = !DILocation(line: 1909, column: 14, scope: !840)
!840 = distinct !DILexicalBlock(scope: !572, file: !2, line: 1909, column: 4)
!841 = !DILocation(line: 1909, column: 12, scope: !840)
!842 = !DILocation(line: 1909, column: 9, scope: !840)
!843 = !DILocation(line: 1909, column: 23, scope: !844)
!844 = distinct !DILexicalBlock(scope: !840, file: !2, line: 1909, column: 4)
!845 = !DILocation(line: 1909, column: 26, scope: !844)
!846 = !DILocation(line: 1909, column: 4, scope: !840)
!847 = !DILocation(line: 1910, column: 11, scope: !848)
!848 = distinct !DILexicalBlock(scope: !849, file: !2, line: 1910, column: 11)
!849 = distinct !DILexicalBlock(scope: !844, file: !2, line: 1909, column: 50)
!850 = !DILocation(line: 1910, column: 25, scope: !848)
!851 = !DILocation(line: 1911, column: 11, scope: !852)
!852 = distinct !DILexicalBlock(scope: !849, file: !2, line: 1911, column: 11)
!853 = !DILocation(line: 1911, column: 59, scope: !852)
!854 = !DILocation(line: 1911, column: 42, scope: !852)
!855 = !DILocation(line: 1912, column: 11, scope: !856)
!856 = distinct !DILexicalBlock(scope: !852, file: !2, line: 1912, column: 11)
!857 = !DILocation(line: 1912, column: 59, scope: !856)
!858 = !DILocation(line: 1912, column: 42, scope: !856)
!859 = !DILocation(line: 1913, column: 11, scope: !860)
!860 = distinct !DILexicalBlock(scope: !856, file: !2, line: 1913, column: 11)
!861 = !DILocation(line: 1913, column: 59, scope: !860)
!862 = !DILocation(line: 1913, column: 42, scope: !860)
!863 = !DILocation(line: 1914, column: 11, scope: !864)
!864 = distinct !DILexicalBlock(scope: !860, file: !2, line: 1914, column: 11)
!865 = !DILocation(line: 1914, column: 59, scope: !864)
!866 = !DILocation(line: 1914, column: 42, scope: !864)
!867 = !DILocation(line: 1915, column: 11, scope: !868)
!868 = distinct !DILexicalBlock(scope: !864, file: !2, line: 1915, column: 11)
!869 = !DILocation(line: 1915, column: 59, scope: !868)
!870 = !DILocation(line: 1915, column: 42, scope: !868)
!871 = !DILocation(line: 1916, column: 11, scope: !872)
!872 = distinct !DILexicalBlock(scope: !868, file: !2, line: 1916, column: 11)
!873 = !DILocation(line: 1916, column: 59, scope: !872)
!874 = !DILocation(line: 1916, column: 42, scope: !872)
!875 = !DILocation(line: 1917, column: 11, scope: !876)
!876 = distinct !DILexicalBlock(scope: !872, file: !2, line: 1917, column: 11)
!877 = !DILocation(line: 1917, column: 59, scope: !876)
!878 = !DILocation(line: 1917, column: 42, scope: !876)
!879 = !DILocation(line: 1918, column: 11, scope: !880)
!880 = distinct !DILexicalBlock(scope: !876, file: !2, line: 1918, column: 11)
!881 = !DILocation(line: 1918, column: 59, scope: !880)
!882 = !DILocation(line: 1918, column: 42, scope: !880)
!883 = !DILocation(line: 1919, column: 11, scope: !884)
!884 = distinct !DILexicalBlock(scope: !880, file: !2, line: 1919, column: 11)
!885 = !DILocation(line: 1919, column: 42, scope: !884)
!886 = !DILocation(line: 1920, column: 11, scope: !887)
!887 = distinct !DILexicalBlock(scope: !884, file: !2, line: 1920, column: 11)
!888 = !DILocation(line: 1920, column: 42, scope: !887)
!889 = !DILocation(line: 1921, column: 11, scope: !890)
!890 = distinct !DILexicalBlock(scope: !887, file: !2, line: 1921, column: 11)
!891 = !DILocation(line: 1921, column: 53, scope: !890)
!892 = !DILocation(line: 1921, column: 42, scope: !890)
!893 = !DILocation(line: 1922, column: 11, scope: !894)
!894 = distinct !DILexicalBlock(scope: !890, file: !2, line: 1922, column: 11)
!895 = !DILocation(line: 1922, column: 52, scope: !894)
!896 = !DILocation(line: 1922, column: 56, scope: !894)
!897 = !DILocation(line: 1922, column: 42, scope: !894)
!898 = !DILocation(line: 1923, column: 11, scope: !899)
!899 = distinct !DILexicalBlock(scope: !894, file: !2, line: 1923, column: 11)
!900 = !DILocation(line: 1923, column: 52, scope: !899)
!901 = !DILocation(line: 1923, column: 56, scope: !899)
!902 = !DILocation(line: 1923, column: 42, scope: !899)
!903 = !DILocation(line: 1924, column: 11, scope: !904)
!904 = distinct !DILexicalBlock(scope: !899, file: !2, line: 1924, column: 11)
!905 = !DILocation(line: 1924, column: 56, scope: !904)
!906 = !DILocation(line: 1924, column: 42, scope: !904)
!907 = !DILocation(line: 1925, column: 11, scope: !908)
!908 = distinct !DILexicalBlock(scope: !904, file: !2, line: 1925, column: 11)
!909 = !DILocation(line: 1925, column: 56, scope: !908)
!910 = !DILocation(line: 1925, column: 42, scope: !908)
!911 = !DILocation(line: 1926, column: 11, scope: !912)
!912 = distinct !DILexicalBlock(scope: !908, file: !2, line: 1926, column: 11)
!913 = !DILocation(line: 1926, column: 51, scope: !912)
!914 = !DILocation(line: 1926, column: 42, scope: !912)
!915 = !DILocation(line: 1927, column: 11, scope: !916)
!916 = distinct !DILexicalBlock(scope: !912, file: !2, line: 1927, column: 11)
!917 = !DILocation(line: 1927, column: 52, scope: !918)
!918 = distinct !DILexicalBlock(scope: !916, file: !2, line: 1927, column: 42)
!919 = !DILocation(line: 1927, column: 44, scope: !918)
!920 = !DILocation(line: 1927, column: 64, scope: !918)
!921 = !DILocation(line: 1929, column: 24, scope: !922)
!922 = distinct !DILexicalBlock(scope: !916, file: !2, line: 1929, column: 14)
!923 = !DILocation(line: 1929, column: 28, scope: !922)
!924 = !DILocation(line: 1929, column: 14, scope: !922)
!925 = !DILocation(line: 1929, column: 43, scope: !922)
!926 = !DILocation(line: 1930, column: 23, scope: !927)
!927 = distinct !DILexicalBlock(scope: !922, file: !2, line: 1929, column: 49)
!928 = !DILocation(line: 1930, column: 54, scope: !927)
!929 = !DILocation(line: 1930, column: 64, scope: !927)
!930 = !DILocation(line: 1930, column: 68, scope: !927)
!931 = !DILocation(line: 1930, column: 13, scope: !927)
!932 = !DILocation(line: 1931, column: 21, scope: !927)
!933 = !DILocation(line: 1931, column: 13, scope: !927)
!934 = !DILocation(line: 1932, column: 13, scope: !927)
!935 = !DILocation(line: 1934, column: 4, scope: !849)
!936 = !DILocation(line: 1909, column: 40, scope: !844)
!937 = !DILocation(line: 1909, column: 44, scope: !844)
!938 = !DILocation(line: 1909, column: 38, scope: !844)
!939 = !DILocation(line: 1909, column: 4, scope: !844)
!940 = distinct !{!940, !846, !941, !638}
!941 = !DILocation(line: 1934, column: 4, scope: !840)
!942 = !DILocation(line: 1936, column: 8, scope: !943)
!943 = distinct !DILexicalBlock(scope: !572, file: !2, line: 1936, column: 8)
!944 = !DILocation(line: 1936, column: 18, scope: !943)
!945 = !DILocation(line: 1936, column: 33, scope: !943)
!946 = !DILocation(line: 1936, column: 23, scope: !943)
!947 = !DILocation(line: 1937, column: 8, scope: !948)
!948 = distinct !DILexicalBlock(scope: !572, file: !2, line: 1937, column: 8)
!949 = !DILocation(line: 1937, column: 15, scope: !948)
!950 = !DILocation(line: 1937, column: 23, scope: !948)
!951 = !DILocation(line: 1937, column: 26, scope: !948)
!952 = !DILocation(line: 1937, column: 36, scope: !948)
!953 = !DILocation(line: 1937, column: 39, scope: !948)
!954 = !DILocation(line: 1937, column: 53, scope: !948)
!955 = !DILocation(line: 1938, column: 21, scope: !948)
!956 = !DILocation(line: 1938, column: 7, scope: !948)
!957 = !DILocation(line: 1940, column: 8, scope: !958)
!958 = distinct !DILexicalBlock(scope: !572, file: !2, line: 1940, column: 8)
!959 = !DILocation(line: 1940, column: 15, scope: !958)
!960 = !DILocation(line: 1940, column: 26, scope: !958)
!961 = !DILocation(line: 1940, column: 29, scope: !958)
!962 = !DILocation(line: 1940, column: 37, scope: !958)
!963 = !DILocation(line: 1941, column: 17, scope: !964)
!964 = distinct !DILexicalBlock(scope: !958, file: !2, line: 1940, column: 48)
!965 = !DILocation(line: 1942, column: 17, scope: !964)
!966 = !DILocation(line: 1941, column: 7, scope: !964)
!967 = !DILocation(line: 1943, column: 7, scope: !964)
!968 = !DILocation(line: 1946, column: 8, scope: !969)
!969 = distinct !DILexicalBlock(scope: !572, file: !2, line: 1946, column: 8)
!970 = !DILocation(line: 1946, column: 16, scope: !969)
!971 = !DILocation(line: 1946, column: 26, scope: !969)
!972 = !DILocation(line: 1946, column: 29, scope: !969)
!973 = !DILocation(line: 1946, column: 42, scope: !969)
!974 = !DILocation(line: 1947, column: 15, scope: !969)
!975 = !DILocation(line: 1947, column: 7, scope: !969)
!976 = !DILocation(line: 1949, column: 8, scope: !977)
!977 = distinct !DILexicalBlock(scope: !572, file: !2, line: 1949, column: 8)
!978 = !DILocation(line: 1949, column: 15, scope: !977)
!979 = !DILocation(line: 1949, column: 38, scope: !977)
!980 = !DILocation(line: 1949, column: 24, scope: !977)
!981 = !DILocation(line: 1951, column: 8, scope: !982)
!982 = distinct !DILexicalBlock(scope: !572, file: !2, line: 1951, column: 8)
!983 = !DILocation(line: 1951, column: 16, scope: !982)
!984 = !DILocation(line: 1952, column: 7, scope: !985)
!985 = distinct !DILexicalBlock(scope: !982, file: !2, line: 1951, column: 27)
!986 = !DILocation(line: 1953, column: 7, scope: !985)
!987 = !DILocation(line: 1955, column: 7, scope: !985)
!988 = !DILocation(line: 1957, column: 4, scope: !985)
!989 = !DILocation(line: 1959, column: 8, scope: !990)
!990 = distinct !DILexicalBlock(scope: !572, file: !2, line: 1959, column: 8)
!991 = !DILocation(line: 1959, column: 15, scope: !990)
!992 = !DILocation(line: 1960, column: 10, scope: !993)
!993 = distinct !DILexicalBlock(scope: !994, file: !2, line: 1960, column: 10)
!994 = distinct !DILexicalBlock(scope: !990, file: !2, line: 1959, column: 24)
!995 = !DILocation(line: 1960, column: 18, scope: !993)
!996 = !DILocation(line: 1961, column: 9, scope: !997)
!997 = distinct !DILexicalBlock(scope: !993, file: !2, line: 1960, column: 29)
!998 = !DILocation(line: 1962, column: 6, scope: !997)
!999 = !DILocation(line: 1963, column: 16, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !993, file: !2, line: 1962, column: 13)
!1001 = !DILocation(line: 1964, column: 19, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !1000, file: !2, line: 1964, column: 9)
!1003 = !DILocation(line: 1964, column: 17, scope: !1002)
!1004 = !DILocation(line: 1964, column: 14, scope: !1002)
!1005 = !DILocation(line: 1964, column: 28, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !1002, file: !2, line: 1964, column: 9)
!1007 = !DILocation(line: 1964, column: 31, scope: !1006)
!1008 = !DILocation(line: 1964, column: 9, scope: !1002)
!1009 = !DILocation(line: 1965, column: 16, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !1011, file: !2, line: 1965, column: 16)
!1011 = distinct !DILexicalBlock(scope: !1006, file: !2, line: 1964, column: 55)
!1012 = !DILocation(line: 1965, column: 39, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !1010, file: !2, line: 1965, column: 30)
!1014 = !DILocation(line: 1965, column: 48, scope: !1013)
!1015 = !DILocation(line: 1966, column: 16, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !1011, file: !2, line: 1966, column: 16)
!1017 = !DILocation(line: 1966, column: 20, scope: !1016)
!1018 = !DILocation(line: 1966, column: 28, scope: !1016)
!1019 = !DILocation(line: 1966, column: 35, scope: !1016)
!1020 = !DILocation(line: 1966, column: 38, scope: !1016)
!1021 = !DILocation(line: 1966, column: 46, scope: !1016)
!1022 = !DILocation(line: 1967, column: 29, scope: !1011)
!1023 = !DILocation(line: 1968, column: 23, scope: !1011)
!1024 = !DILocation(line: 1968, column: 27, scope: !1011)
!1025 = !DILocation(line: 1968, column: 12, scope: !1011)
!1026 = !DILocation(line: 1969, column: 9, scope: !1011)
!1027 = !DILocation(line: 1964, column: 45, scope: !1006)
!1028 = !DILocation(line: 1964, column: 49, scope: !1006)
!1029 = !DILocation(line: 1964, column: 43, scope: !1006)
!1030 = !DILocation(line: 1964, column: 9, scope: !1006)
!1031 = distinct !{!1031, !1008, !1032, !638}
!1032 = !DILocation(line: 1969, column: 9, scope: !1002)
!1033 = !DILocation(line: 1971, column: 4, scope: !994)
!1034 = !DILocation(line: 1974, column: 8, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !990, file: !2, line: 1974, column: 8)
!1036 = !DILocation(line: 1974, column: 15, scope: !1035)
!1037 = !DILocation(line: 1975, column: 21, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !1035, file: !2, line: 1974, column: 26)
!1039 = !DILocation(line: 1976, column: 11, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !1038, file: !2, line: 1976, column: 11)
!1041 = !DILocation(line: 1976, column: 19, scope: !1040)
!1042 = !DILocation(line: 1977, column: 10, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !1040, file: !2, line: 1976, column: 30)
!1044 = !DILocation(line: 1978, column: 7, scope: !1043)
!1045 = !DILocation(line: 1979, column: 17, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !1040, file: !2, line: 1978, column: 14)
!1047 = !DILocation(line: 1980, column: 20, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !1046, file: !2, line: 1980, column: 10)
!1049 = !DILocation(line: 1980, column: 18, scope: !1048)
!1050 = !DILocation(line: 1980, column: 15, scope: !1048)
!1051 = !DILocation(line: 1980, column: 29, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !1048, file: !2, line: 1980, column: 10)
!1053 = !DILocation(line: 1980, column: 32, scope: !1052)
!1054 = !DILocation(line: 1980, column: 10, scope: !1048)
!1055 = !DILocation(line: 1981, column: 17, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1057, file: !2, line: 1981, column: 17)
!1057 = distinct !DILexicalBlock(scope: !1052, file: !2, line: 1980, column: 56)
!1058 = !DILocation(line: 1981, column: 40, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1056, file: !2, line: 1981, column: 31)
!1060 = !DILocation(line: 1981, column: 49, scope: !1059)
!1061 = !DILocation(line: 1982, column: 17, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !1057, file: !2, line: 1982, column: 17)
!1063 = !DILocation(line: 1982, column: 21, scope: !1062)
!1064 = !DILocation(line: 1982, column: 29, scope: !1062)
!1065 = !DILocation(line: 1982, column: 36, scope: !1062)
!1066 = !DILocation(line: 1982, column: 39, scope: !1062)
!1067 = !DILocation(line: 1982, column: 47, scope: !1062)
!1068 = !DILocation(line: 1983, column: 30, scope: !1057)
!1069 = !DILocation(line: 1984, column: 26, scope: !1057)
!1070 = !DILocation(line: 1984, column: 30, scope: !1057)
!1071 = !DILocation(line: 1984, column: 13, scope: !1057)
!1072 = !DILocation(line: 1985, column: 10, scope: !1057)
!1073 = !DILocation(line: 1980, column: 46, scope: !1052)
!1074 = !DILocation(line: 1980, column: 50, scope: !1052)
!1075 = !DILocation(line: 1980, column: 44, scope: !1052)
!1076 = !DILocation(line: 1980, column: 10, scope: !1052)
!1077 = distinct !{!1077, !1054, !1078, !638}
!1078 = !DILocation(line: 1985, column: 10, scope: !1048)
!1079 = !DILocation(line: 1987, column: 11, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1038, file: !2, line: 1987, column: 11)
!1081 = !DILocation(line: 1988, column: 10, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !1080, file: !2, line: 1987, column: 26)
!1083 = !DILocation(line: 1989, column: 15, scope: !1082)
!1084 = !DILocation(line: 1989, column: 10, scope: !1082)
!1085 = !DILocation(line: 1991, column: 4, scope: !1038)
!1086 = !DILocation(line: 1994, column: 22, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !1035, file: !2, line: 1993, column: 9)
!1088 = !DILocation(line: 1995, column: 11, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !1087, file: !2, line: 1995, column: 11)
!1090 = !DILocation(line: 1995, column: 19, scope: !1089)
!1091 = !DILocation(line: 1996, column: 10, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !1089, file: !2, line: 1995, column: 30)
!1093 = !DILocation(line: 1997, column: 7, scope: !1092)
!1094 = !DILocation(line: 1998, column: 17, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1089, file: !2, line: 1997, column: 14)
!1096 = !DILocation(line: 1999, column: 20, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !1095, file: !2, line: 1999, column: 10)
!1098 = !DILocation(line: 1999, column: 18, scope: !1097)
!1099 = !DILocation(line: 1999, column: 15, scope: !1097)
!1100 = !DILocation(line: 1999, column: 29, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1097, file: !2, line: 1999, column: 10)
!1102 = !DILocation(line: 1999, column: 32, scope: !1101)
!1103 = !DILocation(line: 1999, column: 10, scope: !1097)
!1104 = !DILocation(line: 2000, column: 10, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !1106, file: !2, line: 2000, column: 10)
!1106 = distinct !DILexicalBlock(scope: !1101, file: !2, line: 1999, column: 56)
!1107 = !DILocation(line: 2000, column: 33, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1105, file: !2, line: 2000, column: 24)
!1109 = !DILocation(line: 2000, column: 42, scope: !1108)
!1110 = !DILocation(line: 2001, column: 17, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1106, file: !2, line: 2001, column: 17)
!1112 = !DILocation(line: 2001, column: 21, scope: !1111)
!1113 = !DILocation(line: 2001, column: 29, scope: !1111)
!1114 = !DILocation(line: 2001, column: 36, scope: !1111)
!1115 = !DILocation(line: 2001, column: 39, scope: !1111)
!1116 = !DILocation(line: 2001, column: 47, scope: !1111)
!1117 = !DILocation(line: 2002, column: 30, scope: !1106)
!1118 = !DILocation(line: 2003, column: 21, scope: !1106)
!1119 = !DILocation(line: 2003, column: 25, scope: !1106)
!1120 = !DILocation(line: 2003, column: 13, scope: !1106)
!1121 = !DILocation(line: 2004, column: 3, scope: !1106)
!1122 = !DILocation(line: 1999, column: 46, scope: !1101)
!1123 = !DILocation(line: 1999, column: 50, scope: !1101)
!1124 = !DILocation(line: 1999, column: 44, scope: !1101)
!1125 = !DILocation(line: 1999, column: 10, scope: !1101)
!1126 = distinct !{!1126, !1103, !1127, !638}
!1127 = !DILocation(line: 2004, column: 3, scope: !1097)
!1128 = !DILocation(line: 2006, column: 11, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1087, file: !2, line: 2006, column: 11)
!1130 = !DILocation(line: 2006, column: 26, scope: !1129)
!1131 = !DILocation(line: 2006, column: 29, scope: !1129)
!1132 = !DILocation(line: 2007, column: 20, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1129, file: !2, line: 2006, column: 36)
!1134 = !DILocation(line: 2007, column: 10, scope: !1133)
!1135 = !DILocation(line: 2012, column: 10, scope: !1133)
!1136 = !DILocation(line: 2013, column: 15, scope: !1133)
!1137 = !DILocation(line: 2013, column: 10, scope: !1133)
!1138 = !DILocation(line: 2020, column: 9, scope: !572)
!1139 = !DILocation(line: 2020, column: 7, scope: !572)
!1140 = !DILocation(line: 2021, column: 4, scope: !572)
!1141 = !DILocation(line: 2021, column: 11, scope: !572)
!1142 = !DILocation(line: 2021, column: 14, scope: !572)
!1143 = !DILocalVariable(name: "aa2", scope: !1144, file: !2, line: 2022, type: !48)
!1144 = distinct !DILexicalBlock(scope: !572, file: !2, line: 2021, column: 23)
!1145 = !DILocation(line: 2022, column: 13, scope: !1144)
!1146 = !DILocation(line: 2022, column: 19, scope: !1144)
!1147 = !DILocation(line: 2022, column: 23, scope: !1144)
!1148 = !DILocation(line: 2023, column: 11, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1144, file: !2, line: 2023, column: 11)
!1150 = !DILocation(line: 2023, column: 15, scope: !1149)
!1151 = !DILocation(line: 2023, column: 20, scope: !1149)
!1152 = !DILocation(line: 2023, column: 34, scope: !1149)
!1153 = !DILocation(line: 2023, column: 38, scope: !1149)
!1154 = !DILocation(line: 2023, column: 29, scope: !1149)
!1155 = !DILocation(line: 2024, column: 12, scope: !1144)
!1156 = !DILocation(line: 2024, column: 7, scope: !1144)
!1157 = !DILocation(line: 2025, column: 12, scope: !1144)
!1158 = !DILocation(line: 2025, column: 10, scope: !1144)
!1159 = distinct !{!1159, !1140, !1160, !638}
!1160 = !DILocation(line: 2026, column: 4, scope: !572)
!1161 = !DILocation(line: 2028, column: 11, scope: !572)
!1162 = !DILocation(line: 2028, column: 4, scope: !572)
!1163 = distinct !DISubprogram(name: "mySIGSEGVorSIGBUScatcher", scope: !2, file: !2, line: 816, type: !1164, scopeLine: 817, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21, retainedNodes: !577)
!1164 = !DISubroutineType(types: !1165)
!1165 = !{null, !575}
!1166 = !DILocalVariable(name: "n", arg: 1, scope: !1163, file: !2, line: 816, type: !575)
!1167 = !DILocation(line: 816, column: 43, scope: !1163)
!1168 = !DILocation(line: 818, column: 8, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1163, file: !2, line: 818, column: 8)
!1170 = !DILocation(line: 818, column: 15, scope: !1169)
!1171 = !DILocation(line: 820, column: 7, scope: !1169)
!1172 = !DILocation(line: 838, column: 7, scope: !1169)
!1173 = !DILocation(line: 819, column: 7, scope: !1169)
!1174 = !DILocation(line: 841, column: 7, scope: !1169)
!1175 = !DILocation(line: 861, column: 7, scope: !1169)
!1176 = !DILocation(line: 840, column: 7, scope: !1169)
!1177 = !DILocation(line: 863, column: 4, scope: !1163)
!1178 = !DILocation(line: 864, column: 8, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1163, file: !2, line: 864, column: 8)
!1180 = !DILocation(line: 864, column: 15, scope: !1179)
!1181 = !DILocation(line: 865, column: 7, scope: !1179)
!1182 = !DILocation(line: 866, column: 9, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !1179, file: !2, line: 866, column: 7)
!1184 = !DILocation(line: 866, column: 20, scope: !1183)
!1185 = distinct !DISubprogram(name: "copyFileName", scope: !2, file: !2, line: 919, type: !1186, scopeLine: 920, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21, retainedNodes: !577)
!1186 = !DISubroutineType(types: !1187)
!1187 = !{null, !42, !42}
!1188 = !DILocalVariable(name: "to", arg: 1, scope: !1185, file: !2, line: 919, type: !42)
!1189 = !DILocation(line: 919, column: 27, scope: !1185)
!1190 = !DILocalVariable(name: "from", arg: 2, scope: !1185, file: !2, line: 919, type: !42)
!1191 = !DILocation(line: 919, column: 37, scope: !1185)
!1192 = !DILocation(line: 921, column: 16, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1185, file: !2, line: 921, column: 9)
!1194 = !DILocation(line: 921, column: 9, scope: !1193)
!1195 = !DILocation(line: 921, column: 22, scope: !1193)
!1196 = !DILocation(line: 923, column: 10, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1193, file: !2, line: 921, column: 44)
!1198 = !DILocation(line: 927, column: 10, scope: !1197)
!1199 = !DILocation(line: 922, column: 7, scope: !1197)
!1200 = !DILocation(line: 929, column: 7, scope: !1197)
!1201 = !DILocation(line: 930, column: 12, scope: !1197)
!1202 = !DILocation(line: 930, column: 7, scope: !1197)
!1203 = !DILocation(line: 933, column: 11, scope: !1185)
!1204 = !DILocation(line: 933, column: 14, scope: !1185)
!1205 = !DILocation(line: 933, column: 3, scope: !1185)
!1206 = !DILocation(line: 934, column: 3, scope: !1185)
!1207 = !DILocation(line: 934, column: 23, scope: !1185)
!1208 = !DILocation(line: 935, column: 1, scope: !1185)
!1209 = distinct !DISubprogram(name: "addFlagsFromEnvVar", scope: !2, file: !2, line: 1747, type: !1210, scopeLine: 1748, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21, retainedNodes: !577)
!1210 = !DISubroutineType(types: !1211)
!1211 = !{null, !1212, !42}
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!1213 = !DILocalVariable(name: "argList", arg: 1, scope: !1209, file: !2, line: 1747, type: !1212)
!1214 = !DILocation(line: 1747, column: 34, scope: !1209)
!1215 = !DILocalVariable(name: "varName", arg: 2, scope: !1209, file: !2, line: 1747, type: !42)
!1216 = !DILocation(line: 1747, column: 49, scope: !1209)
!1217 = !DILocalVariable(name: "i", scope: !1209, file: !2, line: 1749, type: !45)
!1218 = !DILocation(line: 1749, column: 10, scope: !1209)
!1219 = !DILocalVariable(name: "j", scope: !1209, file: !2, line: 1749, type: !45)
!1220 = !DILocation(line: 1749, column: 13, scope: !1209)
!1221 = !DILocalVariable(name: "k", scope: !1209, file: !2, line: 1749, type: !45)
!1222 = !DILocation(line: 1749, column: 16, scope: !1209)
!1223 = !DILocalVariable(name: "envbase", scope: !1209, file: !2, line: 1750, type: !42)
!1224 = !DILocation(line: 1750, column: 10, scope: !1209)
!1225 = !DILocalVariable(name: "p", scope: !1209, file: !2, line: 1750, type: !42)
!1226 = !DILocation(line: 1750, column: 20, scope: !1209)
!1227 = !DILocation(line: 1752, column: 21, scope: !1209)
!1228 = !DILocation(line: 1752, column: 14, scope: !1209)
!1229 = !DILocation(line: 1752, column: 12, scope: !1209)
!1230 = !DILocation(line: 1753, column: 8, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1209, file: !2, line: 1753, column: 8)
!1232 = !DILocation(line: 1753, column: 16, scope: !1231)
!1233 = !DILocation(line: 1754, column: 11, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !1231, file: !2, line: 1753, column: 25)
!1235 = !DILocation(line: 1754, column: 9, scope: !1234)
!1236 = !DILocation(line: 1755, column: 9, scope: !1234)
!1237 = !DILocation(line: 1756, column: 7, scope: !1234)
!1238 = !DILocation(line: 1757, column: 14, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1240, file: !2, line: 1757, column: 14)
!1240 = distinct !DILexicalBlock(scope: !1234, file: !2, line: 1756, column: 20)
!1241 = !DILocation(line: 1757, column: 16, scope: !1239)
!1242 = !DILocation(line: 1757, column: 19, scope: !1239)
!1243 = !DILocation(line: 1757, column: 25, scope: !1239)
!1244 = !DILocation(line: 1758, column: 15, scope: !1240)
!1245 = !DILocation(line: 1758, column: 12, scope: !1240)
!1246 = !DILocation(line: 1759, column: 12, scope: !1240)
!1247 = !DILocation(line: 1760, column: 10, scope: !1240)
!1248 = !DILocation(line: 1760, column: 17, scope: !1240)
!1249 = !DILocation(line: 1760, column: 42, scope: !1240)
!1250 = distinct !{!1250, !1247, !1249, !638}
!1251 = !DILocation(line: 1761, column: 10, scope: !1240)
!1252 = !DILocation(line: 1761, column: 17, scope: !1240)
!1253 = !DILocation(line: 1761, column: 19, scope: !1240)
!1254 = !DILocation(line: 1761, column: 22, scope: !1240)
!1255 = !DILocation(line: 1761, column: 27, scope: !1240)
!1256 = !DILocation(line: 1761, column: 31, scope: !1240)
!1257 = !DILocation(line: 1761, column: 30, scope: !1240)
!1258 = !DILocation(line: 0, scope: !1240)
!1259 = !DILocation(line: 1761, column: 56, scope: !1240)
!1260 = distinct !{!1260, !1251, !1259, !638}
!1261 = !DILocation(line: 1762, column: 14, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1240, file: !2, line: 1762, column: 14)
!1263 = !DILocation(line: 1762, column: 16, scope: !1262)
!1264 = !DILocation(line: 1763, column: 17, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !1262, file: !2, line: 1762, column: 21)
!1266 = !DILocation(line: 1763, column: 15, scope: !1265)
!1267 = !DILocation(line: 1763, column: 24, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1265, file: !2, line: 1763, column: 24)
!1269 = !DILocation(line: 1763, column: 26, scope: !1268)
!1270 = !DILocation(line: 1763, column: 48, scope: !1268)
!1271 = !DILocation(line: 1763, column: 46, scope: !1268)
!1272 = !DILocation(line: 1764, column: 20, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1265, file: !2, line: 1764, column: 13)
!1274 = !DILocation(line: 1764, column: 18, scope: !1273)
!1275 = !DILocation(line: 1764, column: 25, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !1273, file: !2, line: 1764, column: 13)
!1277 = !DILocation(line: 1764, column: 29, scope: !1276)
!1278 = !DILocation(line: 1764, column: 27, scope: !1276)
!1279 = !DILocation(line: 1764, column: 13, scope: !1273)
!1280 = !DILocation(line: 1764, column: 50, scope: !1276)
!1281 = !DILocation(line: 1764, column: 52, scope: !1276)
!1282 = !DILocation(line: 1764, column: 45, scope: !1276)
!1283 = !DILocation(line: 1764, column: 37, scope: !1276)
!1284 = !DILocation(line: 1764, column: 48, scope: !1276)
!1285 = !DILocation(line: 1764, column: 33, scope: !1276)
!1286 = !DILocation(line: 1764, column: 13, scope: !1276)
!1287 = distinct !{!1287, !1279, !1288, !638}
!1288 = !DILocation(line: 1764, column: 53, scope: !1273)
!1289 = !DILocation(line: 1765, column: 21, scope: !1265)
!1290 = !DILocation(line: 1765, column: 13, scope: !1265)
!1291 = !DILocation(line: 1765, column: 24, scope: !1265)
!1292 = !DILocation(line: 1766, column: 13, scope: !1265)
!1293 = !DILocation(line: 1767, column: 10, scope: !1265)
!1294 = distinct !{!1294, !1237, !1295}
!1295 = !DILocation(line: 1768, column: 7, scope: !1234)
!1296 = !DILocation(line: 1769, column: 4, scope: !1234)
!1297 = !DILocation(line: 1770, column: 1, scope: !1209)
!1298 = distinct !DISubprogram(name: "snocString", scope: !2, file: !2, line: 1729, type: !1299, scopeLine: 1730, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21, retainedNodes: !577)
!1299 = !DISubroutineType(types: !1300)
!1300 = !{!48, !48, !42}
!1301 = !DILocalVariable(name: "root", arg: 1, scope: !1298, file: !2, line: 1729, type: !48)
!1302 = !DILocation(line: 1729, column: 26, scope: !1298)
!1303 = !DILocalVariable(name: "name", arg: 2, scope: !1298, file: !2, line: 1729, type: !42)
!1304 = !DILocation(line: 1729, column: 38, scope: !1298)
!1305 = !DILocation(line: 1731, column: 8, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !1298, file: !2, line: 1731, column: 8)
!1307 = !DILocation(line: 1731, column: 13, scope: !1306)
!1308 = !DILocalVariable(name: "tmp", scope: !1309, file: !2, line: 1732, type: !48)
!1309 = distinct !DILexicalBlock(scope: !1306, file: !2, line: 1731, column: 22)
!1310 = !DILocation(line: 1732, column: 13, scope: !1309)
!1311 = !DILocation(line: 1732, column: 19, scope: !1309)
!1312 = !DILocation(line: 1733, column: 49, scope: !1309)
!1313 = !DILocation(line: 1733, column: 42, scope: !1309)
!1314 = !DILocation(line: 1733, column: 40, scope: !1309)
!1315 = !DILocation(line: 1733, column: 38, scope: !1309)
!1316 = !DILocation(line: 1733, column: 27, scope: !1309)
!1317 = !DILocation(line: 1733, column: 7, scope: !1309)
!1318 = !DILocation(line: 1733, column: 12, scope: !1309)
!1319 = !DILocation(line: 1733, column: 17, scope: !1309)
!1320 = !DILocation(line: 1734, column: 16, scope: !1309)
!1321 = !DILocation(line: 1734, column: 21, scope: !1309)
!1322 = !DILocation(line: 1734, column: 27, scope: !1309)
!1323 = !DILocation(line: 1734, column: 7, scope: !1309)
!1324 = !DILocation(line: 1735, column: 14, scope: !1309)
!1325 = !DILocation(line: 1735, column: 7, scope: !1309)
!1326 = !DILocalVariable(name: "tmp", scope: !1327, file: !2, line: 1737, type: !48)
!1327 = distinct !DILexicalBlock(scope: !1306, file: !2, line: 1736, column: 11)
!1328 = !DILocation(line: 1737, column: 13, scope: !1327)
!1329 = !DILocation(line: 1737, column: 19, scope: !1327)
!1330 = !DILocation(line: 1738, column: 7, scope: !1327)
!1331 = !DILocation(line: 1738, column: 14, scope: !1327)
!1332 = !DILocation(line: 1738, column: 19, scope: !1327)
!1333 = !DILocation(line: 1738, column: 24, scope: !1327)
!1334 = !DILocation(line: 1738, column: 39, scope: !1327)
!1335 = !DILocation(line: 1738, column: 44, scope: !1327)
!1336 = !DILocation(line: 1738, column: 37, scope: !1327)
!1337 = distinct !{!1337, !1330, !1335, !638}
!1338 = !DILocation(line: 1739, column: 32, scope: !1327)
!1339 = !DILocation(line: 1739, column: 37, scope: !1327)
!1340 = !DILocation(line: 1739, column: 43, scope: !1327)
!1341 = !DILocation(line: 1739, column: 19, scope: !1327)
!1342 = !DILocation(line: 1739, column: 7, scope: !1327)
!1343 = !DILocation(line: 1739, column: 12, scope: !1327)
!1344 = !DILocation(line: 1739, column: 17, scope: !1327)
!1345 = !DILocation(line: 1740, column: 14, scope: !1327)
!1346 = !DILocation(line: 1740, column: 7, scope: !1327)
!1347 = !DILocation(line: 1742, column: 1, scope: !1298)
!1348 = distinct !DISubprogram(name: "license", scope: !2, file: !2, line: 1601, type: !1349, scopeLine: 1602, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21)
!1349 = !DISubroutineType(types: !1350)
!1350 = !{null}
!1351 = !DILocation(line: 1603, column: 14, scope: !1348)
!1352 = !DILocation(line: 1619, column: 5, scope: !1348)
!1353 = !DILocation(line: 1603, column: 4, scope: !1348)
!1354 = !DILocation(line: 1621, column: 1, scope: !1348)
!1355 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 1626, type: !1356, scopeLine: 1627, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21, retainedNodes: !577)
!1356 = !DISubroutineType(types: !1357)
!1357 = !{null, !42}
!1358 = !DILocalVariable(name: "fullProgName", arg: 1, scope: !1355, file: !2, line: 1626, type: !42)
!1359 = !DILocation(line: 1626, column: 20, scope: !1355)
!1360 = !DILocation(line: 1629, column: 7, scope: !1355)
!1361 = !DILocation(line: 1662, column: 7, scope: !1355)
!1362 = !DILocation(line: 1663, column: 7, scope: !1355)
!1363 = !DILocation(line: 1628, column: 4, scope: !1355)
!1364 = !DILocation(line: 1665, column: 1, scope: !1355)
!1365 = distinct !DISubprogram(name: "redundant", scope: !2, file: !2, line: 1670, type: !1356, scopeLine: 1671, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21, retainedNodes: !577)
!1366 = !DILocalVariable(name: "flag", arg: 1, scope: !1365, file: !2, line: 1670, type: !42)
!1367 = !DILocation(line: 1670, column: 24, scope: !1365)
!1368 = !DILocation(line: 1673, column: 7, scope: !1365)
!1369 = !DILocation(line: 1675, column: 7, scope: !1365)
!1370 = !DILocation(line: 1675, column: 17, scope: !1365)
!1371 = !DILocation(line: 1672, column: 4, scope: !1365)
!1372 = !DILocation(line: 1676, column: 1, scope: !1365)
!1373 = distinct !DISubprogram(name: "mySignalCatcher", scope: !2, file: !2, line: 805, type: !1164, scopeLine: 806, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21, retainedNodes: !577)
!1374 = !DILocalVariable(name: "n", arg: 1, scope: !1373, file: !2, line: 805, type: !575)
!1375 = !DILocation(line: 805, column: 34, scope: !1373)
!1376 = !DILocation(line: 807, column: 14, scope: !1373)
!1377 = !DILocation(line: 809, column: 14, scope: !1373)
!1378 = !DILocation(line: 807, column: 4, scope: !1373)
!1379 = !DILocation(line: 810, column: 4, scope: !1373)
!1380 = distinct !DISubprogram(name: "compress", scope: !2, file: !2, line: 1133, type: !1356, scopeLine: 1134, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21, retainedNodes: !577)
!1381 = !DILocalVariable(name: "name", arg: 1, scope: !1380, file: !2, line: 1133, type: !42)
!1382 = !DILocation(line: 1133, column: 23, scope: !1380)
!1383 = !DILocalVariable(name: "inStr", scope: !1380, file: !2, line: 1135, type: !215)
!1384 = !DILocation(line: 1135, column: 11, scope: !1380)
!1385 = !DILocalVariable(name: "outStr", scope: !1380, file: !2, line: 1136, type: !215)
!1386 = !DILocation(line: 1136, column: 11, scope: !1380)
!1387 = !DILocalVariable(name: "n", scope: !1380, file: !2, line: 1137, type: !45)
!1388 = !DILocation(line: 1137, column: 10, scope: !1380)
!1389 = !DILocalVariable(name: "i", scope: !1380, file: !2, line: 1137, type: !45)
!1390 = !DILocation(line: 1137, column: 13, scope: !1380)
!1391 = !DILocalVariable(name: "statBuf", scope: !1380, file: !2, line: 1138, type: !422)
!1392 = !DILocation(line: 1138, column: 19, scope: !1380)
!1393 = !DILocation(line: 1140, column: 28, scope: !1380)
!1394 = !DILocation(line: 1142, column: 8, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1380, file: !2, line: 1142, column: 8)
!1396 = !DILocation(line: 1142, column: 13, scope: !1395)
!1397 = !DILocation(line: 1142, column: 21, scope: !1395)
!1398 = !DILocation(line: 1142, column: 24, scope: !1395)
!1399 = !DILocation(line: 1142, column: 32, scope: !1395)
!1400 = !DILocation(line: 1143, column: 7, scope: !1395)
!1401 = !DILocation(line: 1145, column: 12, scope: !1380)
!1402 = !DILocation(line: 1145, column: 4, scope: !1380)
!1403 = !DILocation(line: 1147, column: 10, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !1380, file: !2, line: 1145, column: 21)
!1405 = !DILocation(line: 1148, column: 10, scope: !1404)
!1406 = !DILocation(line: 1149, column: 10, scope: !1404)
!1407 = !DILocation(line: 1151, column: 33, scope: !1404)
!1408 = !DILocation(line: 1151, column: 10, scope: !1404)
!1409 = !DILocation(line: 1152, column: 34, scope: !1404)
!1410 = !DILocation(line: 1152, column: 10, scope: !1404)
!1411 = !DILocation(line: 1153, column: 10, scope: !1404)
!1412 = !DILocation(line: 1154, column: 10, scope: !1404)
!1413 = !DILocation(line: 1156, column: 33, scope: !1404)
!1414 = !DILocation(line: 1156, column: 10, scope: !1404)
!1415 = !DILocation(line: 1157, column: 10, scope: !1404)
!1416 = !DILocation(line: 1158, column: 10, scope: !1404)
!1417 = !DILocation(line: 1161, column: 9, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1380, file: !2, line: 1161, column: 9)
!1419 = !DILocation(line: 1161, column: 17, scope: !1418)
!1420 = !DILocation(line: 1161, column: 27, scope: !1418)
!1421 = !DILocation(line: 1161, column: 30, scope: !1418)
!1422 = !DILocation(line: 1162, column: 11, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1424, file: !2, line: 1162, column: 11)
!1424 = distinct !DILexicalBlock(scope: !1418, file: !2, line: 1161, column: 64)
!1425 = !DILocation(line: 1163, column: 17, scope: !1423)
!1426 = !DILocation(line: 1164, column: 17, scope: !1423)
!1427 = !DILocation(line: 1163, column: 7, scope: !1423)
!1428 = !DILocation(line: 1165, column: 7, scope: !1424)
!1429 = !DILocation(line: 1166, column: 7, scope: !1424)
!1430 = !DILocation(line: 1168, column: 9, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1380, file: !2, line: 1168, column: 9)
!1432 = !DILocation(line: 1168, column: 17, scope: !1431)
!1433 = !DILocation(line: 1168, column: 27, scope: !1431)
!1434 = !DILocation(line: 1168, column: 31, scope: !1431)
!1435 = !DILocation(line: 1169, column: 17, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !1431, file: !2, line: 1168, column: 55)
!1437 = !DILocation(line: 1170, column: 17, scope: !1436)
!1438 = !DILocation(line: 1170, column: 44, scope: !1436)
!1439 = !DILocation(line: 1170, column: 35, scope: !1436)
!1440 = !DILocation(line: 1169, column: 7, scope: !1436)
!1441 = !DILocation(line: 1171, column: 7, scope: !1436)
!1442 = !DILocation(line: 1172, column: 7, scope: !1436)
!1443 = !DILocation(line: 1174, column: 11, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1380, file: !2, line: 1174, column: 4)
!1445 = !DILocation(line: 1174, column: 9, scope: !1444)
!1446 = !DILocation(line: 1174, column: 16, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !1444, file: !2, line: 1174, column: 4)
!1448 = !DILocation(line: 1174, column: 18, scope: !1447)
!1449 = !DILocation(line: 1174, column: 4, scope: !1444)
!1450 = !DILocation(line: 1175, column: 37, scope: !1451)
!1451 = distinct !DILexicalBlock(scope: !1452, file: !2, line: 1175, column: 11)
!1452 = distinct !DILexicalBlock(scope: !1447, file: !2, line: 1174, column: 44)
!1453 = !DILocation(line: 1175, column: 29, scope: !1451)
!1454 = !DILocation(line: 1175, column: 11, scope: !1451)
!1455 = !DILocation(line: 1176, column: 14, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1457, file: !2, line: 1176, column: 14)
!1457 = distinct !DILexicalBlock(scope: !1451, file: !2, line: 1175, column: 42)
!1458 = !DILocation(line: 1177, column: 20, scope: !1456)
!1459 = !DILocation(line: 1179, column: 20, scope: !1456)
!1460 = !DILocation(line: 1179, column: 46, scope: !1456)
!1461 = !DILocation(line: 1179, column: 38, scope: !1456)
!1462 = !DILocation(line: 1177, column: 10, scope: !1456)
!1463 = !DILocation(line: 1180, column: 10, scope: !1457)
!1464 = !DILocation(line: 1181, column: 10, scope: !1457)
!1465 = !DILocation(line: 1183, column: 4, scope: !1452)
!1466 = !DILocation(line: 1174, column: 40, scope: !1447)
!1467 = !DILocation(line: 1174, column: 4, scope: !1447)
!1468 = distinct !{!1468, !1449, !1469, !638}
!1469 = !DILocation(line: 1183, column: 4, scope: !1444)
!1470 = !DILocation(line: 1184, column: 9, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !1380, file: !2, line: 1184, column: 9)
!1472 = !DILocation(line: 1184, column: 17, scope: !1471)
!1473 = !DILocation(line: 1184, column: 27, scope: !1471)
!1474 = !DILocation(line: 1184, column: 30, scope: !1471)
!1475 = !DILocation(line: 1184, column: 38, scope: !1471)
!1476 = !DILocation(line: 1185, column: 7, scope: !1477)
!1477 = distinct !DILexicalBlock(scope: !1471, file: !2, line: 1184, column: 50)
!1478 = !DILocation(line: 1186, column: 12, scope: !1479)
!1479 = distinct !DILexicalBlock(scope: !1477, file: !2, line: 1186, column: 12)
!1480 = !DILocation(line: 1187, column: 19, scope: !1481)
!1481 = distinct !DILexicalBlock(scope: !1479, file: !2, line: 1186, column: 42)
!1482 = !DILocation(line: 1189, column: 19, scope: !1481)
!1483 = !DILocation(line: 1187, column: 10, scope: !1481)
!1484 = !DILocation(line: 1190, column: 10, scope: !1481)
!1485 = !DILocation(line: 1191, column: 10, scope: !1481)
!1486 = !DILocation(line: 1193, column: 4, scope: !1477)
!1487 = !DILocation(line: 1194, column: 9, scope: !1488)
!1488 = distinct !DILexicalBlock(scope: !1380, file: !2, line: 1194, column: 9)
!1489 = !DILocation(line: 1194, column: 17, scope: !1488)
!1490 = !DILocation(line: 1194, column: 27, scope: !1488)
!1491 = !DILocation(line: 1194, column: 31, scope: !1488)
!1492 = !DILocation(line: 1194, column: 46, scope: !1488)
!1493 = !DILocation(line: 1194, column: 49, scope: !1488)
!1494 = !DILocation(line: 1195, column: 11, scope: !1495)
!1495 = distinct !DILexicalBlock(scope: !1496, file: !2, line: 1195, column: 11)
!1496 = distinct !DILexicalBlock(scope: !1488, file: !2, line: 1194, column: 78)
!1497 = !DILocation(line: 1196, column: 17, scope: !1495)
!1498 = !DILocation(line: 1197, column: 17, scope: !1495)
!1499 = !DILocation(line: 1196, column: 7, scope: !1495)
!1500 = !DILocation(line: 1198, column: 7, scope: !1496)
!1501 = !DILocation(line: 1199, column: 7, scope: !1496)
!1502 = !DILocation(line: 1201, column: 9, scope: !1503)
!1503 = distinct !DILexicalBlock(scope: !1380, file: !2, line: 1201, column: 9)
!1504 = !DILocation(line: 1201, column: 17, scope: !1503)
!1505 = !DILocation(line: 1201, column: 27, scope: !1503)
!1506 = !DILocation(line: 1201, column: 30, scope: !1503)
!1507 = !DILocation(line: 1202, column: 11, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1509, file: !2, line: 1202, column: 11)
!1509 = distinct !DILexicalBlock(scope: !1503, file: !2, line: 1201, column: 55)
!1510 = !DILocation(line: 1203, column: 3, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1508, file: !2, line: 1202, column: 27)
!1512 = !DILocation(line: 1204, column: 7, scope: !1511)
!1513 = !DILocation(line: 1205, column: 13, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1508, file: !2, line: 1204, column: 14)
!1515 = !DILocation(line: 1206, column: 6, scope: !1514)
!1516 = !DILocation(line: 1205, column: 3, scope: !1514)
!1517 = !DILocation(line: 1207, column: 3, scope: !1514)
!1518 = !DILocation(line: 1208, column: 3, scope: !1514)
!1519 = !DILocation(line: 1210, column: 4, scope: !1509)
!1520 = !DILocation(line: 1211, column: 9, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !1380, file: !2, line: 1211, column: 9)
!1522 = !DILocation(line: 1211, column: 17, scope: !1521)
!1523 = !DILocation(line: 1211, column: 27, scope: !1521)
!1524 = !DILocation(line: 1211, column: 31, scope: !1521)
!1525 = !DILocation(line: 1211, column: 46, scope: !1521)
!1526 = !DILocation(line: 1212, column: 12, scope: !1521)
!1527 = !DILocation(line: 1212, column: 11, scope: !1521)
!1528 = !DILocation(line: 1212, column: 39, scope: !1521)
!1529 = !DILocation(line: 1213, column: 17, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1521, file: !2, line: 1212, column: 44)
!1531 = !DILocation(line: 1214, column: 17, scope: !1530)
!1532 = !DILocation(line: 1214, column: 35, scope: !1530)
!1533 = !DILocation(line: 1214, column: 38, scope: !1530)
!1534 = !DILocation(line: 1214, column: 40, scope: !1530)
!1535 = !DILocation(line: 1213, column: 7, scope: !1530)
!1536 = !DILocation(line: 1215, column: 7, scope: !1530)
!1537 = !DILocation(line: 1216, column: 7, scope: !1530)
!1538 = !DILocation(line: 1219, column: 9, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1380, file: !2, line: 1219, column: 9)
!1540 = !DILocation(line: 1219, column: 17, scope: !1539)
!1541 = !DILocation(line: 1222, column: 7, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1539, file: !2, line: 1219, column: 29)
!1543 = !DILocation(line: 1223, column: 4, scope: !1542)
!1544 = !DILocation(line: 1225, column: 13, scope: !1380)
!1545 = !DILocation(line: 1225, column: 4, scope: !1380)
!1546 = !DILocation(line: 1228, column: 18, scope: !1547)
!1547 = distinct !DILexicalBlock(scope: !1380, file: !2, line: 1225, column: 23)
!1548 = !DILocation(line: 1228, column: 16, scope: !1547)
!1549 = !DILocation(line: 1229, column: 19, scope: !1547)
!1550 = !DILocation(line: 1229, column: 17, scope: !1547)
!1551 = !DILocation(line: 1230, column: 33, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1547, file: !2, line: 1230, column: 15)
!1553 = !DILocation(line: 1230, column: 24, scope: !1552)
!1554 = !DILocation(line: 1230, column: 15, scope: !1552)
!1555 = !DILocation(line: 1231, column: 23, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1552, file: !2, line: 1230, column: 46)
!1557 = !DILocation(line: 1233, column: 23, scope: !1556)
!1558 = !DILocation(line: 1231, column: 13, scope: !1556)
!1559 = !DILocation(line: 1234, column: 23, scope: !1556)
!1560 = !DILocation(line: 1235, column: 31, scope: !1556)
!1561 = !DILocation(line: 1235, column: 41, scope: !1556)
!1562 = !DILocation(line: 1234, column: 13, scope: !1556)
!1563 = !DILocation(line: 1236, column: 13, scope: !1556)
!1564 = !DILocation(line: 1237, column: 13, scope: !1556)
!1565 = !DILocation(line: 1239, column: 10, scope: !1547)
!1566 = !DILocation(line: 1242, column: 18, scope: !1547)
!1567 = !DILocation(line: 1242, column: 16, scope: !1547)
!1568 = !DILocation(line: 1243, column: 19, scope: !1547)
!1569 = !DILocation(line: 1243, column: 17, scope: !1547)
!1570 = !DILocation(line: 1244, column: 33, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1547, file: !2, line: 1244, column: 15)
!1572 = !DILocation(line: 1244, column: 24, scope: !1571)
!1573 = !DILocation(line: 1244, column: 15, scope: !1571)
!1574 = !DILocation(line: 1245, column: 23, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1571, file: !2, line: 1244, column: 46)
!1576 = !DILocation(line: 1247, column: 23, scope: !1575)
!1577 = !DILocation(line: 1245, column: 13, scope: !1575)
!1578 = !DILocation(line: 1248, column: 23, scope: !1575)
!1579 = !DILocation(line: 1249, column: 31, scope: !1575)
!1580 = !DILocation(line: 1249, column: 41, scope: !1575)
!1581 = !DILocation(line: 1248, column: 13, scope: !1575)
!1582 = !DILocation(line: 1250, column: 18, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1575, file: !2, line: 1250, column: 18)
!1584 = !DILocation(line: 1250, column: 24, scope: !1583)
!1585 = !DILocation(line: 1250, column: 43, scope: !1583)
!1586 = !DILocation(line: 1250, column: 34, scope: !1583)
!1587 = !DILocation(line: 1251, column: 13, scope: !1575)
!1588 = !DILocation(line: 1252, column: 13, scope: !1575)
!1589 = !DILocation(line: 1254, column: 15, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1547, file: !2, line: 1254, column: 15)
!1591 = !DILocation(line: 1254, column: 21, scope: !1590)
!1592 = !DILocation(line: 1255, column: 23, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1590, file: !2, line: 1254, column: 31)
!1594 = !DILocation(line: 1256, column: 23, scope: !1593)
!1595 = !DILocation(line: 1256, column: 50, scope: !1593)
!1596 = !DILocation(line: 1256, column: 41, scope: !1593)
!1597 = !DILocation(line: 1255, column: 13, scope: !1593)
!1598 = !DILocation(line: 1257, column: 13, scope: !1593)
!1599 = !DILocation(line: 1258, column: 13, scope: !1593)
!1600 = !DILocation(line: 1260, column: 10, scope: !1547)
!1601 = !DILocation(line: 1263, column: 18, scope: !1547)
!1602 = !DILocation(line: 1263, column: 16, scope: !1547)
!1603 = !DILocation(line: 1264, column: 19, scope: !1547)
!1604 = !DILocation(line: 1264, column: 17, scope: !1547)
!1605 = !DILocation(line: 1265, column: 15, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1547, file: !2, line: 1265, column: 15)
!1607 = !DILocation(line: 1265, column: 22, scope: !1606)
!1608 = !DILocation(line: 1266, column: 23, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1606, file: !2, line: 1265, column: 31)
!1610 = !DILocation(line: 1267, column: 23, scope: !1609)
!1611 = !DILocation(line: 1267, column: 51, scope: !1609)
!1612 = !DILocation(line: 1267, column: 42, scope: !1609)
!1613 = !DILocation(line: 1266, column: 13, scope: !1609)
!1614 = !DILocation(line: 1268, column: 18, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !1609, file: !2, line: 1268, column: 18)
!1616 = !DILocation(line: 1268, column: 24, scope: !1615)
!1617 = !DILocation(line: 1268, column: 43, scope: !1615)
!1618 = !DILocation(line: 1268, column: 34, scope: !1615)
!1619 = !DILocation(line: 1269, column: 13, scope: !1609)
!1620 = !DILocation(line: 1270, column: 13, scope: !1609)
!1621 = !DILocation(line: 1272, column: 15, scope: !1622)
!1622 = distinct !DILexicalBlock(scope: !1547, file: !2, line: 1272, column: 15)
!1623 = !DILocation(line: 1272, column: 21, scope: !1622)
!1624 = !DILocation(line: 1273, column: 23, scope: !1625)
!1625 = distinct !DILexicalBlock(scope: !1622, file: !2, line: 1272, column: 31)
!1626 = !DILocation(line: 1274, column: 23, scope: !1625)
!1627 = !DILocation(line: 1274, column: 50, scope: !1625)
!1628 = !DILocation(line: 1274, column: 41, scope: !1625)
!1629 = !DILocation(line: 1273, column: 13, scope: !1625)
!1630 = !DILocation(line: 1275, column: 18, scope: !1631)
!1631 = distinct !DILexicalBlock(scope: !1625, file: !2, line: 1275, column: 18)
!1632 = !DILocation(line: 1275, column: 25, scope: !1631)
!1633 = !DILocation(line: 1275, column: 44, scope: !1631)
!1634 = !DILocation(line: 1275, column: 35, scope: !1631)
!1635 = !DILocation(line: 1276, column: 13, scope: !1625)
!1636 = !DILocation(line: 1277, column: 13, scope: !1625)
!1637 = !DILocation(line: 1279, column: 10, scope: !1547)
!1638 = !DILocation(line: 1282, column: 10, scope: !1547)
!1639 = !DILocation(line: 1286, column: 8, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1380, file: !2, line: 1286, column: 8)
!1641 = !DILocation(line: 1286, column: 18, scope: !1640)
!1642 = !DILocation(line: 1287, column: 17, scope: !1643)
!1643 = distinct !DILexicalBlock(scope: !1640, file: !2, line: 1286, column: 24)
!1644 = !DILocation(line: 1287, column: 7, scope: !1643)
!1645 = !DILocation(line: 1288, column: 7, scope: !1643)
!1646 = !DILocation(line: 1289, column: 16, scope: !1643)
!1647 = !DILocation(line: 1289, column: 7, scope: !1643)
!1648 = !DILocation(line: 1290, column: 4, scope: !1643)
!1649 = !DILocation(line: 1293, column: 29, scope: !1380)
!1650 = !DILocation(line: 1293, column: 27, scope: !1380)
!1651 = !DILocation(line: 1294, column: 28, scope: !1380)
!1652 = !DILocation(line: 1295, column: 21, scope: !1380)
!1653 = !DILocation(line: 1295, column: 28, scope: !1380)
!1654 = !DILocation(line: 1295, column: 4, scope: !1380)
!1655 = !DILocation(line: 1296, column: 27, scope: !1380)
!1656 = !DILocation(line: 1299, column: 9, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1380, file: !2, line: 1299, column: 9)
!1658 = !DILocation(line: 1299, column: 17, scope: !1657)
!1659 = !DILocation(line: 1300, column: 7, scope: !1660)
!1660 = distinct !DILexicalBlock(scope: !1657, file: !2, line: 1299, column: 29)
!1661 = !DILocation(line: 1301, column: 31, scope: !1660)
!1662 = !DILocation(line: 1302, column: 13, scope: !1663)
!1663 = distinct !DILexicalBlock(scope: !1660, file: !2, line: 1302, column: 12)
!1664 = !DILocation(line: 1302, column: 12, scope: !1663)
!1665 = !DILocalVariable(name: "retVal", scope: !1666, file: !2, line: 1303, type: !575)
!1666 = distinct !DILexicalBlock(scope: !1663, file: !2, line: 1302, column: 30)
!1667 = !DILocation(line: 1303, column: 20, scope: !1666)
!1668 = !DILocation(line: 1303, column: 29, scope: !1666)
!1669 = !DILocation(line: 1304, column: 10, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !1671, file: !2, line: 1304, column: 10)
!1671 = distinct !DILexicalBlock(scope: !1666, file: !2, line: 1304, column: 10)
!1672 = !DILocation(line: 1305, column: 7, scope: !1666)
!1673 = !DILocation(line: 1306, column: 4, scope: !1660)
!1674 = !DILocation(line: 1308, column: 28, scope: !1380)
!1675 = !DILocation(line: 1309, column: 1, scope: !1380)
!1676 = distinct !DISubprogram(name: "uncompress", scope: !2, file: !2, line: 1314, type: !1356, scopeLine: 1315, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21, retainedNodes: !577)
!1677 = !DILocalVariable(name: "name", arg: 1, scope: !1676, file: !2, line: 1314, type: !42)
!1678 = !DILocation(line: 1314, column: 25, scope: !1676)
!1679 = !DILocalVariable(name: "inStr", scope: !1676, file: !2, line: 1316, type: !215)
!1680 = !DILocation(line: 1316, column: 11, scope: !1676)
!1681 = !DILocalVariable(name: "outStr", scope: !1676, file: !2, line: 1317, type: !215)
!1682 = !DILocation(line: 1317, column: 11, scope: !1676)
!1683 = !DILocalVariable(name: "n", scope: !1676, file: !2, line: 1318, type: !45)
!1684 = !DILocation(line: 1318, column: 10, scope: !1676)
!1685 = !DILocalVariable(name: "i", scope: !1676, file: !2, line: 1318, type: !45)
!1686 = !DILocation(line: 1318, column: 13, scope: !1676)
!1687 = !DILocalVariable(name: "magicNumberOK", scope: !1676, file: !2, line: 1319, type: !40)
!1688 = !DILocation(line: 1319, column: 10, scope: !1676)
!1689 = !DILocalVariable(name: "cantGuess", scope: !1676, file: !2, line: 1320, type: !40)
!1690 = !DILocation(line: 1320, column: 10, scope: !1676)
!1691 = !DILocalVariable(name: "statBuf", scope: !1676, file: !2, line: 1321, type: !422)
!1692 = !DILocation(line: 1321, column: 19, scope: !1676)
!1693 = !DILocation(line: 1323, column: 28, scope: !1676)
!1694 = !DILocation(line: 1325, column: 8, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !1676, file: !2, line: 1325, column: 8)
!1696 = !DILocation(line: 1325, column: 13, scope: !1695)
!1697 = !DILocation(line: 1325, column: 21, scope: !1695)
!1698 = !DILocation(line: 1325, column: 24, scope: !1695)
!1699 = !DILocation(line: 1325, column: 32, scope: !1695)
!1700 = !DILocation(line: 1326, column: 7, scope: !1695)
!1701 = !DILocation(line: 1328, column: 14, scope: !1676)
!1702 = !DILocation(line: 1329, column: 12, scope: !1676)
!1703 = !DILocation(line: 1329, column: 4, scope: !1676)
!1704 = !DILocation(line: 1331, column: 10, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1676, file: !2, line: 1329, column: 21)
!1706 = !DILocation(line: 1332, column: 10, scope: !1705)
!1707 = !DILocation(line: 1333, column: 10, scope: !1705)
!1708 = !DILocation(line: 1335, column: 33, scope: !1705)
!1709 = !DILocation(line: 1335, column: 10, scope: !1705)
!1710 = !DILocation(line: 1336, column: 34, scope: !1705)
!1711 = !DILocation(line: 1336, column: 10, scope: !1705)
!1712 = !DILocation(line: 1337, column: 17, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1705, file: !2, line: 1337, column: 10)
!1714 = !DILocation(line: 1337, column: 15, scope: !1713)
!1715 = !DILocation(line: 1337, column: 22, scope: !1716)
!1716 = distinct !DILexicalBlock(scope: !1713, file: !2, line: 1337, column: 10)
!1717 = !DILocation(line: 1337, column: 24, scope: !1716)
!1718 = !DILocation(line: 1337, column: 10, scope: !1713)
!1719 = !DILocation(line: 1338, column: 43, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1716, file: !2, line: 1338, column: 17)
!1721 = !DILocation(line: 1338, column: 35, scope: !1720)
!1722 = !DILocation(line: 1338, column: 56, scope: !1720)
!1723 = !DILocation(line: 1338, column: 46, scope: !1720)
!1724 = !DILocation(line: 1338, column: 17, scope: !1720)
!1725 = !DILocation(line: 1339, column: 16, scope: !1720)
!1726 = !DILocation(line: 1338, column: 58, scope: !1720)
!1727 = !DILocation(line: 1337, column: 46, scope: !1716)
!1728 = !DILocation(line: 1337, column: 10, scope: !1716)
!1729 = distinct !{!1729, !1718, !1730, !638}
!1730 = !DILocation(line: 1339, column: 21, scope: !1713)
!1731 = !DILocation(line: 1340, column: 20, scope: !1705)
!1732 = !DILocation(line: 1341, column: 10, scope: !1705)
!1733 = !DILocation(line: 1342, column: 10, scope: !1705)
!1734 = !DILocation(line: 1344, column: 33, scope: !1705)
!1735 = !DILocation(line: 1344, column: 10, scope: !1705)
!1736 = !DILocation(line: 1345, column: 10, scope: !1705)
!1737 = !DILocation(line: 1346, column: 10, scope: !1705)
!1738 = !DILocation(line: 1347, column: 4, scope: !1705)
!1739 = !DILabel(scope: !1676, name: "zzz", file: !2, line: 1349)
!1740 = !DILocation(line: 1349, column: 4, scope: !1676)
!1741 = !DILocation(line: 1350, column: 9, scope: !1742)
!1742 = distinct !DILexicalBlock(scope: !1676, file: !2, line: 1350, column: 9)
!1743 = !DILocation(line: 1350, column: 17, scope: !1742)
!1744 = !DILocation(line: 1350, column: 27, scope: !1742)
!1745 = !DILocation(line: 1350, column: 30, scope: !1742)
!1746 = !DILocation(line: 1351, column: 11, scope: !1747)
!1747 = distinct !DILexicalBlock(scope: !1748, file: !2, line: 1351, column: 11)
!1748 = distinct !DILexicalBlock(scope: !1742, file: !2, line: 1350, column: 64)
!1749 = !DILocation(line: 1352, column: 17, scope: !1747)
!1750 = !DILocation(line: 1353, column: 17, scope: !1747)
!1751 = !DILocation(line: 1352, column: 7, scope: !1747)
!1752 = !DILocation(line: 1354, column: 7, scope: !1748)
!1753 = !DILocation(line: 1355, column: 7, scope: !1748)
!1754 = !DILocation(line: 1357, column: 9, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !1676, file: !2, line: 1357, column: 9)
!1756 = !DILocation(line: 1357, column: 17, scope: !1755)
!1757 = !DILocation(line: 1357, column: 27, scope: !1755)
!1758 = !DILocation(line: 1357, column: 31, scope: !1755)
!1759 = !DILocation(line: 1358, column: 17, scope: !1760)
!1760 = distinct !DILexicalBlock(scope: !1755, file: !2, line: 1357, column: 55)
!1761 = !DILocation(line: 1359, column: 17, scope: !1760)
!1762 = !DILocation(line: 1359, column: 44, scope: !1760)
!1763 = !DILocation(line: 1359, column: 35, scope: !1760)
!1764 = !DILocation(line: 1358, column: 7, scope: !1760)
!1765 = !DILocation(line: 1360, column: 7, scope: !1760)
!1766 = !DILocation(line: 1361, column: 7, scope: !1760)
!1767 = !DILocation(line: 1363, column: 9, scope: !1768)
!1768 = distinct !DILexicalBlock(scope: !1676, file: !2, line: 1363, column: 9)
!1769 = !DILocation(line: 1363, column: 17, scope: !1768)
!1770 = !DILocation(line: 1363, column: 27, scope: !1768)
!1771 = !DILocation(line: 1363, column: 30, scope: !1768)
!1772 = !DILocation(line: 1363, column: 38, scope: !1768)
!1773 = !DILocation(line: 1364, column: 7, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !1768, file: !2, line: 1363, column: 50)
!1775 = !DILocation(line: 1365, column: 12, scope: !1776)
!1776 = distinct !DILexicalBlock(scope: !1774, file: !2, line: 1365, column: 12)
!1777 = !DILocation(line: 1366, column: 19, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !1776, file: !2, line: 1365, column: 42)
!1779 = !DILocation(line: 1368, column: 19, scope: !1778)
!1780 = !DILocation(line: 1366, column: 10, scope: !1778)
!1781 = !DILocation(line: 1369, column: 10, scope: !1778)
!1782 = !DILocation(line: 1370, column: 10, scope: !1778)
!1783 = !DILocation(line: 1372, column: 4, scope: !1774)
!1784 = !DILocation(line: 1373, column: 9, scope: !1785)
!1785 = distinct !DILexicalBlock(scope: !1676, file: !2, line: 1373, column: 9)
!1786 = !DILocation(line: 1373, column: 17, scope: !1785)
!1787 = !DILocation(line: 1373, column: 27, scope: !1785)
!1788 = !DILocation(line: 1373, column: 31, scope: !1785)
!1789 = !DILocation(line: 1373, column: 46, scope: !1785)
!1790 = !DILocation(line: 1373, column: 49, scope: !1785)
!1791 = !DILocation(line: 1374, column: 11, scope: !1792)
!1792 = distinct !DILexicalBlock(scope: !1793, file: !2, line: 1374, column: 11)
!1793 = distinct !DILexicalBlock(scope: !1785, file: !2, line: 1373, column: 78)
!1794 = !DILocation(line: 1375, column: 17, scope: !1792)
!1795 = !DILocation(line: 1376, column: 17, scope: !1792)
!1796 = !DILocation(line: 1375, column: 7, scope: !1792)
!1797 = !DILocation(line: 1377, column: 7, scope: !1793)
!1798 = !DILocation(line: 1378, column: 7, scope: !1793)
!1799 = !DILocation(line: 1380, column: 44, scope: !1800)
!1800 = distinct !DILexicalBlock(scope: !1676, file: !2, line: 1380, column: 44)
!1801 = !DILocation(line: 1381, column: 11, scope: !1802)
!1802 = distinct !DILexicalBlock(scope: !1803, file: !2, line: 1381, column: 11)
!1803 = distinct !DILexicalBlock(scope: !1800, file: !2, line: 1380, column: 56)
!1804 = !DILocation(line: 1382, column: 17, scope: !1802)
!1805 = !DILocation(line: 1384, column: 17, scope: !1802)
!1806 = !DILocation(line: 1382, column: 7, scope: !1802)
!1807 = !DILocation(line: 1386, column: 4, scope: !1803)
!1808 = !DILocation(line: 1387, column: 9, scope: !1809)
!1809 = distinct !DILexicalBlock(scope: !1676, file: !2, line: 1387, column: 9)
!1810 = !DILocation(line: 1387, column: 17, scope: !1809)
!1811 = !DILocation(line: 1387, column: 27, scope: !1809)
!1812 = !DILocation(line: 1387, column: 30, scope: !1809)
!1813 = !DILocation(line: 1388, column: 11, scope: !1814)
!1814 = distinct !DILexicalBlock(scope: !1815, file: !2, line: 1388, column: 11)
!1815 = distinct !DILexicalBlock(scope: !1809, file: !2, line: 1387, column: 55)
!1816 = !DILocation(line: 1389, column: 2, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !1814, file: !2, line: 1388, column: 27)
!1818 = !DILocation(line: 1390, column: 7, scope: !1817)
!1819 = !DILocation(line: 1391, column: 19, scope: !1820)
!1820 = distinct !DILexicalBlock(scope: !1814, file: !2, line: 1390, column: 14)
!1821 = !DILocation(line: 1392, column: 19, scope: !1820)
!1822 = !DILocation(line: 1391, column: 9, scope: !1820)
!1823 = !DILocation(line: 1393, column: 9, scope: !1820)
!1824 = !DILocation(line: 1394, column: 9, scope: !1820)
!1825 = !DILocation(line: 1396, column: 4, scope: !1815)
!1826 = !DILocation(line: 1397, column: 9, scope: !1827)
!1827 = distinct !DILexicalBlock(scope: !1676, file: !2, line: 1397, column: 9)
!1828 = !DILocation(line: 1397, column: 17, scope: !1827)
!1829 = !DILocation(line: 1397, column: 27, scope: !1827)
!1830 = !DILocation(line: 1397, column: 31, scope: !1827)
!1831 = !DILocation(line: 1397, column: 46, scope: !1827)
!1832 = !DILocation(line: 1398, column: 12, scope: !1827)
!1833 = !DILocation(line: 1398, column: 11, scope: !1827)
!1834 = !DILocation(line: 1398, column: 40, scope: !1827)
!1835 = !DILocation(line: 1399, column: 17, scope: !1836)
!1836 = distinct !DILexicalBlock(scope: !1827, file: !2, line: 1398, column: 45)
!1837 = !DILocation(line: 1400, column: 17, scope: !1836)
!1838 = !DILocation(line: 1400, column: 35, scope: !1836)
!1839 = !DILocation(line: 1400, column: 38, scope: !1836)
!1840 = !DILocation(line: 1400, column: 40, scope: !1836)
!1841 = !DILocation(line: 1399, column: 7, scope: !1836)
!1842 = !DILocation(line: 1401, column: 7, scope: !1836)
!1843 = !DILocation(line: 1402, column: 7, scope: !1836)
!1844 = !DILocation(line: 1405, column: 9, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !1676, file: !2, line: 1405, column: 9)
!1846 = !DILocation(line: 1405, column: 17, scope: !1845)
!1847 = !DILocation(line: 1408, column: 7, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !1845, file: !2, line: 1405, column: 29)
!1849 = !DILocation(line: 1409, column: 4, scope: !1848)
!1850 = !DILocation(line: 1411, column: 13, scope: !1676)
!1851 = !DILocation(line: 1411, column: 4, scope: !1676)
!1852 = !DILocation(line: 1414, column: 18, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !1676, file: !2, line: 1411, column: 23)
!1854 = !DILocation(line: 1414, column: 16, scope: !1853)
!1855 = !DILocation(line: 1415, column: 19, scope: !1853)
!1856 = !DILocation(line: 1415, column: 17, scope: !1853)
!1857 = !DILocation(line: 1416, column: 33, scope: !1858)
!1858 = distinct !DILexicalBlock(scope: !1853, file: !2, line: 1416, column: 15)
!1859 = !DILocation(line: 1416, column: 24, scope: !1858)
!1860 = !DILocation(line: 1416, column: 15, scope: !1858)
!1861 = !DILocation(line: 1417, column: 23, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1858, file: !2, line: 1416, column: 45)
!1863 = !DILocation(line: 1419, column: 23, scope: !1862)
!1864 = !DILocation(line: 1417, column: 13, scope: !1862)
!1865 = !DILocation(line: 1420, column: 23, scope: !1862)
!1866 = !DILocation(line: 1421, column: 31, scope: !1862)
!1867 = !DILocation(line: 1421, column: 41, scope: !1862)
!1868 = !DILocation(line: 1420, column: 13, scope: !1862)
!1869 = !DILocation(line: 1422, column: 13, scope: !1862)
!1870 = !DILocation(line: 1423, column: 13, scope: !1862)
!1871 = !DILocation(line: 1425, column: 10, scope: !1853)
!1872 = !DILocation(line: 1428, column: 18, scope: !1853)
!1873 = !DILocation(line: 1428, column: 16, scope: !1853)
!1874 = !DILocation(line: 1429, column: 19, scope: !1853)
!1875 = !DILocation(line: 1429, column: 17, scope: !1853)
!1876 = !DILocation(line: 1430, column: 15, scope: !1877)
!1877 = distinct !DILexicalBlock(scope: !1853, file: !2, line: 1430, column: 15)
!1878 = !DILocation(line: 1430, column: 21, scope: !1877)
!1879 = !DILocation(line: 1431, column: 23, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1877, file: !2, line: 1430, column: 31)
!1881 = !DILocation(line: 1432, column: 23, scope: !1880)
!1882 = !DILocation(line: 1432, column: 50, scope: !1880)
!1883 = !DILocation(line: 1432, column: 41, scope: !1880)
!1884 = !DILocation(line: 1431, column: 13, scope: !1880)
!1885 = !DILocation(line: 1433, column: 18, scope: !1886)
!1886 = distinct !DILexicalBlock(scope: !1880, file: !2, line: 1433, column: 18)
!1887 = !DILocation(line: 1433, column: 24, scope: !1886)
!1888 = !DILocation(line: 1433, column: 43, scope: !1886)
!1889 = !DILocation(line: 1433, column: 34, scope: !1886)
!1890 = !DILocation(line: 1434, column: 13, scope: !1880)
!1891 = !DILocation(line: 1435, column: 13, scope: !1880)
!1892 = !DILocation(line: 1437, column: 10, scope: !1853)
!1893 = !DILocation(line: 1440, column: 18, scope: !1853)
!1894 = !DILocation(line: 1440, column: 16, scope: !1853)
!1895 = !DILocation(line: 1441, column: 19, scope: !1853)
!1896 = !DILocation(line: 1441, column: 17, scope: !1853)
!1897 = !DILocation(line: 1442, column: 15, scope: !1898)
!1898 = distinct !DILexicalBlock(scope: !1853, file: !2, line: 1442, column: 15)
!1899 = !DILocation(line: 1442, column: 22, scope: !1898)
!1900 = !DILocation(line: 1443, column: 23, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1898, file: !2, line: 1442, column: 31)
!1902 = !DILocation(line: 1444, column: 23, scope: !1901)
!1903 = !DILocation(line: 1444, column: 51, scope: !1901)
!1904 = !DILocation(line: 1444, column: 42, scope: !1901)
!1905 = !DILocation(line: 1443, column: 13, scope: !1901)
!1906 = !DILocation(line: 1445, column: 18, scope: !1907)
!1907 = distinct !DILexicalBlock(scope: !1901, file: !2, line: 1445, column: 18)
!1908 = !DILocation(line: 1445, column: 24, scope: !1907)
!1909 = !DILocation(line: 1445, column: 43, scope: !1907)
!1910 = !DILocation(line: 1445, column: 34, scope: !1907)
!1911 = !DILocation(line: 1446, column: 13, scope: !1901)
!1912 = !DILocation(line: 1447, column: 13, scope: !1901)
!1913 = !DILocation(line: 1449, column: 15, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !1853, file: !2, line: 1449, column: 15)
!1915 = !DILocation(line: 1449, column: 21, scope: !1914)
!1916 = !DILocation(line: 1450, column: 23, scope: !1917)
!1917 = distinct !DILexicalBlock(scope: !1914, file: !2, line: 1449, column: 31)
!1918 = !DILocation(line: 1451, column: 23, scope: !1917)
!1919 = !DILocation(line: 1451, column: 50, scope: !1917)
!1920 = !DILocation(line: 1451, column: 41, scope: !1917)
!1921 = !DILocation(line: 1450, column: 13, scope: !1917)
!1922 = !DILocation(line: 1452, column: 18, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1917, file: !2, line: 1452, column: 18)
!1924 = !DILocation(line: 1452, column: 25, scope: !1923)
!1925 = !DILocation(line: 1452, column: 44, scope: !1923)
!1926 = !DILocation(line: 1452, column: 35, scope: !1923)
!1927 = !DILocation(line: 1453, column: 13, scope: !1917)
!1928 = !DILocation(line: 1454, column: 13, scope: !1917)
!1929 = !DILocation(line: 1456, column: 10, scope: !1853)
!1930 = !DILocation(line: 1459, column: 10, scope: !1853)
!1931 = !DILocation(line: 1463, column: 8, scope: !1932)
!1932 = distinct !DILexicalBlock(scope: !1676, file: !2, line: 1463, column: 8)
!1933 = !DILocation(line: 1463, column: 18, scope: !1932)
!1934 = !DILocation(line: 1464, column: 17, scope: !1935)
!1935 = distinct !DILexicalBlock(scope: !1932, file: !2, line: 1463, column: 24)
!1936 = !DILocation(line: 1464, column: 7, scope: !1935)
!1937 = !DILocation(line: 1465, column: 7, scope: !1935)
!1938 = !DILocation(line: 1466, column: 16, scope: !1935)
!1939 = !DILocation(line: 1466, column: 7, scope: !1935)
!1940 = !DILocation(line: 1467, column: 4, scope: !1935)
!1941 = !DILocation(line: 1470, column: 29, scope: !1676)
!1942 = !DILocation(line: 1470, column: 27, scope: !1676)
!1943 = !DILocation(line: 1471, column: 28, scope: !1676)
!1944 = !DILocation(line: 1472, column: 39, scope: !1676)
!1945 = !DILocation(line: 1472, column: 46, scope: !1676)
!1946 = !DILocation(line: 1472, column: 20, scope: !1676)
!1947 = !DILocation(line: 1472, column: 18, scope: !1676)
!1948 = !DILocation(line: 1473, column: 27, scope: !1676)
!1949 = !DILocation(line: 1476, column: 9, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !1676, file: !2, line: 1476, column: 9)
!1951 = !DILocation(line: 1477, column: 12, scope: !1952)
!1952 = distinct !DILexicalBlock(scope: !1953, file: !2, line: 1477, column: 12)
!1953 = distinct !DILexicalBlock(scope: !1950, file: !2, line: 1476, column: 25)
!1954 = !DILocation(line: 1477, column: 20, scope: !1952)
!1955 = !DILocation(line: 1478, column: 10, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1952, file: !2, line: 1477, column: 32)
!1957 = !DILocation(line: 1479, column: 34, scope: !1956)
!1958 = !DILocation(line: 1480, column: 16, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1956, file: !2, line: 1480, column: 15)
!1960 = !DILocation(line: 1480, column: 15, scope: !1959)
!1961 = !DILocalVariable(name: "retVal", scope: !1962, file: !2, line: 1481, type: !575)
!1962 = distinct !DILexicalBlock(scope: !1959, file: !2, line: 1480, column: 33)
!1963 = !DILocation(line: 1481, column: 23, scope: !1962)
!1964 = !DILocation(line: 1481, column: 32, scope: !1962)
!1965 = !DILocation(line: 1482, column: 13, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1967, file: !2, line: 1482, column: 13)
!1967 = distinct !DILexicalBlock(scope: !1962, file: !2, line: 1482, column: 13)
!1968 = !DILocation(line: 1483, column: 10, scope: !1962)
!1969 = !DILocation(line: 1484, column: 7, scope: !1956)
!1970 = !DILocation(line: 1485, column: 4, scope: !1953)
!1971 = !DILocation(line: 1486, column: 21, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !1950, file: !2, line: 1485, column: 11)
!1973 = !DILocation(line: 1487, column: 31, scope: !1972)
!1974 = !DILocation(line: 1488, column: 12, scope: !1975)
!1975 = distinct !DILexicalBlock(scope: !1972, file: !2, line: 1488, column: 12)
!1976 = !DILocation(line: 1488, column: 20, scope: !1975)
!1977 = !DILocalVariable(name: "retVal", scope: !1978, file: !2, line: 1489, type: !575)
!1978 = distinct !DILexicalBlock(scope: !1975, file: !2, line: 1488, column: 32)
!1979 = !DILocation(line: 1489, column: 20, scope: !1978)
!1980 = !DILocation(line: 1489, column: 29, scope: !1978)
!1981 = !DILocation(line: 1490, column: 10, scope: !1982)
!1982 = distinct !DILexicalBlock(scope: !1983, file: !2, line: 1490, column: 10)
!1983 = distinct !DILexicalBlock(scope: !1978, file: !2, line: 1490, column: 10)
!1984 = !DILocation(line: 1491, column: 7, scope: !1978)
!1985 = !DILocation(line: 1493, column: 28, scope: !1676)
!1986 = !DILocation(line: 1495, column: 9, scope: !1987)
!1987 = distinct !DILexicalBlock(scope: !1676, file: !2, line: 1495, column: 9)
!1988 = !DILocation(line: 1496, column: 11, scope: !1989)
!1989 = distinct !DILexicalBlock(scope: !1990, file: !2, line: 1496, column: 11)
!1990 = distinct !DILexicalBlock(scope: !1987, file: !2, line: 1495, column: 25)
!1991 = !DILocation(line: 1496, column: 21, scope: !1989)
!1992 = !DILocation(line: 1497, column: 20, scope: !1989)
!1993 = !DILocation(line: 1497, column: 10, scope: !1989)
!1994 = !DILocation(line: 1498, column: 4, scope: !1990)
!1995 = !DILocation(line: 1499, column: 7, scope: !1996)
!1996 = distinct !DILexicalBlock(scope: !1987, file: !2, line: 1498, column: 11)
!1997 = !DILocation(line: 1500, column: 11, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1996, file: !2, line: 1500, column: 11)
!1999 = !DILocation(line: 1500, column: 21, scope: !1998)
!2000 = !DILocation(line: 1501, column: 20, scope: !1998)
!2001 = !DILocation(line: 1501, column: 10, scope: !1998)
!2002 = !DILocation(line: 1502, column: 20, scope: !1998)
!2003 = !DILocation(line: 1504, column: 20, scope: !1998)
!2004 = !DILocation(line: 1502, column: 10, scope: !1998)
!2005 = !DILocation(line: 1507, column: 1, scope: !1676)
!2006 = distinct !DISubprogram(name: "setExit", scope: !2, file: !2, line: 651, type: !2007, scopeLine: 652, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21, retainedNodes: !577)
!2007 = !DISubroutineType(types: !2008)
!2008 = !{null, !45}
!2009 = !DILocalVariable(name: "v", arg: 1, scope: !2006, file: !2, line: 651, type: !45)
!2010 = !DILocation(line: 651, column: 22, scope: !2006)
!2011 = !DILocation(line: 653, column: 8, scope: !2012)
!2012 = distinct !DILexicalBlock(scope: !2006, file: !2, line: 653, column: 8)
!2013 = !DILocation(line: 653, column: 12, scope: !2012)
!2014 = !DILocation(line: 653, column: 10, scope: !2012)
!2015 = !DILocation(line: 653, column: 35, scope: !2012)
!2016 = !DILocation(line: 653, column: 33, scope: !2012)
!2017 = !DILocation(line: 653, column: 23, scope: !2012)
!2018 = !DILocation(line: 654, column: 1, scope: !2006)
!2019 = distinct !DISubprogram(name: "testf", scope: !2, file: !2, line: 1512, type: !1356, scopeLine: 1513, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21, retainedNodes: !577)
!2020 = !DILocalVariable(name: "name", arg: 1, scope: !2019, file: !2, line: 1512, type: !42)
!2021 = !DILocation(line: 1512, column: 20, scope: !2019)
!2022 = !DILocalVariable(name: "inStr", scope: !2019, file: !2, line: 1514, type: !215)
!2023 = !DILocation(line: 1514, column: 10, scope: !2019)
!2024 = !DILocalVariable(name: "allOK", scope: !2019, file: !2, line: 1515, type: !40)
!2025 = !DILocation(line: 1515, column: 9, scope: !2019)
!2026 = !DILocalVariable(name: "statBuf", scope: !2019, file: !2, line: 1516, type: !422)
!2027 = !DILocation(line: 1516, column: 19, scope: !2019)
!2028 = !DILocation(line: 1518, column: 28, scope: !2019)
!2029 = !DILocation(line: 1520, column: 8, scope: !2030)
!2030 = distinct !DILexicalBlock(scope: !2019, file: !2, line: 1520, column: 8)
!2031 = !DILocation(line: 1520, column: 13, scope: !2030)
!2032 = !DILocation(line: 1520, column: 21, scope: !2030)
!2033 = !DILocation(line: 1520, column: 24, scope: !2030)
!2034 = !DILocation(line: 1520, column: 32, scope: !2030)
!2035 = !DILocation(line: 1521, column: 7, scope: !2030)
!2036 = !DILocation(line: 1523, column: 4, scope: !2019)
!2037 = !DILocation(line: 1524, column: 12, scope: !2019)
!2038 = !DILocation(line: 1524, column: 4, scope: !2019)
!2039 = !DILocation(line: 1525, column: 20, scope: !2040)
!2040 = distinct !DILexicalBlock(scope: !2019, file: !2, line: 1524, column: 21)
!2041 = !DILocation(line: 1525, column: 63, scope: !2040)
!2042 = !DILocation(line: 1526, column: 43, scope: !2040)
!2043 = !DILocation(line: 1526, column: 20, scope: !2040)
!2044 = !DILocation(line: 1526, column: 51, scope: !2040)
!2045 = !DILocation(line: 1527, column: 43, scope: !2040)
!2046 = !DILocation(line: 1527, column: 20, scope: !2040)
!2047 = !DILocation(line: 1527, column: 51, scope: !2040)
!2048 = !DILocation(line: 1530, column: 9, scope: !2049)
!2049 = distinct !DILexicalBlock(scope: !2019, file: !2, line: 1530, column: 9)
!2050 = !DILocation(line: 1530, column: 17, scope: !2049)
!2051 = !DILocation(line: 1530, column: 27, scope: !2049)
!2052 = !DILocation(line: 1530, column: 30, scope: !2049)
!2053 = !DILocation(line: 1531, column: 11, scope: !2054)
!2054 = distinct !DILexicalBlock(scope: !2055, file: !2, line: 1531, column: 11)
!2055 = distinct !DILexicalBlock(scope: !2049, file: !2, line: 1530, column: 64)
!2056 = !DILocation(line: 1532, column: 17, scope: !2054)
!2057 = !DILocation(line: 1533, column: 17, scope: !2054)
!2058 = !DILocation(line: 1532, column: 7, scope: !2054)
!2059 = !DILocation(line: 1534, column: 7, scope: !2055)
!2060 = !DILocation(line: 1535, column: 7, scope: !2055)
!2061 = !DILocation(line: 1537, column: 9, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !2019, file: !2, line: 1537, column: 9)
!2063 = !DILocation(line: 1537, column: 17, scope: !2062)
!2064 = !DILocation(line: 1537, column: 27, scope: !2062)
!2065 = !DILocation(line: 1537, column: 31, scope: !2062)
!2066 = !DILocation(line: 1538, column: 17, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !2062, file: !2, line: 1537, column: 55)
!2068 = !DILocation(line: 1539, column: 17, scope: !2067)
!2069 = !DILocation(line: 1539, column: 44, scope: !2067)
!2070 = !DILocation(line: 1539, column: 35, scope: !2067)
!2071 = !DILocation(line: 1538, column: 7, scope: !2067)
!2072 = !DILocation(line: 1540, column: 7, scope: !2067)
!2073 = !DILocation(line: 1541, column: 7, scope: !2067)
!2074 = !DILocation(line: 1543, column: 9, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !2019, file: !2, line: 1543, column: 9)
!2076 = !DILocation(line: 1543, column: 17, scope: !2075)
!2077 = !DILocation(line: 1544, column: 7, scope: !2078)
!2078 = distinct !DILexicalBlock(scope: !2075, file: !2, line: 1543, column: 29)
!2079 = !DILocation(line: 1545, column: 12, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !2078, file: !2, line: 1545, column: 12)
!2081 = !DILocation(line: 1546, column: 19, scope: !2082)
!2082 = distinct !DILexicalBlock(scope: !2080, file: !2, line: 1545, column: 42)
!2083 = !DILocation(line: 1548, column: 19, scope: !2082)
!2084 = !DILocation(line: 1546, column: 10, scope: !2082)
!2085 = !DILocation(line: 1549, column: 10, scope: !2082)
!2086 = !DILocation(line: 1550, column: 10, scope: !2082)
!2087 = !DILocation(line: 1552, column: 4, scope: !2078)
!2088 = !DILocation(line: 1554, column: 13, scope: !2019)
!2089 = !DILocation(line: 1554, column: 4, scope: !2019)
!2090 = !DILocation(line: 1557, column: 33, scope: !2091)
!2091 = distinct !DILexicalBlock(scope: !2092, file: !2, line: 1557, column: 15)
!2092 = distinct !DILexicalBlock(scope: !2019, file: !2, line: 1554, column: 23)
!2093 = !DILocation(line: 1557, column: 24, scope: !2091)
!2094 = !DILocation(line: 1557, column: 15, scope: !2091)
!2095 = !DILocation(line: 1558, column: 23, scope: !2096)
!2096 = distinct !DILexicalBlock(scope: !2091, file: !2, line: 1557, column: 45)
!2097 = !DILocation(line: 1560, column: 23, scope: !2096)
!2098 = !DILocation(line: 1558, column: 13, scope: !2096)
!2099 = !DILocation(line: 1561, column: 23, scope: !2096)
!2100 = !DILocation(line: 1562, column: 31, scope: !2096)
!2101 = !DILocation(line: 1562, column: 41, scope: !2096)
!2102 = !DILocation(line: 1561, column: 13, scope: !2096)
!2103 = !DILocation(line: 1563, column: 13, scope: !2096)
!2104 = !DILocation(line: 1564, column: 13, scope: !2096)
!2105 = !DILocation(line: 1566, column: 18, scope: !2092)
!2106 = !DILocation(line: 1566, column: 16, scope: !2092)
!2107 = !DILocation(line: 1567, column: 10, scope: !2092)
!2108 = !DILocation(line: 1570, column: 18, scope: !2092)
!2109 = !DILocation(line: 1570, column: 16, scope: !2092)
!2110 = !DILocation(line: 1571, column: 15, scope: !2111)
!2111 = distinct !DILexicalBlock(scope: !2092, file: !2, line: 1571, column: 15)
!2112 = !DILocation(line: 1571, column: 21, scope: !2111)
!2113 = !DILocation(line: 1572, column: 23, scope: !2114)
!2114 = distinct !DILexicalBlock(scope: !2111, file: !2, line: 1571, column: 31)
!2115 = !DILocation(line: 1573, column: 23, scope: !2114)
!2116 = !DILocation(line: 1573, column: 50, scope: !2114)
!2117 = !DILocation(line: 1573, column: 41, scope: !2114)
!2118 = !DILocation(line: 1572, column: 13, scope: !2114)
!2119 = !DILocation(line: 1574, column: 13, scope: !2114)
!2120 = !DILocation(line: 1575, column: 13, scope: !2114)
!2121 = !DILocation(line: 1577, column: 10, scope: !2092)
!2122 = !DILocation(line: 1580, column: 10, scope: !2092)
!2123 = !DILocation(line: 1584, column: 8, scope: !2124)
!2124 = distinct !DILexicalBlock(scope: !2019, file: !2, line: 1584, column: 8)
!2125 = !DILocation(line: 1584, column: 18, scope: !2124)
!2126 = !DILocation(line: 1585, column: 17, scope: !2127)
!2127 = distinct !DILexicalBlock(scope: !2124, file: !2, line: 1584, column: 24)
!2128 = !DILocation(line: 1585, column: 7, scope: !2127)
!2129 = !DILocation(line: 1586, column: 7, scope: !2127)
!2130 = !DILocation(line: 1587, column: 16, scope: !2127)
!2131 = !DILocation(line: 1587, column: 7, scope: !2127)
!2132 = !DILocation(line: 1588, column: 4, scope: !2127)
!2133 = !DILocation(line: 1591, column: 27, scope: !2019)
!2134 = !DILocation(line: 1592, column: 25, scope: !2019)
!2135 = !DILocation(line: 1592, column: 12, scope: !2019)
!2136 = !DILocation(line: 1592, column: 10, scope: !2019)
!2137 = !DILocation(line: 1594, column: 8, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !2019, file: !2, line: 1594, column: 8)
!2139 = !DILocation(line: 1594, column: 14, scope: !2138)
!2140 = !DILocation(line: 1594, column: 17, scope: !2138)
!2141 = !DILocation(line: 1594, column: 27, scope: !2138)
!2142 = !DILocation(line: 1594, column: 43, scope: !2138)
!2143 = !DILocation(line: 1594, column: 33, scope: !2138)
!2144 = !DILocation(line: 1595, column: 9, scope: !2145)
!2145 = distinct !DILexicalBlock(scope: !2019, file: !2, line: 1595, column: 8)
!2146 = !DILocation(line: 1595, column: 8, scope: !2145)
!2147 = !DILocation(line: 1595, column: 31, scope: !2145)
!2148 = !DILocation(line: 1595, column: 16, scope: !2145)
!2149 = !DILocation(line: 1596, column: 1, scope: !2019)
!2150 = distinct !DISubprogram(name: "showFileNames", scope: !2, file: !2, line: 674, type: !1349, scopeLine: 675, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21)
!2151 = !DILocation(line: 676, column: 8, scope: !2152)
!2152 = distinct !DILexicalBlock(scope: !2150, file: !2, line: 676, column: 8)
!2153 = !DILocation(line: 678, column: 7, scope: !2152)
!2154 = !DILocation(line: 677, column: 4, scope: !2152)
!2155 = !DILocation(line: 682, column: 1, scope: !2150)
!2156 = distinct !DISubprogram(name: "cleanUpAndFail", scope: !2, file: !2, line: 687, type: !2007, scopeLine: 688, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21, retainedNodes: !577)
!2157 = !DILocalVariable(name: "ec", arg: 1, scope: !2156, file: !2, line: 687, type: !45)
!2158 = !DILocation(line: 687, column: 29, scope: !2156)
!2159 = !DILocalVariable(name: "retVal", scope: !2156, file: !2, line: 689, type: !575)
!2160 = !DILocation(line: 689, column: 19, scope: !2156)
!2161 = !DILocalVariable(name: "statBuf", scope: !2156, file: !2, line: 690, type: !422)
!2162 = !DILocation(line: 690, column: 19, scope: !2156)
!2163 = !DILocation(line: 692, column: 9, scope: !2164)
!2164 = distinct !DILexicalBlock(scope: !2156, file: !2, line: 692, column: 9)
!2165 = !DILocation(line: 692, column: 17, scope: !2164)
!2166 = !DILocation(line: 693, column: 9, scope: !2164)
!2167 = !DILocation(line: 693, column: 12, scope: !2164)
!2168 = !DILocation(line: 693, column: 19, scope: !2164)
!2169 = !DILocation(line: 694, column: 9, scope: !2164)
!2170 = !DILocation(line: 694, column: 12, scope: !2164)
!2171 = !DILocation(line: 701, column: 16, scope: !2172)
!2172 = distinct !DILexicalBlock(scope: !2164, file: !2, line: 694, column: 38)
!2173 = !DILocation(line: 701, column: 14, scope: !2172)
!2174 = !DILocation(line: 702, column: 11, scope: !2175)
!2175 = distinct !DILexicalBlock(scope: !2172, file: !2, line: 702, column: 11)
!2176 = !DILocation(line: 702, column: 18, scope: !2175)
!2177 = !DILocation(line: 703, column: 14, scope: !2178)
!2178 = distinct !DILexicalBlock(scope: !2179, file: !2, line: 703, column: 14)
!2179 = distinct !DILexicalBlock(scope: !2175, file: !2, line: 702, column: 24)
!2180 = !DILocation(line: 704, column: 23, scope: !2178)
!2181 = !DILocation(line: 706, column: 23, scope: !2178)
!2182 = !DILocation(line: 704, column: 13, scope: !2178)
!2183 = !DILocation(line: 707, column: 14, scope: !2184)
!2184 = distinct !DILexicalBlock(scope: !2179, file: !2, line: 707, column: 14)
!2185 = !DILocation(line: 707, column: 37, scope: !2184)
!2186 = !DILocation(line: 708, column: 22, scope: !2184)
!2187 = !DILocation(line: 708, column: 13, scope: !2184)
!2188 = !DILocation(line: 709, column: 19, scope: !2179)
!2189 = !DILocation(line: 709, column: 17, scope: !2179)
!2190 = !DILocation(line: 710, column: 14, scope: !2191)
!2191 = distinct !DILexicalBlock(scope: !2179, file: !2, line: 710, column: 14)
!2192 = !DILocation(line: 710, column: 21, scope: !2191)
!2193 = !DILocation(line: 711, column: 23, scope: !2191)
!2194 = !DILocation(line: 714, column: 23, scope: !2191)
!2195 = !DILocation(line: 711, column: 13, scope: !2191)
!2196 = !DILocation(line: 715, column: 7, scope: !2179)
!2197 = !DILocation(line: 716, column: 20, scope: !2198)
!2198 = distinct !DILexicalBlock(scope: !2175, file: !2, line: 715, column: 14)
!2199 = !DILocation(line: 718, column: 21, scope: !2198)
!2200 = !DILocation(line: 716, column: 10, scope: !2198)
!2201 = !DILocation(line: 719, column: 20, scope: !2198)
!2202 = !DILocation(line: 721, column: 20, scope: !2198)
!2203 = !DILocation(line: 719, column: 10, scope: !2198)
!2204 = !DILocation(line: 722, column: 20, scope: !2198)
!2205 = !DILocation(line: 724, column: 20, scope: !2198)
!2206 = !DILocation(line: 722, column: 10, scope: !2198)
!2207 = !DILocation(line: 725, column: 20, scope: !2198)
!2208 = !DILocation(line: 728, column: 20, scope: !2198)
!2209 = !DILocation(line: 725, column: 10, scope: !2198)
!2210 = !DILocation(line: 730, column: 4, scope: !2172)
!2211 = !DILocation(line: 732, column: 8, scope: !2212)
!2212 = distinct !DILexicalBlock(scope: !2156, file: !2, line: 732, column: 8)
!2213 = !DILocation(line: 732, column: 14, scope: !2212)
!2214 = !DILocation(line: 732, column: 17, scope: !2212)
!2215 = !DILocation(line: 732, column: 30, scope: !2212)
!2216 = !DILocation(line: 732, column: 34, scope: !2212)
!2217 = !DILocation(line: 732, column: 37, scope: !2212)
!2218 = !DILocation(line: 732, column: 57, scope: !2212)
!2219 = !DILocation(line: 732, column: 55, scope: !2212)
!2220 = !DILocation(line: 733, column: 17, scope: !2221)
!2221 = distinct !DILexicalBlock(scope: !2212, file: !2, line: 732, column: 71)
!2222 = !DILocation(line: 736, column: 17, scope: !2221)
!2223 = !DILocation(line: 736, column: 27, scope: !2221)
!2224 = !DILocation(line: 737, column: 17, scope: !2221)
!2225 = !DILocation(line: 737, column: 31, scope: !2221)
!2226 = !DILocation(line: 737, column: 46, scope: !2221)
!2227 = !DILocation(line: 737, column: 44, scope: !2221)
!2228 = !DILocation(line: 733, column: 7, scope: !2221)
!2229 = !DILocation(line: 738, column: 4, scope: !2221)
!2230 = !DILocation(line: 739, column: 12, scope: !2156)
!2231 = !DILocation(line: 739, column: 4, scope: !2156)
!2232 = !DILocation(line: 740, column: 9, scope: !2156)
!2233 = !DILocation(line: 740, column: 4, scope: !2156)
!2234 = distinct !DISubprogram(name: "cadvise", scope: !2, file: !2, line: 659, type: !1349, scopeLine: 660, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21)
!2235 = !DILocation(line: 661, column: 8, scope: !2236)
!2236 = distinct !DILexicalBlock(scope: !2234, file: !2, line: 661, column: 8)
!2237 = !DILocation(line: 663, column: 7, scope: !2236)
!2238 = !DILocation(line: 662, column: 4, scope: !2236)
!2239 = !DILocation(line: 669, column: 1, scope: !2234)
!2240 = distinct !DISubprogram(name: "mkCell", scope: !2, file: !2, line: 1716, type: !2241, scopeLine: 1717, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21, retainedNodes: !577)
!2241 = !DISubroutineType(types: !2242)
!2242 = !{!48}
!2243 = !DILocalVariable(name: "c", scope: !2240, file: !2, line: 1718, type: !48)
!2244 = !DILocation(line: 1718, column: 10, scope: !2240)
!2245 = !DILocation(line: 1720, column: 16, scope: !2240)
!2246 = !DILocation(line: 1720, column: 6, scope: !2240)
!2247 = !DILocation(line: 1721, column: 4, scope: !2240)
!2248 = !DILocation(line: 1721, column: 7, scope: !2240)
!2249 = !DILocation(line: 1721, column: 12, scope: !2240)
!2250 = !DILocation(line: 1722, column: 4, scope: !2240)
!2251 = !DILocation(line: 1722, column: 7, scope: !2240)
!2252 = !DILocation(line: 1722, column: 12, scope: !2240)
!2253 = !DILocation(line: 1723, column: 11, scope: !2240)
!2254 = !DILocation(line: 1723, column: 4, scope: !2240)
!2255 = distinct !DISubprogram(name: "myMalloc", scope: !2, file: !2, line: 1704, type: !2256, scopeLine: 1705, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21, retainedNodes: !577)
!2256 = !DISubroutineType(types: !2257)
!2257 = !{!44, !45}
!2258 = !DILocalVariable(name: "n", arg: 1, scope: !2255, file: !2, line: 1704, type: !45)
!2259 = !DILocation(line: 1704, column: 24, scope: !2255)
!2260 = !DILocalVariable(name: "p", scope: !2255, file: !2, line: 1706, type: !44)
!2261 = !DILocation(line: 1706, column: 10, scope: !2255)
!2262 = !DILocation(line: 1708, column: 25, scope: !2255)
!2263 = !DILocation(line: 1708, column: 17, scope: !2255)
!2264 = !DILocation(line: 1708, column: 8, scope: !2255)
!2265 = !DILocation(line: 1708, column: 6, scope: !2255)
!2266 = !DILocation(line: 1709, column: 8, scope: !2267)
!2267 = distinct !DILexicalBlock(scope: !2255, file: !2, line: 1709, column: 8)
!2268 = !DILocation(line: 1709, column: 10, scope: !2267)
!2269 = !DILocation(line: 1709, column: 19, scope: !2267)
!2270 = !DILocation(line: 1710, column: 11, scope: !2255)
!2271 = !DILocation(line: 1710, column: 4, scope: !2255)
!2272 = distinct !DISubprogram(name: "outOfMemory", scope: !2, file: !2, line: 872, type: !1349, scopeLine: 873, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21)
!2273 = !DILocation(line: 874, column: 14, scope: !2272)
!2274 = !DILocation(line: 876, column: 14, scope: !2272)
!2275 = !DILocation(line: 874, column: 4, scope: !2272)
!2276 = !DILocation(line: 877, column: 4, scope: !2272)
!2277 = !DILocation(line: 878, column: 4, scope: !2272)
!2278 = distinct !DISubprogram(name: "panic", scope: !2, file: !2, line: 746, type: !2279, scopeLine: 747, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21, retainedNodes: !577)
!2279 = !DISubroutineType(types: !2280)
!2280 = !{null, !72}
!2281 = !DILocalVariable(name: "s", arg: 1, scope: !2278, file: !2, line: 746, type: !72)
!2282 = !DILocation(line: 746, column: 26, scope: !2278)
!2283 = !DILocation(line: 748, column: 14, scope: !2278)
!2284 = !DILocation(line: 753, column: 14, scope: !2278)
!2285 = !DILocation(line: 753, column: 24, scope: !2278)
!2286 = !DILocation(line: 748, column: 4, scope: !2278)
!2287 = !DILocation(line: 754, column: 4, scope: !2278)
!2288 = !DILocation(line: 755, column: 4, scope: !2278)
!2289 = distinct !DISubprogram(name: "containsDubiousChars", scope: !2, file: !2, line: 1083, type: !2290, scopeLine: 1084, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21, retainedNodes: !577)
!2290 = !DISubroutineType(types: !2291)
!2291 = !{!40, !42}
!2292 = !DILocalVariable(name: "name", arg: 1, scope: !2289, file: !2, line: 1083, type: !42)
!2293 = !DILocation(line: 1083, column: 35, scope: !2289)
!2294 = !DILocation(line: 1089, column: 4, scope: !2289)
!2295 = distinct !DISubprogram(name: "fileExists", scope: !2, file: !2, line: 940, type: !2290, scopeLine: 941, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21, retainedNodes: !577)
!2296 = !DILocalVariable(name: "name", arg: 1, scope: !2295, file: !2, line: 940, type: !42)
!2297 = !DILocation(line: 940, column: 25, scope: !2295)
!2298 = !DILocalVariable(name: "tmp", scope: !2295, file: !2, line: 942, type: !215)
!2299 = !DILocation(line: 942, column: 10, scope: !2295)
!2300 = !DILocation(line: 942, column: 26, scope: !2295)
!2301 = !DILocation(line: 942, column: 18, scope: !2295)
!2302 = !DILocalVariable(name: "exists", scope: !2295, file: !2, line: 943, type: !40)
!2303 = !DILocation(line: 943, column: 9, scope: !2295)
!2304 = !DILocation(line: 943, column: 19, scope: !2295)
!2305 = !DILocation(line: 943, column: 23, scope: !2295)
!2306 = !DILocation(line: 943, column: 18, scope: !2295)
!2307 = !DILocation(line: 944, column: 8, scope: !2308)
!2308 = distinct !DILexicalBlock(scope: !2295, file: !2, line: 944, column: 8)
!2309 = !DILocation(line: 944, column: 12, scope: !2308)
!2310 = !DILocation(line: 944, column: 30, scope: !2308)
!2311 = !DILocation(line: 944, column: 21, scope: !2308)
!2312 = !DILocation(line: 945, column: 11, scope: !2295)
!2313 = !DILocation(line: 945, column: 4, scope: !2295)
!2314 = distinct !DISubprogram(name: "hasSuffix", scope: !2, file: !2, line: 1110, type: !2315, scopeLine: 1111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21, retainedNodes: !577)
!2315 = !DISubroutineType(types: !2316)
!2316 = !{!40, !42, !72}
!2317 = !DILocalVariable(name: "s", arg: 1, scope: !2314, file: !2, line: 1110, type: !42)
!2318 = !DILocation(line: 1110, column: 24, scope: !2314)
!2319 = !DILocalVariable(name: "suffix", arg: 2, scope: !2314, file: !2, line: 1110, type: !72)
!2320 = !DILocation(line: 1110, column: 39, scope: !2314)
!2321 = !DILocalVariable(name: "ns", scope: !2314, file: !2, line: 1112, type: !45)
!2322 = !DILocation(line: 1112, column: 10, scope: !2314)
!2323 = !DILocation(line: 1112, column: 22, scope: !2314)
!2324 = !DILocation(line: 1112, column: 15, scope: !2314)
!2325 = !DILocalVariable(name: "nx", scope: !2314, file: !2, line: 1113, type: !45)
!2326 = !DILocation(line: 1113, column: 10, scope: !2314)
!2327 = !DILocation(line: 1113, column: 22, scope: !2314)
!2328 = !DILocation(line: 1113, column: 15, scope: !2314)
!2329 = !DILocation(line: 1114, column: 8, scope: !2330)
!2330 = distinct !DILexicalBlock(scope: !2314, file: !2, line: 1114, column: 8)
!2331 = !DILocation(line: 1114, column: 13, scope: !2330)
!2332 = !DILocation(line: 1114, column: 11, scope: !2330)
!2333 = !DILocation(line: 1114, column: 17, scope: !2330)
!2334 = !DILocation(line: 1115, column: 15, scope: !2335)
!2335 = distinct !DILexicalBlock(scope: !2314, file: !2, line: 1115, column: 8)
!2336 = !DILocation(line: 1115, column: 19, scope: !2335)
!2337 = !DILocation(line: 1115, column: 17, scope: !2335)
!2338 = !DILocation(line: 1115, column: 24, scope: !2335)
!2339 = !DILocation(line: 1115, column: 22, scope: !2335)
!2340 = !DILocation(line: 1115, column: 28, scope: !2335)
!2341 = !DILocation(line: 1115, column: 8, scope: !2335)
!2342 = !DILocation(line: 1115, column: 36, scope: !2335)
!2343 = !DILocation(line: 1115, column: 42, scope: !2335)
!2344 = !DILocation(line: 1116, column: 4, scope: !2314)
!2345 = !DILocation(line: 1117, column: 1, scope: !2314)
!2346 = distinct !DISubprogram(name: "notAStandardFile", scope: !2, file: !2, line: 981, type: !2290, scopeLine: 982, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21, retainedNodes: !577)
!2347 = !DILocalVariable(name: "name", arg: 1, scope: !2346, file: !2, line: 981, type: !42)
!2348 = !DILocation(line: 981, column: 31, scope: !2346)
!2349 = !DILocalVariable(name: "i", scope: !2346, file: !2, line: 983, type: !575)
!2350 = !DILocation(line: 983, column: 19, scope: !2346)
!2351 = !DILocalVariable(name: "statBuf", scope: !2346, file: !2, line: 984, type: !422)
!2352 = !DILocation(line: 984, column: 19, scope: !2346)
!2353 = !DILocation(line: 986, column: 19, scope: !2346)
!2354 = !DILocation(line: 986, column: 8, scope: !2346)
!2355 = !DILocation(line: 986, column: 6, scope: !2346)
!2356 = !DILocation(line: 987, column: 8, scope: !2357)
!2357 = distinct !DILexicalBlock(scope: !2346, file: !2, line: 987, column: 8)
!2358 = !DILocation(line: 987, column: 10, scope: !2357)
!2359 = !DILocation(line: 987, column: 16, scope: !2357)
!2360 = !DILocation(line: 988, column: 8, scope: !2361)
!2361 = distinct !DILexicalBlock(scope: !2346, file: !2, line: 988, column: 8)
!2362 = !DILocation(line: 988, column: 37, scope: !2361)
!2363 = !DILocation(line: 989, column: 4, scope: !2346)
!2364 = !DILocation(line: 990, column: 1, scope: !2346)
!2365 = distinct !DISubprogram(name: "countHardLinks", scope: !2, file: !2, line: 998, type: !2366, scopeLine: 999, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21, retainedNodes: !577)
!2366 = !DISubroutineType(types: !2367)
!2367 = !{!45, !42}
!2368 = !DILocalVariable(name: "name", arg: 1, scope: !2365, file: !2, line: 998, type: !42)
!2369 = !DILocation(line: 998, column: 30, scope: !2365)
!2370 = !DILocalVariable(name: "i", scope: !2365, file: !2, line: 1000, type: !575)
!2371 = !DILocation(line: 1000, column: 19, scope: !2365)
!2372 = !DILocalVariable(name: "statBuf", scope: !2365, file: !2, line: 1001, type: !422)
!2373 = !DILocation(line: 1001, column: 19, scope: !2365)
!2374 = !DILocation(line: 1003, column: 19, scope: !2365)
!2375 = !DILocation(line: 1003, column: 8, scope: !2365)
!2376 = !DILocation(line: 1003, column: 6, scope: !2365)
!2377 = !DILocation(line: 1004, column: 8, scope: !2378)
!2378 = distinct !DILexicalBlock(scope: !2365, file: !2, line: 1004, column: 8)
!2379 = !DILocation(line: 1004, column: 10, scope: !2378)
!2380 = !DILocation(line: 1004, column: 16, scope: !2378)
!2381 = !DILocation(line: 1005, column: 20, scope: !2365)
!2382 = !DILocation(line: 1005, column: 29, scope: !2365)
!2383 = !DILocation(line: 1005, column: 11, scope: !2365)
!2384 = !DILocation(line: 1005, column: 4, scope: !2365)
!2385 = !DILocation(line: 1006, column: 1, scope: !2365)
!2386 = distinct !DISubprogram(name: "saveInputFileMetaInfo", scope: !2, file: !2, line: 1038, type: !1356, scopeLine: 1039, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21, retainedNodes: !577)
!2387 = !DILocalVariable(name: "srcName", arg: 1, scope: !2386, file: !2, line: 1038, type: !42)
!2388 = !DILocation(line: 1038, column: 36, scope: !2386)
!2389 = !DILocalVariable(name: "retVal", scope: !2386, file: !2, line: 1041, type: !575)
!2390 = !DILocation(line: 1041, column: 14, scope: !2386)
!2391 = !DILocation(line: 1043, column: 22, scope: !2386)
!2392 = !DILocation(line: 1043, column: 13, scope: !2386)
!2393 = !DILocation(line: 1043, column: 11, scope: !2386)
!2394 = !DILocation(line: 1044, column: 4, scope: !2395)
!2395 = distinct !DILexicalBlock(scope: !2396, file: !2, line: 1044, column: 4)
!2396 = distinct !DILexicalBlock(scope: !2386, file: !2, line: 1044, column: 4)
!2397 = !DILocation(line: 1046, column: 1, scope: !2386)
!2398 = distinct !DISubprogram(name: "fopen_output_safely", scope: !2, file: !2, line: 960, type: !2399, scopeLine: 961, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21, retainedNodes: !577)
!2399 = !DISubroutineType(types: !2400)
!2400 = !{!215, !42, !2401}
!2401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2402, size: 64)
!2402 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!2403 = !DILocalVariable(name: "name", arg: 1, scope: !2398, file: !2, line: 960, type: !42)
!2404 = !DILocation(line: 960, column: 35, scope: !2398)
!2405 = !DILocalVariable(name: "mode", arg: 2, scope: !2398, file: !2, line: 960, type: !2401)
!2406 = !DILocation(line: 960, column: 53, scope: !2398)
!2407 = !DILocalVariable(name: "fp", scope: !2398, file: !2, line: 963, type: !215)
!2408 = !DILocation(line: 963, column: 14, scope: !2398)
!2409 = !DILocalVariable(name: "fh", scope: !2398, file: !2, line: 964, type: !575)
!2410 = !DILocation(line: 964, column: 14, scope: !2398)
!2411 = !DILocation(line: 965, column: 14, scope: !2398)
!2412 = !DILocation(line: 965, column: 9, scope: !2398)
!2413 = !DILocation(line: 965, column: 7, scope: !2398)
!2414 = !DILocation(line: 966, column: 8, scope: !2415)
!2415 = distinct !DILexicalBlock(scope: !2398, file: !2, line: 966, column: 8)
!2416 = !DILocation(line: 966, column: 11, scope: !2415)
!2417 = !DILocation(line: 966, column: 18, scope: !2415)
!2418 = !DILocation(line: 967, column: 16, scope: !2398)
!2419 = !DILocation(line: 967, column: 20, scope: !2398)
!2420 = !DILocation(line: 967, column: 9, scope: !2398)
!2421 = !DILocation(line: 967, column: 7, scope: !2398)
!2422 = !DILocation(line: 968, column: 8, scope: !2423)
!2423 = distinct !DILexicalBlock(scope: !2398, file: !2, line: 968, column: 8)
!2424 = !DILocation(line: 968, column: 11, scope: !2423)
!2425 = !DILocation(line: 968, column: 26, scope: !2423)
!2426 = !DILocation(line: 968, column: 20, scope: !2423)
!2427 = !DILocation(line: 969, column: 11, scope: !2398)
!2428 = !DILocation(line: 969, column: 4, scope: !2398)
!2429 = !DILocation(line: 973, column: 1, scope: !2398)
!2430 = distinct !DISubprogram(name: "pad", scope: !2, file: !2, line: 908, type: !1356, scopeLine: 909, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21, retainedNodes: !577)
!2431 = !DILocalVariable(name: "s", arg: 1, scope: !2430, file: !2, line: 908, type: !42)
!2432 = !DILocation(line: 908, column: 18, scope: !2430)
!2433 = !DILocalVariable(name: "i", scope: !2430, file: !2, line: 910, type: !45)
!2434 = !DILocation(line: 910, column: 10, scope: !2430)
!2435 = !DILocation(line: 911, column: 23, scope: !2436)
!2436 = distinct !DILexicalBlock(scope: !2430, file: !2, line: 911, column: 9)
!2437 = !DILocation(line: 911, column: 16, scope: !2436)
!2438 = !DILocation(line: 911, column: 9, scope: !2436)
!2439 = !DILocation(line: 911, column: 29, scope: !2436)
!2440 = !DILocation(line: 911, column: 26, scope: !2436)
!2441 = !DILocation(line: 911, column: 47, scope: !2436)
!2442 = !DILocation(line: 912, column: 11, scope: !2443)
!2443 = distinct !DILexicalBlock(scope: !2430, file: !2, line: 912, column: 4)
!2444 = !DILocation(line: 912, column: 9, scope: !2443)
!2445 = !DILocation(line: 912, column: 16, scope: !2446)
!2446 = distinct !DILexicalBlock(scope: !2443, file: !2, line: 912, column: 4)
!2447 = !DILocation(line: 912, column: 21, scope: !2446)
!2448 = !DILocation(line: 912, column: 53, scope: !2446)
!2449 = !DILocation(line: 912, column: 46, scope: !2446)
!2450 = !DILocation(line: 912, column: 39, scope: !2446)
!2451 = !DILocation(line: 912, column: 37, scope: !2446)
!2452 = !DILocation(line: 912, column: 18, scope: !2446)
!2453 = !DILocation(line: 912, column: 4, scope: !2443)
!2454 = !DILocation(line: 913, column: 17, scope: !2446)
!2455 = !DILocation(line: 913, column: 7, scope: !2446)
!2456 = !DILocation(line: 912, column: 58, scope: !2446)
!2457 = !DILocation(line: 912, column: 4, scope: !2446)
!2458 = distinct !{!2458, !2453, !2459, !638}
!2459 = !DILocation(line: 913, column: 29, scope: !2443)
!2460 = !DILocation(line: 914, column: 1, scope: !2430)
!2461 = distinct !DISubprogram(name: "compressStream", scope: !2, file: !2, line: 329, type: !2462, scopeLine: 330, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21, retainedNodes: !577)
!2462 = !DISubroutineType(types: !2463)
!2463 = !{null, !215, !215}
!2464 = !DILocalVariable(name: "stream", arg: 1, scope: !2461, file: !2, line: 329, type: !215)
!2465 = !DILocation(line: 329, column: 29, scope: !2461)
!2466 = !DILocalVariable(name: "zStream", arg: 2, scope: !2461, file: !2, line: 329, type: !215)
!2467 = !DILocation(line: 329, column: 43, scope: !2461)
!2468 = !DILocalVariable(name: "bzf", scope: !2461, file: !2, line: 331, type: !2469)
!2469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2470, size: 64)
!2470 = !DIDerivedType(tag: DW_TAG_typedef, name: "BZFILE", file: !2471, line: 137, baseType: null)
!2471 = !DIFile(filename: "cBench/bzip2d/src/bzlib.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "ff95ae51581c053e153e662775fd03d4")
!2472 = !DILocation(line: 331, column: 12, scope: !2461)
!2473 = !DILocalVariable(name: "ibuf", scope: !2461, file: !2, line: 332, type: !2474)
!2474 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 40000, elements: !2475)
!2475 = !{!2476}
!2476 = !DISubrange(count: 5000)
!2477 = !DILocation(line: 332, column: 12, scope: !2461)
!2478 = !DILocalVariable(name: "nIbuf", scope: !2461, file: !2, line: 333, type: !45)
!2479 = !DILocation(line: 333, column: 12, scope: !2461)
!2480 = !DILocalVariable(name: "nbytes_in_lo32", scope: !2461, file: !2, line: 334, type: !2481)
!2481 = !DIDerivedType(tag: DW_TAG_typedef, name: "UInt32", file: !2, line: 165, baseType: !25)
!2482 = !DILocation(line: 334, column: 12, scope: !2461)
!2483 = !DILocalVariable(name: "nbytes_in_hi32", scope: !2461, file: !2, line: 334, type: !2481)
!2484 = !DILocation(line: 334, column: 28, scope: !2461)
!2485 = !DILocalVariable(name: "nbytes_out_lo32", scope: !2461, file: !2, line: 335, type: !2481)
!2486 = !DILocation(line: 335, column: 12, scope: !2461)
!2487 = !DILocalVariable(name: "nbytes_out_hi32", scope: !2461, file: !2, line: 335, type: !2481)
!2488 = !DILocation(line: 335, column: 29, scope: !2461)
!2489 = !DILocalVariable(name: "bzerr", scope: !2461, file: !2, line: 336, type: !45)
!2490 = !DILocation(line: 336, column: 12, scope: !2461)
!2491 = !DILocalVariable(name: "bzerr_dummy", scope: !2461, file: !2, line: 336, type: !45)
!2492 = !DILocation(line: 336, column: 19, scope: !2461)
!2493 = !DILocalVariable(name: "ret", scope: !2461, file: !2, line: 336, type: !45)
!2494 = !DILocation(line: 336, column: 32, scope: !2461)
!2495 = !DILocation(line: 341, column: 15, scope: !2496)
!2496 = distinct !DILexicalBlock(scope: !2461, file: !2, line: 341, column: 8)
!2497 = !DILocation(line: 341, column: 8, scope: !2496)
!2498 = !DILocation(line: 341, column: 24, scope: !2496)
!2499 = !DILocation(line: 342, column: 15, scope: !2500)
!2500 = distinct !DILexicalBlock(scope: !2461, file: !2, line: 342, column: 8)
!2501 = !DILocation(line: 342, column: 8, scope: !2500)
!2502 = !DILocation(line: 342, column: 25, scope: !2500)
!2503 = !DILocation(line: 344, column: 36, scope: !2461)
!2504 = !DILocation(line: 345, column: 28, scope: !2461)
!2505 = !DILocation(line: 345, column: 43, scope: !2461)
!2506 = !DILocation(line: 345, column: 54, scope: !2461)
!2507 = !DILocation(line: 344, column: 10, scope: !2461)
!2508 = !DILocation(line: 344, column: 8, scope: !2461)
!2509 = !DILocation(line: 346, column: 8, scope: !2510)
!2510 = distinct !DILexicalBlock(scope: !2461, file: !2, line: 346, column: 8)
!2511 = !DILocation(line: 346, column: 14, scope: !2510)
!2512 = !DILocation(line: 346, column: 24, scope: !2510)
!2513 = !DILocation(line: 348, column: 8, scope: !2514)
!2514 = distinct !DILexicalBlock(scope: !2461, file: !2, line: 348, column: 8)
!2515 = !DILocation(line: 348, column: 18, scope: !2514)
!2516 = !DILocation(line: 348, column: 34, scope: !2514)
!2517 = !DILocation(line: 348, column: 24, scope: !2514)
!2518 = !DILocation(line: 350, column: 4, scope: !2461)
!2519 = !DILocation(line: 352, column: 18, scope: !2520)
!2520 = distinct !DILexicalBlock(scope: !2521, file: !2, line: 352, column: 11)
!2521 = distinct !DILexicalBlock(scope: !2461, file: !2, line: 350, column: 17)
!2522 = !DILocation(line: 352, column: 11, scope: !2520)
!2523 = !DILocation(line: 352, column: 27, scope: !2520)
!2524 = !DILocation(line: 353, column: 23, scope: !2521)
!2525 = !DILocation(line: 353, column: 50, scope: !2521)
!2526 = !DILocation(line: 353, column: 15, scope: !2521)
!2527 = !DILocation(line: 353, column: 13, scope: !2521)
!2528 = !DILocation(line: 354, column: 18, scope: !2529)
!2529 = distinct !DILexicalBlock(scope: !2521, file: !2, line: 354, column: 11)
!2530 = !DILocation(line: 354, column: 11, scope: !2529)
!2531 = !DILocation(line: 354, column: 27, scope: !2529)
!2532 = !DILocation(line: 355, column: 11, scope: !2533)
!2533 = distinct !DILexicalBlock(scope: !2521, file: !2, line: 355, column: 11)
!2534 = !DILocation(line: 355, column: 17, scope: !2533)
!2535 = !DILocation(line: 355, column: 44, scope: !2533)
!2536 = !DILocation(line: 355, column: 56, scope: !2533)
!2537 = !DILocation(line: 355, column: 62, scope: !2533)
!2538 = !DILocation(line: 355, column: 22, scope: !2533)
!2539 = !DILocation(line: 356, column: 11, scope: !2540)
!2540 = distinct !DILexicalBlock(scope: !2521, file: !2, line: 356, column: 11)
!2541 = !DILocation(line: 356, column: 17, scope: !2540)
!2542 = !DILocation(line: 356, column: 27, scope: !2540)
!2543 = distinct !{!2543, !2518, !2544}
!2544 = !DILocation(line: 358, column: 4, scope: !2461)
!2545 = !DILocation(line: 360, column: 33, scope: !2461)
!2546 = !DILocation(line: 360, column: 4, scope: !2461)
!2547 = !DILocation(line: 363, column: 8, scope: !2548)
!2548 = distinct !DILexicalBlock(scope: !2461, file: !2, line: 363, column: 8)
!2549 = !DILocation(line: 363, column: 14, scope: !2548)
!2550 = !DILocation(line: 363, column: 24, scope: !2548)
!2551 = !DILocation(line: 365, column: 15, scope: !2552)
!2552 = distinct !DILexicalBlock(scope: !2461, file: !2, line: 365, column: 8)
!2553 = !DILocation(line: 365, column: 8, scope: !2552)
!2554 = !DILocation(line: 365, column: 25, scope: !2552)
!2555 = !DILocation(line: 366, column: 19, scope: !2461)
!2556 = !DILocation(line: 366, column: 10, scope: !2461)
!2557 = !DILocation(line: 366, column: 8, scope: !2461)
!2558 = !DILocation(line: 367, column: 8, scope: !2559)
!2559 = distinct !DILexicalBlock(scope: !2461, file: !2, line: 367, column: 8)
!2560 = !DILocation(line: 367, column: 12, scope: !2559)
!2561 = !DILocation(line: 367, column: 20, scope: !2559)
!2562 = !DILocation(line: 368, column: 8, scope: !2563)
!2563 = distinct !DILexicalBlock(scope: !2461, file: !2, line: 368, column: 8)
!2564 = !DILocation(line: 368, column: 19, scope: !2563)
!2565 = !DILocation(line: 368, column: 16, scope: !2563)
!2566 = !DILocalVariable(name: "fd", scope: !2567, file: !2, line: 369, type: !45)
!2567 = distinct !DILexicalBlock(scope: !2563, file: !2, line: 368, column: 27)
!2568 = !DILocation(line: 369, column: 13, scope: !2567)
!2569 = !DILocation(line: 369, column: 27, scope: !2567)
!2570 = !DILocation(line: 369, column: 18, scope: !2567)
!2571 = !DILocation(line: 370, column: 11, scope: !2572)
!2572 = distinct !DILexicalBlock(scope: !2567, file: !2, line: 370, column: 11)
!2573 = !DILocation(line: 370, column: 14, scope: !2572)
!2574 = !DILocation(line: 370, column: 19, scope: !2572)
!2575 = !DILocation(line: 371, column: 40, scope: !2567)
!2576 = !DILocation(line: 371, column: 7, scope: !2567)
!2577 = !DILocation(line: 372, column: 22, scope: !2567)
!2578 = !DILocation(line: 372, column: 13, scope: !2567)
!2579 = !DILocation(line: 372, column: 11, scope: !2567)
!2580 = !DILocation(line: 373, column: 30, scope: !2567)
!2581 = !DILocation(line: 374, column: 11, scope: !2582)
!2582 = distinct !DILexicalBlock(scope: !2567, file: !2, line: 374, column: 11)
!2583 = !DILocation(line: 374, column: 15, scope: !2582)
!2584 = !DILocation(line: 374, column: 23, scope: !2582)
!2585 = !DILocation(line: 375, column: 4, scope: !2567)
!2586 = !DILocation(line: 376, column: 27, scope: !2461)
!2587 = !DILocation(line: 377, column: 15, scope: !2588)
!2588 = distinct !DILexicalBlock(scope: !2461, file: !2, line: 377, column: 8)
!2589 = !DILocation(line: 377, column: 8, scope: !2588)
!2590 = !DILocation(line: 377, column: 24, scope: !2588)
!2591 = !DILocation(line: 378, column: 19, scope: !2461)
!2592 = !DILocation(line: 378, column: 10, scope: !2461)
!2593 = !DILocation(line: 378, column: 8, scope: !2461)
!2594 = !DILocation(line: 379, column: 8, scope: !2595)
!2595 = distinct !DILexicalBlock(scope: !2461, file: !2, line: 379, column: 8)
!2596 = !DILocation(line: 379, column: 12, scope: !2595)
!2597 = !DILocation(line: 379, column: 20, scope: !2595)
!2598 = !DILocation(line: 381, column: 8, scope: !2599)
!2599 = distinct !DILexicalBlock(scope: !2461, file: !2, line: 381, column: 8)
!2600 = !DILocation(line: 381, column: 18, scope: !2599)
!2601 = !DILocation(line: 382, column: 11, scope: !2602)
!2602 = distinct !DILexicalBlock(scope: !2603, file: !2, line: 382, column: 11)
!2603 = distinct !DILexicalBlock(scope: !2599, file: !2, line: 381, column: 24)
!2604 = !DILocation(line: 382, column: 26, scope: !2602)
!2605 = !DILocation(line: 382, column: 31, scope: !2602)
!2606 = !DILocation(line: 382, column: 34, scope: !2602)
!2607 = !DILocation(line: 382, column: 49, scope: !2602)
!2608 = !DILocation(line: 383, column: 13, scope: !2609)
!2609 = distinct !DILexicalBlock(scope: !2602, file: !2, line: 382, column: 55)
!2610 = !DILocation(line: 383, column: 3, scope: !2609)
!2611 = !DILocation(line: 384, column: 7, scope: !2609)
!2612 = !DILocalVariable(name: "buf_nin", scope: !2613, file: !2, line: 385, type: !2614)
!2613 = distinct !DILexicalBlock(scope: !2602, file: !2, line: 384, column: 14)
!2614 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 256, elements: !308)
!2615 = !DILocation(line: 385, column: 10, scope: !2613)
!2616 = !DILocalVariable(name: "buf_nout", scope: !2613, file: !2, line: 385, type: !2614)
!2617 = !DILocation(line: 385, column: 23, scope: !2613)
!2618 = !DILocalVariable(name: "nbytes_in", scope: !2613, file: !2, line: 386, type: !2619)
!2619 = !DIDerivedType(tag: DW_TAG_typedef, name: "UInt64", file: !2, line: 234, baseType: !2620)
!2620 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2, line: 233, size: 64, elements: !2621)
!2621 = !{!2622}
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2620, file: !2, line: 233, baseType: !2623, size: 64)
!2623 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 64, elements: !123)
!2624 = !DILocation(line: 386, column: 10, scope: !2613)
!2625 = !DILocalVariable(name: "nbytes_out", scope: !2613, file: !2, line: 386, type: !2619)
!2626 = !DILocation(line: 386, column: 23, scope: !2613)
!2627 = !DILocalVariable(name: "nbytes_in_d", scope: !2613, file: !2, line: 387, type: !59)
!2628 = !DILocation(line: 387, column: 10, scope: !2613)
!2629 = !DILocalVariable(name: "nbytes_out_d", scope: !2613, file: !2, line: 387, type: !59)
!2630 = !DILocation(line: 387, column: 23, scope: !2613)
!2631 = !DILocation(line: 389, column: 11, scope: !2613)
!2632 = !DILocation(line: 389, column: 27, scope: !2613)
!2633 = !DILocation(line: 388, column: 3, scope: !2613)
!2634 = !DILocation(line: 391, column: 11, scope: !2613)
!2635 = !DILocation(line: 391, column: 28, scope: !2613)
!2636 = !DILocation(line: 390, column: 3, scope: !2613)
!2637 = !DILocation(line: 392, column: 18, scope: !2613)
!2638 = !DILocation(line: 392, column: 16, scope: !2613)
!2639 = !DILocation(line: 393, column: 18, scope: !2613)
!2640 = !DILocation(line: 393, column: 16, scope: !2613)
!2641 = !DILocation(line: 394, column: 20, scope: !2613)
!2642 = !DILocation(line: 394, column: 3, scope: !2613)
!2643 = !DILocation(line: 395, column: 20, scope: !2613)
!2644 = !DILocation(line: 395, column: 3, scope: !2613)
!2645 = !DILocation(line: 396, column: 13, scope: !2613)
!2646 = !DILocation(line: 398, column: 6, scope: !2613)
!2647 = !DILocation(line: 398, column: 20, scope: !2613)
!2648 = !DILocation(line: 398, column: 18, scope: !2613)
!2649 = !DILocation(line: 399, column: 13, scope: !2613)
!2650 = !DILocation(line: 399, column: 11, scope: !2613)
!2651 = !DILocation(line: 399, column: 29, scope: !2613)
!2652 = !DILocation(line: 399, column: 27, scope: !2613)
!2653 = !DILocation(line: 400, column: 21, scope: !2613)
!2654 = !DILocation(line: 400, column: 36, scope: !2613)
!2655 = !DILocation(line: 400, column: 34, scope: !2613)
!2656 = !DILocation(line: 400, column: 19, scope: !2613)
!2657 = !DILocation(line: 400, column: 12, scope: !2613)
!2658 = !DILocation(line: 401, column: 6, scope: !2613)
!2659 = !DILocation(line: 402, column: 6, scope: !2613)
!2660 = !DILocation(line: 396, column: 3, scope: !2613)
!2661 = !DILocation(line: 405, column: 4, scope: !2603)
!2662 = !DILocation(line: 407, column: 4, scope: !2461)
!2663 = !DILabel(scope: !2461, name: "errhandler", file: !2, line: 409)
!2664 = !DILocation(line: 409, column: 4, scope: !2461)
!2665 = !DILocation(line: 410, column: 39, scope: !2461)
!2666 = !DILocation(line: 410, column: 4, scope: !2461)
!2667 = !DILocation(line: 413, column: 12, scope: !2461)
!2668 = !DILocation(line: 413, column: 4, scope: !2461)
!2669 = !DILocation(line: 415, column: 10, scope: !2670)
!2670 = distinct !DILexicalBlock(scope: !2461, file: !2, line: 413, column: 19)
!2671 = !DILocation(line: 417, column: 10, scope: !2670)
!2672 = !DILabel(scope: !2670, name: "errhandler_io", file: !2, line: 419)
!2673 = !DILocation(line: 419, column: 10, scope: !2670)
!2674 = !DILocation(line: 420, column: 10, scope: !2670)
!2675 = !DILocation(line: 422, column: 10, scope: !2670)
!2676 = distinct !DISubprogram(name: "applySavedTimeInfoToOutputFile", scope: !2, file: !2, line: 1050, type: !1356, scopeLine: 1051, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21, retainedNodes: !577)
!2677 = !DILocalVariable(name: "dstName", arg: 1, scope: !2676, file: !2, line: 1050, type: !42)
!2678 = !DILocation(line: 1050, column: 45, scope: !2676)
!2679 = !DILocalVariable(name: "retVal", scope: !2676, file: !2, line: 1053, type: !575)
!2680 = !DILocation(line: 1053, column: 19, scope: !2676)
!2681 = !DILocalVariable(name: "uTimBuf", scope: !2676, file: !2, line: 1054, type: !2682)
!2682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "utimbuf", file: !2683, line: 36, size: 128, elements: !2684)
!2683 = !DIFile(filename: "/usr/include/utime.h", directory: "", checksumkind: CSK_MD5, checksum: "a94ce719074475f8e6ded0e064c248b3")
!2684 = !{!2685, !2686}
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "actime", scope: !2682, file: !2683, line: 42, baseType: !449, size: 64)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "modtime", scope: !2682, file: !2683, line: 43, baseType: !449, size: 64, offset: 64)
!2687 = !DILocation(line: 1054, column: 19, scope: !2676)
!2688 = !DILocation(line: 1056, column: 34, scope: !2676)
!2689 = !DILocation(line: 1056, column: 12, scope: !2676)
!2690 = !DILocation(line: 1056, column: 19, scope: !2676)
!2691 = !DILocation(line: 1057, column: 35, scope: !2676)
!2692 = !DILocation(line: 1057, column: 12, scope: !2676)
!2693 = !DILocation(line: 1057, column: 20, scope: !2676)
!2694 = !DILocation(line: 1059, column: 21, scope: !2676)
!2695 = !DILocation(line: 1059, column: 13, scope: !2676)
!2696 = !DILocation(line: 1059, column: 11, scope: !2676)
!2697 = !DILocation(line: 1060, column: 4, scope: !2698)
!2698 = distinct !DILexicalBlock(scope: !2699, file: !2, line: 1060, column: 4)
!2699 = distinct !DILexicalBlock(scope: !2676, file: !2, line: 1060, column: 4)
!2700 = !DILocation(line: 1062, column: 1, scope: !2676)
!2701 = distinct !DISubprogram(name: "ioError", scope: !2, file: !2, line: 791, type: !1349, scopeLine: 792, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21)
!2702 = !DILocation(line: 793, column: 14, scope: !2701)
!2703 = !DILocation(line: 796, column: 14, scope: !2701)
!2704 = !DILocation(line: 793, column: 4, scope: !2701)
!2705 = !DILocation(line: 797, column: 13, scope: !2701)
!2706 = !DILocation(line: 797, column: 4, scope: !2701)
!2707 = !DILocation(line: 798, column: 4, scope: !2701)
!2708 = !DILocation(line: 799, column: 4, scope: !2701)
!2709 = distinct !DISubprogram(name: "myfeof", scope: !2, file: !2, line: 318, type: !2710, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21, retainedNodes: !577)
!2710 = !DISubroutineType(types: !2711)
!2711 = !{!40, !215}
!2712 = !DILocalVariable(name: "f", arg: 1, scope: !2709, file: !2, line: 318, type: !215)
!2713 = !DILocation(line: 318, column: 21, scope: !2709)
!2714 = !DILocalVariable(name: "c", scope: !2709, file: !2, line: 320, type: !45)
!2715 = !DILocation(line: 320, column: 10, scope: !2709)
!2716 = !DILocation(line: 320, column: 22, scope: !2709)
!2717 = !DILocation(line: 320, column: 14, scope: !2709)
!2718 = !DILocation(line: 321, column: 8, scope: !2719)
!2719 = distinct !DILexicalBlock(scope: !2709, file: !2, line: 321, column: 8)
!2720 = !DILocation(line: 321, column: 10, scope: !2719)
!2721 = !DILocation(line: 321, column: 18, scope: !2719)
!2722 = !DILocation(line: 322, column: 13, scope: !2709)
!2723 = !DILocation(line: 322, column: 16, scope: !2709)
!2724 = !DILocation(line: 322, column: 4, scope: !2709)
!2725 = !DILocation(line: 323, column: 4, scope: !2709)
!2726 = !DILocation(line: 324, column: 1, scope: !2709)
!2727 = distinct !DISubprogram(name: "applySavedFileAttrToOutputFile", scope: !2, file: !2, line: 1065, type: !1164, scopeLine: 1066, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21, retainedNodes: !577)
!2728 = !DILocalVariable(name: "fd", arg: 1, scope: !2727, file: !2, line: 1065, type: !575)
!2729 = !DILocation(line: 1065, column: 49, scope: !2727)
!2730 = !DILocalVariable(name: "retVal", scope: !2727, file: !2, line: 1068, type: !575)
!2731 = !DILocation(line: 1068, column: 14, scope: !2727)
!2732 = !DILocation(line: 1070, column: 22, scope: !2727)
!2733 = !DILocation(line: 1070, column: 39, scope: !2727)
!2734 = !DILocation(line: 1070, column: 13, scope: !2727)
!2735 = !DILocation(line: 1070, column: 11, scope: !2727)
!2736 = !DILocation(line: 1071, column: 4, scope: !2737)
!2737 = distinct !DILexicalBlock(scope: !2738, file: !2, line: 1071, column: 4)
!2738 = distinct !DILexicalBlock(scope: !2727, file: !2, line: 1071, column: 4)
!2739 = !DILocation(line: 1073, column: 20, scope: !2727)
!2740 = !DILocation(line: 1073, column: 37, scope: !2727)
!2741 = !DILocation(line: 1073, column: 58, scope: !2727)
!2742 = !DILocation(line: 1073, column: 11, scope: !2727)
!2743 = !DILocation(line: 1078, column: 1, scope: !2727)
!2744 = distinct !DISubprogram(name: "uInt64_from_UInt32s", scope: !2, file: !2, line: 238, type: !2745, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21, retainedNodes: !577)
!2745 = !DISubroutineType(types: !2746)
!2746 = !{null, !2747, !2481, !2481}
!2747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2619, size: 64)
!2748 = !DILocalVariable(name: "n", arg: 1, scope: !2744, file: !2, line: 238, type: !2747)
!2749 = !DILocation(line: 238, column: 36, scope: !2744)
!2750 = !DILocalVariable(name: "lo32", arg: 2, scope: !2744, file: !2, line: 238, type: !2481)
!2751 = !DILocation(line: 238, column: 46, scope: !2744)
!2752 = !DILocalVariable(name: "hi32", arg: 3, scope: !2744, file: !2, line: 238, type: !2481)
!2753 = !DILocation(line: 238, column: 59, scope: !2744)
!2754 = !DILocation(line: 240, column: 23, scope: !2744)
!2755 = !DILocation(line: 240, column: 28, scope: !2744)
!2756 = !DILocation(line: 240, column: 35, scope: !2744)
!2757 = !DILocation(line: 240, column: 14, scope: !2744)
!2758 = !DILocation(line: 240, column: 4, scope: !2744)
!2759 = !DILocation(line: 240, column: 7, scope: !2744)
!2760 = !DILocation(line: 240, column: 12, scope: !2744)
!2761 = !DILocation(line: 241, column: 23, scope: !2744)
!2762 = !DILocation(line: 241, column: 28, scope: !2744)
!2763 = !DILocation(line: 241, column: 35, scope: !2744)
!2764 = !DILocation(line: 241, column: 14, scope: !2744)
!2765 = !DILocation(line: 241, column: 4, scope: !2744)
!2766 = !DILocation(line: 241, column: 7, scope: !2744)
!2767 = !DILocation(line: 241, column: 12, scope: !2744)
!2768 = !DILocation(line: 242, column: 23, scope: !2744)
!2769 = !DILocation(line: 242, column: 28, scope: !2744)
!2770 = !DILocation(line: 242, column: 35, scope: !2744)
!2771 = !DILocation(line: 242, column: 14, scope: !2744)
!2772 = !DILocation(line: 242, column: 4, scope: !2744)
!2773 = !DILocation(line: 242, column: 7, scope: !2744)
!2774 = !DILocation(line: 242, column: 12, scope: !2744)
!2775 = !DILocation(line: 243, column: 23, scope: !2744)
!2776 = !DILocation(line: 243, column: 35, scope: !2744)
!2777 = !DILocation(line: 243, column: 14, scope: !2744)
!2778 = !DILocation(line: 243, column: 4, scope: !2744)
!2779 = !DILocation(line: 243, column: 7, scope: !2744)
!2780 = !DILocation(line: 243, column: 12, scope: !2744)
!2781 = !DILocation(line: 244, column: 23, scope: !2744)
!2782 = !DILocation(line: 244, column: 28, scope: !2744)
!2783 = !DILocation(line: 244, column: 35, scope: !2744)
!2784 = !DILocation(line: 244, column: 14, scope: !2744)
!2785 = !DILocation(line: 244, column: 4, scope: !2744)
!2786 = !DILocation(line: 244, column: 7, scope: !2744)
!2787 = !DILocation(line: 244, column: 12, scope: !2744)
!2788 = !DILocation(line: 245, column: 23, scope: !2744)
!2789 = !DILocation(line: 245, column: 28, scope: !2744)
!2790 = !DILocation(line: 245, column: 35, scope: !2744)
!2791 = !DILocation(line: 245, column: 14, scope: !2744)
!2792 = !DILocation(line: 245, column: 4, scope: !2744)
!2793 = !DILocation(line: 245, column: 7, scope: !2744)
!2794 = !DILocation(line: 245, column: 12, scope: !2744)
!2795 = !DILocation(line: 246, column: 23, scope: !2744)
!2796 = !DILocation(line: 246, column: 28, scope: !2744)
!2797 = !DILocation(line: 246, column: 35, scope: !2744)
!2798 = !DILocation(line: 246, column: 14, scope: !2744)
!2799 = !DILocation(line: 246, column: 4, scope: !2744)
!2800 = !DILocation(line: 246, column: 7, scope: !2744)
!2801 = !DILocation(line: 246, column: 12, scope: !2744)
!2802 = !DILocation(line: 247, column: 23, scope: !2744)
!2803 = !DILocation(line: 247, column: 35, scope: !2744)
!2804 = !DILocation(line: 247, column: 14, scope: !2744)
!2805 = !DILocation(line: 247, column: 4, scope: !2744)
!2806 = !DILocation(line: 247, column: 7, scope: !2744)
!2807 = !DILocation(line: 247, column: 12, scope: !2744)
!2808 = !DILocation(line: 248, column: 1, scope: !2744)
!2809 = distinct !DISubprogram(name: "uInt64_to_double", scope: !2, file: !2, line: 252, type: !2810, scopeLine: 253, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21, retainedNodes: !577)
!2810 = !DISubroutineType(types: !2811)
!2811 = !{!59, !2747}
!2812 = !DILocalVariable(name: "n", arg: 1, scope: !2809, file: !2, line: 252, type: !2747)
!2813 = !DILocation(line: 252, column: 35, scope: !2809)
!2814 = !DILocalVariable(name: "i", scope: !2809, file: !2, line: 254, type: !45)
!2815 = !DILocation(line: 254, column: 11, scope: !2809)
!2816 = !DILocalVariable(name: "base", scope: !2809, file: !2, line: 255, type: !59)
!2817 = !DILocation(line: 255, column: 11, scope: !2809)
!2818 = !DILocalVariable(name: "sum", scope: !2809, file: !2, line: 256, type: !59)
!2819 = !DILocation(line: 256, column: 11, scope: !2809)
!2820 = !DILocation(line: 257, column: 11, scope: !2821)
!2821 = distinct !DILexicalBlock(scope: !2809, file: !2, line: 257, column: 4)
!2822 = !DILocation(line: 257, column: 9, scope: !2821)
!2823 = !DILocation(line: 257, column: 16, scope: !2824)
!2824 = distinct !DILexicalBlock(scope: !2821, file: !2, line: 257, column: 4)
!2825 = !DILocation(line: 257, column: 18, scope: !2824)
!2826 = !DILocation(line: 257, column: 4, scope: !2821)
!2827 = !DILocation(line: 258, column: 15, scope: !2828)
!2828 = distinct !DILexicalBlock(scope: !2824, file: !2, line: 257, column: 28)
!2829 = !DILocation(line: 258, column: 31, scope: !2828)
!2830 = !DILocation(line: 258, column: 34, scope: !2828)
!2831 = !DILocation(line: 258, column: 36, scope: !2828)
!2832 = !DILocation(line: 258, column: 22, scope: !2828)
!2833 = !DILocation(line: 258, column: 12, scope: !2828)
!2834 = !DILocation(line: 259, column: 12, scope: !2828)
!2835 = !DILocation(line: 260, column: 4, scope: !2828)
!2836 = !DILocation(line: 257, column: 24, scope: !2824)
!2837 = !DILocation(line: 257, column: 4, scope: !2824)
!2838 = distinct !{!2838, !2826, !2839, !638}
!2839 = !DILocation(line: 260, column: 4, scope: !2821)
!2840 = !DILocation(line: 261, column: 11, scope: !2809)
!2841 = !DILocation(line: 261, column: 4, scope: !2809)
!2842 = distinct !DISubprogram(name: "uInt64_toAscii", scope: !2, file: !2, line: 295, type: !2843, scopeLine: 296, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21, retainedNodes: !577)
!2843 = !DISubroutineType(types: !2844)
!2844 = !{null, !223, !2747}
!2845 = !DILocalVariable(name: "outbuf", arg: 1, scope: !2842, file: !2, line: 295, type: !223)
!2846 = !DILocation(line: 295, column: 29, scope: !2842)
!2847 = !DILocalVariable(name: "n", arg: 2, scope: !2842, file: !2, line: 295, type: !2747)
!2848 = !DILocation(line: 295, column: 45, scope: !2842)
!2849 = !DILocalVariable(name: "i", scope: !2842, file: !2, line: 297, type: !45)
!2850 = !DILocation(line: 297, column: 11, scope: !2842)
!2851 = !DILocalVariable(name: "q", scope: !2842, file: !2, line: 297, type: !45)
!2852 = !DILocation(line: 297, column: 14, scope: !2842)
!2853 = !DILocalVariable(name: "buf", scope: !2842, file: !2, line: 298, type: !2854)
!2854 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 256, elements: !308)
!2855 = !DILocation(line: 298, column: 11, scope: !2842)
!2856 = !DILocalVariable(name: "nBuf", scope: !2842, file: !2, line: 299, type: !45)
!2857 = !DILocation(line: 299, column: 11, scope: !2842)
!2858 = !DILocalVariable(name: "n_copy", scope: !2842, file: !2, line: 300, type: !2619)
!2859 = !DILocation(line: 300, column: 11, scope: !2842)
!2860 = !DILocation(line: 300, column: 21, scope: !2842)
!2861 = !DILocation(line: 300, column: 20, scope: !2842)
!2862 = !DILocation(line: 301, column: 4, scope: !2842)
!2863 = !DILocation(line: 302, column: 11, scope: !2864)
!2864 = distinct !DILexicalBlock(scope: !2842, file: !2, line: 301, column: 7)
!2865 = !DILocation(line: 302, column: 9, scope: !2864)
!2866 = !DILocation(line: 303, column: 19, scope: !2864)
!2867 = !DILocation(line: 303, column: 21, scope: !2864)
!2868 = !DILocation(line: 303, column: 11, scope: !2864)
!2869 = !DILocation(line: 303, column: 7, scope: !2864)
!2870 = !DILocation(line: 303, column: 17, scope: !2864)
!2871 = !DILocation(line: 304, column: 11, scope: !2864)
!2872 = !DILocation(line: 305, column: 4, scope: !2864)
!2873 = !DILocation(line: 305, column: 14, scope: !2842)
!2874 = !DILocation(line: 305, column: 13, scope: !2842)
!2875 = distinct !{!2875, !2862, !2876, !638}
!2876 = !DILocation(line: 305, column: 36, scope: !2842)
!2877 = !DILocation(line: 306, column: 4, scope: !2842)
!2878 = !DILocation(line: 306, column: 11, scope: !2842)
!2879 = !DILocation(line: 306, column: 17, scope: !2842)
!2880 = !DILocation(line: 307, column: 11, scope: !2881)
!2881 = distinct !DILexicalBlock(scope: !2842, file: !2, line: 307, column: 4)
!2882 = !DILocation(line: 307, column: 9, scope: !2881)
!2883 = !DILocation(line: 307, column: 16, scope: !2884)
!2884 = distinct !DILexicalBlock(scope: !2881, file: !2, line: 307, column: 4)
!2885 = !DILocation(line: 307, column: 20, scope: !2884)
!2886 = !DILocation(line: 307, column: 18, scope: !2884)
!2887 = !DILocation(line: 307, column: 4, scope: !2881)
!2888 = !DILocation(line: 308, column: 23, scope: !2884)
!2889 = !DILocation(line: 308, column: 28, scope: !2884)
!2890 = !DILocation(line: 308, column: 27, scope: !2884)
!2891 = !DILocation(line: 308, column: 29, scope: !2884)
!2892 = !DILocation(line: 308, column: 19, scope: !2884)
!2893 = !DILocation(line: 308, column: 7, scope: !2884)
!2894 = !DILocation(line: 308, column: 14, scope: !2884)
!2895 = !DILocation(line: 308, column: 17, scope: !2884)
!2896 = !DILocation(line: 307, column: 27, scope: !2884)
!2897 = !DILocation(line: 307, column: 4, scope: !2884)
!2898 = distinct !{!2898, !2887, !2899, !638}
!2899 = !DILocation(line: 308, column: 31, scope: !2881)
!2900 = !DILocation(line: 309, column: 1, scope: !2842)
!2901 = distinct !DISubprogram(name: "configError", scope: !2, file: !2, line: 884, type: !1349, scopeLine: 885, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21)
!2902 = !DILocation(line: 886, column: 14, scope: !2901)
!2903 = !DILocation(line: 886, column: 4, scope: !2901)
!2904 = !DILocation(line: 892, column: 4, scope: !2901)
!2905 = !DILocation(line: 893, column: 9, scope: !2901)
!2906 = !DILocation(line: 893, column: 4, scope: !2901)
!2907 = distinct !DISubprogram(name: "uInt64_qrm10", scope: !2, file: !2, line: 277, type: !2908, scopeLine: 278, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21, retainedNodes: !577)
!2908 = !DISubroutineType(types: !2909)
!2909 = !{!45, !2747}
!2910 = !DILocalVariable(name: "n", arg: 1, scope: !2907, file: !2, line: 277, type: !2747)
!2911 = !DILocation(line: 277, column: 30, scope: !2907)
!2912 = !DILocalVariable(name: "rem", scope: !2907, file: !2, line: 279, type: !2481)
!2913 = !DILocation(line: 279, column: 11, scope: !2907)
!2914 = !DILocalVariable(name: "tmp", scope: !2907, file: !2, line: 279, type: !2481)
!2915 = !DILocation(line: 279, column: 16, scope: !2907)
!2916 = !DILocalVariable(name: "i", scope: !2907, file: !2, line: 280, type: !45)
!2917 = !DILocation(line: 280, column: 11, scope: !2907)
!2918 = !DILocation(line: 281, column: 8, scope: !2907)
!2919 = !DILocation(line: 282, column: 11, scope: !2920)
!2920 = distinct !DILexicalBlock(scope: !2907, file: !2, line: 282, column: 4)
!2921 = !DILocation(line: 282, column: 9, scope: !2920)
!2922 = !DILocation(line: 282, column: 16, scope: !2923)
!2923 = distinct !DILexicalBlock(scope: !2920, file: !2, line: 282, column: 4)
!2924 = !DILocation(line: 282, column: 18, scope: !2923)
!2925 = !DILocation(line: 282, column: 4, scope: !2920)
!2926 = !DILocation(line: 283, column: 13, scope: !2927)
!2927 = distinct !DILexicalBlock(scope: !2923, file: !2, line: 282, column: 29)
!2928 = !DILocation(line: 283, column: 17, scope: !2927)
!2929 = !DILocation(line: 283, column: 25, scope: !2927)
!2930 = !DILocation(line: 283, column: 28, scope: !2927)
!2931 = !DILocation(line: 283, column: 30, scope: !2927)
!2932 = !DILocation(line: 283, column: 23, scope: !2927)
!2933 = !DILocation(line: 283, column: 11, scope: !2927)
!2934 = !DILocation(line: 284, column: 17, scope: !2927)
!2935 = !DILocation(line: 284, column: 21, scope: !2927)
!2936 = !DILocation(line: 284, column: 7, scope: !2927)
!2937 = !DILocation(line: 284, column: 10, scope: !2927)
!2938 = !DILocation(line: 284, column: 12, scope: !2927)
!2939 = !DILocation(line: 284, column: 15, scope: !2927)
!2940 = !DILocation(line: 285, column: 13, scope: !2927)
!2941 = !DILocation(line: 285, column: 17, scope: !2927)
!2942 = !DILocation(line: 285, column: 11, scope: !2927)
!2943 = !DILocation(line: 286, column: 4, scope: !2927)
!2944 = !DILocation(line: 282, column: 25, scope: !2923)
!2945 = !DILocation(line: 282, column: 4, scope: !2923)
!2946 = distinct !{!2946, !2925, !2947, !638}
!2947 = !DILocation(line: 286, column: 4, scope: !2920)
!2948 = !DILocation(line: 287, column: 11, scope: !2907)
!2949 = !DILocation(line: 287, column: 4, scope: !2907)
!2950 = distinct !DISubprogram(name: "uInt64_isZero", scope: !2, file: !2, line: 266, type: !2951, scopeLine: 267, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21, retainedNodes: !577)
!2951 = !DISubroutineType(types: !2952)
!2952 = !{!40, !2747}
!2953 = !DILocalVariable(name: "n", arg: 1, scope: !2950, file: !2, line: 266, type: !2747)
!2954 = !DILocation(line: 266, column: 30, scope: !2950)
!2955 = !DILocalVariable(name: "i", scope: !2950, file: !2, line: 268, type: !45)
!2956 = !DILocation(line: 268, column: 10, scope: !2950)
!2957 = !DILocation(line: 269, column: 11, scope: !2958)
!2958 = distinct !DILexicalBlock(scope: !2950, file: !2, line: 269, column: 4)
!2959 = !DILocation(line: 269, column: 9, scope: !2958)
!2960 = !DILocation(line: 269, column: 16, scope: !2961)
!2961 = distinct !DILexicalBlock(scope: !2958, file: !2, line: 269, column: 4)
!2962 = !DILocation(line: 269, column: 18, scope: !2961)
!2963 = !DILocation(line: 269, column: 4, scope: !2958)
!2964 = !DILocation(line: 270, column: 11, scope: !2965)
!2965 = distinct !DILexicalBlock(scope: !2961, file: !2, line: 270, column: 11)
!2966 = !DILocation(line: 270, column: 14, scope: !2965)
!2967 = !DILocation(line: 270, column: 16, scope: !2965)
!2968 = !DILocation(line: 270, column: 19, scope: !2965)
!2969 = !DILocation(line: 270, column: 25, scope: !2965)
!2970 = !DILocation(line: 270, column: 22, scope: !2965)
!2971 = !DILocation(line: 269, column: 24, scope: !2961)
!2972 = !DILocation(line: 269, column: 4, scope: !2961)
!2973 = distinct !{!2973, !2963, !2974, !638}
!2974 = !DILocation(line: 270, column: 32, scope: !2958)
!2975 = !DILocation(line: 271, column: 4, scope: !2950)
!2976 = !DILocation(line: 272, column: 1, scope: !2950)
!2977 = distinct !DISubprogram(name: "mapSuffix", scope: !2, file: !2, line: 1120, type: !2978, scopeLine: 1123, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21, retainedNodes: !577)
!2978 = !DISubroutineType(types: !2979)
!2979 = !{!40, !42, !72, !72}
!2980 = !DILocalVariable(name: "name", arg: 1, scope: !2977, file: !2, line: 1120, type: !42)
!2981 = !DILocation(line: 1120, column: 24, scope: !2977)
!2982 = !DILocalVariable(name: "oldSuffix", arg: 2, scope: !2977, file: !2, line: 1121, type: !72)
!2983 = !DILocation(line: 1121, column: 30, scope: !2977)
!2984 = !DILocalVariable(name: "newSuffix", arg: 3, scope: !2977, file: !2, line: 1122, type: !72)
!2985 = !DILocation(line: 1122, column: 30, scope: !2977)
!2986 = !DILocation(line: 1124, column: 19, scope: !2987)
!2987 = distinct !DILexicalBlock(scope: !2977, file: !2, line: 1124, column: 8)
!2988 = !DILocation(line: 1124, column: 24, scope: !2987)
!2989 = !DILocation(line: 1124, column: 9, scope: !2987)
!2990 = !DILocation(line: 1124, column: 8, scope: !2987)
!2991 = !DILocation(line: 1124, column: 36, scope: !2987)
!2992 = !DILocation(line: 1125, column: 4, scope: !2977)
!2993 = !DILocation(line: 1125, column: 16, scope: !2977)
!2994 = !DILocation(line: 1125, column: 9, scope: !2977)
!2995 = !DILocation(line: 1125, column: 29, scope: !2977)
!2996 = !DILocation(line: 1125, column: 22, scope: !2977)
!2997 = !DILocation(line: 1125, column: 21, scope: !2977)
!2998 = !DILocation(line: 1125, column: 41, scope: !2977)
!2999 = !DILocation(line: 1126, column: 13, scope: !2977)
!3000 = !DILocation(line: 1126, column: 19, scope: !2977)
!3001 = !DILocation(line: 1126, column: 4, scope: !2977)
!3002 = !DILocation(line: 1127, column: 4, scope: !2977)
!3003 = !DILocation(line: 1128, column: 1, scope: !2977)
!3004 = distinct !DISubprogram(name: "uncompressStream", scope: !2, file: !2, line: 433, type: !3005, scopeLine: 434, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21, retainedNodes: !577)
!3005 = !DISubroutineType(types: !3006)
!3006 = !{!40, !215, !215}
!3007 = !DILocalVariable(name: "zStream", arg: 1, scope: !3004, file: !2, line: 433, type: !215)
!3008 = !DILocation(line: 433, column: 31, scope: !3004)
!3009 = !DILocalVariable(name: "stream", arg: 2, scope: !3004, file: !2, line: 433, type: !215)
!3010 = !DILocation(line: 433, column: 46, scope: !3004)
!3011 = !DILocalVariable(name: "bzf", scope: !3004, file: !2, line: 435, type: !2469)
!3012 = !DILocation(line: 435, column: 12, scope: !3004)
!3013 = !DILocalVariable(name: "bzerr", scope: !3004, file: !2, line: 436, type: !45)
!3014 = !DILocation(line: 436, column: 12, scope: !3004)
!3015 = !DILocalVariable(name: "bzerr_dummy", scope: !3004, file: !2, line: 436, type: !45)
!3016 = !DILocation(line: 436, column: 19, scope: !3004)
!3017 = !DILocalVariable(name: "ret", scope: !3004, file: !2, line: 436, type: !45)
!3018 = !DILocation(line: 436, column: 32, scope: !3004)
!3019 = !DILocalVariable(name: "nread", scope: !3004, file: !2, line: 436, type: !45)
!3020 = !DILocation(line: 436, column: 37, scope: !3004)
!3021 = !DILocalVariable(name: "streamNo", scope: !3004, file: !2, line: 436, type: !45)
!3022 = !DILocation(line: 436, column: 44, scope: !3004)
!3023 = !DILocalVariable(name: "i", scope: !3004, file: !2, line: 436, type: !45)
!3024 = !DILocation(line: 436, column: 54, scope: !3004)
!3025 = !DILocalVariable(name: "obuf", scope: !3004, file: !2, line: 437, type: !2474)
!3026 = !DILocation(line: 437, column: 12, scope: !3004)
!3027 = !DILocalVariable(name: "unused", scope: !3004, file: !2, line: 438, type: !2474)
!3028 = !DILocation(line: 438, column: 12, scope: !3004)
!3029 = !DILocalVariable(name: "nUnused", scope: !3004, file: !2, line: 439, type: !45)
!3030 = !DILocation(line: 439, column: 12, scope: !3004)
!3031 = !DILocalVariable(name: "unusedTmpV", scope: !3004, file: !2, line: 440, type: !44)
!3032 = !DILocation(line: 440, column: 12, scope: !3004)
!3033 = !DILocalVariable(name: "unusedTmp", scope: !3004, file: !2, line: 441, type: !60)
!3034 = !DILocation(line: 441, column: 12, scope: !3004)
!3035 = !DILocation(line: 443, column: 12, scope: !3004)
!3036 = !DILocation(line: 444, column: 13, scope: !3004)
!3037 = !DILocation(line: 449, column: 15, scope: !3038)
!3038 = distinct !DILexicalBlock(scope: !3004, file: !2, line: 449, column: 8)
!3039 = !DILocation(line: 449, column: 8, scope: !3038)
!3040 = !DILocation(line: 449, column: 24, scope: !3038)
!3041 = !DILocation(line: 450, column: 15, scope: !3042)
!3042 = distinct !DILexicalBlock(scope: !3004, file: !2, line: 450, column: 8)
!3043 = !DILocation(line: 450, column: 8, scope: !3042)
!3044 = !DILocation(line: 450, column: 25, scope: !3042)
!3045 = !DILocation(line: 452, column: 4, scope: !3004)
!3046 = !DILocation(line: 455, column: 24, scope: !3047)
!3047 = distinct !DILexicalBlock(scope: !3004, file: !2, line: 452, column: 17)
!3048 = !DILocation(line: 455, column: 33, scope: !3047)
!3049 = !DILocation(line: 456, column: 21, scope: !3047)
!3050 = !DILocation(line: 456, column: 16, scope: !3047)
!3051 = !DILocation(line: 456, column: 32, scope: !3047)
!3052 = !DILocation(line: 456, column: 40, scope: !3047)
!3053 = !DILocation(line: 454, column: 13, scope: !3047)
!3054 = !DILocation(line: 454, column: 11, scope: !3047)
!3055 = !DILocation(line: 458, column: 11, scope: !3056)
!3056 = distinct !DILexicalBlock(scope: !3047, file: !2, line: 458, column: 11)
!3057 = !DILocation(line: 458, column: 15, scope: !3056)
!3058 = !DILocation(line: 458, column: 23, scope: !3056)
!3059 = !DILocation(line: 458, column: 26, scope: !3056)
!3060 = !DILocation(line: 458, column: 32, scope: !3056)
!3061 = !DILocation(line: 458, column: 42, scope: !3056)
!3062 = !DILocation(line: 459, column: 15, scope: !3047)
!3063 = !DILocation(line: 461, column: 7, scope: !3047)
!3064 = !DILocation(line: 461, column: 14, scope: !3047)
!3065 = !DILocation(line: 461, column: 20, scope: !3047)
!3066 = !DILocation(line: 462, column: 39, scope: !3067)
!3067 = distinct !DILexicalBlock(scope: !3047, file: !2, line: 461, column: 30)
!3068 = !DILocation(line: 462, column: 44, scope: !3067)
!3069 = !DILocation(line: 462, column: 18, scope: !3067)
!3070 = !DILocation(line: 462, column: 16, scope: !3067)
!3071 = !DILocation(line: 463, column: 14, scope: !3072)
!3072 = distinct !DILexicalBlock(scope: !3067, file: !2, line: 463, column: 14)
!3073 = !DILocation(line: 463, column: 20, scope: !3072)
!3074 = !DILocation(line: 463, column: 44, scope: !3072)
!3075 = !DILocation(line: 464, column: 15, scope: !3076)
!3076 = distinct !DILexicalBlock(scope: !3067, file: !2, line: 464, column: 14)
!3077 = !DILocation(line: 464, column: 21, scope: !3076)
!3078 = !DILocation(line: 464, column: 30, scope: !3076)
!3079 = !DILocation(line: 464, column: 33, scope: !3076)
!3080 = !DILocation(line: 464, column: 39, scope: !3076)
!3081 = !DILocation(line: 464, column: 57, scope: !3076)
!3082 = !DILocation(line: 464, column: 60, scope: !3076)
!3083 = !DILocation(line: 464, column: 66, scope: !3076)
!3084 = !DILocation(line: 465, column: 22, scope: !3076)
!3085 = !DILocation(line: 465, column: 43, scope: !3076)
!3086 = !DILocation(line: 465, column: 50, scope: !3076)
!3087 = !DILocation(line: 465, column: 13, scope: !3076)
!3088 = !DILocation(line: 466, column: 21, scope: !3089)
!3089 = distinct !DILexicalBlock(scope: !3067, file: !2, line: 466, column: 14)
!3090 = !DILocation(line: 466, column: 14, scope: !3089)
!3091 = !DILocation(line: 466, column: 30, scope: !3089)
!3092 = distinct !{!3092, !3063, !3093, !638}
!3093 = !DILocation(line: 467, column: 7, scope: !3047)
!3094 = !DILocation(line: 468, column: 11, scope: !3095)
!3095 = distinct !DILexicalBlock(scope: !3047, file: !2, line: 468, column: 11)
!3096 = !DILocation(line: 468, column: 17, scope: !3095)
!3097 = !DILocation(line: 468, column: 35, scope: !3095)
!3098 = !DILocation(line: 470, column: 37, scope: !3047)
!3099 = !DILocation(line: 470, column: 7, scope: !3047)
!3100 = !DILocation(line: 471, column: 11, scope: !3101)
!3101 = distinct !DILexicalBlock(scope: !3047, file: !2, line: 471, column: 11)
!3102 = !DILocation(line: 471, column: 17, scope: !3101)
!3103 = !DILocation(line: 471, column: 27, scope: !3101)
!3104 = !DILocation(line: 473, column: 27, scope: !3047)
!3105 = !DILocation(line: 473, column: 17, scope: !3047)
!3106 = !DILocation(line: 474, column: 14, scope: !3107)
!3107 = distinct !DILexicalBlock(scope: !3047, file: !2, line: 474, column: 7)
!3108 = !DILocation(line: 474, column: 12, scope: !3107)
!3109 = !DILocation(line: 474, column: 19, scope: !3110)
!3110 = distinct !DILexicalBlock(scope: !3107, file: !2, line: 474, column: 7)
!3111 = !DILocation(line: 474, column: 23, scope: !3110)
!3112 = !DILocation(line: 474, column: 21, scope: !3110)
!3113 = !DILocation(line: 474, column: 7, scope: !3107)
!3114 = !DILocation(line: 474, column: 49, scope: !3110)
!3115 = !DILocation(line: 474, column: 59, scope: !3110)
!3116 = !DILocation(line: 474, column: 44, scope: !3110)
!3117 = !DILocation(line: 474, column: 37, scope: !3110)
!3118 = !DILocation(line: 474, column: 47, scope: !3110)
!3119 = !DILocation(line: 474, column: 33, scope: !3110)
!3120 = !DILocation(line: 474, column: 7, scope: !3110)
!3121 = distinct !{!3121, !3113, !3122, !638}
!3122 = !DILocation(line: 474, column: 60, scope: !3107)
!3123 = !DILocation(line: 476, column: 33, scope: !3047)
!3124 = !DILocation(line: 476, column: 7, scope: !3047)
!3125 = !DILocation(line: 477, column: 11, scope: !3126)
!3126 = distinct !DILexicalBlock(scope: !3047, file: !2, line: 477, column: 11)
!3127 = !DILocation(line: 477, column: 17, scope: !3126)
!3128 = !DILocation(line: 477, column: 27, scope: !3126)
!3129 = !DILocation(line: 479, column: 11, scope: !3130)
!3130 = distinct !DILexicalBlock(scope: !3047, file: !2, line: 479, column: 11)
!3131 = !DILocation(line: 479, column: 19, scope: !3130)
!3132 = !DILocation(line: 479, column: 24, scope: !3130)
!3133 = !DILocation(line: 479, column: 34, scope: !3130)
!3134 = !DILocation(line: 479, column: 27, scope: !3130)
!3135 = !DILocation(line: 479, column: 44, scope: !3130)
!3136 = distinct !{!3136, !3045, !3137}
!3137 = !DILocation(line: 480, column: 4, scope: !3004)
!3138 = !DILabel(scope: !3004, name: "closeok", file: !2, line: 482)
!3139 = !DILocation(line: 482, column: 4, scope: !3004)
!3140 = !DILocation(line: 483, column: 15, scope: !3141)
!3141 = distinct !DILexicalBlock(scope: !3004, file: !2, line: 483, column: 8)
!3142 = !DILocation(line: 483, column: 8, scope: !3141)
!3143 = !DILocation(line: 483, column: 25, scope: !3141)
!3144 = !DILocation(line: 484, column: 8, scope: !3145)
!3145 = distinct !DILexicalBlock(scope: !3004, file: !2, line: 484, column: 8)
!3146 = !DILocation(line: 484, column: 18, scope: !3145)
!3147 = !DILocation(line: 484, column: 15, scope: !3145)
!3148 = !DILocalVariable(name: "fd", scope: !3149, file: !2, line: 485, type: !45)
!3149 = distinct !DILexicalBlock(scope: !3145, file: !2, line: 484, column: 26)
!3150 = !DILocation(line: 485, column: 13, scope: !3149)
!3151 = !DILocation(line: 485, column: 27, scope: !3149)
!3152 = !DILocation(line: 485, column: 18, scope: !3149)
!3153 = !DILocation(line: 486, column: 11, scope: !3154)
!3154 = distinct !DILexicalBlock(scope: !3149, file: !2, line: 486, column: 11)
!3155 = !DILocation(line: 486, column: 14, scope: !3154)
!3156 = !DILocation(line: 486, column: 19, scope: !3154)
!3157 = !DILocation(line: 487, column: 40, scope: !3149)
!3158 = !DILocation(line: 487, column: 7, scope: !3149)
!3159 = !DILocation(line: 488, column: 4, scope: !3149)
!3160 = !DILocation(line: 489, column: 19, scope: !3004)
!3161 = !DILocation(line: 489, column: 10, scope: !3004)
!3162 = !DILocation(line: 489, column: 8, scope: !3004)
!3163 = !DILocation(line: 490, column: 8, scope: !3164)
!3164 = distinct !DILexicalBlock(scope: !3004, file: !2, line: 490, column: 8)
!3165 = !DILocation(line: 490, column: 12, scope: !3164)
!3166 = !DILocation(line: 490, column: 20, scope: !3164)
!3167 = !DILocation(line: 492, column: 15, scope: !3168)
!3168 = distinct !DILexicalBlock(scope: !3004, file: !2, line: 492, column: 8)
!3169 = !DILocation(line: 492, column: 8, scope: !3168)
!3170 = !DILocation(line: 492, column: 24, scope: !3168)
!3171 = !DILocation(line: 493, column: 19, scope: !3004)
!3172 = !DILocation(line: 493, column: 10, scope: !3004)
!3173 = !DILocation(line: 493, column: 8, scope: !3004)
!3174 = !DILocation(line: 494, column: 8, scope: !3175)
!3175 = distinct !DILexicalBlock(scope: !3004, file: !2, line: 494, column: 8)
!3176 = !DILocation(line: 494, column: 12, scope: !3175)
!3177 = !DILocation(line: 494, column: 18, scope: !3175)
!3178 = !DILocation(line: 495, column: 8, scope: !3179)
!3179 = distinct !DILexicalBlock(scope: !3004, file: !2, line: 495, column: 8)
!3180 = !DILocation(line: 495, column: 18, scope: !3179)
!3181 = !DILocation(line: 495, column: 15, scope: !3179)
!3182 = !DILocation(line: 496, column: 22, scope: !3183)
!3183 = distinct !DILexicalBlock(scope: !3179, file: !2, line: 495, column: 26)
!3184 = !DILocation(line: 496, column: 13, scope: !3183)
!3185 = !DILocation(line: 496, column: 11, scope: !3183)
!3186 = !DILocation(line: 497, column: 30, scope: !3183)
!3187 = !DILocation(line: 498, column: 11, scope: !3188)
!3188 = distinct !DILexicalBlock(scope: !3183, file: !2, line: 498, column: 11)
!3189 = !DILocation(line: 498, column: 15, scope: !3188)
!3190 = !DILocation(line: 498, column: 23, scope: !3188)
!3191 = !DILocation(line: 499, column: 4, scope: !3183)
!3192 = !DILocation(line: 500, column: 27, scope: !3004)
!3193 = !DILocation(line: 501, column: 8, scope: !3194)
!3194 = distinct !DILexicalBlock(scope: !3004, file: !2, line: 501, column: 8)
!3195 = !DILocation(line: 501, column: 18, scope: !3194)
!3196 = !DILocation(line: 501, column: 34, scope: !3194)
!3197 = !DILocation(line: 501, column: 24, scope: !3194)
!3198 = !DILocation(line: 502, column: 4, scope: !3004)
!3199 = !DILabel(scope: !3004, name: "trycat", file: !2, line: 504)
!3200 = !DILocation(line: 504, column: 4, scope: !3004)
!3201 = !DILocation(line: 505, column: 8, scope: !3202)
!3202 = distinct !DILexicalBlock(scope: !3004, file: !2, line: 505, column: 8)
!3203 = !DILocation(line: 506, column: 14, scope: !3204)
!3204 = distinct !DILexicalBlock(scope: !3202, file: !2, line: 505, column: 24)
!3205 = !DILocation(line: 506, column: 7, scope: !3204)
!3206 = !DILocation(line: 507, column: 7, scope: !3204)
!3207 = !DILocation(line: 508, column: 20, scope: !3208)
!3208 = distinct !DILexicalBlock(scope: !3209, file: !2, line: 508, column: 13)
!3209 = distinct !DILexicalBlock(scope: !3204, file: !2, line: 507, column: 20)
!3210 = !DILocation(line: 508, column: 13, scope: !3208)
!3211 = !DILocation(line: 508, column: 30, scope: !3208)
!3212 = !DILocation(line: 509, column: 25, scope: !3209)
!3213 = !DILocation(line: 509, column: 52, scope: !3209)
!3214 = !DILocation(line: 509, column: 17, scope: !3209)
!3215 = !DILocation(line: 509, column: 15, scope: !3209)
!3216 = !DILocation(line: 510, column: 20, scope: !3217)
!3217 = distinct !DILexicalBlock(scope: !3209, file: !2, line: 510, column: 13)
!3218 = !DILocation(line: 510, column: 13, scope: !3217)
!3219 = !DILocation(line: 510, column: 30, scope: !3217)
!3220 = !DILocation(line: 511, column: 13, scope: !3221)
!3221 = distinct !DILexicalBlock(scope: !3209, file: !2, line: 511, column: 13)
!3222 = !DILocation(line: 511, column: 19, scope: !3221)
!3223 = !DILocation(line: 511, column: 33, scope: !3221)
!3224 = !DILocation(line: 511, column: 54, scope: !3221)
!3225 = !DILocation(line: 511, column: 61, scope: !3221)
!3226 = !DILocation(line: 511, column: 24, scope: !3221)
!3227 = !DILocation(line: 512, column: 20, scope: !3228)
!3228 = distinct !DILexicalBlock(scope: !3209, file: !2, line: 512, column: 13)
!3229 = !DILocation(line: 512, column: 13, scope: !3228)
!3230 = !DILocation(line: 512, column: 29, scope: !3228)
!3231 = distinct !{!3231, !3206, !3232}
!3232 = !DILocation(line: 513, column: 7, scope: !3204)
!3233 = !DILocation(line: 514, column: 7, scope: !3204)
!3234 = !DILabel(scope: !3004, name: "errhandler", file: !2, line: 517)
!3235 = !DILocation(line: 517, column: 4, scope: !3004)
!3236 = !DILocation(line: 518, column: 36, scope: !3004)
!3237 = !DILocation(line: 518, column: 4, scope: !3004)
!3238 = !DILocation(line: 519, column: 12, scope: !3004)
!3239 = !DILocation(line: 519, column: 4, scope: !3004)
!3240 = !DILocation(line: 521, column: 10, scope: !3241)
!3241 = distinct !DILexicalBlock(scope: !3004, file: !2, line: 519, column: 19)
!3242 = !DILabel(scope: !3241, name: "errhandler_io", file: !2, line: 523)
!3243 = !DILocation(line: 523, column: 10, scope: !3241)
!3244 = !DILocation(line: 524, column: 10, scope: !3241)
!3245 = !DILocation(line: 526, column: 10, scope: !3241)
!3246 = !DILocation(line: 528, column: 10, scope: !3241)
!3247 = !DILocation(line: 530, column: 10, scope: !3241)
!3248 = !DILocation(line: 532, column: 14, scope: !3249)
!3249 = distinct !DILexicalBlock(scope: !3241, file: !2, line: 532, column: 14)
!3250 = !DILocation(line: 532, column: 25, scope: !3249)
!3251 = !DILocation(line: 532, column: 22, scope: !3249)
!3252 = !DILocation(line: 532, column: 39, scope: !3249)
!3253 = !DILocation(line: 532, column: 32, scope: !3249)
!3254 = !DILocation(line: 533, column: 14, scope: !3255)
!3255 = distinct !DILexicalBlock(scope: !3241, file: !2, line: 533, column: 14)
!3256 = !DILocation(line: 533, column: 24, scope: !3255)
!3257 = !DILocation(line: 533, column: 21, scope: !3255)
!3258 = !DILocation(line: 533, column: 39, scope: !3255)
!3259 = !DILocation(line: 533, column: 32, scope: !3255)
!3260 = !DILocation(line: 534, column: 14, scope: !3261)
!3261 = distinct !DILexicalBlock(scope: !3241, file: !2, line: 534, column: 14)
!3262 = !DILocation(line: 534, column: 23, scope: !3261)
!3263 = !DILocation(line: 535, column: 13, scope: !3264)
!3264 = distinct !DILexicalBlock(scope: !3261, file: !2, line: 534, column: 29)
!3265 = !DILocation(line: 537, column: 17, scope: !3266)
!3266 = distinct !DILexicalBlock(scope: !3267, file: !2, line: 537, column: 17)
!3267 = distinct !DILexicalBlock(scope: !3261, file: !2, line: 536, column: 17)
!3268 = !DILocation(line: 538, column: 23, scope: !3266)
!3269 = !DILocation(line: 540, column: 23, scope: !3266)
!3270 = !DILocation(line: 538, column: 13, scope: !3266)
!3271 = !DILocation(line: 541, column: 13, scope: !3267)
!3272 = !DILocation(line: 544, column: 10, scope: !3241)
!3273 = !DILocation(line: 549, column: 1, scope: !3004)
!3274 = distinct !DISubprogram(name: "crcError", scope: !2, file: !2, line: 761, type: !1349, scopeLine: 762, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21)
!3275 = !DILocation(line: 763, column: 14, scope: !3274)
!3276 = !DILocation(line: 765, column: 14, scope: !3274)
!3277 = !DILocation(line: 763, column: 4, scope: !3274)
!3278 = !DILocation(line: 766, column: 4, scope: !3274)
!3279 = !DILocation(line: 767, column: 4, scope: !3274)
!3280 = !DILocation(line: 768, column: 4, scope: !3274)
!3281 = distinct !DISubprogram(name: "compressedStreamEOF", scope: !2, file: !2, line: 774, type: !1349, scopeLine: 775, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21)
!3282 = !DILocation(line: 776, column: 7, scope: !3283)
!3283 = distinct !DILexicalBlock(scope: !3281, file: !2, line: 776, column: 7)
!3284 = !DILocation(line: 777, column: 15, scope: !3285)
!3285 = distinct !DILexicalBlock(scope: !3283, file: !2, line: 776, column: 14)
!3286 = !DILocation(line: 780, column: 8, scope: !3285)
!3287 = !DILocation(line: 777, column: 5, scope: !3285)
!3288 = !DILocation(line: 781, column: 14, scope: !3285)
!3289 = !DILocation(line: 781, column: 5, scope: !3285)
!3290 = !DILocation(line: 782, column: 5, scope: !3285)
!3291 = !DILocation(line: 783, column: 5, scope: !3285)
!3292 = !DILocation(line: 784, column: 3, scope: !3285)
!3293 = !DILocation(line: 785, column: 3, scope: !3281)
!3294 = distinct !DISubprogram(name: "testStream", scope: !2, file: !2, line: 554, type: !2710, scopeLine: 555, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !21, retainedNodes: !577)
!3295 = !DILocalVariable(name: "zStream", arg: 1, scope: !3294, file: !2, line: 554, type: !215)
!3296 = !DILocation(line: 554, column: 25, scope: !3294)
!3297 = !DILocalVariable(name: "bzf", scope: !3294, file: !2, line: 556, type: !2469)
!3298 = !DILocation(line: 556, column: 12, scope: !3294)
!3299 = !DILocalVariable(name: "bzerr", scope: !3294, file: !2, line: 557, type: !45)
!3300 = !DILocation(line: 557, column: 12, scope: !3294)
!3301 = !DILocalVariable(name: "bzerr_dummy", scope: !3294, file: !2, line: 557, type: !45)
!3302 = !DILocation(line: 557, column: 19, scope: !3294)
!3303 = !DILocalVariable(name: "ret", scope: !3294, file: !2, line: 557, type: !45)
!3304 = !DILocation(line: 557, column: 32, scope: !3294)
!3305 = !DILocalVariable(name: "nread", scope: !3294, file: !2, line: 557, type: !45)
!3306 = !DILocation(line: 557, column: 37, scope: !3294)
!3307 = !DILocalVariable(name: "streamNo", scope: !3294, file: !2, line: 557, type: !45)
!3308 = !DILocation(line: 557, column: 44, scope: !3294)
!3309 = !DILocalVariable(name: "i", scope: !3294, file: !2, line: 557, type: !45)
!3310 = !DILocation(line: 557, column: 54, scope: !3294)
!3311 = !DILocalVariable(name: "obuf", scope: !3294, file: !2, line: 558, type: !2474)
!3312 = !DILocation(line: 558, column: 12, scope: !3294)
!3313 = !DILocalVariable(name: "unused", scope: !3294, file: !2, line: 559, type: !2474)
!3314 = !DILocation(line: 559, column: 12, scope: !3294)
!3315 = !DILocalVariable(name: "nUnused", scope: !3294, file: !2, line: 560, type: !45)
!3316 = !DILocation(line: 560, column: 12, scope: !3294)
!3317 = !DILocalVariable(name: "unusedTmpV", scope: !3294, file: !2, line: 561, type: !44)
!3318 = !DILocation(line: 561, column: 12, scope: !3294)
!3319 = !DILocalVariable(name: "unusedTmp", scope: !3294, file: !2, line: 562, type: !60)
!3320 = !DILocation(line: 562, column: 12, scope: !3294)
!3321 = !DILocation(line: 564, column: 12, scope: !3294)
!3322 = !DILocation(line: 565, column: 13, scope: !3294)
!3323 = !DILocation(line: 568, column: 15, scope: !3324)
!3324 = distinct !DILexicalBlock(scope: !3294, file: !2, line: 568, column: 8)
!3325 = !DILocation(line: 568, column: 8, scope: !3324)
!3326 = !DILocation(line: 568, column: 25, scope: !3324)
!3327 = !DILocation(line: 570, column: 4, scope: !3294)
!3328 = !DILocation(line: 573, column: 24, scope: !3329)
!3329 = distinct !DILexicalBlock(scope: !3294, file: !2, line: 570, column: 17)
!3330 = !DILocation(line: 573, column: 33, scope: !3329)
!3331 = !DILocation(line: 574, column: 21, scope: !3329)
!3332 = !DILocation(line: 574, column: 16, scope: !3329)
!3333 = !DILocation(line: 574, column: 32, scope: !3329)
!3334 = !DILocation(line: 574, column: 40, scope: !3329)
!3335 = !DILocation(line: 572, column: 13, scope: !3329)
!3336 = !DILocation(line: 572, column: 11, scope: !3329)
!3337 = !DILocation(line: 576, column: 11, scope: !3338)
!3338 = distinct !DILexicalBlock(scope: !3329, file: !2, line: 576, column: 11)
!3339 = !DILocation(line: 576, column: 15, scope: !3338)
!3340 = !DILocation(line: 576, column: 23, scope: !3338)
!3341 = !DILocation(line: 576, column: 26, scope: !3338)
!3342 = !DILocation(line: 576, column: 32, scope: !3338)
!3343 = !DILocation(line: 576, column: 42, scope: !3338)
!3344 = !DILocation(line: 577, column: 15, scope: !3329)
!3345 = !DILocation(line: 579, column: 7, scope: !3329)
!3346 = !DILocation(line: 579, column: 14, scope: !3329)
!3347 = !DILocation(line: 579, column: 20, scope: !3329)
!3348 = !DILocation(line: 580, column: 39, scope: !3349)
!3349 = distinct !DILexicalBlock(scope: !3329, file: !2, line: 579, column: 30)
!3350 = !DILocation(line: 580, column: 44, scope: !3349)
!3351 = !DILocation(line: 580, column: 18, scope: !3349)
!3352 = !DILocation(line: 580, column: 16, scope: !3349)
!3353 = !DILocation(line: 581, column: 14, scope: !3354)
!3354 = distinct !DILexicalBlock(scope: !3349, file: !2, line: 581, column: 14)
!3355 = !DILocation(line: 581, column: 20, scope: !3354)
!3356 = !DILocation(line: 581, column: 44, scope: !3354)
!3357 = distinct !{!3357, !3345, !3358, !638}
!3358 = !DILocation(line: 582, column: 7, scope: !3329)
!3359 = !DILocation(line: 583, column: 11, scope: !3360)
!3360 = distinct !DILexicalBlock(scope: !3329, file: !2, line: 583, column: 11)
!3361 = !DILocation(line: 583, column: 17, scope: !3360)
!3362 = !DILocation(line: 583, column: 35, scope: !3360)
!3363 = !DILocation(line: 585, column: 37, scope: !3329)
!3364 = !DILocation(line: 585, column: 7, scope: !3329)
!3365 = !DILocation(line: 586, column: 11, scope: !3366)
!3366 = distinct !DILexicalBlock(scope: !3329, file: !2, line: 586, column: 11)
!3367 = !DILocation(line: 586, column: 17, scope: !3366)
!3368 = !DILocation(line: 586, column: 27, scope: !3366)
!3369 = !DILocation(line: 588, column: 27, scope: !3329)
!3370 = !DILocation(line: 588, column: 17, scope: !3329)
!3371 = !DILocation(line: 589, column: 14, scope: !3372)
!3372 = distinct !DILexicalBlock(scope: !3329, file: !2, line: 589, column: 7)
!3373 = !DILocation(line: 589, column: 12, scope: !3372)
!3374 = !DILocation(line: 589, column: 19, scope: !3375)
!3375 = distinct !DILexicalBlock(scope: !3372, file: !2, line: 589, column: 7)
!3376 = !DILocation(line: 589, column: 23, scope: !3375)
!3377 = !DILocation(line: 589, column: 21, scope: !3375)
!3378 = !DILocation(line: 589, column: 7, scope: !3372)
!3379 = !DILocation(line: 589, column: 49, scope: !3375)
!3380 = !DILocation(line: 589, column: 59, scope: !3375)
!3381 = !DILocation(line: 589, column: 44, scope: !3375)
!3382 = !DILocation(line: 589, column: 37, scope: !3375)
!3383 = !DILocation(line: 589, column: 47, scope: !3375)
!3384 = !DILocation(line: 589, column: 33, scope: !3375)
!3385 = !DILocation(line: 589, column: 7, scope: !3375)
!3386 = distinct !{!3386, !3378, !3387, !638}
!3387 = !DILocation(line: 589, column: 60, scope: !3372)
!3388 = !DILocation(line: 591, column: 33, scope: !3329)
!3389 = !DILocation(line: 591, column: 7, scope: !3329)
!3390 = !DILocation(line: 592, column: 11, scope: !3391)
!3391 = distinct !DILexicalBlock(scope: !3329, file: !2, line: 592, column: 11)
!3392 = !DILocation(line: 592, column: 17, scope: !3391)
!3393 = !DILocation(line: 592, column: 27, scope: !3391)
!3394 = !DILocation(line: 593, column: 11, scope: !3395)
!3395 = distinct !DILexicalBlock(scope: !3329, file: !2, line: 593, column: 11)
!3396 = !DILocation(line: 593, column: 19, scope: !3395)
!3397 = !DILocation(line: 593, column: 24, scope: !3395)
!3398 = !DILocation(line: 593, column: 34, scope: !3395)
!3399 = !DILocation(line: 593, column: 27, scope: !3395)
!3400 = !DILocation(line: 593, column: 44, scope: !3395)
!3401 = distinct !{!3401, !3327, !3402}
!3402 = !DILocation(line: 595, column: 4, scope: !3294)
!3403 = !DILocation(line: 597, column: 15, scope: !3404)
!3404 = distinct !DILexicalBlock(scope: !3294, file: !2, line: 597, column: 8)
!3405 = !DILocation(line: 597, column: 8, scope: !3404)
!3406 = !DILocation(line: 597, column: 25, scope: !3404)
!3407 = !DILocation(line: 598, column: 19, scope: !3294)
!3408 = !DILocation(line: 598, column: 10, scope: !3294)
!3409 = !DILocation(line: 598, column: 8, scope: !3294)
!3410 = !DILocation(line: 599, column: 8, scope: !3411)
!3411 = distinct !DILexicalBlock(scope: !3294, file: !2, line: 599, column: 8)
!3412 = !DILocation(line: 599, column: 12, scope: !3411)
!3413 = !DILocation(line: 599, column: 20, scope: !3411)
!3414 = !DILocation(line: 601, column: 8, scope: !3415)
!3415 = distinct !DILexicalBlock(scope: !3294, file: !2, line: 601, column: 8)
!3416 = !DILocation(line: 601, column: 18, scope: !3415)
!3417 = !DILocation(line: 601, column: 34, scope: !3415)
!3418 = !DILocation(line: 601, column: 24, scope: !3415)
!3419 = !DILocation(line: 602, column: 4, scope: !3294)
!3420 = !DILabel(scope: !3294, name: "errhandler", file: !2, line: 604)
!3421 = !DILocation(line: 604, column: 4, scope: !3294)
!3422 = !DILocation(line: 605, column: 36, scope: !3294)
!3423 = !DILocation(line: 605, column: 4, scope: !3294)
!3424 = !DILocation(line: 606, column: 8, scope: !3425)
!3425 = distinct !DILexicalBlock(scope: !3294, file: !2, line: 606, column: 8)
!3426 = !DILocation(line: 606, column: 18, scope: !3425)
!3427 = !DILocation(line: 607, column: 17, scope: !3425)
!3428 = !DILocation(line: 607, column: 37, scope: !3425)
!3429 = !DILocation(line: 607, column: 7, scope: !3425)
!3430 = !DILocation(line: 608, column: 12, scope: !3294)
!3431 = !DILocation(line: 608, column: 4, scope: !3294)
!3432 = !DILocation(line: 610, column: 10, scope: !3433)
!3433 = distinct !DILexicalBlock(scope: !3294, file: !2, line: 608, column: 19)
!3434 = !DILabel(scope: !3433, name: "errhandler_io", file: !2, line: 612)
!3435 = !DILocation(line: 612, column: 10, scope: !3433)
!3436 = !DILocation(line: 613, column: 10, scope: !3433)
!3437 = !DILocation(line: 615, column: 20, scope: !3433)
!3438 = !DILocation(line: 615, column: 10, scope: !3433)
!3439 = !DILocation(line: 617, column: 10, scope: !3433)
!3440 = !DILocation(line: 619, column: 10, scope: !3433)
!3441 = !DILocation(line: 621, column: 20, scope: !3433)
!3442 = !DILocation(line: 621, column: 10, scope: !3433)
!3443 = !DILocation(line: 623, column: 10, scope: !3433)
!3444 = !DILocation(line: 625, column: 14, scope: !3445)
!3445 = distinct !DILexicalBlock(scope: !3433, file: !2, line: 625, column: 14)
!3446 = !DILocation(line: 625, column: 25, scope: !3445)
!3447 = !DILocation(line: 625, column: 22, scope: !3445)
!3448 = !DILocation(line: 625, column: 39, scope: !3445)
!3449 = !DILocation(line: 625, column: 32, scope: !3445)
!3450 = !DILocation(line: 626, column: 14, scope: !3451)
!3451 = distinct !DILexicalBlock(scope: !3433, file: !2, line: 626, column: 14)
!3452 = !DILocation(line: 626, column: 23, scope: !3451)
!3453 = !DILocation(line: 627, column: 21, scope: !3454)
!3454 = distinct !DILexicalBlock(scope: !3451, file: !2, line: 626, column: 29)
!3455 = !DILocation(line: 627, column: 11, scope: !3454)
!3456 = !DILocation(line: 629, column: 13, scope: !3454)
!3457 = !DILocation(line: 631, column: 17, scope: !3458)
!3458 = distinct !DILexicalBlock(scope: !3459, file: !2, line: 631, column: 17)
!3459 = distinct !DILexicalBlock(scope: !3451, file: !2, line: 630, column: 17)
!3460 = !DILocation(line: 632, column: 23, scope: !3458)
!3461 = !DILocation(line: 632, column: 13, scope: !3458)
!3462 = !DILocation(line: 634, column: 13, scope: !3459)
!3463 = !DILocation(line: 637, column: 10, scope: !3433)
!3464 = !DILocation(line: 642, column: 1, scope: !3294)
