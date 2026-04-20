; ModuleID = 'cBench/security_rijndael_d/src/aesxam.c'
source_filename = "cBench/security_rijndael_d/src/aesxam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aes = type { i64, i64, [64 x i64], [64 x i64], i8 }

@fillrand.a = internal global [2 x i64] zeroinitializer, align 16, !dbg !0
@fillrand.mt = internal global i64 1, align 8, !dbg !52
@fillrand.count = internal global i64 4, align 8, !dbg !54
@fillrand.r = internal global [4 x i8] zeroinitializer, align 1, !dbg !56
@.str = private unnamed_addr constant [34 x i8] c"Error writing to output file: %s\0A\00", align 1, !dbg !58
@.str.1 = private unnamed_addr constant [35 x i8] c"Error reading from input file: %s\0A\00", align 1, !dbg !63
@.str.2 = private unnamed_addr constant [27 x i8] c"\0AThe input file is corrupt\00", align 1, !dbg !68
@.str.3 = private unnamed_addr constant [59 x i8] c"usage: rijndael in_filename out_filename [d/e] key_in_hex\0A\00", align 1, !dbg !73
@.str.4 = private unnamed_addr constant [37 x i8] c"key must be in hexadecimal notation\0A\00", align 1, !dbg !78
@.str.5 = private unnamed_addr constant [27 x i8] c"The key value is too long\0A\00", align 1, !dbg !83
@.str.6 = private unnamed_addr constant [56 x i8] c"The key length must be 32, 48 or 64 hexadecimal digits\0A\00", align 1, !dbg !85
@.str.7 = private unnamed_addr constant [3 x i8] c"rb\00", align 1, !dbg !90
@.str.8 = private unnamed_addr constant [40 x i8] c"The input file: %s could not be opened\0A\00", align 1, !dbg !95
@.str.9 = private unnamed_addr constant [3 x i8] c"wb\00", align 1, !dbg !100
@.str.10 = private unnamed_addr constant [41 x i8] c"The output file: %s could not be opened\0A\00", align 1, !dbg !102

; Function Attrs: noinline nounwind uwtable
define dso_local void @fillrand(ptr noundef %0, i32 noundef %1) #0 !dbg !2 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !119, !DIExpression(), !120)
  store i32 %1, ptr %4, align 4
    #dbg_declare(ptr %4, !121, !DIExpression(), !122)
    #dbg_declare(ptr %5, !123, !DIExpression(), !124)
  %6 = load i64, ptr @fillrand.mt, align 8, !dbg !125
  %7 = icmp ne i64 %6, 0, !dbg !125
  br i1 %7, label %8, label %9, !dbg !125

8:                                                ; preds = %2
  store i64 0, ptr @fillrand.mt, align 8, !dbg !127
  store i64 60147, ptr @fillrand.a, align 16, !dbg !129
  store i64 13822, ptr getelementptr inbounds ([2 x i64], ptr @fillrand.a, i64 0, i64 1), align 8, !dbg !130
  br label %9, !dbg !131

9:                                                ; preds = %8, %2
  store i32 0, ptr %5, align 4, !dbg !132
  br label %10, !dbg !134

10:                                               ; preds = %41, %9
  %11 = load i32, ptr %5, align 4, !dbg !135
  %12 = load i32, ptr %4, align 4, !dbg !137
  %13 = icmp slt i32 %11, %12, !dbg !138
  br i1 %13, label %14, label %44, !dbg !139

14:                                               ; preds = %10
  %15 = load i64, ptr @fillrand.count, align 8, !dbg !140
  %16 = icmp eq i64 %15, 4, !dbg !143
  br i1 %16, label %17, label %32, !dbg !143

17:                                               ; preds = %14
  %18 = load i64, ptr @fillrand.a, align 16, !dbg !144
  %19 = and i64 %18, 65535, !dbg !144
  %20 = mul i64 36969, %19, !dbg !144
  %21 = load i64, ptr @fillrand.a, align 16, !dbg !144
  %22 = lshr i64 %21, 16, !dbg !144
  %23 = add i64 %20, %22, !dbg !144
  store i64 %23, ptr @fillrand.a, align 16, !dbg !144
  %24 = shl i64 %23, 16, !dbg !144
  %25 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @fillrand.a, i64 0, i64 1), align 8, !dbg !144
  %26 = and i64 %25, 65535, !dbg !144
  %27 = mul i64 18000, %26, !dbg !144
  %28 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @fillrand.a, i64 0, i64 1), align 8, !dbg !144
  %29 = lshr i64 %28, 16, !dbg !144
  %30 = add i64 %27, %29, !dbg !144
  store i64 %30, ptr getelementptr inbounds ([2 x i64], ptr @fillrand.a, i64 0, i64 1), align 8, !dbg !144
  %31 = add i64 %24, %30, !dbg !144
  store i64 %31, ptr @fillrand.r, align 1, !dbg !146
  store i64 0, ptr @fillrand.count, align 8, !dbg !147
  br label %32, !dbg !148

32:                                               ; preds = %17, %14
  %33 = load i64, ptr @fillrand.count, align 8, !dbg !149
  %34 = add i64 %33, 1, !dbg !149
  store i64 %34, ptr @fillrand.count, align 8, !dbg !149
  %35 = getelementptr inbounds nuw [4 x i8], ptr @fillrand.r, i64 0, i64 %33, !dbg !150
  %36 = load i8, ptr %35, align 1, !dbg !150
  %37 = load ptr, ptr %3, align 8, !dbg !151
  %38 = load i32, ptr %5, align 4, !dbg !152
  %39 = sext i32 %38 to i64, !dbg !151
  %40 = getelementptr inbounds i8, ptr %37, i64 %39, !dbg !151
  store i8 %36, ptr %40, align 1, !dbg !153
  br label %41, !dbg !154

41:                                               ; preds = %32
  %42 = load i32, ptr %5, align 4, !dbg !155
  %43 = add nsw i32 %42, 1, !dbg !155
  store i32 %43, ptr %5, align 4, !dbg !155
  br label %10, !dbg !156, !llvm.loop !157

44:                                               ; preds = %10
  ret void, !dbg !160
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @encfile(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 !dbg !161 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca [16 x i8], align 16
  %11 = alloca [16 x i8], align 16
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store ptr %0, ptr %6, align 8
    #dbg_declare(ptr %6, !233, !DIExpression(), !234)
  store ptr %1, ptr %7, align 8
    #dbg_declare(ptr %7, !235, !DIExpression(), !236)
  store ptr %2, ptr %8, align 8
    #dbg_declare(ptr %8, !237, !DIExpression(), !238)
  store ptr %3, ptr %9, align 8
    #dbg_declare(ptr %9, !239, !DIExpression(), !240)
    #dbg_declare(ptr %10, !241, !DIExpression(), !245)
    #dbg_declare(ptr %11, !246, !DIExpression(), !247)
    #dbg_declare(ptr %12, !248, !DIExpression(), !249)
    #dbg_declare(ptr %13, !250, !DIExpression(), !251)
  store i64 0, ptr %13, align 8, !dbg !251
    #dbg_declare(ptr %14, !252, !DIExpression(), !253)
  store i64 0, ptr %14, align 8, !dbg !253
  %15 = getelementptr inbounds [16 x i8], ptr %11, i64 0, i64 0, !dbg !254
  call void @fillrand(ptr noundef %15, i32 noundef 16), !dbg !255
  %16 = load ptr, ptr %6, align 8, !dbg !256
  %17 = call i32 @fseek(ptr noundef %16, i64 noundef 0, i32 noundef 2), !dbg !257
  %18 = load ptr, ptr %6, align 8, !dbg !258
  %19 = call i32 @fgetpos(ptr noundef %18, ptr noundef %12), !dbg !259
  %20 = load ptr, ptr %6, align 8, !dbg !260
  %21 = call i32 @fseek(ptr noundef %20, i64 noundef 0, i32 noundef 0), !dbg !261
  %22 = getelementptr inbounds [16 x i8], ptr %11, i64 0, i64 0, !dbg !262
  %23 = load ptr, ptr %7, align 8, !dbg !263
  %24 = call i64 @fwrite(ptr noundef %22, i64 noundef 1, i64 noundef 16, ptr noundef %23), !dbg !264
  %25 = getelementptr inbounds [16 x i8], ptr %10, i64 0, i64 0, !dbg !265
  call void @fillrand(ptr noundef %25, i32 noundef 1), !dbg !266
  store i64 15, ptr %14, align 8, !dbg !267
  %26 = load i64, ptr %12, align 8, !dbg !268
  %27 = trunc i64 %26 to i8, !dbg !269
  %28 = sext i8 %27 to i32, !dbg !269
  %29 = and i32 %28, 15, !dbg !270
  %30 = getelementptr inbounds [16 x i8], ptr %10, i64 0, i64 0, !dbg !271
  %31 = load i8, ptr %30, align 16, !dbg !271
  %32 = sext i8 %31 to i32, !dbg !271
  %33 = and i32 %32, -16, !dbg !272
  %34 = or i32 %29, %33, !dbg !273
  %35 = trunc i32 %34 to i8, !dbg !274
  %36 = getelementptr inbounds [16 x i8], ptr %10, i64 0, i64 0, !dbg !275
  store i8 %35, ptr %36, align 16, !dbg !276
  br label %37, !dbg !277

37:                                               ; preds = %85, %4
  %38 = load ptr, ptr %6, align 8, !dbg !278
  %39 = call i32 @feof(ptr noundef %38) #4, !dbg !279
  %40 = icmp ne i32 %39, 0, !dbg !280
  %41 = xor i1 %40, true, !dbg !280
  br i1 %41, label %42, label %86, !dbg !277

42:                                               ; preds = %37
  %43 = getelementptr inbounds [16 x i8], ptr %10, i64 0, i64 0, !dbg !281
  %44 = getelementptr inbounds i8, ptr %43, i64 16, !dbg !283
  %45 = load i64, ptr %14, align 8, !dbg !284
  %46 = sub i64 0, %45, !dbg !285
  %47 = getelementptr inbounds i8, ptr %44, i64 %46, !dbg !285
  %48 = load i64, ptr %14, align 8, !dbg !286
  %49 = load ptr, ptr %6, align 8, !dbg !287
  %50 = call i64 @fread(ptr noundef %47, i64 noundef 1, i64 noundef %48, ptr noundef %49), !dbg !288
  store i64 %50, ptr %13, align 8, !dbg !289
  %51 = load i64, ptr %13, align 8, !dbg !290
  %52 = load i64, ptr %14, align 8, !dbg !292
  %53 = icmp ult i64 %51, %52, !dbg !293
  br i1 %53, label %54, label %55, !dbg !293

54:                                               ; preds = %42
  br label %86, !dbg !294

55:                                               ; preds = %42
  store i64 0, ptr %13, align 8, !dbg !295
  br label %56, !dbg !297

56:                                               ; preds = %70, %55
  %57 = load i64, ptr %13, align 8, !dbg !298
  %58 = icmp ult i64 %57, 16, !dbg !300
  br i1 %58, label %59, label %73, !dbg !301

59:                                               ; preds = %56
  %60 = load i64, ptr %13, align 8, !dbg !302
  %61 = getelementptr inbounds nuw [16 x i8], ptr %11, i64 0, i64 %60, !dbg !303
  %62 = load i8, ptr %61, align 1, !dbg !303
  %63 = sext i8 %62 to i32, !dbg !303
  %64 = load i64, ptr %13, align 8, !dbg !304
  %65 = getelementptr inbounds nuw [16 x i8], ptr %10, i64 0, i64 %64, !dbg !305
  %66 = load i8, ptr %65, align 1, !dbg !306
  %67 = sext i8 %66 to i32, !dbg !306
  %68 = xor i32 %67, %63, !dbg !306
  %69 = trunc i32 %68 to i8, !dbg !306
  store i8 %69, ptr %65, align 1, !dbg !306
  br label %70, !dbg !305

70:                                               ; preds = %59
  %71 = load i64, ptr %13, align 8, !dbg !307
  %72 = add i64 %71, 1, !dbg !307
  store i64 %72, ptr %13, align 8, !dbg !307
  br label %56, !dbg !308, !llvm.loop !309

73:                                               ; preds = %56
  %74 = getelementptr inbounds [16 x i8], ptr %10, i64 0, i64 0, !dbg !311
  %75 = getelementptr inbounds [16 x i8], ptr %11, i64 0, i64 0, !dbg !312
  %76 = load ptr, ptr %8, align 8, !dbg !313
  %77 = call signext i16 @encrypt(ptr noundef %74, ptr noundef %75, ptr noundef %76), !dbg !314
  %78 = getelementptr inbounds [16 x i8], ptr %11, i64 0, i64 0, !dbg !315
  %79 = load ptr, ptr %7, align 8, !dbg !317
  %80 = call i64 @fwrite(ptr noundef %78, i64 noundef 1, i64 noundef 16, ptr noundef %79), !dbg !318
  %81 = icmp ne i64 %80, 16, !dbg !319
  br i1 %81, label %82, label %85, !dbg !319

82:                                               ; preds = %73
  %83 = load ptr, ptr %9, align 8, !dbg !320
  %84 = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %83), !dbg !322
  store i32 -7, ptr %5, align 4, !dbg !323
  br label %135, !dbg !323

85:                                               ; preds = %73
  store i64 16, ptr %14, align 8, !dbg !324
  br label %37, !dbg !277, !llvm.loop !325

86:                                               ; preds = %54, %37
  %87 = load i64, ptr %14, align 8, !dbg !327
  %88 = icmp eq i64 %87, 15, !dbg !329
  br i1 %88, label %89, label %92, !dbg !329

89:                                               ; preds = %86
  %90 = load i64, ptr %13, align 8, !dbg !330
  %91 = add i64 %90, 1, !dbg !330
  store i64 %91, ptr %13, align 8, !dbg !330
  br label %92, !dbg !330

92:                                               ; preds = %89, %86
  %93 = load i64, ptr %13, align 8, !dbg !331
  %94 = icmp ne i64 %93, 0, !dbg !331
  br i1 %94, label %95, label %134, !dbg !331

95:                                               ; preds = %92
  br label %96, !dbg !333

96:                                               ; preds = %99, %95
  %97 = load i64, ptr %13, align 8, !dbg !335
  %98 = icmp ult i64 %97, 16, !dbg !336
  br i1 %98, label %99, label %103, !dbg !333

99:                                               ; preds = %96
  %100 = load i64, ptr %13, align 8, !dbg !337
  %101 = add i64 %100, 1, !dbg !337
  store i64 %101, ptr %13, align 8, !dbg !337
  %102 = getelementptr inbounds nuw [16 x i8], ptr %10, i64 0, i64 %100, !dbg !338
  store i8 0, ptr %102, align 1, !dbg !339
  br label %96, !dbg !333, !llvm.loop !340

103:                                              ; preds = %96
  store i64 0, ptr %13, align 8, !dbg !342
  br label %104, !dbg !344

104:                                              ; preds = %118, %103
  %105 = load i64, ptr %13, align 8, !dbg !345
  %106 = icmp ult i64 %105, 16, !dbg !347
  br i1 %106, label %107, label %121, !dbg !348

107:                                              ; preds = %104
  %108 = load i64, ptr %13, align 8, !dbg !349
  %109 = getelementptr inbounds nuw [16 x i8], ptr %11, i64 0, i64 %108, !dbg !350
  %110 = load i8, ptr %109, align 1, !dbg !350
  %111 = sext i8 %110 to i32, !dbg !350
  %112 = load i64, ptr %13, align 8, !dbg !351
  %113 = getelementptr inbounds nuw [16 x i8], ptr %10, i64 0, i64 %112, !dbg !352
  %114 = load i8, ptr %113, align 1, !dbg !353
  %115 = sext i8 %114 to i32, !dbg !353
  %116 = xor i32 %115, %111, !dbg !353
  %117 = trunc i32 %116 to i8, !dbg !353
  store i8 %117, ptr %113, align 1, !dbg !353
  br label %118, !dbg !352

118:                                              ; preds = %107
  %119 = load i64, ptr %13, align 8, !dbg !354
  %120 = add i64 %119, 1, !dbg !354
  store i64 %120, ptr %13, align 8, !dbg !354
  br label %104, !dbg !355, !llvm.loop !356

121:                                              ; preds = %104
  %122 = getelementptr inbounds [16 x i8], ptr %10, i64 0, i64 0, !dbg !358
  %123 = getelementptr inbounds [16 x i8], ptr %11, i64 0, i64 0, !dbg !359
  %124 = load ptr, ptr %8, align 8, !dbg !360
  %125 = call signext i16 @encrypt(ptr noundef %122, ptr noundef %123, ptr noundef %124), !dbg !361
  %126 = getelementptr inbounds [16 x i8], ptr %11, i64 0, i64 0, !dbg !362
  %127 = load ptr, ptr %7, align 8, !dbg !364
  %128 = call i64 @fwrite(ptr noundef %126, i64 noundef 1, i64 noundef 16, ptr noundef %127), !dbg !365
  %129 = icmp ne i64 %128, 16, !dbg !366
  br i1 %129, label %130, label %133, !dbg !366

130:                                              ; preds = %121
  %131 = load ptr, ptr %9, align 8, !dbg !367
  %132 = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %131), !dbg !369
  store i32 -8, ptr %5, align 4, !dbg !370
  br label %135, !dbg !370

133:                                              ; preds = %121
  br label %134, !dbg !371

134:                                              ; preds = %133, %92
  store i32 0, ptr %5, align 4, !dbg !372
  br label %135, !dbg !372

135:                                              ; preds = %134, %130, %82
  %136 = load i32, ptr %5, align 4, !dbg !373
  ret i32 %136, !dbg !373
}

declare i32 @fseek(ptr noundef, i64 noundef, i32 noundef) #1

declare i32 @fgetpos(ptr noundef, ptr noundef) #1

declare i64 @fwrite(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #1

; Function Attrs: nounwind
declare i32 @feof(ptr noundef) #2

declare i64 @fread(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #1

declare signext i16 @encrypt(ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @decfile(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 !dbg !374 {
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca [16 x i8], align 16
  %13 = alloca [16 x i8], align 16
  %14 = alloca [16 x i8], align 16
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store ptr %0, ptr %7, align 8
    #dbg_declare(ptr %7, !377, !DIExpression(), !378)
  store ptr %1, ptr %8, align 8
    #dbg_declare(ptr %8, !379, !DIExpression(), !380)
  store ptr %2, ptr %9, align 8
    #dbg_declare(ptr %9, !381, !DIExpression(), !382)
  store ptr %3, ptr %10, align 8
    #dbg_declare(ptr %10, !383, !DIExpression(), !384)
  store ptr %4, ptr %11, align 8
    #dbg_declare(ptr %11, !385, !DIExpression(), !386)
    #dbg_declare(ptr %12, !387, !DIExpression(), !388)
    #dbg_declare(ptr %13, !389, !DIExpression(), !390)
    #dbg_declare(ptr %14, !391, !DIExpression(), !392)
    #dbg_declare(ptr %15, !393, !DIExpression(), !394)
    #dbg_declare(ptr %16, !395, !DIExpression(), !396)
    #dbg_declare(ptr %17, !397, !DIExpression(), !398)
    #dbg_declare(ptr %18, !399, !DIExpression(), !400)
    #dbg_declare(ptr %19, !401, !DIExpression(), !402)
    #dbg_declare(ptr %20, !403, !DIExpression(), !404)
  %21 = getelementptr inbounds [16 x i8], ptr %12, i64 0, i64 0, !dbg !405
  %22 = load ptr, ptr %7, align 8, !dbg !407
  %23 = call i64 @fread(ptr noundef %21, i64 noundef 1, i64 noundef 16, ptr noundef %22), !dbg !408
  %24 = icmp ne i64 %23, 16, !dbg !409
  br i1 %24, label %25, label %28, !dbg !409

25:                                               ; preds = %5
  %26 = load ptr, ptr %10, align 8, !dbg !410
  %27 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, ptr noundef %26), !dbg !412
  store i32 9, ptr %6, align 4, !dbg !413
  br label %154, !dbg !413

28:                                               ; preds = %5
  %29 = getelementptr inbounds [16 x i8], ptr %13, i64 0, i64 0, !dbg !414
  %30 = load ptr, ptr %7, align 8, !dbg !415
  %31 = call i64 @fread(ptr noundef %29, i64 noundef 1, i64 noundef 16, ptr noundef %30), !dbg !416
  %32 = trunc i64 %31 to i32, !dbg !416
  store i32 %32, ptr %18, align 4, !dbg !417
  %33 = load i32, ptr %18, align 4, !dbg !418
  %34 = icmp ne i32 %33, 0, !dbg !418
  br i1 %34, label %35, label %40, !dbg !420

35:                                               ; preds = %28
  %36 = load i32, ptr %18, align 4, !dbg !421
  %37 = icmp ne i32 %36, 16, !dbg !422
  br i1 %37, label %38, label %40, !dbg !420

38:                                               ; preds = %35
  %39 = call i32 (ptr, ...) @printf(ptr noundef @.str.2), !dbg !423
  store i32 -10, ptr %6, align 4, !dbg !425
  br label %154, !dbg !425

40:                                               ; preds = %35, %28
  %41 = getelementptr inbounds [16 x i8], ptr %13, i64 0, i64 0, !dbg !426
  %42 = getelementptr inbounds [16 x i8], ptr %14, i64 0, i64 0, !dbg !427
  %43 = load ptr, ptr %9, align 8, !dbg !428
  %44 = call signext i16 @decrypt(ptr noundef %41, ptr noundef %42, ptr noundef %43), !dbg !429
  store i32 0, ptr %18, align 4, !dbg !430
  br label %45, !dbg !432

45:                                               ; preds = %61, %40
  %46 = load i32, ptr %18, align 4, !dbg !433
  %47 = icmp slt i32 %46, 16, !dbg !435
  br i1 %47, label %48, label %64, !dbg !436

48:                                               ; preds = %45
  %49 = load i32, ptr %18, align 4, !dbg !437
  %50 = sext i32 %49 to i64, !dbg !438
  %51 = getelementptr inbounds [16 x i8], ptr %12, i64 0, i64 %50, !dbg !438
  %52 = load i8, ptr %51, align 1, !dbg !438
  %53 = sext i8 %52 to i32, !dbg !438
  %54 = load i32, ptr %18, align 4, !dbg !439
  %55 = sext i32 %54 to i64, !dbg !440
  %56 = getelementptr inbounds [16 x i8], ptr %14, i64 0, i64 %55, !dbg !440
  %57 = load i8, ptr %56, align 1, !dbg !441
  %58 = sext i8 %57 to i32, !dbg !441
  %59 = xor i32 %58, %53, !dbg !441
  %60 = trunc i32 %59 to i8, !dbg !441
  store i8 %60, ptr %56, align 1, !dbg !441
  br label %61, !dbg !440

61:                                               ; preds = %48
  %62 = load i32, ptr %18, align 4, !dbg !442
  %63 = add nsw i32 %62, 1, !dbg !442
  store i32 %63, ptr %18, align 4, !dbg !442
  br label %45, !dbg !443, !llvm.loop !444

64:                                               ; preds = %45
  %65 = getelementptr inbounds [16 x i8], ptr %14, i64 0, i64 0, !dbg !446
  %66 = load i8, ptr %65, align 16, !dbg !446
  %67 = sext i8 %66 to i32, !dbg !446
  %68 = and i32 %67, 15, !dbg !447
  store i32 %68, ptr %20, align 4, !dbg !448
  store i32 15, ptr %19, align 4, !dbg !449
  %69 = getelementptr inbounds [16 x i8], ptr %12, i64 0, i64 0, !dbg !450
  store ptr %69, ptr %15, align 8, !dbg !451
  %70 = getelementptr inbounds [16 x i8], ptr %13, i64 0, i64 0, !dbg !452
  store ptr %70, ptr %16, align 8, !dbg !453
  br label %71, !dbg !454

71:                                               ; preds = %64, %121
  %72 = load ptr, ptr %15, align 8, !dbg !455
  %73 = load ptr, ptr %7, align 8, !dbg !457
  %74 = call i64 @fread(ptr noundef %72, i64 noundef 1, i64 noundef 16, ptr noundef %73), !dbg !458
  %75 = trunc i64 %74 to i32, !dbg !458
  store i32 %75, ptr %18, align 4, !dbg !459
  %76 = load i32, ptr %18, align 4, !dbg !460
  %77 = icmp ne i32 %76, 16, !dbg !462
  br i1 %77, label %78, label %79, !dbg !462

78:                                               ; preds = %71
  br label %126, !dbg !463

79:                                               ; preds = %71
  %80 = getelementptr inbounds [16 x i8], ptr %14, i64 0, i64 0, !dbg !464
  %81 = getelementptr inbounds i8, ptr %80, i64 16, !dbg !466
  %82 = load i32, ptr %19, align 4, !dbg !467
  %83 = sext i32 %82 to i64, !dbg !468
  %84 = sub i64 0, %83, !dbg !468
  %85 = getelementptr inbounds i8, ptr %81, i64 %84, !dbg !468
  %86 = load i32, ptr %19, align 4, !dbg !469
  %87 = sext i32 %86 to i64, !dbg !469
  %88 = load ptr, ptr %8, align 8, !dbg !470
  %89 = call i64 @fwrite(ptr noundef %85, i64 noundef 1, i64 noundef %87, ptr noundef %88), !dbg !471
  %90 = load i32, ptr %19, align 4, !dbg !472
  %91 = sext i32 %90 to i64, !dbg !473
  %92 = icmp ne i64 %89, %91, !dbg !474
  br i1 %92, label %93, label %96, !dbg !474

93:                                               ; preds = %79
  %94 = load ptr, ptr %11, align 8, !dbg !475
  %95 = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %94), !dbg !477
  store i32 -11, ptr %6, align 4, !dbg !478
  br label %154, !dbg !478

96:                                               ; preds = %79
  %97 = load ptr, ptr %15, align 8, !dbg !479
  %98 = getelementptr inbounds [16 x i8], ptr %14, i64 0, i64 0, !dbg !480
  %99 = load ptr, ptr %9, align 8, !dbg !481
  %100 = call signext i16 @decrypt(ptr noundef %97, ptr noundef %98, ptr noundef %99), !dbg !482
  store i32 0, ptr %18, align 4, !dbg !483
  br label %101, !dbg !485

101:                                              ; preds = %118, %96
  %102 = load i32, ptr %18, align 4, !dbg !486
  %103 = icmp slt i32 %102, 16, !dbg !488
  br i1 %103, label %104, label %121, !dbg !489

104:                                              ; preds = %101
  %105 = load ptr, ptr %16, align 8, !dbg !490
  %106 = load i32, ptr %18, align 4, !dbg !491
  %107 = sext i32 %106 to i64, !dbg !490
  %108 = getelementptr inbounds i8, ptr %105, i64 %107, !dbg !490
  %109 = load i8, ptr %108, align 1, !dbg !490
  %110 = sext i8 %109 to i32, !dbg !490
  %111 = load i32, ptr %18, align 4, !dbg !492
  %112 = sext i32 %111 to i64, !dbg !493
  %113 = getelementptr inbounds [16 x i8], ptr %14, i64 0, i64 %112, !dbg !493
  %114 = load i8, ptr %113, align 1, !dbg !494
  %115 = sext i8 %114 to i32, !dbg !494
  %116 = xor i32 %115, %110, !dbg !494
  %117 = trunc i32 %116 to i8, !dbg !494
  store i8 %117, ptr %113, align 1, !dbg !494
  br label %118, !dbg !493

118:                                              ; preds = %104
  %119 = load i32, ptr %18, align 4, !dbg !495
  %120 = add nsw i32 %119, 1, !dbg !495
  store i32 %120, ptr %18, align 4, !dbg !495
  br label %101, !dbg !496, !llvm.loop !497

121:                                              ; preds = %101
  %122 = load i32, ptr %18, align 4, !dbg !499
  store i32 %122, ptr %19, align 4, !dbg !500
  %123 = load ptr, ptr %15, align 8, !dbg !501
  store ptr %123, ptr %17, align 8, !dbg !502
  %124 = load ptr, ptr %16, align 8, !dbg !503
  store ptr %124, ptr %15, align 8, !dbg !504
  %125 = load ptr, ptr %17, align 8, !dbg !505
  store ptr %125, ptr %16, align 8, !dbg !506
  br label %71, !dbg !454, !llvm.loop !507

126:                                              ; preds = %78
  %127 = load i32, ptr %19, align 4, !dbg !509
  %128 = icmp eq i32 %127, 15, !dbg !510
  %129 = zext i1 %128 to i64, !dbg !509
  %130 = select i1 %128, i32 1, i32 0, !dbg !509
  store i32 %130, ptr %19, align 4, !dbg !511
  %131 = load i32, ptr %19, align 4, !dbg !512
  %132 = sub nsw i32 1, %131, !dbg !513
  %133 = load i32, ptr %20, align 4, !dbg !514
  %134 = add nsw i32 %133, %132, !dbg !514
  store i32 %134, ptr %20, align 4, !dbg !514
  %135 = load i32, ptr %20, align 4, !dbg !515
  %136 = icmp ne i32 %135, 0, !dbg !515
  br i1 %136, label %137, label %153, !dbg !515

137:                                              ; preds = %126
  %138 = getelementptr inbounds [16 x i8], ptr %14, i64 0, i64 0, !dbg !517
  %139 = load i32, ptr %19, align 4, !dbg !519
  %140 = sext i32 %139 to i64, !dbg !520
  %141 = getelementptr inbounds i8, ptr %138, i64 %140, !dbg !520
  %142 = load i32, ptr %20, align 4, !dbg !521
  %143 = sext i32 %142 to i64, !dbg !521
  %144 = load ptr, ptr %8, align 8, !dbg !522
  %145 = call i64 @fwrite(ptr noundef %141, i64 noundef 1, i64 noundef %143, ptr noundef %144), !dbg !523
  %146 = load i32, ptr %20, align 4, !dbg !524
  %147 = sext i32 %146 to i64, !dbg !525
  %148 = icmp ne i64 %145, %147, !dbg !526
  br i1 %148, label %149, label %152, !dbg !526

149:                                              ; preds = %137
  %150 = load ptr, ptr %11, align 8, !dbg !527
  %151 = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %150), !dbg !529
  store i32 -12, ptr %6, align 4, !dbg !530
  br label %154, !dbg !530

152:                                              ; preds = %137
  br label %153, !dbg !524

153:                                              ; preds = %152, %126
  store i32 0, ptr %6, align 4, !dbg !531
  br label %154, !dbg !531

154:                                              ; preds = %153, %149, %93, %38, %25
  %155 = load i32, ptr %6, align 4, !dbg !532
  ret i32 %155, !dbg !532
}

declare signext i16 @decrypt(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main1(i32 noundef %0, ptr noundef %1) #0 !dbg !533 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i8, align 1
  %9 = alloca [32 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [1 x %struct.aes], align 16
  store i32 %0, ptr %3, align 4
    #dbg_declare(ptr %3, !537, !DIExpression(), !538)
  store ptr %1, ptr %4, align 8
    #dbg_declare(ptr %4, !539, !DIExpression(), !540)
    #dbg_declare(ptr %5, !541, !DIExpression(), !542)
  store ptr null, ptr %5, align 8, !dbg !542
    #dbg_declare(ptr %6, !543, !DIExpression(), !544)
  store ptr null, ptr %6, align 8, !dbg !544
    #dbg_declare(ptr %7, !545, !DIExpression(), !546)
    #dbg_declare(ptr %8, !547, !DIExpression(), !548)
    #dbg_declare(ptr %9, !549, !DIExpression(), !553)
    #dbg_declare(ptr %10, !554, !DIExpression(), !555)
  store i32 0, ptr %10, align 4, !dbg !555
    #dbg_declare(ptr %11, !556, !DIExpression(), !557)
  store i32 0, ptr %11, align 4, !dbg !557
    #dbg_declare(ptr %12, !558, !DIExpression(), !559)
  store i32 0, ptr %12, align 4, !dbg !559
    #dbg_declare(ptr %13, !560, !DIExpression(), !561)
  store i32 0, ptr %13, align 4, !dbg !561
    #dbg_declare(ptr %14, !562, !DIExpression(), !564)
  %15 = load i32, ptr %3, align 4, !dbg !565
  %16 = icmp ne i32 %15, 5, !dbg !567
  br i1 %16, label %33, label %17, !dbg !568

17:                                               ; preds = %2
  %18 = load ptr, ptr %4, align 8, !dbg !569
  %19 = getelementptr inbounds ptr, ptr %18, i64 3, !dbg !569
  %20 = load ptr, ptr %19, align 8, !dbg !569
  %21 = load i8, ptr %20, align 1, !dbg !570
  %22 = sext i8 %21 to i32, !dbg !570
  %23 = call i32 @toupper(i32 noundef %22) #5, !dbg !571
  %24 = icmp ne i32 %23, 68, !dbg !572
  br i1 %24, label %25, label %35, !dbg !573

25:                                               ; preds = %17
  %26 = load ptr, ptr %4, align 8, !dbg !574
  %27 = getelementptr inbounds ptr, ptr %26, i64 3, !dbg !574
  %28 = load ptr, ptr %27, align 8, !dbg !574
  %29 = load i8, ptr %28, align 1, !dbg !575
  %30 = sext i8 %29 to i32, !dbg !575
  %31 = call i32 @toupper(i32 noundef %30) #5, !dbg !576
  %32 = icmp ne i32 %31, 69, !dbg !577
  br i1 %32, label %33, label %35, !dbg !568

33:                                               ; preds = %25, %2
  %34 = call i32 (ptr, ...) @printf(ptr noundef @.str.3), !dbg !578
  store i32 -1, ptr %13, align 4, !dbg !580
  br label %182, !dbg !581

35:                                               ; preds = %25, %17
  %36 = load ptr, ptr %4, align 8, !dbg !582
  %37 = getelementptr inbounds ptr, ptr %36, i64 4, !dbg !582
  %38 = load ptr, ptr %37, align 8, !dbg !582
  store ptr %38, ptr %7, align 8, !dbg !583
  store i32 0, ptr %10, align 4, !dbg !584
  br label %39, !dbg !585

39:                                               ; preds = %103, %35
  %40 = load i32, ptr %10, align 4, !dbg !586
  %41 = icmp slt i32 %40, 64, !dbg !587
  br i1 %41, label %42, label %47, !dbg !588

42:                                               ; preds = %39
  %43 = load ptr, ptr %7, align 8, !dbg !589
  %44 = load i8, ptr %43, align 1, !dbg !590
  %45 = sext i8 %44 to i32, !dbg !590
  %46 = icmp ne i32 %45, 0, !dbg !588
  br label %47

47:                                               ; preds = %42, %39
  %48 = phi i1 [ false, %39 ], [ %46, %42 ], !dbg !591
  br i1 %48, label %49, label %104, !dbg !585

49:                                               ; preds = %47
  %50 = load ptr, ptr %7, align 8, !dbg !592
  %51 = getelementptr inbounds nuw i8, ptr %50, i32 1, !dbg !592
  store ptr %51, ptr %7, align 8, !dbg !592
  %52 = load i8, ptr %50, align 1, !dbg !594
  %53 = sext i8 %52 to i32, !dbg !594
  %54 = call i32 @toupper(i32 noundef %53) #5, !dbg !595
  %55 = trunc i32 %54 to i8, !dbg !595
  store i8 %55, ptr %8, align 1, !dbg !596
  %56 = load i8, ptr %8, align 1, !dbg !597
  %57 = sext i8 %56 to i32, !dbg !597
  %58 = icmp sge i32 %57, 48, !dbg !599
  br i1 %58, label %59, label %70, !dbg !600

59:                                               ; preds = %49
  %60 = load i8, ptr %8, align 1, !dbg !601
  %61 = sext i8 %60 to i32, !dbg !601
  %62 = icmp sle i32 %61, 57, !dbg !602
  br i1 %62, label %63, label %70, !dbg !600

63:                                               ; preds = %59
  %64 = load i32, ptr %11, align 4, !dbg !603
  %65 = shl i32 %64, 4, !dbg !604
  %66 = load i8, ptr %8, align 1, !dbg !605
  %67 = sext i8 %66 to i32, !dbg !605
  %68 = add nsw i32 %65, %67, !dbg !606
  %69 = sub nsw i32 %68, 48, !dbg !607
  store i32 %69, ptr %11, align 4, !dbg !608
  br label %89, !dbg !609

70:                                               ; preds = %59, %49
  %71 = load i8, ptr %8, align 1, !dbg !610
  %72 = sext i8 %71 to i32, !dbg !610
  %73 = icmp sge i32 %72, 65, !dbg !612
  br i1 %73, label %74, label %86, !dbg !613

74:                                               ; preds = %70
  %75 = load i8, ptr %8, align 1, !dbg !614
  %76 = sext i8 %75 to i32, !dbg !614
  %77 = icmp sle i32 %76, 70, !dbg !615
  br i1 %77, label %78, label %86, !dbg !613

78:                                               ; preds = %74
  %79 = load i32, ptr %11, align 4, !dbg !616
  %80 = shl i32 %79, 4, !dbg !617
  %81 = load i8, ptr %8, align 1, !dbg !618
  %82 = sext i8 %81 to i32, !dbg !618
  %83 = add nsw i32 %80, %82, !dbg !619
  %84 = sub nsw i32 %83, 65, !dbg !620
  %85 = add nsw i32 %84, 10, !dbg !621
  store i32 %85, ptr %11, align 4, !dbg !622
  br label %88, !dbg !623

86:                                               ; preds = %74, %70
  %87 = call i32 (ptr, ...) @printf(ptr noundef @.str.4), !dbg !624
  store i32 -2, ptr %13, align 4, !dbg !626
  br label %182, !dbg !627

88:                                               ; preds = %78
  br label %89

89:                                               ; preds = %88, %63
  %90 = load i32, ptr %10, align 4, !dbg !628
  %91 = add nsw i32 %90, 1, !dbg !628
  store i32 %91, ptr %10, align 4, !dbg !628
  %92 = and i32 %90, 1, !dbg !630
  %93 = icmp ne i32 %92, 0, !dbg !630
  br i1 %93, label %94, label %103, !dbg !630

94:                                               ; preds = %89
  %95 = load i32, ptr %11, align 4, !dbg !631
  %96 = and i32 %95, 255, !dbg !632
  %97 = trunc i32 %96 to i8, !dbg !631
  %98 = load i32, ptr %10, align 4, !dbg !633
  %99 = sdiv i32 %98, 2, !dbg !634
  %100 = sub nsw i32 %99, 1, !dbg !635
  %101 = sext i32 %100 to i64, !dbg !636
  %102 = getelementptr inbounds [32 x i8], ptr %9, i64 0, i64 %101, !dbg !636
  store i8 %97, ptr %102, align 1, !dbg !637
  br label %103, !dbg !636

103:                                              ; preds = %94, %89
  br label %39, !dbg !585, !llvm.loop !638

104:                                              ; preds = %47
  %105 = load ptr, ptr %7, align 8, !dbg !640
  %106 = load i8, ptr %105, align 1, !dbg !642
  %107 = icmp ne i8 %106, 0, !dbg !642
  br i1 %107, label %108, label %110, !dbg !642

108:                                              ; preds = %104
  %109 = call i32 (ptr, ...) @printf(ptr noundef @.str.5), !dbg !643
  store i32 -3, ptr %13, align 4, !dbg !645
  br label %182, !dbg !646

110:                                              ; preds = %104
  %111 = load i32, ptr %10, align 4, !dbg !647
  %112 = icmp slt i32 %111, 32, !dbg !649
  br i1 %112, label %117, label %113, !dbg !650

113:                                              ; preds = %110
  %114 = load i32, ptr %10, align 4, !dbg !651
  %115 = and i32 %114, 15, !dbg !652
  %116 = icmp ne i32 %115, 0, !dbg !652
  br i1 %116, label %117, label %119, !dbg !650

117:                                              ; preds = %113, %110
  %118 = call i32 (ptr, ...) @printf(ptr noundef @.str.6), !dbg !653
  store i32 -4, ptr %13, align 4, !dbg !655
  br label %182, !dbg !656

119:                                              ; preds = %113
  br label %120

120:                                              ; preds = %119
  %121 = load i32, ptr %10, align 4, !dbg !657
  %122 = sdiv i32 %121, 2, !dbg !658
  store i32 %122, ptr %12, align 4, !dbg !659
  %123 = load ptr, ptr %4, align 8, !dbg !660
  %124 = getelementptr inbounds ptr, ptr %123, i64 1, !dbg !660
  %125 = load ptr, ptr %124, align 8, !dbg !660
  %126 = call noalias ptr @fopen(ptr noundef %125, ptr noundef @.str.7), !dbg !662
  store ptr %126, ptr %5, align 8, !dbg !663
  %127 = icmp ne ptr %126, null, !dbg !663
  br i1 %127, label %133, label %128, !dbg !664

128:                                              ; preds = %120
  %129 = load ptr, ptr %4, align 8, !dbg !665
  %130 = getelementptr inbounds ptr, ptr %129, i64 1, !dbg !665
  %131 = load ptr, ptr %130, align 8, !dbg !665
  %132 = call i32 (ptr, ...) @printf(ptr noundef @.str.8, ptr noundef %131), !dbg !667
  store i32 -5, ptr %13, align 4, !dbg !668
  br label %182, !dbg !669

133:                                              ; preds = %120
  %134 = load ptr, ptr %4, align 8, !dbg !670
  %135 = getelementptr inbounds ptr, ptr %134, i64 2, !dbg !670
  %136 = load ptr, ptr %135, align 8, !dbg !670
  %137 = call noalias ptr @fopen(ptr noundef %136, ptr noundef @.str.9), !dbg !672
  store ptr %137, ptr %6, align 8, !dbg !673
  %138 = icmp ne ptr %137, null, !dbg !673
  br i1 %138, label %144, label %139, !dbg !674

139:                                              ; preds = %133
  %140 = load ptr, ptr %4, align 8, !dbg !675
  %141 = getelementptr inbounds ptr, ptr %140, i64 1, !dbg !675
  %142 = load ptr, ptr %141, align 8, !dbg !675
  %143 = call i32 (ptr, ...) @printf(ptr noundef @.str.10, ptr noundef %142), !dbg !677
  store i32 -6, ptr %13, align 4, !dbg !678
  br label %182, !dbg !679

144:                                              ; preds = %133
  %145 = load ptr, ptr %4, align 8, !dbg !680
  %146 = getelementptr inbounds ptr, ptr %145, i64 3, !dbg !680
  %147 = load ptr, ptr %146, align 8, !dbg !680
  %148 = load i8, ptr %147, align 1, !dbg !682
  %149 = sext i8 %148 to i32, !dbg !682
  %150 = call i32 @toupper(i32 noundef %149) #5, !dbg !683
  %151 = icmp eq i32 %150, 69, !dbg !684
  br i1 %151, label %152, label %165, !dbg !684

152:                                              ; preds = %144
  %153 = getelementptr inbounds [32 x i8], ptr %9, i64 0, i64 0, !dbg !685
  %154 = load i32, ptr %12, align 4, !dbg !687
  %155 = sext i32 %154 to i64, !dbg !687
  %156 = getelementptr inbounds [1 x %struct.aes], ptr %14, i64 0, i64 0, !dbg !688
  %157 = call signext i16 @set_key(ptr noundef %153, i64 noundef %155, i32 noundef 1, ptr noundef %156), !dbg !689
  %158 = load ptr, ptr %5, align 8, !dbg !690
  %159 = load ptr, ptr %6, align 8, !dbg !691
  %160 = getelementptr inbounds [1 x %struct.aes], ptr %14, i64 0, i64 0, !dbg !692
  %161 = load ptr, ptr %4, align 8, !dbg !693
  %162 = getelementptr inbounds ptr, ptr %161, i64 1, !dbg !693
  %163 = load ptr, ptr %162, align 8, !dbg !693
  %164 = call i32 @encfile(ptr noundef %158, ptr noundef %159, ptr noundef %160, ptr noundef %163), !dbg !694
  store i32 %164, ptr %13, align 4, !dbg !695
  br label %181, !dbg !696

165:                                              ; preds = %144
  %166 = getelementptr inbounds [32 x i8], ptr %9, i64 0, i64 0, !dbg !697
  %167 = load i32, ptr %12, align 4, !dbg !699
  %168 = sext i32 %167 to i64, !dbg !699
  %169 = getelementptr inbounds [1 x %struct.aes], ptr %14, i64 0, i64 0, !dbg !700
  %170 = call signext i16 @set_key(ptr noundef %166, i64 noundef %168, i32 noundef 2, ptr noundef %169), !dbg !701
  %171 = load ptr, ptr %5, align 8, !dbg !702
  %172 = load ptr, ptr %6, align 8, !dbg !703
  %173 = getelementptr inbounds [1 x %struct.aes], ptr %14, i64 0, i64 0, !dbg !704
  %174 = load ptr, ptr %4, align 8, !dbg !705
  %175 = getelementptr inbounds ptr, ptr %174, i64 1, !dbg !705
  %176 = load ptr, ptr %175, align 8, !dbg !705
  %177 = load ptr, ptr %4, align 8, !dbg !706
  %178 = getelementptr inbounds ptr, ptr %177, i64 2, !dbg !706
  %179 = load ptr, ptr %178, align 8, !dbg !706
  %180 = call i32 @decfile(ptr noundef %171, ptr noundef %172, ptr noundef %173, ptr noundef %176, ptr noundef %179), !dbg !707
  store i32 %180, ptr %13, align 4, !dbg !708
  br label %181

181:                                              ; preds = %165, %152
  br label %182, !dbg !709

182:                                              ; preds = %181, %139, %128, %117, %108, %86, %33
    #dbg_label(!710, !711)
  %183 = load ptr, ptr %6, align 8, !dbg !712
  %184 = icmp ne ptr %183, null, !dbg !712
  br i1 %184, label %185, label %188, !dbg !712

185:                                              ; preds = %182
  %186 = load ptr, ptr %6, align 8, !dbg !714
  %187 = call i32 @fclose(ptr noundef %186), !dbg !715
  br label %188, !dbg !715

188:                                              ; preds = %185, %182
  %189 = load ptr, ptr %5, align 8, !dbg !716
  %190 = icmp ne ptr %189, null, !dbg !716
  br i1 %190, label %191, label %194, !dbg !716

191:                                              ; preds = %188
  %192 = load ptr, ptr %5, align 8, !dbg !718
  %193 = call i32 @fclose(ptr noundef %192), !dbg !719
  br label %194, !dbg !719

194:                                              ; preds = %191, %188
  %195 = load i32, ptr %13, align 4, !dbg !720
  ret i32 %195, !dbg !721
}

; Function Attrs: nounwind willreturn memory(read)
declare i32 @toupper(i32 noundef) #3

declare noalias ptr @fopen(ptr noundef, ptr noundef) #1

declare signext i16 @set_key(ptr noundef, i64 noundef, i32 noundef, ptr noundef) #1

declare i32 @fclose(ptr noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nounwind willreturn memory(read) }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!111, !112, !113, !114, !115, !116, !117}
!llvm.ident = !{!118}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !3, line: 74, type: !108, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "fillrand", scope: !3, file: !3, line: 73, type: !4, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !107)
!3 = !DIFile(filename: "cBench/security_rijndael_d/src/aesxam.c", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "e37ed3dc4e3af9ffa49975a5e9c20526")
!4 = !DISubroutineType(types: !5)
!5 = !{null, !6, !8}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!8 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!9 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !10, retainedTypes: !18, globals: !51, splitDebugInlining: false, nameTableKind: None)
!10 = !{!11}
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "aes_key", file: !12, line: 277, baseType: !13, size: 32, elements: !14)
!12 = !DIFile(filename: "cBench/security_rijndael_d/src/aes.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "4959970e1b908fe264ed472fd225ff4c")
!13 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!14 = !{!15, !16, !17}
!15 = !DIEnumerator(name: "enc", value: 1)
!16 = !DIEnumerator(name: "dec", value: 2)
!17 = !DIEnumerator(name: "both", value: 3)
!18 = !{!19, !21, !7, !46, !50, !20}
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !23, line: 84, baseType: !24)
!23 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "__fpos_t", file: !25, line: 14, baseType: !26)
!25 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__fpos_t.h", directory: "", checksumkind: CSK_MD5, checksum: "32de8bdaf3551a6c0a9394f9af4389ce")
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_G_fpos_t", file: !25, line: 10, size: 128, elements: !27)
!27 = !{!28, !32}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "__pos", scope: !26, file: !25, line: 12, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !30, line: 152, baseType: !31)
!30 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!31 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !26, file: !25, line: 13, baseType: !33, size: 64, offset: 64)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !34, line: 21, baseType: !35)
!34 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !34, line: 13, size: 64, elements: !36)
!36 = !{!37, !38}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !35, file: !34, line: 15, baseType: !8, size: 32)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !35, file: !34, line: 20, baseType: !39, size: 32, offset: 32)
!39 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !35, file: !34, line: 16, size: 32, elements: !40)
!40 = !{!41, !42}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !39, file: !34, line: 18, baseType: !13, size: 32)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !39, file: !34, line: 19, baseType: !43, size: 32)
!43 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 32, elements: !44)
!44 = !{!45}
!45 = !DISubrange(count: 4)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "byte", file: !12, line: 223, baseType: !49)
!49 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!51 = !{!0, !52, !54, !56, !58, !63, !68, !73, !78, !83, !85, !90, !95, !100, !102}
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(name: "mt", scope: !2, file: !3, line: 74, type: !20, isLocal: true, isDefinition: true)
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression())
!55 = distinct !DIGlobalVariable(name: "count", scope: !2, file: !3, line: 74, type: !20, isLocal: true, isDefinition: true)
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression())
!57 = distinct !DIGlobalVariable(name: "r", scope: !2, file: !3, line: 75, type: !43, isLocal: true, isDefinition: true)
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(scope: null, file: !3, line: 127, type: !60, isLocal: true, isDefinition: true)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 272, elements: !61)
!61 = !{!62}
!62 = !DISubrange(count: 34)
!63 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression())
!64 = distinct !DIGlobalVariable(scope: null, file: !3, line: 169, type: !65, isLocal: true, isDefinition: true)
!65 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 280, elements: !66)
!66 = !{!67}
!67 = !DISubrange(count: 35)
!68 = !DIGlobalVariableExpression(var: !69, expr: !DIExpression())
!69 = distinct !DIGlobalVariable(scope: null, file: !3, line: 177, type: !70, isLocal: true, isDefinition: true)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 216, elements: !71)
!71 = !{!72}
!72 = !DISubrange(count: 27)
!73 = !DIGlobalVariableExpression(var: !74, expr: !DIExpression())
!74 = distinct !DIGlobalVariable(scope: null, file: !3, line: 243, type: !75, isLocal: true, isDefinition: true)
!75 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 472, elements: !76)
!76 = !{!77}
!77 = !DISubrange(count: 59)
!78 = !DIGlobalVariableExpression(var: !79, expr: !DIExpression())
!79 = distinct !DIGlobalVariable(scope: null, file: !3, line: 259, type: !80, isLocal: true, isDefinition: true)
!80 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 296, elements: !81)
!81 = !{!82}
!82 = !DISubrange(count: 37)
!83 = !DIGlobalVariableExpression(var: !84, expr: !DIExpression())
!84 = distinct !DIGlobalVariable(scope: null, file: !3, line: 270, type: !70, isLocal: true, isDefinition: true)
!85 = !DIGlobalVariableExpression(var: !86, expr: !DIExpression())
!86 = distinct !DIGlobalVariable(scope: null, file: !3, line: 275, type: !87, isLocal: true, isDefinition: true)
!87 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 448, elements: !88)
!88 = !{!89}
!89 = !DISubrange(count: 56)
!90 = !DIGlobalVariableExpression(var: !91, expr: !DIExpression())
!91 = distinct !DIGlobalVariable(scope: null, file: !3, line: 281, type: !92, isLocal: true, isDefinition: true)
!92 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 24, elements: !93)
!93 = !{!94}
!94 = !DISubrange(count: 3)
!95 = !DIGlobalVariableExpression(var: !96, expr: !DIExpression())
!96 = distinct !DIGlobalVariable(scope: null, file: !3, line: 283, type: !97, isLocal: true, isDefinition: true)
!97 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 320, elements: !98)
!98 = !{!99}
!99 = !DISubrange(count: 40)
!100 = !DIGlobalVariableExpression(var: !101, expr: !DIExpression())
!101 = distinct !DIGlobalVariable(scope: null, file: !3, line: 287, type: !92, isLocal: true, isDefinition: true)
!102 = !DIGlobalVariableExpression(var: !103, expr: !DIExpression())
!103 = distinct !DIGlobalVariable(scope: null, file: !3, line: 289, type: !104, isLocal: true, isDefinition: true)
!104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 328, elements: !105)
!105 = !{!106}
!106 = !DISubrange(count: 41)
!107 = !{}
!108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 128, elements: !109)
!109 = !{!110}
!110 = !DISubrange(count: 2)
!111 = !{i32 7, !"Dwarf Version", i32 5}
!112 = !{i32 2, !"Debug Info Version", i32 3}
!113 = !{i32 1, !"wchar_size", i32 4}
!114 = !{i32 8, !"PIC Level", i32 2}
!115 = !{i32 7, !"PIE Level", i32 2}
!116 = !{i32 7, !"uwtable", i32 2}
!117 = !{i32 7, !"frame-pointer", i32 2}
!118 = !{!"clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)"}
!119 = !DILocalVariable(name: "buf", arg: 1, scope: !2, file: !3, line: 73, type: !6)
!120 = !DILocation(line: 73, column: 21, scope: !2)
!121 = !DILocalVariable(name: "len", arg: 2, scope: !2, file: !3, line: 73, type: !8)
!122 = !DILocation(line: 73, column: 30, scope: !2)
!123 = !DILocalVariable(name: "i", scope: !2, file: !3, line: 76, type: !8)
!124 = !DILocation(line: 76, column: 26, scope: !2)
!125 = !DILocation(line: 78, column: 8, scope: !126)
!126 = distinct !DILexicalBlock(scope: !2, file: !3, line: 78, column: 8)
!127 = !DILocation(line: 79, column: 6, scope: !128)
!128 = distinct !DILexicalBlock(scope: !126, file: !3, line: 78, column: 12)
!129 = !DILocation(line: 81, column: 11, scope: !128)
!130 = !DILocation(line: 82, column: 7, scope: !128)
!131 = !DILocation(line: 83, column: 5, scope: !128)
!132 = !DILocation(line: 85, column: 11, scope: !133)
!133 = distinct !DILexicalBlock(scope: !2, file: !3, line: 85, column: 5)
!134 = !DILocation(line: 85, column: 9, scope: !133)
!135 = !DILocation(line: 85, column: 16, scope: !136)
!136 = distinct !DILexicalBlock(scope: !133, file: !3, line: 85, column: 5)
!137 = !DILocation(line: 85, column: 20, scope: !136)
!138 = !DILocation(line: 85, column: 18, scope: !136)
!139 = !DILocation(line: 85, column: 5, scope: !133)
!140 = !DILocation(line: 87, column: 12, scope: !141)
!141 = distinct !DILexicalBlock(scope: !142, file: !3, line: 87, column: 12)
!142 = distinct !DILexicalBlock(scope: !136, file: !3, line: 86, column: 5)
!143 = !DILocation(line: 87, column: 18, scope: !141)
!144 = !DILocation(line: 89, column: 34, scope: !145)
!145 = distinct !DILexicalBlock(scope: !141, file: !3, line: 88, column: 9)
!146 = !DILocation(line: 89, column: 32, scope: !145)
!147 = !DILocation(line: 90, column: 19, scope: !145)
!148 = !DILocation(line: 91, column: 9, scope: !145)
!149 = !DILocation(line: 93, column: 25, scope: !142)
!150 = !DILocation(line: 93, column: 18, scope: !142)
!151 = !DILocation(line: 93, column: 9, scope: !142)
!152 = !DILocation(line: 93, column: 13, scope: !142)
!153 = !DILocation(line: 93, column: 16, scope: !142)
!154 = !DILocation(line: 94, column: 5, scope: !142)
!155 = !DILocation(line: 85, column: 25, scope: !136)
!156 = !DILocation(line: 85, column: 5, scope: !136)
!157 = distinct !{!157, !139, !158, !159}
!158 = !DILocation(line: 94, column: 5, scope: !133)
!159 = !{!"llvm.loop.mustprogress"}
!160 = !DILocation(line: 95, column: 1, scope: !2)
!161 = distinct !DISubprogram(name: "encfile", scope: !3, file: !3, line: 97, type: !162, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !107)
!162 = !DISubroutineType(types: !163)
!163 = !{!8, !164, !164, !220, !6}
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !166, line: 7, baseType: !167)
!166 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !168, line: 49, size: 1728, elements: !169)
!168 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!169 = !{!170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !185, !187, !188, !189, !190, !192, !194, !198, !201, !203, !206, !209, !210, !212, !215, !216}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !167, file: !168, line: 51, baseType: !8, size: 32)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !167, file: !168, line: 54, baseType: !6, size: 64, offset: 64)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !167, file: !168, line: 55, baseType: !6, size: 64, offset: 128)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !167, file: !168, line: 56, baseType: !6, size: 64, offset: 192)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !167, file: !168, line: 57, baseType: !6, size: 64, offset: 256)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !167, file: !168, line: 58, baseType: !6, size: 64, offset: 320)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !167, file: !168, line: 59, baseType: !6, size: 64, offset: 384)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !167, file: !168, line: 60, baseType: !6, size: 64, offset: 448)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !167, file: !168, line: 61, baseType: !6, size: 64, offset: 512)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !167, file: !168, line: 64, baseType: !6, size: 64, offset: 576)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !167, file: !168, line: 65, baseType: !6, size: 64, offset: 640)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !167, file: !168, line: 66, baseType: !6, size: 64, offset: 704)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !167, file: !168, line: 68, baseType: !183, size: 64, offset: 768)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !168, line: 36, flags: DIFlagFwdDecl)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !167, file: !168, line: 70, baseType: !186, size: 64, offset: 832)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !167, file: !168, line: 72, baseType: !8, size: 32, offset: 896)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !167, file: !168, line: 73, baseType: !8, size: 32, offset: 928)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !167, file: !168, line: 74, baseType: !29, size: 64, offset: 960)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !167, file: !168, line: 77, baseType: !191, size: 16, offset: 1024)
!191 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !167, file: !168, line: 78, baseType: !193, size: 8, offset: 1040)
!193 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !167, file: !168, line: 79, baseType: !195, size: 8, offset: 1048)
!195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 8, elements: !196)
!196 = !{!197}
!197 = !DISubrange(count: 1)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !167, file: !168, line: 81, baseType: !199, size: 64, offset: 1088)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !168, line: 43, baseType: null)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !167, file: !168, line: 89, baseType: !202, size: 64, offset: 1152)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !30, line: 153, baseType: !31)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !167, file: !168, line: 91, baseType: !204, size: 64, offset: 1216)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !168, line: 37, flags: DIFlagFwdDecl)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !167, file: !168, line: 92, baseType: !207, size: 64, offset: 1280)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !168, line: 38, flags: DIFlagFwdDecl)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !167, file: !168, line: 93, baseType: !186, size: 64, offset: 1344)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !167, file: !168, line: 94, baseType: !211, size: 64, offset: 1408)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !167, file: !168, line: 95, baseType: !213, size: 64, offset: 1472)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !214, line: 18, baseType: !20)
!214 = !DIFile(filename: "/usr/local/lib/clang/20/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!215 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !167, file: !168, line: 96, baseType: !8, size: 32, offset: 1536)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !167, file: !168, line: 98, baseType: !217, size: 160, offset: 1568)
!217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 160, elements: !218)
!218 = !{!219}
!219 = !DISubrange(count: 20)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "aes", file: !12, line: 305, baseType: !222)
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !12, line: 295, size: 8384, elements: !223)
!223 = !{!224, !226, !227, !231, !232}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "Nkey", scope: !222, file: !12, line: 297, baseType: !225, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "word", file: !12, line: 224, baseType: !20)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "Nrnd", scope: !222, file: !12, line: 298, baseType: !225, size: 64, offset: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "e_key", scope: !222, file: !12, line: 299, baseType: !228, size: 4096, offset: 128)
!228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !225, size: 4096, elements: !229)
!229 = !{!230}
!230 = !DISubrange(count: 64)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "d_key", scope: !222, file: !12, line: 300, baseType: !228, size: 4096, offset: 4224)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !222, file: !12, line: 304, baseType: !48, size: 8, offset: 8320)
!233 = !DILocalVariable(name: "fin", arg: 1, scope: !161, file: !3, line: 97, type: !164)
!234 = !DILocation(line: 97, column: 19, scope: !161)
!235 = !DILocalVariable(name: "fout", arg: 2, scope: !161, file: !3, line: 97, type: !164)
!236 = !DILocation(line: 97, column: 30, scope: !161)
!237 = !DILocalVariable(name: "ctx", arg: 3, scope: !161, file: !3, line: 97, type: !220)
!238 = !DILocation(line: 97, column: 41, scope: !161)
!239 = !DILocalVariable(name: "fn", arg: 4, scope: !161, file: !3, line: 97, type: !6)
!240 = !DILocation(line: 97, column: 52, scope: !161)
!241 = !DILocalVariable(name: "inbuf", scope: !161, file: !3, line: 98, type: !242)
!242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 128, elements: !243)
!243 = !{!244}
!244 = !DISubrange(count: 16)
!245 = !DILocation(line: 98, column: 21, scope: !161)
!246 = !DILocalVariable(name: "outbuf", scope: !161, file: !3, line: 98, type: !242)
!247 = !DILocation(line: 98, column: 32, scope: !161)
!248 = !DILocalVariable(name: "flen", scope: !161, file: !3, line: 101, type: !20)
!249 = !DILocation(line: 101, column: 21, scope: !161)
!250 = !DILocalVariable(name: "i", scope: !161, file: !3, line: 102, type: !20)
!251 = !DILocation(line: 102, column: 21, scope: !161)
!252 = !DILocalVariable(name: "l", scope: !161, file: !3, line: 102, type: !20)
!253 = !DILocation(line: 102, column: 26, scope: !161)
!254 = !DILocation(line: 104, column: 14, scope: !161)
!255 = !DILocation(line: 104, column: 5, scope: !161)
!256 = !DILocation(line: 105, column: 11, scope: !161)
!257 = !DILocation(line: 105, column: 5, scope: !161)
!258 = !DILocation(line: 106, column: 13, scope: !161)
!259 = !DILocation(line: 106, column: 5, scope: !161)
!260 = !DILocation(line: 107, column: 11, scope: !161)
!261 = !DILocation(line: 107, column: 5, scope: !161)
!262 = !DILocation(line: 108, column: 12, scope: !161)
!263 = !DILocation(line: 108, column: 27, scope: !161)
!264 = !DILocation(line: 108, column: 5, scope: !161)
!265 = !DILocation(line: 109, column: 14, scope: !161)
!266 = !DILocation(line: 109, column: 5, scope: !161)
!267 = !DILocation(line: 110, column: 7, scope: !161)
!268 = !DILocation(line: 112, column: 23, scope: !161)
!269 = !DILocation(line: 112, column: 17, scope: !161)
!270 = !DILocation(line: 112, column: 28, scope: !161)
!271 = !DILocation(line: 112, column: 37, scope: !161)
!272 = !DILocation(line: 112, column: 46, scope: !161)
!273 = !DILocation(line: 112, column: 34, scope: !161)
!274 = !DILocation(line: 112, column: 16, scope: !161)
!275 = !DILocation(line: 112, column: 5, scope: !161)
!276 = !DILocation(line: 112, column: 14, scope: !161)
!277 = !DILocation(line: 114, column: 5, scope: !161)
!278 = !DILocation(line: 114, column: 17, scope: !161)
!279 = !DILocation(line: 114, column: 12, scope: !161)
!280 = !DILocation(line: 114, column: 11, scope: !161)
!281 = !DILocation(line: 116, column: 19, scope: !282)
!282 = distinct !DILexicalBlock(scope: !161, file: !3, line: 115, column: 5)
!283 = !DILocation(line: 116, column: 25, scope: !282)
!284 = !DILocation(line: 116, column: 32, scope: !282)
!285 = !DILocation(line: 116, column: 30, scope: !282)
!286 = !DILocation(line: 116, column: 38, scope: !282)
!287 = !DILocation(line: 116, column: 41, scope: !282)
!288 = !DILocation(line: 116, column: 13, scope: !282)
!289 = !DILocation(line: 116, column: 11, scope: !282)
!290 = !DILocation(line: 118, column: 12, scope: !291)
!291 = distinct !DILexicalBlock(scope: !282, file: !3, line: 118, column: 12)
!292 = !DILocation(line: 118, column: 16, scope: !291)
!293 = !DILocation(line: 118, column: 14, scope: !291)
!294 = !DILocation(line: 118, column: 19, scope: !291)
!295 = !DILocation(line: 120, column: 15, scope: !296)
!296 = distinct !DILexicalBlock(scope: !282, file: !3, line: 120, column: 9)
!297 = !DILocation(line: 120, column: 13, scope: !296)
!298 = !DILocation(line: 120, column: 20, scope: !299)
!299 = distinct !DILexicalBlock(scope: !296, file: !3, line: 120, column: 9)
!300 = !DILocation(line: 120, column: 22, scope: !299)
!301 = !DILocation(line: 120, column: 9, scope: !296)
!302 = !DILocation(line: 121, column: 32, scope: !299)
!303 = !DILocation(line: 121, column: 25, scope: !299)
!304 = !DILocation(line: 121, column: 19, scope: !299)
!305 = !DILocation(line: 121, column: 13, scope: !299)
!306 = !DILocation(line: 121, column: 22, scope: !299)
!307 = !DILocation(line: 120, column: 28, scope: !299)
!308 = !DILocation(line: 120, column: 9, scope: !299)
!309 = distinct !{!309, !301, !310, !159}
!310 = !DILocation(line: 121, column: 33, scope: !296)
!311 = !DILocation(line: 123, column: 30, scope: !282)
!312 = !DILocation(line: 123, column: 44, scope: !282)
!313 = !DILocation(line: 123, column: 52, scope: !282)
!314 = !DILocation(line: 123, column: 9, scope: !282)
!315 = !DILocation(line: 125, column: 19, scope: !316)
!316 = distinct !DILexicalBlock(scope: !282, file: !3, line: 125, column: 12)
!317 = !DILocation(line: 125, column: 34, scope: !316)
!318 = !DILocation(line: 125, column: 12, scope: !316)
!319 = !DILocation(line: 125, column: 40, scope: !316)
!320 = !DILocation(line: 127, column: 58, scope: !321)
!321 = distinct !DILexicalBlock(scope: !316, file: !3, line: 126, column: 9)
!322 = !DILocation(line: 127, column: 13, scope: !321)
!323 = !DILocation(line: 128, column: 13, scope: !321)
!324 = !DILocation(line: 131, column: 11, scope: !282)
!325 = distinct !{!325, !277, !326, !159}
!326 = !DILocation(line: 132, column: 5, scope: !161)
!327 = !DILocation(line: 140, column: 8, scope: !328)
!328 = distinct !DILexicalBlock(scope: !161, file: !3, line: 140, column: 8)
!329 = !DILocation(line: 140, column: 10, scope: !328)
!330 = !DILocation(line: 141, column: 9, scope: !328)
!331 = !DILocation(line: 143, column: 8, scope: !332)
!332 = distinct !DILexicalBlock(scope: !161, file: !3, line: 143, column: 8)
!333 = !DILocation(line: 145, column: 9, scope: !334)
!334 = distinct !DILexicalBlock(scope: !332, file: !3, line: 144, column: 5)
!335 = !DILocation(line: 145, column: 15, scope: !334)
!336 = !DILocation(line: 145, column: 17, scope: !334)
!337 = !DILocation(line: 146, column: 20, scope: !334)
!338 = !DILocation(line: 146, column: 13, scope: !334)
!339 = !DILocation(line: 146, column: 24, scope: !334)
!340 = distinct !{!340, !333, !341, !159}
!341 = !DILocation(line: 146, column: 26, scope: !334)
!342 = !DILocation(line: 148, column: 15, scope: !343)
!343 = distinct !DILexicalBlock(scope: !334, file: !3, line: 148, column: 9)
!344 = !DILocation(line: 148, column: 13, scope: !343)
!345 = !DILocation(line: 148, column: 20, scope: !346)
!346 = distinct !DILexicalBlock(scope: !343, file: !3, line: 148, column: 9)
!347 = !DILocation(line: 148, column: 22, scope: !346)
!348 = !DILocation(line: 148, column: 9, scope: !343)
!349 = !DILocation(line: 149, column: 32, scope: !346)
!350 = !DILocation(line: 149, column: 25, scope: !346)
!351 = !DILocation(line: 149, column: 19, scope: !346)
!352 = !DILocation(line: 149, column: 13, scope: !346)
!353 = !DILocation(line: 149, column: 22, scope: !346)
!354 = !DILocation(line: 148, column: 28, scope: !346)
!355 = !DILocation(line: 148, column: 9, scope: !346)
!356 = distinct !{!356, !348, !357, !159}
!357 = !DILocation(line: 149, column: 33, scope: !343)
!358 = !DILocation(line: 151, column: 30, scope: !334)
!359 = !DILocation(line: 151, column: 44, scope: !334)
!360 = !DILocation(line: 151, column: 52, scope: !334)
!361 = !DILocation(line: 151, column: 9, scope: !334)
!362 = !DILocation(line: 153, column: 19, scope: !363)
!363 = distinct !DILexicalBlock(scope: !334, file: !3, line: 153, column: 12)
!364 = !DILocation(line: 153, column: 34, scope: !363)
!365 = !DILocation(line: 153, column: 12, scope: !363)
!366 = !DILocation(line: 153, column: 40, scope: !363)
!367 = !DILocation(line: 155, column: 58, scope: !368)
!368 = distinct !DILexicalBlock(scope: !363, file: !3, line: 154, column: 9)
!369 = !DILocation(line: 155, column: 13, scope: !368)
!370 = !DILocation(line: 156, column: 13, scope: !368)
!371 = !DILocation(line: 158, column: 5, scope: !334)
!372 = !DILocation(line: 160, column: 5, scope: !161)
!373 = !DILocation(line: 161, column: 1, scope: !161)
!374 = distinct !DISubprogram(name: "decfile", scope: !3, file: !3, line: 163, type: !375, scopeLine: 164, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !107)
!375 = !DISubroutineType(types: !376)
!376 = !{!8, !164, !164, !220, !6, !6}
!377 = !DILocalVariable(name: "fin", arg: 1, scope: !374, file: !3, line: 163, type: !164)
!378 = !DILocation(line: 163, column: 19, scope: !374)
!379 = !DILocalVariable(name: "fout", arg: 2, scope: !374, file: !3, line: 163, type: !164)
!380 = !DILocation(line: 163, column: 30, scope: !374)
!381 = !DILocalVariable(name: "ctx", arg: 3, scope: !374, file: !3, line: 163, type: !220)
!382 = !DILocation(line: 163, column: 41, scope: !374)
!383 = !DILocalVariable(name: "ifn", arg: 4, scope: !374, file: !3, line: 163, type: !6)
!384 = !DILocation(line: 163, column: 52, scope: !374)
!385 = !DILocalVariable(name: "ofn", arg: 5, scope: !374, file: !3, line: 163, type: !6)
!386 = !DILocation(line: 163, column: 63, scope: !374)
!387 = !DILocalVariable(name: "inbuf1", scope: !374, file: !3, line: 164, type: !242)
!388 = !DILocation(line: 164, column: 13, scope: !374)
!389 = !DILocalVariable(name: "inbuf2", scope: !374, file: !3, line: 164, type: !242)
!390 = !DILocation(line: 164, column: 25, scope: !374)
!391 = !DILocalVariable(name: "outbuf", scope: !374, file: !3, line: 164, type: !242)
!392 = !DILocation(line: 164, column: 37, scope: !374)
!393 = !DILocalVariable(name: "bp1", scope: !374, file: !3, line: 164, type: !6)
!394 = !DILocation(line: 164, column: 50, scope: !374)
!395 = !DILocalVariable(name: "bp2", scope: !374, file: !3, line: 164, type: !6)
!396 = !DILocation(line: 164, column: 56, scope: !374)
!397 = !DILocalVariable(name: "tp", scope: !374, file: !3, line: 164, type: !6)
!398 = !DILocation(line: 164, column: 62, scope: !374)
!399 = !DILocalVariable(name: "i", scope: !374, file: !3, line: 165, type: !8)
!400 = !DILocation(line: 165, column: 13, scope: !374)
!401 = !DILocalVariable(name: "l", scope: !374, file: !3, line: 165, type: !8)
!402 = !DILocation(line: 165, column: 16, scope: !374)
!403 = !DILocalVariable(name: "flen", scope: !374, file: !3, line: 165, type: !8)
!404 = !DILocation(line: 165, column: 19, scope: !374)
!405 = !DILocation(line: 167, column: 14, scope: !406)
!406 = distinct !DILexicalBlock(scope: !374, file: !3, line: 167, column: 8)
!407 = !DILocation(line: 167, column: 29, scope: !406)
!408 = !DILocation(line: 167, column: 8, scope: !406)
!409 = !DILocation(line: 167, column: 34, scope: !406)
!410 = !DILocation(line: 169, column: 55, scope: !411)
!411 = distinct !DILexicalBlock(scope: !406, file: !3, line: 168, column: 5)
!412 = !DILocation(line: 169, column: 9, scope: !411)
!413 = !DILocation(line: 170, column: 9, scope: !411)
!414 = !DILocation(line: 173, column: 15, scope: !374)
!415 = !DILocation(line: 173, column: 30, scope: !374)
!416 = !DILocation(line: 173, column: 9, scope: !374)
!417 = !DILocation(line: 173, column: 7, scope: !374)
!418 = !DILocation(line: 175, column: 8, scope: !419)
!419 = distinct !DILexicalBlock(scope: !374, file: !3, line: 175, column: 8)
!420 = !DILocation(line: 175, column: 10, scope: !419)
!421 = !DILocation(line: 175, column: 13, scope: !419)
!422 = !DILocation(line: 175, column: 15, scope: !419)
!423 = !DILocation(line: 177, column: 9, scope: !424)
!424 = distinct !DILexicalBlock(scope: !419, file: !3, line: 176, column: 5)
!425 = !DILocation(line: 178, column: 9, scope: !424)
!426 = !DILocation(line: 181, column: 26, scope: !374)
!427 = !DILocation(line: 181, column: 41, scope: !374)
!428 = !DILocation(line: 181, column: 49, scope: !374)
!429 = !DILocation(line: 181, column: 5, scope: !374)
!430 = !DILocation(line: 183, column: 11, scope: !431)
!431 = distinct !DILexicalBlock(scope: !374, file: !3, line: 183, column: 5)
!432 = !DILocation(line: 183, column: 9, scope: !431)
!433 = !DILocation(line: 183, column: 16, scope: !434)
!434 = distinct !DILexicalBlock(scope: !431, file: !3, line: 183, column: 5)
!435 = !DILocation(line: 183, column: 18, scope: !434)
!436 = !DILocation(line: 183, column: 5, scope: !431)
!437 = !DILocation(line: 184, column: 29, scope: !434)
!438 = !DILocation(line: 184, column: 22, scope: !434)
!439 = !DILocation(line: 184, column: 16, scope: !434)
!440 = !DILocation(line: 184, column: 9, scope: !434)
!441 = !DILocation(line: 184, column: 19, scope: !434)
!442 = !DILocation(line: 183, column: 24, scope: !434)
!443 = !DILocation(line: 183, column: 5, scope: !434)
!444 = distinct !{!444, !436, !445, !159}
!445 = !DILocation(line: 184, column: 30, scope: !431)
!446 = !DILocation(line: 186, column: 12, scope: !374)
!447 = !DILocation(line: 186, column: 22, scope: !374)
!448 = !DILocation(line: 186, column: 10, scope: !374)
!449 = !DILocation(line: 187, column: 7, scope: !374)
!450 = !DILocation(line: 188, column: 11, scope: !374)
!451 = !DILocation(line: 188, column: 9, scope: !374)
!452 = !DILocation(line: 189, column: 11, scope: !374)
!453 = !DILocation(line: 189, column: 9, scope: !374)
!454 = !DILocation(line: 191, column: 5, scope: !374)
!455 = !DILocation(line: 193, column: 19, scope: !456)
!456 = distinct !DILexicalBlock(scope: !374, file: !3, line: 192, column: 5)
!457 = !DILocation(line: 193, column: 31, scope: !456)
!458 = !DILocation(line: 193, column: 13, scope: !456)
!459 = !DILocation(line: 193, column: 11, scope: !456)
!460 = !DILocation(line: 195, column: 12, scope: !461)
!461 = distinct !DILexicalBlock(scope: !456, file: !3, line: 195, column: 12)
!462 = !DILocation(line: 195, column: 14, scope: !461)
!463 = !DILocation(line: 196, column: 13, scope: !461)
!464 = !DILocation(line: 201, column: 19, scope: !465)
!465 = distinct !DILexicalBlock(scope: !456, file: !3, line: 201, column: 12)
!466 = !DILocation(line: 201, column: 26, scope: !465)
!467 = !DILocation(line: 201, column: 33, scope: !465)
!468 = !DILocation(line: 201, column: 31, scope: !465)
!469 = !DILocation(line: 201, column: 39, scope: !465)
!470 = !DILocation(line: 201, column: 42, scope: !465)
!471 = !DILocation(line: 201, column: 12, scope: !465)
!472 = !DILocation(line: 201, column: 66, scope: !465)
!473 = !DILocation(line: 201, column: 51, scope: !465)
!474 = !DILocation(line: 201, column: 48, scope: !465)
!475 = !DILocation(line: 203, column: 58, scope: !476)
!476 = distinct !DILexicalBlock(scope: !465, file: !3, line: 202, column: 9)
!477 = !DILocation(line: 203, column: 13, scope: !476)
!478 = !DILocation(line: 204, column: 13, scope: !476)
!479 = !DILocation(line: 207, column: 30, scope: !456)
!480 = !DILocation(line: 207, column: 42, scope: !456)
!481 = !DILocation(line: 207, column: 50, scope: !456)
!482 = !DILocation(line: 207, column: 9, scope: !456)
!483 = !DILocation(line: 209, column: 15, scope: !484)
!484 = distinct !DILexicalBlock(scope: !456, file: !3, line: 209, column: 9)
!485 = !DILocation(line: 209, column: 13, scope: !484)
!486 = !DILocation(line: 209, column: 20, scope: !487)
!487 = distinct !DILexicalBlock(scope: !484, file: !3, line: 209, column: 9)
!488 = !DILocation(line: 209, column: 22, scope: !487)
!489 = !DILocation(line: 209, column: 9, scope: !484)
!490 = !DILocation(line: 210, column: 26, scope: !487)
!491 = !DILocation(line: 210, column: 30, scope: !487)
!492 = !DILocation(line: 210, column: 20, scope: !487)
!493 = !DILocation(line: 210, column: 13, scope: !487)
!494 = !DILocation(line: 210, column: 23, scope: !487)
!495 = !DILocation(line: 209, column: 28, scope: !487)
!496 = !DILocation(line: 209, column: 9, scope: !487)
!497 = distinct !{!497, !489, !498, !159}
!498 = !DILocation(line: 210, column: 31, scope: !484)
!499 = !DILocation(line: 214, column: 13, scope: !456)
!500 = !DILocation(line: 214, column: 11, scope: !456)
!501 = !DILocation(line: 214, column: 21, scope: !456)
!502 = !DILocation(line: 214, column: 19, scope: !456)
!503 = !DILocation(line: 214, column: 32, scope: !456)
!504 = !DILocation(line: 214, column: 30, scope: !456)
!505 = !DILocation(line: 214, column: 43, scope: !456)
!506 = !DILocation(line: 214, column: 41, scope: !456)
!507 = distinct !{!507, !454, !508}
!508 = !DILocation(line: 215, column: 5, scope: !374)
!509 = !DILocation(line: 223, column: 10, scope: !374)
!510 = !DILocation(line: 223, column: 12, scope: !374)
!511 = !DILocation(line: 223, column: 7, scope: !374)
!512 = !DILocation(line: 223, column: 40, scope: !374)
!513 = !DILocation(line: 223, column: 38, scope: !374)
!514 = !DILocation(line: 223, column: 33, scope: !374)
!515 = !DILocation(line: 225, column: 8, scope: !516)
!516 = distinct !DILexicalBlock(scope: !374, file: !3, line: 225, column: 8)
!517 = !DILocation(line: 226, column: 19, scope: !518)
!518 = distinct !DILexicalBlock(scope: !516, file: !3, line: 226, column: 12)
!519 = !DILocation(line: 226, column: 28, scope: !518)
!520 = !DILocation(line: 226, column: 26, scope: !518)
!521 = !DILocation(line: 226, column: 34, scope: !518)
!522 = !DILocation(line: 226, column: 40, scope: !518)
!523 = !DILocation(line: 226, column: 12, scope: !518)
!524 = !DILocation(line: 226, column: 64, scope: !518)
!525 = !DILocation(line: 226, column: 49, scope: !518)
!526 = !DILocation(line: 226, column: 46, scope: !518)
!527 = !DILocation(line: 228, column: 58, scope: !528)
!528 = distinct !DILexicalBlock(scope: !518, file: !3, line: 227, column: 9)
!529 = !DILocation(line: 228, column: 13, scope: !528)
!530 = !DILocation(line: 229, column: 13, scope: !528)
!531 = !DILocation(line: 232, column: 5, scope: !374)
!532 = !DILocation(line: 233, column: 1, scope: !374)
!533 = distinct !DISubprogram(name: "main1", scope: !3, file: !3, line: 235, type: !534, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !107)
!534 = !DISubroutineType(types: !535)
!535 = !{!8, !8, !536}
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!537 = !DILocalVariable(name: "argc", arg: 1, scope: !533, file: !3, line: 235, type: !8)
!538 = !DILocation(line: 235, column: 15, scope: !533)
!539 = !DILocalVariable(name: "argv", arg: 2, scope: !533, file: !3, line: 235, type: !536)
!540 = !DILocation(line: 235, column: 27, scope: !533)
!541 = !DILocalVariable(name: "fin", scope: !533, file: !3, line: 236, type: !164)
!542 = !DILocation(line: 236, column: 14, scope: !533)
!543 = !DILocalVariable(name: "fout", scope: !533, file: !3, line: 236, type: !164)
!544 = !DILocation(line: 236, column: 24, scope: !533)
!545 = !DILocalVariable(name: "cp", scope: !533, file: !3, line: 237, type: !6)
!546 = !DILocation(line: 237, column: 14, scope: !533)
!547 = !DILocalVariable(name: "ch", scope: !533, file: !3, line: 237, type: !7)
!548 = !DILocation(line: 237, column: 18, scope: !533)
!549 = !DILocalVariable(name: "key", scope: !533, file: !3, line: 237, type: !550)
!550 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !551)
!551 = !{!552}
!552 = !DISubrange(count: 32)
!553 = !DILocation(line: 237, column: 22, scope: !533)
!554 = !DILocalVariable(name: "i", scope: !533, file: !3, line: 238, type: !8)
!555 = !DILocation(line: 238, column: 13, scope: !533)
!556 = !DILocalVariable(name: "by", scope: !533, file: !3, line: 238, type: !8)
!557 = !DILocation(line: 238, column: 18, scope: !533)
!558 = !DILocalVariable(name: "key_len", scope: !533, file: !3, line: 238, type: !8)
!559 = !DILocation(line: 238, column: 24, scope: !533)
!560 = !DILocalVariable(name: "err", scope: !533, file: !3, line: 238, type: !8)
!561 = !DILocation(line: 238, column: 35, scope: !533)
!562 = !DILocalVariable(name: "ctx", scope: !533, file: !3, line: 239, type: !563)
!563 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 8384, elements: !196)
!564 = !DILocation(line: 239, column: 13, scope: !533)
!565 = !DILocation(line: 241, column: 8, scope: !566)
!566 = distinct !DILexicalBlock(scope: !533, file: !3, line: 241, column: 8)
!567 = !DILocation(line: 241, column: 13, scope: !566)
!568 = !DILocation(line: 241, column: 18, scope: !566)
!569 = !DILocation(line: 241, column: 31, scope: !566)
!570 = !DILocation(line: 241, column: 30, scope: !566)
!571 = !DILocation(line: 241, column: 22, scope: !566)
!572 = !DILocation(line: 241, column: 40, scope: !566)
!573 = !DILocation(line: 241, column: 47, scope: !566)
!574 = !DILocation(line: 241, column: 59, scope: !566)
!575 = !DILocation(line: 241, column: 58, scope: !566)
!576 = !DILocation(line: 241, column: 50, scope: !566)
!577 = !DILocation(line: 241, column: 68, scope: !566)
!578 = !DILocation(line: 243, column: 9, scope: !579)
!579 = distinct !DILexicalBlock(scope: !566, file: !3, line: 242, column: 5)
!580 = !DILocation(line: 244, column: 13, scope: !579)
!581 = !DILocation(line: 244, column: 19, scope: !579)
!582 = !DILocation(line: 247, column: 10, scope: !533)
!583 = !DILocation(line: 247, column: 8, scope: !533)
!584 = !DILocation(line: 248, column: 7, scope: !533)
!585 = !DILocation(line: 250, column: 5, scope: !533)
!586 = !DILocation(line: 250, column: 11, scope: !533)
!587 = !DILocation(line: 250, column: 13, scope: !533)
!588 = !DILocation(line: 250, column: 18, scope: !533)
!589 = !DILocation(line: 250, column: 22, scope: !533)
!590 = !DILocation(line: 250, column: 21, scope: !533)
!591 = !DILocation(line: 0, scope: !533)
!592 = !DILocation(line: 252, column: 25, scope: !593)
!593 = distinct !DILexicalBlock(scope: !533, file: !3, line: 251, column: 5)
!594 = !DILocation(line: 252, column: 22, scope: !593)
!595 = !DILocation(line: 252, column: 14, scope: !593)
!596 = !DILocation(line: 252, column: 12, scope: !593)
!597 = !DILocation(line: 253, column: 12, scope: !598)
!598 = distinct !DILexicalBlock(scope: !593, file: !3, line: 253, column: 12)
!599 = !DILocation(line: 253, column: 15, scope: !598)
!600 = !DILocation(line: 253, column: 22, scope: !598)
!601 = !DILocation(line: 253, column: 25, scope: !598)
!602 = !DILocation(line: 253, column: 28, scope: !598)
!603 = !DILocation(line: 254, column: 19, scope: !598)
!604 = !DILocation(line: 254, column: 22, scope: !598)
!605 = !DILocation(line: 254, column: 30, scope: !598)
!606 = !DILocation(line: 254, column: 28, scope: !598)
!607 = !DILocation(line: 254, column: 33, scope: !598)
!608 = !DILocation(line: 254, column: 16, scope: !598)
!609 = !DILocation(line: 254, column: 13, scope: !598)
!610 = !DILocation(line: 255, column: 17, scope: !611)
!611 = distinct !DILexicalBlock(scope: !598, file: !3, line: 255, column: 17)
!612 = !DILocation(line: 255, column: 20, scope: !611)
!613 = !DILocation(line: 255, column: 27, scope: !611)
!614 = !DILocation(line: 255, column: 30, scope: !611)
!615 = !DILocation(line: 255, column: 33, scope: !611)
!616 = !DILocation(line: 256, column: 19, scope: !611)
!617 = !DILocation(line: 256, column: 22, scope: !611)
!618 = !DILocation(line: 256, column: 30, scope: !611)
!619 = !DILocation(line: 256, column: 28, scope: !611)
!620 = !DILocation(line: 256, column: 33, scope: !611)
!621 = !DILocation(line: 256, column: 39, scope: !611)
!622 = !DILocation(line: 256, column: 16, scope: !611)
!623 = !DILocation(line: 256, column: 13, scope: !611)
!624 = !DILocation(line: 259, column: 13, scope: !625)
!625 = distinct !DILexicalBlock(scope: !611, file: !3, line: 258, column: 9)
!626 = !DILocation(line: 260, column: 17, scope: !625)
!627 = !DILocation(line: 260, column: 23, scope: !625)
!628 = !DILocation(line: 264, column: 13, scope: !629)
!629 = distinct !DILexicalBlock(scope: !593, file: !3, line: 264, column: 12)
!630 = !DILocation(line: 264, column: 16, scope: !629)
!631 = !DILocation(line: 265, column: 30, scope: !629)
!632 = !DILocation(line: 265, column: 33, scope: !629)
!633 = !DILocation(line: 265, column: 17, scope: !629)
!634 = !DILocation(line: 265, column: 19, scope: !629)
!635 = !DILocation(line: 265, column: 23, scope: !629)
!636 = !DILocation(line: 265, column: 13, scope: !629)
!637 = !DILocation(line: 265, column: 28, scope: !629)
!638 = distinct !{!638, !585, !639, !159}
!639 = !DILocation(line: 266, column: 5, scope: !533)
!640 = !DILocation(line: 268, column: 9, scope: !641)
!641 = distinct !DILexicalBlock(scope: !533, file: !3, line: 268, column: 8)
!642 = !DILocation(line: 268, column: 8, scope: !641)
!643 = !DILocation(line: 270, column: 9, scope: !644)
!644 = distinct !DILexicalBlock(scope: !641, file: !3, line: 269, column: 5)
!645 = !DILocation(line: 271, column: 13, scope: !644)
!646 = !DILocation(line: 271, column: 19, scope: !644)
!647 = !DILocation(line: 273, column: 13, scope: !648)
!648 = distinct !DILexicalBlock(scope: !641, file: !3, line: 273, column: 13)
!649 = !DILocation(line: 273, column: 15, scope: !648)
!650 = !DILocation(line: 273, column: 20, scope: !648)
!651 = !DILocation(line: 273, column: 24, scope: !648)
!652 = !DILocation(line: 273, column: 26, scope: !648)
!653 = !DILocation(line: 275, column: 9, scope: !654)
!654 = distinct !DILexicalBlock(scope: !648, file: !3, line: 274, column: 5)
!655 = !DILocation(line: 276, column: 13, scope: !654)
!656 = !DILocation(line: 276, column: 19, scope: !654)
!657 = !DILocation(line: 279, column: 15, scope: !533)
!658 = !DILocation(line: 279, column: 17, scope: !533)
!659 = !DILocation(line: 279, column: 13, scope: !533)
!660 = !DILocation(line: 281, column: 22, scope: !661)
!661 = distinct !DILexicalBlock(scope: !533, file: !3, line: 281, column: 8)
!662 = !DILocation(line: 281, column: 16, scope: !661)
!663 = !DILocation(line: 281, column: 14, scope: !661)
!664 = !DILocation(line: 281, column: 8, scope: !661)
!665 = !DILocation(line: 283, column: 60, scope: !666)
!666 = distinct !DILexicalBlock(scope: !661, file: !3, line: 282, column: 5)
!667 = !DILocation(line: 283, column: 9, scope: !666)
!668 = !DILocation(line: 284, column: 13, scope: !666)
!669 = !DILocation(line: 284, column: 19, scope: !666)
!670 = !DILocation(line: 287, column: 23, scope: !671)
!671 = distinct !DILexicalBlock(scope: !533, file: !3, line: 287, column: 8)
!672 = !DILocation(line: 287, column: 17, scope: !671)
!673 = !DILocation(line: 287, column: 15, scope: !671)
!674 = !DILocation(line: 287, column: 8, scope: !671)
!675 = !DILocation(line: 289, column: 61, scope: !676)
!676 = distinct !DILexicalBlock(scope: !671, file: !3, line: 288, column: 5)
!677 = !DILocation(line: 289, column: 9, scope: !676)
!678 = !DILocation(line: 290, column: 13, scope: !676)
!679 = !DILocation(line: 290, column: 19, scope: !676)
!680 = !DILocation(line: 293, column: 17, scope: !681)
!681 = distinct !DILexicalBlock(scope: !533, file: !3, line: 293, column: 8)
!682 = !DILocation(line: 293, column: 16, scope: !681)
!683 = !DILocation(line: 293, column: 8, scope: !681)
!684 = !DILocation(line: 293, column: 26, scope: !681)
!685 = !DILocation(line: 295, column: 30, scope: !686)
!686 = distinct !DILexicalBlock(scope: !681, file: !3, line: 294, column: 5)
!687 = !DILocation(line: 295, column: 35, scope: !686)
!688 = !DILocation(line: 295, column: 49, scope: !686)
!689 = !DILocation(line: 295, column: 9, scope: !686)
!690 = !DILocation(line: 297, column: 23, scope: !686)
!691 = !DILocation(line: 297, column: 28, scope: !686)
!692 = !DILocation(line: 297, column: 34, scope: !686)
!693 = !DILocation(line: 297, column: 39, scope: !686)
!694 = !DILocation(line: 297, column: 15, scope: !686)
!695 = !DILocation(line: 297, column: 13, scope: !686)
!696 = !DILocation(line: 298, column: 5, scope: !686)
!697 = !DILocation(line: 301, column: 30, scope: !698)
!698 = distinct !DILexicalBlock(scope: !681, file: !3, line: 300, column: 5)
!699 = !DILocation(line: 301, column: 35, scope: !698)
!700 = !DILocation(line: 301, column: 49, scope: !698)
!701 = !DILocation(line: 301, column: 9, scope: !698)
!702 = !DILocation(line: 303, column: 23, scope: !698)
!703 = !DILocation(line: 303, column: 28, scope: !698)
!704 = !DILocation(line: 303, column: 34, scope: !698)
!705 = !DILocation(line: 303, column: 39, scope: !698)
!706 = !DILocation(line: 303, column: 48, scope: !698)
!707 = !DILocation(line: 303, column: 15, scope: !698)
!708 = !DILocation(line: 303, column: 13, scope: !698)
!709 = !DILocation(line: 293, column: 29, scope: !681)
!710 = !DILabel(scope: !533, name: "exit", file: !3, line: 305)
!711 = !DILocation(line: 305, column: 1, scope: !533)
!712 = !DILocation(line: 306, column: 8, scope: !713)
!713 = distinct !DILexicalBlock(scope: !533, file: !3, line: 306, column: 8)
!714 = !DILocation(line: 307, column: 16, scope: !713)
!715 = !DILocation(line: 307, column: 9, scope: !713)
!716 = !DILocation(line: 308, column: 8, scope: !717)
!717 = distinct !DILexicalBlock(scope: !533, file: !3, line: 308, column: 8)
!718 = !DILocation(line: 309, column: 16, scope: !717)
!719 = !DILocation(line: 309, column: 9, scope: !717)
!720 = !DILocation(line: 311, column: 12, scope: !533)
!721 = !DILocation(line: 311, column: 5, scope: !533)
