; ModuleID = '../src/qrduino/qrtest.c'
source_filename = "../src/qrduino/qrtest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.verify_benchmark.expected = private unnamed_addr constant [22 x i8] c"\FEe?\80\82n\A0\80\BAA.\80\BA&.\80\BA\09\AE\80\82\14", align 16
@strinbuf = external local_unnamed_addr global ptr, align 8
@heap = internal global [8192 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [22 x i8] c"http://www.mageec.com\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @warm_caches(i32 noundef %0) local_unnamed_addr #0 {
  tail call fastcc void @benchmark_body(i32 noundef 1, i32 noundef %0)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @benchmark_body(i32 noundef range(i32 1, 6) %0, i32 noundef %1) unnamed_addr #1 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %15, label %4

4:                                                ; preds = %2, %12
  %5 = phi i32 [ %13, %12 ], [ 0, %2 ]
  br label %6

6:                                                ; preds = %4, %6
  %7 = phi i32 [ 0, %4 ], [ %10, %6 ]
  tail call void @init_heap_beebs(ptr noundef nonnull @heap, i64 noundef 8192) #6
  %8 = tail call i32 @initeccsize(i8 noundef zeroext 1, i32 noundef 22) #6
  %9 = load ptr, ptr @strinbuf, align 8, !tbaa !5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %9, ptr noundef nonnull align 1 dereferenceable(22) @.str, i64 22, i1 false)
  tail call void @initframe() #6
  tail call void @qrencode() #6
  tail call void @freeframe() #6
  tail call void (...) @freeecc() #6
  %10 = add nuw i32 %7, 1
  %11 = icmp eq i32 %10, %1
  br i1 %11, label %12, label %6, !llvm.loop !10

12:                                               ; preds = %6
  %13 = add nuw nsw i32 %5, 1
  %14 = icmp eq i32 %13, %0
  br i1 %14, label %15, label %4, !llvm.loop !12

15:                                               ; preds = %12, %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @benchmark() local_unnamed_addr #1 {
  tail call fastcc void @benchmark_body(i32 noundef 5, i32 noundef 20)
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @initialise_benchmark() local_unnamed_addr #2 {
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @verify_benchmark(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @strinbuf, align 8, !tbaa !5
  %3 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(22) %2, ptr noundef nonnull dereferenceable(22) @__const.verify_benchmark.expected, i64 22)
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = tail call i32 @check_heap_beebs(ptr noundef nonnull @heap) #6
  %7 = icmp ne i32 %6, 0
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %5, %1
  %10 = phi i32 [ 0, %1 ], [ %8, %5 ]
  ret i32 %10
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

declare i32 @check_heap_beebs(ptr noundef) local_unnamed_addr #4

declare void @init_heap_beebs(ptr noundef, i64 noundef) local_unnamed_addr #4

declare i32 @initeccsize(i8 noundef zeroext, i32 noundef) local_unnamed_addr #4

declare void @initframe() local_unnamed_addr #4

declare void @qrencode() local_unnamed_addr #4

declare void @freeframe() local_unnamed_addr #4

declare void @freeecc(...) local_unnamed_addr #4

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind willreturn memory(argmem: read) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"p1 omnipotent char", !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
