; ModuleID = 'cBench/consumer_jpeg_c/src/jcmarker.c'
source_filename = "cBench/consumer_jpeg_c/src/jcmarker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jpeg_compress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, double, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [16 x i8], [16 x i8], [16 x i8], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.jpeg_marker_writer = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_destination_mgr = type { ptr, i64, ptr, ptr, ptr }
%struct.JQUANT_TBL = type { [64 x i16], i32 }
%struct.JHUFF_TBL = type { [17 x i8], [256 x i8], i32 }

@jpeg_natural_order = external constant [0 x i32], align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @jinit_marker_writer(ptr noundef %0) #0 !dbg !584 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !586, !DIExpression(), !587)
  %3 = load ptr, ptr %2, align 8, !dbg !588
  %4 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %3, i32 0, i32 1, !dbg !589
  %5 = load ptr, ptr %4, align 8, !dbg !589
  %6 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %5, i32 0, i32 0, !dbg !590
  %7 = load ptr, ptr %6, align 8, !dbg !590
  %8 = load ptr, ptr %2, align 8, !dbg !591
  %9 = call ptr %7(ptr noundef %8, i32 noundef 1, i64 noundef 48), !dbg !592
  %10 = load ptr, ptr %2, align 8, !dbg !593
  %11 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %10, i32 0, i32 55, !dbg !594
  store ptr %9, ptr %11, align 8, !dbg !595
  %12 = load ptr, ptr %2, align 8, !dbg !596
  %13 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %12, i32 0, i32 55, !dbg !597
  %14 = load ptr, ptr %13, align 8, !dbg !597
  %15 = getelementptr inbounds nuw %struct.jpeg_marker_writer, ptr %14, i32 0, i32 0, !dbg !598
  store ptr @write_any_marker, ptr %15, align 8, !dbg !599
  %16 = load ptr, ptr %2, align 8, !dbg !600
  %17 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %16, i32 0, i32 55, !dbg !601
  %18 = load ptr, ptr %17, align 8, !dbg !601
  %19 = getelementptr inbounds nuw %struct.jpeg_marker_writer, ptr %18, i32 0, i32 1, !dbg !602
  store ptr @write_file_header, ptr %19, align 8, !dbg !603
  %20 = load ptr, ptr %2, align 8, !dbg !604
  %21 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %20, i32 0, i32 55, !dbg !605
  %22 = load ptr, ptr %21, align 8, !dbg !605
  %23 = getelementptr inbounds nuw %struct.jpeg_marker_writer, ptr %22, i32 0, i32 2, !dbg !606
  store ptr @write_frame_header, ptr %23, align 8, !dbg !607
  %24 = load ptr, ptr %2, align 8, !dbg !608
  %25 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %24, i32 0, i32 55, !dbg !609
  %26 = load ptr, ptr %25, align 8, !dbg !609
  %27 = getelementptr inbounds nuw %struct.jpeg_marker_writer, ptr %26, i32 0, i32 3, !dbg !610
  store ptr @write_scan_header, ptr %27, align 8, !dbg !611
  %28 = load ptr, ptr %2, align 8, !dbg !612
  %29 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %28, i32 0, i32 55, !dbg !613
  %30 = load ptr, ptr %29, align 8, !dbg !613
  %31 = getelementptr inbounds nuw %struct.jpeg_marker_writer, ptr %30, i32 0, i32 4, !dbg !614
  store ptr @write_file_trailer, ptr %31, align 8, !dbg !615
  %32 = load ptr, ptr %2, align 8, !dbg !616
  %33 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %32, i32 0, i32 55, !dbg !617
  %34 = load ptr, ptr %33, align 8, !dbg !617
  %35 = getelementptr inbounds nuw %struct.jpeg_marker_writer, ptr %34, i32 0, i32 5, !dbg !618
  store ptr @write_tables_only, ptr %35, align 8, !dbg !619
  ret void, !dbg !620
}

; Function Attrs: noinline nounwind uwtable
define internal void @write_any_marker(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #0 !dbg !621 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
    #dbg_declare(ptr %5, !622, !DIExpression(), !623)
  store i32 %1, ptr %6, align 4
    #dbg_declare(ptr %6, !624, !DIExpression(), !625)
  store ptr %2, ptr %7, align 8
    #dbg_declare(ptr %7, !626, !DIExpression(), !627)
  store i32 %3, ptr %8, align 4
    #dbg_declare(ptr %8, !628, !DIExpression(), !629)
  %9 = load i32, ptr %8, align 4, !dbg !630
  %10 = icmp ule i32 %9, 65533, !dbg !632
  br i1 %10, label %11, label %29, !dbg !632

11:                                               ; preds = %4
  %12 = load ptr, ptr %5, align 8, !dbg !633
  %13 = load i32, ptr %6, align 4, !dbg !635
  call void @emit_marker(ptr noundef %12, i32 noundef %13), !dbg !636
  %14 = load ptr, ptr %5, align 8, !dbg !637
  %15 = load i32, ptr %8, align 4, !dbg !638
  %16 = add i32 %15, 2, !dbg !639
  call void @emit_2bytes(ptr noundef %14, i32 noundef %16), !dbg !640
  br label %17, !dbg !641

17:                                               ; preds = %21, %11
  %18 = load i32, ptr %8, align 4, !dbg !642
  %19 = add i32 %18, -1, !dbg !642
  store i32 %19, ptr %8, align 4, !dbg !642
  %20 = icmp ne i32 %18, 0, !dbg !641
  br i1 %20, label %21, label %28, !dbg !641

21:                                               ; preds = %17
  %22 = load ptr, ptr %5, align 8, !dbg !643
  %23 = load ptr, ptr %7, align 8, !dbg !645
  %24 = load i8, ptr %23, align 1, !dbg !646
  %25 = zext i8 %24 to i32, !dbg !646
  call void @emit_byte(ptr noundef %22, i32 noundef %25), !dbg !647
  %26 = load ptr, ptr %7, align 8, !dbg !648
  %27 = getelementptr inbounds nuw i8, ptr %26, i32 1, !dbg !648
  store ptr %27, ptr %7, align 8, !dbg !648
  br label %17, !dbg !641, !llvm.loop !649

28:                                               ; preds = %17
  br label %29, !dbg !652

29:                                               ; preds = %28, %4
  ret void, !dbg !653
}

; Function Attrs: noinline nounwind uwtable
define internal void @write_file_header(ptr noundef %0) #0 !dbg !654 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !655, !DIExpression(), !656)
  %3 = load ptr, ptr %2, align 8, !dbg !657
  call void @emit_marker(ptr noundef %3, i32 noundef 216), !dbg !658
  %4 = load ptr, ptr %2, align 8, !dbg !659
  %5 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %4, i32 0, i32 31, !dbg !661
  %6 = load i32, ptr %5, align 8, !dbg !661
  %7 = icmp ne i32 %6, 0, !dbg !659
  br i1 %7, label %8, label %10, !dbg !659

8:                                                ; preds = %1
  %9 = load ptr, ptr %2, align 8, !dbg !662
  call void @emit_jfif_app0(ptr noundef %9), !dbg !663
  br label %10, !dbg !663

10:                                               ; preds = %8, %1
  %11 = load ptr, ptr %2, align 8, !dbg !664
  %12 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %11, i32 0, i32 35, !dbg !666
  %13 = load i32, ptr %12, align 4, !dbg !666
  %14 = icmp ne i32 %13, 0, !dbg !664
  br i1 %14, label %15, label %17, !dbg !664

15:                                               ; preds = %10
  %16 = load ptr, ptr %2, align 8, !dbg !667
  call void @emit_adobe_app14(ptr noundef %16), !dbg !668
  br label %17, !dbg !668

17:                                               ; preds = %15, %10
  ret void, !dbg !669
}

; Function Attrs: noinline nounwind uwtable
define internal void @write_frame_header(ptr noundef %0) #0 !dbg !670 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !671, !DIExpression(), !672)
    #dbg_declare(ptr %3, !673, !DIExpression(), !674)
    #dbg_declare(ptr %4, !675, !DIExpression(), !676)
    #dbg_declare(ptr %5, !677, !DIExpression(), !678)
    #dbg_declare(ptr %6, !679, !DIExpression(), !680)
  store i32 0, ptr %4, align 4, !dbg !681
  store i32 0, ptr %3, align 4, !dbg !682
  %7 = load ptr, ptr %2, align 8, !dbg !684
  %8 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %7, i32 0, i32 14, !dbg !685
  %9 = load ptr, ptr %8, align 8, !dbg !685
  store ptr %9, ptr %6, align 8, !dbg !686
  br label %10, !dbg !687

10:                                               ; preds = %24, %1
  %11 = load i32, ptr %3, align 4, !dbg !688
  %12 = load ptr, ptr %2, align 8, !dbg !690
  %13 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %12, i32 0, i32 12, !dbg !691
  %14 = load i32, ptr %13, align 4, !dbg !691
  %15 = icmp slt i32 %11, %14, !dbg !692
  br i1 %15, label %16, label %29, !dbg !693

16:                                               ; preds = %10
  %17 = load ptr, ptr %2, align 8, !dbg !694
  %18 = load ptr, ptr %6, align 8, !dbg !696
  %19 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %18, i32 0, i32 4, !dbg !697
  %20 = load i32, ptr %19, align 8, !dbg !697
  %21 = call i32 @emit_dqt(ptr noundef %17, i32 noundef %20), !dbg !698
  %22 = load i32, ptr %4, align 4, !dbg !699
  %23 = add nsw i32 %22, %21, !dbg !699
  store i32 %23, ptr %4, align 4, !dbg !699
  br label %24, !dbg !700

24:                                               ; preds = %16
  %25 = load i32, ptr %3, align 4, !dbg !701
  %26 = add nsw i32 %25, 1, !dbg !701
  store i32 %26, ptr %3, align 4, !dbg !701
  %27 = load ptr, ptr %6, align 8, !dbg !702
  %28 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %27, i32 1, !dbg !702
  store ptr %28, ptr %6, align 8, !dbg !702
  br label %10, !dbg !703, !llvm.loop !704

29:                                               ; preds = %10
  %30 = load ptr, ptr %2, align 8, !dbg !706
  %31 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %30, i32 0, i32 24, !dbg !708
  %32 = load i32, ptr %31, align 4, !dbg !708
  %33 = icmp ne i32 %32, 0, !dbg !706
  br i1 %33, label %44, label %34, !dbg !709

34:                                               ; preds = %29
  %35 = load ptr, ptr %2, align 8, !dbg !710
  %36 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %35, i32 0, i32 37, !dbg !711
  %37 = load i32, ptr %36, align 4, !dbg !711
  %38 = icmp ne i32 %37, 0, !dbg !710
  br i1 %38, label %44, label %39, !dbg !712

39:                                               ; preds = %34
  %40 = load ptr, ptr %2, align 8, !dbg !713
  %41 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %40, i32 0, i32 11, !dbg !714
  %42 = load i32, ptr %41, align 8, !dbg !714
  %43 = icmp ne i32 %42, 8, !dbg !715
  br i1 %43, label %44, label %45, !dbg !712

44:                                               ; preds = %39, %34, %29
  store i32 0, ptr %5, align 4, !dbg !716
  br label %90, !dbg !718

45:                                               ; preds = %39
  store i32 1, ptr %5, align 4, !dbg !719
  store i32 0, ptr %3, align 4, !dbg !721
  %46 = load ptr, ptr %2, align 8, !dbg !723
  %47 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %46, i32 0, i32 14, !dbg !724
  %48 = load ptr, ptr %47, align 8, !dbg !724
  store ptr %48, ptr %6, align 8, !dbg !725
  br label %49, !dbg !726

49:                                               ; preds = %67, %45
  %50 = load i32, ptr %3, align 4, !dbg !727
  %51 = load ptr, ptr %2, align 8, !dbg !729
  %52 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %51, i32 0, i32 12, !dbg !730
  %53 = load i32, ptr %52, align 4, !dbg !730
  %54 = icmp slt i32 %50, %53, !dbg !731
  br i1 %54, label %55, label %72, !dbg !732

55:                                               ; preds = %49
  %56 = load ptr, ptr %6, align 8, !dbg !733
  %57 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %56, i32 0, i32 5, !dbg !736
  %58 = load i32, ptr %57, align 4, !dbg !736
  %59 = icmp sgt i32 %58, 1, !dbg !737
  br i1 %59, label %65, label %60, !dbg !738

60:                                               ; preds = %55
  %61 = load ptr, ptr %6, align 8, !dbg !739
  %62 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %61, i32 0, i32 6, !dbg !740
  %63 = load i32, ptr %62, align 8, !dbg !740
  %64 = icmp sgt i32 %63, 1, !dbg !741
  br i1 %64, label %65, label %66, !dbg !738

65:                                               ; preds = %60, %55
  store i32 0, ptr %5, align 4, !dbg !742
  br label %66, !dbg !743

66:                                               ; preds = %65, %60
  br label %67, !dbg !744

67:                                               ; preds = %66
  %68 = load i32, ptr %3, align 4, !dbg !745
  %69 = add nsw i32 %68, 1, !dbg !745
  store i32 %69, ptr %3, align 4, !dbg !745
  %70 = load ptr, ptr %6, align 8, !dbg !746
  %71 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %70, i32 1, !dbg !746
  store ptr %71, ptr %6, align 8, !dbg !746
  br label %49, !dbg !747, !llvm.loop !748

72:                                               ; preds = %49
  %73 = load i32, ptr %4, align 4, !dbg !750
  %74 = icmp ne i32 %73, 0, !dbg !750
  br i1 %74, label %75, label %89, !dbg !752

75:                                               ; preds = %72
  %76 = load i32, ptr %5, align 4, !dbg !753
  %77 = icmp ne i32 %76, 0, !dbg !753
  br i1 %77, label %78, label %89, !dbg !752

78:                                               ; preds = %75
  store i32 0, ptr %5, align 4, !dbg !754
  %79 = load ptr, ptr %2, align 8, !dbg !756
  %80 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %79, i32 0, i32 0, !dbg !756
  %81 = load ptr, ptr %80, align 8, !dbg !756
  %82 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %81, i32 0, i32 5, !dbg !756
  store i32 74, ptr %82, align 8, !dbg !756
  %83 = load ptr, ptr %2, align 8, !dbg !756
  %84 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %83, i32 0, i32 0, !dbg !756
  %85 = load ptr, ptr %84, align 8, !dbg !756
  %86 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %85, i32 0, i32 1, !dbg !756
  %87 = load ptr, ptr %86, align 8, !dbg !756
  %88 = load ptr, ptr %2, align 8, !dbg !756
  call void %87(ptr noundef %88, i32 noundef 0), !dbg !756
  br label %89, !dbg !757

89:                                               ; preds = %78, %75, %72
  br label %90

90:                                               ; preds = %89, %44
  %91 = load ptr, ptr %2, align 8, !dbg !758
  %92 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %91, i32 0, i32 24, !dbg !760
  %93 = load i32, ptr %92, align 4, !dbg !760
  %94 = icmp ne i32 %93, 0, !dbg !758
  br i1 %94, label %95, label %97, !dbg !758

95:                                               ; preds = %90
  %96 = load ptr, ptr %2, align 8, !dbg !761
  call void @emit_sof(ptr noundef %96, i32 noundef 201), !dbg !763
  br label %113, !dbg !764

97:                                               ; preds = %90
  %98 = load ptr, ptr %2, align 8, !dbg !765
  %99 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %98, i32 0, i32 37, !dbg !768
  %100 = load i32, ptr %99, align 4, !dbg !768
  %101 = icmp ne i32 %100, 0, !dbg !765
  br i1 %101, label %102, label %104, !dbg !765

102:                                              ; preds = %97
  %103 = load ptr, ptr %2, align 8, !dbg !769
  call void @emit_sof(ptr noundef %103, i32 noundef 194), !dbg !770
  br label %112, !dbg !770

104:                                              ; preds = %97
  %105 = load i32, ptr %5, align 4, !dbg !771
  %106 = icmp ne i32 %105, 0, !dbg !771
  br i1 %106, label %107, label %109, !dbg !771

107:                                              ; preds = %104
  %108 = load ptr, ptr %2, align 8, !dbg !773
  call void @emit_sof(ptr noundef %108, i32 noundef 192), !dbg !774
  br label %111, !dbg !774

109:                                              ; preds = %104
  %110 = load ptr, ptr %2, align 8, !dbg !775
  call void @emit_sof(ptr noundef %110, i32 noundef 193), !dbg !776
  br label %111

111:                                              ; preds = %109, %107
  br label %112

112:                                              ; preds = %111, %102
  br label %113

113:                                              ; preds = %112, %95
  ret void, !dbg !777
}

; Function Attrs: noinline nounwind uwtable
define internal void @write_scan_header(ptr noundef %0) #0 !dbg !778 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !779, !DIExpression(), !780)
    #dbg_declare(ptr %3, !781, !DIExpression(), !782)
    #dbg_declare(ptr %4, !783, !DIExpression(), !784)
  %5 = load ptr, ptr %2, align 8, !dbg !785
  %6 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %5, i32 0, i32 24, !dbg !787
  %7 = load i32, ptr %6, align 4, !dbg !787
  %8 = icmp ne i32 %7, 0, !dbg !785
  br i1 %8, label %9, label %11, !dbg !785

9:                                                ; preds = %1
  %10 = load ptr, ptr %2, align 8, !dbg !788
  call void @emit_dac(ptr noundef %10), !dbg !790
  br label %65, !dbg !791

11:                                               ; preds = %1
  store i32 0, ptr %3, align 4, !dbg !792
  br label %12, !dbg !795

12:                                               ; preds = %61, %11
  %13 = load i32, ptr %3, align 4, !dbg !796
  %14 = load ptr, ptr %2, align 8, !dbg !798
  %15 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %14, i32 0, i32 41, !dbg !799
  %16 = load i32, ptr %15, align 4, !dbg !799
  %17 = icmp slt i32 %13, %16, !dbg !800
  br i1 %17, label %18, label %64, !dbg !801

18:                                               ; preds = %12
  %19 = load ptr, ptr %2, align 8, !dbg !802
  %20 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %19, i32 0, i32 42, !dbg !804
  %21 = load i32, ptr %3, align 4, !dbg !805
  %22 = sext i32 %21 to i64, !dbg !802
  %23 = getelementptr inbounds [4 x ptr], ptr %20, i64 0, i64 %22, !dbg !802
  %24 = load ptr, ptr %23, align 8, !dbg !802
  store ptr %24, ptr %4, align 8, !dbg !806
  %25 = load ptr, ptr %2, align 8, !dbg !807
  %26 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %25, i32 0, i32 37, !dbg !809
  %27 = load i32, ptr %26, align 4, !dbg !809
  %28 = icmp ne i32 %27, 0, !dbg !807
  br i1 %28, label %29, label %51, !dbg !807

29:                                               ; preds = %18
  %30 = load ptr, ptr %2, align 8, !dbg !810
  %31 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %30, i32 0, i32 47, !dbg !813
  %32 = load i32, ptr %31, align 4, !dbg !813
  %33 = icmp eq i32 %32, 0, !dbg !814
  br i1 %33, label %34, label %45, !dbg !814

34:                                               ; preds = %29
  %35 = load ptr, ptr %2, align 8, !dbg !815
  %36 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %35, i32 0, i32 49, !dbg !818
  %37 = load i32, ptr %36, align 4, !dbg !818
  %38 = icmp eq i32 %37, 0, !dbg !819
  br i1 %38, label %39, label %44, !dbg !819

39:                                               ; preds = %34
  %40 = load ptr, ptr %2, align 8, !dbg !820
  %41 = load ptr, ptr %4, align 8, !dbg !821
  %42 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %41, i32 0, i32 5, !dbg !822
  %43 = load i32, ptr %42, align 4, !dbg !822
  call void @emit_dht(ptr noundef %40, i32 noundef %43, i32 noundef 0), !dbg !823
  br label %44, !dbg !823

44:                                               ; preds = %39, %34
  br label %50, !dbg !824

45:                                               ; preds = %29
  %46 = load ptr, ptr %2, align 8, !dbg !825
  %47 = load ptr, ptr %4, align 8, !dbg !827
  %48 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %47, i32 0, i32 6, !dbg !828
  %49 = load i32, ptr %48, align 8, !dbg !828
  call void @emit_dht(ptr noundef %46, i32 noundef %49, i32 noundef 1), !dbg !829
  br label %50

50:                                               ; preds = %45, %44
  br label %60, !dbg !830

51:                                               ; preds = %18
  %52 = load ptr, ptr %2, align 8, !dbg !831
  %53 = load ptr, ptr %4, align 8, !dbg !833
  %54 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %53, i32 0, i32 5, !dbg !834
  %55 = load i32, ptr %54, align 4, !dbg !834
  call void @emit_dht(ptr noundef %52, i32 noundef %55, i32 noundef 0), !dbg !835
  %56 = load ptr, ptr %2, align 8, !dbg !836
  %57 = load ptr, ptr %4, align 8, !dbg !837
  %58 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %57, i32 0, i32 6, !dbg !838
  %59 = load i32, ptr %58, align 8, !dbg !838
  call void @emit_dht(ptr noundef %56, i32 noundef %59, i32 noundef 1), !dbg !839
  br label %60

60:                                               ; preds = %51, %50
  br label %61, !dbg !840

61:                                               ; preds = %60
  %62 = load i32, ptr %3, align 4, !dbg !841
  %63 = add nsw i32 %62, 1, !dbg !841
  store i32 %63, ptr %3, align 4, !dbg !841
  br label %12, !dbg !842, !llvm.loop !843

64:                                               ; preds = %12
  br label %65

65:                                               ; preds = %64, %9
  %66 = load ptr, ptr %2, align 8, !dbg !845
  %67 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %66, i32 0, i32 29, !dbg !847
  %68 = load i32, ptr %67, align 8, !dbg !847
  %69 = icmp ne i32 %68, 0, !dbg !845
  br i1 %69, label %70, label %72, !dbg !845

70:                                               ; preds = %65
  %71 = load ptr, ptr %2, align 8, !dbg !848
  call void @emit_dri(ptr noundef %71), !dbg !849
  br label %72, !dbg !849

72:                                               ; preds = %70, %65
  %73 = load ptr, ptr %2, align 8, !dbg !850
  call void @emit_sos(ptr noundef %73), !dbg !851
  ret void, !dbg !852
}

; Function Attrs: noinline nounwind uwtable
define internal void @write_file_trailer(ptr noundef %0) #0 !dbg !853 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !854, !DIExpression(), !855)
  %3 = load ptr, ptr %2, align 8, !dbg !856
  call void @emit_marker(ptr noundef %3, i32 noundef 217), !dbg !857
  ret void, !dbg !858
}

; Function Attrs: noinline nounwind uwtable
define internal void @write_tables_only(ptr noundef %0) #0 !dbg !859 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !860, !DIExpression(), !861)
    #dbg_declare(ptr %3, !862, !DIExpression(), !863)
  %4 = load ptr, ptr %2, align 8, !dbg !864
  call void @emit_marker(ptr noundef %4, i32 noundef 216), !dbg !865
  store i32 0, ptr %3, align 4, !dbg !866
  br label %5, !dbg !868

5:                                                ; preds = %21, %1
  %6 = load i32, ptr %3, align 4, !dbg !869
  %7 = icmp slt i32 %6, 4, !dbg !871
  br i1 %7, label %8, label %24, !dbg !872

8:                                                ; preds = %5
  %9 = load ptr, ptr %2, align 8, !dbg !873
  %10 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %9, i32 0, i32 15, !dbg !876
  %11 = load i32, ptr %3, align 4, !dbg !877
  %12 = sext i32 %11 to i64, !dbg !873
  %13 = getelementptr inbounds [4 x ptr], ptr %10, i64 0, i64 %12, !dbg !873
  %14 = load ptr, ptr %13, align 8, !dbg !873
  %15 = icmp ne ptr %14, null, !dbg !878
  br i1 %15, label %16, label %20, !dbg !878

16:                                               ; preds = %8
  %17 = load ptr, ptr %2, align 8, !dbg !879
  %18 = load i32, ptr %3, align 4, !dbg !880
  %19 = call i32 @emit_dqt(ptr noundef %17, i32 noundef %18), !dbg !881
  br label %20, !dbg !882

20:                                               ; preds = %16, %8
  br label %21, !dbg !883

21:                                               ; preds = %20
  %22 = load i32, ptr %3, align 4, !dbg !884
  %23 = add nsw i32 %22, 1, !dbg !884
  store i32 %23, ptr %3, align 4, !dbg !884
  br label %5, !dbg !885, !llvm.loop !886

24:                                               ; preds = %5
  %25 = load ptr, ptr %2, align 8, !dbg !888
  %26 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %25, i32 0, i32 24, !dbg !890
  %27 = load i32, ptr %26, align 4, !dbg !890
  %28 = icmp ne i32 %27, 0, !dbg !888
  br i1 %28, label %60, label %29, !dbg !891

29:                                               ; preds = %24
  store i32 0, ptr %3, align 4, !dbg !892
  br label %30, !dbg !895

30:                                               ; preds = %56, %29
  %31 = load i32, ptr %3, align 4, !dbg !896
  %32 = icmp slt i32 %31, 4, !dbg !898
  br i1 %32, label %33, label %59, !dbg !899

33:                                               ; preds = %30
  %34 = load ptr, ptr %2, align 8, !dbg !900
  %35 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %34, i32 0, i32 16, !dbg !903
  %36 = load i32, ptr %3, align 4, !dbg !904
  %37 = sext i32 %36 to i64, !dbg !900
  %38 = getelementptr inbounds [4 x ptr], ptr %35, i64 0, i64 %37, !dbg !900
  %39 = load ptr, ptr %38, align 8, !dbg !900
  %40 = icmp ne ptr %39, null, !dbg !905
  br i1 %40, label %41, label %44, !dbg !905

41:                                               ; preds = %33
  %42 = load ptr, ptr %2, align 8, !dbg !906
  %43 = load i32, ptr %3, align 4, !dbg !907
  call void @emit_dht(ptr noundef %42, i32 noundef %43, i32 noundef 0), !dbg !908
  br label %44, !dbg !908

44:                                               ; preds = %41, %33
  %45 = load ptr, ptr %2, align 8, !dbg !909
  %46 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %45, i32 0, i32 17, !dbg !911
  %47 = load i32, ptr %3, align 4, !dbg !912
  %48 = sext i32 %47 to i64, !dbg !909
  %49 = getelementptr inbounds [4 x ptr], ptr %46, i64 0, i64 %48, !dbg !909
  %50 = load ptr, ptr %49, align 8, !dbg !909
  %51 = icmp ne ptr %50, null, !dbg !913
  br i1 %51, label %52, label %55, !dbg !913

52:                                               ; preds = %44
  %53 = load ptr, ptr %2, align 8, !dbg !914
  %54 = load i32, ptr %3, align 4, !dbg !915
  call void @emit_dht(ptr noundef %53, i32 noundef %54, i32 noundef 1), !dbg !916
  br label %55, !dbg !916

55:                                               ; preds = %52, %44
  br label %56, !dbg !917

56:                                               ; preds = %55
  %57 = load i32, ptr %3, align 4, !dbg !918
  %58 = add nsw i32 %57, 1, !dbg !918
  store i32 %58, ptr %3, align 4, !dbg !918
  br label %30, !dbg !919, !llvm.loop !920

59:                                               ; preds = %30
  br label %60, !dbg !922

60:                                               ; preds = %59, %24
  %61 = load ptr, ptr %2, align 8, !dbg !923
  call void @emit_marker(ptr noundef %61, i32 noundef 217), !dbg !924
  ret void, !dbg !925
}

; Function Attrs: noinline nounwind uwtable
define internal void @emit_marker(ptr noundef %0, i32 noundef %1) #0 !dbg !926 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !929, !DIExpression(), !930)
  store i32 %1, ptr %4, align 4
    #dbg_declare(ptr %4, !931, !DIExpression(), !932)
  %5 = load ptr, ptr %3, align 8, !dbg !933
  call void @emit_byte(ptr noundef %5, i32 noundef 255), !dbg !934
  %6 = load ptr, ptr %3, align 8, !dbg !935
  %7 = load i32, ptr %4, align 4, !dbg !936
  call void @emit_byte(ptr noundef %6, i32 noundef %7), !dbg !937
  ret void, !dbg !938
}

; Function Attrs: noinline nounwind uwtable
define internal void @emit_2bytes(ptr noundef %0, i32 noundef %1) #0 !dbg !939 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !942, !DIExpression(), !943)
  store i32 %1, ptr %4, align 4
    #dbg_declare(ptr %4, !944, !DIExpression(), !945)
  %5 = load ptr, ptr %3, align 8, !dbg !946
  %6 = load i32, ptr %4, align 4, !dbg !947
  %7 = ashr i32 %6, 8, !dbg !948
  %8 = and i32 %7, 255, !dbg !949
  call void @emit_byte(ptr noundef %5, i32 noundef %8), !dbg !950
  %9 = load ptr, ptr %3, align 8, !dbg !951
  %10 = load i32, ptr %4, align 4, !dbg !952
  %11 = and i32 %10, 255, !dbg !953
  call void @emit_byte(ptr noundef %9, i32 noundef %11), !dbg !954
  ret void, !dbg !955
}

; Function Attrs: noinline nounwind uwtable
define internal void @emit_byte(ptr noundef %0, i32 noundef %1) #0 !dbg !956 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !957, !DIExpression(), !958)
  store i32 %1, ptr %4, align 4
    #dbg_declare(ptr %4, !959, !DIExpression(), !960)
    #dbg_declare(ptr %5, !961, !DIExpression(), !962)
  %6 = load ptr, ptr %3, align 8, !dbg !963
  %7 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %6, i32 0, i32 5, !dbg !964
  %8 = load ptr, ptr %7, align 8, !dbg !964
  store ptr %8, ptr %5, align 8, !dbg !962
  %9 = load i32, ptr %4, align 4, !dbg !965
  %10 = trunc i32 %9 to i8, !dbg !966
  %11 = load ptr, ptr %5, align 8, !dbg !967
  %12 = getelementptr inbounds nuw %struct.jpeg_destination_mgr, ptr %11, i32 0, i32 0, !dbg !968
  %13 = load ptr, ptr %12, align 8, !dbg !969
  %14 = getelementptr inbounds nuw i8, ptr %13, i32 1, !dbg !969
  store ptr %14, ptr %12, align 8, !dbg !969
  store i8 %10, ptr %13, align 1, !dbg !970
  %15 = load ptr, ptr %5, align 8, !dbg !971
  %16 = getelementptr inbounds nuw %struct.jpeg_destination_mgr, ptr %15, i32 0, i32 1, !dbg !973
  %17 = load i64, ptr %16, align 8, !dbg !974
  %18 = add i64 %17, -1, !dbg !974
  store i64 %18, ptr %16, align 8, !dbg !974
  %19 = icmp eq i64 %18, 0, !dbg !975
  br i1 %19, label %20, label %39, !dbg !975

20:                                               ; preds = %2
  %21 = load ptr, ptr %5, align 8, !dbg !976
  %22 = getelementptr inbounds nuw %struct.jpeg_destination_mgr, ptr %21, i32 0, i32 3, !dbg !979
  %23 = load ptr, ptr %22, align 8, !dbg !979
  %24 = load ptr, ptr %3, align 8, !dbg !980
  %25 = call i32 %23(ptr noundef %24), !dbg !981
  %26 = icmp ne i32 %25, 0, !dbg !981
  br i1 %26, label %38, label %27, !dbg !982

27:                                               ; preds = %20
  %28 = load ptr, ptr %3, align 8, !dbg !983
  %29 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %28, i32 0, i32 0, !dbg !983
  %30 = load ptr, ptr %29, align 8, !dbg !983
  %31 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %30, i32 0, i32 5, !dbg !983
  store i32 22, ptr %31, align 8, !dbg !983
  %32 = load ptr, ptr %3, align 8, !dbg !983
  %33 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %32, i32 0, i32 0, !dbg !983
  %34 = load ptr, ptr %33, align 8, !dbg !983
  %35 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %34, i32 0, i32 0, !dbg !983
  %36 = load ptr, ptr %35, align 8, !dbg !983
  %37 = load ptr, ptr %3, align 8, !dbg !983
  call void %36(ptr noundef %37), !dbg !983
  br label %38, !dbg !983

38:                                               ; preds = %27, %20
  br label %39, !dbg !984

39:                                               ; preds = %38, %2
  ret void, !dbg !985
}

; Function Attrs: noinline nounwind uwtable
define internal void @emit_jfif_app0(ptr noundef %0) #0 !dbg !986 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !987, !DIExpression(), !988)
  %3 = load ptr, ptr %2, align 8, !dbg !989
  call void @emit_marker(ptr noundef %3, i32 noundef 224), !dbg !990
  %4 = load ptr, ptr %2, align 8, !dbg !991
  call void @emit_2bytes(ptr noundef %4, i32 noundef 16), !dbg !992
  %5 = load ptr, ptr %2, align 8, !dbg !993
  call void @emit_byte(ptr noundef %5, i32 noundef 74), !dbg !994
  %6 = load ptr, ptr %2, align 8, !dbg !995
  call void @emit_byte(ptr noundef %6, i32 noundef 70), !dbg !996
  %7 = load ptr, ptr %2, align 8, !dbg !997
  call void @emit_byte(ptr noundef %7, i32 noundef 73), !dbg !998
  %8 = load ptr, ptr %2, align 8, !dbg !999
  call void @emit_byte(ptr noundef %8, i32 noundef 70), !dbg !1000
  %9 = load ptr, ptr %2, align 8, !dbg !1001
  call void @emit_byte(ptr noundef %9, i32 noundef 0), !dbg !1002
  %10 = load ptr, ptr %2, align 8, !dbg !1003
  call void @emit_byte(ptr noundef %10, i32 noundef 1), !dbg !1004
  %11 = load ptr, ptr %2, align 8, !dbg !1005
  call void @emit_byte(ptr noundef %11, i32 noundef 1), !dbg !1006
  %12 = load ptr, ptr %2, align 8, !dbg !1007
  %13 = load ptr, ptr %2, align 8, !dbg !1008
  %14 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %13, i32 0, i32 32, !dbg !1009
  %15 = load i8, ptr %14, align 4, !dbg !1009
  %16 = zext i8 %15 to i32, !dbg !1008
  call void @emit_byte(ptr noundef %12, i32 noundef %16), !dbg !1010
  %17 = load ptr, ptr %2, align 8, !dbg !1011
  %18 = load ptr, ptr %2, align 8, !dbg !1012
  %19 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %18, i32 0, i32 33, !dbg !1013
  %20 = load i16, ptr %19, align 2, !dbg !1013
  %21 = zext i16 %20 to i32, !dbg !1014
  call void @emit_2bytes(ptr noundef %17, i32 noundef %21), !dbg !1015
  %22 = load ptr, ptr %2, align 8, !dbg !1016
  %23 = load ptr, ptr %2, align 8, !dbg !1017
  %24 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %23, i32 0, i32 34, !dbg !1018
  %25 = load i16, ptr %24, align 8, !dbg !1018
  %26 = zext i16 %25 to i32, !dbg !1019
  call void @emit_2bytes(ptr noundef %22, i32 noundef %26), !dbg !1020
  %27 = load ptr, ptr %2, align 8, !dbg !1021
  call void @emit_byte(ptr noundef %27, i32 noundef 0), !dbg !1022
  %28 = load ptr, ptr %2, align 8, !dbg !1023
  call void @emit_byte(ptr noundef %28, i32 noundef 0), !dbg !1024
  ret void, !dbg !1025
}

; Function Attrs: noinline nounwind uwtable
define internal void @emit_adobe_app14(ptr noundef %0) #0 !dbg !1026 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !1027, !DIExpression(), !1028)
  %3 = load ptr, ptr %2, align 8, !dbg !1029
  call void @emit_marker(ptr noundef %3, i32 noundef 238), !dbg !1030
  %4 = load ptr, ptr %2, align 8, !dbg !1031
  call void @emit_2bytes(ptr noundef %4, i32 noundef 14), !dbg !1032
  %5 = load ptr, ptr %2, align 8, !dbg !1033
  call void @emit_byte(ptr noundef %5, i32 noundef 65), !dbg !1034
  %6 = load ptr, ptr %2, align 8, !dbg !1035
  call void @emit_byte(ptr noundef %6, i32 noundef 100), !dbg !1036
  %7 = load ptr, ptr %2, align 8, !dbg !1037
  call void @emit_byte(ptr noundef %7, i32 noundef 111), !dbg !1038
  %8 = load ptr, ptr %2, align 8, !dbg !1039
  call void @emit_byte(ptr noundef %8, i32 noundef 98), !dbg !1040
  %9 = load ptr, ptr %2, align 8, !dbg !1041
  call void @emit_byte(ptr noundef %9, i32 noundef 101), !dbg !1042
  %10 = load ptr, ptr %2, align 8, !dbg !1043
  call void @emit_2bytes(ptr noundef %10, i32 noundef 100), !dbg !1044
  %11 = load ptr, ptr %2, align 8, !dbg !1045
  call void @emit_2bytes(ptr noundef %11, i32 noundef 0), !dbg !1046
  %12 = load ptr, ptr %2, align 8, !dbg !1047
  call void @emit_2bytes(ptr noundef %12, i32 noundef 0), !dbg !1048
  %13 = load ptr, ptr %2, align 8, !dbg !1049
  %14 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %13, i32 0, i32 13, !dbg !1050
  %15 = load i32, ptr %14, align 8, !dbg !1050
  switch i32 %15, label %20 [
    i32 3, label %16
    i32 5, label %18
  ], !dbg !1051

16:                                               ; preds = %1
  %17 = load ptr, ptr %2, align 8, !dbg !1052
  call void @emit_byte(ptr noundef %17, i32 noundef 1), !dbg !1054
  br label %22, !dbg !1055

18:                                               ; preds = %1
  %19 = load ptr, ptr %2, align 8, !dbg !1056
  call void @emit_byte(ptr noundef %19, i32 noundef 2), !dbg !1057
  br label %22, !dbg !1058

20:                                               ; preds = %1
  %21 = load ptr, ptr %2, align 8, !dbg !1059
  call void @emit_byte(ptr noundef %21, i32 noundef 0), !dbg !1060
  br label %22, !dbg !1061

22:                                               ; preds = %20, %18, %16
  ret void, !dbg !1062
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @emit_dqt(ptr noundef %0, i32 noundef %1) #0 !dbg !1063 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !1066, !DIExpression(), !1067)
  store i32 %1, ptr %4, align 4
    #dbg_declare(ptr %4, !1068, !DIExpression(), !1069)
    #dbg_declare(ptr %5, !1070, !DIExpression(), !1071)
  %9 = load ptr, ptr %3, align 8, !dbg !1072
  %10 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %9, i32 0, i32 15, !dbg !1073
  %11 = load i32, ptr %4, align 4, !dbg !1074
  %12 = sext i32 %11 to i64, !dbg !1072
  %13 = getelementptr inbounds [4 x ptr], ptr %10, i64 0, i64 %12, !dbg !1072
  %14 = load ptr, ptr %13, align 8, !dbg !1072
  store ptr %14, ptr %5, align 8, !dbg !1071
    #dbg_declare(ptr %6, !1075, !DIExpression(), !1076)
    #dbg_declare(ptr %7, !1077, !DIExpression(), !1078)
  %15 = load ptr, ptr %5, align 8, !dbg !1079
  %16 = icmp eq ptr %15, null, !dbg !1081
  br i1 %16, label %17, label %34, !dbg !1081

17:                                               ; preds = %2
  %18 = load ptr, ptr %3, align 8, !dbg !1082
  %19 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %18, i32 0, i32 0, !dbg !1082
  %20 = load ptr, ptr %19, align 8, !dbg !1082
  %21 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %20, i32 0, i32 5, !dbg !1082
  store i32 51, ptr %21, align 8, !dbg !1082
  %22 = load i32, ptr %4, align 4, !dbg !1082
  %23 = load ptr, ptr %3, align 8, !dbg !1082
  %24 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %23, i32 0, i32 0, !dbg !1082
  %25 = load ptr, ptr %24, align 8, !dbg !1082
  %26 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %25, i32 0, i32 6, !dbg !1082
  %27 = getelementptr inbounds [8 x i32], ptr %26, i64 0, i64 0, !dbg !1082
  store i32 %22, ptr %27, align 4, !dbg !1082
  %28 = load ptr, ptr %3, align 8, !dbg !1082
  %29 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %28, i32 0, i32 0, !dbg !1082
  %30 = load ptr, ptr %29, align 8, !dbg !1082
  %31 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %30, i32 0, i32 0, !dbg !1082
  %32 = load ptr, ptr %31, align 8, !dbg !1082
  %33 = load ptr, ptr %3, align 8, !dbg !1082
  call void %32(ptr noundef %33), !dbg !1082
  br label %34, !dbg !1082

34:                                               ; preds = %17, %2
  store i32 0, ptr %6, align 4, !dbg !1083
  store i32 0, ptr %7, align 4, !dbg !1084
  br label %35, !dbg !1086

35:                                               ; preds = %49, %34
  %36 = load i32, ptr %7, align 4, !dbg !1087
  %37 = icmp slt i32 %36, 64, !dbg !1089
  br i1 %37, label %38, label %52, !dbg !1090

38:                                               ; preds = %35
  %39 = load ptr, ptr %5, align 8, !dbg !1091
  %40 = getelementptr inbounds nuw %struct.JQUANT_TBL, ptr %39, i32 0, i32 0, !dbg !1094
  %41 = load i32, ptr %7, align 4, !dbg !1095
  %42 = sext i32 %41 to i64, !dbg !1091
  %43 = getelementptr inbounds [64 x i16], ptr %40, i64 0, i64 %42, !dbg !1091
  %44 = load i16, ptr %43, align 2, !dbg !1091
  %45 = zext i16 %44 to i32, !dbg !1091
  %46 = icmp sgt i32 %45, 255, !dbg !1096
  br i1 %46, label %47, label %48, !dbg !1096

47:                                               ; preds = %38
  store i32 1, ptr %6, align 4, !dbg !1097
  br label %48, !dbg !1098

48:                                               ; preds = %47, %38
  br label %49, !dbg !1099

49:                                               ; preds = %48
  %50 = load i32, ptr %7, align 4, !dbg !1100
  %51 = add nsw i32 %50, 1, !dbg !1100
  store i32 %51, ptr %7, align 4, !dbg !1100
  br label %35, !dbg !1101, !llvm.loop !1102

52:                                               ; preds = %35
  %53 = load ptr, ptr %5, align 8, !dbg !1104
  %54 = getelementptr inbounds nuw %struct.JQUANT_TBL, ptr %53, i32 0, i32 1, !dbg !1106
  %55 = load i32, ptr %54, align 4, !dbg !1106
  %56 = icmp ne i32 %55, 0, !dbg !1104
  br i1 %56, label %99, label %57, !dbg !1107

57:                                               ; preds = %52
  %58 = load ptr, ptr %3, align 8, !dbg !1108
  call void @emit_marker(ptr noundef %58, i32 noundef 219), !dbg !1110
  %59 = load ptr, ptr %3, align 8, !dbg !1111
  %60 = load i32, ptr %6, align 4, !dbg !1112
  %61 = icmp ne i32 %60, 0, !dbg !1112
  %62 = zext i1 %61 to i64, !dbg !1112
  %63 = select i1 %61, i32 131, i32 67, !dbg !1112
  call void @emit_2bytes(ptr noundef %59, i32 noundef %63), !dbg !1113
  %64 = load ptr, ptr %3, align 8, !dbg !1114
  %65 = load i32, ptr %4, align 4, !dbg !1115
  %66 = load i32, ptr %6, align 4, !dbg !1116
  %67 = shl i32 %66, 4, !dbg !1117
  %68 = add nsw i32 %65, %67, !dbg !1118
  call void @emit_byte(ptr noundef %64, i32 noundef %68), !dbg !1119
  store i32 0, ptr %7, align 4, !dbg !1120
  br label %69, !dbg !1122

69:                                               ; preds = %93, %57
  %70 = load i32, ptr %7, align 4, !dbg !1123
  %71 = icmp slt i32 %70, 64, !dbg !1125
  br i1 %71, label %72, label %96, !dbg !1126

72:                                               ; preds = %69
    #dbg_declare(ptr %8, !1127, !DIExpression(), !1129)
  %73 = load ptr, ptr %5, align 8, !dbg !1130
  %74 = getelementptr inbounds nuw %struct.JQUANT_TBL, ptr %73, i32 0, i32 0, !dbg !1131
  %75 = load i32, ptr %7, align 4, !dbg !1132
  %76 = sext i32 %75 to i64, !dbg !1133
  %77 = getelementptr inbounds [0 x i32], ptr @jpeg_natural_order, i64 0, i64 %76, !dbg !1133
  %78 = load i32, ptr %77, align 4, !dbg !1133
  %79 = sext i32 %78 to i64, !dbg !1130
  %80 = getelementptr inbounds [64 x i16], ptr %74, i64 0, i64 %79, !dbg !1130
  %81 = load i16, ptr %80, align 2, !dbg !1130
  %82 = zext i16 %81 to i32, !dbg !1130
  store i32 %82, ptr %8, align 4, !dbg !1129
  %83 = load i32, ptr %6, align 4, !dbg !1134
  %84 = icmp ne i32 %83, 0, !dbg !1134
  br i1 %84, label %85, label %89, !dbg !1134

85:                                               ; preds = %72
  %86 = load ptr, ptr %3, align 8, !dbg !1136
  %87 = load i32, ptr %8, align 4, !dbg !1137
  %88 = lshr i32 %87, 8, !dbg !1138
  call void @emit_byte(ptr noundef %86, i32 noundef %88), !dbg !1139
  br label %89, !dbg !1139

89:                                               ; preds = %85, %72
  %90 = load ptr, ptr %3, align 8, !dbg !1140
  %91 = load i32, ptr %8, align 4, !dbg !1141
  %92 = and i32 %91, 255, !dbg !1142
  call void @emit_byte(ptr noundef %90, i32 noundef %92), !dbg !1143
  br label %93, !dbg !1144

93:                                               ; preds = %89
  %94 = load i32, ptr %7, align 4, !dbg !1145
  %95 = add nsw i32 %94, 1, !dbg !1145
  store i32 %95, ptr %7, align 4, !dbg !1145
  br label %69, !dbg !1146, !llvm.loop !1147

96:                                               ; preds = %69
  %97 = load ptr, ptr %5, align 8, !dbg !1149
  %98 = getelementptr inbounds nuw %struct.JQUANT_TBL, ptr %97, i32 0, i32 1, !dbg !1150
  store i32 1, ptr %98, align 4, !dbg !1151
  br label %99, !dbg !1152

99:                                               ; preds = %96, %52
  %100 = load i32, ptr %6, align 4, !dbg !1153
  ret i32 %100, !dbg !1154
}

; Function Attrs: noinline nounwind uwtable
define internal void @emit_sof(ptr noundef %0, i32 noundef %1) #0 !dbg !1155 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !1156, !DIExpression(), !1157)
  store i32 %1, ptr %4, align 4
    #dbg_declare(ptr %4, !1158, !DIExpression(), !1159)
    #dbg_declare(ptr %5, !1160, !DIExpression(), !1161)
    #dbg_declare(ptr %6, !1162, !DIExpression(), !1163)
  %7 = load ptr, ptr %3, align 8, !dbg !1164
  %8 = load i32, ptr %4, align 4, !dbg !1165
  call void @emit_marker(ptr noundef %7, i32 noundef %8), !dbg !1166
  %9 = load ptr, ptr %3, align 8, !dbg !1167
  %10 = load ptr, ptr %3, align 8, !dbg !1168
  %11 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %10, i32 0, i32 12, !dbg !1169
  %12 = load i32, ptr %11, align 4, !dbg !1169
  %13 = mul nsw i32 3, %12, !dbg !1170
  %14 = add nsw i32 %13, 2, !dbg !1171
  %15 = add nsw i32 %14, 5, !dbg !1172
  %16 = add nsw i32 %15, 1, !dbg !1173
  call void @emit_2bytes(ptr noundef %9, i32 noundef %16), !dbg !1174
  %17 = load ptr, ptr %3, align 8, !dbg !1175
  %18 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %17, i32 0, i32 7, !dbg !1177
  %19 = load i32, ptr %18, align 4, !dbg !1177
  %20 = zext i32 %19 to i64, !dbg !1178
  %21 = icmp sgt i64 %20, 65535, !dbg !1179
  br i1 %21, label %28, label %22, !dbg !1180

22:                                               ; preds = %2
  %23 = load ptr, ptr %3, align 8, !dbg !1181
  %24 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %23, i32 0, i32 6, !dbg !1182
  %25 = load i32, ptr %24, align 8, !dbg !1182
  %26 = zext i32 %25 to i64, !dbg !1183
  %27 = icmp sgt i64 %26, 65535, !dbg !1184
  br i1 %27, label %28, label %44, !dbg !1180

28:                                               ; preds = %22, %2
  %29 = load ptr, ptr %3, align 8, !dbg !1185
  %30 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %29, i32 0, i32 0, !dbg !1185
  %31 = load ptr, ptr %30, align 8, !dbg !1185
  %32 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %31, i32 0, i32 5, !dbg !1185
  store i32 40, ptr %32, align 8, !dbg !1185
  %33 = load ptr, ptr %3, align 8, !dbg !1185
  %34 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %33, i32 0, i32 0, !dbg !1185
  %35 = load ptr, ptr %34, align 8, !dbg !1185
  %36 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %35, i32 0, i32 6, !dbg !1185
  %37 = getelementptr inbounds [8 x i32], ptr %36, i64 0, i64 0, !dbg !1185
  store i32 65535, ptr %37, align 4, !dbg !1185
  %38 = load ptr, ptr %3, align 8, !dbg !1185
  %39 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %38, i32 0, i32 0, !dbg !1185
  %40 = load ptr, ptr %39, align 8, !dbg !1185
  %41 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %40, i32 0, i32 0, !dbg !1185
  %42 = load ptr, ptr %41, align 8, !dbg !1185
  %43 = load ptr, ptr %3, align 8, !dbg !1185
  call void %42(ptr noundef %43), !dbg !1185
  br label %44, !dbg !1185

44:                                               ; preds = %28, %22
  %45 = load ptr, ptr %3, align 8, !dbg !1186
  %46 = load ptr, ptr %3, align 8, !dbg !1187
  %47 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %46, i32 0, i32 11, !dbg !1188
  %48 = load i32, ptr %47, align 8, !dbg !1188
  call void @emit_byte(ptr noundef %45, i32 noundef %48), !dbg !1189
  %49 = load ptr, ptr %3, align 8, !dbg !1190
  %50 = load ptr, ptr %3, align 8, !dbg !1191
  %51 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %50, i32 0, i32 7, !dbg !1192
  %52 = load i32, ptr %51, align 4, !dbg !1192
  call void @emit_2bytes(ptr noundef %49, i32 noundef %52), !dbg !1193
  %53 = load ptr, ptr %3, align 8, !dbg !1194
  %54 = load ptr, ptr %3, align 8, !dbg !1195
  %55 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %54, i32 0, i32 6, !dbg !1196
  %56 = load i32, ptr %55, align 8, !dbg !1196
  call void @emit_2bytes(ptr noundef %53, i32 noundef %56), !dbg !1197
  %57 = load ptr, ptr %3, align 8, !dbg !1198
  %58 = load ptr, ptr %3, align 8, !dbg !1199
  %59 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %58, i32 0, i32 12, !dbg !1200
  %60 = load i32, ptr %59, align 4, !dbg !1200
  call void @emit_byte(ptr noundef %57, i32 noundef %60), !dbg !1201
  store i32 0, ptr %5, align 4, !dbg !1202
  %61 = load ptr, ptr %3, align 8, !dbg !1204
  %62 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %61, i32 0, i32 14, !dbg !1205
  %63 = load ptr, ptr %62, align 8, !dbg !1205
  store ptr %63, ptr %6, align 8, !dbg !1206
  br label %64, !dbg !1207

64:                                               ; preds = %88, %44
  %65 = load i32, ptr %5, align 4, !dbg !1208
  %66 = load ptr, ptr %3, align 8, !dbg !1210
  %67 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %66, i32 0, i32 12, !dbg !1211
  %68 = load i32, ptr %67, align 4, !dbg !1211
  %69 = icmp slt i32 %65, %68, !dbg !1212
  br i1 %69, label %70, label %93, !dbg !1213

70:                                               ; preds = %64
  %71 = load ptr, ptr %3, align 8, !dbg !1214
  %72 = load ptr, ptr %6, align 8, !dbg !1216
  %73 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %72, i32 0, i32 0, !dbg !1217
  %74 = load i32, ptr %73, align 8, !dbg !1217
  call void @emit_byte(ptr noundef %71, i32 noundef %74), !dbg !1218
  %75 = load ptr, ptr %3, align 8, !dbg !1219
  %76 = load ptr, ptr %6, align 8, !dbg !1220
  %77 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %76, i32 0, i32 2, !dbg !1221
  %78 = load i32, ptr %77, align 8, !dbg !1221
  %79 = shl i32 %78, 4, !dbg !1222
  %80 = load ptr, ptr %6, align 8, !dbg !1223
  %81 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %80, i32 0, i32 3, !dbg !1224
  %82 = load i32, ptr %81, align 4, !dbg !1224
  %83 = add nsw i32 %79, %82, !dbg !1225
  call void @emit_byte(ptr noundef %75, i32 noundef %83), !dbg !1226
  %84 = load ptr, ptr %3, align 8, !dbg !1227
  %85 = load ptr, ptr %6, align 8, !dbg !1228
  %86 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %85, i32 0, i32 4, !dbg !1229
  %87 = load i32, ptr %86, align 8, !dbg !1229
  call void @emit_byte(ptr noundef %84, i32 noundef %87), !dbg !1230
  br label %88, !dbg !1231

88:                                               ; preds = %70
  %89 = load i32, ptr %5, align 4, !dbg !1232
  %90 = add nsw i32 %89, 1, !dbg !1232
  store i32 %90, ptr %5, align 4, !dbg !1232
  %91 = load ptr, ptr %6, align 8, !dbg !1233
  %92 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %91, i32 1, !dbg !1233
  store ptr %92, ptr %6, align 8, !dbg !1233
  br label %64, !dbg !1234, !llvm.loop !1235

93:                                               ; preds = %64
  ret void, !dbg !1237
}

; Function Attrs: noinline nounwind uwtable
define internal void @emit_dac(ptr noundef %0) #0 !dbg !1238 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !1239, !DIExpression(), !1240)
  ret void, !dbg !1241
}

; Function Attrs: noinline nounwind uwtable
define internal void @emit_dht(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 !dbg !1242 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
    #dbg_declare(ptr %4, !1245, !DIExpression(), !1246)
  store i32 %1, ptr %5, align 4
    #dbg_declare(ptr %5, !1247, !DIExpression(), !1248)
  store i32 %2, ptr %6, align 4
    #dbg_declare(ptr %6, !1249, !DIExpression(), !1250)
    #dbg_declare(ptr %7, !1251, !DIExpression(), !1252)
    #dbg_declare(ptr %8, !1253, !DIExpression(), !1254)
    #dbg_declare(ptr %9, !1255, !DIExpression(), !1256)
  %10 = load i32, ptr %6, align 4, !dbg !1257
  %11 = icmp ne i32 %10, 0, !dbg !1257
  br i1 %11, label %12, label %21, !dbg !1257

12:                                               ; preds = %3
  %13 = load ptr, ptr %4, align 8, !dbg !1259
  %14 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %13, i32 0, i32 17, !dbg !1261
  %15 = load i32, ptr %5, align 4, !dbg !1262
  %16 = sext i32 %15 to i64, !dbg !1259
  %17 = getelementptr inbounds [4 x ptr], ptr %14, i64 0, i64 %16, !dbg !1259
  %18 = load ptr, ptr %17, align 8, !dbg !1259
  store ptr %18, ptr %7, align 8, !dbg !1263
  %19 = load i32, ptr %5, align 4, !dbg !1264
  %20 = add nsw i32 %19, 16, !dbg !1264
  store i32 %20, ptr %5, align 4, !dbg !1264
  br label %28, !dbg !1265

21:                                               ; preds = %3
  %22 = load ptr, ptr %4, align 8, !dbg !1266
  %23 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %22, i32 0, i32 16, !dbg !1268
  %24 = load i32, ptr %5, align 4, !dbg !1269
  %25 = sext i32 %24 to i64, !dbg !1266
  %26 = getelementptr inbounds [4 x ptr], ptr %23, i64 0, i64 %25, !dbg !1266
  %27 = load ptr, ptr %26, align 8, !dbg !1266
  store ptr %27, ptr %7, align 8, !dbg !1270
  br label %28

28:                                               ; preds = %21, %12
  %29 = load ptr, ptr %7, align 8, !dbg !1271
  %30 = icmp eq ptr %29, null, !dbg !1273
  br i1 %30, label %31, label %48, !dbg !1273

31:                                               ; preds = %28
  %32 = load ptr, ptr %4, align 8, !dbg !1274
  %33 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %32, i32 0, i32 0, !dbg !1274
  %34 = load ptr, ptr %33, align 8, !dbg !1274
  %35 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %34, i32 0, i32 5, !dbg !1274
  store i32 49, ptr %35, align 8, !dbg !1274
  %36 = load i32, ptr %5, align 4, !dbg !1274
  %37 = load ptr, ptr %4, align 8, !dbg !1274
  %38 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %37, i32 0, i32 0, !dbg !1274
  %39 = load ptr, ptr %38, align 8, !dbg !1274
  %40 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %39, i32 0, i32 6, !dbg !1274
  %41 = getelementptr inbounds [8 x i32], ptr %40, i64 0, i64 0, !dbg !1274
  store i32 %36, ptr %41, align 4, !dbg !1274
  %42 = load ptr, ptr %4, align 8, !dbg !1274
  %43 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %42, i32 0, i32 0, !dbg !1274
  %44 = load ptr, ptr %43, align 8, !dbg !1274
  %45 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %44, i32 0, i32 0, !dbg !1274
  %46 = load ptr, ptr %45, align 8, !dbg !1274
  %47 = load ptr, ptr %4, align 8, !dbg !1274
  call void %46(ptr noundef %47), !dbg !1274
  br label %48, !dbg !1274

48:                                               ; preds = %31, %28
  %49 = load ptr, ptr %7, align 8, !dbg !1275
  %50 = getelementptr inbounds nuw %struct.JHUFF_TBL, ptr %49, i32 0, i32 2, !dbg !1277
  %51 = load i32, ptr %50, align 4, !dbg !1277
  %52 = icmp ne i32 %51, 0, !dbg !1275
  br i1 %52, label %114, label %53, !dbg !1278

53:                                               ; preds = %48
  %54 = load ptr, ptr %4, align 8, !dbg !1279
  call void @emit_marker(ptr noundef %54, i32 noundef 196), !dbg !1281
  store i32 0, ptr %8, align 4, !dbg !1282
  store i32 1, ptr %9, align 4, !dbg !1283
  br label %55, !dbg !1285

55:                                               ; preds = %68, %53
  %56 = load i32, ptr %9, align 4, !dbg !1286
  %57 = icmp sle i32 %56, 16, !dbg !1288
  br i1 %57, label %58, label %71, !dbg !1289

58:                                               ; preds = %55
  %59 = load ptr, ptr %7, align 8, !dbg !1290
  %60 = getelementptr inbounds nuw %struct.JHUFF_TBL, ptr %59, i32 0, i32 0, !dbg !1291
  %61 = load i32, ptr %9, align 4, !dbg !1292
  %62 = sext i32 %61 to i64, !dbg !1290
  %63 = getelementptr inbounds [17 x i8], ptr %60, i64 0, i64 %62, !dbg !1290
  %64 = load i8, ptr %63, align 1, !dbg !1290
  %65 = zext i8 %64 to i32, !dbg !1290
  %66 = load i32, ptr %8, align 4, !dbg !1293
  %67 = add nsw i32 %66, %65, !dbg !1293
  store i32 %67, ptr %8, align 4, !dbg !1293
  br label %68, !dbg !1294

68:                                               ; preds = %58
  %69 = load i32, ptr %9, align 4, !dbg !1295
  %70 = add nsw i32 %69, 1, !dbg !1295
  store i32 %70, ptr %9, align 4, !dbg !1295
  br label %55, !dbg !1296, !llvm.loop !1297

71:                                               ; preds = %55
  %72 = load ptr, ptr %4, align 8, !dbg !1299
  %73 = load i32, ptr %8, align 4, !dbg !1300
  %74 = add nsw i32 %73, 2, !dbg !1301
  %75 = add nsw i32 %74, 1, !dbg !1302
  %76 = add nsw i32 %75, 16, !dbg !1303
  call void @emit_2bytes(ptr noundef %72, i32 noundef %76), !dbg !1304
  %77 = load ptr, ptr %4, align 8, !dbg !1305
  %78 = load i32, ptr %5, align 4, !dbg !1306
  call void @emit_byte(ptr noundef %77, i32 noundef %78), !dbg !1307
  store i32 1, ptr %9, align 4, !dbg !1308
  br label %79, !dbg !1310

79:                                               ; preds = %91, %71
  %80 = load i32, ptr %9, align 4, !dbg !1311
  %81 = icmp sle i32 %80, 16, !dbg !1313
  br i1 %81, label %82, label %94, !dbg !1314

82:                                               ; preds = %79
  %83 = load ptr, ptr %4, align 8, !dbg !1315
  %84 = load ptr, ptr %7, align 8, !dbg !1316
  %85 = getelementptr inbounds nuw %struct.JHUFF_TBL, ptr %84, i32 0, i32 0, !dbg !1317
  %86 = load i32, ptr %9, align 4, !dbg !1318
  %87 = sext i32 %86 to i64, !dbg !1316
  %88 = getelementptr inbounds [17 x i8], ptr %85, i64 0, i64 %87, !dbg !1316
  %89 = load i8, ptr %88, align 1, !dbg !1316
  %90 = zext i8 %89 to i32, !dbg !1316
  call void @emit_byte(ptr noundef %83, i32 noundef %90), !dbg !1319
  br label %91, !dbg !1319

91:                                               ; preds = %82
  %92 = load i32, ptr %9, align 4, !dbg !1320
  %93 = add nsw i32 %92, 1, !dbg !1320
  store i32 %93, ptr %9, align 4, !dbg !1320
  br label %79, !dbg !1321, !llvm.loop !1322

94:                                               ; preds = %79
  store i32 0, ptr %9, align 4, !dbg !1324
  br label %95, !dbg !1326

95:                                               ; preds = %108, %94
  %96 = load i32, ptr %9, align 4, !dbg !1327
  %97 = load i32, ptr %8, align 4, !dbg !1329
  %98 = icmp slt i32 %96, %97, !dbg !1330
  br i1 %98, label %99, label %111, !dbg !1331

99:                                               ; preds = %95
  %100 = load ptr, ptr %4, align 8, !dbg !1332
  %101 = load ptr, ptr %7, align 8, !dbg !1333
  %102 = getelementptr inbounds nuw %struct.JHUFF_TBL, ptr %101, i32 0, i32 1, !dbg !1334
  %103 = load i32, ptr %9, align 4, !dbg !1335
  %104 = sext i32 %103 to i64, !dbg !1333
  %105 = getelementptr inbounds [256 x i8], ptr %102, i64 0, i64 %104, !dbg !1333
  %106 = load i8, ptr %105, align 1, !dbg !1333
  %107 = zext i8 %106 to i32, !dbg !1333
  call void @emit_byte(ptr noundef %100, i32 noundef %107), !dbg !1336
  br label %108, !dbg !1336

108:                                              ; preds = %99
  %109 = load i32, ptr %9, align 4, !dbg !1337
  %110 = add nsw i32 %109, 1, !dbg !1337
  store i32 %110, ptr %9, align 4, !dbg !1337
  br label %95, !dbg !1338, !llvm.loop !1339

111:                                              ; preds = %95
  %112 = load ptr, ptr %7, align 8, !dbg !1341
  %113 = getelementptr inbounds nuw %struct.JHUFF_TBL, ptr %112, i32 0, i32 2, !dbg !1342
  store i32 1, ptr %113, align 4, !dbg !1343
  br label %114, !dbg !1344

114:                                              ; preds = %111, %48
  ret void, !dbg !1345
}

; Function Attrs: noinline nounwind uwtable
define internal void @emit_dri(ptr noundef %0) #0 !dbg !1346 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !1347, !DIExpression(), !1348)
  %3 = load ptr, ptr %2, align 8, !dbg !1349
  call void @emit_marker(ptr noundef %3, i32 noundef 221), !dbg !1350
  %4 = load ptr, ptr %2, align 8, !dbg !1351
  call void @emit_2bytes(ptr noundef %4, i32 noundef 4), !dbg !1352
  %5 = load ptr, ptr %2, align 8, !dbg !1353
  %6 = load ptr, ptr %2, align 8, !dbg !1354
  %7 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %6, i32 0, i32 29, !dbg !1355
  %8 = load i32, ptr %7, align 8, !dbg !1355
  call void @emit_2bytes(ptr noundef %5, i32 noundef %8), !dbg !1356
  ret void, !dbg !1357
}

; Function Attrs: noinline nounwind uwtable
define internal void @emit_sos(ptr noundef %0) #0 !dbg !1358 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !1359, !DIExpression(), !1360)
    #dbg_declare(ptr %3, !1361, !DIExpression(), !1362)
    #dbg_declare(ptr %4, !1363, !DIExpression(), !1364)
    #dbg_declare(ptr %5, !1365, !DIExpression(), !1366)
    #dbg_declare(ptr %6, !1367, !DIExpression(), !1368)
  %7 = load ptr, ptr %2, align 8, !dbg !1369
  call void @emit_marker(ptr noundef %7, i32 noundef 218), !dbg !1370
  %8 = load ptr, ptr %2, align 8, !dbg !1371
  %9 = load ptr, ptr %2, align 8, !dbg !1372
  %10 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %9, i32 0, i32 41, !dbg !1373
  %11 = load i32, ptr %10, align 4, !dbg !1373
  %12 = mul nsw i32 2, %11, !dbg !1374
  %13 = add nsw i32 %12, 2, !dbg !1375
  %14 = add nsw i32 %13, 1, !dbg !1376
  %15 = add nsw i32 %14, 3, !dbg !1377
  call void @emit_2bytes(ptr noundef %8, i32 noundef %15), !dbg !1378
  %16 = load ptr, ptr %2, align 8, !dbg !1379
  %17 = load ptr, ptr %2, align 8, !dbg !1380
  %18 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %17, i32 0, i32 41, !dbg !1381
  %19 = load i32, ptr %18, align 4, !dbg !1381
  call void @emit_byte(ptr noundef %16, i32 noundef %19), !dbg !1382
  store i32 0, ptr %3, align 4, !dbg !1383
  br label %20, !dbg !1385

20:                                               ; preds = %72, %1
  %21 = load i32, ptr %3, align 4, !dbg !1386
  %22 = load ptr, ptr %2, align 8, !dbg !1388
  %23 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %22, i32 0, i32 41, !dbg !1389
  %24 = load i32, ptr %23, align 4, !dbg !1389
  %25 = icmp slt i32 %21, %24, !dbg !1390
  br i1 %25, label %26, label %75, !dbg !1391

26:                                               ; preds = %20
  %27 = load ptr, ptr %2, align 8, !dbg !1392
  %28 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %27, i32 0, i32 42, !dbg !1394
  %29 = load i32, ptr %3, align 4, !dbg !1395
  %30 = sext i32 %29 to i64, !dbg !1392
  %31 = getelementptr inbounds [4 x ptr], ptr %28, i64 0, i64 %30, !dbg !1392
  %32 = load ptr, ptr %31, align 8, !dbg !1392
  store ptr %32, ptr %6, align 8, !dbg !1396
  %33 = load ptr, ptr %2, align 8, !dbg !1397
  %34 = load ptr, ptr %6, align 8, !dbg !1398
  %35 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %34, i32 0, i32 0, !dbg !1399
  %36 = load i32, ptr %35, align 8, !dbg !1399
  call void @emit_byte(ptr noundef %33, i32 noundef %36), !dbg !1400
  %37 = load ptr, ptr %6, align 8, !dbg !1401
  %38 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %37, i32 0, i32 5, !dbg !1402
  %39 = load i32, ptr %38, align 4, !dbg !1402
  store i32 %39, ptr %4, align 4, !dbg !1403
  %40 = load ptr, ptr %6, align 8, !dbg !1404
  %41 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %40, i32 0, i32 6, !dbg !1405
  %42 = load i32, ptr %41, align 8, !dbg !1405
  store i32 %42, ptr %5, align 4, !dbg !1406
  %43 = load ptr, ptr %2, align 8, !dbg !1407
  %44 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %43, i32 0, i32 37, !dbg !1409
  %45 = load i32, ptr %44, align 4, !dbg !1409
  %46 = icmp ne i32 %45, 0, !dbg !1407
  br i1 %46, label %47, label %66, !dbg !1407

47:                                               ; preds = %26
  %48 = load ptr, ptr %2, align 8, !dbg !1410
  %49 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %48, i32 0, i32 47, !dbg !1413
  %50 = load i32, ptr %49, align 4, !dbg !1413
  %51 = icmp eq i32 %50, 0, !dbg !1414
  br i1 %51, label %52, label %64, !dbg !1414

52:                                               ; preds = %47
  store i32 0, ptr %5, align 4, !dbg !1415
  %53 = load ptr, ptr %2, align 8, !dbg !1417
  %54 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %53, i32 0, i32 49, !dbg !1419
  %55 = load i32, ptr %54, align 4, !dbg !1419
  %56 = icmp ne i32 %55, 0, !dbg !1420
  br i1 %56, label %57, label %63, !dbg !1421

57:                                               ; preds = %52
  %58 = load ptr, ptr %2, align 8, !dbg !1422
  %59 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %58, i32 0, i32 24, !dbg !1423
  %60 = load i32, ptr %59, align 4, !dbg !1423
  %61 = icmp ne i32 %60, 0, !dbg !1422
  br i1 %61, label %63, label %62, !dbg !1421

62:                                               ; preds = %57
  store i32 0, ptr %4, align 4, !dbg !1424
  br label %63, !dbg !1425

63:                                               ; preds = %62, %57, %52
  br label %65, !dbg !1426

64:                                               ; preds = %47
  store i32 0, ptr %4, align 4, !dbg !1427
  br label %65

65:                                               ; preds = %64, %63
  br label %66, !dbg !1429

66:                                               ; preds = %65, %26
  %67 = load ptr, ptr %2, align 8, !dbg !1430
  %68 = load i32, ptr %4, align 4, !dbg !1431
  %69 = shl i32 %68, 4, !dbg !1432
  %70 = load i32, ptr %5, align 4, !dbg !1433
  %71 = add nsw i32 %69, %70, !dbg !1434
  call void @emit_byte(ptr noundef %67, i32 noundef %71), !dbg !1435
  br label %72, !dbg !1436

72:                                               ; preds = %66
  %73 = load i32, ptr %3, align 4, !dbg !1437
  %74 = add nsw i32 %73, 1, !dbg !1437
  store i32 %74, ptr %3, align 4, !dbg !1437
  br label %20, !dbg !1438, !llvm.loop !1439

75:                                               ; preds = %20
  %76 = load ptr, ptr %2, align 8, !dbg !1441
  %77 = load ptr, ptr %2, align 8, !dbg !1442
  %78 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %77, i32 0, i32 47, !dbg !1443
  %79 = load i32, ptr %78, align 4, !dbg !1443
  call void @emit_byte(ptr noundef %76, i32 noundef %79), !dbg !1444
  %80 = load ptr, ptr %2, align 8, !dbg !1445
  %81 = load ptr, ptr %2, align 8, !dbg !1446
  %82 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %81, i32 0, i32 48, !dbg !1447
  %83 = load i32, ptr %82, align 8, !dbg !1447
  call void @emit_byte(ptr noundef %80, i32 noundef %83), !dbg !1448
  %84 = load ptr, ptr %2, align 8, !dbg !1449
  %85 = load ptr, ptr %2, align 8, !dbg !1450
  %86 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %85, i32 0, i32 49, !dbg !1451
  %87 = load i32, ptr %86, align 4, !dbg !1451
  %88 = shl i32 %87, 4, !dbg !1452
  %89 = load ptr, ptr %2, align 8, !dbg !1453
  %90 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %89, i32 0, i32 50, !dbg !1454
  %91 = load i32, ptr %90, align 8, !dbg !1454
  %92 = add nsw i32 %88, %91, !dbg !1455
  call void @emit_byte(ptr noundef %84, i32 noundef %92), !dbg !1456
  ret void, !dbg !1457
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!576, !577, !578, !579, !580, !581, !582}
!llvm.ident = !{!583}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !204, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jcmarker.c", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "1f53f9dd42f101fd4e3d497a4ff0b4a6")
!2 = !{!3, !13, !18, !25, !80}
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
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !19, line: 16, baseType: !5, size: 32, elements: !20)
!19 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jpegint.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "87e9869e13f29b8e74a9dee50528c6c5")
!20 = !{!21, !22, !23, !24}
!21 = !DIEnumerator(name: "JBUF_PASS_THRU", value: 0)
!22 = !DIEnumerator(name: "JBUF_SAVE_SOURCE", value: 1)
!23 = !DIEnumerator(name: "JBUF_CRANK_DEST", value: 2)
!24 = !DIEnumerator(name: "JBUF_SAVE_AND_PASS", value: 3)
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1, line: 16, baseType: !5, size: 32, elements: !26)
!26 = !{!27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79}
!27 = !DIEnumerator(name: "M_SOF0", value: 192)
!28 = !DIEnumerator(name: "M_SOF1", value: 193)
!29 = !DIEnumerator(name: "M_SOF2", value: 194)
!30 = !DIEnumerator(name: "M_SOF3", value: 195)
!31 = !DIEnumerator(name: "M_SOF5", value: 197)
!32 = !DIEnumerator(name: "M_SOF6", value: 198)
!33 = !DIEnumerator(name: "M_SOF7", value: 199)
!34 = !DIEnumerator(name: "M_JPG", value: 200)
!35 = !DIEnumerator(name: "M_SOF9", value: 201)
!36 = !DIEnumerator(name: "M_SOF10", value: 202)
!37 = !DIEnumerator(name: "M_SOF11", value: 203)
!38 = !DIEnumerator(name: "M_SOF13", value: 205)
!39 = !DIEnumerator(name: "M_SOF14", value: 206)
!40 = !DIEnumerator(name: "M_SOF15", value: 207)
!41 = !DIEnumerator(name: "M_DHT", value: 196)
!42 = !DIEnumerator(name: "M_DAC", value: 204)
!43 = !DIEnumerator(name: "M_RST0", value: 208)
!44 = !DIEnumerator(name: "M_RST1", value: 209)
!45 = !DIEnumerator(name: "M_RST2", value: 210)
!46 = !DIEnumerator(name: "M_RST3", value: 211)
!47 = !DIEnumerator(name: "M_RST4", value: 212)
!48 = !DIEnumerator(name: "M_RST5", value: 213)
!49 = !DIEnumerator(name: "M_RST6", value: 214)
!50 = !DIEnumerator(name: "M_RST7", value: 215)
!51 = !DIEnumerator(name: "M_SOI", value: 216)
!52 = !DIEnumerator(name: "M_EOI", value: 217)
!53 = !DIEnumerator(name: "M_SOS", value: 218)
!54 = !DIEnumerator(name: "M_DQT", value: 219)
!55 = !DIEnumerator(name: "M_DNL", value: 220)
!56 = !DIEnumerator(name: "M_DRI", value: 221)
!57 = !DIEnumerator(name: "M_DHP", value: 222)
!58 = !DIEnumerator(name: "M_EXP", value: 223)
!59 = !DIEnumerator(name: "M_APP0", value: 224)
!60 = !DIEnumerator(name: "M_APP1", value: 225)
!61 = !DIEnumerator(name: "M_APP2", value: 226)
!62 = !DIEnumerator(name: "M_APP3", value: 227)
!63 = !DIEnumerator(name: "M_APP4", value: 228)
!64 = !DIEnumerator(name: "M_APP5", value: 229)
!65 = !DIEnumerator(name: "M_APP6", value: 230)
!66 = !DIEnumerator(name: "M_APP7", value: 231)
!67 = !DIEnumerator(name: "M_APP8", value: 232)
!68 = !DIEnumerator(name: "M_APP9", value: 233)
!69 = !DIEnumerator(name: "M_APP10", value: 234)
!70 = !DIEnumerator(name: "M_APP11", value: 235)
!71 = !DIEnumerator(name: "M_APP12", value: 236)
!72 = !DIEnumerator(name: "M_APP13", value: 237)
!73 = !DIEnumerator(name: "M_APP14", value: 238)
!74 = !DIEnumerator(name: "M_APP15", value: 239)
!75 = !DIEnumerator(name: "M_JPG0", value: 240)
!76 = !DIEnumerator(name: "M_JPG13", value: 253)
!77 = !DIEnumerator(name: "M_COM", value: 254)
!78 = !DIEnumerator(name: "M_TEM", value: 1)
!79 = !DIEnumerator(name: "M_ERROR", value: 256)
!80 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !81, line: 33, baseType: !5, size: 32, elements: !82)
!81 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jerror.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "a232f2460ff0049c960896e323d8710b")
!82 = !{!83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203}
!83 = !DIEnumerator(name: "JMSG_NOMESSAGE", value: 0)
!84 = !DIEnumerator(name: "JERR_ARITH_NOTIMPL", value: 1)
!85 = !DIEnumerator(name: "JERR_BAD_ALIGN_TYPE", value: 2)
!86 = !DIEnumerator(name: "JERR_BAD_ALLOC_CHUNK", value: 3)
!87 = !DIEnumerator(name: "JERR_BAD_BUFFER_MODE", value: 4)
!88 = !DIEnumerator(name: "JERR_BAD_COMPONENT_ID", value: 5)
!89 = !DIEnumerator(name: "JERR_BAD_DCTSIZE", value: 6)
!90 = !DIEnumerator(name: "JERR_BAD_IN_COLORSPACE", value: 7)
!91 = !DIEnumerator(name: "JERR_BAD_J_COLORSPACE", value: 8)
!92 = !DIEnumerator(name: "JERR_BAD_LENGTH", value: 9)
!93 = !DIEnumerator(name: "JERR_BAD_LIB_VERSION", value: 10)
!94 = !DIEnumerator(name: "JERR_BAD_MCU_SIZE", value: 11)
!95 = !DIEnumerator(name: "JERR_BAD_POOL_ID", value: 12)
!96 = !DIEnumerator(name: "JERR_BAD_PRECISION", value: 13)
!97 = !DIEnumerator(name: "JERR_BAD_PROGRESSION", value: 14)
!98 = !DIEnumerator(name: "JERR_BAD_PROG_SCRIPT", value: 15)
!99 = !DIEnumerator(name: "JERR_BAD_SAMPLING", value: 16)
!100 = !DIEnumerator(name: "JERR_BAD_SCAN_SCRIPT", value: 17)
!101 = !DIEnumerator(name: "JERR_BAD_STATE", value: 18)
!102 = !DIEnumerator(name: "JERR_BAD_STRUCT_SIZE", value: 19)
!103 = !DIEnumerator(name: "JERR_BAD_VIRTUAL_ACCESS", value: 20)
!104 = !DIEnumerator(name: "JERR_BUFFER_SIZE", value: 21)
!105 = !DIEnumerator(name: "JERR_CANT_SUSPEND", value: 22)
!106 = !DIEnumerator(name: "JERR_CCIR601_NOTIMPL", value: 23)
!107 = !DIEnumerator(name: "JERR_COMPONENT_COUNT", value: 24)
!108 = !DIEnumerator(name: "JERR_CONVERSION_NOTIMPL", value: 25)
!109 = !DIEnumerator(name: "JERR_DAC_INDEX", value: 26)
!110 = !DIEnumerator(name: "JERR_DAC_VALUE", value: 27)
!111 = !DIEnumerator(name: "JERR_DHT_COUNTS", value: 28)
!112 = !DIEnumerator(name: "JERR_DHT_INDEX", value: 29)
!113 = !DIEnumerator(name: "JERR_DQT_INDEX", value: 30)
!114 = !DIEnumerator(name: "JERR_EMPTY_IMAGE", value: 31)
!115 = !DIEnumerator(name: "JERR_EMS_READ", value: 32)
!116 = !DIEnumerator(name: "JERR_EMS_WRITE", value: 33)
!117 = !DIEnumerator(name: "JERR_EOI_EXPECTED", value: 34)
!118 = !DIEnumerator(name: "JERR_FILE_READ", value: 35)
!119 = !DIEnumerator(name: "JERR_FILE_WRITE", value: 36)
!120 = !DIEnumerator(name: "JERR_FRACT_SAMPLE_NOTIMPL", value: 37)
!121 = !DIEnumerator(name: "JERR_HUFF_CLEN_OVERFLOW", value: 38)
!122 = !DIEnumerator(name: "JERR_HUFF_MISSING_CODE", value: 39)
!123 = !DIEnumerator(name: "JERR_IMAGE_TOO_BIG", value: 40)
!124 = !DIEnumerator(name: "JERR_INPUT_EMPTY", value: 41)
!125 = !DIEnumerator(name: "JERR_INPUT_EOF", value: 42)
!126 = !DIEnumerator(name: "JERR_MISMATCHED_QUANT_TABLE", value: 43)
!127 = !DIEnumerator(name: "JERR_MISSING_DATA", value: 44)
!128 = !DIEnumerator(name: "JERR_MODE_CHANGE", value: 45)
!129 = !DIEnumerator(name: "JERR_NOTIMPL", value: 46)
!130 = !DIEnumerator(name: "JERR_NOT_COMPILED", value: 47)
!131 = !DIEnumerator(name: "JERR_NO_BACKING_STORE", value: 48)
!132 = !DIEnumerator(name: "JERR_NO_HUFF_TABLE", value: 49)
!133 = !DIEnumerator(name: "JERR_NO_IMAGE", value: 50)
!134 = !DIEnumerator(name: "JERR_NO_QUANT_TABLE", value: 51)
!135 = !DIEnumerator(name: "JERR_NO_SOI", value: 52)
!136 = !DIEnumerator(name: "JERR_OUT_OF_MEMORY", value: 53)
!137 = !DIEnumerator(name: "JERR_QUANT_COMPONENTS", value: 54)
!138 = !DIEnumerator(name: "JERR_QUANT_FEW_COLORS", value: 55)
!139 = !DIEnumerator(name: "JERR_QUANT_MANY_COLORS", value: 56)
!140 = !DIEnumerator(name: "JERR_SOF_DUPLICATE", value: 57)
!141 = !DIEnumerator(name: "JERR_SOF_NO_SOS", value: 58)
!142 = !DIEnumerator(name: "JERR_SOF_UNSUPPORTED", value: 59)
!143 = !DIEnumerator(name: "JERR_SOI_DUPLICATE", value: 60)
!144 = !DIEnumerator(name: "JERR_SOS_NO_SOF", value: 61)
!145 = !DIEnumerator(name: "JERR_TFILE_CREATE", value: 62)
!146 = !DIEnumerator(name: "JERR_TFILE_READ", value: 63)
!147 = !DIEnumerator(name: "JERR_TFILE_SEEK", value: 64)
!148 = !DIEnumerator(name: "JERR_TFILE_WRITE", value: 65)
!149 = !DIEnumerator(name: "JERR_TOO_LITTLE_DATA", value: 66)
!150 = !DIEnumerator(name: "JERR_UNKNOWN_MARKER", value: 67)
!151 = !DIEnumerator(name: "JERR_VIRTUAL_BUG", value: 68)
!152 = !DIEnumerator(name: "JERR_WIDTH_OVERFLOW", value: 69)
!153 = !DIEnumerator(name: "JERR_XMS_READ", value: 70)
!154 = !DIEnumerator(name: "JERR_XMS_WRITE", value: 71)
!155 = !DIEnumerator(name: "JMSG_COPYRIGHT", value: 72)
!156 = !DIEnumerator(name: "JMSG_VERSION", value: 73)
!157 = !DIEnumerator(name: "JTRC_16BIT_TABLES", value: 74)
!158 = !DIEnumerator(name: "JTRC_ADOBE", value: 75)
!159 = !DIEnumerator(name: "JTRC_APP0", value: 76)
!160 = !DIEnumerator(name: "JTRC_APP14", value: 77)
!161 = !DIEnumerator(name: "JTRC_DAC", value: 78)
!162 = !DIEnumerator(name: "JTRC_DHT", value: 79)
!163 = !DIEnumerator(name: "JTRC_DQT", value: 80)
!164 = !DIEnumerator(name: "JTRC_DRI", value: 81)
!165 = !DIEnumerator(name: "JTRC_EMS_CLOSE", value: 82)
!166 = !DIEnumerator(name: "JTRC_EMS_OPEN", value: 83)
!167 = !DIEnumerator(name: "JTRC_EOI", value: 84)
!168 = !DIEnumerator(name: "JTRC_HUFFBITS", value: 85)
!169 = !DIEnumerator(name: "JTRC_JFIF", value: 86)
!170 = !DIEnumerator(name: "JTRC_JFIF_BADTHUMBNAILSIZE", value: 87)
!171 = !DIEnumerator(name: "JTRC_JFIF_MINOR", value: 88)
!172 = !DIEnumerator(name: "JTRC_JFIF_THUMBNAIL", value: 89)
!173 = !DIEnumerator(name: "JTRC_MISC_MARKER", value: 90)
!174 = !DIEnumerator(name: "JTRC_PARMLESS_MARKER", value: 91)
!175 = !DIEnumerator(name: "JTRC_QUANTVALS", value: 92)
!176 = !DIEnumerator(name: "JTRC_QUANT_3_NCOLORS", value: 93)
!177 = !DIEnumerator(name: "JTRC_QUANT_NCOLORS", value: 94)
!178 = !DIEnumerator(name: "JTRC_QUANT_SELECTED", value: 95)
!179 = !DIEnumerator(name: "JTRC_RECOVERY_ACTION", value: 96)
!180 = !DIEnumerator(name: "JTRC_RST", value: 97)
!181 = !DIEnumerator(name: "JTRC_SMOOTH_NOTIMPL", value: 98)
!182 = !DIEnumerator(name: "JTRC_SOF", value: 99)
!183 = !DIEnumerator(name: "JTRC_SOF_COMPONENT", value: 100)
!184 = !DIEnumerator(name: "JTRC_SOI", value: 101)
!185 = !DIEnumerator(name: "JTRC_SOS", value: 102)
!186 = !DIEnumerator(name: "JTRC_SOS_COMPONENT", value: 103)
!187 = !DIEnumerator(name: "JTRC_SOS_PARAMS", value: 104)
!188 = !DIEnumerator(name: "JTRC_TFILE_CLOSE", value: 105)
!189 = !DIEnumerator(name: "JTRC_TFILE_OPEN", value: 106)
!190 = !DIEnumerator(name: "JTRC_UNKNOWN_IDS", value: 107)
!191 = !DIEnumerator(name: "JTRC_XMS_CLOSE", value: 108)
!192 = !DIEnumerator(name: "JTRC_XMS_OPEN", value: 109)
!193 = !DIEnumerator(name: "JWRN_ADOBE_XFORM", value: 110)
!194 = !DIEnumerator(name: "JWRN_BOGUS_PROGRESSION", value: 111)
!195 = !DIEnumerator(name: "JWRN_EXTRANEOUS_DATA", value: 112)
!196 = !DIEnumerator(name: "JWRN_HIT_MARKER", value: 113)
!197 = !DIEnumerator(name: "JWRN_HUFF_BAD_CODE", value: 114)
!198 = !DIEnumerator(name: "JWRN_JFIF_MAJOR", value: 115)
!199 = !DIEnumerator(name: "JWRN_JPEG_EOF", value: 116)
!200 = !DIEnumerator(name: "JWRN_MUST_RESYNC", value: 117)
!201 = !DIEnumerator(name: "JWRN_NOT_SEQUENTIAL", value: 118)
!202 = !DIEnumerator(name: "JWRN_TOO_MUCH_DATA", value: 119)
!203 = !DIEnumerator(name: "JMSG_LASTMSGCODE", value: 120)
!204 = !{!205, !224, !239, !5, !575, !238, !353, !237, !299}
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_marker_writer", file: !19, line: 120, size: 384, elements: !207)
!207 = !{!208, !570, !571, !572, !573, !574}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "write_any_marker", scope: !206, file: !19, line: 123, baseType: !209, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = !DISubroutineType(types: !211)
!211 = !{null, !212, !238, !568, !5}
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "j_compress_ptr", file: !4, line: 249, baseType: !213)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_compress_struct", file: !4, line: 255, size: 3968, elements: !215)
!215 = !{!216, !343, !344, !345, !346, !347, !364, !365, !366, !367, !369, !371, !372, !373, !374, !409, !413, !429, !430, !434, !435, !436, !437, !450, !451, !452, !453, !454, !455, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !472, !473, !474, !475, !479, !480, !481, !482, !483, !492, !506, !517, !526, !527, !536, !546, !555}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !214, file: !4, line: 256, baseType: !217, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_error_mgr", file: !4, line: 618, size: 1344, elements: !219)
!219 = !{!220, !311, !312, !313, !319, !320, !321, !332, !333, !334, !339, !340, !341, !342}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "error_exit", scope: !218, file: !4, line: 620, baseType: !221, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DISubroutineType(types: !223)
!223 = !{null, !224}
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "j_common_ptr", file: !4, line: 248, baseType: !225)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_common_struct", file: !4, line: 240, size: 256, elements: !227)
!227 = !{!228, !229, !300, !309, !310}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !226, file: !4, line: 241, baseType: !217, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !226, file: !4, line: 241, baseType: !230, size: 64, offset: 64)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_memory_mgr", file: !4, line: 731, size: 768, elements: !232)
!232 = !{!233, !242, !243, !255, !269, !277, !284, !285, !289, !293, !297, !298}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_small", scope: !231, file: !4, line: 733, baseType: !234, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = !DISubroutineType(types: !236)
!236 = !{!237, !224, !238, !239}
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!238 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !240, line: 18, baseType: !241)
!240 = !DIFile(filename: "/usr/local/lib/clang/20/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!241 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_large", scope: !231, file: !4, line: 735, baseType: !234, size: 64, offset: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_sarray", scope: !231, file: !4, line: 737, baseType: !244, size: 64, offset: 128)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = !DISubroutineType(types: !246)
!246 = !{!247, !224, !238, !254, !254}
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPARRAY", file: !4, line: 67, baseType: !248)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPROW", file: !4, line: 66, baseType: !250)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPLE", file: !252, line: 59, baseType: !253)
!252 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jmorecfg.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "56a0eda58fafa6bdd5498f702a998c09")
!253 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "JDIMENSION", file: !252, line: 171, baseType: !5)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_barray", scope: !231, file: !4, line: 740, baseType: !256, size: 64, offset: 192)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = !DISubroutineType(types: !258)
!258 = !{!259, !224, !238, !254, !254}
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "JBLOCKARRAY", file: !4, line: 72, baseType: !260)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "JBLOCKROW", file: !4, line: 71, baseType: !262)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "JBLOCK", file: !4, line: 70, baseType: !264)
!264 = !DICompositeType(tag: DW_TAG_array_type, baseType: !265, size: 1024, elements: !267)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "JCOEF", file: !252, line: 99, baseType: !266)
!266 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!267 = !{!268}
!268 = !DISubrange(count: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "request_virt_sarray", scope: !231, file: !4, line: 743, baseType: !270, size: 64, offset: 256)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = !DISubroutineType(types: !272)
!272 = !{!273, !224, !238, !276, !254, !254, !254}
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "jvirt_sarray_ptr", file: !4, line: 727, baseType: !274)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = !DICompositeType(tag: DW_TAG_structure_type, name: "jvirt_sarray_control", file: !4, line: 727, flags: DIFlagFwdDecl)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "boolean", file: !252, line: 227, baseType: !238)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "request_virt_barray", scope: !231, file: !4, line: 749, baseType: !278, size: 64, offset: 320)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = !DISubroutineType(types: !280)
!280 = !{!281, !224, !238, !276, !254, !254, !254}
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "jvirt_barray_ptr", file: !4, line: 728, baseType: !282)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DICompositeType(tag: DW_TAG_structure_type, name: "jvirt_barray_control", file: !4, line: 728, flags: DIFlagFwdDecl)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "realize_virt_arrays", scope: !231, file: !4, line: 755, baseType: !221, size: 64, offset: 384)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "access_virt_sarray", scope: !231, file: !4, line: 756, baseType: !286, size: 64, offset: 448)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = !DISubroutineType(types: !288)
!288 = !{!247, !224, !273, !254, !254, !276}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "access_virt_barray", scope: !231, file: !4, line: 761, baseType: !290, size: 64, offset: 512)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = !DISubroutineType(types: !292)
!292 = !{!259, !224, !281, !254, !254, !276}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "free_pool", scope: !231, file: !4, line: 766, baseType: !294, size: 64, offset: 576)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = !DISubroutineType(types: !296)
!296 = !{null, !224, !238}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "self_destruct", scope: !231, file: !4, line: 767, baseType: !221, size: 64, offset: 640)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "max_memory_to_use", scope: !231, file: !4, line: 774, baseType: !299, size: 64, offset: 704)
!299 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "progress", scope: !226, file: !4, line: 241, baseType: !301, size: 64, offset: 128)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_progress_mgr", file: !4, line: 676, size: 256, elements: !303)
!303 = !{!304, !305, !306, !307, !308}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "progress_monitor", scope: !302, file: !4, line: 677, baseType: !221, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "pass_counter", scope: !302, file: !4, line: 679, baseType: !299, size: 64, offset: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "pass_limit", scope: !302, file: !4, line: 680, baseType: !299, size: 64, offset: 128)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "completed_passes", scope: !302, file: !4, line: 681, baseType: !238, size: 32, offset: 192)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "total_passes", scope: !302, file: !4, line: 682, baseType: !238, size: 32, offset: 224)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "is_decompressor", scope: !226, file: !4, line: 241, baseType: !276, size: 32, offset: 192)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "global_state", scope: !226, file: !4, line: 241, baseType: !238, size: 32, offset: 224)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "emit_message", scope: !218, file: !4, line: 622, baseType: !294, size: 64, offset: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "output_message", scope: !218, file: !4, line: 624, baseType: !221, size: 64, offset: 128)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "format_message", scope: !218, file: !4, line: 626, baseType: !314, size: 64, offset: 192)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = !DISubroutineType(types: !316)
!316 = !{null, !224, !317}
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "reset_error_mgr", scope: !218, file: !4, line: 629, baseType: !221, size: 64, offset: 256)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "msg_code", scope: !218, file: !4, line: 634, baseType: !238, size: 32, offset: 320)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "msg_parm", scope: !218, file: !4, line: 639, baseType: !322, size: 640, offset: 352)
!322 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !218, file: !4, line: 636, size: 640, elements: !323)
!323 = !{!324, !328}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !322, file: !4, line: 637, baseType: !325, size: 256)
!325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !238, size: 256, elements: !326)
!326 = !{!327}
!327 = !DISubrange(count: 8)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !322, file: !4, line: 638, baseType: !329, size: 640)
!329 = !DICompositeType(tag: DW_TAG_array_type, baseType: !318, size: 640, elements: !330)
!330 = !{!331}
!331 = !DISubrange(count: 80)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "trace_level", scope: !218, file: !4, line: 643, baseType: !238, size: 32, offset: 992)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "num_warnings", scope: !218, file: !4, line: 651, baseType: !299, size: 64, offset: 1024)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "jpeg_message_table", scope: !218, file: !4, line: 663, baseType: !335, size: 64, offset: 1088)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !337)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !318)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "last_jpeg_message", scope: !218, file: !4, line: 664, baseType: !238, size: 32, offset: 1152)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "addon_message_table", scope: !218, file: !4, line: 668, baseType: !335, size: 64, offset: 1216)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "first_addon_message", scope: !218, file: !4, line: 669, baseType: !238, size: 32, offset: 1280)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "last_addon_message", scope: !218, file: !4, line: 670, baseType: !238, size: 32, offset: 1312)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !214, file: !4, line: 256, baseType: !230, size: 64, offset: 64)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "progress", scope: !214, file: !4, line: 256, baseType: !301, size: 64, offset: 128)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "is_decompressor", scope: !214, file: !4, line: 256, baseType: !276, size: 32, offset: 192)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "global_state", scope: !214, file: !4, line: 256, baseType: !238, size: 32, offset: 224)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !214, file: !4, line: 259, baseType: !348, size: 64, offset: 256)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_destination_mgr", file: !4, line: 688, size: 320, elements: !350)
!350 = !{!351, !354, !355, !359, !363}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "next_output_byte", scope: !349, file: !4, line: 689, baseType: !352, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "JOCTET", file: !252, line: 110, baseType: !253)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "free_in_buffer", scope: !349, file: !4, line: 690, baseType: !239, size: 64, offset: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "init_destination", scope: !349, file: !4, line: 692, baseType: !356, size: 64, offset: 128)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = !DISubroutineType(types: !358)
!358 = !{null, !212}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "empty_output_buffer", scope: !349, file: !4, line: 693, baseType: !360, size: 64, offset: 192)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = !DISubroutineType(types: !362)
!362 = !{!276, !212}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "term_destination", scope: !349, file: !4, line: 694, baseType: !356, size: 64, offset: 256)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "image_width", scope: !214, file: !4, line: 266, baseType: !254, size: 32, offset: 320)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "image_height", scope: !214, file: !4, line: 267, baseType: !254, size: 32, offset: 352)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "input_components", scope: !214, file: !4, line: 268, baseType: !238, size: 32, offset: 384)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "in_color_space", scope: !214, file: !4, line: 269, baseType: !368, size: 32, offset: 416)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_COLOR_SPACE", file: !4, line: 201, baseType: !3)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "input_gamma", scope: !214, file: !4, line: 271, baseType: !370, size: 64, offset: 448)
!370 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "data_precision", scope: !214, file: !4, line: 281, baseType: !238, size: 32, offset: 512)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "num_components", scope: !214, file: !4, line: 283, baseType: !238, size: 32, offset: 544)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "jpeg_color_space", scope: !214, file: !4, line: 284, baseType: !368, size: 32, offset: 576)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "comp_info", scope: !214, file: !4, line: 286, baseType: !375, size: 64, offset: 640)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "jpeg_component_info", file: !4, line: 179, baseType: !377)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 116, size: 768, elements: !378)
!378 = !{!379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !408}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "component_id", scope: !377, file: !4, line: 120, baseType: !238, size: 32)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "component_index", scope: !377, file: !4, line: 121, baseType: !238, size: 32, offset: 32)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "h_samp_factor", scope: !377, file: !4, line: 122, baseType: !238, size: 32, offset: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "v_samp_factor", scope: !377, file: !4, line: 123, baseType: !238, size: 32, offset: 96)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "quant_tbl_no", scope: !377, file: !4, line: 124, baseType: !238, size: 32, offset: 128)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "dc_tbl_no", scope: !377, file: !4, line: 129, baseType: !238, size: 32, offset: 160)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tbl_no", scope: !377, file: !4, line: 130, baseType: !238, size: 32, offset: 192)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "width_in_blocks", scope: !377, file: !4, line: 139, baseType: !254, size: 32, offset: 224)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "height_in_blocks", scope: !377, file: !4, line: 140, baseType: !254, size: 32, offset: 256)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "DCT_scaled_size", scope: !377, file: !4, line: 147, baseType: !238, size: 32, offset: 288)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "downsampled_width", scope: !377, file: !4, line: 154, baseType: !254, size: 32, offset: 320)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "downsampled_height", scope: !377, file: !4, line: 155, baseType: !254, size: 32, offset: 352)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "component_needed", scope: !377, file: !4, line: 160, baseType: !276, size: 32, offset: 384)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_width", scope: !377, file: !4, line: 164, baseType: !238, size: 32, offset: 416)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_height", scope: !377, file: !4, line: 165, baseType: !238, size: 32, offset: 448)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_blocks", scope: !377, file: !4, line: 166, baseType: !238, size: 32, offset: 480)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_sample_width", scope: !377, file: !4, line: 167, baseType: !238, size: 32, offset: 512)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "last_col_width", scope: !377, file: !4, line: 168, baseType: !238, size: 32, offset: 544)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "last_row_height", scope: !377, file: !4, line: 169, baseType: !238, size: 32, offset: 576)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "quant_table", scope: !377, file: !4, line: 175, baseType: !399, size: 64, offset: 640)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "JQUANT_TBL", file: !4, line: 95, baseType: !401)
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 83, size: 1056, elements: !402)
!402 = !{!403, !407}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "quantval", scope: !401, file: !4, line: 88, baseType: !404, size: 1024)
!404 = !DICompositeType(tag: DW_TAG_array_type, baseType: !405, size: 1024, elements: !267)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT16", file: !252, line: 147, baseType: !406)
!406 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "sent_table", scope: !401, file: !4, line: 94, baseType: !276, size: 32, offset: 1024)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "dct_table", scope: !377, file: !4, line: 178, baseType: !237, size: 64, offset: 704)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "quant_tbl_ptrs", scope: !214, file: !4, line: 289, baseType: !410, size: 256, offset: 704)
!410 = !DICompositeType(tag: DW_TAG_array_type, baseType: !399, size: 256, elements: !411)
!411 = !{!412}
!412 = !DISubrange(count: 4)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "dc_huff_tbl_ptrs", scope: !214, file: !4, line: 292, baseType: !414, size: 256, offset: 960)
!414 = !DICompositeType(tag: DW_TAG_array_type, baseType: !415, size: 256, elements: !411)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "JHUFF_TBL", file: !4, line: 111, baseType: !417)
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 100, size: 2240, elements: !418)
!418 = !{!419, !424, !428}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !417, file: !4, line: 102, baseType: !420, size: 136)
!420 = !DICompositeType(tag: DW_TAG_array_type, baseType: !421, size: 136, elements: !422)
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT8", file: !252, line: 135, baseType: !253)
!422 = !{!423}
!423 = !DISubrange(count: 17)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "huffval", scope: !417, file: !4, line: 104, baseType: !425, size: 2048, offset: 136)
!425 = !DICompositeType(tag: DW_TAG_array_type, baseType: !421, size: 2048, elements: !426)
!426 = !{!427}
!427 = !DISubrange(count: 256)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "sent_table", scope: !417, file: !4, line: 110, baseType: !276, size: 32, offset: 2208)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "ac_huff_tbl_ptrs", scope: !214, file: !4, line: 293, baseType: !414, size: 256, offset: 1216)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "arith_dc_L", scope: !214, file: !4, line: 296, baseType: !431, size: 128, offset: 1472)
!431 = !DICompositeType(tag: DW_TAG_array_type, baseType: !421, size: 128, elements: !432)
!432 = !{!433}
!433 = !DISubrange(count: 16)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "arith_dc_U", scope: !214, file: !4, line: 297, baseType: !431, size: 128, offset: 1600)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "arith_ac_K", scope: !214, file: !4, line: 298, baseType: !431, size: 128, offset: 1728)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "num_scans", scope: !214, file: !4, line: 300, baseType: !238, size: 32, offset: 1856)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "scan_info", scope: !214, file: !4, line: 301, baseType: !438, size: 64, offset: 1920)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !440)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "jpeg_scan_info", file: !4, line: 189, baseType: !441)
!441 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 184, size: 288, elements: !442)
!442 = !{!443, !444, !446, !447, !448, !449}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "comps_in_scan", scope: !441, file: !4, line: 185, baseType: !238, size: 32)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "component_index", scope: !441, file: !4, line: 186, baseType: !445, size: 128, offset: 32)
!445 = !DICompositeType(tag: DW_TAG_array_type, baseType: !238, size: 128, elements: !411)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "Ss", scope: !441, file: !4, line: 187, baseType: !238, size: 32, offset: 160)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "Se", scope: !441, file: !4, line: 187, baseType: !238, size: 32, offset: 192)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "Ah", scope: !441, file: !4, line: 188, baseType: !238, size: 32, offset: 224)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "Al", scope: !441, file: !4, line: 188, baseType: !238, size: 32, offset: 256)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "raw_data_in", scope: !214, file: !4, line: 307, baseType: !276, size: 32, offset: 1984)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "arith_code", scope: !214, file: !4, line: 308, baseType: !276, size: 32, offset: 2016)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_coding", scope: !214, file: !4, line: 309, baseType: !276, size: 32, offset: 2048)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "CCIR601_sampling", scope: !214, file: !4, line: 310, baseType: !276, size: 32, offset: 2080)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "smoothing_factor", scope: !214, file: !4, line: 311, baseType: !238, size: 32, offset: 2112)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "dct_method", scope: !214, file: !4, line: 312, baseType: !456, size: 32, offset: 2144)
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_DCT_METHOD", file: !4, line: 209, baseType: !13)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "restart_interval", scope: !214, file: !4, line: 319, baseType: !5, size: 32, offset: 2176)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "restart_in_rows", scope: !214, file: !4, line: 320, baseType: !238, size: 32, offset: 2208)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "write_JFIF_header", scope: !214, file: !4, line: 324, baseType: !276, size: 32, offset: 2240)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "density_unit", scope: !214, file: !4, line: 329, baseType: !421, size: 8, offset: 2272)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "X_density", scope: !214, file: !4, line: 330, baseType: !405, size: 16, offset: 2288)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "Y_density", scope: !214, file: !4, line: 331, baseType: !405, size: 16, offset: 2304)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "write_Adobe_marker", scope: !214, file: !4, line: 332, baseType: !276, size: 32, offset: 2336)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "next_scanline", scope: !214, file: !4, line: 339, baseType: !254, size: 32, offset: 2368)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "progressive_mode", scope: !214, file: !4, line: 348, baseType: !276, size: 32, offset: 2400)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "max_h_samp_factor", scope: !214, file: !4, line: 349, baseType: !238, size: 32, offset: 2432)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "max_v_samp_factor", scope: !214, file: !4, line: 350, baseType: !238, size: 32, offset: 2464)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "total_iMCU_rows", scope: !214, file: !4, line: 352, baseType: !254, size: 32, offset: 2496)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "comps_in_scan", scope: !214, file: !4, line: 363, baseType: !238, size: 32, offset: 2528)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "cur_comp_info", scope: !214, file: !4, line: 364, baseType: !471, size: 256, offset: 2560)
!471 = !DICompositeType(tag: DW_TAG_array_type, baseType: !375, size: 256, elements: !411)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "MCUs_per_row", scope: !214, file: !4, line: 367, baseType: !254, size: 32, offset: 2816)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_rows_in_scan", scope: !214, file: !4, line: 368, baseType: !254, size: 32, offset: 2848)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "blocks_in_MCU", scope: !214, file: !4, line: 370, baseType: !238, size: 32, offset: 2880)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_membership", scope: !214, file: !4, line: 371, baseType: !476, size: 320, offset: 2912)
!476 = !DICompositeType(tag: DW_TAG_array_type, baseType: !238, size: 320, elements: !477)
!477 = !{!478}
!478 = !DISubrange(count: 10)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "Ss", scope: !214, file: !4, line: 375, baseType: !238, size: 32, offset: 3232)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "Se", scope: !214, file: !4, line: 375, baseType: !238, size: 32, offset: 3264)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "Ah", scope: !214, file: !4, line: 375, baseType: !238, size: 32, offset: 3296)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "Al", scope: !214, file: !4, line: 375, baseType: !238, size: 32, offset: 3328)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !214, file: !4, line: 380, baseType: !484, size: 64, offset: 3392)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_comp_master", file: !19, line: 45, size: 256, elements: !486)
!486 = !{!487, !488, !489, !490, !491}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_for_pass", scope: !485, file: !19, line: 46, baseType: !356, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "pass_startup", scope: !485, file: !19, line: 47, baseType: !356, size: 64, offset: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "finish_pass", scope: !485, file: !19, line: 48, baseType: !356, size: 64, offset: 128)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "call_pass_startup", scope: !485, file: !19, line: 51, baseType: !276, size: 32, offset: 192)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "is_last_pass", scope: !485, file: !19, line: 52, baseType: !276, size: 32, offset: 224)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "main", scope: !214, file: !4, line: 381, baseType: !493, size: 64, offset: 3456)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_c_main_controller", file: !19, line: 56, size: 128, elements: !495)
!495 = !{!496, !501}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !494, file: !19, line: 57, baseType: !497, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = !DISubroutineType(types: !499)
!499 = !{null, !212, !500}
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_BUF_MODE", file: !19, line: 22, baseType: !18)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "process_data", scope: !494, file: !19, line: 58, baseType: !502, size: 64, offset: 64)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = !DISubroutineType(types: !504)
!504 = !{null, !212, !247, !505, !254}
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "prep", scope: !214, file: !4, line: 382, baseType: !507, size: 64, offset: 3520)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_c_prep_controller", file: !19, line: 64, size: 128, elements: !509)
!509 = !{!510, !511}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !508, file: !19, line: 65, baseType: !497, size: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "pre_process_data", scope: !508, file: !19, line: 66, baseType: !512, size: 64, offset: 64)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = !DISubroutineType(types: !514)
!514 = !{null, !212, !247, !505, !254, !515, !505, !254}
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPIMAGE", file: !4, line: 68, baseType: !516)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "coef", scope: !214, file: !4, line: 383, baseType: !518, size: 64, offset: 3584)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_c_coef_controller", file: !19, line: 76, size: 128, elements: !520)
!520 = !{!521, !522}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !519, file: !19, line: 77, baseType: !497, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "compress_data", scope: !519, file: !19, line: 78, baseType: !523, size: 64, offset: 64)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = !DISubroutineType(types: !525)
!525 = !{!276, !212, !515}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "marker", scope: !214, file: !4, line: 384, baseType: !205, size: 64, offset: 3648)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "cconvert", scope: !214, file: !4, line: 385, baseType: !528, size: 64, offset: 3712)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_color_converter", file: !19, line: 83, size: 128, elements: !530)
!530 = !{!531, !532}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !529, file: !19, line: 84, baseType: !356, size: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "color_convert", scope: !529, file: !19, line: 85, baseType: !533, size: 64, offset: 64)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = !DISubroutineType(types: !535)
!535 = !{null, !212, !247, !515, !254, !238}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "downsample", scope: !214, file: !4, line: 386, baseType: !537, size: 64, offset: 3776)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_downsampler", file: !19, line: 91, size: 192, elements: !539)
!539 = !{!540, !541, !545}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !538, file: !19, line: 92, baseType: !356, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "downsample", scope: !538, file: !19, line: 93, baseType: !542, size: 64, offset: 64)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = !DISubroutineType(types: !544)
!544 = !{null, !212, !515, !254, !515, !254}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "need_context_rows", scope: !538, file: !19, line: 98, baseType: !276, size: 32, offset: 128)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "fdct", scope: !214, file: !4, line: 387, baseType: !547, size: 64, offset: 3840)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_forward_dct", file: !19, line: 102, size: 128, elements: !549)
!549 = !{!550, !551}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !548, file: !19, line: 103, baseType: !356, size: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "forward_DCT", scope: !548, file: !19, line: 105, baseType: !552, size: 64, offset: 64)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!553 = !DISubroutineType(types: !554)
!554 = !{null, !212, !375, !247, !261, !254, !254, !254}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "entropy", scope: !214, file: !4, line: 388, baseType: !556, size: 64, offset: 3904)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_entropy_encoder", file: !19, line: 113, size: 192, elements: !558)
!558 = !{!559, !563, !567}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !557, file: !19, line: 114, baseType: !560, size: 64)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = !DISubroutineType(types: !562)
!562 = !{null, !212, !276}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "encode_mcu", scope: !557, file: !19, line: 115, baseType: !564, size: 64, offset: 64)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = !DISubroutineType(types: !566)
!566 = !{!276, !212, !260}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "finish_pass", scope: !557, file: !19, line: 116, baseType: !356, size: 64, offset: 128)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !353)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_header", scope: !206, file: !19, line: 125, baseType: !356, size: 64, offset: 64)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "write_frame_header", scope: !206, file: !19, line: 126, baseType: !356, size: 64, offset: 128)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "write_scan_header", scope: !206, file: !19, line: 127, baseType: !356, size: 64, offset: 192)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_trailer", scope: !206, file: !19, line: 128, baseType: !356, size: 64, offset: 256)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "write_tables_only", scope: !206, file: !19, line: 129, baseType: !356, size: 64, offset: 320)
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "JPEG_MARKER", file: !1, line: 81, baseType: !25)
!576 = !{i32 7, !"Dwarf Version", i32 5}
!577 = !{i32 2, !"Debug Info Version", i32 3}
!578 = !{i32 1, !"wchar_size", i32 4}
!579 = !{i32 8, !"PIC Level", i32 2}
!580 = !{i32 7, !"PIE Level", i32 2}
!581 = !{i32 7, !"uwtable", i32 2}
!582 = !{i32 7, !"frame-pointer", i32 2}
!583 = !{!"clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)"}
!584 = distinct !DISubprogram(name: "jinit_marker_writer", scope: !1, file: !1, line: 628, type: !357, scopeLine: 629, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !585)
!585 = !{}
!586 = !DILocalVariable(name: "cinfo", arg: 1, scope: !584, file: !1, line: 628, type: !212)
!587 = !DILocation(line: 628, column: 37, scope: !584)
!588 = !DILocation(line: 632, column: 7, scope: !584)
!589 = !DILocation(line: 632, column: 14, scope: !584)
!590 = !DILocation(line: 632, column: 19, scope: !584)
!591 = !DILocation(line: 632, column: 48, scope: !584)
!592 = !DILocation(line: 632, column: 5, scope: !584)
!593 = !DILocation(line: 631, column: 3, scope: !584)
!594 = !DILocation(line: 631, column: 10, scope: !584)
!595 = !DILocation(line: 631, column: 17, scope: !584)
!596 = !DILocation(line: 635, column: 3, scope: !584)
!597 = !DILocation(line: 635, column: 10, scope: !584)
!598 = !DILocation(line: 635, column: 18, scope: !584)
!599 = !DILocation(line: 635, column: 35, scope: !584)
!600 = !DILocation(line: 636, column: 3, scope: !584)
!601 = !DILocation(line: 636, column: 10, scope: !584)
!602 = !DILocation(line: 636, column: 18, scope: !584)
!603 = !DILocation(line: 636, column: 36, scope: !584)
!604 = !DILocation(line: 637, column: 3, scope: !584)
!605 = !DILocation(line: 637, column: 10, scope: !584)
!606 = !DILocation(line: 637, column: 18, scope: !584)
!607 = !DILocation(line: 637, column: 37, scope: !584)
!608 = !DILocation(line: 638, column: 3, scope: !584)
!609 = !DILocation(line: 638, column: 10, scope: !584)
!610 = !DILocation(line: 638, column: 18, scope: !584)
!611 = !DILocation(line: 638, column: 36, scope: !584)
!612 = !DILocation(line: 639, column: 3, scope: !584)
!613 = !DILocation(line: 639, column: 10, scope: !584)
!614 = !DILocation(line: 639, column: 18, scope: !584)
!615 = !DILocation(line: 639, column: 37, scope: !584)
!616 = !DILocation(line: 640, column: 3, scope: !584)
!617 = !DILocation(line: 640, column: 10, scope: !584)
!618 = !DILocation(line: 640, column: 18, scope: !584)
!619 = !DILocation(line: 640, column: 36, scope: !584)
!620 = !DILocation(line: 641, column: 1, scope: !584)
!621 = distinct !DISubprogram(name: "write_any_marker", scope: !1, file: !1, line: 430, type: !210, scopeLine: 433, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !585)
!622 = !DILocalVariable(name: "cinfo", arg: 1, scope: !621, file: !1, line: 430, type: !212)
!623 = !DILocation(line: 430, column: 34, scope: !621)
!624 = !DILocalVariable(name: "marker", arg: 2, scope: !621, file: !1, line: 430, type: !238)
!625 = !DILocation(line: 430, column: 45, scope: !621)
!626 = !DILocalVariable(name: "dataptr", arg: 3, scope: !621, file: !1, line: 431, type: !568)
!627 = !DILocation(line: 431, column: 19, scope: !621)
!628 = !DILocalVariable(name: "datalen", arg: 4, scope: !621, file: !1, line: 431, type: !5)
!629 = !DILocation(line: 431, column: 41, scope: !621)
!630 = !DILocation(line: 434, column: 7, scope: !631)
!631 = distinct !DILexicalBlock(scope: !621, file: !1, line: 434, column: 7)
!632 = !DILocation(line: 434, column: 15, scope: !631)
!633 = !DILocation(line: 435, column: 17, scope: !634)
!634 = distinct !DILexicalBlock(scope: !631, file: !1, line: 434, column: 40)
!635 = !DILocation(line: 435, column: 38, scope: !634)
!636 = !DILocation(line: 435, column: 5, scope: !634)
!637 = !DILocation(line: 437, column: 17, scope: !634)
!638 = !DILocation(line: 437, column: 31, scope: !634)
!639 = !DILocation(line: 437, column: 39, scope: !634)
!640 = !DILocation(line: 437, column: 5, scope: !634)
!641 = !DILocation(line: 439, column: 5, scope: !634)
!642 = !DILocation(line: 439, column: 19, scope: !634)
!643 = !DILocation(line: 440, column: 17, scope: !644)
!644 = distinct !DILexicalBlock(scope: !634, file: !1, line: 439, column: 23)
!645 = !DILocation(line: 440, column: 25, scope: !644)
!646 = !DILocation(line: 440, column: 24, scope: !644)
!647 = !DILocation(line: 440, column: 7, scope: !644)
!648 = !DILocation(line: 441, column: 14, scope: !644)
!649 = distinct !{!649, !641, !650, !651}
!650 = !DILocation(line: 442, column: 5, scope: !634)
!651 = !{!"llvm.loop.mustprogress"}
!652 = !DILocation(line: 443, column: 3, scope: !634)
!653 = !DILocation(line: 444, column: 1, scope: !621)
!654 = distinct !DISubprogram(name: "write_file_header", scope: !1, file: !1, line: 459, type: !357, scopeLine: 460, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !585)
!655 = !DILocalVariable(name: "cinfo", arg: 1, scope: !654, file: !1, line: 459, type: !212)
!656 = !DILocation(line: 459, column: 35, scope: !654)
!657 = !DILocation(line: 461, column: 15, scope: !654)
!658 = !DILocation(line: 461, column: 3, scope: !654)
!659 = !DILocation(line: 463, column: 7, scope: !660)
!660 = distinct !DILexicalBlock(scope: !654, file: !1, line: 463, column: 7)
!661 = !DILocation(line: 463, column: 14, scope: !660)
!662 = !DILocation(line: 464, column: 20, scope: !660)
!663 = !DILocation(line: 464, column: 5, scope: !660)
!664 = !DILocation(line: 465, column: 7, scope: !665)
!665 = distinct !DILexicalBlock(scope: !654, file: !1, line: 465, column: 7)
!666 = !DILocation(line: 465, column: 14, scope: !665)
!667 = !DILocation(line: 466, column: 22, scope: !665)
!668 = !DILocation(line: 466, column: 5, scope: !665)
!669 = !DILocation(line: 467, column: 1, scope: !654)
!670 = distinct !DISubprogram(name: "write_frame_header", scope: !1, file: !1, line: 479, type: !357, scopeLine: 480, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !585)
!671 = !DILocalVariable(name: "cinfo", arg: 1, scope: !670, file: !1, line: 479, type: !212)
!672 = !DILocation(line: 479, column: 36, scope: !670)
!673 = !DILocalVariable(name: "ci", scope: !670, file: !1, line: 481, type: !238)
!674 = !DILocation(line: 481, column: 7, scope: !670)
!675 = !DILocalVariable(name: "prec", scope: !670, file: !1, line: 481, type: !238)
!676 = !DILocation(line: 481, column: 11, scope: !670)
!677 = !DILocalVariable(name: "is_baseline", scope: !670, file: !1, line: 482, type: !276)
!678 = !DILocation(line: 482, column: 11, scope: !670)
!679 = !DILocalVariable(name: "compptr", scope: !670, file: !1, line: 483, type: !375)
!680 = !DILocation(line: 483, column: 24, scope: !670)
!681 = !DILocation(line: 488, column: 8, scope: !670)
!682 = !DILocation(line: 489, column: 11, scope: !683)
!683 = distinct !DILexicalBlock(scope: !670, file: !1, line: 489, column: 3)
!684 = !DILocation(line: 489, column: 26, scope: !683)
!685 = !DILocation(line: 489, column: 33, scope: !683)
!686 = !DILocation(line: 489, column: 24, scope: !683)
!687 = !DILocation(line: 489, column: 8, scope: !683)
!688 = !DILocation(line: 489, column: 44, scope: !689)
!689 = distinct !DILexicalBlock(scope: !683, file: !1, line: 489, column: 3)
!690 = !DILocation(line: 489, column: 49, scope: !689)
!691 = !DILocation(line: 489, column: 56, scope: !689)
!692 = !DILocation(line: 489, column: 47, scope: !689)
!693 = !DILocation(line: 489, column: 3, scope: !683)
!694 = !DILocation(line: 491, column: 22, scope: !695)
!695 = distinct !DILexicalBlock(scope: !689, file: !1, line: 490, column: 25)
!696 = !DILocation(line: 491, column: 29, scope: !695)
!697 = !DILocation(line: 491, column: 38, scope: !695)
!698 = !DILocation(line: 491, column: 13, scope: !695)
!699 = !DILocation(line: 491, column: 10, scope: !695)
!700 = !DILocation(line: 492, column: 3, scope: !695)
!701 = !DILocation(line: 490, column: 10, scope: !689)
!702 = !DILocation(line: 490, column: 21, scope: !689)
!703 = !DILocation(line: 489, column: 3, scope: !689)
!704 = distinct !{!704, !693, !705, !651}
!705 = !DILocation(line: 492, column: 3, scope: !683)
!706 = !DILocation(line: 498, column: 7, scope: !707)
!707 = distinct !DILexicalBlock(scope: !670, file: !1, line: 498, column: 7)
!708 = !DILocation(line: 498, column: 14, scope: !707)
!709 = !DILocation(line: 498, column: 25, scope: !707)
!710 = !DILocation(line: 498, column: 28, scope: !707)
!711 = !DILocation(line: 498, column: 35, scope: !707)
!712 = !DILocation(line: 498, column: 52, scope: !707)
!713 = !DILocation(line: 499, column: 7, scope: !707)
!714 = !DILocation(line: 499, column: 14, scope: !707)
!715 = !DILocation(line: 499, column: 29, scope: !707)
!716 = !DILocation(line: 500, column: 17, scope: !717)
!717 = distinct !DILexicalBlock(scope: !707, file: !1, line: 499, column: 35)
!718 = !DILocation(line: 501, column: 3, scope: !717)
!719 = !DILocation(line: 502, column: 17, scope: !720)
!720 = distinct !DILexicalBlock(scope: !707, file: !1, line: 501, column: 10)
!721 = !DILocation(line: 503, column: 13, scope: !722)
!722 = distinct !DILexicalBlock(scope: !720, file: !1, line: 503, column: 5)
!723 = !DILocation(line: 503, column: 28, scope: !722)
!724 = !DILocation(line: 503, column: 35, scope: !722)
!725 = !DILocation(line: 503, column: 26, scope: !722)
!726 = !DILocation(line: 503, column: 10, scope: !722)
!727 = !DILocation(line: 503, column: 46, scope: !728)
!728 = distinct !DILexicalBlock(scope: !722, file: !1, line: 503, column: 5)
!729 = !DILocation(line: 503, column: 51, scope: !728)
!730 = !DILocation(line: 503, column: 58, scope: !728)
!731 = !DILocation(line: 503, column: 49, scope: !728)
!732 = !DILocation(line: 503, column: 5, scope: !722)
!733 = !DILocation(line: 505, column: 11, scope: !734)
!734 = distinct !DILexicalBlock(scope: !735, file: !1, line: 505, column: 11)
!735 = distinct !DILexicalBlock(scope: !728, file: !1, line: 504, column: 20)
!736 = !DILocation(line: 505, column: 20, scope: !734)
!737 = !DILocation(line: 505, column: 30, scope: !734)
!738 = !DILocation(line: 505, column: 34, scope: !734)
!739 = !DILocation(line: 505, column: 37, scope: !734)
!740 = !DILocation(line: 505, column: 46, scope: !734)
!741 = !DILocation(line: 505, column: 56, scope: !734)
!742 = !DILocation(line: 506, column: 14, scope: !734)
!743 = !DILocation(line: 506, column: 2, scope: !734)
!744 = !DILocation(line: 507, column: 5, scope: !735)
!745 = !DILocation(line: 504, column: 5, scope: !728)
!746 = !DILocation(line: 504, column: 16, scope: !728)
!747 = !DILocation(line: 503, column: 5, scope: !728)
!748 = distinct !{!748, !732, !749, !651}
!749 = !DILocation(line: 507, column: 5, scope: !722)
!750 = !DILocation(line: 508, column: 9, scope: !751)
!751 = distinct !DILexicalBlock(scope: !720, file: !1, line: 508, column: 9)
!752 = !DILocation(line: 508, column: 14, scope: !751)
!753 = !DILocation(line: 508, column: 17, scope: !751)
!754 = !DILocation(line: 509, column: 19, scope: !755)
!755 = distinct !DILexicalBlock(scope: !751, file: !1, line: 508, column: 30)
!756 = !DILocation(line: 511, column: 7, scope: !755)
!757 = !DILocation(line: 512, column: 5, scope: !755)
!758 = !DILocation(line: 516, column: 7, scope: !759)
!759 = distinct !DILexicalBlock(scope: !670, file: !1, line: 516, column: 7)
!760 = !DILocation(line: 516, column: 14, scope: !759)
!761 = !DILocation(line: 517, column: 14, scope: !762)
!762 = distinct !DILexicalBlock(scope: !759, file: !1, line: 516, column: 26)
!763 = !DILocation(line: 517, column: 5, scope: !762)
!764 = !DILocation(line: 518, column: 3, scope: !762)
!765 = !DILocation(line: 519, column: 9, scope: !766)
!766 = distinct !DILexicalBlock(scope: !767, file: !1, line: 519, column: 9)
!767 = distinct !DILexicalBlock(scope: !759, file: !1, line: 518, column: 10)
!768 = !DILocation(line: 519, column: 16, scope: !766)
!769 = !DILocation(line: 520, column: 16, scope: !766)
!770 = !DILocation(line: 520, column: 7, scope: !766)
!771 = !DILocation(line: 521, column: 14, scope: !772)
!772 = distinct !DILexicalBlock(scope: !766, file: !1, line: 521, column: 14)
!773 = !DILocation(line: 522, column: 16, scope: !772)
!774 = !DILocation(line: 522, column: 7, scope: !772)
!775 = !DILocation(line: 524, column: 16, scope: !772)
!776 = !DILocation(line: 524, column: 7, scope: !772)
!777 = !DILocation(line: 526, column: 1, scope: !670)
!778 = distinct !DISubprogram(name: "write_scan_header", scope: !1, file: !1, line: 536, type: !357, scopeLine: 537, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !585)
!779 = !DILocalVariable(name: "cinfo", arg: 1, scope: !778, file: !1, line: 536, type: !212)
!780 = !DILocation(line: 536, column: 35, scope: !778)
!781 = !DILocalVariable(name: "i", scope: !778, file: !1, line: 538, type: !238)
!782 = !DILocation(line: 538, column: 7, scope: !778)
!783 = !DILocalVariable(name: "compptr", scope: !778, file: !1, line: 539, type: !375)
!784 = !DILocation(line: 539, column: 24, scope: !778)
!785 = !DILocation(line: 541, column: 7, scope: !786)
!786 = distinct !DILexicalBlock(scope: !778, file: !1, line: 541, column: 7)
!787 = !DILocation(line: 541, column: 14, scope: !786)
!788 = !DILocation(line: 546, column: 14, scope: !789)
!789 = distinct !DILexicalBlock(scope: !786, file: !1, line: 541, column: 26)
!790 = !DILocation(line: 546, column: 5, scope: !789)
!791 = !DILocation(line: 547, column: 3, scope: !789)
!792 = !DILocation(line: 551, column: 12, scope: !793)
!793 = distinct !DILexicalBlock(scope: !794, file: !1, line: 551, column: 5)
!794 = distinct !DILexicalBlock(scope: !786, file: !1, line: 547, column: 10)
!795 = !DILocation(line: 551, column: 10, scope: !793)
!796 = !DILocation(line: 551, column: 17, scope: !797)
!797 = distinct !DILexicalBlock(scope: !793, file: !1, line: 551, column: 5)
!798 = !DILocation(line: 551, column: 21, scope: !797)
!799 = !DILocation(line: 551, column: 28, scope: !797)
!800 = !DILocation(line: 551, column: 19, scope: !797)
!801 = !DILocation(line: 551, column: 5, scope: !793)
!802 = !DILocation(line: 552, column: 17, scope: !803)
!803 = distinct !DILexicalBlock(scope: !797, file: !1, line: 551, column: 48)
!804 = !DILocation(line: 552, column: 24, scope: !803)
!805 = !DILocation(line: 552, column: 38, scope: !803)
!806 = !DILocation(line: 552, column: 15, scope: !803)
!807 = !DILocation(line: 553, column: 11, scope: !808)
!808 = distinct !DILexicalBlock(scope: !803, file: !1, line: 553, column: 11)
!809 = !DILocation(line: 553, column: 18, scope: !808)
!810 = !DILocation(line: 555, column: 6, scope: !811)
!811 = distinct !DILexicalBlock(scope: !812, file: !1, line: 555, column: 6)
!812 = distinct !DILexicalBlock(scope: !808, file: !1, line: 553, column: 36)
!813 = !DILocation(line: 555, column: 13, scope: !811)
!814 = !DILocation(line: 555, column: 16, scope: !811)
!815 = !DILocation(line: 556, column: 8, scope: !816)
!816 = distinct !DILexicalBlock(scope: !817, file: !1, line: 556, column: 8)
!817 = distinct !DILexicalBlock(scope: !811, file: !1, line: 555, column: 22)
!818 = !DILocation(line: 556, column: 15, scope: !816)
!819 = !DILocation(line: 556, column: 18, scope: !816)
!820 = !DILocation(line: 557, column: 15, scope: !816)
!821 = !DILocation(line: 557, column: 22, scope: !816)
!822 = !DILocation(line: 557, column: 31, scope: !816)
!823 = !DILocation(line: 557, column: 6, scope: !816)
!824 = !DILocation(line: 558, column: 2, scope: !817)
!825 = !DILocation(line: 559, column: 13, scope: !826)
!826 = distinct !DILexicalBlock(scope: !811, file: !1, line: 558, column: 9)
!827 = !DILocation(line: 559, column: 20, scope: !826)
!828 = !DILocation(line: 559, column: 29, scope: !826)
!829 = !DILocation(line: 559, column: 4, scope: !826)
!830 = !DILocation(line: 561, column: 7, scope: !812)
!831 = !DILocation(line: 563, column: 11, scope: !832)
!832 = distinct !DILexicalBlock(scope: !808, file: !1, line: 561, column: 14)
!833 = !DILocation(line: 563, column: 18, scope: !832)
!834 = !DILocation(line: 563, column: 27, scope: !832)
!835 = !DILocation(line: 563, column: 2, scope: !832)
!836 = !DILocation(line: 564, column: 11, scope: !832)
!837 = !DILocation(line: 564, column: 18, scope: !832)
!838 = !DILocation(line: 564, column: 27, scope: !832)
!839 = !DILocation(line: 564, column: 2, scope: !832)
!840 = !DILocation(line: 566, column: 5, scope: !803)
!841 = !DILocation(line: 551, column: 44, scope: !797)
!842 = !DILocation(line: 551, column: 5, scope: !797)
!843 = distinct !{!843, !801, !844, !651}
!844 = !DILocation(line: 566, column: 5, scope: !793)
!845 = !DILocation(line: 573, column: 7, scope: !846)
!846 = distinct !DILexicalBlock(scope: !778, file: !1, line: 573, column: 7)
!847 = !DILocation(line: 573, column: 14, scope: !846)
!848 = !DILocation(line: 574, column: 14, scope: !846)
!849 = !DILocation(line: 574, column: 5, scope: !846)
!850 = !DILocation(line: 576, column: 12, scope: !778)
!851 = !DILocation(line: 576, column: 3, scope: !778)
!852 = !DILocation(line: 577, column: 1, scope: !778)
!853 = distinct !DISubprogram(name: "write_file_trailer", scope: !1, file: !1, line: 585, type: !357, scopeLine: 586, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !585)
!854 = !DILocalVariable(name: "cinfo", arg: 1, scope: !853, file: !1, line: 585, type: !212)
!855 = !DILocation(line: 585, column: 36, scope: !853)
!856 = !DILocation(line: 587, column: 15, scope: !853)
!857 = !DILocation(line: 587, column: 3, scope: !853)
!858 = !DILocation(line: 588, column: 1, scope: !853)
!859 = distinct !DISubprogram(name: "write_tables_only", scope: !1, file: !1, line: 599, type: !357, scopeLine: 600, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !585)
!860 = !DILocalVariable(name: "cinfo", arg: 1, scope: !859, file: !1, line: 599, type: !212)
!861 = !DILocation(line: 599, column: 35, scope: !859)
!862 = !DILocalVariable(name: "i", scope: !859, file: !1, line: 601, type: !238)
!863 = !DILocation(line: 601, column: 7, scope: !859)
!864 = !DILocation(line: 603, column: 15, scope: !859)
!865 = !DILocation(line: 603, column: 3, scope: !859)
!866 = !DILocation(line: 605, column: 10, scope: !867)
!867 = distinct !DILexicalBlock(scope: !859, file: !1, line: 605, column: 3)
!868 = !DILocation(line: 605, column: 8, scope: !867)
!869 = !DILocation(line: 605, column: 15, scope: !870)
!870 = distinct !DILexicalBlock(scope: !867, file: !1, line: 605, column: 3)
!871 = !DILocation(line: 605, column: 17, scope: !870)
!872 = !DILocation(line: 605, column: 3, scope: !867)
!873 = !DILocation(line: 606, column: 9, scope: !874)
!874 = distinct !DILexicalBlock(scope: !875, file: !1, line: 606, column: 9)
!875 = distinct !DILexicalBlock(scope: !870, file: !1, line: 605, column: 40)
!876 = !DILocation(line: 606, column: 16, scope: !874)
!877 = !DILocation(line: 606, column: 31, scope: !874)
!878 = !DILocation(line: 606, column: 34, scope: !874)
!879 = !DILocation(line: 607, column: 23, scope: !874)
!880 = !DILocation(line: 607, column: 30, scope: !874)
!881 = !DILocation(line: 607, column: 14, scope: !874)
!882 = !DILocation(line: 607, column: 7, scope: !874)
!883 = !DILocation(line: 608, column: 3, scope: !875)
!884 = !DILocation(line: 605, column: 36, scope: !870)
!885 = !DILocation(line: 605, column: 3, scope: !870)
!886 = distinct !{!886, !872, !887, !651}
!887 = !DILocation(line: 608, column: 3, scope: !867)
!888 = !DILocation(line: 610, column: 9, scope: !889)
!889 = distinct !DILexicalBlock(scope: !859, file: !1, line: 610, column: 7)
!890 = !DILocation(line: 610, column: 16, scope: !889)
!891 = !DILocation(line: 610, column: 7, scope: !889)
!892 = !DILocation(line: 611, column: 12, scope: !893)
!893 = distinct !DILexicalBlock(scope: !894, file: !1, line: 611, column: 5)
!894 = distinct !DILexicalBlock(scope: !889, file: !1, line: 610, column: 28)
!895 = !DILocation(line: 611, column: 10, scope: !893)
!896 = !DILocation(line: 611, column: 17, scope: !897)
!897 = distinct !DILexicalBlock(scope: !893, file: !1, line: 611, column: 5)
!898 = !DILocation(line: 611, column: 19, scope: !897)
!899 = !DILocation(line: 611, column: 5, scope: !893)
!900 = !DILocation(line: 612, column: 11, scope: !901)
!901 = distinct !DILexicalBlock(scope: !902, file: !1, line: 612, column: 11)
!902 = distinct !DILexicalBlock(scope: !897, file: !1, line: 611, column: 41)
!903 = !DILocation(line: 612, column: 18, scope: !901)
!904 = !DILocation(line: 612, column: 35, scope: !901)
!905 = !DILocation(line: 612, column: 38, scope: !901)
!906 = !DILocation(line: 613, column: 11, scope: !901)
!907 = !DILocation(line: 613, column: 18, scope: !901)
!908 = !DILocation(line: 613, column: 2, scope: !901)
!909 = !DILocation(line: 614, column: 11, scope: !910)
!910 = distinct !DILexicalBlock(scope: !902, file: !1, line: 614, column: 11)
!911 = !DILocation(line: 614, column: 18, scope: !910)
!912 = !DILocation(line: 614, column: 35, scope: !910)
!913 = !DILocation(line: 614, column: 38, scope: !910)
!914 = !DILocation(line: 615, column: 11, scope: !910)
!915 = !DILocation(line: 615, column: 18, scope: !910)
!916 = !DILocation(line: 615, column: 2, scope: !910)
!917 = !DILocation(line: 616, column: 5, scope: !902)
!918 = !DILocation(line: 611, column: 37, scope: !897)
!919 = !DILocation(line: 611, column: 5, scope: !897)
!920 = distinct !{!920, !899, !921, !651}
!921 = !DILocation(line: 616, column: 5, scope: !893)
!922 = !DILocation(line: 617, column: 3, scope: !894)
!923 = !DILocation(line: 619, column: 15, scope: !859)
!924 = !DILocation(line: 619, column: 3, scope: !859)
!925 = !DILocation(line: 620, column: 1, scope: !859)
!926 = distinct !DISubprogram(name: "emit_marker", scope: !1, file: !1, line: 111, type: !927, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !585)
!927 = !DISubroutineType(types: !928)
!928 = !{null, !212, !575}
!929 = !DILocalVariable(name: "cinfo", arg: 1, scope: !926, file: !1, line: 111, type: !212)
!930 = !DILocation(line: 111, column: 29, scope: !926)
!931 = !DILocalVariable(name: "mark", arg: 2, scope: !926, file: !1, line: 111, type: !575)
!932 = !DILocation(line: 111, column: 48, scope: !926)
!933 = !DILocation(line: 114, column: 13, scope: !926)
!934 = !DILocation(line: 114, column: 3, scope: !926)
!935 = !DILocation(line: 115, column: 13, scope: !926)
!936 = !DILocation(line: 115, column: 26, scope: !926)
!937 = !DILocation(line: 115, column: 3, scope: !926)
!938 = !DILocation(line: 116, column: 1, scope: !926)
!939 = distinct !DISubprogram(name: "emit_2bytes", scope: !1, file: !1, line: 120, type: !940, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !585)
!940 = !DISubroutineType(types: !941)
!941 = !{null, !212, !238}
!942 = !DILocalVariable(name: "cinfo", arg: 1, scope: !939, file: !1, line: 120, type: !212)
!943 = !DILocation(line: 120, column: 29, scope: !939)
!944 = !DILocalVariable(name: "value", arg: 2, scope: !939, file: !1, line: 120, type: !238)
!945 = !DILocation(line: 120, column: 40, scope: !939)
!946 = !DILocation(line: 123, column: 13, scope: !939)
!947 = !DILocation(line: 123, column: 21, scope: !939)
!948 = !DILocation(line: 123, column: 27, scope: !939)
!949 = !DILocation(line: 123, column: 33, scope: !939)
!950 = !DILocation(line: 123, column: 3, scope: !939)
!951 = !DILocation(line: 124, column: 13, scope: !939)
!952 = !DILocation(line: 124, column: 20, scope: !939)
!953 = !DILocation(line: 124, column: 26, scope: !939)
!954 = !DILocation(line: 124, column: 3, scope: !939)
!955 = !DILocation(line: 125, column: 1, scope: !939)
!956 = distinct !DISubprogram(name: "emit_byte", scope: !1, file: !1, line: 97, type: !940, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !585)
!957 = !DILocalVariable(name: "cinfo", arg: 1, scope: !956, file: !1, line: 97, type: !212)
!958 = !DILocation(line: 97, column: 27, scope: !956)
!959 = !DILocalVariable(name: "val", arg: 2, scope: !956, file: !1, line: 97, type: !238)
!960 = !DILocation(line: 97, column: 38, scope: !956)
!961 = !DILocalVariable(name: "dest", scope: !956, file: !1, line: 100, type: !348)
!962 = !DILocation(line: 100, column: 33, scope: !956)
!963 = !DILocation(line: 100, column: 40, scope: !956)
!964 = !DILocation(line: 100, column: 47, scope: !956)
!965 = !DILocation(line: 102, column: 42, scope: !956)
!966 = !DILocation(line: 102, column: 33, scope: !956)
!967 = !DILocation(line: 102, column: 5, scope: !956)
!968 = !DILocation(line: 102, column: 11, scope: !956)
!969 = !DILocation(line: 102, column: 28, scope: !956)
!970 = !DILocation(line: 102, column: 31, scope: !956)
!971 = !DILocation(line: 103, column: 9, scope: !972)
!972 = distinct !DILexicalBlock(scope: !956, file: !1, line: 103, column: 7)
!973 = !DILocation(line: 103, column: 15, scope: !972)
!974 = !DILocation(line: 103, column: 7, scope: !972)
!975 = !DILocation(line: 103, column: 30, scope: !972)
!976 = !DILocation(line: 104, column: 13, scope: !977)
!977 = distinct !DILexicalBlock(scope: !978, file: !1, line: 104, column: 9)
!978 = distinct !DILexicalBlock(scope: !972, file: !1, line: 103, column: 36)
!979 = !DILocation(line: 104, column: 19, scope: !977)
!980 = !DILocation(line: 104, column: 41, scope: !977)
!981 = !DILocation(line: 104, column: 11, scope: !977)
!982 = !DILocation(line: 104, column: 9, scope: !977)
!983 = !DILocation(line: 105, column: 7, scope: !977)
!984 = !DILocation(line: 106, column: 3, scope: !978)
!985 = !DILocation(line: 107, column: 1, scope: !956)
!986 = distinct !DISubprogram(name: "emit_jfif_app0", scope: !1, file: !1, line: 338, type: !357, scopeLine: 340, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !585)
!987 = !DILocalVariable(name: "cinfo", arg: 1, scope: !986, file: !1, line: 338, type: !212)
!988 = !DILocation(line: 338, column: 32, scope: !986)
!989 = !DILocation(line: 353, column: 15, scope: !986)
!990 = !DILocation(line: 353, column: 3, scope: !986)
!991 = !DILocation(line: 355, column: 15, scope: !986)
!992 = !DILocation(line: 355, column: 3, scope: !986)
!993 = !DILocation(line: 357, column: 13, scope: !986)
!994 = !DILocation(line: 357, column: 3, scope: !986)
!995 = !DILocation(line: 358, column: 13, scope: !986)
!996 = !DILocation(line: 358, column: 3, scope: !986)
!997 = !DILocation(line: 359, column: 13, scope: !986)
!998 = !DILocation(line: 359, column: 3, scope: !986)
!999 = !DILocation(line: 360, column: 13, scope: !986)
!1000 = !DILocation(line: 360, column: 3, scope: !986)
!1001 = !DILocation(line: 361, column: 13, scope: !986)
!1002 = !DILocation(line: 361, column: 3, scope: !986)
!1003 = !DILocation(line: 365, column: 13, scope: !986)
!1004 = !DILocation(line: 365, column: 3, scope: !986)
!1005 = !DILocation(line: 366, column: 13, scope: !986)
!1006 = !DILocation(line: 366, column: 3, scope: !986)
!1007 = !DILocation(line: 367, column: 13, scope: !986)
!1008 = !DILocation(line: 367, column: 20, scope: !986)
!1009 = !DILocation(line: 367, column: 27, scope: !986)
!1010 = !DILocation(line: 367, column: 3, scope: !986)
!1011 = !DILocation(line: 368, column: 15, scope: !986)
!1012 = !DILocation(line: 368, column: 28, scope: !986)
!1013 = !DILocation(line: 368, column: 35, scope: !986)
!1014 = !DILocation(line: 368, column: 22, scope: !986)
!1015 = !DILocation(line: 368, column: 3, scope: !986)
!1016 = !DILocation(line: 369, column: 15, scope: !986)
!1017 = !DILocation(line: 369, column: 28, scope: !986)
!1018 = !DILocation(line: 369, column: 35, scope: !986)
!1019 = !DILocation(line: 369, column: 22, scope: !986)
!1020 = !DILocation(line: 369, column: 3, scope: !986)
!1021 = !DILocation(line: 370, column: 13, scope: !986)
!1022 = !DILocation(line: 370, column: 3, scope: !986)
!1023 = !DILocation(line: 371, column: 13, scope: !986)
!1024 = !DILocation(line: 371, column: 3, scope: !986)
!1025 = !DILocation(line: 372, column: 1, scope: !986)
!1026 = distinct !DISubprogram(name: "emit_adobe_app14", scope: !1, file: !1, line: 376, type: !357, scopeLine: 378, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !585)
!1027 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1026, file: !1, line: 376, type: !212)
!1028 = !DILocation(line: 376, column: 34, scope: !1026)
!1029 = !DILocation(line: 395, column: 15, scope: !1026)
!1030 = !DILocation(line: 395, column: 3, scope: !1026)
!1031 = !DILocation(line: 397, column: 15, scope: !1026)
!1032 = !DILocation(line: 397, column: 3, scope: !1026)
!1033 = !DILocation(line: 399, column: 13, scope: !1026)
!1034 = !DILocation(line: 399, column: 3, scope: !1026)
!1035 = !DILocation(line: 400, column: 13, scope: !1026)
!1036 = !DILocation(line: 400, column: 3, scope: !1026)
!1037 = !DILocation(line: 401, column: 13, scope: !1026)
!1038 = !DILocation(line: 401, column: 3, scope: !1026)
!1039 = !DILocation(line: 402, column: 13, scope: !1026)
!1040 = !DILocation(line: 402, column: 3, scope: !1026)
!1041 = !DILocation(line: 403, column: 13, scope: !1026)
!1042 = !DILocation(line: 403, column: 3, scope: !1026)
!1043 = !DILocation(line: 404, column: 15, scope: !1026)
!1044 = !DILocation(line: 404, column: 3, scope: !1026)
!1045 = !DILocation(line: 405, column: 15, scope: !1026)
!1046 = !DILocation(line: 405, column: 3, scope: !1026)
!1047 = !DILocation(line: 406, column: 15, scope: !1026)
!1048 = !DILocation(line: 406, column: 3, scope: !1026)
!1049 = !DILocation(line: 407, column: 11, scope: !1026)
!1050 = !DILocation(line: 407, column: 18, scope: !1026)
!1051 = !DILocation(line: 407, column: 3, scope: !1026)
!1052 = !DILocation(line: 409, column: 15, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !1026, file: !1, line: 407, column: 36)
!1054 = !DILocation(line: 409, column: 5, scope: !1053)
!1055 = !DILocation(line: 410, column: 5, scope: !1053)
!1056 = !DILocation(line: 412, column: 15, scope: !1053)
!1057 = !DILocation(line: 412, column: 5, scope: !1053)
!1058 = !DILocation(line: 413, column: 5, scope: !1053)
!1059 = !DILocation(line: 415, column: 15, scope: !1053)
!1060 = !DILocation(line: 415, column: 5, scope: !1053)
!1061 = !DILocation(line: 416, column: 5, scope: !1053)
!1062 = !DILocation(line: 418, column: 1, scope: !1026)
!1063 = distinct !DISubprogram(name: "emit_dqt", scope: !1, file: !1, line: 133, type: !1064, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !585)
!1064 = !DISubroutineType(types: !1065)
!1065 = !{!238, !212, !238}
!1066 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1063, file: !1, line: 133, type: !212)
!1067 = !DILocation(line: 133, column: 26, scope: !1063)
!1068 = !DILocalVariable(name: "index", arg: 2, scope: !1063, file: !1, line: 133, type: !238)
!1069 = !DILocation(line: 133, column: 37, scope: !1063)
!1070 = !DILocalVariable(name: "qtbl", scope: !1063, file: !1, line: 137, type: !399)
!1071 = !DILocation(line: 137, column: 16, scope: !1063)
!1072 = !DILocation(line: 137, column: 23, scope: !1063)
!1073 = !DILocation(line: 137, column: 30, scope: !1063)
!1074 = !DILocation(line: 137, column: 45, scope: !1063)
!1075 = !DILocalVariable(name: "prec", scope: !1063, file: !1, line: 138, type: !238)
!1076 = !DILocation(line: 138, column: 7, scope: !1063)
!1077 = !DILocalVariable(name: "i", scope: !1063, file: !1, line: 139, type: !238)
!1078 = !DILocation(line: 139, column: 7, scope: !1063)
!1079 = !DILocation(line: 141, column: 7, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1063, file: !1, line: 141, column: 7)
!1081 = !DILocation(line: 141, column: 12, scope: !1080)
!1082 = !DILocation(line: 142, column: 5, scope: !1080)
!1083 = !DILocation(line: 144, column: 8, scope: !1063)
!1084 = !DILocation(line: 145, column: 10, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1063, file: !1, line: 145, column: 3)
!1086 = !DILocation(line: 145, column: 8, scope: !1085)
!1087 = !DILocation(line: 145, column: 15, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1085, file: !1, line: 145, column: 3)
!1089 = !DILocation(line: 145, column: 17, scope: !1088)
!1090 = !DILocation(line: 145, column: 3, scope: !1085)
!1091 = !DILocation(line: 146, column: 9, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !1093, file: !1, line: 146, column: 9)
!1093 = distinct !DILexicalBlock(scope: !1088, file: !1, line: 145, column: 34)
!1094 = !DILocation(line: 146, column: 15, scope: !1092)
!1095 = !DILocation(line: 146, column: 24, scope: !1092)
!1096 = !DILocation(line: 146, column: 27, scope: !1092)
!1097 = !DILocation(line: 147, column: 12, scope: !1092)
!1098 = !DILocation(line: 147, column: 7, scope: !1092)
!1099 = !DILocation(line: 148, column: 3, scope: !1093)
!1100 = !DILocation(line: 145, column: 30, scope: !1088)
!1101 = !DILocation(line: 145, column: 3, scope: !1088)
!1102 = distinct !{!1102, !1090, !1103, !651}
!1103 = !DILocation(line: 148, column: 3, scope: !1085)
!1104 = !DILocation(line: 150, column: 9, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !1063, file: !1, line: 150, column: 7)
!1106 = !DILocation(line: 150, column: 15, scope: !1105)
!1107 = !DILocation(line: 150, column: 7, scope: !1105)
!1108 = !DILocation(line: 151, column: 17, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !1105, file: !1, line: 150, column: 27)
!1110 = !DILocation(line: 151, column: 5, scope: !1109)
!1111 = !DILocation(line: 153, column: 17, scope: !1109)
!1112 = !DILocation(line: 153, column: 24, scope: !1109)
!1113 = !DILocation(line: 153, column: 5, scope: !1109)
!1114 = !DILocation(line: 155, column: 15, scope: !1109)
!1115 = !DILocation(line: 155, column: 22, scope: !1109)
!1116 = !DILocation(line: 155, column: 31, scope: !1109)
!1117 = !DILocation(line: 155, column: 35, scope: !1109)
!1118 = !DILocation(line: 155, column: 28, scope: !1109)
!1119 = !DILocation(line: 155, column: 5, scope: !1109)
!1120 = !DILocation(line: 157, column: 12, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !1109, file: !1, line: 157, column: 5)
!1122 = !DILocation(line: 157, column: 10, scope: !1121)
!1123 = !DILocation(line: 157, column: 17, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1121, file: !1, line: 157, column: 5)
!1125 = !DILocation(line: 157, column: 19, scope: !1124)
!1126 = !DILocation(line: 157, column: 5, scope: !1121)
!1127 = !DILocalVariable(name: "qval", scope: !1128, file: !1, line: 159, type: !5)
!1128 = distinct !DILexicalBlock(scope: !1124, file: !1, line: 157, column: 36)
!1129 = !DILocation(line: 159, column: 20, scope: !1128)
!1130 = !DILocation(line: 159, column: 27, scope: !1128)
!1131 = !DILocation(line: 159, column: 33, scope: !1128)
!1132 = !DILocation(line: 159, column: 61, scope: !1128)
!1133 = !DILocation(line: 159, column: 42, scope: !1128)
!1134 = !DILocation(line: 160, column: 11, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1128, file: !1, line: 160, column: 11)
!1136 = !DILocation(line: 161, column: 12, scope: !1135)
!1137 = !DILocation(line: 161, column: 19, scope: !1135)
!1138 = !DILocation(line: 161, column: 24, scope: !1135)
!1139 = !DILocation(line: 161, column: 2, scope: !1135)
!1140 = !DILocation(line: 162, column: 17, scope: !1128)
!1141 = !DILocation(line: 162, column: 24, scope: !1128)
!1142 = !DILocation(line: 162, column: 29, scope: !1128)
!1143 = !DILocation(line: 162, column: 7, scope: !1128)
!1144 = !DILocation(line: 163, column: 5, scope: !1128)
!1145 = !DILocation(line: 157, column: 32, scope: !1124)
!1146 = !DILocation(line: 157, column: 5, scope: !1124)
!1147 = distinct !{!1147, !1126, !1148, !651}
!1148 = !DILocation(line: 163, column: 5, scope: !1121)
!1149 = !DILocation(line: 165, column: 5, scope: !1109)
!1150 = !DILocation(line: 165, column: 11, scope: !1109)
!1151 = !DILocation(line: 165, column: 22, scope: !1109)
!1152 = !DILocation(line: 166, column: 3, scope: !1109)
!1153 = !DILocation(line: 168, column: 10, scope: !1063)
!1154 = !DILocation(line: 168, column: 3, scope: !1063)
!1155 = distinct !DISubprogram(name: "emit_sof", scope: !1, file: !1, line: 266, type: !927, scopeLine: 268, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !585)
!1156 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1155, file: !1, line: 266, type: !212)
!1157 = !DILocation(line: 266, column: 26, scope: !1155)
!1158 = !DILocalVariable(name: "code", arg: 2, scope: !1155, file: !1, line: 266, type: !575)
!1159 = !DILocation(line: 266, column: 45, scope: !1155)
!1160 = !DILocalVariable(name: "ci", scope: !1155, file: !1, line: 269, type: !238)
!1161 = !DILocation(line: 269, column: 7, scope: !1155)
!1162 = !DILocalVariable(name: "compptr", scope: !1155, file: !1, line: 270, type: !375)
!1163 = !DILocation(line: 270, column: 24, scope: !1155)
!1164 = !DILocation(line: 272, column: 15, scope: !1155)
!1165 = !DILocation(line: 272, column: 22, scope: !1155)
!1166 = !DILocation(line: 272, column: 3, scope: !1155)
!1167 = !DILocation(line: 274, column: 15, scope: !1155)
!1168 = !DILocation(line: 274, column: 26, scope: !1155)
!1169 = !DILocation(line: 274, column: 33, scope: !1155)
!1170 = !DILocation(line: 274, column: 24, scope: !1155)
!1171 = !DILocation(line: 274, column: 48, scope: !1155)
!1172 = !DILocation(line: 274, column: 52, scope: !1155)
!1173 = !DILocation(line: 274, column: 56, scope: !1155)
!1174 = !DILocation(line: 274, column: 3, scope: !1155)
!1175 = !DILocation(line: 277, column: 14, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1155, file: !1, line: 277, column: 7)
!1177 = !DILocation(line: 277, column: 21, scope: !1176)
!1178 = !DILocation(line: 277, column: 7, scope: !1176)
!1179 = !DILocation(line: 277, column: 34, scope: !1176)
!1180 = !DILocation(line: 277, column: 43, scope: !1176)
!1181 = !DILocation(line: 278, column: 14, scope: !1176)
!1182 = !DILocation(line: 278, column: 21, scope: !1176)
!1183 = !DILocation(line: 278, column: 7, scope: !1176)
!1184 = !DILocation(line: 278, column: 33, scope: !1176)
!1185 = !DILocation(line: 279, column: 5, scope: !1176)
!1186 = !DILocation(line: 281, column: 13, scope: !1155)
!1187 = !DILocation(line: 281, column: 20, scope: !1155)
!1188 = !DILocation(line: 281, column: 27, scope: !1155)
!1189 = !DILocation(line: 281, column: 3, scope: !1155)
!1190 = !DILocation(line: 282, column: 15, scope: !1155)
!1191 = !DILocation(line: 282, column: 28, scope: !1155)
!1192 = !DILocation(line: 282, column: 35, scope: !1155)
!1193 = !DILocation(line: 282, column: 3, scope: !1155)
!1194 = !DILocation(line: 283, column: 15, scope: !1155)
!1195 = !DILocation(line: 283, column: 28, scope: !1155)
!1196 = !DILocation(line: 283, column: 35, scope: !1155)
!1197 = !DILocation(line: 283, column: 3, scope: !1155)
!1198 = !DILocation(line: 285, column: 13, scope: !1155)
!1199 = !DILocation(line: 285, column: 20, scope: !1155)
!1200 = !DILocation(line: 285, column: 27, scope: !1155)
!1201 = !DILocation(line: 285, column: 3, scope: !1155)
!1202 = !DILocation(line: 287, column: 11, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !1155, file: !1, line: 287, column: 3)
!1204 = !DILocation(line: 287, column: 26, scope: !1203)
!1205 = !DILocation(line: 287, column: 33, scope: !1203)
!1206 = !DILocation(line: 287, column: 24, scope: !1203)
!1207 = !DILocation(line: 287, column: 8, scope: !1203)
!1208 = !DILocation(line: 287, column: 44, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1203, file: !1, line: 287, column: 3)
!1210 = !DILocation(line: 287, column: 49, scope: !1209)
!1211 = !DILocation(line: 287, column: 56, scope: !1209)
!1212 = !DILocation(line: 287, column: 47, scope: !1209)
!1213 = !DILocation(line: 287, column: 3, scope: !1203)
!1214 = !DILocation(line: 289, column: 15, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !1209, file: !1, line: 288, column: 25)
!1216 = !DILocation(line: 289, column: 22, scope: !1215)
!1217 = !DILocation(line: 289, column: 31, scope: !1215)
!1218 = !DILocation(line: 289, column: 5, scope: !1215)
!1219 = !DILocation(line: 290, column: 15, scope: !1215)
!1220 = !DILocation(line: 290, column: 23, scope: !1215)
!1221 = !DILocation(line: 290, column: 32, scope: !1215)
!1222 = !DILocation(line: 290, column: 46, scope: !1215)
!1223 = !DILocation(line: 290, column: 54, scope: !1215)
!1224 = !DILocation(line: 290, column: 63, scope: !1215)
!1225 = !DILocation(line: 290, column: 52, scope: !1215)
!1226 = !DILocation(line: 290, column: 5, scope: !1215)
!1227 = !DILocation(line: 291, column: 15, scope: !1215)
!1228 = !DILocation(line: 291, column: 22, scope: !1215)
!1229 = !DILocation(line: 291, column: 31, scope: !1215)
!1230 = !DILocation(line: 291, column: 5, scope: !1215)
!1231 = !DILocation(line: 292, column: 3, scope: !1215)
!1232 = !DILocation(line: 288, column: 10, scope: !1209)
!1233 = !DILocation(line: 288, column: 21, scope: !1209)
!1234 = !DILocation(line: 287, column: 3, scope: !1209)
!1235 = distinct !{!1235, !1213, !1236, !651}
!1236 = !DILocation(line: 292, column: 3, scope: !1203)
!1237 = !DILocation(line: 293, column: 1, scope: !1155)
!1238 = distinct !DISubprogram(name: "emit_dac", scope: !1, file: !1, line: 211, type: !357, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !585)
!1239 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1238, file: !1, line: 211, type: !212)
!1240 = !DILocation(line: 211, column: 26, scope: !1238)
!1241 = !DILocation(line: 250, column: 1, scope: !1238)
!1242 = distinct !DISubprogram(name: "emit_dht", scope: !1, file: !1, line: 173, type: !1243, scopeLine: 175, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !585)
!1243 = !DISubroutineType(types: !1244)
!1244 = !{null, !212, !238, !276}
!1245 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1242, file: !1, line: 173, type: !212)
!1246 = !DILocation(line: 173, column: 26, scope: !1242)
!1247 = !DILocalVariable(name: "index", arg: 2, scope: !1242, file: !1, line: 173, type: !238)
!1248 = !DILocation(line: 173, column: 37, scope: !1242)
!1249 = !DILocalVariable(name: "is_ac", arg: 3, scope: !1242, file: !1, line: 173, type: !276)
!1250 = !DILocation(line: 173, column: 52, scope: !1242)
!1251 = !DILocalVariable(name: "htbl", scope: !1242, file: !1, line: 176, type: !415)
!1252 = !DILocation(line: 176, column: 15, scope: !1242)
!1253 = !DILocalVariable(name: "length", scope: !1242, file: !1, line: 177, type: !238)
!1254 = !DILocation(line: 177, column: 7, scope: !1242)
!1255 = !DILocalVariable(name: "i", scope: !1242, file: !1, line: 177, type: !238)
!1256 = !DILocation(line: 177, column: 15, scope: !1242)
!1257 = !DILocation(line: 179, column: 7, scope: !1258)
!1258 = distinct !DILexicalBlock(scope: !1242, file: !1, line: 179, column: 7)
!1259 = !DILocation(line: 180, column: 12, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !1258, file: !1, line: 179, column: 14)
!1261 = !DILocation(line: 180, column: 19, scope: !1260)
!1262 = !DILocation(line: 180, column: 36, scope: !1260)
!1263 = !DILocation(line: 180, column: 10, scope: !1260)
!1264 = !DILocation(line: 181, column: 11, scope: !1260)
!1265 = !DILocation(line: 182, column: 3, scope: !1260)
!1266 = !DILocation(line: 183, column: 12, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !1258, file: !1, line: 182, column: 10)
!1268 = !DILocation(line: 183, column: 19, scope: !1267)
!1269 = !DILocation(line: 183, column: 36, scope: !1267)
!1270 = !DILocation(line: 183, column: 10, scope: !1267)
!1271 = !DILocation(line: 186, column: 7, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !1242, file: !1, line: 186, column: 7)
!1273 = !DILocation(line: 186, column: 12, scope: !1272)
!1274 = !DILocation(line: 187, column: 5, scope: !1272)
!1275 = !DILocation(line: 189, column: 9, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !1242, file: !1, line: 189, column: 7)
!1277 = !DILocation(line: 189, column: 15, scope: !1276)
!1278 = !DILocation(line: 189, column: 7, scope: !1276)
!1279 = !DILocation(line: 190, column: 17, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1276, file: !1, line: 189, column: 27)
!1281 = !DILocation(line: 190, column: 5, scope: !1280)
!1282 = !DILocation(line: 192, column: 12, scope: !1280)
!1283 = !DILocation(line: 193, column: 12, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1280, file: !1, line: 193, column: 5)
!1285 = !DILocation(line: 193, column: 10, scope: !1284)
!1286 = !DILocation(line: 193, column: 17, scope: !1287)
!1287 = distinct !DILexicalBlock(scope: !1284, file: !1, line: 193, column: 5)
!1288 = !DILocation(line: 193, column: 19, scope: !1287)
!1289 = !DILocation(line: 193, column: 5, scope: !1284)
!1290 = !DILocation(line: 194, column: 17, scope: !1287)
!1291 = !DILocation(line: 194, column: 23, scope: !1287)
!1292 = !DILocation(line: 194, column: 28, scope: !1287)
!1293 = !DILocation(line: 194, column: 14, scope: !1287)
!1294 = !DILocation(line: 194, column: 7, scope: !1287)
!1295 = !DILocation(line: 193, column: 27, scope: !1287)
!1296 = !DILocation(line: 193, column: 5, scope: !1287)
!1297 = distinct !{!1297, !1289, !1298, !651}
!1298 = !DILocation(line: 194, column: 29, scope: !1284)
!1299 = !DILocation(line: 196, column: 17, scope: !1280)
!1300 = !DILocation(line: 196, column: 24, scope: !1280)
!1301 = !DILocation(line: 196, column: 31, scope: !1280)
!1302 = !DILocation(line: 196, column: 35, scope: !1280)
!1303 = !DILocation(line: 196, column: 39, scope: !1280)
!1304 = !DILocation(line: 196, column: 5, scope: !1280)
!1305 = !DILocation(line: 197, column: 15, scope: !1280)
!1306 = !DILocation(line: 197, column: 22, scope: !1280)
!1307 = !DILocation(line: 197, column: 5, scope: !1280)
!1308 = !DILocation(line: 199, column: 12, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !1280, file: !1, line: 199, column: 5)
!1310 = !DILocation(line: 199, column: 10, scope: !1309)
!1311 = !DILocation(line: 199, column: 17, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1309, file: !1, line: 199, column: 5)
!1313 = !DILocation(line: 199, column: 19, scope: !1312)
!1314 = !DILocation(line: 199, column: 5, scope: !1309)
!1315 = !DILocation(line: 200, column: 17, scope: !1312)
!1316 = !DILocation(line: 200, column: 24, scope: !1312)
!1317 = !DILocation(line: 200, column: 30, scope: !1312)
!1318 = !DILocation(line: 200, column: 35, scope: !1312)
!1319 = !DILocation(line: 200, column: 7, scope: !1312)
!1320 = !DILocation(line: 199, column: 27, scope: !1312)
!1321 = !DILocation(line: 199, column: 5, scope: !1312)
!1322 = distinct !{!1322, !1314, !1323, !651}
!1323 = !DILocation(line: 200, column: 37, scope: !1309)
!1324 = !DILocation(line: 202, column: 12, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1280, file: !1, line: 202, column: 5)
!1326 = !DILocation(line: 202, column: 10, scope: !1325)
!1327 = !DILocation(line: 202, column: 17, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1325, file: !1, line: 202, column: 5)
!1329 = !DILocation(line: 202, column: 21, scope: !1328)
!1330 = !DILocation(line: 202, column: 19, scope: !1328)
!1331 = !DILocation(line: 202, column: 5, scope: !1325)
!1332 = !DILocation(line: 203, column: 17, scope: !1328)
!1333 = !DILocation(line: 203, column: 24, scope: !1328)
!1334 = !DILocation(line: 203, column: 30, scope: !1328)
!1335 = !DILocation(line: 203, column: 38, scope: !1328)
!1336 = !DILocation(line: 203, column: 7, scope: !1328)
!1337 = !DILocation(line: 202, column: 30, scope: !1328)
!1338 = !DILocation(line: 202, column: 5, scope: !1328)
!1339 = distinct !{!1339, !1331, !1340, !651}
!1340 = !DILocation(line: 203, column: 40, scope: !1325)
!1341 = !DILocation(line: 205, column: 5, scope: !1280)
!1342 = !DILocation(line: 205, column: 11, scope: !1280)
!1343 = !DILocation(line: 205, column: 22, scope: !1280)
!1344 = !DILocation(line: 206, column: 3, scope: !1280)
!1345 = !DILocation(line: 207, column: 1, scope: !1242)
!1346 = distinct !DISubprogram(name: "emit_dri", scope: !1, file: !1, line: 254, type: !357, scopeLine: 256, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !585)
!1347 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1346, file: !1, line: 254, type: !212)
!1348 = !DILocation(line: 254, column: 26, scope: !1346)
!1349 = !DILocation(line: 257, column: 15, scope: !1346)
!1350 = !DILocation(line: 257, column: 3, scope: !1346)
!1351 = !DILocation(line: 259, column: 15, scope: !1346)
!1352 = !DILocation(line: 259, column: 3, scope: !1346)
!1353 = !DILocation(line: 261, column: 15, scope: !1346)
!1354 = !DILocation(line: 261, column: 28, scope: !1346)
!1355 = !DILocation(line: 261, column: 35, scope: !1346)
!1356 = !DILocation(line: 261, column: 3, scope: !1346)
!1357 = !DILocation(line: 262, column: 1, scope: !1346)
!1358 = distinct !DISubprogram(name: "emit_sos", scope: !1, file: !1, line: 297, type: !357, scopeLine: 299, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !585)
!1359 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1358, file: !1, line: 297, type: !212)
!1360 = !DILocation(line: 297, column: 26, scope: !1358)
!1361 = !DILocalVariable(name: "i", scope: !1358, file: !1, line: 300, type: !238)
!1362 = !DILocation(line: 300, column: 7, scope: !1358)
!1363 = !DILocalVariable(name: "td", scope: !1358, file: !1, line: 300, type: !238)
!1364 = !DILocation(line: 300, column: 10, scope: !1358)
!1365 = !DILocalVariable(name: "ta", scope: !1358, file: !1, line: 300, type: !238)
!1366 = !DILocation(line: 300, column: 14, scope: !1358)
!1367 = !DILocalVariable(name: "compptr", scope: !1358, file: !1, line: 301, type: !375)
!1368 = !DILocation(line: 301, column: 24, scope: !1358)
!1369 = !DILocation(line: 303, column: 15, scope: !1358)
!1370 = !DILocation(line: 303, column: 3, scope: !1358)
!1371 = !DILocation(line: 305, column: 15, scope: !1358)
!1372 = !DILocation(line: 305, column: 26, scope: !1358)
!1373 = !DILocation(line: 305, column: 33, scope: !1358)
!1374 = !DILocation(line: 305, column: 24, scope: !1358)
!1375 = !DILocation(line: 305, column: 47, scope: !1358)
!1376 = !DILocation(line: 305, column: 51, scope: !1358)
!1377 = !DILocation(line: 305, column: 55, scope: !1358)
!1378 = !DILocation(line: 305, column: 3, scope: !1358)
!1379 = !DILocation(line: 307, column: 13, scope: !1358)
!1380 = !DILocation(line: 307, column: 20, scope: !1358)
!1381 = !DILocation(line: 307, column: 27, scope: !1358)
!1382 = !DILocation(line: 307, column: 3, scope: !1358)
!1383 = !DILocation(line: 309, column: 10, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !1358, file: !1, line: 309, column: 3)
!1385 = !DILocation(line: 309, column: 8, scope: !1384)
!1386 = !DILocation(line: 309, column: 15, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !1384, file: !1, line: 309, column: 3)
!1388 = !DILocation(line: 309, column: 19, scope: !1387)
!1389 = !DILocation(line: 309, column: 26, scope: !1387)
!1390 = !DILocation(line: 309, column: 17, scope: !1387)
!1391 = !DILocation(line: 309, column: 3, scope: !1384)
!1392 = !DILocation(line: 310, column: 15, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1387, file: !1, line: 309, column: 46)
!1394 = !DILocation(line: 310, column: 22, scope: !1393)
!1395 = !DILocation(line: 310, column: 36, scope: !1393)
!1396 = !DILocation(line: 310, column: 13, scope: !1393)
!1397 = !DILocation(line: 311, column: 15, scope: !1393)
!1398 = !DILocation(line: 311, column: 22, scope: !1393)
!1399 = !DILocation(line: 311, column: 31, scope: !1393)
!1400 = !DILocation(line: 311, column: 5, scope: !1393)
!1401 = !DILocation(line: 312, column: 10, scope: !1393)
!1402 = !DILocation(line: 312, column: 19, scope: !1393)
!1403 = !DILocation(line: 312, column: 8, scope: !1393)
!1404 = !DILocation(line: 313, column: 10, scope: !1393)
!1405 = !DILocation(line: 313, column: 19, scope: !1393)
!1406 = !DILocation(line: 313, column: 8, scope: !1393)
!1407 = !DILocation(line: 314, column: 9, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1393, file: !1, line: 314, column: 9)
!1409 = !DILocation(line: 314, column: 16, scope: !1408)
!1410 = !DILocation(line: 320, column: 11, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !1412, file: !1, line: 320, column: 11)
!1412 = distinct !DILexicalBlock(scope: !1408, file: !1, line: 314, column: 34)
!1413 = !DILocation(line: 320, column: 18, scope: !1411)
!1414 = !DILocation(line: 320, column: 21, scope: !1411)
!1415 = !DILocation(line: 321, column: 5, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1411, file: !1, line: 320, column: 27)
!1417 = !DILocation(line: 322, column: 6, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1416, file: !1, line: 322, column: 6)
!1419 = !DILocation(line: 322, column: 13, scope: !1418)
!1420 = !DILocation(line: 322, column: 16, scope: !1418)
!1421 = !DILocation(line: 322, column: 21, scope: !1418)
!1422 = !DILocation(line: 322, column: 25, scope: !1418)
!1423 = !DILocation(line: 322, column: 32, scope: !1418)
!1424 = !DILocation(line: 323, column: 7, scope: !1418)
!1425 = !DILocation(line: 323, column: 4, scope: !1418)
!1426 = !DILocation(line: 324, column: 7, scope: !1416)
!1427 = !DILocation(line: 325, column: 5, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1411, file: !1, line: 324, column: 14)
!1429 = !DILocation(line: 327, column: 5, scope: !1412)
!1430 = !DILocation(line: 328, column: 15, scope: !1393)
!1431 = !DILocation(line: 328, column: 23, scope: !1393)
!1432 = !DILocation(line: 328, column: 26, scope: !1393)
!1433 = !DILocation(line: 328, column: 34, scope: !1393)
!1434 = !DILocation(line: 328, column: 32, scope: !1393)
!1435 = !DILocation(line: 328, column: 5, scope: !1393)
!1436 = !DILocation(line: 329, column: 3, scope: !1393)
!1437 = !DILocation(line: 309, column: 42, scope: !1387)
!1438 = !DILocation(line: 309, column: 3, scope: !1387)
!1439 = distinct !{!1439, !1391, !1440, !651}
!1440 = !DILocation(line: 329, column: 3, scope: !1384)
!1441 = !DILocation(line: 331, column: 13, scope: !1358)
!1442 = !DILocation(line: 331, column: 20, scope: !1358)
!1443 = !DILocation(line: 331, column: 27, scope: !1358)
!1444 = !DILocation(line: 331, column: 3, scope: !1358)
!1445 = !DILocation(line: 332, column: 13, scope: !1358)
!1446 = !DILocation(line: 332, column: 20, scope: !1358)
!1447 = !DILocation(line: 332, column: 27, scope: !1358)
!1448 = !DILocation(line: 332, column: 3, scope: !1358)
!1449 = !DILocation(line: 333, column: 13, scope: !1358)
!1450 = !DILocation(line: 333, column: 21, scope: !1358)
!1451 = !DILocation(line: 333, column: 28, scope: !1358)
!1452 = !DILocation(line: 333, column: 31, scope: !1358)
!1453 = !DILocation(line: 333, column: 39, scope: !1358)
!1454 = !DILocation(line: 333, column: 46, scope: !1358)
!1455 = !DILocation(line: 333, column: 37, scope: !1358)
!1456 = !DILocation(line: 333, column: 3, scope: !1358)
!1457 = !DILocation(line: 334, column: 1, scope: !1358)
