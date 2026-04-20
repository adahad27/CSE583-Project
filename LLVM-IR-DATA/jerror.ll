; ModuleID = 'cBench/consumer_jpeg_c/src/jerror.c'
source_filename = "cBench/consumer_jpeg_c/src/jerror.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_common_struct = type { ptr, ptr, ptr, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"Bogus message code %d\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [57 x i8] c"Sorry, there are legal restrictions on arithmetic coding\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [32 x i8] c"ALIGN_TYPE is wrong, please fix\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [37 x i8] c"MAX_ALLOC_CHUNK is wrong, please fix\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [26 x i8] c"Bogus buffer control mode\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [31 x i8] c"Invalid component ID %d in SOS\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [40 x i8] c"IDCT output block size %d not supported\00", align 1, !dbg !32
@.str.7 = private unnamed_addr constant [23 x i8] c"Bogus input colorspace\00", align 1, !dbg !37
@.str.8 = private unnamed_addr constant [22 x i8] c"Bogus JPEG colorspace\00", align 1, !dbg !42
@.str.9 = private unnamed_addr constant [20 x i8] c"Bogus marker length\00", align 1, !dbg !44
@.str.10 = private unnamed_addr constant [61 x i8] c"Wrong JPEG library version: library is %d, caller expects %d\00", align 1, !dbg !49
@.str.11 = private unnamed_addr constant [48 x i8] c"Sampling factors too large for interleaved scan\00", align 1, !dbg !54
@.str.12 = private unnamed_addr constant [28 x i8] c"Invalid memory pool code %d\00", align 1, !dbg !59
@.str.13 = private unnamed_addr constant [35 x i8] c"Unsupported JPEG data precision %d\00", align 1, !dbg !64
@.str.14 = private unnamed_addr constant [55 x i8] c"Invalid progressive parameters Ss=%d Se=%d Ah=%d Al=%d\00", align 1, !dbg !69
@.str.15 = private unnamed_addr constant [55 x i8] c"Invalid progressive parameters at scan script entry %d\00", align 1, !dbg !74
@.str.16 = private unnamed_addr constant [23 x i8] c"Bogus sampling factors\00", align 1, !dbg !76
@.str.17 = private unnamed_addr constant [32 x i8] c"Invalid scan script at entry %d\00", align 1, !dbg !78
@.str.18 = private unnamed_addr constant [42 x i8] c"Improper call to JPEG library in state %d\00", align 1, !dbg !80
@.str.19 = private unnamed_addr constant [77 x i8] c"JPEG parameter struct mismatch: library thinks size is %u, caller expects %u\00", align 1, !dbg !85
@.str.20 = private unnamed_addr constant [27 x i8] c"Bogus virtual array access\00", align 1, !dbg !90
@.str.21 = private unnamed_addr constant [43 x i8] c"Buffer passed to JPEG library is too small\00", align 1, !dbg !95
@.str.22 = private unnamed_addr constant [28 x i8] c"Suspension not allowed here\00", align 1, !dbg !100
@.str.23 = private unnamed_addr constant [37 x i8] c"CCIR601 sampling not implemented yet\00", align 1, !dbg !102
@.str.24 = private unnamed_addr constant [38 x i8] c"Too many color components: %d, max %d\00", align 1, !dbg !104
@.str.25 = private unnamed_addr constant [37 x i8] c"Unsupported color conversion request\00", align 1, !dbg !109
@.str.26 = private unnamed_addr constant [19 x i8] c"Bogus DAC index %d\00", align 1, !dbg !111
@.str.27 = private unnamed_addr constant [21 x i8] c"Bogus DAC value 0x%x\00", align 1, !dbg !116
@.str.28 = private unnamed_addr constant [17 x i8] c"Bogus DHT counts\00", align 1, !dbg !121
@.str.29 = private unnamed_addr constant [19 x i8] c"Bogus DHT index %d\00", align 1, !dbg !126
@.str.30 = private unnamed_addr constant [19 x i8] c"Bogus DQT index %d\00", align 1, !dbg !128
@.str.31 = private unnamed_addr constant [37 x i8] c"Empty JPEG image (DNL not supported)\00", align 1, !dbg !130
@.str.32 = private unnamed_addr constant [21 x i8] c"Read from EMS failed\00", align 1, !dbg !132
@.str.33 = private unnamed_addr constant [20 x i8] c"Write to EMS failed\00", align 1, !dbg !134
@.str.34 = private unnamed_addr constant [33 x i8] c"Didn't expect more than one scan\00", align 1, !dbg !136
@.str.35 = private unnamed_addr constant [22 x i8] c"Input file read error\00", align 1, !dbg !141
@.str.36 = private unnamed_addr constant [47 x i8] c"Output file write error --- out of disk space?\00", align 1, !dbg !143
@.str.37 = private unnamed_addr constant [40 x i8] c"Fractional sampling not implemented yet\00", align 1, !dbg !148
@.str.38 = private unnamed_addr constant [33 x i8] c"Huffman code size table overflow\00", align 1, !dbg !150
@.str.39 = private unnamed_addr constant [33 x i8] c"Missing Huffman code table entry\00", align 1, !dbg !152
@.str.40 = private unnamed_addr constant [47 x i8] c"Maximum supported image dimension is %u pixels\00", align 1, !dbg !154
@.str.41 = private unnamed_addr constant [17 x i8] c"Empty input file\00", align 1, !dbg !156
@.str.42 = private unnamed_addr constant [28 x i8] c"Premature end of input file\00", align 1, !dbg !158
@.str.43 = private unnamed_addr constant [62 x i8] c"Cannot transcode due to multiple use of quantization table %d\00", align 1, !dbg !160
@.str.44 = private unnamed_addr constant [39 x i8] c"Scan script does not transmit all data\00", align 1, !dbg !165
@.str.45 = private unnamed_addr constant [39 x i8] c"Invalid color quantization mode change\00", align 1, !dbg !170
@.str.46 = private unnamed_addr constant [20 x i8] c"Not implemented yet\00", align 1, !dbg !172
@.str.47 = private unnamed_addr constant [46 x i8] c"Requested feature was omitted at compile time\00", align 1, !dbg !174
@.str.48 = private unnamed_addr constant [28 x i8] c"Backing store not supported\00", align 1, !dbg !179
@.str.49 = private unnamed_addr constant [37 x i8] c"Huffman table 0x%02x was not defined\00", align 1, !dbg !181
@.str.50 = private unnamed_addr constant [34 x i8] c"JPEG datastream contains no image\00", align 1, !dbg !183
@.str.51 = private unnamed_addr constant [42 x i8] c"Quantization table 0x%02x was not defined\00", align 1, !dbg !188
@.str.52 = private unnamed_addr constant [43 x i8] c"Not a JPEG file: starts with 0x%02x 0x%02x\00", align 1, !dbg !190
@.str.53 = private unnamed_addr constant [30 x i8] c"Insufficient memory (case %d)\00", align 1, !dbg !192
@.str.54 = private unnamed_addr constant [46 x i8] c"Cannot quantize more than %d color components\00", align 1, !dbg !197
@.str.55 = private unnamed_addr constant [40 x i8] c"Cannot quantize to fewer than %d colors\00", align 1, !dbg !199
@.str.56 = private unnamed_addr constant [39 x i8] c"Cannot quantize to more than %d colors\00", align 1, !dbg !201
@.str.57 = private unnamed_addr constant [45 x i8] c"Invalid JPEG file structure: two SOF markers\00", align 1, !dbg !203
@.str.58 = private unnamed_addr constant [48 x i8] c"Invalid JPEG file structure: missing SOS marker\00", align 1, !dbg !208
@.str.59 = private unnamed_addr constant [42 x i8] c"Unsupported JPEG process: SOF type 0x%02x\00", align 1, !dbg !210
@.str.60 = private unnamed_addr constant [45 x i8] c"Invalid JPEG file structure: two SOI markers\00", align 1, !dbg !212
@.str.61 = private unnamed_addr constant [44 x i8] c"Invalid JPEG file structure: SOS before SOF\00", align 1, !dbg !214
@.str.62 = private unnamed_addr constant [35 x i8] c"Failed to create temporary file %s\00", align 1, !dbg !219
@.str.63 = private unnamed_addr constant [30 x i8] c"Read failed on temporary file\00", align 1, !dbg !221
@.str.64 = private unnamed_addr constant [30 x i8] c"Seek failed on temporary file\00", align 1, !dbg !223
@.str.65 = private unnamed_addr constant [54 x i8] c"Write failed on temporary file --- out of disk space?\00", align 1, !dbg !225
@.str.66 = private unnamed_addr constant [42 x i8] c"Application transferred too few scanlines\00", align 1, !dbg !230
@.str.67 = private unnamed_addr constant [31 x i8] c"Unsupported marker type 0x%02x\00", align 1, !dbg !232
@.str.68 = private unnamed_addr constant [35 x i8] c"Virtual array controller messed up\00", align 1, !dbg !234
@.str.69 = private unnamed_addr constant [39 x i8] c"Image too wide for this implementation\00", align 1, !dbg !236
@.str.70 = private unnamed_addr constant [21 x i8] c"Read from XMS failed\00", align 1, !dbg !238
@.str.71 = private unnamed_addr constant [20 x i8] c"Write to XMS failed\00", align 1, !dbg !240
@.str.72 = private unnamed_addr constant [35 x i8] c"Copyright (C) 1996, Thomas G. Lane\00", align 1, !dbg !242
@.str.73 = private unnamed_addr constant [13 x i8] c"6a  7-Feb-96\00", align 1, !dbg !244
@.str.74 = private unnamed_addr constant [62 x i8] c"Caution: quantization tables are too coarse for baseline JPEG\00", align 1, !dbg !249
@.str.75 = private unnamed_addr constant [66 x i8] c"Adobe APP14 marker: version %d, flags 0x%04x 0x%04x, transform %d\00", align 1, !dbg !251
@.str.76 = private unnamed_addr constant [42 x i8] c"Unknown APP0 marker (not JFIF), length %u\00", align 1, !dbg !256
@.str.77 = private unnamed_addr constant [44 x i8] c"Unknown APP14 marker (not Adobe), length %u\00", align 1, !dbg !258
@.str.78 = private unnamed_addr constant [39 x i8] c"Define Arithmetic Table 0x%02x: 0x%02x\00", align 1, !dbg !260
@.str.79 = private unnamed_addr constant [28 x i8] c"Define Huffman Table 0x%02x\00", align 1, !dbg !262
@.str.80 = private unnamed_addr constant [43 x i8] c"Define Quantization Table %d  precision %d\00", align 1, !dbg !264
@.str.81 = private unnamed_addr constant [27 x i8] c"Define Restart Interval %u\00", align 1, !dbg !266
@.str.82 = private unnamed_addr constant [20 x i8] c"Freed EMS handle %u\00", align 1, !dbg !268
@.str.83 = private unnamed_addr constant [23 x i8] c"Obtained EMS handle %u\00", align 1, !dbg !270
@.str.84 = private unnamed_addr constant [13 x i8] c"End Of Image\00", align 1, !dbg !272
@.str.85 = private unnamed_addr constant [40 x i8] c"        %3d %3d %3d %3d %3d %3d %3d %3d\00", align 1, !dbg !274
@.str.86 = private unnamed_addr constant [36 x i8] c"JFIF APP0 marker, density %dx%d  %d\00", align 1, !dbg !276
@.str.87 = private unnamed_addr constant [60 x i8] c"Warning: thumbnail image size does not match data length %u\00", align 1, !dbg !281
@.str.88 = private unnamed_addr constant [43 x i8] c"Unknown JFIF minor revision number %d.%02d\00", align 1, !dbg !286
@.str.89 = private unnamed_addr constant [33 x i8] c"    with %d x %d thumbnail image\00", align 1, !dbg !288
@.str.90 = private unnamed_addr constant [34 x i8] c"Skipping marker 0x%02x, length %u\00", align 1, !dbg !290
@.str.91 = private unnamed_addr constant [25 x i8] c"Unexpected marker 0x%02x\00", align 1, !dbg !292
@.str.92 = private unnamed_addr constant [40 x i8] c"        %4u %4u %4u %4u %4u %4u %4u %4u\00", align 1, !dbg !297
@.str.93 = private unnamed_addr constant [35 x i8] c"Quantizing to %d = %d*%d*%d colors\00", align 1, !dbg !299
@.str.94 = private unnamed_addr constant [24 x i8] c"Quantizing to %d colors\00", align 1, !dbg !301
@.str.95 = private unnamed_addr constant [36 x i8] c"Selected %d colors for quantization\00", align 1, !dbg !306
@.str.96 = private unnamed_addr constant [37 x i8] c"At marker 0x%02x, recovery action %d\00", align 1, !dbg !308
@.str.97 = private unnamed_addr constant [6 x i8] c"RST%d\00", align 1, !dbg !310
@.str.98 = private unnamed_addr constant [57 x i8] c"Smoothing not supported with nonstandard sampling ratios\00", align 1, !dbg !315
@.str.99 = private unnamed_addr constant [58 x i8] c"Start Of Frame 0x%02x: width=%u, height=%u, components=%d\00", align 1, !dbg !317
@.str.100 = private unnamed_addr constant [31 x i8] c"    Component %d: %dhx%dv q=%d\00", align 1, !dbg !322
@.str.101 = private unnamed_addr constant [15 x i8] c"Start of Image\00", align 1, !dbg !324
@.str.102 = private unnamed_addr constant [29 x i8] c"Start Of Scan: %d components\00", align 1, !dbg !329
@.str.103 = private unnamed_addr constant [30 x i8] c"    Component %d: dc=%d ac=%d\00", align 1, !dbg !334
@.str.104 = private unnamed_addr constant [29 x i8] c"  Ss=%d, Se=%d, Ah=%d, Al=%d\00", align 1, !dbg !336
@.str.105 = private unnamed_addr constant [25 x i8] c"Closed temporary file %s\00", align 1, !dbg !338
@.str.106 = private unnamed_addr constant [25 x i8] c"Opened temporary file %s\00", align 1, !dbg !340
@.str.107 = private unnamed_addr constant [52 x i8] c"Unrecognized component IDs %d %d %d, assuming YCbCr\00", align 1, !dbg !342
@.str.108 = private unnamed_addr constant [20 x i8] c"Freed XMS handle %u\00", align 1, !dbg !347
@.str.109 = private unnamed_addr constant [23 x i8] c"Obtained XMS handle %u\00", align 1, !dbg !349
@.str.110 = private unnamed_addr constant [38 x i8] c"Unknown Adobe color transform code %d\00", align 1, !dbg !351
@.str.111 = private unnamed_addr constant [66 x i8] c"Inconsistent progression sequence for component %d coefficient %d\00", align 1, !dbg !353
@.str.112 = private unnamed_addr constant [60 x i8] c"Corrupt JPEG data: %u extraneous bytes before marker 0x%02x\00", align 1, !dbg !355
@.str.113 = private unnamed_addr constant [49 x i8] c"Corrupt JPEG data: premature end of data segment\00", align 1, !dbg !357
@.str.114 = private unnamed_addr constant [36 x i8] c"Corrupt JPEG data: bad Huffman code\00", align 1, !dbg !362
@.str.115 = private unnamed_addr constant [46 x i8] c"Warning: unknown JFIF revision number %d.%02d\00", align 1, !dbg !364
@.str.116 = private unnamed_addr constant [27 x i8] c"Premature end of JPEG file\00", align 1, !dbg !366
@.str.117 = private unnamed_addr constant [56 x i8] c"Corrupt JPEG data: found marker 0x%02x instead of RST%d\00", align 1, !dbg !368
@.str.118 = private unnamed_addr constant [43 x i8] c"Invalid SOS parameters for sequential JPEG\00", align 1, !dbg !373
@.str.119 = private unnamed_addr constant [43 x i8] c"Application transferred too many scanlines\00", align 1, !dbg !375
@jpeg_std_message_table = dso_local constant [121 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr null], align 16, !dbg !377
@stderr = external global ptr, align 8
@.str.120 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1, !dbg !510

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @jpeg_std_error(ptr noundef %0) #0 !dbg !529 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !654, !DIExpression(), !655)
  %3 = load ptr, ptr %2, align 8, !dbg !656
  %4 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %3, i32 0, i32 0, !dbg !657
  store ptr @error_exit, ptr %4, align 8, !dbg !658
  %5 = load ptr, ptr %2, align 8, !dbg !659
  %6 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %5, i32 0, i32 1, !dbg !660
  store ptr @emit_message, ptr %6, align 8, !dbg !661
  %7 = load ptr, ptr %2, align 8, !dbg !662
  %8 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %7, i32 0, i32 2, !dbg !663
  store ptr @output_message, ptr %8, align 8, !dbg !664
  %9 = load ptr, ptr %2, align 8, !dbg !665
  %10 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %9, i32 0, i32 3, !dbg !666
  store ptr @format_message, ptr %10, align 8, !dbg !667
  %11 = load ptr, ptr %2, align 8, !dbg !668
  %12 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %11, i32 0, i32 4, !dbg !669
  store ptr @reset_error_mgr, ptr %12, align 8, !dbg !670
  %13 = load ptr, ptr %2, align 8, !dbg !671
  %14 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %13, i32 0, i32 7, !dbg !672
  store i32 0, ptr %14, align 4, !dbg !673
  %15 = load ptr, ptr %2, align 8, !dbg !674
  %16 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %15, i32 0, i32 8, !dbg !675
  store i64 0, ptr %16, align 8, !dbg !676
  %17 = load ptr, ptr %2, align 8, !dbg !677
  %18 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %17, i32 0, i32 5, !dbg !678
  store i32 0, ptr %18, align 8, !dbg !679
  %19 = load ptr, ptr %2, align 8, !dbg !680
  %20 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %19, i32 0, i32 9, !dbg !681
  store ptr @jpeg_std_message_table, ptr %20, align 8, !dbg !682
  %21 = load ptr, ptr %2, align 8, !dbg !683
  %22 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %21, i32 0, i32 10, !dbg !684
  store i32 119, ptr %22, align 8, !dbg !685
  %23 = load ptr, ptr %2, align 8, !dbg !686
  %24 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %23, i32 0, i32 11, !dbg !687
  store ptr null, ptr %24, align 8, !dbg !688
  %25 = load ptr, ptr %2, align 8, !dbg !689
  %26 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %25, i32 0, i32 12, !dbg !690
  store i32 0, ptr %26, align 8, !dbg !691
  %27 = load ptr, ptr %2, align 8, !dbg !692
  %28 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %27, i32 0, i32 13, !dbg !693
  store i32 0, ptr %28, align 4, !dbg !694
  %29 = load ptr, ptr %2, align 8, !dbg !695
  ret ptr %29, !dbg !696
}

; Function Attrs: noinline nounwind uwtable
define internal void @error_exit(ptr noundef %0) #0 !dbg !697 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !698, !DIExpression(), !699)
  %3 = load ptr, ptr %2, align 8, !dbg !700
  %4 = getelementptr inbounds nuw %struct.jpeg_common_struct, ptr %3, i32 0, i32 0, !dbg !701
  %5 = load ptr, ptr %4, align 8, !dbg !701
  %6 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %5, i32 0, i32 2, !dbg !702
  %7 = load ptr, ptr %6, align 8, !dbg !702
  %8 = load ptr, ptr %2, align 8, !dbg !703
  call void %7(ptr noundef %8), !dbg !704
  %9 = load ptr, ptr %2, align 8, !dbg !705
  call void @jpeg_destroy(ptr noundef %9), !dbg !706
  call void @exit(i32 noundef 1) #4, !dbg !707
  unreachable, !dbg !707
}

; Function Attrs: noinline nounwind uwtable
define internal void @emit_message(ptr noundef %0, i32 noundef %1) #0 !dbg !708 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !709, !DIExpression(), !710)
  store i32 %1, ptr %4, align 4
    #dbg_declare(ptr %4, !711, !DIExpression(), !712)
    #dbg_declare(ptr %5, !713, !DIExpression(), !714)
  %6 = load ptr, ptr %3, align 8, !dbg !715
  %7 = getelementptr inbounds nuw %struct.jpeg_common_struct, ptr %6, i32 0, i32 0, !dbg !716
  %8 = load ptr, ptr %7, align 8, !dbg !716
  store ptr %8, ptr %5, align 8, !dbg !714
  %9 = load i32, ptr %4, align 4, !dbg !717
  %10 = icmp slt i32 %9, 0, !dbg !719
  br i1 %10, label %11, label %31, !dbg !719

11:                                               ; preds = %2
  %12 = load ptr, ptr %5, align 8, !dbg !720
  %13 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %12, i32 0, i32 8, !dbg !723
  %14 = load i64, ptr %13, align 8, !dbg !723
  %15 = icmp eq i64 %14, 0, !dbg !724
  br i1 %15, label %21, label %16, !dbg !725

16:                                               ; preds = %11
  %17 = load ptr, ptr %5, align 8, !dbg !726
  %18 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %17, i32 0, i32 7, !dbg !727
  %19 = load i32, ptr %18, align 4, !dbg !727
  %20 = icmp sge i32 %19, 3, !dbg !728
  br i1 %20, label %21, label %26, !dbg !725

21:                                               ; preds = %16, %11
  %22 = load ptr, ptr %5, align 8, !dbg !729
  %23 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %22, i32 0, i32 2, !dbg !730
  %24 = load ptr, ptr %23, align 8, !dbg !730
  %25 = load ptr, ptr %3, align 8, !dbg !731
  call void %24(ptr noundef %25), !dbg !732
  br label %26, !dbg !732

26:                                               ; preds = %21, %16
  %27 = load ptr, ptr %5, align 8, !dbg !733
  %28 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %27, i32 0, i32 8, !dbg !734
  %29 = load i64, ptr %28, align 8, !dbg !735
  %30 = add nsw i64 %29, 1, !dbg !735
  store i64 %30, ptr %28, align 8, !dbg !735
  br label %43, !dbg !736

31:                                               ; preds = %2
  %32 = load ptr, ptr %5, align 8, !dbg !737
  %33 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %32, i32 0, i32 7, !dbg !740
  %34 = load i32, ptr %33, align 4, !dbg !740
  %35 = load i32, ptr %4, align 4, !dbg !741
  %36 = icmp sge i32 %34, %35, !dbg !742
  br i1 %36, label %37, label %42, !dbg !742

37:                                               ; preds = %31
  %38 = load ptr, ptr %5, align 8, !dbg !743
  %39 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %38, i32 0, i32 2, !dbg !744
  %40 = load ptr, ptr %39, align 8, !dbg !744
  %41 = load ptr, ptr %3, align 8, !dbg !745
  call void %40(ptr noundef %41), !dbg !746
  br label %42, !dbg !746

42:                                               ; preds = %37, %31
  br label %43

43:                                               ; preds = %42, %26
  ret void, !dbg !747
}

; Function Attrs: noinline nounwind uwtable
define internal void @output_message(ptr noundef %0) #0 !dbg !748 {
  %2 = alloca ptr, align 8
  %3 = alloca [200 x i8], align 16
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !749, !DIExpression(), !750)
    #dbg_declare(ptr %3, !751, !DIExpression(), !755)
  %4 = load ptr, ptr %2, align 8, !dbg !756
  %5 = getelementptr inbounds nuw %struct.jpeg_common_struct, ptr %4, i32 0, i32 0, !dbg !757
  %6 = load ptr, ptr %5, align 8, !dbg !757
  %7 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %6, i32 0, i32 3, !dbg !758
  %8 = load ptr, ptr %7, align 8, !dbg !758
  %9 = load ptr, ptr %2, align 8, !dbg !759
  %10 = getelementptr inbounds [200 x i8], ptr %3, i64 0, i64 0, !dbg !760
  call void %8(ptr noundef %9, ptr noundef %10), !dbg !761
  %11 = load ptr, ptr @stderr, align 8, !dbg !762
  %12 = getelementptr inbounds [200 x i8], ptr %3, i64 0, i64 0, !dbg !763
  %13 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef @.str.120, ptr noundef %12) #5, !dbg !764
  ret void, !dbg !765
}

; Function Attrs: noinline nounwind uwtable
define internal void @format_message(ptr noundef %0, ptr noundef %1) #0 !dbg !766 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !767, !DIExpression(), !768)
  store ptr %1, ptr %4, align 8
    #dbg_declare(ptr %4, !769, !DIExpression(), !770)
    #dbg_declare(ptr %5, !771, !DIExpression(), !772)
  %11 = load ptr, ptr %3, align 8, !dbg !773
  %12 = getelementptr inbounds nuw %struct.jpeg_common_struct, ptr %11, i32 0, i32 0, !dbg !774
  %13 = load ptr, ptr %12, align 8, !dbg !774
  store ptr %13, ptr %5, align 8, !dbg !772
    #dbg_declare(ptr %6, !775, !DIExpression(), !776)
  %14 = load ptr, ptr %5, align 8, !dbg !777
  %15 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %14, i32 0, i32 5, !dbg !778
  %16 = load i32, ptr %15, align 8, !dbg !778
  store i32 %16, ptr %6, align 4, !dbg !776
    #dbg_declare(ptr %7, !779, !DIExpression(), !780)
  store ptr null, ptr %7, align 8, !dbg !780
    #dbg_declare(ptr %8, !781, !DIExpression(), !782)
    #dbg_declare(ptr %9, !783, !DIExpression(), !784)
    #dbg_declare(ptr %10, !785, !DIExpression(), !786)
  %17 = load i32, ptr %6, align 4, !dbg !787
  %18 = icmp sgt i32 %17, 0, !dbg !789
  br i1 %18, label %19, label %33, !dbg !790

19:                                               ; preds = %2
  %20 = load i32, ptr %6, align 4, !dbg !791
  %21 = load ptr, ptr %5, align 8, !dbg !792
  %22 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %21, i32 0, i32 10, !dbg !793
  %23 = load i32, ptr %22, align 8, !dbg !793
  %24 = icmp sle i32 %20, %23, !dbg !794
  br i1 %24, label %25, label %33, !dbg !790

25:                                               ; preds = %19
  %26 = load ptr, ptr %5, align 8, !dbg !795
  %27 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %26, i32 0, i32 9, !dbg !797
  %28 = load ptr, ptr %27, align 8, !dbg !797
  %29 = load i32, ptr %6, align 4, !dbg !798
  %30 = sext i32 %29 to i64, !dbg !795
  %31 = getelementptr inbounds ptr, ptr %28, i64 %30, !dbg !795
  %32 = load ptr, ptr %31, align 8, !dbg !795
  store ptr %32, ptr %7, align 8, !dbg !799
  br label %63, !dbg !800

33:                                               ; preds = %19, %2
  %34 = load ptr, ptr %5, align 8, !dbg !801
  %35 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %34, i32 0, i32 11, !dbg !803
  %36 = load ptr, ptr %35, align 8, !dbg !803
  %37 = icmp ne ptr %36, null, !dbg !804
  br i1 %37, label %38, label %62, !dbg !805

38:                                               ; preds = %33
  %39 = load i32, ptr %6, align 4, !dbg !806
  %40 = load ptr, ptr %5, align 8, !dbg !807
  %41 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %40, i32 0, i32 12, !dbg !808
  %42 = load i32, ptr %41, align 8, !dbg !808
  %43 = icmp sge i32 %39, %42, !dbg !809
  br i1 %43, label %44, label %62, !dbg !810

44:                                               ; preds = %38
  %45 = load i32, ptr %6, align 4, !dbg !811
  %46 = load ptr, ptr %5, align 8, !dbg !812
  %47 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %46, i32 0, i32 13, !dbg !813
  %48 = load i32, ptr %47, align 4, !dbg !813
  %49 = icmp sle i32 %45, %48, !dbg !814
  br i1 %49, label %50, label %62, !dbg !810

50:                                               ; preds = %44
  %51 = load ptr, ptr %5, align 8, !dbg !815
  %52 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %51, i32 0, i32 11, !dbg !817
  %53 = load ptr, ptr %52, align 8, !dbg !817
  %54 = load i32, ptr %6, align 4, !dbg !818
  %55 = load ptr, ptr %5, align 8, !dbg !819
  %56 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %55, i32 0, i32 12, !dbg !820
  %57 = load i32, ptr %56, align 8, !dbg !820
  %58 = sub nsw i32 %54, %57, !dbg !821
  %59 = sext i32 %58 to i64, !dbg !815
  %60 = getelementptr inbounds ptr, ptr %53, i64 %59, !dbg !815
  %61 = load ptr, ptr %60, align 8, !dbg !815
  store ptr %61, ptr %7, align 8, !dbg !822
  br label %62, !dbg !823

62:                                               ; preds = %50, %44, %38, %33
  br label %63

63:                                               ; preds = %62, %25
  %64 = load ptr, ptr %7, align 8, !dbg !824
  %65 = icmp eq ptr %64, null, !dbg !826
  br i1 %65, label %66, label %76, !dbg !826

66:                                               ; preds = %63
  %67 = load i32, ptr %6, align 4, !dbg !827
  %68 = load ptr, ptr %5, align 8, !dbg !829
  %69 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %68, i32 0, i32 6, !dbg !830
  %70 = getelementptr inbounds [8 x i32], ptr %69, i64 0, i64 0, !dbg !829
  store i32 %67, ptr %70, align 4, !dbg !831
  %71 = load ptr, ptr %5, align 8, !dbg !832
  %72 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %71, i32 0, i32 9, !dbg !833
  %73 = load ptr, ptr %72, align 8, !dbg !833
  %74 = getelementptr inbounds ptr, ptr %73, i64 0, !dbg !832
  %75 = load ptr, ptr %74, align 8, !dbg !832
  store ptr %75, ptr %7, align 8, !dbg !834
  br label %76, !dbg !835

76:                                               ; preds = %66, %63
  store i32 0, ptr %10, align 4, !dbg !836
  %77 = load ptr, ptr %7, align 8, !dbg !837
  store ptr %77, ptr %8, align 8, !dbg !838
  br label %78, !dbg !839

78:                                               ; preds = %95, %76
  %79 = load ptr, ptr %8, align 8, !dbg !840
  %80 = getelementptr inbounds nuw i8, ptr %79, i32 1, !dbg !840
  store ptr %80, ptr %8, align 8, !dbg !840
  %81 = load i8, ptr %79, align 1, !dbg !841
  store i8 %81, ptr %9, align 1, !dbg !842
  %82 = sext i8 %81 to i32, !dbg !843
  %83 = icmp ne i32 %82, 0, !dbg !844
  br i1 %83, label %84, label %96, !dbg !839

84:                                               ; preds = %78
  %85 = load i8, ptr %9, align 1, !dbg !845
  %86 = sext i8 %85 to i32, !dbg !845
  %87 = icmp eq i32 %86, 37, !dbg !848
  br i1 %87, label %88, label %95, !dbg !848

88:                                               ; preds = %84
  %89 = load ptr, ptr %8, align 8, !dbg !849
  %90 = load i8, ptr %89, align 1, !dbg !852
  %91 = sext i8 %90 to i32, !dbg !852
  %92 = icmp eq i32 %91, 115, !dbg !853
  br i1 %92, label %93, label %94, !dbg !853

93:                                               ; preds = %88
  store i32 1, ptr %10, align 4, !dbg !854
  br label %94, !dbg !855

94:                                               ; preds = %93, %88
  br label %96, !dbg !856

95:                                               ; preds = %84
  br label %78, !dbg !839, !llvm.loop !857

96:                                               ; preds = %94, %78
  %97 = load i32, ptr %10, align 4, !dbg !860
  %98 = icmp ne i32 %97, 0, !dbg !860
  br i1 %98, label %99, label %106, !dbg !860

99:                                               ; preds = %96
  %100 = load ptr, ptr %4, align 8, !dbg !862
  %101 = load ptr, ptr %7, align 8, !dbg !863
  %102 = load ptr, ptr %5, align 8, !dbg !864
  %103 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %102, i32 0, i32 6, !dbg !865
  %104 = getelementptr inbounds [80 x i8], ptr %103, i64 0, i64 0, !dbg !864
  %105 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %100, ptr noundef %101, ptr noundef %104) #5, !dbg !866
  br label %142, !dbg !866

106:                                              ; preds = %96
  %107 = load ptr, ptr %4, align 8, !dbg !867
  %108 = load ptr, ptr %7, align 8, !dbg !868
  %109 = load ptr, ptr %5, align 8, !dbg !869
  %110 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %109, i32 0, i32 6, !dbg !870
  %111 = getelementptr inbounds [8 x i32], ptr %110, i64 0, i64 0, !dbg !869
  %112 = load i32, ptr %111, align 4, !dbg !869
  %113 = load ptr, ptr %5, align 8, !dbg !871
  %114 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %113, i32 0, i32 6, !dbg !872
  %115 = getelementptr inbounds [8 x i32], ptr %114, i64 0, i64 1, !dbg !871
  %116 = load i32, ptr %115, align 4, !dbg !871
  %117 = load ptr, ptr %5, align 8, !dbg !873
  %118 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %117, i32 0, i32 6, !dbg !874
  %119 = getelementptr inbounds [8 x i32], ptr %118, i64 0, i64 2, !dbg !873
  %120 = load i32, ptr %119, align 4, !dbg !873
  %121 = load ptr, ptr %5, align 8, !dbg !875
  %122 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %121, i32 0, i32 6, !dbg !876
  %123 = getelementptr inbounds [8 x i32], ptr %122, i64 0, i64 3, !dbg !875
  %124 = load i32, ptr %123, align 4, !dbg !875
  %125 = load ptr, ptr %5, align 8, !dbg !877
  %126 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %125, i32 0, i32 6, !dbg !878
  %127 = getelementptr inbounds [8 x i32], ptr %126, i64 0, i64 4, !dbg !877
  %128 = load i32, ptr %127, align 4, !dbg !877
  %129 = load ptr, ptr %5, align 8, !dbg !879
  %130 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %129, i32 0, i32 6, !dbg !880
  %131 = getelementptr inbounds [8 x i32], ptr %130, i64 0, i64 5, !dbg !879
  %132 = load i32, ptr %131, align 4, !dbg !879
  %133 = load ptr, ptr %5, align 8, !dbg !881
  %134 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %133, i32 0, i32 6, !dbg !882
  %135 = getelementptr inbounds [8 x i32], ptr %134, i64 0, i64 6, !dbg !881
  %136 = load i32, ptr %135, align 4, !dbg !881
  %137 = load ptr, ptr %5, align 8, !dbg !883
  %138 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %137, i32 0, i32 6, !dbg !884
  %139 = getelementptr inbounds [8 x i32], ptr %138, i64 0, i64 7, !dbg !883
  %140 = load i32, ptr %139, align 4, !dbg !883
  %141 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %107, ptr noundef %108, i32 noundef %112, i32 noundef %116, i32 noundef %120, i32 noundef %124, i32 noundef %128, i32 noundef %132, i32 noundef %136, i32 noundef %140) #5, !dbg !885
  br label %142

142:                                              ; preds = %106, %99
  ret void, !dbg !886
}

; Function Attrs: noinline nounwind uwtable
define internal void @reset_error_mgr(ptr noundef %0) #0 !dbg !887 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !888, !DIExpression(), !889)
  %3 = load ptr, ptr %2, align 8, !dbg !890
  %4 = getelementptr inbounds nuw %struct.jpeg_common_struct, ptr %3, i32 0, i32 0, !dbg !891
  %5 = load ptr, ptr %4, align 8, !dbg !891
  %6 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %5, i32 0, i32 8, !dbg !892
  store i64 0, ptr %6, align 8, !dbg !893
  %7 = load ptr, ptr %2, align 8, !dbg !894
  %8 = getelementptr inbounds nuw %struct.jpeg_common_struct, ptr %7, i32 0, i32 0, !dbg !895
  %9 = load ptr, ptr %8, align 8, !dbg !895
  %10 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %9, i32 0, i32 5, !dbg !896
  store i32 0, ptr %10, align 8, !dbg !897
  ret void, !dbg !898
}

declare void @jpeg_destroy(ptr noundef) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #2

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #3

; Function Attrs: nounwind
declare i32 @sprintf(ptr noundef, ptr noundef, ...) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!379}
!llvm.module.flags = !{!521, !522, !523, !524, !525, !526, !527}
!llvm.ident = !{!528}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 39, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jerror.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "a232f2460ff0049c960896e323d8710b")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 22)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 42, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 456, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 57)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 44, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 32)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 45, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 296, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 37)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 46, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 26)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 47, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 31)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 48, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 40)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !2, line: 49, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 23)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(scope: null, file: !2, line: 50, type: !3, isLocal: true, isDefinition: true)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(scope: null, file: !2, line: 51, type: !46, isLocal: true, isDefinition: true)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !47)
!47 = !{!48}
!48 = !DISubrange(count: 20)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(scope: null, file: !2, line: 52, type: !51, isLocal: true, isDefinition: true)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 488, elements: !52)
!52 = !{!53}
!53 = !DISubrange(count: 61)
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression())
!55 = distinct !DIGlobalVariable(scope: null, file: !2, line: 54, type: !56, isLocal: true, isDefinition: true)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 48)
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(scope: null, file: !2, line: 55, type: !61, isLocal: true, isDefinition: true)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 28)
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression())
!65 = distinct !DIGlobalVariable(scope: null, file: !2, line: 56, type: !66, isLocal: true, isDefinition: true)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 280, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 35)
!69 = !DIGlobalVariableExpression(var: !70, expr: !DIExpression())
!70 = distinct !DIGlobalVariable(scope: null, file: !2, line: 57, type: !71, isLocal: true, isDefinition: true)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 440, elements: !72)
!72 = !{!73}
!73 = !DISubrange(count: 55)
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression())
!75 = distinct !DIGlobalVariable(scope: null, file: !2, line: 59, type: !71, isLocal: true, isDefinition: true)
!76 = !DIGlobalVariableExpression(var: !77, expr: !DIExpression())
!77 = distinct !DIGlobalVariable(scope: null, file: !2, line: 61, type: !39, isLocal: true, isDefinition: true)
!78 = !DIGlobalVariableExpression(var: !79, expr: !DIExpression())
!79 = distinct !DIGlobalVariable(scope: null, file: !2, line: 62, type: !14, isLocal: true, isDefinition: true)
!80 = !DIGlobalVariableExpression(var: !81, expr: !DIExpression())
!81 = distinct !DIGlobalVariable(scope: null, file: !2, line: 63, type: !82, isLocal: true, isDefinition: true)
!82 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 336, elements: !83)
!83 = !{!84}
!84 = !DISubrange(count: 42)
!85 = !DIGlobalVariableExpression(var: !86, expr: !DIExpression())
!86 = distinct !DIGlobalVariable(scope: null, file: !2, line: 64, type: !87, isLocal: true, isDefinition: true)
!87 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 616, elements: !88)
!88 = !{!89}
!89 = !DISubrange(count: 77)
!90 = !DIGlobalVariableExpression(var: !91, expr: !DIExpression())
!91 = distinct !DIGlobalVariable(scope: null, file: !2, line: 66, type: !92, isLocal: true, isDefinition: true)
!92 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !93)
!93 = !{!94}
!94 = !DISubrange(count: 27)
!95 = !DIGlobalVariableExpression(var: !96, expr: !DIExpression())
!96 = distinct !DIGlobalVariable(scope: null, file: !2, line: 67, type: !97, isLocal: true, isDefinition: true)
!97 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 344, elements: !98)
!98 = !{!99}
!99 = !DISubrange(count: 43)
!100 = !DIGlobalVariableExpression(var: !101, expr: !DIExpression())
!101 = distinct !DIGlobalVariable(scope: null, file: !2, line: 68, type: !61, isLocal: true, isDefinition: true)
!102 = !DIGlobalVariableExpression(var: !103, expr: !DIExpression())
!103 = distinct !DIGlobalVariable(scope: null, file: !2, line: 69, type: !19, isLocal: true, isDefinition: true)
!104 = !DIGlobalVariableExpression(var: !105, expr: !DIExpression())
!105 = distinct !DIGlobalVariable(scope: null, file: !2, line: 70, type: !106, isLocal: true, isDefinition: true)
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 304, elements: !107)
!107 = !{!108}
!108 = !DISubrange(count: 38)
!109 = !DIGlobalVariableExpression(var: !110, expr: !DIExpression())
!110 = distinct !DIGlobalVariable(scope: null, file: !2, line: 71, type: !19, isLocal: true, isDefinition: true)
!111 = !DIGlobalVariableExpression(var: !112, expr: !DIExpression())
!112 = distinct !DIGlobalVariable(scope: null, file: !2, line: 72, type: !113, isLocal: true, isDefinition: true)
!113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !114)
!114 = !{!115}
!115 = !DISubrange(count: 19)
!116 = !DIGlobalVariableExpression(var: !117, expr: !DIExpression())
!117 = distinct !DIGlobalVariable(scope: null, file: !2, line: 73, type: !118, isLocal: true, isDefinition: true)
!118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !119)
!119 = !{!120}
!120 = !DISubrange(count: 21)
!121 = !DIGlobalVariableExpression(var: !122, expr: !DIExpression())
!122 = distinct !DIGlobalVariable(scope: null, file: !2, line: 74, type: !123, isLocal: true, isDefinition: true)
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !124)
!124 = !{!125}
!125 = !DISubrange(count: 17)
!126 = !DIGlobalVariableExpression(var: !127, expr: !DIExpression())
!127 = distinct !DIGlobalVariable(scope: null, file: !2, line: 75, type: !113, isLocal: true, isDefinition: true)
!128 = !DIGlobalVariableExpression(var: !129, expr: !DIExpression())
!129 = distinct !DIGlobalVariable(scope: null, file: !2, line: 76, type: !113, isLocal: true, isDefinition: true)
!130 = !DIGlobalVariableExpression(var: !131, expr: !DIExpression())
!131 = distinct !DIGlobalVariable(scope: null, file: !2, line: 77, type: !19, isLocal: true, isDefinition: true)
!132 = !DIGlobalVariableExpression(var: !133, expr: !DIExpression())
!133 = distinct !DIGlobalVariable(scope: null, file: !2, line: 78, type: !118, isLocal: true, isDefinition: true)
!134 = !DIGlobalVariableExpression(var: !135, expr: !DIExpression())
!135 = distinct !DIGlobalVariable(scope: null, file: !2, line: 79, type: !46, isLocal: true, isDefinition: true)
!136 = !DIGlobalVariableExpression(var: !137, expr: !DIExpression())
!137 = distinct !DIGlobalVariable(scope: null, file: !2, line: 80, type: !138, isLocal: true, isDefinition: true)
!138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, elements: !139)
!139 = !{!140}
!140 = !DISubrange(count: 33)
!141 = !DIGlobalVariableExpression(var: !142, expr: !DIExpression())
!142 = distinct !DIGlobalVariable(scope: null, file: !2, line: 81, type: !3, isLocal: true, isDefinition: true)
!143 = !DIGlobalVariableExpression(var: !144, expr: !DIExpression())
!144 = distinct !DIGlobalVariable(scope: null, file: !2, line: 82, type: !145, isLocal: true, isDefinition: true)
!145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 376, elements: !146)
!146 = !{!147}
!147 = !DISubrange(count: 47)
!148 = !DIGlobalVariableExpression(var: !149, expr: !DIExpression())
!149 = distinct !DIGlobalVariable(scope: null, file: !2, line: 83, type: !34, isLocal: true, isDefinition: true)
!150 = !DIGlobalVariableExpression(var: !151, expr: !DIExpression())
!151 = distinct !DIGlobalVariable(scope: null, file: !2, line: 84, type: !138, isLocal: true, isDefinition: true)
!152 = !DIGlobalVariableExpression(var: !153, expr: !DIExpression())
!153 = distinct !DIGlobalVariable(scope: null, file: !2, line: 85, type: !138, isLocal: true, isDefinition: true)
!154 = !DIGlobalVariableExpression(var: !155, expr: !DIExpression())
!155 = distinct !DIGlobalVariable(scope: null, file: !2, line: 86, type: !145, isLocal: true, isDefinition: true)
!156 = !DIGlobalVariableExpression(var: !157, expr: !DIExpression())
!157 = distinct !DIGlobalVariable(scope: null, file: !2, line: 87, type: !123, isLocal: true, isDefinition: true)
!158 = !DIGlobalVariableExpression(var: !159, expr: !DIExpression())
!159 = distinct !DIGlobalVariable(scope: null, file: !2, line: 88, type: !61, isLocal: true, isDefinition: true)
!160 = !DIGlobalVariableExpression(var: !161, expr: !DIExpression())
!161 = distinct !DIGlobalVariable(scope: null, file: !2, line: 89, type: !162, isLocal: true, isDefinition: true)
!162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 496, elements: !163)
!163 = !{!164}
!164 = !DISubrange(count: 62)
!165 = !DIGlobalVariableExpression(var: !166, expr: !DIExpression())
!166 = distinct !DIGlobalVariable(scope: null, file: !2, line: 91, type: !167, isLocal: true, isDefinition: true)
!167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !168)
!168 = !{!169}
!169 = !DISubrange(count: 39)
!170 = !DIGlobalVariableExpression(var: !171, expr: !DIExpression())
!171 = distinct !DIGlobalVariable(scope: null, file: !2, line: 92, type: !167, isLocal: true, isDefinition: true)
!172 = !DIGlobalVariableExpression(var: !173, expr: !DIExpression())
!173 = distinct !DIGlobalVariable(scope: null, file: !2, line: 93, type: !46, isLocal: true, isDefinition: true)
!174 = !DIGlobalVariableExpression(var: !175, expr: !DIExpression())
!175 = distinct !DIGlobalVariable(scope: null, file: !2, line: 94, type: !176, isLocal: true, isDefinition: true)
!176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 368, elements: !177)
!177 = !{!178}
!178 = !DISubrange(count: 46)
!179 = !DIGlobalVariableExpression(var: !180, expr: !DIExpression())
!180 = distinct !DIGlobalVariable(scope: null, file: !2, line: 95, type: !61, isLocal: true, isDefinition: true)
!181 = !DIGlobalVariableExpression(var: !182, expr: !DIExpression())
!182 = distinct !DIGlobalVariable(scope: null, file: !2, line: 96, type: !19, isLocal: true, isDefinition: true)
!183 = !DIGlobalVariableExpression(var: !184, expr: !DIExpression())
!184 = distinct !DIGlobalVariable(scope: null, file: !2, line: 97, type: !185, isLocal: true, isDefinition: true)
!185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !186)
!186 = !{!187}
!187 = !DISubrange(count: 34)
!188 = !DIGlobalVariableExpression(var: !189, expr: !DIExpression())
!189 = distinct !DIGlobalVariable(scope: null, file: !2, line: 98, type: !82, isLocal: true, isDefinition: true)
!190 = !DIGlobalVariableExpression(var: !191, expr: !DIExpression())
!191 = distinct !DIGlobalVariable(scope: null, file: !2, line: 99, type: !97, isLocal: true, isDefinition: true)
!192 = !DIGlobalVariableExpression(var: !193, expr: !DIExpression())
!193 = distinct !DIGlobalVariable(scope: null, file: !2, line: 100, type: !194, isLocal: true, isDefinition: true)
!194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !195)
!195 = !{!196}
!196 = !DISubrange(count: 30)
!197 = !DIGlobalVariableExpression(var: !198, expr: !DIExpression())
!198 = distinct !DIGlobalVariable(scope: null, file: !2, line: 101, type: !176, isLocal: true, isDefinition: true)
!199 = !DIGlobalVariableExpression(var: !200, expr: !DIExpression())
!200 = distinct !DIGlobalVariable(scope: null, file: !2, line: 103, type: !34, isLocal: true, isDefinition: true)
!201 = !DIGlobalVariableExpression(var: !202, expr: !DIExpression())
!202 = distinct !DIGlobalVariable(scope: null, file: !2, line: 104, type: !167, isLocal: true, isDefinition: true)
!203 = !DIGlobalVariableExpression(var: !204, expr: !DIExpression())
!204 = distinct !DIGlobalVariable(scope: null, file: !2, line: 105, type: !205, isLocal: true, isDefinition: true)
!205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 360, elements: !206)
!206 = !{!207}
!207 = !DISubrange(count: 45)
!208 = !DIGlobalVariableExpression(var: !209, expr: !DIExpression())
!209 = distinct !DIGlobalVariable(scope: null, file: !2, line: 106, type: !56, isLocal: true, isDefinition: true)
!210 = !DIGlobalVariableExpression(var: !211, expr: !DIExpression())
!211 = distinct !DIGlobalVariable(scope: null, file: !2, line: 107, type: !82, isLocal: true, isDefinition: true)
!212 = !DIGlobalVariableExpression(var: !213, expr: !DIExpression())
!213 = distinct !DIGlobalVariable(scope: null, file: !2, line: 108, type: !205, isLocal: true, isDefinition: true)
!214 = !DIGlobalVariableExpression(var: !215, expr: !DIExpression())
!215 = distinct !DIGlobalVariable(scope: null, file: !2, line: 109, type: !216, isLocal: true, isDefinition: true)
!216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !217)
!217 = !{!218}
!218 = !DISubrange(count: 44)
!219 = !DIGlobalVariableExpression(var: !220, expr: !DIExpression())
!220 = distinct !DIGlobalVariable(scope: null, file: !2, line: 110, type: !66, isLocal: true, isDefinition: true)
!221 = !DIGlobalVariableExpression(var: !222, expr: !DIExpression())
!222 = distinct !DIGlobalVariable(scope: null, file: !2, line: 111, type: !194, isLocal: true, isDefinition: true)
!223 = !DIGlobalVariableExpression(var: !224, expr: !DIExpression())
!224 = distinct !DIGlobalVariable(scope: null, file: !2, line: 112, type: !194, isLocal: true, isDefinition: true)
!225 = !DIGlobalVariableExpression(var: !226, expr: !DIExpression())
!226 = distinct !DIGlobalVariable(scope: null, file: !2, line: 113, type: !227, isLocal: true, isDefinition: true)
!227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 432, elements: !228)
!228 = !{!229}
!229 = !DISubrange(count: 54)
!230 = !DIGlobalVariableExpression(var: !231, expr: !DIExpression())
!231 = distinct !DIGlobalVariable(scope: null, file: !2, line: 115, type: !82, isLocal: true, isDefinition: true)
!232 = !DIGlobalVariableExpression(var: !233, expr: !DIExpression())
!233 = distinct !DIGlobalVariable(scope: null, file: !2, line: 116, type: !29, isLocal: true, isDefinition: true)
!234 = !DIGlobalVariableExpression(var: !235, expr: !DIExpression())
!235 = distinct !DIGlobalVariable(scope: null, file: !2, line: 117, type: !66, isLocal: true, isDefinition: true)
!236 = !DIGlobalVariableExpression(var: !237, expr: !DIExpression())
!237 = distinct !DIGlobalVariable(scope: null, file: !2, line: 118, type: !167, isLocal: true, isDefinition: true)
!238 = !DIGlobalVariableExpression(var: !239, expr: !DIExpression())
!239 = distinct !DIGlobalVariable(scope: null, file: !2, line: 119, type: !118, isLocal: true, isDefinition: true)
!240 = !DIGlobalVariableExpression(var: !241, expr: !DIExpression())
!241 = distinct !DIGlobalVariable(scope: null, file: !2, line: 120, type: !46, isLocal: true, isDefinition: true)
!242 = !DIGlobalVariableExpression(var: !243, expr: !DIExpression())
!243 = distinct !DIGlobalVariable(scope: null, file: !2, line: 121, type: !66, isLocal: true, isDefinition: true)
!244 = !DIGlobalVariableExpression(var: !245, expr: !DIExpression())
!245 = distinct !DIGlobalVariable(scope: null, file: !2, line: 122, type: !246, isLocal: true, isDefinition: true)
!246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !247)
!247 = !{!248}
!248 = !DISubrange(count: 13)
!249 = !DIGlobalVariableExpression(var: !250, expr: !DIExpression())
!250 = distinct !DIGlobalVariable(scope: null, file: !2, line: 123, type: !162, isLocal: true, isDefinition: true)
!251 = !DIGlobalVariableExpression(var: !252, expr: !DIExpression())
!252 = distinct !DIGlobalVariable(scope: null, file: !2, line: 125, type: !253, isLocal: true, isDefinition: true)
!253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 528, elements: !254)
!254 = !{!255}
!255 = !DISubrange(count: 66)
!256 = !DIGlobalVariableExpression(var: !257, expr: !DIExpression())
!257 = distinct !DIGlobalVariable(scope: null, file: !2, line: 127, type: !82, isLocal: true, isDefinition: true)
!258 = !DIGlobalVariableExpression(var: !259, expr: !DIExpression())
!259 = distinct !DIGlobalVariable(scope: null, file: !2, line: 128, type: !216, isLocal: true, isDefinition: true)
!260 = !DIGlobalVariableExpression(var: !261, expr: !DIExpression())
!261 = distinct !DIGlobalVariable(scope: null, file: !2, line: 129, type: !167, isLocal: true, isDefinition: true)
!262 = !DIGlobalVariableExpression(var: !263, expr: !DIExpression())
!263 = distinct !DIGlobalVariable(scope: null, file: !2, line: 130, type: !61, isLocal: true, isDefinition: true)
!264 = !DIGlobalVariableExpression(var: !265, expr: !DIExpression())
!265 = distinct !DIGlobalVariable(scope: null, file: !2, line: 131, type: !97, isLocal: true, isDefinition: true)
!266 = !DIGlobalVariableExpression(var: !267, expr: !DIExpression())
!267 = distinct !DIGlobalVariable(scope: null, file: !2, line: 132, type: !92, isLocal: true, isDefinition: true)
!268 = !DIGlobalVariableExpression(var: !269, expr: !DIExpression())
!269 = distinct !DIGlobalVariable(scope: null, file: !2, line: 133, type: !46, isLocal: true, isDefinition: true)
!270 = !DIGlobalVariableExpression(var: !271, expr: !DIExpression())
!271 = distinct !DIGlobalVariable(scope: null, file: !2, line: 134, type: !39, isLocal: true, isDefinition: true)
!272 = !DIGlobalVariableExpression(var: !273, expr: !DIExpression())
!273 = distinct !DIGlobalVariable(scope: null, file: !2, line: 135, type: !246, isLocal: true, isDefinition: true)
!274 = !DIGlobalVariableExpression(var: !275, expr: !DIExpression())
!275 = distinct !DIGlobalVariable(scope: null, file: !2, line: 136, type: !34, isLocal: true, isDefinition: true)
!276 = !DIGlobalVariableExpression(var: !277, expr: !DIExpression())
!277 = distinct !DIGlobalVariable(scope: null, file: !2, line: 137, type: !278, isLocal: true, isDefinition: true)
!278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !279)
!279 = !{!280}
!280 = !DISubrange(count: 36)
!281 = !DIGlobalVariableExpression(var: !282, expr: !DIExpression())
!282 = distinct !DIGlobalVariable(scope: null, file: !2, line: 138, type: !283, isLocal: true, isDefinition: true)
!283 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !284)
!284 = !{!285}
!285 = !DISubrange(count: 60)
!286 = !DIGlobalVariableExpression(var: !287, expr: !DIExpression())
!287 = distinct !DIGlobalVariable(scope: null, file: !2, line: 140, type: !97, isLocal: true, isDefinition: true)
!288 = !DIGlobalVariableExpression(var: !289, expr: !DIExpression())
!289 = distinct !DIGlobalVariable(scope: null, file: !2, line: 141, type: !138, isLocal: true, isDefinition: true)
!290 = !DIGlobalVariableExpression(var: !291, expr: !DIExpression())
!291 = distinct !DIGlobalVariable(scope: null, file: !2, line: 142, type: !185, isLocal: true, isDefinition: true)
!292 = !DIGlobalVariableExpression(var: !293, expr: !DIExpression())
!293 = distinct !DIGlobalVariable(scope: null, file: !2, line: 143, type: !294, isLocal: true, isDefinition: true)
!294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !295)
!295 = !{!296}
!296 = !DISubrange(count: 25)
!297 = !DIGlobalVariableExpression(var: !298, expr: !DIExpression())
!298 = distinct !DIGlobalVariable(scope: null, file: !2, line: 144, type: !34, isLocal: true, isDefinition: true)
!299 = !DIGlobalVariableExpression(var: !300, expr: !DIExpression())
!300 = distinct !DIGlobalVariable(scope: null, file: !2, line: 145, type: !66, isLocal: true, isDefinition: true)
!301 = !DIGlobalVariableExpression(var: !302, expr: !DIExpression())
!302 = distinct !DIGlobalVariable(scope: null, file: !2, line: 146, type: !303, isLocal: true, isDefinition: true)
!303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !304)
!304 = !{!305}
!305 = !DISubrange(count: 24)
!306 = !DIGlobalVariableExpression(var: !307, expr: !DIExpression())
!307 = distinct !DIGlobalVariable(scope: null, file: !2, line: 147, type: !278, isLocal: true, isDefinition: true)
!308 = !DIGlobalVariableExpression(var: !309, expr: !DIExpression())
!309 = distinct !DIGlobalVariable(scope: null, file: !2, line: 148, type: !19, isLocal: true, isDefinition: true)
!310 = !DIGlobalVariableExpression(var: !311, expr: !DIExpression())
!311 = distinct !DIGlobalVariable(scope: null, file: !2, line: 149, type: !312, isLocal: true, isDefinition: true)
!312 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !313)
!313 = !{!314}
!314 = !DISubrange(count: 6)
!315 = !DIGlobalVariableExpression(var: !316, expr: !DIExpression())
!316 = distinct !DIGlobalVariable(scope: null, file: !2, line: 150, type: !9, isLocal: true, isDefinition: true)
!317 = !DIGlobalVariableExpression(var: !318, expr: !DIExpression())
!318 = distinct !DIGlobalVariable(scope: null, file: !2, line: 152, type: !319, isLocal: true, isDefinition: true)
!319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 464, elements: !320)
!320 = !{!321}
!321 = !DISubrange(count: 58)
!322 = !DIGlobalVariableExpression(var: !323, expr: !DIExpression())
!323 = distinct !DIGlobalVariable(scope: null, file: !2, line: 153, type: !29, isLocal: true, isDefinition: true)
!324 = !DIGlobalVariableExpression(var: !325, expr: !DIExpression())
!325 = distinct !DIGlobalVariable(scope: null, file: !2, line: 154, type: !326, isLocal: true, isDefinition: true)
!326 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !327)
!327 = !{!328}
!328 = !DISubrange(count: 15)
!329 = !DIGlobalVariableExpression(var: !330, expr: !DIExpression())
!330 = distinct !DIGlobalVariable(scope: null, file: !2, line: 155, type: !331, isLocal: true, isDefinition: true)
!331 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !332)
!332 = !{!333}
!333 = !DISubrange(count: 29)
!334 = !DIGlobalVariableExpression(var: !335, expr: !DIExpression())
!335 = distinct !DIGlobalVariable(scope: null, file: !2, line: 156, type: !194, isLocal: true, isDefinition: true)
!336 = !DIGlobalVariableExpression(var: !337, expr: !DIExpression())
!337 = distinct !DIGlobalVariable(scope: null, file: !2, line: 157, type: !331, isLocal: true, isDefinition: true)
!338 = !DIGlobalVariableExpression(var: !339, expr: !DIExpression())
!339 = distinct !DIGlobalVariable(scope: null, file: !2, line: 158, type: !294, isLocal: true, isDefinition: true)
!340 = !DIGlobalVariableExpression(var: !341, expr: !DIExpression())
!341 = distinct !DIGlobalVariable(scope: null, file: !2, line: 159, type: !294, isLocal: true, isDefinition: true)
!342 = !DIGlobalVariableExpression(var: !343, expr: !DIExpression())
!343 = distinct !DIGlobalVariable(scope: null, file: !2, line: 160, type: !344, isLocal: true, isDefinition: true)
!344 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !345)
!345 = !{!346}
!346 = !DISubrange(count: 52)
!347 = !DIGlobalVariableExpression(var: !348, expr: !DIExpression())
!348 = distinct !DIGlobalVariable(scope: null, file: !2, line: 162, type: !46, isLocal: true, isDefinition: true)
!349 = !DIGlobalVariableExpression(var: !350, expr: !DIExpression())
!350 = distinct !DIGlobalVariable(scope: null, file: !2, line: 163, type: !39, isLocal: true, isDefinition: true)
!351 = !DIGlobalVariableExpression(var: !352, expr: !DIExpression())
!352 = distinct !DIGlobalVariable(scope: null, file: !2, line: 164, type: !106, isLocal: true, isDefinition: true)
!353 = !DIGlobalVariableExpression(var: !354, expr: !DIExpression())
!354 = distinct !DIGlobalVariable(scope: null, file: !2, line: 165, type: !253, isLocal: true, isDefinition: true)
!355 = !DIGlobalVariableExpression(var: !356, expr: !DIExpression())
!356 = distinct !DIGlobalVariable(scope: null, file: !2, line: 167, type: !283, isLocal: true, isDefinition: true)
!357 = !DIGlobalVariableExpression(var: !358, expr: !DIExpression())
!358 = distinct !DIGlobalVariable(scope: null, file: !2, line: 169, type: !359, isLocal: true, isDefinition: true)
!359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 392, elements: !360)
!360 = !{!361}
!361 = !DISubrange(count: 49)
!362 = !DIGlobalVariableExpression(var: !363, expr: !DIExpression())
!363 = distinct !DIGlobalVariable(scope: null, file: !2, line: 170, type: !278, isLocal: true, isDefinition: true)
!364 = !DIGlobalVariableExpression(var: !365, expr: !DIExpression())
!365 = distinct !DIGlobalVariable(scope: null, file: !2, line: 171, type: !176, isLocal: true, isDefinition: true)
!366 = !DIGlobalVariableExpression(var: !367, expr: !DIExpression())
!367 = distinct !DIGlobalVariable(scope: null, file: !2, line: 172, type: !92, isLocal: true, isDefinition: true)
!368 = !DIGlobalVariableExpression(var: !369, expr: !DIExpression())
!369 = distinct !DIGlobalVariable(scope: null, file: !2, line: 173, type: !370, isLocal: true, isDefinition: true)
!370 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !371)
!371 = !{!372}
!372 = !DISubrange(count: 56)
!373 = !DIGlobalVariableExpression(var: !374, expr: !DIExpression())
!374 = distinct !DIGlobalVariable(scope: null, file: !2, line: 175, type: !97, isLocal: true, isDefinition: true)
!375 = !DIGlobalVariableExpression(var: !376, expr: !DIExpression())
!376 = distinct !DIGlobalVariable(scope: null, file: !2, line: 176, type: !97, isLocal: true, isDefinition: true)
!377 = !DIGlobalVariableExpression(var: !378, expr: !DIExpression())
!378 = distinct !DIGlobalVariable(name: "jpeg_std_message_table", scope: !379, file: !380, line: 41, type: !515, isLocal: false, isDefinition: true)
!379 = distinct !DICompileUnit(language: DW_LANG_C11, file: !380, producer: "clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !381, retainedTypes: !506, globals: !509, splitDebugInlining: false, nameTableKind: None)
!380 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jerror.c", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "a44b8a7477d7933daf84c7fb919a5650")
!381 = !{!382}
!382 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !2, line: 33, baseType: !383, size: 32, elements: !384)
!383 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!384 = !{!385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505}
!385 = !DIEnumerator(name: "JMSG_NOMESSAGE", value: 0)
!386 = !DIEnumerator(name: "JERR_ARITH_NOTIMPL", value: 1)
!387 = !DIEnumerator(name: "JERR_BAD_ALIGN_TYPE", value: 2)
!388 = !DIEnumerator(name: "JERR_BAD_ALLOC_CHUNK", value: 3)
!389 = !DIEnumerator(name: "JERR_BAD_BUFFER_MODE", value: 4)
!390 = !DIEnumerator(name: "JERR_BAD_COMPONENT_ID", value: 5)
!391 = !DIEnumerator(name: "JERR_BAD_DCTSIZE", value: 6)
!392 = !DIEnumerator(name: "JERR_BAD_IN_COLORSPACE", value: 7)
!393 = !DIEnumerator(name: "JERR_BAD_J_COLORSPACE", value: 8)
!394 = !DIEnumerator(name: "JERR_BAD_LENGTH", value: 9)
!395 = !DIEnumerator(name: "JERR_BAD_LIB_VERSION", value: 10)
!396 = !DIEnumerator(name: "JERR_BAD_MCU_SIZE", value: 11)
!397 = !DIEnumerator(name: "JERR_BAD_POOL_ID", value: 12)
!398 = !DIEnumerator(name: "JERR_BAD_PRECISION", value: 13)
!399 = !DIEnumerator(name: "JERR_BAD_PROGRESSION", value: 14)
!400 = !DIEnumerator(name: "JERR_BAD_PROG_SCRIPT", value: 15)
!401 = !DIEnumerator(name: "JERR_BAD_SAMPLING", value: 16)
!402 = !DIEnumerator(name: "JERR_BAD_SCAN_SCRIPT", value: 17)
!403 = !DIEnumerator(name: "JERR_BAD_STATE", value: 18)
!404 = !DIEnumerator(name: "JERR_BAD_STRUCT_SIZE", value: 19)
!405 = !DIEnumerator(name: "JERR_BAD_VIRTUAL_ACCESS", value: 20)
!406 = !DIEnumerator(name: "JERR_BUFFER_SIZE", value: 21)
!407 = !DIEnumerator(name: "JERR_CANT_SUSPEND", value: 22)
!408 = !DIEnumerator(name: "JERR_CCIR601_NOTIMPL", value: 23)
!409 = !DIEnumerator(name: "JERR_COMPONENT_COUNT", value: 24)
!410 = !DIEnumerator(name: "JERR_CONVERSION_NOTIMPL", value: 25)
!411 = !DIEnumerator(name: "JERR_DAC_INDEX", value: 26)
!412 = !DIEnumerator(name: "JERR_DAC_VALUE", value: 27)
!413 = !DIEnumerator(name: "JERR_DHT_COUNTS", value: 28)
!414 = !DIEnumerator(name: "JERR_DHT_INDEX", value: 29)
!415 = !DIEnumerator(name: "JERR_DQT_INDEX", value: 30)
!416 = !DIEnumerator(name: "JERR_EMPTY_IMAGE", value: 31)
!417 = !DIEnumerator(name: "JERR_EMS_READ", value: 32)
!418 = !DIEnumerator(name: "JERR_EMS_WRITE", value: 33)
!419 = !DIEnumerator(name: "JERR_EOI_EXPECTED", value: 34)
!420 = !DIEnumerator(name: "JERR_FILE_READ", value: 35)
!421 = !DIEnumerator(name: "JERR_FILE_WRITE", value: 36)
!422 = !DIEnumerator(name: "JERR_FRACT_SAMPLE_NOTIMPL", value: 37)
!423 = !DIEnumerator(name: "JERR_HUFF_CLEN_OVERFLOW", value: 38)
!424 = !DIEnumerator(name: "JERR_HUFF_MISSING_CODE", value: 39)
!425 = !DIEnumerator(name: "JERR_IMAGE_TOO_BIG", value: 40)
!426 = !DIEnumerator(name: "JERR_INPUT_EMPTY", value: 41)
!427 = !DIEnumerator(name: "JERR_INPUT_EOF", value: 42)
!428 = !DIEnumerator(name: "JERR_MISMATCHED_QUANT_TABLE", value: 43)
!429 = !DIEnumerator(name: "JERR_MISSING_DATA", value: 44)
!430 = !DIEnumerator(name: "JERR_MODE_CHANGE", value: 45)
!431 = !DIEnumerator(name: "JERR_NOTIMPL", value: 46)
!432 = !DIEnumerator(name: "JERR_NOT_COMPILED", value: 47)
!433 = !DIEnumerator(name: "JERR_NO_BACKING_STORE", value: 48)
!434 = !DIEnumerator(name: "JERR_NO_HUFF_TABLE", value: 49)
!435 = !DIEnumerator(name: "JERR_NO_IMAGE", value: 50)
!436 = !DIEnumerator(name: "JERR_NO_QUANT_TABLE", value: 51)
!437 = !DIEnumerator(name: "JERR_NO_SOI", value: 52)
!438 = !DIEnumerator(name: "JERR_OUT_OF_MEMORY", value: 53)
!439 = !DIEnumerator(name: "JERR_QUANT_COMPONENTS", value: 54)
!440 = !DIEnumerator(name: "JERR_QUANT_FEW_COLORS", value: 55)
!441 = !DIEnumerator(name: "JERR_QUANT_MANY_COLORS", value: 56)
!442 = !DIEnumerator(name: "JERR_SOF_DUPLICATE", value: 57)
!443 = !DIEnumerator(name: "JERR_SOF_NO_SOS", value: 58)
!444 = !DIEnumerator(name: "JERR_SOF_UNSUPPORTED", value: 59)
!445 = !DIEnumerator(name: "JERR_SOI_DUPLICATE", value: 60)
!446 = !DIEnumerator(name: "JERR_SOS_NO_SOF", value: 61)
!447 = !DIEnumerator(name: "JERR_TFILE_CREATE", value: 62)
!448 = !DIEnumerator(name: "JERR_TFILE_READ", value: 63)
!449 = !DIEnumerator(name: "JERR_TFILE_SEEK", value: 64)
!450 = !DIEnumerator(name: "JERR_TFILE_WRITE", value: 65)
!451 = !DIEnumerator(name: "JERR_TOO_LITTLE_DATA", value: 66)
!452 = !DIEnumerator(name: "JERR_UNKNOWN_MARKER", value: 67)
!453 = !DIEnumerator(name: "JERR_VIRTUAL_BUG", value: 68)
!454 = !DIEnumerator(name: "JERR_WIDTH_OVERFLOW", value: 69)
!455 = !DIEnumerator(name: "JERR_XMS_READ", value: 70)
!456 = !DIEnumerator(name: "JERR_XMS_WRITE", value: 71)
!457 = !DIEnumerator(name: "JMSG_COPYRIGHT", value: 72)
!458 = !DIEnumerator(name: "JMSG_VERSION", value: 73)
!459 = !DIEnumerator(name: "JTRC_16BIT_TABLES", value: 74)
!460 = !DIEnumerator(name: "JTRC_ADOBE", value: 75)
!461 = !DIEnumerator(name: "JTRC_APP0", value: 76)
!462 = !DIEnumerator(name: "JTRC_APP14", value: 77)
!463 = !DIEnumerator(name: "JTRC_DAC", value: 78)
!464 = !DIEnumerator(name: "JTRC_DHT", value: 79)
!465 = !DIEnumerator(name: "JTRC_DQT", value: 80)
!466 = !DIEnumerator(name: "JTRC_DRI", value: 81)
!467 = !DIEnumerator(name: "JTRC_EMS_CLOSE", value: 82)
!468 = !DIEnumerator(name: "JTRC_EMS_OPEN", value: 83)
!469 = !DIEnumerator(name: "JTRC_EOI", value: 84)
!470 = !DIEnumerator(name: "JTRC_HUFFBITS", value: 85)
!471 = !DIEnumerator(name: "JTRC_JFIF", value: 86)
!472 = !DIEnumerator(name: "JTRC_JFIF_BADTHUMBNAILSIZE", value: 87)
!473 = !DIEnumerator(name: "JTRC_JFIF_MINOR", value: 88)
!474 = !DIEnumerator(name: "JTRC_JFIF_THUMBNAIL", value: 89)
!475 = !DIEnumerator(name: "JTRC_MISC_MARKER", value: 90)
!476 = !DIEnumerator(name: "JTRC_PARMLESS_MARKER", value: 91)
!477 = !DIEnumerator(name: "JTRC_QUANTVALS", value: 92)
!478 = !DIEnumerator(name: "JTRC_QUANT_3_NCOLORS", value: 93)
!479 = !DIEnumerator(name: "JTRC_QUANT_NCOLORS", value: 94)
!480 = !DIEnumerator(name: "JTRC_QUANT_SELECTED", value: 95)
!481 = !DIEnumerator(name: "JTRC_RECOVERY_ACTION", value: 96)
!482 = !DIEnumerator(name: "JTRC_RST", value: 97)
!483 = !DIEnumerator(name: "JTRC_SMOOTH_NOTIMPL", value: 98)
!484 = !DIEnumerator(name: "JTRC_SOF", value: 99)
!485 = !DIEnumerator(name: "JTRC_SOF_COMPONENT", value: 100)
!486 = !DIEnumerator(name: "JTRC_SOI", value: 101)
!487 = !DIEnumerator(name: "JTRC_SOS", value: 102)
!488 = !DIEnumerator(name: "JTRC_SOS_COMPONENT", value: 103)
!489 = !DIEnumerator(name: "JTRC_SOS_PARAMS", value: 104)
!490 = !DIEnumerator(name: "JTRC_TFILE_CLOSE", value: 105)
!491 = !DIEnumerator(name: "JTRC_TFILE_OPEN", value: 106)
!492 = !DIEnumerator(name: "JTRC_UNKNOWN_IDS", value: 107)
!493 = !DIEnumerator(name: "JTRC_XMS_CLOSE", value: 108)
!494 = !DIEnumerator(name: "JTRC_XMS_OPEN", value: 109)
!495 = !DIEnumerator(name: "JWRN_ADOBE_XFORM", value: 110)
!496 = !DIEnumerator(name: "JWRN_BOGUS_PROGRESSION", value: 111)
!497 = !DIEnumerator(name: "JWRN_EXTRANEOUS_DATA", value: 112)
!498 = !DIEnumerator(name: "JWRN_HIT_MARKER", value: 113)
!499 = !DIEnumerator(name: "JWRN_HUFF_BAD_CODE", value: 114)
!500 = !DIEnumerator(name: "JWRN_JFIF_MAJOR", value: 115)
!501 = !DIEnumerator(name: "JWRN_JPEG_EOF", value: 116)
!502 = !DIEnumerator(name: "JWRN_MUST_RESYNC", value: 117)
!503 = !DIEnumerator(name: "JWRN_NOT_SEQUENTIAL", value: 118)
!504 = !DIEnumerator(name: "JWRN_TOO_MUCH_DATA", value: 119)
!505 = !DIEnumerator(name: "JMSG_LASTMSGCODE", value: 120)
!506 = !{!507, !508}
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!508 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!509 = !{!0, !7, !12, !17, !22, !27, !32, !37, !42, !44, !49, !54, !59, !64, !69, !74, !76, !78, !80, !85, !90, !95, !100, !102, !104, !109, !111, !116, !121, !126, !128, !130, !132, !134, !136, !141, !143, !148, !150, !152, !154, !156, !158, !160, !165, !170, !172, !174, !179, !181, !183, !188, !190, !192, !197, !199, !201, !203, !208, !210, !212, !214, !219, !221, !223, !225, !230, !232, !234, !236, !238, !240, !242, !244, !249, !251, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !281, !286, !288, !290, !292, !297, !299, !301, !306, !308, !310, !315, !317, !322, !324, !329, !334, !336, !338, !340, !342, !347, !349, !351, !353, !355, !357, !362, !364, !366, !368, !373, !375, !377, !510}
!510 = !DIGlobalVariableExpression(var: !511, expr: !DIExpression())
!511 = distinct !DIGlobalVariable(scope: null, file: !380, line: 88, type: !512, isLocal: true, isDefinition: true)
!512 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !513)
!513 = !{!514}
!514 = !DISubrange(count: 4)
!515 = !DICompositeType(tag: DW_TAG_array_type, baseType: !516, size: 7744, elements: !519)
!516 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !517)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!519 = !{!520}
!520 = !DISubrange(count: 121)
!521 = !{i32 7, !"Dwarf Version", i32 5}
!522 = !{i32 2, !"Debug Info Version", i32 3}
!523 = !{i32 1, !"wchar_size", i32 4}
!524 = !{i32 8, !"PIC Level", i32 2}
!525 = !{i32 7, !"PIE Level", i32 2}
!526 = !{i32 7, !"uwtable", i32 2}
!527 = !{i32 7, !"frame-pointer", i32 2}
!528 = !{!"clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)"}
!529 = distinct !DISubprogram(name: "jpeg_std_error", scope: !380, file: !380, line: 207, type: !530, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !379, retainedNodes: !653)
!530 = !DISubroutineType(types: !531)
!531 = !{!532, !532}
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_error_mgr", file: !534, line: 618, size: 1344, elements: !535)
!534 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jpeglib.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "2a2b23235fe587b10147d741e3371e67")
!535 = !{!536, !625, !626, !627, !632, !633, !634, !645, !646, !647, !649, !650, !651, !652}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "error_exit", scope: !533, file: !534, line: 620, baseType: !537, size: 64)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = !DISubroutineType(types: !539)
!539 = !{null, !540}
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "j_common_ptr", file: !534, line: 248, baseType: !541)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_common_struct", file: !534, line: 240, size: 256, elements: !543)
!543 = !{!544, !545, !614, !623, !624}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !542, file: !534, line: 241, baseType: !532, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !542, file: !534, line: 241, baseType: !546, size: 64, offset: 64)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_memory_mgr", file: !534, line: 731, size: 768, elements: !548)
!548 = !{!549, !556, !557, !569, !583, !591, !598, !599, !603, !607, !611, !612}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_small", scope: !547, file: !534, line: 733, baseType: !550, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = !DISubroutineType(types: !552)
!552 = !{!507, !540, !508, !553}
!553 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !554, line: 18, baseType: !555)
!554 = !DIFile(filename: "/usr/local/lib/clang/20/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!555 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_large", scope: !547, file: !534, line: 735, baseType: !550, size: 64, offset: 64)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_sarray", scope: !547, file: !534, line: 737, baseType: !558, size: 64, offset: 128)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = !DISubroutineType(types: !560)
!560 = !{!561, !540, !508, !568, !568}
!561 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPARRAY", file: !534, line: 67, baseType: !562)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPROW", file: !534, line: 66, baseType: !564)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPLE", file: !566, line: 59, baseType: !567)
!566 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jmorecfg.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "56a0eda58fafa6bdd5498f702a998c09")
!567 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!568 = !DIDerivedType(tag: DW_TAG_typedef, name: "JDIMENSION", file: !566, line: 171, baseType: !383)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_barray", scope: !547, file: !534, line: 740, baseType: !570, size: 64, offset: 192)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!571 = !DISubroutineType(types: !572)
!572 = !{!573, !540, !508, !568, !568}
!573 = !DIDerivedType(tag: DW_TAG_typedef, name: "JBLOCKARRAY", file: !534, line: 72, baseType: !574)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "JBLOCKROW", file: !534, line: 71, baseType: !576)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = !DIDerivedType(tag: DW_TAG_typedef, name: "JBLOCK", file: !534, line: 70, baseType: !578)
!578 = !DICompositeType(tag: DW_TAG_array_type, baseType: !579, size: 1024, elements: !581)
!579 = !DIDerivedType(tag: DW_TAG_typedef, name: "JCOEF", file: !566, line: 99, baseType: !580)
!580 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!581 = !{!582}
!582 = !DISubrange(count: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "request_virt_sarray", scope: !547, file: !534, line: 743, baseType: !584, size: 64, offset: 256)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = !DISubroutineType(types: !586)
!586 = !{!587, !540, !508, !590, !568, !568, !568}
!587 = !DIDerivedType(tag: DW_TAG_typedef, name: "jvirt_sarray_ptr", file: !534, line: 727, baseType: !588)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!589 = !DICompositeType(tag: DW_TAG_structure_type, name: "jvirt_sarray_control", file: !534, line: 727, flags: DIFlagFwdDecl)
!590 = !DIDerivedType(tag: DW_TAG_typedef, name: "boolean", file: !566, line: 227, baseType: !508)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "request_virt_barray", scope: !547, file: !534, line: 749, baseType: !592, size: 64, offset: 320)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = !DISubroutineType(types: !594)
!594 = !{!595, !540, !508, !590, !568, !568, !568}
!595 = !DIDerivedType(tag: DW_TAG_typedef, name: "jvirt_barray_ptr", file: !534, line: 728, baseType: !596)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = !DICompositeType(tag: DW_TAG_structure_type, name: "jvirt_barray_control", file: !534, line: 728, flags: DIFlagFwdDecl)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "realize_virt_arrays", scope: !547, file: !534, line: 755, baseType: !537, size: 64, offset: 384)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "access_virt_sarray", scope: !547, file: !534, line: 756, baseType: !600, size: 64, offset: 448)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!601 = !DISubroutineType(types: !602)
!602 = !{!561, !540, !587, !568, !568, !590}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "access_virt_barray", scope: !547, file: !534, line: 761, baseType: !604, size: 64, offset: 512)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = !DISubroutineType(types: !606)
!606 = !{!573, !540, !595, !568, !568, !590}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "free_pool", scope: !547, file: !534, line: 766, baseType: !608, size: 64, offset: 576)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!609 = !DISubroutineType(types: !610)
!610 = !{null, !540, !508}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "self_destruct", scope: !547, file: !534, line: 767, baseType: !537, size: 64, offset: 640)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "max_memory_to_use", scope: !547, file: !534, line: 774, baseType: !613, size: 64, offset: 704)
!613 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "progress", scope: !542, file: !534, line: 241, baseType: !615, size: 64, offset: 128)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_progress_mgr", file: !534, line: 676, size: 256, elements: !617)
!617 = !{!618, !619, !620, !621, !622}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "progress_monitor", scope: !616, file: !534, line: 677, baseType: !537, size: 64)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "pass_counter", scope: !616, file: !534, line: 679, baseType: !613, size: 64, offset: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "pass_limit", scope: !616, file: !534, line: 680, baseType: !613, size: 64, offset: 128)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "completed_passes", scope: !616, file: !534, line: 681, baseType: !508, size: 32, offset: 192)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "total_passes", scope: !616, file: !534, line: 682, baseType: !508, size: 32, offset: 224)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "is_decompressor", scope: !542, file: !534, line: 241, baseType: !590, size: 32, offset: 192)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "global_state", scope: !542, file: !534, line: 241, baseType: !508, size: 32, offset: 224)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "emit_message", scope: !533, file: !534, line: 622, baseType: !608, size: 64, offset: 64)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "output_message", scope: !533, file: !534, line: 624, baseType: !537, size: 64, offset: 128)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "format_message", scope: !533, file: !534, line: 626, baseType: !628, size: 64, offset: 192)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = !DISubroutineType(types: !630)
!630 = !{null, !540, !631}
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "reset_error_mgr", scope: !533, file: !534, line: 629, baseType: !537, size: 64, offset: 256)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "msg_code", scope: !533, file: !534, line: 634, baseType: !508, size: 32, offset: 320)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "msg_parm", scope: !533, file: !534, line: 639, baseType: !635, size: 640, offset: 352)
!635 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !533, file: !534, line: 636, size: 640, elements: !636)
!636 = !{!637, !641}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !635, file: !534, line: 637, baseType: !638, size: 256)
!638 = !DICompositeType(tag: DW_TAG_array_type, baseType: !508, size: 256, elements: !639)
!639 = !{!640}
!640 = !DISubrange(count: 8)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !635, file: !534, line: 638, baseType: !642, size: 640)
!642 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 640, elements: !643)
!643 = !{!644}
!644 = !DISubrange(count: 80)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "trace_level", scope: !533, file: !534, line: 643, baseType: !508, size: 32, offset: 992)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "num_warnings", scope: !533, file: !534, line: 651, baseType: !613, size: 64, offset: 1024)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "jpeg_message_table", scope: !533, file: !534, line: 663, baseType: !648, size: 64, offset: 1088)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "last_jpeg_message", scope: !533, file: !534, line: 664, baseType: !508, size: 32, offset: 1152)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "addon_message_table", scope: !533, file: !534, line: 668, baseType: !648, size: 64, offset: 1216)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "first_addon_message", scope: !533, file: !534, line: 669, baseType: !508, size: 32, offset: 1280)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "last_addon_message", scope: !533, file: !534, line: 670, baseType: !508, size: 32, offset: 1312)
!653 = !{}
!654 = !DILocalVariable(name: "err", arg: 1, scope: !529, file: !380, line: 207, type: !532)
!655 = !DILocation(line: 207, column: 41, scope: !529)
!656 = !DILocation(line: 209, column: 3, scope: !529)
!657 = !DILocation(line: 209, column: 8, scope: !529)
!658 = !DILocation(line: 209, column: 19, scope: !529)
!659 = !DILocation(line: 210, column: 3, scope: !529)
!660 = !DILocation(line: 210, column: 8, scope: !529)
!661 = !DILocation(line: 210, column: 21, scope: !529)
!662 = !DILocation(line: 211, column: 3, scope: !529)
!663 = !DILocation(line: 211, column: 8, scope: !529)
!664 = !DILocation(line: 211, column: 23, scope: !529)
!665 = !DILocation(line: 212, column: 3, scope: !529)
!666 = !DILocation(line: 212, column: 8, scope: !529)
!667 = !DILocation(line: 212, column: 23, scope: !529)
!668 = !DILocation(line: 213, column: 3, scope: !529)
!669 = !DILocation(line: 213, column: 8, scope: !529)
!670 = !DILocation(line: 213, column: 24, scope: !529)
!671 = !DILocation(line: 215, column: 3, scope: !529)
!672 = !DILocation(line: 215, column: 8, scope: !529)
!673 = !DILocation(line: 215, column: 20, scope: !529)
!674 = !DILocation(line: 216, column: 3, scope: !529)
!675 = !DILocation(line: 216, column: 8, scope: !529)
!676 = !DILocation(line: 216, column: 21, scope: !529)
!677 = !DILocation(line: 217, column: 3, scope: !529)
!678 = !DILocation(line: 217, column: 8, scope: !529)
!679 = !DILocation(line: 217, column: 17, scope: !529)
!680 = !DILocation(line: 220, column: 3, scope: !529)
!681 = !DILocation(line: 220, column: 8, scope: !529)
!682 = !DILocation(line: 220, column: 27, scope: !529)
!683 = !DILocation(line: 221, column: 3, scope: !529)
!684 = !DILocation(line: 221, column: 8, scope: !529)
!685 = !DILocation(line: 221, column: 26, scope: !529)
!686 = !DILocation(line: 223, column: 3, scope: !529)
!687 = !DILocation(line: 223, column: 8, scope: !529)
!688 = !DILocation(line: 223, column: 28, scope: !529)
!689 = !DILocation(line: 224, column: 3, scope: !529)
!690 = !DILocation(line: 224, column: 8, scope: !529)
!691 = !DILocation(line: 224, column: 28, scope: !529)
!692 = !DILocation(line: 225, column: 3, scope: !529)
!693 = !DILocation(line: 225, column: 8, scope: !529)
!694 = !DILocation(line: 225, column: 27, scope: !529)
!695 = !DILocation(line: 227, column: 10, scope: !529)
!696 = !DILocation(line: 227, column: 3, scope: !529)
!697 = distinct !DISubprogram(name: "error_exit", scope: !380, file: !380, line: 61, type: !538, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !379, retainedNodes: !653)
!698 = !DILocalVariable(name: "cinfo", arg: 1, scope: !697, file: !380, line: 61, type: !540)
!699 = !DILocation(line: 61, column: 26, scope: !697)
!700 = !DILocation(line: 64, column: 5, scope: !697)
!701 = !DILocation(line: 64, column: 12, scope: !697)
!702 = !DILocation(line: 64, column: 17, scope: !697)
!703 = !DILocation(line: 64, column: 34, scope: !697)
!704 = !DILocation(line: 64, column: 3, scope: !697)
!705 = !DILocation(line: 67, column: 16, scope: !697)
!706 = !DILocation(line: 67, column: 3, scope: !697)
!707 = !DILocation(line: 69, column: 3, scope: !697)
!708 = distinct !DISubprogram(name: "emit_message", scope: !380, file: !380, line: 104, type: !609, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !379, retainedNodes: !653)
!709 = !DILocalVariable(name: "cinfo", arg: 1, scope: !708, file: !380, line: 104, type: !540)
!710 = !DILocation(line: 104, column: 28, scope: !708)
!711 = !DILocalVariable(name: "msg_level", arg: 2, scope: !708, file: !380, line: 104, type: !508)
!712 = !DILocation(line: 104, column: 39, scope: !708)
!713 = !DILocalVariable(name: "err", scope: !708, file: !380, line: 106, type: !532)
!714 = !DILocation(line: 106, column: 27, scope: !708)
!715 = !DILocation(line: 106, column: 33, scope: !708)
!716 = !DILocation(line: 106, column: 40, scope: !708)
!717 = !DILocation(line: 108, column: 7, scope: !718)
!718 = distinct !DILexicalBlock(scope: !708, file: !380, line: 108, column: 7)
!719 = !DILocation(line: 108, column: 17, scope: !718)
!720 = !DILocation(line: 113, column: 9, scope: !721)
!721 = distinct !DILexicalBlock(scope: !722, file: !380, line: 113, column: 9)
!722 = distinct !DILexicalBlock(scope: !718, file: !380, line: 108, column: 22)
!723 = !DILocation(line: 113, column: 14, scope: !721)
!724 = !DILocation(line: 113, column: 27, scope: !721)
!725 = !DILocation(line: 113, column: 32, scope: !721)
!726 = !DILocation(line: 113, column: 35, scope: !721)
!727 = !DILocation(line: 113, column: 40, scope: !721)
!728 = !DILocation(line: 113, column: 52, scope: !721)
!729 = !DILocation(line: 114, column: 9, scope: !721)
!730 = !DILocation(line: 114, column: 14, scope: !721)
!731 = !DILocation(line: 114, column: 31, scope: !721)
!732 = !DILocation(line: 114, column: 7, scope: !721)
!733 = !DILocation(line: 116, column: 5, scope: !722)
!734 = !DILocation(line: 116, column: 10, scope: !722)
!735 = !DILocation(line: 116, column: 22, scope: !722)
!736 = !DILocation(line: 117, column: 3, scope: !722)
!737 = !DILocation(line: 119, column: 9, scope: !738)
!738 = distinct !DILexicalBlock(scope: !739, file: !380, line: 119, column: 9)
!739 = distinct !DILexicalBlock(scope: !718, file: !380, line: 117, column: 10)
!740 = !DILocation(line: 119, column: 14, scope: !738)
!741 = !DILocation(line: 119, column: 29, scope: !738)
!742 = !DILocation(line: 119, column: 26, scope: !738)
!743 = !DILocation(line: 120, column: 9, scope: !738)
!744 = !DILocation(line: 120, column: 14, scope: !738)
!745 = !DILocation(line: 120, column: 31, scope: !738)
!746 = !DILocation(line: 120, column: 7, scope: !738)
!747 = !DILocation(line: 122, column: 1, scope: !708)
!748 = distinct !DISubprogram(name: "output_message", scope: !380, file: !380, line: 80, type: !538, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !379, retainedNodes: !653)
!749 = !DILocalVariable(name: "cinfo", arg: 1, scope: !748, file: !380, line: 80, type: !540)
!750 = !DILocation(line: 80, column: 30, scope: !748)
!751 = !DILocalVariable(name: "buffer", scope: !748, file: !380, line: 82, type: !752)
!752 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1600, elements: !753)
!753 = !{!754}
!754 = !DISubrange(count: 200)
!755 = !DILocation(line: 82, column: 8, scope: !748)
!756 = !DILocation(line: 85, column: 5, scope: !748)
!757 = !DILocation(line: 85, column: 12, scope: !748)
!758 = !DILocation(line: 85, column: 17, scope: !748)
!759 = !DILocation(line: 85, column: 34, scope: !748)
!760 = !DILocation(line: 85, column: 41, scope: !748)
!761 = !DILocation(line: 85, column: 3, scope: !748)
!762 = !DILocation(line: 88, column: 11, scope: !748)
!763 = !DILocation(line: 88, column: 27, scope: !748)
!764 = !DILocation(line: 88, column: 3, scope: !748)
!765 = !DILocation(line: 89, column: 1, scope: !748)
!766 = distinct !DISubprogram(name: "format_message", scope: !380, file: !380, line: 133, type: !629, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !379, retainedNodes: !653)
!767 = !DILocalVariable(name: "cinfo", arg: 1, scope: !766, file: !380, line: 133, type: !540)
!768 = !DILocation(line: 133, column: 30, scope: !766)
!769 = !DILocalVariable(name: "buffer", arg: 2, scope: !766, file: !380, line: 133, type: !631)
!770 = !DILocation(line: 133, column: 44, scope: !766)
!771 = !DILocalVariable(name: "err", scope: !766, file: !380, line: 135, type: !532)
!772 = !DILocation(line: 135, column: 27, scope: !766)
!773 = !DILocation(line: 135, column: 33, scope: !766)
!774 = !DILocation(line: 135, column: 40, scope: !766)
!775 = !DILocalVariable(name: "msg_code", scope: !766, file: !380, line: 136, type: !508)
!776 = !DILocation(line: 136, column: 7, scope: !766)
!777 = !DILocation(line: 136, column: 18, scope: !766)
!778 = !DILocation(line: 136, column: 23, scope: !766)
!779 = !DILocalVariable(name: "msgtext", scope: !766, file: !380, line: 137, type: !517)
!780 = !DILocation(line: 137, column: 16, scope: !766)
!781 = !DILocalVariable(name: "msgptr", scope: !766, file: !380, line: 138, type: !517)
!782 = !DILocation(line: 138, column: 16, scope: !766)
!783 = !DILocalVariable(name: "ch", scope: !766, file: !380, line: 139, type: !4)
!784 = !DILocation(line: 139, column: 8, scope: !766)
!785 = !DILocalVariable(name: "isstring", scope: !766, file: !380, line: 140, type: !590)
!786 = !DILocation(line: 140, column: 11, scope: !766)
!787 = !DILocation(line: 143, column: 7, scope: !788)
!788 = distinct !DILexicalBlock(scope: !766, file: !380, line: 143, column: 7)
!789 = !DILocation(line: 143, column: 16, scope: !788)
!790 = !DILocation(line: 143, column: 20, scope: !788)
!791 = !DILocation(line: 143, column: 23, scope: !788)
!792 = !DILocation(line: 143, column: 35, scope: !788)
!793 = !DILocation(line: 143, column: 40, scope: !788)
!794 = !DILocation(line: 143, column: 32, scope: !788)
!795 = !DILocation(line: 144, column: 15, scope: !796)
!796 = distinct !DILexicalBlock(scope: !788, file: !380, line: 143, column: 59)
!797 = !DILocation(line: 144, column: 20, scope: !796)
!798 = !DILocation(line: 144, column: 39, scope: !796)
!799 = !DILocation(line: 144, column: 13, scope: !796)
!800 = !DILocation(line: 145, column: 3, scope: !796)
!801 = !DILocation(line: 145, column: 14, scope: !802)
!802 = distinct !DILexicalBlock(scope: !788, file: !380, line: 145, column: 14)
!803 = !DILocation(line: 145, column: 19, scope: !802)
!804 = !DILocation(line: 145, column: 39, scope: !802)
!805 = !DILocation(line: 145, column: 47, scope: !802)
!806 = !DILocation(line: 146, column: 7, scope: !802)
!807 = !DILocation(line: 146, column: 19, scope: !802)
!808 = !DILocation(line: 146, column: 24, scope: !802)
!809 = !DILocation(line: 146, column: 16, scope: !802)
!810 = !DILocation(line: 146, column: 44, scope: !802)
!811 = !DILocation(line: 147, column: 7, scope: !802)
!812 = !DILocation(line: 147, column: 19, scope: !802)
!813 = !DILocation(line: 147, column: 24, scope: !802)
!814 = !DILocation(line: 147, column: 16, scope: !802)
!815 = !DILocation(line: 148, column: 15, scope: !816)
!816 = distinct !DILexicalBlock(scope: !802, file: !380, line: 147, column: 44)
!817 = !DILocation(line: 148, column: 20, scope: !816)
!818 = !DILocation(line: 148, column: 40, scope: !816)
!819 = !DILocation(line: 148, column: 51, scope: !816)
!820 = !DILocation(line: 148, column: 56, scope: !816)
!821 = !DILocation(line: 148, column: 49, scope: !816)
!822 = !DILocation(line: 148, column: 13, scope: !816)
!823 = !DILocation(line: 149, column: 3, scope: !816)
!824 = !DILocation(line: 152, column: 7, scope: !825)
!825 = distinct !DILexicalBlock(scope: !766, file: !380, line: 152, column: 7)
!826 = !DILocation(line: 152, column: 15, scope: !825)
!827 = !DILocation(line: 153, column: 26, scope: !828)
!828 = distinct !DILexicalBlock(scope: !825, file: !380, line: 152, column: 24)
!829 = !DILocation(line: 153, column: 5, scope: !828)
!830 = !DILocation(line: 153, column: 10, scope: !828)
!831 = !DILocation(line: 153, column: 24, scope: !828)
!832 = !DILocation(line: 154, column: 15, scope: !828)
!833 = !DILocation(line: 154, column: 20, scope: !828)
!834 = !DILocation(line: 154, column: 13, scope: !828)
!835 = !DILocation(line: 155, column: 3, scope: !828)
!836 = !DILocation(line: 158, column: 12, scope: !766)
!837 = !DILocation(line: 159, column: 12, scope: !766)
!838 = !DILocation(line: 159, column: 10, scope: !766)
!839 = !DILocation(line: 160, column: 3, scope: !766)
!840 = !DILocation(line: 160, column: 23, scope: !766)
!841 = !DILocation(line: 160, column: 16, scope: !766)
!842 = !DILocation(line: 160, column: 14, scope: !766)
!843 = !DILocation(line: 160, column: 10, scope: !766)
!844 = !DILocation(line: 160, column: 27, scope: !766)
!845 = !DILocation(line: 161, column: 9, scope: !846)
!846 = distinct !DILexicalBlock(scope: !847, file: !380, line: 161, column: 9)
!847 = distinct !DILexicalBlock(scope: !766, file: !380, line: 160, column: 36)
!848 = !DILocation(line: 161, column: 12, scope: !846)
!849 = !DILocation(line: 162, column: 12, scope: !850)
!850 = distinct !DILexicalBlock(scope: !851, file: !380, line: 162, column: 11)
!851 = distinct !DILexicalBlock(scope: !846, file: !380, line: 161, column: 20)
!852 = !DILocation(line: 162, column: 11, scope: !850)
!853 = !DILocation(line: 162, column: 19, scope: !850)
!854 = !DILocation(line: 162, column: 36, scope: !850)
!855 = !DILocation(line: 162, column: 27, scope: !850)
!856 = !DILocation(line: 163, column: 7, scope: !851)
!857 = distinct !{!857, !839, !858, !859}
!858 = !DILocation(line: 165, column: 3, scope: !766)
!859 = !{!"llvm.loop.mustprogress"}
!860 = !DILocation(line: 168, column: 7, scope: !861)
!861 = distinct !DILexicalBlock(scope: !766, file: !380, line: 168, column: 7)
!862 = !DILocation(line: 169, column: 13, scope: !861)
!863 = !DILocation(line: 169, column: 21, scope: !861)
!864 = !DILocation(line: 169, column: 30, scope: !861)
!865 = !DILocation(line: 169, column: 35, scope: !861)
!866 = !DILocation(line: 169, column: 5, scope: !861)
!867 = !DILocation(line: 171, column: 13, scope: !861)
!868 = !DILocation(line: 171, column: 21, scope: !861)
!869 = !DILocation(line: 172, column: 6, scope: !861)
!870 = !DILocation(line: 172, column: 11, scope: !861)
!871 = !DILocation(line: 172, column: 26, scope: !861)
!872 = !DILocation(line: 172, column: 31, scope: !861)
!873 = !DILocation(line: 173, column: 6, scope: !861)
!874 = !DILocation(line: 173, column: 11, scope: !861)
!875 = !DILocation(line: 173, column: 26, scope: !861)
!876 = !DILocation(line: 173, column: 31, scope: !861)
!877 = !DILocation(line: 174, column: 6, scope: !861)
!878 = !DILocation(line: 174, column: 11, scope: !861)
!879 = !DILocation(line: 174, column: 26, scope: !861)
!880 = !DILocation(line: 174, column: 31, scope: !861)
!881 = !DILocation(line: 175, column: 6, scope: !861)
!882 = !DILocation(line: 175, column: 11, scope: !861)
!883 = !DILocation(line: 175, column: 26, scope: !861)
!884 = !DILocation(line: 175, column: 31, scope: !861)
!885 = !DILocation(line: 171, column: 5, scope: !861)
!886 = !DILocation(line: 176, column: 1, scope: !766)
!887 = distinct !DISubprogram(name: "reset_error_mgr", scope: !380, file: !380, line: 188, type: !538, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !379, retainedNodes: !653)
!888 = !DILocalVariable(name: "cinfo", arg: 1, scope: !887, file: !380, line: 188, type: !540)
!889 = !DILocation(line: 188, column: 31, scope: !887)
!890 = !DILocation(line: 190, column: 3, scope: !887)
!891 = !DILocation(line: 190, column: 10, scope: !887)
!892 = !DILocation(line: 190, column: 15, scope: !887)
!893 = !DILocation(line: 190, column: 28, scope: !887)
!894 = !DILocation(line: 192, column: 3, scope: !887)
!895 = !DILocation(line: 192, column: 10, scope: !887)
!896 = !DILocation(line: 192, column: 15, scope: !887)
!897 = !DILocation(line: 192, column: 24, scope: !887)
!898 = !DILocation(line: 193, column: 1, scope: !887)
