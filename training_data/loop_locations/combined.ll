; ModuleID = '../src/sglib-combined/combined.c'
source_filename = "../src/sglib-combined/combined.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sglib_rbtree_iterator = type { ptr, [128 x i8], [128 x ptr], i16, i16, ptr, ptr }

@verify_benchmark.array_exp = internal constant [100 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99], align 16
@the_list = dso_local global ptr null, align 8
@array = internal unnamed_addr constant [100 x i32] [i32 14, i32 66, i32 12, i32 41, i32 86, i32 69, i32 19, i32 77, i32 68, i32 38, i32 26, i32 42, i32 37, i32 23, i32 17, i32 29, i32 55, i32 13, i32 90, i32 92, i32 76, i32 99, i32 10, i32 54, i32 57, i32 83, i32 40, i32 44, i32 75, i32 33, i32 24, i32 28, i32 80, i32 18, i32 78, i32 32, i32 93, i32 89, i32 52, i32 11, i32 21, i32 96, i32 50, i32 15, i32 48, i32 63, i32 87, i32 20, i32 8, i32 85, i32 43, i32 16, i32 94, i32 88, i32 53, i32 84, i32 74, i32 91, i32 67, i32 36, i32 95, i32 61, i32 64, i32 5, i32 30, i32 82, i32 72, i32 46, i32 59, i32 9, i32 7, i32 3, i32 39, i32 31, i32 4, i32 73, i32 70, i32 60, i32 58, i32 81, i32 56, i32 51, i32 45, i32 1, i32 6, i32 49, i32 27, i32 47, i32 34, i32 35, i32 62, i32 97, i32 2, i32 79, i32 98, i32 25, i32 22, i32 65, i32 71, i32 0], align 16
@htab = dso_local local_unnamed_addr global [20 x ptr] zeroinitializer, align 16
@heap = internal global [8192 x i8] zeroinitializer, align 16
@array2 = dso_local global [100 x i32] zeroinitializer, align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @sglib_dllist_add(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  store ptr %1, ptr %0, align 8, !tbaa !5
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr null, ptr %6, align 8, !tbaa !10
  %7 = load ptr, ptr %0, align 8, !tbaa !5
  br label %18

8:                                                ; preds = %2
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %3, ptr %9, align 8, !tbaa !13
  %10 = load ptr, ptr %0, align 8, !tbaa !5
  %11 = getelementptr inbounds nuw i8, ptr %10, i64 16
  %12 = load ptr, ptr %11, align 8, !tbaa !10
  %13 = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %12, ptr %13, align 8, !tbaa !10
  %14 = load ptr, ptr %0, align 8, !tbaa !5
  %15 = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr %1, ptr %15, align 8, !tbaa !10
  %16 = load ptr, ptr %13, align 8, !tbaa !10
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %8, %5
  %19 = phi ptr [ %7, %5 ], [ %16, %8 ]
  %20 = phi ptr [ null, %5 ], [ %1, %8 ]
  %21 = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr %20, ptr %21, align 8, !tbaa !13
  br label %22

22:                                               ; preds = %18, %8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @sglib_dllist_add_after(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %9

5:                                                ; preds = %2
  store ptr %1, ptr %0, align 8, !tbaa !5
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr null, ptr %6, align 8, !tbaa !10
  %7 = load ptr, ptr %0, align 8, !tbaa !5
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr null, ptr %8, align 8, !tbaa !13
  br label %20

9:                                                ; preds = %2
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %11 = load ptr, ptr %10, align 8, !tbaa !13
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %11, ptr %12, align 8, !tbaa !13
  %13 = load ptr, ptr %0, align 8, !tbaa !5
  %14 = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %13, ptr %14, align 8, !tbaa !10
  %15 = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %1, ptr %15, align 8, !tbaa !13
  %16 = load ptr, ptr %12, align 8, !tbaa !13
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %9
  %19 = getelementptr inbounds nuw i8, ptr %16, i64 16
  store ptr %1, ptr %19, align 8, !tbaa !10
  br label %20

20:                                               ; preds = %9, %18, %5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @sglib_dllist_add_before(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  store ptr %1, ptr %0, align 8, !tbaa !5
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr null, ptr %6, align 8, !tbaa !10
  %7 = load ptr, ptr %0, align 8, !tbaa !5
  br label %18

8:                                                ; preds = %2
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %3, ptr %9, align 8, !tbaa !13
  %10 = load ptr, ptr %0, align 8, !tbaa !5
  %11 = getelementptr inbounds nuw i8, ptr %10, i64 16
  %12 = load ptr, ptr %11, align 8, !tbaa !10
  %13 = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %12, ptr %13, align 8, !tbaa !10
  %14 = load ptr, ptr %0, align 8, !tbaa !5
  %15 = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr %1, ptr %15, align 8, !tbaa !10
  %16 = load ptr, ptr %13, align 8, !tbaa !10
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %8, %5
  %19 = phi ptr [ %7, %5 ], [ %16, %8 ]
  %20 = phi ptr [ null, %5 ], [ %1, %8 ]
  %21 = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr %20, ptr %21, align 8, !tbaa !13
  br label %22

22:                                               ; preds = %18, %8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local range(i32 0, 2) i32 @sglib_dllist_add_if_not_member(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef %2) local_unnamed_addr #1 {
  %4 = load ptr, ptr %0, align 8, !tbaa !5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %27, label %6

6:                                                ; preds = %3
  %7 = load i32, ptr %1, align 8, !tbaa !14
  br label %8

8:                                                ; preds = %6, %12
  %9 = phi ptr [ %4, %6 ], [ %14, %12 ]
  %10 = load i32, ptr %9, align 8, !tbaa !14
  %11 = icmp eq i32 %10, %7
  br i1 %11, label %25, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %9, i64 16
  %14 = load ptr, ptr %13, align 8, !tbaa !5
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %8, !llvm.loop !15

16:                                               ; preds = %12, %21
  %17 = phi ptr [ %19, %21 ], [ %4, %12 ]
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 8
  %19 = load ptr, ptr %18, align 8, !tbaa !13
  %20 = icmp eq ptr %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %16
  %22 = load i32, ptr %19, align 8, !tbaa !14
  %23 = load i32, ptr %1, align 8, !tbaa !14
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %16, !llvm.loop !17

25:                                               ; preds = %8, %21
  %26 = phi ptr [ %19, %21 ], [ %9, %8 ]
  store ptr %26, ptr %2, align 8, !tbaa !5
  br label %46

27:                                               ; preds = %16, %3
  store ptr null, ptr %2, align 8, !tbaa !5
  %28 = load ptr, ptr %0, align 8, !tbaa !5
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  store ptr %1, ptr %0, align 8, !tbaa !5
  %31 = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr null, ptr %31, align 8, !tbaa !10
  %32 = load ptr, ptr %0, align 8, !tbaa !5
  %33 = getelementptr inbounds nuw i8, ptr %32, i64 8
  store ptr null, ptr %33, align 8, !tbaa !13
  br label %46

34:                                               ; preds = %27
  %35 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %28, ptr %35, align 8, !tbaa !13
  %36 = load ptr, ptr %0, align 8, !tbaa !5
  %37 = getelementptr inbounds nuw i8, ptr %36, i64 16
  %38 = load ptr, ptr %37, align 8, !tbaa !10
  %39 = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %38, ptr %39, align 8, !tbaa !10
  %40 = load ptr, ptr %0, align 8, !tbaa !5
  %41 = getelementptr inbounds nuw i8, ptr %40, i64 16
  store ptr %1, ptr %41, align 8, !tbaa !10
  %42 = load ptr, ptr %39, align 8, !tbaa !10
  %43 = icmp eq ptr %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %34
  %45 = getelementptr inbounds nuw i8, ptr %42, i64 8
  store ptr %1, ptr %45, align 8, !tbaa !13
  br label %46

46:                                               ; preds = %25, %30, %44, %34
  %47 = load ptr, ptr %2, align 8, !tbaa !5
  %48 = icmp eq ptr %47, null
  %49 = zext i1 %48 to i32
  ret i32 %49
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local range(i32 0, 2) i32 @sglib_dllist_add_after_if_not_member(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef %2) local_unnamed_addr #1 {
  %4 = load ptr, ptr %0, align 8, !tbaa !5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %27, label %6

6:                                                ; preds = %3
  %7 = load i32, ptr %1, align 8, !tbaa !14
  br label %8

8:                                                ; preds = %6, %12
  %9 = phi ptr [ %4, %6 ], [ %14, %12 ]
  %10 = load i32, ptr %9, align 8, !tbaa !14
  %11 = icmp eq i32 %10, %7
  br i1 %11, label %25, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %9, i64 16
  %14 = load ptr, ptr %13, align 8, !tbaa !5
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %8, !llvm.loop !18

16:                                               ; preds = %12, %21
  %17 = phi ptr [ %19, %21 ], [ %4, %12 ]
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 8
  %19 = load ptr, ptr %18, align 8, !tbaa !13
  %20 = icmp eq ptr %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %16
  %22 = load i32, ptr %19, align 8, !tbaa !14
  %23 = load i32, ptr %1, align 8, !tbaa !14
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %16, !llvm.loop !19

25:                                               ; preds = %8, %21
  %26 = phi ptr [ %19, %21 ], [ %9, %8 ]
  store ptr %26, ptr %2, align 8, !tbaa !5
  br label %45

27:                                               ; preds = %16, %3
  store ptr null, ptr %2, align 8, !tbaa !5
  %28 = load ptr, ptr %0, align 8, !tbaa !5
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  store ptr %1, ptr %0, align 8, !tbaa !5
  %31 = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr null, ptr %31, align 8, !tbaa !10
  %32 = load ptr, ptr %0, align 8, !tbaa !5
  %33 = getelementptr inbounds nuw i8, ptr %32, i64 8
  store ptr null, ptr %33, align 8, !tbaa !13
  br label %45

34:                                               ; preds = %27
  %35 = getelementptr inbounds nuw i8, ptr %28, i64 8
  %36 = load ptr, ptr %35, align 8, !tbaa !13
  %37 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %36, ptr %37, align 8, !tbaa !13
  %38 = load ptr, ptr %0, align 8, !tbaa !5
  %39 = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %38, ptr %39, align 8, !tbaa !10
  %40 = getelementptr inbounds nuw i8, ptr %38, i64 8
  store ptr %1, ptr %40, align 8, !tbaa !13
  %41 = load ptr, ptr %37, align 8, !tbaa !13
  %42 = icmp eq ptr %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %34
  %44 = getelementptr inbounds nuw i8, ptr %41, i64 16
  store ptr %1, ptr %44, align 8, !tbaa !10
  br label %45

45:                                               ; preds = %25, %30, %43, %34
  %46 = load ptr, ptr %2, align 8, !tbaa !5
  %47 = icmp eq ptr %46, null
  %48 = zext i1 %47 to i32
  ret i32 %48
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local range(i32 0, 2) i32 @sglib_dllist_add_before_if_not_member(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef %2) local_unnamed_addr #1 {
  %4 = load ptr, ptr %0, align 8, !tbaa !5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %27, label %6

6:                                                ; preds = %3
  %7 = load i32, ptr %1, align 8, !tbaa !14
  br label %8

8:                                                ; preds = %6, %12
  %9 = phi ptr [ %4, %6 ], [ %14, %12 ]
  %10 = load i32, ptr %9, align 8, !tbaa !14
  %11 = icmp eq i32 %10, %7
  br i1 %11, label %25, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %9, i64 16
  %14 = load ptr, ptr %13, align 8, !tbaa !5
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %8, !llvm.loop !20

16:                                               ; preds = %12, %21
  %17 = phi ptr [ %19, %21 ], [ %4, %12 ]
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 8
  %19 = load ptr, ptr %18, align 8, !tbaa !13
  %20 = icmp eq ptr %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %16
  %22 = load i32, ptr %19, align 8, !tbaa !14
  %23 = load i32, ptr %1, align 8, !tbaa !14
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %16, !llvm.loop !21

25:                                               ; preds = %8, %21
  %26 = phi ptr [ %19, %21 ], [ %9, %8 ]
  store ptr %26, ptr %2, align 8, !tbaa !5
  br label %46

27:                                               ; preds = %16, %3
  store ptr null, ptr %2, align 8, !tbaa !5
  %28 = load ptr, ptr %0, align 8, !tbaa !5
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  store ptr %1, ptr %0, align 8, !tbaa !5
  %31 = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr null, ptr %31, align 8, !tbaa !10
  %32 = load ptr, ptr %0, align 8, !tbaa !5
  %33 = getelementptr inbounds nuw i8, ptr %32, i64 8
  store ptr null, ptr %33, align 8, !tbaa !13
  br label %46

34:                                               ; preds = %27
  %35 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %28, ptr %35, align 8, !tbaa !13
  %36 = load ptr, ptr %0, align 8, !tbaa !5
  %37 = getelementptr inbounds nuw i8, ptr %36, i64 16
  %38 = load ptr, ptr %37, align 8, !tbaa !10
  %39 = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %38, ptr %39, align 8, !tbaa !10
  %40 = load ptr, ptr %0, align 8, !tbaa !5
  %41 = getelementptr inbounds nuw i8, ptr %40, i64 16
  store ptr %1, ptr %41, align 8, !tbaa !10
  %42 = load ptr, ptr %39, align 8, !tbaa !10
  %43 = icmp eq ptr %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %34
  %45 = getelementptr inbounds nuw i8, ptr %42, i64 8
  store ptr %1, ptr %45, align 8, !tbaa !13
  br label %46

46:                                               ; preds = %25, %30, %44, %34
  %47 = load ptr, ptr %2, align 8, !tbaa !5
  %48 = icmp eq ptr %47, null
  %49 = zext i1 %48 to i32
  ret i32 %49
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @sglib_dllist_concat(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = load ptr, ptr %0, align 8, !tbaa !5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  store ptr %1, ptr %0, align 8, !tbaa !5
  br label %21

6:                                                ; preds = %2
  %7 = icmp eq ptr %1, null
  br i1 %7, label %21, label %8

8:                                                ; preds = %6, %8
  %9 = phi ptr [ %11, %8 ], [ %3, %6 ]
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %11 = load ptr, ptr %10, align 8, !tbaa !13
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %8, !llvm.loop !22

13:                                               ; preds = %8
  %14 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %15 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr null, ptr %15, align 8, !tbaa !13
  %16 = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %9, ptr %16, align 8, !tbaa !10
  store ptr %1, ptr %14, align 8, !tbaa !13
  %17 = load ptr, ptr %15, align 8, !tbaa !13
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds nuw i8, ptr %17, i64 16
  store ptr %1, ptr %20, align 8, !tbaa !10
  br label %21

21:                                               ; preds = %19, %13, %6, %5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @sglib_dllist_delete(ptr nocapture noundef %0, ptr noundef readonly %1) local_unnamed_addr #3 {
  %3 = load ptr, ptr %0, align 8, !tbaa !5
  %4 = icmp eq ptr %3, %1
  br i1 %4, label %5, label %12

5:                                                ; preds = %2
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %7 = load ptr, ptr %6, align 8, !tbaa !10
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %11 = load ptr, ptr %10, align 8, !tbaa !13
  br label %12

12:                                               ; preds = %5, %9, %2
  %13 = phi ptr [ %11, %9 ], [ %3, %2 ], [ %7, %5 ]
  %14 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %15 = load ptr, ptr %14, align 8, !tbaa !13
  %16 = icmp eq ptr %15, null
  %17 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %18 = load ptr, ptr %17, align 8, !tbaa !10
  br i1 %16, label %21, label %19

19:                                               ; preds = %12
  %20 = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr %18, ptr %20, align 8, !tbaa !10
  br label %21

21:                                               ; preds = %12, %19
  %22 = icmp eq ptr %18, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %21
  %24 = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr %15, ptr %24, align 8, !tbaa !13
  br label %25

25:                                               ; preds = %23, %21
  store ptr %13, ptr %0, align 8, !tbaa !5
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local range(i32 0, 2) i32 @sglib_dllist_delete_if_member(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) local_unnamed_addr #1 {
  %4 = load ptr, ptr %0, align 8, !tbaa !5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %25, label %6

6:                                                ; preds = %3
  %7 = load i32, ptr %1, align 8, !tbaa !14
  br label %8

8:                                                ; preds = %6, %12
  %9 = phi ptr [ %4, %6 ], [ %14, %12 ]
  %10 = load i32, ptr %9, align 8, !tbaa !14
  %11 = icmp eq i32 %10, %7
  br i1 %11, label %26, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %9, i64 16
  %14 = load ptr, ptr %13, align 8, !tbaa !5
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %8, !llvm.loop !23

16:                                               ; preds = %12, %21
  %17 = phi ptr [ %19, %21 ], [ %4, %12 ]
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 8
  %19 = load ptr, ptr %18, align 8, !tbaa !13
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %16
  %22 = load i32, ptr %19, align 8, !tbaa !14
  %23 = load i32, ptr %1, align 8, !tbaa !14
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %26, label %16, !llvm.loop !24

25:                                               ; preds = %16, %3
  store ptr null, ptr %2, align 8, !tbaa !5
  br label %54

26:                                               ; preds = %8, %21
  %27 = phi ptr [ %19, %21 ], [ %9, %8 ]
  store ptr %27, ptr %2, align 8, !tbaa !5
  %28 = load ptr, ptr %0, align 8, !tbaa !5
  %29 = icmp eq ptr %28, %27
  br i1 %29, label %30, label %37

30:                                               ; preds = %26
  %31 = getelementptr inbounds nuw i8, ptr %27, i64 16
  %32 = load ptr, ptr %31, align 8, !tbaa !10
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = getelementptr inbounds nuw i8, ptr %27, i64 8
  %36 = load ptr, ptr %35, align 8, !tbaa !13
  br label %37

37:                                               ; preds = %30, %34, %26
  %38 = phi ptr [ %36, %34 ], [ %28, %26 ], [ %32, %30 ]
  %39 = getelementptr inbounds nuw i8, ptr %27, i64 8
  %40 = load ptr, ptr %39, align 8, !tbaa !13
  %41 = icmp eq ptr %40, null
  %42 = getelementptr inbounds nuw i8, ptr %27, i64 16
  %43 = load ptr, ptr %42, align 8, !tbaa !10
  br i1 %41, label %46, label %44

44:                                               ; preds = %37
  %45 = getelementptr inbounds nuw i8, ptr %40, i64 16
  store ptr %43, ptr %45, align 8, !tbaa !10
  br label %46

46:                                               ; preds = %37, %44
  %47 = icmp eq ptr %43, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %46
  %49 = getelementptr inbounds nuw i8, ptr %43, i64 8
  store ptr %40, ptr %49, align 8, !tbaa !13
  br label %50

50:                                               ; preds = %48, %46
  store ptr %38, ptr %0, align 8, !tbaa !5
  %51 = load ptr, ptr %2, align 8, !tbaa !5
  %52 = icmp ne ptr %51, null
  %53 = zext i1 %52 to i32
  br label %54

54:                                               ; preds = %25, %50
  %55 = phi i32 [ 0, %25 ], [ %53, %50 ]
  ret i32 %55
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local range(i32 0, 2) i32 @sglib_dllist_is_member(ptr noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #4 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %0, %1
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %13

6:                                                ; preds = %2, %6
  %7 = phi ptr [ %9, %6 ], [ %0, %2 ]
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %9 = load ptr, ptr %8, align 8, !tbaa !10
  %10 = icmp ne ptr %9, null
  %11 = icmp ne ptr %9, %1
  %12 = and i1 %10, %11
  br i1 %12, label %6, label %13, !llvm.loop !25

13:                                               ; preds = %6, %2
  %14 = phi i1 [ %3, %2 ], [ %10, %6 ]
  %15 = icmp eq ptr %0, null
  %16 = or i1 %15, %14
  br i1 %16, label %24, label %17

17:                                               ; preds = %13, %17
  %18 = phi ptr [ %20, %17 ], [ %0, %13 ]
  %19 = getelementptr inbounds nuw i8, ptr %18, i64 8
  %20 = load ptr, ptr %19, align 8, !tbaa !13
  %21 = icmp ne ptr %20, null
  %22 = icmp ne ptr %20, %1
  %23 = and i1 %21, %22
  br i1 %23, label %17, label %24, !llvm.loop !26

24:                                               ; preds = %17, %13
  %25 = phi i1 [ %14, %13 ], [ %21, %17 ]
  %26 = zext i1 %25 to i32
  ret i32 %26
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @sglib_dllist_find_member(ptr noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %22, label %4

4:                                                ; preds = %2
  %5 = load i32, ptr %1, align 8, !tbaa !14
  br label %6

6:                                                ; preds = %4, %10
  %7 = phi ptr [ %0, %4 ], [ %12, %10 ]
  %8 = load i32, ptr %7, align 8, !tbaa !14
  %9 = icmp eq i32 %8, %5
  br i1 %9, label %22, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %12 = load ptr, ptr %11, align 8, !tbaa !10
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6, !llvm.loop !27

14:                                               ; preds = %10, %19
  %15 = phi ptr [ %17, %19 ], [ %0, %10 ]
  %16 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %17 = load ptr, ptr %16, align 8, !tbaa !13
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = load i32, ptr %17, align 8, !tbaa !14
  %21 = icmp eq i32 %20, %5
  br i1 %21, label %22, label %14, !llvm.loop !28

22:                                               ; preds = %6, %19, %14, %2
  %23 = phi ptr [ null, %2 ], [ %17, %19 ], [ null, %14 ], [ %7, %6 ]
  ret ptr %23
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @sglib_dllist_get_first(ptr noundef readonly %0) local_unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %1, %3
  %4 = phi ptr [ %6, %3 ], [ %0, %1 ]
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %6 = load ptr, ptr %5, align 8, !tbaa !10
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %3, !llvm.loop !29

8:                                                ; preds = %3, %1
  %9 = phi ptr [ null, %1 ], [ %4, %3 ]
  ret ptr %9
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @sglib_dllist_get_last(ptr noundef readonly %0) local_unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %1, %3
  %4 = phi ptr [ %6, %3 ], [ %0, %1 ]
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %6 = load ptr, ptr %5, align 8, !tbaa !13
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %3, !llvm.loop !30

8:                                                ; preds = %3, %1
  %9 = phi ptr [ null, %1 ], [ %4, %3 ]
  ret ptr %9
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @sglib_dllist_sort(ptr nocapture noundef %0) local_unnamed_addr #1 {
  %2 = alloca ptr, align 8
  %3 = load ptr, ptr %0, align 8, !tbaa !5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %110, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %8, %5 ], [ %3, %1 ]
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %8 = load ptr, ptr %7, align 8, !tbaa !10
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %5, !llvm.loop !31

10:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2)
  store ptr null, ptr %2, align 8, !tbaa !5
  br label %16

11:                                               ; preds = %22, %97
  %12 = shl nsw i32 %17, 1
  %13 = load ptr, ptr %2, align 8, !tbaa !5
  store ptr null, ptr %2, align 8, !tbaa !5
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2)
  br label %108

16:                                               ; preds = %10, %11
  %17 = phi i32 [ 1, %10 ], [ %12, %11 ]
  %18 = phi ptr [ %6, %10 ], [ %13, %11 ]
  %19 = icmp sgt i32 %17, 1
  br label %25

20:                                               ; preds = %92
  %21 = getelementptr inbounds nuw i8, ptr %93, i64 8
  br label %22

22:                                               ; preds = %20, %88
  %23 = phi ptr [ %89, %88 ], [ %21, %20 ]
  %24 = icmp eq ptr %64, null
  br i1 %24, label %11, label %25, !llvm.loop !32

25:                                               ; preds = %16, %22
  %26 = phi i1 [ true, %16 ], [ false, %22 ]
  %27 = phi ptr [ %2, %16 ], [ %23, %22 ]
  %28 = phi ptr [ %18, %16 ], [ %64, %22 ]
  br i1 %19, label %32, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds nuw i8, ptr %28, i64 8
  %31 = load ptr, ptr %30, align 8, !tbaa !13
  store ptr null, ptr %30, align 8, !tbaa !13
  br label %56

32:                                               ; preds = %25, %32
  %33 = phi i32 [ %35, %32 ], [ 1, %25 ]
  %34 = phi ptr [ %37, %32 ], [ %28, %25 ]
  %35 = add nuw nsw i32 %33, 1
  %36 = getelementptr inbounds nuw i8, ptr %34, i64 8
  %37 = load ptr, ptr %36, align 8, !tbaa !13
  %38 = icmp slt i32 %35, %17
  %39 = icmp ne ptr %37, null
  %40 = select i1 %38, i1 %39, i1 false
  br i1 %40, label %32, label %41, !llvm.loop !33

41:                                               ; preds = %32
  %42 = icmp eq ptr %37, null
  br i1 %42, label %97, label %43

43:                                               ; preds = %41
  %44 = getelementptr inbounds nuw i8, ptr %37, i64 8
  %45 = load ptr, ptr %44, align 8, !tbaa !13
  store ptr null, ptr %44, align 8, !tbaa !13
  %46 = icmp eq ptr %45, null
  br i1 %46, label %56, label %47

47:                                               ; preds = %43, %47
  %48 = phi i32 [ %50, %47 ], [ 1, %43 ]
  %49 = phi ptr [ %52, %47 ], [ %45, %43 ]
  %50 = add nuw nsw i32 %48, 1
  %51 = getelementptr inbounds nuw i8, ptr %49, i64 8
  %52 = load ptr, ptr %51, align 8, !tbaa !13
  %53 = icmp slt i32 %50, %17
  %54 = icmp ne ptr %52, null
  %55 = select i1 %53, i1 %54, i1 false
  br i1 %55, label %47, label %56, !llvm.loop !34

56:                                               ; preds = %47, %29, %43
  %57 = phi ptr [ %45, %43 ], [ %31, %29 ], [ %45, %47 ]
  %58 = phi ptr [ %45, %43 ], [ %31, %29 ], [ %52, %47 ]
  %59 = icmp eq ptr %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds nuw i8, ptr %58, i64 8
  %62 = load ptr, ptr %61, align 8, !tbaa !13
  store ptr null, ptr %61, align 8, !tbaa !13
  br label %63

63:                                               ; preds = %56, %60
  %64 = phi ptr [ %62, %60 ], [ null, %56 ]
  %65 = icmp eq ptr %57, null
  br i1 %65, label %88, label %66

66:                                               ; preds = %63, %79
  %67 = phi ptr [ %82, %79 ], [ %27, %63 ]
  %68 = phi ptr [ %81, %79 ], [ %57, %63 ]
  %69 = phi ptr [ %80, %79 ], [ %28, %63 ]
  %70 = load i32, ptr %69, align 8, !tbaa !14
  %71 = load i32, ptr %68, align 8, !tbaa !14
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %66
  store ptr %69, ptr %67, align 8, !tbaa !5
  %74 = getelementptr inbounds nuw i8, ptr %69, i64 8
  %75 = load ptr, ptr %74, align 8, !tbaa !13
  br label %79

76:                                               ; preds = %66
  store ptr %68, ptr %67, align 8, !tbaa !5
  %77 = getelementptr inbounds nuw i8, ptr %68, i64 8
  %78 = load ptr, ptr %77, align 8, !tbaa !13
  br label %79

79:                                               ; preds = %76, %73
  %80 = phi ptr [ %75, %73 ], [ %69, %76 ]
  %81 = phi ptr [ %68, %73 ], [ %78, %76 ]
  %82 = phi ptr [ %74, %73 ], [ %77, %76 ]
  %83 = icmp ne ptr %80, null
  %84 = icmp ne ptr %81, null
  %85 = select i1 %83, i1 %84, i1 false
  br i1 %85, label %66, label %86, !llvm.loop !35

86:                                               ; preds = %79
  %87 = select i1 %83, ptr %80, ptr %81
  br label %88

88:                                               ; preds = %86, %63
  %89 = phi ptr [ %27, %63 ], [ %82, %86 ]
  %90 = phi ptr [ %28, %63 ], [ %87, %86 ]
  store ptr %90, ptr %89, align 8, !tbaa !5
  %91 = icmp eq ptr %90, null
  br i1 %91, label %22, label %92

92:                                               ; preds = %88, %92
  %93 = phi ptr [ %95, %92 ], [ %90, %88 ]
  %94 = getelementptr inbounds nuw i8, ptr %93, i64 8
  %95 = load ptr, ptr %94, align 8, !tbaa !5
  %96 = icmp eq ptr %95, null
  br i1 %96, label %20, label %92, !llvm.loop !36

97:                                               ; preds = %41
  store ptr %28, ptr %27, align 8, !tbaa !5
  br i1 %26, label %98, label %11, !llvm.loop !37

98:                                               ; preds = %97
  %99 = load ptr, ptr %2, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2)
  %100 = icmp eq ptr %99, null
  br i1 %100, label %108, label %101

101:                                              ; preds = %98, %101
  %102 = phi ptr [ %106, %101 ], [ %99, %98 ]
  %103 = phi ptr [ %102, %101 ], [ null, %98 ]
  %104 = getelementptr inbounds nuw i8, ptr %102, i64 16
  store ptr %103, ptr %104, align 8, !tbaa !10
  %105 = getelementptr inbounds nuw i8, ptr %102, i64 8
  %106 = load ptr, ptr %105, align 8, !tbaa !13
  %107 = icmp eq ptr %106, null
  br i1 %107, label %108, label %101, !llvm.loop !38

108:                                              ; preds = %101, %15, %98
  %109 = phi ptr [ null, %15 ], [ null, %98 ], [ %99, %101 ]
  store ptr %109, ptr %0, align 8, !tbaa !5
  br label %110

110:                                              ; preds = %108, %1
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @sglib_dllist_len(ptr noundef readonly %0) local_unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %19, label %3

3:                                                ; preds = %1, %3
  %4 = phi i32 [ %8, %3 ], [ 0, %1 ]
  %5 = phi ptr [ %7, %3 ], [ %0, %1 ]
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %7 = load ptr, ptr %6, align 8, !tbaa !10
  %8 = add nuw nsw i32 %4, 1
  %9 = icmp eq ptr %7, null
  br i1 %9, label %10, label %3, !llvm.loop !39

10:                                               ; preds = %3, %10
  %11 = phi i32 [ %16, %10 ], [ 0, %3 ]
  %12 = phi ptr [ %14, %10 ], [ %0, %3 ]
  %13 = getelementptr inbounds nuw i8, ptr %12, i64 8
  %14 = load ptr, ptr %13, align 8, !tbaa !13
  %15 = icmp eq ptr %14, null
  %16 = add nuw nsw i32 %11, 1
  br i1 %15, label %17, label %10, !llvm.loop !40

17:                                               ; preds = %10
  %18 = add nuw nsw i32 %11, %8
  br label %19

19:                                               ; preds = %1, %17
  %20 = phi i32 [ %18, %17 ], [ 0, %1 ]
  ret i32 %20
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @sglib_dllist_reverse(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = load ptr, ptr %0, align 8, !tbaa !5
  %3 = icmp eq ptr %2, null
  br i1 %3, label %23, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %6 = load ptr, ptr %5, align 8, !tbaa !13
  br label %9

7:                                                ; preds = %9
  %8 = icmp eq ptr %6, null
  br i1 %8, label %23, label %16

9:                                                ; preds = %4, %9
  %10 = phi ptr [ %2, %4 ], [ %14, %9 ]
  %11 = getelementptr inbounds nuw i8, ptr %10, i64 8
  %12 = load ptr, ptr %11, align 8, !tbaa !13
  %13 = getelementptr inbounds nuw i8, ptr %10, i64 16
  %14 = load ptr, ptr %13, align 8, !tbaa !10
  store ptr %14, ptr %11, align 8, !tbaa !13
  store ptr %12, ptr %13, align 8, !tbaa !10
  %15 = icmp eq ptr %14, null
  br i1 %15, label %7, label %9, !llvm.loop !41

16:                                               ; preds = %7, %16
  %17 = phi ptr [ %19, %16 ], [ %6, %7 ]
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 8
  %19 = load ptr, ptr %18, align 8, !tbaa !13
  %20 = getelementptr inbounds nuw i8, ptr %17, i64 16
  %21 = load ptr, ptr %20, align 8, !tbaa !10
  store ptr %21, ptr %18, align 8, !tbaa !13
  store ptr %19, ptr %20, align 8, !tbaa !10
  %22 = icmp eq ptr %19, null
  br i1 %22, label %23, label %16, !llvm.loop !42

23:                                               ; preds = %16, %7, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @sglib_dllist_it_init_on_equal(ptr nocapture noundef initializes((8, 40)) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #5 {
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %2, ptr %5, align 8, !tbaa !43
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %3, ptr %6, align 8, !tbaa !45
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %9 = icmp eq ptr %1, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %4
  store ptr null, ptr %7, align 8, !tbaa !46
  store ptr null, ptr %8, align 8, !tbaa !47
  br label %48

11:                                               ; preds = %4
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %13 = load ptr, ptr %12, align 8, !tbaa !13
  store ptr %13, ptr %8, align 8, !tbaa !47
  store ptr null, ptr %7, align 8, !tbaa !46
  %14 = icmp eq ptr %2, null
  br i1 %14, label %23, label %15

15:                                               ; preds = %11, %19
  %16 = phi ptr [ %21, %19 ], [ %1, %11 ]
  %17 = tail call i32 %2(ptr noundef %3, ptr noundef nonnull %16) #20
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds nuw i8, ptr %16, i64 16
  %21 = load ptr, ptr %20, align 8, !tbaa !10
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %15, !llvm.loop !48

23:                                               ; preds = %15, %11
  %24 = phi ptr [ %1, %11 ], [ %16, %15 ]
  %25 = getelementptr inbounds nuw i8, ptr %24, i64 16
  %26 = load ptr, ptr %25, align 8, !tbaa !10
  store ptr %26, ptr %7, align 8, !tbaa !46
  br label %48

27:                                               ; preds = %19
  %28 = load ptr, ptr %5, align 8, !tbaa !43
  %29 = load ptr, ptr %8, align 8, !tbaa !47
  store ptr null, ptr %8, align 8, !tbaa !47
  %30 = icmp eq ptr %28, null
  br i1 %30, label %42, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %6, align 8, !tbaa !45
  %33 = icmp eq ptr %29, null
  br i1 %33, label %48, label %34

34:                                               ; preds = %31, %38
  %35 = phi ptr [ %40, %38 ], [ %29, %31 ]
  %36 = tail call i32 %28(ptr noundef nonnull %35, ptr noundef %32) #20
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds nuw i8, ptr %35, i64 8
  %40 = load ptr, ptr %39, align 8, !tbaa !13
  %41 = icmp eq ptr %40, null
  br i1 %41, label %48, label %34, !llvm.loop !49

42:                                               ; preds = %27
  %43 = icmp eq ptr %29, null
  br i1 %43, label %48, label %44

44:                                               ; preds = %34, %42
  %45 = phi ptr [ %29, %42 ], [ %35, %34 ]
  %46 = getelementptr inbounds nuw i8, ptr %45, i64 8
  %47 = load ptr, ptr %46, align 8, !tbaa !13
  store ptr %47, ptr %8, align 8, !tbaa !47
  br label %48

48:                                               ; preds = %38, %10, %23, %31, %42, %44
  %49 = phi ptr [ %24, %23 ], [ %45, %44 ], [ null, %42 ], [ null, %31 ], [ null, %10 ], [ null, %38 ]
  store ptr %49, ptr %0, align 8, !tbaa !50
  ret ptr %49
}

; Function Attrs: nounwind uwtable
define dso_local ptr @sglib_dllist_it_next(ptr nocapture noundef %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  store ptr null, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %5 = load ptr, ptr %4, align 8, !tbaa !43
  %6 = icmp eq ptr %5, null
  br i1 %6, label %22, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %9 = load ptr, ptr %8, align 8, !tbaa !45
  %10 = icmp eq ptr %3, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %13 = load ptr, ptr %12, align 8, !tbaa !47
  store ptr null, ptr %12, align 8, !tbaa !47
  br label %36

14:                                               ; preds = %7, %18
  %15 = phi ptr [ %20, %18 ], [ %3, %7 ]
  %16 = tail call i32 %5(ptr noundef %9, ptr noundef nonnull %15) #20
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %20 = load ptr, ptr %19, align 8, !tbaa !10
  %21 = icmp eq ptr %20, null
  br i1 %21, label %31, label %14, !llvm.loop !48

22:                                               ; preds = %1
  %23 = icmp eq ptr %3, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %22
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %26 = load ptr, ptr %25, align 8, !tbaa !47
  store ptr null, ptr %25, align 8, !tbaa !47
  br label %50

27:                                               ; preds = %14, %22
  %28 = phi ptr [ %3, %22 ], [ %15, %14 ]
  %29 = getelementptr inbounds nuw i8, ptr %28, i64 16
  %30 = load ptr, ptr %29, align 8, !tbaa !10
  store ptr %30, ptr %2, align 8, !tbaa !46
  br label %59

31:                                               ; preds = %18
  %32 = load ptr, ptr %4, align 8, !tbaa !43
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %34 = load ptr, ptr %33, align 8, !tbaa !47
  store ptr null, ptr %33, align 8, !tbaa !47
  %35 = icmp eq ptr %32, null
  br i1 %35, label %50, label %36

36:                                               ; preds = %11, %31
  %37 = phi ptr [ %13, %11 ], [ %34, %31 ]
  %38 = phi ptr [ %12, %11 ], [ %33, %31 ]
  %39 = phi ptr [ %5, %11 ], [ %32, %31 ]
  %40 = load ptr, ptr %8, align 8, !tbaa !45
  %41 = icmp eq ptr %37, null
  br i1 %41, label %59, label %42

42:                                               ; preds = %36, %46
  %43 = phi ptr [ %48, %46 ], [ %37, %36 ]
  %44 = tail call i32 %39(ptr noundef nonnull %43, ptr noundef %40) #20
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds nuw i8, ptr %43, i64 8
  %48 = load ptr, ptr %47, align 8, !tbaa !13
  %49 = icmp eq ptr %48, null
  br i1 %49, label %59, label %42, !llvm.loop !49

50:                                               ; preds = %24, %31
  %51 = phi ptr [ %33, %31 ], [ %25, %24 ]
  %52 = phi ptr [ %34, %31 ], [ %26, %24 ]
  %53 = icmp eq ptr %52, null
  br i1 %53, label %59, label %54

54:                                               ; preds = %42, %50
  %55 = phi ptr [ %52, %50 ], [ %43, %42 ]
  %56 = phi ptr [ %51, %50 ], [ %38, %42 ]
  %57 = getelementptr inbounds nuw i8, ptr %55, i64 8
  %58 = load ptr, ptr %57, align 8, !tbaa !13
  store ptr %58, ptr %56, align 8, !tbaa !47
  br label %59

59:                                               ; preds = %46, %36, %50, %54, %27
  %60 = phi ptr [ %28, %27 ], [ %55, %54 ], [ null, %50 ], [ null, %36 ], [ null, %46 ]
  store ptr %60, ptr %0, align 8, !tbaa !50
  ret ptr %60
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef ptr @sglib_dllist_it_init(ptr nocapture noundef writeonly initializes((0, 40)) %0, ptr noundef returned %1) local_unnamed_addr #6 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %4 = icmp eq ptr %1, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %7 = load <2 x ptr>, ptr %6, align 8, !tbaa !5
  %8 = shufflevector <2 x ptr> %7, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  br label %9

9:                                                ; preds = %2, %5
  %10 = phi <2 x ptr> [ %8, %5 ], [ zeroinitializer, %2 ]
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x ptr> %10, ptr %11, align 8, !tbaa !5
  store ptr %1, ptr %0, align 8, !tbaa !50
  ret ptr %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @sglib_dllist_it_current(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = load ptr, ptr %0, align 8, !tbaa !50
  ret ptr %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ilist_hash_function(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = load i32, ptr %0, align 8, !tbaa !51
  ret i32 %2
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local range(i32 0, 2) i32 @sglib_ilist_is_member(ptr noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #4 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %0, %1
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %13

6:                                                ; preds = %2, %6
  %7 = phi ptr [ %9, %6 ], [ %0, %2 ]
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %9 = load ptr, ptr %8, align 8, !tbaa !54
  %10 = icmp ne ptr %9, null
  %11 = icmp ne ptr %9, %1
  %12 = and i1 %10, %11
  br i1 %12, label %6, label %13, !llvm.loop !55

13:                                               ; preds = %6, %2
  %14 = phi i1 [ %3, %2 ], [ %10, %6 ]
  %15 = zext i1 %14 to i32
  ret i32 %15
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @sglib_ilist_find_member(ptr noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %14, label %4

4:                                                ; preds = %2
  %5 = load i32, ptr %1, align 8, !tbaa !51
  br label %6

6:                                                ; preds = %4, %10
  %7 = phi ptr [ %0, %4 ], [ %12, %10 ]
  %8 = load i32, ptr %7, align 8, !tbaa !51
  %9 = icmp eq i32 %8, %5
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %12 = load ptr, ptr %11, align 8, !tbaa !54
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6, !llvm.loop !56

14:                                               ; preds = %6, %10, %2
  %15 = phi ptr [ null, %2 ], [ null, %10 ], [ %7, %6 ]
  ret ptr %15
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local range(i32 0, 2) i32 @sglib_ilist_add_if_not_member(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef %2) local_unnamed_addr #8 {
  %4 = load ptr, ptr %0, align 8, !tbaa !57
  %5 = icmp eq ptr %4, null
  br i1 %5, label %17, label %6

6:                                                ; preds = %3
  %7 = load i32, ptr %1, align 8, !tbaa !51
  br label %8

8:                                                ; preds = %6, %12
  %9 = phi ptr [ %4, %6 ], [ %14, %12 ]
  %10 = load i32, ptr %9, align 8, !tbaa !51
  %11 = icmp eq i32 %10, %7
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %14 = load ptr, ptr %13, align 8, !tbaa !57
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %8, !llvm.loop !58

16:                                               ; preds = %8
  store ptr %9, ptr %2, align 8, !tbaa !57
  br label %23

17:                                               ; preds = %12, %3
  store ptr null, ptr %2, align 8, !tbaa !57
  %18 = load ptr, ptr %0, align 8, !tbaa !57
  %19 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %18, ptr %19, align 8, !tbaa !54
  store ptr %1, ptr %0, align 8, !tbaa !57
  %20 = load ptr, ptr %2, align 8, !tbaa !57
  %21 = icmp eq ptr %20, null
  %22 = zext i1 %21 to i32
  br label %23

23:                                               ; preds = %16, %17
  %24 = phi i32 [ 0, %16 ], [ %22, %17 ]
  ret i32 %24
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @sglib_ilist_add(ptr nocapture noundef %0, ptr noundef initializes((8, 16)) %1) local_unnamed_addr #6 {
  %3 = load ptr, ptr %0, align 8, !tbaa !57
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %3, ptr %4, align 8, !tbaa !54
  store ptr %1, ptr %0, align 8, !tbaa !57
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @sglib_ilist_concat(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = load ptr, ptr %0, align 8, !tbaa !57
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  store ptr %1, ptr %0, align 8, !tbaa !57
  br label %13

6:                                                ; preds = %2, %6
  %7 = phi ptr [ %9, %6 ], [ %3, %2 ]
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %9 = load ptr, ptr %8, align 8, !tbaa !54
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %6, !llvm.loop !59

11:                                               ; preds = %6
  %12 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %1, ptr %12, align 8, !tbaa !54
  br label %13

13:                                               ; preds = %11, %5
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @sglib_ilist_delete(ptr nocapture noundef %0, ptr noundef readnone %1) local_unnamed_addr #1 {
  br label %3

3:                                                ; preds = %3, %2
  %4 = phi ptr [ %0, %2 ], [ %9, %3 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !57
  %6 = icmp eq ptr %5, null
  %7 = icmp eq ptr %5, %1
  %8 = or i1 %6, %7
  %9 = getelementptr inbounds nuw i8, ptr %5, i64 8
  br i1 %8, label %10, label %3, !llvm.loop !60

10:                                               ; preds = %3
  br i1 %6, label %11, label %12

11:                                               ; preds = %10, %11
  br label %11

12:                                               ; preds = %10
  %13 = load ptr, ptr %9, align 8, !tbaa !54
  store ptr %13, ptr %4, align 8, !tbaa !57
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local range(i32 0, 2) i32 @sglib_ilist_delete_if_member(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) local_unnamed_addr #1 {
  %4 = load ptr, ptr %0, align 8, !tbaa !57
  %5 = icmp eq ptr %4, null
  br i1 %5, label %21, label %6

6:                                                ; preds = %3
  %7 = load i32, ptr %1, align 8, !tbaa !51
  %8 = load i32, ptr %4, align 8, !tbaa !51
  %9 = icmp eq i32 %8, %7
  br i1 %9, label %21, label %13

10:                                               ; preds = %13
  %11 = load i32, ptr %16, align 8, !tbaa !51
  %12 = icmp eq i32 %11, %7
  br i1 %12, label %18, label %13, !llvm.loop !61

13:                                               ; preds = %6, %10
  %14 = phi ptr [ %16, %10 ], [ %4, %6 ]
  %15 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %16 = load ptr, ptr %15, align 8, !tbaa !57
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %10, !llvm.loop !61

18:                                               ; preds = %10, %13
  %19 = phi ptr [ %16, %10 ], [ null, %13 ]
  %20 = getelementptr inbounds nuw i8, ptr %14, i64 8
  br label %21

21:                                               ; preds = %18, %6, %3
  %22 = phi ptr [ %0, %3 ], [ %0, %6 ], [ %20, %18 ]
  %23 = phi ptr [ null, %3 ], [ %4, %6 ], [ %19, %18 ]
  store ptr %23, ptr %2, align 8, !tbaa !57
  %24 = load ptr, ptr %22, align 8, !tbaa !57
  %25 = icmp eq ptr %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds nuw i8, ptr %24, i64 8
  %28 = load ptr, ptr %27, align 8, !tbaa !54
  store ptr %28, ptr %22, align 8, !tbaa !57
  %29 = load ptr, ptr %2, align 8, !tbaa !57
  br label %30

30:                                               ; preds = %26, %21
  %31 = phi ptr [ %29, %26 ], [ %23, %21 ]
  %32 = icmp ne ptr %31, null
  %33 = zext i1 %32 to i32
  ret i32 %33
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @sglib_ilist_sort(ptr nocapture noundef %0) local_unnamed_addr #1 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2)
  %3 = load ptr, ptr %0, align 8, !tbaa !57
  store ptr null, ptr %2, align 8, !tbaa !57
  %4 = icmp eq ptr %3, null
  br i1 %4, label %91, label %9

5:                                                ; preds = %15, %90
  %6 = shl nsw i32 %11, 1
  %7 = load ptr, ptr %2, align 8, !tbaa !57
  store ptr null, ptr %2, align 8, !tbaa !57
  %8 = icmp eq ptr %7, null
  br i1 %8, label %91, label %9

9:                                                ; preds = %1, %5
  %10 = phi ptr [ %7, %5 ], [ %3, %1 ]
  %11 = phi i32 [ %6, %5 ], [ 1, %1 ]
  %12 = icmp sgt i32 %11, 1
  br label %18

13:                                               ; preds = %85
  %14 = getelementptr inbounds nuw i8, ptr %86, i64 8
  br label %15

15:                                               ; preds = %13, %81
  %16 = phi ptr [ %82, %81 ], [ %14, %13 ]
  %17 = icmp eq ptr %57, null
  br i1 %17, label %5, label %18, !llvm.loop !62

18:                                               ; preds = %9, %15
  %19 = phi i1 [ true, %9 ], [ false, %15 ]
  %20 = phi ptr [ %2, %9 ], [ %16, %15 ]
  %21 = phi ptr [ %10, %9 ], [ %57, %15 ]
  br i1 %12, label %25, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds nuw i8, ptr %21, i64 8
  %24 = load ptr, ptr %23, align 8, !tbaa !54
  store ptr null, ptr %23, align 8, !tbaa !54
  br label %49

25:                                               ; preds = %18, %25
  %26 = phi i32 [ %28, %25 ], [ 1, %18 ]
  %27 = phi ptr [ %30, %25 ], [ %21, %18 ]
  %28 = add nuw nsw i32 %26, 1
  %29 = getelementptr inbounds nuw i8, ptr %27, i64 8
  %30 = load ptr, ptr %29, align 8, !tbaa !54
  %31 = icmp slt i32 %28, %11
  %32 = icmp ne ptr %30, null
  %33 = select i1 %31, i1 %32, i1 false
  br i1 %33, label %25, label %34, !llvm.loop !63

34:                                               ; preds = %25
  %35 = icmp eq ptr %30, null
  br i1 %35, label %90, label %36

36:                                               ; preds = %34
  %37 = getelementptr inbounds nuw i8, ptr %30, i64 8
  %38 = load ptr, ptr %37, align 8, !tbaa !54
  store ptr null, ptr %37, align 8, !tbaa !54
  %39 = icmp eq ptr %38, null
  br i1 %39, label %49, label %40

40:                                               ; preds = %36, %40
  %41 = phi i32 [ %43, %40 ], [ 1, %36 ]
  %42 = phi ptr [ %45, %40 ], [ %38, %36 ]
  %43 = add nuw nsw i32 %41, 1
  %44 = getelementptr inbounds nuw i8, ptr %42, i64 8
  %45 = load ptr, ptr %44, align 8, !tbaa !54
  %46 = icmp slt i32 %43, %11
  %47 = icmp ne ptr %45, null
  %48 = select i1 %46, i1 %47, i1 false
  br i1 %48, label %40, label %49, !llvm.loop !64

49:                                               ; preds = %40, %22, %36
  %50 = phi ptr [ %38, %36 ], [ %24, %22 ], [ %38, %40 ]
  %51 = phi ptr [ %38, %36 ], [ %24, %22 ], [ %45, %40 ]
  %52 = icmp eq ptr %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds nuw i8, ptr %51, i64 8
  %55 = load ptr, ptr %54, align 8, !tbaa !54
  store ptr null, ptr %54, align 8, !tbaa !54
  br label %56

56:                                               ; preds = %49, %53
  %57 = phi ptr [ %55, %53 ], [ null, %49 ]
  %58 = icmp eq ptr %50, null
  br i1 %58, label %81, label %59

59:                                               ; preds = %56, %72
  %60 = phi ptr [ %75, %72 ], [ %20, %56 ]
  %61 = phi ptr [ %74, %72 ], [ %50, %56 ]
  %62 = phi ptr [ %73, %72 ], [ %21, %56 ]
  %63 = load i32, ptr %62, align 8, !tbaa !51
  %64 = load i32, ptr %61, align 8, !tbaa !51
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %59
  store ptr %62, ptr %60, align 8, !tbaa !57
  %67 = getelementptr inbounds nuw i8, ptr %62, i64 8
  %68 = load ptr, ptr %67, align 8, !tbaa !54
  br label %72

69:                                               ; preds = %59
  store ptr %61, ptr %60, align 8, !tbaa !57
  %70 = getelementptr inbounds nuw i8, ptr %61, i64 8
  %71 = load ptr, ptr %70, align 8, !tbaa !54
  br label %72

72:                                               ; preds = %69, %66
  %73 = phi ptr [ %68, %66 ], [ %62, %69 ]
  %74 = phi ptr [ %61, %66 ], [ %71, %69 ]
  %75 = phi ptr [ %67, %66 ], [ %70, %69 ]
  %76 = icmp ne ptr %73, null
  %77 = icmp ne ptr %74, null
  %78 = select i1 %76, i1 %77, i1 false
  br i1 %78, label %59, label %79, !llvm.loop !65

79:                                               ; preds = %72
  %80 = select i1 %76, ptr %73, ptr %74
  br label %81

81:                                               ; preds = %79, %56
  %82 = phi ptr [ %20, %56 ], [ %75, %79 ]
  %83 = phi ptr [ %21, %56 ], [ %80, %79 ]
  store ptr %83, ptr %82, align 8, !tbaa !57
  %84 = icmp eq ptr %83, null
  br i1 %84, label %15, label %85

85:                                               ; preds = %81, %85
  %86 = phi ptr [ %88, %85 ], [ %83, %81 ]
  %87 = getelementptr inbounds nuw i8, ptr %86, i64 8
  %88 = load ptr, ptr %87, align 8, !tbaa !57
  %89 = icmp eq ptr %88, null
  br i1 %89, label %13, label %85, !llvm.loop !66

90:                                               ; preds = %34
  store ptr %21, ptr %20, align 8, !tbaa !57
  br i1 %19, label %91, label %5, !llvm.loop !67

91:                                               ; preds = %90, %5, %1
  %92 = load ptr, ptr %2, align 8, !tbaa !57
  store ptr %92, ptr %0, align 8, !tbaa !57
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @sglib_ilist_len(ptr noundef readonly %0) local_unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1, %3
  %4 = phi ptr [ %7, %3 ], [ %0, %1 ]
  %5 = phi i32 [ %8, %3 ], [ 0, %1 ]
  %6 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %7 = load ptr, ptr %6, align 8, !tbaa !54
  %8 = add nuw nsw i32 %5, 1
  %9 = icmp eq ptr %7, null
  br i1 %9, label %10, label %3, !llvm.loop !68

10:                                               ; preds = %3, %1
  %11 = phi i32 [ 0, %1 ], [ %8, %3 ]
  ret i32 %11
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @sglib_ilist_reverse(ptr nocapture noundef %0) local_unnamed_addr #1 {
  %2 = load ptr, ptr %0, align 8, !tbaa !57
  %3 = icmp eq ptr %2, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %6, %4 ], [ null, %1 ]
  %6 = phi ptr [ %8, %4 ], [ %2, %1 ]
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %8 = load ptr, ptr %7, align 8, !tbaa !54
  store ptr %5, ptr %7, align 8, !tbaa !54
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %4, !llvm.loop !69

10:                                               ; preds = %4, %1
  %11 = phi ptr [ null, %1 ], [ %6, %4 ]
  store ptr %11, ptr %0, align 8, !tbaa !57
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @sglib_ilist_it_init_on_equal(ptr nocapture noundef writeonly initializes((8, 32)) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #5 {
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %5, align 8, !tbaa !70
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %3, ptr %6, align 8, !tbaa !72
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %7, align 8, !tbaa !73
  %8 = icmp eq ptr %2, null
  br i1 %8, label %21, label %9

9:                                                ; preds = %4
  %10 = icmp eq ptr %1, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %17, %9
  store ptr null, ptr %0, align 8, !tbaa !74
  br label %27

12:                                               ; preds = %9, %17
  %13 = phi ptr [ %19, %17 ], [ %1, %9 ]
  %14 = tail call i32 %2(ptr noundef nonnull %13, ptr noundef %3) #20
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store ptr %13, ptr %0, align 8, !tbaa !74
  br label %23

17:                                               ; preds = %12
  %18 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %19 = load ptr, ptr %18, align 8, !tbaa !54
  %20 = icmp eq ptr %19, null
  br i1 %20, label %11, label %12, !llvm.loop !75

21:                                               ; preds = %4
  store ptr %1, ptr %0, align 8, !tbaa !74
  %22 = icmp eq ptr %1, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %21, %16
  %24 = phi ptr [ %13, %16 ], [ %1, %21 ]
  %25 = getelementptr inbounds nuw i8, ptr %24, i64 8
  %26 = load ptr, ptr %25, align 8, !tbaa !54
  store ptr %26, ptr %7, align 8, !tbaa !73
  br label %27

27:                                               ; preds = %11, %21, %23
  %28 = phi ptr [ null, %11 ], [ %24, %23 ], [ null, %21 ]
  ret ptr %28
}

; Function Attrs: nounwind uwtable
define dso_local ptr @sglib_ilist_it_next(ptr nocapture noundef %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %3 = load ptr, ptr %2, align 8, !tbaa !73
  store ptr null, ptr %2, align 8, !tbaa !73
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %5 = load ptr, ptr %4, align 8, !tbaa !70
  %6 = icmp eq ptr %5, null
  br i1 %6, label %21, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %9 = load ptr, ptr %8, align 8, !tbaa !72
  %10 = icmp eq ptr %3, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %17, %7
  store ptr null, ptr %0, align 8, !tbaa !74
  br label %27

12:                                               ; preds = %7, %17
  %13 = phi ptr [ %19, %17 ], [ %3, %7 ]
  %14 = tail call i32 %5(ptr noundef nonnull %13, ptr noundef %9) #20
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store ptr %13, ptr %0, align 8, !tbaa !74
  br label %23

17:                                               ; preds = %12
  %18 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %19 = load ptr, ptr %18, align 8, !tbaa !54
  %20 = icmp eq ptr %19, null
  br i1 %20, label %11, label %12, !llvm.loop !75

21:                                               ; preds = %1
  store ptr %3, ptr %0, align 8, !tbaa !74
  %22 = icmp eq ptr %3, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %16, %21
  %24 = phi ptr [ %13, %16 ], [ %3, %21 ]
  %25 = getelementptr inbounds nuw i8, ptr %24, i64 8
  %26 = load ptr, ptr %25, align 8, !tbaa !54
  store ptr %26, ptr %2, align 8, !tbaa !73
  br label %27

27:                                               ; preds = %11, %23, %21
  %28 = phi ptr [ null, %11 ], [ %24, %23 ], [ null, %21 ]
  ret ptr %28
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef ptr @sglib_ilist_it_init(ptr nocapture noundef writeonly initializes((0, 32)) %0, ptr noundef returned %1) local_unnamed_addr #6 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  store ptr %1, ptr %0, align 8, !tbaa !74
  %4 = icmp eq ptr %1, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %7 = load ptr, ptr %6, align 8, !tbaa !54
  store ptr %7, ptr %3, align 8, !tbaa !73
  br label %8

8:                                                ; preds = %2, %5
  ret ptr %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @sglib_ilist_it_current(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = load ptr, ptr %0, align 8, !tbaa !74
  ret ptr %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @sglib_hashed_ilist_init(ptr nocapture noundef writeonly initializes((0, 160)) %0) local_unnamed_addr #9 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %0, i8 0, i64 160, i1 false), !tbaa !57
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @sglib_hashed_ilist_add(ptr nocapture noundef %0, ptr noundef initializes((8, 16)) %1) local_unnamed_addr #6 {
  %3 = load i32, ptr %1, align 8, !tbaa !51
  %4 = urem i32 %3, 20
  %5 = zext nneg i32 %4 to i64
  %6 = getelementptr inbounds nuw ptr, ptr %0, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !57
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %7, ptr %8, align 8, !tbaa !54
  store ptr %1, ptr %6, align 8, !tbaa !57
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local range(i32 0, 2) i32 @sglib_hashed_ilist_add_if_not_member(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef %2) local_unnamed_addr #8 {
  %4 = load i32, ptr %1, align 8, !tbaa !51
  %5 = urem i32 %4, 20
  %6 = zext nneg i32 %5 to i64
  %7 = getelementptr inbounds nuw ptr, ptr %0, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !57
  %9 = icmp eq ptr %8, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %3, %14
  %11 = phi ptr [ %16, %14 ], [ %8, %3 ]
  %12 = load i32, ptr %11, align 8, !tbaa !51
  %13 = icmp eq i32 %12, %4
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds nuw i8, ptr %11, i64 8
  %16 = load ptr, ptr %15, align 8, !tbaa !57
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %10, !llvm.loop !58

18:                                               ; preds = %10
  store ptr %11, ptr %2, align 8, !tbaa !57
  br label %25

19:                                               ; preds = %14, %3
  store ptr null, ptr %2, align 8, !tbaa !57
  %20 = load ptr, ptr %7, align 8, !tbaa !57
  %21 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %20, ptr %21, align 8, !tbaa !54
  store ptr %1, ptr %7, align 8, !tbaa !57
  %22 = load ptr, ptr %2, align 8, !tbaa !57
  %23 = icmp eq ptr %22, null
  %24 = zext i1 %23 to i32
  br label %25

25:                                               ; preds = %18, %19
  %26 = phi i32 [ 0, %18 ], [ %24, %19 ]
  ret i32 %26
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @sglib_hashed_ilist_delete(ptr nocapture noundef %0, ptr noundef readonly %1) local_unnamed_addr #1 {
  %3 = load i32, ptr %1, align 8, !tbaa !51
  %4 = urem i32 %3, 20
  %5 = zext nneg i32 %4 to i64
  %6 = getelementptr inbounds nuw ptr, ptr %0, i64 %5
  br label %7

7:                                                ; preds = %7, %2
  %8 = phi ptr [ %6, %2 ], [ %13, %7 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !57
  %10 = icmp eq ptr %9, null
  %11 = icmp eq ptr %9, %1
  %12 = or i1 %10, %11
  %13 = getelementptr inbounds nuw i8, ptr %9, i64 8
  br i1 %12, label %14, label %7, !llvm.loop !60

14:                                               ; preds = %7
  br i1 %10, label %15, label %16

15:                                               ; preds = %14, %15
  br label %15

16:                                               ; preds = %14
  %17 = load ptr, ptr %13, align 8, !tbaa !54
  store ptr %17, ptr %8, align 8, !tbaa !57
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local range(i32 0, 2) i32 @sglib_hashed_ilist_delete_if_member(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) local_unnamed_addr #1 {
  %4 = load i32, ptr %1, align 8, !tbaa !51
  %5 = urem i32 %4, 20
  %6 = zext nneg i32 %5 to i64
  %7 = getelementptr inbounds nuw ptr, ptr %0, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !57
  %9 = icmp eq ptr %8, null
  br i1 %9, label %24, label %10

10:                                               ; preds = %3
  %11 = load i32, ptr %8, align 8, !tbaa !51
  %12 = icmp eq i32 %11, %4
  br i1 %12, label %24, label %16

13:                                               ; preds = %16
  %14 = load i32, ptr %19, align 8, !tbaa !51
  %15 = icmp eq i32 %14, %4
  br i1 %15, label %21, label %16, !llvm.loop !61

16:                                               ; preds = %10, %13
  %17 = phi ptr [ %19, %13 ], [ %8, %10 ]
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 8
  %19 = load ptr, ptr %18, align 8, !tbaa !57
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %13, !llvm.loop !61

21:                                               ; preds = %16, %13
  %22 = phi ptr [ %19, %13 ], [ null, %16 ]
  %23 = getelementptr inbounds nuw i8, ptr %17, i64 8
  br label %24

24:                                               ; preds = %21, %10, %3
  %25 = phi ptr [ %7, %3 ], [ %7, %10 ], [ %23, %21 ]
  %26 = phi ptr [ null, %3 ], [ %8, %10 ], [ %22, %21 ]
  store ptr %26, ptr %2, align 8, !tbaa !57
  %27 = load ptr, ptr %25, align 8, !tbaa !57
  %28 = icmp eq ptr %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds nuw i8, ptr %27, i64 8
  %31 = load ptr, ptr %30, align 8, !tbaa !54
  store ptr %31, ptr %25, align 8, !tbaa !57
  %32 = load ptr, ptr %2, align 8, !tbaa !57
  br label %33

33:                                               ; preds = %24, %29
  %34 = phi ptr [ %32, %29 ], [ %26, %24 ]
  %35 = icmp ne ptr %34, null
  %36 = zext i1 %35 to i32
  ret i32 %36
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local range(i32 0, 2) i32 @sglib_hashed_ilist_is_member(ptr nocapture noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #4 {
  %3 = load i32, ptr %1, align 8, !tbaa !51
  %4 = urem i32 %3, 20
  %5 = zext nneg i32 %4 to i64
  %6 = getelementptr inbounds nuw ptr, ptr %0, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !57
  %8 = icmp ne ptr %7, null
  %9 = icmp ne ptr %7, %1
  %10 = and i1 %8, %9
  br i1 %10, label %11, label %18

11:                                               ; preds = %2, %11
  %12 = phi ptr [ %14, %11 ], [ %7, %2 ]
  %13 = getelementptr inbounds nuw i8, ptr %12, i64 8
  %14 = load ptr, ptr %13, align 8, !tbaa !54
  %15 = icmp ne ptr %14, null
  %16 = icmp ne ptr %14, %1
  %17 = and i1 %15, %16
  br i1 %17, label %11, label %18, !llvm.loop !55

18:                                               ; preds = %11, %2
  %19 = phi i1 [ %8, %2 ], [ %15, %11 ]
  %20 = zext i1 %19 to i32
  ret i32 %20
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @sglib_hashed_ilist_find_member(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 {
  %3 = load i32, ptr %1, align 8, !tbaa !51
  %4 = urem i32 %3, 20
  %5 = zext nneg i32 %4 to i64
  %6 = getelementptr inbounds nuw ptr, ptr %0, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !57
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %2, %13
  %10 = phi ptr [ %15, %13 ], [ %7, %2 ]
  %11 = load i32, ptr %10, align 8, !tbaa !51
  %12 = icmp eq i32 %11, %3
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds nuw i8, ptr %10, i64 8
  %15 = load ptr, ptr %14, align 8, !tbaa !54
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %9, !llvm.loop !56

17:                                               ; preds = %9, %13, %2
  %18 = phi ptr [ null, %2 ], [ %10, %9 ], [ null, %13 ]
  ret ptr %18
}

; Function Attrs: nounwind uwtable
define dso_local ptr @sglib_hashed_ilist_it_init_on_equal(ptr nocapture noundef initializes((8, 44), (48, 64)) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #5 {
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %1, ptr %5, align 8, !tbaa !76
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %6, align 8, !tbaa !79
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %2, ptr %7, align 8, !tbaa !80
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %3, ptr %8, align 8, !tbaa !81
  %9 = load ptr, ptr %1, align 8, !tbaa !57
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %10, align 8, !tbaa !70
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %3, ptr %11, align 8, !tbaa !72
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %12, align 8, !tbaa !73
  %13 = icmp eq ptr %2, null
  br i1 %13, label %27, label %14

14:                                               ; preds = %4
  %15 = icmp eq ptr %9, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %14
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %17, align 8
  br label %41

18:                                               ; preds = %14, %23
  %19 = phi ptr [ %25, %23 ], [ %9, %14 ]
  %20 = tail call i32 %2(ptr noundef nonnull %19, ptr noundef %3) #20
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store ptr %19, ptr %0, align 8, !tbaa !74
  br label %29

23:                                               ; preds = %18
  %24 = getelementptr inbounds nuw i8, ptr %19, i64 8
  %25 = load ptr, ptr %24, align 8, !tbaa !54
  %26 = icmp eq ptr %25, null
  br i1 %26, label %33, label %18, !llvm.loop !75

27:                                               ; preds = %4
  store ptr %9, ptr %0, align 8, !tbaa !74
  %28 = icmp eq ptr %9, null
  br i1 %28, label %38, label %29

29:                                               ; preds = %22, %27
  %30 = phi ptr [ %19, %22 ], [ %9, %27 ]
  %31 = getelementptr inbounds nuw i8, ptr %30, i64 8
  %32 = load ptr, ptr %31, align 8, !tbaa !54
  store ptr %32, ptr %12, align 8, !tbaa !73
  br label %109

33:                                               ; preds = %23
  %34 = load ptr, ptr %12, align 8, !tbaa !73
  %35 = load ptr, ptr %10, align 8, !tbaa !70
  %36 = icmp eq ptr %35, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %37 = icmp eq ptr %34, null
  br i1 %36, label %50, label %39

38:                                               ; preds = %27
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %51

39:                                               ; preds = %33
  %40 = load ptr, ptr %11, align 8, !tbaa !72
  br i1 %37, label %41, label %42

41:                                               ; preds = %46, %16, %39
  store ptr null, ptr %0, align 8, !tbaa !74
  br label %51

42:                                               ; preds = %39, %46
  %43 = phi ptr [ %48, %46 ], [ %34, %39 ]
  %44 = tail call i32 %35(ptr noundef nonnull %43, ptr noundef %40) #20
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %103, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds nuw i8, ptr %43, i64 8
  %48 = load ptr, ptr %47, align 8, !tbaa !54
  %49 = icmp eq ptr %48, null
  br i1 %49, label %41, label %42, !llvm.loop !75

50:                                               ; preds = %33
  store ptr %34, ptr %0, align 8, !tbaa !74
  br i1 %37, label %51, label %105

51:                                               ; preds = %38, %50, %41
  %52 = load i32, ptr %6, align 8, !tbaa !79
  %53 = add nsw i32 %52, 1
  store i32 %53, ptr %6, align 8, !tbaa !79
  %54 = icmp slt i32 %52, 19
  br i1 %54, label %55, label %109

55:                                               ; preds = %51
  %56 = load ptr, ptr %7, align 8, !tbaa !80
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %74

58:                                               ; preds = %55
  %59 = load ptr, ptr %5, align 8, !tbaa !76
  %60 = load ptr, ptr %8, align 8, !tbaa !81
  br label %61

61:                                               ; preds = %67, %58
  %62 = phi i32 [ %53, %58 ], [ %68, %67 ]
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds ptr, ptr %59, i64 %63
  %65 = load ptr, ptr %64, align 8, !tbaa !57
  store ptr %60, ptr %11, align 8, !tbaa !72
  store ptr null, ptr %12, align 8, !tbaa !73
  store ptr %65, ptr %0, align 8, !tbaa !74
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = add nsw i32 %62, 1
  store i32 %68, ptr %6, align 8, !tbaa !79
  %69 = icmp slt i32 %62, 19
  br i1 %69, label %61, label %71, !llvm.loop !82

70:                                               ; preds = %61
  store ptr null, ptr %10, align 8, !tbaa !70
  br label %105

71:                                               ; preds = %67
  store ptr null, ptr %10, align 8, !tbaa !70
  br label %109

72:                                               ; preds = %99
  %73 = load ptr, ptr %7, align 8, !tbaa !80
  br label %74

74:                                               ; preds = %55, %72
  %75 = phi ptr [ %73, %72 ], [ %56, %55 ]
  %76 = phi i32 [ %101, %72 ], [ %53, %55 ]
  %77 = load ptr, ptr %5, align 8, !tbaa !76
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds ptr, ptr %77, i64 %78
  %80 = load ptr, ptr %79, align 8, !tbaa !57
  %81 = load ptr, ptr %8, align 8, !tbaa !81
  store ptr %75, ptr %10, align 8, !tbaa !70
  store ptr %81, ptr %11, align 8, !tbaa !72
  store ptr null, ptr %12, align 8, !tbaa !73
  %82 = icmp eq ptr %75, null
  br i1 %82, label %97, label %83

83:                                               ; preds = %74
  %84 = icmp eq ptr %80, null
  br i1 %84, label %87, label %89

85:                                               ; preds = %93
  %86 = load i32, ptr %6, align 8, !tbaa !79
  br label %87

87:                                               ; preds = %85, %83
  %88 = phi i32 [ %86, %85 ], [ %76, %83 ]
  store ptr null, ptr %0, align 8, !tbaa !74
  br label %99

89:                                               ; preds = %83, %93
  %90 = phi ptr [ %95, %93 ], [ %80, %83 ]
  %91 = tail call i32 %75(ptr noundef nonnull %90, ptr noundef %81) #20
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %103, label %93

93:                                               ; preds = %89
  %94 = getelementptr inbounds nuw i8, ptr %90, i64 8
  %95 = load ptr, ptr %94, align 8, !tbaa !54
  %96 = icmp eq ptr %95, null
  br i1 %96, label %85, label %89, !llvm.loop !75

97:                                               ; preds = %74
  store ptr %80, ptr %0, align 8, !tbaa !74
  %98 = icmp eq ptr %80, null
  br i1 %98, label %99, label %105

99:                                               ; preds = %97, %87
  %100 = phi i32 [ %76, %97 ], [ %88, %87 ]
  %101 = add nsw i32 %100, 1
  store i32 %101, ptr %6, align 8, !tbaa !79
  %102 = icmp slt i32 %100, 19
  br i1 %102, label %72, label %109, !llvm.loop !83

103:                                              ; preds = %42, %89
  %104 = phi ptr [ %90, %89 ], [ %43, %42 ]
  store ptr %104, ptr %0, align 8, !tbaa !74
  br label %105

105:                                              ; preds = %97, %70, %103, %50
  %106 = phi ptr [ %34, %50 ], [ %104, %103 ], [ %65, %70 ], [ %80, %97 ]
  %107 = getelementptr inbounds nuw i8, ptr %106, i64 8
  %108 = load ptr, ptr %107, align 8, !tbaa !54
  store ptr %108, ptr %12, align 8, !tbaa !73
  br label %109

109:                                              ; preds = %99, %51, %71, %105, %29
  %110 = phi ptr [ %30, %29 ], [ %106, %105 ], [ null, %71 ], [ null, %51 ], [ null, %99 ]
  ret ptr %110
}

; Function Attrs: nounwind uwtable
define dso_local ptr @sglib_hashed_ilist_it_next(ptr nocapture noundef %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %3 = load ptr, ptr %2, align 8, !tbaa !73
  store ptr null, ptr %2, align 8, !tbaa !73
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %5 = load ptr, ptr %4, align 8, !tbaa !70
  %6 = icmp eq ptr %5, null
  br i1 %6, label %20, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %9 = load ptr, ptr %8, align 8, !tbaa !72
  %10 = icmp eq ptr %3, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %16, %7
  store ptr null, ptr %0, align 8, !tbaa !74
  br label %22

12:                                               ; preds = %7, %16
  %13 = phi ptr [ %18, %16 ], [ %3, %7 ]
  %14 = tail call i32 %5(ptr noundef nonnull %13, ptr noundef %9) #20
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %57, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %18 = load ptr, ptr %17, align 8, !tbaa !54
  %19 = icmp eq ptr %18, null
  br i1 %19, label %11, label %12, !llvm.loop !75

20:                                               ; preds = %1
  store ptr %3, ptr %0, align 8, !tbaa !74
  %21 = icmp eq ptr %3, null
  br i1 %21, label %22, label %59

22:                                               ; preds = %11, %20
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %25 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %28 = load i32, ptr %23, align 8, !tbaa !79
  %29 = add nsw i32 %28, 1
  store i32 %29, ptr %23, align 8, !tbaa !79
  %30 = icmp slt i32 %28, 19
  br i1 %30, label %31, label %63

31:                                               ; preds = %22, %53
  %32 = phi i32 [ %55, %53 ], [ %29, %22 ]
  %33 = load ptr, ptr %24, align 8, !tbaa !76
  %34 = sext i32 %32 to i64
  %35 = getelementptr inbounds ptr, ptr %33, i64 %34
  %36 = load ptr, ptr %35, align 8, !tbaa !57
  %37 = load ptr, ptr %25, align 8, !tbaa !80
  %38 = load ptr, ptr %26, align 8, !tbaa !81
  store ptr %37, ptr %4, align 8, !tbaa !70
  store ptr %38, ptr %27, align 8, !tbaa !72
  store ptr null, ptr %2, align 8, !tbaa !73
  %39 = icmp eq ptr %37, null
  br i1 %39, label %51, label %40

40:                                               ; preds = %31
  %41 = icmp eq ptr %36, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %47, %40
  store ptr null, ptr %0, align 8, !tbaa !74
  br label %53

43:                                               ; preds = %40, %47
  %44 = phi ptr [ %49, %47 ], [ %36, %40 ]
  %45 = tail call i32 %37(ptr noundef nonnull %44, ptr noundef %38) #20
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %57, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds nuw i8, ptr %44, i64 8
  %49 = load ptr, ptr %48, align 8, !tbaa !54
  %50 = icmp eq ptr %49, null
  br i1 %50, label %42, label %43, !llvm.loop !75

51:                                               ; preds = %31
  store ptr %36, ptr %0, align 8, !tbaa !74
  %52 = icmp eq ptr %36, null
  br i1 %52, label %53, label %59

53:                                               ; preds = %42, %51
  %54 = load i32, ptr %23, align 8, !tbaa !79
  %55 = add nsw i32 %54, 1
  store i32 %55, ptr %23, align 8, !tbaa !79
  %56 = icmp slt i32 %54, 19
  br i1 %56, label %31, label %63, !llvm.loop !82

57:                                               ; preds = %12, %43
  %58 = phi ptr [ %44, %43 ], [ %13, %12 ]
  store ptr %58, ptr %0, align 8, !tbaa !74
  br label %59

59:                                               ; preds = %51, %57, %20
  %60 = phi ptr [ %3, %20 ], [ %58, %57 ], [ %36, %51 ]
  %61 = getelementptr inbounds nuw i8, ptr %60, i64 8
  %62 = load ptr, ptr %61, align 8, !tbaa !54
  store ptr %62, ptr %2, align 8, !tbaa !73
  br label %63

63:                                               ; preds = %53, %22, %59
  %64 = phi ptr [ %60, %59 ], [ null, %22 ], [ null, %53 ]
  ret ptr %64
}

; Function Attrs: nounwind uwtable
define dso_local ptr @sglib_hashed_ilist_it_init(ptr nocapture noundef initializes((8, 44), (48, 64)) %0, ptr noundef %1) local_unnamed_addr #5 {
  %3 = tail call ptr @sglib_hashed_ilist_it_init_on_equal(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef null)
  ret ptr %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @sglib_hashed_ilist_it_current(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = load ptr, ptr %0, align 8, !tbaa !74
  ret ptr %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @sglib_iq_init(ptr nocapture noundef writeonly initializes((404, 412)) %0) local_unnamed_addr #9 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 408
  store i32 0, ptr %2, align 4, !tbaa !85
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 404
  store i32 0, ptr %3, align 4, !tbaa !87
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @sglib_iq_is_empty(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 404
  %3 = load i32, ptr %2, align 4, !tbaa !87
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 408
  %5 = load i32, ptr %4, align 4, !tbaa !85
  %6 = icmp eq i32 %3, %5
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @sglib_iq_is_full(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 404
  %3 = load i32, ptr %2, align 4, !tbaa !87
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 408
  %5 = load i32, ptr %4, align 4, !tbaa !85
  %6 = add nsw i32 %5, 1
  %7 = srem i32 %6, 101
  %8 = icmp eq i32 %3, %7
  %9 = zext i1 %8 to i32
  ret i32 %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @sglib_iq_first_element(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 404
  %3 = load i32, ptr %2, align 4, !tbaa !87
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds [101 x i32], ptr %0, i64 0, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !88
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @sglib_iq_first_element_ptr(ptr noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 404
  %3 = load i32, ptr %2, align 4, !tbaa !87
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds [101 x i32], ptr %0, i64 0, i64 %4
  ret ptr %5
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @sglib_iq_add_next(ptr nocapture noundef %0) local_unnamed_addr #10 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 404
  %3 = load i32, ptr %2, align 4, !tbaa !87
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 408
  %5 = load i32, ptr %4, align 4, !tbaa !85
  %6 = add nsw i32 %5, 1
  %7 = srem i32 %6, 101
  %8 = icmp eq i32 %3, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1, %9
  br label %9

10:                                               ; preds = %1
  store i32 %7, ptr %4, align 4, !tbaa !85
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @sglib_iq_add(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #10 {
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 408
  %4 = load i32, ptr %3, align 4, !tbaa !85
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds [101 x i32], ptr %0, i64 0, i64 %5
  store i32 %1, ptr %6, align 4, !tbaa !88
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 404
  %8 = load i32, ptr %7, align 4, !tbaa !87
  %9 = load i32, ptr %3, align 4, !tbaa !85
  %10 = add nsw i32 %9, 1
  %11 = srem i32 %10, 101
  %12 = icmp eq i32 %8, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2, %13
  br label %13

14:                                               ; preds = %2
  store i32 %11, ptr %3, align 4, !tbaa !85
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @sglib_iq_delete_first(ptr nocapture noundef %0) local_unnamed_addr #10 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 404
  %3 = load i32, ptr %2, align 4, !tbaa !87
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 408
  %5 = load i32, ptr %4, align 4, !tbaa !85
  %6 = icmp eq i32 %3, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %1, %7
  br label %7

8:                                                ; preds = %1
  %9 = add nsw i32 %3, 1
  %10 = srem i32 %9, 101
  store i32 %10, ptr %2, align 4, !tbaa !87
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @sglib_iq_delete(ptr nocapture noundef %0) local_unnamed_addr #10 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 404
  %3 = load i32, ptr %2, align 4, !tbaa !87
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 408
  %5 = load i32, ptr %4, align 4, !tbaa !85
  %6 = icmp eq i32 %3, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %1, %7
  br label %7

8:                                                ; preds = %1
  %9 = add nsw i32 %3, 1
  %10 = srem i32 %9, 101
  store i32 %10, ptr %2, align 4, !tbaa !87
  ret void
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local range(i32 0, 2) i32 @sglib___rbtree_delete_recursive(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #11 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #20
  %4 = load ptr, ptr %0, align 8, !tbaa !89
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %2, %6
  br label %6

7:                                                ; preds = %2
  %8 = load i32, ptr %1, align 8, !tbaa !91
  %9 = load i32, ptr %4, align 8, !tbaa !91
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = icmp eq i32 %8, %9
  %13 = icmp ult ptr %1, %4
  %14 = and i1 %13, %12
  br i1 %14, label %15, label %21

15:                                               ; preds = %11, %7
  %16 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %17 = tail call i32 @sglib___rbtree_delete_recursive(ptr noundef nonnull %16, ptr noundef nonnull %1)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %70, label %19

19:                                               ; preds = %15
  %20 = tail call fastcc i32 @sglib___rbtree_fix_left_deletion_discrepancy(ptr noundef nonnull %0)
  br label %70

21:                                               ; preds = %11
  %22 = icmp ne i32 %8, %9
  %23 = icmp ugt ptr %1, %4
  %24 = or i1 %23, %22
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %27 = tail call i32 @sglib___rbtree_delete_recursive(ptr noundef nonnull %26, ptr noundef nonnull %1)
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %70, label %29

29:                                               ; preds = %25
  %30 = tail call fastcc i32 @sglib___rbtree_fix_right_deletion_discrepancy(ptr noundef nonnull %0)
  br label %70

31:                                               ; preds = %21
  %32 = icmp eq ptr %1, %4
  br i1 %32, label %34, label %33

33:                                               ; preds = %31, %33
  br label %33

34:                                               ; preds = %31
  %35 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %36 = load ptr, ptr %35, align 8, !tbaa !93
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %59

38:                                               ; preds = %34
  %39 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %40 = load ptr, ptr %39, align 8, !tbaa !94
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %38
  store ptr null, ptr %0, align 8, !tbaa !89
  %43 = getelementptr inbounds nuw i8, ptr %4, i64 4
  %44 = load i8, ptr %43, align 4, !tbaa !95
  %45 = icmp eq i8 %44, 0
  %46 = zext i1 %45 to i32
  br label %70

47:                                               ; preds = %38
  %48 = getelementptr inbounds nuw i8, ptr %4, i64 4
  %49 = load i8, ptr %48, align 4, !tbaa !95
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %47
  %52 = getelementptr inbounds nuw i8, ptr %40, i64 4
  %53 = load i8, ptr %52, align 4, !tbaa !95
  %54 = icmp eq i8 %53, 0
  %55 = zext i1 %54 to i32
  br label %56

56:                                               ; preds = %51, %47
  %57 = phi i32 [ 0, %47 ], [ %55, %51 ]
  %58 = getelementptr inbounds nuw i8, ptr %40, i64 4
  store i8 0, ptr %58, align 4, !tbaa !95
  store ptr %40, ptr %0, align 8, !tbaa !89
  br label %70

59:                                               ; preds = %34
  %60 = call fastcc i32 @sglib___rbtree_delete_rightmost_leaf(ptr noundef %35, ptr noundef %3)
  %61 = load ptr, ptr %3, align 8, !tbaa !89
  %62 = getelementptr inbounds nuw i8, ptr %61, i64 8
  %63 = load <2 x ptr>, ptr %35, align 8, !tbaa !89
  store <2 x ptr> %63, ptr %62, align 8, !tbaa !89
  %64 = getelementptr inbounds nuw i8, ptr %4, i64 4
  %65 = load i8, ptr %64, align 4, !tbaa !95
  %66 = getelementptr inbounds nuw i8, ptr %61, i64 4
  store i8 %65, ptr %66, align 4, !tbaa !95
  store ptr %61, ptr %0, align 8, !tbaa !89
  %67 = icmp eq i32 %60, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %59
  %69 = tail call fastcc i32 @sglib___rbtree_fix_left_deletion_discrepancy(ptr noundef nonnull %0)
  br label %70

70:                                               ; preds = %19, %15, %56, %42, %68, %59, %25, %29
  %71 = phi i32 [ %20, %19 ], [ 0, %15 ], [ %30, %29 ], [ 0, %25 ], [ %46, %42 ], [ %57, %56 ], [ %69, %68 ], [ 0, %59 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #20
  ret i32 %71
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @sglib___rbtree_fix_left_deletion_discrepancy(ptr nocapture noundef %0) unnamed_addr #1 {
  %2 = load ptr, ptr %0, align 8, !tbaa !89
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1, %4
  br label %4

5:                                                ; preds = %1
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %7 = load ptr, ptr %6, align 8, !tbaa !94
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %11 = load i8, ptr %10, align 4, !tbaa !95
  %12 = icmp eq i8 %11, 1
  br i1 %12, label %14, label %13

13:                                               ; preds = %9, %13
  br label %13

14:                                               ; preds = %9
  store i8 0, ptr %10, align 4, !tbaa !95
  br label %144

15:                                               ; preds = %5
  %16 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %17 = load ptr, ptr %16, align 8, !tbaa !94
  %18 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %19 = load ptr, ptr %18, align 8, !tbaa !93
  %20 = getelementptr inbounds nuw i8, ptr %7, i64 4
  %21 = load i8, ptr %20, align 4, !tbaa !95
  %22 = icmp eq i8 %21, 1
  br i1 %22, label %23, label %86

23:                                               ; preds = %15
  %24 = icmp eq ptr %19, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %23
  store ptr %7, ptr %0, align 8, !tbaa !89
  store i8 0, ptr %20, align 4, !tbaa !95
  store ptr %2, ptr %18, align 8, !tbaa !93
  store ptr null, ptr %6, align 8, !tbaa !94
  br label %144

26:                                               ; preds = %23
  %27 = getelementptr inbounds nuw i8, ptr %19, i64 4
  %28 = load i8, ptr %27, align 4, !tbaa !95
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %26, %30
  br label %30

31:                                               ; preds = %26
  %32 = getelementptr inbounds nuw i8, ptr %19, i64 16
  %33 = load ptr, ptr %32, align 8, !tbaa !94
  %34 = getelementptr inbounds nuw i8, ptr %19, i64 8
  %35 = load ptr, ptr %34, align 8, !tbaa !93
  %36 = icmp eq ptr %33, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %31
  %38 = getelementptr inbounds nuw i8, ptr %33, i64 4
  %39 = load i8, ptr %38, align 4, !tbaa !95
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %37, %31
  %42 = icmp eq ptr %35, null
  br i1 %42, label %47, label %43

43:                                               ; preds = %41
  %44 = getelementptr inbounds nuw i8, ptr %35, i64 4
  %45 = load i8, ptr %44, align 4, !tbaa !95
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %43, %41
  store ptr %7, ptr %0, align 8, !tbaa !89
  store ptr %2, ptr %18, align 8, !tbaa !93
  store i8 0, ptr %20, align 4, !tbaa !95
  store ptr %19, ptr %6, align 8, !tbaa !94
  store i8 1, ptr %27, align 4, !tbaa !95
  br label %144

48:                                               ; preds = %43
  br i1 %36, label %70, label %49

49:                                               ; preds = %48
  %50 = getelementptr inbounds nuw i8, ptr %33, i64 4
  %51 = load i8, ptr %50, align 4, !tbaa !95
  br label %52

52:                                               ; preds = %49, %37
  %53 = phi i8 [ %51, %49 ], [ %39, %37 ]
  %54 = getelementptr inbounds nuw i8, ptr %33, i64 4
  %55 = icmp eq i8 %53, 1
  %56 = icmp eq ptr %35, null
  br i1 %55, label %57, label %68

57:                                               ; preds = %52
  br i1 %56, label %67, label %58

58:                                               ; preds = %57
  %59 = getelementptr inbounds nuw i8, ptr %35, i64 4
  %60 = load i8, ptr %59, align 4, !tbaa !95
  %61 = icmp eq i8 %60, 1
  br i1 %61, label %62, label %67

62:                                               ; preds = %58
  %63 = getelementptr inbounds nuw i8, ptr %35, i64 16
  %64 = load ptr, ptr %63, align 8, !tbaa !94
  %65 = getelementptr inbounds nuw i8, ptr %35, i64 8
  %66 = load ptr, ptr %65, align 8, !tbaa !93
  store ptr %35, ptr %0, align 8, !tbaa !89
  store i8 0, ptr %59, align 4, !tbaa !95
  store ptr %7, ptr %63, align 8, !tbaa !94
  store ptr %64, ptr %34, align 8, !tbaa !93
  store ptr %2, ptr %65, align 8, !tbaa !93
  store ptr %66, ptr %6, align 8, !tbaa !94
  br label %144

67:                                               ; preds = %58, %57
  store ptr %19, ptr %0, align 8, !tbaa !89
  store ptr %7, ptr %32, align 8, !tbaa !94
  store ptr %2, ptr %34, align 8, !tbaa !93
  store ptr %17, ptr %16, align 8, !tbaa !94
  store ptr %33, ptr %18, align 8, !tbaa !93
  store ptr %35, ptr %6, align 8, !tbaa !94
  store i8 0, ptr %54, align 4, !tbaa !95
  br label %144

68:                                               ; preds = %52
  br i1 %56, label %69, label %72

69:                                               ; preds = %72, %70, %68
  br label %85

70:                                               ; preds = %48
  %71 = icmp eq i8 %45, 1
  br i1 %71, label %79, label %69

72:                                               ; preds = %68
  %73 = getelementptr inbounds nuw i8, ptr %35, i64 4
  %74 = load i8, ptr %73, align 4, !tbaa !95
  %75 = icmp eq i8 %74, 1
  br i1 %75, label %76, label %69

76:                                               ; preds = %72
  %77 = icmp eq i8 %53, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %76, %78
  br label %78

79:                                               ; preds = %70, %76
  %80 = phi ptr [ %73, %76 ], [ %44, %70 ]
  %81 = getelementptr inbounds nuw i8, ptr %35, i64 16
  %82 = load ptr, ptr %81, align 8, !tbaa !94
  %83 = getelementptr inbounds nuw i8, ptr %35, i64 8
  %84 = load ptr, ptr %83, align 8, !tbaa !93
  store ptr %35, ptr %0, align 8, !tbaa !89
  store i8 0, ptr %80, align 4, !tbaa !95
  store ptr %7, ptr %81, align 8, !tbaa !94
  store ptr %82, ptr %34, align 8, !tbaa !93
  store ptr %2, ptr %83, align 8, !tbaa !93
  store ptr %84, ptr %6, align 8, !tbaa !94
  br label %144

85:                                               ; preds = %69, %85
  br label %85

86:                                               ; preds = %15
  %87 = icmp eq ptr %17, null
  br i1 %87, label %92, label %88

88:                                               ; preds = %86
  %89 = getelementptr inbounds nuw i8, ptr %17, i64 4
  %90 = load i8, ptr %89, align 4, !tbaa !95
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %92, label %107

92:                                               ; preds = %88, %86
  %93 = icmp eq ptr %19, null
  br i1 %93, label %98, label %94

94:                                               ; preds = %92
  %95 = getelementptr inbounds nuw i8, ptr %19, i64 4
  %96 = load i8, ptr %95, align 4, !tbaa !95
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %94, %92
  %99 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %100 = load i8, ptr %99, align 4, !tbaa !95
  %101 = icmp eq i8 %100, 0
  %102 = zext i1 %101 to i32
  store i8 0, ptr %99, align 4, !tbaa !95
  store i8 1, ptr %20, align 4, !tbaa !95
  br label %144

103:                                              ; preds = %94
  br i1 %87, label %131, label %104

104:                                              ; preds = %103
  %105 = getelementptr inbounds nuw i8, ptr %17, i64 4
  %106 = load i8, ptr %105, align 4, !tbaa !95
  br label %107

107:                                              ; preds = %104, %88
  %108 = phi i8 [ %106, %104 ], [ %90, %88 ]
  %109 = getelementptr inbounds nuw i8, ptr %17, i64 4
  %110 = icmp eq i8 %108, 1
  %111 = icmp eq ptr %19, null
  br i1 %110, label %112, label %127

112:                                              ; preds = %107
  br i1 %111, label %116, label %113

113:                                              ; preds = %112
  %114 = getelementptr inbounds nuw i8, ptr %19, i64 4
  %115 = load i8, ptr %114, align 4, !tbaa !95
  switch i8 %115, label %119 [
    i8 0, label %116
    i8 1, label %120
  ]

116:                                              ; preds = %113, %112
  store ptr %7, ptr %0, align 8, !tbaa !89
  %117 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %118 = load i8, ptr %117, align 4, !tbaa !95
  store i8 %118, ptr %20, align 4, !tbaa !95
  store i8 0, ptr %117, align 4, !tbaa !95
  store ptr %2, ptr %18, align 8, !tbaa !93
  store ptr %19, ptr %6, align 8, !tbaa !94
  store i8 0, ptr %109, align 4, !tbaa !95
  br label %144

119:                                              ; preds = %113, %119
  br label %119

120:                                              ; preds = %113
  %121 = getelementptr inbounds nuw i8, ptr %19, i64 16
  %122 = load ptr, ptr %121, align 8, !tbaa !94
  %123 = getelementptr inbounds nuw i8, ptr %19, i64 8
  %124 = load ptr, ptr %123, align 8, !tbaa !93
  store ptr %19, ptr %0, align 8, !tbaa !89
  %125 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %126 = load i8, ptr %125, align 4, !tbaa !95
  store i8 %126, ptr %114, align 4, !tbaa !95
  store i8 0, ptr %125, align 4, !tbaa !95
  store ptr %7, ptr %121, align 8, !tbaa !94
  store ptr %2, ptr %123, align 8, !tbaa !93
  store ptr %122, ptr %18, align 8, !tbaa !93
  store ptr %124, ptr %6, align 8, !tbaa !94
  br label %144

127:                                              ; preds = %107
  br i1 %111, label %134, label %128

128:                                              ; preds = %127
  %129 = getelementptr inbounds nuw i8, ptr %19, i64 4
  %130 = load i8, ptr %129, align 4, !tbaa !95
  br label %131

131:                                              ; preds = %128, %103
  %132 = phi i8 [ %130, %128 ], [ %96, %103 ]
  %133 = icmp eq i8 %132, 1
  br i1 %133, label %136, label %134

134:                                              ; preds = %131, %127
  br label %135

135:                                              ; preds = %134, %135
  br label %135

136:                                              ; preds = %131
  %137 = getelementptr inbounds nuw i8, ptr %19, i64 4
  %138 = getelementptr inbounds nuw i8, ptr %19, i64 16
  %139 = load ptr, ptr %138, align 8, !tbaa !94
  %140 = getelementptr inbounds nuw i8, ptr %19, i64 8
  %141 = load ptr, ptr %140, align 8, !tbaa !93
  store ptr %19, ptr %0, align 8, !tbaa !89
  %142 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %143 = load i8, ptr %142, align 4, !tbaa !95
  store i8 %143, ptr %137, align 4, !tbaa !95
  store i8 0, ptr %142, align 4, !tbaa !95
  store ptr %7, ptr %138, align 8, !tbaa !94
  store ptr %2, ptr %140, align 8, !tbaa !93
  store ptr %139, ptr %18, align 8, !tbaa !93
  store ptr %141, ptr %6, align 8, !tbaa !94
  br label %144

144:                                              ; preds = %47, %62, %67, %79, %25, %136, %120, %116, %98, %14
  %145 = phi i32 [ 0, %14 ], [ 0, %25 ], [ 0, %47 ], [ 0, %62 ], [ 0, %67 ], [ 0, %79 ], [ %102, %98 ], [ 0, %116 ], [ 0, %120 ], [ 0, %136 ]
  ret i32 %145
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @sglib___rbtree_fix_right_deletion_discrepancy(ptr nocapture noundef %0) unnamed_addr #1 {
  %2 = load ptr, ptr %0, align 8, !tbaa !89
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1, %4
  br label %4

5:                                                ; preds = %1
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %7 = load ptr, ptr %6, align 8, !tbaa !93
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %11 = load i8, ptr %10, align 4, !tbaa !95
  %12 = icmp eq i8 %11, 1
  br i1 %12, label %14, label %13

13:                                               ; preds = %9, %13
  br label %13

14:                                               ; preds = %9
  store i8 0, ptr %10, align 4, !tbaa !95
  br label %144

15:                                               ; preds = %5
  %16 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %17 = load ptr, ptr %16, align 8, !tbaa !93
  %18 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %19 = load ptr, ptr %18, align 8, !tbaa !94
  %20 = getelementptr inbounds nuw i8, ptr %7, i64 4
  %21 = load i8, ptr %20, align 4, !tbaa !95
  %22 = icmp eq i8 %21, 1
  br i1 %22, label %23, label %86

23:                                               ; preds = %15
  %24 = icmp eq ptr %19, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %23
  store ptr %7, ptr %0, align 8, !tbaa !89
  store i8 0, ptr %20, align 4, !tbaa !95
  store ptr %2, ptr %18, align 8, !tbaa !94
  store ptr null, ptr %6, align 8, !tbaa !93
  br label %144

26:                                               ; preds = %23
  %27 = getelementptr inbounds nuw i8, ptr %19, i64 4
  %28 = load i8, ptr %27, align 4, !tbaa !95
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %26, %30
  br label %30

31:                                               ; preds = %26
  %32 = getelementptr inbounds nuw i8, ptr %19, i64 8
  %33 = load ptr, ptr %32, align 8, !tbaa !93
  %34 = getelementptr inbounds nuw i8, ptr %19, i64 16
  %35 = load ptr, ptr %34, align 8, !tbaa !94
  %36 = icmp eq ptr %33, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %31
  %38 = getelementptr inbounds nuw i8, ptr %33, i64 4
  %39 = load i8, ptr %38, align 4, !tbaa !95
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %37, %31
  %42 = icmp eq ptr %35, null
  br i1 %42, label %47, label %43

43:                                               ; preds = %41
  %44 = getelementptr inbounds nuw i8, ptr %35, i64 4
  %45 = load i8, ptr %44, align 4, !tbaa !95
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %43, %41
  store ptr %7, ptr %0, align 8, !tbaa !89
  store ptr %2, ptr %18, align 8, !tbaa !94
  store i8 0, ptr %20, align 4, !tbaa !95
  store ptr %19, ptr %6, align 8, !tbaa !93
  store i8 1, ptr %27, align 4, !tbaa !95
  br label %144

48:                                               ; preds = %43
  br i1 %36, label %70, label %49

49:                                               ; preds = %48
  %50 = getelementptr inbounds nuw i8, ptr %33, i64 4
  %51 = load i8, ptr %50, align 4, !tbaa !95
  br label %52

52:                                               ; preds = %49, %37
  %53 = phi i8 [ %51, %49 ], [ %39, %37 ]
  %54 = getelementptr inbounds nuw i8, ptr %33, i64 4
  %55 = icmp eq i8 %53, 1
  %56 = icmp eq ptr %35, null
  br i1 %55, label %57, label %68

57:                                               ; preds = %52
  br i1 %56, label %67, label %58

58:                                               ; preds = %57
  %59 = getelementptr inbounds nuw i8, ptr %35, i64 4
  %60 = load i8, ptr %59, align 4, !tbaa !95
  %61 = icmp eq i8 %60, 1
  br i1 %61, label %62, label %67

62:                                               ; preds = %58
  %63 = getelementptr inbounds nuw i8, ptr %35, i64 8
  %64 = load ptr, ptr %63, align 8, !tbaa !93
  %65 = getelementptr inbounds nuw i8, ptr %35, i64 16
  %66 = load ptr, ptr %65, align 8, !tbaa !94
  store ptr %35, ptr %0, align 8, !tbaa !89
  store i8 0, ptr %59, align 4, !tbaa !95
  store ptr %7, ptr %63, align 8, !tbaa !93
  store ptr %64, ptr %34, align 8, !tbaa !94
  store ptr %2, ptr %65, align 8, !tbaa !94
  store ptr %66, ptr %6, align 8, !tbaa !93
  br label %144

67:                                               ; preds = %58, %57
  store ptr %19, ptr %0, align 8, !tbaa !89
  store ptr %7, ptr %32, align 8, !tbaa !93
  store ptr %2, ptr %34, align 8, !tbaa !94
  store ptr %17, ptr %16, align 8, !tbaa !93
  store ptr %33, ptr %18, align 8, !tbaa !94
  store ptr %35, ptr %6, align 8, !tbaa !93
  store i8 0, ptr %54, align 4, !tbaa !95
  br label %144

68:                                               ; preds = %52
  br i1 %56, label %69, label %72

69:                                               ; preds = %72, %70, %68
  br label %85

70:                                               ; preds = %48
  %71 = icmp eq i8 %45, 1
  br i1 %71, label %79, label %69

72:                                               ; preds = %68
  %73 = getelementptr inbounds nuw i8, ptr %35, i64 4
  %74 = load i8, ptr %73, align 4, !tbaa !95
  %75 = icmp eq i8 %74, 1
  br i1 %75, label %76, label %69

76:                                               ; preds = %72
  %77 = icmp eq i8 %53, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %76, %78
  br label %78

79:                                               ; preds = %70, %76
  %80 = phi ptr [ %73, %76 ], [ %44, %70 ]
  %81 = getelementptr inbounds nuw i8, ptr %35, i64 8
  %82 = load ptr, ptr %81, align 8, !tbaa !93
  %83 = getelementptr inbounds nuw i8, ptr %35, i64 16
  %84 = load ptr, ptr %83, align 8, !tbaa !94
  store ptr %35, ptr %0, align 8, !tbaa !89
  store i8 0, ptr %80, align 4, !tbaa !95
  store ptr %7, ptr %81, align 8, !tbaa !93
  store ptr %82, ptr %34, align 8, !tbaa !94
  store ptr %2, ptr %83, align 8, !tbaa !94
  store ptr %84, ptr %6, align 8, !tbaa !93
  br label %144

85:                                               ; preds = %69, %85
  br label %85

86:                                               ; preds = %15
  %87 = icmp eq ptr %17, null
  br i1 %87, label %92, label %88

88:                                               ; preds = %86
  %89 = getelementptr inbounds nuw i8, ptr %17, i64 4
  %90 = load i8, ptr %89, align 4, !tbaa !95
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %92, label %107

92:                                               ; preds = %88, %86
  %93 = icmp eq ptr %19, null
  br i1 %93, label %98, label %94

94:                                               ; preds = %92
  %95 = getelementptr inbounds nuw i8, ptr %19, i64 4
  %96 = load i8, ptr %95, align 4, !tbaa !95
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %94, %92
  %99 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %100 = load i8, ptr %99, align 4, !tbaa !95
  %101 = icmp eq i8 %100, 0
  %102 = zext i1 %101 to i32
  store i8 0, ptr %99, align 4, !tbaa !95
  store i8 1, ptr %20, align 4, !tbaa !95
  br label %144

103:                                              ; preds = %94
  br i1 %87, label %131, label %104

104:                                              ; preds = %103
  %105 = getelementptr inbounds nuw i8, ptr %17, i64 4
  %106 = load i8, ptr %105, align 4, !tbaa !95
  br label %107

107:                                              ; preds = %104, %88
  %108 = phi i8 [ %106, %104 ], [ %90, %88 ]
  %109 = getelementptr inbounds nuw i8, ptr %17, i64 4
  %110 = icmp eq i8 %108, 1
  %111 = icmp eq ptr %19, null
  br i1 %110, label %112, label %127

112:                                              ; preds = %107
  br i1 %111, label %116, label %113

113:                                              ; preds = %112
  %114 = getelementptr inbounds nuw i8, ptr %19, i64 4
  %115 = load i8, ptr %114, align 4, !tbaa !95
  switch i8 %115, label %119 [
    i8 0, label %116
    i8 1, label %120
  ]

116:                                              ; preds = %113, %112
  store ptr %7, ptr %0, align 8, !tbaa !89
  %117 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %118 = load i8, ptr %117, align 4, !tbaa !95
  store i8 %118, ptr %20, align 4, !tbaa !95
  store i8 0, ptr %117, align 4, !tbaa !95
  store ptr %2, ptr %18, align 8, !tbaa !94
  store ptr %19, ptr %6, align 8, !tbaa !93
  store i8 0, ptr %109, align 4, !tbaa !95
  br label %144

119:                                              ; preds = %113, %119
  br label %119

120:                                              ; preds = %113
  %121 = getelementptr inbounds nuw i8, ptr %19, i64 8
  %122 = load ptr, ptr %121, align 8, !tbaa !93
  %123 = getelementptr inbounds nuw i8, ptr %19, i64 16
  %124 = load ptr, ptr %123, align 8, !tbaa !94
  store ptr %19, ptr %0, align 8, !tbaa !89
  %125 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %126 = load i8, ptr %125, align 4, !tbaa !95
  store i8 %126, ptr %114, align 4, !tbaa !95
  store i8 0, ptr %125, align 4, !tbaa !95
  store ptr %7, ptr %121, align 8, !tbaa !93
  store ptr %2, ptr %123, align 8, !tbaa !94
  store ptr %122, ptr %18, align 8, !tbaa !94
  store ptr %124, ptr %6, align 8, !tbaa !93
  br label %144

127:                                              ; preds = %107
  br i1 %111, label %134, label %128

128:                                              ; preds = %127
  %129 = getelementptr inbounds nuw i8, ptr %19, i64 4
  %130 = load i8, ptr %129, align 4, !tbaa !95
  br label %131

131:                                              ; preds = %128, %103
  %132 = phi i8 [ %130, %128 ], [ %96, %103 ]
  %133 = icmp eq i8 %132, 1
  br i1 %133, label %136, label %134

134:                                              ; preds = %131, %127
  br label %135

135:                                              ; preds = %134, %135
  br label %135

136:                                              ; preds = %131
  %137 = getelementptr inbounds nuw i8, ptr %19, i64 4
  %138 = getelementptr inbounds nuw i8, ptr %19, i64 8
  %139 = load ptr, ptr %138, align 8, !tbaa !93
  %140 = getelementptr inbounds nuw i8, ptr %19, i64 16
  %141 = load ptr, ptr %140, align 8, !tbaa !94
  store ptr %19, ptr %0, align 8, !tbaa !89
  %142 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %143 = load i8, ptr %142, align 4, !tbaa !95
  store i8 %143, ptr %137, align 4, !tbaa !95
  store i8 0, ptr %142, align 4, !tbaa !95
  store ptr %7, ptr %138, align 8, !tbaa !93
  store ptr %2, ptr %140, align 8, !tbaa !94
  store ptr %139, ptr %18, align 8, !tbaa !94
  store ptr %141, ptr %6, align 8, !tbaa !93
  br label %144

144:                                              ; preds = %47, %62, %67, %79, %25, %136, %120, %116, %98, %14
  %145 = phi i32 [ 0, %14 ], [ 0, %25 ], [ 0, %47 ], [ 0, %62 ], [ 0, %67 ], [ 0, %79 ], [ %102, %98 ], [ 0, %116 ], [ 0, %120 ], [ 0, %136 ]
  ret i32 %145
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @sglib___rbtree_delete_rightmost_leaf(ptr nocapture noundef nonnull %0, ptr nocapture noundef nonnull writeonly %1) unnamed_addr #11 {
  %3 = load ptr, ptr %0, align 8, !tbaa !89
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %2, %5
  br label %5

6:                                                ; preds = %2
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %8 = load ptr, ptr %7, align 8, !tbaa !94
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %31

10:                                               ; preds = %6
  store ptr %3, ptr %1, align 8, !tbaa !89
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %12 = load ptr, ptr %11, align 8, !tbaa !93
  %13 = icmp eq ptr %12, null
  br i1 %13, label %26, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %16 = load i8, ptr %15, align 4, !tbaa !95
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = getelementptr inbounds nuw i8, ptr %12, i64 4
  %20 = load i8, ptr %19, align 4, !tbaa !95
  %21 = icmp eq i8 %20, 0
  %22 = zext i1 %21 to i32
  br label %23

23:                                               ; preds = %18, %14
  %24 = phi i32 [ 0, %14 ], [ %22, %18 ]
  %25 = getelementptr inbounds nuw i8, ptr %12, i64 4
  store i8 0, ptr %25, align 4, !tbaa !95
  store ptr %12, ptr %0, align 8, !tbaa !89
  br label %36

26:                                               ; preds = %10
  store ptr null, ptr %0, align 8, !tbaa !89
  %27 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %28 = load i8, ptr %27, align 4, !tbaa !95
  %29 = icmp eq i8 %28, 0
  %30 = zext i1 %29 to i32
  br label %36

31:                                               ; preds = %6
  %32 = tail call fastcc i32 @sglib___rbtree_delete_rightmost_leaf(ptr noundef %7, ptr noundef %1)
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %31
  %35 = tail call fastcc i32 @sglib___rbtree_fix_right_deletion_discrepancy(ptr noundef nonnull %0)
  br label %36

36:                                               ; preds = %31, %34, %23, %26
  %37 = phi i32 [ %24, %23 ], [ %30, %26 ], [ %35, %34 ], [ 0, %31 ]
  ret i32 %37
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @sglib_rbtree_add(ptr nocapture noundef %0, ptr noundef initializes((8, 24)) %1) local_unnamed_addr #11 {
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  tail call fastcc void @sglib___rbtree_add_recursive(ptr noundef %0, ptr noundef %1)
  %4 = load ptr, ptr %0, align 8, !tbaa !89
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i8 0, ptr %5, align 4, !tbaa !95
  ret void
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @sglib___rbtree_add_recursive(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #11 {
  %3 = load ptr, ptr %0, align 8, !tbaa !89
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i8 1, ptr %6, align 4, !tbaa !95
  store ptr %1, ptr %0, align 8, !tbaa !89
  br label %151

7:                                                ; preds = %2
  %8 = load i32, ptr %1, align 8, !tbaa !91
  %9 = load i32, ptr %3, align 8, !tbaa !91
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = icmp eq i32 %8, %9
  %13 = icmp ult ptr %1, %3
  %14 = and i1 %13, %12
  br i1 %14, label %15, label %83

15:                                               ; preds = %11, %7
  %16 = getelementptr inbounds nuw i8, ptr %3, i64 8
  tail call fastcc void @sglib___rbtree_add_recursive(ptr noundef nonnull %16, ptr noundef nonnull %1)
  %17 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %18 = load i8, ptr %17, align 4, !tbaa !95
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %151

20:                                               ; preds = %15
  %21 = load ptr, ptr %0, align 8, !tbaa !89
  %22 = getelementptr inbounds nuw i8, ptr %21, i64 8
  %23 = load ptr, ptr %22, align 8, !tbaa !93
  %24 = getelementptr inbounds nuw i8, ptr %21, i64 16
  %25 = load ptr, ptr %24, align 8, !tbaa !94
  %26 = icmp eq ptr %25, null
  br i1 %26, label %53, label %27

27:                                               ; preds = %20
  %28 = getelementptr inbounds nuw i8, ptr %25, i64 4
  %29 = load i8, ptr %28, align 4, !tbaa !95
  %30 = icmp eq i8 %29, 1
  br i1 %30, label %31, label %53

31:                                               ; preds = %27
  %32 = getelementptr inbounds nuw i8, ptr %23, i64 4
  %33 = load i8, ptr %32, align 4, !tbaa !95
  %34 = icmp eq i8 %33, 1
  br i1 %34, label %35, label %151

35:                                               ; preds = %31
  %36 = getelementptr inbounds nuw i8, ptr %23, i64 8
  %37 = load ptr, ptr %36, align 8, !tbaa !93
  %38 = icmp eq ptr %37, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds nuw i8, ptr %37, i64 4
  %41 = load i8, ptr %40, align 4, !tbaa !95
  %42 = icmp eq i8 %41, 1
  br i1 %42, label %51, label %43

43:                                               ; preds = %39, %35
  %44 = getelementptr inbounds nuw i8, ptr %23, i64 16
  %45 = load ptr, ptr %44, align 8, !tbaa !94
  %46 = icmp eq ptr %45, null
  br i1 %46, label %151, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds nuw i8, ptr %45, i64 4
  %49 = load i8, ptr %48, align 4, !tbaa !95
  %50 = icmp eq i8 %49, 1
  br i1 %50, label %51, label %151

51:                                               ; preds = %47, %39
  store i8 0, ptr %32, align 4, !tbaa !95
  store i8 0, ptr %28, align 4, !tbaa !95
  %52 = getelementptr inbounds nuw i8, ptr %21, i64 4
  store i8 1, ptr %52, align 4, !tbaa !95
  br label %151

53:                                               ; preds = %27, %20
  %54 = getelementptr inbounds nuw i8, ptr %23, i64 4
  %55 = load i8, ptr %54, align 4, !tbaa !95
  %56 = icmp eq i8 %55, 1
  br i1 %56, label %57, label %151

57:                                               ; preds = %53
  %58 = getelementptr inbounds nuw i8, ptr %23, i64 8
  %59 = load ptr, ptr %58, align 8, !tbaa !93
  %60 = icmp eq ptr %59, null
  br i1 %60, label %69, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds nuw i8, ptr %59, i64 4
  %63 = load i8, ptr %62, align 4, !tbaa !95
  %64 = icmp eq i8 %63, 1
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = getelementptr inbounds nuw i8, ptr %23, i64 16
  %67 = load ptr, ptr %66, align 8, !tbaa !94
  store ptr %67, ptr %22, align 8, !tbaa !93
  store ptr %59, ptr %58, align 8, !tbaa !93
  store ptr %21, ptr %66, align 8, !tbaa !94
  %68 = getelementptr inbounds nuw i8, ptr %21, i64 4
  store i8 1, ptr %68, align 4, !tbaa !95
  store i8 0, ptr %54, align 4, !tbaa !95
  store ptr %23, ptr %0, align 8, !tbaa !89
  br label %151

69:                                               ; preds = %61, %57
  %70 = getelementptr inbounds nuw i8, ptr %23, i64 16
  %71 = load ptr, ptr %70, align 8, !tbaa !94
  %72 = icmp eq ptr %71, null
  br i1 %72, label %151, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds nuw i8, ptr %71, i64 4
  %75 = load i8, ptr %74, align 4, !tbaa !95
  %76 = icmp eq i8 %75, 1
  br i1 %76, label %77, label %151

77:                                               ; preds = %73
  %78 = getelementptr inbounds nuw i8, ptr %71, i64 8
  %79 = load ptr, ptr %78, align 8, !tbaa !93
  %80 = getelementptr inbounds nuw i8, ptr %71, i64 16
  %81 = load ptr, ptr %80, align 8, !tbaa !94
  store ptr %79, ptr %70, align 8, !tbaa !94
  store ptr %81, ptr %22, align 8, !tbaa !93
  store ptr %23, ptr %78, align 8, !tbaa !93
  store ptr %21, ptr %80, align 8, !tbaa !94
  store i8 0, ptr %74, align 4, !tbaa !95
  %82 = getelementptr inbounds nuw i8, ptr %21, i64 4
  store i8 1, ptr %82, align 4, !tbaa !95
  store ptr %71, ptr %0, align 8, !tbaa !89
  br label %151

83:                                               ; preds = %11
  %84 = getelementptr inbounds nuw i8, ptr %3, i64 16
  tail call fastcc void @sglib___rbtree_add_recursive(ptr noundef nonnull %84, ptr noundef nonnull %1)
  %85 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %86 = load i8, ptr %85, align 4, !tbaa !95
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %88, label %151

88:                                               ; preds = %83
  %89 = load ptr, ptr %0, align 8, !tbaa !89
  %90 = getelementptr inbounds nuw i8, ptr %89, i64 16
  %91 = load ptr, ptr %90, align 8, !tbaa !94
  %92 = getelementptr inbounds nuw i8, ptr %89, i64 8
  %93 = load ptr, ptr %92, align 8, !tbaa !93
  %94 = icmp eq ptr %93, null
  br i1 %94, label %121, label %95

95:                                               ; preds = %88
  %96 = getelementptr inbounds nuw i8, ptr %93, i64 4
  %97 = load i8, ptr %96, align 4, !tbaa !95
  %98 = icmp eq i8 %97, 1
  br i1 %98, label %99, label %121

99:                                               ; preds = %95
  %100 = getelementptr inbounds nuw i8, ptr %91, i64 4
  %101 = load i8, ptr %100, align 4, !tbaa !95
  %102 = icmp eq i8 %101, 1
  br i1 %102, label %103, label %151

103:                                              ; preds = %99
  %104 = getelementptr inbounds nuw i8, ptr %91, i64 16
  %105 = load ptr, ptr %104, align 8, !tbaa !94
  %106 = icmp eq ptr %105, null
  br i1 %106, label %111, label %107

107:                                              ; preds = %103
  %108 = getelementptr inbounds nuw i8, ptr %105, i64 4
  %109 = load i8, ptr %108, align 4, !tbaa !95
  %110 = icmp eq i8 %109, 1
  br i1 %110, label %119, label %111

111:                                              ; preds = %107, %103
  %112 = getelementptr inbounds nuw i8, ptr %91, i64 8
  %113 = load ptr, ptr %112, align 8, !tbaa !93
  %114 = icmp eq ptr %113, null
  br i1 %114, label %151, label %115

115:                                              ; preds = %111
  %116 = getelementptr inbounds nuw i8, ptr %113, i64 4
  %117 = load i8, ptr %116, align 4, !tbaa !95
  %118 = icmp eq i8 %117, 1
  br i1 %118, label %119, label %151

119:                                              ; preds = %115, %107
  store i8 0, ptr %100, align 4, !tbaa !95
  store i8 0, ptr %96, align 4, !tbaa !95
  %120 = getelementptr inbounds nuw i8, ptr %89, i64 4
  store i8 1, ptr %120, align 4, !tbaa !95
  br label %151

121:                                              ; preds = %95, %88
  %122 = getelementptr inbounds nuw i8, ptr %91, i64 4
  %123 = load i8, ptr %122, align 4, !tbaa !95
  %124 = icmp eq i8 %123, 1
  br i1 %124, label %125, label %151

125:                                              ; preds = %121
  %126 = getelementptr inbounds nuw i8, ptr %91, i64 16
  %127 = load ptr, ptr %126, align 8, !tbaa !94
  %128 = icmp eq ptr %127, null
  br i1 %128, label %137, label %129

129:                                              ; preds = %125
  %130 = getelementptr inbounds nuw i8, ptr %127, i64 4
  %131 = load i8, ptr %130, align 4, !tbaa !95
  %132 = icmp eq i8 %131, 1
  br i1 %132, label %133, label %137

133:                                              ; preds = %129
  %134 = getelementptr inbounds nuw i8, ptr %91, i64 8
  %135 = load ptr, ptr %134, align 8, !tbaa !93
  store ptr %135, ptr %90, align 8, !tbaa !94
  store ptr %127, ptr %126, align 8, !tbaa !94
  store ptr %89, ptr %134, align 8, !tbaa !93
  %136 = getelementptr inbounds nuw i8, ptr %89, i64 4
  store i8 1, ptr %136, align 4, !tbaa !95
  store i8 0, ptr %122, align 4, !tbaa !95
  store ptr %91, ptr %0, align 8, !tbaa !89
  br label %151

137:                                              ; preds = %129, %125
  %138 = getelementptr inbounds nuw i8, ptr %91, i64 8
  %139 = load ptr, ptr %138, align 8, !tbaa !93
  %140 = icmp eq ptr %139, null
  br i1 %140, label %151, label %141

141:                                              ; preds = %137
  %142 = getelementptr inbounds nuw i8, ptr %139, i64 4
  %143 = load i8, ptr %142, align 4, !tbaa !95
  %144 = icmp eq i8 %143, 1
  br i1 %144, label %145, label %151

145:                                              ; preds = %141
  %146 = getelementptr inbounds nuw i8, ptr %139, i64 16
  %147 = load ptr, ptr %146, align 8, !tbaa !94
  %148 = getelementptr inbounds nuw i8, ptr %139, i64 8
  %149 = load ptr, ptr %148, align 8, !tbaa !93
  store ptr %147, ptr %138, align 8, !tbaa !93
  store ptr %149, ptr %90, align 8, !tbaa !94
  store ptr %91, ptr %146, align 8, !tbaa !94
  store ptr %89, ptr %148, align 8, !tbaa !93
  store i8 0, ptr %142, align 4, !tbaa !95
  %150 = getelementptr inbounds nuw i8, ptr %89, i64 4
  store i8 1, ptr %150, align 4, !tbaa !95
  store ptr %139, ptr %0, align 8, !tbaa !89
  br label %151

151:                                              ; preds = %145, %141, %137, %133, %121, %119, %115, %111, %99, %77, %73, %69, %65, %53, %51, %47, %43, %31, %15, %83, %5
  ret void
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @sglib_rbtree_delete(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #11 {
  %3 = tail call i32 @sglib___rbtree_delete_recursive(ptr noundef %0, ptr noundef %1)
  %4 = load ptr, ptr %0, align 8, !tbaa !89
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i8 0, ptr %7, align 4, !tbaa !95
  br label %8

8:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @sglib_rbtree_find_member(ptr noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %17, label %4

4:                                                ; preds = %2
  %5 = load i32, ptr %1, align 8, !tbaa !91
  br label %6

6:                                                ; preds = %4, %12
  %7 = phi ptr [ %0, %4 ], [ %15, %12 ]
  %8 = load i32, ptr %7, align 8, !tbaa !91
  %9 = icmp slt i32 %5, %8
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = icmp eq i32 %5, %8
  br i1 %11, label %17, label %12

12:                                               ; preds = %10, %6
  %13 = phi i64 [ 8, %6 ], [ 16, %10 ]
  %14 = getelementptr inbounds nuw i8, ptr %7, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !89
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %6, !llvm.loop !96

17:                                               ; preds = %12, %10, %2
  %18 = phi ptr [ null, %2 ], [ %7, %10 ], [ null, %12 ]
  ret ptr %18
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local range(i32 0, 2) i32 @sglib_rbtree_is_member(ptr noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #4 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %26, label %4

4:                                                ; preds = %2
  %5 = load i32, ptr %1, align 8, !tbaa !91
  br label %6

6:                                                ; preds = %4, %21
  %7 = phi ptr [ %0, %4 ], [ %24, %21 ]
  %8 = load i32, ptr %7, align 8, !tbaa !91
  %9 = icmp slt i32 %5, %8
  br i1 %9, label %21, label %10

10:                                               ; preds = %6
  %11 = icmp eq i32 %5, %8
  %12 = icmp ult ptr %1, %7
  %13 = and i1 %12, %11
  br i1 %13, label %21, label %14

14:                                               ; preds = %10
  %15 = icmp ne i32 %5, %8
  %16 = icmp ugt ptr %1, %7
  %17 = or i1 %16, %15
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = icmp eq ptr %7, %1
  br i1 %19, label %26, label %20

20:                                               ; preds = %18, %20
  br label %20

21:                                               ; preds = %14, %6, %10
  %22 = phi i64 [ 8, %10 ], [ 8, %6 ], [ 16, %14 ]
  %23 = getelementptr inbounds nuw i8, ptr %7, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !89
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %6, !llvm.loop !97

26:                                               ; preds = %21, %2, %18
  %27 = phi i32 [ 1, %18 ], [ 0, %2 ], [ 0, %21 ]
  ret i32 %27
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local range(i32 0, 2) i32 @sglib_rbtree_delete_if_member(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #11 {
  %4 = load ptr, ptr %0, align 8, !tbaa !89
  %5 = icmp eq ptr %4, null
  br i1 %5, label %19, label %6

6:                                                ; preds = %3
  %7 = load i32, ptr %1, align 8, !tbaa !91
  br label %8

8:                                                ; preds = %14, %6
  %9 = phi ptr [ %4, %6 ], [ %17, %14 ]
  %10 = load i32, ptr %9, align 8, !tbaa !91
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = icmp eq i32 %7, %10
  br i1 %13, label %20, label %14

14:                                               ; preds = %12, %8
  %15 = phi i64 [ 8, %8 ], [ 16, %12 ]
  %16 = getelementptr inbounds nuw i8, ptr %9, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !89
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %8, !llvm.loop !96

19:                                               ; preds = %14, %3
  store ptr null, ptr %2, align 8, !tbaa !89
  br label %26

20:                                               ; preds = %12
  store ptr %9, ptr %2, align 8, !tbaa !89
  %21 = tail call i32 @sglib___rbtree_delete_recursive(ptr noundef nonnull %0, ptr noundef nonnull %9)
  %22 = load ptr, ptr %0, align 8, !tbaa !89
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds nuw i8, ptr %22, i64 4
  store i8 0, ptr %25, align 4, !tbaa !95
  br label %26

26:                                               ; preds = %24, %20, %19
  %27 = phi i32 [ 0, %19 ], [ 1, %20 ], [ 1, %24 ]
  ret i32 %27
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local range(i32 0, 2) i32 @sglib_rbtree_add_if_not_member(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #11 {
  %4 = load ptr, ptr %0, align 8, !tbaa !89
  %5 = icmp eq ptr %4, null
  br i1 %5, label %20, label %6

6:                                                ; preds = %3
  %7 = load i32, ptr %1, align 8, !tbaa !91
  br label %8

8:                                                ; preds = %14, %6
  %9 = phi ptr [ %4, %6 ], [ %17, %14 ]
  %10 = load i32, ptr %9, align 8, !tbaa !91
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = icmp eq i32 %7, %10
  br i1 %13, label %19, label %14

14:                                               ; preds = %12, %8
  %15 = phi i64 [ 8, %8 ], [ 16, %12 ]
  %16 = getelementptr inbounds nuw i8, ptr %9, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !89
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %8, !llvm.loop !96

19:                                               ; preds = %12
  store ptr %9, ptr %2, align 8, !tbaa !89
  br label %24

20:                                               ; preds = %14, %3
  store ptr null, ptr %2, align 8, !tbaa !89
  %21 = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, i8 0, i64 16, i1 false)
  tail call fastcc void @sglib___rbtree_add_recursive(ptr noundef nonnull %0, ptr noundef %1)
  %22 = load ptr, ptr %0, align 8, !tbaa !89
  %23 = getelementptr inbounds nuw i8, ptr %22, i64 4
  store i8 0, ptr %23, align 4, !tbaa !95
  br label %24

24:                                               ; preds = %19, %20
  %25 = phi i32 [ 1, %20 ], [ 0, %19 ]
  ret i32 %25
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @sglib_rbtree_len(ptr noundef readonly %0) local_unnamed_addr #4 {
  %2 = alloca [128 x ptr], align 16
  %3 = alloca [128 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #20
  %4 = icmp eq ptr %0, null
  br i1 %4, label %52, label %5

5:                                                ; preds = %1, %48
  %6 = phi i32 [ %39, %48 ], [ 0, %1 ]
  %7 = phi i32 [ %49, %48 ], [ 0, %1 ]
  %8 = phi ptr [ %43, %48 ], [ %0, %1 ]
  %9 = sext i32 %7 to i64
  %10 = tail call i32 @llvm.smax.i32(i32 %7, i32 127)
  %11 = add nuw i32 %10, 1
  br label %12

12:                                               ; preds = %5, %19
  %13 = phi i32 [ %7, %5 ], [ %29, %19 ]
  %14 = phi i64 [ %9, %5 ], [ %26, %19 ]
  %15 = phi ptr [ %8, %5 ], [ %25, %19 ]
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = tail call i32 @llvm.smin.i32(i32 %13, i32 1)
  br label %31

19:                                               ; preds = %12
  %20 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %21 = load ptr, ptr %20, align 8, !tbaa !94
  %22 = getelementptr inbounds [128 x ptr], ptr %2, i64 0, i64 %14
  store ptr %21, ptr %22, align 8, !tbaa !89
  %23 = getelementptr inbounds [128 x i8], ptr %3, i64 0, i64 %14
  store i8 0, ptr %23, align 1, !tbaa !98
  %24 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %25 = load ptr, ptr %24, align 8, !tbaa !93
  %26 = add nsw i64 %14, 1
  %27 = trunc i64 %26 to i32
  %28 = icmp eq i32 %11, %27
  %29 = add i32 %13, 1
  br i1 %28, label %30, label %12, !llvm.loop !99

30:                                               ; preds = %19, %30
  br label %30

31:                                               ; preds = %17, %44
  %32 = phi i64 [ %14, %17 ], [ %34, %44 ]
  %33 = phi i32 [ %6, %17 ], [ %39, %44 ]
  %34 = add nsw i64 %32, -1
  %35 = getelementptr inbounds [128 x i8], ptr %3, i64 0, i64 %34
  %36 = load i8, ptr %35, align 1, !tbaa !98
  %37 = icmp eq i8 %36, 0
  %38 = zext i1 %37 to i32
  %39 = add nsw i32 %33, %38
  %40 = add i8 %36, 1
  store i8 %40, ptr %35, align 1, !tbaa !98
  %41 = icmp sgt i64 %32, 1
  %42 = getelementptr inbounds [128 x ptr], ptr %2, i64 0, i64 %34
  %43 = load ptr, ptr %42, align 8, !tbaa !89
  br i1 %41, label %44, label %48

44:                                               ; preds = %31
  %45 = icmp eq ptr %43, null
  br i1 %45, label %31, label %46, !llvm.loop !100

46:                                               ; preds = %44
  %47 = trunc nsw i64 %32 to i32
  br label %48

48:                                               ; preds = %31, %46
  %49 = phi i32 [ %47, %46 ], [ %18, %31 ]
  %50 = getelementptr inbounds [128 x ptr], ptr %2, i64 0, i64 %34
  store ptr null, ptr %50, align 8, !tbaa !89
  %51 = icmp eq ptr %43, null
  br i1 %51, label %52, label %5, !llvm.loop !101

52:                                               ; preds = %48, %1
  %53 = phi i32 [ 0, %1 ], [ %39, %48 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %2) #20
  ret i32 %53
}

; Function Attrs: nounwind uwtable
define dso_local void @sglib__rbtree_it_compute_current_elem(ptr nocapture noundef initializes((0, 8)) %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 1168
  %3 = load ptr, ptr %2, align 8, !tbaa !102
  %4 = freeze ptr %3
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 1176
  %6 = load ptr, ptr %5, align 8, !tbaa !105
  %7 = freeze ptr %6
  store ptr null, ptr %0, align 8, !tbaa !106
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %9 = load i16, ptr %8, align 8, !tbaa !107
  %10 = sext i16 %9 to i32
  %11 = icmp sgt i16 %9, 0
  br i1 %11, label %12, label %189

12:                                               ; preds = %1
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 136
  %15 = icmp eq ptr %4, null
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 1162
  br i1 %15, label %17, label %65

17:                                               ; preds = %12, %62
  %18 = phi i16 [ %47, %62 ], [ %9, %12 ]
  %19 = phi i32 [ %64, %62 ], [ %10, %12 ]
  %20 = add nsw i32 %19, -1
  %21 = zext nneg i32 %20 to i64
  %22 = getelementptr inbounds nuw [128 x i8], ptr %13, i64 0, i64 %21
  %23 = load i8, ptr %22, align 1, !tbaa !98
  %24 = icmp sgt i8 %23, 1
  br i1 %24, label %44, label %25

25:                                               ; preds = %17
  %26 = icmp eq i8 %23, 0
  %27 = getelementptr inbounds nuw [128 x ptr], ptr %14, i64 0, i64 %21
  %28 = load ptr, ptr %27, align 8, !tbaa !89
  %29 = select i1 %26, i64 8, i64 16
  %30 = getelementptr inbounds nuw i8, ptr %28, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !89
  %32 = icmp eq ptr %31, null
  br i1 %32, label %40, label %33

33:                                               ; preds = %25
  %34 = zext nneg i32 %19 to i64
  %35 = getelementptr inbounds nuw [128 x ptr], ptr %14, i64 0, i64 %34
  store ptr %31, ptr %35, align 8, !tbaa !89
  %36 = getelementptr inbounds nuw [128 x i8], ptr %13, i64 0, i64 %34
  store i8 0, ptr %36, align 1, !tbaa !98
  %37 = load i16, ptr %8, align 8, !tbaa !107
  %38 = add i16 %37, 1
  store i16 %38, ptr %8, align 8, !tbaa !107
  %39 = load i8, ptr %22, align 1, !tbaa !98
  br label %40

40:                                               ; preds = %33, %25
  %41 = phi i8 [ %39, %33 ], [ %23, %25 ]
  %42 = add i8 %41, 1
  store i8 %42, ptr %22, align 1, !tbaa !98
  %43 = load i16, ptr %8, align 8, !tbaa !107
  br label %46

44:                                               ; preds = %17
  %45 = add nsw i16 %18, -1
  store i16 %45, ptr %8, align 8, !tbaa !107
  br label %46

46:                                               ; preds = %44, %40
  %47 = phi i16 [ %45, %44 ], [ %43, %40 ]
  %48 = icmp sgt i16 %47, 0
  br i1 %48, label %49, label %189

49:                                               ; preds = %46
  %50 = zext nneg i16 %47 to i64
  %51 = load i16, ptr %16, align 2, !tbaa !108
  %52 = add nuw nsw i64 %50, 4294967295
  %53 = and i64 %52, 4294967295
  %54 = getelementptr inbounds nuw [128 x i8], ptr %13, i64 0, i64 %53
  %55 = load i8, ptr %54, align 1, !tbaa !98
  %56 = sext i8 %55 to i16
  %57 = icmp eq i16 %51, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %49
  %59 = getelementptr inbounds nuw [128 x ptr], ptr %14, i64 0, i64 %53
  %60 = load ptr, ptr %59, align 8, !tbaa !89
  store ptr %60, ptr %0, align 8, !tbaa !106
  %61 = icmp eq ptr %60, null
  br label %62

62:                                               ; preds = %58, %49
  %63 = phi i1 [ %61, %58 ], [ true, %49 ]
  %64 = zext nneg i16 %47 to i32
  br i1 %63, label %17, label %189, !llvm.loop !109

65:                                               ; preds = %12
  %66 = icmp eq ptr %7, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %65
  %68 = load ptr, ptr %0, align 8, !tbaa !106
  %69 = icmp eq ptr %68, null
  br i1 %69, label %131, label %189

70:                                               ; preds = %65, %119
  %71 = phi i16 [ %104, %119 ], [ %9, %65 ]
  %72 = phi i32 [ %121, %119 ], [ %10, %65 ]
  %73 = add nsw i32 %72, -1
  %74 = zext nneg i32 %73 to i64
  %75 = getelementptr inbounds nuw [128 x i8], ptr %13, i64 0, i64 %74
  %76 = load i8, ptr %75, align 1, !tbaa !98
  %77 = icmp sgt i8 %76, 1
  br i1 %77, label %101, label %78

78:                                               ; preds = %70
  %79 = icmp eq i8 %76, 0
  %80 = getelementptr inbounds nuw [128 x ptr], ptr %14, i64 0, i64 %74
  %81 = load ptr, ptr %80, align 8, !tbaa !89
  %82 = select i1 %79, i64 8, i64 16
  %83 = getelementptr inbounds nuw i8, ptr %81, i64 %82
  %84 = load ptr, ptr %83, align 8, !tbaa !89
  %85 = icmp eq ptr %84, null
  br i1 %85, label %97, label %129

86:                                               ; preds = %129, %92
  %87 = phi ptr [ %84, %129 ], [ %95, %92 ]
  %88 = load i32, ptr %87, align 8, !tbaa !91
  %89 = icmp slt i32 %130, %88
  br i1 %89, label %92, label %90

90:                                               ; preds = %86
  %91 = icmp eq i32 %130, %88
  br i1 %91, label %122, label %92

92:                                               ; preds = %86, %90
  %93 = phi i64 [ 16, %90 ], [ 8, %86 ]
  %94 = getelementptr inbounds nuw i8, ptr %87, i64 %93
  %95 = load ptr, ptr %94, align 8, !tbaa !89
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %86, !llvm.loop !110

97:                                               ; preds = %92, %78, %122
  %98 = phi i8 [ %76, %78 ], [ %128, %122 ], [ %76, %92 ]
  %99 = add i8 %98, 1
  store i8 %99, ptr %75, align 1, !tbaa !98
  %100 = load i16, ptr %8, align 8, !tbaa !107
  br label %103

101:                                              ; preds = %70
  %102 = add nsw i16 %71, -1
  store i16 %102, ptr %8, align 8, !tbaa !107
  br label %103

103:                                              ; preds = %101, %97
  %104 = phi i16 [ %102, %101 ], [ %100, %97 ]
  %105 = icmp sgt i16 %104, 0
  br i1 %105, label %106, label %189

106:                                              ; preds = %103
  %107 = zext nneg i16 %104 to i64
  %108 = load i16, ptr %16, align 2, !tbaa !108
  %109 = add nuw nsw i64 %107, 4294967295
  %110 = and i64 %109, 4294967295
  %111 = getelementptr inbounds nuw [128 x i8], ptr %13, i64 0, i64 %110
  %112 = load i8, ptr %111, align 1, !tbaa !98
  %113 = sext i8 %112 to i16
  %114 = icmp eq i16 %108, %113
  br i1 %114, label %115, label %119

115:                                              ; preds = %106
  %116 = getelementptr inbounds nuw [128 x ptr], ptr %14, i64 0, i64 %110
  %117 = load ptr, ptr %116, align 8, !tbaa !89
  store ptr %117, ptr %0, align 8, !tbaa !106
  %118 = icmp eq ptr %117, null
  br label %119

119:                                              ; preds = %115, %106
  %120 = phi i1 [ %118, %115 ], [ true, %106 ]
  %121 = zext nneg i16 %104 to i32
  br i1 %120, label %70, label %189, !llvm.loop !109

122:                                              ; preds = %90
  %123 = zext nneg i32 %72 to i64
  %124 = getelementptr inbounds nuw [128 x ptr], ptr %14, i64 0, i64 %123
  store ptr %87, ptr %124, align 8, !tbaa !89
  %125 = getelementptr inbounds nuw [128 x i8], ptr %13, i64 0, i64 %123
  store i8 0, ptr %125, align 1, !tbaa !98
  %126 = load i16, ptr %8, align 8, !tbaa !107
  %127 = add i16 %126, 1
  store i16 %127, ptr %8, align 8, !tbaa !107
  %128 = load i8, ptr %75, align 1, !tbaa !98
  br label %97

129:                                              ; preds = %78
  %130 = load i32, ptr %4, align 8, !tbaa !91
  br label %86

131:                                              ; preds = %67, %185
  %132 = phi i16 [ %171, %185 ], [ %9, %67 ]
  %133 = phi i32 [ %186, %185 ], [ %10, %67 ]
  %134 = add nsw i32 %133, -1
  %135 = zext nneg i32 %134 to i64
  %136 = getelementptr inbounds nuw [128 x i8], ptr %13, i64 0, i64 %135
  %137 = load i8, ptr %136, align 1, !tbaa !98
  %138 = icmp sgt i8 %137, 1
  br i1 %138, label %139, label %141

139:                                              ; preds = %131
  %140 = add nsw i16 %132, -1
  store i16 %140, ptr %8, align 8, !tbaa !107
  br label %170

141:                                              ; preds = %131
  %142 = icmp eq i8 %137, 0
  %143 = getelementptr inbounds nuw [128 x ptr], ptr %14, i64 0, i64 %135
  %144 = load ptr, ptr %143, align 8, !tbaa !89
  %145 = select i1 %142, i64 8, i64 16
  %146 = getelementptr inbounds nuw i8, ptr %144, i64 %145
  %147 = load ptr, ptr %146, align 8, !tbaa !89
  %148 = icmp eq ptr %147, null
  br i1 %148, label %166, label %149

149:                                              ; preds = %141, %155
  %150 = phi ptr [ %158, %155 ], [ %147, %141 ]
  %151 = tail call i32 %7(ptr noundef nonnull %4, ptr noundef nonnull %150) #20
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %155, label %153

153:                                              ; preds = %149
  %154 = icmp eq i32 %151, 0
  br i1 %154, label %160, label %155

155:                                              ; preds = %153, %149
  %156 = phi i64 [ 8, %149 ], [ 16, %153 ]
  %157 = getelementptr inbounds nuw i8, ptr %150, i64 %156
  %158 = load ptr, ptr %157, align 8, !tbaa !89
  %159 = icmp eq ptr %158, null
  br i1 %159, label %166, label %149, !llvm.loop !111

160:                                              ; preds = %153
  %161 = zext nneg i32 %133 to i64
  %162 = getelementptr inbounds nuw [128 x ptr], ptr %14, i64 0, i64 %161
  store ptr %150, ptr %162, align 8, !tbaa !89
  %163 = getelementptr inbounds nuw [128 x i8], ptr %13, i64 0, i64 %161
  store i8 0, ptr %163, align 1, !tbaa !98
  %164 = load i16, ptr %8, align 8, !tbaa !107
  %165 = add i16 %164, 1
  store i16 %165, ptr %8, align 8, !tbaa !107
  br label %166

166:                                              ; preds = %155, %141, %160
  %167 = load i8, ptr %136, align 1, !tbaa !98
  %168 = add i8 %167, 1
  store i8 %168, ptr %136, align 1, !tbaa !98
  %169 = load i16, ptr %8, align 8, !tbaa !107
  br label %170

170:                                              ; preds = %139, %166
  %171 = phi i16 [ %140, %139 ], [ %169, %166 ]
  %172 = icmp sgt i16 %171, 0
  br i1 %172, label %173, label %189

173:                                              ; preds = %170
  %174 = zext nneg i16 %171 to i64
  %175 = load i16, ptr %16, align 2, !tbaa !108
  %176 = add nuw nsw i64 %174, 4294967295
  %177 = and i64 %176, 4294967295
  %178 = getelementptr inbounds nuw [128 x i8], ptr %13, i64 0, i64 %177
  %179 = load i8, ptr %178, align 1, !tbaa !98
  %180 = sext i8 %179 to i16
  %181 = icmp eq i16 %175, %180
  br i1 %181, label %182, label %185

182:                                              ; preds = %173
  %183 = getelementptr inbounds nuw [128 x ptr], ptr %14, i64 0, i64 %177
  %184 = load ptr, ptr %183, align 8, !tbaa !89
  store ptr %184, ptr %0, align 8, !tbaa !106
  br label %185

185:                                              ; preds = %182, %173
  %186 = zext nneg i16 %171 to i32
  %187 = load ptr, ptr %0, align 8, !tbaa !106
  %188 = icmp eq ptr %187, null
  br i1 %188, label %131, label %189, !llvm.loop !109

189:                                              ; preds = %185, %170, %103, %119, %46, %62, %67, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @sglib__rbtree_it_init(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #5 {
  %6 = icmp eq ptr %0, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %5, %7
  br label %7

8:                                                ; preds = %5
  %9 = trunc i32 %2 to i16
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 1162
  store i16 %9, ptr %10, align 2, !tbaa !108
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 1168
  store ptr %4, ptr %11, align 8, !tbaa !102
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 1176
  store ptr %3, ptr %12, align 8, !tbaa !105
  %13 = icmp eq ptr %4, null
  br i1 %13, label %43, label %14

14:                                               ; preds = %8
  %15 = icmp eq ptr %3, null
  %16 = icmp eq ptr %1, null
  br i1 %15, label %18, label %17

17:                                               ; preds = %14
  br i1 %16, label %45, label %32

18:                                               ; preds = %14
  br i1 %16, label %45, label %19

19:                                               ; preds = %18
  %20 = load i32, ptr %4, align 8, !tbaa !91
  br label %21

21:                                               ; preds = %19, %27
  %22 = phi ptr [ %1, %19 ], [ %30, %27 ]
  %23 = load i32, ptr %22, align 8, !tbaa !91
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = icmp eq i32 %20, %23
  br i1 %26, label %47, label %27

27:                                               ; preds = %25, %21
  %28 = phi i64 [ 8, %21 ], [ 16, %25 ]
  %29 = getelementptr inbounds nuw i8, ptr %22, i64 %28
  %30 = load ptr, ptr %29, align 8, !tbaa !89
  %31 = icmp eq ptr %30, null
  br i1 %31, label %45, label %21, !llvm.loop !112

32:                                               ; preds = %17, %38
  %33 = phi ptr [ %41, %38 ], [ %1, %17 ]
  %34 = tail call i32 %3(ptr noundef nonnull %4, ptr noundef nonnull %33) #20
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  %37 = icmp eq i32 %34, 0
  br i1 %37, label %47, label %38

38:                                               ; preds = %36, %32
  %39 = phi i64 [ 8, %32 ], [ 16, %36 ]
  %40 = getelementptr inbounds nuw i8, ptr %33, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !89
  %42 = icmp eq ptr %41, null
  br i1 %42, label %45, label %32, !llvm.loop !113

43:                                               ; preds = %8
  %44 = icmp eq ptr %1, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %38, %27, %17, %18, %43
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 1160
  store i16 0, ptr %46, align 8, !tbaa !107
  store ptr null, ptr %0, align 8, !tbaa !106
  br label %56

47:                                               ; preds = %36, %25, %43
  %48 = phi ptr [ %1, %43 ], [ %22, %25 ], [ %33, %36 ]
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 1160
  store i16 1, ptr %49, align 8, !tbaa !107
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %50, align 8, !tbaa !98
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %48, ptr %51, align 8, !tbaa !89
  %52 = icmp eq i32 %2, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  store ptr %48, ptr %0, align 8, !tbaa !106
  br label %56

54:                                               ; preds = %47
  tail call void @sglib__rbtree_it_compute_current_elem(ptr noundef nonnull %0)
  %55 = load ptr, ptr %0, align 8, !tbaa !106
  br label %56

56:                                               ; preds = %53, %54, %45
  %57 = phi ptr [ %48, %53 ], [ %55, %54 ], [ null, %45 ]
  ret ptr %57
}

; Function Attrs: nounwind uwtable
define dso_local ptr @sglib_rbtree_it_init(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %2, %4
  br label %4

5:                                                ; preds = %2
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 1162
  store i16 2, ptr %6, align 2, !tbaa !108
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 1168
  %8 = icmp eq ptr %1, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 1160
  br i1 %8, label %10, label %11

10:                                               ; preds = %5
  store i16 0, ptr %9, align 8, !tbaa !107
  store ptr null, ptr %0, align 8, !tbaa !106
  br label %15

11:                                               ; preds = %5
  store i16 1, ptr %9, align 8, !tbaa !107
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %12, align 8, !tbaa !98
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %1, ptr %13, align 8, !tbaa !89
  tail call void @sglib__rbtree_it_compute_current_elem(ptr noundef nonnull %0)
  %14 = load ptr, ptr %0, align 8, !tbaa !106
  br label %15

15:                                               ; preds = %10, %11
  %16 = phi ptr [ %14, %11 ], [ null, %10 ]
  ret ptr %16
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define dso_local noundef ptr @sglib_rbtree_it_init_preorder(ptr noundef writeonly %0, ptr noundef returned %1) local_unnamed_addr #12 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %2, %4
  br label %4

5:                                                ; preds = %2
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 1162
  store i16 0, ptr %6, align 2, !tbaa !108
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 1168
  %8 = icmp eq ptr %1, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %10, align 8, !tbaa !98
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %1, ptr %11, align 8, !tbaa !89
  br label %12

12:                                               ; preds = %5, %9
  %13 = phi i16 [ 1, %9 ], [ 0, %5 ]
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 1160
  store i16 %13, ptr %14, align 8, !tbaa !107
  store ptr %1, ptr %0, align 8, !tbaa !106
  ret ptr %1
}

; Function Attrs: nounwind uwtable
define dso_local ptr @sglib_rbtree_it_init_inorder(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %2, %4
  br label %4

5:                                                ; preds = %2
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 1162
  store i16 1, ptr %6, align 2, !tbaa !108
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 1168
  %8 = icmp eq ptr %1, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 1160
  br i1 %8, label %10, label %11

10:                                               ; preds = %5
  store i16 0, ptr %9, align 8, !tbaa !107
  store ptr null, ptr %0, align 8, !tbaa !106
  br label %15

11:                                               ; preds = %5
  store i16 1, ptr %9, align 8, !tbaa !107
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %12, align 8, !tbaa !98
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %1, ptr %13, align 8, !tbaa !89
  tail call void @sglib__rbtree_it_compute_current_elem(ptr noundef nonnull %0)
  %14 = load ptr, ptr %0, align 8, !tbaa !106
  br label %15

15:                                               ; preds = %10, %11
  %16 = phi ptr [ %14, %11 ], [ null, %10 ]
  ret ptr %16
}

; Function Attrs: nounwind uwtable
define dso_local ptr @sglib_rbtree_it_init_postorder(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %2, %4
  br label %4

5:                                                ; preds = %2
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 1162
  store i16 2, ptr %6, align 2, !tbaa !108
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 1168
  %8 = icmp eq ptr %1, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 1160
  br i1 %8, label %10, label %11

10:                                               ; preds = %5
  store i16 0, ptr %9, align 8, !tbaa !107
  store ptr null, ptr %0, align 8, !tbaa !106
  br label %15

11:                                               ; preds = %5
  store i16 1, ptr %9, align 8, !tbaa !107
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %12, align 8, !tbaa !98
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %1, ptr %13, align 8, !tbaa !89
  tail call void @sglib__rbtree_it_compute_current_elem(ptr noundef nonnull %0)
  %14 = load ptr, ptr %0, align 8, !tbaa !106
  br label %15

15:                                               ; preds = %10, %11
  %16 = phi ptr [ %14, %11 ], [ null, %10 ]
  ret ptr %16
}

; Function Attrs: nounwind uwtable
define dso_local ptr @sglib_rbtree_it_init_on_equal(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #5 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %4, %6
  br label %6

7:                                                ; preds = %4
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 1162
  store i16 1, ptr %8, align 2, !tbaa !108
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 1168
  store ptr %3, ptr %9, align 8, !tbaa !102
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 1176
  store ptr %2, ptr %10, align 8, !tbaa !105
  %11 = icmp eq ptr %3, null
  br i1 %11, label %41, label %12

12:                                               ; preds = %7
  %13 = icmp eq ptr %2, null
  %14 = icmp eq ptr %1, null
  br i1 %13, label %16, label %15

15:                                               ; preds = %12
  br i1 %14, label %43, label %30

16:                                               ; preds = %12
  br i1 %14, label %43, label %17

17:                                               ; preds = %16
  %18 = load i32, ptr %3, align 8, !tbaa !91
  br label %19

19:                                               ; preds = %25, %17
  %20 = phi ptr [ %1, %17 ], [ %28, %25 ]
  %21 = load i32, ptr %20, align 8, !tbaa !91
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = icmp eq i32 %18, %21
  br i1 %24, label %45, label %25

25:                                               ; preds = %23, %19
  %26 = phi i64 [ 8, %19 ], [ 16, %23 ]
  %27 = getelementptr inbounds nuw i8, ptr %20, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !89
  %29 = icmp eq ptr %28, null
  br i1 %29, label %43, label %19, !llvm.loop !112

30:                                               ; preds = %15, %36
  %31 = phi ptr [ %39, %36 ], [ %1, %15 ]
  %32 = tail call i32 %2(ptr noundef nonnull %3, ptr noundef nonnull %31) #20
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  %35 = icmp eq i32 %32, 0
  br i1 %35, label %45, label %36

36:                                               ; preds = %34, %30
  %37 = phi i64 [ 8, %30 ], [ 16, %34 ]
  %38 = getelementptr inbounds nuw i8, ptr %31, i64 %37
  %39 = load ptr, ptr %38, align 8, !tbaa !89
  %40 = icmp eq ptr %39, null
  br i1 %40, label %43, label %30, !llvm.loop !113

41:                                               ; preds = %7
  %42 = icmp eq ptr %1, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %36, %25, %41, %16, %15
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 1160
  store i16 0, ptr %44, align 8, !tbaa !107
  store ptr null, ptr %0, align 8, !tbaa !106
  br label %51

45:                                               ; preds = %34, %23, %41
  %46 = phi ptr [ %1, %41 ], [ %20, %23 ], [ %31, %34 ]
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 1160
  store i16 1, ptr %47, align 8, !tbaa !107
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %48, align 8, !tbaa !98
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %46, ptr %49, align 8, !tbaa !89
  tail call void @sglib__rbtree_it_compute_current_elem(ptr noundef nonnull %0)
  %50 = load ptr, ptr %0, align 8, !tbaa !106
  br label %51

51:                                               ; preds = %43, %45
  %52 = phi ptr [ %50, %45 ], [ null, %43 ]
  ret ptr %52
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @sglib_rbtree_it_current(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = load ptr, ptr %0, align 8, !tbaa !106
  ret ptr %2
}

; Function Attrs: nounwind uwtable
define dso_local ptr @sglib_rbtree_it_next(ptr nocapture noundef initializes((0, 8)) %0) local_unnamed_addr #5 {
  tail call void @sglib__rbtree_it_compute_current_elem(ptr noundef %0)
  %2 = load ptr, ptr %0, align 8, !tbaa !106
  ret ptr %2
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @sglib___rbtree_consistency_check(ptr noundef %0) local_unnamed_addr #11 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #20
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %6 = load i8, ptr %5, align 4, !tbaa !95
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  store i32 -1, ptr %2, align 4, !tbaa !88
  call fastcc void @sglib___rbtree_consistency_check_recursive(ptr noundef nonnull %0, ptr noundef %2, i32 noundef 0)
  br label %10

9:                                                ; preds = %4, %9
  br label %9

10:                                               ; preds = %1, %8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #20
  ret void
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @sglib___rbtree_consistency_check_recursive(ptr noundef readonly %0, ptr noundef nonnull %1, i32 noundef %2) unnamed_addr #11 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %3, %54
  %6 = phi i32 [ %55, %54 ], [ %2, %3 ]
  %7 = phi ptr [ %56, %54 ], [ %0, %3 ]
  br label %16

8:                                                ; preds = %54, %51, %3
  %9 = phi i32 [ %2, %3 ], [ %6, %51 ], [ %55, %54 ]
  %10 = load i32, ptr %1, align 4, !tbaa !88
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  store i32 %9, ptr %1, align 4, !tbaa !88
  br label %58

13:                                               ; preds = %8
  %14 = icmp eq i32 %10, %9
  br i1 %14, label %58, label %15

15:                                               ; preds = %13, %15
  br label %15

16:                                               ; preds = %5, %51
  %17 = phi ptr [ %7, %5 ], [ %52, %51 ]
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 8
  %19 = load ptr, ptr %18, align 8, !tbaa !93
  %20 = icmp eq ptr %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = load i32, ptr %19, align 8, !tbaa !91
  %23 = load i32, ptr %17, align 8, !tbaa !91
  %24 = icmp sgt i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %21, %25
  br label %25

26:                                               ; preds = %21, %16
  %27 = getelementptr inbounds nuw i8, ptr %17, i64 16
  %28 = load ptr, ptr %27, align 8, !tbaa !94
  %29 = icmp eq ptr %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %26
  %31 = load i32, ptr %17, align 8, !tbaa !91
  %32 = load i32, ptr %28, align 8, !tbaa !91
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %30, %34
  br label %34

35:                                               ; preds = %30, %26
  %36 = getelementptr inbounds nuw i8, ptr %17, i64 4
  %37 = load i8, ptr %36, align 4, !tbaa !95
  %38 = icmp eq i8 %37, 1
  br i1 %38, label %39, label %54

39:                                               ; preds = %35
  br i1 %20, label %45, label %40

40:                                               ; preds = %39
  %41 = getelementptr inbounds nuw i8, ptr %19, i64 4
  %42 = load i8, ptr %41, align 4, !tbaa !95
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %40, %44
  br label %44

45:                                               ; preds = %40, %39
  br i1 %29, label %51, label %46

46:                                               ; preds = %45
  %47 = getelementptr inbounds nuw i8, ptr %28, i64 4
  %48 = load i8, ptr %47, align 4, !tbaa !95
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %46, %50
  br label %50

51:                                               ; preds = %46, %45
  tail call fastcc void @sglib___rbtree_consistency_check_recursive(ptr noundef %19, ptr noundef %1, i32 noundef %6)
  %52 = load ptr, ptr %27, align 8, !tbaa !94
  %53 = icmp eq ptr %52, null
  br i1 %53, label %8, label %16

54:                                               ; preds = %35
  %55 = add nsw i32 %6, 1
  tail call fastcc void @sglib___rbtree_consistency_check_recursive(ptr noundef %19, ptr noundef %1, i32 noundef %55)
  %56 = load ptr, ptr %27, align 8, !tbaa !94
  %57 = icmp eq ptr %56, null
  br i1 %57, label %8, label %5

58:                                               ; preds = %12, %13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @verify_benchmark(i32 noundef %0) local_unnamed_addr #5 {
  %2 = load ptr, ptr @the_list, align 8, !tbaa !5
  %3 = icmp eq ptr %2, null
  br i1 %3, label %19, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %7, %4 ], [ %2, %1 ]
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %7 = load ptr, ptr %6, align 8, !tbaa !10
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %4, !llvm.loop !29

9:                                                ; preds = %4, %14
  %10 = phi ptr [ %17, %14 ], [ %5, %4 ]
  %11 = phi i32 [ %15, %14 ], [ 0, %4 ]
  %12 = load i32, ptr %10, align 8, !tbaa !14
  %13 = icmp eq i32 %12, %11
  br i1 %13, label %14, label %49

14:                                               ; preds = %9
  %15 = add nuw nsw i32 %11, 1
  %16 = getelementptr inbounds nuw i8, ptr %10, i64 8
  %17 = load ptr, ptr %16, align 8, !tbaa !13
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %9, !llvm.loop !114

19:                                               ; preds = %14, %1
  br label %23

20:                                               ; preds = %32
  %21 = add nuw nsw i64 %24, 1
  %22 = icmp eq i64 %21, 100
  br i1 %22, label %40, label %23, !llvm.loop !115

23:                                               ; preds = %19, %20
  %24 = phi i64 [ %21, %20 ], [ 0, %19 ]
  %25 = getelementptr inbounds nuw [100 x i32], ptr @array, i64 0, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !88
  %27 = urem i32 %26, 20
  %28 = zext nneg i32 %27 to i64
  %29 = getelementptr inbounds nuw ptr, ptr @htab, i64 %28
  %30 = load ptr, ptr %29, align 8, !tbaa !57
  %31 = icmp eq ptr %30, null
  br i1 %31, label %49, label %32

32:                                               ; preds = %23, %36
  %33 = phi ptr [ %38, %36 ], [ %30, %23 ]
  %34 = load i32, ptr %33, align 8, !tbaa !51
  %35 = icmp eq i32 %34, %26
  br i1 %35, label %20, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds nuw i8, ptr %33, i64 8
  %38 = load ptr, ptr %37, align 8, !tbaa !54
  %39 = icmp eq ptr %38, null
  br i1 %39, label %49, label %32, !llvm.loop !56

40:                                               ; preds = %20
  %41 = icmp eq i32 %0, 15050
  br i1 %41, label %42, label %49

42:                                               ; preds = %40
  %43 = tail call i32 @check_heap_beebs(ptr noundef nonnull @heap) #20
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %42
  %46 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(400) @array2, ptr noundef nonnull dereferenceable(400) @verify_benchmark.array_exp, i64 400)
  %47 = icmp eq i32 %46, 0
  %48 = zext i1 %47 to i32
  br label %49

49:                                               ; preds = %9, %23, %36, %40, %42, %45
  %50 = phi i32 [ 0, %42 ], [ 0, %40 ], [ %48, %45 ], [ 0, %36 ], [ 0, %23 ], [ 0, %9 ]
  ret i32 %50
}

declare i32 @check_heap_beebs(ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @initialise_benchmark() local_unnamed_addr #14 {
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @warm_caches(i32 noundef %0) local_unnamed_addr #5 {
  %2 = tail call fastcc i32 @benchmark_body(i32 noundef 1, i32 noundef %0)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @benchmark_body(i32 noundef range(i32 1, 32) %0, i32 noundef %1) unnamed_addr #15 {
  %3 = alloca i32, align 4
  %4 = alloca [101 x i32], align 16
  %5 = alloca ptr, align 8
  %6 = alloca %struct.sglib_rbtree_iterator, align 8
  %7 = alloca [64 x i32], align 16
  %8 = alloca [64 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3)
  %9 = icmp eq i32 %1, 0
  %10 = getelementptr inbounds nuw i8, ptr %6, i64 1162
  %11 = getelementptr inbounds nuw i8, ptr %6, i64 1168
  %12 = getelementptr inbounds nuw i8, ptr %6, i64 1160
  %13 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %14 = getelementptr inbounds nuw i8, ptr %6, i64 136
  br i1 %9, label %445, label %15

15:                                               ; preds = %2, %442
  %16 = phi i32 [ %443, %442 ], [ 0, %2 ]
  br label %17

17:                                               ; preds = %15, %200
  %18 = phi i32 [ 0, %15 ], [ %201, %200 ]
  call void @llvm.lifetime.start.p0(i64 404, ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(i64 1184, ptr nonnull %6) #20
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(400) @array2, ptr noundef nonnull align 16 dereferenceable(400) @array, i64 400, i1 false)
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %8) #20
  store i32 0, ptr %7, align 16, !tbaa !88
  store i32 100, ptr %8, align 16, !tbaa !88
  br label %311

19:                                               ; preds = %337
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %7) #20
  tail call void @init_heap_beebs(ptr noundef nonnull @heap, i64 noundef 8192) #20
  store ptr null, ptr @the_list, align 8, !tbaa !5
  br label %288

20:                                               ; preds = %308
  tail call void @sglib_dllist_sort(ptr noundef nonnull @the_list)
  store volatile i32 0, ptr %3, align 4, !tbaa !88
  %21 = load ptr, ptr @the_list, align 8, !tbaa !5
  %22 = icmp eq ptr %21, null
  br i1 %22, label %35, label %23

23:                                               ; preds = %20, %23
  %24 = phi ptr [ %26, %23 ], [ %21, %20 ]
  %25 = getelementptr inbounds nuw i8, ptr %24, i64 16
  %26 = load ptr, ptr %25, align 8, !tbaa !10
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %23, !llvm.loop !29

28:                                               ; preds = %23, %28
  %29 = phi ptr [ %33, %28 ], [ %24, %23 ]
  %30 = load volatile i32, ptr %3, align 4, !tbaa !88
  %31 = add nsw i32 %30, 1
  store volatile i32 %31, ptr %3, align 4, !tbaa !88
  %32 = getelementptr inbounds nuw i8, ptr %29, i64 8
  %33 = load ptr, ptr %32, align 8, !tbaa !13
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %28, !llvm.loop !116

35:                                               ; preds = %28, %20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) @htab, i8 0, i64 160, i1 false), !tbaa !57
  br label %264

36:                                               ; preds = %285
  %37 = load ptr, ptr @htab, align 16, !tbaa !57
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %96

39:                                               ; preds = %36
  %40 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @htab, i64 8), align 8, !tbaa !57
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %96

42:                                               ; preds = %39
  %43 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @htab, i64 16), align 16, !tbaa !57
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %96

45:                                               ; preds = %42
  %46 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @htab, i64 24), align 8, !tbaa !57
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %96

48:                                               ; preds = %45
  %49 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @htab, i64 32), align 16, !tbaa !57
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %96

51:                                               ; preds = %48
  %52 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @htab, i64 40), align 8, !tbaa !57
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %96

54:                                               ; preds = %51
  %55 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @htab, i64 48), align 16, !tbaa !57
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %96

57:                                               ; preds = %54
  %58 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @htab, i64 56), align 8, !tbaa !57
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %96

60:                                               ; preds = %57
  %61 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @htab, i64 64), align 16, !tbaa !57
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %96

63:                                               ; preds = %60
  %64 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @htab, i64 72), align 8, !tbaa !57
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %96

66:                                               ; preds = %63
  %67 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @htab, i64 80), align 16, !tbaa !57
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %96

69:                                               ; preds = %66
  %70 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @htab, i64 88), align 8, !tbaa !57
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %96

72:                                               ; preds = %69
  %73 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @htab, i64 96), align 16, !tbaa !57
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %96

75:                                               ; preds = %72
  %76 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @htab, i64 104), align 8, !tbaa !57
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %96

78:                                               ; preds = %75
  %79 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @htab, i64 112), align 16, !tbaa !57
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %96

81:                                               ; preds = %78
  %82 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @htab, i64 120), align 8, !tbaa !57
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %96

84:                                               ; preds = %81
  %85 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @htab, i64 128), align 16, !tbaa !57
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %96

87:                                               ; preds = %84
  %88 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @htab, i64 136), align 8, !tbaa !57
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %96

90:                                               ; preds = %87
  %91 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @htab, i64 144), align 16, !tbaa !57
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @htab, i64 152), align 8, !tbaa !57
  %95 = icmp eq ptr %94, null
  br i1 %95, label %252, label %96

96:                                               ; preds = %39, %42, %45, %48, %51, %54, %57, %60, %63, %66, %69, %72, %75, %78, %81, %84, %87, %90, %93, %36
  %97 = phi ptr [ %94, %93 ], [ %91, %90 ], [ %88, %87 ], [ %85, %84 ], [ %82, %81 ], [ %79, %78 ], [ %76, %75 ], [ %73, %72 ], [ %70, %69 ], [ %67, %66 ], [ %64, %63 ], [ %61, %60 ], [ %58, %57 ], [ %55, %54 ], [ %52, %51 ], [ %49, %48 ], [ %46, %45 ], [ %43, %42 ], [ %40, %39 ], [ %37, %36 ]
  %98 = phi i32 [ 19, %93 ], [ 18, %90 ], [ 17, %87 ], [ 16, %84 ], [ 15, %81 ], [ 14, %78 ], [ 13, %75 ], [ 12, %72 ], [ 11, %69 ], [ 10, %66 ], [ 9, %63 ], [ 8, %60 ], [ 7, %57 ], [ 6, %54 ], [ 5, %51 ], [ 4, %48 ], [ 3, %45 ], [ 2, %42 ], [ 1, %39 ], [ 0, %36 ]
  br label %99

99:                                               ; preds = %96, %121
  %100 = phi ptr [ %97, %96 ], [ %119, %121 ]
  %101 = phi i32 [ %98, %96 ], [ %122, %121 ]
  br label %102

102:                                              ; preds = %99, %102
  %103 = phi ptr [ %105, %102 ], [ %100, %99 ]
  %104 = getelementptr inbounds nuw i8, ptr %103, i64 8
  %105 = load ptr, ptr %104, align 8, !tbaa !54
  %106 = load volatile i32, ptr %3, align 4, !tbaa !88
  %107 = add nsw i32 %106, 1
  store volatile i32 %107, ptr %3, align 4, !tbaa !88
  %108 = icmp eq ptr %105, null
  br i1 %108, label %109, label %102, !llvm.loop !117

109:                                              ; preds = %102
  %110 = sext i32 %101 to i64
  %111 = tail call i32 @llvm.smax.i32(i32 %101, i32 19)
  %112 = zext nneg i32 %111 to i64
  br label %113

113:                                              ; preds = %109, %116
  %114 = phi i64 [ %110, %109 ], [ %117, %116 ]
  %115 = icmp eq i64 %114, %112
  br i1 %115, label %252, label %116

116:                                              ; preds = %113
  %117 = add nsw i64 %114, 1
  %118 = getelementptr inbounds ptr, ptr @htab, i64 %117
  %119 = load ptr, ptr %118, align 8, !tbaa !57
  %120 = icmp eq ptr %119, null
  br i1 %120, label %113, label %121, !llvm.loop !82

121:                                              ; preds = %116
  %122 = trunc nsw i64 %117 to i32
  br label %99, !llvm.loop !117

123:                                              ; preds = %253
  %124 = or disjoint i64 %254, 1
  %125 = getelementptr inbounds nuw [100 x i32], ptr @array, i64 0, i64 %124
  %126 = load i32, ptr %125, align 4, !tbaa !88
  %127 = sext i32 %261 to i64
  %128 = getelementptr inbounds [101 x i32], ptr %4, i64 0, i64 %127
  store i32 %126, ptr %128, align 4, !tbaa !88
  %129 = add nsw i32 %261, 1
  %130 = srem i32 %129, 101
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %263, label %132

132:                                              ; preds = %123
  %133 = add nuw nsw i64 %254, 2
  %134 = icmp eq i64 %133, 100
  br i1 %134, label %135, label %253, !llvm.loop !118

135:                                              ; preds = %132, %135
  %136 = phi i32 [ %143, %135 ], [ 0, %132 ]
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds [101 x i32], ptr %4, i64 0, i64 %137
  %139 = load i32, ptr %138, align 4, !tbaa !88
  %140 = load volatile i32, ptr %3, align 4, !tbaa !88
  %141 = add nsw i32 %140, %139
  store volatile i32 %141, ptr %3, align 4, !tbaa !88
  %142 = add nsw i32 %136, 1
  %143 = srem i32 %142, 101
  %144 = icmp eq i32 %143, %130
  br i1 %144, label %229, label %135, !llvm.loop !119

145:                                              ; preds = %250, %433
  %146 = phi i64 [ %150, %433 ], [ 100, %250 ]
  %147 = load i32, ptr %4, align 16, !tbaa !88
  %148 = load volatile i32, ptr %3, align 4, !tbaa !88
  %149 = add nsw i32 %148, %147
  store volatile i32 %149, ptr %3, align 4, !tbaa !88
  %150 = add nsw i64 %146, -1
  %151 = getelementptr inbounds [101 x i32], ptr %4, i64 0, i64 %150
  %152 = load i32, ptr %151, align 4, !tbaa !88
  store i32 %152, ptr %4, align 16, !tbaa !88
  %153 = icmp sgt i64 %146, 2
  br i1 %153, label %154, label %433

154:                                              ; preds = %145, %176
  %155 = phi i64 [ %185, %176 ], [ 1, %145 ]
  %156 = phi i32 [ %184, %176 ], [ 2, %145 ]
  %157 = phi i32 [ %183, %176 ], [ 1, %145 ]
  %158 = phi i32 [ %174, %176 ], [ 0, %145 ]
  %159 = getelementptr inbounds [101 x i32], ptr %4, i64 0, i64 %155
  %160 = load i32, ptr %159, align 4, !tbaa !88
  %161 = icmp slt i32 %152, %160
  %162 = select i1 %161, i32 %157, i32 %158
  %163 = sext i32 %156 to i64
  %164 = icmp sgt i64 %150, %163
  br i1 %164, label %165, label %173

165:                                              ; preds = %154
  %166 = sext i32 %162 to i64
  %167 = getelementptr inbounds [101 x i32], ptr %4, i64 0, i64 %166
  %168 = load i32, ptr %167, align 4, !tbaa !88
  %169 = getelementptr inbounds [101 x i32], ptr %4, i64 0, i64 %163
  %170 = load i32, ptr %169, align 4, !tbaa !88
  %171 = icmp slt i32 %168, %170
  %172 = select i1 %171, i32 %156, i32 %162
  br label %173

173:                                              ; preds = %165, %154
  %174 = phi i32 [ %162, %154 ], [ %172, %165 ]
  %175 = icmp eq i32 %174, %158
  br i1 %175, label %433, label %176

176:                                              ; preds = %173
  %177 = sext i32 %158 to i64
  %178 = getelementptr inbounds [101 x i32], ptr %4, i64 0, i64 %177
  %179 = sext i32 %174 to i64
  %180 = getelementptr inbounds [101 x i32], ptr %4, i64 0, i64 %179
  %181 = load i32, ptr %180, align 4, !tbaa !88
  store i32 %181, ptr %178, align 4, !tbaa !88
  store i32 %152, ptr %180, align 4, !tbaa !88
  %182 = shl nsw i32 %174, 1
  %183 = or disjoint i32 %182, 1
  %184 = add nsw i32 %182, 2
  %185 = sext i32 %183 to i64
  %186 = icmp sgt i64 %150, %185
  br i1 %186, label %154, label %433, !llvm.loop !120

187:                                              ; preds = %433
  store ptr null, ptr %5, align 8, !tbaa !89
  br label %203

188:                                              ; preds = %225
  store i16 1, ptr %10, align 2, !tbaa !108
  %189 = icmp eq ptr %226, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  br i1 %189, label %200, label %190

190:                                              ; preds = %188
  store i16 1, ptr %12, align 8, !tbaa !107
  store i8 0, ptr %13, align 8, !tbaa !98
  store ptr %226, ptr %14, align 8, !tbaa !89
  call void @sglib__rbtree_it_compute_current_elem(ptr noundef nonnull %6)
  %191 = load ptr, ptr %6, align 8, !tbaa !106
  %192 = icmp eq ptr %191, null
  br i1 %192, label %200, label %193

193:                                              ; preds = %190, %193
  %194 = phi ptr [ %198, %193 ], [ %191, %190 ]
  %195 = load i32, ptr %194, align 8, !tbaa !91
  %196 = load volatile i32, ptr %3, align 4, !tbaa !88
  %197 = add nsw i32 %196, %195
  store volatile i32 %197, ptr %3, align 4, !tbaa !88
  call void @sglib__rbtree_it_compute_current_elem(ptr noundef nonnull %6)
  %198 = load ptr, ptr %6, align 8, !tbaa !106
  %199 = icmp eq ptr %198, null
  br i1 %199, label %200, label %193, !llvm.loop !121

200:                                              ; preds = %193, %188, %190
  call void @llvm.lifetime.end.p0(i64 1184, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 404, ptr nonnull %4) #20
  %201 = add nuw i32 %18, 1
  %202 = icmp eq i32 %201, %1
  br i1 %202, label %442, label %17, !llvm.loop !122

203:                                              ; preds = %225, %187
  %204 = phi ptr [ %226, %225 ], [ null, %187 ]
  %205 = phi i64 [ %227, %225 ], [ 0, %187 ]
  %206 = getelementptr inbounds nuw [100 x i32], ptr @array, i64 0, i64 %205
  %207 = load i32, ptr %206, align 4, !tbaa !88
  %208 = icmp eq ptr %204, null
  br i1 %208, label %220, label %209

209:                                              ; preds = %203, %215
  %210 = phi ptr [ %218, %215 ], [ %204, %203 ]
  %211 = load i32, ptr %210, align 8, !tbaa !91
  %212 = icmp slt i32 %207, %211
  br i1 %212, label %215, label %213

213:                                              ; preds = %209
  %214 = icmp eq i32 %207, %211
  br i1 %214, label %225, label %215

215:                                              ; preds = %213, %209
  %216 = phi i64 [ 8, %209 ], [ 16, %213 ]
  %217 = getelementptr inbounds nuw i8, ptr %210, i64 %216
  %218 = load ptr, ptr %217, align 8, !tbaa !89
  %219 = icmp eq ptr %218, null
  br i1 %219, label %220, label %209, !llvm.loop !96

220:                                              ; preds = %215, %203
  %221 = tail call ptr @malloc_beebs(i64 noundef 24) #20
  store i32 %207, ptr %221, align 8, !tbaa !91
  %222 = getelementptr inbounds nuw i8, ptr %221, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %222, i8 0, i64 16, i1 false)
  call fastcc void @sglib___rbtree_add_recursive(ptr noundef nonnull %5, ptr noundef nonnull %221)
  %223 = load ptr, ptr %5, align 8, !tbaa !89
  %224 = getelementptr inbounds nuw i8, ptr %223, i64 4
  store i8 0, ptr %224, align 4, !tbaa !95
  br label %225

225:                                              ; preds = %213, %220
  %226 = phi ptr [ %223, %220 ], [ %204, %213 ]
  %227 = add nuw nsw i64 %205, 1
  %228 = icmp eq i64 %227, 100
  br i1 %228, label %188, label %203, !llvm.loop !123

229:                                              ; preds = %135, %250
  %230 = phi i64 [ %234, %250 ], [ 0, %135 ]
  %231 = getelementptr inbounds nuw [100 x i32], ptr @array, i64 0, i64 %230
  %232 = load i32, ptr %231, align 4, !tbaa !88
  %233 = getelementptr inbounds nuw [101 x i32], ptr %4, i64 0, i64 %230
  store i32 %232, ptr %233, align 4, !tbaa !88
  %234 = add nuw nsw i64 %230, 1
  %235 = icmp eq i64 %230, 0
  br i1 %235, label %250, label %236

236:                                              ; preds = %229
  %237 = trunc nuw nsw i64 %230 to i32
  br label %238

238:                                              ; preds = %236, %248
  %239 = phi i32 [ %240, %248 ], [ %237, %236 ]
  %240 = lshr i32 %239, 1
  %241 = zext nneg i32 %240 to i64
  %242 = getelementptr inbounds nuw [101 x i32], ptr %4, i64 0, i64 %241
  %243 = load i32, ptr %242, align 4, !tbaa !88
  %244 = zext nneg i32 %239 to i64
  %245 = getelementptr inbounds nuw [101 x i32], ptr %4, i64 0, i64 %244
  %246 = load i32, ptr %245, align 4, !tbaa !88
  %247 = icmp slt i32 %243, %246
  br i1 %247, label %248, label %250

248:                                              ; preds = %238
  store i32 %246, ptr %242, align 4, !tbaa !88
  store i32 %243, ptr %245, align 4, !tbaa !88
  %249 = icmp samesign ult i32 %239, 2
  br i1 %249, label %250, label %238, !llvm.loop !124

250:                                              ; preds = %238, %248, %229
  %251 = icmp eq i64 %234, 100
  br i1 %251, label %145, label %229, !llvm.loop !125

252:                                              ; preds = %113, %93
  br label %253

253:                                              ; preds = %132, %252
  %254 = phi i64 [ 0, %252 ], [ %133, %132 ]
  %255 = phi i32 [ 0, %252 ], [ %130, %132 ]
  %256 = getelementptr inbounds nuw [100 x i32], ptr @array, i64 0, i64 %254
  %257 = load i32, ptr %256, align 8, !tbaa !88
  %258 = sext i32 %255 to i64
  %259 = getelementptr inbounds [101 x i32], ptr %4, i64 0, i64 %258
  store i32 %257, ptr %259, align 4, !tbaa !88
  %260 = add nsw i32 %255, 1
  %261 = srem i32 %260, 101
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %263, label %123

263:                                              ; preds = %123, %253
  br label %447

264:                                              ; preds = %285, %35
  %265 = phi i64 [ %286, %285 ], [ 0, %35 ]
  %266 = getelementptr inbounds nuw [100 x i32], ptr @array, i64 0, i64 %265
  %267 = load i32, ptr %266, align 4, !tbaa !88
  %268 = urem i32 %267, 20
  %269 = zext nneg i32 %268 to i64
  %270 = getelementptr inbounds nuw ptr, ptr @htab, i64 %269
  %271 = load ptr, ptr %270, align 8, !tbaa !57
  %272 = icmp eq ptr %271, null
  br i1 %272, label %281, label %273

273:                                              ; preds = %264, %277
  %274 = phi ptr [ %279, %277 ], [ %271, %264 ]
  %275 = load i32, ptr %274, align 8, !tbaa !51
  %276 = icmp eq i32 %275, %267
  br i1 %276, label %285, label %277

277:                                              ; preds = %273
  %278 = getelementptr inbounds nuw i8, ptr %274, i64 8
  %279 = load ptr, ptr %278, align 8, !tbaa !54
  %280 = icmp eq ptr %279, null
  br i1 %280, label %281, label %273, !llvm.loop !56

281:                                              ; preds = %277, %264
  %282 = tail call ptr @malloc_beebs(i64 noundef 16) #20
  store i32 %267, ptr %282, align 8, !tbaa !51
  %283 = load ptr, ptr %270, align 8, !tbaa !57
  %284 = getelementptr inbounds nuw i8, ptr %282, i64 8
  store ptr %283, ptr %284, align 8, !tbaa !54
  store ptr %282, ptr %270, align 8, !tbaa !57
  br label %285

285:                                              ; preds = %273, %281
  %286 = add nuw nsw i64 %265, 1
  %287 = icmp eq i64 %286, 100
  br i1 %287, label %36, label %264, !llvm.loop !126

288:                                              ; preds = %308, %19
  %289 = phi i64 [ %309, %308 ], [ 0, %19 ]
  %290 = tail call ptr @malloc_beebs(i64 noundef 24) #20
  %291 = getelementptr inbounds nuw [100 x i32], ptr @array, i64 0, i64 %289
  %292 = load i32, ptr %291, align 4, !tbaa !88
  store i32 %292, ptr %290, align 8, !tbaa !14
  %293 = load ptr, ptr @the_list, align 8, !tbaa !5
  %294 = icmp eq ptr %293, null
  br i1 %294, label %302, label %295

295:                                              ; preds = %288
  %296 = getelementptr inbounds nuw i8, ptr %290, i64 8
  store ptr %293, ptr %296, align 8, !tbaa !13
  %297 = getelementptr inbounds nuw i8, ptr %293, i64 16
  %298 = load ptr, ptr %297, align 8, !tbaa !10
  %299 = getelementptr inbounds nuw i8, ptr %290, i64 16
  store ptr %298, ptr %299, align 8, !tbaa !10
  store ptr %290, ptr %297, align 8, !tbaa !10
  %300 = load ptr, ptr %299, align 8, !tbaa !10
  %301 = icmp eq ptr %300, null
  br i1 %301, label %308, label %304

302:                                              ; preds = %288
  store ptr %290, ptr @the_list, align 8, !tbaa !5
  %303 = getelementptr inbounds nuw i8, ptr %290, i64 16
  store ptr null, ptr %303, align 8, !tbaa !10
  br label %304

304:                                              ; preds = %302, %295
  %305 = phi ptr [ %290, %302 ], [ %300, %295 ]
  %306 = phi ptr [ null, %302 ], [ %290, %295 ]
  %307 = getelementptr inbounds nuw i8, ptr %305, i64 8
  store ptr %306, ptr %307, align 8, !tbaa !13
  br label %308

308:                                              ; preds = %304, %295
  %309 = add nuw nsw i64 %289, 1
  %310 = icmp eq i64 %309, 100
  br i1 %310, label %20, label %288, !llvm.loop !127

311:                                              ; preds = %337, %17
  %312 = phi i32 [ 1, %17 ], [ %322, %337 ]
  %313 = add nsw i32 %312, -1
  %314 = zext nneg i32 %313 to i64
  %315 = getelementptr inbounds nuw [64 x i32], ptr %7, i64 0, i64 %314
  %316 = load i32, ptr %315, align 4, !tbaa !88
  %317 = getelementptr inbounds nuw [64 x i32], ptr %8, i64 0, i64 %314
  %318 = load i32, ptr %317, align 4, !tbaa !88
  %319 = sub nsw i32 %318, %316
  %320 = icmp sgt i32 %319, 2
  br i1 %320, label %339, label %321

321:                                              ; preds = %376, %311
  %322 = phi i32 [ %313, %311 ], [ %377, %376 ]
  %323 = phi i32 [ %316, %311 ], [ %378, %376 ]
  %324 = phi i32 [ %318, %311 ], [ %379, %376 ]
  %325 = phi i32 [ %319, %311 ], [ %380, %376 ]
  %326 = icmp eq i32 %325, 2
  br i1 %326, label %327, label %337

327:                                              ; preds = %321
  %328 = sext i32 %323 to i64
  %329 = getelementptr inbounds [100 x i32], ptr @array2, i64 0, i64 %328
  %330 = load i32, ptr %329, align 4, !tbaa !88
  %331 = add nsw i32 %324, -1
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds [100 x i32], ptr @array2, i64 0, i64 %332
  %334 = load i32, ptr %333, align 4, !tbaa !88
  %335 = icmp sgt i32 %330, %334
  br i1 %335, label %336, label %337

336:                                              ; preds = %327
  store i32 %334, ptr %329, align 4, !tbaa !88
  store i32 %330, ptr %333, align 4, !tbaa !88
  br label %337

337:                                              ; preds = %336, %327, %321
  %338 = icmp sgt i32 %322, 0
  br i1 %338, label %311, label %19, !llvm.loop !128

339:                                              ; preds = %311, %376
  %340 = phi i32 [ %379, %376 ], [ %318, %311 ]
  %341 = phi i32 [ %378, %376 ], [ %316, %311 ]
  %342 = phi i32 [ %377, %376 ], [ %313, %311 ]
  %343 = add nsw i32 %341, 1
  %344 = add nsw i32 %340, -1
  %345 = icmp slt i32 %343, %344
  br i1 %345, label %439, label %351

346:                                              ; preds = %423, %387, %417
  %347 = phi i32 [ %418, %417 ], [ %427, %387 ], [ %427, %423 ]
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds [100 x i32], ptr @array2, i64 0, i64 %348
  %350 = load i32, ptr %349, align 4, !tbaa !88
  store i32 %429, ptr %349, align 4, !tbaa !88
  store i32 %350, ptr %441, align 4, !tbaa !88
  br label %351

351:                                              ; preds = %419, %346, %339
  %352 = phi i32 [ %343, %339 ], [ %347, %346 ], [ %420, %419 ]
  %353 = phi i32 [ %344, %339 ], [ %347, %346 ], [ %421, %419 ]
  %354 = sub nsw i32 %352, %341
  %355 = icmp sgt i32 %354, 1
  br i1 %355, label %358, label %356

356:                                              ; preds = %351
  %357 = add nsw i32 %353, 1
  br label %376

358:                                              ; preds = %351
  %359 = sub nsw i32 %340, %353
  %360 = icmp sgt i32 %359, 1
  br i1 %360, label %361, label %376

361:                                              ; preds = %358
  %362 = add nsw i32 %359, -1
  %363 = icmp samesign ult i32 %354, %362
  br i1 %363, label %370, label %364

364:                                              ; preds = %361
  %365 = sext i32 %342 to i64
  %366 = getelementptr inbounds [64 x i32], ptr %7, i64 0, i64 %365
  store i32 %341, ptr %366, align 4, !tbaa !88
  %367 = getelementptr inbounds [64 x i32], ptr %8, i64 0, i64 %365
  store i32 %352, ptr %367, align 4, !tbaa !88
  %368 = add nsw i32 %342, 1
  %369 = add nsw i32 %353, 1
  br label %376

370:                                              ; preds = %361
  %371 = add nsw i32 %353, 1
  %372 = sext i32 %342 to i64
  %373 = getelementptr inbounds [64 x i32], ptr %7, i64 0, i64 %372
  store i32 %371, ptr %373, align 4, !tbaa !88
  %374 = getelementptr inbounds [64 x i32], ptr %8, i64 0, i64 %372
  store i32 %340, ptr %374, align 4, !tbaa !88
  %375 = add nsw i32 %342, 1
  br label %376

376:                                              ; preds = %370, %364, %358, %356
  %377 = phi i32 [ %375, %370 ], [ %368, %364 ], [ %342, %356 ], [ %342, %358 ]
  %378 = phi i32 [ %341, %370 ], [ %369, %364 ], [ %357, %356 ], [ %341, %358 ]
  %379 = phi i32 [ %352, %370 ], [ %340, %364 ], [ %340, %356 ], [ %352, %358 ]
  %380 = sub nsw i32 %379, %378
  %381 = icmp sgt i32 %380, 2
  br i1 %381, label %339, label %321, !llvm.loop !129

382:                                              ; preds = %426, %387
  %383 = phi i64 [ %430, %426 ], [ %388, %387 ]
  %384 = getelementptr inbounds [100 x i32], ptr @array2, i64 0, i64 %383
  %385 = load i32, ptr %384, align 4, !tbaa !88
  %386 = icmp sgt i32 %385, %429
  br i1 %386, label %423, label %387

387:                                              ; preds = %382
  %388 = add nsw i64 %383, 1
  %389 = trunc i64 %388 to i32
  %390 = icmp eq i32 %432, %389
  br i1 %390, label %346, label %382, !llvm.loop !130

391:                                              ; preds = %435, %396
  %392 = phi i64 [ %436, %435 ], [ %397, %396 ]
  %393 = getelementptr inbounds [100 x i32], ptr @array2, i64 0, i64 %392
  %394 = load i32, ptr %393, align 4, !tbaa !88
  %395 = icmp slt i32 %394, %429
  br i1 %395, label %399, label %396

396:                                              ; preds = %391
  %397 = add nsw i64 %392, -1
  %398 = icmp slt i64 %438, %392
  br i1 %398, label %391, label %417, !llvm.loop !131

399:                                              ; preds = %391
  %400 = trunc nsw i64 %392 to i32
  %401 = icmp slt i64 %383, %392
  br i1 %401, label %402, label %419

402:                                              ; preds = %399
  %403 = getelementptr inbounds [100 x i32], ptr @array2, i64 0, i64 %438
  %404 = load i32, ptr %403, align 4, !tbaa !88
  %405 = shl i64 %392, 32
  %406 = ashr exact i64 %405, 32
  %407 = getelementptr inbounds [100 x i32], ptr @array2, i64 0, i64 %406
  %408 = load i32, ptr %407, align 4, !tbaa !88
  store i32 %408, ptr %403, align 4, !tbaa !88
  store i32 %404, ptr %407, align 4, !tbaa !88
  %409 = add nsw i32 %424, 2
  %410 = icmp slt i32 %409, %400
  %411 = add nsw i32 %424, 1
  br i1 %410, label %415, label %412

412:                                              ; preds = %402
  %413 = icmp slt i32 %411, %400
  %414 = select i1 %413, i32 %411, i32 %424
  br label %419

415:                                              ; preds = %402
  %416 = add nsw i32 %400, -1
  br label %419

417:                                              ; preds = %396
  %418 = trunc nsw i64 %397 to i32
  br label %346

419:                                              ; preds = %415, %412, %399
  %420 = phi i32 [ %411, %415 ], [ %424, %399 ], [ %414, %412 ]
  %421 = phi i32 [ %416, %415 ], [ %400, %399 ], [ %400, %412 ]
  %422 = icmp slt i32 %420, %421
  br i1 %422, label %426, label %351, !llvm.loop !132

423:                                              ; preds = %382
  %424 = trunc nsw i64 %383 to i32
  %425 = icmp slt i32 %427, %424
  br i1 %425, label %346, label %435

426:                                              ; preds = %439, %419
  %427 = phi i32 [ %344, %439 ], [ %421, %419 ]
  %428 = phi i32 [ %343, %439 ], [ %420, %419 ]
  %429 = load i32, ptr %441, align 4, !tbaa !88
  %430 = sext i32 %428 to i64
  %431 = tail call i32 @llvm.smax.i32(i32 %428, i32 %427)
  %432 = add i32 %431, 1
  br label %382

433:                                              ; preds = %173, %176, %145
  %434 = icmp eq i64 %150, 0
  br i1 %434, label %187, label %145, !llvm.loop !133

435:                                              ; preds = %423
  %436 = sext i32 %427 to i64
  %437 = shl i64 %383, 32
  %438 = ashr exact i64 %437, 32
  br label %391

439:                                              ; preds = %339
  %440 = sext i32 %341 to i64
  %441 = getelementptr inbounds [100 x i32], ptr @array2, i64 0, i64 %440
  br label %426

442:                                              ; preds = %200
  %443 = add nuw nsw i32 %16, 1
  %444 = icmp eq i32 %443, %0
  br i1 %444, label %445, label %15, !llvm.loop !134

445:                                              ; preds = %442, %2
  %446 = load volatile i32, ptr %3, align 4, !tbaa !88
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3)
  ret i32 %446

447:                                              ; preds = %263, %447
  br label %447
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @benchmark() local_unnamed_addr #15 {
  %1 = tail call fastcc i32 @benchmark_body(i32 noundef 31, i32 noundef 20)
  ret i32 %1
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #16

declare void @init_heap_beebs(ptr noundef, i64 noundef) local_unnamed_addr #13

declare ptr @malloc_beebs(i64 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #18

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #19

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #17 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nofree nounwind willreturn memory(argmem: read) }
attributes #20 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"p1 _ZTS6dllist", !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !6, i64 16}
!11 = !{!"dllist", !12, i64 0, !6, i64 8, !6, i64 16}
!12 = !{!"int", !8, i64 0}
!13 = !{!11, !6, i64 8}
!14 = !{!11, !12, i64 0}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = distinct !{!17, !16}
!18 = distinct !{!18, !16}
!19 = distinct !{!19, !16}
!20 = distinct !{!20, !16}
!21 = distinct !{!21, !16}
!22 = distinct !{!22, !16}
!23 = distinct !{!23, !16}
!24 = distinct !{!24, !16}
!25 = distinct !{!25, !16}
!26 = distinct !{!26, !16}
!27 = distinct !{!27, !16}
!28 = distinct !{!28, !16}
!29 = distinct !{!29, !16}
!30 = distinct !{!30, !16}
!31 = distinct !{!31, !16}
!32 = distinct !{!32, !16}
!33 = distinct !{!33, !16}
!34 = distinct !{!34, !16}
!35 = distinct !{!35, !16}
!36 = distinct !{!36, !16}
!37 = distinct !{!37, !16}
!38 = distinct !{!38, !16}
!39 = distinct !{!39, !16}
!40 = distinct !{!40, !16}
!41 = distinct !{!41, !16}
!42 = distinct !{!42, !16}
!43 = !{!44, !7, i64 24}
!44 = !{!"sglib_dllist_iterator", !6, i64 0, !6, i64 8, !6, i64 16, !7, i64 24, !6, i64 32}
!45 = !{!44, !6, i64 32}
!46 = !{!44, !6, i64 8}
!47 = !{!44, !6, i64 16}
!48 = distinct !{!48, !16}
!49 = distinct !{!49, !16}
!50 = !{!44, !6, i64 0}
!51 = !{!52, !12, i64 0}
!52 = !{!"ilist", !12, i64 0, !53, i64 8}
!53 = !{!"p1 _ZTS5ilist", !7, i64 0}
!54 = !{!52, !53, i64 8}
!55 = distinct !{!55, !16}
!56 = distinct !{!56, !16}
!57 = !{!53, !53, i64 0}
!58 = distinct !{!58, !16}
!59 = distinct !{!59, !16}
!60 = distinct !{!60, !16}
!61 = distinct !{!61, !16}
!62 = distinct !{!62, !16}
!63 = distinct !{!63, !16}
!64 = distinct !{!64, !16}
!65 = distinct !{!65, !16}
!66 = distinct !{!66, !16}
!67 = distinct !{!67, !16}
!68 = distinct !{!68, !16}
!69 = distinct !{!69, !16}
!70 = !{!71, !7, i64 16}
!71 = !{!"sglib_ilist_iterator", !53, i64 0, !53, i64 8, !7, i64 16, !53, i64 24}
!72 = !{!71, !53, i64 24}
!73 = !{!71, !53, i64 8}
!74 = !{!71, !53, i64 0}
!75 = distinct !{!75, !16}
!76 = !{!77, !78, i64 32}
!77 = !{!"sglib_hashed_ilist_iterator", !71, i64 0, !78, i64 32, !12, i64 40, !7, i64 48, !53, i64 56}
!78 = !{!"p2 _ZTS5ilist", !7, i64 0}
!79 = !{!77, !12, i64 40}
!80 = !{!77, !7, i64 48}
!81 = !{!77, !53, i64 56}
!82 = distinct !{!82, !16}
!83 = distinct !{!83, !16, !84}
!84 = !{!"llvm.loop.unswitch.partial.disable"}
!85 = !{!86, !12, i64 408}
!86 = !{!"iq", !8, i64 0, !12, i64 404, !12, i64 408}
!87 = !{!86, !12, i64 404}
!88 = !{!12, !12, i64 0}
!89 = !{!90, !90, i64 0}
!90 = !{!"p1 _ZTS6rbtree", !7, i64 0}
!91 = !{!92, !12, i64 0}
!92 = !{!"rbtree", !12, i64 0, !8, i64 4, !90, i64 8, !90, i64 16}
!93 = !{!92, !90, i64 8}
!94 = !{!92, !90, i64 16}
!95 = !{!92, !8, i64 4}
!96 = distinct !{!96, !16}
!97 = distinct !{!97, !16}
!98 = !{!8, !8, i64 0}
!99 = distinct !{!99, !16}
!100 = distinct !{!100, !16}
!101 = distinct !{!101, !16}
!102 = !{!103, !90, i64 1168}
!103 = !{!"sglib_rbtree_iterator", !90, i64 0, !8, i64 8, !8, i64 136, !104, i64 1160, !104, i64 1162, !90, i64 1168, !7, i64 1176}
!104 = !{!"short", !8, i64 0}
!105 = !{!103, !7, i64 1176}
!106 = !{!103, !90, i64 0}
!107 = !{!103, !104, i64 1160}
!108 = !{!103, !104, i64 1162}
!109 = distinct !{!109, !16}
!110 = distinct !{!110, !16}
!111 = distinct !{!111, !16}
!112 = distinct !{!112, !16}
!113 = distinct !{!113, !16}
!114 = distinct !{!114, !16}
!115 = distinct !{!115, !16}
!116 = distinct !{!116, !16}
!117 = distinct !{!117, !16}
!118 = distinct !{!118, !16}
!119 = distinct !{!119, !16}
!120 = distinct !{!120, !16}
!121 = distinct !{!121, !16}
!122 = distinct !{!122, !16}
!123 = distinct !{!123, !16}
!124 = distinct !{!124, !16}
!125 = distinct !{!125, !16}
!126 = distinct !{!126, !16}
!127 = distinct !{!127, !16}
!128 = distinct !{!128, !16}
!129 = distinct !{!129, !16}
!130 = distinct !{!130, !16}
!131 = distinct !{!131, !16}
!132 = distinct !{!132, !16}
!133 = distinct !{!133, !16}
!134 = distinct !{!134, !16}
