; ModuleID = 'cBench/consumer_jpeg_c/src/jcmaster.c'
source_filename = "cBench/consumer_jpeg_c/src/jcmaster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jpeg_compress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, double, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [16 x i8], [16 x i8], [16 x i8], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.my_comp_master = type { %struct.jpeg_comp_master, i32, i32, i32, i32 }
%struct.jpeg_comp_master = type { ptr, ptr, ptr, i32, i32 }
%struct.jpeg_color_converter = type { ptr, ptr }
%struct.jpeg_downsampler = type { ptr, ptr, i32 }
%struct.jpeg_c_prep_controller = type { ptr, ptr }
%struct.jpeg_forward_dct = type { ptr, ptr }
%struct.jpeg_entropy_encoder = type { ptr, ptr, ptr }
%struct.jpeg_c_coef_controller = type { ptr, ptr }
%struct.jpeg_c_main_controller = type { ptr, ptr }
%struct.jpeg_marker_writer = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_progress_mgr = type { ptr, i64, i64, i32, i32 }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.jpeg_scan_info = type { i32, [4 x i32], i32, i32, i32, i32 }

; Function Attrs: noinline nounwind uwtable
define dso_local void @jinit_c_master_control(ptr noundef %0, i32 noundef %1) #0 !dbg !544 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !546, !DIExpression(), !547)
  store i32 %1, ptr %4, align 4
    #dbg_declare(ptr %4, !548, !DIExpression(), !549)
    #dbg_declare(ptr %5, !550, !DIExpression(), !551)
  %6 = load ptr, ptr %3, align 8, !dbg !552
  %7 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %6, i32 0, i32 1, !dbg !553
  %8 = load ptr, ptr %7, align 8, !dbg !553
  %9 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %8, i32 0, i32 0, !dbg !554
  %10 = load ptr, ptr %9, align 8, !dbg !554
  %11 = load ptr, ptr %3, align 8, !dbg !555
  %12 = call ptr %10(ptr noundef %11, i32 noundef 1, i64 noundef 48), !dbg !556
  store ptr %12, ptr %5, align 8, !dbg !557
  %13 = load ptr, ptr %5, align 8, !dbg !558
  %14 = load ptr, ptr %3, align 8, !dbg !559
  %15 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %14, i32 0, i32 51, !dbg !560
  store ptr %13, ptr %15, align 8, !dbg !561
  %16 = load ptr, ptr %5, align 8, !dbg !562
  %17 = getelementptr inbounds nuw %struct.my_comp_master, ptr %16, i32 0, i32 0, !dbg !563
  %18 = getelementptr inbounds nuw %struct.jpeg_comp_master, ptr %17, i32 0, i32 0, !dbg !564
  store ptr @prepare_for_pass, ptr %18, align 8, !dbg !565
  %19 = load ptr, ptr %5, align 8, !dbg !566
  %20 = getelementptr inbounds nuw %struct.my_comp_master, ptr %19, i32 0, i32 0, !dbg !567
  %21 = getelementptr inbounds nuw %struct.jpeg_comp_master, ptr %20, i32 0, i32 1, !dbg !568
  store ptr @pass_startup, ptr %21, align 8, !dbg !569
  %22 = load ptr, ptr %5, align 8, !dbg !570
  %23 = getelementptr inbounds nuw %struct.my_comp_master, ptr %22, i32 0, i32 0, !dbg !571
  %24 = getelementptr inbounds nuw %struct.jpeg_comp_master, ptr %23, i32 0, i32 2, !dbg !572
  store ptr @finish_pass_master, ptr %24, align 8, !dbg !573
  %25 = load ptr, ptr %5, align 8, !dbg !574
  %26 = getelementptr inbounds nuw %struct.my_comp_master, ptr %25, i32 0, i32 0, !dbg !575
  %27 = getelementptr inbounds nuw %struct.jpeg_comp_master, ptr %26, i32 0, i32 4, !dbg !576
  store i32 0, ptr %27, align 4, !dbg !577
  %28 = load ptr, ptr %3, align 8, !dbg !578
  call void @initial_setup(ptr noundef %28), !dbg !579
  %29 = load ptr, ptr %3, align 8, !dbg !580
  %30 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %29, i32 0, i32 22, !dbg !582
  %31 = load ptr, ptr %30, align 8, !dbg !582
  %32 = icmp ne ptr %31, null, !dbg !583
  br i1 %32, label %33, label %35, !dbg !583

33:                                               ; preds = %2
  %34 = load ptr, ptr %3, align 8, !dbg !584
  call void @validate_script(ptr noundef %34), !dbg !586
  br label %40, !dbg !587

35:                                               ; preds = %2
  %36 = load ptr, ptr %3, align 8, !dbg !588
  %37 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %36, i32 0, i32 37, !dbg !590
  store i32 0, ptr %37, align 4, !dbg !591
  %38 = load ptr, ptr %3, align 8, !dbg !592
  %39 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %38, i32 0, i32 21, !dbg !593
  store i32 1, ptr %39, align 8, !dbg !594
  br label %40

40:                                               ; preds = %35, %33
  %41 = load ptr, ptr %3, align 8, !dbg !595
  %42 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %41, i32 0, i32 37, !dbg !597
  %43 = load i32, ptr %42, align 4, !dbg !597
  %44 = icmp ne i32 %43, 0, !dbg !595
  br i1 %44, label %45, label %48, !dbg !595

45:                                               ; preds = %40
  %46 = load ptr, ptr %3, align 8, !dbg !598
  %47 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %46, i32 0, i32 25, !dbg !599
  store i32 1, ptr %47, align 8, !dbg !600
  br label %48, !dbg !598

48:                                               ; preds = %45, %40
  %49 = load i32, ptr %4, align 4, !dbg !601
  %50 = icmp ne i32 %49, 0, !dbg !601
  br i1 %50, label %51, label %63, !dbg !601

51:                                               ; preds = %48
  %52 = load ptr, ptr %3, align 8, !dbg !603
  %53 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %52, i32 0, i32 25, !dbg !606
  %54 = load i32, ptr %53, align 8, !dbg !606
  %55 = icmp ne i32 %54, 0, !dbg !603
  br i1 %55, label %56, label %59, !dbg !603

56:                                               ; preds = %51
  %57 = load ptr, ptr %5, align 8, !dbg !607
  %58 = getelementptr inbounds nuw %struct.my_comp_master, ptr %57, i32 0, i32 1, !dbg !608
  store i32 1, ptr %58, align 8, !dbg !609
  br label %62, !dbg !607

59:                                               ; preds = %51
  %60 = load ptr, ptr %5, align 8, !dbg !610
  %61 = getelementptr inbounds nuw %struct.my_comp_master, ptr %60, i32 0, i32 1, !dbg !611
  store i32 2, ptr %61, align 8, !dbg !612
  br label %62

62:                                               ; preds = %59, %56
  br label %66, !dbg !613

63:                                               ; preds = %48
  %64 = load ptr, ptr %5, align 8, !dbg !614
  %65 = getelementptr inbounds nuw %struct.my_comp_master, ptr %64, i32 0, i32 1, !dbg !616
  store i32 0, ptr %65, align 8, !dbg !617
  br label %66

66:                                               ; preds = %63, %62
  %67 = load ptr, ptr %5, align 8, !dbg !618
  %68 = getelementptr inbounds nuw %struct.my_comp_master, ptr %67, i32 0, i32 4, !dbg !619
  store i32 0, ptr %68, align 4, !dbg !620
  %69 = load ptr, ptr %5, align 8, !dbg !621
  %70 = getelementptr inbounds nuw %struct.my_comp_master, ptr %69, i32 0, i32 2, !dbg !622
  store i32 0, ptr %70, align 4, !dbg !623
  %71 = load ptr, ptr %3, align 8, !dbg !624
  %72 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %71, i32 0, i32 25, !dbg !626
  %73 = load i32, ptr %72, align 8, !dbg !626
  %74 = icmp ne i32 %73, 0, !dbg !624
  br i1 %74, label %75, label %82, !dbg !624

75:                                               ; preds = %66
  %76 = load ptr, ptr %3, align 8, !dbg !627
  %77 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %76, i32 0, i32 21, !dbg !628
  %78 = load i32, ptr %77, align 8, !dbg !628
  %79 = mul nsw i32 %78, 2, !dbg !629
  %80 = load ptr, ptr %5, align 8, !dbg !630
  %81 = getelementptr inbounds nuw %struct.my_comp_master, ptr %80, i32 0, i32 3, !dbg !631
  store i32 %79, ptr %81, align 8, !dbg !632
  br label %88, !dbg !630

82:                                               ; preds = %66
  %83 = load ptr, ptr %3, align 8, !dbg !633
  %84 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %83, i32 0, i32 21, !dbg !634
  %85 = load i32, ptr %84, align 8, !dbg !634
  %86 = load ptr, ptr %5, align 8, !dbg !635
  %87 = getelementptr inbounds nuw %struct.my_comp_master, ptr %86, i32 0, i32 3, !dbg !636
  store i32 %85, ptr %87, align 8, !dbg !637
  br label %88

88:                                               ; preds = %82, %75
  ret void, !dbg !638
}

; Function Attrs: noinline nounwind uwtable
define internal void @prepare_for_pass(ptr noundef %0) #0 !dbg !639 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !640, !DIExpression(), !641)
    #dbg_declare(ptr %3, !642, !DIExpression(), !643)
  %4 = load ptr, ptr %2, align 8, !dbg !644
  %5 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %4, i32 0, i32 51, !dbg !645
  %6 = load ptr, ptr %5, align 8, !dbg !645
  store ptr %6, ptr %3, align 8, !dbg !643
  %7 = load ptr, ptr %3, align 8, !dbg !646
  %8 = getelementptr inbounds nuw %struct.my_comp_master, ptr %7, i32 0, i32 1, !dbg !647
  %9 = load i32, ptr %8, align 8, !dbg !647
  switch i32 %9, label %165 [
    i32 0, label %10
    i32 1, label %83
    i32 2, label %123
  ], !dbg !648

10:                                               ; preds = %1
  %11 = load ptr, ptr %2, align 8, !dbg !649
  call void @select_scan_parameters(ptr noundef %11), !dbg !651
  %12 = load ptr, ptr %2, align 8, !dbg !652
  call void @per_scan_setup(ptr noundef %12), !dbg !653
  %13 = load ptr, ptr %2, align 8, !dbg !654
  %14 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %13, i32 0, i32 23, !dbg !656
  %15 = load i32, ptr %14, align 8, !dbg !656
  %16 = icmp ne i32 %15, 0, !dbg !654
  br i1 %16, label %36, label %17, !dbg !657

17:                                               ; preds = %10
  %18 = load ptr, ptr %2, align 8, !dbg !658
  %19 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %18, i32 0, i32 56, !dbg !660
  %20 = load ptr, ptr %19, align 8, !dbg !660
  %21 = getelementptr inbounds nuw %struct.jpeg_color_converter, ptr %20, i32 0, i32 0, !dbg !661
  %22 = load ptr, ptr %21, align 8, !dbg !661
  %23 = load ptr, ptr %2, align 8, !dbg !662
  call void %22(ptr noundef %23), !dbg !663
  %24 = load ptr, ptr %2, align 8, !dbg !664
  %25 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %24, i32 0, i32 57, !dbg !665
  %26 = load ptr, ptr %25, align 8, !dbg !665
  %27 = getelementptr inbounds nuw %struct.jpeg_downsampler, ptr %26, i32 0, i32 0, !dbg !666
  %28 = load ptr, ptr %27, align 8, !dbg !666
  %29 = load ptr, ptr %2, align 8, !dbg !667
  call void %28(ptr noundef %29), !dbg !668
  %30 = load ptr, ptr %2, align 8, !dbg !669
  %31 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %30, i32 0, i32 53, !dbg !670
  %32 = load ptr, ptr %31, align 8, !dbg !670
  %33 = getelementptr inbounds nuw %struct.jpeg_c_prep_controller, ptr %32, i32 0, i32 0, !dbg !671
  %34 = load ptr, ptr %33, align 8, !dbg !671
  %35 = load ptr, ptr %2, align 8, !dbg !672
  call void %34(ptr noundef %35, i32 noundef 0), !dbg !673
  br label %36, !dbg !674

36:                                               ; preds = %17, %10
  %37 = load ptr, ptr %2, align 8, !dbg !675
  %38 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %37, i32 0, i32 58, !dbg !676
  %39 = load ptr, ptr %38, align 8, !dbg !676
  %40 = getelementptr inbounds nuw %struct.jpeg_forward_dct, ptr %39, i32 0, i32 0, !dbg !677
  %41 = load ptr, ptr %40, align 8, !dbg !677
  %42 = load ptr, ptr %2, align 8, !dbg !678
  call void %41(ptr noundef %42), !dbg !679
  %43 = load ptr, ptr %2, align 8, !dbg !680
  %44 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %43, i32 0, i32 59, !dbg !681
  %45 = load ptr, ptr %44, align 8, !dbg !681
  %46 = getelementptr inbounds nuw %struct.jpeg_entropy_encoder, ptr %45, i32 0, i32 0, !dbg !682
  %47 = load ptr, ptr %46, align 8, !dbg !682
  %48 = load ptr, ptr %2, align 8, !dbg !683
  %49 = load ptr, ptr %2, align 8, !dbg !684
  %50 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %49, i32 0, i32 25, !dbg !685
  %51 = load i32, ptr %50, align 8, !dbg !685
  call void %47(ptr noundef %48, i32 noundef %51), !dbg !686
  %52 = load ptr, ptr %2, align 8, !dbg !687
  %53 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %52, i32 0, i32 54, !dbg !688
  %54 = load ptr, ptr %53, align 8, !dbg !688
  %55 = getelementptr inbounds nuw %struct.jpeg_c_coef_controller, ptr %54, i32 0, i32 0, !dbg !689
  %56 = load ptr, ptr %55, align 8, !dbg !689
  %57 = load ptr, ptr %2, align 8, !dbg !690
  %58 = load ptr, ptr %3, align 8, !dbg !691
  %59 = getelementptr inbounds nuw %struct.my_comp_master, ptr %58, i32 0, i32 3, !dbg !692
  %60 = load i32, ptr %59, align 8, !dbg !692
  %61 = icmp sgt i32 %60, 1, !dbg !693
  %62 = zext i1 %61 to i64, !dbg !691
  %63 = select i1 %61, i32 3, i32 0, !dbg !691
  call void %56(ptr noundef %57, i32 noundef %63), !dbg !694
  %64 = load ptr, ptr %2, align 8, !dbg !695
  %65 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %64, i32 0, i32 52, !dbg !696
  %66 = load ptr, ptr %65, align 8, !dbg !696
  %67 = getelementptr inbounds nuw %struct.jpeg_c_main_controller, ptr %66, i32 0, i32 0, !dbg !697
  %68 = load ptr, ptr %67, align 8, !dbg !697
  %69 = load ptr, ptr %2, align 8, !dbg !698
  call void %68(ptr noundef %69, i32 noundef 0), !dbg !699
  %70 = load ptr, ptr %2, align 8, !dbg !700
  %71 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %70, i32 0, i32 25, !dbg !702
  %72 = load i32, ptr %71, align 8, !dbg !702
  %73 = icmp ne i32 %72, 0, !dbg !700
  br i1 %73, label %74, label %78, !dbg !700

74:                                               ; preds = %36
  %75 = load ptr, ptr %3, align 8, !dbg !703
  %76 = getelementptr inbounds nuw %struct.my_comp_master, ptr %75, i32 0, i32 0, !dbg !705
  %77 = getelementptr inbounds nuw %struct.jpeg_comp_master, ptr %76, i32 0, i32 3, !dbg !706
  store i32 0, ptr %77, align 8, !dbg !707
  br label %82, !dbg !708

78:                                               ; preds = %36
  %79 = load ptr, ptr %3, align 8, !dbg !709
  %80 = getelementptr inbounds nuw %struct.my_comp_master, ptr %79, i32 0, i32 0, !dbg !711
  %81 = getelementptr inbounds nuw %struct.jpeg_comp_master, ptr %80, i32 0, i32 3, !dbg !712
  store i32 1, ptr %81, align 8, !dbg !713
  br label %82

82:                                               ; preds = %78, %74
  br label %176, !dbg !714

83:                                               ; preds = %1
  %84 = load ptr, ptr %2, align 8, !dbg !715
  call void @select_scan_parameters(ptr noundef %84), !dbg !716
  %85 = load ptr, ptr %2, align 8, !dbg !717
  call void @per_scan_setup(ptr noundef %85), !dbg !718
  %86 = load ptr, ptr %2, align 8, !dbg !719
  %87 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %86, i32 0, i32 47, !dbg !721
  %88 = load i32, ptr %87, align 4, !dbg !721
  %89 = icmp ne i32 %88, 0, !dbg !722
  br i1 %89, label %100, label %90, !dbg !723

90:                                               ; preds = %83
  %91 = load ptr, ptr %2, align 8, !dbg !724
  %92 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %91, i32 0, i32 49, !dbg !725
  %93 = load i32, ptr %92, align 4, !dbg !725
  %94 = icmp eq i32 %93, 0, !dbg !726
  br i1 %94, label %100, label %95, !dbg !727

95:                                               ; preds = %90
  %96 = load ptr, ptr %2, align 8, !dbg !728
  %97 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %96, i32 0, i32 24, !dbg !729
  %98 = load i32, ptr %97, align 4, !dbg !729
  %99 = icmp ne i32 %98, 0, !dbg !728
  br i1 %99, label %100, label %116, !dbg !727

100:                                              ; preds = %95, %90, %83
  %101 = load ptr, ptr %2, align 8, !dbg !730
  %102 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %101, i32 0, i32 59, !dbg !732
  %103 = load ptr, ptr %102, align 8, !dbg !732
  %104 = getelementptr inbounds nuw %struct.jpeg_entropy_encoder, ptr %103, i32 0, i32 0, !dbg !733
  %105 = load ptr, ptr %104, align 8, !dbg !733
  %106 = load ptr, ptr %2, align 8, !dbg !734
  call void %105(ptr noundef %106, i32 noundef 1), !dbg !735
  %107 = load ptr, ptr %2, align 8, !dbg !736
  %108 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %107, i32 0, i32 54, !dbg !737
  %109 = load ptr, ptr %108, align 8, !dbg !737
  %110 = getelementptr inbounds nuw %struct.jpeg_c_coef_controller, ptr %109, i32 0, i32 0, !dbg !738
  %111 = load ptr, ptr %110, align 8, !dbg !738
  %112 = load ptr, ptr %2, align 8, !dbg !739
  call void %111(ptr noundef %112, i32 noundef 2), !dbg !740
  %113 = load ptr, ptr %3, align 8, !dbg !741
  %114 = getelementptr inbounds nuw %struct.my_comp_master, ptr %113, i32 0, i32 0, !dbg !742
  %115 = getelementptr inbounds nuw %struct.jpeg_comp_master, ptr %114, i32 0, i32 3, !dbg !743
  store i32 0, ptr %115, align 8, !dbg !744
  br label %176, !dbg !745

116:                                              ; preds = %95
  %117 = load ptr, ptr %3, align 8, !dbg !746
  %118 = getelementptr inbounds nuw %struct.my_comp_master, ptr %117, i32 0, i32 1, !dbg !747
  store i32 2, ptr %118, align 8, !dbg !748
  %119 = load ptr, ptr %3, align 8, !dbg !749
  %120 = getelementptr inbounds nuw %struct.my_comp_master, ptr %119, i32 0, i32 2, !dbg !750
  %121 = load i32, ptr %120, align 4, !dbg !751
  %122 = add nsw i32 %121, 1, !dbg !751
  store i32 %122, ptr %120, align 4, !dbg !751
  br label %123, !dbg !749

123:                                              ; preds = %1, %116
  %124 = load ptr, ptr %2, align 8, !dbg !752
  %125 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %124, i32 0, i32 25, !dbg !754
  %126 = load i32, ptr %125, align 8, !dbg !754
  %127 = icmp ne i32 %126, 0, !dbg !752
  br i1 %127, label %131, label %128, !dbg !755

128:                                              ; preds = %123
  %129 = load ptr, ptr %2, align 8, !dbg !756
  call void @select_scan_parameters(ptr noundef %129), !dbg !758
  %130 = load ptr, ptr %2, align 8, !dbg !759
  call void @per_scan_setup(ptr noundef %130), !dbg !760
  br label %131, !dbg !761

131:                                              ; preds = %128, %123
  %132 = load ptr, ptr %2, align 8, !dbg !762
  %133 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %132, i32 0, i32 59, !dbg !763
  %134 = load ptr, ptr %133, align 8, !dbg !763
  %135 = getelementptr inbounds nuw %struct.jpeg_entropy_encoder, ptr %134, i32 0, i32 0, !dbg !764
  %136 = load ptr, ptr %135, align 8, !dbg !764
  %137 = load ptr, ptr %2, align 8, !dbg !765
  call void %136(ptr noundef %137, i32 noundef 0), !dbg !766
  %138 = load ptr, ptr %2, align 8, !dbg !767
  %139 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %138, i32 0, i32 54, !dbg !768
  %140 = load ptr, ptr %139, align 8, !dbg !768
  %141 = getelementptr inbounds nuw %struct.jpeg_c_coef_controller, ptr %140, i32 0, i32 0, !dbg !769
  %142 = load ptr, ptr %141, align 8, !dbg !769
  %143 = load ptr, ptr %2, align 8, !dbg !770
  call void %142(ptr noundef %143, i32 noundef 2), !dbg !771
  %144 = load ptr, ptr %3, align 8, !dbg !772
  %145 = getelementptr inbounds nuw %struct.my_comp_master, ptr %144, i32 0, i32 4, !dbg !774
  %146 = load i32, ptr %145, align 4, !dbg !774
  %147 = icmp eq i32 %146, 0, !dbg !775
  br i1 %147, label %148, label %155, !dbg !775

148:                                              ; preds = %131
  %149 = load ptr, ptr %2, align 8, !dbg !776
  %150 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %149, i32 0, i32 55, !dbg !777
  %151 = load ptr, ptr %150, align 8, !dbg !777
  %152 = getelementptr inbounds nuw %struct.jpeg_marker_writer, ptr %151, i32 0, i32 2, !dbg !778
  %153 = load ptr, ptr %152, align 8, !dbg !778
  %154 = load ptr, ptr %2, align 8, !dbg !779
  call void %153(ptr noundef %154), !dbg !780
  br label %155, !dbg !780

155:                                              ; preds = %148, %131
  %156 = load ptr, ptr %2, align 8, !dbg !781
  %157 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %156, i32 0, i32 55, !dbg !782
  %158 = load ptr, ptr %157, align 8, !dbg !782
  %159 = getelementptr inbounds nuw %struct.jpeg_marker_writer, ptr %158, i32 0, i32 3, !dbg !783
  %160 = load ptr, ptr %159, align 8, !dbg !783
  %161 = load ptr, ptr %2, align 8, !dbg !784
  call void %160(ptr noundef %161), !dbg !785
  %162 = load ptr, ptr %3, align 8, !dbg !786
  %163 = getelementptr inbounds nuw %struct.my_comp_master, ptr %162, i32 0, i32 0, !dbg !787
  %164 = getelementptr inbounds nuw %struct.jpeg_comp_master, ptr %163, i32 0, i32 3, !dbg !788
  store i32 0, ptr %164, align 8, !dbg !789
  br label %176, !dbg !790

165:                                              ; preds = %1
  %166 = load ptr, ptr %2, align 8, !dbg !791
  %167 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %166, i32 0, i32 0, !dbg !791
  %168 = load ptr, ptr %167, align 8, !dbg !791
  %169 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %168, i32 0, i32 5, !dbg !791
  store i32 47, ptr %169, align 8, !dbg !791
  %170 = load ptr, ptr %2, align 8, !dbg !791
  %171 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %170, i32 0, i32 0, !dbg !791
  %172 = load ptr, ptr %171, align 8, !dbg !791
  %173 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %172, i32 0, i32 0, !dbg !791
  %174 = load ptr, ptr %173, align 8, !dbg !791
  %175 = load ptr, ptr %2, align 8, !dbg !791
  call void %174(ptr noundef %175), !dbg !791
  br label %176, !dbg !792

176:                                              ; preds = %165, %155, %100, %82
  %177 = load ptr, ptr %3, align 8, !dbg !793
  %178 = getelementptr inbounds nuw %struct.my_comp_master, ptr %177, i32 0, i32 2, !dbg !794
  %179 = load i32, ptr %178, align 4, !dbg !794
  %180 = load ptr, ptr %3, align 8, !dbg !795
  %181 = getelementptr inbounds nuw %struct.my_comp_master, ptr %180, i32 0, i32 3, !dbg !796
  %182 = load i32, ptr %181, align 8, !dbg !796
  %183 = sub nsw i32 %182, 1, !dbg !797
  %184 = icmp eq i32 %179, %183, !dbg !798
  %185 = zext i1 %184 to i32, !dbg !798
  %186 = load ptr, ptr %3, align 8, !dbg !799
  %187 = getelementptr inbounds nuw %struct.my_comp_master, ptr %186, i32 0, i32 0, !dbg !800
  %188 = getelementptr inbounds nuw %struct.jpeg_comp_master, ptr %187, i32 0, i32 4, !dbg !801
  store i32 %185, ptr %188, align 4, !dbg !802
  %189 = load ptr, ptr %2, align 8, !dbg !803
  %190 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %189, i32 0, i32 2, !dbg !805
  %191 = load ptr, ptr %190, align 8, !dbg !805
  %192 = icmp ne ptr %191, null, !dbg !806
  br i1 %192, label %193, label %208, !dbg !806

193:                                              ; preds = %176
  %194 = load ptr, ptr %3, align 8, !dbg !807
  %195 = getelementptr inbounds nuw %struct.my_comp_master, ptr %194, i32 0, i32 2, !dbg !809
  %196 = load i32, ptr %195, align 4, !dbg !809
  %197 = load ptr, ptr %2, align 8, !dbg !810
  %198 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %197, i32 0, i32 2, !dbg !811
  %199 = load ptr, ptr %198, align 8, !dbg !811
  %200 = getelementptr inbounds nuw %struct.jpeg_progress_mgr, ptr %199, i32 0, i32 3, !dbg !812
  store i32 %196, ptr %200, align 8, !dbg !813
  %201 = load ptr, ptr %3, align 8, !dbg !814
  %202 = getelementptr inbounds nuw %struct.my_comp_master, ptr %201, i32 0, i32 3, !dbg !815
  %203 = load i32, ptr %202, align 8, !dbg !815
  %204 = load ptr, ptr %2, align 8, !dbg !816
  %205 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %204, i32 0, i32 2, !dbg !817
  %206 = load ptr, ptr %205, align 8, !dbg !817
  %207 = getelementptr inbounds nuw %struct.jpeg_progress_mgr, ptr %206, i32 0, i32 4, !dbg !818
  store i32 %203, ptr %207, align 4, !dbg !819
  br label %208, !dbg !820

208:                                              ; preds = %193, %176
  ret void, !dbg !821
}

; Function Attrs: noinline nounwind uwtable
define internal void @pass_startup(ptr noundef %0) #0 !dbg !822 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !823, !DIExpression(), !824)
  %3 = load ptr, ptr %2, align 8, !dbg !825
  %4 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %3, i32 0, i32 51, !dbg !826
  %5 = load ptr, ptr %4, align 8, !dbg !826
  %6 = getelementptr inbounds nuw %struct.jpeg_comp_master, ptr %5, i32 0, i32 3, !dbg !827
  store i32 0, ptr %6, align 8, !dbg !828
  %7 = load ptr, ptr %2, align 8, !dbg !829
  %8 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %7, i32 0, i32 55, !dbg !830
  %9 = load ptr, ptr %8, align 8, !dbg !830
  %10 = getelementptr inbounds nuw %struct.jpeg_marker_writer, ptr %9, i32 0, i32 2, !dbg !831
  %11 = load ptr, ptr %10, align 8, !dbg !831
  %12 = load ptr, ptr %2, align 8, !dbg !832
  call void %11(ptr noundef %12), !dbg !833
  %13 = load ptr, ptr %2, align 8, !dbg !834
  %14 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %13, i32 0, i32 55, !dbg !835
  %15 = load ptr, ptr %14, align 8, !dbg !835
  %16 = getelementptr inbounds nuw %struct.jpeg_marker_writer, ptr %15, i32 0, i32 3, !dbg !836
  %17 = load ptr, ptr %16, align 8, !dbg !836
  %18 = load ptr, ptr %2, align 8, !dbg !837
  call void %17(ptr noundef %18), !dbg !838
  ret void, !dbg !839
}

; Function Attrs: noinline nounwind uwtable
define internal void @finish_pass_master(ptr noundef %0) #0 !dbg !840 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !841, !DIExpression(), !842)
    #dbg_declare(ptr %3, !843, !DIExpression(), !844)
  %4 = load ptr, ptr %2, align 8, !dbg !845
  %5 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %4, i32 0, i32 51, !dbg !846
  %6 = load ptr, ptr %5, align 8, !dbg !846
  store ptr %6, ptr %3, align 8, !dbg !844
  %7 = load ptr, ptr %2, align 8, !dbg !847
  %8 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %7, i32 0, i32 59, !dbg !848
  %9 = load ptr, ptr %8, align 8, !dbg !848
  %10 = getelementptr inbounds nuw %struct.jpeg_entropy_encoder, ptr %9, i32 0, i32 2, !dbg !849
  %11 = load ptr, ptr %10, align 8, !dbg !849
  %12 = load ptr, ptr %2, align 8, !dbg !850
  call void %11(ptr noundef %12), !dbg !851
  %13 = load ptr, ptr %3, align 8, !dbg !852
  %14 = getelementptr inbounds nuw %struct.my_comp_master, ptr %13, i32 0, i32 1, !dbg !853
  %15 = load i32, ptr %14, align 8, !dbg !853
  switch i32 %15, label %45 [
    i32 0, label %16
    i32 1, label %29
    i32 2, label %32
  ], !dbg !854

16:                                               ; preds = %1
  %17 = load ptr, ptr %3, align 8, !dbg !855
  %18 = getelementptr inbounds nuw %struct.my_comp_master, ptr %17, i32 0, i32 1, !dbg !857
  store i32 2, ptr %18, align 8, !dbg !858
  %19 = load ptr, ptr %2, align 8, !dbg !859
  %20 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %19, i32 0, i32 25, !dbg !861
  %21 = load i32, ptr %20, align 8, !dbg !861
  %22 = icmp ne i32 %21, 0, !dbg !859
  br i1 %22, label %28, label %23, !dbg !862

23:                                               ; preds = %16
  %24 = load ptr, ptr %3, align 8, !dbg !863
  %25 = getelementptr inbounds nuw %struct.my_comp_master, ptr %24, i32 0, i32 4, !dbg !864
  %26 = load i32, ptr %25, align 4, !dbg !865
  %27 = add nsw i32 %26, 1, !dbg !865
  store i32 %27, ptr %25, align 4, !dbg !865
  br label %28, !dbg !863

28:                                               ; preds = %23, %16
  br label %45, !dbg !866

29:                                               ; preds = %1
  %30 = load ptr, ptr %3, align 8, !dbg !867
  %31 = getelementptr inbounds nuw %struct.my_comp_master, ptr %30, i32 0, i32 1, !dbg !868
  store i32 2, ptr %31, align 8, !dbg !869
  br label %45, !dbg !870

32:                                               ; preds = %1
  %33 = load ptr, ptr %2, align 8, !dbg !871
  %34 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %33, i32 0, i32 25, !dbg !873
  %35 = load i32, ptr %34, align 8, !dbg !873
  %36 = icmp ne i32 %35, 0, !dbg !871
  br i1 %36, label %37, label %40, !dbg !871

37:                                               ; preds = %32
  %38 = load ptr, ptr %3, align 8, !dbg !874
  %39 = getelementptr inbounds nuw %struct.my_comp_master, ptr %38, i32 0, i32 1, !dbg !875
  store i32 1, ptr %39, align 8, !dbg !876
  br label %40, !dbg !874

40:                                               ; preds = %37, %32
  %41 = load ptr, ptr %3, align 8, !dbg !877
  %42 = getelementptr inbounds nuw %struct.my_comp_master, ptr %41, i32 0, i32 4, !dbg !878
  %43 = load i32, ptr %42, align 4, !dbg !879
  %44 = add nsw i32 %43, 1, !dbg !879
  store i32 %44, ptr %42, align 4, !dbg !879
  br label %45, !dbg !880

45:                                               ; preds = %1, %40, %29, %28
  %46 = load ptr, ptr %3, align 8, !dbg !881
  %47 = getelementptr inbounds nuw %struct.my_comp_master, ptr %46, i32 0, i32 2, !dbg !882
  %48 = load i32, ptr %47, align 4, !dbg !883
  %49 = add nsw i32 %48, 1, !dbg !883
  store i32 %49, ptr %47, align 4, !dbg !883
  ret void, !dbg !884
}

; Function Attrs: noinline nounwind uwtable
define internal void @initial_setup(ptr noundef %0) #0 !dbg !885 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !886, !DIExpression(), !887)
    #dbg_declare(ptr %3, !888, !DIExpression(), !889)
    #dbg_declare(ptr %4, !890, !DIExpression(), !891)
    #dbg_declare(ptr %5, !892, !DIExpression(), !893)
    #dbg_declare(ptr %6, !894, !DIExpression(), !895)
  %7 = load ptr, ptr %2, align 8, !dbg !896
  %8 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %7, i32 0, i32 7, !dbg !898
  %9 = load i32, ptr %8, align 4, !dbg !898
  %10 = icmp ule i32 %9, 0, !dbg !899
  br i1 %10, label %26, label %11, !dbg !900

11:                                               ; preds = %1
  %12 = load ptr, ptr %2, align 8, !dbg !901
  %13 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %12, i32 0, i32 6, !dbg !902
  %14 = load i32, ptr %13, align 8, !dbg !902
  %15 = icmp ule i32 %14, 0, !dbg !903
  br i1 %15, label %26, label %16, !dbg !904

16:                                               ; preds = %11
  %17 = load ptr, ptr %2, align 8, !dbg !905
  %18 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %17, i32 0, i32 12, !dbg !906
  %19 = load i32, ptr %18, align 4, !dbg !906
  %20 = icmp sle i32 %19, 0, !dbg !907
  br i1 %20, label %26, label %21, !dbg !908

21:                                               ; preds = %16
  %22 = load ptr, ptr %2, align 8, !dbg !909
  %23 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %22, i32 0, i32 8, !dbg !910
  %24 = load i32, ptr %23, align 8, !dbg !910
  %25 = icmp sle i32 %24, 0, !dbg !911
  br i1 %25, label %26, label %37, !dbg !908

26:                                               ; preds = %21, %16, %11, %1
  %27 = load ptr, ptr %2, align 8, !dbg !912
  %28 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %27, i32 0, i32 0, !dbg !912
  %29 = load ptr, ptr %28, align 8, !dbg !912
  %30 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %29, i32 0, i32 5, !dbg !912
  store i32 31, ptr %30, align 8, !dbg !912
  %31 = load ptr, ptr %2, align 8, !dbg !912
  %32 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %31, i32 0, i32 0, !dbg !912
  %33 = load ptr, ptr %32, align 8, !dbg !912
  %34 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %33, i32 0, i32 0, !dbg !912
  %35 = load ptr, ptr %34, align 8, !dbg !912
  %36 = load ptr, ptr %2, align 8, !dbg !912
  call void %35(ptr noundef %36), !dbg !912
  br label %37, !dbg !912

37:                                               ; preds = %26, %21
  %38 = load ptr, ptr %2, align 8, !dbg !913
  %39 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %38, i32 0, i32 7, !dbg !915
  %40 = load i32, ptr %39, align 4, !dbg !915
  %41 = zext i32 %40 to i64, !dbg !916
  %42 = icmp sgt i64 %41, 65500, !dbg !917
  br i1 %42, label %49, label %43, !dbg !918

43:                                               ; preds = %37
  %44 = load ptr, ptr %2, align 8, !dbg !919
  %45 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %44, i32 0, i32 6, !dbg !920
  %46 = load i32, ptr %45, align 8, !dbg !920
  %47 = zext i32 %46 to i64, !dbg !921
  %48 = icmp sgt i64 %47, 65500, !dbg !922
  br i1 %48, label %49, label %65, !dbg !918

49:                                               ; preds = %43, %37
  %50 = load ptr, ptr %2, align 8, !dbg !923
  %51 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %50, i32 0, i32 0, !dbg !923
  %52 = load ptr, ptr %51, align 8, !dbg !923
  %53 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %52, i32 0, i32 5, !dbg !923
  store i32 40, ptr %53, align 8, !dbg !923
  %54 = load ptr, ptr %2, align 8, !dbg !923
  %55 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %54, i32 0, i32 0, !dbg !923
  %56 = load ptr, ptr %55, align 8, !dbg !923
  %57 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %56, i32 0, i32 6, !dbg !923
  %58 = getelementptr inbounds [8 x i32], ptr %57, i64 0, i64 0, !dbg !923
  store i32 65500, ptr %58, align 4, !dbg !923
  %59 = load ptr, ptr %2, align 8, !dbg !923
  %60 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %59, i32 0, i32 0, !dbg !923
  %61 = load ptr, ptr %60, align 8, !dbg !923
  %62 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %61, i32 0, i32 0, !dbg !923
  %63 = load ptr, ptr %62, align 8, !dbg !923
  %64 = load ptr, ptr %2, align 8, !dbg !923
  call void %63(ptr noundef %64), !dbg !923
  br label %65, !dbg !923

65:                                               ; preds = %49, %43
  %66 = load ptr, ptr %2, align 8, !dbg !924
  %67 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %66, i32 0, i32 6, !dbg !925
  %68 = load i32, ptr %67, align 8, !dbg !925
  %69 = zext i32 %68 to i64, !dbg !926
  %70 = load ptr, ptr %2, align 8, !dbg !927
  %71 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %70, i32 0, i32 8, !dbg !928
  %72 = load i32, ptr %71, align 8, !dbg !928
  %73 = sext i32 %72 to i64, !dbg !929
  %74 = mul nsw i64 %69, %73, !dbg !930
  store i64 %74, ptr %5, align 8, !dbg !931
  %75 = load i64, ptr %5, align 8, !dbg !932
  %76 = trunc i64 %75 to i32, !dbg !933
  store i32 %76, ptr %6, align 4, !dbg !934
  %77 = load i32, ptr %6, align 4, !dbg !935
  %78 = zext i32 %77 to i64, !dbg !937
  %79 = load i64, ptr %5, align 8, !dbg !938
  %80 = icmp ne i64 %78, %79, !dbg !939
  br i1 %80, label %81, label %92, !dbg !939

81:                                               ; preds = %65
  %82 = load ptr, ptr %2, align 8, !dbg !940
  %83 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %82, i32 0, i32 0, !dbg !940
  %84 = load ptr, ptr %83, align 8, !dbg !940
  %85 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %84, i32 0, i32 5, !dbg !940
  store i32 69, ptr %85, align 8, !dbg !940
  %86 = load ptr, ptr %2, align 8, !dbg !940
  %87 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %86, i32 0, i32 0, !dbg !940
  %88 = load ptr, ptr %87, align 8, !dbg !940
  %89 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %88, i32 0, i32 0, !dbg !940
  %90 = load ptr, ptr %89, align 8, !dbg !940
  %91 = load ptr, ptr %2, align 8, !dbg !940
  call void %90(ptr noundef %91), !dbg !940
  br label %92, !dbg !940

92:                                               ; preds = %81, %65
  %93 = load ptr, ptr %2, align 8, !dbg !941
  %94 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %93, i32 0, i32 11, !dbg !943
  %95 = load i32, ptr %94, align 8, !dbg !943
  %96 = icmp ne i32 %95, 8, !dbg !944
  br i1 %96, label %97, label %116, !dbg !944

97:                                               ; preds = %92
  %98 = load ptr, ptr %2, align 8, !dbg !945
  %99 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %98, i32 0, i32 0, !dbg !945
  %100 = load ptr, ptr %99, align 8, !dbg !945
  %101 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %100, i32 0, i32 5, !dbg !945
  store i32 13, ptr %101, align 8, !dbg !945
  %102 = load ptr, ptr %2, align 8, !dbg !945
  %103 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %102, i32 0, i32 11, !dbg !945
  %104 = load i32, ptr %103, align 8, !dbg !945
  %105 = load ptr, ptr %2, align 8, !dbg !945
  %106 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %105, i32 0, i32 0, !dbg !945
  %107 = load ptr, ptr %106, align 8, !dbg !945
  %108 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %107, i32 0, i32 6, !dbg !945
  %109 = getelementptr inbounds [8 x i32], ptr %108, i64 0, i64 0, !dbg !945
  store i32 %104, ptr %109, align 4, !dbg !945
  %110 = load ptr, ptr %2, align 8, !dbg !945
  %111 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %110, i32 0, i32 0, !dbg !945
  %112 = load ptr, ptr %111, align 8, !dbg !945
  %113 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %112, i32 0, i32 0, !dbg !945
  %114 = load ptr, ptr %113, align 8, !dbg !945
  %115 = load ptr, ptr %2, align 8, !dbg !945
  call void %114(ptr noundef %115), !dbg !945
  br label %116, !dbg !945

116:                                              ; preds = %97, %92
  %117 = load ptr, ptr %2, align 8, !dbg !946
  %118 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %117, i32 0, i32 12, !dbg !948
  %119 = load i32, ptr %118, align 4, !dbg !948
  %120 = icmp sgt i32 %119, 10, !dbg !949
  br i1 %120, label %121, label %145, !dbg !949

121:                                              ; preds = %116
  %122 = load ptr, ptr %2, align 8, !dbg !950
  %123 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %122, i32 0, i32 0, !dbg !950
  %124 = load ptr, ptr %123, align 8, !dbg !950
  %125 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %124, i32 0, i32 5, !dbg !950
  store i32 24, ptr %125, align 8, !dbg !950
  %126 = load ptr, ptr %2, align 8, !dbg !950
  %127 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %126, i32 0, i32 12, !dbg !950
  %128 = load i32, ptr %127, align 4, !dbg !950
  %129 = load ptr, ptr %2, align 8, !dbg !950
  %130 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %129, i32 0, i32 0, !dbg !950
  %131 = load ptr, ptr %130, align 8, !dbg !950
  %132 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %131, i32 0, i32 6, !dbg !950
  %133 = getelementptr inbounds [8 x i32], ptr %132, i64 0, i64 0, !dbg !950
  store i32 %128, ptr %133, align 4, !dbg !950
  %134 = load ptr, ptr %2, align 8, !dbg !950
  %135 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %134, i32 0, i32 0, !dbg !950
  %136 = load ptr, ptr %135, align 8, !dbg !950
  %137 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %136, i32 0, i32 6, !dbg !950
  %138 = getelementptr inbounds [8 x i32], ptr %137, i64 0, i64 1, !dbg !950
  store i32 10, ptr %138, align 4, !dbg !950
  %139 = load ptr, ptr %2, align 8, !dbg !950
  %140 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %139, i32 0, i32 0, !dbg !950
  %141 = load ptr, ptr %140, align 8, !dbg !950
  %142 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %141, i32 0, i32 0, !dbg !950
  %143 = load ptr, ptr %142, align 8, !dbg !950
  %144 = load ptr, ptr %2, align 8, !dbg !950
  call void %143(ptr noundef %144), !dbg !950
  br label %145, !dbg !950

145:                                              ; preds = %121, %116
  %146 = load ptr, ptr %2, align 8, !dbg !951
  %147 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %146, i32 0, i32 38, !dbg !952
  store i32 1, ptr %147, align 8, !dbg !953
  %148 = load ptr, ptr %2, align 8, !dbg !954
  %149 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %148, i32 0, i32 39, !dbg !955
  store i32 1, ptr %149, align 4, !dbg !956
  store i32 0, ptr %3, align 4, !dbg !957
  %150 = load ptr, ptr %2, align 8, !dbg !959
  %151 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %150, i32 0, i32 14, !dbg !960
  %152 = load ptr, ptr %151, align 8, !dbg !960
  store ptr %152, ptr %4, align 8, !dbg !961
  br label %153, !dbg !962

153:                                              ; preds = %229, %145
  %154 = load i32, ptr %3, align 4, !dbg !963
  %155 = load ptr, ptr %2, align 8, !dbg !965
  %156 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %155, i32 0, i32 12, !dbg !966
  %157 = load i32, ptr %156, align 4, !dbg !966
  %158 = icmp slt i32 %154, %157, !dbg !967
  br i1 %158, label %159, label %234, !dbg !968

159:                                              ; preds = %153
  %160 = load ptr, ptr %4, align 8, !dbg !969
  %161 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %160, i32 0, i32 2, !dbg !972
  %162 = load i32, ptr %161, align 8, !dbg !972
  %163 = icmp sle i32 %162, 0, !dbg !973
  br i1 %163, label %179, label %164, !dbg !974

164:                                              ; preds = %159
  %165 = load ptr, ptr %4, align 8, !dbg !975
  %166 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %165, i32 0, i32 2, !dbg !976
  %167 = load i32, ptr %166, align 8, !dbg !976
  %168 = icmp sgt i32 %167, 4, !dbg !977
  br i1 %168, label %179, label %169, !dbg !978

169:                                              ; preds = %164
  %170 = load ptr, ptr %4, align 8, !dbg !979
  %171 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %170, i32 0, i32 3, !dbg !980
  %172 = load i32, ptr %171, align 4, !dbg !980
  %173 = icmp sle i32 %172, 0, !dbg !981
  br i1 %173, label %179, label %174, !dbg !982

174:                                              ; preds = %169
  %175 = load ptr, ptr %4, align 8, !dbg !983
  %176 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %175, i32 0, i32 3, !dbg !984
  %177 = load i32, ptr %176, align 4, !dbg !984
  %178 = icmp sgt i32 %177, 4, !dbg !985
  br i1 %178, label %179, label %190, !dbg !982

179:                                              ; preds = %174, %169, %164, %159
  %180 = load ptr, ptr %2, align 8, !dbg !986
  %181 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %180, i32 0, i32 0, !dbg !986
  %182 = load ptr, ptr %181, align 8, !dbg !986
  %183 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %182, i32 0, i32 5, !dbg !986
  store i32 16, ptr %183, align 8, !dbg !986
  %184 = load ptr, ptr %2, align 8, !dbg !986
  %185 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %184, i32 0, i32 0, !dbg !986
  %186 = load ptr, ptr %185, align 8, !dbg !986
  %187 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %186, i32 0, i32 0, !dbg !986
  %188 = load ptr, ptr %187, align 8, !dbg !986
  %189 = load ptr, ptr %2, align 8, !dbg !986
  call void %188(ptr noundef %189), !dbg !986
  br label %190, !dbg !986

190:                                              ; preds = %179, %174
  %191 = load ptr, ptr %2, align 8, !dbg !987
  %192 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %191, i32 0, i32 38, !dbg !987
  %193 = load i32, ptr %192, align 8, !dbg !987
  %194 = load ptr, ptr %4, align 8, !dbg !987
  %195 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %194, i32 0, i32 2, !dbg !987
  %196 = load i32, ptr %195, align 8, !dbg !987
  %197 = icmp sgt i32 %193, %196, !dbg !987
  br i1 %197, label %198, label %202, !dbg !987

198:                                              ; preds = %190
  %199 = load ptr, ptr %2, align 8, !dbg !987
  %200 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %199, i32 0, i32 38, !dbg !987
  %201 = load i32, ptr %200, align 8, !dbg !987
  br label %206, !dbg !987

202:                                              ; preds = %190
  %203 = load ptr, ptr %4, align 8, !dbg !987
  %204 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %203, i32 0, i32 2, !dbg !987
  %205 = load i32, ptr %204, align 8, !dbg !987
  br label %206, !dbg !987

206:                                              ; preds = %202, %198
  %207 = phi i32 [ %201, %198 ], [ %205, %202 ], !dbg !987
  %208 = load ptr, ptr %2, align 8, !dbg !988
  %209 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %208, i32 0, i32 38, !dbg !989
  store i32 %207, ptr %209, align 8, !dbg !990
  %210 = load ptr, ptr %2, align 8, !dbg !991
  %211 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %210, i32 0, i32 39, !dbg !991
  %212 = load i32, ptr %211, align 4, !dbg !991
  %213 = load ptr, ptr %4, align 8, !dbg !991
  %214 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %213, i32 0, i32 3, !dbg !991
  %215 = load i32, ptr %214, align 4, !dbg !991
  %216 = icmp sgt i32 %212, %215, !dbg !991
  br i1 %216, label %217, label %221, !dbg !991

217:                                              ; preds = %206
  %218 = load ptr, ptr %2, align 8, !dbg !991
  %219 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %218, i32 0, i32 39, !dbg !991
  %220 = load i32, ptr %219, align 4, !dbg !991
  br label %225, !dbg !991

221:                                              ; preds = %206
  %222 = load ptr, ptr %4, align 8, !dbg !991
  %223 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %222, i32 0, i32 3, !dbg !991
  %224 = load i32, ptr %223, align 4, !dbg !991
  br label %225, !dbg !991

225:                                              ; preds = %221, %217
  %226 = phi i32 [ %220, %217 ], [ %224, %221 ], !dbg !991
  %227 = load ptr, ptr %2, align 8, !dbg !992
  %228 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %227, i32 0, i32 39, !dbg !993
  store i32 %226, ptr %228, align 4, !dbg !994
  br label %229, !dbg !995

229:                                              ; preds = %225
  %230 = load i32, ptr %3, align 4, !dbg !996
  %231 = add nsw i32 %230, 1, !dbg !996
  store i32 %231, ptr %3, align 4, !dbg !996
  %232 = load ptr, ptr %4, align 8, !dbg !997
  %233 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %232, i32 1, !dbg !997
  store ptr %233, ptr %4, align 8, !dbg !997
  br label %153, !dbg !998, !llvm.loop !999

234:                                              ; preds = %153
  store i32 0, ptr %3, align 4, !dbg !1002
  %235 = load ptr, ptr %2, align 8, !dbg !1004
  %236 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %235, i32 0, i32 14, !dbg !1005
  %237 = load ptr, ptr %236, align 8, !dbg !1005
  store ptr %237, ptr %4, align 8, !dbg !1006
  br label %238, !dbg !1007

238:                                              ; preds = %322, %234
  %239 = load i32, ptr %3, align 4, !dbg !1008
  %240 = load ptr, ptr %2, align 8, !dbg !1010
  %241 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %240, i32 0, i32 12, !dbg !1011
  %242 = load i32, ptr %241, align 4, !dbg !1011
  %243 = icmp slt i32 %239, %242, !dbg !1012
  br i1 %243, label %244, label %327, !dbg !1013

244:                                              ; preds = %238
  %245 = load i32, ptr %3, align 4, !dbg !1014
  %246 = load ptr, ptr %4, align 8, !dbg !1016
  %247 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %246, i32 0, i32 1, !dbg !1017
  store i32 %245, ptr %247, align 4, !dbg !1018
  %248 = load ptr, ptr %4, align 8, !dbg !1019
  %249 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %248, i32 0, i32 9, !dbg !1020
  store i32 8, ptr %249, align 4, !dbg !1021
  %250 = load ptr, ptr %2, align 8, !dbg !1022
  %251 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %250, i32 0, i32 6, !dbg !1023
  %252 = load i32, ptr %251, align 8, !dbg !1023
  %253 = zext i32 %252 to i64, !dbg !1024
  %254 = load ptr, ptr %4, align 8, !dbg !1025
  %255 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %254, i32 0, i32 2, !dbg !1026
  %256 = load i32, ptr %255, align 8, !dbg !1026
  %257 = sext i32 %256 to i64, !dbg !1027
  %258 = mul nsw i64 %253, %257, !dbg !1028
  %259 = load ptr, ptr %2, align 8, !dbg !1029
  %260 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %259, i32 0, i32 38, !dbg !1030
  %261 = load i32, ptr %260, align 8, !dbg !1030
  %262 = mul nsw i32 %261, 8, !dbg !1031
  %263 = sext i32 %262 to i64, !dbg !1032
  %264 = call i64 @jdiv_round_up(i64 noundef %258, i64 noundef %263), !dbg !1033
  %265 = trunc i64 %264 to i32, !dbg !1034
  %266 = load ptr, ptr %4, align 8, !dbg !1035
  %267 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %266, i32 0, i32 7, !dbg !1036
  store i32 %265, ptr %267, align 4, !dbg !1037
  %268 = load ptr, ptr %2, align 8, !dbg !1038
  %269 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %268, i32 0, i32 7, !dbg !1039
  %270 = load i32, ptr %269, align 4, !dbg !1039
  %271 = zext i32 %270 to i64, !dbg !1040
  %272 = load ptr, ptr %4, align 8, !dbg !1041
  %273 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %272, i32 0, i32 3, !dbg !1042
  %274 = load i32, ptr %273, align 4, !dbg !1042
  %275 = sext i32 %274 to i64, !dbg !1043
  %276 = mul nsw i64 %271, %275, !dbg !1044
  %277 = load ptr, ptr %2, align 8, !dbg !1045
  %278 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %277, i32 0, i32 39, !dbg !1046
  %279 = load i32, ptr %278, align 4, !dbg !1046
  %280 = mul nsw i32 %279, 8, !dbg !1047
  %281 = sext i32 %280 to i64, !dbg !1048
  %282 = call i64 @jdiv_round_up(i64 noundef %276, i64 noundef %281), !dbg !1049
  %283 = trunc i64 %282 to i32, !dbg !1050
  %284 = load ptr, ptr %4, align 8, !dbg !1051
  %285 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %284, i32 0, i32 8, !dbg !1052
  store i32 %283, ptr %285, align 8, !dbg !1053
  %286 = load ptr, ptr %2, align 8, !dbg !1054
  %287 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %286, i32 0, i32 6, !dbg !1055
  %288 = load i32, ptr %287, align 8, !dbg !1055
  %289 = zext i32 %288 to i64, !dbg !1056
  %290 = load ptr, ptr %4, align 8, !dbg !1057
  %291 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %290, i32 0, i32 2, !dbg !1058
  %292 = load i32, ptr %291, align 8, !dbg !1058
  %293 = sext i32 %292 to i64, !dbg !1059
  %294 = mul nsw i64 %289, %293, !dbg !1060
  %295 = load ptr, ptr %2, align 8, !dbg !1061
  %296 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %295, i32 0, i32 38, !dbg !1062
  %297 = load i32, ptr %296, align 8, !dbg !1062
  %298 = sext i32 %297 to i64, !dbg !1063
  %299 = call i64 @jdiv_round_up(i64 noundef %294, i64 noundef %298), !dbg !1064
  %300 = trunc i64 %299 to i32, !dbg !1065
  %301 = load ptr, ptr %4, align 8, !dbg !1066
  %302 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %301, i32 0, i32 10, !dbg !1067
  store i32 %300, ptr %302, align 8, !dbg !1068
  %303 = load ptr, ptr %2, align 8, !dbg !1069
  %304 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %303, i32 0, i32 7, !dbg !1070
  %305 = load i32, ptr %304, align 4, !dbg !1070
  %306 = zext i32 %305 to i64, !dbg !1071
  %307 = load ptr, ptr %4, align 8, !dbg !1072
  %308 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %307, i32 0, i32 3, !dbg !1073
  %309 = load i32, ptr %308, align 4, !dbg !1073
  %310 = sext i32 %309 to i64, !dbg !1074
  %311 = mul nsw i64 %306, %310, !dbg !1075
  %312 = load ptr, ptr %2, align 8, !dbg !1076
  %313 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %312, i32 0, i32 39, !dbg !1077
  %314 = load i32, ptr %313, align 4, !dbg !1077
  %315 = sext i32 %314 to i64, !dbg !1078
  %316 = call i64 @jdiv_round_up(i64 noundef %311, i64 noundef %315), !dbg !1079
  %317 = trunc i64 %316 to i32, !dbg !1080
  %318 = load ptr, ptr %4, align 8, !dbg !1081
  %319 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %318, i32 0, i32 11, !dbg !1082
  store i32 %317, ptr %319, align 4, !dbg !1083
  %320 = load ptr, ptr %4, align 8, !dbg !1084
  %321 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %320, i32 0, i32 12, !dbg !1085
  store i32 1, ptr %321, align 8, !dbg !1086
  br label %322, !dbg !1087

322:                                              ; preds = %244
  %323 = load i32, ptr %3, align 4, !dbg !1088
  %324 = add nsw i32 %323, 1, !dbg !1088
  store i32 %324, ptr %3, align 4, !dbg !1088
  %325 = load ptr, ptr %4, align 8, !dbg !1089
  %326 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %325, i32 1, !dbg !1089
  store ptr %326, ptr %4, align 8, !dbg !1089
  br label %238, !dbg !1090, !llvm.loop !1091

327:                                              ; preds = %238
  %328 = load ptr, ptr %2, align 8, !dbg !1093
  %329 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %328, i32 0, i32 7, !dbg !1094
  %330 = load i32, ptr %329, align 4, !dbg !1094
  %331 = zext i32 %330 to i64, !dbg !1095
  %332 = load ptr, ptr %2, align 8, !dbg !1096
  %333 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %332, i32 0, i32 39, !dbg !1097
  %334 = load i32, ptr %333, align 4, !dbg !1097
  %335 = mul nsw i32 %334, 8, !dbg !1098
  %336 = sext i32 %335 to i64, !dbg !1099
  %337 = call i64 @jdiv_round_up(i64 noundef %331, i64 noundef %336), !dbg !1100
  %338 = trunc i64 %337 to i32, !dbg !1101
  %339 = load ptr, ptr %2, align 8, !dbg !1102
  %340 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %339, i32 0, i32 40, !dbg !1103
  store i32 %338, ptr %340, align 8, !dbg !1104
  ret void, !dbg !1105
}

; Function Attrs: noinline nounwind uwtable
define internal void @validate_script(ptr noundef %0) #0 !dbg !1106 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [10 x i32], align 16
  %14 = alloca ptr, align 8
  %15 = alloca [10 x [64 x i32]], align 16
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !1107, !DIExpression(), !1108)
    #dbg_declare(ptr %3, !1109, !DIExpression(), !1110)
    #dbg_declare(ptr %4, !1111, !DIExpression(), !1112)
    #dbg_declare(ptr %5, !1113, !DIExpression(), !1114)
    #dbg_declare(ptr %6, !1115, !DIExpression(), !1116)
    #dbg_declare(ptr %7, !1117, !DIExpression(), !1118)
    #dbg_declare(ptr %8, !1119, !DIExpression(), !1120)
    #dbg_declare(ptr %9, !1121, !DIExpression(), !1122)
    #dbg_declare(ptr %10, !1123, !DIExpression(), !1124)
    #dbg_declare(ptr %11, !1125, !DIExpression(), !1126)
    #dbg_declare(ptr %12, !1127, !DIExpression(), !1128)
    #dbg_declare(ptr %13, !1129, !DIExpression(), !1131)
    #dbg_declare(ptr %14, !1132, !DIExpression(), !1134)
    #dbg_declare(ptr %15, !1135, !DIExpression(), !1138)
  %16 = load ptr, ptr %2, align 8, !dbg !1139
  %17 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %16, i32 0, i32 21, !dbg !1141
  %18 = load i32, ptr %17, align 8, !dbg !1141
  %19 = icmp sle i32 %18, 0, !dbg !1142
  br i1 %19, label %20, label %36, !dbg !1142

20:                                               ; preds = %1
  %21 = load ptr, ptr %2, align 8, !dbg !1143
  %22 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %21, i32 0, i32 0, !dbg !1143
  %23 = load ptr, ptr %22, align 8, !dbg !1143
  %24 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %23, i32 0, i32 5, !dbg !1143
  store i32 17, ptr %24, align 8, !dbg !1143
  %25 = load ptr, ptr %2, align 8, !dbg !1143
  %26 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %25, i32 0, i32 0, !dbg !1143
  %27 = load ptr, ptr %26, align 8, !dbg !1143
  %28 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %27, i32 0, i32 6, !dbg !1143
  %29 = getelementptr inbounds [8 x i32], ptr %28, i64 0, i64 0, !dbg !1143
  store i32 0, ptr %29, align 4, !dbg !1143
  %30 = load ptr, ptr %2, align 8, !dbg !1143
  %31 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %30, i32 0, i32 0, !dbg !1143
  %32 = load ptr, ptr %31, align 8, !dbg !1143
  %33 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %32, i32 0, i32 0, !dbg !1143
  %34 = load ptr, ptr %33, align 8, !dbg !1143
  %35 = load ptr, ptr %2, align 8, !dbg !1143
  call void %34(ptr noundef %35), !dbg !1143
  br label %36, !dbg !1143

36:                                               ; preds = %20, %1
  %37 = load ptr, ptr %2, align 8, !dbg !1144
  %38 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %37, i32 0, i32 22, !dbg !1145
  %39 = load ptr, ptr %38, align 8, !dbg !1145
  store ptr %39, ptr %3, align 8, !dbg !1146
  %40 = load ptr, ptr %3, align 8, !dbg !1147
  %41 = getelementptr inbounds nuw %struct.jpeg_scan_info, ptr %40, i32 0, i32 2, !dbg !1149
  %42 = load i32, ptr %41, align 4, !dbg !1149
  %43 = icmp ne i32 %42, 0, !dbg !1150
  br i1 %43, label %49, label %44, !dbg !1151

44:                                               ; preds = %36
  %45 = load ptr, ptr %3, align 8, !dbg !1152
  %46 = getelementptr inbounds nuw %struct.jpeg_scan_info, ptr %45, i32 0, i32 3, !dbg !1153
  %47 = load i32, ptr %46, align 4, !dbg !1153
  %48 = icmp ne i32 %47, 63, !dbg !1154
  br i1 %48, label %49, label %75, !dbg !1151

49:                                               ; preds = %44, %36
  %50 = load ptr, ptr %2, align 8, !dbg !1155
  %51 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %50, i32 0, i32 37, !dbg !1157
  store i32 1, ptr %51, align 4, !dbg !1158
  %52 = getelementptr inbounds [10 x [64 x i32]], ptr %15, i64 0, i64 0, !dbg !1159
  %53 = getelementptr inbounds [64 x i32], ptr %52, i64 0, i64 0, !dbg !1159
  store ptr %53, ptr %14, align 8, !dbg !1160
  store i32 0, ptr %6, align 4, !dbg !1161
  br label %54, !dbg !1163

54:                                               ; preds = %71, %49
  %55 = load i32, ptr %6, align 4, !dbg !1164
  %56 = load ptr, ptr %2, align 8, !dbg !1166
  %57 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %56, i32 0, i32 12, !dbg !1167
  %58 = load i32, ptr %57, align 4, !dbg !1167
  %59 = icmp slt i32 %55, %58, !dbg !1168
  br i1 %59, label %60, label %74, !dbg !1169

60:                                               ; preds = %54
  store i32 0, ptr %7, align 4, !dbg !1170
  br label %61, !dbg !1172

61:                                               ; preds = %67, %60
  %62 = load i32, ptr %7, align 4, !dbg !1173
  %63 = icmp slt i32 %62, 64, !dbg !1175
  br i1 %63, label %64, label %70, !dbg !1176

64:                                               ; preds = %61
  %65 = load ptr, ptr %14, align 8, !dbg !1177
  %66 = getelementptr inbounds nuw i32, ptr %65, i32 1, !dbg !1177
  store ptr %66, ptr %14, align 8, !dbg !1177
  store i32 -1, ptr %65, align 4, !dbg !1178
  br label %67, !dbg !1179

67:                                               ; preds = %64
  %68 = load i32, ptr %7, align 4, !dbg !1180
  %69 = add nsw i32 %68, 1, !dbg !1180
  store i32 %69, ptr %7, align 4, !dbg !1180
  br label %61, !dbg !1181, !llvm.loop !1182

70:                                               ; preds = %61
  br label %71, !dbg !1183

71:                                               ; preds = %70
  %72 = load i32, ptr %6, align 4, !dbg !1184
  %73 = add nsw i32 %72, 1, !dbg !1184
  store i32 %73, ptr %6, align 4, !dbg !1184
  br label %54, !dbg !1185, !llvm.loop !1186

74:                                               ; preds = %54
  br label %92, !dbg !1188

75:                                               ; preds = %44
  %76 = load ptr, ptr %2, align 8, !dbg !1189
  %77 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %76, i32 0, i32 37, !dbg !1191
  store i32 0, ptr %77, align 4, !dbg !1192
  store i32 0, ptr %6, align 4, !dbg !1193
  br label %78, !dbg !1195

78:                                               ; preds = %88, %75
  %79 = load i32, ptr %6, align 4, !dbg !1196
  %80 = load ptr, ptr %2, align 8, !dbg !1198
  %81 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %80, i32 0, i32 12, !dbg !1199
  %82 = load i32, ptr %81, align 4, !dbg !1199
  %83 = icmp slt i32 %79, %82, !dbg !1200
  br i1 %83, label %84, label %91, !dbg !1201

84:                                               ; preds = %78
  %85 = load i32, ptr %6, align 4, !dbg !1202
  %86 = sext i32 %85 to i64, !dbg !1203
  %87 = getelementptr inbounds [10 x i32], ptr %13, i64 0, i64 %86, !dbg !1203
  store i32 0, ptr %87, align 4, !dbg !1204
  br label %88, !dbg !1203

88:                                               ; preds = %84
  %89 = load i32, ptr %6, align 4, !dbg !1205
  %90 = add nsw i32 %89, 1, !dbg !1205
  store i32 %90, ptr %6, align 4, !dbg !1205
  br label %78, !dbg !1206, !llvm.loop !1207

91:                                               ; preds = %78
  br label %92

92:                                               ; preds = %91, %74
  store i32 1, ptr %4, align 4, !dbg !1209
  br label %93, !dbg !1211

93:                                               ; preds = %495, %92
  %94 = load i32, ptr %4, align 4, !dbg !1212
  %95 = load ptr, ptr %2, align 8, !dbg !1214
  %96 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %95, i32 0, i32 21, !dbg !1215
  %97 = load i32, ptr %96, align 8, !dbg !1215
  %98 = icmp sle i32 %94, %97, !dbg !1216
  br i1 %98, label %99, label %500, !dbg !1217

99:                                               ; preds = %93
  %100 = load ptr, ptr %3, align 8, !dbg !1218
  %101 = getelementptr inbounds nuw %struct.jpeg_scan_info, ptr %100, i32 0, i32 0, !dbg !1220
  %102 = load i32, ptr %101, align 4, !dbg !1220
  store i32 %102, ptr %5, align 4, !dbg !1221
  %103 = load i32, ptr %5, align 4, !dbg !1222
  %104 = icmp sle i32 %103, 0, !dbg !1224
  br i1 %104, label %108, label %105, !dbg !1225

105:                                              ; preds = %99
  %106 = load i32, ptr %5, align 4, !dbg !1226
  %107 = icmp sgt i32 %106, 4, !dbg !1227
  br i1 %107, label %108, label %130, !dbg !1225

108:                                              ; preds = %105, %99
  %109 = load ptr, ptr %2, align 8, !dbg !1228
  %110 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %109, i32 0, i32 0, !dbg !1228
  %111 = load ptr, ptr %110, align 8, !dbg !1228
  %112 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %111, i32 0, i32 5, !dbg !1228
  store i32 24, ptr %112, align 8, !dbg !1228
  %113 = load i32, ptr %5, align 4, !dbg !1228
  %114 = load ptr, ptr %2, align 8, !dbg !1228
  %115 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %114, i32 0, i32 0, !dbg !1228
  %116 = load ptr, ptr %115, align 8, !dbg !1228
  %117 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %116, i32 0, i32 6, !dbg !1228
  %118 = getelementptr inbounds [8 x i32], ptr %117, i64 0, i64 0, !dbg !1228
  store i32 %113, ptr %118, align 4, !dbg !1228
  %119 = load ptr, ptr %2, align 8, !dbg !1228
  %120 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %119, i32 0, i32 0, !dbg !1228
  %121 = load ptr, ptr %120, align 8, !dbg !1228
  %122 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %121, i32 0, i32 6, !dbg !1228
  %123 = getelementptr inbounds [8 x i32], ptr %122, i64 0, i64 1, !dbg !1228
  store i32 4, ptr %123, align 4, !dbg !1228
  %124 = load ptr, ptr %2, align 8, !dbg !1228
  %125 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %124, i32 0, i32 0, !dbg !1228
  %126 = load ptr, ptr %125, align 8, !dbg !1228
  %127 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %126, i32 0, i32 0, !dbg !1228
  %128 = load ptr, ptr %127, align 8, !dbg !1228
  %129 = load ptr, ptr %2, align 8, !dbg !1228
  call void %128(ptr noundef %129), !dbg !1228
  br label %130, !dbg !1228

130:                                              ; preds = %108, %105
  store i32 0, ptr %6, align 4, !dbg !1229
  br label %131, !dbg !1231

131:                                              ; preds = %198, %130
  %132 = load i32, ptr %6, align 4, !dbg !1232
  %133 = load i32, ptr %5, align 4, !dbg !1234
  %134 = icmp slt i32 %132, %133, !dbg !1235
  br i1 %134, label %135, label %201, !dbg !1236

135:                                              ; preds = %131
  %136 = load ptr, ptr %3, align 8, !dbg !1237
  %137 = getelementptr inbounds nuw %struct.jpeg_scan_info, ptr %136, i32 0, i32 1, !dbg !1239
  %138 = load i32, ptr %6, align 4, !dbg !1240
  %139 = sext i32 %138 to i64, !dbg !1237
  %140 = getelementptr inbounds [4 x i32], ptr %137, i64 0, i64 %139, !dbg !1237
  %141 = load i32, ptr %140, align 4, !dbg !1237
  store i32 %141, ptr %8, align 4, !dbg !1241
  %142 = load i32, ptr %8, align 4, !dbg !1242
  %143 = icmp slt i32 %142, 0, !dbg !1244
  br i1 %143, label %150, label %144, !dbg !1245

144:                                              ; preds = %135
  %145 = load i32, ptr %8, align 4, !dbg !1246
  %146 = load ptr, ptr %2, align 8, !dbg !1247
  %147 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %146, i32 0, i32 12, !dbg !1248
  %148 = load i32, ptr %147, align 4, !dbg !1248
  %149 = icmp sge i32 %145, %148, !dbg !1249
  br i1 %149, label %150, label %167, !dbg !1245

150:                                              ; preds = %144, %135
  %151 = load ptr, ptr %2, align 8, !dbg !1250
  %152 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %151, i32 0, i32 0, !dbg !1250
  %153 = load ptr, ptr %152, align 8, !dbg !1250
  %154 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %153, i32 0, i32 5, !dbg !1250
  store i32 17, ptr %154, align 8, !dbg !1250
  %155 = load i32, ptr %4, align 4, !dbg !1250
  %156 = load ptr, ptr %2, align 8, !dbg !1250
  %157 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %156, i32 0, i32 0, !dbg !1250
  %158 = load ptr, ptr %157, align 8, !dbg !1250
  %159 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %158, i32 0, i32 6, !dbg !1250
  %160 = getelementptr inbounds [8 x i32], ptr %159, i64 0, i64 0, !dbg !1250
  store i32 %155, ptr %160, align 4, !dbg !1250
  %161 = load ptr, ptr %2, align 8, !dbg !1250
  %162 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %161, i32 0, i32 0, !dbg !1250
  %163 = load ptr, ptr %162, align 8, !dbg !1250
  %164 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %163, i32 0, i32 0, !dbg !1250
  %165 = load ptr, ptr %164, align 8, !dbg !1250
  %166 = load ptr, ptr %2, align 8, !dbg !1250
  call void %165(ptr noundef %166), !dbg !1250
  br label %167, !dbg !1250

167:                                              ; preds = %150, %144
  %168 = load i32, ptr %6, align 4, !dbg !1251
  %169 = icmp sgt i32 %168, 0, !dbg !1253
  br i1 %169, label %170, label %197, !dbg !1254

170:                                              ; preds = %167
  %171 = load i32, ptr %8, align 4, !dbg !1255
  %172 = load ptr, ptr %3, align 8, !dbg !1256
  %173 = getelementptr inbounds nuw %struct.jpeg_scan_info, ptr %172, i32 0, i32 1, !dbg !1257
  %174 = load i32, ptr %6, align 4, !dbg !1258
  %175 = sub nsw i32 %174, 1, !dbg !1259
  %176 = sext i32 %175 to i64, !dbg !1256
  %177 = getelementptr inbounds [4 x i32], ptr %173, i64 0, i64 %176, !dbg !1256
  %178 = load i32, ptr %177, align 4, !dbg !1256
  %179 = icmp sle i32 %171, %178, !dbg !1260
  br i1 %179, label %180, label %197, !dbg !1254

180:                                              ; preds = %170
  %181 = load ptr, ptr %2, align 8, !dbg !1261
  %182 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %181, i32 0, i32 0, !dbg !1261
  %183 = load ptr, ptr %182, align 8, !dbg !1261
  %184 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %183, i32 0, i32 5, !dbg !1261
  store i32 17, ptr %184, align 8, !dbg !1261
  %185 = load i32, ptr %4, align 4, !dbg !1261
  %186 = load ptr, ptr %2, align 8, !dbg !1261
  %187 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %186, i32 0, i32 0, !dbg !1261
  %188 = load ptr, ptr %187, align 8, !dbg !1261
  %189 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %188, i32 0, i32 6, !dbg !1261
  %190 = getelementptr inbounds [8 x i32], ptr %189, i64 0, i64 0, !dbg !1261
  store i32 %185, ptr %190, align 4, !dbg !1261
  %191 = load ptr, ptr %2, align 8, !dbg !1261
  %192 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %191, i32 0, i32 0, !dbg !1261
  %193 = load ptr, ptr %192, align 8, !dbg !1261
  %194 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %193, i32 0, i32 0, !dbg !1261
  %195 = load ptr, ptr %194, align 8, !dbg !1261
  %196 = load ptr, ptr %2, align 8, !dbg !1261
  call void %195(ptr noundef %196), !dbg !1261
  br label %197, !dbg !1261

197:                                              ; preds = %180, %170, %167
  br label %198, !dbg !1262

198:                                              ; preds = %197
  %199 = load i32, ptr %6, align 4, !dbg !1263
  %200 = add nsw i32 %199, 1, !dbg !1263
  store i32 %200, ptr %6, align 4, !dbg !1263
  br label %131, !dbg !1264, !llvm.loop !1265

201:                                              ; preds = %131
  %202 = load ptr, ptr %3, align 8, !dbg !1267
  %203 = getelementptr inbounds nuw %struct.jpeg_scan_info, ptr %202, i32 0, i32 2, !dbg !1268
  %204 = load i32, ptr %203, align 4, !dbg !1268
  store i32 %204, ptr %9, align 4, !dbg !1269
  %205 = load ptr, ptr %3, align 8, !dbg !1270
  %206 = getelementptr inbounds nuw %struct.jpeg_scan_info, ptr %205, i32 0, i32 3, !dbg !1271
  %207 = load i32, ptr %206, align 4, !dbg !1271
  store i32 %207, ptr %10, align 4, !dbg !1272
  %208 = load ptr, ptr %3, align 8, !dbg !1273
  %209 = getelementptr inbounds nuw %struct.jpeg_scan_info, ptr %208, i32 0, i32 4, !dbg !1274
  %210 = load i32, ptr %209, align 4, !dbg !1274
  store i32 %210, ptr %11, align 4, !dbg !1275
  %211 = load ptr, ptr %3, align 8, !dbg !1276
  %212 = getelementptr inbounds nuw %struct.jpeg_scan_info, ptr %211, i32 0, i32 5, !dbg !1277
  %213 = load i32, ptr %212, align 4, !dbg !1277
  store i32 %213, ptr %12, align 4, !dbg !1278
  %214 = load ptr, ptr %2, align 8, !dbg !1279
  %215 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %214, i32 0, i32 37, !dbg !1281
  %216 = load i32, ptr %215, align 4, !dbg !1281
  %217 = icmp ne i32 %216, 0, !dbg !1279
  br i1 %217, label %218, label %423, !dbg !1279

218:                                              ; preds = %201
  %219 = load i32, ptr %9, align 4, !dbg !1282
  %220 = icmp slt i32 %219, 0, !dbg !1285
  br i1 %220, label %243, label %221, !dbg !1286

221:                                              ; preds = %218
  %222 = load i32, ptr %9, align 4, !dbg !1287
  %223 = icmp sge i32 %222, 64, !dbg !1288
  br i1 %223, label %243, label %224, !dbg !1289

224:                                              ; preds = %221
  %225 = load i32, ptr %10, align 4, !dbg !1290
  %226 = load i32, ptr %9, align 4, !dbg !1291
  %227 = icmp slt i32 %225, %226, !dbg !1292
  br i1 %227, label %243, label %228, !dbg !1293

228:                                              ; preds = %224
  %229 = load i32, ptr %10, align 4, !dbg !1294
  %230 = icmp sge i32 %229, 64, !dbg !1295
  br i1 %230, label %243, label %231, !dbg !1296

231:                                              ; preds = %228
  %232 = load i32, ptr %11, align 4, !dbg !1297
  %233 = icmp slt i32 %232, 0, !dbg !1298
  br i1 %233, label %243, label %234, !dbg !1299

234:                                              ; preds = %231
  %235 = load i32, ptr %11, align 4, !dbg !1300
  %236 = icmp sgt i32 %235, 13, !dbg !1301
  br i1 %236, label %243, label %237, !dbg !1302

237:                                              ; preds = %234
  %238 = load i32, ptr %12, align 4, !dbg !1303
  %239 = icmp slt i32 %238, 0, !dbg !1304
  br i1 %239, label %243, label %240, !dbg !1305

240:                                              ; preds = %237
  %241 = load i32, ptr %12, align 4, !dbg !1306
  %242 = icmp sgt i32 %241, 13, !dbg !1307
  br i1 %242, label %243, label %260, !dbg !1305

243:                                              ; preds = %240, %237, %234, %231, %228, %224, %221, %218
  %244 = load ptr, ptr %2, align 8, !dbg !1308
  %245 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %244, i32 0, i32 0, !dbg !1308
  %246 = load ptr, ptr %245, align 8, !dbg !1308
  %247 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %246, i32 0, i32 5, !dbg !1308
  store i32 15, ptr %247, align 8, !dbg !1308
  %248 = load i32, ptr %4, align 4, !dbg !1308
  %249 = load ptr, ptr %2, align 8, !dbg !1308
  %250 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %249, i32 0, i32 0, !dbg !1308
  %251 = load ptr, ptr %250, align 8, !dbg !1308
  %252 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %251, i32 0, i32 6, !dbg !1308
  %253 = getelementptr inbounds [8 x i32], ptr %252, i64 0, i64 0, !dbg !1308
  store i32 %248, ptr %253, align 4, !dbg !1308
  %254 = load ptr, ptr %2, align 8, !dbg !1308
  %255 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %254, i32 0, i32 0, !dbg !1308
  %256 = load ptr, ptr %255, align 8, !dbg !1308
  %257 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %256, i32 0, i32 0, !dbg !1308
  %258 = load ptr, ptr %257, align 8, !dbg !1308
  %259 = load ptr, ptr %2, align 8, !dbg !1308
  call void %258(ptr noundef %259), !dbg !1308
  br label %260, !dbg !1308

260:                                              ; preds = %243, %240
  %261 = load i32, ptr %9, align 4, !dbg !1309
  %262 = icmp eq i32 %261, 0, !dbg !1311
  br i1 %262, label %263, label %284, !dbg !1311

263:                                              ; preds = %260
  %264 = load i32, ptr %10, align 4, !dbg !1312
  %265 = icmp ne i32 %264, 0, !dbg !1315
  br i1 %265, label %266, label %283, !dbg !1315

266:                                              ; preds = %263
  %267 = load ptr, ptr %2, align 8, !dbg !1316
  %268 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %267, i32 0, i32 0, !dbg !1316
  %269 = load ptr, ptr %268, align 8, !dbg !1316
  %270 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %269, i32 0, i32 5, !dbg !1316
  store i32 15, ptr %270, align 8, !dbg !1316
  %271 = load i32, ptr %4, align 4, !dbg !1316
  %272 = load ptr, ptr %2, align 8, !dbg !1316
  %273 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %272, i32 0, i32 0, !dbg !1316
  %274 = load ptr, ptr %273, align 8, !dbg !1316
  %275 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %274, i32 0, i32 6, !dbg !1316
  %276 = getelementptr inbounds [8 x i32], ptr %275, i64 0, i64 0, !dbg !1316
  store i32 %271, ptr %276, align 4, !dbg !1316
  %277 = load ptr, ptr %2, align 8, !dbg !1316
  %278 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %277, i32 0, i32 0, !dbg !1316
  %279 = load ptr, ptr %278, align 8, !dbg !1316
  %280 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %279, i32 0, i32 0, !dbg !1316
  %281 = load ptr, ptr %280, align 8, !dbg !1316
  %282 = load ptr, ptr %2, align 8, !dbg !1316
  call void %281(ptr noundef %282), !dbg !1316
  br label %283, !dbg !1316

283:                                              ; preds = %266, %263
  br label %305, !dbg !1317

284:                                              ; preds = %260
  %285 = load i32, ptr %5, align 4, !dbg !1318
  %286 = icmp ne i32 %285, 1, !dbg !1321
  br i1 %286, label %287, label %304, !dbg !1321

287:                                              ; preds = %284
  %288 = load ptr, ptr %2, align 8, !dbg !1322
  %289 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %288, i32 0, i32 0, !dbg !1322
  %290 = load ptr, ptr %289, align 8, !dbg !1322
  %291 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %290, i32 0, i32 5, !dbg !1322
  store i32 15, ptr %291, align 8, !dbg !1322
  %292 = load i32, ptr %4, align 4, !dbg !1322
  %293 = load ptr, ptr %2, align 8, !dbg !1322
  %294 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %293, i32 0, i32 0, !dbg !1322
  %295 = load ptr, ptr %294, align 8, !dbg !1322
  %296 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %295, i32 0, i32 6, !dbg !1322
  %297 = getelementptr inbounds [8 x i32], ptr %296, i64 0, i64 0, !dbg !1322
  store i32 %292, ptr %297, align 4, !dbg !1322
  %298 = load ptr, ptr %2, align 8, !dbg !1322
  %299 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %298, i32 0, i32 0, !dbg !1322
  %300 = load ptr, ptr %299, align 8, !dbg !1322
  %301 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %300, i32 0, i32 0, !dbg !1322
  %302 = load ptr, ptr %301, align 8, !dbg !1322
  %303 = load ptr, ptr %2, align 8, !dbg !1322
  call void %302(ptr noundef %303), !dbg !1322
  br label %304, !dbg !1322

304:                                              ; preds = %287, %284
  br label %305

305:                                              ; preds = %304, %283
  store i32 0, ptr %6, align 4, !dbg !1323
  br label %306, !dbg !1325

306:                                              ; preds = %419, %305
  %307 = load i32, ptr %6, align 4, !dbg !1326
  %308 = load i32, ptr %5, align 4, !dbg !1328
  %309 = icmp slt i32 %307, %308, !dbg !1329
  br i1 %309, label %310, label %422, !dbg !1330

310:                                              ; preds = %306
  %311 = load ptr, ptr %3, align 8, !dbg !1331
  %312 = getelementptr inbounds nuw %struct.jpeg_scan_info, ptr %311, i32 0, i32 1, !dbg !1333
  %313 = load i32, ptr %6, align 4, !dbg !1334
  %314 = sext i32 %313 to i64, !dbg !1331
  %315 = getelementptr inbounds [4 x i32], ptr %312, i64 0, i64 %314, !dbg !1331
  %316 = load i32, ptr %315, align 4, !dbg !1331
  %317 = sext i32 %316 to i64, !dbg !1335
  %318 = getelementptr inbounds [10 x [64 x i32]], ptr %15, i64 0, i64 %317, !dbg !1335
  %319 = getelementptr inbounds [64 x i32], ptr %318, i64 0, i64 0, !dbg !1335
  store ptr %319, ptr %14, align 8, !dbg !1336
  %320 = load i32, ptr %9, align 4, !dbg !1337
  %321 = icmp ne i32 %320, 0, !dbg !1339
  br i1 %321, label %322, label %344, !dbg !1340

322:                                              ; preds = %310
  %323 = load ptr, ptr %14, align 8, !dbg !1341
  %324 = getelementptr inbounds i32, ptr %323, i64 0, !dbg !1341
  %325 = load i32, ptr %324, align 4, !dbg !1341
  %326 = icmp slt i32 %325, 0, !dbg !1342
  br i1 %326, label %327, label %344, !dbg !1340

327:                                              ; preds = %322
  %328 = load ptr, ptr %2, align 8, !dbg !1343
  %329 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %328, i32 0, i32 0, !dbg !1343
  %330 = load ptr, ptr %329, align 8, !dbg !1343
  %331 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %330, i32 0, i32 5, !dbg !1343
  store i32 15, ptr %331, align 8, !dbg !1343
  %332 = load i32, ptr %4, align 4, !dbg !1343
  %333 = load ptr, ptr %2, align 8, !dbg !1343
  %334 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %333, i32 0, i32 0, !dbg !1343
  %335 = load ptr, ptr %334, align 8, !dbg !1343
  %336 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %335, i32 0, i32 6, !dbg !1343
  %337 = getelementptr inbounds [8 x i32], ptr %336, i64 0, i64 0, !dbg !1343
  store i32 %332, ptr %337, align 4, !dbg !1343
  %338 = load ptr, ptr %2, align 8, !dbg !1343
  %339 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %338, i32 0, i32 0, !dbg !1343
  %340 = load ptr, ptr %339, align 8, !dbg !1343
  %341 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %340, i32 0, i32 0, !dbg !1343
  %342 = load ptr, ptr %341, align 8, !dbg !1343
  %343 = load ptr, ptr %2, align 8, !dbg !1343
  call void %342(ptr noundef %343), !dbg !1343
  br label %344, !dbg !1343

344:                                              ; preds = %327, %322, %310
  %345 = load i32, ptr %9, align 4, !dbg !1344
  store i32 %345, ptr %7, align 4, !dbg !1346
  br label %346, !dbg !1347

346:                                              ; preds = %415, %344
  %347 = load i32, ptr %7, align 4, !dbg !1348
  %348 = load i32, ptr %10, align 4, !dbg !1350
  %349 = icmp sle i32 %347, %348, !dbg !1351
  br i1 %349, label %350, label %418, !dbg !1352

350:                                              ; preds = %346
  %351 = load ptr, ptr %14, align 8, !dbg !1353
  %352 = load i32, ptr %7, align 4, !dbg !1356
  %353 = sext i32 %352 to i64, !dbg !1353
  %354 = getelementptr inbounds i32, ptr %351, i64 %353, !dbg !1353
  %355 = load i32, ptr %354, align 4, !dbg !1353
  %356 = icmp slt i32 %355, 0, !dbg !1357
  br i1 %356, label %357, label %378, !dbg !1357

357:                                              ; preds = %350
  %358 = load i32, ptr %11, align 4, !dbg !1358
  %359 = icmp ne i32 %358, 0, !dbg !1361
  br i1 %359, label %360, label %377, !dbg !1361

360:                                              ; preds = %357
  %361 = load ptr, ptr %2, align 8, !dbg !1362
  %362 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %361, i32 0, i32 0, !dbg !1362
  %363 = load ptr, ptr %362, align 8, !dbg !1362
  %364 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %363, i32 0, i32 5, !dbg !1362
  store i32 15, ptr %364, align 8, !dbg !1362
  %365 = load i32, ptr %4, align 4, !dbg !1362
  %366 = load ptr, ptr %2, align 8, !dbg !1362
  %367 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %366, i32 0, i32 0, !dbg !1362
  %368 = load ptr, ptr %367, align 8, !dbg !1362
  %369 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %368, i32 0, i32 6, !dbg !1362
  %370 = getelementptr inbounds [8 x i32], ptr %369, i64 0, i64 0, !dbg !1362
  store i32 %365, ptr %370, align 4, !dbg !1362
  %371 = load ptr, ptr %2, align 8, !dbg !1362
  %372 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %371, i32 0, i32 0, !dbg !1362
  %373 = load ptr, ptr %372, align 8, !dbg !1362
  %374 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %373, i32 0, i32 0, !dbg !1362
  %375 = load ptr, ptr %374, align 8, !dbg !1362
  %376 = load ptr, ptr %2, align 8, !dbg !1362
  call void %375(ptr noundef %376), !dbg !1362
  br label %377, !dbg !1362

377:                                              ; preds = %360, %357
  br label %409, !dbg !1363

378:                                              ; preds = %350
  %379 = load i32, ptr %11, align 4, !dbg !1364
  %380 = load ptr, ptr %14, align 8, !dbg !1367
  %381 = load i32, ptr %7, align 4, !dbg !1368
  %382 = sext i32 %381 to i64, !dbg !1367
  %383 = getelementptr inbounds i32, ptr %380, i64 %382, !dbg !1367
  %384 = load i32, ptr %383, align 4, !dbg !1367
  %385 = icmp ne i32 %379, %384, !dbg !1369
  br i1 %385, label %391, label %386, !dbg !1370

386:                                              ; preds = %378
  %387 = load i32, ptr %12, align 4, !dbg !1371
  %388 = load i32, ptr %11, align 4, !dbg !1372
  %389 = sub nsw i32 %388, 1, !dbg !1373
  %390 = icmp ne i32 %387, %389, !dbg !1374
  br i1 %390, label %391, label %408, !dbg !1370

391:                                              ; preds = %386, %378
  %392 = load ptr, ptr %2, align 8, !dbg !1375
  %393 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %392, i32 0, i32 0, !dbg !1375
  %394 = load ptr, ptr %393, align 8, !dbg !1375
  %395 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %394, i32 0, i32 5, !dbg !1375
  store i32 15, ptr %395, align 8, !dbg !1375
  %396 = load i32, ptr %4, align 4, !dbg !1375
  %397 = load ptr, ptr %2, align 8, !dbg !1375
  %398 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %397, i32 0, i32 0, !dbg !1375
  %399 = load ptr, ptr %398, align 8, !dbg !1375
  %400 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %399, i32 0, i32 6, !dbg !1375
  %401 = getelementptr inbounds [8 x i32], ptr %400, i64 0, i64 0, !dbg !1375
  store i32 %396, ptr %401, align 4, !dbg !1375
  %402 = load ptr, ptr %2, align 8, !dbg !1375
  %403 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %402, i32 0, i32 0, !dbg !1375
  %404 = load ptr, ptr %403, align 8, !dbg !1375
  %405 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %404, i32 0, i32 0, !dbg !1375
  %406 = load ptr, ptr %405, align 8, !dbg !1375
  %407 = load ptr, ptr %2, align 8, !dbg !1375
  call void %406(ptr noundef %407), !dbg !1375
  br label %408, !dbg !1375

408:                                              ; preds = %391, %386
  br label %409

409:                                              ; preds = %408, %377
  %410 = load i32, ptr %12, align 4, !dbg !1376
  %411 = load ptr, ptr %14, align 8, !dbg !1377
  %412 = load i32, ptr %7, align 4, !dbg !1378
  %413 = sext i32 %412 to i64, !dbg !1377
  %414 = getelementptr inbounds i32, ptr %411, i64 %413, !dbg !1377
  store i32 %410, ptr %414, align 4, !dbg !1379
  br label %415, !dbg !1380

415:                                              ; preds = %409
  %416 = load i32, ptr %7, align 4, !dbg !1381
  %417 = add nsw i32 %416, 1, !dbg !1381
  store i32 %417, ptr %7, align 4, !dbg !1381
  br label %346, !dbg !1382, !llvm.loop !1383

418:                                              ; preds = %346
  br label %419, !dbg !1385

419:                                              ; preds = %418
  %420 = load i32, ptr %6, align 4, !dbg !1386
  %421 = add nsw i32 %420, 1, !dbg !1386
  store i32 %421, ptr %6, align 4, !dbg !1386
  br label %306, !dbg !1387, !llvm.loop !1388

422:                                              ; preds = %306
  br label %494, !dbg !1390

423:                                              ; preds = %201
  %424 = load i32, ptr %9, align 4, !dbg !1391
  %425 = icmp ne i32 %424, 0, !dbg !1394
  br i1 %425, label %435, label %426, !dbg !1395

426:                                              ; preds = %423
  %427 = load i32, ptr %10, align 4, !dbg !1396
  %428 = icmp ne i32 %427, 63, !dbg !1397
  br i1 %428, label %435, label %429, !dbg !1398

429:                                              ; preds = %426
  %430 = load i32, ptr %11, align 4, !dbg !1399
  %431 = icmp ne i32 %430, 0, !dbg !1400
  br i1 %431, label %435, label %432, !dbg !1401

432:                                              ; preds = %429
  %433 = load i32, ptr %12, align 4, !dbg !1402
  %434 = icmp ne i32 %433, 0, !dbg !1403
  br i1 %434, label %435, label %452, !dbg !1401

435:                                              ; preds = %432, %429, %426, %423
  %436 = load ptr, ptr %2, align 8, !dbg !1404
  %437 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %436, i32 0, i32 0, !dbg !1404
  %438 = load ptr, ptr %437, align 8, !dbg !1404
  %439 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %438, i32 0, i32 5, !dbg !1404
  store i32 15, ptr %439, align 8, !dbg !1404
  %440 = load i32, ptr %4, align 4, !dbg !1404
  %441 = load ptr, ptr %2, align 8, !dbg !1404
  %442 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %441, i32 0, i32 0, !dbg !1404
  %443 = load ptr, ptr %442, align 8, !dbg !1404
  %444 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %443, i32 0, i32 6, !dbg !1404
  %445 = getelementptr inbounds [8 x i32], ptr %444, i64 0, i64 0, !dbg !1404
  store i32 %440, ptr %445, align 4, !dbg !1404
  %446 = load ptr, ptr %2, align 8, !dbg !1404
  %447 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %446, i32 0, i32 0, !dbg !1404
  %448 = load ptr, ptr %447, align 8, !dbg !1404
  %449 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %448, i32 0, i32 0, !dbg !1404
  %450 = load ptr, ptr %449, align 8, !dbg !1404
  %451 = load ptr, ptr %2, align 8, !dbg !1404
  call void %450(ptr noundef %451), !dbg !1404
  br label %452, !dbg !1404

452:                                              ; preds = %435, %432
  store i32 0, ptr %6, align 4, !dbg !1405
  br label %453, !dbg !1407

453:                                              ; preds = %490, %452
  %454 = load i32, ptr %6, align 4, !dbg !1408
  %455 = load i32, ptr %5, align 4, !dbg !1410
  %456 = icmp slt i32 %454, %455, !dbg !1411
  br i1 %456, label %457, label %493, !dbg !1412

457:                                              ; preds = %453
  %458 = load ptr, ptr %3, align 8, !dbg !1413
  %459 = getelementptr inbounds nuw %struct.jpeg_scan_info, ptr %458, i32 0, i32 1, !dbg !1415
  %460 = load i32, ptr %6, align 4, !dbg !1416
  %461 = sext i32 %460 to i64, !dbg !1413
  %462 = getelementptr inbounds [4 x i32], ptr %459, i64 0, i64 %461, !dbg !1413
  %463 = load i32, ptr %462, align 4, !dbg !1413
  store i32 %463, ptr %8, align 4, !dbg !1417
  %464 = load i32, ptr %8, align 4, !dbg !1418
  %465 = sext i32 %464 to i64, !dbg !1420
  %466 = getelementptr inbounds [10 x i32], ptr %13, i64 0, i64 %465, !dbg !1420
  %467 = load i32, ptr %466, align 4, !dbg !1420
  %468 = icmp ne i32 %467, 0, !dbg !1420
  br i1 %468, label %469, label %486, !dbg !1420

469:                                              ; preds = %457
  %470 = load ptr, ptr %2, align 8, !dbg !1421
  %471 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %470, i32 0, i32 0, !dbg !1421
  %472 = load ptr, ptr %471, align 8, !dbg !1421
  %473 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %472, i32 0, i32 5, !dbg !1421
  store i32 17, ptr %473, align 8, !dbg !1421
  %474 = load i32, ptr %4, align 4, !dbg !1421
  %475 = load ptr, ptr %2, align 8, !dbg !1421
  %476 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %475, i32 0, i32 0, !dbg !1421
  %477 = load ptr, ptr %476, align 8, !dbg !1421
  %478 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %477, i32 0, i32 6, !dbg !1421
  %479 = getelementptr inbounds [8 x i32], ptr %478, i64 0, i64 0, !dbg !1421
  store i32 %474, ptr %479, align 4, !dbg !1421
  %480 = load ptr, ptr %2, align 8, !dbg !1421
  %481 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %480, i32 0, i32 0, !dbg !1421
  %482 = load ptr, ptr %481, align 8, !dbg !1421
  %483 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %482, i32 0, i32 0, !dbg !1421
  %484 = load ptr, ptr %483, align 8, !dbg !1421
  %485 = load ptr, ptr %2, align 8, !dbg !1421
  call void %484(ptr noundef %485), !dbg !1421
  br label %486, !dbg !1421

486:                                              ; preds = %469, %457
  %487 = load i32, ptr %8, align 4, !dbg !1422
  %488 = sext i32 %487 to i64, !dbg !1423
  %489 = getelementptr inbounds [10 x i32], ptr %13, i64 0, i64 %488, !dbg !1423
  store i32 1, ptr %489, align 4, !dbg !1424
  br label %490, !dbg !1425

490:                                              ; preds = %486
  %491 = load i32, ptr %6, align 4, !dbg !1426
  %492 = add nsw i32 %491, 1, !dbg !1426
  store i32 %492, ptr %6, align 4, !dbg !1426
  br label %453, !dbg !1427, !llvm.loop !1428

493:                                              ; preds = %453
  br label %494

494:                                              ; preds = %493, %422
  br label %495, !dbg !1430

495:                                              ; preds = %494
  %496 = load ptr, ptr %3, align 8, !dbg !1431
  %497 = getelementptr inbounds nuw %struct.jpeg_scan_info, ptr %496, i32 1, !dbg !1431
  store ptr %497, ptr %3, align 8, !dbg !1431
  %498 = load i32, ptr %4, align 4, !dbg !1432
  %499 = add nsw i32 %498, 1, !dbg !1432
  store i32 %499, ptr %4, align 4, !dbg !1432
  br label %93, !dbg !1433, !llvm.loop !1434

500:                                              ; preds = %93
  %501 = load ptr, ptr %2, align 8, !dbg !1436
  %502 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %501, i32 0, i32 37, !dbg !1438
  %503 = load i32, ptr %502, align 4, !dbg !1438
  %504 = icmp ne i32 %503, 0, !dbg !1436
  br i1 %504, label %505, label %535, !dbg !1436

505:                                              ; preds = %500
  store i32 0, ptr %6, align 4, !dbg !1439
  br label %506, !dbg !1442

506:                                              ; preds = %531, %505
  %507 = load i32, ptr %6, align 4, !dbg !1443
  %508 = load ptr, ptr %2, align 8, !dbg !1445
  %509 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %508, i32 0, i32 12, !dbg !1446
  %510 = load i32, ptr %509, align 4, !dbg !1446
  %511 = icmp slt i32 %507, %510, !dbg !1447
  br i1 %511, label %512, label %534, !dbg !1448

512:                                              ; preds = %506
  %513 = load i32, ptr %6, align 4, !dbg !1449
  %514 = sext i32 %513 to i64, !dbg !1452
  %515 = getelementptr inbounds [10 x [64 x i32]], ptr %15, i64 0, i64 %514, !dbg !1452
  %516 = getelementptr inbounds [64 x i32], ptr %515, i64 0, i64 0, !dbg !1452
  %517 = load i32, ptr %516, align 16, !dbg !1452
  %518 = icmp slt i32 %517, 0, !dbg !1453
  br i1 %518, label %519, label %530, !dbg !1453

519:                                              ; preds = %512
  %520 = load ptr, ptr %2, align 8, !dbg !1454
  %521 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %520, i32 0, i32 0, !dbg !1454
  %522 = load ptr, ptr %521, align 8, !dbg !1454
  %523 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %522, i32 0, i32 5, !dbg !1454
  store i32 44, ptr %523, align 8, !dbg !1454
  %524 = load ptr, ptr %2, align 8, !dbg !1454
  %525 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %524, i32 0, i32 0, !dbg !1454
  %526 = load ptr, ptr %525, align 8, !dbg !1454
  %527 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %526, i32 0, i32 0, !dbg !1454
  %528 = load ptr, ptr %527, align 8, !dbg !1454
  %529 = load ptr, ptr %2, align 8, !dbg !1454
  call void %528(ptr noundef %529), !dbg !1454
  br label %530, !dbg !1454

530:                                              ; preds = %519, %512
  br label %531, !dbg !1455

531:                                              ; preds = %530
  %532 = load i32, ptr %6, align 4, !dbg !1456
  %533 = add nsw i32 %532, 1, !dbg !1456
  store i32 %533, ptr %6, align 4, !dbg !1456
  br label %506, !dbg !1457, !llvm.loop !1458

534:                                              ; preds = %506
  br label %564, !dbg !1460

535:                                              ; preds = %500
  store i32 0, ptr %6, align 4, !dbg !1461
  br label %536, !dbg !1464

536:                                              ; preds = %560, %535
  %537 = load i32, ptr %6, align 4, !dbg !1465
  %538 = load ptr, ptr %2, align 8, !dbg !1467
  %539 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %538, i32 0, i32 12, !dbg !1468
  %540 = load i32, ptr %539, align 4, !dbg !1468
  %541 = icmp slt i32 %537, %540, !dbg !1469
  br i1 %541, label %542, label %563, !dbg !1470

542:                                              ; preds = %536
  %543 = load i32, ptr %6, align 4, !dbg !1471
  %544 = sext i32 %543 to i64, !dbg !1474
  %545 = getelementptr inbounds [10 x i32], ptr %13, i64 0, i64 %544, !dbg !1474
  %546 = load i32, ptr %545, align 4, !dbg !1474
  %547 = icmp ne i32 %546, 0, !dbg !1474
  br i1 %547, label %559, label %548, !dbg !1475

548:                                              ; preds = %542
  %549 = load ptr, ptr %2, align 8, !dbg !1476
  %550 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %549, i32 0, i32 0, !dbg !1476
  %551 = load ptr, ptr %550, align 8, !dbg !1476
  %552 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %551, i32 0, i32 5, !dbg !1476
  store i32 44, ptr %552, align 8, !dbg !1476
  %553 = load ptr, ptr %2, align 8, !dbg !1476
  %554 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %553, i32 0, i32 0, !dbg !1476
  %555 = load ptr, ptr %554, align 8, !dbg !1476
  %556 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %555, i32 0, i32 0, !dbg !1476
  %557 = load ptr, ptr %556, align 8, !dbg !1476
  %558 = load ptr, ptr %2, align 8, !dbg !1476
  call void %557(ptr noundef %558), !dbg !1476
  br label %559, !dbg !1476

559:                                              ; preds = %548, %542
  br label %560, !dbg !1477

560:                                              ; preds = %559
  %561 = load i32, ptr %6, align 4, !dbg !1478
  %562 = add nsw i32 %561, 1, !dbg !1478
  store i32 %562, ptr %6, align 4, !dbg !1478
  br label %536, !dbg !1479, !llvm.loop !1480

563:                                              ; preds = %536
  br label %564

564:                                              ; preds = %563, %534
  ret void, !dbg !1482
}

; Function Attrs: noinline nounwind uwtable
define internal void @select_scan_parameters(ptr noundef %0) #0 !dbg !1483 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !1484, !DIExpression(), !1485)
    #dbg_declare(ptr %3, !1486, !DIExpression(), !1487)
  %6 = load ptr, ptr %2, align 8, !dbg !1488
  %7 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %6, i32 0, i32 22, !dbg !1490
  %8 = load ptr, ptr %7, align 8, !dbg !1490
  %9 = icmp ne ptr %8, null, !dbg !1491
  br i1 %9, label %10, label %74, !dbg !1491

10:                                               ; preds = %1
    #dbg_declare(ptr %4, !1492, !DIExpression(), !1494)
  %11 = load ptr, ptr %2, align 8, !dbg !1495
  %12 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %11, i32 0, i32 51, !dbg !1496
  %13 = load ptr, ptr %12, align 8, !dbg !1496
  store ptr %13, ptr %4, align 8, !dbg !1494
    #dbg_declare(ptr %5, !1497, !DIExpression(), !1498)
  %14 = load ptr, ptr %2, align 8, !dbg !1499
  %15 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %14, i32 0, i32 22, !dbg !1500
  %16 = load ptr, ptr %15, align 8, !dbg !1500
  %17 = load ptr, ptr %4, align 8, !dbg !1501
  %18 = getelementptr inbounds nuw %struct.my_comp_master, ptr %17, i32 0, i32 4, !dbg !1502
  %19 = load i32, ptr %18, align 4, !dbg !1502
  %20 = sext i32 %19 to i64, !dbg !1503
  %21 = getelementptr inbounds %struct.jpeg_scan_info, ptr %16, i64 %20, !dbg !1503
  store ptr %21, ptr %5, align 8, !dbg !1498
  %22 = load ptr, ptr %5, align 8, !dbg !1504
  %23 = getelementptr inbounds nuw %struct.jpeg_scan_info, ptr %22, i32 0, i32 0, !dbg !1505
  %24 = load i32, ptr %23, align 4, !dbg !1505
  %25 = load ptr, ptr %2, align 8, !dbg !1506
  %26 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %25, i32 0, i32 41, !dbg !1507
  store i32 %24, ptr %26, align 4, !dbg !1508
  store i32 0, ptr %3, align 4, !dbg !1509
  br label %27, !dbg !1511

27:                                               ; preds = %50, %10
  %28 = load i32, ptr %3, align 4, !dbg !1512
  %29 = load ptr, ptr %5, align 8, !dbg !1514
  %30 = getelementptr inbounds nuw %struct.jpeg_scan_info, ptr %29, i32 0, i32 0, !dbg !1515
  %31 = load i32, ptr %30, align 4, !dbg !1515
  %32 = icmp slt i32 %28, %31, !dbg !1516
  br i1 %32, label %33, label %53, !dbg !1517

33:                                               ; preds = %27
  %34 = load ptr, ptr %2, align 8, !dbg !1518
  %35 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %34, i32 0, i32 14, !dbg !1520
  %36 = load ptr, ptr %35, align 8, !dbg !1520
  %37 = load ptr, ptr %5, align 8, !dbg !1521
  %38 = getelementptr inbounds nuw %struct.jpeg_scan_info, ptr %37, i32 0, i32 1, !dbg !1522
  %39 = load i32, ptr %3, align 4, !dbg !1523
  %40 = sext i32 %39 to i64, !dbg !1521
  %41 = getelementptr inbounds [4 x i32], ptr %38, i64 0, i64 %40, !dbg !1521
  %42 = load i32, ptr %41, align 4, !dbg !1521
  %43 = sext i32 %42 to i64, !dbg !1518
  %44 = getelementptr inbounds %struct.jpeg_component_info, ptr %36, i64 %43, !dbg !1518
  %45 = load ptr, ptr %2, align 8, !dbg !1524
  %46 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %45, i32 0, i32 42, !dbg !1525
  %47 = load i32, ptr %3, align 4, !dbg !1526
  %48 = sext i32 %47 to i64, !dbg !1524
  %49 = getelementptr inbounds [4 x ptr], ptr %46, i64 0, i64 %48, !dbg !1524
  store ptr %44, ptr %49, align 8, !dbg !1527
  br label %50, !dbg !1528

50:                                               ; preds = %33
  %51 = load i32, ptr %3, align 4, !dbg !1529
  %52 = add nsw i32 %51, 1, !dbg !1529
  store i32 %52, ptr %3, align 4, !dbg !1529
  br label %27, !dbg !1530, !llvm.loop !1531

53:                                               ; preds = %27
  %54 = load ptr, ptr %5, align 8, !dbg !1533
  %55 = getelementptr inbounds nuw %struct.jpeg_scan_info, ptr %54, i32 0, i32 2, !dbg !1534
  %56 = load i32, ptr %55, align 4, !dbg !1534
  %57 = load ptr, ptr %2, align 8, !dbg !1535
  %58 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %57, i32 0, i32 47, !dbg !1536
  store i32 %56, ptr %58, align 4, !dbg !1537
  %59 = load ptr, ptr %5, align 8, !dbg !1538
  %60 = getelementptr inbounds nuw %struct.jpeg_scan_info, ptr %59, i32 0, i32 3, !dbg !1539
  %61 = load i32, ptr %60, align 4, !dbg !1539
  %62 = load ptr, ptr %2, align 8, !dbg !1540
  %63 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %62, i32 0, i32 48, !dbg !1541
  store i32 %61, ptr %63, align 8, !dbg !1542
  %64 = load ptr, ptr %5, align 8, !dbg !1543
  %65 = getelementptr inbounds nuw %struct.jpeg_scan_info, ptr %64, i32 0, i32 4, !dbg !1544
  %66 = load i32, ptr %65, align 4, !dbg !1544
  %67 = load ptr, ptr %2, align 8, !dbg !1545
  %68 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %67, i32 0, i32 49, !dbg !1546
  store i32 %66, ptr %68, align 4, !dbg !1547
  %69 = load ptr, ptr %5, align 8, !dbg !1548
  %70 = getelementptr inbounds nuw %struct.jpeg_scan_info, ptr %69, i32 0, i32 5, !dbg !1549
  %71 = load i32, ptr %70, align 4, !dbg !1549
  %72 = load ptr, ptr %2, align 8, !dbg !1550
  %73 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %72, i32 0, i32 50, !dbg !1551
  store i32 %71, ptr %73, align 8, !dbg !1552
  br label %139, !dbg !1553

74:                                               ; preds = %1
  %75 = load ptr, ptr %2, align 8, !dbg !1554
  %76 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %75, i32 0, i32 12, !dbg !1557
  %77 = load i32, ptr %76, align 4, !dbg !1557
  %78 = icmp sgt i32 %77, 4, !dbg !1558
  br i1 %78, label %79, label %103, !dbg !1558

79:                                               ; preds = %74
  %80 = load ptr, ptr %2, align 8, !dbg !1559
  %81 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %80, i32 0, i32 0, !dbg !1559
  %82 = load ptr, ptr %81, align 8, !dbg !1559
  %83 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %82, i32 0, i32 5, !dbg !1559
  store i32 24, ptr %83, align 8, !dbg !1559
  %84 = load ptr, ptr %2, align 8, !dbg !1559
  %85 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %84, i32 0, i32 12, !dbg !1559
  %86 = load i32, ptr %85, align 4, !dbg !1559
  %87 = load ptr, ptr %2, align 8, !dbg !1559
  %88 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %87, i32 0, i32 0, !dbg !1559
  %89 = load ptr, ptr %88, align 8, !dbg !1559
  %90 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %89, i32 0, i32 6, !dbg !1559
  %91 = getelementptr inbounds [8 x i32], ptr %90, i64 0, i64 0, !dbg !1559
  store i32 %86, ptr %91, align 4, !dbg !1559
  %92 = load ptr, ptr %2, align 8, !dbg !1559
  %93 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %92, i32 0, i32 0, !dbg !1559
  %94 = load ptr, ptr %93, align 8, !dbg !1559
  %95 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %94, i32 0, i32 6, !dbg !1559
  %96 = getelementptr inbounds [8 x i32], ptr %95, i64 0, i64 1, !dbg !1559
  store i32 4, ptr %96, align 4, !dbg !1559
  %97 = load ptr, ptr %2, align 8, !dbg !1559
  %98 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %97, i32 0, i32 0, !dbg !1559
  %99 = load ptr, ptr %98, align 8, !dbg !1559
  %100 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %99, i32 0, i32 0, !dbg !1559
  %101 = load ptr, ptr %100, align 8, !dbg !1559
  %102 = load ptr, ptr %2, align 8, !dbg !1559
  call void %101(ptr noundef %102), !dbg !1559
  br label %103, !dbg !1559

103:                                              ; preds = %79, %74
  %104 = load ptr, ptr %2, align 8, !dbg !1560
  %105 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %104, i32 0, i32 12, !dbg !1561
  %106 = load i32, ptr %105, align 4, !dbg !1561
  %107 = load ptr, ptr %2, align 8, !dbg !1562
  %108 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %107, i32 0, i32 41, !dbg !1563
  store i32 %106, ptr %108, align 4, !dbg !1564
  store i32 0, ptr %3, align 4, !dbg !1565
  br label %109, !dbg !1567

109:                                              ; preds = %127, %103
  %110 = load i32, ptr %3, align 4, !dbg !1568
  %111 = load ptr, ptr %2, align 8, !dbg !1570
  %112 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %111, i32 0, i32 12, !dbg !1571
  %113 = load i32, ptr %112, align 4, !dbg !1571
  %114 = icmp slt i32 %110, %113, !dbg !1572
  br i1 %114, label %115, label %130, !dbg !1573

115:                                              ; preds = %109
  %116 = load ptr, ptr %2, align 8, !dbg !1574
  %117 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %116, i32 0, i32 14, !dbg !1576
  %118 = load ptr, ptr %117, align 8, !dbg !1576
  %119 = load i32, ptr %3, align 4, !dbg !1577
  %120 = sext i32 %119 to i64, !dbg !1574
  %121 = getelementptr inbounds %struct.jpeg_component_info, ptr %118, i64 %120, !dbg !1574
  %122 = load ptr, ptr %2, align 8, !dbg !1578
  %123 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %122, i32 0, i32 42, !dbg !1579
  %124 = load i32, ptr %3, align 4, !dbg !1580
  %125 = sext i32 %124 to i64, !dbg !1578
  %126 = getelementptr inbounds [4 x ptr], ptr %123, i64 0, i64 %125, !dbg !1578
  store ptr %121, ptr %126, align 8, !dbg !1581
  br label %127, !dbg !1582

127:                                              ; preds = %115
  %128 = load i32, ptr %3, align 4, !dbg !1583
  %129 = add nsw i32 %128, 1, !dbg !1583
  store i32 %129, ptr %3, align 4, !dbg !1583
  br label %109, !dbg !1584, !llvm.loop !1585

130:                                              ; preds = %109
  %131 = load ptr, ptr %2, align 8, !dbg !1587
  %132 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %131, i32 0, i32 47, !dbg !1588
  store i32 0, ptr %132, align 4, !dbg !1589
  %133 = load ptr, ptr %2, align 8, !dbg !1590
  %134 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %133, i32 0, i32 48, !dbg !1591
  store i32 63, ptr %134, align 8, !dbg !1592
  %135 = load ptr, ptr %2, align 8, !dbg !1593
  %136 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %135, i32 0, i32 49, !dbg !1594
  store i32 0, ptr %136, align 4, !dbg !1595
  %137 = load ptr, ptr %2, align 8, !dbg !1596
  %138 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %137, i32 0, i32 50, !dbg !1597
  store i32 0, ptr %138, align 8, !dbg !1598
  br label %139

139:                                              ; preds = %130, %53
  ret void, !dbg !1599
}

; Function Attrs: noinline nounwind uwtable
define internal void @per_scan_setup(ptr noundef %0) #0 !dbg !1600 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !1601, !DIExpression(), !1602)
    #dbg_declare(ptr %3, !1603, !DIExpression(), !1604)
    #dbg_declare(ptr %4, !1605, !DIExpression(), !1606)
    #dbg_declare(ptr %5, !1607, !DIExpression(), !1608)
    #dbg_declare(ptr %6, !1609, !DIExpression(), !1610)
  %8 = load ptr, ptr %2, align 8, !dbg !1611
  %9 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %8, i32 0, i32 41, !dbg !1613
  %10 = load i32, ptr %9, align 4, !dbg !1613
  %11 = icmp eq i32 %10, 1, !dbg !1614
  br i1 %11, label %12, label %59, !dbg !1614

12:                                               ; preds = %1
  %13 = load ptr, ptr %2, align 8, !dbg !1615
  %14 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %13, i32 0, i32 42, !dbg !1617
  %15 = getelementptr inbounds [4 x ptr], ptr %14, i64 0, i64 0, !dbg !1615
  %16 = load ptr, ptr %15, align 8, !dbg !1615
  store ptr %16, ptr %6, align 8, !dbg !1618
  %17 = load ptr, ptr %6, align 8, !dbg !1619
  %18 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %17, i32 0, i32 7, !dbg !1620
  %19 = load i32, ptr %18, align 4, !dbg !1620
  %20 = load ptr, ptr %2, align 8, !dbg !1621
  %21 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %20, i32 0, i32 43, !dbg !1622
  store i32 %19, ptr %21, align 8, !dbg !1623
  %22 = load ptr, ptr %6, align 8, !dbg !1624
  %23 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %22, i32 0, i32 8, !dbg !1625
  %24 = load i32, ptr %23, align 8, !dbg !1625
  %25 = load ptr, ptr %2, align 8, !dbg !1626
  %26 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %25, i32 0, i32 44, !dbg !1627
  store i32 %24, ptr %26, align 4, !dbg !1628
  %27 = load ptr, ptr %6, align 8, !dbg !1629
  %28 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %27, i32 0, i32 13, !dbg !1630
  store i32 1, ptr %28, align 4, !dbg !1631
  %29 = load ptr, ptr %6, align 8, !dbg !1632
  %30 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %29, i32 0, i32 14, !dbg !1633
  store i32 1, ptr %30, align 8, !dbg !1634
  %31 = load ptr, ptr %6, align 8, !dbg !1635
  %32 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %31, i32 0, i32 15, !dbg !1636
  store i32 1, ptr %32, align 4, !dbg !1637
  %33 = load ptr, ptr %6, align 8, !dbg !1638
  %34 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %33, i32 0, i32 16, !dbg !1639
  store i32 8, ptr %34, align 8, !dbg !1640
  %35 = load ptr, ptr %6, align 8, !dbg !1641
  %36 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %35, i32 0, i32 17, !dbg !1642
  store i32 1, ptr %36, align 4, !dbg !1643
  %37 = load ptr, ptr %6, align 8, !dbg !1644
  %38 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %37, i32 0, i32 8, !dbg !1645
  %39 = load i32, ptr %38, align 8, !dbg !1645
  %40 = load ptr, ptr %6, align 8, !dbg !1646
  %41 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %40, i32 0, i32 3, !dbg !1647
  %42 = load i32, ptr %41, align 4, !dbg !1647
  %43 = urem i32 %39, %42, !dbg !1648
  store i32 %43, ptr %5, align 4, !dbg !1649
  %44 = load i32, ptr %5, align 4, !dbg !1650
  %45 = icmp eq i32 %44, 0, !dbg !1652
  br i1 %45, label %46, label %50, !dbg !1652

46:                                               ; preds = %12
  %47 = load ptr, ptr %6, align 8, !dbg !1653
  %48 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %47, i32 0, i32 3, !dbg !1654
  %49 = load i32, ptr %48, align 4, !dbg !1654
  store i32 %49, ptr %5, align 4, !dbg !1655
  br label %50, !dbg !1656

50:                                               ; preds = %46, %12
  %51 = load i32, ptr %5, align 4, !dbg !1657
  %52 = load ptr, ptr %6, align 8, !dbg !1658
  %53 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %52, i32 0, i32 18, !dbg !1659
  store i32 %51, ptr %53, align 8, !dbg !1660
  %54 = load ptr, ptr %2, align 8, !dbg !1661
  %55 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %54, i32 0, i32 45, !dbg !1662
  store i32 1, ptr %55, align 8, !dbg !1663
  %56 = load ptr, ptr %2, align 8, !dbg !1664
  %57 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %56, i32 0, i32 46, !dbg !1665
  %58 = getelementptr inbounds [10 x i32], ptr %57, i64 0, i64 0, !dbg !1664
  store i32 0, ptr %58, align 4, !dbg !1666
  br label %234, !dbg !1667

59:                                               ; preds = %1
  %60 = load ptr, ptr %2, align 8, !dbg !1668
  %61 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %60, i32 0, i32 41, !dbg !1671
  %62 = load i32, ptr %61, align 4, !dbg !1671
  %63 = icmp sle i32 %62, 0, !dbg !1672
  br i1 %63, label %69, label %64, !dbg !1673

64:                                               ; preds = %59
  %65 = load ptr, ptr %2, align 8, !dbg !1674
  %66 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %65, i32 0, i32 41, !dbg !1675
  %67 = load i32, ptr %66, align 4, !dbg !1675
  %68 = icmp sgt i32 %67, 4, !dbg !1676
  br i1 %68, label %69, label %93, !dbg !1673

69:                                               ; preds = %64, %59
  %70 = load ptr, ptr %2, align 8, !dbg !1677
  %71 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %70, i32 0, i32 0, !dbg !1677
  %72 = load ptr, ptr %71, align 8, !dbg !1677
  %73 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %72, i32 0, i32 5, !dbg !1677
  store i32 24, ptr %73, align 8, !dbg !1677
  %74 = load ptr, ptr %2, align 8, !dbg !1677
  %75 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %74, i32 0, i32 41, !dbg !1677
  %76 = load i32, ptr %75, align 4, !dbg !1677
  %77 = load ptr, ptr %2, align 8, !dbg !1677
  %78 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %77, i32 0, i32 0, !dbg !1677
  %79 = load ptr, ptr %78, align 8, !dbg !1677
  %80 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %79, i32 0, i32 6, !dbg !1677
  %81 = getelementptr inbounds [8 x i32], ptr %80, i64 0, i64 0, !dbg !1677
  store i32 %76, ptr %81, align 4, !dbg !1677
  %82 = load ptr, ptr %2, align 8, !dbg !1677
  %83 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %82, i32 0, i32 0, !dbg !1677
  %84 = load ptr, ptr %83, align 8, !dbg !1677
  %85 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %84, i32 0, i32 6, !dbg !1677
  %86 = getelementptr inbounds [8 x i32], ptr %85, i64 0, i64 1, !dbg !1677
  store i32 4, ptr %86, align 4, !dbg !1677
  %87 = load ptr, ptr %2, align 8, !dbg !1677
  %88 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %87, i32 0, i32 0, !dbg !1677
  %89 = load ptr, ptr %88, align 8, !dbg !1677
  %90 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %89, i32 0, i32 0, !dbg !1677
  %91 = load ptr, ptr %90, align 8, !dbg !1677
  %92 = load ptr, ptr %2, align 8, !dbg !1677
  call void %91(ptr noundef %92), !dbg !1677
  br label %93, !dbg !1677

93:                                               ; preds = %69, %64
  %94 = load ptr, ptr %2, align 8, !dbg !1678
  %95 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %94, i32 0, i32 6, !dbg !1679
  %96 = load i32, ptr %95, align 8, !dbg !1679
  %97 = zext i32 %96 to i64, !dbg !1680
  %98 = load ptr, ptr %2, align 8, !dbg !1681
  %99 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %98, i32 0, i32 38, !dbg !1682
  %100 = load i32, ptr %99, align 8, !dbg !1682
  %101 = mul nsw i32 %100, 8, !dbg !1683
  %102 = sext i32 %101 to i64, !dbg !1684
  %103 = call i64 @jdiv_round_up(i64 noundef %97, i64 noundef %102), !dbg !1685
  %104 = trunc i64 %103 to i32, !dbg !1686
  %105 = load ptr, ptr %2, align 8, !dbg !1687
  %106 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %105, i32 0, i32 43, !dbg !1688
  store i32 %104, ptr %106, align 8, !dbg !1689
  %107 = load ptr, ptr %2, align 8, !dbg !1690
  %108 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %107, i32 0, i32 7, !dbg !1691
  %109 = load i32, ptr %108, align 4, !dbg !1691
  %110 = zext i32 %109 to i64, !dbg !1692
  %111 = load ptr, ptr %2, align 8, !dbg !1693
  %112 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %111, i32 0, i32 39, !dbg !1694
  %113 = load i32, ptr %112, align 4, !dbg !1694
  %114 = mul nsw i32 %113, 8, !dbg !1695
  %115 = sext i32 %114 to i64, !dbg !1696
  %116 = call i64 @jdiv_round_up(i64 noundef %110, i64 noundef %115), !dbg !1697
  %117 = trunc i64 %116 to i32, !dbg !1698
  %118 = load ptr, ptr %2, align 8, !dbg !1699
  %119 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %118, i32 0, i32 44, !dbg !1700
  store i32 %117, ptr %119, align 4, !dbg !1701
  %120 = load ptr, ptr %2, align 8, !dbg !1702
  %121 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %120, i32 0, i32 45, !dbg !1703
  store i32 0, ptr %121, align 8, !dbg !1704
  store i32 0, ptr %3, align 4, !dbg !1705
  br label %122, !dbg !1707

122:                                              ; preds = %230, %93
  %123 = load i32, ptr %3, align 4, !dbg !1708
  %124 = load ptr, ptr %2, align 8, !dbg !1710
  %125 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %124, i32 0, i32 41, !dbg !1711
  %126 = load i32, ptr %125, align 4, !dbg !1711
  %127 = icmp slt i32 %123, %126, !dbg !1712
  br i1 %127, label %128, label %233, !dbg !1713

128:                                              ; preds = %122
  %129 = load ptr, ptr %2, align 8, !dbg !1714
  %130 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %129, i32 0, i32 42, !dbg !1716
  %131 = load i32, ptr %3, align 4, !dbg !1717
  %132 = sext i32 %131 to i64, !dbg !1714
  %133 = getelementptr inbounds [4 x ptr], ptr %130, i64 0, i64 %132, !dbg !1714
  %134 = load ptr, ptr %133, align 8, !dbg !1714
  store ptr %134, ptr %6, align 8, !dbg !1718
  %135 = load ptr, ptr %6, align 8, !dbg !1719
  %136 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %135, i32 0, i32 2, !dbg !1720
  %137 = load i32, ptr %136, align 8, !dbg !1720
  %138 = load ptr, ptr %6, align 8, !dbg !1721
  %139 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %138, i32 0, i32 13, !dbg !1722
  store i32 %137, ptr %139, align 4, !dbg !1723
  %140 = load ptr, ptr %6, align 8, !dbg !1724
  %141 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %140, i32 0, i32 3, !dbg !1725
  %142 = load i32, ptr %141, align 4, !dbg !1725
  %143 = load ptr, ptr %6, align 8, !dbg !1726
  %144 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %143, i32 0, i32 14, !dbg !1727
  store i32 %142, ptr %144, align 8, !dbg !1728
  %145 = load ptr, ptr %6, align 8, !dbg !1729
  %146 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %145, i32 0, i32 13, !dbg !1730
  %147 = load i32, ptr %146, align 4, !dbg !1730
  %148 = load ptr, ptr %6, align 8, !dbg !1731
  %149 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %148, i32 0, i32 14, !dbg !1732
  %150 = load i32, ptr %149, align 8, !dbg !1732
  %151 = mul nsw i32 %147, %150, !dbg !1733
  %152 = load ptr, ptr %6, align 8, !dbg !1734
  %153 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %152, i32 0, i32 15, !dbg !1735
  store i32 %151, ptr %153, align 4, !dbg !1736
  %154 = load ptr, ptr %6, align 8, !dbg !1737
  %155 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %154, i32 0, i32 13, !dbg !1738
  %156 = load i32, ptr %155, align 4, !dbg !1738
  %157 = mul nsw i32 %156, 8, !dbg !1739
  %158 = load ptr, ptr %6, align 8, !dbg !1740
  %159 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %158, i32 0, i32 16, !dbg !1741
  store i32 %157, ptr %159, align 8, !dbg !1742
  %160 = load ptr, ptr %6, align 8, !dbg !1743
  %161 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %160, i32 0, i32 7, !dbg !1744
  %162 = load i32, ptr %161, align 4, !dbg !1744
  %163 = load ptr, ptr %6, align 8, !dbg !1745
  %164 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %163, i32 0, i32 13, !dbg !1746
  %165 = load i32, ptr %164, align 4, !dbg !1746
  %166 = urem i32 %162, %165, !dbg !1747
  store i32 %166, ptr %5, align 4, !dbg !1748
  %167 = load i32, ptr %5, align 4, !dbg !1749
  %168 = icmp eq i32 %167, 0, !dbg !1751
  br i1 %168, label %169, label %173, !dbg !1751

169:                                              ; preds = %128
  %170 = load ptr, ptr %6, align 8, !dbg !1752
  %171 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %170, i32 0, i32 13, !dbg !1753
  %172 = load i32, ptr %171, align 4, !dbg !1753
  store i32 %172, ptr %5, align 4, !dbg !1754
  br label %173, !dbg !1755

173:                                              ; preds = %169, %128
  %174 = load i32, ptr %5, align 4, !dbg !1756
  %175 = load ptr, ptr %6, align 8, !dbg !1757
  %176 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %175, i32 0, i32 17, !dbg !1758
  store i32 %174, ptr %176, align 4, !dbg !1759
  %177 = load ptr, ptr %6, align 8, !dbg !1760
  %178 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %177, i32 0, i32 8, !dbg !1761
  %179 = load i32, ptr %178, align 8, !dbg !1761
  %180 = load ptr, ptr %6, align 8, !dbg !1762
  %181 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %180, i32 0, i32 14, !dbg !1763
  %182 = load i32, ptr %181, align 8, !dbg !1763
  %183 = urem i32 %179, %182, !dbg !1764
  store i32 %183, ptr %5, align 4, !dbg !1765
  %184 = load i32, ptr %5, align 4, !dbg !1766
  %185 = icmp eq i32 %184, 0, !dbg !1768
  br i1 %185, label %186, label %190, !dbg !1768

186:                                              ; preds = %173
  %187 = load ptr, ptr %6, align 8, !dbg !1769
  %188 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %187, i32 0, i32 14, !dbg !1770
  %189 = load i32, ptr %188, align 8, !dbg !1770
  store i32 %189, ptr %5, align 4, !dbg !1771
  br label %190, !dbg !1772

190:                                              ; preds = %186, %173
  %191 = load i32, ptr %5, align 4, !dbg !1773
  %192 = load ptr, ptr %6, align 8, !dbg !1774
  %193 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %192, i32 0, i32 18, !dbg !1775
  store i32 %191, ptr %193, align 8, !dbg !1776
  %194 = load ptr, ptr %6, align 8, !dbg !1777
  %195 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %194, i32 0, i32 15, !dbg !1778
  %196 = load i32, ptr %195, align 4, !dbg !1778
  store i32 %196, ptr %4, align 4, !dbg !1779
  %197 = load ptr, ptr %2, align 8, !dbg !1780
  %198 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %197, i32 0, i32 45, !dbg !1782
  %199 = load i32, ptr %198, align 8, !dbg !1782
  %200 = load i32, ptr %4, align 4, !dbg !1783
  %201 = add nsw i32 %199, %200, !dbg !1784
  %202 = icmp sgt i32 %201, 10, !dbg !1785
  br i1 %202, label %203, label %214, !dbg !1785

203:                                              ; preds = %190
  %204 = load ptr, ptr %2, align 8, !dbg !1786
  %205 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %204, i32 0, i32 0, !dbg !1786
  %206 = load ptr, ptr %205, align 8, !dbg !1786
  %207 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %206, i32 0, i32 5, !dbg !1786
  store i32 11, ptr %207, align 8, !dbg !1786
  %208 = load ptr, ptr %2, align 8, !dbg !1786
  %209 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %208, i32 0, i32 0, !dbg !1786
  %210 = load ptr, ptr %209, align 8, !dbg !1786
  %211 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %210, i32 0, i32 0, !dbg !1786
  %212 = load ptr, ptr %211, align 8, !dbg !1786
  %213 = load ptr, ptr %2, align 8, !dbg !1786
  call void %212(ptr noundef %213), !dbg !1786
  br label %214, !dbg !1786

214:                                              ; preds = %203, %190
  br label %215, !dbg !1787

215:                                              ; preds = %219, %214
  %216 = load i32, ptr %4, align 4, !dbg !1788
  %217 = add nsw i32 %216, -1, !dbg !1788
  store i32 %217, ptr %4, align 4, !dbg !1788
  %218 = icmp sgt i32 %216, 0, !dbg !1789
  br i1 %218, label %219, label %229, !dbg !1787

219:                                              ; preds = %215
  %220 = load i32, ptr %3, align 4, !dbg !1790
  %221 = load ptr, ptr %2, align 8, !dbg !1792
  %222 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %221, i32 0, i32 46, !dbg !1793
  %223 = load ptr, ptr %2, align 8, !dbg !1794
  %224 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %223, i32 0, i32 45, !dbg !1795
  %225 = load i32, ptr %224, align 8, !dbg !1796
  %226 = add nsw i32 %225, 1, !dbg !1796
  store i32 %226, ptr %224, align 8, !dbg !1796
  %227 = sext i32 %225 to i64, !dbg !1792
  %228 = getelementptr inbounds [10 x i32], ptr %222, i64 0, i64 %227, !dbg !1792
  store i32 %220, ptr %228, align 4, !dbg !1797
  br label %215, !dbg !1787, !llvm.loop !1798

229:                                              ; preds = %215
  br label %230, !dbg !1800

230:                                              ; preds = %229
  %231 = load i32, ptr %3, align 4, !dbg !1801
  %232 = add nsw i32 %231, 1, !dbg !1801
  store i32 %232, ptr %3, align 4, !dbg !1801
  br label %122, !dbg !1802, !llvm.loop !1803

233:                                              ; preds = %122
  br label %234

234:                                              ; preds = %233, %50
  %235 = load ptr, ptr %2, align 8, !dbg !1805
  %236 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %235, i32 0, i32 30, !dbg !1807
  %237 = load i32, ptr %236, align 4, !dbg !1807
  %238 = icmp sgt i32 %237, 0, !dbg !1808
  br i1 %238, label %239, label %259, !dbg !1808

239:                                              ; preds = %234
    #dbg_declare(ptr %7, !1809, !DIExpression(), !1811)
  %240 = load ptr, ptr %2, align 8, !dbg !1812
  %241 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %240, i32 0, i32 30, !dbg !1813
  %242 = load i32, ptr %241, align 4, !dbg !1813
  %243 = sext i32 %242 to i64, !dbg !1814
  %244 = load ptr, ptr %2, align 8, !dbg !1815
  %245 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %244, i32 0, i32 43, !dbg !1816
  %246 = load i32, ptr %245, align 8, !dbg !1816
  %247 = zext i32 %246 to i64, !dbg !1817
  %248 = mul nsw i64 %243, %247, !dbg !1818
  store i64 %248, ptr %7, align 8, !dbg !1811
  %249 = load i64, ptr %7, align 8, !dbg !1819
  %250 = icmp slt i64 %249, 65535, !dbg !1819
  br i1 %250, label %251, label %253, !dbg !1819

251:                                              ; preds = %239
  %252 = load i64, ptr %7, align 8, !dbg !1819
  br label %254, !dbg !1819

253:                                              ; preds = %239
  br label %254, !dbg !1819

254:                                              ; preds = %253, %251
  %255 = phi i64 [ %252, %251 ], [ 65535, %253 ], !dbg !1819
  %256 = trunc i64 %255 to i32, !dbg !1820
  %257 = load ptr, ptr %2, align 8, !dbg !1821
  %258 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %257, i32 0, i32 29, !dbg !1822
  store i32 %256, ptr %258, align 8, !dbg !1823
  br label %259, !dbg !1824

259:                                              ; preds = %254, %234
  ret void, !dbg !1825
}

declare i64 @jdiv_round_up(i64 noundef, i64 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!536, !537, !538, !539, !540, !541, !542}
!llvm.ident = !{!543}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !154, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jcmaster.c", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "59007ed8f612b422d63e57000b62950e")
!2 = !{!3, !13, !18, !25, !30}
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
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1, line: 21, baseType: !5, size: 32, elements: !26)
!26 = !{!27, !28, !29}
!27 = !DIEnumerator(name: "main_pass", value: 0)
!28 = !DIEnumerator(name: "huff_opt_pass", value: 1)
!29 = !DIEnumerator(name: "output_pass", value: 2)
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
!154 = !{!155, !179, !194, !436, !192, !193, !209, !254, !5}
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "my_master_ptr", file: !1, line: 38, baseType: !156)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "my_comp_master", file: !1, line: 36, baseType: !158)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 27, size: 384, elements: !159)
!159 = !{!160, !531, !533, !534, !535}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "pub", scope: !158, file: !1, line: 28, baseType: !161, size: 256)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_comp_master", file: !19, line: 45, size: 256, elements: !162)
!162 = !{!163, !527, !528, !529, !530}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_for_pass", scope: !161, file: !19, line: 46, baseType: !164, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = !DISubroutineType(types: !166)
!166 = !{null, !167}
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "j_compress_ptr", file: !4, line: 249, baseType: !168)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_compress_struct", file: !4, line: 255, size: 3968, elements: !170)
!170 = !{!171, !298, !299, !300, !301, !302, !316, !317, !318, !319, !321, !323, !324, !325, !326, !361, !365, !381, !382, !386, !387, !388, !389, !402, !403, !404, !405, !406, !407, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !424, !425, !426, !427, !431, !432, !433, !434, !435, !437, !451, !462, !471, !486, !495, !505, !514}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !169, file: !4, line: 256, baseType: !172, size: 64)
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
!298 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !169, file: !4, line: 256, baseType: !185, size: 64, offset: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "progress", scope: !169, file: !4, line: 256, baseType: !256, size: 64, offset: 128)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "is_decompressor", scope: !169, file: !4, line: 256, baseType: !231, size: 32, offset: 192)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "global_state", scope: !169, file: !4, line: 256, baseType: !193, size: 32, offset: 224)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !169, file: !4, line: 259, baseType: !303, size: 64, offset: 256)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_destination_mgr", file: !4, line: 688, size: 320, elements: !305)
!305 = !{!306, !309, !310, !311, !315}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "next_output_byte", scope: !304, file: !4, line: 689, baseType: !307, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "JOCTET", file: !207, line: 110, baseType: !208)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "free_in_buffer", scope: !304, file: !4, line: 690, baseType: !194, size: 64, offset: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "init_destination", scope: !304, file: !4, line: 692, baseType: !164, size: 64, offset: 128)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "empty_output_buffer", scope: !304, file: !4, line: 693, baseType: !312, size: 64, offset: 192)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = !DISubroutineType(types: !314)
!314 = !{!231, !167}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "term_destination", scope: !304, file: !4, line: 694, baseType: !164, size: 64, offset: 256)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "image_width", scope: !169, file: !4, line: 266, baseType: !209, size: 32, offset: 320)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "image_height", scope: !169, file: !4, line: 267, baseType: !209, size: 32, offset: 352)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "input_components", scope: !169, file: !4, line: 268, baseType: !193, size: 32, offset: 384)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "in_color_space", scope: !169, file: !4, line: 269, baseType: !320, size: 32, offset: 416)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_COLOR_SPACE", file: !4, line: 201, baseType: !3)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "input_gamma", scope: !169, file: !4, line: 271, baseType: !322, size: 64, offset: 448)
!322 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "data_precision", scope: !169, file: !4, line: 281, baseType: !193, size: 32, offset: 512)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "num_components", scope: !169, file: !4, line: 283, baseType: !193, size: 32, offset: 544)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "jpeg_color_space", scope: !169, file: !4, line: 284, baseType: !320, size: 32, offset: 576)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "comp_info", scope: !169, file: !4, line: 286, baseType: !327, size: 64, offset: 640)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "jpeg_component_info", file: !4, line: 179, baseType: !329)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 116, size: 768, elements: !330)
!330 = !{!331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !360}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "component_id", scope: !329, file: !4, line: 120, baseType: !193, size: 32)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "component_index", scope: !329, file: !4, line: 121, baseType: !193, size: 32, offset: 32)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "h_samp_factor", scope: !329, file: !4, line: 122, baseType: !193, size: 32, offset: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "v_samp_factor", scope: !329, file: !4, line: 123, baseType: !193, size: 32, offset: 96)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "quant_tbl_no", scope: !329, file: !4, line: 124, baseType: !193, size: 32, offset: 128)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "dc_tbl_no", scope: !329, file: !4, line: 129, baseType: !193, size: 32, offset: 160)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tbl_no", scope: !329, file: !4, line: 130, baseType: !193, size: 32, offset: 192)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "width_in_blocks", scope: !329, file: !4, line: 139, baseType: !209, size: 32, offset: 224)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "height_in_blocks", scope: !329, file: !4, line: 140, baseType: !209, size: 32, offset: 256)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "DCT_scaled_size", scope: !329, file: !4, line: 147, baseType: !193, size: 32, offset: 288)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "downsampled_width", scope: !329, file: !4, line: 154, baseType: !209, size: 32, offset: 320)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "downsampled_height", scope: !329, file: !4, line: 155, baseType: !209, size: 32, offset: 352)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "component_needed", scope: !329, file: !4, line: 160, baseType: !231, size: 32, offset: 384)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_width", scope: !329, file: !4, line: 164, baseType: !193, size: 32, offset: 416)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_height", scope: !329, file: !4, line: 165, baseType: !193, size: 32, offset: 448)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_blocks", scope: !329, file: !4, line: 166, baseType: !193, size: 32, offset: 480)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_sample_width", scope: !329, file: !4, line: 167, baseType: !193, size: 32, offset: 512)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "last_col_width", scope: !329, file: !4, line: 168, baseType: !193, size: 32, offset: 544)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "last_row_height", scope: !329, file: !4, line: 169, baseType: !193, size: 32, offset: 576)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "quant_table", scope: !329, file: !4, line: 175, baseType: !351, size: 64, offset: 640)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "JQUANT_TBL", file: !4, line: 95, baseType: !353)
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 83, size: 1056, elements: !354)
!354 = !{!355, !359}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "quantval", scope: !353, file: !4, line: 88, baseType: !356, size: 1024)
!356 = !DICompositeType(tag: DW_TAG_array_type, baseType: !357, size: 1024, elements: !222)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT16", file: !207, line: 147, baseType: !358)
!358 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "sent_table", scope: !353, file: !4, line: 94, baseType: !231, size: 32, offset: 1024)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "dct_table", scope: !329, file: !4, line: 178, baseType: !192, size: 64, offset: 704)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "quant_tbl_ptrs", scope: !169, file: !4, line: 289, baseType: !362, size: 256, offset: 704)
!362 = !DICompositeType(tag: DW_TAG_array_type, baseType: !351, size: 256, elements: !363)
!363 = !{!364}
!364 = !DISubrange(count: 4)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "dc_huff_tbl_ptrs", scope: !169, file: !4, line: 292, baseType: !366, size: 256, offset: 960)
!366 = !DICompositeType(tag: DW_TAG_array_type, baseType: !367, size: 256, elements: !363)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "JHUFF_TBL", file: !4, line: 111, baseType: !369)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 100, size: 2240, elements: !370)
!370 = !{!371, !376, !380}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !369, file: !4, line: 102, baseType: !372, size: 136)
!372 = !DICompositeType(tag: DW_TAG_array_type, baseType: !373, size: 136, elements: !374)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT8", file: !207, line: 135, baseType: !208)
!374 = !{!375}
!375 = !DISubrange(count: 17)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "huffval", scope: !369, file: !4, line: 104, baseType: !377, size: 2048, offset: 136)
!377 = !DICompositeType(tag: DW_TAG_array_type, baseType: !373, size: 2048, elements: !378)
!378 = !{!379}
!379 = !DISubrange(count: 256)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "sent_table", scope: !369, file: !4, line: 110, baseType: !231, size: 32, offset: 2208)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "ac_huff_tbl_ptrs", scope: !169, file: !4, line: 293, baseType: !366, size: 256, offset: 1216)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "arith_dc_L", scope: !169, file: !4, line: 296, baseType: !383, size: 128, offset: 1472)
!383 = !DICompositeType(tag: DW_TAG_array_type, baseType: !373, size: 128, elements: !384)
!384 = !{!385}
!385 = !DISubrange(count: 16)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "arith_dc_U", scope: !169, file: !4, line: 297, baseType: !383, size: 128, offset: 1600)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "arith_ac_K", scope: !169, file: !4, line: 298, baseType: !383, size: 128, offset: 1728)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "num_scans", scope: !169, file: !4, line: 300, baseType: !193, size: 32, offset: 1856)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "scan_info", scope: !169, file: !4, line: 301, baseType: !390, size: 64, offset: 1920)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !392)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "jpeg_scan_info", file: !4, line: 189, baseType: !393)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 184, size: 288, elements: !394)
!394 = !{!395, !396, !398, !399, !400, !401}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "comps_in_scan", scope: !393, file: !4, line: 185, baseType: !193, size: 32)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "component_index", scope: !393, file: !4, line: 186, baseType: !397, size: 128, offset: 32)
!397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, size: 128, elements: !363)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "Ss", scope: !393, file: !4, line: 187, baseType: !193, size: 32, offset: 160)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "Se", scope: !393, file: !4, line: 187, baseType: !193, size: 32, offset: 192)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "Ah", scope: !393, file: !4, line: 188, baseType: !193, size: 32, offset: 224)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "Al", scope: !393, file: !4, line: 188, baseType: !193, size: 32, offset: 256)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "raw_data_in", scope: !169, file: !4, line: 307, baseType: !231, size: 32, offset: 1984)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "arith_code", scope: !169, file: !4, line: 308, baseType: !231, size: 32, offset: 2016)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_coding", scope: !169, file: !4, line: 309, baseType: !231, size: 32, offset: 2048)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "CCIR601_sampling", scope: !169, file: !4, line: 310, baseType: !231, size: 32, offset: 2080)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "smoothing_factor", scope: !169, file: !4, line: 311, baseType: !193, size: 32, offset: 2112)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "dct_method", scope: !169, file: !4, line: 312, baseType: !408, size: 32, offset: 2144)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_DCT_METHOD", file: !4, line: 209, baseType: !13)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "restart_interval", scope: !169, file: !4, line: 319, baseType: !5, size: 32, offset: 2176)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "restart_in_rows", scope: !169, file: !4, line: 320, baseType: !193, size: 32, offset: 2208)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "write_JFIF_header", scope: !169, file: !4, line: 324, baseType: !231, size: 32, offset: 2240)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "density_unit", scope: !169, file: !4, line: 329, baseType: !373, size: 8, offset: 2272)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "X_density", scope: !169, file: !4, line: 330, baseType: !357, size: 16, offset: 2288)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "Y_density", scope: !169, file: !4, line: 331, baseType: !357, size: 16, offset: 2304)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "write_Adobe_marker", scope: !169, file: !4, line: 332, baseType: !231, size: 32, offset: 2336)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "next_scanline", scope: !169, file: !4, line: 339, baseType: !209, size: 32, offset: 2368)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "progressive_mode", scope: !169, file: !4, line: 348, baseType: !231, size: 32, offset: 2400)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "max_h_samp_factor", scope: !169, file: !4, line: 349, baseType: !193, size: 32, offset: 2432)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "max_v_samp_factor", scope: !169, file: !4, line: 350, baseType: !193, size: 32, offset: 2464)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "total_iMCU_rows", scope: !169, file: !4, line: 352, baseType: !209, size: 32, offset: 2496)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "comps_in_scan", scope: !169, file: !4, line: 363, baseType: !193, size: 32, offset: 2528)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "cur_comp_info", scope: !169, file: !4, line: 364, baseType: !423, size: 256, offset: 2560)
!423 = !DICompositeType(tag: DW_TAG_array_type, baseType: !327, size: 256, elements: !363)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "MCUs_per_row", scope: !169, file: !4, line: 367, baseType: !209, size: 32, offset: 2816)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_rows_in_scan", scope: !169, file: !4, line: 368, baseType: !209, size: 32, offset: 2848)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "blocks_in_MCU", scope: !169, file: !4, line: 370, baseType: !193, size: 32, offset: 2880)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_membership", scope: !169, file: !4, line: 371, baseType: !428, size: 320, offset: 2912)
!428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, size: 320, elements: !429)
!429 = !{!430}
!430 = !DISubrange(count: 10)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "Ss", scope: !169, file: !4, line: 375, baseType: !193, size: 32, offset: 3232)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "Se", scope: !169, file: !4, line: 375, baseType: !193, size: 32, offset: 3264)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "Ah", scope: !169, file: !4, line: 375, baseType: !193, size: 32, offset: 3296)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "Al", scope: !169, file: !4, line: 375, baseType: !193, size: 32, offset: 3328)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !169, file: !4, line: 380, baseType: !436, size: 64, offset: 3392)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "main", scope: !169, file: !4, line: 381, baseType: !438, size: 64, offset: 3456)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_c_main_controller", file: !19, line: 56, size: 128, elements: !440)
!440 = !{!441, !446}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !439, file: !19, line: 57, baseType: !442, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = !DISubroutineType(types: !444)
!444 = !{null, !167, !445}
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_BUF_MODE", file: !19, line: 22, baseType: !18)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "process_data", scope: !439, file: !19, line: 58, baseType: !447, size: 64, offset: 64)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = !DISubroutineType(types: !449)
!449 = !{null, !167, !202, !450, !209}
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "prep", scope: !169, file: !4, line: 382, baseType: !452, size: 64, offset: 3520)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_c_prep_controller", file: !19, line: 64, size: 128, elements: !454)
!454 = !{!455, !456}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !453, file: !19, line: 65, baseType: !442, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "pre_process_data", scope: !453, file: !19, line: 66, baseType: !457, size: 64, offset: 64)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = !DISubroutineType(types: !459)
!459 = !{null, !167, !202, !450, !209, !460, !450, !209}
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPIMAGE", file: !4, line: 68, baseType: !461)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "coef", scope: !169, file: !4, line: 383, baseType: !463, size: 64, offset: 3584)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_c_coef_controller", file: !19, line: 76, size: 128, elements: !465)
!465 = !{!466, !467}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !464, file: !19, line: 77, baseType: !442, size: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "compress_data", scope: !464, file: !19, line: 78, baseType: !468, size: 64, offset: 64)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = !DISubroutineType(types: !470)
!470 = !{!231, !167, !460}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "marker", scope: !169, file: !4, line: 384, baseType: !472, size: 64, offset: 3648)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_marker_writer", file: !19, line: 120, size: 384, elements: !474)
!474 = !{!475, !481, !482, !483, !484, !485}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "write_any_marker", scope: !473, file: !19, line: 123, baseType: !476, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = !DISubroutineType(types: !478)
!478 = !{null, !167, !193, !479, !5}
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !308)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_header", scope: !473, file: !19, line: 125, baseType: !164, size: 64, offset: 64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "write_frame_header", scope: !473, file: !19, line: 126, baseType: !164, size: 64, offset: 128)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "write_scan_header", scope: !473, file: !19, line: 127, baseType: !164, size: 64, offset: 192)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_trailer", scope: !473, file: !19, line: 128, baseType: !164, size: 64, offset: 256)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "write_tables_only", scope: !473, file: !19, line: 129, baseType: !164, size: 64, offset: 320)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "cconvert", scope: !169, file: !4, line: 385, baseType: !487, size: 64, offset: 3712)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_color_converter", file: !19, line: 83, size: 128, elements: !489)
!489 = !{!490, !491}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !488, file: !19, line: 84, baseType: !164, size: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "color_convert", scope: !488, file: !19, line: 85, baseType: !492, size: 64, offset: 64)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = !DISubroutineType(types: !494)
!494 = !{null, !167, !202, !460, !209, !193}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "downsample", scope: !169, file: !4, line: 386, baseType: !496, size: 64, offset: 3776)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_downsampler", file: !19, line: 91, size: 192, elements: !498)
!498 = !{!499, !500, !504}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !497, file: !19, line: 92, baseType: !164, size: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "downsample", scope: !497, file: !19, line: 93, baseType: !501, size: 64, offset: 64)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = !DISubroutineType(types: !503)
!503 = !{null, !167, !460, !209, !460, !209}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "need_context_rows", scope: !497, file: !19, line: 98, baseType: !231, size: 32, offset: 128)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "fdct", scope: !169, file: !4, line: 387, baseType: !506, size: 64, offset: 3840)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_forward_dct", file: !19, line: 102, size: 128, elements: !508)
!508 = !{!509, !510}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !507, file: !19, line: 103, baseType: !164, size: 64)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "forward_DCT", scope: !507, file: !19, line: 105, baseType: !511, size: 64, offset: 64)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!512 = !DISubroutineType(types: !513)
!513 = !{null, !167, !327, !202, !216, !209, !209, !209}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "entropy", scope: !169, file: !4, line: 388, baseType: !515, size: 64, offset: 3904)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_entropy_encoder", file: !19, line: 113, size: 192, elements: !517)
!517 = !{!518, !522, !526}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !516, file: !19, line: 114, baseType: !519, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = !DISubroutineType(types: !521)
!521 = !{null, !167, !231}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "encode_mcu", scope: !516, file: !19, line: 115, baseType: !523, size: 64, offset: 64)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = !DISubroutineType(types: !525)
!525 = !{!231, !167, !215}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "finish_pass", scope: !516, file: !19, line: 116, baseType: !164, size: 64, offset: 128)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "pass_startup", scope: !161, file: !19, line: 47, baseType: !164, size: 64, offset: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "finish_pass", scope: !161, file: !19, line: 48, baseType: !164, size: 64, offset: 128)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "call_pass_startup", scope: !161, file: !19, line: 51, baseType: !231, size: 32, offset: 192)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "is_last_pass", scope: !161, file: !19, line: 52, baseType: !231, size: 32, offset: 224)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "pass_type", scope: !158, file: !1, line: 30, baseType: !532, size: 32, offset: 256)
!532 = !DIDerivedType(tag: DW_TAG_typedef, name: "c_pass_type", file: !1, line: 25, baseType: !25)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !158, file: !1, line: 32, baseType: !193, size: 32, offset: 288)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "total_passes", scope: !158, file: !1, line: 33, baseType: !193, size: 32, offset: 320)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "scan_number", scope: !158, file: !1, line: 35, baseType: !193, size: 32, offset: 352)
!536 = !{i32 7, !"Dwarf Version", i32 5}
!537 = !{i32 2, !"Debug Info Version", i32 3}
!538 = !{i32 1, !"wchar_size", i32 4}
!539 = !{i32 8, !"PIC Level", i32 2}
!540 = !{i32 7, !"PIE Level", i32 2}
!541 = !{i32 7, !"uwtable", i32 2}
!542 = !{i32 7, !"frame-pointer", i32 2}
!543 = !{!"clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)"}
!544 = distinct !DISubprogram(name: "jinit_c_master_control", scope: !1, file: !1, line: 531, type: !520, scopeLine: 532, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !545)
!545 = !{}
!546 = !DILocalVariable(name: "cinfo", arg: 1, scope: !544, file: !1, line: 531, type: !167)
!547 = !DILocation(line: 531, column: 40, scope: !544)
!548 = !DILocalVariable(name: "transcode_only", arg: 2, scope: !544, file: !1, line: 531, type: !231)
!549 = !DILocation(line: 531, column: 55, scope: !544)
!550 = !DILocalVariable(name: "master", scope: !544, file: !1, line: 533, type: !155)
!551 = !DILocation(line: 533, column: 17, scope: !544)
!552 = !DILocation(line: 536, column: 9, scope: !544)
!553 = !DILocation(line: 536, column: 16, scope: !544)
!554 = !DILocation(line: 536, column: 21, scope: !544)
!555 = !DILocation(line: 536, column: 50, scope: !544)
!556 = !DILocation(line: 536, column: 7, scope: !544)
!557 = !DILocation(line: 535, column: 10, scope: !544)
!558 = !DILocation(line: 538, column: 47, scope: !544)
!559 = !DILocation(line: 538, column: 3, scope: !544)
!560 = !DILocation(line: 538, column: 10, scope: !544)
!561 = !DILocation(line: 538, column: 17, scope: !544)
!562 = !DILocation(line: 539, column: 3, scope: !544)
!563 = !DILocation(line: 539, column: 11, scope: !544)
!564 = !DILocation(line: 539, column: 15, scope: !544)
!565 = !DILocation(line: 539, column: 32, scope: !544)
!566 = !DILocation(line: 540, column: 3, scope: !544)
!567 = !DILocation(line: 540, column: 11, scope: !544)
!568 = !DILocation(line: 540, column: 15, scope: !544)
!569 = !DILocation(line: 540, column: 28, scope: !544)
!570 = !DILocation(line: 541, column: 3, scope: !544)
!571 = !DILocation(line: 541, column: 11, scope: !544)
!572 = !DILocation(line: 541, column: 15, scope: !544)
!573 = !DILocation(line: 541, column: 27, scope: !544)
!574 = !DILocation(line: 542, column: 3, scope: !544)
!575 = !DILocation(line: 542, column: 11, scope: !544)
!576 = !DILocation(line: 542, column: 15, scope: !544)
!577 = !DILocation(line: 542, column: 28, scope: !544)
!578 = !DILocation(line: 545, column: 17, scope: !544)
!579 = !DILocation(line: 545, column: 3, scope: !544)
!580 = !DILocation(line: 547, column: 7, scope: !581)
!581 = distinct !DILexicalBlock(scope: !544, file: !1, line: 547, column: 7)
!582 = !DILocation(line: 547, column: 14, scope: !581)
!583 = !DILocation(line: 547, column: 24, scope: !581)
!584 = !DILocation(line: 549, column: 21, scope: !585)
!585 = distinct !DILexicalBlock(scope: !581, file: !1, line: 547, column: 33)
!586 = !DILocation(line: 549, column: 5, scope: !585)
!587 = !DILocation(line: 553, column: 3, scope: !585)
!588 = !DILocation(line: 554, column: 5, scope: !589)
!589 = distinct !DILexicalBlock(scope: !581, file: !1, line: 553, column: 10)
!590 = !DILocation(line: 554, column: 12, scope: !589)
!591 = !DILocation(line: 554, column: 29, scope: !589)
!592 = !DILocation(line: 555, column: 5, scope: !589)
!593 = !DILocation(line: 555, column: 12, scope: !589)
!594 = !DILocation(line: 555, column: 22, scope: !589)
!595 = !DILocation(line: 558, column: 7, scope: !596)
!596 = distinct !DILexicalBlock(scope: !544, file: !1, line: 558, column: 7)
!597 = !DILocation(line: 558, column: 14, scope: !596)
!598 = !DILocation(line: 559, column: 5, scope: !596)
!599 = !DILocation(line: 559, column: 12, scope: !596)
!600 = !DILocation(line: 559, column: 28, scope: !596)
!601 = !DILocation(line: 562, column: 7, scope: !602)
!602 = distinct !DILexicalBlock(scope: !544, file: !1, line: 562, column: 7)
!603 = !DILocation(line: 564, column: 9, scope: !604)
!604 = distinct !DILexicalBlock(scope: !605, file: !1, line: 564, column: 9)
!605 = distinct !DILexicalBlock(scope: !602, file: !1, line: 562, column: 23)
!606 = !DILocation(line: 564, column: 16, scope: !604)
!607 = !DILocation(line: 565, column: 7, scope: !604)
!608 = !DILocation(line: 565, column: 15, scope: !604)
!609 = !DILocation(line: 565, column: 25, scope: !604)
!610 = !DILocation(line: 567, column: 7, scope: !604)
!611 = !DILocation(line: 567, column: 15, scope: !604)
!612 = !DILocation(line: 567, column: 25, scope: !604)
!613 = !DILocation(line: 568, column: 3, scope: !605)
!614 = !DILocation(line: 570, column: 5, scope: !615)
!615 = distinct !DILexicalBlock(scope: !602, file: !1, line: 568, column: 10)
!616 = !DILocation(line: 570, column: 13, scope: !615)
!617 = !DILocation(line: 570, column: 23, scope: !615)
!618 = !DILocation(line: 572, column: 3, scope: !544)
!619 = !DILocation(line: 572, column: 11, scope: !544)
!620 = !DILocation(line: 572, column: 23, scope: !544)
!621 = !DILocation(line: 573, column: 3, scope: !544)
!622 = !DILocation(line: 573, column: 11, scope: !544)
!623 = !DILocation(line: 573, column: 23, scope: !544)
!624 = !DILocation(line: 574, column: 7, scope: !625)
!625 = distinct !DILexicalBlock(scope: !544, file: !1, line: 574, column: 7)
!626 = !DILocation(line: 574, column: 14, scope: !625)
!627 = !DILocation(line: 575, column: 28, scope: !625)
!628 = !DILocation(line: 575, column: 35, scope: !625)
!629 = !DILocation(line: 575, column: 45, scope: !625)
!630 = !DILocation(line: 575, column: 5, scope: !625)
!631 = !DILocation(line: 575, column: 13, scope: !625)
!632 = !DILocation(line: 575, column: 26, scope: !625)
!633 = !DILocation(line: 577, column: 28, scope: !625)
!634 = !DILocation(line: 577, column: 35, scope: !625)
!635 = !DILocation(line: 577, column: 5, scope: !625)
!636 = !DILocation(line: 577, column: 13, scope: !625)
!637 = !DILocation(line: 577, column: 26, scope: !625)
!638 = !DILocation(line: 578, column: 1, scope: !544)
!639 = distinct !DISubprogram(name: "prepare_for_pass", scope: !1, file: !1, line: 389, type: !165, scopeLine: 390, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !545)
!640 = !DILocalVariable(name: "cinfo", arg: 1, scope: !639, file: !1, line: 389, type: !167)
!641 = !DILocation(line: 389, column: 34, scope: !639)
!642 = !DILocalVariable(name: "master", scope: !639, file: !1, line: 391, type: !155)
!643 = !DILocation(line: 391, column: 17, scope: !639)
!644 = !DILocation(line: 391, column: 42, scope: !639)
!645 = !DILocation(line: 391, column: 49, scope: !639)
!646 = !DILocation(line: 393, column: 11, scope: !639)
!647 = !DILocation(line: 393, column: 19, scope: !639)
!648 = !DILocation(line: 393, column: 3, scope: !639)
!649 = !DILocation(line: 398, column: 28, scope: !650)
!650 = distinct !DILexicalBlock(scope: !639, file: !1, line: 393, column: 30)
!651 = !DILocation(line: 398, column: 5, scope: !650)
!652 = !DILocation(line: 399, column: 20, scope: !650)
!653 = !DILocation(line: 399, column: 5, scope: !650)
!654 = !DILocation(line: 400, column: 11, scope: !655)
!655 = distinct !DILexicalBlock(scope: !650, file: !1, line: 400, column: 9)
!656 = !DILocation(line: 400, column: 18, scope: !655)
!657 = !DILocation(line: 400, column: 9, scope: !655)
!658 = !DILocation(line: 401, column: 9, scope: !659)
!659 = distinct !DILexicalBlock(scope: !655, file: !1, line: 400, column: 31)
!660 = !DILocation(line: 401, column: 16, scope: !659)
!661 = !DILocation(line: 401, column: 26, scope: !659)
!662 = !DILocation(line: 401, column: 39, scope: !659)
!663 = !DILocation(line: 401, column: 7, scope: !659)
!664 = !DILocation(line: 402, column: 9, scope: !659)
!665 = !DILocation(line: 402, column: 16, scope: !659)
!666 = !DILocation(line: 402, column: 28, scope: !659)
!667 = !DILocation(line: 402, column: 41, scope: !659)
!668 = !DILocation(line: 402, column: 7, scope: !659)
!669 = !DILocation(line: 403, column: 9, scope: !659)
!670 = !DILocation(line: 403, column: 16, scope: !659)
!671 = !DILocation(line: 403, column: 22, scope: !659)
!672 = !DILocation(line: 403, column: 35, scope: !659)
!673 = !DILocation(line: 403, column: 7, scope: !659)
!674 = !DILocation(line: 404, column: 5, scope: !659)
!675 = !DILocation(line: 405, column: 7, scope: !650)
!676 = !DILocation(line: 405, column: 14, scope: !650)
!677 = !DILocation(line: 405, column: 20, scope: !650)
!678 = !DILocation(line: 405, column: 33, scope: !650)
!679 = !DILocation(line: 405, column: 5, scope: !650)
!680 = !DILocation(line: 406, column: 7, scope: !650)
!681 = !DILocation(line: 406, column: 14, scope: !650)
!682 = !DILocation(line: 406, column: 23, scope: !650)
!683 = !DILocation(line: 406, column: 36, scope: !650)
!684 = !DILocation(line: 406, column: 43, scope: !650)
!685 = !DILocation(line: 406, column: 50, scope: !650)
!686 = !DILocation(line: 406, column: 5, scope: !650)
!687 = !DILocation(line: 407, column: 7, scope: !650)
!688 = !DILocation(line: 407, column: 14, scope: !650)
!689 = !DILocation(line: 407, column: 20, scope: !650)
!690 = !DILocation(line: 407, column: 33, scope: !650)
!691 = !DILocation(line: 408, column: 6, scope: !650)
!692 = !DILocation(line: 408, column: 14, scope: !650)
!693 = !DILocation(line: 408, column: 27, scope: !650)
!694 = !DILocation(line: 407, column: 5, scope: !650)
!695 = !DILocation(line: 410, column: 7, scope: !650)
!696 = !DILocation(line: 410, column: 14, scope: !650)
!697 = !DILocation(line: 410, column: 20, scope: !650)
!698 = !DILocation(line: 410, column: 33, scope: !650)
!699 = !DILocation(line: 410, column: 5, scope: !650)
!700 = !DILocation(line: 411, column: 9, scope: !701)
!701 = distinct !DILexicalBlock(scope: !650, file: !1, line: 411, column: 9)
!702 = !DILocation(line: 411, column: 16, scope: !701)
!703 = !DILocation(line: 413, column: 7, scope: !704)
!704 = distinct !DILexicalBlock(scope: !701, file: !1, line: 411, column: 33)
!705 = !DILocation(line: 413, column: 15, scope: !704)
!706 = !DILocation(line: 413, column: 19, scope: !704)
!707 = !DILocation(line: 413, column: 37, scope: !704)
!708 = !DILocation(line: 414, column: 5, scope: !704)
!709 = !DILocation(line: 416, column: 7, scope: !710)
!710 = distinct !DILexicalBlock(scope: !701, file: !1, line: 414, column: 12)
!711 = !DILocation(line: 416, column: 15, scope: !710)
!712 = !DILocation(line: 416, column: 19, scope: !710)
!713 = !DILocation(line: 416, column: 37, scope: !710)
!714 = !DILocation(line: 418, column: 5, scope: !650)
!715 = !DILocation(line: 422, column: 28, scope: !650)
!716 = !DILocation(line: 422, column: 5, scope: !650)
!717 = !DILocation(line: 423, column: 20, scope: !650)
!718 = !DILocation(line: 423, column: 5, scope: !650)
!719 = !DILocation(line: 424, column: 9, scope: !720)
!720 = distinct !DILexicalBlock(scope: !650, file: !1, line: 424, column: 9)
!721 = !DILocation(line: 424, column: 16, scope: !720)
!722 = !DILocation(line: 424, column: 19, scope: !720)
!723 = !DILocation(line: 424, column: 24, scope: !720)
!724 = !DILocation(line: 424, column: 27, scope: !720)
!725 = !DILocation(line: 424, column: 34, scope: !720)
!726 = !DILocation(line: 424, column: 37, scope: !720)
!727 = !DILocation(line: 424, column: 42, scope: !720)
!728 = !DILocation(line: 424, column: 45, scope: !720)
!729 = !DILocation(line: 424, column: 52, scope: !720)
!730 = !DILocation(line: 425, column: 9, scope: !731)
!731 = distinct !DILexicalBlock(scope: !720, file: !1, line: 424, column: 64)
!732 = !DILocation(line: 425, column: 16, scope: !731)
!733 = !DILocation(line: 425, column: 25, scope: !731)
!734 = !DILocation(line: 425, column: 38, scope: !731)
!735 = !DILocation(line: 425, column: 7, scope: !731)
!736 = !DILocation(line: 426, column: 9, scope: !731)
!737 = !DILocation(line: 426, column: 16, scope: !731)
!738 = !DILocation(line: 426, column: 22, scope: !731)
!739 = !DILocation(line: 426, column: 35, scope: !731)
!740 = !DILocation(line: 426, column: 7, scope: !731)
!741 = !DILocation(line: 427, column: 7, scope: !731)
!742 = !DILocation(line: 427, column: 15, scope: !731)
!743 = !DILocation(line: 427, column: 19, scope: !731)
!744 = !DILocation(line: 427, column: 37, scope: !731)
!745 = !DILocation(line: 428, column: 7, scope: !731)
!746 = !DILocation(line: 433, column: 5, scope: !650)
!747 = !DILocation(line: 433, column: 13, scope: !650)
!748 = !DILocation(line: 433, column: 23, scope: !650)
!749 = !DILocation(line: 434, column: 5, scope: !650)
!750 = !DILocation(line: 434, column: 13, scope: !650)
!751 = !DILocation(line: 434, column: 24, scope: !650)
!752 = !DILocation(line: 440, column: 11, scope: !753)
!753 = distinct !DILexicalBlock(scope: !650, file: !1, line: 440, column: 9)
!754 = !DILocation(line: 440, column: 18, scope: !753)
!755 = !DILocation(line: 440, column: 9, scope: !753)
!756 = !DILocation(line: 441, column: 30, scope: !757)
!757 = distinct !DILexicalBlock(scope: !753, file: !1, line: 440, column: 35)
!758 = !DILocation(line: 441, column: 7, scope: !757)
!759 = !DILocation(line: 442, column: 22, scope: !757)
!760 = !DILocation(line: 442, column: 7, scope: !757)
!761 = !DILocation(line: 443, column: 5, scope: !757)
!762 = !DILocation(line: 444, column: 7, scope: !650)
!763 = !DILocation(line: 444, column: 14, scope: !650)
!764 = !DILocation(line: 444, column: 23, scope: !650)
!765 = !DILocation(line: 444, column: 36, scope: !650)
!766 = !DILocation(line: 444, column: 5, scope: !650)
!767 = !DILocation(line: 445, column: 7, scope: !650)
!768 = !DILocation(line: 445, column: 14, scope: !650)
!769 = !DILocation(line: 445, column: 20, scope: !650)
!770 = !DILocation(line: 445, column: 33, scope: !650)
!771 = !DILocation(line: 445, column: 5, scope: !650)
!772 = !DILocation(line: 447, column: 9, scope: !773)
!773 = distinct !DILexicalBlock(scope: !650, file: !1, line: 447, column: 9)
!774 = !DILocation(line: 447, column: 17, scope: !773)
!775 = !DILocation(line: 447, column: 29, scope: !773)
!776 = !DILocation(line: 448, column: 9, scope: !773)
!777 = !DILocation(line: 448, column: 16, scope: !773)
!778 = !DILocation(line: 448, column: 24, scope: !773)
!779 = !DILocation(line: 448, column: 45, scope: !773)
!780 = !DILocation(line: 448, column: 7, scope: !773)
!781 = !DILocation(line: 449, column: 7, scope: !650)
!782 = !DILocation(line: 449, column: 14, scope: !650)
!783 = !DILocation(line: 449, column: 22, scope: !650)
!784 = !DILocation(line: 449, column: 42, scope: !650)
!785 = !DILocation(line: 449, column: 5, scope: !650)
!786 = !DILocation(line: 450, column: 5, scope: !650)
!787 = !DILocation(line: 450, column: 13, scope: !650)
!788 = !DILocation(line: 450, column: 17, scope: !650)
!789 = !DILocation(line: 450, column: 35, scope: !650)
!790 = !DILocation(line: 451, column: 5, scope: !650)
!791 = !DILocation(line: 453, column: 5, scope: !650)
!792 = !DILocation(line: 454, column: 3, scope: !650)
!793 = !DILocation(line: 456, column: 31, scope: !639)
!794 = !DILocation(line: 456, column: 39, scope: !639)
!795 = !DILocation(line: 456, column: 54, scope: !639)
!796 = !DILocation(line: 456, column: 62, scope: !639)
!797 = !DILocation(line: 456, column: 74, scope: !639)
!798 = !DILocation(line: 456, column: 51, scope: !639)
!799 = !DILocation(line: 456, column: 3, scope: !639)
!800 = !DILocation(line: 456, column: 11, scope: !639)
!801 = !DILocation(line: 456, column: 15, scope: !639)
!802 = !DILocation(line: 456, column: 28, scope: !639)
!803 = !DILocation(line: 459, column: 7, scope: !804)
!804 = distinct !DILexicalBlock(scope: !639, file: !1, line: 459, column: 7)
!805 = !DILocation(line: 459, column: 14, scope: !804)
!806 = !DILocation(line: 459, column: 23, scope: !804)
!807 = !DILocation(line: 460, column: 41, scope: !808)
!808 = distinct !DILexicalBlock(scope: !804, file: !1, line: 459, column: 32)
!809 = !DILocation(line: 460, column: 49, scope: !808)
!810 = !DILocation(line: 460, column: 5, scope: !808)
!811 = !DILocation(line: 460, column: 12, scope: !808)
!812 = !DILocation(line: 460, column: 22, scope: !808)
!813 = !DILocation(line: 460, column: 39, scope: !808)
!814 = !DILocation(line: 461, column: 37, scope: !808)
!815 = !DILocation(line: 461, column: 45, scope: !808)
!816 = !DILocation(line: 461, column: 5, scope: !808)
!817 = !DILocation(line: 461, column: 12, scope: !808)
!818 = !DILocation(line: 461, column: 22, scope: !808)
!819 = !DILocation(line: 461, column: 35, scope: !808)
!820 = !DILocation(line: 462, column: 3, scope: !808)
!821 = !DILocation(line: 463, column: 1, scope: !639)
!822 = distinct !DISubprogram(name: "pass_startup", scope: !1, file: !1, line: 477, type: !165, scopeLine: 478, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !545)
!823 = !DILocalVariable(name: "cinfo", arg: 1, scope: !822, file: !1, line: 477, type: !167)
!824 = !DILocation(line: 477, column: 30, scope: !822)
!825 = !DILocation(line: 479, column: 3, scope: !822)
!826 = !DILocation(line: 479, column: 10, scope: !822)
!827 = !DILocation(line: 479, column: 18, scope: !822)
!828 = !DILocation(line: 479, column: 36, scope: !822)
!829 = !DILocation(line: 481, column: 5, scope: !822)
!830 = !DILocation(line: 481, column: 12, scope: !822)
!831 = !DILocation(line: 481, column: 20, scope: !822)
!832 = !DILocation(line: 481, column: 41, scope: !822)
!833 = !DILocation(line: 481, column: 3, scope: !822)
!834 = !DILocation(line: 482, column: 5, scope: !822)
!835 = !DILocation(line: 482, column: 12, scope: !822)
!836 = !DILocation(line: 482, column: 20, scope: !822)
!837 = !DILocation(line: 482, column: 40, scope: !822)
!838 = !DILocation(line: 482, column: 3, scope: !822)
!839 = !DILocation(line: 483, column: 1, scope: !822)
!840 = distinct !DISubprogram(name: "finish_pass_master", scope: !1, file: !1, line: 491, type: !165, scopeLine: 492, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !545)
!841 = !DILocalVariable(name: "cinfo", arg: 1, scope: !840, file: !1, line: 491, type: !167)
!842 = !DILocation(line: 491, column: 36, scope: !840)
!843 = !DILocalVariable(name: "master", scope: !840, file: !1, line: 493, type: !155)
!844 = !DILocation(line: 493, column: 17, scope: !840)
!845 = !DILocation(line: 493, column: 42, scope: !840)
!846 = !DILocation(line: 493, column: 49, scope: !840)
!847 = !DILocation(line: 498, column: 5, scope: !840)
!848 = !DILocation(line: 498, column: 12, scope: !840)
!849 = !DILocation(line: 498, column: 21, scope: !840)
!850 = !DILocation(line: 498, column: 35, scope: !840)
!851 = !DILocation(line: 498, column: 3, scope: !840)
!852 = !DILocation(line: 501, column: 11, scope: !840)
!853 = !DILocation(line: 501, column: 19, scope: !840)
!854 = !DILocation(line: 501, column: 3, scope: !840)
!855 = !DILocation(line: 506, column: 5, scope: !856)
!856 = distinct !DILexicalBlock(scope: !840, file: !1, line: 501, column: 30)
!857 = !DILocation(line: 506, column: 13, scope: !856)
!858 = !DILocation(line: 506, column: 23, scope: !856)
!859 = !DILocation(line: 507, column: 11, scope: !860)
!860 = distinct !DILexicalBlock(scope: !856, file: !1, line: 507, column: 9)
!861 = !DILocation(line: 507, column: 18, scope: !860)
!862 = !DILocation(line: 507, column: 9, scope: !860)
!863 = !DILocation(line: 508, column: 7, scope: !860)
!864 = !DILocation(line: 508, column: 15, scope: !860)
!865 = !DILocation(line: 508, column: 26, scope: !860)
!866 = !DILocation(line: 509, column: 5, scope: !856)
!867 = !DILocation(line: 512, column: 5, scope: !856)
!868 = !DILocation(line: 512, column: 13, scope: !856)
!869 = !DILocation(line: 512, column: 23, scope: !856)
!870 = !DILocation(line: 513, column: 5, scope: !856)
!871 = !DILocation(line: 516, column: 9, scope: !872)
!872 = distinct !DILexicalBlock(scope: !856, file: !1, line: 516, column: 9)
!873 = !DILocation(line: 516, column: 16, scope: !872)
!874 = !DILocation(line: 517, column: 7, scope: !872)
!875 = !DILocation(line: 517, column: 15, scope: !872)
!876 = !DILocation(line: 517, column: 25, scope: !872)
!877 = !DILocation(line: 518, column: 5, scope: !856)
!878 = !DILocation(line: 518, column: 13, scope: !856)
!879 = !DILocation(line: 518, column: 24, scope: !856)
!880 = !DILocation(line: 519, column: 5, scope: !856)
!881 = !DILocation(line: 522, column: 3, scope: !840)
!882 = !DILocation(line: 522, column: 11, scope: !840)
!883 = !DILocation(line: 522, column: 22, scope: !840)
!884 = !DILocation(line: 523, column: 1, scope: !840)
!885 = distinct !DISubprogram(name: "initial_setup", scope: !1, file: !1, line: 46, type: !165, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !545)
!886 = !DILocalVariable(name: "cinfo", arg: 1, scope: !885, file: !1, line: 46, type: !167)
!887 = !DILocation(line: 46, column: 31, scope: !885)
!888 = !DILocalVariable(name: "ci", scope: !885, file: !1, line: 49, type: !193)
!889 = !DILocation(line: 49, column: 7, scope: !885)
!890 = !DILocalVariable(name: "compptr", scope: !885, file: !1, line: 50, type: !327)
!891 = !DILocation(line: 50, column: 24, scope: !885)
!892 = !DILocalVariable(name: "samplesperrow", scope: !885, file: !1, line: 51, type: !254)
!893 = !DILocation(line: 51, column: 8, scope: !885)
!894 = !DILocalVariable(name: "jd_samplesperrow", scope: !885, file: !1, line: 52, type: !209)
!895 = !DILocation(line: 52, column: 14, scope: !885)
!896 = !DILocation(line: 55, column: 7, scope: !897)
!897 = distinct !DILexicalBlock(scope: !885, file: !1, line: 55, column: 7)
!898 = !DILocation(line: 55, column: 14, scope: !897)
!899 = !DILocation(line: 55, column: 27, scope: !897)
!900 = !DILocation(line: 55, column: 32, scope: !897)
!901 = !DILocation(line: 55, column: 35, scope: !897)
!902 = !DILocation(line: 55, column: 42, scope: !897)
!903 = !DILocation(line: 55, column: 54, scope: !897)
!904 = !DILocation(line: 56, column: 7, scope: !897)
!905 = !DILocation(line: 56, column: 10, scope: !897)
!906 = !DILocation(line: 56, column: 17, scope: !897)
!907 = !DILocation(line: 56, column: 32, scope: !897)
!908 = !DILocation(line: 56, column: 37, scope: !897)
!909 = !DILocation(line: 56, column: 40, scope: !897)
!910 = !DILocation(line: 56, column: 47, scope: !897)
!911 = !DILocation(line: 56, column: 64, scope: !897)
!912 = !DILocation(line: 57, column: 5, scope: !897)
!913 = !DILocation(line: 60, column: 14, scope: !914)
!914 = distinct !DILexicalBlock(scope: !885, file: !1, line: 60, column: 7)
!915 = !DILocation(line: 60, column: 21, scope: !914)
!916 = !DILocation(line: 60, column: 7, scope: !914)
!917 = !DILocation(line: 60, column: 34, scope: !914)
!918 = !DILocation(line: 60, column: 62, scope: !914)
!919 = !DILocation(line: 61, column: 14, scope: !914)
!920 = !DILocation(line: 61, column: 21, scope: !914)
!921 = !DILocation(line: 61, column: 7, scope: !914)
!922 = !DILocation(line: 61, column: 33, scope: !914)
!923 = !DILocation(line: 62, column: 5, scope: !914)
!924 = !DILocation(line: 65, column: 26, scope: !885)
!925 = !DILocation(line: 65, column: 33, scope: !885)
!926 = !DILocation(line: 65, column: 19, scope: !885)
!927 = !DILocation(line: 65, column: 54, scope: !885)
!928 = !DILocation(line: 65, column: 61, scope: !885)
!929 = !DILocation(line: 65, column: 47, scope: !885)
!930 = !DILocation(line: 65, column: 45, scope: !885)
!931 = !DILocation(line: 65, column: 17, scope: !885)
!932 = !DILocation(line: 66, column: 35, scope: !885)
!933 = !DILocation(line: 66, column: 22, scope: !885)
!934 = !DILocation(line: 66, column: 20, scope: !885)
!935 = !DILocation(line: 67, column: 14, scope: !936)
!936 = distinct !DILexicalBlock(scope: !885, file: !1, line: 67, column: 7)
!937 = !DILocation(line: 67, column: 7, scope: !936)
!938 = !DILocation(line: 67, column: 34, scope: !936)
!939 = !DILocation(line: 67, column: 31, scope: !936)
!940 = !DILocation(line: 68, column: 5, scope: !936)
!941 = !DILocation(line: 71, column: 7, scope: !942)
!942 = distinct !DILexicalBlock(scope: !885, file: !1, line: 71, column: 7)
!943 = !DILocation(line: 71, column: 14, scope: !942)
!944 = !DILocation(line: 71, column: 29, scope: !942)
!945 = !DILocation(line: 72, column: 5, scope: !942)
!946 = !DILocation(line: 75, column: 7, scope: !947)
!947 = distinct !DILexicalBlock(scope: !885, file: !1, line: 75, column: 7)
!948 = !DILocation(line: 75, column: 14, scope: !947)
!949 = !DILocation(line: 75, column: 29, scope: !947)
!950 = !DILocation(line: 76, column: 5, scope: !947)
!951 = !DILocation(line: 80, column: 3, scope: !885)
!952 = !DILocation(line: 80, column: 10, scope: !885)
!953 = !DILocation(line: 80, column: 28, scope: !885)
!954 = !DILocation(line: 81, column: 3, scope: !885)
!955 = !DILocation(line: 81, column: 10, scope: !885)
!956 = !DILocation(line: 81, column: 28, scope: !885)
!957 = !DILocation(line: 82, column: 11, scope: !958)
!958 = distinct !DILexicalBlock(scope: !885, file: !1, line: 82, column: 3)
!959 = !DILocation(line: 82, column: 26, scope: !958)
!960 = !DILocation(line: 82, column: 33, scope: !958)
!961 = !DILocation(line: 82, column: 24, scope: !958)
!962 = !DILocation(line: 82, column: 8, scope: !958)
!963 = !DILocation(line: 82, column: 44, scope: !964)
!964 = distinct !DILexicalBlock(scope: !958, file: !1, line: 82, column: 3)
!965 = !DILocation(line: 82, column: 49, scope: !964)
!966 = !DILocation(line: 82, column: 56, scope: !964)
!967 = !DILocation(line: 82, column: 47, scope: !964)
!968 = !DILocation(line: 82, column: 3, scope: !958)
!969 = !DILocation(line: 84, column: 9, scope: !970)
!970 = distinct !DILexicalBlock(scope: !971, file: !1, line: 84, column: 9)
!971 = distinct !DILexicalBlock(scope: !964, file: !1, line: 83, column: 25)
!972 = !DILocation(line: 84, column: 18, scope: !970)
!973 = !DILocation(line: 84, column: 31, scope: !970)
!974 = !DILocation(line: 84, column: 35, scope: !970)
!975 = !DILocation(line: 84, column: 38, scope: !970)
!976 = !DILocation(line: 84, column: 47, scope: !970)
!977 = !DILocation(line: 84, column: 60, scope: !970)
!978 = !DILocation(line: 84, column: 77, scope: !970)
!979 = !DILocation(line: 85, column: 2, scope: !970)
!980 = !DILocation(line: 85, column: 11, scope: !970)
!981 = !DILocation(line: 85, column: 24, scope: !970)
!982 = !DILocation(line: 85, column: 28, scope: !970)
!983 = !DILocation(line: 85, column: 31, scope: !970)
!984 = !DILocation(line: 85, column: 40, scope: !970)
!985 = !DILocation(line: 85, column: 53, scope: !970)
!986 = !DILocation(line: 86, column: 7, scope: !970)
!987 = !DILocation(line: 87, column: 32, scope: !971)
!988 = !DILocation(line: 87, column: 5, scope: !971)
!989 = !DILocation(line: 87, column: 12, scope: !971)
!990 = !DILocation(line: 87, column: 30, scope: !971)
!991 = !DILocation(line: 89, column: 32, scope: !971)
!992 = !DILocation(line: 89, column: 5, scope: !971)
!993 = !DILocation(line: 89, column: 12, scope: !971)
!994 = !DILocation(line: 89, column: 30, scope: !971)
!995 = !DILocation(line: 91, column: 3, scope: !971)
!996 = !DILocation(line: 83, column: 10, scope: !964)
!997 = !DILocation(line: 83, column: 21, scope: !964)
!998 = !DILocation(line: 82, column: 3, scope: !964)
!999 = distinct !{!999, !968, !1000, !1001}
!1000 = !DILocation(line: 91, column: 3, scope: !958)
!1001 = !{!"llvm.loop.mustprogress"}
!1002 = !DILocation(line: 94, column: 11, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !885, file: !1, line: 94, column: 3)
!1004 = !DILocation(line: 94, column: 26, scope: !1003)
!1005 = !DILocation(line: 94, column: 33, scope: !1003)
!1006 = !DILocation(line: 94, column: 24, scope: !1003)
!1007 = !DILocation(line: 94, column: 8, scope: !1003)
!1008 = !DILocation(line: 94, column: 44, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !1003, file: !1, line: 94, column: 3)
!1010 = !DILocation(line: 94, column: 49, scope: !1009)
!1011 = !DILocation(line: 94, column: 56, scope: !1009)
!1012 = !DILocation(line: 94, column: 47, scope: !1009)
!1013 = !DILocation(line: 94, column: 3, scope: !1003)
!1014 = !DILocation(line: 97, column: 32, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !1009, file: !1, line: 95, column: 25)
!1016 = !DILocation(line: 97, column: 5, scope: !1015)
!1017 = !DILocation(line: 97, column: 14, scope: !1015)
!1018 = !DILocation(line: 97, column: 30, scope: !1015)
!1019 = !DILocation(line: 99, column: 5, scope: !1015)
!1020 = !DILocation(line: 99, column: 14, scope: !1015)
!1021 = !DILocation(line: 99, column: 30, scope: !1015)
!1022 = !DILocation(line: 102, column: 28, scope: !1015)
!1023 = !DILocation(line: 102, column: 35, scope: !1015)
!1024 = !DILocation(line: 102, column: 21, scope: !1015)
!1025 = !DILocation(line: 102, column: 56, scope: !1015)
!1026 = !DILocation(line: 102, column: 65, scope: !1015)
!1027 = !DILocation(line: 102, column: 49, scope: !1015)
!1028 = !DILocation(line: 102, column: 47, scope: !1015)
!1029 = !DILocation(line: 103, column: 15, scope: !1015)
!1030 = !DILocation(line: 103, column: 22, scope: !1015)
!1031 = !DILocation(line: 103, column: 40, scope: !1015)
!1032 = !DILocation(line: 103, column: 7, scope: !1015)
!1033 = !DILocation(line: 102, column: 7, scope: !1015)
!1034 = !DILocation(line: 101, column: 32, scope: !1015)
!1035 = !DILocation(line: 101, column: 5, scope: !1015)
!1036 = !DILocation(line: 101, column: 14, scope: !1015)
!1037 = !DILocation(line: 101, column: 30, scope: !1015)
!1038 = !DILocation(line: 105, column: 28, scope: !1015)
!1039 = !DILocation(line: 105, column: 35, scope: !1015)
!1040 = !DILocation(line: 105, column: 21, scope: !1015)
!1041 = !DILocation(line: 105, column: 57, scope: !1015)
!1042 = !DILocation(line: 105, column: 66, scope: !1015)
!1043 = !DILocation(line: 105, column: 50, scope: !1015)
!1044 = !DILocation(line: 105, column: 48, scope: !1015)
!1045 = !DILocation(line: 106, column: 15, scope: !1015)
!1046 = !DILocation(line: 106, column: 22, scope: !1015)
!1047 = !DILocation(line: 106, column: 40, scope: !1015)
!1048 = !DILocation(line: 106, column: 7, scope: !1015)
!1049 = !DILocation(line: 105, column: 7, scope: !1015)
!1050 = !DILocation(line: 104, column: 33, scope: !1015)
!1051 = !DILocation(line: 104, column: 5, scope: !1015)
!1052 = !DILocation(line: 104, column: 14, scope: !1015)
!1053 = !DILocation(line: 104, column: 31, scope: !1015)
!1054 = !DILocation(line: 109, column: 28, scope: !1015)
!1055 = !DILocation(line: 109, column: 35, scope: !1015)
!1056 = !DILocation(line: 109, column: 21, scope: !1015)
!1057 = !DILocation(line: 109, column: 56, scope: !1015)
!1058 = !DILocation(line: 109, column: 65, scope: !1015)
!1059 = !DILocation(line: 109, column: 49, scope: !1015)
!1060 = !DILocation(line: 109, column: 47, scope: !1015)
!1061 = !DILocation(line: 110, column: 14, scope: !1015)
!1062 = !DILocation(line: 110, column: 21, scope: !1015)
!1063 = !DILocation(line: 110, column: 7, scope: !1015)
!1064 = !DILocation(line: 109, column: 7, scope: !1015)
!1065 = !DILocation(line: 108, column: 34, scope: !1015)
!1066 = !DILocation(line: 108, column: 5, scope: !1015)
!1067 = !DILocation(line: 108, column: 14, scope: !1015)
!1068 = !DILocation(line: 108, column: 32, scope: !1015)
!1069 = !DILocation(line: 112, column: 28, scope: !1015)
!1070 = !DILocation(line: 112, column: 35, scope: !1015)
!1071 = !DILocation(line: 112, column: 21, scope: !1015)
!1072 = !DILocation(line: 112, column: 57, scope: !1015)
!1073 = !DILocation(line: 112, column: 66, scope: !1015)
!1074 = !DILocation(line: 112, column: 50, scope: !1015)
!1075 = !DILocation(line: 112, column: 48, scope: !1015)
!1076 = !DILocation(line: 113, column: 14, scope: !1015)
!1077 = !DILocation(line: 113, column: 21, scope: !1015)
!1078 = !DILocation(line: 113, column: 7, scope: !1015)
!1079 = !DILocation(line: 112, column: 7, scope: !1015)
!1080 = !DILocation(line: 111, column: 35, scope: !1015)
!1081 = !DILocation(line: 111, column: 5, scope: !1015)
!1082 = !DILocation(line: 111, column: 14, scope: !1015)
!1083 = !DILocation(line: 111, column: 33, scope: !1015)
!1084 = !DILocation(line: 115, column: 5, scope: !1015)
!1085 = !DILocation(line: 115, column: 14, scope: !1015)
!1086 = !DILocation(line: 115, column: 31, scope: !1015)
!1087 = !DILocation(line: 116, column: 3, scope: !1015)
!1088 = !DILocation(line: 95, column: 10, scope: !1009)
!1089 = !DILocation(line: 95, column: 21, scope: !1009)
!1090 = !DILocation(line: 94, column: 3, scope: !1009)
!1091 = distinct !{!1091, !1013, !1092, !1001}
!1092 = !DILocation(line: 116, column: 3, scope: !1003)
!1093 = !DILocation(line: 122, column: 26, scope: !885)
!1094 = !DILocation(line: 122, column: 33, scope: !885)
!1095 = !DILocation(line: 122, column: 19, scope: !885)
!1096 = !DILocation(line: 123, column: 13, scope: !885)
!1097 = !DILocation(line: 123, column: 20, scope: !885)
!1098 = !DILocation(line: 123, column: 37, scope: !885)
!1099 = !DILocation(line: 123, column: 5, scope: !885)
!1100 = !DILocation(line: 122, column: 5, scope: !885)
!1101 = !DILocation(line: 121, column: 28, scope: !885)
!1102 = !DILocation(line: 121, column: 3, scope: !885)
!1103 = !DILocation(line: 121, column: 10, scope: !885)
!1104 = !DILocation(line: 121, column: 26, scope: !885)
!1105 = !DILocation(line: 124, column: 1, scope: !885)
!1106 = distinct !DISubprogram(name: "validate_script", scope: !1, file: !1, line: 130, type: !165, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !545)
!1107 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1106, file: !1, line: 130, type: !167)
!1108 = !DILocation(line: 130, column: 33, scope: !1106)
!1109 = !DILocalVariable(name: "scanptr", scope: !1106, file: !1, line: 135, type: !390)
!1110 = !DILocation(line: 135, column: 26, scope: !1106)
!1111 = !DILocalVariable(name: "scanno", scope: !1106, file: !1, line: 136, type: !193)
!1112 = !DILocation(line: 136, column: 7, scope: !1106)
!1113 = !DILocalVariable(name: "ncomps", scope: !1106, file: !1, line: 136, type: !193)
!1114 = !DILocation(line: 136, column: 15, scope: !1106)
!1115 = !DILocalVariable(name: "ci", scope: !1106, file: !1, line: 136, type: !193)
!1116 = !DILocation(line: 136, column: 23, scope: !1106)
!1117 = !DILocalVariable(name: "coefi", scope: !1106, file: !1, line: 136, type: !193)
!1118 = !DILocation(line: 136, column: 27, scope: !1106)
!1119 = !DILocalVariable(name: "thisi", scope: !1106, file: !1, line: 136, type: !193)
!1120 = !DILocation(line: 136, column: 34, scope: !1106)
!1121 = !DILocalVariable(name: "Ss", scope: !1106, file: !1, line: 137, type: !193)
!1122 = !DILocation(line: 137, column: 7, scope: !1106)
!1123 = !DILocalVariable(name: "Se", scope: !1106, file: !1, line: 137, type: !193)
!1124 = !DILocation(line: 137, column: 11, scope: !1106)
!1125 = !DILocalVariable(name: "Ah", scope: !1106, file: !1, line: 137, type: !193)
!1126 = !DILocation(line: 137, column: 15, scope: !1106)
!1127 = !DILocalVariable(name: "Al", scope: !1106, file: !1, line: 137, type: !193)
!1128 = !DILocation(line: 137, column: 19, scope: !1106)
!1129 = !DILocalVariable(name: "component_sent", scope: !1106, file: !1, line: 138, type: !1130)
!1130 = !DICompositeType(tag: DW_TAG_array_type, baseType: !231, size: 320, elements: !429)
!1131 = !DILocation(line: 138, column: 11, scope: !1106)
!1132 = !DILocalVariable(name: "last_bitpos_ptr", scope: !1106, file: !1, line: 140, type: !1133)
!1133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!1134 = !DILocation(line: 140, column: 9, scope: !1106)
!1135 = !DILocalVariable(name: "last_bitpos", scope: !1106, file: !1, line: 141, type: !1136)
!1136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, size: 20480, elements: !1137)
!1137 = !{!430, !223}
!1138 = !DILocation(line: 141, column: 7, scope: !1106)
!1139 = !DILocation(line: 145, column: 7, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1106, file: !1, line: 145, column: 7)
!1141 = !DILocation(line: 145, column: 14, scope: !1140)
!1142 = !DILocation(line: 145, column: 24, scope: !1140)
!1143 = !DILocation(line: 146, column: 5, scope: !1140)
!1144 = !DILocation(line: 151, column: 13, scope: !1106)
!1145 = !DILocation(line: 151, column: 20, scope: !1106)
!1146 = !DILocation(line: 151, column: 11, scope: !1106)
!1147 = !DILocation(line: 152, column: 7, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !1106, file: !1, line: 152, column: 7)
!1149 = !DILocation(line: 152, column: 16, scope: !1148)
!1150 = !DILocation(line: 152, column: 19, scope: !1148)
!1151 = !DILocation(line: 152, column: 24, scope: !1148)
!1152 = !DILocation(line: 152, column: 27, scope: !1148)
!1153 = !DILocation(line: 152, column: 36, scope: !1148)
!1154 = !DILocation(line: 152, column: 39, scope: !1148)
!1155 = !DILocation(line: 154, column: 5, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !1148, file: !1, line: 152, column: 54)
!1157 = !DILocation(line: 154, column: 12, scope: !1156)
!1158 = !DILocation(line: 154, column: 29, scope: !1156)
!1159 = !DILocation(line: 155, column: 25, scope: !1156)
!1160 = !DILocation(line: 155, column: 21, scope: !1156)
!1161 = !DILocation(line: 156, column: 13, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1156, file: !1, line: 156, column: 5)
!1163 = !DILocation(line: 156, column: 10, scope: !1162)
!1164 = !DILocation(line: 156, column: 18, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !1162, file: !1, line: 156, column: 5)
!1166 = !DILocation(line: 156, column: 23, scope: !1165)
!1167 = !DILocation(line: 156, column: 30, scope: !1165)
!1168 = !DILocation(line: 156, column: 21, scope: !1165)
!1169 = !DILocation(line: 156, column: 5, scope: !1162)
!1170 = !DILocation(line: 157, column: 18, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !1165, file: !1, line: 157, column: 7)
!1172 = !DILocation(line: 157, column: 12, scope: !1171)
!1173 = !DILocation(line: 157, column: 23, scope: !1174)
!1174 = distinct !DILexicalBlock(scope: !1171, file: !1, line: 157, column: 7)
!1175 = !DILocation(line: 157, column: 29, scope: !1174)
!1176 = !DILocation(line: 157, column: 7, scope: !1171)
!1177 = !DILocation(line: 158, column: 18, scope: !1174)
!1178 = !DILocation(line: 158, column: 21, scope: !1174)
!1179 = !DILocation(line: 158, column: 2, scope: !1174)
!1180 = !DILocation(line: 157, column: 46, scope: !1174)
!1181 = !DILocation(line: 157, column: 7, scope: !1174)
!1182 = distinct !{!1182, !1176, !1183, !1001}
!1183 = !DILocation(line: 158, column: 24, scope: !1171)
!1184 = !DILocation(line: 156, column: 48, scope: !1165)
!1185 = !DILocation(line: 156, column: 5, scope: !1165)
!1186 = distinct !{!1186, !1169, !1187, !1001}
!1187 = !DILocation(line: 158, column: 24, scope: !1162)
!1188 = !DILocation(line: 162, column: 3, scope: !1156)
!1189 = !DILocation(line: 163, column: 5, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1148, file: !1, line: 162, column: 10)
!1191 = !DILocation(line: 163, column: 12, scope: !1190)
!1192 = !DILocation(line: 163, column: 29, scope: !1190)
!1193 = !DILocation(line: 164, column: 13, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1190, file: !1, line: 164, column: 5)
!1195 = !DILocation(line: 164, column: 10, scope: !1194)
!1196 = !DILocation(line: 164, column: 18, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1194, file: !1, line: 164, column: 5)
!1198 = !DILocation(line: 164, column: 23, scope: !1197)
!1199 = !DILocation(line: 164, column: 30, scope: !1197)
!1200 = !DILocation(line: 164, column: 21, scope: !1197)
!1201 = !DILocation(line: 164, column: 5, scope: !1194)
!1202 = !DILocation(line: 165, column: 22, scope: !1197)
!1203 = !DILocation(line: 165, column: 7, scope: !1197)
!1204 = !DILocation(line: 165, column: 26, scope: !1197)
!1205 = !DILocation(line: 164, column: 48, scope: !1197)
!1206 = !DILocation(line: 164, column: 5, scope: !1197)
!1207 = distinct !{!1207, !1201, !1208, !1001}
!1208 = !DILocation(line: 165, column: 28, scope: !1194)
!1209 = !DILocation(line: 168, column: 15, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1106, file: !1, line: 168, column: 3)
!1211 = !DILocation(line: 168, column: 8, scope: !1210)
!1212 = !DILocation(line: 168, column: 20, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1210, file: !1, line: 168, column: 3)
!1214 = !DILocation(line: 168, column: 30, scope: !1213)
!1215 = !DILocation(line: 168, column: 37, scope: !1213)
!1216 = !DILocation(line: 168, column: 27, scope: !1213)
!1217 = !DILocation(line: 168, column: 3, scope: !1210)
!1218 = !DILocation(line: 170, column: 14, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1213, file: !1, line: 168, column: 69)
!1220 = !DILocation(line: 170, column: 23, scope: !1219)
!1221 = !DILocation(line: 170, column: 12, scope: !1219)
!1222 = !DILocation(line: 171, column: 9, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1219, file: !1, line: 171, column: 9)
!1224 = !DILocation(line: 171, column: 16, scope: !1223)
!1225 = !DILocation(line: 171, column: 21, scope: !1223)
!1226 = !DILocation(line: 171, column: 24, scope: !1223)
!1227 = !DILocation(line: 171, column: 31, scope: !1223)
!1228 = !DILocation(line: 172, column: 7, scope: !1223)
!1229 = !DILocation(line: 173, column: 13, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1219, file: !1, line: 173, column: 5)
!1231 = !DILocation(line: 173, column: 10, scope: !1230)
!1232 = !DILocation(line: 173, column: 18, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !1230, file: !1, line: 173, column: 5)
!1234 = !DILocation(line: 173, column: 23, scope: !1233)
!1235 = !DILocation(line: 173, column: 21, scope: !1233)
!1236 = !DILocation(line: 173, column: 5, scope: !1230)
!1237 = !DILocation(line: 174, column: 15, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1233, file: !1, line: 173, column: 37)
!1239 = !DILocation(line: 174, column: 24, scope: !1238)
!1240 = !DILocation(line: 174, column: 40, scope: !1238)
!1241 = !DILocation(line: 174, column: 13, scope: !1238)
!1242 = !DILocation(line: 175, column: 11, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1238, file: !1, line: 175, column: 11)
!1244 = !DILocation(line: 175, column: 17, scope: !1243)
!1245 = !DILocation(line: 175, column: 21, scope: !1243)
!1246 = !DILocation(line: 175, column: 24, scope: !1243)
!1247 = !DILocation(line: 175, column: 33, scope: !1243)
!1248 = !DILocation(line: 175, column: 40, scope: !1243)
!1249 = !DILocation(line: 175, column: 30, scope: !1243)
!1250 = !DILocation(line: 176, column: 2, scope: !1243)
!1251 = !DILocation(line: 178, column: 11, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1238, file: !1, line: 178, column: 11)
!1253 = !DILocation(line: 178, column: 14, scope: !1252)
!1254 = !DILocation(line: 178, column: 18, scope: !1252)
!1255 = !DILocation(line: 178, column: 21, scope: !1252)
!1256 = !DILocation(line: 178, column: 30, scope: !1252)
!1257 = !DILocation(line: 178, column: 39, scope: !1252)
!1258 = !DILocation(line: 178, column: 55, scope: !1252)
!1259 = !DILocation(line: 178, column: 57, scope: !1252)
!1260 = !DILocation(line: 178, column: 27, scope: !1252)
!1261 = !DILocation(line: 179, column: 2, scope: !1252)
!1262 = !DILocation(line: 180, column: 5, scope: !1238)
!1263 = !DILocation(line: 173, column: 33, scope: !1233)
!1264 = !DILocation(line: 173, column: 5, scope: !1233)
!1265 = distinct !{!1265, !1236, !1266, !1001}
!1266 = !DILocation(line: 180, column: 5, scope: !1230)
!1267 = !DILocation(line: 182, column: 10, scope: !1219)
!1268 = !DILocation(line: 182, column: 19, scope: !1219)
!1269 = !DILocation(line: 182, column: 8, scope: !1219)
!1270 = !DILocation(line: 183, column: 10, scope: !1219)
!1271 = !DILocation(line: 183, column: 19, scope: !1219)
!1272 = !DILocation(line: 183, column: 8, scope: !1219)
!1273 = !DILocation(line: 184, column: 10, scope: !1219)
!1274 = !DILocation(line: 184, column: 19, scope: !1219)
!1275 = !DILocation(line: 184, column: 8, scope: !1219)
!1276 = !DILocation(line: 185, column: 10, scope: !1219)
!1277 = !DILocation(line: 185, column: 19, scope: !1219)
!1278 = !DILocation(line: 185, column: 8, scope: !1219)
!1279 = !DILocation(line: 186, column: 9, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1219, file: !1, line: 186, column: 9)
!1281 = !DILocation(line: 186, column: 16, scope: !1280)
!1282 = !DILocation(line: 188, column: 11, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !1284, file: !1, line: 188, column: 11)
!1284 = distinct !DILexicalBlock(scope: !1280, file: !1, line: 186, column: 34)
!1285 = !DILocation(line: 188, column: 14, scope: !1283)
!1286 = !DILocation(line: 188, column: 18, scope: !1283)
!1287 = !DILocation(line: 188, column: 21, scope: !1283)
!1288 = !DILocation(line: 188, column: 24, scope: !1283)
!1289 = !DILocation(line: 188, column: 36, scope: !1283)
!1290 = !DILocation(line: 188, column: 39, scope: !1283)
!1291 = !DILocation(line: 188, column: 44, scope: !1283)
!1292 = !DILocation(line: 188, column: 42, scope: !1283)
!1293 = !DILocation(line: 188, column: 47, scope: !1283)
!1294 = !DILocation(line: 188, column: 50, scope: !1283)
!1295 = !DILocation(line: 188, column: 53, scope: !1283)
!1296 = !DILocation(line: 188, column: 65, scope: !1283)
!1297 = !DILocation(line: 189, column: 4, scope: !1283)
!1298 = !DILocation(line: 189, column: 7, scope: !1283)
!1299 = !DILocation(line: 189, column: 11, scope: !1283)
!1300 = !DILocation(line: 189, column: 14, scope: !1283)
!1301 = !DILocation(line: 189, column: 17, scope: !1283)
!1302 = !DILocation(line: 189, column: 22, scope: !1283)
!1303 = !DILocation(line: 189, column: 25, scope: !1283)
!1304 = !DILocation(line: 189, column: 28, scope: !1283)
!1305 = !DILocation(line: 189, column: 32, scope: !1283)
!1306 = !DILocation(line: 189, column: 35, scope: !1283)
!1307 = !DILocation(line: 189, column: 38, scope: !1283)
!1308 = !DILocation(line: 190, column: 2, scope: !1283)
!1309 = !DILocation(line: 191, column: 11, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1284, file: !1, line: 191, column: 11)
!1311 = !DILocation(line: 191, column: 14, scope: !1310)
!1312 = !DILocation(line: 192, column: 6, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1314, file: !1, line: 192, column: 6)
!1314 = distinct !DILexicalBlock(scope: !1310, file: !1, line: 191, column: 20)
!1315 = !DILocation(line: 192, column: 9, scope: !1313)
!1316 = !DILocation(line: 193, column: 4, scope: !1313)
!1317 = !DILocation(line: 194, column: 7, scope: !1314)
!1318 = !DILocation(line: 195, column: 6, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !1320, file: !1, line: 195, column: 6)
!1320 = distinct !DILexicalBlock(scope: !1310, file: !1, line: 194, column: 14)
!1321 = !DILocation(line: 195, column: 13, scope: !1319)
!1322 = !DILocation(line: 196, column: 4, scope: !1319)
!1323 = !DILocation(line: 198, column: 15, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1284, file: !1, line: 198, column: 7)
!1325 = !DILocation(line: 198, column: 12, scope: !1324)
!1326 = !DILocation(line: 198, column: 20, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1324, file: !1, line: 198, column: 7)
!1328 = !DILocation(line: 198, column: 25, scope: !1327)
!1329 = !DILocation(line: 198, column: 23, scope: !1327)
!1330 = !DILocation(line: 198, column: 7, scope: !1324)
!1331 = !DILocation(line: 199, column: 34, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1327, file: !1, line: 198, column: 39)
!1333 = !DILocation(line: 199, column: 43, scope: !1332)
!1334 = !DILocation(line: 199, column: 59, scope: !1332)
!1335 = !DILocation(line: 199, column: 22, scope: !1332)
!1336 = !DILocation(line: 199, column: 18, scope: !1332)
!1337 = !DILocation(line: 200, column: 6, scope: !1338)
!1338 = distinct !DILexicalBlock(scope: !1332, file: !1, line: 200, column: 6)
!1339 = !DILocation(line: 200, column: 9, scope: !1338)
!1340 = !DILocation(line: 200, column: 14, scope: !1338)
!1341 = !DILocation(line: 200, column: 17, scope: !1338)
!1342 = !DILocation(line: 200, column: 36, scope: !1338)
!1343 = !DILocation(line: 201, column: 4, scope: !1338)
!1344 = !DILocation(line: 202, column: 15, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1332, file: !1, line: 202, column: 2)
!1346 = !DILocation(line: 202, column: 13, scope: !1345)
!1347 = !DILocation(line: 202, column: 7, scope: !1345)
!1348 = !DILocation(line: 202, column: 19, scope: !1349)
!1349 = distinct !DILexicalBlock(scope: !1345, file: !1, line: 202, column: 2)
!1350 = !DILocation(line: 202, column: 28, scope: !1349)
!1351 = !DILocation(line: 202, column: 25, scope: !1349)
!1352 = !DILocation(line: 202, column: 2, scope: !1345)
!1353 = !DILocation(line: 203, column: 8, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1355, file: !1, line: 203, column: 8)
!1355 = distinct !DILexicalBlock(scope: !1349, file: !1, line: 202, column: 41)
!1356 = !DILocation(line: 203, column: 24, scope: !1354)
!1357 = !DILocation(line: 203, column: 31, scope: !1354)
!1358 = !DILocation(line: 205, column: 10, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1360, file: !1, line: 205, column: 10)
!1360 = distinct !DILexicalBlock(scope: !1354, file: !1, line: 203, column: 36)
!1361 = !DILocation(line: 205, column: 13, scope: !1359)
!1362 = !DILocation(line: 206, column: 8, scope: !1359)
!1363 = !DILocation(line: 207, column: 4, scope: !1360)
!1364 = !DILocation(line: 209, column: 10, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !1366, file: !1, line: 209, column: 10)
!1366 = distinct !DILexicalBlock(scope: !1354, file: !1, line: 207, column: 11)
!1367 = !DILocation(line: 209, column: 16, scope: !1365)
!1368 = !DILocation(line: 209, column: 32, scope: !1365)
!1369 = !DILocation(line: 209, column: 13, scope: !1365)
!1370 = !DILocation(line: 209, column: 39, scope: !1365)
!1371 = !DILocation(line: 209, column: 42, scope: !1365)
!1372 = !DILocation(line: 209, column: 48, scope: !1365)
!1373 = !DILocation(line: 209, column: 50, scope: !1365)
!1374 = !DILocation(line: 209, column: 45, scope: !1365)
!1375 = !DILocation(line: 210, column: 8, scope: !1365)
!1376 = !DILocation(line: 212, column: 29, scope: !1355)
!1377 = !DILocation(line: 212, column: 4, scope: !1355)
!1378 = !DILocation(line: 212, column: 20, scope: !1355)
!1379 = !DILocation(line: 212, column: 27, scope: !1355)
!1380 = !DILocation(line: 213, column: 2, scope: !1355)
!1381 = !DILocation(line: 202, column: 37, scope: !1349)
!1382 = !DILocation(line: 202, column: 2, scope: !1349)
!1383 = distinct !{!1383, !1352, !1384, !1001}
!1384 = !DILocation(line: 213, column: 2, scope: !1345)
!1385 = !DILocation(line: 214, column: 7, scope: !1332)
!1386 = !DILocation(line: 198, column: 35, scope: !1327)
!1387 = !DILocation(line: 198, column: 7, scope: !1327)
!1388 = distinct !{!1388, !1330, !1389, !1001}
!1389 = !DILocation(line: 214, column: 7, scope: !1324)
!1390 = !DILocation(line: 216, column: 5, scope: !1284)
!1391 = !DILocation(line: 218, column: 11, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !1393, file: !1, line: 218, column: 11)
!1393 = distinct !DILexicalBlock(scope: !1280, file: !1, line: 216, column: 12)
!1394 = !DILocation(line: 218, column: 14, scope: !1392)
!1395 = !DILocation(line: 218, column: 19, scope: !1392)
!1396 = !DILocation(line: 218, column: 22, scope: !1392)
!1397 = !DILocation(line: 218, column: 25, scope: !1392)
!1398 = !DILocation(line: 218, column: 39, scope: !1392)
!1399 = !DILocation(line: 218, column: 42, scope: !1392)
!1400 = !DILocation(line: 218, column: 45, scope: !1392)
!1401 = !DILocation(line: 218, column: 50, scope: !1392)
!1402 = !DILocation(line: 218, column: 53, scope: !1392)
!1403 = !DILocation(line: 218, column: 56, scope: !1392)
!1404 = !DILocation(line: 219, column: 2, scope: !1392)
!1405 = !DILocation(line: 221, column: 15, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1393, file: !1, line: 221, column: 7)
!1407 = !DILocation(line: 221, column: 12, scope: !1406)
!1408 = !DILocation(line: 221, column: 20, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1406, file: !1, line: 221, column: 7)
!1410 = !DILocation(line: 221, column: 25, scope: !1409)
!1411 = !DILocation(line: 221, column: 23, scope: !1409)
!1412 = !DILocation(line: 221, column: 7, scope: !1406)
!1413 = !DILocation(line: 222, column: 10, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !1409, file: !1, line: 221, column: 39)
!1415 = !DILocation(line: 222, column: 19, scope: !1414)
!1416 = !DILocation(line: 222, column: 35, scope: !1414)
!1417 = !DILocation(line: 222, column: 8, scope: !1414)
!1418 = !DILocation(line: 223, column: 21, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1414, file: !1, line: 223, column: 6)
!1420 = !DILocation(line: 223, column: 6, scope: !1419)
!1421 = !DILocation(line: 224, column: 4, scope: !1419)
!1422 = !DILocation(line: 225, column: 17, scope: !1414)
!1423 = !DILocation(line: 225, column: 2, scope: !1414)
!1424 = !DILocation(line: 225, column: 24, scope: !1414)
!1425 = !DILocation(line: 226, column: 7, scope: !1414)
!1426 = !DILocation(line: 221, column: 35, scope: !1409)
!1427 = !DILocation(line: 221, column: 7, scope: !1409)
!1428 = distinct !{!1428, !1412, !1429, !1001}
!1429 = !DILocation(line: 226, column: 7, scope: !1406)
!1430 = !DILocation(line: 228, column: 3, scope: !1219)
!1431 = !DILocation(line: 168, column: 55, scope: !1213)
!1432 = !DILocation(line: 168, column: 65, scope: !1213)
!1433 = !DILocation(line: 168, column: 3, scope: !1213)
!1434 = distinct !{!1434, !1217, !1435, !1001}
!1435 = !DILocation(line: 228, column: 3, scope: !1210)
!1436 = !DILocation(line: 231, column: 7, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !1106, file: !1, line: 231, column: 7)
!1438 = !DILocation(line: 231, column: 14, scope: !1437)
!1439 = !DILocation(line: 238, column: 13, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1441, file: !1, line: 238, column: 5)
!1441 = distinct !DILexicalBlock(scope: !1437, file: !1, line: 231, column: 32)
!1442 = !DILocation(line: 238, column: 10, scope: !1440)
!1443 = !DILocation(line: 238, column: 18, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1440, file: !1, line: 238, column: 5)
!1445 = !DILocation(line: 238, column: 23, scope: !1444)
!1446 = !DILocation(line: 238, column: 30, scope: !1444)
!1447 = !DILocation(line: 238, column: 21, scope: !1444)
!1448 = !DILocation(line: 238, column: 5, scope: !1440)
!1449 = !DILocation(line: 239, column: 23, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !1451, file: !1, line: 239, column: 11)
!1451 = distinct !DILexicalBlock(scope: !1444, file: !1, line: 238, column: 52)
!1452 = !DILocation(line: 239, column: 11, scope: !1450)
!1453 = !DILocation(line: 239, column: 30, scope: !1450)
!1454 = !DILocation(line: 240, column: 2, scope: !1450)
!1455 = !DILocation(line: 241, column: 5, scope: !1451)
!1456 = !DILocation(line: 238, column: 48, scope: !1444)
!1457 = !DILocation(line: 238, column: 5, scope: !1444)
!1458 = distinct !{!1458, !1448, !1459, !1001}
!1459 = !DILocation(line: 241, column: 5, scope: !1440)
!1460 = !DILocation(line: 243, column: 3, scope: !1441)
!1461 = !DILocation(line: 244, column: 13, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1463, file: !1, line: 244, column: 5)
!1463 = distinct !DILexicalBlock(scope: !1437, file: !1, line: 243, column: 10)
!1464 = !DILocation(line: 244, column: 10, scope: !1462)
!1465 = !DILocation(line: 244, column: 18, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1462, file: !1, line: 244, column: 5)
!1467 = !DILocation(line: 244, column: 23, scope: !1466)
!1468 = !DILocation(line: 244, column: 30, scope: !1466)
!1469 = !DILocation(line: 244, column: 21, scope: !1466)
!1470 = !DILocation(line: 244, column: 5, scope: !1462)
!1471 = !DILocation(line: 245, column: 28, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !1473, file: !1, line: 245, column: 11)
!1473 = distinct !DILexicalBlock(scope: !1466, file: !1, line: 244, column: 52)
!1474 = !DILocation(line: 245, column: 13, scope: !1472)
!1475 = !DILocation(line: 245, column: 11, scope: !1472)
!1476 = !DILocation(line: 246, column: 2, scope: !1472)
!1477 = !DILocation(line: 247, column: 5, scope: !1473)
!1478 = !DILocation(line: 244, column: 48, scope: !1466)
!1479 = !DILocation(line: 244, column: 5, scope: !1466)
!1480 = distinct !{!1480, !1470, !1481, !1001}
!1481 = !DILocation(line: 247, column: 5, scope: !1462)
!1482 = !DILocation(line: 249, column: 1, scope: !1106)
!1483 = distinct !DISubprogram(name: "select_scan_parameters", scope: !1, file: !1, line: 255, type: !165, scopeLine: 257, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !545)
!1484 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1483, file: !1, line: 255, type: !167)
!1485 = !DILocation(line: 255, column: 40, scope: !1483)
!1486 = !DILocalVariable(name: "ci", scope: !1483, file: !1, line: 258, type: !193)
!1487 = !DILocation(line: 258, column: 7, scope: !1483)
!1488 = !DILocation(line: 261, column: 7, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !1483, file: !1, line: 261, column: 7)
!1490 = !DILocation(line: 261, column: 14, scope: !1489)
!1491 = !DILocation(line: 261, column: 24, scope: !1489)
!1492 = !DILocalVariable(name: "master", scope: !1493, file: !1, line: 263, type: !155)
!1493 = distinct !DILexicalBlock(scope: !1489, file: !1, line: 261, column: 33)
!1494 = !DILocation(line: 263, column: 19, scope: !1493)
!1495 = !DILocation(line: 263, column: 44, scope: !1493)
!1496 = !DILocation(line: 263, column: 51, scope: !1493)
!1497 = !DILocalVariable(name: "scanptr", scope: !1493, file: !1, line: 264, type: !390)
!1498 = !DILocation(line: 264, column: 28, scope: !1493)
!1499 = !DILocation(line: 264, column: 38, scope: !1493)
!1500 = !DILocation(line: 264, column: 45, scope: !1493)
!1501 = !DILocation(line: 264, column: 57, scope: !1493)
!1502 = !DILocation(line: 264, column: 65, scope: !1493)
!1503 = !DILocation(line: 264, column: 55, scope: !1493)
!1504 = !DILocation(line: 266, column: 28, scope: !1493)
!1505 = !DILocation(line: 266, column: 37, scope: !1493)
!1506 = !DILocation(line: 266, column: 5, scope: !1493)
!1507 = !DILocation(line: 266, column: 12, scope: !1493)
!1508 = !DILocation(line: 266, column: 26, scope: !1493)
!1509 = !DILocation(line: 267, column: 13, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1493, file: !1, line: 267, column: 5)
!1511 = !DILocation(line: 267, column: 10, scope: !1510)
!1512 = !DILocation(line: 267, column: 18, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1510, file: !1, line: 267, column: 5)
!1514 = !DILocation(line: 267, column: 23, scope: !1513)
!1515 = !DILocation(line: 267, column: 32, scope: !1513)
!1516 = !DILocation(line: 267, column: 21, scope: !1513)
!1517 = !DILocation(line: 267, column: 5, scope: !1510)
!1518 = !DILocation(line: 269, column: 3, scope: !1519)
!1519 = distinct !DILexicalBlock(scope: !1513, file: !1, line: 267, column: 53)
!1520 = !DILocation(line: 269, column: 10, scope: !1519)
!1521 = !DILocation(line: 269, column: 20, scope: !1519)
!1522 = !DILocation(line: 269, column: 29, scope: !1519)
!1523 = !DILocation(line: 269, column: 45, scope: !1519)
!1524 = !DILocation(line: 268, column: 7, scope: !1519)
!1525 = !DILocation(line: 268, column: 14, scope: !1519)
!1526 = !DILocation(line: 268, column: 28, scope: !1519)
!1527 = !DILocation(line: 268, column: 32, scope: !1519)
!1528 = !DILocation(line: 270, column: 5, scope: !1519)
!1529 = !DILocation(line: 267, column: 49, scope: !1513)
!1530 = !DILocation(line: 267, column: 5, scope: !1513)
!1531 = distinct !{!1531, !1517, !1532, !1001}
!1532 = !DILocation(line: 270, column: 5, scope: !1510)
!1533 = !DILocation(line: 271, column: 17, scope: !1493)
!1534 = !DILocation(line: 271, column: 26, scope: !1493)
!1535 = !DILocation(line: 271, column: 5, scope: !1493)
!1536 = !DILocation(line: 271, column: 12, scope: !1493)
!1537 = !DILocation(line: 271, column: 15, scope: !1493)
!1538 = !DILocation(line: 272, column: 17, scope: !1493)
!1539 = !DILocation(line: 272, column: 26, scope: !1493)
!1540 = !DILocation(line: 272, column: 5, scope: !1493)
!1541 = !DILocation(line: 272, column: 12, scope: !1493)
!1542 = !DILocation(line: 272, column: 15, scope: !1493)
!1543 = !DILocation(line: 273, column: 17, scope: !1493)
!1544 = !DILocation(line: 273, column: 26, scope: !1493)
!1545 = !DILocation(line: 273, column: 5, scope: !1493)
!1546 = !DILocation(line: 273, column: 12, scope: !1493)
!1547 = !DILocation(line: 273, column: 15, scope: !1493)
!1548 = !DILocation(line: 274, column: 17, scope: !1493)
!1549 = !DILocation(line: 274, column: 26, scope: !1493)
!1550 = !DILocation(line: 274, column: 5, scope: !1493)
!1551 = !DILocation(line: 274, column: 12, scope: !1493)
!1552 = !DILocation(line: 274, column: 15, scope: !1493)
!1553 = !DILocation(line: 275, column: 3, scope: !1493)
!1554 = !DILocation(line: 280, column: 9, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1556, file: !1, line: 280, column: 9)
!1556 = distinct !DILexicalBlock(scope: !1489, file: !1, line: 278, column: 3)
!1557 = !DILocation(line: 280, column: 16, scope: !1555)
!1558 = !DILocation(line: 280, column: 31, scope: !1555)
!1559 = !DILocation(line: 281, column: 7, scope: !1555)
!1560 = !DILocation(line: 283, column: 28, scope: !1556)
!1561 = !DILocation(line: 283, column: 35, scope: !1556)
!1562 = !DILocation(line: 283, column: 5, scope: !1556)
!1563 = !DILocation(line: 283, column: 12, scope: !1556)
!1564 = !DILocation(line: 283, column: 26, scope: !1556)
!1565 = !DILocation(line: 284, column: 13, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1556, file: !1, line: 284, column: 5)
!1567 = !DILocation(line: 284, column: 10, scope: !1566)
!1568 = !DILocation(line: 284, column: 18, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1566, file: !1, line: 284, column: 5)
!1570 = !DILocation(line: 284, column: 23, scope: !1569)
!1571 = !DILocation(line: 284, column: 30, scope: !1569)
!1572 = !DILocation(line: 284, column: 21, scope: !1569)
!1573 = !DILocation(line: 284, column: 5, scope: !1566)
!1574 = !DILocation(line: 285, column: 35, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1569, file: !1, line: 284, column: 52)
!1576 = !DILocation(line: 285, column: 42, scope: !1575)
!1577 = !DILocation(line: 285, column: 52, scope: !1575)
!1578 = !DILocation(line: 285, column: 7, scope: !1575)
!1579 = !DILocation(line: 285, column: 14, scope: !1575)
!1580 = !DILocation(line: 285, column: 28, scope: !1575)
!1581 = !DILocation(line: 285, column: 32, scope: !1575)
!1582 = !DILocation(line: 286, column: 5, scope: !1575)
!1583 = !DILocation(line: 284, column: 48, scope: !1569)
!1584 = !DILocation(line: 284, column: 5, scope: !1569)
!1585 = distinct !{!1585, !1573, !1586, !1001}
!1586 = !DILocation(line: 286, column: 5, scope: !1566)
!1587 = !DILocation(line: 287, column: 5, scope: !1556)
!1588 = !DILocation(line: 287, column: 12, scope: !1556)
!1589 = !DILocation(line: 287, column: 15, scope: !1556)
!1590 = !DILocation(line: 288, column: 5, scope: !1556)
!1591 = !DILocation(line: 288, column: 12, scope: !1556)
!1592 = !DILocation(line: 288, column: 15, scope: !1556)
!1593 = !DILocation(line: 289, column: 5, scope: !1556)
!1594 = !DILocation(line: 289, column: 12, scope: !1556)
!1595 = !DILocation(line: 289, column: 15, scope: !1556)
!1596 = !DILocation(line: 290, column: 5, scope: !1556)
!1597 = !DILocation(line: 290, column: 12, scope: !1556)
!1598 = !DILocation(line: 290, column: 15, scope: !1556)
!1599 = !DILocation(line: 292, column: 1, scope: !1483)
!1600 = distinct !DISubprogram(name: "per_scan_setup", scope: !1, file: !1, line: 296, type: !165, scopeLine: 299, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !545)
!1601 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1600, file: !1, line: 296, type: !167)
!1602 = !DILocation(line: 296, column: 32, scope: !1600)
!1603 = !DILocalVariable(name: "ci", scope: !1600, file: !1, line: 300, type: !193)
!1604 = !DILocation(line: 300, column: 7, scope: !1600)
!1605 = !DILocalVariable(name: "mcublks", scope: !1600, file: !1, line: 300, type: !193)
!1606 = !DILocation(line: 300, column: 11, scope: !1600)
!1607 = !DILocalVariable(name: "tmp", scope: !1600, file: !1, line: 300, type: !193)
!1608 = !DILocation(line: 300, column: 20, scope: !1600)
!1609 = !DILocalVariable(name: "compptr", scope: !1600, file: !1, line: 301, type: !327)
!1610 = !DILocation(line: 301, column: 24, scope: !1600)
!1611 = !DILocation(line: 303, column: 7, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1600, file: !1, line: 303, column: 7)
!1613 = !DILocation(line: 303, column: 14, scope: !1612)
!1614 = !DILocation(line: 303, column: 28, scope: !1612)
!1615 = !DILocation(line: 306, column: 15, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1612, file: !1, line: 303, column: 34)
!1617 = !DILocation(line: 306, column: 22, scope: !1616)
!1618 = !DILocation(line: 306, column: 13, scope: !1616)
!1619 = !DILocation(line: 309, column: 27, scope: !1616)
!1620 = !DILocation(line: 309, column: 36, scope: !1616)
!1621 = !DILocation(line: 309, column: 5, scope: !1616)
!1622 = !DILocation(line: 309, column: 12, scope: !1616)
!1623 = !DILocation(line: 309, column: 25, scope: !1616)
!1624 = !DILocation(line: 310, column: 31, scope: !1616)
!1625 = !DILocation(line: 310, column: 40, scope: !1616)
!1626 = !DILocation(line: 310, column: 5, scope: !1616)
!1627 = !DILocation(line: 310, column: 12, scope: !1616)
!1628 = !DILocation(line: 310, column: 29, scope: !1616)
!1629 = !DILocation(line: 313, column: 5, scope: !1616)
!1630 = !DILocation(line: 313, column: 14, scope: !1616)
!1631 = !DILocation(line: 313, column: 24, scope: !1616)
!1632 = !DILocation(line: 314, column: 5, scope: !1616)
!1633 = !DILocation(line: 314, column: 14, scope: !1616)
!1634 = !DILocation(line: 314, column: 25, scope: !1616)
!1635 = !DILocation(line: 315, column: 5, scope: !1616)
!1636 = !DILocation(line: 315, column: 14, scope: !1616)
!1637 = !DILocation(line: 315, column: 25, scope: !1616)
!1638 = !DILocation(line: 316, column: 5, scope: !1616)
!1639 = !DILocation(line: 316, column: 14, scope: !1616)
!1640 = !DILocation(line: 316, column: 31, scope: !1616)
!1641 = !DILocation(line: 317, column: 5, scope: !1616)
!1642 = !DILocation(line: 317, column: 14, scope: !1616)
!1643 = !DILocation(line: 317, column: 29, scope: !1616)
!1644 = !DILocation(line: 321, column: 18, scope: !1616)
!1645 = !DILocation(line: 321, column: 27, scope: !1616)
!1646 = !DILocation(line: 321, column: 46, scope: !1616)
!1647 = !DILocation(line: 321, column: 55, scope: !1616)
!1648 = !DILocation(line: 321, column: 44, scope: !1616)
!1649 = !DILocation(line: 321, column: 9, scope: !1616)
!1650 = !DILocation(line: 322, column: 9, scope: !1651)
!1651 = distinct !DILexicalBlock(scope: !1616, file: !1, line: 322, column: 9)
!1652 = !DILocation(line: 322, column: 13, scope: !1651)
!1653 = !DILocation(line: 322, column: 25, scope: !1651)
!1654 = !DILocation(line: 322, column: 34, scope: !1651)
!1655 = !DILocation(line: 322, column: 23, scope: !1651)
!1656 = !DILocation(line: 322, column: 19, scope: !1651)
!1657 = !DILocation(line: 323, column: 32, scope: !1616)
!1658 = !DILocation(line: 323, column: 5, scope: !1616)
!1659 = !DILocation(line: 323, column: 14, scope: !1616)
!1660 = !DILocation(line: 323, column: 30, scope: !1616)
!1661 = !DILocation(line: 326, column: 5, scope: !1616)
!1662 = !DILocation(line: 326, column: 12, scope: !1616)
!1663 = !DILocation(line: 326, column: 26, scope: !1616)
!1664 = !DILocation(line: 327, column: 5, scope: !1616)
!1665 = !DILocation(line: 327, column: 12, scope: !1616)
!1666 = !DILocation(line: 327, column: 30, scope: !1616)
!1667 = !DILocation(line: 329, column: 3, scope: !1616)
!1668 = !DILocation(line: 332, column: 9, scope: !1669)
!1669 = distinct !DILexicalBlock(scope: !1670, file: !1, line: 332, column: 9)
!1670 = distinct !DILexicalBlock(scope: !1612, file: !1, line: 329, column: 10)
!1671 = !DILocation(line: 332, column: 16, scope: !1669)
!1672 = !DILocation(line: 332, column: 30, scope: !1669)
!1673 = !DILocation(line: 332, column: 35, scope: !1669)
!1674 = !DILocation(line: 332, column: 38, scope: !1669)
!1675 = !DILocation(line: 332, column: 45, scope: !1669)
!1676 = !DILocation(line: 332, column: 59, scope: !1669)
!1677 = !DILocation(line: 333, column: 7, scope: !1669)
!1678 = !DILocation(line: 338, column: 28, scope: !1670)
!1679 = !DILocation(line: 338, column: 35, scope: !1670)
!1680 = !DILocation(line: 338, column: 21, scope: !1670)
!1681 = !DILocation(line: 339, column: 15, scope: !1670)
!1682 = !DILocation(line: 339, column: 22, scope: !1670)
!1683 = !DILocation(line: 339, column: 39, scope: !1670)
!1684 = !DILocation(line: 339, column: 7, scope: !1670)
!1685 = !DILocation(line: 338, column: 7, scope: !1670)
!1686 = !DILocation(line: 337, column: 27, scope: !1670)
!1687 = !DILocation(line: 337, column: 5, scope: !1670)
!1688 = !DILocation(line: 337, column: 12, scope: !1670)
!1689 = !DILocation(line: 337, column: 25, scope: !1670)
!1690 = !DILocation(line: 341, column: 28, scope: !1670)
!1691 = !DILocation(line: 341, column: 35, scope: !1670)
!1692 = !DILocation(line: 341, column: 21, scope: !1670)
!1693 = !DILocation(line: 342, column: 15, scope: !1670)
!1694 = !DILocation(line: 342, column: 22, scope: !1670)
!1695 = !DILocation(line: 342, column: 39, scope: !1670)
!1696 = !DILocation(line: 342, column: 7, scope: !1670)
!1697 = !DILocation(line: 341, column: 7, scope: !1670)
!1698 = !DILocation(line: 340, column: 31, scope: !1670)
!1699 = !DILocation(line: 340, column: 5, scope: !1670)
!1700 = !DILocation(line: 340, column: 12, scope: !1670)
!1701 = !DILocation(line: 340, column: 29, scope: !1670)
!1702 = !DILocation(line: 344, column: 5, scope: !1670)
!1703 = !DILocation(line: 344, column: 12, scope: !1670)
!1704 = !DILocation(line: 344, column: 26, scope: !1670)
!1705 = !DILocation(line: 346, column: 13, scope: !1706)
!1706 = distinct !DILexicalBlock(scope: !1670, file: !1, line: 346, column: 5)
!1707 = !DILocation(line: 346, column: 10, scope: !1706)
!1708 = !DILocation(line: 346, column: 18, scope: !1709)
!1709 = distinct !DILexicalBlock(scope: !1706, file: !1, line: 346, column: 5)
!1710 = !DILocation(line: 346, column: 23, scope: !1709)
!1711 = !DILocation(line: 346, column: 30, scope: !1709)
!1712 = !DILocation(line: 346, column: 21, scope: !1709)
!1713 = !DILocation(line: 346, column: 5, scope: !1706)
!1714 = !DILocation(line: 347, column: 17, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !1709, file: !1, line: 346, column: 51)
!1716 = !DILocation(line: 347, column: 24, scope: !1715)
!1717 = !DILocation(line: 347, column: 38, scope: !1715)
!1718 = !DILocation(line: 347, column: 15, scope: !1715)
!1719 = !DILocation(line: 349, column: 28, scope: !1715)
!1720 = !DILocation(line: 349, column: 37, scope: !1715)
!1721 = !DILocation(line: 349, column: 7, scope: !1715)
!1722 = !DILocation(line: 349, column: 16, scope: !1715)
!1723 = !DILocation(line: 349, column: 26, scope: !1715)
!1724 = !DILocation(line: 350, column: 29, scope: !1715)
!1725 = !DILocation(line: 350, column: 38, scope: !1715)
!1726 = !DILocation(line: 350, column: 7, scope: !1715)
!1727 = !DILocation(line: 350, column: 16, scope: !1715)
!1728 = !DILocation(line: 350, column: 27, scope: !1715)
!1729 = !DILocation(line: 351, column: 29, scope: !1715)
!1730 = !DILocation(line: 351, column: 38, scope: !1715)
!1731 = !DILocation(line: 351, column: 50, scope: !1715)
!1732 = !DILocation(line: 351, column: 59, scope: !1715)
!1733 = !DILocation(line: 351, column: 48, scope: !1715)
!1734 = !DILocation(line: 351, column: 7, scope: !1715)
!1735 = !DILocation(line: 351, column: 16, scope: !1715)
!1736 = !DILocation(line: 351, column: 27, scope: !1715)
!1737 = !DILocation(line: 352, column: 35, scope: !1715)
!1738 = !DILocation(line: 352, column: 44, scope: !1715)
!1739 = !DILocation(line: 352, column: 54, scope: !1715)
!1740 = !DILocation(line: 352, column: 7, scope: !1715)
!1741 = !DILocation(line: 352, column: 16, scope: !1715)
!1742 = !DILocation(line: 352, column: 33, scope: !1715)
!1743 = !DILocation(line: 354, column: 20, scope: !1715)
!1744 = !DILocation(line: 354, column: 29, scope: !1715)
!1745 = !DILocation(line: 354, column: 47, scope: !1715)
!1746 = !DILocation(line: 354, column: 56, scope: !1715)
!1747 = !DILocation(line: 354, column: 45, scope: !1715)
!1748 = !DILocation(line: 354, column: 11, scope: !1715)
!1749 = !DILocation(line: 355, column: 11, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !1715, file: !1, line: 355, column: 11)
!1751 = !DILocation(line: 355, column: 15, scope: !1750)
!1752 = !DILocation(line: 355, column: 27, scope: !1750)
!1753 = !DILocation(line: 355, column: 36, scope: !1750)
!1754 = !DILocation(line: 355, column: 25, scope: !1750)
!1755 = !DILocation(line: 355, column: 21, scope: !1750)
!1756 = !DILocation(line: 356, column: 33, scope: !1715)
!1757 = !DILocation(line: 356, column: 7, scope: !1715)
!1758 = !DILocation(line: 356, column: 16, scope: !1715)
!1759 = !DILocation(line: 356, column: 31, scope: !1715)
!1760 = !DILocation(line: 357, column: 20, scope: !1715)
!1761 = !DILocation(line: 357, column: 29, scope: !1715)
!1762 = !DILocation(line: 357, column: 48, scope: !1715)
!1763 = !DILocation(line: 357, column: 57, scope: !1715)
!1764 = !DILocation(line: 357, column: 46, scope: !1715)
!1765 = !DILocation(line: 357, column: 11, scope: !1715)
!1766 = !DILocation(line: 358, column: 11, scope: !1767)
!1767 = distinct !DILexicalBlock(scope: !1715, file: !1, line: 358, column: 11)
!1768 = !DILocation(line: 358, column: 15, scope: !1767)
!1769 = !DILocation(line: 358, column: 27, scope: !1767)
!1770 = !DILocation(line: 358, column: 36, scope: !1767)
!1771 = !DILocation(line: 358, column: 25, scope: !1767)
!1772 = !DILocation(line: 358, column: 21, scope: !1767)
!1773 = !DILocation(line: 359, column: 34, scope: !1715)
!1774 = !DILocation(line: 359, column: 7, scope: !1715)
!1775 = !DILocation(line: 359, column: 16, scope: !1715)
!1776 = !DILocation(line: 359, column: 32, scope: !1715)
!1777 = !DILocation(line: 361, column: 17, scope: !1715)
!1778 = !DILocation(line: 361, column: 26, scope: !1715)
!1779 = !DILocation(line: 361, column: 15, scope: !1715)
!1780 = !DILocation(line: 362, column: 11, scope: !1781)
!1781 = distinct !DILexicalBlock(scope: !1715, file: !1, line: 362, column: 11)
!1782 = !DILocation(line: 362, column: 18, scope: !1781)
!1783 = !DILocation(line: 362, column: 34, scope: !1781)
!1784 = !DILocation(line: 362, column: 32, scope: !1781)
!1785 = !DILocation(line: 362, column: 42, scope: !1781)
!1786 = !DILocation(line: 363, column: 2, scope: !1781)
!1787 = !DILocation(line: 364, column: 7, scope: !1715)
!1788 = !DILocation(line: 364, column: 21, scope: !1715)
!1789 = !DILocation(line: 364, column: 24, scope: !1715)
!1790 = !DILocation(line: 365, column: 50, scope: !1791)
!1791 = distinct !DILexicalBlock(scope: !1715, file: !1, line: 364, column: 29)
!1792 = !DILocation(line: 365, column: 2, scope: !1791)
!1793 = !DILocation(line: 365, column: 9, scope: !1791)
!1794 = !DILocation(line: 365, column: 24, scope: !1791)
!1795 = !DILocation(line: 365, column: 31, scope: !1791)
!1796 = !DILocation(line: 365, column: 44, scope: !1791)
!1797 = !DILocation(line: 365, column: 48, scope: !1791)
!1798 = distinct !{!1798, !1787, !1799, !1001}
!1799 = !DILocation(line: 366, column: 7, scope: !1715)
!1800 = !DILocation(line: 367, column: 5, scope: !1715)
!1801 = !DILocation(line: 346, column: 47, scope: !1709)
!1802 = !DILocation(line: 346, column: 5, scope: !1709)
!1803 = distinct !{!1803, !1713, !1804, !1001}
!1804 = !DILocation(line: 367, column: 5, scope: !1706)
!1805 = !DILocation(line: 373, column: 7, scope: !1806)
!1806 = distinct !DILexicalBlock(scope: !1600, file: !1, line: 373, column: 7)
!1807 = !DILocation(line: 373, column: 14, scope: !1806)
!1808 = !DILocation(line: 373, column: 30, scope: !1806)
!1809 = !DILocalVariable(name: "nominal", scope: !1810, file: !1, line: 374, type: !254)
!1810 = distinct !DILexicalBlock(scope: !1806, file: !1, line: 373, column: 35)
!1811 = !DILocation(line: 374, column: 10, scope: !1810)
!1812 = !DILocation(line: 374, column: 27, scope: !1810)
!1813 = !DILocation(line: 374, column: 34, scope: !1810)
!1814 = !DILocation(line: 374, column: 20, scope: !1810)
!1815 = !DILocation(line: 374, column: 59, scope: !1810)
!1816 = !DILocation(line: 374, column: 66, scope: !1810)
!1817 = !DILocation(line: 374, column: 52, scope: !1810)
!1818 = !DILocation(line: 374, column: 50, scope: !1810)
!1819 = !DILocation(line: 375, column: 46, scope: !1810)
!1820 = !DILocation(line: 375, column: 31, scope: !1810)
!1821 = !DILocation(line: 375, column: 5, scope: !1810)
!1822 = !DILocation(line: 375, column: 12, scope: !1810)
!1823 = !DILocation(line: 375, column: 29, scope: !1810)
!1824 = !DILocation(line: 376, column: 3, scope: !1810)
!1825 = !DILocation(line: 377, column: 1, scope: !1600)
