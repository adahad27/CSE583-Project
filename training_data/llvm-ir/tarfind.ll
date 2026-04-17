; ModuleID = '../../src/tarfind/tarfind.c'
source_filename = "../../src/tarfind/tarfind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tar_header_t = type { [100 x i8], [8 x i8], [8 x i8], [8 x i8], [12 x i8], [12 x i8], [8 x i8], i8, [100 x i8] }

@heap = internal global [9000 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @warm_caches(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %3 = load i32, ptr %2, align 4
  %4 = call i32 @benchmark_body(i32 noundef 1, i32 noundef %3)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @benchmark_body(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca ptr, align 8
  %13 = alloca i32, align 4
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  store i32 0, ptr %9, align 4
  br label %18

18:                                               ; preds = %153, %2
  %19 = load i32, ptr %9, align 4
  %20 = load i32, ptr %3, align 4
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %22, label %156

22:                                               ; preds = %18
  store i32 0, ptr %10, align 4
  br label %23

23:                                               ; preds = %149, %22
  %24 = load i32, ptr %10, align 4
  %25 = load i32, ptr %4, align 4
  %26 = icmp ult i32 %24, %25
  br i1 %26, label %27, label %152

27:                                               ; preds = %23
  call void @init_heap_beebs(ptr noundef @heap, i64 noundef 9000)
  store i32 35, ptr %11, align 4
  %28 = load i32, ptr %11, align 4
  %29 = sext i32 %28 to i64
  %30 = mul i64 257, %29
  %31 = call ptr @malloc_beebs(i64 noundef %30)
  store ptr %31, ptr %7, align 8
  store i32 0, ptr %5, align 4
  br label %32

32:                                               ; preds = %68, %27
  %33 = load i32, ptr %5, align 4
  %34 = load i32, ptr %11, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %71

36:                                               ; preds = %32
  %37 = load ptr, ptr %7, align 8
  %38 = load i32, ptr %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.tar_header_t, ptr %37, i64 %39
  store ptr %40, ptr %12, align 8
  %41 = load ptr, ptr %12, align 8
  call void @llvm.memset.p0.i64(ptr align 1 %41, i8 0, i64 257, i1 false)
  %42 = load i32, ptr %5, align 4
  %43 = srem i32 %42, 94
  %44 = add nsw i32 5, %43
  store i32 %44, ptr %13, align 4
  %45 = load ptr, ptr %12, align 8
  %46 = getelementptr inbounds nuw %struct.tar_header_t, ptr %45, i32 0, i32 7
  store i8 48, ptr %46, align 1
  store i32 0, ptr %6, align 4
  br label %47

47:                                               ; preds = %61, %36
  %48 = load i32, ptr %6, align 4
  %49 = load i32, ptr %13, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %64

51:                                               ; preds = %47
  %52 = call i32 @rand_beebs()
  %53 = srem i32 %52, 26
  %54 = add nsw i32 %53, 65
  %55 = trunc i32 %54 to i8
  %56 = load ptr, ptr %12, align 8
  %57 = getelementptr inbounds nuw %struct.tar_header_t, ptr %56, i32 0, i32 0
  %58 = load i32, ptr %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [100 x i8], ptr %57, i64 0, i64 %59
  store i8 %55, ptr %60, align 1
  br label %61

61:                                               ; preds = %51
  %62 = load i32, ptr %6, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, ptr %6, align 4
  br label %47, !llvm.loop !6

64:                                               ; preds = %47
  %65 = load ptr, ptr %12, align 8
  %66 = getelementptr inbounds nuw %struct.tar_header_t, ptr %65, i32 0, i32 4
  %67 = getelementptr inbounds [12 x i8], ptr %66, i64 0, i64 0
  store i8 48, ptr %67, align 1
  br label %68

68:                                               ; preds = %64
  %69 = load i32, ptr %5, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, ptr %5, align 4
  br label %32, !llvm.loop !8

71:                                               ; preds = %32
  store i32 0, ptr %8, align 4
  store i32 0, ptr %6, align 4
  br label %72

72:                                               ; preds = %144, %71
  %73 = load i32, ptr %6, align 4
  %74 = icmp slt i32 %73, 5
  br i1 %74, label %75, label %147

75:                                               ; preds = %72
  %76 = load ptr, ptr %7, align 8
  %77 = load i32, ptr %6, align 4
  %78 = add nsw i32 %77, 17
  %79 = srem i32 %78, 35
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.tar_header_t, ptr %76, i64 %80
  %82 = getelementptr inbounds nuw %struct.tar_header_t, ptr %81, i32 0, i32 0
  %83 = getelementptr inbounds [100 x i8], ptr %82, i64 0, i64 0
  store ptr %83, ptr %14, align 8
  store i32 0, ptr %5, align 4
  br label %84

84:                                               ; preds = %140, %75
  %85 = load i32, ptr %5, align 4
  %86 = load i32, ptr %11, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %143

88:                                               ; preds = %84
  %89 = load ptr, ptr %7, align 8
  %90 = load i32, ptr %5, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.tar_header_t, ptr %89, i64 %91
  store ptr %92, ptr %15, align 8
  %93 = load ptr, ptr %7, align 8
  %94 = load i32, ptr %5, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.tar_header_t, ptr %93, i64 %95
  %97 = getelementptr inbounds nuw %struct.tar_header_t, ptr %96, i32 0, i32 0
  %98 = getelementptr inbounds [100 x i8], ptr %97, i64 0, i64 0
  store ptr %98, ptr %16, align 8
  %99 = load ptr, ptr %14, align 8
  store ptr %99, ptr %17, align 8
  br label %100

100:                                              ; preds = %121, %88
  %101 = load ptr, ptr %16, align 8
  %102 = load i8, ptr %101, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %118

105:                                              ; preds = %100
  %106 = load ptr, ptr %17, align 8
  %107 = load i8, ptr %106, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %118

110:                                              ; preds = %105
  %111 = load ptr, ptr %16, align 8
  %112 = load i8, ptr %111, align 1
  %113 = sext i8 %112 to i32
  %114 = load ptr, ptr %17, align 8
  %115 = load i8, ptr %114, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp eq i32 %113, %116
  br label %118

118:                                              ; preds = %110, %105, %100
  %119 = phi i1 [ false, %105 ], [ false, %100 ], [ %117, %110 ]
  br i1 %119, label %120, label %126

120:                                              ; preds = %118
  br label %121

121:                                              ; preds = %120
  %122 = load ptr, ptr %16, align 8
  %123 = getelementptr inbounds nuw i8, ptr %122, i32 1
  store ptr %123, ptr %16, align 8
  %124 = load ptr, ptr %17, align 8
  %125 = getelementptr inbounds nuw i8, ptr %124, i32 1
  store ptr %125, ptr %17, align 8
  br label %100, !llvm.loop !9

126:                                              ; preds = %118
  %127 = load ptr, ptr %16, align 8
  %128 = load i8, ptr %127, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %139

131:                                              ; preds = %126
  %132 = load ptr, ptr %17, align 8
  %133 = load i8, ptr %132, align 1
  %134 = sext i8 %133 to i32
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %131
  %137 = load i32, ptr %8, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, ptr %8, align 4
  br label %143

139:                                              ; preds = %131, %126
  br label %140

140:                                              ; preds = %139
  %141 = load i32, ptr %5, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, ptr %5, align 4
  br label %84, !llvm.loop !10

143:                                              ; preds = %136, %84
  br label %144

144:                                              ; preds = %143
  %145 = load i32, ptr %6, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, ptr %6, align 4
  br label %72, !llvm.loop !11

147:                                              ; preds = %72
  %148 = load ptr, ptr %7, align 8
  call void @free_beebs(ptr noundef %148)
  br label %149

149:                                              ; preds = %147
  %150 = load i32, ptr %10, align 4
  %151 = add i32 %150, 1
  store i32 %151, ptr %10, align 4
  br label %23, !llvm.loop !12

152:                                              ; preds = %23
  br label %153

153:                                              ; preds = %152
  %154 = load i32, ptr %9, align 4
  %155 = add i32 %154, 1
  store i32 %155, ptr %9, align 4
  br label %18, !llvm.loop !13

156:                                              ; preds = %18
  %157 = load i32, ptr %8, align 4
  %158 = icmp eq i32 %157, 5
  %159 = zext i1 %158 to i32
  ret i32 %159
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @benchmark() #0 {
  %1 = call i32 @benchmark_body(i32 noundef 46, i32 noundef 20)
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @initialise_benchmark() #0 {
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @verify_benchmark(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 1
  %5 = zext i1 %4 to i32
  ret i32 %5
}

declare void @init_heap_beebs(ptr noundef, i64 noundef) #1

declare ptr @malloc_beebs(i64 noundef) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

declare i32 @rand_beebs() #1

declare void @free_beebs(ptr noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }

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
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
