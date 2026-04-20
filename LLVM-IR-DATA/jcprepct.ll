; ModuleID = 'cBench/consumer_jpeg_c/src/jcprepct.c'
source_filename = "cBench/consumer_jpeg_c/src/jcprepct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jpeg_compress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, double, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [16 x i8], [16 x i8], [16 x i8], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.my_prep_controller = type { %struct.jpeg_c_prep_controller, [10 x ptr], i32, i32, i32, i32 }
%struct.jpeg_c_prep_controller = type { ptr, ptr }
%struct.jpeg_downsampler = type { ptr, ptr, i32 }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.jpeg_color_converter = type { ptr, ptr }

; Function Attrs: noinline nounwind uwtable
define dso_local void @jinit_c_prep_controller(ptr noundef %0, i32 noundef %1) #0 !dbg !542 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !544, !DIExpression(), !545)
  store i32 %1, ptr %4, align 4
    #dbg_declare(ptr %4, !546, !DIExpression(), !547)
    #dbg_declare(ptr %5, !548, !DIExpression(), !549)
    #dbg_declare(ptr %6, !550, !DIExpression(), !551)
    #dbg_declare(ptr %7, !552, !DIExpression(), !553)
  %8 = load i32, ptr %4, align 4, !dbg !554
  %9 = icmp ne i32 %8, 0, !dbg !554
  br i1 %9, label %10, label %21, !dbg !554

10:                                               ; preds = %2
  %11 = load ptr, ptr %3, align 8, !dbg !556
  %12 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %11, i32 0, i32 0, !dbg !556
  %13 = load ptr, ptr %12, align 8, !dbg !556
  %14 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %13, i32 0, i32 5, !dbg !556
  store i32 4, ptr %14, align 8, !dbg !556
  %15 = load ptr, ptr %3, align 8, !dbg !556
  %16 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %15, i32 0, i32 0, !dbg !556
  %17 = load ptr, ptr %16, align 8, !dbg !556
  %18 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %17, i32 0, i32 0, !dbg !556
  %19 = load ptr, ptr %18, align 8, !dbg !556
  %20 = load ptr, ptr %3, align 8, !dbg !556
  call void %19(ptr noundef %20), !dbg !556
  br label %21, !dbg !556

21:                                               ; preds = %10, %2
  %22 = load ptr, ptr %3, align 8, !dbg !557
  %23 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %22, i32 0, i32 1, !dbg !558
  %24 = load ptr, ptr %23, align 8, !dbg !558
  %25 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %24, i32 0, i32 0, !dbg !559
  %26 = load ptr, ptr %25, align 8, !dbg !559
  %27 = load ptr, ptr %3, align 8, !dbg !560
  %28 = call ptr %26(ptr noundef %27, i32 noundef 1, i64 noundef 112), !dbg !561
  store ptr %28, ptr %5, align 8, !dbg !562
  %29 = load ptr, ptr %5, align 8, !dbg !563
  %30 = load ptr, ptr %3, align 8, !dbg !564
  %31 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %30, i32 0, i32 53, !dbg !565
  store ptr %29, ptr %31, align 8, !dbg !566
  %32 = load ptr, ptr %5, align 8, !dbg !567
  %33 = getelementptr inbounds nuw %struct.my_prep_controller, ptr %32, i32 0, i32 0, !dbg !568
  %34 = getelementptr inbounds nuw %struct.jpeg_c_prep_controller, ptr %33, i32 0, i32 0, !dbg !569
  store ptr @start_pass_prep, ptr %34, align 8, !dbg !570
  %35 = load ptr, ptr %3, align 8, !dbg !571
  %36 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %35, i32 0, i32 57, !dbg !573
  %37 = load ptr, ptr %36, align 8, !dbg !573
  %38 = getelementptr inbounds nuw %struct.jpeg_downsampler, ptr %37, i32 0, i32 2, !dbg !574
  %39 = load i32, ptr %38, align 8, !dbg !574
  %40 = icmp ne i32 %39, 0, !dbg !571
  br i1 %40, label %41, label %46, !dbg !571

41:                                               ; preds = %21
  %42 = load ptr, ptr %5, align 8, !dbg !575
  %43 = getelementptr inbounds nuw %struct.my_prep_controller, ptr %42, i32 0, i32 0, !dbg !577
  %44 = getelementptr inbounds nuw %struct.jpeg_c_prep_controller, ptr %43, i32 0, i32 1, !dbg !578
  store ptr @pre_process_context, ptr %44, align 8, !dbg !579
  %45 = load ptr, ptr %3, align 8, !dbg !580
  call void @create_context_buffer(ptr noundef %45), !dbg !581
  br label %97, !dbg !582

46:                                               ; preds = %21
  %47 = load ptr, ptr %5, align 8, !dbg !583
  %48 = getelementptr inbounds nuw %struct.my_prep_controller, ptr %47, i32 0, i32 0, !dbg !585
  %49 = getelementptr inbounds nuw %struct.jpeg_c_prep_controller, ptr %48, i32 0, i32 1, !dbg !586
  store ptr @pre_process_data, ptr %49, align 8, !dbg !587
  store i32 0, ptr %6, align 4, !dbg !588
  %50 = load ptr, ptr %3, align 8, !dbg !590
  %51 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %50, i32 0, i32 14, !dbg !591
  %52 = load ptr, ptr %51, align 8, !dbg !591
  store ptr %52, ptr %7, align 8, !dbg !592
  br label %53, !dbg !593

53:                                               ; preds = %91, %46
  %54 = load i32, ptr %6, align 4, !dbg !594
  %55 = load ptr, ptr %3, align 8, !dbg !596
  %56 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %55, i32 0, i32 12, !dbg !597
  %57 = load i32, ptr %56, align 4, !dbg !597
  %58 = icmp slt i32 %54, %57, !dbg !598
  br i1 %58, label %59, label %96, !dbg !599

59:                                               ; preds = %53
  %60 = load ptr, ptr %3, align 8, !dbg !600
  %61 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %60, i32 0, i32 1, !dbg !602
  %62 = load ptr, ptr %61, align 8, !dbg !602
  %63 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %62, i32 0, i32 2, !dbg !603
  %64 = load ptr, ptr %63, align 8, !dbg !603
  %65 = load ptr, ptr %3, align 8, !dbg !604
  %66 = load ptr, ptr %7, align 8, !dbg !605
  %67 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %66, i32 0, i32 7, !dbg !606
  %68 = load i32, ptr %67, align 4, !dbg !606
  %69 = zext i32 %68 to i64, !dbg !607
  %70 = mul nsw i64 %69, 8, !dbg !608
  %71 = load ptr, ptr %3, align 8, !dbg !609
  %72 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %71, i32 0, i32 38, !dbg !610
  %73 = load i32, ptr %72, align 8, !dbg !610
  %74 = sext i32 %73 to i64, !dbg !609
  %75 = mul nsw i64 %70, %74, !dbg !611
  %76 = load ptr, ptr %7, align 8, !dbg !612
  %77 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %76, i32 0, i32 2, !dbg !613
  %78 = load i32, ptr %77, align 8, !dbg !613
  %79 = sext i32 %78 to i64, !dbg !612
  %80 = sdiv i64 %75, %79, !dbg !614
  %81 = trunc i64 %80 to i32, !dbg !615
  %82 = load ptr, ptr %3, align 8, !dbg !616
  %83 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %82, i32 0, i32 39, !dbg !617
  %84 = load i32, ptr %83, align 4, !dbg !617
  %85 = call ptr %64(ptr noundef %65, i32 noundef 1, i32 noundef %81, i32 noundef %84), !dbg !618
  %86 = load ptr, ptr %5, align 8, !dbg !619
  %87 = getelementptr inbounds nuw %struct.my_prep_controller, ptr %86, i32 0, i32 1, !dbg !620
  %88 = load i32, ptr %6, align 4, !dbg !621
  %89 = sext i32 %88 to i64, !dbg !619
  %90 = getelementptr inbounds [10 x ptr], ptr %87, i64 0, i64 %89, !dbg !619
  store ptr %85, ptr %90, align 8, !dbg !622
  br label %91, !dbg !623

91:                                               ; preds = %59
  %92 = load i32, ptr %6, align 4, !dbg !624
  %93 = add nsw i32 %92, 1, !dbg !624
  store i32 %93, ptr %6, align 4, !dbg !624
  %94 = load ptr, ptr %7, align 8, !dbg !625
  %95 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %94, i32 1, !dbg !625
  store ptr %95, ptr %7, align 8, !dbg !625
  br label %53, !dbg !626, !llvm.loop !627

96:                                               ; preds = %53
  br label %97

97:                                               ; preds = %96, %41
  ret void, !dbg !630
}

; Function Attrs: noinline nounwind uwtable
define internal void @start_pass_prep(ptr noundef %0, i32 noundef %1) #0 !dbg !631 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !632, !DIExpression(), !633)
  store i32 %1, ptr %4, align 4
    #dbg_declare(ptr %4, !634, !DIExpression(), !635)
    #dbg_declare(ptr %5, !636, !DIExpression(), !637)
  %6 = load ptr, ptr %3, align 8, !dbg !638
  %7 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %6, i32 0, i32 53, !dbg !639
  %8 = load ptr, ptr %7, align 8, !dbg !639
  store ptr %8, ptr %5, align 8, !dbg !637
  %9 = load i32, ptr %4, align 4, !dbg !640
  %10 = icmp ne i32 %9, 0, !dbg !642
  br i1 %10, label %11, label %22, !dbg !642

11:                                               ; preds = %2
  %12 = load ptr, ptr %3, align 8, !dbg !643
  %13 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %12, i32 0, i32 0, !dbg !643
  %14 = load ptr, ptr %13, align 8, !dbg !643
  %15 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %14, i32 0, i32 5, !dbg !643
  store i32 4, ptr %15, align 8, !dbg !643
  %16 = load ptr, ptr %3, align 8, !dbg !643
  %17 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %16, i32 0, i32 0, !dbg !643
  %18 = load ptr, ptr %17, align 8, !dbg !643
  %19 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %18, i32 0, i32 0, !dbg !643
  %20 = load ptr, ptr %19, align 8, !dbg !643
  %21 = load ptr, ptr %3, align 8, !dbg !643
  call void %20(ptr noundef %21), !dbg !643
  br label %22, !dbg !643

22:                                               ; preds = %11, %2
  %23 = load ptr, ptr %3, align 8, !dbg !644
  %24 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %23, i32 0, i32 7, !dbg !645
  %25 = load i32, ptr %24, align 4, !dbg !645
  %26 = load ptr, ptr %5, align 8, !dbg !646
  %27 = getelementptr inbounds nuw %struct.my_prep_controller, ptr %26, i32 0, i32 2, !dbg !647
  store i32 %25, ptr %27, align 8, !dbg !648
  %28 = load ptr, ptr %5, align 8, !dbg !649
  %29 = getelementptr inbounds nuw %struct.my_prep_controller, ptr %28, i32 0, i32 3, !dbg !650
  store i32 0, ptr %29, align 4, !dbg !651
  %30 = load ptr, ptr %5, align 8, !dbg !652
  %31 = getelementptr inbounds nuw %struct.my_prep_controller, ptr %30, i32 0, i32 4, !dbg !653
  store i32 0, ptr %31, align 8, !dbg !654
  %32 = load ptr, ptr %3, align 8, !dbg !655
  %33 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %32, i32 0, i32 39, !dbg !656
  %34 = load i32, ptr %33, align 4, !dbg !656
  %35 = mul nsw i32 2, %34, !dbg !657
  %36 = load ptr, ptr %5, align 8, !dbg !658
  %37 = getelementptr inbounds nuw %struct.my_prep_controller, ptr %36, i32 0, i32 5, !dbg !659
  store i32 %35, ptr %37, align 4, !dbg !660
  ret void, !dbg !661
}

; Function Attrs: noinline nounwind uwtable
define internal void @pre_process_context(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6) #0 !dbg !662 {
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca i32, align 4
  %15 = alloca ptr, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store ptr %0, ptr %8, align 8
    #dbg_declare(ptr %8, !663, !DIExpression(), !664)
  store ptr %1, ptr %9, align 8
    #dbg_declare(ptr %9, !665, !DIExpression(), !666)
  store ptr %2, ptr %10, align 8
    #dbg_declare(ptr %10, !667, !DIExpression(), !668)
  store i32 %3, ptr %11, align 4
    #dbg_declare(ptr %11, !669, !DIExpression(), !670)
  store ptr %4, ptr %12, align 8
    #dbg_declare(ptr %12, !671, !DIExpression(), !672)
  store ptr %5, ptr %13, align 8
    #dbg_declare(ptr %13, !673, !DIExpression(), !674)
  store i32 %6, ptr %14, align 4
    #dbg_declare(ptr %14, !675, !DIExpression(), !676)
    #dbg_declare(ptr %15, !677, !DIExpression(), !678)
  %21 = load ptr, ptr %8, align 8, !dbg !679
  %22 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %21, i32 0, i32 53, !dbg !680
  %23 = load ptr, ptr %22, align 8, !dbg !680
  store ptr %23, ptr %15, align 8, !dbg !678
    #dbg_declare(ptr %16, !681, !DIExpression(), !682)
    #dbg_declare(ptr %17, !683, !DIExpression(), !684)
    #dbg_declare(ptr %18, !685, !DIExpression(), !686)
  %24 = load ptr, ptr %8, align 8, !dbg !687
  %25 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %24, i32 0, i32 39, !dbg !688
  %26 = load i32, ptr %25, align 4, !dbg !688
  %27 = mul nsw i32 %26, 3, !dbg !689
  store i32 %27, ptr %18, align 4, !dbg !686
    #dbg_declare(ptr %19, !690, !DIExpression(), !691)
  br label %28, !dbg !692

28:                                               ; preds = %247, %7
  %29 = load ptr, ptr %13, align 8, !dbg !693
  %30 = load i32, ptr %29, align 4, !dbg !694
  %31 = load i32, ptr %14, align 4, !dbg !695
  %32 = icmp ult i32 %30, %31, !dbg !696
  br i1 %32, label %33, label %248, !dbg !692

33:                                               ; preds = %28
  %34 = load ptr, ptr %10, align 8, !dbg !697
  %35 = load i32, ptr %34, align 4, !dbg !700
  %36 = load i32, ptr %11, align 4, !dbg !701
  %37 = icmp ult i32 %35, %36, !dbg !702
  br i1 %37, label %38, label %139, !dbg !702

38:                                               ; preds = %33
  %39 = load i32, ptr %11, align 4, !dbg !703
  %40 = load ptr, ptr %10, align 8, !dbg !705
  %41 = load i32, ptr %40, align 4, !dbg !706
  %42 = sub i32 %39, %41, !dbg !707
  store i32 %42, ptr %19, align 4, !dbg !708
  %43 = load ptr, ptr %15, align 8, !dbg !709
  %44 = getelementptr inbounds nuw %struct.my_prep_controller, ptr %43, i32 0, i32 5, !dbg !710
  %45 = load i32, ptr %44, align 4, !dbg !710
  %46 = load ptr, ptr %15, align 8, !dbg !711
  %47 = getelementptr inbounds nuw %struct.my_prep_controller, ptr %46, i32 0, i32 3, !dbg !712
  %48 = load i32, ptr %47, align 4, !dbg !712
  %49 = sub nsw i32 %45, %48, !dbg !713
  store i32 %49, ptr %16, align 4, !dbg !714
  %50 = load i32, ptr %16, align 4, !dbg !715
  %51 = load i32, ptr %19, align 4, !dbg !715
  %52 = icmp ult i32 %50, %51, !dbg !715
  br i1 %52, label %53, label %55, !dbg !715

53:                                               ; preds = %38
  %54 = load i32, ptr %16, align 4, !dbg !715
  br label %57, !dbg !715

55:                                               ; preds = %38
  %56 = load i32, ptr %19, align 4, !dbg !715
  br label %57, !dbg !715

57:                                               ; preds = %55, %53
  %58 = phi i32 [ %54, %53 ], [ %56, %55 ], !dbg !715
  store i32 %58, ptr %16, align 4, !dbg !716
  %59 = load ptr, ptr %8, align 8, !dbg !717
  %60 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %59, i32 0, i32 56, !dbg !718
  %61 = load ptr, ptr %60, align 8, !dbg !718
  %62 = getelementptr inbounds nuw %struct.jpeg_color_converter, ptr %61, i32 0, i32 1, !dbg !719
  %63 = load ptr, ptr %62, align 8, !dbg !719
  %64 = load ptr, ptr %8, align 8, !dbg !720
  %65 = load ptr, ptr %9, align 8, !dbg !721
  %66 = load ptr, ptr %10, align 8, !dbg !722
  %67 = load i32, ptr %66, align 4, !dbg !723
  %68 = zext i32 %67 to i64, !dbg !724
  %69 = getelementptr inbounds nuw ptr, ptr %65, i64 %68, !dbg !724
  %70 = load ptr, ptr %15, align 8, !dbg !725
  %71 = getelementptr inbounds nuw %struct.my_prep_controller, ptr %70, i32 0, i32 1, !dbg !726
  %72 = getelementptr inbounds [10 x ptr], ptr %71, i64 0, i64 0, !dbg !725
  %73 = load ptr, ptr %15, align 8, !dbg !727
  %74 = getelementptr inbounds nuw %struct.my_prep_controller, ptr %73, i32 0, i32 3, !dbg !728
  %75 = load i32, ptr %74, align 4, !dbg !728
  %76 = load i32, ptr %16, align 4, !dbg !729
  call void %63(ptr noundef %64, ptr noundef %69, ptr noundef %72, i32 noundef %75, i32 noundef %76), !dbg !730
  %77 = load ptr, ptr %15, align 8, !dbg !731
  %78 = getelementptr inbounds nuw %struct.my_prep_controller, ptr %77, i32 0, i32 2, !dbg !733
  %79 = load i32, ptr %78, align 8, !dbg !733
  %80 = load ptr, ptr %8, align 8, !dbg !734
  %81 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %80, i32 0, i32 7, !dbg !735
  %82 = load i32, ptr %81, align 4, !dbg !735
  %83 = icmp eq i32 %79, %82, !dbg !736
  br i1 %83, label %84, label %124, !dbg !736

84:                                               ; preds = %57
  store i32 0, ptr %17, align 4, !dbg !737
  br label %85, !dbg !740

85:                                               ; preds = %120, %84
  %86 = load i32, ptr %17, align 4, !dbg !741
  %87 = load ptr, ptr %8, align 8, !dbg !743
  %88 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %87, i32 0, i32 12, !dbg !744
  %89 = load i32, ptr %88, align 4, !dbg !744
  %90 = icmp slt i32 %86, %89, !dbg !745
  br i1 %90, label %91, label %123, !dbg !746

91:                                               ; preds = %85
    #dbg_declare(ptr %20, !747, !DIExpression(), !749)
  store i32 1, ptr %20, align 4, !dbg !750
  br label %92, !dbg !752

92:                                               ; preds = %116, %91
  %93 = load i32, ptr %20, align 4, !dbg !753
  %94 = load ptr, ptr %8, align 8, !dbg !755
  %95 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %94, i32 0, i32 39, !dbg !756
  %96 = load i32, ptr %95, align 4, !dbg !756
  %97 = icmp sle i32 %93, %96, !dbg !757
  br i1 %97, label %98, label %119, !dbg !758

98:                                               ; preds = %92
  %99 = load ptr, ptr %15, align 8, !dbg !759
  %100 = getelementptr inbounds nuw %struct.my_prep_controller, ptr %99, i32 0, i32 1, !dbg !761
  %101 = load i32, ptr %17, align 4, !dbg !762
  %102 = sext i32 %101 to i64, !dbg !759
  %103 = getelementptr inbounds [10 x ptr], ptr %100, i64 0, i64 %102, !dbg !759
  %104 = load ptr, ptr %103, align 8, !dbg !759
  %105 = load ptr, ptr %15, align 8, !dbg !763
  %106 = getelementptr inbounds nuw %struct.my_prep_controller, ptr %105, i32 0, i32 1, !dbg !764
  %107 = load i32, ptr %17, align 4, !dbg !765
  %108 = sext i32 %107 to i64, !dbg !763
  %109 = getelementptr inbounds [10 x ptr], ptr %106, i64 0, i64 %108, !dbg !763
  %110 = load ptr, ptr %109, align 8, !dbg !763
  %111 = load i32, ptr %20, align 4, !dbg !766
  %112 = sub nsw i32 0, %111, !dbg !767
  %113 = load ptr, ptr %8, align 8, !dbg !768
  %114 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %113, i32 0, i32 6, !dbg !769
  %115 = load i32, ptr %114, align 8, !dbg !769
  call void @jcopy_sample_rows(ptr noundef %104, i32 noundef 0, ptr noundef %110, i32 noundef %112, i32 noundef 1, i32 noundef %115), !dbg !770
  br label %116, !dbg !771

116:                                              ; preds = %98
  %117 = load i32, ptr %20, align 4, !dbg !772
  %118 = add nsw i32 %117, 1, !dbg !772
  store i32 %118, ptr %20, align 4, !dbg !772
  br label %92, !dbg !773, !llvm.loop !774

119:                                              ; preds = %92
  br label %120, !dbg !776

120:                                              ; preds = %119
  %121 = load i32, ptr %17, align 4, !dbg !777
  %122 = add nsw i32 %121, 1, !dbg !777
  store i32 %122, ptr %17, align 4, !dbg !777
  br label %85, !dbg !778, !llvm.loop !779

123:                                              ; preds = %85
  br label %124, !dbg !781

124:                                              ; preds = %123, %57
  %125 = load i32, ptr %16, align 4, !dbg !782
  %126 = load ptr, ptr %10, align 8, !dbg !783
  %127 = load i32, ptr %126, align 4, !dbg !784
  %128 = add i32 %127, %125, !dbg !784
  store i32 %128, ptr %126, align 4, !dbg !784
  %129 = load i32, ptr %16, align 4, !dbg !785
  %130 = load ptr, ptr %15, align 8, !dbg !786
  %131 = getelementptr inbounds nuw %struct.my_prep_controller, ptr %130, i32 0, i32 3, !dbg !787
  %132 = load i32, ptr %131, align 4, !dbg !788
  %133 = add nsw i32 %132, %129, !dbg !788
  store i32 %133, ptr %131, align 4, !dbg !788
  %134 = load i32, ptr %16, align 4, !dbg !789
  %135 = load ptr, ptr %15, align 8, !dbg !790
  %136 = getelementptr inbounds nuw %struct.my_prep_controller, ptr %135, i32 0, i32 2, !dbg !791
  %137 = load i32, ptr %136, align 8, !dbg !792
  %138 = sub i32 %137, %134, !dbg !792
  store i32 %138, ptr %136, align 8, !dbg !792
  br label %186, !dbg !793

139:                                              ; preds = %33
  %140 = load ptr, ptr %15, align 8, !dbg !794
  %141 = getelementptr inbounds nuw %struct.my_prep_controller, ptr %140, i32 0, i32 2, !dbg !797
  %142 = load i32, ptr %141, align 8, !dbg !797
  %143 = icmp ne i32 %142, 0, !dbg !798
  br i1 %143, label %144, label %145, !dbg !798

144:                                              ; preds = %139
  br label %248, !dbg !799

145:                                              ; preds = %139
  %146 = load ptr, ptr %15, align 8, !dbg !800
  %147 = getelementptr inbounds nuw %struct.my_prep_controller, ptr %146, i32 0, i32 3, !dbg !802
  %148 = load i32, ptr %147, align 4, !dbg !802
  %149 = load ptr, ptr %15, align 8, !dbg !803
  %150 = getelementptr inbounds nuw %struct.my_prep_controller, ptr %149, i32 0, i32 5, !dbg !804
  %151 = load i32, ptr %150, align 4, !dbg !804
  %152 = icmp slt i32 %148, %151, !dbg !805
  br i1 %152, label %153, label %185, !dbg !805

153:                                              ; preds = %145
  store i32 0, ptr %17, align 4, !dbg !806
  br label %154, !dbg !809

154:                                              ; preds = %176, %153
  %155 = load i32, ptr %17, align 4, !dbg !810
  %156 = load ptr, ptr %8, align 8, !dbg !812
  %157 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %156, i32 0, i32 12, !dbg !813
  %158 = load i32, ptr %157, align 4, !dbg !813
  %159 = icmp slt i32 %155, %158, !dbg !814
  br i1 %159, label %160, label %179, !dbg !815

160:                                              ; preds = %154
  %161 = load ptr, ptr %15, align 8, !dbg !816
  %162 = getelementptr inbounds nuw %struct.my_prep_controller, ptr %161, i32 0, i32 1, !dbg !818
  %163 = load i32, ptr %17, align 4, !dbg !819
  %164 = sext i32 %163 to i64, !dbg !816
  %165 = getelementptr inbounds [10 x ptr], ptr %162, i64 0, i64 %164, !dbg !816
  %166 = load ptr, ptr %165, align 8, !dbg !816
  %167 = load ptr, ptr %8, align 8, !dbg !820
  %168 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %167, i32 0, i32 6, !dbg !821
  %169 = load i32, ptr %168, align 8, !dbg !821
  %170 = load ptr, ptr %15, align 8, !dbg !822
  %171 = getelementptr inbounds nuw %struct.my_prep_controller, ptr %170, i32 0, i32 3, !dbg !823
  %172 = load i32, ptr %171, align 4, !dbg !823
  %173 = load ptr, ptr %15, align 8, !dbg !824
  %174 = getelementptr inbounds nuw %struct.my_prep_controller, ptr %173, i32 0, i32 5, !dbg !825
  %175 = load i32, ptr %174, align 4, !dbg !825
  call void @expand_bottom_edge(ptr noundef %166, i32 noundef %169, i32 noundef %172, i32 noundef %175), !dbg !826
  br label %176, !dbg !827

176:                                              ; preds = %160
  %177 = load i32, ptr %17, align 4, !dbg !828
  %178 = add nsw i32 %177, 1, !dbg !828
  store i32 %178, ptr %17, align 4, !dbg !828
  br label %154, !dbg !829, !llvm.loop !830

179:                                              ; preds = %154
  %180 = load ptr, ptr %15, align 8, !dbg !832
  %181 = getelementptr inbounds nuw %struct.my_prep_controller, ptr %180, i32 0, i32 5, !dbg !833
  %182 = load i32, ptr %181, align 4, !dbg !833
  %183 = load ptr, ptr %15, align 8, !dbg !834
  %184 = getelementptr inbounds nuw %struct.my_prep_controller, ptr %183, i32 0, i32 3, !dbg !835
  store i32 %182, ptr %184, align 4, !dbg !836
  br label %185, !dbg !837

185:                                              ; preds = %179, %145
  br label %186

186:                                              ; preds = %185, %124
  %187 = load ptr, ptr %15, align 8, !dbg !838
  %188 = getelementptr inbounds nuw %struct.my_prep_controller, ptr %187, i32 0, i32 3, !dbg !840
  %189 = load i32, ptr %188, align 4, !dbg !840
  %190 = load ptr, ptr %15, align 8, !dbg !841
  %191 = getelementptr inbounds nuw %struct.my_prep_controller, ptr %190, i32 0, i32 5, !dbg !842
  %192 = load i32, ptr %191, align 4, !dbg !842
  %193 = icmp eq i32 %189, %192, !dbg !843
  br i1 %193, label %194, label %247, !dbg !843

194:                                              ; preds = %186
  %195 = load ptr, ptr %8, align 8, !dbg !844
  %196 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %195, i32 0, i32 57, !dbg !846
  %197 = load ptr, ptr %196, align 8, !dbg !846
  %198 = getelementptr inbounds nuw %struct.jpeg_downsampler, ptr %197, i32 0, i32 1, !dbg !847
  %199 = load ptr, ptr %198, align 8, !dbg !847
  %200 = load ptr, ptr %8, align 8, !dbg !848
  %201 = load ptr, ptr %15, align 8, !dbg !849
  %202 = getelementptr inbounds nuw %struct.my_prep_controller, ptr %201, i32 0, i32 1, !dbg !850
  %203 = getelementptr inbounds [10 x ptr], ptr %202, i64 0, i64 0, !dbg !849
  %204 = load ptr, ptr %15, align 8, !dbg !851
  %205 = getelementptr inbounds nuw %struct.my_prep_controller, ptr %204, i32 0, i32 4, !dbg !852
  %206 = load i32, ptr %205, align 8, !dbg !852
  %207 = load ptr, ptr %12, align 8, !dbg !853
  %208 = load ptr, ptr %13, align 8, !dbg !854
  %209 = load i32, ptr %208, align 4, !dbg !855
  call void %199(ptr noundef %200, ptr noundef %203, i32 noundef %206, ptr noundef %207, i32 noundef %209), !dbg !856
  %210 = load ptr, ptr %13, align 8, !dbg !857
  %211 = load i32, ptr %210, align 4, !dbg !858
  %212 = add i32 %211, 1, !dbg !858
  store i32 %212, ptr %210, align 4, !dbg !858
  %213 = load ptr, ptr %8, align 8, !dbg !859
  %214 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %213, i32 0, i32 39, !dbg !860
  %215 = load i32, ptr %214, align 4, !dbg !860
  %216 = load ptr, ptr %15, align 8, !dbg !861
  %217 = getelementptr inbounds nuw %struct.my_prep_controller, ptr %216, i32 0, i32 4, !dbg !862
  %218 = load i32, ptr %217, align 8, !dbg !863
  %219 = add nsw i32 %218, %215, !dbg !863
  store i32 %219, ptr %217, align 8, !dbg !863
  %220 = load ptr, ptr %15, align 8, !dbg !864
  %221 = getelementptr inbounds nuw %struct.my_prep_controller, ptr %220, i32 0, i32 4, !dbg !866
  %222 = load i32, ptr %221, align 8, !dbg !866
  %223 = load i32, ptr %18, align 4, !dbg !867
  %224 = icmp sge i32 %222, %223, !dbg !868
  br i1 %224, label %225, label %228, !dbg !868

225:                                              ; preds = %194
  %226 = load ptr, ptr %15, align 8, !dbg !869
  %227 = getelementptr inbounds nuw %struct.my_prep_controller, ptr %226, i32 0, i32 4, !dbg !870
  store i32 0, ptr %227, align 8, !dbg !871
  br label %228, !dbg !869

228:                                              ; preds = %225, %194
  %229 = load ptr, ptr %15, align 8, !dbg !872
  %230 = getelementptr inbounds nuw %struct.my_prep_controller, ptr %229, i32 0, i32 3, !dbg !874
  %231 = load i32, ptr %230, align 4, !dbg !874
  %232 = load i32, ptr %18, align 4, !dbg !875
  %233 = icmp sge i32 %231, %232, !dbg !876
  br i1 %233, label %234, label %237, !dbg !876

234:                                              ; preds = %228
  %235 = load ptr, ptr %15, align 8, !dbg !877
  %236 = getelementptr inbounds nuw %struct.my_prep_controller, ptr %235, i32 0, i32 3, !dbg !878
  store i32 0, ptr %236, align 4, !dbg !879
  br label %237, !dbg !877

237:                                              ; preds = %234, %228
  %238 = load ptr, ptr %15, align 8, !dbg !880
  %239 = getelementptr inbounds nuw %struct.my_prep_controller, ptr %238, i32 0, i32 3, !dbg !881
  %240 = load i32, ptr %239, align 4, !dbg !881
  %241 = load ptr, ptr %8, align 8, !dbg !882
  %242 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %241, i32 0, i32 39, !dbg !883
  %243 = load i32, ptr %242, align 4, !dbg !883
  %244 = add nsw i32 %240, %243, !dbg !884
  %245 = load ptr, ptr %15, align 8, !dbg !885
  %246 = getelementptr inbounds nuw %struct.my_prep_controller, ptr %245, i32 0, i32 5, !dbg !886
  store i32 %244, ptr %246, align 4, !dbg !887
  br label %247, !dbg !888

247:                                              ; preds = %237, %186
  br label %28, !dbg !692, !llvm.loop !889

248:                                              ; preds = %144, %28
  ret void, !dbg !891
}

; Function Attrs: noinline nounwind uwtable
define internal void @create_context_buffer(ptr noundef %0) #0 !dbg !892 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !893, !DIExpression(), !894)
    #dbg_declare(ptr %3, !895, !DIExpression(), !896)
  %10 = load ptr, ptr %2, align 8, !dbg !897
  %11 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %10, i32 0, i32 53, !dbg !898
  %12 = load ptr, ptr %11, align 8, !dbg !898
  store ptr %12, ptr %3, align 8, !dbg !896
    #dbg_declare(ptr %4, !899, !DIExpression(), !900)
  %13 = load ptr, ptr %2, align 8, !dbg !901
  %14 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %13, i32 0, i32 39, !dbg !902
  %15 = load i32, ptr %14, align 4, !dbg !902
  store i32 %15, ptr %4, align 4, !dbg !900
    #dbg_declare(ptr %5, !903, !DIExpression(), !904)
    #dbg_declare(ptr %6, !905, !DIExpression(), !906)
    #dbg_declare(ptr %7, !907, !DIExpression(), !908)
    #dbg_declare(ptr %8, !909, !DIExpression(), !910)
    #dbg_declare(ptr %9, !911, !DIExpression(), !912)
  %16 = load ptr, ptr %2, align 8, !dbg !913
  %17 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %16, i32 0, i32 1, !dbg !914
  %18 = load ptr, ptr %17, align 8, !dbg !914
  %19 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %18, i32 0, i32 0, !dbg !915
  %20 = load ptr, ptr %19, align 8, !dbg !915
  %21 = load ptr, ptr %2, align 8, !dbg !916
  %22 = load ptr, ptr %2, align 8, !dbg !917
  %23 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %22, i32 0, i32 12, !dbg !918
  %24 = load i32, ptr %23, align 4, !dbg !918
  %25 = mul nsw i32 %24, 5, !dbg !919
  %26 = load i32, ptr %4, align 4, !dbg !920
  %27 = mul nsw i32 %25, %26, !dbg !921
  %28 = sext i32 %27 to i64, !dbg !922
  %29 = mul i64 %28, 8, !dbg !923
  %30 = call ptr %20(ptr noundef %21, i32 noundef 1, i64 noundef %29), !dbg !924
  store ptr %30, ptr %9, align 8, !dbg !925
  store i32 0, ptr %5, align 4, !dbg !926
  %31 = load ptr, ptr %2, align 8, !dbg !928
  %32 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %31, i32 0, i32 14, !dbg !929
  %33 = load ptr, ptr %32, align 8, !dbg !929
  store ptr %33, ptr %7, align 8, !dbg !930
  br label %34, !dbg !931

34:                                               ; preds = %122, %1
  %35 = load i32, ptr %5, align 4, !dbg !932
  %36 = load ptr, ptr %2, align 8, !dbg !934
  %37 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %36, i32 0, i32 12, !dbg !935
  %38 = load i32, ptr %37, align 4, !dbg !935
  %39 = icmp slt i32 %35, %38, !dbg !936
  br i1 %39, label %40, label %127, !dbg !937

40:                                               ; preds = %34
  %41 = load ptr, ptr %2, align 8, !dbg !938
  %42 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %41, i32 0, i32 1, !dbg !940
  %43 = load ptr, ptr %42, align 8, !dbg !940
  %44 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %43, i32 0, i32 2, !dbg !941
  %45 = load ptr, ptr %44, align 8, !dbg !941
  %46 = load ptr, ptr %2, align 8, !dbg !942
  %47 = load ptr, ptr %7, align 8, !dbg !943
  %48 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %47, i32 0, i32 7, !dbg !944
  %49 = load i32, ptr %48, align 4, !dbg !944
  %50 = zext i32 %49 to i64, !dbg !945
  %51 = mul nsw i64 %50, 8, !dbg !946
  %52 = load ptr, ptr %2, align 8, !dbg !947
  %53 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %52, i32 0, i32 38, !dbg !948
  %54 = load i32, ptr %53, align 8, !dbg !948
  %55 = sext i32 %54 to i64, !dbg !947
  %56 = mul nsw i64 %51, %55, !dbg !949
  %57 = load ptr, ptr %7, align 8, !dbg !950
  %58 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %57, i32 0, i32 2, !dbg !951
  %59 = load i32, ptr %58, align 8, !dbg !951
  %60 = sext i32 %59 to i64, !dbg !950
  %61 = sdiv i64 %56, %60, !dbg !952
  %62 = trunc i64 %61 to i32, !dbg !953
  %63 = load i32, ptr %4, align 4, !dbg !954
  %64 = mul nsw i32 3, %63, !dbg !955
  %65 = call ptr %45(ptr noundef %46, i32 noundef 1, i32 noundef %62, i32 noundef %64), !dbg !956
  store ptr %65, ptr %8, align 8, !dbg !957
  %66 = load ptr, ptr %9, align 8, !dbg !958
  %67 = load i32, ptr %4, align 4, !dbg !958
  %68 = sext i32 %67 to i64, !dbg !958
  %69 = getelementptr inbounds ptr, ptr %66, i64 %68, !dbg !958
  %70 = load ptr, ptr %8, align 8, !dbg !958
  %71 = load i32, ptr %4, align 4, !dbg !958
  %72 = mul nsw i32 3, %71, !dbg !958
  %73 = sext i32 %72 to i64, !dbg !958
  %74 = mul i64 %73, 8, !dbg !958
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %69, ptr align 1 %70, i64 %74, i1 false), !dbg !958
  store i32 0, ptr %6, align 4, !dbg !959
  br label %75, !dbg !961

75:                                               ; preds = %104, %40
  %76 = load i32, ptr %6, align 4, !dbg !962
  %77 = load i32, ptr %4, align 4, !dbg !964
  %78 = icmp slt i32 %76, %77, !dbg !965
  br i1 %78, label %79, label %107, !dbg !966

79:                                               ; preds = %75
  %80 = load ptr, ptr %8, align 8, !dbg !967
  %81 = load i32, ptr %4, align 4, !dbg !969
  %82 = mul nsw i32 2, %81, !dbg !970
  %83 = load i32, ptr %6, align 4, !dbg !971
  %84 = add nsw i32 %82, %83, !dbg !972
  %85 = sext i32 %84 to i64, !dbg !967
  %86 = getelementptr inbounds ptr, ptr %80, i64 %85, !dbg !967
  %87 = load ptr, ptr %86, align 8, !dbg !967
  %88 = load ptr, ptr %9, align 8, !dbg !973
  %89 = load i32, ptr %6, align 4, !dbg !974
  %90 = sext i32 %89 to i64, !dbg !973
  %91 = getelementptr inbounds ptr, ptr %88, i64 %90, !dbg !973
  store ptr %87, ptr %91, align 8, !dbg !975
  %92 = load ptr, ptr %8, align 8, !dbg !976
  %93 = load i32, ptr %6, align 4, !dbg !977
  %94 = sext i32 %93 to i64, !dbg !976
  %95 = getelementptr inbounds ptr, ptr %92, i64 %94, !dbg !976
  %96 = load ptr, ptr %95, align 8, !dbg !976
  %97 = load ptr, ptr %9, align 8, !dbg !978
  %98 = load i32, ptr %4, align 4, !dbg !979
  %99 = mul nsw i32 4, %98, !dbg !980
  %100 = load i32, ptr %6, align 4, !dbg !981
  %101 = add nsw i32 %99, %100, !dbg !982
  %102 = sext i32 %101 to i64, !dbg !978
  %103 = getelementptr inbounds ptr, ptr %97, i64 %102, !dbg !978
  store ptr %96, ptr %103, align 8, !dbg !983
  br label %104, !dbg !984

104:                                              ; preds = %79
  %105 = load i32, ptr %6, align 4, !dbg !985
  %106 = add nsw i32 %105, 1, !dbg !985
  store i32 %106, ptr %6, align 4, !dbg !985
  br label %75, !dbg !986, !llvm.loop !987

107:                                              ; preds = %75
  %108 = load ptr, ptr %9, align 8, !dbg !989
  %109 = load i32, ptr %4, align 4, !dbg !990
  %110 = sext i32 %109 to i64, !dbg !991
  %111 = getelementptr inbounds ptr, ptr %108, i64 %110, !dbg !991
  %112 = load ptr, ptr %3, align 8, !dbg !992
  %113 = getelementptr inbounds nuw %struct.my_prep_controller, ptr %112, i32 0, i32 1, !dbg !993
  %114 = load i32, ptr %5, align 4, !dbg !994
  %115 = sext i32 %114 to i64, !dbg !992
  %116 = getelementptr inbounds [10 x ptr], ptr %113, i64 0, i64 %115, !dbg !992
  store ptr %111, ptr %116, align 8, !dbg !995
  %117 = load i32, ptr %4, align 4, !dbg !996
  %118 = mul nsw i32 5, %117, !dbg !997
  %119 = load ptr, ptr %9, align 8, !dbg !998
  %120 = sext i32 %118 to i64, !dbg !998
  %121 = getelementptr inbounds ptr, ptr %119, i64 %120, !dbg !998
  store ptr %121, ptr %9, align 8, !dbg !998
  br label %122, !dbg !999

122:                                              ; preds = %107
  %123 = load i32, ptr %5, align 4, !dbg !1000
  %124 = add nsw i32 %123, 1, !dbg !1000
  store i32 %124, ptr %5, align 4, !dbg !1000
  %125 = load ptr, ptr %7, align 8, !dbg !1001
  %126 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %125, i32 1, !dbg !1001
  store ptr %126, ptr %7, align 8, !dbg !1001
  br label %34, !dbg !1002, !llvm.loop !1003

127:                                              ; preds = %34
  ret void, !dbg !1005
}

; Function Attrs: noinline nounwind uwtable
define internal void @pre_process_data(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6) #0 !dbg !1006 {
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca i32, align 4
  %15 = alloca ptr, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca ptr, align 8
  store ptr %0, ptr %8, align 8
    #dbg_declare(ptr %8, !1007, !DIExpression(), !1008)
  store ptr %1, ptr %9, align 8
    #dbg_declare(ptr %9, !1009, !DIExpression(), !1010)
  store ptr %2, ptr %10, align 8
    #dbg_declare(ptr %10, !1011, !DIExpression(), !1012)
  store i32 %3, ptr %11, align 4
    #dbg_declare(ptr %11, !1013, !DIExpression(), !1014)
  store ptr %4, ptr %12, align 8
    #dbg_declare(ptr %12, !1015, !DIExpression(), !1016)
  store ptr %5, ptr %13, align 8
    #dbg_declare(ptr %13, !1017, !DIExpression(), !1018)
  store i32 %6, ptr %14, align 4
    #dbg_declare(ptr %14, !1019, !DIExpression(), !1020)
    #dbg_declare(ptr %15, !1021, !DIExpression(), !1022)
  %20 = load ptr, ptr %8, align 8, !dbg !1023
  %21 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %20, i32 0, i32 53, !dbg !1024
  %22 = load ptr, ptr %21, align 8, !dbg !1024
  store ptr %22, ptr %15, align 8, !dbg !1022
    #dbg_declare(ptr %16, !1025, !DIExpression(), !1026)
    #dbg_declare(ptr %17, !1027, !DIExpression(), !1028)
    #dbg_declare(ptr %18, !1029, !DIExpression(), !1030)
    #dbg_declare(ptr %19, !1031, !DIExpression(), !1032)
  br label %23, !dbg !1033

23:                                               ; preds = %207, %7
  %24 = load ptr, ptr %10, align 8, !dbg !1034
  %25 = load i32, ptr %24, align 4, !dbg !1035
  %26 = load i32, ptr %11, align 4, !dbg !1036
  %27 = icmp ult i32 %25, %26, !dbg !1037
  br i1 %27, label %28, label %33, !dbg !1038

28:                                               ; preds = %23
  %29 = load ptr, ptr %13, align 8, !dbg !1039
  %30 = load i32, ptr %29, align 4, !dbg !1040
  %31 = load i32, ptr %14, align 4, !dbg !1041
  %32 = icmp ult i32 %30, %31, !dbg !1042
  br label %33

33:                                               ; preds = %28, %23
  %34 = phi i1 [ false, %23 ], [ %32, %28 ], !dbg !1043
  br i1 %34, label %35, label %208, !dbg !1033

35:                                               ; preds = %33
  %36 = load i32, ptr %11, align 4, !dbg !1044
  %37 = load ptr, ptr %10, align 8, !dbg !1046
  %38 = load i32, ptr %37, align 4, !dbg !1047
  %39 = sub i32 %36, %38, !dbg !1048
  store i32 %39, ptr %18, align 4, !dbg !1049
  %40 = load ptr, ptr %8, align 8, !dbg !1050
  %41 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %40, i32 0, i32 39, !dbg !1051
  %42 = load i32, ptr %41, align 4, !dbg !1051
  %43 = load ptr, ptr %15, align 8, !dbg !1052
  %44 = getelementptr inbounds nuw %struct.my_prep_controller, ptr %43, i32 0, i32 3, !dbg !1053
  %45 = load i32, ptr %44, align 4, !dbg !1053
  %46 = sub nsw i32 %42, %45, !dbg !1054
  store i32 %46, ptr %16, align 4, !dbg !1055
  %47 = load i32, ptr %16, align 4, !dbg !1056
  %48 = load i32, ptr %18, align 4, !dbg !1056
  %49 = icmp ult i32 %47, %48, !dbg !1056
  br i1 %49, label %50, label %52, !dbg !1056

50:                                               ; preds = %35
  %51 = load i32, ptr %16, align 4, !dbg !1056
  br label %54, !dbg !1056

52:                                               ; preds = %35
  %53 = load i32, ptr %18, align 4, !dbg !1056
  br label %54, !dbg !1056

54:                                               ; preds = %52, %50
  %55 = phi i32 [ %51, %50 ], [ %53, %52 ], !dbg !1056
  store i32 %55, ptr %16, align 4, !dbg !1057
  %56 = load ptr, ptr %8, align 8, !dbg !1058
  %57 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %56, i32 0, i32 56, !dbg !1059
  %58 = load ptr, ptr %57, align 8, !dbg !1059
  %59 = getelementptr inbounds nuw %struct.jpeg_color_converter, ptr %58, i32 0, i32 1, !dbg !1060
  %60 = load ptr, ptr %59, align 8, !dbg !1060
  %61 = load ptr, ptr %8, align 8, !dbg !1061
  %62 = load ptr, ptr %9, align 8, !dbg !1062
  %63 = load ptr, ptr %10, align 8, !dbg !1063
  %64 = load i32, ptr %63, align 4, !dbg !1064
  %65 = zext i32 %64 to i64, !dbg !1065
  %66 = getelementptr inbounds nuw ptr, ptr %62, i64 %65, !dbg !1065
  %67 = load ptr, ptr %15, align 8, !dbg !1066
  %68 = getelementptr inbounds nuw %struct.my_prep_controller, ptr %67, i32 0, i32 1, !dbg !1067
  %69 = getelementptr inbounds [10 x ptr], ptr %68, i64 0, i64 0, !dbg !1066
  %70 = load ptr, ptr %15, align 8, !dbg !1068
  %71 = getelementptr inbounds nuw %struct.my_prep_controller, ptr %70, i32 0, i32 3, !dbg !1069
  %72 = load i32, ptr %71, align 4, !dbg !1069
  %73 = load i32, ptr %16, align 4, !dbg !1070
  call void %60(ptr noundef %61, ptr noundef %66, ptr noundef %69, i32 noundef %72, i32 noundef %73), !dbg !1071
  %74 = load i32, ptr %16, align 4, !dbg !1072
  %75 = load ptr, ptr %10, align 8, !dbg !1073
  %76 = load i32, ptr %75, align 4, !dbg !1074
  %77 = add i32 %76, %74, !dbg !1074
  store i32 %77, ptr %75, align 4, !dbg !1074
  %78 = load i32, ptr %16, align 4, !dbg !1075
  %79 = load ptr, ptr %15, align 8, !dbg !1076
  %80 = getelementptr inbounds nuw %struct.my_prep_controller, ptr %79, i32 0, i32 3, !dbg !1077
  %81 = load i32, ptr %80, align 4, !dbg !1078
  %82 = add nsw i32 %81, %78, !dbg !1078
  store i32 %82, ptr %80, align 4, !dbg !1078
  %83 = load i32, ptr %16, align 4, !dbg !1079
  %84 = load ptr, ptr %15, align 8, !dbg !1080
  %85 = getelementptr inbounds nuw %struct.my_prep_controller, ptr %84, i32 0, i32 2, !dbg !1081
  %86 = load i32, ptr %85, align 8, !dbg !1082
  %87 = sub i32 %86, %83, !dbg !1082
  store i32 %87, ptr %85, align 8, !dbg !1082
  %88 = load ptr, ptr %15, align 8, !dbg !1083
  %89 = getelementptr inbounds nuw %struct.my_prep_controller, ptr %88, i32 0, i32 2, !dbg !1085
  %90 = load i32, ptr %89, align 8, !dbg !1085
  %91 = icmp eq i32 %90, 0, !dbg !1086
  br i1 %91, label %92, label %132, !dbg !1087

92:                                               ; preds = %54
  %93 = load ptr, ptr %15, align 8, !dbg !1088
  %94 = getelementptr inbounds nuw %struct.my_prep_controller, ptr %93, i32 0, i32 3, !dbg !1089
  %95 = load i32, ptr %94, align 4, !dbg !1089
  %96 = load ptr, ptr %8, align 8, !dbg !1090
  %97 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %96, i32 0, i32 39, !dbg !1091
  %98 = load i32, ptr %97, align 4, !dbg !1091
  %99 = icmp slt i32 %95, %98, !dbg !1092
  br i1 %99, label %100, label %132, !dbg !1087

100:                                              ; preds = %92
  store i32 0, ptr %17, align 4, !dbg !1093
  br label %101, !dbg !1096

101:                                              ; preds = %123, %100
  %102 = load i32, ptr %17, align 4, !dbg !1097
  %103 = load ptr, ptr %8, align 8, !dbg !1099
  %104 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %103, i32 0, i32 12, !dbg !1100
  %105 = load i32, ptr %104, align 4, !dbg !1100
  %106 = icmp slt i32 %102, %105, !dbg !1101
  br i1 %106, label %107, label %126, !dbg !1102

107:                                              ; preds = %101
  %108 = load ptr, ptr %15, align 8, !dbg !1103
  %109 = getelementptr inbounds nuw %struct.my_prep_controller, ptr %108, i32 0, i32 1, !dbg !1105
  %110 = load i32, ptr %17, align 4, !dbg !1106
  %111 = sext i32 %110 to i64, !dbg !1103
  %112 = getelementptr inbounds [10 x ptr], ptr %109, i64 0, i64 %111, !dbg !1103
  %113 = load ptr, ptr %112, align 8, !dbg !1103
  %114 = load ptr, ptr %8, align 8, !dbg !1107
  %115 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %114, i32 0, i32 6, !dbg !1108
  %116 = load i32, ptr %115, align 8, !dbg !1108
  %117 = load ptr, ptr %15, align 8, !dbg !1109
  %118 = getelementptr inbounds nuw %struct.my_prep_controller, ptr %117, i32 0, i32 3, !dbg !1110
  %119 = load i32, ptr %118, align 4, !dbg !1110
  %120 = load ptr, ptr %8, align 8, !dbg !1111
  %121 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %120, i32 0, i32 39, !dbg !1112
  %122 = load i32, ptr %121, align 4, !dbg !1112
  call void @expand_bottom_edge(ptr noundef %113, i32 noundef %116, i32 noundef %119, i32 noundef %122), !dbg !1113
  br label %123, !dbg !1114

123:                                              ; preds = %107
  %124 = load i32, ptr %17, align 4, !dbg !1115
  %125 = add nsw i32 %124, 1, !dbg !1115
  store i32 %125, ptr %17, align 4, !dbg !1115
  br label %101, !dbg !1116, !llvm.loop !1117

126:                                              ; preds = %101
  %127 = load ptr, ptr %8, align 8, !dbg !1119
  %128 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %127, i32 0, i32 39, !dbg !1120
  %129 = load i32, ptr %128, align 4, !dbg !1120
  %130 = load ptr, ptr %15, align 8, !dbg !1121
  %131 = getelementptr inbounds nuw %struct.my_prep_controller, ptr %130, i32 0, i32 3, !dbg !1122
  store i32 %129, ptr %131, align 4, !dbg !1123
  br label %132, !dbg !1124

132:                                              ; preds = %126, %92, %54
  %133 = load ptr, ptr %15, align 8, !dbg !1125
  %134 = getelementptr inbounds nuw %struct.my_prep_controller, ptr %133, i32 0, i32 3, !dbg !1127
  %135 = load i32, ptr %134, align 4, !dbg !1127
  %136 = load ptr, ptr %8, align 8, !dbg !1128
  %137 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %136, i32 0, i32 39, !dbg !1129
  %138 = load i32, ptr %137, align 4, !dbg !1129
  %139 = icmp eq i32 %135, %138, !dbg !1130
  br i1 %139, label %140, label %158, !dbg !1130

140:                                              ; preds = %132
  %141 = load ptr, ptr %8, align 8, !dbg !1131
  %142 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %141, i32 0, i32 57, !dbg !1133
  %143 = load ptr, ptr %142, align 8, !dbg !1133
  %144 = getelementptr inbounds nuw %struct.jpeg_downsampler, ptr %143, i32 0, i32 1, !dbg !1134
  %145 = load ptr, ptr %144, align 8, !dbg !1134
  %146 = load ptr, ptr %8, align 8, !dbg !1135
  %147 = load ptr, ptr %15, align 8, !dbg !1136
  %148 = getelementptr inbounds nuw %struct.my_prep_controller, ptr %147, i32 0, i32 1, !dbg !1137
  %149 = getelementptr inbounds [10 x ptr], ptr %148, i64 0, i64 0, !dbg !1136
  %150 = load ptr, ptr %12, align 8, !dbg !1138
  %151 = load ptr, ptr %13, align 8, !dbg !1139
  %152 = load i32, ptr %151, align 4, !dbg !1140
  call void %145(ptr noundef %146, ptr noundef %149, i32 noundef 0, ptr noundef %150, i32 noundef %152), !dbg !1141
  %153 = load ptr, ptr %15, align 8, !dbg !1142
  %154 = getelementptr inbounds nuw %struct.my_prep_controller, ptr %153, i32 0, i32 3, !dbg !1143
  store i32 0, ptr %154, align 4, !dbg !1144
  %155 = load ptr, ptr %13, align 8, !dbg !1145
  %156 = load i32, ptr %155, align 4, !dbg !1146
  %157 = add i32 %156, 1, !dbg !1146
  store i32 %157, ptr %155, align 4, !dbg !1146
  br label %158, !dbg !1147

158:                                              ; preds = %140, %132
  %159 = load ptr, ptr %15, align 8, !dbg !1148
  %160 = getelementptr inbounds nuw %struct.my_prep_controller, ptr %159, i32 0, i32 2, !dbg !1150
  %161 = load i32, ptr %160, align 8, !dbg !1150
  %162 = icmp eq i32 %161, 0, !dbg !1151
  br i1 %162, label %163, label %207, !dbg !1152

163:                                              ; preds = %158
  %164 = load ptr, ptr %13, align 8, !dbg !1153
  %165 = load i32, ptr %164, align 4, !dbg !1154
  %166 = load i32, ptr %14, align 4, !dbg !1155
  %167 = icmp ult i32 %165, %166, !dbg !1156
  br i1 %167, label %168, label %207, !dbg !1152

168:                                              ; preds = %163
  store i32 0, ptr %17, align 4, !dbg !1157
  %169 = load ptr, ptr %8, align 8, !dbg !1160
  %170 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %169, i32 0, i32 14, !dbg !1161
  %171 = load ptr, ptr %170, align 8, !dbg !1161
  store ptr %171, ptr %19, align 8, !dbg !1162
  br label %172, !dbg !1163

172:                                              ; preds = %199, %168
  %173 = load i32, ptr %17, align 4, !dbg !1164
  %174 = load ptr, ptr %8, align 8, !dbg !1166
  %175 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %174, i32 0, i32 12, !dbg !1167
  %176 = load i32, ptr %175, align 4, !dbg !1167
  %177 = icmp slt i32 %173, %176, !dbg !1168
  br i1 %177, label %178, label %204, !dbg !1169

178:                                              ; preds = %172
  %179 = load ptr, ptr %12, align 8, !dbg !1170
  %180 = load i32, ptr %17, align 4, !dbg !1172
  %181 = sext i32 %180 to i64, !dbg !1170
  %182 = getelementptr inbounds ptr, ptr %179, i64 %181, !dbg !1170
  %183 = load ptr, ptr %182, align 8, !dbg !1170
  %184 = load ptr, ptr %19, align 8, !dbg !1173
  %185 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %184, i32 0, i32 7, !dbg !1174
  %186 = load i32, ptr %185, align 4, !dbg !1174
  %187 = mul i32 %186, 8, !dbg !1175
  %188 = load ptr, ptr %13, align 8, !dbg !1176
  %189 = load i32, ptr %188, align 4, !dbg !1177
  %190 = load ptr, ptr %19, align 8, !dbg !1178
  %191 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %190, i32 0, i32 3, !dbg !1179
  %192 = load i32, ptr %191, align 4, !dbg !1179
  %193 = mul i32 %189, %192, !dbg !1180
  %194 = load i32, ptr %14, align 4, !dbg !1181
  %195 = load ptr, ptr %19, align 8, !dbg !1182
  %196 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %195, i32 0, i32 3, !dbg !1183
  %197 = load i32, ptr %196, align 4, !dbg !1183
  %198 = mul i32 %194, %197, !dbg !1184
  call void @expand_bottom_edge(ptr noundef %183, i32 noundef %187, i32 noundef %193, i32 noundef %198), !dbg !1185
  br label %199, !dbg !1186

199:                                              ; preds = %178
  %200 = load i32, ptr %17, align 4, !dbg !1187
  %201 = add nsw i32 %200, 1, !dbg !1187
  store i32 %201, ptr %17, align 4, !dbg !1187
  %202 = load ptr, ptr %19, align 8, !dbg !1188
  %203 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %202, i32 1, !dbg !1188
  store ptr %203, ptr %19, align 8, !dbg !1188
  br label %172, !dbg !1189, !llvm.loop !1190

204:                                              ; preds = %172
  %205 = load i32, ptr %14, align 4, !dbg !1192
  %206 = load ptr, ptr %13, align 8, !dbg !1193
  store i32 %205, ptr %206, align 4, !dbg !1194
  br label %208, !dbg !1195

207:                                              ; preds = %163, %158
  br label %23, !dbg !1033, !llvm.loop !1196

208:                                              ; preds = %204, %33
  ret void, !dbg !1198
}

declare void @jcopy_sample_rows(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @expand_bottom_edge(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 !dbg !1199 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
    #dbg_declare(ptr %5, !1202, !DIExpression(), !1203)
  store i32 %1, ptr %6, align 4
    #dbg_declare(ptr %6, !1204, !DIExpression(), !1205)
  store i32 %2, ptr %7, align 4
    #dbg_declare(ptr %7, !1206, !DIExpression(), !1207)
  store i32 %3, ptr %8, align 4
    #dbg_declare(ptr %8, !1208, !DIExpression(), !1209)
    #dbg_declare(ptr %9, !1210, !DIExpression(), !1211)
  %10 = load i32, ptr %7, align 4, !dbg !1212
  store i32 %10, ptr %9, align 4, !dbg !1214
  br label %11, !dbg !1215

11:                                               ; preds = %22, %4
  %12 = load i32, ptr %9, align 4, !dbg !1216
  %13 = load i32, ptr %8, align 4, !dbg !1218
  %14 = icmp slt i32 %12, %13, !dbg !1219
  br i1 %14, label %15, label %25, !dbg !1220

15:                                               ; preds = %11
  %16 = load ptr, ptr %5, align 8, !dbg !1221
  %17 = load i32, ptr %7, align 4, !dbg !1223
  %18 = sub nsw i32 %17, 1, !dbg !1224
  %19 = load ptr, ptr %5, align 8, !dbg !1225
  %20 = load i32, ptr %9, align 4, !dbg !1226
  %21 = load i32, ptr %6, align 4, !dbg !1227
  call void @jcopy_sample_rows(ptr noundef %16, i32 noundef %18, ptr noundef %19, i32 noundef %20, i32 noundef 1, i32 noundef %21), !dbg !1228
  br label %22, !dbg !1229

22:                                               ; preds = %15
  %23 = load i32, ptr %9, align 4, !dbg !1230
  %24 = add nsw i32 %23, 1, !dbg !1230
  store i32 %24, ptr %9, align 4, !dbg !1230
  br label %11, !dbg !1231, !llvm.loop !1232

25:                                               ; preds = %11
  ret void, !dbg !1234
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!534, !535, !536, !537, !538, !539, !540}
!llvm.ident = !{!541}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !149, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jcprepct.c", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "a7e4032663d3d01ac2b7d5aae115c58c")
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
!149 = !{!150, !276, !208, !453, !223, !189, !166, !216, !207, !532}
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "j_common_ptr", file: !4, line: 248, baseType: !151)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_common_struct", file: !4, line: 240, size: 256, elements: !153)
!153 = !{!154, !199, !265, !274, !275}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !152, file: !4, line: 241, baseType: !155, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_error_mgr", file: !4, line: 618, size: 1344, elements: !157)
!157 = !{!158, !162, !167, !168, !174, !175, !176, !187, !188, !190, !195, !196, !197, !198}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "error_exit", scope: !156, file: !4, line: 620, baseType: !159, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = !DISubroutineType(types: !161)
!161 = !{null, !150}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "emit_message", scope: !156, file: !4, line: 622, baseType: !163, size: 64, offset: 64)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = !DISubroutineType(types: !165)
!165 = !{null, !150, !166}
!166 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "output_message", scope: !156, file: !4, line: 624, baseType: !159, size: 64, offset: 128)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "format_message", scope: !156, file: !4, line: 626, baseType: !169, size: 64, offset: 192)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = !DISubroutineType(types: !171)
!171 = !{null, !150, !172}
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "reset_error_mgr", scope: !156, file: !4, line: 629, baseType: !159, size: 64, offset: 256)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "msg_code", scope: !156, file: !4, line: 634, baseType: !166, size: 32, offset: 320)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "msg_parm", scope: !156, file: !4, line: 639, baseType: !177, size: 640, offset: 352)
!177 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !156, file: !4, line: 636, size: 640, elements: !178)
!178 = !{!179, !183}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !177, file: !4, line: 637, baseType: !180, size: 256)
!180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 256, elements: !181)
!181 = !{!182}
!182 = !DISubrange(count: 8)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !177, file: !4, line: 638, baseType: !184, size: 640)
!184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 640, elements: !185)
!185 = !{!186}
!186 = !DISubrange(count: 80)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "trace_level", scope: !156, file: !4, line: 643, baseType: !166, size: 32, offset: 992)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "num_warnings", scope: !156, file: !4, line: 651, baseType: !189, size: 64, offset: 1024)
!189 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "jpeg_message_table", scope: !156, file: !4, line: 663, baseType: !191, size: 64, offset: 1088)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !193)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !173)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "last_jpeg_message", scope: !156, file: !4, line: 664, baseType: !166, size: 32, offset: 1152)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "addon_message_table", scope: !156, file: !4, line: 668, baseType: !191, size: 64, offset: 1216)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "first_addon_message", scope: !156, file: !4, line: 669, baseType: !166, size: 32, offset: 1280)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "last_addon_message", scope: !156, file: !4, line: 670, baseType: !166, size: 32, offset: 1312)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !152, file: !4, line: 241, baseType: !200, size: 64, offset: 64)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_memory_mgr", file: !4, line: 731, size: 768, elements: !202)
!202 = !{!203, !211, !212, !224, !238, !246, !253, !254, !258, !262, !263, !264}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_small", scope: !201, file: !4, line: 733, baseType: !204, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DISubroutineType(types: !206)
!206 = !{!207, !150, !166, !208}
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !209, line: 18, baseType: !210)
!209 = !DIFile(filename: "/usr/local/lib/clang/20/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!210 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_large", scope: !201, file: !4, line: 735, baseType: !204, size: 64, offset: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_sarray", scope: !201, file: !4, line: 737, baseType: !213, size: 64, offset: 128)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DISubroutineType(types: !215)
!215 = !{!216, !150, !166, !223, !223}
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPARRAY", file: !4, line: 67, baseType: !217)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPROW", file: !4, line: 66, baseType: !219)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPLE", file: !221, line: 59, baseType: !222)
!221 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jmorecfg.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "56a0eda58fafa6bdd5498f702a998c09")
!222 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "JDIMENSION", file: !221, line: 171, baseType: !5)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_barray", scope: !201, file: !4, line: 740, baseType: !225, size: 64, offset: 192)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = !DISubroutineType(types: !227)
!227 = !{!228, !150, !166, !223, !223}
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "JBLOCKARRAY", file: !4, line: 72, baseType: !229)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "JBLOCKROW", file: !4, line: 71, baseType: !231)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "JBLOCK", file: !4, line: 70, baseType: !233)
!233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !234, size: 1024, elements: !236)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "JCOEF", file: !221, line: 99, baseType: !235)
!235 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!236 = !{!237}
!237 = !DISubrange(count: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "request_virt_sarray", scope: !201, file: !4, line: 743, baseType: !239, size: 64, offset: 256)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = !DISubroutineType(types: !241)
!241 = !{!242, !150, !166, !245, !223, !223, !223}
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "jvirt_sarray_ptr", file: !4, line: 727, baseType: !243)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = !DICompositeType(tag: DW_TAG_structure_type, name: "jvirt_sarray_control", file: !4, line: 727, flags: DIFlagFwdDecl)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "boolean", file: !221, line: 227, baseType: !166)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "request_virt_barray", scope: !201, file: !4, line: 749, baseType: !247, size: 64, offset: 320)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = !DISubroutineType(types: !249)
!249 = !{!250, !150, !166, !245, !223, !223, !223}
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "jvirt_barray_ptr", file: !4, line: 728, baseType: !251)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = !DICompositeType(tag: DW_TAG_structure_type, name: "jvirt_barray_control", file: !4, line: 728, flags: DIFlagFwdDecl)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "realize_virt_arrays", scope: !201, file: !4, line: 755, baseType: !159, size: 64, offset: 384)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "access_virt_sarray", scope: !201, file: !4, line: 756, baseType: !255, size: 64, offset: 448)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = !DISubroutineType(types: !257)
!257 = !{!216, !150, !242, !223, !223, !245}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "access_virt_barray", scope: !201, file: !4, line: 761, baseType: !259, size: 64, offset: 512)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = !DISubroutineType(types: !261)
!261 = !{!228, !150, !250, !223, !223, !245}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "free_pool", scope: !201, file: !4, line: 766, baseType: !163, size: 64, offset: 576)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "self_destruct", scope: !201, file: !4, line: 767, baseType: !159, size: 64, offset: 640)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "max_memory_to_use", scope: !201, file: !4, line: 774, baseType: !189, size: 64, offset: 704)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "progress", scope: !152, file: !4, line: 241, baseType: !266, size: 64, offset: 128)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_progress_mgr", file: !4, line: 676, size: 256, elements: !268)
!268 = !{!269, !270, !271, !272, !273}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "progress_monitor", scope: !267, file: !4, line: 677, baseType: !159, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "pass_counter", scope: !267, file: !4, line: 679, baseType: !189, size: 64, offset: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "pass_limit", scope: !267, file: !4, line: 680, baseType: !189, size: 64, offset: 128)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "completed_passes", scope: !267, file: !4, line: 681, baseType: !166, size: 32, offset: 192)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "total_passes", scope: !267, file: !4, line: 682, baseType: !166, size: 32, offset: 224)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "is_decompressor", scope: !152, file: !4, line: 241, baseType: !245, size: 32, offset: 192)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "global_state", scope: !152, file: !4, line: 241, baseType: !166, size: 32, offset: 224)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "my_prep_ptr", file: !1, line: 70, baseType: !277)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "my_prep_controller", file: !1, line: 68, baseType: !279)
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 53, size: 896, elements: !280)
!280 = !{!281, !526, !528, !529, !530, !531}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "pub", scope: !279, file: !1, line: 54, baseType: !282, size: 128)
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_c_prep_controller", file: !19, line: 64, size: 128, elements: !283)
!283 = !{!284, !522}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !282, file: !19, line: 65, baseType: !285, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = !DISubroutineType(types: !287)
!287 = !{null, !288, !521}
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "j_compress_ptr", file: !4, line: 249, baseType: !289)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_compress_struct", file: !4, line: 255, size: 3968, elements: !291)
!291 = !{!292, !293, !294, !295, !296, !297, !314, !315, !316, !317, !319, !321, !322, !323, !324, !359, !363, !379, !380, !384, !385, !386, !387, !400, !401, !402, !403, !404, !405, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !422, !423, !424, !425, !429, !430, !431, !432, !433, !442, !452, !454, !465, !480, !489, !499, !508}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !290, file: !4, line: 256, baseType: !155, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !290, file: !4, line: 256, baseType: !200, size: 64, offset: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "progress", scope: !290, file: !4, line: 256, baseType: !266, size: 64, offset: 128)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "is_decompressor", scope: !290, file: !4, line: 256, baseType: !245, size: 32, offset: 192)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "global_state", scope: !290, file: !4, line: 256, baseType: !166, size: 32, offset: 224)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !290, file: !4, line: 259, baseType: !298, size: 64, offset: 256)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_destination_mgr", file: !4, line: 688, size: 320, elements: !300)
!300 = !{!301, !304, !305, !309, !313}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "next_output_byte", scope: !299, file: !4, line: 689, baseType: !302, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "JOCTET", file: !221, line: 110, baseType: !222)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "free_in_buffer", scope: !299, file: !4, line: 690, baseType: !208, size: 64, offset: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "init_destination", scope: !299, file: !4, line: 692, baseType: !306, size: 64, offset: 128)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = !DISubroutineType(types: !308)
!308 = !{null, !288}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "empty_output_buffer", scope: !299, file: !4, line: 693, baseType: !310, size: 64, offset: 192)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = !DISubroutineType(types: !312)
!312 = !{!245, !288}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "term_destination", scope: !299, file: !4, line: 694, baseType: !306, size: 64, offset: 256)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "image_width", scope: !290, file: !4, line: 266, baseType: !223, size: 32, offset: 320)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "image_height", scope: !290, file: !4, line: 267, baseType: !223, size: 32, offset: 352)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "input_components", scope: !290, file: !4, line: 268, baseType: !166, size: 32, offset: 384)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "in_color_space", scope: !290, file: !4, line: 269, baseType: !318, size: 32, offset: 416)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_COLOR_SPACE", file: !4, line: 201, baseType: !3)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "input_gamma", scope: !290, file: !4, line: 271, baseType: !320, size: 64, offset: 448)
!320 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "data_precision", scope: !290, file: !4, line: 281, baseType: !166, size: 32, offset: 512)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "num_components", scope: !290, file: !4, line: 283, baseType: !166, size: 32, offset: 544)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "jpeg_color_space", scope: !290, file: !4, line: 284, baseType: !318, size: 32, offset: 576)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "comp_info", scope: !290, file: !4, line: 286, baseType: !325, size: 64, offset: 640)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "jpeg_component_info", file: !4, line: 179, baseType: !327)
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 116, size: 768, elements: !328)
!328 = !{!329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !358}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "component_id", scope: !327, file: !4, line: 120, baseType: !166, size: 32)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "component_index", scope: !327, file: !4, line: 121, baseType: !166, size: 32, offset: 32)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "h_samp_factor", scope: !327, file: !4, line: 122, baseType: !166, size: 32, offset: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "v_samp_factor", scope: !327, file: !4, line: 123, baseType: !166, size: 32, offset: 96)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "quant_tbl_no", scope: !327, file: !4, line: 124, baseType: !166, size: 32, offset: 128)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "dc_tbl_no", scope: !327, file: !4, line: 129, baseType: !166, size: 32, offset: 160)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tbl_no", scope: !327, file: !4, line: 130, baseType: !166, size: 32, offset: 192)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "width_in_blocks", scope: !327, file: !4, line: 139, baseType: !223, size: 32, offset: 224)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "height_in_blocks", scope: !327, file: !4, line: 140, baseType: !223, size: 32, offset: 256)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "DCT_scaled_size", scope: !327, file: !4, line: 147, baseType: !166, size: 32, offset: 288)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "downsampled_width", scope: !327, file: !4, line: 154, baseType: !223, size: 32, offset: 320)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "downsampled_height", scope: !327, file: !4, line: 155, baseType: !223, size: 32, offset: 352)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "component_needed", scope: !327, file: !4, line: 160, baseType: !245, size: 32, offset: 384)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_width", scope: !327, file: !4, line: 164, baseType: !166, size: 32, offset: 416)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_height", scope: !327, file: !4, line: 165, baseType: !166, size: 32, offset: 448)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_blocks", scope: !327, file: !4, line: 166, baseType: !166, size: 32, offset: 480)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_sample_width", scope: !327, file: !4, line: 167, baseType: !166, size: 32, offset: 512)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "last_col_width", scope: !327, file: !4, line: 168, baseType: !166, size: 32, offset: 544)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "last_row_height", scope: !327, file: !4, line: 169, baseType: !166, size: 32, offset: 576)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "quant_table", scope: !327, file: !4, line: 175, baseType: !349, size: 64, offset: 640)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "JQUANT_TBL", file: !4, line: 95, baseType: !351)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 83, size: 1056, elements: !352)
!352 = !{!353, !357}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "quantval", scope: !351, file: !4, line: 88, baseType: !354, size: 1024)
!354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !355, size: 1024, elements: !236)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT16", file: !221, line: 147, baseType: !356)
!356 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "sent_table", scope: !351, file: !4, line: 94, baseType: !245, size: 32, offset: 1024)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "dct_table", scope: !327, file: !4, line: 178, baseType: !207, size: 64, offset: 704)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "quant_tbl_ptrs", scope: !290, file: !4, line: 289, baseType: !360, size: 256, offset: 704)
!360 = !DICompositeType(tag: DW_TAG_array_type, baseType: !349, size: 256, elements: !361)
!361 = !{!362}
!362 = !DISubrange(count: 4)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "dc_huff_tbl_ptrs", scope: !290, file: !4, line: 292, baseType: !364, size: 256, offset: 960)
!364 = !DICompositeType(tag: DW_TAG_array_type, baseType: !365, size: 256, elements: !361)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "JHUFF_TBL", file: !4, line: 111, baseType: !367)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 100, size: 2240, elements: !368)
!368 = !{!369, !374, !378}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !367, file: !4, line: 102, baseType: !370, size: 136)
!370 = !DICompositeType(tag: DW_TAG_array_type, baseType: !371, size: 136, elements: !372)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT8", file: !221, line: 135, baseType: !222)
!372 = !{!373}
!373 = !DISubrange(count: 17)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "huffval", scope: !367, file: !4, line: 104, baseType: !375, size: 2048, offset: 136)
!375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !371, size: 2048, elements: !376)
!376 = !{!377}
!377 = !DISubrange(count: 256)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "sent_table", scope: !367, file: !4, line: 110, baseType: !245, size: 32, offset: 2208)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "ac_huff_tbl_ptrs", scope: !290, file: !4, line: 293, baseType: !364, size: 256, offset: 1216)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "arith_dc_L", scope: !290, file: !4, line: 296, baseType: !381, size: 128, offset: 1472)
!381 = !DICompositeType(tag: DW_TAG_array_type, baseType: !371, size: 128, elements: !382)
!382 = !{!383}
!383 = !DISubrange(count: 16)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "arith_dc_U", scope: !290, file: !4, line: 297, baseType: !381, size: 128, offset: 1600)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "arith_ac_K", scope: !290, file: !4, line: 298, baseType: !381, size: 128, offset: 1728)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "num_scans", scope: !290, file: !4, line: 300, baseType: !166, size: 32, offset: 1856)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "scan_info", scope: !290, file: !4, line: 301, baseType: !388, size: 64, offset: 1920)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !390)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "jpeg_scan_info", file: !4, line: 189, baseType: !391)
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 184, size: 288, elements: !392)
!392 = !{!393, !394, !396, !397, !398, !399}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "comps_in_scan", scope: !391, file: !4, line: 185, baseType: !166, size: 32)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "component_index", scope: !391, file: !4, line: 186, baseType: !395, size: 128, offset: 32)
!395 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 128, elements: !361)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "Ss", scope: !391, file: !4, line: 187, baseType: !166, size: 32, offset: 160)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "Se", scope: !391, file: !4, line: 187, baseType: !166, size: 32, offset: 192)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "Ah", scope: !391, file: !4, line: 188, baseType: !166, size: 32, offset: 224)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "Al", scope: !391, file: !4, line: 188, baseType: !166, size: 32, offset: 256)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "raw_data_in", scope: !290, file: !4, line: 307, baseType: !245, size: 32, offset: 1984)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "arith_code", scope: !290, file: !4, line: 308, baseType: !245, size: 32, offset: 2016)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_coding", scope: !290, file: !4, line: 309, baseType: !245, size: 32, offset: 2048)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "CCIR601_sampling", scope: !290, file: !4, line: 310, baseType: !245, size: 32, offset: 2080)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "smoothing_factor", scope: !290, file: !4, line: 311, baseType: !166, size: 32, offset: 2112)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "dct_method", scope: !290, file: !4, line: 312, baseType: !406, size: 32, offset: 2144)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_DCT_METHOD", file: !4, line: 209, baseType: !13)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "restart_interval", scope: !290, file: !4, line: 319, baseType: !5, size: 32, offset: 2176)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "restart_in_rows", scope: !290, file: !4, line: 320, baseType: !166, size: 32, offset: 2208)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "write_JFIF_header", scope: !290, file: !4, line: 324, baseType: !245, size: 32, offset: 2240)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "density_unit", scope: !290, file: !4, line: 329, baseType: !371, size: 8, offset: 2272)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "X_density", scope: !290, file: !4, line: 330, baseType: !355, size: 16, offset: 2288)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "Y_density", scope: !290, file: !4, line: 331, baseType: !355, size: 16, offset: 2304)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "write_Adobe_marker", scope: !290, file: !4, line: 332, baseType: !245, size: 32, offset: 2336)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "next_scanline", scope: !290, file: !4, line: 339, baseType: !223, size: 32, offset: 2368)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "progressive_mode", scope: !290, file: !4, line: 348, baseType: !245, size: 32, offset: 2400)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "max_h_samp_factor", scope: !290, file: !4, line: 349, baseType: !166, size: 32, offset: 2432)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "max_v_samp_factor", scope: !290, file: !4, line: 350, baseType: !166, size: 32, offset: 2464)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "total_iMCU_rows", scope: !290, file: !4, line: 352, baseType: !223, size: 32, offset: 2496)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "comps_in_scan", scope: !290, file: !4, line: 363, baseType: !166, size: 32, offset: 2528)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "cur_comp_info", scope: !290, file: !4, line: 364, baseType: !421, size: 256, offset: 2560)
!421 = !DICompositeType(tag: DW_TAG_array_type, baseType: !325, size: 256, elements: !361)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "MCUs_per_row", scope: !290, file: !4, line: 367, baseType: !223, size: 32, offset: 2816)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_rows_in_scan", scope: !290, file: !4, line: 368, baseType: !223, size: 32, offset: 2848)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "blocks_in_MCU", scope: !290, file: !4, line: 370, baseType: !166, size: 32, offset: 2880)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_membership", scope: !290, file: !4, line: 371, baseType: !426, size: 320, offset: 2912)
!426 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 320, elements: !427)
!427 = !{!428}
!428 = !DISubrange(count: 10)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "Ss", scope: !290, file: !4, line: 375, baseType: !166, size: 32, offset: 3232)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "Se", scope: !290, file: !4, line: 375, baseType: !166, size: 32, offset: 3264)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "Ah", scope: !290, file: !4, line: 375, baseType: !166, size: 32, offset: 3296)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "Al", scope: !290, file: !4, line: 375, baseType: !166, size: 32, offset: 3328)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !290, file: !4, line: 380, baseType: !434, size: 64, offset: 3392)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_comp_master", file: !19, line: 45, size: 256, elements: !436)
!436 = !{!437, !438, !439, !440, !441}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_for_pass", scope: !435, file: !19, line: 46, baseType: !306, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "pass_startup", scope: !435, file: !19, line: 47, baseType: !306, size: 64, offset: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "finish_pass", scope: !435, file: !19, line: 48, baseType: !306, size: 64, offset: 128)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "call_pass_startup", scope: !435, file: !19, line: 51, baseType: !245, size: 32, offset: 192)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "is_last_pass", scope: !435, file: !19, line: 52, baseType: !245, size: 32, offset: 224)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "main", scope: !290, file: !4, line: 381, baseType: !443, size: 64, offset: 3456)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_c_main_controller", file: !19, line: 56, size: 128, elements: !445)
!445 = !{!446, !447}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !444, file: !19, line: 57, baseType: !285, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "process_data", scope: !444, file: !19, line: 58, baseType: !448, size: 64, offset: 64)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = !DISubroutineType(types: !450)
!450 = !{null, !288, !216, !451, !223}
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "prep", scope: !290, file: !4, line: 382, baseType: !453, size: 64, offset: 3520)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "coef", scope: !290, file: !4, line: 383, baseType: !455, size: 64, offset: 3584)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_c_coef_controller", file: !19, line: 76, size: 128, elements: !457)
!457 = !{!458, !459}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !456, file: !19, line: 77, baseType: !285, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "compress_data", scope: !456, file: !19, line: 78, baseType: !460, size: 64, offset: 64)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = !DISubroutineType(types: !462)
!462 = !{!245, !288, !463}
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPIMAGE", file: !4, line: 68, baseType: !464)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "marker", scope: !290, file: !4, line: 384, baseType: !466, size: 64, offset: 3648)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_marker_writer", file: !19, line: 120, size: 384, elements: !468)
!468 = !{!469, !475, !476, !477, !478, !479}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "write_any_marker", scope: !467, file: !19, line: 123, baseType: !470, size: 64)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DISubroutineType(types: !472)
!472 = !{null, !288, !166, !473, !5}
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !303)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_header", scope: !467, file: !19, line: 125, baseType: !306, size: 64, offset: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "write_frame_header", scope: !467, file: !19, line: 126, baseType: !306, size: 64, offset: 128)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "write_scan_header", scope: !467, file: !19, line: 127, baseType: !306, size: 64, offset: 192)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_trailer", scope: !467, file: !19, line: 128, baseType: !306, size: 64, offset: 256)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "write_tables_only", scope: !467, file: !19, line: 129, baseType: !306, size: 64, offset: 320)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "cconvert", scope: !290, file: !4, line: 385, baseType: !481, size: 64, offset: 3712)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_color_converter", file: !19, line: 83, size: 128, elements: !483)
!483 = !{!484, !485}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !482, file: !19, line: 84, baseType: !306, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "color_convert", scope: !482, file: !19, line: 85, baseType: !486, size: 64, offset: 64)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = !DISubroutineType(types: !488)
!488 = !{null, !288, !216, !463, !223, !166}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "downsample", scope: !290, file: !4, line: 386, baseType: !490, size: 64, offset: 3776)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_downsampler", file: !19, line: 91, size: 192, elements: !492)
!492 = !{!493, !494, !498}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !491, file: !19, line: 92, baseType: !306, size: 64)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "downsample", scope: !491, file: !19, line: 93, baseType: !495, size: 64, offset: 64)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = !DISubroutineType(types: !497)
!497 = !{null, !288, !463, !223, !463, !223}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "need_context_rows", scope: !491, file: !19, line: 98, baseType: !245, size: 32, offset: 128)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "fdct", scope: !290, file: !4, line: 387, baseType: !500, size: 64, offset: 3840)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_forward_dct", file: !19, line: 102, size: 128, elements: !502)
!502 = !{!503, !504}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !501, file: !19, line: 103, baseType: !306, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "forward_DCT", scope: !501, file: !19, line: 105, baseType: !505, size: 64, offset: 64)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DISubroutineType(types: !507)
!507 = !{null, !288, !325, !216, !230, !223, !223, !223}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "entropy", scope: !290, file: !4, line: 388, baseType: !509, size: 64, offset: 3904)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_entropy_encoder", file: !19, line: 113, size: 192, elements: !511)
!511 = !{!512, !516, !520}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !510, file: !19, line: 114, baseType: !513, size: 64)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = !DISubroutineType(types: !515)
!515 = !{null, !288, !245}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "encode_mcu", scope: !510, file: !19, line: 115, baseType: !517, size: 64, offset: 64)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = !DISubroutineType(types: !519)
!519 = !{!245, !288, !229}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "finish_pass", scope: !510, file: !19, line: 116, baseType: !306, size: 64, offset: 128)
!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_BUF_MODE", file: !19, line: 22, baseType: !18)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "pre_process_data", scope: !282, file: !19, line: 66, baseType: !523, size: 64, offset: 64)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = !DISubroutineType(types: !525)
!525 = !{null, !288, !216, !451, !223, !463, !451, !223}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "color_buf", scope: !279, file: !1, line: 59, baseType: !527, size: 640, offset: 128)
!527 = !DICompositeType(tag: DW_TAG_array_type, baseType: !216, size: 640, elements: !427)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "rows_to_go", scope: !279, file: !1, line: 61, baseType: !223, size: 32, offset: 768)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "next_buf_row", scope: !279, file: !1, line: 62, baseType: !166, size: 32, offset: 800)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "this_row_group", scope: !279, file: !1, line: 65, baseType: !166, size: 32, offset: 832)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "next_buf_stop", scope: !279, file: !1, line: 66, baseType: !166, size: 32, offset: 864)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!534 = !{i32 7, !"Dwarf Version", i32 5}
!535 = !{i32 2, !"Debug Info Version", i32 3}
!536 = !{i32 1, !"wchar_size", i32 4}
!537 = !{i32 8, !"PIC Level", i32 2}
!538 = !{i32 7, !"PIE Level", i32 2}
!539 = !{i32 7, !"uwtable", i32 2}
!540 = !{i32 7, !"frame-pointer", i32 2}
!541 = !{!"clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)"}
!542 = distinct !DISubprogram(name: "jinit_c_prep_controller", scope: !1, file: !1, line: 315, type: !514, scopeLine: 316, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !543)
!543 = !{}
!544 = !DILocalVariable(name: "cinfo", arg: 1, scope: !542, file: !1, line: 315, type: !288)
!545 = !DILocation(line: 315, column: 41, scope: !542)
!546 = !DILocalVariable(name: "need_full_buffer", arg: 2, scope: !542, file: !1, line: 315, type: !245)
!547 = !DILocation(line: 315, column: 56, scope: !542)
!548 = !DILocalVariable(name: "prep", scope: !542, file: !1, line: 317, type: !276)
!549 = !DILocation(line: 317, column: 15, scope: !542)
!550 = !DILocalVariable(name: "ci", scope: !542, file: !1, line: 318, type: !166)
!551 = !DILocation(line: 318, column: 7, scope: !542)
!552 = !DILocalVariable(name: "compptr", scope: !542, file: !1, line: 319, type: !325)
!553 = !DILocation(line: 319, column: 25, scope: !542)
!554 = !DILocation(line: 321, column: 7, scope: !555)
!555 = distinct !DILexicalBlock(scope: !542, file: !1, line: 321, column: 7)
!556 = !DILocation(line: 322, column: 5, scope: !555)
!557 = !DILocation(line: 325, column: 7, scope: !542)
!558 = !DILocation(line: 325, column: 14, scope: !542)
!559 = !DILocation(line: 325, column: 19, scope: !542)
!560 = !DILocation(line: 325, column: 48, scope: !542)
!561 = !DILocation(line: 325, column: 5, scope: !542)
!562 = !DILocation(line: 324, column: 8, scope: !542)
!563 = !DILocation(line: 327, column: 51, scope: !542)
!564 = !DILocation(line: 327, column: 3, scope: !542)
!565 = !DILocation(line: 327, column: 10, scope: !542)
!566 = !DILocation(line: 327, column: 15, scope: !542)
!567 = !DILocation(line: 328, column: 3, scope: !542)
!568 = !DILocation(line: 328, column: 9, scope: !542)
!569 = !DILocation(line: 328, column: 13, scope: !542)
!570 = !DILocation(line: 328, column: 24, scope: !542)
!571 = !DILocation(line: 334, column: 7, scope: !572)
!572 = distinct !DILexicalBlock(scope: !542, file: !1, line: 334, column: 7)
!573 = !DILocation(line: 334, column: 14, scope: !572)
!574 = !DILocation(line: 334, column: 26, scope: !572)
!575 = !DILocation(line: 337, column: 5, scope: !576)
!576 = distinct !DILexicalBlock(scope: !572, file: !1, line: 334, column: 45)
!577 = !DILocation(line: 337, column: 11, scope: !576)
!578 = !DILocation(line: 337, column: 15, scope: !576)
!579 = !DILocation(line: 337, column: 32, scope: !576)
!580 = !DILocation(line: 338, column: 27, scope: !576)
!581 = !DILocation(line: 338, column: 5, scope: !576)
!582 = !DILocation(line: 342, column: 3, scope: !576)
!583 = !DILocation(line: 344, column: 5, scope: !584)
!584 = distinct !DILexicalBlock(scope: !572, file: !1, line: 342, column: 10)
!585 = !DILocation(line: 344, column: 11, scope: !584)
!586 = !DILocation(line: 344, column: 15, scope: !584)
!587 = !DILocation(line: 344, column: 32, scope: !584)
!588 = !DILocation(line: 345, column: 13, scope: !589)
!589 = distinct !DILexicalBlock(scope: !584, file: !1, line: 345, column: 5)
!590 = !DILocation(line: 345, column: 28, scope: !589)
!591 = !DILocation(line: 345, column: 35, scope: !589)
!592 = !DILocation(line: 345, column: 26, scope: !589)
!593 = !DILocation(line: 345, column: 10, scope: !589)
!594 = !DILocation(line: 345, column: 46, scope: !595)
!595 = distinct !DILexicalBlock(scope: !589, file: !1, line: 345, column: 5)
!596 = !DILocation(line: 345, column: 51, scope: !595)
!597 = !DILocation(line: 345, column: 58, scope: !595)
!598 = !DILocation(line: 345, column: 49, scope: !595)
!599 = !DILocation(line: 345, column: 5, scope: !589)
!600 = !DILocation(line: 347, column: 31, scope: !601)
!601 = distinct !DILexicalBlock(scope: !595, file: !1, line: 346, column: 20)
!602 = !DILocation(line: 347, column: 38, scope: !601)
!603 = !DILocation(line: 347, column: 43, scope: !601)
!604 = !DILocation(line: 348, column: 18, scope: !601)
!605 = !DILocation(line: 349, column: 25, scope: !601)
!606 = !DILocation(line: 349, column: 34, scope: !601)
!607 = !DILocation(line: 349, column: 18, scope: !601)
!608 = !DILocation(line: 349, column: 50, scope: !601)
!609 = !DILocation(line: 350, column: 4, scope: !601)
!610 = !DILocation(line: 350, column: 11, scope: !601)
!611 = !DILocation(line: 349, column: 60, scope: !601)
!612 = !DILocation(line: 350, column: 32, scope: !601)
!613 = !DILocation(line: 350, column: 41, scope: !601)
!614 = !DILocation(line: 350, column: 30, scope: !601)
!615 = !DILocation(line: 349, column: 3, scope: !601)
!616 = !DILocation(line: 351, column: 16, scope: !601)
!617 = !DILocation(line: 351, column: 23, scope: !601)
!618 = !DILocation(line: 347, column: 29, scope: !601)
!619 = !DILocation(line: 347, column: 7, scope: !601)
!620 = !DILocation(line: 347, column: 13, scope: !601)
!621 = !DILocation(line: 347, column: 23, scope: !601)
!622 = !DILocation(line: 347, column: 27, scope: !601)
!623 = !DILocation(line: 352, column: 5, scope: !601)
!624 = !DILocation(line: 346, column: 5, scope: !595)
!625 = !DILocation(line: 346, column: 16, scope: !595)
!626 = !DILocation(line: 345, column: 5, scope: !595)
!627 = distinct !{!627, !599, !628, !629}
!628 = !DILocation(line: 352, column: 5, scope: !589)
!629 = !{!"llvm.loop.mustprogress"}
!630 = !DILocation(line: 354, column: 1, scope: !542)
!631 = distinct !DISubprogram(name: "start_pass_prep", scope: !1, file: !1, line: 78, type: !286, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !543)
!632 = !DILocalVariable(name: "cinfo", arg: 1, scope: !631, file: !1, line: 78, type: !288)
!633 = !DILocation(line: 78, column: 33, scope: !631)
!634 = !DILocalVariable(name: "pass_mode", arg: 2, scope: !631, file: !1, line: 78, type: !521)
!635 = !DILocation(line: 78, column: 51, scope: !631)
!636 = !DILocalVariable(name: "prep", scope: !631, file: !1, line: 80, type: !276)
!637 = !DILocation(line: 80, column: 15, scope: !631)
!638 = !DILocation(line: 80, column: 36, scope: !631)
!639 = !DILocation(line: 80, column: 43, scope: !631)
!640 = !DILocation(line: 82, column: 7, scope: !641)
!641 = distinct !DILexicalBlock(scope: !631, file: !1, line: 82, column: 7)
!642 = !DILocation(line: 82, column: 17, scope: !641)
!643 = !DILocation(line: 83, column: 5, scope: !641)
!644 = !DILocation(line: 86, column: 22, scope: !631)
!645 = !DILocation(line: 86, column: 29, scope: !631)
!646 = !DILocation(line: 86, column: 3, scope: !631)
!647 = !DILocation(line: 86, column: 9, scope: !631)
!648 = !DILocation(line: 86, column: 20, scope: !631)
!649 = !DILocation(line: 88, column: 3, scope: !631)
!650 = !DILocation(line: 88, column: 9, scope: !631)
!651 = !DILocation(line: 88, column: 22, scope: !631)
!652 = !DILocation(line: 93, column: 3, scope: !631)
!653 = !DILocation(line: 93, column: 9, scope: !631)
!654 = !DILocation(line: 93, column: 24, scope: !631)
!655 = !DILocation(line: 95, column: 29, scope: !631)
!656 = !DILocation(line: 95, column: 36, scope: !631)
!657 = !DILocation(line: 95, column: 27, scope: !631)
!658 = !DILocation(line: 95, column: 3, scope: !631)
!659 = !DILocation(line: 95, column: 9, scope: !631)
!660 = !DILocation(line: 95, column: 23, scope: !631)
!661 = !DILocation(line: 97, column: 1, scope: !631)
!662 = distinct !DISubprogram(name: "pre_process_context", scope: !1, file: !1, line: 195, type: !524, scopeLine: 200, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !543)
!663 = !DILocalVariable(name: "cinfo", arg: 1, scope: !662, file: !1, line: 195, type: !288)
!664 = !DILocation(line: 195, column: 37, scope: !662)
!665 = !DILocalVariable(name: "input_buf", arg: 2, scope: !662, file: !1, line: 196, type: !216)
!666 = !DILocation(line: 196, column: 19, scope: !662)
!667 = !DILocalVariable(name: "in_row_ctr", arg: 3, scope: !662, file: !1, line: 196, type: !451)
!668 = !DILocation(line: 196, column: 42, scope: !662)
!669 = !DILocalVariable(name: "in_rows_avail", arg: 4, scope: !662, file: !1, line: 197, type: !223)
!670 = !DILocation(line: 197, column: 19, scope: !662)
!671 = !DILocalVariable(name: "output_buf", arg: 5, scope: !662, file: !1, line: 198, type: !463)
!672 = !DILocation(line: 198, column: 19, scope: !662)
!673 = !DILocalVariable(name: "out_row_group_ctr", arg: 6, scope: !662, file: !1, line: 198, type: !451)
!674 = !DILocation(line: 198, column: 43, scope: !662)
!675 = !DILocalVariable(name: "out_row_groups_avail", arg: 7, scope: !662, file: !1, line: 199, type: !223)
!676 = !DILocation(line: 199, column: 19, scope: !662)
!677 = !DILocalVariable(name: "prep", scope: !662, file: !1, line: 201, type: !276)
!678 = !DILocation(line: 201, column: 15, scope: !662)
!679 = !DILocation(line: 201, column: 36, scope: !662)
!680 = !DILocation(line: 201, column: 43, scope: !662)
!681 = !DILocalVariable(name: "numrows", scope: !662, file: !1, line: 202, type: !166)
!682 = !DILocation(line: 202, column: 7, scope: !662)
!683 = !DILocalVariable(name: "ci", scope: !662, file: !1, line: 202, type: !166)
!684 = !DILocation(line: 202, column: 16, scope: !662)
!685 = !DILocalVariable(name: "buf_height", scope: !662, file: !1, line: 203, type: !166)
!686 = !DILocation(line: 203, column: 7, scope: !662)
!687 = !DILocation(line: 203, column: 20, scope: !662)
!688 = !DILocation(line: 203, column: 27, scope: !662)
!689 = !DILocation(line: 203, column: 45, scope: !662)
!690 = !DILocalVariable(name: "inrows", scope: !662, file: !1, line: 204, type: !223)
!691 = !DILocation(line: 204, column: 14, scope: !662)
!692 = !DILocation(line: 206, column: 3, scope: !662)
!693 = !DILocation(line: 206, column: 11, scope: !662)
!694 = !DILocation(line: 206, column: 10, scope: !662)
!695 = !DILocation(line: 206, column: 31, scope: !662)
!696 = !DILocation(line: 206, column: 29, scope: !662)
!697 = !DILocation(line: 207, column: 10, scope: !698)
!698 = distinct !DILexicalBlock(scope: !699, file: !1, line: 207, column: 9)
!699 = distinct !DILexicalBlock(scope: !662, file: !1, line: 206, column: 53)
!700 = !DILocation(line: 207, column: 9, scope: !698)
!701 = !DILocation(line: 207, column: 23, scope: !698)
!702 = !DILocation(line: 207, column: 21, scope: !698)
!703 = !DILocation(line: 209, column: 16, scope: !704)
!704 = distinct !DILexicalBlock(scope: !698, file: !1, line: 207, column: 38)
!705 = !DILocation(line: 209, column: 33, scope: !704)
!706 = !DILocation(line: 209, column: 32, scope: !704)
!707 = !DILocation(line: 209, column: 30, scope: !704)
!708 = !DILocation(line: 209, column: 14, scope: !704)
!709 = !DILocation(line: 210, column: 17, scope: !704)
!710 = !DILocation(line: 210, column: 23, scope: !704)
!711 = !DILocation(line: 210, column: 39, scope: !704)
!712 = !DILocation(line: 210, column: 45, scope: !704)
!713 = !DILocation(line: 210, column: 37, scope: !704)
!714 = !DILocation(line: 210, column: 15, scope: !704)
!715 = !DILocation(line: 211, column: 23, scope: !704)
!716 = !DILocation(line: 211, column: 15, scope: !704)
!717 = !DILocation(line: 212, column: 9, scope: !704)
!718 = !DILocation(line: 212, column: 16, scope: !704)
!719 = !DILocation(line: 212, column: 26, scope: !704)
!720 = !DILocation(line: 212, column: 42, scope: !704)
!721 = !DILocation(line: 212, column: 49, scope: !704)
!722 = !DILocation(line: 212, column: 62, scope: !704)
!723 = !DILocation(line: 212, column: 61, scope: !704)
!724 = !DILocation(line: 212, column: 59, scope: !704)
!725 = !DILocation(line: 213, column: 7, scope: !704)
!726 = !DILocation(line: 213, column: 13, scope: !704)
!727 = !DILocation(line: 214, column: 20, scope: !704)
!728 = !DILocation(line: 214, column: 26, scope: !704)
!729 = !DILocation(line: 215, column: 7, scope: !704)
!730 = !DILocation(line: 212, column: 7, scope: !704)
!731 = !DILocation(line: 217, column: 11, scope: !732)
!732 = distinct !DILexicalBlock(scope: !704, file: !1, line: 217, column: 11)
!733 = !DILocation(line: 217, column: 17, scope: !732)
!734 = !DILocation(line: 217, column: 31, scope: !732)
!735 = !DILocation(line: 217, column: 38, scope: !732)
!736 = !DILocation(line: 217, column: 28, scope: !732)
!737 = !DILocation(line: 218, column: 10, scope: !738)
!738 = distinct !DILexicalBlock(scope: !739, file: !1, line: 218, column: 2)
!739 = distinct !DILexicalBlock(scope: !732, file: !1, line: 217, column: 52)
!740 = !DILocation(line: 218, column: 7, scope: !738)
!741 = !DILocation(line: 218, column: 15, scope: !742)
!742 = distinct !DILexicalBlock(scope: !738, file: !1, line: 218, column: 2)
!743 = !DILocation(line: 218, column: 20, scope: !742)
!744 = !DILocation(line: 218, column: 27, scope: !742)
!745 = !DILocation(line: 218, column: 18, scope: !742)
!746 = !DILocation(line: 218, column: 2, scope: !738)
!747 = !DILocalVariable(name: "row", scope: !748, file: !1, line: 219, type: !166)
!748 = distinct !DILexicalBlock(scope: !742, file: !1, line: 218, column: 49)
!749 = !DILocation(line: 219, column: 8, scope: !748)
!750 = !DILocation(line: 220, column: 13, scope: !751)
!751 = distinct !DILexicalBlock(scope: !748, file: !1, line: 220, column: 4)
!752 = !DILocation(line: 220, column: 9, scope: !751)
!753 = !DILocation(line: 220, column: 18, scope: !754)
!754 = distinct !DILexicalBlock(scope: !751, file: !1, line: 220, column: 4)
!755 = !DILocation(line: 220, column: 25, scope: !754)
!756 = !DILocation(line: 220, column: 32, scope: !754)
!757 = !DILocation(line: 220, column: 22, scope: !754)
!758 = !DILocation(line: 220, column: 4, scope: !751)
!759 = !DILocation(line: 221, column: 24, scope: !760)
!760 = distinct !DILexicalBlock(scope: !754, file: !1, line: 220, column: 58)
!761 = !DILocation(line: 221, column: 30, scope: !760)
!762 = !DILocation(line: 221, column: 40, scope: !760)
!763 = !DILocation(line: 222, column: 10, scope: !760)
!764 = !DILocation(line: 222, column: 16, scope: !760)
!765 = !DILocation(line: 222, column: 26, scope: !760)
!766 = !DILocation(line: 222, column: 32, scope: !760)
!767 = !DILocation(line: 222, column: 31, scope: !760)
!768 = !DILocation(line: 223, column: 13, scope: !760)
!769 = !DILocation(line: 223, column: 20, scope: !760)
!770 = !DILocation(line: 221, column: 6, scope: !760)
!771 = !DILocation(line: 224, column: 4, scope: !760)
!772 = !DILocation(line: 220, column: 54, scope: !754)
!773 = !DILocation(line: 220, column: 4, scope: !754)
!774 = distinct !{!774, !758, !775, !629}
!775 = !DILocation(line: 224, column: 4, scope: !751)
!776 = !DILocation(line: 225, column: 2, scope: !748)
!777 = !DILocation(line: 218, column: 45, scope: !742)
!778 = !DILocation(line: 218, column: 2, scope: !742)
!779 = distinct !{!779, !746, !780, !629}
!780 = !DILocation(line: 225, column: 2, scope: !738)
!781 = !DILocation(line: 226, column: 7, scope: !739)
!782 = !DILocation(line: 227, column: 22, scope: !704)
!783 = !DILocation(line: 227, column: 8, scope: !704)
!784 = !DILocation(line: 227, column: 19, scope: !704)
!785 = !DILocation(line: 228, column: 29, scope: !704)
!786 = !DILocation(line: 228, column: 7, scope: !704)
!787 = !DILocation(line: 228, column: 13, scope: !704)
!788 = !DILocation(line: 228, column: 26, scope: !704)
!789 = !DILocation(line: 229, column: 27, scope: !704)
!790 = !DILocation(line: 229, column: 7, scope: !704)
!791 = !DILocation(line: 229, column: 13, scope: !704)
!792 = !DILocation(line: 229, column: 24, scope: !704)
!793 = !DILocation(line: 230, column: 5, scope: !704)
!794 = !DILocation(line: 232, column: 11, scope: !795)
!795 = distinct !DILexicalBlock(scope: !796, file: !1, line: 232, column: 11)
!796 = distinct !DILexicalBlock(scope: !698, file: !1, line: 230, column: 12)
!797 = !DILocation(line: 232, column: 17, scope: !795)
!798 = !DILocation(line: 232, column: 28, scope: !795)
!799 = !DILocation(line: 233, column: 2, scope: !795)
!800 = !DILocation(line: 235, column: 11, scope: !801)
!801 = distinct !DILexicalBlock(scope: !796, file: !1, line: 235, column: 11)
!802 = !DILocation(line: 235, column: 17, scope: !801)
!803 = !DILocation(line: 235, column: 32, scope: !801)
!804 = !DILocation(line: 235, column: 38, scope: !801)
!805 = !DILocation(line: 235, column: 30, scope: !801)
!806 = !DILocation(line: 236, column: 10, scope: !807)
!807 = distinct !DILexicalBlock(scope: !808, file: !1, line: 236, column: 2)
!808 = distinct !DILexicalBlock(scope: !801, file: !1, line: 235, column: 53)
!809 = !DILocation(line: 236, column: 7, scope: !807)
!810 = !DILocation(line: 236, column: 15, scope: !811)
!811 = distinct !DILexicalBlock(scope: !807, file: !1, line: 236, column: 2)
!812 = !DILocation(line: 236, column: 20, scope: !811)
!813 = !DILocation(line: 236, column: 27, scope: !811)
!814 = !DILocation(line: 236, column: 18, scope: !811)
!815 = !DILocation(line: 236, column: 2, scope: !807)
!816 = !DILocation(line: 237, column: 23, scope: !817)
!817 = distinct !DILexicalBlock(scope: !811, file: !1, line: 236, column: 49)
!818 = !DILocation(line: 237, column: 29, scope: !817)
!819 = !DILocation(line: 237, column: 39, scope: !817)
!820 = !DILocation(line: 237, column: 44, scope: !817)
!821 = !DILocation(line: 237, column: 51, scope: !817)
!822 = !DILocation(line: 238, column: 9, scope: !817)
!823 = !DILocation(line: 238, column: 15, scope: !817)
!824 = !DILocation(line: 238, column: 29, scope: !817)
!825 = !DILocation(line: 238, column: 35, scope: !817)
!826 = !DILocation(line: 237, column: 4, scope: !817)
!827 = !DILocation(line: 239, column: 2, scope: !817)
!828 = !DILocation(line: 236, column: 45, scope: !811)
!829 = !DILocation(line: 236, column: 2, scope: !811)
!830 = distinct !{!830, !815, !831, !629}
!831 = !DILocation(line: 239, column: 2, scope: !807)
!832 = !DILocation(line: 240, column: 23, scope: !808)
!833 = !DILocation(line: 240, column: 29, scope: !808)
!834 = !DILocation(line: 240, column: 2, scope: !808)
!835 = !DILocation(line: 240, column: 8, scope: !808)
!836 = !DILocation(line: 240, column: 21, scope: !808)
!837 = !DILocation(line: 241, column: 7, scope: !808)
!838 = !DILocation(line: 244, column: 9, scope: !839)
!839 = distinct !DILexicalBlock(scope: !699, file: !1, line: 244, column: 9)
!840 = !DILocation(line: 244, column: 15, scope: !839)
!841 = !DILocation(line: 244, column: 31, scope: !839)
!842 = !DILocation(line: 244, column: 37, scope: !839)
!843 = !DILocation(line: 244, column: 28, scope: !839)
!844 = !DILocation(line: 245, column: 9, scope: !845)
!845 = distinct !DILexicalBlock(scope: !839, file: !1, line: 244, column: 52)
!846 = !DILocation(line: 245, column: 16, scope: !845)
!847 = !DILocation(line: 245, column: 28, scope: !845)
!848 = !DILocation(line: 245, column: 41, scope: !845)
!849 = !DILocation(line: 246, column: 6, scope: !845)
!850 = !DILocation(line: 246, column: 12, scope: !845)
!851 = !DILocation(line: 247, column: 19, scope: !845)
!852 = !DILocation(line: 247, column: 25, scope: !845)
!853 = !DILocation(line: 248, column: 6, scope: !845)
!854 = !DILocation(line: 248, column: 19, scope: !845)
!855 = !DILocation(line: 248, column: 18, scope: !845)
!856 = !DILocation(line: 245, column: 7, scope: !845)
!857 = !DILocation(line: 249, column: 9, scope: !845)
!858 = !DILocation(line: 249, column: 27, scope: !845)
!859 = !DILocation(line: 251, column: 31, scope: !845)
!860 = !DILocation(line: 251, column: 38, scope: !845)
!861 = !DILocation(line: 251, column: 7, scope: !845)
!862 = !DILocation(line: 251, column: 13, scope: !845)
!863 = !DILocation(line: 251, column: 28, scope: !845)
!864 = !DILocation(line: 252, column: 11, scope: !865)
!865 = distinct !DILexicalBlock(scope: !845, file: !1, line: 252, column: 11)
!866 = !DILocation(line: 252, column: 17, scope: !865)
!867 = !DILocation(line: 252, column: 35, scope: !865)
!868 = !DILocation(line: 252, column: 32, scope: !865)
!869 = !DILocation(line: 253, column: 2, scope: !865)
!870 = !DILocation(line: 253, column: 8, scope: !865)
!871 = !DILocation(line: 253, column: 23, scope: !865)
!872 = !DILocation(line: 254, column: 11, scope: !873)
!873 = distinct !DILexicalBlock(scope: !845, file: !1, line: 254, column: 11)
!874 = !DILocation(line: 254, column: 17, scope: !873)
!875 = !DILocation(line: 254, column: 33, scope: !873)
!876 = !DILocation(line: 254, column: 30, scope: !873)
!877 = !DILocation(line: 255, column: 2, scope: !873)
!878 = !DILocation(line: 255, column: 8, scope: !873)
!879 = !DILocation(line: 255, column: 21, scope: !873)
!880 = !DILocation(line: 256, column: 29, scope: !845)
!881 = !DILocation(line: 256, column: 35, scope: !845)
!882 = !DILocation(line: 256, column: 50, scope: !845)
!883 = !DILocation(line: 256, column: 57, scope: !845)
!884 = !DILocation(line: 256, column: 48, scope: !845)
!885 = !DILocation(line: 256, column: 7, scope: !845)
!886 = !DILocation(line: 256, column: 13, scope: !845)
!887 = !DILocation(line: 256, column: 27, scope: !845)
!888 = !DILocation(line: 257, column: 5, scope: !845)
!889 = distinct !{!889, !692, !890, !629}
!890 = !DILocation(line: 258, column: 3, scope: !662)
!891 = !DILocation(line: 259, column: 1, scope: !662)
!892 = distinct !DISubprogram(name: "create_context_buffer", scope: !1, file: !1, line: 267, type: !307, scopeLine: 268, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !543)
!893 = !DILocalVariable(name: "cinfo", arg: 1, scope: !892, file: !1, line: 267, type: !288)
!894 = !DILocation(line: 267, column: 39, scope: !892)
!895 = !DILocalVariable(name: "prep", scope: !892, file: !1, line: 269, type: !276)
!896 = !DILocation(line: 269, column: 15, scope: !892)
!897 = !DILocation(line: 269, column: 36, scope: !892)
!898 = !DILocation(line: 269, column: 43, scope: !892)
!899 = !DILocalVariable(name: "rgroup_height", scope: !892, file: !1, line: 270, type: !166)
!900 = !DILocation(line: 270, column: 7, scope: !892)
!901 = !DILocation(line: 270, column: 23, scope: !892)
!902 = !DILocation(line: 270, column: 30, scope: !892)
!903 = !DILocalVariable(name: "ci", scope: !892, file: !1, line: 271, type: !166)
!904 = !DILocation(line: 271, column: 7, scope: !892)
!905 = !DILocalVariable(name: "i", scope: !892, file: !1, line: 271, type: !166)
!906 = !DILocation(line: 271, column: 11, scope: !892)
!907 = !DILocalVariable(name: "compptr", scope: !892, file: !1, line: 272, type: !325)
!908 = !DILocation(line: 272, column: 25, scope: !892)
!909 = !DILocalVariable(name: "true_buffer", scope: !892, file: !1, line: 273, type: !216)
!910 = !DILocation(line: 273, column: 14, scope: !892)
!911 = !DILocalVariable(name: "fake_buffer", scope: !892, file: !1, line: 273, type: !216)
!912 = !DILocation(line: 273, column: 27, scope: !892)
!913 = !DILocation(line: 279, column: 7, scope: !892)
!914 = !DILocation(line: 279, column: 14, scope: !892)
!915 = !DILocation(line: 279, column: 19, scope: !892)
!916 = !DILocation(line: 279, column: 48, scope: !892)
!917 = !DILocation(line: 280, column: 6, scope: !892)
!918 = !DILocation(line: 280, column: 13, scope: !892)
!919 = !DILocation(line: 280, column: 28, scope: !892)
!920 = !DILocation(line: 280, column: 34, scope: !892)
!921 = !DILocation(line: 280, column: 32, scope: !892)
!922 = !DILocation(line: 280, column: 5, scope: !892)
!923 = !DILocation(line: 280, column: 49, scope: !892)
!924 = !DILocation(line: 279, column: 5, scope: !892)
!925 = !DILocation(line: 278, column: 15, scope: !892)
!926 = !DILocation(line: 283, column: 11, scope: !927)
!927 = distinct !DILexicalBlock(scope: !892, file: !1, line: 283, column: 3)
!928 = !DILocation(line: 283, column: 26, scope: !927)
!929 = !DILocation(line: 283, column: 33, scope: !927)
!930 = !DILocation(line: 283, column: 24, scope: !927)
!931 = !DILocation(line: 283, column: 8, scope: !927)
!932 = !DILocation(line: 283, column: 44, scope: !933)
!933 = distinct !DILexicalBlock(scope: !927, file: !1, line: 283, column: 3)
!934 = !DILocation(line: 283, column: 49, scope: !933)
!935 = !DILocation(line: 283, column: 56, scope: !933)
!936 = !DILocation(line: 283, column: 47, scope: !933)
!937 = !DILocation(line: 283, column: 3, scope: !927)
!938 = !DILocation(line: 289, column: 21, scope: !939)
!939 = distinct !DILexicalBlock(scope: !933, file: !1, line: 284, column: 25)
!940 = !DILocation(line: 289, column: 28, scope: !939)
!941 = !DILocation(line: 289, column: 33, scope: !939)
!942 = !DILocation(line: 290, column: 23, scope: !939)
!943 = !DILocation(line: 291, column: 30, scope: !939)
!944 = !DILocation(line: 291, column: 39, scope: !939)
!945 = !DILocation(line: 291, column: 23, scope: !939)
!946 = !DILocation(line: 291, column: 55, scope: !939)
!947 = !DILocation(line: 292, column: 9, scope: !939)
!948 = !DILocation(line: 292, column: 16, scope: !939)
!949 = !DILocation(line: 291, column: 65, scope: !939)
!950 = !DILocation(line: 292, column: 37, scope: !939)
!951 = !DILocation(line: 292, column: 46, scope: !939)
!952 = !DILocation(line: 292, column: 35, scope: !939)
!953 = !DILocation(line: 291, column: 8, scope: !939)
!954 = !DILocation(line: 293, column: 26, scope: !939)
!955 = !DILocation(line: 293, column: 24, scope: !939)
!956 = !DILocation(line: 289, column: 19, scope: !939)
!957 = !DILocation(line: 289, column: 17, scope: !939)
!958 = !DILocation(line: 295, column: 5, scope: !939)
!959 = !DILocation(line: 298, column: 12, scope: !960)
!960 = distinct !DILexicalBlock(scope: !939, file: !1, line: 298, column: 5)
!961 = !DILocation(line: 298, column: 10, scope: !960)
!962 = !DILocation(line: 298, column: 17, scope: !963)
!963 = distinct !DILexicalBlock(scope: !960, file: !1, line: 298, column: 5)
!964 = !DILocation(line: 298, column: 21, scope: !963)
!965 = !DILocation(line: 298, column: 19, scope: !963)
!966 = !DILocation(line: 298, column: 5, scope: !960)
!967 = !DILocation(line: 299, column: 24, scope: !968)
!968 = distinct !DILexicalBlock(scope: !963, file: !1, line: 298, column: 41)
!969 = !DILocation(line: 299, column: 40, scope: !968)
!970 = !DILocation(line: 299, column: 38, scope: !968)
!971 = !DILocation(line: 299, column: 56, scope: !968)
!972 = !DILocation(line: 299, column: 54, scope: !968)
!973 = !DILocation(line: 299, column: 7, scope: !968)
!974 = !DILocation(line: 299, column: 19, scope: !968)
!975 = !DILocation(line: 299, column: 22, scope: !968)
!976 = !DILocation(line: 300, column: 44, scope: !968)
!977 = !DILocation(line: 300, column: 56, scope: !968)
!978 = !DILocation(line: 300, column: 7, scope: !968)
!979 = !DILocation(line: 300, column: 23, scope: !968)
!980 = !DILocation(line: 300, column: 21, scope: !968)
!981 = !DILocation(line: 300, column: 39, scope: !968)
!982 = !DILocation(line: 300, column: 37, scope: !968)
!983 = !DILocation(line: 300, column: 42, scope: !968)
!984 = !DILocation(line: 301, column: 5, scope: !968)
!985 = !DILocation(line: 298, column: 37, scope: !963)
!986 = !DILocation(line: 298, column: 5, scope: !963)
!987 = distinct !{!987, !966, !988, !629}
!988 = !DILocation(line: 301, column: 5, scope: !960)
!989 = !DILocation(line: 302, column: 27, scope: !939)
!990 = !DILocation(line: 302, column: 41, scope: !939)
!991 = !DILocation(line: 302, column: 39, scope: !939)
!992 = !DILocation(line: 302, column: 5, scope: !939)
!993 = !DILocation(line: 302, column: 11, scope: !939)
!994 = !DILocation(line: 302, column: 21, scope: !939)
!995 = !DILocation(line: 302, column: 25, scope: !939)
!996 = !DILocation(line: 303, column: 24, scope: !939)
!997 = !DILocation(line: 303, column: 22, scope: !939)
!998 = !DILocation(line: 303, column: 17, scope: !939)
!999 = !DILocation(line: 304, column: 3, scope: !939)
!1000 = !DILocation(line: 284, column: 10, scope: !933)
!1001 = !DILocation(line: 284, column: 21, scope: !933)
!1002 = !DILocation(line: 283, column: 3, scope: !933)
!1003 = distinct !{!1003, !937, !1004, !629}
!1004 = !DILocation(line: 304, column: 3, scope: !927)
!1005 = !DILocation(line: 305, column: 1, scope: !892)
!1006 = distinct !DISubprogram(name: "pre_process_data", scope: !1, file: !1, line: 128, type: !524, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !543)
!1007 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1006, file: !1, line: 128, type: !288)
!1008 = !DILocation(line: 128, column: 34, scope: !1006)
!1009 = !DILocalVariable(name: "input_buf", arg: 2, scope: !1006, file: !1, line: 129, type: !216)
!1010 = !DILocation(line: 129, column: 16, scope: !1006)
!1011 = !DILocalVariable(name: "in_row_ctr", arg: 3, scope: !1006, file: !1, line: 129, type: !451)
!1012 = !DILocation(line: 129, column: 39, scope: !1006)
!1013 = !DILocalVariable(name: "in_rows_avail", arg: 4, scope: !1006, file: !1, line: 130, type: !223)
!1014 = !DILocation(line: 130, column: 16, scope: !1006)
!1015 = !DILocalVariable(name: "output_buf", arg: 5, scope: !1006, file: !1, line: 131, type: !463)
!1016 = !DILocation(line: 131, column: 16, scope: !1006)
!1017 = !DILocalVariable(name: "out_row_group_ctr", arg: 6, scope: !1006, file: !1, line: 131, type: !451)
!1018 = !DILocation(line: 131, column: 40, scope: !1006)
!1019 = !DILocalVariable(name: "out_row_groups_avail", arg: 7, scope: !1006, file: !1, line: 132, type: !223)
!1020 = !DILocation(line: 132, column: 16, scope: !1006)
!1021 = !DILocalVariable(name: "prep", scope: !1006, file: !1, line: 134, type: !276)
!1022 = !DILocation(line: 134, column: 15, scope: !1006)
!1023 = !DILocation(line: 134, column: 36, scope: !1006)
!1024 = !DILocation(line: 134, column: 43, scope: !1006)
!1025 = !DILocalVariable(name: "numrows", scope: !1006, file: !1, line: 135, type: !166)
!1026 = !DILocation(line: 135, column: 7, scope: !1006)
!1027 = !DILocalVariable(name: "ci", scope: !1006, file: !1, line: 135, type: !166)
!1028 = !DILocation(line: 135, column: 16, scope: !1006)
!1029 = !DILocalVariable(name: "inrows", scope: !1006, file: !1, line: 136, type: !223)
!1030 = !DILocation(line: 136, column: 14, scope: !1006)
!1031 = !DILocalVariable(name: "compptr", scope: !1006, file: !1, line: 137, type: !325)
!1032 = !DILocation(line: 137, column: 25, scope: !1006)
!1033 = !DILocation(line: 139, column: 3, scope: !1006)
!1034 = !DILocation(line: 139, column: 11, scope: !1006)
!1035 = !DILocation(line: 139, column: 10, scope: !1006)
!1036 = !DILocation(line: 139, column: 24, scope: !1006)
!1037 = !DILocation(line: 139, column: 22, scope: !1006)
!1038 = !DILocation(line: 139, column: 38, scope: !1006)
!1039 = !DILocation(line: 140, column: 4, scope: !1006)
!1040 = !DILocation(line: 140, column: 3, scope: !1006)
!1041 = !DILocation(line: 140, column: 24, scope: !1006)
!1042 = !DILocation(line: 140, column: 22, scope: !1006)
!1043 = !DILocation(line: 0, scope: !1006)
!1044 = !DILocation(line: 142, column: 14, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !1006, file: !1, line: 140, column: 46)
!1046 = !DILocation(line: 142, column: 31, scope: !1045)
!1047 = !DILocation(line: 142, column: 30, scope: !1045)
!1048 = !DILocation(line: 142, column: 28, scope: !1045)
!1049 = !DILocation(line: 142, column: 12, scope: !1045)
!1050 = !DILocation(line: 143, column: 15, scope: !1045)
!1051 = !DILocation(line: 143, column: 22, scope: !1045)
!1052 = !DILocation(line: 143, column: 42, scope: !1045)
!1053 = !DILocation(line: 143, column: 48, scope: !1045)
!1054 = !DILocation(line: 143, column: 40, scope: !1045)
!1055 = !DILocation(line: 143, column: 13, scope: !1045)
!1056 = !DILocation(line: 144, column: 21, scope: !1045)
!1057 = !DILocation(line: 144, column: 13, scope: !1045)
!1058 = !DILocation(line: 145, column: 7, scope: !1045)
!1059 = !DILocation(line: 145, column: 14, scope: !1045)
!1060 = !DILocation(line: 145, column: 24, scope: !1045)
!1061 = !DILocation(line: 145, column: 40, scope: !1045)
!1062 = !DILocation(line: 145, column: 47, scope: !1045)
!1063 = !DILocation(line: 145, column: 60, scope: !1045)
!1064 = !DILocation(line: 145, column: 59, scope: !1045)
!1065 = !DILocation(line: 145, column: 57, scope: !1045)
!1066 = !DILocation(line: 146, column: 12, scope: !1045)
!1067 = !DILocation(line: 146, column: 18, scope: !1045)
!1068 = !DILocation(line: 147, column: 25, scope: !1045)
!1069 = !DILocation(line: 147, column: 31, scope: !1045)
!1070 = !DILocation(line: 148, column: 12, scope: !1045)
!1071 = !DILocation(line: 145, column: 5, scope: !1045)
!1072 = !DILocation(line: 149, column: 20, scope: !1045)
!1073 = !DILocation(line: 149, column: 6, scope: !1045)
!1074 = !DILocation(line: 149, column: 17, scope: !1045)
!1075 = !DILocation(line: 150, column: 27, scope: !1045)
!1076 = !DILocation(line: 150, column: 5, scope: !1045)
!1077 = !DILocation(line: 150, column: 11, scope: !1045)
!1078 = !DILocation(line: 150, column: 24, scope: !1045)
!1079 = !DILocation(line: 151, column: 25, scope: !1045)
!1080 = !DILocation(line: 151, column: 5, scope: !1045)
!1081 = !DILocation(line: 151, column: 11, scope: !1045)
!1082 = !DILocation(line: 151, column: 22, scope: !1045)
!1083 = !DILocation(line: 153, column: 9, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1045, file: !1, line: 153, column: 9)
!1085 = !DILocation(line: 153, column: 15, scope: !1084)
!1086 = !DILocation(line: 153, column: 26, scope: !1084)
!1087 = !DILocation(line: 153, column: 31, scope: !1084)
!1088 = !DILocation(line: 154, column: 2, scope: !1084)
!1089 = !DILocation(line: 154, column: 8, scope: !1084)
!1090 = !DILocation(line: 154, column: 23, scope: !1084)
!1091 = !DILocation(line: 154, column: 30, scope: !1084)
!1092 = !DILocation(line: 154, column: 21, scope: !1084)
!1093 = !DILocation(line: 155, column: 15, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !1095, file: !1, line: 155, column: 7)
!1095 = distinct !DILexicalBlock(scope: !1084, file: !1, line: 154, column: 49)
!1096 = !DILocation(line: 155, column: 12, scope: !1094)
!1097 = !DILocation(line: 155, column: 20, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !1094, file: !1, line: 155, column: 7)
!1099 = !DILocation(line: 155, column: 25, scope: !1098)
!1100 = !DILocation(line: 155, column: 32, scope: !1098)
!1101 = !DILocation(line: 155, column: 23, scope: !1098)
!1102 = !DILocation(line: 155, column: 7, scope: !1094)
!1103 = !DILocation(line: 156, column: 21, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !1098, file: !1, line: 155, column: 54)
!1105 = !DILocation(line: 156, column: 27, scope: !1104)
!1106 = !DILocation(line: 156, column: 37, scope: !1104)
!1107 = !DILocation(line: 156, column: 42, scope: !1104)
!1108 = !DILocation(line: 156, column: 49, scope: !1104)
!1109 = !DILocation(line: 157, column: 7, scope: !1104)
!1110 = !DILocation(line: 157, column: 13, scope: !1104)
!1111 = !DILocation(line: 157, column: 27, scope: !1104)
!1112 = !DILocation(line: 157, column: 34, scope: !1104)
!1113 = !DILocation(line: 156, column: 2, scope: !1104)
!1114 = !DILocation(line: 158, column: 7, scope: !1104)
!1115 = !DILocation(line: 155, column: 50, scope: !1098)
!1116 = !DILocation(line: 155, column: 7, scope: !1098)
!1117 = distinct !{!1117, !1102, !1118, !629}
!1118 = !DILocation(line: 158, column: 7, scope: !1094)
!1119 = !DILocation(line: 159, column: 28, scope: !1095)
!1120 = !DILocation(line: 159, column: 35, scope: !1095)
!1121 = !DILocation(line: 159, column: 7, scope: !1095)
!1122 = !DILocation(line: 159, column: 13, scope: !1095)
!1123 = !DILocation(line: 159, column: 26, scope: !1095)
!1124 = !DILocation(line: 160, column: 5, scope: !1095)
!1125 = !DILocation(line: 162, column: 9, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1045, file: !1, line: 162, column: 9)
!1127 = !DILocation(line: 162, column: 15, scope: !1126)
!1128 = !DILocation(line: 162, column: 31, scope: !1126)
!1129 = !DILocation(line: 162, column: 38, scope: !1126)
!1130 = !DILocation(line: 162, column: 28, scope: !1126)
!1131 = !DILocation(line: 163, column: 9, scope: !1132)
!1132 = distinct !DILexicalBlock(scope: !1126, file: !1, line: 162, column: 57)
!1133 = !DILocation(line: 163, column: 16, scope: !1132)
!1134 = !DILocation(line: 163, column: 28, scope: !1132)
!1135 = !DILocation(line: 163, column: 41, scope: !1132)
!1136 = !DILocation(line: 164, column: 6, scope: !1132)
!1137 = !DILocation(line: 164, column: 12, scope: !1132)
!1138 = !DILocation(line: 165, column: 6, scope: !1132)
!1139 = !DILocation(line: 165, column: 19, scope: !1132)
!1140 = !DILocation(line: 165, column: 18, scope: !1132)
!1141 = !DILocation(line: 163, column: 7, scope: !1132)
!1142 = !DILocation(line: 166, column: 7, scope: !1132)
!1143 = !DILocation(line: 166, column: 13, scope: !1132)
!1144 = !DILocation(line: 166, column: 26, scope: !1132)
!1145 = !DILocation(line: 167, column: 9, scope: !1132)
!1146 = !DILocation(line: 167, column: 27, scope: !1132)
!1147 = !DILocation(line: 168, column: 5, scope: !1132)
!1148 = !DILocation(line: 172, column: 9, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1045, file: !1, line: 172, column: 9)
!1150 = !DILocation(line: 172, column: 15, scope: !1149)
!1151 = !DILocation(line: 172, column: 26, scope: !1149)
!1152 = !DILocation(line: 172, column: 31, scope: !1149)
!1153 = !DILocation(line: 173, column: 3, scope: !1149)
!1154 = !DILocation(line: 173, column: 2, scope: !1149)
!1155 = !DILocation(line: 173, column: 23, scope: !1149)
!1156 = !DILocation(line: 173, column: 21, scope: !1149)
!1157 = !DILocation(line: 174, column: 15, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1159, file: !1, line: 174, column: 7)
!1159 = distinct !DILexicalBlock(scope: !1149, file: !1, line: 173, column: 45)
!1160 = !DILocation(line: 174, column: 30, scope: !1158)
!1161 = !DILocation(line: 174, column: 37, scope: !1158)
!1162 = !DILocation(line: 174, column: 28, scope: !1158)
!1163 = !DILocation(line: 174, column: 12, scope: !1158)
!1164 = !DILocation(line: 174, column: 48, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !1158, file: !1, line: 174, column: 7)
!1166 = !DILocation(line: 174, column: 53, scope: !1165)
!1167 = !DILocation(line: 174, column: 60, scope: !1165)
!1168 = !DILocation(line: 174, column: 51, scope: !1165)
!1169 = !DILocation(line: 174, column: 7, scope: !1158)
!1170 = !DILocation(line: 176, column: 21, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !1165, file: !1, line: 175, column: 22)
!1172 = !DILocation(line: 176, column: 32, scope: !1171)
!1173 = !DILocation(line: 177, column: 7, scope: !1171)
!1174 = !DILocation(line: 177, column: 16, scope: !1171)
!1175 = !DILocation(line: 177, column: 32, scope: !1171)
!1176 = !DILocation(line: 178, column: 15, scope: !1171)
!1177 = !DILocation(line: 178, column: 14, scope: !1171)
!1178 = !DILocation(line: 178, column: 35, scope: !1171)
!1179 = !DILocation(line: 178, column: 44, scope: !1171)
!1180 = !DILocation(line: 178, column: 33, scope: !1171)
!1181 = !DILocation(line: 179, column: 14, scope: !1171)
!1182 = !DILocation(line: 179, column: 37, scope: !1171)
!1183 = !DILocation(line: 179, column: 46, scope: !1171)
!1184 = !DILocation(line: 179, column: 35, scope: !1171)
!1185 = !DILocation(line: 176, column: 2, scope: !1171)
!1186 = !DILocation(line: 180, column: 7, scope: !1171)
!1187 = !DILocation(line: 175, column: 7, scope: !1165)
!1188 = !DILocation(line: 175, column: 18, scope: !1165)
!1189 = !DILocation(line: 174, column: 7, scope: !1165)
!1190 = distinct !{!1190, !1169, !1191, !629}
!1191 = !DILocation(line: 180, column: 7, scope: !1158)
!1192 = !DILocation(line: 181, column: 28, scope: !1159)
!1193 = !DILocation(line: 181, column: 8, scope: !1159)
!1194 = !DILocation(line: 181, column: 26, scope: !1159)
!1195 = !DILocation(line: 182, column: 7, scope: !1159)
!1196 = distinct !{!1196, !1033, !1197, !629}
!1197 = !DILocation(line: 184, column: 3, scope: !1006)
!1198 = !DILocation(line: 185, column: 1, scope: !1006)
!1199 = distinct !DISubprogram(name: "expand_bottom_edge", scope: !1, file: !1, line: 106, type: !1200, scopeLine: 108, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !543)
!1200 = !DISubroutineType(types: !1201)
!1201 = !{null, !216, !223, !166, !166}
!1202 = !DILocalVariable(name: "image_data", arg: 1, scope: !1199, file: !1, line: 106, type: !216)
!1203 = !DILocation(line: 106, column: 32, scope: !1199)
!1204 = !DILocalVariable(name: "num_cols", arg: 2, scope: !1199, file: !1, line: 106, type: !223)
!1205 = !DILocation(line: 106, column: 55, scope: !1199)
!1206 = !DILocalVariable(name: "input_rows", arg: 3, scope: !1199, file: !1, line: 107, type: !166)
!1207 = !DILocation(line: 107, column: 11, scope: !1199)
!1208 = !DILocalVariable(name: "output_rows", arg: 4, scope: !1199, file: !1, line: 107, type: !166)
!1209 = !DILocation(line: 107, column: 27, scope: !1199)
!1210 = !DILocalVariable(name: "row", scope: !1199, file: !1, line: 109, type: !166)
!1211 = !DILocation(line: 109, column: 16, scope: !1199)
!1212 = !DILocation(line: 111, column: 14, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1199, file: !1, line: 111, column: 3)
!1214 = !DILocation(line: 111, column: 12, scope: !1213)
!1215 = !DILocation(line: 111, column: 8, scope: !1213)
!1216 = !DILocation(line: 111, column: 26, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1213, file: !1, line: 111, column: 3)
!1218 = !DILocation(line: 111, column: 32, scope: !1217)
!1219 = !DILocation(line: 111, column: 30, scope: !1217)
!1220 = !DILocation(line: 111, column: 3, scope: !1213)
!1221 = !DILocation(line: 112, column: 23, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1217, file: !1, line: 111, column: 52)
!1223 = !DILocation(line: 112, column: 35, scope: !1222)
!1224 = !DILocation(line: 112, column: 45, scope: !1222)
!1225 = !DILocation(line: 112, column: 49, scope: !1222)
!1226 = !DILocation(line: 112, column: 61, scope: !1222)
!1227 = !DILocation(line: 113, column: 12, scope: !1222)
!1228 = !DILocation(line: 112, column: 5, scope: !1222)
!1229 = !DILocation(line: 114, column: 3, scope: !1222)
!1230 = !DILocation(line: 111, column: 48, scope: !1217)
!1231 = !DILocation(line: 111, column: 3, scope: !1217)
!1232 = distinct !{!1232, !1220, !1233, !629}
!1233 = !DILocation(line: 114, column: 3, scope: !1213)
!1234 = !DILocation(line: 115, column: 1, scope: !1199)
