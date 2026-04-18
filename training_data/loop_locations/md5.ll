; ModuleID = '../src/md5sum/md5.c'
source_filename = "../src/md5sum/md5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.md5.r = private unnamed_addr constant [64 x i32] [i32 7, i32 12, i32 17, i32 22, i32 7, i32 12, i32 17, i32 22, i32 7, i32 12, i32 17, i32 22, i32 7, i32 12, i32 17, i32 22, i32 5, i32 9, i32 14, i32 20, i32 5, i32 9, i32 14, i32 20, i32 5, i32 9, i32 14, i32 20, i32 5, i32 9, i32 14, i32 20, i32 4, i32 11, i32 16, i32 23, i32 4, i32 11, i32 16, i32 23, i32 4, i32 11, i32 16, i32 23, i32 4, i32 11, i32 16, i32 23, i32 6, i32 10, i32 15, i32 21, i32 6, i32 10, i32 15, i32 21, i32 6, i32 10, i32 15, i32 21, i32 6, i32 10, i32 15, i32 21], align 16
@__const.md5.k = private unnamed_addr constant [64 x i32] [i32 -680876936, i32 -389564586, i32 606105819, i32 -1044525330, i32 -176418897, i32 1200080426, i32 -1473231341, i32 -45705983, i32 1770035416, i32 -1958414417, i32 -42063, i32 -1990404162, i32 1804603682, i32 -40341101, i32 -1502002290, i32 1236535329, i32 -165796510, i32 -1069501632, i32 643717713, i32 -373897302, i32 -701558691, i32 38016083, i32 -660478335, i32 -405537848, i32 568446438, i32 -1019803690, i32 -187363961, i32 1163531501, i32 -1444681467, i32 -51403784, i32 1735328473, i32 -1926607734, i32 -378558, i32 -2022574463, i32 1839030562, i32 -35309556, i32 -1530992060, i32 1272893353, i32 -155497632, i32 -1094730640, i32 681279174, i32 -358537222, i32 -722521979, i32 76029189, i32 -640364487, i32 -421815835, i32 530742520, i32 -995338651, i32 -198630844, i32 1126891415, i32 -1416354905, i32 -57434055, i32 1700485571, i32 -1894986606, i32 -1051523, i32 -2054922799, i32 1873313359, i32 -30611744, i32 -1560198380, i32 1309151649, i32 -145523070, i32 -1120210379, i32 718787259, i32 -343485551], align 16
@h0 = internal unnamed_addr global i32 0, align 4
@h1 = internal unnamed_addr global i32 0, align 4
@h2 = internal unnamed_addr global i32 0, align 4
@h3 = internal unnamed_addr global i32 0, align 4
@heap = internal global [3080 x i8] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define dso_local void @md5(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #0 {
  store i32 1732584193, ptr @h0, align 4, !tbaa !5
  store i32 -271733879, ptr @h1, align 4, !tbaa !5
  store i32 -1732584194, ptr @h2, align 4, !tbaa !5
  store i32 271733878, ptr @h3, align 4, !tbaa !5
  %3 = trunc i64 %1 to i32
  %4 = add i32 %3, 8
  %5 = and i32 %4, -64
  %6 = or disjoint i32 %5, 56
  %7 = add nsw i32 %5, 120
  %8 = sext i32 %7 to i64
  %9 = tail call ptr @calloc_beebs(i64 noundef %8, i64 noundef 1) #5
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr align 1 %0, i64 %1, i1 false)
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 %1
  store i8 -128, ptr %10, align 1, !tbaa !9
  %11 = shl i32 %3, 3
  %12 = sext i32 %6 to i64
  %13 = getelementptr inbounds i8, ptr %9, i64 %12
  store i32 %11, ptr %13, align 1
  %14 = icmp sgt i32 %4, -1
  br i1 %14, label %15, label %90

15:                                               ; preds = %2
  %16 = load i32, ptr @h3, align 4
  %17 = load i32, ptr @h2, align 4
  %18 = load i32, ptr @h1, align 4
  %19 = load i32, ptr @h0, align 4
  br label %20

20:                                               ; preds = %15, %82
  %21 = phi i64 [ 0, %15 ], [ %87, %82 ]
  %22 = phi i32 [ %19, %15 ], [ %83, %82 ]
  %23 = phi i32 [ %18, %15 ], [ %84, %82 ]
  %24 = phi i32 [ %17, %15 ], [ %85, %82 ]
  %25 = phi i32 [ %16, %15 ], [ %86, %82 ]
  %26 = getelementptr inbounds nuw i8, ptr %9, i64 %21
  br label %27

27:                                               ; preds = %20, %63
  %28 = phi i64 [ 0, %20 ], [ %80, %63 ]
  %29 = phi i32 [ %25, %20 ], [ %30, %63 ]
  %30 = phi i32 [ %24, %20 ], [ %31, %63 ]
  %31 = phi i32 [ %23, %20 ], [ %79, %63 ]
  %32 = phi i32 [ %22, %20 ], [ %29, %63 ]
  %33 = icmp samesign ult i64 %28, 16
  br i1 %33, label %34, label %39

34:                                               ; preds = %27
  %35 = and i32 %30, %31
  %36 = xor i32 %31, -1
  %37 = and i32 %29, %36
  %38 = or i32 %37, %35
  br label %63

39:                                               ; preds = %27
  %40 = icmp samesign ult i64 %28, 32
  br i1 %40, label %41, label %49

41:                                               ; preds = %39
  %42 = and i32 %29, %31
  %43 = xor i32 %29, -1
  %44 = and i32 %30, %43
  %45 = or i32 %42, %44
  %46 = mul nuw nsw i64 %28, 5
  %47 = add nuw nsw i64 %46, 1
  %48 = and i64 %47, 15
  br label %63

49:                                               ; preds = %39
  %50 = icmp samesign ult i64 %28, 48
  br i1 %50, label %51, label %57

51:                                               ; preds = %49
  %52 = xor i32 %30, %31
  %53 = xor i32 %52, %29
  %54 = mul nuw nsw i64 %28, 3
  %55 = add nuw nsw i64 %54, 5
  %56 = and i64 %55, 15
  br label %63

57:                                               ; preds = %49
  %58 = xor i32 %29, -1
  %59 = or i32 %31, %58
  %60 = xor i32 %59, %30
  %61 = mul i64 %28, 7
  %62 = and i64 %61, 15
  br label %63

63:                                               ; preds = %41, %57, %51, %34
  %64 = phi i32 [ %38, %34 ], [ %45, %41 ], [ %53, %51 ], [ %60, %57 ]
  %65 = phi i64 [ %28, %34 ], [ %48, %41 ], [ %56, %51 ], [ %62, %57 ]
  %66 = add i32 %64, %32
  %67 = getelementptr inbounds nuw [64 x i32], ptr @__const.md5.k, i64 0, i64 %28
  %68 = load i32, ptr %67, align 4, !tbaa !5
  %69 = add i32 %66, %68
  %70 = getelementptr inbounds nuw i32, ptr %26, i64 %65
  %71 = load i32, ptr %70, align 4, !tbaa !5
  %72 = add i32 %69, %71
  %73 = getelementptr inbounds nuw [64 x i32], ptr @__const.md5.r, i64 0, i64 %28
  %74 = load i32, ptr %73, align 4, !tbaa !5
  %75 = shl i32 %72, %74
  %76 = sub i32 32, %74
  %77 = lshr i32 %72, %76
  %78 = add i32 %75, %31
  %79 = add i32 %78, %77
  %80 = add nuw nsw i64 %28, 1
  %81 = icmp eq i64 %80, 64
  br i1 %81, label %82, label %27, !llvm.loop !10

82:                                               ; preds = %63
  %83 = add i32 %29, %22
  %84 = add i32 %79, %23
  %85 = add i32 %31, %24
  %86 = add i32 %30, %25
  %87 = add nuw nsw i64 %21, 64
  %88 = icmp slt i64 %87, %12
  br i1 %88, label %20, label %89, !llvm.loop !12

89:                                               ; preds = %82
  store i32 %83, ptr @h0, align 4, !tbaa !5
  store i32 %84, ptr @h1, align 4, !tbaa !5
  store i32 %85, ptr @h2, align 4, !tbaa !5
  store i32 %86, ptr @h3, align 4, !tbaa !5
  br label %90

90:                                               ; preds = %89, %2
  tail call void @free_beebs(ptr noundef nonnull %9) #5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

declare ptr @calloc_beebs(i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @free_beebs(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @initialise_benchmark() local_unnamed_addr #3 {
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @warm_caches(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc i32 @benchmark_body(i32 noundef 1, i32 noundef %0)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @benchmark_body(i32 noundef range(i32 1, 67) %0, i32 noundef %1) unnamed_addr #4 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %153, label %4

4:                                                ; preds = %2, %150
  %5 = phi i32 [ %151, %150 ], [ 0, %2 ]
  br label %6

6:                                                ; preds = %4, %147
  %7 = phi i32 [ 0, %4 ], [ %148, %147 ]
  tail call void @init_heap_beebs(ptr noundef nonnull @heap, i64 noundef 3080) #5
  %8 = tail call ptr @malloc_beebs(i64 noundef 1000) #5
  store <16 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, ptr %8, align 1, !tbaa !9
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 16
  store <16 x i8> <i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31>, ptr %9, align 1, !tbaa !9
  %10 = getelementptr inbounds nuw i8, ptr %8, i64 32
  store <16 x i8> <i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47>, ptr %10, align 1, !tbaa !9
  %11 = getelementptr inbounds nuw i8, ptr %8, i64 48
  store <16 x i8> <i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, ptr %11, align 1, !tbaa !9
  %12 = getelementptr inbounds nuw i8, ptr %8, i64 64
  store <16 x i8> <i8 64, i8 65, i8 66, i8 67, i8 68, i8 69, i8 70, i8 71, i8 72, i8 73, i8 74, i8 75, i8 76, i8 77, i8 78, i8 79>, ptr %12, align 1, !tbaa !9
  %13 = getelementptr inbounds nuw i8, ptr %8, i64 80
  store <16 x i8> <i8 80, i8 81, i8 82, i8 83, i8 84, i8 85, i8 86, i8 87, i8 88, i8 89, i8 90, i8 91, i8 92, i8 93, i8 94, i8 95>, ptr %13, align 1, !tbaa !9
  %14 = getelementptr inbounds nuw i8, ptr %8, i64 96
  store <16 x i8> <i8 96, i8 97, i8 98, i8 99, i8 100, i8 101, i8 102, i8 103, i8 104, i8 105, i8 106, i8 107, i8 108, i8 109, i8 110, i8 111>, ptr %14, align 1, !tbaa !9
  %15 = getelementptr inbounds nuw i8, ptr %8, i64 112
  store <16 x i8> <i8 112, i8 113, i8 114, i8 115, i8 116, i8 117, i8 118, i8 119, i8 120, i8 121, i8 122, i8 123, i8 124, i8 125, i8 126, i8 127>, ptr %15, align 1, !tbaa !9
  %16 = getelementptr inbounds nuw i8, ptr %8, i64 128
  store <16 x i8> <i8 -128, i8 -127, i8 -126, i8 -125, i8 -124, i8 -123, i8 -122, i8 -121, i8 -120, i8 -119, i8 -118, i8 -117, i8 -116, i8 -115, i8 -114, i8 -113>, ptr %16, align 1, !tbaa !9
  %17 = getelementptr inbounds nuw i8, ptr %8, i64 144
  store <16 x i8> <i8 -112, i8 -111, i8 -110, i8 -109, i8 -108, i8 -107, i8 -106, i8 -105, i8 -104, i8 -103, i8 -102, i8 -101, i8 -100, i8 -99, i8 -98, i8 -97>, ptr %17, align 1, !tbaa !9
  %18 = getelementptr inbounds nuw i8, ptr %8, i64 160
  store <16 x i8> <i8 -96, i8 -95, i8 -94, i8 -93, i8 -92, i8 -91, i8 -90, i8 -89, i8 -88, i8 -87, i8 -86, i8 -85, i8 -84, i8 -83, i8 -82, i8 -81>, ptr %18, align 1, !tbaa !9
  %19 = getelementptr inbounds nuw i8, ptr %8, i64 176
  store <16 x i8> <i8 -80, i8 -79, i8 -78, i8 -77, i8 -76, i8 -75, i8 -74, i8 -73, i8 -72, i8 -71, i8 -70, i8 -69, i8 -68, i8 -67, i8 -66, i8 -65>, ptr %19, align 1, !tbaa !9
  %20 = getelementptr inbounds nuw i8, ptr %8, i64 192
  store <16 x i8> <i8 -64, i8 -63, i8 -62, i8 -61, i8 -60, i8 -59, i8 -58, i8 -57, i8 -56, i8 -55, i8 -54, i8 -53, i8 -52, i8 -51, i8 -50, i8 -49>, ptr %20, align 1, !tbaa !9
  %21 = getelementptr inbounds nuw i8, ptr %8, i64 208
  store <16 x i8> <i8 -48, i8 -47, i8 -46, i8 -45, i8 -44, i8 -43, i8 -42, i8 -41, i8 -40, i8 -39, i8 -38, i8 -37, i8 -36, i8 -35, i8 -34, i8 -33>, ptr %21, align 1, !tbaa !9
  %22 = getelementptr inbounds nuw i8, ptr %8, i64 224
  store <16 x i8> <i8 -32, i8 -31, i8 -30, i8 -29, i8 -28, i8 -27, i8 -26, i8 -25, i8 -24, i8 -23, i8 -22, i8 -21, i8 -20, i8 -19, i8 -18, i8 -17>, ptr %22, align 1, !tbaa !9
  %23 = getelementptr inbounds nuw i8, ptr %8, i64 240
  store <16 x i8> <i8 -16, i8 -15, i8 -14, i8 -13, i8 -12, i8 -11, i8 -10, i8 -9, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, ptr %23, align 1, !tbaa !9
  %24 = getelementptr inbounds nuw i8, ptr %8, i64 256
  store <16 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, ptr %24, align 1, !tbaa !9
  %25 = getelementptr inbounds nuw i8, ptr %8, i64 272
  store <16 x i8> <i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31>, ptr %25, align 1, !tbaa !9
  %26 = getelementptr inbounds nuw i8, ptr %8, i64 288
  store <16 x i8> <i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47>, ptr %26, align 1, !tbaa !9
  %27 = getelementptr inbounds nuw i8, ptr %8, i64 304
  store <16 x i8> <i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, ptr %27, align 1, !tbaa !9
  %28 = getelementptr inbounds nuw i8, ptr %8, i64 320
  store <16 x i8> <i8 64, i8 65, i8 66, i8 67, i8 68, i8 69, i8 70, i8 71, i8 72, i8 73, i8 74, i8 75, i8 76, i8 77, i8 78, i8 79>, ptr %28, align 1, !tbaa !9
  %29 = getelementptr inbounds nuw i8, ptr %8, i64 336
  store <16 x i8> <i8 80, i8 81, i8 82, i8 83, i8 84, i8 85, i8 86, i8 87, i8 88, i8 89, i8 90, i8 91, i8 92, i8 93, i8 94, i8 95>, ptr %29, align 1, !tbaa !9
  %30 = getelementptr inbounds nuw i8, ptr %8, i64 352
  store <16 x i8> <i8 96, i8 97, i8 98, i8 99, i8 100, i8 101, i8 102, i8 103, i8 104, i8 105, i8 106, i8 107, i8 108, i8 109, i8 110, i8 111>, ptr %30, align 1, !tbaa !9
  %31 = getelementptr inbounds nuw i8, ptr %8, i64 368
  store <16 x i8> <i8 112, i8 113, i8 114, i8 115, i8 116, i8 117, i8 118, i8 119, i8 120, i8 121, i8 122, i8 123, i8 124, i8 125, i8 126, i8 127>, ptr %31, align 1, !tbaa !9
  %32 = getelementptr inbounds nuw i8, ptr %8, i64 384
  store <16 x i8> <i8 -128, i8 -127, i8 -126, i8 -125, i8 -124, i8 -123, i8 -122, i8 -121, i8 -120, i8 -119, i8 -118, i8 -117, i8 -116, i8 -115, i8 -114, i8 -113>, ptr %32, align 1, !tbaa !9
  %33 = getelementptr inbounds nuw i8, ptr %8, i64 400
  store <16 x i8> <i8 -112, i8 -111, i8 -110, i8 -109, i8 -108, i8 -107, i8 -106, i8 -105, i8 -104, i8 -103, i8 -102, i8 -101, i8 -100, i8 -99, i8 -98, i8 -97>, ptr %33, align 1, !tbaa !9
  %34 = getelementptr inbounds nuw i8, ptr %8, i64 416
  store <16 x i8> <i8 -96, i8 -95, i8 -94, i8 -93, i8 -92, i8 -91, i8 -90, i8 -89, i8 -88, i8 -87, i8 -86, i8 -85, i8 -84, i8 -83, i8 -82, i8 -81>, ptr %34, align 1, !tbaa !9
  %35 = getelementptr inbounds nuw i8, ptr %8, i64 432
  store <16 x i8> <i8 -80, i8 -79, i8 -78, i8 -77, i8 -76, i8 -75, i8 -74, i8 -73, i8 -72, i8 -71, i8 -70, i8 -69, i8 -68, i8 -67, i8 -66, i8 -65>, ptr %35, align 1, !tbaa !9
  %36 = getelementptr inbounds nuw i8, ptr %8, i64 448
  store <16 x i8> <i8 -64, i8 -63, i8 -62, i8 -61, i8 -60, i8 -59, i8 -58, i8 -57, i8 -56, i8 -55, i8 -54, i8 -53, i8 -52, i8 -51, i8 -50, i8 -49>, ptr %36, align 1, !tbaa !9
  %37 = getelementptr inbounds nuw i8, ptr %8, i64 464
  store <16 x i8> <i8 -48, i8 -47, i8 -46, i8 -45, i8 -44, i8 -43, i8 -42, i8 -41, i8 -40, i8 -39, i8 -38, i8 -37, i8 -36, i8 -35, i8 -34, i8 -33>, ptr %37, align 1, !tbaa !9
  %38 = getelementptr inbounds nuw i8, ptr %8, i64 480
  store <16 x i8> <i8 -32, i8 -31, i8 -30, i8 -29, i8 -28, i8 -27, i8 -26, i8 -25, i8 -24, i8 -23, i8 -22, i8 -21, i8 -20, i8 -19, i8 -18, i8 -17>, ptr %38, align 1, !tbaa !9
  %39 = getelementptr inbounds nuw i8, ptr %8, i64 496
  store <16 x i8> <i8 -16, i8 -15, i8 -14, i8 -13, i8 -12, i8 -11, i8 -10, i8 -9, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, ptr %39, align 1, !tbaa !9
  %40 = getelementptr inbounds nuw i8, ptr %8, i64 512
  store <16 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, ptr %40, align 1, !tbaa !9
  %41 = getelementptr inbounds nuw i8, ptr %8, i64 528
  store <16 x i8> <i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31>, ptr %41, align 1, !tbaa !9
  %42 = getelementptr inbounds nuw i8, ptr %8, i64 544
  store <16 x i8> <i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47>, ptr %42, align 1, !tbaa !9
  %43 = getelementptr inbounds nuw i8, ptr %8, i64 560
  store <16 x i8> <i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, ptr %43, align 1, !tbaa !9
  %44 = getelementptr inbounds nuw i8, ptr %8, i64 576
  store <16 x i8> <i8 64, i8 65, i8 66, i8 67, i8 68, i8 69, i8 70, i8 71, i8 72, i8 73, i8 74, i8 75, i8 76, i8 77, i8 78, i8 79>, ptr %44, align 1, !tbaa !9
  %45 = getelementptr inbounds nuw i8, ptr %8, i64 592
  store <16 x i8> <i8 80, i8 81, i8 82, i8 83, i8 84, i8 85, i8 86, i8 87, i8 88, i8 89, i8 90, i8 91, i8 92, i8 93, i8 94, i8 95>, ptr %45, align 1, !tbaa !9
  %46 = getelementptr inbounds nuw i8, ptr %8, i64 608
  store <16 x i8> <i8 96, i8 97, i8 98, i8 99, i8 100, i8 101, i8 102, i8 103, i8 104, i8 105, i8 106, i8 107, i8 108, i8 109, i8 110, i8 111>, ptr %46, align 1, !tbaa !9
  %47 = getelementptr inbounds nuw i8, ptr %8, i64 624
  store <16 x i8> <i8 112, i8 113, i8 114, i8 115, i8 116, i8 117, i8 118, i8 119, i8 120, i8 121, i8 122, i8 123, i8 124, i8 125, i8 126, i8 127>, ptr %47, align 1, !tbaa !9
  %48 = getelementptr inbounds nuw i8, ptr %8, i64 640
  store <16 x i8> <i8 -128, i8 -127, i8 -126, i8 -125, i8 -124, i8 -123, i8 -122, i8 -121, i8 -120, i8 -119, i8 -118, i8 -117, i8 -116, i8 -115, i8 -114, i8 -113>, ptr %48, align 1, !tbaa !9
  %49 = getelementptr inbounds nuw i8, ptr %8, i64 656
  store <16 x i8> <i8 -112, i8 -111, i8 -110, i8 -109, i8 -108, i8 -107, i8 -106, i8 -105, i8 -104, i8 -103, i8 -102, i8 -101, i8 -100, i8 -99, i8 -98, i8 -97>, ptr %49, align 1, !tbaa !9
  %50 = getelementptr inbounds nuw i8, ptr %8, i64 672
  store <16 x i8> <i8 -96, i8 -95, i8 -94, i8 -93, i8 -92, i8 -91, i8 -90, i8 -89, i8 -88, i8 -87, i8 -86, i8 -85, i8 -84, i8 -83, i8 -82, i8 -81>, ptr %50, align 1, !tbaa !9
  %51 = getelementptr inbounds nuw i8, ptr %8, i64 688
  store <16 x i8> <i8 -80, i8 -79, i8 -78, i8 -77, i8 -76, i8 -75, i8 -74, i8 -73, i8 -72, i8 -71, i8 -70, i8 -69, i8 -68, i8 -67, i8 -66, i8 -65>, ptr %51, align 1, !tbaa !9
  %52 = getelementptr inbounds nuw i8, ptr %8, i64 704
  store <16 x i8> <i8 -64, i8 -63, i8 -62, i8 -61, i8 -60, i8 -59, i8 -58, i8 -57, i8 -56, i8 -55, i8 -54, i8 -53, i8 -52, i8 -51, i8 -50, i8 -49>, ptr %52, align 1, !tbaa !9
  %53 = getelementptr inbounds nuw i8, ptr %8, i64 720
  store <16 x i8> <i8 -48, i8 -47, i8 -46, i8 -45, i8 -44, i8 -43, i8 -42, i8 -41, i8 -40, i8 -39, i8 -38, i8 -37, i8 -36, i8 -35, i8 -34, i8 -33>, ptr %53, align 1, !tbaa !9
  %54 = getelementptr inbounds nuw i8, ptr %8, i64 736
  store <16 x i8> <i8 -32, i8 -31, i8 -30, i8 -29, i8 -28, i8 -27, i8 -26, i8 -25, i8 -24, i8 -23, i8 -22, i8 -21, i8 -20, i8 -19, i8 -18, i8 -17>, ptr %54, align 1, !tbaa !9
  %55 = getelementptr inbounds nuw i8, ptr %8, i64 752
  store <16 x i8> <i8 -16, i8 -15, i8 -14, i8 -13, i8 -12, i8 -11, i8 -10, i8 -9, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, ptr %55, align 1, !tbaa !9
  %56 = getelementptr inbounds nuw i8, ptr %8, i64 768
  store <16 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, ptr %56, align 1, !tbaa !9
  %57 = getelementptr inbounds nuw i8, ptr %8, i64 784
  store <16 x i8> <i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31>, ptr %57, align 1, !tbaa !9
  %58 = getelementptr inbounds nuw i8, ptr %8, i64 800
  store <16 x i8> <i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47>, ptr %58, align 1, !tbaa !9
  %59 = getelementptr inbounds nuw i8, ptr %8, i64 816
  store <16 x i8> <i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>, ptr %59, align 1, !tbaa !9
  %60 = getelementptr inbounds nuw i8, ptr %8, i64 832
  store <16 x i8> <i8 64, i8 65, i8 66, i8 67, i8 68, i8 69, i8 70, i8 71, i8 72, i8 73, i8 74, i8 75, i8 76, i8 77, i8 78, i8 79>, ptr %60, align 1, !tbaa !9
  %61 = getelementptr inbounds nuw i8, ptr %8, i64 848
  store <16 x i8> <i8 80, i8 81, i8 82, i8 83, i8 84, i8 85, i8 86, i8 87, i8 88, i8 89, i8 90, i8 91, i8 92, i8 93, i8 94, i8 95>, ptr %61, align 1, !tbaa !9
  %62 = getelementptr inbounds nuw i8, ptr %8, i64 864
  store <16 x i8> <i8 96, i8 97, i8 98, i8 99, i8 100, i8 101, i8 102, i8 103, i8 104, i8 105, i8 106, i8 107, i8 108, i8 109, i8 110, i8 111>, ptr %62, align 1, !tbaa !9
  %63 = getelementptr inbounds nuw i8, ptr %8, i64 880
  store <16 x i8> <i8 112, i8 113, i8 114, i8 115, i8 116, i8 117, i8 118, i8 119, i8 120, i8 121, i8 122, i8 123, i8 124, i8 125, i8 126, i8 127>, ptr %63, align 1, !tbaa !9
  %64 = getelementptr inbounds nuw i8, ptr %8, i64 896
  store <16 x i8> <i8 -128, i8 -127, i8 -126, i8 -125, i8 -124, i8 -123, i8 -122, i8 -121, i8 -120, i8 -119, i8 -118, i8 -117, i8 -116, i8 -115, i8 -114, i8 -113>, ptr %64, align 1, !tbaa !9
  %65 = getelementptr inbounds nuw i8, ptr %8, i64 912
  store <16 x i8> <i8 -112, i8 -111, i8 -110, i8 -109, i8 -108, i8 -107, i8 -106, i8 -105, i8 -104, i8 -103, i8 -102, i8 -101, i8 -100, i8 -99, i8 -98, i8 -97>, ptr %65, align 1, !tbaa !9
  %66 = getelementptr inbounds nuw i8, ptr %8, i64 928
  store <16 x i8> <i8 -96, i8 -95, i8 -94, i8 -93, i8 -92, i8 -91, i8 -90, i8 -89, i8 -88, i8 -87, i8 -86, i8 -85, i8 -84, i8 -83, i8 -82, i8 -81>, ptr %66, align 1, !tbaa !9
  %67 = getelementptr inbounds nuw i8, ptr %8, i64 944
  store <16 x i8> <i8 -80, i8 -79, i8 -78, i8 -77, i8 -76, i8 -75, i8 -74, i8 -73, i8 -72, i8 -71, i8 -70, i8 -69, i8 -68, i8 -67, i8 -66, i8 -65>, ptr %67, align 1, !tbaa !9
  %68 = getelementptr inbounds nuw i8, ptr %8, i64 960
  store <16 x i8> <i8 -64, i8 -63, i8 -62, i8 -61, i8 -60, i8 -59, i8 -58, i8 -57, i8 -56, i8 -55, i8 -54, i8 -53, i8 -52, i8 -51, i8 -50, i8 -49>, ptr %68, align 1, !tbaa !9
  %69 = getelementptr inbounds nuw i8, ptr %8, i64 976
  store <16 x i8> <i8 -48, i8 -47, i8 -46, i8 -45, i8 -44, i8 -43, i8 -42, i8 -41, i8 -40, i8 -39, i8 -38, i8 -37, i8 -36, i8 -35, i8 -34, i8 -33>, ptr %69, align 1, !tbaa !9
  %70 = getelementptr inbounds nuw i8, ptr %8, i64 992
  store <8 x i8> <i8 -32, i8 -31, i8 -30, i8 -29, i8 -28, i8 -27, i8 -26, i8 -25>, ptr %70, align 1, !tbaa !9
  store i32 1732584193, ptr @h0, align 4, !tbaa !5
  store i32 -271733879, ptr @h1, align 4, !tbaa !5
  store i32 -1732584194, ptr @h2, align 4, !tbaa !5
  store i32 271733878, ptr @h3, align 4, !tbaa !5
  %71 = tail call ptr @calloc_beebs(i64 noundef 1080, i64 noundef 1) #5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1000) %71, ptr noundef nonnull readonly align 1 dereferenceable(1000) %8, i64 1000, i1 false)
  %72 = getelementptr inbounds nuw i8, ptr %71, i64 1000
  store i8 -128, ptr %72, align 1, !tbaa !9
  %73 = getelementptr inbounds nuw i8, ptr %71, i64 1016
  store i32 8000, ptr %73, align 1
  %74 = load i32, ptr @h3, align 4
  %75 = load i32, ptr @h2, align 4
  %76 = load i32, ptr @h1, align 4
  %77 = load i32, ptr @h0, align 4
  br label %78

78:                                               ; preds = %140, %6
  %79 = phi i64 [ 0, %6 ], [ %145, %140 ]
  %80 = phi i32 [ %77, %6 ], [ %141, %140 ]
  %81 = phi i32 [ %76, %6 ], [ %142, %140 ]
  %82 = phi i32 [ %75, %6 ], [ %143, %140 ]
  %83 = phi i32 [ %74, %6 ], [ %144, %140 ]
  %84 = getelementptr inbounds nuw i8, ptr %71, i64 %79
  br label %85

85:                                               ; preds = %121, %78
  %86 = phi i64 [ 0, %78 ], [ %138, %121 ]
  %87 = phi i32 [ %83, %78 ], [ %88, %121 ]
  %88 = phi i32 [ %82, %78 ], [ %89, %121 ]
  %89 = phi i32 [ %81, %78 ], [ %137, %121 ]
  %90 = phi i32 [ %80, %78 ], [ %87, %121 ]
  %91 = icmp samesign ult i64 %86, 16
  br i1 %91, label %116, label %92

92:                                               ; preds = %85
  %93 = icmp samesign ult i64 %86, 32
  br i1 %93, label %108, label %94

94:                                               ; preds = %92
  %95 = icmp samesign ult i64 %86, 48
  br i1 %95, label %102, label %96

96:                                               ; preds = %94
  %97 = xor i32 %87, -1
  %98 = or i32 %89, %97
  %99 = xor i32 %98, %88
  %100 = mul nuw nsw i64 %86, 7
  %101 = and i64 %100, 15
  br label %121

102:                                              ; preds = %94
  %103 = xor i32 %88, %87
  %104 = xor i32 %103, %89
  %105 = mul nuw nsw i64 %86, 3
  %106 = add nuw nsw i64 %105, 5
  %107 = and i64 %106, 15
  br label %121

108:                                              ; preds = %92
  %109 = and i32 %89, %87
  %110 = xor i32 %87, -1
  %111 = and i32 %88, %110
  %112 = or i32 %109, %111
  %113 = mul nuw nsw i64 %86, 5
  %114 = add nuw nsw i64 %113, 1
  %115 = and i64 %114, 15
  br label %121

116:                                              ; preds = %85
  %117 = and i32 %89, %88
  %118 = xor i32 %89, -1
  %119 = and i32 %87, %118
  %120 = or i32 %119, %117
  br label %121

121:                                              ; preds = %116, %108, %102, %96
  %122 = phi i32 [ %120, %116 ], [ %112, %108 ], [ %104, %102 ], [ %99, %96 ]
  %123 = phi i64 [ %86, %116 ], [ %115, %108 ], [ %107, %102 ], [ %101, %96 ]
  %124 = add i32 %122, %90
  %125 = getelementptr inbounds nuw [64 x i32], ptr @__const.md5.k, i64 0, i64 %86
  %126 = load i32, ptr %125, align 4, !tbaa !5
  %127 = add i32 %124, %126
  %128 = getelementptr inbounds nuw i32, ptr %84, i64 %123
  %129 = load i32, ptr %128, align 4, !tbaa !5
  %130 = add i32 %127, %129
  %131 = getelementptr inbounds nuw [64 x i32], ptr @__const.md5.r, i64 0, i64 %86
  %132 = load i32, ptr %131, align 4, !tbaa !5
  %133 = shl i32 %130, %132
  %134 = sub i32 32, %132
  %135 = lshr i32 %130, %134
  %136 = add i32 %133, %89
  %137 = add i32 %136, %135
  %138 = add nuw nsw i64 %86, 1
  %139 = icmp eq i64 %138, 64
  br i1 %139, label %140, label %85, !llvm.loop !10

140:                                              ; preds = %121
  %141 = add i32 %87, %80
  %142 = add i32 %137, %81
  %143 = add i32 %89, %82
  %144 = add i32 %88, %83
  %145 = add nuw nsw i64 %79, 64
  %146 = icmp samesign ult i64 %79, 952
  br i1 %146, label %78, label %147, !llvm.loop !12

147:                                              ; preds = %140
  store i32 %141, ptr @h0, align 4, !tbaa !5
  store i32 %142, ptr @h1, align 4, !tbaa !5
  store i32 %143, ptr @h2, align 4, !tbaa !5
  store i32 %144, ptr @h3, align 4, !tbaa !5
  tail call void @free_beebs(ptr noundef nonnull %71) #5
  tail call void @free_beebs(ptr noundef nonnull %8) #5
  %148 = add nuw i32 %7, 1
  %149 = icmp eq i32 %148, %1
  br i1 %149, label %150, label %6, !llvm.loop !13

150:                                              ; preds = %147
  %151 = add nuw nsw i32 %5, 1
  %152 = icmp eq i32 %151, %0
  br i1 %152, label %153, label %4, !llvm.loop !14

153:                                              ; preds = %150, %2
  %154 = load i32, ptr @h0, align 4, !tbaa !5
  %155 = load i32, ptr @h1, align 4, !tbaa !5
  %156 = xor i32 %155, %154
  %157 = load i32, ptr @h2, align 4, !tbaa !5
  %158 = xor i32 %156, %157
  %159 = load i32, ptr @h3, align 4, !tbaa !5
  %160 = xor i32 %158, %159
  ret i32 %160
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @benchmark() local_unnamed_addr #4 {
  %1 = tail call fastcc i32 @benchmark_body(i32 noundef 66, i32 noundef 20)
  ret i32 %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 0, 2) i32 @verify_benchmark(i32 noundef %0) local_unnamed_addr #3 {
  %2 = icmp eq i32 %0, 871789492
  %3 = zext i1 %2 to i32
  ret i32 %3
}

declare void @init_heap_beebs(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @malloc_beebs(i64 noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!7, !7, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
!13 = distinct !{!13, !11}
!14 = distinct !{!14, !11}
