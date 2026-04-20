; ModuleID = 'cBench/consumer_jpeg_c/src/jdinput.c'
source_filename = "cBench/consumer_jpeg_c/src/jdinput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jpeg_decompress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.my_input_controller = type { %struct.jpeg_input_controller, i32 }
%struct.jpeg_input_controller = type { ptr, ptr, ptr, ptr, i32, i32 }
%struct.jpeg_marker_reader = type { ptr, ptr, ptr, ptr, [16 x ptr], i32, i32, i32, i32 }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_entropy_decoder = type { ptr, ptr }
%struct.jpeg_d_coef_controller = type { ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }

; Function Attrs: noinline nounwind uwtable
define dso_local void @jinit_input_controller(ptr noundef %0) #0 !dbg !590 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !592, !DIExpression(), !593)
    #dbg_declare(ptr %3, !594, !DIExpression(), !595)
  %4 = load ptr, ptr %2, align 8, !dbg !596
  %5 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %4, i32 0, i32 1, !dbg !597
  %6 = load ptr, ptr %5, align 8, !dbg !597
  %7 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %6, i32 0, i32 0, !dbg !598
  %8 = load ptr, ptr %7, align 8, !dbg !598
  %9 = load ptr, ptr %2, align 8, !dbg !599
  %10 = call ptr %8(ptr noundef %9, i32 noundef 0, i64 noundef 48), !dbg !600
  store ptr %10, ptr %3, align 8, !dbg !601
  %11 = load ptr, ptr %3, align 8, !dbg !602
  %12 = load ptr, ptr %2, align 8, !dbg !603
  %13 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %12, i32 0, i32 77, !dbg !604
  store ptr %11, ptr %13, align 8, !dbg !605
  %14 = load ptr, ptr %3, align 8, !dbg !606
  %15 = getelementptr inbounds nuw %struct.my_input_controller, ptr %14, i32 0, i32 0, !dbg !607
  %16 = getelementptr inbounds nuw %struct.jpeg_input_controller, ptr %15, i32 0, i32 0, !dbg !608
  store ptr @consume_markers, ptr %16, align 8, !dbg !609
  %17 = load ptr, ptr %3, align 8, !dbg !610
  %18 = getelementptr inbounds nuw %struct.my_input_controller, ptr %17, i32 0, i32 0, !dbg !611
  %19 = getelementptr inbounds nuw %struct.jpeg_input_controller, ptr %18, i32 0, i32 1, !dbg !612
  store ptr @reset_input_controller, ptr %19, align 8, !dbg !613
  %20 = load ptr, ptr %3, align 8, !dbg !614
  %21 = getelementptr inbounds nuw %struct.my_input_controller, ptr %20, i32 0, i32 0, !dbg !615
  %22 = getelementptr inbounds nuw %struct.jpeg_input_controller, ptr %21, i32 0, i32 2, !dbg !616
  store ptr @start_input_pass, ptr %22, align 8, !dbg !617
  %23 = load ptr, ptr %3, align 8, !dbg !618
  %24 = getelementptr inbounds nuw %struct.my_input_controller, ptr %23, i32 0, i32 0, !dbg !619
  %25 = getelementptr inbounds nuw %struct.jpeg_input_controller, ptr %24, i32 0, i32 3, !dbg !620
  store ptr @finish_input_pass, ptr %25, align 8, !dbg !621
  %26 = load ptr, ptr %3, align 8, !dbg !622
  %27 = getelementptr inbounds nuw %struct.my_input_controller, ptr %26, i32 0, i32 0, !dbg !623
  %28 = getelementptr inbounds nuw %struct.jpeg_input_controller, ptr %27, i32 0, i32 4, !dbg !624
  store i32 0, ptr %28, align 8, !dbg !625
  %29 = load ptr, ptr %3, align 8, !dbg !626
  %30 = getelementptr inbounds nuw %struct.my_input_controller, ptr %29, i32 0, i32 0, !dbg !627
  %31 = getelementptr inbounds nuw %struct.jpeg_input_controller, ptr %30, i32 0, i32 5, !dbg !628
  store i32 0, ptr %31, align 4, !dbg !629
  %32 = load ptr, ptr %3, align 8, !dbg !630
  %33 = getelementptr inbounds nuw %struct.my_input_controller, ptr %32, i32 0, i32 1, !dbg !631
  store i32 1, ptr %33, align 8, !dbg !632
  ret void, !dbg !633
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @consume_markers(ptr noundef %0) #0 !dbg !634 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !635, !DIExpression(), !636)
    #dbg_declare(ptr %4, !637, !DIExpression(), !638)
  %6 = load ptr, ptr %3, align 8, !dbg !639
  %7 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %6, i32 0, i32 77, !dbg !640
  %8 = load ptr, ptr %7, align 8, !dbg !640
  store ptr %8, ptr %4, align 8, !dbg !638
    #dbg_declare(ptr %5, !641, !DIExpression(), !642)
  %9 = load ptr, ptr %4, align 8, !dbg !643
  %10 = getelementptr inbounds nuw %struct.my_input_controller, ptr %9, i32 0, i32 0, !dbg !645
  %11 = getelementptr inbounds nuw %struct.jpeg_input_controller, ptr %10, i32 0, i32 5, !dbg !646
  %12 = load i32, ptr %11, align 4, !dbg !646
  %13 = icmp ne i32 %12, 0, !dbg !643
  br i1 %13, label %14, label %15, !dbg !643

14:                                               ; preds = %1
  store i32 2, ptr %2, align 4, !dbg !647
  br label %99, !dbg !647

15:                                               ; preds = %1
  %16 = load ptr, ptr %3, align 8, !dbg !648
  %17 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %16, i32 0, i32 78, !dbg !649
  %18 = load ptr, ptr %17, align 8, !dbg !649
  %19 = getelementptr inbounds nuw %struct.jpeg_marker_reader, ptr %18, i32 0, i32 1, !dbg !650
  %20 = load ptr, ptr %19, align 8, !dbg !650
  %21 = load ptr, ptr %3, align 8, !dbg !651
  %22 = call i32 %20(ptr noundef %21), !dbg !652
  store i32 %22, ptr %5, align 4, !dbg !653
  %23 = load i32, ptr %5, align 4, !dbg !654
  switch i32 %23, label %97 [
    i32 1, label %24
    i32 2, label %53
    i32 0, label %96
  ], !dbg !655

24:                                               ; preds = %15
  %25 = load ptr, ptr %4, align 8, !dbg !656
  %26 = getelementptr inbounds nuw %struct.my_input_controller, ptr %25, i32 0, i32 1, !dbg !659
  %27 = load i32, ptr %26, align 8, !dbg !659
  %28 = icmp ne i32 %27, 0, !dbg !656
  br i1 %28, label %29, label %33, !dbg !656

29:                                               ; preds = %24
  %30 = load ptr, ptr %3, align 8, !dbg !660
  call void @initial_setup(ptr noundef %30), !dbg !662
  %31 = load ptr, ptr %4, align 8, !dbg !663
  %32 = getelementptr inbounds nuw %struct.my_input_controller, ptr %31, i32 0, i32 1, !dbg !664
  store i32 0, ptr %32, align 8, !dbg !665
  br label %52, !dbg !666

33:                                               ; preds = %24
  %34 = load ptr, ptr %4, align 8, !dbg !667
  %35 = getelementptr inbounds nuw %struct.my_input_controller, ptr %34, i32 0, i32 0, !dbg !670
  %36 = getelementptr inbounds nuw %struct.jpeg_input_controller, ptr %35, i32 0, i32 4, !dbg !671
  %37 = load i32, ptr %36, align 8, !dbg !671
  %38 = icmp ne i32 %37, 0, !dbg !667
  br i1 %38, label %50, label %39, !dbg !672

39:                                               ; preds = %33
  %40 = load ptr, ptr %3, align 8, !dbg !673
  %41 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %40, i32 0, i32 0, !dbg !673
  %42 = load ptr, ptr %41, align 8, !dbg !673
  %43 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %42, i32 0, i32 5, !dbg !673
  store i32 34, ptr %43, align 8, !dbg !673
  %44 = load ptr, ptr %3, align 8, !dbg !673
  %45 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %44, i32 0, i32 0, !dbg !673
  %46 = load ptr, ptr %45, align 8, !dbg !673
  %47 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %46, i32 0, i32 0, !dbg !673
  %48 = load ptr, ptr %47, align 8, !dbg !673
  %49 = load ptr, ptr %3, align 8, !dbg !673
  call void %48(ptr noundef %49), !dbg !673
  br label %50, !dbg !673

50:                                               ; preds = %39, %33
  %51 = load ptr, ptr %3, align 8, !dbg !674
  call void @start_input_pass(ptr noundef %51), !dbg !675
  br label %52

52:                                               ; preds = %50, %29
  br label %97, !dbg !676

53:                                               ; preds = %15
  %54 = load ptr, ptr %4, align 8, !dbg !677
  %55 = getelementptr inbounds nuw %struct.my_input_controller, ptr %54, i32 0, i32 0, !dbg !678
  %56 = getelementptr inbounds nuw %struct.jpeg_input_controller, ptr %55, i32 0, i32 5, !dbg !679
  store i32 1, ptr %56, align 4, !dbg !680
  %57 = load ptr, ptr %4, align 8, !dbg !681
  %58 = getelementptr inbounds nuw %struct.my_input_controller, ptr %57, i32 0, i32 1, !dbg !683
  %59 = load i32, ptr %58, align 8, !dbg !683
  %60 = icmp ne i32 %59, 0, !dbg !681
  br i1 %60, label %61, label %80, !dbg !681

61:                                               ; preds = %53
  %62 = load ptr, ptr %3, align 8, !dbg !684
  %63 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %62, i32 0, i32 78, !dbg !687
  %64 = load ptr, ptr %63, align 8, !dbg !687
  %65 = getelementptr inbounds nuw %struct.jpeg_marker_reader, ptr %64, i32 0, i32 6, !dbg !688
  %66 = load i32, ptr %65, align 4, !dbg !688
  %67 = icmp ne i32 %66, 0, !dbg !684
  br i1 %67, label %68, label %79, !dbg !684

68:                                               ; preds = %61
  %69 = load ptr, ptr %3, align 8, !dbg !689
  %70 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %69, i32 0, i32 0, !dbg !689
  %71 = load ptr, ptr %70, align 8, !dbg !689
  %72 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %71, i32 0, i32 5, !dbg !689
  store i32 58, ptr %72, align 8, !dbg !689
  %73 = load ptr, ptr %3, align 8, !dbg !689
  %74 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %73, i32 0, i32 0, !dbg !689
  %75 = load ptr, ptr %74, align 8, !dbg !689
  %76 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %75, i32 0, i32 0, !dbg !689
  %77 = load ptr, ptr %76, align 8, !dbg !689
  %78 = load ptr, ptr %3, align 8, !dbg !689
  call void %77(ptr noundef %78), !dbg !689
  br label %79, !dbg !689

79:                                               ; preds = %68, %61
  br label %95, !dbg !690

80:                                               ; preds = %53
  %81 = load ptr, ptr %3, align 8, !dbg !691
  %82 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %81, i32 0, i32 36, !dbg !694
  %83 = load i32, ptr %82, align 4, !dbg !694
  %84 = load ptr, ptr %3, align 8, !dbg !695
  %85 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %84, i32 0, i32 34, !dbg !696
  %86 = load i32, ptr %85, align 4, !dbg !696
  %87 = icmp sgt i32 %83, %86, !dbg !697
  br i1 %87, label %88, label %94, !dbg !697

88:                                               ; preds = %80
  %89 = load ptr, ptr %3, align 8, !dbg !698
  %90 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %89, i32 0, i32 34, !dbg !699
  %91 = load i32, ptr %90, align 4, !dbg !699
  %92 = load ptr, ptr %3, align 8, !dbg !700
  %93 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %92, i32 0, i32 36, !dbg !701
  store i32 %91, ptr %93, align 4, !dbg !702
  br label %94, !dbg !700

94:                                               ; preds = %88, %80
  br label %95

95:                                               ; preds = %94, %79
  br label %97, !dbg !703

96:                                               ; preds = %15
  br label %97, !dbg !704

97:                                               ; preds = %15, %96, %95, %52
  %98 = load i32, ptr %5, align 4, !dbg !705
  store i32 %98, ptr %2, align 4, !dbg !706
  br label %99, !dbg !706

99:                                               ; preds = %97, %14
  %100 = load i32, ptr %2, align 4, !dbg !707
  ret i32 %100, !dbg !707
}

; Function Attrs: noinline nounwind uwtable
define internal void @reset_input_controller(ptr noundef %0) #0 !dbg !708 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !709, !DIExpression(), !710)
    #dbg_declare(ptr %3, !711, !DIExpression(), !712)
  %4 = load ptr, ptr %2, align 8, !dbg !713
  %5 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %4, i32 0, i32 77, !dbg !714
  %6 = load ptr, ptr %5, align 8, !dbg !714
  store ptr %6, ptr %3, align 8, !dbg !712
  %7 = load ptr, ptr %3, align 8, !dbg !715
  %8 = getelementptr inbounds nuw %struct.my_input_controller, ptr %7, i32 0, i32 0, !dbg !716
  %9 = getelementptr inbounds nuw %struct.jpeg_input_controller, ptr %8, i32 0, i32 0, !dbg !717
  store ptr @consume_markers, ptr %9, align 8, !dbg !718
  %10 = load ptr, ptr %3, align 8, !dbg !719
  %11 = getelementptr inbounds nuw %struct.my_input_controller, ptr %10, i32 0, i32 0, !dbg !720
  %12 = getelementptr inbounds nuw %struct.jpeg_input_controller, ptr %11, i32 0, i32 4, !dbg !721
  store i32 0, ptr %12, align 8, !dbg !722
  %13 = load ptr, ptr %3, align 8, !dbg !723
  %14 = getelementptr inbounds nuw %struct.my_input_controller, ptr %13, i32 0, i32 0, !dbg !724
  %15 = getelementptr inbounds nuw %struct.jpeg_input_controller, ptr %14, i32 0, i32 5, !dbg !725
  store i32 0, ptr %15, align 4, !dbg !726
  %16 = load ptr, ptr %3, align 8, !dbg !727
  %17 = getelementptr inbounds nuw %struct.my_input_controller, ptr %16, i32 0, i32 1, !dbg !728
  store i32 1, ptr %17, align 8, !dbg !729
  %18 = load ptr, ptr %2, align 8, !dbg !730
  %19 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %18, i32 0, i32 0, !dbg !731
  %20 = load ptr, ptr %19, align 8, !dbg !731
  %21 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %20, i32 0, i32 4, !dbg !732
  %22 = load ptr, ptr %21, align 8, !dbg !732
  %23 = load ptr, ptr %2, align 8, !dbg !733
  call void %22(ptr noundef %23), !dbg !734
  %24 = load ptr, ptr %2, align 8, !dbg !735
  %25 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %24, i32 0, i32 78, !dbg !736
  %26 = load ptr, ptr %25, align 8, !dbg !736
  %27 = getelementptr inbounds nuw %struct.jpeg_marker_reader, ptr %26, i32 0, i32 0, !dbg !737
  %28 = load ptr, ptr %27, align 8, !dbg !737
  %29 = load ptr, ptr %2, align 8, !dbg !738
  call void %28(ptr noundef %29), !dbg !739
  %30 = load ptr, ptr %2, align 8, !dbg !740
  %31 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %30, i32 0, i32 38, !dbg !741
  store ptr null, ptr %31, align 8, !dbg !742
  ret void, !dbg !743
}

; Function Attrs: noinline nounwind uwtable
define internal void @start_input_pass(ptr noundef %0) #0 !dbg !744 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !745, !DIExpression(), !746)
  %3 = load ptr, ptr %2, align 8, !dbg !747
  call void @per_scan_setup(ptr noundef %3), !dbg !748
  %4 = load ptr, ptr %2, align 8, !dbg !749
  call void @latch_quant_tables(ptr noundef %4), !dbg !750
  %5 = load ptr, ptr %2, align 8, !dbg !751
  %6 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %5, i32 0, i32 79, !dbg !752
  %7 = load ptr, ptr %6, align 8, !dbg !752
  %8 = getelementptr inbounds nuw %struct.jpeg_entropy_decoder, ptr %7, i32 0, i32 0, !dbg !753
  %9 = load ptr, ptr %8, align 8, !dbg !753
  %10 = load ptr, ptr %2, align 8, !dbg !754
  call void %9(ptr noundef %10), !dbg !755
  %11 = load ptr, ptr %2, align 8, !dbg !756
  %12 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %11, i32 0, i32 75, !dbg !757
  %13 = load ptr, ptr %12, align 8, !dbg !757
  %14 = getelementptr inbounds nuw %struct.jpeg_d_coef_controller, ptr %13, i32 0, i32 0, !dbg !758
  %15 = load ptr, ptr %14, align 8, !dbg !758
  %16 = load ptr, ptr %2, align 8, !dbg !759
  call void %15(ptr noundef %16), !dbg !760
  %17 = load ptr, ptr %2, align 8, !dbg !761
  %18 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %17, i32 0, i32 75, !dbg !762
  %19 = load ptr, ptr %18, align 8, !dbg !762
  %20 = getelementptr inbounds nuw %struct.jpeg_d_coef_controller, ptr %19, i32 0, i32 1, !dbg !763
  %21 = load ptr, ptr %20, align 8, !dbg !763
  %22 = load ptr, ptr %2, align 8, !dbg !764
  %23 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %22, i32 0, i32 77, !dbg !765
  %24 = load ptr, ptr %23, align 8, !dbg !765
  %25 = getelementptr inbounds nuw %struct.jpeg_input_controller, ptr %24, i32 0, i32 0, !dbg !766
  store ptr %21, ptr %25, align 8, !dbg !767
  ret void, !dbg !768
}

; Function Attrs: noinline nounwind uwtable
define internal void @finish_input_pass(ptr noundef %0) #0 !dbg !769 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !770, !DIExpression(), !771)
  %3 = load ptr, ptr %2, align 8, !dbg !772
  %4 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %3, i32 0, i32 77, !dbg !773
  %5 = load ptr, ptr %4, align 8, !dbg !773
  %6 = getelementptr inbounds nuw %struct.jpeg_input_controller, ptr %5, i32 0, i32 0, !dbg !774
  store ptr @consume_markers, ptr %6, align 8, !dbg !775
  ret void, !dbg !776
}

; Function Attrs: noinline nounwind uwtable
define internal void @initial_setup(ptr noundef %0) #0 !dbg !777 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !778, !DIExpression(), !779)
    #dbg_declare(ptr %3, !780, !DIExpression(), !781)
    #dbg_declare(ptr %4, !782, !DIExpression(), !783)
  %5 = load ptr, ptr %2, align 8, !dbg !784
  %6 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %5, i32 0, i32 7, !dbg !786
  %7 = load i32, ptr %6, align 4, !dbg !786
  %8 = zext i32 %7 to i64, !dbg !787
  %9 = icmp sgt i64 %8, 65500, !dbg !788
  br i1 %9, label %16, label %10, !dbg !789

10:                                               ; preds = %1
  %11 = load ptr, ptr %2, align 8, !dbg !790
  %12 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %11, i32 0, i32 6, !dbg !791
  %13 = load i32, ptr %12, align 8, !dbg !791
  %14 = zext i32 %13 to i64, !dbg !792
  %15 = icmp sgt i64 %14, 65500, !dbg !793
  br i1 %15, label %16, label %32, !dbg !789

16:                                               ; preds = %10, %1
  %17 = load ptr, ptr %2, align 8, !dbg !794
  %18 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %17, i32 0, i32 0, !dbg !794
  %19 = load ptr, ptr %18, align 8, !dbg !794
  %20 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %19, i32 0, i32 5, !dbg !794
  store i32 40, ptr %20, align 8, !dbg !794
  %21 = load ptr, ptr %2, align 8, !dbg !794
  %22 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %21, i32 0, i32 0, !dbg !794
  %23 = load ptr, ptr %22, align 8, !dbg !794
  %24 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %23, i32 0, i32 6, !dbg !794
  %25 = getelementptr inbounds [8 x i32], ptr %24, i64 0, i64 0, !dbg !794
  store i32 65500, ptr %25, align 4, !dbg !794
  %26 = load ptr, ptr %2, align 8, !dbg !794
  %27 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %26, i32 0, i32 0, !dbg !794
  %28 = load ptr, ptr %27, align 8, !dbg !794
  %29 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %28, i32 0, i32 0, !dbg !794
  %30 = load ptr, ptr %29, align 8, !dbg !794
  %31 = load ptr, ptr %2, align 8, !dbg !794
  call void %30(ptr noundef %31), !dbg !794
  br label %32, !dbg !794

32:                                               ; preds = %16, %10
  %33 = load ptr, ptr %2, align 8, !dbg !795
  %34 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %33, i32 0, i32 42, !dbg !797
  %35 = load i32, ptr %34, align 8, !dbg !797
  %36 = icmp ne i32 %35, 8, !dbg !798
  br i1 %36, label %37, label %56, !dbg !798

37:                                               ; preds = %32
  %38 = load ptr, ptr %2, align 8, !dbg !799
  %39 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %38, i32 0, i32 0, !dbg !799
  %40 = load ptr, ptr %39, align 8, !dbg !799
  %41 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %40, i32 0, i32 5, !dbg !799
  store i32 13, ptr %41, align 8, !dbg !799
  %42 = load ptr, ptr %2, align 8, !dbg !799
  %43 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %42, i32 0, i32 42, !dbg !799
  %44 = load i32, ptr %43, align 8, !dbg !799
  %45 = load ptr, ptr %2, align 8, !dbg !799
  %46 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %45, i32 0, i32 0, !dbg !799
  %47 = load ptr, ptr %46, align 8, !dbg !799
  %48 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %47, i32 0, i32 6, !dbg !799
  %49 = getelementptr inbounds [8 x i32], ptr %48, i64 0, i64 0, !dbg !799
  store i32 %44, ptr %49, align 4, !dbg !799
  %50 = load ptr, ptr %2, align 8, !dbg !799
  %51 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %50, i32 0, i32 0, !dbg !799
  %52 = load ptr, ptr %51, align 8, !dbg !799
  %53 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %52, i32 0, i32 0, !dbg !799
  %54 = load ptr, ptr %53, align 8, !dbg !799
  %55 = load ptr, ptr %2, align 8, !dbg !799
  call void %54(ptr noundef %55), !dbg !799
  br label %56, !dbg !799

56:                                               ; preds = %37, %32
  %57 = load ptr, ptr %2, align 8, !dbg !800
  %58 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %57, i32 0, i32 8, !dbg !802
  %59 = load i32, ptr %58, align 8, !dbg !802
  %60 = icmp sgt i32 %59, 10, !dbg !803
  br i1 %60, label %61, label %85, !dbg !803

61:                                               ; preds = %56
  %62 = load ptr, ptr %2, align 8, !dbg !804
  %63 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %62, i32 0, i32 0, !dbg !804
  %64 = load ptr, ptr %63, align 8, !dbg !804
  %65 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %64, i32 0, i32 5, !dbg !804
  store i32 24, ptr %65, align 8, !dbg !804
  %66 = load ptr, ptr %2, align 8, !dbg !804
  %67 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %66, i32 0, i32 8, !dbg !804
  %68 = load i32, ptr %67, align 8, !dbg !804
  %69 = load ptr, ptr %2, align 8, !dbg !804
  %70 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %69, i32 0, i32 0, !dbg !804
  %71 = load ptr, ptr %70, align 8, !dbg !804
  %72 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %71, i32 0, i32 6, !dbg !804
  %73 = getelementptr inbounds [8 x i32], ptr %72, i64 0, i64 0, !dbg !804
  store i32 %68, ptr %73, align 4, !dbg !804
  %74 = load ptr, ptr %2, align 8, !dbg !804
  %75 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %74, i32 0, i32 0, !dbg !804
  %76 = load ptr, ptr %75, align 8, !dbg !804
  %77 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %76, i32 0, i32 6, !dbg !804
  %78 = getelementptr inbounds [8 x i32], ptr %77, i64 0, i64 1, !dbg !804
  store i32 10, ptr %78, align 4, !dbg !804
  %79 = load ptr, ptr %2, align 8, !dbg !804
  %80 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %79, i32 0, i32 0, !dbg !804
  %81 = load ptr, ptr %80, align 8, !dbg !804
  %82 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %81, i32 0, i32 0, !dbg !804
  %83 = load ptr, ptr %82, align 8, !dbg !804
  %84 = load ptr, ptr %2, align 8, !dbg !804
  call void %83(ptr noundef %84), !dbg !804
  br label %85, !dbg !804

85:                                               ; preds = %61, %56
  %86 = load ptr, ptr %2, align 8, !dbg !805
  %87 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %86, i32 0, i32 57, !dbg !806
  store i32 1, ptr %87, align 4, !dbg !807
  %88 = load ptr, ptr %2, align 8, !dbg !808
  %89 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %88, i32 0, i32 58, !dbg !809
  store i32 1, ptr %89, align 8, !dbg !810
  store i32 0, ptr %3, align 4, !dbg !811
  %90 = load ptr, ptr %2, align 8, !dbg !813
  %91 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %90, i32 0, i32 43, !dbg !814
  %92 = load ptr, ptr %91, align 8, !dbg !814
  store ptr %92, ptr %4, align 8, !dbg !815
  br label %93, !dbg !816

93:                                               ; preds = %169, %85
  %94 = load i32, ptr %3, align 4, !dbg !817
  %95 = load ptr, ptr %2, align 8, !dbg !819
  %96 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %95, i32 0, i32 8, !dbg !820
  %97 = load i32, ptr %96, align 8, !dbg !820
  %98 = icmp slt i32 %94, %97, !dbg !821
  br i1 %98, label %99, label %174, !dbg !822

99:                                               ; preds = %93
  %100 = load ptr, ptr %4, align 8, !dbg !823
  %101 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %100, i32 0, i32 2, !dbg !826
  %102 = load i32, ptr %101, align 8, !dbg !826
  %103 = icmp sle i32 %102, 0, !dbg !827
  br i1 %103, label %119, label %104, !dbg !828

104:                                              ; preds = %99
  %105 = load ptr, ptr %4, align 8, !dbg !829
  %106 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %105, i32 0, i32 2, !dbg !830
  %107 = load i32, ptr %106, align 8, !dbg !830
  %108 = icmp sgt i32 %107, 4, !dbg !831
  br i1 %108, label %119, label %109, !dbg !832

109:                                              ; preds = %104
  %110 = load ptr, ptr %4, align 8, !dbg !833
  %111 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %110, i32 0, i32 3, !dbg !834
  %112 = load i32, ptr %111, align 4, !dbg !834
  %113 = icmp sle i32 %112, 0, !dbg !835
  br i1 %113, label %119, label %114, !dbg !836

114:                                              ; preds = %109
  %115 = load ptr, ptr %4, align 8, !dbg !837
  %116 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %115, i32 0, i32 3, !dbg !838
  %117 = load i32, ptr %116, align 4, !dbg !838
  %118 = icmp sgt i32 %117, 4, !dbg !839
  br i1 %118, label %119, label %130, !dbg !836

119:                                              ; preds = %114, %109, %104, %99
  %120 = load ptr, ptr %2, align 8, !dbg !840
  %121 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %120, i32 0, i32 0, !dbg !840
  %122 = load ptr, ptr %121, align 8, !dbg !840
  %123 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %122, i32 0, i32 5, !dbg !840
  store i32 16, ptr %123, align 8, !dbg !840
  %124 = load ptr, ptr %2, align 8, !dbg !840
  %125 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %124, i32 0, i32 0, !dbg !840
  %126 = load ptr, ptr %125, align 8, !dbg !840
  %127 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %126, i32 0, i32 0, !dbg !840
  %128 = load ptr, ptr %127, align 8, !dbg !840
  %129 = load ptr, ptr %2, align 8, !dbg !840
  call void %128(ptr noundef %129), !dbg !840
  br label %130, !dbg !840

130:                                              ; preds = %119, %114
  %131 = load ptr, ptr %2, align 8, !dbg !841
  %132 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %131, i32 0, i32 57, !dbg !841
  %133 = load i32, ptr %132, align 4, !dbg !841
  %134 = load ptr, ptr %4, align 8, !dbg !841
  %135 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %134, i32 0, i32 2, !dbg !841
  %136 = load i32, ptr %135, align 8, !dbg !841
  %137 = icmp sgt i32 %133, %136, !dbg !841
  br i1 %137, label %138, label %142, !dbg !841

138:                                              ; preds = %130
  %139 = load ptr, ptr %2, align 8, !dbg !841
  %140 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %139, i32 0, i32 57, !dbg !841
  %141 = load i32, ptr %140, align 4, !dbg !841
  br label %146, !dbg !841

142:                                              ; preds = %130
  %143 = load ptr, ptr %4, align 8, !dbg !841
  %144 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %143, i32 0, i32 2, !dbg !841
  %145 = load i32, ptr %144, align 8, !dbg !841
  br label %146, !dbg !841

146:                                              ; preds = %142, %138
  %147 = phi i32 [ %141, %138 ], [ %145, %142 ], !dbg !841
  %148 = load ptr, ptr %2, align 8, !dbg !842
  %149 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %148, i32 0, i32 57, !dbg !843
  store i32 %147, ptr %149, align 4, !dbg !844
  %150 = load ptr, ptr %2, align 8, !dbg !845
  %151 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %150, i32 0, i32 58, !dbg !845
  %152 = load i32, ptr %151, align 8, !dbg !845
  %153 = load ptr, ptr %4, align 8, !dbg !845
  %154 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %153, i32 0, i32 3, !dbg !845
  %155 = load i32, ptr %154, align 4, !dbg !845
  %156 = icmp sgt i32 %152, %155, !dbg !845
  br i1 %156, label %157, label %161, !dbg !845

157:                                              ; preds = %146
  %158 = load ptr, ptr %2, align 8, !dbg !845
  %159 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %158, i32 0, i32 58, !dbg !845
  %160 = load i32, ptr %159, align 8, !dbg !845
  br label %165, !dbg !845

161:                                              ; preds = %146
  %162 = load ptr, ptr %4, align 8, !dbg !845
  %163 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %162, i32 0, i32 3, !dbg !845
  %164 = load i32, ptr %163, align 4, !dbg !845
  br label %165, !dbg !845

165:                                              ; preds = %161, %157
  %166 = phi i32 [ %160, %157 ], [ %164, %161 ], !dbg !845
  %167 = load ptr, ptr %2, align 8, !dbg !846
  %168 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %167, i32 0, i32 58, !dbg !847
  store i32 %166, ptr %168, align 8, !dbg !848
  br label %169, !dbg !849

169:                                              ; preds = %165
  %170 = load i32, ptr %3, align 4, !dbg !850
  %171 = add nsw i32 %170, 1, !dbg !850
  store i32 %171, ptr %3, align 4, !dbg !850
  %172 = load ptr, ptr %4, align 8, !dbg !851
  %173 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %172, i32 1, !dbg !851
  store ptr %173, ptr %4, align 8, !dbg !851
  br label %93, !dbg !852, !llvm.loop !853

174:                                              ; preds = %93
  %175 = load ptr, ptr %2, align 8, !dbg !856
  %176 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %175, i32 0, i32 59, !dbg !857
  store i32 8, ptr %176, align 4, !dbg !858
  store i32 0, ptr %3, align 4, !dbg !859
  %177 = load ptr, ptr %2, align 8, !dbg !861
  %178 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %177, i32 0, i32 43, !dbg !862
  %179 = load ptr, ptr %178, align 8, !dbg !862
  store ptr %179, ptr %4, align 8, !dbg !863
  br label %180, !dbg !864

180:                                              ; preds = %263, %174
  %181 = load i32, ptr %3, align 4, !dbg !865
  %182 = load ptr, ptr %2, align 8, !dbg !867
  %183 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %182, i32 0, i32 8, !dbg !868
  %184 = load i32, ptr %183, align 8, !dbg !868
  %185 = icmp slt i32 %181, %184, !dbg !869
  br i1 %185, label %186, label %268, !dbg !870

186:                                              ; preds = %180
  %187 = load ptr, ptr %4, align 8, !dbg !871
  %188 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %187, i32 0, i32 9, !dbg !873
  store i32 8, ptr %188, align 4, !dbg !874
  %189 = load ptr, ptr %2, align 8, !dbg !875
  %190 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %189, i32 0, i32 6, !dbg !876
  %191 = load i32, ptr %190, align 8, !dbg !876
  %192 = zext i32 %191 to i64, !dbg !877
  %193 = load ptr, ptr %4, align 8, !dbg !878
  %194 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %193, i32 0, i32 2, !dbg !879
  %195 = load i32, ptr %194, align 8, !dbg !879
  %196 = sext i32 %195 to i64, !dbg !880
  %197 = mul nsw i64 %192, %196, !dbg !881
  %198 = load ptr, ptr %2, align 8, !dbg !882
  %199 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %198, i32 0, i32 57, !dbg !883
  %200 = load i32, ptr %199, align 4, !dbg !883
  %201 = mul nsw i32 %200, 8, !dbg !884
  %202 = sext i32 %201 to i64, !dbg !885
  %203 = call i64 @jdiv_round_up(i64 noundef %197, i64 noundef %202), !dbg !886
  %204 = trunc i64 %203 to i32, !dbg !887
  %205 = load ptr, ptr %4, align 8, !dbg !888
  %206 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %205, i32 0, i32 7, !dbg !889
  store i32 %204, ptr %206, align 4, !dbg !890
  %207 = load ptr, ptr %2, align 8, !dbg !891
  %208 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %207, i32 0, i32 7, !dbg !892
  %209 = load i32, ptr %208, align 4, !dbg !892
  %210 = zext i32 %209 to i64, !dbg !893
  %211 = load ptr, ptr %4, align 8, !dbg !894
  %212 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %211, i32 0, i32 3, !dbg !895
  %213 = load i32, ptr %212, align 4, !dbg !895
  %214 = sext i32 %213 to i64, !dbg !896
  %215 = mul nsw i64 %210, %214, !dbg !897
  %216 = load ptr, ptr %2, align 8, !dbg !898
  %217 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %216, i32 0, i32 58, !dbg !899
  %218 = load i32, ptr %217, align 8, !dbg !899
  %219 = mul nsw i32 %218, 8, !dbg !900
  %220 = sext i32 %219 to i64, !dbg !901
  %221 = call i64 @jdiv_round_up(i64 noundef %215, i64 noundef %220), !dbg !902
  %222 = trunc i64 %221 to i32, !dbg !903
  %223 = load ptr, ptr %4, align 8, !dbg !904
  %224 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %223, i32 0, i32 8, !dbg !905
  store i32 %222, ptr %224, align 8, !dbg !906
  %225 = load ptr, ptr %2, align 8, !dbg !907
  %226 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %225, i32 0, i32 6, !dbg !908
  %227 = load i32, ptr %226, align 8, !dbg !908
  %228 = zext i32 %227 to i64, !dbg !909
  %229 = load ptr, ptr %4, align 8, !dbg !910
  %230 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %229, i32 0, i32 2, !dbg !911
  %231 = load i32, ptr %230, align 8, !dbg !911
  %232 = sext i32 %231 to i64, !dbg !912
  %233 = mul nsw i64 %228, %232, !dbg !913
  %234 = load ptr, ptr %2, align 8, !dbg !914
  %235 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %234, i32 0, i32 57, !dbg !915
  %236 = load i32, ptr %235, align 4, !dbg !915
  %237 = sext i32 %236 to i64, !dbg !916
  %238 = call i64 @jdiv_round_up(i64 noundef %233, i64 noundef %237), !dbg !917
  %239 = trunc i64 %238 to i32, !dbg !918
  %240 = load ptr, ptr %4, align 8, !dbg !919
  %241 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %240, i32 0, i32 10, !dbg !920
  store i32 %239, ptr %241, align 8, !dbg !921
  %242 = load ptr, ptr %2, align 8, !dbg !922
  %243 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %242, i32 0, i32 7, !dbg !923
  %244 = load i32, ptr %243, align 4, !dbg !923
  %245 = zext i32 %244 to i64, !dbg !924
  %246 = load ptr, ptr %4, align 8, !dbg !925
  %247 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %246, i32 0, i32 3, !dbg !926
  %248 = load i32, ptr %247, align 4, !dbg !926
  %249 = sext i32 %248 to i64, !dbg !927
  %250 = mul nsw i64 %245, %249, !dbg !928
  %251 = load ptr, ptr %2, align 8, !dbg !929
  %252 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %251, i32 0, i32 58, !dbg !930
  %253 = load i32, ptr %252, align 8, !dbg !930
  %254 = sext i32 %253 to i64, !dbg !931
  %255 = call i64 @jdiv_round_up(i64 noundef %250, i64 noundef %254), !dbg !932
  %256 = trunc i64 %255 to i32, !dbg !933
  %257 = load ptr, ptr %4, align 8, !dbg !934
  %258 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %257, i32 0, i32 11, !dbg !935
  store i32 %256, ptr %258, align 4, !dbg !936
  %259 = load ptr, ptr %4, align 8, !dbg !937
  %260 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %259, i32 0, i32 12, !dbg !938
  store i32 1, ptr %260, align 8, !dbg !939
  %261 = load ptr, ptr %4, align 8, !dbg !940
  %262 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %261, i32 0, i32 19, !dbg !941
  store ptr null, ptr %262, align 8, !dbg !942
  br label %263, !dbg !943

263:                                              ; preds = %186
  %264 = load i32, ptr %3, align 4, !dbg !944
  %265 = add nsw i32 %264, 1, !dbg !944
  store i32 %265, ptr %3, align 4, !dbg !944
  %266 = load ptr, ptr %4, align 8, !dbg !945
  %267 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %266, i32 1, !dbg !945
  store ptr %267, ptr %4, align 8, !dbg !945
  br label %180, !dbg !946, !llvm.loop !947

268:                                              ; preds = %180
  %269 = load ptr, ptr %2, align 8, !dbg !949
  %270 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %269, i32 0, i32 7, !dbg !950
  %271 = load i32, ptr %270, align 4, !dbg !950
  %272 = zext i32 %271 to i64, !dbg !951
  %273 = load ptr, ptr %2, align 8, !dbg !952
  %274 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %273, i32 0, i32 58, !dbg !953
  %275 = load i32, ptr %274, align 8, !dbg !953
  %276 = mul nsw i32 %275, 8, !dbg !954
  %277 = sext i32 %276 to i64, !dbg !955
  %278 = call i64 @jdiv_round_up(i64 noundef %272, i64 noundef %277), !dbg !956
  %279 = trunc i64 %278 to i32, !dbg !957
  %280 = load ptr, ptr %2, align 8, !dbg !958
  %281 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %280, i32 0, i32 60, !dbg !959
  store i32 %279, ptr %281, align 8, !dbg !960
  %282 = load ptr, ptr %2, align 8, !dbg !961
  %283 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %282, i32 0, i32 62, !dbg !963
  %284 = load i32, ptr %283, align 8, !dbg !963
  %285 = load ptr, ptr %2, align 8, !dbg !964
  %286 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %285, i32 0, i32 8, !dbg !965
  %287 = load i32, ptr %286, align 8, !dbg !965
  %288 = icmp slt i32 %284, %287, !dbg !966
  br i1 %288, label %294, label %289, !dbg !967

289:                                              ; preds = %268
  %290 = load ptr, ptr %2, align 8, !dbg !968
  %291 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %290, i32 0, i32 44, !dbg !969
  %292 = load i32, ptr %291, align 8, !dbg !969
  %293 = icmp ne i32 %292, 0, !dbg !968
  br i1 %293, label %294, label %299, !dbg !967

294:                                              ; preds = %289, %268
  %295 = load ptr, ptr %2, align 8, !dbg !970
  %296 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %295, i32 0, i32 77, !dbg !971
  %297 = load ptr, ptr %296, align 8, !dbg !971
  %298 = getelementptr inbounds nuw %struct.jpeg_input_controller, ptr %297, i32 0, i32 4, !dbg !972
  store i32 1, ptr %298, align 8, !dbg !973
  br label %304, !dbg !970

299:                                              ; preds = %289
  %300 = load ptr, ptr %2, align 8, !dbg !974
  %301 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %300, i32 0, i32 77, !dbg !975
  %302 = load ptr, ptr %301, align 8, !dbg !975
  %303 = getelementptr inbounds nuw %struct.jpeg_input_controller, ptr %302, i32 0, i32 4, !dbg !976
  store i32 0, ptr %303, align 8, !dbg !977
  br label %304

304:                                              ; preds = %299, %294
  ret void, !dbg !978
}

declare i64 @jdiv_round_up(i64 noundef, i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @per_scan_setup(ptr noundef %0) #0 !dbg !979 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !980, !DIExpression(), !981)
    #dbg_declare(ptr %3, !982, !DIExpression(), !983)
    #dbg_declare(ptr %4, !984, !DIExpression(), !985)
    #dbg_declare(ptr %5, !986, !DIExpression(), !987)
    #dbg_declare(ptr %6, !988, !DIExpression(), !989)
  %7 = load ptr, ptr %2, align 8, !dbg !990
  %8 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %7, i32 0, i32 62, !dbg !992
  %9 = load i32, ptr %8, align 8, !dbg !992
  %10 = icmp eq i32 %9, 1, !dbg !993
  br i1 %10, label %11, label %61, !dbg !993

11:                                               ; preds = %1
  %12 = load ptr, ptr %2, align 8, !dbg !994
  %13 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %12, i32 0, i32 63, !dbg !996
  %14 = getelementptr inbounds [4 x ptr], ptr %13, i64 0, i64 0, !dbg !994
  %15 = load ptr, ptr %14, align 8, !dbg !994
  store ptr %15, ptr %6, align 8, !dbg !997
  %16 = load ptr, ptr %6, align 8, !dbg !998
  %17 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %16, i32 0, i32 7, !dbg !999
  %18 = load i32, ptr %17, align 4, !dbg !999
  %19 = load ptr, ptr %2, align 8, !dbg !1000
  %20 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %19, i32 0, i32 64, !dbg !1001
  store i32 %18, ptr %20, align 8, !dbg !1002
  %21 = load ptr, ptr %6, align 8, !dbg !1003
  %22 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %21, i32 0, i32 8, !dbg !1004
  %23 = load i32, ptr %22, align 8, !dbg !1004
  %24 = load ptr, ptr %2, align 8, !dbg !1005
  %25 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %24, i32 0, i32 65, !dbg !1006
  store i32 %23, ptr %25, align 4, !dbg !1007
  %26 = load ptr, ptr %6, align 8, !dbg !1008
  %27 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %26, i32 0, i32 13, !dbg !1009
  store i32 1, ptr %27, align 4, !dbg !1010
  %28 = load ptr, ptr %6, align 8, !dbg !1011
  %29 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %28, i32 0, i32 14, !dbg !1012
  store i32 1, ptr %29, align 8, !dbg !1013
  %30 = load ptr, ptr %6, align 8, !dbg !1014
  %31 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %30, i32 0, i32 15, !dbg !1015
  store i32 1, ptr %31, align 4, !dbg !1016
  %32 = load ptr, ptr %6, align 8, !dbg !1017
  %33 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %32, i32 0, i32 9, !dbg !1018
  %34 = load i32, ptr %33, align 4, !dbg !1018
  %35 = load ptr, ptr %6, align 8, !dbg !1019
  %36 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %35, i32 0, i32 16, !dbg !1020
  store i32 %34, ptr %36, align 8, !dbg !1021
  %37 = load ptr, ptr %6, align 8, !dbg !1022
  %38 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %37, i32 0, i32 17, !dbg !1023
  store i32 1, ptr %38, align 4, !dbg !1024
  %39 = load ptr, ptr %6, align 8, !dbg !1025
  %40 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %39, i32 0, i32 8, !dbg !1026
  %41 = load i32, ptr %40, align 8, !dbg !1026
  %42 = load ptr, ptr %6, align 8, !dbg !1027
  %43 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %42, i32 0, i32 3, !dbg !1028
  %44 = load i32, ptr %43, align 4, !dbg !1028
  %45 = urem i32 %41, %44, !dbg !1029
  store i32 %45, ptr %5, align 4, !dbg !1030
  %46 = load i32, ptr %5, align 4, !dbg !1031
  %47 = icmp eq i32 %46, 0, !dbg !1033
  br i1 %47, label %48, label %52, !dbg !1033

48:                                               ; preds = %11
  %49 = load ptr, ptr %6, align 8, !dbg !1034
  %50 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %49, i32 0, i32 3, !dbg !1035
  %51 = load i32, ptr %50, align 4, !dbg !1035
  store i32 %51, ptr %5, align 4, !dbg !1036
  br label %52, !dbg !1037

52:                                               ; preds = %48, %11
  %53 = load i32, ptr %5, align 4, !dbg !1038
  %54 = load ptr, ptr %6, align 8, !dbg !1039
  %55 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %54, i32 0, i32 18, !dbg !1040
  store i32 %53, ptr %55, align 8, !dbg !1041
  %56 = load ptr, ptr %2, align 8, !dbg !1042
  %57 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %56, i32 0, i32 66, !dbg !1043
  store i32 1, ptr %57, align 8, !dbg !1044
  %58 = load ptr, ptr %2, align 8, !dbg !1045
  %59 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %58, i32 0, i32 67, !dbg !1046
  %60 = getelementptr inbounds [10 x i32], ptr %59, i64 0, i64 0, !dbg !1045
  store i32 0, ptr %60, align 4, !dbg !1047
  br label %239, !dbg !1048

61:                                               ; preds = %1
  %62 = load ptr, ptr %2, align 8, !dbg !1049
  %63 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %62, i32 0, i32 62, !dbg !1052
  %64 = load i32, ptr %63, align 8, !dbg !1052
  %65 = icmp sle i32 %64, 0, !dbg !1053
  br i1 %65, label %71, label %66, !dbg !1054

66:                                               ; preds = %61
  %67 = load ptr, ptr %2, align 8, !dbg !1055
  %68 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %67, i32 0, i32 62, !dbg !1056
  %69 = load i32, ptr %68, align 8, !dbg !1056
  %70 = icmp sgt i32 %69, 4, !dbg !1057
  br i1 %70, label %71, label %95, !dbg !1054

71:                                               ; preds = %66, %61
  %72 = load ptr, ptr %2, align 8, !dbg !1058
  %73 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %72, i32 0, i32 0, !dbg !1058
  %74 = load ptr, ptr %73, align 8, !dbg !1058
  %75 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %74, i32 0, i32 5, !dbg !1058
  store i32 24, ptr %75, align 8, !dbg !1058
  %76 = load ptr, ptr %2, align 8, !dbg !1058
  %77 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %76, i32 0, i32 62, !dbg !1058
  %78 = load i32, ptr %77, align 8, !dbg !1058
  %79 = load ptr, ptr %2, align 8, !dbg !1058
  %80 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %79, i32 0, i32 0, !dbg !1058
  %81 = load ptr, ptr %80, align 8, !dbg !1058
  %82 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %81, i32 0, i32 6, !dbg !1058
  %83 = getelementptr inbounds [8 x i32], ptr %82, i64 0, i64 0, !dbg !1058
  store i32 %78, ptr %83, align 4, !dbg !1058
  %84 = load ptr, ptr %2, align 8, !dbg !1058
  %85 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %84, i32 0, i32 0, !dbg !1058
  %86 = load ptr, ptr %85, align 8, !dbg !1058
  %87 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %86, i32 0, i32 6, !dbg !1058
  %88 = getelementptr inbounds [8 x i32], ptr %87, i64 0, i64 1, !dbg !1058
  store i32 4, ptr %88, align 4, !dbg !1058
  %89 = load ptr, ptr %2, align 8, !dbg !1058
  %90 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %89, i32 0, i32 0, !dbg !1058
  %91 = load ptr, ptr %90, align 8, !dbg !1058
  %92 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %91, i32 0, i32 0, !dbg !1058
  %93 = load ptr, ptr %92, align 8, !dbg !1058
  %94 = load ptr, ptr %2, align 8, !dbg !1058
  call void %93(ptr noundef %94), !dbg !1058
  br label %95, !dbg !1058

95:                                               ; preds = %71, %66
  %96 = load ptr, ptr %2, align 8, !dbg !1059
  %97 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %96, i32 0, i32 6, !dbg !1060
  %98 = load i32, ptr %97, align 8, !dbg !1060
  %99 = zext i32 %98 to i64, !dbg !1061
  %100 = load ptr, ptr %2, align 8, !dbg !1062
  %101 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %100, i32 0, i32 57, !dbg !1063
  %102 = load i32, ptr %101, align 4, !dbg !1063
  %103 = mul nsw i32 %102, 8, !dbg !1064
  %104 = sext i32 %103 to i64, !dbg !1065
  %105 = call i64 @jdiv_round_up(i64 noundef %99, i64 noundef %104), !dbg !1066
  %106 = trunc i64 %105 to i32, !dbg !1067
  %107 = load ptr, ptr %2, align 8, !dbg !1068
  %108 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %107, i32 0, i32 64, !dbg !1069
  store i32 %106, ptr %108, align 8, !dbg !1070
  %109 = load ptr, ptr %2, align 8, !dbg !1071
  %110 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %109, i32 0, i32 7, !dbg !1072
  %111 = load i32, ptr %110, align 4, !dbg !1072
  %112 = zext i32 %111 to i64, !dbg !1073
  %113 = load ptr, ptr %2, align 8, !dbg !1074
  %114 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %113, i32 0, i32 58, !dbg !1075
  %115 = load i32, ptr %114, align 8, !dbg !1075
  %116 = mul nsw i32 %115, 8, !dbg !1076
  %117 = sext i32 %116 to i64, !dbg !1077
  %118 = call i64 @jdiv_round_up(i64 noundef %112, i64 noundef %117), !dbg !1078
  %119 = trunc i64 %118 to i32, !dbg !1079
  %120 = load ptr, ptr %2, align 8, !dbg !1080
  %121 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %120, i32 0, i32 65, !dbg !1081
  store i32 %119, ptr %121, align 4, !dbg !1082
  %122 = load ptr, ptr %2, align 8, !dbg !1083
  %123 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %122, i32 0, i32 66, !dbg !1084
  store i32 0, ptr %123, align 8, !dbg !1085
  store i32 0, ptr %3, align 4, !dbg !1086
  br label %124, !dbg !1088

124:                                              ; preds = %235, %95
  %125 = load i32, ptr %3, align 4, !dbg !1089
  %126 = load ptr, ptr %2, align 8, !dbg !1091
  %127 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %126, i32 0, i32 62, !dbg !1092
  %128 = load i32, ptr %127, align 8, !dbg !1092
  %129 = icmp slt i32 %125, %128, !dbg !1093
  br i1 %129, label %130, label %238, !dbg !1094

130:                                              ; preds = %124
  %131 = load ptr, ptr %2, align 8, !dbg !1095
  %132 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %131, i32 0, i32 63, !dbg !1097
  %133 = load i32, ptr %3, align 4, !dbg !1098
  %134 = sext i32 %133 to i64, !dbg !1095
  %135 = getelementptr inbounds [4 x ptr], ptr %132, i64 0, i64 %134, !dbg !1095
  %136 = load ptr, ptr %135, align 8, !dbg !1095
  store ptr %136, ptr %6, align 8, !dbg !1099
  %137 = load ptr, ptr %6, align 8, !dbg !1100
  %138 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %137, i32 0, i32 2, !dbg !1101
  %139 = load i32, ptr %138, align 8, !dbg !1101
  %140 = load ptr, ptr %6, align 8, !dbg !1102
  %141 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %140, i32 0, i32 13, !dbg !1103
  store i32 %139, ptr %141, align 4, !dbg !1104
  %142 = load ptr, ptr %6, align 8, !dbg !1105
  %143 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %142, i32 0, i32 3, !dbg !1106
  %144 = load i32, ptr %143, align 4, !dbg !1106
  %145 = load ptr, ptr %6, align 8, !dbg !1107
  %146 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %145, i32 0, i32 14, !dbg !1108
  store i32 %144, ptr %146, align 8, !dbg !1109
  %147 = load ptr, ptr %6, align 8, !dbg !1110
  %148 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %147, i32 0, i32 13, !dbg !1111
  %149 = load i32, ptr %148, align 4, !dbg !1111
  %150 = load ptr, ptr %6, align 8, !dbg !1112
  %151 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %150, i32 0, i32 14, !dbg !1113
  %152 = load i32, ptr %151, align 8, !dbg !1113
  %153 = mul nsw i32 %149, %152, !dbg !1114
  %154 = load ptr, ptr %6, align 8, !dbg !1115
  %155 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %154, i32 0, i32 15, !dbg !1116
  store i32 %153, ptr %155, align 4, !dbg !1117
  %156 = load ptr, ptr %6, align 8, !dbg !1118
  %157 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %156, i32 0, i32 13, !dbg !1119
  %158 = load i32, ptr %157, align 4, !dbg !1119
  %159 = load ptr, ptr %6, align 8, !dbg !1120
  %160 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %159, i32 0, i32 9, !dbg !1121
  %161 = load i32, ptr %160, align 4, !dbg !1121
  %162 = mul nsw i32 %158, %161, !dbg !1122
  %163 = load ptr, ptr %6, align 8, !dbg !1123
  %164 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %163, i32 0, i32 16, !dbg !1124
  store i32 %162, ptr %164, align 8, !dbg !1125
  %165 = load ptr, ptr %6, align 8, !dbg !1126
  %166 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %165, i32 0, i32 7, !dbg !1127
  %167 = load i32, ptr %166, align 4, !dbg !1127
  %168 = load ptr, ptr %6, align 8, !dbg !1128
  %169 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %168, i32 0, i32 13, !dbg !1129
  %170 = load i32, ptr %169, align 4, !dbg !1129
  %171 = urem i32 %167, %170, !dbg !1130
  store i32 %171, ptr %5, align 4, !dbg !1131
  %172 = load i32, ptr %5, align 4, !dbg !1132
  %173 = icmp eq i32 %172, 0, !dbg !1134
  br i1 %173, label %174, label %178, !dbg !1134

174:                                              ; preds = %130
  %175 = load ptr, ptr %6, align 8, !dbg !1135
  %176 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %175, i32 0, i32 13, !dbg !1136
  %177 = load i32, ptr %176, align 4, !dbg !1136
  store i32 %177, ptr %5, align 4, !dbg !1137
  br label %178, !dbg !1138

178:                                              ; preds = %174, %130
  %179 = load i32, ptr %5, align 4, !dbg !1139
  %180 = load ptr, ptr %6, align 8, !dbg !1140
  %181 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %180, i32 0, i32 17, !dbg !1141
  store i32 %179, ptr %181, align 4, !dbg !1142
  %182 = load ptr, ptr %6, align 8, !dbg !1143
  %183 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %182, i32 0, i32 8, !dbg !1144
  %184 = load i32, ptr %183, align 8, !dbg !1144
  %185 = load ptr, ptr %6, align 8, !dbg !1145
  %186 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %185, i32 0, i32 14, !dbg !1146
  %187 = load i32, ptr %186, align 8, !dbg !1146
  %188 = urem i32 %184, %187, !dbg !1147
  store i32 %188, ptr %5, align 4, !dbg !1148
  %189 = load i32, ptr %5, align 4, !dbg !1149
  %190 = icmp eq i32 %189, 0, !dbg !1151
  br i1 %190, label %191, label %195, !dbg !1151

191:                                              ; preds = %178
  %192 = load ptr, ptr %6, align 8, !dbg !1152
  %193 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %192, i32 0, i32 14, !dbg !1153
  %194 = load i32, ptr %193, align 8, !dbg !1153
  store i32 %194, ptr %5, align 4, !dbg !1154
  br label %195, !dbg !1155

195:                                              ; preds = %191, %178
  %196 = load i32, ptr %5, align 4, !dbg !1156
  %197 = load ptr, ptr %6, align 8, !dbg !1157
  %198 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %197, i32 0, i32 18, !dbg !1158
  store i32 %196, ptr %198, align 8, !dbg !1159
  %199 = load ptr, ptr %6, align 8, !dbg !1160
  %200 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %199, i32 0, i32 15, !dbg !1161
  %201 = load i32, ptr %200, align 4, !dbg !1161
  store i32 %201, ptr %4, align 4, !dbg !1162
  %202 = load ptr, ptr %2, align 8, !dbg !1163
  %203 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %202, i32 0, i32 66, !dbg !1165
  %204 = load i32, ptr %203, align 8, !dbg !1165
  %205 = load i32, ptr %4, align 4, !dbg !1166
  %206 = add nsw i32 %204, %205, !dbg !1167
  %207 = icmp sgt i32 %206, 10, !dbg !1168
  br i1 %207, label %208, label %219, !dbg !1168

208:                                              ; preds = %195
  %209 = load ptr, ptr %2, align 8, !dbg !1169
  %210 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %209, i32 0, i32 0, !dbg !1169
  %211 = load ptr, ptr %210, align 8, !dbg !1169
  %212 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %211, i32 0, i32 5, !dbg !1169
  store i32 11, ptr %212, align 8, !dbg !1169
  %213 = load ptr, ptr %2, align 8, !dbg !1169
  %214 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %213, i32 0, i32 0, !dbg !1169
  %215 = load ptr, ptr %214, align 8, !dbg !1169
  %216 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %215, i32 0, i32 0, !dbg !1169
  %217 = load ptr, ptr %216, align 8, !dbg !1169
  %218 = load ptr, ptr %2, align 8, !dbg !1169
  call void %217(ptr noundef %218), !dbg !1169
  br label %219, !dbg !1169

219:                                              ; preds = %208, %195
  br label %220, !dbg !1170

220:                                              ; preds = %224, %219
  %221 = load i32, ptr %4, align 4, !dbg !1171
  %222 = add nsw i32 %221, -1, !dbg !1171
  store i32 %222, ptr %4, align 4, !dbg !1171
  %223 = icmp sgt i32 %221, 0, !dbg !1172
  br i1 %223, label %224, label %234, !dbg !1170

224:                                              ; preds = %220
  %225 = load i32, ptr %3, align 4, !dbg !1173
  %226 = load ptr, ptr %2, align 8, !dbg !1175
  %227 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %226, i32 0, i32 67, !dbg !1176
  %228 = load ptr, ptr %2, align 8, !dbg !1177
  %229 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %228, i32 0, i32 66, !dbg !1178
  %230 = load i32, ptr %229, align 8, !dbg !1179
  %231 = add nsw i32 %230, 1, !dbg !1179
  store i32 %231, ptr %229, align 8, !dbg !1179
  %232 = sext i32 %230 to i64, !dbg !1175
  %233 = getelementptr inbounds [10 x i32], ptr %227, i64 0, i64 %232, !dbg !1175
  store i32 %225, ptr %233, align 4, !dbg !1180
  br label %220, !dbg !1170, !llvm.loop !1181

234:                                              ; preds = %220
  br label %235, !dbg !1183

235:                                              ; preds = %234
  %236 = load i32, ptr %3, align 4, !dbg !1184
  %237 = add nsw i32 %236, 1, !dbg !1184
  store i32 %237, ptr %3, align 4, !dbg !1184
  br label %124, !dbg !1185, !llvm.loop !1186

238:                                              ; preds = %124
  br label %239

239:                                              ; preds = %238, %52
  ret void, !dbg !1188
}

; Function Attrs: noinline nounwind uwtable
define internal void @latch_quant_tables(ptr noundef %0) #0 !dbg !1189 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !1190, !DIExpression(), !1191)
    #dbg_declare(ptr %3, !1192, !DIExpression(), !1193)
    #dbg_declare(ptr %4, !1194, !DIExpression(), !1195)
    #dbg_declare(ptr %5, !1196, !DIExpression(), !1197)
    #dbg_declare(ptr %6, !1198, !DIExpression(), !1199)
  store i32 0, ptr %3, align 4, !dbg !1200
  br label %7, !dbg !1202

7:                                                ; preds = %77, %1
  %8 = load i32, ptr %3, align 4, !dbg !1203
  %9 = load ptr, ptr %2, align 8, !dbg !1205
  %10 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %9, i32 0, i32 62, !dbg !1206
  %11 = load i32, ptr %10, align 8, !dbg !1206
  %12 = icmp slt i32 %8, %11, !dbg !1207
  br i1 %12, label %13, label %80, !dbg !1208

13:                                               ; preds = %7
  %14 = load ptr, ptr %2, align 8, !dbg !1209
  %15 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %14, i32 0, i32 63, !dbg !1211
  %16 = load i32, ptr %3, align 4, !dbg !1212
  %17 = sext i32 %16 to i64, !dbg !1209
  %18 = getelementptr inbounds [4 x ptr], ptr %15, i64 0, i64 %17, !dbg !1209
  %19 = load ptr, ptr %18, align 8, !dbg !1209
  store ptr %19, ptr %5, align 8, !dbg !1213
  %20 = load ptr, ptr %5, align 8, !dbg !1214
  %21 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %20, i32 0, i32 19, !dbg !1216
  %22 = load ptr, ptr %21, align 8, !dbg !1216
  %23 = icmp ne ptr %22, null, !dbg !1217
  br i1 %23, label %24, label %25, !dbg !1217

24:                                               ; preds = %13
  br label %77, !dbg !1218

25:                                               ; preds = %13
  %26 = load ptr, ptr %5, align 8, !dbg !1219
  %27 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %26, i32 0, i32 4, !dbg !1220
  %28 = load i32, ptr %27, align 8, !dbg !1220
  store i32 %28, ptr %4, align 4, !dbg !1221
  %29 = load i32, ptr %4, align 4, !dbg !1222
  %30 = icmp slt i32 %29, 0, !dbg !1224
  br i1 %30, label %42, label %31, !dbg !1225

31:                                               ; preds = %25
  %32 = load i32, ptr %4, align 4, !dbg !1226
  %33 = icmp sge i32 %32, 4, !dbg !1227
  br i1 %33, label %42, label %34, !dbg !1228

34:                                               ; preds = %31
  %35 = load ptr, ptr %2, align 8, !dbg !1229
  %36 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %35, i32 0, i32 39, !dbg !1230
  %37 = load i32, ptr %4, align 4, !dbg !1231
  %38 = sext i32 %37 to i64, !dbg !1229
  %39 = getelementptr inbounds [4 x ptr], ptr %36, i64 0, i64 %38, !dbg !1229
  %40 = load ptr, ptr %39, align 8, !dbg !1229
  %41 = icmp eq ptr %40, null, !dbg !1232
  br i1 %41, label %42, label %59, !dbg !1228

42:                                               ; preds = %34, %31, %25
  %43 = load ptr, ptr %2, align 8, !dbg !1233
  %44 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %43, i32 0, i32 0, !dbg !1233
  %45 = load ptr, ptr %44, align 8, !dbg !1233
  %46 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %45, i32 0, i32 5, !dbg !1233
  store i32 51, ptr %46, align 8, !dbg !1233
  %47 = load i32, ptr %4, align 4, !dbg !1233
  %48 = load ptr, ptr %2, align 8, !dbg !1233
  %49 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %48, i32 0, i32 0, !dbg !1233
  %50 = load ptr, ptr %49, align 8, !dbg !1233
  %51 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %50, i32 0, i32 6, !dbg !1233
  %52 = getelementptr inbounds [8 x i32], ptr %51, i64 0, i64 0, !dbg !1233
  store i32 %47, ptr %52, align 4, !dbg !1233
  %53 = load ptr, ptr %2, align 8, !dbg !1233
  %54 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %53, i32 0, i32 0, !dbg !1233
  %55 = load ptr, ptr %54, align 8, !dbg !1233
  %56 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %55, i32 0, i32 0, !dbg !1233
  %57 = load ptr, ptr %56, align 8, !dbg !1233
  %58 = load ptr, ptr %2, align 8, !dbg !1233
  call void %57(ptr noundef %58), !dbg !1233
  br label %59, !dbg !1233

59:                                               ; preds = %42, %34
  %60 = load ptr, ptr %2, align 8, !dbg !1234
  %61 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %60, i32 0, i32 1, !dbg !1235
  %62 = load ptr, ptr %61, align 8, !dbg !1235
  %63 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %62, i32 0, i32 0, !dbg !1236
  %64 = load ptr, ptr %63, align 8, !dbg !1236
  %65 = load ptr, ptr %2, align 8, !dbg !1237
  %66 = call ptr %64(ptr noundef %65, i32 noundef 1, i64 noundef 132), !dbg !1238
  store ptr %66, ptr %6, align 8, !dbg !1239
  %67 = load ptr, ptr %6, align 8, !dbg !1240
  %68 = load ptr, ptr %2, align 8, !dbg !1240
  %69 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %68, i32 0, i32 39, !dbg !1240
  %70 = load i32, ptr %4, align 4, !dbg !1240
  %71 = sext i32 %70 to i64, !dbg !1240
  %72 = getelementptr inbounds [4 x ptr], ptr %69, i64 0, i64 %71, !dbg !1240
  %73 = load ptr, ptr %72, align 8, !dbg !1240
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %67, ptr align 1 %73, i64 132, i1 false), !dbg !1240
  %74 = load ptr, ptr %6, align 8, !dbg !1241
  %75 = load ptr, ptr %5, align 8, !dbg !1242
  %76 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %75, i32 0, i32 19, !dbg !1243
  store ptr %74, ptr %76, align 8, !dbg !1244
  br label %77, !dbg !1245

77:                                               ; preds = %59, %24
  %78 = load i32, ptr %3, align 4, !dbg !1246
  %79 = add nsw i32 %78, 1, !dbg !1246
  store i32 %79, ptr %3, align 4, !dbg !1246
  br label %7, !dbg !1247, !llvm.loop !1248

80:                                               ; preds = %7
  ret void, !dbg !1250
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!582, !583, !584, !585, !586, !587, !588}
!llvm.ident = !{!589}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !154, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jdinput.c", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "fa84aa41b3cd397aab656a2127ec3c84")
!2 = !{!3, !13, !18, !23, !30}
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
!23 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !24, line: 16, baseType: !5, size: 32, elements: !25)
!24 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jpegint.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "87e9869e13f29b8e74a9dee50528c6c5")
!25 = !{!26, !27, !28, !29}
!26 = !DIEnumerator(name: "JBUF_PASS_THRU", value: 0)
!27 = !DIEnumerator(name: "JBUF_SAVE_SOURCE", value: 1)
!28 = !DIEnumerator(name: "JBUF_CRANK_DEST", value: 2)
!29 = !DIEnumerator(name: "JBUF_SAVE_AND_PASS", value: 3)
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !31, line: 33, baseType: !5, size: 32, elements: !32)
!31 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jerror.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "a232f2460ff0049c960896e323d8710b")
!32 = !{!33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153}
!33 = !DIEnumerator(name: "JMSG_NOMESSAGE", value: 0)
!34 = !DIEnumerator(name: "JERR_ARITH_NOTIMPL", value: 1)
!35 = !DIEnumerator(name: "JERR_BAD_ALIGN_TYPE", value: 2)
!36 = !DIEnumerator(name: "JERR_BAD_ALLOC_CHUNK", value: 3)
!37 = !DIEnumerator(name: "JERR_BAD_BUFFER_MODE", value: 4)
!38 = !DIEnumerator(name: "JERR_BAD_COMPONENT_ID", value: 5)
!39 = !DIEnumerator(name: "JERR_BAD_DCTSIZE", value: 6)
!40 = !DIEnumerator(name: "JERR_BAD_IN_COLORSPACE", value: 7)
!41 = !DIEnumerator(name: "JERR_BAD_J_COLORSPACE", value: 8)
!42 = !DIEnumerator(name: "JERR_BAD_LENGTH", value: 9)
!43 = !DIEnumerator(name: "JERR_BAD_LIB_VERSION", value: 10)
!44 = !DIEnumerator(name: "JERR_BAD_MCU_SIZE", value: 11)
!45 = !DIEnumerator(name: "JERR_BAD_POOL_ID", value: 12)
!46 = !DIEnumerator(name: "JERR_BAD_PRECISION", value: 13)
!47 = !DIEnumerator(name: "JERR_BAD_PROGRESSION", value: 14)
!48 = !DIEnumerator(name: "JERR_BAD_PROG_SCRIPT", value: 15)
!49 = !DIEnumerator(name: "JERR_BAD_SAMPLING", value: 16)
!50 = !DIEnumerator(name: "JERR_BAD_SCAN_SCRIPT", value: 17)
!51 = !DIEnumerator(name: "JERR_BAD_STATE", value: 18)
!52 = !DIEnumerator(name: "JERR_BAD_STRUCT_SIZE", value: 19)
!53 = !DIEnumerator(name: "JERR_BAD_VIRTUAL_ACCESS", value: 20)
!54 = !DIEnumerator(name: "JERR_BUFFER_SIZE", value: 21)
!55 = !DIEnumerator(name: "JERR_CANT_SUSPEND", value: 22)
!56 = !DIEnumerator(name: "JERR_CCIR601_NOTIMPL", value: 23)
!57 = !DIEnumerator(name: "JERR_COMPONENT_COUNT", value: 24)
!58 = !DIEnumerator(name: "JERR_CONVERSION_NOTIMPL", value: 25)
!59 = !DIEnumerator(name: "JERR_DAC_INDEX", value: 26)
!60 = !DIEnumerator(name: "JERR_DAC_VALUE", value: 27)
!61 = !DIEnumerator(name: "JERR_DHT_COUNTS", value: 28)
!62 = !DIEnumerator(name: "JERR_DHT_INDEX", value: 29)
!63 = !DIEnumerator(name: "JERR_DQT_INDEX", value: 30)
!64 = !DIEnumerator(name: "JERR_EMPTY_IMAGE", value: 31)
!65 = !DIEnumerator(name: "JERR_EMS_READ", value: 32)
!66 = !DIEnumerator(name: "JERR_EMS_WRITE", value: 33)
!67 = !DIEnumerator(name: "JERR_EOI_EXPECTED", value: 34)
!68 = !DIEnumerator(name: "JERR_FILE_READ", value: 35)
!69 = !DIEnumerator(name: "JERR_FILE_WRITE", value: 36)
!70 = !DIEnumerator(name: "JERR_FRACT_SAMPLE_NOTIMPL", value: 37)
!71 = !DIEnumerator(name: "JERR_HUFF_CLEN_OVERFLOW", value: 38)
!72 = !DIEnumerator(name: "JERR_HUFF_MISSING_CODE", value: 39)
!73 = !DIEnumerator(name: "JERR_IMAGE_TOO_BIG", value: 40)
!74 = !DIEnumerator(name: "JERR_INPUT_EMPTY", value: 41)
!75 = !DIEnumerator(name: "JERR_INPUT_EOF", value: 42)
!76 = !DIEnumerator(name: "JERR_MISMATCHED_QUANT_TABLE", value: 43)
!77 = !DIEnumerator(name: "JERR_MISSING_DATA", value: 44)
!78 = !DIEnumerator(name: "JERR_MODE_CHANGE", value: 45)
!79 = !DIEnumerator(name: "JERR_NOTIMPL", value: 46)
!80 = !DIEnumerator(name: "JERR_NOT_COMPILED", value: 47)
!81 = !DIEnumerator(name: "JERR_NO_BACKING_STORE", value: 48)
!82 = !DIEnumerator(name: "JERR_NO_HUFF_TABLE", value: 49)
!83 = !DIEnumerator(name: "JERR_NO_IMAGE", value: 50)
!84 = !DIEnumerator(name: "JERR_NO_QUANT_TABLE", value: 51)
!85 = !DIEnumerator(name: "JERR_NO_SOI", value: 52)
!86 = !DIEnumerator(name: "JERR_OUT_OF_MEMORY", value: 53)
!87 = !DIEnumerator(name: "JERR_QUANT_COMPONENTS", value: 54)
!88 = !DIEnumerator(name: "JERR_QUANT_FEW_COLORS", value: 55)
!89 = !DIEnumerator(name: "JERR_QUANT_MANY_COLORS", value: 56)
!90 = !DIEnumerator(name: "JERR_SOF_DUPLICATE", value: 57)
!91 = !DIEnumerator(name: "JERR_SOF_NO_SOS", value: 58)
!92 = !DIEnumerator(name: "JERR_SOF_UNSUPPORTED", value: 59)
!93 = !DIEnumerator(name: "JERR_SOI_DUPLICATE", value: 60)
!94 = !DIEnumerator(name: "JERR_SOS_NO_SOF", value: 61)
!95 = !DIEnumerator(name: "JERR_TFILE_CREATE", value: 62)
!96 = !DIEnumerator(name: "JERR_TFILE_READ", value: 63)
!97 = !DIEnumerator(name: "JERR_TFILE_SEEK", value: 64)
!98 = !DIEnumerator(name: "JERR_TFILE_WRITE", value: 65)
!99 = !DIEnumerator(name: "JERR_TOO_LITTLE_DATA", value: 66)
!100 = !DIEnumerator(name: "JERR_UNKNOWN_MARKER", value: 67)
!101 = !DIEnumerator(name: "JERR_VIRTUAL_BUG", value: 68)
!102 = !DIEnumerator(name: "JERR_WIDTH_OVERFLOW", value: 69)
!103 = !DIEnumerator(name: "JERR_XMS_READ", value: 70)
!104 = !DIEnumerator(name: "JERR_XMS_WRITE", value: 71)
!105 = !DIEnumerator(name: "JMSG_COPYRIGHT", value: 72)
!106 = !DIEnumerator(name: "JMSG_VERSION", value: 73)
!107 = !DIEnumerator(name: "JTRC_16BIT_TABLES", value: 74)
!108 = !DIEnumerator(name: "JTRC_ADOBE", value: 75)
!109 = !DIEnumerator(name: "JTRC_APP0", value: 76)
!110 = !DIEnumerator(name: "JTRC_APP14", value: 77)
!111 = !DIEnumerator(name: "JTRC_DAC", value: 78)
!112 = !DIEnumerator(name: "JTRC_DHT", value: 79)
!113 = !DIEnumerator(name: "JTRC_DQT", value: 80)
!114 = !DIEnumerator(name: "JTRC_DRI", value: 81)
!115 = !DIEnumerator(name: "JTRC_EMS_CLOSE", value: 82)
!116 = !DIEnumerator(name: "JTRC_EMS_OPEN", value: 83)
!117 = !DIEnumerator(name: "JTRC_EOI", value: 84)
!118 = !DIEnumerator(name: "JTRC_HUFFBITS", value: 85)
!119 = !DIEnumerator(name: "JTRC_JFIF", value: 86)
!120 = !DIEnumerator(name: "JTRC_JFIF_BADTHUMBNAILSIZE", value: 87)
!121 = !DIEnumerator(name: "JTRC_JFIF_MINOR", value: 88)
!122 = !DIEnumerator(name: "JTRC_JFIF_THUMBNAIL", value: 89)
!123 = !DIEnumerator(name: "JTRC_MISC_MARKER", value: 90)
!124 = !DIEnumerator(name: "JTRC_PARMLESS_MARKER", value: 91)
!125 = !DIEnumerator(name: "JTRC_QUANTVALS", value: 92)
!126 = !DIEnumerator(name: "JTRC_QUANT_3_NCOLORS", value: 93)
!127 = !DIEnumerator(name: "JTRC_QUANT_NCOLORS", value: 94)
!128 = !DIEnumerator(name: "JTRC_QUANT_SELECTED", value: 95)
!129 = !DIEnumerator(name: "JTRC_RECOVERY_ACTION", value: 96)
!130 = !DIEnumerator(name: "JTRC_RST", value: 97)
!131 = !DIEnumerator(name: "JTRC_SMOOTH_NOTIMPL", value: 98)
!132 = !DIEnumerator(name: "JTRC_SOF", value: 99)
!133 = !DIEnumerator(name: "JTRC_SOF_COMPONENT", value: 100)
!134 = !DIEnumerator(name: "JTRC_SOI", value: 101)
!135 = !DIEnumerator(name: "JTRC_SOS", value: 102)
!136 = !DIEnumerator(name: "JTRC_SOS_COMPONENT", value: 103)
!137 = !DIEnumerator(name: "JTRC_SOS_PARAMS", value: 104)
!138 = !DIEnumerator(name: "JTRC_TFILE_CLOSE", value: 105)
!139 = !DIEnumerator(name: "JTRC_TFILE_OPEN", value: 106)
!140 = !DIEnumerator(name: "JTRC_UNKNOWN_IDS", value: 107)
!141 = !DIEnumerator(name: "JTRC_XMS_CLOSE", value: 108)
!142 = !DIEnumerator(name: "JTRC_XMS_OPEN", value: 109)
!143 = !DIEnumerator(name: "JWRN_ADOBE_XFORM", value: 110)
!144 = !DIEnumerator(name: "JWRN_BOGUS_PROGRESSION", value: 111)
!145 = !DIEnumerator(name: "JWRN_EXTRANEOUS_DATA", value: 112)
!146 = !DIEnumerator(name: "JWRN_HIT_MARKER", value: 113)
!147 = !DIEnumerator(name: "JWRN_HUFF_BAD_CODE", value: 114)
!148 = !DIEnumerator(name: "JWRN_JFIF_MAJOR", value: 115)
!149 = !DIEnumerator(name: "JWRN_JPEG_EOF", value: 116)
!150 = !DIEnumerator(name: "JWRN_MUST_RESYNC", value: 117)
!151 = !DIEnumerator(name: "JWRN_NOT_SEQUENTIAL", value: 118)
!152 = !DIEnumerator(name: "JWRN_TOO_MUCH_DATA", value: 119)
!153 = !DIEnumerator(name: "JMSG_LASTMSGCODE", value: 120)
!154 = !{!155, !180, !194, !506, !254, !5, !209, !167, !193, !369, !580}
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "my_inputctl_ptr", file: !1, line: 27, baseType: !156)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "my_input_controller", file: !1, line: 25, baseType: !158)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 21, size: 384, elements: !159)
!159 = !{!160, !579}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "pub", scope: !158, file: !1, line: 22, baseType: !161, size: 320)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_input_controller", file: !24, line: 145, size: 320, elements: !162)
!162 = !{!163, !574, !575, !576, !577, !578}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "consume_input", scope: !161, file: !24, line: 146, baseType: !164, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = !DISubroutineType(types: !166)
!166 = !{!167, !168}
!167 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "j_decompress_ptr", file: !4, line: 250, baseType: !169)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_decompress_struct", file: !4, line: 394, size: 4928, elements: !171)
!171 = !{!172, !298, !299, !300, !301, !302, !328, !329, !330, !331, !333, !334, !335, !336, !338, !339, !340, !342, !343, !344, !345, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !367, !380, !396, !397, !398, !424, !425, !426, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !448, !449, !450, !451, !455, !456, !457, !458, !459, !460, !467, !481, !496, !505, !507, !522, !531, !544, !551, !560}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !170, file: !4, line: 395, baseType: !173, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_error_mgr", file: !4, line: 618, size: 1344, elements: !175)
!175 = !{!176, !266, !267, !268, !274, !275, !276, !287, !288, !289, !294, !295, !296, !297}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "error_exit", scope: !174, file: !4, line: 620, baseType: !177, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = !DISubroutineType(types: !179)
!179 = !{null, !180}
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "j_common_ptr", file: !4, line: 248, baseType: !181)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_common_struct", file: !4, line: 240, size: 256, elements: !183)
!183 = !{!184, !185, !255, !264, !265}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !182, file: !4, line: 241, baseType: !173, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !182, file: !4, line: 241, baseType: !186, size: 64, offset: 64)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_memory_mgr", file: !4, line: 731, size: 768, elements: !188)
!188 = !{!189, !197, !198, !210, !224, !232, !239, !240, !244, !248, !252, !253}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_small", scope: !187, file: !4, line: 733, baseType: !190, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = !DISubroutineType(types: !192)
!192 = !{!193, !180, !167, !194}
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !195, line: 18, baseType: !196)
!195 = !DIFile(filename: "/usr/local/lib/clang/20/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!196 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_large", scope: !187, file: !4, line: 735, baseType: !190, size: 64, offset: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_sarray", scope: !187, file: !4, line: 737, baseType: !199, size: 64, offset: 128)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = !DISubroutineType(types: !201)
!201 = !{!202, !180, !167, !209, !209}
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPARRAY", file: !4, line: 67, baseType: !203)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPROW", file: !4, line: 66, baseType: !205)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPLE", file: !207, line: 59, baseType: !208)
!207 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jmorecfg.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "56a0eda58fafa6bdd5498f702a998c09")
!208 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "JDIMENSION", file: !207, line: 171, baseType: !5)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_barray", scope: !187, file: !4, line: 740, baseType: !211, size: 64, offset: 192)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = !DISubroutineType(types: !213)
!213 = !{!214, !180, !167, !209, !209}
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "JBLOCKARRAY", file: !4, line: 72, baseType: !215)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "JBLOCKROW", file: !4, line: 71, baseType: !217)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "JBLOCK", file: !4, line: 70, baseType: !219)
!219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 1024, elements: !222)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "JCOEF", file: !207, line: 99, baseType: !221)
!221 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!222 = !{!223}
!223 = !DISubrange(count: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "request_virt_sarray", scope: !187, file: !4, line: 743, baseType: !225, size: 64, offset: 256)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = !DISubroutineType(types: !227)
!227 = !{!228, !180, !167, !231, !209, !209, !209}
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "jvirt_sarray_ptr", file: !4, line: 727, baseType: !229)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DICompositeType(tag: DW_TAG_structure_type, name: "jvirt_sarray_control", file: !4, line: 727, flags: DIFlagFwdDecl)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "boolean", file: !207, line: 227, baseType: !167)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "request_virt_barray", scope: !187, file: !4, line: 749, baseType: !233, size: 64, offset: 320)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DISubroutineType(types: !235)
!235 = !{!236, !180, !167, !231, !209, !209, !209}
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "jvirt_barray_ptr", file: !4, line: 728, baseType: !237)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = !DICompositeType(tag: DW_TAG_structure_type, name: "jvirt_barray_control", file: !4, line: 728, flags: DIFlagFwdDecl)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "realize_virt_arrays", scope: !187, file: !4, line: 755, baseType: !177, size: 64, offset: 384)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "access_virt_sarray", scope: !187, file: !4, line: 756, baseType: !241, size: 64, offset: 448)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = !DISubroutineType(types: !243)
!243 = !{!202, !180, !228, !209, !209, !231}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "access_virt_barray", scope: !187, file: !4, line: 761, baseType: !245, size: 64, offset: 512)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!246 = !DISubroutineType(types: !247)
!247 = !{!214, !180, !236, !209, !209, !231}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "free_pool", scope: !187, file: !4, line: 766, baseType: !249, size: 64, offset: 576)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = !DISubroutineType(types: !251)
!251 = !{null, !180, !167}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "self_destruct", scope: !187, file: !4, line: 767, baseType: !177, size: 64, offset: 640)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "max_memory_to_use", scope: !187, file: !4, line: 774, baseType: !254, size: 64, offset: 704)
!254 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "progress", scope: !182, file: !4, line: 241, baseType: !256, size: 64, offset: 128)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_progress_mgr", file: !4, line: 676, size: 256, elements: !258)
!258 = !{!259, !260, !261, !262, !263}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "progress_monitor", scope: !257, file: !4, line: 677, baseType: !177, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "pass_counter", scope: !257, file: !4, line: 679, baseType: !254, size: 64, offset: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "pass_limit", scope: !257, file: !4, line: 680, baseType: !254, size: 64, offset: 128)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "completed_passes", scope: !257, file: !4, line: 681, baseType: !167, size: 32, offset: 192)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "total_passes", scope: !257, file: !4, line: 682, baseType: !167, size: 32, offset: 224)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "is_decompressor", scope: !182, file: !4, line: 241, baseType: !231, size: 32, offset: 192)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "global_state", scope: !182, file: !4, line: 241, baseType: !167, size: 32, offset: 224)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "emit_message", scope: !174, file: !4, line: 622, baseType: !249, size: 64, offset: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "output_message", scope: !174, file: !4, line: 624, baseType: !177, size: 64, offset: 128)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "format_message", scope: !174, file: !4, line: 626, baseType: !269, size: 64, offset: 192)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = !DISubroutineType(types: !271)
!271 = !{null, !180, !272}
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "reset_error_mgr", scope: !174, file: !4, line: 629, baseType: !177, size: 64, offset: 256)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "msg_code", scope: !174, file: !4, line: 634, baseType: !167, size: 32, offset: 320)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "msg_parm", scope: !174, file: !4, line: 639, baseType: !277, size: 640, offset: 352)
!277 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !174, file: !4, line: 636, size: 640, elements: !278)
!278 = !{!279, !283}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !277, file: !4, line: 637, baseType: !280, size: 256)
!280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 256, elements: !281)
!281 = !{!282}
!282 = !DISubrange(count: 8)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !277, file: !4, line: 638, baseType: !284, size: 640)
!284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !273, size: 640, elements: !285)
!285 = !{!286}
!286 = !DISubrange(count: 80)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "trace_level", scope: !174, file: !4, line: 643, baseType: !167, size: 32, offset: 992)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "num_warnings", scope: !174, file: !4, line: 651, baseType: !254, size: 64, offset: 1024)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "jpeg_message_table", scope: !174, file: !4, line: 663, baseType: !290, size: 64, offset: 1088)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !292)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !273)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "last_jpeg_message", scope: !174, file: !4, line: 664, baseType: !167, size: 32, offset: 1152)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "addon_message_table", scope: !174, file: !4, line: 668, baseType: !290, size: 64, offset: 1216)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "first_addon_message", scope: !174, file: !4, line: 669, baseType: !167, size: 32, offset: 1280)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "last_addon_message", scope: !174, file: !4, line: 670, baseType: !167, size: 32, offset: 1312)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !170, file: !4, line: 395, baseType: !186, size: 64, offset: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "progress", scope: !170, file: !4, line: 395, baseType: !256, size: 64, offset: 128)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "is_decompressor", scope: !170, file: !4, line: 395, baseType: !231, size: 32, offset: 192)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "global_state", scope: !170, file: !4, line: 395, baseType: !167, size: 32, offset: 224)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !170, file: !4, line: 398, baseType: !303, size: 64, offset: 256)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_source_mgr", file: !4, line: 700, size: 448, elements: !305)
!305 = !{!306, !310, !311, !315, !319, !323, !327}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "next_input_byte", scope: !304, file: !4, line: 701, baseType: !307, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !309)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "JOCTET", file: !207, line: 110, baseType: !208)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_in_buffer", scope: !304, file: !4, line: 702, baseType: !194, size: 64, offset: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "init_source", scope: !304, file: !4, line: 704, baseType: !312, size: 64, offset: 128)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = !DISubroutineType(types: !314)
!314 = !{null, !168}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "fill_input_buffer", scope: !304, file: !4, line: 705, baseType: !316, size: 64, offset: 192)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = !DISubroutineType(types: !318)
!318 = !{!231, !168}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "skip_input_data", scope: !304, file: !4, line: 706, baseType: !320, size: 64, offset: 256)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = !DISubroutineType(types: !322)
!322 = !{null, !168, !254}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "resync_to_restart", scope: !304, file: !4, line: 707, baseType: !324, size: 64, offset: 320)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = !DISubroutineType(types: !326)
!326 = !{!231, !168, !167}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "term_source", scope: !304, file: !4, line: 708, baseType: !312, size: 64, offset: 384)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "image_width", scope: !170, file: !4, line: 403, baseType: !209, size: 32, offset: 320)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "image_height", scope: !170, file: !4, line: 404, baseType: !209, size: 32, offset: 352)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "num_components", scope: !170, file: !4, line: 405, baseType: !167, size: 32, offset: 384)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "jpeg_color_space", scope: !170, file: !4, line: 406, baseType: !332, size: 32, offset: 416)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_COLOR_SPACE", file: !4, line: 201, baseType: !3)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "out_color_space", scope: !170, file: !4, line: 413, baseType: !332, size: 32, offset: 448)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "scale_num", scope: !170, file: !4, line: 415, baseType: !5, size: 32, offset: 480)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "scale_denom", scope: !170, file: !4, line: 415, baseType: !5, size: 32, offset: 512)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "output_gamma", scope: !170, file: !4, line: 417, baseType: !337, size: 64, offset: 576)
!337 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "buffered_image", scope: !170, file: !4, line: 419, baseType: !231, size: 32, offset: 640)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "raw_data_out", scope: !170, file: !4, line: 420, baseType: !231, size: 32, offset: 672)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "dct_method", scope: !170, file: !4, line: 422, baseType: !341, size: 32, offset: 704)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_DCT_METHOD", file: !4, line: 209, baseType: !13)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "do_fancy_upsampling", scope: !170, file: !4, line: 423, baseType: !231, size: 32, offset: 736)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "do_block_smoothing", scope: !170, file: !4, line: 424, baseType: !231, size: 32, offset: 768)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "quantize_colors", scope: !170, file: !4, line: 426, baseType: !231, size: 32, offset: 800)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "dither_mode", scope: !170, file: !4, line: 428, baseType: !346, size: 32, offset: 832)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_DITHER_MODE", file: !4, line: 224, baseType: !18)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "two_pass_quantize", scope: !170, file: !4, line: 429, baseType: !231, size: 32, offset: 864)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "desired_number_of_colors", scope: !170, file: !4, line: 430, baseType: !167, size: 32, offset: 896)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "enable_1pass_quant", scope: !170, file: !4, line: 432, baseType: !231, size: 32, offset: 928)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "enable_external_quant", scope: !170, file: !4, line: 433, baseType: !231, size: 32, offset: 960)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "enable_2pass_quant", scope: !170, file: !4, line: 434, baseType: !231, size: 32, offset: 992)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "output_width", scope: !170, file: !4, line: 442, baseType: !209, size: 32, offset: 1024)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "output_height", scope: !170, file: !4, line: 443, baseType: !209, size: 32, offset: 1056)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "out_color_components", scope: !170, file: !4, line: 444, baseType: !167, size: 32, offset: 1088)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "output_components", scope: !170, file: !4, line: 445, baseType: !167, size: 32, offset: 1120)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "rec_outbuf_height", scope: !170, file: !4, line: 449, baseType: !167, size: 32, offset: 1152)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "actual_number_of_colors", scope: !170, file: !4, line: 461, baseType: !167, size: 32, offset: 1184)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "colormap", scope: !170, file: !4, line: 462, baseType: !202, size: 64, offset: 1216)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "output_scanline", scope: !170, file: !4, line: 472, baseType: !209, size: 32, offset: 1280)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "input_scan_number", scope: !170, file: !4, line: 477, baseType: !167, size: 32, offset: 1312)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "input_iMCU_row", scope: !170, file: !4, line: 478, baseType: !209, size: 32, offset: 1344)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "output_scan_number", scope: !170, file: !4, line: 484, baseType: !167, size: 32, offset: 1376)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "output_iMCU_row", scope: !170, file: !4, line: 485, baseType: !209, size: 32, offset: 1408)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "coef_bits", scope: !170, file: !4, line: 494, baseType: !365, size: 64, offset: 1472)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 2048, elements: !222)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "quant_tbl_ptrs", scope: !170, file: !4, line: 505, baseType: !368, size: 256, offset: 1536)
!368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !369, size: 256, elements: !378)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "JQUANT_TBL", file: !4, line: 95, baseType: !371)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 83, size: 1056, elements: !372)
!372 = !{!373, !377}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "quantval", scope: !371, file: !4, line: 88, baseType: !374, size: 1024)
!374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !375, size: 1024, elements: !222)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT16", file: !207, line: 147, baseType: !376)
!376 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "sent_table", scope: !371, file: !4, line: 94, baseType: !231, size: 32, offset: 1024)
!378 = !{!379}
!379 = !DISubrange(count: 4)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "dc_huff_tbl_ptrs", scope: !170, file: !4, line: 508, baseType: !381, size: 256, offset: 1792)
!381 = !DICompositeType(tag: DW_TAG_array_type, baseType: !382, size: 256, elements: !378)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "JHUFF_TBL", file: !4, line: 111, baseType: !384)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 100, size: 2240, elements: !385)
!385 = !{!386, !391, !395}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !384, file: !4, line: 102, baseType: !387, size: 136)
!387 = !DICompositeType(tag: DW_TAG_array_type, baseType: !388, size: 136, elements: !389)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT8", file: !207, line: 135, baseType: !208)
!389 = !{!390}
!390 = !DISubrange(count: 17)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "huffval", scope: !384, file: !4, line: 104, baseType: !392, size: 2048, offset: 136)
!392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !388, size: 2048, elements: !393)
!393 = !{!394}
!394 = !DISubrange(count: 256)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "sent_table", scope: !384, file: !4, line: 110, baseType: !231, size: 32, offset: 2208)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "ac_huff_tbl_ptrs", scope: !170, file: !4, line: 509, baseType: !381, size: 256, offset: 2048)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "data_precision", scope: !170, file: !4, line: 516, baseType: !167, size: 32, offset: 2304)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "comp_info", scope: !170, file: !4, line: 518, baseType: !399, size: 64, offset: 2368)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "jpeg_component_info", file: !4, line: 179, baseType: !401)
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 116, size: 768, elements: !402)
!402 = !{!403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "component_id", scope: !401, file: !4, line: 120, baseType: !167, size: 32)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "component_index", scope: !401, file: !4, line: 121, baseType: !167, size: 32, offset: 32)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "h_samp_factor", scope: !401, file: !4, line: 122, baseType: !167, size: 32, offset: 64)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "v_samp_factor", scope: !401, file: !4, line: 123, baseType: !167, size: 32, offset: 96)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "quant_tbl_no", scope: !401, file: !4, line: 124, baseType: !167, size: 32, offset: 128)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "dc_tbl_no", scope: !401, file: !4, line: 129, baseType: !167, size: 32, offset: 160)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tbl_no", scope: !401, file: !4, line: 130, baseType: !167, size: 32, offset: 192)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "width_in_blocks", scope: !401, file: !4, line: 139, baseType: !209, size: 32, offset: 224)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "height_in_blocks", scope: !401, file: !4, line: 140, baseType: !209, size: 32, offset: 256)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "DCT_scaled_size", scope: !401, file: !4, line: 147, baseType: !167, size: 32, offset: 288)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "downsampled_width", scope: !401, file: !4, line: 154, baseType: !209, size: 32, offset: 320)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "downsampled_height", scope: !401, file: !4, line: 155, baseType: !209, size: 32, offset: 352)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "component_needed", scope: !401, file: !4, line: 160, baseType: !231, size: 32, offset: 384)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_width", scope: !401, file: !4, line: 164, baseType: !167, size: 32, offset: 416)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_height", scope: !401, file: !4, line: 165, baseType: !167, size: 32, offset: 448)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_blocks", scope: !401, file: !4, line: 166, baseType: !167, size: 32, offset: 480)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_sample_width", scope: !401, file: !4, line: 167, baseType: !167, size: 32, offset: 512)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "last_col_width", scope: !401, file: !4, line: 168, baseType: !167, size: 32, offset: 544)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "last_row_height", scope: !401, file: !4, line: 169, baseType: !167, size: 32, offset: 576)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "quant_table", scope: !401, file: !4, line: 175, baseType: !369, size: 64, offset: 640)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "dct_table", scope: !401, file: !4, line: 178, baseType: !193, size: 64, offset: 704)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "progressive_mode", scope: !170, file: !4, line: 521, baseType: !231, size: 32, offset: 2432)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "arith_code", scope: !170, file: !4, line: 522, baseType: !231, size: 32, offset: 2464)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "arith_dc_L", scope: !170, file: !4, line: 524, baseType: !427, size: 128, offset: 2496)
!427 = !DICompositeType(tag: DW_TAG_array_type, baseType: !388, size: 128, elements: !428)
!428 = !{!429}
!429 = !DISubrange(count: 16)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "arith_dc_U", scope: !170, file: !4, line: 525, baseType: !427, size: 128, offset: 2624)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "arith_ac_K", scope: !170, file: !4, line: 526, baseType: !427, size: 128, offset: 2752)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "restart_interval", scope: !170, file: !4, line: 528, baseType: !5, size: 32, offset: 2880)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "saw_JFIF_marker", scope: !170, file: !4, line: 533, baseType: !231, size: 32, offset: 2912)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "density_unit", scope: !170, file: !4, line: 535, baseType: !388, size: 8, offset: 2944)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "X_density", scope: !170, file: !4, line: 536, baseType: !375, size: 16, offset: 2960)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "Y_density", scope: !170, file: !4, line: 537, baseType: !375, size: 16, offset: 2976)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "saw_Adobe_marker", scope: !170, file: !4, line: 538, baseType: !231, size: 32, offset: 3008)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "Adobe_transform", scope: !170, file: !4, line: 539, baseType: !388, size: 8, offset: 3040)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "CCIR601_sampling", scope: !170, file: !4, line: 541, baseType: !231, size: 32, offset: 3072)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "max_h_samp_factor", scope: !170, file: !4, line: 550, baseType: !167, size: 32, offset: 3104)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "max_v_samp_factor", scope: !170, file: !4, line: 551, baseType: !167, size: 32, offset: 3136)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "min_DCT_scaled_size", scope: !170, file: !4, line: 553, baseType: !167, size: 32, offset: 3168)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "total_iMCU_rows", scope: !170, file: !4, line: 555, baseType: !209, size: 32, offset: 3200)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "sample_range_limit", scope: !170, file: !4, line: 564, baseType: !205, size: 64, offset: 3264)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "comps_in_scan", scope: !170, file: !4, line: 571, baseType: !167, size: 32, offset: 3328)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "cur_comp_info", scope: !170, file: !4, line: 572, baseType: !447, size: 256, offset: 3392)
!447 = !DICompositeType(tag: DW_TAG_array_type, baseType: !399, size: 256, elements: !378)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "MCUs_per_row", scope: !170, file: !4, line: 575, baseType: !209, size: 32, offset: 3648)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_rows_in_scan", scope: !170, file: !4, line: 576, baseType: !209, size: 32, offset: 3680)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "blocks_in_MCU", scope: !170, file: !4, line: 578, baseType: !167, size: 32, offset: 3712)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_membership", scope: !170, file: !4, line: 579, baseType: !452, size: 320, offset: 3744)
!452 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 320, elements: !453)
!453 = !{!454}
!454 = !DISubrange(count: 10)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "Ss", scope: !170, file: !4, line: 583, baseType: !167, size: 32, offset: 4064)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "Se", scope: !170, file: !4, line: 583, baseType: !167, size: 32, offset: 4096)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "Ah", scope: !170, file: !4, line: 583, baseType: !167, size: 32, offset: 4128)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "Al", scope: !170, file: !4, line: 583, baseType: !167, size: 32, offset: 4160)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "unread_marker", scope: !170, file: !4, line: 589, baseType: !167, size: 32, offset: 4192)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !170, file: !4, line: 594, baseType: !461, size: 64, offset: 4224)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_decomp_master", file: !24, line: 136, size: 192, elements: !463)
!463 = !{!464, !465, !466}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_for_output_pass", scope: !462, file: !24, line: 137, baseType: !312, size: 64)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "finish_output_pass", scope: !462, file: !24, line: 138, baseType: !312, size: 64, offset: 64)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "is_dummy_pass", scope: !462, file: !24, line: 141, baseType: !231, size: 32, offset: 128)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "main", scope: !170, file: !4, line: 595, baseType: !468, size: 64, offset: 4288)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_d_main_controller", file: !24, line: 157, size: 128, elements: !470)
!470 = !{!471, !476}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !469, file: !24, line: 158, baseType: !472, size: 64)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = !DISubroutineType(types: !474)
!474 = !{null, !168, !475}
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_BUF_MODE", file: !24, line: 22, baseType: !23)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "process_data", scope: !469, file: !24, line: 159, baseType: !477, size: 64, offset: 64)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = !DISubroutineType(types: !479)
!479 = !{null, !168, !202, !480, !209}
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "coef", scope: !170, file: !4, line: 596, baseType: !482, size: 64, offset: 4352)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_d_coef_controller", file: !24, line: 165, size: 320, elements: !484)
!484 = !{!485, !486, !487, !488, !494}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "start_input_pass", scope: !483, file: !24, line: 166, baseType: !312, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "consume_data", scope: !483, file: !24, line: 167, baseType: !164, size: 64, offset: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "start_output_pass", scope: !483, file: !24, line: 168, baseType: !312, size: 64, offset: 128)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "decompress_data", scope: !483, file: !24, line: 169, baseType: !489, size: 64, offset: 192)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = !DISubroutineType(types: !491)
!491 = !{!167, !168, !492}
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPIMAGE", file: !4, line: 68, baseType: !493)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "coef_arrays", scope: !483, file: !24, line: 172, baseType: !495, size: 64, offset: 256)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "post", scope: !170, file: !4, line: 597, baseType: !497, size: 64, offset: 4416)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_d_post_controller", file: !24, line: 176, size: 128, elements: !499)
!499 = !{!500, !501}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !498, file: !24, line: 177, baseType: !472, size: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "post_process_data", scope: !498, file: !24, line: 178, baseType: !502, size: 64, offset: 64)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = !DISubroutineType(types: !504)
!504 = !{null, !168, !492, !480, !209, !202, !480, !209}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "inputctl", scope: !170, file: !4, line: 598, baseType: !506, size: 64, offset: 4480)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "marker", scope: !170, file: !4, line: 599, baseType: !508, size: 64, offset: 4544)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_marker_reader", file: !24, line: 188, size: 1408, elements: !510)
!510 = !{!511, !512, !513, !515, !516, !518, !519, !520, !521}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "reset_marker_reader", scope: !509, file: !24, line: 189, baseType: !312, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "read_markers", scope: !509, file: !24, line: 194, baseType: !164, size: 64, offset: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "read_restart_marker", scope: !509, file: !24, line: 196, baseType: !514, size: 64, offset: 128)
!514 = !DIDerivedType(tag: DW_TAG_typedef, name: "jpeg_marker_parser_method", file: !4, line: 781, baseType: !316)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "process_COM", scope: !509, file: !24, line: 198, baseType: !514, size: 64, offset: 192)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "process_APPn", scope: !509, file: !24, line: 199, baseType: !517, size: 1024, offset: 256)
!517 = !DICompositeType(tag: DW_TAG_array_type, baseType: !514, size: 1024, elements: !428)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "saw_SOI", scope: !509, file: !24, line: 204, baseType: !231, size: 32, offset: 1280)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "saw_SOF", scope: !509, file: !24, line: 205, baseType: !231, size: 32, offset: 1312)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "next_restart_num", scope: !509, file: !24, line: 206, baseType: !167, size: 32, offset: 1344)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "discarded_bytes", scope: !509, file: !24, line: 207, baseType: !5, size: 32, offset: 1376)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "entropy", scope: !170, file: !4, line: 600, baseType: !523, size: 64, offset: 4608)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_entropy_decoder", file: !24, line: 211, size: 128, elements: !525)
!525 = !{!526, !527}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !524, file: !24, line: 212, baseType: !312, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "decode_mcu", scope: !524, file: !24, line: 213, baseType: !528, size: 64, offset: 64)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = !DISubroutineType(types: !530)
!530 = !{!231, !168, !215}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "idct", scope: !170, file: !4, line: 601, baseType: !532, size: 64, offset: 4672)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_inverse_dct", file: !24, line: 223, size: 704, elements: !534)
!534 = !{!535, !536}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !533, file: !24, line: 224, baseType: !312, size: 64)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "inverse_DCT", scope: !533, file: !24, line: 226, baseType: !537, size: 640, offset: 64)
!537 = !DICompositeType(tag: DW_TAG_array_type, baseType: !538, size: 640, elements: !453)
!538 = !DIDerivedType(tag: DW_TAG_typedef, name: "inverse_DCT_method_ptr", file: !24, line: 218, baseType: !539)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = !DISubroutineType(types: !541)
!541 = !{null, !168, !399, !542, !202, !209}
!542 = !DIDerivedType(tag: DW_TAG_typedef, name: "JCOEFPTR", file: !4, line: 75, baseType: !543)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "upsample", scope: !170, file: !4, line: 602, baseType: !545, size: 64, offset: 4736)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_upsampler", file: !24, line: 230, size: 192, elements: !547)
!547 = !{!548, !549, !550}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !546, file: !24, line: 231, baseType: !312, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "upsample", scope: !546, file: !24, line: 232, baseType: !502, size: 64, offset: 64)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "need_context_rows", scope: !546, file: !24, line: 240, baseType: !231, size: 32, offset: 128)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "cconvert", scope: !170, file: !4, line: 603, baseType: !552, size: 64, offset: 4800)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_color_deconverter", file: !24, line: 244, size: 128, elements: !554)
!554 = !{!555, !556}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !553, file: !24, line: 245, baseType: !312, size: 64)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "color_convert", scope: !553, file: !24, line: 246, baseType: !557, size: 64, offset: 64)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = !DISubroutineType(types: !559)
!559 = !{null, !168, !492, !209, !202, !167}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "cquantize", scope: !170, file: !4, line: 604, baseType: !561, size: 64, offset: 4864)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_color_quantizer", file: !24, line: 252, size: 256, elements: !563)
!563 = !{!564, !568, !572, !573}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !562, file: !24, line: 253, baseType: !565, size: 64)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = !DISubroutineType(types: !567)
!567 = !{null, !168, !231}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "color_quantize", scope: !562, file: !24, line: 254, baseType: !569, size: 64, offset: 64)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = !DISubroutineType(types: !571)
!571 = !{null, !168, !202, !202, !167}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "finish_pass", scope: !562, file: !24, line: 257, baseType: !312, size: 64, offset: 128)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "new_color_map", scope: !562, file: !24, line: 258, baseType: !312, size: 64, offset: 192)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "reset_input_controller", scope: !161, file: !24, line: 147, baseType: !312, size: 64, offset: 64)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "start_input_pass", scope: !161, file: !24, line: 148, baseType: !312, size: 64, offset: 128)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "finish_input_pass", scope: !161, file: !24, line: 149, baseType: !312, size: 64, offset: 192)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "has_multiple_scans", scope: !161, file: !24, line: 152, baseType: !231, size: 32, offset: 256)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "eoi_reached", scope: !161, file: !24, line: 153, baseType: !231, size: 32, offset: 288)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "inheaders", scope: !158, file: !1, line: 24, baseType: !231, size: 32, offset: 320)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!582 = !{i32 7, !"Dwarf Version", i32 5}
!583 = !{i32 2, !"Debug Info Version", i32 3}
!584 = !{i32 1, !"wchar_size", i32 4}
!585 = !{i32 8, !"PIC Level", i32 2}
!586 = !{i32 7, !"PIE Level", i32 2}
!587 = !{i32 7, !"uwtable", i32 2}
!588 = !{i32 7, !"frame-pointer", i32 2}
!589 = !{!"clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)"}
!590 = distinct !DISubprogram(name: "jinit_input_controller", scope: !1, file: !1, line: 361, type: !313, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !591)
!591 = !{}
!592 = !DILocalVariable(name: "cinfo", arg: 1, scope: !590, file: !1, line: 361, type: !168)
!593 = !DILocation(line: 361, column: 42, scope: !590)
!594 = !DILocalVariable(name: "inputctl", scope: !590, file: !1, line: 363, type: !155)
!595 = !DILocation(line: 363, column: 19, scope: !590)
!596 = !DILocation(line: 367, column: 7, scope: !590)
!597 = !DILocation(line: 367, column: 14, scope: !590)
!598 = !DILocation(line: 367, column: 19, scope: !590)
!599 = !DILocation(line: 367, column: 48, scope: !590)
!600 = !DILocation(line: 367, column: 5, scope: !590)
!601 = !DILocation(line: 366, column: 12, scope: !590)
!602 = !DILocation(line: 369, column: 54, scope: !590)
!603 = !DILocation(line: 369, column: 3, scope: !590)
!604 = !DILocation(line: 369, column: 10, scope: !590)
!605 = !DILocation(line: 369, column: 19, scope: !590)
!606 = !DILocation(line: 371, column: 3, scope: !590)
!607 = !DILocation(line: 371, column: 13, scope: !590)
!608 = !DILocation(line: 371, column: 17, scope: !590)
!609 = !DILocation(line: 371, column: 31, scope: !590)
!610 = !DILocation(line: 372, column: 3, scope: !590)
!611 = !DILocation(line: 372, column: 13, scope: !590)
!612 = !DILocation(line: 372, column: 17, scope: !590)
!613 = !DILocation(line: 372, column: 40, scope: !590)
!614 = !DILocation(line: 373, column: 3, scope: !590)
!615 = !DILocation(line: 373, column: 13, scope: !590)
!616 = !DILocation(line: 373, column: 17, scope: !590)
!617 = !DILocation(line: 373, column: 34, scope: !590)
!618 = !DILocation(line: 374, column: 3, scope: !590)
!619 = !DILocation(line: 374, column: 13, scope: !590)
!620 = !DILocation(line: 374, column: 17, scope: !590)
!621 = !DILocation(line: 374, column: 35, scope: !590)
!622 = !DILocation(line: 378, column: 3, scope: !590)
!623 = !DILocation(line: 378, column: 13, scope: !590)
!624 = !DILocation(line: 378, column: 17, scope: !590)
!625 = !DILocation(line: 378, column: 36, scope: !590)
!626 = !DILocation(line: 379, column: 3, scope: !590)
!627 = !DILocation(line: 379, column: 13, scope: !590)
!628 = !DILocation(line: 379, column: 17, scope: !590)
!629 = !DILocation(line: 379, column: 29, scope: !590)
!630 = !DILocation(line: 380, column: 3, scope: !590)
!631 = !DILocation(line: 380, column: 13, scope: !590)
!632 = !DILocation(line: 380, column: 23, scope: !590)
!633 = !DILocation(line: 381, column: 1, scope: !590)
!634 = distinct !DISubprogram(name: "consume_markers", scope: !1, file: !1, line: 288, type: !165, scopeLine: 289, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !591)
!635 = !DILocalVariable(name: "cinfo", arg: 1, scope: !634, file: !1, line: 288, type: !168)
!636 = !DILocation(line: 288, column: 35, scope: !634)
!637 = !DILocalVariable(name: "inputctl", scope: !634, file: !1, line: 290, type: !155)
!638 = !DILocation(line: 290, column: 19, scope: !634)
!639 = !DILocation(line: 290, column: 48, scope: !634)
!640 = !DILocation(line: 290, column: 55, scope: !634)
!641 = !DILocalVariable(name: "val", scope: !634, file: !1, line: 291, type: !167)
!642 = !DILocation(line: 291, column: 7, scope: !634)
!643 = !DILocation(line: 293, column: 7, scope: !644)
!644 = distinct !DILexicalBlock(scope: !634, file: !1, line: 293, column: 7)
!645 = !DILocation(line: 293, column: 17, scope: !644)
!646 = !DILocation(line: 293, column: 21, scope: !644)
!647 = !DILocation(line: 294, column: 5, scope: !644)
!648 = !DILocation(line: 296, column: 11, scope: !634)
!649 = !DILocation(line: 296, column: 18, scope: !634)
!650 = !DILocation(line: 296, column: 26, scope: !634)
!651 = !DILocation(line: 296, column: 41, scope: !634)
!652 = !DILocation(line: 296, column: 9, scope: !634)
!653 = !DILocation(line: 296, column: 7, scope: !634)
!654 = !DILocation(line: 298, column: 11, scope: !634)
!655 = !DILocation(line: 298, column: 3, scope: !634)
!656 = !DILocation(line: 300, column: 9, scope: !657)
!657 = distinct !DILexicalBlock(scope: !658, file: !1, line: 300, column: 9)
!658 = distinct !DILexicalBlock(scope: !634, file: !1, line: 298, column: 16)
!659 = !DILocation(line: 300, column: 19, scope: !657)
!660 = !DILocation(line: 301, column: 21, scope: !661)
!661 = distinct !DILexicalBlock(scope: !657, file: !1, line: 300, column: 30)
!662 = !DILocation(line: 301, column: 7, scope: !661)
!663 = !DILocation(line: 302, column: 7, scope: !661)
!664 = !DILocation(line: 302, column: 17, scope: !661)
!665 = !DILocation(line: 302, column: 27, scope: !661)
!666 = !DILocation(line: 307, column: 5, scope: !661)
!667 = !DILocation(line: 308, column: 13, scope: !668)
!668 = distinct !DILexicalBlock(scope: !669, file: !1, line: 308, column: 11)
!669 = distinct !DILexicalBlock(scope: !657, file: !1, line: 307, column: 12)
!670 = !DILocation(line: 308, column: 23, scope: !668)
!671 = !DILocation(line: 308, column: 27, scope: !668)
!672 = !DILocation(line: 308, column: 11, scope: !668)
!673 = !DILocation(line: 309, column: 2, scope: !668)
!674 = !DILocation(line: 310, column: 24, scope: !669)
!675 = !DILocation(line: 310, column: 7, scope: !669)
!676 = !DILocation(line: 312, column: 5, scope: !658)
!677 = !DILocation(line: 314, column: 5, scope: !658)
!678 = !DILocation(line: 314, column: 15, scope: !658)
!679 = !DILocation(line: 314, column: 19, scope: !658)
!680 = !DILocation(line: 314, column: 31, scope: !658)
!681 = !DILocation(line: 315, column: 9, scope: !682)
!682 = distinct !DILexicalBlock(scope: !658, file: !1, line: 315, column: 9)
!683 = !DILocation(line: 315, column: 19, scope: !682)
!684 = !DILocation(line: 316, column: 11, scope: !685)
!685 = distinct !DILexicalBlock(scope: !686, file: !1, line: 316, column: 11)
!686 = distinct !DILexicalBlock(scope: !682, file: !1, line: 315, column: 30)
!687 = !DILocation(line: 316, column: 18, scope: !685)
!688 = !DILocation(line: 316, column: 26, scope: !685)
!689 = !DILocation(line: 317, column: 2, scope: !685)
!690 = !DILocation(line: 318, column: 5, scope: !686)
!691 = !DILocation(line: 322, column: 11, scope: !692)
!692 = distinct !DILexicalBlock(scope: !693, file: !1, line: 322, column: 11)
!693 = distinct !DILexicalBlock(scope: !682, file: !1, line: 318, column: 12)
!694 = !DILocation(line: 322, column: 18, scope: !692)
!695 = !DILocation(line: 322, column: 39, scope: !692)
!696 = !DILocation(line: 322, column: 46, scope: !692)
!697 = !DILocation(line: 322, column: 37, scope: !692)
!698 = !DILocation(line: 323, column: 30, scope: !692)
!699 = !DILocation(line: 323, column: 37, scope: !692)
!700 = !DILocation(line: 323, column: 2, scope: !692)
!701 = !DILocation(line: 323, column: 9, scope: !692)
!702 = !DILocation(line: 323, column: 28, scope: !692)
!703 = !DILocation(line: 325, column: 5, scope: !658)
!704 = !DILocation(line: 327, column: 5, scope: !658)
!705 = !DILocation(line: 330, column: 10, scope: !634)
!706 = !DILocation(line: 330, column: 3, scope: !634)
!707 = !DILocation(line: 331, column: 1, scope: !634)
!708 = distinct !DISubprogram(name: "reset_input_controller", scope: !1, file: !1, line: 339, type: !313, scopeLine: 340, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !591)
!709 = !DILocalVariable(name: "cinfo", arg: 1, scope: !708, file: !1, line: 339, type: !168)
!710 = !DILocation(line: 339, column: 42, scope: !708)
!711 = !DILocalVariable(name: "inputctl", scope: !708, file: !1, line: 341, type: !155)
!712 = !DILocation(line: 341, column: 19, scope: !708)
!713 = !DILocation(line: 341, column: 48, scope: !708)
!714 = !DILocation(line: 341, column: 55, scope: !708)
!715 = !DILocation(line: 343, column: 3, scope: !708)
!716 = !DILocation(line: 343, column: 13, scope: !708)
!717 = !DILocation(line: 343, column: 17, scope: !708)
!718 = !DILocation(line: 343, column: 31, scope: !708)
!719 = !DILocation(line: 344, column: 3, scope: !708)
!720 = !DILocation(line: 344, column: 13, scope: !708)
!721 = !DILocation(line: 344, column: 17, scope: !708)
!722 = !DILocation(line: 344, column: 36, scope: !708)
!723 = !DILocation(line: 345, column: 3, scope: !708)
!724 = !DILocation(line: 345, column: 13, scope: !708)
!725 = !DILocation(line: 345, column: 17, scope: !708)
!726 = !DILocation(line: 345, column: 29, scope: !708)
!727 = !DILocation(line: 346, column: 3, scope: !708)
!728 = !DILocation(line: 346, column: 13, scope: !708)
!729 = !DILocation(line: 346, column: 23, scope: !708)
!730 = !DILocation(line: 348, column: 5, scope: !708)
!731 = !DILocation(line: 348, column: 12, scope: !708)
!732 = !DILocation(line: 348, column: 17, scope: !708)
!733 = !DILocation(line: 348, column: 50, scope: !708)
!734 = !DILocation(line: 348, column: 3, scope: !708)
!735 = !DILocation(line: 349, column: 5, scope: !708)
!736 = !DILocation(line: 349, column: 12, scope: !708)
!737 = !DILocation(line: 349, column: 20, scope: !708)
!738 = !DILocation(line: 349, column: 42, scope: !708)
!739 = !DILocation(line: 349, column: 3, scope: !708)
!740 = !DILocation(line: 351, column: 3, scope: !708)
!741 = !DILocation(line: 351, column: 10, scope: !708)
!742 = !DILocation(line: 351, column: 20, scope: !708)
!743 = !DILocation(line: 352, column: 1, scope: !708)
!744 = distinct !DISubprogram(name: "start_input_pass", scope: !1, file: !1, line: 254, type: !313, scopeLine: 255, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !591)
!745 = !DILocalVariable(name: "cinfo", arg: 1, scope: !744, file: !1, line: 254, type: !168)
!746 = !DILocation(line: 254, column: 36, scope: !744)
!747 = !DILocation(line: 256, column: 18, scope: !744)
!748 = !DILocation(line: 256, column: 3, scope: !744)
!749 = !DILocation(line: 257, column: 22, scope: !744)
!750 = !DILocation(line: 257, column: 3, scope: !744)
!751 = !DILocation(line: 258, column: 5, scope: !744)
!752 = !DILocation(line: 258, column: 12, scope: !744)
!753 = !DILocation(line: 258, column: 21, scope: !744)
!754 = !DILocation(line: 258, column: 34, scope: !744)
!755 = !DILocation(line: 258, column: 3, scope: !744)
!756 = !DILocation(line: 259, column: 5, scope: !744)
!757 = !DILocation(line: 259, column: 12, scope: !744)
!758 = !DILocation(line: 259, column: 18, scope: !744)
!759 = !DILocation(line: 259, column: 37, scope: !744)
!760 = !DILocation(line: 259, column: 3, scope: !744)
!761 = !DILocation(line: 260, column: 36, scope: !744)
!762 = !DILocation(line: 260, column: 43, scope: !744)
!763 = !DILocation(line: 260, column: 49, scope: !744)
!764 = !DILocation(line: 260, column: 3, scope: !744)
!765 = !DILocation(line: 260, column: 10, scope: !744)
!766 = !DILocation(line: 260, column: 20, scope: !744)
!767 = !DILocation(line: 260, column: 34, scope: !744)
!768 = !DILocation(line: 261, column: 1, scope: !744)
!769 = distinct !DISubprogram(name: "finish_input_pass", scope: !1, file: !1, line: 271, type: !313, scopeLine: 272, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !591)
!770 = !DILocalVariable(name: "cinfo", arg: 1, scope: !769, file: !1, line: 271, type: !168)
!771 = !DILocation(line: 271, column: 37, scope: !769)
!772 = !DILocation(line: 273, column: 3, scope: !769)
!773 = !DILocation(line: 273, column: 10, scope: !769)
!774 = !DILocation(line: 273, column: 20, scope: !769)
!775 = !DILocation(line: 273, column: 34, scope: !769)
!776 = !DILocation(line: 274, column: 1, scope: !769)
!777 = distinct !DISubprogram(name: "initial_setup", scope: !1, file: !1, line: 39, type: !313, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !591)
!778 = !DILocalVariable(name: "cinfo", arg: 1, scope: !777, file: !1, line: 39, type: !168)
!779 = !DILocation(line: 39, column: 33, scope: !777)
!780 = !DILocalVariable(name: "ci", scope: !777, file: !1, line: 42, type: !167)
!781 = !DILocation(line: 42, column: 7, scope: !777)
!782 = !DILocalVariable(name: "compptr", scope: !777, file: !1, line: 43, type: !399)
!783 = !DILocation(line: 43, column: 24, scope: !777)
!784 = !DILocation(line: 46, column: 14, scope: !785)
!785 = distinct !DILexicalBlock(scope: !777, file: !1, line: 46, column: 7)
!786 = !DILocation(line: 46, column: 21, scope: !785)
!787 = !DILocation(line: 46, column: 7, scope: !785)
!788 = !DILocation(line: 46, column: 34, scope: !785)
!789 = !DILocation(line: 46, column: 62, scope: !785)
!790 = !DILocation(line: 47, column: 14, scope: !785)
!791 = !DILocation(line: 47, column: 21, scope: !785)
!792 = !DILocation(line: 47, column: 7, scope: !785)
!793 = !DILocation(line: 47, column: 33, scope: !785)
!794 = !DILocation(line: 48, column: 5, scope: !785)
!795 = !DILocation(line: 51, column: 7, scope: !796)
!796 = distinct !DILexicalBlock(scope: !777, file: !1, line: 51, column: 7)
!797 = !DILocation(line: 51, column: 14, scope: !796)
!798 = !DILocation(line: 51, column: 29, scope: !796)
!799 = !DILocation(line: 52, column: 5, scope: !796)
!800 = !DILocation(line: 55, column: 7, scope: !801)
!801 = distinct !DILexicalBlock(scope: !777, file: !1, line: 55, column: 7)
!802 = !DILocation(line: 55, column: 14, scope: !801)
!803 = !DILocation(line: 55, column: 29, scope: !801)
!804 = !DILocation(line: 56, column: 5, scope: !801)
!805 = !DILocation(line: 60, column: 3, scope: !777)
!806 = !DILocation(line: 60, column: 10, scope: !777)
!807 = !DILocation(line: 60, column: 28, scope: !777)
!808 = !DILocation(line: 61, column: 3, scope: !777)
!809 = !DILocation(line: 61, column: 10, scope: !777)
!810 = !DILocation(line: 61, column: 28, scope: !777)
!811 = !DILocation(line: 62, column: 11, scope: !812)
!812 = distinct !DILexicalBlock(scope: !777, file: !1, line: 62, column: 3)
!813 = !DILocation(line: 62, column: 26, scope: !812)
!814 = !DILocation(line: 62, column: 33, scope: !812)
!815 = !DILocation(line: 62, column: 24, scope: !812)
!816 = !DILocation(line: 62, column: 8, scope: !812)
!817 = !DILocation(line: 62, column: 44, scope: !818)
!818 = distinct !DILexicalBlock(scope: !812, file: !1, line: 62, column: 3)
!819 = !DILocation(line: 62, column: 49, scope: !818)
!820 = !DILocation(line: 62, column: 56, scope: !818)
!821 = !DILocation(line: 62, column: 47, scope: !818)
!822 = !DILocation(line: 62, column: 3, scope: !812)
!823 = !DILocation(line: 64, column: 9, scope: !824)
!824 = distinct !DILexicalBlock(scope: !825, file: !1, line: 64, column: 9)
!825 = distinct !DILexicalBlock(scope: !818, file: !1, line: 63, column: 25)
!826 = !DILocation(line: 64, column: 18, scope: !824)
!827 = !DILocation(line: 64, column: 31, scope: !824)
!828 = !DILocation(line: 64, column: 35, scope: !824)
!829 = !DILocation(line: 64, column: 38, scope: !824)
!830 = !DILocation(line: 64, column: 47, scope: !824)
!831 = !DILocation(line: 64, column: 60, scope: !824)
!832 = !DILocation(line: 64, column: 77, scope: !824)
!833 = !DILocation(line: 65, column: 2, scope: !824)
!834 = !DILocation(line: 65, column: 11, scope: !824)
!835 = !DILocation(line: 65, column: 24, scope: !824)
!836 = !DILocation(line: 65, column: 28, scope: !824)
!837 = !DILocation(line: 65, column: 31, scope: !824)
!838 = !DILocation(line: 65, column: 40, scope: !824)
!839 = !DILocation(line: 65, column: 53, scope: !824)
!840 = !DILocation(line: 66, column: 7, scope: !824)
!841 = !DILocation(line: 67, column: 32, scope: !825)
!842 = !DILocation(line: 67, column: 5, scope: !825)
!843 = !DILocation(line: 67, column: 12, scope: !825)
!844 = !DILocation(line: 67, column: 30, scope: !825)
!845 = !DILocation(line: 69, column: 32, scope: !825)
!846 = !DILocation(line: 69, column: 5, scope: !825)
!847 = !DILocation(line: 69, column: 12, scope: !825)
!848 = !DILocation(line: 69, column: 30, scope: !825)
!849 = !DILocation(line: 71, column: 3, scope: !825)
!850 = !DILocation(line: 63, column: 10, scope: !818)
!851 = !DILocation(line: 63, column: 21, scope: !818)
!852 = !DILocation(line: 62, column: 3, scope: !818)
!853 = distinct !{!853, !822, !854, !855}
!854 = !DILocation(line: 71, column: 3, scope: !812)
!855 = !{!"llvm.loop.mustprogress"}
!856 = !DILocation(line: 77, column: 3, scope: !777)
!857 = !DILocation(line: 77, column: 10, scope: !777)
!858 = !DILocation(line: 77, column: 30, scope: !777)
!859 = !DILocation(line: 80, column: 11, scope: !860)
!860 = distinct !DILexicalBlock(scope: !777, file: !1, line: 80, column: 3)
!861 = !DILocation(line: 80, column: 26, scope: !860)
!862 = !DILocation(line: 80, column: 33, scope: !860)
!863 = !DILocation(line: 80, column: 24, scope: !860)
!864 = !DILocation(line: 80, column: 8, scope: !860)
!865 = !DILocation(line: 80, column: 44, scope: !866)
!866 = distinct !DILexicalBlock(scope: !860, file: !1, line: 80, column: 3)
!867 = !DILocation(line: 80, column: 49, scope: !866)
!868 = !DILocation(line: 80, column: 56, scope: !866)
!869 = !DILocation(line: 80, column: 47, scope: !866)
!870 = !DILocation(line: 80, column: 3, scope: !860)
!871 = !DILocation(line: 82, column: 5, scope: !872)
!872 = distinct !DILexicalBlock(scope: !866, file: !1, line: 81, column: 25)
!873 = !DILocation(line: 82, column: 14, scope: !872)
!874 = !DILocation(line: 82, column: 30, scope: !872)
!875 = !DILocation(line: 85, column: 28, scope: !872)
!876 = !DILocation(line: 85, column: 35, scope: !872)
!877 = !DILocation(line: 85, column: 21, scope: !872)
!878 = !DILocation(line: 85, column: 56, scope: !872)
!879 = !DILocation(line: 85, column: 65, scope: !872)
!880 = !DILocation(line: 85, column: 49, scope: !872)
!881 = !DILocation(line: 85, column: 47, scope: !872)
!882 = !DILocation(line: 86, column: 15, scope: !872)
!883 = !DILocation(line: 86, column: 22, scope: !872)
!884 = !DILocation(line: 86, column: 40, scope: !872)
!885 = !DILocation(line: 86, column: 7, scope: !872)
!886 = !DILocation(line: 85, column: 7, scope: !872)
!887 = !DILocation(line: 84, column: 32, scope: !872)
!888 = !DILocation(line: 84, column: 5, scope: !872)
!889 = !DILocation(line: 84, column: 14, scope: !872)
!890 = !DILocation(line: 84, column: 30, scope: !872)
!891 = !DILocation(line: 88, column: 28, scope: !872)
!892 = !DILocation(line: 88, column: 35, scope: !872)
!893 = !DILocation(line: 88, column: 21, scope: !872)
!894 = !DILocation(line: 88, column: 57, scope: !872)
!895 = !DILocation(line: 88, column: 66, scope: !872)
!896 = !DILocation(line: 88, column: 50, scope: !872)
!897 = !DILocation(line: 88, column: 48, scope: !872)
!898 = !DILocation(line: 89, column: 15, scope: !872)
!899 = !DILocation(line: 89, column: 22, scope: !872)
!900 = !DILocation(line: 89, column: 40, scope: !872)
!901 = !DILocation(line: 89, column: 7, scope: !872)
!902 = !DILocation(line: 88, column: 7, scope: !872)
!903 = !DILocation(line: 87, column: 33, scope: !872)
!904 = !DILocation(line: 87, column: 5, scope: !872)
!905 = !DILocation(line: 87, column: 14, scope: !872)
!906 = !DILocation(line: 87, column: 31, scope: !872)
!907 = !DILocation(line: 96, column: 28, scope: !872)
!908 = !DILocation(line: 96, column: 35, scope: !872)
!909 = !DILocation(line: 96, column: 21, scope: !872)
!910 = !DILocation(line: 96, column: 56, scope: !872)
!911 = !DILocation(line: 96, column: 65, scope: !872)
!912 = !DILocation(line: 96, column: 49, scope: !872)
!913 = !DILocation(line: 96, column: 47, scope: !872)
!914 = !DILocation(line: 97, column: 14, scope: !872)
!915 = !DILocation(line: 97, column: 21, scope: !872)
!916 = !DILocation(line: 97, column: 7, scope: !872)
!917 = !DILocation(line: 96, column: 7, scope: !872)
!918 = !DILocation(line: 95, column: 34, scope: !872)
!919 = !DILocation(line: 95, column: 5, scope: !872)
!920 = !DILocation(line: 95, column: 14, scope: !872)
!921 = !DILocation(line: 95, column: 32, scope: !872)
!922 = !DILocation(line: 99, column: 28, scope: !872)
!923 = !DILocation(line: 99, column: 35, scope: !872)
!924 = !DILocation(line: 99, column: 21, scope: !872)
!925 = !DILocation(line: 99, column: 57, scope: !872)
!926 = !DILocation(line: 99, column: 66, scope: !872)
!927 = !DILocation(line: 99, column: 50, scope: !872)
!928 = !DILocation(line: 99, column: 48, scope: !872)
!929 = !DILocation(line: 100, column: 14, scope: !872)
!930 = !DILocation(line: 100, column: 21, scope: !872)
!931 = !DILocation(line: 100, column: 7, scope: !872)
!932 = !DILocation(line: 99, column: 7, scope: !872)
!933 = !DILocation(line: 98, column: 35, scope: !872)
!934 = !DILocation(line: 98, column: 5, scope: !872)
!935 = !DILocation(line: 98, column: 14, scope: !872)
!936 = !DILocation(line: 98, column: 33, scope: !872)
!937 = !DILocation(line: 102, column: 5, scope: !872)
!938 = !DILocation(line: 102, column: 14, scope: !872)
!939 = !DILocation(line: 102, column: 31, scope: !872)
!940 = !DILocation(line: 104, column: 5, scope: !872)
!941 = !DILocation(line: 104, column: 14, scope: !872)
!942 = !DILocation(line: 104, column: 26, scope: !872)
!943 = !DILocation(line: 105, column: 3, scope: !872)
!944 = !DILocation(line: 81, column: 10, scope: !866)
!945 = !DILocation(line: 81, column: 21, scope: !866)
!946 = !DILocation(line: 80, column: 3, scope: !866)
!947 = distinct !{!947, !870, !948, !855}
!948 = !DILocation(line: 105, column: 3, scope: !860)
!949 = !DILocation(line: 109, column: 26, scope: !777)
!950 = !DILocation(line: 109, column: 33, scope: !777)
!951 = !DILocation(line: 109, column: 19, scope: !777)
!952 = !DILocation(line: 110, column: 13, scope: !777)
!953 = !DILocation(line: 110, column: 20, scope: !777)
!954 = !DILocation(line: 110, column: 37, scope: !777)
!955 = !DILocation(line: 110, column: 5, scope: !777)
!956 = !DILocation(line: 109, column: 5, scope: !777)
!957 = !DILocation(line: 108, column: 28, scope: !777)
!958 = !DILocation(line: 108, column: 3, scope: !777)
!959 = !DILocation(line: 108, column: 10, scope: !777)
!960 = !DILocation(line: 108, column: 26, scope: !777)
!961 = !DILocation(line: 113, column: 7, scope: !962)
!962 = distinct !DILexicalBlock(scope: !777, file: !1, line: 113, column: 7)
!963 = !DILocation(line: 113, column: 14, scope: !962)
!964 = !DILocation(line: 113, column: 30, scope: !962)
!965 = !DILocation(line: 113, column: 37, scope: !962)
!966 = !DILocation(line: 113, column: 28, scope: !962)
!967 = !DILocation(line: 113, column: 52, scope: !962)
!968 = !DILocation(line: 113, column: 55, scope: !962)
!969 = !DILocation(line: 113, column: 62, scope: !962)
!970 = !DILocation(line: 114, column: 5, scope: !962)
!971 = !DILocation(line: 114, column: 12, scope: !962)
!972 = !DILocation(line: 114, column: 22, scope: !962)
!973 = !DILocation(line: 114, column: 41, scope: !962)
!974 = !DILocation(line: 116, column: 5, scope: !962)
!975 = !DILocation(line: 116, column: 12, scope: !962)
!976 = !DILocation(line: 116, column: 22, scope: !962)
!977 = !DILocation(line: 116, column: 41, scope: !962)
!978 = !DILocation(line: 117, column: 1, scope: !777)
!979 = distinct !DISubprogram(name: "per_scan_setup", scope: !1, file: !1, line: 121, type: !313, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !591)
!980 = !DILocalVariable(name: "cinfo", arg: 1, scope: !979, file: !1, line: 121, type: !168)
!981 = !DILocation(line: 121, column: 34, scope: !979)
!982 = !DILocalVariable(name: "ci", scope: !979, file: !1, line: 125, type: !167)
!983 = !DILocation(line: 125, column: 7, scope: !979)
!984 = !DILocalVariable(name: "mcublks", scope: !979, file: !1, line: 125, type: !167)
!985 = !DILocation(line: 125, column: 11, scope: !979)
!986 = !DILocalVariable(name: "tmp", scope: !979, file: !1, line: 125, type: !167)
!987 = !DILocation(line: 125, column: 20, scope: !979)
!988 = !DILocalVariable(name: "compptr", scope: !979, file: !1, line: 126, type: !399)
!989 = !DILocation(line: 126, column: 24, scope: !979)
!990 = !DILocation(line: 128, column: 7, scope: !991)
!991 = distinct !DILexicalBlock(scope: !979, file: !1, line: 128, column: 7)
!992 = !DILocation(line: 128, column: 14, scope: !991)
!993 = !DILocation(line: 128, column: 28, scope: !991)
!994 = !DILocation(line: 131, column: 15, scope: !995)
!995 = distinct !DILexicalBlock(scope: !991, file: !1, line: 128, column: 34)
!996 = !DILocation(line: 131, column: 22, scope: !995)
!997 = !DILocation(line: 131, column: 13, scope: !995)
!998 = !DILocation(line: 134, column: 27, scope: !995)
!999 = !DILocation(line: 134, column: 36, scope: !995)
!1000 = !DILocation(line: 134, column: 5, scope: !995)
!1001 = !DILocation(line: 134, column: 12, scope: !995)
!1002 = !DILocation(line: 134, column: 25, scope: !995)
!1003 = !DILocation(line: 135, column: 31, scope: !995)
!1004 = !DILocation(line: 135, column: 40, scope: !995)
!1005 = !DILocation(line: 135, column: 5, scope: !995)
!1006 = !DILocation(line: 135, column: 12, scope: !995)
!1007 = !DILocation(line: 135, column: 29, scope: !995)
!1008 = !DILocation(line: 138, column: 5, scope: !995)
!1009 = !DILocation(line: 138, column: 14, scope: !995)
!1010 = !DILocation(line: 138, column: 24, scope: !995)
!1011 = !DILocation(line: 139, column: 5, scope: !995)
!1012 = !DILocation(line: 139, column: 14, scope: !995)
!1013 = !DILocation(line: 139, column: 25, scope: !995)
!1014 = !DILocation(line: 140, column: 5, scope: !995)
!1015 = !DILocation(line: 140, column: 14, scope: !995)
!1016 = !DILocation(line: 140, column: 25, scope: !995)
!1017 = !DILocation(line: 141, column: 33, scope: !995)
!1018 = !DILocation(line: 141, column: 42, scope: !995)
!1019 = !DILocation(line: 141, column: 5, scope: !995)
!1020 = !DILocation(line: 141, column: 14, scope: !995)
!1021 = !DILocation(line: 141, column: 31, scope: !995)
!1022 = !DILocation(line: 142, column: 5, scope: !995)
!1023 = !DILocation(line: 142, column: 14, scope: !995)
!1024 = !DILocation(line: 142, column: 29, scope: !995)
!1025 = !DILocation(line: 146, column: 18, scope: !995)
!1026 = !DILocation(line: 146, column: 27, scope: !995)
!1027 = !DILocation(line: 146, column: 46, scope: !995)
!1028 = !DILocation(line: 146, column: 55, scope: !995)
!1029 = !DILocation(line: 146, column: 44, scope: !995)
!1030 = !DILocation(line: 146, column: 9, scope: !995)
!1031 = !DILocation(line: 147, column: 9, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !995, file: !1, line: 147, column: 9)
!1033 = !DILocation(line: 147, column: 13, scope: !1032)
!1034 = !DILocation(line: 147, column: 25, scope: !1032)
!1035 = !DILocation(line: 147, column: 34, scope: !1032)
!1036 = !DILocation(line: 147, column: 23, scope: !1032)
!1037 = !DILocation(line: 147, column: 19, scope: !1032)
!1038 = !DILocation(line: 148, column: 32, scope: !995)
!1039 = !DILocation(line: 148, column: 5, scope: !995)
!1040 = !DILocation(line: 148, column: 14, scope: !995)
!1041 = !DILocation(line: 148, column: 30, scope: !995)
!1042 = !DILocation(line: 151, column: 5, scope: !995)
!1043 = !DILocation(line: 151, column: 12, scope: !995)
!1044 = !DILocation(line: 151, column: 26, scope: !995)
!1045 = !DILocation(line: 152, column: 5, scope: !995)
!1046 = !DILocation(line: 152, column: 12, scope: !995)
!1047 = !DILocation(line: 152, column: 30, scope: !995)
!1048 = !DILocation(line: 154, column: 3, scope: !995)
!1049 = !DILocation(line: 157, column: 9, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !1051, file: !1, line: 157, column: 9)
!1051 = distinct !DILexicalBlock(scope: !991, file: !1, line: 154, column: 10)
!1052 = !DILocation(line: 157, column: 16, scope: !1050)
!1053 = !DILocation(line: 157, column: 30, scope: !1050)
!1054 = !DILocation(line: 157, column: 35, scope: !1050)
!1055 = !DILocation(line: 157, column: 38, scope: !1050)
!1056 = !DILocation(line: 157, column: 45, scope: !1050)
!1057 = !DILocation(line: 157, column: 59, scope: !1050)
!1058 = !DILocation(line: 158, column: 7, scope: !1050)
!1059 = !DILocation(line: 163, column: 28, scope: !1051)
!1060 = !DILocation(line: 163, column: 35, scope: !1051)
!1061 = !DILocation(line: 163, column: 21, scope: !1051)
!1062 = !DILocation(line: 164, column: 15, scope: !1051)
!1063 = !DILocation(line: 164, column: 22, scope: !1051)
!1064 = !DILocation(line: 164, column: 39, scope: !1051)
!1065 = !DILocation(line: 164, column: 7, scope: !1051)
!1066 = !DILocation(line: 163, column: 7, scope: !1051)
!1067 = !DILocation(line: 162, column: 27, scope: !1051)
!1068 = !DILocation(line: 162, column: 5, scope: !1051)
!1069 = !DILocation(line: 162, column: 12, scope: !1051)
!1070 = !DILocation(line: 162, column: 25, scope: !1051)
!1071 = !DILocation(line: 166, column: 28, scope: !1051)
!1072 = !DILocation(line: 166, column: 35, scope: !1051)
!1073 = !DILocation(line: 166, column: 21, scope: !1051)
!1074 = !DILocation(line: 167, column: 15, scope: !1051)
!1075 = !DILocation(line: 167, column: 22, scope: !1051)
!1076 = !DILocation(line: 167, column: 39, scope: !1051)
!1077 = !DILocation(line: 167, column: 7, scope: !1051)
!1078 = !DILocation(line: 166, column: 7, scope: !1051)
!1079 = !DILocation(line: 165, column: 31, scope: !1051)
!1080 = !DILocation(line: 165, column: 5, scope: !1051)
!1081 = !DILocation(line: 165, column: 12, scope: !1051)
!1082 = !DILocation(line: 165, column: 29, scope: !1051)
!1083 = !DILocation(line: 169, column: 5, scope: !1051)
!1084 = !DILocation(line: 169, column: 12, scope: !1051)
!1085 = !DILocation(line: 169, column: 26, scope: !1051)
!1086 = !DILocation(line: 171, column: 13, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !1051, file: !1, line: 171, column: 5)
!1088 = !DILocation(line: 171, column: 10, scope: !1087)
!1089 = !DILocation(line: 171, column: 18, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1087, file: !1, line: 171, column: 5)
!1091 = !DILocation(line: 171, column: 23, scope: !1090)
!1092 = !DILocation(line: 171, column: 30, scope: !1090)
!1093 = !DILocation(line: 171, column: 21, scope: !1090)
!1094 = !DILocation(line: 171, column: 5, scope: !1087)
!1095 = !DILocation(line: 172, column: 17, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1090, file: !1, line: 171, column: 51)
!1097 = !DILocation(line: 172, column: 24, scope: !1096)
!1098 = !DILocation(line: 172, column: 38, scope: !1096)
!1099 = !DILocation(line: 172, column: 15, scope: !1096)
!1100 = !DILocation(line: 174, column: 28, scope: !1096)
!1101 = !DILocation(line: 174, column: 37, scope: !1096)
!1102 = !DILocation(line: 174, column: 7, scope: !1096)
!1103 = !DILocation(line: 174, column: 16, scope: !1096)
!1104 = !DILocation(line: 174, column: 26, scope: !1096)
!1105 = !DILocation(line: 175, column: 29, scope: !1096)
!1106 = !DILocation(line: 175, column: 38, scope: !1096)
!1107 = !DILocation(line: 175, column: 7, scope: !1096)
!1108 = !DILocation(line: 175, column: 16, scope: !1096)
!1109 = !DILocation(line: 175, column: 27, scope: !1096)
!1110 = !DILocation(line: 176, column: 29, scope: !1096)
!1111 = !DILocation(line: 176, column: 38, scope: !1096)
!1112 = !DILocation(line: 176, column: 50, scope: !1096)
!1113 = !DILocation(line: 176, column: 59, scope: !1096)
!1114 = !DILocation(line: 176, column: 48, scope: !1096)
!1115 = !DILocation(line: 176, column: 7, scope: !1096)
!1116 = !DILocation(line: 176, column: 16, scope: !1096)
!1117 = !DILocation(line: 176, column: 27, scope: !1096)
!1118 = !DILocation(line: 177, column: 35, scope: !1096)
!1119 = !DILocation(line: 177, column: 44, scope: !1096)
!1120 = !DILocation(line: 177, column: 56, scope: !1096)
!1121 = !DILocation(line: 177, column: 65, scope: !1096)
!1122 = !DILocation(line: 177, column: 54, scope: !1096)
!1123 = !DILocation(line: 177, column: 7, scope: !1096)
!1124 = !DILocation(line: 177, column: 16, scope: !1096)
!1125 = !DILocation(line: 177, column: 33, scope: !1096)
!1126 = !DILocation(line: 179, column: 20, scope: !1096)
!1127 = !DILocation(line: 179, column: 29, scope: !1096)
!1128 = !DILocation(line: 179, column: 47, scope: !1096)
!1129 = !DILocation(line: 179, column: 56, scope: !1096)
!1130 = !DILocation(line: 179, column: 45, scope: !1096)
!1131 = !DILocation(line: 179, column: 11, scope: !1096)
!1132 = !DILocation(line: 180, column: 11, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1096, file: !1, line: 180, column: 11)
!1134 = !DILocation(line: 180, column: 15, scope: !1133)
!1135 = !DILocation(line: 180, column: 27, scope: !1133)
!1136 = !DILocation(line: 180, column: 36, scope: !1133)
!1137 = !DILocation(line: 180, column: 25, scope: !1133)
!1138 = !DILocation(line: 180, column: 21, scope: !1133)
!1139 = !DILocation(line: 181, column: 33, scope: !1096)
!1140 = !DILocation(line: 181, column: 7, scope: !1096)
!1141 = !DILocation(line: 181, column: 16, scope: !1096)
!1142 = !DILocation(line: 181, column: 31, scope: !1096)
!1143 = !DILocation(line: 182, column: 20, scope: !1096)
!1144 = !DILocation(line: 182, column: 29, scope: !1096)
!1145 = !DILocation(line: 182, column: 48, scope: !1096)
!1146 = !DILocation(line: 182, column: 57, scope: !1096)
!1147 = !DILocation(line: 182, column: 46, scope: !1096)
!1148 = !DILocation(line: 182, column: 11, scope: !1096)
!1149 = !DILocation(line: 183, column: 11, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !1096, file: !1, line: 183, column: 11)
!1151 = !DILocation(line: 183, column: 15, scope: !1150)
!1152 = !DILocation(line: 183, column: 27, scope: !1150)
!1153 = !DILocation(line: 183, column: 36, scope: !1150)
!1154 = !DILocation(line: 183, column: 25, scope: !1150)
!1155 = !DILocation(line: 183, column: 21, scope: !1150)
!1156 = !DILocation(line: 184, column: 34, scope: !1096)
!1157 = !DILocation(line: 184, column: 7, scope: !1096)
!1158 = !DILocation(line: 184, column: 16, scope: !1096)
!1159 = !DILocation(line: 184, column: 32, scope: !1096)
!1160 = !DILocation(line: 186, column: 17, scope: !1096)
!1161 = !DILocation(line: 186, column: 26, scope: !1096)
!1162 = !DILocation(line: 186, column: 15, scope: !1096)
!1163 = !DILocation(line: 187, column: 11, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1096, file: !1, line: 187, column: 11)
!1165 = !DILocation(line: 187, column: 18, scope: !1164)
!1166 = !DILocation(line: 187, column: 34, scope: !1164)
!1167 = !DILocation(line: 187, column: 32, scope: !1164)
!1168 = !DILocation(line: 187, column: 42, scope: !1164)
!1169 = !DILocation(line: 188, column: 2, scope: !1164)
!1170 = !DILocation(line: 189, column: 7, scope: !1096)
!1171 = !DILocation(line: 189, column: 21, scope: !1096)
!1172 = !DILocation(line: 189, column: 24, scope: !1096)
!1173 = !DILocation(line: 190, column: 50, scope: !1174)
!1174 = distinct !DILexicalBlock(scope: !1096, file: !1, line: 189, column: 29)
!1175 = !DILocation(line: 190, column: 2, scope: !1174)
!1176 = !DILocation(line: 190, column: 9, scope: !1174)
!1177 = !DILocation(line: 190, column: 24, scope: !1174)
!1178 = !DILocation(line: 190, column: 31, scope: !1174)
!1179 = !DILocation(line: 190, column: 44, scope: !1174)
!1180 = !DILocation(line: 190, column: 48, scope: !1174)
!1181 = distinct !{!1181, !1170, !1182, !855}
!1182 = !DILocation(line: 191, column: 7, scope: !1096)
!1183 = !DILocation(line: 192, column: 5, scope: !1096)
!1184 = !DILocation(line: 171, column: 47, scope: !1090)
!1185 = !DILocation(line: 171, column: 5, scope: !1090)
!1186 = distinct !{!1186, !1094, !1187, !855}
!1187 = !DILocation(line: 192, column: 5, scope: !1087)
!1188 = !DILocation(line: 195, column: 1, scope: !979)
!1189 = distinct !DISubprogram(name: "latch_quant_tables", scope: !1, file: !1, line: 220, type: !313, scopeLine: 221, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !591)
!1190 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1189, file: !1, line: 220, type: !168)
!1191 = !DILocation(line: 220, column: 38, scope: !1189)
!1192 = !DILocalVariable(name: "ci", scope: !1189, file: !1, line: 222, type: !167)
!1193 = !DILocation(line: 222, column: 7, scope: !1189)
!1194 = !DILocalVariable(name: "qtblno", scope: !1189, file: !1, line: 222, type: !167)
!1195 = !DILocation(line: 222, column: 11, scope: !1189)
!1196 = !DILocalVariable(name: "compptr", scope: !1189, file: !1, line: 223, type: !399)
!1197 = !DILocation(line: 223, column: 24, scope: !1189)
!1198 = !DILocalVariable(name: "qtbl", scope: !1189, file: !1, line: 224, type: !369)
!1199 = !DILocation(line: 224, column: 16, scope: !1189)
!1200 = !DILocation(line: 226, column: 11, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1189, file: !1, line: 226, column: 3)
!1202 = !DILocation(line: 226, column: 8, scope: !1201)
!1203 = !DILocation(line: 226, column: 16, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1201, file: !1, line: 226, column: 3)
!1205 = !DILocation(line: 226, column: 21, scope: !1204)
!1206 = !DILocation(line: 226, column: 28, scope: !1204)
!1207 = !DILocation(line: 226, column: 19, scope: !1204)
!1208 = !DILocation(line: 226, column: 3, scope: !1201)
!1209 = !DILocation(line: 227, column: 15, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1204, file: !1, line: 226, column: 49)
!1211 = !DILocation(line: 227, column: 22, scope: !1210)
!1212 = !DILocation(line: 227, column: 36, scope: !1210)
!1213 = !DILocation(line: 227, column: 13, scope: !1210)
!1214 = !DILocation(line: 229, column: 9, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !1210, file: !1, line: 229, column: 9)
!1216 = !DILocation(line: 229, column: 18, scope: !1215)
!1217 = !DILocation(line: 229, column: 30, scope: !1215)
!1218 = !DILocation(line: 230, column: 7, scope: !1215)
!1219 = !DILocation(line: 232, column: 14, scope: !1210)
!1220 = !DILocation(line: 232, column: 23, scope: !1210)
!1221 = !DILocation(line: 232, column: 12, scope: !1210)
!1222 = !DILocation(line: 233, column: 9, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1210, file: !1, line: 233, column: 9)
!1224 = !DILocation(line: 233, column: 16, scope: !1223)
!1225 = !DILocation(line: 233, column: 20, scope: !1223)
!1226 = !DILocation(line: 233, column: 23, scope: !1223)
!1227 = !DILocation(line: 233, column: 30, scope: !1223)
!1228 = !DILocation(line: 233, column: 48, scope: !1223)
!1229 = !DILocation(line: 234, column: 2, scope: !1223)
!1230 = !DILocation(line: 234, column: 9, scope: !1223)
!1231 = !DILocation(line: 234, column: 24, scope: !1223)
!1232 = !DILocation(line: 234, column: 32, scope: !1223)
!1233 = !DILocation(line: 235, column: 7, scope: !1223)
!1234 = !DILocation(line: 238, column: 9, scope: !1210)
!1235 = !DILocation(line: 238, column: 16, scope: !1210)
!1236 = !DILocation(line: 238, column: 21, scope: !1210)
!1237 = !DILocation(line: 238, column: 50, scope: !1210)
!1238 = !DILocation(line: 238, column: 7, scope: !1210)
!1239 = !DILocation(line: 237, column: 10, scope: !1210)
!1240 = !DILocation(line: 240, column: 5, scope: !1210)
!1241 = !DILocation(line: 241, column: 28, scope: !1210)
!1242 = !DILocation(line: 241, column: 5, scope: !1210)
!1243 = !DILocation(line: 241, column: 14, scope: !1210)
!1244 = !DILocation(line: 241, column: 26, scope: !1210)
!1245 = !DILocation(line: 242, column: 3, scope: !1210)
!1246 = !DILocation(line: 226, column: 45, scope: !1204)
!1247 = !DILocation(line: 226, column: 3, scope: !1204)
!1248 = distinct !{!1248, !1208, !1249, !855}
!1249 = !DILocation(line: 242, column: 3, scope: !1201)
!1250 = !DILocation(line: 243, column: 1, scope: !1189)
