; ModuleID = 'cBench/consumer_jpeg_c/src/jdatasrc.c'
source_filename = "cBench/consumer_jpeg_c/src/jdatasrc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jpeg_decompress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.my_source_mgr = type { %struct.jpeg_source_mgr, ptr, ptr, i32 }
%struct.jpeg_source_mgr = type { ptr, i64, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }

; Function Attrs: noinline nounwind uwtable
define dso_local void @jpeg_stdio_src(ptr noundef %0, ptr noundef %1) #0 !dbg !546 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !550, !DIExpression(), !551)
  store ptr %1, ptr %4, align 8
    #dbg_declare(ptr %4, !552, !DIExpression(), !553)
    #dbg_declare(ptr %5, !554, !DIExpression(), !555)
  %6 = load ptr, ptr %3, align 8, !dbg !556
  %7 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %6, i32 0, i32 5, !dbg !558
  %8 = load ptr, ptr %7, align 8, !dbg !558
  %9 = icmp eq ptr %8, null, !dbg !559
  br i1 %9, label %10, label %32, !dbg !559

10:                                               ; preds = %2
  %11 = load ptr, ptr %3, align 8, !dbg !560
  %12 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %11, i32 0, i32 1, !dbg !562
  %13 = load ptr, ptr %12, align 8, !dbg !562
  %14 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %13, i32 0, i32 0, !dbg !563
  %15 = load ptr, ptr %14, align 8, !dbg !563
  %16 = load ptr, ptr %3, align 8, !dbg !564
  %17 = call ptr %15(ptr noundef %16, i32 noundef 0, i64 noundef 80), !dbg !565
  %18 = load ptr, ptr %3, align 8, !dbg !566
  %19 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %18, i32 0, i32 5, !dbg !567
  store ptr %17, ptr %19, align 8, !dbg !568
  %20 = load ptr, ptr %3, align 8, !dbg !569
  %21 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %20, i32 0, i32 5, !dbg !570
  %22 = load ptr, ptr %21, align 8, !dbg !570
  store ptr %22, ptr %5, align 8, !dbg !571
  %23 = load ptr, ptr %3, align 8, !dbg !572
  %24 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %23, i32 0, i32 1, !dbg !573
  %25 = load ptr, ptr %24, align 8, !dbg !573
  %26 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %25, i32 0, i32 0, !dbg !574
  %27 = load ptr, ptr %26, align 8, !dbg !574
  %28 = load ptr, ptr %3, align 8, !dbg !575
  %29 = call ptr %27(ptr noundef %28, i32 noundef 0, i64 noundef 4096), !dbg !576
  %30 = load ptr, ptr %5, align 8, !dbg !577
  %31 = getelementptr inbounds nuw %struct.my_source_mgr, ptr %30, i32 0, i32 2, !dbg !578
  store ptr %29, ptr %31, align 8, !dbg !579
  br label %32, !dbg !580

32:                                               ; preds = %10, %2
  %33 = load ptr, ptr %3, align 8, !dbg !581
  %34 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %33, i32 0, i32 5, !dbg !582
  %35 = load ptr, ptr %34, align 8, !dbg !582
  store ptr %35, ptr %5, align 8, !dbg !583
  %36 = load ptr, ptr %5, align 8, !dbg !584
  %37 = getelementptr inbounds nuw %struct.my_source_mgr, ptr %36, i32 0, i32 0, !dbg !585
  %38 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %37, i32 0, i32 2, !dbg !586
  store ptr @init_source, ptr %38, align 8, !dbg !587
  %39 = load ptr, ptr %5, align 8, !dbg !588
  %40 = getelementptr inbounds nuw %struct.my_source_mgr, ptr %39, i32 0, i32 0, !dbg !589
  %41 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %40, i32 0, i32 3, !dbg !590
  store ptr @fill_input_buffer, ptr %41, align 8, !dbg !591
  %42 = load ptr, ptr %5, align 8, !dbg !592
  %43 = getelementptr inbounds nuw %struct.my_source_mgr, ptr %42, i32 0, i32 0, !dbg !593
  %44 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %43, i32 0, i32 4, !dbg !594
  store ptr @skip_input_data, ptr %44, align 8, !dbg !595
  %45 = load ptr, ptr %5, align 8, !dbg !596
  %46 = getelementptr inbounds nuw %struct.my_source_mgr, ptr %45, i32 0, i32 0, !dbg !597
  %47 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %46, i32 0, i32 5, !dbg !598
  store ptr @jpeg_resync_to_restart, ptr %47, align 8, !dbg !599
  %48 = load ptr, ptr %5, align 8, !dbg !600
  %49 = getelementptr inbounds nuw %struct.my_source_mgr, ptr %48, i32 0, i32 0, !dbg !601
  %50 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %49, i32 0, i32 6, !dbg !602
  store ptr @term_source, ptr %50, align 8, !dbg !603
  %51 = load ptr, ptr %4, align 8, !dbg !604
  %52 = load ptr, ptr %5, align 8, !dbg !605
  %53 = getelementptr inbounds nuw %struct.my_source_mgr, ptr %52, i32 0, i32 1, !dbg !606
  store ptr %51, ptr %53, align 8, !dbg !607
  %54 = load ptr, ptr %5, align 8, !dbg !608
  %55 = getelementptr inbounds nuw %struct.my_source_mgr, ptr %54, i32 0, i32 0, !dbg !609
  %56 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %55, i32 0, i32 1, !dbg !610
  store i64 0, ptr %56, align 8, !dbg !611
  %57 = load ptr, ptr %5, align 8, !dbg !612
  %58 = getelementptr inbounds nuw %struct.my_source_mgr, ptr %57, i32 0, i32 0, !dbg !613
  %59 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %58, i32 0, i32 0, !dbg !614
  store ptr null, ptr %59, align 8, !dbg !615
  ret void, !dbg !616
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_source(ptr noundef %0) #0 !dbg !617 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !618, !DIExpression(), !619)
    #dbg_declare(ptr %3, !620, !DIExpression(), !621)
  %4 = load ptr, ptr %2, align 8, !dbg !622
  %5 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %4, i32 0, i32 5, !dbg !623
  %6 = load ptr, ptr %5, align 8, !dbg !623
  store ptr %6, ptr %3, align 8, !dbg !621
  %7 = load ptr, ptr %3, align 8, !dbg !624
  %8 = getelementptr inbounds nuw %struct.my_source_mgr, ptr %7, i32 0, i32 3, !dbg !625
  store i32 1, ptr %8, align 8, !dbg !626
  ret void, !dbg !627
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @fill_input_buffer(ptr noundef %0) #0 !dbg !628 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !629, !DIExpression(), !630)
    #dbg_declare(ptr %3, !631, !DIExpression(), !632)
  %5 = load ptr, ptr %2, align 8, !dbg !633
  %6 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %5, i32 0, i32 5, !dbg !634
  %7 = load ptr, ptr %6, align 8, !dbg !634
  store ptr %7, ptr %3, align 8, !dbg !632
    #dbg_declare(ptr %4, !635, !DIExpression(), !636)
  %8 = load ptr, ptr %3, align 8, !dbg !637
  %9 = getelementptr inbounds nuw %struct.my_source_mgr, ptr %8, i32 0, i32 2, !dbg !637
  %10 = load ptr, ptr %9, align 8, !dbg !637
  %11 = load ptr, ptr %3, align 8, !dbg !637
  %12 = getelementptr inbounds nuw %struct.my_source_mgr, ptr %11, i32 0, i32 1, !dbg !637
  %13 = load ptr, ptr %12, align 8, !dbg !637
  %14 = call i64 @fread(ptr noundef %10, i64 noundef 1, i64 noundef 4096, ptr noundef %13), !dbg !637
  store i64 %14, ptr %4, align 8, !dbg !638
  %15 = load i64, ptr %4, align 8, !dbg !639
  %16 = icmp ule i64 %15, 0, !dbg !641
  br i1 %16, label %17, label %52, !dbg !641

17:                                               ; preds = %1
  %18 = load ptr, ptr %3, align 8, !dbg !642
  %19 = getelementptr inbounds nuw %struct.my_source_mgr, ptr %18, i32 0, i32 3, !dbg !645
  %20 = load i32, ptr %19, align 8, !dbg !645
  %21 = icmp ne i32 %20, 0, !dbg !642
  br i1 %21, label %22, label %33, !dbg !642

22:                                               ; preds = %17
  %23 = load ptr, ptr %2, align 8, !dbg !646
  %24 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %23, i32 0, i32 0, !dbg !646
  %25 = load ptr, ptr %24, align 8, !dbg !646
  %26 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %25, i32 0, i32 5, !dbg !646
  store i32 41, ptr %26, align 8, !dbg !646
  %27 = load ptr, ptr %2, align 8, !dbg !646
  %28 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %27, i32 0, i32 0, !dbg !646
  %29 = load ptr, ptr %28, align 8, !dbg !646
  %30 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %29, i32 0, i32 0, !dbg !646
  %31 = load ptr, ptr %30, align 8, !dbg !646
  %32 = load ptr, ptr %2, align 8, !dbg !646
  call void %31(ptr noundef %32), !dbg !646
  br label %33, !dbg !646

33:                                               ; preds = %22, %17
  %34 = load ptr, ptr %2, align 8, !dbg !647
  %35 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %34, i32 0, i32 0, !dbg !647
  %36 = load ptr, ptr %35, align 8, !dbg !647
  %37 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %36, i32 0, i32 5, !dbg !647
  store i32 116, ptr %37, align 8, !dbg !647
  %38 = load ptr, ptr %2, align 8, !dbg !647
  %39 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %38, i32 0, i32 0, !dbg !647
  %40 = load ptr, ptr %39, align 8, !dbg !647
  %41 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %40, i32 0, i32 1, !dbg !647
  %42 = load ptr, ptr %41, align 8, !dbg !647
  %43 = load ptr, ptr %2, align 8, !dbg !647
  call void %42(ptr noundef %43, i32 noundef -1), !dbg !647
  %44 = load ptr, ptr %3, align 8, !dbg !648
  %45 = getelementptr inbounds nuw %struct.my_source_mgr, ptr %44, i32 0, i32 2, !dbg !649
  %46 = load ptr, ptr %45, align 8, !dbg !649
  %47 = getelementptr inbounds i8, ptr %46, i64 0, !dbg !648
  store i8 -1, ptr %47, align 1, !dbg !650
  %48 = load ptr, ptr %3, align 8, !dbg !651
  %49 = getelementptr inbounds nuw %struct.my_source_mgr, ptr %48, i32 0, i32 2, !dbg !652
  %50 = load ptr, ptr %49, align 8, !dbg !652
  %51 = getelementptr inbounds i8, ptr %50, i64 1, !dbg !651
  store i8 -39, ptr %51, align 1, !dbg !653
  store i64 2, ptr %4, align 8, !dbg !654
  br label %52, !dbg !655

52:                                               ; preds = %33, %1
  %53 = load ptr, ptr %3, align 8, !dbg !656
  %54 = getelementptr inbounds nuw %struct.my_source_mgr, ptr %53, i32 0, i32 2, !dbg !657
  %55 = load ptr, ptr %54, align 8, !dbg !657
  %56 = load ptr, ptr %3, align 8, !dbg !658
  %57 = getelementptr inbounds nuw %struct.my_source_mgr, ptr %56, i32 0, i32 0, !dbg !659
  %58 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %57, i32 0, i32 0, !dbg !660
  store ptr %55, ptr %58, align 8, !dbg !661
  %59 = load i64, ptr %4, align 8, !dbg !662
  %60 = load ptr, ptr %3, align 8, !dbg !663
  %61 = getelementptr inbounds nuw %struct.my_source_mgr, ptr %60, i32 0, i32 0, !dbg !664
  %62 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %61, i32 0, i32 1, !dbg !665
  store i64 %59, ptr %62, align 8, !dbg !666
  %63 = load ptr, ptr %3, align 8, !dbg !667
  %64 = getelementptr inbounds nuw %struct.my_source_mgr, ptr %63, i32 0, i32 3, !dbg !668
  store i32 0, ptr %64, align 8, !dbg !669
  ret i32 1, !dbg !670
}

; Function Attrs: noinline nounwind uwtable
define internal void @skip_input_data(ptr noundef %0, i64 noundef %1) #0 !dbg !671 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !672, !DIExpression(), !673)
  store i64 %1, ptr %4, align 8
    #dbg_declare(ptr %4, !674, !DIExpression(), !675)
    #dbg_declare(ptr %5, !676, !DIExpression(), !677)
  %6 = load ptr, ptr %3, align 8, !dbg !678
  %7 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %6, i32 0, i32 5, !dbg !679
  %8 = load ptr, ptr %7, align 8, !dbg !679
  store ptr %8, ptr %5, align 8, !dbg !677
  %9 = load i64, ptr %4, align 8, !dbg !680
  %10 = icmp sgt i64 %9, 0, !dbg !682
  br i1 %10, label %11, label %41, !dbg !682

11:                                               ; preds = %2
  br label %12, !dbg !683

12:                                               ; preds = %19, %11
  %13 = load i64, ptr %4, align 8, !dbg !685
  %14 = load ptr, ptr %5, align 8, !dbg !686
  %15 = getelementptr inbounds nuw %struct.my_source_mgr, ptr %14, i32 0, i32 0, !dbg !687
  %16 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %15, i32 0, i32 1, !dbg !688
  %17 = load i64, ptr %16, align 8, !dbg !688
  %18 = icmp sgt i64 %13, %17, !dbg !689
  br i1 %18, label %19, label %28, !dbg !683

19:                                               ; preds = %12
  %20 = load ptr, ptr %5, align 8, !dbg !690
  %21 = getelementptr inbounds nuw %struct.my_source_mgr, ptr %20, i32 0, i32 0, !dbg !692
  %22 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %21, i32 0, i32 1, !dbg !693
  %23 = load i64, ptr %22, align 8, !dbg !693
  %24 = load i64, ptr %4, align 8, !dbg !694
  %25 = sub nsw i64 %24, %23, !dbg !694
  store i64 %25, ptr %4, align 8, !dbg !694
  %26 = load ptr, ptr %3, align 8, !dbg !695
  %27 = call i32 @fill_input_buffer(ptr noundef %26), !dbg !696
  br label %12, !dbg !683, !llvm.loop !697

28:                                               ; preds = %12
  %29 = load i64, ptr %4, align 8, !dbg !700
  %30 = load ptr, ptr %5, align 8, !dbg !701
  %31 = getelementptr inbounds nuw %struct.my_source_mgr, ptr %30, i32 0, i32 0, !dbg !702
  %32 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %31, i32 0, i32 0, !dbg !703
  %33 = load ptr, ptr %32, align 8, !dbg !704
  %34 = getelementptr inbounds nuw i8, ptr %33, i64 %29, !dbg !704
  store ptr %34, ptr %32, align 8, !dbg !704
  %35 = load i64, ptr %4, align 8, !dbg !705
  %36 = load ptr, ptr %5, align 8, !dbg !706
  %37 = getelementptr inbounds nuw %struct.my_source_mgr, ptr %36, i32 0, i32 0, !dbg !707
  %38 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %37, i32 0, i32 1, !dbg !708
  %39 = load i64, ptr %38, align 8, !dbg !709
  %40 = sub i64 %39, %35, !dbg !709
  store i64 %40, ptr %38, align 8, !dbg !709
  br label %41, !dbg !710

41:                                               ; preds = %28, %2
  ret void, !dbg !711
}

declare i32 @jpeg_resync_to_restart(ptr noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @term_source(ptr noundef %0) #0 !dbg !712 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !713, !DIExpression(), !714)
  ret void, !dbg !715
}

declare i64 @fread(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!538, !539, !540, !541, !542, !543, !544}
!llvm.ident = !{!545}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !147, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jdatasrc.c", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "ea35cc0b876a765c3f09a24decdd21b8")
!2 = !{!3, !13, !18, !23}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 194, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jpeglib.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "2a2b23235fe587b10147d741e3371e67")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10, !11, !12}
!7 = !DIEnumerator(name: "JCS_UNKNOWN", value: 0)
!8 = !DIEnumerator(name: "JCS_GRAYSCALE", value: 1)
!9 = !DIEnumerator(name: "JCS_RGB", value: 2)
!10 = !DIEnumerator(name: "JCS_YCbCr", value: 3)
!11 = !DIEnumerator(name: "JCS_CMYK", value: 4)
!12 = !DIEnumerator(name: "JCS_YCCK", value: 5)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 205, baseType: !5, size: 32, elements: !14)
!14 = !{!15, !16, !17}
!15 = !DIEnumerator(name: "JDCT_ISLOW", value: 0)
!16 = !DIEnumerator(name: "JDCT_IFAST", value: 1)
!17 = !DIEnumerator(name: "JDCT_FLOAT", value: 2)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 220, baseType: !5, size: 32, elements: !19)
!19 = !{!20, !21, !22}
!20 = !DIEnumerator(name: "JDITHER_NONE", value: 0)
!21 = !DIEnumerator(name: "JDITHER_ORDERED", value: 1)
!22 = !DIEnumerator(name: "JDITHER_FS", value: 2)
!23 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !24, line: 33, baseType: !5, size: 32, elements: !25)
!24 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jerror.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "a232f2460ff0049c960896e323d8710b")
!25 = !{!26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146}
!26 = !DIEnumerator(name: "JMSG_NOMESSAGE", value: 0)
!27 = !DIEnumerator(name: "JERR_ARITH_NOTIMPL", value: 1)
!28 = !DIEnumerator(name: "JERR_BAD_ALIGN_TYPE", value: 2)
!29 = !DIEnumerator(name: "JERR_BAD_ALLOC_CHUNK", value: 3)
!30 = !DIEnumerator(name: "JERR_BAD_BUFFER_MODE", value: 4)
!31 = !DIEnumerator(name: "JERR_BAD_COMPONENT_ID", value: 5)
!32 = !DIEnumerator(name: "JERR_BAD_DCTSIZE", value: 6)
!33 = !DIEnumerator(name: "JERR_BAD_IN_COLORSPACE", value: 7)
!34 = !DIEnumerator(name: "JERR_BAD_J_COLORSPACE", value: 8)
!35 = !DIEnumerator(name: "JERR_BAD_LENGTH", value: 9)
!36 = !DIEnumerator(name: "JERR_BAD_LIB_VERSION", value: 10)
!37 = !DIEnumerator(name: "JERR_BAD_MCU_SIZE", value: 11)
!38 = !DIEnumerator(name: "JERR_BAD_POOL_ID", value: 12)
!39 = !DIEnumerator(name: "JERR_BAD_PRECISION", value: 13)
!40 = !DIEnumerator(name: "JERR_BAD_PROGRESSION", value: 14)
!41 = !DIEnumerator(name: "JERR_BAD_PROG_SCRIPT", value: 15)
!42 = !DIEnumerator(name: "JERR_BAD_SAMPLING", value: 16)
!43 = !DIEnumerator(name: "JERR_BAD_SCAN_SCRIPT", value: 17)
!44 = !DIEnumerator(name: "JERR_BAD_STATE", value: 18)
!45 = !DIEnumerator(name: "JERR_BAD_STRUCT_SIZE", value: 19)
!46 = !DIEnumerator(name: "JERR_BAD_VIRTUAL_ACCESS", value: 20)
!47 = !DIEnumerator(name: "JERR_BUFFER_SIZE", value: 21)
!48 = !DIEnumerator(name: "JERR_CANT_SUSPEND", value: 22)
!49 = !DIEnumerator(name: "JERR_CCIR601_NOTIMPL", value: 23)
!50 = !DIEnumerator(name: "JERR_COMPONENT_COUNT", value: 24)
!51 = !DIEnumerator(name: "JERR_CONVERSION_NOTIMPL", value: 25)
!52 = !DIEnumerator(name: "JERR_DAC_INDEX", value: 26)
!53 = !DIEnumerator(name: "JERR_DAC_VALUE", value: 27)
!54 = !DIEnumerator(name: "JERR_DHT_COUNTS", value: 28)
!55 = !DIEnumerator(name: "JERR_DHT_INDEX", value: 29)
!56 = !DIEnumerator(name: "JERR_DQT_INDEX", value: 30)
!57 = !DIEnumerator(name: "JERR_EMPTY_IMAGE", value: 31)
!58 = !DIEnumerator(name: "JERR_EMS_READ", value: 32)
!59 = !DIEnumerator(name: "JERR_EMS_WRITE", value: 33)
!60 = !DIEnumerator(name: "JERR_EOI_EXPECTED", value: 34)
!61 = !DIEnumerator(name: "JERR_FILE_READ", value: 35)
!62 = !DIEnumerator(name: "JERR_FILE_WRITE", value: 36)
!63 = !DIEnumerator(name: "JERR_FRACT_SAMPLE_NOTIMPL", value: 37)
!64 = !DIEnumerator(name: "JERR_HUFF_CLEN_OVERFLOW", value: 38)
!65 = !DIEnumerator(name: "JERR_HUFF_MISSING_CODE", value: 39)
!66 = !DIEnumerator(name: "JERR_IMAGE_TOO_BIG", value: 40)
!67 = !DIEnumerator(name: "JERR_INPUT_EMPTY", value: 41)
!68 = !DIEnumerator(name: "JERR_INPUT_EOF", value: 42)
!69 = !DIEnumerator(name: "JERR_MISMATCHED_QUANT_TABLE", value: 43)
!70 = !DIEnumerator(name: "JERR_MISSING_DATA", value: 44)
!71 = !DIEnumerator(name: "JERR_MODE_CHANGE", value: 45)
!72 = !DIEnumerator(name: "JERR_NOTIMPL", value: 46)
!73 = !DIEnumerator(name: "JERR_NOT_COMPILED", value: 47)
!74 = !DIEnumerator(name: "JERR_NO_BACKING_STORE", value: 48)
!75 = !DIEnumerator(name: "JERR_NO_HUFF_TABLE", value: 49)
!76 = !DIEnumerator(name: "JERR_NO_IMAGE", value: 50)
!77 = !DIEnumerator(name: "JERR_NO_QUANT_TABLE", value: 51)
!78 = !DIEnumerator(name: "JERR_NO_SOI", value: 52)
!79 = !DIEnumerator(name: "JERR_OUT_OF_MEMORY", value: 53)
!80 = !DIEnumerator(name: "JERR_QUANT_COMPONENTS", value: 54)
!81 = !DIEnumerator(name: "JERR_QUANT_FEW_COLORS", value: 55)
!82 = !DIEnumerator(name: "JERR_QUANT_MANY_COLORS", value: 56)
!83 = !DIEnumerator(name: "JERR_SOF_DUPLICATE", value: 57)
!84 = !DIEnumerator(name: "JERR_SOF_NO_SOS", value: 58)
!85 = !DIEnumerator(name: "JERR_SOF_UNSUPPORTED", value: 59)
!86 = !DIEnumerator(name: "JERR_SOI_DUPLICATE", value: 60)
!87 = !DIEnumerator(name: "JERR_SOS_NO_SOF", value: 61)
!88 = !DIEnumerator(name: "JERR_TFILE_CREATE", value: 62)
!89 = !DIEnumerator(name: "JERR_TFILE_READ", value: 63)
!90 = !DIEnumerator(name: "JERR_TFILE_SEEK", value: 64)
!91 = !DIEnumerator(name: "JERR_TFILE_WRITE", value: 65)
!92 = !DIEnumerator(name: "JERR_TOO_LITTLE_DATA", value: 66)
!93 = !DIEnumerator(name: "JERR_UNKNOWN_MARKER", value: 67)
!94 = !DIEnumerator(name: "JERR_VIRTUAL_BUG", value: 68)
!95 = !DIEnumerator(name: "JERR_WIDTH_OVERFLOW", value: 69)
!96 = !DIEnumerator(name: "JERR_XMS_READ", value: 70)
!97 = !DIEnumerator(name: "JERR_XMS_WRITE", value: 71)
!98 = !DIEnumerator(name: "JMSG_COPYRIGHT", value: 72)
!99 = !DIEnumerator(name: "JMSG_VERSION", value: 73)
!100 = !DIEnumerator(name: "JTRC_16BIT_TABLES", value: 74)
!101 = !DIEnumerator(name: "JTRC_ADOBE", value: 75)
!102 = !DIEnumerator(name: "JTRC_APP0", value: 76)
!103 = !DIEnumerator(name: "JTRC_APP14", value: 77)
!104 = !DIEnumerator(name: "JTRC_DAC", value: 78)
!105 = !DIEnumerator(name: "JTRC_DHT", value: 79)
!106 = !DIEnumerator(name: "JTRC_DQT", value: 80)
!107 = !DIEnumerator(name: "JTRC_DRI", value: 81)
!108 = !DIEnumerator(name: "JTRC_EMS_CLOSE", value: 82)
!109 = !DIEnumerator(name: "JTRC_EMS_OPEN", value: 83)
!110 = !DIEnumerator(name: "JTRC_EOI", value: 84)
!111 = !DIEnumerator(name: "JTRC_HUFFBITS", value: 85)
!112 = !DIEnumerator(name: "JTRC_JFIF", value: 86)
!113 = !DIEnumerator(name: "JTRC_JFIF_BADTHUMBNAILSIZE", value: 87)
!114 = !DIEnumerator(name: "JTRC_JFIF_MINOR", value: 88)
!115 = !DIEnumerator(name: "JTRC_JFIF_THUMBNAIL", value: 89)
!116 = !DIEnumerator(name: "JTRC_MISC_MARKER", value: 90)
!117 = !DIEnumerator(name: "JTRC_PARMLESS_MARKER", value: 91)
!118 = !DIEnumerator(name: "JTRC_QUANTVALS", value: 92)
!119 = !DIEnumerator(name: "JTRC_QUANT_3_NCOLORS", value: 93)
!120 = !DIEnumerator(name: "JTRC_QUANT_NCOLORS", value: 94)
!121 = !DIEnumerator(name: "JTRC_QUANT_SELECTED", value: 95)
!122 = !DIEnumerator(name: "JTRC_RECOVERY_ACTION", value: 96)
!123 = !DIEnumerator(name: "JTRC_RST", value: 97)
!124 = !DIEnumerator(name: "JTRC_SMOOTH_NOTIMPL", value: 98)
!125 = !DIEnumerator(name: "JTRC_SOF", value: 99)
!126 = !DIEnumerator(name: "JTRC_SOF_COMPONENT", value: 100)
!127 = !DIEnumerator(name: "JTRC_SOI", value: 101)
!128 = !DIEnumerator(name: "JTRC_SOS", value: 102)
!129 = !DIEnumerator(name: "JTRC_SOS_COMPONENT", value: 103)
!130 = !DIEnumerator(name: "JTRC_SOS_PARAMS", value: 104)
!131 = !DIEnumerator(name: "JTRC_TFILE_CLOSE", value: 105)
!132 = !DIEnumerator(name: "JTRC_TFILE_OPEN", value: 106)
!133 = !DIEnumerator(name: "JTRC_UNKNOWN_IDS", value: 107)
!134 = !DIEnumerator(name: "JTRC_XMS_CLOSE", value: 108)
!135 = !DIEnumerator(name: "JTRC_XMS_OPEN", value: 109)
!136 = !DIEnumerator(name: "JWRN_ADOBE_XFORM", value: 110)
!137 = !DIEnumerator(name: "JWRN_BOGUS_PROGRESSION", value: 111)
!138 = !DIEnumerator(name: "JWRN_EXTRANEOUS_DATA", value: 112)
!139 = !DIEnumerator(name: "JWRN_HIT_MARKER", value: 113)
!140 = !DIEnumerator(name: "JWRN_HUFF_BAD_CODE", value: 114)
!141 = !DIEnumerator(name: "JWRN_JFIF_MAJOR", value: 115)
!142 = !DIEnumerator(name: "JWRN_JPEG_EOF", value: 116)
!143 = !DIEnumerator(name: "JWRN_MUST_RESYNC", value: 117)
!144 = !DIEnumerator(name: "JWRN_NOT_SEQUENTIAL", value: 118)
!145 = !DIEnumerator(name: "JWRN_TOO_MUCH_DATA", value: 119)
!146 = !DIEnumerator(name: "JMSG_LASTMSGCODE", value: 120)
!147 = !{!148, !149, !178, !159, !474, !536, !155, !247}
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_source_mgr", file: !4, line: 700, size: 448, elements: !151)
!151 = !{!152, !158, !162, !461, !465, !469, !473}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "next_input_byte", scope: !150, file: !4, line: 701, baseType: !153, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !155)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "JOCTET", file: !156, line: 110, baseType: !157)
!156 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jmorecfg.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "56a0eda58fafa6bdd5498f702a998c09")
!157 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_in_buffer", scope: !150, file: !4, line: 702, baseType: !159, size: 64, offset: 64)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !160, line: 18, baseType: !161)
!160 = !DIFile(filename: "/usr/local/lib/clang/20/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!161 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "init_source", scope: !150, file: !4, line: 704, baseType: !163, size: 64, offset: 128)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = !DISubroutineType(types: !165)
!165 = !{null, !166}
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "j_decompress_ptr", file: !4, line: 250, baseType: !167)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_decompress_struct", file: !4, line: 394, size: 4928, elements: !169)
!169 = !{!170, !291, !292, !293, !294, !295, !296, !297, !298, !299, !301, !302, !303, !304, !306, !307, !308, !310, !311, !312, !313, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !335, !348, !364, !365, !366, !392, !393, !394, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !416, !417, !418, !419, !423, !424, !425, !426, !427, !428, !431, !434, !437, !440, !443, !446, !449, !452, !455, !458}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !168, file: !4, line: 395, baseType: !171, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_error_mgr", file: !4, line: 618, size: 1344, elements: !173)
!173 = !{!174, !259, !260, !261, !267, !268, !269, !280, !281, !282, !287, !288, !289, !290}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "error_exit", scope: !172, file: !4, line: 620, baseType: !175, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = !DISubroutineType(types: !177)
!177 = !{null, !178}
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "j_common_ptr", file: !4, line: 248, baseType: !179)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_common_struct", file: !4, line: 240, size: 256, elements: !181)
!181 = !{!182, !183, !248, !257, !258}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !180, file: !4, line: 241, baseType: !171, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !180, file: !4, line: 241, baseType: !184, size: 64, offset: 64)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_memory_mgr", file: !4, line: 731, size: 768, elements: !186)
!186 = !{!187, !192, !193, !203, !217, !225, !232, !233, !237, !241, !245, !246}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_small", scope: !185, file: !4, line: 733, baseType: !188, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = !DISubroutineType(types: !190)
!190 = !{!148, !178, !191, !159}
!191 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_large", scope: !185, file: !4, line: 735, baseType: !188, size: 64, offset: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_sarray", scope: !185, file: !4, line: 737, baseType: !194, size: 64, offset: 128)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = !DISubroutineType(types: !196)
!196 = !{!197, !178, !191, !202, !202}
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPARRAY", file: !4, line: 67, baseType: !198)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPROW", file: !4, line: 66, baseType: !200)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPLE", file: !156, line: 59, baseType: !157)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "JDIMENSION", file: !156, line: 171, baseType: !5)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_barray", scope: !185, file: !4, line: 740, baseType: !204, size: 64, offset: 192)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DISubroutineType(types: !206)
!206 = !{!207, !178, !191, !202, !202}
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "JBLOCKARRAY", file: !4, line: 72, baseType: !208)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "JBLOCKROW", file: !4, line: 71, baseType: !210)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "JBLOCK", file: !4, line: 70, baseType: !212)
!212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !213, size: 1024, elements: !215)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "JCOEF", file: !156, line: 99, baseType: !214)
!214 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!215 = !{!216}
!216 = !DISubrange(count: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "request_virt_sarray", scope: !185, file: !4, line: 743, baseType: !218, size: 64, offset: 256)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DISubroutineType(types: !220)
!220 = !{!221, !178, !191, !224, !202, !202, !202}
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "jvirt_sarray_ptr", file: !4, line: 727, baseType: !222)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = !DICompositeType(tag: DW_TAG_structure_type, name: "jvirt_sarray_control", file: !4, line: 727, flags: DIFlagFwdDecl)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "boolean", file: !156, line: 227, baseType: !191)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "request_virt_barray", scope: !185, file: !4, line: 749, baseType: !226, size: 64, offset: 320)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = !DISubroutineType(types: !228)
!228 = !{!229, !178, !191, !224, !202, !202, !202}
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "jvirt_barray_ptr", file: !4, line: 728, baseType: !230)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = !DICompositeType(tag: DW_TAG_structure_type, name: "jvirt_barray_control", file: !4, line: 728, flags: DIFlagFwdDecl)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "realize_virt_arrays", scope: !185, file: !4, line: 755, baseType: !175, size: 64, offset: 384)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "access_virt_sarray", scope: !185, file: !4, line: 756, baseType: !234, size: 64, offset: 448)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = !DISubroutineType(types: !236)
!236 = !{!197, !178, !221, !202, !202, !224}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "access_virt_barray", scope: !185, file: !4, line: 761, baseType: !238, size: 64, offset: 512)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = !DISubroutineType(types: !240)
!240 = !{!207, !178, !229, !202, !202, !224}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "free_pool", scope: !185, file: !4, line: 766, baseType: !242, size: 64, offset: 576)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = !DISubroutineType(types: !244)
!244 = !{null, !178, !191}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "self_destruct", scope: !185, file: !4, line: 767, baseType: !175, size: 64, offset: 640)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "max_memory_to_use", scope: !185, file: !4, line: 774, baseType: !247, size: 64, offset: 704)
!247 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "progress", scope: !180, file: !4, line: 241, baseType: !249, size: 64, offset: 128)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_progress_mgr", file: !4, line: 676, size: 256, elements: !251)
!251 = !{!252, !253, !254, !255, !256}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "progress_monitor", scope: !250, file: !4, line: 677, baseType: !175, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "pass_counter", scope: !250, file: !4, line: 679, baseType: !247, size: 64, offset: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "pass_limit", scope: !250, file: !4, line: 680, baseType: !247, size: 64, offset: 128)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "completed_passes", scope: !250, file: !4, line: 681, baseType: !191, size: 32, offset: 192)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "total_passes", scope: !250, file: !4, line: 682, baseType: !191, size: 32, offset: 224)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "is_decompressor", scope: !180, file: !4, line: 241, baseType: !224, size: 32, offset: 192)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "global_state", scope: !180, file: !4, line: 241, baseType: !191, size: 32, offset: 224)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "emit_message", scope: !172, file: !4, line: 622, baseType: !242, size: 64, offset: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "output_message", scope: !172, file: !4, line: 624, baseType: !175, size: 64, offset: 128)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "format_message", scope: !172, file: !4, line: 626, baseType: !262, size: 64, offset: 192)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = !DISubroutineType(types: !264)
!264 = !{null, !178, !265}
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "reset_error_mgr", scope: !172, file: !4, line: 629, baseType: !175, size: 64, offset: 256)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "msg_code", scope: !172, file: !4, line: 634, baseType: !191, size: 32, offset: 320)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "msg_parm", scope: !172, file: !4, line: 639, baseType: !270, size: 640, offset: 352)
!270 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !172, file: !4, line: 636, size: 640, elements: !271)
!271 = !{!272, !276}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !270, file: !4, line: 637, baseType: !273, size: 256)
!273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !191, size: 256, elements: !274)
!274 = !{!275}
!275 = !DISubrange(count: 8)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !270, file: !4, line: 638, baseType: !277, size: 640)
!277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 640, elements: !278)
!278 = !{!279}
!279 = !DISubrange(count: 80)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "trace_level", scope: !172, file: !4, line: 643, baseType: !191, size: 32, offset: 992)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "num_warnings", scope: !172, file: !4, line: 651, baseType: !247, size: 64, offset: 1024)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "jpeg_message_table", scope: !172, file: !4, line: 663, baseType: !283, size: 64, offset: 1088)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !285)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !266)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "last_jpeg_message", scope: !172, file: !4, line: 664, baseType: !191, size: 32, offset: 1152)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "addon_message_table", scope: !172, file: !4, line: 668, baseType: !283, size: 64, offset: 1216)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "first_addon_message", scope: !172, file: !4, line: 669, baseType: !191, size: 32, offset: 1280)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "last_addon_message", scope: !172, file: !4, line: 670, baseType: !191, size: 32, offset: 1312)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !168, file: !4, line: 395, baseType: !184, size: 64, offset: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "progress", scope: !168, file: !4, line: 395, baseType: !249, size: 64, offset: 128)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "is_decompressor", scope: !168, file: !4, line: 395, baseType: !224, size: 32, offset: 192)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "global_state", scope: !168, file: !4, line: 395, baseType: !191, size: 32, offset: 224)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !168, file: !4, line: 398, baseType: !149, size: 64, offset: 256)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "image_width", scope: !168, file: !4, line: 403, baseType: !202, size: 32, offset: 320)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "image_height", scope: !168, file: !4, line: 404, baseType: !202, size: 32, offset: 352)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "num_components", scope: !168, file: !4, line: 405, baseType: !191, size: 32, offset: 384)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "jpeg_color_space", scope: !168, file: !4, line: 406, baseType: !300, size: 32, offset: 416)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_COLOR_SPACE", file: !4, line: 201, baseType: !3)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "out_color_space", scope: !168, file: !4, line: 413, baseType: !300, size: 32, offset: 448)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "scale_num", scope: !168, file: !4, line: 415, baseType: !5, size: 32, offset: 480)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "scale_denom", scope: !168, file: !4, line: 415, baseType: !5, size: 32, offset: 512)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "output_gamma", scope: !168, file: !4, line: 417, baseType: !305, size: 64, offset: 576)
!305 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "buffered_image", scope: !168, file: !4, line: 419, baseType: !224, size: 32, offset: 640)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "raw_data_out", scope: !168, file: !4, line: 420, baseType: !224, size: 32, offset: 672)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "dct_method", scope: !168, file: !4, line: 422, baseType: !309, size: 32, offset: 704)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_DCT_METHOD", file: !4, line: 209, baseType: !13)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "do_fancy_upsampling", scope: !168, file: !4, line: 423, baseType: !224, size: 32, offset: 736)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "do_block_smoothing", scope: !168, file: !4, line: 424, baseType: !224, size: 32, offset: 768)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "quantize_colors", scope: !168, file: !4, line: 426, baseType: !224, size: 32, offset: 800)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "dither_mode", scope: !168, file: !4, line: 428, baseType: !314, size: 32, offset: 832)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_DITHER_MODE", file: !4, line: 224, baseType: !18)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "two_pass_quantize", scope: !168, file: !4, line: 429, baseType: !224, size: 32, offset: 864)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "desired_number_of_colors", scope: !168, file: !4, line: 430, baseType: !191, size: 32, offset: 896)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "enable_1pass_quant", scope: !168, file: !4, line: 432, baseType: !224, size: 32, offset: 928)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "enable_external_quant", scope: !168, file: !4, line: 433, baseType: !224, size: 32, offset: 960)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "enable_2pass_quant", scope: !168, file: !4, line: 434, baseType: !224, size: 32, offset: 992)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "output_width", scope: !168, file: !4, line: 442, baseType: !202, size: 32, offset: 1024)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "output_height", scope: !168, file: !4, line: 443, baseType: !202, size: 32, offset: 1056)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "out_color_components", scope: !168, file: !4, line: 444, baseType: !191, size: 32, offset: 1088)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "output_components", scope: !168, file: !4, line: 445, baseType: !191, size: 32, offset: 1120)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "rec_outbuf_height", scope: !168, file: !4, line: 449, baseType: !191, size: 32, offset: 1152)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "actual_number_of_colors", scope: !168, file: !4, line: 461, baseType: !191, size: 32, offset: 1184)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "colormap", scope: !168, file: !4, line: 462, baseType: !197, size: 64, offset: 1216)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "output_scanline", scope: !168, file: !4, line: 472, baseType: !202, size: 32, offset: 1280)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "input_scan_number", scope: !168, file: !4, line: 477, baseType: !191, size: 32, offset: 1312)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "input_iMCU_row", scope: !168, file: !4, line: 478, baseType: !202, size: 32, offset: 1344)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "output_scan_number", scope: !168, file: !4, line: 484, baseType: !191, size: 32, offset: 1376)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "output_iMCU_row", scope: !168, file: !4, line: 485, baseType: !202, size: 32, offset: 1408)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "coef_bits", scope: !168, file: !4, line: 494, baseType: !333, size: 64, offset: 1472)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !191, size: 2048, elements: !215)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "quant_tbl_ptrs", scope: !168, file: !4, line: 505, baseType: !336, size: 256, offset: 1536)
!336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !337, size: 256, elements: !346)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "JQUANT_TBL", file: !4, line: 95, baseType: !339)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 83, size: 1056, elements: !340)
!340 = !{!341, !345}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "quantval", scope: !339, file: !4, line: 88, baseType: !342, size: 1024)
!342 = !DICompositeType(tag: DW_TAG_array_type, baseType: !343, size: 1024, elements: !215)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT16", file: !156, line: 147, baseType: !344)
!344 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "sent_table", scope: !339, file: !4, line: 94, baseType: !224, size: 32, offset: 1024)
!346 = !{!347}
!347 = !DISubrange(count: 4)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "dc_huff_tbl_ptrs", scope: !168, file: !4, line: 508, baseType: !349, size: 256, offset: 1792)
!349 = !DICompositeType(tag: DW_TAG_array_type, baseType: !350, size: 256, elements: !346)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "JHUFF_TBL", file: !4, line: 111, baseType: !352)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 100, size: 2240, elements: !353)
!353 = !{!354, !359, !363}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !352, file: !4, line: 102, baseType: !355, size: 136)
!355 = !DICompositeType(tag: DW_TAG_array_type, baseType: !356, size: 136, elements: !357)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT8", file: !156, line: 135, baseType: !157)
!357 = !{!358}
!358 = !DISubrange(count: 17)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "huffval", scope: !352, file: !4, line: 104, baseType: !360, size: 2048, offset: 136)
!360 = !DICompositeType(tag: DW_TAG_array_type, baseType: !356, size: 2048, elements: !361)
!361 = !{!362}
!362 = !DISubrange(count: 256)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "sent_table", scope: !352, file: !4, line: 110, baseType: !224, size: 32, offset: 2208)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "ac_huff_tbl_ptrs", scope: !168, file: !4, line: 509, baseType: !349, size: 256, offset: 2048)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "data_precision", scope: !168, file: !4, line: 516, baseType: !191, size: 32, offset: 2304)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "comp_info", scope: !168, file: !4, line: 518, baseType: !367, size: 64, offset: 2368)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "jpeg_component_info", file: !4, line: 179, baseType: !369)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 116, size: 768, elements: !370)
!370 = !{!371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "component_id", scope: !369, file: !4, line: 120, baseType: !191, size: 32)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "component_index", scope: !369, file: !4, line: 121, baseType: !191, size: 32, offset: 32)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "h_samp_factor", scope: !369, file: !4, line: 122, baseType: !191, size: 32, offset: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "v_samp_factor", scope: !369, file: !4, line: 123, baseType: !191, size: 32, offset: 96)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "quant_tbl_no", scope: !369, file: !4, line: 124, baseType: !191, size: 32, offset: 128)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "dc_tbl_no", scope: !369, file: !4, line: 129, baseType: !191, size: 32, offset: 160)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tbl_no", scope: !369, file: !4, line: 130, baseType: !191, size: 32, offset: 192)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "width_in_blocks", scope: !369, file: !4, line: 139, baseType: !202, size: 32, offset: 224)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "height_in_blocks", scope: !369, file: !4, line: 140, baseType: !202, size: 32, offset: 256)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "DCT_scaled_size", scope: !369, file: !4, line: 147, baseType: !191, size: 32, offset: 288)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "downsampled_width", scope: !369, file: !4, line: 154, baseType: !202, size: 32, offset: 320)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "downsampled_height", scope: !369, file: !4, line: 155, baseType: !202, size: 32, offset: 352)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "component_needed", scope: !369, file: !4, line: 160, baseType: !224, size: 32, offset: 384)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_width", scope: !369, file: !4, line: 164, baseType: !191, size: 32, offset: 416)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_height", scope: !369, file: !4, line: 165, baseType: !191, size: 32, offset: 448)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_blocks", scope: !369, file: !4, line: 166, baseType: !191, size: 32, offset: 480)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_sample_width", scope: !369, file: !4, line: 167, baseType: !191, size: 32, offset: 512)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "last_col_width", scope: !369, file: !4, line: 168, baseType: !191, size: 32, offset: 544)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "last_row_height", scope: !369, file: !4, line: 169, baseType: !191, size: 32, offset: 576)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "quant_table", scope: !369, file: !4, line: 175, baseType: !337, size: 64, offset: 640)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "dct_table", scope: !369, file: !4, line: 178, baseType: !148, size: 64, offset: 704)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "progressive_mode", scope: !168, file: !4, line: 521, baseType: !224, size: 32, offset: 2432)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "arith_code", scope: !168, file: !4, line: 522, baseType: !224, size: 32, offset: 2464)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "arith_dc_L", scope: !168, file: !4, line: 524, baseType: !395, size: 128, offset: 2496)
!395 = !DICompositeType(tag: DW_TAG_array_type, baseType: !356, size: 128, elements: !396)
!396 = !{!397}
!397 = !DISubrange(count: 16)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "arith_dc_U", scope: !168, file: !4, line: 525, baseType: !395, size: 128, offset: 2624)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "arith_ac_K", scope: !168, file: !4, line: 526, baseType: !395, size: 128, offset: 2752)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "restart_interval", scope: !168, file: !4, line: 528, baseType: !5, size: 32, offset: 2880)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "saw_JFIF_marker", scope: !168, file: !4, line: 533, baseType: !224, size: 32, offset: 2912)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "density_unit", scope: !168, file: !4, line: 535, baseType: !356, size: 8, offset: 2944)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "X_density", scope: !168, file: !4, line: 536, baseType: !343, size: 16, offset: 2960)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "Y_density", scope: !168, file: !4, line: 537, baseType: !343, size: 16, offset: 2976)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "saw_Adobe_marker", scope: !168, file: !4, line: 538, baseType: !224, size: 32, offset: 3008)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "Adobe_transform", scope: !168, file: !4, line: 539, baseType: !356, size: 8, offset: 3040)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "CCIR601_sampling", scope: !168, file: !4, line: 541, baseType: !224, size: 32, offset: 3072)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "max_h_samp_factor", scope: !168, file: !4, line: 550, baseType: !191, size: 32, offset: 3104)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "max_v_samp_factor", scope: !168, file: !4, line: 551, baseType: !191, size: 32, offset: 3136)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "min_DCT_scaled_size", scope: !168, file: !4, line: 553, baseType: !191, size: 32, offset: 3168)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "total_iMCU_rows", scope: !168, file: !4, line: 555, baseType: !202, size: 32, offset: 3200)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "sample_range_limit", scope: !168, file: !4, line: 564, baseType: !200, size: 64, offset: 3264)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "comps_in_scan", scope: !168, file: !4, line: 571, baseType: !191, size: 32, offset: 3328)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "cur_comp_info", scope: !168, file: !4, line: 572, baseType: !415, size: 256, offset: 3392)
!415 = !DICompositeType(tag: DW_TAG_array_type, baseType: !367, size: 256, elements: !346)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "MCUs_per_row", scope: !168, file: !4, line: 575, baseType: !202, size: 32, offset: 3648)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_rows_in_scan", scope: !168, file: !4, line: 576, baseType: !202, size: 32, offset: 3680)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "blocks_in_MCU", scope: !168, file: !4, line: 578, baseType: !191, size: 32, offset: 3712)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_membership", scope: !168, file: !4, line: 579, baseType: !420, size: 320, offset: 3744)
!420 = !DICompositeType(tag: DW_TAG_array_type, baseType: !191, size: 320, elements: !421)
!421 = !{!422}
!422 = !DISubrange(count: 10)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "Ss", scope: !168, file: !4, line: 583, baseType: !191, size: 32, offset: 4064)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "Se", scope: !168, file: !4, line: 583, baseType: !191, size: 32, offset: 4096)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "Ah", scope: !168, file: !4, line: 583, baseType: !191, size: 32, offset: 4128)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "Al", scope: !168, file: !4, line: 583, baseType: !191, size: 32, offset: 4160)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "unread_marker", scope: !168, file: !4, line: 589, baseType: !191, size: 32, offset: 4192)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !168, file: !4, line: 594, baseType: !429, size: 64, offset: 4224)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_decomp_master", file: !4, line: 594, flags: DIFlagFwdDecl)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "main", scope: !168, file: !4, line: 595, baseType: !432, size: 64, offset: 4288)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_d_main_controller", file: !4, line: 595, flags: DIFlagFwdDecl)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "coef", scope: !168, file: !4, line: 596, baseType: !435, size: 64, offset: 4352)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_d_coef_controller", file: !4, line: 596, flags: DIFlagFwdDecl)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "post", scope: !168, file: !4, line: 597, baseType: !438, size: 64, offset: 4416)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!439 = !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_d_post_controller", file: !4, line: 597, flags: DIFlagFwdDecl)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "inputctl", scope: !168, file: !4, line: 598, baseType: !441, size: 64, offset: 4480)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_input_controller", file: !4, line: 598, flags: DIFlagFwdDecl)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "marker", scope: !168, file: !4, line: 599, baseType: !444, size: 64, offset: 4544)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_marker_reader", file: !4, line: 599, flags: DIFlagFwdDecl)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "entropy", scope: !168, file: !4, line: 600, baseType: !447, size: 64, offset: 4608)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_entropy_decoder", file: !4, line: 600, flags: DIFlagFwdDecl)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "idct", scope: !168, file: !4, line: 601, baseType: !450, size: 64, offset: 4672)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_inverse_dct", file: !4, line: 601, flags: DIFlagFwdDecl)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "upsample", scope: !168, file: !4, line: 602, baseType: !453, size: 64, offset: 4736)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_upsampler", file: !4, line: 602, flags: DIFlagFwdDecl)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "cconvert", scope: !168, file: !4, line: 603, baseType: !456, size: 64, offset: 4800)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_color_deconverter", file: !4, line: 603, flags: DIFlagFwdDecl)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "cquantize", scope: !168, file: !4, line: 604, baseType: !459, size: 64, offset: 4864)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_color_quantizer", file: !4, line: 604, flags: DIFlagFwdDecl)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "fill_input_buffer", scope: !150, file: !4, line: 705, baseType: !462, size: 64, offset: 192)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = !DISubroutineType(types: !464)
!464 = !{!224, !166}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "skip_input_data", scope: !150, file: !4, line: 706, baseType: !466, size: 64, offset: 256)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = !DISubroutineType(types: !468)
!468 = !{null, !166, !247}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "resync_to_restart", scope: !150, file: !4, line: 707, baseType: !470, size: 64, offset: 320)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DISubroutineType(types: !472)
!472 = !{!224, !166, !191}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "term_source", scope: !150, file: !4, line: 708, baseType: !163, size: 64, offset: 384)
!474 = !DIDerivedType(tag: DW_TAG_typedef, name: "my_src_ptr", file: !1, line: 33, baseType: !475)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_typedef, name: "my_source_mgr", file: !1, line: 31, baseType: !477)
!477 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 25, size: 640, elements: !478)
!478 = !{!479, !480, !535, !537}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "pub", scope: !477, file: !1, line: 26, baseType: !150, size: 448)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "infile", scope: !477, file: !1, line: 28, baseType: !481, size: 64, offset: 448)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !483, line: 7, baseType: !484)
!483 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !485, line: 49, size: 1728, elements: !486)
!485 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!486 = !{!487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !502, !504, !505, !506, !509, !510, !512, !516, !519, !521, !524, !527, !528, !529, !530, !531}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !484, file: !485, line: 51, baseType: !191, size: 32)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !484, file: !485, line: 54, baseType: !265, size: 64, offset: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !484, file: !485, line: 55, baseType: !265, size: 64, offset: 128)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !484, file: !485, line: 56, baseType: !265, size: 64, offset: 192)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !484, file: !485, line: 57, baseType: !265, size: 64, offset: 256)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !484, file: !485, line: 58, baseType: !265, size: 64, offset: 320)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !484, file: !485, line: 59, baseType: !265, size: 64, offset: 384)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !484, file: !485, line: 60, baseType: !265, size: 64, offset: 448)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !484, file: !485, line: 61, baseType: !265, size: 64, offset: 512)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !484, file: !485, line: 64, baseType: !265, size: 64, offset: 576)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !484, file: !485, line: 65, baseType: !265, size: 64, offset: 640)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !484, file: !485, line: 66, baseType: !265, size: 64, offset: 704)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !484, file: !485, line: 68, baseType: !500, size: 64, offset: 768)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !485, line: 36, flags: DIFlagFwdDecl)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !484, file: !485, line: 70, baseType: !503, size: 64, offset: 832)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !484, file: !485, line: 72, baseType: !191, size: 32, offset: 896)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !484, file: !485, line: 73, baseType: !191, size: 32, offset: 928)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !484, file: !485, line: 74, baseType: !507, size: 64, offset: 960)
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !508, line: 152, baseType: !247)
!508 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!509 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !484, file: !485, line: 77, baseType: !344, size: 16, offset: 1024)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !484, file: !485, line: 78, baseType: !511, size: 8, offset: 1040)
!511 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !484, file: !485, line: 79, baseType: !513, size: 8, offset: 1048)
!513 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 8, elements: !514)
!514 = !{!515}
!515 = !DISubrange(count: 1)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !484, file: !485, line: 81, baseType: !517, size: 64, offset: 1088)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !485, line: 43, baseType: null)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !484, file: !485, line: 89, baseType: !520, size: 64, offset: 1152)
!520 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !508, line: 153, baseType: !247)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !484, file: !485, line: 91, baseType: !522, size: 64, offset: 1216)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !485, line: 37, flags: DIFlagFwdDecl)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !484, file: !485, line: 92, baseType: !525, size: 64, offset: 1280)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !485, line: 38, flags: DIFlagFwdDecl)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !484, file: !485, line: 93, baseType: !503, size: 64, offset: 1344)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !484, file: !485, line: 94, baseType: !148, size: 64, offset: 1408)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !484, file: !485, line: 95, baseType: !159, size: 64, offset: 1472)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !484, file: !485, line: 96, baseType: !191, size: 32, offset: 1536)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !484, file: !485, line: 98, baseType: !532, size: 160, offset: 1568)
!532 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 160, elements: !533)
!533 = !{!534}
!534 = !DISubrange(count: 20)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !477, file: !1, line: 29, baseType: !536, size: 64, offset: 512)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "start_of_file", scope: !477, file: !1, line: 30, baseType: !224, size: 32, offset: 576)
!538 = !{i32 7, !"Dwarf Version", i32 5}
!539 = !{i32 2, !"Debug Info Version", i32 3}
!540 = !{i32 1, !"wchar_size", i32 4}
!541 = !{i32 8, !"PIC Level", i32 2}
!542 = !{i32 7, !"PIE Level", i32 2}
!543 = !{i32 7, !"uwtable", i32 2}
!544 = !{i32 7, !"frame-pointer", i32 2}
!545 = !{!"clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)"}
!546 = distinct !DISubprogram(name: "jpeg_stdio_src", scope: !1, file: !1, line: 182, type: !547, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !549)
!547 = !DISubroutineType(types: !548)
!548 = !{null, !166, !481}
!549 = !{}
!550 = !DILocalVariable(name: "cinfo", arg: 1, scope: !546, file: !1, line: 182, type: !166)
!551 = !DILocation(line: 182, column: 34, scope: !546)
!552 = !DILocalVariable(name: "infile", arg: 2, scope: !546, file: !1, line: 182, type: !481)
!553 = !DILocation(line: 182, column: 48, scope: !546)
!554 = !DILocalVariable(name: "src", scope: !546, file: !1, line: 184, type: !474)
!555 = !DILocation(line: 184, column: 14, scope: !546)
!556 = !DILocation(line: 193, column: 7, scope: !557)
!557 = distinct !DILexicalBlock(scope: !546, file: !1, line: 193, column: 7)
!558 = !DILocation(line: 193, column: 14, scope: !557)
!559 = !DILocation(line: 193, column: 18, scope: !557)
!560 = !DILocation(line: 195, column: 9, scope: !561)
!561 = distinct !DILexicalBlock(scope: !557, file: !1, line: 193, column: 27)
!562 = !DILocation(line: 195, column: 16, scope: !561)
!563 = !DILocation(line: 195, column: 21, scope: !561)
!564 = !DILocation(line: 195, column: 50, scope: !561)
!565 = !DILocation(line: 195, column: 7, scope: !561)
!566 = !DILocation(line: 194, column: 5, scope: !561)
!567 = !DILocation(line: 194, column: 12, scope: !561)
!568 = !DILocation(line: 194, column: 16, scope: !561)
!569 = !DILocation(line: 197, column: 24, scope: !561)
!570 = !DILocation(line: 197, column: 31, scope: !561)
!571 = !DILocation(line: 197, column: 9, scope: !561)
!572 = !DILocation(line: 199, column: 9, scope: !561)
!573 = !DILocation(line: 199, column: 16, scope: !561)
!574 = !DILocation(line: 199, column: 21, scope: !561)
!575 = !DILocation(line: 199, column: 50, scope: !561)
!576 = !DILocation(line: 199, column: 7, scope: !561)
!577 = !DILocation(line: 198, column: 5, scope: !561)
!578 = !DILocation(line: 198, column: 10, scope: !561)
!579 = !DILocation(line: 198, column: 17, scope: !561)
!580 = !DILocation(line: 201, column: 3, scope: !561)
!581 = !DILocation(line: 203, column: 22, scope: !546)
!582 = !DILocation(line: 203, column: 29, scope: !546)
!583 = !DILocation(line: 203, column: 7, scope: !546)
!584 = !DILocation(line: 204, column: 3, scope: !546)
!585 = !DILocation(line: 204, column: 8, scope: !546)
!586 = !DILocation(line: 204, column: 12, scope: !546)
!587 = !DILocation(line: 204, column: 24, scope: !546)
!588 = !DILocation(line: 205, column: 3, scope: !546)
!589 = !DILocation(line: 205, column: 8, scope: !546)
!590 = !DILocation(line: 205, column: 12, scope: !546)
!591 = !DILocation(line: 205, column: 30, scope: !546)
!592 = !DILocation(line: 206, column: 3, scope: !546)
!593 = !DILocation(line: 206, column: 8, scope: !546)
!594 = !DILocation(line: 206, column: 12, scope: !546)
!595 = !DILocation(line: 206, column: 28, scope: !546)
!596 = !DILocation(line: 207, column: 3, scope: !546)
!597 = !DILocation(line: 207, column: 8, scope: !546)
!598 = !DILocation(line: 207, column: 12, scope: !546)
!599 = !DILocation(line: 207, column: 30, scope: !546)
!600 = !DILocation(line: 208, column: 3, scope: !546)
!601 = !DILocation(line: 208, column: 8, scope: !546)
!602 = !DILocation(line: 208, column: 12, scope: !546)
!603 = !DILocation(line: 208, column: 24, scope: !546)
!604 = !DILocation(line: 209, column: 17, scope: !546)
!605 = !DILocation(line: 209, column: 3, scope: !546)
!606 = !DILocation(line: 209, column: 8, scope: !546)
!607 = !DILocation(line: 209, column: 15, scope: !546)
!608 = !DILocation(line: 210, column: 3, scope: !546)
!609 = !DILocation(line: 210, column: 8, scope: !546)
!610 = !DILocation(line: 210, column: 12, scope: !546)
!611 = !DILocation(line: 210, column: 28, scope: !546)
!612 = !DILocation(line: 211, column: 3, scope: !546)
!613 = !DILocation(line: 211, column: 8, scope: !546)
!614 = !DILocation(line: 211, column: 12, scope: !546)
!615 = !DILocation(line: 211, column: 28, scope: !546)
!616 = !DILocation(line: 212, column: 1, scope: !546)
!617 = distinct !DISubprogram(name: "init_source", scope: !1, file: !1, line: 44, type: !164, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !549)
!618 = !DILocalVariable(name: "cinfo", arg: 1, scope: !617, file: !1, line: 44, type: !166)
!619 = !DILocation(line: 44, column: 31, scope: !617)
!620 = !DILocalVariable(name: "src", scope: !617, file: !1, line: 46, type: !474)
!621 = !DILocation(line: 46, column: 14, scope: !617)
!622 = !DILocation(line: 46, column: 33, scope: !617)
!623 = !DILocation(line: 46, column: 40, scope: !617)
!624 = !DILocation(line: 52, column: 3, scope: !617)
!625 = !DILocation(line: 52, column: 8, scope: !617)
!626 = !DILocation(line: 52, column: 22, scope: !617)
!627 = !DILocation(line: 53, column: 1, scope: !617)
!628 = distinct !DISubprogram(name: "fill_input_buffer", scope: !1, file: !1, line: 90, type: !463, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !549)
!629 = !DILocalVariable(name: "cinfo", arg: 1, scope: !628, file: !1, line: 90, type: !166)
!630 = !DILocation(line: 90, column: 37, scope: !628)
!631 = !DILocalVariable(name: "src", scope: !628, file: !1, line: 92, type: !474)
!632 = !DILocation(line: 92, column: 14, scope: !628)
!633 = !DILocation(line: 92, column: 33, scope: !628)
!634 = !DILocation(line: 92, column: 40, scope: !628)
!635 = !DILocalVariable(name: "nbytes", scope: !628, file: !1, line: 93, type: !159)
!636 = !DILocation(line: 93, column: 10, scope: !628)
!637 = !DILocation(line: 95, column: 12, scope: !628)
!638 = !DILocation(line: 95, column: 10, scope: !628)
!639 = !DILocation(line: 97, column: 7, scope: !640)
!640 = distinct !DILexicalBlock(scope: !628, file: !1, line: 97, column: 7)
!641 = !DILocation(line: 97, column: 14, scope: !640)
!642 = !DILocation(line: 98, column: 9, scope: !643)
!643 = distinct !DILexicalBlock(scope: !644, file: !1, line: 98, column: 9)
!644 = distinct !DILexicalBlock(scope: !640, file: !1, line: 97, column: 20)
!645 = !DILocation(line: 98, column: 14, scope: !643)
!646 = !DILocation(line: 99, column: 7, scope: !643)
!647 = !DILocation(line: 100, column: 5, scope: !644)
!648 = !DILocation(line: 102, column: 5, scope: !644)
!649 = !DILocation(line: 102, column: 10, scope: !644)
!650 = !DILocation(line: 102, column: 20, scope: !644)
!651 = !DILocation(line: 103, column: 5, scope: !644)
!652 = !DILocation(line: 103, column: 10, scope: !644)
!653 = !DILocation(line: 103, column: 20, scope: !644)
!654 = !DILocation(line: 104, column: 12, scope: !644)
!655 = !DILocation(line: 105, column: 3, scope: !644)
!656 = !DILocation(line: 107, column: 30, scope: !628)
!657 = !DILocation(line: 107, column: 35, scope: !628)
!658 = !DILocation(line: 107, column: 3, scope: !628)
!659 = !DILocation(line: 107, column: 8, scope: !628)
!660 = !DILocation(line: 107, column: 12, scope: !628)
!661 = !DILocation(line: 107, column: 28, scope: !628)
!662 = !DILocation(line: 108, column: 30, scope: !628)
!663 = !DILocation(line: 108, column: 3, scope: !628)
!664 = !DILocation(line: 108, column: 8, scope: !628)
!665 = !DILocation(line: 108, column: 12, scope: !628)
!666 = !DILocation(line: 108, column: 28, scope: !628)
!667 = !DILocation(line: 109, column: 3, scope: !628)
!668 = !DILocation(line: 109, column: 8, scope: !628)
!669 = !DILocation(line: 109, column: 22, scope: !628)
!670 = !DILocation(line: 111, column: 3, scope: !628)
!671 = distinct !DISubprogram(name: "skip_input_data", scope: !1, file: !1, line: 128, type: !467, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !549)
!672 = !DILocalVariable(name: "cinfo", arg: 1, scope: !671, file: !1, line: 128, type: !166)
!673 = !DILocation(line: 128, column: 35, scope: !671)
!674 = !DILocalVariable(name: "num_bytes", arg: 2, scope: !671, file: !1, line: 128, type: !247)
!675 = !DILocation(line: 128, column: 47, scope: !671)
!676 = !DILocalVariable(name: "src", scope: !671, file: !1, line: 130, type: !474)
!677 = !DILocation(line: 130, column: 14, scope: !671)
!678 = !DILocation(line: 130, column: 33, scope: !671)
!679 = !DILocation(line: 130, column: 40, scope: !671)
!680 = !DILocation(line: 136, column: 7, scope: !681)
!681 = distinct !DILexicalBlock(scope: !671, file: !1, line: 136, column: 7)
!682 = !DILocation(line: 136, column: 17, scope: !681)
!683 = !DILocation(line: 137, column: 5, scope: !684)
!684 = distinct !DILexicalBlock(scope: !681, file: !1, line: 136, column: 22)
!685 = !DILocation(line: 137, column: 12, scope: !684)
!686 = !DILocation(line: 137, column: 31, scope: !684)
!687 = !DILocation(line: 137, column: 36, scope: !684)
!688 = !DILocation(line: 137, column: 40, scope: !684)
!689 = !DILocation(line: 137, column: 22, scope: !684)
!690 = !DILocation(line: 138, column: 27, scope: !691)
!691 = distinct !DILexicalBlock(scope: !684, file: !1, line: 137, column: 57)
!692 = !DILocation(line: 138, column: 32, scope: !691)
!693 = !DILocation(line: 138, column: 36, scope: !691)
!694 = !DILocation(line: 138, column: 17, scope: !691)
!695 = !DILocation(line: 139, column: 32, scope: !691)
!696 = !DILocation(line: 139, column: 14, scope: !691)
!697 = distinct !{!697, !683, !698, !699}
!698 = !DILocation(line: 143, column: 5, scope: !684)
!699 = !{!"llvm.loop.mustprogress"}
!700 = !DILocation(line: 144, column: 42, scope: !684)
!701 = !DILocation(line: 144, column: 5, scope: !684)
!702 = !DILocation(line: 144, column: 10, scope: !684)
!703 = !DILocation(line: 144, column: 14, scope: !684)
!704 = !DILocation(line: 144, column: 30, scope: !684)
!705 = !DILocation(line: 145, column: 42, scope: !684)
!706 = !DILocation(line: 145, column: 5, scope: !684)
!707 = !DILocation(line: 145, column: 10, scope: !684)
!708 = !DILocation(line: 145, column: 14, scope: !684)
!709 = !DILocation(line: 145, column: 30, scope: !684)
!710 = !DILocation(line: 146, column: 3, scope: !684)
!711 = !DILocation(line: 147, column: 1, scope: !671)
!712 = distinct !DISubprogram(name: "term_source", scope: !1, file: !1, line: 169, type: !164, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !549)
!713 = !DILocalVariable(name: "cinfo", arg: 1, scope: !712, file: !1, line: 169, type: !166)
!714 = !DILocation(line: 169, column: 31, scope: !712)
!715 = !DILocation(line: 172, column: 1, scope: !712)
