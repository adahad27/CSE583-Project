; ModuleID = '../src/edn/libedn.c'
source_filename = "../src/edn/libedn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.verify_benchmark.exp_output = private unnamed_addr constant <{ [101 x i64], [99 x i64] }> <{ [101 x i64] [i64 3760, i64 4269, i64 3126, i64 1030, i64 2453, i64 -4601, i64 1981, i64 -1056, i64 2621, i64 4269, i64 3058, i64 1030, i64 2378, i64 -4601, i64 1902, i64 -1056, i64 2548, i64 4269, i64 2988, i64 1030, i64 2300, i64 -4601, i64 1822, i64 -1056, i64 2474, i64 4269, i64 2917, i64 1030, i64 2220, i64 -4601, i64 1738, i64 -1056, i64 2398, i64 4269, i64 2844, i64 1030, i64 2140, i64 -4601, i64 1655, i64 -1056, i64 2321, i64 4269, i64 2770, i64 1030, i64 2058, i64 -4601, i64 1569, i64 -1056, i64 2242, i64 4269, i64 2152, i64 1030, i64 1683, i64 -4601, i64 1627, i64 -1056, i64 2030, i64 4269, i64 2080, i64 1030, i64 1611, i64 -4601, i64 1555, i64 -1056, i64 1958, i64 4269, i64 2008, i64 1030, i64 1539, i64 -4601, i64 1483, i64 -1056, i64 1886, i64 4269, i64 1935, i64 1030, i64 1466, i64 -4601, i64 1410, i64 -1056, i64 1813, i64 4269, i64 1862, i64 1030, i64 1393, i64 -4601, i64 1337, i64 -1056, i64 1740, i64 4269, i64 1789, i64 1030, i64 1320, i64 -4601, i64 1264, i64 -1056, i64 1667, i64 4269, i64 1716, i64 1030, i64 1968], [99 x i64] zeroinitializer }>, align 16
@output = internal global [200 x i64] zeroinitializer, align 16
@c = internal unnamed_addr global i16 0, align 2
@d = internal unnamed_addr global i64 0, align 8
@e = internal unnamed_addr global i32 0, align 4
@__const.benchmark_body.in_a = private unnamed_addr constant [200 x i16] [i16 0, i16 2047, i16 3072, i16 2048, i16 512, i16 -2048, i16 -3328, i16 1024, i16 0, i16 2047, i16 3072, i16 2048, i16 512, i16 -2048, i16 -3328, i16 1024, i16 0, i16 2047, i16 3072, i16 2048, i16 512, i16 -2048, i16 -3328, i16 1024, i16 0, i16 2047, i16 3072, i16 2048, i16 512, i16 -2048, i16 -3328, i16 1024, i16 0, i16 2047, i16 3072, i16 2048, i16 512, i16 -2048, i16 -3328, i16 1024, i16 0, i16 2047, i16 3072, i16 2048, i16 512, i16 -2048, i16 -3328, i16 1024, i16 0, i16 2047, i16 3072, i16 2048, i16 512, i16 -2048, i16 -3328, i16 1024, i16 0, i16 2047, i16 3072, i16 2048, i16 512, i16 -2048, i16 -3328, i16 1024, i16 0, i16 2047, i16 3072, i16 2048, i16 512, i16 -2048, i16 -3328, i16 1024, i16 0, i16 2047, i16 3072, i16 2048, i16 512, i16 -2048, i16 -3328, i16 1024, i16 0, i16 2047, i16 3072, i16 2048, i16 512, i16 -2048, i16 -3328, i16 1024, i16 0, i16 2047, i16 3072, i16 2048, i16 512, i16 -2048, i16 -3328, i16 1024, i16 0, i16 2047, i16 3072, i16 2048, i16 512, i16 -2048, i16 -3328, i16 1024, i16 0, i16 2047, i16 3072, i16 2048, i16 512, i16 -2048, i16 -3328, i16 1024, i16 0, i16 2047, i16 3072, i16 2048, i16 512, i16 -2048, i16 -3328, i16 1024, i16 0, i16 2047, i16 3072, i16 2048, i16 512, i16 -2048, i16 -3328, i16 1024, i16 0, i16 2047, i16 3072, i16 2048, i16 512, i16 -2048, i16 -3328, i16 1024, i16 0, i16 2047, i16 3072, i16 2048, i16 512, i16 -2048, i16 -3328, i16 1024, i16 0, i16 2047, i16 3072, i16 2048, i16 512, i16 -2048, i16 -3328, i16 1024, i16 0, i16 2047, i16 3072, i16 2048, i16 512, i16 -2048, i16 -3328, i16 1024, i16 0, i16 2047, i16 3072, i16 2048, i16 512, i16 -2048, i16 -3328, i16 1024, i16 0, i16 2047, i16 3072, i16 2048, i16 512, i16 -2048, i16 -3328, i16 1024, i16 0, i16 2047, i16 3072, i16 2048, i16 512, i16 -2048, i16 -3328, i16 1024, i16 0, i16 2047, i16 3072, i16 2048, i16 512, i16 -2048, i16 -3328, i16 1024, i16 0, i16 2047, i16 3072, i16 2048, i16 512, i16 -2048, i16 -3328, i16 1024], align 16
@__const.benchmark_body.in_b = private unnamed_addr constant [200 x i16] [i16 3168, i16 3136, i16 3104, i16 3072, i16 -2560, i16 -3072, i16 -3584, i16 -4096, i16 3168, i16 3136, i16 3104, i16 3072, i16 -2560, i16 -3072, i16 -3584, i16 -4096, i16 3168, i16 3136, i16 3104, i16 3072, i16 -2560, i16 -3072, i16 -3584, i16 -4096, i16 3168, i16 3136, i16 3104, i16 3072, i16 -2560, i16 -3072, i16 -3584, i16 -4096, i16 3168, i16 3136, i16 3104, i16 3072, i16 -2560, i16 -3072, i16 -3584, i16 -4096, i16 3168, i16 3136, i16 3104, i16 3072, i16 -2560, i16 -3072, i16 -3584, i16 -4096, i16 3168, i16 3136, i16 3104, i16 3072, i16 -2560, i16 -3072, i16 -3584, i16 -4096, i16 3168, i16 3136, i16 3104, i16 3072, i16 -2560, i16 -3072, i16 -3584, i16 -4096, i16 3168, i16 3136, i16 3104, i16 3072, i16 -2560, i16 -3072, i16 -3584, i16 -4096, i16 3168, i16 3136, i16 3104, i16 3072, i16 -2560, i16 -3072, i16 -3584, i16 -4096, i16 3168, i16 3136, i16 3104, i16 3072, i16 -2560, i16 -3072, i16 -3584, i16 -4096, i16 3168, i16 3136, i16 3104, i16 3072, i16 -2560, i16 -3072, i16 -3584, i16 -4096, i16 3168, i16 3136, i16 3104, i16 3072, i16 -2560, i16 -3072, i16 -3584, i16 -4096, i16 3168, i16 3136, i16 3104, i16 3072, i16 -2560, i16 -3072, i16 -3584, i16 -4096, i16 3168, i16 3136, i16 3104, i16 3072, i16 -2560, i16 -3072, i16 -3584, i16 -4096, i16 3168, i16 3136, i16 3104, i16 3072, i16 -2560, i16 -3072, i16 -3584, i16 -4096, i16 3168, i16 3136, i16 3104, i16 3072, i16 -2560, i16 -3072, i16 -3584, i16 -4096, i16 3168, i16 3136, i16 3104, i16 3072, i16 -2560, i16 -3072, i16 -3584, i16 -4096, i16 3168, i16 3136, i16 3104, i16 3072, i16 -2560, i16 -3072, i16 -3584, i16 -4096, i16 3168, i16 3136, i16 3104, i16 3072, i16 -2560, i16 -3072, i16 -3584, i16 -4096, i16 3168, i16 3136, i16 3104, i16 3072, i16 -2560, i16 -3072, i16 -3584, i16 -4096, i16 3168, i16 3136, i16 3104, i16 3072, i16 -2560, i16 -3072, i16 -3584, i16 -4096, i16 3168, i16 3136, i16 3104, i16 3072, i16 -2560, i16 -3072, i16 -3584, i16 -4096, i16 3168, i16 3136, i16 3104, i16 3072, i16 -2560, i16 -3072, i16 -3584, i16 -4096, i16 3168, i16 3136, i16 3104, i16 3072, i16 -2560, i16 -3072, i16 -3584, i16 -4096], align 16
@a = internal global [200 x i16] zeroinitializer, align 16
@b = internal global [200 x i16] zeroinitializer, align 16

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @vec_mpy1(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i16 noundef signext %2) local_unnamed_addr #0 {
  %4 = sext i16 %2 to i32
  %5 = getelementptr i8, ptr %0, i64 300
  %6 = getelementptr i8, ptr %1, i64 300
  %7 = icmp ult ptr %0, %6
  %8 = icmp ult ptr %1, %5
  %9 = and i1 %7, %8
  br i1 %9, label %47, label %10

10:                                               ; preds = %3
  %11 = insertelement <8 x i32> poison, i32 %4, i64 0
  %12 = shufflevector <8 x i32> %11, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %13

13:                                               ; preds = %13, %10
  %14 = phi i64 [ 0, %10 ], [ %33, %13 ]
  %15 = getelementptr inbounds nuw i16, ptr %1, i64 %14
  %16 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %17 = load <8 x i16>, ptr %15, align 2, !tbaa !5, !alias.scope !9
  %18 = load <8 x i16>, ptr %16, align 2, !tbaa !5, !alias.scope !9
  %19 = sext <8 x i16> %17 to <8 x i32>
  %20 = sext <8 x i16> %18 to <8 x i32>
  %21 = mul nsw <8 x i32> %12, %19
  %22 = mul nsw <8 x i32> %12, %20
  %23 = lshr <8 x i32> %21, splat (i32 15)
  %24 = lshr <8 x i32> %22, splat (i32 15)
  %25 = getelementptr inbounds nuw i16, ptr %0, i64 %14
  %26 = getelementptr inbounds nuw i8, ptr %25, i64 16
  %27 = load <8 x i16>, ptr %25, align 2, !tbaa !5, !alias.scope !12, !noalias !9
  %28 = load <8 x i16>, ptr %26, align 2, !tbaa !5, !alias.scope !12, !noalias !9
  %29 = trunc <8 x i32> %23 to <8 x i16>
  %30 = trunc <8 x i32> %24 to <8 x i16>
  %31 = add <8 x i16> %27, %29
  %32 = add <8 x i16> %28, %30
  store <8 x i16> %31, ptr %25, align 2, !tbaa !5, !alias.scope !12, !noalias !9
  store <8 x i16> %32, ptr %26, align 2, !tbaa !5, !alias.scope !12, !noalias !9
  %33 = add nuw i64 %14, 16
  %34 = icmp eq i64 %33, 144
  br i1 %34, label %35, label %13, !llvm.loop !14

35:                                               ; preds = %13
  %36 = insertelement <4 x i32> poison, i32 %4, i64 0
  %37 = shufflevector <4 x i32> %36, <4 x i32> poison, <4 x i32> zeroinitializer
  %38 = getelementptr inbounds nuw i8, ptr %1, i64 288
  %39 = load <4 x i16>, ptr %38, align 2, !tbaa !5, !alias.scope !18
  %40 = sext <4 x i16> %39 to <4 x i32>
  %41 = mul nsw <4 x i32> %37, %40
  %42 = lshr <4 x i32> %41, splat (i32 15)
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 288
  %44 = load <4 x i16>, ptr %43, align 2, !tbaa !5, !alias.scope !21, !noalias !18
  %45 = trunc <4 x i32> %42 to <4 x i16>
  %46 = add <4 x i16> %44, %45
  store <4 x i16> %46, ptr %43, align 2, !tbaa !5, !alias.scope !21, !noalias !18
  br label %47

47:                                               ; preds = %35, %3
  %48 = phi i64 [ 0, %3 ], [ 148, %35 ]
  br label %49

49:                                               ; preds = %49, %47
  %50 = phi i64 [ %48, %47 ], [ %70, %49 ]
  %51 = getelementptr inbounds nuw i16, ptr %1, i64 %50
  %52 = load i16, ptr %51, align 2, !tbaa !5
  %53 = sext i16 %52 to i32
  %54 = mul nsw i32 %53, %4
  %55 = lshr i32 %54, 15
  %56 = getelementptr inbounds nuw i16, ptr %0, i64 %50
  %57 = load i16, ptr %56, align 2, !tbaa !5
  %58 = trunc i32 %55 to i16
  %59 = add i16 %57, %58
  store i16 %59, ptr %56, align 2, !tbaa !5
  %60 = or disjoint i64 %50, 1
  %61 = getelementptr inbounds nuw i16, ptr %1, i64 %60
  %62 = load i16, ptr %61, align 2, !tbaa !5
  %63 = sext i16 %62 to i32
  %64 = mul nsw i32 %63, %4
  %65 = lshr i32 %64, 15
  %66 = getelementptr inbounds nuw i16, ptr %0, i64 %60
  %67 = load i16, ptr %66, align 2, !tbaa !5
  %68 = trunc i32 %65 to i16
  %69 = add i16 %67, %68
  store i16 %69, ptr %66, align 2, !tbaa !5
  %70 = add nuw nsw i64 %50, 2
  %71 = icmp eq i64 %70, 150
  br i1 %71, label %72, label %49, !llvm.loop !23

72:                                               ; preds = %49
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i64 @mac(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i64 noundef %2, ptr nocapture noundef %3) local_unnamed_addr #0 {
  %5 = load i64, ptr %3, align 8, !tbaa !24
  %6 = insertelement <2 x i64> <i64 poison, i64 0>, i64 %5, i64 0
  %7 = insertelement <2 x i64> <i64 poison, i64 0>, i64 %2, i64 0
  br label %8

8:                                                ; preds = %8, %4
  %9 = phi i64 [ 0, %4 ], [ %38, %8 ]
  %10 = phi <2 x i64> [ %6, %4 ], [ %30, %8 ]
  %11 = phi <2 x i64> [ zeroinitializer, %4 ], [ %31, %8 ]
  %12 = phi <2 x i64> [ %7, %4 ], [ %36, %8 ]
  %13 = phi <2 x i64> [ zeroinitializer, %4 ], [ %37, %8 ]
  %14 = getelementptr inbounds nuw i16, ptr %1, i64 %9
  %15 = getelementptr inbounds nuw i8, ptr %14, i64 4
  %16 = load <2 x i16>, ptr %14, align 2, !tbaa !5
  %17 = load <2 x i16>, ptr %15, align 2, !tbaa !5
  %18 = sext <2 x i16> %16 to <2 x i32>
  %19 = sext <2 x i16> %17 to <2 x i32>
  %20 = getelementptr inbounds nuw i16, ptr %0, i64 %9
  %21 = getelementptr inbounds nuw i8, ptr %20, i64 4
  %22 = load <2 x i16>, ptr %20, align 2, !tbaa !5
  %23 = load <2 x i16>, ptr %21, align 2, !tbaa !5
  %24 = sext <2 x i16> %22 to <2 x i32>
  %25 = sext <2 x i16> %23 to <2 x i32>
  %26 = mul nsw <2 x i32> %24, %18
  %27 = mul nsw <2 x i32> %25, %19
  %28 = sext <2 x i32> %26 to <2 x i64>
  %29 = sext <2 x i32> %27 to <2 x i64>
  %30 = add <2 x i64> %10, %28
  %31 = add <2 x i64> %11, %29
  %32 = mul nsw <2 x i32> %18, %18
  %33 = mul nsw <2 x i32> %19, %19
  %34 = zext nneg <2 x i32> %32 to <2 x i64>
  %35 = zext nneg <2 x i32> %33 to <2 x i64>
  %36 = add <2 x i64> %12, %34
  %37 = add <2 x i64> %13, %35
  %38 = add nuw i64 %9, 4
  %39 = icmp eq i64 %38, 148
  br i1 %39, label %40, label %8, !llvm.loop !26

40:                                               ; preds = %8
  %41 = add <2 x i64> %37, %36
  %42 = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %41)
  %43 = add <2 x i64> %31, %30
  %44 = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %43)
  %45 = getelementptr inbounds nuw i8, ptr %1, i64 296
  %46 = load i16, ptr %45, align 2, !tbaa !5
  %47 = sext i16 %46 to i32
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 296
  %49 = load i16, ptr %48, align 2, !tbaa !5
  %50 = sext i16 %49 to i32
  %51 = mul nsw i32 %50, %47
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %44, %52
  %54 = mul nsw i32 %47, %47
  %55 = zext nneg i32 %54 to i64
  %56 = add nsw i64 %42, %55
  %57 = getelementptr inbounds nuw i8, ptr %1, i64 298
  %58 = load i16, ptr %57, align 2, !tbaa !5
  %59 = sext i16 %58 to i32
  %60 = getelementptr inbounds nuw i8, ptr %0, i64 298
  %61 = load i16, ptr %60, align 2, !tbaa !5
  %62 = sext i16 %61 to i32
  %63 = mul nsw i32 %62, %59
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %53, %64
  %66 = mul nsw i32 %59, %59
  %67 = zext nneg i32 %66 to i64
  %68 = add nsw i64 %56, %67
  store i64 %65, ptr %3, align 8, !tbaa !24
  ret i64 %68
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @fir(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = load i16, ptr %1, align 2, !tbaa !5
  %5 = sext i16 %4 to i64
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 2
  %7 = load i16, ptr %6, align 2, !tbaa !5
  %8 = sext i16 %7 to i64
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %10 = load i16, ptr %9, align 2, !tbaa !5
  %11 = sext i16 %10 to i64
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 6
  %13 = load i16, ptr %12, align 2, !tbaa !5
  %14 = sext i16 %13 to i64
  %15 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %16 = load i16, ptr %15, align 2, !tbaa !5
  %17 = sext i16 %16 to i64
  %18 = getelementptr inbounds nuw i8, ptr %1, i64 10
  %19 = load i16, ptr %18, align 2, !tbaa !5
  %20 = sext i16 %19 to i64
  %21 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %22 = load i16, ptr %21, align 2, !tbaa !5
  %23 = sext i16 %22 to i64
  %24 = getelementptr inbounds nuw i8, ptr %1, i64 14
  %25 = load i16, ptr %24, align 2, !tbaa !5
  %26 = sext i16 %25 to i64
  %27 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %28 = load i16, ptr %27, align 2, !tbaa !5
  %29 = sext i16 %28 to i64
  %30 = getelementptr inbounds nuw i8, ptr %1, i64 18
  %31 = load i16, ptr %30, align 2, !tbaa !5
  %32 = sext i16 %31 to i64
  %33 = getelementptr inbounds nuw i8, ptr %1, i64 20
  %34 = load i16, ptr %33, align 2, !tbaa !5
  %35 = sext i16 %34 to i64
  %36 = getelementptr inbounds nuw i8, ptr %1, i64 22
  %37 = load i16, ptr %36, align 2, !tbaa !5
  %38 = sext i16 %37 to i64
  %39 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %40 = load i16, ptr %39, align 2, !tbaa !5
  %41 = sext i16 %40 to i64
  %42 = getelementptr inbounds nuw i8, ptr %1, i64 26
  %43 = load i16, ptr %42, align 2, !tbaa !5
  %44 = sext i16 %43 to i64
  %45 = getelementptr inbounds nuw i8, ptr %1, i64 28
  %46 = load i16, ptr %45, align 2, !tbaa !5
  %47 = sext i16 %46 to i64
  %48 = getelementptr inbounds nuw i8, ptr %1, i64 30
  %49 = load i16, ptr %48, align 2, !tbaa !5
  %50 = sext i16 %49 to i64
  %51 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %52 = load i16, ptr %51, align 2, !tbaa !5
  %53 = sext i16 %52 to i64
  %54 = getelementptr inbounds nuw i8, ptr %1, i64 34
  %55 = load i16, ptr %54, align 2, !tbaa !5
  %56 = sext i16 %55 to i64
  %57 = getelementptr inbounds nuw i8, ptr %1, i64 36
  %58 = load i16, ptr %57, align 2, !tbaa !5
  %59 = sext i16 %58 to i64
  %60 = getelementptr inbounds nuw i8, ptr %1, i64 38
  %61 = load i16, ptr %60, align 2, !tbaa !5
  %62 = sext i16 %61 to i64
  %63 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %64 = load i16, ptr %63, align 2, !tbaa !5
  %65 = sext i16 %64 to i64
  %66 = getelementptr inbounds nuw i8, ptr %1, i64 42
  %67 = load i16, ptr %66, align 2, !tbaa !5
  %68 = sext i16 %67 to i64
  %69 = getelementptr inbounds nuw i8, ptr %1, i64 44
  %70 = load i16, ptr %69, align 2, !tbaa !5
  %71 = sext i16 %70 to i64
  %72 = getelementptr inbounds nuw i8, ptr %1, i64 46
  %73 = load i16, ptr %72, align 2, !tbaa !5
  %74 = sext i16 %73 to i64
  %75 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %76 = load i16, ptr %75, align 2, !tbaa !5
  %77 = sext i16 %76 to i64
  %78 = getelementptr inbounds nuw i8, ptr %1, i64 50
  %79 = load i16, ptr %78, align 2, !tbaa !5
  %80 = sext i16 %79 to i64
  %81 = getelementptr inbounds nuw i8, ptr %1, i64 52
  %82 = load i16, ptr %81, align 2, !tbaa !5
  %83 = sext i16 %82 to i64
  %84 = getelementptr inbounds nuw i8, ptr %1, i64 54
  %85 = load i16, ptr %84, align 2, !tbaa !5
  %86 = sext i16 %85 to i64
  %87 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %88 = load i16, ptr %87, align 2, !tbaa !5
  %89 = sext i16 %88 to i64
  %90 = getelementptr inbounds nuw i8, ptr %1, i64 58
  %91 = load i16, ptr %90, align 2, !tbaa !5
  %92 = sext i16 %91 to i64
  %93 = getelementptr inbounds nuw i8, ptr %1, i64 60
  %94 = load i16, ptr %93, align 2, !tbaa !5
  %95 = sext i16 %94 to i64
  %96 = getelementptr inbounds nuw i8, ptr %1, i64 62
  %97 = load i16, ptr %96, align 2, !tbaa !5
  %98 = sext i16 %97 to i64
  %99 = getelementptr inbounds nuw i8, ptr %1, i64 64
  %100 = load i16, ptr %99, align 2, !tbaa !5
  %101 = sext i16 %100 to i64
  %102 = getelementptr inbounds nuw i8, ptr %1, i64 66
  %103 = load i16, ptr %102, align 2, !tbaa !5
  %104 = sext i16 %103 to i64
  %105 = getelementptr inbounds nuw i8, ptr %1, i64 68
  %106 = load i16, ptr %105, align 2, !tbaa !5
  %107 = sext i16 %106 to i64
  %108 = getelementptr inbounds nuw i8, ptr %1, i64 70
  %109 = load i16, ptr %108, align 2, !tbaa !5
  %110 = sext i16 %109 to i64
  %111 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %112 = load i16, ptr %111, align 2, !tbaa !5
  %113 = sext i16 %112 to i64
  %114 = getelementptr inbounds nuw i8, ptr %1, i64 74
  %115 = load i16, ptr %114, align 2, !tbaa !5
  %116 = sext i16 %115 to i64
  %117 = getelementptr inbounds nuw i8, ptr %1, i64 76
  %118 = load i16, ptr %117, align 2, !tbaa !5
  %119 = sext i16 %118 to i64
  %120 = getelementptr inbounds nuw i8, ptr %1, i64 78
  %121 = load i16, ptr %120, align 2, !tbaa !5
  %122 = sext i16 %121 to i64
  %123 = getelementptr inbounds nuw i8, ptr %1, i64 80
  %124 = load i16, ptr %123, align 2, !tbaa !5
  %125 = sext i16 %124 to i64
  %126 = getelementptr inbounds nuw i8, ptr %1, i64 82
  %127 = load i16, ptr %126, align 2, !tbaa !5
  %128 = sext i16 %127 to i64
  %129 = getelementptr inbounds nuw i8, ptr %1, i64 84
  %130 = load i16, ptr %129, align 2, !tbaa !5
  %131 = sext i16 %130 to i64
  %132 = getelementptr inbounds nuw i8, ptr %1, i64 86
  %133 = load i16, ptr %132, align 2, !tbaa !5
  %134 = sext i16 %133 to i64
  %135 = getelementptr inbounds nuw i8, ptr %1, i64 88
  %136 = load i16, ptr %135, align 2, !tbaa !5
  %137 = sext i16 %136 to i64
  %138 = getelementptr inbounds nuw i8, ptr %1, i64 90
  %139 = load i16, ptr %138, align 2, !tbaa !5
  %140 = sext i16 %139 to i64
  %141 = getelementptr inbounds nuw i8, ptr %1, i64 92
  %142 = load i16, ptr %141, align 2, !tbaa !5
  %143 = sext i16 %142 to i64
  %144 = getelementptr inbounds nuw i8, ptr %1, i64 94
  %145 = load i16, ptr %144, align 2, !tbaa !5
  %146 = sext i16 %145 to i64
  %147 = getelementptr inbounds nuw i8, ptr %1, i64 96
  %148 = load i16, ptr %147, align 2, !tbaa !5
  %149 = sext i16 %148 to i64
  %150 = getelementptr inbounds nuw i8, ptr %1, i64 98
  %151 = load i16, ptr %150, align 2, !tbaa !5
  %152 = sext i16 %151 to i64
  br label %153

153:                                              ; preds = %3, %153
  %154 = phi i64 [ 0, %3 ], [ %406, %153 ]
  %155 = getelementptr inbounds nuw i16, ptr %0, i64 %154
  %156 = load i16, ptr %155, align 2, !tbaa !5
  %157 = sext i16 %156 to i64
  %158 = mul nsw i64 %5, %157
  %159 = getelementptr inbounds nuw i8, ptr %155, i64 2
  %160 = load i16, ptr %159, align 2, !tbaa !5
  %161 = sext i16 %160 to i64
  %162 = mul nsw i64 %8, %161
  %163 = add nsw i64 %162, %158
  %164 = getelementptr inbounds nuw i8, ptr %155, i64 4
  %165 = load i16, ptr %164, align 2, !tbaa !5
  %166 = sext i16 %165 to i64
  %167 = mul nsw i64 %11, %166
  %168 = add nsw i64 %167, %163
  %169 = getelementptr inbounds nuw i8, ptr %155, i64 6
  %170 = load i16, ptr %169, align 2, !tbaa !5
  %171 = sext i16 %170 to i64
  %172 = mul nsw i64 %14, %171
  %173 = add nsw i64 %172, %168
  %174 = getelementptr inbounds nuw i8, ptr %155, i64 8
  %175 = load i16, ptr %174, align 2, !tbaa !5
  %176 = sext i16 %175 to i64
  %177 = mul nsw i64 %17, %176
  %178 = add nsw i64 %177, %173
  %179 = getelementptr inbounds nuw i8, ptr %155, i64 10
  %180 = load i16, ptr %179, align 2, !tbaa !5
  %181 = sext i16 %180 to i64
  %182 = mul nsw i64 %20, %181
  %183 = add nsw i64 %182, %178
  %184 = getelementptr inbounds nuw i8, ptr %155, i64 12
  %185 = load i16, ptr %184, align 2, !tbaa !5
  %186 = sext i16 %185 to i64
  %187 = mul nsw i64 %23, %186
  %188 = add nsw i64 %187, %183
  %189 = getelementptr inbounds nuw i8, ptr %155, i64 14
  %190 = load i16, ptr %189, align 2, !tbaa !5
  %191 = sext i16 %190 to i64
  %192 = mul nsw i64 %26, %191
  %193 = add nsw i64 %192, %188
  %194 = getelementptr inbounds nuw i8, ptr %155, i64 16
  %195 = load i16, ptr %194, align 2, !tbaa !5
  %196 = sext i16 %195 to i64
  %197 = mul nsw i64 %29, %196
  %198 = add nsw i64 %197, %193
  %199 = getelementptr inbounds nuw i8, ptr %155, i64 18
  %200 = load i16, ptr %199, align 2, !tbaa !5
  %201 = sext i16 %200 to i64
  %202 = mul nsw i64 %32, %201
  %203 = add nsw i64 %202, %198
  %204 = getelementptr inbounds nuw i8, ptr %155, i64 20
  %205 = load i16, ptr %204, align 2, !tbaa !5
  %206 = sext i16 %205 to i64
  %207 = mul nsw i64 %35, %206
  %208 = add nsw i64 %207, %203
  %209 = getelementptr inbounds nuw i8, ptr %155, i64 22
  %210 = load i16, ptr %209, align 2, !tbaa !5
  %211 = sext i16 %210 to i64
  %212 = mul nsw i64 %38, %211
  %213 = add nsw i64 %212, %208
  %214 = getelementptr inbounds nuw i8, ptr %155, i64 24
  %215 = load i16, ptr %214, align 2, !tbaa !5
  %216 = sext i16 %215 to i64
  %217 = mul nsw i64 %41, %216
  %218 = add nsw i64 %217, %213
  %219 = getelementptr inbounds nuw i8, ptr %155, i64 26
  %220 = load i16, ptr %219, align 2, !tbaa !5
  %221 = sext i16 %220 to i64
  %222 = mul nsw i64 %44, %221
  %223 = add nsw i64 %222, %218
  %224 = getelementptr inbounds nuw i8, ptr %155, i64 28
  %225 = load i16, ptr %224, align 2, !tbaa !5
  %226 = sext i16 %225 to i64
  %227 = mul nsw i64 %47, %226
  %228 = add nsw i64 %227, %223
  %229 = getelementptr inbounds nuw i8, ptr %155, i64 30
  %230 = load i16, ptr %229, align 2, !tbaa !5
  %231 = sext i16 %230 to i64
  %232 = mul nsw i64 %50, %231
  %233 = add nsw i64 %232, %228
  %234 = getelementptr inbounds nuw i8, ptr %155, i64 32
  %235 = load i16, ptr %234, align 2, !tbaa !5
  %236 = sext i16 %235 to i64
  %237 = mul nsw i64 %53, %236
  %238 = add nsw i64 %237, %233
  %239 = getelementptr inbounds nuw i8, ptr %155, i64 34
  %240 = load i16, ptr %239, align 2, !tbaa !5
  %241 = sext i16 %240 to i64
  %242 = mul nsw i64 %56, %241
  %243 = add nsw i64 %242, %238
  %244 = getelementptr inbounds nuw i8, ptr %155, i64 36
  %245 = load i16, ptr %244, align 2, !tbaa !5
  %246 = sext i16 %245 to i64
  %247 = mul nsw i64 %59, %246
  %248 = add nsw i64 %247, %243
  %249 = getelementptr inbounds nuw i8, ptr %155, i64 38
  %250 = load i16, ptr %249, align 2, !tbaa !5
  %251 = sext i16 %250 to i64
  %252 = mul nsw i64 %62, %251
  %253 = add nsw i64 %252, %248
  %254 = getelementptr inbounds nuw i8, ptr %155, i64 40
  %255 = load i16, ptr %254, align 2, !tbaa !5
  %256 = sext i16 %255 to i64
  %257 = mul nsw i64 %65, %256
  %258 = add nsw i64 %257, %253
  %259 = getelementptr inbounds nuw i8, ptr %155, i64 42
  %260 = load i16, ptr %259, align 2, !tbaa !5
  %261 = sext i16 %260 to i64
  %262 = mul nsw i64 %68, %261
  %263 = add nsw i64 %262, %258
  %264 = getelementptr inbounds nuw i8, ptr %155, i64 44
  %265 = load i16, ptr %264, align 2, !tbaa !5
  %266 = sext i16 %265 to i64
  %267 = mul nsw i64 %71, %266
  %268 = add nsw i64 %267, %263
  %269 = getelementptr inbounds nuw i8, ptr %155, i64 46
  %270 = load i16, ptr %269, align 2, !tbaa !5
  %271 = sext i16 %270 to i64
  %272 = mul nsw i64 %74, %271
  %273 = add nsw i64 %272, %268
  %274 = getelementptr inbounds nuw i8, ptr %155, i64 48
  %275 = load i16, ptr %274, align 2, !tbaa !5
  %276 = sext i16 %275 to i64
  %277 = mul nsw i64 %77, %276
  %278 = add nsw i64 %277, %273
  %279 = getelementptr inbounds nuw i8, ptr %155, i64 50
  %280 = load i16, ptr %279, align 2, !tbaa !5
  %281 = sext i16 %280 to i64
  %282 = mul nsw i64 %80, %281
  %283 = add nsw i64 %282, %278
  %284 = getelementptr inbounds nuw i8, ptr %155, i64 52
  %285 = load i16, ptr %284, align 2, !tbaa !5
  %286 = sext i16 %285 to i64
  %287 = mul nsw i64 %83, %286
  %288 = add nsw i64 %287, %283
  %289 = getelementptr inbounds nuw i8, ptr %155, i64 54
  %290 = load i16, ptr %289, align 2, !tbaa !5
  %291 = sext i16 %290 to i64
  %292 = mul nsw i64 %86, %291
  %293 = add nsw i64 %292, %288
  %294 = getelementptr inbounds nuw i8, ptr %155, i64 56
  %295 = load i16, ptr %294, align 2, !tbaa !5
  %296 = sext i16 %295 to i64
  %297 = mul nsw i64 %89, %296
  %298 = add nsw i64 %297, %293
  %299 = getelementptr inbounds nuw i8, ptr %155, i64 58
  %300 = load i16, ptr %299, align 2, !tbaa !5
  %301 = sext i16 %300 to i64
  %302 = mul nsw i64 %92, %301
  %303 = add nsw i64 %302, %298
  %304 = getelementptr inbounds nuw i8, ptr %155, i64 60
  %305 = load i16, ptr %304, align 2, !tbaa !5
  %306 = sext i16 %305 to i64
  %307 = mul nsw i64 %95, %306
  %308 = add nsw i64 %307, %303
  %309 = getelementptr inbounds nuw i8, ptr %155, i64 62
  %310 = load i16, ptr %309, align 2, !tbaa !5
  %311 = sext i16 %310 to i64
  %312 = mul nsw i64 %98, %311
  %313 = add nsw i64 %312, %308
  %314 = getelementptr inbounds nuw i8, ptr %155, i64 64
  %315 = load i16, ptr %314, align 2, !tbaa !5
  %316 = sext i16 %315 to i64
  %317 = mul nsw i64 %101, %316
  %318 = add nsw i64 %317, %313
  %319 = getelementptr inbounds nuw i8, ptr %155, i64 66
  %320 = load i16, ptr %319, align 2, !tbaa !5
  %321 = sext i16 %320 to i64
  %322 = mul nsw i64 %104, %321
  %323 = add nsw i64 %322, %318
  %324 = getelementptr inbounds nuw i8, ptr %155, i64 68
  %325 = load i16, ptr %324, align 2, !tbaa !5
  %326 = sext i16 %325 to i64
  %327 = mul nsw i64 %107, %326
  %328 = add nsw i64 %327, %323
  %329 = getelementptr inbounds nuw i8, ptr %155, i64 70
  %330 = load i16, ptr %329, align 2, !tbaa !5
  %331 = sext i16 %330 to i64
  %332 = mul nsw i64 %110, %331
  %333 = add nsw i64 %332, %328
  %334 = getelementptr inbounds nuw i8, ptr %155, i64 72
  %335 = load i16, ptr %334, align 2, !tbaa !5
  %336 = sext i16 %335 to i64
  %337 = mul nsw i64 %113, %336
  %338 = add nsw i64 %337, %333
  %339 = getelementptr inbounds nuw i8, ptr %155, i64 74
  %340 = load i16, ptr %339, align 2, !tbaa !5
  %341 = sext i16 %340 to i64
  %342 = mul nsw i64 %116, %341
  %343 = add nsw i64 %342, %338
  %344 = getelementptr inbounds nuw i8, ptr %155, i64 76
  %345 = load i16, ptr %344, align 2, !tbaa !5
  %346 = sext i16 %345 to i64
  %347 = mul nsw i64 %119, %346
  %348 = add nsw i64 %347, %343
  %349 = getelementptr inbounds nuw i8, ptr %155, i64 78
  %350 = load i16, ptr %349, align 2, !tbaa !5
  %351 = sext i16 %350 to i64
  %352 = mul nsw i64 %122, %351
  %353 = add nsw i64 %352, %348
  %354 = getelementptr inbounds nuw i8, ptr %155, i64 80
  %355 = load i16, ptr %354, align 2, !tbaa !5
  %356 = sext i16 %355 to i64
  %357 = mul nsw i64 %125, %356
  %358 = add nsw i64 %357, %353
  %359 = getelementptr inbounds nuw i8, ptr %155, i64 82
  %360 = load i16, ptr %359, align 2, !tbaa !5
  %361 = sext i16 %360 to i64
  %362 = mul nsw i64 %128, %361
  %363 = add nsw i64 %362, %358
  %364 = getelementptr inbounds nuw i8, ptr %155, i64 84
  %365 = load i16, ptr %364, align 2, !tbaa !5
  %366 = sext i16 %365 to i64
  %367 = mul nsw i64 %131, %366
  %368 = add nsw i64 %367, %363
  %369 = getelementptr inbounds nuw i8, ptr %155, i64 86
  %370 = load i16, ptr %369, align 2, !tbaa !5
  %371 = sext i16 %370 to i64
  %372 = mul nsw i64 %134, %371
  %373 = add nsw i64 %372, %368
  %374 = getelementptr inbounds nuw i8, ptr %155, i64 88
  %375 = load i16, ptr %374, align 2, !tbaa !5
  %376 = sext i16 %375 to i64
  %377 = mul nsw i64 %137, %376
  %378 = add nsw i64 %377, %373
  %379 = getelementptr inbounds nuw i8, ptr %155, i64 90
  %380 = load i16, ptr %379, align 2, !tbaa !5
  %381 = sext i16 %380 to i64
  %382 = mul nsw i64 %140, %381
  %383 = add nsw i64 %382, %378
  %384 = getelementptr inbounds nuw i8, ptr %155, i64 92
  %385 = load i16, ptr %384, align 2, !tbaa !5
  %386 = sext i16 %385 to i64
  %387 = mul nsw i64 %143, %386
  %388 = add nsw i64 %387, %383
  %389 = getelementptr inbounds nuw i8, ptr %155, i64 94
  %390 = load i16, ptr %389, align 2, !tbaa !5
  %391 = sext i16 %390 to i64
  %392 = mul nsw i64 %146, %391
  %393 = add nsw i64 %392, %388
  %394 = getelementptr inbounds nuw i8, ptr %155, i64 96
  %395 = load i16, ptr %394, align 2, !tbaa !5
  %396 = sext i16 %395 to i64
  %397 = mul nsw i64 %149, %396
  %398 = add nsw i64 %397, %393
  %399 = getelementptr inbounds nuw i8, ptr %155, i64 98
  %400 = load i16, ptr %399, align 2, !tbaa !5
  %401 = sext i16 %400 to i64
  %402 = mul nsw i64 %152, %401
  %403 = add nsw i64 %402, %398
  %404 = ashr i64 %403, 15
  %405 = getelementptr inbounds nuw i64, ptr %2, i64 %154
  store i64 %404, ptr %405, align 8, !tbaa !24
  %406 = add nuw nsw i64 %154, 1
  %407 = icmp eq i64 %406, 50
  br i1 %407, label %408, label %153, !llvm.loop !27

408:                                              ; preds = %153
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @fir_no_red_ld(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds i8, ptr %0, i64 10
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %6 = load <4 x i16>, ptr %1, align 2, !tbaa !5
  %7 = shufflevector <4 x i16> %6, <4 x i16> poison, <2 x i32> <i32 0, i32 2>
  %8 = shufflevector <4 x i16> %6, <4 x i16> poison, <2 x i32> <i32 1, i32 3>
  %9 = load <4 x i16>, ptr %5, align 2, !tbaa !5
  %10 = shufflevector <4 x i16> %9, <4 x i16> poison, <2 x i32> <i32 0, i32 2>
  %11 = shufflevector <4 x i16> %9, <4 x i16> poison, <2 x i32> <i32 1, i32 3>
  %12 = sext <2 x i16> %7 to <2 x i32>
  %13 = sext <2 x i16> %10 to <2 x i32>
  %14 = sext <2 x i16> %8 to <2 x i32>
  %15 = sext <2 x i16> %11 to <2 x i32>
  %16 = getelementptr inbounds i8, ptr %0, i64 18
  %17 = getelementptr inbounds i8, ptr %0, i64 26
  %18 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %19 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %20 = load <4 x i16>, ptr %18, align 2, !tbaa !5
  %21 = shufflevector <4 x i16> %20, <4 x i16> poison, <2 x i32> <i32 0, i32 2>
  %22 = shufflevector <4 x i16> %20, <4 x i16> poison, <2 x i32> <i32 1, i32 3>
  %23 = load <4 x i16>, ptr %19, align 2, !tbaa !5
  %24 = shufflevector <4 x i16> %23, <4 x i16> poison, <2 x i32> <i32 0, i32 2>
  %25 = shufflevector <4 x i16> %23, <4 x i16> poison, <2 x i32> <i32 1, i32 3>
  %26 = sext <2 x i16> %21 to <2 x i32>
  %27 = sext <2 x i16> %24 to <2 x i32>
  %28 = sext <2 x i16> %22 to <2 x i32>
  %29 = sext <2 x i16> %25 to <2 x i32>
  %30 = getelementptr inbounds i8, ptr %0, i64 34
  %31 = getelementptr inbounds i8, ptr %0, i64 42
  %32 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %33 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %34 = load <4 x i16>, ptr %32, align 2, !tbaa !5
  %35 = shufflevector <4 x i16> %34, <4 x i16> poison, <2 x i32> <i32 0, i32 2>
  %36 = shufflevector <4 x i16> %34, <4 x i16> poison, <2 x i32> <i32 1, i32 3>
  %37 = load <4 x i16>, ptr %33, align 2, !tbaa !5
  %38 = shufflevector <4 x i16> %37, <4 x i16> poison, <2 x i32> <i32 0, i32 2>
  %39 = shufflevector <4 x i16> %37, <4 x i16> poison, <2 x i32> <i32 1, i32 3>
  %40 = sext <2 x i16> %35 to <2 x i32>
  %41 = sext <2 x i16> %38 to <2 x i32>
  %42 = sext <2 x i16> %36 to <2 x i32>
  %43 = sext <2 x i16> %39 to <2 x i32>
  %44 = getelementptr inbounds i8, ptr %0, i64 50
  %45 = getelementptr inbounds i8, ptr %0, i64 58
  %46 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %47 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %48 = load <4 x i16>, ptr %46, align 2, !tbaa !5
  %49 = shufflevector <4 x i16> %48, <4 x i16> poison, <2 x i32> <i32 0, i32 2>
  %50 = shufflevector <4 x i16> %48, <4 x i16> poison, <2 x i32> <i32 1, i32 3>
  %51 = load <4 x i16>, ptr %47, align 2, !tbaa !5
  %52 = shufflevector <4 x i16> %51, <4 x i16> poison, <2 x i32> <i32 0, i32 2>
  %53 = shufflevector <4 x i16> %51, <4 x i16> poison, <2 x i32> <i32 1, i32 3>
  %54 = sext <2 x i16> %49 to <2 x i32>
  %55 = sext <2 x i16> %52 to <2 x i32>
  %56 = sext <2 x i16> %50 to <2 x i32>
  %57 = sext <2 x i16> %53 to <2 x i32>
  br label %58

58:                                               ; preds = %58, %3
  %59 = phi i64 [ 0, %3 ], [ %229, %58 ]
  %60 = getelementptr inbounds nuw i16, ptr %0, i64 %59
  %61 = load i16, ptr %60, align 2, !tbaa !5
  %62 = insertelement <2 x i16> poison, i16 %61, i64 1
  %63 = or disjoint i64 %59, 1
  %64 = getelementptr inbounds nuw i16, ptr %0, i64 %63
  %65 = getelementptr inbounds i16, ptr %4, i64 %59
  %66 = load <4 x i16>, ptr %64, align 2, !tbaa !5
  %67 = shufflevector <4 x i16> %66, <4 x i16> poison, <2 x i32> <i32 0, i32 2>
  %68 = shufflevector <4 x i16> %66, <4 x i16> poison, <2 x i32> <i32 1, i32 3>
  %69 = load <4 x i16>, ptr %65, align 2, !tbaa !5
  %70 = shufflevector <4 x i16> %69, <4 x i16> poison, <2 x i32> <i32 0, i32 2>
  %71 = shufflevector <4 x i16> %69, <4 x i16> poison, <2 x i32> <i32 1, i32 3>
  %72 = shufflevector <2 x i16> %62, <2 x i16> %68, <2 x i32> <i32 1, i32 2>
  %73 = shufflevector <4 x i16> %66, <4 x i16> %69, <2 x i32> <i32 3, i32 5>
  %74 = sext <2 x i16> %72 to <2 x i32>
  %75 = sext <2 x i16> %73 to <2 x i32>
  %76 = mul nsw <2 x i32> %12, %74
  %77 = mul nsw <2 x i32> %13, %75
  %78 = sext <2 x i32> %76 to <2 x i64>
  %79 = sext <2 x i32> %77 to <2 x i64>
  %80 = sext <2 x i16> %67 to <2 x i32>
  %81 = sext <2 x i16> %70 to <2 x i32>
  %82 = mul nsw <2 x i32> %12, %80
  %83 = mul nsw <2 x i32> %13, %81
  %84 = sext <2 x i32> %82 to <2 x i64>
  %85 = sext <2 x i32> %83 to <2 x i64>
  %86 = mul nsw <2 x i32> %14, %80
  %87 = mul nsw <2 x i32> %15, %81
  %88 = sext <2 x i32> %86 to <2 x i64>
  %89 = sext <2 x i32> %87 to <2 x i64>
  %90 = add nsw <2 x i64> %78, %88
  %91 = add nsw <2 x i64> %79, %89
  %92 = sext <2 x i16> %68 to <2 x i32>
  %93 = sext <2 x i16> %71 to <2 x i32>
  %94 = mul nsw <2 x i32> %14, %92
  %95 = mul nsw <2 x i32> %15, %93
  %96 = sext <2 x i32> %94 to <2 x i64>
  %97 = sext <2 x i32> %95 to <2 x i64>
  %98 = add nsw <2 x i64> %84, %96
  %99 = add nsw <2 x i64> %85, %97
  %100 = getelementptr inbounds i16, ptr %16, i64 %59
  %101 = getelementptr inbounds i16, ptr %17, i64 %59
  %102 = load <4 x i16>, ptr %100, align 2, !tbaa !5
  %103 = shufflevector <4 x i16> %102, <4 x i16> poison, <2 x i32> <i32 0, i32 2>
  %104 = shufflevector <4 x i16> %102, <4 x i16> poison, <2 x i32> <i32 1, i32 3>
  %105 = load <4 x i16>, ptr %101, align 2, !tbaa !5
  %106 = shufflevector <4 x i16> %105, <4 x i16> poison, <2 x i32> <i32 0, i32 2>
  %107 = shufflevector <4 x i16> %105, <4 x i16> poison, <2 x i32> <i32 1, i32 3>
  %108 = shufflevector <2 x i16> %71, <2 x i16> %104, <2 x i32> <i32 1, i32 2>
  %109 = shufflevector <4 x i16> %102, <4 x i16> %105, <2 x i32> <i32 3, i32 5>
  %110 = sext <2 x i16> %108 to <2 x i32>
  %111 = sext <2 x i16> %109 to <2 x i32>
  %112 = mul nsw <2 x i32> %26, %110
  %113 = mul nsw <2 x i32> %27, %111
  %114 = sext <2 x i32> %112 to <2 x i64>
  %115 = sext <2 x i32> %113 to <2 x i64>
  %116 = add nsw <2 x i64> %90, %114
  %117 = add nsw <2 x i64> %91, %115
  %118 = sext <2 x i16> %103 to <2 x i32>
  %119 = sext <2 x i16> %106 to <2 x i32>
  %120 = mul nsw <2 x i32> %26, %118
  %121 = mul nsw <2 x i32> %27, %119
  %122 = sext <2 x i32> %120 to <2 x i64>
  %123 = sext <2 x i32> %121 to <2 x i64>
  %124 = add nsw <2 x i64> %98, %122
  %125 = add nsw <2 x i64> %99, %123
  %126 = mul nsw <2 x i32> %28, %118
  %127 = mul nsw <2 x i32> %29, %119
  %128 = sext <2 x i32> %126 to <2 x i64>
  %129 = sext <2 x i32> %127 to <2 x i64>
  %130 = add nsw <2 x i64> %116, %128
  %131 = add nsw <2 x i64> %117, %129
  %132 = sext <2 x i16> %104 to <2 x i32>
  %133 = sext <2 x i16> %107 to <2 x i32>
  %134 = mul nsw <2 x i32> %28, %132
  %135 = mul nsw <2 x i32> %29, %133
  %136 = sext <2 x i32> %134 to <2 x i64>
  %137 = sext <2 x i32> %135 to <2 x i64>
  %138 = add nsw <2 x i64> %124, %136
  %139 = add nsw <2 x i64> %125, %137
  %140 = getelementptr inbounds i16, ptr %30, i64 %59
  %141 = getelementptr inbounds i16, ptr %31, i64 %59
  %142 = load <4 x i16>, ptr %140, align 2, !tbaa !5
  %143 = shufflevector <4 x i16> %142, <4 x i16> poison, <2 x i32> <i32 0, i32 2>
  %144 = shufflevector <4 x i16> %142, <4 x i16> poison, <2 x i32> <i32 1, i32 3>
  %145 = load <4 x i16>, ptr %141, align 2, !tbaa !5
  %146 = shufflevector <4 x i16> %145, <4 x i16> poison, <2 x i32> <i32 0, i32 2>
  %147 = shufflevector <4 x i16> %145, <4 x i16> poison, <2 x i32> <i32 1, i32 3>
  %148 = shufflevector <2 x i16> %107, <2 x i16> %144, <2 x i32> <i32 1, i32 2>
  %149 = shufflevector <4 x i16> %142, <4 x i16> %145, <2 x i32> <i32 3, i32 5>
  %150 = sext <2 x i16> %148 to <2 x i32>
  %151 = sext <2 x i16> %149 to <2 x i32>
  %152 = mul nsw <2 x i32> %40, %150
  %153 = mul nsw <2 x i32> %41, %151
  %154 = sext <2 x i32> %152 to <2 x i64>
  %155 = sext <2 x i32> %153 to <2 x i64>
  %156 = add nsw <2 x i64> %130, %154
  %157 = add nsw <2 x i64> %131, %155
  %158 = sext <2 x i16> %143 to <2 x i32>
  %159 = sext <2 x i16> %146 to <2 x i32>
  %160 = mul nsw <2 x i32> %40, %158
  %161 = mul nsw <2 x i32> %41, %159
  %162 = sext <2 x i32> %160 to <2 x i64>
  %163 = sext <2 x i32> %161 to <2 x i64>
  %164 = add nsw <2 x i64> %138, %162
  %165 = add nsw <2 x i64> %139, %163
  %166 = mul nsw <2 x i32> %42, %158
  %167 = mul nsw <2 x i32> %43, %159
  %168 = sext <2 x i32> %166 to <2 x i64>
  %169 = sext <2 x i32> %167 to <2 x i64>
  %170 = add nsw <2 x i64> %156, %168
  %171 = add nsw <2 x i64> %157, %169
  %172 = sext <2 x i16> %144 to <2 x i32>
  %173 = sext <2 x i16> %147 to <2 x i32>
  %174 = mul nsw <2 x i32> %42, %172
  %175 = mul nsw <2 x i32> %43, %173
  %176 = sext <2 x i32> %174 to <2 x i64>
  %177 = sext <2 x i32> %175 to <2 x i64>
  %178 = add nsw <2 x i64> %164, %176
  %179 = add nsw <2 x i64> %165, %177
  %180 = getelementptr inbounds i16, ptr %44, i64 %59
  %181 = getelementptr inbounds i16, ptr %45, i64 %59
  %182 = load <4 x i16>, ptr %180, align 2, !tbaa !5
  %183 = shufflevector <4 x i16> %182, <4 x i16> poison, <2 x i32> <i32 0, i32 2>
  %184 = shufflevector <4 x i16> %182, <4 x i16> poison, <2 x i32> <i32 1, i32 3>
  %185 = load <4 x i16>, ptr %181, align 2, !tbaa !5
  %186 = shufflevector <4 x i16> %185, <4 x i16> poison, <2 x i32> <i32 0, i32 2>
  %187 = shufflevector <4 x i16> %185, <4 x i16> poison, <2 x i32> <i32 1, i32 3>
  %188 = shufflevector <2 x i16> %147, <2 x i16> %184, <2 x i32> <i32 1, i32 2>
  %189 = shufflevector <4 x i16> %182, <4 x i16> %185, <2 x i32> <i32 3, i32 5>
  %190 = sext <2 x i16> %188 to <2 x i32>
  %191 = sext <2 x i16> %189 to <2 x i32>
  %192 = mul nsw <2 x i32> %54, %190
  %193 = mul nsw <2 x i32> %55, %191
  %194 = sext <2 x i32> %192 to <2 x i64>
  %195 = sext <2 x i32> %193 to <2 x i64>
  %196 = add nsw <2 x i64> %170, %194
  %197 = add nsw <2 x i64> %171, %195
  %198 = sext <2 x i16> %183 to <2 x i32>
  %199 = sext <2 x i16> %186 to <2 x i32>
  %200 = mul nsw <2 x i32> %54, %198
  %201 = mul nsw <2 x i32> %55, %199
  %202 = sext <2 x i32> %200 to <2 x i64>
  %203 = sext <2 x i32> %201 to <2 x i64>
  %204 = add nsw <2 x i64> %178, %202
  %205 = add nsw <2 x i64> %179, %203
  %206 = mul nsw <2 x i32> %56, %198
  %207 = mul nsw <2 x i32> %57, %199
  %208 = sext <2 x i32> %206 to <2 x i64>
  %209 = sext <2 x i32> %207 to <2 x i64>
  %210 = add <2 x i64> %196, %208
  %211 = add <2 x i64> %197, %209
  %212 = sext <2 x i16> %184 to <2 x i32>
  %213 = sext <2 x i16> %187 to <2 x i32>
  %214 = mul nsw <2 x i32> %56, %212
  %215 = mul nsw <2 x i32> %57, %213
  %216 = sext <2 x i32> %214 to <2 x i64>
  %217 = sext <2 x i32> %215 to <2 x i64>
  %218 = add <2 x i64> %204, %216
  %219 = add <2 x i64> %205, %217
  %220 = add <2 x i64> %211, %210
  %221 = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %220)
  %222 = add <2 x i64> %219, %218
  %223 = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %222)
  %224 = ashr i64 %221, 15
  %225 = getelementptr inbounds nuw i64, ptr %2, i64 %59
  store i64 %224, ptr %225, align 8, !tbaa !24
  %226 = ashr i64 %223, 15
  %227 = or disjoint i64 %59, 1
  %228 = getelementptr inbounds nuw i64, ptr %2, i64 %227
  store i64 %226, ptr %228, align 8, !tbaa !24
  %229 = add nuw nsw i64 %59, 2
  %230 = icmp samesign ult i64 %59, 98
  br i1 %230, label %58, label %231, !llvm.loop !28

231:                                              ; preds = %58
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i64 @latsynth(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = add nsw i64 %2, -1
  %6 = getelementptr inbounds i16, ptr %0, i64 %5
  %7 = load i16, ptr %6, align 2, !tbaa !5
  %8 = sext i16 %7 to i64
  %9 = getelementptr inbounds i16, ptr %1, i64 %5
  %10 = load i16, ptr %9, align 2, !tbaa !5
  %11 = sext i16 %10 to i64
  %12 = mul nsw i64 %11, %8
  %13 = sub nsw i64 %3, %12
  %14 = icmp sgt i64 %2, 1
  br i1 %14, label %17, label %15

15:                                               ; preds = %4
  %16 = lshr i64 %13, 16
  br label %77

17:                                               ; preds = %4
  %18 = add nsw i64 %2, -2
  %19 = and i64 %2, 1
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %37

21:                                               ; preds = %17
  %22 = getelementptr inbounds nuw i16, ptr %0, i64 %18
  %23 = load i16, ptr %22, align 2, !tbaa !5
  %24 = sext i16 %23 to i64
  %25 = getelementptr inbounds nuw i16, ptr %1, i64 %18
  %26 = load i16, ptr %25, align 2, !tbaa !5
  %27 = sext i16 %26 to i64
  %28 = mul nsw i64 %27, %24
  %29 = sub nsw i64 %13, %28
  %30 = lshr i64 %29, 16
  %31 = mul nsw i64 %30, %27
  %32 = lshr i64 %31, 16
  %33 = trunc i64 %32 to i16
  %34 = add i16 %23, %33
  %35 = getelementptr inbounds nuw i8, ptr %22, i64 2
  store i16 %34, ptr %35, align 2, !tbaa !5
  %36 = add nsw i64 %2, -3
  br label %37

37:                                               ; preds = %21, %17
  %38 = phi i64 [ poison, %17 ], [ %29, %21 ]
  %39 = phi i64 [ poison, %17 ], [ %30, %21 ]
  %40 = phi i64 [ %18, %17 ], [ %36, %21 ]
  %41 = phi i64 [ %13, %17 ], [ %29, %21 ]
  %42 = icmp eq i64 %18, 0
  br i1 %42, label %77, label %43

43:                                               ; preds = %37, %43
  %44 = phi i64 [ %75, %43 ], [ %40, %37 ]
  %45 = phi i64 [ %68, %43 ], [ %41, %37 ]
  %46 = getelementptr inbounds nuw i16, ptr %0, i64 %44
  %47 = load i16, ptr %46, align 2, !tbaa !5
  %48 = sext i16 %47 to i64
  %49 = getelementptr inbounds nuw i16, ptr %1, i64 %44
  %50 = load i16, ptr %49, align 2, !tbaa !5
  %51 = sext i16 %50 to i64
  %52 = mul nsw i64 %51, %48
  %53 = sub nsw i64 %45, %52
  %54 = lshr i64 %53, 16
  %55 = mul nsw i64 %54, %51
  %56 = lshr i64 %55, 16
  %57 = trunc i64 %56 to i16
  %58 = add i16 %47, %57
  %59 = getelementptr inbounds nuw i8, ptr %46, i64 2
  store i16 %58, ptr %59, align 2, !tbaa !5
  %60 = add nsw i64 %44, -1
  %61 = getelementptr inbounds nuw i16, ptr %0, i64 %60
  %62 = load i16, ptr %61, align 2, !tbaa !5
  %63 = sext i16 %62 to i64
  %64 = getelementptr inbounds nuw i16, ptr %1, i64 %60
  %65 = load i16, ptr %64, align 2, !tbaa !5
  %66 = sext i16 %65 to i64
  %67 = mul nsw i64 %66, %63
  %68 = sub nsw i64 %53, %67
  %69 = lshr i64 %68, 16
  %70 = mul nsw i64 %69, %66
  %71 = lshr i64 %70, 16
  %72 = trunc i64 %71 to i16
  %73 = add i16 %62, %72
  %74 = getelementptr inbounds nuw i8, ptr %61, i64 2
  store i16 %73, ptr %74, align 2, !tbaa !5
  %75 = add nsw i64 %44, -2
  %76 = icmp eq i64 %60, 0
  br i1 %76, label %77, label %43, !llvm.loop !29

77:                                               ; preds = %37, %43, %15
  %78 = phi i64 [ %16, %15 ], [ %39, %37 ], [ %69, %43 ]
  %79 = phi i64 [ %13, %15 ], [ %38, %37 ], [ %68, %43 ]
  %80 = trunc i64 %78 to i16
  store i16 %80, ptr %0, align 2, !tbaa !5
  ret i64 %79
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @iir1(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef %3) local_unnamed_addr #0 {
  %5 = load i16, ptr %1, align 2, !tbaa !5
  %6 = sext i16 %5 to i64
  br label %7

7:                                                ; preds = %4, %7
  %8 = phi i64 [ 0, %4 ], [ %38, %7 ]
  %9 = phi ptr [ %0, %4 ], [ %36, %7 ]
  %10 = phi i64 [ %6, %4 ], [ %35, %7 ]
  %11 = phi ptr [ %3, %4 ], [ %37, %7 ]
  %12 = getelementptr inbounds nuw i8, ptr %9, i64 4
  %13 = load i16, ptr %12, align 2, !tbaa !5
  %14 = sext i16 %13 to i64
  %15 = load i64, ptr %11, align 8, !tbaa !24
  %16 = mul nsw i64 %15, %14
  %17 = getelementptr inbounds nuw i8, ptr %9, i64 6
  %18 = load i16, ptr %17, align 2, !tbaa !5
  %19 = sext i16 %18 to i64
  %20 = getelementptr inbounds nuw i8, ptr %11, i64 8
  %21 = load i64, ptr %20, align 8, !tbaa !24
  %22 = mul nsw i64 %21, %19
  %23 = add nsw i64 %22, %16
  %24 = ashr i64 %23, 15
  %25 = add nsw i64 %24, %10
  %26 = load i16, ptr %9, align 2, !tbaa !5
  %27 = sext i16 %26 to i64
  %28 = mul nsw i64 %15, %27
  %29 = getelementptr inbounds nuw i8, ptr %9, i64 2
  %30 = load i16, ptr %29, align 2, !tbaa !5
  %31 = sext i16 %30 to i64
  %32 = mul nsw i64 %21, %31
  %33 = add nsw i64 %32, %28
  %34 = ashr i64 %33, 15
  %35 = add nsw i64 %34, %25
  store i64 %15, ptr %20, align 8, !tbaa !24
  store i64 %25, ptr %11, align 8, !tbaa !24
  %36 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %37 = getelementptr inbounds nuw i8, ptr %11, i64 16
  %38 = add nuw nsw i64 %8, 1
  %39 = icmp eq i64 %38, 50
  br i1 %39, label %40, label %7, !llvm.loop !30

40:                                               ; preds = %7
  store i64 %35, ptr %2, align 8, !tbaa !24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @codebook(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef returned %4, ptr nocapture noundef readnone %5, i16 noundef signext %6, i16 noundef signext %7) local_unnamed_addr #1 {
  ret i64 %4
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @jpegdct(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 20
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 18
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 22
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 2
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 6
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %11 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 10
  %13 = getelementptr inbounds nuw i8, ptr %1, i64 14
  br label %14

14:                                               ; preds = %2, %14
  %15 = phi i16 [ 0, %2 ], [ %156, %14 ]
  %16 = phi ptr [ %0, %2 ], [ %157, %14 ]
  %17 = load i16, ptr %16, align 2, !tbaa !5
  %18 = sext i16 %17 to i64
  %19 = getelementptr inbounds nuw i8, ptr %16, i64 14
  %20 = load i16, ptr %19, align 2, !tbaa !5
  %21 = sext i16 %20 to i64
  %22 = add nsw i64 %21, %18
  %23 = sub nsw i64 %18, %21
  %24 = getelementptr inbounds nuw i8, ptr %16, i64 2
  %25 = load i16, ptr %24, align 2, !tbaa !5
  %26 = sext i16 %25 to i64
  %27 = getelementptr inbounds nuw i8, ptr %16, i64 12
  %28 = load i16, ptr %27, align 2, !tbaa !5
  %29 = sext i16 %28 to i64
  %30 = add nsw i64 %29, %26
  %31 = sub nsw i64 %26, %29
  %32 = getelementptr inbounds nuw i8, ptr %16, i64 4
  %33 = load i16, ptr %32, align 2, !tbaa !5
  %34 = sext i16 %33 to i64
  %35 = getelementptr inbounds nuw i8, ptr %16, i64 10
  %36 = load i16, ptr %35, align 2, !tbaa !5
  %37 = sext i16 %36 to i64
  %38 = add nsw i64 %37, %34
  %39 = sub nsw i64 %34, %37
  %40 = getelementptr inbounds nuw i8, ptr %16, i64 6
  %41 = load i16, ptr %40, align 2, !tbaa !5
  %42 = sext i16 %41 to i64
  %43 = getelementptr inbounds nuw i8, ptr %16, i64 8
  %44 = load i16, ptr %43, align 2, !tbaa !5
  %45 = sext i16 %44 to i64
  %46 = add nsw i64 %45, %42
  %47 = sub nsw i64 %42, %45
  %48 = add nsw i64 %46, %22
  %49 = sub nsw i64 %22, %46
  %50 = add nsw i64 %38, %30
  %51 = sub nsw i64 %30, %38
  %52 = add nsw i64 %50, %48
  %53 = trunc i64 %52 to i16
  store i16 %53, ptr %16, align 2, !tbaa !5
  %54 = sub nsw i64 %48, %50
  %55 = trunc i64 %54 to i16
  %56 = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i16 %55, ptr %56, align 2, !tbaa !5
  %57 = add nsw i64 %51, %49
  %58 = trunc nsw i64 %57 to i32
  %59 = shl i32 %58, 16
  %60 = ashr exact i32 %59, 16
  %61 = load i16, ptr %3, align 2, !tbaa !5
  %62 = zext i16 %61 to i32
  %63 = mul nsw i32 %60, %62
  %64 = zext i32 %63 to i64
  %65 = load i16, ptr %4, align 2, !tbaa !5
  %66 = sext i16 %65 to i64
  %67 = mul nsw i64 %49, %66
  %68 = lshr i64 %67, 13
  %69 = add nuw nsw i64 %68, %64
  %70 = trunc i64 %69 to i16
  %71 = getelementptr inbounds nuw i8, ptr %16, i64 4
  store i16 %70, ptr %71, align 2, !tbaa !5
  %72 = load i16, ptr %5, align 2, !tbaa !5
  %73 = sext i16 %72 to i64
  %74 = mul nsw i64 %51, %73
  %75 = lshr i64 %74, 13
  %76 = add nuw nsw i64 %75, %64
  %77 = trunc i64 %76 to i16
  store i16 %77, ptr %27, align 2, !tbaa !5
  %78 = add nsw i64 %23, %47
  %79 = trunc nsw i64 %78 to i32
  %80 = shl i32 %79, 16
  %81 = ashr exact i32 %80, 16
  %82 = load i16, ptr %6, align 2, !tbaa !5
  %83 = zext i16 %82 to i32
  %84 = mul nsw i32 %81, %83
  %85 = zext i32 %84 to i64
  %86 = add nsw i64 %31, %39
  %87 = trunc nsw i64 %86 to i32
  %88 = shl i32 %87, 16
  %89 = ashr exact i32 %88, 16
  %90 = load i16, ptr %1, align 2, !tbaa !5
  %91 = zext i16 %90 to i32
  %92 = mul nsw i32 %89, %91
  %93 = zext i32 %92 to i64
  %94 = add nsw i64 %31, %47
  %95 = add nsw i64 %39, %23
  %96 = add nsw i64 %94, %95
  %97 = trunc nsw i64 %96 to i32
  %98 = shl i32 %97, 16
  %99 = ashr exact i32 %98, 16
  %100 = load i16, ptr %7, align 2, !tbaa !5
  %101 = zext i16 %100 to i32
  %102 = mul nsw i32 %99, %101
  %103 = zext i32 %102 to i64
  %104 = trunc nsw i64 %94 to i32
  %105 = shl i32 %104, 16
  %106 = ashr exact i32 %105, 16
  %107 = load i16, ptr %8, align 2, !tbaa !5
  %108 = zext i16 %107 to i32
  %109 = mul nsw i32 %106, %108
  %110 = zext i32 %109 to i64
  %111 = add nuw nsw i64 %110, %103
  %112 = trunc nsw i64 %95 to i32
  %113 = shl i32 %112, 16
  %114 = ashr exact i32 %113, 16
  %115 = load i16, ptr %9, align 2, !tbaa !5
  %116 = zext i16 %115 to i32
  %117 = mul nsw i32 %114, %116
  %118 = zext i32 %117 to i64
  %119 = add nuw nsw i64 %118, %103
  %120 = load i16, ptr %10, align 2, !tbaa !5
  %121 = zext i16 %120 to i64
  %122 = mul nsw i64 %47, %121
  %123 = add nuw nsw i64 %111, %85
  %124 = add nsw i64 %123, %122
  %125 = trunc i64 %124 to i32
  %126 = shl i32 %125, 16
  %127 = ashr i32 %126, 29
  %128 = trunc nsw i32 %127 to i16
  store i16 %128, ptr %19, align 2, !tbaa !5
  %129 = load i16, ptr %11, align 2, !tbaa !5
  %130 = zext i16 %129 to i64
  %131 = mul nsw i64 %39, %130
  %132 = add nuw nsw i64 %119, %93
  %133 = add nsw i64 %132, %131
  %134 = trunc i64 %133 to i32
  %135 = shl i32 %134, 16
  %136 = ashr i32 %135, 29
  %137 = trunc nsw i32 %136 to i16
  store i16 %137, ptr %35, align 2, !tbaa !5
  %138 = load i16, ptr %12, align 2, !tbaa !5
  %139 = zext i16 %138 to i64
  %140 = mul nsw i64 %31, %139
  %141 = add nuw nsw i64 %111, %93
  %142 = add nsw i64 %141, %140
  %143 = trunc i64 %142 to i32
  %144 = shl i32 %143, 16
  %145 = ashr i32 %144, 29
  %146 = trunc nsw i32 %145 to i16
  store i16 %146, ptr %40, align 2, !tbaa !5
  %147 = load i16, ptr %13, align 2, !tbaa !5
  %148 = zext i16 %147 to i64
  %149 = mul nsw i64 %23, %148
  %150 = add nuw nsw i64 %119, %85
  %151 = add nsw i64 %150, %149
  %152 = trunc i64 %151 to i32
  %153 = shl i32 %152, 16
  %154 = ashr i32 %153, 29
  %155 = trunc nsw i32 %154 to i16
  store i16 %155, ptr %24, align 2, !tbaa !5
  %156 = add nuw nsw i16 %15, 1
  %157 = getelementptr inbounds nuw i8, ptr %16, i64 16
  %158 = icmp eq i16 %156, 8
  br i1 %158, label %159, label %14, !llvm.loop !31

159:                                              ; preds = %14
  %160 = getelementptr inbounds i8, ptr %16, i64 -112
  br label %161

161:                                              ; preds = %161, %159
  %162 = phi i16 [ 0, %159 ], [ %305, %161 ]
  %163 = phi ptr [ %160, %159 ], [ %306, %161 ]
  %164 = load i16, ptr %163, align 2, !tbaa !5
  %165 = sext i16 %164 to i64
  %166 = getelementptr inbounds nuw i8, ptr %163, i64 112
  %167 = load i16, ptr %166, align 2, !tbaa !5
  %168 = sext i16 %167 to i64
  %169 = add nsw i64 %168, %165
  %170 = sub nsw i64 %165, %168
  %171 = getelementptr inbounds nuw i8, ptr %163, i64 16
  %172 = load i16, ptr %171, align 2, !tbaa !5
  %173 = sext i16 %172 to i64
  %174 = getelementptr inbounds nuw i8, ptr %163, i64 96
  %175 = load i16, ptr %174, align 2, !tbaa !5
  %176 = sext i16 %175 to i64
  %177 = add nsw i64 %176, %173
  %178 = sub nsw i64 %173, %176
  %179 = getelementptr inbounds nuw i8, ptr %163, i64 32
  %180 = load i16, ptr %179, align 2, !tbaa !5
  %181 = sext i16 %180 to i64
  %182 = getelementptr inbounds nuw i8, ptr %163, i64 80
  %183 = load i16, ptr %182, align 2, !tbaa !5
  %184 = sext i16 %183 to i64
  %185 = add nsw i64 %184, %181
  %186 = sub nsw i64 %181, %184
  %187 = getelementptr inbounds nuw i8, ptr %163, i64 48
  %188 = load i16, ptr %187, align 2, !tbaa !5
  %189 = sext i16 %188 to i64
  %190 = getelementptr inbounds nuw i8, ptr %163, i64 64
  %191 = load i16, ptr %190, align 2, !tbaa !5
  %192 = sext i16 %191 to i64
  %193 = add nsw i64 %192, %189
  %194 = sub nsw i64 %189, %192
  %195 = add nsw i64 %193, %169
  %196 = sub nsw i64 %169, %193
  %197 = add nsw i64 %185, %177
  %198 = sub nsw i64 %177, %185
  %199 = add nsw i64 %197, %195
  %200 = lshr i64 %199, 3
  %201 = trunc i64 %200 to i16
  store i16 %201, ptr %163, align 2, !tbaa !5
  %202 = sub nsw i64 %195, %197
  %203 = lshr i64 %202, 3
  %204 = trunc i64 %203 to i16
  %205 = getelementptr inbounds nuw i8, ptr %163, i64 64
  store i16 %204, ptr %205, align 2, !tbaa !5
  %206 = add nsw i64 %198, %196
  %207 = trunc nsw i64 %206 to i32
  %208 = shl i32 %207, 16
  %209 = ashr exact i32 %208, 16
  %210 = load i16, ptr %3, align 2, !tbaa !5
  %211 = zext i16 %210 to i32
  %212 = mul nsw i32 %209, %211
  %213 = zext i32 %212 to i64
  %214 = load i16, ptr %4, align 2, !tbaa !5
  %215 = sext i16 %214 to i64
  %216 = mul nsw i64 %196, %215
  %217 = lshr i64 %216, 16
  %218 = add nuw nsw i64 %217, %213
  %219 = trunc i64 %218 to i16
  %220 = getelementptr inbounds nuw i8, ptr %163, i64 32
  store i16 %219, ptr %220, align 2, !tbaa !5
  %221 = load i16, ptr %5, align 2, !tbaa !5
  %222 = sext i16 %221 to i64
  %223 = mul nsw i64 %198, %222
  %224 = lshr i64 %223, 16
  %225 = add nuw nsw i64 %224, %213
  %226 = trunc i64 %225 to i16
  store i16 %226, ptr %174, align 2, !tbaa !5
  %227 = add nsw i64 %170, %194
  %228 = trunc nsw i64 %227 to i32
  %229 = shl i32 %228, 16
  %230 = ashr exact i32 %229, 16
  %231 = load i16, ptr %6, align 2, !tbaa !5
  %232 = zext i16 %231 to i32
  %233 = mul nsw i32 %230, %232
  %234 = zext i32 %233 to i64
  %235 = add nsw i64 %178, %186
  %236 = trunc nsw i64 %235 to i32
  %237 = shl i32 %236, 16
  %238 = ashr exact i32 %237, 16
  %239 = load i16, ptr %1, align 2, !tbaa !5
  %240 = zext i16 %239 to i32
  %241 = mul nsw i32 %238, %240
  %242 = zext i32 %241 to i64
  %243 = add nsw i64 %178, %194
  %244 = add nsw i64 %186, %170
  %245 = add nsw i64 %243, %244
  %246 = trunc nsw i64 %245 to i32
  %247 = shl i32 %246, 16
  %248 = ashr exact i32 %247, 16
  %249 = load i16, ptr %7, align 2, !tbaa !5
  %250 = zext i16 %249 to i32
  %251 = mul nsw i32 %248, %250
  %252 = zext i32 %251 to i64
  %253 = trunc nsw i64 %243 to i32
  %254 = shl i32 %253, 16
  %255 = ashr exact i32 %254, 16
  %256 = load i16, ptr %8, align 2, !tbaa !5
  %257 = zext i16 %256 to i32
  %258 = mul nsw i32 %255, %257
  %259 = zext i32 %258 to i64
  %260 = add nuw nsw i64 %259, %252
  %261 = trunc nsw i64 %244 to i32
  %262 = shl i32 %261, 16
  %263 = ashr exact i32 %262, 16
  %264 = load i16, ptr %9, align 2, !tbaa !5
  %265 = zext i16 %264 to i32
  %266 = mul nsw i32 %263, %265
  %267 = zext i32 %266 to i64
  %268 = add nuw nsw i64 %267, %252
  %269 = load i16, ptr %10, align 2, !tbaa !5
  %270 = zext i16 %269 to i64
  %271 = mul nsw i64 %194, %270
  %272 = add nuw nsw i64 %260, %234
  %273 = add nsw i64 %272, %271
  %274 = trunc i64 %273 to i32
  %275 = shl i32 %274, 16
  %276 = ashr i32 %275, 31
  %277 = trunc nsw i32 %276 to i16
  store i16 %277, ptr %166, align 2, !tbaa !5
  %278 = load i16, ptr %11, align 2, !tbaa !5
  %279 = zext i16 %278 to i64
  %280 = mul nsw i64 %186, %279
  %281 = add nuw nsw i64 %268, %242
  %282 = add nsw i64 %281, %280
  %283 = trunc i64 %282 to i32
  %284 = shl i32 %283, 16
  %285 = ashr i32 %284, 31
  %286 = trunc nsw i32 %285 to i16
  store i16 %286, ptr %182, align 2, !tbaa !5
  %287 = load i16, ptr %12, align 2, !tbaa !5
  %288 = zext i16 %287 to i64
  %289 = mul nsw i64 %178, %288
  %290 = add nuw nsw i64 %260, %242
  %291 = add nsw i64 %290, %289
  %292 = trunc i64 %291 to i32
  %293 = shl i32 %292, 16
  %294 = ashr i32 %293, 31
  %295 = trunc nsw i32 %294 to i16
  store i16 %295, ptr %187, align 2, !tbaa !5
  %296 = load i16, ptr %13, align 2, !tbaa !5
  %297 = zext i16 %296 to i64
  %298 = mul nsw i64 %170, %297
  %299 = add nuw nsw i64 %268, %234
  %300 = add nsw i64 %299, %298
  %301 = trunc i64 %300 to i32
  %302 = shl i32 %301, 16
  %303 = ashr i32 %302, 31
  %304 = trunc nsw i32 %303 to i16
  store i16 %304, ptr %171, align 2, !tbaa !5
  %305 = add nuw nsw i16 %162, 1
  %306 = getelementptr inbounds nuw i8, ptr %163, i64 2
  %307 = icmp eq i16 %305, 8
  br i1 %307, label %308, label %161, !llvm.loop !31

308:                                              ; preds = %161
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @initialise_benchmark() local_unnamed_addr #1 {
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @warm_caches(i32 noundef %0) local_unnamed_addr #2 {
  tail call fastcc void @benchmark_body(i32 noundef 1, i32 noundef %0)
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc void @benchmark_body(i32 noundef range(i32 1, 82) %0, i32 noundef %1) unnamed_addr #3 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %481, label %4

4:                                                ; preds = %2, %478
  %5 = phi i32 [ %479, %478 ], [ 0, %2 ]
  br label %6

6:                                                ; preds = %4, %474
  %7 = phi i32 [ 0, %4 ], [ %476, %474 ]
  store i32 61166, ptr @e, align 4, !tbaa !32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(400) @a, ptr noundef nonnull align 16 dereferenceable(400) @__const.benchmark_body.in_a, i64 400, i1 false), !tbaa !5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(400) @b, ptr noundef nonnull align 16 dereferenceable(400) @__const.benchmark_body.in_b, i64 400, i1 false), !tbaa !5
  %8 = load <8 x i16>, ptr @b, align 16, !tbaa !5
  %9 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @b, i64 16), align 16, !tbaa !5
  %10 = sext <8 x i16> %8 to <8 x i32>
  %11 = sext <8 x i16> %9 to <8 x i32>
  %12 = mul nsw <8 x i32> %10, splat (i32 3)
  %13 = mul nsw <8 x i32> %11, splat (i32 3)
  %14 = lshr <8 x i32> %12, splat (i32 15)
  %15 = lshr <8 x i32> %13, splat (i32 15)
  %16 = load <8 x i16>, ptr @a, align 16, !tbaa !5
  %17 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @a, i64 16), align 16, !tbaa !5
  %18 = trunc <8 x i32> %14 to <8 x i16>
  %19 = trunc <8 x i32> %15 to <8 x i16>
  %20 = add <8 x i16> %16, %18
  %21 = add <8 x i16> %17, %19
  store <8 x i16> %20, ptr @a, align 16, !tbaa !5
  store <8 x i16> %21, ptr getelementptr inbounds nuw (i8, ptr @a, i64 16), align 16, !tbaa !5
  %22 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @b, i64 32), align 16, !tbaa !5
  %23 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @b, i64 48), align 16, !tbaa !5
  %24 = sext <8 x i16> %22 to <8 x i32>
  %25 = sext <8 x i16> %23 to <8 x i32>
  %26 = mul nsw <8 x i32> %24, splat (i32 3)
  %27 = mul nsw <8 x i32> %25, splat (i32 3)
  %28 = lshr <8 x i32> %26, splat (i32 15)
  %29 = lshr <8 x i32> %27, splat (i32 15)
  %30 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @a, i64 32), align 16, !tbaa !5
  %31 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @a, i64 48), align 16, !tbaa !5
  %32 = trunc <8 x i32> %28 to <8 x i16>
  %33 = trunc <8 x i32> %29 to <8 x i16>
  %34 = add <8 x i16> %30, %32
  %35 = add <8 x i16> %31, %33
  store <8 x i16> %34, ptr getelementptr inbounds nuw (i8, ptr @a, i64 32), align 16, !tbaa !5
  store <8 x i16> %35, ptr getelementptr inbounds nuw (i8, ptr @a, i64 48), align 16, !tbaa !5
  %36 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @b, i64 64), align 16, !tbaa !5
  %37 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @b, i64 80), align 16, !tbaa !5
  %38 = sext <8 x i16> %36 to <8 x i32>
  %39 = sext <8 x i16> %37 to <8 x i32>
  %40 = mul nsw <8 x i32> %38, splat (i32 3)
  %41 = mul nsw <8 x i32> %39, splat (i32 3)
  %42 = lshr <8 x i32> %40, splat (i32 15)
  %43 = lshr <8 x i32> %41, splat (i32 15)
  %44 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @a, i64 64), align 16, !tbaa !5
  %45 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @a, i64 80), align 16, !tbaa !5
  %46 = trunc <8 x i32> %42 to <8 x i16>
  %47 = trunc <8 x i32> %43 to <8 x i16>
  %48 = add <8 x i16> %44, %46
  %49 = add <8 x i16> %45, %47
  store <8 x i16> %48, ptr getelementptr inbounds nuw (i8, ptr @a, i64 64), align 16, !tbaa !5
  store <8 x i16> %49, ptr getelementptr inbounds nuw (i8, ptr @a, i64 80), align 16, !tbaa !5
  %50 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @b, i64 96), align 16, !tbaa !5
  %51 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @b, i64 112), align 16, !tbaa !5
  %52 = sext <8 x i16> %50 to <8 x i32>
  %53 = sext <8 x i16> %51 to <8 x i32>
  %54 = mul nsw <8 x i32> %52, splat (i32 3)
  %55 = mul nsw <8 x i32> %53, splat (i32 3)
  %56 = lshr <8 x i32> %54, splat (i32 15)
  %57 = lshr <8 x i32> %55, splat (i32 15)
  %58 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @a, i64 96), align 16, !tbaa !5
  %59 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @a, i64 112), align 16, !tbaa !5
  %60 = trunc <8 x i32> %56 to <8 x i16>
  %61 = trunc <8 x i32> %57 to <8 x i16>
  %62 = add <8 x i16> %58, %60
  %63 = add <8 x i16> %59, %61
  store <8 x i16> %62, ptr getelementptr inbounds nuw (i8, ptr @a, i64 96), align 16, !tbaa !5
  store <8 x i16> %63, ptr getelementptr inbounds nuw (i8, ptr @a, i64 112), align 16, !tbaa !5
  %64 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @b, i64 128), align 16, !tbaa !5
  %65 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @b, i64 144), align 16, !tbaa !5
  %66 = sext <8 x i16> %64 to <8 x i32>
  %67 = sext <8 x i16> %65 to <8 x i32>
  %68 = mul nsw <8 x i32> %66, splat (i32 3)
  %69 = mul nsw <8 x i32> %67, splat (i32 3)
  %70 = lshr <8 x i32> %68, splat (i32 15)
  %71 = lshr <8 x i32> %69, splat (i32 15)
  %72 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @a, i64 128), align 16, !tbaa !5
  %73 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @a, i64 144), align 16, !tbaa !5
  %74 = trunc <8 x i32> %70 to <8 x i16>
  %75 = trunc <8 x i32> %71 to <8 x i16>
  %76 = add <8 x i16> %72, %74
  %77 = add <8 x i16> %73, %75
  store <8 x i16> %76, ptr getelementptr inbounds nuw (i8, ptr @a, i64 128), align 16, !tbaa !5
  store <8 x i16> %77, ptr getelementptr inbounds nuw (i8, ptr @a, i64 144), align 16, !tbaa !5
  %78 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @b, i64 160), align 16, !tbaa !5
  %79 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @b, i64 176), align 16, !tbaa !5
  %80 = sext <8 x i16> %78 to <8 x i32>
  %81 = sext <8 x i16> %79 to <8 x i32>
  %82 = mul nsw <8 x i32> %80, splat (i32 3)
  %83 = mul nsw <8 x i32> %81, splat (i32 3)
  %84 = lshr <8 x i32> %82, splat (i32 15)
  %85 = lshr <8 x i32> %83, splat (i32 15)
  %86 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @a, i64 160), align 16, !tbaa !5
  %87 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @a, i64 176), align 16, !tbaa !5
  %88 = trunc <8 x i32> %84 to <8 x i16>
  %89 = trunc <8 x i32> %85 to <8 x i16>
  %90 = add <8 x i16> %86, %88
  %91 = add <8 x i16> %87, %89
  store <8 x i16> %90, ptr getelementptr inbounds nuw (i8, ptr @a, i64 160), align 16, !tbaa !5
  store <8 x i16> %91, ptr getelementptr inbounds nuw (i8, ptr @a, i64 176), align 16, !tbaa !5
  %92 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @b, i64 192), align 16, !tbaa !5
  %93 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @b, i64 208), align 16, !tbaa !5
  %94 = sext <8 x i16> %92 to <8 x i32>
  %95 = sext <8 x i16> %93 to <8 x i32>
  %96 = mul nsw <8 x i32> %94, splat (i32 3)
  %97 = mul nsw <8 x i32> %95, splat (i32 3)
  %98 = lshr <8 x i32> %96, splat (i32 15)
  %99 = lshr <8 x i32> %97, splat (i32 15)
  %100 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @a, i64 192), align 16, !tbaa !5
  %101 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @a, i64 208), align 16, !tbaa !5
  %102 = trunc <8 x i32> %98 to <8 x i16>
  %103 = trunc <8 x i32> %99 to <8 x i16>
  %104 = add <8 x i16> %100, %102
  %105 = add <8 x i16> %101, %103
  store <8 x i16> %104, ptr getelementptr inbounds nuw (i8, ptr @a, i64 192), align 16, !tbaa !5
  store <8 x i16> %105, ptr getelementptr inbounds nuw (i8, ptr @a, i64 208), align 16, !tbaa !5
  %106 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @b, i64 224), align 16, !tbaa !5
  %107 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @b, i64 240), align 16, !tbaa !5
  %108 = sext <8 x i16> %106 to <8 x i32>
  %109 = sext <8 x i16> %107 to <8 x i32>
  %110 = mul nsw <8 x i32> %108, splat (i32 3)
  %111 = mul nsw <8 x i32> %109, splat (i32 3)
  %112 = lshr <8 x i32> %110, splat (i32 15)
  %113 = lshr <8 x i32> %111, splat (i32 15)
  %114 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @a, i64 224), align 16, !tbaa !5
  %115 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @a, i64 240), align 16, !tbaa !5
  %116 = trunc <8 x i32> %112 to <8 x i16>
  %117 = trunc <8 x i32> %113 to <8 x i16>
  %118 = add <8 x i16> %114, %116
  %119 = add <8 x i16> %115, %117
  store <8 x i16> %118, ptr getelementptr inbounds nuw (i8, ptr @a, i64 224), align 16, !tbaa !5
  store <8 x i16> %119, ptr getelementptr inbounds nuw (i8, ptr @a, i64 240), align 16, !tbaa !5
  %120 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @b, i64 256), align 16, !tbaa !5
  %121 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @b, i64 272), align 16, !tbaa !5
  %122 = sext <8 x i16> %120 to <8 x i32>
  %123 = sext <8 x i16> %121 to <8 x i32>
  %124 = mul nsw <8 x i32> %122, splat (i32 3)
  %125 = mul nsw <8 x i32> %123, splat (i32 3)
  %126 = lshr <8 x i32> %124, splat (i32 15)
  %127 = lshr <8 x i32> %125, splat (i32 15)
  %128 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @a, i64 256), align 16, !tbaa !5
  %129 = load <8 x i16>, ptr getelementptr inbounds nuw (i8, ptr @a, i64 272), align 16, !tbaa !5
  %130 = trunc <8 x i32> %126 to <8 x i16>
  %131 = trunc <8 x i32> %127 to <8 x i16>
  %132 = add <8 x i16> %128, %130
  %133 = add <8 x i16> %129, %131
  store <8 x i16> %132, ptr getelementptr inbounds nuw (i8, ptr @a, i64 256), align 16, !tbaa !5
  store <8 x i16> %133, ptr getelementptr inbounds nuw (i8, ptr @a, i64 272), align 16, !tbaa !5
  %134 = load <4 x i16>, ptr getelementptr inbounds nuw (i8, ptr @b, i64 288), align 16, !tbaa !5
  %135 = sext <4 x i16> %134 to <4 x i32>
  %136 = mul nsw <4 x i32> %135, splat (i32 3)
  %137 = lshr <4 x i32> %136, splat (i32 15)
  %138 = load <4 x i16>, ptr getelementptr inbounds nuw (i8, ptr @a, i64 288), align 16, !tbaa !5
  %139 = trunc <4 x i32> %137 to <4 x i16>
  %140 = add <4 x i16> %138, %139
  store <4 x i16> %140, ptr getelementptr inbounds nuw (i8, ptr @a, i64 288), align 16, !tbaa !5
  %141 = load i16, ptr getelementptr inbounds nuw (i8, ptr @b, i64 296), align 8, !tbaa !5
  %142 = sext i16 %141 to i32
  %143 = mul nsw i32 %142, 3
  %144 = lshr i32 %143, 15
  %145 = load i16, ptr getelementptr inbounds nuw (i8, ptr @a, i64 296), align 8, !tbaa !5
  %146 = trunc i32 %144 to i16
  %147 = add i16 %145, %146
  store i16 %147, ptr getelementptr inbounds nuw (i8, ptr @a, i64 296), align 8, !tbaa !5
  %148 = load i16, ptr getelementptr inbounds nuw (i8, ptr @b, i64 298), align 2, !tbaa !5
  %149 = sext i16 %148 to i32
  %150 = mul nsw i32 %149, 3
  %151 = lshr i32 %150, 15
  %152 = load i16, ptr getelementptr inbounds nuw (i8, ptr @a, i64 298), align 2, !tbaa !5
  %153 = trunc i32 %151 to i16
  %154 = add i16 %152, %153
  store i16 %154, ptr getelementptr inbounds nuw (i8, ptr @a, i64 298), align 2, !tbaa !5
  %155 = load i64, ptr @output, align 16, !tbaa !24
  br label %156

156:                                              ; preds = %156, %6
  %157 = phi i64 [ %155, %6 ], [ %178, %156 ]
  %158 = phi i64 [ 0, %6 ], [ %181, %156 ]
  %159 = phi i16 [ 3, %6 ], [ %180, %156 ]
  %160 = getelementptr inbounds nuw i16, ptr @b, i64 %158
  %161 = load i16, ptr %160, align 4, !tbaa !5
  %162 = sext i16 %161 to i64
  %163 = getelementptr inbounds nuw i16, ptr @a, i64 %158
  %164 = load i16, ptr %163, align 4, !tbaa !5
  %165 = sext i16 %164 to i64
  %166 = mul nsw i64 %165, %162
  %167 = add nsw i64 %166, %157
  %168 = mul i16 %161, %161
  %169 = add i16 %168, %159
  %170 = or disjoint i64 %158, 1
  %171 = getelementptr inbounds nuw i16, ptr @b, i64 %170
  %172 = load i16, ptr %171, align 2, !tbaa !5
  %173 = sext i16 %172 to i64
  %174 = getelementptr inbounds nuw i16, ptr @a, i64 %170
  %175 = load i16, ptr %174, align 2, !tbaa !5
  %176 = sext i16 %175 to i64
  %177 = mul nsw i64 %176, %173
  %178 = add nsw i64 %177, %167
  %179 = mul i16 %172, %172
  %180 = add i16 %179, %169
  %181 = add nuw nsw i64 %158, 2
  %182 = icmp eq i64 %181, 150
  br i1 %182, label %183, label %156, !llvm.loop !34

183:                                              ; preds = %156
  store i64 %178, ptr @output, align 16, !tbaa !24
  store i16 %180, ptr @c, align 2, !tbaa !5
  tail call void @fir(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @output)
  %184 = load <4 x i16>, ptr @b, align 16, !tbaa !5
  %185 = shufflevector <4 x i16> %184, <4 x i16> poison, <2 x i32> <i32 0, i32 2>
  %186 = shufflevector <4 x i16> %184, <4 x i16> poison, <2 x i32> <i32 1, i32 3>
  %187 = load <4 x i16>, ptr getelementptr inbounds nuw (i8, ptr @b, i64 8), align 8, !tbaa !5
  %188 = shufflevector <4 x i16> %187, <4 x i16> poison, <2 x i32> <i32 0, i32 2>
  %189 = shufflevector <4 x i16> %187, <4 x i16> poison, <2 x i32> <i32 1, i32 3>
  %190 = sext <2 x i16> %185 to <2 x i32>
  %191 = sext <2 x i16> %188 to <2 x i32>
  %192 = sext <2 x i16> %186 to <2 x i32>
  %193 = sext <2 x i16> %189 to <2 x i32>
  %194 = load <4 x i16>, ptr getelementptr inbounds nuw (i8, ptr @b, i64 16), align 16, !tbaa !5
  %195 = shufflevector <4 x i16> %194, <4 x i16> poison, <2 x i32> <i32 0, i32 2>
  %196 = shufflevector <4 x i16> %194, <4 x i16> poison, <2 x i32> <i32 1, i32 3>
  %197 = load <4 x i16>, ptr getelementptr inbounds nuw (i8, ptr @b, i64 24), align 8, !tbaa !5
  %198 = shufflevector <4 x i16> %197, <4 x i16> poison, <2 x i32> <i32 0, i32 2>
  %199 = shufflevector <4 x i16> %197, <4 x i16> poison, <2 x i32> <i32 1, i32 3>
  %200 = sext <2 x i16> %195 to <2 x i32>
  %201 = sext <2 x i16> %198 to <2 x i32>
  %202 = sext <2 x i16> %196 to <2 x i32>
  %203 = sext <2 x i16> %199 to <2 x i32>
  %204 = load <4 x i16>, ptr getelementptr inbounds nuw (i8, ptr @b, i64 32), align 16, !tbaa !5
  %205 = shufflevector <4 x i16> %204, <4 x i16> poison, <2 x i32> <i32 0, i32 2>
  %206 = shufflevector <4 x i16> %204, <4 x i16> poison, <2 x i32> <i32 1, i32 3>
  %207 = load <4 x i16>, ptr getelementptr inbounds nuw (i8, ptr @b, i64 40), align 8, !tbaa !5
  %208 = shufflevector <4 x i16> %207, <4 x i16> poison, <2 x i32> <i32 0, i32 2>
  %209 = shufflevector <4 x i16> %207, <4 x i16> poison, <2 x i32> <i32 1, i32 3>
  %210 = sext <2 x i16> %205 to <2 x i32>
  %211 = sext <2 x i16> %208 to <2 x i32>
  %212 = sext <2 x i16> %206 to <2 x i32>
  %213 = sext <2 x i16> %209 to <2 x i32>
  %214 = load <4 x i16>, ptr getelementptr inbounds nuw (i8, ptr @b, i64 48), align 16, !tbaa !5
  %215 = shufflevector <4 x i16> %214, <4 x i16> poison, <2 x i32> <i32 0, i32 2>
  %216 = shufflevector <4 x i16> %214, <4 x i16> poison, <2 x i32> <i32 1, i32 3>
  %217 = load <4 x i16>, ptr getelementptr inbounds nuw (i8, ptr @b, i64 56), align 8, !tbaa !5
  %218 = shufflevector <4 x i16> %217, <4 x i16> poison, <2 x i32> <i32 0, i32 2>
  %219 = shufflevector <4 x i16> %217, <4 x i16> poison, <2 x i32> <i32 1, i32 3>
  %220 = sext <2 x i16> %215 to <2 x i32>
  %221 = sext <2 x i16> %218 to <2 x i32>
  %222 = sext <2 x i16> %216 to <2 x i32>
  %223 = sext <2 x i16> %219 to <2 x i32>
  br label %224

224:                                              ; preds = %183, %224
  %225 = phi i64 [ 0, %183 ], [ %395, %224 ]
  %226 = getelementptr inbounds nuw i16, ptr @a, i64 %225
  %227 = load i16, ptr %226, align 4, !tbaa !5
  %228 = insertelement <2 x i16> poison, i16 %227, i64 1
  %229 = or disjoint i64 %225, 1
  %230 = getelementptr inbounds nuw i16, ptr @a, i64 %229
  %231 = getelementptr inbounds i16, ptr getelementptr inbounds (i8, ptr @a, i64 10), i64 %225
  %232 = load <4 x i16>, ptr %230, align 2, !tbaa !5
  %233 = shufflevector <4 x i16> %232, <4 x i16> poison, <2 x i32> <i32 0, i32 2>
  %234 = shufflevector <4 x i16> %232, <4 x i16> poison, <2 x i32> <i32 1, i32 3>
  %235 = load <4 x i16>, ptr %231, align 2, !tbaa !5
  %236 = shufflevector <4 x i16> %235, <4 x i16> poison, <2 x i32> <i32 0, i32 2>
  %237 = shufflevector <4 x i16> %235, <4 x i16> poison, <2 x i32> <i32 1, i32 3>
  %238 = shufflevector <2 x i16> %228, <2 x i16> %234, <2 x i32> <i32 1, i32 2>
  %239 = shufflevector <4 x i16> %232, <4 x i16> %235, <2 x i32> <i32 3, i32 5>
  %240 = sext <2 x i16> %238 to <2 x i32>
  %241 = sext <2 x i16> %239 to <2 x i32>
  %242 = mul nsw <2 x i32> %190, %240
  %243 = mul nsw <2 x i32> %191, %241
  %244 = sext <2 x i32> %242 to <2 x i64>
  %245 = sext <2 x i32> %243 to <2 x i64>
  %246 = sext <2 x i16> %233 to <2 x i32>
  %247 = sext <2 x i16> %236 to <2 x i32>
  %248 = mul nsw <2 x i32> %190, %246
  %249 = mul nsw <2 x i32> %191, %247
  %250 = sext <2 x i32> %248 to <2 x i64>
  %251 = sext <2 x i32> %249 to <2 x i64>
  %252 = mul nsw <2 x i32> %192, %246
  %253 = mul nsw <2 x i32> %193, %247
  %254 = sext <2 x i32> %252 to <2 x i64>
  %255 = sext <2 x i32> %253 to <2 x i64>
  %256 = add nsw <2 x i64> %244, %254
  %257 = add nsw <2 x i64> %245, %255
  %258 = sext <2 x i16> %234 to <2 x i32>
  %259 = sext <2 x i16> %237 to <2 x i32>
  %260 = mul nsw <2 x i32> %192, %258
  %261 = mul nsw <2 x i32> %193, %259
  %262 = sext <2 x i32> %260 to <2 x i64>
  %263 = sext <2 x i32> %261 to <2 x i64>
  %264 = add nsw <2 x i64> %250, %262
  %265 = add nsw <2 x i64> %251, %263
  %266 = getelementptr inbounds i16, ptr getelementptr inbounds (i8, ptr @a, i64 18), i64 %225
  %267 = getelementptr inbounds i16, ptr getelementptr inbounds (i8, ptr @a, i64 26), i64 %225
  %268 = load <4 x i16>, ptr %266, align 2, !tbaa !5
  %269 = shufflevector <4 x i16> %268, <4 x i16> poison, <2 x i32> <i32 0, i32 2>
  %270 = shufflevector <4 x i16> %268, <4 x i16> poison, <2 x i32> <i32 1, i32 3>
  %271 = load <4 x i16>, ptr %267, align 2, !tbaa !5
  %272 = shufflevector <4 x i16> %271, <4 x i16> poison, <2 x i32> <i32 0, i32 2>
  %273 = shufflevector <4 x i16> %271, <4 x i16> poison, <2 x i32> <i32 1, i32 3>
  %274 = shufflevector <2 x i16> %237, <2 x i16> %270, <2 x i32> <i32 1, i32 2>
  %275 = shufflevector <4 x i16> %268, <4 x i16> %271, <2 x i32> <i32 3, i32 5>
  %276 = sext <2 x i16> %274 to <2 x i32>
  %277 = sext <2 x i16> %275 to <2 x i32>
  %278 = mul nsw <2 x i32> %200, %276
  %279 = mul nsw <2 x i32> %201, %277
  %280 = sext <2 x i32> %278 to <2 x i64>
  %281 = sext <2 x i32> %279 to <2 x i64>
  %282 = add nsw <2 x i64> %256, %280
  %283 = add nsw <2 x i64> %257, %281
  %284 = sext <2 x i16> %269 to <2 x i32>
  %285 = sext <2 x i16> %272 to <2 x i32>
  %286 = mul nsw <2 x i32> %200, %284
  %287 = mul nsw <2 x i32> %201, %285
  %288 = sext <2 x i32> %286 to <2 x i64>
  %289 = sext <2 x i32> %287 to <2 x i64>
  %290 = add nsw <2 x i64> %264, %288
  %291 = add nsw <2 x i64> %265, %289
  %292 = mul nsw <2 x i32> %202, %284
  %293 = mul nsw <2 x i32> %203, %285
  %294 = sext <2 x i32> %292 to <2 x i64>
  %295 = sext <2 x i32> %293 to <2 x i64>
  %296 = add nsw <2 x i64> %282, %294
  %297 = add nsw <2 x i64> %283, %295
  %298 = sext <2 x i16> %270 to <2 x i32>
  %299 = sext <2 x i16> %273 to <2 x i32>
  %300 = mul nsw <2 x i32> %202, %298
  %301 = mul nsw <2 x i32> %203, %299
  %302 = sext <2 x i32> %300 to <2 x i64>
  %303 = sext <2 x i32> %301 to <2 x i64>
  %304 = add nsw <2 x i64> %290, %302
  %305 = add nsw <2 x i64> %291, %303
  %306 = getelementptr inbounds i16, ptr getelementptr inbounds (i8, ptr @a, i64 34), i64 %225
  %307 = getelementptr inbounds i16, ptr getelementptr inbounds (i8, ptr @a, i64 42), i64 %225
  %308 = load <4 x i16>, ptr %306, align 2, !tbaa !5
  %309 = shufflevector <4 x i16> %308, <4 x i16> poison, <2 x i32> <i32 0, i32 2>
  %310 = shufflevector <4 x i16> %308, <4 x i16> poison, <2 x i32> <i32 1, i32 3>
  %311 = load <4 x i16>, ptr %307, align 2, !tbaa !5
  %312 = shufflevector <4 x i16> %311, <4 x i16> poison, <2 x i32> <i32 0, i32 2>
  %313 = shufflevector <4 x i16> %311, <4 x i16> poison, <2 x i32> <i32 1, i32 3>
  %314 = shufflevector <2 x i16> %273, <2 x i16> %310, <2 x i32> <i32 1, i32 2>
  %315 = shufflevector <4 x i16> %308, <4 x i16> %311, <2 x i32> <i32 3, i32 5>
  %316 = sext <2 x i16> %314 to <2 x i32>
  %317 = sext <2 x i16> %315 to <2 x i32>
  %318 = mul nsw <2 x i32> %210, %316
  %319 = mul nsw <2 x i32> %211, %317
  %320 = sext <2 x i32> %318 to <2 x i64>
  %321 = sext <2 x i32> %319 to <2 x i64>
  %322 = add nsw <2 x i64> %296, %320
  %323 = add nsw <2 x i64> %297, %321
  %324 = sext <2 x i16> %309 to <2 x i32>
  %325 = sext <2 x i16> %312 to <2 x i32>
  %326 = mul nsw <2 x i32> %210, %324
  %327 = mul nsw <2 x i32> %211, %325
  %328 = sext <2 x i32> %326 to <2 x i64>
  %329 = sext <2 x i32> %327 to <2 x i64>
  %330 = add nsw <2 x i64> %304, %328
  %331 = add nsw <2 x i64> %305, %329
  %332 = mul nsw <2 x i32> %212, %324
  %333 = mul nsw <2 x i32> %213, %325
  %334 = sext <2 x i32> %332 to <2 x i64>
  %335 = sext <2 x i32> %333 to <2 x i64>
  %336 = add nsw <2 x i64> %322, %334
  %337 = add nsw <2 x i64> %323, %335
  %338 = sext <2 x i16> %310 to <2 x i32>
  %339 = sext <2 x i16> %313 to <2 x i32>
  %340 = mul nsw <2 x i32> %212, %338
  %341 = mul nsw <2 x i32> %213, %339
  %342 = sext <2 x i32> %340 to <2 x i64>
  %343 = sext <2 x i32> %341 to <2 x i64>
  %344 = add nsw <2 x i64> %330, %342
  %345 = add nsw <2 x i64> %331, %343
  %346 = getelementptr inbounds i16, ptr getelementptr inbounds (i8, ptr @a, i64 50), i64 %225
  %347 = getelementptr inbounds i16, ptr getelementptr inbounds (i8, ptr @a, i64 58), i64 %225
  %348 = load <4 x i16>, ptr %346, align 2, !tbaa !5
  %349 = shufflevector <4 x i16> %348, <4 x i16> poison, <2 x i32> <i32 0, i32 2>
  %350 = shufflevector <4 x i16> %348, <4 x i16> poison, <2 x i32> <i32 1, i32 3>
  %351 = load <4 x i16>, ptr %347, align 2, !tbaa !5
  %352 = shufflevector <4 x i16> %351, <4 x i16> poison, <2 x i32> <i32 0, i32 2>
  %353 = shufflevector <4 x i16> %351, <4 x i16> poison, <2 x i32> <i32 1, i32 3>
  %354 = shufflevector <2 x i16> %313, <2 x i16> %350, <2 x i32> <i32 1, i32 2>
  %355 = shufflevector <4 x i16> %348, <4 x i16> %351, <2 x i32> <i32 3, i32 5>
  %356 = sext <2 x i16> %354 to <2 x i32>
  %357 = sext <2 x i16> %355 to <2 x i32>
  %358 = mul nsw <2 x i32> %220, %356
  %359 = mul nsw <2 x i32> %221, %357
  %360 = sext <2 x i32> %358 to <2 x i64>
  %361 = sext <2 x i32> %359 to <2 x i64>
  %362 = add nsw <2 x i64> %336, %360
  %363 = add nsw <2 x i64> %337, %361
  %364 = sext <2 x i16> %349 to <2 x i32>
  %365 = sext <2 x i16> %352 to <2 x i32>
  %366 = mul nsw <2 x i32> %220, %364
  %367 = mul nsw <2 x i32> %221, %365
  %368 = sext <2 x i32> %366 to <2 x i64>
  %369 = sext <2 x i32> %367 to <2 x i64>
  %370 = add nsw <2 x i64> %344, %368
  %371 = add nsw <2 x i64> %345, %369
  %372 = mul nsw <2 x i32> %222, %364
  %373 = mul nsw <2 x i32> %223, %365
  %374 = sext <2 x i32> %372 to <2 x i64>
  %375 = sext <2 x i32> %373 to <2 x i64>
  %376 = add <2 x i64> %362, %374
  %377 = add <2 x i64> %363, %375
  %378 = sext <2 x i16> %350 to <2 x i32>
  %379 = sext <2 x i16> %353 to <2 x i32>
  %380 = mul nsw <2 x i32> %222, %378
  %381 = mul nsw <2 x i32> %223, %379
  %382 = sext <2 x i32> %380 to <2 x i64>
  %383 = sext <2 x i32> %381 to <2 x i64>
  %384 = add <2 x i64> %370, %382
  %385 = add <2 x i64> %371, %383
  %386 = add <2 x i64> %377, %376
  %387 = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %386)
  %388 = add <2 x i64> %385, %384
  %389 = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %388)
  %390 = ashr i64 %387, 15
  %391 = getelementptr inbounds nuw i64, ptr @output, i64 %225
  store i64 %390, ptr %391, align 16, !tbaa !24
  %392 = ashr i64 %389, 15
  %393 = or disjoint i64 %225, 1
  %394 = getelementptr inbounds nuw i64, ptr @output, i64 %393
  store i64 %392, ptr %394, align 8, !tbaa !24
  %395 = add nuw nsw i64 %225, 2
  %396 = icmp samesign ult i64 %225, 98
  br i1 %396, label %224, label %397, !llvm.loop !28

397:                                              ; preds = %224
  %398 = load i16, ptr getelementptr inbounds nuw (i8, ptr @a, i64 198), align 2, !tbaa !5
  %399 = sext i16 %398 to i64
  %400 = mul nsw i64 %399, -3072
  %401 = add nsw i64 %400, 43690
  br label %402

402:                                              ; preds = %420, %397
  %403 = phi i64 [ 98, %397 ], [ %436, %420 ]
  %404 = phi i64 [ %401, %397 ], [ %429, %420 ]
  %405 = getelementptr inbounds nuw i16, ptr @a, i64 %403
  %406 = load i16, ptr %405, align 4, !tbaa !5
  %407 = sext i16 %406 to i64
  %408 = getelementptr inbounds nuw i16, ptr @b, i64 %403
  %409 = load i16, ptr %408, align 4, !tbaa !5
  %410 = sext i16 %409 to i64
  %411 = mul nsw i64 %410, %407
  %412 = sub nsw i64 %404, %411
  %413 = lshr i64 %412, 16
  %414 = mul nsw i64 %413, %410
  %415 = lshr i64 %414, 16
  %416 = trunc i64 %415 to i16
  %417 = add i16 %406, %416
  %418 = getelementptr inbounds nuw i8, ptr %405, i64 2
  store i16 %417, ptr %418, align 2, !tbaa !5
  %419 = icmp eq i64 %403, 0
  br i1 %419, label %437, label %420, !llvm.loop !29

420:                                              ; preds = %402
  %421 = add nsw i64 %403, -1
  %422 = getelementptr inbounds nuw i16, ptr @a, i64 %421
  %423 = load i16, ptr %422, align 2, !tbaa !5
  %424 = sext i16 %423 to i64
  %425 = getelementptr inbounds nuw i16, ptr @b, i64 %421
  %426 = load i16, ptr %425, align 2, !tbaa !5
  %427 = sext i16 %426 to i64
  %428 = mul nsw i64 %427, %424
  %429 = sub nsw i64 %412, %428
  %430 = lshr i64 %429, 16
  %431 = mul nsw i64 %430, %427
  %432 = lshr i64 %431, 16
  %433 = trunc i64 %432 to i16
  %434 = add i16 %423, %433
  %435 = getelementptr inbounds nuw i8, ptr %422, i64 2
  store i16 %434, ptr %435, align 4, !tbaa !5
  %436 = add nsw i64 %403, -2
  br label %402

437:                                              ; preds = %402
  %438 = trunc i64 %413 to i16
  store i16 %438, ptr @a, align 16, !tbaa !5
  store i64 %412, ptr @d, align 8, !tbaa !24
  %439 = load i16, ptr @b, align 16, !tbaa !5
  %440 = sext i16 %439 to i64
  br label %441

441:                                              ; preds = %441, %437
  %442 = phi i64 [ 0, %437 ], [ %472, %441 ]
  %443 = phi ptr [ @a, %437 ], [ %470, %441 ]
  %444 = phi i64 [ %440, %437 ], [ %469, %441 ]
  %445 = phi ptr [ @output, %437 ], [ %471, %441 ]
  %446 = getelementptr inbounds nuw i8, ptr %443, i64 4
  %447 = load i16, ptr %446, align 2, !tbaa !5
  %448 = sext i16 %447 to i64
  %449 = load i64, ptr %445, align 8, !tbaa !24
  %450 = mul nsw i64 %449, %448
  %451 = getelementptr inbounds nuw i8, ptr %443, i64 6
  %452 = load i16, ptr %451, align 2, !tbaa !5
  %453 = sext i16 %452 to i64
  %454 = getelementptr inbounds nuw i8, ptr %445, i64 8
  %455 = load i64, ptr %454, align 8, !tbaa !24
  %456 = mul nsw i64 %455, %453
  %457 = add nsw i64 %456, %450
  %458 = ashr i64 %457, 15
  %459 = add nsw i64 %458, %444
  %460 = load i16, ptr %443, align 2, !tbaa !5
  %461 = sext i16 %460 to i64
  %462 = mul nsw i64 %449, %461
  %463 = getelementptr inbounds nuw i8, ptr %443, i64 2
  %464 = load i16, ptr %463, align 2, !tbaa !5
  %465 = sext i16 %464 to i64
  %466 = mul nsw i64 %455, %465
  %467 = add nsw i64 %466, %462
  %468 = ashr i64 %467, 15
  %469 = add nsw i64 %468, %459
  store i64 %449, ptr %454, align 8, !tbaa !24
  store i64 %459, ptr %445, align 8, !tbaa !24
  %470 = getelementptr inbounds nuw i8, ptr %443, i64 8
  %471 = getelementptr inbounds nuw i8, ptr %445, i64 16
  %472 = add nuw nsw i64 %442, 1
  %473 = icmp eq i64 %472, 50
  br i1 %473, label %474, label %441, !llvm.loop !30

474:                                              ; preds = %441
  store i64 %469, ptr getelementptr inbounds nuw (i8, ptr @output, i64 800), align 16, !tbaa !24
  %475 = trunc i64 %412 to i32
  store i32 %475, ptr @e, align 4, !tbaa !32
  tail call void @jpegdct(ptr noundef nonnull @a, ptr noundef nonnull @b)
  %476 = add nuw i32 %7, 1
  %477 = icmp eq i32 %476, %1
  br i1 %477, label %478, label %6, !llvm.loop !35

478:                                              ; preds = %474
  %479 = add nuw nsw i32 %5, 1
  %480 = icmp eq i32 %479, %0
  br i1 %480, label %481, label %4, !llvm.loop !36

481:                                              ; preds = %478, %2
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @benchmark() local_unnamed_addr #4 {
  tail call fastcc void @benchmark_body(i32 noundef 81, i32 noundef 20)
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local range(i32 0, 2) i32 @verify_benchmark(i32 noundef %0) local_unnamed_addr #5 {
  %2 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(1600) @output, ptr noundef nonnull dereferenceable(1600) @__const.verify_benchmark.exp_output, i64 1600)
  %3 = icmp eq i32 %2, 0
  %4 = load i16, ptr @c, align 2
  %5 = icmp eq i16 %4, 10243
  %6 = select i1 %3, i1 %5, i1 false
  %7 = load i64, ptr @d, align 8
  %8 = icmp eq i64 %7, -441886230
  %9 = select i1 %6, i1 %8, i1 false
  %10 = load i32, ptr @e, align 4
  %11 = icmp eq i32 %10, -441886230
  %12 = select i1 %9, i1 %11, i1 false
  %13 = zext i1 %12 to i32
  ret i32 %13
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #8

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nofree nounwind willreturn memory(argmem: read) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"short", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10}
!10 = distinct !{!10, !11}
!11 = distinct !{!11, !"LVerDomain"}
!12 = !{!13}
!13 = distinct !{!13, !11}
!14 = distinct !{!14, !15, !16, !17}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!"llvm.loop.isvectorized", i32 1}
!17 = !{!"llvm.loop.unroll.runtime.disable"}
!18 = !{!19}
!19 = distinct !{!19, !20}
!20 = distinct !{!20, !"LVerDomain"}
!21 = !{!22}
!22 = distinct !{!22, !20}
!23 = distinct !{!23, !15, !16}
!24 = !{!25, !25, i64 0}
!25 = !{!"long", !7, i64 0}
!26 = distinct !{!26, !15, !16, !17}
!27 = distinct !{!27, !15}
!28 = distinct !{!28, !15}
!29 = distinct !{!29, !15}
!30 = distinct !{!30, !15}
!31 = distinct !{!31, !15}
!32 = !{!33, !33, i64 0}
!33 = !{!"int", !7, i64 0}
!34 = distinct !{!34, !15}
!35 = distinct !{!35, !15}
!36 = distinct !{!36, !15}
