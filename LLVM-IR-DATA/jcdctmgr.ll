; ModuleID = 'cBench/consumer_jpeg_c/src/jcdctmgr.c'
source_filename = "cBench/consumer_jpeg_c/src/jcdctmgr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jpeg_compress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, double, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [16 x i8], [16 x i8], [16 x i8], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.my_fdct_controller = type { %struct.jpeg_forward_dct, ptr, [4 x ptr], ptr, [4 x ptr] }
%struct.jpeg_forward_dct = type { ptr, ptr }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.JQUANT_TBL = type { [64 x i16], i32 }

@start_pass_fdctmgr.aanscales = internal constant [64 x i16] [i16 16384, i16 22725, i16 21407, i16 19266, i16 16384, i16 12873, i16 8867, i16 4520, i16 22725, i16 31521, i16 29692, i16 26722, i16 22725, i16 17855, i16 12299, i16 6270, i16 21407, i16 29692, i16 27969, i16 25172, i16 21407, i16 16819, i16 11585, i16 5906, i16 19266, i16 26722, i16 25172, i16 22654, i16 19266, i16 15137, i16 10426, i16 5315, i16 16384, i16 22725, i16 21407, i16 19266, i16 16384, i16 12873, i16 8867, i16 4520, i16 12873, i16 17855, i16 16819, i16 15137, i16 12873, i16 10114, i16 6967, i16 3552, i16 8867, i16 12299, i16 11585, i16 10426, i16 8867, i16 6967, i16 4799, i16 2446, i16 4520, i16 6270, i16 5906, i16 5315, i16 4520, i16 3552, i16 2446, i16 1247], align 16, !dbg !0
@start_pass_fdctmgr.aanscalefactor = internal constant [8 x double] [double 1.000000e+00, double 0x3FF63150B14861EF, double 0x3FF4E7AE914D6FCA, double 0x3FF2D062EF6C11AA, double 1.000000e+00, double 0x3FE92469C0A7BF3B, double 0x3FE1517A7BC720BB, double 0x3FD1A855DE72AB5D], align 16, !dbg !550

; Function Attrs: noinline nounwind uwtable
define dso_local void @jinit_forward_dct(ptr noundef %0) #0 !dbg !566 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !567, !DIExpression(), !568)
    #dbg_declare(ptr %3, !569, !DIExpression(), !570)
    #dbg_declare(ptr %4, !571, !DIExpression(), !572)
  %5 = load ptr, ptr %2, align 8, !dbg !573
  %6 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %5, i32 0, i32 1, !dbg !574
  %7 = load ptr, ptr %6, align 8, !dbg !574
  %8 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %7, i32 0, i32 0, !dbg !575
  %9 = load ptr, ptr %8, align 8, !dbg !575
  %10 = load ptr, ptr %2, align 8, !dbg !576
  %11 = call ptr %9(ptr noundef %10, i32 noundef 1, i64 noundef 96), !dbg !577
  store ptr %11, ptr %3, align 8, !dbg !578
  %12 = load ptr, ptr %3, align 8, !dbg !579
  %13 = load ptr, ptr %2, align 8, !dbg !580
  %14 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %13, i32 0, i32 58, !dbg !581
  store ptr %12, ptr %14, align 8, !dbg !582
  %15 = load ptr, ptr %3, align 8, !dbg !583
  %16 = getelementptr inbounds nuw %struct.my_fdct_controller, ptr %15, i32 0, i32 0, !dbg !584
  %17 = getelementptr inbounds nuw %struct.jpeg_forward_dct, ptr %16, i32 0, i32 0, !dbg !585
  store ptr @start_pass_fdctmgr, ptr %17, align 8, !dbg !586
  %18 = load ptr, ptr %2, align 8, !dbg !587
  %19 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %18, i32 0, i32 28, !dbg !588
  %20 = load i32, ptr %19, align 4, !dbg !588
  switch i32 %20, label %39 [
    i32 0, label %21
    i32 1, label %27
    i32 2, label %33
  ], !dbg !589

21:                                               ; preds = %1
  %22 = load ptr, ptr %3, align 8, !dbg !590
  %23 = getelementptr inbounds nuw %struct.my_fdct_controller, ptr %22, i32 0, i32 0, !dbg !592
  %24 = getelementptr inbounds nuw %struct.jpeg_forward_dct, ptr %23, i32 0, i32 1, !dbg !593
  store ptr @forward_DCT, ptr %24, align 8, !dbg !594
  %25 = load ptr, ptr %3, align 8, !dbg !595
  %26 = getelementptr inbounds nuw %struct.my_fdct_controller, ptr %25, i32 0, i32 1, !dbg !596
  store ptr @jpeg_fdct_islow, ptr %26, align 8, !dbg !597
  br label %50, !dbg !598

27:                                               ; preds = %1
  %28 = load ptr, ptr %3, align 8, !dbg !599
  %29 = getelementptr inbounds nuw %struct.my_fdct_controller, ptr %28, i32 0, i32 0, !dbg !600
  %30 = getelementptr inbounds nuw %struct.jpeg_forward_dct, ptr %29, i32 0, i32 1, !dbg !601
  store ptr @forward_DCT, ptr %30, align 8, !dbg !602
  %31 = load ptr, ptr %3, align 8, !dbg !603
  %32 = getelementptr inbounds nuw %struct.my_fdct_controller, ptr %31, i32 0, i32 1, !dbg !604
  store ptr @jpeg_fdct_ifast, ptr %32, align 8, !dbg !605
  br label %50, !dbg !606

33:                                               ; preds = %1
  %34 = load ptr, ptr %3, align 8, !dbg !607
  %35 = getelementptr inbounds nuw %struct.my_fdct_controller, ptr %34, i32 0, i32 0, !dbg !608
  %36 = getelementptr inbounds nuw %struct.jpeg_forward_dct, ptr %35, i32 0, i32 1, !dbg !609
  store ptr @forward_DCT_float, ptr %36, align 8, !dbg !610
  %37 = load ptr, ptr %3, align 8, !dbg !611
  %38 = getelementptr inbounds nuw %struct.my_fdct_controller, ptr %37, i32 0, i32 3, !dbg !612
  store ptr @jpeg_fdct_float, ptr %38, align 8, !dbg !613
  br label %50, !dbg !614

39:                                               ; preds = %1
  %40 = load ptr, ptr %2, align 8, !dbg !615
  %41 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %40, i32 0, i32 0, !dbg !615
  %42 = load ptr, ptr %41, align 8, !dbg !615
  %43 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %42, i32 0, i32 5, !dbg !615
  store i32 47, ptr %43, align 8, !dbg !615
  %44 = load ptr, ptr %2, align 8, !dbg !615
  %45 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %44, i32 0, i32 0, !dbg !615
  %46 = load ptr, ptr %45, align 8, !dbg !615
  %47 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %46, i32 0, i32 0, !dbg !615
  %48 = load ptr, ptr %47, align 8, !dbg !615
  %49 = load ptr, ptr %2, align 8, !dbg !615
  call void %48(ptr noundef %49), !dbg !615
  br label %50, !dbg !616

50:                                               ; preds = %39, %33, %27, %21
  store i32 0, ptr %4, align 4, !dbg !617
  br label %51, !dbg !619

51:                                               ; preds = %65, %50
  %52 = load i32, ptr %4, align 4, !dbg !620
  %53 = icmp slt i32 %52, 4, !dbg !622
  br i1 %53, label %54, label %68, !dbg !623

54:                                               ; preds = %51
  %55 = load ptr, ptr %3, align 8, !dbg !624
  %56 = getelementptr inbounds nuw %struct.my_fdct_controller, ptr %55, i32 0, i32 2, !dbg !626
  %57 = load i32, ptr %4, align 4, !dbg !627
  %58 = sext i32 %57 to i64, !dbg !624
  %59 = getelementptr inbounds [4 x ptr], ptr %56, i64 0, i64 %58, !dbg !624
  store ptr null, ptr %59, align 8, !dbg !628
  %60 = load ptr, ptr %3, align 8, !dbg !629
  %61 = getelementptr inbounds nuw %struct.my_fdct_controller, ptr %60, i32 0, i32 4, !dbg !630
  %62 = load i32, ptr %4, align 4, !dbg !631
  %63 = sext i32 %62 to i64, !dbg !629
  %64 = getelementptr inbounds [4 x ptr], ptr %61, i64 0, i64 %63, !dbg !629
  store ptr null, ptr %64, align 8, !dbg !632
  br label %65, !dbg !633

65:                                               ; preds = %54
  %66 = load i32, ptr %4, align 4, !dbg !634
  %67 = add nsw i32 %66, 1, !dbg !634
  store i32 %67, ptr %4, align 4, !dbg !634
  br label %51, !dbg !635, !llvm.loop !636

68:                                               ; preds = %51
  ret void, !dbg !639
}

; Function Attrs: noinline nounwind uwtable
define internal void @start_pass_fdctmgr(ptr noundef %0) #0 !dbg !2 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !640, !DIExpression(), !641)
    #dbg_declare(ptr %3, !642, !DIExpression(), !643)
  %13 = load ptr, ptr %2, align 8, !dbg !644
  %14 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %13, i32 0, i32 58, !dbg !645
  %15 = load ptr, ptr %14, align 8, !dbg !645
  store ptr %15, ptr %3, align 8, !dbg !643
    #dbg_declare(ptr %4, !646, !DIExpression(), !647)
    #dbg_declare(ptr %5, !648, !DIExpression(), !649)
    #dbg_declare(ptr %6, !650, !DIExpression(), !651)
    #dbg_declare(ptr %7, !652, !DIExpression(), !653)
    #dbg_declare(ptr %8, !654, !DIExpression(), !655)
    #dbg_declare(ptr %9, !656, !DIExpression(), !657)
  store i32 0, ptr %4, align 4, !dbg !658
  %16 = load ptr, ptr %2, align 8, !dbg !660
  %17 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %16, i32 0, i32 14, !dbg !661
  %18 = load ptr, ptr %17, align 8, !dbg !661
  store ptr %18, ptr %7, align 8, !dbg !662
  br label %19, !dbg !663

19:                                               ; preds = %255, %1
  %20 = load i32, ptr %4, align 4, !dbg !664
  %21 = load ptr, ptr %2, align 8, !dbg !666
  %22 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %21, i32 0, i32 12, !dbg !667
  %23 = load i32, ptr %22, align 4, !dbg !667
  %24 = icmp slt i32 %20, %23, !dbg !668
  br i1 %24, label %25, label %260, !dbg !669

25:                                               ; preds = %19
  %26 = load ptr, ptr %7, align 8, !dbg !670
  %27 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %26, i32 0, i32 4, !dbg !672
  %28 = load i32, ptr %27, align 8, !dbg !672
  store i32 %28, ptr %5, align 4, !dbg !673
  %29 = load i32, ptr %5, align 4, !dbg !674
  %30 = icmp slt i32 %29, 0, !dbg !676
  br i1 %30, label %42, label %31, !dbg !677

31:                                               ; preds = %25
  %32 = load i32, ptr %5, align 4, !dbg !678
  %33 = icmp sge i32 %32, 4, !dbg !679
  br i1 %33, label %42, label %34, !dbg !680

34:                                               ; preds = %31
  %35 = load ptr, ptr %2, align 8, !dbg !681
  %36 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %35, i32 0, i32 15, !dbg !682
  %37 = load i32, ptr %5, align 4, !dbg !683
  %38 = sext i32 %37 to i64, !dbg !681
  %39 = getelementptr inbounds [4 x ptr], ptr %36, i64 0, i64 %38, !dbg !681
  %40 = load ptr, ptr %39, align 8, !dbg !681
  %41 = icmp eq ptr %40, null, !dbg !684
  br i1 %41, label %42, label %59, !dbg !680

42:                                               ; preds = %34, %31, %25
  %43 = load ptr, ptr %2, align 8, !dbg !685
  %44 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %43, i32 0, i32 0, !dbg !685
  %45 = load ptr, ptr %44, align 8, !dbg !685
  %46 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %45, i32 0, i32 5, !dbg !685
  store i32 51, ptr %46, align 8, !dbg !685
  %47 = load i32, ptr %5, align 4, !dbg !685
  %48 = load ptr, ptr %2, align 8, !dbg !685
  %49 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %48, i32 0, i32 0, !dbg !685
  %50 = load ptr, ptr %49, align 8, !dbg !685
  %51 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %50, i32 0, i32 6, !dbg !685
  %52 = getelementptr inbounds [8 x i32], ptr %51, i64 0, i64 0, !dbg !685
  store i32 %47, ptr %52, align 4, !dbg !685
  %53 = load ptr, ptr %2, align 8, !dbg !685
  %54 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %53, i32 0, i32 0, !dbg !685
  %55 = load ptr, ptr %54, align 8, !dbg !685
  %56 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %55, i32 0, i32 0, !dbg !685
  %57 = load ptr, ptr %56, align 8, !dbg !685
  %58 = load ptr, ptr %2, align 8, !dbg !685
  call void %57(ptr noundef %58), !dbg !685
  br label %59, !dbg !685

59:                                               ; preds = %42, %34
  %60 = load ptr, ptr %2, align 8, !dbg !686
  %61 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %60, i32 0, i32 15, !dbg !687
  %62 = load i32, ptr %5, align 4, !dbg !688
  %63 = sext i32 %62 to i64, !dbg !686
  %64 = getelementptr inbounds [4 x ptr], ptr %61, i64 0, i64 %63, !dbg !686
  %65 = load ptr, ptr %64, align 8, !dbg !686
  store ptr %65, ptr %8, align 8, !dbg !689
  %66 = load ptr, ptr %2, align 8, !dbg !690
  %67 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %66, i32 0, i32 28, !dbg !691
  %68 = load i32, ptr %67, align 4, !dbg !691
  switch i32 %68, label %243 [
    i32 0, label %69
    i32 1, label %117
    i32 2, label %173
  ], !dbg !692

69:                                               ; preds = %59
  %70 = load ptr, ptr %3, align 8, !dbg !693
  %71 = getelementptr inbounds nuw %struct.my_fdct_controller, ptr %70, i32 0, i32 2, !dbg !696
  %72 = load i32, ptr %5, align 4, !dbg !697
  %73 = sext i32 %72 to i64, !dbg !693
  %74 = getelementptr inbounds [4 x ptr], ptr %71, i64 0, i64 %73, !dbg !693
  %75 = load ptr, ptr %74, align 8, !dbg !693
  %76 = icmp eq ptr %75, null, !dbg !698
  br i1 %76, label %77, label %90, !dbg !698

77:                                               ; preds = %69
  %78 = load ptr, ptr %2, align 8, !dbg !699
  %79 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %78, i32 0, i32 1, !dbg !701
  %80 = load ptr, ptr %79, align 8, !dbg !701
  %81 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %80, i32 0, i32 0, !dbg !702
  %82 = load ptr, ptr %81, align 8, !dbg !702
  %83 = load ptr, ptr %2, align 8, !dbg !703
  %84 = call ptr %82(ptr noundef %83, i32 noundef 1, i64 noundef 256), !dbg !704
  %85 = load ptr, ptr %3, align 8, !dbg !705
  %86 = getelementptr inbounds nuw %struct.my_fdct_controller, ptr %85, i32 0, i32 2, !dbg !706
  %87 = load i32, ptr %5, align 4, !dbg !707
  %88 = sext i32 %87 to i64, !dbg !705
  %89 = getelementptr inbounds [4 x ptr], ptr %86, i64 0, i64 %88, !dbg !705
  store ptr %84, ptr %89, align 8, !dbg !708
  br label %90, !dbg !709

90:                                               ; preds = %77, %69
  %91 = load ptr, ptr %3, align 8, !dbg !710
  %92 = getelementptr inbounds nuw %struct.my_fdct_controller, ptr %91, i32 0, i32 2, !dbg !711
  %93 = load i32, ptr %5, align 4, !dbg !712
  %94 = sext i32 %93 to i64, !dbg !710
  %95 = getelementptr inbounds [4 x ptr], ptr %92, i64 0, i64 %94, !dbg !710
  %96 = load ptr, ptr %95, align 8, !dbg !710
  store ptr %96, ptr %9, align 8, !dbg !713
  store i32 0, ptr %6, align 4, !dbg !714
  br label %97, !dbg !716

97:                                               ; preds = %113, %90
  %98 = load i32, ptr %6, align 4, !dbg !717
  %99 = icmp slt i32 %98, 64, !dbg !719
  br i1 %99, label %100, label %116, !dbg !720

100:                                              ; preds = %97
  %101 = load ptr, ptr %8, align 8, !dbg !721
  %102 = getelementptr inbounds nuw %struct.JQUANT_TBL, ptr %101, i32 0, i32 0, !dbg !723
  %103 = load i32, ptr %6, align 4, !dbg !724
  %104 = sext i32 %103 to i64, !dbg !721
  %105 = getelementptr inbounds [64 x i16], ptr %102, i64 0, i64 %104, !dbg !721
  %106 = load i16, ptr %105, align 2, !dbg !721
  %107 = zext i16 %106 to i32, !dbg !725
  %108 = shl i32 %107, 3, !dbg !726
  %109 = load ptr, ptr %9, align 8, !dbg !727
  %110 = load i32, ptr %6, align 4, !dbg !728
  %111 = sext i32 %110 to i64, !dbg !727
  %112 = getelementptr inbounds i32, ptr %109, i64 %111, !dbg !727
  store i32 %108, ptr %112, align 4, !dbg !729
  br label %113, !dbg !730

113:                                              ; preds = %100
  %114 = load i32, ptr %6, align 4, !dbg !731
  %115 = add nsw i32 %114, 1, !dbg !731
  store i32 %115, ptr %6, align 4, !dbg !731
  br label %97, !dbg !732, !llvm.loop !733

116:                                              ; preds = %97
  br label %254, !dbg !735

117:                                              ; preds = %59
  %118 = load ptr, ptr %3, align 8, !dbg !736
  %119 = getelementptr inbounds nuw %struct.my_fdct_controller, ptr %118, i32 0, i32 2, !dbg !739
  %120 = load i32, ptr %5, align 4, !dbg !740
  %121 = sext i32 %120 to i64, !dbg !736
  %122 = getelementptr inbounds [4 x ptr], ptr %119, i64 0, i64 %121, !dbg !736
  %123 = load ptr, ptr %122, align 8, !dbg !736
  %124 = icmp eq ptr %123, null, !dbg !741
  br i1 %124, label %125, label %138, !dbg !741

125:                                              ; preds = %117
  %126 = load ptr, ptr %2, align 8, !dbg !742
  %127 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %126, i32 0, i32 1, !dbg !744
  %128 = load ptr, ptr %127, align 8, !dbg !744
  %129 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %128, i32 0, i32 0, !dbg !745
  %130 = load ptr, ptr %129, align 8, !dbg !745
  %131 = load ptr, ptr %2, align 8, !dbg !746
  %132 = call ptr %130(ptr noundef %131, i32 noundef 1, i64 noundef 256), !dbg !747
  %133 = load ptr, ptr %3, align 8, !dbg !748
  %134 = getelementptr inbounds nuw %struct.my_fdct_controller, ptr %133, i32 0, i32 2, !dbg !749
  %135 = load i32, ptr %5, align 4, !dbg !750
  %136 = sext i32 %135 to i64, !dbg !748
  %137 = getelementptr inbounds [4 x ptr], ptr %134, i64 0, i64 %136, !dbg !748
  store ptr %132, ptr %137, align 8, !dbg !751
  br label %138, !dbg !752

138:                                              ; preds = %125, %117
  %139 = load ptr, ptr %3, align 8, !dbg !753
  %140 = getelementptr inbounds nuw %struct.my_fdct_controller, ptr %139, i32 0, i32 2, !dbg !754
  %141 = load i32, ptr %5, align 4, !dbg !755
  %142 = sext i32 %141 to i64, !dbg !753
  %143 = getelementptr inbounds [4 x ptr], ptr %140, i64 0, i64 %142, !dbg !753
  %144 = load ptr, ptr %143, align 8, !dbg !753
  store ptr %144, ptr %9, align 8, !dbg !756
  store i32 0, ptr %6, align 4, !dbg !757
  br label %145, !dbg !759

145:                                              ; preds = %169, %138
  %146 = load i32, ptr %6, align 4, !dbg !760
  %147 = icmp slt i32 %146, 64, !dbg !762
  br i1 %147, label %148, label %172, !dbg !763

148:                                              ; preds = %145
  %149 = load ptr, ptr %8, align 8, !dbg !764
  %150 = getelementptr inbounds nuw %struct.JQUANT_TBL, ptr %149, i32 0, i32 0, !dbg !764
  %151 = load i32, ptr %6, align 4, !dbg !764
  %152 = sext i32 %151 to i64, !dbg !764
  %153 = getelementptr inbounds [64 x i16], ptr %150, i64 0, i64 %152, !dbg !764
  %154 = load i16, ptr %153, align 2, !dbg !764
  %155 = zext i16 %154 to i64, !dbg !764
  %156 = load i32, ptr %6, align 4, !dbg !764
  %157 = sext i32 %156 to i64, !dbg !764
  %158 = getelementptr inbounds [64 x i16], ptr @start_pass_fdctmgr.aanscales, i64 0, i64 %157, !dbg !764
  %159 = load i16, ptr %158, align 2, !dbg !764
  %160 = sext i16 %159 to i64, !dbg !764
  %161 = mul nsw i64 %155, %160, !dbg !764
  %162 = add nsw i64 %161, 1024, !dbg !764
  %163 = ashr i64 %162, 11, !dbg !764
  %164 = trunc i64 %163 to i32, !dbg !766
  %165 = load ptr, ptr %9, align 8, !dbg !767
  %166 = load i32, ptr %6, align 4, !dbg !768
  %167 = sext i32 %166 to i64, !dbg !767
  %168 = getelementptr inbounds i32, ptr %165, i64 %167, !dbg !767
  store i32 %164, ptr %168, align 4, !dbg !769
  br label %169, !dbg !770

169:                                              ; preds = %148
  %170 = load i32, ptr %6, align 4, !dbg !771
  %171 = add nsw i32 %170, 1, !dbg !771
  store i32 %171, ptr %6, align 4, !dbg !771
  br label %145, !dbg !772, !llvm.loop !773

172:                                              ; preds = %145
  br label %254, !dbg !775

173:                                              ; preds = %59
    #dbg_declare(ptr %10, !776, !DIExpression(), !778)
    #dbg_declare(ptr %11, !779, !DIExpression(), !780)
    #dbg_declare(ptr %12, !781, !DIExpression(), !782)
  %174 = load ptr, ptr %3, align 8, !dbg !783
  %175 = getelementptr inbounds nuw %struct.my_fdct_controller, ptr %174, i32 0, i32 4, !dbg !785
  %176 = load i32, ptr %5, align 4, !dbg !786
  %177 = sext i32 %176 to i64, !dbg !783
  %178 = getelementptr inbounds [4 x ptr], ptr %175, i64 0, i64 %177, !dbg !783
  %179 = load ptr, ptr %178, align 8, !dbg !783
  %180 = icmp eq ptr %179, null, !dbg !787
  br i1 %180, label %181, label %194, !dbg !787

181:                                              ; preds = %173
  %182 = load ptr, ptr %2, align 8, !dbg !788
  %183 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %182, i32 0, i32 1, !dbg !790
  %184 = load ptr, ptr %183, align 8, !dbg !790
  %185 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %184, i32 0, i32 0, !dbg !791
  %186 = load ptr, ptr %185, align 8, !dbg !791
  %187 = load ptr, ptr %2, align 8, !dbg !792
  %188 = call ptr %186(ptr noundef %187, i32 noundef 1, i64 noundef 256), !dbg !793
  %189 = load ptr, ptr %3, align 8, !dbg !794
  %190 = getelementptr inbounds nuw %struct.my_fdct_controller, ptr %189, i32 0, i32 4, !dbg !795
  %191 = load i32, ptr %5, align 4, !dbg !796
  %192 = sext i32 %191 to i64, !dbg !794
  %193 = getelementptr inbounds [4 x ptr], ptr %190, i64 0, i64 %192, !dbg !794
  store ptr %188, ptr %193, align 8, !dbg !797
  br label %194, !dbg !798

194:                                              ; preds = %181, %173
  %195 = load ptr, ptr %3, align 8, !dbg !799
  %196 = getelementptr inbounds nuw %struct.my_fdct_controller, ptr %195, i32 0, i32 4, !dbg !800
  %197 = load i32, ptr %5, align 4, !dbg !801
  %198 = sext i32 %197 to i64, !dbg !799
  %199 = getelementptr inbounds [4 x ptr], ptr %196, i64 0, i64 %198, !dbg !799
  %200 = load ptr, ptr %199, align 8, !dbg !799
  store ptr %200, ptr %10, align 8, !dbg !802
  store i32 0, ptr %6, align 4, !dbg !803
  store i32 0, ptr %11, align 4, !dbg !804
  br label %201, !dbg !806

201:                                              ; preds = %239, %194
  %202 = load i32, ptr %11, align 4, !dbg !807
  %203 = icmp slt i32 %202, 8, !dbg !809
  br i1 %203, label %204, label %242, !dbg !810

204:                                              ; preds = %201
  store i32 0, ptr %12, align 4, !dbg !811
  br label %205, !dbg !814

205:                                              ; preds = %235, %204
  %206 = load i32, ptr %12, align 4, !dbg !815
  %207 = icmp slt i32 %206, 8, !dbg !817
  br i1 %207, label %208, label %238, !dbg !818

208:                                              ; preds = %205
  %209 = load ptr, ptr %8, align 8, !dbg !819
  %210 = getelementptr inbounds nuw %struct.JQUANT_TBL, ptr %209, i32 0, i32 0, !dbg !821
  %211 = load i32, ptr %6, align 4, !dbg !822
  %212 = sext i32 %211 to i64, !dbg !819
  %213 = getelementptr inbounds [64 x i16], ptr %210, i64 0, i64 %212, !dbg !819
  %214 = load i16, ptr %213, align 2, !dbg !819
  %215 = uitofp i16 %214 to double, !dbg !823
  %216 = load i32, ptr %11, align 4, !dbg !824
  %217 = sext i32 %216 to i64, !dbg !825
  %218 = getelementptr inbounds [8 x double], ptr @start_pass_fdctmgr.aanscalefactor, i64 0, i64 %217, !dbg !825
  %219 = load double, ptr %218, align 8, !dbg !825
  %220 = fmul double %215, %219, !dbg !826
  %221 = load i32, ptr %12, align 4, !dbg !827
  %222 = sext i32 %221 to i64, !dbg !828
  %223 = getelementptr inbounds [8 x double], ptr @start_pass_fdctmgr.aanscalefactor, i64 0, i64 %222, !dbg !828
  %224 = load double, ptr %223, align 8, !dbg !828
  %225 = fmul double %220, %224, !dbg !829
  %226 = fmul double %225, 8.000000e+00, !dbg !830
  %227 = fdiv double 1.000000e+00, %226, !dbg !831
  %228 = fptrunc double %227 to float, !dbg !832
  %229 = load ptr, ptr %10, align 8, !dbg !833
  %230 = load i32, ptr %6, align 4, !dbg !834
  %231 = sext i32 %230 to i64, !dbg !833
  %232 = getelementptr inbounds float, ptr %229, i64 %231, !dbg !833
  store float %228, ptr %232, align 4, !dbg !835
  %233 = load i32, ptr %6, align 4, !dbg !836
  %234 = add nsw i32 %233, 1, !dbg !836
  store i32 %234, ptr %6, align 4, !dbg !836
  br label %235, !dbg !837

235:                                              ; preds = %208
  %236 = load i32, ptr %12, align 4, !dbg !838
  %237 = add nsw i32 %236, 1, !dbg !838
  store i32 %237, ptr %12, align 4, !dbg !838
  br label %205, !dbg !839, !llvm.loop !840

238:                                              ; preds = %205
  br label %239, !dbg !842

239:                                              ; preds = %238
  %240 = load i32, ptr %11, align 4, !dbg !843
  %241 = add nsw i32 %240, 1, !dbg !843
  store i32 %241, ptr %11, align 4, !dbg !843
  br label %201, !dbg !844, !llvm.loop !845

242:                                              ; preds = %201
  br label %254, !dbg !847

243:                                              ; preds = %59
  %244 = load ptr, ptr %2, align 8, !dbg !848
  %245 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %244, i32 0, i32 0, !dbg !848
  %246 = load ptr, ptr %245, align 8, !dbg !848
  %247 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %246, i32 0, i32 5, !dbg !848
  store i32 47, ptr %247, align 8, !dbg !848
  %248 = load ptr, ptr %2, align 8, !dbg !848
  %249 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %248, i32 0, i32 0, !dbg !848
  %250 = load ptr, ptr %249, align 8, !dbg !848
  %251 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %250, i32 0, i32 0, !dbg !848
  %252 = load ptr, ptr %251, align 8, !dbg !848
  %253 = load ptr, ptr %2, align 8, !dbg !848
  call void %252(ptr noundef %253), !dbg !848
  br label %254, !dbg !849

254:                                              ; preds = %243, %242, %172, %116
  br label %255, !dbg !850

255:                                              ; preds = %254
  %256 = load i32, ptr %4, align 4, !dbg !851
  %257 = add nsw i32 %256, 1, !dbg !851
  store i32 %257, ptr %4, align 4, !dbg !851
  %258 = load ptr, ptr %7, align 8, !dbg !852
  %259 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %258, i32 1, !dbg !852
  store ptr %259, ptr %7, align 8, !dbg !852
  br label %19, !dbg !853, !llvm.loop !854

260:                                              ; preds = %19
  ret void, !dbg !856
}

; Function Attrs: noinline nounwind uwtable
define internal void @forward_DCT(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #0 !dbg !857 {
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca [64 x i32], align 16
  %19 = alloca i32, align 4
  %20 = alloca ptr, align 8
  %21 = alloca ptr, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca ptr, align 8
  store ptr %0, ptr %8, align 8
    #dbg_declare(ptr %8, !858, !DIExpression(), !859)
  store ptr %1, ptr %9, align 8
    #dbg_declare(ptr %9, !860, !DIExpression(), !861)
  store ptr %2, ptr %10, align 8
    #dbg_declare(ptr %10, !862, !DIExpression(), !863)
  store ptr %3, ptr %11, align 8
    #dbg_declare(ptr %11, !864, !DIExpression(), !865)
  store i32 %4, ptr %12, align 4
    #dbg_declare(ptr %12, !866, !DIExpression(), !867)
  store i32 %5, ptr %13, align 4
    #dbg_declare(ptr %13, !868, !DIExpression(), !869)
  store i32 %6, ptr %14, align 4
    #dbg_declare(ptr %14, !870, !DIExpression(), !871)
    #dbg_declare(ptr %15, !872, !DIExpression(), !873)
  %27 = load ptr, ptr %8, align 8, !dbg !874
  %28 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %27, i32 0, i32 58, !dbg !875
  %29 = load ptr, ptr %28, align 8, !dbg !875
  store ptr %29, ptr %15, align 8, !dbg !873
    #dbg_declare(ptr %16, !876, !DIExpression(), !877)
  %30 = load ptr, ptr %15, align 8, !dbg !878
  %31 = getelementptr inbounds nuw %struct.my_fdct_controller, ptr %30, i32 0, i32 1, !dbg !879
  %32 = load ptr, ptr %31, align 8, !dbg !879
  store ptr %32, ptr %16, align 8, !dbg !877
    #dbg_declare(ptr %17, !880, !DIExpression(), !881)
  %33 = load ptr, ptr %15, align 8, !dbg !882
  %34 = getelementptr inbounds nuw %struct.my_fdct_controller, ptr %33, i32 0, i32 2, !dbg !883
  %35 = load ptr, ptr %9, align 8, !dbg !884
  %36 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %35, i32 0, i32 4, !dbg !885
  %37 = load i32, ptr %36, align 8, !dbg !885
  %38 = sext i32 %37 to i64, !dbg !882
  %39 = getelementptr inbounds [4 x ptr], ptr %34, i64 0, i64 %38, !dbg !882
  %40 = load ptr, ptr %39, align 8, !dbg !882
  store ptr %40, ptr %17, align 8, !dbg !881
    #dbg_declare(ptr %18, !886, !DIExpression(), !888)
    #dbg_declare(ptr %19, !889, !DIExpression(), !890)
  %41 = load i32, ptr %12, align 4, !dbg !891
  %42 = load ptr, ptr %10, align 8, !dbg !892
  %43 = zext i32 %41 to i64, !dbg !892
  %44 = getelementptr inbounds nuw ptr, ptr %42, i64 %43, !dbg !892
  store ptr %44, ptr %10, align 8, !dbg !892
  store i32 0, ptr %19, align 4, !dbg !893
  br label %45, !dbg !895

45:                                               ; preds = %188, %7
  %46 = load i32, ptr %19, align 4, !dbg !896
  %47 = load i32, ptr %14, align 4, !dbg !898
  %48 = icmp ult i32 %46, %47, !dbg !899
  br i1 %48, label %49, label %193, !dbg !900

49:                                               ; preds = %45
    #dbg_declare(ptr %20, !901, !DIExpression(), !904)
    #dbg_declare(ptr %21, !905, !DIExpression(), !906)
    #dbg_declare(ptr %22, !907, !DIExpression(), !908)
  %50 = getelementptr inbounds [64 x i32], ptr %18, i64 0, i64 0, !dbg !909
  store ptr %50, ptr %20, align 8, !dbg !910
  store i32 0, ptr %22, align 4, !dbg !911
  br label %51, !dbg !913

51:                                               ; preds = %119, %49
  %52 = load i32, ptr %22, align 4, !dbg !914
  %53 = icmp slt i32 %52, 8, !dbg !916
  br i1 %53, label %54, label %122, !dbg !917

54:                                               ; preds = %51
  %55 = load ptr, ptr %10, align 8, !dbg !918
  %56 = load i32, ptr %22, align 4, !dbg !920
  %57 = sext i32 %56 to i64, !dbg !918
  %58 = getelementptr inbounds ptr, ptr %55, i64 %57, !dbg !918
  %59 = load ptr, ptr %58, align 8, !dbg !918
  %60 = load i32, ptr %13, align 4, !dbg !921
  %61 = zext i32 %60 to i64, !dbg !922
  %62 = getelementptr inbounds nuw i8, ptr %59, i64 %61, !dbg !922
  store ptr %62, ptr %21, align 8, !dbg !923
  %63 = load ptr, ptr %21, align 8, !dbg !924
  %64 = getelementptr inbounds nuw i8, ptr %63, i32 1, !dbg !924
  store ptr %64, ptr %21, align 8, !dbg !924
  %65 = load i8, ptr %63, align 1, !dbg !924
  %66 = zext i8 %65 to i32, !dbg !924
  %67 = sub nsw i32 %66, 128, !dbg !925
  %68 = load ptr, ptr %20, align 8, !dbg !926
  %69 = getelementptr inbounds nuw i32, ptr %68, i32 1, !dbg !926
  store ptr %69, ptr %20, align 8, !dbg !926
  store i32 %67, ptr %68, align 4, !dbg !927
  %70 = load ptr, ptr %21, align 8, !dbg !928
  %71 = getelementptr inbounds nuw i8, ptr %70, i32 1, !dbg !928
  store ptr %71, ptr %21, align 8, !dbg !928
  %72 = load i8, ptr %70, align 1, !dbg !928
  %73 = zext i8 %72 to i32, !dbg !928
  %74 = sub nsw i32 %73, 128, !dbg !929
  %75 = load ptr, ptr %20, align 8, !dbg !930
  %76 = getelementptr inbounds nuw i32, ptr %75, i32 1, !dbg !930
  store ptr %76, ptr %20, align 8, !dbg !930
  store i32 %74, ptr %75, align 4, !dbg !931
  %77 = load ptr, ptr %21, align 8, !dbg !932
  %78 = getelementptr inbounds nuw i8, ptr %77, i32 1, !dbg !932
  store ptr %78, ptr %21, align 8, !dbg !932
  %79 = load i8, ptr %77, align 1, !dbg !932
  %80 = zext i8 %79 to i32, !dbg !932
  %81 = sub nsw i32 %80, 128, !dbg !933
  %82 = load ptr, ptr %20, align 8, !dbg !934
  %83 = getelementptr inbounds nuw i32, ptr %82, i32 1, !dbg !934
  store ptr %83, ptr %20, align 8, !dbg !934
  store i32 %81, ptr %82, align 4, !dbg !935
  %84 = load ptr, ptr %21, align 8, !dbg !936
  %85 = getelementptr inbounds nuw i8, ptr %84, i32 1, !dbg !936
  store ptr %85, ptr %21, align 8, !dbg !936
  %86 = load i8, ptr %84, align 1, !dbg !936
  %87 = zext i8 %86 to i32, !dbg !936
  %88 = sub nsw i32 %87, 128, !dbg !937
  %89 = load ptr, ptr %20, align 8, !dbg !938
  %90 = getelementptr inbounds nuw i32, ptr %89, i32 1, !dbg !938
  store ptr %90, ptr %20, align 8, !dbg !938
  store i32 %88, ptr %89, align 4, !dbg !939
  %91 = load ptr, ptr %21, align 8, !dbg !940
  %92 = getelementptr inbounds nuw i8, ptr %91, i32 1, !dbg !940
  store ptr %92, ptr %21, align 8, !dbg !940
  %93 = load i8, ptr %91, align 1, !dbg !940
  %94 = zext i8 %93 to i32, !dbg !940
  %95 = sub nsw i32 %94, 128, !dbg !941
  %96 = load ptr, ptr %20, align 8, !dbg !942
  %97 = getelementptr inbounds nuw i32, ptr %96, i32 1, !dbg !942
  store ptr %97, ptr %20, align 8, !dbg !942
  store i32 %95, ptr %96, align 4, !dbg !943
  %98 = load ptr, ptr %21, align 8, !dbg !944
  %99 = getelementptr inbounds nuw i8, ptr %98, i32 1, !dbg !944
  store ptr %99, ptr %21, align 8, !dbg !944
  %100 = load i8, ptr %98, align 1, !dbg !944
  %101 = zext i8 %100 to i32, !dbg !944
  %102 = sub nsw i32 %101, 128, !dbg !945
  %103 = load ptr, ptr %20, align 8, !dbg !946
  %104 = getelementptr inbounds nuw i32, ptr %103, i32 1, !dbg !946
  store ptr %104, ptr %20, align 8, !dbg !946
  store i32 %102, ptr %103, align 4, !dbg !947
  %105 = load ptr, ptr %21, align 8, !dbg !948
  %106 = getelementptr inbounds nuw i8, ptr %105, i32 1, !dbg !948
  store ptr %106, ptr %21, align 8, !dbg !948
  %107 = load i8, ptr %105, align 1, !dbg !948
  %108 = zext i8 %107 to i32, !dbg !948
  %109 = sub nsw i32 %108, 128, !dbg !949
  %110 = load ptr, ptr %20, align 8, !dbg !950
  %111 = getelementptr inbounds nuw i32, ptr %110, i32 1, !dbg !950
  store ptr %111, ptr %20, align 8, !dbg !950
  store i32 %109, ptr %110, align 4, !dbg !951
  %112 = load ptr, ptr %21, align 8, !dbg !952
  %113 = getelementptr inbounds nuw i8, ptr %112, i32 1, !dbg !952
  store ptr %113, ptr %21, align 8, !dbg !952
  %114 = load i8, ptr %112, align 1, !dbg !952
  %115 = zext i8 %114 to i32, !dbg !952
  %116 = sub nsw i32 %115, 128, !dbg !953
  %117 = load ptr, ptr %20, align 8, !dbg !954
  %118 = getelementptr inbounds nuw i32, ptr %117, i32 1, !dbg !954
  store ptr %118, ptr %20, align 8, !dbg !954
  store i32 %116, ptr %117, align 4, !dbg !955
  br label %119, !dbg !956

119:                                              ; preds = %54
  %120 = load i32, ptr %22, align 4, !dbg !957
  %121 = add nsw i32 %120, 1, !dbg !957
  store i32 %121, ptr %22, align 4, !dbg !957
  br label %51, !dbg !958, !llvm.loop !959

122:                                              ; preds = %51
  %123 = load ptr, ptr %16, align 8, !dbg !961
  %124 = getelementptr inbounds [64 x i32], ptr %18, i64 0, i64 0, !dbg !962
  call void %123(ptr noundef %124), !dbg !963
    #dbg_declare(ptr %23, !964, !DIExpression(), !966)
    #dbg_declare(ptr %24, !967, !DIExpression(), !968)
    #dbg_declare(ptr %25, !969, !DIExpression(), !970)
    #dbg_declare(ptr %26, !971, !DIExpression(), !974)
  %125 = load ptr, ptr %11, align 8, !dbg !975
  %126 = load i32, ptr %19, align 4, !dbg !976
  %127 = zext i32 %126 to i64, !dbg !975
  %128 = getelementptr inbounds nuw [64 x i16], ptr %125, i64 %127, !dbg !975
  %129 = getelementptr inbounds [64 x i16], ptr %128, i64 0, i64 0, !dbg !975
  store ptr %129, ptr %26, align 8, !dbg !974
  store i32 0, ptr %25, align 4, !dbg !977
  br label %130, !dbg !979

130:                                              ; preds = %184, %122
  %131 = load i32, ptr %25, align 4, !dbg !980
  %132 = icmp slt i32 %131, 64, !dbg !982
  br i1 %132, label %133, label %187, !dbg !983

133:                                              ; preds = %130
  %134 = load ptr, ptr %17, align 8, !dbg !984
  %135 = load i32, ptr %25, align 4, !dbg !986
  %136 = sext i32 %135 to i64, !dbg !984
  %137 = getelementptr inbounds i32, ptr %134, i64 %136, !dbg !984
  %138 = load i32, ptr %137, align 4, !dbg !984
  store i32 %138, ptr %24, align 4, !dbg !987
  %139 = load i32, ptr %25, align 4, !dbg !988
  %140 = sext i32 %139 to i64, !dbg !989
  %141 = getelementptr inbounds [64 x i32], ptr %18, i64 0, i64 %140, !dbg !989
  %142 = load i32, ptr %141, align 4, !dbg !989
  store i32 %142, ptr %23, align 4, !dbg !990
  %143 = load i32, ptr %23, align 4, !dbg !991
  %144 = icmp slt i32 %143, 0, !dbg !993
  br i1 %144, label %145, label %163, !dbg !993

145:                                              ; preds = %133
  %146 = load i32, ptr %23, align 4, !dbg !994
  %147 = sub nsw i32 0, %146, !dbg !996
  store i32 %147, ptr %23, align 4, !dbg !997
  %148 = load i32, ptr %24, align 4, !dbg !998
  %149 = ashr i32 %148, 1, !dbg !999
  %150 = load i32, ptr %23, align 4, !dbg !1000
  %151 = add nsw i32 %150, %149, !dbg !1000
  store i32 %151, ptr %23, align 4, !dbg !1000
  %152 = load i32, ptr %23, align 4, !dbg !1001
  %153 = load i32, ptr %24, align 4, !dbg !1001
  %154 = icmp sge i32 %152, %153, !dbg !1001
  br i1 %154, label %155, label %159, !dbg !1001

155:                                              ; preds = %145
  %156 = load i32, ptr %24, align 4, !dbg !1001
  %157 = load i32, ptr %23, align 4, !dbg !1001
  %158 = sdiv i32 %157, %156, !dbg !1001
  store i32 %158, ptr %23, align 4, !dbg !1001
  br label %160, !dbg !1001

159:                                              ; preds = %145
  store i32 0, ptr %23, align 4, !dbg !1001
  br label %160

160:                                              ; preds = %159, %155
  %161 = load i32, ptr %23, align 4, !dbg !1003
  %162 = sub nsw i32 0, %161, !dbg !1004
  store i32 %162, ptr %23, align 4, !dbg !1005
  br label %177, !dbg !1006

163:                                              ; preds = %133
  %164 = load i32, ptr %24, align 4, !dbg !1007
  %165 = ashr i32 %164, 1, !dbg !1009
  %166 = load i32, ptr %23, align 4, !dbg !1010
  %167 = add nsw i32 %166, %165, !dbg !1010
  store i32 %167, ptr %23, align 4, !dbg !1010
  %168 = load i32, ptr %23, align 4, !dbg !1011
  %169 = load i32, ptr %24, align 4, !dbg !1011
  %170 = icmp sge i32 %168, %169, !dbg !1011
  br i1 %170, label %171, label %175, !dbg !1011

171:                                              ; preds = %163
  %172 = load i32, ptr %24, align 4, !dbg !1011
  %173 = load i32, ptr %23, align 4, !dbg !1011
  %174 = sdiv i32 %173, %172, !dbg !1011
  store i32 %174, ptr %23, align 4, !dbg !1011
  br label %176, !dbg !1011

175:                                              ; preds = %163
  store i32 0, ptr %23, align 4, !dbg !1011
  br label %176

176:                                              ; preds = %175, %171
  br label %177

177:                                              ; preds = %176, %160
  %178 = load i32, ptr %23, align 4, !dbg !1013
  %179 = trunc i32 %178 to i16, !dbg !1014
  %180 = load ptr, ptr %26, align 8, !dbg !1015
  %181 = load i32, ptr %25, align 4, !dbg !1016
  %182 = sext i32 %181 to i64, !dbg !1015
  %183 = getelementptr inbounds i16, ptr %180, i64 %182, !dbg !1015
  store i16 %179, ptr %183, align 2, !dbg !1017
  br label %184, !dbg !1018

184:                                              ; preds = %177
  %185 = load i32, ptr %25, align 4, !dbg !1019
  %186 = add nsw i32 %185, 1, !dbg !1019
  store i32 %186, ptr %25, align 4, !dbg !1019
  br label %130, !dbg !1020, !llvm.loop !1021

187:                                              ; preds = %130
  br label %188, !dbg !1023

188:                                              ; preds = %187
  %189 = load i32, ptr %19, align 4, !dbg !1024
  %190 = add i32 %189, 1, !dbg !1024
  store i32 %190, ptr %19, align 4, !dbg !1024
  %191 = load i32, ptr %13, align 4, !dbg !1025
  %192 = add i32 %191, 8, !dbg !1025
  store i32 %192, ptr %13, align 4, !dbg !1025
  br label %45, !dbg !1026, !llvm.loop !1027

193:                                              ; preds = %45
  ret void, !dbg !1029
}

declare void @jpeg_fdct_islow(ptr noundef) #1

declare void @jpeg_fdct_ifast(ptr noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @forward_DCT_float(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #0 !dbg !1030 {
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca [64 x float], align 16
  %19 = alloca i32, align 4
  %20 = alloca ptr, align 8
  %21 = alloca ptr, align 8
  %22 = alloca i32, align 4
  %23 = alloca float, align 4
  %24 = alloca i32, align 4
  %25 = alloca ptr, align 8
  store ptr %0, ptr %8, align 8
    #dbg_declare(ptr %8, !1031, !DIExpression(), !1032)
  store ptr %1, ptr %9, align 8
    #dbg_declare(ptr %9, !1033, !DIExpression(), !1034)
  store ptr %2, ptr %10, align 8
    #dbg_declare(ptr %10, !1035, !DIExpression(), !1036)
  store ptr %3, ptr %11, align 8
    #dbg_declare(ptr %11, !1037, !DIExpression(), !1038)
  store i32 %4, ptr %12, align 4
    #dbg_declare(ptr %12, !1039, !DIExpression(), !1040)
  store i32 %5, ptr %13, align 4
    #dbg_declare(ptr %13, !1041, !DIExpression(), !1042)
  store i32 %6, ptr %14, align 4
    #dbg_declare(ptr %14, !1043, !DIExpression(), !1044)
    #dbg_declare(ptr %15, !1045, !DIExpression(), !1046)
  %26 = load ptr, ptr %8, align 8, !dbg !1047
  %27 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %26, i32 0, i32 58, !dbg !1048
  %28 = load ptr, ptr %27, align 8, !dbg !1048
  store ptr %28, ptr %15, align 8, !dbg !1046
    #dbg_declare(ptr %16, !1049, !DIExpression(), !1050)
  %29 = load ptr, ptr %15, align 8, !dbg !1051
  %30 = getelementptr inbounds nuw %struct.my_fdct_controller, ptr %29, i32 0, i32 3, !dbg !1052
  %31 = load ptr, ptr %30, align 8, !dbg !1052
  store ptr %31, ptr %16, align 8, !dbg !1050
    #dbg_declare(ptr %17, !1053, !DIExpression(), !1054)
  %32 = load ptr, ptr %15, align 8, !dbg !1055
  %33 = getelementptr inbounds nuw %struct.my_fdct_controller, ptr %32, i32 0, i32 4, !dbg !1056
  %34 = load ptr, ptr %9, align 8, !dbg !1057
  %35 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %34, i32 0, i32 4, !dbg !1058
  %36 = load i32, ptr %35, align 8, !dbg !1058
  %37 = sext i32 %36 to i64, !dbg !1055
  %38 = getelementptr inbounds [4 x ptr], ptr %33, i64 0, i64 %37, !dbg !1055
  %39 = load ptr, ptr %38, align 8, !dbg !1055
  store ptr %39, ptr %17, align 8, !dbg !1054
    #dbg_declare(ptr %18, !1059, !DIExpression(), !1061)
    #dbg_declare(ptr %19, !1062, !DIExpression(), !1063)
  %40 = load i32, ptr %12, align 4, !dbg !1064
  %41 = load ptr, ptr %10, align 8, !dbg !1065
  %42 = zext i32 %40 to i64, !dbg !1065
  %43 = getelementptr inbounds nuw ptr, ptr %41, i64 %42, !dbg !1065
  store ptr %43, ptr %10, align 8, !dbg !1065
  store i32 0, ptr %19, align 4, !dbg !1066
  br label %44, !dbg !1068

44:                                               ; preds = %164, %7
  %45 = load i32, ptr %19, align 4, !dbg !1069
  %46 = load i32, ptr %14, align 4, !dbg !1071
  %47 = icmp ult i32 %45, %46, !dbg !1072
  br i1 %47, label %48, label %169, !dbg !1073

48:                                               ; preds = %44
    #dbg_declare(ptr %20, !1074, !DIExpression(), !1077)
    #dbg_declare(ptr %21, !1078, !DIExpression(), !1079)
    #dbg_declare(ptr %22, !1080, !DIExpression(), !1081)
  %49 = getelementptr inbounds [64 x float], ptr %18, i64 0, i64 0, !dbg !1082
  store ptr %49, ptr %20, align 8, !dbg !1083
  store i32 0, ptr %22, align 4, !dbg !1084
  br label %50, !dbg !1086

50:                                               ; preds = %126, %48
  %51 = load i32, ptr %22, align 4, !dbg !1087
  %52 = icmp slt i32 %51, 8, !dbg !1089
  br i1 %52, label %53, label %129, !dbg !1090

53:                                               ; preds = %50
  %54 = load ptr, ptr %10, align 8, !dbg !1091
  %55 = load i32, ptr %22, align 4, !dbg !1093
  %56 = sext i32 %55 to i64, !dbg !1091
  %57 = getelementptr inbounds ptr, ptr %54, i64 %56, !dbg !1091
  %58 = load ptr, ptr %57, align 8, !dbg !1091
  %59 = load i32, ptr %13, align 4, !dbg !1094
  %60 = zext i32 %59 to i64, !dbg !1095
  %61 = getelementptr inbounds nuw i8, ptr %58, i64 %60, !dbg !1095
  store ptr %61, ptr %21, align 8, !dbg !1096
  %62 = load ptr, ptr %21, align 8, !dbg !1097
  %63 = getelementptr inbounds nuw i8, ptr %62, i32 1, !dbg !1097
  store ptr %63, ptr %21, align 8, !dbg !1097
  %64 = load i8, ptr %62, align 1, !dbg !1097
  %65 = zext i8 %64 to i32, !dbg !1097
  %66 = sub nsw i32 %65, 128, !dbg !1098
  %67 = sitofp i32 %66 to float, !dbg !1099
  %68 = load ptr, ptr %20, align 8, !dbg !1100
  %69 = getelementptr inbounds nuw float, ptr %68, i32 1, !dbg !1100
  store ptr %69, ptr %20, align 8, !dbg !1100
  store float %67, ptr %68, align 4, !dbg !1101
  %70 = load ptr, ptr %21, align 8, !dbg !1102
  %71 = getelementptr inbounds nuw i8, ptr %70, i32 1, !dbg !1102
  store ptr %71, ptr %21, align 8, !dbg !1102
  %72 = load i8, ptr %70, align 1, !dbg !1102
  %73 = zext i8 %72 to i32, !dbg !1102
  %74 = sub nsw i32 %73, 128, !dbg !1103
  %75 = sitofp i32 %74 to float, !dbg !1104
  %76 = load ptr, ptr %20, align 8, !dbg !1105
  %77 = getelementptr inbounds nuw float, ptr %76, i32 1, !dbg !1105
  store ptr %77, ptr %20, align 8, !dbg !1105
  store float %75, ptr %76, align 4, !dbg !1106
  %78 = load ptr, ptr %21, align 8, !dbg !1107
  %79 = getelementptr inbounds nuw i8, ptr %78, i32 1, !dbg !1107
  store ptr %79, ptr %21, align 8, !dbg !1107
  %80 = load i8, ptr %78, align 1, !dbg !1107
  %81 = zext i8 %80 to i32, !dbg !1107
  %82 = sub nsw i32 %81, 128, !dbg !1108
  %83 = sitofp i32 %82 to float, !dbg !1109
  %84 = load ptr, ptr %20, align 8, !dbg !1110
  %85 = getelementptr inbounds nuw float, ptr %84, i32 1, !dbg !1110
  store ptr %85, ptr %20, align 8, !dbg !1110
  store float %83, ptr %84, align 4, !dbg !1111
  %86 = load ptr, ptr %21, align 8, !dbg !1112
  %87 = getelementptr inbounds nuw i8, ptr %86, i32 1, !dbg !1112
  store ptr %87, ptr %21, align 8, !dbg !1112
  %88 = load i8, ptr %86, align 1, !dbg !1112
  %89 = zext i8 %88 to i32, !dbg !1112
  %90 = sub nsw i32 %89, 128, !dbg !1113
  %91 = sitofp i32 %90 to float, !dbg !1114
  %92 = load ptr, ptr %20, align 8, !dbg !1115
  %93 = getelementptr inbounds nuw float, ptr %92, i32 1, !dbg !1115
  store ptr %93, ptr %20, align 8, !dbg !1115
  store float %91, ptr %92, align 4, !dbg !1116
  %94 = load ptr, ptr %21, align 8, !dbg !1117
  %95 = getelementptr inbounds nuw i8, ptr %94, i32 1, !dbg !1117
  store ptr %95, ptr %21, align 8, !dbg !1117
  %96 = load i8, ptr %94, align 1, !dbg !1117
  %97 = zext i8 %96 to i32, !dbg !1117
  %98 = sub nsw i32 %97, 128, !dbg !1118
  %99 = sitofp i32 %98 to float, !dbg !1119
  %100 = load ptr, ptr %20, align 8, !dbg !1120
  %101 = getelementptr inbounds nuw float, ptr %100, i32 1, !dbg !1120
  store ptr %101, ptr %20, align 8, !dbg !1120
  store float %99, ptr %100, align 4, !dbg !1121
  %102 = load ptr, ptr %21, align 8, !dbg !1122
  %103 = getelementptr inbounds nuw i8, ptr %102, i32 1, !dbg !1122
  store ptr %103, ptr %21, align 8, !dbg !1122
  %104 = load i8, ptr %102, align 1, !dbg !1122
  %105 = zext i8 %104 to i32, !dbg !1122
  %106 = sub nsw i32 %105, 128, !dbg !1123
  %107 = sitofp i32 %106 to float, !dbg !1124
  %108 = load ptr, ptr %20, align 8, !dbg !1125
  %109 = getelementptr inbounds nuw float, ptr %108, i32 1, !dbg !1125
  store ptr %109, ptr %20, align 8, !dbg !1125
  store float %107, ptr %108, align 4, !dbg !1126
  %110 = load ptr, ptr %21, align 8, !dbg !1127
  %111 = getelementptr inbounds nuw i8, ptr %110, i32 1, !dbg !1127
  store ptr %111, ptr %21, align 8, !dbg !1127
  %112 = load i8, ptr %110, align 1, !dbg !1127
  %113 = zext i8 %112 to i32, !dbg !1127
  %114 = sub nsw i32 %113, 128, !dbg !1128
  %115 = sitofp i32 %114 to float, !dbg !1129
  %116 = load ptr, ptr %20, align 8, !dbg !1130
  %117 = getelementptr inbounds nuw float, ptr %116, i32 1, !dbg !1130
  store ptr %117, ptr %20, align 8, !dbg !1130
  store float %115, ptr %116, align 4, !dbg !1131
  %118 = load ptr, ptr %21, align 8, !dbg !1132
  %119 = getelementptr inbounds nuw i8, ptr %118, i32 1, !dbg !1132
  store ptr %119, ptr %21, align 8, !dbg !1132
  %120 = load i8, ptr %118, align 1, !dbg !1132
  %121 = zext i8 %120 to i32, !dbg !1132
  %122 = sub nsw i32 %121, 128, !dbg !1133
  %123 = sitofp i32 %122 to float, !dbg !1134
  %124 = load ptr, ptr %20, align 8, !dbg !1135
  %125 = getelementptr inbounds nuw float, ptr %124, i32 1, !dbg !1135
  store ptr %125, ptr %20, align 8, !dbg !1135
  store float %123, ptr %124, align 4, !dbg !1136
  br label %126, !dbg !1137

126:                                              ; preds = %53
  %127 = load i32, ptr %22, align 4, !dbg !1138
  %128 = add nsw i32 %127, 1, !dbg !1138
  store i32 %128, ptr %22, align 4, !dbg !1138
  br label %50, !dbg !1139, !llvm.loop !1140

129:                                              ; preds = %50
  %130 = load ptr, ptr %16, align 8, !dbg !1142
  %131 = getelementptr inbounds [64 x float], ptr %18, i64 0, i64 0, !dbg !1143
  call void %130(ptr noundef %131), !dbg !1144
    #dbg_declare(ptr %23, !1145, !DIExpression(), !1147)
    #dbg_declare(ptr %24, !1148, !DIExpression(), !1149)
    #dbg_declare(ptr %25, !1150, !DIExpression(), !1151)
  %132 = load ptr, ptr %11, align 8, !dbg !1152
  %133 = load i32, ptr %19, align 4, !dbg !1153
  %134 = zext i32 %133 to i64, !dbg !1152
  %135 = getelementptr inbounds nuw [64 x i16], ptr %132, i64 %134, !dbg !1152
  %136 = getelementptr inbounds [64 x i16], ptr %135, i64 0, i64 0, !dbg !1152
  store ptr %136, ptr %25, align 8, !dbg !1151
  store i32 0, ptr %24, align 4, !dbg !1154
  br label %137, !dbg !1156

137:                                              ; preds = %160, %129
  %138 = load i32, ptr %24, align 4, !dbg !1157
  %139 = icmp slt i32 %138, 64, !dbg !1159
  br i1 %139, label %140, label %163, !dbg !1160

140:                                              ; preds = %137
  %141 = load i32, ptr %24, align 4, !dbg !1161
  %142 = sext i32 %141 to i64, !dbg !1163
  %143 = getelementptr inbounds [64 x float], ptr %18, i64 0, i64 %142, !dbg !1163
  %144 = load float, ptr %143, align 4, !dbg !1163
  %145 = load ptr, ptr %17, align 8, !dbg !1164
  %146 = load i32, ptr %24, align 4, !dbg !1165
  %147 = sext i32 %146 to i64, !dbg !1164
  %148 = getelementptr inbounds float, ptr %145, i64 %147, !dbg !1164
  %149 = load float, ptr %148, align 4, !dbg !1164
  %150 = fmul float %144, %149, !dbg !1166
  store float %150, ptr %23, align 4, !dbg !1167
  %151 = load float, ptr %23, align 4, !dbg !1168
  %152 = fadd float %151, 1.638450e+04, !dbg !1169
  %153 = fptosi float %152 to i32, !dbg !1170
  %154 = sub nsw i32 %153, 16384, !dbg !1171
  %155 = trunc i32 %154 to i16, !dbg !1172
  %156 = load ptr, ptr %25, align 8, !dbg !1173
  %157 = load i32, ptr %24, align 4, !dbg !1174
  %158 = sext i32 %157 to i64, !dbg !1173
  %159 = getelementptr inbounds i16, ptr %156, i64 %158, !dbg !1173
  store i16 %155, ptr %159, align 2, !dbg !1175
  br label %160, !dbg !1176

160:                                              ; preds = %140
  %161 = load i32, ptr %24, align 4, !dbg !1177
  %162 = add nsw i32 %161, 1, !dbg !1177
  store i32 %162, ptr %24, align 4, !dbg !1177
  br label %137, !dbg !1178, !llvm.loop !1179

163:                                              ; preds = %137
  br label %164, !dbg !1181

164:                                              ; preds = %163
  %165 = load i32, ptr %19, align 4, !dbg !1182
  %166 = add i32 %165, 1, !dbg !1182
  store i32 %166, ptr %19, align 4, !dbg !1182
  %167 = load i32, ptr %13, align 4, !dbg !1183
  %168 = add i32 %167, 8, !dbg !1183
  store i32 %168, ptr %13, align 4, !dbg !1183
  br label %44, !dbg !1184, !llvm.loop !1185

169:                                              ; preds = %44
  ret void, !dbg !1187
}

declare void @jpeg_fdct_float(ptr noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!396}
!llvm.module.flags = !{!558, !559, !560, !561, !562, !563, !564}
!llvm.ident = !{!565}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "aanscales", scope: !2, file: !3, line: 99, type: !555, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "start_pass_fdctmgr", scope: !3, file: !3, line: 54, type: !4, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !396, retainedNodes: !554)
!3 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jcdctmgr.c", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "95c917f33d937a00e781bad6d69b6d94")
!4 = !DISubroutineType(types: !5)
!5 = !{null, !6}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "j_compress_ptr", file: !7, line: 249, baseType: !8)
!7 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jpeglib.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "2a2b23235fe587b10147d741e3371e67")
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_compress_struct", file: !7, line: 255, size: 3968, elements: !10)
!10 = !{!11, !139, !140, !141, !142, !143, !158, !159, !160, !161, !171, !173, !174, !175, !176, !211, !215, !231, !232, !236, !237, !238, !239, !252, !253, !254, !255, !256, !257, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !279, !280, !281, !282, !286, !287, !288, !289, !290, !300, !320, !331, !340, !355, !364, !374, !383}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !9, file: !7, line: 256, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_error_mgr", file: !7, line: 618, size: 1344, elements: !14)
!14 = !{!15, !107, !108, !109, !115, !116, !117, !128, !129, !130, !135, !136, !137, !138}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "error_exit", scope: !13, file: !7, line: 620, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DISubroutineType(types: !18)
!18 = !{null, !19}
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "j_common_ptr", file: !7, line: 248, baseType: !20)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_common_struct", file: !7, line: 240, size: 256, elements: !22)
!22 = !{!23, !24, !96, !105, !106}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !21, file: !7, line: 241, baseType: !12, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !21, file: !7, line: 241, baseType: !25, size: 64, offset: 64)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_memory_mgr", file: !7, line: 731, size: 768, elements: !27)
!27 = !{!28, !37, !38, !51, !65, !73, !80, !81, !85, !89, !93, !94}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_small", scope: !26, file: !7, line: 733, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DISubroutineType(types: !31)
!31 = !{!32, !19, !33, !34}
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!33 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !35, line: 18, baseType: !36)
!35 = !DIFile(filename: "/usr/local/lib/clang/20/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!36 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_large", scope: !26, file: !7, line: 735, baseType: !29, size: 64, offset: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_sarray", scope: !26, file: !7, line: 737, baseType: !39, size: 64, offset: 128)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DISubroutineType(types: !41)
!41 = !{!42, !19, !33, !49, !49}
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPARRAY", file: !7, line: 67, baseType: !43)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPROW", file: !7, line: 66, baseType: !45)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPLE", file: !47, line: 59, baseType: !48)
!47 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jmorecfg.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "56a0eda58fafa6bdd5498f702a998c09")
!48 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "JDIMENSION", file: !47, line: 171, baseType: !50)
!50 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_barray", scope: !26, file: !7, line: 740, baseType: !52, size: 64, offset: 192)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DISubroutineType(types: !54)
!54 = !{!55, !19, !33, !49, !49}
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "JBLOCKARRAY", file: !7, line: 72, baseType: !56)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "JBLOCKROW", file: !7, line: 71, baseType: !58)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "JBLOCK", file: !7, line: 70, baseType: !60)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 1024, elements: !63)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "JCOEF", file: !47, line: 99, baseType: !62)
!62 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!63 = !{!64}
!64 = !DISubrange(count: 64)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "request_virt_sarray", scope: !26, file: !7, line: 743, baseType: !66, size: 64, offset: 256)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DISubroutineType(types: !68)
!68 = !{!69, !19, !33, !72, !49, !49, !49}
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "jvirt_sarray_ptr", file: !7, line: 727, baseType: !70)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DICompositeType(tag: DW_TAG_structure_type, name: "jvirt_sarray_control", file: !7, line: 727, flags: DIFlagFwdDecl)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "boolean", file: !47, line: 227, baseType: !33)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "request_virt_barray", scope: !26, file: !7, line: 749, baseType: !74, size: 64, offset: 320)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DISubroutineType(types: !76)
!76 = !{!77, !19, !33, !72, !49, !49, !49}
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "jvirt_barray_ptr", file: !7, line: 728, baseType: !78)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DICompositeType(tag: DW_TAG_structure_type, name: "jvirt_barray_control", file: !7, line: 728, flags: DIFlagFwdDecl)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "realize_virt_arrays", scope: !26, file: !7, line: 755, baseType: !16, size: 64, offset: 384)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "access_virt_sarray", scope: !26, file: !7, line: 756, baseType: !82, size: 64, offset: 448)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = !DISubroutineType(types: !84)
!84 = !{!42, !19, !69, !49, !49, !72}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "access_virt_barray", scope: !26, file: !7, line: 761, baseType: !86, size: 64, offset: 512)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = !DISubroutineType(types: !88)
!88 = !{!55, !19, !77, !49, !49, !72}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "free_pool", scope: !26, file: !7, line: 766, baseType: !90, size: 64, offset: 576)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DISubroutineType(types: !92)
!92 = !{null, !19, !33}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "self_destruct", scope: !26, file: !7, line: 767, baseType: !16, size: 64, offset: 640)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "max_memory_to_use", scope: !26, file: !7, line: 774, baseType: !95, size: 64, offset: 704)
!95 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "progress", scope: !21, file: !7, line: 241, baseType: !97, size: 64, offset: 128)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_progress_mgr", file: !7, line: 676, size: 256, elements: !99)
!99 = !{!100, !101, !102, !103, !104}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "progress_monitor", scope: !98, file: !7, line: 677, baseType: !16, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "pass_counter", scope: !98, file: !7, line: 679, baseType: !95, size: 64, offset: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "pass_limit", scope: !98, file: !7, line: 680, baseType: !95, size: 64, offset: 128)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "completed_passes", scope: !98, file: !7, line: 681, baseType: !33, size: 32, offset: 192)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "total_passes", scope: !98, file: !7, line: 682, baseType: !33, size: 32, offset: 224)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "is_decompressor", scope: !21, file: !7, line: 241, baseType: !72, size: 32, offset: 192)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "global_state", scope: !21, file: !7, line: 241, baseType: !33, size: 32, offset: 224)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "emit_message", scope: !13, file: !7, line: 622, baseType: !90, size: 64, offset: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "output_message", scope: !13, file: !7, line: 624, baseType: !16, size: 64, offset: 128)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "format_message", scope: !13, file: !7, line: 626, baseType: !110, size: 64, offset: 192)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = !DISubroutineType(types: !112)
!112 = !{null, !19, !113}
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "reset_error_mgr", scope: !13, file: !7, line: 629, baseType: !16, size: 64, offset: 256)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "msg_code", scope: !13, file: !7, line: 634, baseType: !33, size: 32, offset: 320)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "msg_parm", scope: !13, file: !7, line: 639, baseType: !118, size: 640, offset: 352)
!118 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !13, file: !7, line: 636, size: 640, elements: !119)
!119 = !{!120, !124}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !118, file: !7, line: 637, baseType: !121, size: 256)
!121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 256, elements: !122)
!122 = !{!123}
!123 = !DISubrange(count: 8)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !118, file: !7, line: 638, baseType: !125, size: 640)
!125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 640, elements: !126)
!126 = !{!127}
!127 = !DISubrange(count: 80)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "trace_level", scope: !13, file: !7, line: 643, baseType: !33, size: 32, offset: 992)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "num_warnings", scope: !13, file: !7, line: 651, baseType: !95, size: 64, offset: 1024)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "jpeg_message_table", scope: !13, file: !7, line: 663, baseType: !131, size: 64, offset: 1088)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !133)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !114)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "last_jpeg_message", scope: !13, file: !7, line: 664, baseType: !33, size: 32, offset: 1152)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "addon_message_table", scope: !13, file: !7, line: 668, baseType: !131, size: 64, offset: 1216)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "first_addon_message", scope: !13, file: !7, line: 669, baseType: !33, size: 32, offset: 1280)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "last_addon_message", scope: !13, file: !7, line: 670, baseType: !33, size: 32, offset: 1312)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !9, file: !7, line: 256, baseType: !25, size: 64, offset: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "progress", scope: !9, file: !7, line: 256, baseType: !97, size: 64, offset: 128)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "is_decompressor", scope: !9, file: !7, line: 256, baseType: !72, size: 32, offset: 192)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "global_state", scope: !9, file: !7, line: 256, baseType: !33, size: 32, offset: 224)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !9, file: !7, line: 259, baseType: !144, size: 64, offset: 256)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_destination_mgr", file: !7, line: 688, size: 320, elements: !146)
!146 = !{!147, !150, !151, !153, !157}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "next_output_byte", scope: !145, file: !7, line: 689, baseType: !148, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "JOCTET", file: !47, line: 110, baseType: !48)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "free_in_buffer", scope: !145, file: !7, line: 690, baseType: !34, size: 64, offset: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "init_destination", scope: !145, file: !7, line: 692, baseType: !152, size: 64, offset: 128)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "empty_output_buffer", scope: !145, file: !7, line: 693, baseType: !154, size: 64, offset: 192)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = !DISubroutineType(types: !156)
!156 = !{!72, !6}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "term_destination", scope: !145, file: !7, line: 694, baseType: !152, size: 64, offset: 256)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "image_width", scope: !9, file: !7, line: 266, baseType: !49, size: 32, offset: 320)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "image_height", scope: !9, file: !7, line: 267, baseType: !49, size: 32, offset: 352)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "input_components", scope: !9, file: !7, line: 268, baseType: !33, size: 32, offset: 384)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "in_color_space", scope: !9, file: !7, line: 269, baseType: !162, size: 32, offset: 416)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_COLOR_SPACE", file: !7, line: 201, baseType: !163)
!163 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !7, line: 194, baseType: !50, size: 32, elements: !164)
!164 = !{!165, !166, !167, !168, !169, !170}
!165 = !DIEnumerator(name: "JCS_UNKNOWN", value: 0)
!166 = !DIEnumerator(name: "JCS_GRAYSCALE", value: 1)
!167 = !DIEnumerator(name: "JCS_RGB", value: 2)
!168 = !DIEnumerator(name: "JCS_YCbCr", value: 3)
!169 = !DIEnumerator(name: "JCS_CMYK", value: 4)
!170 = !DIEnumerator(name: "JCS_YCCK", value: 5)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "input_gamma", scope: !9, file: !7, line: 271, baseType: !172, size: 64, offset: 448)
!172 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "data_precision", scope: !9, file: !7, line: 281, baseType: !33, size: 32, offset: 512)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "num_components", scope: !9, file: !7, line: 283, baseType: !33, size: 32, offset: 544)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "jpeg_color_space", scope: !9, file: !7, line: 284, baseType: !162, size: 32, offset: 576)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "comp_info", scope: !9, file: !7, line: 286, baseType: !177, size: 64, offset: 640)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "jpeg_component_info", file: !7, line: 179, baseType: !179)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 116, size: 768, elements: !180)
!180 = !{!181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !210}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "component_id", scope: !179, file: !7, line: 120, baseType: !33, size: 32)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "component_index", scope: !179, file: !7, line: 121, baseType: !33, size: 32, offset: 32)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "h_samp_factor", scope: !179, file: !7, line: 122, baseType: !33, size: 32, offset: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "v_samp_factor", scope: !179, file: !7, line: 123, baseType: !33, size: 32, offset: 96)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "quant_tbl_no", scope: !179, file: !7, line: 124, baseType: !33, size: 32, offset: 128)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "dc_tbl_no", scope: !179, file: !7, line: 129, baseType: !33, size: 32, offset: 160)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tbl_no", scope: !179, file: !7, line: 130, baseType: !33, size: 32, offset: 192)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "width_in_blocks", scope: !179, file: !7, line: 139, baseType: !49, size: 32, offset: 224)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "height_in_blocks", scope: !179, file: !7, line: 140, baseType: !49, size: 32, offset: 256)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "DCT_scaled_size", scope: !179, file: !7, line: 147, baseType: !33, size: 32, offset: 288)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "downsampled_width", scope: !179, file: !7, line: 154, baseType: !49, size: 32, offset: 320)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "downsampled_height", scope: !179, file: !7, line: 155, baseType: !49, size: 32, offset: 352)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "component_needed", scope: !179, file: !7, line: 160, baseType: !72, size: 32, offset: 384)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_width", scope: !179, file: !7, line: 164, baseType: !33, size: 32, offset: 416)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_height", scope: !179, file: !7, line: 165, baseType: !33, size: 32, offset: 448)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_blocks", scope: !179, file: !7, line: 166, baseType: !33, size: 32, offset: 480)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_sample_width", scope: !179, file: !7, line: 167, baseType: !33, size: 32, offset: 512)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "last_col_width", scope: !179, file: !7, line: 168, baseType: !33, size: 32, offset: 544)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "last_row_height", scope: !179, file: !7, line: 169, baseType: !33, size: 32, offset: 576)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "quant_table", scope: !179, file: !7, line: 175, baseType: !201, size: 64, offset: 640)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "JQUANT_TBL", file: !7, line: 95, baseType: !203)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 83, size: 1056, elements: !204)
!204 = !{!205, !209}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "quantval", scope: !203, file: !7, line: 88, baseType: !206, size: 1024)
!206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !207, size: 1024, elements: !63)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT16", file: !47, line: 147, baseType: !208)
!208 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "sent_table", scope: !203, file: !7, line: 94, baseType: !72, size: 32, offset: 1024)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "dct_table", scope: !179, file: !7, line: 178, baseType: !32, size: 64, offset: 704)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "quant_tbl_ptrs", scope: !9, file: !7, line: 289, baseType: !212, size: 256, offset: 704)
!212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !201, size: 256, elements: !213)
!213 = !{!214}
!214 = !DISubrange(count: 4)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "dc_huff_tbl_ptrs", scope: !9, file: !7, line: 292, baseType: !216, size: 256, offset: 960)
!216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 256, elements: !213)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "JHUFF_TBL", file: !7, line: 111, baseType: !219)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 100, size: 2240, elements: !220)
!220 = !{!221, !226, !230}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !219, file: !7, line: 102, baseType: !222, size: 136)
!222 = !DICompositeType(tag: DW_TAG_array_type, baseType: !223, size: 136, elements: !224)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT8", file: !47, line: 135, baseType: !48)
!224 = !{!225}
!225 = !DISubrange(count: 17)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "huffval", scope: !219, file: !7, line: 104, baseType: !227, size: 2048, offset: 136)
!227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !223, size: 2048, elements: !228)
!228 = !{!229}
!229 = !DISubrange(count: 256)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "sent_table", scope: !219, file: !7, line: 110, baseType: !72, size: 32, offset: 2208)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "ac_huff_tbl_ptrs", scope: !9, file: !7, line: 293, baseType: !216, size: 256, offset: 1216)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "arith_dc_L", scope: !9, file: !7, line: 296, baseType: !233, size: 128, offset: 1472)
!233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !223, size: 128, elements: !234)
!234 = !{!235}
!235 = !DISubrange(count: 16)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "arith_dc_U", scope: !9, file: !7, line: 297, baseType: !233, size: 128, offset: 1600)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "arith_ac_K", scope: !9, file: !7, line: 298, baseType: !233, size: 128, offset: 1728)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "num_scans", scope: !9, file: !7, line: 300, baseType: !33, size: 32, offset: 1856)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "scan_info", scope: !9, file: !7, line: 301, baseType: !240, size: 64, offset: 1920)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !242)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "jpeg_scan_info", file: !7, line: 189, baseType: !243)
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 184, size: 288, elements: !244)
!244 = !{!245, !246, !248, !249, !250, !251}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "comps_in_scan", scope: !243, file: !7, line: 185, baseType: !33, size: 32)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "component_index", scope: !243, file: !7, line: 186, baseType: !247, size: 128, offset: 32)
!247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 128, elements: !213)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "Ss", scope: !243, file: !7, line: 187, baseType: !33, size: 32, offset: 160)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "Se", scope: !243, file: !7, line: 187, baseType: !33, size: 32, offset: 192)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "Ah", scope: !243, file: !7, line: 188, baseType: !33, size: 32, offset: 224)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "Al", scope: !243, file: !7, line: 188, baseType: !33, size: 32, offset: 256)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "raw_data_in", scope: !9, file: !7, line: 307, baseType: !72, size: 32, offset: 1984)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "arith_code", scope: !9, file: !7, line: 308, baseType: !72, size: 32, offset: 2016)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_coding", scope: !9, file: !7, line: 309, baseType: !72, size: 32, offset: 2048)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "CCIR601_sampling", scope: !9, file: !7, line: 310, baseType: !72, size: 32, offset: 2080)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "smoothing_factor", scope: !9, file: !7, line: 311, baseType: !33, size: 32, offset: 2112)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "dct_method", scope: !9, file: !7, line: 312, baseType: !258, size: 32, offset: 2144)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_DCT_METHOD", file: !7, line: 209, baseType: !259)
!259 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !7, line: 205, baseType: !50, size: 32, elements: !260)
!260 = !{!261, !262, !263}
!261 = !DIEnumerator(name: "JDCT_ISLOW", value: 0)
!262 = !DIEnumerator(name: "JDCT_IFAST", value: 1)
!263 = !DIEnumerator(name: "JDCT_FLOAT", value: 2)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "restart_interval", scope: !9, file: !7, line: 319, baseType: !50, size: 32, offset: 2176)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "restart_in_rows", scope: !9, file: !7, line: 320, baseType: !33, size: 32, offset: 2208)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "write_JFIF_header", scope: !9, file: !7, line: 324, baseType: !72, size: 32, offset: 2240)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "density_unit", scope: !9, file: !7, line: 329, baseType: !223, size: 8, offset: 2272)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "X_density", scope: !9, file: !7, line: 330, baseType: !207, size: 16, offset: 2288)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "Y_density", scope: !9, file: !7, line: 331, baseType: !207, size: 16, offset: 2304)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "write_Adobe_marker", scope: !9, file: !7, line: 332, baseType: !72, size: 32, offset: 2336)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "next_scanline", scope: !9, file: !7, line: 339, baseType: !49, size: 32, offset: 2368)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "progressive_mode", scope: !9, file: !7, line: 348, baseType: !72, size: 32, offset: 2400)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "max_h_samp_factor", scope: !9, file: !7, line: 349, baseType: !33, size: 32, offset: 2432)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "max_v_samp_factor", scope: !9, file: !7, line: 350, baseType: !33, size: 32, offset: 2464)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "total_iMCU_rows", scope: !9, file: !7, line: 352, baseType: !49, size: 32, offset: 2496)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "comps_in_scan", scope: !9, file: !7, line: 363, baseType: !33, size: 32, offset: 2528)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "cur_comp_info", scope: !9, file: !7, line: 364, baseType: !278, size: 256, offset: 2560)
!278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !177, size: 256, elements: !213)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "MCUs_per_row", scope: !9, file: !7, line: 367, baseType: !49, size: 32, offset: 2816)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_rows_in_scan", scope: !9, file: !7, line: 368, baseType: !49, size: 32, offset: 2848)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "blocks_in_MCU", scope: !9, file: !7, line: 370, baseType: !33, size: 32, offset: 2880)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_membership", scope: !9, file: !7, line: 371, baseType: !283, size: 320, offset: 2912)
!283 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 320, elements: !284)
!284 = !{!285}
!285 = !DISubrange(count: 10)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "Ss", scope: !9, file: !7, line: 375, baseType: !33, size: 32, offset: 3232)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "Se", scope: !9, file: !7, line: 375, baseType: !33, size: 32, offset: 3264)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "Ah", scope: !9, file: !7, line: 375, baseType: !33, size: 32, offset: 3296)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "Al", scope: !9, file: !7, line: 375, baseType: !33, size: 32, offset: 3328)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !9, file: !7, line: 380, baseType: !291, size: 64, offset: 3392)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_comp_master", file: !293, line: 45, size: 256, elements: !294)
!293 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jpegint.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "87e9869e13f29b8e74a9dee50528c6c5")
!294 = !{!295, !296, !297, !298, !299}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_for_pass", scope: !292, file: !293, line: 46, baseType: !152, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "pass_startup", scope: !292, file: !293, line: 47, baseType: !152, size: 64, offset: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "finish_pass", scope: !292, file: !293, line: 48, baseType: !152, size: 64, offset: 128)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "call_pass_startup", scope: !292, file: !293, line: 51, baseType: !72, size: 32, offset: 192)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "is_last_pass", scope: !292, file: !293, line: 52, baseType: !72, size: 32, offset: 224)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "main", scope: !9, file: !7, line: 381, baseType: !301, size: 64, offset: 3456)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_c_main_controller", file: !293, line: 56, size: 128, elements: !303)
!303 = !{!304, !315}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !302, file: !293, line: 57, baseType: !305, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = !DISubroutineType(types: !307)
!307 = !{null, !6, !308}
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_BUF_MODE", file: !293, line: 22, baseType: !309)
!309 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !293, line: 16, baseType: !50, size: 32, elements: !310)
!310 = !{!311, !312, !313, !314}
!311 = !DIEnumerator(name: "JBUF_PASS_THRU", value: 0)
!312 = !DIEnumerator(name: "JBUF_SAVE_SOURCE", value: 1)
!313 = !DIEnumerator(name: "JBUF_CRANK_DEST", value: 2)
!314 = !DIEnumerator(name: "JBUF_SAVE_AND_PASS", value: 3)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "process_data", scope: !302, file: !293, line: 58, baseType: !316, size: 64, offset: 64)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = !DISubroutineType(types: !318)
!318 = !{null, !6, !42, !319, !49}
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "prep", scope: !9, file: !7, line: 382, baseType: !321, size: 64, offset: 3520)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_c_prep_controller", file: !293, line: 64, size: 128, elements: !323)
!323 = !{!324, !325}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !322, file: !293, line: 65, baseType: !305, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "pre_process_data", scope: !322, file: !293, line: 66, baseType: !326, size: 64, offset: 64)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!327 = !DISubroutineType(types: !328)
!328 = !{null, !6, !42, !319, !49, !329, !319, !49}
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPIMAGE", file: !7, line: 68, baseType: !330)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "coef", scope: !9, file: !7, line: 383, baseType: !332, size: 64, offset: 3584)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_c_coef_controller", file: !293, line: 76, size: 128, elements: !334)
!334 = !{!335, !336}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !333, file: !293, line: 77, baseType: !305, size: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "compress_data", scope: !333, file: !293, line: 78, baseType: !337, size: 64, offset: 64)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = !DISubroutineType(types: !339)
!339 = !{!72, !6, !329}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "marker", scope: !9, file: !7, line: 384, baseType: !341, size: 64, offset: 3648)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_marker_writer", file: !293, line: 120, size: 384, elements: !343)
!343 = !{!344, !350, !351, !352, !353, !354}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "write_any_marker", scope: !342, file: !293, line: 123, baseType: !345, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = !DISubroutineType(types: !347)
!347 = !{null, !6, !33, !348, !50}
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !149)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_header", scope: !342, file: !293, line: 125, baseType: !152, size: 64, offset: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "write_frame_header", scope: !342, file: !293, line: 126, baseType: !152, size: 64, offset: 128)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "write_scan_header", scope: !342, file: !293, line: 127, baseType: !152, size: 64, offset: 192)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_trailer", scope: !342, file: !293, line: 128, baseType: !152, size: 64, offset: 256)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "write_tables_only", scope: !342, file: !293, line: 129, baseType: !152, size: 64, offset: 320)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "cconvert", scope: !9, file: !7, line: 385, baseType: !356, size: 64, offset: 3712)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_color_converter", file: !293, line: 83, size: 128, elements: !358)
!358 = !{!359, !360}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !357, file: !293, line: 84, baseType: !152, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "color_convert", scope: !357, file: !293, line: 85, baseType: !361, size: 64, offset: 64)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = !DISubroutineType(types: !363)
!363 = !{null, !6, !42, !329, !49, !33}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "downsample", scope: !9, file: !7, line: 386, baseType: !365, size: 64, offset: 3776)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_downsampler", file: !293, line: 91, size: 192, elements: !367)
!367 = !{!368, !369, !373}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !366, file: !293, line: 92, baseType: !152, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "downsample", scope: !366, file: !293, line: 93, baseType: !370, size: 64, offset: 64)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!371 = !DISubroutineType(types: !372)
!372 = !{null, !6, !329, !49, !329, !49}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "need_context_rows", scope: !366, file: !293, line: 98, baseType: !72, size: 32, offset: 128)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "fdct", scope: !9, file: !7, line: 387, baseType: !375, size: 64, offset: 3840)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_forward_dct", file: !293, line: 102, size: 128, elements: !377)
!377 = !{!378, !379}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !376, file: !293, line: 103, baseType: !152, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "forward_DCT", scope: !376, file: !293, line: 105, baseType: !380, size: 64, offset: 64)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = !DISubroutineType(types: !382)
!382 = !{null, !6, !177, !42, !57, !49, !49, !49}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "entropy", scope: !9, file: !7, line: 388, baseType: !384, size: 64, offset: 3904)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_entropy_encoder", file: !293, line: 113, size: 192, elements: !386)
!386 = !{!387, !391, !395}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !385, file: !293, line: 114, baseType: !388, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = !DISubroutineType(types: !390)
!390 = !{null, !6, !72}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "encode_mcu", scope: !385, file: !293, line: 115, baseType: !392, size: 64, offset: 64)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = !DISubroutineType(types: !394)
!394 = !{!72, !6, !56}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "finish_pass", scope: !385, file: !293, line: 116, baseType: !152, size: 64, offset: 128)
!396 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !397, retainedTypes: !522, globals: !549, splitDebugInlining: false, nameTableKind: None)
!397 = !{!163, !259, !309, !398}
!398 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !399, line: 33, baseType: !50, size: 32, elements: !400)
!399 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jerror.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "a232f2460ff0049c960896e323d8710b")
!400 = !{!401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521}
!401 = !DIEnumerator(name: "JMSG_NOMESSAGE", value: 0)
!402 = !DIEnumerator(name: "JERR_ARITH_NOTIMPL", value: 1)
!403 = !DIEnumerator(name: "JERR_BAD_ALIGN_TYPE", value: 2)
!404 = !DIEnumerator(name: "JERR_BAD_ALLOC_CHUNK", value: 3)
!405 = !DIEnumerator(name: "JERR_BAD_BUFFER_MODE", value: 4)
!406 = !DIEnumerator(name: "JERR_BAD_COMPONENT_ID", value: 5)
!407 = !DIEnumerator(name: "JERR_BAD_DCTSIZE", value: 6)
!408 = !DIEnumerator(name: "JERR_BAD_IN_COLORSPACE", value: 7)
!409 = !DIEnumerator(name: "JERR_BAD_J_COLORSPACE", value: 8)
!410 = !DIEnumerator(name: "JERR_BAD_LENGTH", value: 9)
!411 = !DIEnumerator(name: "JERR_BAD_LIB_VERSION", value: 10)
!412 = !DIEnumerator(name: "JERR_BAD_MCU_SIZE", value: 11)
!413 = !DIEnumerator(name: "JERR_BAD_POOL_ID", value: 12)
!414 = !DIEnumerator(name: "JERR_BAD_PRECISION", value: 13)
!415 = !DIEnumerator(name: "JERR_BAD_PROGRESSION", value: 14)
!416 = !DIEnumerator(name: "JERR_BAD_PROG_SCRIPT", value: 15)
!417 = !DIEnumerator(name: "JERR_BAD_SAMPLING", value: 16)
!418 = !DIEnumerator(name: "JERR_BAD_SCAN_SCRIPT", value: 17)
!419 = !DIEnumerator(name: "JERR_BAD_STATE", value: 18)
!420 = !DIEnumerator(name: "JERR_BAD_STRUCT_SIZE", value: 19)
!421 = !DIEnumerator(name: "JERR_BAD_VIRTUAL_ACCESS", value: 20)
!422 = !DIEnumerator(name: "JERR_BUFFER_SIZE", value: 21)
!423 = !DIEnumerator(name: "JERR_CANT_SUSPEND", value: 22)
!424 = !DIEnumerator(name: "JERR_CCIR601_NOTIMPL", value: 23)
!425 = !DIEnumerator(name: "JERR_COMPONENT_COUNT", value: 24)
!426 = !DIEnumerator(name: "JERR_CONVERSION_NOTIMPL", value: 25)
!427 = !DIEnumerator(name: "JERR_DAC_INDEX", value: 26)
!428 = !DIEnumerator(name: "JERR_DAC_VALUE", value: 27)
!429 = !DIEnumerator(name: "JERR_DHT_COUNTS", value: 28)
!430 = !DIEnumerator(name: "JERR_DHT_INDEX", value: 29)
!431 = !DIEnumerator(name: "JERR_DQT_INDEX", value: 30)
!432 = !DIEnumerator(name: "JERR_EMPTY_IMAGE", value: 31)
!433 = !DIEnumerator(name: "JERR_EMS_READ", value: 32)
!434 = !DIEnumerator(name: "JERR_EMS_WRITE", value: 33)
!435 = !DIEnumerator(name: "JERR_EOI_EXPECTED", value: 34)
!436 = !DIEnumerator(name: "JERR_FILE_READ", value: 35)
!437 = !DIEnumerator(name: "JERR_FILE_WRITE", value: 36)
!438 = !DIEnumerator(name: "JERR_FRACT_SAMPLE_NOTIMPL", value: 37)
!439 = !DIEnumerator(name: "JERR_HUFF_CLEN_OVERFLOW", value: 38)
!440 = !DIEnumerator(name: "JERR_HUFF_MISSING_CODE", value: 39)
!441 = !DIEnumerator(name: "JERR_IMAGE_TOO_BIG", value: 40)
!442 = !DIEnumerator(name: "JERR_INPUT_EMPTY", value: 41)
!443 = !DIEnumerator(name: "JERR_INPUT_EOF", value: 42)
!444 = !DIEnumerator(name: "JERR_MISMATCHED_QUANT_TABLE", value: 43)
!445 = !DIEnumerator(name: "JERR_MISSING_DATA", value: 44)
!446 = !DIEnumerator(name: "JERR_MODE_CHANGE", value: 45)
!447 = !DIEnumerator(name: "JERR_NOTIMPL", value: 46)
!448 = !DIEnumerator(name: "JERR_NOT_COMPILED", value: 47)
!449 = !DIEnumerator(name: "JERR_NO_BACKING_STORE", value: 48)
!450 = !DIEnumerator(name: "JERR_NO_HUFF_TABLE", value: 49)
!451 = !DIEnumerator(name: "JERR_NO_IMAGE", value: 50)
!452 = !DIEnumerator(name: "JERR_NO_QUANT_TABLE", value: 51)
!453 = !DIEnumerator(name: "JERR_NO_SOI", value: 52)
!454 = !DIEnumerator(name: "JERR_OUT_OF_MEMORY", value: 53)
!455 = !DIEnumerator(name: "JERR_QUANT_COMPONENTS", value: 54)
!456 = !DIEnumerator(name: "JERR_QUANT_FEW_COLORS", value: 55)
!457 = !DIEnumerator(name: "JERR_QUANT_MANY_COLORS", value: 56)
!458 = !DIEnumerator(name: "JERR_SOF_DUPLICATE", value: 57)
!459 = !DIEnumerator(name: "JERR_SOF_NO_SOS", value: 58)
!460 = !DIEnumerator(name: "JERR_SOF_UNSUPPORTED", value: 59)
!461 = !DIEnumerator(name: "JERR_SOI_DUPLICATE", value: 60)
!462 = !DIEnumerator(name: "JERR_SOS_NO_SOF", value: 61)
!463 = !DIEnumerator(name: "JERR_TFILE_CREATE", value: 62)
!464 = !DIEnumerator(name: "JERR_TFILE_READ", value: 63)
!465 = !DIEnumerator(name: "JERR_TFILE_SEEK", value: 64)
!466 = !DIEnumerator(name: "JERR_TFILE_WRITE", value: 65)
!467 = !DIEnumerator(name: "JERR_TOO_LITTLE_DATA", value: 66)
!468 = !DIEnumerator(name: "JERR_UNKNOWN_MARKER", value: 67)
!469 = !DIEnumerator(name: "JERR_VIRTUAL_BUG", value: 68)
!470 = !DIEnumerator(name: "JERR_WIDTH_OVERFLOW", value: 69)
!471 = !DIEnumerator(name: "JERR_XMS_READ", value: 70)
!472 = !DIEnumerator(name: "JERR_XMS_WRITE", value: 71)
!473 = !DIEnumerator(name: "JMSG_COPYRIGHT", value: 72)
!474 = !DIEnumerator(name: "JMSG_VERSION", value: 73)
!475 = !DIEnumerator(name: "JTRC_16BIT_TABLES", value: 74)
!476 = !DIEnumerator(name: "JTRC_ADOBE", value: 75)
!477 = !DIEnumerator(name: "JTRC_APP0", value: 76)
!478 = !DIEnumerator(name: "JTRC_APP14", value: 77)
!479 = !DIEnumerator(name: "JTRC_DAC", value: 78)
!480 = !DIEnumerator(name: "JTRC_DHT", value: 79)
!481 = !DIEnumerator(name: "JTRC_DQT", value: 80)
!482 = !DIEnumerator(name: "JTRC_DRI", value: 81)
!483 = !DIEnumerator(name: "JTRC_EMS_CLOSE", value: 82)
!484 = !DIEnumerator(name: "JTRC_EMS_OPEN", value: 83)
!485 = !DIEnumerator(name: "JTRC_EOI", value: 84)
!486 = !DIEnumerator(name: "JTRC_HUFFBITS", value: 85)
!487 = !DIEnumerator(name: "JTRC_JFIF", value: 86)
!488 = !DIEnumerator(name: "JTRC_JFIF_BADTHUMBNAILSIZE", value: 87)
!489 = !DIEnumerator(name: "JTRC_JFIF_MINOR", value: 88)
!490 = !DIEnumerator(name: "JTRC_JFIF_THUMBNAIL", value: 89)
!491 = !DIEnumerator(name: "JTRC_MISC_MARKER", value: 90)
!492 = !DIEnumerator(name: "JTRC_PARMLESS_MARKER", value: 91)
!493 = !DIEnumerator(name: "JTRC_QUANTVALS", value: 92)
!494 = !DIEnumerator(name: "JTRC_QUANT_3_NCOLORS", value: 93)
!495 = !DIEnumerator(name: "JTRC_QUANT_NCOLORS", value: 94)
!496 = !DIEnumerator(name: "JTRC_QUANT_SELECTED", value: 95)
!497 = !DIEnumerator(name: "JTRC_RECOVERY_ACTION", value: 96)
!498 = !DIEnumerator(name: "JTRC_RST", value: 97)
!499 = !DIEnumerator(name: "JTRC_SMOOTH_NOTIMPL", value: 98)
!500 = !DIEnumerator(name: "JTRC_SOF", value: 99)
!501 = !DIEnumerator(name: "JTRC_SOF_COMPONENT", value: 100)
!502 = !DIEnumerator(name: "JTRC_SOI", value: 101)
!503 = !DIEnumerator(name: "JTRC_SOS", value: 102)
!504 = !DIEnumerator(name: "JTRC_SOS_COMPONENT", value: 103)
!505 = !DIEnumerator(name: "JTRC_SOS_PARAMS", value: 104)
!506 = !DIEnumerator(name: "JTRC_TFILE_CLOSE", value: 105)
!507 = !DIEnumerator(name: "JTRC_TFILE_OPEN", value: 106)
!508 = !DIEnumerator(name: "JTRC_UNKNOWN_IDS", value: 107)
!509 = !DIEnumerator(name: "JTRC_XMS_CLOSE", value: 108)
!510 = !DIEnumerator(name: "JTRC_XMS_OPEN", value: 109)
!511 = !DIEnumerator(name: "JWRN_ADOBE_XFORM", value: 110)
!512 = !DIEnumerator(name: "JWRN_BOGUS_PROGRESSION", value: 111)
!513 = !DIEnumerator(name: "JWRN_EXTRANEOUS_DATA", value: 112)
!514 = !DIEnumerator(name: "JWRN_HIT_MARKER", value: 113)
!515 = !DIEnumerator(name: "JWRN_HUFF_BAD_CODE", value: 114)
!516 = !DIEnumerator(name: "JWRN_JFIF_MAJOR", value: 115)
!517 = !DIEnumerator(name: "JWRN_JPEG_EOF", value: 116)
!518 = !DIEnumerator(name: "JWRN_MUST_RESYNC", value: 117)
!519 = !DIEnumerator(name: "JWRN_NOT_SEQUENTIAL", value: 118)
!520 = !DIEnumerator(name: "JWRN_TOO_MUCH_DATA", value: 119)
!521 = !DIEnumerator(name: "JMSG_LASTMSGCODE", value: 120)
!522 = !{!523, !19, !34, !375, !32, !535, !536, !548, !544, !545, !172, !33, !61}
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "my_fdct_ptr", file: !3, line: 41, baseType: !524)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "my_fdct_controller", file: !3, line: 39, baseType: !526)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 22, size: 768, elements: !527)
!527 = !{!528, !529, !537, !539, !546}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "pub", scope: !526, file: !3, line: 23, baseType: !376, size: 128)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "do_dct", scope: !526, file: !3, line: 26, baseType: !530, size: 64, offset: 128)
!530 = !DIDerivedType(tag: DW_TAG_typedef, name: "forward_DCT_method_ptr", file: !531, line: 35, baseType: !532)
!531 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jdct.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "18978d93cfb1aabf5618c3caa5dbcf5a")
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = !DISubroutineType(types: !534)
!534 = !{null, !535}
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "DCTELEM", file: !531, line: 30, baseType: !33)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "divisors", scope: !526, file: !3, line: 32, baseType: !538, size: 256, offset: 192)
!538 = !DICompositeType(tag: DW_TAG_array_type, baseType: !535, size: 256, elements: !213)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "do_float_dct", scope: !526, file: !3, line: 36, baseType: !540, size: 64, offset: 448)
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "float_DCT_method_ptr", file: !531, line: 36, baseType: !541)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = !DISubroutineType(types: !543)
!543 = !{null, !544}
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "float_divisors", scope: !526, file: !3, line: 37, baseType: !547, size: 256, offset: 512)
!547 = !DICompositeType(tag: DW_TAG_array_type, baseType: !544, size: 256, elements: !213)
!548 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT32", file: !47, line: 161, baseType: !95)
!549 = !{!0, !550}
!550 = !DIGlobalVariableExpression(var: !551, expr: !DIExpression())
!551 = distinct !DIGlobalVariable(name: "aanscalefactor", scope: !2, file: !3, line: 140, type: !552, isLocal: true, isDefinition: true)
!552 = !DICompositeType(tag: DW_TAG_array_type, baseType: !553, size: 512, elements: !122)
!553 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !172)
!554 = !{}
!555 = !DICompositeType(tag: DW_TAG_array_type, baseType: !556, size: 1024, elements: !63)
!556 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !557)
!557 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT16", file: !47, line: 155, baseType: !62)
!558 = !{i32 7, !"Dwarf Version", i32 5}
!559 = !{i32 2, !"Debug Info Version", i32 3}
!560 = !{i32 1, !"wchar_size", i32 4}
!561 = !{i32 8, !"PIC Level", i32 2}
!562 = !{i32 7, !"PIE Level", i32 2}
!563 = !{i32 7, !"uwtable", i32 2}
!564 = !{i32 7, !"frame-pointer", i32 2}
!565 = !{!"clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)"}
!566 = distinct !DISubprogram(name: "jinit_forward_dct", scope: !3, file: !3, line: 345, type: !4, scopeLine: 346, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !396, retainedNodes: !554)
!567 = !DILocalVariable(name: "cinfo", arg: 1, scope: !566, file: !3, line: 345, type: !6)
!568 = !DILocation(line: 345, column: 35, scope: !566)
!569 = !DILocalVariable(name: "fdct", scope: !566, file: !3, line: 347, type: !523)
!570 = !DILocation(line: 347, column: 15, scope: !566)
!571 = !DILocalVariable(name: "i", scope: !566, file: !3, line: 348, type: !33)
!572 = !DILocation(line: 348, column: 7, scope: !566)
!573 = !DILocation(line: 351, column: 7, scope: !566)
!574 = !DILocation(line: 351, column: 14, scope: !566)
!575 = !DILocation(line: 351, column: 19, scope: !566)
!576 = !DILocation(line: 351, column: 48, scope: !566)
!577 = !DILocation(line: 351, column: 5, scope: !566)
!578 = !DILocation(line: 350, column: 8, scope: !566)
!579 = !DILocation(line: 353, column: 45, scope: !566)
!580 = !DILocation(line: 353, column: 3, scope: !566)
!581 = !DILocation(line: 353, column: 10, scope: !566)
!582 = !DILocation(line: 353, column: 15, scope: !566)
!583 = !DILocation(line: 354, column: 3, scope: !566)
!584 = !DILocation(line: 354, column: 9, scope: !566)
!585 = !DILocation(line: 354, column: 13, scope: !566)
!586 = !DILocation(line: 354, column: 24, scope: !566)
!587 = !DILocation(line: 356, column: 11, scope: !566)
!588 = !DILocation(line: 356, column: 18, scope: !566)
!589 = !DILocation(line: 356, column: 3, scope: !566)
!590 = !DILocation(line: 359, column: 5, scope: !591)
!591 = distinct !DILexicalBlock(scope: !566, file: !3, line: 356, column: 30)
!592 = !DILocation(line: 359, column: 11, scope: !591)
!593 = !DILocation(line: 359, column: 15, scope: !591)
!594 = !DILocation(line: 359, column: 27, scope: !591)
!595 = !DILocation(line: 360, column: 5, scope: !591)
!596 = !DILocation(line: 360, column: 11, scope: !591)
!597 = !DILocation(line: 360, column: 18, scope: !591)
!598 = !DILocation(line: 361, column: 5, scope: !591)
!599 = !DILocation(line: 365, column: 5, scope: !591)
!600 = !DILocation(line: 365, column: 11, scope: !591)
!601 = !DILocation(line: 365, column: 15, scope: !591)
!602 = !DILocation(line: 365, column: 27, scope: !591)
!603 = !DILocation(line: 366, column: 5, scope: !591)
!604 = !DILocation(line: 366, column: 11, scope: !591)
!605 = !DILocation(line: 366, column: 18, scope: !591)
!606 = !DILocation(line: 367, column: 5, scope: !591)
!607 = !DILocation(line: 371, column: 5, scope: !591)
!608 = !DILocation(line: 371, column: 11, scope: !591)
!609 = !DILocation(line: 371, column: 15, scope: !591)
!610 = !DILocation(line: 371, column: 27, scope: !591)
!611 = !DILocation(line: 372, column: 5, scope: !591)
!612 = !DILocation(line: 372, column: 11, scope: !591)
!613 = !DILocation(line: 372, column: 24, scope: !591)
!614 = !DILocation(line: 373, column: 5, scope: !591)
!615 = !DILocation(line: 376, column: 5, scope: !591)
!616 = !DILocation(line: 377, column: 5, scope: !591)
!617 = !DILocation(line: 381, column: 10, scope: !618)
!618 = distinct !DILexicalBlock(scope: !566, file: !3, line: 381, column: 3)
!619 = !DILocation(line: 381, column: 8, scope: !618)
!620 = !DILocation(line: 381, column: 15, scope: !621)
!621 = distinct !DILexicalBlock(scope: !618, file: !3, line: 381, column: 3)
!622 = !DILocation(line: 381, column: 17, scope: !621)
!623 = !DILocation(line: 381, column: 3, scope: !618)
!624 = !DILocation(line: 382, column: 5, scope: !625)
!625 = distinct !DILexicalBlock(scope: !621, file: !3, line: 381, column: 40)
!626 = !DILocation(line: 382, column: 11, scope: !625)
!627 = !DILocation(line: 382, column: 20, scope: !625)
!628 = !DILocation(line: 382, column: 23, scope: !625)
!629 = !DILocation(line: 384, column: 5, scope: !625)
!630 = !DILocation(line: 384, column: 11, scope: !625)
!631 = !DILocation(line: 384, column: 26, scope: !625)
!632 = !DILocation(line: 384, column: 29, scope: !625)
!633 = !DILocation(line: 386, column: 3, scope: !625)
!634 = !DILocation(line: 381, column: 36, scope: !621)
!635 = !DILocation(line: 381, column: 3, scope: !621)
!636 = distinct !{!636, !623, !637, !638}
!637 = !DILocation(line: 386, column: 3, scope: !618)
!638 = !{!"llvm.loop.mustprogress"}
!639 = !DILocation(line: 387, column: 1, scope: !566)
!640 = !DILocalVariable(name: "cinfo", arg: 1, scope: !2, file: !3, line: 54, type: !6)
!641 = !DILocation(line: 54, column: 36, scope: !2)
!642 = !DILocalVariable(name: "fdct", scope: !2, file: !3, line: 56, type: !523)
!643 = !DILocation(line: 56, column: 15, scope: !2)
!644 = !DILocation(line: 56, column: 36, scope: !2)
!645 = !DILocation(line: 56, column: 43, scope: !2)
!646 = !DILocalVariable(name: "ci", scope: !2, file: !3, line: 57, type: !33)
!647 = !DILocation(line: 57, column: 7, scope: !2)
!648 = !DILocalVariable(name: "qtblno", scope: !2, file: !3, line: 57, type: !33)
!649 = !DILocation(line: 57, column: 11, scope: !2)
!650 = !DILocalVariable(name: "i", scope: !2, file: !3, line: 57, type: !33)
!651 = !DILocation(line: 57, column: 19, scope: !2)
!652 = !DILocalVariable(name: "compptr", scope: !2, file: !3, line: 58, type: !177)
!653 = !DILocation(line: 58, column: 24, scope: !2)
!654 = !DILocalVariable(name: "qtbl", scope: !2, file: !3, line: 59, type: !201)
!655 = !DILocation(line: 59, column: 16, scope: !2)
!656 = !DILocalVariable(name: "dtbl", scope: !2, file: !3, line: 60, type: !535)
!657 = !DILocation(line: 60, column: 13, scope: !2)
!658 = !DILocation(line: 62, column: 11, scope: !659)
!659 = distinct !DILexicalBlock(scope: !2, file: !3, line: 62, column: 3)
!660 = !DILocation(line: 62, column: 26, scope: !659)
!661 = !DILocation(line: 62, column: 33, scope: !659)
!662 = !DILocation(line: 62, column: 24, scope: !659)
!663 = !DILocation(line: 62, column: 8, scope: !659)
!664 = !DILocation(line: 62, column: 44, scope: !665)
!665 = distinct !DILexicalBlock(scope: !659, file: !3, line: 62, column: 3)
!666 = !DILocation(line: 62, column: 49, scope: !665)
!667 = !DILocation(line: 62, column: 56, scope: !665)
!668 = !DILocation(line: 62, column: 47, scope: !665)
!669 = !DILocation(line: 62, column: 3, scope: !659)
!670 = !DILocation(line: 64, column: 14, scope: !671)
!671 = distinct !DILexicalBlock(scope: !665, file: !3, line: 63, column: 25)
!672 = !DILocation(line: 64, column: 23, scope: !671)
!673 = !DILocation(line: 64, column: 12, scope: !671)
!674 = !DILocation(line: 66, column: 9, scope: !675)
!675 = distinct !DILexicalBlock(scope: !671, file: !3, line: 66, column: 9)
!676 = !DILocation(line: 66, column: 16, scope: !675)
!677 = !DILocation(line: 66, column: 20, scope: !675)
!678 = !DILocation(line: 66, column: 23, scope: !675)
!679 = !DILocation(line: 66, column: 30, scope: !675)
!680 = !DILocation(line: 66, column: 48, scope: !675)
!681 = !DILocation(line: 67, column: 2, scope: !675)
!682 = !DILocation(line: 67, column: 9, scope: !675)
!683 = !DILocation(line: 67, column: 24, scope: !675)
!684 = !DILocation(line: 67, column: 32, scope: !675)
!685 = !DILocation(line: 68, column: 7, scope: !675)
!686 = !DILocation(line: 69, column: 12, scope: !671)
!687 = !DILocation(line: 69, column: 19, scope: !671)
!688 = !DILocation(line: 69, column: 34, scope: !671)
!689 = !DILocation(line: 69, column: 10, scope: !671)
!690 = !DILocation(line: 72, column: 13, scope: !671)
!691 = !DILocation(line: 72, column: 20, scope: !671)
!692 = !DILocation(line: 72, column: 5, scope: !671)
!693 = !DILocation(line: 78, column: 11, scope: !694)
!694 = distinct !DILexicalBlock(scope: !695, file: !3, line: 78, column: 11)
!695 = distinct !DILexicalBlock(scope: !671, file: !3, line: 72, column: 32)
!696 = !DILocation(line: 78, column: 17, scope: !694)
!697 = !DILocation(line: 78, column: 26, scope: !694)
!698 = !DILocation(line: 78, column: 34, scope: !694)
!699 = !DILocation(line: 80, column: 6, scope: !700)
!700 = distinct !DILexicalBlock(scope: !694, file: !3, line: 78, column: 43)
!701 = !DILocation(line: 80, column: 13, scope: !700)
!702 = !DILocation(line: 80, column: 18, scope: !700)
!703 = !DILocation(line: 80, column: 47, scope: !700)
!704 = !DILocation(line: 80, column: 4, scope: !700)
!705 = !DILocation(line: 79, column: 2, scope: !700)
!706 = !DILocation(line: 79, column: 8, scope: !700)
!707 = !DILocation(line: 79, column: 17, scope: !700)
!708 = !DILocation(line: 79, column: 25, scope: !700)
!709 = !DILocation(line: 82, column: 7, scope: !700)
!710 = !DILocation(line: 83, column: 14, scope: !695)
!711 = !DILocation(line: 83, column: 20, scope: !695)
!712 = !DILocation(line: 83, column: 29, scope: !695)
!713 = !DILocation(line: 83, column: 12, scope: !695)
!714 = !DILocation(line: 84, column: 14, scope: !715)
!715 = distinct !DILexicalBlock(scope: !695, file: !3, line: 84, column: 7)
!716 = !DILocation(line: 84, column: 12, scope: !715)
!717 = !DILocation(line: 84, column: 19, scope: !718)
!718 = distinct !DILexicalBlock(scope: !715, file: !3, line: 84, column: 7)
!719 = !DILocation(line: 84, column: 21, scope: !718)
!720 = !DILocation(line: 84, column: 7, scope: !715)
!721 = !DILocation(line: 85, column: 23, scope: !722)
!722 = distinct !DILexicalBlock(scope: !718, file: !3, line: 84, column: 38)
!723 = !DILocation(line: 85, column: 29, scope: !722)
!724 = !DILocation(line: 85, column: 38, scope: !722)
!725 = !DILocation(line: 85, column: 13, scope: !722)
!726 = !DILocation(line: 85, column: 42, scope: !722)
!727 = !DILocation(line: 85, column: 2, scope: !722)
!728 = !DILocation(line: 85, column: 7, scope: !722)
!729 = !DILocation(line: 85, column: 10, scope: !722)
!730 = !DILocation(line: 86, column: 7, scope: !722)
!731 = !DILocation(line: 84, column: 34, scope: !718)
!732 = !DILocation(line: 84, column: 7, scope: !718)
!733 = distinct !{!733, !720, !734, !638}
!734 = !DILocation(line: 86, column: 7, scope: !715)
!735 = !DILocation(line: 87, column: 7, scope: !695)
!736 = !DILocation(line: 112, column: 6, scope: !737)
!737 = distinct !DILexicalBlock(scope: !738, file: !3, line: 112, column: 6)
!738 = distinct !DILexicalBlock(scope: !695, file: !3, line: 91, column: 7)
!739 = !DILocation(line: 112, column: 12, scope: !737)
!740 = !DILocation(line: 112, column: 21, scope: !737)
!741 = !DILocation(line: 112, column: 29, scope: !737)
!742 = !DILocation(line: 114, column: 8, scope: !743)
!743 = distinct !DILexicalBlock(scope: !737, file: !3, line: 112, column: 38)
!744 = !DILocation(line: 114, column: 15, scope: !743)
!745 = !DILocation(line: 114, column: 20, scope: !743)
!746 = !DILocation(line: 114, column: 49, scope: !743)
!747 = !DILocation(line: 114, column: 6, scope: !743)
!748 = !DILocation(line: 113, column: 4, scope: !743)
!749 = !DILocation(line: 113, column: 10, scope: !743)
!750 = !DILocation(line: 113, column: 19, scope: !743)
!751 = !DILocation(line: 113, column: 27, scope: !743)
!752 = !DILocation(line: 116, column: 2, scope: !743)
!753 = !DILocation(line: 117, column: 9, scope: !738)
!754 = !DILocation(line: 117, column: 15, scope: !738)
!755 = !DILocation(line: 117, column: 24, scope: !738)
!756 = !DILocation(line: 117, column: 7, scope: !738)
!757 = !DILocation(line: 118, column: 9, scope: !758)
!758 = distinct !DILexicalBlock(scope: !738, file: !3, line: 118, column: 2)
!759 = !DILocation(line: 118, column: 7, scope: !758)
!760 = !DILocation(line: 118, column: 14, scope: !761)
!761 = distinct !DILexicalBlock(scope: !758, file: !3, line: 118, column: 2)
!762 = !DILocation(line: 118, column: 16, scope: !761)
!763 = !DILocation(line: 118, column: 2, scope: !758)
!764 = !DILocation(line: 120, column: 6, scope: !765)
!765 = distinct !DILexicalBlock(scope: !761, file: !3, line: 118, column: 33)
!766 = !DILocation(line: 119, column: 14, scope: !765)
!767 = !DILocation(line: 119, column: 4, scope: !765)
!768 = !DILocation(line: 119, column: 9, scope: !765)
!769 = !DILocation(line: 119, column: 12, scope: !765)
!770 = !DILocation(line: 123, column: 2, scope: !765)
!771 = !DILocation(line: 118, column: 29, scope: !761)
!772 = !DILocation(line: 118, column: 2, scope: !761)
!773 = distinct !{!773, !763, !774, !638}
!774 = !DILocation(line: 123, column: 2, scope: !758)
!775 = !DILocation(line: 125, column: 7, scope: !695)
!776 = !DILocalVariable(name: "fdtbl", scope: !777, file: !3, line: 138, type: !544)
!777 = distinct !DILexicalBlock(scope: !695, file: !3, line: 129, column: 7)
!778 = !DILocation(line: 138, column: 15, scope: !777)
!779 = !DILocalVariable(name: "row", scope: !777, file: !3, line: 139, type: !33)
!780 = !DILocation(line: 139, column: 6, scope: !777)
!781 = !DILocalVariable(name: "col", scope: !777, file: !3, line: 139, type: !33)
!782 = !DILocation(line: 139, column: 11, scope: !777)
!783 = !DILocation(line: 145, column: 6, scope: !784)
!784 = distinct !DILexicalBlock(scope: !777, file: !3, line: 145, column: 6)
!785 = !DILocation(line: 145, column: 12, scope: !784)
!786 = !DILocation(line: 145, column: 27, scope: !784)
!787 = !DILocation(line: 145, column: 35, scope: !784)
!788 = !DILocation(line: 147, column: 8, scope: !789)
!789 = distinct !DILexicalBlock(scope: !784, file: !3, line: 145, column: 44)
!790 = !DILocation(line: 147, column: 15, scope: !789)
!791 = !DILocation(line: 147, column: 20, scope: !789)
!792 = !DILocation(line: 147, column: 49, scope: !789)
!793 = !DILocation(line: 147, column: 6, scope: !789)
!794 = !DILocation(line: 146, column: 4, scope: !789)
!795 = !DILocation(line: 146, column: 10, scope: !789)
!796 = !DILocation(line: 146, column: 25, scope: !789)
!797 = !DILocation(line: 146, column: 33, scope: !789)
!798 = !DILocation(line: 149, column: 2, scope: !789)
!799 = !DILocation(line: 150, column: 10, scope: !777)
!800 = !DILocation(line: 150, column: 16, scope: !777)
!801 = !DILocation(line: 150, column: 31, scope: !777)
!802 = !DILocation(line: 150, column: 8, scope: !777)
!803 = !DILocation(line: 151, column: 4, scope: !777)
!804 = !DILocation(line: 152, column: 11, scope: !805)
!805 = distinct !DILexicalBlock(scope: !777, file: !3, line: 152, column: 2)
!806 = !DILocation(line: 152, column: 7, scope: !805)
!807 = !DILocation(line: 152, column: 16, scope: !808)
!808 = distinct !DILexicalBlock(scope: !805, file: !3, line: 152, column: 2)
!809 = !DILocation(line: 152, column: 20, scope: !808)
!810 = !DILocation(line: 152, column: 2, scope: !805)
!811 = !DILocation(line: 153, column: 13, scope: !812)
!812 = distinct !DILexicalBlock(scope: !813, file: !3, line: 153, column: 4)
!813 = distinct !DILexicalBlock(scope: !808, file: !3, line: 152, column: 38)
!814 = !DILocation(line: 153, column: 9, scope: !812)
!815 = !DILocation(line: 153, column: 18, scope: !816)
!816 = distinct !DILexicalBlock(scope: !812, file: !3, line: 153, column: 4)
!817 = !DILocation(line: 153, column: 22, scope: !816)
!818 = !DILocation(line: 153, column: 4, scope: !812)
!819 = !DILocation(line: 155, column: 26, scope: !820)
!820 = distinct !DILexicalBlock(scope: !816, file: !3, line: 153, column: 40)
!821 = !DILocation(line: 155, column: 32, scope: !820)
!822 = !DILocation(line: 155, column: 41, scope: !820)
!823 = !DILocation(line: 155, column: 17, scope: !820)
!824 = !DILocation(line: 156, column: 25, scope: !820)
!825 = !DILocation(line: 156, column: 10, scope: !820)
!826 = !DILocation(line: 155, column: 44, scope: !820)
!827 = !DILocation(line: 156, column: 47, scope: !820)
!828 = !DILocation(line: 156, column: 32, scope: !820)
!829 = !DILocation(line: 156, column: 30, scope: !820)
!830 = !DILocation(line: 156, column: 52, scope: !820)
!831 = !DILocation(line: 155, column: 13, scope: !820)
!832 = !DILocation(line: 154, column: 17, scope: !820)
!833 = !DILocation(line: 154, column: 6, scope: !820)
!834 = !DILocation(line: 154, column: 12, scope: !820)
!835 = !DILocation(line: 154, column: 15, scope: !820)
!836 = !DILocation(line: 157, column: 7, scope: !820)
!837 = !DILocation(line: 158, column: 4, scope: !820)
!838 = !DILocation(line: 153, column: 36, scope: !816)
!839 = !DILocation(line: 153, column: 4, scope: !816)
!840 = distinct !{!840, !818, !841, !638}
!841 = !DILocation(line: 158, column: 4, scope: !812)
!842 = !DILocation(line: 159, column: 2, scope: !813)
!843 = !DILocation(line: 152, column: 34, scope: !808)
!844 = !DILocation(line: 152, column: 2, scope: !808)
!845 = distinct !{!845, !810, !846, !638}
!846 = !DILocation(line: 159, column: 2, scope: !805)
!847 = !DILocation(line: 161, column: 7, scope: !695)
!848 = !DILocation(line: 164, column: 7, scope: !695)
!849 = !DILocation(line: 165, column: 7, scope: !695)
!850 = !DILocation(line: 167, column: 3, scope: !671)
!851 = !DILocation(line: 63, column: 10, scope: !665)
!852 = !DILocation(line: 63, column: 21, scope: !665)
!853 = !DILocation(line: 62, column: 3, scope: !665)
!854 = distinct !{!854, !669, !855, !638}
!855 = !DILocation(line: 167, column: 3, scope: !659)
!856 = !DILocation(line: 168, column: 1, scope: !2)
!857 = distinct !DISubprogram(name: "forward_DCT", scope: !3, file: !3, line: 180, type: !381, scopeLine: 185, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !396, retainedNodes: !554)
!858 = !DILocalVariable(name: "cinfo", arg: 1, scope: !857, file: !3, line: 180, type: !6)
!859 = !DILocation(line: 180, column: 29, scope: !857)
!860 = !DILocalVariable(name: "compptr", arg: 2, scope: !857, file: !3, line: 180, type: !177)
!861 = !DILocation(line: 180, column: 58, scope: !857)
!862 = !DILocalVariable(name: "sample_data", arg: 3, scope: !857, file: !3, line: 181, type: !42)
!863 = !DILocation(line: 181, column: 18, scope: !857)
!864 = !DILocalVariable(name: "coef_blocks", arg: 4, scope: !857, file: !3, line: 181, type: !57)
!865 = !DILocation(line: 181, column: 41, scope: !857)
!866 = !DILocalVariable(name: "start_row", arg: 5, scope: !857, file: !3, line: 182, type: !49)
!867 = !DILocation(line: 182, column: 18, scope: !857)
!868 = !DILocalVariable(name: "start_col", arg: 6, scope: !857, file: !3, line: 182, type: !49)
!869 = !DILocation(line: 182, column: 40, scope: !857)
!870 = !DILocalVariable(name: "num_blocks", arg: 7, scope: !857, file: !3, line: 183, type: !49)
!871 = !DILocation(line: 183, column: 18, scope: !857)
!872 = !DILocalVariable(name: "fdct", scope: !857, file: !3, line: 187, type: !523)
!873 = !DILocation(line: 187, column: 15, scope: !857)
!874 = !DILocation(line: 187, column: 36, scope: !857)
!875 = !DILocation(line: 187, column: 43, scope: !857)
!876 = !DILocalVariable(name: "do_dct", scope: !857, file: !3, line: 188, type: !530)
!877 = !DILocation(line: 188, column: 26, scope: !857)
!878 = !DILocation(line: 188, column: 35, scope: !857)
!879 = !DILocation(line: 188, column: 41, scope: !857)
!880 = !DILocalVariable(name: "divisors", scope: !857, file: !3, line: 189, type: !535)
!881 = !DILocation(line: 189, column: 13, scope: !857)
!882 = !DILocation(line: 189, column: 24, scope: !857)
!883 = !DILocation(line: 189, column: 30, scope: !857)
!884 = !DILocation(line: 189, column: 39, scope: !857)
!885 = !DILocation(line: 189, column: 48, scope: !857)
!886 = !DILocalVariable(name: "workspace", scope: !857, file: !3, line: 190, type: !887)
!887 = !DICompositeType(tag: DW_TAG_array_type, baseType: !536, size: 2048, elements: !63)
!888 = !DILocation(line: 190, column: 11, scope: !857)
!889 = !DILocalVariable(name: "bi", scope: !857, file: !3, line: 191, type: !49)
!890 = !DILocation(line: 191, column: 14, scope: !857)
!891 = !DILocation(line: 193, column: 18, scope: !857)
!892 = !DILocation(line: 193, column: 15, scope: !857)
!893 = !DILocation(line: 195, column: 11, scope: !894)
!894 = distinct !DILexicalBlock(scope: !857, file: !3, line: 195, column: 3)
!895 = !DILocation(line: 195, column: 8, scope: !894)
!896 = !DILocation(line: 195, column: 16, scope: !897)
!897 = distinct !DILexicalBlock(scope: !894, file: !3, line: 195, column: 3)
!898 = !DILocation(line: 195, column: 21, scope: !897)
!899 = !DILocation(line: 195, column: 19, scope: !897)
!900 = !DILocation(line: 195, column: 3, scope: !894)
!901 = !DILocalVariable(name: "workspaceptr", scope: !902, file: !3, line: 197, type: !535)
!902 = distinct !DILexicalBlock(scope: !903, file: !3, line: 197, column: 5)
!903 = distinct !DILexicalBlock(scope: !897, file: !3, line: 195, column: 61)
!904 = !DILocation(line: 197, column: 25, scope: !902)
!905 = !DILocalVariable(name: "elemptr", scope: !902, file: !3, line: 198, type: !44)
!906 = !DILocation(line: 198, column: 25, scope: !902)
!907 = !DILocalVariable(name: "elemr", scope: !902, file: !3, line: 199, type: !33)
!908 = !DILocation(line: 199, column: 20, scope: !902)
!909 = !DILocation(line: 201, column: 22, scope: !902)
!910 = !DILocation(line: 201, column: 20, scope: !902)
!911 = !DILocation(line: 202, column: 18, scope: !912)
!912 = distinct !DILexicalBlock(scope: !902, file: !3, line: 202, column: 7)
!913 = !DILocation(line: 202, column: 12, scope: !912)
!914 = !DILocation(line: 202, column: 23, scope: !915)
!915 = distinct !DILexicalBlock(scope: !912, file: !3, line: 202, column: 7)
!916 = !DILocation(line: 202, column: 29, scope: !915)
!917 = !DILocation(line: 202, column: 7, scope: !912)
!918 = !DILocation(line: 203, column: 12, scope: !919)
!919 = distinct !DILexicalBlock(scope: !915, file: !3, line: 202, column: 49)
!920 = !DILocation(line: 203, column: 24, scope: !919)
!921 = !DILocation(line: 203, column: 33, scope: !919)
!922 = !DILocation(line: 203, column: 31, scope: !919)
!923 = !DILocation(line: 203, column: 10, scope: !919)
!924 = !DILocation(line: 205, column: 20, scope: !919)
!925 = !DILocation(line: 205, column: 43, scope: !919)
!926 = !DILocation(line: 205, column: 15, scope: !919)
!927 = !DILocation(line: 205, column: 18, scope: !919)
!928 = !DILocation(line: 206, column: 20, scope: !919)
!929 = !DILocation(line: 206, column: 43, scope: !919)
!930 = !DILocation(line: 206, column: 15, scope: !919)
!931 = !DILocation(line: 206, column: 18, scope: !919)
!932 = !DILocation(line: 207, column: 20, scope: !919)
!933 = !DILocation(line: 207, column: 43, scope: !919)
!934 = !DILocation(line: 207, column: 15, scope: !919)
!935 = !DILocation(line: 207, column: 18, scope: !919)
!936 = !DILocation(line: 208, column: 20, scope: !919)
!937 = !DILocation(line: 208, column: 43, scope: !919)
!938 = !DILocation(line: 208, column: 15, scope: !919)
!939 = !DILocation(line: 208, column: 18, scope: !919)
!940 = !DILocation(line: 209, column: 20, scope: !919)
!941 = !DILocation(line: 209, column: 43, scope: !919)
!942 = !DILocation(line: 209, column: 15, scope: !919)
!943 = !DILocation(line: 209, column: 18, scope: !919)
!944 = !DILocation(line: 210, column: 20, scope: !919)
!945 = !DILocation(line: 210, column: 43, scope: !919)
!946 = !DILocation(line: 210, column: 15, scope: !919)
!947 = !DILocation(line: 210, column: 18, scope: !919)
!948 = !DILocation(line: 211, column: 20, scope: !919)
!949 = !DILocation(line: 211, column: 43, scope: !919)
!950 = !DILocation(line: 211, column: 15, scope: !919)
!951 = !DILocation(line: 211, column: 18, scope: !919)
!952 = !DILocation(line: 212, column: 20, scope: !919)
!953 = !DILocation(line: 212, column: 43, scope: !919)
!954 = !DILocation(line: 212, column: 15, scope: !919)
!955 = !DILocation(line: 212, column: 18, scope: !919)
!956 = !DILocation(line: 220, column: 7, scope: !919)
!957 = !DILocation(line: 202, column: 45, scope: !915)
!958 = !DILocation(line: 202, column: 7, scope: !915)
!959 = distinct !{!959, !917, !960, !638}
!960 = !DILocation(line: 220, column: 7, scope: !912)
!961 = !DILocation(line: 224, column: 7, scope: !903)
!962 = !DILocation(line: 224, column: 16, scope: !903)
!963 = !DILocation(line: 224, column: 5, scope: !903)
!964 = !DILocalVariable(name: "temp", scope: !965, file: !3, line: 227, type: !536)
!965 = distinct !DILexicalBlock(scope: !903, file: !3, line: 227, column: 5)
!966 = !DILocation(line: 227, column: 24, scope: !965)
!967 = !DILocalVariable(name: "qval", scope: !965, file: !3, line: 227, type: !536)
!968 = !DILocation(line: 227, column: 30, scope: !965)
!969 = !DILocalVariable(name: "i", scope: !965, file: !3, line: 228, type: !33)
!970 = !DILocation(line: 228, column: 20, scope: !965)
!971 = !DILocalVariable(name: "output_ptr", scope: !965, file: !3, line: 229, type: !972)
!972 = !DIDerivedType(tag: DW_TAG_typedef, name: "JCOEFPTR", file: !7, line: 75, baseType: !973)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!974 = !DILocation(line: 229, column: 25, scope: !965)
!975 = !DILocation(line: 229, column: 38, scope: !965)
!976 = !DILocation(line: 229, column: 50, scope: !965)
!977 = !DILocation(line: 231, column: 14, scope: !978)
!978 = distinct !DILexicalBlock(scope: !965, file: !3, line: 231, column: 7)
!979 = !DILocation(line: 231, column: 12, scope: !978)
!980 = !DILocation(line: 231, column: 19, scope: !981)
!981 = distinct !DILexicalBlock(scope: !978, file: !3, line: 231, column: 7)
!982 = !DILocation(line: 231, column: 21, scope: !981)
!983 = !DILocation(line: 231, column: 7, scope: !978)
!984 = !DILocation(line: 232, column: 9, scope: !985)
!985 = distinct !DILexicalBlock(scope: !981, file: !3, line: 231, column: 38)
!986 = !DILocation(line: 232, column: 18, scope: !985)
!987 = !DILocation(line: 232, column: 7, scope: !985)
!988 = !DILocation(line: 233, column: 19, scope: !985)
!989 = !DILocation(line: 233, column: 9, scope: !985)
!990 = !DILocation(line: 233, column: 7, scope: !985)
!991 = !DILocation(line: 251, column: 6, scope: !992)
!992 = distinct !DILexicalBlock(scope: !985, file: !3, line: 251, column: 6)
!993 = !DILocation(line: 251, column: 11, scope: !992)
!994 = !DILocation(line: 252, column: 12, scope: !995)
!995 = distinct !DILexicalBlock(scope: !992, file: !3, line: 251, column: 16)
!996 = !DILocation(line: 252, column: 11, scope: !995)
!997 = !DILocation(line: 252, column: 9, scope: !995)
!998 = !DILocation(line: 253, column: 12, scope: !995)
!999 = !DILocation(line: 253, column: 16, scope: !995)
!1000 = !DILocation(line: 253, column: 9, scope: !995)
!1001 = !DILocation(line: 254, column: 4, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !995, file: !3, line: 254, column: 4)
!1003 = !DILocation(line: 255, column: 12, scope: !995)
!1004 = !DILocation(line: 255, column: 11, scope: !995)
!1005 = !DILocation(line: 255, column: 9, scope: !995)
!1006 = !DILocation(line: 256, column: 2, scope: !995)
!1007 = !DILocation(line: 257, column: 12, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !992, file: !3, line: 256, column: 9)
!1009 = !DILocation(line: 257, column: 16, scope: !1008)
!1010 = !DILocation(line: 257, column: 9, scope: !1008)
!1011 = !DILocation(line: 258, column: 4, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !1008, file: !3, line: 258, column: 4)
!1013 = !DILocation(line: 260, column: 26, scope: !985)
!1014 = !DILocation(line: 260, column: 18, scope: !985)
!1015 = !DILocation(line: 260, column: 2, scope: !985)
!1016 = !DILocation(line: 260, column: 13, scope: !985)
!1017 = !DILocation(line: 260, column: 16, scope: !985)
!1018 = !DILocation(line: 261, column: 7, scope: !985)
!1019 = !DILocation(line: 231, column: 34, scope: !981)
!1020 = !DILocation(line: 231, column: 7, scope: !981)
!1021 = distinct !{!1021, !983, !1022, !638}
!1022 = !DILocation(line: 261, column: 7, scope: !978)
!1023 = !DILocation(line: 263, column: 3, scope: !903)
!1024 = !DILocation(line: 195, column: 35, scope: !897)
!1025 = !DILocation(line: 195, column: 49, scope: !897)
!1026 = !DILocation(line: 195, column: 3, scope: !897)
!1027 = distinct !{!1027, !900, !1028, !638}
!1028 = !DILocation(line: 263, column: 3, scope: !894)
!1029 = !DILocation(line: 264, column: 1, scope: !857)
!1030 = distinct !DISubprogram(name: "forward_DCT_float", scope: !3, file: !3, line: 270, type: !381, scopeLine: 275, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !396, retainedNodes: !554)
!1031 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1030, file: !3, line: 270, type: !6)
!1032 = !DILocation(line: 270, column: 35, scope: !1030)
!1033 = !DILocalVariable(name: "compptr", arg: 2, scope: !1030, file: !3, line: 270, type: !177)
!1034 = !DILocation(line: 270, column: 64, scope: !1030)
!1035 = !DILocalVariable(name: "sample_data", arg: 3, scope: !1030, file: !3, line: 271, type: !42)
!1036 = !DILocation(line: 271, column: 17, scope: !1030)
!1037 = !DILocalVariable(name: "coef_blocks", arg: 4, scope: !1030, file: !3, line: 271, type: !57)
!1038 = !DILocation(line: 271, column: 40, scope: !1030)
!1039 = !DILocalVariable(name: "start_row", arg: 5, scope: !1030, file: !3, line: 272, type: !49)
!1040 = !DILocation(line: 272, column: 17, scope: !1030)
!1041 = !DILocalVariable(name: "start_col", arg: 6, scope: !1030, file: !3, line: 272, type: !49)
!1042 = !DILocation(line: 272, column: 39, scope: !1030)
!1043 = !DILocalVariable(name: "num_blocks", arg: 7, scope: !1030, file: !3, line: 273, type: !49)
!1044 = !DILocation(line: 273, column: 17, scope: !1030)
!1045 = !DILocalVariable(name: "fdct", scope: !1030, file: !3, line: 277, type: !523)
!1046 = !DILocation(line: 277, column: 15, scope: !1030)
!1047 = !DILocation(line: 277, column: 36, scope: !1030)
!1048 = !DILocation(line: 277, column: 43, scope: !1030)
!1049 = !DILocalVariable(name: "do_dct", scope: !1030, file: !3, line: 278, type: !540)
!1050 = !DILocation(line: 278, column: 24, scope: !1030)
!1051 = !DILocation(line: 278, column: 33, scope: !1030)
!1052 = !DILocation(line: 278, column: 39, scope: !1030)
!1053 = !DILocalVariable(name: "divisors", scope: !1030, file: !3, line: 279, type: !544)
!1054 = !DILocation(line: 279, column: 16, scope: !1030)
!1055 = !DILocation(line: 279, column: 27, scope: !1030)
!1056 = !DILocation(line: 279, column: 33, scope: !1030)
!1057 = !DILocation(line: 279, column: 48, scope: !1030)
!1058 = !DILocation(line: 279, column: 57, scope: !1030)
!1059 = !DILocalVariable(name: "workspace", scope: !1030, file: !3, line: 280, type: !1060)
!1060 = !DICompositeType(tag: DW_TAG_array_type, baseType: !545, size: 2048, elements: !63)
!1061 = !DILocation(line: 280, column: 14, scope: !1030)
!1062 = !DILocalVariable(name: "bi", scope: !1030, file: !3, line: 281, type: !49)
!1063 = !DILocation(line: 281, column: 14, scope: !1030)
!1064 = !DILocation(line: 283, column: 18, scope: !1030)
!1065 = !DILocation(line: 283, column: 15, scope: !1030)
!1066 = !DILocation(line: 285, column: 11, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !1030, file: !3, line: 285, column: 3)
!1068 = !DILocation(line: 285, column: 8, scope: !1067)
!1069 = !DILocation(line: 285, column: 16, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !1067, file: !3, line: 285, column: 3)
!1071 = !DILocation(line: 285, column: 21, scope: !1070)
!1072 = !DILocation(line: 285, column: 19, scope: !1070)
!1073 = !DILocation(line: 285, column: 3, scope: !1067)
!1074 = !DILocalVariable(name: "workspaceptr", scope: !1075, file: !3, line: 287, type: !544)
!1075 = distinct !DILexicalBlock(scope: !1076, file: !3, line: 287, column: 5)
!1076 = distinct !DILexicalBlock(scope: !1070, file: !3, line: 285, column: 61)
!1077 = !DILocation(line: 287, column: 28, scope: !1075)
!1078 = !DILocalVariable(name: "elemptr", scope: !1075, file: !3, line: 288, type: !44)
!1079 = !DILocation(line: 288, column: 25, scope: !1075)
!1080 = !DILocalVariable(name: "elemr", scope: !1075, file: !3, line: 289, type: !33)
!1081 = !DILocation(line: 289, column: 20, scope: !1075)
!1082 = !DILocation(line: 291, column: 22, scope: !1075)
!1083 = !DILocation(line: 291, column: 20, scope: !1075)
!1084 = !DILocation(line: 292, column: 18, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1075, file: !3, line: 292, column: 7)
!1086 = !DILocation(line: 292, column: 12, scope: !1085)
!1087 = !DILocation(line: 292, column: 23, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1085, file: !3, line: 292, column: 7)
!1089 = !DILocation(line: 292, column: 29, scope: !1088)
!1090 = !DILocation(line: 292, column: 7, scope: !1085)
!1091 = !DILocation(line: 293, column: 12, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !1088, file: !3, line: 292, column: 49)
!1093 = !DILocation(line: 293, column: 24, scope: !1092)
!1094 = !DILocation(line: 293, column: 33, scope: !1092)
!1095 = !DILocation(line: 293, column: 31, scope: !1092)
!1096 = !DILocation(line: 293, column: 10, scope: !1092)
!1097 = !DILocation(line: 295, column: 33, scope: !1092)
!1098 = !DILocation(line: 295, column: 56, scope: !1092)
!1099 = !DILocation(line: 295, column: 20, scope: !1092)
!1100 = !DILocation(line: 295, column: 15, scope: !1092)
!1101 = !DILocation(line: 295, column: 18, scope: !1092)
!1102 = !DILocation(line: 296, column: 33, scope: !1092)
!1103 = !DILocation(line: 296, column: 56, scope: !1092)
!1104 = !DILocation(line: 296, column: 20, scope: !1092)
!1105 = !DILocation(line: 296, column: 15, scope: !1092)
!1106 = !DILocation(line: 296, column: 18, scope: !1092)
!1107 = !DILocation(line: 297, column: 33, scope: !1092)
!1108 = !DILocation(line: 297, column: 56, scope: !1092)
!1109 = !DILocation(line: 297, column: 20, scope: !1092)
!1110 = !DILocation(line: 297, column: 15, scope: !1092)
!1111 = !DILocation(line: 297, column: 18, scope: !1092)
!1112 = !DILocation(line: 298, column: 33, scope: !1092)
!1113 = !DILocation(line: 298, column: 56, scope: !1092)
!1114 = !DILocation(line: 298, column: 20, scope: !1092)
!1115 = !DILocation(line: 298, column: 15, scope: !1092)
!1116 = !DILocation(line: 298, column: 18, scope: !1092)
!1117 = !DILocation(line: 299, column: 33, scope: !1092)
!1118 = !DILocation(line: 299, column: 56, scope: !1092)
!1119 = !DILocation(line: 299, column: 20, scope: !1092)
!1120 = !DILocation(line: 299, column: 15, scope: !1092)
!1121 = !DILocation(line: 299, column: 18, scope: !1092)
!1122 = !DILocation(line: 300, column: 33, scope: !1092)
!1123 = !DILocation(line: 300, column: 56, scope: !1092)
!1124 = !DILocation(line: 300, column: 20, scope: !1092)
!1125 = !DILocation(line: 300, column: 15, scope: !1092)
!1126 = !DILocation(line: 300, column: 18, scope: !1092)
!1127 = !DILocation(line: 301, column: 33, scope: !1092)
!1128 = !DILocation(line: 301, column: 56, scope: !1092)
!1129 = !DILocation(line: 301, column: 20, scope: !1092)
!1130 = !DILocation(line: 301, column: 15, scope: !1092)
!1131 = !DILocation(line: 301, column: 18, scope: !1092)
!1132 = !DILocation(line: 302, column: 33, scope: !1092)
!1133 = !DILocation(line: 302, column: 56, scope: !1092)
!1134 = !DILocation(line: 302, column: 20, scope: !1092)
!1135 = !DILocation(line: 302, column: 15, scope: !1092)
!1136 = !DILocation(line: 302, column: 18, scope: !1092)
!1137 = !DILocation(line: 311, column: 7, scope: !1092)
!1138 = !DILocation(line: 292, column: 45, scope: !1088)
!1139 = !DILocation(line: 292, column: 7, scope: !1088)
!1140 = distinct !{!1140, !1090, !1141, !638}
!1141 = !DILocation(line: 311, column: 7, scope: !1085)
!1142 = !DILocation(line: 315, column: 7, scope: !1076)
!1143 = !DILocation(line: 315, column: 16, scope: !1076)
!1144 = !DILocation(line: 315, column: 5, scope: !1076)
!1145 = !DILocalVariable(name: "temp", scope: !1146, file: !3, line: 318, type: !545)
!1146 = distinct !DILexicalBlock(scope: !1076, file: !3, line: 318, column: 5)
!1147 = !DILocation(line: 318, column: 27, scope: !1146)
!1148 = !DILocalVariable(name: "i", scope: !1146, file: !3, line: 319, type: !33)
!1149 = !DILocation(line: 319, column: 20, scope: !1146)
!1150 = !DILocalVariable(name: "output_ptr", scope: !1146, file: !3, line: 320, type: !972)
!1151 = !DILocation(line: 320, column: 25, scope: !1146)
!1152 = !DILocation(line: 320, column: 38, scope: !1146)
!1153 = !DILocation(line: 320, column: 50, scope: !1146)
!1154 = !DILocation(line: 322, column: 14, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1146, file: !3, line: 322, column: 7)
!1156 = !DILocation(line: 322, column: 12, scope: !1155)
!1157 = !DILocation(line: 322, column: 19, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1155, file: !3, line: 322, column: 7)
!1159 = !DILocation(line: 322, column: 21, scope: !1158)
!1160 = !DILocation(line: 322, column: 7, scope: !1155)
!1161 = !DILocation(line: 324, column: 19, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1158, file: !3, line: 322, column: 38)
!1163 = !DILocation(line: 324, column: 9, scope: !1162)
!1164 = !DILocation(line: 324, column: 24, scope: !1162)
!1165 = !DILocation(line: 324, column: 33, scope: !1162)
!1166 = !DILocation(line: 324, column: 22, scope: !1162)
!1167 = !DILocation(line: 324, column: 7, scope: !1162)
!1168 = !DILocation(line: 331, column: 34, scope: !1162)
!1169 = !DILocation(line: 331, column: 39, scope: !1162)
!1170 = !DILocation(line: 331, column: 27, scope: !1162)
!1171 = !DILocation(line: 331, column: 63, scope: !1162)
!1172 = !DILocation(line: 331, column: 18, scope: !1162)
!1173 = !DILocation(line: 331, column: 2, scope: !1162)
!1174 = !DILocation(line: 331, column: 13, scope: !1162)
!1175 = !DILocation(line: 331, column: 16, scope: !1162)
!1176 = !DILocation(line: 332, column: 7, scope: !1162)
!1177 = !DILocation(line: 322, column: 34, scope: !1158)
!1178 = !DILocation(line: 322, column: 7, scope: !1158)
!1179 = distinct !{!1179, !1160, !1180, !638}
!1180 = !DILocation(line: 332, column: 7, scope: !1155)
!1181 = !DILocation(line: 334, column: 3, scope: !1076)
!1182 = !DILocation(line: 285, column: 35, scope: !1070)
!1183 = !DILocation(line: 285, column: 49, scope: !1070)
!1184 = !DILocation(line: 285, column: 3, scope: !1070)
!1185 = distinct !{!1185, !1073, !1186, !638}
!1186 = !DILocation(line: 334, column: 3, scope: !1067)
!1187 = !DILocation(line: 335, column: 1, scope: !1030)
