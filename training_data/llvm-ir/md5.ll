; ModuleID = '../../src/md5sum/md5.c'
source_filename = "../../src/md5sum/md5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.md5.r = private unnamed_addr constant [64 x i32] [i32 7, i32 12, i32 17, i32 22, i32 7, i32 12, i32 17, i32 22, i32 7, i32 12, i32 17, i32 22, i32 7, i32 12, i32 17, i32 22, i32 5, i32 9, i32 14, i32 20, i32 5, i32 9, i32 14, i32 20, i32 5, i32 9, i32 14, i32 20, i32 5, i32 9, i32 14, i32 20, i32 4, i32 11, i32 16, i32 23, i32 4, i32 11, i32 16, i32 23, i32 4, i32 11, i32 16, i32 23, i32 4, i32 11, i32 16, i32 23, i32 6, i32 10, i32 15, i32 21, i32 6, i32 10, i32 15, i32 21, i32 6, i32 10, i32 15, i32 21, i32 6, i32 10, i32 15, i32 21], align 16
@__const.md5.k = private unnamed_addr constant [64 x i32] [i32 -680876936, i32 -389564586, i32 606105819, i32 -1044525330, i32 -176418897, i32 1200080426, i32 -1473231341, i32 -45705983, i32 1770035416, i32 -1958414417, i32 -42063, i32 -1990404162, i32 1804603682, i32 -40341101, i32 -1502002290, i32 1236535329, i32 -165796510, i32 -1069501632, i32 643717713, i32 -373897302, i32 -701558691, i32 38016083, i32 -660478335, i32 -405537848, i32 568446438, i32 -1019803690, i32 -187363961, i32 1163531501, i32 -1444681467, i32 -51403784, i32 1735328473, i32 -1926607734, i32 -378558, i32 -2022574463, i32 1839030562, i32 -35309556, i32 -1530992060, i32 1272893353, i32 -155497632, i32 -1094730640, i32 681279174, i32 -358537222, i32 -722521979, i32 76029189, i32 -640364487, i32 -421815835, i32 530742520, i32 -995338651, i32 -198630844, i32 1126891415, i32 -1416354905, i32 -57434055, i32 1700485571, i32 -1894986606, i32 -1051523, i32 -2054922799, i32 1873313359, i32 -30611744, i32 -1560198380, i32 1309151649, i32 -145523070, i32 -1120210379, i32 718787259, i32 -343485551], align 16
@h0 = internal global i32 0, align 4
@h1 = internal global i32 0, align 4
@h2 = internal global i32 0, align 4
@h3 = internal global i32 0, align 4
@heap = internal global [3080 x i8] zeroinitializer, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @md5(ptr noundef %0, i64 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  %6 = alloca [64 x i32], align 16
  %7 = alloca [64 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i64 %1, ptr %4, align 8
  store ptr null, ptr %5, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %6, ptr align 16 @__const.md5.r, i64 256, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %7, ptr align 16 @__const.md5.k, i64 256, i1 false)
  store i32 1732584193, ptr @h0, align 4
  store i32 -271733879, ptr @h1, align 4
  store i32 -1732584194, ptr @h2, align 4
  store i32 271733878, ptr @h3, align 4
  %20 = load i64, ptr %4, align 8
  %21 = add i64 %20, 8
  %22 = udiv i64 %21, 64
  %23 = add i64 %22, 1
  %24 = mul i64 %23, 64
  %25 = sub i64 %24, 8
  %26 = trunc i64 %25 to i32
  store i32 %26, ptr %8, align 4
  %27 = load i32, ptr %8, align 4
  %28 = add nsw i32 %27, 64
  %29 = sext i32 %28 to i64
  %30 = call ptr @calloc_beebs(i64 noundef %29, i64 noundef 1)
  store ptr %30, ptr %5, align 8
  %31 = load ptr, ptr %5, align 8
  %32 = load ptr, ptr %3, align 8
  %33 = load i64, ptr %4, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %31, ptr align 1 %32, i64 %33, i1 false)
  %34 = load ptr, ptr %5, align 8
  %35 = load i64, ptr %4, align 8
  %36 = getelementptr inbounds nuw i8, ptr %34, i64 %35
  store i8 -128, ptr %36, align 1
  %37 = load i64, ptr %4, align 8
  %38 = mul i64 8, %37
  %39 = trunc i64 %38 to i32
  store i32 %39, ptr %9, align 4
  %40 = load ptr, ptr %5, align 8
  %41 = load i32, ptr %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, ptr %40, i64 %42
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %43, ptr align 4 %9, i64 4, i1 false)
  store i32 0, ptr %10, align 4
  br label %44

44:                                               ; preds = %177, %2
  %45 = load i32, ptr %10, align 4
  %46 = load i32, ptr %8, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %180

48:                                               ; preds = %44
  %49 = load ptr, ptr %5, align 8
  %50 = load i32, ptr %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, ptr %49, i64 %51
  store ptr %52, ptr %11, align 8
  %53 = load i32, ptr @h0, align 4
  store i32 %53, ptr %12, align 4
  %54 = load i32, ptr @h1, align 4
  store i32 %54, ptr %13, align 4
  %55 = load i32, ptr @h2, align 4
  store i32 %55, ptr %14, align 4
  %56 = load i32, ptr @h3, align 4
  store i32 %56, ptr %15, align 4
  store i32 0, ptr %16, align 4
  br label %57

57:                                               ; preds = %161, %48
  %58 = load i32, ptr %16, align 4
  %59 = icmp ult i32 %58, 64
  br i1 %59, label %60, label %164

60:                                               ; preds = %57
  %61 = load i32, ptr %16, align 4
  %62 = icmp ult i32 %61, 16
  br i1 %62, label %63, label %73

63:                                               ; preds = %60
  %64 = load i32, ptr %13, align 4
  %65 = load i32, ptr %14, align 4
  %66 = and i32 %64, %65
  %67 = load i32, ptr %13, align 4
  %68 = xor i32 %67, -1
  %69 = load i32, ptr %15, align 4
  %70 = and i32 %68, %69
  %71 = or i32 %66, %70
  store i32 %71, ptr %17, align 4
  %72 = load i32, ptr %16, align 4
  store i32 %72, ptr %18, align 4
  br label %114

73:                                               ; preds = %60
  %74 = load i32, ptr %16, align 4
  %75 = icmp ult i32 %74, 32
  br i1 %75, label %76, label %89

76:                                               ; preds = %73
  %77 = load i32, ptr %15, align 4
  %78 = load i32, ptr %13, align 4
  %79 = and i32 %77, %78
  %80 = load i32, ptr %15, align 4
  %81 = xor i32 %80, -1
  %82 = load i32, ptr %14, align 4
  %83 = and i32 %81, %82
  %84 = or i32 %79, %83
  store i32 %84, ptr %17, align 4
  %85 = load i32, ptr %16, align 4
  %86 = mul i32 5, %85
  %87 = add i32 %86, 1
  %88 = urem i32 %87, 16
  store i32 %88, ptr %18, align 4
  br label %113

89:                                               ; preds = %73
  %90 = load i32, ptr %16, align 4
  %91 = icmp ult i32 %90, 48
  br i1 %91, label %92, label %102

92:                                               ; preds = %89
  %93 = load i32, ptr %13, align 4
  %94 = load i32, ptr %14, align 4
  %95 = xor i32 %93, %94
  %96 = load i32, ptr %15, align 4
  %97 = xor i32 %95, %96
  store i32 %97, ptr %17, align 4
  %98 = load i32, ptr %16, align 4
  %99 = mul i32 3, %98
  %100 = add i32 %99, 5
  %101 = urem i32 %100, 16
  store i32 %101, ptr %18, align 4
  br label %112

102:                                              ; preds = %89
  %103 = load i32, ptr %14, align 4
  %104 = load i32, ptr %13, align 4
  %105 = load i32, ptr %15, align 4
  %106 = xor i32 %105, -1
  %107 = or i32 %104, %106
  %108 = xor i32 %103, %107
  store i32 %108, ptr %17, align 4
  %109 = load i32, ptr %16, align 4
  %110 = mul i32 7, %109
  %111 = urem i32 %110, 16
  store i32 %111, ptr %18, align 4
  br label %112

112:                                              ; preds = %102, %92
  br label %113

113:                                              ; preds = %112, %76
  br label %114

114:                                              ; preds = %113, %63
  %115 = load i32, ptr %15, align 4
  store i32 %115, ptr %19, align 4
  %116 = load i32, ptr %14, align 4
  store i32 %116, ptr %15, align 4
  %117 = load i32, ptr %13, align 4
  store i32 %117, ptr %14, align 4
  %118 = load i32, ptr %13, align 4
  %119 = load i32, ptr %12, align 4
  %120 = load i32, ptr %17, align 4
  %121 = add i32 %119, %120
  %122 = load i32, ptr %16, align 4
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds nuw [64 x i32], ptr %7, i64 0, i64 %123
  %125 = load i32, ptr %124, align 4
  %126 = add i32 %121, %125
  %127 = load ptr, ptr %11, align 8
  %128 = load i32, ptr %18, align 4
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds nuw i32, ptr %127, i64 %129
  %131 = load i32, ptr %130, align 4
  %132 = add i32 %126, %131
  %133 = load i32, ptr %16, align 4
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds nuw [64 x i32], ptr %6, i64 0, i64 %134
  %136 = load i32, ptr %135, align 4
  %137 = shl i32 %132, %136
  %138 = load i32, ptr %12, align 4
  %139 = load i32, ptr %17, align 4
  %140 = add i32 %138, %139
  %141 = load i32, ptr %16, align 4
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds nuw [64 x i32], ptr %7, i64 0, i64 %142
  %144 = load i32, ptr %143, align 4
  %145 = add i32 %140, %144
  %146 = load ptr, ptr %11, align 8
  %147 = load i32, ptr %18, align 4
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds nuw i32, ptr %146, i64 %148
  %150 = load i32, ptr %149, align 4
  %151 = add i32 %145, %150
  %152 = load i32, ptr %16, align 4
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds nuw [64 x i32], ptr %6, i64 0, i64 %153
  %155 = load i32, ptr %154, align 4
  %156 = sub i32 32, %155
  %157 = lshr i32 %151, %156
  %158 = or i32 %137, %157
  %159 = add i32 %118, %158
  store i32 %159, ptr %13, align 4
  %160 = load i32, ptr %19, align 4
  store i32 %160, ptr %12, align 4
  br label %161

161:                                              ; preds = %114
  %162 = load i32, ptr %16, align 4
  %163 = add i32 %162, 1
  store i32 %163, ptr %16, align 4
  br label %57, !llvm.loop !6

164:                                              ; preds = %57
  %165 = load i32, ptr %12, align 4
  %166 = load i32, ptr @h0, align 4
  %167 = add i32 %166, %165
  store i32 %167, ptr @h0, align 4
  %168 = load i32, ptr %13, align 4
  %169 = load i32, ptr @h1, align 4
  %170 = add i32 %169, %168
  store i32 %170, ptr @h1, align 4
  %171 = load i32, ptr %14, align 4
  %172 = load i32, ptr @h2, align 4
  %173 = add i32 %172, %171
  store i32 %173, ptr @h2, align 4
  %174 = load i32, ptr %15, align 4
  %175 = load i32, ptr @h3, align 4
  %176 = add i32 %175, %174
  store i32 %176, ptr @h3, align 4
  br label %177

177:                                              ; preds = %164
  %178 = load i32, ptr %10, align 4
  %179 = add nsw i32 %178, 64
  store i32 %179, ptr %10, align 4
  br label %44, !llvm.loop !8

180:                                              ; preds = %44
  %181 = load ptr, ptr %5, align 8
  call void @free_beebs(ptr noundef %181)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

declare ptr @calloc_beebs(i64 noundef, i64 noundef) #2

declare void @free_beebs(ptr noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @initialise_benchmark() #0 {
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @warm_caches(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %3 = load i32, ptr %2, align 4
  %4 = call i32 @benchmark_body(i32 noundef 1, i32 noundef %3, i32 noundef 1000)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @benchmark_body(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  store i32 %0, ptr %4, align 4
  store i32 %1, ptr %5, align 4
  store i32 %2, ptr %6, align 4
  store i32 0, ptr %9, align 4
  br label %13

13:                                               ; preds = %49, %3
  %14 = load i32, ptr %9, align 4
  %15 = load i32, ptr %4, align 4
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %17, label %52

17:                                               ; preds = %13
  store i32 0, ptr %10, align 4
  br label %18

18:                                               ; preds = %45, %17
  %19 = load i32, ptr %10, align 4
  %20 = load i32, ptr %5, align 4
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %22, label %48

22:                                               ; preds = %18
  call void @init_heap_beebs(ptr noundef @heap, i64 noundef 3080)
  %23 = load i32, ptr %6, align 4
  %24 = sext i32 %23 to i64
  %25 = call ptr @malloc_beebs(i64 noundef %24)
  store ptr %25, ptr %11, align 8
  store i32 0, ptr %7, align 4
  br label %26

26:                                               ; preds = %37, %22
  %27 = load i32, ptr %7, align 4
  %28 = load i32, ptr %6, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %26
  %31 = load i32, ptr %7, align 4
  %32 = trunc i32 %31 to i8
  %33 = load ptr, ptr %11, align 8
  %34 = load i32, ptr %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, ptr %33, i64 %35
  store i8 %32, ptr %36, align 1
  br label %37

37:                                               ; preds = %30
  %38 = load i32, ptr %7, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, ptr %7, align 4
  br label %26, !llvm.loop !9

40:                                               ; preds = %26
  %41 = load ptr, ptr %11, align 8
  %42 = load i32, ptr %6, align 4
  %43 = sext i32 %42 to i64
  call void @md5(ptr noundef %41, i64 noundef %43)
  %44 = load ptr, ptr %11, align 8
  call void @free_beebs(ptr noundef %44)
  br label %45

45:                                               ; preds = %40
  %46 = load i32, ptr %10, align 4
  %47 = add i32 %46, 1
  store i32 %47, ptr %10, align 4
  br label %18, !llvm.loop !10

48:                                               ; preds = %18
  br label %49

49:                                               ; preds = %48
  %50 = load i32, ptr %9, align 4
  %51 = add i32 %50, 1
  store i32 %51, ptr %9, align 4
  br label %13, !llvm.loop !11

52:                                               ; preds = %13
  %53 = load i32, ptr @h0, align 4
  %54 = load i32, ptr @h1, align 4
  %55 = xor i32 %53, %54
  %56 = load i32, ptr @h2, align 4
  %57 = xor i32 %55, %56
  %58 = load i32, ptr @h3, align 4
  %59 = xor i32 %57, %58
  ret i32 %59
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @benchmark() #0 {
  %1 = call i32 @benchmark_body(i32 noundef 66, i32 noundef 20, i32 noundef 1000)
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @verify_benchmark(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 871789492
  %5 = zext i1 %4 to i32
  ret i32 %5
}

declare void @init_heap_beebs(ptr noundef, i64 noundef) #2

declare ptr @malloc_beebs(i64 noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
