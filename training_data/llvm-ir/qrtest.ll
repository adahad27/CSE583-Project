; ModuleID = '../../src/qrduino/qrtest.c'
source_filename = "../../src/qrduino/qrtest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.verify_benchmark.expected = private unnamed_addr constant [22 x i8] c"\FEe?\80\82n\A0\80\BAA.\80\BA&.\80\BA\09\AE\80\82\14", align 16
@strinbuf = external global ptr, align 8
@heap = internal global [8192 x i8] zeroinitializer, align 16
@benchmark_body.in_encode = internal global ptr @.str, align 8
@.str = private unnamed_addr constant [22 x i8] c"http://www.mageec.com\00", align 1
@encode = internal global ptr null, align 8
@size = internal global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @warm_caches(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %4 = load i32, ptr %2, align 4
  %5 = call i32 @benchmark_body(i32 noundef 1, i32 noundef %4)
  store i32 %5, ptr %3, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @benchmark_body(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  store i32 0, ptr %6, align 4
  br label %8

8:                                                ; preds = %29, %2
  %9 = load i32, ptr %6, align 4
  %10 = load i32, ptr %3, align 4
  %11 = icmp ult i32 %9, %10
  br i1 %11, label %12, label %32

12:                                               ; preds = %8
  store i32 0, ptr %7, align 4
  br label %13

13:                                               ; preds = %25, %12
  %14 = load i32, ptr %7, align 4
  %15 = load i32, ptr %4, align 4
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %17, label %28

17:                                               ; preds = %13
  %18 = load ptr, ptr @benchmark_body.in_encode, align 8
  store ptr %18, ptr @encode, align 8
  store i32 22, ptr @size, align 4
  call void @init_heap_beebs(ptr noundef @heap, i64 noundef 8192)
  %19 = load i32, ptr @size, align 4
  %20 = call i32 @initeccsize(i8 noundef zeroext 1, i32 noundef %19)
  %21 = load ptr, ptr @strinbuf, align 8
  %22 = load ptr, ptr @encode, align 8
  %23 = load i32, ptr @size, align 4
  %24 = sext i32 %23 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %21, ptr align 1 %22, i64 %24, i1 false)
  call void @initframe()
  call void @qrencode()
  call void @freeframe()
  call void (...) @freeecc()
  br label %25

25:                                               ; preds = %17
  %26 = load i32, ptr %7, align 4
  %27 = add i32 %26, 1
  store i32 %27, ptr %7, align 4
  br label %13, !llvm.loop !6

28:                                               ; preds = %13
  br label %29

29:                                               ; preds = %28
  %30 = load i32, ptr %6, align 4
  %31 = add i32 %30, 1
  store i32 %31, ptr %6, align 4
  br label %8, !llvm.loop !8

32:                                               ; preds = %8
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @benchmark() #0 {
  %1 = call i32 @benchmark_body(i32 noundef 5, i32 noundef 20)
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @initialise_benchmark() #0 {
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @verify_benchmark(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [22 x i8], align 16
  store i32 %0, ptr %2, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %3, ptr align 16 @__const.verify_benchmark.expected, i64 22, i1 false)
  %4 = load ptr, ptr @strinbuf, align 8
  %5 = getelementptr inbounds [22 x i8], ptr %3, i64 0, i64 0
  %6 = call i32 @memcmp(ptr noundef %4, ptr noundef %5, i64 noundef 22) #4
  %7 = icmp eq i32 0, %6
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = call i32 @check_heap_beebs(ptr noundef @heap)
  %10 = icmp ne i32 %9, 0
  br label %11

11:                                               ; preds = %8, %1
  %12 = phi i1 [ false, %1 ], [ %10, %8 ]
  %13 = zext i1 %12 to i32
  ret i32 %13
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind willreturn memory(read)
declare i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #2

declare i32 @check_heap_beebs(ptr noundef) #3

declare void @init_heap_beebs(ptr noundef, i64 noundef) #3

declare i32 @initeccsize(i8 noundef zeroext, i32 noundef) #3

declare void @initframe() #3

declare void @qrencode() #3

declare void @freeframe() #3

declare void @freeecc(...) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(read) }

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
