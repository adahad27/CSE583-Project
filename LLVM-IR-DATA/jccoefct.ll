; ModuleID = 'cBench/consumer_jpeg_c/src/jccoefct.c'
source_filename = "cBench/consumer_jpeg_c/src/jccoefct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jpeg_compress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, double, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [16 x i8], [16 x i8], [16 x i8], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.my_coef_controller = type { %struct.jpeg_c_coef_controller, i32, i32, i32, i32, [10 x ptr], [10 x ptr] }
%struct.jpeg_c_coef_controller = type { ptr, ptr }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_forward_dct = type { ptr, ptr }
%struct.jpeg_entropy_encoder = type { ptr, ptr, ptr }

; Function Attrs: noinline nounwind uwtable
define dso_local void @jinit_c_coef_controller(ptr noundef %0, i32 noundef %1) #0 !dbg !542 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !544, !DIExpression(), !545)
  store i32 %1, ptr %4, align 4
    #dbg_declare(ptr %4, !546, !DIExpression(), !547)
    #dbg_declare(ptr %5, !548, !DIExpression(), !549)
  %10 = load ptr, ptr %3, align 8, !dbg !550
  %11 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %10, i32 0, i32 1, !dbg !551
  %12 = load ptr, ptr %11, align 8, !dbg !551
  %13 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %12, i32 0, i32 0, !dbg !552
  %14 = load ptr, ptr %13, align 8, !dbg !552
  %15 = load ptr, ptr %3, align 8, !dbg !553
  %16 = call ptr %14(ptr noundef %15, i32 noundef 1, i64 noundef 192), !dbg !554
  store ptr %16, ptr %5, align 8, !dbg !555
  %17 = load ptr, ptr %5, align 8, !dbg !556
  %18 = load ptr, ptr %3, align 8, !dbg !557
  %19 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %18, i32 0, i32 54, !dbg !558
  store ptr %17, ptr %19, align 8, !dbg !559
  %20 = load ptr, ptr %5, align 8, !dbg !560
  %21 = getelementptr inbounds nuw %struct.my_coef_controller, ptr %20, i32 0, i32 0, !dbg !561
  %22 = getelementptr inbounds nuw %struct.jpeg_c_coef_controller, ptr %21, i32 0, i32 0, !dbg !562
  store ptr @start_pass_coef, ptr %22, align 8, !dbg !563
  %23 = load i32, ptr %4, align 4, !dbg !564
  %24 = icmp ne i32 %23, 0, !dbg !564
  br i1 %24, label %25, label %77, !dbg !564

25:                                               ; preds = %2
    #dbg_declare(ptr %6, !566, !DIExpression(), !568)
    #dbg_declare(ptr %7, !569, !DIExpression(), !570)
  store i32 0, ptr %6, align 4, !dbg !571
  %26 = load ptr, ptr %3, align 8, !dbg !573
  %27 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %26, i32 0, i32 14, !dbg !574
  %28 = load ptr, ptr %27, align 8, !dbg !574
  store ptr %28, ptr %7, align 8, !dbg !575
  br label %29, !dbg !576

29:                                               ; preds = %71, %25
  %30 = load i32, ptr %6, align 4, !dbg !577
  %31 = load ptr, ptr %3, align 8, !dbg !579
  %32 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %31, i32 0, i32 12, !dbg !580
  %33 = load i32, ptr %32, align 4, !dbg !580
  %34 = icmp slt i32 %30, %33, !dbg !581
  br i1 %34, label %35, label %76, !dbg !582

35:                                               ; preds = %29
  %36 = load ptr, ptr %3, align 8, !dbg !583
  %37 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %36, i32 0, i32 1, !dbg !585
  %38 = load ptr, ptr %37, align 8, !dbg !585
  %39 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %38, i32 0, i32 5, !dbg !586
  %40 = load ptr, ptr %39, align 8, !dbg !586
  %41 = load ptr, ptr %3, align 8, !dbg !587
  %42 = load ptr, ptr %7, align 8, !dbg !588
  %43 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %42, i32 0, i32 7, !dbg !589
  %44 = load i32, ptr %43, align 4, !dbg !589
  %45 = zext i32 %44 to i64, !dbg !590
  %46 = load ptr, ptr %7, align 8, !dbg !591
  %47 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %46, i32 0, i32 2, !dbg !592
  %48 = load i32, ptr %47, align 8, !dbg !592
  %49 = sext i32 %48 to i64, !dbg !593
  %50 = call i64 @jround_up(i64 noundef %45, i64 noundef %49), !dbg !594
  %51 = trunc i64 %50 to i32, !dbg !595
  %52 = load ptr, ptr %7, align 8, !dbg !596
  %53 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %52, i32 0, i32 8, !dbg !597
  %54 = load i32, ptr %53, align 8, !dbg !597
  %55 = zext i32 %54 to i64, !dbg !598
  %56 = load ptr, ptr %7, align 8, !dbg !599
  %57 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %56, i32 0, i32 3, !dbg !600
  %58 = load i32, ptr %57, align 4, !dbg !600
  %59 = sext i32 %58 to i64, !dbg !601
  %60 = call i64 @jround_up(i64 noundef %55, i64 noundef %59), !dbg !602
  %61 = trunc i64 %60 to i32, !dbg !603
  %62 = load ptr, ptr %7, align 8, !dbg !604
  %63 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %62, i32 0, i32 3, !dbg !605
  %64 = load i32, ptr %63, align 4, !dbg !605
  %65 = call ptr %40(ptr noundef %41, i32 noundef 1, i32 noundef 0, i32 noundef %51, i32 noundef %61, i32 noundef %64), !dbg !606
  %66 = load ptr, ptr %5, align 8, !dbg !607
  %67 = getelementptr inbounds nuw %struct.my_coef_controller, ptr %66, i32 0, i32 6, !dbg !608
  %68 = load i32, ptr %6, align 4, !dbg !609
  %69 = sext i32 %68 to i64, !dbg !607
  %70 = getelementptr inbounds [10 x ptr], ptr %67, i64 0, i64 %69, !dbg !607
  store ptr %65, ptr %70, align 8, !dbg !610
  br label %71, !dbg !611

71:                                               ; preds = %35
  %72 = load i32, ptr %6, align 4, !dbg !612
  %73 = add nsw i32 %72, 1, !dbg !612
  store i32 %73, ptr %6, align 4, !dbg !612
  %74 = load ptr, ptr %7, align 8, !dbg !613
  %75 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %74, i32 1, !dbg !613
  store ptr %75, ptr %7, align 8, !dbg !613
  br label %29, !dbg !614, !llvm.loop !615

76:                                               ; preds = %29
  br label %105, !dbg !618

77:                                               ; preds = %2
    #dbg_declare(ptr %8, !619, !DIExpression(), !621)
    #dbg_declare(ptr %9, !622, !DIExpression(), !623)
  %78 = load ptr, ptr %3, align 8, !dbg !624
  %79 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %78, i32 0, i32 1, !dbg !625
  %80 = load ptr, ptr %79, align 8, !dbg !625
  %81 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %80, i32 0, i32 1, !dbg !626
  %82 = load ptr, ptr %81, align 8, !dbg !626
  %83 = load ptr, ptr %3, align 8, !dbg !627
  %84 = call ptr %82(ptr noundef %83, i32 noundef 1, i64 noundef 1280), !dbg !628
  store ptr %84, ptr %8, align 8, !dbg !629
  store i32 0, ptr %9, align 4, !dbg !630
  br label %85, !dbg !632

85:                                               ; preds = %98, %77
  %86 = load i32, ptr %9, align 4, !dbg !633
  %87 = icmp slt i32 %86, 10, !dbg !635
  br i1 %87, label %88, label %101, !dbg !636

88:                                               ; preds = %85
  %89 = load ptr, ptr %8, align 8, !dbg !637
  %90 = load i32, ptr %9, align 4, !dbg !639
  %91 = sext i32 %90 to i64, !dbg !640
  %92 = getelementptr inbounds [64 x i16], ptr %89, i64 %91, !dbg !640
  %93 = load ptr, ptr %5, align 8, !dbg !641
  %94 = getelementptr inbounds nuw %struct.my_coef_controller, ptr %93, i32 0, i32 5, !dbg !642
  %95 = load i32, ptr %9, align 4, !dbg !643
  %96 = sext i32 %95 to i64, !dbg !641
  %97 = getelementptr inbounds [10 x ptr], ptr %94, i64 0, i64 %96, !dbg !641
  store ptr %92, ptr %97, align 8, !dbg !644
  br label %98, !dbg !645

98:                                               ; preds = %88
  %99 = load i32, ptr %9, align 4, !dbg !646
  %100 = add nsw i32 %99, 1, !dbg !646
  store i32 %100, ptr %9, align 4, !dbg !646
  br label %85, !dbg !647, !llvm.loop !648

101:                                              ; preds = %85
  %102 = load ptr, ptr %5, align 8, !dbg !650
  %103 = getelementptr inbounds nuw %struct.my_coef_controller, ptr %102, i32 0, i32 6, !dbg !651
  %104 = getelementptr inbounds [10 x ptr], ptr %103, i64 0, i64 0, !dbg !650
  store ptr null, ptr %104, align 8, !dbg !652
  br label %105

105:                                              ; preds = %101, %76
  ret void, !dbg !653
}

; Function Attrs: noinline nounwind uwtable
define internal void @start_pass_coef(ptr noundef %0, i32 noundef %1) #0 !dbg !654 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !655, !DIExpression(), !656)
  store i32 %1, ptr %4, align 4
    #dbg_declare(ptr %4, !657, !DIExpression(), !658)
    #dbg_declare(ptr %5, !659, !DIExpression(), !660)
  %6 = load ptr, ptr %3, align 8, !dbg !661
  %7 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %6, i32 0, i32 54, !dbg !662
  %8 = load ptr, ptr %7, align 8, !dbg !662
  store ptr %8, ptr %5, align 8, !dbg !660
  %9 = load ptr, ptr %5, align 8, !dbg !663
  %10 = getelementptr inbounds nuw %struct.my_coef_controller, ptr %9, i32 0, i32 1, !dbg !664
  store i32 0, ptr %10, align 8, !dbg !665
  %11 = load ptr, ptr %3, align 8, !dbg !666
  call void @start_iMCU_row(ptr noundef %11), !dbg !667
  %12 = load i32, ptr %4, align 4, !dbg !668
  switch i32 %12, label %76 [
    i32 0, label %13
    i32 3, label %34
    i32 2, label %55
  ], !dbg !669

13:                                               ; preds = %2
  %14 = load ptr, ptr %5, align 8, !dbg !670
  %15 = getelementptr inbounds nuw %struct.my_coef_controller, ptr %14, i32 0, i32 6, !dbg !673
  %16 = getelementptr inbounds [10 x ptr], ptr %15, i64 0, i64 0, !dbg !670
  %17 = load ptr, ptr %16, align 8, !dbg !670
  %18 = icmp ne ptr %17, null, !dbg !674
  br i1 %18, label %19, label %30, !dbg !674

19:                                               ; preds = %13
  %20 = load ptr, ptr %3, align 8, !dbg !675
  %21 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %20, i32 0, i32 0, !dbg !675
  %22 = load ptr, ptr %21, align 8, !dbg !675
  %23 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %22, i32 0, i32 5, !dbg !675
  store i32 4, ptr %23, align 8, !dbg !675
  %24 = load ptr, ptr %3, align 8, !dbg !675
  %25 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %24, i32 0, i32 0, !dbg !675
  %26 = load ptr, ptr %25, align 8, !dbg !675
  %27 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %26, i32 0, i32 0, !dbg !675
  %28 = load ptr, ptr %27, align 8, !dbg !675
  %29 = load ptr, ptr %3, align 8, !dbg !675
  call void %28(ptr noundef %29), !dbg !675
  br label %30, !dbg !675

30:                                               ; preds = %19, %13
  %31 = load ptr, ptr %5, align 8, !dbg !676
  %32 = getelementptr inbounds nuw %struct.my_coef_controller, ptr %31, i32 0, i32 0, !dbg !677
  %33 = getelementptr inbounds nuw %struct.jpeg_c_coef_controller, ptr %32, i32 0, i32 1, !dbg !678
  store ptr @compress_data, ptr %33, align 8, !dbg !679
  br label %87, !dbg !680

34:                                               ; preds = %2
  %35 = load ptr, ptr %5, align 8, !dbg !681
  %36 = getelementptr inbounds nuw %struct.my_coef_controller, ptr %35, i32 0, i32 6, !dbg !683
  %37 = getelementptr inbounds [10 x ptr], ptr %36, i64 0, i64 0, !dbg !681
  %38 = load ptr, ptr %37, align 8, !dbg !681
  %39 = icmp eq ptr %38, null, !dbg !684
  br i1 %39, label %40, label %51, !dbg !684

40:                                               ; preds = %34
  %41 = load ptr, ptr %3, align 8, !dbg !685
  %42 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %41, i32 0, i32 0, !dbg !685
  %43 = load ptr, ptr %42, align 8, !dbg !685
  %44 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %43, i32 0, i32 5, !dbg !685
  store i32 4, ptr %44, align 8, !dbg !685
  %45 = load ptr, ptr %3, align 8, !dbg !685
  %46 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %45, i32 0, i32 0, !dbg !685
  %47 = load ptr, ptr %46, align 8, !dbg !685
  %48 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %47, i32 0, i32 0, !dbg !685
  %49 = load ptr, ptr %48, align 8, !dbg !685
  %50 = load ptr, ptr %3, align 8, !dbg !685
  call void %49(ptr noundef %50), !dbg !685
  br label %51, !dbg !685

51:                                               ; preds = %40, %34
  %52 = load ptr, ptr %5, align 8, !dbg !686
  %53 = getelementptr inbounds nuw %struct.my_coef_controller, ptr %52, i32 0, i32 0, !dbg !687
  %54 = getelementptr inbounds nuw %struct.jpeg_c_coef_controller, ptr %53, i32 0, i32 1, !dbg !688
  store ptr @compress_first_pass, ptr %54, align 8, !dbg !689
  br label %87, !dbg !690

55:                                               ; preds = %2
  %56 = load ptr, ptr %5, align 8, !dbg !691
  %57 = getelementptr inbounds nuw %struct.my_coef_controller, ptr %56, i32 0, i32 6, !dbg !693
  %58 = getelementptr inbounds [10 x ptr], ptr %57, i64 0, i64 0, !dbg !691
  %59 = load ptr, ptr %58, align 8, !dbg !691
  %60 = icmp eq ptr %59, null, !dbg !694
  br i1 %60, label %61, label %72, !dbg !694

61:                                               ; preds = %55
  %62 = load ptr, ptr %3, align 8, !dbg !695
  %63 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %62, i32 0, i32 0, !dbg !695
  %64 = load ptr, ptr %63, align 8, !dbg !695
  %65 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %64, i32 0, i32 5, !dbg !695
  store i32 4, ptr %65, align 8, !dbg !695
  %66 = load ptr, ptr %3, align 8, !dbg !695
  %67 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %66, i32 0, i32 0, !dbg !695
  %68 = load ptr, ptr %67, align 8, !dbg !695
  %69 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %68, i32 0, i32 0, !dbg !695
  %70 = load ptr, ptr %69, align 8, !dbg !695
  %71 = load ptr, ptr %3, align 8, !dbg !695
  call void %70(ptr noundef %71), !dbg !695
  br label %72, !dbg !695

72:                                               ; preds = %61, %55
  %73 = load ptr, ptr %5, align 8, !dbg !696
  %74 = getelementptr inbounds nuw %struct.my_coef_controller, ptr %73, i32 0, i32 0, !dbg !697
  %75 = getelementptr inbounds nuw %struct.jpeg_c_coef_controller, ptr %74, i32 0, i32 1, !dbg !698
  store ptr @compress_output, ptr %75, align 8, !dbg !699
  br label %87, !dbg !700

76:                                               ; preds = %2
  %77 = load ptr, ptr %3, align 8, !dbg !701
  %78 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %77, i32 0, i32 0, !dbg !701
  %79 = load ptr, ptr %78, align 8, !dbg !701
  %80 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %79, i32 0, i32 5, !dbg !701
  store i32 4, ptr %80, align 8, !dbg !701
  %81 = load ptr, ptr %3, align 8, !dbg !701
  %82 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %81, i32 0, i32 0, !dbg !701
  %83 = load ptr, ptr %82, align 8, !dbg !701
  %84 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %83, i32 0, i32 0, !dbg !701
  %85 = load ptr, ptr %84, align 8, !dbg !701
  %86 = load ptr, ptr %3, align 8, !dbg !701
  call void %85(ptr noundef %86), !dbg !701
  br label %87, !dbg !702

87:                                               ; preds = %76, %72, %51, %30
  ret void, !dbg !703
}

declare i64 @jround_up(i64 noundef, i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @start_iMCU_row(ptr noundef %0) #0 !dbg !704 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !705, !DIExpression(), !706)
    #dbg_declare(ptr %3, !707, !DIExpression(), !708)
  %4 = load ptr, ptr %2, align 8, !dbg !709
  %5 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %4, i32 0, i32 54, !dbg !710
  %6 = load ptr, ptr %5, align 8, !dbg !710
  store ptr %6, ptr %3, align 8, !dbg !708
  %7 = load ptr, ptr %2, align 8, !dbg !711
  %8 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %7, i32 0, i32 41, !dbg !713
  %9 = load i32, ptr %8, align 4, !dbg !713
  %10 = icmp sgt i32 %9, 1, !dbg !714
  br i1 %10, label %11, label %14, !dbg !714

11:                                               ; preds = %1
  %12 = load ptr, ptr %3, align 8, !dbg !715
  %13 = getelementptr inbounds nuw %struct.my_coef_controller, ptr %12, i32 0, i32 4, !dbg !717
  store i32 1, ptr %13, align 4, !dbg !718
  br label %42, !dbg !719

14:                                               ; preds = %1
  %15 = load ptr, ptr %3, align 8, !dbg !720
  %16 = getelementptr inbounds nuw %struct.my_coef_controller, ptr %15, i32 0, i32 1, !dbg !723
  %17 = load i32, ptr %16, align 8, !dbg !723
  %18 = load ptr, ptr %2, align 8, !dbg !724
  %19 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %18, i32 0, i32 40, !dbg !725
  %20 = load i32, ptr %19, align 8, !dbg !725
  %21 = sub i32 %20, 1, !dbg !726
  %22 = icmp ult i32 %17, %21, !dbg !727
  br i1 %22, label %23, label %32, !dbg !727

23:                                               ; preds = %14
  %24 = load ptr, ptr %2, align 8, !dbg !728
  %25 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %24, i32 0, i32 42, !dbg !729
  %26 = getelementptr inbounds [4 x ptr], ptr %25, i64 0, i64 0, !dbg !728
  %27 = load ptr, ptr %26, align 8, !dbg !728
  %28 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %27, i32 0, i32 3, !dbg !730
  %29 = load i32, ptr %28, align 4, !dbg !730
  %30 = load ptr, ptr %3, align 8, !dbg !731
  %31 = getelementptr inbounds nuw %struct.my_coef_controller, ptr %30, i32 0, i32 4, !dbg !732
  store i32 %29, ptr %31, align 4, !dbg !733
  br label %41, !dbg !731

32:                                               ; preds = %14
  %33 = load ptr, ptr %2, align 8, !dbg !734
  %34 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %33, i32 0, i32 42, !dbg !735
  %35 = getelementptr inbounds [4 x ptr], ptr %34, i64 0, i64 0, !dbg !734
  %36 = load ptr, ptr %35, align 8, !dbg !734
  %37 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %36, i32 0, i32 18, !dbg !736
  %38 = load i32, ptr %37, align 8, !dbg !736
  %39 = load ptr, ptr %3, align 8, !dbg !737
  %40 = getelementptr inbounds nuw %struct.my_coef_controller, ptr %39, i32 0, i32 4, !dbg !738
  store i32 %38, ptr %40, align 4, !dbg !739
  br label %41

41:                                               ; preds = %32, %23
  br label %42

42:                                               ; preds = %41, %11
  %43 = load ptr, ptr %3, align 8, !dbg !740
  %44 = getelementptr inbounds nuw %struct.my_coef_controller, ptr %43, i32 0, i32 2, !dbg !741
  store i32 0, ptr %44, align 4, !dbg !742
  %45 = load ptr, ptr %3, align 8, !dbg !743
  %46 = getelementptr inbounds nuw %struct.my_coef_controller, ptr %45, i32 0, i32 3, !dbg !744
  store i32 0, ptr %46, align 8, !dbg !745
  ret void, !dbg !746
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @compress_data(ptr noundef %0, ptr noundef %1) #0 !dbg !747 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
    #dbg_declare(ptr %4, !748, !DIExpression(), !749)
  store ptr %1, ptr %5, align 8
    #dbg_declare(ptr %5, !750, !DIExpression(), !751)
    #dbg_declare(ptr %6, !752, !DIExpression(), !753)
  %19 = load ptr, ptr %4, align 8, !dbg !754
  %20 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %19, i32 0, i32 54, !dbg !755
  %21 = load ptr, ptr %20, align 8, !dbg !755
  store ptr %21, ptr %6, align 8, !dbg !753
    #dbg_declare(ptr %7, !756, !DIExpression(), !757)
    #dbg_declare(ptr %8, !758, !DIExpression(), !759)
  %22 = load ptr, ptr %4, align 8, !dbg !760
  %23 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %22, i32 0, i32 43, !dbg !761
  %24 = load i32, ptr %23, align 8, !dbg !761
  %25 = sub i32 %24, 1, !dbg !762
  store i32 %25, ptr %8, align 4, !dbg !759
    #dbg_declare(ptr %9, !763, !DIExpression(), !764)
  %26 = load ptr, ptr %4, align 8, !dbg !765
  %27 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %26, i32 0, i32 40, !dbg !766
  %28 = load i32, ptr %27, align 8, !dbg !766
  %29 = sub i32 %28, 1, !dbg !767
  store i32 %29, ptr %9, align 4, !dbg !764
    #dbg_declare(ptr %10, !768, !DIExpression(), !769)
    #dbg_declare(ptr %11, !770, !DIExpression(), !771)
    #dbg_declare(ptr %12, !772, !DIExpression(), !773)
    #dbg_declare(ptr %13, !774, !DIExpression(), !775)
    #dbg_declare(ptr %14, !776, !DIExpression(), !777)
    #dbg_declare(ptr %15, !778, !DIExpression(), !779)
    #dbg_declare(ptr %16, !780, !DIExpression(), !781)
    #dbg_declare(ptr %17, !782, !DIExpression(), !783)
    #dbg_declare(ptr %18, !784, !DIExpression(), !785)
  %30 = load ptr, ptr %6, align 8, !dbg !786
  %31 = getelementptr inbounds nuw %struct.my_coef_controller, ptr %30, i32 0, i32 3, !dbg !788
  %32 = load i32, ptr %31, align 8, !dbg !788
  store i32 %32, ptr %14, align 4, !dbg !789
  br label %33, !dbg !790

33:                                               ; preds = %263, %2
  %34 = load i32, ptr %14, align 4, !dbg !791
  %35 = load ptr, ptr %6, align 8, !dbg !793
  %36 = getelementptr inbounds nuw %struct.my_coef_controller, ptr %35, i32 0, i32 4, !dbg !794
  %37 = load i32, ptr %36, align 4, !dbg !794
  %38 = icmp slt i32 %34, %37, !dbg !795
  br i1 %38, label %39, label %266, !dbg !796

39:                                               ; preds = %33
  %40 = load ptr, ptr %6, align 8, !dbg !797
  %41 = getelementptr inbounds nuw %struct.my_coef_controller, ptr %40, i32 0, i32 2, !dbg !800
  %42 = load i32, ptr %41, align 4, !dbg !800
  store i32 %42, ptr %7, align 4, !dbg !801
  br label %43, !dbg !802

43:                                               ; preds = %257, %39
  %44 = load i32, ptr %7, align 4, !dbg !803
  %45 = load i32, ptr %8, align 4, !dbg !805
  %46 = icmp ule i32 %44, %45, !dbg !806
  br i1 %46, label %47, label %260, !dbg !807

47:                                               ; preds = %43
  store i32 0, ptr %10, align 4, !dbg !808
  store i32 0, ptr %12, align 4, !dbg !810
  br label %48, !dbg !812

48:                                               ; preds = %234, %47
  %49 = load i32, ptr %12, align 4, !dbg !813
  %50 = load ptr, ptr %4, align 8, !dbg !815
  %51 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %50, i32 0, i32 41, !dbg !816
  %52 = load i32, ptr %51, align 4, !dbg !816
  %53 = icmp slt i32 %49, %52, !dbg !817
  br i1 %53, label %54, label %237, !dbg !818

54:                                               ; preds = %48
  %55 = load ptr, ptr %4, align 8, !dbg !819
  %56 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %55, i32 0, i32 42, !dbg !821
  %57 = load i32, ptr %12, align 4, !dbg !822
  %58 = sext i32 %57 to i64, !dbg !819
  %59 = getelementptr inbounds [4 x ptr], ptr %56, i64 0, i64 %58, !dbg !819
  %60 = load ptr, ptr %59, align 8, !dbg !819
  store ptr %60, ptr %18, align 8, !dbg !823
  %61 = load i32, ptr %7, align 4, !dbg !824
  %62 = load i32, ptr %8, align 4, !dbg !825
  %63 = icmp ult i32 %61, %62, !dbg !826
  br i1 %63, label %64, label %68, !dbg !827

64:                                               ; preds = %54
  %65 = load ptr, ptr %18, align 8, !dbg !828
  %66 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %65, i32 0, i32 13, !dbg !829
  %67 = load i32, ptr %66, align 4, !dbg !829
  br label %72, !dbg !827

68:                                               ; preds = %54
  %69 = load ptr, ptr %18, align 8, !dbg !830
  %70 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %69, i32 0, i32 17, !dbg !831
  %71 = load i32, ptr %70, align 4, !dbg !831
  br label %72, !dbg !827

72:                                               ; preds = %68, %64
  %73 = phi i32 [ %67, %64 ], [ %71, %68 ], !dbg !827
  store i32 %73, ptr %15, align 4, !dbg !832
  %74 = load i32, ptr %7, align 4, !dbg !833
  %75 = load ptr, ptr %18, align 8, !dbg !834
  %76 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %75, i32 0, i32 16, !dbg !835
  %77 = load i32, ptr %76, align 8, !dbg !835
  %78 = mul i32 %74, %77, !dbg !836
  store i32 %78, ptr %17, align 4, !dbg !837
  %79 = load i32, ptr %14, align 4, !dbg !838
  %80 = mul nsw i32 %79, 8, !dbg !839
  store i32 %80, ptr %16, align 4, !dbg !840
  store i32 0, ptr %13, align 4, !dbg !841
  br label %81, !dbg !843

81:                                               ; preds = %230, %72
  %82 = load i32, ptr %13, align 4, !dbg !844
  %83 = load ptr, ptr %18, align 8, !dbg !846
  %84 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %83, i32 0, i32 14, !dbg !847
  %85 = load i32, ptr %84, align 8, !dbg !847
  %86 = icmp slt i32 %82, %85, !dbg !848
  br i1 %86, label %87, label %233, !dbg !849

87:                                               ; preds = %81
  %88 = load ptr, ptr %6, align 8, !dbg !850
  %89 = getelementptr inbounds nuw %struct.my_coef_controller, ptr %88, i32 0, i32 1, !dbg !853
  %90 = load i32, ptr %89, align 8, !dbg !853
  %91 = load i32, ptr %9, align 4, !dbg !854
  %92 = icmp ult i32 %90, %91, !dbg !855
  br i1 %92, label %101, label %93, !dbg !856

93:                                               ; preds = %87
  %94 = load i32, ptr %14, align 4, !dbg !857
  %95 = load i32, ptr %13, align 4, !dbg !858
  %96 = add nsw i32 %94, %95, !dbg !859
  %97 = load ptr, ptr %18, align 8, !dbg !860
  %98 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %97, i32 0, i32 18, !dbg !861
  %99 = load i32, ptr %98, align 8, !dbg !861
  %100 = icmp slt i32 %96, %99, !dbg !862
  br i1 %100, label %101, label %179, !dbg !856

101:                                              ; preds = %93, %87
  %102 = load ptr, ptr %4, align 8, !dbg !863
  %103 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %102, i32 0, i32 58, !dbg !865
  %104 = load ptr, ptr %103, align 8, !dbg !865
  %105 = getelementptr inbounds nuw %struct.jpeg_forward_dct, ptr %104, i32 0, i32 1, !dbg !866
  %106 = load ptr, ptr %105, align 8, !dbg !866
  %107 = load ptr, ptr %4, align 8, !dbg !867
  %108 = load ptr, ptr %18, align 8, !dbg !868
  %109 = load ptr, ptr %5, align 8, !dbg !869
  %110 = load i32, ptr %12, align 4, !dbg !870
  %111 = sext i32 %110 to i64, !dbg !869
  %112 = getelementptr inbounds ptr, ptr %109, i64 %111, !dbg !869
  %113 = load ptr, ptr %112, align 8, !dbg !869
  %114 = load ptr, ptr %6, align 8, !dbg !871
  %115 = getelementptr inbounds nuw %struct.my_coef_controller, ptr %114, i32 0, i32 5, !dbg !872
  %116 = load i32, ptr %10, align 4, !dbg !873
  %117 = sext i32 %116 to i64, !dbg !871
  %118 = getelementptr inbounds [10 x ptr], ptr %115, i64 0, i64 %117, !dbg !871
  %119 = load ptr, ptr %118, align 8, !dbg !871
  %120 = load i32, ptr %16, align 4, !dbg !874
  %121 = load i32, ptr %17, align 4, !dbg !875
  %122 = load i32, ptr %15, align 4, !dbg !876
  call void %106(ptr noundef %107, ptr noundef %108, ptr noundef %113, ptr noundef %119, i32 noundef %120, i32 noundef %121, i32 noundef %122), !dbg !877
  %123 = load i32, ptr %15, align 4, !dbg !878
  %124 = load ptr, ptr %18, align 8, !dbg !880
  %125 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %124, i32 0, i32 13, !dbg !881
  %126 = load i32, ptr %125, align 4, !dbg !881
  %127 = icmp slt i32 %123, %126, !dbg !882
  br i1 %127, label %128, label %178, !dbg !882

128:                                              ; preds = %101
  %129 = load ptr, ptr %6, align 8, !dbg !883
  %130 = getelementptr inbounds nuw %struct.my_coef_controller, ptr %129, i32 0, i32 5, !dbg !885
  %131 = load i32, ptr %10, align 4, !dbg !886
  %132 = load i32, ptr %15, align 4, !dbg !887
  %133 = add nsw i32 %131, %132, !dbg !888
  %134 = sext i32 %133 to i64, !dbg !883
  %135 = getelementptr inbounds [10 x ptr], ptr %130, i64 0, i64 %134, !dbg !883
  %136 = load ptr, ptr %135, align 8, !dbg !883
  %137 = load ptr, ptr %18, align 8, !dbg !889
  %138 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %137, i32 0, i32 13, !dbg !890
  %139 = load i32, ptr %138, align 4, !dbg !890
  %140 = load i32, ptr %15, align 4, !dbg !891
  %141 = sub nsw i32 %139, %140, !dbg !892
  %142 = sext i32 %141 to i64, !dbg !893
  %143 = mul i64 %142, 128, !dbg !894
  call void @jzero_far(ptr noundef %136, i64 noundef %143), !dbg !895
  %144 = load i32, ptr %15, align 4, !dbg !896
  store i32 %144, ptr %11, align 4, !dbg !898
  br label %145, !dbg !899

145:                                              ; preds = %174, %128
  %146 = load i32, ptr %11, align 4, !dbg !900
  %147 = load ptr, ptr %18, align 8, !dbg !902
  %148 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %147, i32 0, i32 13, !dbg !903
  %149 = load i32, ptr %148, align 4, !dbg !903
  %150 = icmp slt i32 %146, %149, !dbg !904
  br i1 %150, label %151, label %177, !dbg !905

151:                                              ; preds = %145
  %152 = load ptr, ptr %6, align 8, !dbg !906
  %153 = getelementptr inbounds nuw %struct.my_coef_controller, ptr %152, i32 0, i32 5, !dbg !908
  %154 = load i32, ptr %10, align 4, !dbg !909
  %155 = load i32, ptr %11, align 4, !dbg !910
  %156 = add nsw i32 %154, %155, !dbg !911
  %157 = sub nsw i32 %156, 1, !dbg !912
  %158 = sext i32 %157 to i64, !dbg !906
  %159 = getelementptr inbounds [10 x ptr], ptr %153, i64 0, i64 %158, !dbg !906
  %160 = load ptr, ptr %159, align 8, !dbg !906
  %161 = getelementptr inbounds [64 x i16], ptr %160, i64 0, !dbg !906
  %162 = getelementptr inbounds [64 x i16], ptr %161, i64 0, i64 0, !dbg !906
  %163 = load i16, ptr %162, align 2, !dbg !906
  %164 = load ptr, ptr %6, align 8, !dbg !913
  %165 = getelementptr inbounds nuw %struct.my_coef_controller, ptr %164, i32 0, i32 5, !dbg !914
  %166 = load i32, ptr %10, align 4, !dbg !915
  %167 = load i32, ptr %11, align 4, !dbg !916
  %168 = add nsw i32 %166, %167, !dbg !917
  %169 = sext i32 %168 to i64, !dbg !913
  %170 = getelementptr inbounds [10 x ptr], ptr %165, i64 0, i64 %169, !dbg !913
  %171 = load ptr, ptr %170, align 8, !dbg !913
  %172 = getelementptr inbounds [64 x i16], ptr %171, i64 0, !dbg !913
  %173 = getelementptr inbounds [64 x i16], ptr %172, i64 0, i64 0, !dbg !913
  store i16 %163, ptr %173, align 2, !dbg !918
  br label %174, !dbg !919

174:                                              ; preds = %151
  %175 = load i32, ptr %11, align 4, !dbg !920
  %176 = add nsw i32 %175, 1, !dbg !920
  store i32 %176, ptr %11, align 4, !dbg !920
  br label %145, !dbg !921, !llvm.loop !922

177:                                              ; preds = %145
  br label %178, !dbg !924

178:                                              ; preds = %177, %101
  br label %222, !dbg !925

179:                                              ; preds = %93
  %180 = load ptr, ptr %6, align 8, !dbg !926
  %181 = getelementptr inbounds nuw %struct.my_coef_controller, ptr %180, i32 0, i32 5, !dbg !928
  %182 = load i32, ptr %10, align 4, !dbg !929
  %183 = sext i32 %182 to i64, !dbg !926
  %184 = getelementptr inbounds [10 x ptr], ptr %181, i64 0, i64 %183, !dbg !926
  %185 = load ptr, ptr %184, align 8, !dbg !926
  %186 = load ptr, ptr %18, align 8, !dbg !930
  %187 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %186, i32 0, i32 13, !dbg !931
  %188 = load i32, ptr %187, align 4, !dbg !931
  %189 = sext i32 %188 to i64, !dbg !930
  %190 = mul i64 %189, 128, !dbg !932
  call void @jzero_far(ptr noundef %185, i64 noundef %190), !dbg !933
  store i32 0, ptr %11, align 4, !dbg !934
  br label %191, !dbg !936

191:                                              ; preds = %218, %179
  %192 = load i32, ptr %11, align 4, !dbg !937
  %193 = load ptr, ptr %18, align 8, !dbg !939
  %194 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %193, i32 0, i32 13, !dbg !940
  %195 = load i32, ptr %194, align 4, !dbg !940
  %196 = icmp slt i32 %192, %195, !dbg !941
  br i1 %196, label %197, label %221, !dbg !942

197:                                              ; preds = %191
  %198 = load ptr, ptr %6, align 8, !dbg !943
  %199 = getelementptr inbounds nuw %struct.my_coef_controller, ptr %198, i32 0, i32 5, !dbg !945
  %200 = load i32, ptr %10, align 4, !dbg !946
  %201 = sub nsw i32 %200, 1, !dbg !947
  %202 = sext i32 %201 to i64, !dbg !943
  %203 = getelementptr inbounds [10 x ptr], ptr %199, i64 0, i64 %202, !dbg !943
  %204 = load ptr, ptr %203, align 8, !dbg !943
  %205 = getelementptr inbounds [64 x i16], ptr %204, i64 0, !dbg !943
  %206 = getelementptr inbounds [64 x i16], ptr %205, i64 0, i64 0, !dbg !943
  %207 = load i16, ptr %206, align 2, !dbg !943
  %208 = load ptr, ptr %6, align 8, !dbg !948
  %209 = getelementptr inbounds nuw %struct.my_coef_controller, ptr %208, i32 0, i32 5, !dbg !949
  %210 = load i32, ptr %10, align 4, !dbg !950
  %211 = load i32, ptr %11, align 4, !dbg !951
  %212 = add nsw i32 %210, %211, !dbg !952
  %213 = sext i32 %212 to i64, !dbg !948
  %214 = getelementptr inbounds [10 x ptr], ptr %209, i64 0, i64 %213, !dbg !948
  %215 = load ptr, ptr %214, align 8, !dbg !948
  %216 = getelementptr inbounds [64 x i16], ptr %215, i64 0, !dbg !948
  %217 = getelementptr inbounds [64 x i16], ptr %216, i64 0, i64 0, !dbg !948
  store i16 %207, ptr %217, align 2, !dbg !953
  br label %218, !dbg !954

218:                                              ; preds = %197
  %219 = load i32, ptr %11, align 4, !dbg !955
  %220 = add nsw i32 %219, 1, !dbg !955
  store i32 %220, ptr %11, align 4, !dbg !955
  br label %191, !dbg !956, !llvm.loop !957

221:                                              ; preds = %191
  br label %222

222:                                              ; preds = %221, %178
  %223 = load ptr, ptr %18, align 8, !dbg !959
  %224 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %223, i32 0, i32 13, !dbg !960
  %225 = load i32, ptr %224, align 4, !dbg !960
  %226 = load i32, ptr %10, align 4, !dbg !961
  %227 = add nsw i32 %226, %225, !dbg !961
  store i32 %227, ptr %10, align 4, !dbg !961
  %228 = load i32, ptr %16, align 4, !dbg !962
  %229 = add i32 %228, 8, !dbg !962
  store i32 %229, ptr %16, align 4, !dbg !962
  br label %230, !dbg !963

230:                                              ; preds = %222
  %231 = load i32, ptr %13, align 4, !dbg !964
  %232 = add nsw i32 %231, 1, !dbg !964
  store i32 %232, ptr %13, align 4, !dbg !964
  br label %81, !dbg !965, !llvm.loop !966

233:                                              ; preds = %81
  br label %234, !dbg !968

234:                                              ; preds = %233
  %235 = load i32, ptr %12, align 4, !dbg !969
  %236 = add nsw i32 %235, 1, !dbg !969
  store i32 %236, ptr %12, align 4, !dbg !969
  br label %48, !dbg !970, !llvm.loop !971

237:                                              ; preds = %48
  %238 = load ptr, ptr %4, align 8, !dbg !973
  %239 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %238, i32 0, i32 59, !dbg !975
  %240 = load ptr, ptr %239, align 8, !dbg !975
  %241 = getelementptr inbounds nuw %struct.jpeg_entropy_encoder, ptr %240, i32 0, i32 1, !dbg !976
  %242 = load ptr, ptr %241, align 8, !dbg !976
  %243 = load ptr, ptr %4, align 8, !dbg !977
  %244 = load ptr, ptr %6, align 8, !dbg !978
  %245 = getelementptr inbounds nuw %struct.my_coef_controller, ptr %244, i32 0, i32 5, !dbg !979
  %246 = getelementptr inbounds [10 x ptr], ptr %245, i64 0, i64 0, !dbg !978
  %247 = call i32 %242(ptr noundef %243, ptr noundef %246), !dbg !980
  %248 = icmp ne i32 %247, 0, !dbg !980
  br i1 %248, label %256, label %249, !dbg !981

249:                                              ; preds = %237
  %250 = load i32, ptr %14, align 4, !dbg !982
  %251 = load ptr, ptr %6, align 8, !dbg !984
  %252 = getelementptr inbounds nuw %struct.my_coef_controller, ptr %251, i32 0, i32 3, !dbg !985
  store i32 %250, ptr %252, align 8, !dbg !986
  %253 = load i32, ptr %7, align 4, !dbg !987
  %254 = load ptr, ptr %6, align 8, !dbg !988
  %255 = getelementptr inbounds nuw %struct.my_coef_controller, ptr %254, i32 0, i32 2, !dbg !989
  store i32 %253, ptr %255, align 4, !dbg !990
  store i32 0, ptr %3, align 4, !dbg !991
  br label %272, !dbg !991

256:                                              ; preds = %237
  br label %257, !dbg !992

257:                                              ; preds = %256
  %258 = load i32, ptr %7, align 4, !dbg !993
  %259 = add i32 %258, 1, !dbg !993
  store i32 %259, ptr %7, align 4, !dbg !993
  br label %43, !dbg !994, !llvm.loop !995

260:                                              ; preds = %43
  %261 = load ptr, ptr %6, align 8, !dbg !997
  %262 = getelementptr inbounds nuw %struct.my_coef_controller, ptr %261, i32 0, i32 2, !dbg !998
  store i32 0, ptr %262, align 4, !dbg !999
  br label %263, !dbg !1000

263:                                              ; preds = %260
  %264 = load i32, ptr %14, align 4, !dbg !1001
  %265 = add nsw i32 %264, 1, !dbg !1001
  store i32 %265, ptr %14, align 4, !dbg !1001
  br label %33, !dbg !1002, !llvm.loop !1003

266:                                              ; preds = %33
  %267 = load ptr, ptr %6, align 8, !dbg !1005
  %268 = getelementptr inbounds nuw %struct.my_coef_controller, ptr %267, i32 0, i32 1, !dbg !1006
  %269 = load i32, ptr %268, align 8, !dbg !1007
  %270 = add i32 %269, 1, !dbg !1007
  store i32 %270, ptr %268, align 8, !dbg !1007
  %271 = load ptr, ptr %4, align 8, !dbg !1008
  call void @start_iMCU_row(ptr noundef %271), !dbg !1009
  store i32 1, ptr %3, align 4, !dbg !1010
  br label %272, !dbg !1010

272:                                              ; preds = %266, %249
  %273 = load i32, ptr %3, align 4, !dbg !1011
  ret i32 %273, !dbg !1011
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @compress_first_pass(ptr noundef %0, ptr noundef %1) #0 !dbg !1012 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i16, align 2
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  %19 = alloca ptr, align 8
  %20 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !1013, !DIExpression(), !1014)
  store ptr %1, ptr %4, align 8
    #dbg_declare(ptr %4, !1015, !DIExpression(), !1016)
    #dbg_declare(ptr %5, !1017, !DIExpression(), !1018)
  %21 = load ptr, ptr %3, align 8, !dbg !1019
  %22 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %21, i32 0, i32 54, !dbg !1020
  %23 = load ptr, ptr %22, align 8, !dbg !1020
  store ptr %23, ptr %5, align 8, !dbg !1018
    #dbg_declare(ptr %6, !1021, !DIExpression(), !1022)
  %24 = load ptr, ptr %3, align 8, !dbg !1023
  %25 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %24, i32 0, i32 40, !dbg !1024
  %26 = load i32, ptr %25, align 8, !dbg !1024
  %27 = sub i32 %26, 1, !dbg !1025
  store i32 %27, ptr %6, align 4, !dbg !1022
    #dbg_declare(ptr %7, !1026, !DIExpression(), !1027)
    #dbg_declare(ptr %8, !1028, !DIExpression(), !1029)
    #dbg_declare(ptr %9, !1030, !DIExpression(), !1031)
    #dbg_declare(ptr %10, !1032, !DIExpression(), !1033)
    #dbg_declare(ptr %11, !1034, !DIExpression(), !1035)
    #dbg_declare(ptr %12, !1036, !DIExpression(), !1037)
    #dbg_declare(ptr %13, !1038, !DIExpression(), !1039)
    #dbg_declare(ptr %14, !1040, !DIExpression(), !1041)
    #dbg_declare(ptr %15, !1042, !DIExpression(), !1043)
    #dbg_declare(ptr %16, !1044, !DIExpression(), !1045)
    #dbg_declare(ptr %17, !1046, !DIExpression(), !1047)
    #dbg_declare(ptr %18, !1048, !DIExpression(), !1049)
    #dbg_declare(ptr %19, !1050, !DIExpression(), !1051)
    #dbg_declare(ptr %20, !1052, !DIExpression(), !1053)
  store i32 0, ptr %11, align 4, !dbg !1054
  %28 = load ptr, ptr %3, align 8, !dbg !1056
  %29 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %28, i32 0, i32 14, !dbg !1057
  %30 = load ptr, ptr %29, align 8, !dbg !1057
  store ptr %30, ptr %17, align 8, !dbg !1058
  br label %31, !dbg !1059

31:                                               ; preds = %242, %2
  %32 = load i32, ptr %11, align 4, !dbg !1060
  %33 = load ptr, ptr %3, align 8, !dbg !1062
  %34 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %33, i32 0, i32 12, !dbg !1063
  %35 = load i32, ptr %34, align 4, !dbg !1063
  %36 = icmp slt i32 %32, %35, !dbg !1064
  br i1 %36, label %37, label %247, !dbg !1065

37:                                               ; preds = %31
  %38 = load ptr, ptr %3, align 8, !dbg !1066
  %39 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %38, i32 0, i32 1, !dbg !1068
  %40 = load ptr, ptr %39, align 8, !dbg !1068
  %41 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %40, i32 0, i32 8, !dbg !1069
  %42 = load ptr, ptr %41, align 8, !dbg !1069
  %43 = load ptr, ptr %3, align 8, !dbg !1070
  %44 = load ptr, ptr %5, align 8, !dbg !1071
  %45 = getelementptr inbounds nuw %struct.my_coef_controller, ptr %44, i32 0, i32 6, !dbg !1072
  %46 = load i32, ptr %11, align 4, !dbg !1073
  %47 = sext i32 %46 to i64, !dbg !1071
  %48 = getelementptr inbounds [10 x ptr], ptr %45, i64 0, i64 %47, !dbg !1071
  %49 = load ptr, ptr %48, align 8, !dbg !1071
  %50 = load ptr, ptr %5, align 8, !dbg !1074
  %51 = getelementptr inbounds nuw %struct.my_coef_controller, ptr %50, i32 0, i32 1, !dbg !1075
  %52 = load i32, ptr %51, align 8, !dbg !1075
  %53 = load ptr, ptr %17, align 8, !dbg !1076
  %54 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %53, i32 0, i32 3, !dbg !1077
  %55 = load i32, ptr %54, align 4, !dbg !1077
  %56 = mul i32 %52, %55, !dbg !1078
  %57 = load ptr, ptr %17, align 8, !dbg !1079
  %58 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %57, i32 0, i32 3, !dbg !1080
  %59 = load i32, ptr %58, align 4, !dbg !1080
  %60 = call ptr %42(ptr noundef %43, ptr noundef %49, i32 noundef %56, i32 noundef %59, i32 noundef 1), !dbg !1081
  store ptr %60, ptr %18, align 8, !dbg !1082
  %61 = load ptr, ptr %5, align 8, !dbg !1083
  %62 = getelementptr inbounds nuw %struct.my_coef_controller, ptr %61, i32 0, i32 1, !dbg !1085
  %63 = load i32, ptr %62, align 8, !dbg !1085
  %64 = load i32, ptr %6, align 4, !dbg !1086
  %65 = icmp ult i32 %63, %64, !dbg !1087
  br i1 %65, label %66, label %70, !dbg !1087

66:                                               ; preds = %37
  %67 = load ptr, ptr %17, align 8, !dbg !1088
  %68 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %67, i32 0, i32 3, !dbg !1089
  %69 = load i32, ptr %68, align 4, !dbg !1089
  store i32 %69, ptr %14, align 4, !dbg !1090
  br label %85, !dbg !1091

70:                                               ; preds = %37
  %71 = load ptr, ptr %17, align 8, !dbg !1092
  %72 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %71, i32 0, i32 8, !dbg !1094
  %73 = load i32, ptr %72, align 8, !dbg !1094
  %74 = load ptr, ptr %17, align 8, !dbg !1095
  %75 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %74, i32 0, i32 3, !dbg !1096
  %76 = load i32, ptr %75, align 4, !dbg !1096
  %77 = urem i32 %73, %76, !dbg !1097
  store i32 %77, ptr %14, align 4, !dbg !1098
  %78 = load i32, ptr %14, align 4, !dbg !1099
  %79 = icmp eq i32 %78, 0, !dbg !1101
  br i1 %79, label %80, label %84, !dbg !1101

80:                                               ; preds = %70
  %81 = load ptr, ptr %17, align 8, !dbg !1102
  %82 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %81, i32 0, i32 3, !dbg !1103
  %83 = load i32, ptr %82, align 4, !dbg !1103
  store i32 %83, ptr %14, align 4, !dbg !1104
  br label %84, !dbg !1105

84:                                               ; preds = %80, %70
  br label %85

85:                                               ; preds = %84, %66
  %86 = load ptr, ptr %17, align 8, !dbg !1106
  %87 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %86, i32 0, i32 7, !dbg !1107
  %88 = load i32, ptr %87, align 4, !dbg !1107
  store i32 %88, ptr %7, align 4, !dbg !1108
  %89 = load ptr, ptr %17, align 8, !dbg !1109
  %90 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %89, i32 0, i32 2, !dbg !1110
  %91 = load i32, ptr %90, align 8, !dbg !1110
  store i32 %91, ptr %12, align 4, !dbg !1111
  %92 = load i32, ptr %7, align 4, !dbg !1112
  %93 = load i32, ptr %12, align 4, !dbg !1113
  %94 = urem i32 %92, %93, !dbg !1114
  store i32 %94, ptr %15, align 4, !dbg !1115
  %95 = load i32, ptr %15, align 4, !dbg !1116
  %96 = icmp sgt i32 %95, 0, !dbg !1118
  br i1 %96, label %97, label %101, !dbg !1118

97:                                               ; preds = %85
  %98 = load i32, ptr %12, align 4, !dbg !1119
  %99 = load i32, ptr %15, align 4, !dbg !1120
  %100 = sub nsw i32 %98, %99, !dbg !1121
  store i32 %100, ptr %15, align 4, !dbg !1122
  br label %101, !dbg !1123

101:                                              ; preds = %97, %85
  store i32 0, ptr %13, align 4, !dbg !1124
  br label %102, !dbg !1126

102:                                              ; preds = %159, %101
  %103 = load i32, ptr %13, align 4, !dbg !1127
  %104 = load i32, ptr %14, align 4, !dbg !1129
  %105 = icmp slt i32 %103, %104, !dbg !1130
  br i1 %105, label %106, label %162, !dbg !1131

106:                                              ; preds = %102
  %107 = load ptr, ptr %18, align 8, !dbg !1132
  %108 = load i32, ptr %13, align 4, !dbg !1134
  %109 = sext i32 %108 to i64, !dbg !1132
  %110 = getelementptr inbounds ptr, ptr %107, i64 %109, !dbg !1132
  %111 = load ptr, ptr %110, align 8, !dbg !1132
  store ptr %111, ptr %19, align 8, !dbg !1135
  %112 = load ptr, ptr %3, align 8, !dbg !1136
  %113 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %112, i32 0, i32 58, !dbg !1137
  %114 = load ptr, ptr %113, align 8, !dbg !1137
  %115 = getelementptr inbounds nuw %struct.jpeg_forward_dct, ptr %114, i32 0, i32 1, !dbg !1138
  %116 = load ptr, ptr %115, align 8, !dbg !1138
  %117 = load ptr, ptr %3, align 8, !dbg !1139
  %118 = load ptr, ptr %17, align 8, !dbg !1140
  %119 = load ptr, ptr %4, align 8, !dbg !1141
  %120 = load i32, ptr %11, align 4, !dbg !1142
  %121 = sext i32 %120 to i64, !dbg !1141
  %122 = getelementptr inbounds ptr, ptr %119, i64 %121, !dbg !1141
  %123 = load ptr, ptr %122, align 8, !dbg !1141
  %124 = load ptr, ptr %19, align 8, !dbg !1143
  %125 = load i32, ptr %13, align 4, !dbg !1144
  %126 = mul nsw i32 %125, 8, !dbg !1145
  %127 = load i32, ptr %7, align 4, !dbg !1146
  call void %116(ptr noundef %117, ptr noundef %118, ptr noundef %123, ptr noundef %124, i32 noundef %126, i32 noundef 0, i32 noundef %127), !dbg !1147
  %128 = load i32, ptr %15, align 4, !dbg !1148
  %129 = icmp sgt i32 %128, 0, !dbg !1150
  br i1 %129, label %130, label %158, !dbg !1150

130:                                              ; preds = %106
  %131 = load i32, ptr %7, align 4, !dbg !1151
  %132 = load ptr, ptr %19, align 8, !dbg !1153
  %133 = zext i32 %131 to i64, !dbg !1153
  %134 = getelementptr inbounds nuw [64 x i16], ptr %132, i64 %133, !dbg !1153
  store ptr %134, ptr %19, align 8, !dbg !1153
  %135 = load ptr, ptr %19, align 8, !dbg !1154
  %136 = load i32, ptr %15, align 4, !dbg !1155
  %137 = sext i32 %136 to i64, !dbg !1155
  %138 = mul i64 %137, 128, !dbg !1156
  call void @jzero_far(ptr noundef %135, i64 noundef %138), !dbg !1157
  %139 = load ptr, ptr %19, align 8, !dbg !1158
  %140 = getelementptr inbounds [64 x i16], ptr %139, i64 -1, !dbg !1158
  %141 = getelementptr inbounds [64 x i16], ptr %140, i64 0, i64 0, !dbg !1158
  %142 = load i16, ptr %141, align 2, !dbg !1158
  store i16 %142, ptr %16, align 2, !dbg !1159
  store i32 0, ptr %10, align 4, !dbg !1160
  br label %143, !dbg !1162

143:                                              ; preds = %154, %130
  %144 = load i32, ptr %10, align 4, !dbg !1163
  %145 = load i32, ptr %15, align 4, !dbg !1165
  %146 = icmp slt i32 %144, %145, !dbg !1166
  br i1 %146, label %147, label %157, !dbg !1167

147:                                              ; preds = %143
  %148 = load i16, ptr %16, align 2, !dbg !1168
  %149 = load ptr, ptr %19, align 8, !dbg !1170
  %150 = load i32, ptr %10, align 4, !dbg !1171
  %151 = sext i32 %150 to i64, !dbg !1170
  %152 = getelementptr inbounds [64 x i16], ptr %149, i64 %151, !dbg !1170
  %153 = getelementptr inbounds [64 x i16], ptr %152, i64 0, i64 0, !dbg !1170
  store i16 %148, ptr %153, align 2, !dbg !1172
  br label %154, !dbg !1173

154:                                              ; preds = %147
  %155 = load i32, ptr %10, align 4, !dbg !1174
  %156 = add nsw i32 %155, 1, !dbg !1174
  store i32 %156, ptr %10, align 4, !dbg !1174
  br label %143, !dbg !1175, !llvm.loop !1176

157:                                              ; preds = %143
  br label %158, !dbg !1178

158:                                              ; preds = %157, %106
  br label %159, !dbg !1179

159:                                              ; preds = %158
  %160 = load i32, ptr %13, align 4, !dbg !1180
  %161 = add nsw i32 %160, 1, !dbg !1180
  store i32 %161, ptr %13, align 4, !dbg !1180
  br label %102, !dbg !1181, !llvm.loop !1182

162:                                              ; preds = %102
  %163 = load ptr, ptr %5, align 8, !dbg !1184
  %164 = getelementptr inbounds nuw %struct.my_coef_controller, ptr %163, i32 0, i32 1, !dbg !1186
  %165 = load i32, ptr %164, align 8, !dbg !1186
  %166 = load i32, ptr %6, align 4, !dbg !1187
  %167 = icmp eq i32 %165, %166, !dbg !1188
  br i1 %167, label %168, label %241, !dbg !1188

168:                                              ; preds = %162
  %169 = load i32, ptr %15, align 4, !dbg !1189
  %170 = load i32, ptr %7, align 4, !dbg !1191
  %171 = add i32 %170, %169, !dbg !1191
  store i32 %171, ptr %7, align 4, !dbg !1191
  %172 = load i32, ptr %7, align 4, !dbg !1192
  %173 = load i32, ptr %12, align 4, !dbg !1193
  %174 = udiv i32 %172, %173, !dbg !1194
  store i32 %174, ptr %8, align 4, !dbg !1195
  %175 = load i32, ptr %14, align 4, !dbg !1196
  store i32 %175, ptr %13, align 4, !dbg !1198
  br label %176, !dbg !1199

176:                                              ; preds = %237, %168
  %177 = load i32, ptr %13, align 4, !dbg !1200
  %178 = load ptr, ptr %17, align 8, !dbg !1202
  %179 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %178, i32 0, i32 3, !dbg !1203
  %180 = load i32, ptr %179, align 4, !dbg !1203
  %181 = icmp slt i32 %177, %180, !dbg !1204
  br i1 %181, label %182, label %240, !dbg !1205

182:                                              ; preds = %176
  %183 = load ptr, ptr %18, align 8, !dbg !1206
  %184 = load i32, ptr %13, align 4, !dbg !1208
  %185 = sext i32 %184 to i64, !dbg !1206
  %186 = getelementptr inbounds ptr, ptr %183, i64 %185, !dbg !1206
  %187 = load ptr, ptr %186, align 8, !dbg !1206
  store ptr %187, ptr %19, align 8, !dbg !1209
  %188 = load ptr, ptr %18, align 8, !dbg !1210
  %189 = load i32, ptr %13, align 4, !dbg !1211
  %190 = sub nsw i32 %189, 1, !dbg !1212
  %191 = sext i32 %190 to i64, !dbg !1210
  %192 = getelementptr inbounds ptr, ptr %188, i64 %191, !dbg !1210
  %193 = load ptr, ptr %192, align 8, !dbg !1210
  store ptr %193, ptr %20, align 8, !dbg !1213
  %194 = load ptr, ptr %19, align 8, !dbg !1214
  %195 = load i32, ptr %7, align 4, !dbg !1215
  %196 = zext i32 %195 to i64, !dbg !1215
  %197 = mul i64 %196, 128, !dbg !1216
  call void @jzero_far(ptr noundef %194, i64 noundef %197), !dbg !1217
  store i32 0, ptr %9, align 4, !dbg !1218
  br label %198, !dbg !1220

198:                                              ; preds = %233, %182
  %199 = load i32, ptr %9, align 4, !dbg !1221
  %200 = load i32, ptr %8, align 4, !dbg !1223
  %201 = icmp ult i32 %199, %200, !dbg !1224
  br i1 %201, label %202, label %236, !dbg !1225

202:                                              ; preds = %198
  %203 = load ptr, ptr %20, align 8, !dbg !1226
  %204 = load i32, ptr %12, align 4, !dbg !1228
  %205 = sub nsw i32 %204, 1, !dbg !1229
  %206 = sext i32 %205 to i64, !dbg !1226
  %207 = getelementptr inbounds [64 x i16], ptr %203, i64 %206, !dbg !1226
  %208 = getelementptr inbounds [64 x i16], ptr %207, i64 0, i64 0, !dbg !1226
  %209 = load i16, ptr %208, align 2, !dbg !1226
  store i16 %209, ptr %16, align 2, !dbg !1230
  store i32 0, ptr %10, align 4, !dbg !1231
  br label %210, !dbg !1233

210:                                              ; preds = %221, %202
  %211 = load i32, ptr %10, align 4, !dbg !1234
  %212 = load i32, ptr %12, align 4, !dbg !1236
  %213 = icmp slt i32 %211, %212, !dbg !1237
  br i1 %213, label %214, label %224, !dbg !1238

214:                                              ; preds = %210
  %215 = load i16, ptr %16, align 2, !dbg !1239
  %216 = load ptr, ptr %19, align 8, !dbg !1241
  %217 = load i32, ptr %10, align 4, !dbg !1242
  %218 = sext i32 %217 to i64, !dbg !1241
  %219 = getelementptr inbounds [64 x i16], ptr %216, i64 %218, !dbg !1241
  %220 = getelementptr inbounds [64 x i16], ptr %219, i64 0, i64 0, !dbg !1241
  store i16 %215, ptr %220, align 2, !dbg !1243
  br label %221, !dbg !1244

221:                                              ; preds = %214
  %222 = load i32, ptr %10, align 4, !dbg !1245
  %223 = add nsw i32 %222, 1, !dbg !1245
  store i32 %223, ptr %10, align 4, !dbg !1245
  br label %210, !dbg !1246, !llvm.loop !1247

224:                                              ; preds = %210
  %225 = load i32, ptr %12, align 4, !dbg !1249
  %226 = load ptr, ptr %19, align 8, !dbg !1250
  %227 = sext i32 %225 to i64, !dbg !1250
  %228 = getelementptr inbounds [64 x i16], ptr %226, i64 %227, !dbg !1250
  store ptr %228, ptr %19, align 8, !dbg !1250
  %229 = load i32, ptr %12, align 4, !dbg !1251
  %230 = load ptr, ptr %20, align 8, !dbg !1252
  %231 = sext i32 %229 to i64, !dbg !1252
  %232 = getelementptr inbounds [64 x i16], ptr %230, i64 %231, !dbg !1252
  store ptr %232, ptr %20, align 8, !dbg !1252
  br label %233, !dbg !1253

233:                                              ; preds = %224
  %234 = load i32, ptr %9, align 4, !dbg !1254
  %235 = add i32 %234, 1, !dbg !1254
  store i32 %235, ptr %9, align 4, !dbg !1254
  br label %198, !dbg !1255, !llvm.loop !1256

236:                                              ; preds = %198
  br label %237, !dbg !1258

237:                                              ; preds = %236
  %238 = load i32, ptr %13, align 4, !dbg !1259
  %239 = add nsw i32 %238, 1, !dbg !1259
  store i32 %239, ptr %13, align 4, !dbg !1259
  br label %176, !dbg !1260, !llvm.loop !1261

240:                                              ; preds = %176
  br label %241, !dbg !1263

241:                                              ; preds = %240, %162
  br label %242, !dbg !1264

242:                                              ; preds = %241
  %243 = load i32, ptr %11, align 4, !dbg !1265
  %244 = add nsw i32 %243, 1, !dbg !1265
  store i32 %244, ptr %11, align 4, !dbg !1265
  %245 = load ptr, ptr %17, align 8, !dbg !1266
  %246 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %245, i32 1, !dbg !1266
  store ptr %246, ptr %17, align 8, !dbg !1266
  br label %31, !dbg !1267, !llvm.loop !1268

247:                                              ; preds = %31
  %248 = load ptr, ptr %3, align 8, !dbg !1270
  %249 = load ptr, ptr %4, align 8, !dbg !1271
  %250 = call i32 @compress_output(ptr noundef %248, ptr noundef %249), !dbg !1272
  ret i32 %250, !dbg !1273
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @compress_output(ptr noundef %0, ptr noundef %1) #0 !dbg !1274 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [4 x ptr], align 16
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
    #dbg_declare(ptr %4, !1275, !DIExpression(), !1276)
  store ptr %1, ptr %5, align 8
    #dbg_declare(ptr %5, !1277, !DIExpression(), !1278)
    #dbg_declare(ptr %6, !1279, !DIExpression(), !1280)
  %17 = load ptr, ptr %4, align 8, !dbg !1281
  %18 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %17, i32 0, i32 54, !dbg !1282
  %19 = load ptr, ptr %18, align 8, !dbg !1282
  store ptr %19, ptr %6, align 8, !dbg !1280
    #dbg_declare(ptr %7, !1283, !DIExpression(), !1284)
    #dbg_declare(ptr %8, !1285, !DIExpression(), !1286)
    #dbg_declare(ptr %9, !1287, !DIExpression(), !1288)
    #dbg_declare(ptr %10, !1289, !DIExpression(), !1290)
    #dbg_declare(ptr %11, !1291, !DIExpression(), !1292)
    #dbg_declare(ptr %12, !1293, !DIExpression(), !1294)
    #dbg_declare(ptr %13, !1295, !DIExpression(), !1296)
    #dbg_declare(ptr %14, !1297, !DIExpression(), !1299)
    #dbg_declare(ptr %15, !1300, !DIExpression(), !1301)
    #dbg_declare(ptr %16, !1302, !DIExpression(), !1303)
  store i32 0, ptr %9, align 4, !dbg !1304
  br label %20, !dbg !1306

20:                                               ; preds = %61, %2
  %21 = load i32, ptr %9, align 4, !dbg !1307
  %22 = load ptr, ptr %4, align 8, !dbg !1309
  %23 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %22, i32 0, i32 41, !dbg !1310
  %24 = load i32, ptr %23, align 4, !dbg !1310
  %25 = icmp slt i32 %21, %24, !dbg !1311
  br i1 %25, label %26, label %64, !dbg !1312

26:                                               ; preds = %20
  %27 = load ptr, ptr %4, align 8, !dbg !1313
  %28 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %27, i32 0, i32 42, !dbg !1315
  %29 = load i32, ptr %9, align 4, !dbg !1316
  %30 = sext i32 %29 to i64, !dbg !1313
  %31 = getelementptr inbounds [4 x ptr], ptr %28, i64 0, i64 %30, !dbg !1313
  %32 = load ptr, ptr %31, align 8, !dbg !1313
  store ptr %32, ptr %16, align 8, !dbg !1317
  %33 = load ptr, ptr %4, align 8, !dbg !1318
  %34 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %33, i32 0, i32 1, !dbg !1319
  %35 = load ptr, ptr %34, align 8, !dbg !1319
  %36 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %35, i32 0, i32 8, !dbg !1320
  %37 = load ptr, ptr %36, align 8, !dbg !1320
  %38 = load ptr, ptr %4, align 8, !dbg !1321
  %39 = load ptr, ptr %6, align 8, !dbg !1322
  %40 = getelementptr inbounds nuw %struct.my_coef_controller, ptr %39, i32 0, i32 6, !dbg !1323
  %41 = load ptr, ptr %16, align 8, !dbg !1324
  %42 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %41, i32 0, i32 1, !dbg !1325
  %43 = load i32, ptr %42, align 4, !dbg !1325
  %44 = sext i32 %43 to i64, !dbg !1322
  %45 = getelementptr inbounds [10 x ptr], ptr %40, i64 0, i64 %44, !dbg !1322
  %46 = load ptr, ptr %45, align 8, !dbg !1322
  %47 = load ptr, ptr %6, align 8, !dbg !1326
  %48 = getelementptr inbounds nuw %struct.my_coef_controller, ptr %47, i32 0, i32 1, !dbg !1327
  %49 = load i32, ptr %48, align 8, !dbg !1327
  %50 = load ptr, ptr %16, align 8, !dbg !1328
  %51 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %50, i32 0, i32 3, !dbg !1329
  %52 = load i32, ptr %51, align 4, !dbg !1329
  %53 = mul i32 %49, %52, !dbg !1330
  %54 = load ptr, ptr %16, align 8, !dbg !1331
  %55 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %54, i32 0, i32 3, !dbg !1332
  %56 = load i32, ptr %55, align 4, !dbg !1332
  %57 = call ptr %37(ptr noundef %38, ptr noundef %46, i32 noundef %53, i32 noundef %56, i32 noundef 0), !dbg !1333
  %58 = load i32, ptr %9, align 4, !dbg !1334
  %59 = sext i32 %58 to i64, !dbg !1335
  %60 = getelementptr inbounds [4 x ptr], ptr %14, i64 0, i64 %59, !dbg !1335
  store ptr %57, ptr %60, align 8, !dbg !1336
  br label %61, !dbg !1337

61:                                               ; preds = %26
  %62 = load i32, ptr %9, align 4, !dbg !1338
  %63 = add nsw i32 %62, 1, !dbg !1338
  store i32 %63, ptr %9, align 4, !dbg !1338
  br label %20, !dbg !1339, !llvm.loop !1340

64:                                               ; preds = %20
  %65 = load ptr, ptr %6, align 8, !dbg !1342
  %66 = getelementptr inbounds nuw %struct.my_coef_controller, ptr %65, i32 0, i32 3, !dbg !1344
  %67 = load i32, ptr %66, align 8, !dbg !1344
  store i32 %67, ptr %12, align 4, !dbg !1345
  br label %68, !dbg !1346

68:                                               ; preds = %175, %64
  %69 = load i32, ptr %12, align 4, !dbg !1347
  %70 = load ptr, ptr %6, align 8, !dbg !1349
  %71 = getelementptr inbounds nuw %struct.my_coef_controller, ptr %70, i32 0, i32 4, !dbg !1350
  %72 = load i32, ptr %71, align 4, !dbg !1350
  %73 = icmp slt i32 %69, %72, !dbg !1351
  br i1 %73, label %74, label %178, !dbg !1352

74:                                               ; preds = %68
  %75 = load ptr, ptr %6, align 8, !dbg !1353
  %76 = getelementptr inbounds nuw %struct.my_coef_controller, ptr %75, i32 0, i32 2, !dbg !1356
  %77 = load i32, ptr %76, align 4, !dbg !1356
  store i32 %77, ptr %7, align 4, !dbg !1357
  br label %78, !dbg !1358

78:                                               ; preds = %169, %74
  %79 = load i32, ptr %7, align 4, !dbg !1359
  %80 = load ptr, ptr %4, align 8, !dbg !1361
  %81 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %80, i32 0, i32 43, !dbg !1362
  %82 = load i32, ptr %81, align 8, !dbg !1362
  %83 = icmp ult i32 %79, %82, !dbg !1363
  br i1 %83, label %84, label %172, !dbg !1364

84:                                               ; preds = %78
  store i32 0, ptr %8, align 4, !dbg !1365
  store i32 0, ptr %9, align 4, !dbg !1367
  br label %85, !dbg !1369

85:                                               ; preds = %146, %84
  %86 = load i32, ptr %9, align 4, !dbg !1370
  %87 = load ptr, ptr %4, align 8, !dbg !1372
  %88 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %87, i32 0, i32 41, !dbg !1373
  %89 = load i32, ptr %88, align 4, !dbg !1373
  %90 = icmp slt i32 %86, %89, !dbg !1374
  br i1 %90, label %91, label %149, !dbg !1375

91:                                               ; preds = %85
  %92 = load ptr, ptr %4, align 8, !dbg !1376
  %93 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %92, i32 0, i32 42, !dbg !1378
  %94 = load i32, ptr %9, align 4, !dbg !1379
  %95 = sext i32 %94 to i64, !dbg !1376
  %96 = getelementptr inbounds [4 x ptr], ptr %93, i64 0, i64 %95, !dbg !1376
  %97 = load ptr, ptr %96, align 8, !dbg !1376
  store ptr %97, ptr %16, align 8, !dbg !1380
  %98 = load i32, ptr %7, align 4, !dbg !1381
  %99 = load ptr, ptr %16, align 8, !dbg !1382
  %100 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %99, i32 0, i32 13, !dbg !1383
  %101 = load i32, ptr %100, align 4, !dbg !1383
  %102 = mul i32 %98, %101, !dbg !1384
  store i32 %102, ptr %13, align 4, !dbg !1385
  store i32 0, ptr %11, align 4, !dbg !1386
  br label %103, !dbg !1388

103:                                              ; preds = %142, %91
  %104 = load i32, ptr %11, align 4, !dbg !1389
  %105 = load ptr, ptr %16, align 8, !dbg !1391
  %106 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %105, i32 0, i32 14, !dbg !1392
  %107 = load i32, ptr %106, align 8, !dbg !1392
  %108 = icmp slt i32 %104, %107, !dbg !1393
  br i1 %108, label %109, label %145, !dbg !1394

109:                                              ; preds = %103
  %110 = load i32, ptr %9, align 4, !dbg !1395
  %111 = sext i32 %110 to i64, !dbg !1397
  %112 = getelementptr inbounds [4 x ptr], ptr %14, i64 0, i64 %111, !dbg !1397
  %113 = load ptr, ptr %112, align 8, !dbg !1397
  %114 = load i32, ptr %11, align 4, !dbg !1398
  %115 = load i32, ptr %12, align 4, !dbg !1399
  %116 = add nsw i32 %114, %115, !dbg !1400
  %117 = sext i32 %116 to i64, !dbg !1397
  %118 = getelementptr inbounds ptr, ptr %113, i64 %117, !dbg !1397
  %119 = load ptr, ptr %118, align 8, !dbg !1397
  %120 = load i32, ptr %13, align 4, !dbg !1401
  %121 = zext i32 %120 to i64, !dbg !1402
  %122 = getelementptr inbounds nuw [64 x i16], ptr %119, i64 %121, !dbg !1402
  store ptr %122, ptr %15, align 8, !dbg !1403
  store i32 0, ptr %10, align 4, !dbg !1404
  br label %123, !dbg !1406

123:                                              ; preds = %138, %109
  %124 = load i32, ptr %10, align 4, !dbg !1407
  %125 = load ptr, ptr %16, align 8, !dbg !1409
  %126 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %125, i32 0, i32 13, !dbg !1410
  %127 = load i32, ptr %126, align 4, !dbg !1410
  %128 = icmp slt i32 %124, %127, !dbg !1411
  br i1 %128, label %129, label %141, !dbg !1412

129:                                              ; preds = %123
  %130 = load ptr, ptr %15, align 8, !dbg !1413
  %131 = getelementptr inbounds nuw [64 x i16], ptr %130, i32 1, !dbg !1413
  store ptr %131, ptr %15, align 8, !dbg !1413
  %132 = load ptr, ptr %6, align 8, !dbg !1415
  %133 = getelementptr inbounds nuw %struct.my_coef_controller, ptr %132, i32 0, i32 5, !dbg !1416
  %134 = load i32, ptr %8, align 4, !dbg !1417
  %135 = add nsw i32 %134, 1, !dbg !1417
  store i32 %135, ptr %8, align 4, !dbg !1417
  %136 = sext i32 %134 to i64, !dbg !1415
  %137 = getelementptr inbounds [10 x ptr], ptr %133, i64 0, i64 %136, !dbg !1415
  store ptr %130, ptr %137, align 8, !dbg !1418
  br label %138, !dbg !1419

138:                                              ; preds = %129
  %139 = load i32, ptr %10, align 4, !dbg !1420
  %140 = add nsw i32 %139, 1, !dbg !1420
  store i32 %140, ptr %10, align 4, !dbg !1420
  br label %123, !dbg !1421, !llvm.loop !1422

141:                                              ; preds = %123
  br label %142, !dbg !1424

142:                                              ; preds = %141
  %143 = load i32, ptr %11, align 4, !dbg !1425
  %144 = add nsw i32 %143, 1, !dbg !1425
  store i32 %144, ptr %11, align 4, !dbg !1425
  br label %103, !dbg !1426, !llvm.loop !1427

145:                                              ; preds = %103
  br label %146, !dbg !1429

146:                                              ; preds = %145
  %147 = load i32, ptr %9, align 4, !dbg !1430
  %148 = add nsw i32 %147, 1, !dbg !1430
  store i32 %148, ptr %9, align 4, !dbg !1430
  br label %85, !dbg !1431, !llvm.loop !1432

149:                                              ; preds = %85
  %150 = load ptr, ptr %4, align 8, !dbg !1434
  %151 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %150, i32 0, i32 59, !dbg !1436
  %152 = load ptr, ptr %151, align 8, !dbg !1436
  %153 = getelementptr inbounds nuw %struct.jpeg_entropy_encoder, ptr %152, i32 0, i32 1, !dbg !1437
  %154 = load ptr, ptr %153, align 8, !dbg !1437
  %155 = load ptr, ptr %4, align 8, !dbg !1438
  %156 = load ptr, ptr %6, align 8, !dbg !1439
  %157 = getelementptr inbounds nuw %struct.my_coef_controller, ptr %156, i32 0, i32 5, !dbg !1440
  %158 = getelementptr inbounds [10 x ptr], ptr %157, i64 0, i64 0, !dbg !1439
  %159 = call i32 %154(ptr noundef %155, ptr noundef %158), !dbg !1441
  %160 = icmp ne i32 %159, 0, !dbg !1441
  br i1 %160, label %168, label %161, !dbg !1442

161:                                              ; preds = %149
  %162 = load i32, ptr %12, align 4, !dbg !1443
  %163 = load ptr, ptr %6, align 8, !dbg !1445
  %164 = getelementptr inbounds nuw %struct.my_coef_controller, ptr %163, i32 0, i32 3, !dbg !1446
  store i32 %162, ptr %164, align 8, !dbg !1447
  %165 = load i32, ptr %7, align 4, !dbg !1448
  %166 = load ptr, ptr %6, align 8, !dbg !1449
  %167 = getelementptr inbounds nuw %struct.my_coef_controller, ptr %166, i32 0, i32 2, !dbg !1450
  store i32 %165, ptr %167, align 4, !dbg !1451
  store i32 0, ptr %3, align 4, !dbg !1452
  br label %184, !dbg !1452

168:                                              ; preds = %149
  br label %169, !dbg !1453

169:                                              ; preds = %168
  %170 = load i32, ptr %7, align 4, !dbg !1454
  %171 = add i32 %170, 1, !dbg !1454
  store i32 %171, ptr %7, align 4, !dbg !1454
  br label %78, !dbg !1455, !llvm.loop !1456

172:                                              ; preds = %78
  %173 = load ptr, ptr %6, align 8, !dbg !1458
  %174 = getelementptr inbounds nuw %struct.my_coef_controller, ptr %173, i32 0, i32 2, !dbg !1459
  store i32 0, ptr %174, align 4, !dbg !1460
  br label %175, !dbg !1461

175:                                              ; preds = %172
  %176 = load i32, ptr %12, align 4, !dbg !1462
  %177 = add nsw i32 %176, 1, !dbg !1462
  store i32 %177, ptr %12, align 4, !dbg !1462
  br label %68, !dbg !1463, !llvm.loop !1464

178:                                              ; preds = %68
  %179 = load ptr, ptr %6, align 8, !dbg !1466
  %180 = getelementptr inbounds nuw %struct.my_coef_controller, ptr %179, i32 0, i32 1, !dbg !1467
  %181 = load i32, ptr %180, align 8, !dbg !1468
  %182 = add i32 %181, 1, !dbg !1468
  store i32 %182, ptr %180, align 8, !dbg !1468
  %183 = load ptr, ptr %4, align 8, !dbg !1469
  call void @start_iMCU_row(ptr noundef %183), !dbg !1470
  store i32 1, ptr %3, align 4, !dbg !1471
  br label %184, !dbg !1471

184:                                              ; preds = %178, %161
  %185 = load i32, ptr %3, align 4, !dbg !1472
  ret i32 %185, !dbg !1472
}

declare void @jzero_far(ptr noundef, i64 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!534, !535, !536, !537, !538, !539, !540}
!llvm.ident = !{!541}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !149, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jccoefct.c", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "2c5c452840543bd916576bfed962ca75")
!2 = !{!3, !13, !18, !25}
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
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !26, line: 33, baseType: !5, size: 32, elements: !27)
!26 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jerror.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "a232f2460ff0049c960896e323d8710b")
!27 = !{!28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148}
!28 = !DIEnumerator(name: "JMSG_NOMESSAGE", value: 0)
!29 = !DIEnumerator(name: "JERR_ARITH_NOTIMPL", value: 1)
!30 = !DIEnumerator(name: "JERR_BAD_ALIGN_TYPE", value: 2)
!31 = !DIEnumerator(name: "JERR_BAD_ALLOC_CHUNK", value: 3)
!32 = !DIEnumerator(name: "JERR_BAD_BUFFER_MODE", value: 4)
!33 = !DIEnumerator(name: "JERR_BAD_COMPONENT_ID", value: 5)
!34 = !DIEnumerator(name: "JERR_BAD_DCTSIZE", value: 6)
!35 = !DIEnumerator(name: "JERR_BAD_IN_COLORSPACE", value: 7)
!36 = !DIEnumerator(name: "JERR_BAD_J_COLORSPACE", value: 8)
!37 = !DIEnumerator(name: "JERR_BAD_LENGTH", value: 9)
!38 = !DIEnumerator(name: "JERR_BAD_LIB_VERSION", value: 10)
!39 = !DIEnumerator(name: "JERR_BAD_MCU_SIZE", value: 11)
!40 = !DIEnumerator(name: "JERR_BAD_POOL_ID", value: 12)
!41 = !DIEnumerator(name: "JERR_BAD_PRECISION", value: 13)
!42 = !DIEnumerator(name: "JERR_BAD_PROGRESSION", value: 14)
!43 = !DIEnumerator(name: "JERR_BAD_PROG_SCRIPT", value: 15)
!44 = !DIEnumerator(name: "JERR_BAD_SAMPLING", value: 16)
!45 = !DIEnumerator(name: "JERR_BAD_SCAN_SCRIPT", value: 17)
!46 = !DIEnumerator(name: "JERR_BAD_STATE", value: 18)
!47 = !DIEnumerator(name: "JERR_BAD_STRUCT_SIZE", value: 19)
!48 = !DIEnumerator(name: "JERR_BAD_VIRTUAL_ACCESS", value: 20)
!49 = !DIEnumerator(name: "JERR_BUFFER_SIZE", value: 21)
!50 = !DIEnumerator(name: "JERR_CANT_SUSPEND", value: 22)
!51 = !DIEnumerator(name: "JERR_CCIR601_NOTIMPL", value: 23)
!52 = !DIEnumerator(name: "JERR_COMPONENT_COUNT", value: 24)
!53 = !DIEnumerator(name: "JERR_CONVERSION_NOTIMPL", value: 25)
!54 = !DIEnumerator(name: "JERR_DAC_INDEX", value: 26)
!55 = !DIEnumerator(name: "JERR_DAC_VALUE", value: 27)
!56 = !DIEnumerator(name: "JERR_DHT_COUNTS", value: 28)
!57 = !DIEnumerator(name: "JERR_DHT_INDEX", value: 29)
!58 = !DIEnumerator(name: "JERR_DQT_INDEX", value: 30)
!59 = !DIEnumerator(name: "JERR_EMPTY_IMAGE", value: 31)
!60 = !DIEnumerator(name: "JERR_EMS_READ", value: 32)
!61 = !DIEnumerator(name: "JERR_EMS_WRITE", value: 33)
!62 = !DIEnumerator(name: "JERR_EOI_EXPECTED", value: 34)
!63 = !DIEnumerator(name: "JERR_FILE_READ", value: 35)
!64 = !DIEnumerator(name: "JERR_FILE_WRITE", value: 36)
!65 = !DIEnumerator(name: "JERR_FRACT_SAMPLE_NOTIMPL", value: 37)
!66 = !DIEnumerator(name: "JERR_HUFF_CLEN_OVERFLOW", value: 38)
!67 = !DIEnumerator(name: "JERR_HUFF_MISSING_CODE", value: 39)
!68 = !DIEnumerator(name: "JERR_IMAGE_TOO_BIG", value: 40)
!69 = !DIEnumerator(name: "JERR_INPUT_EMPTY", value: 41)
!70 = !DIEnumerator(name: "JERR_INPUT_EOF", value: 42)
!71 = !DIEnumerator(name: "JERR_MISMATCHED_QUANT_TABLE", value: 43)
!72 = !DIEnumerator(name: "JERR_MISSING_DATA", value: 44)
!73 = !DIEnumerator(name: "JERR_MODE_CHANGE", value: 45)
!74 = !DIEnumerator(name: "JERR_NOTIMPL", value: 46)
!75 = !DIEnumerator(name: "JERR_NOT_COMPILED", value: 47)
!76 = !DIEnumerator(name: "JERR_NO_BACKING_STORE", value: 48)
!77 = !DIEnumerator(name: "JERR_NO_HUFF_TABLE", value: 49)
!78 = !DIEnumerator(name: "JERR_NO_IMAGE", value: 50)
!79 = !DIEnumerator(name: "JERR_NO_QUANT_TABLE", value: 51)
!80 = !DIEnumerator(name: "JERR_NO_SOI", value: 52)
!81 = !DIEnumerator(name: "JERR_OUT_OF_MEMORY", value: 53)
!82 = !DIEnumerator(name: "JERR_QUANT_COMPONENTS", value: 54)
!83 = !DIEnumerator(name: "JERR_QUANT_FEW_COLORS", value: 55)
!84 = !DIEnumerator(name: "JERR_QUANT_MANY_COLORS", value: 56)
!85 = !DIEnumerator(name: "JERR_SOF_DUPLICATE", value: 57)
!86 = !DIEnumerator(name: "JERR_SOF_NO_SOS", value: 58)
!87 = !DIEnumerator(name: "JERR_SOF_UNSUPPORTED", value: 59)
!88 = !DIEnumerator(name: "JERR_SOI_DUPLICATE", value: 60)
!89 = !DIEnumerator(name: "JERR_SOS_NO_SOF", value: 61)
!90 = !DIEnumerator(name: "JERR_TFILE_CREATE", value: 62)
!91 = !DIEnumerator(name: "JERR_TFILE_READ", value: 63)
!92 = !DIEnumerator(name: "JERR_TFILE_SEEK", value: 64)
!93 = !DIEnumerator(name: "JERR_TFILE_WRITE", value: 65)
!94 = !DIEnumerator(name: "JERR_TOO_LITTLE_DATA", value: 66)
!95 = !DIEnumerator(name: "JERR_UNKNOWN_MARKER", value: 67)
!96 = !DIEnumerator(name: "JERR_VIRTUAL_BUG", value: 68)
!97 = !DIEnumerator(name: "JERR_WIDTH_OVERFLOW", value: 69)
!98 = !DIEnumerator(name: "JERR_XMS_READ", value: 70)
!99 = !DIEnumerator(name: "JERR_XMS_WRITE", value: 71)
!100 = !DIEnumerator(name: "JMSG_COPYRIGHT", value: 72)
!101 = !DIEnumerator(name: "JMSG_VERSION", value: 73)
!102 = !DIEnumerator(name: "JTRC_16BIT_TABLES", value: 74)
!103 = !DIEnumerator(name: "JTRC_ADOBE", value: 75)
!104 = !DIEnumerator(name: "JTRC_APP0", value: 76)
!105 = !DIEnumerator(name: "JTRC_APP14", value: 77)
!106 = !DIEnumerator(name: "JTRC_DAC", value: 78)
!107 = !DIEnumerator(name: "JTRC_DHT", value: 79)
!108 = !DIEnumerator(name: "JTRC_DQT", value: 80)
!109 = !DIEnumerator(name: "JTRC_DRI", value: 81)
!110 = !DIEnumerator(name: "JTRC_EMS_CLOSE", value: 82)
!111 = !DIEnumerator(name: "JTRC_EMS_OPEN", value: 83)
!112 = !DIEnumerator(name: "JTRC_EOI", value: 84)
!113 = !DIEnumerator(name: "JTRC_HUFFBITS", value: 85)
!114 = !DIEnumerator(name: "JTRC_JFIF", value: 86)
!115 = !DIEnumerator(name: "JTRC_JFIF_BADTHUMBNAILSIZE", value: 87)
!116 = !DIEnumerator(name: "JTRC_JFIF_MINOR", value: 88)
!117 = !DIEnumerator(name: "JTRC_JFIF_THUMBNAIL", value: 89)
!118 = !DIEnumerator(name: "JTRC_MISC_MARKER", value: 90)
!119 = !DIEnumerator(name: "JTRC_PARMLESS_MARKER", value: 91)
!120 = !DIEnumerator(name: "JTRC_QUANTVALS", value: 92)
!121 = !DIEnumerator(name: "JTRC_QUANT_3_NCOLORS", value: 93)
!122 = !DIEnumerator(name: "JTRC_QUANT_NCOLORS", value: 94)
!123 = !DIEnumerator(name: "JTRC_QUANT_SELECTED", value: 95)
!124 = !DIEnumerator(name: "JTRC_RECOVERY_ACTION", value: 96)
!125 = !DIEnumerator(name: "JTRC_RST", value: 97)
!126 = !DIEnumerator(name: "JTRC_SMOOTH_NOTIMPL", value: 98)
!127 = !DIEnumerator(name: "JTRC_SOF", value: 99)
!128 = !DIEnumerator(name: "JTRC_SOF_COMPONENT", value: 100)
!129 = !DIEnumerator(name: "JTRC_SOI", value: 101)
!130 = !DIEnumerator(name: "JTRC_SOS", value: 102)
!131 = !DIEnumerator(name: "JTRC_SOS_COMPONENT", value: 103)
!132 = !DIEnumerator(name: "JTRC_SOS_PARAMS", value: 104)
!133 = !DIEnumerator(name: "JTRC_TFILE_CLOSE", value: 105)
!134 = !DIEnumerator(name: "JTRC_TFILE_OPEN", value: 106)
!135 = !DIEnumerator(name: "JTRC_UNKNOWN_IDS", value: 107)
!136 = !DIEnumerator(name: "JTRC_XMS_CLOSE", value: 108)
!137 = !DIEnumerator(name: "JTRC_XMS_OPEN", value: 109)
!138 = !DIEnumerator(name: "JWRN_ADOBE_XFORM", value: 110)
!139 = !DIEnumerator(name: "JWRN_BOGUS_PROGRESSION", value: 111)
!140 = !DIEnumerator(name: "JWRN_EXTRANEOUS_DATA", value: 112)
!141 = !DIEnumerator(name: "JWRN_HIT_MARKER", value: 113)
!142 = !DIEnumerator(name: "JWRN_HUFF_BAD_CODE", value: 114)
!143 = !DIEnumerator(name: "JWRN_JFIF_MAJOR", value: 115)
!144 = !DIEnumerator(name: "JWRN_JPEG_EOF", value: 116)
!145 = !DIEnumerator(name: "JWRN_MUST_RESYNC", value: 117)
!146 = !DIEnumerator(name: "JWRN_NOT_SEQUENTIAL", value: 118)
!147 = !DIEnumerator(name: "JWRN_TOO_MUCH_DATA", value: 119)
!148 = !DIEnumerator(name: "JMSG_LASTMSGCODE", value: 120)
!149 = !{!150, !174, !189, !464, !204, !249, !211, !187, !188}
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "my_coef_ptr", file: !1, line: 57, baseType: !151)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "my_coef_controller", file: !1, line: 55, baseType: !153)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 34, size: 1536, elements: !154)
!154 = !{!155, !526, !527, !528, !529, !530, !532}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "pub", scope: !153, file: !1, line: 35, baseType: !156, size: 128)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_c_coef_controller", file: !19, line: 76, size: 128, elements: !157)
!157 = !{!158, !522}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !156, file: !19, line: 77, baseType: !159, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = !DISubroutineType(types: !161)
!161 = !{null, !162, !521}
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "j_compress_ptr", file: !4, line: 249, baseType: !163)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_compress_struct", file: !4, line: 255, size: 3968, elements: !165)
!165 = !{!166, !293, !294, !295, !296, !297, !314, !315, !316, !317, !319, !321, !322, !323, !324, !359, !363, !379, !380, !384, !385, !386, !387, !400, !401, !402, !403, !404, !405, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !422, !423, !424, !425, !429, !430, !431, !432, !433, !442, !452, !463, !465, !480, !489, !499, !508}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !164, file: !4, line: 256, baseType: !167, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_error_mgr", file: !4, line: 618, size: 1344, elements: !169)
!169 = !{!170, !261, !262, !263, !269, !270, !271, !282, !283, !284, !289, !290, !291, !292}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "error_exit", scope: !168, file: !4, line: 620, baseType: !171, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = !DISubroutineType(types: !173)
!173 = !{null, !174}
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "j_common_ptr", file: !4, line: 248, baseType: !175)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_common_struct", file: !4, line: 240, size: 256, elements: !177)
!177 = !{!178, !179, !250, !259, !260}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !176, file: !4, line: 241, baseType: !167, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !176, file: !4, line: 241, baseType: !180, size: 64, offset: 64)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_memory_mgr", file: !4, line: 731, size: 768, elements: !182)
!182 = !{!183, !192, !193, !205, !219, !227, !234, !235, !239, !243, !247, !248}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_small", scope: !181, file: !4, line: 733, baseType: !184, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = !DISubroutineType(types: !186)
!186 = !{!187, !174, !188, !189}
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!188 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !190, line: 18, baseType: !191)
!190 = !DIFile(filename: "/usr/local/lib/clang/20/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!191 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_large", scope: !181, file: !4, line: 735, baseType: !184, size: 64, offset: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_sarray", scope: !181, file: !4, line: 737, baseType: !194, size: 64, offset: 128)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = !DISubroutineType(types: !196)
!196 = !{!197, !174, !188, !204, !204}
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPARRAY", file: !4, line: 67, baseType: !198)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPROW", file: !4, line: 66, baseType: !200)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPLE", file: !202, line: 59, baseType: !203)
!202 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jmorecfg.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "56a0eda58fafa6bdd5498f702a998c09")
!203 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "JDIMENSION", file: !202, line: 171, baseType: !5)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_barray", scope: !181, file: !4, line: 740, baseType: !206, size: 64, offset: 192)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = !DISubroutineType(types: !208)
!208 = !{!209, !174, !188, !204, !204}
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "JBLOCKARRAY", file: !4, line: 72, baseType: !210)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "JBLOCKROW", file: !4, line: 71, baseType: !212)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "JBLOCK", file: !4, line: 70, baseType: !214)
!214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 1024, elements: !217)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "JCOEF", file: !202, line: 99, baseType: !216)
!216 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!217 = !{!218}
!218 = !DISubrange(count: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "request_virt_sarray", scope: !181, file: !4, line: 743, baseType: !220, size: 64, offset: 256)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = !DISubroutineType(types: !222)
!222 = !{!223, !174, !188, !226, !204, !204, !204}
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "jvirt_sarray_ptr", file: !4, line: 727, baseType: !224)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = !DICompositeType(tag: DW_TAG_structure_type, name: "jvirt_sarray_control", file: !4, line: 727, flags: DIFlagFwdDecl)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "boolean", file: !202, line: 227, baseType: !188)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "request_virt_barray", scope: !181, file: !4, line: 749, baseType: !228, size: 64, offset: 320)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = !DISubroutineType(types: !230)
!230 = !{!231, !174, !188, !226, !204, !204, !204}
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "jvirt_barray_ptr", file: !4, line: 728, baseType: !232)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = !DICompositeType(tag: DW_TAG_structure_type, name: "jvirt_barray_control", file: !4, line: 728, flags: DIFlagFwdDecl)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "realize_virt_arrays", scope: !181, file: !4, line: 755, baseType: !171, size: 64, offset: 384)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "access_virt_sarray", scope: !181, file: !4, line: 756, baseType: !236, size: 64, offset: 448)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = !DISubroutineType(types: !238)
!238 = !{!197, !174, !223, !204, !204, !226}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "access_virt_barray", scope: !181, file: !4, line: 761, baseType: !240, size: 64, offset: 512)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = !DISubroutineType(types: !242)
!242 = !{!209, !174, !231, !204, !204, !226}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "free_pool", scope: !181, file: !4, line: 766, baseType: !244, size: 64, offset: 576)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = !DISubroutineType(types: !246)
!246 = !{null, !174, !188}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "self_destruct", scope: !181, file: !4, line: 767, baseType: !171, size: 64, offset: 640)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "max_memory_to_use", scope: !181, file: !4, line: 774, baseType: !249, size: 64, offset: 704)
!249 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "progress", scope: !176, file: !4, line: 241, baseType: !251, size: 64, offset: 128)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_progress_mgr", file: !4, line: 676, size: 256, elements: !253)
!253 = !{!254, !255, !256, !257, !258}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "progress_monitor", scope: !252, file: !4, line: 677, baseType: !171, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "pass_counter", scope: !252, file: !4, line: 679, baseType: !249, size: 64, offset: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "pass_limit", scope: !252, file: !4, line: 680, baseType: !249, size: 64, offset: 128)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "completed_passes", scope: !252, file: !4, line: 681, baseType: !188, size: 32, offset: 192)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "total_passes", scope: !252, file: !4, line: 682, baseType: !188, size: 32, offset: 224)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "is_decompressor", scope: !176, file: !4, line: 241, baseType: !226, size: 32, offset: 192)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "global_state", scope: !176, file: !4, line: 241, baseType: !188, size: 32, offset: 224)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "emit_message", scope: !168, file: !4, line: 622, baseType: !244, size: 64, offset: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "output_message", scope: !168, file: !4, line: 624, baseType: !171, size: 64, offset: 128)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "format_message", scope: !168, file: !4, line: 626, baseType: !264, size: 64, offset: 192)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DISubroutineType(types: !266)
!266 = !{null, !174, !267}
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "reset_error_mgr", scope: !168, file: !4, line: 629, baseType: !171, size: 64, offset: 256)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "msg_code", scope: !168, file: !4, line: 634, baseType: !188, size: 32, offset: 320)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "msg_parm", scope: !168, file: !4, line: 639, baseType: !272, size: 640, offset: 352)
!272 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !168, file: !4, line: 636, size: 640, elements: !273)
!273 = !{!274, !278}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !272, file: !4, line: 637, baseType: !275, size: 256)
!275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 256, elements: !276)
!276 = !{!277}
!277 = !DISubrange(count: 8)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !272, file: !4, line: 638, baseType: !279, size: 640)
!279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !268, size: 640, elements: !280)
!280 = !{!281}
!281 = !DISubrange(count: 80)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "trace_level", scope: !168, file: !4, line: 643, baseType: !188, size: 32, offset: 992)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "num_warnings", scope: !168, file: !4, line: 651, baseType: !249, size: 64, offset: 1024)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "jpeg_message_table", scope: !168, file: !4, line: 663, baseType: !285, size: 64, offset: 1088)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !287)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !268)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "last_jpeg_message", scope: !168, file: !4, line: 664, baseType: !188, size: 32, offset: 1152)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "addon_message_table", scope: !168, file: !4, line: 668, baseType: !285, size: 64, offset: 1216)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "first_addon_message", scope: !168, file: !4, line: 669, baseType: !188, size: 32, offset: 1280)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "last_addon_message", scope: !168, file: !4, line: 670, baseType: !188, size: 32, offset: 1312)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !164, file: !4, line: 256, baseType: !180, size: 64, offset: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "progress", scope: !164, file: !4, line: 256, baseType: !251, size: 64, offset: 128)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "is_decompressor", scope: !164, file: !4, line: 256, baseType: !226, size: 32, offset: 192)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "global_state", scope: !164, file: !4, line: 256, baseType: !188, size: 32, offset: 224)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !164, file: !4, line: 259, baseType: !298, size: 64, offset: 256)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_destination_mgr", file: !4, line: 688, size: 320, elements: !300)
!300 = !{!301, !304, !305, !309, !313}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "next_output_byte", scope: !299, file: !4, line: 689, baseType: !302, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "JOCTET", file: !202, line: 110, baseType: !203)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "free_in_buffer", scope: !299, file: !4, line: 690, baseType: !189, size: 64, offset: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "init_destination", scope: !299, file: !4, line: 692, baseType: !306, size: 64, offset: 128)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = !DISubroutineType(types: !308)
!308 = !{null, !162}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "empty_output_buffer", scope: !299, file: !4, line: 693, baseType: !310, size: 64, offset: 192)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = !DISubroutineType(types: !312)
!312 = !{!226, !162}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "term_destination", scope: !299, file: !4, line: 694, baseType: !306, size: 64, offset: 256)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "image_width", scope: !164, file: !4, line: 266, baseType: !204, size: 32, offset: 320)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "image_height", scope: !164, file: !4, line: 267, baseType: !204, size: 32, offset: 352)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "input_components", scope: !164, file: !4, line: 268, baseType: !188, size: 32, offset: 384)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "in_color_space", scope: !164, file: !4, line: 269, baseType: !318, size: 32, offset: 416)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_COLOR_SPACE", file: !4, line: 201, baseType: !3)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "input_gamma", scope: !164, file: !4, line: 271, baseType: !320, size: 64, offset: 448)
!320 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "data_precision", scope: !164, file: !4, line: 281, baseType: !188, size: 32, offset: 512)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "num_components", scope: !164, file: !4, line: 283, baseType: !188, size: 32, offset: 544)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "jpeg_color_space", scope: !164, file: !4, line: 284, baseType: !318, size: 32, offset: 576)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "comp_info", scope: !164, file: !4, line: 286, baseType: !325, size: 64, offset: 640)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "jpeg_component_info", file: !4, line: 179, baseType: !327)
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 116, size: 768, elements: !328)
!328 = !{!329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !358}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "component_id", scope: !327, file: !4, line: 120, baseType: !188, size: 32)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "component_index", scope: !327, file: !4, line: 121, baseType: !188, size: 32, offset: 32)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "h_samp_factor", scope: !327, file: !4, line: 122, baseType: !188, size: 32, offset: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "v_samp_factor", scope: !327, file: !4, line: 123, baseType: !188, size: 32, offset: 96)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "quant_tbl_no", scope: !327, file: !4, line: 124, baseType: !188, size: 32, offset: 128)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "dc_tbl_no", scope: !327, file: !4, line: 129, baseType: !188, size: 32, offset: 160)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tbl_no", scope: !327, file: !4, line: 130, baseType: !188, size: 32, offset: 192)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "width_in_blocks", scope: !327, file: !4, line: 139, baseType: !204, size: 32, offset: 224)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "height_in_blocks", scope: !327, file: !4, line: 140, baseType: !204, size: 32, offset: 256)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "DCT_scaled_size", scope: !327, file: !4, line: 147, baseType: !188, size: 32, offset: 288)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "downsampled_width", scope: !327, file: !4, line: 154, baseType: !204, size: 32, offset: 320)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "downsampled_height", scope: !327, file: !4, line: 155, baseType: !204, size: 32, offset: 352)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "component_needed", scope: !327, file: !4, line: 160, baseType: !226, size: 32, offset: 384)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_width", scope: !327, file: !4, line: 164, baseType: !188, size: 32, offset: 416)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_height", scope: !327, file: !4, line: 165, baseType: !188, size: 32, offset: 448)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_blocks", scope: !327, file: !4, line: 166, baseType: !188, size: 32, offset: 480)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_sample_width", scope: !327, file: !4, line: 167, baseType: !188, size: 32, offset: 512)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "last_col_width", scope: !327, file: !4, line: 168, baseType: !188, size: 32, offset: 544)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "last_row_height", scope: !327, file: !4, line: 169, baseType: !188, size: 32, offset: 576)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "quant_table", scope: !327, file: !4, line: 175, baseType: !349, size: 64, offset: 640)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "JQUANT_TBL", file: !4, line: 95, baseType: !351)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 83, size: 1056, elements: !352)
!352 = !{!353, !357}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "quantval", scope: !351, file: !4, line: 88, baseType: !354, size: 1024)
!354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !355, size: 1024, elements: !217)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT16", file: !202, line: 147, baseType: !356)
!356 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "sent_table", scope: !351, file: !4, line: 94, baseType: !226, size: 32, offset: 1024)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "dct_table", scope: !327, file: !4, line: 178, baseType: !187, size: 64, offset: 704)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "quant_tbl_ptrs", scope: !164, file: !4, line: 289, baseType: !360, size: 256, offset: 704)
!360 = !DICompositeType(tag: DW_TAG_array_type, baseType: !349, size: 256, elements: !361)
!361 = !{!362}
!362 = !DISubrange(count: 4)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "dc_huff_tbl_ptrs", scope: !164, file: !4, line: 292, baseType: !364, size: 256, offset: 960)
!364 = !DICompositeType(tag: DW_TAG_array_type, baseType: !365, size: 256, elements: !361)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "JHUFF_TBL", file: !4, line: 111, baseType: !367)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 100, size: 2240, elements: !368)
!368 = !{!369, !374, !378}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !367, file: !4, line: 102, baseType: !370, size: 136)
!370 = !DICompositeType(tag: DW_TAG_array_type, baseType: !371, size: 136, elements: !372)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT8", file: !202, line: 135, baseType: !203)
!372 = !{!373}
!373 = !DISubrange(count: 17)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "huffval", scope: !367, file: !4, line: 104, baseType: !375, size: 2048, offset: 136)
!375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !371, size: 2048, elements: !376)
!376 = !{!377}
!377 = !DISubrange(count: 256)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "sent_table", scope: !367, file: !4, line: 110, baseType: !226, size: 32, offset: 2208)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "ac_huff_tbl_ptrs", scope: !164, file: !4, line: 293, baseType: !364, size: 256, offset: 1216)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "arith_dc_L", scope: !164, file: !4, line: 296, baseType: !381, size: 128, offset: 1472)
!381 = !DICompositeType(tag: DW_TAG_array_type, baseType: !371, size: 128, elements: !382)
!382 = !{!383}
!383 = !DISubrange(count: 16)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "arith_dc_U", scope: !164, file: !4, line: 297, baseType: !381, size: 128, offset: 1600)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "arith_ac_K", scope: !164, file: !4, line: 298, baseType: !381, size: 128, offset: 1728)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "num_scans", scope: !164, file: !4, line: 300, baseType: !188, size: 32, offset: 1856)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "scan_info", scope: !164, file: !4, line: 301, baseType: !388, size: 64, offset: 1920)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !390)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "jpeg_scan_info", file: !4, line: 189, baseType: !391)
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 184, size: 288, elements: !392)
!392 = !{!393, !394, !396, !397, !398, !399}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "comps_in_scan", scope: !391, file: !4, line: 185, baseType: !188, size: 32)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "component_index", scope: !391, file: !4, line: 186, baseType: !395, size: 128, offset: 32)
!395 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 128, elements: !361)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "Ss", scope: !391, file: !4, line: 187, baseType: !188, size: 32, offset: 160)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "Se", scope: !391, file: !4, line: 187, baseType: !188, size: 32, offset: 192)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "Ah", scope: !391, file: !4, line: 188, baseType: !188, size: 32, offset: 224)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "Al", scope: !391, file: !4, line: 188, baseType: !188, size: 32, offset: 256)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "raw_data_in", scope: !164, file: !4, line: 307, baseType: !226, size: 32, offset: 1984)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "arith_code", scope: !164, file: !4, line: 308, baseType: !226, size: 32, offset: 2016)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_coding", scope: !164, file: !4, line: 309, baseType: !226, size: 32, offset: 2048)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "CCIR601_sampling", scope: !164, file: !4, line: 310, baseType: !226, size: 32, offset: 2080)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "smoothing_factor", scope: !164, file: !4, line: 311, baseType: !188, size: 32, offset: 2112)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "dct_method", scope: !164, file: !4, line: 312, baseType: !406, size: 32, offset: 2144)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_DCT_METHOD", file: !4, line: 209, baseType: !13)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "restart_interval", scope: !164, file: !4, line: 319, baseType: !5, size: 32, offset: 2176)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "restart_in_rows", scope: !164, file: !4, line: 320, baseType: !188, size: 32, offset: 2208)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "write_JFIF_header", scope: !164, file: !4, line: 324, baseType: !226, size: 32, offset: 2240)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "density_unit", scope: !164, file: !4, line: 329, baseType: !371, size: 8, offset: 2272)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "X_density", scope: !164, file: !4, line: 330, baseType: !355, size: 16, offset: 2288)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "Y_density", scope: !164, file: !4, line: 331, baseType: !355, size: 16, offset: 2304)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "write_Adobe_marker", scope: !164, file: !4, line: 332, baseType: !226, size: 32, offset: 2336)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "next_scanline", scope: !164, file: !4, line: 339, baseType: !204, size: 32, offset: 2368)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "progressive_mode", scope: !164, file: !4, line: 348, baseType: !226, size: 32, offset: 2400)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "max_h_samp_factor", scope: !164, file: !4, line: 349, baseType: !188, size: 32, offset: 2432)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "max_v_samp_factor", scope: !164, file: !4, line: 350, baseType: !188, size: 32, offset: 2464)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "total_iMCU_rows", scope: !164, file: !4, line: 352, baseType: !204, size: 32, offset: 2496)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "comps_in_scan", scope: !164, file: !4, line: 363, baseType: !188, size: 32, offset: 2528)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "cur_comp_info", scope: !164, file: !4, line: 364, baseType: !421, size: 256, offset: 2560)
!421 = !DICompositeType(tag: DW_TAG_array_type, baseType: !325, size: 256, elements: !361)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "MCUs_per_row", scope: !164, file: !4, line: 367, baseType: !204, size: 32, offset: 2816)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_rows_in_scan", scope: !164, file: !4, line: 368, baseType: !204, size: 32, offset: 2848)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "blocks_in_MCU", scope: !164, file: !4, line: 370, baseType: !188, size: 32, offset: 2880)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_membership", scope: !164, file: !4, line: 371, baseType: !426, size: 320, offset: 2912)
!426 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 320, elements: !427)
!427 = !{!428}
!428 = !DISubrange(count: 10)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "Ss", scope: !164, file: !4, line: 375, baseType: !188, size: 32, offset: 3232)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "Se", scope: !164, file: !4, line: 375, baseType: !188, size: 32, offset: 3264)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "Ah", scope: !164, file: !4, line: 375, baseType: !188, size: 32, offset: 3296)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "Al", scope: !164, file: !4, line: 375, baseType: !188, size: 32, offset: 3328)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !164, file: !4, line: 380, baseType: !434, size: 64, offset: 3392)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_comp_master", file: !19, line: 45, size: 256, elements: !436)
!436 = !{!437, !438, !439, !440, !441}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_for_pass", scope: !435, file: !19, line: 46, baseType: !306, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "pass_startup", scope: !435, file: !19, line: 47, baseType: !306, size: 64, offset: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "finish_pass", scope: !435, file: !19, line: 48, baseType: !306, size: 64, offset: 128)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "call_pass_startup", scope: !435, file: !19, line: 51, baseType: !226, size: 32, offset: 192)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "is_last_pass", scope: !435, file: !19, line: 52, baseType: !226, size: 32, offset: 224)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "main", scope: !164, file: !4, line: 381, baseType: !443, size: 64, offset: 3456)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_c_main_controller", file: !19, line: 56, size: 128, elements: !445)
!445 = !{!446, !447}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !444, file: !19, line: 57, baseType: !159, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "process_data", scope: !444, file: !19, line: 58, baseType: !448, size: 64, offset: 64)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = !DISubroutineType(types: !450)
!450 = !{null, !162, !197, !451, !204}
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "prep", scope: !164, file: !4, line: 382, baseType: !453, size: 64, offset: 3520)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_c_prep_controller", file: !19, line: 64, size: 128, elements: !455)
!455 = !{!456, !457}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !454, file: !19, line: 65, baseType: !159, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "pre_process_data", scope: !454, file: !19, line: 66, baseType: !458, size: 64, offset: 64)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = !DISubroutineType(types: !460)
!460 = !{null, !162, !197, !451, !204, !461, !451, !204}
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPIMAGE", file: !4, line: 68, baseType: !462)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "coef", scope: !164, file: !4, line: 383, baseType: !464, size: 64, offset: 3584)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "marker", scope: !164, file: !4, line: 384, baseType: !466, size: 64, offset: 3648)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_marker_writer", file: !19, line: 120, size: 384, elements: !468)
!468 = !{!469, !475, !476, !477, !478, !479}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "write_any_marker", scope: !467, file: !19, line: 123, baseType: !470, size: 64)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DISubroutineType(types: !472)
!472 = !{null, !162, !188, !473, !5}
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !303)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_header", scope: !467, file: !19, line: 125, baseType: !306, size: 64, offset: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "write_frame_header", scope: !467, file: !19, line: 126, baseType: !306, size: 64, offset: 128)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "write_scan_header", scope: !467, file: !19, line: 127, baseType: !306, size: 64, offset: 192)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_trailer", scope: !467, file: !19, line: 128, baseType: !306, size: 64, offset: 256)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "write_tables_only", scope: !467, file: !19, line: 129, baseType: !306, size: 64, offset: 320)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "cconvert", scope: !164, file: !4, line: 385, baseType: !481, size: 64, offset: 3712)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_color_converter", file: !19, line: 83, size: 128, elements: !483)
!483 = !{!484, !485}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !482, file: !19, line: 84, baseType: !306, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "color_convert", scope: !482, file: !19, line: 85, baseType: !486, size: 64, offset: 64)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = !DISubroutineType(types: !488)
!488 = !{null, !162, !197, !461, !204, !188}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "downsample", scope: !164, file: !4, line: 386, baseType: !490, size: 64, offset: 3776)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_downsampler", file: !19, line: 91, size: 192, elements: !492)
!492 = !{!493, !494, !498}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !491, file: !19, line: 92, baseType: !306, size: 64)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "downsample", scope: !491, file: !19, line: 93, baseType: !495, size: 64, offset: 64)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = !DISubroutineType(types: !497)
!497 = !{null, !162, !461, !204, !461, !204}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "need_context_rows", scope: !491, file: !19, line: 98, baseType: !226, size: 32, offset: 128)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "fdct", scope: !164, file: !4, line: 387, baseType: !500, size: 64, offset: 3840)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_forward_dct", file: !19, line: 102, size: 128, elements: !502)
!502 = !{!503, !504}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !501, file: !19, line: 103, baseType: !306, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "forward_DCT", scope: !501, file: !19, line: 105, baseType: !505, size: 64, offset: 64)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DISubroutineType(types: !507)
!507 = !{null, !162, !325, !197, !211, !204, !204, !204}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "entropy", scope: !164, file: !4, line: 388, baseType: !509, size: 64, offset: 3904)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_entropy_encoder", file: !19, line: 113, size: 192, elements: !511)
!511 = !{!512, !516, !520}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !510, file: !19, line: 114, baseType: !513, size: 64)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = !DISubroutineType(types: !515)
!515 = !{null, !162, !226}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "encode_mcu", scope: !510, file: !19, line: 115, baseType: !517, size: 64, offset: 64)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = !DISubroutineType(types: !519)
!519 = !{!226, !162, !210}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "finish_pass", scope: !510, file: !19, line: 116, baseType: !306, size: 64, offset: 128)
!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_BUF_MODE", file: !19, line: 22, baseType: !18)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "compress_data", scope: !156, file: !19, line: 78, baseType: !523, size: 64, offset: 64)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = !DISubroutineType(types: !525)
!525 = !{!226, !162, !461}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "iMCU_row_num", scope: !153, file: !1, line: 37, baseType: !204, size: 32, offset: 128)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "mcu_ctr", scope: !153, file: !1, line: 38, baseType: !204, size: 32, offset: 160)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_vert_offset", scope: !153, file: !1, line: 39, baseType: !188, size: 32, offset: 192)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_rows_per_iMCU_row", scope: !153, file: !1, line: 40, baseType: !188, size: 32, offset: 224)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_buffer", scope: !153, file: !1, line: 51, baseType: !531, size: 640, offset: 256)
!531 = !DICompositeType(tag: DW_TAG_array_type, baseType: !211, size: 640, elements: !427)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "whole_image", scope: !153, file: !1, line: 54, baseType: !533, size: 640, offset: 896)
!533 = !DICompositeType(tag: DW_TAG_array_type, baseType: !231, size: 640, elements: !427)
!534 = !{i32 7, !"Dwarf Version", i32 5}
!535 = !{i32 2, !"Debug Info Version", i32 3}
!536 = !{i32 1, !"wchar_size", i32 4}
!537 = !{i32 8, !"PIC Level", i32 2}
!538 = !{i32 7, !"PIE Level", i32 2}
!539 = !{i32 7, !"uwtable", i32 2}
!540 = !{i32 7, !"frame-pointer", i32 2}
!541 = !{!"clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)"}
!542 = distinct !DISubprogram(name: "jinit_c_coef_controller", scope: !1, file: !1, line: 404, type: !514, scopeLine: 405, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !543)
!543 = !{}
!544 = !DILocalVariable(name: "cinfo", arg: 1, scope: !542, file: !1, line: 404, type: !162)
!545 = !DILocation(line: 404, column: 41, scope: !542)
!546 = !DILocalVariable(name: "need_full_buffer", arg: 2, scope: !542, file: !1, line: 404, type: !226)
!547 = !DILocation(line: 404, column: 56, scope: !542)
!548 = !DILocalVariable(name: "coef", scope: !542, file: !1, line: 406, type: !150)
!549 = !DILocation(line: 406, column: 15, scope: !542)
!550 = !DILocation(line: 409, column: 7, scope: !542)
!551 = !DILocation(line: 409, column: 14, scope: !542)
!552 = !DILocation(line: 409, column: 19, scope: !542)
!553 = !DILocation(line: 409, column: 48, scope: !542)
!554 = !DILocation(line: 409, column: 5, scope: !542)
!555 = !DILocation(line: 408, column: 8, scope: !542)
!556 = !DILocation(line: 411, column: 51, scope: !542)
!557 = !DILocation(line: 411, column: 3, scope: !542)
!558 = !DILocation(line: 411, column: 10, scope: !542)
!559 = !DILocation(line: 411, column: 15, scope: !542)
!560 = !DILocation(line: 412, column: 3, scope: !542)
!561 = !DILocation(line: 412, column: 9, scope: !542)
!562 = !DILocation(line: 412, column: 13, scope: !542)
!563 = !DILocation(line: 412, column: 24, scope: !542)
!564 = !DILocation(line: 415, column: 7, scope: !565)
!565 = distinct !DILexicalBlock(scope: !542, file: !1, line: 415, column: 7)
!566 = !DILocalVariable(name: "ci", scope: !567, file: !1, line: 419, type: !188)
!567 = distinct !DILexicalBlock(scope: !565, file: !1, line: 415, column: 25)
!568 = !DILocation(line: 419, column: 9, scope: !567)
!569 = !DILocalVariable(name: "compptr", scope: !567, file: !1, line: 420, type: !325)
!570 = !DILocation(line: 420, column: 26, scope: !567)
!571 = !DILocation(line: 422, column: 13, scope: !572)
!572 = distinct !DILexicalBlock(scope: !567, file: !1, line: 422, column: 5)
!573 = !DILocation(line: 422, column: 28, scope: !572)
!574 = !DILocation(line: 422, column: 35, scope: !572)
!575 = !DILocation(line: 422, column: 26, scope: !572)
!576 = !DILocation(line: 422, column: 10, scope: !572)
!577 = !DILocation(line: 422, column: 46, scope: !578)
!578 = distinct !DILexicalBlock(scope: !572, file: !1, line: 422, column: 5)
!579 = !DILocation(line: 422, column: 51, scope: !578)
!580 = !DILocation(line: 422, column: 58, scope: !578)
!581 = !DILocation(line: 422, column: 49, scope: !578)
!582 = !DILocation(line: 422, column: 5, scope: !572)
!583 = !DILocation(line: 424, column: 33, scope: !584)
!584 = distinct !DILexicalBlock(scope: !578, file: !1, line: 423, column: 20)
!585 = !DILocation(line: 424, column: 40, scope: !584)
!586 = !DILocation(line: 424, column: 45, scope: !584)
!587 = !DILocation(line: 425, column: 18, scope: !584)
!588 = !DILocation(line: 426, column: 33, scope: !584)
!589 = !DILocation(line: 426, column: 42, scope: !584)
!590 = !DILocation(line: 426, column: 26, scope: !584)
!591 = !DILocation(line: 427, column: 12, scope: !584)
!592 = !DILocation(line: 427, column: 21, scope: !584)
!593 = !DILocation(line: 427, column: 5, scope: !584)
!594 = !DILocation(line: 426, column: 16, scope: !584)
!595 = !DILocation(line: 426, column: 3, scope: !584)
!596 = !DILocation(line: 428, column: 33, scope: !584)
!597 = !DILocation(line: 428, column: 42, scope: !584)
!598 = !DILocation(line: 428, column: 26, scope: !584)
!599 = !DILocation(line: 429, column: 12, scope: !584)
!600 = !DILocation(line: 429, column: 21, scope: !584)
!601 = !DILocation(line: 429, column: 5, scope: !584)
!602 = !DILocation(line: 428, column: 16, scope: !584)
!603 = !DILocation(line: 428, column: 3, scope: !584)
!604 = !DILocation(line: 430, column: 16, scope: !584)
!605 = !DILocation(line: 430, column: 25, scope: !584)
!606 = !DILocation(line: 424, column: 31, scope: !584)
!607 = !DILocation(line: 424, column: 7, scope: !584)
!608 = !DILocation(line: 424, column: 13, scope: !584)
!609 = !DILocation(line: 424, column: 25, scope: !584)
!610 = !DILocation(line: 424, column: 29, scope: !584)
!611 = !DILocation(line: 431, column: 5, scope: !584)
!612 = !DILocation(line: 423, column: 5, scope: !578)
!613 = !DILocation(line: 423, column: 16, scope: !578)
!614 = !DILocation(line: 422, column: 5, scope: !578)
!615 = distinct !{!615, !582, !616, !617}
!616 = !DILocation(line: 431, column: 5, scope: !572)
!617 = !{!"llvm.loop.mustprogress"}
!618 = !DILocation(line: 435, column: 3, scope: !567)
!619 = !DILocalVariable(name: "buffer", scope: !620, file: !1, line: 437, type: !211)
!620 = distinct !DILexicalBlock(scope: !565, file: !1, line: 435, column: 10)
!621 = !DILocation(line: 437, column: 15, scope: !620)
!622 = !DILocalVariable(name: "i", scope: !620, file: !1, line: 438, type: !188)
!623 = !DILocation(line: 438, column: 9, scope: !620)
!624 = !DILocation(line: 441, column: 9, scope: !620)
!625 = !DILocation(line: 441, column: 16, scope: !620)
!626 = !DILocation(line: 441, column: 21, scope: !620)
!627 = !DILocation(line: 441, column: 50, scope: !620)
!628 = !DILocation(line: 441, column: 7, scope: !620)
!629 = !DILocation(line: 440, column: 12, scope: !620)
!630 = !DILocation(line: 443, column: 12, scope: !631)
!631 = distinct !DILexicalBlock(scope: !620, file: !1, line: 443, column: 5)
!632 = !DILocation(line: 443, column: 10, scope: !631)
!633 = !DILocation(line: 443, column: 17, scope: !634)
!634 = distinct !DILexicalBlock(scope: !631, file: !1, line: 443, column: 5)
!635 = !DILocation(line: 443, column: 19, scope: !634)
!636 = !DILocation(line: 443, column: 5, scope: !631)
!637 = !DILocation(line: 444, column: 29, scope: !638)
!638 = distinct !DILexicalBlock(scope: !634, file: !1, line: 443, column: 47)
!639 = !DILocation(line: 444, column: 38, scope: !638)
!640 = !DILocation(line: 444, column: 36, scope: !638)
!641 = !DILocation(line: 444, column: 7, scope: !638)
!642 = !DILocation(line: 444, column: 13, scope: !638)
!643 = !DILocation(line: 444, column: 24, scope: !638)
!644 = !DILocation(line: 444, column: 27, scope: !638)
!645 = !DILocation(line: 445, column: 5, scope: !638)
!646 = !DILocation(line: 443, column: 43, scope: !634)
!647 = !DILocation(line: 443, column: 5, scope: !634)
!648 = distinct !{!648, !636, !649, !617}
!649 = !DILocation(line: 445, column: 5, scope: !631)
!650 = !DILocation(line: 446, column: 5, scope: !620)
!651 = !DILocation(line: 446, column: 11, scope: !620)
!652 = !DILocation(line: 446, column: 26, scope: !620)
!653 = !DILocation(line: 448, column: 1, scope: !542)
!654 = distinct !DISubprogram(name: "start_pass_coef", scope: !1, file: !1, line: 100, type: !160, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !543)
!655 = !DILocalVariable(name: "cinfo", arg: 1, scope: !654, file: !1, line: 100, type: !162)
!656 = !DILocation(line: 100, column: 33, scope: !654)
!657 = !DILocalVariable(name: "pass_mode", arg: 2, scope: !654, file: !1, line: 100, type: !521)
!658 = !DILocation(line: 100, column: 51, scope: !654)
!659 = !DILocalVariable(name: "coef", scope: !654, file: !1, line: 102, type: !150)
!660 = !DILocation(line: 102, column: 15, scope: !654)
!661 = !DILocation(line: 102, column: 36, scope: !654)
!662 = !DILocation(line: 102, column: 43, scope: !654)
!663 = !DILocation(line: 104, column: 3, scope: !654)
!664 = !DILocation(line: 104, column: 9, scope: !654)
!665 = !DILocation(line: 104, column: 22, scope: !654)
!666 = !DILocation(line: 105, column: 18, scope: !654)
!667 = !DILocation(line: 105, column: 3, scope: !654)
!668 = !DILocation(line: 107, column: 11, scope: !654)
!669 = !DILocation(line: 107, column: 3, scope: !654)
!670 = !DILocation(line: 109, column: 9, scope: !671)
!671 = distinct !DILexicalBlock(scope: !672, file: !1, line: 109, column: 9)
!672 = distinct !DILexicalBlock(scope: !654, file: !1, line: 107, column: 22)
!673 = !DILocation(line: 109, column: 15, scope: !671)
!674 = !DILocation(line: 109, column: 30, scope: !671)
!675 = !DILocation(line: 110, column: 7, scope: !671)
!676 = !DILocation(line: 111, column: 5, scope: !672)
!677 = !DILocation(line: 111, column: 11, scope: !672)
!678 = !DILocation(line: 111, column: 15, scope: !672)
!679 = !DILocation(line: 111, column: 29, scope: !672)
!680 = !DILocation(line: 112, column: 5, scope: !672)
!681 = !DILocation(line: 115, column: 9, scope: !682)
!682 = distinct !DILexicalBlock(scope: !672, file: !1, line: 115, column: 9)
!683 = !DILocation(line: 115, column: 15, scope: !682)
!684 = !DILocation(line: 115, column: 30, scope: !682)
!685 = !DILocation(line: 116, column: 7, scope: !682)
!686 = !DILocation(line: 117, column: 5, scope: !672)
!687 = !DILocation(line: 117, column: 11, scope: !672)
!688 = !DILocation(line: 117, column: 15, scope: !672)
!689 = !DILocation(line: 117, column: 29, scope: !672)
!690 = !DILocation(line: 118, column: 5, scope: !672)
!691 = !DILocation(line: 120, column: 9, scope: !692)
!692 = distinct !DILexicalBlock(scope: !672, file: !1, line: 120, column: 9)
!693 = !DILocation(line: 120, column: 15, scope: !692)
!694 = !DILocation(line: 120, column: 30, scope: !692)
!695 = !DILocation(line: 121, column: 7, scope: !692)
!696 = !DILocation(line: 122, column: 5, scope: !672)
!697 = !DILocation(line: 122, column: 11, scope: !672)
!698 = !DILocation(line: 122, column: 15, scope: !672)
!699 = !DILocation(line: 122, column: 29, scope: !672)
!700 = !DILocation(line: 123, column: 5, scope: !672)
!701 = !DILocation(line: 126, column: 5, scope: !672)
!702 = !DILocation(line: 127, column: 5, scope: !672)
!703 = !DILocation(line: 129, column: 1, scope: !654)
!704 = distinct !DISubprogram(name: "start_iMCU_row", scope: !1, file: !1, line: 72, type: !307, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !543)
!705 = !DILocalVariable(name: "cinfo", arg: 1, scope: !704, file: !1, line: 72, type: !162)
!706 = !DILocation(line: 72, column: 32, scope: !704)
!707 = !DILocalVariable(name: "coef", scope: !704, file: !1, line: 75, type: !150)
!708 = !DILocation(line: 75, column: 15, scope: !704)
!709 = !DILocation(line: 75, column: 36, scope: !704)
!710 = !DILocation(line: 75, column: 43, scope: !704)
!711 = !DILocation(line: 81, column: 7, scope: !712)
!712 = distinct !DILexicalBlock(scope: !704, file: !1, line: 81, column: 7)
!713 = !DILocation(line: 81, column: 14, scope: !712)
!714 = !DILocation(line: 81, column: 28, scope: !712)
!715 = !DILocation(line: 82, column: 5, scope: !716)
!716 = distinct !DILexicalBlock(scope: !712, file: !1, line: 81, column: 33)
!717 = !DILocation(line: 82, column: 11, scope: !716)
!718 = !DILocation(line: 82, column: 33, scope: !716)
!719 = !DILocation(line: 83, column: 3, scope: !716)
!720 = !DILocation(line: 84, column: 9, scope: !721)
!721 = distinct !DILexicalBlock(scope: !722, file: !1, line: 84, column: 9)
!722 = distinct !DILexicalBlock(scope: !712, file: !1, line: 83, column: 10)
!723 = !DILocation(line: 84, column: 15, scope: !721)
!724 = !DILocation(line: 84, column: 31, scope: !721)
!725 = !DILocation(line: 84, column: 38, scope: !721)
!726 = !DILocation(line: 84, column: 53, scope: !721)
!727 = !DILocation(line: 84, column: 28, scope: !721)
!728 = !DILocation(line: 85, column: 37, scope: !721)
!729 = !DILocation(line: 85, column: 44, scope: !721)
!730 = !DILocation(line: 85, column: 62, scope: !721)
!731 = !DILocation(line: 85, column: 7, scope: !721)
!732 = !DILocation(line: 85, column: 13, scope: !721)
!733 = !DILocation(line: 85, column: 35, scope: !721)
!734 = !DILocation(line: 87, column: 37, scope: !721)
!735 = !DILocation(line: 87, column: 44, scope: !721)
!736 = !DILocation(line: 87, column: 62, scope: !721)
!737 = !DILocation(line: 87, column: 7, scope: !721)
!738 = !DILocation(line: 87, column: 13, scope: !721)
!739 = !DILocation(line: 87, column: 35, scope: !721)
!740 = !DILocation(line: 90, column: 3, scope: !704)
!741 = !DILocation(line: 90, column: 9, scope: !704)
!742 = !DILocation(line: 90, column: 17, scope: !704)
!743 = !DILocation(line: 91, column: 3, scope: !704)
!744 = !DILocation(line: 91, column: 9, scope: !704)
!745 = !DILocation(line: 91, column: 25, scope: !704)
!746 = !DILocation(line: 92, column: 1, scope: !704)
!747 = distinct !DISubprogram(name: "compress_data", scope: !1, file: !1, line: 143, type: !524, scopeLine: 144, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !543)
!748 = !DILocalVariable(name: "cinfo", arg: 1, scope: !747, file: !1, line: 143, type: !162)
!749 = !DILocation(line: 143, column: 31, scope: !747)
!750 = !DILocalVariable(name: "input_buf", arg: 2, scope: !747, file: !1, line: 143, type: !461)
!751 = !DILocation(line: 143, column: 49, scope: !747)
!752 = !DILocalVariable(name: "coef", scope: !747, file: !1, line: 145, type: !150)
!753 = !DILocation(line: 145, column: 15, scope: !747)
!754 = !DILocation(line: 145, column: 36, scope: !747)
!755 = !DILocation(line: 145, column: 43, scope: !747)
!756 = !DILocalVariable(name: "MCU_col_num", scope: !747, file: !1, line: 146, type: !204)
!757 = !DILocation(line: 146, column: 14, scope: !747)
!758 = !DILocalVariable(name: "last_MCU_col", scope: !747, file: !1, line: 147, type: !204)
!759 = !DILocation(line: 147, column: 14, scope: !747)
!760 = !DILocation(line: 147, column: 29, scope: !747)
!761 = !DILocation(line: 147, column: 36, scope: !747)
!762 = !DILocation(line: 147, column: 49, scope: !747)
!763 = !DILocalVariable(name: "last_iMCU_row", scope: !747, file: !1, line: 148, type: !204)
!764 = !DILocation(line: 148, column: 14, scope: !747)
!765 = !DILocation(line: 148, column: 30, scope: !747)
!766 = !DILocation(line: 148, column: 37, scope: !747)
!767 = !DILocation(line: 148, column: 53, scope: !747)
!768 = !DILocalVariable(name: "blkn", scope: !747, file: !1, line: 149, type: !188)
!769 = !DILocation(line: 149, column: 7, scope: !747)
!770 = !DILocalVariable(name: "bi", scope: !747, file: !1, line: 149, type: !188)
!771 = !DILocation(line: 149, column: 13, scope: !747)
!772 = !DILocalVariable(name: "ci", scope: !747, file: !1, line: 149, type: !188)
!773 = !DILocation(line: 149, column: 17, scope: !747)
!774 = !DILocalVariable(name: "yindex", scope: !747, file: !1, line: 149, type: !188)
!775 = !DILocation(line: 149, column: 21, scope: !747)
!776 = !DILocalVariable(name: "yoffset", scope: !747, file: !1, line: 149, type: !188)
!777 = !DILocation(line: 149, column: 29, scope: !747)
!778 = !DILocalVariable(name: "blockcnt", scope: !747, file: !1, line: 149, type: !188)
!779 = !DILocation(line: 149, column: 38, scope: !747)
!780 = !DILocalVariable(name: "ypos", scope: !747, file: !1, line: 150, type: !204)
!781 = !DILocation(line: 150, column: 14, scope: !747)
!782 = !DILocalVariable(name: "xpos", scope: !747, file: !1, line: 150, type: !204)
!783 = !DILocation(line: 150, column: 20, scope: !747)
!784 = !DILocalVariable(name: "compptr", scope: !747, file: !1, line: 151, type: !325)
!785 = !DILocation(line: 151, column: 24, scope: !747)
!786 = !DILocation(line: 154, column: 18, scope: !787)
!787 = distinct !DILexicalBlock(scope: !747, file: !1, line: 154, column: 3)
!788 = !DILocation(line: 154, column: 24, scope: !787)
!789 = !DILocation(line: 154, column: 16, scope: !787)
!790 = !DILocation(line: 154, column: 8, scope: !787)
!791 = !DILocation(line: 154, column: 41, scope: !792)
!792 = distinct !DILexicalBlock(scope: !787, file: !1, line: 154, column: 3)
!793 = !DILocation(line: 154, column: 51, scope: !792)
!794 = !DILocation(line: 154, column: 57, scope: !792)
!795 = !DILocation(line: 154, column: 49, scope: !792)
!796 = !DILocation(line: 154, column: 3, scope: !787)
!797 = !DILocation(line: 156, column: 24, scope: !798)
!798 = distinct !DILexicalBlock(scope: !799, file: !1, line: 156, column: 5)
!799 = distinct !DILexicalBlock(scope: !792, file: !1, line: 155, column: 19)
!800 = !DILocation(line: 156, column: 30, scope: !798)
!801 = !DILocation(line: 156, column: 22, scope: !798)
!802 = !DILocation(line: 156, column: 10, scope: !798)
!803 = !DILocation(line: 156, column: 39, scope: !804)
!804 = distinct !DILexicalBlock(scope: !798, file: !1, line: 156, column: 5)
!805 = !DILocation(line: 156, column: 54, scope: !804)
!806 = !DILocation(line: 156, column: 51, scope: !804)
!807 = !DILocation(line: 156, column: 5, scope: !798)
!808 = !DILocation(line: 167, column: 12, scope: !809)
!809 = distinct !DILexicalBlock(scope: !804, file: !1, line: 157, column: 18)
!810 = !DILocation(line: 168, column: 15, scope: !811)
!811 = distinct !DILexicalBlock(scope: !809, file: !1, line: 168, column: 7)
!812 = !DILocation(line: 168, column: 12, scope: !811)
!813 = !DILocation(line: 168, column: 20, scope: !814)
!814 = distinct !DILexicalBlock(scope: !811, file: !1, line: 168, column: 7)
!815 = !DILocation(line: 168, column: 25, scope: !814)
!816 = !DILocation(line: 168, column: 32, scope: !814)
!817 = !DILocation(line: 168, column: 23, scope: !814)
!818 = !DILocation(line: 168, column: 7, scope: !811)
!819 = !DILocation(line: 169, column: 12, scope: !820)
!820 = distinct !DILexicalBlock(scope: !814, file: !1, line: 168, column: 53)
!821 = !DILocation(line: 169, column: 19, scope: !820)
!822 = !DILocation(line: 169, column: 33, scope: !820)
!823 = !DILocation(line: 169, column: 10, scope: !820)
!824 = !DILocation(line: 170, column: 14, scope: !820)
!825 = !DILocation(line: 170, column: 28, scope: !820)
!826 = !DILocation(line: 170, column: 26, scope: !820)
!827 = !DILocation(line: 170, column: 13, scope: !820)
!828 = !DILocation(line: 170, column: 44, scope: !820)
!829 = !DILocation(line: 170, column: 53, scope: !820)
!830 = !DILocation(line: 171, column: 9, scope: !820)
!831 = !DILocation(line: 171, column: 18, scope: !820)
!832 = !DILocation(line: 170, column: 11, scope: !820)
!833 = !DILocation(line: 172, column: 9, scope: !820)
!834 = !DILocation(line: 172, column: 23, scope: !820)
!835 = !DILocation(line: 172, column: 32, scope: !820)
!836 = !DILocation(line: 172, column: 21, scope: !820)
!837 = !DILocation(line: 172, column: 7, scope: !820)
!838 = !DILocation(line: 173, column: 9, scope: !820)
!839 = !DILocation(line: 173, column: 17, scope: !820)
!840 = !DILocation(line: 173, column: 7, scope: !820)
!841 = !DILocation(line: 174, column: 14, scope: !842)
!842 = distinct !DILexicalBlock(scope: !820, file: !1, line: 174, column: 2)
!843 = !DILocation(line: 174, column: 7, scope: !842)
!844 = !DILocation(line: 174, column: 19, scope: !845)
!845 = distinct !DILexicalBlock(scope: !842, file: !1, line: 174, column: 2)
!846 = !DILocation(line: 174, column: 28, scope: !845)
!847 = !DILocation(line: 174, column: 37, scope: !845)
!848 = !DILocation(line: 174, column: 26, scope: !845)
!849 = !DILocation(line: 174, column: 2, scope: !842)
!850 = !DILocation(line: 175, column: 8, scope: !851)
!851 = distinct !DILexicalBlock(scope: !852, file: !1, line: 175, column: 8)
!852 = distinct !DILexicalBlock(scope: !845, file: !1, line: 174, column: 59)
!853 = !DILocation(line: 175, column: 14, scope: !851)
!854 = !DILocation(line: 175, column: 29, scope: !851)
!855 = !DILocation(line: 175, column: 27, scope: !851)
!856 = !DILocation(line: 175, column: 43, scope: !851)
!857 = !DILocation(line: 176, column: 8, scope: !851)
!858 = !DILocation(line: 176, column: 16, scope: !851)
!859 = !DILocation(line: 176, column: 15, scope: !851)
!860 = !DILocation(line: 176, column: 25, scope: !851)
!861 = !DILocation(line: 176, column: 34, scope: !851)
!862 = !DILocation(line: 176, column: 23, scope: !851)
!863 = !DILocation(line: 177, column: 8, scope: !864)
!864 = distinct !DILexicalBlock(scope: !851, file: !1, line: 176, column: 51)
!865 = !DILocation(line: 177, column: 15, scope: !864)
!866 = !DILocation(line: 177, column: 21, scope: !864)
!867 = !DILocation(line: 177, column: 35, scope: !864)
!868 = !DILocation(line: 177, column: 42, scope: !864)
!869 = !DILocation(line: 178, column: 7, scope: !864)
!870 = !DILocation(line: 178, column: 17, scope: !864)
!871 = !DILocation(line: 178, column: 22, scope: !864)
!872 = !DILocation(line: 178, column: 28, scope: !864)
!873 = !DILocation(line: 178, column: 39, scope: !864)
!874 = !DILocation(line: 179, column: 7, scope: !864)
!875 = !DILocation(line: 179, column: 13, scope: !864)
!876 = !DILocation(line: 179, column: 32, scope: !864)
!877 = !DILocation(line: 177, column: 6, scope: !864)
!878 = !DILocation(line: 180, column: 10, scope: !879)
!879 = distinct !DILexicalBlock(scope: !864, file: !1, line: 180, column: 10)
!880 = !DILocation(line: 180, column: 21, scope: !879)
!881 = !DILocation(line: 180, column: 30, scope: !879)
!882 = !DILocation(line: 180, column: 19, scope: !879)
!883 = !DILocation(line: 182, column: 31, scope: !884)
!884 = distinct !DILexicalBlock(scope: !879, file: !1, line: 180, column: 41)
!885 = !DILocation(line: 182, column: 37, scope: !884)
!886 = !DILocation(line: 182, column: 48, scope: !884)
!887 = !DILocation(line: 182, column: 55, scope: !884)
!888 = !DILocation(line: 182, column: 53, scope: !884)
!889 = !DILocation(line: 183, column: 5, scope: !884)
!890 = !DILocation(line: 183, column: 14, scope: !884)
!891 = !DILocation(line: 183, column: 26, scope: !884)
!892 = !DILocation(line: 183, column: 24, scope: !884)
!893 = !DILocation(line: 183, column: 4, scope: !884)
!894 = !DILocation(line: 183, column: 36, scope: !884)
!895 = !DILocation(line: 182, column: 8, scope: !884)
!896 = !DILocation(line: 184, column: 18, scope: !897)
!897 = distinct !DILexicalBlock(scope: !884, file: !1, line: 184, column: 8)
!898 = !DILocation(line: 184, column: 16, scope: !897)
!899 = !DILocation(line: 184, column: 13, scope: !897)
!900 = !DILocation(line: 184, column: 28, scope: !901)
!901 = distinct !DILexicalBlock(scope: !897, file: !1, line: 184, column: 8)
!902 = !DILocation(line: 184, column: 33, scope: !901)
!903 = !DILocation(line: 184, column: 42, scope: !901)
!904 = !DILocation(line: 184, column: 31, scope: !901)
!905 = !DILocation(line: 184, column: 8, scope: !897)
!906 = !DILocation(line: 185, column: 37, scope: !907)
!907 = distinct !DILexicalBlock(scope: !901, file: !1, line: 184, column: 59)
!908 = !DILocation(line: 185, column: 43, scope: !907)
!909 = !DILocation(line: 185, column: 54, scope: !907)
!910 = !DILocation(line: 185, column: 59, scope: !907)
!911 = !DILocation(line: 185, column: 58, scope: !907)
!912 = !DILocation(line: 185, column: 61, scope: !907)
!913 = !DILocation(line: 185, column: 3, scope: !907)
!914 = !DILocation(line: 185, column: 9, scope: !907)
!915 = !DILocation(line: 185, column: 20, scope: !907)
!916 = !DILocation(line: 185, column: 25, scope: !907)
!917 = !DILocation(line: 185, column: 24, scope: !907)
!918 = !DILocation(line: 185, column: 35, scope: !907)
!919 = !DILocation(line: 186, column: 8, scope: !907)
!920 = !DILocation(line: 184, column: 55, scope: !901)
!921 = !DILocation(line: 184, column: 8, scope: !901)
!922 = distinct !{!922, !905, !923, !617}
!923 = !DILocation(line: 186, column: 8, scope: !897)
!924 = !DILocation(line: 187, column: 6, scope: !884)
!925 = !DILocation(line: 188, column: 4, scope: !864)
!926 = !DILocation(line: 190, column: 29, scope: !927)
!927 = distinct !DILexicalBlock(scope: !851, file: !1, line: 188, column: 11)
!928 = !DILocation(line: 190, column: 35, scope: !927)
!929 = !DILocation(line: 190, column: 46, scope: !927)
!930 = !DILocation(line: 191, column: 9, scope: !927)
!931 = !DILocation(line: 191, column: 18, scope: !927)
!932 = !DILocation(line: 191, column: 28, scope: !927)
!933 = !DILocation(line: 190, column: 6, scope: !927)
!934 = !DILocation(line: 192, column: 14, scope: !935)
!935 = distinct !DILexicalBlock(scope: !927, file: !1, line: 192, column: 6)
!936 = !DILocation(line: 192, column: 11, scope: !935)
!937 = !DILocation(line: 192, column: 19, scope: !938)
!938 = distinct !DILexicalBlock(scope: !935, file: !1, line: 192, column: 6)
!939 = !DILocation(line: 192, column: 24, scope: !938)
!940 = !DILocation(line: 192, column: 33, scope: !938)
!941 = !DILocation(line: 192, column: 22, scope: !938)
!942 = !DILocation(line: 192, column: 6, scope: !935)
!943 = !DILocation(line: 193, column: 42, scope: !944)
!944 = distinct !DILexicalBlock(scope: !938, file: !1, line: 192, column: 50)
!945 = !DILocation(line: 193, column: 48, scope: !944)
!946 = !DILocation(line: 193, column: 59, scope: !944)
!947 = !DILocation(line: 193, column: 63, scope: !944)
!948 = !DILocation(line: 193, column: 8, scope: !944)
!949 = !DILocation(line: 193, column: 14, scope: !944)
!950 = !DILocation(line: 193, column: 25, scope: !944)
!951 = !DILocation(line: 193, column: 30, scope: !944)
!952 = !DILocation(line: 193, column: 29, scope: !944)
!953 = !DILocation(line: 193, column: 40, scope: !944)
!954 = !DILocation(line: 194, column: 6, scope: !944)
!955 = !DILocation(line: 192, column: 46, scope: !938)
!956 = !DILocation(line: 192, column: 6, scope: !938)
!957 = distinct !{!957, !942, !958, !617}
!958 = !DILocation(line: 194, column: 6, scope: !935)
!959 = !DILocation(line: 196, column: 12, scope: !852)
!960 = !DILocation(line: 196, column: 21, scope: !852)
!961 = !DILocation(line: 196, column: 9, scope: !852)
!962 = !DILocation(line: 197, column: 9, scope: !852)
!963 = !DILocation(line: 198, column: 2, scope: !852)
!964 = !DILocation(line: 174, column: 55, scope: !845)
!965 = !DILocation(line: 174, column: 2, scope: !845)
!966 = distinct !{!966, !849, !967, !617}
!967 = !DILocation(line: 198, column: 2, scope: !842)
!968 = !DILocation(line: 199, column: 7, scope: !820)
!969 = !DILocation(line: 168, column: 49, scope: !814)
!970 = !DILocation(line: 168, column: 7, scope: !814)
!971 = distinct !{!971, !818, !972, !617}
!972 = !DILocation(line: 199, column: 7, scope: !811)
!973 = !DILocation(line: 203, column: 15, scope: !974)
!974 = distinct !DILexicalBlock(scope: !809, file: !1, line: 203, column: 11)
!975 = !DILocation(line: 203, column: 22, scope: !974)
!976 = !DILocation(line: 203, column: 31, scope: !974)
!977 = !DILocation(line: 203, column: 44, scope: !974)
!978 = !DILocation(line: 203, column: 51, scope: !974)
!979 = !DILocation(line: 203, column: 57, scope: !974)
!980 = !DILocation(line: 203, column: 13, scope: !974)
!981 = !DILocation(line: 203, column: 11, scope: !974)
!982 = !DILocation(line: 205, column: 26, scope: !983)
!983 = distinct !DILexicalBlock(scope: !974, file: !1, line: 203, column: 70)
!984 = !DILocation(line: 205, column: 2, scope: !983)
!985 = !DILocation(line: 205, column: 8, scope: !983)
!986 = !DILocation(line: 205, column: 24, scope: !983)
!987 = !DILocation(line: 206, column: 18, scope: !983)
!988 = !DILocation(line: 206, column: 2, scope: !983)
!989 = !DILocation(line: 206, column: 8, scope: !983)
!990 = !DILocation(line: 206, column: 16, scope: !983)
!991 = !DILocation(line: 207, column: 2, scope: !983)
!992 = !DILocation(line: 209, column: 5, scope: !809)
!993 = !DILocation(line: 157, column: 14, scope: !804)
!994 = !DILocation(line: 156, column: 5, scope: !804)
!995 = distinct !{!995, !807, !996, !617}
!996 = !DILocation(line: 209, column: 5, scope: !798)
!997 = !DILocation(line: 211, column: 5, scope: !799)
!998 = !DILocation(line: 211, column: 11, scope: !799)
!999 = !DILocation(line: 211, column: 19, scope: !799)
!1000 = !DILocation(line: 212, column: 3, scope: !799)
!1001 = !DILocation(line: 155, column: 15, scope: !792)
!1002 = !DILocation(line: 154, column: 3, scope: !792)
!1003 = distinct !{!1003, !796, !1004, !617}
!1004 = !DILocation(line: 212, column: 3, scope: !787)
!1005 = !DILocation(line: 214, column: 3, scope: !747)
!1006 = !DILocation(line: 214, column: 9, scope: !747)
!1007 = !DILocation(line: 214, column: 21, scope: !747)
!1008 = !DILocation(line: 215, column: 18, scope: !747)
!1009 = !DILocation(line: 215, column: 3, scope: !747)
!1010 = !DILocation(line: 216, column: 3, scope: !747)
!1011 = !DILocation(line: 217, column: 1, scope: !747)
!1012 = distinct !DISubprogram(name: "compress_first_pass", scope: !1, file: !1, line: 244, type: !524, scopeLine: 245, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !543)
!1013 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1012, file: !1, line: 244, type: !162)
!1014 = !DILocation(line: 244, column: 37, scope: !1012)
!1015 = !DILocalVariable(name: "input_buf", arg: 2, scope: !1012, file: !1, line: 244, type: !461)
!1016 = !DILocation(line: 244, column: 55, scope: !1012)
!1017 = !DILocalVariable(name: "coef", scope: !1012, file: !1, line: 246, type: !150)
!1018 = !DILocation(line: 246, column: 15, scope: !1012)
!1019 = !DILocation(line: 246, column: 36, scope: !1012)
!1020 = !DILocation(line: 246, column: 43, scope: !1012)
!1021 = !DILocalVariable(name: "last_iMCU_row", scope: !1012, file: !1, line: 247, type: !204)
!1022 = !DILocation(line: 247, column: 14, scope: !1012)
!1023 = !DILocation(line: 247, column: 30, scope: !1012)
!1024 = !DILocation(line: 247, column: 37, scope: !1012)
!1025 = !DILocation(line: 247, column: 53, scope: !1012)
!1026 = !DILocalVariable(name: "blocks_across", scope: !1012, file: !1, line: 248, type: !204)
!1027 = !DILocation(line: 248, column: 14, scope: !1012)
!1028 = !DILocalVariable(name: "MCUs_across", scope: !1012, file: !1, line: 248, type: !204)
!1029 = !DILocation(line: 248, column: 29, scope: !1012)
!1030 = !DILocalVariable(name: "MCUindex", scope: !1012, file: !1, line: 248, type: !204)
!1031 = !DILocation(line: 248, column: 42, scope: !1012)
!1032 = !DILocalVariable(name: "bi", scope: !1012, file: !1, line: 249, type: !188)
!1033 = !DILocation(line: 249, column: 7, scope: !1012)
!1034 = !DILocalVariable(name: "ci", scope: !1012, file: !1, line: 249, type: !188)
!1035 = !DILocation(line: 249, column: 11, scope: !1012)
!1036 = !DILocalVariable(name: "h_samp_factor", scope: !1012, file: !1, line: 249, type: !188)
!1037 = !DILocation(line: 249, column: 15, scope: !1012)
!1038 = !DILocalVariable(name: "block_row", scope: !1012, file: !1, line: 249, type: !188)
!1039 = !DILocation(line: 249, column: 30, scope: !1012)
!1040 = !DILocalVariable(name: "block_rows", scope: !1012, file: !1, line: 249, type: !188)
!1041 = !DILocation(line: 249, column: 41, scope: !1012)
!1042 = !DILocalVariable(name: "ndummy", scope: !1012, file: !1, line: 249, type: !188)
!1043 = !DILocation(line: 249, column: 53, scope: !1012)
!1044 = !DILocalVariable(name: "lastDC", scope: !1012, file: !1, line: 250, type: !215)
!1045 = !DILocation(line: 250, column: 9, scope: !1012)
!1046 = !DILocalVariable(name: "compptr", scope: !1012, file: !1, line: 251, type: !325)
!1047 = !DILocation(line: 251, column: 24, scope: !1012)
!1048 = !DILocalVariable(name: "buffer", scope: !1012, file: !1, line: 252, type: !209)
!1049 = !DILocation(line: 252, column: 15, scope: !1012)
!1050 = !DILocalVariable(name: "thisblockrow", scope: !1012, file: !1, line: 253, type: !211)
!1051 = !DILocation(line: 253, column: 13, scope: !1012)
!1052 = !DILocalVariable(name: "lastblockrow", scope: !1012, file: !1, line: 253, type: !211)
!1053 = !DILocation(line: 253, column: 27, scope: !1012)
!1054 = !DILocation(line: 255, column: 11, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !1012, file: !1, line: 255, column: 3)
!1056 = !DILocation(line: 255, column: 26, scope: !1055)
!1057 = !DILocation(line: 255, column: 33, scope: !1055)
!1058 = !DILocation(line: 255, column: 24, scope: !1055)
!1059 = !DILocation(line: 255, column: 8, scope: !1055)
!1060 = !DILocation(line: 255, column: 44, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !1055, file: !1, line: 255, column: 3)
!1062 = !DILocation(line: 255, column: 49, scope: !1061)
!1063 = !DILocation(line: 255, column: 56, scope: !1061)
!1064 = !DILocation(line: 255, column: 47, scope: !1061)
!1065 = !DILocation(line: 255, column: 3, scope: !1055)
!1066 = !DILocation(line: 258, column: 16, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !1061, file: !1, line: 256, column: 25)
!1068 = !DILocation(line: 258, column: 23, scope: !1067)
!1069 = !DILocation(line: 258, column: 28, scope: !1067)
!1070 = !DILocation(line: 259, column: 23, scope: !1067)
!1071 = !DILocation(line: 259, column: 30, scope: !1067)
!1072 = !DILocation(line: 259, column: 36, scope: !1067)
!1073 = !DILocation(line: 259, column: 48, scope: !1067)
!1074 = !DILocation(line: 260, column: 8, scope: !1067)
!1075 = !DILocation(line: 260, column: 14, scope: !1067)
!1076 = !DILocation(line: 260, column: 29, scope: !1067)
!1077 = !DILocation(line: 260, column: 38, scope: !1067)
!1078 = !DILocation(line: 260, column: 27, scope: !1067)
!1079 = !DILocation(line: 261, column: 21, scope: !1067)
!1080 = !DILocation(line: 261, column: 30, scope: !1067)
!1081 = !DILocation(line: 258, column: 14, scope: !1067)
!1082 = !DILocation(line: 258, column: 12, scope: !1067)
!1083 = !DILocation(line: 263, column: 9, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1067, file: !1, line: 263, column: 9)
!1085 = !DILocation(line: 263, column: 15, scope: !1084)
!1086 = !DILocation(line: 263, column: 30, scope: !1084)
!1087 = !DILocation(line: 263, column: 28, scope: !1084)
!1088 = !DILocation(line: 264, column: 20, scope: !1084)
!1089 = !DILocation(line: 264, column: 29, scope: !1084)
!1090 = !DILocation(line: 264, column: 18, scope: !1084)
!1091 = !DILocation(line: 264, column: 7, scope: !1084)
!1092 = !DILocation(line: 267, column: 27, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !1084, file: !1, line: 265, column: 10)
!1094 = !DILocation(line: 267, column: 36, scope: !1093)
!1095 = !DILocation(line: 267, column: 55, scope: !1093)
!1096 = !DILocation(line: 267, column: 64, scope: !1093)
!1097 = !DILocation(line: 267, column: 53, scope: !1093)
!1098 = !DILocation(line: 267, column: 18, scope: !1093)
!1099 = !DILocation(line: 268, column: 11, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !1093, file: !1, line: 268, column: 11)
!1101 = !DILocation(line: 268, column: 22, scope: !1100)
!1102 = !DILocation(line: 268, column: 41, scope: !1100)
!1103 = !DILocation(line: 268, column: 50, scope: !1100)
!1104 = !DILocation(line: 268, column: 39, scope: !1100)
!1105 = !DILocation(line: 268, column: 28, scope: !1100)
!1106 = !DILocation(line: 270, column: 21, scope: !1067)
!1107 = !DILocation(line: 270, column: 30, scope: !1067)
!1108 = !DILocation(line: 270, column: 19, scope: !1067)
!1109 = !DILocation(line: 271, column: 21, scope: !1067)
!1110 = !DILocation(line: 271, column: 30, scope: !1067)
!1111 = !DILocation(line: 271, column: 19, scope: !1067)
!1112 = !DILocation(line: 273, column: 21, scope: !1067)
!1113 = !DILocation(line: 273, column: 37, scope: !1067)
!1114 = !DILocation(line: 273, column: 35, scope: !1067)
!1115 = !DILocation(line: 273, column: 12, scope: !1067)
!1116 = !DILocation(line: 274, column: 9, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !1067, file: !1, line: 274, column: 9)
!1118 = !DILocation(line: 274, column: 16, scope: !1117)
!1119 = !DILocation(line: 275, column: 16, scope: !1117)
!1120 = !DILocation(line: 275, column: 32, scope: !1117)
!1121 = !DILocation(line: 275, column: 30, scope: !1117)
!1122 = !DILocation(line: 275, column: 14, scope: !1117)
!1123 = !DILocation(line: 275, column: 7, scope: !1117)
!1124 = !DILocation(line: 279, column: 20, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1067, file: !1, line: 279, column: 5)
!1126 = !DILocation(line: 279, column: 10, scope: !1125)
!1127 = !DILocation(line: 279, column: 25, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !1125, file: !1, line: 279, column: 5)
!1129 = !DILocation(line: 279, column: 37, scope: !1128)
!1130 = !DILocation(line: 279, column: 35, scope: !1128)
!1131 = !DILocation(line: 279, column: 5, scope: !1125)
!1132 = !DILocation(line: 280, column: 22, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1128, file: !1, line: 279, column: 62)
!1134 = !DILocation(line: 280, column: 29, scope: !1133)
!1135 = !DILocation(line: 280, column: 20, scope: !1133)
!1136 = !DILocation(line: 281, column: 9, scope: !1133)
!1137 = !DILocation(line: 281, column: 16, scope: !1133)
!1138 = !DILocation(line: 281, column: 22, scope: !1133)
!1139 = !DILocation(line: 281, column: 36, scope: !1133)
!1140 = !DILocation(line: 281, column: 43, scope: !1133)
!1141 = !DILocation(line: 282, column: 8, scope: !1133)
!1142 = !DILocation(line: 282, column: 18, scope: !1133)
!1143 = !DILocation(line: 282, column: 23, scope: !1133)
!1144 = !DILocation(line: 283, column: 22, scope: !1133)
!1145 = !DILocation(line: 283, column: 32, scope: !1133)
!1146 = !DILocation(line: 284, column: 24, scope: !1133)
!1147 = !DILocation(line: 281, column: 7, scope: !1133)
!1148 = !DILocation(line: 285, column: 11, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1133, file: !1, line: 285, column: 11)
!1150 = !DILocation(line: 285, column: 18, scope: !1149)
!1151 = !DILocation(line: 287, column: 18, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1149, file: !1, line: 285, column: 23)
!1153 = !DILocation(line: 287, column: 15, scope: !1152)
!1154 = !DILocation(line: 288, column: 25, scope: !1152)
!1155 = !DILocation(line: 288, column: 39, scope: !1152)
!1156 = !DILocation(line: 288, column: 46, scope: !1152)
!1157 = !DILocation(line: 288, column: 2, scope: !1152)
!1158 = !DILocation(line: 289, column: 11, scope: !1152)
!1159 = !DILocation(line: 289, column: 9, scope: !1152)
!1160 = !DILocation(line: 290, column: 10, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1152, file: !1, line: 290, column: 2)
!1162 = !DILocation(line: 290, column: 7, scope: !1161)
!1163 = !DILocation(line: 290, column: 15, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1161, file: !1, line: 290, column: 2)
!1165 = !DILocation(line: 290, column: 20, scope: !1164)
!1166 = !DILocation(line: 290, column: 18, scope: !1164)
!1167 = !DILocation(line: 290, column: 2, scope: !1161)
!1168 = !DILocation(line: 291, column: 26, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1164, file: !1, line: 290, column: 34)
!1170 = !DILocation(line: 291, column: 4, scope: !1169)
!1171 = !DILocation(line: 291, column: 17, scope: !1169)
!1172 = !DILocation(line: 291, column: 24, scope: !1169)
!1173 = !DILocation(line: 292, column: 2, scope: !1169)
!1174 = !DILocation(line: 290, column: 30, scope: !1164)
!1175 = !DILocation(line: 290, column: 2, scope: !1164)
!1176 = distinct !{!1176, !1167, !1177, !617}
!1177 = !DILocation(line: 292, column: 2, scope: !1161)
!1178 = !DILocation(line: 293, column: 7, scope: !1152)
!1179 = !DILocation(line: 294, column: 5, scope: !1133)
!1180 = !DILocation(line: 279, column: 58, scope: !1128)
!1181 = !DILocation(line: 279, column: 5, scope: !1128)
!1182 = distinct !{!1182, !1131, !1183, !617}
!1183 = !DILocation(line: 294, column: 5, scope: !1125)
!1184 = !DILocation(line: 300, column: 9, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1067, file: !1, line: 300, column: 9)
!1186 = !DILocation(line: 300, column: 15, scope: !1185)
!1187 = !DILocation(line: 300, column: 31, scope: !1185)
!1188 = !DILocation(line: 300, column: 28, scope: !1185)
!1189 = !DILocation(line: 301, column: 24, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1185, file: !1, line: 300, column: 46)
!1191 = !DILocation(line: 301, column: 21, scope: !1190)
!1192 = !DILocation(line: 302, column: 21, scope: !1190)
!1193 = !DILocation(line: 302, column: 37, scope: !1190)
!1194 = !DILocation(line: 302, column: 35, scope: !1190)
!1195 = !DILocation(line: 302, column: 19, scope: !1190)
!1196 = !DILocation(line: 303, column: 24, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1190, file: !1, line: 303, column: 7)
!1198 = !DILocation(line: 303, column: 22, scope: !1197)
!1199 = !DILocation(line: 303, column: 12, scope: !1197)
!1200 = !DILocation(line: 303, column: 36, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1197, file: !1, line: 303, column: 7)
!1202 = !DILocation(line: 303, column: 48, scope: !1201)
!1203 = !DILocation(line: 303, column: 57, scope: !1201)
!1204 = !DILocation(line: 303, column: 46, scope: !1201)
!1205 = !DILocation(line: 303, column: 7, scope: !1197)
!1206 = !DILocation(line: 305, column: 17, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !1201, file: !1, line: 304, column: 18)
!1208 = !DILocation(line: 305, column: 24, scope: !1207)
!1209 = !DILocation(line: 305, column: 15, scope: !1207)
!1210 = !DILocation(line: 306, column: 17, scope: !1207)
!1211 = !DILocation(line: 306, column: 24, scope: !1207)
!1212 = !DILocation(line: 306, column: 33, scope: !1207)
!1213 = !DILocation(line: 306, column: 15, scope: !1207)
!1214 = !DILocation(line: 307, column: 25, scope: !1207)
!1215 = !DILocation(line: 308, column: 15, scope: !1207)
!1216 = !DILocation(line: 308, column: 29, scope: !1207)
!1217 = !DILocation(line: 307, column: 2, scope: !1207)
!1218 = !DILocation(line: 309, column: 16, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1207, file: !1, line: 309, column: 2)
!1220 = !DILocation(line: 309, column: 7, scope: !1219)
!1221 = !DILocation(line: 309, column: 21, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1219, file: !1, line: 309, column: 2)
!1223 = !DILocation(line: 309, column: 32, scope: !1222)
!1224 = !DILocation(line: 309, column: 30, scope: !1222)
!1225 = !DILocation(line: 309, column: 2, scope: !1219)
!1226 = !DILocation(line: 310, column: 13, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1222, file: !1, line: 309, column: 57)
!1228 = !DILocation(line: 310, column: 26, scope: !1227)
!1229 = !DILocation(line: 310, column: 39, scope: !1227)
!1230 = !DILocation(line: 310, column: 11, scope: !1227)
!1231 = !DILocation(line: 311, column: 12, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !1227, file: !1, line: 311, column: 4)
!1233 = !DILocation(line: 311, column: 9, scope: !1232)
!1234 = !DILocation(line: 311, column: 17, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1232, file: !1, line: 311, column: 4)
!1236 = !DILocation(line: 311, column: 22, scope: !1235)
!1237 = !DILocation(line: 311, column: 20, scope: !1235)
!1238 = !DILocation(line: 311, column: 4, scope: !1232)
!1239 = !DILocation(line: 312, column: 28, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1235, file: !1, line: 311, column: 43)
!1241 = !DILocation(line: 312, column: 6, scope: !1240)
!1242 = !DILocation(line: 312, column: 19, scope: !1240)
!1243 = !DILocation(line: 312, column: 26, scope: !1240)
!1244 = !DILocation(line: 313, column: 4, scope: !1240)
!1245 = !DILocation(line: 311, column: 39, scope: !1235)
!1246 = !DILocation(line: 311, column: 4, scope: !1235)
!1247 = distinct !{!1247, !1238, !1248, !617}
!1248 = !DILocation(line: 313, column: 4, scope: !1232)
!1249 = !DILocation(line: 314, column: 20, scope: !1227)
!1250 = !DILocation(line: 314, column: 17, scope: !1227)
!1251 = !DILocation(line: 315, column: 20, scope: !1227)
!1252 = !DILocation(line: 315, column: 17, scope: !1227)
!1253 = !DILocation(line: 316, column: 2, scope: !1227)
!1254 = !DILocation(line: 309, column: 53, scope: !1222)
!1255 = !DILocation(line: 309, column: 2, scope: !1222)
!1256 = distinct !{!1256, !1225, !1257, !617}
!1257 = !DILocation(line: 316, column: 2, scope: !1219)
!1258 = !DILocation(line: 317, column: 7, scope: !1207)
!1259 = !DILocation(line: 304, column: 14, scope: !1201)
!1260 = !DILocation(line: 303, column: 7, scope: !1201)
!1261 = distinct !{!1261, !1205, !1262, !617}
!1262 = !DILocation(line: 317, column: 7, scope: !1197)
!1263 = !DILocation(line: 318, column: 5, scope: !1190)
!1264 = !DILocation(line: 319, column: 3, scope: !1067)
!1265 = !DILocation(line: 256, column: 10, scope: !1061)
!1266 = !DILocation(line: 256, column: 21, scope: !1061)
!1267 = !DILocation(line: 255, column: 3, scope: !1061)
!1268 = distinct !{!1268, !1065, !1269, !617}
!1269 = !DILocation(line: 319, column: 3, scope: !1055)
!1270 = !DILocation(line: 325, column: 26, scope: !1012)
!1271 = !DILocation(line: 325, column: 33, scope: !1012)
!1272 = !DILocation(line: 325, column: 10, scope: !1012)
!1273 = !DILocation(line: 325, column: 3, scope: !1012)
!1274 = distinct !DISubprogram(name: "compress_output", scope: !1, file: !1, line: 340, type: !524, scopeLine: 341, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !543)
!1275 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1274, file: !1, line: 340, type: !162)
!1276 = !DILocation(line: 340, column: 33, scope: !1274)
!1277 = !DILocalVariable(name: "input_buf", arg: 2, scope: !1274, file: !1, line: 340, type: !461)
!1278 = !DILocation(line: 340, column: 51, scope: !1274)
!1279 = !DILocalVariable(name: "coef", scope: !1274, file: !1, line: 342, type: !150)
!1280 = !DILocation(line: 342, column: 15, scope: !1274)
!1281 = !DILocation(line: 342, column: 36, scope: !1274)
!1282 = !DILocation(line: 342, column: 43, scope: !1274)
!1283 = !DILocalVariable(name: "MCU_col_num", scope: !1274, file: !1, line: 343, type: !204)
!1284 = !DILocation(line: 343, column: 14, scope: !1274)
!1285 = !DILocalVariable(name: "blkn", scope: !1274, file: !1, line: 344, type: !188)
!1286 = !DILocation(line: 344, column: 7, scope: !1274)
!1287 = !DILocalVariable(name: "ci", scope: !1274, file: !1, line: 344, type: !188)
!1288 = !DILocation(line: 344, column: 13, scope: !1274)
!1289 = !DILocalVariable(name: "xindex", scope: !1274, file: !1, line: 344, type: !188)
!1290 = !DILocation(line: 344, column: 17, scope: !1274)
!1291 = !DILocalVariable(name: "yindex", scope: !1274, file: !1, line: 344, type: !188)
!1292 = !DILocation(line: 344, column: 25, scope: !1274)
!1293 = !DILocalVariable(name: "yoffset", scope: !1274, file: !1, line: 344, type: !188)
!1294 = !DILocation(line: 344, column: 33, scope: !1274)
!1295 = !DILocalVariable(name: "start_col", scope: !1274, file: !1, line: 345, type: !204)
!1296 = !DILocation(line: 345, column: 14, scope: !1274)
!1297 = !DILocalVariable(name: "buffer", scope: !1274, file: !1, line: 346, type: !1298)
!1298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !209, size: 256, elements: !361)
!1299 = !DILocation(line: 346, column: 15, scope: !1274)
!1300 = !DILocalVariable(name: "buffer_ptr", scope: !1274, file: !1, line: 347, type: !211)
!1301 = !DILocation(line: 347, column: 13, scope: !1274)
!1302 = !DILocalVariable(name: "compptr", scope: !1274, file: !1, line: 348, type: !325)
!1303 = !DILocation(line: 348, column: 24, scope: !1274)
!1304 = !DILocation(line: 354, column: 11, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !1274, file: !1, line: 354, column: 3)
!1306 = !DILocation(line: 354, column: 8, scope: !1305)
!1307 = !DILocation(line: 354, column: 16, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1305, file: !1, line: 354, column: 3)
!1309 = !DILocation(line: 354, column: 21, scope: !1308)
!1310 = !DILocation(line: 354, column: 28, scope: !1308)
!1311 = !DILocation(line: 354, column: 19, scope: !1308)
!1312 = !DILocation(line: 354, column: 3, scope: !1305)
!1313 = !DILocation(line: 355, column: 15, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1308, file: !1, line: 354, column: 49)
!1315 = !DILocation(line: 355, column: 22, scope: !1314)
!1316 = !DILocation(line: 355, column: 36, scope: !1314)
!1317 = !DILocation(line: 355, column: 13, scope: !1314)
!1318 = !DILocation(line: 356, column: 20, scope: !1314)
!1319 = !DILocation(line: 356, column: 27, scope: !1314)
!1320 = !DILocation(line: 356, column: 32, scope: !1314)
!1321 = !DILocation(line: 357, column: 23, scope: !1314)
!1322 = !DILocation(line: 357, column: 30, scope: !1314)
!1323 = !DILocation(line: 357, column: 36, scope: !1314)
!1324 = !DILocation(line: 357, column: 48, scope: !1314)
!1325 = !DILocation(line: 357, column: 57, scope: !1314)
!1326 = !DILocation(line: 358, column: 8, scope: !1314)
!1327 = !DILocation(line: 358, column: 14, scope: !1314)
!1328 = !DILocation(line: 358, column: 29, scope: !1314)
!1329 = !DILocation(line: 358, column: 38, scope: !1314)
!1330 = !DILocation(line: 358, column: 27, scope: !1314)
!1331 = !DILocation(line: 359, column: 21, scope: !1314)
!1332 = !DILocation(line: 359, column: 30, scope: !1314)
!1333 = !DILocation(line: 356, column: 18, scope: !1314)
!1334 = !DILocation(line: 356, column: 12, scope: !1314)
!1335 = !DILocation(line: 356, column: 5, scope: !1314)
!1336 = !DILocation(line: 356, column: 16, scope: !1314)
!1337 = !DILocation(line: 360, column: 3, scope: !1314)
!1338 = !DILocation(line: 354, column: 45, scope: !1308)
!1339 = !DILocation(line: 354, column: 3, scope: !1308)
!1340 = distinct !{!1340, !1312, !1341, !617}
!1341 = !DILocation(line: 360, column: 3, scope: !1305)
!1342 = !DILocation(line: 363, column: 18, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !1274, file: !1, line: 363, column: 3)
!1344 = !DILocation(line: 363, column: 24, scope: !1343)
!1345 = !DILocation(line: 363, column: 16, scope: !1343)
!1346 = !DILocation(line: 363, column: 8, scope: !1343)
!1347 = !DILocation(line: 363, column: 41, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !1343, file: !1, line: 363, column: 3)
!1349 = !DILocation(line: 363, column: 51, scope: !1348)
!1350 = !DILocation(line: 363, column: 57, scope: !1348)
!1351 = !DILocation(line: 363, column: 49, scope: !1348)
!1352 = !DILocation(line: 363, column: 3, scope: !1343)
!1353 = !DILocation(line: 365, column: 24, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1355, file: !1, line: 365, column: 5)
!1355 = distinct !DILexicalBlock(scope: !1348, file: !1, line: 364, column: 19)
!1356 = !DILocation(line: 365, column: 30, scope: !1354)
!1357 = !DILocation(line: 365, column: 22, scope: !1354)
!1358 = !DILocation(line: 365, column: 10, scope: !1354)
!1359 = !DILocation(line: 365, column: 39, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !1354, file: !1, line: 365, column: 5)
!1361 = !DILocation(line: 365, column: 53, scope: !1360)
!1362 = !DILocation(line: 365, column: 60, scope: !1360)
!1363 = !DILocation(line: 365, column: 51, scope: !1360)
!1364 = !DILocation(line: 365, column: 5, scope: !1354)
!1365 = !DILocation(line: 368, column: 12, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1360, file: !1, line: 366, column: 18)
!1367 = !DILocation(line: 369, column: 15, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1366, file: !1, line: 369, column: 7)
!1369 = !DILocation(line: 369, column: 12, scope: !1368)
!1370 = !DILocation(line: 369, column: 20, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1368, file: !1, line: 369, column: 7)
!1372 = !DILocation(line: 369, column: 25, scope: !1371)
!1373 = !DILocation(line: 369, column: 32, scope: !1371)
!1374 = !DILocation(line: 369, column: 23, scope: !1371)
!1375 = !DILocation(line: 369, column: 7, scope: !1368)
!1376 = !DILocation(line: 370, column: 12, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1371, file: !1, line: 369, column: 53)
!1378 = !DILocation(line: 370, column: 19, scope: !1377)
!1379 = !DILocation(line: 370, column: 33, scope: !1377)
!1380 = !DILocation(line: 370, column: 10, scope: !1377)
!1381 = !DILocation(line: 371, column: 14, scope: !1377)
!1382 = !DILocation(line: 371, column: 28, scope: !1377)
!1383 = !DILocation(line: 371, column: 37, scope: !1377)
!1384 = !DILocation(line: 371, column: 26, scope: !1377)
!1385 = !DILocation(line: 371, column: 12, scope: !1377)
!1386 = !DILocation(line: 372, column: 14, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !1377, file: !1, line: 372, column: 2)
!1388 = !DILocation(line: 372, column: 7, scope: !1387)
!1389 = !DILocation(line: 372, column: 19, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1387, file: !1, line: 372, column: 2)
!1391 = !DILocation(line: 372, column: 28, scope: !1390)
!1392 = !DILocation(line: 372, column: 37, scope: !1390)
!1393 = !DILocation(line: 372, column: 26, scope: !1390)
!1394 = !DILocation(line: 372, column: 2, scope: !1387)
!1395 = !DILocation(line: 373, column: 24, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1390, file: !1, line: 372, column: 59)
!1397 = !DILocation(line: 373, column: 17, scope: !1396)
!1398 = !DILocation(line: 373, column: 28, scope: !1396)
!1399 = !DILocation(line: 373, column: 35, scope: !1396)
!1400 = !DILocation(line: 373, column: 34, scope: !1396)
!1401 = !DILocation(line: 373, column: 46, scope: !1396)
!1402 = !DILocation(line: 373, column: 44, scope: !1396)
!1403 = !DILocation(line: 373, column: 15, scope: !1396)
!1404 = !DILocation(line: 374, column: 16, scope: !1405)
!1405 = distinct !DILexicalBlock(scope: !1396, file: !1, line: 374, column: 4)
!1406 = !DILocation(line: 374, column: 9, scope: !1405)
!1407 = !DILocation(line: 374, column: 21, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1405, file: !1, line: 374, column: 4)
!1409 = !DILocation(line: 374, column: 30, scope: !1408)
!1410 = !DILocation(line: 374, column: 39, scope: !1408)
!1411 = !DILocation(line: 374, column: 28, scope: !1408)
!1412 = !DILocation(line: 374, column: 4, scope: !1405)
!1413 = !DILocation(line: 375, column: 43, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !1408, file: !1, line: 374, column: 60)
!1415 = !DILocation(line: 375, column: 6, scope: !1414)
!1416 = !DILocation(line: 375, column: 12, scope: !1414)
!1417 = !DILocation(line: 375, column: 27, scope: !1414)
!1418 = !DILocation(line: 375, column: 31, scope: !1414)
!1419 = !DILocation(line: 376, column: 4, scope: !1414)
!1420 = !DILocation(line: 374, column: 56, scope: !1408)
!1421 = !DILocation(line: 374, column: 4, scope: !1408)
!1422 = distinct !{!1422, !1412, !1423, !617}
!1423 = !DILocation(line: 376, column: 4, scope: !1405)
!1424 = !DILocation(line: 377, column: 2, scope: !1396)
!1425 = !DILocation(line: 372, column: 55, scope: !1390)
!1426 = !DILocation(line: 372, column: 2, scope: !1390)
!1427 = distinct !{!1427, !1394, !1428, !617}
!1428 = !DILocation(line: 377, column: 2, scope: !1387)
!1429 = !DILocation(line: 378, column: 7, scope: !1377)
!1430 = !DILocation(line: 369, column: 49, scope: !1371)
!1431 = !DILocation(line: 369, column: 7, scope: !1371)
!1432 = distinct !{!1432, !1375, !1433, !617}
!1433 = !DILocation(line: 378, column: 7, scope: !1368)
!1434 = !DILocation(line: 380, column: 15, scope: !1435)
!1435 = distinct !DILexicalBlock(scope: !1366, file: !1, line: 380, column: 11)
!1436 = !DILocation(line: 380, column: 22, scope: !1435)
!1437 = !DILocation(line: 380, column: 31, scope: !1435)
!1438 = !DILocation(line: 380, column: 44, scope: !1435)
!1439 = !DILocation(line: 380, column: 51, scope: !1435)
!1440 = !DILocation(line: 380, column: 57, scope: !1435)
!1441 = !DILocation(line: 380, column: 13, scope: !1435)
!1442 = !DILocation(line: 380, column: 11, scope: !1435)
!1443 = !DILocation(line: 382, column: 26, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1435, file: !1, line: 380, column: 70)
!1445 = !DILocation(line: 382, column: 2, scope: !1444)
!1446 = !DILocation(line: 382, column: 8, scope: !1444)
!1447 = !DILocation(line: 382, column: 24, scope: !1444)
!1448 = !DILocation(line: 383, column: 18, scope: !1444)
!1449 = !DILocation(line: 383, column: 2, scope: !1444)
!1450 = !DILocation(line: 383, column: 8, scope: !1444)
!1451 = !DILocation(line: 383, column: 16, scope: !1444)
!1452 = !DILocation(line: 384, column: 2, scope: !1444)
!1453 = !DILocation(line: 386, column: 5, scope: !1366)
!1454 = !DILocation(line: 366, column: 14, scope: !1360)
!1455 = !DILocation(line: 365, column: 5, scope: !1360)
!1456 = distinct !{!1456, !1364, !1457, !617}
!1457 = !DILocation(line: 386, column: 5, scope: !1354)
!1458 = !DILocation(line: 388, column: 5, scope: !1355)
!1459 = !DILocation(line: 388, column: 11, scope: !1355)
!1460 = !DILocation(line: 388, column: 19, scope: !1355)
!1461 = !DILocation(line: 389, column: 3, scope: !1355)
!1462 = !DILocation(line: 364, column: 15, scope: !1348)
!1463 = !DILocation(line: 363, column: 3, scope: !1348)
!1464 = distinct !{!1464, !1352, !1465, !617}
!1465 = !DILocation(line: 389, column: 3, scope: !1343)
!1466 = !DILocation(line: 391, column: 3, scope: !1274)
!1467 = !DILocation(line: 391, column: 9, scope: !1274)
!1468 = !DILocation(line: 391, column: 21, scope: !1274)
!1469 = !DILocation(line: 392, column: 18, scope: !1274)
!1470 = !DILocation(line: 392, column: 3, scope: !1274)
!1471 = !DILocation(line: 393, column: 3, scope: !1274)
!1472 = !DILocation(line: 394, column: 1, scope: !1274)
