; ModuleID = 'cBench/consumer_jpeg_c/src/jdcoefct.c'
source_filename = "cBench/consumer_jpeg_c/src/jdcoefct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jpeg_decompress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.my_coef_controller = type { %struct.jpeg_d_coef_controller, i32, i32, i32, [10 x ptr], [10 x ptr], ptr }
%struct.jpeg_d_coef_controller = type { ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.jpeg_entropy_decoder = type { ptr, ptr }
%struct.jpeg_input_controller = type { ptr, ptr, ptr, ptr, i32, i32 }
%struct.jpeg_inverse_dct = type { ptr, [10 x ptr] }
%struct.JQUANT_TBL = type { [64 x i16], i32 }

; Function Attrs: noinline nounwind uwtable
define dso_local void @jinit_d_coef_controller(ptr noundef %0, i32 noundef %1) #0 !dbg !472 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !474, !DIExpression(), !475)
  store i32 %1, ptr %4, align 4
    #dbg_declare(ptr %4, !476, !DIExpression(), !477)
    #dbg_declare(ptr %5, !478, !DIExpression(), !479)
  %11 = load ptr, ptr %3, align 8, !dbg !480
  %12 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %11, i32 0, i32 1, !dbg !481
  %13 = load ptr, ptr %12, align 8, !dbg !481
  %14 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %13, i32 0, i32 0, !dbg !482
  %15 = load ptr, ptr %14, align 8, !dbg !482
  %16 = load ptr, ptr %3, align 8, !dbg !483
  %17 = call ptr %15(ptr noundef %16, i32 noundef 1, i64 noundef 224), !dbg !484
  store ptr %17, ptr %5, align 8, !dbg !485
  %18 = load ptr, ptr %5, align 8, !dbg !486
  %19 = load ptr, ptr %3, align 8, !dbg !487
  %20 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %19, i32 0, i32 75, !dbg !488
  store ptr %18, ptr %20, align 8, !dbg !489
  %21 = load ptr, ptr %5, align 8, !dbg !490
  %22 = getelementptr inbounds nuw %struct.my_coef_controller, ptr %21, i32 0, i32 0, !dbg !491
  %23 = getelementptr inbounds nuw %struct.jpeg_d_coef_controller, ptr %22, i32 0, i32 0, !dbg !492
  store ptr @start_input_pass, ptr %23, align 8, !dbg !493
  %24 = load ptr, ptr %5, align 8, !dbg !494
  %25 = getelementptr inbounds nuw %struct.my_coef_controller, ptr %24, i32 0, i32 0, !dbg !495
  %26 = getelementptr inbounds nuw %struct.jpeg_d_coef_controller, ptr %25, i32 0, i32 2, !dbg !496
  store ptr @start_output_pass, ptr %26, align 8, !dbg !497
  %27 = load ptr, ptr %5, align 8, !dbg !498
  %28 = getelementptr inbounds nuw %struct.my_coef_controller, ptr %27, i32 0, i32 6, !dbg !499
  store ptr null, ptr %28, align 8, !dbg !500
  %29 = load i32, ptr %4, align 4, !dbg !501
  %30 = icmp ne i32 %29, 0, !dbg !501
  br i1 %30, label %31, label %104, !dbg !501

31:                                               ; preds = %2
    #dbg_declare(ptr %6, !503, !DIExpression(), !505)
    #dbg_declare(ptr %7, !506, !DIExpression(), !507)
    #dbg_declare(ptr %8, !508, !DIExpression(), !509)
  store i32 0, ptr %6, align 4, !dbg !510
  %32 = load ptr, ptr %3, align 8, !dbg !512
  %33 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %32, i32 0, i32 43, !dbg !513
  %34 = load ptr, ptr %33, align 8, !dbg !513
  store ptr %34, ptr %8, align 8, !dbg !514
  br label %35, !dbg !515

35:                                               ; preds = %86, %31
  %36 = load i32, ptr %6, align 4, !dbg !516
  %37 = load ptr, ptr %3, align 8, !dbg !518
  %38 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %37, i32 0, i32 8, !dbg !519
  %39 = load i32, ptr %38, align 8, !dbg !519
  %40 = icmp slt i32 %36, %39, !dbg !520
  br i1 %40, label %41, label %91, !dbg !521

41:                                               ; preds = %35
  %42 = load ptr, ptr %8, align 8, !dbg !522
  %43 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %42, i32 0, i32 3, !dbg !524
  %44 = load i32, ptr %43, align 4, !dbg !524
  store i32 %44, ptr %7, align 4, !dbg !525
  %45 = load ptr, ptr %3, align 8, !dbg !526
  %46 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %45, i32 0, i32 44, !dbg !528
  %47 = load i32, ptr %46, align 8, !dbg !528
  %48 = icmp ne i32 %47, 0, !dbg !526
  br i1 %48, label %49, label %52, !dbg !526

49:                                               ; preds = %41
  %50 = load i32, ptr %7, align 4, !dbg !529
  %51 = mul nsw i32 %50, 3, !dbg !529
  store i32 %51, ptr %7, align 4, !dbg !529
  br label %52, !dbg !530

52:                                               ; preds = %49, %41
  %53 = load ptr, ptr %3, align 8, !dbg !531
  %54 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %53, i32 0, i32 1, !dbg !532
  %55 = load ptr, ptr %54, align 8, !dbg !532
  %56 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %55, i32 0, i32 5, !dbg !533
  %57 = load ptr, ptr %56, align 8, !dbg !533
  %58 = load ptr, ptr %3, align 8, !dbg !534
  %59 = load ptr, ptr %8, align 8, !dbg !535
  %60 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %59, i32 0, i32 7, !dbg !536
  %61 = load i32, ptr %60, align 4, !dbg !536
  %62 = zext i32 %61 to i64, !dbg !537
  %63 = load ptr, ptr %8, align 8, !dbg !538
  %64 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %63, i32 0, i32 2, !dbg !539
  %65 = load i32, ptr %64, align 8, !dbg !539
  %66 = sext i32 %65 to i64, !dbg !540
  %67 = call i64 @jround_up(i64 noundef %62, i64 noundef %66), !dbg !541
  %68 = trunc i64 %67 to i32, !dbg !542
  %69 = load ptr, ptr %8, align 8, !dbg !543
  %70 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %69, i32 0, i32 8, !dbg !544
  %71 = load i32, ptr %70, align 8, !dbg !544
  %72 = zext i32 %71 to i64, !dbg !545
  %73 = load ptr, ptr %8, align 8, !dbg !546
  %74 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %73, i32 0, i32 3, !dbg !547
  %75 = load i32, ptr %74, align 4, !dbg !547
  %76 = sext i32 %75 to i64, !dbg !548
  %77 = call i64 @jround_up(i64 noundef %72, i64 noundef %76), !dbg !549
  %78 = trunc i64 %77 to i32, !dbg !550
  %79 = load i32, ptr %7, align 4, !dbg !551
  %80 = call ptr %57(ptr noundef %58, i32 noundef 1, i32 noundef 1, i32 noundef %68, i32 noundef %78, i32 noundef %79), !dbg !552
  %81 = load ptr, ptr %5, align 8, !dbg !553
  %82 = getelementptr inbounds nuw %struct.my_coef_controller, ptr %81, i32 0, i32 5, !dbg !554
  %83 = load i32, ptr %6, align 4, !dbg !555
  %84 = sext i32 %83 to i64, !dbg !553
  %85 = getelementptr inbounds [10 x ptr], ptr %82, i64 0, i64 %84, !dbg !553
  store ptr %80, ptr %85, align 8, !dbg !556
  br label %86, !dbg !557

86:                                               ; preds = %52
  %87 = load i32, ptr %6, align 4, !dbg !558
  %88 = add nsw i32 %87, 1, !dbg !558
  store i32 %88, ptr %6, align 4, !dbg !558
  %89 = load ptr, ptr %8, align 8, !dbg !559
  %90 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %89, i32 1, !dbg !559
  store ptr %90, ptr %8, align 8, !dbg !559
  br label %35, !dbg !560, !llvm.loop !561

91:                                               ; preds = %35
  %92 = load ptr, ptr %5, align 8, !dbg !564
  %93 = getelementptr inbounds nuw %struct.my_coef_controller, ptr %92, i32 0, i32 0, !dbg !565
  %94 = getelementptr inbounds nuw %struct.jpeg_d_coef_controller, ptr %93, i32 0, i32 1, !dbg !566
  store ptr @consume_data, ptr %94, align 8, !dbg !567
  %95 = load ptr, ptr %5, align 8, !dbg !568
  %96 = getelementptr inbounds nuw %struct.my_coef_controller, ptr %95, i32 0, i32 0, !dbg !569
  %97 = getelementptr inbounds nuw %struct.jpeg_d_coef_controller, ptr %96, i32 0, i32 3, !dbg !570
  store ptr @decompress_data, ptr %97, align 8, !dbg !571
  %98 = load ptr, ptr %5, align 8, !dbg !572
  %99 = getelementptr inbounds nuw %struct.my_coef_controller, ptr %98, i32 0, i32 5, !dbg !573
  %100 = getelementptr inbounds [10 x ptr], ptr %99, i64 0, i64 0, !dbg !572
  %101 = load ptr, ptr %5, align 8, !dbg !574
  %102 = getelementptr inbounds nuw %struct.my_coef_controller, ptr %101, i32 0, i32 0, !dbg !575
  %103 = getelementptr inbounds nuw %struct.jpeg_d_coef_controller, ptr %102, i32 0, i32 4, !dbg !576
  store ptr %100, ptr %103, align 8, !dbg !577
  br label %138, !dbg !578

104:                                              ; preds = %2
    #dbg_declare(ptr %9, !579, !DIExpression(), !581)
    #dbg_declare(ptr %10, !582, !DIExpression(), !583)
  %105 = load ptr, ptr %3, align 8, !dbg !584
  %106 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %105, i32 0, i32 1, !dbg !585
  %107 = load ptr, ptr %106, align 8, !dbg !585
  %108 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %107, i32 0, i32 1, !dbg !586
  %109 = load ptr, ptr %108, align 8, !dbg !586
  %110 = load ptr, ptr %3, align 8, !dbg !587
  %111 = call ptr %109(ptr noundef %110, i32 noundef 1, i64 noundef 1280), !dbg !588
  store ptr %111, ptr %9, align 8, !dbg !589
  store i32 0, ptr %10, align 4, !dbg !590
  br label %112, !dbg !592

112:                                              ; preds = %125, %104
  %113 = load i32, ptr %10, align 4, !dbg !593
  %114 = icmp slt i32 %113, 10, !dbg !595
  br i1 %114, label %115, label %128, !dbg !596

115:                                              ; preds = %112
  %116 = load ptr, ptr %9, align 8, !dbg !597
  %117 = load i32, ptr %10, align 4, !dbg !599
  %118 = sext i32 %117 to i64, !dbg !600
  %119 = getelementptr inbounds [64 x i16], ptr %116, i64 %118, !dbg !600
  %120 = load ptr, ptr %5, align 8, !dbg !601
  %121 = getelementptr inbounds nuw %struct.my_coef_controller, ptr %120, i32 0, i32 4, !dbg !602
  %122 = load i32, ptr %10, align 4, !dbg !603
  %123 = sext i32 %122 to i64, !dbg !601
  %124 = getelementptr inbounds [10 x ptr], ptr %121, i64 0, i64 %123, !dbg !601
  store ptr %119, ptr %124, align 8, !dbg !604
  br label %125, !dbg !605

125:                                              ; preds = %115
  %126 = load i32, ptr %10, align 4, !dbg !606
  %127 = add nsw i32 %126, 1, !dbg !606
  store i32 %127, ptr %10, align 4, !dbg !606
  br label %112, !dbg !607, !llvm.loop !608

128:                                              ; preds = %112
  %129 = load ptr, ptr %5, align 8, !dbg !610
  %130 = getelementptr inbounds nuw %struct.my_coef_controller, ptr %129, i32 0, i32 0, !dbg !611
  %131 = getelementptr inbounds nuw %struct.jpeg_d_coef_controller, ptr %130, i32 0, i32 1, !dbg !612
  store ptr @dummy_consume_data, ptr %131, align 8, !dbg !613
  %132 = load ptr, ptr %5, align 8, !dbg !614
  %133 = getelementptr inbounds nuw %struct.my_coef_controller, ptr %132, i32 0, i32 0, !dbg !615
  %134 = getelementptr inbounds nuw %struct.jpeg_d_coef_controller, ptr %133, i32 0, i32 3, !dbg !616
  store ptr @decompress_onepass, ptr %134, align 8, !dbg !617
  %135 = load ptr, ptr %5, align 8, !dbg !618
  %136 = getelementptr inbounds nuw %struct.my_coef_controller, ptr %135, i32 0, i32 0, !dbg !619
  %137 = getelementptr inbounds nuw %struct.jpeg_d_coef_controller, ptr %136, i32 0, i32 4, !dbg !620
  store ptr null, ptr %137, align 8, !dbg !621
  br label %138

138:                                              ; preds = %128, %91
  ret void, !dbg !622
}

; Function Attrs: noinline nounwind uwtable
define internal void @start_input_pass(ptr noundef %0) #0 !dbg !623 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !624, !DIExpression(), !625)
  %3 = load ptr, ptr %2, align 8, !dbg !626
  %4 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %3, i32 0, i32 35, !dbg !627
  store i32 0, ptr %4, align 8, !dbg !628
  %5 = load ptr, ptr %2, align 8, !dbg !629
  call void @start_iMCU_row(ptr noundef %5), !dbg !630
  ret void, !dbg !631
}

; Function Attrs: noinline nounwind uwtable
define internal void @start_output_pass(ptr noundef %0) #0 !dbg !632 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !633, !DIExpression(), !634)
    #dbg_declare(ptr %3, !635, !DIExpression(), !636)
  %4 = load ptr, ptr %2, align 8, !dbg !637
  %5 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %4, i32 0, i32 75, !dbg !638
  %6 = load ptr, ptr %5, align 8, !dbg !638
  store ptr %6, ptr %3, align 8, !dbg !636
  %7 = load ptr, ptr %3, align 8, !dbg !639
  %8 = getelementptr inbounds nuw %struct.my_coef_controller, ptr %7, i32 0, i32 0, !dbg !641
  %9 = getelementptr inbounds nuw %struct.jpeg_d_coef_controller, ptr %8, i32 0, i32 4, !dbg !642
  %10 = load ptr, ptr %9, align 8, !dbg !642
  %11 = icmp ne ptr %10, null, !dbg !643
  br i1 %11, label %12, label %30, !dbg !643

12:                                               ; preds = %1
  %13 = load ptr, ptr %2, align 8, !dbg !644
  %14 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %13, i32 0, i32 18, !dbg !647
  %15 = load i32, ptr %14, align 8, !dbg !647
  %16 = icmp ne i32 %15, 0, !dbg !644
  br i1 %16, label %17, label %25, !dbg !648

17:                                               ; preds = %12
  %18 = load ptr, ptr %2, align 8, !dbg !649
  %19 = call i32 @smoothing_ok(ptr noundef %18), !dbg !650
  %20 = icmp ne i32 %19, 0, !dbg !650
  br i1 %20, label %21, label %25, !dbg !648

21:                                               ; preds = %17
  %22 = load ptr, ptr %3, align 8, !dbg !651
  %23 = getelementptr inbounds nuw %struct.my_coef_controller, ptr %22, i32 0, i32 0, !dbg !652
  %24 = getelementptr inbounds nuw %struct.jpeg_d_coef_controller, ptr %23, i32 0, i32 3, !dbg !653
  store ptr @decompress_smooth_data, ptr %24, align 8, !dbg !654
  br label %29, !dbg !651

25:                                               ; preds = %17, %12
  %26 = load ptr, ptr %3, align 8, !dbg !655
  %27 = getelementptr inbounds nuw %struct.my_coef_controller, ptr %26, i32 0, i32 0, !dbg !656
  %28 = getelementptr inbounds nuw %struct.jpeg_d_coef_controller, ptr %27, i32 0, i32 3, !dbg !657
  store ptr @decompress_data, ptr %28, align 8, !dbg !658
  br label %29

29:                                               ; preds = %25, %21
  br label %30, !dbg !659

30:                                               ; preds = %29, %1
  %31 = load ptr, ptr %2, align 8, !dbg !660
  %32 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %31, i32 0, i32 37, !dbg !661
  store i32 0, ptr %32, align 8, !dbg !662
  ret void, !dbg !663
}

declare i64 @jround_up(i64 noundef, i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @consume_data(ptr noundef %0) #0 !dbg !664 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [4 x ptr], align 16
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !665, !DIExpression(), !666)
    #dbg_declare(ptr %4, !667, !DIExpression(), !668)
  %15 = load ptr, ptr %3, align 8, !dbg !669
  %16 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %15, i32 0, i32 75, !dbg !670
  %17 = load ptr, ptr %16, align 8, !dbg !670
  store ptr %17, ptr %4, align 8, !dbg !668
    #dbg_declare(ptr %5, !671, !DIExpression(), !672)
    #dbg_declare(ptr %6, !673, !DIExpression(), !674)
    #dbg_declare(ptr %7, !675, !DIExpression(), !676)
    #dbg_declare(ptr %8, !677, !DIExpression(), !678)
    #dbg_declare(ptr %9, !679, !DIExpression(), !680)
    #dbg_declare(ptr %10, !681, !DIExpression(), !682)
    #dbg_declare(ptr %11, !683, !DIExpression(), !684)
    #dbg_declare(ptr %12, !685, !DIExpression(), !687)
    #dbg_declare(ptr %13, !688, !DIExpression(), !689)
    #dbg_declare(ptr %14, !690, !DIExpression(), !691)
  store i32 0, ptr %7, align 4, !dbg !692
  br label %18, !dbg !694

18:                                               ; preds = %59, %1
  %19 = load i32, ptr %7, align 4, !dbg !695
  %20 = load ptr, ptr %3, align 8, !dbg !697
  %21 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %20, i32 0, i32 62, !dbg !698
  %22 = load i32, ptr %21, align 8, !dbg !698
  %23 = icmp slt i32 %19, %22, !dbg !699
  br i1 %23, label %24, label %62, !dbg !700

24:                                               ; preds = %18
  %25 = load ptr, ptr %3, align 8, !dbg !701
  %26 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %25, i32 0, i32 63, !dbg !703
  %27 = load i32, ptr %7, align 4, !dbg !704
  %28 = sext i32 %27 to i64, !dbg !701
  %29 = getelementptr inbounds [4 x ptr], ptr %26, i64 0, i64 %28, !dbg !701
  %30 = load ptr, ptr %29, align 8, !dbg !701
  store ptr %30, ptr %14, align 8, !dbg !705
  %31 = load ptr, ptr %3, align 8, !dbg !706
  %32 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %31, i32 0, i32 1, !dbg !707
  %33 = load ptr, ptr %32, align 8, !dbg !707
  %34 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %33, i32 0, i32 8, !dbg !708
  %35 = load ptr, ptr %34, align 8, !dbg !708
  %36 = load ptr, ptr %3, align 8, !dbg !709
  %37 = load ptr, ptr %4, align 8, !dbg !710
  %38 = getelementptr inbounds nuw %struct.my_coef_controller, ptr %37, i32 0, i32 5, !dbg !711
  %39 = load ptr, ptr %14, align 8, !dbg !712
  %40 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %39, i32 0, i32 1, !dbg !713
  %41 = load i32, ptr %40, align 4, !dbg !713
  %42 = sext i32 %41 to i64, !dbg !710
  %43 = getelementptr inbounds [10 x ptr], ptr %38, i64 0, i64 %42, !dbg !710
  %44 = load ptr, ptr %43, align 8, !dbg !710
  %45 = load ptr, ptr %3, align 8, !dbg !714
  %46 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %45, i32 0, i32 35, !dbg !715
  %47 = load i32, ptr %46, align 8, !dbg !715
  %48 = load ptr, ptr %14, align 8, !dbg !716
  %49 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %48, i32 0, i32 3, !dbg !717
  %50 = load i32, ptr %49, align 4, !dbg !717
  %51 = mul i32 %47, %50, !dbg !718
  %52 = load ptr, ptr %14, align 8, !dbg !719
  %53 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %52, i32 0, i32 3, !dbg !720
  %54 = load i32, ptr %53, align 4, !dbg !720
  %55 = call ptr %35(ptr noundef %36, ptr noundef %44, i32 noundef %51, i32 noundef %54, i32 noundef 1), !dbg !721
  %56 = load i32, ptr %7, align 4, !dbg !722
  %57 = sext i32 %56 to i64, !dbg !723
  %58 = getelementptr inbounds [4 x ptr], ptr %12, i64 0, i64 %57, !dbg !723
  store ptr %55, ptr %58, align 8, !dbg !724
  br label %59, !dbg !725

59:                                               ; preds = %24
  %60 = load i32, ptr %7, align 4, !dbg !726
  %61 = add nsw i32 %60, 1, !dbg !726
  store i32 %61, ptr %7, align 4, !dbg !726
  br label %18, !dbg !727, !llvm.loop !728

62:                                               ; preds = %18
  %63 = load ptr, ptr %4, align 8, !dbg !730
  %64 = getelementptr inbounds nuw %struct.my_coef_controller, ptr %63, i32 0, i32 2, !dbg !732
  %65 = load i32, ptr %64, align 4, !dbg !732
  store i32 %65, ptr %10, align 4, !dbg !733
  br label %66, !dbg !734

66:                                               ; preds = %173, %62
  %67 = load i32, ptr %10, align 4, !dbg !735
  %68 = load ptr, ptr %4, align 8, !dbg !737
  %69 = getelementptr inbounds nuw %struct.my_coef_controller, ptr %68, i32 0, i32 3, !dbg !738
  %70 = load i32, ptr %69, align 8, !dbg !738
  %71 = icmp slt i32 %67, %70, !dbg !739
  br i1 %71, label %72, label %176, !dbg !740

72:                                               ; preds = %66
  %73 = load ptr, ptr %4, align 8, !dbg !741
  %74 = getelementptr inbounds nuw %struct.my_coef_controller, ptr %73, i32 0, i32 1, !dbg !744
  %75 = load i32, ptr %74, align 8, !dbg !744
  store i32 %75, ptr %5, align 4, !dbg !745
  br label %76, !dbg !746

76:                                               ; preds = %167, %72
  %77 = load i32, ptr %5, align 4, !dbg !747
  %78 = load ptr, ptr %3, align 8, !dbg !749
  %79 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %78, i32 0, i32 64, !dbg !750
  %80 = load i32, ptr %79, align 8, !dbg !750
  %81 = icmp ult i32 %77, %80, !dbg !751
  br i1 %81, label %82, label %170, !dbg !752

82:                                               ; preds = %76
  store i32 0, ptr %6, align 4, !dbg !753
  store i32 0, ptr %7, align 4, !dbg !755
  br label %83, !dbg !757

83:                                               ; preds = %144, %82
  %84 = load i32, ptr %7, align 4, !dbg !758
  %85 = load ptr, ptr %3, align 8, !dbg !760
  %86 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %85, i32 0, i32 62, !dbg !761
  %87 = load i32, ptr %86, align 8, !dbg !761
  %88 = icmp slt i32 %84, %87, !dbg !762
  br i1 %88, label %89, label %147, !dbg !763

89:                                               ; preds = %83
  %90 = load ptr, ptr %3, align 8, !dbg !764
  %91 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %90, i32 0, i32 63, !dbg !766
  %92 = load i32, ptr %7, align 4, !dbg !767
  %93 = sext i32 %92 to i64, !dbg !764
  %94 = getelementptr inbounds [4 x ptr], ptr %91, i64 0, i64 %93, !dbg !764
  %95 = load ptr, ptr %94, align 8, !dbg !764
  store ptr %95, ptr %14, align 8, !dbg !768
  %96 = load i32, ptr %5, align 4, !dbg !769
  %97 = load ptr, ptr %14, align 8, !dbg !770
  %98 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %97, i32 0, i32 13, !dbg !771
  %99 = load i32, ptr %98, align 4, !dbg !771
  %100 = mul i32 %96, %99, !dbg !772
  store i32 %100, ptr %11, align 4, !dbg !773
  store i32 0, ptr %9, align 4, !dbg !774
  br label %101, !dbg !776

101:                                              ; preds = %140, %89
  %102 = load i32, ptr %9, align 4, !dbg !777
  %103 = load ptr, ptr %14, align 8, !dbg !779
  %104 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %103, i32 0, i32 14, !dbg !780
  %105 = load i32, ptr %104, align 8, !dbg !780
  %106 = icmp slt i32 %102, %105, !dbg !781
  br i1 %106, label %107, label %143, !dbg !782

107:                                              ; preds = %101
  %108 = load i32, ptr %7, align 4, !dbg !783
  %109 = sext i32 %108 to i64, !dbg !785
  %110 = getelementptr inbounds [4 x ptr], ptr %12, i64 0, i64 %109, !dbg !785
  %111 = load ptr, ptr %110, align 8, !dbg !785
  %112 = load i32, ptr %9, align 4, !dbg !786
  %113 = load i32, ptr %10, align 4, !dbg !787
  %114 = add nsw i32 %112, %113, !dbg !788
  %115 = sext i32 %114 to i64, !dbg !785
  %116 = getelementptr inbounds ptr, ptr %111, i64 %115, !dbg !785
  %117 = load ptr, ptr %116, align 8, !dbg !785
  %118 = load i32, ptr %11, align 4, !dbg !789
  %119 = zext i32 %118 to i64, !dbg !790
  %120 = getelementptr inbounds nuw [64 x i16], ptr %117, i64 %119, !dbg !790
  store ptr %120, ptr %13, align 8, !dbg !791
  store i32 0, ptr %8, align 4, !dbg !792
  br label %121, !dbg !794

121:                                              ; preds = %136, %107
  %122 = load i32, ptr %8, align 4, !dbg !795
  %123 = load ptr, ptr %14, align 8, !dbg !797
  %124 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %123, i32 0, i32 13, !dbg !798
  %125 = load i32, ptr %124, align 4, !dbg !798
  %126 = icmp slt i32 %122, %125, !dbg !799
  br i1 %126, label %127, label %139, !dbg !800

127:                                              ; preds = %121
  %128 = load ptr, ptr %13, align 8, !dbg !801
  %129 = getelementptr inbounds nuw [64 x i16], ptr %128, i32 1, !dbg !801
  store ptr %129, ptr %13, align 8, !dbg !801
  %130 = load ptr, ptr %4, align 8, !dbg !803
  %131 = getelementptr inbounds nuw %struct.my_coef_controller, ptr %130, i32 0, i32 4, !dbg !804
  %132 = load i32, ptr %6, align 4, !dbg !805
  %133 = add nsw i32 %132, 1, !dbg !805
  store i32 %133, ptr %6, align 4, !dbg !805
  %134 = sext i32 %132 to i64, !dbg !803
  %135 = getelementptr inbounds [10 x ptr], ptr %131, i64 0, i64 %134, !dbg !803
  store ptr %128, ptr %135, align 8, !dbg !806
  br label %136, !dbg !807

136:                                              ; preds = %127
  %137 = load i32, ptr %8, align 4, !dbg !808
  %138 = add nsw i32 %137, 1, !dbg !808
  store i32 %138, ptr %8, align 4, !dbg !808
  br label %121, !dbg !809, !llvm.loop !810

139:                                              ; preds = %121
  br label %140, !dbg !812

140:                                              ; preds = %139
  %141 = load i32, ptr %9, align 4, !dbg !813
  %142 = add nsw i32 %141, 1, !dbg !813
  store i32 %142, ptr %9, align 4, !dbg !813
  br label %101, !dbg !814, !llvm.loop !815

143:                                              ; preds = %101
  br label %144, !dbg !817

144:                                              ; preds = %143
  %145 = load i32, ptr %7, align 4, !dbg !818
  %146 = add nsw i32 %145, 1, !dbg !818
  store i32 %146, ptr %7, align 4, !dbg !818
  br label %83, !dbg !819, !llvm.loop !820

147:                                              ; preds = %83
  %148 = load ptr, ptr %3, align 8, !dbg !822
  %149 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %148, i32 0, i32 79, !dbg !824
  %150 = load ptr, ptr %149, align 8, !dbg !824
  %151 = getelementptr inbounds nuw %struct.jpeg_entropy_decoder, ptr %150, i32 0, i32 1, !dbg !825
  %152 = load ptr, ptr %151, align 8, !dbg !825
  %153 = load ptr, ptr %3, align 8, !dbg !826
  %154 = load ptr, ptr %4, align 8, !dbg !827
  %155 = getelementptr inbounds nuw %struct.my_coef_controller, ptr %154, i32 0, i32 4, !dbg !828
  %156 = getelementptr inbounds [10 x ptr], ptr %155, i64 0, i64 0, !dbg !827
  %157 = call i32 %152(ptr noundef %153, ptr noundef %156), !dbg !829
  %158 = icmp ne i32 %157, 0, !dbg !829
  br i1 %158, label %166, label %159, !dbg !830

159:                                              ; preds = %147
  %160 = load i32, ptr %10, align 4, !dbg !831
  %161 = load ptr, ptr %4, align 8, !dbg !833
  %162 = getelementptr inbounds nuw %struct.my_coef_controller, ptr %161, i32 0, i32 2, !dbg !834
  store i32 %160, ptr %162, align 4, !dbg !835
  %163 = load i32, ptr %5, align 4, !dbg !836
  %164 = load ptr, ptr %4, align 8, !dbg !837
  %165 = getelementptr inbounds nuw %struct.my_coef_controller, ptr %164, i32 0, i32 1, !dbg !838
  store i32 %163, ptr %165, align 8, !dbg !839
  store i32 0, ptr %2, align 4, !dbg !840
  br label %194, !dbg !840

166:                                              ; preds = %147
  br label %167, !dbg !841

167:                                              ; preds = %166
  %168 = load i32, ptr %5, align 4, !dbg !842
  %169 = add i32 %168, 1, !dbg !842
  store i32 %169, ptr %5, align 4, !dbg !842
  br label %76, !dbg !843, !llvm.loop !844

170:                                              ; preds = %76
  %171 = load ptr, ptr %4, align 8, !dbg !846
  %172 = getelementptr inbounds nuw %struct.my_coef_controller, ptr %171, i32 0, i32 1, !dbg !847
  store i32 0, ptr %172, align 8, !dbg !848
  br label %173, !dbg !849

173:                                              ; preds = %170
  %174 = load i32, ptr %10, align 4, !dbg !850
  %175 = add nsw i32 %174, 1, !dbg !850
  store i32 %175, ptr %10, align 4, !dbg !850
  br label %66, !dbg !851, !llvm.loop !852

176:                                              ; preds = %66
  %177 = load ptr, ptr %3, align 8, !dbg !854
  %178 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %177, i32 0, i32 35, !dbg !856
  %179 = load i32, ptr %178, align 8, !dbg !857
  %180 = add i32 %179, 1, !dbg !857
  store i32 %180, ptr %178, align 8, !dbg !857
  %181 = load ptr, ptr %3, align 8, !dbg !858
  %182 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %181, i32 0, i32 60, !dbg !859
  %183 = load i32, ptr %182, align 8, !dbg !859
  %184 = icmp ult i32 %180, %183, !dbg !860
  br i1 %184, label %185, label %187, !dbg !860

185:                                              ; preds = %176
  %186 = load ptr, ptr %3, align 8, !dbg !861
  call void @start_iMCU_row(ptr noundef %186), !dbg !863
  store i32 3, ptr %2, align 4, !dbg !864
  br label %194, !dbg !864

187:                                              ; preds = %176
  %188 = load ptr, ptr %3, align 8, !dbg !865
  %189 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %188, i32 0, i32 77, !dbg !866
  %190 = load ptr, ptr %189, align 8, !dbg !866
  %191 = getelementptr inbounds nuw %struct.jpeg_input_controller, ptr %190, i32 0, i32 3, !dbg !867
  %192 = load ptr, ptr %191, align 8, !dbg !867
  %193 = load ptr, ptr %3, align 8, !dbg !868
  call void %192(ptr noundef %193), !dbg !869
  store i32 4, ptr %2, align 4, !dbg !870
  br label %194, !dbg !870

194:                                              ; preds = %187, %185, %159
  %195 = load i32, ptr %2, align 4, !dbg !871
  ret i32 %195, !dbg !871
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @decompress_data(ptr noundef %0, ptr noundef %1) #0 !dbg !872 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca i32, align 4
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
    #dbg_declare(ptr %4, !873, !DIExpression(), !874)
  store ptr %1, ptr %5, align 8
    #dbg_declare(ptr %5, !875, !DIExpression(), !876)
    #dbg_declare(ptr %6, !877, !DIExpression(), !878)
  %18 = load ptr, ptr %4, align 8, !dbg !879
  %19 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %18, i32 0, i32 75, !dbg !880
  %20 = load ptr, ptr %19, align 8, !dbg !880
  store ptr %20, ptr %6, align 8, !dbg !878
    #dbg_declare(ptr %7, !881, !DIExpression(), !882)
  %21 = load ptr, ptr %4, align 8, !dbg !883
  %22 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %21, i32 0, i32 60, !dbg !884
  %23 = load i32, ptr %22, align 8, !dbg !884
  %24 = sub i32 %23, 1, !dbg !885
  store i32 %24, ptr %7, align 4, !dbg !882
    #dbg_declare(ptr %8, !886, !DIExpression(), !887)
    #dbg_declare(ptr %9, !888, !DIExpression(), !889)
    #dbg_declare(ptr %10, !890, !DIExpression(), !891)
    #dbg_declare(ptr %11, !892, !DIExpression(), !893)
    #dbg_declare(ptr %12, !894, !DIExpression(), !895)
    #dbg_declare(ptr %13, !896, !DIExpression(), !897)
    #dbg_declare(ptr %14, !898, !DIExpression(), !899)
    #dbg_declare(ptr %15, !900, !DIExpression(), !901)
    #dbg_declare(ptr %16, !902, !DIExpression(), !903)
    #dbg_declare(ptr %17, !904, !DIExpression(), !905)
  br label %25, !dbg !906

25:                                               ; preds = %63, %2
  %26 = load ptr, ptr %4, align 8, !dbg !907
  %27 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %26, i32 0, i32 34, !dbg !908
  %28 = load i32, ptr %27, align 4, !dbg !908
  %29 = load ptr, ptr %4, align 8, !dbg !909
  %30 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %29, i32 0, i32 36, !dbg !910
  %31 = load i32, ptr %30, align 4, !dbg !910
  %32 = icmp slt i32 %28, %31, !dbg !911
  br i1 %32, label %51, label %33, !dbg !912

33:                                               ; preds = %25
  %34 = load ptr, ptr %4, align 8, !dbg !913
  %35 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %34, i32 0, i32 34, !dbg !914
  %36 = load i32, ptr %35, align 4, !dbg !914
  %37 = load ptr, ptr %4, align 8, !dbg !915
  %38 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %37, i32 0, i32 36, !dbg !916
  %39 = load i32, ptr %38, align 4, !dbg !916
  %40 = icmp eq i32 %36, %39, !dbg !917
  br i1 %40, label %41, label %49, !dbg !918

41:                                               ; preds = %33
  %42 = load ptr, ptr %4, align 8, !dbg !919
  %43 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %42, i32 0, i32 35, !dbg !920
  %44 = load i32, ptr %43, align 8, !dbg !920
  %45 = load ptr, ptr %4, align 8, !dbg !921
  %46 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %45, i32 0, i32 37, !dbg !922
  %47 = load i32, ptr %46, align 8, !dbg !922
  %48 = icmp ule i32 %44, %47, !dbg !923
  br label %49

49:                                               ; preds = %41, %33
  %50 = phi i1 [ false, %33 ], [ %48, %41 ], !dbg !924
  br label %51, !dbg !912

51:                                               ; preds = %49, %25
  %52 = phi i1 [ true, %25 ], [ %50, %49 ]
  br i1 %52, label %53, label %64, !dbg !906

53:                                               ; preds = %51
  %54 = load ptr, ptr %4, align 8, !dbg !925
  %55 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %54, i32 0, i32 77, !dbg !928
  %56 = load ptr, ptr %55, align 8, !dbg !928
  %57 = getelementptr inbounds nuw %struct.jpeg_input_controller, ptr %56, i32 0, i32 0, !dbg !929
  %58 = load ptr, ptr %57, align 8, !dbg !929
  %59 = load ptr, ptr %4, align 8, !dbg !930
  %60 = call i32 %58(ptr noundef %59), !dbg !931
  %61 = icmp eq i32 %60, 0, !dbg !932
  br i1 %61, label %62, label %63, !dbg !932

62:                                               ; preds = %53
  store i32 0, ptr %3, align 4, !dbg !933
  br label %202, !dbg !933

63:                                               ; preds = %53
  br label %25, !dbg !906, !llvm.loop !934

64:                                               ; preds = %51
  store i32 0, ptr %9, align 4, !dbg !936
  %65 = load ptr, ptr %4, align 8, !dbg !938
  %66 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %65, i32 0, i32 43, !dbg !939
  %67 = load ptr, ptr %66, align 8, !dbg !939
  store ptr %67, ptr %16, align 8, !dbg !940
  br label %68, !dbg !941

68:                                               ; preds = %186, %64
  %69 = load i32, ptr %9, align 4, !dbg !942
  %70 = load ptr, ptr %4, align 8, !dbg !944
  %71 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %70, i32 0, i32 8, !dbg !945
  %72 = load i32, ptr %71, align 8, !dbg !945
  %73 = icmp slt i32 %69, %72, !dbg !946
  br i1 %73, label %74, label %191, !dbg !947

74:                                               ; preds = %68
  %75 = load ptr, ptr %16, align 8, !dbg !948
  %76 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %75, i32 0, i32 12, !dbg !951
  %77 = load i32, ptr %76, align 8, !dbg !951
  %78 = icmp ne i32 %77, 0, !dbg !948
  br i1 %78, label %80, label %79, !dbg !952

79:                                               ; preds = %74
  br label %186, !dbg !953

80:                                               ; preds = %74
  %81 = load ptr, ptr %4, align 8, !dbg !954
  %82 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %81, i32 0, i32 1, !dbg !955
  %83 = load ptr, ptr %82, align 8, !dbg !955
  %84 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %83, i32 0, i32 8, !dbg !956
  %85 = load ptr, ptr %84, align 8, !dbg !956
  %86 = load ptr, ptr %4, align 8, !dbg !957
  %87 = load ptr, ptr %6, align 8, !dbg !958
  %88 = getelementptr inbounds nuw %struct.my_coef_controller, ptr %87, i32 0, i32 5, !dbg !959
  %89 = load i32, ptr %9, align 4, !dbg !960
  %90 = sext i32 %89 to i64, !dbg !958
  %91 = getelementptr inbounds [10 x ptr], ptr %88, i64 0, i64 %90, !dbg !958
  %92 = load ptr, ptr %91, align 8, !dbg !958
  %93 = load ptr, ptr %4, align 8, !dbg !961
  %94 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %93, i32 0, i32 37, !dbg !962
  %95 = load i32, ptr %94, align 8, !dbg !962
  %96 = load ptr, ptr %16, align 8, !dbg !963
  %97 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %96, i32 0, i32 3, !dbg !964
  %98 = load i32, ptr %97, align 4, !dbg !964
  %99 = mul i32 %95, %98, !dbg !965
  %100 = load ptr, ptr %16, align 8, !dbg !966
  %101 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %100, i32 0, i32 3, !dbg !967
  %102 = load i32, ptr %101, align 4, !dbg !967
  %103 = call ptr %85(ptr noundef %86, ptr noundef %92, i32 noundef %99, i32 noundef %102, i32 noundef 0), !dbg !968
  store ptr %103, ptr %12, align 8, !dbg !969
  %104 = load ptr, ptr %4, align 8, !dbg !970
  %105 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %104, i32 0, i32 37, !dbg !972
  %106 = load i32, ptr %105, align 8, !dbg !972
  %107 = load i32, ptr %7, align 4, !dbg !973
  %108 = icmp ult i32 %106, %107, !dbg !974
  br i1 %108, label %109, label %113, !dbg !974

109:                                              ; preds = %80
  %110 = load ptr, ptr %16, align 8, !dbg !975
  %111 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %110, i32 0, i32 3, !dbg !976
  %112 = load i32, ptr %111, align 4, !dbg !976
  store i32 %112, ptr %11, align 4, !dbg !977
  br label %128, !dbg !978

113:                                              ; preds = %80
  %114 = load ptr, ptr %16, align 8, !dbg !979
  %115 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %114, i32 0, i32 8, !dbg !981
  %116 = load i32, ptr %115, align 8, !dbg !981
  %117 = load ptr, ptr %16, align 8, !dbg !982
  %118 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %117, i32 0, i32 3, !dbg !983
  %119 = load i32, ptr %118, align 4, !dbg !983
  %120 = urem i32 %116, %119, !dbg !984
  store i32 %120, ptr %11, align 4, !dbg !985
  %121 = load i32, ptr %11, align 4, !dbg !986
  %122 = icmp eq i32 %121, 0, !dbg !988
  br i1 %122, label %123, label %127, !dbg !988

123:                                              ; preds = %113
  %124 = load ptr, ptr %16, align 8, !dbg !989
  %125 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %124, i32 0, i32 3, !dbg !990
  %126 = load i32, ptr %125, align 4, !dbg !990
  store i32 %126, ptr %11, align 4, !dbg !991
  br label %127, !dbg !992

127:                                              ; preds = %123, %113
  br label %128

128:                                              ; preds = %127, %109
  %129 = load ptr, ptr %4, align 8, !dbg !993
  %130 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %129, i32 0, i32 80, !dbg !994
  %131 = load ptr, ptr %130, align 8, !dbg !994
  %132 = getelementptr inbounds nuw %struct.jpeg_inverse_dct, ptr %131, i32 0, i32 1, !dbg !995
  %133 = load i32, ptr %9, align 4, !dbg !996
  %134 = sext i32 %133 to i64, !dbg !993
  %135 = getelementptr inbounds [10 x ptr], ptr %132, i64 0, i64 %134, !dbg !993
  %136 = load ptr, ptr %135, align 8, !dbg !993
  store ptr %136, ptr %17, align 8, !dbg !997
  %137 = load ptr, ptr %5, align 8, !dbg !998
  %138 = load i32, ptr %9, align 4, !dbg !999
  %139 = sext i32 %138 to i64, !dbg !998
  %140 = getelementptr inbounds ptr, ptr %137, i64 %139, !dbg !998
  %141 = load ptr, ptr %140, align 8, !dbg !998
  store ptr %141, ptr %14, align 8, !dbg !1000
  store i32 0, ptr %10, align 4, !dbg !1001
  br label %142, !dbg !1003

142:                                              ; preds = %182, %128
  %143 = load i32, ptr %10, align 4, !dbg !1004
  %144 = load i32, ptr %11, align 4, !dbg !1006
  %145 = icmp slt i32 %143, %144, !dbg !1007
  br i1 %145, label %146, label %185, !dbg !1008

146:                                              ; preds = %142
  %147 = load ptr, ptr %12, align 8, !dbg !1009
  %148 = load i32, ptr %10, align 4, !dbg !1011
  %149 = sext i32 %148 to i64, !dbg !1009
  %150 = getelementptr inbounds ptr, ptr %147, i64 %149, !dbg !1009
  %151 = load ptr, ptr %150, align 8, !dbg !1009
  store ptr %151, ptr %13, align 8, !dbg !1012
  store i32 0, ptr %15, align 4, !dbg !1013
  store i32 0, ptr %8, align 4, !dbg !1014
  br label %152, !dbg !1016

152:                                              ; preds = %172, %146
  %153 = load i32, ptr %8, align 4, !dbg !1017
  %154 = load ptr, ptr %16, align 8, !dbg !1019
  %155 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %154, i32 0, i32 7, !dbg !1020
  %156 = load i32, ptr %155, align 4, !dbg !1020
  %157 = icmp ult i32 %153, %156, !dbg !1021
  br i1 %157, label %158, label %175, !dbg !1022

158:                                              ; preds = %152
  %159 = load ptr, ptr %17, align 8, !dbg !1023
  %160 = load ptr, ptr %4, align 8, !dbg !1025
  %161 = load ptr, ptr %16, align 8, !dbg !1026
  %162 = load ptr, ptr %13, align 8, !dbg !1027
  %163 = load ptr, ptr %14, align 8, !dbg !1028
  %164 = load i32, ptr %15, align 4, !dbg !1029
  call void %159(ptr noundef %160, ptr noundef %161, ptr noundef %162, ptr noundef %163, i32 noundef %164), !dbg !1030
  %165 = load ptr, ptr %13, align 8, !dbg !1031
  %166 = getelementptr inbounds nuw [64 x i16], ptr %165, i32 1, !dbg !1031
  store ptr %166, ptr %13, align 8, !dbg !1031
  %167 = load ptr, ptr %16, align 8, !dbg !1032
  %168 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %167, i32 0, i32 9, !dbg !1033
  %169 = load i32, ptr %168, align 4, !dbg !1033
  %170 = load i32, ptr %15, align 4, !dbg !1034
  %171 = add i32 %170, %169, !dbg !1034
  store i32 %171, ptr %15, align 4, !dbg !1034
  br label %172, !dbg !1035

172:                                              ; preds = %158
  %173 = load i32, ptr %8, align 4, !dbg !1036
  %174 = add i32 %173, 1, !dbg !1036
  store i32 %174, ptr %8, align 4, !dbg !1036
  br label %152, !dbg !1037, !llvm.loop !1038

175:                                              ; preds = %152
  %176 = load ptr, ptr %16, align 8, !dbg !1040
  %177 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %176, i32 0, i32 9, !dbg !1041
  %178 = load i32, ptr %177, align 4, !dbg !1041
  %179 = load ptr, ptr %14, align 8, !dbg !1042
  %180 = sext i32 %178 to i64, !dbg !1042
  %181 = getelementptr inbounds ptr, ptr %179, i64 %180, !dbg !1042
  store ptr %181, ptr %14, align 8, !dbg !1042
  br label %182, !dbg !1043

182:                                              ; preds = %175
  %183 = load i32, ptr %10, align 4, !dbg !1044
  %184 = add nsw i32 %183, 1, !dbg !1044
  store i32 %184, ptr %10, align 4, !dbg !1044
  br label %142, !dbg !1045, !llvm.loop !1046

185:                                              ; preds = %142
  br label %186, !dbg !1048

186:                                              ; preds = %185, %79
  %187 = load i32, ptr %9, align 4, !dbg !1049
  %188 = add nsw i32 %187, 1, !dbg !1049
  store i32 %188, ptr %9, align 4, !dbg !1049
  %189 = load ptr, ptr %16, align 8, !dbg !1050
  %190 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %189, i32 1, !dbg !1050
  store ptr %190, ptr %16, align 8, !dbg !1050
  br label %68, !dbg !1051, !llvm.loop !1052

191:                                              ; preds = %68
  %192 = load ptr, ptr %4, align 8, !dbg !1054
  %193 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %192, i32 0, i32 37, !dbg !1056
  %194 = load i32, ptr %193, align 8, !dbg !1057
  %195 = add i32 %194, 1, !dbg !1057
  store i32 %195, ptr %193, align 8, !dbg !1057
  %196 = load ptr, ptr %4, align 8, !dbg !1058
  %197 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %196, i32 0, i32 60, !dbg !1059
  %198 = load i32, ptr %197, align 8, !dbg !1059
  %199 = icmp ult i32 %195, %198, !dbg !1060
  br i1 %199, label %200, label %201, !dbg !1060

200:                                              ; preds = %191
  store i32 3, ptr %3, align 4, !dbg !1061
  br label %202, !dbg !1061

201:                                              ; preds = %191
  store i32 4, ptr %3, align 4, !dbg !1062
  br label %202, !dbg !1062

202:                                              ; preds = %201, %200, %62
  %203 = load i32, ptr %3, align 4, !dbg !1063
  ret i32 %203, !dbg !1063
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @dummy_consume_data(ptr noundef %0) #0 !dbg !1064 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !1065, !DIExpression(), !1066)
  ret i32 0, !dbg !1067
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @decompress_onepass(ptr noundef %0, ptr noundef %1) #0 !dbg !1068 {
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
  %16 = alloca ptr, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca ptr, align 8
  %20 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
    #dbg_declare(ptr %4, !1069, !DIExpression(), !1070)
  store ptr %1, ptr %5, align 8
    #dbg_declare(ptr %5, !1071, !DIExpression(), !1072)
    #dbg_declare(ptr %6, !1073, !DIExpression(), !1074)
  %21 = load ptr, ptr %4, align 8, !dbg !1075
  %22 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %21, i32 0, i32 75, !dbg !1076
  %23 = load ptr, ptr %22, align 8, !dbg !1076
  store ptr %23, ptr %6, align 8, !dbg !1074
    #dbg_declare(ptr %7, !1077, !DIExpression(), !1078)
    #dbg_declare(ptr %8, !1079, !DIExpression(), !1080)
  %24 = load ptr, ptr %4, align 8, !dbg !1081
  %25 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %24, i32 0, i32 64, !dbg !1082
  %26 = load i32, ptr %25, align 8, !dbg !1082
  %27 = sub i32 %26, 1, !dbg !1083
  store i32 %27, ptr %8, align 4, !dbg !1080
    #dbg_declare(ptr %9, !1084, !DIExpression(), !1085)
  %28 = load ptr, ptr %4, align 8, !dbg !1086
  %29 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %28, i32 0, i32 60, !dbg !1087
  %30 = load i32, ptr %29, align 8, !dbg !1087
  %31 = sub i32 %30, 1, !dbg !1088
  store i32 %31, ptr %9, align 4, !dbg !1085
    #dbg_declare(ptr %10, !1089, !DIExpression(), !1090)
    #dbg_declare(ptr %11, !1091, !DIExpression(), !1092)
    #dbg_declare(ptr %12, !1093, !DIExpression(), !1094)
    #dbg_declare(ptr %13, !1095, !DIExpression(), !1096)
    #dbg_declare(ptr %14, !1097, !DIExpression(), !1098)
    #dbg_declare(ptr %15, !1099, !DIExpression(), !1100)
    #dbg_declare(ptr %16, !1101, !DIExpression(), !1102)
    #dbg_declare(ptr %17, !1103, !DIExpression(), !1104)
    #dbg_declare(ptr %18, !1105, !DIExpression(), !1106)
    #dbg_declare(ptr %19, !1107, !DIExpression(), !1108)
    #dbg_declare(ptr %20, !1109, !DIExpression(), !1110)
  %32 = load ptr, ptr %6, align 8, !dbg !1111
  %33 = getelementptr inbounds nuw %struct.my_coef_controller, ptr %32, i32 0, i32 2, !dbg !1113
  %34 = load i32, ptr %33, align 4, !dbg !1113
  store i32 %34, ptr %14, align 4, !dbg !1114
  br label %35, !dbg !1115

35:                                               ; preds = %217, %2
  %36 = load i32, ptr %14, align 4, !dbg !1116
  %37 = load ptr, ptr %6, align 8, !dbg !1118
  %38 = getelementptr inbounds nuw %struct.my_coef_controller, ptr %37, i32 0, i32 3, !dbg !1119
  %39 = load i32, ptr %38, align 8, !dbg !1119
  %40 = icmp slt i32 %36, %39, !dbg !1120
  br i1 %40, label %41, label %220, !dbg !1121

41:                                               ; preds = %35
  %42 = load ptr, ptr %6, align 8, !dbg !1122
  %43 = getelementptr inbounds nuw %struct.my_coef_controller, ptr %42, i32 0, i32 1, !dbg !1125
  %44 = load i32, ptr %43, align 8, !dbg !1125
  store i32 %44, ptr %7, align 4, !dbg !1126
  br label %45, !dbg !1127

45:                                               ; preds = %211, %41
  %46 = load i32, ptr %7, align 4, !dbg !1128
  %47 = load i32, ptr %8, align 4, !dbg !1130
  %48 = icmp ule i32 %46, %47, !dbg !1131
  br i1 %48, label %49, label %214, !dbg !1132

49:                                               ; preds = %45
  %50 = load ptr, ptr %6, align 8, !dbg !1133
  %51 = getelementptr inbounds nuw %struct.my_coef_controller, ptr %50, i32 0, i32 4, !dbg !1135
  %52 = getelementptr inbounds [10 x ptr], ptr %51, i64 0, i64 0, !dbg !1133
  %53 = load ptr, ptr %52, align 8, !dbg !1133
  %54 = load ptr, ptr %4, align 8, !dbg !1136
  %55 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %54, i32 0, i32 66, !dbg !1137
  %56 = load i32, ptr %55, align 8, !dbg !1137
  %57 = sext i32 %56 to i64, !dbg !1136
  %58 = mul i64 %57, 128, !dbg !1138
  call void @jzero_far(ptr noundef %53, i64 noundef %58), !dbg !1139
  %59 = load ptr, ptr %4, align 8, !dbg !1140
  %60 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %59, i32 0, i32 79, !dbg !1142
  %61 = load ptr, ptr %60, align 8, !dbg !1142
  %62 = getelementptr inbounds nuw %struct.jpeg_entropy_decoder, ptr %61, i32 0, i32 1, !dbg !1143
  %63 = load ptr, ptr %62, align 8, !dbg !1143
  %64 = load ptr, ptr %4, align 8, !dbg !1144
  %65 = load ptr, ptr %6, align 8, !dbg !1145
  %66 = getelementptr inbounds nuw %struct.my_coef_controller, ptr %65, i32 0, i32 4, !dbg !1146
  %67 = getelementptr inbounds [10 x ptr], ptr %66, i64 0, i64 0, !dbg !1145
  %68 = call i32 %63(ptr noundef %64, ptr noundef %67), !dbg !1147
  %69 = icmp ne i32 %68, 0, !dbg !1147
  br i1 %69, label %77, label %70, !dbg !1148

70:                                               ; preds = %49
  %71 = load i32, ptr %14, align 4, !dbg !1149
  %72 = load ptr, ptr %6, align 8, !dbg !1151
  %73 = getelementptr inbounds nuw %struct.my_coef_controller, ptr %72, i32 0, i32 2, !dbg !1152
  store i32 %71, ptr %73, align 4, !dbg !1153
  %74 = load i32, ptr %7, align 4, !dbg !1154
  %75 = load ptr, ptr %6, align 8, !dbg !1155
  %76 = getelementptr inbounds nuw %struct.my_coef_controller, ptr %75, i32 0, i32 1, !dbg !1156
  store i32 %74, ptr %76, align 8, !dbg !1157
  store i32 0, ptr %3, align 4, !dbg !1158
  br label %242, !dbg !1158

77:                                               ; preds = %49
  store i32 0, ptr %10, align 4, !dbg !1159
  store i32 0, ptr %11, align 4, !dbg !1160
  br label %78, !dbg !1162

78:                                               ; preds = %207, %77
  %79 = load i32, ptr %11, align 4, !dbg !1163
  %80 = load ptr, ptr %4, align 8, !dbg !1165
  %81 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %80, i32 0, i32 62, !dbg !1166
  %82 = load i32, ptr %81, align 8, !dbg !1166
  %83 = icmp slt i32 %79, %82, !dbg !1167
  br i1 %83, label %84, label %210, !dbg !1168

84:                                               ; preds = %78
  %85 = load ptr, ptr %4, align 8, !dbg !1169
  %86 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %85, i32 0, i32 63, !dbg !1171
  %87 = load i32, ptr %11, align 4, !dbg !1172
  %88 = sext i32 %87 to i64, !dbg !1169
  %89 = getelementptr inbounds [4 x ptr], ptr %86, i64 0, i64 %88, !dbg !1169
  %90 = load ptr, ptr %89, align 8, !dbg !1169
  store ptr %90, ptr %19, align 8, !dbg !1173
  %91 = load ptr, ptr %19, align 8, !dbg !1174
  %92 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %91, i32 0, i32 12, !dbg !1176
  %93 = load i32, ptr %92, align 8, !dbg !1176
  %94 = icmp ne i32 %93, 0, !dbg !1174
  br i1 %94, label %101, label %95, !dbg !1177

95:                                               ; preds = %84
  %96 = load ptr, ptr %19, align 8, !dbg !1178
  %97 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %96, i32 0, i32 15, !dbg !1180
  %98 = load i32, ptr %97, align 4, !dbg !1180
  %99 = load i32, ptr %10, align 4, !dbg !1181
  %100 = add nsw i32 %99, %98, !dbg !1181
  store i32 %100, ptr %10, align 4, !dbg !1181
  br label %207, !dbg !1182

101:                                              ; preds = %84
  %102 = load ptr, ptr %4, align 8, !dbg !1183
  %103 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %102, i32 0, i32 80, !dbg !1184
  %104 = load ptr, ptr %103, align 8, !dbg !1184
  %105 = getelementptr inbounds nuw %struct.jpeg_inverse_dct, ptr %104, i32 0, i32 1, !dbg !1185
  %106 = load ptr, ptr %19, align 8, !dbg !1186
  %107 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %106, i32 0, i32 1, !dbg !1187
  %108 = load i32, ptr %107, align 4, !dbg !1187
  %109 = sext i32 %108 to i64, !dbg !1183
  %110 = getelementptr inbounds [10 x ptr], ptr %105, i64 0, i64 %109, !dbg !1183
  %111 = load ptr, ptr %110, align 8, !dbg !1183
  store ptr %111, ptr %20, align 8, !dbg !1188
  %112 = load i32, ptr %7, align 4, !dbg !1189
  %113 = load i32, ptr %8, align 4, !dbg !1190
  %114 = icmp ult i32 %112, %113, !dbg !1191
  br i1 %114, label %115, label %119, !dbg !1192

115:                                              ; preds = %101
  %116 = load ptr, ptr %19, align 8, !dbg !1193
  %117 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %116, i32 0, i32 13, !dbg !1194
  %118 = load i32, ptr %117, align 4, !dbg !1194
  br label %123, !dbg !1192

119:                                              ; preds = %101
  %120 = load ptr, ptr %19, align 8, !dbg !1195
  %121 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %120, i32 0, i32 17, !dbg !1196
  %122 = load i32, ptr %121, align 4, !dbg !1196
  br label %123, !dbg !1192

123:                                              ; preds = %119, %115
  %124 = phi i32 [ %118, %115 ], [ %122, %119 ], !dbg !1192
  store i32 %124, ptr %15, align 4, !dbg !1197
  %125 = load ptr, ptr %5, align 8, !dbg !1198
  %126 = load i32, ptr %11, align 4, !dbg !1199
  %127 = sext i32 %126 to i64, !dbg !1198
  %128 = getelementptr inbounds ptr, ptr %125, i64 %127, !dbg !1198
  %129 = load ptr, ptr %128, align 8, !dbg !1198
  %130 = load i32, ptr %14, align 4, !dbg !1200
  %131 = load ptr, ptr %19, align 8, !dbg !1201
  %132 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %131, i32 0, i32 9, !dbg !1202
  %133 = load i32, ptr %132, align 4, !dbg !1202
  %134 = mul nsw i32 %130, %133, !dbg !1203
  %135 = sext i32 %134 to i64, !dbg !1204
  %136 = getelementptr inbounds ptr, ptr %129, i64 %135, !dbg !1204
  store ptr %136, ptr %16, align 8, !dbg !1205
  %137 = load i32, ptr %7, align 4, !dbg !1206
  %138 = load ptr, ptr %19, align 8, !dbg !1207
  %139 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %138, i32 0, i32 16, !dbg !1208
  %140 = load i32, ptr %139, align 8, !dbg !1208
  %141 = mul i32 %137, %140, !dbg !1209
  store i32 %141, ptr %17, align 4, !dbg !1210
  store i32 0, ptr %13, align 4, !dbg !1211
  br label %142, !dbg !1213

142:                                              ; preds = %203, %123
  %143 = load i32, ptr %13, align 4, !dbg !1214
  %144 = load ptr, ptr %19, align 8, !dbg !1216
  %145 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %144, i32 0, i32 14, !dbg !1217
  %146 = load i32, ptr %145, align 8, !dbg !1217
  %147 = icmp slt i32 %143, %146, !dbg !1218
  br i1 %147, label %148, label %206, !dbg !1219

148:                                              ; preds = %142
  %149 = load ptr, ptr %4, align 8, !dbg !1220
  %150 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %149, i32 0, i32 35, !dbg !1223
  %151 = load i32, ptr %150, align 8, !dbg !1223
  %152 = load i32, ptr %9, align 4, !dbg !1224
  %153 = icmp ult i32 %151, %152, !dbg !1225
  br i1 %153, label %162, label %154, !dbg !1226

154:                                              ; preds = %148
  %155 = load i32, ptr %14, align 4, !dbg !1227
  %156 = load i32, ptr %13, align 4, !dbg !1228
  %157 = add nsw i32 %155, %156, !dbg !1229
  %158 = load ptr, ptr %19, align 8, !dbg !1230
  %159 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %158, i32 0, i32 18, !dbg !1231
  %160 = load i32, ptr %159, align 8, !dbg !1231
  %161 = icmp slt i32 %157, %160, !dbg !1232
  br i1 %161, label %162, label %191, !dbg !1226

162:                                              ; preds = %154, %148
  %163 = load i32, ptr %17, align 4, !dbg !1233
  store i32 %163, ptr %18, align 4, !dbg !1235
  store i32 0, ptr %12, align 4, !dbg !1236
  br label %164, !dbg !1238

164:                                              ; preds = %187, %162
  %165 = load i32, ptr %12, align 4, !dbg !1239
  %166 = load i32, ptr %15, align 4, !dbg !1241
  %167 = icmp slt i32 %165, %166, !dbg !1242
  br i1 %167, label %168, label %190, !dbg !1243

168:                                              ; preds = %164
  %169 = load ptr, ptr %20, align 8, !dbg !1244
  %170 = load ptr, ptr %4, align 8, !dbg !1246
  %171 = load ptr, ptr %19, align 8, !dbg !1247
  %172 = load ptr, ptr %6, align 8, !dbg !1248
  %173 = getelementptr inbounds nuw %struct.my_coef_controller, ptr %172, i32 0, i32 4, !dbg !1249
  %174 = load i32, ptr %10, align 4, !dbg !1250
  %175 = load i32, ptr %12, align 4, !dbg !1251
  %176 = add nsw i32 %174, %175, !dbg !1252
  %177 = sext i32 %176 to i64, !dbg !1248
  %178 = getelementptr inbounds [10 x ptr], ptr %173, i64 0, i64 %177, !dbg !1248
  %179 = load ptr, ptr %178, align 8, !dbg !1248
  %180 = load ptr, ptr %16, align 8, !dbg !1253
  %181 = load i32, ptr %18, align 4, !dbg !1254
  call void %169(ptr noundef %170, ptr noundef %171, ptr noundef %179, ptr noundef %180, i32 noundef %181), !dbg !1255
  %182 = load ptr, ptr %19, align 8, !dbg !1256
  %183 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %182, i32 0, i32 9, !dbg !1257
  %184 = load i32, ptr %183, align 4, !dbg !1257
  %185 = load i32, ptr %18, align 4, !dbg !1258
  %186 = add i32 %185, %184, !dbg !1258
  store i32 %186, ptr %18, align 4, !dbg !1258
  br label %187, !dbg !1259

187:                                              ; preds = %168
  %188 = load i32, ptr %12, align 4, !dbg !1260
  %189 = add nsw i32 %188, 1, !dbg !1260
  store i32 %189, ptr %12, align 4, !dbg !1260
  br label %164, !dbg !1261, !llvm.loop !1262

190:                                              ; preds = %164
  br label %191, !dbg !1264

191:                                              ; preds = %190, %154
  %192 = load ptr, ptr %19, align 8, !dbg !1265
  %193 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %192, i32 0, i32 13, !dbg !1266
  %194 = load i32, ptr %193, align 4, !dbg !1266
  %195 = load i32, ptr %10, align 4, !dbg !1267
  %196 = add nsw i32 %195, %194, !dbg !1267
  store i32 %196, ptr %10, align 4, !dbg !1267
  %197 = load ptr, ptr %19, align 8, !dbg !1268
  %198 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %197, i32 0, i32 9, !dbg !1269
  %199 = load i32, ptr %198, align 4, !dbg !1269
  %200 = load ptr, ptr %16, align 8, !dbg !1270
  %201 = sext i32 %199 to i64, !dbg !1270
  %202 = getelementptr inbounds ptr, ptr %200, i64 %201, !dbg !1270
  store ptr %202, ptr %16, align 8, !dbg !1270
  br label %203, !dbg !1271

203:                                              ; preds = %191
  %204 = load i32, ptr %13, align 4, !dbg !1272
  %205 = add nsw i32 %204, 1, !dbg !1272
  store i32 %205, ptr %13, align 4, !dbg !1272
  br label %142, !dbg !1273, !llvm.loop !1274

206:                                              ; preds = %142
  br label %207, !dbg !1276

207:                                              ; preds = %206, %95
  %208 = load i32, ptr %11, align 4, !dbg !1277
  %209 = add nsw i32 %208, 1, !dbg !1277
  store i32 %209, ptr %11, align 4, !dbg !1277
  br label %78, !dbg !1278, !llvm.loop !1279

210:                                              ; preds = %78
  br label %211, !dbg !1281

211:                                              ; preds = %210
  %212 = load i32, ptr %7, align 4, !dbg !1282
  %213 = add i32 %212, 1, !dbg !1282
  store i32 %213, ptr %7, align 4, !dbg !1282
  br label %45, !dbg !1283, !llvm.loop !1284

214:                                              ; preds = %45
  %215 = load ptr, ptr %6, align 8, !dbg !1286
  %216 = getelementptr inbounds nuw %struct.my_coef_controller, ptr %215, i32 0, i32 1, !dbg !1287
  store i32 0, ptr %216, align 8, !dbg !1288
  br label %217, !dbg !1289

217:                                              ; preds = %214
  %218 = load i32, ptr %14, align 4, !dbg !1290
  %219 = add nsw i32 %218, 1, !dbg !1290
  store i32 %219, ptr %14, align 4, !dbg !1290
  br label %35, !dbg !1291, !llvm.loop !1292

220:                                              ; preds = %35
  %221 = load ptr, ptr %4, align 8, !dbg !1294
  %222 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %221, i32 0, i32 37, !dbg !1295
  %223 = load i32, ptr %222, align 8, !dbg !1296
  %224 = add i32 %223, 1, !dbg !1296
  store i32 %224, ptr %222, align 8, !dbg !1296
  %225 = load ptr, ptr %4, align 8, !dbg !1297
  %226 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %225, i32 0, i32 35, !dbg !1299
  %227 = load i32, ptr %226, align 8, !dbg !1300
  %228 = add i32 %227, 1, !dbg !1300
  store i32 %228, ptr %226, align 8, !dbg !1300
  %229 = load ptr, ptr %4, align 8, !dbg !1301
  %230 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %229, i32 0, i32 60, !dbg !1302
  %231 = load i32, ptr %230, align 8, !dbg !1302
  %232 = icmp ult i32 %228, %231, !dbg !1303
  br i1 %232, label %233, label %235, !dbg !1303

233:                                              ; preds = %220
  %234 = load ptr, ptr %4, align 8, !dbg !1304
  call void @start_iMCU_row(ptr noundef %234), !dbg !1306
  store i32 3, ptr %3, align 4, !dbg !1307
  br label %242, !dbg !1307

235:                                              ; preds = %220
  %236 = load ptr, ptr %4, align 8, !dbg !1308
  %237 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %236, i32 0, i32 77, !dbg !1309
  %238 = load ptr, ptr %237, align 8, !dbg !1309
  %239 = getelementptr inbounds nuw %struct.jpeg_input_controller, ptr %238, i32 0, i32 3, !dbg !1310
  %240 = load ptr, ptr %239, align 8, !dbg !1310
  %241 = load ptr, ptr %4, align 8, !dbg !1311
  call void %240(ptr noundef %241), !dbg !1312
  store i32 4, ptr %3, align 4, !dbg !1313
  br label %242, !dbg !1313

242:                                              ; preds = %235, %233, %70
  %243 = load i32, ptr %3, align 4, !dbg !1314
  ret i32 %243, !dbg !1314
}

; Function Attrs: noinline nounwind uwtable
define internal void @start_iMCU_row(ptr noundef %0) #0 !dbg !1315 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !1316, !DIExpression(), !1317)
    #dbg_declare(ptr %3, !1318, !DIExpression(), !1319)
  %4 = load ptr, ptr %2, align 8, !dbg !1320
  %5 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %4, i32 0, i32 75, !dbg !1321
  %6 = load ptr, ptr %5, align 8, !dbg !1321
  store ptr %6, ptr %3, align 8, !dbg !1319
  %7 = load ptr, ptr %2, align 8, !dbg !1322
  %8 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %7, i32 0, i32 62, !dbg !1324
  %9 = load i32, ptr %8, align 8, !dbg !1324
  %10 = icmp sgt i32 %9, 1, !dbg !1325
  br i1 %10, label %11, label %14, !dbg !1325

11:                                               ; preds = %1
  %12 = load ptr, ptr %3, align 8, !dbg !1326
  %13 = getelementptr inbounds nuw %struct.my_coef_controller, ptr %12, i32 0, i32 3, !dbg !1328
  store i32 1, ptr %13, align 8, !dbg !1329
  br label %42, !dbg !1330

14:                                               ; preds = %1
  %15 = load ptr, ptr %2, align 8, !dbg !1331
  %16 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %15, i32 0, i32 35, !dbg !1334
  %17 = load i32, ptr %16, align 8, !dbg !1334
  %18 = load ptr, ptr %2, align 8, !dbg !1335
  %19 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %18, i32 0, i32 60, !dbg !1336
  %20 = load i32, ptr %19, align 8, !dbg !1336
  %21 = sub i32 %20, 1, !dbg !1337
  %22 = icmp ult i32 %17, %21, !dbg !1338
  br i1 %22, label %23, label %32, !dbg !1338

23:                                               ; preds = %14
  %24 = load ptr, ptr %2, align 8, !dbg !1339
  %25 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %24, i32 0, i32 63, !dbg !1340
  %26 = getelementptr inbounds [4 x ptr], ptr %25, i64 0, i64 0, !dbg !1339
  %27 = load ptr, ptr %26, align 8, !dbg !1339
  %28 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %27, i32 0, i32 3, !dbg !1341
  %29 = load i32, ptr %28, align 4, !dbg !1341
  %30 = load ptr, ptr %3, align 8, !dbg !1342
  %31 = getelementptr inbounds nuw %struct.my_coef_controller, ptr %30, i32 0, i32 3, !dbg !1343
  store i32 %29, ptr %31, align 8, !dbg !1344
  br label %41, !dbg !1342

32:                                               ; preds = %14
  %33 = load ptr, ptr %2, align 8, !dbg !1345
  %34 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %33, i32 0, i32 63, !dbg !1346
  %35 = getelementptr inbounds [4 x ptr], ptr %34, i64 0, i64 0, !dbg !1345
  %36 = load ptr, ptr %35, align 8, !dbg !1345
  %37 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %36, i32 0, i32 18, !dbg !1347
  %38 = load i32, ptr %37, align 8, !dbg !1347
  %39 = load ptr, ptr %3, align 8, !dbg !1348
  %40 = getelementptr inbounds nuw %struct.my_coef_controller, ptr %39, i32 0, i32 3, !dbg !1349
  store i32 %38, ptr %40, align 8, !dbg !1350
  br label %41

41:                                               ; preds = %32, %23
  br label %42

42:                                               ; preds = %41, %11
  %43 = load ptr, ptr %3, align 8, !dbg !1351
  %44 = getelementptr inbounds nuw %struct.my_coef_controller, ptr %43, i32 0, i32 1, !dbg !1352
  store i32 0, ptr %44, align 8, !dbg !1353
  %45 = load ptr, ptr %3, align 8, !dbg !1354
  %46 = getelementptr inbounds nuw %struct.my_coef_controller, ptr %45, i32 0, i32 2, !dbg !1355
  store i32 0, ptr %46, align 4, !dbg !1356
  ret void, !dbg !1357
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @smoothing_ok(ptr noundef %0) #0 !dbg !1358 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !1359, !DIExpression(), !1360)
    #dbg_declare(ptr %4, !1361, !DIExpression(), !1362)
  %12 = load ptr, ptr %3, align 8, !dbg !1363
  %13 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %12, i32 0, i32 75, !dbg !1364
  %14 = load ptr, ptr %13, align 8, !dbg !1364
  store ptr %14, ptr %4, align 8, !dbg !1362
    #dbg_declare(ptr %5, !1365, !DIExpression(), !1366)
  store i32 0, ptr %5, align 4, !dbg !1366
    #dbg_declare(ptr %6, !1367, !DIExpression(), !1368)
    #dbg_declare(ptr %7, !1369, !DIExpression(), !1370)
    #dbg_declare(ptr %8, !1371, !DIExpression(), !1372)
    #dbg_declare(ptr %9, !1373, !DIExpression(), !1374)
    #dbg_declare(ptr %10, !1375, !DIExpression(), !1376)
    #dbg_declare(ptr %11, !1377, !DIExpression(), !1378)
  %15 = load ptr, ptr %3, align 8, !dbg !1379
  %16 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %15, i32 0, i32 44, !dbg !1381
  %17 = load i32, ptr %16, align 8, !dbg !1381
  %18 = icmp ne i32 %17, 0, !dbg !1379
  br i1 %18, label %19, label %24, !dbg !1382

19:                                               ; preds = %1
  %20 = load ptr, ptr %3, align 8, !dbg !1383
  %21 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %20, i32 0, i32 38, !dbg !1384
  %22 = load ptr, ptr %21, align 8, !dbg !1384
  %23 = icmp eq ptr %22, null, !dbg !1385
  br i1 %23, label %24, label %25, !dbg !1382

24:                                               ; preds = %19, %1
  store i32 0, ptr %2, align 4, !dbg !1386
  br label %155, !dbg !1386

25:                                               ; preds = %19
  %26 = load ptr, ptr %4, align 8, !dbg !1387
  %27 = getelementptr inbounds nuw %struct.my_coef_controller, ptr %26, i32 0, i32 6, !dbg !1389
  %28 = load ptr, ptr %27, align 8, !dbg !1389
  %29 = icmp eq ptr %28, null, !dbg !1390
  br i1 %29, label %30, label %45, !dbg !1390

30:                                               ; preds = %25
  %31 = load ptr, ptr %3, align 8, !dbg !1391
  %32 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %31, i32 0, i32 1, !dbg !1392
  %33 = load ptr, ptr %32, align 8, !dbg !1392
  %34 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %33, i32 0, i32 0, !dbg !1393
  %35 = load ptr, ptr %34, align 8, !dbg !1393
  %36 = load ptr, ptr %3, align 8, !dbg !1394
  %37 = load ptr, ptr %3, align 8, !dbg !1395
  %38 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %37, i32 0, i32 8, !dbg !1396
  %39 = load i32, ptr %38, align 8, !dbg !1396
  %40 = sext i32 %39 to i64, !dbg !1395
  %41 = mul i64 %40, 24, !dbg !1397
  %42 = call ptr %35(ptr noundef %36, i32 noundef 1, i64 noundef %41), !dbg !1398
  %43 = load ptr, ptr %4, align 8, !dbg !1399
  %44 = getelementptr inbounds nuw %struct.my_coef_controller, ptr %43, i32 0, i32 6, !dbg !1400
  store ptr %42, ptr %44, align 8, !dbg !1401
  br label %45, !dbg !1399

45:                                               ; preds = %30, %25
  %46 = load ptr, ptr %4, align 8, !dbg !1402
  %47 = getelementptr inbounds nuw %struct.my_coef_controller, ptr %46, i32 0, i32 6, !dbg !1403
  %48 = load ptr, ptr %47, align 8, !dbg !1403
  store ptr %48, ptr %11, align 8, !dbg !1404
  store i32 0, ptr %6, align 4, !dbg !1405
  %49 = load ptr, ptr %3, align 8, !dbg !1407
  %50 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %49, i32 0, i32 43, !dbg !1408
  %51 = load ptr, ptr %50, align 8, !dbg !1408
  store ptr %51, ptr %8, align 8, !dbg !1409
  br label %52, !dbg !1410

52:                                               ; preds = %148, %45
  %53 = load i32, ptr %6, align 4, !dbg !1411
  %54 = load ptr, ptr %3, align 8, !dbg !1413
  %55 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %54, i32 0, i32 8, !dbg !1414
  %56 = load i32, ptr %55, align 8, !dbg !1414
  %57 = icmp slt i32 %53, %56, !dbg !1415
  br i1 %57, label %58, label %153, !dbg !1416

58:                                               ; preds = %52
  %59 = load ptr, ptr %8, align 8, !dbg !1417
  %60 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %59, i32 0, i32 19, !dbg !1420
  %61 = load ptr, ptr %60, align 8, !dbg !1420
  store ptr %61, ptr %9, align 8, !dbg !1421
  %62 = icmp eq ptr %61, null, !dbg !1422
  br i1 %62, label %63, label %64, !dbg !1422

63:                                               ; preds = %58
  store i32 0, ptr %2, align 4, !dbg !1423
  br label %155, !dbg !1423

64:                                               ; preds = %58
  %65 = load ptr, ptr %9, align 8, !dbg !1424
  %66 = getelementptr inbounds nuw %struct.JQUANT_TBL, ptr %65, i32 0, i32 0, !dbg !1426
  %67 = getelementptr inbounds [64 x i16], ptr %66, i64 0, i64 0, !dbg !1424
  %68 = load i16, ptr %67, align 4, !dbg !1424
  %69 = zext i16 %68 to i32, !dbg !1424
  %70 = icmp eq i32 %69, 0, !dbg !1427
  br i1 %70, label %106, label %71, !dbg !1428

71:                                               ; preds = %64
  %72 = load ptr, ptr %9, align 8, !dbg !1429
  %73 = getelementptr inbounds nuw %struct.JQUANT_TBL, ptr %72, i32 0, i32 0, !dbg !1430
  %74 = getelementptr inbounds [64 x i16], ptr %73, i64 0, i64 1, !dbg !1429
  %75 = load i16, ptr %74, align 2, !dbg !1429
  %76 = zext i16 %75 to i32, !dbg !1429
  %77 = icmp eq i32 %76, 0, !dbg !1431
  br i1 %77, label %106, label %78, !dbg !1432

78:                                               ; preds = %71
  %79 = load ptr, ptr %9, align 8, !dbg !1433
  %80 = getelementptr inbounds nuw %struct.JQUANT_TBL, ptr %79, i32 0, i32 0, !dbg !1434
  %81 = getelementptr inbounds [64 x i16], ptr %80, i64 0, i64 8, !dbg !1433
  %82 = load i16, ptr %81, align 4, !dbg !1433
  %83 = zext i16 %82 to i32, !dbg !1433
  %84 = icmp eq i32 %83, 0, !dbg !1435
  br i1 %84, label %106, label %85, !dbg !1436

85:                                               ; preds = %78
  %86 = load ptr, ptr %9, align 8, !dbg !1437
  %87 = getelementptr inbounds nuw %struct.JQUANT_TBL, ptr %86, i32 0, i32 0, !dbg !1438
  %88 = getelementptr inbounds [64 x i16], ptr %87, i64 0, i64 16, !dbg !1437
  %89 = load i16, ptr %88, align 4, !dbg !1437
  %90 = zext i16 %89 to i32, !dbg !1437
  %91 = icmp eq i32 %90, 0, !dbg !1439
  br i1 %91, label %106, label %92, !dbg !1440

92:                                               ; preds = %85
  %93 = load ptr, ptr %9, align 8, !dbg !1441
  %94 = getelementptr inbounds nuw %struct.JQUANT_TBL, ptr %93, i32 0, i32 0, !dbg !1442
  %95 = getelementptr inbounds [64 x i16], ptr %94, i64 0, i64 9, !dbg !1441
  %96 = load i16, ptr %95, align 2, !dbg !1441
  %97 = zext i16 %96 to i32, !dbg !1441
  %98 = icmp eq i32 %97, 0, !dbg !1443
  br i1 %98, label %106, label %99, !dbg !1444

99:                                               ; preds = %92
  %100 = load ptr, ptr %9, align 8, !dbg !1445
  %101 = getelementptr inbounds nuw %struct.JQUANT_TBL, ptr %100, i32 0, i32 0, !dbg !1446
  %102 = getelementptr inbounds [64 x i16], ptr %101, i64 0, i64 2, !dbg !1445
  %103 = load i16, ptr %102, align 4, !dbg !1445
  %104 = zext i16 %103 to i32, !dbg !1445
  %105 = icmp eq i32 %104, 0, !dbg !1447
  br i1 %105, label %106, label %107, !dbg !1444

106:                                              ; preds = %99, %92, %85, %78, %71, %64
  store i32 0, ptr %2, align 4, !dbg !1448
  br label %155, !dbg !1448

107:                                              ; preds = %99
  %108 = load ptr, ptr %3, align 8, !dbg !1449
  %109 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %108, i32 0, i32 38, !dbg !1450
  %110 = load ptr, ptr %109, align 8, !dbg !1450
  %111 = load i32, ptr %6, align 4, !dbg !1451
  %112 = sext i32 %111 to i64, !dbg !1449
  %113 = getelementptr inbounds [64 x i32], ptr %110, i64 %112, !dbg !1449
  %114 = getelementptr inbounds [64 x i32], ptr %113, i64 0, i64 0, !dbg !1449
  store ptr %114, ptr %10, align 8, !dbg !1452
  %115 = load ptr, ptr %10, align 8, !dbg !1453
  %116 = getelementptr inbounds i32, ptr %115, i64 0, !dbg !1453
  %117 = load i32, ptr %116, align 4, !dbg !1453
  %118 = icmp slt i32 %117, 0, !dbg !1455
  br i1 %118, label %119, label %120, !dbg !1455

119:                                              ; preds = %107
  store i32 0, ptr %2, align 4, !dbg !1456
  br label %155, !dbg !1456

120:                                              ; preds = %107
  store i32 1, ptr %7, align 4, !dbg !1457
  br label %121, !dbg !1459

121:                                              ; preds = %142, %120
  %122 = load i32, ptr %7, align 4, !dbg !1460
  %123 = icmp sle i32 %122, 5, !dbg !1462
  br i1 %123, label %124, label %145, !dbg !1463

124:                                              ; preds = %121
  %125 = load ptr, ptr %10, align 8, !dbg !1464
  %126 = load i32, ptr %7, align 4, !dbg !1466
  %127 = sext i32 %126 to i64, !dbg !1464
  %128 = getelementptr inbounds i32, ptr %125, i64 %127, !dbg !1464
  %129 = load i32, ptr %128, align 4, !dbg !1464
  %130 = load ptr, ptr %11, align 8, !dbg !1467
  %131 = load i32, ptr %7, align 4, !dbg !1468
  %132 = sext i32 %131 to i64, !dbg !1467
  %133 = getelementptr inbounds i32, ptr %130, i64 %132, !dbg !1467
  store i32 %129, ptr %133, align 4, !dbg !1469
  %134 = load ptr, ptr %10, align 8, !dbg !1470
  %135 = load i32, ptr %7, align 4, !dbg !1472
  %136 = sext i32 %135 to i64, !dbg !1470
  %137 = getelementptr inbounds i32, ptr %134, i64 %136, !dbg !1470
  %138 = load i32, ptr %137, align 4, !dbg !1470
  %139 = icmp ne i32 %138, 0, !dbg !1473
  br i1 %139, label %140, label %141, !dbg !1473

140:                                              ; preds = %124
  store i32 1, ptr %5, align 4, !dbg !1474
  br label %141, !dbg !1475

141:                                              ; preds = %140, %124
  br label %142, !dbg !1476

142:                                              ; preds = %141
  %143 = load i32, ptr %7, align 4, !dbg !1477
  %144 = add nsw i32 %143, 1, !dbg !1477
  store i32 %144, ptr %7, align 4, !dbg !1477
  br label %121, !dbg !1478, !llvm.loop !1479

145:                                              ; preds = %121
  %146 = load ptr, ptr %11, align 8, !dbg !1481
  %147 = getelementptr inbounds i32, ptr %146, i64 6, !dbg !1481
  store ptr %147, ptr %11, align 8, !dbg !1481
  br label %148, !dbg !1482

148:                                              ; preds = %145
  %149 = load i32, ptr %6, align 4, !dbg !1483
  %150 = add nsw i32 %149, 1, !dbg !1483
  store i32 %150, ptr %6, align 4, !dbg !1483
  %151 = load ptr, ptr %8, align 8, !dbg !1484
  %152 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %151, i32 1, !dbg !1484
  store ptr %152, ptr %8, align 8, !dbg !1484
  br label %52, !dbg !1485, !llvm.loop !1486

153:                                              ; preds = %52
  %154 = load i32, ptr %5, align 4, !dbg !1488
  store i32 %154, ptr %2, align 4, !dbg !1489
  br label %155, !dbg !1489

155:                                              ; preds = %153, %119, %106, %63, %24
  %156 = load i32, ptr %2, align 4, !dbg !1490
  ret i32 %156, !dbg !1490
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @decompress_smooth_data(ptr noundef %0, ptr noundef %1) #0 !dbg !1491 {
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
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  %19 = alloca i32, align 4
  %20 = alloca ptr, align 8
  %21 = alloca ptr, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca [64 x i16], align 16
  %25 = alloca ptr, align 8
  %26 = alloca ptr, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
    #dbg_declare(ptr %4, !1492, !DIExpression(), !1493)
  store ptr %1, ptr %5, align 8
    #dbg_declare(ptr %5, !1494, !DIExpression(), !1495)
    #dbg_declare(ptr %6, !1496, !DIExpression(), !1497)
  %46 = load ptr, ptr %4, align 8, !dbg !1498
  %47 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %46, i32 0, i32 75, !dbg !1499
  %48 = load ptr, ptr %47, align 8, !dbg !1499
  store ptr %48, ptr %6, align 8, !dbg !1497
    #dbg_declare(ptr %7, !1500, !DIExpression(), !1501)
  %49 = load ptr, ptr %4, align 8, !dbg !1502
  %50 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %49, i32 0, i32 60, !dbg !1503
  %51 = load i32, ptr %50, align 8, !dbg !1503
  %52 = sub i32 %51, 1, !dbg !1504
  store i32 %52, ptr %7, align 4, !dbg !1501
    #dbg_declare(ptr %8, !1505, !DIExpression(), !1506)
    #dbg_declare(ptr %9, !1507, !DIExpression(), !1508)
    #dbg_declare(ptr %10, !1509, !DIExpression(), !1510)
    #dbg_declare(ptr %11, !1511, !DIExpression(), !1512)
    #dbg_declare(ptr %12, !1513, !DIExpression(), !1514)
    #dbg_declare(ptr %13, !1515, !DIExpression(), !1516)
    #dbg_declare(ptr %14, !1517, !DIExpression(), !1518)
    #dbg_declare(ptr %15, !1519, !DIExpression(), !1520)
    #dbg_declare(ptr %16, !1521, !DIExpression(), !1522)
    #dbg_declare(ptr %17, !1523, !DIExpression(), !1524)
    #dbg_declare(ptr %18, !1525, !DIExpression(), !1526)
    #dbg_declare(ptr %19, !1527, !DIExpression(), !1528)
    #dbg_declare(ptr %20, !1529, !DIExpression(), !1530)
    #dbg_declare(ptr %21, !1531, !DIExpression(), !1532)
    #dbg_declare(ptr %22, !1533, !DIExpression(), !1534)
    #dbg_declare(ptr %23, !1535, !DIExpression(), !1536)
    #dbg_declare(ptr %24, !1537, !DIExpression(), !1538)
    #dbg_declare(ptr %25, !1539, !DIExpression(), !1540)
    #dbg_declare(ptr %26, !1541, !DIExpression(), !1542)
    #dbg_declare(ptr %27, !1543, !DIExpression(), !1545)
    #dbg_declare(ptr %28, !1546, !DIExpression(), !1547)
    #dbg_declare(ptr %29, !1548, !DIExpression(), !1549)
    #dbg_declare(ptr %30, !1550, !DIExpression(), !1551)
    #dbg_declare(ptr %31, !1552, !DIExpression(), !1553)
    #dbg_declare(ptr %32, !1554, !DIExpression(), !1555)
    #dbg_declare(ptr %33, !1556, !DIExpression(), !1557)
    #dbg_declare(ptr %34, !1558, !DIExpression(), !1559)
    #dbg_declare(ptr %35, !1560, !DIExpression(), !1561)
    #dbg_declare(ptr %36, !1562, !DIExpression(), !1563)
    #dbg_declare(ptr %37, !1564, !DIExpression(), !1565)
    #dbg_declare(ptr %38, !1566, !DIExpression(), !1567)
    #dbg_declare(ptr %39, !1568, !DIExpression(), !1569)
    #dbg_declare(ptr %40, !1570, !DIExpression(), !1571)
    #dbg_declare(ptr %41, !1572, !DIExpression(), !1573)
    #dbg_declare(ptr %42, !1574, !DIExpression(), !1575)
    #dbg_declare(ptr %43, !1576, !DIExpression(), !1577)
    #dbg_declare(ptr %44, !1578, !DIExpression(), !1579)
  br label %53, !dbg !1580

53:                                               ; preds = %107, %2
  %54 = load ptr, ptr %4, align 8, !dbg !1581
  %55 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %54, i32 0, i32 34, !dbg !1582
  %56 = load i32, ptr %55, align 4, !dbg !1582
  %57 = load ptr, ptr %4, align 8, !dbg !1583
  %58 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %57, i32 0, i32 36, !dbg !1584
  %59 = load i32, ptr %58, align 4, !dbg !1584
  %60 = icmp sle i32 %56, %59, !dbg !1585
  br i1 %60, label %61, label %69, !dbg !1586

61:                                               ; preds = %53
  %62 = load ptr, ptr %4, align 8, !dbg !1587
  %63 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %62, i32 0, i32 77, !dbg !1588
  %64 = load ptr, ptr %63, align 8, !dbg !1588
  %65 = getelementptr inbounds nuw %struct.jpeg_input_controller, ptr %64, i32 0, i32 5, !dbg !1589
  %66 = load i32, ptr %65, align 4, !dbg !1589
  %67 = icmp ne i32 %66, 0, !dbg !1590
  %68 = xor i1 %67, true, !dbg !1590
  br label %69

69:                                               ; preds = %61, %53
  %70 = phi i1 [ false, %53 ], [ %68, %61 ], !dbg !1591
  br i1 %70, label %71, label %108, !dbg !1580

71:                                               ; preds = %69
  %72 = load ptr, ptr %4, align 8, !dbg !1592
  %73 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %72, i32 0, i32 34, !dbg !1595
  %74 = load i32, ptr %73, align 4, !dbg !1595
  %75 = load ptr, ptr %4, align 8, !dbg !1596
  %76 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %75, i32 0, i32 36, !dbg !1597
  %77 = load i32, ptr %76, align 4, !dbg !1597
  %78 = icmp eq i32 %74, %77, !dbg !1598
  br i1 %78, label %79, label %97, !dbg !1598

79:                                               ; preds = %71
    #dbg_declare(ptr %45, !1599, !DIExpression(), !1601)
  %80 = load ptr, ptr %4, align 8, !dbg !1602
  %81 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %80, i32 0, i32 68, !dbg !1603
  %82 = load i32, ptr %81, align 4, !dbg !1603
  %83 = icmp eq i32 %82, 0, !dbg !1604
  %84 = zext i1 %83 to i64, !dbg !1605
  %85 = select i1 %83, i32 1, i32 0, !dbg !1605
  store i32 %85, ptr %45, align 4, !dbg !1601
  %86 = load ptr, ptr %4, align 8, !dbg !1606
  %87 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %86, i32 0, i32 35, !dbg !1608
  %88 = load i32, ptr %87, align 8, !dbg !1608
  %89 = load ptr, ptr %4, align 8, !dbg !1609
  %90 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %89, i32 0, i32 37, !dbg !1610
  %91 = load i32, ptr %90, align 8, !dbg !1610
  %92 = load i32, ptr %45, align 4, !dbg !1611
  %93 = add i32 %91, %92, !dbg !1612
  %94 = icmp ugt i32 %88, %93, !dbg !1613
  br i1 %94, label %95, label %96, !dbg !1613

95:                                               ; preds = %79
  br label %108, !dbg !1614

96:                                               ; preds = %79
  br label %97, !dbg !1615

97:                                               ; preds = %96, %71
  %98 = load ptr, ptr %4, align 8, !dbg !1616
  %99 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %98, i32 0, i32 77, !dbg !1618
  %100 = load ptr, ptr %99, align 8, !dbg !1618
  %101 = getelementptr inbounds nuw %struct.jpeg_input_controller, ptr %100, i32 0, i32 0, !dbg !1619
  %102 = load ptr, ptr %101, align 8, !dbg !1619
  %103 = load ptr, ptr %4, align 8, !dbg !1620
  %104 = call i32 %102(ptr noundef %103), !dbg !1621
  %105 = icmp eq i32 %104, 0, !dbg !1622
  br i1 %105, label %106, label %107, !dbg !1622

106:                                              ; preds = %97
  store i32 0, ptr %3, align 4, !dbg !1623
  br label %751, !dbg !1623

107:                                              ; preds = %97
  br label %53, !dbg !1580, !llvm.loop !1624

108:                                              ; preds = %95, %69
  store i32 0, ptr %10, align 4, !dbg !1626
  %109 = load ptr, ptr %4, align 8, !dbg !1628
  %110 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %109, i32 0, i32 43, !dbg !1629
  %111 = load ptr, ptr %110, align 8, !dbg !1629
  store ptr %111, ptr %20, align 8, !dbg !1630
  br label %112, !dbg !1631

112:                                              ; preds = %735, %108
  %113 = load i32, ptr %10, align 4, !dbg !1632
  %114 = load ptr, ptr %4, align 8, !dbg !1634
  %115 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %114, i32 0, i32 8, !dbg !1635
  %116 = load i32, ptr %115, align 8, !dbg !1635
  %117 = icmp slt i32 %113, %116, !dbg !1636
  br i1 %117, label %118, label %740, !dbg !1637

118:                                              ; preds = %112
  %119 = load ptr, ptr %20, align 8, !dbg !1638
  %120 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %119, i32 0, i32 12, !dbg !1641
  %121 = load i32, ptr %120, align 8, !dbg !1641
  %122 = icmp ne i32 %121, 0, !dbg !1638
  br i1 %122, label %124, label %123, !dbg !1642

123:                                              ; preds = %118
  br label %735, !dbg !1643

124:                                              ; preds = %118
  %125 = load ptr, ptr %4, align 8, !dbg !1644
  %126 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %125, i32 0, i32 37, !dbg !1646
  %127 = load i32, ptr %126, align 8, !dbg !1646
  %128 = load i32, ptr %7, align 4, !dbg !1647
  %129 = icmp ult i32 %127, %128, !dbg !1648
  br i1 %129, label %130, label %136, !dbg !1648

130:                                              ; preds = %124
  %131 = load ptr, ptr %20, align 8, !dbg !1649
  %132 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %131, i32 0, i32 3, !dbg !1651
  %133 = load i32, ptr %132, align 4, !dbg !1651
  store i32 %133, ptr %12, align 4, !dbg !1652
  %134 = load i32, ptr %12, align 4, !dbg !1653
  %135 = mul nsw i32 %134, 2, !dbg !1654
  store i32 %135, ptr %13, align 4, !dbg !1655
  store i32 0, ptr %23, align 4, !dbg !1656
  br label %152, !dbg !1657

136:                                              ; preds = %124
  %137 = load ptr, ptr %20, align 8, !dbg !1658
  %138 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %137, i32 0, i32 8, !dbg !1660
  %139 = load i32, ptr %138, align 8, !dbg !1660
  %140 = load ptr, ptr %20, align 8, !dbg !1661
  %141 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %140, i32 0, i32 3, !dbg !1662
  %142 = load i32, ptr %141, align 4, !dbg !1662
  %143 = urem i32 %139, %142, !dbg !1663
  store i32 %143, ptr %12, align 4, !dbg !1664
  %144 = load i32, ptr %12, align 4, !dbg !1665
  %145 = icmp eq i32 %144, 0, !dbg !1667
  br i1 %145, label %146, label %150, !dbg !1667

146:                                              ; preds = %136
  %147 = load ptr, ptr %20, align 8, !dbg !1668
  %148 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %147, i32 0, i32 3, !dbg !1669
  %149 = load i32, ptr %148, align 4, !dbg !1669
  store i32 %149, ptr %12, align 4, !dbg !1670
  br label %150, !dbg !1671

150:                                              ; preds = %146, %136
  %151 = load i32, ptr %12, align 4, !dbg !1672
  store i32 %151, ptr %13, align 4, !dbg !1673
  store i32 1, ptr %23, align 4, !dbg !1674
  br label %152

152:                                              ; preds = %150, %130
  %153 = load ptr, ptr %4, align 8, !dbg !1675
  %154 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %153, i32 0, i32 37, !dbg !1677
  %155 = load i32, ptr %154, align 8, !dbg !1677
  %156 = icmp ugt i32 %155, 0, !dbg !1678
  br i1 %156, label %157, label %191, !dbg !1678

157:                                              ; preds = %152
  %158 = load ptr, ptr %20, align 8, !dbg !1679
  %159 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %158, i32 0, i32 3, !dbg !1681
  %160 = load i32, ptr %159, align 4, !dbg !1681
  %161 = load i32, ptr %13, align 4, !dbg !1682
  %162 = add nsw i32 %161, %160, !dbg !1682
  store i32 %162, ptr %13, align 4, !dbg !1682
  %163 = load ptr, ptr %4, align 8, !dbg !1683
  %164 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %163, i32 0, i32 1, !dbg !1684
  %165 = load ptr, ptr %164, align 8, !dbg !1684
  %166 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %165, i32 0, i32 8, !dbg !1685
  %167 = load ptr, ptr %166, align 8, !dbg !1685
  %168 = load ptr, ptr %4, align 8, !dbg !1686
  %169 = load ptr, ptr %6, align 8, !dbg !1687
  %170 = getelementptr inbounds nuw %struct.my_coef_controller, ptr %169, i32 0, i32 5, !dbg !1688
  %171 = load i32, ptr %10, align 4, !dbg !1689
  %172 = sext i32 %171 to i64, !dbg !1687
  %173 = getelementptr inbounds [10 x ptr], ptr %170, i64 0, i64 %172, !dbg !1687
  %174 = load ptr, ptr %173, align 8, !dbg !1687
  %175 = load ptr, ptr %4, align 8, !dbg !1690
  %176 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %175, i32 0, i32 37, !dbg !1691
  %177 = load i32, ptr %176, align 8, !dbg !1691
  %178 = sub i32 %177, 1, !dbg !1692
  %179 = load ptr, ptr %20, align 8, !dbg !1693
  %180 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %179, i32 0, i32 3, !dbg !1694
  %181 = load i32, ptr %180, align 4, !dbg !1694
  %182 = mul i32 %178, %181, !dbg !1695
  %183 = load i32, ptr %13, align 4, !dbg !1696
  %184 = call ptr %167(ptr noundef %168, ptr noundef %174, i32 noundef %182, i32 noundef %183, i32 noundef 0), !dbg !1697
  store ptr %184, ptr %14, align 8, !dbg !1698
  %185 = load ptr, ptr %20, align 8, !dbg !1699
  %186 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %185, i32 0, i32 3, !dbg !1700
  %187 = load i32, ptr %186, align 4, !dbg !1700
  %188 = load ptr, ptr %14, align 8, !dbg !1701
  %189 = sext i32 %187 to i64, !dbg !1701
  %190 = getelementptr inbounds ptr, ptr %188, i64 %189, !dbg !1701
  store ptr %190, ptr %14, align 8, !dbg !1701
  store i32 0, ptr %22, align 4, !dbg !1702
  br label %206, !dbg !1703

191:                                              ; preds = %152
  %192 = load ptr, ptr %4, align 8, !dbg !1704
  %193 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %192, i32 0, i32 1, !dbg !1706
  %194 = load ptr, ptr %193, align 8, !dbg !1706
  %195 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %194, i32 0, i32 8, !dbg !1707
  %196 = load ptr, ptr %195, align 8, !dbg !1707
  %197 = load ptr, ptr %4, align 8, !dbg !1708
  %198 = load ptr, ptr %6, align 8, !dbg !1709
  %199 = getelementptr inbounds nuw %struct.my_coef_controller, ptr %198, i32 0, i32 5, !dbg !1710
  %200 = load i32, ptr %10, align 4, !dbg !1711
  %201 = sext i32 %200 to i64, !dbg !1709
  %202 = getelementptr inbounds [10 x ptr], ptr %199, i64 0, i64 %201, !dbg !1709
  %203 = load ptr, ptr %202, align 8, !dbg !1709
  %204 = load i32, ptr %13, align 4, !dbg !1712
  %205 = call ptr %196(ptr noundef %197, ptr noundef %203, i32 noundef 0, i32 noundef %204, i32 noundef 0), !dbg !1713
  store ptr %205, ptr %14, align 8, !dbg !1714
  store i32 1, ptr %22, align 4, !dbg !1715
  br label %206

206:                                              ; preds = %191, %157
  %207 = load ptr, ptr %6, align 8, !dbg !1716
  %208 = getelementptr inbounds nuw %struct.my_coef_controller, ptr %207, i32 0, i32 6, !dbg !1717
  %209 = load ptr, ptr %208, align 8, !dbg !1717
  %210 = load i32, ptr %10, align 4, !dbg !1718
  %211 = mul nsw i32 %210, 6, !dbg !1719
  %212 = sext i32 %211 to i64, !dbg !1720
  %213 = getelementptr inbounds i32, ptr %209, i64 %212, !dbg !1720
  store ptr %213, ptr %25, align 8, !dbg !1721
  %214 = load ptr, ptr %20, align 8, !dbg !1722
  %215 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %214, i32 0, i32 19, !dbg !1723
  %216 = load ptr, ptr %215, align 8, !dbg !1723
  store ptr %216, ptr %26, align 8, !dbg !1724
  %217 = load ptr, ptr %26, align 8, !dbg !1725
  %218 = getelementptr inbounds nuw %struct.JQUANT_TBL, ptr %217, i32 0, i32 0, !dbg !1726
  %219 = getelementptr inbounds [64 x i16], ptr %218, i64 0, i64 0, !dbg !1725
  %220 = load i16, ptr %219, align 4, !dbg !1725
  %221 = zext i16 %220 to i64, !dbg !1725
  store i64 %221, ptr %27, align 8, !dbg !1727
  %222 = load ptr, ptr %26, align 8, !dbg !1728
  %223 = getelementptr inbounds nuw %struct.JQUANT_TBL, ptr %222, i32 0, i32 0, !dbg !1729
  %224 = getelementptr inbounds [64 x i16], ptr %223, i64 0, i64 1, !dbg !1728
  %225 = load i16, ptr %224, align 2, !dbg !1728
  %226 = zext i16 %225 to i64, !dbg !1728
  store i64 %226, ptr %28, align 8, !dbg !1730
  %227 = load ptr, ptr %26, align 8, !dbg !1731
  %228 = getelementptr inbounds nuw %struct.JQUANT_TBL, ptr %227, i32 0, i32 0, !dbg !1732
  %229 = getelementptr inbounds [64 x i16], ptr %228, i64 0, i64 8, !dbg !1731
  %230 = load i16, ptr %229, align 4, !dbg !1731
  %231 = zext i16 %230 to i64, !dbg !1731
  store i64 %231, ptr %30, align 8, !dbg !1733
  %232 = load ptr, ptr %26, align 8, !dbg !1734
  %233 = getelementptr inbounds nuw %struct.JQUANT_TBL, ptr %232, i32 0, i32 0, !dbg !1735
  %234 = getelementptr inbounds [64 x i16], ptr %233, i64 0, i64 16, !dbg !1734
  %235 = load i16, ptr %234, align 4, !dbg !1734
  %236 = zext i16 %235 to i64, !dbg !1734
  store i64 %236, ptr %32, align 8, !dbg !1736
  %237 = load ptr, ptr %26, align 8, !dbg !1737
  %238 = getelementptr inbounds nuw %struct.JQUANT_TBL, ptr %237, i32 0, i32 0, !dbg !1738
  %239 = getelementptr inbounds [64 x i16], ptr %238, i64 0, i64 9, !dbg !1737
  %240 = load i16, ptr %239, align 2, !dbg !1737
  %241 = zext i16 %240 to i64, !dbg !1737
  store i64 %241, ptr %31, align 8, !dbg !1739
  %242 = load ptr, ptr %26, align 8, !dbg !1740
  %243 = getelementptr inbounds nuw %struct.JQUANT_TBL, ptr %242, i32 0, i32 0, !dbg !1741
  %244 = getelementptr inbounds [64 x i16], ptr %243, i64 0, i64 2, !dbg !1740
  %245 = load i16, ptr %244, align 4, !dbg !1740
  %246 = zext i16 %245 to i64, !dbg !1740
  store i64 %246, ptr %29, align 8, !dbg !1742
  %247 = load ptr, ptr %4, align 8, !dbg !1743
  %248 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %247, i32 0, i32 80, !dbg !1744
  %249 = load ptr, ptr %248, align 8, !dbg !1744
  %250 = getelementptr inbounds nuw %struct.jpeg_inverse_dct, ptr %249, i32 0, i32 1, !dbg !1745
  %251 = load i32, ptr %10, align 4, !dbg !1746
  %252 = sext i32 %251 to i64, !dbg !1743
  %253 = getelementptr inbounds [10 x ptr], ptr %250, i64 0, i64 %252, !dbg !1743
  %254 = load ptr, ptr %253, align 8, !dbg !1743
  store ptr %254, ptr %21, align 8, !dbg !1747
  %255 = load ptr, ptr %5, align 8, !dbg !1748
  %256 = load i32, ptr %10, align 4, !dbg !1749
  %257 = sext i32 %256 to i64, !dbg !1748
  %258 = getelementptr inbounds ptr, ptr %255, i64 %257, !dbg !1748
  %259 = load ptr, ptr %258, align 8, !dbg !1748
  store ptr %259, ptr %18, align 8, !dbg !1750
  store i32 0, ptr %11, align 4, !dbg !1751
  br label %260, !dbg !1753

260:                                              ; preds = %731, %206
  %261 = load i32, ptr %11, align 4, !dbg !1754
  %262 = load i32, ptr %12, align 4, !dbg !1756
  %263 = icmp slt i32 %261, %262, !dbg !1757
  br i1 %263, label %264, label %734, !dbg !1758

264:                                              ; preds = %260
  %265 = load ptr, ptr %14, align 8, !dbg !1759
  %266 = load i32, ptr %11, align 4, !dbg !1761
  %267 = sext i32 %266 to i64, !dbg !1759
  %268 = getelementptr inbounds ptr, ptr %265, i64 %267, !dbg !1759
  %269 = load ptr, ptr %268, align 8, !dbg !1759
  store ptr %269, ptr %15, align 8, !dbg !1762
  %270 = load i32, ptr %22, align 4, !dbg !1763
  %271 = icmp ne i32 %270, 0, !dbg !1763
  br i1 %271, label %272, label %277, !dbg !1765

272:                                              ; preds = %264
  %273 = load i32, ptr %11, align 4, !dbg !1766
  %274 = icmp eq i32 %273, 0, !dbg !1767
  br i1 %274, label %275, label %277, !dbg !1765

275:                                              ; preds = %272
  %276 = load ptr, ptr %15, align 8, !dbg !1768
  store ptr %276, ptr %16, align 8, !dbg !1769
  br label %284, !dbg !1770

277:                                              ; preds = %272, %264
  %278 = load ptr, ptr %14, align 8, !dbg !1771
  %279 = load i32, ptr %11, align 4, !dbg !1772
  %280 = sub nsw i32 %279, 1, !dbg !1773
  %281 = sext i32 %280 to i64, !dbg !1771
  %282 = getelementptr inbounds ptr, ptr %278, i64 %281, !dbg !1771
  %283 = load ptr, ptr %282, align 8, !dbg !1771
  store ptr %283, ptr %16, align 8, !dbg !1774
  br label %284

284:                                              ; preds = %277, %275
  %285 = load i32, ptr %23, align 4, !dbg !1775
  %286 = icmp ne i32 %285, 0, !dbg !1775
  br i1 %286, label %287, label %294, !dbg !1777

287:                                              ; preds = %284
  %288 = load i32, ptr %11, align 4, !dbg !1778
  %289 = load i32, ptr %12, align 4, !dbg !1779
  %290 = sub nsw i32 %289, 1, !dbg !1780
  %291 = icmp eq i32 %288, %290, !dbg !1781
  br i1 %291, label %292, label %294, !dbg !1777

292:                                              ; preds = %287
  %293 = load ptr, ptr %15, align 8, !dbg !1782
  store ptr %293, ptr %17, align 8, !dbg !1783
  br label %301, !dbg !1784

294:                                              ; preds = %287, %284
  %295 = load ptr, ptr %14, align 8, !dbg !1785
  %296 = load i32, ptr %11, align 4, !dbg !1786
  %297 = add nsw i32 %296, 1, !dbg !1787
  %298 = sext i32 %297 to i64, !dbg !1785
  %299 = getelementptr inbounds ptr, ptr %295, i64 %298, !dbg !1785
  %300 = load ptr, ptr %299, align 8, !dbg !1785
  store ptr %300, ptr %17, align 8, !dbg !1788
  br label %301

301:                                              ; preds = %294, %292
  %302 = load ptr, ptr %16, align 8, !dbg !1789
  %303 = getelementptr inbounds [64 x i16], ptr %302, i64 0, !dbg !1789
  %304 = getelementptr inbounds [64 x i16], ptr %303, i64 0, i64 0, !dbg !1789
  %305 = load i16, ptr %304, align 2, !dbg !1789
  %306 = sext i16 %305 to i32, !dbg !1790
  store i32 %306, ptr %36, align 4, !dbg !1791
  store i32 %306, ptr %35, align 4, !dbg !1792
  store i32 %306, ptr %34, align 4, !dbg !1793
  %307 = load ptr, ptr %15, align 8, !dbg !1794
  %308 = getelementptr inbounds [64 x i16], ptr %307, i64 0, !dbg !1794
  %309 = getelementptr inbounds [64 x i16], ptr %308, i64 0, i64 0, !dbg !1794
  %310 = load i16, ptr %309, align 2, !dbg !1794
  %311 = sext i16 %310 to i32, !dbg !1795
  store i32 %311, ptr %39, align 4, !dbg !1796
  store i32 %311, ptr %38, align 4, !dbg !1797
  store i32 %311, ptr %37, align 4, !dbg !1798
  %312 = load ptr, ptr %17, align 8, !dbg !1799
  %313 = getelementptr inbounds [64 x i16], ptr %312, i64 0, !dbg !1799
  %314 = getelementptr inbounds [64 x i16], ptr %313, i64 0, i64 0, !dbg !1799
  %315 = load i16, ptr %314, align 2, !dbg !1799
  %316 = sext i16 %315 to i32, !dbg !1800
  store i32 %316, ptr %42, align 4, !dbg !1801
  store i32 %316, ptr %41, align 4, !dbg !1802
  store i32 %316, ptr %40, align 4, !dbg !1803
  store i32 0, ptr %19, align 4, !dbg !1804
  %317 = load ptr, ptr %20, align 8, !dbg !1805
  %318 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %317, i32 0, i32 7, !dbg !1806
  %319 = load i32, ptr %318, align 4, !dbg !1806
  %320 = sub i32 %319, 1, !dbg !1807
  store i32 %320, ptr %9, align 4, !dbg !1808
  store i32 0, ptr %8, align 4, !dbg !1809
  br label %321, !dbg !1811

321:                                              ; preds = %721, %301
  %322 = load i32, ptr %8, align 4, !dbg !1812
  %323 = load i32, ptr %9, align 4, !dbg !1814
  %324 = icmp ule i32 %322, %323, !dbg !1815
  br i1 %324, label %325, label %724, !dbg !1816

325:                                              ; preds = %321
  %326 = load ptr, ptr %15, align 8, !dbg !1817
  %327 = getelementptr inbounds [64 x i16], ptr %24, i64 0, i64 0, !dbg !1819
  call void @jcopy_block_row(ptr noundef %326, ptr noundef %327, i32 noundef 1), !dbg !1820
  %328 = load i32, ptr %8, align 4, !dbg !1821
  %329 = load i32, ptr %9, align 4, !dbg !1823
  %330 = icmp ult i32 %328, %329, !dbg !1824
  br i1 %330, label %331, label %347, !dbg !1824

331:                                              ; preds = %325
  %332 = load ptr, ptr %16, align 8, !dbg !1825
  %333 = getelementptr inbounds [64 x i16], ptr %332, i64 1, !dbg !1825
  %334 = getelementptr inbounds [64 x i16], ptr %333, i64 0, i64 0, !dbg !1825
  %335 = load i16, ptr %334, align 2, !dbg !1825
  %336 = sext i16 %335 to i32, !dbg !1827
  store i32 %336, ptr %36, align 4, !dbg !1828
  %337 = load ptr, ptr %15, align 8, !dbg !1829
  %338 = getelementptr inbounds [64 x i16], ptr %337, i64 1, !dbg !1829
  %339 = getelementptr inbounds [64 x i16], ptr %338, i64 0, i64 0, !dbg !1829
  %340 = load i16, ptr %339, align 2, !dbg !1829
  %341 = sext i16 %340 to i32, !dbg !1830
  store i32 %341, ptr %39, align 4, !dbg !1831
  %342 = load ptr, ptr %17, align 8, !dbg !1832
  %343 = getelementptr inbounds [64 x i16], ptr %342, i64 1, !dbg !1832
  %344 = getelementptr inbounds [64 x i16], ptr %343, i64 0, i64 0, !dbg !1832
  %345 = load i16, ptr %344, align 2, !dbg !1832
  %346 = sext i16 %345 to i32, !dbg !1833
  store i32 %346, ptr %42, align 4, !dbg !1834
  br label %347, !dbg !1835

347:                                              ; preds = %331, %325
  %348 = load ptr, ptr %25, align 8, !dbg !1836
  %349 = getelementptr inbounds i32, ptr %348, i64 1, !dbg !1836
  %350 = load i32, ptr %349, align 4, !dbg !1836
  store i32 %350, ptr %43, align 4, !dbg !1838
  %351 = icmp ne i32 %350, 0, !dbg !1839
  br i1 %351, label %352, label %415, !dbg !1840

352:                                              ; preds = %347
  %353 = getelementptr inbounds [64 x i16], ptr %24, i64 0, i64 1, !dbg !1841
  %354 = load i16, ptr %353, align 2, !dbg !1841
  %355 = sext i16 %354 to i32, !dbg !1841
  %356 = icmp eq i32 %355, 0, !dbg !1842
  br i1 %356, label %357, label %415, !dbg !1840

357:                                              ; preds = %352
  %358 = load i64, ptr %27, align 8, !dbg !1843
  %359 = mul nsw i64 36, %358, !dbg !1845
  %360 = load i32, ptr %37, align 4, !dbg !1846
  %361 = load i32, ptr %39, align 4, !dbg !1847
  %362 = sub nsw i32 %360, %361, !dbg !1848
  %363 = sext i32 %362 to i64, !dbg !1849
  %364 = mul nsw i64 %359, %363, !dbg !1850
  store i64 %364, ptr %33, align 8, !dbg !1851
  %365 = load i64, ptr %33, align 8, !dbg !1852
  %366 = icmp sge i64 %365, 0, !dbg !1854
  br i1 %366, label %367, label %388, !dbg !1854

367:                                              ; preds = %357
  %368 = load i64, ptr %28, align 8, !dbg !1855
  %369 = shl i64 %368, 7, !dbg !1857
  %370 = load i64, ptr %33, align 8, !dbg !1858
  %371 = add nsw i64 %369, %370, !dbg !1859
  %372 = load i64, ptr %28, align 8, !dbg !1860
  %373 = shl i64 %372, 8, !dbg !1861
  %374 = sdiv i64 %371, %373, !dbg !1862
  %375 = trunc i64 %374 to i32, !dbg !1863
  store i32 %375, ptr %44, align 4, !dbg !1864
  %376 = load i32, ptr %43, align 4, !dbg !1865
  %377 = icmp sgt i32 %376, 0, !dbg !1867
  br i1 %377, label %378, label %387, !dbg !1868

378:                                              ; preds = %367
  %379 = load i32, ptr %44, align 4, !dbg !1869
  %380 = load i32, ptr %43, align 4, !dbg !1870
  %381 = shl i32 1, %380, !dbg !1871
  %382 = icmp sge i32 %379, %381, !dbg !1872
  br i1 %382, label %383, label %387, !dbg !1868

383:                                              ; preds = %378
  %384 = load i32, ptr %43, align 4, !dbg !1873
  %385 = shl i32 1, %384, !dbg !1874
  %386 = sub nsw i32 %385, 1, !dbg !1875
  store i32 %386, ptr %44, align 4, !dbg !1876
  br label %387, !dbg !1877

387:                                              ; preds = %383, %378, %367
  br label %411, !dbg !1878

388:                                              ; preds = %357
  %389 = load i64, ptr %28, align 8, !dbg !1879
  %390 = shl i64 %389, 7, !dbg !1881
  %391 = load i64, ptr %33, align 8, !dbg !1882
  %392 = sub nsw i64 %390, %391, !dbg !1883
  %393 = load i64, ptr %28, align 8, !dbg !1884
  %394 = shl i64 %393, 8, !dbg !1885
  %395 = sdiv i64 %392, %394, !dbg !1886
  %396 = trunc i64 %395 to i32, !dbg !1887
  store i32 %396, ptr %44, align 4, !dbg !1888
  %397 = load i32, ptr %43, align 4, !dbg !1889
  %398 = icmp sgt i32 %397, 0, !dbg !1891
  br i1 %398, label %399, label %408, !dbg !1892

399:                                              ; preds = %388
  %400 = load i32, ptr %44, align 4, !dbg !1893
  %401 = load i32, ptr %43, align 4, !dbg !1894
  %402 = shl i32 1, %401, !dbg !1895
  %403 = icmp sge i32 %400, %402, !dbg !1896
  br i1 %403, label %404, label %408, !dbg !1892

404:                                              ; preds = %399
  %405 = load i32, ptr %43, align 4, !dbg !1897
  %406 = shl i32 1, %405, !dbg !1898
  %407 = sub nsw i32 %406, 1, !dbg !1899
  store i32 %407, ptr %44, align 4, !dbg !1900
  br label %408, !dbg !1901

408:                                              ; preds = %404, %399, %388
  %409 = load i32, ptr %44, align 4, !dbg !1902
  %410 = sub nsw i32 0, %409, !dbg !1903
  store i32 %410, ptr %44, align 4, !dbg !1904
  br label %411

411:                                              ; preds = %408, %387
  %412 = load i32, ptr %44, align 4, !dbg !1905
  %413 = trunc i32 %412 to i16, !dbg !1906
  %414 = getelementptr inbounds [64 x i16], ptr %24, i64 0, i64 1, !dbg !1907
  store i16 %413, ptr %414, align 2, !dbg !1908
  br label %415, !dbg !1909

415:                                              ; preds = %411, %352, %347
  %416 = load ptr, ptr %25, align 8, !dbg !1910
  %417 = getelementptr inbounds i32, ptr %416, i64 2, !dbg !1910
  %418 = load i32, ptr %417, align 4, !dbg !1910
  store i32 %418, ptr %43, align 4, !dbg !1912
  %419 = icmp ne i32 %418, 0, !dbg !1913
  br i1 %419, label %420, label %483, !dbg !1914

420:                                              ; preds = %415
  %421 = getelementptr inbounds [64 x i16], ptr %24, i64 0, i64 8, !dbg !1915
  %422 = load i16, ptr %421, align 16, !dbg !1915
  %423 = sext i16 %422 to i32, !dbg !1915
  %424 = icmp eq i32 %423, 0, !dbg !1916
  br i1 %424, label %425, label %483, !dbg !1914

425:                                              ; preds = %420
  %426 = load i64, ptr %27, align 8, !dbg !1917
  %427 = mul nsw i64 36, %426, !dbg !1919
  %428 = load i32, ptr %35, align 4, !dbg !1920
  %429 = load i32, ptr %41, align 4, !dbg !1921
  %430 = sub nsw i32 %428, %429, !dbg !1922
  %431 = sext i32 %430 to i64, !dbg !1923
  %432 = mul nsw i64 %427, %431, !dbg !1924
  store i64 %432, ptr %33, align 8, !dbg !1925
  %433 = load i64, ptr %33, align 8, !dbg !1926
  %434 = icmp sge i64 %433, 0, !dbg !1928
  br i1 %434, label %435, label %456, !dbg !1928

435:                                              ; preds = %425
  %436 = load i64, ptr %30, align 8, !dbg !1929
  %437 = shl i64 %436, 7, !dbg !1931
  %438 = load i64, ptr %33, align 8, !dbg !1932
  %439 = add nsw i64 %437, %438, !dbg !1933
  %440 = load i64, ptr %30, align 8, !dbg !1934
  %441 = shl i64 %440, 8, !dbg !1935
  %442 = sdiv i64 %439, %441, !dbg !1936
  %443 = trunc i64 %442 to i32, !dbg !1937
  store i32 %443, ptr %44, align 4, !dbg !1938
  %444 = load i32, ptr %43, align 4, !dbg !1939
  %445 = icmp sgt i32 %444, 0, !dbg !1941
  br i1 %445, label %446, label %455, !dbg !1942

446:                                              ; preds = %435
  %447 = load i32, ptr %44, align 4, !dbg !1943
  %448 = load i32, ptr %43, align 4, !dbg !1944
  %449 = shl i32 1, %448, !dbg !1945
  %450 = icmp sge i32 %447, %449, !dbg !1946
  br i1 %450, label %451, label %455, !dbg !1942

451:                                              ; preds = %446
  %452 = load i32, ptr %43, align 4, !dbg !1947
  %453 = shl i32 1, %452, !dbg !1948
  %454 = sub nsw i32 %453, 1, !dbg !1949
  store i32 %454, ptr %44, align 4, !dbg !1950
  br label %455, !dbg !1951

455:                                              ; preds = %451, %446, %435
  br label %479, !dbg !1952

456:                                              ; preds = %425
  %457 = load i64, ptr %30, align 8, !dbg !1953
  %458 = shl i64 %457, 7, !dbg !1955
  %459 = load i64, ptr %33, align 8, !dbg !1956
  %460 = sub nsw i64 %458, %459, !dbg !1957
  %461 = load i64, ptr %30, align 8, !dbg !1958
  %462 = shl i64 %461, 8, !dbg !1959
  %463 = sdiv i64 %460, %462, !dbg !1960
  %464 = trunc i64 %463 to i32, !dbg !1961
  store i32 %464, ptr %44, align 4, !dbg !1962
  %465 = load i32, ptr %43, align 4, !dbg !1963
  %466 = icmp sgt i32 %465, 0, !dbg !1965
  br i1 %466, label %467, label %476, !dbg !1966

467:                                              ; preds = %456
  %468 = load i32, ptr %44, align 4, !dbg !1967
  %469 = load i32, ptr %43, align 4, !dbg !1968
  %470 = shl i32 1, %469, !dbg !1969
  %471 = icmp sge i32 %468, %470, !dbg !1970
  br i1 %471, label %472, label %476, !dbg !1966

472:                                              ; preds = %467
  %473 = load i32, ptr %43, align 4, !dbg !1971
  %474 = shl i32 1, %473, !dbg !1972
  %475 = sub nsw i32 %474, 1, !dbg !1973
  store i32 %475, ptr %44, align 4, !dbg !1974
  br label %476, !dbg !1975

476:                                              ; preds = %472, %467, %456
  %477 = load i32, ptr %44, align 4, !dbg !1976
  %478 = sub nsw i32 0, %477, !dbg !1977
  store i32 %478, ptr %44, align 4, !dbg !1978
  br label %479

479:                                              ; preds = %476, %455
  %480 = load i32, ptr %44, align 4, !dbg !1979
  %481 = trunc i32 %480 to i16, !dbg !1980
  %482 = getelementptr inbounds [64 x i16], ptr %24, i64 0, i64 8, !dbg !1981
  store i16 %481, ptr %482, align 16, !dbg !1982
  br label %483, !dbg !1983

483:                                              ; preds = %479, %420, %415
  %484 = load ptr, ptr %25, align 8, !dbg !1984
  %485 = getelementptr inbounds i32, ptr %484, i64 3, !dbg !1984
  %486 = load i32, ptr %485, align 4, !dbg !1984
  store i32 %486, ptr %43, align 4, !dbg !1986
  %487 = icmp ne i32 %486, 0, !dbg !1987
  br i1 %487, label %488, label %554, !dbg !1988

488:                                              ; preds = %483
  %489 = getelementptr inbounds [64 x i16], ptr %24, i64 0, i64 16, !dbg !1989
  %490 = load i16, ptr %489, align 16, !dbg !1989
  %491 = sext i16 %490 to i32, !dbg !1989
  %492 = icmp eq i32 %491, 0, !dbg !1990
  br i1 %492, label %493, label %554, !dbg !1988

493:                                              ; preds = %488
  %494 = load i64, ptr %27, align 8, !dbg !1991
  %495 = mul nsw i64 9, %494, !dbg !1993
  %496 = load i32, ptr %35, align 4, !dbg !1994
  %497 = load i32, ptr %41, align 4, !dbg !1995
  %498 = add nsw i32 %496, %497, !dbg !1996
  %499 = load i32, ptr %38, align 4, !dbg !1997
  %500 = mul nsw i32 2, %499, !dbg !1998
  %501 = sub nsw i32 %498, %500, !dbg !1999
  %502 = sext i32 %501 to i64, !dbg !2000
  %503 = mul nsw i64 %495, %502, !dbg !2001
  store i64 %503, ptr %33, align 8, !dbg !2002
  %504 = load i64, ptr %33, align 8, !dbg !2003
  %505 = icmp sge i64 %504, 0, !dbg !2005
  br i1 %505, label %506, label %527, !dbg !2005

506:                                              ; preds = %493
  %507 = load i64, ptr %32, align 8, !dbg !2006
  %508 = shl i64 %507, 7, !dbg !2008
  %509 = load i64, ptr %33, align 8, !dbg !2009
  %510 = add nsw i64 %508, %509, !dbg !2010
  %511 = load i64, ptr %32, align 8, !dbg !2011
  %512 = shl i64 %511, 8, !dbg !2012
  %513 = sdiv i64 %510, %512, !dbg !2013
  %514 = trunc i64 %513 to i32, !dbg !2014
  store i32 %514, ptr %44, align 4, !dbg !2015
  %515 = load i32, ptr %43, align 4, !dbg !2016
  %516 = icmp sgt i32 %515, 0, !dbg !2018
  br i1 %516, label %517, label %526, !dbg !2019

517:                                              ; preds = %506
  %518 = load i32, ptr %44, align 4, !dbg !2020
  %519 = load i32, ptr %43, align 4, !dbg !2021
  %520 = shl i32 1, %519, !dbg !2022
  %521 = icmp sge i32 %518, %520, !dbg !2023
  br i1 %521, label %522, label %526, !dbg !2019

522:                                              ; preds = %517
  %523 = load i32, ptr %43, align 4, !dbg !2024
  %524 = shl i32 1, %523, !dbg !2025
  %525 = sub nsw i32 %524, 1, !dbg !2026
  store i32 %525, ptr %44, align 4, !dbg !2027
  br label %526, !dbg !2028

526:                                              ; preds = %522, %517, %506
  br label %550, !dbg !2029

527:                                              ; preds = %493
  %528 = load i64, ptr %32, align 8, !dbg !2030
  %529 = shl i64 %528, 7, !dbg !2032
  %530 = load i64, ptr %33, align 8, !dbg !2033
  %531 = sub nsw i64 %529, %530, !dbg !2034
  %532 = load i64, ptr %32, align 8, !dbg !2035
  %533 = shl i64 %532, 8, !dbg !2036
  %534 = sdiv i64 %531, %533, !dbg !2037
  %535 = trunc i64 %534 to i32, !dbg !2038
  store i32 %535, ptr %44, align 4, !dbg !2039
  %536 = load i32, ptr %43, align 4, !dbg !2040
  %537 = icmp sgt i32 %536, 0, !dbg !2042
  br i1 %537, label %538, label %547, !dbg !2043

538:                                              ; preds = %527
  %539 = load i32, ptr %44, align 4, !dbg !2044
  %540 = load i32, ptr %43, align 4, !dbg !2045
  %541 = shl i32 1, %540, !dbg !2046
  %542 = icmp sge i32 %539, %541, !dbg !2047
  br i1 %542, label %543, label %547, !dbg !2043

543:                                              ; preds = %538
  %544 = load i32, ptr %43, align 4, !dbg !2048
  %545 = shl i32 1, %544, !dbg !2049
  %546 = sub nsw i32 %545, 1, !dbg !2050
  store i32 %546, ptr %44, align 4, !dbg !2051
  br label %547, !dbg !2052

547:                                              ; preds = %543, %538, %527
  %548 = load i32, ptr %44, align 4, !dbg !2053
  %549 = sub nsw i32 0, %548, !dbg !2054
  store i32 %549, ptr %44, align 4, !dbg !2055
  br label %550

550:                                              ; preds = %547, %526
  %551 = load i32, ptr %44, align 4, !dbg !2056
  %552 = trunc i32 %551 to i16, !dbg !2057
  %553 = getelementptr inbounds [64 x i16], ptr %24, i64 0, i64 16, !dbg !2058
  store i16 %552, ptr %553, align 16, !dbg !2059
  br label %554, !dbg !2060

554:                                              ; preds = %550, %488, %483
  %555 = load ptr, ptr %25, align 8, !dbg !2061
  %556 = getelementptr inbounds i32, ptr %555, i64 4, !dbg !2061
  %557 = load i32, ptr %556, align 4, !dbg !2061
  store i32 %557, ptr %43, align 4, !dbg !2063
  %558 = icmp ne i32 %557, 0, !dbg !2064
  br i1 %558, label %559, label %626, !dbg !2065

559:                                              ; preds = %554
  %560 = getelementptr inbounds [64 x i16], ptr %24, i64 0, i64 9, !dbg !2066
  %561 = load i16, ptr %560, align 2, !dbg !2066
  %562 = sext i16 %561 to i32, !dbg !2066
  %563 = icmp eq i32 %562, 0, !dbg !2067
  br i1 %563, label %564, label %626, !dbg !2065

564:                                              ; preds = %559
  %565 = load i64, ptr %27, align 8, !dbg !2068
  %566 = mul nsw i64 5, %565, !dbg !2070
  %567 = load i32, ptr %34, align 4, !dbg !2071
  %568 = load i32, ptr %36, align 4, !dbg !2072
  %569 = sub nsw i32 %567, %568, !dbg !2073
  %570 = load i32, ptr %40, align 4, !dbg !2074
  %571 = sub nsw i32 %569, %570, !dbg !2075
  %572 = load i32, ptr %42, align 4, !dbg !2076
  %573 = add nsw i32 %571, %572, !dbg !2077
  %574 = sext i32 %573 to i64, !dbg !2078
  %575 = mul nsw i64 %566, %574, !dbg !2079
  store i64 %575, ptr %33, align 8, !dbg !2080
  %576 = load i64, ptr %33, align 8, !dbg !2081
  %577 = icmp sge i64 %576, 0, !dbg !2083
  br i1 %577, label %578, label %599, !dbg !2083

578:                                              ; preds = %564
  %579 = load i64, ptr %31, align 8, !dbg !2084
  %580 = shl i64 %579, 7, !dbg !2086
  %581 = load i64, ptr %33, align 8, !dbg !2087
  %582 = add nsw i64 %580, %581, !dbg !2088
  %583 = load i64, ptr %31, align 8, !dbg !2089
  %584 = shl i64 %583, 8, !dbg !2090
  %585 = sdiv i64 %582, %584, !dbg !2091
  %586 = trunc i64 %585 to i32, !dbg !2092
  store i32 %586, ptr %44, align 4, !dbg !2093
  %587 = load i32, ptr %43, align 4, !dbg !2094
  %588 = icmp sgt i32 %587, 0, !dbg !2096
  br i1 %588, label %589, label %598, !dbg !2097

589:                                              ; preds = %578
  %590 = load i32, ptr %44, align 4, !dbg !2098
  %591 = load i32, ptr %43, align 4, !dbg !2099
  %592 = shl i32 1, %591, !dbg !2100
  %593 = icmp sge i32 %590, %592, !dbg !2101
  br i1 %593, label %594, label %598, !dbg !2097

594:                                              ; preds = %589
  %595 = load i32, ptr %43, align 4, !dbg !2102
  %596 = shl i32 1, %595, !dbg !2103
  %597 = sub nsw i32 %596, 1, !dbg !2104
  store i32 %597, ptr %44, align 4, !dbg !2105
  br label %598, !dbg !2106

598:                                              ; preds = %594, %589, %578
  br label %622, !dbg !2107

599:                                              ; preds = %564
  %600 = load i64, ptr %31, align 8, !dbg !2108
  %601 = shl i64 %600, 7, !dbg !2110
  %602 = load i64, ptr %33, align 8, !dbg !2111
  %603 = sub nsw i64 %601, %602, !dbg !2112
  %604 = load i64, ptr %31, align 8, !dbg !2113
  %605 = shl i64 %604, 8, !dbg !2114
  %606 = sdiv i64 %603, %605, !dbg !2115
  %607 = trunc i64 %606 to i32, !dbg !2116
  store i32 %607, ptr %44, align 4, !dbg !2117
  %608 = load i32, ptr %43, align 4, !dbg !2118
  %609 = icmp sgt i32 %608, 0, !dbg !2120
  br i1 %609, label %610, label %619, !dbg !2121

610:                                              ; preds = %599
  %611 = load i32, ptr %44, align 4, !dbg !2122
  %612 = load i32, ptr %43, align 4, !dbg !2123
  %613 = shl i32 1, %612, !dbg !2124
  %614 = icmp sge i32 %611, %613, !dbg !2125
  br i1 %614, label %615, label %619, !dbg !2121

615:                                              ; preds = %610
  %616 = load i32, ptr %43, align 4, !dbg !2126
  %617 = shl i32 1, %616, !dbg !2127
  %618 = sub nsw i32 %617, 1, !dbg !2128
  store i32 %618, ptr %44, align 4, !dbg !2129
  br label %619, !dbg !2130

619:                                              ; preds = %615, %610, %599
  %620 = load i32, ptr %44, align 4, !dbg !2131
  %621 = sub nsw i32 0, %620, !dbg !2132
  store i32 %621, ptr %44, align 4, !dbg !2133
  br label %622

622:                                              ; preds = %619, %598
  %623 = load i32, ptr %44, align 4, !dbg !2134
  %624 = trunc i32 %623 to i16, !dbg !2135
  %625 = getelementptr inbounds [64 x i16], ptr %24, i64 0, i64 9, !dbg !2136
  store i16 %624, ptr %625, align 2, !dbg !2137
  br label %626, !dbg !2138

626:                                              ; preds = %622, %559, %554
  %627 = load ptr, ptr %25, align 8, !dbg !2139
  %628 = getelementptr inbounds i32, ptr %627, i64 5, !dbg !2139
  %629 = load i32, ptr %628, align 4, !dbg !2139
  store i32 %629, ptr %43, align 4, !dbg !2141
  %630 = icmp ne i32 %629, 0, !dbg !2142
  br i1 %630, label %631, label %697, !dbg !2143

631:                                              ; preds = %626
  %632 = getelementptr inbounds [64 x i16], ptr %24, i64 0, i64 2, !dbg !2144
  %633 = load i16, ptr %632, align 4, !dbg !2144
  %634 = sext i16 %633 to i32, !dbg !2144
  %635 = icmp eq i32 %634, 0, !dbg !2145
  br i1 %635, label %636, label %697, !dbg !2143

636:                                              ; preds = %631
  %637 = load i64, ptr %27, align 8, !dbg !2146
  %638 = mul nsw i64 9, %637, !dbg !2148
  %639 = load i32, ptr %37, align 4, !dbg !2149
  %640 = load i32, ptr %39, align 4, !dbg !2150
  %641 = add nsw i32 %639, %640, !dbg !2151
  %642 = load i32, ptr %38, align 4, !dbg !2152
  %643 = mul nsw i32 2, %642, !dbg !2153
  %644 = sub nsw i32 %641, %643, !dbg !2154
  %645 = sext i32 %644 to i64, !dbg !2155
  %646 = mul nsw i64 %638, %645, !dbg !2156
  store i64 %646, ptr %33, align 8, !dbg !2157
  %647 = load i64, ptr %33, align 8, !dbg !2158
  %648 = icmp sge i64 %647, 0, !dbg !2160
  br i1 %648, label %649, label %670, !dbg !2160

649:                                              ; preds = %636
  %650 = load i64, ptr %29, align 8, !dbg !2161
  %651 = shl i64 %650, 7, !dbg !2163
  %652 = load i64, ptr %33, align 8, !dbg !2164
  %653 = add nsw i64 %651, %652, !dbg !2165
  %654 = load i64, ptr %29, align 8, !dbg !2166
  %655 = shl i64 %654, 8, !dbg !2167
  %656 = sdiv i64 %653, %655, !dbg !2168
  %657 = trunc i64 %656 to i32, !dbg !2169
  store i32 %657, ptr %44, align 4, !dbg !2170
  %658 = load i32, ptr %43, align 4, !dbg !2171
  %659 = icmp sgt i32 %658, 0, !dbg !2173
  br i1 %659, label %660, label %669, !dbg !2174

660:                                              ; preds = %649
  %661 = load i32, ptr %44, align 4, !dbg !2175
  %662 = load i32, ptr %43, align 4, !dbg !2176
  %663 = shl i32 1, %662, !dbg !2177
  %664 = icmp sge i32 %661, %663, !dbg !2178
  br i1 %664, label %665, label %669, !dbg !2174

665:                                              ; preds = %660
  %666 = load i32, ptr %43, align 4, !dbg !2179
  %667 = shl i32 1, %666, !dbg !2180
  %668 = sub nsw i32 %667, 1, !dbg !2181
  store i32 %668, ptr %44, align 4, !dbg !2182
  br label %669, !dbg !2183

669:                                              ; preds = %665, %660, %649
  br label %693, !dbg !2184

670:                                              ; preds = %636
  %671 = load i64, ptr %29, align 8, !dbg !2185
  %672 = shl i64 %671, 7, !dbg !2187
  %673 = load i64, ptr %33, align 8, !dbg !2188
  %674 = sub nsw i64 %672, %673, !dbg !2189
  %675 = load i64, ptr %29, align 8, !dbg !2190
  %676 = shl i64 %675, 8, !dbg !2191
  %677 = sdiv i64 %674, %676, !dbg !2192
  %678 = trunc i64 %677 to i32, !dbg !2193
  store i32 %678, ptr %44, align 4, !dbg !2194
  %679 = load i32, ptr %43, align 4, !dbg !2195
  %680 = icmp sgt i32 %679, 0, !dbg !2197
  br i1 %680, label %681, label %690, !dbg !2198

681:                                              ; preds = %670
  %682 = load i32, ptr %44, align 4, !dbg !2199
  %683 = load i32, ptr %43, align 4, !dbg !2200
  %684 = shl i32 1, %683, !dbg !2201
  %685 = icmp sge i32 %682, %684, !dbg !2202
  br i1 %685, label %686, label %690, !dbg !2198

686:                                              ; preds = %681
  %687 = load i32, ptr %43, align 4, !dbg !2203
  %688 = shl i32 1, %687, !dbg !2204
  %689 = sub nsw i32 %688, 1, !dbg !2205
  store i32 %689, ptr %44, align 4, !dbg !2206
  br label %690, !dbg !2207

690:                                              ; preds = %686, %681, %670
  %691 = load i32, ptr %44, align 4, !dbg !2208
  %692 = sub nsw i32 0, %691, !dbg !2209
  store i32 %692, ptr %44, align 4, !dbg !2210
  br label %693

693:                                              ; preds = %690, %669
  %694 = load i32, ptr %44, align 4, !dbg !2211
  %695 = trunc i32 %694 to i16, !dbg !2212
  %696 = getelementptr inbounds [64 x i16], ptr %24, i64 0, i64 2, !dbg !2213
  store i16 %695, ptr %696, align 4, !dbg !2214
  br label %697, !dbg !2215

697:                                              ; preds = %693, %631, %626
  %698 = load ptr, ptr %21, align 8, !dbg !2216
  %699 = load ptr, ptr %4, align 8, !dbg !2217
  %700 = load ptr, ptr %20, align 8, !dbg !2218
  %701 = getelementptr inbounds [64 x i16], ptr %24, i64 0, i64 0, !dbg !2219
  %702 = load ptr, ptr %18, align 8, !dbg !2220
  %703 = load i32, ptr %19, align 4, !dbg !2221
  call void %698(ptr noundef %699, ptr noundef %700, ptr noundef %701, ptr noundef %702, i32 noundef %703), !dbg !2222
  %704 = load i32, ptr %35, align 4, !dbg !2223
  store i32 %704, ptr %34, align 4, !dbg !2224
  %705 = load i32, ptr %36, align 4, !dbg !2225
  store i32 %705, ptr %35, align 4, !dbg !2226
  %706 = load i32, ptr %38, align 4, !dbg !2227
  store i32 %706, ptr %37, align 4, !dbg !2228
  %707 = load i32, ptr %39, align 4, !dbg !2229
  store i32 %707, ptr %38, align 4, !dbg !2230
  %708 = load i32, ptr %41, align 4, !dbg !2231
  store i32 %708, ptr %40, align 4, !dbg !2232
  %709 = load i32, ptr %42, align 4, !dbg !2233
  store i32 %709, ptr %41, align 4, !dbg !2234
  %710 = load ptr, ptr %15, align 8, !dbg !2235
  %711 = getelementptr inbounds nuw [64 x i16], ptr %710, i32 1, !dbg !2235
  store ptr %711, ptr %15, align 8, !dbg !2235
  %712 = load ptr, ptr %16, align 8, !dbg !2236
  %713 = getelementptr inbounds nuw [64 x i16], ptr %712, i32 1, !dbg !2236
  store ptr %713, ptr %16, align 8, !dbg !2236
  %714 = load ptr, ptr %17, align 8, !dbg !2237
  %715 = getelementptr inbounds nuw [64 x i16], ptr %714, i32 1, !dbg !2237
  store ptr %715, ptr %17, align 8, !dbg !2237
  %716 = load ptr, ptr %20, align 8, !dbg !2238
  %717 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %716, i32 0, i32 9, !dbg !2239
  %718 = load i32, ptr %717, align 4, !dbg !2239
  %719 = load i32, ptr %19, align 4, !dbg !2240
  %720 = add i32 %719, %718, !dbg !2240
  store i32 %720, ptr %19, align 4, !dbg !2240
  br label %721, !dbg !2241

721:                                              ; preds = %697
  %722 = load i32, ptr %8, align 4, !dbg !2242
  %723 = add i32 %722, 1, !dbg !2242
  store i32 %723, ptr %8, align 4, !dbg !2242
  br label %321, !dbg !2243, !llvm.loop !2244

724:                                              ; preds = %321
  %725 = load ptr, ptr %20, align 8, !dbg !2246
  %726 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %725, i32 0, i32 9, !dbg !2247
  %727 = load i32, ptr %726, align 4, !dbg !2247
  %728 = load ptr, ptr %18, align 8, !dbg !2248
  %729 = sext i32 %727 to i64, !dbg !2248
  %730 = getelementptr inbounds ptr, ptr %728, i64 %729, !dbg !2248
  store ptr %730, ptr %18, align 8, !dbg !2248
  br label %731, !dbg !2249

731:                                              ; preds = %724
  %732 = load i32, ptr %11, align 4, !dbg !2250
  %733 = add nsw i32 %732, 1, !dbg !2250
  store i32 %733, ptr %11, align 4, !dbg !2250
  br label %260, !dbg !2251, !llvm.loop !2252

734:                                              ; preds = %260
  br label %735, !dbg !2254

735:                                              ; preds = %734, %123
  %736 = load i32, ptr %10, align 4, !dbg !2255
  %737 = add nsw i32 %736, 1, !dbg !2255
  store i32 %737, ptr %10, align 4, !dbg !2255
  %738 = load ptr, ptr %20, align 8, !dbg !2256
  %739 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %738, i32 1, !dbg !2256
  store ptr %739, ptr %20, align 8, !dbg !2256
  br label %112, !dbg !2257, !llvm.loop !2258

740:                                              ; preds = %112
  %741 = load ptr, ptr %4, align 8, !dbg !2260
  %742 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %741, i32 0, i32 37, !dbg !2262
  %743 = load i32, ptr %742, align 8, !dbg !2263
  %744 = add i32 %743, 1, !dbg !2263
  store i32 %744, ptr %742, align 8, !dbg !2263
  %745 = load ptr, ptr %4, align 8, !dbg !2264
  %746 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %745, i32 0, i32 60, !dbg !2265
  %747 = load i32, ptr %746, align 8, !dbg !2265
  %748 = icmp ult i32 %744, %747, !dbg !2266
  br i1 %748, label %749, label %750, !dbg !2266

749:                                              ; preds = %740
  store i32 3, ptr %3, align 4, !dbg !2267
  br label %751, !dbg !2267

750:                                              ; preds = %740
  store i32 4, ptr %3, align 4, !dbg !2268
  br label %751, !dbg !2268

751:                                              ; preds = %750, %749, %106
  %752 = load i32, ptr %3, align 4, !dbg !2269
  ret i32 %752, !dbg !2269
}

declare void @jcopy_block_row(ptr noundef, ptr noundef, i32 noundef) #1

declare void @jzero_far(ptr noundef, i64 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!464, !465, !466, !467, !468, !469, !470}
!llvm.ident = !{!471}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !30, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jdcoefct.c", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "868dedb31a92aa651a41abeb6efc390d")
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
!23 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !24, line: 16, baseType: !5, size: 32, elements: !25)
!24 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jpegint.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "87e9869e13f29b8e74a9dee50528c6c5")
!25 = !{!26, !27, !28, !29}
!26 = !DIEnumerator(name: "JBUF_PASS_THRU", value: 0)
!27 = !DIEnumerator(name: "JBUF_SAVE_SOURCE", value: 1)
!28 = !DIEnumerator(name: "JBUF_CRANK_DEST", value: 2)
!29 = !DIEnumerator(name: "JBUF_SAVE_AND_PASS", value: 3)
!30 = !{!31, !55, !70, !355, !85, !130, !92, !68, !463, !69, !96, !415}
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "my_coef_ptr", file: !1, line: 62, baseType: !32)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "my_coef_controller", file: !1, line: 60, baseType: !34)
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 28, size: 1792, elements: !35)
!35 = !{!36, !455, !456, !457, !458, !460, !462}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "pub", scope: !34, file: !1, line: 29, baseType: !37, size: 320)
!37 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_d_coef_controller", file: !24, line: 165, size: 320, elements: !38)
!38 = !{!39, !447, !448, !449, !453}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "start_input_pass", scope: !37, file: !24, line: 166, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DISubroutineType(types: !42)
!42 = !{null, !43}
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "j_decompress_ptr", file: !4, line: 250, baseType: !44)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_decompress_struct", file: !4, line: 394, size: 4928, elements: !46)
!46 = !{!47, !174, !175, !176, !177, !178, !201, !202, !203, !204, !206, !207, !208, !209, !211, !212, !213, !215, !216, !217, !218, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !240, !253, !269, !270, !271, !297, !298, !299, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !321, !322, !323, !324, !328, !329, !330, !331, !332, !333, !340, !354, !356, !367, !380, !395, !404, !417, !424, !433}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !45, file: !4, line: 395, baseType: !48, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_error_mgr", file: !4, line: 618, size: 1344, elements: !50)
!50 = !{!51, !142, !143, !144, !150, !151, !152, !163, !164, !165, !170, !171, !172, !173}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "error_exit", scope: !49, file: !4, line: 620, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DISubroutineType(types: !54)
!54 = !{null, !55}
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "j_common_ptr", file: !4, line: 248, baseType: !56)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_common_struct", file: !4, line: 240, size: 256, elements: !58)
!58 = !{!59, !60, !131, !140, !141}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !57, file: !4, line: 241, baseType: !48, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !57, file: !4, line: 241, baseType: !61, size: 64, offset: 64)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_memory_mgr", file: !4, line: 731, size: 768, elements: !63)
!63 = !{!64, !73, !74, !86, !100, !108, !115, !116, !120, !124, !128, !129}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_small", scope: !62, file: !4, line: 733, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DISubroutineType(types: !67)
!67 = !{!68, !55, !69, !70}
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!69 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !71, line: 18, baseType: !72)
!71 = !DIFile(filename: "/usr/local/lib/clang/20/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!72 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_large", scope: !62, file: !4, line: 735, baseType: !65, size: 64, offset: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_sarray", scope: !62, file: !4, line: 737, baseType: !75, size: 64, offset: 128)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = !DISubroutineType(types: !77)
!77 = !{!78, !55, !69, !85, !85}
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPARRAY", file: !4, line: 67, baseType: !79)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPROW", file: !4, line: 66, baseType: !81)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPLE", file: !83, line: 59, baseType: !84)
!83 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jmorecfg.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "56a0eda58fafa6bdd5498f702a998c09")
!84 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "JDIMENSION", file: !83, line: 171, baseType: !5)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_barray", scope: !62, file: !4, line: 740, baseType: !87, size: 64, offset: 192)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DISubroutineType(types: !89)
!89 = !{!90, !55, !69, !85, !85}
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "JBLOCKARRAY", file: !4, line: 72, baseType: !91)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "JBLOCKROW", file: !4, line: 71, baseType: !93)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "JBLOCK", file: !4, line: 70, baseType: !95)
!95 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 1024, elements: !98)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "JCOEF", file: !83, line: 99, baseType: !97)
!97 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!98 = !{!99}
!99 = !DISubrange(count: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "request_virt_sarray", scope: !62, file: !4, line: 743, baseType: !101, size: 64, offset: 256)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = !DISubroutineType(types: !103)
!103 = !{!104, !55, !69, !107, !85, !85, !85}
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "jvirt_sarray_ptr", file: !4, line: 727, baseType: !105)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = !DICompositeType(tag: DW_TAG_structure_type, name: "jvirt_sarray_control", file: !4, line: 727, flags: DIFlagFwdDecl)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "boolean", file: !83, line: 227, baseType: !69)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "request_virt_barray", scope: !62, file: !4, line: 749, baseType: !109, size: 64, offset: 320)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DISubroutineType(types: !111)
!111 = !{!112, !55, !69, !107, !85, !85, !85}
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "jvirt_barray_ptr", file: !4, line: 728, baseType: !113)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = !DICompositeType(tag: DW_TAG_structure_type, name: "jvirt_barray_control", file: !4, line: 728, flags: DIFlagFwdDecl)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "realize_virt_arrays", scope: !62, file: !4, line: 755, baseType: !52, size: 64, offset: 384)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "access_virt_sarray", scope: !62, file: !4, line: 756, baseType: !117, size: 64, offset: 448)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = !DISubroutineType(types: !119)
!119 = !{!78, !55, !104, !85, !85, !107}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "access_virt_barray", scope: !62, file: !4, line: 761, baseType: !121, size: 64, offset: 512)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DISubroutineType(types: !123)
!123 = !{!90, !55, !112, !85, !85, !107}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "free_pool", scope: !62, file: !4, line: 766, baseType: !125, size: 64, offset: 576)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DISubroutineType(types: !127)
!127 = !{null, !55, !69}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "self_destruct", scope: !62, file: !4, line: 767, baseType: !52, size: 64, offset: 640)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "max_memory_to_use", scope: !62, file: !4, line: 774, baseType: !130, size: 64, offset: 704)
!130 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "progress", scope: !57, file: !4, line: 241, baseType: !132, size: 64, offset: 128)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_progress_mgr", file: !4, line: 676, size: 256, elements: !134)
!134 = !{!135, !136, !137, !138, !139}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "progress_monitor", scope: !133, file: !4, line: 677, baseType: !52, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "pass_counter", scope: !133, file: !4, line: 679, baseType: !130, size: 64, offset: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "pass_limit", scope: !133, file: !4, line: 680, baseType: !130, size: 64, offset: 128)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "completed_passes", scope: !133, file: !4, line: 681, baseType: !69, size: 32, offset: 192)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "total_passes", scope: !133, file: !4, line: 682, baseType: !69, size: 32, offset: 224)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "is_decompressor", scope: !57, file: !4, line: 241, baseType: !107, size: 32, offset: 192)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "global_state", scope: !57, file: !4, line: 241, baseType: !69, size: 32, offset: 224)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "emit_message", scope: !49, file: !4, line: 622, baseType: !125, size: 64, offset: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "output_message", scope: !49, file: !4, line: 624, baseType: !52, size: 64, offset: 128)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "format_message", scope: !49, file: !4, line: 626, baseType: !145, size: 64, offset: 192)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!146 = !DISubroutineType(types: !147)
!147 = !{null, !55, !148}
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!149 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "reset_error_mgr", scope: !49, file: !4, line: 629, baseType: !52, size: 64, offset: 256)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "msg_code", scope: !49, file: !4, line: 634, baseType: !69, size: 32, offset: 320)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "msg_parm", scope: !49, file: !4, line: 639, baseType: !153, size: 640, offset: 352)
!153 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !49, file: !4, line: 636, size: 640, elements: !154)
!154 = !{!155, !159}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !153, file: !4, line: 637, baseType: !156, size: 256)
!156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 256, elements: !157)
!157 = !{!158}
!158 = !DISubrange(count: 8)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !153, file: !4, line: 638, baseType: !160, size: 640)
!160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 640, elements: !161)
!161 = !{!162}
!162 = !DISubrange(count: 80)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "trace_level", scope: !49, file: !4, line: 643, baseType: !69, size: 32, offset: 992)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "num_warnings", scope: !49, file: !4, line: 651, baseType: !130, size: 64, offset: 1024)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "jpeg_message_table", scope: !49, file: !4, line: 663, baseType: !166, size: 64, offset: 1088)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !168)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !149)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "last_jpeg_message", scope: !49, file: !4, line: 664, baseType: !69, size: 32, offset: 1152)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "addon_message_table", scope: !49, file: !4, line: 668, baseType: !166, size: 64, offset: 1216)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "first_addon_message", scope: !49, file: !4, line: 669, baseType: !69, size: 32, offset: 1280)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "last_addon_message", scope: !49, file: !4, line: 670, baseType: !69, size: 32, offset: 1312)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !45, file: !4, line: 395, baseType: !61, size: 64, offset: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "progress", scope: !45, file: !4, line: 395, baseType: !132, size: 64, offset: 128)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "is_decompressor", scope: !45, file: !4, line: 395, baseType: !107, size: 32, offset: 192)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "global_state", scope: !45, file: !4, line: 395, baseType: !69, size: 32, offset: 224)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !45, file: !4, line: 398, baseType: !179, size: 64, offset: 256)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_source_mgr", file: !4, line: 700, size: 448, elements: !181)
!181 = !{!182, !186, !187, !188, !192, !196, !200}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "next_input_byte", scope: !180, file: !4, line: 701, baseType: !183, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !185)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "JOCTET", file: !83, line: 110, baseType: !84)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_in_buffer", scope: !180, file: !4, line: 702, baseType: !70, size: 64, offset: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "init_source", scope: !180, file: !4, line: 704, baseType: !40, size: 64, offset: 128)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "fill_input_buffer", scope: !180, file: !4, line: 705, baseType: !189, size: 64, offset: 192)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = !DISubroutineType(types: !191)
!191 = !{!107, !43}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "skip_input_data", scope: !180, file: !4, line: 706, baseType: !193, size: 64, offset: 256)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = !DISubroutineType(types: !195)
!195 = !{null, !43, !130}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "resync_to_restart", scope: !180, file: !4, line: 707, baseType: !197, size: 64, offset: 320)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = !DISubroutineType(types: !199)
!199 = !{!107, !43, !69}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "term_source", scope: !180, file: !4, line: 708, baseType: !40, size: 64, offset: 384)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "image_width", scope: !45, file: !4, line: 403, baseType: !85, size: 32, offset: 320)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "image_height", scope: !45, file: !4, line: 404, baseType: !85, size: 32, offset: 352)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "num_components", scope: !45, file: !4, line: 405, baseType: !69, size: 32, offset: 384)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "jpeg_color_space", scope: !45, file: !4, line: 406, baseType: !205, size: 32, offset: 416)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_COLOR_SPACE", file: !4, line: 201, baseType: !3)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "out_color_space", scope: !45, file: !4, line: 413, baseType: !205, size: 32, offset: 448)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "scale_num", scope: !45, file: !4, line: 415, baseType: !5, size: 32, offset: 480)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "scale_denom", scope: !45, file: !4, line: 415, baseType: !5, size: 32, offset: 512)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "output_gamma", scope: !45, file: !4, line: 417, baseType: !210, size: 64, offset: 576)
!210 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "buffered_image", scope: !45, file: !4, line: 419, baseType: !107, size: 32, offset: 640)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "raw_data_out", scope: !45, file: !4, line: 420, baseType: !107, size: 32, offset: 672)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "dct_method", scope: !45, file: !4, line: 422, baseType: !214, size: 32, offset: 704)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_DCT_METHOD", file: !4, line: 209, baseType: !13)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "do_fancy_upsampling", scope: !45, file: !4, line: 423, baseType: !107, size: 32, offset: 736)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "do_block_smoothing", scope: !45, file: !4, line: 424, baseType: !107, size: 32, offset: 768)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "quantize_colors", scope: !45, file: !4, line: 426, baseType: !107, size: 32, offset: 800)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "dither_mode", scope: !45, file: !4, line: 428, baseType: !219, size: 32, offset: 832)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_DITHER_MODE", file: !4, line: 224, baseType: !18)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "two_pass_quantize", scope: !45, file: !4, line: 429, baseType: !107, size: 32, offset: 864)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "desired_number_of_colors", scope: !45, file: !4, line: 430, baseType: !69, size: 32, offset: 896)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "enable_1pass_quant", scope: !45, file: !4, line: 432, baseType: !107, size: 32, offset: 928)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "enable_external_quant", scope: !45, file: !4, line: 433, baseType: !107, size: 32, offset: 960)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "enable_2pass_quant", scope: !45, file: !4, line: 434, baseType: !107, size: 32, offset: 992)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "output_width", scope: !45, file: !4, line: 442, baseType: !85, size: 32, offset: 1024)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "output_height", scope: !45, file: !4, line: 443, baseType: !85, size: 32, offset: 1056)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "out_color_components", scope: !45, file: !4, line: 444, baseType: !69, size: 32, offset: 1088)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "output_components", scope: !45, file: !4, line: 445, baseType: !69, size: 32, offset: 1120)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "rec_outbuf_height", scope: !45, file: !4, line: 449, baseType: !69, size: 32, offset: 1152)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "actual_number_of_colors", scope: !45, file: !4, line: 461, baseType: !69, size: 32, offset: 1184)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "colormap", scope: !45, file: !4, line: 462, baseType: !78, size: 64, offset: 1216)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "output_scanline", scope: !45, file: !4, line: 472, baseType: !85, size: 32, offset: 1280)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "input_scan_number", scope: !45, file: !4, line: 477, baseType: !69, size: 32, offset: 1312)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "input_iMCU_row", scope: !45, file: !4, line: 478, baseType: !85, size: 32, offset: 1344)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "output_scan_number", scope: !45, file: !4, line: 484, baseType: !69, size: 32, offset: 1376)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "output_iMCU_row", scope: !45, file: !4, line: 485, baseType: !85, size: 32, offset: 1408)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "coef_bits", scope: !45, file: !4, line: 494, baseType: !238, size: 64, offset: 1472)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 2048, elements: !98)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "quant_tbl_ptrs", scope: !45, file: !4, line: 505, baseType: !241, size: 256, offset: 1536)
!241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 256, elements: !251)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "JQUANT_TBL", file: !4, line: 95, baseType: !244)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 83, size: 1056, elements: !245)
!245 = !{!246, !250}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "quantval", scope: !244, file: !4, line: 88, baseType: !247, size: 1024)
!247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !248, size: 1024, elements: !98)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT16", file: !83, line: 147, baseType: !249)
!249 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "sent_table", scope: !244, file: !4, line: 94, baseType: !107, size: 32, offset: 1024)
!251 = !{!252}
!252 = !DISubrange(count: 4)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "dc_huff_tbl_ptrs", scope: !45, file: !4, line: 508, baseType: !254, size: 256, offset: 1792)
!254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !255, size: 256, elements: !251)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "JHUFF_TBL", file: !4, line: 111, baseType: !257)
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 100, size: 2240, elements: !258)
!258 = !{!259, !264, !268}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !257, file: !4, line: 102, baseType: !260, size: 136)
!260 = !DICompositeType(tag: DW_TAG_array_type, baseType: !261, size: 136, elements: !262)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT8", file: !83, line: 135, baseType: !84)
!262 = !{!263}
!263 = !DISubrange(count: 17)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "huffval", scope: !257, file: !4, line: 104, baseType: !265, size: 2048, offset: 136)
!265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !261, size: 2048, elements: !266)
!266 = !{!267}
!267 = !DISubrange(count: 256)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "sent_table", scope: !257, file: !4, line: 110, baseType: !107, size: 32, offset: 2208)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "ac_huff_tbl_ptrs", scope: !45, file: !4, line: 509, baseType: !254, size: 256, offset: 2048)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "data_precision", scope: !45, file: !4, line: 516, baseType: !69, size: 32, offset: 2304)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "comp_info", scope: !45, file: !4, line: 518, baseType: !272, size: 64, offset: 2368)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "jpeg_component_info", file: !4, line: 179, baseType: !274)
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 116, size: 768, elements: !275)
!275 = !{!276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "component_id", scope: !274, file: !4, line: 120, baseType: !69, size: 32)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "component_index", scope: !274, file: !4, line: 121, baseType: !69, size: 32, offset: 32)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "h_samp_factor", scope: !274, file: !4, line: 122, baseType: !69, size: 32, offset: 64)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "v_samp_factor", scope: !274, file: !4, line: 123, baseType: !69, size: 32, offset: 96)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "quant_tbl_no", scope: !274, file: !4, line: 124, baseType: !69, size: 32, offset: 128)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "dc_tbl_no", scope: !274, file: !4, line: 129, baseType: !69, size: 32, offset: 160)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tbl_no", scope: !274, file: !4, line: 130, baseType: !69, size: 32, offset: 192)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "width_in_blocks", scope: !274, file: !4, line: 139, baseType: !85, size: 32, offset: 224)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "height_in_blocks", scope: !274, file: !4, line: 140, baseType: !85, size: 32, offset: 256)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "DCT_scaled_size", scope: !274, file: !4, line: 147, baseType: !69, size: 32, offset: 288)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "downsampled_width", scope: !274, file: !4, line: 154, baseType: !85, size: 32, offset: 320)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "downsampled_height", scope: !274, file: !4, line: 155, baseType: !85, size: 32, offset: 352)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "component_needed", scope: !274, file: !4, line: 160, baseType: !107, size: 32, offset: 384)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_width", scope: !274, file: !4, line: 164, baseType: !69, size: 32, offset: 416)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_height", scope: !274, file: !4, line: 165, baseType: !69, size: 32, offset: 448)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_blocks", scope: !274, file: !4, line: 166, baseType: !69, size: 32, offset: 480)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_sample_width", scope: !274, file: !4, line: 167, baseType: !69, size: 32, offset: 512)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "last_col_width", scope: !274, file: !4, line: 168, baseType: !69, size: 32, offset: 544)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "last_row_height", scope: !274, file: !4, line: 169, baseType: !69, size: 32, offset: 576)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "quant_table", scope: !274, file: !4, line: 175, baseType: !242, size: 64, offset: 640)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "dct_table", scope: !274, file: !4, line: 178, baseType: !68, size: 64, offset: 704)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "progressive_mode", scope: !45, file: !4, line: 521, baseType: !107, size: 32, offset: 2432)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "arith_code", scope: !45, file: !4, line: 522, baseType: !107, size: 32, offset: 2464)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "arith_dc_L", scope: !45, file: !4, line: 524, baseType: !300, size: 128, offset: 2496)
!300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !261, size: 128, elements: !301)
!301 = !{!302}
!302 = !DISubrange(count: 16)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "arith_dc_U", scope: !45, file: !4, line: 525, baseType: !300, size: 128, offset: 2624)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "arith_ac_K", scope: !45, file: !4, line: 526, baseType: !300, size: 128, offset: 2752)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "restart_interval", scope: !45, file: !4, line: 528, baseType: !5, size: 32, offset: 2880)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "saw_JFIF_marker", scope: !45, file: !4, line: 533, baseType: !107, size: 32, offset: 2912)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "density_unit", scope: !45, file: !4, line: 535, baseType: !261, size: 8, offset: 2944)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "X_density", scope: !45, file: !4, line: 536, baseType: !248, size: 16, offset: 2960)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "Y_density", scope: !45, file: !4, line: 537, baseType: !248, size: 16, offset: 2976)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "saw_Adobe_marker", scope: !45, file: !4, line: 538, baseType: !107, size: 32, offset: 3008)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "Adobe_transform", scope: !45, file: !4, line: 539, baseType: !261, size: 8, offset: 3040)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "CCIR601_sampling", scope: !45, file: !4, line: 541, baseType: !107, size: 32, offset: 3072)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "max_h_samp_factor", scope: !45, file: !4, line: 550, baseType: !69, size: 32, offset: 3104)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "max_v_samp_factor", scope: !45, file: !4, line: 551, baseType: !69, size: 32, offset: 3136)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "min_DCT_scaled_size", scope: !45, file: !4, line: 553, baseType: !69, size: 32, offset: 3168)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "total_iMCU_rows", scope: !45, file: !4, line: 555, baseType: !85, size: 32, offset: 3200)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "sample_range_limit", scope: !45, file: !4, line: 564, baseType: !81, size: 64, offset: 3264)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "comps_in_scan", scope: !45, file: !4, line: 571, baseType: !69, size: 32, offset: 3328)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "cur_comp_info", scope: !45, file: !4, line: 572, baseType: !320, size: 256, offset: 3392)
!320 = !DICompositeType(tag: DW_TAG_array_type, baseType: !272, size: 256, elements: !251)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "MCUs_per_row", scope: !45, file: !4, line: 575, baseType: !85, size: 32, offset: 3648)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_rows_in_scan", scope: !45, file: !4, line: 576, baseType: !85, size: 32, offset: 3680)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "blocks_in_MCU", scope: !45, file: !4, line: 578, baseType: !69, size: 32, offset: 3712)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_membership", scope: !45, file: !4, line: 579, baseType: !325, size: 320, offset: 3744)
!325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 320, elements: !326)
!326 = !{!327}
!327 = !DISubrange(count: 10)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "Ss", scope: !45, file: !4, line: 583, baseType: !69, size: 32, offset: 4064)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "Se", scope: !45, file: !4, line: 583, baseType: !69, size: 32, offset: 4096)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "Ah", scope: !45, file: !4, line: 583, baseType: !69, size: 32, offset: 4128)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "Al", scope: !45, file: !4, line: 583, baseType: !69, size: 32, offset: 4160)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "unread_marker", scope: !45, file: !4, line: 589, baseType: !69, size: 32, offset: 4192)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !45, file: !4, line: 594, baseType: !334, size: 64, offset: 4224)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_decomp_master", file: !24, line: 136, size: 192, elements: !336)
!336 = !{!337, !338, !339}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_for_output_pass", scope: !335, file: !24, line: 137, baseType: !40, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "finish_output_pass", scope: !335, file: !24, line: 138, baseType: !40, size: 64, offset: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "is_dummy_pass", scope: !335, file: !24, line: 141, baseType: !107, size: 32, offset: 128)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "main", scope: !45, file: !4, line: 595, baseType: !341, size: 64, offset: 4288)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_d_main_controller", file: !24, line: 157, size: 128, elements: !343)
!343 = !{!344, !349}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !342, file: !24, line: 158, baseType: !345, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = !DISubroutineType(types: !347)
!347 = !{null, !43, !348}
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_BUF_MODE", file: !24, line: 22, baseType: !23)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "process_data", scope: !342, file: !24, line: 159, baseType: !350, size: 64, offset: 64)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = !DISubroutineType(types: !352)
!352 = !{null, !43, !78, !353, !85}
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "coef", scope: !45, file: !4, line: 596, baseType: !355, size: 64, offset: 4352)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "post", scope: !45, file: !4, line: 597, baseType: !357, size: 64, offset: 4416)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_d_post_controller", file: !24, line: 176, size: 128, elements: !359)
!359 = !{!360, !361}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !358, file: !24, line: 177, baseType: !345, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "post_process_data", scope: !358, file: !24, line: 178, baseType: !362, size: 64, offset: 64)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = !DISubroutineType(types: !364)
!364 = !{null, !43, !365, !353, !85, !78, !353, !85}
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPIMAGE", file: !4, line: 68, baseType: !366)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "inputctl", scope: !45, file: !4, line: 598, baseType: !368, size: 64, offset: 4480)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_input_controller", file: !24, line: 145, size: 320, elements: !370)
!370 = !{!371, !375, !376, !377, !378, !379}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "consume_input", scope: !369, file: !24, line: 146, baseType: !372, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = !DISubroutineType(types: !374)
!374 = !{!69, !43}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "reset_input_controller", scope: !369, file: !24, line: 147, baseType: !40, size: 64, offset: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "start_input_pass", scope: !369, file: !24, line: 148, baseType: !40, size: 64, offset: 128)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "finish_input_pass", scope: !369, file: !24, line: 149, baseType: !40, size: 64, offset: 192)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "has_multiple_scans", scope: !369, file: !24, line: 152, baseType: !107, size: 32, offset: 256)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "eoi_reached", scope: !369, file: !24, line: 153, baseType: !107, size: 32, offset: 288)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "marker", scope: !45, file: !4, line: 599, baseType: !381, size: 64, offset: 4544)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_marker_reader", file: !24, line: 188, size: 1408, elements: !383)
!383 = !{!384, !385, !386, !388, !389, !391, !392, !393, !394}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "reset_marker_reader", scope: !382, file: !24, line: 189, baseType: !40, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "read_markers", scope: !382, file: !24, line: 194, baseType: !372, size: 64, offset: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "read_restart_marker", scope: !382, file: !24, line: 196, baseType: !387, size: 64, offset: 128)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "jpeg_marker_parser_method", file: !4, line: 781, baseType: !189)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "process_COM", scope: !382, file: !24, line: 198, baseType: !387, size: 64, offset: 192)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "process_APPn", scope: !382, file: !24, line: 199, baseType: !390, size: 1024, offset: 256)
!390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !387, size: 1024, elements: !301)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "saw_SOI", scope: !382, file: !24, line: 204, baseType: !107, size: 32, offset: 1280)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "saw_SOF", scope: !382, file: !24, line: 205, baseType: !107, size: 32, offset: 1312)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "next_restart_num", scope: !382, file: !24, line: 206, baseType: !69, size: 32, offset: 1344)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "discarded_bytes", scope: !382, file: !24, line: 207, baseType: !5, size: 32, offset: 1376)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "entropy", scope: !45, file: !4, line: 600, baseType: !396, size: 64, offset: 4608)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_entropy_decoder", file: !24, line: 211, size: 128, elements: !398)
!398 = !{!399, !400}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !397, file: !24, line: 212, baseType: !40, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "decode_mcu", scope: !397, file: !24, line: 213, baseType: !401, size: 64, offset: 64)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!402 = !DISubroutineType(types: !403)
!403 = !{!107, !43, !91}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "idct", scope: !45, file: !4, line: 601, baseType: !405, size: 64, offset: 4672)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_inverse_dct", file: !24, line: 223, size: 704, elements: !407)
!407 = !{!408, !409}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !406, file: !24, line: 224, baseType: !40, size: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "inverse_DCT", scope: !406, file: !24, line: 226, baseType: !410, size: 640, offset: 64)
!410 = !DICompositeType(tag: DW_TAG_array_type, baseType: !411, size: 640, elements: !326)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "inverse_DCT_method_ptr", file: !24, line: 218, baseType: !412)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = !DISubroutineType(types: !414)
!414 = !{null, !43, !272, !415, !78, !85}
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "JCOEFPTR", file: !4, line: 75, baseType: !416)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "upsample", scope: !45, file: !4, line: 602, baseType: !418, size: 64, offset: 4736)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_upsampler", file: !24, line: 230, size: 192, elements: !420)
!420 = !{!421, !422, !423}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !419, file: !24, line: 231, baseType: !40, size: 64)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "upsample", scope: !419, file: !24, line: 232, baseType: !362, size: 64, offset: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "need_context_rows", scope: !419, file: !24, line: 240, baseType: !107, size: 32, offset: 128)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "cconvert", scope: !45, file: !4, line: 603, baseType: !425, size: 64, offset: 4800)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_color_deconverter", file: !24, line: 244, size: 128, elements: !427)
!427 = !{!428, !429}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !426, file: !24, line: 245, baseType: !40, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "color_convert", scope: !426, file: !24, line: 246, baseType: !430, size: 64, offset: 64)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = !DISubroutineType(types: !432)
!432 = !{null, !43, !365, !85, !78, !69}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "cquantize", scope: !45, file: !4, line: 604, baseType: !434, size: 64, offset: 4864)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_color_quantizer", file: !24, line: 252, size: 256, elements: !436)
!436 = !{!437, !441, !445, !446}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !435, file: !24, line: 253, baseType: !438, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!439 = !DISubroutineType(types: !440)
!440 = !{null, !43, !107}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "color_quantize", scope: !435, file: !24, line: 254, baseType: !442, size: 64, offset: 64)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = !DISubroutineType(types: !444)
!444 = !{null, !43, !78, !78, !69}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "finish_pass", scope: !435, file: !24, line: 257, baseType: !40, size: 64, offset: 128)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "new_color_map", scope: !435, file: !24, line: 258, baseType: !40, size: 64, offset: 192)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "consume_data", scope: !37, file: !24, line: 167, baseType: !372, size: 64, offset: 64)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "start_output_pass", scope: !37, file: !24, line: 168, baseType: !40, size: 64, offset: 128)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "decompress_data", scope: !37, file: !24, line: 169, baseType: !450, size: 64, offset: 192)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = !DISubroutineType(types: !452)
!452 = !{!69, !43, !365}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "coef_arrays", scope: !37, file: !24, line: 172, baseType: !454, size: 64, offset: 256)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_ctr", scope: !34, file: !1, line: 33, baseType: !85, size: 32, offset: 320)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_vert_offset", scope: !34, file: !1, line: 34, baseType: !69, size: 32, offset: 352)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_rows_per_iMCU_row", scope: !34, file: !1, line: 35, baseType: !69, size: 32, offset: 384)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_buffer", scope: !34, file: !1, line: 48, baseType: !459, size: 640, offset: 448)
!459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 640, elements: !326)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "whole_image", scope: !34, file: !1, line: 52, baseType: !461, size: 640, offset: 1088)
!461 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 640, elements: !326)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "coef_bits_latch", scope: !34, file: !1, line: 57, baseType: !463, size: 64, offset: 1728)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!464 = !{i32 7, !"Dwarf Version", i32 5}
!465 = !{i32 2, !"Debug Info Version", i32 3}
!466 = !{i32 1, !"wchar_size", i32 4}
!467 = !{i32 8, !"PIC Level", i32 2}
!468 = !{i32 7, !"PIE Level", i32 2}
!469 = !{i32 7, !"uwtable", i32 2}
!470 = !{i32 7, !"frame-pointer", i32 2}
!471 = !{!"clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)"}
!472 = distinct !DISubprogram(name: "jinit_d_coef_controller", scope: !1, file: !1, line: 675, type: !439, scopeLine: 676, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !473)
!473 = !{}
!474 = !DILocalVariable(name: "cinfo", arg: 1, scope: !472, file: !1, line: 675, type: !43)
!475 = !DILocation(line: 675, column: 43, scope: !472)
!476 = !DILocalVariable(name: "need_full_buffer", arg: 2, scope: !472, file: !1, line: 675, type: !107)
!477 = !DILocation(line: 675, column: 58, scope: !472)
!478 = !DILocalVariable(name: "coef", scope: !472, file: !1, line: 677, type: !31)
!479 = !DILocation(line: 677, column: 15, scope: !472)
!480 = !DILocation(line: 680, column: 7, scope: !472)
!481 = !DILocation(line: 680, column: 14, scope: !472)
!482 = !DILocation(line: 680, column: 19, scope: !472)
!483 = !DILocation(line: 680, column: 48, scope: !472)
!484 = !DILocation(line: 680, column: 5, scope: !472)
!485 = !DILocation(line: 679, column: 8, scope: !472)
!486 = !DILocation(line: 682, column: 51, scope: !472)
!487 = !DILocation(line: 682, column: 3, scope: !472)
!488 = !DILocation(line: 682, column: 10, scope: !472)
!489 = !DILocation(line: 682, column: 15, scope: !472)
!490 = !DILocation(line: 683, column: 3, scope: !472)
!491 = !DILocation(line: 683, column: 9, scope: !472)
!492 = !DILocation(line: 683, column: 13, scope: !472)
!493 = !DILocation(line: 683, column: 30, scope: !472)
!494 = !DILocation(line: 684, column: 3, scope: !472)
!495 = !DILocation(line: 684, column: 9, scope: !472)
!496 = !DILocation(line: 684, column: 13, scope: !472)
!497 = !DILocation(line: 684, column: 31, scope: !472)
!498 = !DILocation(line: 686, column: 3, scope: !472)
!499 = !DILocation(line: 686, column: 9, scope: !472)
!500 = !DILocation(line: 686, column: 25, scope: !472)
!501 = !DILocation(line: 690, column: 7, scope: !502)
!502 = distinct !DILexicalBlock(scope: !472, file: !1, line: 690, column: 7)
!503 = !DILocalVariable(name: "ci", scope: !504, file: !1, line: 695, type: !69)
!504 = distinct !DILexicalBlock(scope: !502, file: !1, line: 690, column: 25)
!505 = !DILocation(line: 695, column: 9, scope: !504)
!506 = !DILocalVariable(name: "access_rows", scope: !504, file: !1, line: 695, type: !69)
!507 = !DILocation(line: 695, column: 13, scope: !504)
!508 = !DILocalVariable(name: "compptr", scope: !504, file: !1, line: 696, type: !272)
!509 = !DILocation(line: 696, column: 26, scope: !504)
!510 = !DILocation(line: 698, column: 13, scope: !511)
!511 = distinct !DILexicalBlock(scope: !504, file: !1, line: 698, column: 5)
!512 = !DILocation(line: 698, column: 28, scope: !511)
!513 = !DILocation(line: 698, column: 35, scope: !511)
!514 = !DILocation(line: 698, column: 26, scope: !511)
!515 = !DILocation(line: 698, column: 10, scope: !511)
!516 = !DILocation(line: 698, column: 46, scope: !517)
!517 = distinct !DILexicalBlock(scope: !511, file: !1, line: 698, column: 5)
!518 = !DILocation(line: 698, column: 51, scope: !517)
!519 = !DILocation(line: 698, column: 58, scope: !517)
!520 = !DILocation(line: 698, column: 49, scope: !517)
!521 = !DILocation(line: 698, column: 5, scope: !511)
!522 = !DILocation(line: 700, column: 21, scope: !523)
!523 = distinct !DILexicalBlock(scope: !517, file: !1, line: 699, column: 20)
!524 = !DILocation(line: 700, column: 30, scope: !523)
!525 = !DILocation(line: 700, column: 19, scope: !523)
!526 = !DILocation(line: 703, column: 11, scope: !527)
!527 = distinct !DILexicalBlock(scope: !523, file: !1, line: 703, column: 11)
!528 = !DILocation(line: 703, column: 18, scope: !527)
!529 = !DILocation(line: 704, column: 14, scope: !527)
!530 = !DILocation(line: 704, column: 2, scope: !527)
!531 = !DILocation(line: 706, column: 33, scope: !523)
!532 = !DILocation(line: 706, column: 40, scope: !523)
!533 = !DILocation(line: 706, column: 45, scope: !523)
!534 = !DILocation(line: 707, column: 18, scope: !523)
!535 = !DILocation(line: 708, column: 33, scope: !523)
!536 = !DILocation(line: 708, column: 42, scope: !523)
!537 = !DILocation(line: 708, column: 26, scope: !523)
!538 = !DILocation(line: 709, column: 12, scope: !523)
!539 = !DILocation(line: 709, column: 21, scope: !523)
!540 = !DILocation(line: 709, column: 5, scope: !523)
!541 = !DILocation(line: 708, column: 16, scope: !523)
!542 = !DILocation(line: 708, column: 3, scope: !523)
!543 = !DILocation(line: 710, column: 33, scope: !523)
!544 = !DILocation(line: 710, column: 42, scope: !523)
!545 = !DILocation(line: 710, column: 26, scope: !523)
!546 = !DILocation(line: 711, column: 12, scope: !523)
!547 = !DILocation(line: 711, column: 21, scope: !523)
!548 = !DILocation(line: 711, column: 5, scope: !523)
!549 = !DILocation(line: 710, column: 16, scope: !523)
!550 = !DILocation(line: 710, column: 3, scope: !523)
!551 = !DILocation(line: 712, column: 16, scope: !523)
!552 = !DILocation(line: 706, column: 31, scope: !523)
!553 = !DILocation(line: 706, column: 7, scope: !523)
!554 = !DILocation(line: 706, column: 13, scope: !523)
!555 = !DILocation(line: 706, column: 25, scope: !523)
!556 = !DILocation(line: 706, column: 29, scope: !523)
!557 = !DILocation(line: 713, column: 5, scope: !523)
!558 = !DILocation(line: 699, column: 5, scope: !517)
!559 = !DILocation(line: 699, column: 16, scope: !517)
!560 = !DILocation(line: 698, column: 5, scope: !517)
!561 = distinct !{!561, !521, !562, !563}
!562 = !DILocation(line: 713, column: 5, scope: !511)
!563 = !{!"llvm.loop.mustprogress"}
!564 = !DILocation(line: 714, column: 5, scope: !504)
!565 = !DILocation(line: 714, column: 11, scope: !504)
!566 = !DILocation(line: 714, column: 15, scope: !504)
!567 = !DILocation(line: 714, column: 28, scope: !504)
!568 = !DILocation(line: 715, column: 5, scope: !504)
!569 = !DILocation(line: 715, column: 11, scope: !504)
!570 = !DILocation(line: 715, column: 15, scope: !504)
!571 = !DILocation(line: 715, column: 31, scope: !504)
!572 = !DILocation(line: 716, column: 29, scope: !504)
!573 = !DILocation(line: 716, column: 35, scope: !504)
!574 = !DILocation(line: 716, column: 5, scope: !504)
!575 = !DILocation(line: 716, column: 11, scope: !504)
!576 = !DILocation(line: 716, column: 15, scope: !504)
!577 = !DILocation(line: 716, column: 27, scope: !504)
!578 = !DILocation(line: 720, column: 3, scope: !504)
!579 = !DILocalVariable(name: "buffer", scope: !580, file: !1, line: 722, type: !92)
!580 = distinct !DILexicalBlock(scope: !502, file: !1, line: 720, column: 10)
!581 = !DILocation(line: 722, column: 15, scope: !580)
!582 = !DILocalVariable(name: "i", scope: !580, file: !1, line: 723, type: !69)
!583 = !DILocation(line: 723, column: 9, scope: !580)
!584 = !DILocation(line: 726, column: 9, scope: !580)
!585 = !DILocation(line: 726, column: 16, scope: !580)
!586 = !DILocation(line: 726, column: 21, scope: !580)
!587 = !DILocation(line: 726, column: 50, scope: !580)
!588 = !DILocation(line: 726, column: 7, scope: !580)
!589 = !DILocation(line: 725, column: 12, scope: !580)
!590 = !DILocation(line: 728, column: 12, scope: !591)
!591 = distinct !DILexicalBlock(scope: !580, file: !1, line: 728, column: 5)
!592 = !DILocation(line: 728, column: 10, scope: !591)
!593 = !DILocation(line: 728, column: 17, scope: !594)
!594 = distinct !DILexicalBlock(scope: !591, file: !1, line: 728, column: 5)
!595 = !DILocation(line: 728, column: 19, scope: !594)
!596 = !DILocation(line: 728, column: 5, scope: !591)
!597 = !DILocation(line: 729, column: 29, scope: !598)
!598 = distinct !DILexicalBlock(scope: !594, file: !1, line: 728, column: 47)
!599 = !DILocation(line: 729, column: 38, scope: !598)
!600 = !DILocation(line: 729, column: 36, scope: !598)
!601 = !DILocation(line: 729, column: 7, scope: !598)
!602 = !DILocation(line: 729, column: 13, scope: !598)
!603 = !DILocation(line: 729, column: 24, scope: !598)
!604 = !DILocation(line: 729, column: 27, scope: !598)
!605 = !DILocation(line: 730, column: 5, scope: !598)
!606 = !DILocation(line: 728, column: 43, scope: !594)
!607 = !DILocation(line: 728, column: 5, scope: !594)
!608 = distinct !{!608, !596, !609, !563}
!609 = !DILocation(line: 730, column: 5, scope: !591)
!610 = !DILocation(line: 731, column: 5, scope: !580)
!611 = !DILocation(line: 731, column: 11, scope: !580)
!612 = !DILocation(line: 731, column: 15, scope: !580)
!613 = !DILocation(line: 731, column: 28, scope: !580)
!614 = !DILocation(line: 732, column: 5, scope: !580)
!615 = !DILocation(line: 732, column: 11, scope: !580)
!616 = !DILocation(line: 732, column: 15, scope: !580)
!617 = !DILocation(line: 732, column: 31, scope: !580)
!618 = !DILocation(line: 733, column: 5, scope: !580)
!619 = !DILocation(line: 733, column: 11, scope: !580)
!620 = !DILocation(line: 733, column: 15, scope: !580)
!621 = !DILocation(line: 733, column: 27, scope: !580)
!622 = !DILocation(line: 735, column: 1, scope: !472)
!623 = distinct !DISubprogram(name: "start_input_pass", scope: !1, file: !1, line: 107, type: !41, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !473)
!624 = !DILocalVariable(name: "cinfo", arg: 1, scope: !623, file: !1, line: 107, type: !43)
!625 = !DILocation(line: 107, column: 36, scope: !623)
!626 = !DILocation(line: 109, column: 3, scope: !623)
!627 = !DILocation(line: 109, column: 10, scope: !623)
!628 = !DILocation(line: 109, column: 25, scope: !623)
!629 = !DILocation(line: 110, column: 18, scope: !623)
!630 = !DILocation(line: 110, column: 3, scope: !623)
!631 = !DILocation(line: 111, column: 1, scope: !623)
!632 = distinct !DISubprogram(name: "start_output_pass", scope: !1, file: !1, line: 119, type: !41, scopeLine: 120, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !473)
!633 = !DILocalVariable(name: "cinfo", arg: 1, scope: !632, file: !1, line: 119, type: !43)
!634 = !DILocation(line: 119, column: 37, scope: !632)
!635 = !DILocalVariable(name: "coef", scope: !632, file: !1, line: 122, type: !31)
!636 = !DILocation(line: 122, column: 15, scope: !632)
!637 = !DILocation(line: 122, column: 36, scope: !632)
!638 = !DILocation(line: 122, column: 43, scope: !632)
!639 = !DILocation(line: 125, column: 7, scope: !640)
!640 = distinct !DILexicalBlock(scope: !632, file: !1, line: 125, column: 7)
!641 = !DILocation(line: 125, column: 13, scope: !640)
!642 = !DILocation(line: 125, column: 17, scope: !640)
!643 = !DILocation(line: 125, column: 29, scope: !640)
!644 = !DILocation(line: 126, column: 9, scope: !645)
!645 = distinct !DILexicalBlock(scope: !646, file: !1, line: 126, column: 9)
!646 = distinct !DILexicalBlock(scope: !640, file: !1, line: 125, column: 38)
!647 = !DILocation(line: 126, column: 16, scope: !645)
!648 = !DILocation(line: 126, column: 35, scope: !645)
!649 = !DILocation(line: 126, column: 51, scope: !645)
!650 = !DILocation(line: 126, column: 38, scope: !645)
!651 = !DILocation(line: 127, column: 7, scope: !645)
!652 = !DILocation(line: 127, column: 13, scope: !645)
!653 = !DILocation(line: 127, column: 17, scope: !645)
!654 = !DILocation(line: 127, column: 33, scope: !645)
!655 = !DILocation(line: 129, column: 7, scope: !645)
!656 = !DILocation(line: 129, column: 13, scope: !645)
!657 = !DILocation(line: 129, column: 17, scope: !645)
!658 = !DILocation(line: 129, column: 33, scope: !645)
!659 = !DILocation(line: 130, column: 3, scope: !646)
!660 = !DILocation(line: 132, column: 3, scope: !632)
!661 = !DILocation(line: 132, column: 10, scope: !632)
!662 = !DILocation(line: 132, column: 26, scope: !632)
!663 = !DILocation(line: 133, column: 1, scope: !632)
!664 = distinct !DISubprogram(name: "consume_data", scope: !1, file: !1, line: 243, type: !373, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !473)
!665 = !DILocalVariable(name: "cinfo", arg: 1, scope: !664, file: !1, line: 243, type: !43)
!666 = !DILocation(line: 243, column: 32, scope: !664)
!667 = !DILocalVariable(name: "coef", scope: !664, file: !1, line: 245, type: !31)
!668 = !DILocation(line: 245, column: 15, scope: !664)
!669 = !DILocation(line: 245, column: 36, scope: !664)
!670 = !DILocation(line: 245, column: 43, scope: !664)
!671 = !DILocalVariable(name: "MCU_col_num", scope: !664, file: !1, line: 246, type: !85)
!672 = !DILocation(line: 246, column: 14, scope: !664)
!673 = !DILocalVariable(name: "blkn", scope: !664, file: !1, line: 247, type: !69)
!674 = !DILocation(line: 247, column: 7, scope: !664)
!675 = !DILocalVariable(name: "ci", scope: !664, file: !1, line: 247, type: !69)
!676 = !DILocation(line: 247, column: 13, scope: !664)
!677 = !DILocalVariable(name: "xindex", scope: !664, file: !1, line: 247, type: !69)
!678 = !DILocation(line: 247, column: 17, scope: !664)
!679 = !DILocalVariable(name: "yindex", scope: !664, file: !1, line: 247, type: !69)
!680 = !DILocation(line: 247, column: 25, scope: !664)
!681 = !DILocalVariable(name: "yoffset", scope: !664, file: !1, line: 247, type: !69)
!682 = !DILocation(line: 247, column: 33, scope: !664)
!683 = !DILocalVariable(name: "start_col", scope: !664, file: !1, line: 248, type: !85)
!684 = !DILocation(line: 248, column: 14, scope: !664)
!685 = !DILocalVariable(name: "buffer", scope: !664, file: !1, line: 249, type: !686)
!686 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 256, elements: !251)
!687 = !DILocation(line: 249, column: 15, scope: !664)
!688 = !DILocalVariable(name: "buffer_ptr", scope: !664, file: !1, line: 250, type: !92)
!689 = !DILocation(line: 250, column: 13, scope: !664)
!690 = !DILocalVariable(name: "compptr", scope: !664, file: !1, line: 251, type: !272)
!691 = !DILocation(line: 251, column: 24, scope: !664)
!692 = !DILocation(line: 254, column: 11, scope: !693)
!693 = distinct !DILexicalBlock(scope: !664, file: !1, line: 254, column: 3)
!694 = !DILocation(line: 254, column: 8, scope: !693)
!695 = !DILocation(line: 254, column: 16, scope: !696)
!696 = distinct !DILexicalBlock(scope: !693, file: !1, line: 254, column: 3)
!697 = !DILocation(line: 254, column: 21, scope: !696)
!698 = !DILocation(line: 254, column: 28, scope: !696)
!699 = !DILocation(line: 254, column: 19, scope: !696)
!700 = !DILocation(line: 254, column: 3, scope: !693)
!701 = !DILocation(line: 255, column: 15, scope: !702)
!702 = distinct !DILexicalBlock(scope: !696, file: !1, line: 254, column: 49)
!703 = !DILocation(line: 255, column: 22, scope: !702)
!704 = !DILocation(line: 255, column: 36, scope: !702)
!705 = !DILocation(line: 255, column: 13, scope: !702)
!706 = !DILocation(line: 256, column: 20, scope: !702)
!707 = !DILocation(line: 256, column: 27, scope: !702)
!708 = !DILocation(line: 256, column: 32, scope: !702)
!709 = !DILocation(line: 257, column: 23, scope: !702)
!710 = !DILocation(line: 257, column: 30, scope: !702)
!711 = !DILocation(line: 257, column: 36, scope: !702)
!712 = !DILocation(line: 257, column: 48, scope: !702)
!713 = !DILocation(line: 257, column: 57, scope: !702)
!714 = !DILocation(line: 258, column: 8, scope: !702)
!715 = !DILocation(line: 258, column: 15, scope: !702)
!716 = !DILocation(line: 258, column: 32, scope: !702)
!717 = !DILocation(line: 258, column: 41, scope: !702)
!718 = !DILocation(line: 258, column: 30, scope: !702)
!719 = !DILocation(line: 259, column: 21, scope: !702)
!720 = !DILocation(line: 259, column: 30, scope: !702)
!721 = !DILocation(line: 256, column: 18, scope: !702)
!722 = !DILocation(line: 256, column: 12, scope: !702)
!723 = !DILocation(line: 256, column: 5, scope: !702)
!724 = !DILocation(line: 256, column: 16, scope: !702)
!725 = !DILocation(line: 264, column: 3, scope: !702)
!726 = !DILocation(line: 254, column: 45, scope: !696)
!727 = !DILocation(line: 254, column: 3, scope: !696)
!728 = distinct !{!728, !700, !729, !563}
!729 = !DILocation(line: 264, column: 3, scope: !693)
!730 = !DILocation(line: 267, column: 18, scope: !731)
!731 = distinct !DILexicalBlock(scope: !664, file: !1, line: 267, column: 3)
!732 = !DILocation(line: 267, column: 24, scope: !731)
!733 = !DILocation(line: 267, column: 16, scope: !731)
!734 = !DILocation(line: 267, column: 8, scope: !731)
!735 = !DILocation(line: 267, column: 41, scope: !736)
!736 = distinct !DILexicalBlock(scope: !731, file: !1, line: 267, column: 3)
!737 = !DILocation(line: 267, column: 51, scope: !736)
!738 = !DILocation(line: 267, column: 57, scope: !736)
!739 = !DILocation(line: 267, column: 49, scope: !736)
!740 = !DILocation(line: 267, column: 3, scope: !731)
!741 = !DILocation(line: 269, column: 24, scope: !742)
!742 = distinct !DILexicalBlock(scope: !743, file: !1, line: 269, column: 5)
!743 = distinct !DILexicalBlock(scope: !736, file: !1, line: 268, column: 19)
!744 = !DILocation(line: 269, column: 30, scope: !742)
!745 = !DILocation(line: 269, column: 22, scope: !742)
!746 = !DILocation(line: 269, column: 10, scope: !742)
!747 = !DILocation(line: 269, column: 39, scope: !748)
!748 = distinct !DILexicalBlock(scope: !742, file: !1, line: 269, column: 5)
!749 = !DILocation(line: 269, column: 53, scope: !748)
!750 = !DILocation(line: 269, column: 60, scope: !748)
!751 = !DILocation(line: 269, column: 51, scope: !748)
!752 = !DILocation(line: 269, column: 5, scope: !742)
!753 = !DILocation(line: 272, column: 12, scope: !754)
!754 = distinct !DILexicalBlock(scope: !748, file: !1, line: 270, column: 18)
!755 = !DILocation(line: 273, column: 15, scope: !756)
!756 = distinct !DILexicalBlock(scope: !754, file: !1, line: 273, column: 7)
!757 = !DILocation(line: 273, column: 12, scope: !756)
!758 = !DILocation(line: 273, column: 20, scope: !759)
!759 = distinct !DILexicalBlock(scope: !756, file: !1, line: 273, column: 7)
!760 = !DILocation(line: 273, column: 25, scope: !759)
!761 = !DILocation(line: 273, column: 32, scope: !759)
!762 = !DILocation(line: 273, column: 23, scope: !759)
!763 = !DILocation(line: 273, column: 7, scope: !756)
!764 = !DILocation(line: 274, column: 12, scope: !765)
!765 = distinct !DILexicalBlock(scope: !759, file: !1, line: 273, column: 53)
!766 = !DILocation(line: 274, column: 19, scope: !765)
!767 = !DILocation(line: 274, column: 33, scope: !765)
!768 = !DILocation(line: 274, column: 10, scope: !765)
!769 = !DILocation(line: 275, column: 14, scope: !765)
!770 = !DILocation(line: 275, column: 28, scope: !765)
!771 = !DILocation(line: 275, column: 37, scope: !765)
!772 = !DILocation(line: 275, column: 26, scope: !765)
!773 = !DILocation(line: 275, column: 12, scope: !765)
!774 = !DILocation(line: 276, column: 14, scope: !775)
!775 = distinct !DILexicalBlock(scope: !765, file: !1, line: 276, column: 2)
!776 = !DILocation(line: 276, column: 7, scope: !775)
!777 = !DILocation(line: 276, column: 19, scope: !778)
!778 = distinct !DILexicalBlock(scope: !775, file: !1, line: 276, column: 2)
!779 = !DILocation(line: 276, column: 28, scope: !778)
!780 = !DILocation(line: 276, column: 37, scope: !778)
!781 = !DILocation(line: 276, column: 26, scope: !778)
!782 = !DILocation(line: 276, column: 2, scope: !775)
!783 = !DILocation(line: 277, column: 24, scope: !784)
!784 = distinct !DILexicalBlock(scope: !778, file: !1, line: 276, column: 59)
!785 = !DILocation(line: 277, column: 17, scope: !784)
!786 = !DILocation(line: 277, column: 28, scope: !784)
!787 = !DILocation(line: 277, column: 35, scope: !784)
!788 = !DILocation(line: 277, column: 34, scope: !784)
!789 = !DILocation(line: 277, column: 46, scope: !784)
!790 = !DILocation(line: 277, column: 44, scope: !784)
!791 = !DILocation(line: 277, column: 15, scope: !784)
!792 = !DILocation(line: 278, column: 16, scope: !793)
!793 = distinct !DILexicalBlock(scope: !784, file: !1, line: 278, column: 4)
!794 = !DILocation(line: 278, column: 9, scope: !793)
!795 = !DILocation(line: 278, column: 21, scope: !796)
!796 = distinct !DILexicalBlock(scope: !793, file: !1, line: 278, column: 4)
!797 = !DILocation(line: 278, column: 30, scope: !796)
!798 = !DILocation(line: 278, column: 39, scope: !796)
!799 = !DILocation(line: 278, column: 28, scope: !796)
!800 = !DILocation(line: 278, column: 4, scope: !793)
!801 = !DILocation(line: 279, column: 43, scope: !802)
!802 = distinct !DILexicalBlock(scope: !796, file: !1, line: 278, column: 60)
!803 = !DILocation(line: 279, column: 6, scope: !802)
!804 = !DILocation(line: 279, column: 12, scope: !802)
!805 = !DILocation(line: 279, column: 27, scope: !802)
!806 = !DILocation(line: 279, column: 31, scope: !802)
!807 = !DILocation(line: 280, column: 4, scope: !802)
!808 = !DILocation(line: 278, column: 56, scope: !796)
!809 = !DILocation(line: 278, column: 4, scope: !796)
!810 = distinct !{!810, !800, !811, !563}
!811 = !DILocation(line: 280, column: 4, scope: !793)
!812 = !DILocation(line: 281, column: 2, scope: !784)
!813 = !DILocation(line: 276, column: 55, scope: !778)
!814 = !DILocation(line: 276, column: 2, scope: !778)
!815 = distinct !{!815, !782, !816, !563}
!816 = !DILocation(line: 281, column: 2, scope: !775)
!817 = !DILocation(line: 282, column: 7, scope: !765)
!818 = !DILocation(line: 273, column: 49, scope: !759)
!819 = !DILocation(line: 273, column: 7, scope: !759)
!820 = distinct !{!820, !763, !821, !563}
!821 = !DILocation(line: 282, column: 7, scope: !756)
!822 = !DILocation(line: 284, column: 15, scope: !823)
!823 = distinct !DILexicalBlock(scope: !754, file: !1, line: 284, column: 11)
!824 = !DILocation(line: 284, column: 22, scope: !823)
!825 = !DILocation(line: 284, column: 31, scope: !823)
!826 = !DILocation(line: 284, column: 44, scope: !823)
!827 = !DILocation(line: 284, column: 51, scope: !823)
!828 = !DILocation(line: 284, column: 57, scope: !823)
!829 = !DILocation(line: 284, column: 13, scope: !823)
!830 = !DILocation(line: 284, column: 11, scope: !823)
!831 = !DILocation(line: 286, column: 26, scope: !832)
!832 = distinct !DILexicalBlock(scope: !823, file: !1, line: 284, column: 70)
!833 = !DILocation(line: 286, column: 2, scope: !832)
!834 = !DILocation(line: 286, column: 8, scope: !832)
!835 = !DILocation(line: 286, column: 24, scope: !832)
!836 = !DILocation(line: 287, column: 18, scope: !832)
!837 = !DILocation(line: 287, column: 2, scope: !832)
!838 = !DILocation(line: 287, column: 8, scope: !832)
!839 = !DILocation(line: 287, column: 16, scope: !832)
!840 = !DILocation(line: 288, column: 2, scope: !832)
!841 = !DILocation(line: 290, column: 5, scope: !754)
!842 = !DILocation(line: 270, column: 14, scope: !748)
!843 = !DILocation(line: 269, column: 5, scope: !748)
!844 = distinct !{!844, !752, !845, !563}
!845 = !DILocation(line: 290, column: 5, scope: !742)
!846 = !DILocation(line: 292, column: 5, scope: !743)
!847 = !DILocation(line: 292, column: 11, scope: !743)
!848 = !DILocation(line: 292, column: 19, scope: !743)
!849 = !DILocation(line: 293, column: 3, scope: !743)
!850 = !DILocation(line: 268, column: 15, scope: !736)
!851 = !DILocation(line: 267, column: 3, scope: !736)
!852 = distinct !{!852, !740, !853, !563}
!853 = !DILocation(line: 293, column: 3, scope: !731)
!854 = !DILocation(line: 295, column: 10, scope: !855)
!855 = distinct !DILexicalBlock(scope: !664, file: !1, line: 295, column: 7)
!856 = !DILocation(line: 295, column: 17, scope: !855)
!857 = !DILocation(line: 295, column: 7, scope: !855)
!858 = !DILocation(line: 295, column: 35, scope: !855)
!859 = !DILocation(line: 295, column: 42, scope: !855)
!860 = !DILocation(line: 295, column: 33, scope: !855)
!861 = !DILocation(line: 296, column: 20, scope: !862)
!862 = distinct !DILexicalBlock(scope: !855, file: !1, line: 295, column: 59)
!863 = !DILocation(line: 296, column: 5, scope: !862)
!864 = !DILocation(line: 297, column: 5, scope: !862)
!865 = !DILocation(line: 300, column: 5, scope: !664)
!866 = !DILocation(line: 300, column: 12, scope: !664)
!867 = !DILocation(line: 300, column: 22, scope: !664)
!868 = !DILocation(line: 300, column: 42, scope: !664)
!869 = !DILocation(line: 300, column: 3, scope: !664)
!870 = !DILocation(line: 301, column: 3, scope: !664)
!871 = !DILocation(line: 302, column: 1, scope: !664)
!872 = distinct !DISubprogram(name: "decompress_data", scope: !1, file: !1, line: 314, type: !451, scopeLine: 315, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !473)
!873 = !DILocalVariable(name: "cinfo", arg: 1, scope: !872, file: !1, line: 314, type: !43)
!874 = !DILocation(line: 314, column: 35, scope: !872)
!875 = !DILocalVariable(name: "output_buf", arg: 2, scope: !872, file: !1, line: 314, type: !365)
!876 = !DILocation(line: 314, column: 53, scope: !872)
!877 = !DILocalVariable(name: "coef", scope: !872, file: !1, line: 316, type: !31)
!878 = !DILocation(line: 316, column: 15, scope: !872)
!879 = !DILocation(line: 316, column: 36, scope: !872)
!880 = !DILocation(line: 316, column: 43, scope: !872)
!881 = !DILocalVariable(name: "last_iMCU_row", scope: !872, file: !1, line: 317, type: !85)
!882 = !DILocation(line: 317, column: 14, scope: !872)
!883 = !DILocation(line: 317, column: 30, scope: !872)
!884 = !DILocation(line: 317, column: 37, scope: !872)
!885 = !DILocation(line: 317, column: 53, scope: !872)
!886 = !DILocalVariable(name: "block_num", scope: !872, file: !1, line: 318, type: !85)
!887 = !DILocation(line: 318, column: 14, scope: !872)
!888 = !DILocalVariable(name: "ci", scope: !872, file: !1, line: 319, type: !69)
!889 = !DILocation(line: 319, column: 7, scope: !872)
!890 = !DILocalVariable(name: "block_row", scope: !872, file: !1, line: 319, type: !69)
!891 = !DILocation(line: 319, column: 11, scope: !872)
!892 = !DILocalVariable(name: "block_rows", scope: !872, file: !1, line: 319, type: !69)
!893 = !DILocation(line: 319, column: 22, scope: !872)
!894 = !DILocalVariable(name: "buffer", scope: !872, file: !1, line: 320, type: !90)
!895 = !DILocation(line: 320, column: 15, scope: !872)
!896 = !DILocalVariable(name: "buffer_ptr", scope: !872, file: !1, line: 321, type: !92)
!897 = !DILocation(line: 321, column: 13, scope: !872)
!898 = !DILocalVariable(name: "output_ptr", scope: !872, file: !1, line: 322, type: !78)
!899 = !DILocation(line: 322, column: 14, scope: !872)
!900 = !DILocalVariable(name: "output_col", scope: !872, file: !1, line: 323, type: !85)
!901 = !DILocation(line: 323, column: 14, scope: !872)
!902 = !DILocalVariable(name: "compptr", scope: !872, file: !1, line: 324, type: !272)
!903 = !DILocation(line: 324, column: 24, scope: !872)
!904 = !DILocalVariable(name: "inverse_DCT", scope: !872, file: !1, line: 325, type: !411)
!905 = !DILocation(line: 325, column: 26, scope: !872)
!906 = !DILocation(line: 328, column: 3, scope: !872)
!907 = !DILocation(line: 328, column: 10, scope: !872)
!908 = !DILocation(line: 328, column: 17, scope: !872)
!909 = !DILocation(line: 328, column: 37, scope: !872)
!910 = !DILocation(line: 328, column: 44, scope: !872)
!911 = !DILocation(line: 328, column: 35, scope: !872)
!912 = !DILocation(line: 328, column: 63, scope: !872)
!913 = !DILocation(line: 329, column: 4, scope: !872)
!914 = !DILocation(line: 329, column: 11, scope: !872)
!915 = !DILocation(line: 329, column: 32, scope: !872)
!916 = !DILocation(line: 329, column: 39, scope: !872)
!917 = !DILocation(line: 329, column: 29, scope: !872)
!918 = !DILocation(line: 329, column: 58, scope: !872)
!919 = !DILocation(line: 330, column: 4, scope: !872)
!920 = !DILocation(line: 330, column: 11, scope: !872)
!921 = !DILocation(line: 330, column: 29, scope: !872)
!922 = !DILocation(line: 330, column: 36, scope: !872)
!923 = !DILocation(line: 330, column: 26, scope: !872)
!924 = !DILocation(line: 0, scope: !872)
!925 = !DILocation(line: 331, column: 11, scope: !926)
!926 = distinct !DILexicalBlock(scope: !927, file: !1, line: 331, column: 9)
!927 = distinct !DILexicalBlock(scope: !872, file: !1, line: 330, column: 54)
!928 = !DILocation(line: 331, column: 18, scope: !926)
!929 = !DILocation(line: 331, column: 28, scope: !926)
!930 = !DILocation(line: 331, column: 43, scope: !926)
!931 = !DILocation(line: 331, column: 9, scope: !926)
!932 = !DILocation(line: 331, column: 50, scope: !926)
!933 = !DILocation(line: 332, column: 7, scope: !926)
!934 = distinct !{!934, !906, !935, !563}
!935 = !DILocation(line: 333, column: 3, scope: !872)
!936 = !DILocation(line: 336, column: 11, scope: !937)
!937 = distinct !DILexicalBlock(scope: !872, file: !1, line: 336, column: 3)
!938 = !DILocation(line: 336, column: 26, scope: !937)
!939 = !DILocation(line: 336, column: 33, scope: !937)
!940 = !DILocation(line: 336, column: 24, scope: !937)
!941 = !DILocation(line: 336, column: 8, scope: !937)
!942 = !DILocation(line: 336, column: 44, scope: !943)
!943 = distinct !DILexicalBlock(scope: !937, file: !1, line: 336, column: 3)
!944 = !DILocation(line: 336, column: 49, scope: !943)
!945 = !DILocation(line: 336, column: 56, scope: !943)
!946 = !DILocation(line: 336, column: 47, scope: !943)
!947 = !DILocation(line: 336, column: 3, scope: !937)
!948 = !DILocation(line: 339, column: 11, scope: !949)
!949 = distinct !DILexicalBlock(scope: !950, file: !1, line: 339, column: 9)
!950 = distinct !DILexicalBlock(scope: !943, file: !1, line: 337, column: 25)
!951 = !DILocation(line: 339, column: 20, scope: !949)
!952 = !DILocation(line: 339, column: 9, scope: !949)
!953 = !DILocation(line: 340, column: 7, scope: !949)
!954 = !DILocation(line: 342, column: 16, scope: !950)
!955 = !DILocation(line: 342, column: 23, scope: !950)
!956 = !DILocation(line: 342, column: 28, scope: !950)
!957 = !DILocation(line: 343, column: 23, scope: !950)
!958 = !DILocation(line: 343, column: 30, scope: !950)
!959 = !DILocation(line: 343, column: 36, scope: !950)
!960 = !DILocation(line: 343, column: 48, scope: !950)
!961 = !DILocation(line: 344, column: 8, scope: !950)
!962 = !DILocation(line: 344, column: 15, scope: !950)
!963 = !DILocation(line: 344, column: 33, scope: !950)
!964 = !DILocation(line: 344, column: 42, scope: !950)
!965 = !DILocation(line: 344, column: 31, scope: !950)
!966 = !DILocation(line: 345, column: 21, scope: !950)
!967 = !DILocation(line: 345, column: 30, scope: !950)
!968 = !DILocation(line: 342, column: 14, scope: !950)
!969 = !DILocation(line: 342, column: 12, scope: !950)
!970 = !DILocation(line: 347, column: 9, scope: !971)
!971 = distinct !DILexicalBlock(scope: !950, file: !1, line: 347, column: 9)
!972 = !DILocation(line: 347, column: 16, scope: !971)
!973 = !DILocation(line: 347, column: 34, scope: !971)
!974 = !DILocation(line: 347, column: 32, scope: !971)
!975 = !DILocation(line: 348, column: 20, scope: !971)
!976 = !DILocation(line: 348, column: 29, scope: !971)
!977 = !DILocation(line: 348, column: 18, scope: !971)
!978 = !DILocation(line: 348, column: 7, scope: !971)
!979 = !DILocation(line: 351, column: 27, scope: !980)
!980 = distinct !DILexicalBlock(scope: !971, file: !1, line: 349, column: 10)
!981 = !DILocation(line: 351, column: 36, scope: !980)
!982 = !DILocation(line: 351, column: 55, scope: !980)
!983 = !DILocation(line: 351, column: 64, scope: !980)
!984 = !DILocation(line: 351, column: 53, scope: !980)
!985 = !DILocation(line: 351, column: 18, scope: !980)
!986 = !DILocation(line: 352, column: 11, scope: !987)
!987 = distinct !DILexicalBlock(scope: !980, file: !1, line: 352, column: 11)
!988 = !DILocation(line: 352, column: 22, scope: !987)
!989 = !DILocation(line: 352, column: 41, scope: !987)
!990 = !DILocation(line: 352, column: 50, scope: !987)
!991 = !DILocation(line: 352, column: 39, scope: !987)
!992 = !DILocation(line: 352, column: 28, scope: !987)
!993 = !DILocation(line: 354, column: 19, scope: !950)
!994 = !DILocation(line: 354, column: 26, scope: !950)
!995 = !DILocation(line: 354, column: 32, scope: !950)
!996 = !DILocation(line: 354, column: 44, scope: !950)
!997 = !DILocation(line: 354, column: 17, scope: !950)
!998 = !DILocation(line: 355, column: 18, scope: !950)
!999 = !DILocation(line: 355, column: 29, scope: !950)
!1000 = !DILocation(line: 355, column: 16, scope: !950)
!1001 = !DILocation(line: 357, column: 20, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !950, file: !1, line: 357, column: 5)
!1003 = !DILocation(line: 357, column: 10, scope: !1002)
!1004 = !DILocation(line: 357, column: 25, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !1002, file: !1, line: 357, column: 5)
!1006 = !DILocation(line: 357, column: 37, scope: !1005)
!1007 = !DILocation(line: 357, column: 35, scope: !1005)
!1008 = !DILocation(line: 357, column: 5, scope: !1002)
!1009 = !DILocation(line: 358, column: 20, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !1005, file: !1, line: 357, column: 62)
!1011 = !DILocation(line: 358, column: 27, scope: !1010)
!1012 = !DILocation(line: 358, column: 18, scope: !1010)
!1013 = !DILocation(line: 359, column: 18, scope: !1010)
!1014 = !DILocation(line: 360, column: 22, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !1010, file: !1, line: 360, column: 7)
!1016 = !DILocation(line: 360, column: 12, scope: !1015)
!1017 = !DILocation(line: 360, column: 27, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !1015, file: !1, line: 360, column: 7)
!1019 = !DILocation(line: 360, column: 39, scope: !1018)
!1020 = !DILocation(line: 360, column: 48, scope: !1018)
!1021 = !DILocation(line: 360, column: 37, scope: !1018)
!1022 = !DILocation(line: 360, column: 7, scope: !1015)
!1023 = !DILocation(line: 361, column: 4, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !1018, file: !1, line: 360, column: 78)
!1025 = !DILocation(line: 361, column: 18, scope: !1024)
!1026 = !DILocation(line: 361, column: 25, scope: !1024)
!1027 = !DILocation(line: 361, column: 45, scope: !1024)
!1028 = !DILocation(line: 362, column: 4, scope: !1024)
!1029 = !DILocation(line: 362, column: 16, scope: !1024)
!1030 = !DILocation(line: 361, column: 2, scope: !1024)
!1031 = !DILocation(line: 363, column: 12, scope: !1024)
!1032 = !DILocation(line: 364, column: 16, scope: !1024)
!1033 = !DILocation(line: 364, column: 25, scope: !1024)
!1034 = !DILocation(line: 364, column: 13, scope: !1024)
!1035 = !DILocation(line: 365, column: 7, scope: !1024)
!1036 = !DILocation(line: 360, column: 74, scope: !1018)
!1037 = !DILocation(line: 360, column: 7, scope: !1018)
!1038 = distinct !{!1038, !1022, !1039, !563}
!1039 = !DILocation(line: 365, column: 7, scope: !1015)
!1040 = !DILocation(line: 366, column: 21, scope: !1010)
!1041 = !DILocation(line: 366, column: 30, scope: !1010)
!1042 = !DILocation(line: 366, column: 18, scope: !1010)
!1043 = !DILocation(line: 367, column: 5, scope: !1010)
!1044 = !DILocation(line: 357, column: 58, scope: !1005)
!1045 = !DILocation(line: 357, column: 5, scope: !1005)
!1046 = distinct !{!1046, !1008, !1047, !563}
!1047 = !DILocation(line: 367, column: 5, scope: !1002)
!1048 = !DILocation(line: 368, column: 3, scope: !950)
!1049 = !DILocation(line: 337, column: 10, scope: !943)
!1050 = !DILocation(line: 337, column: 21, scope: !943)
!1051 = !DILocation(line: 336, column: 3, scope: !943)
!1052 = distinct !{!1052, !947, !1053, !563}
!1053 = !DILocation(line: 368, column: 3, scope: !937)
!1054 = !DILocation(line: 370, column: 10, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !872, file: !1, line: 370, column: 7)
!1056 = !DILocation(line: 370, column: 17, scope: !1055)
!1057 = !DILocation(line: 370, column: 7, scope: !1055)
!1058 = !DILocation(line: 370, column: 36, scope: !1055)
!1059 = !DILocation(line: 370, column: 43, scope: !1055)
!1060 = !DILocation(line: 370, column: 34, scope: !1055)
!1061 = !DILocation(line: 371, column: 5, scope: !1055)
!1062 = !DILocation(line: 372, column: 3, scope: !872)
!1063 = !DILocation(line: 373, column: 1, scope: !872)
!1064 = distinct !DISubprogram(name: "dummy_consume_data", scope: !1, file: !1, line: 227, type: !373, scopeLine: 228, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !473)
!1065 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1064, file: !1, line: 227, type: !43)
!1066 = !DILocation(line: 227, column: 38, scope: !1064)
!1067 = !DILocation(line: 229, column: 3, scope: !1064)
!1068 = distinct !DISubprogram(name: "decompress_onepass", scope: !1, file: !1, line: 147, type: !451, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !473)
!1069 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1068, file: !1, line: 147, type: !43)
!1070 = !DILocation(line: 147, column: 38, scope: !1068)
!1071 = !DILocalVariable(name: "output_buf", arg: 2, scope: !1068, file: !1, line: 147, type: !365)
!1072 = !DILocation(line: 147, column: 56, scope: !1068)
!1073 = !DILocalVariable(name: "coef", scope: !1068, file: !1, line: 149, type: !31)
!1074 = !DILocation(line: 149, column: 15, scope: !1068)
!1075 = !DILocation(line: 149, column: 36, scope: !1068)
!1076 = !DILocation(line: 149, column: 43, scope: !1068)
!1077 = !DILocalVariable(name: "MCU_col_num", scope: !1068, file: !1, line: 150, type: !85)
!1078 = !DILocation(line: 150, column: 14, scope: !1068)
!1079 = !DILocalVariable(name: "last_MCU_col", scope: !1068, file: !1, line: 151, type: !85)
!1080 = !DILocation(line: 151, column: 14, scope: !1068)
!1081 = !DILocation(line: 151, column: 29, scope: !1068)
!1082 = !DILocation(line: 151, column: 36, scope: !1068)
!1083 = !DILocation(line: 151, column: 49, scope: !1068)
!1084 = !DILocalVariable(name: "last_iMCU_row", scope: !1068, file: !1, line: 152, type: !85)
!1085 = !DILocation(line: 152, column: 14, scope: !1068)
!1086 = !DILocation(line: 152, column: 30, scope: !1068)
!1087 = !DILocation(line: 152, column: 37, scope: !1068)
!1088 = !DILocation(line: 152, column: 53, scope: !1068)
!1089 = !DILocalVariable(name: "blkn", scope: !1068, file: !1, line: 153, type: !69)
!1090 = !DILocation(line: 153, column: 7, scope: !1068)
!1091 = !DILocalVariable(name: "ci", scope: !1068, file: !1, line: 153, type: !69)
!1092 = !DILocation(line: 153, column: 13, scope: !1068)
!1093 = !DILocalVariable(name: "xindex", scope: !1068, file: !1, line: 153, type: !69)
!1094 = !DILocation(line: 153, column: 17, scope: !1068)
!1095 = !DILocalVariable(name: "yindex", scope: !1068, file: !1, line: 153, type: !69)
!1096 = !DILocation(line: 153, column: 25, scope: !1068)
!1097 = !DILocalVariable(name: "yoffset", scope: !1068, file: !1, line: 153, type: !69)
!1098 = !DILocation(line: 153, column: 33, scope: !1068)
!1099 = !DILocalVariable(name: "useful_width", scope: !1068, file: !1, line: 153, type: !69)
!1100 = !DILocation(line: 153, column: 42, scope: !1068)
!1101 = !DILocalVariable(name: "output_ptr", scope: !1068, file: !1, line: 154, type: !78)
!1102 = !DILocation(line: 154, column: 14, scope: !1068)
!1103 = !DILocalVariable(name: "start_col", scope: !1068, file: !1, line: 155, type: !85)
!1104 = !DILocation(line: 155, column: 14, scope: !1068)
!1105 = !DILocalVariable(name: "output_col", scope: !1068, file: !1, line: 155, type: !85)
!1106 = !DILocation(line: 155, column: 25, scope: !1068)
!1107 = !DILocalVariable(name: "compptr", scope: !1068, file: !1, line: 156, type: !272)
!1108 = !DILocation(line: 156, column: 24, scope: !1068)
!1109 = !DILocalVariable(name: "inverse_DCT", scope: !1068, file: !1, line: 157, type: !411)
!1110 = !DILocation(line: 157, column: 26, scope: !1068)
!1111 = !DILocation(line: 160, column: 18, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !1068, file: !1, line: 160, column: 3)
!1113 = !DILocation(line: 160, column: 24, scope: !1112)
!1114 = !DILocation(line: 160, column: 16, scope: !1112)
!1115 = !DILocation(line: 160, column: 8, scope: !1112)
!1116 = !DILocation(line: 160, column: 41, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !1112, file: !1, line: 160, column: 3)
!1118 = !DILocation(line: 160, column: 51, scope: !1117)
!1119 = !DILocation(line: 160, column: 57, scope: !1117)
!1120 = !DILocation(line: 160, column: 49, scope: !1117)
!1121 = !DILocation(line: 160, column: 3, scope: !1112)
!1122 = !DILocation(line: 162, column: 24, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1124, file: !1, line: 162, column: 5)
!1124 = distinct !DILexicalBlock(scope: !1117, file: !1, line: 161, column: 19)
!1125 = !DILocation(line: 162, column: 30, scope: !1123)
!1126 = !DILocation(line: 162, column: 22, scope: !1123)
!1127 = !DILocation(line: 162, column: 10, scope: !1123)
!1128 = !DILocation(line: 162, column: 39, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1123, file: !1, line: 162, column: 5)
!1130 = !DILocation(line: 162, column: 54, scope: !1129)
!1131 = !DILocation(line: 162, column: 51, scope: !1129)
!1132 = !DILocation(line: 162, column: 5, scope: !1123)
!1133 = !DILocation(line: 165, column: 30, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1129, file: !1, line: 163, column: 18)
!1135 = !DILocation(line: 165, column: 36, scope: !1134)
!1136 = !DILocation(line: 166, column: 13, scope: !1134)
!1137 = !DILocation(line: 166, column: 20, scope: !1134)
!1138 = !DILocation(line: 166, column: 34, scope: !1134)
!1139 = !DILocation(line: 165, column: 7, scope: !1134)
!1140 = !DILocation(line: 167, column: 15, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1134, file: !1, line: 167, column: 11)
!1142 = !DILocation(line: 167, column: 22, scope: !1141)
!1143 = !DILocation(line: 167, column: 31, scope: !1141)
!1144 = !DILocation(line: 167, column: 44, scope: !1141)
!1145 = !DILocation(line: 167, column: 51, scope: !1141)
!1146 = !DILocation(line: 167, column: 57, scope: !1141)
!1147 = !DILocation(line: 167, column: 13, scope: !1141)
!1148 = !DILocation(line: 167, column: 11, scope: !1141)
!1149 = !DILocation(line: 169, column: 26, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !1141, file: !1, line: 167, column: 70)
!1151 = !DILocation(line: 169, column: 2, scope: !1150)
!1152 = !DILocation(line: 169, column: 8, scope: !1150)
!1153 = !DILocation(line: 169, column: 24, scope: !1150)
!1154 = !DILocation(line: 170, column: 18, scope: !1150)
!1155 = !DILocation(line: 170, column: 2, scope: !1150)
!1156 = !DILocation(line: 170, column: 8, scope: !1150)
!1157 = !DILocation(line: 170, column: 16, scope: !1150)
!1158 = !DILocation(line: 171, column: 2, scope: !1150)
!1159 = !DILocation(line: 178, column: 12, scope: !1134)
!1160 = !DILocation(line: 179, column: 15, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1134, file: !1, line: 179, column: 7)
!1162 = !DILocation(line: 179, column: 12, scope: !1161)
!1163 = !DILocation(line: 179, column: 20, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1161, file: !1, line: 179, column: 7)
!1165 = !DILocation(line: 179, column: 25, scope: !1164)
!1166 = !DILocation(line: 179, column: 32, scope: !1164)
!1167 = !DILocation(line: 179, column: 23, scope: !1164)
!1168 = !DILocation(line: 179, column: 7, scope: !1161)
!1169 = !DILocation(line: 180, column: 12, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1164, file: !1, line: 179, column: 53)
!1171 = !DILocation(line: 180, column: 19, scope: !1170)
!1172 = !DILocation(line: 180, column: 33, scope: !1170)
!1173 = !DILocation(line: 180, column: 10, scope: !1170)
!1174 = !DILocation(line: 182, column: 8, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !1170, file: !1, line: 182, column: 6)
!1176 = !DILocation(line: 182, column: 17, scope: !1175)
!1177 = !DILocation(line: 182, column: 6, scope: !1175)
!1178 = !DILocation(line: 183, column: 12, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1175, file: !1, line: 182, column: 35)
!1180 = !DILocation(line: 183, column: 21, scope: !1179)
!1181 = !DILocation(line: 183, column: 9, scope: !1179)
!1182 = !DILocation(line: 184, column: 4, scope: !1179)
!1183 = !DILocation(line: 186, column: 16, scope: !1170)
!1184 = !DILocation(line: 186, column: 23, scope: !1170)
!1185 = !DILocation(line: 186, column: 29, scope: !1170)
!1186 = !DILocation(line: 186, column: 41, scope: !1170)
!1187 = !DILocation(line: 186, column: 50, scope: !1170)
!1188 = !DILocation(line: 186, column: 14, scope: !1170)
!1189 = !DILocation(line: 187, column: 18, scope: !1170)
!1190 = !DILocation(line: 187, column: 32, scope: !1170)
!1191 = !DILocation(line: 187, column: 30, scope: !1170)
!1192 = !DILocation(line: 187, column: 17, scope: !1170)
!1193 = !DILocation(line: 187, column: 48, scope: !1170)
!1194 = !DILocation(line: 187, column: 57, scope: !1170)
!1195 = !DILocation(line: 188, column: 13, scope: !1170)
!1196 = !DILocation(line: 188, column: 22, scope: !1170)
!1197 = !DILocation(line: 187, column: 15, scope: !1170)
!1198 = !DILocation(line: 189, column: 15, scope: !1170)
!1199 = !DILocation(line: 189, column: 26, scope: !1170)
!1200 = !DILocation(line: 189, column: 32, scope: !1170)
!1201 = !DILocation(line: 189, column: 42, scope: !1170)
!1202 = !DILocation(line: 189, column: 51, scope: !1170)
!1203 = !DILocation(line: 189, column: 40, scope: !1170)
!1204 = !DILocation(line: 189, column: 30, scope: !1170)
!1205 = !DILocation(line: 189, column: 13, scope: !1170)
!1206 = !DILocation(line: 190, column: 14, scope: !1170)
!1207 = !DILocation(line: 190, column: 28, scope: !1170)
!1208 = !DILocation(line: 190, column: 37, scope: !1170)
!1209 = !DILocation(line: 190, column: 26, scope: !1170)
!1210 = !DILocation(line: 190, column: 12, scope: !1170)
!1211 = !DILocation(line: 191, column: 14, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !1170, file: !1, line: 191, column: 2)
!1213 = !DILocation(line: 191, column: 7, scope: !1212)
!1214 = !DILocation(line: 191, column: 19, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !1212, file: !1, line: 191, column: 2)
!1216 = !DILocation(line: 191, column: 28, scope: !1215)
!1217 = !DILocation(line: 191, column: 37, scope: !1215)
!1218 = !DILocation(line: 191, column: 26, scope: !1215)
!1219 = !DILocation(line: 191, column: 2, scope: !1212)
!1220 = !DILocation(line: 192, column: 8, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !1222, file: !1, line: 192, column: 8)
!1222 = distinct !DILexicalBlock(scope: !1215, file: !1, line: 191, column: 59)
!1223 = !DILocation(line: 192, column: 15, scope: !1221)
!1224 = !DILocation(line: 192, column: 32, scope: !1221)
!1225 = !DILocation(line: 192, column: 30, scope: !1221)
!1226 = !DILocation(line: 192, column: 46, scope: !1221)
!1227 = !DILocation(line: 193, column: 8, scope: !1221)
!1228 = !DILocation(line: 193, column: 16, scope: !1221)
!1229 = !DILocation(line: 193, column: 15, scope: !1221)
!1230 = !DILocation(line: 193, column: 25, scope: !1221)
!1231 = !DILocation(line: 193, column: 34, scope: !1221)
!1232 = !DILocation(line: 193, column: 23, scope: !1221)
!1233 = !DILocation(line: 194, column: 19, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !1221, file: !1, line: 193, column: 51)
!1235 = !DILocation(line: 194, column: 17, scope: !1234)
!1236 = !DILocation(line: 195, column: 18, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1234, file: !1, line: 195, column: 6)
!1238 = !DILocation(line: 195, column: 11, scope: !1237)
!1239 = !DILocation(line: 195, column: 23, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1237, file: !1, line: 195, column: 6)
!1241 = !DILocation(line: 195, column: 32, scope: !1240)
!1242 = !DILocation(line: 195, column: 30, scope: !1240)
!1243 = !DILocation(line: 195, column: 6, scope: !1237)
!1244 = !DILocation(line: 196, column: 10, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1240, file: !1, line: 195, column: 56)
!1246 = !DILocation(line: 196, column: 24, scope: !1245)
!1247 = !DILocation(line: 196, column: 31, scope: !1245)
!1248 = !DILocation(line: 197, column: 21, scope: !1245)
!1249 = !DILocation(line: 197, column: 27, scope: !1245)
!1250 = !DILocation(line: 197, column: 38, scope: !1245)
!1251 = !DILocation(line: 197, column: 43, scope: !1245)
!1252 = !DILocation(line: 197, column: 42, scope: !1245)
!1253 = !DILocation(line: 198, column: 10, scope: !1245)
!1254 = !DILocation(line: 198, column: 22, scope: !1245)
!1255 = !DILocation(line: 196, column: 8, scope: !1245)
!1256 = !DILocation(line: 199, column: 22, scope: !1245)
!1257 = !DILocation(line: 199, column: 31, scope: !1245)
!1258 = !DILocation(line: 199, column: 19, scope: !1245)
!1259 = !DILocation(line: 200, column: 6, scope: !1245)
!1260 = !DILocation(line: 195, column: 52, scope: !1240)
!1261 = !DILocation(line: 195, column: 6, scope: !1240)
!1262 = distinct !{!1262, !1243, !1263, !563}
!1263 = !DILocation(line: 200, column: 6, scope: !1237)
!1264 = !DILocation(line: 201, column: 4, scope: !1234)
!1265 = !DILocation(line: 202, column: 12, scope: !1222)
!1266 = !DILocation(line: 202, column: 21, scope: !1222)
!1267 = !DILocation(line: 202, column: 9, scope: !1222)
!1268 = !DILocation(line: 203, column: 18, scope: !1222)
!1269 = !DILocation(line: 203, column: 27, scope: !1222)
!1270 = !DILocation(line: 203, column: 15, scope: !1222)
!1271 = !DILocation(line: 204, column: 2, scope: !1222)
!1272 = !DILocation(line: 191, column: 55, scope: !1215)
!1273 = !DILocation(line: 191, column: 2, scope: !1215)
!1274 = distinct !{!1274, !1219, !1275, !563}
!1275 = !DILocation(line: 204, column: 2, scope: !1212)
!1276 = !DILocation(line: 205, column: 7, scope: !1170)
!1277 = !DILocation(line: 179, column: 49, scope: !1164)
!1278 = !DILocation(line: 179, column: 7, scope: !1164)
!1279 = distinct !{!1279, !1168, !1280, !563}
!1280 = !DILocation(line: 205, column: 7, scope: !1161)
!1281 = !DILocation(line: 206, column: 5, scope: !1134)
!1282 = !DILocation(line: 163, column: 14, scope: !1129)
!1283 = !DILocation(line: 162, column: 5, scope: !1129)
!1284 = distinct !{!1284, !1132, !1285, !563}
!1285 = !DILocation(line: 206, column: 5, scope: !1123)
!1286 = !DILocation(line: 208, column: 5, scope: !1124)
!1287 = !DILocation(line: 208, column: 11, scope: !1124)
!1288 = !DILocation(line: 208, column: 19, scope: !1124)
!1289 = !DILocation(line: 209, column: 3, scope: !1124)
!1290 = !DILocation(line: 161, column: 15, scope: !1117)
!1291 = !DILocation(line: 160, column: 3, scope: !1117)
!1292 = distinct !{!1292, !1121, !1293, !563}
!1293 = !DILocation(line: 209, column: 3, scope: !1112)
!1294 = !DILocation(line: 211, column: 3, scope: !1068)
!1295 = !DILocation(line: 211, column: 10, scope: !1068)
!1296 = !DILocation(line: 211, column: 25, scope: !1068)
!1297 = !DILocation(line: 212, column: 10, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1068, file: !1, line: 212, column: 7)
!1299 = !DILocation(line: 212, column: 17, scope: !1298)
!1300 = !DILocation(line: 212, column: 7, scope: !1298)
!1301 = !DILocation(line: 212, column: 35, scope: !1298)
!1302 = !DILocation(line: 212, column: 42, scope: !1298)
!1303 = !DILocation(line: 212, column: 33, scope: !1298)
!1304 = !DILocation(line: 213, column: 20, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !1298, file: !1, line: 212, column: 59)
!1306 = !DILocation(line: 213, column: 5, scope: !1305)
!1307 = !DILocation(line: 214, column: 5, scope: !1305)
!1308 = !DILocation(line: 217, column: 5, scope: !1068)
!1309 = !DILocation(line: 217, column: 12, scope: !1068)
!1310 = !DILocation(line: 217, column: 22, scope: !1068)
!1311 = !DILocation(line: 217, column: 42, scope: !1068)
!1312 = !DILocation(line: 217, column: 3, scope: !1068)
!1313 = !DILocation(line: 218, column: 3, scope: !1068)
!1314 = !DILocation(line: 219, column: 1, scope: !1068)
!1315 = distinct !DISubprogram(name: "start_iMCU_row", scope: !1, file: !1, line: 79, type: !41, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !473)
!1316 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1315, file: !1, line: 79, type: !43)
!1317 = !DILocation(line: 79, column: 34, scope: !1315)
!1318 = !DILocalVariable(name: "coef", scope: !1315, file: !1, line: 82, type: !31)
!1319 = !DILocation(line: 82, column: 15, scope: !1315)
!1320 = !DILocation(line: 82, column: 36, scope: !1315)
!1321 = !DILocation(line: 82, column: 43, scope: !1315)
!1322 = !DILocation(line: 88, column: 7, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1315, file: !1, line: 88, column: 7)
!1324 = !DILocation(line: 88, column: 14, scope: !1323)
!1325 = !DILocation(line: 88, column: 28, scope: !1323)
!1326 = !DILocation(line: 89, column: 5, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1323, file: !1, line: 88, column: 33)
!1328 = !DILocation(line: 89, column: 11, scope: !1327)
!1329 = !DILocation(line: 89, column: 33, scope: !1327)
!1330 = !DILocation(line: 90, column: 3, scope: !1327)
!1331 = !DILocation(line: 91, column: 9, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1333, file: !1, line: 91, column: 9)
!1333 = distinct !DILexicalBlock(scope: !1323, file: !1, line: 90, column: 10)
!1334 = !DILocation(line: 91, column: 16, scope: !1332)
!1335 = !DILocation(line: 91, column: 34, scope: !1332)
!1336 = !DILocation(line: 91, column: 41, scope: !1332)
!1337 = !DILocation(line: 91, column: 56, scope: !1332)
!1338 = !DILocation(line: 91, column: 31, scope: !1332)
!1339 = !DILocation(line: 92, column: 37, scope: !1332)
!1340 = !DILocation(line: 92, column: 44, scope: !1332)
!1341 = !DILocation(line: 92, column: 62, scope: !1332)
!1342 = !DILocation(line: 92, column: 7, scope: !1332)
!1343 = !DILocation(line: 92, column: 13, scope: !1332)
!1344 = !DILocation(line: 92, column: 35, scope: !1332)
!1345 = !DILocation(line: 94, column: 37, scope: !1332)
!1346 = !DILocation(line: 94, column: 44, scope: !1332)
!1347 = !DILocation(line: 94, column: 62, scope: !1332)
!1348 = !DILocation(line: 94, column: 7, scope: !1332)
!1349 = !DILocation(line: 94, column: 13, scope: !1332)
!1350 = !DILocation(line: 94, column: 35, scope: !1332)
!1351 = !DILocation(line: 97, column: 3, scope: !1315)
!1352 = !DILocation(line: 97, column: 9, scope: !1315)
!1353 = !DILocation(line: 97, column: 17, scope: !1315)
!1354 = !DILocation(line: 98, column: 3, scope: !1315)
!1355 = !DILocation(line: 98, column: 9, scope: !1315)
!1356 = !DILocation(line: 98, column: 25, scope: !1315)
!1357 = !DILocation(line: 99, column: 1, scope: !1315)
!1358 = distinct !DISubprogram(name: "smoothing_ok", scope: !1, file: !1, line: 404, type: !190, scopeLine: 405, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !473)
!1359 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1358, file: !1, line: 404, type: !43)
!1360 = !DILocation(line: 404, column: 32, scope: !1358)
!1361 = !DILocalVariable(name: "coef", scope: !1358, file: !1, line: 406, type: !31)
!1362 = !DILocation(line: 406, column: 15, scope: !1358)
!1363 = !DILocation(line: 406, column: 36, scope: !1358)
!1364 = !DILocation(line: 406, column: 43, scope: !1358)
!1365 = !DILocalVariable(name: "smoothing_useful", scope: !1358, file: !1, line: 407, type: !107)
!1366 = !DILocation(line: 407, column: 11, scope: !1358)
!1367 = !DILocalVariable(name: "ci", scope: !1358, file: !1, line: 408, type: !69)
!1368 = !DILocation(line: 408, column: 7, scope: !1358)
!1369 = !DILocalVariable(name: "coefi", scope: !1358, file: !1, line: 408, type: !69)
!1370 = !DILocation(line: 408, column: 11, scope: !1358)
!1371 = !DILocalVariable(name: "compptr", scope: !1358, file: !1, line: 409, type: !272)
!1372 = !DILocation(line: 409, column: 24, scope: !1358)
!1373 = !DILocalVariable(name: "qtable", scope: !1358, file: !1, line: 410, type: !242)
!1374 = !DILocation(line: 410, column: 16, scope: !1358)
!1375 = !DILocalVariable(name: "coef_bits", scope: !1358, file: !1, line: 411, type: !463)
!1376 = !DILocation(line: 411, column: 9, scope: !1358)
!1377 = !DILocalVariable(name: "coef_bits_latch", scope: !1358, file: !1, line: 412, type: !463)
!1378 = !DILocation(line: 412, column: 9, scope: !1358)
!1379 = !DILocation(line: 414, column: 9, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !1358, file: !1, line: 414, column: 7)
!1381 = !DILocation(line: 414, column: 16, scope: !1380)
!1382 = !DILocation(line: 414, column: 33, scope: !1380)
!1383 = !DILocation(line: 414, column: 36, scope: !1380)
!1384 = !DILocation(line: 414, column: 43, scope: !1380)
!1385 = !DILocation(line: 414, column: 53, scope: !1380)
!1386 = !DILocation(line: 415, column: 5, scope: !1380)
!1387 = !DILocation(line: 418, column: 7, scope: !1388)
!1388 = distinct !DILexicalBlock(scope: !1358, file: !1, line: 418, column: 7)
!1389 = !DILocation(line: 418, column: 13, scope: !1388)
!1390 = !DILocation(line: 418, column: 29, scope: !1388)
!1391 = !DILocation(line: 420, column: 9, scope: !1388)
!1392 = !DILocation(line: 420, column: 16, scope: !1388)
!1393 = !DILocation(line: 420, column: 21, scope: !1388)
!1394 = !DILocation(line: 420, column: 50, scope: !1388)
!1395 = !DILocation(line: 421, column: 7, scope: !1388)
!1396 = !DILocation(line: 421, column: 14, scope: !1388)
!1397 = !DILocation(line: 421, column: 29, scope: !1388)
!1398 = !DILocation(line: 420, column: 7, scope: !1388)
!1399 = !DILocation(line: 419, column: 5, scope: !1388)
!1400 = !DILocation(line: 419, column: 11, scope: !1388)
!1401 = !DILocation(line: 419, column: 27, scope: !1388)
!1402 = !DILocation(line: 423, column: 21, scope: !1358)
!1403 = !DILocation(line: 423, column: 27, scope: !1358)
!1404 = !DILocation(line: 423, column: 19, scope: !1358)
!1405 = !DILocation(line: 425, column: 11, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1358, file: !1, line: 425, column: 3)
!1407 = !DILocation(line: 425, column: 26, scope: !1406)
!1408 = !DILocation(line: 425, column: 33, scope: !1406)
!1409 = !DILocation(line: 425, column: 24, scope: !1406)
!1410 = !DILocation(line: 425, column: 8, scope: !1406)
!1411 = !DILocation(line: 425, column: 44, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1406, file: !1, line: 425, column: 3)
!1413 = !DILocation(line: 425, column: 49, scope: !1412)
!1414 = !DILocation(line: 425, column: 56, scope: !1412)
!1415 = !DILocation(line: 425, column: 47, scope: !1412)
!1416 = !DILocation(line: 425, column: 3, scope: !1406)
!1417 = !DILocation(line: 428, column: 19, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1419, file: !1, line: 428, column: 9)
!1419 = distinct !DILexicalBlock(scope: !1412, file: !1, line: 426, column: 25)
!1420 = !DILocation(line: 428, column: 28, scope: !1418)
!1421 = !DILocation(line: 428, column: 17, scope: !1418)
!1422 = !DILocation(line: 428, column: 41, scope: !1418)
!1423 = !DILocation(line: 429, column: 7, scope: !1418)
!1424 = !DILocation(line: 431, column: 9, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1419, file: !1, line: 431, column: 9)
!1426 = !DILocation(line: 431, column: 17, scope: !1425)
!1427 = !DILocation(line: 431, column: 29, scope: !1425)
!1428 = !DILocation(line: 431, column: 34, scope: !1425)
!1429 = !DILocation(line: 432, column: 2, scope: !1425)
!1430 = !DILocation(line: 432, column: 10, scope: !1425)
!1431 = !DILocation(line: 432, column: 28, scope: !1425)
!1432 = !DILocation(line: 432, column: 33, scope: !1425)
!1433 = !DILocation(line: 433, column: 2, scope: !1425)
!1434 = !DILocation(line: 433, column: 10, scope: !1425)
!1435 = !DILocation(line: 433, column: 28, scope: !1425)
!1436 = !DILocation(line: 433, column: 33, scope: !1425)
!1437 = !DILocation(line: 434, column: 2, scope: !1425)
!1438 = !DILocation(line: 434, column: 10, scope: !1425)
!1439 = !DILocation(line: 434, column: 28, scope: !1425)
!1440 = !DILocation(line: 434, column: 33, scope: !1425)
!1441 = !DILocation(line: 435, column: 2, scope: !1425)
!1442 = !DILocation(line: 435, column: 10, scope: !1425)
!1443 = !DILocation(line: 435, column: 28, scope: !1425)
!1444 = !DILocation(line: 435, column: 33, scope: !1425)
!1445 = !DILocation(line: 436, column: 2, scope: !1425)
!1446 = !DILocation(line: 436, column: 10, scope: !1425)
!1447 = !DILocation(line: 436, column: 28, scope: !1425)
!1448 = !DILocation(line: 437, column: 7, scope: !1425)
!1449 = !DILocation(line: 439, column: 17, scope: !1419)
!1450 = !DILocation(line: 439, column: 24, scope: !1419)
!1451 = !DILocation(line: 439, column: 34, scope: !1419)
!1452 = !DILocation(line: 439, column: 15, scope: !1419)
!1453 = !DILocation(line: 440, column: 9, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !1419, file: !1, line: 440, column: 9)
!1455 = !DILocation(line: 440, column: 22, scope: !1454)
!1456 = !DILocation(line: 441, column: 7, scope: !1454)
!1457 = !DILocation(line: 443, column: 16, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1419, file: !1, line: 443, column: 5)
!1459 = !DILocation(line: 443, column: 10, scope: !1458)
!1460 = !DILocation(line: 443, column: 21, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !1458, file: !1, line: 443, column: 5)
!1462 = !DILocation(line: 443, column: 27, scope: !1461)
!1463 = !DILocation(line: 443, column: 5, scope: !1458)
!1464 = !DILocation(line: 444, column: 32, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !1461, file: !1, line: 443, column: 42)
!1466 = !DILocation(line: 444, column: 42, scope: !1465)
!1467 = !DILocation(line: 444, column: 7, scope: !1465)
!1468 = !DILocation(line: 444, column: 23, scope: !1465)
!1469 = !DILocation(line: 444, column: 30, scope: !1465)
!1470 = !DILocation(line: 445, column: 11, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !1465, file: !1, line: 445, column: 11)
!1472 = !DILocation(line: 445, column: 21, scope: !1471)
!1473 = !DILocation(line: 445, column: 28, scope: !1471)
!1474 = !DILocation(line: 446, column: 19, scope: !1471)
!1475 = !DILocation(line: 446, column: 2, scope: !1471)
!1476 = !DILocation(line: 447, column: 5, scope: !1465)
!1477 = !DILocation(line: 443, column: 38, scope: !1461)
!1478 = !DILocation(line: 443, column: 5, scope: !1461)
!1479 = distinct !{!1479, !1463, !1480, !563}
!1480 = !DILocation(line: 447, column: 5, scope: !1458)
!1481 = !DILocation(line: 448, column: 21, scope: !1419)
!1482 = !DILocation(line: 449, column: 3, scope: !1419)
!1483 = !DILocation(line: 426, column: 10, scope: !1412)
!1484 = !DILocation(line: 426, column: 21, scope: !1412)
!1485 = !DILocation(line: 425, column: 3, scope: !1412)
!1486 = distinct !{!1486, !1416, !1487, !563}
!1487 = !DILocation(line: 449, column: 3, scope: !1406)
!1488 = !DILocation(line: 451, column: 10, scope: !1358)
!1489 = !DILocation(line: 451, column: 3, scope: !1358)
!1490 = !DILocation(line: 452, column: 1, scope: !1358)
!1491 = distinct !DISubprogram(name: "decompress_smooth_data", scope: !1, file: !1, line: 460, type: !451, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !473)
!1492 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1491, file: !1, line: 460, type: !43)
!1493 = !DILocation(line: 460, column: 42, scope: !1491)
!1494 = !DILocalVariable(name: "output_buf", arg: 2, scope: !1491, file: !1, line: 460, type: !365)
!1495 = !DILocation(line: 460, column: 60, scope: !1491)
!1496 = !DILocalVariable(name: "coef", scope: !1491, file: !1, line: 462, type: !31)
!1497 = !DILocation(line: 462, column: 15, scope: !1491)
!1498 = !DILocation(line: 462, column: 36, scope: !1491)
!1499 = !DILocation(line: 462, column: 43, scope: !1491)
!1500 = !DILocalVariable(name: "last_iMCU_row", scope: !1491, file: !1, line: 463, type: !85)
!1501 = !DILocation(line: 463, column: 14, scope: !1491)
!1502 = !DILocation(line: 463, column: 30, scope: !1491)
!1503 = !DILocation(line: 463, column: 37, scope: !1491)
!1504 = !DILocation(line: 463, column: 53, scope: !1491)
!1505 = !DILocalVariable(name: "block_num", scope: !1491, file: !1, line: 464, type: !85)
!1506 = !DILocation(line: 464, column: 14, scope: !1491)
!1507 = !DILocalVariable(name: "last_block_column", scope: !1491, file: !1, line: 464, type: !85)
!1508 = !DILocation(line: 464, column: 25, scope: !1491)
!1509 = !DILocalVariable(name: "ci", scope: !1491, file: !1, line: 465, type: !69)
!1510 = !DILocation(line: 465, column: 7, scope: !1491)
!1511 = !DILocalVariable(name: "block_row", scope: !1491, file: !1, line: 465, type: !69)
!1512 = !DILocation(line: 465, column: 11, scope: !1491)
!1513 = !DILocalVariable(name: "block_rows", scope: !1491, file: !1, line: 465, type: !69)
!1514 = !DILocation(line: 465, column: 22, scope: !1491)
!1515 = !DILocalVariable(name: "access_rows", scope: !1491, file: !1, line: 465, type: !69)
!1516 = !DILocation(line: 465, column: 34, scope: !1491)
!1517 = !DILocalVariable(name: "buffer", scope: !1491, file: !1, line: 466, type: !90)
!1518 = !DILocation(line: 466, column: 15, scope: !1491)
!1519 = !DILocalVariable(name: "buffer_ptr", scope: !1491, file: !1, line: 467, type: !92)
!1520 = !DILocation(line: 467, column: 13, scope: !1491)
!1521 = !DILocalVariable(name: "prev_block_row", scope: !1491, file: !1, line: 467, type: !92)
!1522 = !DILocation(line: 467, column: 25, scope: !1491)
!1523 = !DILocalVariable(name: "next_block_row", scope: !1491, file: !1, line: 467, type: !92)
!1524 = !DILocation(line: 467, column: 41, scope: !1491)
!1525 = !DILocalVariable(name: "output_ptr", scope: !1491, file: !1, line: 468, type: !78)
!1526 = !DILocation(line: 468, column: 14, scope: !1491)
!1527 = !DILocalVariable(name: "output_col", scope: !1491, file: !1, line: 469, type: !85)
!1528 = !DILocation(line: 469, column: 14, scope: !1491)
!1529 = !DILocalVariable(name: "compptr", scope: !1491, file: !1, line: 470, type: !272)
!1530 = !DILocation(line: 470, column: 24, scope: !1491)
!1531 = !DILocalVariable(name: "inverse_DCT", scope: !1491, file: !1, line: 471, type: !411)
!1532 = !DILocation(line: 471, column: 26, scope: !1491)
!1533 = !DILocalVariable(name: "first_row", scope: !1491, file: !1, line: 472, type: !107)
!1534 = !DILocation(line: 472, column: 11, scope: !1491)
!1535 = !DILocalVariable(name: "last_row", scope: !1491, file: !1, line: 472, type: !107)
!1536 = !DILocation(line: 472, column: 22, scope: !1491)
!1537 = !DILocalVariable(name: "workspace", scope: !1491, file: !1, line: 473, type: !94)
!1538 = !DILocation(line: 473, column: 10, scope: !1491)
!1539 = !DILocalVariable(name: "coef_bits", scope: !1491, file: !1, line: 474, type: !463)
!1540 = !DILocation(line: 474, column: 8, scope: !1491)
!1541 = !DILocalVariable(name: "quanttbl", scope: !1491, file: !1, line: 475, type: !242)
!1542 = !DILocation(line: 475, column: 15, scope: !1491)
!1543 = !DILocalVariable(name: "Q00", scope: !1491, file: !1, line: 476, type: !1544)
!1544 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT32", file: !83, line: 161, baseType: !130)
!1545 = !DILocation(line: 476, column: 9, scope: !1491)
!1546 = !DILocalVariable(name: "Q01", scope: !1491, file: !1, line: 476, type: !1544)
!1547 = !DILocation(line: 476, column: 13, scope: !1491)
!1548 = !DILocalVariable(name: "Q02", scope: !1491, file: !1, line: 476, type: !1544)
!1549 = !DILocation(line: 476, column: 17, scope: !1491)
!1550 = !DILocalVariable(name: "Q10", scope: !1491, file: !1, line: 476, type: !1544)
!1551 = !DILocation(line: 476, column: 21, scope: !1491)
!1552 = !DILocalVariable(name: "Q11", scope: !1491, file: !1, line: 476, type: !1544)
!1553 = !DILocation(line: 476, column: 25, scope: !1491)
!1554 = !DILocalVariable(name: "Q20", scope: !1491, file: !1, line: 476, type: !1544)
!1555 = !DILocation(line: 476, column: 29, scope: !1491)
!1556 = !DILocalVariable(name: "num", scope: !1491, file: !1, line: 476, type: !1544)
!1557 = !DILocation(line: 476, column: 34, scope: !1491)
!1558 = !DILocalVariable(name: "DC1", scope: !1491, file: !1, line: 477, type: !69)
!1559 = !DILocation(line: 477, column: 7, scope: !1491)
!1560 = !DILocalVariable(name: "DC2", scope: !1491, file: !1, line: 477, type: !69)
!1561 = !DILocation(line: 477, column: 11, scope: !1491)
!1562 = !DILocalVariable(name: "DC3", scope: !1491, file: !1, line: 477, type: !69)
!1563 = !DILocation(line: 477, column: 15, scope: !1491)
!1564 = !DILocalVariable(name: "DC4", scope: !1491, file: !1, line: 477, type: !69)
!1565 = !DILocation(line: 477, column: 19, scope: !1491)
!1566 = !DILocalVariable(name: "DC5", scope: !1491, file: !1, line: 477, type: !69)
!1567 = !DILocation(line: 477, column: 23, scope: !1491)
!1568 = !DILocalVariable(name: "DC6", scope: !1491, file: !1, line: 477, type: !69)
!1569 = !DILocation(line: 477, column: 27, scope: !1491)
!1570 = !DILocalVariable(name: "DC7", scope: !1491, file: !1, line: 477, type: !69)
!1571 = !DILocation(line: 477, column: 31, scope: !1491)
!1572 = !DILocalVariable(name: "DC8", scope: !1491, file: !1, line: 477, type: !69)
!1573 = !DILocation(line: 477, column: 35, scope: !1491)
!1574 = !DILocalVariable(name: "DC9", scope: !1491, file: !1, line: 477, type: !69)
!1575 = !DILocation(line: 477, column: 39, scope: !1491)
!1576 = !DILocalVariable(name: "Al", scope: !1491, file: !1, line: 478, type: !69)
!1577 = !DILocation(line: 478, column: 7, scope: !1491)
!1578 = !DILocalVariable(name: "pred", scope: !1491, file: !1, line: 478, type: !69)
!1579 = !DILocation(line: 478, column: 11, scope: !1491)
!1580 = !DILocation(line: 481, column: 3, scope: !1491)
!1581 = !DILocation(line: 481, column: 10, scope: !1491)
!1582 = !DILocation(line: 481, column: 17, scope: !1491)
!1583 = !DILocation(line: 481, column: 38, scope: !1491)
!1584 = !DILocation(line: 481, column: 45, scope: !1491)
!1585 = !DILocation(line: 481, column: 35, scope: !1491)
!1586 = !DILocation(line: 481, column: 64, scope: !1491)
!1587 = !DILocation(line: 482, column: 5, scope: !1491)
!1588 = !DILocation(line: 482, column: 12, scope: !1491)
!1589 = !DILocation(line: 482, column: 22, scope: !1491)
!1590 = !DILocation(line: 482, column: 3, scope: !1491)
!1591 = !DILocation(line: 0, scope: !1491)
!1592 = !DILocation(line: 483, column: 9, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1594, file: !1, line: 483, column: 9)
!1594 = distinct !DILexicalBlock(scope: !1491, file: !1, line: 482, column: 35)
!1595 = !DILocation(line: 483, column: 16, scope: !1593)
!1596 = !DILocation(line: 483, column: 37, scope: !1593)
!1597 = !DILocation(line: 483, column: 44, scope: !1593)
!1598 = !DILocation(line: 483, column: 34, scope: !1593)
!1599 = !DILocalVariable(name: "delta", scope: !1600, file: !1, line: 489, type: !85)
!1600 = distinct !DILexicalBlock(scope: !1593, file: !1, line: 483, column: 64)
!1601 = !DILocation(line: 489, column: 18, scope: !1600)
!1602 = !DILocation(line: 489, column: 27, scope: !1600)
!1603 = !DILocation(line: 489, column: 34, scope: !1600)
!1604 = !DILocation(line: 489, column: 37, scope: !1600)
!1605 = !DILocation(line: 489, column: 26, scope: !1600)
!1606 = !DILocation(line: 490, column: 11, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !1600, file: !1, line: 490, column: 11)
!1608 = !DILocation(line: 490, column: 18, scope: !1607)
!1609 = !DILocation(line: 490, column: 35, scope: !1607)
!1610 = !DILocation(line: 490, column: 42, scope: !1607)
!1611 = !DILocation(line: 490, column: 58, scope: !1607)
!1612 = !DILocation(line: 490, column: 57, scope: !1607)
!1613 = !DILocation(line: 490, column: 33, scope: !1607)
!1614 = !DILocation(line: 491, column: 2, scope: !1607)
!1615 = !DILocation(line: 492, column: 5, scope: !1600)
!1616 = !DILocation(line: 493, column: 11, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !1594, file: !1, line: 493, column: 9)
!1618 = !DILocation(line: 493, column: 18, scope: !1617)
!1619 = !DILocation(line: 493, column: 28, scope: !1617)
!1620 = !DILocation(line: 493, column: 43, scope: !1617)
!1621 = !DILocation(line: 493, column: 9, scope: !1617)
!1622 = !DILocation(line: 493, column: 50, scope: !1617)
!1623 = !DILocation(line: 494, column: 7, scope: !1617)
!1624 = distinct !{!1624, !1580, !1625, !563}
!1625 = !DILocation(line: 495, column: 3, scope: !1491)
!1626 = !DILocation(line: 498, column: 11, scope: !1627)
!1627 = distinct !DILexicalBlock(scope: !1491, file: !1, line: 498, column: 3)
!1628 = !DILocation(line: 498, column: 26, scope: !1627)
!1629 = !DILocation(line: 498, column: 33, scope: !1627)
!1630 = !DILocation(line: 498, column: 24, scope: !1627)
!1631 = !DILocation(line: 498, column: 8, scope: !1627)
!1632 = !DILocation(line: 498, column: 44, scope: !1633)
!1633 = distinct !DILexicalBlock(scope: !1627, file: !1, line: 498, column: 3)
!1634 = !DILocation(line: 498, column: 49, scope: !1633)
!1635 = !DILocation(line: 498, column: 56, scope: !1633)
!1636 = !DILocation(line: 498, column: 47, scope: !1633)
!1637 = !DILocation(line: 498, column: 3, scope: !1627)
!1638 = !DILocation(line: 501, column: 11, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !1640, file: !1, line: 501, column: 9)
!1640 = distinct !DILexicalBlock(scope: !1633, file: !1, line: 499, column: 25)
!1641 = !DILocation(line: 501, column: 20, scope: !1639)
!1642 = !DILocation(line: 501, column: 9, scope: !1639)
!1643 = !DILocation(line: 502, column: 7, scope: !1639)
!1644 = !DILocation(line: 504, column: 9, scope: !1645)
!1645 = distinct !DILexicalBlock(scope: !1640, file: !1, line: 504, column: 9)
!1646 = !DILocation(line: 504, column: 16, scope: !1645)
!1647 = !DILocation(line: 504, column: 34, scope: !1645)
!1648 = !DILocation(line: 504, column: 32, scope: !1645)
!1649 = !DILocation(line: 505, column: 20, scope: !1650)
!1650 = distinct !DILexicalBlock(scope: !1645, file: !1, line: 504, column: 49)
!1651 = !DILocation(line: 505, column: 29, scope: !1650)
!1652 = !DILocation(line: 505, column: 18, scope: !1650)
!1653 = !DILocation(line: 506, column: 21, scope: !1650)
!1654 = !DILocation(line: 506, column: 32, scope: !1650)
!1655 = !DILocation(line: 506, column: 19, scope: !1650)
!1656 = !DILocation(line: 507, column: 16, scope: !1650)
!1657 = !DILocation(line: 508, column: 5, scope: !1650)
!1658 = !DILocation(line: 510, column: 27, scope: !1659)
!1659 = distinct !DILexicalBlock(scope: !1645, file: !1, line: 508, column: 12)
!1660 = !DILocation(line: 510, column: 36, scope: !1659)
!1661 = !DILocation(line: 510, column: 55, scope: !1659)
!1662 = !DILocation(line: 510, column: 64, scope: !1659)
!1663 = !DILocation(line: 510, column: 53, scope: !1659)
!1664 = !DILocation(line: 510, column: 18, scope: !1659)
!1665 = !DILocation(line: 511, column: 11, scope: !1666)
!1666 = distinct !DILexicalBlock(scope: !1659, file: !1, line: 511, column: 11)
!1667 = !DILocation(line: 511, column: 22, scope: !1666)
!1668 = !DILocation(line: 511, column: 41, scope: !1666)
!1669 = !DILocation(line: 511, column: 50, scope: !1666)
!1670 = !DILocation(line: 511, column: 39, scope: !1666)
!1671 = !DILocation(line: 511, column: 28, scope: !1666)
!1672 = !DILocation(line: 512, column: 21, scope: !1659)
!1673 = !DILocation(line: 512, column: 19, scope: !1659)
!1674 = !DILocation(line: 513, column: 16, scope: !1659)
!1675 = !DILocation(line: 516, column: 9, scope: !1676)
!1676 = distinct !DILexicalBlock(scope: !1640, file: !1, line: 516, column: 9)
!1677 = !DILocation(line: 516, column: 16, scope: !1676)
!1678 = !DILocation(line: 516, column: 32, scope: !1676)
!1679 = !DILocation(line: 517, column: 22, scope: !1680)
!1680 = distinct !DILexicalBlock(scope: !1676, file: !1, line: 516, column: 37)
!1681 = !DILocation(line: 517, column: 31, scope: !1680)
!1682 = !DILocation(line: 517, column: 19, scope: !1680)
!1683 = !DILocation(line: 518, column: 18, scope: !1680)
!1684 = !DILocation(line: 518, column: 25, scope: !1680)
!1685 = !DILocation(line: 518, column: 30, scope: !1680)
!1686 = !DILocation(line: 519, column: 18, scope: !1680)
!1687 = !DILocation(line: 519, column: 25, scope: !1680)
!1688 = !DILocation(line: 519, column: 31, scope: !1680)
!1689 = !DILocation(line: 519, column: 43, scope: !1680)
!1690 = !DILocation(line: 520, column: 4, scope: !1680)
!1691 = !DILocation(line: 520, column: 11, scope: !1680)
!1692 = !DILocation(line: 520, column: 27, scope: !1680)
!1693 = !DILocation(line: 520, column: 34, scope: !1680)
!1694 = !DILocation(line: 520, column: 43, scope: !1680)
!1695 = !DILocation(line: 520, column: 32, scope: !1680)
!1696 = !DILocation(line: 521, column: 16, scope: !1680)
!1697 = !DILocation(line: 518, column: 16, scope: !1680)
!1698 = !DILocation(line: 518, column: 14, scope: !1680)
!1699 = !DILocation(line: 522, column: 17, scope: !1680)
!1700 = !DILocation(line: 522, column: 26, scope: !1680)
!1701 = !DILocation(line: 522, column: 14, scope: !1680)
!1702 = !DILocation(line: 523, column: 17, scope: !1680)
!1703 = !DILocation(line: 524, column: 5, scope: !1680)
!1704 = !DILocation(line: 525, column: 18, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1676, file: !1, line: 524, column: 12)
!1706 = !DILocation(line: 525, column: 25, scope: !1705)
!1707 = !DILocation(line: 525, column: 30, scope: !1705)
!1708 = !DILocation(line: 526, column: 18, scope: !1705)
!1709 = !DILocation(line: 526, column: 25, scope: !1705)
!1710 = !DILocation(line: 526, column: 31, scope: !1705)
!1711 = !DILocation(line: 526, column: 43, scope: !1705)
!1712 = !DILocation(line: 527, column: 32, scope: !1705)
!1713 = !DILocation(line: 525, column: 16, scope: !1705)
!1714 = !DILocation(line: 525, column: 14, scope: !1705)
!1715 = !DILocation(line: 528, column: 17, scope: !1705)
!1716 = !DILocation(line: 531, column: 17, scope: !1640)
!1717 = !DILocation(line: 531, column: 23, scope: !1640)
!1718 = !DILocation(line: 531, column: 42, scope: !1640)
!1719 = !DILocation(line: 531, column: 45, scope: !1640)
!1720 = !DILocation(line: 531, column: 39, scope: !1640)
!1721 = !DILocation(line: 531, column: 15, scope: !1640)
!1722 = !DILocation(line: 532, column: 16, scope: !1640)
!1723 = !DILocation(line: 532, column: 25, scope: !1640)
!1724 = !DILocation(line: 532, column: 14, scope: !1640)
!1725 = !DILocation(line: 533, column: 11, scope: !1640)
!1726 = !DILocation(line: 533, column: 21, scope: !1640)
!1727 = !DILocation(line: 533, column: 9, scope: !1640)
!1728 = !DILocation(line: 534, column: 11, scope: !1640)
!1729 = !DILocation(line: 534, column: 21, scope: !1640)
!1730 = !DILocation(line: 534, column: 9, scope: !1640)
!1731 = !DILocation(line: 535, column: 11, scope: !1640)
!1732 = !DILocation(line: 535, column: 21, scope: !1640)
!1733 = !DILocation(line: 535, column: 9, scope: !1640)
!1734 = !DILocation(line: 536, column: 11, scope: !1640)
!1735 = !DILocation(line: 536, column: 21, scope: !1640)
!1736 = !DILocation(line: 536, column: 9, scope: !1640)
!1737 = !DILocation(line: 537, column: 11, scope: !1640)
!1738 = !DILocation(line: 537, column: 21, scope: !1640)
!1739 = !DILocation(line: 537, column: 9, scope: !1640)
!1740 = !DILocation(line: 538, column: 11, scope: !1640)
!1741 = !DILocation(line: 538, column: 21, scope: !1640)
!1742 = !DILocation(line: 538, column: 9, scope: !1640)
!1743 = !DILocation(line: 539, column: 19, scope: !1640)
!1744 = !DILocation(line: 539, column: 26, scope: !1640)
!1745 = !DILocation(line: 539, column: 32, scope: !1640)
!1746 = !DILocation(line: 539, column: 44, scope: !1640)
!1747 = !DILocation(line: 539, column: 17, scope: !1640)
!1748 = !DILocation(line: 540, column: 18, scope: !1640)
!1749 = !DILocation(line: 540, column: 29, scope: !1640)
!1750 = !DILocation(line: 540, column: 16, scope: !1640)
!1751 = !DILocation(line: 542, column: 20, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !1640, file: !1, line: 542, column: 5)
!1753 = !DILocation(line: 542, column: 10, scope: !1752)
!1754 = !DILocation(line: 542, column: 25, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !1752, file: !1, line: 542, column: 5)
!1756 = !DILocation(line: 542, column: 37, scope: !1755)
!1757 = !DILocation(line: 542, column: 35, scope: !1755)
!1758 = !DILocation(line: 542, column: 5, scope: !1752)
!1759 = !DILocation(line: 543, column: 20, scope: !1760)
!1760 = distinct !DILexicalBlock(scope: !1755, file: !1, line: 542, column: 62)
!1761 = !DILocation(line: 543, column: 27, scope: !1760)
!1762 = !DILocation(line: 543, column: 18, scope: !1760)
!1763 = !DILocation(line: 544, column: 11, scope: !1764)
!1764 = distinct !DILexicalBlock(scope: !1760, file: !1, line: 544, column: 11)
!1765 = !DILocation(line: 544, column: 21, scope: !1764)
!1766 = !DILocation(line: 544, column: 24, scope: !1764)
!1767 = !DILocation(line: 544, column: 34, scope: !1764)
!1768 = !DILocation(line: 545, column: 19, scope: !1764)
!1769 = !DILocation(line: 545, column: 17, scope: !1764)
!1770 = !DILocation(line: 545, column: 2, scope: !1764)
!1771 = !DILocation(line: 547, column: 19, scope: !1764)
!1772 = !DILocation(line: 547, column: 26, scope: !1764)
!1773 = !DILocation(line: 547, column: 35, scope: !1764)
!1774 = !DILocation(line: 547, column: 17, scope: !1764)
!1775 = !DILocation(line: 548, column: 11, scope: !1776)
!1776 = distinct !DILexicalBlock(scope: !1760, file: !1, line: 548, column: 11)
!1777 = !DILocation(line: 548, column: 20, scope: !1776)
!1778 = !DILocation(line: 548, column: 23, scope: !1776)
!1779 = !DILocation(line: 548, column: 36, scope: !1776)
!1780 = !DILocation(line: 548, column: 46, scope: !1776)
!1781 = !DILocation(line: 548, column: 33, scope: !1776)
!1782 = !DILocation(line: 549, column: 19, scope: !1776)
!1783 = !DILocation(line: 549, column: 17, scope: !1776)
!1784 = !DILocation(line: 549, column: 2, scope: !1776)
!1785 = !DILocation(line: 551, column: 19, scope: !1776)
!1786 = !DILocation(line: 551, column: 26, scope: !1776)
!1787 = !DILocation(line: 551, column: 35, scope: !1776)
!1788 = !DILocation(line: 551, column: 17, scope: !1776)
!1789 = !DILocation(line: 555, column: 31, scope: !1760)
!1790 = !DILocation(line: 555, column: 25, scope: !1760)
!1791 = !DILocation(line: 555, column: 23, scope: !1760)
!1792 = !DILocation(line: 555, column: 17, scope: !1760)
!1793 = !DILocation(line: 555, column: 11, scope: !1760)
!1794 = !DILocation(line: 556, column: 31, scope: !1760)
!1795 = !DILocation(line: 556, column: 25, scope: !1760)
!1796 = !DILocation(line: 556, column: 23, scope: !1760)
!1797 = !DILocation(line: 556, column: 17, scope: !1760)
!1798 = !DILocation(line: 556, column: 11, scope: !1760)
!1799 = !DILocation(line: 557, column: 31, scope: !1760)
!1800 = !DILocation(line: 557, column: 25, scope: !1760)
!1801 = !DILocation(line: 557, column: 23, scope: !1760)
!1802 = !DILocation(line: 557, column: 17, scope: !1760)
!1803 = !DILocation(line: 557, column: 11, scope: !1760)
!1804 = !DILocation(line: 558, column: 18, scope: !1760)
!1805 = !DILocation(line: 559, column: 27, scope: !1760)
!1806 = !DILocation(line: 559, column: 36, scope: !1760)
!1807 = !DILocation(line: 559, column: 52, scope: !1760)
!1808 = !DILocation(line: 559, column: 25, scope: !1760)
!1809 = !DILocation(line: 560, column: 22, scope: !1810)
!1810 = distinct !DILexicalBlock(scope: !1760, file: !1, line: 560, column: 7)
!1811 = !DILocation(line: 560, column: 12, scope: !1810)
!1812 = !DILocation(line: 560, column: 27, scope: !1813)
!1813 = distinct !DILexicalBlock(scope: !1810, file: !1, line: 560, column: 7)
!1814 = !DILocation(line: 560, column: 40, scope: !1813)
!1815 = !DILocation(line: 560, column: 37, scope: !1813)
!1816 = !DILocation(line: 560, column: 7, scope: !1810)
!1817 = !DILocation(line: 562, column: 18, scope: !1818)
!1818 = distinct !DILexicalBlock(scope: !1813, file: !1, line: 560, column: 72)
!1819 = !DILocation(line: 562, column: 42, scope: !1818)
!1820 = !DILocation(line: 562, column: 2, scope: !1818)
!1821 = !DILocation(line: 564, column: 6, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !1818, file: !1, line: 564, column: 6)
!1823 = !DILocation(line: 564, column: 18, scope: !1822)
!1824 = !DILocation(line: 564, column: 16, scope: !1822)
!1825 = !DILocation(line: 565, column: 16, scope: !1826)
!1826 = distinct !DILexicalBlock(scope: !1822, file: !1, line: 564, column: 37)
!1827 = !DILocation(line: 565, column: 10, scope: !1826)
!1828 = !DILocation(line: 565, column: 8, scope: !1826)
!1829 = !DILocation(line: 566, column: 16, scope: !1826)
!1830 = !DILocation(line: 566, column: 10, scope: !1826)
!1831 = !DILocation(line: 566, column: 8, scope: !1826)
!1832 = !DILocation(line: 567, column: 16, scope: !1826)
!1833 = !DILocation(line: 567, column: 10, scope: !1826)
!1834 = !DILocation(line: 567, column: 8, scope: !1826)
!1835 = !DILocation(line: 568, column: 2, scope: !1826)
!1836 = !DILocation(line: 574, column: 10, scope: !1837)
!1837 = distinct !DILexicalBlock(scope: !1818, file: !1, line: 574, column: 6)
!1838 = !DILocation(line: 574, column: 9, scope: !1837)
!1839 = !DILocation(line: 574, column: 24, scope: !1837)
!1840 = !DILocation(line: 574, column: 29, scope: !1837)
!1841 = !DILocation(line: 574, column: 32, scope: !1837)
!1842 = !DILocation(line: 574, column: 45, scope: !1837)
!1843 = !DILocation(line: 575, column: 15, scope: !1844)
!1844 = distinct !DILexicalBlock(scope: !1837, file: !1, line: 574, column: 51)
!1845 = !DILocation(line: 575, column: 13, scope: !1844)
!1846 = !DILocation(line: 575, column: 22, scope: !1844)
!1847 = !DILocation(line: 575, column: 28, scope: !1844)
!1848 = !DILocation(line: 575, column: 26, scope: !1844)
!1849 = !DILocation(line: 575, column: 21, scope: !1844)
!1850 = !DILocation(line: 575, column: 19, scope: !1844)
!1851 = !DILocation(line: 575, column: 8, scope: !1844)
!1852 = !DILocation(line: 576, column: 8, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !1844, file: !1, line: 576, column: 8)
!1854 = !DILocation(line: 576, column: 12, scope: !1853)
!1855 = !DILocation(line: 577, column: 22, scope: !1856)
!1856 = distinct !DILexicalBlock(scope: !1853, file: !1, line: 576, column: 18)
!1857 = !DILocation(line: 577, column: 25, scope: !1856)
!1858 = !DILocation(line: 577, column: 32, scope: !1856)
!1859 = !DILocation(line: 577, column: 30, scope: !1856)
!1860 = !DILocation(line: 577, column: 40, scope: !1856)
!1861 = !DILocation(line: 577, column: 43, scope: !1856)
!1862 = !DILocation(line: 577, column: 37, scope: !1856)
!1863 = !DILocation(line: 577, column: 13, scope: !1856)
!1864 = !DILocation(line: 577, column: 11, scope: !1856)
!1865 = !DILocation(line: 578, column: 10, scope: !1866)
!1866 = distinct !DILexicalBlock(scope: !1856, file: !1, line: 578, column: 10)
!1867 = !DILocation(line: 578, column: 13, scope: !1866)
!1868 = !DILocation(line: 578, column: 17, scope: !1866)
!1869 = !DILocation(line: 578, column: 20, scope: !1866)
!1870 = !DILocation(line: 578, column: 32, scope: !1866)
!1871 = !DILocation(line: 578, column: 30, scope: !1866)
!1872 = !DILocation(line: 578, column: 25, scope: !1866)
!1873 = !DILocation(line: 579, column: 19, scope: !1866)
!1874 = !DILocation(line: 579, column: 17, scope: !1866)
!1875 = !DILocation(line: 579, column: 22, scope: !1866)
!1876 = !DILocation(line: 579, column: 13, scope: !1866)
!1877 = !DILocation(line: 579, column: 8, scope: !1866)
!1878 = !DILocation(line: 580, column: 4, scope: !1856)
!1879 = !DILocation(line: 581, column: 22, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1853, file: !1, line: 580, column: 11)
!1881 = !DILocation(line: 581, column: 25, scope: !1880)
!1882 = !DILocation(line: 581, column: 32, scope: !1880)
!1883 = !DILocation(line: 581, column: 30, scope: !1880)
!1884 = !DILocation(line: 581, column: 40, scope: !1880)
!1885 = !DILocation(line: 581, column: 43, scope: !1880)
!1886 = !DILocation(line: 581, column: 37, scope: !1880)
!1887 = !DILocation(line: 581, column: 13, scope: !1880)
!1888 = !DILocation(line: 581, column: 11, scope: !1880)
!1889 = !DILocation(line: 582, column: 10, scope: !1890)
!1890 = distinct !DILexicalBlock(scope: !1880, file: !1, line: 582, column: 10)
!1891 = !DILocation(line: 582, column: 13, scope: !1890)
!1892 = !DILocation(line: 582, column: 17, scope: !1890)
!1893 = !DILocation(line: 582, column: 20, scope: !1890)
!1894 = !DILocation(line: 582, column: 32, scope: !1890)
!1895 = !DILocation(line: 582, column: 30, scope: !1890)
!1896 = !DILocation(line: 582, column: 25, scope: !1890)
!1897 = !DILocation(line: 583, column: 19, scope: !1890)
!1898 = !DILocation(line: 583, column: 17, scope: !1890)
!1899 = !DILocation(line: 583, column: 22, scope: !1890)
!1900 = !DILocation(line: 583, column: 13, scope: !1890)
!1901 = !DILocation(line: 583, column: 8, scope: !1890)
!1902 = !DILocation(line: 584, column: 14, scope: !1880)
!1903 = !DILocation(line: 584, column: 13, scope: !1880)
!1904 = !DILocation(line: 584, column: 11, scope: !1880)
!1905 = !DILocation(line: 586, column: 27, scope: !1844)
!1906 = !DILocation(line: 586, column: 19, scope: !1844)
!1907 = !DILocation(line: 586, column: 4, scope: !1844)
!1908 = !DILocation(line: 586, column: 17, scope: !1844)
!1909 = !DILocation(line: 587, column: 2, scope: !1844)
!1910 = !DILocation(line: 589, column: 10, scope: !1911)
!1911 = distinct !DILexicalBlock(scope: !1818, file: !1, line: 589, column: 6)
!1912 = !DILocation(line: 589, column: 9, scope: !1911)
!1913 = !DILocation(line: 589, column: 24, scope: !1911)
!1914 = !DILocation(line: 589, column: 29, scope: !1911)
!1915 = !DILocation(line: 589, column: 32, scope: !1911)
!1916 = !DILocation(line: 589, column: 45, scope: !1911)
!1917 = !DILocation(line: 590, column: 15, scope: !1918)
!1918 = distinct !DILexicalBlock(scope: !1911, file: !1, line: 589, column: 51)
!1919 = !DILocation(line: 590, column: 13, scope: !1918)
!1920 = !DILocation(line: 590, column: 22, scope: !1918)
!1921 = !DILocation(line: 590, column: 28, scope: !1918)
!1922 = !DILocation(line: 590, column: 26, scope: !1918)
!1923 = !DILocation(line: 590, column: 21, scope: !1918)
!1924 = !DILocation(line: 590, column: 19, scope: !1918)
!1925 = !DILocation(line: 590, column: 8, scope: !1918)
!1926 = !DILocation(line: 591, column: 8, scope: !1927)
!1927 = distinct !DILexicalBlock(scope: !1918, file: !1, line: 591, column: 8)
!1928 = !DILocation(line: 591, column: 12, scope: !1927)
!1929 = !DILocation(line: 592, column: 22, scope: !1930)
!1930 = distinct !DILexicalBlock(scope: !1927, file: !1, line: 591, column: 18)
!1931 = !DILocation(line: 592, column: 25, scope: !1930)
!1932 = !DILocation(line: 592, column: 32, scope: !1930)
!1933 = !DILocation(line: 592, column: 30, scope: !1930)
!1934 = !DILocation(line: 592, column: 40, scope: !1930)
!1935 = !DILocation(line: 592, column: 43, scope: !1930)
!1936 = !DILocation(line: 592, column: 37, scope: !1930)
!1937 = !DILocation(line: 592, column: 13, scope: !1930)
!1938 = !DILocation(line: 592, column: 11, scope: !1930)
!1939 = !DILocation(line: 593, column: 10, scope: !1940)
!1940 = distinct !DILexicalBlock(scope: !1930, file: !1, line: 593, column: 10)
!1941 = !DILocation(line: 593, column: 13, scope: !1940)
!1942 = !DILocation(line: 593, column: 17, scope: !1940)
!1943 = !DILocation(line: 593, column: 20, scope: !1940)
!1944 = !DILocation(line: 593, column: 32, scope: !1940)
!1945 = !DILocation(line: 593, column: 30, scope: !1940)
!1946 = !DILocation(line: 593, column: 25, scope: !1940)
!1947 = !DILocation(line: 594, column: 19, scope: !1940)
!1948 = !DILocation(line: 594, column: 17, scope: !1940)
!1949 = !DILocation(line: 594, column: 22, scope: !1940)
!1950 = !DILocation(line: 594, column: 13, scope: !1940)
!1951 = !DILocation(line: 594, column: 8, scope: !1940)
!1952 = !DILocation(line: 595, column: 4, scope: !1930)
!1953 = !DILocation(line: 596, column: 22, scope: !1954)
!1954 = distinct !DILexicalBlock(scope: !1927, file: !1, line: 595, column: 11)
!1955 = !DILocation(line: 596, column: 25, scope: !1954)
!1956 = !DILocation(line: 596, column: 32, scope: !1954)
!1957 = !DILocation(line: 596, column: 30, scope: !1954)
!1958 = !DILocation(line: 596, column: 40, scope: !1954)
!1959 = !DILocation(line: 596, column: 43, scope: !1954)
!1960 = !DILocation(line: 596, column: 37, scope: !1954)
!1961 = !DILocation(line: 596, column: 13, scope: !1954)
!1962 = !DILocation(line: 596, column: 11, scope: !1954)
!1963 = !DILocation(line: 597, column: 10, scope: !1964)
!1964 = distinct !DILexicalBlock(scope: !1954, file: !1, line: 597, column: 10)
!1965 = !DILocation(line: 597, column: 13, scope: !1964)
!1966 = !DILocation(line: 597, column: 17, scope: !1964)
!1967 = !DILocation(line: 597, column: 20, scope: !1964)
!1968 = !DILocation(line: 597, column: 32, scope: !1964)
!1969 = !DILocation(line: 597, column: 30, scope: !1964)
!1970 = !DILocation(line: 597, column: 25, scope: !1964)
!1971 = !DILocation(line: 598, column: 19, scope: !1964)
!1972 = !DILocation(line: 598, column: 17, scope: !1964)
!1973 = !DILocation(line: 598, column: 22, scope: !1964)
!1974 = !DILocation(line: 598, column: 13, scope: !1964)
!1975 = !DILocation(line: 598, column: 8, scope: !1964)
!1976 = !DILocation(line: 599, column: 14, scope: !1954)
!1977 = !DILocation(line: 599, column: 13, scope: !1954)
!1978 = !DILocation(line: 599, column: 11, scope: !1954)
!1979 = !DILocation(line: 601, column: 27, scope: !1918)
!1980 = !DILocation(line: 601, column: 19, scope: !1918)
!1981 = !DILocation(line: 601, column: 4, scope: !1918)
!1982 = !DILocation(line: 601, column: 17, scope: !1918)
!1983 = !DILocation(line: 602, column: 2, scope: !1918)
!1984 = !DILocation(line: 604, column: 10, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1818, file: !1, line: 604, column: 6)
!1986 = !DILocation(line: 604, column: 9, scope: !1985)
!1987 = !DILocation(line: 604, column: 24, scope: !1985)
!1988 = !DILocation(line: 604, column: 29, scope: !1985)
!1989 = !DILocation(line: 604, column: 32, scope: !1985)
!1990 = !DILocation(line: 604, column: 46, scope: !1985)
!1991 = !DILocation(line: 605, column: 14, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1985, file: !1, line: 604, column: 52)
!1993 = !DILocation(line: 605, column: 12, scope: !1992)
!1994 = !DILocation(line: 605, column: 21, scope: !1992)
!1995 = !DILocation(line: 605, column: 27, scope: !1992)
!1996 = !DILocation(line: 605, column: 25, scope: !1992)
!1997 = !DILocation(line: 605, column: 35, scope: !1992)
!1998 = !DILocation(line: 605, column: 34, scope: !1992)
!1999 = !DILocation(line: 605, column: 31, scope: !1992)
!2000 = !DILocation(line: 605, column: 20, scope: !1992)
!2001 = !DILocation(line: 605, column: 18, scope: !1992)
!2002 = !DILocation(line: 605, column: 8, scope: !1992)
!2003 = !DILocation(line: 606, column: 8, scope: !2004)
!2004 = distinct !DILexicalBlock(scope: !1992, file: !1, line: 606, column: 8)
!2005 = !DILocation(line: 606, column: 12, scope: !2004)
!2006 = !DILocation(line: 607, column: 22, scope: !2007)
!2007 = distinct !DILexicalBlock(scope: !2004, file: !1, line: 606, column: 18)
!2008 = !DILocation(line: 607, column: 25, scope: !2007)
!2009 = !DILocation(line: 607, column: 32, scope: !2007)
!2010 = !DILocation(line: 607, column: 30, scope: !2007)
!2011 = !DILocation(line: 607, column: 40, scope: !2007)
!2012 = !DILocation(line: 607, column: 43, scope: !2007)
!2013 = !DILocation(line: 607, column: 37, scope: !2007)
!2014 = !DILocation(line: 607, column: 13, scope: !2007)
!2015 = !DILocation(line: 607, column: 11, scope: !2007)
!2016 = !DILocation(line: 608, column: 10, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !2007, file: !1, line: 608, column: 10)
!2018 = !DILocation(line: 608, column: 13, scope: !2017)
!2019 = !DILocation(line: 608, column: 17, scope: !2017)
!2020 = !DILocation(line: 608, column: 20, scope: !2017)
!2021 = !DILocation(line: 608, column: 32, scope: !2017)
!2022 = !DILocation(line: 608, column: 30, scope: !2017)
!2023 = !DILocation(line: 608, column: 25, scope: !2017)
!2024 = !DILocation(line: 609, column: 19, scope: !2017)
!2025 = !DILocation(line: 609, column: 17, scope: !2017)
!2026 = !DILocation(line: 609, column: 22, scope: !2017)
!2027 = !DILocation(line: 609, column: 13, scope: !2017)
!2028 = !DILocation(line: 609, column: 8, scope: !2017)
!2029 = !DILocation(line: 610, column: 4, scope: !2007)
!2030 = !DILocation(line: 611, column: 22, scope: !2031)
!2031 = distinct !DILexicalBlock(scope: !2004, file: !1, line: 610, column: 11)
!2032 = !DILocation(line: 611, column: 25, scope: !2031)
!2033 = !DILocation(line: 611, column: 32, scope: !2031)
!2034 = !DILocation(line: 611, column: 30, scope: !2031)
!2035 = !DILocation(line: 611, column: 40, scope: !2031)
!2036 = !DILocation(line: 611, column: 43, scope: !2031)
!2037 = !DILocation(line: 611, column: 37, scope: !2031)
!2038 = !DILocation(line: 611, column: 13, scope: !2031)
!2039 = !DILocation(line: 611, column: 11, scope: !2031)
!2040 = !DILocation(line: 612, column: 10, scope: !2041)
!2041 = distinct !DILexicalBlock(scope: !2031, file: !1, line: 612, column: 10)
!2042 = !DILocation(line: 612, column: 13, scope: !2041)
!2043 = !DILocation(line: 612, column: 17, scope: !2041)
!2044 = !DILocation(line: 612, column: 20, scope: !2041)
!2045 = !DILocation(line: 612, column: 32, scope: !2041)
!2046 = !DILocation(line: 612, column: 30, scope: !2041)
!2047 = !DILocation(line: 612, column: 25, scope: !2041)
!2048 = !DILocation(line: 613, column: 19, scope: !2041)
!2049 = !DILocation(line: 613, column: 17, scope: !2041)
!2050 = !DILocation(line: 613, column: 22, scope: !2041)
!2051 = !DILocation(line: 613, column: 13, scope: !2041)
!2052 = !DILocation(line: 613, column: 8, scope: !2041)
!2053 = !DILocation(line: 614, column: 14, scope: !2031)
!2054 = !DILocation(line: 614, column: 13, scope: !2031)
!2055 = !DILocation(line: 614, column: 11, scope: !2031)
!2056 = !DILocation(line: 616, column: 28, scope: !1992)
!2057 = !DILocation(line: 616, column: 20, scope: !1992)
!2058 = !DILocation(line: 616, column: 4, scope: !1992)
!2059 = !DILocation(line: 616, column: 18, scope: !1992)
!2060 = !DILocation(line: 617, column: 2, scope: !1992)
!2061 = !DILocation(line: 619, column: 10, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !1818, file: !1, line: 619, column: 6)
!2063 = !DILocation(line: 619, column: 9, scope: !2062)
!2064 = !DILocation(line: 619, column: 24, scope: !2062)
!2065 = !DILocation(line: 619, column: 29, scope: !2062)
!2066 = !DILocation(line: 619, column: 32, scope: !2062)
!2067 = !DILocation(line: 619, column: 45, scope: !2062)
!2068 = !DILocation(line: 620, column: 14, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !2062, file: !1, line: 619, column: 51)
!2070 = !DILocation(line: 620, column: 12, scope: !2069)
!2071 = !DILocation(line: 620, column: 21, scope: !2069)
!2072 = !DILocation(line: 620, column: 27, scope: !2069)
!2073 = !DILocation(line: 620, column: 25, scope: !2069)
!2074 = !DILocation(line: 620, column: 33, scope: !2069)
!2075 = !DILocation(line: 620, column: 31, scope: !2069)
!2076 = !DILocation(line: 620, column: 39, scope: !2069)
!2077 = !DILocation(line: 620, column: 37, scope: !2069)
!2078 = !DILocation(line: 620, column: 20, scope: !2069)
!2079 = !DILocation(line: 620, column: 18, scope: !2069)
!2080 = !DILocation(line: 620, column: 8, scope: !2069)
!2081 = !DILocation(line: 621, column: 8, scope: !2082)
!2082 = distinct !DILexicalBlock(scope: !2069, file: !1, line: 621, column: 8)
!2083 = !DILocation(line: 621, column: 12, scope: !2082)
!2084 = !DILocation(line: 622, column: 22, scope: !2085)
!2085 = distinct !DILexicalBlock(scope: !2082, file: !1, line: 621, column: 18)
!2086 = !DILocation(line: 622, column: 25, scope: !2085)
!2087 = !DILocation(line: 622, column: 32, scope: !2085)
!2088 = !DILocation(line: 622, column: 30, scope: !2085)
!2089 = !DILocation(line: 622, column: 40, scope: !2085)
!2090 = !DILocation(line: 622, column: 43, scope: !2085)
!2091 = !DILocation(line: 622, column: 37, scope: !2085)
!2092 = !DILocation(line: 622, column: 13, scope: !2085)
!2093 = !DILocation(line: 622, column: 11, scope: !2085)
!2094 = !DILocation(line: 623, column: 10, scope: !2095)
!2095 = distinct !DILexicalBlock(scope: !2085, file: !1, line: 623, column: 10)
!2096 = !DILocation(line: 623, column: 13, scope: !2095)
!2097 = !DILocation(line: 623, column: 17, scope: !2095)
!2098 = !DILocation(line: 623, column: 20, scope: !2095)
!2099 = !DILocation(line: 623, column: 32, scope: !2095)
!2100 = !DILocation(line: 623, column: 30, scope: !2095)
!2101 = !DILocation(line: 623, column: 25, scope: !2095)
!2102 = !DILocation(line: 624, column: 19, scope: !2095)
!2103 = !DILocation(line: 624, column: 17, scope: !2095)
!2104 = !DILocation(line: 624, column: 22, scope: !2095)
!2105 = !DILocation(line: 624, column: 13, scope: !2095)
!2106 = !DILocation(line: 624, column: 8, scope: !2095)
!2107 = !DILocation(line: 625, column: 4, scope: !2085)
!2108 = !DILocation(line: 626, column: 22, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !2082, file: !1, line: 625, column: 11)
!2110 = !DILocation(line: 626, column: 25, scope: !2109)
!2111 = !DILocation(line: 626, column: 32, scope: !2109)
!2112 = !DILocation(line: 626, column: 30, scope: !2109)
!2113 = !DILocation(line: 626, column: 40, scope: !2109)
!2114 = !DILocation(line: 626, column: 43, scope: !2109)
!2115 = !DILocation(line: 626, column: 37, scope: !2109)
!2116 = !DILocation(line: 626, column: 13, scope: !2109)
!2117 = !DILocation(line: 626, column: 11, scope: !2109)
!2118 = !DILocation(line: 627, column: 10, scope: !2119)
!2119 = distinct !DILexicalBlock(scope: !2109, file: !1, line: 627, column: 10)
!2120 = !DILocation(line: 627, column: 13, scope: !2119)
!2121 = !DILocation(line: 627, column: 17, scope: !2119)
!2122 = !DILocation(line: 627, column: 20, scope: !2119)
!2123 = !DILocation(line: 627, column: 32, scope: !2119)
!2124 = !DILocation(line: 627, column: 30, scope: !2119)
!2125 = !DILocation(line: 627, column: 25, scope: !2119)
!2126 = !DILocation(line: 628, column: 19, scope: !2119)
!2127 = !DILocation(line: 628, column: 17, scope: !2119)
!2128 = !DILocation(line: 628, column: 22, scope: !2119)
!2129 = !DILocation(line: 628, column: 13, scope: !2119)
!2130 = !DILocation(line: 628, column: 8, scope: !2119)
!2131 = !DILocation(line: 629, column: 14, scope: !2109)
!2132 = !DILocation(line: 629, column: 13, scope: !2109)
!2133 = !DILocation(line: 629, column: 11, scope: !2109)
!2134 = !DILocation(line: 631, column: 27, scope: !2069)
!2135 = !DILocation(line: 631, column: 19, scope: !2069)
!2136 = !DILocation(line: 631, column: 4, scope: !2069)
!2137 = !DILocation(line: 631, column: 17, scope: !2069)
!2138 = !DILocation(line: 632, column: 2, scope: !2069)
!2139 = !DILocation(line: 634, column: 10, scope: !2140)
!2140 = distinct !DILexicalBlock(scope: !1818, file: !1, line: 634, column: 6)
!2141 = !DILocation(line: 634, column: 9, scope: !2140)
!2142 = !DILocation(line: 634, column: 24, scope: !2140)
!2143 = !DILocation(line: 634, column: 29, scope: !2140)
!2144 = !DILocation(line: 634, column: 32, scope: !2140)
!2145 = !DILocation(line: 634, column: 45, scope: !2140)
!2146 = !DILocation(line: 635, column: 14, scope: !2147)
!2147 = distinct !DILexicalBlock(scope: !2140, file: !1, line: 634, column: 51)
!2148 = !DILocation(line: 635, column: 12, scope: !2147)
!2149 = !DILocation(line: 635, column: 21, scope: !2147)
!2150 = !DILocation(line: 635, column: 27, scope: !2147)
!2151 = !DILocation(line: 635, column: 25, scope: !2147)
!2152 = !DILocation(line: 635, column: 35, scope: !2147)
!2153 = !DILocation(line: 635, column: 34, scope: !2147)
!2154 = !DILocation(line: 635, column: 31, scope: !2147)
!2155 = !DILocation(line: 635, column: 20, scope: !2147)
!2156 = !DILocation(line: 635, column: 18, scope: !2147)
!2157 = !DILocation(line: 635, column: 8, scope: !2147)
!2158 = !DILocation(line: 636, column: 8, scope: !2159)
!2159 = distinct !DILexicalBlock(scope: !2147, file: !1, line: 636, column: 8)
!2160 = !DILocation(line: 636, column: 12, scope: !2159)
!2161 = !DILocation(line: 637, column: 22, scope: !2162)
!2162 = distinct !DILexicalBlock(scope: !2159, file: !1, line: 636, column: 18)
!2163 = !DILocation(line: 637, column: 25, scope: !2162)
!2164 = !DILocation(line: 637, column: 32, scope: !2162)
!2165 = !DILocation(line: 637, column: 30, scope: !2162)
!2166 = !DILocation(line: 637, column: 40, scope: !2162)
!2167 = !DILocation(line: 637, column: 43, scope: !2162)
!2168 = !DILocation(line: 637, column: 37, scope: !2162)
!2169 = !DILocation(line: 637, column: 13, scope: !2162)
!2170 = !DILocation(line: 637, column: 11, scope: !2162)
!2171 = !DILocation(line: 638, column: 10, scope: !2172)
!2172 = distinct !DILexicalBlock(scope: !2162, file: !1, line: 638, column: 10)
!2173 = !DILocation(line: 638, column: 13, scope: !2172)
!2174 = !DILocation(line: 638, column: 17, scope: !2172)
!2175 = !DILocation(line: 638, column: 20, scope: !2172)
!2176 = !DILocation(line: 638, column: 32, scope: !2172)
!2177 = !DILocation(line: 638, column: 30, scope: !2172)
!2178 = !DILocation(line: 638, column: 25, scope: !2172)
!2179 = !DILocation(line: 639, column: 19, scope: !2172)
!2180 = !DILocation(line: 639, column: 17, scope: !2172)
!2181 = !DILocation(line: 639, column: 22, scope: !2172)
!2182 = !DILocation(line: 639, column: 13, scope: !2172)
!2183 = !DILocation(line: 639, column: 8, scope: !2172)
!2184 = !DILocation(line: 640, column: 4, scope: !2162)
!2185 = !DILocation(line: 641, column: 22, scope: !2186)
!2186 = distinct !DILexicalBlock(scope: !2159, file: !1, line: 640, column: 11)
!2187 = !DILocation(line: 641, column: 25, scope: !2186)
!2188 = !DILocation(line: 641, column: 32, scope: !2186)
!2189 = !DILocation(line: 641, column: 30, scope: !2186)
!2190 = !DILocation(line: 641, column: 40, scope: !2186)
!2191 = !DILocation(line: 641, column: 43, scope: !2186)
!2192 = !DILocation(line: 641, column: 37, scope: !2186)
!2193 = !DILocation(line: 641, column: 13, scope: !2186)
!2194 = !DILocation(line: 641, column: 11, scope: !2186)
!2195 = !DILocation(line: 642, column: 10, scope: !2196)
!2196 = distinct !DILexicalBlock(scope: !2186, file: !1, line: 642, column: 10)
!2197 = !DILocation(line: 642, column: 13, scope: !2196)
!2198 = !DILocation(line: 642, column: 17, scope: !2196)
!2199 = !DILocation(line: 642, column: 20, scope: !2196)
!2200 = !DILocation(line: 642, column: 32, scope: !2196)
!2201 = !DILocation(line: 642, column: 30, scope: !2196)
!2202 = !DILocation(line: 642, column: 25, scope: !2196)
!2203 = !DILocation(line: 643, column: 19, scope: !2196)
!2204 = !DILocation(line: 643, column: 17, scope: !2196)
!2205 = !DILocation(line: 643, column: 22, scope: !2196)
!2206 = !DILocation(line: 643, column: 13, scope: !2196)
!2207 = !DILocation(line: 643, column: 8, scope: !2196)
!2208 = !DILocation(line: 644, column: 14, scope: !2186)
!2209 = !DILocation(line: 644, column: 13, scope: !2186)
!2210 = !DILocation(line: 644, column: 11, scope: !2186)
!2211 = !DILocation(line: 646, column: 27, scope: !2147)
!2212 = !DILocation(line: 646, column: 19, scope: !2147)
!2213 = !DILocation(line: 646, column: 4, scope: !2147)
!2214 = !DILocation(line: 646, column: 17, scope: !2147)
!2215 = !DILocation(line: 647, column: 2, scope: !2147)
!2216 = !DILocation(line: 649, column: 4, scope: !1818)
!2217 = !DILocation(line: 649, column: 18, scope: !1818)
!2218 = !DILocation(line: 649, column: 25, scope: !1818)
!2219 = !DILocation(line: 649, column: 45, scope: !1818)
!2220 = !DILocation(line: 650, column: 4, scope: !1818)
!2221 = !DILocation(line: 650, column: 16, scope: !1818)
!2222 = !DILocation(line: 649, column: 2, scope: !1818)
!2223 = !DILocation(line: 652, column: 8, scope: !1818)
!2224 = !DILocation(line: 652, column: 6, scope: !1818)
!2225 = !DILocation(line: 652, column: 19, scope: !1818)
!2226 = !DILocation(line: 652, column: 17, scope: !1818)
!2227 = !DILocation(line: 653, column: 8, scope: !1818)
!2228 = !DILocation(line: 653, column: 6, scope: !1818)
!2229 = !DILocation(line: 653, column: 19, scope: !1818)
!2230 = !DILocation(line: 653, column: 17, scope: !1818)
!2231 = !DILocation(line: 654, column: 8, scope: !1818)
!2232 = !DILocation(line: 654, column: 6, scope: !1818)
!2233 = !DILocation(line: 654, column: 19, scope: !1818)
!2234 = !DILocation(line: 654, column: 17, scope: !1818)
!2235 = !DILocation(line: 655, column: 12, scope: !1818)
!2236 = !DILocation(line: 655, column: 30, scope: !1818)
!2237 = !DILocation(line: 655, column: 48, scope: !1818)
!2238 = !DILocation(line: 656, column: 16, scope: !1818)
!2239 = !DILocation(line: 656, column: 25, scope: !1818)
!2240 = !DILocation(line: 656, column: 13, scope: !1818)
!2241 = !DILocation(line: 657, column: 7, scope: !1818)
!2242 = !DILocation(line: 560, column: 68, scope: !1813)
!2243 = !DILocation(line: 560, column: 7, scope: !1813)
!2244 = distinct !{!2244, !1816, !2245, !563}
!2245 = !DILocation(line: 657, column: 7, scope: !1810)
!2246 = !DILocation(line: 658, column: 21, scope: !1760)
!2247 = !DILocation(line: 658, column: 30, scope: !1760)
!2248 = !DILocation(line: 658, column: 18, scope: !1760)
!2249 = !DILocation(line: 659, column: 5, scope: !1760)
!2250 = !DILocation(line: 542, column: 58, scope: !1755)
!2251 = !DILocation(line: 542, column: 5, scope: !1755)
!2252 = distinct !{!2252, !1758, !2253, !563}
!2253 = !DILocation(line: 659, column: 5, scope: !1752)
!2254 = !DILocation(line: 660, column: 3, scope: !1640)
!2255 = !DILocation(line: 499, column: 10, scope: !1633)
!2256 = !DILocation(line: 499, column: 21, scope: !1633)
!2257 = !DILocation(line: 498, column: 3, scope: !1633)
!2258 = distinct !{!2258, !1637, !2259, !563}
!2259 = !DILocation(line: 660, column: 3, scope: !1627)
!2260 = !DILocation(line: 662, column: 10, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !1491, file: !1, line: 662, column: 7)
!2262 = !DILocation(line: 662, column: 17, scope: !2261)
!2263 = !DILocation(line: 662, column: 7, scope: !2261)
!2264 = !DILocation(line: 662, column: 36, scope: !2261)
!2265 = !DILocation(line: 662, column: 43, scope: !2261)
!2266 = !DILocation(line: 662, column: 34, scope: !2261)
!2267 = !DILocation(line: 663, column: 5, scope: !2261)
!2268 = !DILocation(line: 664, column: 3, scope: !1491)
!2269 = !DILocation(line: 665, column: 1, scope: !1491)
