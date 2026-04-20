; ModuleID = 'cBench/consumer_jpeg_c/src/jdmainct.c'
source_filename = "cBench/consumer_jpeg_c/src/jdmainct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jpeg_decompress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.my_main_controller = type { %struct.jpeg_d_main_controller, [10 x ptr], i32, i32, [2 x ptr], i32, i32, i32, i32 }
%struct.jpeg_d_main_controller = type { ptr, ptr }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_upsampler = type { ptr, ptr, i32 }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.jpeg_d_coef_controller = type { ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_d_post_controller = type { ptr, ptr }

; Function Attrs: noinline nounwind uwtable
define dso_local void @jinit_d_main_controller(ptr noundef %0, i32 noundef %1) #0 !dbg !599 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !601, !DIExpression(), !602)
  store i32 %1, ptr %4, align 4
    #dbg_declare(ptr %4, !603, !DIExpression(), !604)
    #dbg_declare(ptr %5, !605, !DIExpression(), !606)
    #dbg_declare(ptr %6, !607, !DIExpression(), !608)
    #dbg_declare(ptr %7, !609, !DIExpression(), !610)
    #dbg_declare(ptr %8, !611, !DIExpression(), !612)
    #dbg_declare(ptr %9, !613, !DIExpression(), !614)
  %10 = load ptr, ptr %3, align 8, !dbg !615
  %11 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %10, i32 0, i32 1, !dbg !616
  %12 = load ptr, ptr %11, align 8, !dbg !616
  %13 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %12, i32 0, i32 0, !dbg !617
  %14 = load ptr, ptr %13, align 8, !dbg !617
  %15 = load ptr, ptr %3, align 8, !dbg !618
  %16 = call ptr %14(ptr noundef %15, i32 noundef 1, i64 noundef 136), !dbg !619
  store ptr %16, ptr %5, align 8, !dbg !620
  %17 = load ptr, ptr %5, align 8, !dbg !621
  %18 = load ptr, ptr %3, align 8, !dbg !622
  %19 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %18, i32 0, i32 74, !dbg !623
  store ptr %17, ptr %19, align 8, !dbg !624
  %20 = load ptr, ptr %5, align 8, !dbg !625
  %21 = getelementptr inbounds nuw %struct.my_main_controller, ptr %20, i32 0, i32 0, !dbg !626
  %22 = getelementptr inbounds nuw %struct.jpeg_d_main_controller, ptr %21, i32 0, i32 0, !dbg !627
  store ptr @start_pass_main, ptr %22, align 8, !dbg !628
  %23 = load i32, ptr %4, align 4, !dbg !629
  %24 = icmp ne i32 %23, 0, !dbg !629
  br i1 %24, label %25, label %36, !dbg !629

25:                                               ; preds = %2
  %26 = load ptr, ptr %3, align 8, !dbg !631
  %27 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %26, i32 0, i32 0, !dbg !631
  %28 = load ptr, ptr %27, align 8, !dbg !631
  %29 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %28, i32 0, i32 5, !dbg !631
  store i32 4, ptr %29, align 8, !dbg !631
  %30 = load ptr, ptr %3, align 8, !dbg !631
  %31 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %30, i32 0, i32 0, !dbg !631
  %32 = load ptr, ptr %31, align 8, !dbg !631
  %33 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %32, i32 0, i32 0, !dbg !631
  %34 = load ptr, ptr %33, align 8, !dbg !631
  %35 = load ptr, ptr %3, align 8, !dbg !631
  call void %34(ptr noundef %35), !dbg !631
  br label %36, !dbg !631

36:                                               ; preds = %25, %2
  %37 = load ptr, ptr %3, align 8, !dbg !632
  %38 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %37, i32 0, i32 81, !dbg !634
  %39 = load ptr, ptr %38, align 8, !dbg !634
  %40 = getelementptr inbounds nuw %struct.jpeg_upsampler, ptr %39, i32 0, i32 2, !dbg !635
  %41 = load i32, ptr %40, align 8, !dbg !635
  %42 = icmp ne i32 %41, 0, !dbg !632
  br i1 %42, label %43, label %65, !dbg !632

43:                                               ; preds = %36
  %44 = load ptr, ptr %3, align 8, !dbg !636
  %45 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %44, i32 0, i32 59, !dbg !639
  %46 = load i32, ptr %45, align 4, !dbg !639
  %47 = icmp slt i32 %46, 2, !dbg !640
  br i1 %47, label %48, label %59, !dbg !640

48:                                               ; preds = %43
  %49 = load ptr, ptr %3, align 8, !dbg !641
  %50 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %49, i32 0, i32 0, !dbg !641
  %51 = load ptr, ptr %50, align 8, !dbg !641
  %52 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %51, i32 0, i32 5, !dbg !641
  store i32 46, ptr %52, align 8, !dbg !641
  %53 = load ptr, ptr %3, align 8, !dbg !641
  %54 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %53, i32 0, i32 0, !dbg !641
  %55 = load ptr, ptr %54, align 8, !dbg !641
  %56 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %55, i32 0, i32 0, !dbg !641
  %57 = load ptr, ptr %56, align 8, !dbg !641
  %58 = load ptr, ptr %3, align 8, !dbg !641
  call void %57(ptr noundef %58), !dbg !641
  br label %59, !dbg !641

59:                                               ; preds = %48, %43
  %60 = load ptr, ptr %3, align 8, !dbg !642
  call void @alloc_funny_pointers(ptr noundef %60), !dbg !643
  %61 = load ptr, ptr %3, align 8, !dbg !644
  %62 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %61, i32 0, i32 59, !dbg !645
  %63 = load i32, ptr %62, align 4, !dbg !645
  %64 = add nsw i32 %63, 2, !dbg !646
  store i32 %64, ptr %8, align 4, !dbg !647
  br label %69, !dbg !648

65:                                               ; preds = %36
  %66 = load ptr, ptr %3, align 8, !dbg !649
  %67 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %66, i32 0, i32 59, !dbg !651
  %68 = load i32, ptr %67, align 4, !dbg !651
  store i32 %68, ptr %8, align 4, !dbg !652
  br label %69

69:                                               ; preds = %65, %59
  store i32 0, ptr %6, align 4, !dbg !653
  %70 = load ptr, ptr %3, align 8, !dbg !655
  %71 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %70, i32 0, i32 43, !dbg !656
  %72 = load ptr, ptr %71, align 8, !dbg !656
  store ptr %72, ptr %9, align 8, !dbg !657
  br label %73, !dbg !658

73:                                               ; preds = %113, %69
  %74 = load i32, ptr %6, align 4, !dbg !659
  %75 = load ptr, ptr %3, align 8, !dbg !661
  %76 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %75, i32 0, i32 8, !dbg !662
  %77 = load i32, ptr %76, align 8, !dbg !662
  %78 = icmp slt i32 %74, %77, !dbg !663
  br i1 %78, label %79, label %118, !dbg !664

79:                                               ; preds = %73
  %80 = load ptr, ptr %9, align 8, !dbg !665
  %81 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %80, i32 0, i32 3, !dbg !667
  %82 = load i32, ptr %81, align 4, !dbg !667
  %83 = load ptr, ptr %9, align 8, !dbg !668
  %84 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %83, i32 0, i32 9, !dbg !669
  %85 = load i32, ptr %84, align 4, !dbg !669
  %86 = mul nsw i32 %82, %85, !dbg !670
  %87 = load ptr, ptr %3, align 8, !dbg !671
  %88 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %87, i32 0, i32 59, !dbg !672
  %89 = load i32, ptr %88, align 4, !dbg !672
  %90 = sdiv i32 %86, %89, !dbg !673
  store i32 %90, ptr %7, align 4, !dbg !674
  %91 = load ptr, ptr %3, align 8, !dbg !675
  %92 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %91, i32 0, i32 1, !dbg !676
  %93 = load ptr, ptr %92, align 8, !dbg !676
  %94 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %93, i32 0, i32 2, !dbg !677
  %95 = load ptr, ptr %94, align 8, !dbg !677
  %96 = load ptr, ptr %3, align 8, !dbg !678
  %97 = load ptr, ptr %9, align 8, !dbg !679
  %98 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %97, i32 0, i32 7, !dbg !680
  %99 = load i32, ptr %98, align 4, !dbg !680
  %100 = load ptr, ptr %9, align 8, !dbg !681
  %101 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %100, i32 0, i32 9, !dbg !682
  %102 = load i32, ptr %101, align 4, !dbg !682
  %103 = mul i32 %99, %102, !dbg !683
  %104 = load i32, ptr %7, align 4, !dbg !684
  %105 = load i32, ptr %8, align 4, !dbg !685
  %106 = mul nsw i32 %104, %105, !dbg !686
  %107 = call ptr %95(ptr noundef %96, i32 noundef 1, i32 noundef %103, i32 noundef %106), !dbg !687
  %108 = load ptr, ptr %5, align 8, !dbg !688
  %109 = getelementptr inbounds nuw %struct.my_main_controller, ptr %108, i32 0, i32 1, !dbg !689
  %110 = load i32, ptr %6, align 4, !dbg !690
  %111 = sext i32 %110 to i64, !dbg !688
  %112 = getelementptr inbounds [10 x ptr], ptr %109, i64 0, i64 %111, !dbg !688
  store ptr %107, ptr %112, align 8, !dbg !691
  br label %113, !dbg !692

113:                                              ; preds = %79
  %114 = load i32, ptr %6, align 4, !dbg !693
  %115 = add nsw i32 %114, 1, !dbg !693
  store i32 %115, ptr %6, align 4, !dbg !693
  %116 = load ptr, ptr %9, align 8, !dbg !694
  %117 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %116, i32 1, !dbg !694
  store ptr %117, ptr %9, align 8, !dbg !694
  br label %73, !dbg !695, !llvm.loop !696

118:                                              ; preds = %73
  ret void, !dbg !699
}

; Function Attrs: noinline nounwind uwtable
define internal void @start_pass_main(ptr noundef %0, i32 noundef %1) #0 !dbg !700 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !701, !DIExpression(), !702)
  store i32 %1, ptr %4, align 4
    #dbg_declare(ptr %4, !703, !DIExpression(), !704)
    #dbg_declare(ptr %5, !705, !DIExpression(), !706)
  %6 = load ptr, ptr %3, align 8, !dbg !707
  %7 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %6, i32 0, i32 74, !dbg !708
  %8 = load ptr, ptr %7, align 8, !dbg !708
  store ptr %8, ptr %5, align 8, !dbg !706
  %9 = load i32, ptr %4, align 4, !dbg !709
  switch i32 %9, label %41 [
    i32 0, label %10
    i32 2, label %37
  ], !dbg !710

10:                                               ; preds = %2
  %11 = load ptr, ptr %3, align 8, !dbg !711
  %12 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %11, i32 0, i32 81, !dbg !714
  %13 = load ptr, ptr %12, align 8, !dbg !714
  %14 = getelementptr inbounds nuw %struct.jpeg_upsampler, ptr %13, i32 0, i32 2, !dbg !715
  %15 = load i32, ptr %14, align 8, !dbg !715
  %16 = icmp ne i32 %15, 0, !dbg !711
  br i1 %16, label %17, label %28, !dbg !711

17:                                               ; preds = %10
  %18 = load ptr, ptr %5, align 8, !dbg !716
  %19 = getelementptr inbounds nuw %struct.my_main_controller, ptr %18, i32 0, i32 0, !dbg !718
  %20 = getelementptr inbounds nuw %struct.jpeg_d_main_controller, ptr %19, i32 0, i32 1, !dbg !719
  store ptr @process_data_context_main, ptr %20, align 8, !dbg !720
  %21 = load ptr, ptr %3, align 8, !dbg !721
  call void @make_funny_pointers(ptr noundef %21), !dbg !722
  %22 = load ptr, ptr %5, align 8, !dbg !723
  %23 = getelementptr inbounds nuw %struct.my_main_controller, ptr %22, i32 0, i32 5, !dbg !724
  store i32 0, ptr %23, align 8, !dbg !725
  %24 = load ptr, ptr %5, align 8, !dbg !726
  %25 = getelementptr inbounds nuw %struct.my_main_controller, ptr %24, i32 0, i32 6, !dbg !727
  store i32 0, ptr %25, align 4, !dbg !728
  %26 = load ptr, ptr %5, align 8, !dbg !729
  %27 = getelementptr inbounds nuw %struct.my_main_controller, ptr %26, i32 0, i32 8, !dbg !730
  store i32 0, ptr %27, align 4, !dbg !731
  br label %32, !dbg !732

28:                                               ; preds = %10
  %29 = load ptr, ptr %5, align 8, !dbg !733
  %30 = getelementptr inbounds nuw %struct.my_main_controller, ptr %29, i32 0, i32 0, !dbg !735
  %31 = getelementptr inbounds nuw %struct.jpeg_d_main_controller, ptr %30, i32 0, i32 1, !dbg !736
  store ptr @process_data_simple_main, ptr %31, align 8, !dbg !737
  br label %32

32:                                               ; preds = %28, %17
  %33 = load ptr, ptr %5, align 8, !dbg !738
  %34 = getelementptr inbounds nuw %struct.my_main_controller, ptr %33, i32 0, i32 2, !dbg !739
  store i32 0, ptr %34, align 8, !dbg !740
  %35 = load ptr, ptr %5, align 8, !dbg !741
  %36 = getelementptr inbounds nuw %struct.my_main_controller, ptr %35, i32 0, i32 3, !dbg !742
  store i32 0, ptr %36, align 4, !dbg !743
  br label %52, !dbg !744

37:                                               ; preds = %2
  %38 = load ptr, ptr %5, align 8, !dbg !745
  %39 = getelementptr inbounds nuw %struct.my_main_controller, ptr %38, i32 0, i32 0, !dbg !746
  %40 = getelementptr inbounds nuw %struct.jpeg_d_main_controller, ptr %39, i32 0, i32 1, !dbg !747
  store ptr @process_data_crank_post, ptr %40, align 8, !dbg !748
  br label %52, !dbg !749

41:                                               ; preds = %2
  %42 = load ptr, ptr %3, align 8, !dbg !750
  %43 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %42, i32 0, i32 0, !dbg !750
  %44 = load ptr, ptr %43, align 8, !dbg !750
  %45 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %44, i32 0, i32 5, !dbg !750
  store i32 4, ptr %45, align 8, !dbg !750
  %46 = load ptr, ptr %3, align 8, !dbg !750
  %47 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %46, i32 0, i32 0, !dbg !750
  %48 = load ptr, ptr %47, align 8, !dbg !750
  %49 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %48, i32 0, i32 0, !dbg !750
  %50 = load ptr, ptr %49, align 8, !dbg !750
  %51 = load ptr, ptr %3, align 8, !dbg !750
  call void %50(ptr noundef %51), !dbg !750
  br label %52, !dbg !751

52:                                               ; preds = %41, %37, %32
  ret void, !dbg !752
}

; Function Attrs: noinline nounwind uwtable
define internal void @alloc_funny_pointers(ptr noundef %0) #0 !dbg !753 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !754, !DIExpression(), !755)
    #dbg_declare(ptr %3, !756, !DIExpression(), !757)
  %9 = load ptr, ptr %2, align 8, !dbg !758
  %10 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %9, i32 0, i32 74, !dbg !759
  %11 = load ptr, ptr %10, align 8, !dbg !759
  store ptr %11, ptr %3, align 8, !dbg !757
    #dbg_declare(ptr %4, !760, !DIExpression(), !761)
    #dbg_declare(ptr %5, !762, !DIExpression(), !763)
    #dbg_declare(ptr %6, !764, !DIExpression(), !765)
  %12 = load ptr, ptr %2, align 8, !dbg !766
  %13 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %12, i32 0, i32 59, !dbg !767
  %14 = load i32, ptr %13, align 4, !dbg !767
  store i32 %14, ptr %6, align 4, !dbg !765
    #dbg_declare(ptr %7, !768, !DIExpression(), !769)
    #dbg_declare(ptr %8, !770, !DIExpression(), !771)
  %15 = load ptr, ptr %2, align 8, !dbg !772
  %16 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %15, i32 0, i32 1, !dbg !773
  %17 = load ptr, ptr %16, align 8, !dbg !773
  %18 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %17, i32 0, i32 0, !dbg !774
  %19 = load ptr, ptr %18, align 8, !dbg !774
  %20 = load ptr, ptr %2, align 8, !dbg !775
  %21 = load ptr, ptr %2, align 8, !dbg !776
  %22 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %21, i32 0, i32 8, !dbg !777
  %23 = load i32, ptr %22, align 8, !dbg !777
  %24 = mul nsw i32 %23, 2, !dbg !778
  %25 = sext i32 %24 to i64, !dbg !776
  %26 = mul i64 %25, 8, !dbg !779
  %27 = call ptr %19(ptr noundef %20, i32 noundef 1, i64 noundef %26), !dbg !780
  %28 = load ptr, ptr %3, align 8, !dbg !781
  %29 = getelementptr inbounds nuw %struct.my_main_controller, ptr %28, i32 0, i32 4, !dbg !782
  %30 = getelementptr inbounds [2 x ptr], ptr %29, i64 0, i64 0, !dbg !781
  store ptr %27, ptr %30, align 8, !dbg !783
  %31 = load ptr, ptr %3, align 8, !dbg !784
  %32 = getelementptr inbounds nuw %struct.my_main_controller, ptr %31, i32 0, i32 4, !dbg !785
  %33 = getelementptr inbounds [2 x ptr], ptr %32, i64 0, i64 0, !dbg !784
  %34 = load ptr, ptr %33, align 8, !dbg !784
  %35 = load ptr, ptr %2, align 8, !dbg !786
  %36 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %35, i32 0, i32 8, !dbg !787
  %37 = load i32, ptr %36, align 8, !dbg !787
  %38 = sext i32 %37 to i64, !dbg !788
  %39 = getelementptr inbounds ptr, ptr %34, i64 %38, !dbg !788
  %40 = load ptr, ptr %3, align 8, !dbg !789
  %41 = getelementptr inbounds nuw %struct.my_main_controller, ptr %40, i32 0, i32 4, !dbg !790
  %42 = getelementptr inbounds [2 x ptr], ptr %41, i64 0, i64 1, !dbg !789
  store ptr %39, ptr %42, align 8, !dbg !791
  store i32 0, ptr %4, align 4, !dbg !792
  %43 = load ptr, ptr %2, align 8, !dbg !794
  %44 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %43, i32 0, i32 43, !dbg !795
  %45 = load ptr, ptr %44, align 8, !dbg !795
  store ptr %45, ptr %7, align 8, !dbg !796
  br label %46, !dbg !797

46:                                               ; preds = %105, %1
  %47 = load i32, ptr %4, align 4, !dbg !798
  %48 = load ptr, ptr %2, align 8, !dbg !800
  %49 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %48, i32 0, i32 8, !dbg !801
  %50 = load i32, ptr %49, align 8, !dbg !801
  %51 = icmp slt i32 %47, %50, !dbg !802
  br i1 %51, label %52, label %110, !dbg !803

52:                                               ; preds = %46
  %53 = load ptr, ptr %7, align 8, !dbg !804
  %54 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %53, i32 0, i32 3, !dbg !806
  %55 = load i32, ptr %54, align 4, !dbg !806
  %56 = load ptr, ptr %7, align 8, !dbg !807
  %57 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %56, i32 0, i32 9, !dbg !808
  %58 = load i32, ptr %57, align 4, !dbg !808
  %59 = mul nsw i32 %55, %58, !dbg !809
  %60 = load ptr, ptr %2, align 8, !dbg !810
  %61 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %60, i32 0, i32 59, !dbg !811
  %62 = load i32, ptr %61, align 4, !dbg !811
  %63 = sdiv i32 %59, %62, !dbg !812
  store i32 %63, ptr %5, align 4, !dbg !813
  %64 = load ptr, ptr %2, align 8, !dbg !814
  %65 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %64, i32 0, i32 1, !dbg !815
  %66 = load ptr, ptr %65, align 8, !dbg !815
  %67 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %66, i32 0, i32 0, !dbg !816
  %68 = load ptr, ptr %67, align 8, !dbg !816
  %69 = load ptr, ptr %2, align 8, !dbg !817
  %70 = load i32, ptr %5, align 4, !dbg !818
  %71 = load i32, ptr %6, align 4, !dbg !819
  %72 = add nsw i32 %71, 4, !dbg !820
  %73 = mul nsw i32 %70, %72, !dbg !821
  %74 = mul nsw i32 2, %73, !dbg !822
  %75 = sext i32 %74 to i64, !dbg !823
  %76 = mul i64 %75, 8, !dbg !824
  %77 = call ptr %68(ptr noundef %69, i32 noundef 1, i64 noundef %76), !dbg !825
  store ptr %77, ptr %8, align 8, !dbg !826
  %78 = load i32, ptr %5, align 4, !dbg !827
  %79 = load ptr, ptr %8, align 8, !dbg !828
  %80 = sext i32 %78 to i64, !dbg !828
  %81 = getelementptr inbounds ptr, ptr %79, i64 %80, !dbg !828
  store ptr %81, ptr %8, align 8, !dbg !828
  %82 = load ptr, ptr %8, align 8, !dbg !829
  %83 = load ptr, ptr %3, align 8, !dbg !830
  %84 = getelementptr inbounds nuw %struct.my_main_controller, ptr %83, i32 0, i32 4, !dbg !831
  %85 = getelementptr inbounds [2 x ptr], ptr %84, i64 0, i64 0, !dbg !830
  %86 = load ptr, ptr %85, align 8, !dbg !830
  %87 = load i32, ptr %4, align 4, !dbg !832
  %88 = sext i32 %87 to i64, !dbg !830
  %89 = getelementptr inbounds ptr, ptr %86, i64 %88, !dbg !830
  store ptr %82, ptr %89, align 8, !dbg !833
  %90 = load i32, ptr %5, align 4, !dbg !834
  %91 = load i32, ptr %6, align 4, !dbg !835
  %92 = add nsw i32 %91, 4, !dbg !836
  %93 = mul nsw i32 %90, %92, !dbg !837
  %94 = load ptr, ptr %8, align 8, !dbg !838
  %95 = sext i32 %93 to i64, !dbg !838
  %96 = getelementptr inbounds ptr, ptr %94, i64 %95, !dbg !838
  store ptr %96, ptr %8, align 8, !dbg !838
  %97 = load ptr, ptr %8, align 8, !dbg !839
  %98 = load ptr, ptr %3, align 8, !dbg !840
  %99 = getelementptr inbounds nuw %struct.my_main_controller, ptr %98, i32 0, i32 4, !dbg !841
  %100 = getelementptr inbounds [2 x ptr], ptr %99, i64 0, i64 1, !dbg !840
  %101 = load ptr, ptr %100, align 8, !dbg !840
  %102 = load i32, ptr %4, align 4, !dbg !842
  %103 = sext i32 %102 to i64, !dbg !840
  %104 = getelementptr inbounds ptr, ptr %101, i64 %103, !dbg !840
  store ptr %97, ptr %104, align 8, !dbg !843
  br label %105, !dbg !844

105:                                              ; preds = %52
  %106 = load i32, ptr %4, align 4, !dbg !845
  %107 = add nsw i32 %106, 1, !dbg !845
  store i32 %107, ptr %4, align 4, !dbg !845
  %108 = load ptr, ptr %7, align 8, !dbg !846
  %109 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %108, i32 1, !dbg !846
  store ptr %109, ptr %7, align 8, !dbg !846
  br label %46, !dbg !847, !llvm.loop !848

110:                                              ; preds = %46
  ret void, !dbg !850
}

; Function Attrs: noinline nounwind uwtable
define internal void @process_data_context_main(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 !dbg !851 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
    #dbg_declare(ptr %5, !852, !DIExpression(), !853)
  store ptr %1, ptr %6, align 8
    #dbg_declare(ptr %6, !854, !DIExpression(), !855)
  store ptr %2, ptr %7, align 8
    #dbg_declare(ptr %7, !856, !DIExpression(), !857)
  store i32 %3, ptr %8, align 4
    #dbg_declare(ptr %8, !858, !DIExpression(), !859)
    #dbg_declare(ptr %9, !860, !DIExpression(), !861)
  %10 = load ptr, ptr %5, align 8, !dbg !862
  %11 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %10, i32 0, i32 74, !dbg !863
  %12 = load ptr, ptr %11, align 8, !dbg !863
  store ptr %12, ptr %9, align 8, !dbg !861
  %13 = load ptr, ptr %9, align 8, !dbg !864
  %14 = getelementptr inbounds nuw %struct.my_main_controller, ptr %13, i32 0, i32 2, !dbg !866
  %15 = load i32, ptr %14, align 8, !dbg !866
  %16 = icmp ne i32 %15, 0, !dbg !864
  br i1 %16, label %42, label %17, !dbg !867

17:                                               ; preds = %4
  %18 = load ptr, ptr %5, align 8, !dbg !868
  %19 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %18, i32 0, i32 75, !dbg !871
  %20 = load ptr, ptr %19, align 8, !dbg !871
  %21 = getelementptr inbounds nuw %struct.jpeg_d_coef_controller, ptr %20, i32 0, i32 3, !dbg !872
  %22 = load ptr, ptr %21, align 8, !dbg !872
  %23 = load ptr, ptr %5, align 8, !dbg !873
  %24 = load ptr, ptr %9, align 8, !dbg !874
  %25 = getelementptr inbounds nuw %struct.my_main_controller, ptr %24, i32 0, i32 4, !dbg !875
  %26 = load ptr, ptr %9, align 8, !dbg !876
  %27 = getelementptr inbounds nuw %struct.my_main_controller, ptr %26, i32 0, i32 5, !dbg !877
  %28 = load i32, ptr %27, align 8, !dbg !877
  %29 = sext i32 %28 to i64, !dbg !874
  %30 = getelementptr inbounds [2 x ptr], ptr %25, i64 0, i64 %29, !dbg !874
  %31 = load ptr, ptr %30, align 8, !dbg !874
  %32 = call i32 %22(ptr noundef %23, ptr noundef %31), !dbg !878
  %33 = icmp ne i32 %32, 0, !dbg !878
  br i1 %33, label %35, label %34, !dbg !879

34:                                               ; preds = %17
  br label %166, !dbg !880

35:                                               ; preds = %17
  %36 = load ptr, ptr %9, align 8, !dbg !881
  %37 = getelementptr inbounds nuw %struct.my_main_controller, ptr %36, i32 0, i32 2, !dbg !882
  store i32 1, ptr %37, align 8, !dbg !883
  %38 = load ptr, ptr %9, align 8, !dbg !884
  %39 = getelementptr inbounds nuw %struct.my_main_controller, ptr %38, i32 0, i32 8, !dbg !885
  %40 = load i32, ptr %39, align 4, !dbg !886
  %41 = add i32 %40, 1, !dbg !886
  store i32 %41, ptr %39, align 4, !dbg !886
  br label %42, !dbg !887

42:                                               ; preds = %35, %4
  %43 = load ptr, ptr %9, align 8, !dbg !888
  %44 = getelementptr inbounds nuw %struct.my_main_controller, ptr %43, i32 0, i32 6, !dbg !889
  %45 = load i32, ptr %44, align 4, !dbg !889
  switch i32 %45, label %166 [
    i32 2, label %46
    i32 0, label %86
    i32 1, label %107
  ], !dbg !890

46:                                               ; preds = %42
  %47 = load ptr, ptr %5, align 8, !dbg !891
  %48 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %47, i32 0, i32 76, !dbg !893
  %49 = load ptr, ptr %48, align 8, !dbg !893
  %50 = getelementptr inbounds nuw %struct.jpeg_d_post_controller, ptr %49, i32 0, i32 1, !dbg !894
  %51 = load ptr, ptr %50, align 8, !dbg !894
  %52 = load ptr, ptr %5, align 8, !dbg !895
  %53 = load ptr, ptr %9, align 8, !dbg !896
  %54 = getelementptr inbounds nuw %struct.my_main_controller, ptr %53, i32 0, i32 4, !dbg !897
  %55 = load ptr, ptr %9, align 8, !dbg !898
  %56 = getelementptr inbounds nuw %struct.my_main_controller, ptr %55, i32 0, i32 5, !dbg !899
  %57 = load i32, ptr %56, align 8, !dbg !899
  %58 = sext i32 %57 to i64, !dbg !896
  %59 = getelementptr inbounds [2 x ptr], ptr %54, i64 0, i64 %58, !dbg !896
  %60 = load ptr, ptr %59, align 8, !dbg !896
  %61 = load ptr, ptr %9, align 8, !dbg !900
  %62 = getelementptr inbounds nuw %struct.my_main_controller, ptr %61, i32 0, i32 3, !dbg !901
  %63 = load ptr, ptr %9, align 8, !dbg !902
  %64 = getelementptr inbounds nuw %struct.my_main_controller, ptr %63, i32 0, i32 7, !dbg !903
  %65 = load i32, ptr %64, align 8, !dbg !903
  %66 = load ptr, ptr %6, align 8, !dbg !904
  %67 = load ptr, ptr %7, align 8, !dbg !905
  %68 = load i32, ptr %8, align 4, !dbg !906
  call void %51(ptr noundef %52, ptr noundef %60, ptr noundef %62, i32 noundef %65, ptr noundef %66, ptr noundef %67, i32 noundef %68), !dbg !907
  %69 = load ptr, ptr %9, align 8, !dbg !908
  %70 = getelementptr inbounds nuw %struct.my_main_controller, ptr %69, i32 0, i32 3, !dbg !910
  %71 = load i32, ptr %70, align 4, !dbg !910
  %72 = load ptr, ptr %9, align 8, !dbg !911
  %73 = getelementptr inbounds nuw %struct.my_main_controller, ptr %72, i32 0, i32 7, !dbg !912
  %74 = load i32, ptr %73, align 8, !dbg !912
  %75 = icmp ult i32 %71, %74, !dbg !913
  br i1 %75, label %76, label %77, !dbg !913

76:                                               ; preds = %46
  br label %166, !dbg !914

77:                                               ; preds = %46
  %78 = load ptr, ptr %9, align 8, !dbg !915
  %79 = getelementptr inbounds nuw %struct.my_main_controller, ptr %78, i32 0, i32 6, !dbg !916
  store i32 0, ptr %79, align 4, !dbg !917
  %80 = load ptr, ptr %7, align 8, !dbg !918
  %81 = load i32, ptr %80, align 4, !dbg !920
  %82 = load i32, ptr %8, align 4, !dbg !921
  %83 = icmp uge i32 %81, %82, !dbg !922
  br i1 %83, label %84, label %85, !dbg !922

84:                                               ; preds = %77
  br label %166, !dbg !923

85:                                               ; preds = %77
  br label %86, !dbg !921

86:                                               ; preds = %42, %85
  %87 = load ptr, ptr %9, align 8, !dbg !924
  %88 = getelementptr inbounds nuw %struct.my_main_controller, ptr %87, i32 0, i32 3, !dbg !925
  store i32 0, ptr %88, align 4, !dbg !926
  %89 = load ptr, ptr %5, align 8, !dbg !927
  %90 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %89, i32 0, i32 59, !dbg !928
  %91 = load i32, ptr %90, align 4, !dbg !928
  %92 = sub nsw i32 %91, 1, !dbg !929
  %93 = load ptr, ptr %9, align 8, !dbg !930
  %94 = getelementptr inbounds nuw %struct.my_main_controller, ptr %93, i32 0, i32 7, !dbg !931
  store i32 %92, ptr %94, align 8, !dbg !932
  %95 = load ptr, ptr %9, align 8, !dbg !933
  %96 = getelementptr inbounds nuw %struct.my_main_controller, ptr %95, i32 0, i32 8, !dbg !935
  %97 = load i32, ptr %96, align 4, !dbg !935
  %98 = load ptr, ptr %5, align 8, !dbg !936
  %99 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %98, i32 0, i32 60, !dbg !937
  %100 = load i32, ptr %99, align 8, !dbg !937
  %101 = icmp eq i32 %97, %100, !dbg !938
  br i1 %101, label %102, label %104, !dbg !938

102:                                              ; preds = %86
  %103 = load ptr, ptr %5, align 8, !dbg !939
  call void @set_bottom_pointers(ptr noundef %103), !dbg !940
  br label %104, !dbg !940

104:                                              ; preds = %102, %86
  %105 = load ptr, ptr %9, align 8, !dbg !941
  %106 = getelementptr inbounds nuw %struct.my_main_controller, ptr %105, i32 0, i32 6, !dbg !942
  store i32 1, ptr %106, align 4, !dbg !943
  br label %107, !dbg !941

107:                                              ; preds = %42, %104
  %108 = load ptr, ptr %5, align 8, !dbg !944
  %109 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %108, i32 0, i32 76, !dbg !945
  %110 = load ptr, ptr %109, align 8, !dbg !945
  %111 = getelementptr inbounds nuw %struct.jpeg_d_post_controller, ptr %110, i32 0, i32 1, !dbg !946
  %112 = load ptr, ptr %111, align 8, !dbg !946
  %113 = load ptr, ptr %5, align 8, !dbg !947
  %114 = load ptr, ptr %9, align 8, !dbg !948
  %115 = getelementptr inbounds nuw %struct.my_main_controller, ptr %114, i32 0, i32 4, !dbg !949
  %116 = load ptr, ptr %9, align 8, !dbg !950
  %117 = getelementptr inbounds nuw %struct.my_main_controller, ptr %116, i32 0, i32 5, !dbg !951
  %118 = load i32, ptr %117, align 8, !dbg !951
  %119 = sext i32 %118 to i64, !dbg !948
  %120 = getelementptr inbounds [2 x ptr], ptr %115, i64 0, i64 %119, !dbg !948
  %121 = load ptr, ptr %120, align 8, !dbg !948
  %122 = load ptr, ptr %9, align 8, !dbg !952
  %123 = getelementptr inbounds nuw %struct.my_main_controller, ptr %122, i32 0, i32 3, !dbg !953
  %124 = load ptr, ptr %9, align 8, !dbg !954
  %125 = getelementptr inbounds nuw %struct.my_main_controller, ptr %124, i32 0, i32 7, !dbg !955
  %126 = load i32, ptr %125, align 8, !dbg !955
  %127 = load ptr, ptr %6, align 8, !dbg !956
  %128 = load ptr, ptr %7, align 8, !dbg !957
  %129 = load i32, ptr %8, align 4, !dbg !958
  call void %112(ptr noundef %113, ptr noundef %121, ptr noundef %123, i32 noundef %126, ptr noundef %127, ptr noundef %128, i32 noundef %129), !dbg !959
  %130 = load ptr, ptr %9, align 8, !dbg !960
  %131 = getelementptr inbounds nuw %struct.my_main_controller, ptr %130, i32 0, i32 3, !dbg !962
  %132 = load i32, ptr %131, align 4, !dbg !962
  %133 = load ptr, ptr %9, align 8, !dbg !963
  %134 = getelementptr inbounds nuw %struct.my_main_controller, ptr %133, i32 0, i32 7, !dbg !964
  %135 = load i32, ptr %134, align 8, !dbg !964
  %136 = icmp ult i32 %132, %135, !dbg !965
  br i1 %136, label %137, label %138, !dbg !965

137:                                              ; preds = %107
  br label %166, !dbg !966

138:                                              ; preds = %107
  %139 = load ptr, ptr %9, align 8, !dbg !967
  %140 = getelementptr inbounds nuw %struct.my_main_controller, ptr %139, i32 0, i32 8, !dbg !969
  %141 = load i32, ptr %140, align 4, !dbg !969
  %142 = icmp eq i32 %141, 1, !dbg !970
  br i1 %142, label %143, label %145, !dbg !970

143:                                              ; preds = %138
  %144 = load ptr, ptr %5, align 8, !dbg !971
  call void @set_wraparound_pointers(ptr noundef %144), !dbg !972
  br label %145, !dbg !972

145:                                              ; preds = %143, %138
  %146 = load ptr, ptr %9, align 8, !dbg !973
  %147 = getelementptr inbounds nuw %struct.my_main_controller, ptr %146, i32 0, i32 5, !dbg !974
  %148 = load i32, ptr %147, align 8, !dbg !975
  %149 = xor i32 %148, 1, !dbg !975
  store i32 %149, ptr %147, align 8, !dbg !975
  %150 = load ptr, ptr %9, align 8, !dbg !976
  %151 = getelementptr inbounds nuw %struct.my_main_controller, ptr %150, i32 0, i32 2, !dbg !977
  store i32 0, ptr %151, align 8, !dbg !978
  %152 = load ptr, ptr %5, align 8, !dbg !979
  %153 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %152, i32 0, i32 59, !dbg !980
  %154 = load i32, ptr %153, align 4, !dbg !980
  %155 = add nsw i32 %154, 1, !dbg !981
  %156 = load ptr, ptr %9, align 8, !dbg !982
  %157 = getelementptr inbounds nuw %struct.my_main_controller, ptr %156, i32 0, i32 3, !dbg !983
  store i32 %155, ptr %157, align 4, !dbg !984
  %158 = load ptr, ptr %5, align 8, !dbg !985
  %159 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %158, i32 0, i32 59, !dbg !986
  %160 = load i32, ptr %159, align 4, !dbg !986
  %161 = add nsw i32 %160, 2, !dbg !987
  %162 = load ptr, ptr %9, align 8, !dbg !988
  %163 = getelementptr inbounds nuw %struct.my_main_controller, ptr %162, i32 0, i32 7, !dbg !989
  store i32 %161, ptr %163, align 8, !dbg !990
  %164 = load ptr, ptr %9, align 8, !dbg !991
  %165 = getelementptr inbounds nuw %struct.my_main_controller, ptr %164, i32 0, i32 6, !dbg !992
  store i32 2, ptr %165, align 4, !dbg !993
  br label %166, !dbg !994

166:                                              ; preds = %34, %76, %84, %137, %145, %42
  ret void, !dbg !995
}

; Function Attrs: noinline nounwind uwtable
define internal void @make_funny_pointers(ptr noundef %0) #0 !dbg !996 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !997, !DIExpression(), !998)
    #dbg_declare(ptr %3, !999, !DIExpression(), !1000)
  %12 = load ptr, ptr %2, align 8, !dbg !1001
  %13 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %12, i32 0, i32 74, !dbg !1002
  %14 = load ptr, ptr %13, align 8, !dbg !1002
  store ptr %14, ptr %3, align 8, !dbg !1000
    #dbg_declare(ptr %4, !1003, !DIExpression(), !1004)
    #dbg_declare(ptr %5, !1005, !DIExpression(), !1006)
    #dbg_declare(ptr %6, !1007, !DIExpression(), !1008)
    #dbg_declare(ptr %7, !1009, !DIExpression(), !1010)
  %15 = load ptr, ptr %2, align 8, !dbg !1011
  %16 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %15, i32 0, i32 59, !dbg !1012
  %17 = load i32, ptr %16, align 4, !dbg !1012
  store i32 %17, ptr %7, align 4, !dbg !1010
    #dbg_declare(ptr %8, !1013, !DIExpression(), !1014)
    #dbg_declare(ptr %9, !1015, !DIExpression(), !1016)
    #dbg_declare(ptr %10, !1017, !DIExpression(), !1018)
    #dbg_declare(ptr %11, !1019, !DIExpression(), !1020)
  store i32 0, ptr %4, align 4, !dbg !1021
  %18 = load ptr, ptr %2, align 8, !dbg !1023
  %19 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %18, i32 0, i32 43, !dbg !1024
  %20 = load ptr, ptr %19, align 8, !dbg !1024
  store ptr %20, ptr %8, align 8, !dbg !1025
  br label %21, !dbg !1026

21:                                               ; preds = %150, %1
  %22 = load i32, ptr %4, align 4, !dbg !1027
  %23 = load ptr, ptr %2, align 8, !dbg !1029
  %24 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %23, i32 0, i32 8, !dbg !1030
  %25 = load i32, ptr %24, align 8, !dbg !1030
  %26 = icmp slt i32 %22, %25, !dbg !1031
  br i1 %26, label %27, label %155, !dbg !1032

27:                                               ; preds = %21
  %28 = load ptr, ptr %8, align 8, !dbg !1033
  %29 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %28, i32 0, i32 3, !dbg !1035
  %30 = load i32, ptr %29, align 4, !dbg !1035
  %31 = load ptr, ptr %8, align 8, !dbg !1036
  %32 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %31, i32 0, i32 9, !dbg !1037
  %33 = load i32, ptr %32, align 4, !dbg !1037
  %34 = mul nsw i32 %30, %33, !dbg !1038
  %35 = load ptr, ptr %2, align 8, !dbg !1039
  %36 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %35, i32 0, i32 59, !dbg !1040
  %37 = load i32, ptr %36, align 4, !dbg !1040
  %38 = sdiv i32 %34, %37, !dbg !1041
  store i32 %38, ptr %6, align 4, !dbg !1042
  %39 = load ptr, ptr %3, align 8, !dbg !1043
  %40 = getelementptr inbounds nuw %struct.my_main_controller, ptr %39, i32 0, i32 4, !dbg !1044
  %41 = getelementptr inbounds [2 x ptr], ptr %40, i64 0, i64 0, !dbg !1043
  %42 = load ptr, ptr %41, align 8, !dbg !1043
  %43 = load i32, ptr %4, align 4, !dbg !1045
  %44 = sext i32 %43 to i64, !dbg !1043
  %45 = getelementptr inbounds ptr, ptr %42, i64 %44, !dbg !1043
  %46 = load ptr, ptr %45, align 8, !dbg !1043
  store ptr %46, ptr %10, align 8, !dbg !1046
  %47 = load ptr, ptr %3, align 8, !dbg !1047
  %48 = getelementptr inbounds nuw %struct.my_main_controller, ptr %47, i32 0, i32 4, !dbg !1048
  %49 = getelementptr inbounds [2 x ptr], ptr %48, i64 0, i64 1, !dbg !1047
  %50 = load ptr, ptr %49, align 8, !dbg !1047
  %51 = load i32, ptr %4, align 4, !dbg !1049
  %52 = sext i32 %51 to i64, !dbg !1047
  %53 = getelementptr inbounds ptr, ptr %50, i64 %52, !dbg !1047
  %54 = load ptr, ptr %53, align 8, !dbg !1047
  store ptr %54, ptr %11, align 8, !dbg !1050
  %55 = load ptr, ptr %3, align 8, !dbg !1051
  %56 = getelementptr inbounds nuw %struct.my_main_controller, ptr %55, i32 0, i32 1, !dbg !1052
  %57 = load i32, ptr %4, align 4, !dbg !1053
  %58 = sext i32 %57 to i64, !dbg !1051
  %59 = getelementptr inbounds [10 x ptr], ptr %56, i64 0, i64 %58, !dbg !1051
  %60 = load ptr, ptr %59, align 8, !dbg !1051
  store ptr %60, ptr %9, align 8, !dbg !1054
  store i32 0, ptr %5, align 4, !dbg !1055
  br label %61, !dbg !1057

61:                                               ; preds = %82, %27
  %62 = load i32, ptr %5, align 4, !dbg !1058
  %63 = load i32, ptr %6, align 4, !dbg !1060
  %64 = load i32, ptr %7, align 4, !dbg !1061
  %65 = add nsw i32 %64, 2, !dbg !1062
  %66 = mul nsw i32 %63, %65, !dbg !1063
  %67 = icmp slt i32 %62, %66, !dbg !1064
  br i1 %67, label %68, label %85, !dbg !1065

68:                                               ; preds = %61
  %69 = load ptr, ptr %9, align 8, !dbg !1066
  %70 = load i32, ptr %5, align 4, !dbg !1068
  %71 = sext i32 %70 to i64, !dbg !1066
  %72 = getelementptr inbounds ptr, ptr %69, i64 %71, !dbg !1066
  %73 = load ptr, ptr %72, align 8, !dbg !1066
  %74 = load ptr, ptr %11, align 8, !dbg !1069
  %75 = load i32, ptr %5, align 4, !dbg !1070
  %76 = sext i32 %75 to i64, !dbg !1069
  %77 = getelementptr inbounds ptr, ptr %74, i64 %76, !dbg !1069
  store ptr %73, ptr %77, align 8, !dbg !1071
  %78 = load ptr, ptr %10, align 8, !dbg !1072
  %79 = load i32, ptr %5, align 4, !dbg !1073
  %80 = sext i32 %79 to i64, !dbg !1072
  %81 = getelementptr inbounds ptr, ptr %78, i64 %80, !dbg !1072
  store ptr %73, ptr %81, align 8, !dbg !1074
  br label %82, !dbg !1075

82:                                               ; preds = %68
  %83 = load i32, ptr %5, align 4, !dbg !1076
  %84 = add nsw i32 %83, 1, !dbg !1076
  store i32 %84, ptr %5, align 4, !dbg !1076
  br label %61, !dbg !1077, !llvm.loop !1078

85:                                               ; preds = %61
  store i32 0, ptr %5, align 4, !dbg !1080
  br label %86, !dbg !1082

86:                                               ; preds = %128, %85
  %87 = load i32, ptr %5, align 4, !dbg !1083
  %88 = load i32, ptr %6, align 4, !dbg !1085
  %89 = mul nsw i32 %88, 2, !dbg !1086
  %90 = icmp slt i32 %87, %89, !dbg !1087
  br i1 %90, label %91, label %131, !dbg !1088

91:                                               ; preds = %86
  %92 = load ptr, ptr %9, align 8, !dbg !1089
  %93 = load i32, ptr %6, align 4, !dbg !1091
  %94 = load i32, ptr %7, align 4, !dbg !1092
  %95 = mul nsw i32 %93, %94, !dbg !1093
  %96 = load i32, ptr %5, align 4, !dbg !1094
  %97 = add nsw i32 %95, %96, !dbg !1095
  %98 = sext i32 %97 to i64, !dbg !1089
  %99 = getelementptr inbounds ptr, ptr %92, i64 %98, !dbg !1089
  %100 = load ptr, ptr %99, align 8, !dbg !1089
  %101 = load ptr, ptr %11, align 8, !dbg !1096
  %102 = load i32, ptr %6, align 4, !dbg !1097
  %103 = load i32, ptr %7, align 4, !dbg !1098
  %104 = sub nsw i32 %103, 2, !dbg !1099
  %105 = mul nsw i32 %102, %104, !dbg !1100
  %106 = load i32, ptr %5, align 4, !dbg !1101
  %107 = add nsw i32 %105, %106, !dbg !1102
  %108 = sext i32 %107 to i64, !dbg !1096
  %109 = getelementptr inbounds ptr, ptr %101, i64 %108, !dbg !1096
  store ptr %100, ptr %109, align 8, !dbg !1103
  %110 = load ptr, ptr %9, align 8, !dbg !1104
  %111 = load i32, ptr %6, align 4, !dbg !1105
  %112 = load i32, ptr %7, align 4, !dbg !1106
  %113 = sub nsw i32 %112, 2, !dbg !1107
  %114 = mul nsw i32 %111, %113, !dbg !1108
  %115 = load i32, ptr %5, align 4, !dbg !1109
  %116 = add nsw i32 %114, %115, !dbg !1110
  %117 = sext i32 %116 to i64, !dbg !1104
  %118 = getelementptr inbounds ptr, ptr %110, i64 %117, !dbg !1104
  %119 = load ptr, ptr %118, align 8, !dbg !1104
  %120 = load ptr, ptr %11, align 8, !dbg !1111
  %121 = load i32, ptr %6, align 4, !dbg !1112
  %122 = load i32, ptr %7, align 4, !dbg !1113
  %123 = mul nsw i32 %121, %122, !dbg !1114
  %124 = load i32, ptr %5, align 4, !dbg !1115
  %125 = add nsw i32 %123, %124, !dbg !1116
  %126 = sext i32 %125 to i64, !dbg !1111
  %127 = getelementptr inbounds ptr, ptr %120, i64 %126, !dbg !1111
  store ptr %119, ptr %127, align 8, !dbg !1117
  br label %128, !dbg !1118

128:                                              ; preds = %91
  %129 = load i32, ptr %5, align 4, !dbg !1119
  %130 = add nsw i32 %129, 1, !dbg !1119
  store i32 %130, ptr %5, align 4, !dbg !1119
  br label %86, !dbg !1120, !llvm.loop !1121

131:                                              ; preds = %86
  store i32 0, ptr %5, align 4, !dbg !1123
  br label %132, !dbg !1125

132:                                              ; preds = %146, %131
  %133 = load i32, ptr %5, align 4, !dbg !1126
  %134 = load i32, ptr %6, align 4, !dbg !1128
  %135 = icmp slt i32 %133, %134, !dbg !1129
  br i1 %135, label %136, label %149, !dbg !1130

136:                                              ; preds = %132
  %137 = load ptr, ptr %10, align 8, !dbg !1131
  %138 = getelementptr inbounds ptr, ptr %137, i64 0, !dbg !1131
  %139 = load ptr, ptr %138, align 8, !dbg !1131
  %140 = load ptr, ptr %10, align 8, !dbg !1133
  %141 = load i32, ptr %5, align 4, !dbg !1134
  %142 = load i32, ptr %6, align 4, !dbg !1135
  %143 = sub nsw i32 %141, %142, !dbg !1136
  %144 = sext i32 %143 to i64, !dbg !1133
  %145 = getelementptr inbounds ptr, ptr %140, i64 %144, !dbg !1133
  store ptr %139, ptr %145, align 8, !dbg !1137
  br label %146, !dbg !1138

146:                                              ; preds = %136
  %147 = load i32, ptr %5, align 4, !dbg !1139
  %148 = add nsw i32 %147, 1, !dbg !1139
  store i32 %148, ptr %5, align 4, !dbg !1139
  br label %132, !dbg !1140, !llvm.loop !1141

149:                                              ; preds = %132
  br label %150, !dbg !1143

150:                                              ; preds = %149
  %151 = load i32, ptr %4, align 4, !dbg !1144
  %152 = add nsw i32 %151, 1, !dbg !1144
  store i32 %152, ptr %4, align 4, !dbg !1144
  %153 = load ptr, ptr %8, align 8, !dbg !1145
  %154 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %153, i32 1, !dbg !1145
  store ptr %154, ptr %8, align 8, !dbg !1145
  br label %21, !dbg !1146, !llvm.loop !1147

155:                                              ; preds = %21
  ret void, !dbg !1149
}

; Function Attrs: noinline nounwind uwtable
define internal void @process_data_simple_main(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 !dbg !1150 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
    #dbg_declare(ptr %5, !1151, !DIExpression(), !1152)
  store ptr %1, ptr %6, align 8
    #dbg_declare(ptr %6, !1153, !DIExpression(), !1154)
  store ptr %2, ptr %7, align 8
    #dbg_declare(ptr %7, !1155, !DIExpression(), !1156)
  store i32 %3, ptr %8, align 4
    #dbg_declare(ptr %8, !1157, !DIExpression(), !1158)
    #dbg_declare(ptr %9, !1159, !DIExpression(), !1160)
  %11 = load ptr, ptr %5, align 8, !dbg !1161
  %12 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %11, i32 0, i32 74, !dbg !1162
  %13 = load ptr, ptr %12, align 8, !dbg !1162
  store ptr %13, ptr %9, align 8, !dbg !1160
    #dbg_declare(ptr %10, !1163, !DIExpression(), !1164)
  %14 = load ptr, ptr %9, align 8, !dbg !1165
  %15 = getelementptr inbounds nuw %struct.my_main_controller, ptr %14, i32 0, i32 2, !dbg !1167
  %16 = load i32, ptr %15, align 8, !dbg !1167
  %17 = icmp ne i32 %16, 0, !dbg !1165
  br i1 %17, label %34, label %18, !dbg !1168

18:                                               ; preds = %4
  %19 = load ptr, ptr %5, align 8, !dbg !1169
  %20 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %19, i32 0, i32 75, !dbg !1172
  %21 = load ptr, ptr %20, align 8, !dbg !1172
  %22 = getelementptr inbounds nuw %struct.jpeg_d_coef_controller, ptr %21, i32 0, i32 3, !dbg !1173
  %23 = load ptr, ptr %22, align 8, !dbg !1173
  %24 = load ptr, ptr %5, align 8, !dbg !1174
  %25 = load ptr, ptr %9, align 8, !dbg !1175
  %26 = getelementptr inbounds nuw %struct.my_main_controller, ptr %25, i32 0, i32 1, !dbg !1176
  %27 = getelementptr inbounds [10 x ptr], ptr %26, i64 0, i64 0, !dbg !1175
  %28 = call i32 %23(ptr noundef %24, ptr noundef %27), !dbg !1177
  %29 = icmp ne i32 %28, 0, !dbg !1177
  br i1 %29, label %31, label %30, !dbg !1178

30:                                               ; preds = %18
  br label %63, !dbg !1179

31:                                               ; preds = %18
  %32 = load ptr, ptr %9, align 8, !dbg !1180
  %33 = getelementptr inbounds nuw %struct.my_main_controller, ptr %32, i32 0, i32 2, !dbg !1181
  store i32 1, ptr %33, align 8, !dbg !1182
  br label %34, !dbg !1183

34:                                               ; preds = %31, %4
  %35 = load ptr, ptr %5, align 8, !dbg !1184
  %36 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %35, i32 0, i32 59, !dbg !1185
  %37 = load i32, ptr %36, align 4, !dbg !1185
  store i32 %37, ptr %10, align 4, !dbg !1186
  %38 = load ptr, ptr %5, align 8, !dbg !1187
  %39 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %38, i32 0, i32 76, !dbg !1188
  %40 = load ptr, ptr %39, align 8, !dbg !1188
  %41 = getelementptr inbounds nuw %struct.jpeg_d_post_controller, ptr %40, i32 0, i32 1, !dbg !1189
  %42 = load ptr, ptr %41, align 8, !dbg !1189
  %43 = load ptr, ptr %5, align 8, !dbg !1190
  %44 = load ptr, ptr %9, align 8, !dbg !1191
  %45 = getelementptr inbounds nuw %struct.my_main_controller, ptr %44, i32 0, i32 1, !dbg !1192
  %46 = getelementptr inbounds [10 x ptr], ptr %45, i64 0, i64 0, !dbg !1191
  %47 = load ptr, ptr %9, align 8, !dbg !1193
  %48 = getelementptr inbounds nuw %struct.my_main_controller, ptr %47, i32 0, i32 3, !dbg !1194
  %49 = load i32, ptr %10, align 4, !dbg !1195
  %50 = load ptr, ptr %6, align 8, !dbg !1196
  %51 = load ptr, ptr %7, align 8, !dbg !1197
  %52 = load i32, ptr %8, align 4, !dbg !1198
  call void %42(ptr noundef %43, ptr noundef %46, ptr noundef %48, i32 noundef %49, ptr noundef %50, ptr noundef %51, i32 noundef %52), !dbg !1199
  %53 = load ptr, ptr %9, align 8, !dbg !1200
  %54 = getelementptr inbounds nuw %struct.my_main_controller, ptr %53, i32 0, i32 3, !dbg !1202
  %55 = load i32, ptr %54, align 4, !dbg !1202
  %56 = load i32, ptr %10, align 4, !dbg !1203
  %57 = icmp uge i32 %55, %56, !dbg !1204
  br i1 %57, label %58, label %63, !dbg !1204

58:                                               ; preds = %34
  %59 = load ptr, ptr %9, align 8, !dbg !1205
  %60 = getelementptr inbounds nuw %struct.my_main_controller, ptr %59, i32 0, i32 2, !dbg !1207
  store i32 0, ptr %60, align 8, !dbg !1208
  %61 = load ptr, ptr %9, align 8, !dbg !1209
  %62 = getelementptr inbounds nuw %struct.my_main_controller, ptr %61, i32 0, i32 3, !dbg !1210
  store i32 0, ptr %62, align 4, !dbg !1211
  br label %63, !dbg !1212

63:                                               ; preds = %30, %58, %34
  ret void, !dbg !1213
}

; Function Attrs: noinline nounwind uwtable
define internal void @process_data_crank_post(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 !dbg !1214 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
    #dbg_declare(ptr %5, !1215, !DIExpression(), !1216)
  store ptr %1, ptr %6, align 8
    #dbg_declare(ptr %6, !1217, !DIExpression(), !1218)
  store ptr %2, ptr %7, align 8
    #dbg_declare(ptr %7, !1219, !DIExpression(), !1220)
  store i32 %3, ptr %8, align 4
    #dbg_declare(ptr %8, !1221, !DIExpression(), !1222)
  %9 = load ptr, ptr %5, align 8, !dbg !1223
  %10 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %9, i32 0, i32 76, !dbg !1224
  %11 = load ptr, ptr %10, align 8, !dbg !1224
  %12 = getelementptr inbounds nuw %struct.jpeg_d_post_controller, ptr %11, i32 0, i32 1, !dbg !1225
  %13 = load ptr, ptr %12, align 8, !dbg !1225
  %14 = load ptr, ptr %5, align 8, !dbg !1226
  %15 = load ptr, ptr %6, align 8, !dbg !1227
  %16 = load ptr, ptr %7, align 8, !dbg !1228
  %17 = load i32, ptr %8, align 4, !dbg !1229
  call void %13(ptr noundef %14, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %15, ptr noundef %16, i32 noundef %17), !dbg !1230
  ret void, !dbg !1231
}

; Function Attrs: noinline nounwind uwtable
define internal void @set_bottom_pointers(ptr noundef %0) #0 !dbg !1232 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !1233, !DIExpression(), !1234)
    #dbg_declare(ptr %3, !1235, !DIExpression(), !1236)
  %11 = load ptr, ptr %2, align 8, !dbg !1237
  %12 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %11, i32 0, i32 74, !dbg !1238
  %13 = load ptr, ptr %12, align 8, !dbg !1238
  store ptr %13, ptr %3, align 8, !dbg !1236
    #dbg_declare(ptr %4, !1239, !DIExpression(), !1240)
    #dbg_declare(ptr %5, !1241, !DIExpression(), !1242)
    #dbg_declare(ptr %6, !1243, !DIExpression(), !1244)
    #dbg_declare(ptr %7, !1245, !DIExpression(), !1246)
    #dbg_declare(ptr %8, !1247, !DIExpression(), !1248)
    #dbg_declare(ptr %9, !1249, !DIExpression(), !1250)
    #dbg_declare(ptr %10, !1251, !DIExpression(), !1252)
  store i32 0, ptr %4, align 4, !dbg !1253
  %14 = load ptr, ptr %2, align 8, !dbg !1255
  %15 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %14, i32 0, i32 43, !dbg !1256
  %16 = load ptr, ptr %15, align 8, !dbg !1256
  store ptr %16, ptr %9, align 8, !dbg !1257
  br label %17, !dbg !1258

17:                                               ; preds = %91, %1
  %18 = load i32, ptr %4, align 4, !dbg !1259
  %19 = load ptr, ptr %2, align 8, !dbg !1261
  %20 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %19, i32 0, i32 8, !dbg !1262
  %21 = load i32, ptr %20, align 8, !dbg !1262
  %22 = icmp slt i32 %18, %21, !dbg !1263
  br i1 %22, label %23, label %96, !dbg !1264

23:                                               ; preds = %17
  %24 = load ptr, ptr %9, align 8, !dbg !1265
  %25 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %24, i32 0, i32 3, !dbg !1267
  %26 = load i32, ptr %25, align 4, !dbg !1267
  %27 = load ptr, ptr %9, align 8, !dbg !1268
  %28 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %27, i32 0, i32 9, !dbg !1269
  %29 = load i32, ptr %28, align 4, !dbg !1269
  %30 = mul nsw i32 %26, %29, !dbg !1270
  store i32 %30, ptr %7, align 4, !dbg !1271
  %31 = load i32, ptr %7, align 4, !dbg !1272
  %32 = load ptr, ptr %2, align 8, !dbg !1273
  %33 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %32, i32 0, i32 59, !dbg !1274
  %34 = load i32, ptr %33, align 4, !dbg !1274
  %35 = sdiv i32 %31, %34, !dbg !1275
  store i32 %35, ptr %6, align 4, !dbg !1276
  %36 = load ptr, ptr %9, align 8, !dbg !1277
  %37 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %36, i32 0, i32 11, !dbg !1278
  %38 = load i32, ptr %37, align 4, !dbg !1278
  %39 = load i32, ptr %7, align 4, !dbg !1279
  %40 = urem i32 %38, %39, !dbg !1280
  store i32 %40, ptr %8, align 4, !dbg !1281
  %41 = load i32, ptr %8, align 4, !dbg !1282
  %42 = icmp eq i32 %41, 0, !dbg !1284
  br i1 %42, label %43, label %45, !dbg !1284

43:                                               ; preds = %23
  %44 = load i32, ptr %7, align 4, !dbg !1285
  store i32 %44, ptr %8, align 4, !dbg !1286
  br label %45, !dbg !1287

45:                                               ; preds = %43, %23
  %46 = load i32, ptr %4, align 4, !dbg !1288
  %47 = icmp eq i32 %46, 0, !dbg !1290
  br i1 %47, label %48, label %56, !dbg !1290

48:                                               ; preds = %45
  %49 = load i32, ptr %8, align 4, !dbg !1291
  %50 = sub nsw i32 %49, 1, !dbg !1293
  %51 = load i32, ptr %6, align 4, !dbg !1294
  %52 = sdiv i32 %50, %51, !dbg !1295
  %53 = add nsw i32 %52, 1, !dbg !1296
  %54 = load ptr, ptr %3, align 8, !dbg !1297
  %55 = getelementptr inbounds nuw %struct.my_main_controller, ptr %54, i32 0, i32 7, !dbg !1298
  store i32 %53, ptr %55, align 8, !dbg !1299
  br label %56, !dbg !1300

56:                                               ; preds = %48, %45
  %57 = load ptr, ptr %3, align 8, !dbg !1301
  %58 = getelementptr inbounds nuw %struct.my_main_controller, ptr %57, i32 0, i32 4, !dbg !1302
  %59 = load ptr, ptr %3, align 8, !dbg !1303
  %60 = getelementptr inbounds nuw %struct.my_main_controller, ptr %59, i32 0, i32 5, !dbg !1304
  %61 = load i32, ptr %60, align 8, !dbg !1304
  %62 = sext i32 %61 to i64, !dbg !1301
  %63 = getelementptr inbounds [2 x ptr], ptr %58, i64 0, i64 %62, !dbg !1301
  %64 = load ptr, ptr %63, align 8, !dbg !1301
  %65 = load i32, ptr %4, align 4, !dbg !1305
  %66 = sext i32 %65 to i64, !dbg !1301
  %67 = getelementptr inbounds ptr, ptr %64, i64 %66, !dbg !1301
  %68 = load ptr, ptr %67, align 8, !dbg !1301
  store ptr %68, ptr %10, align 8, !dbg !1306
  store i32 0, ptr %5, align 4, !dbg !1307
  br label %69, !dbg !1309

69:                                               ; preds = %87, %56
  %70 = load i32, ptr %5, align 4, !dbg !1310
  %71 = load i32, ptr %6, align 4, !dbg !1312
  %72 = mul nsw i32 %71, 2, !dbg !1313
  %73 = icmp slt i32 %70, %72, !dbg !1314
  br i1 %73, label %74, label %90, !dbg !1315

74:                                               ; preds = %69
  %75 = load ptr, ptr %10, align 8, !dbg !1316
  %76 = load i32, ptr %8, align 4, !dbg !1318
  %77 = sub nsw i32 %76, 1, !dbg !1319
  %78 = sext i32 %77 to i64, !dbg !1316
  %79 = getelementptr inbounds ptr, ptr %75, i64 %78, !dbg !1316
  %80 = load ptr, ptr %79, align 8, !dbg !1316
  %81 = load ptr, ptr %10, align 8, !dbg !1320
  %82 = load i32, ptr %8, align 4, !dbg !1321
  %83 = load i32, ptr %5, align 4, !dbg !1322
  %84 = add nsw i32 %82, %83, !dbg !1323
  %85 = sext i32 %84 to i64, !dbg !1320
  %86 = getelementptr inbounds ptr, ptr %81, i64 %85, !dbg !1320
  store ptr %80, ptr %86, align 8, !dbg !1324
  br label %87, !dbg !1325

87:                                               ; preds = %74
  %88 = load i32, ptr %5, align 4, !dbg !1326
  %89 = add nsw i32 %88, 1, !dbg !1326
  store i32 %89, ptr %5, align 4, !dbg !1326
  br label %69, !dbg !1327, !llvm.loop !1328

90:                                               ; preds = %69
  br label %91, !dbg !1330

91:                                               ; preds = %90
  %92 = load i32, ptr %4, align 4, !dbg !1331
  %93 = add nsw i32 %92, 1, !dbg !1331
  store i32 %93, ptr %4, align 4, !dbg !1331
  %94 = load ptr, ptr %9, align 8, !dbg !1332
  %95 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %94, i32 1, !dbg !1332
  store ptr %95, ptr %9, align 8, !dbg !1332
  br label %17, !dbg !1333, !llvm.loop !1334

96:                                               ; preds = %17
  ret void, !dbg !1336
}

; Function Attrs: noinline nounwind uwtable
define internal void @set_wraparound_pointers(ptr noundef %0) #0 !dbg !1337 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !1338, !DIExpression(), !1339)
    #dbg_declare(ptr %3, !1340, !DIExpression(), !1341)
  %11 = load ptr, ptr %2, align 8, !dbg !1342
  %12 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %11, i32 0, i32 74, !dbg !1343
  %13 = load ptr, ptr %12, align 8, !dbg !1343
  store ptr %13, ptr %3, align 8, !dbg !1341
    #dbg_declare(ptr %4, !1344, !DIExpression(), !1345)
    #dbg_declare(ptr %5, !1346, !DIExpression(), !1347)
    #dbg_declare(ptr %6, !1348, !DIExpression(), !1349)
    #dbg_declare(ptr %7, !1350, !DIExpression(), !1351)
  %14 = load ptr, ptr %2, align 8, !dbg !1352
  %15 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %14, i32 0, i32 59, !dbg !1353
  %16 = load i32, ptr %15, align 4, !dbg !1353
  store i32 %16, ptr %7, align 4, !dbg !1351
    #dbg_declare(ptr %8, !1354, !DIExpression(), !1355)
    #dbg_declare(ptr %9, !1356, !DIExpression(), !1357)
    #dbg_declare(ptr %10, !1358, !DIExpression(), !1359)
  store i32 0, ptr %4, align 4, !dbg !1360
  %17 = load ptr, ptr %2, align 8, !dbg !1362
  %18 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %17, i32 0, i32 43, !dbg !1363
  %19 = load ptr, ptr %18, align 8, !dbg !1363
  store ptr %19, ptr %8, align 8, !dbg !1364
  br label %20, !dbg !1365

20:                                               ; preds = %123, %1
  %21 = load i32, ptr %4, align 4, !dbg !1366
  %22 = load ptr, ptr %2, align 8, !dbg !1368
  %23 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %22, i32 0, i32 8, !dbg !1369
  %24 = load i32, ptr %23, align 8, !dbg !1369
  %25 = icmp slt i32 %21, %24, !dbg !1370
  br i1 %25, label %26, label %128, !dbg !1371

26:                                               ; preds = %20
  %27 = load ptr, ptr %8, align 8, !dbg !1372
  %28 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %27, i32 0, i32 3, !dbg !1374
  %29 = load i32, ptr %28, align 4, !dbg !1374
  %30 = load ptr, ptr %8, align 8, !dbg !1375
  %31 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %30, i32 0, i32 9, !dbg !1376
  %32 = load i32, ptr %31, align 4, !dbg !1376
  %33 = mul nsw i32 %29, %32, !dbg !1377
  %34 = load ptr, ptr %2, align 8, !dbg !1378
  %35 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %34, i32 0, i32 59, !dbg !1379
  %36 = load i32, ptr %35, align 4, !dbg !1379
  %37 = sdiv i32 %33, %36, !dbg !1380
  store i32 %37, ptr %6, align 4, !dbg !1381
  %38 = load ptr, ptr %3, align 8, !dbg !1382
  %39 = getelementptr inbounds nuw %struct.my_main_controller, ptr %38, i32 0, i32 4, !dbg !1383
  %40 = getelementptr inbounds [2 x ptr], ptr %39, i64 0, i64 0, !dbg !1382
  %41 = load ptr, ptr %40, align 8, !dbg !1382
  %42 = load i32, ptr %4, align 4, !dbg !1384
  %43 = sext i32 %42 to i64, !dbg !1382
  %44 = getelementptr inbounds ptr, ptr %41, i64 %43, !dbg !1382
  %45 = load ptr, ptr %44, align 8, !dbg !1382
  store ptr %45, ptr %9, align 8, !dbg !1385
  %46 = load ptr, ptr %3, align 8, !dbg !1386
  %47 = getelementptr inbounds nuw %struct.my_main_controller, ptr %46, i32 0, i32 4, !dbg !1387
  %48 = getelementptr inbounds [2 x ptr], ptr %47, i64 0, i64 1, !dbg !1386
  %49 = load ptr, ptr %48, align 8, !dbg !1386
  %50 = load i32, ptr %4, align 4, !dbg !1388
  %51 = sext i32 %50 to i64, !dbg !1386
  %52 = getelementptr inbounds ptr, ptr %49, i64 %51, !dbg !1386
  %53 = load ptr, ptr %52, align 8, !dbg !1386
  store ptr %53, ptr %10, align 8, !dbg !1389
  store i32 0, ptr %5, align 4, !dbg !1390
  br label %54, !dbg !1392

54:                                               ; preds = %119, %26
  %55 = load i32, ptr %5, align 4, !dbg !1393
  %56 = load i32, ptr %6, align 4, !dbg !1395
  %57 = icmp slt i32 %55, %56, !dbg !1396
  br i1 %57, label %58, label %122, !dbg !1397

58:                                               ; preds = %54
  %59 = load ptr, ptr %9, align 8, !dbg !1398
  %60 = load i32, ptr %6, align 4, !dbg !1400
  %61 = load i32, ptr %7, align 4, !dbg !1401
  %62 = add nsw i32 %61, 1, !dbg !1402
  %63 = mul nsw i32 %60, %62, !dbg !1403
  %64 = load i32, ptr %5, align 4, !dbg !1404
  %65 = add nsw i32 %63, %64, !dbg !1405
  %66 = sext i32 %65 to i64, !dbg !1398
  %67 = getelementptr inbounds ptr, ptr %59, i64 %66, !dbg !1398
  %68 = load ptr, ptr %67, align 8, !dbg !1398
  %69 = load ptr, ptr %9, align 8, !dbg !1406
  %70 = load i32, ptr %5, align 4, !dbg !1407
  %71 = load i32, ptr %6, align 4, !dbg !1408
  %72 = sub nsw i32 %70, %71, !dbg !1409
  %73 = sext i32 %72 to i64, !dbg !1406
  %74 = getelementptr inbounds ptr, ptr %69, i64 %73, !dbg !1406
  store ptr %68, ptr %74, align 8, !dbg !1410
  %75 = load ptr, ptr %10, align 8, !dbg !1411
  %76 = load i32, ptr %6, align 4, !dbg !1412
  %77 = load i32, ptr %7, align 4, !dbg !1413
  %78 = add nsw i32 %77, 1, !dbg !1414
  %79 = mul nsw i32 %76, %78, !dbg !1415
  %80 = load i32, ptr %5, align 4, !dbg !1416
  %81 = add nsw i32 %79, %80, !dbg !1417
  %82 = sext i32 %81 to i64, !dbg !1411
  %83 = getelementptr inbounds ptr, ptr %75, i64 %82, !dbg !1411
  %84 = load ptr, ptr %83, align 8, !dbg !1411
  %85 = load ptr, ptr %10, align 8, !dbg !1418
  %86 = load i32, ptr %5, align 4, !dbg !1419
  %87 = load i32, ptr %6, align 4, !dbg !1420
  %88 = sub nsw i32 %86, %87, !dbg !1421
  %89 = sext i32 %88 to i64, !dbg !1418
  %90 = getelementptr inbounds ptr, ptr %85, i64 %89, !dbg !1418
  store ptr %84, ptr %90, align 8, !dbg !1422
  %91 = load ptr, ptr %9, align 8, !dbg !1423
  %92 = load i32, ptr %5, align 4, !dbg !1424
  %93 = sext i32 %92 to i64, !dbg !1423
  %94 = getelementptr inbounds ptr, ptr %91, i64 %93, !dbg !1423
  %95 = load ptr, ptr %94, align 8, !dbg !1423
  %96 = load ptr, ptr %9, align 8, !dbg !1425
  %97 = load i32, ptr %6, align 4, !dbg !1426
  %98 = load i32, ptr %7, align 4, !dbg !1427
  %99 = add nsw i32 %98, 2, !dbg !1428
  %100 = mul nsw i32 %97, %99, !dbg !1429
  %101 = load i32, ptr %5, align 4, !dbg !1430
  %102 = add nsw i32 %100, %101, !dbg !1431
  %103 = sext i32 %102 to i64, !dbg !1425
  %104 = getelementptr inbounds ptr, ptr %96, i64 %103, !dbg !1425
  store ptr %95, ptr %104, align 8, !dbg !1432
  %105 = load ptr, ptr %10, align 8, !dbg !1433
  %106 = load i32, ptr %5, align 4, !dbg !1434
  %107 = sext i32 %106 to i64, !dbg !1433
  %108 = getelementptr inbounds ptr, ptr %105, i64 %107, !dbg !1433
  %109 = load ptr, ptr %108, align 8, !dbg !1433
  %110 = load ptr, ptr %10, align 8, !dbg !1435
  %111 = load i32, ptr %6, align 4, !dbg !1436
  %112 = load i32, ptr %7, align 4, !dbg !1437
  %113 = add nsw i32 %112, 2, !dbg !1438
  %114 = mul nsw i32 %111, %113, !dbg !1439
  %115 = load i32, ptr %5, align 4, !dbg !1440
  %116 = add nsw i32 %114, %115, !dbg !1441
  %117 = sext i32 %116 to i64, !dbg !1435
  %118 = getelementptr inbounds ptr, ptr %110, i64 %117, !dbg !1435
  store ptr %109, ptr %118, align 8, !dbg !1442
  br label %119, !dbg !1443

119:                                              ; preds = %58
  %120 = load i32, ptr %5, align 4, !dbg !1444
  %121 = add nsw i32 %120, 1, !dbg !1444
  store i32 %121, ptr %5, align 4, !dbg !1444
  br label %54, !dbg !1445, !llvm.loop !1446

122:                                              ; preds = %54
  br label %123, !dbg !1448

123:                                              ; preds = %122
  %124 = load i32, ptr %4, align 4, !dbg !1449
  %125 = add nsw i32 %124, 1, !dbg !1449
  store i32 %125, ptr %4, align 4, !dbg !1449
  %126 = load ptr, ptr %8, align 8, !dbg !1450
  %127 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %126, i32 1, !dbg !1450
  store ptr %127, ptr %8, align 8, !dbg !1450
  br label %20, !dbg !1451, !llvm.loop !1452

128:                                              ; preds = %20
  ret void, !dbg !1454
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!591, !592, !593, !594, !595, !596, !597}
!llvm.ident = !{!598}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !154, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jdmainct.c", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "5819c19b37cc1891a52123a30a35174b")
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
!154 = !{!155, !179, !194, !468, !209, !193, !483, !192, !496, !202}
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "my_main_ptr", file: !1, line: 134, baseType: !156)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "my_main_controller", file: !1, line: 132, baseType: !158)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 114, size: 1088, elements: !159)
!159 = !{!160, !579, !581, !582, !583, !587, !588, !589, !590}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "pub", scope: !158, file: !1, line: 115, baseType: !161, size: 128)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_d_main_controller", file: !24, line: 157, size: 128, elements: !162)
!162 = !{!163, !575}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !161, file: !24, line: 158, baseType: !164, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = !DISubroutineType(types: !166)
!166 = !{null, !167, !574}
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "j_decompress_ptr", file: !4, line: 250, baseType: !168)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_decompress_struct", file: !4, line: 394, size: 4928, elements: !170)
!170 = !{!171, !298, !299, !300, !301, !302, !328, !329, !330, !331, !333, !334, !335, !336, !338, !339, !340, !342, !343, !344, !345, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !367, !380, !396, !397, !398, !424, !425, !426, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !448, !449, !450, !451, !455, !456, !457, !458, !459, !460, !467, !469, !487, !497, !507, !522, !531, !544, !551, !560}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !169, file: !4, line: 395, baseType: !172, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_error_mgr", file: !4, line: 618, size: 1344, elements: !174)
!174 = !{!175, !266, !267, !268, !274, !275, !276, !287, !288, !289, !294, !295, !296, !297}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "error_exit", scope: !173, file: !4, line: 620, baseType: !176, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = !DISubroutineType(types: !178)
!178 = !{null, !179}
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "j_common_ptr", file: !4, line: 248, baseType: !180)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_common_struct", file: !4, line: 240, size: 256, elements: !182)
!182 = !{!183, !184, !255, !264, !265}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !181, file: !4, line: 241, baseType: !172, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !181, file: !4, line: 241, baseType: !185, size: 64, offset: 64)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_memory_mgr", file: !4, line: 731, size: 768, elements: !187)
!187 = !{!188, !197, !198, !210, !224, !232, !239, !240, !244, !248, !252, !253}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_small", scope: !186, file: !4, line: 733, baseType: !189, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = !DISubroutineType(types: !191)
!191 = !{!192, !179, !193, !194}
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!193 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !195, line: 18, baseType: !196)
!195 = !DIFile(filename: "/usr/local/lib/clang/20/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!196 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_large", scope: !186, file: !4, line: 735, baseType: !189, size: 64, offset: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_sarray", scope: !186, file: !4, line: 737, baseType: !199, size: 64, offset: 128)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = !DISubroutineType(types: !201)
!201 = !{!202, !179, !193, !209, !209}
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPARRAY", file: !4, line: 67, baseType: !203)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPROW", file: !4, line: 66, baseType: !205)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPLE", file: !207, line: 59, baseType: !208)
!207 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jmorecfg.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "56a0eda58fafa6bdd5498f702a998c09")
!208 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "JDIMENSION", file: !207, line: 171, baseType: !5)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_barray", scope: !186, file: !4, line: 740, baseType: !211, size: 64, offset: 192)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = !DISubroutineType(types: !213)
!213 = !{!214, !179, !193, !209, !209}
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
!224 = !DIDerivedType(tag: DW_TAG_member, name: "request_virt_sarray", scope: !186, file: !4, line: 743, baseType: !225, size: 64, offset: 256)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = !DISubroutineType(types: !227)
!227 = !{!228, !179, !193, !231, !209, !209, !209}
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "jvirt_sarray_ptr", file: !4, line: 727, baseType: !229)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DICompositeType(tag: DW_TAG_structure_type, name: "jvirt_sarray_control", file: !4, line: 727, flags: DIFlagFwdDecl)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "boolean", file: !207, line: 227, baseType: !193)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "request_virt_barray", scope: !186, file: !4, line: 749, baseType: !233, size: 64, offset: 320)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DISubroutineType(types: !235)
!235 = !{!236, !179, !193, !231, !209, !209, !209}
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "jvirt_barray_ptr", file: !4, line: 728, baseType: !237)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = !DICompositeType(tag: DW_TAG_structure_type, name: "jvirt_barray_control", file: !4, line: 728, flags: DIFlagFwdDecl)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "realize_virt_arrays", scope: !186, file: !4, line: 755, baseType: !176, size: 64, offset: 384)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "access_virt_sarray", scope: !186, file: !4, line: 756, baseType: !241, size: 64, offset: 448)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = !DISubroutineType(types: !243)
!243 = !{!202, !179, !228, !209, !209, !231}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "access_virt_barray", scope: !186, file: !4, line: 761, baseType: !245, size: 64, offset: 512)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!246 = !DISubroutineType(types: !247)
!247 = !{!214, !179, !236, !209, !209, !231}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "free_pool", scope: !186, file: !4, line: 766, baseType: !249, size: 64, offset: 576)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = !DISubroutineType(types: !251)
!251 = !{null, !179, !193}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "self_destruct", scope: !186, file: !4, line: 767, baseType: !176, size: 64, offset: 640)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "max_memory_to_use", scope: !186, file: !4, line: 774, baseType: !254, size: 64, offset: 704)
!254 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "progress", scope: !181, file: !4, line: 241, baseType: !256, size: 64, offset: 128)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_progress_mgr", file: !4, line: 676, size: 256, elements: !258)
!258 = !{!259, !260, !261, !262, !263}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "progress_monitor", scope: !257, file: !4, line: 677, baseType: !176, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "pass_counter", scope: !257, file: !4, line: 679, baseType: !254, size: 64, offset: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "pass_limit", scope: !257, file: !4, line: 680, baseType: !254, size: 64, offset: 128)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "completed_passes", scope: !257, file: !4, line: 681, baseType: !193, size: 32, offset: 192)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "total_passes", scope: !257, file: !4, line: 682, baseType: !193, size: 32, offset: 224)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "is_decompressor", scope: !181, file: !4, line: 241, baseType: !231, size: 32, offset: 192)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "global_state", scope: !181, file: !4, line: 241, baseType: !193, size: 32, offset: 224)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "emit_message", scope: !173, file: !4, line: 622, baseType: !249, size: 64, offset: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "output_message", scope: !173, file: !4, line: 624, baseType: !176, size: 64, offset: 128)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "format_message", scope: !173, file: !4, line: 626, baseType: !269, size: 64, offset: 192)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = !DISubroutineType(types: !271)
!271 = !{null, !179, !272}
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "reset_error_mgr", scope: !173, file: !4, line: 629, baseType: !176, size: 64, offset: 256)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "msg_code", scope: !173, file: !4, line: 634, baseType: !193, size: 32, offset: 320)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "msg_parm", scope: !173, file: !4, line: 639, baseType: !277, size: 640, offset: 352)
!277 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !173, file: !4, line: 636, size: 640, elements: !278)
!278 = !{!279, !283}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !277, file: !4, line: 637, baseType: !280, size: 256)
!280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, size: 256, elements: !281)
!281 = !{!282}
!282 = !DISubrange(count: 8)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !277, file: !4, line: 638, baseType: !284, size: 640)
!284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !273, size: 640, elements: !285)
!285 = !{!286}
!286 = !DISubrange(count: 80)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "trace_level", scope: !173, file: !4, line: 643, baseType: !193, size: 32, offset: 992)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "num_warnings", scope: !173, file: !4, line: 651, baseType: !254, size: 64, offset: 1024)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "jpeg_message_table", scope: !173, file: !4, line: 663, baseType: !290, size: 64, offset: 1088)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !292)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !273)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "last_jpeg_message", scope: !173, file: !4, line: 664, baseType: !193, size: 32, offset: 1152)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "addon_message_table", scope: !173, file: !4, line: 668, baseType: !290, size: 64, offset: 1216)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "first_addon_message", scope: !173, file: !4, line: 669, baseType: !193, size: 32, offset: 1280)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "last_addon_message", scope: !173, file: !4, line: 670, baseType: !193, size: 32, offset: 1312)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !169, file: !4, line: 395, baseType: !185, size: 64, offset: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "progress", scope: !169, file: !4, line: 395, baseType: !256, size: 64, offset: 128)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "is_decompressor", scope: !169, file: !4, line: 395, baseType: !231, size: 32, offset: 192)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "global_state", scope: !169, file: !4, line: 395, baseType: !193, size: 32, offset: 224)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !169, file: !4, line: 398, baseType: !303, size: 64, offset: 256)
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
!314 = !{null, !167}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "fill_input_buffer", scope: !304, file: !4, line: 705, baseType: !316, size: 64, offset: 192)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = !DISubroutineType(types: !318)
!318 = !{!231, !167}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "skip_input_data", scope: !304, file: !4, line: 706, baseType: !320, size: 64, offset: 256)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = !DISubroutineType(types: !322)
!322 = !{null, !167, !254}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "resync_to_restart", scope: !304, file: !4, line: 707, baseType: !324, size: 64, offset: 320)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = !DISubroutineType(types: !326)
!326 = !{!231, !167, !193}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "term_source", scope: !304, file: !4, line: 708, baseType: !312, size: 64, offset: 384)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "image_width", scope: !169, file: !4, line: 403, baseType: !209, size: 32, offset: 320)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "image_height", scope: !169, file: !4, line: 404, baseType: !209, size: 32, offset: 352)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "num_components", scope: !169, file: !4, line: 405, baseType: !193, size: 32, offset: 384)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "jpeg_color_space", scope: !169, file: !4, line: 406, baseType: !332, size: 32, offset: 416)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_COLOR_SPACE", file: !4, line: 201, baseType: !3)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "out_color_space", scope: !169, file: !4, line: 413, baseType: !332, size: 32, offset: 448)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "scale_num", scope: !169, file: !4, line: 415, baseType: !5, size: 32, offset: 480)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "scale_denom", scope: !169, file: !4, line: 415, baseType: !5, size: 32, offset: 512)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "output_gamma", scope: !169, file: !4, line: 417, baseType: !337, size: 64, offset: 576)
!337 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "buffered_image", scope: !169, file: !4, line: 419, baseType: !231, size: 32, offset: 640)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "raw_data_out", scope: !169, file: !4, line: 420, baseType: !231, size: 32, offset: 672)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "dct_method", scope: !169, file: !4, line: 422, baseType: !341, size: 32, offset: 704)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_DCT_METHOD", file: !4, line: 209, baseType: !13)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "do_fancy_upsampling", scope: !169, file: !4, line: 423, baseType: !231, size: 32, offset: 736)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "do_block_smoothing", scope: !169, file: !4, line: 424, baseType: !231, size: 32, offset: 768)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "quantize_colors", scope: !169, file: !4, line: 426, baseType: !231, size: 32, offset: 800)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "dither_mode", scope: !169, file: !4, line: 428, baseType: !346, size: 32, offset: 832)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_DITHER_MODE", file: !4, line: 224, baseType: !18)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "two_pass_quantize", scope: !169, file: !4, line: 429, baseType: !231, size: 32, offset: 864)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "desired_number_of_colors", scope: !169, file: !4, line: 430, baseType: !193, size: 32, offset: 896)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "enable_1pass_quant", scope: !169, file: !4, line: 432, baseType: !231, size: 32, offset: 928)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "enable_external_quant", scope: !169, file: !4, line: 433, baseType: !231, size: 32, offset: 960)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "enable_2pass_quant", scope: !169, file: !4, line: 434, baseType: !231, size: 32, offset: 992)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "output_width", scope: !169, file: !4, line: 442, baseType: !209, size: 32, offset: 1024)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "output_height", scope: !169, file: !4, line: 443, baseType: !209, size: 32, offset: 1056)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "out_color_components", scope: !169, file: !4, line: 444, baseType: !193, size: 32, offset: 1088)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "output_components", scope: !169, file: !4, line: 445, baseType: !193, size: 32, offset: 1120)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "rec_outbuf_height", scope: !169, file: !4, line: 449, baseType: !193, size: 32, offset: 1152)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "actual_number_of_colors", scope: !169, file: !4, line: 461, baseType: !193, size: 32, offset: 1184)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "colormap", scope: !169, file: !4, line: 462, baseType: !202, size: 64, offset: 1216)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "output_scanline", scope: !169, file: !4, line: 472, baseType: !209, size: 32, offset: 1280)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "input_scan_number", scope: !169, file: !4, line: 477, baseType: !193, size: 32, offset: 1312)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "input_iMCU_row", scope: !169, file: !4, line: 478, baseType: !209, size: 32, offset: 1344)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "output_scan_number", scope: !169, file: !4, line: 484, baseType: !193, size: 32, offset: 1376)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "output_iMCU_row", scope: !169, file: !4, line: 485, baseType: !209, size: 32, offset: 1408)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "coef_bits", scope: !169, file: !4, line: 494, baseType: !365, size: 64, offset: 1472)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, size: 2048, elements: !222)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "quant_tbl_ptrs", scope: !169, file: !4, line: 505, baseType: !368, size: 256, offset: 1536)
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
!380 = !DIDerivedType(tag: DW_TAG_member, name: "dc_huff_tbl_ptrs", scope: !169, file: !4, line: 508, baseType: !381, size: 256, offset: 1792)
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
!396 = !DIDerivedType(tag: DW_TAG_member, name: "ac_huff_tbl_ptrs", scope: !169, file: !4, line: 509, baseType: !381, size: 256, offset: 2048)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "data_precision", scope: !169, file: !4, line: 516, baseType: !193, size: 32, offset: 2304)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "comp_info", scope: !169, file: !4, line: 518, baseType: !399, size: 64, offset: 2368)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "jpeg_component_info", file: !4, line: 179, baseType: !401)
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 116, size: 768, elements: !402)
!402 = !{!403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "component_id", scope: !401, file: !4, line: 120, baseType: !193, size: 32)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "component_index", scope: !401, file: !4, line: 121, baseType: !193, size: 32, offset: 32)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "h_samp_factor", scope: !401, file: !4, line: 122, baseType: !193, size: 32, offset: 64)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "v_samp_factor", scope: !401, file: !4, line: 123, baseType: !193, size: 32, offset: 96)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "quant_tbl_no", scope: !401, file: !4, line: 124, baseType: !193, size: 32, offset: 128)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "dc_tbl_no", scope: !401, file: !4, line: 129, baseType: !193, size: 32, offset: 160)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tbl_no", scope: !401, file: !4, line: 130, baseType: !193, size: 32, offset: 192)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "width_in_blocks", scope: !401, file: !4, line: 139, baseType: !209, size: 32, offset: 224)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "height_in_blocks", scope: !401, file: !4, line: 140, baseType: !209, size: 32, offset: 256)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "DCT_scaled_size", scope: !401, file: !4, line: 147, baseType: !193, size: 32, offset: 288)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "downsampled_width", scope: !401, file: !4, line: 154, baseType: !209, size: 32, offset: 320)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "downsampled_height", scope: !401, file: !4, line: 155, baseType: !209, size: 32, offset: 352)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "component_needed", scope: !401, file: !4, line: 160, baseType: !231, size: 32, offset: 384)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_width", scope: !401, file: !4, line: 164, baseType: !193, size: 32, offset: 416)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_height", scope: !401, file: !4, line: 165, baseType: !193, size: 32, offset: 448)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_blocks", scope: !401, file: !4, line: 166, baseType: !193, size: 32, offset: 480)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_sample_width", scope: !401, file: !4, line: 167, baseType: !193, size: 32, offset: 512)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "last_col_width", scope: !401, file: !4, line: 168, baseType: !193, size: 32, offset: 544)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "last_row_height", scope: !401, file: !4, line: 169, baseType: !193, size: 32, offset: 576)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "quant_table", scope: !401, file: !4, line: 175, baseType: !369, size: 64, offset: 640)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "dct_table", scope: !401, file: !4, line: 178, baseType: !192, size: 64, offset: 704)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "progressive_mode", scope: !169, file: !4, line: 521, baseType: !231, size: 32, offset: 2432)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "arith_code", scope: !169, file: !4, line: 522, baseType: !231, size: 32, offset: 2464)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "arith_dc_L", scope: !169, file: !4, line: 524, baseType: !427, size: 128, offset: 2496)
!427 = !DICompositeType(tag: DW_TAG_array_type, baseType: !388, size: 128, elements: !428)
!428 = !{!429}
!429 = !DISubrange(count: 16)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "arith_dc_U", scope: !169, file: !4, line: 525, baseType: !427, size: 128, offset: 2624)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "arith_ac_K", scope: !169, file: !4, line: 526, baseType: !427, size: 128, offset: 2752)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "restart_interval", scope: !169, file: !4, line: 528, baseType: !5, size: 32, offset: 2880)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "saw_JFIF_marker", scope: !169, file: !4, line: 533, baseType: !231, size: 32, offset: 2912)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "density_unit", scope: !169, file: !4, line: 535, baseType: !388, size: 8, offset: 2944)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "X_density", scope: !169, file: !4, line: 536, baseType: !375, size: 16, offset: 2960)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "Y_density", scope: !169, file: !4, line: 537, baseType: !375, size: 16, offset: 2976)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "saw_Adobe_marker", scope: !169, file: !4, line: 538, baseType: !231, size: 32, offset: 3008)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "Adobe_transform", scope: !169, file: !4, line: 539, baseType: !388, size: 8, offset: 3040)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "CCIR601_sampling", scope: !169, file: !4, line: 541, baseType: !231, size: 32, offset: 3072)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "max_h_samp_factor", scope: !169, file: !4, line: 550, baseType: !193, size: 32, offset: 3104)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "max_v_samp_factor", scope: !169, file: !4, line: 551, baseType: !193, size: 32, offset: 3136)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "min_DCT_scaled_size", scope: !169, file: !4, line: 553, baseType: !193, size: 32, offset: 3168)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "total_iMCU_rows", scope: !169, file: !4, line: 555, baseType: !209, size: 32, offset: 3200)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "sample_range_limit", scope: !169, file: !4, line: 564, baseType: !205, size: 64, offset: 3264)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "comps_in_scan", scope: !169, file: !4, line: 571, baseType: !193, size: 32, offset: 3328)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "cur_comp_info", scope: !169, file: !4, line: 572, baseType: !447, size: 256, offset: 3392)
!447 = !DICompositeType(tag: DW_TAG_array_type, baseType: !399, size: 256, elements: !378)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "MCUs_per_row", scope: !169, file: !4, line: 575, baseType: !209, size: 32, offset: 3648)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_rows_in_scan", scope: !169, file: !4, line: 576, baseType: !209, size: 32, offset: 3680)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "blocks_in_MCU", scope: !169, file: !4, line: 578, baseType: !193, size: 32, offset: 3712)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_membership", scope: !169, file: !4, line: 579, baseType: !452, size: 320, offset: 3744)
!452 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, size: 320, elements: !453)
!453 = !{!454}
!454 = !DISubrange(count: 10)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "Ss", scope: !169, file: !4, line: 583, baseType: !193, size: 32, offset: 4064)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "Se", scope: !169, file: !4, line: 583, baseType: !193, size: 32, offset: 4096)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "Ah", scope: !169, file: !4, line: 583, baseType: !193, size: 32, offset: 4128)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "Al", scope: !169, file: !4, line: 583, baseType: !193, size: 32, offset: 4160)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "unread_marker", scope: !169, file: !4, line: 589, baseType: !193, size: 32, offset: 4192)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !169, file: !4, line: 594, baseType: !461, size: 64, offset: 4224)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_decomp_master", file: !24, line: 136, size: 192, elements: !463)
!463 = !{!464, !465, !466}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_for_output_pass", scope: !462, file: !24, line: 137, baseType: !312, size: 64)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "finish_output_pass", scope: !462, file: !24, line: 138, baseType: !312, size: 64, offset: 64)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "is_dummy_pass", scope: !462, file: !24, line: 141, baseType: !231, size: 32, offset: 128)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "main", scope: !169, file: !4, line: 595, baseType: !468, size: 64, offset: 4288)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "coef", scope: !169, file: !4, line: 596, baseType: !470, size: 64, offset: 4352)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_d_coef_controller", file: !24, line: 165, size: 320, elements: !472)
!472 = !{!473, !474, !478, !479, !485}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "start_input_pass", scope: !471, file: !24, line: 166, baseType: !312, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "consume_data", scope: !471, file: !24, line: 167, baseType: !475, size: 64, offset: 64)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = !DISubroutineType(types: !477)
!477 = !{!193, !167}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "start_output_pass", scope: !471, file: !24, line: 168, baseType: !312, size: 64, offset: 128)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "decompress_data", scope: !471, file: !24, line: 169, baseType: !480, size: 64, offset: 192)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = !DISubroutineType(types: !482)
!482 = !{!193, !167, !483}
!483 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPIMAGE", file: !4, line: 68, baseType: !484)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "coef_arrays", scope: !471, file: !24, line: 172, baseType: !486, size: 64, offset: 256)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "post", scope: !169, file: !4, line: 597, baseType: !488, size: 64, offset: 4416)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_d_post_controller", file: !24, line: 176, size: 128, elements: !490)
!490 = !{!491, !492}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !489, file: !24, line: 177, baseType: !164, size: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "post_process_data", scope: !489, file: !24, line: 178, baseType: !493, size: 64, offset: 64)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = !DISubroutineType(types: !495)
!495 = !{null, !167, !483, !496, !209, !202, !496, !209}
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "inputctl", scope: !169, file: !4, line: 598, baseType: !498, size: 64, offset: 4480)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_input_controller", file: !24, line: 145, size: 320, elements: !500)
!500 = !{!501, !502, !503, !504, !505, !506}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "consume_input", scope: !499, file: !24, line: 146, baseType: !475, size: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "reset_input_controller", scope: !499, file: !24, line: 147, baseType: !312, size: 64, offset: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "start_input_pass", scope: !499, file: !24, line: 148, baseType: !312, size: 64, offset: 128)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "finish_input_pass", scope: !499, file: !24, line: 149, baseType: !312, size: 64, offset: 192)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "has_multiple_scans", scope: !499, file: !24, line: 152, baseType: !231, size: 32, offset: 256)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "eoi_reached", scope: !499, file: !24, line: 153, baseType: !231, size: 32, offset: 288)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "marker", scope: !169, file: !4, line: 599, baseType: !508, size: 64, offset: 4544)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_marker_reader", file: !24, line: 188, size: 1408, elements: !510)
!510 = !{!511, !512, !513, !515, !516, !518, !519, !520, !521}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "reset_marker_reader", scope: !509, file: !24, line: 189, baseType: !312, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "read_markers", scope: !509, file: !24, line: 194, baseType: !475, size: 64, offset: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "read_restart_marker", scope: !509, file: !24, line: 196, baseType: !514, size: 64, offset: 128)
!514 = !DIDerivedType(tag: DW_TAG_typedef, name: "jpeg_marker_parser_method", file: !4, line: 781, baseType: !316)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "process_COM", scope: !509, file: !24, line: 198, baseType: !514, size: 64, offset: 192)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "process_APPn", scope: !509, file: !24, line: 199, baseType: !517, size: 1024, offset: 256)
!517 = !DICompositeType(tag: DW_TAG_array_type, baseType: !514, size: 1024, elements: !428)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "saw_SOI", scope: !509, file: !24, line: 204, baseType: !231, size: 32, offset: 1280)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "saw_SOF", scope: !509, file: !24, line: 205, baseType: !231, size: 32, offset: 1312)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "next_restart_num", scope: !509, file: !24, line: 206, baseType: !193, size: 32, offset: 1344)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "discarded_bytes", scope: !509, file: !24, line: 207, baseType: !5, size: 32, offset: 1376)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "entropy", scope: !169, file: !4, line: 600, baseType: !523, size: 64, offset: 4608)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_entropy_decoder", file: !24, line: 211, size: 128, elements: !525)
!525 = !{!526, !527}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !524, file: !24, line: 212, baseType: !312, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "decode_mcu", scope: !524, file: !24, line: 213, baseType: !528, size: 64, offset: 64)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = !DISubroutineType(types: !530)
!530 = !{!231, !167, !215}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "idct", scope: !169, file: !4, line: 601, baseType: !532, size: 64, offset: 4672)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_inverse_dct", file: !24, line: 223, size: 704, elements: !534)
!534 = !{!535, !536}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !533, file: !24, line: 224, baseType: !312, size: 64)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "inverse_DCT", scope: !533, file: !24, line: 226, baseType: !537, size: 640, offset: 64)
!537 = !DICompositeType(tag: DW_TAG_array_type, baseType: !538, size: 640, elements: !453)
!538 = !DIDerivedType(tag: DW_TAG_typedef, name: "inverse_DCT_method_ptr", file: !24, line: 218, baseType: !539)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = !DISubroutineType(types: !541)
!541 = !{null, !167, !399, !542, !202, !209}
!542 = !DIDerivedType(tag: DW_TAG_typedef, name: "JCOEFPTR", file: !4, line: 75, baseType: !543)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "upsample", scope: !169, file: !4, line: 602, baseType: !545, size: 64, offset: 4736)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_upsampler", file: !24, line: 230, size: 192, elements: !547)
!547 = !{!548, !549, !550}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !546, file: !24, line: 231, baseType: !312, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "upsample", scope: !546, file: !24, line: 232, baseType: !493, size: 64, offset: 64)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "need_context_rows", scope: !546, file: !24, line: 240, baseType: !231, size: 32, offset: 128)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "cconvert", scope: !169, file: !4, line: 603, baseType: !552, size: 64, offset: 4800)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_color_deconverter", file: !24, line: 244, size: 128, elements: !554)
!554 = !{!555, !556}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !553, file: !24, line: 245, baseType: !312, size: 64)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "color_convert", scope: !553, file: !24, line: 246, baseType: !557, size: 64, offset: 64)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = !DISubroutineType(types: !559)
!559 = !{null, !167, !483, !209, !202, !193}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "cquantize", scope: !169, file: !4, line: 604, baseType: !561, size: 64, offset: 4864)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_color_quantizer", file: !24, line: 252, size: 256, elements: !563)
!563 = !{!564, !568, !572, !573}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !562, file: !24, line: 253, baseType: !565, size: 64)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = !DISubroutineType(types: !567)
!567 = !{null, !167, !231}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "color_quantize", scope: !562, file: !24, line: 254, baseType: !569, size: 64, offset: 64)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = !DISubroutineType(types: !571)
!571 = !{null, !167, !202, !202, !193}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "finish_pass", scope: !562, file: !24, line: 257, baseType: !312, size: 64, offset: 128)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "new_color_map", scope: !562, file: !24, line: 258, baseType: !312, size: 64, offset: 192)
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_BUF_MODE", file: !24, line: 22, baseType: !23)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "process_data", scope: !161, file: !24, line: 159, baseType: !576, size: 64, offset: 64)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = !DISubroutineType(types: !578)
!578 = !{null, !167, !202, !496, !209}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !158, file: !1, line: 118, baseType: !580, size: 640, offset: 128)
!580 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 640, elements: !453)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_full", scope: !158, file: !1, line: 120, baseType: !231, size: 32, offset: 768)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "rowgroup_ctr", scope: !158, file: !1, line: 121, baseType: !209, size: 32, offset: 800)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "xbuffer", scope: !158, file: !1, line: 126, baseType: !584, size: 128, offset: 832)
!584 = !DICompositeType(tag: DW_TAG_array_type, baseType: !483, size: 128, elements: !585)
!585 = !{!586}
!586 = !DISubrange(count: 2)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "whichptr", scope: !158, file: !1, line: 128, baseType: !193, size: 32, offset: 960)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "context_state", scope: !158, file: !1, line: 129, baseType: !193, size: 32, offset: 992)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "rowgroups_avail", scope: !158, file: !1, line: 130, baseType: !209, size: 32, offset: 1024)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "iMCU_row_ctr", scope: !158, file: !1, line: 131, baseType: !209, size: 32, offset: 1056)
!591 = !{i32 7, !"Dwarf Version", i32 5}
!592 = !{i32 2, !"Debug Info Version", i32 3}
!593 = !{i32 1, !"wchar_size", i32 4}
!594 = !{i32 8, !"PIC Level", i32 2}
!595 = !{i32 7, !"PIE Level", i32 2}
!596 = !{i32 7, !"uwtable", i32 2}
!597 = !{i32 7, !"frame-pointer", i32 2}
!598 = !{!"clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)"}
!599 = distinct !DISubprogram(name: "jinit_d_main_controller", scope: !1, file: !1, line: 476, type: !566, scopeLine: 477, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !600)
!600 = !{}
!601 = !DILocalVariable(name: "cinfo", arg: 1, scope: !599, file: !1, line: 476, type: !167)
!602 = !DILocation(line: 476, column: 43, scope: !599)
!603 = !DILocalVariable(name: "need_full_buffer", arg: 2, scope: !599, file: !1, line: 476, type: !231)
!604 = !DILocation(line: 476, column: 58, scope: !599)
!605 = !DILocalVariable(name: "the_main", scope: !599, file: !1, line: 478, type: !155)
!606 = !DILocation(line: 478, column: 15, scope: !599)
!607 = !DILocalVariable(name: "ci", scope: !599, file: !1, line: 479, type: !193)
!608 = !DILocation(line: 479, column: 7, scope: !599)
!609 = !DILocalVariable(name: "rgroup", scope: !599, file: !1, line: 479, type: !193)
!610 = !DILocation(line: 479, column: 11, scope: !599)
!611 = !DILocalVariable(name: "ngroups", scope: !599, file: !1, line: 479, type: !193)
!612 = !DILocation(line: 479, column: 19, scope: !599)
!613 = !DILocalVariable(name: "compptr", scope: !599, file: !1, line: 480, type: !399)
!614 = !DILocation(line: 480, column: 24, scope: !599)
!615 = !DILocation(line: 483, column: 7, scope: !599)
!616 = !DILocation(line: 483, column: 14, scope: !599)
!617 = !DILocation(line: 483, column: 19, scope: !599)
!618 = !DILocation(line: 483, column: 48, scope: !599)
!619 = !DILocation(line: 483, column: 5, scope: !599)
!620 = !DILocation(line: 482, column: 12, scope: !599)
!621 = !DILocation(line: 485, column: 51, scope: !599)
!622 = !DILocation(line: 485, column: 3, scope: !599)
!623 = !DILocation(line: 485, column: 10, scope: !599)
!624 = !DILocation(line: 485, column: 15, scope: !599)
!625 = !DILocation(line: 486, column: 3, scope: !599)
!626 = !DILocation(line: 486, column: 13, scope: !599)
!627 = !DILocation(line: 486, column: 17, scope: !599)
!628 = !DILocation(line: 486, column: 28, scope: !599)
!629 = !DILocation(line: 488, column: 7, scope: !630)
!630 = distinct !DILexicalBlock(scope: !599, file: !1, line: 488, column: 7)
!631 = !DILocation(line: 489, column: 5, scope: !630)
!632 = !DILocation(line: 494, column: 7, scope: !633)
!633 = distinct !DILexicalBlock(scope: !599, file: !1, line: 494, column: 7)
!634 = !DILocation(line: 494, column: 14, scope: !633)
!635 = !DILocation(line: 494, column: 24, scope: !633)
!636 = !DILocation(line: 495, column: 9, scope: !637)
!637 = distinct !DILexicalBlock(scope: !638, file: !1, line: 495, column: 9)
!638 = distinct !DILexicalBlock(scope: !633, file: !1, line: 494, column: 43)
!639 = !DILocation(line: 495, column: 16, scope: !637)
!640 = !DILocation(line: 495, column: 36, scope: !637)
!641 = !DILocation(line: 496, column: 7, scope: !637)
!642 = !DILocation(line: 497, column: 26, scope: !638)
!643 = !DILocation(line: 497, column: 5, scope: !638)
!644 = !DILocation(line: 498, column: 15, scope: !638)
!645 = !DILocation(line: 498, column: 22, scope: !638)
!646 = !DILocation(line: 498, column: 42, scope: !638)
!647 = !DILocation(line: 498, column: 13, scope: !638)
!648 = !DILocation(line: 499, column: 3, scope: !638)
!649 = !DILocation(line: 500, column: 15, scope: !650)
!650 = distinct !DILexicalBlock(scope: !633, file: !1, line: 499, column: 10)
!651 = !DILocation(line: 500, column: 22, scope: !650)
!652 = !DILocation(line: 500, column: 13, scope: !650)
!653 = !DILocation(line: 503, column: 11, scope: !654)
!654 = distinct !DILexicalBlock(scope: !599, file: !1, line: 503, column: 3)
!655 = !DILocation(line: 503, column: 26, scope: !654)
!656 = !DILocation(line: 503, column: 33, scope: !654)
!657 = !DILocation(line: 503, column: 24, scope: !654)
!658 = !DILocation(line: 503, column: 8, scope: !654)
!659 = !DILocation(line: 503, column: 44, scope: !660)
!660 = distinct !DILexicalBlock(scope: !654, file: !1, line: 503, column: 3)
!661 = !DILocation(line: 503, column: 49, scope: !660)
!662 = !DILocation(line: 503, column: 56, scope: !660)
!663 = !DILocation(line: 503, column: 47, scope: !660)
!664 = !DILocation(line: 503, column: 3, scope: !654)
!665 = !DILocation(line: 505, column: 15, scope: !666)
!666 = distinct !DILexicalBlock(scope: !660, file: !1, line: 504, column: 25)
!667 = !DILocation(line: 505, column: 24, scope: !666)
!668 = !DILocation(line: 505, column: 40, scope: !666)
!669 = !DILocation(line: 505, column: 49, scope: !666)
!670 = !DILocation(line: 505, column: 38, scope: !666)
!671 = !DILocation(line: 506, column: 7, scope: !666)
!672 = !DILocation(line: 506, column: 14, scope: !666)
!673 = !DILocation(line: 505, column: 66, scope: !666)
!674 = !DILocation(line: 505, column: 12, scope: !666)
!675 = !DILocation(line: 507, column: 30, scope: !666)
!676 = !DILocation(line: 507, column: 37, scope: !666)
!677 = !DILocation(line: 507, column: 42, scope: !666)
!678 = !DILocation(line: 508, column: 20, scope: !666)
!679 = !DILocation(line: 509, column: 5, scope: !666)
!680 = !DILocation(line: 509, column: 14, scope: !666)
!681 = !DILocation(line: 509, column: 32, scope: !666)
!682 = !DILocation(line: 509, column: 41, scope: !666)
!683 = !DILocation(line: 509, column: 30, scope: !666)
!684 = !DILocation(line: 510, column: 19, scope: !666)
!685 = !DILocation(line: 510, column: 28, scope: !666)
!686 = !DILocation(line: 510, column: 26, scope: !666)
!687 = !DILocation(line: 507, column: 28, scope: !666)
!688 = !DILocation(line: 507, column: 5, scope: !666)
!689 = !DILocation(line: 507, column: 15, scope: !666)
!690 = !DILocation(line: 507, column: 22, scope: !666)
!691 = !DILocation(line: 507, column: 26, scope: !666)
!692 = !DILocation(line: 511, column: 3, scope: !666)
!693 = !DILocation(line: 504, column: 10, scope: !660)
!694 = !DILocation(line: 504, column: 21, scope: !660)
!695 = !DILocation(line: 503, column: 3, scope: !660)
!696 = distinct !{!696, !664, !697, !698}
!697 = !DILocation(line: 511, column: 3, scope: !654)
!698 = !{!"llvm.loop.mustprogress"}
!699 = !DILocation(line: 512, column: 1, scope: !599)
!700 = distinct !DISubprogram(name: "start_pass_main", scope: !1, file: !1, line: 307, type: !165, scopeLine: 308, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !600)
!701 = !DILocalVariable(name: "cinfo", arg: 1, scope: !700, file: !1, line: 307, type: !167)
!702 = !DILocation(line: 307, column: 35, scope: !700)
!703 = !DILocalVariable(name: "pass_mode", arg: 2, scope: !700, file: !1, line: 307, type: !574)
!704 = !DILocation(line: 307, column: 53, scope: !700)
!705 = !DILocalVariable(name: "the_main", scope: !700, file: !1, line: 309, type: !155)
!706 = !DILocation(line: 309, column: 15, scope: !700)
!707 = !DILocation(line: 309, column: 40, scope: !700)
!708 = !DILocation(line: 309, column: 47, scope: !700)
!709 = !DILocation(line: 311, column: 11, scope: !700)
!710 = !DILocation(line: 311, column: 3, scope: !700)
!711 = !DILocation(line: 313, column: 9, scope: !712)
!712 = distinct !DILexicalBlock(scope: !713, file: !1, line: 313, column: 9)
!713 = distinct !DILexicalBlock(scope: !700, file: !1, line: 311, column: 22)
!714 = !DILocation(line: 313, column: 16, scope: !712)
!715 = !DILocation(line: 313, column: 26, scope: !712)
!716 = !DILocation(line: 314, column: 7, scope: !717)
!717 = distinct !DILexicalBlock(scope: !712, file: !1, line: 313, column: 45)
!718 = !DILocation(line: 314, column: 17, scope: !717)
!719 = !DILocation(line: 314, column: 21, scope: !717)
!720 = !DILocation(line: 314, column: 34, scope: !717)
!721 = !DILocation(line: 315, column: 27, scope: !717)
!722 = !DILocation(line: 315, column: 7, scope: !717)
!723 = !DILocation(line: 316, column: 7, scope: !717)
!724 = !DILocation(line: 316, column: 17, scope: !717)
!725 = !DILocation(line: 316, column: 26, scope: !717)
!726 = !DILocation(line: 317, column: 7, scope: !717)
!727 = !DILocation(line: 317, column: 17, scope: !717)
!728 = !DILocation(line: 317, column: 31, scope: !717)
!729 = !DILocation(line: 318, column: 7, scope: !717)
!730 = !DILocation(line: 318, column: 17, scope: !717)
!731 = !DILocation(line: 318, column: 30, scope: !717)
!732 = !DILocation(line: 319, column: 5, scope: !717)
!733 = !DILocation(line: 321, column: 7, scope: !734)
!734 = distinct !DILexicalBlock(scope: !712, file: !1, line: 319, column: 12)
!735 = !DILocation(line: 321, column: 17, scope: !734)
!736 = !DILocation(line: 321, column: 21, scope: !734)
!737 = !DILocation(line: 321, column: 34, scope: !734)
!738 = !DILocation(line: 323, column: 5, scope: !713)
!739 = !DILocation(line: 323, column: 15, scope: !713)
!740 = !DILocation(line: 323, column: 27, scope: !713)
!741 = !DILocation(line: 324, column: 5, scope: !713)
!742 = !DILocation(line: 324, column: 15, scope: !713)
!743 = !DILocation(line: 324, column: 28, scope: !713)
!744 = !DILocation(line: 325, column: 5, scope: !713)
!745 = !DILocation(line: 329, column: 5, scope: !713)
!746 = !DILocation(line: 329, column: 15, scope: !713)
!747 = !DILocation(line: 329, column: 19, scope: !713)
!748 = !DILocation(line: 329, column: 32, scope: !713)
!749 = !DILocation(line: 330, column: 5, scope: !713)
!750 = !DILocation(line: 333, column: 5, scope: !713)
!751 = !DILocation(line: 334, column: 5, scope: !713)
!752 = !DILocation(line: 336, column: 1, scope: !700)
!753 = distinct !DISubprogram(name: "alloc_funny_pointers", scope: !1, file: !1, line: 157, type: !313, scopeLine: 161, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !600)
!754 = !DILocalVariable(name: "cinfo", arg: 1, scope: !753, file: !1, line: 157, type: !167)
!755 = !DILocation(line: 157, column: 40, scope: !753)
!756 = !DILocalVariable(name: "the_main", scope: !753, file: !1, line: 162, type: !155)
!757 = !DILocation(line: 162, column: 15, scope: !753)
!758 = !DILocation(line: 162, column: 40, scope: !753)
!759 = !DILocation(line: 162, column: 47, scope: !753)
!760 = !DILocalVariable(name: "ci", scope: !753, file: !1, line: 163, type: !193)
!761 = !DILocation(line: 163, column: 7, scope: !753)
!762 = !DILocalVariable(name: "rgroup", scope: !753, file: !1, line: 163, type: !193)
!763 = !DILocation(line: 163, column: 11, scope: !753)
!764 = !DILocalVariable(name: "M", scope: !753, file: !1, line: 164, type: !193)
!765 = !DILocation(line: 164, column: 7, scope: !753)
!766 = !DILocation(line: 164, column: 11, scope: !753)
!767 = !DILocation(line: 164, column: 18, scope: !753)
!768 = !DILocalVariable(name: "compptr", scope: !753, file: !1, line: 165, type: !399)
!769 = !DILocation(line: 165, column: 24, scope: !753)
!770 = !DILocalVariable(name: "xbuf", scope: !753, file: !1, line: 166, type: !202)
!771 = !DILocation(line: 166, column: 14, scope: !753)
!772 = !DILocation(line: 172, column: 7, scope: !753)
!773 = !DILocation(line: 172, column: 14, scope: !753)
!774 = !DILocation(line: 172, column: 19, scope: !753)
!775 = !DILocation(line: 172, column: 48, scope: !753)
!776 = !DILocation(line: 173, column: 5, scope: !753)
!777 = !DILocation(line: 173, column: 12, scope: !753)
!778 = !DILocation(line: 173, column: 27, scope: !753)
!779 = !DILocation(line: 173, column: 31, scope: !753)
!780 = !DILocation(line: 172, column: 5, scope: !753)
!781 = !DILocation(line: 171, column: 3, scope: !753)
!782 = !DILocation(line: 171, column: 13, scope: !753)
!783 = !DILocation(line: 171, column: 24, scope: !753)
!784 = !DILocation(line: 174, column: 26, scope: !753)
!785 = !DILocation(line: 174, column: 36, scope: !753)
!786 = !DILocation(line: 174, column: 49, scope: !753)
!787 = !DILocation(line: 174, column: 56, scope: !753)
!788 = !DILocation(line: 174, column: 47, scope: !753)
!789 = !DILocation(line: 174, column: 3, scope: !753)
!790 = !DILocation(line: 174, column: 13, scope: !753)
!791 = !DILocation(line: 174, column: 24, scope: !753)
!792 = !DILocation(line: 176, column: 11, scope: !793)
!793 = distinct !DILexicalBlock(scope: !753, file: !1, line: 176, column: 3)
!794 = !DILocation(line: 176, column: 26, scope: !793)
!795 = !DILocation(line: 176, column: 33, scope: !793)
!796 = !DILocation(line: 176, column: 24, scope: !793)
!797 = !DILocation(line: 176, column: 8, scope: !793)
!798 = !DILocation(line: 176, column: 44, scope: !799)
!799 = distinct !DILexicalBlock(scope: !793, file: !1, line: 176, column: 3)
!800 = !DILocation(line: 176, column: 49, scope: !799)
!801 = !DILocation(line: 176, column: 56, scope: !799)
!802 = !DILocation(line: 176, column: 47, scope: !799)
!803 = !DILocation(line: 176, column: 3, scope: !793)
!804 = !DILocation(line: 178, column: 15, scope: !805)
!805 = distinct !DILexicalBlock(scope: !799, file: !1, line: 177, column: 25)
!806 = !DILocation(line: 178, column: 24, scope: !805)
!807 = !DILocation(line: 178, column: 40, scope: !805)
!808 = !DILocation(line: 178, column: 49, scope: !805)
!809 = !DILocation(line: 178, column: 38, scope: !805)
!810 = !DILocation(line: 179, column: 7, scope: !805)
!811 = !DILocation(line: 179, column: 14, scope: !805)
!812 = !DILocation(line: 178, column: 66, scope: !805)
!813 = !DILocation(line: 178, column: 12, scope: !805)
!814 = !DILocation(line: 184, column: 9, scope: !805)
!815 = !DILocation(line: 184, column: 16, scope: !805)
!816 = !DILocation(line: 184, column: 21, scope: !805)
!817 = !DILocation(line: 184, column: 50, scope: !805)
!818 = !DILocation(line: 185, column: 12, scope: !805)
!819 = !DILocation(line: 185, column: 22, scope: !805)
!820 = !DILocation(line: 185, column: 24, scope: !805)
!821 = !DILocation(line: 185, column: 19, scope: !805)
!822 = !DILocation(line: 185, column: 9, scope: !805)
!823 = !DILocation(line: 185, column: 7, scope: !805)
!824 = !DILocation(line: 185, column: 30, scope: !805)
!825 = !DILocation(line: 184, column: 7, scope: !805)
!826 = !DILocation(line: 183, column: 10, scope: !805)
!827 = !DILocation(line: 186, column: 13, scope: !805)
!828 = !DILocation(line: 186, column: 10, scope: !805)
!829 = !DILocation(line: 187, column: 32, scope: !805)
!830 = !DILocation(line: 187, column: 5, scope: !805)
!831 = !DILocation(line: 187, column: 15, scope: !805)
!832 = !DILocation(line: 187, column: 26, scope: !805)
!833 = !DILocation(line: 187, column: 30, scope: !805)
!834 = !DILocation(line: 188, column: 13, scope: !805)
!835 = !DILocation(line: 188, column: 23, scope: !805)
!836 = !DILocation(line: 188, column: 25, scope: !805)
!837 = !DILocation(line: 188, column: 20, scope: !805)
!838 = !DILocation(line: 188, column: 10, scope: !805)
!839 = !DILocation(line: 189, column: 32, scope: !805)
!840 = !DILocation(line: 189, column: 5, scope: !805)
!841 = !DILocation(line: 189, column: 15, scope: !805)
!842 = !DILocation(line: 189, column: 26, scope: !805)
!843 = !DILocation(line: 189, column: 30, scope: !805)
!844 = !DILocation(line: 190, column: 3, scope: !805)
!845 = !DILocation(line: 177, column: 10, scope: !799)
!846 = !DILocation(line: 177, column: 21, scope: !799)
!847 = !DILocation(line: 176, column: 3, scope: !799)
!848 = distinct !{!848, !803, !849, !698}
!849 = !DILocation(line: 190, column: 3, scope: !793)
!850 = !DILocation(line: 191, column: 1, scope: !753)
!851 = distinct !DISubprogram(name: "process_data_context_main", scope: !1, file: !1, line: 385, type: !577, scopeLine: 388, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !600)
!852 = !DILocalVariable(name: "cinfo", arg: 1, scope: !851, file: !1, line: 385, type: !167)
!853 = !DILocation(line: 385, column: 45, scope: !851)
!854 = !DILocalVariable(name: "output_buf", arg: 2, scope: !851, file: !1, line: 386, type: !202)
!855 = !DILocation(line: 386, column: 18, scope: !851)
!856 = !DILocalVariable(name: "out_row_ctr", arg: 3, scope: !851, file: !1, line: 386, type: !496)
!857 = !DILocation(line: 386, column: 42, scope: !851)
!858 = !DILocalVariable(name: "out_rows_avail", arg: 4, scope: !851, file: !1, line: 387, type: !209)
!859 = !DILocation(line: 387, column: 18, scope: !851)
!860 = !DILocalVariable(name: "the_main", scope: !851, file: !1, line: 389, type: !155)
!861 = !DILocation(line: 389, column: 15, scope: !851)
!862 = !DILocation(line: 389, column: 40, scope: !851)
!863 = !DILocation(line: 389, column: 47, scope: !851)
!864 = !DILocation(line: 392, column: 9, scope: !865)
!865 = distinct !DILexicalBlock(scope: !851, file: !1, line: 392, column: 7)
!866 = !DILocation(line: 392, column: 19, scope: !865)
!867 = !DILocation(line: 392, column: 7, scope: !865)
!868 = !DILocation(line: 393, column: 13, scope: !869)
!869 = distinct !DILexicalBlock(scope: !870, file: !1, line: 393, column: 9)
!870 = distinct !DILexicalBlock(scope: !865, file: !1, line: 392, column: 32)
!871 = !DILocation(line: 393, column: 20, scope: !869)
!872 = !DILocation(line: 393, column: 26, scope: !869)
!873 = !DILocation(line: 393, column: 44, scope: !869)
!874 = !DILocation(line: 394, column: 9, scope: !869)
!875 = !DILocation(line: 394, column: 19, scope: !869)
!876 = !DILocation(line: 394, column: 27, scope: !869)
!877 = !DILocation(line: 394, column: 37, scope: !869)
!878 = !DILocation(line: 393, column: 11, scope: !869)
!879 = !DILocation(line: 393, column: 9, scope: !869)
!880 = !DILocation(line: 395, column: 7, scope: !869)
!881 = !DILocation(line: 396, column: 5, scope: !870)
!882 = !DILocation(line: 396, column: 15, scope: !870)
!883 = !DILocation(line: 396, column: 27, scope: !870)
!884 = !DILocation(line: 397, column: 5, scope: !870)
!885 = !DILocation(line: 397, column: 15, scope: !870)
!886 = !DILocation(line: 397, column: 27, scope: !870)
!887 = !DILocation(line: 398, column: 3, scope: !870)
!888 = !DILocation(line: 405, column: 11, scope: !851)
!889 = !DILocation(line: 405, column: 21, scope: !851)
!890 = !DILocation(line: 405, column: 3, scope: !851)
!891 = !DILocation(line: 408, column: 7, scope: !892)
!892 = distinct !DILexicalBlock(scope: !851, file: !1, line: 405, column: 36)
!893 = !DILocation(line: 408, column: 14, scope: !892)
!894 = !DILocation(line: 408, column: 20, scope: !892)
!895 = !DILocation(line: 408, column: 40, scope: !892)
!896 = !DILocation(line: 408, column: 46, scope: !892)
!897 = !DILocation(line: 408, column: 56, scope: !892)
!898 = !DILocation(line: 408, column: 64, scope: !892)
!899 = !DILocation(line: 408, column: 74, scope: !892)
!900 = !DILocation(line: 409, column: 5, scope: !892)
!901 = !DILocation(line: 409, column: 15, scope: !892)
!902 = !DILocation(line: 409, column: 29, scope: !892)
!903 = !DILocation(line: 409, column: 39, scope: !892)
!904 = !DILocation(line: 410, column: 4, scope: !892)
!905 = !DILocation(line: 410, column: 16, scope: !892)
!906 = !DILocation(line: 410, column: 29, scope: !892)
!907 = !DILocation(line: 408, column: 5, scope: !892)
!908 = !DILocation(line: 411, column: 9, scope: !909)
!909 = distinct !DILexicalBlock(scope: !892, file: !1, line: 411, column: 9)
!910 = !DILocation(line: 411, column: 19, scope: !909)
!911 = !DILocation(line: 411, column: 34, scope: !909)
!912 = !DILocation(line: 411, column: 44, scope: !909)
!913 = !DILocation(line: 411, column: 32, scope: !909)
!914 = !DILocation(line: 412, column: 7, scope: !909)
!915 = !DILocation(line: 413, column: 5, scope: !892)
!916 = !DILocation(line: 413, column: 15, scope: !892)
!917 = !DILocation(line: 413, column: 29, scope: !892)
!918 = !DILocation(line: 414, column: 10, scope: !919)
!919 = distinct !DILexicalBlock(scope: !892, file: !1, line: 414, column: 9)
!920 = !DILocation(line: 414, column: 9, scope: !919)
!921 = !DILocation(line: 414, column: 25, scope: !919)
!922 = !DILocation(line: 414, column: 22, scope: !919)
!923 = !DILocation(line: 415, column: 7, scope: !919)
!924 = !DILocation(line: 419, column: 5, scope: !892)
!925 = !DILocation(line: 419, column: 15, scope: !892)
!926 = !DILocation(line: 419, column: 28, scope: !892)
!927 = !DILocation(line: 420, column: 47, scope: !892)
!928 = !DILocation(line: 420, column: 54, scope: !892)
!929 = !DILocation(line: 420, column: 74, scope: !892)
!930 = !DILocation(line: 420, column: 5, scope: !892)
!931 = !DILocation(line: 420, column: 15, scope: !892)
!932 = !DILocation(line: 420, column: 31, scope: !892)
!933 = !DILocation(line: 424, column: 9, scope: !934)
!934 = distinct !DILexicalBlock(scope: !892, file: !1, line: 424, column: 9)
!935 = !DILocation(line: 424, column: 19, scope: !934)
!936 = !DILocation(line: 424, column: 35, scope: !934)
!937 = !DILocation(line: 424, column: 42, scope: !934)
!938 = !DILocation(line: 424, column: 32, scope: !934)
!939 = !DILocation(line: 425, column: 27, scope: !934)
!940 = !DILocation(line: 425, column: 7, scope: !934)
!941 = !DILocation(line: 426, column: 5, scope: !892)
!942 = !DILocation(line: 426, column: 15, scope: !892)
!943 = !DILocation(line: 426, column: 29, scope: !892)
!944 = !DILocation(line: 430, column: 7, scope: !892)
!945 = !DILocation(line: 430, column: 14, scope: !892)
!946 = !DILocation(line: 430, column: 20, scope: !892)
!947 = !DILocation(line: 430, column: 40, scope: !892)
!948 = !DILocation(line: 430, column: 47, scope: !892)
!949 = !DILocation(line: 430, column: 57, scope: !892)
!950 = !DILocation(line: 430, column: 65, scope: !892)
!951 = !DILocation(line: 430, column: 75, scope: !892)
!952 = !DILocation(line: 431, column: 5, scope: !892)
!953 = !DILocation(line: 431, column: 15, scope: !892)
!954 = !DILocation(line: 431, column: 29, scope: !892)
!955 = !DILocation(line: 431, column: 39, scope: !892)
!956 = !DILocation(line: 432, column: 4, scope: !892)
!957 = !DILocation(line: 432, column: 16, scope: !892)
!958 = !DILocation(line: 432, column: 29, scope: !892)
!959 = !DILocation(line: 430, column: 5, scope: !892)
!960 = !DILocation(line: 433, column: 9, scope: !961)
!961 = distinct !DILexicalBlock(scope: !892, file: !1, line: 433, column: 9)
!962 = !DILocation(line: 433, column: 19, scope: !961)
!963 = !DILocation(line: 433, column: 34, scope: !961)
!964 = !DILocation(line: 433, column: 44, scope: !961)
!965 = !DILocation(line: 433, column: 32, scope: !961)
!966 = !DILocation(line: 434, column: 7, scope: !961)
!967 = !DILocation(line: 436, column: 9, scope: !968)
!968 = distinct !DILexicalBlock(scope: !892, file: !1, line: 436, column: 9)
!969 = !DILocation(line: 436, column: 19, scope: !968)
!970 = !DILocation(line: 436, column: 32, scope: !968)
!971 = !DILocation(line: 437, column: 31, scope: !968)
!972 = !DILocation(line: 437, column: 7, scope: !968)
!973 = !DILocation(line: 439, column: 5, scope: !892)
!974 = !DILocation(line: 439, column: 15, scope: !892)
!975 = !DILocation(line: 439, column: 24, scope: !892)
!976 = !DILocation(line: 440, column: 5, scope: !892)
!977 = !DILocation(line: 440, column: 15, scope: !892)
!978 = !DILocation(line: 440, column: 27, scope: !892)
!979 = !DILocation(line: 443, column: 44, scope: !892)
!980 = !DILocation(line: 443, column: 51, scope: !892)
!981 = !DILocation(line: 443, column: 71, scope: !892)
!982 = !DILocation(line: 443, column: 5, scope: !892)
!983 = !DILocation(line: 443, column: 15, scope: !892)
!984 = !DILocation(line: 443, column: 28, scope: !892)
!985 = !DILocation(line: 444, column: 47, scope: !892)
!986 = !DILocation(line: 444, column: 54, scope: !892)
!987 = !DILocation(line: 444, column: 74, scope: !892)
!988 = !DILocation(line: 444, column: 5, scope: !892)
!989 = !DILocation(line: 444, column: 15, scope: !892)
!990 = !DILocation(line: 444, column: 31, scope: !892)
!991 = !DILocation(line: 445, column: 5, scope: !892)
!992 = !DILocation(line: 445, column: 15, scope: !892)
!993 = !DILocation(line: 445, column: 29, scope: !892)
!994 = !DILocation(line: 446, column: 3, scope: !892)
!995 = !DILocation(line: 447, column: 1, scope: !851)
!996 = distinct !DISubprogram(name: "make_funny_pointers", scope: !1, file: !1, line: 195, type: !313, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !600)
!997 = !DILocalVariable(name: "cinfo", arg: 1, scope: !996, file: !1, line: 195, type: !167)
!998 = !DILocation(line: 195, column: 39, scope: !996)
!999 = !DILocalVariable(name: "the_main", scope: !996, file: !1, line: 203, type: !155)
!1000 = !DILocation(line: 203, column: 15, scope: !996)
!1001 = !DILocation(line: 203, column: 40, scope: !996)
!1002 = !DILocation(line: 203, column: 47, scope: !996)
!1003 = !DILocalVariable(name: "ci", scope: !996, file: !1, line: 204, type: !193)
!1004 = !DILocation(line: 204, column: 7, scope: !996)
!1005 = !DILocalVariable(name: "i", scope: !996, file: !1, line: 204, type: !193)
!1006 = !DILocation(line: 204, column: 11, scope: !996)
!1007 = !DILocalVariable(name: "rgroup", scope: !996, file: !1, line: 204, type: !193)
!1008 = !DILocation(line: 204, column: 14, scope: !996)
!1009 = !DILocalVariable(name: "M", scope: !996, file: !1, line: 205, type: !193)
!1010 = !DILocation(line: 205, column: 7, scope: !996)
!1011 = !DILocation(line: 205, column: 11, scope: !996)
!1012 = !DILocation(line: 205, column: 18, scope: !996)
!1013 = !DILocalVariable(name: "compptr", scope: !996, file: !1, line: 206, type: !399)
!1014 = !DILocation(line: 206, column: 24, scope: !996)
!1015 = !DILocalVariable(name: "buf", scope: !996, file: !1, line: 207, type: !202)
!1016 = !DILocation(line: 207, column: 14, scope: !996)
!1017 = !DILocalVariable(name: "xbuf0", scope: !996, file: !1, line: 207, type: !202)
!1018 = !DILocation(line: 207, column: 19, scope: !996)
!1019 = !DILocalVariable(name: "xbuf1", scope: !996, file: !1, line: 207, type: !202)
!1020 = !DILocation(line: 207, column: 26, scope: !996)
!1021 = !DILocation(line: 209, column: 11, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !996, file: !1, line: 209, column: 3)
!1023 = !DILocation(line: 209, column: 26, scope: !1022)
!1024 = !DILocation(line: 209, column: 33, scope: !1022)
!1025 = !DILocation(line: 209, column: 24, scope: !1022)
!1026 = !DILocation(line: 209, column: 8, scope: !1022)
!1027 = !DILocation(line: 209, column: 44, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !1022, file: !1, line: 209, column: 3)
!1029 = !DILocation(line: 209, column: 49, scope: !1028)
!1030 = !DILocation(line: 209, column: 56, scope: !1028)
!1031 = !DILocation(line: 209, column: 47, scope: !1028)
!1032 = !DILocation(line: 209, column: 3, scope: !1022)
!1033 = !DILocation(line: 211, column: 15, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !1028, file: !1, line: 210, column: 25)
!1035 = !DILocation(line: 211, column: 24, scope: !1034)
!1036 = !DILocation(line: 211, column: 40, scope: !1034)
!1037 = !DILocation(line: 211, column: 49, scope: !1034)
!1038 = !DILocation(line: 211, column: 38, scope: !1034)
!1039 = !DILocation(line: 212, column: 7, scope: !1034)
!1040 = !DILocation(line: 212, column: 14, scope: !1034)
!1041 = !DILocation(line: 211, column: 66, scope: !1034)
!1042 = !DILocation(line: 211, column: 12, scope: !1034)
!1043 = !DILocation(line: 213, column: 13, scope: !1034)
!1044 = !DILocation(line: 213, column: 23, scope: !1034)
!1045 = !DILocation(line: 213, column: 34, scope: !1034)
!1046 = !DILocation(line: 213, column: 11, scope: !1034)
!1047 = !DILocation(line: 214, column: 13, scope: !1034)
!1048 = !DILocation(line: 214, column: 23, scope: !1034)
!1049 = !DILocation(line: 214, column: 34, scope: !1034)
!1050 = !DILocation(line: 214, column: 11, scope: !1034)
!1051 = !DILocation(line: 216, column: 11, scope: !1034)
!1052 = !DILocation(line: 216, column: 21, scope: !1034)
!1053 = !DILocation(line: 216, column: 28, scope: !1034)
!1054 = !DILocation(line: 216, column: 9, scope: !1034)
!1055 = !DILocation(line: 217, column: 12, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1034, file: !1, line: 217, column: 5)
!1057 = !DILocation(line: 217, column: 10, scope: !1056)
!1058 = !DILocation(line: 217, column: 17, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1056, file: !1, line: 217, column: 5)
!1060 = !DILocation(line: 217, column: 21, scope: !1059)
!1061 = !DILocation(line: 217, column: 31, scope: !1059)
!1062 = !DILocation(line: 217, column: 33, scope: !1059)
!1063 = !DILocation(line: 217, column: 28, scope: !1059)
!1064 = !DILocation(line: 217, column: 19, scope: !1059)
!1065 = !DILocation(line: 217, column: 5, scope: !1056)
!1066 = !DILocation(line: 218, column: 29, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !1059, file: !1, line: 217, column: 44)
!1068 = !DILocation(line: 218, column: 33, scope: !1067)
!1069 = !DILocation(line: 218, column: 18, scope: !1067)
!1070 = !DILocation(line: 218, column: 24, scope: !1067)
!1071 = !DILocation(line: 218, column: 27, scope: !1067)
!1072 = !DILocation(line: 218, column: 7, scope: !1067)
!1073 = !DILocation(line: 218, column: 13, scope: !1067)
!1074 = !DILocation(line: 218, column: 16, scope: !1067)
!1075 = !DILocation(line: 219, column: 5, scope: !1067)
!1076 = !DILocation(line: 217, column: 40, scope: !1059)
!1077 = !DILocation(line: 217, column: 5, scope: !1059)
!1078 = distinct !{!1078, !1065, !1079, !698}
!1079 = !DILocation(line: 219, column: 5, scope: !1056)
!1080 = !DILocation(line: 221, column: 12, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !1034, file: !1, line: 221, column: 5)
!1082 = !DILocation(line: 221, column: 10, scope: !1081)
!1083 = !DILocation(line: 221, column: 17, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1081, file: !1, line: 221, column: 5)
!1085 = !DILocation(line: 221, column: 21, scope: !1084)
!1086 = !DILocation(line: 221, column: 28, scope: !1084)
!1087 = !DILocation(line: 221, column: 19, scope: !1084)
!1088 = !DILocation(line: 221, column: 5, scope: !1081)
!1089 = !DILocation(line: 222, column: 33, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1084, file: !1, line: 221, column: 38)
!1091 = !DILocation(line: 222, column: 37, scope: !1090)
!1092 = !DILocation(line: 222, column: 44, scope: !1090)
!1093 = !DILocation(line: 222, column: 43, scope: !1090)
!1094 = !DILocation(line: 222, column: 48, scope: !1090)
!1095 = !DILocation(line: 222, column: 46, scope: !1090)
!1096 = !DILocation(line: 222, column: 7, scope: !1090)
!1097 = !DILocation(line: 222, column: 13, scope: !1090)
!1098 = !DILocation(line: 222, column: 21, scope: !1090)
!1099 = !DILocation(line: 222, column: 22, scope: !1090)
!1100 = !DILocation(line: 222, column: 19, scope: !1090)
!1101 = !DILocation(line: 222, column: 28, scope: !1090)
!1102 = !DILocation(line: 222, column: 26, scope: !1090)
!1103 = !DILocation(line: 222, column: 31, scope: !1090)
!1104 = !DILocation(line: 223, column: 29, scope: !1090)
!1105 = !DILocation(line: 223, column: 33, scope: !1090)
!1106 = !DILocation(line: 223, column: 41, scope: !1090)
!1107 = !DILocation(line: 223, column: 42, scope: !1090)
!1108 = !DILocation(line: 223, column: 39, scope: !1090)
!1109 = !DILocation(line: 223, column: 48, scope: !1090)
!1110 = !DILocation(line: 223, column: 46, scope: !1090)
!1111 = !DILocation(line: 223, column: 7, scope: !1090)
!1112 = !DILocation(line: 223, column: 13, scope: !1090)
!1113 = !DILocation(line: 223, column: 20, scope: !1090)
!1114 = !DILocation(line: 223, column: 19, scope: !1090)
!1115 = !DILocation(line: 223, column: 24, scope: !1090)
!1116 = !DILocation(line: 223, column: 22, scope: !1090)
!1117 = !DILocation(line: 223, column: 27, scope: !1090)
!1118 = !DILocation(line: 224, column: 5, scope: !1090)
!1119 = !DILocation(line: 221, column: 34, scope: !1084)
!1120 = !DILocation(line: 221, column: 5, scope: !1084)
!1121 = distinct !{!1121, !1088, !1122, !698}
!1122 = !DILocation(line: 224, column: 5, scope: !1081)
!1123 = !DILocation(line: 230, column: 12, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1034, file: !1, line: 230, column: 5)
!1125 = !DILocation(line: 230, column: 10, scope: !1124)
!1126 = !DILocation(line: 230, column: 17, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1124, file: !1, line: 230, column: 5)
!1128 = !DILocation(line: 230, column: 21, scope: !1127)
!1129 = !DILocation(line: 230, column: 19, scope: !1127)
!1130 = !DILocation(line: 230, column: 5, scope: !1124)
!1131 = !DILocation(line: 231, column: 27, scope: !1132)
!1132 = distinct !DILexicalBlock(scope: !1127, file: !1, line: 230, column: 34)
!1133 = !DILocation(line: 231, column: 7, scope: !1132)
!1134 = !DILocation(line: 231, column: 13, scope: !1132)
!1135 = !DILocation(line: 231, column: 17, scope: !1132)
!1136 = !DILocation(line: 231, column: 15, scope: !1132)
!1137 = !DILocation(line: 231, column: 25, scope: !1132)
!1138 = !DILocation(line: 232, column: 5, scope: !1132)
!1139 = !DILocation(line: 230, column: 30, scope: !1127)
!1140 = !DILocation(line: 230, column: 5, scope: !1127)
!1141 = distinct !{!1141, !1130, !1142, !698}
!1142 = !DILocation(line: 232, column: 5, scope: !1124)
!1143 = !DILocation(line: 233, column: 3, scope: !1034)
!1144 = !DILocation(line: 210, column: 10, scope: !1028)
!1145 = !DILocation(line: 210, column: 21, scope: !1028)
!1146 = !DILocation(line: 209, column: 3, scope: !1028)
!1147 = distinct !{!1147, !1032, !1148, !698}
!1148 = !DILocation(line: 233, column: 3, scope: !1022)
!1149 = !DILocation(line: 234, column: 1, scope: !996)
!1150 = distinct !DISubprogram(name: "process_data_simple_main", scope: !1, file: !1, line: 345, type: !577, scopeLine: 348, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !600)
!1151 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1150, file: !1, line: 345, type: !167)
!1152 = !DILocation(line: 345, column: 44, scope: !1150)
!1153 = !DILocalVariable(name: "output_buf", arg: 2, scope: !1150, file: !1, line: 346, type: !202)
!1154 = !DILocation(line: 346, column: 17, scope: !1150)
!1155 = !DILocalVariable(name: "out_row_ctr", arg: 3, scope: !1150, file: !1, line: 346, type: !496)
!1156 = !DILocation(line: 346, column: 41, scope: !1150)
!1157 = !DILocalVariable(name: "out_rows_avail", arg: 4, scope: !1150, file: !1, line: 347, type: !209)
!1158 = !DILocation(line: 347, column: 17, scope: !1150)
!1159 = !DILocalVariable(name: "the_main", scope: !1150, file: !1, line: 349, type: !155)
!1160 = !DILocation(line: 349, column: 15, scope: !1150)
!1161 = !DILocation(line: 349, column: 40, scope: !1150)
!1162 = !DILocation(line: 349, column: 47, scope: !1150)
!1163 = !DILocalVariable(name: "rowgroups_avail", scope: !1150, file: !1, line: 350, type: !209)
!1164 = !DILocation(line: 350, column: 14, scope: !1150)
!1165 = !DILocation(line: 353, column: 9, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !1150, file: !1, line: 353, column: 7)
!1167 = !DILocation(line: 353, column: 19, scope: !1166)
!1168 = !DILocation(line: 353, column: 7, scope: !1166)
!1169 = !DILocation(line: 354, column: 13, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1171, file: !1, line: 354, column: 9)
!1171 = distinct !DILexicalBlock(scope: !1166, file: !1, line: 353, column: 32)
!1172 = !DILocation(line: 354, column: 20, scope: !1170)
!1173 = !DILocation(line: 354, column: 26, scope: !1170)
!1174 = !DILocation(line: 354, column: 44, scope: !1170)
!1175 = !DILocation(line: 354, column: 51, scope: !1170)
!1176 = !DILocation(line: 354, column: 61, scope: !1170)
!1177 = !DILocation(line: 354, column: 11, scope: !1170)
!1178 = !DILocation(line: 354, column: 9, scope: !1170)
!1179 = !DILocation(line: 355, column: 7, scope: !1170)
!1180 = !DILocation(line: 356, column: 5, scope: !1171)
!1181 = !DILocation(line: 356, column: 15, scope: !1171)
!1182 = !DILocation(line: 356, column: 27, scope: !1171)
!1183 = !DILocation(line: 357, column: 3, scope: !1171)
!1184 = !DILocation(line: 360, column: 34, scope: !1150)
!1185 = !DILocation(line: 360, column: 41, scope: !1150)
!1186 = !DILocation(line: 360, column: 19, scope: !1150)
!1187 = !DILocation(line: 367, column: 5, scope: !1150)
!1188 = !DILocation(line: 367, column: 12, scope: !1150)
!1189 = !DILocation(line: 367, column: 18, scope: !1150)
!1190 = !DILocation(line: 367, column: 38, scope: !1150)
!1191 = !DILocation(line: 367, column: 45, scope: !1150)
!1192 = !DILocation(line: 367, column: 55, scope: !1150)
!1193 = !DILocation(line: 368, column: 11, scope: !1150)
!1194 = !DILocation(line: 368, column: 21, scope: !1150)
!1195 = !DILocation(line: 368, column: 35, scope: !1150)
!1196 = !DILocation(line: 369, column: 10, scope: !1150)
!1197 = !DILocation(line: 369, column: 22, scope: !1150)
!1198 = !DILocation(line: 369, column: 35, scope: !1150)
!1199 = !DILocation(line: 367, column: 3, scope: !1150)
!1200 = !DILocation(line: 372, column: 7, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1150, file: !1, line: 372, column: 7)
!1202 = !DILocation(line: 372, column: 17, scope: !1201)
!1203 = !DILocation(line: 372, column: 33, scope: !1201)
!1204 = !DILocation(line: 372, column: 30, scope: !1201)
!1205 = !DILocation(line: 373, column: 5, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1201, file: !1, line: 372, column: 50)
!1207 = !DILocation(line: 373, column: 15, scope: !1206)
!1208 = !DILocation(line: 373, column: 27, scope: !1206)
!1209 = !DILocation(line: 374, column: 5, scope: !1206)
!1210 = !DILocation(line: 374, column: 15, scope: !1206)
!1211 = !DILocation(line: 374, column: 28, scope: !1206)
!1212 = !DILocation(line: 375, column: 3, scope: !1206)
!1213 = !DILocation(line: 376, column: 1, scope: !1150)
!1214 = distinct !DISubprogram(name: "process_data_crank_post", scope: !1, file: !1, line: 459, type: !577, scopeLine: 462, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !600)
!1215 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1214, file: !1, line: 459, type: !167)
!1216 = !DILocation(line: 459, column: 43, scope: !1214)
!1217 = !DILocalVariable(name: "output_buf", arg: 2, scope: !1214, file: !1, line: 460, type: !202)
!1218 = !DILocation(line: 460, column: 16, scope: !1214)
!1219 = !DILocalVariable(name: "out_row_ctr", arg: 3, scope: !1214, file: !1, line: 460, type: !496)
!1220 = !DILocation(line: 460, column: 40, scope: !1214)
!1221 = !DILocalVariable(name: "out_rows_avail", arg: 4, scope: !1214, file: !1, line: 461, type: !209)
!1222 = !DILocation(line: 461, column: 16, scope: !1214)
!1223 = !DILocation(line: 463, column: 5, scope: !1214)
!1224 = !DILocation(line: 463, column: 12, scope: !1214)
!1225 = !DILocation(line: 463, column: 18, scope: !1214)
!1226 = !DILocation(line: 463, column: 38, scope: !1214)
!1227 = !DILocation(line: 465, column: 10, scope: !1214)
!1228 = !DILocation(line: 465, column: 22, scope: !1214)
!1229 = !DILocation(line: 465, column: 35, scope: !1214)
!1230 = !DILocation(line: 463, column: 3, scope: !1214)
!1231 = !DILocation(line: 466, column: 1, scope: !1214)
!1232 = distinct !DISubprogram(name: "set_bottom_pointers", scope: !1, file: !1, line: 266, type: !313, scopeLine: 271, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !600)
!1233 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1232, file: !1, line: 266, type: !167)
!1234 = !DILocation(line: 266, column: 39, scope: !1232)
!1235 = !DILocalVariable(name: "the_main", scope: !1232, file: !1, line: 272, type: !155)
!1236 = !DILocation(line: 272, column: 15, scope: !1232)
!1237 = !DILocation(line: 272, column: 40, scope: !1232)
!1238 = !DILocation(line: 272, column: 47, scope: !1232)
!1239 = !DILocalVariable(name: "ci", scope: !1232, file: !1, line: 273, type: !193)
!1240 = !DILocation(line: 273, column: 7, scope: !1232)
!1241 = !DILocalVariable(name: "i", scope: !1232, file: !1, line: 273, type: !193)
!1242 = !DILocation(line: 273, column: 11, scope: !1232)
!1243 = !DILocalVariable(name: "rgroup", scope: !1232, file: !1, line: 273, type: !193)
!1244 = !DILocation(line: 273, column: 14, scope: !1232)
!1245 = !DILocalVariable(name: "iMCUheight", scope: !1232, file: !1, line: 273, type: !193)
!1246 = !DILocation(line: 273, column: 22, scope: !1232)
!1247 = !DILocalVariable(name: "rows_left", scope: !1232, file: !1, line: 273, type: !193)
!1248 = !DILocation(line: 273, column: 34, scope: !1232)
!1249 = !DILocalVariable(name: "compptr", scope: !1232, file: !1, line: 274, type: !399)
!1250 = !DILocation(line: 274, column: 24, scope: !1232)
!1251 = !DILocalVariable(name: "xbuf", scope: !1232, file: !1, line: 275, type: !202)
!1252 = !DILocation(line: 275, column: 14, scope: !1232)
!1253 = !DILocation(line: 277, column: 11, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !1232, file: !1, line: 277, column: 3)
!1255 = !DILocation(line: 277, column: 26, scope: !1254)
!1256 = !DILocation(line: 277, column: 33, scope: !1254)
!1257 = !DILocation(line: 277, column: 24, scope: !1254)
!1258 = !DILocation(line: 277, column: 8, scope: !1254)
!1259 = !DILocation(line: 277, column: 44, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !1254, file: !1, line: 277, column: 3)
!1261 = !DILocation(line: 277, column: 49, scope: !1260)
!1262 = !DILocation(line: 277, column: 56, scope: !1260)
!1263 = !DILocation(line: 277, column: 47, scope: !1260)
!1264 = !DILocation(line: 277, column: 3, scope: !1254)
!1265 = !DILocation(line: 280, column: 18, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !1260, file: !1, line: 278, column: 25)
!1267 = !DILocation(line: 280, column: 27, scope: !1266)
!1268 = !DILocation(line: 280, column: 43, scope: !1266)
!1269 = !DILocation(line: 280, column: 52, scope: !1266)
!1270 = !DILocation(line: 280, column: 41, scope: !1266)
!1271 = !DILocation(line: 280, column: 16, scope: !1266)
!1272 = !DILocation(line: 281, column: 14, scope: !1266)
!1273 = !DILocation(line: 281, column: 27, scope: !1266)
!1274 = !DILocation(line: 281, column: 34, scope: !1266)
!1275 = !DILocation(line: 281, column: 25, scope: !1266)
!1276 = !DILocation(line: 281, column: 12, scope: !1266)
!1277 = !DILocation(line: 283, column: 24, scope: !1266)
!1278 = !DILocation(line: 283, column: 33, scope: !1266)
!1279 = !DILocation(line: 283, column: 67, scope: !1266)
!1280 = !DILocation(line: 283, column: 52, scope: !1266)
!1281 = !DILocation(line: 283, column: 15, scope: !1266)
!1282 = !DILocation(line: 284, column: 9, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !1266, file: !1, line: 284, column: 9)
!1284 = !DILocation(line: 284, column: 19, scope: !1283)
!1285 = !DILocation(line: 284, column: 37, scope: !1283)
!1286 = !DILocation(line: 284, column: 35, scope: !1283)
!1287 = !DILocation(line: 284, column: 25, scope: !1283)
!1288 = !DILocation(line: 288, column: 9, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1266, file: !1, line: 288, column: 9)
!1290 = !DILocation(line: 288, column: 12, scope: !1289)
!1291 = !DILocation(line: 289, column: 50, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1289, file: !1, line: 288, column: 18)
!1293 = !DILocation(line: 289, column: 59, scope: !1292)
!1294 = !DILocation(line: 289, column: 65, scope: !1292)
!1295 = !DILocation(line: 289, column: 63, scope: !1292)
!1296 = !DILocation(line: 289, column: 72, scope: !1292)
!1297 = !DILocation(line: 289, column: 7, scope: !1292)
!1298 = !DILocation(line: 289, column: 17, scope: !1292)
!1299 = !DILocation(line: 289, column: 33, scope: !1292)
!1300 = !DILocation(line: 290, column: 5, scope: !1292)
!1301 = !DILocation(line: 294, column: 12, scope: !1266)
!1302 = !DILocation(line: 294, column: 22, scope: !1266)
!1303 = !DILocation(line: 294, column: 30, scope: !1266)
!1304 = !DILocation(line: 294, column: 40, scope: !1266)
!1305 = !DILocation(line: 294, column: 50, scope: !1266)
!1306 = !DILocation(line: 294, column: 10, scope: !1266)
!1307 = !DILocation(line: 295, column: 12, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1266, file: !1, line: 295, column: 5)
!1309 = !DILocation(line: 295, column: 10, scope: !1308)
!1310 = !DILocation(line: 295, column: 17, scope: !1311)
!1311 = distinct !DILexicalBlock(scope: !1308, file: !1, line: 295, column: 5)
!1312 = !DILocation(line: 295, column: 21, scope: !1311)
!1313 = !DILocation(line: 295, column: 28, scope: !1311)
!1314 = !DILocation(line: 295, column: 19, scope: !1311)
!1315 = !DILocation(line: 295, column: 5, scope: !1308)
!1316 = !DILocation(line: 296, column: 29, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1311, file: !1, line: 295, column: 38)
!1318 = !DILocation(line: 296, column: 34, scope: !1317)
!1319 = !DILocation(line: 296, column: 43, scope: !1317)
!1320 = !DILocation(line: 296, column: 7, scope: !1317)
!1321 = !DILocation(line: 296, column: 12, scope: !1317)
!1322 = !DILocation(line: 296, column: 24, scope: !1317)
!1323 = !DILocation(line: 296, column: 22, scope: !1317)
!1324 = !DILocation(line: 296, column: 27, scope: !1317)
!1325 = !DILocation(line: 297, column: 5, scope: !1317)
!1326 = !DILocation(line: 295, column: 34, scope: !1311)
!1327 = !DILocation(line: 295, column: 5, scope: !1311)
!1328 = distinct !{!1328, !1315, !1329, !698}
!1329 = !DILocation(line: 297, column: 5, scope: !1308)
!1330 = !DILocation(line: 298, column: 3, scope: !1266)
!1331 = !DILocation(line: 278, column: 10, scope: !1260)
!1332 = !DILocation(line: 278, column: 21, scope: !1260)
!1333 = !DILocation(line: 277, column: 3, scope: !1260)
!1334 = distinct !{!1334, !1264, !1335, !698}
!1335 = !DILocation(line: 298, column: 3, scope: !1254)
!1336 = !DILocation(line: 299, column: 1, scope: !1232)
!1337 = distinct !DISubprogram(name: "set_wraparound_pointers", scope: !1, file: !1, line: 238, type: !313, scopeLine: 242, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !600)
!1338 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1337, file: !1, line: 238, type: !167)
!1339 = !DILocation(line: 238, column: 43, scope: !1337)
!1340 = !DILocalVariable(name: "the_main", scope: !1337, file: !1, line: 243, type: !155)
!1341 = !DILocation(line: 243, column: 15, scope: !1337)
!1342 = !DILocation(line: 243, column: 40, scope: !1337)
!1343 = !DILocation(line: 243, column: 47, scope: !1337)
!1344 = !DILocalVariable(name: "ci", scope: !1337, file: !1, line: 244, type: !193)
!1345 = !DILocation(line: 244, column: 7, scope: !1337)
!1346 = !DILocalVariable(name: "i", scope: !1337, file: !1, line: 244, type: !193)
!1347 = !DILocation(line: 244, column: 11, scope: !1337)
!1348 = !DILocalVariable(name: "rgroup", scope: !1337, file: !1, line: 244, type: !193)
!1349 = !DILocation(line: 244, column: 14, scope: !1337)
!1350 = !DILocalVariable(name: "M", scope: !1337, file: !1, line: 245, type: !193)
!1351 = !DILocation(line: 245, column: 7, scope: !1337)
!1352 = !DILocation(line: 245, column: 11, scope: !1337)
!1353 = !DILocation(line: 245, column: 18, scope: !1337)
!1354 = !DILocalVariable(name: "compptr", scope: !1337, file: !1, line: 246, type: !399)
!1355 = !DILocation(line: 246, column: 24, scope: !1337)
!1356 = !DILocalVariable(name: "xbuf0", scope: !1337, file: !1, line: 247, type: !202)
!1357 = !DILocation(line: 247, column: 14, scope: !1337)
!1358 = !DILocalVariable(name: "xbuf1", scope: !1337, file: !1, line: 247, type: !202)
!1359 = !DILocation(line: 247, column: 21, scope: !1337)
!1360 = !DILocation(line: 249, column: 11, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1337, file: !1, line: 249, column: 3)
!1362 = !DILocation(line: 249, column: 26, scope: !1361)
!1363 = !DILocation(line: 249, column: 33, scope: !1361)
!1364 = !DILocation(line: 249, column: 24, scope: !1361)
!1365 = !DILocation(line: 249, column: 8, scope: !1361)
!1366 = !DILocation(line: 249, column: 44, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1361, file: !1, line: 249, column: 3)
!1368 = !DILocation(line: 249, column: 49, scope: !1367)
!1369 = !DILocation(line: 249, column: 56, scope: !1367)
!1370 = !DILocation(line: 249, column: 47, scope: !1367)
!1371 = !DILocation(line: 249, column: 3, scope: !1361)
!1372 = !DILocation(line: 251, column: 15, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !1367, file: !1, line: 250, column: 25)
!1374 = !DILocation(line: 251, column: 24, scope: !1373)
!1375 = !DILocation(line: 251, column: 40, scope: !1373)
!1376 = !DILocation(line: 251, column: 49, scope: !1373)
!1377 = !DILocation(line: 251, column: 38, scope: !1373)
!1378 = !DILocation(line: 252, column: 7, scope: !1373)
!1379 = !DILocation(line: 252, column: 14, scope: !1373)
!1380 = !DILocation(line: 251, column: 66, scope: !1373)
!1381 = !DILocation(line: 251, column: 12, scope: !1373)
!1382 = !DILocation(line: 253, column: 13, scope: !1373)
!1383 = !DILocation(line: 253, column: 23, scope: !1373)
!1384 = !DILocation(line: 253, column: 34, scope: !1373)
!1385 = !DILocation(line: 253, column: 11, scope: !1373)
!1386 = !DILocation(line: 254, column: 13, scope: !1373)
!1387 = !DILocation(line: 254, column: 23, scope: !1373)
!1388 = !DILocation(line: 254, column: 34, scope: !1373)
!1389 = !DILocation(line: 254, column: 11, scope: !1373)
!1390 = !DILocation(line: 255, column: 12, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1373, file: !1, line: 255, column: 5)
!1392 = !DILocation(line: 255, column: 10, scope: !1391)
!1393 = !DILocation(line: 255, column: 17, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !1391, file: !1, line: 255, column: 5)
!1395 = !DILocation(line: 255, column: 21, scope: !1394)
!1396 = !DILocation(line: 255, column: 19, scope: !1394)
!1397 = !DILocation(line: 255, column: 5, scope: !1391)
!1398 = !DILocation(line: 256, column: 27, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1394, file: !1, line: 255, column: 34)
!1400 = !DILocation(line: 256, column: 33, scope: !1399)
!1401 = !DILocation(line: 256, column: 41, scope: !1399)
!1402 = !DILocation(line: 256, column: 42, scope: !1399)
!1403 = !DILocation(line: 256, column: 39, scope: !1399)
!1404 = !DILocation(line: 256, column: 48, scope: !1399)
!1405 = !DILocation(line: 256, column: 46, scope: !1399)
!1406 = !DILocation(line: 256, column: 7, scope: !1399)
!1407 = !DILocation(line: 256, column: 13, scope: !1399)
!1408 = !DILocation(line: 256, column: 17, scope: !1399)
!1409 = !DILocation(line: 256, column: 15, scope: !1399)
!1410 = !DILocation(line: 256, column: 25, scope: !1399)
!1411 = !DILocation(line: 257, column: 27, scope: !1399)
!1412 = !DILocation(line: 257, column: 33, scope: !1399)
!1413 = !DILocation(line: 257, column: 41, scope: !1399)
!1414 = !DILocation(line: 257, column: 42, scope: !1399)
!1415 = !DILocation(line: 257, column: 39, scope: !1399)
!1416 = !DILocation(line: 257, column: 48, scope: !1399)
!1417 = !DILocation(line: 257, column: 46, scope: !1399)
!1418 = !DILocation(line: 257, column: 7, scope: !1399)
!1419 = !DILocation(line: 257, column: 13, scope: !1399)
!1420 = !DILocation(line: 257, column: 17, scope: !1399)
!1421 = !DILocation(line: 257, column: 15, scope: !1399)
!1422 = !DILocation(line: 257, column: 25, scope: !1399)
!1423 = !DILocation(line: 258, column: 33, scope: !1399)
!1424 = !DILocation(line: 258, column: 39, scope: !1399)
!1425 = !DILocation(line: 258, column: 7, scope: !1399)
!1426 = !DILocation(line: 258, column: 13, scope: !1399)
!1427 = !DILocation(line: 258, column: 21, scope: !1399)
!1428 = !DILocation(line: 258, column: 22, scope: !1399)
!1429 = !DILocation(line: 258, column: 19, scope: !1399)
!1430 = !DILocation(line: 258, column: 28, scope: !1399)
!1431 = !DILocation(line: 258, column: 26, scope: !1399)
!1432 = !DILocation(line: 258, column: 31, scope: !1399)
!1433 = !DILocation(line: 259, column: 33, scope: !1399)
!1434 = !DILocation(line: 259, column: 39, scope: !1399)
!1435 = !DILocation(line: 259, column: 7, scope: !1399)
!1436 = !DILocation(line: 259, column: 13, scope: !1399)
!1437 = !DILocation(line: 259, column: 21, scope: !1399)
!1438 = !DILocation(line: 259, column: 22, scope: !1399)
!1439 = !DILocation(line: 259, column: 19, scope: !1399)
!1440 = !DILocation(line: 259, column: 28, scope: !1399)
!1441 = !DILocation(line: 259, column: 26, scope: !1399)
!1442 = !DILocation(line: 259, column: 31, scope: !1399)
!1443 = !DILocation(line: 260, column: 5, scope: !1399)
!1444 = !DILocation(line: 255, column: 30, scope: !1394)
!1445 = !DILocation(line: 255, column: 5, scope: !1394)
!1446 = distinct !{!1446, !1397, !1447, !698}
!1447 = !DILocation(line: 260, column: 5, scope: !1391)
!1448 = !DILocation(line: 261, column: 3, scope: !1373)
!1449 = !DILocation(line: 250, column: 10, scope: !1367)
!1450 = !DILocation(line: 250, column: 21, scope: !1367)
!1451 = !DILocation(line: 249, column: 3, scope: !1367)
!1452 = distinct !{!1452, !1371, !1453, !698}
!1453 = !DILocation(line: 261, column: 3, scope: !1361)
!1454 = !DILocation(line: 262, column: 1, scope: !1337)
