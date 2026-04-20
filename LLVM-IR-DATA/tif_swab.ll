; ModuleID = 'cBench/consumer_tiff2bw/src/tif_swab.c'
source_filename = "cBench/consumer_tiff2bw/src/tif_swab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TIFFBitRevTable = internal constant [256 x i8] c"\00\80@\C0 \A0`\E0\10\90P\D00\B0p\F0\08\88H\C8(\A8h\E8\18\98X\D88\B8x\F8\04\84D\C4$\A4d\E4\14\94T\D44\B4t\F4\0C\8CL\CC,\ACl\EC\1C\9C\\\DC<\BC|\FC\02\82B\C2\22\A2b\E2\12\92R\D22\B2r\F2\0A\8AJ\CA*\AAj\EA\1A\9AZ\DA:\BAz\FA\06\86F\C6&\A6f\E6\16\96V\D66\B6v\F6\0E\8EN\CE.\AEn\EE\1E\9E^\DE>\BE~\FE\01\81A\C1!\A1a\E1\11\91Q\D11\B1q\F1\09\89I\C9)\A9i\E9\19\99Y\D99\B9y\F9\05\85E\C5%\A5e\E5\15\95U\D55\B5u\F5\0D\8DM\CD-\ADm\ED\1D\9D]\DD=\BD}\FD\03\83C\C3#\A3c\E3\13\93S\D33\B3s\F3\0B\8BK\CB+\ABk\EB\1B\9B[\DB;\BB{\FB\07\87G\C7'\A7g\E7\17\97W\D77\B7w\F7\0F\8FO\CF/\AFo\EF\1F\9F_\DF?\BF\7F\FF", align 16, !dbg !0
@TIFFNoBitRevTable = internal constant [256 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~\7F\80\81\82\83\84\85\86\87\88\89\8A\8B\8C\8D\8E\8F\90\91\92\93\94\95\96\97\98\99\9A\9B\9C\9D\9E\9F\A0\A1\A2\A3\A4\A5\A6\A7\A8\A9\AA\AB\AC\AD\AE\AF\B0\B1\B2\B3\B4\B5\B6\B7\B8\B9\BA\BB\BC\BD\BE\BF\C0\C1\C2\C3\C4\C5\C6\C7\C8\C9\CA\CB\CC\CD\CE\CF\D0\D1\D2\D3\D4\D5\D6\D7\D8\D9\DA\DB\DC\DD\DE\DF\E0\E1\E2\E3\E4\E5\E6\E7\E8\E9\EA\EB\EC\ED\EE\EF\F0\F1\F2\F3\F4\F5\F6\F7\F8\F9\FA\FB\FC\FD\FE\FF", align 16, !dbg !17

; Function Attrs: noinline nounwind uwtable
define dso_local void @TIFFSwabShort(ptr noundef %0) #0 !dbg !31 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !38, !DIExpression(), !39)
    #dbg_declare(ptr %3, !40, !DIExpression(), !41)
  %5 = load ptr, ptr %2, align 8, !dbg !42
  store ptr %5, ptr %3, align 8, !dbg !41
    #dbg_declare(ptr %4, !43, !DIExpression(), !45)
  %6 = load ptr, ptr %3, align 8, !dbg !46
  %7 = getelementptr inbounds i8, ptr %6, i64 1, !dbg !46
  %8 = load i8, ptr %7, align 1, !dbg !46
  %9 = zext i8 %8 to i32, !dbg !46
  store i32 %9, ptr %4, align 4, !dbg !47
  %10 = load ptr, ptr %3, align 8, !dbg !48
  %11 = getelementptr inbounds i8, ptr %10, i64 0, !dbg !48
  %12 = load i8, ptr %11, align 1, !dbg !48
  %13 = load ptr, ptr %3, align 8, !dbg !49
  %14 = getelementptr inbounds i8, ptr %13, i64 1, !dbg !49
  store i8 %12, ptr %14, align 1, !dbg !50
  %15 = load i32, ptr %4, align 4, !dbg !51
  %16 = trunc i32 %15 to i8, !dbg !51
  %17 = load ptr, ptr %3, align 8, !dbg !52
  %18 = getelementptr inbounds i8, ptr %17, i64 0, !dbg !52
  store i8 %16, ptr %18, align 1, !dbg !53
  ret void, !dbg !54
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @TIFFSwabLong(ptr noundef %0) #0 !dbg !55 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !58, !DIExpression(), !59)
    #dbg_declare(ptr %3, !60, !DIExpression(), !61)
  %5 = load ptr, ptr %2, align 8, !dbg !62
  store ptr %5, ptr %3, align 8, !dbg !61
    #dbg_declare(ptr %4, !63, !DIExpression(), !64)
  %6 = load ptr, ptr %3, align 8, !dbg !65
  %7 = getelementptr inbounds i8, ptr %6, i64 3, !dbg !65
  %8 = load i8, ptr %7, align 1, !dbg !65
  %9 = zext i8 %8 to i32, !dbg !65
  store i32 %9, ptr %4, align 4, !dbg !66
  %10 = load ptr, ptr %3, align 8, !dbg !67
  %11 = getelementptr inbounds i8, ptr %10, i64 0, !dbg !67
  %12 = load i8, ptr %11, align 1, !dbg !67
  %13 = load ptr, ptr %3, align 8, !dbg !68
  %14 = getelementptr inbounds i8, ptr %13, i64 3, !dbg !68
  store i8 %12, ptr %14, align 1, !dbg !69
  %15 = load i32, ptr %4, align 4, !dbg !70
  %16 = trunc i32 %15 to i8, !dbg !70
  %17 = load ptr, ptr %3, align 8, !dbg !71
  %18 = getelementptr inbounds i8, ptr %17, i64 0, !dbg !71
  store i8 %16, ptr %18, align 1, !dbg !72
  %19 = load ptr, ptr %3, align 8, !dbg !73
  %20 = getelementptr inbounds i8, ptr %19, i64 2, !dbg !73
  %21 = load i8, ptr %20, align 1, !dbg !73
  %22 = zext i8 %21 to i32, !dbg !73
  store i32 %22, ptr %4, align 4, !dbg !74
  %23 = load ptr, ptr %3, align 8, !dbg !75
  %24 = getelementptr inbounds i8, ptr %23, i64 1, !dbg !75
  %25 = load i8, ptr %24, align 1, !dbg !75
  %26 = load ptr, ptr %3, align 8, !dbg !76
  %27 = getelementptr inbounds i8, ptr %26, i64 2, !dbg !76
  store i8 %25, ptr %27, align 1, !dbg !77
  %28 = load i32, ptr %4, align 4, !dbg !78
  %29 = trunc i32 %28 to i8, !dbg !78
  %30 = load ptr, ptr %3, align 8, !dbg !79
  %31 = getelementptr inbounds i8, ptr %30, i64 1, !dbg !79
  store i8 %29, ptr %31, align 1, !dbg !80
  ret void, !dbg !81
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @TIFFSwabArrayOfShort(ptr noundef %0, i64 noundef %1) #0 !dbg !82 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !88, !DIExpression(), !89)
  store i64 %1, ptr %4, align 8
    #dbg_declare(ptr %4, !90, !DIExpression(), !91)
    #dbg_declare(ptr %5, !92, !DIExpression(), !93)
    #dbg_declare(ptr %6, !94, !DIExpression(), !95)
  br label %7, !dbg !96

7:                                                ; preds = %11, %2
  %8 = load i64, ptr %4, align 8, !dbg !97
  %9 = add i64 %8, -1, !dbg !97
  store i64 %9, ptr %4, align 8, !dbg !97
  %10 = icmp ugt i64 %8, 0, !dbg !98
  br i1 %10, label %11, label %28, !dbg !96

11:                                               ; preds = %7
  %12 = load ptr, ptr %3, align 8, !dbg !99
  store ptr %12, ptr %5, align 8, !dbg !101
  %13 = load ptr, ptr %5, align 8, !dbg !102
  %14 = getelementptr inbounds i8, ptr %13, i64 1, !dbg !102
  %15 = load i8, ptr %14, align 1, !dbg !102
  %16 = zext i8 %15 to i32, !dbg !102
  store i32 %16, ptr %6, align 4, !dbg !103
  %17 = load ptr, ptr %5, align 8, !dbg !104
  %18 = getelementptr inbounds i8, ptr %17, i64 0, !dbg !104
  %19 = load i8, ptr %18, align 1, !dbg !104
  %20 = load ptr, ptr %5, align 8, !dbg !105
  %21 = getelementptr inbounds i8, ptr %20, i64 1, !dbg !105
  store i8 %19, ptr %21, align 1, !dbg !106
  %22 = load i32, ptr %6, align 4, !dbg !107
  %23 = trunc i32 %22 to i8, !dbg !107
  %24 = load ptr, ptr %5, align 8, !dbg !108
  %25 = getelementptr inbounds i8, ptr %24, i64 0, !dbg !108
  store i8 %23, ptr %25, align 1, !dbg !109
  %26 = load ptr, ptr %3, align 8, !dbg !110
  %27 = getelementptr inbounds nuw i16, ptr %26, i32 1, !dbg !110
  store ptr %27, ptr %3, align 8, !dbg !110
  br label %7, !dbg !96, !llvm.loop !111

28:                                               ; preds = %7
  ret void, !dbg !114
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @TIFFSwabArrayOfLong(ptr noundef %0, i64 noundef %1) #0 !dbg !115 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !118, !DIExpression(), !119)
  store i64 %1, ptr %4, align 8
    #dbg_declare(ptr %4, !120, !DIExpression(), !121)
    #dbg_declare(ptr %5, !122, !DIExpression(), !123)
    #dbg_declare(ptr %6, !124, !DIExpression(), !125)
  br label %7, !dbg !126

7:                                                ; preds = %11, %2
  %8 = load i64, ptr %4, align 8, !dbg !127
  %9 = add i64 %8, -1, !dbg !127
  store i64 %9, ptr %4, align 8, !dbg !127
  %10 = icmp ugt i64 %8, 0, !dbg !128
  br i1 %10, label %11, label %41, !dbg !126

11:                                               ; preds = %7
  %12 = load ptr, ptr %3, align 8, !dbg !129
  store ptr %12, ptr %5, align 8, !dbg !131
  %13 = load ptr, ptr %5, align 8, !dbg !132
  %14 = getelementptr inbounds i8, ptr %13, i64 3, !dbg !132
  %15 = load i8, ptr %14, align 1, !dbg !132
  %16 = zext i8 %15 to i32, !dbg !132
  store i32 %16, ptr %6, align 4, !dbg !133
  %17 = load ptr, ptr %5, align 8, !dbg !134
  %18 = getelementptr inbounds i8, ptr %17, i64 0, !dbg !134
  %19 = load i8, ptr %18, align 1, !dbg !134
  %20 = load ptr, ptr %5, align 8, !dbg !135
  %21 = getelementptr inbounds i8, ptr %20, i64 3, !dbg !135
  store i8 %19, ptr %21, align 1, !dbg !136
  %22 = load i32, ptr %6, align 4, !dbg !137
  %23 = trunc i32 %22 to i8, !dbg !137
  %24 = load ptr, ptr %5, align 8, !dbg !138
  %25 = getelementptr inbounds i8, ptr %24, i64 0, !dbg !138
  store i8 %23, ptr %25, align 1, !dbg !139
  %26 = load ptr, ptr %5, align 8, !dbg !140
  %27 = getelementptr inbounds i8, ptr %26, i64 2, !dbg !140
  %28 = load i8, ptr %27, align 1, !dbg !140
  %29 = zext i8 %28 to i32, !dbg !140
  store i32 %29, ptr %6, align 4, !dbg !141
  %30 = load ptr, ptr %5, align 8, !dbg !142
  %31 = getelementptr inbounds i8, ptr %30, i64 1, !dbg !142
  %32 = load i8, ptr %31, align 1, !dbg !142
  %33 = load ptr, ptr %5, align 8, !dbg !143
  %34 = getelementptr inbounds i8, ptr %33, i64 2, !dbg !143
  store i8 %32, ptr %34, align 1, !dbg !144
  %35 = load i32, ptr %6, align 4, !dbg !145
  %36 = trunc i32 %35 to i8, !dbg !145
  %37 = load ptr, ptr %5, align 8, !dbg !146
  %38 = getelementptr inbounds i8, ptr %37, i64 1, !dbg !146
  store i8 %36, ptr %38, align 1, !dbg !147
  %39 = load ptr, ptr %3, align 8, !dbg !148
  %40 = getelementptr inbounds nuw i32, ptr %39, i32 1, !dbg !148
  store ptr %40, ptr %3, align 8, !dbg !148
  br label %7, !dbg !126, !llvm.loop !149

41:                                               ; preds = %7
  ret void, !dbg !151
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @TIFFSwabDouble(ptr noundef %0) #0 !dbg !152 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !157, !DIExpression(), !158)
    #dbg_declare(ptr %3, !159, !DIExpression(), !160)
  %5 = load ptr, ptr %2, align 8, !dbg !161
  store ptr %5, ptr %3, align 8, !dbg !160
    #dbg_declare(ptr %4, !162, !DIExpression(), !163)
  %6 = load ptr, ptr %3, align 8, !dbg !164
  call void @TIFFSwabArrayOfLong(ptr noundef %6, i64 noundef 2), !dbg !165
  %7 = load ptr, ptr %3, align 8, !dbg !166
  %8 = getelementptr inbounds i32, ptr %7, i64 0, !dbg !166
  %9 = load i32, ptr %8, align 4, !dbg !166
  store i32 %9, ptr %4, align 4, !dbg !167
  %10 = load ptr, ptr %3, align 8, !dbg !168
  %11 = getelementptr inbounds i32, ptr %10, i64 1, !dbg !168
  %12 = load i32, ptr %11, align 4, !dbg !168
  %13 = load ptr, ptr %3, align 8, !dbg !169
  %14 = getelementptr inbounds i32, ptr %13, i64 0, !dbg !169
  store i32 %12, ptr %14, align 4, !dbg !170
  %15 = load i32, ptr %4, align 4, !dbg !171
  %16 = load ptr, ptr %3, align 8, !dbg !172
  %17 = getelementptr inbounds i32, ptr %16, i64 1, !dbg !172
  store i32 %15, ptr %17, align 4, !dbg !173
  ret void, !dbg !174
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @TIFFSwabArrayOfDouble(ptr noundef %0, i64 noundef %1) #0 !dbg !175 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !178, !DIExpression(), !179)
  store i64 %1, ptr %4, align 8
    #dbg_declare(ptr %4, !180, !DIExpression(), !181)
    #dbg_declare(ptr %5, !182, !DIExpression(), !183)
  %7 = load ptr, ptr %3, align 8, !dbg !184
  store ptr %7, ptr %5, align 8, !dbg !183
    #dbg_declare(ptr %6, !185, !DIExpression(), !186)
  %8 = load ptr, ptr %5, align 8, !dbg !187
  %9 = load i64, ptr %4, align 8, !dbg !188
  %10 = load i64, ptr %4, align 8, !dbg !189
  %11 = add i64 %9, %10, !dbg !190
  call void @TIFFSwabArrayOfLong(ptr noundef %8, i64 noundef %11), !dbg !191
  br label %12, !dbg !192

12:                                               ; preds = %16, %2
  %13 = load i64, ptr %4, align 8, !dbg !193
  %14 = add i64 %13, -1, !dbg !193
  store i64 %14, ptr %4, align 8, !dbg !193
  %15 = icmp ugt i64 %13, 0, !dbg !194
  br i1 %15, label %16, label %30, !dbg !192

16:                                               ; preds = %12
  %17 = load ptr, ptr %5, align 8, !dbg !195
  %18 = getelementptr inbounds i32, ptr %17, i64 0, !dbg !195
  %19 = load i32, ptr %18, align 4, !dbg !195
  store i32 %19, ptr %6, align 4, !dbg !197
  %20 = load ptr, ptr %5, align 8, !dbg !198
  %21 = getelementptr inbounds i32, ptr %20, i64 1, !dbg !198
  %22 = load i32, ptr %21, align 4, !dbg !198
  %23 = load ptr, ptr %5, align 8, !dbg !199
  %24 = getelementptr inbounds i32, ptr %23, i64 0, !dbg !199
  store i32 %22, ptr %24, align 4, !dbg !200
  %25 = load i32, ptr %6, align 4, !dbg !201
  %26 = load ptr, ptr %5, align 8, !dbg !202
  %27 = getelementptr inbounds i32, ptr %26, i64 1, !dbg !202
  store i32 %25, ptr %27, align 4, !dbg !203
  %28 = load ptr, ptr %5, align 8, !dbg !204
  %29 = getelementptr inbounds i32, ptr %28, i64 2, !dbg !204
  store ptr %29, ptr %5, align 8, !dbg !204
  br label %12, !dbg !192, !llvm.loop !205

30:                                               ; preds = %12
  ret void, !dbg !207
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @TIFFGetBitRevTable(i32 noundef %0) #0 !dbg !208 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
    #dbg_declare(ptr %2, !212, !DIExpression(), !213)
  %3 = load i32, ptr %2, align 4, !dbg !214
  %4 = icmp ne i32 %3, 0, !dbg !214
  %5 = zext i1 %4 to i64, !dbg !214
  %6 = select i1 %4, ptr @TIFFBitRevTable, ptr @TIFFNoBitRevTable, !dbg !214
  ret ptr %6, !dbg !215
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @TIFFReverseBits(ptr noundef %0, i64 noundef %1) #0 !dbg !216 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !219, !DIExpression(), !220)
  store i64 %1, ptr %4, align 8
    #dbg_declare(ptr %4, !221, !DIExpression(), !222)
  br label %5, !dbg !223

5:                                                ; preds = %75, %2
  %6 = load i64, ptr %4, align 8, !dbg !224
  %7 = icmp ugt i64 %6, 8, !dbg !227
  br i1 %7, label %8, label %78, !dbg !228

8:                                                ; preds = %5
  %9 = load ptr, ptr %3, align 8, !dbg !229
  %10 = getelementptr inbounds i8, ptr %9, i64 0, !dbg !229
  %11 = load i8, ptr %10, align 1, !dbg !229
  %12 = zext i8 %11 to i64, !dbg !231
  %13 = getelementptr inbounds nuw [256 x i8], ptr @TIFFBitRevTable, i64 0, i64 %12, !dbg !231
  %14 = load i8, ptr %13, align 1, !dbg !231
  %15 = load ptr, ptr %3, align 8, !dbg !232
  %16 = getelementptr inbounds i8, ptr %15, i64 0, !dbg !232
  store i8 %14, ptr %16, align 1, !dbg !233
  %17 = load ptr, ptr %3, align 8, !dbg !234
  %18 = getelementptr inbounds i8, ptr %17, i64 1, !dbg !234
  %19 = load i8, ptr %18, align 1, !dbg !234
  %20 = zext i8 %19 to i64, !dbg !235
  %21 = getelementptr inbounds nuw [256 x i8], ptr @TIFFBitRevTable, i64 0, i64 %20, !dbg !235
  %22 = load i8, ptr %21, align 1, !dbg !235
  %23 = load ptr, ptr %3, align 8, !dbg !236
  %24 = getelementptr inbounds i8, ptr %23, i64 1, !dbg !236
  store i8 %22, ptr %24, align 1, !dbg !237
  %25 = load ptr, ptr %3, align 8, !dbg !238
  %26 = getelementptr inbounds i8, ptr %25, i64 2, !dbg !238
  %27 = load i8, ptr %26, align 1, !dbg !238
  %28 = zext i8 %27 to i64, !dbg !239
  %29 = getelementptr inbounds nuw [256 x i8], ptr @TIFFBitRevTable, i64 0, i64 %28, !dbg !239
  %30 = load i8, ptr %29, align 1, !dbg !239
  %31 = load ptr, ptr %3, align 8, !dbg !240
  %32 = getelementptr inbounds i8, ptr %31, i64 2, !dbg !240
  store i8 %30, ptr %32, align 1, !dbg !241
  %33 = load ptr, ptr %3, align 8, !dbg !242
  %34 = getelementptr inbounds i8, ptr %33, i64 3, !dbg !242
  %35 = load i8, ptr %34, align 1, !dbg !242
  %36 = zext i8 %35 to i64, !dbg !243
  %37 = getelementptr inbounds nuw [256 x i8], ptr @TIFFBitRevTable, i64 0, i64 %36, !dbg !243
  %38 = load i8, ptr %37, align 1, !dbg !243
  %39 = load ptr, ptr %3, align 8, !dbg !244
  %40 = getelementptr inbounds i8, ptr %39, i64 3, !dbg !244
  store i8 %38, ptr %40, align 1, !dbg !245
  %41 = load ptr, ptr %3, align 8, !dbg !246
  %42 = getelementptr inbounds i8, ptr %41, i64 4, !dbg !246
  %43 = load i8, ptr %42, align 1, !dbg !246
  %44 = zext i8 %43 to i64, !dbg !247
  %45 = getelementptr inbounds nuw [256 x i8], ptr @TIFFBitRevTable, i64 0, i64 %44, !dbg !247
  %46 = load i8, ptr %45, align 1, !dbg !247
  %47 = load ptr, ptr %3, align 8, !dbg !248
  %48 = getelementptr inbounds i8, ptr %47, i64 4, !dbg !248
  store i8 %46, ptr %48, align 1, !dbg !249
  %49 = load ptr, ptr %3, align 8, !dbg !250
  %50 = getelementptr inbounds i8, ptr %49, i64 5, !dbg !250
  %51 = load i8, ptr %50, align 1, !dbg !250
  %52 = zext i8 %51 to i64, !dbg !251
  %53 = getelementptr inbounds nuw [256 x i8], ptr @TIFFBitRevTable, i64 0, i64 %52, !dbg !251
  %54 = load i8, ptr %53, align 1, !dbg !251
  %55 = load ptr, ptr %3, align 8, !dbg !252
  %56 = getelementptr inbounds i8, ptr %55, i64 5, !dbg !252
  store i8 %54, ptr %56, align 1, !dbg !253
  %57 = load ptr, ptr %3, align 8, !dbg !254
  %58 = getelementptr inbounds i8, ptr %57, i64 6, !dbg !254
  %59 = load i8, ptr %58, align 1, !dbg !254
  %60 = zext i8 %59 to i64, !dbg !255
  %61 = getelementptr inbounds nuw [256 x i8], ptr @TIFFBitRevTable, i64 0, i64 %60, !dbg !255
  %62 = load i8, ptr %61, align 1, !dbg !255
  %63 = load ptr, ptr %3, align 8, !dbg !256
  %64 = getelementptr inbounds i8, ptr %63, i64 6, !dbg !256
  store i8 %62, ptr %64, align 1, !dbg !257
  %65 = load ptr, ptr %3, align 8, !dbg !258
  %66 = getelementptr inbounds i8, ptr %65, i64 7, !dbg !258
  %67 = load i8, ptr %66, align 1, !dbg !258
  %68 = zext i8 %67 to i64, !dbg !259
  %69 = getelementptr inbounds nuw [256 x i8], ptr @TIFFBitRevTable, i64 0, i64 %68, !dbg !259
  %70 = load i8, ptr %69, align 1, !dbg !259
  %71 = load ptr, ptr %3, align 8, !dbg !260
  %72 = getelementptr inbounds i8, ptr %71, i64 7, !dbg !260
  store i8 %70, ptr %72, align 1, !dbg !261
  %73 = load ptr, ptr %3, align 8, !dbg !262
  %74 = getelementptr inbounds i8, ptr %73, i64 8, !dbg !262
  store ptr %74, ptr %3, align 8, !dbg !262
  br label %75, !dbg !263

75:                                               ; preds = %8
  %76 = load i64, ptr %4, align 8, !dbg !264
  %77 = sub i64 %76, 8, !dbg !264
  store i64 %77, ptr %4, align 8, !dbg !264
  br label %5, !dbg !265, !llvm.loop !266

78:                                               ; preds = %5
  br label %79, !dbg !268

79:                                               ; preds = %83, %78
  %80 = load i64, ptr %4, align 8, !dbg !269
  %81 = add i64 %80, -1, !dbg !269
  store i64 %81, ptr %4, align 8, !dbg !269
  %82 = icmp ugt i64 %80, 0, !dbg !270
  br i1 %82, label %83, label %92, !dbg !268

83:                                               ; preds = %79
  %84 = load ptr, ptr %3, align 8, !dbg !271
  %85 = load i8, ptr %84, align 1, !dbg !272
  %86 = zext i8 %85 to i64, !dbg !273
  %87 = getelementptr inbounds nuw [256 x i8], ptr @TIFFBitRevTable, i64 0, i64 %86, !dbg !273
  %88 = load i8, ptr %87, align 1, !dbg !273
  %89 = load ptr, ptr %3, align 8, !dbg !274
  store i8 %88, ptr %89, align 1, !dbg !275
  %90 = load ptr, ptr %3, align 8, !dbg !276
  %91 = getelementptr inbounds nuw i8, ptr %90, i32 1, !dbg !276
  store ptr %91, ptr %3, align 8, !dbg !276
  br label %79, !dbg !268, !llvm.loop !277

92:                                               ; preds = %79
  ret void, !dbg !278
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "TIFFBitRevTable", scope: !2, file: !3, line: 126, type: !19, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !16, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "cBench/consumer_tiff2bw/src/tif_swab.c", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "3d57f2bb6af13c27c71c295a8f2305e2")
!4 = !{!5, !11, !12}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_char", file: !7, line: 33, baseType: !8)
!7 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_char", file: !9, line: 31, baseType: !10)
!9 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!10 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !14, line: 66, baseType: !15)
!14 = !DIFile(filename: "cBench/consumer_tiff2bw/src/tiff.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "481b1fc81ef74ff952bf85d3f2d42aca")
!15 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!16 = !{!0, !17}
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(name: "TIFFNoBitRevTable", scope: !2, file: !3, line: 160, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 2048, elements: !21)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!21 = !{!22}
!22 = !DISubrange(count: 256)
!23 = !{i32 7, !"Dwarf Version", i32 5}
!24 = !{i32 2, !"Debug Info Version", i32 3}
!25 = !{i32 1, !"wchar_size", i32 4}
!26 = !{i32 8, !"PIC Level", i32 2}
!27 = !{i32 7, !"PIE Level", i32 2}
!28 = !{i32 7, !"uwtable", i32 2}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)"}
!31 = distinct !DISubprogram(name: "TIFFSwabShort", scope: !3, file: !3, line: 36, type: !32, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !37)
!32 = !DISubroutineType(types: !33)
!33 = !{null, !34}
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16", file: !14, line: 62, baseType: !36)
!36 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!37 = !{}
!38 = !DILocalVariable(name: "wp", arg: 1, scope: !31, file: !3, line: 36, type: !34)
!39 = !DILocation(line: 36, column: 23, scope: !31)
!40 = !DILocalVariable(name: "cp", scope: !31, file: !3, line: 38, type: !5)
!41 = !DILocation(line: 38, column: 19, scope: !31)
!42 = !DILocation(line: 38, column: 34, scope: !31)
!43 = !DILocalVariable(name: "t", scope: !31, file: !3, line: 39, type: !44)
!44 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!45 = !DILocation(line: 39, column: 6, scope: !31)
!46 = !DILocation(line: 41, column: 6, scope: !31)
!47 = !DILocation(line: 41, column: 4, scope: !31)
!48 = !DILocation(line: 41, column: 21, scope: !31)
!49 = !DILocation(line: 41, column: 13, scope: !31)
!50 = !DILocation(line: 41, column: 19, scope: !31)
!51 = !DILocation(line: 41, column: 36, scope: !31)
!52 = !DILocation(line: 41, column: 28, scope: !31)
!53 = !DILocation(line: 41, column: 34, scope: !31)
!54 = !DILocation(line: 42, column: 1, scope: !31)
!55 = distinct !DISubprogram(name: "TIFFSwabLong", scope: !3, file: !3, line: 47, type: !56, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !37)
!56 = !DISubroutineType(types: !57)
!57 = !{null, !12}
!58 = !DILocalVariable(name: "lp", arg: 1, scope: !55, file: !3, line: 47, type: !12)
!59 = !DILocation(line: 47, column: 22, scope: !55)
!60 = !DILocalVariable(name: "cp", scope: !55, file: !3, line: 49, type: !5)
!61 = !DILocation(line: 49, column: 19, scope: !55)
!62 = !DILocation(line: 49, column: 34, scope: !55)
!63 = !DILocalVariable(name: "t", scope: !55, file: !3, line: 50, type: !44)
!64 = !DILocation(line: 50, column: 6, scope: !55)
!65 = !DILocation(line: 52, column: 6, scope: !55)
!66 = !DILocation(line: 52, column: 4, scope: !55)
!67 = !DILocation(line: 52, column: 21, scope: !55)
!68 = !DILocation(line: 52, column: 13, scope: !55)
!69 = !DILocation(line: 52, column: 19, scope: !55)
!70 = !DILocation(line: 52, column: 36, scope: !55)
!71 = !DILocation(line: 52, column: 28, scope: !55)
!72 = !DILocation(line: 52, column: 34, scope: !55)
!73 = !DILocation(line: 53, column: 6, scope: !55)
!74 = !DILocation(line: 53, column: 4, scope: !55)
!75 = !DILocation(line: 53, column: 21, scope: !55)
!76 = !DILocation(line: 53, column: 13, scope: !55)
!77 = !DILocation(line: 53, column: 19, scope: !55)
!78 = !DILocation(line: 53, column: 36, scope: !55)
!79 = !DILocation(line: 53, column: 28, scope: !55)
!80 = !DILocation(line: 53, column: 34, scope: !55)
!81 = !DILocation(line: 54, column: 1, scope: !55)
!82 = distinct !DISubprogram(name: "TIFFSwabArrayOfShort", scope: !3, file: !3, line: 59, type: !83, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !37)
!83 = !DISubroutineType(types: !84)
!84 = !{null, !34, !85}
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_long", file: !7, line: 36, baseType: !86)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_long", file: !9, line: 34, baseType: !87)
!87 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!88 = !DILocalVariable(name: "wp", arg: 1, scope: !82, file: !3, line: 59, type: !34)
!89 = !DILocation(line: 59, column: 30, scope: !82)
!90 = !DILocalVariable(name: "n", arg: 2, scope: !82, file: !3, line: 59, type: !85)
!91 = !DILocation(line: 59, column: 50, scope: !82)
!92 = !DILocalVariable(name: "cp", scope: !82, file: !3, line: 61, type: !5)
!93 = !DILocation(line: 61, column: 19, scope: !82)
!94 = !DILocalVariable(name: "t", scope: !82, file: !3, line: 62, type: !44)
!95 = !DILocation(line: 62, column: 15, scope: !82)
!96 = !DILocation(line: 65, column: 2, scope: !82)
!97 = !DILocation(line: 65, column: 10, scope: !82)
!98 = !DILocation(line: 65, column: 13, scope: !82)
!99 = !DILocation(line: 66, column: 18, scope: !100)
!100 = distinct !DILexicalBlock(scope: !82, file: !3, line: 65, column: 18)
!101 = !DILocation(line: 66, column: 6, scope: !100)
!102 = !DILocation(line: 67, column: 7, scope: !100)
!103 = !DILocation(line: 67, column: 5, scope: !100)
!104 = !DILocation(line: 67, column: 22, scope: !100)
!105 = !DILocation(line: 67, column: 14, scope: !100)
!106 = !DILocation(line: 67, column: 20, scope: !100)
!107 = !DILocation(line: 67, column: 37, scope: !100)
!108 = !DILocation(line: 67, column: 29, scope: !100)
!109 = !DILocation(line: 67, column: 35, scope: !100)
!110 = !DILocation(line: 68, column: 5, scope: !100)
!111 = distinct !{!111, !96, !112, !113}
!112 = !DILocation(line: 69, column: 2, scope: !82)
!113 = !{!"llvm.loop.mustprogress"}
!114 = !DILocation(line: 70, column: 1, scope: !82)
!115 = distinct !DISubprogram(name: "TIFFSwabArrayOfLong", scope: !3, file: !3, line: 75, type: !116, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !37)
!116 = !DISubroutineType(types: !117)
!117 = !{null, !12, !85}
!118 = !DILocalVariable(name: "lp", arg: 1, scope: !115, file: !3, line: 75, type: !12)
!119 = !DILocation(line: 75, column: 38, scope: !115)
!120 = !DILocalVariable(name: "n", arg: 2, scope: !115, file: !3, line: 75, type: !85)
!121 = !DILocation(line: 75, column: 58, scope: !115)
!122 = !DILocalVariable(name: "cp", scope: !115, file: !3, line: 77, type: !11)
!123 = !DILocation(line: 77, column: 26, scope: !115)
!124 = !DILocalVariable(name: "t", scope: !115, file: !3, line: 78, type: !44)
!125 = !DILocation(line: 78, column: 15, scope: !115)
!126 = !DILocation(line: 81, column: 2, scope: !115)
!127 = !DILocation(line: 81, column: 10, scope: !115)
!128 = !DILocation(line: 81, column: 13, scope: !115)
!129 = !DILocation(line: 82, column: 25, scope: !130)
!130 = distinct !DILexicalBlock(scope: !115, file: !3, line: 81, column: 18)
!131 = !DILocation(line: 82, column: 6, scope: !130)
!132 = !DILocation(line: 83, column: 7, scope: !130)
!133 = !DILocation(line: 83, column: 5, scope: !130)
!134 = !DILocation(line: 83, column: 22, scope: !130)
!135 = !DILocation(line: 83, column: 14, scope: !130)
!136 = !DILocation(line: 83, column: 20, scope: !130)
!137 = !DILocation(line: 83, column: 37, scope: !130)
!138 = !DILocation(line: 83, column: 29, scope: !130)
!139 = !DILocation(line: 83, column: 35, scope: !130)
!140 = !DILocation(line: 84, column: 7, scope: !130)
!141 = !DILocation(line: 84, column: 5, scope: !130)
!142 = !DILocation(line: 84, column: 22, scope: !130)
!143 = !DILocation(line: 84, column: 14, scope: !130)
!144 = !DILocation(line: 84, column: 20, scope: !130)
!145 = !DILocation(line: 84, column: 37, scope: !130)
!146 = !DILocation(line: 84, column: 29, scope: !130)
!147 = !DILocation(line: 84, column: 35, scope: !130)
!148 = !DILocation(line: 85, column: 5, scope: !130)
!149 = distinct !{!149, !126, !150, !113}
!150 = !DILocation(line: 86, column: 2, scope: !115)
!151 = !DILocation(line: 87, column: 1, scope: !115)
!152 = distinct !DISubprogram(name: "TIFFSwabDouble", scope: !3, file: !3, line: 92, type: !153, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !37)
!153 = !DISubroutineType(types: !154)
!154 = !{null, !155}
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!157 = !DILocalVariable(name: "dp", arg: 1, scope: !152, file: !3, line: 92, type: !155)
!158 = !DILocation(line: 92, column: 24, scope: !152)
!159 = !DILocalVariable(name: "lp", scope: !152, file: !3, line: 94, type: !12)
!160 = !DILocation(line: 94, column: 26, scope: !152)
!161 = !DILocation(line: 94, column: 41, scope: !152)
!162 = !DILocalVariable(name: "t", scope: !152, file: !3, line: 95, type: !13)
!163 = !DILocation(line: 95, column: 16, scope: !152)
!164 = !DILocation(line: 97, column: 22, scope: !152)
!165 = !DILocation(line: 97, column: 2, scope: !152)
!166 = !DILocation(line: 98, column: 6, scope: !152)
!167 = !DILocation(line: 98, column: 4, scope: !152)
!168 = !DILocation(line: 98, column: 21, scope: !152)
!169 = !DILocation(line: 98, column: 13, scope: !152)
!170 = !DILocation(line: 98, column: 19, scope: !152)
!171 = !DILocation(line: 98, column: 36, scope: !152)
!172 = !DILocation(line: 98, column: 28, scope: !152)
!173 = !DILocation(line: 98, column: 34, scope: !152)
!174 = !DILocation(line: 99, column: 1, scope: !152)
!175 = distinct !DISubprogram(name: "TIFFSwabArrayOfDouble", scope: !3, file: !3, line: 104, type: !176, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !37)
!176 = !DISubroutineType(types: !177)
!177 = !{null, !155, !85}
!178 = !DILocalVariable(name: "dp", arg: 1, scope: !175, file: !3, line: 104, type: !155)
!179 = !DILocation(line: 104, column: 31, scope: !175)
!180 = !DILocalVariable(name: "n", arg: 2, scope: !175, file: !3, line: 104, type: !85)
!181 = !DILocation(line: 104, column: 51, scope: !175)
!182 = !DILocalVariable(name: "lp", scope: !175, file: !3, line: 106, type: !12)
!183 = !DILocation(line: 106, column: 19, scope: !175)
!184 = !DILocation(line: 106, column: 34, scope: !175)
!185 = !DILocalVariable(name: "t", scope: !175, file: !3, line: 107, type: !13)
!186 = !DILocation(line: 107, column: 25, scope: !175)
!187 = !DILocation(line: 109, column: 22, scope: !175)
!188 = !DILocation(line: 109, column: 26, scope: !175)
!189 = !DILocation(line: 109, column: 30, scope: !175)
!190 = !DILocation(line: 109, column: 28, scope: !175)
!191 = !DILocation(line: 109, column: 2, scope: !175)
!192 = !DILocation(line: 110, column: 9, scope: !175)
!193 = !DILocation(line: 110, column: 17, scope: !175)
!194 = !DILocation(line: 110, column: 20, scope: !175)
!195 = !DILocation(line: 111, column: 7, scope: !196)
!196 = distinct !DILexicalBlock(scope: !175, file: !3, line: 110, column: 25)
!197 = !DILocation(line: 111, column: 5, scope: !196)
!198 = !DILocation(line: 111, column: 22, scope: !196)
!199 = !DILocation(line: 111, column: 14, scope: !196)
!200 = !DILocation(line: 111, column: 20, scope: !196)
!201 = !DILocation(line: 111, column: 37, scope: !196)
!202 = !DILocation(line: 111, column: 29, scope: !196)
!203 = !DILocation(line: 111, column: 35, scope: !196)
!204 = !DILocation(line: 112, column: 20, scope: !196)
!205 = distinct !{!205, !192, !206, !113}
!206 = !DILocation(line: 113, column: 9, scope: !175)
!207 = !DILocation(line: 114, column: 1, scope: !175)
!208 = distinct !DISubprogram(name: "TIFFGetBitRevTable", scope: !3, file: !3, line: 196, type: !209, scopeLine: 197, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !37)
!209 = !DISubroutineType(types: !210)
!210 = !{!211, !44}
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!212 = !DILocalVariable(name: "reversed", arg: 1, scope: !208, file: !3, line: 196, type: !44)
!213 = !DILocation(line: 196, column: 24, scope: !208)
!214 = !DILocation(line: 198, column: 10, scope: !208)
!215 = !DILocation(line: 198, column: 2, scope: !208)
!216 = distinct !DISubprogram(name: "TIFFReverseBits", scope: !3, file: !3, line: 202, type: !217, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !37)
!217 = !DISubroutineType(types: !218)
!218 = !{null, !5, !85}
!219 = !DILocalVariable(name: "cp", arg: 1, scope: !216, file: !3, line: 202, type: !5)
!220 = !DILocation(line: 202, column: 34, scope: !216)
!221 = !DILocalVariable(name: "n", arg: 2, scope: !216, file: !3, line: 202, type: !85)
!222 = !DILocation(line: 202, column: 54, scope: !216)
!223 = !DILocation(line: 204, column: 2, scope: !216)
!224 = !DILocation(line: 204, column: 9, scope: !225)
!225 = distinct !DILexicalBlock(scope: !226, file: !3, line: 204, column: 2)
!226 = distinct !DILexicalBlock(scope: !216, file: !3, line: 204, column: 2)
!227 = !DILocation(line: 204, column: 11, scope: !225)
!228 = !DILocation(line: 204, column: 2, scope: !226)
!229 = !DILocation(line: 205, column: 27, scope: !230)
!230 = distinct !DILexicalBlock(scope: !225, file: !3, line: 204, column: 24)
!231 = !DILocation(line: 205, column: 11, scope: !230)
!232 = !DILocation(line: 205, column: 3, scope: !230)
!233 = !DILocation(line: 205, column: 9, scope: !230)
!234 = !DILocation(line: 206, column: 27, scope: !230)
!235 = !DILocation(line: 206, column: 11, scope: !230)
!236 = !DILocation(line: 206, column: 3, scope: !230)
!237 = !DILocation(line: 206, column: 9, scope: !230)
!238 = !DILocation(line: 207, column: 27, scope: !230)
!239 = !DILocation(line: 207, column: 11, scope: !230)
!240 = !DILocation(line: 207, column: 3, scope: !230)
!241 = !DILocation(line: 207, column: 9, scope: !230)
!242 = !DILocation(line: 208, column: 27, scope: !230)
!243 = !DILocation(line: 208, column: 11, scope: !230)
!244 = !DILocation(line: 208, column: 3, scope: !230)
!245 = !DILocation(line: 208, column: 9, scope: !230)
!246 = !DILocation(line: 209, column: 27, scope: !230)
!247 = !DILocation(line: 209, column: 11, scope: !230)
!248 = !DILocation(line: 209, column: 3, scope: !230)
!249 = !DILocation(line: 209, column: 9, scope: !230)
!250 = !DILocation(line: 210, column: 27, scope: !230)
!251 = !DILocation(line: 210, column: 11, scope: !230)
!252 = !DILocation(line: 210, column: 3, scope: !230)
!253 = !DILocation(line: 210, column: 9, scope: !230)
!254 = !DILocation(line: 211, column: 27, scope: !230)
!255 = !DILocation(line: 211, column: 11, scope: !230)
!256 = !DILocation(line: 211, column: 3, scope: !230)
!257 = !DILocation(line: 211, column: 9, scope: !230)
!258 = !DILocation(line: 212, column: 27, scope: !230)
!259 = !DILocation(line: 212, column: 11, scope: !230)
!260 = !DILocation(line: 212, column: 3, scope: !230)
!261 = !DILocation(line: 212, column: 9, scope: !230)
!262 = !DILocation(line: 213, column: 6, scope: !230)
!263 = !DILocation(line: 214, column: 2, scope: !230)
!264 = !DILocation(line: 204, column: 18, scope: !225)
!265 = !DILocation(line: 204, column: 2, scope: !225)
!266 = distinct !{!266, !228, !267, !113}
!267 = !DILocation(line: 214, column: 2, scope: !226)
!268 = !DILocation(line: 215, column: 2, scope: !216)
!269 = !DILocation(line: 215, column: 10, scope: !216)
!270 = !DILocation(line: 215, column: 13, scope: !216)
!271 = !DILocation(line: 216, column: 26, scope: !216)
!272 = !DILocation(line: 216, column: 25, scope: !216)
!273 = !DILocation(line: 216, column: 9, scope: !216)
!274 = !DILocation(line: 216, column: 4, scope: !216)
!275 = !DILocation(line: 216, column: 7, scope: !216)
!276 = !DILocation(line: 216, column: 33, scope: !216)
!277 = distinct !{!277, !268, !276, !113}
!278 = !DILocation(line: 217, column: 1, scope: !216)
