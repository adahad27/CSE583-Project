; ModuleID = '../../src/aha-mont64/mont64.c'
source_filename = "../../src/aha-mont64/mont64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@in_m = internal global i64 0, align 8
@in_b = internal global i64 0, align 8
@in_a = internal global i64 0, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @mulul64(i64 noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i128, align 16
  store i64 %0, ptr %5, align 8
  store i64 %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  store ptr %3, ptr %8, align 8
  %10 = load i64, ptr %5, align 8
  %11 = zext i64 %10 to i128
  %12 = load i64, ptr %6, align 8
  %13 = zext i64 %12 to i128
  %14 = mul i128 %11, %13
  store i128 %14, ptr %9, align 16
  %15 = load i128, ptr %9, align 16
  %16 = trunc i128 %15 to i64
  %17 = load ptr, ptr %8, align 8
  store i64 %16, ptr %17, align 8
  %18 = load i128, ptr %9, align 16
  %19 = lshr i128 %18, 64
  %20 = trunc i128 %19 to i64
  %21 = load ptr, ptr %7, align 8
  store i64 %20, ptr %21, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @modul64(i64 noundef %0, i64 noundef %1, i64 noundef %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64 %0, ptr %4, align 8
  store i64 %1, ptr %5, align 8
  store i64 %2, ptr %6, align 8
  store i64 1, ptr %7, align 8
  br label %9

9:                                                ; preds = %34, %3
  %10 = load i64, ptr %7, align 8
  %11 = icmp sle i64 %10, 64
  br i1 %11, label %12, label %37

12:                                               ; preds = %9
  %13 = load i64, ptr %4, align 8
  %14 = ashr i64 %13, 63
  store i64 %14, ptr %8, align 8
  %15 = load i64, ptr %4, align 8
  %16 = shl i64 %15, 1
  %17 = load i64, ptr %5, align 8
  %18 = lshr i64 %17, 63
  %19 = or i64 %16, %18
  store i64 %19, ptr %4, align 8
  %20 = load i64, ptr %5, align 8
  %21 = shl i64 %20, 1
  store i64 %21, ptr %5, align 8
  %22 = load i64, ptr %4, align 8
  %23 = load i64, ptr %8, align 8
  %24 = or i64 %22, %23
  %25 = load i64, ptr %6, align 8
  %26 = icmp uge i64 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %12
  %28 = load i64, ptr %4, align 8
  %29 = load i64, ptr %6, align 8
  %30 = sub i64 %28, %29
  store i64 %30, ptr %4, align 8
  %31 = load i64, ptr %5, align 8
  %32 = add i64 %31, 1
  store i64 %32, ptr %5, align 8
  br label %33

33:                                               ; preds = %27, %12
  br label %34

34:                                               ; preds = %33
  %35 = load i64, ptr %7, align 8
  %36 = add nsw i64 %35, 1
  store i64 %36, ptr %7, align 8
  br label %9, !llvm.loop !6

37:                                               ; preds = %9
  %38 = load i64, ptr %4, align 8
  ret i64 %38
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @montmul(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i64 %0, ptr %5, align 8
  store i64 %1, ptr %6, align 8
  store i64 %2, ptr %7, align 8
  store i64 %3, ptr %8, align 8
  %17 = load i64, ptr %5, align 8
  %18 = load i64, ptr %6, align 8
  call void @mulul64(i64 noundef %17, i64 noundef %18, ptr noundef %9, ptr noundef %10)
  %19 = load i64, ptr %10, align 8
  %20 = load i64, ptr %8, align 8
  %21 = mul i64 %19, %20
  store i64 %21, ptr %11, align 8
  %22 = load i64, ptr %11, align 8
  %23 = load i64, ptr %7, align 8
  call void @mulul64(i64 noundef %22, i64 noundef %23, ptr noundef %12, ptr noundef %13)
  %24 = load i64, ptr %10, align 8
  %25 = load i64, ptr %13, align 8
  %26 = add i64 %24, %25
  store i64 %26, ptr %15, align 8
  %27 = load i64, ptr %9, align 8
  %28 = load i64, ptr %12, align 8
  %29 = add i64 %27, %28
  store i64 %29, ptr %14, align 8
  %30 = load i64, ptr %15, align 8
  %31 = load i64, ptr %10, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %4
  %34 = load i64, ptr %14, align 8
  %35 = add i64 %34, 1
  store i64 %35, ptr %14, align 8
  br label %36

36:                                               ; preds = %33, %4
  %37 = load i64, ptr %14, align 8
  %38 = load i64, ptr %9, align 8
  %39 = icmp ult i64 %37, %38
  %40 = zext i1 %39 to i32
  %41 = load i64, ptr %14, align 8
  %42 = load i64, ptr %9, align 8
  %43 = icmp eq i64 %41, %42
  %44 = zext i1 %43 to i32
  %45 = load i64, ptr %15, align 8
  %46 = load i64, ptr %10, align 8
  %47 = icmp ult i64 %45, %46
  %48 = zext i1 %47 to i32
  %49 = and i32 %44, %48
  %50 = or i32 %40, %49
  %51 = sext i32 %50 to i64
  store i64 %51, ptr %16, align 8
  %52 = load i64, ptr %14, align 8
  store i64 %52, ptr %15, align 8
  store i64 0, ptr %14, align 8
  %53 = load i64, ptr %15, align 8
  %54 = load i64, ptr %7, align 8
  %55 = load i64, ptr %16, align 8
  %56 = load i64, ptr %15, align 8
  %57 = load i64, ptr %7, align 8
  %58 = icmp uge i64 %56, %57
  %59 = zext i1 %58 to i32
  %60 = sext i32 %59 to i64
  %61 = or i64 %55, %60
  %62 = sub i64 0, %61
  %63 = and i64 %54, %62
  %64 = sub i64 %53, %63
  store i64 %64, ptr %15, align 8
  %65 = load i64, ptr %15, align 8
  ret i64 %65
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @xbinGCD(i64 noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i64 %0, ptr %5, align 8
  store i64 %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  store ptr %3, ptr %8, align 8
  store i64 1, ptr %11, align 8
  store i64 0, ptr %12, align 8
  %13 = load i64, ptr %5, align 8
  store i64 %13, ptr %9, align 8
  %14 = load i64, ptr %6, align 8
  store i64 %14, ptr %10, align 8
  br label %15

15:                                               ; preds = %42, %4
  %16 = load i64, ptr %5, align 8
  %17 = icmp ugt i64 %16, 0
  br i1 %17, label %18, label %43

18:                                               ; preds = %15
  %19 = load i64, ptr %5, align 8
  %20 = lshr i64 %19, 1
  store i64 %20, ptr %5, align 8
  %21 = load i64, ptr %11, align 8
  %22 = and i64 %21, 1
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %18
  %25 = load i64, ptr %11, align 8
  %26 = lshr i64 %25, 1
  store i64 %26, ptr %11, align 8
  %27 = load i64, ptr %12, align 8
  %28 = lshr i64 %27, 1
  store i64 %28, ptr %12, align 8
  br label %42

29:                                               ; preds = %18
  %30 = load i64, ptr %11, align 8
  %31 = load i64, ptr %10, align 8
  %32 = xor i64 %30, %31
  %33 = lshr i64 %32, 1
  %34 = load i64, ptr %11, align 8
  %35 = load i64, ptr %10, align 8
  %36 = and i64 %34, %35
  %37 = add i64 %33, %36
  store i64 %37, ptr %11, align 8
  %38 = load i64, ptr %12, align 8
  %39 = lshr i64 %38, 1
  %40 = load i64, ptr %9, align 8
  %41 = add i64 %39, %40
  store i64 %41, ptr %12, align 8
  br label %42

42:                                               ; preds = %29, %24
  br label %15, !llvm.loop !8

43:                                               ; preds = %15
  %44 = load i64, ptr %11, align 8
  %45 = load ptr, ptr %7, align 8
  store volatile i64 %44, ptr %45, align 8
  %46 = load i64, ptr %12, align 8
  %47 = load ptr, ptr %8, align 8
  store volatile i64 %46, ptr %47, align 8
  ret void
}

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
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  store i32 0, ptr %7, align 4
  br label %23

23:                                               ; preds = %103, %2
  %24 = load i32, ptr %7, align 4
  %25 = load i32, ptr %3, align 4
  %26 = icmp ult i32 %24, %25
  br i1 %26, label %27, label %106

27:                                               ; preds = %23
  store i32 0, ptr %8, align 4
  br label %28

28:                                               ; preds = %99, %27
  %29 = load i32, ptr %8, align 4
  %30 = load i32, ptr %4, align 4
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %32, label %102

32:                                               ; preds = %28
  store i32 0, ptr %6, align 4
  %33 = load i64, ptr @in_m, align 8
  store i64 %33, ptr %11, align 8
  %34 = load i64, ptr @in_b, align 8
  store i64 %34, ptr %10, align 8
  %35 = load i64, ptr @in_a, align 8
  store i64 %35, ptr %9, align 8
  %36 = load i64, ptr %9, align 8
  %37 = load i64, ptr %10, align 8
  call void @mulul64(i64 noundef %36, i64 noundef %37, ptr noundef %13, ptr noundef %14)
  %38 = load i64, ptr %13, align 8
  %39 = load i64, ptr %14, align 8
  %40 = load i64, ptr %11, align 8
  %41 = call i64 @modul64(i64 noundef %38, i64 noundef %39, i64 noundef %40)
  store i64 %41, ptr %15, align 8
  %42 = load i64, ptr %15, align 8
  %43 = load i64, ptr %15, align 8
  call void @mulul64(i64 noundef %42, i64 noundef %43, ptr noundef %13, ptr noundef %14)
  %44 = load i64, ptr %13, align 8
  %45 = load i64, ptr %14, align 8
  %46 = load i64, ptr %11, align 8
  %47 = call i64 @modul64(i64 noundef %44, i64 noundef %45, i64 noundef %46)
  store i64 %47, ptr %15, align 8
  %48 = load i64, ptr %15, align 8
  %49 = load i64, ptr %15, align 8
  call void @mulul64(i64 noundef %48, i64 noundef %49, ptr noundef %13, ptr noundef %14)
  %50 = load i64, ptr %13, align 8
  %51 = load i64, ptr %14, align 8
  %52 = load i64, ptr %11, align 8
  %53 = call i64 @modul64(i64 noundef %50, i64 noundef %51, i64 noundef %52)
  store i64 %53, ptr %15, align 8
  store i64 -9223372036854775808, ptr %12, align 8
  %54 = load i64, ptr %12, align 8
  %55 = load i64, ptr %11, align 8
  call void @xbinGCD(i64 noundef %54, i64 noundef %55, ptr noundef %21, ptr noundef %22)
  %56 = load i64, ptr %12, align 8
  %57 = mul i64 2, %56
  %58 = load volatile i64, ptr %21, align 8
  %59 = mul i64 %57, %58
  %60 = load i64, ptr %11, align 8
  %61 = load volatile i64, ptr %22, align 8
  %62 = mul i64 %60, %61
  %63 = sub i64 %59, %62
  %64 = icmp ne i64 %63, 1
  br i1 %64, label %65, label %66

65:                                               ; preds = %32
  store i32 1, ptr %6, align 4
  br label %66

66:                                               ; preds = %65, %32
  %67 = load i64, ptr %9, align 8
  %68 = load i64, ptr %11, align 8
  %69 = call i64 @modul64(i64 noundef %67, i64 noundef 0, i64 noundef %68)
  store i64 %69, ptr %17, align 8
  %70 = load i64, ptr %10, align 8
  %71 = load i64, ptr %11, align 8
  %72 = call i64 @modul64(i64 noundef %70, i64 noundef 0, i64 noundef %71)
  store i64 %72, ptr %18, align 8
  %73 = load i64, ptr %17, align 8
  %74 = load i64, ptr %18, align 8
  %75 = load i64, ptr %11, align 8
  %76 = load volatile i64, ptr %22, align 8
  %77 = call i64 @montmul(i64 noundef %73, i64 noundef %74, i64 noundef %75, i64 noundef %76)
  store i64 %77, ptr %16, align 8
  %78 = load i64, ptr %16, align 8
  %79 = load i64, ptr %16, align 8
  %80 = load i64, ptr %11, align 8
  %81 = load volatile i64, ptr %22, align 8
  %82 = call i64 @montmul(i64 noundef %78, i64 noundef %79, i64 noundef %80, i64 noundef %81)
  store i64 %82, ptr %16, align 8
  %83 = load i64, ptr %16, align 8
  %84 = load i64, ptr %16, align 8
  %85 = load i64, ptr %11, align 8
  %86 = load volatile i64, ptr %22, align 8
  %87 = call i64 @montmul(i64 noundef %83, i64 noundef %84, i64 noundef %85, i64 noundef %86)
  store i64 %87, ptr %16, align 8
  %88 = load i64, ptr %16, align 8
  %89 = load volatile i64, ptr %21, align 8
  call void @mulul64(i64 noundef %88, i64 noundef %89, ptr noundef %19, ptr noundef %20)
  %90 = load i64, ptr %19, align 8
  %91 = load i64, ptr %20, align 8
  %92 = load i64, ptr %11, align 8
  %93 = call i64 @modul64(i64 noundef %90, i64 noundef %91, i64 noundef %92)
  store i64 %93, ptr %16, align 8
  %94 = load i64, ptr %16, align 8
  %95 = load i64, ptr %15, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %66
  store i32 1, ptr %6, align 4
  br label %98

98:                                               ; preds = %97, %66
  br label %99

99:                                               ; preds = %98
  %100 = load i32, ptr %8, align 4
  %101 = add i32 %100, 1
  store i32 %101, ptr %8, align 4
  br label %28, !llvm.loop !9

102:                                              ; preds = %28
  br label %103

103:                                              ; preds = %102
  %104 = load i32, ptr %7, align 4
  %105 = add i32 %104, 1
  store i32 %105, ptr %7, align 4
  br label %23, !llvm.loop !10

106:                                              ; preds = %23
  %107 = load i32, ptr %6, align 4
  ret i32 %107
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @benchmark() #0 {
  %1 = call i32 @benchmark_body(i32 noundef 472, i32 noundef 20)
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @initialise_benchmark() #0 {
  store i64 -366962936819156833, ptr @in_m, align 8
  store i64 1473642379452024179, ptr @in_b, align 8
  store i64 380896260630216687, ptr @in_a, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @verify_benchmark(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 0, %3
  %5 = zext i1 %4 to i32
  ret i32 %5
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
