; ModuleID = '../src/tarfind/tarfind.c'
source_filename = "../src/tarfind/tarfind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tar_header_t = type { [100 x i8], [8 x i8], [8 x i8], [8 x i8], [12 x i8], [12 x i8], [8 x i8], i8, [100 x i8] }

@heap = internal global [9000 x i8] zeroinitializer, align 1

; Function Attrs: nounwind uwtable
define dso_local void @warm_caches(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc i32 @benchmark_body(i32 noundef 1, i32 noundef %0)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @benchmark_body(i32 noundef range(i32 1, 47) %0, i32 noundef %1) unnamed_addr #1 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %175, label %4

4:                                                ; preds = %2, %169
  %5 = phi i32 [ %170, %169 ], [ 0, %2 ]
  br label %6

6:                                                ; preds = %4, %144
  %7 = phi i32 [ 0, %4 ], [ %146, %144 ]
  tail call void @init_heap_beebs(ptr noundef nonnull @heap, i64 noundef 9000) #5
  %8 = tail call ptr @malloc_beebs(i64 noundef 8995) #5
  br label %148

9:                                                ; preds = %29, %167
  %10 = phi i64 [ %30, %29 ], [ 0, %167 ]
  %11 = getelementptr inbounds nuw %struct.tar_header_t, ptr %8, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !5
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %25, label %14

14:                                               ; preds = %9, %20
  %15 = phi i8 [ %23, %20 ], [ %12, %9 ]
  %16 = phi ptr [ %22, %20 ], [ %168, %9 ]
  %17 = phi ptr [ %21, %20 ], [ %11, %9 ]
  %18 = load i8, ptr %16, align 1, !tbaa !5
  %19 = icmp eq i8 %15, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %14
  %21 = getelementptr inbounds nuw i8, ptr %17, i64 1
  %22 = getelementptr inbounds nuw i8, ptr %16, i64 1
  %23 = load i8, ptr %21, align 1, !tbaa !5
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %14, !llvm.loop !8

25:                                               ; preds = %20, %9
  %26 = phi ptr [ %168, %9 ], [ %22, %20 ]
  %27 = load i8, ptr %26, align 1, !tbaa !5
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %14, %25
  %30 = add nuw nsw i64 %10, 1
  %31 = icmp eq i64 %30, 35
  br i1 %31, label %32, label %9, !llvm.loop !10

32:                                               ; preds = %25, %29
  %33 = phi i32 [ 0, %29 ], [ 1, %25 ]
  %34 = getelementptr inbounds nuw i8, ptr %8, i64 4626
  br label %35

35:                                               ; preds = %55, %32
  %36 = phi i64 [ %56, %55 ], [ 0, %32 ]
  %37 = getelementptr inbounds nuw %struct.tar_header_t, ptr %8, i64 %36
  %38 = load i8, ptr %37, align 1, !tbaa !5
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %51, label %40

40:                                               ; preds = %35, %46
  %41 = phi i8 [ %49, %46 ], [ %38, %35 ]
  %42 = phi ptr [ %48, %46 ], [ %34, %35 ]
  %43 = phi ptr [ %47, %46 ], [ %37, %35 ]
  %44 = load i8, ptr %42, align 1, !tbaa !5
  %45 = icmp eq i8 %41, %44
  br i1 %45, label %46, label %55

46:                                               ; preds = %40
  %47 = getelementptr inbounds nuw i8, ptr %43, i64 1
  %48 = getelementptr inbounds nuw i8, ptr %42, i64 1
  %49 = load i8, ptr %47, align 1, !tbaa !5
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %40, !llvm.loop !8

51:                                               ; preds = %46, %35
  %52 = phi ptr [ %34, %35 ], [ %48, %46 ]
  %53 = load i8, ptr %52, align 1, !tbaa !5
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %40, %51
  %56 = add nuw nsw i64 %36, 1
  %57 = icmp eq i64 %56, 35
  br i1 %57, label %60, label %35, !llvm.loop !10

58:                                               ; preds = %51
  %59 = add nuw nsw i32 %33, 1
  br label %60

60:                                               ; preds = %55, %58
  %61 = phi i32 [ %59, %58 ], [ %33, %55 ]
  %62 = getelementptr inbounds nuw i8, ptr %8, i64 4883
  br label %63

63:                                               ; preds = %83, %60
  %64 = phi i64 [ %84, %83 ], [ 0, %60 ]
  %65 = getelementptr inbounds nuw %struct.tar_header_t, ptr %8, i64 %64
  %66 = load i8, ptr %65, align 1, !tbaa !5
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %79, label %68

68:                                               ; preds = %63, %74
  %69 = phi i8 [ %77, %74 ], [ %66, %63 ]
  %70 = phi ptr [ %76, %74 ], [ %62, %63 ]
  %71 = phi ptr [ %75, %74 ], [ %65, %63 ]
  %72 = load i8, ptr %70, align 1, !tbaa !5
  %73 = icmp eq i8 %69, %72
  br i1 %73, label %74, label %83

74:                                               ; preds = %68
  %75 = getelementptr inbounds nuw i8, ptr %71, i64 1
  %76 = getelementptr inbounds nuw i8, ptr %70, i64 1
  %77 = load i8, ptr %75, align 1, !tbaa !5
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %79, label %68, !llvm.loop !8

79:                                               ; preds = %74, %63
  %80 = phi ptr [ %62, %63 ], [ %76, %74 ]
  %81 = load i8, ptr %80, align 1, !tbaa !5
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %68, %79
  %84 = add nuw nsw i64 %64, 1
  %85 = icmp eq i64 %84, 35
  br i1 %85, label %88, label %63, !llvm.loop !10

86:                                               ; preds = %79
  %87 = add nuw nsw i32 %61, 1
  br label %88

88:                                               ; preds = %83, %86
  %89 = phi i32 [ %87, %86 ], [ %61, %83 ]
  %90 = getelementptr inbounds nuw i8, ptr %8, i64 5140
  br label %91

91:                                               ; preds = %111, %88
  %92 = phi i64 [ %112, %111 ], [ 0, %88 ]
  %93 = getelementptr inbounds nuw %struct.tar_header_t, ptr %8, i64 %92
  %94 = load i8, ptr %93, align 1, !tbaa !5
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %107, label %96

96:                                               ; preds = %91, %102
  %97 = phi i8 [ %105, %102 ], [ %94, %91 ]
  %98 = phi ptr [ %104, %102 ], [ %90, %91 ]
  %99 = phi ptr [ %103, %102 ], [ %93, %91 ]
  %100 = load i8, ptr %98, align 1, !tbaa !5
  %101 = icmp eq i8 %97, %100
  br i1 %101, label %102, label %111

102:                                              ; preds = %96
  %103 = getelementptr inbounds nuw i8, ptr %99, i64 1
  %104 = getelementptr inbounds nuw i8, ptr %98, i64 1
  %105 = load i8, ptr %103, align 1, !tbaa !5
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %107, label %96, !llvm.loop !8

107:                                              ; preds = %102, %91
  %108 = phi ptr [ %90, %91 ], [ %104, %102 ]
  %109 = load i8, ptr %108, align 1, !tbaa !5
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %114, label %111

111:                                              ; preds = %96, %107
  %112 = add nuw nsw i64 %92, 1
  %113 = icmp eq i64 %112, 35
  br i1 %113, label %116, label %91, !llvm.loop !10

114:                                              ; preds = %107
  %115 = add nuw nsw i32 %89, 1
  br label %116

116:                                              ; preds = %111, %114
  %117 = phi i32 [ %115, %114 ], [ %89, %111 ]
  %118 = getelementptr inbounds nuw i8, ptr %8, i64 5397
  br label %119

119:                                              ; preds = %139, %116
  %120 = phi i64 [ %140, %139 ], [ 0, %116 ]
  %121 = getelementptr inbounds nuw %struct.tar_header_t, ptr %8, i64 %120
  %122 = load i8, ptr %121, align 1, !tbaa !5
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %135, label %124

124:                                              ; preds = %119, %130
  %125 = phi i8 [ %133, %130 ], [ %122, %119 ]
  %126 = phi ptr [ %132, %130 ], [ %118, %119 ]
  %127 = phi ptr [ %131, %130 ], [ %121, %119 ]
  %128 = load i8, ptr %126, align 1, !tbaa !5
  %129 = icmp eq i8 %125, %128
  br i1 %129, label %130, label %139

130:                                              ; preds = %124
  %131 = getelementptr inbounds nuw i8, ptr %127, i64 1
  %132 = getelementptr inbounds nuw i8, ptr %126, i64 1
  %133 = load i8, ptr %131, align 1, !tbaa !5
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %135, label %124, !llvm.loop !8

135:                                              ; preds = %130, %119
  %136 = phi ptr [ %118, %119 ], [ %132, %130 ]
  %137 = load i8, ptr %136, align 1, !tbaa !5
  %138 = icmp eq i8 %137, 0
  br i1 %138, label %142, label %139

139:                                              ; preds = %124, %135
  %140 = add nuw nsw i64 %120, 1
  %141 = icmp eq i64 %140, 35
  br i1 %141, label %144, label %119, !llvm.loop !10

142:                                              ; preds = %135
  %143 = add nuw nsw i32 %117, 1
  br label %144

144:                                              ; preds = %139, %142
  %145 = phi i32 [ %143, %142 ], [ %117, %139 ]
  tail call void @free_beebs(ptr noundef %8) #5
  %146 = add nuw i32 %7, 1
  %147 = icmp eq i32 %146, %1
  br i1 %147, label %169, label %6, !llvm.loop !11

148:                                              ; preds = %153, %6
  %149 = phi i64 [ %155, %153 ], [ 0, %6 ]
  %150 = phi i64 [ %156, %153 ], [ 5, %6 ]
  %151 = getelementptr inbounds nuw %struct.tar_header_t, ptr %8, i64 %149
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(257) %151, i8 0, i64 257, i1 false)
  %152 = getelementptr inbounds nuw i8, ptr %151, i64 156
  store i8 48, ptr %152, align 1, !tbaa !12
  br label %158

153:                                              ; preds = %158
  %154 = getelementptr inbounds nuw i8, ptr %151, i64 124
  store i8 48, ptr %154, align 1, !tbaa !5
  %155 = add nuw nsw i64 %149, 1
  %156 = add nuw nsw i64 %150, 1
  %157 = icmp eq i64 %155, 35
  br i1 %157, label %167, label %148, !llvm.loop !14

158:                                              ; preds = %158, %148
  %159 = phi i64 [ %165, %158 ], [ 0, %148 ]
  %160 = tail call i32 @rand_beebs() #5
  %161 = srem i32 %160, 26
  %162 = trunc nsw i32 %161 to i8
  %163 = add nsw i8 %162, 65
  %164 = getelementptr inbounds nuw [100 x i8], ptr %151, i64 0, i64 %159
  store i8 %163, ptr %164, align 1, !tbaa !5
  %165 = add nuw nsw i64 %159, 1
  %166 = icmp eq i64 %165, %150
  br i1 %166, label %153, label %158, !llvm.loop !15

167:                                              ; preds = %153
  %168 = getelementptr inbounds nuw i8, ptr %8, i64 4369
  br label %9

169:                                              ; preds = %144
  %170 = add nuw nsw i32 %5, 1
  %171 = icmp eq i32 %170, %0
  br i1 %171, label %172, label %4, !llvm.loop !16

172:                                              ; preds = %169
  %173 = icmp eq i32 %145, 5
  %174 = zext i1 %173 to i32
  br label %175

175:                                              ; preds = %2, %172
  %176 = phi i32 [ %174, %172 ], [ 0, %2 ]
  ret i32 %176
}

; Function Attrs: noinline nounwind uwtable
define dso_local range(i32 0, 2) i32 @benchmark() local_unnamed_addr #1 {
  %1 = tail call fastcc i32 @benchmark_body(i32 noundef 46, i32 noundef 20)
  ret i32 %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @initialise_benchmark() local_unnamed_addr #2 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 0, 2) i32 @verify_benchmark(i32 noundef %0) local_unnamed_addr #2 {
  %2 = icmp eq i32 %0, 1
  %3 = zext i1 %2 to i32
  ret i32 %3
}

declare void @init_heap_beebs(ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @malloc_beebs(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

declare i32 @rand_beebs() local_unnamed_addr #3

declare void @free_beebs(ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = distinct !{!10, !9}
!11 = distinct !{!11, !9}
!12 = !{!13, !6, i64 156}
!13 = !{!"", !6, i64 0, !6, i64 100, !6, i64 108, !6, i64 116, !6, i64 124, !6, i64 136, !6, i64 148, !6, i64 156, !6, i64 157}
!14 = distinct !{!14, !9}
!15 = distinct !{!15, !9}
!16 = distinct !{!16, !9}
