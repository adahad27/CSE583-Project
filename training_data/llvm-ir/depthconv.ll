; ModuleID = '../src/depthconv/depthconv.c'
source_filename = "../src/depthconv/depthconv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EXPECTED_OUTPUT = dso_local local_unnamed_addr global [32 x i8] c"\C9\EA\E9\CC\12\F2\FB6\BA\04\1B\CD\D6)\FA;\E2S'\B6\D9\09\19=\14\1E\F8\DD+\C5\1A\13", align 16
@OUTPUT_DATA = dso_local local_unnamed_addr global [32 x i8] zeroinitializer, align 16
@OUTPUT_MULTIPLIER = internal unnamed_addr constant [32 x i32] [i32 1152862902, i32 1152862902, i32 1152862902, i32 1152862902, i32 1152862902, i32 1152862902, i32 1152862902, i32 1152862902, i32 1152862902, i32 1152862902, i32 1152862902, i32 1152862902, i32 1152862902, i32 1152862902, i32 1152862902, i32 1152862902, i32 1152862902, i32 1152862902, i32 1152862902, i32 1152862902, i32 1152862902, i32 1152862902, i32 1152862902, i32 1152862902, i32 1152862902, i32 1152862902, i32 1152862902, i32 1152862902, i32 1152862902, i32 1152862902, i32 1152862902, i32 1152862902], align 16
@OUTPUT_SHIFT = internal unnamed_addr constant [32 x i32] [i32 -8, i32 -8, i32 -8, i32 -8, i32 -8, i32 -8, i32 -8, i32 -8, i32 -8, i32 -8, i32 -8, i32 -8, i32 -8, i32 -8, i32 -8, i32 -8, i32 -8, i32 -8, i32 -8, i32 -8, i32 -8, i32 -8, i32 -8, i32 -8, i32 -8, i32 -8, i32 -8, i32 -8, i32 -8, i32 -8, i32 -8, i32 -8], align 16
@INPUT_DATA = internal unnamed_addr constant [128 x i8] c"<9>D8\22\22*?9\1C\1A$\18\07\19\1F\00\1D#\01\0B\01\1E\1B\12\0C\13\09\08\FE\FD;=<?4\1E\1E,?9\18\16\1D\17\F7\1B#\0C\1C\22\FE\12\0A\1C\19\1A\18\0D\06\0F\FC\FB19=;*%&->5\13\11\22\19\F7 '\08\1D#\00\19\11\1A\18\1B\18\08\09\17\F8\FDA<67)\1B\1B&6.\12\16&\1E\00\1D%\0A\1E#\04$\1B!\1F\16\11\09\13#\FE\01", align 16
@FILTER_DATA = internal unnamed_addr constant [128 x i8] c"\CF\C5+\BA\E5/\01\\\CD).\CD\D6,74\C5?D\C4\B78<0L6\BF\D2?\A9=K\83\EF\9E\EE\E3=\E0*\B3\CF'\C9\F5+\EEG\FD\7F'\BA\BD\F0\C17\D4%&\E0\E9%\1F-R4\C7\CA2\AD:?\A6\B2\A0\06\F9I\F3\14\C9<=\D6\C64(+()\D6\CC(\CE*\19\D5\E16\0E>\BE\D2\D1.e^\C2\C2\E3\CE%\1E)\CF\D32\C9.&\F5\DA*\0D@\AA\E0\BB", align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @initialise_benchmark() local_unnamed_addr #0 {
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @warm_caches(i32 noundef %0) local_unnamed_addr #1 {
  tail call fastcc void @benchmark_body(i32 noundef %0, i32 noundef 1)
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @benchmark_body(i32 noundef %0, i32 noundef range(i32 1, 21) %1) unnamed_addr #2 {
  %3 = icmp eq i32 %0, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %2, %7
  %5 = phi i32 [ %8, %7 ], [ 0, %2 ]
  br label %10

6:                                                ; preds = %7, %2
  ret void

7:                                                ; preds = %10
  %8 = add nuw i32 %5, 1
  %9 = icmp eq i32 %8, %0
  br i1 %9, label %6, label %4, !llvm.loop !5

10:                                               ; preds = %4, %10
  %11 = phi i32 [ 0, %4 ], [ %12, %10 ]
  tail call fastcc void @DepthwiseConvPerChannel()
  %12 = add nuw nsw i32 %11, 1
  %13 = icmp eq i32 %12, %1
  br i1 %13, label %7, label %10, !llvm.loop !7
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @benchmark() local_unnamed_addr #1 {
  tail call fastcc void @benchmark_body(i32 noundef 1639, i32 noundef 20)
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local range(i32 0, 2) i32 @verify_benchmark(i32 noundef %0) local_unnamed_addr #3 {
  %2 = load i8, ptr @EXPECTED_OUTPUT, align 16, !tbaa !8
  %3 = load i8, ptr @OUTPUT_DATA, align 16, !tbaa !8
  %4 = icmp eq i8 %2, %3
  br i1 %4, label %5, label %130

5:                                                ; preds = %1
  %6 = load i8, ptr getelementptr inbounds nuw (i8, ptr @EXPECTED_OUTPUT, i64 1), align 1, !tbaa !8
  %7 = load i8, ptr getelementptr inbounds nuw (i8, ptr @OUTPUT_DATA, i64 1), align 1, !tbaa !8
  %8 = icmp eq i8 %6, %7
  br i1 %8, label %9, label %130

9:                                                ; preds = %5
  %10 = load i8, ptr getelementptr inbounds nuw (i8, ptr @EXPECTED_OUTPUT, i64 2), align 2, !tbaa !8
  %11 = load i8, ptr getelementptr inbounds nuw (i8, ptr @OUTPUT_DATA, i64 2), align 2, !tbaa !8
  %12 = icmp eq i8 %10, %11
  br i1 %12, label %13, label %130

13:                                               ; preds = %9
  %14 = load i8, ptr getelementptr inbounds nuw (i8, ptr @EXPECTED_OUTPUT, i64 3), align 1, !tbaa !8
  %15 = load i8, ptr getelementptr inbounds nuw (i8, ptr @OUTPUT_DATA, i64 3), align 1, !tbaa !8
  %16 = icmp eq i8 %14, %15
  br i1 %16, label %17, label %130

17:                                               ; preds = %13
  %18 = load i8, ptr getelementptr inbounds nuw (i8, ptr @EXPECTED_OUTPUT, i64 4), align 4, !tbaa !8
  %19 = load i8, ptr getelementptr inbounds nuw (i8, ptr @OUTPUT_DATA, i64 4), align 4, !tbaa !8
  %20 = icmp eq i8 %18, %19
  br i1 %20, label %21, label %130

21:                                               ; preds = %17
  %22 = load i8, ptr getelementptr inbounds nuw (i8, ptr @EXPECTED_OUTPUT, i64 5), align 1, !tbaa !8
  %23 = load i8, ptr getelementptr inbounds nuw (i8, ptr @OUTPUT_DATA, i64 5), align 1, !tbaa !8
  %24 = icmp eq i8 %22, %23
  br i1 %24, label %25, label %130

25:                                               ; preds = %21
  %26 = load i8, ptr getelementptr inbounds nuw (i8, ptr @EXPECTED_OUTPUT, i64 6), align 2, !tbaa !8
  %27 = load i8, ptr getelementptr inbounds nuw (i8, ptr @OUTPUT_DATA, i64 6), align 2, !tbaa !8
  %28 = icmp eq i8 %26, %27
  br i1 %28, label %29, label %130

29:                                               ; preds = %25
  %30 = load i8, ptr getelementptr inbounds nuw (i8, ptr @EXPECTED_OUTPUT, i64 7), align 1, !tbaa !8
  %31 = load i8, ptr getelementptr inbounds nuw (i8, ptr @OUTPUT_DATA, i64 7), align 1, !tbaa !8
  %32 = icmp eq i8 %30, %31
  br i1 %32, label %33, label %130

33:                                               ; preds = %29
  %34 = load i8, ptr getelementptr inbounds nuw (i8, ptr @EXPECTED_OUTPUT, i64 8), align 8, !tbaa !8
  %35 = load i8, ptr getelementptr inbounds nuw (i8, ptr @OUTPUT_DATA, i64 8), align 8, !tbaa !8
  %36 = icmp eq i8 %34, %35
  br i1 %36, label %37, label %130

37:                                               ; preds = %33
  %38 = load i8, ptr getelementptr inbounds nuw (i8, ptr @EXPECTED_OUTPUT, i64 9), align 1, !tbaa !8
  %39 = load i8, ptr getelementptr inbounds nuw (i8, ptr @OUTPUT_DATA, i64 9), align 1, !tbaa !8
  %40 = icmp eq i8 %38, %39
  br i1 %40, label %41, label %130

41:                                               ; preds = %37
  %42 = load i8, ptr getelementptr inbounds nuw (i8, ptr @EXPECTED_OUTPUT, i64 10), align 2, !tbaa !8
  %43 = load i8, ptr getelementptr inbounds nuw (i8, ptr @OUTPUT_DATA, i64 10), align 2, !tbaa !8
  %44 = icmp eq i8 %42, %43
  br i1 %44, label %45, label %130

45:                                               ; preds = %41
  %46 = load i8, ptr getelementptr inbounds nuw (i8, ptr @EXPECTED_OUTPUT, i64 11), align 1, !tbaa !8
  %47 = load i8, ptr getelementptr inbounds nuw (i8, ptr @OUTPUT_DATA, i64 11), align 1, !tbaa !8
  %48 = icmp eq i8 %46, %47
  br i1 %48, label %49, label %130

49:                                               ; preds = %45
  %50 = load i8, ptr getelementptr inbounds nuw (i8, ptr @EXPECTED_OUTPUT, i64 12), align 4, !tbaa !8
  %51 = load i8, ptr getelementptr inbounds nuw (i8, ptr @OUTPUT_DATA, i64 12), align 4, !tbaa !8
  %52 = icmp eq i8 %50, %51
  br i1 %52, label %53, label %130

53:                                               ; preds = %49
  %54 = load i8, ptr getelementptr inbounds nuw (i8, ptr @EXPECTED_OUTPUT, i64 13), align 1, !tbaa !8
  %55 = load i8, ptr getelementptr inbounds nuw (i8, ptr @OUTPUT_DATA, i64 13), align 1, !tbaa !8
  %56 = icmp eq i8 %54, %55
  br i1 %56, label %57, label %130

57:                                               ; preds = %53
  %58 = load i8, ptr getelementptr inbounds nuw (i8, ptr @EXPECTED_OUTPUT, i64 14), align 2, !tbaa !8
  %59 = load i8, ptr getelementptr inbounds nuw (i8, ptr @OUTPUT_DATA, i64 14), align 2, !tbaa !8
  %60 = icmp eq i8 %58, %59
  br i1 %60, label %61, label %130

61:                                               ; preds = %57
  %62 = load i8, ptr getelementptr inbounds nuw (i8, ptr @EXPECTED_OUTPUT, i64 15), align 1, !tbaa !8
  %63 = load i8, ptr getelementptr inbounds nuw (i8, ptr @OUTPUT_DATA, i64 15), align 1, !tbaa !8
  %64 = icmp eq i8 %62, %63
  br i1 %64, label %65, label %130

65:                                               ; preds = %61
  %66 = load i8, ptr getelementptr inbounds nuw (i8, ptr @EXPECTED_OUTPUT, i64 16), align 16, !tbaa !8
  %67 = load i8, ptr getelementptr inbounds nuw (i8, ptr @OUTPUT_DATA, i64 16), align 16, !tbaa !8
  %68 = icmp eq i8 %66, %67
  br i1 %68, label %69, label %130

69:                                               ; preds = %65
  %70 = load i8, ptr getelementptr inbounds nuw (i8, ptr @EXPECTED_OUTPUT, i64 17), align 1, !tbaa !8
  %71 = load i8, ptr getelementptr inbounds nuw (i8, ptr @OUTPUT_DATA, i64 17), align 1, !tbaa !8
  %72 = icmp eq i8 %70, %71
  br i1 %72, label %73, label %130

73:                                               ; preds = %69
  %74 = load i8, ptr getelementptr inbounds nuw (i8, ptr @EXPECTED_OUTPUT, i64 18), align 2, !tbaa !8
  %75 = load i8, ptr getelementptr inbounds nuw (i8, ptr @OUTPUT_DATA, i64 18), align 2, !tbaa !8
  %76 = icmp eq i8 %74, %75
  br i1 %76, label %77, label %130

77:                                               ; preds = %73
  %78 = load i8, ptr getelementptr inbounds nuw (i8, ptr @EXPECTED_OUTPUT, i64 19), align 1, !tbaa !8
  %79 = load i8, ptr getelementptr inbounds nuw (i8, ptr @OUTPUT_DATA, i64 19), align 1, !tbaa !8
  %80 = icmp eq i8 %78, %79
  br i1 %80, label %81, label %130

81:                                               ; preds = %77
  %82 = load i8, ptr getelementptr inbounds nuw (i8, ptr @EXPECTED_OUTPUT, i64 20), align 4, !tbaa !8
  %83 = load i8, ptr getelementptr inbounds nuw (i8, ptr @OUTPUT_DATA, i64 20), align 4, !tbaa !8
  %84 = icmp eq i8 %82, %83
  br i1 %84, label %85, label %130

85:                                               ; preds = %81
  %86 = load i8, ptr getelementptr inbounds nuw (i8, ptr @EXPECTED_OUTPUT, i64 21), align 1, !tbaa !8
  %87 = load i8, ptr getelementptr inbounds nuw (i8, ptr @OUTPUT_DATA, i64 21), align 1, !tbaa !8
  %88 = icmp eq i8 %86, %87
  br i1 %88, label %89, label %130

89:                                               ; preds = %85
  %90 = load i8, ptr getelementptr inbounds nuw (i8, ptr @EXPECTED_OUTPUT, i64 22), align 2, !tbaa !8
  %91 = load i8, ptr getelementptr inbounds nuw (i8, ptr @OUTPUT_DATA, i64 22), align 2, !tbaa !8
  %92 = icmp eq i8 %90, %91
  br i1 %92, label %93, label %130

93:                                               ; preds = %89
  %94 = load i8, ptr getelementptr inbounds nuw (i8, ptr @EXPECTED_OUTPUT, i64 23), align 1, !tbaa !8
  %95 = load i8, ptr getelementptr inbounds nuw (i8, ptr @OUTPUT_DATA, i64 23), align 1, !tbaa !8
  %96 = icmp eq i8 %94, %95
  br i1 %96, label %97, label %130

97:                                               ; preds = %93
  %98 = load i8, ptr getelementptr inbounds nuw (i8, ptr @EXPECTED_OUTPUT, i64 24), align 8, !tbaa !8
  %99 = load i8, ptr getelementptr inbounds nuw (i8, ptr @OUTPUT_DATA, i64 24), align 8, !tbaa !8
  %100 = icmp eq i8 %98, %99
  br i1 %100, label %101, label %130

101:                                              ; preds = %97
  %102 = load i8, ptr getelementptr inbounds nuw (i8, ptr @EXPECTED_OUTPUT, i64 25), align 1, !tbaa !8
  %103 = load i8, ptr getelementptr inbounds nuw (i8, ptr @OUTPUT_DATA, i64 25), align 1, !tbaa !8
  %104 = icmp eq i8 %102, %103
  br i1 %104, label %105, label %130

105:                                              ; preds = %101
  %106 = load i8, ptr getelementptr inbounds nuw (i8, ptr @EXPECTED_OUTPUT, i64 26), align 2, !tbaa !8
  %107 = load i8, ptr getelementptr inbounds nuw (i8, ptr @OUTPUT_DATA, i64 26), align 2, !tbaa !8
  %108 = icmp eq i8 %106, %107
  br i1 %108, label %109, label %130

109:                                              ; preds = %105
  %110 = load i8, ptr getelementptr inbounds nuw (i8, ptr @EXPECTED_OUTPUT, i64 27), align 1, !tbaa !8
  %111 = load i8, ptr getelementptr inbounds nuw (i8, ptr @OUTPUT_DATA, i64 27), align 1, !tbaa !8
  %112 = icmp eq i8 %110, %111
  br i1 %112, label %113, label %130

113:                                              ; preds = %109
  %114 = load i8, ptr getelementptr inbounds nuw (i8, ptr @EXPECTED_OUTPUT, i64 28), align 4, !tbaa !8
  %115 = load i8, ptr getelementptr inbounds nuw (i8, ptr @OUTPUT_DATA, i64 28), align 4, !tbaa !8
  %116 = icmp eq i8 %114, %115
  br i1 %116, label %117, label %130

117:                                              ; preds = %113
  %118 = load i8, ptr getelementptr inbounds nuw (i8, ptr @EXPECTED_OUTPUT, i64 29), align 1, !tbaa !8
  %119 = load i8, ptr getelementptr inbounds nuw (i8, ptr @OUTPUT_DATA, i64 29), align 1, !tbaa !8
  %120 = icmp eq i8 %118, %119
  br i1 %120, label %121, label %130

121:                                              ; preds = %117
  %122 = load i8, ptr getelementptr inbounds nuw (i8, ptr @EXPECTED_OUTPUT, i64 30), align 2, !tbaa !8
  %123 = load i8, ptr getelementptr inbounds nuw (i8, ptr @OUTPUT_DATA, i64 30), align 2, !tbaa !8
  %124 = icmp eq i8 %122, %123
  br i1 %124, label %125, label %130

125:                                              ; preds = %121
  %126 = load i8, ptr getelementptr inbounds nuw (i8, ptr @EXPECTED_OUTPUT, i64 31), align 1, !tbaa !8
  %127 = load i8, ptr getelementptr inbounds nuw (i8, ptr @OUTPUT_DATA, i64 31), align 1, !tbaa !8
  %128 = icmp eq i8 %126, %127
  %129 = zext i1 %128 to i32
  br label %130

130:                                              ; preds = %125, %121, %117, %113, %109, %105, %101, %97, %93, %89, %85, %81, %77, %73, %69, %65, %61, %57, %53, %49, %45, %41, %37, %33, %29, %25, %21, %17, %13, %9, %5, %1
  %131 = phi i32 [ 0, %1 ], [ 0, %5 ], [ 0, %9 ], [ 0, %13 ], [ 0, %17 ], [ 0, %21 ], [ 0, %25 ], [ 0, %29 ], [ 0, %33 ], [ 0, %37 ], [ 0, %41 ], [ 0, %45 ], [ 0, %49 ], [ 0, %53 ], [ 0, %57 ], [ 0, %61 ], [ 0, %65 ], [ 0, %69 ], [ 0, %73 ], [ 0, %77 ], [ 0, %81 ], [ 0, %85 ], [ 0, %89 ], [ 0, %93 ], [ 0, %97 ], [ 0, %101 ], [ 0, %105 ], [ 0, %109 ], [ 0, %113 ], [ 0, %117 ], [ 0, %121 ], [ %129, %125 ]
  ret i32 %131
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc void @DepthwiseConvPerChannel() unnamed_addr #4 {
  br label %1

1:                                                ; preds = %1, %0
  %2 = phi i64 [ %57, %1 ], [ 0, %0 ]
  %3 = getelementptr i8, ptr @INPUT_DATA, i64 %2
  %4 = getelementptr i8, ptr @FILTER_DATA, i64 %2
  %5 = load i8, ptr %3, align 1, !tbaa !8
  %6 = sext i8 %5 to i64
  %7 = load i8, ptr %4, align 1, !tbaa !8
  %8 = sext i8 %7 to i64
  %9 = add nsw i64 %6, 128
  %10 = mul nsw i64 %9, %8
  %11 = getelementptr i8, ptr %3, i64 32
  %12 = load i8, ptr %11, align 1, !tbaa !8
  %13 = sext i8 %12 to i64
  %14 = getelementptr i8, ptr %4, i64 32
  %15 = load i8, ptr %14, align 1, !tbaa !8
  %16 = sext i8 %15 to i64
  %17 = add nsw i64 %13, 128
  %18 = mul nsw i64 %17, %16
  %19 = add i64 %18, %10
  %20 = getelementptr i8, ptr %3, i64 64
  %21 = load i8, ptr %20, align 1, !tbaa !8
  %22 = sext i8 %21 to i64
  %23 = getelementptr i8, ptr %4, i64 64
  %24 = load i8, ptr %23, align 1, !tbaa !8
  %25 = sext i8 %24 to i64
  %26 = add nsw i64 %22, 128
  %27 = mul nsw i64 %26, %25
  %28 = add i64 %27, %19
  %29 = getelementptr i8, ptr %3, i64 96
  %30 = load i8, ptr %29, align 1, !tbaa !8
  %31 = sext i8 %30 to i64
  %32 = getelementptr i8, ptr %4, i64 96
  %33 = load i8, ptr %32, align 1, !tbaa !8
  %34 = sext i8 %33 to i64
  %35 = add nsw i64 %31, 128
  %36 = mul nsw i64 %35, %34
  %37 = add i64 %36, %28
  %38 = shl i64 %37, 32
  %39 = ashr exact i64 %38, 32
  %40 = getelementptr inbounds nuw i32, ptr @OUTPUT_MULTIPLIER, i64 %2
  %41 = load i32, ptr %40, align 4, !tbaa !11
  %42 = getelementptr inbounds nuw i32, ptr @OUTPUT_SHIFT, i64 %2
  %43 = load i32, ptr %42, align 4, !tbaa !11
  %44 = sub nsw i32 31, %43
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %45, -1
  %47 = shl nuw i64 1, %46
  %48 = sext i32 %41 to i64
  %49 = mul nsw i64 %39, %48
  %50 = add nsw i64 %47, %49
  %51 = ashr i64 %50, %45
  %52 = trunc i64 %51 to i32
  %53 = tail call i32 @llvm.smax.i32(i32 %52, i32 -128)
  %54 = tail call i32 @llvm.smin.i32(i32 %53, i32 127)
  %55 = trunc nsw i32 %54 to i8
  %56 = getelementptr i8, ptr @OUTPUT_DATA, i64 %2
  store i8 %55, ptr %56, align 1, !tbaa !8
  %57 = add nuw nsw i64 %2, 1
  %58 = icmp eq i64 %57, 32
  br i1 %58, label %59, label %1, !llvm.loop !13

59:                                               ; preds = %1
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = !{!9, !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !12, i64 0}
!12 = !{!"int", !9, i64 0}
!13 = distinct !{!13, !6}
