; ModuleID = '../../src/sglib-combined/combined.c'
source_filename = "../../src/sglib-combined/combined.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dllist = type { i32, ptr, ptr }
%struct.sglib_dllist_iterator = type { ptr, ptr, ptr, ptr, ptr }
%struct.ilist = type { i32, ptr }
%struct.sglib_ilist_iterator = type { ptr, ptr, ptr, ptr }
%struct.sglib_hashed_ilist_iterator = type { %struct.sglib_ilist_iterator, ptr, i32, ptr, ptr }
%struct.iq = type { [101 x i32], i32, i32 }
%struct.rbtree = type { i32, i8, ptr, ptr }
%struct.sglib_rbtree_iterator = type { ptr, [128 x i8], [128 x ptr], i16, i16, ptr, ptr }

@verify_benchmark.array_exp = internal constant [100 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99], align 16
@the_list = dso_local global ptr null, align 8
@array = internal constant [100 x i32] [i32 14, i32 66, i32 12, i32 41, i32 86, i32 69, i32 19, i32 77, i32 68, i32 38, i32 26, i32 42, i32 37, i32 23, i32 17, i32 29, i32 55, i32 13, i32 90, i32 92, i32 76, i32 99, i32 10, i32 54, i32 57, i32 83, i32 40, i32 44, i32 75, i32 33, i32 24, i32 28, i32 80, i32 18, i32 78, i32 32, i32 93, i32 89, i32 52, i32 11, i32 21, i32 96, i32 50, i32 15, i32 48, i32 63, i32 87, i32 20, i32 8, i32 85, i32 43, i32 16, i32 94, i32 88, i32 53, i32 84, i32 74, i32 91, i32 67, i32 36, i32 95, i32 61, i32 64, i32 5, i32 30, i32 82, i32 72, i32 46, i32 59, i32 9, i32 7, i32 3, i32 39, i32 31, i32 4, i32 73, i32 70, i32 60, i32 58, i32 81, i32 56, i32 51, i32 45, i32 1, i32 6, i32 49, i32 27, i32 47, i32 34, i32 35, i32 62, i32 97, i32 2, i32 79, i32 98, i32 25, i32 22, i32 65, i32 71, i32 0], align 16
@htab = dso_local global [20 x ptr] zeroinitializer, align 16
@heap = internal global [8192 x i8] zeroinitializer, align 16
@array2 = dso_local global [100 x i32] zeroinitializer, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @sglib_dllist_add(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %17

8:                                                ; preds = %2
  %9 = load ptr, ptr %4, align 8
  %10 = load ptr, ptr %3, align 8
  store ptr %9, ptr %10, align 8
  %11 = load ptr, ptr %3, align 8
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds nuw %struct.dllist, ptr %12, i32 0, i32 2
  store ptr null, ptr %13, align 8
  %14 = load ptr, ptr %3, align 8
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds nuw %struct.dllist, ptr %15, i32 0, i32 1
  store ptr null, ptr %16, align 8
  br label %43

17:                                               ; preds = %2
  %18 = load ptr, ptr %3, align 8
  %19 = load ptr, ptr %18, align 8
  %20 = load ptr, ptr %4, align 8
  %21 = getelementptr inbounds nuw %struct.dllist, ptr %20, i32 0, i32 1
  store ptr %19, ptr %21, align 8
  %22 = load ptr, ptr %3, align 8
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds nuw %struct.dllist, ptr %23, i32 0, i32 2
  %25 = load ptr, ptr %24, align 8
  %26 = load ptr, ptr %4, align 8
  %27 = getelementptr inbounds nuw %struct.dllist, ptr %26, i32 0, i32 2
  store ptr %25, ptr %27, align 8
  %28 = load ptr, ptr %4, align 8
  %29 = load ptr, ptr %3, align 8
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr inbounds nuw %struct.dllist, ptr %30, i32 0, i32 2
  store ptr %28, ptr %31, align 8
  %32 = load ptr, ptr %4, align 8
  %33 = getelementptr inbounds nuw %struct.dllist, ptr %32, i32 0, i32 2
  %34 = load ptr, ptr %33, align 8
  %35 = icmp ne ptr %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %17
  %37 = load ptr, ptr %4, align 8
  %38 = load ptr, ptr %4, align 8
  %39 = getelementptr inbounds nuw %struct.dllist, ptr %38, i32 0, i32 2
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr inbounds nuw %struct.dllist, ptr %40, i32 0, i32 1
  store ptr %37, ptr %41, align 8
  br label %42

42:                                               ; preds = %36, %17
  br label %43

43:                                               ; preds = %42, %8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @sglib_dllist_add_after(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %17

8:                                                ; preds = %2
  %9 = load ptr, ptr %4, align 8
  %10 = load ptr, ptr %3, align 8
  store ptr %9, ptr %10, align 8
  %11 = load ptr, ptr %3, align 8
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds nuw %struct.dllist, ptr %12, i32 0, i32 2
  store ptr null, ptr %13, align 8
  %14 = load ptr, ptr %3, align 8
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds nuw %struct.dllist, ptr %15, i32 0, i32 1
  store ptr null, ptr %16, align 8
  br label %43

17:                                               ; preds = %2
  %18 = load ptr, ptr %3, align 8
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds nuw %struct.dllist, ptr %19, i32 0, i32 1
  %21 = load ptr, ptr %20, align 8
  %22 = load ptr, ptr %4, align 8
  %23 = getelementptr inbounds nuw %struct.dllist, ptr %22, i32 0, i32 1
  store ptr %21, ptr %23, align 8
  %24 = load ptr, ptr %3, align 8
  %25 = load ptr, ptr %24, align 8
  %26 = load ptr, ptr %4, align 8
  %27 = getelementptr inbounds nuw %struct.dllist, ptr %26, i32 0, i32 2
  store ptr %25, ptr %27, align 8
  %28 = load ptr, ptr %4, align 8
  %29 = load ptr, ptr %3, align 8
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr inbounds nuw %struct.dllist, ptr %30, i32 0, i32 1
  store ptr %28, ptr %31, align 8
  %32 = load ptr, ptr %4, align 8
  %33 = getelementptr inbounds nuw %struct.dllist, ptr %32, i32 0, i32 1
  %34 = load ptr, ptr %33, align 8
  %35 = icmp ne ptr %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %17
  %37 = load ptr, ptr %4, align 8
  %38 = load ptr, ptr %4, align 8
  %39 = getelementptr inbounds nuw %struct.dllist, ptr %38, i32 0, i32 1
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr inbounds nuw %struct.dllist, ptr %40, i32 0, i32 2
  store ptr %37, ptr %41, align 8
  br label %42

42:                                               ; preds = %36, %17
  br label %43

43:                                               ; preds = %42, %8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @sglib_dllist_add_before(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %17

8:                                                ; preds = %2
  %9 = load ptr, ptr %4, align 8
  %10 = load ptr, ptr %3, align 8
  store ptr %9, ptr %10, align 8
  %11 = load ptr, ptr %3, align 8
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds nuw %struct.dllist, ptr %12, i32 0, i32 2
  store ptr null, ptr %13, align 8
  %14 = load ptr, ptr %3, align 8
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds nuw %struct.dllist, ptr %15, i32 0, i32 1
  store ptr null, ptr %16, align 8
  br label %43

17:                                               ; preds = %2
  %18 = load ptr, ptr %3, align 8
  %19 = load ptr, ptr %18, align 8
  %20 = load ptr, ptr %4, align 8
  %21 = getelementptr inbounds nuw %struct.dllist, ptr %20, i32 0, i32 1
  store ptr %19, ptr %21, align 8
  %22 = load ptr, ptr %3, align 8
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds nuw %struct.dllist, ptr %23, i32 0, i32 2
  %25 = load ptr, ptr %24, align 8
  %26 = load ptr, ptr %4, align 8
  %27 = getelementptr inbounds nuw %struct.dllist, ptr %26, i32 0, i32 2
  store ptr %25, ptr %27, align 8
  %28 = load ptr, ptr %4, align 8
  %29 = load ptr, ptr %3, align 8
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr inbounds nuw %struct.dllist, ptr %30, i32 0, i32 2
  store ptr %28, ptr %31, align 8
  %32 = load ptr, ptr %4, align 8
  %33 = getelementptr inbounds nuw %struct.dllist, ptr %32, i32 0, i32 2
  %34 = load ptr, ptr %33, align 8
  %35 = icmp ne ptr %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %17
  %37 = load ptr, ptr %4, align 8
  %38 = load ptr, ptr %4, align 8
  %39 = getelementptr inbounds nuw %struct.dllist, ptr %38, i32 0, i32 2
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr inbounds nuw %struct.dllist, ptr %40, i32 0, i32 1
  store ptr %37, ptr %41, align 8
  br label %42

42:                                               ; preds = %36, %17
  br label %43

43:                                               ; preds = %42, %8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sglib_dllist_add_if_not_member(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %8 = load ptr, ptr %4, align 8
  %9 = load ptr, ptr %8, align 8
  store ptr %9, ptr %7, align 8
  br label %10

10:                                               ; preds = %25, %3
  %11 = load ptr, ptr %7, align 8
  %12 = icmp ne ptr %11, null
  br i1 %12, label %13, label %22

13:                                               ; preds = %10
  %14 = load ptr, ptr %7, align 8
  %15 = getelementptr inbounds nuw %struct.dllist, ptr %14, i32 0, i32 0
  %16 = load i32, ptr %15, align 8
  %17 = load ptr, ptr %5, align 8
  %18 = getelementptr inbounds nuw %struct.dllist, ptr %17, i32 0, i32 0
  %19 = load i32, ptr %18, align 8
  %20 = sub nsw i32 %16, %19
  %21 = icmp ne i32 %20, 0
  br label %22

22:                                               ; preds = %13, %10
  %23 = phi i1 [ false, %10 ], [ %21, %13 ]
  br i1 %23, label %24, label %29

24:                                               ; preds = %22
  br label %25

25:                                               ; preds = %24
  %26 = load ptr, ptr %7, align 8
  %27 = getelementptr inbounds nuw %struct.dllist, ptr %26, i32 0, i32 2
  %28 = load ptr, ptr %27, align 8
  store ptr %28, ptr %7, align 8
  br label %10, !llvm.loop !6

29:                                               ; preds = %22
  %30 = load ptr, ptr %7, align 8
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %61

32:                                               ; preds = %29
  %33 = load ptr, ptr %4, align 8
  %34 = load ptr, ptr %33, align 8
  %35 = icmp ne ptr %34, null
  br i1 %35, label %36, label %61

36:                                               ; preds = %32
  %37 = load ptr, ptr %4, align 8
  %38 = load ptr, ptr %37, align 8
  %39 = getelementptr inbounds nuw %struct.dllist, ptr %38, i32 0, i32 1
  %40 = load ptr, ptr %39, align 8
  store ptr %40, ptr %7, align 8
  br label %41

41:                                               ; preds = %56, %36
  %42 = load ptr, ptr %7, align 8
  %43 = icmp ne ptr %42, null
  br i1 %43, label %44, label %53

44:                                               ; preds = %41
  %45 = load ptr, ptr %7, align 8
  %46 = getelementptr inbounds nuw %struct.dllist, ptr %45, i32 0, i32 0
  %47 = load i32, ptr %46, align 8
  %48 = load ptr, ptr %5, align 8
  %49 = getelementptr inbounds nuw %struct.dllist, ptr %48, i32 0, i32 0
  %50 = load i32, ptr %49, align 8
  %51 = sub nsw i32 %47, %50
  %52 = icmp ne i32 %51, 0
  br label %53

53:                                               ; preds = %44, %41
  %54 = phi i1 [ false, %41 ], [ %52, %44 ]
  br i1 %54, label %55, label %60

55:                                               ; preds = %53
  br label %56

56:                                               ; preds = %55
  %57 = load ptr, ptr %7, align 8
  %58 = getelementptr inbounds nuw %struct.dllist, ptr %57, i32 0, i32 1
  %59 = load ptr, ptr %58, align 8
  store ptr %59, ptr %7, align 8
  br label %41, !llvm.loop !8

60:                                               ; preds = %53
  br label %61

61:                                               ; preds = %60, %32, %29
  %62 = load ptr, ptr %7, align 8
  %63 = load ptr, ptr %6, align 8
  store ptr %62, ptr %63, align 8
  %64 = load ptr, ptr %7, align 8
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %106

66:                                               ; preds = %61
  %67 = load ptr, ptr %4, align 8
  %68 = load ptr, ptr %67, align 8
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %79

70:                                               ; preds = %66
  %71 = load ptr, ptr %5, align 8
  %72 = load ptr, ptr %4, align 8
  store ptr %71, ptr %72, align 8
  %73 = load ptr, ptr %4, align 8
  %74 = load ptr, ptr %73, align 8
  %75 = getelementptr inbounds nuw %struct.dllist, ptr %74, i32 0, i32 2
  store ptr null, ptr %75, align 8
  %76 = load ptr, ptr %4, align 8
  %77 = load ptr, ptr %76, align 8
  %78 = getelementptr inbounds nuw %struct.dllist, ptr %77, i32 0, i32 1
  store ptr null, ptr %78, align 8
  br label %105

79:                                               ; preds = %66
  %80 = load ptr, ptr %4, align 8
  %81 = load ptr, ptr %80, align 8
  %82 = load ptr, ptr %5, align 8
  %83 = getelementptr inbounds nuw %struct.dllist, ptr %82, i32 0, i32 1
  store ptr %81, ptr %83, align 8
  %84 = load ptr, ptr %4, align 8
  %85 = load ptr, ptr %84, align 8
  %86 = getelementptr inbounds nuw %struct.dllist, ptr %85, i32 0, i32 2
  %87 = load ptr, ptr %86, align 8
  %88 = load ptr, ptr %5, align 8
  %89 = getelementptr inbounds nuw %struct.dllist, ptr %88, i32 0, i32 2
  store ptr %87, ptr %89, align 8
  %90 = load ptr, ptr %5, align 8
  %91 = load ptr, ptr %4, align 8
  %92 = load ptr, ptr %91, align 8
  %93 = getelementptr inbounds nuw %struct.dllist, ptr %92, i32 0, i32 2
  store ptr %90, ptr %93, align 8
  %94 = load ptr, ptr %5, align 8
  %95 = getelementptr inbounds nuw %struct.dllist, ptr %94, i32 0, i32 2
  %96 = load ptr, ptr %95, align 8
  %97 = icmp ne ptr %96, null
  br i1 %97, label %98, label %104

98:                                               ; preds = %79
  %99 = load ptr, ptr %5, align 8
  %100 = load ptr, ptr %5, align 8
  %101 = getelementptr inbounds nuw %struct.dllist, ptr %100, i32 0, i32 2
  %102 = load ptr, ptr %101, align 8
  %103 = getelementptr inbounds nuw %struct.dllist, ptr %102, i32 0, i32 1
  store ptr %99, ptr %103, align 8
  br label %104

104:                                              ; preds = %98, %79
  br label %105

105:                                              ; preds = %104, %70
  br label %106

106:                                              ; preds = %105, %61
  %107 = load ptr, ptr %6, align 8
  %108 = load ptr, ptr %107, align 8
  %109 = icmp eq ptr %108, null
  %110 = zext i1 %109 to i32
  ret i32 %110
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sglib_dllist_add_after_if_not_member(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %8 = load ptr, ptr %4, align 8
  %9 = load ptr, ptr %8, align 8
  store ptr %9, ptr %7, align 8
  br label %10

10:                                               ; preds = %25, %3
  %11 = load ptr, ptr %7, align 8
  %12 = icmp ne ptr %11, null
  br i1 %12, label %13, label %22

13:                                               ; preds = %10
  %14 = load ptr, ptr %7, align 8
  %15 = getelementptr inbounds nuw %struct.dllist, ptr %14, i32 0, i32 0
  %16 = load i32, ptr %15, align 8
  %17 = load ptr, ptr %5, align 8
  %18 = getelementptr inbounds nuw %struct.dllist, ptr %17, i32 0, i32 0
  %19 = load i32, ptr %18, align 8
  %20 = sub nsw i32 %16, %19
  %21 = icmp ne i32 %20, 0
  br label %22

22:                                               ; preds = %13, %10
  %23 = phi i1 [ false, %10 ], [ %21, %13 ]
  br i1 %23, label %24, label %29

24:                                               ; preds = %22
  br label %25

25:                                               ; preds = %24
  %26 = load ptr, ptr %7, align 8
  %27 = getelementptr inbounds nuw %struct.dllist, ptr %26, i32 0, i32 2
  %28 = load ptr, ptr %27, align 8
  store ptr %28, ptr %7, align 8
  br label %10, !llvm.loop !9

29:                                               ; preds = %22
  %30 = load ptr, ptr %7, align 8
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %61

32:                                               ; preds = %29
  %33 = load ptr, ptr %4, align 8
  %34 = load ptr, ptr %33, align 8
  %35 = icmp ne ptr %34, null
  br i1 %35, label %36, label %61

36:                                               ; preds = %32
  %37 = load ptr, ptr %4, align 8
  %38 = load ptr, ptr %37, align 8
  %39 = getelementptr inbounds nuw %struct.dllist, ptr %38, i32 0, i32 1
  %40 = load ptr, ptr %39, align 8
  store ptr %40, ptr %7, align 8
  br label %41

41:                                               ; preds = %56, %36
  %42 = load ptr, ptr %7, align 8
  %43 = icmp ne ptr %42, null
  br i1 %43, label %44, label %53

44:                                               ; preds = %41
  %45 = load ptr, ptr %7, align 8
  %46 = getelementptr inbounds nuw %struct.dllist, ptr %45, i32 0, i32 0
  %47 = load i32, ptr %46, align 8
  %48 = load ptr, ptr %5, align 8
  %49 = getelementptr inbounds nuw %struct.dllist, ptr %48, i32 0, i32 0
  %50 = load i32, ptr %49, align 8
  %51 = sub nsw i32 %47, %50
  %52 = icmp ne i32 %51, 0
  br label %53

53:                                               ; preds = %44, %41
  %54 = phi i1 [ false, %41 ], [ %52, %44 ]
  br i1 %54, label %55, label %60

55:                                               ; preds = %53
  br label %56

56:                                               ; preds = %55
  %57 = load ptr, ptr %7, align 8
  %58 = getelementptr inbounds nuw %struct.dllist, ptr %57, i32 0, i32 1
  %59 = load ptr, ptr %58, align 8
  store ptr %59, ptr %7, align 8
  br label %41, !llvm.loop !10

60:                                               ; preds = %53
  br label %61

61:                                               ; preds = %60, %32, %29
  %62 = load ptr, ptr %7, align 8
  %63 = load ptr, ptr %6, align 8
  store ptr %62, ptr %63, align 8
  %64 = load ptr, ptr %7, align 8
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %106

66:                                               ; preds = %61
  %67 = load ptr, ptr %4, align 8
  %68 = load ptr, ptr %67, align 8
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %79

70:                                               ; preds = %66
  %71 = load ptr, ptr %5, align 8
  %72 = load ptr, ptr %4, align 8
  store ptr %71, ptr %72, align 8
  %73 = load ptr, ptr %4, align 8
  %74 = load ptr, ptr %73, align 8
  %75 = getelementptr inbounds nuw %struct.dllist, ptr %74, i32 0, i32 2
  store ptr null, ptr %75, align 8
  %76 = load ptr, ptr %4, align 8
  %77 = load ptr, ptr %76, align 8
  %78 = getelementptr inbounds nuw %struct.dllist, ptr %77, i32 0, i32 1
  store ptr null, ptr %78, align 8
  br label %105

79:                                               ; preds = %66
  %80 = load ptr, ptr %4, align 8
  %81 = load ptr, ptr %80, align 8
  %82 = getelementptr inbounds nuw %struct.dllist, ptr %81, i32 0, i32 1
  %83 = load ptr, ptr %82, align 8
  %84 = load ptr, ptr %5, align 8
  %85 = getelementptr inbounds nuw %struct.dllist, ptr %84, i32 0, i32 1
  store ptr %83, ptr %85, align 8
  %86 = load ptr, ptr %4, align 8
  %87 = load ptr, ptr %86, align 8
  %88 = load ptr, ptr %5, align 8
  %89 = getelementptr inbounds nuw %struct.dllist, ptr %88, i32 0, i32 2
  store ptr %87, ptr %89, align 8
  %90 = load ptr, ptr %5, align 8
  %91 = load ptr, ptr %4, align 8
  %92 = load ptr, ptr %91, align 8
  %93 = getelementptr inbounds nuw %struct.dllist, ptr %92, i32 0, i32 1
  store ptr %90, ptr %93, align 8
  %94 = load ptr, ptr %5, align 8
  %95 = getelementptr inbounds nuw %struct.dllist, ptr %94, i32 0, i32 1
  %96 = load ptr, ptr %95, align 8
  %97 = icmp ne ptr %96, null
  br i1 %97, label %98, label %104

98:                                               ; preds = %79
  %99 = load ptr, ptr %5, align 8
  %100 = load ptr, ptr %5, align 8
  %101 = getelementptr inbounds nuw %struct.dllist, ptr %100, i32 0, i32 1
  %102 = load ptr, ptr %101, align 8
  %103 = getelementptr inbounds nuw %struct.dllist, ptr %102, i32 0, i32 2
  store ptr %99, ptr %103, align 8
  br label %104

104:                                              ; preds = %98, %79
  br label %105

105:                                              ; preds = %104, %70
  br label %106

106:                                              ; preds = %105, %61
  %107 = load ptr, ptr %6, align 8
  %108 = load ptr, ptr %107, align 8
  %109 = icmp eq ptr %108, null
  %110 = zext i1 %109 to i32
  ret i32 %110
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sglib_dllist_add_before_if_not_member(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %8 = load ptr, ptr %4, align 8
  %9 = load ptr, ptr %8, align 8
  store ptr %9, ptr %7, align 8
  br label %10

10:                                               ; preds = %25, %3
  %11 = load ptr, ptr %7, align 8
  %12 = icmp ne ptr %11, null
  br i1 %12, label %13, label %22

13:                                               ; preds = %10
  %14 = load ptr, ptr %7, align 8
  %15 = getelementptr inbounds nuw %struct.dllist, ptr %14, i32 0, i32 0
  %16 = load i32, ptr %15, align 8
  %17 = load ptr, ptr %5, align 8
  %18 = getelementptr inbounds nuw %struct.dllist, ptr %17, i32 0, i32 0
  %19 = load i32, ptr %18, align 8
  %20 = sub nsw i32 %16, %19
  %21 = icmp ne i32 %20, 0
  br label %22

22:                                               ; preds = %13, %10
  %23 = phi i1 [ false, %10 ], [ %21, %13 ]
  br i1 %23, label %24, label %29

24:                                               ; preds = %22
  br label %25

25:                                               ; preds = %24
  %26 = load ptr, ptr %7, align 8
  %27 = getelementptr inbounds nuw %struct.dllist, ptr %26, i32 0, i32 2
  %28 = load ptr, ptr %27, align 8
  store ptr %28, ptr %7, align 8
  br label %10, !llvm.loop !11

29:                                               ; preds = %22
  %30 = load ptr, ptr %7, align 8
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %61

32:                                               ; preds = %29
  %33 = load ptr, ptr %4, align 8
  %34 = load ptr, ptr %33, align 8
  %35 = icmp ne ptr %34, null
  br i1 %35, label %36, label %61

36:                                               ; preds = %32
  %37 = load ptr, ptr %4, align 8
  %38 = load ptr, ptr %37, align 8
  %39 = getelementptr inbounds nuw %struct.dllist, ptr %38, i32 0, i32 1
  %40 = load ptr, ptr %39, align 8
  store ptr %40, ptr %7, align 8
  br label %41

41:                                               ; preds = %56, %36
  %42 = load ptr, ptr %7, align 8
  %43 = icmp ne ptr %42, null
  br i1 %43, label %44, label %53

44:                                               ; preds = %41
  %45 = load ptr, ptr %7, align 8
  %46 = getelementptr inbounds nuw %struct.dllist, ptr %45, i32 0, i32 0
  %47 = load i32, ptr %46, align 8
  %48 = load ptr, ptr %5, align 8
  %49 = getelementptr inbounds nuw %struct.dllist, ptr %48, i32 0, i32 0
  %50 = load i32, ptr %49, align 8
  %51 = sub nsw i32 %47, %50
  %52 = icmp ne i32 %51, 0
  br label %53

53:                                               ; preds = %44, %41
  %54 = phi i1 [ false, %41 ], [ %52, %44 ]
  br i1 %54, label %55, label %60

55:                                               ; preds = %53
  br label %56

56:                                               ; preds = %55
  %57 = load ptr, ptr %7, align 8
  %58 = getelementptr inbounds nuw %struct.dllist, ptr %57, i32 0, i32 1
  %59 = load ptr, ptr %58, align 8
  store ptr %59, ptr %7, align 8
  br label %41, !llvm.loop !12

60:                                               ; preds = %53
  br label %61

61:                                               ; preds = %60, %32, %29
  %62 = load ptr, ptr %7, align 8
  %63 = load ptr, ptr %6, align 8
  store ptr %62, ptr %63, align 8
  %64 = load ptr, ptr %7, align 8
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %106

66:                                               ; preds = %61
  %67 = load ptr, ptr %4, align 8
  %68 = load ptr, ptr %67, align 8
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %79

70:                                               ; preds = %66
  %71 = load ptr, ptr %5, align 8
  %72 = load ptr, ptr %4, align 8
  store ptr %71, ptr %72, align 8
  %73 = load ptr, ptr %4, align 8
  %74 = load ptr, ptr %73, align 8
  %75 = getelementptr inbounds nuw %struct.dllist, ptr %74, i32 0, i32 2
  store ptr null, ptr %75, align 8
  %76 = load ptr, ptr %4, align 8
  %77 = load ptr, ptr %76, align 8
  %78 = getelementptr inbounds nuw %struct.dllist, ptr %77, i32 0, i32 1
  store ptr null, ptr %78, align 8
  br label %105

79:                                               ; preds = %66
  %80 = load ptr, ptr %4, align 8
  %81 = load ptr, ptr %80, align 8
  %82 = load ptr, ptr %5, align 8
  %83 = getelementptr inbounds nuw %struct.dllist, ptr %82, i32 0, i32 1
  store ptr %81, ptr %83, align 8
  %84 = load ptr, ptr %4, align 8
  %85 = load ptr, ptr %84, align 8
  %86 = getelementptr inbounds nuw %struct.dllist, ptr %85, i32 0, i32 2
  %87 = load ptr, ptr %86, align 8
  %88 = load ptr, ptr %5, align 8
  %89 = getelementptr inbounds nuw %struct.dllist, ptr %88, i32 0, i32 2
  store ptr %87, ptr %89, align 8
  %90 = load ptr, ptr %5, align 8
  %91 = load ptr, ptr %4, align 8
  %92 = load ptr, ptr %91, align 8
  %93 = getelementptr inbounds nuw %struct.dllist, ptr %92, i32 0, i32 2
  store ptr %90, ptr %93, align 8
  %94 = load ptr, ptr %5, align 8
  %95 = getelementptr inbounds nuw %struct.dllist, ptr %94, i32 0, i32 2
  %96 = load ptr, ptr %95, align 8
  %97 = icmp ne ptr %96, null
  br i1 %97, label %98, label %104

98:                                               ; preds = %79
  %99 = load ptr, ptr %5, align 8
  %100 = load ptr, ptr %5, align 8
  %101 = getelementptr inbounds nuw %struct.dllist, ptr %100, i32 0, i32 2
  %102 = load ptr, ptr %101, align 8
  %103 = getelementptr inbounds nuw %struct.dllist, ptr %102, i32 0, i32 1
  store ptr %99, ptr %103, align 8
  br label %104

104:                                              ; preds = %98, %79
  br label %105

105:                                              ; preds = %104, %70
  br label %106

106:                                              ; preds = %105, %61
  %107 = load ptr, ptr %6, align 8
  %108 = load ptr, ptr %107, align 8
  %109 = icmp eq ptr %108, null
  %110 = zext i1 %109 to i32
  ret i32 %110
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @sglib_dllist_concat(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load ptr, ptr %4, align 8
  %11 = load ptr, ptr %3, align 8
  store ptr %10, ptr %11, align 8
  br label %62

12:                                               ; preds = %2
  %13 = load ptr, ptr %4, align 8
  %14 = icmp ne ptr %13, null
  br i1 %14, label %15, label %61

15:                                               ; preds = %12
  %16 = load ptr, ptr %3, align 8
  %17 = load ptr, ptr %16, align 8
  store ptr %17, ptr %5, align 8
  br label %18

18:                                               ; preds = %24, %15
  %19 = load ptr, ptr %5, align 8
  %20 = getelementptr inbounds nuw %struct.dllist, ptr %19, i32 0, i32 1
  %21 = load ptr, ptr %20, align 8
  %22 = icmp ne ptr %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  br label %24

24:                                               ; preds = %23
  %25 = load ptr, ptr %5, align 8
  %26 = getelementptr inbounds nuw %struct.dllist, ptr %25, i32 0, i32 1
  %27 = load ptr, ptr %26, align 8
  store ptr %27, ptr %5, align 8
  br label %18, !llvm.loop !13

28:                                               ; preds = %18
  %29 = load ptr, ptr %5, align 8
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %28
  %32 = load ptr, ptr %4, align 8
  store ptr %32, ptr %5, align 8
  %33 = load ptr, ptr %5, align 8
  %34 = getelementptr inbounds nuw %struct.dllist, ptr %33, i32 0, i32 2
  store ptr null, ptr %34, align 8
  %35 = load ptr, ptr %5, align 8
  %36 = getelementptr inbounds nuw %struct.dllist, ptr %35, i32 0, i32 1
  store ptr null, ptr %36, align 8
  br label %60

37:                                               ; preds = %28
  %38 = load ptr, ptr %5, align 8
  %39 = getelementptr inbounds nuw %struct.dllist, ptr %38, i32 0, i32 1
  %40 = load ptr, ptr %39, align 8
  %41 = load ptr, ptr %4, align 8
  %42 = getelementptr inbounds nuw %struct.dllist, ptr %41, i32 0, i32 1
  store ptr %40, ptr %42, align 8
  %43 = load ptr, ptr %5, align 8
  %44 = load ptr, ptr %4, align 8
  %45 = getelementptr inbounds nuw %struct.dllist, ptr %44, i32 0, i32 2
  store ptr %43, ptr %45, align 8
  %46 = load ptr, ptr %4, align 8
  %47 = load ptr, ptr %5, align 8
  %48 = getelementptr inbounds nuw %struct.dllist, ptr %47, i32 0, i32 1
  store ptr %46, ptr %48, align 8
  %49 = load ptr, ptr %4, align 8
  %50 = getelementptr inbounds nuw %struct.dllist, ptr %49, i32 0, i32 1
  %51 = load ptr, ptr %50, align 8
  %52 = icmp ne ptr %51, null
  br i1 %52, label %53, label %59

53:                                               ; preds = %37
  %54 = load ptr, ptr %4, align 8
  %55 = load ptr, ptr %4, align 8
  %56 = getelementptr inbounds nuw %struct.dllist, ptr %55, i32 0, i32 1
  %57 = load ptr, ptr %56, align 8
  %58 = getelementptr inbounds nuw %struct.dllist, ptr %57, i32 0, i32 2
  store ptr %54, ptr %58, align 8
  br label %59

59:                                               ; preds = %53, %37
  br label %60

60:                                               ; preds = %59, %31
  br label %61

61:                                               ; preds = %60, %12
  br label %62

62:                                               ; preds = %61, %9
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @sglib_dllist_delete(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = load ptr, ptr %6, align 8
  store ptr %7, ptr %5, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load ptr, ptr %4, align 8
  %10 = icmp eq ptr %8, %9
  br i1 %10, label %11, label %25

11:                                               ; preds = %2
  %12 = load ptr, ptr %4, align 8
  %13 = getelementptr inbounds nuw %struct.dllist, ptr %12, i32 0, i32 2
  %14 = load ptr, ptr %13, align 8
  %15 = icmp ne ptr %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = load ptr, ptr %4, align 8
  %18 = getelementptr inbounds nuw %struct.dllist, ptr %17, i32 0, i32 2
  %19 = load ptr, ptr %18, align 8
  store ptr %19, ptr %5, align 8
  br label %24

20:                                               ; preds = %11
  %21 = load ptr, ptr %4, align 8
  %22 = getelementptr inbounds nuw %struct.dllist, ptr %21, i32 0, i32 1
  %23 = load ptr, ptr %22, align 8
  store ptr %23, ptr %5, align 8
  br label %24

24:                                               ; preds = %20, %16
  br label %25

25:                                               ; preds = %24, %2
  %26 = load ptr, ptr %4, align 8
  %27 = getelementptr inbounds nuw %struct.dllist, ptr %26, i32 0, i32 1
  %28 = load ptr, ptr %27, align 8
  %29 = icmp ne ptr %28, null
  br i1 %29, label %30, label %38

30:                                               ; preds = %25
  %31 = load ptr, ptr %4, align 8
  %32 = getelementptr inbounds nuw %struct.dllist, ptr %31, i32 0, i32 2
  %33 = load ptr, ptr %32, align 8
  %34 = load ptr, ptr %4, align 8
  %35 = getelementptr inbounds nuw %struct.dllist, ptr %34, i32 0, i32 1
  %36 = load ptr, ptr %35, align 8
  %37 = getelementptr inbounds nuw %struct.dllist, ptr %36, i32 0, i32 2
  store ptr %33, ptr %37, align 8
  br label %38

38:                                               ; preds = %30, %25
  %39 = load ptr, ptr %4, align 8
  %40 = getelementptr inbounds nuw %struct.dllist, ptr %39, i32 0, i32 2
  %41 = load ptr, ptr %40, align 8
  %42 = icmp ne ptr %41, null
  br i1 %42, label %43, label %51

43:                                               ; preds = %38
  %44 = load ptr, ptr %4, align 8
  %45 = getelementptr inbounds nuw %struct.dllist, ptr %44, i32 0, i32 1
  %46 = load ptr, ptr %45, align 8
  %47 = load ptr, ptr %4, align 8
  %48 = getelementptr inbounds nuw %struct.dllist, ptr %47, i32 0, i32 2
  %49 = load ptr, ptr %48, align 8
  %50 = getelementptr inbounds nuw %struct.dllist, ptr %49, i32 0, i32 1
  store ptr %46, ptr %50, align 8
  br label %51

51:                                               ; preds = %43, %38
  %52 = load ptr, ptr %5, align 8
  %53 = load ptr, ptr %3, align 8
  store ptr %52, ptr %53, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sglib_dllist_delete_if_member(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %9 = load ptr, ptr %4, align 8
  %10 = load ptr, ptr %9, align 8
  store ptr %10, ptr %7, align 8
  br label %11

11:                                               ; preds = %26, %3
  %12 = load ptr, ptr %7, align 8
  %13 = icmp ne ptr %12, null
  br i1 %13, label %14, label %23

14:                                               ; preds = %11
  %15 = load ptr, ptr %7, align 8
  %16 = getelementptr inbounds nuw %struct.dllist, ptr %15, i32 0, i32 0
  %17 = load i32, ptr %16, align 8
  %18 = load ptr, ptr %5, align 8
  %19 = getelementptr inbounds nuw %struct.dllist, ptr %18, i32 0, i32 0
  %20 = load i32, ptr %19, align 8
  %21 = sub nsw i32 %17, %20
  %22 = icmp ne i32 %21, 0
  br label %23

23:                                               ; preds = %14, %11
  %24 = phi i1 [ false, %11 ], [ %22, %14 ]
  br i1 %24, label %25, label %30

25:                                               ; preds = %23
  br label %26

26:                                               ; preds = %25
  %27 = load ptr, ptr %7, align 8
  %28 = getelementptr inbounds nuw %struct.dllist, ptr %27, i32 0, i32 2
  %29 = load ptr, ptr %28, align 8
  store ptr %29, ptr %7, align 8
  br label %11, !llvm.loop !14

30:                                               ; preds = %23
  %31 = load ptr, ptr %7, align 8
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %62

33:                                               ; preds = %30
  %34 = load ptr, ptr %4, align 8
  %35 = load ptr, ptr %34, align 8
  %36 = icmp ne ptr %35, null
  br i1 %36, label %37, label %62

37:                                               ; preds = %33
  %38 = load ptr, ptr %4, align 8
  %39 = load ptr, ptr %38, align 8
  %40 = getelementptr inbounds nuw %struct.dllist, ptr %39, i32 0, i32 1
  %41 = load ptr, ptr %40, align 8
  store ptr %41, ptr %7, align 8
  br label %42

42:                                               ; preds = %57, %37
  %43 = load ptr, ptr %7, align 8
  %44 = icmp ne ptr %43, null
  br i1 %44, label %45, label %54

45:                                               ; preds = %42
  %46 = load ptr, ptr %7, align 8
  %47 = getelementptr inbounds nuw %struct.dllist, ptr %46, i32 0, i32 0
  %48 = load i32, ptr %47, align 8
  %49 = load ptr, ptr %5, align 8
  %50 = getelementptr inbounds nuw %struct.dllist, ptr %49, i32 0, i32 0
  %51 = load i32, ptr %50, align 8
  %52 = sub nsw i32 %48, %51
  %53 = icmp ne i32 %52, 0
  br label %54

54:                                               ; preds = %45, %42
  %55 = phi i1 [ false, %42 ], [ %53, %45 ]
  br i1 %55, label %56, label %61

56:                                               ; preds = %54
  br label %57

57:                                               ; preds = %56
  %58 = load ptr, ptr %7, align 8
  %59 = getelementptr inbounds nuw %struct.dllist, ptr %58, i32 0, i32 1
  %60 = load ptr, ptr %59, align 8
  store ptr %60, ptr %7, align 8
  br label %42, !llvm.loop !15

61:                                               ; preds = %54
  br label %62

62:                                               ; preds = %61, %33, %30
  %63 = load ptr, ptr %7, align 8
  %64 = load ptr, ptr %6, align 8
  store ptr %63, ptr %64, align 8
  %65 = load ptr, ptr %7, align 8
  %66 = icmp ne ptr %65, null
  br i1 %66, label %67, label %116

67:                                               ; preds = %62
  %68 = load ptr, ptr %4, align 8
  %69 = load ptr, ptr %68, align 8
  store ptr %69, ptr %8, align 8
  %70 = load ptr, ptr %8, align 8
  %71 = load ptr, ptr %7, align 8
  %72 = icmp eq ptr %70, %71
  br i1 %72, label %73, label %87

73:                                               ; preds = %67
  %74 = load ptr, ptr %7, align 8
  %75 = getelementptr inbounds nuw %struct.dllist, ptr %74, i32 0, i32 2
  %76 = load ptr, ptr %75, align 8
  %77 = icmp ne ptr %76, null
  br i1 %77, label %78, label %82

78:                                               ; preds = %73
  %79 = load ptr, ptr %7, align 8
  %80 = getelementptr inbounds nuw %struct.dllist, ptr %79, i32 0, i32 2
  %81 = load ptr, ptr %80, align 8
  store ptr %81, ptr %8, align 8
  br label %86

82:                                               ; preds = %73
  %83 = load ptr, ptr %7, align 8
  %84 = getelementptr inbounds nuw %struct.dllist, ptr %83, i32 0, i32 1
  %85 = load ptr, ptr %84, align 8
  store ptr %85, ptr %8, align 8
  br label %86

86:                                               ; preds = %82, %78
  br label %87

87:                                               ; preds = %86, %67
  %88 = load ptr, ptr %7, align 8
  %89 = getelementptr inbounds nuw %struct.dllist, ptr %88, i32 0, i32 1
  %90 = load ptr, ptr %89, align 8
  %91 = icmp ne ptr %90, null
  br i1 %91, label %92, label %100

92:                                               ; preds = %87
  %93 = load ptr, ptr %7, align 8
  %94 = getelementptr inbounds nuw %struct.dllist, ptr %93, i32 0, i32 2
  %95 = load ptr, ptr %94, align 8
  %96 = load ptr, ptr %7, align 8
  %97 = getelementptr inbounds nuw %struct.dllist, ptr %96, i32 0, i32 1
  %98 = load ptr, ptr %97, align 8
  %99 = getelementptr inbounds nuw %struct.dllist, ptr %98, i32 0, i32 2
  store ptr %95, ptr %99, align 8
  br label %100

100:                                              ; preds = %92, %87
  %101 = load ptr, ptr %7, align 8
  %102 = getelementptr inbounds nuw %struct.dllist, ptr %101, i32 0, i32 2
  %103 = load ptr, ptr %102, align 8
  %104 = icmp ne ptr %103, null
  br i1 %104, label %105, label %113

105:                                              ; preds = %100
  %106 = load ptr, ptr %7, align 8
  %107 = getelementptr inbounds nuw %struct.dllist, ptr %106, i32 0, i32 1
  %108 = load ptr, ptr %107, align 8
  %109 = load ptr, ptr %7, align 8
  %110 = getelementptr inbounds nuw %struct.dllist, ptr %109, i32 0, i32 2
  %111 = load ptr, ptr %110, align 8
  %112 = getelementptr inbounds nuw %struct.dllist, ptr %111, i32 0, i32 1
  store ptr %108, ptr %112, align 8
  br label %113

113:                                              ; preds = %105, %100
  %114 = load ptr, ptr %8, align 8
  %115 = load ptr, ptr %4, align 8
  store ptr %114, ptr %115, align 8
  br label %116

116:                                              ; preds = %113, %62
  %117 = load ptr, ptr %6, align 8
  %118 = load ptr, ptr %117, align 8
  %119 = icmp ne ptr %118, null
  %120 = zext i1 %119 to i32
  ret i32 %120
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sglib_dllist_is_member(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %9 = load ptr, ptr %3, align 8
  store ptr %9, ptr %7, align 8
  br label %10

10:                                               ; preds = %20, %2
  %11 = load ptr, ptr %7, align 8
  %12 = icmp ne ptr %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %10
  %14 = load ptr, ptr %7, align 8
  %15 = load ptr, ptr %4, align 8
  %16 = icmp ne ptr %14, %15
  br label %17

17:                                               ; preds = %13, %10
  %18 = phi i1 [ false, %10 ], [ %16, %13 ]
  br i1 %18, label %19, label %24

19:                                               ; preds = %17
  br label %20

20:                                               ; preds = %19
  %21 = load ptr, ptr %7, align 8
  %22 = getelementptr inbounds nuw %struct.dllist, ptr %21, i32 0, i32 2
  %23 = load ptr, ptr %22, align 8
  store ptr %23, ptr %7, align 8
  br label %10, !llvm.loop !16

24:                                               ; preds = %17
  %25 = load ptr, ptr %7, align 8
  %26 = icmp ne ptr %25, null
  %27 = zext i1 %26 to i32
  store i32 %27, ptr %5, align 4
  %28 = load i32, ptr %5, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %56

30:                                               ; preds = %24
  %31 = load ptr, ptr %3, align 8
  %32 = icmp ne ptr %31, null
  br i1 %32, label %33, label %56

33:                                               ; preds = %30
  %34 = load ptr, ptr %3, align 8
  %35 = getelementptr inbounds nuw %struct.dllist, ptr %34, i32 0, i32 1
  %36 = load ptr, ptr %35, align 8
  store ptr %36, ptr %6, align 8
  %37 = load ptr, ptr %6, align 8
  store ptr %37, ptr %8, align 8
  br label %38

38:                                               ; preds = %48, %33
  %39 = load ptr, ptr %8, align 8
  %40 = icmp ne ptr %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load ptr, ptr %8, align 8
  %43 = load ptr, ptr %4, align 8
  %44 = icmp ne ptr %42, %43
  br label %45

45:                                               ; preds = %41, %38
  %46 = phi i1 [ false, %38 ], [ %44, %41 ]
  br i1 %46, label %47, label %52

47:                                               ; preds = %45
  br label %48

48:                                               ; preds = %47
  %49 = load ptr, ptr %8, align 8
  %50 = getelementptr inbounds nuw %struct.dllist, ptr %49, i32 0, i32 1
  %51 = load ptr, ptr %50, align 8
  store ptr %51, ptr %8, align 8
  br label %38, !llvm.loop !17

52:                                               ; preds = %45
  %53 = load ptr, ptr %8, align 8
  %54 = icmp ne ptr %53, null
  %55 = zext i1 %54 to i32
  store i32 %55, ptr %5, align 4
  br label %56

56:                                               ; preds = %52, %30, %24
  %57 = load i32, ptr %5, align 4
  ret i32 %57
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @sglib_dllist_find_member(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %9 = load ptr, ptr %3, align 8
  store ptr %9, ptr %7, align 8
  br label %10

10:                                               ; preds = %25, %2
  %11 = load ptr, ptr %7, align 8
  %12 = icmp ne ptr %11, null
  br i1 %12, label %13, label %22

13:                                               ; preds = %10
  %14 = load ptr, ptr %7, align 8
  %15 = getelementptr inbounds nuw %struct.dllist, ptr %14, i32 0, i32 0
  %16 = load i32, ptr %15, align 8
  %17 = load ptr, ptr %4, align 8
  %18 = getelementptr inbounds nuw %struct.dllist, ptr %17, i32 0, i32 0
  %19 = load i32, ptr %18, align 8
  %20 = sub nsw i32 %16, %19
  %21 = icmp ne i32 %20, 0
  br label %22

22:                                               ; preds = %13, %10
  %23 = phi i1 [ false, %10 ], [ %21, %13 ]
  br i1 %23, label %24, label %29

24:                                               ; preds = %22
  br label %25

25:                                               ; preds = %24
  %26 = load ptr, ptr %7, align 8
  %27 = getelementptr inbounds nuw %struct.dllist, ptr %26, i32 0, i32 2
  %28 = load ptr, ptr %27, align 8
  store ptr %28, ptr %7, align 8
  br label %10, !llvm.loop !18

29:                                               ; preds = %22
  %30 = load ptr, ptr %7, align 8
  store ptr %30, ptr %5, align 8
  %31 = load ptr, ptr %5, align 8
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %62

33:                                               ; preds = %29
  %34 = load ptr, ptr %3, align 8
  %35 = icmp ne ptr %34, null
  br i1 %35, label %36, label %62

36:                                               ; preds = %33
  %37 = load ptr, ptr %3, align 8
  %38 = getelementptr inbounds nuw %struct.dllist, ptr %37, i32 0, i32 1
  %39 = load ptr, ptr %38, align 8
  store ptr %39, ptr %6, align 8
  %40 = load ptr, ptr %6, align 8
  store ptr %40, ptr %8, align 8
  br label %41

41:                                               ; preds = %56, %36
  %42 = load ptr, ptr %8, align 8
  %43 = icmp ne ptr %42, null
  br i1 %43, label %44, label %53

44:                                               ; preds = %41
  %45 = load ptr, ptr %8, align 8
  %46 = getelementptr inbounds nuw %struct.dllist, ptr %45, i32 0, i32 0
  %47 = load i32, ptr %46, align 8
  %48 = load ptr, ptr %4, align 8
  %49 = getelementptr inbounds nuw %struct.dllist, ptr %48, i32 0, i32 0
  %50 = load i32, ptr %49, align 8
  %51 = sub nsw i32 %47, %50
  %52 = icmp ne i32 %51, 0
  br label %53

53:                                               ; preds = %44, %41
  %54 = phi i1 [ false, %41 ], [ %52, %44 ]
  br i1 %54, label %55, label %60

55:                                               ; preds = %53
  br label %56

56:                                               ; preds = %55
  %57 = load ptr, ptr %8, align 8
  %58 = getelementptr inbounds nuw %struct.dllist, ptr %57, i32 0, i32 1
  %59 = load ptr, ptr %58, align 8
  store ptr %59, ptr %8, align 8
  br label %41, !llvm.loop !19

60:                                               ; preds = %53
  %61 = load ptr, ptr %8, align 8
  store ptr %61, ptr %5, align 8
  br label %62

62:                                               ; preds = %60, %33, %29
  %63 = load ptr, ptr %5, align 8
  ret ptr %63
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @sglib_dllist_get_first(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %5 = load ptr, ptr %2, align 8
  store ptr %5, ptr %4, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = icmp ne ptr %6, null
  br i1 %7, label %8, label %20

8:                                                ; preds = %1
  br label %9

9:                                                ; preds = %15, %8
  %10 = load ptr, ptr %4, align 8
  %11 = getelementptr inbounds nuw %struct.dllist, ptr %10, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8
  %13 = icmp ne ptr %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %9
  br label %15

15:                                               ; preds = %14
  %16 = load ptr, ptr %4, align 8
  %17 = getelementptr inbounds nuw %struct.dllist, ptr %16, i32 0, i32 2
  %18 = load ptr, ptr %17, align 8
  store ptr %18, ptr %4, align 8
  br label %9, !llvm.loop !20

19:                                               ; preds = %9
  br label %20

20:                                               ; preds = %19, %1
  %21 = load ptr, ptr %4, align 8
  store ptr %21, ptr %3, align 8
  %22 = load ptr, ptr %3, align 8
  ret ptr %22
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @sglib_dllist_get_last(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %5 = load ptr, ptr %2, align 8
  store ptr %5, ptr %4, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = icmp ne ptr %6, null
  br i1 %7, label %8, label %20

8:                                                ; preds = %1
  br label %9

9:                                                ; preds = %15, %8
  %10 = load ptr, ptr %4, align 8
  %11 = getelementptr inbounds nuw %struct.dllist, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8
  %13 = icmp ne ptr %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %9
  br label %15

15:                                               ; preds = %14
  %16 = load ptr, ptr %4, align 8
  %17 = getelementptr inbounds nuw %struct.dllist, ptr %16, i32 0, i32 1
  %18 = load ptr, ptr %17, align 8
  store ptr %18, ptr %4, align 8
  br label %9, !llvm.loop !21

19:                                               ; preds = %9
  br label %20

20:                                               ; preds = %19, %1
  %21 = load ptr, ptr %4, align 8
  store ptr %21, ptr %3, align 8
  %22 = load ptr, ptr %3, align 8
  ret ptr %22
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @sglib_dllist_sort(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %17 = load ptr, ptr %2, align 8
  %18 = load ptr, ptr %17, align 8
  store ptr %18, ptr %3, align 8
  %19 = load ptr, ptr %3, align 8
  %20 = icmp ne ptr %19, null
  br i1 %20, label %21, label %177

21:                                               ; preds = %1
  br label %22

22:                                               ; preds = %28, %21
  %23 = load ptr, ptr %3, align 8
  %24 = getelementptr inbounds nuw %struct.dllist, ptr %23, i32 0, i32 2
  %25 = load ptr, ptr %24, align 8
  %26 = icmp ne ptr %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  br label %28

28:                                               ; preds = %27
  %29 = load ptr, ptr %3, align 8
  %30 = getelementptr inbounds nuw %struct.dllist, ptr %29, i32 0, i32 2
  %31 = load ptr, ptr %30, align 8
  store ptr %31, ptr %3, align 8
  br label %22, !llvm.loop !22

32:                                               ; preds = %22
  %33 = load ptr, ptr %3, align 8
  store ptr %33, ptr %6, align 8
  store i32 1, ptr %14, align 4
  store i32 1, ptr %13, align 4
  br label %34

34:                                               ; preds = %155, %32
  %35 = load i32, ptr %14, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %159

37:                                               ; preds = %34
  %38 = load ptr, ptr %6, align 8
  store ptr %38, ptr %9, align 8
  store ptr null, ptr %6, align 8
  store ptr %6, ptr %11, align 8
  store i32 0, ptr %14, align 4
  br label %39

39:                                               ; preds = %153, %37
  %40 = load ptr, ptr %9, align 8
  %41 = icmp ne ptr %40, null
  br i1 %41, label %42, label %154

42:                                               ; preds = %39
  %43 = load ptr, ptr %9, align 8
  store ptr %43, ptr %7, align 8
  store i32 1, ptr %12, align 4
  %44 = load ptr, ptr %7, align 8
  store ptr %44, ptr %10, align 8
  br label %45

45:                                               ; preds = %55, %42
  %46 = load i32, ptr %12, align 4
  %47 = load i32, ptr %13, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load ptr, ptr %10, align 8
  %51 = icmp ne ptr %50, null
  br label %52

52:                                               ; preds = %49, %45
  %53 = phi i1 [ false, %45 ], [ %51, %49 ]
  br i1 %53, label %54, label %61

54:                                               ; preds = %52
  br label %55

55:                                               ; preds = %54
  %56 = load i32, ptr %12, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, ptr %12, align 4
  %58 = load ptr, ptr %10, align 8
  %59 = getelementptr inbounds nuw %struct.dllist, ptr %58, i32 0, i32 1
  %60 = load ptr, ptr %59, align 8
  store ptr %60, ptr %10, align 8
  br label %45, !llvm.loop !23

61:                                               ; preds = %52
  %62 = load ptr, ptr %10, align 8
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load ptr, ptr %7, align 8
  %66 = load ptr, ptr %11, align 8
  store ptr %65, ptr %66, align 8
  br label %154

67:                                               ; preds = %61
  %68 = load ptr, ptr %10, align 8
  %69 = getelementptr inbounds nuw %struct.dllist, ptr %68, i32 0, i32 1
  %70 = load ptr, ptr %69, align 8
  store ptr %70, ptr %8, align 8
  %71 = load ptr, ptr %10, align 8
  %72 = getelementptr inbounds nuw %struct.dllist, ptr %71, i32 0, i32 1
  store ptr null, ptr %72, align 8
  store i32 1, ptr %12, align 4
  %73 = load ptr, ptr %8, align 8
  store ptr %73, ptr %10, align 8
  br label %74

74:                                               ; preds = %84, %67
  %75 = load i32, ptr %12, align 4
  %76 = load i32, ptr %13, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %74
  %79 = load ptr, ptr %10, align 8
  %80 = icmp ne ptr %79, null
  br label %81

81:                                               ; preds = %78, %74
  %82 = phi i1 [ false, %74 ], [ %80, %78 ]
  br i1 %82, label %83, label %90

83:                                               ; preds = %81
  br label %84

84:                                               ; preds = %83
  %85 = load i32, ptr %12, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, ptr %12, align 4
  %87 = load ptr, ptr %10, align 8
  %88 = getelementptr inbounds nuw %struct.dllist, ptr %87, i32 0, i32 1
  %89 = load ptr, ptr %88, align 8
  store ptr %89, ptr %10, align 8
  br label %74, !llvm.loop !24

90:                                               ; preds = %81
  %91 = load ptr, ptr %10, align 8
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %94

93:                                               ; preds = %90
  store ptr null, ptr %9, align 8
  br label %100

94:                                               ; preds = %90
  %95 = load ptr, ptr %10, align 8
  %96 = getelementptr inbounds nuw %struct.dllist, ptr %95, i32 0, i32 1
  %97 = load ptr, ptr %96, align 8
  store ptr %97, ptr %9, align 8
  %98 = load ptr, ptr %10, align 8
  %99 = getelementptr inbounds nuw %struct.dllist, ptr %98, i32 0, i32 1
  store ptr null, ptr %99, align 8
  br label %100

100:                                              ; preds = %94, %93
  br label %101

101:                                              ; preds = %134, %100
  %102 = load ptr, ptr %7, align 8
  %103 = icmp ne ptr %102, null
  br i1 %103, label %104, label %107

104:                                              ; preds = %101
  %105 = load ptr, ptr %8, align 8
  %106 = icmp ne ptr %105, null
  br label %107

107:                                              ; preds = %104, %101
  %108 = phi i1 [ false, %101 ], [ %106, %104 ]
  br i1 %108, label %109, label %135

109:                                              ; preds = %107
  %110 = load ptr, ptr %7, align 8
  %111 = getelementptr inbounds nuw %struct.dllist, ptr %110, i32 0, i32 0
  %112 = load i32, ptr %111, align 8
  %113 = load ptr, ptr %8, align 8
  %114 = getelementptr inbounds nuw %struct.dllist, ptr %113, i32 0, i32 0
  %115 = load i32, ptr %114, align 8
  %116 = sub nsw i32 %112, %115
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %126

118:                                              ; preds = %109
  %119 = load ptr, ptr %7, align 8
  %120 = load ptr, ptr %11, align 8
  store ptr %119, ptr %120, align 8
  %121 = load ptr, ptr %7, align 8
  %122 = getelementptr inbounds nuw %struct.dllist, ptr %121, i32 0, i32 1
  store ptr %122, ptr %11, align 8
  %123 = load ptr, ptr %7, align 8
  %124 = getelementptr inbounds nuw %struct.dllist, ptr %123, i32 0, i32 1
  %125 = load ptr, ptr %124, align 8
  store ptr %125, ptr %7, align 8
  br label %134

126:                                              ; preds = %109
  %127 = load ptr, ptr %8, align 8
  %128 = load ptr, ptr %11, align 8
  store ptr %127, ptr %128, align 8
  %129 = load ptr, ptr %8, align 8
  %130 = getelementptr inbounds nuw %struct.dllist, ptr %129, i32 0, i32 1
  store ptr %130, ptr %11, align 8
  %131 = load ptr, ptr %8, align 8
  %132 = getelementptr inbounds nuw %struct.dllist, ptr %131, i32 0, i32 1
  %133 = load ptr, ptr %132, align 8
  store ptr %133, ptr %8, align 8
  br label %134

134:                                              ; preds = %126, %118
  br label %101, !llvm.loop !25

135:                                              ; preds = %107
  %136 = load ptr, ptr %7, align 8
  %137 = icmp ne ptr %136, null
  br i1 %137, label %138, label %141

138:                                              ; preds = %135
  %139 = load ptr, ptr %7, align 8
  %140 = load ptr, ptr %11, align 8
  store ptr %139, ptr %140, align 8
  br label %144

141:                                              ; preds = %135
  %142 = load ptr, ptr %8, align 8
  %143 = load ptr, ptr %11, align 8
  store ptr %142, ptr %143, align 8
  br label %144

144:                                              ; preds = %141, %138
  br label %145

145:                                              ; preds = %149, %144
  %146 = load ptr, ptr %11, align 8
  %147 = load ptr, ptr %146, align 8
  %148 = icmp ne ptr %147, null
  br i1 %148, label %149, label %153

149:                                              ; preds = %145
  %150 = load ptr, ptr %11, align 8
  %151 = load ptr, ptr %150, align 8
  %152 = getelementptr inbounds nuw %struct.dllist, ptr %151, i32 0, i32 1
  store ptr %152, ptr %11, align 8
  br label %145, !llvm.loop !26

153:                                              ; preds = %145
  store i32 1, ptr %14, align 4
  br label %39, !llvm.loop !27

154:                                              ; preds = %64, %39
  br label %155

155:                                              ; preds = %154
  %156 = load i32, ptr %13, align 4
  %157 = load i32, ptr %13, align 4
  %158 = add nsw i32 %156, %157
  store i32 %158, ptr %13, align 4
  br label %34, !llvm.loop !28

159:                                              ; preds = %34
  %160 = load ptr, ptr %6, align 8
  store ptr %160, ptr %3, align 8
  store ptr null, ptr %15, align 8
  %161 = load ptr, ptr %3, align 8
  store ptr %161, ptr %16, align 8
  br label %162

162:                                              ; preds = %170, %159
  %163 = load ptr, ptr %16, align 8
  %164 = icmp ne ptr %163, null
  br i1 %164, label %165, label %174

165:                                              ; preds = %162
  %166 = load ptr, ptr %15, align 8
  %167 = load ptr, ptr %16, align 8
  %168 = getelementptr inbounds nuw %struct.dllist, ptr %167, i32 0, i32 2
  store ptr %166, ptr %168, align 8
  %169 = load ptr, ptr %16, align 8
  store ptr %169, ptr %15, align 8
  br label %170

170:                                              ; preds = %165
  %171 = load ptr, ptr %16, align 8
  %172 = getelementptr inbounds nuw %struct.dllist, ptr %171, i32 0, i32 1
  %173 = load ptr, ptr %172, align 8
  store ptr %173, ptr %16, align 8
  br label %162, !llvm.loop !29

174:                                              ; preds = %162
  %175 = load ptr, ptr %3, align 8
  %176 = load ptr, ptr %2, align 8
  store ptr %175, ptr %176, align 8
  br label %177

177:                                              ; preds = %174, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sglib_dllist_len(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %13 = load ptr, ptr %2, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, ptr %3, align 4
  br label %47

16:                                               ; preds = %1
  store i32 0, ptr %5, align 4
  %17 = load ptr, ptr %2, align 8
  store ptr %17, ptr %9, align 8
  br label %18

18:                                               ; preds = %21, %16
  %19 = load ptr, ptr %9, align 8
  %20 = icmp ne ptr %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %18
  %22 = load ptr, ptr %9, align 8
  %23 = getelementptr inbounds nuw %struct.dllist, ptr %22, i32 0, i32 2
  %24 = load ptr, ptr %23, align 8
  store ptr %24, ptr %8, align 8
  %25 = load i32, ptr %5, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, ptr %5, align 4
  %27 = load ptr, ptr %8, align 8
  store ptr %27, ptr %9, align 8
  br label %18, !llvm.loop !30

28:                                               ; preds = %18
  %29 = load ptr, ptr %2, align 8
  %30 = getelementptr inbounds nuw %struct.dllist, ptr %29, i32 0, i32 1
  %31 = load ptr, ptr %30, align 8
  store ptr %31, ptr %4, align 8
  store i32 0, ptr %6, align 4
  %32 = load ptr, ptr %4, align 8
  store ptr %32, ptr %12, align 8
  br label %33

33:                                               ; preds = %36, %28
  %34 = load ptr, ptr %12, align 8
  %35 = icmp ne ptr %34, null
  br i1 %35, label %36, label %43

36:                                               ; preds = %33
  %37 = load ptr, ptr %12, align 8
  %38 = getelementptr inbounds nuw %struct.dllist, ptr %37, i32 0, i32 1
  %39 = load ptr, ptr %38, align 8
  store ptr %39, ptr %11, align 8
  %40 = load i32, ptr %6, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, ptr %6, align 4
  %42 = load ptr, ptr %11, align 8
  store ptr %42, ptr %12, align 8
  br label %33, !llvm.loop !31

43:                                               ; preds = %33
  %44 = load i32, ptr %5, align 4
  %45 = load i32, ptr %6, align 4
  %46 = add nsw i32 %44, %45
  store i32 %46, ptr %3, align 4
  br label %47

47:                                               ; preds = %43, %15
  %48 = load i32, ptr %3, align 4
  ret i32 %48
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @sglib_dllist_reverse(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %7 = load ptr, ptr %2, align 8
  %8 = load ptr, ptr %7, align 8
  store ptr %8, ptr %3, align 8
  %9 = load ptr, ptr %3, align 8
  %10 = icmp ne ptr %9, null
  br i1 %10, label %11, label %51

11:                                               ; preds = %1
  %12 = load ptr, ptr %3, align 8
  %13 = getelementptr inbounds nuw %struct.dllist, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 8
  store ptr %14, ptr %4, align 8
  br label %15

15:                                               ; preds = %18, %11
  %16 = load ptr, ptr %3, align 8
  %17 = icmp ne ptr %16, null
  br i1 %17, label %18, label %32

18:                                               ; preds = %15
  %19 = load ptr, ptr %3, align 8
  %20 = getelementptr inbounds nuw %struct.dllist, ptr %19, i32 0, i32 1
  %21 = load ptr, ptr %20, align 8
  store ptr %21, ptr %6, align 8
  %22 = load ptr, ptr %3, align 8
  %23 = getelementptr inbounds nuw %struct.dllist, ptr %22, i32 0, i32 2
  %24 = load ptr, ptr %23, align 8
  store ptr %24, ptr %5, align 8
  %25 = load ptr, ptr %5, align 8
  %26 = load ptr, ptr %3, align 8
  %27 = getelementptr inbounds nuw %struct.dllist, ptr %26, i32 0, i32 1
  store ptr %25, ptr %27, align 8
  %28 = load ptr, ptr %6, align 8
  %29 = load ptr, ptr %3, align 8
  %30 = getelementptr inbounds nuw %struct.dllist, ptr %29, i32 0, i32 2
  store ptr %28, ptr %30, align 8
  %31 = load ptr, ptr %5, align 8
  store ptr %31, ptr %3, align 8
  br label %15, !llvm.loop !32

32:                                               ; preds = %15
  br label %33

33:                                               ; preds = %36, %32
  %34 = load ptr, ptr %4, align 8
  %35 = icmp ne ptr %34, null
  br i1 %35, label %36, label %50

36:                                               ; preds = %33
  %37 = load ptr, ptr %4, align 8
  %38 = getelementptr inbounds nuw %struct.dllist, ptr %37, i32 0, i32 1
  %39 = load ptr, ptr %38, align 8
  store ptr %39, ptr %6, align 8
  %40 = load ptr, ptr %4, align 8
  %41 = getelementptr inbounds nuw %struct.dllist, ptr %40, i32 0, i32 2
  %42 = load ptr, ptr %41, align 8
  store ptr %42, ptr %5, align 8
  %43 = load ptr, ptr %5, align 8
  %44 = load ptr, ptr %4, align 8
  %45 = getelementptr inbounds nuw %struct.dllist, ptr %44, i32 0, i32 1
  store ptr %43, ptr %45, align 8
  %46 = load ptr, ptr %6, align 8
  %47 = load ptr, ptr %4, align 8
  %48 = getelementptr inbounds nuw %struct.dllist, ptr %47, i32 0, i32 2
  store ptr %46, ptr %48, align 8
  %49 = load ptr, ptr %6, align 8
  store ptr %49, ptr %4, align 8
  br label %33, !llvm.loop !33

50:                                               ; preds = %33
  br label %51

51:                                               ; preds = %50, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @sglib_dllist_it_init_on_equal(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  store ptr %3, ptr %8, align 8
  %9 = load ptr, ptr %7, align 8
  %10 = load ptr, ptr %5, align 8
  %11 = getelementptr inbounds nuw %struct.sglib_dllist_iterator, ptr %10, i32 0, i32 3
  store ptr %9, ptr %11, align 8
  %12 = load ptr, ptr %8, align 8
  %13 = load ptr, ptr %5, align 8
  %14 = getelementptr inbounds nuw %struct.sglib_dllist_iterator, ptr %13, i32 0, i32 4
  store ptr %12, ptr %14, align 8
  %15 = load ptr, ptr %6, align 8
  %16 = load ptr, ptr %5, align 8
  %17 = getelementptr inbounds nuw %struct.sglib_dllist_iterator, ptr %16, i32 0, i32 1
  store ptr %15, ptr %17, align 8
  %18 = load ptr, ptr %6, align 8
  %19 = load ptr, ptr %5, align 8
  %20 = getelementptr inbounds nuw %struct.sglib_dllist_iterator, ptr %19, i32 0, i32 2
  store ptr %18, ptr %20, align 8
  %21 = load ptr, ptr %6, align 8
  %22 = icmp ne ptr %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %4
  %24 = load ptr, ptr %6, align 8
  %25 = getelementptr inbounds nuw %struct.dllist, ptr %24, i32 0, i32 1
  %26 = load ptr, ptr %25, align 8
  %27 = load ptr, ptr %5, align 8
  %28 = getelementptr inbounds nuw %struct.sglib_dllist_iterator, ptr %27, i32 0, i32 2
  store ptr %26, ptr %28, align 8
  br label %29

29:                                               ; preds = %23, %4
  %30 = load ptr, ptr %5, align 8
  %31 = call ptr @sglib_dllist_it_next(ptr noundef %30)
  ret ptr %31
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @sglib_dllist_it_next(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %6 = load ptr, ptr %2, align 8
  %7 = getelementptr inbounds nuw %struct.sglib_dllist_iterator, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  store ptr %8, ptr %3, align 8
  %9 = load ptr, ptr %2, align 8
  %10 = getelementptr inbounds nuw %struct.sglib_dllist_iterator, ptr %9, i32 0, i32 1
  store ptr null, ptr %10, align 8
  %11 = load ptr, ptr %2, align 8
  %12 = getelementptr inbounds nuw %struct.sglib_dllist_iterator, ptr %11, i32 0, i32 3
  %13 = load ptr, ptr %12, align 8
  %14 = icmp ne ptr %13, null
  br i1 %14, label %15, label %38

15:                                               ; preds = %1
  %16 = load ptr, ptr %2, align 8
  %17 = getelementptr inbounds nuw %struct.sglib_dllist_iterator, ptr %16, i32 0, i32 4
  %18 = load ptr, ptr %17, align 8
  store ptr %18, ptr %4, align 8
  %19 = load ptr, ptr %2, align 8
  %20 = getelementptr inbounds nuw %struct.sglib_dllist_iterator, ptr %19, i32 0, i32 3
  %21 = load ptr, ptr %20, align 8
  store ptr %21, ptr %5, align 8
  br label %22

22:                                               ; preds = %33, %15
  %23 = load ptr, ptr %3, align 8
  %24 = icmp ne ptr %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = load ptr, ptr %5, align 8
  %27 = load ptr, ptr %4, align 8
  %28 = load ptr, ptr %3, align 8
  %29 = call i32 %26(ptr noundef %27, ptr noundef %28)
  %30 = icmp ne i32 %29, 0
  br label %31

31:                                               ; preds = %25, %22
  %32 = phi i1 [ false, %22 ], [ %30, %25 ]
  br i1 %32, label %33, label %37

33:                                               ; preds = %31
  %34 = load ptr, ptr %3, align 8
  %35 = getelementptr inbounds nuw %struct.dllist, ptr %34, i32 0, i32 2
  %36 = load ptr, ptr %35, align 8
  store ptr %36, ptr %3, align 8
  br label %22, !llvm.loop !34

37:                                               ; preds = %31
  br label %38

38:                                               ; preds = %37, %1
  %39 = load ptr, ptr %3, align 8
  %40 = icmp ne ptr %39, null
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = load ptr, ptr %3, align 8
  %43 = getelementptr inbounds nuw %struct.dllist, ptr %42, i32 0, i32 2
  %44 = load ptr, ptr %43, align 8
  %45 = load ptr, ptr %2, align 8
  %46 = getelementptr inbounds nuw %struct.sglib_dllist_iterator, ptr %45, i32 0, i32 1
  store ptr %44, ptr %46, align 8
  br label %90

47:                                               ; preds = %38
  %48 = load ptr, ptr %2, align 8
  %49 = getelementptr inbounds nuw %struct.sglib_dllist_iterator, ptr %48, i32 0, i32 2
  %50 = load ptr, ptr %49, align 8
  store ptr %50, ptr %3, align 8
  %51 = load ptr, ptr %2, align 8
  %52 = getelementptr inbounds nuw %struct.sglib_dllist_iterator, ptr %51, i32 0, i32 2
  store ptr null, ptr %52, align 8
  %53 = load ptr, ptr %2, align 8
  %54 = getelementptr inbounds nuw %struct.sglib_dllist_iterator, ptr %53, i32 0, i32 3
  %55 = load ptr, ptr %54, align 8
  %56 = icmp ne ptr %55, null
  br i1 %56, label %57, label %80

57:                                               ; preds = %47
  %58 = load ptr, ptr %2, align 8
  %59 = getelementptr inbounds nuw %struct.sglib_dllist_iterator, ptr %58, i32 0, i32 4
  %60 = load ptr, ptr %59, align 8
  store ptr %60, ptr %4, align 8
  %61 = load ptr, ptr %2, align 8
  %62 = getelementptr inbounds nuw %struct.sglib_dllist_iterator, ptr %61, i32 0, i32 3
  %63 = load ptr, ptr %62, align 8
  store ptr %63, ptr %5, align 8
  br label %64

64:                                               ; preds = %75, %57
  %65 = load ptr, ptr %3, align 8
  %66 = icmp ne ptr %65, null
  br i1 %66, label %67, label %73

67:                                               ; preds = %64
  %68 = load ptr, ptr %5, align 8
  %69 = load ptr, ptr %3, align 8
  %70 = load ptr, ptr %4, align 8
  %71 = call i32 %68(ptr noundef %69, ptr noundef %70)
  %72 = icmp ne i32 %71, 0
  br label %73

73:                                               ; preds = %67, %64
  %74 = phi i1 [ false, %64 ], [ %72, %67 ]
  br i1 %74, label %75, label %79

75:                                               ; preds = %73
  %76 = load ptr, ptr %3, align 8
  %77 = getelementptr inbounds nuw %struct.dllist, ptr %76, i32 0, i32 1
  %78 = load ptr, ptr %77, align 8
  store ptr %78, ptr %3, align 8
  br label %64, !llvm.loop !35

79:                                               ; preds = %73
  br label %80

80:                                               ; preds = %79, %47
  %81 = load ptr, ptr %3, align 8
  %82 = icmp ne ptr %81, null
  br i1 %82, label %83, label %89

83:                                               ; preds = %80
  %84 = load ptr, ptr %3, align 8
  %85 = getelementptr inbounds nuw %struct.dllist, ptr %84, i32 0, i32 1
  %86 = load ptr, ptr %85, align 8
  %87 = load ptr, ptr %2, align 8
  %88 = getelementptr inbounds nuw %struct.sglib_dllist_iterator, ptr %87, i32 0, i32 2
  store ptr %86, ptr %88, align 8
  br label %89

89:                                               ; preds = %83, %80
  br label %90

90:                                               ; preds = %89, %41
  %91 = load ptr, ptr %3, align 8
  %92 = load ptr, ptr %2, align 8
  %93 = getelementptr inbounds nuw %struct.sglib_dllist_iterator, ptr %92, i32 0, i32 0
  store ptr %91, ptr %93, align 8
  %94 = load ptr, ptr %3, align 8
  ret ptr %94
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @sglib_dllist_it_init(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = call ptr @sglib_dllist_it_init_on_equal(ptr noundef %5, ptr noundef %6, ptr noundef null, ptr noundef null)
  ret ptr %7
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @sglib_dllist_it_current(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds nuw %struct.sglib_dllist_iterator, ptr %3, i32 0, i32 0
  %5 = load ptr, ptr %4, align 8
  ret ptr %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ilist_hash_function(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds nuw %struct.ilist, ptr %3, i32 0, i32 0
  %5 = load i32, ptr %4, align 8
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sglib_ilist_is_member(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %7 = load ptr, ptr %3, align 8
  store ptr %7, ptr %6, align 8
  br label %8

8:                                                ; preds = %18, %2
  %9 = load ptr, ptr %6, align 8
  %10 = icmp ne ptr %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  %12 = load ptr, ptr %6, align 8
  %13 = load ptr, ptr %4, align 8
  %14 = icmp ne ptr %12, %13
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i1 [ false, %8 ], [ %14, %11 ]
  br i1 %16, label %17, label %22

17:                                               ; preds = %15
  br label %18

18:                                               ; preds = %17
  %19 = load ptr, ptr %6, align 8
  %20 = getelementptr inbounds nuw %struct.ilist, ptr %19, i32 0, i32 1
  %21 = load ptr, ptr %20, align 8
  store ptr %21, ptr %6, align 8
  br label %8, !llvm.loop !36

22:                                               ; preds = %15
  %23 = load ptr, ptr %6, align 8
  %24 = icmp ne ptr %23, null
  %25 = zext i1 %24 to i32
  store i32 %25, ptr %5, align 4
  %26 = load i32, ptr %5, align 4
  ret i32 %26
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @sglib_ilist_find_member(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %7 = load ptr, ptr %3, align 8
  store ptr %7, ptr %6, align 8
  br label %8

8:                                                ; preds = %23, %2
  %9 = load ptr, ptr %6, align 8
  %10 = icmp ne ptr %9, null
  br i1 %10, label %11, label %20

11:                                               ; preds = %8
  %12 = load ptr, ptr %6, align 8
  %13 = getelementptr inbounds nuw %struct.ilist, ptr %12, i32 0, i32 0
  %14 = load i32, ptr %13, align 8
  %15 = load ptr, ptr %4, align 8
  %16 = getelementptr inbounds nuw %struct.ilist, ptr %15, i32 0, i32 0
  %17 = load i32, ptr %16, align 8
  %18 = sub nsw i32 %14, %17
  %19 = icmp ne i32 %18, 0
  br label %20

20:                                               ; preds = %11, %8
  %21 = phi i1 [ false, %8 ], [ %19, %11 ]
  br i1 %21, label %22, label %27

22:                                               ; preds = %20
  br label %23

23:                                               ; preds = %22
  %24 = load ptr, ptr %6, align 8
  %25 = getelementptr inbounds nuw %struct.ilist, ptr %24, i32 0, i32 1
  %26 = load ptr, ptr %25, align 8
  store ptr %26, ptr %6, align 8
  br label %8, !llvm.loop !37

27:                                               ; preds = %20
  %28 = load ptr, ptr %6, align 8
  store ptr %28, ptr %5, align 8
  %29 = load ptr, ptr %5, align 8
  ret ptr %29
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sglib_ilist_add_if_not_member(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %8 = load ptr, ptr %4, align 8
  %9 = load ptr, ptr %8, align 8
  store ptr %9, ptr %7, align 8
  br label %10

10:                                               ; preds = %25, %3
  %11 = load ptr, ptr %7, align 8
  %12 = icmp ne ptr %11, null
  br i1 %12, label %13, label %22

13:                                               ; preds = %10
  %14 = load ptr, ptr %7, align 8
  %15 = getelementptr inbounds nuw %struct.ilist, ptr %14, i32 0, i32 0
  %16 = load i32, ptr %15, align 8
  %17 = load ptr, ptr %5, align 8
  %18 = getelementptr inbounds nuw %struct.ilist, ptr %17, i32 0, i32 0
  %19 = load i32, ptr %18, align 8
  %20 = sub nsw i32 %16, %19
  %21 = icmp ne i32 %20, 0
  br label %22

22:                                               ; preds = %13, %10
  %23 = phi i1 [ false, %10 ], [ %21, %13 ]
  br i1 %23, label %24, label %29

24:                                               ; preds = %22
  br label %25

25:                                               ; preds = %24
  %26 = load ptr, ptr %7, align 8
  %27 = getelementptr inbounds nuw %struct.ilist, ptr %26, i32 0, i32 1
  %28 = load ptr, ptr %27, align 8
  store ptr %28, ptr %7, align 8
  br label %10, !llvm.loop !38

29:                                               ; preds = %22
  %30 = load ptr, ptr %7, align 8
  %31 = load ptr, ptr %6, align 8
  store ptr %30, ptr %31, align 8
  %32 = load ptr, ptr %7, align 8
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = load ptr, ptr %4, align 8
  %36 = load ptr, ptr %35, align 8
  %37 = load ptr, ptr %5, align 8
  %38 = getelementptr inbounds nuw %struct.ilist, ptr %37, i32 0, i32 1
  store ptr %36, ptr %38, align 8
  %39 = load ptr, ptr %5, align 8
  %40 = load ptr, ptr %4, align 8
  store ptr %39, ptr %40, align 8
  br label %41

41:                                               ; preds = %34, %29
  %42 = load ptr, ptr %6, align 8
  %43 = load ptr, ptr %42, align 8
  %44 = icmp eq ptr %43, null
  %45 = zext i1 %44 to i32
  ret i32 %45
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @sglib_ilist_add(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = getelementptr inbounds nuw %struct.ilist, ptr %7, i32 0, i32 1
  store ptr %6, ptr %8, align 8
  %9 = load ptr, ptr %4, align 8
  %10 = load ptr, ptr %3, align 8
  store ptr %9, ptr %10, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @sglib_ilist_concat(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load ptr, ptr %4, align 8
  %11 = load ptr, ptr %3, align 8
  store ptr %10, ptr %11, align 8
  br label %29

12:                                               ; preds = %2
  %13 = load ptr, ptr %3, align 8
  %14 = load ptr, ptr %13, align 8
  store ptr %14, ptr %5, align 8
  br label %15

15:                                               ; preds = %21, %12
  %16 = load ptr, ptr %5, align 8
  %17 = getelementptr inbounds nuw %struct.ilist, ptr %16, i32 0, i32 1
  %18 = load ptr, ptr %17, align 8
  %19 = icmp ne ptr %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  br label %21

21:                                               ; preds = %20
  %22 = load ptr, ptr %5, align 8
  %23 = getelementptr inbounds nuw %struct.ilist, ptr %22, i32 0, i32 1
  %24 = load ptr, ptr %23, align 8
  store ptr %24, ptr %5, align 8
  br label %15, !llvm.loop !39

25:                                               ; preds = %15
  %26 = load ptr, ptr %4, align 8
  %27 = load ptr, ptr %5, align 8
  %28 = getelementptr inbounds nuw %struct.ilist, ptr %27, i32 0, i32 1
  store ptr %26, ptr %28, align 8
  br label %29

29:                                               ; preds = %25, %9
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @sglib_ilist_delete(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %6 = load ptr, ptr %3, align 8
  store ptr %6, ptr %5, align 8
  br label %7

7:                                                ; preds = %19, %2
  %8 = load ptr, ptr %5, align 8
  %9 = load ptr, ptr %8, align 8
  %10 = icmp ne ptr %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %7
  %12 = load ptr, ptr %5, align 8
  %13 = load ptr, ptr %12, align 8
  %14 = load ptr, ptr %4, align 8
  %15 = icmp ne ptr %13, %14
  br label %16

16:                                               ; preds = %11, %7
  %17 = phi i1 [ false, %7 ], [ %15, %11 ]
  br i1 %17, label %18, label %23

18:                                               ; preds = %16
  br label %19

19:                                               ; preds = %18
  %20 = load ptr, ptr %5, align 8
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds nuw %struct.ilist, ptr %21, i32 0, i32 1
  store ptr %22, ptr %5, align 8
  br label %7, !llvm.loop !40

23:                                               ; preds = %16
  %24 = load ptr, ptr %5, align 8
  %25 = load ptr, ptr %24, align 8
  %26 = icmp ne ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  br label %28

28:                                               ; preds = %27, %28
  br label %28

29:                                               ; preds = %23
  %30 = load ptr, ptr %5, align 8
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds nuw %struct.ilist, ptr %31, i32 0, i32 1
  %33 = load ptr, ptr %32, align 8
  %34 = load ptr, ptr %5, align 8
  store ptr %33, ptr %34, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sglib_ilist_delete_if_member(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %8 = load ptr, ptr %4, align 8
  store ptr %8, ptr %7, align 8
  br label %9

9:                                                ; preds = %26, %3
  %10 = load ptr, ptr %7, align 8
  %11 = load ptr, ptr %10, align 8
  %12 = icmp ne ptr %11, null
  br i1 %12, label %13, label %23

13:                                               ; preds = %9
  %14 = load ptr, ptr %7, align 8
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds nuw %struct.ilist, ptr %15, i32 0, i32 0
  %17 = load i32, ptr %16, align 8
  %18 = load ptr, ptr %5, align 8
  %19 = getelementptr inbounds nuw %struct.ilist, ptr %18, i32 0, i32 0
  %20 = load i32, ptr %19, align 8
  %21 = sub nsw i32 %17, %20
  %22 = icmp ne i32 %21, 0
  br label %23

23:                                               ; preds = %13, %9
  %24 = phi i1 [ false, %9 ], [ %22, %13 ]
  br i1 %24, label %25, label %30

25:                                               ; preds = %23
  br label %26

26:                                               ; preds = %25
  %27 = load ptr, ptr %7, align 8
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds nuw %struct.ilist, ptr %28, i32 0, i32 1
  store ptr %29, ptr %7, align 8
  br label %9, !llvm.loop !41

30:                                               ; preds = %23
  %31 = load ptr, ptr %7, align 8
  %32 = load ptr, ptr %31, align 8
  %33 = load ptr, ptr %6, align 8
  store ptr %32, ptr %33, align 8
  %34 = load ptr, ptr %7, align 8
  %35 = load ptr, ptr %34, align 8
  %36 = icmp ne ptr %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %30
  %38 = load ptr, ptr %7, align 8
  %39 = load ptr, ptr %38, align 8
  %40 = getelementptr inbounds nuw %struct.ilist, ptr %39, i32 0, i32 1
  %41 = load ptr, ptr %40, align 8
  %42 = load ptr, ptr %7, align 8
  store ptr %41, ptr %42, align 8
  br label %43

43:                                               ; preds = %37, %30
  %44 = load ptr, ptr %6, align 8
  %45 = load ptr, ptr %44, align 8
  %46 = icmp ne ptr %45, null
  %47 = zext i1 %46 to i32
  ret i32 %47
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @sglib_ilist_sort(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  %12 = load ptr, ptr %2, align 8
  %13 = load ptr, ptr %12, align 8
  store ptr %13, ptr %3, align 8
  store i32 1, ptr %11, align 4
  store i32 1, ptr %10, align 4
  br label %14

14:                                               ; preds = %135, %1
  %15 = load i32, ptr %11, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %139

17:                                               ; preds = %14
  %18 = load ptr, ptr %3, align 8
  store ptr %18, ptr %6, align 8
  store ptr null, ptr %3, align 8
  store ptr %3, ptr %8, align 8
  store i32 0, ptr %11, align 4
  br label %19

19:                                               ; preds = %133, %17
  %20 = load ptr, ptr %6, align 8
  %21 = icmp ne ptr %20, null
  br i1 %21, label %22, label %134

22:                                               ; preds = %19
  %23 = load ptr, ptr %6, align 8
  store ptr %23, ptr %4, align 8
  store i32 1, ptr %9, align 4
  %24 = load ptr, ptr %4, align 8
  store ptr %24, ptr %7, align 8
  br label %25

25:                                               ; preds = %35, %22
  %26 = load i32, ptr %9, align 4
  %27 = load i32, ptr %10, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load ptr, ptr %7, align 8
  %31 = icmp ne ptr %30, null
  br label %32

32:                                               ; preds = %29, %25
  %33 = phi i1 [ false, %25 ], [ %31, %29 ]
  br i1 %33, label %34, label %41

34:                                               ; preds = %32
  br label %35

35:                                               ; preds = %34
  %36 = load i32, ptr %9, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, ptr %9, align 4
  %38 = load ptr, ptr %7, align 8
  %39 = getelementptr inbounds nuw %struct.ilist, ptr %38, i32 0, i32 1
  %40 = load ptr, ptr %39, align 8
  store ptr %40, ptr %7, align 8
  br label %25, !llvm.loop !42

41:                                               ; preds = %32
  %42 = load ptr, ptr %7, align 8
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load ptr, ptr %4, align 8
  %46 = load ptr, ptr %8, align 8
  store ptr %45, ptr %46, align 8
  br label %134

47:                                               ; preds = %41
  %48 = load ptr, ptr %7, align 8
  %49 = getelementptr inbounds nuw %struct.ilist, ptr %48, i32 0, i32 1
  %50 = load ptr, ptr %49, align 8
  store ptr %50, ptr %5, align 8
  %51 = load ptr, ptr %7, align 8
  %52 = getelementptr inbounds nuw %struct.ilist, ptr %51, i32 0, i32 1
  store ptr null, ptr %52, align 8
  store i32 1, ptr %9, align 4
  %53 = load ptr, ptr %5, align 8
  store ptr %53, ptr %7, align 8
  br label %54

54:                                               ; preds = %64, %47
  %55 = load i32, ptr %9, align 4
  %56 = load i32, ptr %10, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load ptr, ptr %7, align 8
  %60 = icmp ne ptr %59, null
  br label %61

61:                                               ; preds = %58, %54
  %62 = phi i1 [ false, %54 ], [ %60, %58 ]
  br i1 %62, label %63, label %70

63:                                               ; preds = %61
  br label %64

64:                                               ; preds = %63
  %65 = load i32, ptr %9, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, ptr %9, align 4
  %67 = load ptr, ptr %7, align 8
  %68 = getelementptr inbounds nuw %struct.ilist, ptr %67, i32 0, i32 1
  %69 = load ptr, ptr %68, align 8
  store ptr %69, ptr %7, align 8
  br label %54, !llvm.loop !43

70:                                               ; preds = %61
  %71 = load ptr, ptr %7, align 8
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  store ptr null, ptr %6, align 8
  br label %80

74:                                               ; preds = %70
  %75 = load ptr, ptr %7, align 8
  %76 = getelementptr inbounds nuw %struct.ilist, ptr %75, i32 0, i32 1
  %77 = load ptr, ptr %76, align 8
  store ptr %77, ptr %6, align 8
  %78 = load ptr, ptr %7, align 8
  %79 = getelementptr inbounds nuw %struct.ilist, ptr %78, i32 0, i32 1
  store ptr null, ptr %79, align 8
  br label %80

80:                                               ; preds = %74, %73
  br label %81

81:                                               ; preds = %114, %80
  %82 = load ptr, ptr %4, align 8
  %83 = icmp ne ptr %82, null
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load ptr, ptr %5, align 8
  %86 = icmp ne ptr %85, null
  br label %87

87:                                               ; preds = %84, %81
  %88 = phi i1 [ false, %81 ], [ %86, %84 ]
  br i1 %88, label %89, label %115

89:                                               ; preds = %87
  %90 = load ptr, ptr %4, align 8
  %91 = getelementptr inbounds nuw %struct.ilist, ptr %90, i32 0, i32 0
  %92 = load i32, ptr %91, align 8
  %93 = load ptr, ptr %5, align 8
  %94 = getelementptr inbounds nuw %struct.ilist, ptr %93, i32 0, i32 0
  %95 = load i32, ptr %94, align 8
  %96 = sub nsw i32 %92, %95
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %106

98:                                               ; preds = %89
  %99 = load ptr, ptr %4, align 8
  %100 = load ptr, ptr %8, align 8
  store ptr %99, ptr %100, align 8
  %101 = load ptr, ptr %4, align 8
  %102 = getelementptr inbounds nuw %struct.ilist, ptr %101, i32 0, i32 1
  store ptr %102, ptr %8, align 8
  %103 = load ptr, ptr %4, align 8
  %104 = getelementptr inbounds nuw %struct.ilist, ptr %103, i32 0, i32 1
  %105 = load ptr, ptr %104, align 8
  store ptr %105, ptr %4, align 8
  br label %114

106:                                              ; preds = %89
  %107 = load ptr, ptr %5, align 8
  %108 = load ptr, ptr %8, align 8
  store ptr %107, ptr %108, align 8
  %109 = load ptr, ptr %5, align 8
  %110 = getelementptr inbounds nuw %struct.ilist, ptr %109, i32 0, i32 1
  store ptr %110, ptr %8, align 8
  %111 = load ptr, ptr %5, align 8
  %112 = getelementptr inbounds nuw %struct.ilist, ptr %111, i32 0, i32 1
  %113 = load ptr, ptr %112, align 8
  store ptr %113, ptr %5, align 8
  br label %114

114:                                              ; preds = %106, %98
  br label %81, !llvm.loop !44

115:                                              ; preds = %87
  %116 = load ptr, ptr %4, align 8
  %117 = icmp ne ptr %116, null
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = load ptr, ptr %4, align 8
  %120 = load ptr, ptr %8, align 8
  store ptr %119, ptr %120, align 8
  br label %124

121:                                              ; preds = %115
  %122 = load ptr, ptr %5, align 8
  %123 = load ptr, ptr %8, align 8
  store ptr %122, ptr %123, align 8
  br label %124

124:                                              ; preds = %121, %118
  br label %125

125:                                              ; preds = %129, %124
  %126 = load ptr, ptr %8, align 8
  %127 = load ptr, ptr %126, align 8
  %128 = icmp ne ptr %127, null
  br i1 %128, label %129, label %133

129:                                              ; preds = %125
  %130 = load ptr, ptr %8, align 8
  %131 = load ptr, ptr %130, align 8
  %132 = getelementptr inbounds nuw %struct.ilist, ptr %131, i32 0, i32 1
  store ptr %132, ptr %8, align 8
  br label %125, !llvm.loop !45

133:                                              ; preds = %125
  store i32 1, ptr %11, align 4
  br label %19, !llvm.loop !46

134:                                              ; preds = %44, %19
  br label %135

135:                                              ; preds = %134
  %136 = load i32, ptr %10, align 4
  %137 = load i32, ptr %10, align 4
  %138 = add nsw i32 %136, %137
  store i32 %138, ptr %10, align 4
  br label %14, !llvm.loop !47

139:                                              ; preds = %14
  %140 = load ptr, ptr %3, align 8
  %141 = load ptr, ptr %2, align 8
  store ptr %140, ptr %141, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sglib_ilist_len(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  store i32 0, ptr %3, align 4
  %7 = load ptr, ptr %2, align 8
  store ptr %7, ptr %6, align 8
  br label %8

8:                                                ; preds = %11, %1
  %9 = load ptr, ptr %6, align 8
  %10 = icmp ne ptr %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %8
  %12 = load ptr, ptr %6, align 8
  %13 = getelementptr inbounds nuw %struct.ilist, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 8
  store ptr %14, ptr %5, align 8
  %15 = load i32, ptr %3, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, ptr %3, align 4
  %17 = load ptr, ptr %5, align 8
  store ptr %17, ptr %6, align 8
  br label %8, !llvm.loop !48

18:                                               ; preds = %8
  %19 = load i32, ptr %3, align 4
  ret i32 %19
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @sglib_ilist_reverse(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %6 = load ptr, ptr %2, align 8
  %7 = load ptr, ptr %6, align 8
  store ptr %7, ptr %3, align 8
  store ptr null, ptr %5, align 8
  br label %8

8:                                                ; preds = %11, %1
  %9 = load ptr, ptr %3, align 8
  %10 = icmp ne ptr %9, null
  br i1 %10, label %11, label %20

11:                                               ; preds = %8
  %12 = load ptr, ptr %3, align 8
  %13 = getelementptr inbounds nuw %struct.ilist, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 8
  store ptr %14, ptr %4, align 8
  %15 = load ptr, ptr %5, align 8
  %16 = load ptr, ptr %3, align 8
  %17 = getelementptr inbounds nuw %struct.ilist, ptr %16, i32 0, i32 1
  store ptr %15, ptr %17, align 8
  %18 = load ptr, ptr %3, align 8
  store ptr %18, ptr %5, align 8
  %19 = load ptr, ptr %4, align 8
  store ptr %19, ptr %3, align 8
  br label %8, !llvm.loop !49

20:                                               ; preds = %8
  %21 = load ptr, ptr %5, align 8
  %22 = load ptr, ptr %2, align 8
  store ptr %21, ptr %22, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @sglib_ilist_it_init_on_equal(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  store ptr %3, ptr %8, align 8
  %9 = load ptr, ptr %7, align 8
  %10 = load ptr, ptr %5, align 8
  %11 = getelementptr inbounds nuw %struct.sglib_ilist_iterator, ptr %10, i32 0, i32 2
  store ptr %9, ptr %11, align 8
  %12 = load ptr, ptr %8, align 8
  %13 = load ptr, ptr %5, align 8
  %14 = getelementptr inbounds nuw %struct.sglib_ilist_iterator, ptr %13, i32 0, i32 3
  store ptr %12, ptr %14, align 8
  %15 = load ptr, ptr %6, align 8
  %16 = load ptr, ptr %5, align 8
  %17 = getelementptr inbounds nuw %struct.sglib_ilist_iterator, ptr %16, i32 0, i32 1
  store ptr %15, ptr %17, align 8
  %18 = load ptr, ptr %5, align 8
  %19 = call ptr @sglib_ilist_it_next(ptr noundef %18)
  ret ptr %19
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @sglib_ilist_it_next(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %6 = load ptr, ptr %2, align 8
  %7 = getelementptr inbounds nuw %struct.sglib_ilist_iterator, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  store ptr %8, ptr %3, align 8
  %9 = load ptr, ptr %2, align 8
  %10 = getelementptr inbounds nuw %struct.sglib_ilist_iterator, ptr %9, i32 0, i32 1
  store ptr null, ptr %10, align 8
  %11 = load ptr, ptr %2, align 8
  %12 = getelementptr inbounds nuw %struct.sglib_ilist_iterator, ptr %11, i32 0, i32 2
  %13 = load ptr, ptr %12, align 8
  %14 = icmp ne ptr %13, null
  br i1 %14, label %15, label %38

15:                                               ; preds = %1
  %16 = load ptr, ptr %2, align 8
  %17 = getelementptr inbounds nuw %struct.sglib_ilist_iterator, ptr %16, i32 0, i32 3
  %18 = load ptr, ptr %17, align 8
  store ptr %18, ptr %4, align 8
  %19 = load ptr, ptr %2, align 8
  %20 = getelementptr inbounds nuw %struct.sglib_ilist_iterator, ptr %19, i32 0, i32 2
  %21 = load ptr, ptr %20, align 8
  store ptr %21, ptr %5, align 8
  br label %22

22:                                               ; preds = %33, %15
  %23 = load ptr, ptr %3, align 8
  %24 = icmp ne ptr %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = load ptr, ptr %5, align 8
  %27 = load ptr, ptr %3, align 8
  %28 = load ptr, ptr %4, align 8
  %29 = call i32 %26(ptr noundef %27, ptr noundef %28)
  %30 = icmp ne i32 %29, 0
  br label %31

31:                                               ; preds = %25, %22
  %32 = phi i1 [ false, %22 ], [ %30, %25 ]
  br i1 %32, label %33, label %37

33:                                               ; preds = %31
  %34 = load ptr, ptr %3, align 8
  %35 = getelementptr inbounds nuw %struct.ilist, ptr %34, i32 0, i32 1
  %36 = load ptr, ptr %35, align 8
  store ptr %36, ptr %3, align 8
  br label %22, !llvm.loop !50

37:                                               ; preds = %31
  br label %38

38:                                               ; preds = %37, %1
  %39 = load ptr, ptr %3, align 8
  %40 = load ptr, ptr %2, align 8
  %41 = getelementptr inbounds nuw %struct.sglib_ilist_iterator, ptr %40, i32 0, i32 0
  store ptr %39, ptr %41, align 8
  %42 = load ptr, ptr %3, align 8
  %43 = icmp ne ptr %42, null
  br i1 %43, label %44, label %50

44:                                               ; preds = %38
  %45 = load ptr, ptr %3, align 8
  %46 = getelementptr inbounds nuw %struct.ilist, ptr %45, i32 0, i32 1
  %47 = load ptr, ptr %46, align 8
  %48 = load ptr, ptr %2, align 8
  %49 = getelementptr inbounds nuw %struct.sglib_ilist_iterator, ptr %48, i32 0, i32 1
  store ptr %47, ptr %49, align 8
  br label %50

50:                                               ; preds = %44, %38
  %51 = load ptr, ptr %3, align 8
  ret ptr %51
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @sglib_ilist_it_init(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = call ptr @sglib_ilist_it_init_on_equal(ptr noundef %5, ptr noundef %6, ptr noundef null, ptr noundef null)
  ret ptr %7
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @sglib_ilist_it_current(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds nuw %struct.sglib_ilist_iterator, ptr %3, i32 0, i32 0
  %5 = load ptr, ptr %4, align 8
  ret ptr %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @sglib_hashed_ilist_init(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  store i32 0, ptr %3, align 4
  br label %4

4:                                                ; preds = %12, %1
  %5 = load i32, ptr %3, align 4
  %6 = icmp ult i32 %5, 20
  br i1 %6, label %7, label %15

7:                                                ; preds = %4
  %8 = load ptr, ptr %2, align 8
  %9 = load i32, ptr %3, align 4
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds nuw ptr, ptr %8, i64 %10
  store ptr null, ptr %11, align 8
  br label %12

12:                                               ; preds = %7
  %13 = load i32, ptr %3, align 4
  %14 = add i32 %13, 1
  store i32 %14, ptr %3, align 4
  br label %4, !llvm.loop !51

15:                                               ; preds = %4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @sglib_hashed_ilist_add(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = call i32 @ilist_hash_function(ptr noundef %6)
  %8 = urem i32 %7, 20
  store i32 %8, ptr %5, align 4
  %9 = load ptr, ptr %3, align 8
  %10 = load i32, ptr %5, align 4
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds nuw ptr, ptr %9, i64 %11
  %13 = load ptr, ptr %4, align 8
  call void @sglib_ilist_add(ptr noundef %12, ptr noundef %13)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sglib_hashed_ilist_add_if_not_member(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = call i32 @ilist_hash_function(ptr noundef %8)
  %10 = urem i32 %9, 20
  store i32 %10, ptr %7, align 4
  %11 = load ptr, ptr %4, align 8
  %12 = load i32, ptr %7, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds nuw ptr, ptr %11, i64 %13
  %15 = load ptr, ptr %5, align 8
  %16 = load ptr, ptr %6, align 8
  %17 = call i32 @sglib_ilist_add_if_not_member(ptr noundef %14, ptr noundef %15, ptr noundef %16)
  ret i32 %17
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @sglib_hashed_ilist_delete(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = call i32 @ilist_hash_function(ptr noundef %6)
  %8 = urem i32 %7, 20
  store i32 %8, ptr %5, align 4
  %9 = load ptr, ptr %3, align 8
  %10 = load i32, ptr %5, align 4
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds nuw ptr, ptr %9, i64 %11
  %13 = load ptr, ptr %4, align 8
  call void @sglib_ilist_delete(ptr noundef %12, ptr noundef %13)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sglib_hashed_ilist_delete_if_member(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = call i32 @ilist_hash_function(ptr noundef %8)
  %10 = urem i32 %9, 20
  store i32 %10, ptr %7, align 4
  %11 = load ptr, ptr %4, align 8
  %12 = load i32, ptr %7, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds nuw ptr, ptr %11, i64 %13
  %15 = load ptr, ptr %5, align 8
  %16 = load ptr, ptr %6, align 8
  %17 = call i32 @sglib_ilist_delete_if_member(ptr noundef %14, ptr noundef %15, ptr noundef %16)
  ret i32 %17
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sglib_hashed_ilist_is_member(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = call i32 @ilist_hash_function(ptr noundef %6)
  %8 = urem i32 %7, 20
  store i32 %8, ptr %5, align 4
  %9 = load ptr, ptr %3, align 8
  %10 = load i32, ptr %5, align 4
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds nuw ptr, ptr %9, i64 %11
  %13 = load ptr, ptr %12, align 8
  %14 = load ptr, ptr %4, align 8
  %15 = call i32 @sglib_ilist_is_member(ptr noundef %13, ptr noundef %14)
  ret i32 %15
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @sglib_hashed_ilist_find_member(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = call i32 @ilist_hash_function(ptr noundef %6)
  %8 = urem i32 %7, 20
  store i32 %8, ptr %5, align 4
  %9 = load ptr, ptr %3, align 8
  %10 = load i32, ptr %5, align 4
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds nuw ptr, ptr %9, i64 %11
  %13 = load ptr, ptr %12, align 8
  %14 = load ptr, ptr %4, align 8
  %15 = call ptr @sglib_ilist_find_member(ptr noundef %13, ptr noundef %14)
  ret ptr %15
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @sglib_hashed_ilist_it_init_on_equal(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  store ptr %3, ptr %8, align 8
  %10 = load ptr, ptr %6, align 8
  %11 = load ptr, ptr %5, align 8
  %12 = getelementptr inbounds nuw %struct.sglib_hashed_ilist_iterator, ptr %11, i32 0, i32 1
  store ptr %10, ptr %12, align 8
  %13 = load ptr, ptr %5, align 8
  %14 = getelementptr inbounds nuw %struct.sglib_hashed_ilist_iterator, ptr %13, i32 0, i32 2
  store i32 0, ptr %14, align 8
  %15 = load ptr, ptr %7, align 8
  %16 = load ptr, ptr %5, align 8
  %17 = getelementptr inbounds nuw %struct.sglib_hashed_ilist_iterator, ptr %16, i32 0, i32 3
  store ptr %15, ptr %17, align 8
  %18 = load ptr, ptr %8, align 8
  %19 = load ptr, ptr %5, align 8
  %20 = getelementptr inbounds nuw %struct.sglib_hashed_ilist_iterator, ptr %19, i32 0, i32 4
  store ptr %18, ptr %20, align 8
  %21 = load ptr, ptr %5, align 8
  %22 = getelementptr inbounds nuw %struct.sglib_hashed_ilist_iterator, ptr %21, i32 0, i32 0
  %23 = load ptr, ptr %6, align 8
  %24 = load ptr, ptr %5, align 8
  %25 = getelementptr inbounds nuw %struct.sglib_hashed_ilist_iterator, ptr %24, i32 0, i32 2
  %26 = load i32, ptr %25, align 8
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds ptr, ptr %23, i64 %27
  %29 = load ptr, ptr %28, align 8
  %30 = load ptr, ptr %5, align 8
  %31 = getelementptr inbounds nuw %struct.sglib_hashed_ilist_iterator, ptr %30, i32 0, i32 3
  %32 = load ptr, ptr %31, align 8
  %33 = load ptr, ptr %5, align 8
  %34 = getelementptr inbounds nuw %struct.sglib_hashed_ilist_iterator, ptr %33, i32 0, i32 4
  %35 = load ptr, ptr %34, align 8
  %36 = call ptr @sglib_ilist_it_init_on_equal(ptr noundef %22, ptr noundef %29, ptr noundef %32, ptr noundef %35)
  store ptr %36, ptr %9, align 8
  %37 = load ptr, ptr %9, align 8
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %4
  %40 = load ptr, ptr %5, align 8
  %41 = call ptr @sglib_hashed_ilist_it_next(ptr noundef %40)
  store ptr %41, ptr %9, align 8
  br label %42

42:                                               ; preds = %39, %4
  %43 = load ptr, ptr %9, align 8
  ret ptr %43
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @sglib_hashed_ilist_it_next(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %4 = load ptr, ptr %2, align 8
  %5 = getelementptr inbounds nuw %struct.sglib_hashed_ilist_iterator, ptr %4, i32 0, i32 0
  %6 = call ptr @sglib_ilist_it_next(ptr noundef %5)
  store ptr %6, ptr %3, align 8
  br label %7

7:                                                ; preds = %18, %1
  %8 = load ptr, ptr %3, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %7
  %11 = load ptr, ptr %2, align 8
  %12 = getelementptr inbounds nuw %struct.sglib_hashed_ilist_iterator, ptr %11, i32 0, i32 2
  %13 = load i32, ptr %12, align 8
  %14 = add nsw i32 %13, 1
  store i32 %14, ptr %12, align 8
  %15 = icmp slt i32 %14, 20
  br label %16

16:                                               ; preds = %10, %7
  %17 = phi i1 [ false, %7 ], [ %15, %10 ]
  br i1 %17, label %18, label %37

18:                                               ; preds = %16
  %19 = load ptr, ptr %2, align 8
  %20 = getelementptr inbounds nuw %struct.sglib_hashed_ilist_iterator, ptr %19, i32 0, i32 0
  %21 = load ptr, ptr %2, align 8
  %22 = getelementptr inbounds nuw %struct.sglib_hashed_ilist_iterator, ptr %21, i32 0, i32 1
  %23 = load ptr, ptr %22, align 8
  %24 = load ptr, ptr %2, align 8
  %25 = getelementptr inbounds nuw %struct.sglib_hashed_ilist_iterator, ptr %24, i32 0, i32 2
  %26 = load i32, ptr %25, align 8
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds ptr, ptr %23, i64 %27
  %29 = load ptr, ptr %28, align 8
  %30 = load ptr, ptr %2, align 8
  %31 = getelementptr inbounds nuw %struct.sglib_hashed_ilist_iterator, ptr %30, i32 0, i32 3
  %32 = load ptr, ptr %31, align 8
  %33 = load ptr, ptr %2, align 8
  %34 = getelementptr inbounds nuw %struct.sglib_hashed_ilist_iterator, ptr %33, i32 0, i32 4
  %35 = load ptr, ptr %34, align 8
  %36 = call ptr @sglib_ilist_it_init_on_equal(ptr noundef %20, ptr noundef %29, ptr noundef %32, ptr noundef %35)
  store ptr %36, ptr %3, align 8
  br label %7, !llvm.loop !52

37:                                               ; preds = %16
  %38 = load ptr, ptr %3, align 8
  ret ptr %38
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @sglib_hashed_ilist_it_init(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = call ptr @sglib_hashed_ilist_it_init_on_equal(ptr noundef %5, ptr noundef %6, ptr noundef null, ptr noundef null)
  ret ptr %7
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @sglib_hashed_ilist_it_current(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds nuw %struct.sglib_hashed_ilist_iterator, ptr %3, i32 0, i32 0
  %5 = call ptr @sglib_ilist_it_current(ptr noundef %4)
  ret ptr %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @sglib_iq_init(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds nuw %struct.iq, ptr %3, i32 0, i32 2
  store i32 0, ptr %4, align 4
  %5 = load ptr, ptr %2, align 8
  %6 = getelementptr inbounds nuw %struct.iq, ptr %5, i32 0, i32 1
  store i32 0, ptr %6, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sglib_iq_is_empty(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds nuw %struct.iq, ptr %3, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = load ptr, ptr %2, align 8
  %7 = getelementptr inbounds nuw %struct.iq, ptr %6, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %5, %8
  %10 = zext i1 %9 to i32
  ret i32 %10
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sglib_iq_is_full(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds nuw %struct.iq, ptr %3, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = load ptr, ptr %2, align 8
  %7 = getelementptr inbounds nuw %struct.iq, ptr %6, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = add nsw i32 %8, 1
  %10 = srem i32 %9, 101
  %11 = icmp eq i32 %5, %10
  %12 = zext i1 %11 to i32
  ret i32 %12
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sglib_iq_first_element(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds nuw %struct.iq, ptr %3, i32 0, i32 0
  %5 = load ptr, ptr %2, align 8
  %6 = getelementptr inbounds nuw %struct.iq, ptr %5, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [101 x i32], ptr %4, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4
  ret i32 %10
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @sglib_iq_first_element_ptr(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds nuw %struct.iq, ptr %3, i32 0, i32 0
  %5 = load ptr, ptr %2, align 8
  %6 = getelementptr inbounds nuw %struct.iq, ptr %5, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [101 x i32], ptr %4, i64 0, i64 %8
  ret ptr %9
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @sglib_iq_add_next(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds nuw %struct.iq, ptr %3, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = load ptr, ptr %2, align 8
  %7 = getelementptr inbounds nuw %struct.iq, ptr %6, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = add nsw i32 %8, 1
  %10 = srem i32 %9, 101
  %11 = icmp eq i32 %5, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  br label %13

13:                                               ; preds = %12, %13
  br label %13

14:                                               ; preds = %1
  %15 = load ptr, ptr %2, align 8
  %16 = getelementptr inbounds nuw %struct.iq, ptr %15, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = add nsw i32 %17, 1
  %19 = srem i32 %18, 101
  %20 = load ptr, ptr %2, align 8
  %21 = getelementptr inbounds nuw %struct.iq, ptr %20, i32 0, i32 2
  store i32 %19, ptr %21, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @sglib_iq_add(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  %5 = load i32, ptr %4, align 4
  %6 = load ptr, ptr %3, align 8
  %7 = getelementptr inbounds nuw %struct.iq, ptr %6, i32 0, i32 0
  %8 = load ptr, ptr %3, align 8
  %9 = getelementptr inbounds nuw %struct.iq, ptr %8, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [101 x i32], ptr %7, i64 0, i64 %11
  store i32 %5, ptr %12, align 4
  %13 = load ptr, ptr %3, align 8
  %14 = getelementptr inbounds nuw %struct.iq, ptr %13, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = load ptr, ptr %3, align 8
  %17 = getelementptr inbounds nuw %struct.iq, ptr %16, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = add nsw i32 %18, 1
  %20 = srem i32 %19, 101
  %21 = icmp eq i32 %15, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  br label %23

23:                                               ; preds = %22, %23
  br label %23

24:                                               ; preds = %2
  %25 = load ptr, ptr %3, align 8
  %26 = getelementptr inbounds nuw %struct.iq, ptr %25, i32 0, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = add nsw i32 %27, 1
  %29 = srem i32 %28, 101
  %30 = load ptr, ptr %3, align 8
  %31 = getelementptr inbounds nuw %struct.iq, ptr %30, i32 0, i32 2
  store i32 %29, ptr %31, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @sglib_iq_delete_first(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds nuw %struct.iq, ptr %3, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = load ptr, ptr %2, align 8
  %7 = getelementptr inbounds nuw %struct.iq, ptr %6, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %5, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  br label %11

11:                                               ; preds = %10, %11
  br label %11

12:                                               ; preds = %1
  %13 = load ptr, ptr %2, align 8
  %14 = getelementptr inbounds nuw %struct.iq, ptr %13, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = add nsw i32 %15, 1
  %17 = srem i32 %16, 101
  %18 = load ptr, ptr %2, align 8
  %19 = getelementptr inbounds nuw %struct.iq, ptr %18, i32 0, i32 1
  store i32 %17, ptr %19, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @sglib_iq_delete(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds nuw %struct.iq, ptr %3, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = load ptr, ptr %2, align 8
  %7 = getelementptr inbounds nuw %struct.iq, ptr %6, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %5, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  br label %11

11:                                               ; preds = %10, %11
  br label %11

12:                                               ; preds = %1
  %13 = load ptr, ptr %2, align 8
  %14 = getelementptr inbounds nuw %struct.iq, ptr %13, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = add nsw i32 %15, 1
  %17 = srem i32 %16, 101
  %18 = load ptr, ptr %2, align 8
  %19 = getelementptr inbounds nuw %struct.iq, ptr %18, i32 0, i32 1
  store i32 %17, ptr %19, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sglib___rbtree_delete_recursive(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %10 = load ptr, ptr %3, align 8
  %11 = load ptr, ptr %10, align 8
  store ptr %11, ptr %5, align 8
  store i32 0, ptr %8, align 4
  %12 = load ptr, ptr %5, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  br label %15

15:                                               ; preds = %14, %15
  br label %15

16:                                               ; preds = %2
  %17 = load ptr, ptr %4, align 8
  %18 = getelementptr inbounds nuw %struct.rbtree, ptr %17, i32 0, i32 0
  %19 = load i32, ptr %18, align 8
  %20 = load ptr, ptr %5, align 8
  %21 = getelementptr inbounds nuw %struct.rbtree, ptr %20, i32 0, i32 0
  %22 = load i32, ptr %21, align 8
  %23 = sub nsw i32 %19, %22
  store i32 %23, ptr %7, align 4
  %24 = load i32, ptr %7, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %16
  %27 = load i32, ptr %7, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %44

29:                                               ; preds = %26
  %30 = load ptr, ptr %4, align 8
  %31 = load ptr, ptr %5, align 8
  %32 = icmp ult ptr %30, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %29, %16
  %34 = load ptr, ptr %5, align 8
  %35 = getelementptr inbounds nuw %struct.rbtree, ptr %34, i32 0, i32 2
  %36 = load ptr, ptr %4, align 8
  %37 = call i32 @sglib___rbtree_delete_recursive(ptr noundef %35, ptr noundef %36)
  store i32 %37, ptr %9, align 4
  %38 = load i32, ptr %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load ptr, ptr %3, align 8
  %42 = call i32 @sglib___rbtree_fix_left_deletion_discrepancy(ptr noundef %41)
  store i32 %42, ptr %8, align 4
  br label %43

43:                                               ; preds = %40, %33
  br label %143

44:                                               ; preds = %29, %26
  %45 = load i32, ptr %7, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %44
  %48 = load i32, ptr %7, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %65

50:                                               ; preds = %47
  %51 = load ptr, ptr %4, align 8
  %52 = load ptr, ptr %5, align 8
  %53 = icmp ugt ptr %51, %52
  br i1 %53, label %54, label %65

54:                                               ; preds = %50, %44
  %55 = load ptr, ptr %5, align 8
  %56 = getelementptr inbounds nuw %struct.rbtree, ptr %55, i32 0, i32 3
  %57 = load ptr, ptr %4, align 8
  %58 = call i32 @sglib___rbtree_delete_recursive(ptr noundef %56, ptr noundef %57)
  store i32 %58, ptr %9, align 4
  %59 = load i32, ptr %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %54
  %62 = load ptr, ptr %3, align 8
  %63 = call i32 @sglib___rbtree_fix_right_deletion_discrepancy(ptr noundef %62)
  store i32 %63, ptr %8, align 4
  br label %64

64:                                               ; preds = %61, %54
  br label %142

65:                                               ; preds = %50, %47
  %66 = load ptr, ptr %4, align 8
  %67 = load ptr, ptr %5, align 8
  %68 = icmp eq ptr %66, %67
  br i1 %68, label %71, label %69

69:                                               ; preds = %65
  br label %70

70:                                               ; preds = %69, %70
  br label %70

71:                                               ; preds = %65
  %72 = load ptr, ptr %5, align 8
  %73 = getelementptr inbounds nuw %struct.rbtree, ptr %72, i32 0, i32 2
  %74 = load ptr, ptr %73, align 8
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %114

76:                                               ; preds = %71
  %77 = load ptr, ptr %5, align 8
  %78 = getelementptr inbounds nuw %struct.rbtree, ptr %77, i32 0, i32 3
  %79 = load ptr, ptr %78, align 8
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %89

81:                                               ; preds = %76
  %82 = load ptr, ptr %3, align 8
  store ptr null, ptr %82, align 8
  %83 = load ptr, ptr %5, align 8
  %84 = getelementptr inbounds nuw %struct.rbtree, ptr %83, i32 0, i32 1
  %85 = load i8, ptr %84, align 4
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 0
  %88 = zext i1 %87 to i32
  store i32 %88, ptr %8, align 4
  br label %113

89:                                               ; preds = %76
  %90 = load ptr, ptr %5, align 8
  %91 = getelementptr inbounds nuw %struct.rbtree, ptr %90, i32 0, i32 1
  %92 = load i8, ptr %91, align 4
  %93 = sext i8 %92 to i32
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %89
  %96 = load ptr, ptr %5, align 8
  %97 = getelementptr inbounds nuw %struct.rbtree, ptr %96, i32 0, i32 3
  %98 = load ptr, ptr %97, align 8
  %99 = getelementptr inbounds nuw %struct.rbtree, ptr %98, i32 0, i32 1
  %100 = load i8, ptr %99, align 4
  %101 = sext i8 %100 to i32
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %95
  store i32 1, ptr %8, align 4
  br label %104

104:                                              ; preds = %103, %95, %89
  %105 = load ptr, ptr %5, align 8
  %106 = getelementptr inbounds nuw %struct.rbtree, ptr %105, i32 0, i32 3
  %107 = load ptr, ptr %106, align 8
  %108 = getelementptr inbounds nuw %struct.rbtree, ptr %107, i32 0, i32 1
  store i8 0, ptr %108, align 4
  %109 = load ptr, ptr %5, align 8
  %110 = getelementptr inbounds nuw %struct.rbtree, ptr %109, i32 0, i32 3
  %111 = load ptr, ptr %110, align 8
  %112 = load ptr, ptr %3, align 8
  store ptr %111, ptr %112, align 8
  br label %113

113:                                              ; preds = %104, %81
  br label %141

114:                                              ; preds = %71
  %115 = load ptr, ptr %5, align 8
  %116 = getelementptr inbounds nuw %struct.rbtree, ptr %115, i32 0, i32 2
  %117 = call i32 @sglib___rbtree_delete_rightmost_leaf(ptr noundef %116, ptr noundef %6)
  store i32 %117, ptr %9, align 4
  %118 = load ptr, ptr %5, align 8
  %119 = getelementptr inbounds nuw %struct.rbtree, ptr %118, i32 0, i32 2
  %120 = load ptr, ptr %119, align 8
  %121 = load ptr, ptr %6, align 8
  %122 = getelementptr inbounds nuw %struct.rbtree, ptr %121, i32 0, i32 2
  store ptr %120, ptr %122, align 8
  %123 = load ptr, ptr %5, align 8
  %124 = getelementptr inbounds nuw %struct.rbtree, ptr %123, i32 0, i32 3
  %125 = load ptr, ptr %124, align 8
  %126 = load ptr, ptr %6, align 8
  %127 = getelementptr inbounds nuw %struct.rbtree, ptr %126, i32 0, i32 3
  store ptr %125, ptr %127, align 8
  %128 = load ptr, ptr %5, align 8
  %129 = getelementptr inbounds nuw %struct.rbtree, ptr %128, i32 0, i32 1
  %130 = load i8, ptr %129, align 4
  %131 = load ptr, ptr %6, align 8
  %132 = getelementptr inbounds nuw %struct.rbtree, ptr %131, i32 0, i32 1
  store i8 %130, ptr %132, align 4
  %133 = load ptr, ptr %6, align 8
  %134 = load ptr, ptr %3, align 8
  store ptr %133, ptr %134, align 8
  %135 = load i32, ptr %9, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %114
  %138 = load ptr, ptr %3, align 8
  %139 = call i32 @sglib___rbtree_fix_left_deletion_discrepancy(ptr noundef %138)
  store i32 %139, ptr %8, align 4
  br label %140

140:                                              ; preds = %137, %114
  br label %141

141:                                              ; preds = %140, %113
  br label %142

142:                                              ; preds = %141, %64
  br label %143

143:                                              ; preds = %142, %43
  br label %144

144:                                              ; preds = %143
  %145 = load i32, ptr %8, align 4
  ret i32 %145
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @sglib___rbtree_fix_left_deletion_discrepancy(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %16 = load ptr, ptr %2, align 8
  %17 = load ptr, ptr %16, align 8
  store ptr %17, ptr %5, align 8
  store ptr %17, ptr %4, align 8
  %18 = load ptr, ptr %4, align 8
  %19 = icmp ne ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %1
  br label %21

21:                                               ; preds = %20, %21
  br label %21

22:                                               ; preds = %1
  %23 = load ptr, ptr %5, align 8
  %24 = getelementptr inbounds nuw %struct.rbtree, ptr %23, i32 0, i32 2
  %25 = load ptr, ptr %24, align 8
  store ptr %25, ptr %9, align 8
  %26 = load ptr, ptr %4, align 8
  %27 = getelementptr inbounds nuw %struct.rbtree, ptr %26, i32 0, i32 3
  %28 = load ptr, ptr %27, align 8
  store ptr %28, ptr %6, align 8
  %29 = load ptr, ptr %6, align 8
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %42

31:                                               ; preds = %22
  %32 = load ptr, ptr %4, align 8
  %33 = getelementptr inbounds nuw %struct.rbtree, ptr %32, i32 0, i32 1
  %34 = load i8, ptr %33, align 4
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %39, label %37

37:                                               ; preds = %31
  br label %38

38:                                               ; preds = %37, %38
  br label %38

39:                                               ; preds = %31
  %40 = load ptr, ptr %4, align 8
  %41 = getelementptr inbounds nuw %struct.rbtree, ptr %40, i32 0, i32 1
  store i8 0, ptr %41, align 4
  store i32 0, ptr %3, align 4
  br label %394

42:                                               ; preds = %22
  %43 = load ptr, ptr %6, align 8
  %44 = getelementptr inbounds nuw %struct.rbtree, ptr %43, i32 0, i32 3
  %45 = load ptr, ptr %44, align 8
  store ptr %45, ptr %10, align 8
  %46 = load ptr, ptr %6, align 8
  %47 = getelementptr inbounds nuw %struct.rbtree, ptr %46, i32 0, i32 2
  %48 = load ptr, ptr %47, align 8
  store ptr %48, ptr %11, align 8
  %49 = load ptr, ptr %6, align 8
  %50 = getelementptr inbounds nuw %struct.rbtree, ptr %49, i32 0, i32 1
  %51 = load i8, ptr %50, align 4
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %54, label %230

54:                                               ; preds = %42
  %55 = load ptr, ptr %11, align 8
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %68

57:                                               ; preds = %54
  %58 = load ptr, ptr %6, align 8
  %59 = load ptr, ptr %2, align 8
  store ptr %58, ptr %59, align 8
  %60 = load ptr, ptr %6, align 8
  %61 = getelementptr inbounds nuw %struct.rbtree, ptr %60, i32 0, i32 1
  store i8 0, ptr %61, align 4
  %62 = load ptr, ptr %5, align 8
  %63 = load ptr, ptr %6, align 8
  %64 = getelementptr inbounds nuw %struct.rbtree, ptr %63, i32 0, i32 2
  store ptr %62, ptr %64, align 8
  %65 = load ptr, ptr %11, align 8
  %66 = load ptr, ptr %5, align 8
  %67 = getelementptr inbounds nuw %struct.rbtree, ptr %66, i32 0, i32 3
  store ptr %65, ptr %67, align 8
  store i32 0, ptr %3, align 4
  br label %229

68:                                               ; preds = %54
  %69 = load ptr, ptr %11, align 8
  store ptr %69, ptr %7, align 8
  %70 = load ptr, ptr %7, align 8
  %71 = icmp ne ptr %70, null
  br i1 %71, label %72, label %78

72:                                               ; preds = %68
  %73 = load ptr, ptr %7, align 8
  %74 = getelementptr inbounds nuw %struct.rbtree, ptr %73, i32 0, i32 1
  %75 = load i8, ptr %74, align 4
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %72, %68
  br label %79

79:                                               ; preds = %78, %79
  br label %79

80:                                               ; preds = %72
  %81 = load ptr, ptr %7, align 8
  %82 = getelementptr inbounds nuw %struct.rbtree, ptr %81, i32 0, i32 3
  %83 = load ptr, ptr %82, align 8
  store ptr %83, ptr %12, align 8
  %84 = load ptr, ptr %7, align 8
  %85 = getelementptr inbounds nuw %struct.rbtree, ptr %84, i32 0, i32 2
  %86 = load ptr, ptr %85, align 8
  store ptr %86, ptr %13, align 8
  %87 = load ptr, ptr %12, align 8
  %88 = icmp eq ptr %87, null
  br i1 %88, label %95, label %89

89:                                               ; preds = %80
  %90 = load ptr, ptr %12, align 8
  %91 = getelementptr inbounds nuw %struct.rbtree, ptr %90, i32 0, i32 1
  %92 = load i8, ptr %91, align 4
  %93 = sext i8 %92 to i32
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %117

95:                                               ; preds = %89, %80
  %96 = load ptr, ptr %13, align 8
  %97 = icmp eq ptr %96, null
  br i1 %97, label %104, label %98

98:                                               ; preds = %95
  %99 = load ptr, ptr %13, align 8
  %100 = getelementptr inbounds nuw %struct.rbtree, ptr %99, i32 0, i32 1
  %101 = load i8, ptr %100, align 4
  %102 = sext i8 %101 to i32
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %117

104:                                              ; preds = %98, %95
  %105 = load ptr, ptr %6, align 8
  %106 = load ptr, ptr %2, align 8
  store ptr %105, ptr %106, align 8
  %107 = load ptr, ptr %5, align 8
  %108 = load ptr, ptr %6, align 8
  %109 = getelementptr inbounds nuw %struct.rbtree, ptr %108, i32 0, i32 2
  store ptr %107, ptr %109, align 8
  %110 = load ptr, ptr %6, align 8
  %111 = getelementptr inbounds nuw %struct.rbtree, ptr %110, i32 0, i32 1
  store i8 0, ptr %111, align 4
  %112 = load ptr, ptr %7, align 8
  %113 = load ptr, ptr %5, align 8
  %114 = getelementptr inbounds nuw %struct.rbtree, ptr %113, i32 0, i32 3
  store ptr %112, ptr %114, align 8
  %115 = load ptr, ptr %7, align 8
  %116 = getelementptr inbounds nuw %struct.rbtree, ptr %115, i32 0, i32 1
  store i8 1, ptr %116, align 4
  store i32 0, ptr %3, align 4
  br label %228

117:                                              ; preds = %98, %89
  %118 = load ptr, ptr %12, align 8
  %119 = icmp ne ptr %118, null
  br i1 %119, label %120, label %180

120:                                              ; preds = %117
  %121 = load ptr, ptr %12, align 8
  %122 = getelementptr inbounds nuw %struct.rbtree, ptr %121, i32 0, i32 1
  %123 = load i8, ptr %122, align 4
  %124 = sext i8 %123 to i32
  %125 = icmp eq i32 %124, 1
  br i1 %125, label %126, label %180

126:                                              ; preds = %120
  %127 = load ptr, ptr %13, align 8
  %128 = icmp ne ptr %127, null
  br i1 %128, label %129, label %159

129:                                              ; preds = %126
  %130 = load ptr, ptr %13, align 8
  %131 = getelementptr inbounds nuw %struct.rbtree, ptr %130, i32 0, i32 1
  %132 = load i8, ptr %131, align 4
  %133 = sext i8 %132 to i32
  %134 = icmp eq i32 %133, 1
  br i1 %134, label %135, label %159

135:                                              ; preds = %129
  %136 = load ptr, ptr %13, align 8
  store ptr %136, ptr %8, align 8
  %137 = load ptr, ptr %8, align 8
  %138 = getelementptr inbounds nuw %struct.rbtree, ptr %137, i32 0, i32 3
  %139 = load ptr, ptr %138, align 8
  store ptr %139, ptr %14, align 8
  %140 = load ptr, ptr %8, align 8
  %141 = getelementptr inbounds nuw %struct.rbtree, ptr %140, i32 0, i32 2
  %142 = load ptr, ptr %141, align 8
  store ptr %142, ptr %15, align 8
  %143 = load ptr, ptr %8, align 8
  %144 = load ptr, ptr %2, align 8
  store ptr %143, ptr %144, align 8
  %145 = load ptr, ptr %8, align 8
  %146 = getelementptr inbounds nuw %struct.rbtree, ptr %145, i32 0, i32 1
  store i8 0, ptr %146, align 4
  %147 = load ptr, ptr %6, align 8
  %148 = load ptr, ptr %8, align 8
  %149 = getelementptr inbounds nuw %struct.rbtree, ptr %148, i32 0, i32 3
  store ptr %147, ptr %149, align 8
  %150 = load ptr, ptr %14, align 8
  %151 = load ptr, ptr %7, align 8
  %152 = getelementptr inbounds nuw %struct.rbtree, ptr %151, i32 0, i32 2
  store ptr %150, ptr %152, align 8
  %153 = load ptr, ptr %5, align 8
  %154 = load ptr, ptr %8, align 8
  %155 = getelementptr inbounds nuw %struct.rbtree, ptr %154, i32 0, i32 2
  store ptr %153, ptr %155, align 8
  %156 = load ptr, ptr %15, align 8
  %157 = load ptr, ptr %5, align 8
  %158 = getelementptr inbounds nuw %struct.rbtree, ptr %157, i32 0, i32 3
  store ptr %156, ptr %158, align 8
  store i32 0, ptr %3, align 4
  br label %179

159:                                              ; preds = %129, %126
  %160 = load ptr, ptr %7, align 8
  %161 = load ptr, ptr %2, align 8
  store ptr %160, ptr %161, align 8
  %162 = load ptr, ptr %6, align 8
  %163 = load ptr, ptr %7, align 8
  %164 = getelementptr inbounds nuw %struct.rbtree, ptr %163, i32 0, i32 3
  store ptr %162, ptr %164, align 8
  %165 = load ptr, ptr %5, align 8
  %166 = load ptr, ptr %7, align 8
  %167 = getelementptr inbounds nuw %struct.rbtree, ptr %166, i32 0, i32 2
  store ptr %165, ptr %167, align 8
  %168 = load ptr, ptr %10, align 8
  %169 = load ptr, ptr %6, align 8
  %170 = getelementptr inbounds nuw %struct.rbtree, ptr %169, i32 0, i32 3
  store ptr %168, ptr %170, align 8
  %171 = load ptr, ptr %12, align 8
  %172 = load ptr, ptr %6, align 8
  %173 = getelementptr inbounds nuw %struct.rbtree, ptr %172, i32 0, i32 2
  store ptr %171, ptr %173, align 8
  %174 = load ptr, ptr %13, align 8
  %175 = load ptr, ptr %5, align 8
  %176 = getelementptr inbounds nuw %struct.rbtree, ptr %175, i32 0, i32 3
  store ptr %174, ptr %176, align 8
  %177 = load ptr, ptr %12, align 8
  %178 = getelementptr inbounds nuw %struct.rbtree, ptr %177, i32 0, i32 1
  store i8 0, ptr %178, align 4
  store i32 0, ptr %3, align 4
  br label %179

179:                                              ; preds = %159, %135
  br label %227

180:                                              ; preds = %120, %117
  %181 = load ptr, ptr %13, align 8
  %182 = icmp ne ptr %181, null
  br i1 %182, label %183, label %224

183:                                              ; preds = %180
  %184 = load ptr, ptr %13, align 8
  %185 = getelementptr inbounds nuw %struct.rbtree, ptr %184, i32 0, i32 1
  %186 = load i8, ptr %185, align 4
  %187 = sext i8 %186 to i32
  %188 = icmp eq i32 %187, 1
  br i1 %188, label %189, label %224

189:                                              ; preds = %183
  %190 = load ptr, ptr %12, align 8
  %191 = icmp eq ptr %190, null
  br i1 %191, label %200, label %192

192:                                              ; preds = %189
  %193 = load ptr, ptr %12, align 8
  %194 = getelementptr inbounds nuw %struct.rbtree, ptr %193, i32 0, i32 1
  %195 = load i8, ptr %194, align 4
  %196 = sext i8 %195 to i32
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %200, label %198

198:                                              ; preds = %192
  br label %199

199:                                              ; preds = %198, %199
  br label %199

200:                                              ; preds = %192, %189
  %201 = load ptr, ptr %13, align 8
  store ptr %201, ptr %8, align 8
  %202 = load ptr, ptr %8, align 8
  %203 = getelementptr inbounds nuw %struct.rbtree, ptr %202, i32 0, i32 3
  %204 = load ptr, ptr %203, align 8
  store ptr %204, ptr %14, align 8
  %205 = load ptr, ptr %8, align 8
  %206 = getelementptr inbounds nuw %struct.rbtree, ptr %205, i32 0, i32 2
  %207 = load ptr, ptr %206, align 8
  store ptr %207, ptr %15, align 8
  %208 = load ptr, ptr %8, align 8
  %209 = load ptr, ptr %2, align 8
  store ptr %208, ptr %209, align 8
  %210 = load ptr, ptr %8, align 8
  %211 = getelementptr inbounds nuw %struct.rbtree, ptr %210, i32 0, i32 1
  store i8 0, ptr %211, align 4
  %212 = load ptr, ptr %6, align 8
  %213 = load ptr, ptr %8, align 8
  %214 = getelementptr inbounds nuw %struct.rbtree, ptr %213, i32 0, i32 3
  store ptr %212, ptr %214, align 8
  %215 = load ptr, ptr %14, align 8
  %216 = load ptr, ptr %7, align 8
  %217 = getelementptr inbounds nuw %struct.rbtree, ptr %216, i32 0, i32 2
  store ptr %215, ptr %217, align 8
  %218 = load ptr, ptr %5, align 8
  %219 = load ptr, ptr %8, align 8
  %220 = getelementptr inbounds nuw %struct.rbtree, ptr %219, i32 0, i32 2
  store ptr %218, ptr %220, align 8
  %221 = load ptr, ptr %15, align 8
  %222 = load ptr, ptr %5, align 8
  %223 = getelementptr inbounds nuw %struct.rbtree, ptr %222, i32 0, i32 3
  store ptr %221, ptr %223, align 8
  store i32 0, ptr %3, align 4
  br label %226

224:                                              ; preds = %183, %180
  br label %225

225:                                              ; preds = %224, %225
  br label %225

226:                                              ; preds = %200
  br label %227

227:                                              ; preds = %226, %179
  br label %228

228:                                              ; preds = %227, %104
  br label %229

229:                                              ; preds = %228, %57
  br label %393

230:                                              ; preds = %42
  %231 = load ptr, ptr %10, align 8
  %232 = icmp eq ptr %231, null
  br i1 %232, label %239, label %233

233:                                              ; preds = %230
  %234 = load ptr, ptr %10, align 8
  %235 = getelementptr inbounds nuw %struct.rbtree, ptr %234, i32 0, i32 1
  %236 = load i8, ptr %235, align 4
  %237 = sext i8 %236 to i32
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %239, label %259

239:                                              ; preds = %233, %230
  %240 = load ptr, ptr %11, align 8
  %241 = icmp eq ptr %240, null
  br i1 %241, label %248, label %242

242:                                              ; preds = %239
  %243 = load ptr, ptr %11, align 8
  %244 = getelementptr inbounds nuw %struct.rbtree, ptr %243, i32 0, i32 1
  %245 = load i8, ptr %244, align 4
  %246 = sext i8 %245 to i32
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %248, label %259

248:                                              ; preds = %242, %239
  %249 = load ptr, ptr %5, align 8
  %250 = getelementptr inbounds nuw %struct.rbtree, ptr %249, i32 0, i32 1
  %251 = load i8, ptr %250, align 4
  %252 = sext i8 %251 to i32
  %253 = icmp eq i32 %252, 0
  %254 = zext i1 %253 to i32
  store i32 %254, ptr %3, align 4
  %255 = load ptr, ptr %5, align 8
  %256 = getelementptr inbounds nuw %struct.rbtree, ptr %255, i32 0, i32 1
  store i8 0, ptr %256, align 4
  %257 = load ptr, ptr %6, align 8
  %258 = getelementptr inbounds nuw %struct.rbtree, ptr %257, i32 0, i32 1
  store i8 1, ptr %258, align 4
  br label %392

259:                                              ; preds = %242, %233
  %260 = load ptr, ptr %10, align 8
  %261 = icmp ne ptr %260, null
  br i1 %261, label %262, label %351

262:                                              ; preds = %259
  %263 = load ptr, ptr %10, align 8
  %264 = getelementptr inbounds nuw %struct.rbtree, ptr %263, i32 0, i32 1
  %265 = load i8, ptr %264, align 4
  %266 = sext i8 %265 to i32
  %267 = icmp eq i32 %266, 1
  br i1 %267, label %268, label %351

268:                                              ; preds = %262
  %269 = load ptr, ptr %11, align 8
  %270 = icmp eq ptr %269, null
  br i1 %270, label %277, label %271

271:                                              ; preds = %268
  %272 = load ptr, ptr %11, align 8
  %273 = getelementptr inbounds nuw %struct.rbtree, ptr %272, i32 0, i32 1
  %274 = load i8, ptr %273, align 4
  %275 = sext i8 %274 to i32
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %277, label %295

277:                                              ; preds = %271, %268
  %278 = load ptr, ptr %6, align 8
  %279 = load ptr, ptr %2, align 8
  store ptr %278, ptr %279, align 8
  %280 = load ptr, ptr %5, align 8
  %281 = getelementptr inbounds nuw %struct.rbtree, ptr %280, i32 0, i32 1
  %282 = load i8, ptr %281, align 4
  %283 = load ptr, ptr %6, align 8
  %284 = getelementptr inbounds nuw %struct.rbtree, ptr %283, i32 0, i32 1
  store i8 %282, ptr %284, align 4
  %285 = load ptr, ptr %5, align 8
  %286 = getelementptr inbounds nuw %struct.rbtree, ptr %285, i32 0, i32 1
  store i8 0, ptr %286, align 4
  %287 = load ptr, ptr %5, align 8
  %288 = load ptr, ptr %6, align 8
  %289 = getelementptr inbounds nuw %struct.rbtree, ptr %288, i32 0, i32 2
  store ptr %287, ptr %289, align 8
  %290 = load ptr, ptr %11, align 8
  %291 = load ptr, ptr %5, align 8
  %292 = getelementptr inbounds nuw %struct.rbtree, ptr %291, i32 0, i32 3
  store ptr %290, ptr %292, align 8
  %293 = load ptr, ptr %10, align 8
  %294 = getelementptr inbounds nuw %struct.rbtree, ptr %293, i32 0, i32 1
  store i8 0, ptr %294, align 4
  store i32 0, ptr %3, align 4
  br label %350

295:                                              ; preds = %271
  %296 = load ptr, ptr %10, align 8
  %297 = icmp ne ptr %296, null
  br i1 %297, label %300, label %298

298:                                              ; preds = %295
  br label %299

299:                                              ; preds = %298, %299
  br label %299

300:                                              ; preds = %295
  %301 = load ptr, ptr %11, align 8
  %302 = icmp ne ptr %301, null
  br i1 %302, label %305, label %303

303:                                              ; preds = %300
  br label %304

304:                                              ; preds = %303, %304
  br label %304

305:                                              ; preds = %300
  %306 = load ptr, ptr %10, align 8
  %307 = getelementptr inbounds nuw %struct.rbtree, ptr %306, i32 0, i32 1
  %308 = load i8, ptr %307, align 4
  %309 = sext i8 %308 to i32
  %310 = icmp eq i32 %309, 1
  br i1 %310, label %313, label %311

311:                                              ; preds = %305
  br label %312

312:                                              ; preds = %311, %312
  br label %312

313:                                              ; preds = %305
  %314 = load ptr, ptr %11, align 8
  %315 = getelementptr inbounds nuw %struct.rbtree, ptr %314, i32 0, i32 1
  %316 = load i8, ptr %315, align 4
  %317 = sext i8 %316 to i32
  %318 = icmp eq i32 %317, 1
  br i1 %318, label %321, label %319

319:                                              ; preds = %313
  br label %320

320:                                              ; preds = %319, %320
  br label %320

321:                                              ; preds = %313
  %322 = load ptr, ptr %11, align 8
  store ptr %322, ptr %7, align 8
  %323 = load ptr, ptr %7, align 8
  %324 = getelementptr inbounds nuw %struct.rbtree, ptr %323, i32 0, i32 3
  %325 = load ptr, ptr %324, align 8
  store ptr %325, ptr %12, align 8
  %326 = load ptr, ptr %7, align 8
  %327 = getelementptr inbounds nuw %struct.rbtree, ptr %326, i32 0, i32 2
  %328 = load ptr, ptr %327, align 8
  store ptr %328, ptr %13, align 8
  %329 = load ptr, ptr %7, align 8
  %330 = load ptr, ptr %2, align 8
  store ptr %329, ptr %330, align 8
  %331 = load ptr, ptr %5, align 8
  %332 = getelementptr inbounds nuw %struct.rbtree, ptr %331, i32 0, i32 1
  %333 = load i8, ptr %332, align 4
  %334 = load ptr, ptr %7, align 8
  %335 = getelementptr inbounds nuw %struct.rbtree, ptr %334, i32 0, i32 1
  store i8 %333, ptr %335, align 4
  %336 = load ptr, ptr %5, align 8
  %337 = getelementptr inbounds nuw %struct.rbtree, ptr %336, i32 0, i32 1
  store i8 0, ptr %337, align 4
  %338 = load ptr, ptr %6, align 8
  %339 = load ptr, ptr %7, align 8
  %340 = getelementptr inbounds nuw %struct.rbtree, ptr %339, i32 0, i32 3
  store ptr %338, ptr %340, align 8
  %341 = load ptr, ptr %5, align 8
  %342 = load ptr, ptr %7, align 8
  %343 = getelementptr inbounds nuw %struct.rbtree, ptr %342, i32 0, i32 2
  store ptr %341, ptr %343, align 8
  %344 = load ptr, ptr %12, align 8
  %345 = load ptr, ptr %6, align 8
  %346 = getelementptr inbounds nuw %struct.rbtree, ptr %345, i32 0, i32 2
  store ptr %344, ptr %346, align 8
  %347 = load ptr, ptr %13, align 8
  %348 = load ptr, ptr %5, align 8
  %349 = getelementptr inbounds nuw %struct.rbtree, ptr %348, i32 0, i32 3
  store ptr %347, ptr %349, align 8
  store i32 0, ptr %3, align 4
  br label %350

350:                                              ; preds = %321, %277
  br label %391

351:                                              ; preds = %262, %259
  %352 = load ptr, ptr %11, align 8
  %353 = icmp ne ptr %352, null
  br i1 %353, label %354, label %360

354:                                              ; preds = %351
  %355 = load ptr, ptr %11, align 8
  %356 = getelementptr inbounds nuw %struct.rbtree, ptr %355, i32 0, i32 1
  %357 = load i8, ptr %356, align 4
  %358 = sext i8 %357 to i32
  %359 = icmp eq i32 %358, 1
  br i1 %359, label %362, label %360

360:                                              ; preds = %354, %351
  br label %361

361:                                              ; preds = %360, %361
  br label %361

362:                                              ; preds = %354
  %363 = load ptr, ptr %11, align 8
  store ptr %363, ptr %7, align 8
  %364 = load ptr, ptr %7, align 8
  %365 = getelementptr inbounds nuw %struct.rbtree, ptr %364, i32 0, i32 3
  %366 = load ptr, ptr %365, align 8
  store ptr %366, ptr %12, align 8
  %367 = load ptr, ptr %7, align 8
  %368 = getelementptr inbounds nuw %struct.rbtree, ptr %367, i32 0, i32 2
  %369 = load ptr, ptr %368, align 8
  store ptr %369, ptr %13, align 8
  %370 = load ptr, ptr %7, align 8
  %371 = load ptr, ptr %2, align 8
  store ptr %370, ptr %371, align 8
  %372 = load ptr, ptr %5, align 8
  %373 = getelementptr inbounds nuw %struct.rbtree, ptr %372, i32 0, i32 1
  %374 = load i8, ptr %373, align 4
  %375 = load ptr, ptr %7, align 8
  %376 = getelementptr inbounds nuw %struct.rbtree, ptr %375, i32 0, i32 1
  store i8 %374, ptr %376, align 4
  %377 = load ptr, ptr %5, align 8
  %378 = getelementptr inbounds nuw %struct.rbtree, ptr %377, i32 0, i32 1
  store i8 0, ptr %378, align 4
  %379 = load ptr, ptr %6, align 8
  %380 = load ptr, ptr %7, align 8
  %381 = getelementptr inbounds nuw %struct.rbtree, ptr %380, i32 0, i32 3
  store ptr %379, ptr %381, align 8
  %382 = load ptr, ptr %5, align 8
  %383 = load ptr, ptr %7, align 8
  %384 = getelementptr inbounds nuw %struct.rbtree, ptr %383, i32 0, i32 2
  store ptr %382, ptr %384, align 8
  %385 = load ptr, ptr %12, align 8
  %386 = load ptr, ptr %6, align 8
  %387 = getelementptr inbounds nuw %struct.rbtree, ptr %386, i32 0, i32 2
  store ptr %385, ptr %387, align 8
  %388 = load ptr, ptr %13, align 8
  %389 = load ptr, ptr %5, align 8
  %390 = getelementptr inbounds nuw %struct.rbtree, ptr %389, i32 0, i32 3
  store ptr %388, ptr %390, align 8
  store i32 0, ptr %3, align 4
  br label %391

391:                                              ; preds = %362, %350
  br label %392

392:                                              ; preds = %391, %248
  br label %393

393:                                              ; preds = %392, %229
  br label %394

394:                                              ; preds = %393, %39
  %395 = load i32, ptr %3, align 4
  ret i32 %395
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @sglib___rbtree_fix_right_deletion_discrepancy(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %16 = load ptr, ptr %2, align 8
  %17 = load ptr, ptr %16, align 8
  store ptr %17, ptr %5, align 8
  store ptr %17, ptr %4, align 8
  %18 = load ptr, ptr %4, align 8
  %19 = icmp ne ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %1
  br label %21

21:                                               ; preds = %20, %21
  br label %21

22:                                               ; preds = %1
  %23 = load ptr, ptr %5, align 8
  %24 = getelementptr inbounds nuw %struct.rbtree, ptr %23, i32 0, i32 3
  %25 = load ptr, ptr %24, align 8
  store ptr %25, ptr %9, align 8
  %26 = load ptr, ptr %4, align 8
  %27 = getelementptr inbounds nuw %struct.rbtree, ptr %26, i32 0, i32 2
  %28 = load ptr, ptr %27, align 8
  store ptr %28, ptr %6, align 8
  %29 = load ptr, ptr %6, align 8
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %42

31:                                               ; preds = %22
  %32 = load ptr, ptr %4, align 8
  %33 = getelementptr inbounds nuw %struct.rbtree, ptr %32, i32 0, i32 1
  %34 = load i8, ptr %33, align 4
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %39, label %37

37:                                               ; preds = %31
  br label %38

38:                                               ; preds = %37, %38
  br label %38

39:                                               ; preds = %31
  %40 = load ptr, ptr %4, align 8
  %41 = getelementptr inbounds nuw %struct.rbtree, ptr %40, i32 0, i32 1
  store i8 0, ptr %41, align 4
  store i32 0, ptr %3, align 4
  br label %394

42:                                               ; preds = %22
  %43 = load ptr, ptr %6, align 8
  %44 = getelementptr inbounds nuw %struct.rbtree, ptr %43, i32 0, i32 2
  %45 = load ptr, ptr %44, align 8
  store ptr %45, ptr %10, align 8
  %46 = load ptr, ptr %6, align 8
  %47 = getelementptr inbounds nuw %struct.rbtree, ptr %46, i32 0, i32 3
  %48 = load ptr, ptr %47, align 8
  store ptr %48, ptr %11, align 8
  %49 = load ptr, ptr %6, align 8
  %50 = getelementptr inbounds nuw %struct.rbtree, ptr %49, i32 0, i32 1
  %51 = load i8, ptr %50, align 4
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %54, label %230

54:                                               ; preds = %42
  %55 = load ptr, ptr %11, align 8
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %68

57:                                               ; preds = %54
  %58 = load ptr, ptr %6, align 8
  %59 = load ptr, ptr %2, align 8
  store ptr %58, ptr %59, align 8
  %60 = load ptr, ptr %6, align 8
  %61 = getelementptr inbounds nuw %struct.rbtree, ptr %60, i32 0, i32 1
  store i8 0, ptr %61, align 4
  %62 = load ptr, ptr %5, align 8
  %63 = load ptr, ptr %6, align 8
  %64 = getelementptr inbounds nuw %struct.rbtree, ptr %63, i32 0, i32 3
  store ptr %62, ptr %64, align 8
  %65 = load ptr, ptr %11, align 8
  %66 = load ptr, ptr %5, align 8
  %67 = getelementptr inbounds nuw %struct.rbtree, ptr %66, i32 0, i32 2
  store ptr %65, ptr %67, align 8
  store i32 0, ptr %3, align 4
  br label %229

68:                                               ; preds = %54
  %69 = load ptr, ptr %11, align 8
  store ptr %69, ptr %7, align 8
  %70 = load ptr, ptr %7, align 8
  %71 = icmp ne ptr %70, null
  br i1 %71, label %72, label %78

72:                                               ; preds = %68
  %73 = load ptr, ptr %7, align 8
  %74 = getelementptr inbounds nuw %struct.rbtree, ptr %73, i32 0, i32 1
  %75 = load i8, ptr %74, align 4
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %72, %68
  br label %79

79:                                               ; preds = %78, %79
  br label %79

80:                                               ; preds = %72
  %81 = load ptr, ptr %7, align 8
  %82 = getelementptr inbounds nuw %struct.rbtree, ptr %81, i32 0, i32 2
  %83 = load ptr, ptr %82, align 8
  store ptr %83, ptr %12, align 8
  %84 = load ptr, ptr %7, align 8
  %85 = getelementptr inbounds nuw %struct.rbtree, ptr %84, i32 0, i32 3
  %86 = load ptr, ptr %85, align 8
  store ptr %86, ptr %13, align 8
  %87 = load ptr, ptr %12, align 8
  %88 = icmp eq ptr %87, null
  br i1 %88, label %95, label %89

89:                                               ; preds = %80
  %90 = load ptr, ptr %12, align 8
  %91 = getelementptr inbounds nuw %struct.rbtree, ptr %90, i32 0, i32 1
  %92 = load i8, ptr %91, align 4
  %93 = sext i8 %92 to i32
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %117

95:                                               ; preds = %89, %80
  %96 = load ptr, ptr %13, align 8
  %97 = icmp eq ptr %96, null
  br i1 %97, label %104, label %98

98:                                               ; preds = %95
  %99 = load ptr, ptr %13, align 8
  %100 = getelementptr inbounds nuw %struct.rbtree, ptr %99, i32 0, i32 1
  %101 = load i8, ptr %100, align 4
  %102 = sext i8 %101 to i32
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %117

104:                                              ; preds = %98, %95
  %105 = load ptr, ptr %6, align 8
  %106 = load ptr, ptr %2, align 8
  store ptr %105, ptr %106, align 8
  %107 = load ptr, ptr %5, align 8
  %108 = load ptr, ptr %6, align 8
  %109 = getelementptr inbounds nuw %struct.rbtree, ptr %108, i32 0, i32 3
  store ptr %107, ptr %109, align 8
  %110 = load ptr, ptr %6, align 8
  %111 = getelementptr inbounds nuw %struct.rbtree, ptr %110, i32 0, i32 1
  store i8 0, ptr %111, align 4
  %112 = load ptr, ptr %7, align 8
  %113 = load ptr, ptr %5, align 8
  %114 = getelementptr inbounds nuw %struct.rbtree, ptr %113, i32 0, i32 2
  store ptr %112, ptr %114, align 8
  %115 = load ptr, ptr %7, align 8
  %116 = getelementptr inbounds nuw %struct.rbtree, ptr %115, i32 0, i32 1
  store i8 1, ptr %116, align 4
  store i32 0, ptr %3, align 4
  br label %228

117:                                              ; preds = %98, %89
  %118 = load ptr, ptr %12, align 8
  %119 = icmp ne ptr %118, null
  br i1 %119, label %120, label %180

120:                                              ; preds = %117
  %121 = load ptr, ptr %12, align 8
  %122 = getelementptr inbounds nuw %struct.rbtree, ptr %121, i32 0, i32 1
  %123 = load i8, ptr %122, align 4
  %124 = sext i8 %123 to i32
  %125 = icmp eq i32 %124, 1
  br i1 %125, label %126, label %180

126:                                              ; preds = %120
  %127 = load ptr, ptr %13, align 8
  %128 = icmp ne ptr %127, null
  br i1 %128, label %129, label %159

129:                                              ; preds = %126
  %130 = load ptr, ptr %13, align 8
  %131 = getelementptr inbounds nuw %struct.rbtree, ptr %130, i32 0, i32 1
  %132 = load i8, ptr %131, align 4
  %133 = sext i8 %132 to i32
  %134 = icmp eq i32 %133, 1
  br i1 %134, label %135, label %159

135:                                              ; preds = %129
  %136 = load ptr, ptr %13, align 8
  store ptr %136, ptr %8, align 8
  %137 = load ptr, ptr %8, align 8
  %138 = getelementptr inbounds nuw %struct.rbtree, ptr %137, i32 0, i32 2
  %139 = load ptr, ptr %138, align 8
  store ptr %139, ptr %14, align 8
  %140 = load ptr, ptr %8, align 8
  %141 = getelementptr inbounds nuw %struct.rbtree, ptr %140, i32 0, i32 3
  %142 = load ptr, ptr %141, align 8
  store ptr %142, ptr %15, align 8
  %143 = load ptr, ptr %8, align 8
  %144 = load ptr, ptr %2, align 8
  store ptr %143, ptr %144, align 8
  %145 = load ptr, ptr %8, align 8
  %146 = getelementptr inbounds nuw %struct.rbtree, ptr %145, i32 0, i32 1
  store i8 0, ptr %146, align 4
  %147 = load ptr, ptr %6, align 8
  %148 = load ptr, ptr %8, align 8
  %149 = getelementptr inbounds nuw %struct.rbtree, ptr %148, i32 0, i32 2
  store ptr %147, ptr %149, align 8
  %150 = load ptr, ptr %14, align 8
  %151 = load ptr, ptr %7, align 8
  %152 = getelementptr inbounds nuw %struct.rbtree, ptr %151, i32 0, i32 3
  store ptr %150, ptr %152, align 8
  %153 = load ptr, ptr %5, align 8
  %154 = load ptr, ptr %8, align 8
  %155 = getelementptr inbounds nuw %struct.rbtree, ptr %154, i32 0, i32 3
  store ptr %153, ptr %155, align 8
  %156 = load ptr, ptr %15, align 8
  %157 = load ptr, ptr %5, align 8
  %158 = getelementptr inbounds nuw %struct.rbtree, ptr %157, i32 0, i32 2
  store ptr %156, ptr %158, align 8
  store i32 0, ptr %3, align 4
  br label %179

159:                                              ; preds = %129, %126
  %160 = load ptr, ptr %7, align 8
  %161 = load ptr, ptr %2, align 8
  store ptr %160, ptr %161, align 8
  %162 = load ptr, ptr %6, align 8
  %163 = load ptr, ptr %7, align 8
  %164 = getelementptr inbounds nuw %struct.rbtree, ptr %163, i32 0, i32 2
  store ptr %162, ptr %164, align 8
  %165 = load ptr, ptr %5, align 8
  %166 = load ptr, ptr %7, align 8
  %167 = getelementptr inbounds nuw %struct.rbtree, ptr %166, i32 0, i32 3
  store ptr %165, ptr %167, align 8
  %168 = load ptr, ptr %10, align 8
  %169 = load ptr, ptr %6, align 8
  %170 = getelementptr inbounds nuw %struct.rbtree, ptr %169, i32 0, i32 2
  store ptr %168, ptr %170, align 8
  %171 = load ptr, ptr %12, align 8
  %172 = load ptr, ptr %6, align 8
  %173 = getelementptr inbounds nuw %struct.rbtree, ptr %172, i32 0, i32 3
  store ptr %171, ptr %173, align 8
  %174 = load ptr, ptr %13, align 8
  %175 = load ptr, ptr %5, align 8
  %176 = getelementptr inbounds nuw %struct.rbtree, ptr %175, i32 0, i32 2
  store ptr %174, ptr %176, align 8
  %177 = load ptr, ptr %12, align 8
  %178 = getelementptr inbounds nuw %struct.rbtree, ptr %177, i32 0, i32 1
  store i8 0, ptr %178, align 4
  store i32 0, ptr %3, align 4
  br label %179

179:                                              ; preds = %159, %135
  br label %227

180:                                              ; preds = %120, %117
  %181 = load ptr, ptr %13, align 8
  %182 = icmp ne ptr %181, null
  br i1 %182, label %183, label %224

183:                                              ; preds = %180
  %184 = load ptr, ptr %13, align 8
  %185 = getelementptr inbounds nuw %struct.rbtree, ptr %184, i32 0, i32 1
  %186 = load i8, ptr %185, align 4
  %187 = sext i8 %186 to i32
  %188 = icmp eq i32 %187, 1
  br i1 %188, label %189, label %224

189:                                              ; preds = %183
  %190 = load ptr, ptr %12, align 8
  %191 = icmp eq ptr %190, null
  br i1 %191, label %200, label %192

192:                                              ; preds = %189
  %193 = load ptr, ptr %12, align 8
  %194 = getelementptr inbounds nuw %struct.rbtree, ptr %193, i32 0, i32 1
  %195 = load i8, ptr %194, align 4
  %196 = sext i8 %195 to i32
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %200, label %198

198:                                              ; preds = %192
  br label %199

199:                                              ; preds = %198, %199
  br label %199

200:                                              ; preds = %192, %189
  %201 = load ptr, ptr %13, align 8
  store ptr %201, ptr %8, align 8
  %202 = load ptr, ptr %8, align 8
  %203 = getelementptr inbounds nuw %struct.rbtree, ptr %202, i32 0, i32 2
  %204 = load ptr, ptr %203, align 8
  store ptr %204, ptr %14, align 8
  %205 = load ptr, ptr %8, align 8
  %206 = getelementptr inbounds nuw %struct.rbtree, ptr %205, i32 0, i32 3
  %207 = load ptr, ptr %206, align 8
  store ptr %207, ptr %15, align 8
  %208 = load ptr, ptr %8, align 8
  %209 = load ptr, ptr %2, align 8
  store ptr %208, ptr %209, align 8
  %210 = load ptr, ptr %8, align 8
  %211 = getelementptr inbounds nuw %struct.rbtree, ptr %210, i32 0, i32 1
  store i8 0, ptr %211, align 4
  %212 = load ptr, ptr %6, align 8
  %213 = load ptr, ptr %8, align 8
  %214 = getelementptr inbounds nuw %struct.rbtree, ptr %213, i32 0, i32 2
  store ptr %212, ptr %214, align 8
  %215 = load ptr, ptr %14, align 8
  %216 = load ptr, ptr %7, align 8
  %217 = getelementptr inbounds nuw %struct.rbtree, ptr %216, i32 0, i32 3
  store ptr %215, ptr %217, align 8
  %218 = load ptr, ptr %5, align 8
  %219 = load ptr, ptr %8, align 8
  %220 = getelementptr inbounds nuw %struct.rbtree, ptr %219, i32 0, i32 3
  store ptr %218, ptr %220, align 8
  %221 = load ptr, ptr %15, align 8
  %222 = load ptr, ptr %5, align 8
  %223 = getelementptr inbounds nuw %struct.rbtree, ptr %222, i32 0, i32 2
  store ptr %221, ptr %223, align 8
  store i32 0, ptr %3, align 4
  br label %226

224:                                              ; preds = %183, %180
  br label %225

225:                                              ; preds = %224, %225
  br label %225

226:                                              ; preds = %200
  br label %227

227:                                              ; preds = %226, %179
  br label %228

228:                                              ; preds = %227, %104
  br label %229

229:                                              ; preds = %228, %57
  br label %393

230:                                              ; preds = %42
  %231 = load ptr, ptr %10, align 8
  %232 = icmp eq ptr %231, null
  br i1 %232, label %239, label %233

233:                                              ; preds = %230
  %234 = load ptr, ptr %10, align 8
  %235 = getelementptr inbounds nuw %struct.rbtree, ptr %234, i32 0, i32 1
  %236 = load i8, ptr %235, align 4
  %237 = sext i8 %236 to i32
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %239, label %259

239:                                              ; preds = %233, %230
  %240 = load ptr, ptr %11, align 8
  %241 = icmp eq ptr %240, null
  br i1 %241, label %248, label %242

242:                                              ; preds = %239
  %243 = load ptr, ptr %11, align 8
  %244 = getelementptr inbounds nuw %struct.rbtree, ptr %243, i32 0, i32 1
  %245 = load i8, ptr %244, align 4
  %246 = sext i8 %245 to i32
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %248, label %259

248:                                              ; preds = %242, %239
  %249 = load ptr, ptr %5, align 8
  %250 = getelementptr inbounds nuw %struct.rbtree, ptr %249, i32 0, i32 1
  %251 = load i8, ptr %250, align 4
  %252 = sext i8 %251 to i32
  %253 = icmp eq i32 %252, 0
  %254 = zext i1 %253 to i32
  store i32 %254, ptr %3, align 4
  %255 = load ptr, ptr %5, align 8
  %256 = getelementptr inbounds nuw %struct.rbtree, ptr %255, i32 0, i32 1
  store i8 0, ptr %256, align 4
  %257 = load ptr, ptr %6, align 8
  %258 = getelementptr inbounds nuw %struct.rbtree, ptr %257, i32 0, i32 1
  store i8 1, ptr %258, align 4
  br label %392

259:                                              ; preds = %242, %233
  %260 = load ptr, ptr %10, align 8
  %261 = icmp ne ptr %260, null
  br i1 %261, label %262, label %351

262:                                              ; preds = %259
  %263 = load ptr, ptr %10, align 8
  %264 = getelementptr inbounds nuw %struct.rbtree, ptr %263, i32 0, i32 1
  %265 = load i8, ptr %264, align 4
  %266 = sext i8 %265 to i32
  %267 = icmp eq i32 %266, 1
  br i1 %267, label %268, label %351

268:                                              ; preds = %262
  %269 = load ptr, ptr %11, align 8
  %270 = icmp eq ptr %269, null
  br i1 %270, label %277, label %271

271:                                              ; preds = %268
  %272 = load ptr, ptr %11, align 8
  %273 = getelementptr inbounds nuw %struct.rbtree, ptr %272, i32 0, i32 1
  %274 = load i8, ptr %273, align 4
  %275 = sext i8 %274 to i32
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %277, label %295

277:                                              ; preds = %271, %268
  %278 = load ptr, ptr %6, align 8
  %279 = load ptr, ptr %2, align 8
  store ptr %278, ptr %279, align 8
  %280 = load ptr, ptr %5, align 8
  %281 = getelementptr inbounds nuw %struct.rbtree, ptr %280, i32 0, i32 1
  %282 = load i8, ptr %281, align 4
  %283 = load ptr, ptr %6, align 8
  %284 = getelementptr inbounds nuw %struct.rbtree, ptr %283, i32 0, i32 1
  store i8 %282, ptr %284, align 4
  %285 = load ptr, ptr %5, align 8
  %286 = getelementptr inbounds nuw %struct.rbtree, ptr %285, i32 0, i32 1
  store i8 0, ptr %286, align 4
  %287 = load ptr, ptr %5, align 8
  %288 = load ptr, ptr %6, align 8
  %289 = getelementptr inbounds nuw %struct.rbtree, ptr %288, i32 0, i32 3
  store ptr %287, ptr %289, align 8
  %290 = load ptr, ptr %11, align 8
  %291 = load ptr, ptr %5, align 8
  %292 = getelementptr inbounds nuw %struct.rbtree, ptr %291, i32 0, i32 2
  store ptr %290, ptr %292, align 8
  %293 = load ptr, ptr %10, align 8
  %294 = getelementptr inbounds nuw %struct.rbtree, ptr %293, i32 0, i32 1
  store i8 0, ptr %294, align 4
  store i32 0, ptr %3, align 4
  br label %350

295:                                              ; preds = %271
  %296 = load ptr, ptr %10, align 8
  %297 = icmp ne ptr %296, null
  br i1 %297, label %300, label %298

298:                                              ; preds = %295
  br label %299

299:                                              ; preds = %298, %299
  br label %299

300:                                              ; preds = %295
  %301 = load ptr, ptr %11, align 8
  %302 = icmp ne ptr %301, null
  br i1 %302, label %305, label %303

303:                                              ; preds = %300
  br label %304

304:                                              ; preds = %303, %304
  br label %304

305:                                              ; preds = %300
  %306 = load ptr, ptr %10, align 8
  %307 = getelementptr inbounds nuw %struct.rbtree, ptr %306, i32 0, i32 1
  %308 = load i8, ptr %307, align 4
  %309 = sext i8 %308 to i32
  %310 = icmp eq i32 %309, 1
  br i1 %310, label %313, label %311

311:                                              ; preds = %305
  br label %312

312:                                              ; preds = %311, %312
  br label %312

313:                                              ; preds = %305
  %314 = load ptr, ptr %11, align 8
  %315 = getelementptr inbounds nuw %struct.rbtree, ptr %314, i32 0, i32 1
  %316 = load i8, ptr %315, align 4
  %317 = sext i8 %316 to i32
  %318 = icmp eq i32 %317, 1
  br i1 %318, label %321, label %319

319:                                              ; preds = %313
  br label %320

320:                                              ; preds = %319, %320
  br label %320

321:                                              ; preds = %313
  %322 = load ptr, ptr %11, align 8
  store ptr %322, ptr %7, align 8
  %323 = load ptr, ptr %7, align 8
  %324 = getelementptr inbounds nuw %struct.rbtree, ptr %323, i32 0, i32 2
  %325 = load ptr, ptr %324, align 8
  store ptr %325, ptr %12, align 8
  %326 = load ptr, ptr %7, align 8
  %327 = getelementptr inbounds nuw %struct.rbtree, ptr %326, i32 0, i32 3
  %328 = load ptr, ptr %327, align 8
  store ptr %328, ptr %13, align 8
  %329 = load ptr, ptr %7, align 8
  %330 = load ptr, ptr %2, align 8
  store ptr %329, ptr %330, align 8
  %331 = load ptr, ptr %5, align 8
  %332 = getelementptr inbounds nuw %struct.rbtree, ptr %331, i32 0, i32 1
  %333 = load i8, ptr %332, align 4
  %334 = load ptr, ptr %7, align 8
  %335 = getelementptr inbounds nuw %struct.rbtree, ptr %334, i32 0, i32 1
  store i8 %333, ptr %335, align 4
  %336 = load ptr, ptr %5, align 8
  %337 = getelementptr inbounds nuw %struct.rbtree, ptr %336, i32 0, i32 1
  store i8 0, ptr %337, align 4
  %338 = load ptr, ptr %6, align 8
  %339 = load ptr, ptr %7, align 8
  %340 = getelementptr inbounds nuw %struct.rbtree, ptr %339, i32 0, i32 2
  store ptr %338, ptr %340, align 8
  %341 = load ptr, ptr %5, align 8
  %342 = load ptr, ptr %7, align 8
  %343 = getelementptr inbounds nuw %struct.rbtree, ptr %342, i32 0, i32 3
  store ptr %341, ptr %343, align 8
  %344 = load ptr, ptr %12, align 8
  %345 = load ptr, ptr %6, align 8
  %346 = getelementptr inbounds nuw %struct.rbtree, ptr %345, i32 0, i32 3
  store ptr %344, ptr %346, align 8
  %347 = load ptr, ptr %13, align 8
  %348 = load ptr, ptr %5, align 8
  %349 = getelementptr inbounds nuw %struct.rbtree, ptr %348, i32 0, i32 2
  store ptr %347, ptr %349, align 8
  store i32 0, ptr %3, align 4
  br label %350

350:                                              ; preds = %321, %277
  br label %391

351:                                              ; preds = %262, %259
  %352 = load ptr, ptr %11, align 8
  %353 = icmp ne ptr %352, null
  br i1 %353, label %354, label %360

354:                                              ; preds = %351
  %355 = load ptr, ptr %11, align 8
  %356 = getelementptr inbounds nuw %struct.rbtree, ptr %355, i32 0, i32 1
  %357 = load i8, ptr %356, align 4
  %358 = sext i8 %357 to i32
  %359 = icmp eq i32 %358, 1
  br i1 %359, label %362, label %360

360:                                              ; preds = %354, %351
  br label %361

361:                                              ; preds = %360, %361
  br label %361

362:                                              ; preds = %354
  %363 = load ptr, ptr %11, align 8
  store ptr %363, ptr %7, align 8
  %364 = load ptr, ptr %7, align 8
  %365 = getelementptr inbounds nuw %struct.rbtree, ptr %364, i32 0, i32 2
  %366 = load ptr, ptr %365, align 8
  store ptr %366, ptr %12, align 8
  %367 = load ptr, ptr %7, align 8
  %368 = getelementptr inbounds nuw %struct.rbtree, ptr %367, i32 0, i32 3
  %369 = load ptr, ptr %368, align 8
  store ptr %369, ptr %13, align 8
  %370 = load ptr, ptr %7, align 8
  %371 = load ptr, ptr %2, align 8
  store ptr %370, ptr %371, align 8
  %372 = load ptr, ptr %5, align 8
  %373 = getelementptr inbounds nuw %struct.rbtree, ptr %372, i32 0, i32 1
  %374 = load i8, ptr %373, align 4
  %375 = load ptr, ptr %7, align 8
  %376 = getelementptr inbounds nuw %struct.rbtree, ptr %375, i32 0, i32 1
  store i8 %374, ptr %376, align 4
  %377 = load ptr, ptr %5, align 8
  %378 = getelementptr inbounds nuw %struct.rbtree, ptr %377, i32 0, i32 1
  store i8 0, ptr %378, align 4
  %379 = load ptr, ptr %6, align 8
  %380 = load ptr, ptr %7, align 8
  %381 = getelementptr inbounds nuw %struct.rbtree, ptr %380, i32 0, i32 2
  store ptr %379, ptr %381, align 8
  %382 = load ptr, ptr %5, align 8
  %383 = load ptr, ptr %7, align 8
  %384 = getelementptr inbounds nuw %struct.rbtree, ptr %383, i32 0, i32 3
  store ptr %382, ptr %384, align 8
  %385 = load ptr, ptr %12, align 8
  %386 = load ptr, ptr %6, align 8
  %387 = getelementptr inbounds nuw %struct.rbtree, ptr %386, i32 0, i32 3
  store ptr %385, ptr %387, align 8
  %388 = load ptr, ptr %13, align 8
  %389 = load ptr, ptr %5, align 8
  %390 = getelementptr inbounds nuw %struct.rbtree, ptr %389, i32 0, i32 2
  store ptr %388, ptr %390, align 8
  store i32 0, ptr %3, align 4
  br label %391

391:                                              ; preds = %362, %350
  br label %392

392:                                              ; preds = %391, %248
  br label %393

393:                                              ; preds = %392, %229
  br label %394

394:                                              ; preds = %393, %39
  %395 = load i32, ptr %3, align 4
  ret i32 %395
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @sglib___rbtree_delete_rightmost_leaf(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %8 = load ptr, ptr %3, align 8
  %9 = load ptr, ptr %8, align 8
  store ptr %9, ptr %5, align 8
  store i32 0, ptr %6, align 4
  %10 = load ptr, ptr %5, align 8
  %11 = icmp ne ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  br label %13

13:                                               ; preds = %12, %13
  br label %13

14:                                               ; preds = %2
  %15 = load ptr, ptr %5, align 8
  %16 = getelementptr inbounds nuw %struct.rbtree, ptr %15, i32 0, i32 3
  %17 = load ptr, ptr %16, align 8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %59

19:                                               ; preds = %14
  %20 = load ptr, ptr %5, align 8
  %21 = load ptr, ptr %4, align 8
  store ptr %20, ptr %21, align 8
  %22 = load ptr, ptr %5, align 8
  %23 = getelementptr inbounds nuw %struct.rbtree, ptr %22, i32 0, i32 2
  %24 = load ptr, ptr %23, align 8
  %25 = icmp ne ptr %24, null
  br i1 %25, label %26, label %50

26:                                               ; preds = %19
  %27 = load ptr, ptr %5, align 8
  %28 = getelementptr inbounds nuw %struct.rbtree, ptr %27, i32 0, i32 1
  %29 = load i8, ptr %28, align 4
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %26
  %33 = load ptr, ptr %5, align 8
  %34 = getelementptr inbounds nuw %struct.rbtree, ptr %33, i32 0, i32 2
  %35 = load ptr, ptr %34, align 8
  %36 = getelementptr inbounds nuw %struct.rbtree, ptr %35, i32 0, i32 1
  %37 = load i8, ptr %36, align 4
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  store i32 1, ptr %6, align 4
  br label %41

41:                                               ; preds = %40, %32, %26
  %42 = load ptr, ptr %5, align 8
  %43 = getelementptr inbounds nuw %struct.rbtree, ptr %42, i32 0, i32 2
  %44 = load ptr, ptr %43, align 8
  %45 = getelementptr inbounds nuw %struct.rbtree, ptr %44, i32 0, i32 1
  store i8 0, ptr %45, align 4
  %46 = load ptr, ptr %5, align 8
  %47 = getelementptr inbounds nuw %struct.rbtree, ptr %46, i32 0, i32 2
  %48 = load ptr, ptr %47, align 8
  %49 = load ptr, ptr %3, align 8
  store ptr %48, ptr %49, align 8
  br label %58

50:                                               ; preds = %19
  %51 = load ptr, ptr %3, align 8
  store ptr null, ptr %51, align 8
  %52 = load ptr, ptr %5, align 8
  %53 = getelementptr inbounds nuw %struct.rbtree, ptr %52, i32 0, i32 1
  %54 = load i8, ptr %53, align 4
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 0
  %57 = zext i1 %56 to i32
  store i32 %57, ptr %6, align 4
  br label %58

58:                                               ; preds = %50, %41
  br label %70

59:                                               ; preds = %14
  %60 = load ptr, ptr %5, align 8
  %61 = getelementptr inbounds nuw %struct.rbtree, ptr %60, i32 0, i32 3
  %62 = load ptr, ptr %4, align 8
  %63 = call i32 @sglib___rbtree_delete_rightmost_leaf(ptr noundef %61, ptr noundef %62)
  store i32 %63, ptr %7, align 4
  %64 = load i32, ptr %7, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %59
  %67 = load ptr, ptr %3, align 8
  %68 = call i32 @sglib___rbtree_fix_right_deletion_discrepancy(ptr noundef %67)
  store i32 %68, ptr %6, align 4
  br label %69

69:                                               ; preds = %66, %59
  br label %70

70:                                               ; preds = %69, %58
  %71 = load i32, ptr %6, align 4
  ret i32 %71
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @sglib_rbtree_add(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds nuw %struct.rbtree, ptr %5, i32 0, i32 3
  store ptr null, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = getelementptr inbounds nuw %struct.rbtree, ptr %7, i32 0, i32 2
  store ptr null, ptr %8, align 8
  %9 = load ptr, ptr %3, align 8
  %10 = load ptr, ptr %4, align 8
  call void @sglib___rbtree_add_recursive(ptr noundef %9, ptr noundef %10)
  %11 = load ptr, ptr %3, align 8
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds nuw %struct.rbtree, ptr %12, i32 0, i32 1
  store i8 0, ptr %13, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @sglib___rbtree_add_recursive(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %7 = load ptr, ptr %3, align 8
  %8 = load ptr, ptr %7, align 8
  store ptr %8, ptr %6, align 8
  %9 = load ptr, ptr %6, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load ptr, ptr %4, align 8
  %13 = getelementptr inbounds nuw %struct.rbtree, ptr %12, i32 0, i32 1
  store i8 1, ptr %13, align 4
  %14 = load ptr, ptr %4, align 8
  %15 = load ptr, ptr %3, align 8
  store ptr %14, ptr %15, align 8
  br label %58

16:                                               ; preds = %2
  %17 = load ptr, ptr %4, align 8
  %18 = getelementptr inbounds nuw %struct.rbtree, ptr %17, i32 0, i32 0
  %19 = load i32, ptr %18, align 8
  %20 = load ptr, ptr %6, align 8
  %21 = getelementptr inbounds nuw %struct.rbtree, ptr %20, i32 0, i32 0
  %22 = load i32, ptr %21, align 8
  %23 = sub nsw i32 %19, %22
  store i32 %23, ptr %5, align 4
  %24 = load i32, ptr %5, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %16
  %27 = load i32, ptr %5, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %45

29:                                               ; preds = %26
  %30 = load ptr, ptr %4, align 8
  %31 = load ptr, ptr %6, align 8
  %32 = icmp ult ptr %30, %31
  br i1 %32, label %33, label %45

33:                                               ; preds = %29, %16
  %34 = load ptr, ptr %6, align 8
  %35 = getelementptr inbounds nuw %struct.rbtree, ptr %34, i32 0, i32 2
  %36 = load ptr, ptr %4, align 8
  call void @sglib___rbtree_add_recursive(ptr noundef %35, ptr noundef %36)
  %37 = load ptr, ptr %6, align 8
  %38 = getelementptr inbounds nuw %struct.rbtree, ptr %37, i32 0, i32 1
  %39 = load i8, ptr %38, align 4
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %33
  %43 = load ptr, ptr %3, align 8
  call void @sglib___rbtree_fix_left_insertion_discrepancy(ptr noundef %43)
  br label %44

44:                                               ; preds = %42, %33
  br label %57

45:                                               ; preds = %29, %26
  %46 = load ptr, ptr %6, align 8
  %47 = getelementptr inbounds nuw %struct.rbtree, ptr %46, i32 0, i32 3
  %48 = load ptr, ptr %4, align 8
  call void @sglib___rbtree_add_recursive(ptr noundef %47, ptr noundef %48)
  %49 = load ptr, ptr %6, align 8
  %50 = getelementptr inbounds nuw %struct.rbtree, ptr %49, i32 0, i32 1
  %51 = load i8, ptr %50, align 4
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %45
  %55 = load ptr, ptr %3, align 8
  call void @sglib___rbtree_fix_right_insertion_discrepancy(ptr noundef %55)
  br label %56

56:                                               ; preds = %54, %45
  br label %57

57:                                               ; preds = %56, %44
  br label %58

58:                                               ; preds = %57, %11
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @sglib_rbtree_delete(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = call i32 @sglib___rbtree_delete_recursive(ptr noundef %5, ptr noundef %6)
  %8 = load ptr, ptr %3, align 8
  %9 = load ptr, ptr %8, align 8
  %10 = icmp ne ptr %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load ptr, ptr %3, align 8
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds nuw %struct.rbtree, ptr %13, i32 0, i32 1
  store i8 0, ptr %14, align 4
  br label %15

15:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @sglib_rbtree_find_member(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %8 = load ptr, ptr %3, align 8
  store ptr %8, ptr %6, align 8
  br label %9

9:                                                ; preds = %35, %2
  %10 = load ptr, ptr %6, align 8
  %11 = icmp ne ptr %10, null
  br i1 %11, label %12, label %36

12:                                               ; preds = %9
  %13 = load ptr, ptr %4, align 8
  %14 = getelementptr inbounds nuw %struct.rbtree, ptr %13, i32 0, i32 0
  %15 = load i32, ptr %14, align 8
  %16 = load ptr, ptr %6, align 8
  %17 = getelementptr inbounds nuw %struct.rbtree, ptr %16, i32 0, i32 0
  %18 = load i32, ptr %17, align 8
  %19 = sub nsw i32 %15, %18
  store i32 %19, ptr %7, align 4
  %20 = load i32, ptr %7, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %12
  %23 = load ptr, ptr %6, align 8
  %24 = getelementptr inbounds nuw %struct.rbtree, ptr %23, i32 0, i32 2
  %25 = load ptr, ptr %24, align 8
  store ptr %25, ptr %6, align 8
  br label %35

26:                                               ; preds = %12
  %27 = load i32, ptr %7, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load ptr, ptr %6, align 8
  %31 = getelementptr inbounds nuw %struct.rbtree, ptr %30, i32 0, i32 3
  %32 = load ptr, ptr %31, align 8
  store ptr %32, ptr %6, align 8
  br label %34

33:                                               ; preds = %26
  br label %36

34:                                               ; preds = %29
  br label %35

35:                                               ; preds = %34, %22
  br label %9, !llvm.loop !53

36:                                               ; preds = %33, %9
  %37 = load ptr, ptr %6, align 8
  store ptr %37, ptr %5, align 8
  %38 = load ptr, ptr %5, align 8
  ret ptr %38
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sglib_rbtree_is_member(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  br label %7

7:                                                ; preds = %53, %2
  %8 = load ptr, ptr %4, align 8
  %9 = icmp ne ptr %8, null
  br i1 %9, label %10, label %54

10:                                               ; preds = %7
  %11 = load ptr, ptr %5, align 8
  %12 = getelementptr inbounds nuw %struct.rbtree, ptr %11, i32 0, i32 0
  %13 = load i32, ptr %12, align 8
  %14 = load ptr, ptr %4, align 8
  %15 = getelementptr inbounds nuw %struct.rbtree, ptr %14, i32 0, i32 0
  %16 = load i32, ptr %15, align 8
  %17 = sub nsw i32 %13, %16
  store i32 %17, ptr %6, align 4
  %18 = load i32, ptr %6, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %10
  %21 = load i32, ptr %6, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %20
  %24 = load ptr, ptr %5, align 8
  %25 = load ptr, ptr %4, align 8
  %26 = icmp ult ptr %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %23, %10
  %28 = load ptr, ptr %4, align 8
  %29 = getelementptr inbounds nuw %struct.rbtree, ptr %28, i32 0, i32 2
  %30 = load ptr, ptr %29, align 8
  store ptr %30, ptr %4, align 8
  br label %53

31:                                               ; preds = %23, %20
  %32 = load i32, ptr %6, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %31
  %35 = load i32, ptr %6, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %34
  %38 = load ptr, ptr %5, align 8
  %39 = load ptr, ptr %4, align 8
  %40 = icmp ugt ptr %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %37, %31
  %42 = load ptr, ptr %4, align 8
  %43 = getelementptr inbounds nuw %struct.rbtree, ptr %42, i32 0, i32 3
  %44 = load ptr, ptr %43, align 8
  store ptr %44, ptr %4, align 8
  br label %52

45:                                               ; preds = %37, %34
  %46 = load ptr, ptr %4, align 8
  %47 = load ptr, ptr %5, align 8
  %48 = icmp eq ptr %46, %47
  br i1 %48, label %51, label %49

49:                                               ; preds = %45
  br label %50

50:                                               ; preds = %49, %50
  br label %50

51:                                               ; preds = %45
  store i32 1, ptr %3, align 4
  br label %55

52:                                               ; preds = %41
  br label %53

53:                                               ; preds = %52, %27
  br label %7, !llvm.loop !54

54:                                               ; preds = %7
  store i32 0, ptr %3, align 4
  br label %55

55:                                               ; preds = %54, %51
  %56 = load i32, ptr %3, align 4
  ret i32 %56
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sglib_rbtree_delete_if_member(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load ptr, ptr %8, align 8
  %10 = load ptr, ptr %6, align 8
  %11 = call ptr @sglib_rbtree_find_member(ptr noundef %9, ptr noundef %10)
  %12 = load ptr, ptr %7, align 8
  store ptr %11, ptr %12, align 8
  %13 = icmp ne ptr %11, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load ptr, ptr %5, align 8
  %16 = load ptr, ptr %7, align 8
  %17 = load ptr, ptr %16, align 8
  call void @sglib_rbtree_delete(ptr noundef %15, ptr noundef %17)
  store i32 1, ptr %4, align 4
  br label %19

18:                                               ; preds = %3
  store i32 0, ptr %4, align 4
  br label %19

19:                                               ; preds = %18, %14
  %20 = load i32, ptr %4, align 4
  ret i32 %20
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sglib_rbtree_add_if_not_member(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load ptr, ptr %8, align 8
  %10 = load ptr, ptr %6, align 8
  %11 = call ptr @sglib_rbtree_find_member(ptr noundef %9, ptr noundef %10)
  %12 = load ptr, ptr %7, align 8
  store ptr %11, ptr %12, align 8
  %13 = icmp eq ptr %11, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load ptr, ptr %5, align 8
  %16 = load ptr, ptr %6, align 8
  call void @sglib_rbtree_add(ptr noundef %15, ptr noundef %16)
  store i32 1, ptr %4, align 4
  br label %18

17:                                               ; preds = %3
  store i32 0, ptr %4, align 4
  br label %18

18:                                               ; preds = %17, %14
  %19 = load i32, ptr %4, align 4
  ret i32 %19
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sglib_rbtree_len(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca [128 x ptr], align 16
  %6 = alloca [128 x ptr], align 16
  %7 = alloca [128 x i8], align 16
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  store i32 0, ptr %3, align 4
  %11 = load ptr, ptr %2, align 8
  store ptr %11, ptr %8, align 8
  store i32 0, ptr %9, align 4
  br label %12

12:                                               ; preds = %77, %1
  %13 = load ptr, ptr %8, align 8
  %14 = icmp ne ptr %13, null
  br i1 %14, label %15, label %87

15:                                               ; preds = %12
  br label %16

16:                                               ; preds = %42, %15
  %17 = load ptr, ptr %8, align 8
  %18 = icmp ne ptr %17, null
  br i1 %18, label %19, label %43

19:                                               ; preds = %16
  %20 = load ptr, ptr %8, align 8
  %21 = load i32, ptr %9, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [128 x ptr], ptr %5, i64 0, i64 %22
  store ptr %20, ptr %23, align 8
  %24 = load ptr, ptr %8, align 8
  %25 = getelementptr inbounds nuw %struct.rbtree, ptr %24, i32 0, i32 3
  %26 = load ptr, ptr %25, align 8
  %27 = load i32, ptr %9, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [128 x ptr], ptr %6, i64 0, i64 %28
  store ptr %26, ptr %29, align 8
  %30 = load i32, ptr %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [128 x i8], ptr %7, i64 0, i64 %31
  store i8 0, ptr %32, align 1
  %33 = load ptr, ptr %8, align 8
  %34 = getelementptr inbounds nuw %struct.rbtree, ptr %33, i32 0, i32 2
  %35 = load ptr, ptr %34, align 8
  store ptr %35, ptr %8, align 8
  %36 = load i32, ptr %9, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, ptr %9, align 4
  %38 = load i32, ptr %9, align 4
  %39 = icmp sge i32 %38, 128
  br i1 %39, label %40, label %42

40:                                               ; preds = %19
  br label %41

41:                                               ; preds = %40, %41
  br label %41

42:                                               ; preds = %19
  br label %16, !llvm.loop !55

43:                                               ; preds = %16
  br label %44

44:                                               ; preds = %75, %43
  %45 = load i32, ptr %9, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, ptr %9, align 4
  %47 = load i32, ptr %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [128 x i8], ptr %7, i64 0, i64 %48
  %50 = load i8, ptr %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %44
  %54 = load i32, ptr %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [128 x ptr], ptr %5, i64 0, i64 %55
  %57 = load ptr, ptr %56, align 8
  store ptr %57, ptr %10, align 8
  %58 = load i32, ptr %3, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, ptr %3, align 4
  br label %60

60:                                               ; preds = %53, %44
  %61 = load i32, ptr %9, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [128 x i8], ptr %7, i64 0, i64 %62
  %64 = load i8, ptr %63, align 1
  %65 = add i8 %64, 1
  store i8 %65, ptr %63, align 1
  br label %66

66:                                               ; preds = %60
  %67 = load i32, ptr %9, align 4
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %66
  %70 = load i32, ptr %9, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [128 x ptr], ptr %6, i64 0, i64 %71
  %73 = load ptr, ptr %72, align 8
  %74 = icmp eq ptr %73, null
  br label %75

75:                                               ; preds = %69, %66
  %76 = phi i1 [ false, %66 ], [ %74, %69 ]
  br i1 %76, label %44, label %77, !llvm.loop !56

77:                                               ; preds = %75
  %78 = load i32, ptr %9, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [128 x ptr], ptr %6, i64 0, i64 %79
  %81 = load ptr, ptr %80, align 8
  store ptr %81, ptr %8, align 8
  %82 = load i32, ptr %9, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [128 x ptr], ptr %6, i64 0, i64 %83
  store ptr null, ptr %84, align 8
  %85 = load i32, ptr %9, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, ptr %9, align 4
  br label %12, !llvm.loop !57

87:                                               ; preds = %12
  %88 = load i32, ptr %3, align 4
  ret i32 %88
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @sglib__rbtree_it_compute_current_elem(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  %13 = load ptr, ptr %2, align 8
  %14 = getelementptr inbounds nuw %struct.sglib_rbtree_iterator, ptr %13, i32 0, i32 5
  %15 = load ptr, ptr %14, align 8
  store ptr %15, ptr %7, align 8
  %16 = load ptr, ptr %2, align 8
  %17 = getelementptr inbounds nuw %struct.sglib_rbtree_iterator, ptr %16, i32 0, i32 6
  %18 = load ptr, ptr %17, align 8
  store ptr %18, ptr %8, align 8
  %19 = load ptr, ptr %2, align 8
  %20 = getelementptr inbounds nuw %struct.sglib_rbtree_iterator, ptr %19, i32 0, i32 0
  store ptr null, ptr %20, align 8
  br label %21

21:                                               ; preds = %215, %1
  %22 = load ptr, ptr %2, align 8
  %23 = getelementptr inbounds nuw %struct.sglib_rbtree_iterator, ptr %22, i32 0, i32 3
  %24 = load i16, ptr %23, align 8
  %25 = sext i16 %24 to i32
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  %28 = load ptr, ptr %2, align 8
  %29 = getelementptr inbounds nuw %struct.sglib_rbtree_iterator, ptr %28, i32 0, i32 0
  %30 = load ptr, ptr %29, align 8
  %31 = icmp eq ptr %30, null
  br label %32

32:                                               ; preds = %27, %21
  %33 = phi i1 [ false, %21 ], [ %31, %27 ]
  br i1 %33, label %34, label %216

34:                                               ; preds = %32
  %35 = load ptr, ptr %2, align 8
  %36 = getelementptr inbounds nuw %struct.sglib_rbtree_iterator, ptr %35, i32 0, i32 3
  %37 = load i16, ptr %36, align 8
  %38 = sext i16 %37 to i32
  %39 = sub nsw i32 %38, 1
  store i32 %39, ptr %3, align 4
  %40 = load i32, ptr %3, align 4
  %41 = icmp sge i32 %40, 0
  br i1 %41, label %42, label %179

42:                                               ; preds = %34
  %43 = load ptr, ptr %2, align 8
  %44 = getelementptr inbounds nuw %struct.sglib_rbtree_iterator, ptr %43, i32 0, i32 1
  %45 = load i32, ptr %3, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [128 x i8], ptr %44, i64 0, i64 %46
  %48 = load i8, ptr %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp sge i32 %49, 2
  br i1 %50, label %51, label %56

51:                                               ; preds = %42
  %52 = load ptr, ptr %2, align 8
  %53 = getelementptr inbounds nuw %struct.sglib_rbtree_iterator, ptr %52, i32 0, i32 3
  %54 = load i16, ptr %53, align 8
  %55 = add i16 %54, -1
  store i16 %55, ptr %53, align 8
  br label %178

56:                                               ; preds = %42
  %57 = load ptr, ptr %2, align 8
  %58 = getelementptr inbounds nuw %struct.sglib_rbtree_iterator, ptr %57, i32 0, i32 1
  %59 = load i32, ptr %3, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [128 x i8], ptr %58, i64 0, i64 %60
  %62 = load i8, ptr %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %56
  %66 = load ptr, ptr %2, align 8
  %67 = getelementptr inbounds nuw %struct.sglib_rbtree_iterator, ptr %66, i32 0, i32 2
  %68 = load i32, ptr %3, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [128 x ptr], ptr %67, i64 0, i64 %69
  %71 = load ptr, ptr %70, align 8
  %72 = getelementptr inbounds nuw %struct.rbtree, ptr %71, i32 0, i32 2
  %73 = load ptr, ptr %72, align 8
  store ptr %73, ptr %6, align 8
  br label %83

74:                                               ; preds = %56
  %75 = load ptr, ptr %2, align 8
  %76 = getelementptr inbounds nuw %struct.sglib_rbtree_iterator, ptr %75, i32 0, i32 2
  %77 = load i32, ptr %3, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [128 x ptr], ptr %76, i64 0, i64 %78
  %80 = load ptr, ptr %79, align 8
  %81 = getelementptr inbounds nuw %struct.rbtree, ptr %80, i32 0, i32 3
  %82 = load ptr, ptr %81, align 8
  store ptr %82, ptr %6, align 8
  br label %83

83:                                               ; preds = %74, %65
  %84 = load ptr, ptr %7, align 8
  %85 = icmp ne ptr %84, null
  br i1 %85, label %86, label %149

86:                                               ; preds = %83
  %87 = load ptr, ptr %8, align 8
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %120

89:                                               ; preds = %86
  %90 = load ptr, ptr %6, align 8
  store ptr %90, ptr %9, align 8
  br label %91

91:                                               ; preds = %117, %89
  %92 = load ptr, ptr %9, align 8
  %93 = icmp ne ptr %92, null
  br i1 %93, label %94, label %118

94:                                               ; preds = %91
  %95 = load ptr, ptr %7, align 8
  %96 = getelementptr inbounds nuw %struct.rbtree, ptr %95, i32 0, i32 0
  %97 = load i32, ptr %96, align 8
  %98 = load ptr, ptr %9, align 8
  %99 = getelementptr inbounds nuw %struct.rbtree, ptr %98, i32 0, i32 0
  %100 = load i32, ptr %99, align 8
  %101 = sub nsw i32 %97, %100
  store i32 %101, ptr %10, align 4
  %102 = load i32, ptr %10, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %94
  %105 = load ptr, ptr %9, align 8
  %106 = getelementptr inbounds nuw %struct.rbtree, ptr %105, i32 0, i32 2
  %107 = load ptr, ptr %106, align 8
  store ptr %107, ptr %9, align 8
  br label %117

108:                                              ; preds = %94
  %109 = load i32, ptr %10, align 4
  %110 = icmp sgt i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %108
  %112 = load ptr, ptr %9, align 8
  %113 = getelementptr inbounds nuw %struct.rbtree, ptr %112, i32 0, i32 3
  %114 = load ptr, ptr %113, align 8
  store ptr %114, ptr %9, align 8
  br label %116

115:                                              ; preds = %108
  br label %118

116:                                              ; preds = %111
  br label %117

117:                                              ; preds = %116, %104
  br label %91, !llvm.loop !58

118:                                              ; preds = %115, %91
  %119 = load ptr, ptr %9, align 8
  store ptr %119, ptr %6, align 8
  br label %148

120:                                              ; preds = %86
  %121 = load ptr, ptr %6, align 8
  store ptr %121, ptr %11, align 8
  br label %122

122:                                              ; preds = %145, %120
  %123 = load ptr, ptr %11, align 8
  %124 = icmp ne ptr %123, null
  br i1 %124, label %125, label %146

125:                                              ; preds = %122
  %126 = load ptr, ptr %8, align 8
  %127 = load ptr, ptr %7, align 8
  %128 = load ptr, ptr %11, align 8
  %129 = call i32 %126(ptr noundef %127, ptr noundef %128)
  store i32 %129, ptr %12, align 4
  %130 = load i32, ptr %12, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %125
  %133 = load ptr, ptr %11, align 8
  %134 = getelementptr inbounds nuw %struct.rbtree, ptr %133, i32 0, i32 2
  %135 = load ptr, ptr %134, align 8
  store ptr %135, ptr %11, align 8
  br label %145

136:                                              ; preds = %125
  %137 = load i32, ptr %12, align 4
  %138 = icmp sgt i32 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %136
  %140 = load ptr, ptr %11, align 8
  %141 = getelementptr inbounds nuw %struct.rbtree, ptr %140, i32 0, i32 3
  %142 = load ptr, ptr %141, align 8
  store ptr %142, ptr %11, align 8
  br label %144

143:                                              ; preds = %136
  br label %146

144:                                              ; preds = %139
  br label %145

145:                                              ; preds = %144, %132
  br label %122, !llvm.loop !59

146:                                              ; preds = %143, %122
  %147 = load ptr, ptr %11, align 8
  store ptr %147, ptr %6, align 8
  br label %148

148:                                              ; preds = %146, %118
  br label %149

149:                                              ; preds = %148, %83
  %150 = load ptr, ptr %6, align 8
  %151 = icmp ne ptr %150, null
  br i1 %151, label %152, label %170

152:                                              ; preds = %149
  %153 = load i32, ptr %3, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, ptr %4, align 4
  %155 = load ptr, ptr %6, align 8
  %156 = load ptr, ptr %2, align 8
  %157 = getelementptr inbounds nuw %struct.sglib_rbtree_iterator, ptr %156, i32 0, i32 2
  %158 = load i32, ptr %4, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [128 x ptr], ptr %157, i64 0, i64 %159
  store ptr %155, ptr %160, align 8
  %161 = load ptr, ptr %2, align 8
  %162 = getelementptr inbounds nuw %struct.sglib_rbtree_iterator, ptr %161, i32 0, i32 1
  %163 = load i32, ptr %4, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds [128 x i8], ptr %162, i64 0, i64 %164
  store i8 0, ptr %165, align 1
  %166 = load ptr, ptr %2, align 8
  %167 = getelementptr inbounds nuw %struct.sglib_rbtree_iterator, ptr %166, i32 0, i32 3
  %168 = load i16, ptr %167, align 8
  %169 = add i16 %168, 1
  store i16 %169, ptr %167, align 8
  br label %170

170:                                              ; preds = %152, %149
  %171 = load ptr, ptr %2, align 8
  %172 = getelementptr inbounds nuw %struct.sglib_rbtree_iterator, ptr %171, i32 0, i32 1
  %173 = load i32, ptr %3, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds [128 x i8], ptr %172, i64 0, i64 %174
  %176 = load i8, ptr %175, align 1
  %177 = add i8 %176, 1
  store i8 %177, ptr %175, align 1
  br label %178

178:                                              ; preds = %170, %51
  br label %179

179:                                              ; preds = %178, %34
  %180 = load ptr, ptr %2, align 8
  %181 = getelementptr inbounds nuw %struct.sglib_rbtree_iterator, ptr %180, i32 0, i32 3
  %182 = load i16, ptr %181, align 8
  %183 = sext i16 %182 to i32
  %184 = icmp sgt i32 %183, 0
  br i1 %184, label %185, label %215

185:                                              ; preds = %179
  %186 = load ptr, ptr %2, align 8
  %187 = getelementptr inbounds nuw %struct.sglib_rbtree_iterator, ptr %186, i32 0, i32 4
  %188 = load i16, ptr %187, align 2
  %189 = sext i16 %188 to i32
  %190 = load ptr, ptr %2, align 8
  %191 = getelementptr inbounds nuw %struct.sglib_rbtree_iterator, ptr %190, i32 0, i32 1
  %192 = load ptr, ptr %2, align 8
  %193 = getelementptr inbounds nuw %struct.sglib_rbtree_iterator, ptr %192, i32 0, i32 3
  %194 = load i16, ptr %193, align 8
  %195 = sext i16 %194 to i32
  %196 = sub nsw i32 %195, 1
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds [128 x i8], ptr %191, i64 0, i64 %197
  %199 = load i8, ptr %198, align 1
  %200 = sext i8 %199 to i32
  %201 = icmp eq i32 %189, %200
  br i1 %201, label %202, label %215

202:                                              ; preds = %185
  %203 = load ptr, ptr %2, align 8
  %204 = getelementptr inbounds nuw %struct.sglib_rbtree_iterator, ptr %203, i32 0, i32 2
  %205 = load ptr, ptr %2, align 8
  %206 = getelementptr inbounds nuw %struct.sglib_rbtree_iterator, ptr %205, i32 0, i32 3
  %207 = load i16, ptr %206, align 8
  %208 = sext i16 %207 to i32
  %209 = sub nsw i32 %208, 1
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds [128 x ptr], ptr %204, i64 0, i64 %210
  %212 = load ptr, ptr %211, align 8
  %213 = load ptr, ptr %2, align 8
  %214 = getelementptr inbounds nuw %struct.sglib_rbtree_iterator, ptr %213, i32 0, i32 0
  store ptr %212, ptr %214, align 8
  br label %215

215:                                              ; preds = %202, %185, %179
  br label %21, !llvm.loop !60

216:                                              ; preds = %32
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @sglib__rbtree_it_init(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca i32, align 4
  %14 = alloca ptr, align 8
  %15 = alloca i32, align 4
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store i32 %2, ptr %8, align 4
  store ptr %3, ptr %9, align 8
  store ptr %4, ptr %10, align 8
  %16 = load ptr, ptr %6, align 8
  %17 = icmp ne ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %5
  br label %19

19:                                               ; preds = %18, %19
  br label %19

20:                                               ; preds = %5
  %21 = load i32, ptr %8, align 4
  %22 = trunc i32 %21 to i16
  %23 = load ptr, ptr %6, align 8
  %24 = getelementptr inbounds nuw %struct.sglib_rbtree_iterator, ptr %23, i32 0, i32 4
  store i16 %22, ptr %24, align 2
  %25 = load ptr, ptr %10, align 8
  %26 = load ptr, ptr %6, align 8
  %27 = getelementptr inbounds nuw %struct.sglib_rbtree_iterator, ptr %26, i32 0, i32 5
  store ptr %25, ptr %27, align 8
  %28 = load ptr, ptr %9, align 8
  %29 = load ptr, ptr %6, align 8
  %30 = getelementptr inbounds nuw %struct.sglib_rbtree_iterator, ptr %29, i32 0, i32 6
  store ptr %28, ptr %30, align 8
  %31 = load ptr, ptr %10, align 8
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %20
  %34 = load ptr, ptr %7, align 8
  store ptr %34, ptr %11, align 8
  br label %98

35:                                               ; preds = %20
  %36 = load ptr, ptr %9, align 8
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %69

38:                                               ; preds = %35
  %39 = load ptr, ptr %7, align 8
  store ptr %39, ptr %12, align 8
  br label %40

40:                                               ; preds = %66, %38
  %41 = load ptr, ptr %12, align 8
  %42 = icmp ne ptr %41, null
  br i1 %42, label %43, label %67

43:                                               ; preds = %40
  %44 = load ptr, ptr %10, align 8
  %45 = getelementptr inbounds nuw %struct.rbtree, ptr %44, i32 0, i32 0
  %46 = load i32, ptr %45, align 8
  %47 = load ptr, ptr %12, align 8
  %48 = getelementptr inbounds nuw %struct.rbtree, ptr %47, i32 0, i32 0
  %49 = load i32, ptr %48, align 8
  %50 = sub nsw i32 %46, %49
  store i32 %50, ptr %13, align 4
  %51 = load i32, ptr %13, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %43
  %54 = load ptr, ptr %12, align 8
  %55 = getelementptr inbounds nuw %struct.rbtree, ptr %54, i32 0, i32 2
  %56 = load ptr, ptr %55, align 8
  store ptr %56, ptr %12, align 8
  br label %66

57:                                               ; preds = %43
  %58 = load i32, ptr %13, align 4
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load ptr, ptr %12, align 8
  %62 = getelementptr inbounds nuw %struct.rbtree, ptr %61, i32 0, i32 3
  %63 = load ptr, ptr %62, align 8
  store ptr %63, ptr %12, align 8
  br label %65

64:                                               ; preds = %57
  br label %67

65:                                               ; preds = %60
  br label %66

66:                                               ; preds = %65, %53
  br label %40, !llvm.loop !61

67:                                               ; preds = %64, %40
  %68 = load ptr, ptr %12, align 8
  store ptr %68, ptr %11, align 8
  br label %97

69:                                               ; preds = %35
  %70 = load ptr, ptr %7, align 8
  store ptr %70, ptr %14, align 8
  br label %71

71:                                               ; preds = %94, %69
  %72 = load ptr, ptr %14, align 8
  %73 = icmp ne ptr %72, null
  br i1 %73, label %74, label %95

74:                                               ; preds = %71
  %75 = load ptr, ptr %9, align 8
  %76 = load ptr, ptr %10, align 8
  %77 = load ptr, ptr %14, align 8
  %78 = call i32 %75(ptr noundef %76, ptr noundef %77)
  store i32 %78, ptr %15, align 4
  %79 = load i32, ptr %15, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %74
  %82 = load ptr, ptr %14, align 8
  %83 = getelementptr inbounds nuw %struct.rbtree, ptr %82, i32 0, i32 2
  %84 = load ptr, ptr %83, align 8
  store ptr %84, ptr %14, align 8
  br label %94

85:                                               ; preds = %74
  %86 = load i32, ptr %15, align 4
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %85
  %89 = load ptr, ptr %14, align 8
  %90 = getelementptr inbounds nuw %struct.rbtree, ptr %89, i32 0, i32 3
  %91 = load ptr, ptr %90, align 8
  store ptr %91, ptr %14, align 8
  br label %93

92:                                               ; preds = %85
  br label %95

93:                                               ; preds = %88
  br label %94

94:                                               ; preds = %93, %81
  br label %71, !llvm.loop !62

95:                                               ; preds = %92, %71
  %96 = load ptr, ptr %14, align 8
  store ptr %96, ptr %11, align 8
  br label %97

97:                                               ; preds = %95, %67
  br label %98

98:                                               ; preds = %97, %33
  %99 = load ptr, ptr %11, align 8
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %106

101:                                              ; preds = %98
  %102 = load ptr, ptr %6, align 8
  %103 = getelementptr inbounds nuw %struct.sglib_rbtree_iterator, ptr %102, i32 0, i32 3
  store i16 0, ptr %103, align 8
  %104 = load ptr, ptr %6, align 8
  %105 = getelementptr inbounds nuw %struct.sglib_rbtree_iterator, ptr %104, i32 0, i32 0
  store ptr null, ptr %105, align 8
  br label %125

106:                                              ; preds = %98
  %107 = load ptr, ptr %6, align 8
  %108 = getelementptr inbounds nuw %struct.sglib_rbtree_iterator, ptr %107, i32 0, i32 3
  store i16 1, ptr %108, align 8
  %109 = load ptr, ptr %6, align 8
  %110 = getelementptr inbounds nuw %struct.sglib_rbtree_iterator, ptr %109, i32 0, i32 1
  %111 = getelementptr inbounds [128 x i8], ptr %110, i64 0, i64 0
  store i8 0, ptr %111, align 8
  %112 = load ptr, ptr %11, align 8
  %113 = load ptr, ptr %6, align 8
  %114 = getelementptr inbounds nuw %struct.sglib_rbtree_iterator, ptr %113, i32 0, i32 2
  %115 = getelementptr inbounds [128 x ptr], ptr %114, i64 0, i64 0
  store ptr %112, ptr %115, align 8
  %116 = load i32, ptr %8, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %106
  %119 = load ptr, ptr %11, align 8
  %120 = load ptr, ptr %6, align 8
  %121 = getelementptr inbounds nuw %struct.sglib_rbtree_iterator, ptr %120, i32 0, i32 0
  store ptr %119, ptr %121, align 8
  br label %124

122:                                              ; preds = %106
  %123 = load ptr, ptr %6, align 8
  call void @sglib__rbtree_it_compute_current_elem(ptr noundef %123)
  br label %124

124:                                              ; preds = %122, %118
  br label %125

125:                                              ; preds = %124, %101
  %126 = load ptr, ptr %6, align 8
  %127 = getelementptr inbounds nuw %struct.sglib_rbtree_iterator, ptr %126, i32 0, i32 0
  %128 = load ptr, ptr %127, align 8
  ret ptr %128
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @sglib_rbtree_it_init(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = call ptr @sglib__rbtree_it_init(ptr noundef %5, ptr noundef %6, i32 noundef 2, ptr noundef null, ptr noundef null)
  ret ptr %7
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @sglib_rbtree_it_init_preorder(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = call ptr @sglib__rbtree_it_init(ptr noundef %5, ptr noundef %6, i32 noundef 0, ptr noundef null, ptr noundef null)
  ret ptr %7
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @sglib_rbtree_it_init_inorder(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = call ptr @sglib__rbtree_it_init(ptr noundef %5, ptr noundef %6, i32 noundef 1, ptr noundef null, ptr noundef null)
  ret ptr %7
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @sglib_rbtree_it_init_postorder(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = call ptr @sglib__rbtree_it_init(ptr noundef %5, ptr noundef %6, i32 noundef 2, ptr noundef null, ptr noundef null)
  ret ptr %7
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @sglib_rbtree_it_init_on_equal(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  store ptr %3, ptr %8, align 8
  %9 = load ptr, ptr %5, align 8
  %10 = load ptr, ptr %6, align 8
  %11 = load ptr, ptr %7, align 8
  %12 = load ptr, ptr %8, align 8
  %13 = call ptr @sglib__rbtree_it_init(ptr noundef %9, ptr noundef %10, i32 noundef 1, ptr noundef %11, ptr noundef %12)
  ret ptr %13
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @sglib_rbtree_it_current(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds nuw %struct.sglib_rbtree_iterator, ptr %3, i32 0, i32 0
  %5 = load ptr, ptr %4, align 8
  ret ptr %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @sglib_rbtree_it_next(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  call void @sglib__rbtree_it_compute_current_elem(ptr noundef %3)
  %4 = load ptr, ptr %2, align 8
  %5 = getelementptr inbounds nuw %struct.sglib_rbtree_iterator, ptr %4, i32 0, i32 0
  %6 = load ptr, ptr %5, align 8
  ret ptr %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @sglib___rbtree_consistency_check(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  %4 = load ptr, ptr %2, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8
  %8 = getelementptr inbounds nuw %struct.rbtree, ptr %7, i32 0, i32 1
  %9 = load i8, ptr %8, align 4
  %10 = sext i8 %9 to i32
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %6
  br label %13

13:                                               ; preds = %12, %13
  br label %13

14:                                               ; preds = %6, %1
  store i32 -1, ptr %3, align 4
  %15 = load ptr, ptr %2, align 8
  call void @sglib___rbtree_consistency_check_recursive(ptr noundef %15, ptr noundef %3, i32 noundef 0)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @sglib___rbtree_consistency_check_recursive(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store i32 %2, ptr %6, align 4
  %7 = load ptr, ptr %4, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %25

9:                                                ; preds = %3
  %10 = load ptr, ptr %5, align 8
  %11 = load i32, ptr %10, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = load i32, ptr %6, align 4
  %15 = load ptr, ptr %5, align 8
  store i32 %14, ptr %15, align 4
  br label %24

16:                                               ; preds = %9
  %17 = load ptr, ptr %5, align 8
  %18 = load i32, ptr %17, align 4
  %19 = load i32, ptr %6, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %23, label %21

21:                                               ; preds = %16
  br label %22

22:                                               ; preds = %21, %22
  br label %22

23:                                               ; preds = %16
  br label %24

24:                                               ; preds = %23, %13
  br label %124

25:                                               ; preds = %3
  %26 = load ptr, ptr %4, align 8
  %27 = getelementptr inbounds nuw %struct.rbtree, ptr %26, i32 0, i32 2
  %28 = load ptr, ptr %27, align 8
  %29 = icmp ne ptr %28, null
  br i1 %29, label %30, label %44

30:                                               ; preds = %25
  %31 = load ptr, ptr %4, align 8
  %32 = getelementptr inbounds nuw %struct.rbtree, ptr %31, i32 0, i32 2
  %33 = load ptr, ptr %32, align 8
  %34 = getelementptr inbounds nuw %struct.rbtree, ptr %33, i32 0, i32 0
  %35 = load i32, ptr %34, align 8
  %36 = load ptr, ptr %4, align 8
  %37 = getelementptr inbounds nuw %struct.rbtree, ptr %36, i32 0, i32 0
  %38 = load i32, ptr %37, align 8
  %39 = sub nsw i32 %35, %38
  %40 = icmp sle i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %30
  br label %42

42:                                               ; preds = %41, %42
  br label %42

43:                                               ; preds = %30
  br label %44

44:                                               ; preds = %43, %25
  %45 = load ptr, ptr %4, align 8
  %46 = getelementptr inbounds nuw %struct.rbtree, ptr %45, i32 0, i32 3
  %47 = load ptr, ptr %46, align 8
  %48 = icmp ne ptr %47, null
  br i1 %48, label %49, label %63

49:                                               ; preds = %44
  %50 = load ptr, ptr %4, align 8
  %51 = getelementptr inbounds nuw %struct.rbtree, ptr %50, i32 0, i32 0
  %52 = load i32, ptr %51, align 8
  %53 = load ptr, ptr %4, align 8
  %54 = getelementptr inbounds nuw %struct.rbtree, ptr %53, i32 0, i32 3
  %55 = load ptr, ptr %54, align 8
  %56 = getelementptr inbounds nuw %struct.rbtree, ptr %55, i32 0, i32 0
  %57 = load i32, ptr %56, align 8
  %58 = sub nsw i32 %52, %57
  %59 = icmp sle i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %49
  br label %61

61:                                               ; preds = %60, %61
  br label %61

62:                                               ; preds = %49
  br label %63

63:                                               ; preds = %62, %44
  %64 = load ptr, ptr %4, align 8
  %65 = getelementptr inbounds nuw %struct.rbtree, ptr %64, i32 0, i32 1
  %66 = load i8, ptr %65, align 4
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 1
  br i1 %68, label %69, label %110

69:                                               ; preds = %63
  %70 = load ptr, ptr %4, align 8
  %71 = getelementptr inbounds nuw %struct.rbtree, ptr %70, i32 0, i32 2
  %72 = load ptr, ptr %71, align 8
  %73 = icmp eq ptr %72, null
  br i1 %73, label %84, label %74

74:                                               ; preds = %69
  %75 = load ptr, ptr %4, align 8
  %76 = getelementptr inbounds nuw %struct.rbtree, ptr %75, i32 0, i32 2
  %77 = load ptr, ptr %76, align 8
  %78 = getelementptr inbounds nuw %struct.rbtree, ptr %77, i32 0, i32 1
  %79 = load i8, ptr %78, align 4
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %74
  br label %83

83:                                               ; preds = %82, %83
  br label %83

84:                                               ; preds = %74, %69
  %85 = load ptr, ptr %4, align 8
  %86 = getelementptr inbounds nuw %struct.rbtree, ptr %85, i32 0, i32 3
  %87 = load ptr, ptr %86, align 8
  %88 = icmp eq ptr %87, null
  br i1 %88, label %99, label %89

89:                                               ; preds = %84
  %90 = load ptr, ptr %4, align 8
  %91 = getelementptr inbounds nuw %struct.rbtree, ptr %90, i32 0, i32 3
  %92 = load ptr, ptr %91, align 8
  %93 = getelementptr inbounds nuw %struct.rbtree, ptr %92, i32 0, i32 1
  %94 = load i8, ptr %93, align 4
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %99, label %97

97:                                               ; preds = %89
  br label %98

98:                                               ; preds = %97, %98
  br label %98

99:                                               ; preds = %89, %84
  %100 = load ptr, ptr %4, align 8
  %101 = getelementptr inbounds nuw %struct.rbtree, ptr %100, i32 0, i32 2
  %102 = load ptr, ptr %101, align 8
  %103 = load ptr, ptr %5, align 8
  %104 = load i32, ptr %6, align 4
  call void @sglib___rbtree_consistency_check_recursive(ptr noundef %102, ptr noundef %103, i32 noundef %104)
  %105 = load ptr, ptr %4, align 8
  %106 = getelementptr inbounds nuw %struct.rbtree, ptr %105, i32 0, i32 3
  %107 = load ptr, ptr %106, align 8
  %108 = load ptr, ptr %5, align 8
  %109 = load i32, ptr %6, align 4
  call void @sglib___rbtree_consistency_check_recursive(ptr noundef %107, ptr noundef %108, i32 noundef %109)
  br label %123

110:                                              ; preds = %63
  %111 = load ptr, ptr %4, align 8
  %112 = getelementptr inbounds nuw %struct.rbtree, ptr %111, i32 0, i32 2
  %113 = load ptr, ptr %112, align 8
  %114 = load ptr, ptr %5, align 8
  %115 = load i32, ptr %6, align 4
  %116 = add nsw i32 %115, 1
  call void @sglib___rbtree_consistency_check_recursive(ptr noundef %113, ptr noundef %114, i32 noundef %116)
  %117 = load ptr, ptr %4, align 8
  %118 = getelementptr inbounds nuw %struct.rbtree, ptr %117, i32 0, i32 3
  %119 = load ptr, ptr %118, align 8
  %120 = load ptr, ptr %5, align 8
  %121 = load i32, ptr %6, align 4
  %122 = add nsw i32 %121, 1
  call void @sglib___rbtree_consistency_check_recursive(ptr noundef %119, ptr noundef %120, i32 noundef %122)
  br label %123

123:                                              ; preds = %110, %99
  br label %124

124:                                              ; preds = %123, %24
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @verify_benchmark(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca %struct.ilist, align 8
  %7 = alloca ptr, align 8
  store i32 %0, ptr %3, align 4
  store i32 0, ptr %4, align 4
  %8 = load ptr, ptr @the_list, align 8
  %9 = call ptr @sglib_dllist_get_first(ptr noundef %8)
  store ptr %9, ptr %5, align 8
  br label %10

10:                                               ; preds = %23, %1
  %11 = load ptr, ptr %5, align 8
  %12 = icmp ne ptr %11, null
  br i1 %12, label %13, label %27

13:                                               ; preds = %10
  %14 = load ptr, ptr %5, align 8
  %15 = getelementptr inbounds nuw %struct.dllist, ptr %14, i32 0, i32 0
  %16 = load i32, ptr %15, align 8
  %17 = load i32, ptr %4, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  store i32 0, ptr %2, align 4
  br label %66

20:                                               ; preds = %13
  %21 = load i32, ptr %4, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, ptr %4, align 4
  br label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %5, align 8
  %25 = getelementptr inbounds nuw %struct.dllist, ptr %24, i32 0, i32 1
  %26 = load ptr, ptr %25, align 8
  store ptr %26, ptr %5, align 8
  br label %10, !llvm.loop !63

27:                                               ; preds = %10
  store i32 0, ptr %4, align 4
  br label %28

28:                                               ; preds = %51, %27
  %29 = load i32, ptr %4, align 4
  %30 = icmp slt i32 %29, 100
  br i1 %30, label %31, label %54

31:                                               ; preds = %28
  %32 = load i32, ptr %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [100 x i32], ptr @array, i64 0, i64 %33
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds nuw %struct.ilist, ptr %6, i32 0, i32 0
  store i32 %35, ptr %36, align 8
  %37 = call ptr @sglib_hashed_ilist_find_member(ptr noundef @htab, ptr noundef %6)
  store ptr %37, ptr %7, align 8
  %38 = load ptr, ptr %7, align 8
  %39 = icmp eq ptr %38, null
  br i1 %39, label %49, label %40

40:                                               ; preds = %31
  %41 = load ptr, ptr %7, align 8
  %42 = getelementptr inbounds nuw %struct.ilist, ptr %41, i32 0, i32 0
  %43 = load i32, ptr %42, align 8
  %44 = load i32, ptr %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [100 x i32], ptr @array, i64 0, i64 %45
  %47 = load i32, ptr %46, align 4
  %48 = icmp ne i32 %43, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %40, %31
  store i32 0, ptr %2, align 4
  br label %66

50:                                               ; preds = %40
  br label %51

51:                                               ; preds = %50
  %52 = load i32, ptr %4, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, ptr %4, align 4
  br label %28, !llvm.loop !64

54:                                               ; preds = %28
  %55 = load i32, ptr %3, align 4
  %56 = icmp eq i32 15050, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %54
  %58 = call i32 @check_heap_beebs(ptr noundef @heap)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = call i32 @memcmp(ptr noundef @array2, ptr noundef @verify_benchmark.array_exp, i64 noundef 400) #4
  %62 = icmp eq i32 0, %61
  br label %63

63:                                               ; preds = %60, %57, %54
  %64 = phi i1 [ false, %57 ], [ false, %54 ], [ %62, %60 ]
  %65 = zext i1 %64 to i32
  store i32 %65, ptr %2, align 4
  br label %66

66:                                               ; preds = %63, %49, %19
  %67 = load i32, ptr %2, align 4
  ret i32 %67
}

declare i32 @check_heap_beebs(ptr noundef) #1

; Function Attrs: nounwind willreturn memory(read)
declare i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @initialise_benchmark() #0 {
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
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca %struct.ilist, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca %struct.sglib_hashed_ilist_iterator, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [101 x i32], align 16
  %19 = alloca %struct.rbtree, align 8
  %20 = alloca ptr, align 8
  %21 = alloca ptr, align 8
  %22 = alloca ptr, align 8
  %23 = alloca %struct.sglib_rbtree_iterator, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca [64 x i32], align 16
  %31 = alloca [64 x i32], align 16
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  store i32 %1, ptr %4, align 4
  store i32 0, ptr %7, align 4
  br label %44

44:                                               ; preds = %715, %2
  %45 = load i32, ptr %7, align 4
  %46 = load i32, ptr %3, align 4
  %47 = icmp ult i32 %45, %46
  br i1 %47, label %48, label %718

48:                                               ; preds = %44
  store i32 0, ptr %8, align 4
  br label %49

49:                                               ; preds = %711, %48
  %50 = load i32, ptr %8, align 4
  %51 = load i32, ptr %4, align 4
  %52 = icmp ult i32 %50, %51
  br i1 %52, label %53, label %714

53:                                               ; preds = %49
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 @array2, ptr align 16 @array, i64 400, i1 false)
  %54 = getelementptr inbounds [64 x i32], ptr %30, i64 0, i64 0
  store i32 0, ptr %54, align 16
  %55 = getelementptr inbounds [64 x i32], ptr %31, i64 0, i64 0
  store i32 100, ptr %55, align 16
  store i32 1, ptr %27, align 4
  br label %56

56:                                               ; preds = %353, %53
  %57 = load i32, ptr %27, align 4
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %354

59:                                               ; preds = %56
  %60 = load i32, ptr %27, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, ptr %27, align 4
  %62 = load i32, ptr %27, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [64 x i32], ptr %30, i64 0, i64 %63
  %65 = load i32, ptr %64, align 4
  store i32 %65, ptr %28, align 4
  %66 = load i32, ptr %27, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [64 x i32], ptr %31, i64 0, i64 %67
  %69 = load i32, ptr %68, align 4
  store i32 %69, ptr %29, align 4
  br label %70

70:                                               ; preds = %300, %59
  %71 = load i32, ptr %29, align 4
  %72 = load i32, ptr %28, align 4
  %73 = sub nsw i32 %71, %72
  %74 = icmp sgt i32 %73, 2
  br i1 %74, label %75, label %301

75:                                               ; preds = %70
  %76 = load i32, ptr %28, align 4
  store i32 %76, ptr %26, align 4
  %77 = load i32, ptr %28, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, ptr %24, align 4
  %79 = load i32, ptr %29, align 4
  %80 = sub nsw i32 %79, 1
  store i32 %80, ptr %25, align 4
  br label %81

81:                                               ; preds = %242, %75
  %82 = load i32, ptr %24, align 4
  %83 = load i32, ptr %25, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %243

85:                                               ; preds = %81
  br label %86

86:                                               ; preds = %119, %85
  %87 = load i32, ptr %24, align 4
  %88 = load i32, ptr %25, align 4
  %89 = icmp sle i32 %87, %88
  br i1 %89, label %90, label %116

90:                                               ; preds = %86
  %91 = load i32, ptr %24, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [100 x i32], ptr @array2, i64 0, i64 %92
  %94 = load i32, ptr %93, align 4
  %95 = load i32, ptr %26, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [100 x i32], ptr @array2, i64 0, i64 %96
  %98 = load i32, ptr %97, align 4
  %99 = icmp sgt i32 %94, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %90
  br label %113

101:                                              ; preds = %90
  %102 = load i32, ptr %24, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [100 x i32], ptr @array2, i64 0, i64 %103
  %105 = load i32, ptr %104, align 4
  %106 = load i32, ptr %26, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [100 x i32], ptr @array2, i64 0, i64 %107
  %109 = load i32, ptr %108, align 4
  %110 = icmp slt i32 %105, %109
  %111 = zext i1 %110 to i64
  %112 = select i1 %110, i32 -1, i32 0
  br label %113

113:                                              ; preds = %101, %100
  %114 = phi i32 [ 1, %100 ], [ %112, %101 ]
  %115 = icmp sle i32 %114, 0
  br label %116

116:                                              ; preds = %113, %86
  %117 = phi i1 [ false, %86 ], [ %115, %113 ]
  br i1 %117, label %118, label %122

118:                                              ; preds = %116
  br label %119

119:                                              ; preds = %118
  %120 = load i32, ptr %24, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, ptr %24, align 4
  br label %86, !llvm.loop !65

122:                                              ; preds = %116
  %123 = load i32, ptr %24, align 4
  %124 = load i32, ptr %25, align 4
  %125 = icmp sgt i32 %123, %124
  br i1 %125, label %126, label %143

126:                                              ; preds = %122
  %127 = load i32, ptr %25, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [100 x i32], ptr @array2, i64 0, i64 %128
  %130 = load i32, ptr %129, align 4
  store i32 %130, ptr %33, align 4
  %131 = load i32, ptr %26, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [100 x i32], ptr @array2, i64 0, i64 %132
  %134 = load i32, ptr %133, align 4
  %135 = load i32, ptr %25, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [100 x i32], ptr @array2, i64 0, i64 %136
  store i32 %134, ptr %137, align 4
  %138 = load i32, ptr %33, align 4
  %139 = load i32, ptr %26, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds [100 x i32], ptr @array2, i64 0, i64 %140
  store i32 %138, ptr %141, align 4
  %142 = load i32, ptr %25, align 4
  store i32 %142, ptr %24, align 4
  br label %242

143:                                              ; preds = %122
  br label %144

144:                                              ; preds = %177, %143
  %145 = load i32, ptr %24, align 4
  %146 = load i32, ptr %25, align 4
  %147 = icmp sle i32 %145, %146
  br i1 %147, label %148, label %174

148:                                              ; preds = %144
  %149 = load i32, ptr %25, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [100 x i32], ptr @array2, i64 0, i64 %150
  %152 = load i32, ptr %151, align 4
  %153 = load i32, ptr %26, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds [100 x i32], ptr @array2, i64 0, i64 %154
  %156 = load i32, ptr %155, align 4
  %157 = icmp sgt i32 %152, %156
  br i1 %157, label %158, label %159

158:                                              ; preds = %148
  br label %171

159:                                              ; preds = %148
  %160 = load i32, ptr %25, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds [100 x i32], ptr @array2, i64 0, i64 %161
  %163 = load i32, ptr %162, align 4
  %164 = load i32, ptr %26, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [100 x i32], ptr @array2, i64 0, i64 %165
  %167 = load i32, ptr %166, align 4
  %168 = icmp slt i32 %163, %167
  %169 = zext i1 %168 to i64
  %170 = select i1 %168, i32 -1, i32 0
  br label %171

171:                                              ; preds = %159, %158
  %172 = phi i32 [ 1, %158 ], [ %170, %159 ]
  %173 = icmp sge i32 %172, 0
  br label %174

174:                                              ; preds = %171, %144
  %175 = phi i1 [ false, %144 ], [ %173, %171 ]
  br i1 %175, label %176, label %180

176:                                              ; preds = %174
  br label %177

177:                                              ; preds = %176
  %178 = load i32, ptr %25, align 4
  %179 = add nsw i32 %178, -1
  store i32 %179, ptr %25, align 4
  br label %144, !llvm.loop !66

180:                                              ; preds = %174
  %181 = load i32, ptr %24, align 4
  %182 = load i32, ptr %25, align 4
  %183 = icmp sgt i32 %181, %182
  br i1 %183, label %184, label %201

184:                                              ; preds = %180
  %185 = load i32, ptr %25, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds [100 x i32], ptr @array2, i64 0, i64 %186
  %188 = load i32, ptr %187, align 4
  store i32 %188, ptr %34, align 4
  %189 = load i32, ptr %26, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds [100 x i32], ptr @array2, i64 0, i64 %190
  %192 = load i32, ptr %191, align 4
  %193 = load i32, ptr %25, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds [100 x i32], ptr @array2, i64 0, i64 %194
  store i32 %192, ptr %195, align 4
  %196 = load i32, ptr %34, align 4
  %197 = load i32, ptr %26, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds [100 x i32], ptr @array2, i64 0, i64 %198
  store i32 %196, ptr %199, align 4
  %200 = load i32, ptr %25, align 4
  store i32 %200, ptr %24, align 4
  br label %241

201:                                              ; preds = %180
  %202 = load i32, ptr %24, align 4
  %203 = load i32, ptr %25, align 4
  %204 = icmp slt i32 %202, %203
  br i1 %204, label %205, label %240

205:                                              ; preds = %201
  %206 = load i32, ptr %24, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds [100 x i32], ptr @array2, i64 0, i64 %207
  %209 = load i32, ptr %208, align 4
  store i32 %209, ptr %35, align 4
  %210 = load i32, ptr %25, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds [100 x i32], ptr @array2, i64 0, i64 %211
  %213 = load i32, ptr %212, align 4
  %214 = load i32, ptr %24, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds [100 x i32], ptr @array2, i64 0, i64 %215
  store i32 %213, ptr %216, align 4
  %217 = load i32, ptr %35, align 4
  %218 = load i32, ptr %25, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds [100 x i32], ptr @array2, i64 0, i64 %219
  store i32 %217, ptr %220, align 4
  %221 = load i32, ptr %24, align 4
  %222 = add nsw i32 %221, 2
  %223 = load i32, ptr %25, align 4
  %224 = icmp slt i32 %222, %223
  br i1 %224, label %225, label %230

225:                                              ; preds = %205
  %226 = load i32, ptr %24, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, ptr %24, align 4
  %228 = load i32, ptr %25, align 4
  %229 = add nsw i32 %228, -1
  store i32 %229, ptr %25, align 4
  br label %239

230:                                              ; preds = %205
  %231 = load i32, ptr %24, align 4
  %232 = add nsw i32 %231, 1
  %233 = load i32, ptr %25, align 4
  %234 = icmp slt i32 %232, %233
  br i1 %234, label %235, label %238

235:                                              ; preds = %230
  %236 = load i32, ptr %24, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, ptr %24, align 4
  br label %238

238:                                              ; preds = %235, %230
  br label %239

239:                                              ; preds = %238, %225
  br label %240

240:                                              ; preds = %239, %201
  br label %241

241:                                              ; preds = %240, %184
  br label %242

242:                                              ; preds = %241, %126
  br label %81, !llvm.loop !67

243:                                              ; preds = %81
  %244 = load i32, ptr %24, align 4
  %245 = load i32, ptr %28, align 4
  %246 = sub nsw i32 %244, %245
  %247 = icmp sgt i32 %246, 1
  br i1 %247, label %248, label %289

248:                                              ; preds = %243
  %249 = load i32, ptr %29, align 4
  %250 = load i32, ptr %25, align 4
  %251 = sub nsw i32 %249, %250
  %252 = icmp sgt i32 %251, 1
  br i1 %252, label %253, label %289

253:                                              ; preds = %248
  %254 = load i32, ptr %24, align 4
  %255 = load i32, ptr %28, align 4
  %256 = sub nsw i32 %254, %255
  %257 = load i32, ptr %29, align 4
  %258 = load i32, ptr %25, align 4
  %259 = sub nsw i32 %257, %258
  %260 = sub nsw i32 %259, 1
  %261 = icmp slt i32 %256, %260
  br i1 %261, label %262, label %275

262:                                              ; preds = %253
  %263 = load i32, ptr %25, align 4
  %264 = add nsw i32 %263, 1
  %265 = load i32, ptr %27, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds [64 x i32], ptr %30, i64 0, i64 %266
  store i32 %264, ptr %267, align 4
  %268 = load i32, ptr %29, align 4
  %269 = load i32, ptr %27, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds [64 x i32], ptr %31, i64 0, i64 %270
  store i32 %268, ptr %271, align 4
  %272 = load i32, ptr %27, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, ptr %27, align 4
  %274 = load i32, ptr %24, align 4
  store i32 %274, ptr %29, align 4
  br label %288

275:                                              ; preds = %253
  %276 = load i32, ptr %28, align 4
  %277 = load i32, ptr %27, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds [64 x i32], ptr %30, i64 0, i64 %278
  store i32 %276, ptr %279, align 4
  %280 = load i32, ptr %24, align 4
  %281 = load i32, ptr %27, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds [64 x i32], ptr %31, i64 0, i64 %282
  store i32 %280, ptr %283, align 4
  %284 = load i32, ptr %27, align 4
  %285 = add nsw i32 %284, 1
  store i32 %285, ptr %27, align 4
  %286 = load i32, ptr %25, align 4
  %287 = add nsw i32 %286, 1
  store i32 %287, ptr %28, align 4
  br label %288

288:                                              ; preds = %275, %262
  br label %300

289:                                              ; preds = %248, %243
  %290 = load i32, ptr %24, align 4
  %291 = load i32, ptr %28, align 4
  %292 = sub nsw i32 %290, %291
  %293 = icmp sgt i32 %292, 1
  br i1 %293, label %294, label %296

294:                                              ; preds = %289
  %295 = load i32, ptr %24, align 4
  store i32 %295, ptr %29, align 4
  br label %299

296:                                              ; preds = %289
  %297 = load i32, ptr %25, align 4
  %298 = add nsw i32 %297, 1
  store i32 %298, ptr %28, align 4
  br label %299

299:                                              ; preds = %296, %294
  br label %300

300:                                              ; preds = %299, %288
  br label %70, !llvm.loop !68

301:                                              ; preds = %70
  %302 = load i32, ptr %29, align 4
  %303 = load i32, ptr %28, align 4
  %304 = sub nsw i32 %302, %303
  %305 = icmp eq i32 %304, 2
  br i1 %305, label %306, label %353

306:                                              ; preds = %301
  %307 = load i32, ptr %28, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds [100 x i32], ptr @array2, i64 0, i64 %308
  %310 = load i32, ptr %309, align 4
  %311 = load i32, ptr %29, align 4
  %312 = sub nsw i32 %311, 1
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds [100 x i32], ptr @array2, i64 0, i64 %313
  %315 = load i32, ptr %314, align 4
  %316 = icmp sgt i32 %310, %315
  br i1 %316, label %317, label %318

317:                                              ; preds = %306
  br label %331

318:                                              ; preds = %306
  %319 = load i32, ptr %28, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds [100 x i32], ptr @array2, i64 0, i64 %320
  %322 = load i32, ptr %321, align 4
  %323 = load i32, ptr %29, align 4
  %324 = sub nsw i32 %323, 1
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds [100 x i32], ptr @array2, i64 0, i64 %325
  %327 = load i32, ptr %326, align 4
  %328 = icmp slt i32 %322, %327
  %329 = zext i1 %328 to i64
  %330 = select i1 %328, i32 -1, i32 0
  br label %331

331:                                              ; preds = %318, %317
  %332 = phi i32 [ 1, %317 ], [ %330, %318 ]
  %333 = icmp sgt i32 %332, 0
  br i1 %333, label %334, label %352

334:                                              ; preds = %331
  %335 = load i32, ptr %28, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds [100 x i32], ptr @array2, i64 0, i64 %336
  %338 = load i32, ptr %337, align 4
  store i32 %338, ptr %36, align 4
  %339 = load i32, ptr %29, align 4
  %340 = sub nsw i32 %339, 1
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds [100 x i32], ptr @array2, i64 0, i64 %341
  %343 = load i32, ptr %342, align 4
  %344 = load i32, ptr %28, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds [100 x i32], ptr @array2, i64 0, i64 %345
  store i32 %343, ptr %346, align 4
  %347 = load i32, ptr %36, align 4
  %348 = load i32, ptr %29, align 4
  %349 = sub nsw i32 %348, 1
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds [100 x i32], ptr @array2, i64 0, i64 %350
  store i32 %347, ptr %351, align 4
  br label %352

352:                                              ; preds = %334, %331
  br label %353

353:                                              ; preds = %352, %301
  br label %56, !llvm.loop !69

354:                                              ; preds = %56
  call void @init_heap_beebs(ptr noundef @heap, i64 noundef 8192)
  store ptr null, ptr @the_list, align 8
  store i32 0, ptr %9, align 4
  br label %355

355:                                              ; preds = %367, %354
  %356 = load i32, ptr %9, align 4
  %357 = icmp slt i32 %356, 100
  br i1 %357, label %358, label %370

358:                                              ; preds = %355
  %359 = call ptr @malloc_beebs(i64 noundef 24)
  store ptr %359, ptr %10, align 8
  %360 = load i32, ptr %9, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds [100 x i32], ptr @array, i64 0, i64 %361
  %363 = load i32, ptr %362, align 4
  %364 = load ptr, ptr %10, align 8
  %365 = getelementptr inbounds nuw %struct.dllist, ptr %364, i32 0, i32 0
  store i32 %363, ptr %365, align 8
  %366 = load ptr, ptr %10, align 8
  call void @sglib_dllist_add(ptr noundef @the_list, ptr noundef %366)
  br label %367

367:                                              ; preds = %358
  %368 = load i32, ptr %9, align 4
  %369 = add nsw i32 %368, 1
  store i32 %369, ptr %9, align 4
  br label %355, !llvm.loop !70

370:                                              ; preds = %355
  call void @sglib_dllist_sort(ptr noundef @the_list)
  store volatile i32 0, ptr %5, align 4
  %371 = load ptr, ptr @the_list, align 8
  %372 = call ptr @sglib_dllist_get_first(ptr noundef %371)
  store ptr %372, ptr %10, align 8
  br label %373

373:                                              ; preds = %379, %370
  %374 = load ptr, ptr %10, align 8
  %375 = icmp ne ptr %374, null
  br i1 %375, label %376, label %383

376:                                              ; preds = %373
  %377 = load volatile i32, ptr %5, align 4
  %378 = add nsw i32 %377, 1
  store volatile i32 %378, ptr %5, align 4
  br label %379

379:                                              ; preds = %376
  %380 = load ptr, ptr %10, align 8
  %381 = getelementptr inbounds nuw %struct.dllist, ptr %380, i32 0, i32 1
  %382 = load ptr, ptr %381, align 8
  store ptr %382, ptr %10, align 8
  br label %373, !llvm.loop !71

383:                                              ; preds = %373
  call void @sglib_hashed_ilist_init(ptr noundef @htab)
  store i32 0, ptr %9, align 4
  br label %384

384:                                              ; preds = %405, %383
  %385 = load i32, ptr %9, align 4
  %386 = icmp slt i32 %385, 100
  br i1 %386, label %387, label %408

387:                                              ; preds = %384
  %388 = load i32, ptr %9, align 4
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds [100 x i32], ptr @array, i64 0, i64 %389
  %391 = load i32, ptr %390, align 4
  %392 = getelementptr inbounds nuw %struct.ilist, ptr %11, i32 0, i32 0
  store i32 %391, ptr %392, align 8
  %393 = call ptr @sglib_hashed_ilist_find_member(ptr noundef @htab, ptr noundef %11)
  %394 = icmp eq ptr %393, null
  br i1 %394, label %395, label %404

395:                                              ; preds = %387
  %396 = call ptr @malloc_beebs(i64 noundef 16)
  store ptr %396, ptr %12, align 8
  %397 = load i32, ptr %9, align 4
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds [100 x i32], ptr @array, i64 0, i64 %398
  %400 = load i32, ptr %399, align 4
  %401 = load ptr, ptr %12, align 8
  %402 = getelementptr inbounds nuw %struct.ilist, ptr %401, i32 0, i32 0
  store i32 %400, ptr %402, align 8
  %403 = load ptr, ptr %12, align 8
  call void @sglib_hashed_ilist_add(ptr noundef @htab, ptr noundef %403)
  br label %404

404:                                              ; preds = %395, %387
  br label %405

405:                                              ; preds = %404
  %406 = load i32, ptr %9, align 4
  %407 = add nsw i32 %406, 1
  store i32 %407, ptr %9, align 4
  br label %384, !llvm.loop !72

408:                                              ; preds = %384
  %409 = call ptr @sglib_hashed_ilist_it_init(ptr noundef %14, ptr noundef @htab)
  store ptr %409, ptr %13, align 8
  br label %410

410:                                              ; preds = %416, %408
  %411 = load ptr, ptr %13, align 8
  %412 = icmp ne ptr %411, null
  br i1 %412, label %413, label %418

413:                                              ; preds = %410
  %414 = load volatile i32, ptr %5, align 4
  %415 = add nsw i32 %414, 1
  store volatile i32 %415, ptr %5, align 4
  br label %416

416:                                              ; preds = %413
  %417 = call ptr @sglib_hashed_ilist_it_next(ptr noundef %14)
  store ptr %417, ptr %13, align 8
  br label %410, !llvm.loop !73

418:                                              ; preds = %410
  store i32 0, ptr %16, align 4
  store i32 0, ptr %15, align 4
  store i32 0, ptr %9, align 4
  br label %419

419:                                              ; preds = %442, %418
  %420 = load i32, ptr %9, align 4
  %421 = icmp slt i32 %420, 100
  br i1 %421, label %422, label %445

422:                                              ; preds = %419
  %423 = load i32, ptr %9, align 4
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds [100 x i32], ptr @array, i64 0, i64 %424
  %426 = load i32, ptr %425, align 4
  store i32 %426, ptr %17, align 4
  %427 = load i32, ptr %17, align 4
  %428 = load i32, ptr %16, align 4
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds [101 x i32], ptr %18, i64 0, i64 %429
  store i32 %427, ptr %430, align 4
  %431 = load i32, ptr %15, align 4
  %432 = load i32, ptr %16, align 4
  %433 = add nsw i32 %432, 1
  %434 = srem i32 %433, 101
  %435 = icmp eq i32 %431, %434
  br i1 %435, label %436, label %438

436:                                              ; preds = %422
  br label %437

437:                                              ; preds = %436, %437
  br label %437

438:                                              ; preds = %422
  %439 = load i32, ptr %16, align 4
  %440 = add nsw i32 %439, 1
  %441 = srem i32 %440, 101
  store i32 %441, ptr %16, align 4
  br label %442

442:                                              ; preds = %438
  %443 = load i32, ptr %9, align 4
  %444 = add nsw i32 %443, 1
  store i32 %444, ptr %9, align 4
  br label %419, !llvm.loop !74

445:                                              ; preds = %419
  br label %446

446:                                              ; preds = %463, %445
  %447 = load i32, ptr %15, align 4
  %448 = load i32, ptr %16, align 4
  %449 = icmp eq i32 %447, %448
  %450 = xor i1 %449, true
  br i1 %450, label %451, label %467

451:                                              ; preds = %446
  %452 = load i32, ptr %15, align 4
  %453 = sext i32 %452 to i64
  %454 = getelementptr inbounds [101 x i32], ptr %18, i64 0, i64 %453
  %455 = load i32, ptr %454, align 4
  %456 = load volatile i32, ptr %5, align 4
  %457 = add nsw i32 %456, %455
  store volatile i32 %457, ptr %5, align 4
  %458 = load i32, ptr %15, align 4
  %459 = load i32, ptr %16, align 4
  %460 = icmp eq i32 %458, %459
  br i1 %460, label %461, label %463

461:                                              ; preds = %451
  br label %462

462:                                              ; preds = %461, %462
  br label %462

463:                                              ; preds = %451
  %464 = load i32, ptr %15, align 4
  %465 = add nsw i32 %464, 1
  %466 = srem i32 %465, 101
  store i32 %466, ptr %15, align 4
  br label %446, !llvm.loop !75

467:                                              ; preds = %446
  store i32 0, ptr %15, align 4
  store i32 0, ptr %9, align 4
  br label %468

468:                                              ; preds = %546, %467
  %469 = load i32, ptr %9, align 4
  %470 = icmp slt i32 %469, 100
  br i1 %470, label %471, label %549

471:                                              ; preds = %468
  %472 = load i32, ptr %9, align 4
  %473 = sext i32 %472 to i64
  %474 = getelementptr inbounds [100 x i32], ptr @array, i64 0, i64 %473
  %475 = load i32, ptr %474, align 4
  store i32 %475, ptr %17, align 4
  %476 = load i32, ptr %15, align 4
  %477 = icmp eq i32 %476, 101
  br i1 %477, label %478, label %480

478:                                              ; preds = %471
  br label %479

479:                                              ; preds = %478, %479
  br label %479

480:                                              ; preds = %471
  %481 = load i32, ptr %17, align 4
  %482 = load i32, ptr %15, align 4
  %483 = sext i32 %482 to i64
  %484 = getelementptr inbounds [101 x i32], ptr %18, i64 0, i64 %483
  store i32 %481, ptr %484, align 4
  %485 = load i32, ptr %15, align 4
  %486 = icmp eq i32 %485, 101
  br i1 %486, label %487, label %489

487:                                              ; preds = %480
  br label %488

488:                                              ; preds = %487, %488
  br label %488

489:                                              ; preds = %480
  %490 = load i32, ptr %15, align 4
  %491 = add nsw i32 %490, 1
  store i32 %491, ptr %15, align 4
  store i32 %490, ptr %37, align 4
  br label %492

492:                                              ; preds = %525, %489
  %493 = load i32, ptr %37, align 4
  %494 = icmp sgt i32 %493, 0
  br i1 %494, label %495, label %523

495:                                              ; preds = %492
  %496 = load i32, ptr %37, align 4
  %497 = sdiv i32 %496, 2
  %498 = sext i32 %497 to i64
  %499 = getelementptr inbounds [101 x i32], ptr %18, i64 0, i64 %498
  %500 = load i32, ptr %499, align 4
  %501 = load i32, ptr %37, align 4
  %502 = sext i32 %501 to i64
  %503 = getelementptr inbounds [101 x i32], ptr %18, i64 0, i64 %502
  %504 = load i32, ptr %503, align 4
  %505 = icmp sgt i32 %500, %504
  br i1 %505, label %506, label %507

506:                                              ; preds = %495
  br label %520

507:                                              ; preds = %495
  %508 = load i32, ptr %37, align 4
  %509 = sdiv i32 %508, 2
  %510 = sext i32 %509 to i64
  %511 = getelementptr inbounds [101 x i32], ptr %18, i64 0, i64 %510
  %512 = load i32, ptr %511, align 4
  %513 = load i32, ptr %37, align 4
  %514 = sext i32 %513 to i64
  %515 = getelementptr inbounds [101 x i32], ptr %18, i64 0, i64 %514
  %516 = load i32, ptr %515, align 4
  %517 = icmp slt i32 %512, %516
  %518 = zext i1 %517 to i64
  %519 = select i1 %517, i32 -1, i32 0
  br label %520

520:                                              ; preds = %507, %506
  %521 = phi i32 [ 1, %506 ], [ %519, %507 ]
  %522 = icmp slt i32 %521, 0
  br label %523

523:                                              ; preds = %520, %492
  %524 = phi i1 [ false, %492 ], [ %522, %520 ]
  br i1 %524, label %525, label %545

525:                                              ; preds = %523
  %526 = load i32, ptr %37, align 4
  %527 = sdiv i32 %526, 2
  %528 = sext i32 %527 to i64
  %529 = getelementptr inbounds [101 x i32], ptr %18, i64 0, i64 %528
  %530 = load i32, ptr %529, align 4
  store i32 %530, ptr %38, align 4
  %531 = load i32, ptr %37, align 4
  %532 = sext i32 %531 to i64
  %533 = getelementptr inbounds [101 x i32], ptr %18, i64 0, i64 %532
  %534 = load i32, ptr %533, align 4
  %535 = load i32, ptr %37, align 4
  %536 = sdiv i32 %535, 2
  %537 = sext i32 %536 to i64
  %538 = getelementptr inbounds [101 x i32], ptr %18, i64 0, i64 %537
  store i32 %534, ptr %538, align 4
  %539 = load i32, ptr %38, align 4
  %540 = load i32, ptr %37, align 4
  %541 = sext i32 %540 to i64
  %542 = getelementptr inbounds [101 x i32], ptr %18, i64 0, i64 %541
  store i32 %539, ptr %542, align 4
  %543 = load i32, ptr %37, align 4
  %544 = sdiv i32 %543, 2
  store i32 %544, ptr %37, align 4
  br label %492, !llvm.loop !76

545:                                              ; preds = %523
  br label %546

546:                                              ; preds = %545
  %547 = load i32, ptr %9, align 4
  %548 = add nsw i32 %547, 1
  store i32 %548, ptr %9, align 4
  br label %468, !llvm.loop !77

549:                                              ; preds = %468
  br label %550

550:                                              ; preds = %669, %549
  %551 = load i32, ptr %15, align 4
  %552 = icmp eq i32 %551, 0
  %553 = xor i1 %552, true
  br i1 %553, label %554, label %670

554:                                              ; preds = %550
  %555 = getelementptr inbounds [101 x i32], ptr %18, i64 0, i64 0
  %556 = load i32, ptr %555, align 16
  %557 = load volatile i32, ptr %5, align 4
  %558 = add nsw i32 %557, %556
  store volatile i32 %558, ptr %5, align 4
  %559 = load i32, ptr %15, align 4
  %560 = icmp eq i32 %559, 0
  br i1 %560, label %561, label %563

561:                                              ; preds = %554
  br label %562

562:                                              ; preds = %561, %562
  br label %562

563:                                              ; preds = %554
  %564 = load i32, ptr %15, align 4
  %565 = add nsw i32 %564, -1
  store i32 %565, ptr %15, align 4
  %566 = load i32, ptr %15, align 4
  %567 = sext i32 %566 to i64
  %568 = getelementptr inbounds [101 x i32], ptr %18, i64 0, i64 %567
  %569 = load i32, ptr %568, align 4
  %570 = getelementptr inbounds [101 x i32], ptr %18, i64 0, i64 0
  store i32 %569, ptr %570, align 16
  store i32 0, ptr %42, align 4
  %571 = load i32, ptr %42, align 4
  store i32 %571, ptr %39, align 4
  br label %572

572:                                              ; preds = %665, %563
  %573 = load i32, ptr %39, align 4
  store i32 %573, ptr %42, align 4
  %574 = load i32, ptr %42, align 4
  %575 = mul nsw i32 2, %574
  %576 = add nsw i32 %575, 1
  store i32 %576, ptr %40, align 4
  %577 = load i32, ptr %40, align 4
  %578 = add nsw i32 %577, 1
  store i32 %578, ptr %41, align 4
  %579 = load i32, ptr %40, align 4
  %580 = load i32, ptr %15, align 4
  %581 = icmp slt i32 %579, %580
  br i1 %581, label %582, label %644

582:                                              ; preds = %572
  %583 = load i32, ptr %39, align 4
  %584 = sext i32 %583 to i64
  %585 = getelementptr inbounds [101 x i32], ptr %18, i64 0, i64 %584
  %586 = load i32, ptr %585, align 4
  %587 = load i32, ptr %40, align 4
  %588 = sext i32 %587 to i64
  %589 = getelementptr inbounds [101 x i32], ptr %18, i64 0, i64 %588
  %590 = load i32, ptr %589, align 4
  %591 = icmp sgt i32 %586, %590
  br i1 %591, label %592, label %593

592:                                              ; preds = %582
  br label %605

593:                                              ; preds = %582
  %594 = load i32, ptr %39, align 4
  %595 = sext i32 %594 to i64
  %596 = getelementptr inbounds [101 x i32], ptr %18, i64 0, i64 %595
  %597 = load i32, ptr %596, align 4
  %598 = load i32, ptr %40, align 4
  %599 = sext i32 %598 to i64
  %600 = getelementptr inbounds [101 x i32], ptr %18, i64 0, i64 %599
  %601 = load i32, ptr %600, align 4
  %602 = icmp slt i32 %597, %601
  %603 = zext i1 %602 to i64
  %604 = select i1 %602, i32 -1, i32 0
  br label %605

605:                                              ; preds = %593, %592
  %606 = phi i32 [ 1, %592 ], [ %604, %593 ]
  %607 = icmp slt i32 %606, 0
  br i1 %607, label %608, label %610

608:                                              ; preds = %605
  %609 = load i32, ptr %40, align 4
  store i32 %609, ptr %39, align 4
  br label %610

610:                                              ; preds = %608, %605
  %611 = load i32, ptr %41, align 4
  %612 = load i32, ptr %15, align 4
  %613 = icmp slt i32 %611, %612
  br i1 %613, label %614, label %643

614:                                              ; preds = %610
  %615 = load i32, ptr %39, align 4
  %616 = sext i32 %615 to i64
  %617 = getelementptr inbounds [101 x i32], ptr %18, i64 0, i64 %616
  %618 = load i32, ptr %617, align 4
  %619 = load i32, ptr %41, align 4
  %620 = sext i32 %619 to i64
  %621 = getelementptr inbounds [101 x i32], ptr %18, i64 0, i64 %620
  %622 = load i32, ptr %621, align 4
  %623 = icmp sgt i32 %618, %622
  br i1 %623, label %624, label %625

624:                                              ; preds = %614
  br label %637

625:                                              ; preds = %614
  %626 = load i32, ptr %39, align 4
  %627 = sext i32 %626 to i64
  %628 = getelementptr inbounds [101 x i32], ptr %18, i64 0, i64 %627
  %629 = load i32, ptr %628, align 4
  %630 = load i32, ptr %41, align 4
  %631 = sext i32 %630 to i64
  %632 = getelementptr inbounds [101 x i32], ptr %18, i64 0, i64 %631
  %633 = load i32, ptr %632, align 4
  %634 = icmp slt i32 %629, %633
  %635 = zext i1 %634 to i64
  %636 = select i1 %634, i32 -1, i32 0
  br label %637

637:                                              ; preds = %625, %624
  %638 = phi i32 [ 1, %624 ], [ %636, %625 ]
  %639 = icmp slt i32 %638, 0
  br i1 %639, label %640, label %642

640:                                              ; preds = %637
  %641 = load i32, ptr %41, align 4
  store i32 %641, ptr %39, align 4
  br label %642

642:                                              ; preds = %640, %637
  br label %643

643:                                              ; preds = %642, %610
  br label %644

644:                                              ; preds = %643, %572
  %645 = load i32, ptr %39, align 4
  %646 = load i32, ptr %42, align 4
  %647 = icmp ne i32 %645, %646
  br i1 %647, label %648, label %664

648:                                              ; preds = %644
  %649 = load i32, ptr %42, align 4
  %650 = sext i32 %649 to i64
  %651 = getelementptr inbounds [101 x i32], ptr %18, i64 0, i64 %650
  %652 = load i32, ptr %651, align 4
  store i32 %652, ptr %43, align 4
  %653 = load i32, ptr %39, align 4
  %654 = sext i32 %653 to i64
  %655 = getelementptr inbounds [101 x i32], ptr %18, i64 0, i64 %654
  %656 = load i32, ptr %655, align 4
  %657 = load i32, ptr %42, align 4
  %658 = sext i32 %657 to i64
  %659 = getelementptr inbounds [101 x i32], ptr %18, i64 0, i64 %658
  store i32 %656, ptr %659, align 4
  %660 = load i32, ptr %43, align 4
  %661 = load i32, ptr %39, align 4
  %662 = sext i32 %661 to i64
  %663 = getelementptr inbounds [101 x i32], ptr %18, i64 0, i64 %662
  store i32 %660, ptr %663, align 4
  br label %664

664:                                              ; preds = %648, %644
  br label %665

665:                                              ; preds = %664
  %666 = load i32, ptr %39, align 4
  %667 = load i32, ptr %42, align 4
  %668 = icmp ne i32 %666, %667
  br i1 %668, label %572, label %669, !llvm.loop !78

669:                                              ; preds = %665
  br label %550, !llvm.loop !79

670:                                              ; preds = %550
  store ptr null, ptr %21, align 8
  store i32 0, ptr %9, align 4
  br label %671

671:                                              ; preds = %693, %670
  %672 = load i32, ptr %9, align 4
  %673 = icmp slt i32 %672, 100
  br i1 %673, label %674, label %696

674:                                              ; preds = %671
  %675 = load i32, ptr %9, align 4
  %676 = sext i32 %675 to i64
  %677 = getelementptr inbounds [100 x i32], ptr @array, i64 0, i64 %676
  %678 = load i32, ptr %677, align 4
  %679 = getelementptr inbounds nuw %struct.rbtree, ptr %19, i32 0, i32 0
  store i32 %678, ptr %679, align 8
  %680 = load ptr, ptr %21, align 8
  %681 = call ptr @sglib_rbtree_find_member(ptr noundef %680, ptr noundef %19)
  %682 = icmp eq ptr %681, null
  br i1 %682, label %683, label %692

683:                                              ; preds = %674
  %684 = call ptr @malloc_beebs(i64 noundef 24)
  store ptr %684, ptr %20, align 8
  %685 = load i32, ptr %9, align 4
  %686 = sext i32 %685 to i64
  %687 = getelementptr inbounds [100 x i32], ptr @array, i64 0, i64 %686
  %688 = load i32, ptr %687, align 4
  %689 = load ptr, ptr %20, align 8
  %690 = getelementptr inbounds nuw %struct.rbtree, ptr %689, i32 0, i32 0
  store i32 %688, ptr %690, align 8
  %691 = load ptr, ptr %20, align 8
  call void @sglib_rbtree_add(ptr noundef %21, ptr noundef %691)
  br label %692

692:                                              ; preds = %683, %674
  br label %693

693:                                              ; preds = %692
  %694 = load i32, ptr %9, align 4
  %695 = add nsw i32 %694, 1
  store i32 %695, ptr %9, align 4
  br label %671, !llvm.loop !80

696:                                              ; preds = %671
  %697 = load ptr, ptr %21, align 8
  %698 = call ptr @sglib_rbtree_it_init_inorder(ptr noundef %23, ptr noundef %697)
  store ptr %698, ptr %22, align 8
  br label %699

699:                                              ; preds = %708, %696
  %700 = load ptr, ptr %22, align 8
  %701 = icmp ne ptr %700, null
  br i1 %701, label %702, label %710

702:                                              ; preds = %699
  %703 = load ptr, ptr %22, align 8
  %704 = getelementptr inbounds nuw %struct.rbtree, ptr %703, i32 0, i32 0
  %705 = load i32, ptr %704, align 8
  %706 = load volatile i32, ptr %5, align 4
  %707 = add nsw i32 %706, %705
  store volatile i32 %707, ptr %5, align 4
  br label %708

708:                                              ; preds = %702
  %709 = call ptr @sglib_rbtree_it_next(ptr noundef %23)
  store ptr %709, ptr %22, align 8
  br label %699, !llvm.loop !81

710:                                              ; preds = %699
  br label %711

711:                                              ; preds = %710
  %712 = load i32, ptr %8, align 4
  %713 = add i32 %712, 1
  store i32 %713, ptr %8, align 4
  br label %49, !llvm.loop !82

714:                                              ; preds = %49
  br label %715

715:                                              ; preds = %714
  %716 = load i32, ptr %7, align 4
  %717 = add i32 %716, 1
  store i32 %717, ptr %7, align 4
  br label %44, !llvm.loop !83

718:                                              ; preds = %44
  %719 = load volatile i32, ptr %5, align 4
  ret i32 %719
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @benchmark() #0 {
  %1 = call i32 @benchmark_body(i32 noundef 31, i32 noundef 20)
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define internal void @sglib___rbtree_fix_left_insertion_discrepancy(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %13 = load ptr, ptr %2, align 8
  %14 = load ptr, ptr %13, align 8
  store ptr %14, ptr %3, align 8
  %15 = load ptr, ptr %3, align 8
  %16 = getelementptr inbounds nuw %struct.rbtree, ptr %15, i32 0, i32 2
  %17 = load ptr, ptr %16, align 8
  store ptr %17, ptr %4, align 8
  %18 = load ptr, ptr %3, align 8
  %19 = getelementptr inbounds nuw %struct.rbtree, ptr %18, i32 0, i32 3
  %20 = load ptr, ptr %19, align 8
  %21 = icmp ne ptr %20, null
  br i1 %21, label %22, label %75

22:                                               ; preds = %1
  %23 = load ptr, ptr %3, align 8
  %24 = getelementptr inbounds nuw %struct.rbtree, ptr %23, i32 0, i32 3
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds nuw %struct.rbtree, ptr %25, i32 0, i32 1
  %27 = load i8, ptr %26, align 4
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %75

30:                                               ; preds = %22
  %31 = load ptr, ptr %4, align 8
  %32 = getelementptr inbounds nuw %struct.rbtree, ptr %31, i32 0, i32 1
  %33 = load i8, ptr %32, align 4
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %74

36:                                               ; preds = %30
  %37 = load ptr, ptr %4, align 8
  %38 = getelementptr inbounds nuw %struct.rbtree, ptr %37, i32 0, i32 2
  %39 = load ptr, ptr %38, align 8
  %40 = icmp ne ptr %39, null
  br i1 %40, label %41, label %49

41:                                               ; preds = %36
  %42 = load ptr, ptr %4, align 8
  %43 = getelementptr inbounds nuw %struct.rbtree, ptr %42, i32 0, i32 2
  %44 = load ptr, ptr %43, align 8
  %45 = getelementptr inbounds nuw %struct.rbtree, ptr %44, i32 0, i32 1
  %46 = load i8, ptr %45, align 4
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %62, label %49

49:                                               ; preds = %41, %36
  %50 = load ptr, ptr %4, align 8
  %51 = getelementptr inbounds nuw %struct.rbtree, ptr %50, i32 0, i32 3
  %52 = load ptr, ptr %51, align 8
  %53 = icmp ne ptr %52, null
  br i1 %53, label %54, label %73

54:                                               ; preds = %49
  %55 = load ptr, ptr %4, align 8
  %56 = getelementptr inbounds nuw %struct.rbtree, ptr %55, i32 0, i32 3
  %57 = load ptr, ptr %56, align 8
  %58 = getelementptr inbounds nuw %struct.rbtree, ptr %57, i32 0, i32 1
  %59 = load i8, ptr %58, align 4
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %62, label %73

62:                                               ; preds = %54, %41
  %63 = load ptr, ptr %3, align 8
  %64 = getelementptr inbounds nuw %struct.rbtree, ptr %63, i32 0, i32 2
  %65 = load ptr, ptr %64, align 8
  %66 = getelementptr inbounds nuw %struct.rbtree, ptr %65, i32 0, i32 1
  store i8 0, ptr %66, align 4
  %67 = load ptr, ptr %3, align 8
  %68 = getelementptr inbounds nuw %struct.rbtree, ptr %67, i32 0, i32 3
  %69 = load ptr, ptr %68, align 8
  %70 = getelementptr inbounds nuw %struct.rbtree, ptr %69, i32 0, i32 1
  store i8 0, ptr %70, align 4
  %71 = load ptr, ptr %3, align 8
  %72 = getelementptr inbounds nuw %struct.rbtree, ptr %71, i32 0, i32 1
  store i8 1, ptr %72, align 4
  br label %73

73:                                               ; preds = %62, %54, %49
  br label %74

74:                                               ; preds = %73, %30
  br label %170

75:                                               ; preds = %22, %1
  %76 = load ptr, ptr %4, align 8
  %77 = getelementptr inbounds nuw %struct.rbtree, ptr %76, i32 0, i32 1
  %78 = load i8, ptr %77, align 4
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 1
  br i1 %80, label %81, label %169

81:                                               ; preds = %75
  %82 = load ptr, ptr %4, align 8
  %83 = getelementptr inbounds nuw %struct.rbtree, ptr %82, i32 0, i32 2
  %84 = load ptr, ptr %83, align 8
  %85 = icmp ne ptr %84, null
  br i1 %85, label %86, label %118

86:                                               ; preds = %81
  %87 = load ptr, ptr %4, align 8
  %88 = getelementptr inbounds nuw %struct.rbtree, ptr %87, i32 0, i32 2
  %89 = load ptr, ptr %88, align 8
  %90 = getelementptr inbounds nuw %struct.rbtree, ptr %89, i32 0, i32 1
  %91 = load i8, ptr %90, align 4
  %92 = sext i8 %91 to i32
  %93 = icmp eq i32 %92, 1
  br i1 %93, label %94, label %118

94:                                               ; preds = %86
  %95 = load ptr, ptr %3, align 8
  store ptr %95, ptr %5, align 8
  %96 = load ptr, ptr %4, align 8
  store ptr %96, ptr %6, align 8
  %97 = load ptr, ptr %4, align 8
  %98 = getelementptr inbounds nuw %struct.rbtree, ptr %97, i32 0, i32 2
  %99 = load ptr, ptr %98, align 8
  store ptr %99, ptr %7, align 8
  %100 = load ptr, ptr %6, align 8
  %101 = getelementptr inbounds nuw %struct.rbtree, ptr %100, i32 0, i32 3
  %102 = load ptr, ptr %101, align 8
  store ptr %102, ptr %10, align 8
  %103 = load ptr, ptr %10, align 8
  %104 = load ptr, ptr %5, align 8
  %105 = getelementptr inbounds nuw %struct.rbtree, ptr %104, i32 0, i32 2
  store ptr %103, ptr %105, align 8
  %106 = load ptr, ptr %7, align 8
  %107 = load ptr, ptr %6, align 8
  %108 = getelementptr inbounds nuw %struct.rbtree, ptr %107, i32 0, i32 2
  store ptr %106, ptr %108, align 8
  %109 = load ptr, ptr %5, align 8
  %110 = load ptr, ptr %6, align 8
  %111 = getelementptr inbounds nuw %struct.rbtree, ptr %110, i32 0, i32 3
  store ptr %109, ptr %111, align 8
  %112 = load ptr, ptr %5, align 8
  %113 = getelementptr inbounds nuw %struct.rbtree, ptr %112, i32 0, i32 1
  store i8 1, ptr %113, align 4
  %114 = load ptr, ptr %6, align 8
  %115 = getelementptr inbounds nuw %struct.rbtree, ptr %114, i32 0, i32 1
  store i8 0, ptr %115, align 4
  %116 = load ptr, ptr %6, align 8
  %117 = load ptr, ptr %2, align 8
  store ptr %116, ptr %117, align 8
  br label %168

118:                                              ; preds = %86, %81
  %119 = load ptr, ptr %4, align 8
  %120 = getelementptr inbounds nuw %struct.rbtree, ptr %119, i32 0, i32 3
  %121 = load ptr, ptr %120, align 8
  %122 = icmp ne ptr %121, null
  br i1 %122, label %123, label %167

123:                                              ; preds = %118
  %124 = load ptr, ptr %4, align 8
  %125 = getelementptr inbounds nuw %struct.rbtree, ptr %124, i32 0, i32 3
  %126 = load ptr, ptr %125, align 8
  %127 = getelementptr inbounds nuw %struct.rbtree, ptr %126, i32 0, i32 1
  %128 = load i8, ptr %127, align 4
  %129 = sext i8 %128 to i32
  %130 = icmp eq i32 %129, 1
  br i1 %130, label %131, label %167

131:                                              ; preds = %123
  %132 = load ptr, ptr %3, align 8
  store ptr %132, ptr %5, align 8
  %133 = load ptr, ptr %4, align 8
  store ptr %133, ptr %6, align 8
  %134 = load ptr, ptr %5, align 8
  %135 = getelementptr inbounds nuw %struct.rbtree, ptr %134, i32 0, i32 3
  %136 = load ptr, ptr %135, align 8
  store ptr %136, ptr %8, align 8
  %137 = load ptr, ptr %6, align 8
  %138 = getelementptr inbounds nuw %struct.rbtree, ptr %137, i32 0, i32 2
  %139 = load ptr, ptr %138, align 8
  store ptr %139, ptr %9, align 8
  %140 = load ptr, ptr %6, align 8
  %141 = getelementptr inbounds nuw %struct.rbtree, ptr %140, i32 0, i32 3
  %142 = load ptr, ptr %141, align 8
  store ptr %142, ptr %7, align 8
  %143 = load ptr, ptr %7, align 8
  %144 = getelementptr inbounds nuw %struct.rbtree, ptr %143, i32 0, i32 2
  %145 = load ptr, ptr %144, align 8
  store ptr %145, ptr %11, align 8
  %146 = load ptr, ptr %7, align 8
  %147 = getelementptr inbounds nuw %struct.rbtree, ptr %146, i32 0, i32 3
  %148 = load ptr, ptr %147, align 8
  store ptr %148, ptr %12, align 8
  %149 = load ptr, ptr %11, align 8
  %150 = load ptr, ptr %6, align 8
  %151 = getelementptr inbounds nuw %struct.rbtree, ptr %150, i32 0, i32 3
  store ptr %149, ptr %151, align 8
  %152 = load ptr, ptr %12, align 8
  %153 = load ptr, ptr %5, align 8
  %154 = getelementptr inbounds nuw %struct.rbtree, ptr %153, i32 0, i32 2
  store ptr %152, ptr %154, align 8
  %155 = load ptr, ptr %6, align 8
  %156 = load ptr, ptr %7, align 8
  %157 = getelementptr inbounds nuw %struct.rbtree, ptr %156, i32 0, i32 2
  store ptr %155, ptr %157, align 8
  %158 = load ptr, ptr %5, align 8
  %159 = load ptr, ptr %7, align 8
  %160 = getelementptr inbounds nuw %struct.rbtree, ptr %159, i32 0, i32 3
  store ptr %158, ptr %160, align 8
  %161 = load ptr, ptr %7, align 8
  %162 = getelementptr inbounds nuw %struct.rbtree, ptr %161, i32 0, i32 1
  store i8 0, ptr %162, align 4
  %163 = load ptr, ptr %5, align 8
  %164 = getelementptr inbounds nuw %struct.rbtree, ptr %163, i32 0, i32 1
  store i8 1, ptr %164, align 4
  %165 = load ptr, ptr %7, align 8
  %166 = load ptr, ptr %2, align 8
  store ptr %165, ptr %166, align 8
  br label %167

167:                                              ; preds = %131, %123, %118
  br label %168

168:                                              ; preds = %167, %94
  br label %169

169:                                              ; preds = %168, %75
  br label %170

170:                                              ; preds = %169, %74
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @sglib___rbtree_fix_right_insertion_discrepancy(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %13 = load ptr, ptr %2, align 8
  %14 = load ptr, ptr %13, align 8
  store ptr %14, ptr %3, align 8
  %15 = load ptr, ptr %3, align 8
  %16 = getelementptr inbounds nuw %struct.rbtree, ptr %15, i32 0, i32 3
  %17 = load ptr, ptr %16, align 8
  store ptr %17, ptr %4, align 8
  %18 = load ptr, ptr %3, align 8
  %19 = getelementptr inbounds nuw %struct.rbtree, ptr %18, i32 0, i32 2
  %20 = load ptr, ptr %19, align 8
  %21 = icmp ne ptr %20, null
  br i1 %21, label %22, label %75

22:                                               ; preds = %1
  %23 = load ptr, ptr %3, align 8
  %24 = getelementptr inbounds nuw %struct.rbtree, ptr %23, i32 0, i32 2
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds nuw %struct.rbtree, ptr %25, i32 0, i32 1
  %27 = load i8, ptr %26, align 4
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %75

30:                                               ; preds = %22
  %31 = load ptr, ptr %4, align 8
  %32 = getelementptr inbounds nuw %struct.rbtree, ptr %31, i32 0, i32 1
  %33 = load i8, ptr %32, align 4
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %74

36:                                               ; preds = %30
  %37 = load ptr, ptr %4, align 8
  %38 = getelementptr inbounds nuw %struct.rbtree, ptr %37, i32 0, i32 3
  %39 = load ptr, ptr %38, align 8
  %40 = icmp ne ptr %39, null
  br i1 %40, label %41, label %49

41:                                               ; preds = %36
  %42 = load ptr, ptr %4, align 8
  %43 = getelementptr inbounds nuw %struct.rbtree, ptr %42, i32 0, i32 3
  %44 = load ptr, ptr %43, align 8
  %45 = getelementptr inbounds nuw %struct.rbtree, ptr %44, i32 0, i32 1
  %46 = load i8, ptr %45, align 4
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %62, label %49

49:                                               ; preds = %41, %36
  %50 = load ptr, ptr %4, align 8
  %51 = getelementptr inbounds nuw %struct.rbtree, ptr %50, i32 0, i32 2
  %52 = load ptr, ptr %51, align 8
  %53 = icmp ne ptr %52, null
  br i1 %53, label %54, label %73

54:                                               ; preds = %49
  %55 = load ptr, ptr %4, align 8
  %56 = getelementptr inbounds nuw %struct.rbtree, ptr %55, i32 0, i32 2
  %57 = load ptr, ptr %56, align 8
  %58 = getelementptr inbounds nuw %struct.rbtree, ptr %57, i32 0, i32 1
  %59 = load i8, ptr %58, align 4
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %62, label %73

62:                                               ; preds = %54, %41
  %63 = load ptr, ptr %3, align 8
  %64 = getelementptr inbounds nuw %struct.rbtree, ptr %63, i32 0, i32 3
  %65 = load ptr, ptr %64, align 8
  %66 = getelementptr inbounds nuw %struct.rbtree, ptr %65, i32 0, i32 1
  store i8 0, ptr %66, align 4
  %67 = load ptr, ptr %3, align 8
  %68 = getelementptr inbounds nuw %struct.rbtree, ptr %67, i32 0, i32 2
  %69 = load ptr, ptr %68, align 8
  %70 = getelementptr inbounds nuw %struct.rbtree, ptr %69, i32 0, i32 1
  store i8 0, ptr %70, align 4
  %71 = load ptr, ptr %3, align 8
  %72 = getelementptr inbounds nuw %struct.rbtree, ptr %71, i32 0, i32 1
  store i8 1, ptr %72, align 4
  br label %73

73:                                               ; preds = %62, %54, %49
  br label %74

74:                                               ; preds = %73, %30
  br label %170

75:                                               ; preds = %22, %1
  %76 = load ptr, ptr %4, align 8
  %77 = getelementptr inbounds nuw %struct.rbtree, ptr %76, i32 0, i32 1
  %78 = load i8, ptr %77, align 4
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 1
  br i1 %80, label %81, label %169

81:                                               ; preds = %75
  %82 = load ptr, ptr %4, align 8
  %83 = getelementptr inbounds nuw %struct.rbtree, ptr %82, i32 0, i32 3
  %84 = load ptr, ptr %83, align 8
  %85 = icmp ne ptr %84, null
  br i1 %85, label %86, label %118

86:                                               ; preds = %81
  %87 = load ptr, ptr %4, align 8
  %88 = getelementptr inbounds nuw %struct.rbtree, ptr %87, i32 0, i32 3
  %89 = load ptr, ptr %88, align 8
  %90 = getelementptr inbounds nuw %struct.rbtree, ptr %89, i32 0, i32 1
  %91 = load i8, ptr %90, align 4
  %92 = sext i8 %91 to i32
  %93 = icmp eq i32 %92, 1
  br i1 %93, label %94, label %118

94:                                               ; preds = %86
  %95 = load ptr, ptr %3, align 8
  store ptr %95, ptr %5, align 8
  %96 = load ptr, ptr %4, align 8
  store ptr %96, ptr %6, align 8
  %97 = load ptr, ptr %4, align 8
  %98 = getelementptr inbounds nuw %struct.rbtree, ptr %97, i32 0, i32 3
  %99 = load ptr, ptr %98, align 8
  store ptr %99, ptr %7, align 8
  %100 = load ptr, ptr %6, align 8
  %101 = getelementptr inbounds nuw %struct.rbtree, ptr %100, i32 0, i32 2
  %102 = load ptr, ptr %101, align 8
  store ptr %102, ptr %10, align 8
  %103 = load ptr, ptr %10, align 8
  %104 = load ptr, ptr %5, align 8
  %105 = getelementptr inbounds nuw %struct.rbtree, ptr %104, i32 0, i32 3
  store ptr %103, ptr %105, align 8
  %106 = load ptr, ptr %7, align 8
  %107 = load ptr, ptr %6, align 8
  %108 = getelementptr inbounds nuw %struct.rbtree, ptr %107, i32 0, i32 3
  store ptr %106, ptr %108, align 8
  %109 = load ptr, ptr %5, align 8
  %110 = load ptr, ptr %6, align 8
  %111 = getelementptr inbounds nuw %struct.rbtree, ptr %110, i32 0, i32 2
  store ptr %109, ptr %111, align 8
  %112 = load ptr, ptr %5, align 8
  %113 = getelementptr inbounds nuw %struct.rbtree, ptr %112, i32 0, i32 1
  store i8 1, ptr %113, align 4
  %114 = load ptr, ptr %6, align 8
  %115 = getelementptr inbounds nuw %struct.rbtree, ptr %114, i32 0, i32 1
  store i8 0, ptr %115, align 4
  %116 = load ptr, ptr %6, align 8
  %117 = load ptr, ptr %2, align 8
  store ptr %116, ptr %117, align 8
  br label %168

118:                                              ; preds = %86, %81
  %119 = load ptr, ptr %4, align 8
  %120 = getelementptr inbounds nuw %struct.rbtree, ptr %119, i32 0, i32 2
  %121 = load ptr, ptr %120, align 8
  %122 = icmp ne ptr %121, null
  br i1 %122, label %123, label %167

123:                                              ; preds = %118
  %124 = load ptr, ptr %4, align 8
  %125 = getelementptr inbounds nuw %struct.rbtree, ptr %124, i32 0, i32 2
  %126 = load ptr, ptr %125, align 8
  %127 = getelementptr inbounds nuw %struct.rbtree, ptr %126, i32 0, i32 1
  %128 = load i8, ptr %127, align 4
  %129 = sext i8 %128 to i32
  %130 = icmp eq i32 %129, 1
  br i1 %130, label %131, label %167

131:                                              ; preds = %123
  %132 = load ptr, ptr %3, align 8
  store ptr %132, ptr %5, align 8
  %133 = load ptr, ptr %4, align 8
  store ptr %133, ptr %6, align 8
  %134 = load ptr, ptr %5, align 8
  %135 = getelementptr inbounds nuw %struct.rbtree, ptr %134, i32 0, i32 2
  %136 = load ptr, ptr %135, align 8
  store ptr %136, ptr %8, align 8
  %137 = load ptr, ptr %6, align 8
  %138 = getelementptr inbounds nuw %struct.rbtree, ptr %137, i32 0, i32 3
  %139 = load ptr, ptr %138, align 8
  store ptr %139, ptr %9, align 8
  %140 = load ptr, ptr %6, align 8
  %141 = getelementptr inbounds nuw %struct.rbtree, ptr %140, i32 0, i32 2
  %142 = load ptr, ptr %141, align 8
  store ptr %142, ptr %7, align 8
  %143 = load ptr, ptr %7, align 8
  %144 = getelementptr inbounds nuw %struct.rbtree, ptr %143, i32 0, i32 3
  %145 = load ptr, ptr %144, align 8
  store ptr %145, ptr %11, align 8
  %146 = load ptr, ptr %7, align 8
  %147 = getelementptr inbounds nuw %struct.rbtree, ptr %146, i32 0, i32 2
  %148 = load ptr, ptr %147, align 8
  store ptr %148, ptr %12, align 8
  %149 = load ptr, ptr %11, align 8
  %150 = load ptr, ptr %6, align 8
  %151 = getelementptr inbounds nuw %struct.rbtree, ptr %150, i32 0, i32 2
  store ptr %149, ptr %151, align 8
  %152 = load ptr, ptr %12, align 8
  %153 = load ptr, ptr %5, align 8
  %154 = getelementptr inbounds nuw %struct.rbtree, ptr %153, i32 0, i32 3
  store ptr %152, ptr %154, align 8
  %155 = load ptr, ptr %6, align 8
  %156 = load ptr, ptr %7, align 8
  %157 = getelementptr inbounds nuw %struct.rbtree, ptr %156, i32 0, i32 3
  store ptr %155, ptr %157, align 8
  %158 = load ptr, ptr %5, align 8
  %159 = load ptr, ptr %7, align 8
  %160 = getelementptr inbounds nuw %struct.rbtree, ptr %159, i32 0, i32 2
  store ptr %158, ptr %160, align 8
  %161 = load ptr, ptr %7, align 8
  %162 = getelementptr inbounds nuw %struct.rbtree, ptr %161, i32 0, i32 1
  store i8 0, ptr %162, align 4
  %163 = load ptr, ptr %5, align 8
  %164 = getelementptr inbounds nuw %struct.rbtree, ptr %163, i32 0, i32 1
  store i8 1, ptr %164, align 4
  %165 = load ptr, ptr %7, align 8
  %166 = load ptr, ptr %2, align 8
  store ptr %165, ptr %166, align 8
  br label %167

167:                                              ; preds = %131, %123, %118
  br label %168

168:                                              ; preds = %167, %94
  br label %169

169:                                              ; preds = %168, %75
  br label %170

170:                                              ; preds = %169, %74
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

declare void @init_heap_beebs(ptr noundef, i64 noundef) #1

declare ptr @malloc_beebs(i64 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
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
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
!17 = distinct !{!17, !7}
!18 = distinct !{!18, !7}
!19 = distinct !{!19, !7}
!20 = distinct !{!20, !7}
!21 = distinct !{!21, !7}
!22 = distinct !{!22, !7}
!23 = distinct !{!23, !7}
!24 = distinct !{!24, !7}
!25 = distinct !{!25, !7}
!26 = distinct !{!26, !7}
!27 = distinct !{!27, !7}
!28 = distinct !{!28, !7}
!29 = distinct !{!29, !7}
!30 = distinct !{!30, !7}
!31 = distinct !{!31, !7}
!32 = distinct !{!32, !7}
!33 = distinct !{!33, !7}
!34 = distinct !{!34, !7}
!35 = distinct !{!35, !7}
!36 = distinct !{!36, !7}
!37 = distinct !{!37, !7}
!38 = distinct !{!38, !7}
!39 = distinct !{!39, !7}
!40 = distinct !{!40, !7}
!41 = distinct !{!41, !7}
!42 = distinct !{!42, !7}
!43 = distinct !{!43, !7}
!44 = distinct !{!44, !7}
!45 = distinct !{!45, !7}
!46 = distinct !{!46, !7}
!47 = distinct !{!47, !7}
!48 = distinct !{!48, !7}
!49 = distinct !{!49, !7}
!50 = distinct !{!50, !7}
!51 = distinct !{!51, !7}
!52 = distinct !{!52, !7}
!53 = distinct !{!53, !7}
!54 = distinct !{!54, !7}
!55 = distinct !{!55, !7}
!56 = distinct !{!56, !7}
!57 = distinct !{!57, !7}
!58 = distinct !{!58, !7}
!59 = distinct !{!59, !7}
!60 = distinct !{!60, !7}
!61 = distinct !{!61, !7}
!62 = distinct !{!62, !7}
!63 = distinct !{!63, !7}
!64 = distinct !{!64, !7}
!65 = distinct !{!65, !7}
!66 = distinct !{!66, !7}
!67 = distinct !{!67, !7}
!68 = distinct !{!68, !7}
!69 = distinct !{!69, !7}
!70 = distinct !{!70, !7}
!71 = distinct !{!71, !7}
!72 = distinct !{!72, !7}
!73 = distinct !{!73, !7}
!74 = distinct !{!74, !7}
!75 = distinct !{!75, !7}
!76 = distinct !{!76, !7}
!77 = distinct !{!77, !7}
!78 = distinct !{!78, !7}
!79 = distinct !{!79, !7}
!80 = distinct !{!80, !7}
!81 = distinct !{!81, !7}
!82 = distinct !{!82, !7}
!83 = distinct !{!83, !7}
