; ModuleID = 'cBench/security_sha/src/sha.c'
source_filename = "cBench/security_sha/src/sha.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SHA_INFO = type { [5 x i64], i64, i64, [16 x i64] }

@.str = private unnamed_addr constant [31 x i8] c"%08lx %08lx %08lx %08lx %08lx\0A\00", align 1, !dbg !0

; Function Attrs: noinline nounwind uwtable
define dso_local void @sha_init(ptr noundef %0) #0 !dbg !25 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !43, !DIExpression(), !44)
  %3 = load ptr, ptr %2, align 8, !dbg !45
  %4 = getelementptr inbounds nuw %struct.SHA_INFO, ptr %3, i32 0, i32 0, !dbg !46
  %5 = getelementptr inbounds [5 x i64], ptr %4, i64 0, i64 0, !dbg !45
  store i64 1732584193, ptr %5, align 8, !dbg !47
  %6 = load ptr, ptr %2, align 8, !dbg !48
  %7 = getelementptr inbounds nuw %struct.SHA_INFO, ptr %6, i32 0, i32 0, !dbg !49
  %8 = getelementptr inbounds [5 x i64], ptr %7, i64 0, i64 1, !dbg !48
  store i64 4023233417, ptr %8, align 8, !dbg !50
  %9 = load ptr, ptr %2, align 8, !dbg !51
  %10 = getelementptr inbounds nuw %struct.SHA_INFO, ptr %9, i32 0, i32 0, !dbg !52
  %11 = getelementptr inbounds [5 x i64], ptr %10, i64 0, i64 2, !dbg !51
  store i64 2562383102, ptr %11, align 8, !dbg !53
  %12 = load ptr, ptr %2, align 8, !dbg !54
  %13 = getelementptr inbounds nuw %struct.SHA_INFO, ptr %12, i32 0, i32 0, !dbg !55
  %14 = getelementptr inbounds [5 x i64], ptr %13, i64 0, i64 3, !dbg !54
  store i64 271733878, ptr %14, align 8, !dbg !56
  %15 = load ptr, ptr %2, align 8, !dbg !57
  %16 = getelementptr inbounds nuw %struct.SHA_INFO, ptr %15, i32 0, i32 0, !dbg !58
  %17 = getelementptr inbounds [5 x i64], ptr %16, i64 0, i64 4, !dbg !57
  store i64 3285377520, ptr %17, align 8, !dbg !59
  %18 = load ptr, ptr %2, align 8, !dbg !60
  %19 = getelementptr inbounds nuw %struct.SHA_INFO, ptr %18, i32 0, i32 1, !dbg !61
  store i64 0, ptr %19, align 8, !dbg !62
  %20 = load ptr, ptr %2, align 8, !dbg !63
  %21 = getelementptr inbounds nuw %struct.SHA_INFO, ptr %20, i32 0, i32 2, !dbg !64
  store i64 0, ptr %21, align 8, !dbg !65
  ret void, !dbg !66
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @sha_update(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 !dbg !67 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
    #dbg_declare(ptr %4, !70, !DIExpression(), !71)
  store ptr %1, ptr %5, align 8
    #dbg_declare(ptr %5, !72, !DIExpression(), !73)
  store i32 %2, ptr %6, align 4
    #dbg_declare(ptr %6, !74, !DIExpression(), !75)
  %7 = load ptr, ptr %4, align 8, !dbg !76
  %8 = getelementptr inbounds nuw %struct.SHA_INFO, ptr %7, i32 0, i32 1, !dbg !78
  %9 = load i64, ptr %8, align 8, !dbg !78
  %10 = load i32, ptr %6, align 4, !dbg !79
  %11 = sext i32 %10 to i64, !dbg !80
  %12 = shl i64 %11, 3, !dbg !81
  %13 = add i64 %9, %12, !dbg !82
  %14 = load ptr, ptr %4, align 8, !dbg !83
  %15 = getelementptr inbounds nuw %struct.SHA_INFO, ptr %14, i32 0, i32 1, !dbg !84
  %16 = load i64, ptr %15, align 8, !dbg !84
  %17 = icmp ult i64 %13, %16, !dbg !85
  br i1 %17, label %18, label %23, !dbg !85

18:                                               ; preds = %3
  %19 = load ptr, ptr %4, align 8, !dbg !86
  %20 = getelementptr inbounds nuw %struct.SHA_INFO, ptr %19, i32 0, i32 2, !dbg !88
  %21 = load i64, ptr %20, align 8, !dbg !89
  %22 = add i64 %21, 1, !dbg !89
  store i64 %22, ptr %20, align 8, !dbg !89
  br label %23, !dbg !90

23:                                               ; preds = %18, %3
  %24 = load i32, ptr %6, align 4, !dbg !91
  %25 = sext i32 %24 to i64, !dbg !92
  %26 = shl i64 %25, 3, !dbg !93
  %27 = load ptr, ptr %4, align 8, !dbg !94
  %28 = getelementptr inbounds nuw %struct.SHA_INFO, ptr %27, i32 0, i32 1, !dbg !95
  %29 = load i64, ptr %28, align 8, !dbg !96
  %30 = add i64 %29, %26, !dbg !96
  store i64 %30, ptr %28, align 8, !dbg !96
  %31 = load i32, ptr %6, align 4, !dbg !97
  %32 = sext i32 %31 to i64, !dbg !98
  %33 = lshr i64 %32, 29, !dbg !99
  %34 = load ptr, ptr %4, align 8, !dbg !100
  %35 = getelementptr inbounds nuw %struct.SHA_INFO, ptr %34, i32 0, i32 2, !dbg !101
  %36 = load i64, ptr %35, align 8, !dbg !102
  %37 = add i64 %36, %33, !dbg !102
  store i64 %37, ptr %35, align 8, !dbg !102
  br label %38, !dbg !103

38:                                               ; preds = %41, %23
  %39 = load i32, ptr %6, align 4, !dbg !104
  %40 = icmp sge i32 %39, 64, !dbg !105
  br i1 %40, label %41, label %54, !dbg !103

41:                                               ; preds = %38
  %42 = load ptr, ptr %4, align 8, !dbg !106
  %43 = getelementptr inbounds nuw %struct.SHA_INFO, ptr %42, i32 0, i32 3, !dbg !108
  %44 = getelementptr inbounds [16 x i64], ptr %43, i64 0, i64 0, !dbg !109
  %45 = load ptr, ptr %5, align 8, !dbg !110
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %44, ptr align 1 %45, i64 64, i1 false), !dbg !109
  %46 = load ptr, ptr %4, align 8, !dbg !111
  %47 = getelementptr inbounds nuw %struct.SHA_INFO, ptr %46, i32 0, i32 3, !dbg !112
  %48 = getelementptr inbounds [16 x i64], ptr %47, i64 0, i64 0, !dbg !111
  call void @byte_reverse(ptr noundef %48, i32 noundef 64), !dbg !113
  %49 = load ptr, ptr %4, align 8, !dbg !114
  call void @sha_transform(ptr noundef %49), !dbg !115
  %50 = load ptr, ptr %5, align 8, !dbg !116
  %51 = getelementptr inbounds i8, ptr %50, i64 64, !dbg !116
  store ptr %51, ptr %5, align 8, !dbg !116
  %52 = load i32, ptr %6, align 4, !dbg !117
  %53 = sub nsw i32 %52, 64, !dbg !117
  store i32 %53, ptr %6, align 4, !dbg !117
  br label %38, !dbg !103, !llvm.loop !118

54:                                               ; preds = %38
  %55 = load ptr, ptr %4, align 8, !dbg !121
  %56 = getelementptr inbounds nuw %struct.SHA_INFO, ptr %55, i32 0, i32 3, !dbg !122
  %57 = getelementptr inbounds [16 x i64], ptr %56, i64 0, i64 0, !dbg !123
  %58 = load ptr, ptr %5, align 8, !dbg !124
  %59 = load i32, ptr %6, align 4, !dbg !125
  %60 = sext i32 %59 to i64, !dbg !125
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %57, ptr align 1 %58, i64 %60, i1 false), !dbg !123
  ret void, !dbg !126
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define internal void @byte_reverse(ptr noundef %0, i32 noundef %1) #0 !dbg !127 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [4 x i8], align 1
  %7 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !131, !DIExpression(), !132)
  store i32 %1, ptr %4, align 4
    #dbg_declare(ptr %4, !133, !DIExpression(), !134)
    #dbg_declare(ptr %5, !135, !DIExpression(), !136)
    #dbg_declare(ptr %6, !137, !DIExpression(), !141)
    #dbg_declare(ptr %7, !142, !DIExpression(), !143)
  %8 = load i32, ptr %4, align 4, !dbg !144
  %9 = sext i32 %8 to i64, !dbg !144
  %10 = udiv i64 %9, 8, !dbg !144
  %11 = trunc i64 %10 to i32, !dbg !144
  store i32 %11, ptr %4, align 4, !dbg !144
  %12 = load ptr, ptr %3, align 8, !dbg !145
  store ptr %12, ptr %7, align 8, !dbg !146
  store i32 0, ptr %5, align 4, !dbg !147
  br label %13, !dbg !149

13:                                               ; preds = %52, %2
  %14 = load i32, ptr %5, align 4, !dbg !150
  %15 = load i32, ptr %4, align 4, !dbg !152
  %16 = icmp slt i32 %14, %15, !dbg !153
  br i1 %16, label %17, label %55, !dbg !154

17:                                               ; preds = %13
  %18 = load ptr, ptr %7, align 8, !dbg !155
  %19 = getelementptr inbounds i8, ptr %18, i64 0, !dbg !155
  %20 = load i8, ptr %19, align 1, !dbg !155
  %21 = getelementptr inbounds [4 x i8], ptr %6, i64 0, i64 0, !dbg !157
  store i8 %20, ptr %21, align 1, !dbg !158
  %22 = load ptr, ptr %7, align 8, !dbg !159
  %23 = getelementptr inbounds i8, ptr %22, i64 1, !dbg !159
  %24 = load i8, ptr %23, align 1, !dbg !159
  %25 = getelementptr inbounds [4 x i8], ptr %6, i64 0, i64 1, !dbg !160
  store i8 %24, ptr %25, align 1, !dbg !161
  %26 = load ptr, ptr %7, align 8, !dbg !162
  %27 = getelementptr inbounds i8, ptr %26, i64 2, !dbg !162
  %28 = load i8, ptr %27, align 1, !dbg !162
  %29 = getelementptr inbounds [4 x i8], ptr %6, i64 0, i64 2, !dbg !163
  store i8 %28, ptr %29, align 1, !dbg !164
  %30 = load ptr, ptr %7, align 8, !dbg !165
  %31 = getelementptr inbounds i8, ptr %30, i64 3, !dbg !165
  %32 = load i8, ptr %31, align 1, !dbg !165
  %33 = getelementptr inbounds [4 x i8], ptr %6, i64 0, i64 3, !dbg !166
  store i8 %32, ptr %33, align 1, !dbg !167
  %34 = getelementptr inbounds [4 x i8], ptr %6, i64 0, i64 3, !dbg !168
  %35 = load i8, ptr %34, align 1, !dbg !168
  %36 = load ptr, ptr %7, align 8, !dbg !169
  %37 = getelementptr inbounds i8, ptr %36, i64 0, !dbg !169
  store i8 %35, ptr %37, align 1, !dbg !170
  %38 = getelementptr inbounds [4 x i8], ptr %6, i64 0, i64 2, !dbg !171
  %39 = load i8, ptr %38, align 1, !dbg !171
  %40 = load ptr, ptr %7, align 8, !dbg !172
  %41 = getelementptr inbounds i8, ptr %40, i64 1, !dbg !172
  store i8 %39, ptr %41, align 1, !dbg !173
  %42 = getelementptr inbounds [4 x i8], ptr %6, i64 0, i64 1, !dbg !174
  %43 = load i8, ptr %42, align 1, !dbg !174
  %44 = load ptr, ptr %7, align 8, !dbg !175
  %45 = getelementptr inbounds i8, ptr %44, i64 2, !dbg !175
  store i8 %43, ptr %45, align 1, !dbg !176
  %46 = getelementptr inbounds [4 x i8], ptr %6, i64 0, i64 0, !dbg !177
  %47 = load i8, ptr %46, align 1, !dbg !177
  %48 = load ptr, ptr %7, align 8, !dbg !178
  %49 = getelementptr inbounds i8, ptr %48, i64 3, !dbg !178
  store i8 %47, ptr %49, align 1, !dbg !179
  %50 = load ptr, ptr %7, align 8, !dbg !180
  %51 = getelementptr inbounds nuw i8, ptr %50, i64 8, !dbg !180
  store ptr %51, ptr %7, align 8, !dbg !180
  br label %52, !dbg !181

52:                                               ; preds = %17
  %53 = load i32, ptr %5, align 4, !dbg !182
  %54 = add nsw i32 %53, 1, !dbg !182
  store i32 %54, ptr %5, align 4, !dbg !182
  br label %13, !dbg !183, !llvm.loop !184

55:                                               ; preds = %13
  ret void, !dbg !186
}

; Function Attrs: noinline nounwind uwtable
define internal void @sha_transform(ptr noundef %0) #0 !dbg !187 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca [80 x i64], align 16
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !188, !DIExpression(), !189)
    #dbg_declare(ptr %3, !190, !DIExpression(), !191)
    #dbg_declare(ptr %4, !192, !DIExpression(), !193)
    #dbg_declare(ptr %5, !194, !DIExpression(), !195)
    #dbg_declare(ptr %6, !196, !DIExpression(), !197)
    #dbg_declare(ptr %7, !198, !DIExpression(), !199)
    #dbg_declare(ptr %8, !200, !DIExpression(), !201)
    #dbg_declare(ptr %9, !202, !DIExpression(), !203)
    #dbg_declare(ptr %10, !204, !DIExpression(), !208)
  store i32 0, ptr %3, align 4, !dbg !209
  br label %11, !dbg !211

11:                                               ; preds = %24, %1
  %12 = load i32, ptr %3, align 4, !dbg !212
  %13 = icmp slt i32 %12, 16, !dbg !214
  br i1 %13, label %14, label %27, !dbg !215

14:                                               ; preds = %11
  %15 = load ptr, ptr %2, align 8, !dbg !216
  %16 = getelementptr inbounds nuw %struct.SHA_INFO, ptr %15, i32 0, i32 3, !dbg !218
  %17 = load i32, ptr %3, align 4, !dbg !219
  %18 = sext i32 %17 to i64, !dbg !216
  %19 = getelementptr inbounds [16 x i64], ptr %16, i64 0, i64 %18, !dbg !216
  %20 = load i64, ptr %19, align 8, !dbg !216
  %21 = load i32, ptr %3, align 4, !dbg !220
  %22 = sext i32 %21 to i64, !dbg !221
  %23 = getelementptr inbounds [80 x i64], ptr %10, i64 0, i64 %22, !dbg !221
  store i64 %20, ptr %23, align 8, !dbg !222
  br label %24, !dbg !223

24:                                               ; preds = %14
  %25 = load i32, ptr %3, align 4, !dbg !224
  %26 = add nsw i32 %25, 1, !dbg !224
  store i32 %26, ptr %3, align 4, !dbg !224
  br label %11, !dbg !225, !llvm.loop !226

27:                                               ; preds = %11
  store i32 16, ptr %3, align 4, !dbg !228
  br label %28, !dbg !230

28:                                               ; preds = %58, %27
  %29 = load i32, ptr %3, align 4, !dbg !231
  %30 = icmp slt i32 %29, 80, !dbg !233
  br i1 %30, label %31, label %61, !dbg !234

31:                                               ; preds = %28
  %32 = load i32, ptr %3, align 4, !dbg !235
  %33 = sub nsw i32 %32, 3, !dbg !237
  %34 = sext i32 %33 to i64, !dbg !238
  %35 = getelementptr inbounds [80 x i64], ptr %10, i64 0, i64 %34, !dbg !238
  %36 = load i64, ptr %35, align 8, !dbg !238
  %37 = load i32, ptr %3, align 4, !dbg !239
  %38 = sub nsw i32 %37, 8, !dbg !240
  %39 = sext i32 %38 to i64, !dbg !241
  %40 = getelementptr inbounds [80 x i64], ptr %10, i64 0, i64 %39, !dbg !241
  %41 = load i64, ptr %40, align 8, !dbg !241
  %42 = xor i64 %36, %41, !dbg !242
  %43 = load i32, ptr %3, align 4, !dbg !243
  %44 = sub nsw i32 %43, 14, !dbg !244
  %45 = sext i32 %44 to i64, !dbg !245
  %46 = getelementptr inbounds [80 x i64], ptr %10, i64 0, i64 %45, !dbg !245
  %47 = load i64, ptr %46, align 8, !dbg !245
  %48 = xor i64 %42, %47, !dbg !246
  %49 = load i32, ptr %3, align 4, !dbg !247
  %50 = sub nsw i32 %49, 16, !dbg !248
  %51 = sext i32 %50 to i64, !dbg !249
  %52 = getelementptr inbounds [80 x i64], ptr %10, i64 0, i64 %51, !dbg !249
  %53 = load i64, ptr %52, align 8, !dbg !249
  %54 = xor i64 %48, %53, !dbg !250
  %55 = load i32, ptr %3, align 4, !dbg !251
  %56 = sext i32 %55 to i64, !dbg !252
  %57 = getelementptr inbounds [80 x i64], ptr %10, i64 0, i64 %56, !dbg !252
  store i64 %54, ptr %57, align 8, !dbg !253
  br label %58, !dbg !254

58:                                               ; preds = %31
  %59 = load i32, ptr %3, align 4, !dbg !255
  %60 = add nsw i32 %59, 1, !dbg !255
  store i32 %60, ptr %3, align 4, !dbg !255
  br label %28, !dbg !256, !llvm.loop !257

61:                                               ; preds = %28
  %62 = load ptr, ptr %2, align 8, !dbg !259
  %63 = getelementptr inbounds nuw %struct.SHA_INFO, ptr %62, i32 0, i32 0, !dbg !260
  %64 = getelementptr inbounds [5 x i64], ptr %63, i64 0, i64 0, !dbg !259
  %65 = load i64, ptr %64, align 8, !dbg !259
  store i64 %65, ptr %5, align 8, !dbg !261
  %66 = load ptr, ptr %2, align 8, !dbg !262
  %67 = getelementptr inbounds nuw %struct.SHA_INFO, ptr %66, i32 0, i32 0, !dbg !263
  %68 = getelementptr inbounds [5 x i64], ptr %67, i64 0, i64 1, !dbg !262
  %69 = load i64, ptr %68, align 8, !dbg !262
  store i64 %69, ptr %6, align 8, !dbg !264
  %70 = load ptr, ptr %2, align 8, !dbg !265
  %71 = getelementptr inbounds nuw %struct.SHA_INFO, ptr %70, i32 0, i32 0, !dbg !266
  %72 = getelementptr inbounds [5 x i64], ptr %71, i64 0, i64 2, !dbg !265
  %73 = load i64, ptr %72, align 8, !dbg !265
  store i64 %73, ptr %7, align 8, !dbg !267
  %74 = load ptr, ptr %2, align 8, !dbg !268
  %75 = getelementptr inbounds nuw %struct.SHA_INFO, ptr %74, i32 0, i32 0, !dbg !269
  %76 = getelementptr inbounds [5 x i64], ptr %75, i64 0, i64 3, !dbg !268
  %77 = load i64, ptr %76, align 8, !dbg !268
  store i64 %77, ptr %8, align 8, !dbg !270
  %78 = load ptr, ptr %2, align 8, !dbg !271
  %79 = getelementptr inbounds nuw %struct.SHA_INFO, ptr %78, i32 0, i32 0, !dbg !272
  %80 = getelementptr inbounds [5 x i64], ptr %79, i64 0, i64 4, !dbg !271
  %81 = load i64, ptr %80, align 8, !dbg !271
  store i64 %81, ptr %9, align 8, !dbg !273
  store i32 0, ptr %3, align 4, !dbg !274
  br label %82, !dbg !276

82:                                               ; preds = %117, %61
  %83 = load i32, ptr %3, align 4, !dbg !277
  %84 = icmp slt i32 %83, 20, !dbg !279
  br i1 %84, label %85, label %120, !dbg !280

85:                                               ; preds = %82
  %86 = load i64, ptr %5, align 8, !dbg !281
  %87 = shl i64 %86, 5, !dbg !281
  %88 = load i64, ptr %5, align 8, !dbg !281
  %89 = lshr i64 %88, 27, !dbg !281
  %90 = or i64 %87, %89, !dbg !281
  %91 = load i64, ptr %6, align 8, !dbg !281
  %92 = load i64, ptr %7, align 8, !dbg !281
  %93 = and i64 %91, %92, !dbg !281
  %94 = load i64, ptr %6, align 8, !dbg !281
  %95 = xor i64 %94, -1, !dbg !281
  %96 = load i64, ptr %8, align 8, !dbg !281
  %97 = and i64 %95, %96, !dbg !281
  %98 = or i64 %93, %97, !dbg !281
  %99 = add i64 %90, %98, !dbg !281
  %100 = load i64, ptr %9, align 8, !dbg !281
  %101 = add i64 %99, %100, !dbg !281
  %102 = load i32, ptr %3, align 4, !dbg !281
  %103 = sext i32 %102 to i64, !dbg !281
  %104 = getelementptr inbounds [80 x i64], ptr %10, i64 0, i64 %103, !dbg !281
  %105 = load i64, ptr %104, align 8, !dbg !281
  %106 = add i64 %101, %105, !dbg !281
  %107 = add i64 %106, 1518500249, !dbg !281
  store i64 %107, ptr %4, align 8, !dbg !281
  %108 = load i64, ptr %8, align 8, !dbg !281
  store i64 %108, ptr %9, align 8, !dbg !281
  %109 = load i64, ptr %7, align 8, !dbg !281
  store i64 %109, ptr %8, align 8, !dbg !281
  %110 = load i64, ptr %6, align 8, !dbg !281
  %111 = shl i64 %110, 30, !dbg !281
  %112 = load i64, ptr %6, align 8, !dbg !281
  %113 = lshr i64 %112, 2, !dbg !281
  %114 = or i64 %111, %113, !dbg !281
  store i64 %114, ptr %7, align 8, !dbg !281
  %115 = load i64, ptr %5, align 8, !dbg !281
  store i64 %115, ptr %6, align 8, !dbg !281
  %116 = load i64, ptr %4, align 8, !dbg !281
  store i64 %116, ptr %5, align 8, !dbg !281
  br label %117, !dbg !283

117:                                              ; preds = %85
  %118 = load i32, ptr %3, align 4, !dbg !284
  %119 = add nsw i32 %118, 1, !dbg !284
  store i32 %119, ptr %3, align 4, !dbg !284
  br label %82, !dbg !285, !llvm.loop !286

120:                                              ; preds = %82
  store i32 20, ptr %3, align 4, !dbg !288
  br label %121, !dbg !290

121:                                              ; preds = %153, %120
  %122 = load i32, ptr %3, align 4, !dbg !291
  %123 = icmp slt i32 %122, 40, !dbg !293
  br i1 %123, label %124, label %156, !dbg !294

124:                                              ; preds = %121
  %125 = load i64, ptr %5, align 8, !dbg !295
  %126 = shl i64 %125, 5, !dbg !295
  %127 = load i64, ptr %5, align 8, !dbg !295
  %128 = lshr i64 %127, 27, !dbg !295
  %129 = or i64 %126, %128, !dbg !295
  %130 = load i64, ptr %6, align 8, !dbg !295
  %131 = load i64, ptr %7, align 8, !dbg !295
  %132 = xor i64 %130, %131, !dbg !295
  %133 = load i64, ptr %8, align 8, !dbg !295
  %134 = xor i64 %132, %133, !dbg !295
  %135 = add i64 %129, %134, !dbg !295
  %136 = load i64, ptr %9, align 8, !dbg !295
  %137 = add i64 %135, %136, !dbg !295
  %138 = load i32, ptr %3, align 4, !dbg !295
  %139 = sext i32 %138 to i64, !dbg !295
  %140 = getelementptr inbounds [80 x i64], ptr %10, i64 0, i64 %139, !dbg !295
  %141 = load i64, ptr %140, align 8, !dbg !295
  %142 = add i64 %137, %141, !dbg !295
  %143 = add i64 %142, 1859775393, !dbg !295
  store i64 %143, ptr %4, align 8, !dbg !295
  %144 = load i64, ptr %8, align 8, !dbg !295
  store i64 %144, ptr %9, align 8, !dbg !295
  %145 = load i64, ptr %7, align 8, !dbg !295
  store i64 %145, ptr %8, align 8, !dbg !295
  %146 = load i64, ptr %6, align 8, !dbg !295
  %147 = shl i64 %146, 30, !dbg !295
  %148 = load i64, ptr %6, align 8, !dbg !295
  %149 = lshr i64 %148, 2, !dbg !295
  %150 = or i64 %147, %149, !dbg !295
  store i64 %150, ptr %7, align 8, !dbg !295
  %151 = load i64, ptr %5, align 8, !dbg !295
  store i64 %151, ptr %6, align 8, !dbg !295
  %152 = load i64, ptr %4, align 8, !dbg !295
  store i64 %152, ptr %5, align 8, !dbg !295
  br label %153, !dbg !297

153:                                              ; preds = %124
  %154 = load i32, ptr %3, align 4, !dbg !298
  %155 = add nsw i32 %154, 1, !dbg !298
  store i32 %155, ptr %3, align 4, !dbg !298
  br label %121, !dbg !299, !llvm.loop !300

156:                                              ; preds = %121
  store i32 40, ptr %3, align 4, !dbg !302
  br label %157, !dbg !304

157:                                              ; preds = %195, %156
  %158 = load i32, ptr %3, align 4, !dbg !305
  %159 = icmp slt i32 %158, 60, !dbg !307
  br i1 %159, label %160, label %198, !dbg !308

160:                                              ; preds = %157
  %161 = load i64, ptr %5, align 8, !dbg !309
  %162 = shl i64 %161, 5, !dbg !309
  %163 = load i64, ptr %5, align 8, !dbg !309
  %164 = lshr i64 %163, 27, !dbg !309
  %165 = or i64 %162, %164, !dbg !309
  %166 = load i64, ptr %6, align 8, !dbg !309
  %167 = load i64, ptr %7, align 8, !dbg !309
  %168 = and i64 %166, %167, !dbg !309
  %169 = load i64, ptr %6, align 8, !dbg !309
  %170 = load i64, ptr %8, align 8, !dbg !309
  %171 = and i64 %169, %170, !dbg !309
  %172 = or i64 %168, %171, !dbg !309
  %173 = load i64, ptr %7, align 8, !dbg !309
  %174 = load i64, ptr %8, align 8, !dbg !309
  %175 = and i64 %173, %174, !dbg !309
  %176 = or i64 %172, %175, !dbg !309
  %177 = add i64 %165, %176, !dbg !309
  %178 = load i64, ptr %9, align 8, !dbg !309
  %179 = add i64 %177, %178, !dbg !309
  %180 = load i32, ptr %3, align 4, !dbg !309
  %181 = sext i32 %180 to i64, !dbg !309
  %182 = getelementptr inbounds [80 x i64], ptr %10, i64 0, i64 %181, !dbg !309
  %183 = load i64, ptr %182, align 8, !dbg !309
  %184 = add i64 %179, %183, !dbg !309
  %185 = add i64 %184, 2400959708, !dbg !309
  store i64 %185, ptr %4, align 8, !dbg !309
  %186 = load i64, ptr %8, align 8, !dbg !309
  store i64 %186, ptr %9, align 8, !dbg !309
  %187 = load i64, ptr %7, align 8, !dbg !309
  store i64 %187, ptr %8, align 8, !dbg !309
  %188 = load i64, ptr %6, align 8, !dbg !309
  %189 = shl i64 %188, 30, !dbg !309
  %190 = load i64, ptr %6, align 8, !dbg !309
  %191 = lshr i64 %190, 2, !dbg !309
  %192 = or i64 %189, %191, !dbg !309
  store i64 %192, ptr %7, align 8, !dbg !309
  %193 = load i64, ptr %5, align 8, !dbg !309
  store i64 %193, ptr %6, align 8, !dbg !309
  %194 = load i64, ptr %4, align 8, !dbg !309
  store i64 %194, ptr %5, align 8, !dbg !309
  br label %195, !dbg !311

195:                                              ; preds = %160
  %196 = load i32, ptr %3, align 4, !dbg !312
  %197 = add nsw i32 %196, 1, !dbg !312
  store i32 %197, ptr %3, align 4, !dbg !312
  br label %157, !dbg !313, !llvm.loop !314

198:                                              ; preds = %157
  store i32 60, ptr %3, align 4, !dbg !316
  br label %199, !dbg !318

199:                                              ; preds = %231, %198
  %200 = load i32, ptr %3, align 4, !dbg !319
  %201 = icmp slt i32 %200, 80, !dbg !321
  br i1 %201, label %202, label %234, !dbg !322

202:                                              ; preds = %199
  %203 = load i64, ptr %5, align 8, !dbg !323
  %204 = shl i64 %203, 5, !dbg !323
  %205 = load i64, ptr %5, align 8, !dbg !323
  %206 = lshr i64 %205, 27, !dbg !323
  %207 = or i64 %204, %206, !dbg !323
  %208 = load i64, ptr %6, align 8, !dbg !323
  %209 = load i64, ptr %7, align 8, !dbg !323
  %210 = xor i64 %208, %209, !dbg !323
  %211 = load i64, ptr %8, align 8, !dbg !323
  %212 = xor i64 %210, %211, !dbg !323
  %213 = add i64 %207, %212, !dbg !323
  %214 = load i64, ptr %9, align 8, !dbg !323
  %215 = add i64 %213, %214, !dbg !323
  %216 = load i32, ptr %3, align 4, !dbg !323
  %217 = sext i32 %216 to i64, !dbg !323
  %218 = getelementptr inbounds [80 x i64], ptr %10, i64 0, i64 %217, !dbg !323
  %219 = load i64, ptr %218, align 8, !dbg !323
  %220 = add i64 %215, %219, !dbg !323
  %221 = add i64 %220, 3395469782, !dbg !323
  store i64 %221, ptr %4, align 8, !dbg !323
  %222 = load i64, ptr %8, align 8, !dbg !323
  store i64 %222, ptr %9, align 8, !dbg !323
  %223 = load i64, ptr %7, align 8, !dbg !323
  store i64 %223, ptr %8, align 8, !dbg !323
  %224 = load i64, ptr %6, align 8, !dbg !323
  %225 = shl i64 %224, 30, !dbg !323
  %226 = load i64, ptr %6, align 8, !dbg !323
  %227 = lshr i64 %226, 2, !dbg !323
  %228 = or i64 %225, %227, !dbg !323
  store i64 %228, ptr %7, align 8, !dbg !323
  %229 = load i64, ptr %5, align 8, !dbg !323
  store i64 %229, ptr %6, align 8, !dbg !323
  %230 = load i64, ptr %4, align 8, !dbg !323
  store i64 %230, ptr %5, align 8, !dbg !323
  br label %231, !dbg !325

231:                                              ; preds = %202
  %232 = load i32, ptr %3, align 4, !dbg !326
  %233 = add nsw i32 %232, 1, !dbg !326
  store i32 %233, ptr %3, align 4, !dbg !326
  br label %199, !dbg !327, !llvm.loop !328

234:                                              ; preds = %199
  %235 = load i64, ptr %5, align 8, !dbg !330
  %236 = load ptr, ptr %2, align 8, !dbg !331
  %237 = getelementptr inbounds nuw %struct.SHA_INFO, ptr %236, i32 0, i32 0, !dbg !332
  %238 = getelementptr inbounds [5 x i64], ptr %237, i64 0, i64 0, !dbg !331
  %239 = load i64, ptr %238, align 8, !dbg !333
  %240 = add i64 %239, %235, !dbg !333
  store i64 %240, ptr %238, align 8, !dbg !333
  %241 = load i64, ptr %6, align 8, !dbg !334
  %242 = load ptr, ptr %2, align 8, !dbg !335
  %243 = getelementptr inbounds nuw %struct.SHA_INFO, ptr %242, i32 0, i32 0, !dbg !336
  %244 = getelementptr inbounds [5 x i64], ptr %243, i64 0, i64 1, !dbg !335
  %245 = load i64, ptr %244, align 8, !dbg !337
  %246 = add i64 %245, %241, !dbg !337
  store i64 %246, ptr %244, align 8, !dbg !337
  %247 = load i64, ptr %7, align 8, !dbg !338
  %248 = load ptr, ptr %2, align 8, !dbg !339
  %249 = getelementptr inbounds nuw %struct.SHA_INFO, ptr %248, i32 0, i32 0, !dbg !340
  %250 = getelementptr inbounds [5 x i64], ptr %249, i64 0, i64 2, !dbg !339
  %251 = load i64, ptr %250, align 8, !dbg !341
  %252 = add i64 %251, %247, !dbg !341
  store i64 %252, ptr %250, align 8, !dbg !341
  %253 = load i64, ptr %8, align 8, !dbg !342
  %254 = load ptr, ptr %2, align 8, !dbg !343
  %255 = getelementptr inbounds nuw %struct.SHA_INFO, ptr %254, i32 0, i32 0, !dbg !344
  %256 = getelementptr inbounds [5 x i64], ptr %255, i64 0, i64 3, !dbg !343
  %257 = load i64, ptr %256, align 8, !dbg !345
  %258 = add i64 %257, %253, !dbg !345
  store i64 %258, ptr %256, align 8, !dbg !345
  %259 = load i64, ptr %9, align 8, !dbg !346
  %260 = load ptr, ptr %2, align 8, !dbg !347
  %261 = getelementptr inbounds nuw %struct.SHA_INFO, ptr %260, i32 0, i32 0, !dbg !348
  %262 = getelementptr inbounds [5 x i64], ptr %261, i64 0, i64 4, !dbg !347
  %263 = load i64, ptr %262, align 8, !dbg !349
  %264 = add i64 %263, %259, !dbg !349
  store i64 %264, ptr %262, align 8, !dbg !349
  ret void, !dbg !350
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @sha_final(ptr noundef %0) #0 !dbg !351 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !352, !DIExpression(), !353)
    #dbg_declare(ptr %3, !354, !DIExpression(), !355)
    #dbg_declare(ptr %4, !356, !DIExpression(), !357)
    #dbg_declare(ptr %5, !358, !DIExpression(), !359)
  %6 = load ptr, ptr %2, align 8, !dbg !360
  %7 = getelementptr inbounds nuw %struct.SHA_INFO, ptr %6, i32 0, i32 1, !dbg !361
  %8 = load i64, ptr %7, align 8, !dbg !361
  store i64 %8, ptr %4, align 8, !dbg !362
  %9 = load ptr, ptr %2, align 8, !dbg !363
  %10 = getelementptr inbounds nuw %struct.SHA_INFO, ptr %9, i32 0, i32 2, !dbg !364
  %11 = load i64, ptr %10, align 8, !dbg !364
  store i64 %11, ptr %5, align 8, !dbg !365
  %12 = load i64, ptr %4, align 8, !dbg !366
  %13 = lshr i64 %12, 3, !dbg !367
  %14 = and i64 %13, 63, !dbg !368
  %15 = trunc i64 %14 to i32, !dbg !369
  store i32 %15, ptr %3, align 4, !dbg !370
  %16 = load ptr, ptr %2, align 8, !dbg !371
  %17 = getelementptr inbounds nuw %struct.SHA_INFO, ptr %16, i32 0, i32 3, !dbg !372
  %18 = getelementptr inbounds [16 x i64], ptr %17, i64 0, i64 0, !dbg !373
  %19 = load i32, ptr %3, align 4, !dbg !374
  %20 = add nsw i32 %19, 1, !dbg !374
  store i32 %20, ptr %3, align 4, !dbg !374
  %21 = sext i32 %19 to i64, !dbg !373
  %22 = getelementptr inbounds i8, ptr %18, i64 %21, !dbg !373
  store i8 -128, ptr %22, align 1, !dbg !375
  %23 = load i32, ptr %3, align 4, !dbg !376
  %24 = icmp sgt i32 %23, 56, !dbg !378
  br i1 %24, label %25, label %40, !dbg !378

25:                                               ; preds = %1
  %26 = load ptr, ptr %2, align 8, !dbg !379
  %27 = getelementptr inbounds nuw %struct.SHA_INFO, ptr %26, i32 0, i32 3, !dbg !381
  %28 = load i32, ptr %3, align 4, !dbg !382
  %29 = sext i32 %28 to i64, !dbg !383
  %30 = getelementptr inbounds i8, ptr %27, i64 %29, !dbg !383
  %31 = load i32, ptr %3, align 4, !dbg !384
  %32 = sub nsw i32 64, %31, !dbg !385
  %33 = sext i32 %32 to i64, !dbg !386
  call void @llvm.memset.p0.i64(ptr align 1 %30, i8 0, i64 %33, i1 false), !dbg !387
  %34 = load ptr, ptr %2, align 8, !dbg !388
  %35 = getelementptr inbounds nuw %struct.SHA_INFO, ptr %34, i32 0, i32 3, !dbg !389
  %36 = getelementptr inbounds [16 x i64], ptr %35, i64 0, i64 0, !dbg !388
  call void @byte_reverse(ptr noundef %36, i32 noundef 64), !dbg !390
  %37 = load ptr, ptr %2, align 8, !dbg !391
  call void @sha_transform(ptr noundef %37), !dbg !392
  %38 = load ptr, ptr %2, align 8, !dbg !393
  %39 = getelementptr inbounds nuw %struct.SHA_INFO, ptr %38, i32 0, i32 3, !dbg !394
  call void @llvm.memset.p0.i64(ptr align 8 %39, i8 0, i64 56, i1 false), !dbg !395
  br label %49, !dbg !396

40:                                               ; preds = %1
  %41 = load ptr, ptr %2, align 8, !dbg !397
  %42 = getelementptr inbounds nuw %struct.SHA_INFO, ptr %41, i32 0, i32 3, !dbg !399
  %43 = load i32, ptr %3, align 4, !dbg !400
  %44 = sext i32 %43 to i64, !dbg !401
  %45 = getelementptr inbounds i8, ptr %42, i64 %44, !dbg !401
  %46 = load i32, ptr %3, align 4, !dbg !402
  %47 = sub nsw i32 56, %46, !dbg !403
  %48 = sext i32 %47 to i64, !dbg !404
  call void @llvm.memset.p0.i64(ptr align 1 %45, i8 0, i64 %48, i1 false), !dbg !405
  br label %49

49:                                               ; preds = %40, %25
  %50 = load ptr, ptr %2, align 8, !dbg !406
  %51 = getelementptr inbounds nuw %struct.SHA_INFO, ptr %50, i32 0, i32 3, !dbg !407
  %52 = getelementptr inbounds [16 x i64], ptr %51, i64 0, i64 0, !dbg !406
  call void @byte_reverse(ptr noundef %52, i32 noundef 64), !dbg !408
  %53 = load i64, ptr %5, align 8, !dbg !409
  %54 = load ptr, ptr %2, align 8, !dbg !410
  %55 = getelementptr inbounds nuw %struct.SHA_INFO, ptr %54, i32 0, i32 3, !dbg !411
  %56 = getelementptr inbounds [16 x i64], ptr %55, i64 0, i64 14, !dbg !410
  store i64 %53, ptr %56, align 8, !dbg !412
  %57 = load i64, ptr %4, align 8, !dbg !413
  %58 = load ptr, ptr %2, align 8, !dbg !414
  %59 = getelementptr inbounds nuw %struct.SHA_INFO, ptr %58, i32 0, i32 3, !dbg !415
  %60 = getelementptr inbounds [16 x i64], ptr %59, i64 0, i64 15, !dbg !414
  store i64 %57, ptr %60, align 8, !dbg !416
  %61 = load ptr, ptr %2, align 8, !dbg !417
  call void @sha_transform(ptr noundef %61), !dbg !418
  ret void, !dbg !419
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @sha_stream(ptr noundef %0, ptr noundef %1) #0 !dbg !420 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca [8192 x i8], align 16
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !483, !DIExpression(), !484)
  store ptr %1, ptr %4, align 8
    #dbg_declare(ptr %4, !485, !DIExpression(), !486)
    #dbg_declare(ptr %5, !487, !DIExpression(), !488)
    #dbg_declare(ptr %6, !489, !DIExpression(), !493)
  %7 = load ptr, ptr %3, align 8, !dbg !494
  call void @sha_init(ptr noundef %7), !dbg !495
  br label %8, !dbg !496

8:                                                ; preds = %14, %2
  %9 = getelementptr inbounds [8192 x i8], ptr %6, i64 0, i64 0, !dbg !497
  %10 = load ptr, ptr %4, align 8, !dbg !498
  %11 = call i64 @fread(ptr noundef %9, i64 noundef 1, i64 noundef 8192, ptr noundef %10), !dbg !499
  %12 = trunc i64 %11 to i32, !dbg !499
  store i32 %12, ptr %5, align 4, !dbg !500
  %13 = icmp sgt i32 %12, 0, !dbg !501
  br i1 %13, label %14, label %18, !dbg !496

14:                                               ; preds = %8
  %15 = load ptr, ptr %3, align 8, !dbg !502
  %16 = getelementptr inbounds [8192 x i8], ptr %6, i64 0, i64 0, !dbg !504
  %17 = load i32, ptr %5, align 4, !dbg !505
  call void @sha_update(ptr noundef %15, ptr noundef %16, i32 noundef %17), !dbg !506
  br label %8, !dbg !496, !llvm.loop !507

18:                                               ; preds = %8
  %19 = load ptr, ptr %3, align 8, !dbg !509
  call void @sha_final(ptr noundef %19), !dbg !510
  ret void, !dbg !511
}

declare i64 @fread(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @sha_print(ptr noundef %0) #0 !dbg !512 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !513, !DIExpression(), !514)
  %3 = load ptr, ptr %2, align 8, !dbg !515
  %4 = getelementptr inbounds nuw %struct.SHA_INFO, ptr %3, i32 0, i32 0, !dbg !516
  %5 = getelementptr inbounds [5 x i64], ptr %4, i64 0, i64 0, !dbg !515
  %6 = load i64, ptr %5, align 8, !dbg !515
  %7 = load ptr, ptr %2, align 8, !dbg !517
  %8 = getelementptr inbounds nuw %struct.SHA_INFO, ptr %7, i32 0, i32 0, !dbg !518
  %9 = getelementptr inbounds [5 x i64], ptr %8, i64 0, i64 1, !dbg !517
  %10 = load i64, ptr %9, align 8, !dbg !517
  %11 = load ptr, ptr %2, align 8, !dbg !519
  %12 = getelementptr inbounds nuw %struct.SHA_INFO, ptr %11, i32 0, i32 0, !dbg !520
  %13 = getelementptr inbounds [5 x i64], ptr %12, i64 0, i64 2, !dbg !519
  %14 = load i64, ptr %13, align 8, !dbg !519
  %15 = load ptr, ptr %2, align 8, !dbg !521
  %16 = getelementptr inbounds nuw %struct.SHA_INFO, ptr %15, i32 0, i32 0, !dbg !522
  %17 = getelementptr inbounds [5 x i64], ptr %16, i64 0, i64 3, !dbg !521
  %18 = load i64, ptr %17, align 8, !dbg !521
  %19 = load ptr, ptr %2, align 8, !dbg !523
  %20 = getelementptr inbounds nuw %struct.SHA_INFO, ptr %19, i32 0, i32 0, !dbg !524
  %21 = getelementptr inbounds [5 x i64], ptr %20, i64 0, i64 4, !dbg !523
  %22 = load i64, ptr %21, align 8, !dbg !523
  %23 = call i32 (ptr, ...) @printf(ptr noundef @.str, i64 noundef %6, i64 noundef %10, i64 noundef %14, i64 noundef %18, i64 noundef %22), !dbg !525
  ret void, !dbg !526
}

declare i32 @printf(ptr noundef, ...) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!7}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 207, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "cBench/security_sha/src/sha.c", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "9ace2650a2b33939e4f2aed568918f17")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 31)
!7 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !8, globals: !16, splitDebugInlining: false, nameTableKind: None)
!8 = !{!9, !12, !13}
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "LONG", file: !10, line: 10, baseType: !11)
!10 = !DIFile(filename: "cBench/security_sha/src/sha.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "ea7de055ed6cd886a0e6d4755e5ecf03")
!11 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "BYTE", file: !10, line: 9, baseType: !15)
!15 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!16 = !{!0}
!17 = !{i32 7, !"Dwarf Version", i32 5}
!18 = !{i32 2, !"Debug Info Version", i32 3}
!19 = !{i32 1, !"wchar_size", i32 4}
!20 = !{i32 8, !"PIC Level", i32 2}
!21 = !{i32 7, !"PIE Level", i32 2}
!22 = !{i32 7, !"uwtable", i32 2}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)"}
!25 = distinct !DISubprogram(name: "sha_init", scope: !2, file: !2, line: 126, type: !26, scopeLine: 127, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !42)
!26 = !DISubroutineType(types: !27)
!27 = !{null, !28}
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "SHA_INFO", file: !10, line: 19, baseType: !30)
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !10, line: 15, size: 1472, elements: !31)
!31 = !{!32, !36, !37, !38}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "digest", scope: !30, file: !10, line: 16, baseType: !33, size: 320)
!33 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 320, elements: !34)
!34 = !{!35}
!35 = !DISubrange(count: 5)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "count_lo", scope: !30, file: !10, line: 17, baseType: !9, size: 64, offset: 320)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "count_hi", scope: !30, file: !10, line: 17, baseType: !9, size: 64, offset: 384)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !30, file: !10, line: 18, baseType: !39, size: 1024, offset: 448)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 1024, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 16)
!42 = !{}
!43 = !DILocalVariable(name: "sha_info", arg: 1, scope: !25, file: !2, line: 126, type: !28)
!44 = !DILocation(line: 126, column: 25, scope: !25)
!45 = !DILocation(line: 128, column: 5, scope: !25)
!46 = !DILocation(line: 128, column: 15, scope: !25)
!47 = !DILocation(line: 128, column: 25, scope: !25)
!48 = !DILocation(line: 129, column: 5, scope: !25)
!49 = !DILocation(line: 129, column: 15, scope: !25)
!50 = !DILocation(line: 129, column: 25, scope: !25)
!51 = !DILocation(line: 130, column: 5, scope: !25)
!52 = !DILocation(line: 130, column: 15, scope: !25)
!53 = !DILocation(line: 130, column: 25, scope: !25)
!54 = !DILocation(line: 131, column: 5, scope: !25)
!55 = !DILocation(line: 131, column: 15, scope: !25)
!56 = !DILocation(line: 131, column: 25, scope: !25)
!57 = !DILocation(line: 132, column: 5, scope: !25)
!58 = !DILocation(line: 132, column: 15, scope: !25)
!59 = !DILocation(line: 132, column: 25, scope: !25)
!60 = !DILocation(line: 133, column: 5, scope: !25)
!61 = !DILocation(line: 133, column: 15, scope: !25)
!62 = !DILocation(line: 133, column: 24, scope: !25)
!63 = !DILocation(line: 134, column: 5, scope: !25)
!64 = !DILocation(line: 134, column: 15, scope: !25)
!65 = !DILocation(line: 134, column: 24, scope: !25)
!66 = !DILocation(line: 135, column: 1, scope: !25)
!67 = distinct !DISubprogram(name: "sha_update", scope: !2, file: !2, line: 139, type: !68, scopeLine: 140, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !42)
!68 = !DISubroutineType(types: !69)
!69 = !{null, !28, !13, !12}
!70 = !DILocalVariable(name: "sha_info", arg: 1, scope: !67, file: !2, line: 139, type: !28)
!71 = !DILocation(line: 139, column: 27, scope: !67)
!72 = !DILocalVariable(name: "buffer", arg: 2, scope: !67, file: !2, line: 139, type: !13)
!73 = !DILocation(line: 139, column: 43, scope: !67)
!74 = !DILocalVariable(name: "count", arg: 3, scope: !67, file: !2, line: 139, type: !12)
!75 = !DILocation(line: 139, column: 55, scope: !67)
!76 = !DILocation(line: 141, column: 10, scope: !77)
!77 = distinct !DILexicalBlock(scope: !67, file: !2, line: 141, column: 9)
!78 = !DILocation(line: 141, column: 20, scope: !77)
!79 = !DILocation(line: 141, column: 39, scope: !77)
!80 = !DILocation(line: 141, column: 32, scope: !77)
!81 = !DILocation(line: 141, column: 45, scope: !77)
!82 = !DILocation(line: 141, column: 29, scope: !77)
!83 = !DILocation(line: 141, column: 54, scope: !77)
!84 = !DILocation(line: 141, column: 64, scope: !77)
!85 = !DILocation(line: 141, column: 52, scope: !77)
!86 = !DILocation(line: 142, column: 4, scope: !87)
!87 = distinct !DILexicalBlock(scope: !77, file: !2, line: 141, column: 74)
!88 = !DILocation(line: 142, column: 14, scope: !87)
!89 = !DILocation(line: 142, column: 2, scope: !87)
!90 = !DILocation(line: 143, column: 5, scope: !87)
!91 = !DILocation(line: 144, column: 34, scope: !67)
!92 = !DILocation(line: 144, column: 27, scope: !67)
!93 = !DILocation(line: 144, column: 40, scope: !67)
!94 = !DILocation(line: 144, column: 5, scope: !67)
!95 = !DILocation(line: 144, column: 15, scope: !67)
!96 = !DILocation(line: 144, column: 24, scope: !67)
!97 = !DILocation(line: 145, column: 34, scope: !67)
!98 = !DILocation(line: 145, column: 27, scope: !67)
!99 = !DILocation(line: 145, column: 40, scope: !67)
!100 = !DILocation(line: 145, column: 5, scope: !67)
!101 = !DILocation(line: 145, column: 15, scope: !67)
!102 = !DILocation(line: 145, column: 24, scope: !67)
!103 = !DILocation(line: 146, column: 5, scope: !67)
!104 = !DILocation(line: 146, column: 12, scope: !67)
!105 = !DILocation(line: 146, column: 18, scope: !67)
!106 = !DILocation(line: 147, column: 9, scope: !107)
!107 = distinct !DILexicalBlock(scope: !67, file: !2, line: 146, column: 36)
!108 = !DILocation(line: 147, column: 19, scope: !107)
!109 = !DILocation(line: 147, column: 2, scope: !107)
!110 = !DILocation(line: 147, column: 25, scope: !107)
!111 = !DILocation(line: 149, column: 15, scope: !107)
!112 = !DILocation(line: 149, column: 25, scope: !107)
!113 = !DILocation(line: 149, column: 2, scope: !107)
!114 = !DILocation(line: 151, column: 16, scope: !107)
!115 = !DILocation(line: 151, column: 2, scope: !107)
!116 = !DILocation(line: 152, column: 9, scope: !107)
!117 = !DILocation(line: 153, column: 8, scope: !107)
!118 = distinct !{!118, !103, !119, !120}
!119 = !DILocation(line: 154, column: 5, scope: !67)
!120 = !{!"llvm.loop.mustprogress"}
!121 = !DILocation(line: 155, column: 12, scope: !67)
!122 = !DILocation(line: 155, column: 22, scope: !67)
!123 = !DILocation(line: 155, column: 5, scope: !67)
!124 = !DILocation(line: 155, column: 28, scope: !67)
!125 = !DILocation(line: 155, column: 36, scope: !67)
!126 = !DILocation(line: 156, column: 1, scope: !67)
!127 = distinct !DISubprogram(name: "byte_reverse", scope: !2, file: !2, line: 102, type: !128, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !42)
!128 = !DISubroutineType(types: !129)
!129 = !{null, !130, !12}
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!131 = !DILocalVariable(name: "buffer", arg: 1, scope: !127, file: !2, line: 102, type: !130)
!132 = !DILocation(line: 102, column: 32, scope: !127)
!133 = !DILocalVariable(name: "count", arg: 2, scope: !127, file: !2, line: 102, type: !12)
!134 = !DILocation(line: 102, column: 44, scope: !127)
!135 = !DILocalVariable(name: "i", scope: !127, file: !2, line: 104, type: !12)
!136 = !DILocation(line: 104, column: 9, scope: !127)
!137 = !DILocalVariable(name: "ct", scope: !127, file: !2, line: 105, type: !138)
!138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 32, elements: !139)
!139 = !{!140}
!140 = !DISubrange(count: 4)
!141 = !DILocation(line: 105, column: 10, scope: !127)
!142 = !DILocalVariable(name: "cp", scope: !127, file: !2, line: 105, type: !13)
!143 = !DILocation(line: 105, column: 18, scope: !127)
!144 = !DILocation(line: 107, column: 11, scope: !127)
!145 = !DILocation(line: 108, column: 19, scope: !127)
!146 = !DILocation(line: 108, column: 8, scope: !127)
!147 = !DILocation(line: 109, column: 12, scope: !148)
!148 = distinct !DILexicalBlock(scope: !127, file: !2, line: 109, column: 5)
!149 = !DILocation(line: 109, column: 10, scope: !148)
!150 = !DILocation(line: 109, column: 17, scope: !151)
!151 = distinct !DILexicalBlock(scope: !148, file: !2, line: 109, column: 5)
!152 = !DILocation(line: 109, column: 21, scope: !151)
!153 = !DILocation(line: 109, column: 19, scope: !151)
!154 = !DILocation(line: 109, column: 5, scope: !148)
!155 = !DILocation(line: 110, column: 10, scope: !156)
!156 = distinct !DILexicalBlock(scope: !151, file: !2, line: 109, column: 33)
!157 = !DILocation(line: 110, column: 2, scope: !156)
!158 = !DILocation(line: 110, column: 8, scope: !156)
!159 = !DILocation(line: 111, column: 10, scope: !156)
!160 = !DILocation(line: 111, column: 2, scope: !156)
!161 = !DILocation(line: 111, column: 8, scope: !156)
!162 = !DILocation(line: 112, column: 10, scope: !156)
!163 = !DILocation(line: 112, column: 2, scope: !156)
!164 = !DILocation(line: 112, column: 8, scope: !156)
!165 = !DILocation(line: 113, column: 10, scope: !156)
!166 = !DILocation(line: 113, column: 2, scope: !156)
!167 = !DILocation(line: 113, column: 8, scope: !156)
!168 = !DILocation(line: 114, column: 10, scope: !156)
!169 = !DILocation(line: 114, column: 2, scope: !156)
!170 = !DILocation(line: 114, column: 8, scope: !156)
!171 = !DILocation(line: 115, column: 10, scope: !156)
!172 = !DILocation(line: 115, column: 2, scope: !156)
!173 = !DILocation(line: 115, column: 8, scope: !156)
!174 = !DILocation(line: 116, column: 10, scope: !156)
!175 = !DILocation(line: 116, column: 2, scope: !156)
!176 = !DILocation(line: 116, column: 8, scope: !156)
!177 = !DILocation(line: 117, column: 10, scope: !156)
!178 = !DILocation(line: 117, column: 2, scope: !156)
!179 = !DILocation(line: 117, column: 8, scope: !156)
!180 = !DILocation(line: 118, column: 5, scope: !156)
!181 = !DILocation(line: 119, column: 5, scope: !156)
!182 = !DILocation(line: 109, column: 28, scope: !151)
!183 = !DILocation(line: 109, column: 5, scope: !151)
!184 = distinct !{!184, !154, !185, !120}
!185 = !DILocation(line: 119, column: 5, scope: !148)
!186 = !DILocation(line: 120, column: 1, scope: !127)
!187 = distinct !DISubprogram(name: "sha_transform", scope: !2, file: !2, line: 38, type: !26, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !42)
!188 = !DILocalVariable(name: "sha_info", arg: 1, scope: !187, file: !2, line: 38, type: !28)
!189 = !DILocation(line: 38, column: 37, scope: !187)
!190 = !DILocalVariable(name: "i", scope: !187, file: !2, line: 40, type: !12)
!191 = !DILocation(line: 40, column: 9, scope: !187)
!192 = !DILocalVariable(name: "temp", scope: !187, file: !2, line: 41, type: !9)
!193 = !DILocation(line: 41, column: 10, scope: !187)
!194 = !DILocalVariable(name: "A", scope: !187, file: !2, line: 41, type: !9)
!195 = !DILocation(line: 41, column: 16, scope: !187)
!196 = !DILocalVariable(name: "B", scope: !187, file: !2, line: 41, type: !9)
!197 = !DILocation(line: 41, column: 19, scope: !187)
!198 = !DILocalVariable(name: "C", scope: !187, file: !2, line: 41, type: !9)
!199 = !DILocation(line: 41, column: 22, scope: !187)
!200 = !DILocalVariable(name: "D", scope: !187, file: !2, line: 41, type: !9)
!201 = !DILocation(line: 41, column: 25, scope: !187)
!202 = !DILocalVariable(name: "E", scope: !187, file: !2, line: 41, type: !9)
!203 = !DILocation(line: 41, column: 28, scope: !187)
!204 = !DILocalVariable(name: "W", scope: !187, file: !2, line: 41, type: !205)
!205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 5120, elements: !206)
!206 = !{!207}
!207 = !DISubrange(count: 80)
!208 = !DILocation(line: 41, column: 31, scope: !187)
!209 = !DILocation(line: 43, column: 12, scope: !210)
!210 = distinct !DILexicalBlock(scope: !187, file: !2, line: 43, column: 5)
!211 = !DILocation(line: 43, column: 10, scope: !210)
!212 = !DILocation(line: 43, column: 17, scope: !213)
!213 = distinct !DILexicalBlock(scope: !210, file: !2, line: 43, column: 5)
!214 = !DILocation(line: 43, column: 19, scope: !213)
!215 = !DILocation(line: 43, column: 5, scope: !210)
!216 = !DILocation(line: 44, column: 9, scope: !217)
!217 = distinct !DILexicalBlock(scope: !213, file: !2, line: 43, column: 30)
!218 = !DILocation(line: 44, column: 19, scope: !217)
!219 = !DILocation(line: 44, column: 24, scope: !217)
!220 = !DILocation(line: 44, column: 4, scope: !217)
!221 = !DILocation(line: 44, column: 2, scope: !217)
!222 = !DILocation(line: 44, column: 7, scope: !217)
!223 = !DILocation(line: 45, column: 5, scope: !217)
!224 = !DILocation(line: 43, column: 25, scope: !213)
!225 = !DILocation(line: 43, column: 5, scope: !213)
!226 = distinct !{!226, !215, !227, !120}
!227 = !DILocation(line: 45, column: 5, scope: !210)
!228 = !DILocation(line: 46, column: 12, scope: !229)
!229 = distinct !DILexicalBlock(scope: !187, file: !2, line: 46, column: 5)
!230 = !DILocation(line: 46, column: 10, scope: !229)
!231 = !DILocation(line: 46, column: 18, scope: !232)
!232 = distinct !DILexicalBlock(scope: !229, file: !2, line: 46, column: 5)
!233 = !DILocation(line: 46, column: 20, scope: !232)
!234 = !DILocation(line: 46, column: 5, scope: !229)
!235 = !DILocation(line: 47, column: 11, scope: !236)
!236 = distinct !DILexicalBlock(scope: !232, file: !2, line: 46, column: 31)
!237 = !DILocation(line: 47, column: 12, scope: !236)
!238 = !DILocation(line: 47, column: 9, scope: !236)
!239 = !DILocation(line: 47, column: 20, scope: !236)
!240 = !DILocation(line: 47, column: 21, scope: !236)
!241 = !DILocation(line: 47, column: 18, scope: !236)
!242 = !DILocation(line: 47, column: 16, scope: !236)
!243 = !DILocation(line: 47, column: 29, scope: !236)
!244 = !DILocation(line: 47, column: 30, scope: !236)
!245 = !DILocation(line: 47, column: 27, scope: !236)
!246 = !DILocation(line: 47, column: 25, scope: !236)
!247 = !DILocation(line: 47, column: 39, scope: !236)
!248 = !DILocation(line: 47, column: 40, scope: !236)
!249 = !DILocation(line: 47, column: 37, scope: !236)
!250 = !DILocation(line: 47, column: 35, scope: !236)
!251 = !DILocation(line: 47, column: 4, scope: !236)
!252 = !DILocation(line: 47, column: 2, scope: !236)
!253 = !DILocation(line: 47, column: 7, scope: !236)
!254 = !DILocation(line: 51, column: 5, scope: !236)
!255 = !DILocation(line: 46, column: 26, scope: !232)
!256 = !DILocation(line: 46, column: 5, scope: !232)
!257 = distinct !{!257, !234, !258, !120}
!258 = !DILocation(line: 51, column: 5, scope: !229)
!259 = !DILocation(line: 52, column: 9, scope: !187)
!260 = !DILocation(line: 52, column: 19, scope: !187)
!261 = !DILocation(line: 52, column: 7, scope: !187)
!262 = !DILocation(line: 53, column: 9, scope: !187)
!263 = !DILocation(line: 53, column: 19, scope: !187)
!264 = !DILocation(line: 53, column: 7, scope: !187)
!265 = !DILocation(line: 54, column: 9, scope: !187)
!266 = !DILocation(line: 54, column: 19, scope: !187)
!267 = !DILocation(line: 54, column: 7, scope: !187)
!268 = !DILocation(line: 55, column: 9, scope: !187)
!269 = !DILocation(line: 55, column: 19, scope: !187)
!270 = !DILocation(line: 55, column: 7, scope: !187)
!271 = !DILocation(line: 56, column: 9, scope: !187)
!272 = !DILocation(line: 56, column: 19, scope: !187)
!273 = !DILocation(line: 56, column: 7, scope: !187)
!274 = !DILocation(line: 78, column: 12, scope: !275)
!275 = distinct !DILexicalBlock(scope: !187, file: !2, line: 78, column: 5)
!276 = !DILocation(line: 78, column: 10, scope: !275)
!277 = !DILocation(line: 78, column: 17, scope: !278)
!278 = distinct !DILexicalBlock(scope: !275, file: !2, line: 78, column: 5)
!279 = !DILocation(line: 78, column: 19, scope: !278)
!280 = !DILocation(line: 78, column: 5, scope: !275)
!281 = !DILocation(line: 79, column: 2, scope: !282)
!282 = distinct !DILexicalBlock(scope: !278, file: !2, line: 78, column: 30)
!283 = !DILocation(line: 80, column: 5, scope: !282)
!284 = !DILocation(line: 78, column: 25, scope: !278)
!285 = !DILocation(line: 78, column: 5, scope: !278)
!286 = distinct !{!286, !280, !287, !120}
!287 = !DILocation(line: 80, column: 5, scope: !275)
!288 = !DILocation(line: 81, column: 12, scope: !289)
!289 = distinct !DILexicalBlock(scope: !187, file: !2, line: 81, column: 5)
!290 = !DILocation(line: 81, column: 10, scope: !289)
!291 = !DILocation(line: 81, column: 18, scope: !292)
!292 = distinct !DILexicalBlock(scope: !289, file: !2, line: 81, column: 5)
!293 = !DILocation(line: 81, column: 20, scope: !292)
!294 = !DILocation(line: 81, column: 5, scope: !289)
!295 = !DILocation(line: 82, column: 2, scope: !296)
!296 = distinct !DILexicalBlock(scope: !292, file: !2, line: 81, column: 31)
!297 = !DILocation(line: 83, column: 5, scope: !296)
!298 = !DILocation(line: 81, column: 26, scope: !292)
!299 = !DILocation(line: 81, column: 5, scope: !292)
!300 = distinct !{!300, !294, !301, !120}
!301 = !DILocation(line: 83, column: 5, scope: !289)
!302 = !DILocation(line: 84, column: 12, scope: !303)
!303 = distinct !DILexicalBlock(scope: !187, file: !2, line: 84, column: 5)
!304 = !DILocation(line: 84, column: 10, scope: !303)
!305 = !DILocation(line: 84, column: 18, scope: !306)
!306 = distinct !DILexicalBlock(scope: !303, file: !2, line: 84, column: 5)
!307 = !DILocation(line: 84, column: 20, scope: !306)
!308 = !DILocation(line: 84, column: 5, scope: !303)
!309 = !DILocation(line: 85, column: 2, scope: !310)
!310 = distinct !DILexicalBlock(scope: !306, file: !2, line: 84, column: 31)
!311 = !DILocation(line: 86, column: 5, scope: !310)
!312 = !DILocation(line: 84, column: 26, scope: !306)
!313 = !DILocation(line: 84, column: 5, scope: !306)
!314 = distinct !{!314, !308, !315, !120}
!315 = !DILocation(line: 86, column: 5, scope: !303)
!316 = !DILocation(line: 87, column: 12, scope: !317)
!317 = distinct !DILexicalBlock(scope: !187, file: !2, line: 87, column: 5)
!318 = !DILocation(line: 87, column: 10, scope: !317)
!319 = !DILocation(line: 87, column: 18, scope: !320)
!320 = distinct !DILexicalBlock(scope: !317, file: !2, line: 87, column: 5)
!321 = !DILocation(line: 87, column: 20, scope: !320)
!322 = !DILocation(line: 87, column: 5, scope: !317)
!323 = !DILocation(line: 88, column: 2, scope: !324)
!324 = distinct !DILexicalBlock(scope: !320, file: !2, line: 87, column: 31)
!325 = !DILocation(line: 89, column: 5, scope: !324)
!326 = !DILocation(line: 87, column: 26, scope: !320)
!327 = !DILocation(line: 87, column: 5, scope: !320)
!328 = distinct !{!328, !322, !329, !120}
!329 = !DILocation(line: 89, column: 5, scope: !317)
!330 = !DILocation(line: 91, column: 28, scope: !187)
!331 = !DILocation(line: 91, column: 5, scope: !187)
!332 = !DILocation(line: 91, column: 15, scope: !187)
!333 = !DILocation(line: 91, column: 25, scope: !187)
!334 = !DILocation(line: 92, column: 28, scope: !187)
!335 = !DILocation(line: 92, column: 5, scope: !187)
!336 = !DILocation(line: 92, column: 15, scope: !187)
!337 = !DILocation(line: 92, column: 25, scope: !187)
!338 = !DILocation(line: 93, column: 28, scope: !187)
!339 = !DILocation(line: 93, column: 5, scope: !187)
!340 = !DILocation(line: 93, column: 15, scope: !187)
!341 = !DILocation(line: 93, column: 25, scope: !187)
!342 = !DILocation(line: 94, column: 28, scope: !187)
!343 = !DILocation(line: 94, column: 5, scope: !187)
!344 = !DILocation(line: 94, column: 15, scope: !187)
!345 = !DILocation(line: 94, column: 25, scope: !187)
!346 = !DILocation(line: 95, column: 28, scope: !187)
!347 = !DILocation(line: 95, column: 5, scope: !187)
!348 = !DILocation(line: 95, column: 15, scope: !187)
!349 = !DILocation(line: 95, column: 25, scope: !187)
!350 = !DILocation(line: 96, column: 1, scope: !187)
!351 = distinct !DISubprogram(name: "sha_final", scope: !2, file: !2, line: 160, type: !26, scopeLine: 161, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !42)
!352 = !DILocalVariable(name: "sha_info", arg: 1, scope: !351, file: !2, line: 160, type: !28)
!353 = !DILocation(line: 160, column: 26, scope: !351)
!354 = !DILocalVariable(name: "count", scope: !351, file: !2, line: 162, type: !12)
!355 = !DILocation(line: 162, column: 9, scope: !351)
!356 = !DILocalVariable(name: "lo_bit_count", scope: !351, file: !2, line: 163, type: !9)
!357 = !DILocation(line: 163, column: 10, scope: !351)
!358 = !DILocalVariable(name: "hi_bit_count", scope: !351, file: !2, line: 163, type: !9)
!359 = !DILocation(line: 163, column: 24, scope: !351)
!360 = !DILocation(line: 165, column: 20, scope: !351)
!361 = !DILocation(line: 165, column: 30, scope: !351)
!362 = !DILocation(line: 165, column: 18, scope: !351)
!363 = !DILocation(line: 166, column: 20, scope: !351)
!364 = !DILocation(line: 166, column: 30, scope: !351)
!365 = !DILocation(line: 166, column: 18, scope: !351)
!366 = !DILocation(line: 167, column: 21, scope: !351)
!367 = !DILocation(line: 167, column: 34, scope: !351)
!368 = !DILocation(line: 167, column: 40, scope: !351)
!369 = !DILocation(line: 167, column: 13, scope: !351)
!370 = !DILocation(line: 167, column: 11, scope: !351)
!371 = !DILocation(line: 168, column: 15, scope: !351)
!372 = !DILocation(line: 168, column: 25, scope: !351)
!373 = !DILocation(line: 168, column: 5, scope: !351)
!374 = !DILocation(line: 168, column: 36, scope: !351)
!375 = !DILocation(line: 168, column: 40, scope: !351)
!376 = !DILocation(line: 169, column: 9, scope: !377)
!377 = distinct !DILexicalBlock(scope: !351, file: !2, line: 169, column: 9)
!378 = !DILocation(line: 169, column: 15, scope: !377)
!379 = !DILocation(line: 170, column: 19, scope: !380)
!380 = distinct !DILexicalBlock(scope: !377, file: !2, line: 169, column: 21)
!381 = !DILocation(line: 170, column: 29, scope: !380)
!382 = !DILocation(line: 170, column: 36, scope: !380)
!383 = !DILocation(line: 170, column: 34, scope: !380)
!384 = !DILocation(line: 170, column: 51, scope: !380)
!385 = !DILocation(line: 170, column: 49, scope: !380)
!386 = !DILocation(line: 170, column: 46, scope: !380)
!387 = !DILocation(line: 170, column: 2, scope: !380)
!388 = !DILocation(line: 172, column: 15, scope: !380)
!389 = !DILocation(line: 172, column: 25, scope: !380)
!390 = !DILocation(line: 172, column: 2, scope: !380)
!391 = !DILocation(line: 174, column: 16, scope: !380)
!392 = !DILocation(line: 174, column: 2, scope: !380)
!393 = !DILocation(line: 175, column: 10, scope: !380)
!394 = !DILocation(line: 175, column: 20, scope: !380)
!395 = !DILocation(line: 175, column: 2, scope: !380)
!396 = !DILocation(line: 176, column: 5, scope: !380)
!397 = !DILocation(line: 177, column: 19, scope: !398)
!398 = distinct !DILexicalBlock(scope: !377, file: !2, line: 176, column: 12)
!399 = !DILocation(line: 177, column: 29, scope: !398)
!400 = !DILocation(line: 177, column: 36, scope: !398)
!401 = !DILocation(line: 177, column: 34, scope: !398)
!402 = !DILocation(line: 177, column: 51, scope: !398)
!403 = !DILocation(line: 177, column: 49, scope: !398)
!404 = !DILocation(line: 177, column: 46, scope: !398)
!405 = !DILocation(line: 177, column: 2, scope: !398)
!406 = !DILocation(line: 180, column: 18, scope: !351)
!407 = !DILocation(line: 180, column: 28, scope: !351)
!408 = !DILocation(line: 180, column: 5, scope: !351)
!409 = !DILocation(line: 182, column: 26, scope: !351)
!410 = !DILocation(line: 182, column: 5, scope: !351)
!411 = !DILocation(line: 182, column: 15, scope: !351)
!412 = !DILocation(line: 182, column: 24, scope: !351)
!413 = !DILocation(line: 183, column: 26, scope: !351)
!414 = !DILocation(line: 183, column: 5, scope: !351)
!415 = !DILocation(line: 183, column: 15, scope: !351)
!416 = !DILocation(line: 183, column: 24, scope: !351)
!417 = !DILocation(line: 184, column: 19, scope: !351)
!418 = !DILocation(line: 184, column: 5, scope: !351)
!419 = !DILocation(line: 185, column: 1, scope: !351)
!420 = distinct !DISubprogram(name: "sha_stream", scope: !2, file: !2, line: 191, type: !421, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !42)
!421 = !DISubroutineType(types: !422)
!422 = !{null, !28, !423}
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !425, line: 7, baseType: !426)
!425 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !427, line: 49, size: 1728, elements: !428)
!427 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!428 = !{!429, !430, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !445, !447, !448, !449, !453, !455, !457, !461, !464, !466, !469, !472, !473, !475, !478, !479}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !426, file: !427, line: 51, baseType: !12, size: 32)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !426, file: !427, line: 54, baseType: !431, size: 64, offset: 64)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !426, file: !427, line: 55, baseType: !431, size: 64, offset: 128)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !426, file: !427, line: 56, baseType: !431, size: 64, offset: 192)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !426, file: !427, line: 57, baseType: !431, size: 64, offset: 256)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !426, file: !427, line: 58, baseType: !431, size: 64, offset: 320)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !426, file: !427, line: 59, baseType: !431, size: 64, offset: 384)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !426, file: !427, line: 60, baseType: !431, size: 64, offset: 448)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !426, file: !427, line: 61, baseType: !431, size: 64, offset: 512)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !426, file: !427, line: 64, baseType: !431, size: 64, offset: 576)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !426, file: !427, line: 65, baseType: !431, size: 64, offset: 640)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !426, file: !427, line: 66, baseType: !431, size: 64, offset: 704)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !426, file: !427, line: 68, baseType: !443, size: 64, offset: 768)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !427, line: 36, flags: DIFlagFwdDecl)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !426, file: !427, line: 70, baseType: !446, size: 64, offset: 832)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !426, file: !427, line: 72, baseType: !12, size: 32, offset: 896)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !426, file: !427, line: 73, baseType: !12, size: 32, offset: 928)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !426, file: !427, line: 74, baseType: !450, size: 64, offset: 960)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !451, line: 152, baseType: !452)
!451 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!452 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !426, file: !427, line: 77, baseType: !454, size: 16, offset: 1024)
!454 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !426, file: !427, line: 78, baseType: !456, size: 8, offset: 1040)
!456 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !426, file: !427, line: 79, baseType: !458, size: 8, offset: 1048)
!458 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !459)
!459 = !{!460}
!460 = !DISubrange(count: 1)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !426, file: !427, line: 81, baseType: !462, size: 64, offset: 1088)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !427, line: 43, baseType: null)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !426, file: !427, line: 89, baseType: !465, size: 64, offset: 1152)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !451, line: 153, baseType: !452)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !426, file: !427, line: 91, baseType: !467, size: 64, offset: 1216)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !427, line: 37, flags: DIFlagFwdDecl)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !426, file: !427, line: 92, baseType: !470, size: 64, offset: 1280)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !427, line: 38, flags: DIFlagFwdDecl)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !426, file: !427, line: 93, baseType: !446, size: 64, offset: 1344)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !426, file: !427, line: 94, baseType: !474, size: 64, offset: 1408)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !426, file: !427, line: 95, baseType: !476, size: 64, offset: 1472)
!476 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !477, line: 18, baseType: !11)
!477 = !DIFile(filename: "/usr/local/lib/clang/20/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!478 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !426, file: !427, line: 96, baseType: !12, size: 32, offset: 1536)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !426, file: !427, line: 98, baseType: !480, size: 160, offset: 1568)
!480 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !481)
!481 = !{!482}
!482 = !DISubrange(count: 20)
!483 = !DILocalVariable(name: "sha_info", arg: 1, scope: !420, file: !2, line: 191, type: !28)
!484 = !DILocation(line: 191, column: 27, scope: !420)
!485 = !DILocalVariable(name: "fin", arg: 2, scope: !420, file: !2, line: 191, type: !423)
!486 = !DILocation(line: 191, column: 43, scope: !420)
!487 = !DILocalVariable(name: "i", scope: !420, file: !2, line: 193, type: !12)
!488 = !DILocation(line: 193, column: 9, scope: !420)
!489 = !DILocalVariable(name: "data", scope: !420, file: !2, line: 194, type: !490)
!490 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 65536, elements: !491)
!491 = !{!492}
!492 = !DISubrange(count: 8192)
!493 = !DILocation(line: 194, column: 10, scope: !420)
!494 = !DILocation(line: 196, column: 14, scope: !420)
!495 = !DILocation(line: 196, column: 5, scope: !420)
!496 = !DILocation(line: 197, column: 5, scope: !420)
!497 = !DILocation(line: 197, column: 23, scope: !420)
!498 = !DILocation(line: 197, column: 44, scope: !420)
!499 = !DILocation(line: 197, column: 17, scope: !420)
!500 = !DILocation(line: 197, column: 15, scope: !420)
!501 = !DILocation(line: 197, column: 50, scope: !420)
!502 = !DILocation(line: 198, column: 13, scope: !503)
!503 = distinct !DILexicalBlock(scope: !420, file: !2, line: 197, column: 55)
!504 = !DILocation(line: 198, column: 23, scope: !503)
!505 = !DILocation(line: 198, column: 29, scope: !503)
!506 = !DILocation(line: 198, column: 2, scope: !503)
!507 = distinct !{!507, !496, !508, !120}
!508 = !DILocation(line: 199, column: 5, scope: !420)
!509 = !DILocation(line: 200, column: 15, scope: !420)
!510 = !DILocation(line: 200, column: 5, scope: !420)
!511 = !DILocation(line: 201, column: 1, scope: !420)
!512 = distinct !DISubprogram(name: "sha_print", scope: !2, file: !2, line: 205, type: !26, scopeLine: 206, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !42)
!513 = !DILocalVariable(name: "sha_info", arg: 1, scope: !512, file: !2, line: 205, type: !28)
!514 = !DILocation(line: 205, column: 26, scope: !512)
!515 = !DILocation(line: 208, column: 2, scope: !512)
!516 = !DILocation(line: 208, column: 12, scope: !512)
!517 = !DILocation(line: 208, column: 23, scope: !512)
!518 = !DILocation(line: 208, column: 33, scope: !512)
!519 = !DILocation(line: 208, column: 44, scope: !512)
!520 = !DILocation(line: 208, column: 54, scope: !512)
!521 = !DILocation(line: 209, column: 2, scope: !512)
!522 = !DILocation(line: 209, column: 12, scope: !512)
!523 = !DILocation(line: 209, column: 23, scope: !512)
!524 = !DILocation(line: 209, column: 33, scope: !512)
!525 = !DILocation(line: 207, column: 5, scope: !512)
!526 = !DILocation(line: 210, column: 1, scope: !512)
