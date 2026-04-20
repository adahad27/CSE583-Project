; ModuleID = 'cBench/consumer_jpeg_c/src/jdmerge.c'
source_filename = "cBench/consumer_jpeg_c/src/jdmerge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jpeg_decompress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.my_upsampler = type { %struct.jpeg_upsampler, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.jpeg_upsampler = type { ptr, ptr, i32 }

; Function Attrs: noinline nounwind uwtable
define dso_local void @jinit_merged_upsampler(ptr noundef %0) #0 !dbg !478 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !480, !DIExpression(), !481)
    #dbg_declare(ptr %3, !482, !DIExpression(), !483)
  %4 = load ptr, ptr %2, align 8, !dbg !484
  %5 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %4, i32 0, i32 1, !dbg !485
  %6 = load ptr, ptr %5, align 8, !dbg !485
  %7 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %6, i32 0, i32 0, !dbg !486
  %8 = load ptr, ptr %7, align 8, !dbg !486
  %9 = load ptr, ptr %2, align 8, !dbg !487
  %10 = call ptr %8(ptr noundef %9, i32 noundef 1, i64 noundef 88), !dbg !488
  store ptr %10, ptr %3, align 8, !dbg !489
  %11 = load ptr, ptr %3, align 8, !dbg !490
  %12 = load ptr, ptr %2, align 8, !dbg !491
  %13 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %12, i32 0, i32 81, !dbg !492
  store ptr %11, ptr %13, align 8, !dbg !493
  %14 = load ptr, ptr %3, align 8, !dbg !494
  %15 = getelementptr inbounds nuw %struct.my_upsampler, ptr %14, i32 0, i32 0, !dbg !495
  %16 = getelementptr inbounds nuw %struct.jpeg_upsampler, ptr %15, i32 0, i32 0, !dbg !496
  store ptr @start_pass_merged_upsample, ptr %16, align 8, !dbg !497
  %17 = load ptr, ptr %3, align 8, !dbg !498
  %18 = getelementptr inbounds nuw %struct.my_upsampler, ptr %17, i32 0, i32 0, !dbg !499
  %19 = getelementptr inbounds nuw %struct.jpeg_upsampler, ptr %18, i32 0, i32 2, !dbg !500
  store i32 0, ptr %19, align 8, !dbg !501
  %20 = load ptr, ptr %2, align 8, !dbg !502
  %21 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %20, i32 0, i32 26, !dbg !503
  %22 = load i32, ptr %21, align 8, !dbg !503
  %23 = load ptr, ptr %2, align 8, !dbg !504
  %24 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %23, i32 0, i32 28, !dbg !505
  %25 = load i32, ptr %24, align 8, !dbg !505
  %26 = mul i32 %22, %25, !dbg !506
  %27 = load ptr, ptr %3, align 8, !dbg !507
  %28 = getelementptr inbounds nuw %struct.my_upsampler, ptr %27, i32 0, i32 8, !dbg !508
  store i32 %26, ptr %28, align 4, !dbg !509
  %29 = load ptr, ptr %2, align 8, !dbg !510
  %30 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %29, i32 0, i32 58, !dbg !512
  %31 = load i32, ptr %30, align 8, !dbg !512
  %32 = icmp eq i32 %31, 2, !dbg !513
  br i1 %32, label %33, label %53, !dbg !513

33:                                               ; preds = %1
  %34 = load ptr, ptr %3, align 8, !dbg !514
  %35 = getelementptr inbounds nuw %struct.my_upsampler, ptr %34, i32 0, i32 0, !dbg !516
  %36 = getelementptr inbounds nuw %struct.jpeg_upsampler, ptr %35, i32 0, i32 1, !dbg !517
  store ptr @merged_2v_upsample, ptr %36, align 8, !dbg !518
  %37 = load ptr, ptr %3, align 8, !dbg !519
  %38 = getelementptr inbounds nuw %struct.my_upsampler, ptr %37, i32 0, i32 1, !dbg !520
  store ptr @h2v2_merged_upsample, ptr %38, align 8, !dbg !521
  %39 = load ptr, ptr %2, align 8, !dbg !522
  %40 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %39, i32 0, i32 1, !dbg !523
  %41 = load ptr, ptr %40, align 8, !dbg !523
  %42 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %41, i32 0, i32 1, !dbg !524
  %43 = load ptr, ptr %42, align 8, !dbg !524
  %44 = load ptr, ptr %2, align 8, !dbg !525
  %45 = load ptr, ptr %3, align 8, !dbg !526
  %46 = getelementptr inbounds nuw %struct.my_upsampler, ptr %45, i32 0, i32 8, !dbg !527
  %47 = load i32, ptr %46, align 4, !dbg !527
  %48 = zext i32 %47 to i64, !dbg !526
  %49 = mul i64 %48, 1, !dbg !528
  %50 = call ptr %43(ptr noundef %44, i32 noundef 1, i64 noundef %49), !dbg !529
  %51 = load ptr, ptr %3, align 8, !dbg !530
  %52 = getelementptr inbounds nuw %struct.my_upsampler, ptr %51, i32 0, i32 6, !dbg !531
  store ptr %50, ptr %52, align 8, !dbg !532
  br label %61, !dbg !533

53:                                               ; preds = %1
  %54 = load ptr, ptr %3, align 8, !dbg !534
  %55 = getelementptr inbounds nuw %struct.my_upsampler, ptr %54, i32 0, i32 0, !dbg !536
  %56 = getelementptr inbounds nuw %struct.jpeg_upsampler, ptr %55, i32 0, i32 1, !dbg !537
  store ptr @merged_1v_upsample, ptr %56, align 8, !dbg !538
  %57 = load ptr, ptr %3, align 8, !dbg !539
  %58 = getelementptr inbounds nuw %struct.my_upsampler, ptr %57, i32 0, i32 1, !dbg !540
  store ptr @h2v1_merged_upsample, ptr %58, align 8, !dbg !541
  %59 = load ptr, ptr %3, align 8, !dbg !542
  %60 = getelementptr inbounds nuw %struct.my_upsampler, ptr %59, i32 0, i32 6, !dbg !543
  store ptr null, ptr %60, align 8, !dbg !544
  br label %61

61:                                               ; preds = %53, %33
  %62 = load ptr, ptr %2, align 8, !dbg !545
  call void @build_ycc_rgb_table(ptr noundef %62), !dbg !546
  ret void, !dbg !547
}

; Function Attrs: noinline nounwind uwtable
define internal void @start_pass_merged_upsample(ptr noundef %0) #0 !dbg !548 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !549, !DIExpression(), !550)
    #dbg_declare(ptr %3, !551, !DIExpression(), !552)
  %4 = load ptr, ptr %2, align 8, !dbg !553
  %5 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %4, i32 0, i32 81, !dbg !554
  %6 = load ptr, ptr %5, align 8, !dbg !554
  store ptr %6, ptr %3, align 8, !dbg !552
  %7 = load ptr, ptr %3, align 8, !dbg !555
  %8 = getelementptr inbounds nuw %struct.my_upsampler, ptr %7, i32 0, i32 7, !dbg !556
  store i32 0, ptr %8, align 8, !dbg !557
  %9 = load ptr, ptr %2, align 8, !dbg !558
  %10 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %9, i32 0, i32 27, !dbg !559
  %11 = load i32, ptr %10, align 4, !dbg !559
  %12 = load ptr, ptr %3, align 8, !dbg !560
  %13 = getelementptr inbounds nuw %struct.my_upsampler, ptr %12, i32 0, i32 9, !dbg !561
  store i32 %11, ptr %13, align 8, !dbg !562
  ret void, !dbg !563
}

; Function Attrs: noinline nounwind uwtable
define internal void @merged_2v_upsample(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6) #0 !dbg !564 {
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca i32, align 4
  %15 = alloca ptr, align 8
  %16 = alloca [2 x ptr], align 16
  %17 = alloca i32, align 4
  store ptr %0, ptr %8, align 8
    #dbg_declare(ptr %8, !565, !DIExpression(), !566)
  store ptr %1, ptr %9, align 8
    #dbg_declare(ptr %9, !567, !DIExpression(), !568)
  store ptr %2, ptr %10, align 8
    #dbg_declare(ptr %10, !569, !DIExpression(), !570)
  store i32 %3, ptr %11, align 4
    #dbg_declare(ptr %11, !571, !DIExpression(), !572)
  store ptr %4, ptr %12, align 8
    #dbg_declare(ptr %12, !573, !DIExpression(), !574)
  store ptr %5, ptr %13, align 8
    #dbg_declare(ptr %13, !575, !DIExpression(), !576)
  store i32 %6, ptr %14, align 4
    #dbg_declare(ptr %14, !577, !DIExpression(), !578)
    #dbg_declare(ptr %15, !579, !DIExpression(), !580)
  %18 = load ptr, ptr %8, align 8, !dbg !581
  %19 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %18, i32 0, i32 81, !dbg !582
  %20 = load ptr, ptr %19, align 8, !dbg !582
  store ptr %20, ptr %15, align 8, !dbg !580
    #dbg_declare(ptr %16, !583, !DIExpression(), !587)
    #dbg_declare(ptr %17, !588, !DIExpression(), !589)
  %21 = load ptr, ptr %15, align 8, !dbg !590
  %22 = getelementptr inbounds nuw %struct.my_upsampler, ptr %21, i32 0, i32 7, !dbg !592
  %23 = load i32, ptr %22, align 8, !dbg !592
  %24 = icmp ne i32 %23, 0, !dbg !590
  br i1 %24, label %25, label %38, !dbg !590

25:                                               ; preds = %7
  %26 = load ptr, ptr %15, align 8, !dbg !593
  %27 = getelementptr inbounds nuw %struct.my_upsampler, ptr %26, i32 0, i32 6, !dbg !595
  %28 = load ptr, ptr %12, align 8, !dbg !596
  %29 = load ptr, ptr %13, align 8, !dbg !597
  %30 = load i32, ptr %29, align 4, !dbg !598
  %31 = zext i32 %30 to i64, !dbg !599
  %32 = getelementptr inbounds nuw ptr, ptr %28, i64 %31, !dbg !599
  %33 = load ptr, ptr %15, align 8, !dbg !600
  %34 = getelementptr inbounds nuw %struct.my_upsampler, ptr %33, i32 0, i32 8, !dbg !601
  %35 = load i32, ptr %34, align 4, !dbg !601
  call void @jcopy_sample_rows(ptr noundef %27, i32 noundef 0, ptr noundef %32, i32 noundef 0, i32 noundef 1, i32 noundef %35), !dbg !602
  store i32 1, ptr %17, align 4, !dbg !603
  %36 = load ptr, ptr %15, align 8, !dbg !604
  %37 = getelementptr inbounds nuw %struct.my_upsampler, ptr %36, i32 0, i32 7, !dbg !605
  store i32 0, ptr %37, align 8, !dbg !606
  br label %93, !dbg !607

38:                                               ; preds = %7
  store i32 2, ptr %17, align 4, !dbg !608
  %39 = load i32, ptr %17, align 4, !dbg !610
  %40 = load ptr, ptr %15, align 8, !dbg !612
  %41 = getelementptr inbounds nuw %struct.my_upsampler, ptr %40, i32 0, i32 9, !dbg !613
  %42 = load i32, ptr %41, align 8, !dbg !613
  %43 = icmp ugt i32 %39, %42, !dbg !614
  br i1 %43, label %44, label %48, !dbg !614

44:                                               ; preds = %38
  %45 = load ptr, ptr %15, align 8, !dbg !615
  %46 = getelementptr inbounds nuw %struct.my_upsampler, ptr %45, i32 0, i32 9, !dbg !616
  %47 = load i32, ptr %46, align 8, !dbg !616
  store i32 %47, ptr %17, align 4, !dbg !617
  br label %48, !dbg !618

48:                                               ; preds = %44, %38
  %49 = load ptr, ptr %13, align 8, !dbg !619
  %50 = load i32, ptr %49, align 4, !dbg !620
  %51 = load i32, ptr %14, align 4, !dbg !621
  %52 = sub i32 %51, %50, !dbg !621
  store i32 %52, ptr %14, align 4, !dbg !621
  %53 = load i32, ptr %17, align 4, !dbg !622
  %54 = load i32, ptr %14, align 4, !dbg !624
  %55 = icmp ugt i32 %53, %54, !dbg !625
  br i1 %55, label %56, label %58, !dbg !625

56:                                               ; preds = %48
  %57 = load i32, ptr %14, align 4, !dbg !626
  store i32 %57, ptr %17, align 4, !dbg !627
  br label %58, !dbg !628

58:                                               ; preds = %56, %48
  %59 = load ptr, ptr %12, align 8, !dbg !629
  %60 = load ptr, ptr %13, align 8, !dbg !630
  %61 = load i32, ptr %60, align 4, !dbg !631
  %62 = zext i32 %61 to i64, !dbg !629
  %63 = getelementptr inbounds nuw ptr, ptr %59, i64 %62, !dbg !629
  %64 = load ptr, ptr %63, align 8, !dbg !629
  %65 = getelementptr inbounds [2 x ptr], ptr %16, i64 0, i64 0, !dbg !632
  store ptr %64, ptr %65, align 16, !dbg !633
  %66 = load i32, ptr %17, align 4, !dbg !634
  %67 = icmp ugt i32 %66, 1, !dbg !636
  br i1 %67, label %68, label %77, !dbg !636

68:                                               ; preds = %58
  %69 = load ptr, ptr %12, align 8, !dbg !637
  %70 = load ptr, ptr %13, align 8, !dbg !639
  %71 = load i32, ptr %70, align 4, !dbg !640
  %72 = add i32 %71, 1, !dbg !641
  %73 = zext i32 %72 to i64, !dbg !637
  %74 = getelementptr inbounds nuw ptr, ptr %69, i64 %73, !dbg !637
  %75 = load ptr, ptr %74, align 8, !dbg !637
  %76 = getelementptr inbounds [2 x ptr], ptr %16, i64 0, i64 1, !dbg !642
  store ptr %75, ptr %76, align 8, !dbg !643
  br label %84, !dbg !644

77:                                               ; preds = %58
  %78 = load ptr, ptr %15, align 8, !dbg !645
  %79 = getelementptr inbounds nuw %struct.my_upsampler, ptr %78, i32 0, i32 6, !dbg !647
  %80 = load ptr, ptr %79, align 8, !dbg !647
  %81 = getelementptr inbounds [2 x ptr], ptr %16, i64 0, i64 1, !dbg !648
  store ptr %80, ptr %81, align 8, !dbg !649
  %82 = load ptr, ptr %15, align 8, !dbg !650
  %83 = getelementptr inbounds nuw %struct.my_upsampler, ptr %82, i32 0, i32 7, !dbg !651
  store i32 1, ptr %83, align 8, !dbg !652
  br label %84

84:                                               ; preds = %77, %68
  %85 = load ptr, ptr %15, align 8, !dbg !653
  %86 = getelementptr inbounds nuw %struct.my_upsampler, ptr %85, i32 0, i32 1, !dbg !654
  %87 = load ptr, ptr %86, align 8, !dbg !654
  %88 = load ptr, ptr %8, align 8, !dbg !655
  %89 = load ptr, ptr %9, align 8, !dbg !656
  %90 = load ptr, ptr %10, align 8, !dbg !657
  %91 = load i32, ptr %90, align 4, !dbg !658
  %92 = getelementptr inbounds [2 x ptr], ptr %16, i64 0, i64 0, !dbg !659
  call void %87(ptr noundef %88, ptr noundef %89, i32 noundef %91, ptr noundef %92), !dbg !660
  br label %93

93:                                               ; preds = %84, %25
  %94 = load i32, ptr %17, align 4, !dbg !661
  %95 = load ptr, ptr %13, align 8, !dbg !662
  %96 = load i32, ptr %95, align 4, !dbg !663
  %97 = add i32 %96, %94, !dbg !663
  store i32 %97, ptr %95, align 4, !dbg !663
  %98 = load i32, ptr %17, align 4, !dbg !664
  %99 = load ptr, ptr %15, align 8, !dbg !665
  %100 = getelementptr inbounds nuw %struct.my_upsampler, ptr %99, i32 0, i32 9, !dbg !666
  %101 = load i32, ptr %100, align 8, !dbg !667
  %102 = sub i32 %101, %98, !dbg !667
  store i32 %102, ptr %100, align 8, !dbg !667
  %103 = load ptr, ptr %15, align 8, !dbg !668
  %104 = getelementptr inbounds nuw %struct.my_upsampler, ptr %103, i32 0, i32 7, !dbg !670
  %105 = load i32, ptr %104, align 8, !dbg !670
  %106 = icmp ne i32 %105, 0, !dbg !668
  br i1 %106, label %111, label %107, !dbg !671

107:                                              ; preds = %93
  %108 = load ptr, ptr %10, align 8, !dbg !672
  %109 = load i32, ptr %108, align 4, !dbg !673
  %110 = add i32 %109, 1, !dbg !673
  store i32 %110, ptr %108, align 4, !dbg !673
  br label %111, !dbg !674

111:                                              ; preds = %107, %93
  ret void, !dbg !675
}

; Function Attrs: noinline nounwind uwtable
define internal void @h2v2_merged_upsample(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 !dbg !676 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  %19 = alloca ptr, align 8
  %20 = alloca ptr, align 8
  %21 = alloca ptr, align 8
  %22 = alloca i32, align 4
  %23 = alloca ptr, align 8
  %24 = alloca ptr, align 8
  %25 = alloca ptr, align 8
  %26 = alloca ptr, align 8
  %27 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
    #dbg_declare(ptr %5, !677, !DIExpression(), !678)
  store ptr %1, ptr %6, align 8
    #dbg_declare(ptr %6, !679, !DIExpression(), !680)
  store i32 %2, ptr %7, align 4
    #dbg_declare(ptr %7, !681, !DIExpression(), !682)
  store ptr %3, ptr %8, align 8
    #dbg_declare(ptr %8, !683, !DIExpression(), !684)
    #dbg_declare(ptr %9, !685, !DIExpression(), !686)
  %28 = load ptr, ptr %5, align 8, !dbg !687
  %29 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %28, i32 0, i32 81, !dbg !688
  %30 = load ptr, ptr %29, align 8, !dbg !688
  store ptr %30, ptr %9, align 8, !dbg !686
    #dbg_declare(ptr %10, !689, !DIExpression(), !690)
    #dbg_declare(ptr %11, !691, !DIExpression(), !692)
    #dbg_declare(ptr %12, !693, !DIExpression(), !694)
    #dbg_declare(ptr %13, !695, !DIExpression(), !696)
    #dbg_declare(ptr %14, !697, !DIExpression(), !698)
    #dbg_declare(ptr %15, !699, !DIExpression(), !700)
    #dbg_declare(ptr %16, !701, !DIExpression(), !702)
    #dbg_declare(ptr %17, !703, !DIExpression(), !704)
    #dbg_declare(ptr %18, !705, !DIExpression(), !706)
    #dbg_declare(ptr %19, !707, !DIExpression(), !708)
    #dbg_declare(ptr %20, !709, !DIExpression(), !710)
    #dbg_declare(ptr %21, !711, !DIExpression(), !712)
    #dbg_declare(ptr %22, !713, !DIExpression(), !714)
    #dbg_declare(ptr %23, !715, !DIExpression(), !716)
  %31 = load ptr, ptr %5, align 8, !dbg !717
  %32 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %31, i32 0, i32 61, !dbg !718
  %33 = load ptr, ptr %32, align 8, !dbg !718
  store ptr %33, ptr %23, align 8, !dbg !716
    #dbg_declare(ptr %24, !719, !DIExpression(), !720)
  %34 = load ptr, ptr %9, align 8, !dbg !721
  %35 = getelementptr inbounds nuw %struct.my_upsampler, ptr %34, i32 0, i32 2, !dbg !722
  %36 = load ptr, ptr %35, align 8, !dbg !722
  store ptr %36, ptr %24, align 8, !dbg !720
    #dbg_declare(ptr %25, !723, !DIExpression(), !724)
  %37 = load ptr, ptr %9, align 8, !dbg !725
  %38 = getelementptr inbounds nuw %struct.my_upsampler, ptr %37, i32 0, i32 3, !dbg !726
  %39 = load ptr, ptr %38, align 8, !dbg !726
  store ptr %39, ptr %25, align 8, !dbg !724
    #dbg_declare(ptr %26, !727, !DIExpression(), !728)
  %40 = load ptr, ptr %9, align 8, !dbg !729
  %41 = getelementptr inbounds nuw %struct.my_upsampler, ptr %40, i32 0, i32 4, !dbg !730
  %42 = load ptr, ptr %41, align 8, !dbg !730
  store ptr %42, ptr %26, align 8, !dbg !728
    #dbg_declare(ptr %27, !731, !DIExpression(), !732)
  %43 = load ptr, ptr %9, align 8, !dbg !733
  %44 = getelementptr inbounds nuw %struct.my_upsampler, ptr %43, i32 0, i32 5, !dbg !734
  %45 = load ptr, ptr %44, align 8, !dbg !734
  store ptr %45, ptr %27, align 8, !dbg !732
  %46 = load ptr, ptr %6, align 8, !dbg !735
  %47 = getelementptr inbounds ptr, ptr %46, i64 0, !dbg !735
  %48 = load ptr, ptr %47, align 8, !dbg !735
  %49 = load i32, ptr %7, align 4, !dbg !736
  %50 = mul i32 %49, 2, !dbg !737
  %51 = zext i32 %50 to i64, !dbg !735
  %52 = getelementptr inbounds nuw ptr, ptr %48, i64 %51, !dbg !735
  %53 = load ptr, ptr %52, align 8, !dbg !735
  store ptr %53, ptr %18, align 8, !dbg !738
  %54 = load ptr, ptr %6, align 8, !dbg !739
  %55 = getelementptr inbounds ptr, ptr %54, i64 0, !dbg !739
  %56 = load ptr, ptr %55, align 8, !dbg !739
  %57 = load i32, ptr %7, align 4, !dbg !740
  %58 = mul i32 %57, 2, !dbg !741
  %59 = add i32 %58, 1, !dbg !742
  %60 = zext i32 %59 to i64, !dbg !739
  %61 = getelementptr inbounds nuw ptr, ptr %56, i64 %60, !dbg !739
  %62 = load ptr, ptr %61, align 8, !dbg !739
  store ptr %62, ptr %19, align 8, !dbg !743
  %63 = load ptr, ptr %6, align 8, !dbg !744
  %64 = getelementptr inbounds ptr, ptr %63, i64 1, !dbg !744
  %65 = load ptr, ptr %64, align 8, !dbg !744
  %66 = load i32, ptr %7, align 4, !dbg !745
  %67 = zext i32 %66 to i64, !dbg !744
  %68 = getelementptr inbounds nuw ptr, ptr %65, i64 %67, !dbg !744
  %69 = load ptr, ptr %68, align 8, !dbg !744
  store ptr %69, ptr %20, align 8, !dbg !746
  %70 = load ptr, ptr %6, align 8, !dbg !747
  %71 = getelementptr inbounds ptr, ptr %70, i64 2, !dbg !747
  %72 = load ptr, ptr %71, align 8, !dbg !747
  %73 = load i32, ptr %7, align 4, !dbg !748
  %74 = zext i32 %73 to i64, !dbg !747
  %75 = getelementptr inbounds nuw ptr, ptr %72, i64 %74, !dbg !747
  %76 = load ptr, ptr %75, align 8, !dbg !747
  store ptr %76, ptr %21, align 8, !dbg !749
  %77 = load ptr, ptr %8, align 8, !dbg !750
  %78 = getelementptr inbounds ptr, ptr %77, i64 0, !dbg !750
  %79 = load ptr, ptr %78, align 8, !dbg !750
  store ptr %79, ptr %16, align 8, !dbg !751
  %80 = load ptr, ptr %8, align 8, !dbg !752
  %81 = getelementptr inbounds ptr, ptr %80, i64 1, !dbg !752
  %82 = load ptr, ptr %81, align 8, !dbg !752
  store ptr %82, ptr %17, align 8, !dbg !753
  %83 = load ptr, ptr %5, align 8, !dbg !754
  %84 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %83, i32 0, i32 26, !dbg !756
  %85 = load i32, ptr %84, align 8, !dbg !756
  %86 = lshr i32 %85, 1, !dbg !757
  store i32 %86, ptr %22, align 4, !dbg !758
  br label %87, !dbg !759

87:                                               ; preds = %254, %4
  %88 = load i32, ptr %22, align 4, !dbg !760
  %89 = icmp ugt i32 %88, 0, !dbg !762
  br i1 %89, label %90, label %257, !dbg !763

90:                                               ; preds = %87
  %91 = load ptr, ptr %20, align 8, !dbg !764
  %92 = getelementptr inbounds nuw i8, ptr %91, i32 1, !dbg !764
  store ptr %92, ptr %20, align 8, !dbg !764
  %93 = load i8, ptr %91, align 1, !dbg !764
  %94 = zext i8 %93 to i32, !dbg !764
  store i32 %94, ptr %14, align 4, !dbg !766
  %95 = load ptr, ptr %21, align 8, !dbg !767
  %96 = getelementptr inbounds nuw i8, ptr %95, i32 1, !dbg !767
  store ptr %96, ptr %21, align 8, !dbg !767
  %97 = load i8, ptr %95, align 1, !dbg !767
  %98 = zext i8 %97 to i32, !dbg !767
  store i32 %98, ptr %15, align 4, !dbg !768
  %99 = load ptr, ptr %24, align 8, !dbg !769
  %100 = load i32, ptr %15, align 4, !dbg !770
  %101 = sext i32 %100 to i64, !dbg !769
  %102 = getelementptr inbounds i32, ptr %99, i64 %101, !dbg !769
  %103 = load i32, ptr %102, align 4, !dbg !769
  store i32 %103, ptr %11, align 4, !dbg !771
  %104 = load ptr, ptr %27, align 8, !dbg !772
  %105 = load i32, ptr %14, align 4, !dbg !772
  %106 = sext i32 %105 to i64, !dbg !772
  %107 = getelementptr inbounds i64, ptr %104, i64 %106, !dbg !772
  %108 = load i64, ptr %107, align 8, !dbg !772
  %109 = load ptr, ptr %26, align 8, !dbg !772
  %110 = load i32, ptr %15, align 4, !dbg !772
  %111 = sext i32 %110 to i64, !dbg !772
  %112 = getelementptr inbounds i64, ptr %109, i64 %111, !dbg !772
  %113 = load i64, ptr %112, align 8, !dbg !772
  %114 = add nsw i64 %108, %113, !dbg !772
  %115 = ashr i64 %114, 16, !dbg !772
  %116 = trunc i64 %115 to i32, !dbg !773
  store i32 %116, ptr %12, align 4, !dbg !774
  %117 = load ptr, ptr %25, align 8, !dbg !775
  %118 = load i32, ptr %14, align 4, !dbg !776
  %119 = sext i32 %118 to i64, !dbg !775
  %120 = getelementptr inbounds i32, ptr %117, i64 %119, !dbg !775
  %121 = load i32, ptr %120, align 4, !dbg !775
  store i32 %121, ptr %13, align 4, !dbg !777
  %122 = load ptr, ptr %18, align 8, !dbg !778
  %123 = getelementptr inbounds nuw i8, ptr %122, i32 1, !dbg !778
  store ptr %123, ptr %18, align 8, !dbg !778
  %124 = load i8, ptr %122, align 1, !dbg !778
  %125 = zext i8 %124 to i32, !dbg !778
  store i32 %125, ptr %10, align 4, !dbg !779
  %126 = load ptr, ptr %23, align 8, !dbg !780
  %127 = load i32, ptr %10, align 4, !dbg !781
  %128 = load i32, ptr %11, align 4, !dbg !782
  %129 = add nsw i32 %127, %128, !dbg !783
  %130 = sext i32 %129 to i64, !dbg !780
  %131 = getelementptr inbounds i8, ptr %126, i64 %130, !dbg !780
  %132 = load i8, ptr %131, align 1, !dbg !780
  %133 = load ptr, ptr %16, align 8, !dbg !784
  %134 = getelementptr inbounds i8, ptr %133, i64 0, !dbg !784
  store i8 %132, ptr %134, align 1, !dbg !785
  %135 = load ptr, ptr %23, align 8, !dbg !786
  %136 = load i32, ptr %10, align 4, !dbg !787
  %137 = load i32, ptr %12, align 4, !dbg !788
  %138 = add nsw i32 %136, %137, !dbg !789
  %139 = sext i32 %138 to i64, !dbg !786
  %140 = getelementptr inbounds i8, ptr %135, i64 %139, !dbg !786
  %141 = load i8, ptr %140, align 1, !dbg !786
  %142 = load ptr, ptr %16, align 8, !dbg !790
  %143 = getelementptr inbounds i8, ptr %142, i64 1, !dbg !790
  store i8 %141, ptr %143, align 1, !dbg !791
  %144 = load ptr, ptr %23, align 8, !dbg !792
  %145 = load i32, ptr %10, align 4, !dbg !793
  %146 = load i32, ptr %13, align 4, !dbg !794
  %147 = add nsw i32 %145, %146, !dbg !795
  %148 = sext i32 %147 to i64, !dbg !792
  %149 = getelementptr inbounds i8, ptr %144, i64 %148, !dbg !792
  %150 = load i8, ptr %149, align 1, !dbg !792
  %151 = load ptr, ptr %16, align 8, !dbg !796
  %152 = getelementptr inbounds i8, ptr %151, i64 2, !dbg !796
  store i8 %150, ptr %152, align 1, !dbg !797
  %153 = load ptr, ptr %16, align 8, !dbg !798
  %154 = getelementptr inbounds i8, ptr %153, i64 3, !dbg !798
  store ptr %154, ptr %16, align 8, !dbg !798
  %155 = load ptr, ptr %18, align 8, !dbg !799
  %156 = getelementptr inbounds nuw i8, ptr %155, i32 1, !dbg !799
  store ptr %156, ptr %18, align 8, !dbg !799
  %157 = load i8, ptr %155, align 1, !dbg !799
  %158 = zext i8 %157 to i32, !dbg !799
  store i32 %158, ptr %10, align 4, !dbg !800
  %159 = load ptr, ptr %23, align 8, !dbg !801
  %160 = load i32, ptr %10, align 4, !dbg !802
  %161 = load i32, ptr %11, align 4, !dbg !803
  %162 = add nsw i32 %160, %161, !dbg !804
  %163 = sext i32 %162 to i64, !dbg !801
  %164 = getelementptr inbounds i8, ptr %159, i64 %163, !dbg !801
  %165 = load i8, ptr %164, align 1, !dbg !801
  %166 = load ptr, ptr %16, align 8, !dbg !805
  %167 = getelementptr inbounds i8, ptr %166, i64 0, !dbg !805
  store i8 %165, ptr %167, align 1, !dbg !806
  %168 = load ptr, ptr %23, align 8, !dbg !807
  %169 = load i32, ptr %10, align 4, !dbg !808
  %170 = load i32, ptr %12, align 4, !dbg !809
  %171 = add nsw i32 %169, %170, !dbg !810
  %172 = sext i32 %171 to i64, !dbg !807
  %173 = getelementptr inbounds i8, ptr %168, i64 %172, !dbg !807
  %174 = load i8, ptr %173, align 1, !dbg !807
  %175 = load ptr, ptr %16, align 8, !dbg !811
  %176 = getelementptr inbounds i8, ptr %175, i64 1, !dbg !811
  store i8 %174, ptr %176, align 1, !dbg !812
  %177 = load ptr, ptr %23, align 8, !dbg !813
  %178 = load i32, ptr %10, align 4, !dbg !814
  %179 = load i32, ptr %13, align 4, !dbg !815
  %180 = add nsw i32 %178, %179, !dbg !816
  %181 = sext i32 %180 to i64, !dbg !813
  %182 = getelementptr inbounds i8, ptr %177, i64 %181, !dbg !813
  %183 = load i8, ptr %182, align 1, !dbg !813
  %184 = load ptr, ptr %16, align 8, !dbg !817
  %185 = getelementptr inbounds i8, ptr %184, i64 2, !dbg !817
  store i8 %183, ptr %185, align 1, !dbg !818
  %186 = load ptr, ptr %16, align 8, !dbg !819
  %187 = getelementptr inbounds i8, ptr %186, i64 3, !dbg !819
  store ptr %187, ptr %16, align 8, !dbg !819
  %188 = load ptr, ptr %19, align 8, !dbg !820
  %189 = getelementptr inbounds nuw i8, ptr %188, i32 1, !dbg !820
  store ptr %189, ptr %19, align 8, !dbg !820
  %190 = load i8, ptr %188, align 1, !dbg !820
  %191 = zext i8 %190 to i32, !dbg !820
  store i32 %191, ptr %10, align 4, !dbg !821
  %192 = load ptr, ptr %23, align 8, !dbg !822
  %193 = load i32, ptr %10, align 4, !dbg !823
  %194 = load i32, ptr %11, align 4, !dbg !824
  %195 = add nsw i32 %193, %194, !dbg !825
  %196 = sext i32 %195 to i64, !dbg !822
  %197 = getelementptr inbounds i8, ptr %192, i64 %196, !dbg !822
  %198 = load i8, ptr %197, align 1, !dbg !822
  %199 = load ptr, ptr %17, align 8, !dbg !826
  %200 = getelementptr inbounds i8, ptr %199, i64 0, !dbg !826
  store i8 %198, ptr %200, align 1, !dbg !827
  %201 = load ptr, ptr %23, align 8, !dbg !828
  %202 = load i32, ptr %10, align 4, !dbg !829
  %203 = load i32, ptr %12, align 4, !dbg !830
  %204 = add nsw i32 %202, %203, !dbg !831
  %205 = sext i32 %204 to i64, !dbg !828
  %206 = getelementptr inbounds i8, ptr %201, i64 %205, !dbg !828
  %207 = load i8, ptr %206, align 1, !dbg !828
  %208 = load ptr, ptr %17, align 8, !dbg !832
  %209 = getelementptr inbounds i8, ptr %208, i64 1, !dbg !832
  store i8 %207, ptr %209, align 1, !dbg !833
  %210 = load ptr, ptr %23, align 8, !dbg !834
  %211 = load i32, ptr %10, align 4, !dbg !835
  %212 = load i32, ptr %13, align 4, !dbg !836
  %213 = add nsw i32 %211, %212, !dbg !837
  %214 = sext i32 %213 to i64, !dbg !834
  %215 = getelementptr inbounds i8, ptr %210, i64 %214, !dbg !834
  %216 = load i8, ptr %215, align 1, !dbg !834
  %217 = load ptr, ptr %17, align 8, !dbg !838
  %218 = getelementptr inbounds i8, ptr %217, i64 2, !dbg !838
  store i8 %216, ptr %218, align 1, !dbg !839
  %219 = load ptr, ptr %17, align 8, !dbg !840
  %220 = getelementptr inbounds i8, ptr %219, i64 3, !dbg !840
  store ptr %220, ptr %17, align 8, !dbg !840
  %221 = load ptr, ptr %19, align 8, !dbg !841
  %222 = getelementptr inbounds nuw i8, ptr %221, i32 1, !dbg !841
  store ptr %222, ptr %19, align 8, !dbg !841
  %223 = load i8, ptr %221, align 1, !dbg !841
  %224 = zext i8 %223 to i32, !dbg !841
  store i32 %224, ptr %10, align 4, !dbg !842
  %225 = load ptr, ptr %23, align 8, !dbg !843
  %226 = load i32, ptr %10, align 4, !dbg !844
  %227 = load i32, ptr %11, align 4, !dbg !845
  %228 = add nsw i32 %226, %227, !dbg !846
  %229 = sext i32 %228 to i64, !dbg !843
  %230 = getelementptr inbounds i8, ptr %225, i64 %229, !dbg !843
  %231 = load i8, ptr %230, align 1, !dbg !843
  %232 = load ptr, ptr %17, align 8, !dbg !847
  %233 = getelementptr inbounds i8, ptr %232, i64 0, !dbg !847
  store i8 %231, ptr %233, align 1, !dbg !848
  %234 = load ptr, ptr %23, align 8, !dbg !849
  %235 = load i32, ptr %10, align 4, !dbg !850
  %236 = load i32, ptr %12, align 4, !dbg !851
  %237 = add nsw i32 %235, %236, !dbg !852
  %238 = sext i32 %237 to i64, !dbg !849
  %239 = getelementptr inbounds i8, ptr %234, i64 %238, !dbg !849
  %240 = load i8, ptr %239, align 1, !dbg !849
  %241 = load ptr, ptr %17, align 8, !dbg !853
  %242 = getelementptr inbounds i8, ptr %241, i64 1, !dbg !853
  store i8 %240, ptr %242, align 1, !dbg !854
  %243 = load ptr, ptr %23, align 8, !dbg !855
  %244 = load i32, ptr %10, align 4, !dbg !856
  %245 = load i32, ptr %13, align 4, !dbg !857
  %246 = add nsw i32 %244, %245, !dbg !858
  %247 = sext i32 %246 to i64, !dbg !855
  %248 = getelementptr inbounds i8, ptr %243, i64 %247, !dbg !855
  %249 = load i8, ptr %248, align 1, !dbg !855
  %250 = load ptr, ptr %17, align 8, !dbg !859
  %251 = getelementptr inbounds i8, ptr %250, i64 2, !dbg !859
  store i8 %249, ptr %251, align 1, !dbg !860
  %252 = load ptr, ptr %17, align 8, !dbg !861
  %253 = getelementptr inbounds i8, ptr %252, i64 3, !dbg !861
  store ptr %253, ptr %17, align 8, !dbg !861
  br label %254, !dbg !862

254:                                              ; preds = %90
  %255 = load i32, ptr %22, align 4, !dbg !863
  %256 = add i32 %255, -1, !dbg !863
  store i32 %256, ptr %22, align 4, !dbg !863
  br label %87, !dbg !864, !llvm.loop !865

257:                                              ; preds = %87
  %258 = load ptr, ptr %5, align 8, !dbg !868
  %259 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %258, i32 0, i32 26, !dbg !870
  %260 = load i32, ptr %259, align 8, !dbg !870
  %261 = and i32 %260, 1, !dbg !871
  %262 = icmp ne i32 %261, 0, !dbg !871
  br i1 %262, label %263, label %353, !dbg !871

263:                                              ; preds = %257
  %264 = load ptr, ptr %20, align 8, !dbg !872
  %265 = load i8, ptr %264, align 1, !dbg !872
  %266 = zext i8 %265 to i32, !dbg !872
  store i32 %266, ptr %14, align 4, !dbg !874
  %267 = load ptr, ptr %21, align 8, !dbg !875
  %268 = load i8, ptr %267, align 1, !dbg !875
  %269 = zext i8 %268 to i32, !dbg !875
  store i32 %269, ptr %15, align 4, !dbg !876
  %270 = load ptr, ptr %24, align 8, !dbg !877
  %271 = load i32, ptr %15, align 4, !dbg !878
  %272 = sext i32 %271 to i64, !dbg !877
  %273 = getelementptr inbounds i32, ptr %270, i64 %272, !dbg !877
  %274 = load i32, ptr %273, align 4, !dbg !877
  store i32 %274, ptr %11, align 4, !dbg !879
  %275 = load ptr, ptr %27, align 8, !dbg !880
  %276 = load i32, ptr %14, align 4, !dbg !880
  %277 = sext i32 %276 to i64, !dbg !880
  %278 = getelementptr inbounds i64, ptr %275, i64 %277, !dbg !880
  %279 = load i64, ptr %278, align 8, !dbg !880
  %280 = load ptr, ptr %26, align 8, !dbg !880
  %281 = load i32, ptr %15, align 4, !dbg !880
  %282 = sext i32 %281 to i64, !dbg !880
  %283 = getelementptr inbounds i64, ptr %280, i64 %282, !dbg !880
  %284 = load i64, ptr %283, align 8, !dbg !880
  %285 = add nsw i64 %279, %284, !dbg !880
  %286 = ashr i64 %285, 16, !dbg !880
  %287 = trunc i64 %286 to i32, !dbg !881
  store i32 %287, ptr %12, align 4, !dbg !882
  %288 = load ptr, ptr %25, align 8, !dbg !883
  %289 = load i32, ptr %14, align 4, !dbg !884
  %290 = sext i32 %289 to i64, !dbg !883
  %291 = getelementptr inbounds i32, ptr %288, i64 %290, !dbg !883
  %292 = load i32, ptr %291, align 4, !dbg !883
  store i32 %292, ptr %13, align 4, !dbg !885
  %293 = load ptr, ptr %18, align 8, !dbg !886
  %294 = load i8, ptr %293, align 1, !dbg !886
  %295 = zext i8 %294 to i32, !dbg !886
  store i32 %295, ptr %10, align 4, !dbg !887
  %296 = load ptr, ptr %23, align 8, !dbg !888
  %297 = load i32, ptr %10, align 4, !dbg !889
  %298 = load i32, ptr %11, align 4, !dbg !890
  %299 = add nsw i32 %297, %298, !dbg !891
  %300 = sext i32 %299 to i64, !dbg !888
  %301 = getelementptr inbounds i8, ptr %296, i64 %300, !dbg !888
  %302 = load i8, ptr %301, align 1, !dbg !888
  %303 = load ptr, ptr %16, align 8, !dbg !892
  %304 = getelementptr inbounds i8, ptr %303, i64 0, !dbg !892
  store i8 %302, ptr %304, align 1, !dbg !893
  %305 = load ptr, ptr %23, align 8, !dbg !894
  %306 = load i32, ptr %10, align 4, !dbg !895
  %307 = load i32, ptr %12, align 4, !dbg !896
  %308 = add nsw i32 %306, %307, !dbg !897
  %309 = sext i32 %308 to i64, !dbg !894
  %310 = getelementptr inbounds i8, ptr %305, i64 %309, !dbg !894
  %311 = load i8, ptr %310, align 1, !dbg !894
  %312 = load ptr, ptr %16, align 8, !dbg !898
  %313 = getelementptr inbounds i8, ptr %312, i64 1, !dbg !898
  store i8 %311, ptr %313, align 1, !dbg !899
  %314 = load ptr, ptr %23, align 8, !dbg !900
  %315 = load i32, ptr %10, align 4, !dbg !901
  %316 = load i32, ptr %13, align 4, !dbg !902
  %317 = add nsw i32 %315, %316, !dbg !903
  %318 = sext i32 %317 to i64, !dbg !900
  %319 = getelementptr inbounds i8, ptr %314, i64 %318, !dbg !900
  %320 = load i8, ptr %319, align 1, !dbg !900
  %321 = load ptr, ptr %16, align 8, !dbg !904
  %322 = getelementptr inbounds i8, ptr %321, i64 2, !dbg !904
  store i8 %320, ptr %322, align 1, !dbg !905
  %323 = load ptr, ptr %19, align 8, !dbg !906
  %324 = load i8, ptr %323, align 1, !dbg !906
  %325 = zext i8 %324 to i32, !dbg !906
  store i32 %325, ptr %10, align 4, !dbg !907
  %326 = load ptr, ptr %23, align 8, !dbg !908
  %327 = load i32, ptr %10, align 4, !dbg !909
  %328 = load i32, ptr %11, align 4, !dbg !910
  %329 = add nsw i32 %327, %328, !dbg !911
  %330 = sext i32 %329 to i64, !dbg !908
  %331 = getelementptr inbounds i8, ptr %326, i64 %330, !dbg !908
  %332 = load i8, ptr %331, align 1, !dbg !908
  %333 = load ptr, ptr %17, align 8, !dbg !912
  %334 = getelementptr inbounds i8, ptr %333, i64 0, !dbg !912
  store i8 %332, ptr %334, align 1, !dbg !913
  %335 = load ptr, ptr %23, align 8, !dbg !914
  %336 = load i32, ptr %10, align 4, !dbg !915
  %337 = load i32, ptr %12, align 4, !dbg !916
  %338 = add nsw i32 %336, %337, !dbg !917
  %339 = sext i32 %338 to i64, !dbg !914
  %340 = getelementptr inbounds i8, ptr %335, i64 %339, !dbg !914
  %341 = load i8, ptr %340, align 1, !dbg !914
  %342 = load ptr, ptr %17, align 8, !dbg !918
  %343 = getelementptr inbounds i8, ptr %342, i64 1, !dbg !918
  store i8 %341, ptr %343, align 1, !dbg !919
  %344 = load ptr, ptr %23, align 8, !dbg !920
  %345 = load i32, ptr %10, align 4, !dbg !921
  %346 = load i32, ptr %13, align 4, !dbg !922
  %347 = add nsw i32 %345, %346, !dbg !923
  %348 = sext i32 %347 to i64, !dbg !920
  %349 = getelementptr inbounds i8, ptr %344, i64 %348, !dbg !920
  %350 = load i8, ptr %349, align 1, !dbg !920
  %351 = load ptr, ptr %17, align 8, !dbg !924
  %352 = getelementptr inbounds i8, ptr %351, i64 2, !dbg !924
  store i8 %350, ptr %352, align 1, !dbg !925
  br label %353, !dbg !926

353:                                              ; preds = %263, %257
  ret void, !dbg !927
}

; Function Attrs: noinline nounwind uwtable
define internal void @merged_1v_upsample(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6) #0 !dbg !928 {
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca i32, align 4
  %15 = alloca ptr, align 8
  store ptr %0, ptr %8, align 8
    #dbg_declare(ptr %8, !929, !DIExpression(), !930)
  store ptr %1, ptr %9, align 8
    #dbg_declare(ptr %9, !931, !DIExpression(), !932)
  store ptr %2, ptr %10, align 8
    #dbg_declare(ptr %10, !933, !DIExpression(), !934)
  store i32 %3, ptr %11, align 4
    #dbg_declare(ptr %11, !935, !DIExpression(), !936)
  store ptr %4, ptr %12, align 8
    #dbg_declare(ptr %12, !937, !DIExpression(), !938)
  store ptr %5, ptr %13, align 8
    #dbg_declare(ptr %13, !939, !DIExpression(), !940)
  store i32 %6, ptr %14, align 4
    #dbg_declare(ptr %14, !941, !DIExpression(), !942)
    #dbg_declare(ptr %15, !943, !DIExpression(), !944)
  %16 = load ptr, ptr %8, align 8, !dbg !945
  %17 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %16, i32 0, i32 81, !dbg !946
  %18 = load ptr, ptr %17, align 8, !dbg !946
  store ptr %18, ptr %15, align 8, !dbg !944
  %19 = load ptr, ptr %15, align 8, !dbg !947
  %20 = getelementptr inbounds nuw %struct.my_upsampler, ptr %19, i32 0, i32 1, !dbg !948
  %21 = load ptr, ptr %20, align 8, !dbg !948
  %22 = load ptr, ptr %8, align 8, !dbg !949
  %23 = load ptr, ptr %9, align 8, !dbg !950
  %24 = load ptr, ptr %10, align 8, !dbg !951
  %25 = load i32, ptr %24, align 4, !dbg !952
  %26 = load ptr, ptr %12, align 8, !dbg !953
  %27 = load ptr, ptr %13, align 8, !dbg !954
  %28 = load i32, ptr %27, align 4, !dbg !955
  %29 = zext i32 %28 to i64, !dbg !956
  %30 = getelementptr inbounds nuw ptr, ptr %26, i64 %29, !dbg !956
  call void %21(ptr noundef %22, ptr noundef %23, i32 noundef %25, ptr noundef %30), !dbg !957
  %31 = load ptr, ptr %13, align 8, !dbg !958
  %32 = load i32, ptr %31, align 4, !dbg !959
  %33 = add i32 %32, 1, !dbg !959
  store i32 %33, ptr %31, align 4, !dbg !959
  %34 = load ptr, ptr %10, align 8, !dbg !960
  %35 = load i32, ptr %34, align 4, !dbg !961
  %36 = add i32 %35, 1, !dbg !961
  store i32 %36, ptr %34, align 4, !dbg !961
  ret void, !dbg !962
}

; Function Attrs: noinline nounwind uwtable
define internal void @h2v1_merged_upsample(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 !dbg !963 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  %19 = alloca ptr, align 8
  %20 = alloca i32, align 4
  %21 = alloca ptr, align 8
  %22 = alloca ptr, align 8
  %23 = alloca ptr, align 8
  %24 = alloca ptr, align 8
  %25 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
    #dbg_declare(ptr %5, !964, !DIExpression(), !965)
  store ptr %1, ptr %6, align 8
    #dbg_declare(ptr %6, !966, !DIExpression(), !967)
  store i32 %2, ptr %7, align 4
    #dbg_declare(ptr %7, !968, !DIExpression(), !969)
  store ptr %3, ptr %8, align 8
    #dbg_declare(ptr %8, !970, !DIExpression(), !971)
    #dbg_declare(ptr %9, !972, !DIExpression(), !973)
  %26 = load ptr, ptr %5, align 8, !dbg !974
  %27 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %26, i32 0, i32 81, !dbg !975
  %28 = load ptr, ptr %27, align 8, !dbg !975
  store ptr %28, ptr %9, align 8, !dbg !973
    #dbg_declare(ptr %10, !976, !DIExpression(), !977)
    #dbg_declare(ptr %11, !978, !DIExpression(), !979)
    #dbg_declare(ptr %12, !980, !DIExpression(), !981)
    #dbg_declare(ptr %13, !982, !DIExpression(), !983)
    #dbg_declare(ptr %14, !984, !DIExpression(), !985)
    #dbg_declare(ptr %15, !986, !DIExpression(), !987)
    #dbg_declare(ptr %16, !988, !DIExpression(), !989)
    #dbg_declare(ptr %17, !990, !DIExpression(), !991)
    #dbg_declare(ptr %18, !992, !DIExpression(), !993)
    #dbg_declare(ptr %19, !994, !DIExpression(), !995)
    #dbg_declare(ptr %20, !996, !DIExpression(), !997)
    #dbg_declare(ptr %21, !998, !DIExpression(), !999)
  %29 = load ptr, ptr %5, align 8, !dbg !1000
  %30 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %29, i32 0, i32 61, !dbg !1001
  %31 = load ptr, ptr %30, align 8, !dbg !1001
  store ptr %31, ptr %21, align 8, !dbg !999
    #dbg_declare(ptr %22, !1002, !DIExpression(), !1003)
  %32 = load ptr, ptr %9, align 8, !dbg !1004
  %33 = getelementptr inbounds nuw %struct.my_upsampler, ptr %32, i32 0, i32 2, !dbg !1005
  %34 = load ptr, ptr %33, align 8, !dbg !1005
  store ptr %34, ptr %22, align 8, !dbg !1003
    #dbg_declare(ptr %23, !1006, !DIExpression(), !1007)
  %35 = load ptr, ptr %9, align 8, !dbg !1008
  %36 = getelementptr inbounds nuw %struct.my_upsampler, ptr %35, i32 0, i32 3, !dbg !1009
  %37 = load ptr, ptr %36, align 8, !dbg !1009
  store ptr %37, ptr %23, align 8, !dbg !1007
    #dbg_declare(ptr %24, !1010, !DIExpression(), !1011)
  %38 = load ptr, ptr %9, align 8, !dbg !1012
  %39 = getelementptr inbounds nuw %struct.my_upsampler, ptr %38, i32 0, i32 4, !dbg !1013
  %40 = load ptr, ptr %39, align 8, !dbg !1013
  store ptr %40, ptr %24, align 8, !dbg !1011
    #dbg_declare(ptr %25, !1014, !DIExpression(), !1015)
  %41 = load ptr, ptr %9, align 8, !dbg !1016
  %42 = getelementptr inbounds nuw %struct.my_upsampler, ptr %41, i32 0, i32 5, !dbg !1017
  %43 = load ptr, ptr %42, align 8, !dbg !1017
  store ptr %43, ptr %25, align 8, !dbg !1015
  %44 = load ptr, ptr %6, align 8, !dbg !1018
  %45 = getelementptr inbounds ptr, ptr %44, i64 0, !dbg !1018
  %46 = load ptr, ptr %45, align 8, !dbg !1018
  %47 = load i32, ptr %7, align 4, !dbg !1019
  %48 = zext i32 %47 to i64, !dbg !1018
  %49 = getelementptr inbounds nuw ptr, ptr %46, i64 %48, !dbg !1018
  %50 = load ptr, ptr %49, align 8, !dbg !1018
  store ptr %50, ptr %17, align 8, !dbg !1020
  %51 = load ptr, ptr %6, align 8, !dbg !1021
  %52 = getelementptr inbounds ptr, ptr %51, i64 1, !dbg !1021
  %53 = load ptr, ptr %52, align 8, !dbg !1021
  %54 = load i32, ptr %7, align 4, !dbg !1022
  %55 = zext i32 %54 to i64, !dbg !1021
  %56 = getelementptr inbounds nuw ptr, ptr %53, i64 %55, !dbg !1021
  %57 = load ptr, ptr %56, align 8, !dbg !1021
  store ptr %57, ptr %18, align 8, !dbg !1023
  %58 = load ptr, ptr %6, align 8, !dbg !1024
  %59 = getelementptr inbounds ptr, ptr %58, i64 2, !dbg !1024
  %60 = load ptr, ptr %59, align 8, !dbg !1024
  %61 = load i32, ptr %7, align 4, !dbg !1025
  %62 = zext i32 %61 to i64, !dbg !1024
  %63 = getelementptr inbounds nuw ptr, ptr %60, i64 %62, !dbg !1024
  %64 = load ptr, ptr %63, align 8, !dbg !1024
  store ptr %64, ptr %19, align 8, !dbg !1026
  %65 = load ptr, ptr %8, align 8, !dbg !1027
  %66 = getelementptr inbounds ptr, ptr %65, i64 0, !dbg !1027
  %67 = load ptr, ptr %66, align 8, !dbg !1027
  store ptr %67, ptr %16, align 8, !dbg !1028
  %68 = load ptr, ptr %5, align 8, !dbg !1029
  %69 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %68, i32 0, i32 26, !dbg !1031
  %70 = load i32, ptr %69, align 8, !dbg !1031
  %71 = lshr i32 %70, 1, !dbg !1032
  store i32 %71, ptr %20, align 4, !dbg !1033
  br label %72, !dbg !1034

72:                                               ; preds = %173, %4
  %73 = load i32, ptr %20, align 4, !dbg !1035
  %74 = icmp ugt i32 %73, 0, !dbg !1037
  br i1 %74, label %75, label %176, !dbg !1038

75:                                               ; preds = %72
  %76 = load ptr, ptr %18, align 8, !dbg !1039
  %77 = getelementptr inbounds nuw i8, ptr %76, i32 1, !dbg !1039
  store ptr %77, ptr %18, align 8, !dbg !1039
  %78 = load i8, ptr %76, align 1, !dbg !1039
  %79 = zext i8 %78 to i32, !dbg !1039
  store i32 %79, ptr %14, align 4, !dbg !1041
  %80 = load ptr, ptr %19, align 8, !dbg !1042
  %81 = getelementptr inbounds nuw i8, ptr %80, i32 1, !dbg !1042
  store ptr %81, ptr %19, align 8, !dbg !1042
  %82 = load i8, ptr %80, align 1, !dbg !1042
  %83 = zext i8 %82 to i32, !dbg !1042
  store i32 %83, ptr %15, align 4, !dbg !1043
  %84 = load ptr, ptr %22, align 8, !dbg !1044
  %85 = load i32, ptr %15, align 4, !dbg !1045
  %86 = sext i32 %85 to i64, !dbg !1044
  %87 = getelementptr inbounds i32, ptr %84, i64 %86, !dbg !1044
  %88 = load i32, ptr %87, align 4, !dbg !1044
  store i32 %88, ptr %11, align 4, !dbg !1046
  %89 = load ptr, ptr %25, align 8, !dbg !1047
  %90 = load i32, ptr %14, align 4, !dbg !1047
  %91 = sext i32 %90 to i64, !dbg !1047
  %92 = getelementptr inbounds i64, ptr %89, i64 %91, !dbg !1047
  %93 = load i64, ptr %92, align 8, !dbg !1047
  %94 = load ptr, ptr %24, align 8, !dbg !1047
  %95 = load i32, ptr %15, align 4, !dbg !1047
  %96 = sext i32 %95 to i64, !dbg !1047
  %97 = getelementptr inbounds i64, ptr %94, i64 %96, !dbg !1047
  %98 = load i64, ptr %97, align 8, !dbg !1047
  %99 = add nsw i64 %93, %98, !dbg !1047
  %100 = ashr i64 %99, 16, !dbg !1047
  %101 = trunc i64 %100 to i32, !dbg !1048
  store i32 %101, ptr %12, align 4, !dbg !1049
  %102 = load ptr, ptr %23, align 8, !dbg !1050
  %103 = load i32, ptr %14, align 4, !dbg !1051
  %104 = sext i32 %103 to i64, !dbg !1050
  %105 = getelementptr inbounds i32, ptr %102, i64 %104, !dbg !1050
  %106 = load i32, ptr %105, align 4, !dbg !1050
  store i32 %106, ptr %13, align 4, !dbg !1052
  %107 = load ptr, ptr %17, align 8, !dbg !1053
  %108 = getelementptr inbounds nuw i8, ptr %107, i32 1, !dbg !1053
  store ptr %108, ptr %17, align 8, !dbg !1053
  %109 = load i8, ptr %107, align 1, !dbg !1053
  %110 = zext i8 %109 to i32, !dbg !1053
  store i32 %110, ptr %10, align 4, !dbg !1054
  %111 = load ptr, ptr %21, align 8, !dbg !1055
  %112 = load i32, ptr %10, align 4, !dbg !1056
  %113 = load i32, ptr %11, align 4, !dbg !1057
  %114 = add nsw i32 %112, %113, !dbg !1058
  %115 = sext i32 %114 to i64, !dbg !1055
  %116 = getelementptr inbounds i8, ptr %111, i64 %115, !dbg !1055
  %117 = load i8, ptr %116, align 1, !dbg !1055
  %118 = load ptr, ptr %16, align 8, !dbg !1059
  %119 = getelementptr inbounds i8, ptr %118, i64 0, !dbg !1059
  store i8 %117, ptr %119, align 1, !dbg !1060
  %120 = load ptr, ptr %21, align 8, !dbg !1061
  %121 = load i32, ptr %10, align 4, !dbg !1062
  %122 = load i32, ptr %12, align 4, !dbg !1063
  %123 = add nsw i32 %121, %122, !dbg !1064
  %124 = sext i32 %123 to i64, !dbg !1061
  %125 = getelementptr inbounds i8, ptr %120, i64 %124, !dbg !1061
  %126 = load i8, ptr %125, align 1, !dbg !1061
  %127 = load ptr, ptr %16, align 8, !dbg !1065
  %128 = getelementptr inbounds i8, ptr %127, i64 1, !dbg !1065
  store i8 %126, ptr %128, align 1, !dbg !1066
  %129 = load ptr, ptr %21, align 8, !dbg !1067
  %130 = load i32, ptr %10, align 4, !dbg !1068
  %131 = load i32, ptr %13, align 4, !dbg !1069
  %132 = add nsw i32 %130, %131, !dbg !1070
  %133 = sext i32 %132 to i64, !dbg !1067
  %134 = getelementptr inbounds i8, ptr %129, i64 %133, !dbg !1067
  %135 = load i8, ptr %134, align 1, !dbg !1067
  %136 = load ptr, ptr %16, align 8, !dbg !1071
  %137 = getelementptr inbounds i8, ptr %136, i64 2, !dbg !1071
  store i8 %135, ptr %137, align 1, !dbg !1072
  %138 = load ptr, ptr %16, align 8, !dbg !1073
  %139 = getelementptr inbounds i8, ptr %138, i64 3, !dbg !1073
  store ptr %139, ptr %16, align 8, !dbg !1073
  %140 = load ptr, ptr %17, align 8, !dbg !1074
  %141 = getelementptr inbounds nuw i8, ptr %140, i32 1, !dbg !1074
  store ptr %141, ptr %17, align 8, !dbg !1074
  %142 = load i8, ptr %140, align 1, !dbg !1074
  %143 = zext i8 %142 to i32, !dbg !1074
  store i32 %143, ptr %10, align 4, !dbg !1075
  %144 = load ptr, ptr %21, align 8, !dbg !1076
  %145 = load i32, ptr %10, align 4, !dbg !1077
  %146 = load i32, ptr %11, align 4, !dbg !1078
  %147 = add nsw i32 %145, %146, !dbg !1079
  %148 = sext i32 %147 to i64, !dbg !1076
  %149 = getelementptr inbounds i8, ptr %144, i64 %148, !dbg !1076
  %150 = load i8, ptr %149, align 1, !dbg !1076
  %151 = load ptr, ptr %16, align 8, !dbg !1080
  %152 = getelementptr inbounds i8, ptr %151, i64 0, !dbg !1080
  store i8 %150, ptr %152, align 1, !dbg !1081
  %153 = load ptr, ptr %21, align 8, !dbg !1082
  %154 = load i32, ptr %10, align 4, !dbg !1083
  %155 = load i32, ptr %12, align 4, !dbg !1084
  %156 = add nsw i32 %154, %155, !dbg !1085
  %157 = sext i32 %156 to i64, !dbg !1082
  %158 = getelementptr inbounds i8, ptr %153, i64 %157, !dbg !1082
  %159 = load i8, ptr %158, align 1, !dbg !1082
  %160 = load ptr, ptr %16, align 8, !dbg !1086
  %161 = getelementptr inbounds i8, ptr %160, i64 1, !dbg !1086
  store i8 %159, ptr %161, align 1, !dbg !1087
  %162 = load ptr, ptr %21, align 8, !dbg !1088
  %163 = load i32, ptr %10, align 4, !dbg !1089
  %164 = load i32, ptr %13, align 4, !dbg !1090
  %165 = add nsw i32 %163, %164, !dbg !1091
  %166 = sext i32 %165 to i64, !dbg !1088
  %167 = getelementptr inbounds i8, ptr %162, i64 %166, !dbg !1088
  %168 = load i8, ptr %167, align 1, !dbg !1088
  %169 = load ptr, ptr %16, align 8, !dbg !1092
  %170 = getelementptr inbounds i8, ptr %169, i64 2, !dbg !1092
  store i8 %168, ptr %170, align 1, !dbg !1093
  %171 = load ptr, ptr %16, align 8, !dbg !1094
  %172 = getelementptr inbounds i8, ptr %171, i64 3, !dbg !1094
  store ptr %172, ptr %16, align 8, !dbg !1094
  br label %173, !dbg !1095

173:                                              ; preds = %75
  %174 = load i32, ptr %20, align 4, !dbg !1096
  %175 = add i32 %174, -1, !dbg !1096
  store i32 %175, ptr %20, align 4, !dbg !1096
  br label %72, !dbg !1097, !llvm.loop !1098

176:                                              ; preds = %72
  %177 = load ptr, ptr %5, align 8, !dbg !1100
  %178 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %177, i32 0, i32 26, !dbg !1102
  %179 = load i32, ptr %178, align 8, !dbg !1102
  %180 = and i32 %179, 1, !dbg !1103
  %181 = icmp ne i32 %180, 0, !dbg !1103
  br i1 %181, label %182, label %242, !dbg !1103

182:                                              ; preds = %176
  %183 = load ptr, ptr %18, align 8, !dbg !1104
  %184 = load i8, ptr %183, align 1, !dbg !1104
  %185 = zext i8 %184 to i32, !dbg !1104
  store i32 %185, ptr %14, align 4, !dbg !1106
  %186 = load ptr, ptr %19, align 8, !dbg !1107
  %187 = load i8, ptr %186, align 1, !dbg !1107
  %188 = zext i8 %187 to i32, !dbg !1107
  store i32 %188, ptr %15, align 4, !dbg !1108
  %189 = load ptr, ptr %22, align 8, !dbg !1109
  %190 = load i32, ptr %15, align 4, !dbg !1110
  %191 = sext i32 %190 to i64, !dbg !1109
  %192 = getelementptr inbounds i32, ptr %189, i64 %191, !dbg !1109
  %193 = load i32, ptr %192, align 4, !dbg !1109
  store i32 %193, ptr %11, align 4, !dbg !1111
  %194 = load ptr, ptr %25, align 8, !dbg !1112
  %195 = load i32, ptr %14, align 4, !dbg !1112
  %196 = sext i32 %195 to i64, !dbg !1112
  %197 = getelementptr inbounds i64, ptr %194, i64 %196, !dbg !1112
  %198 = load i64, ptr %197, align 8, !dbg !1112
  %199 = load ptr, ptr %24, align 8, !dbg !1112
  %200 = load i32, ptr %15, align 4, !dbg !1112
  %201 = sext i32 %200 to i64, !dbg !1112
  %202 = getelementptr inbounds i64, ptr %199, i64 %201, !dbg !1112
  %203 = load i64, ptr %202, align 8, !dbg !1112
  %204 = add nsw i64 %198, %203, !dbg !1112
  %205 = ashr i64 %204, 16, !dbg !1112
  %206 = trunc i64 %205 to i32, !dbg !1113
  store i32 %206, ptr %12, align 4, !dbg !1114
  %207 = load ptr, ptr %23, align 8, !dbg !1115
  %208 = load i32, ptr %14, align 4, !dbg !1116
  %209 = sext i32 %208 to i64, !dbg !1115
  %210 = getelementptr inbounds i32, ptr %207, i64 %209, !dbg !1115
  %211 = load i32, ptr %210, align 4, !dbg !1115
  store i32 %211, ptr %13, align 4, !dbg !1117
  %212 = load ptr, ptr %17, align 8, !dbg !1118
  %213 = load i8, ptr %212, align 1, !dbg !1118
  %214 = zext i8 %213 to i32, !dbg !1118
  store i32 %214, ptr %10, align 4, !dbg !1119
  %215 = load ptr, ptr %21, align 8, !dbg !1120
  %216 = load i32, ptr %10, align 4, !dbg !1121
  %217 = load i32, ptr %11, align 4, !dbg !1122
  %218 = add nsw i32 %216, %217, !dbg !1123
  %219 = sext i32 %218 to i64, !dbg !1120
  %220 = getelementptr inbounds i8, ptr %215, i64 %219, !dbg !1120
  %221 = load i8, ptr %220, align 1, !dbg !1120
  %222 = load ptr, ptr %16, align 8, !dbg !1124
  %223 = getelementptr inbounds i8, ptr %222, i64 0, !dbg !1124
  store i8 %221, ptr %223, align 1, !dbg !1125
  %224 = load ptr, ptr %21, align 8, !dbg !1126
  %225 = load i32, ptr %10, align 4, !dbg !1127
  %226 = load i32, ptr %12, align 4, !dbg !1128
  %227 = add nsw i32 %225, %226, !dbg !1129
  %228 = sext i32 %227 to i64, !dbg !1126
  %229 = getelementptr inbounds i8, ptr %224, i64 %228, !dbg !1126
  %230 = load i8, ptr %229, align 1, !dbg !1126
  %231 = load ptr, ptr %16, align 8, !dbg !1130
  %232 = getelementptr inbounds i8, ptr %231, i64 1, !dbg !1130
  store i8 %230, ptr %232, align 1, !dbg !1131
  %233 = load ptr, ptr %21, align 8, !dbg !1132
  %234 = load i32, ptr %10, align 4, !dbg !1133
  %235 = load i32, ptr %13, align 4, !dbg !1134
  %236 = add nsw i32 %234, %235, !dbg !1135
  %237 = sext i32 %236 to i64, !dbg !1132
  %238 = getelementptr inbounds i8, ptr %233, i64 %237, !dbg !1132
  %239 = load i8, ptr %238, align 1, !dbg !1132
  %240 = load ptr, ptr %16, align 8, !dbg !1136
  %241 = getelementptr inbounds i8, ptr %240, i64 2, !dbg !1136
  store i8 %239, ptr %241, align 1, !dbg !1137
  br label %242, !dbg !1138

242:                                              ; preds = %182, %176
  ret void, !dbg !1139
}

; Function Attrs: noinline nounwind uwtable
define internal void @build_ycc_rgb_table(ptr noundef %0) #0 !dbg !1140 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !1141, !DIExpression(), !1142)
    #dbg_declare(ptr %3, !1143, !DIExpression(), !1144)
  %6 = load ptr, ptr %2, align 8, !dbg !1145
  %7 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %6, i32 0, i32 81, !dbg !1146
  %8 = load ptr, ptr %7, align 8, !dbg !1146
  store ptr %8, ptr %3, align 8, !dbg !1144
    #dbg_declare(ptr %4, !1147, !DIExpression(), !1148)
    #dbg_declare(ptr %5, !1149, !DIExpression(), !1150)
  %9 = load ptr, ptr %2, align 8, !dbg !1151
  %10 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %9, i32 0, i32 1, !dbg !1152
  %11 = load ptr, ptr %10, align 8, !dbg !1152
  %12 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %11, i32 0, i32 0, !dbg !1153
  %13 = load ptr, ptr %12, align 8, !dbg !1153
  %14 = load ptr, ptr %2, align 8, !dbg !1154
  %15 = call ptr %13(ptr noundef %14, i32 noundef 1, i64 noundef 1024), !dbg !1155
  %16 = load ptr, ptr %3, align 8, !dbg !1156
  %17 = getelementptr inbounds nuw %struct.my_upsampler, ptr %16, i32 0, i32 2, !dbg !1157
  store ptr %15, ptr %17, align 8, !dbg !1158
  %18 = load ptr, ptr %2, align 8, !dbg !1159
  %19 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %18, i32 0, i32 1, !dbg !1160
  %20 = load ptr, ptr %19, align 8, !dbg !1160
  %21 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %20, i32 0, i32 0, !dbg !1161
  %22 = load ptr, ptr %21, align 8, !dbg !1161
  %23 = load ptr, ptr %2, align 8, !dbg !1162
  %24 = call ptr %22(ptr noundef %23, i32 noundef 1, i64 noundef 1024), !dbg !1163
  %25 = load ptr, ptr %3, align 8, !dbg !1164
  %26 = getelementptr inbounds nuw %struct.my_upsampler, ptr %25, i32 0, i32 3, !dbg !1165
  store ptr %24, ptr %26, align 8, !dbg !1166
  %27 = load ptr, ptr %2, align 8, !dbg !1167
  %28 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %27, i32 0, i32 1, !dbg !1168
  %29 = load ptr, ptr %28, align 8, !dbg !1168
  %30 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %29, i32 0, i32 0, !dbg !1169
  %31 = load ptr, ptr %30, align 8, !dbg !1169
  %32 = load ptr, ptr %2, align 8, !dbg !1170
  %33 = call ptr %31(ptr noundef %32, i32 noundef 1, i64 noundef 2048), !dbg !1171
  %34 = load ptr, ptr %3, align 8, !dbg !1172
  %35 = getelementptr inbounds nuw %struct.my_upsampler, ptr %34, i32 0, i32 4, !dbg !1173
  store ptr %33, ptr %35, align 8, !dbg !1174
  %36 = load ptr, ptr %2, align 8, !dbg !1175
  %37 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %36, i32 0, i32 1, !dbg !1176
  %38 = load ptr, ptr %37, align 8, !dbg !1176
  %39 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %38, i32 0, i32 0, !dbg !1177
  %40 = load ptr, ptr %39, align 8, !dbg !1177
  %41 = load ptr, ptr %2, align 8, !dbg !1178
  %42 = call ptr %40(ptr noundef %41, i32 noundef 1, i64 noundef 2048), !dbg !1179
  %43 = load ptr, ptr %3, align 8, !dbg !1180
  %44 = getelementptr inbounds nuw %struct.my_upsampler, ptr %43, i32 0, i32 5, !dbg !1181
  store ptr %42, ptr %44, align 8, !dbg !1182
  store i32 0, ptr %4, align 4, !dbg !1183
  store i64 -128, ptr %5, align 8, !dbg !1185
  br label %45, !dbg !1186

45:                                               ; preds = %88, %1
  %46 = load i32, ptr %4, align 4, !dbg !1187
  %47 = icmp sle i32 %46, 255, !dbg !1189
  br i1 %47, label %48, label %93, !dbg !1190

48:                                               ; preds = %45
  %49 = load i64, ptr %5, align 8, !dbg !1191
  %50 = mul nsw i64 91881, %49, !dbg !1191
  %51 = add nsw i64 %50, 32768, !dbg !1191
  %52 = ashr i64 %51, 16, !dbg !1191
  %53 = trunc i64 %52 to i32, !dbg !1193
  %54 = load ptr, ptr %3, align 8, !dbg !1194
  %55 = getelementptr inbounds nuw %struct.my_upsampler, ptr %54, i32 0, i32 2, !dbg !1195
  %56 = load ptr, ptr %55, align 8, !dbg !1195
  %57 = load i32, ptr %4, align 4, !dbg !1196
  %58 = sext i32 %57 to i64, !dbg !1194
  %59 = getelementptr inbounds i32, ptr %56, i64 %58, !dbg !1194
  store i32 %53, ptr %59, align 4, !dbg !1197
  %60 = load i64, ptr %5, align 8, !dbg !1198
  %61 = mul nsw i64 116130, %60, !dbg !1198
  %62 = add nsw i64 %61, 32768, !dbg !1198
  %63 = ashr i64 %62, 16, !dbg !1198
  %64 = trunc i64 %63 to i32, !dbg !1199
  %65 = load ptr, ptr %3, align 8, !dbg !1200
  %66 = getelementptr inbounds nuw %struct.my_upsampler, ptr %65, i32 0, i32 3, !dbg !1201
  %67 = load ptr, ptr %66, align 8, !dbg !1201
  %68 = load i32, ptr %4, align 4, !dbg !1202
  %69 = sext i32 %68 to i64, !dbg !1200
  %70 = getelementptr inbounds i32, ptr %67, i64 %69, !dbg !1200
  store i32 %64, ptr %70, align 4, !dbg !1203
  %71 = load i64, ptr %5, align 8, !dbg !1204
  %72 = mul nsw i64 -46802, %71, !dbg !1205
  %73 = load ptr, ptr %3, align 8, !dbg !1206
  %74 = getelementptr inbounds nuw %struct.my_upsampler, ptr %73, i32 0, i32 4, !dbg !1207
  %75 = load ptr, ptr %74, align 8, !dbg !1207
  %76 = load i32, ptr %4, align 4, !dbg !1208
  %77 = sext i32 %76 to i64, !dbg !1206
  %78 = getelementptr inbounds i64, ptr %75, i64 %77, !dbg !1206
  store i64 %72, ptr %78, align 8, !dbg !1209
  %79 = load i64, ptr %5, align 8, !dbg !1210
  %80 = mul nsw i64 -22554, %79, !dbg !1211
  %81 = add nsw i64 %80, 32768, !dbg !1212
  %82 = load ptr, ptr %3, align 8, !dbg !1213
  %83 = getelementptr inbounds nuw %struct.my_upsampler, ptr %82, i32 0, i32 5, !dbg !1214
  %84 = load ptr, ptr %83, align 8, !dbg !1214
  %85 = load i32, ptr %4, align 4, !dbg !1215
  %86 = sext i32 %85 to i64, !dbg !1213
  %87 = getelementptr inbounds i64, ptr %84, i64 %86, !dbg !1213
  store i64 %81, ptr %87, align 8, !dbg !1216
  br label %88, !dbg !1217

88:                                               ; preds = %48
  %89 = load i32, ptr %4, align 4, !dbg !1218
  %90 = add nsw i32 %89, 1, !dbg !1218
  store i32 %90, ptr %4, align 4, !dbg !1218
  %91 = load i64, ptr %5, align 8, !dbg !1219
  %92 = add nsw i64 %91, 1, !dbg !1219
  store i64 %92, ptr %5, align 8, !dbg !1219
  br label %45, !dbg !1220, !llvm.loop !1221

93:                                               ; preds = %45
  ret void, !dbg !1223
}

declare void @jcopy_sample_rows(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!470, !471, !472, !473, !474, !475, !476}
!llvm.ident = !{!477}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !30, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jdmerge.c", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "955b27a18c0d3da682da3d4c43dc8ffc")
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
!30 = !{!31, !55, !70, !429, !80, !69, !460, !463, !464}
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "my_upsample_ptr", file: !1, line: 70, baseType: !32)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "my_upsampler", file: !1, line: 68, baseType: !34)
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 44, size: 704, elements: !35)
!35 = !{!36, !455, !459, !461, !462, !465, !466, !467, !468, !469}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "pub", scope: !34, file: !1, line: 45, baseType: !37, size: 192)
!37 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_upsampler", file: !24, line: 230, size: 192, elements: !38)
!38 = !{!39, !453, !454}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !37, file: !24, line: 231, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DISubroutineType(types: !42)
!42 = !{null, !43}
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "j_decompress_ptr", file: !4, line: 250, baseType: !44)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_decompress_struct", file: !4, line: 394, size: 4928, elements: !46)
!46 = !{!47, !174, !175, !176, !177, !178, !201, !202, !203, !204, !206, !207, !208, !209, !211, !212, !213, !215, !216, !217, !218, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !240, !253, !269, !270, !271, !297, !298, !299, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !321, !322, !323, !324, !328, !329, !330, !331, !332, !333, !340, !354, !372, !381, !391, !406, !415, !428, !430, !439}
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
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_d_coef_controller", file: !24, line: 165, size: 320, elements: !357)
!357 = !{!358, !359, !363, !364, !370}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "start_input_pass", scope: !356, file: !24, line: 166, baseType: !40, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "consume_data", scope: !356, file: !24, line: 167, baseType: !360, size: 64, offset: 64)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = !DISubroutineType(types: !362)
!362 = !{!69, !43}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "start_output_pass", scope: !356, file: !24, line: 168, baseType: !40, size: 64, offset: 128)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "decompress_data", scope: !356, file: !24, line: 169, baseType: !365, size: 64, offset: 192)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = !DISubroutineType(types: !367)
!367 = !{!69, !43, !368}
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPIMAGE", file: !4, line: 68, baseType: !369)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "coef_arrays", scope: !356, file: !24, line: 172, baseType: !371, size: 64, offset: 256)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "post", scope: !45, file: !4, line: 597, baseType: !373, size: 64, offset: 4416)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_d_post_controller", file: !24, line: 176, size: 128, elements: !375)
!375 = !{!376, !377}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !374, file: !24, line: 177, baseType: !345, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "post_process_data", scope: !374, file: !24, line: 178, baseType: !378, size: 64, offset: 64)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!379 = !DISubroutineType(types: !380)
!380 = !{null, !43, !368, !353, !85, !78, !353, !85}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "inputctl", scope: !45, file: !4, line: 598, baseType: !382, size: 64, offset: 4480)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_input_controller", file: !24, line: 145, size: 320, elements: !384)
!384 = !{!385, !386, !387, !388, !389, !390}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "consume_input", scope: !383, file: !24, line: 146, baseType: !360, size: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "reset_input_controller", scope: !383, file: !24, line: 147, baseType: !40, size: 64, offset: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "start_input_pass", scope: !383, file: !24, line: 148, baseType: !40, size: 64, offset: 128)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "finish_input_pass", scope: !383, file: !24, line: 149, baseType: !40, size: 64, offset: 192)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "has_multiple_scans", scope: !383, file: !24, line: 152, baseType: !107, size: 32, offset: 256)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "eoi_reached", scope: !383, file: !24, line: 153, baseType: !107, size: 32, offset: 288)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "marker", scope: !45, file: !4, line: 599, baseType: !392, size: 64, offset: 4544)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_marker_reader", file: !24, line: 188, size: 1408, elements: !394)
!394 = !{!395, !396, !397, !399, !400, !402, !403, !404, !405}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "reset_marker_reader", scope: !393, file: !24, line: 189, baseType: !40, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "read_markers", scope: !393, file: !24, line: 194, baseType: !360, size: 64, offset: 64)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "read_restart_marker", scope: !393, file: !24, line: 196, baseType: !398, size: 64, offset: 128)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "jpeg_marker_parser_method", file: !4, line: 781, baseType: !189)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "process_COM", scope: !393, file: !24, line: 198, baseType: !398, size: 64, offset: 192)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "process_APPn", scope: !393, file: !24, line: 199, baseType: !401, size: 1024, offset: 256)
!401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !398, size: 1024, elements: !301)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "saw_SOI", scope: !393, file: !24, line: 204, baseType: !107, size: 32, offset: 1280)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "saw_SOF", scope: !393, file: !24, line: 205, baseType: !107, size: 32, offset: 1312)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "next_restart_num", scope: !393, file: !24, line: 206, baseType: !69, size: 32, offset: 1344)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "discarded_bytes", scope: !393, file: !24, line: 207, baseType: !5, size: 32, offset: 1376)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "entropy", scope: !45, file: !4, line: 600, baseType: !407, size: 64, offset: 4608)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_entropy_decoder", file: !24, line: 211, size: 128, elements: !409)
!409 = !{!410, !411}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !408, file: !24, line: 212, baseType: !40, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "decode_mcu", scope: !408, file: !24, line: 213, baseType: !412, size: 64, offset: 64)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = !DISubroutineType(types: !414)
!414 = !{!107, !43, !91}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "idct", scope: !45, file: !4, line: 601, baseType: !416, size: 64, offset: 4672)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_inverse_dct", file: !24, line: 223, size: 704, elements: !418)
!418 = !{!419, !420}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !417, file: !24, line: 224, baseType: !40, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "inverse_DCT", scope: !417, file: !24, line: 226, baseType: !421, size: 640, offset: 64)
!421 = !DICompositeType(tag: DW_TAG_array_type, baseType: !422, size: 640, elements: !326)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "inverse_DCT_method_ptr", file: !24, line: 218, baseType: !423)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = !DISubroutineType(types: !425)
!425 = !{null, !43, !272, !426, !78, !85}
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "JCOEFPTR", file: !4, line: 75, baseType: !427)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "upsample", scope: !45, file: !4, line: 602, baseType: !429, size: 64, offset: 4736)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "cconvert", scope: !45, file: !4, line: 603, baseType: !431, size: 64, offset: 4800)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_color_deconverter", file: !24, line: 244, size: 128, elements: !433)
!433 = !{!434, !435}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !432, file: !24, line: 245, baseType: !40, size: 64)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "color_convert", scope: !432, file: !24, line: 246, baseType: !436, size: 64, offset: 64)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = !DISubroutineType(types: !438)
!438 = !{null, !43, !368, !85, !78, !69}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "cquantize", scope: !45, file: !4, line: 604, baseType: !440, size: 64, offset: 4864)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_color_quantizer", file: !24, line: 252, size: 256, elements: !442)
!442 = !{!443, !447, !451, !452}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !441, file: !24, line: 253, baseType: !444, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = !DISubroutineType(types: !446)
!446 = !{null, !43, !107}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "color_quantize", scope: !441, file: !24, line: 254, baseType: !448, size: 64, offset: 64)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = !DISubroutineType(types: !450)
!450 = !{null, !43, !78, !78, !69}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "finish_pass", scope: !441, file: !24, line: 257, baseType: !40, size: 64, offset: 128)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "new_color_map", scope: !441, file: !24, line: 258, baseType: !40, size: 64, offset: 192)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "upsample", scope: !37, file: !24, line: 232, baseType: !378, size: 64, offset: 64)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "need_context_rows", scope: !37, file: !24, line: 240, baseType: !107, size: 32, offset: 128)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "upmethod", scope: !34, file: !1, line: 48, baseType: !456, size: 64, offset: 192)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = !DISubroutineType(types: !458)
!458 = !{null, !43, !368, !85, !78}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "Cr_r_tab", scope: !34, file: !1, line: 53, baseType: !460, size: 64, offset: 256)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "Cb_b_tab", scope: !34, file: !1, line: 54, baseType: !460, size: 64, offset: 320)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "Cr_g_tab", scope: !34, file: !1, line: 55, baseType: !463, size: 64, offset: 384)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT32", file: !83, line: 161, baseType: !130)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "Cb_g_tab", scope: !34, file: !1, line: 56, baseType: !463, size: 64, offset: 448)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "spare_row", scope: !34, file: !1, line: 63, baseType: !80, size: 64, offset: 512)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "spare_full", scope: !34, file: !1, line: 64, baseType: !107, size: 32, offset: 576)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "out_row_width", scope: !34, file: !1, line: 66, baseType: !85, size: 32, offset: 608)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "rows_to_go", scope: !34, file: !1, line: 67, baseType: !85, size: 32, offset: 640)
!470 = !{i32 7, !"Dwarf Version", i32 5}
!471 = !{i32 2, !"Debug Info Version", i32 3}
!472 = !{i32 1, !"wchar_size", i32 4}
!473 = !{i32 8, !"PIC Level", i32 2}
!474 = !{i32 7, !"PIE Level", i32 2}
!475 = !{i32 7, !"uwtable", i32 2}
!476 = !{i32 7, !"frame-pointer", i32 2}
!477 = !{!"clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)"}
!478 = distinct !DISubprogram(name: "jinit_merged_upsampler", scope: !1, file: !1, line: 370, type: !41, scopeLine: 371, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !479)
!479 = !{}
!480 = !DILocalVariable(name: "cinfo", arg: 1, scope: !478, file: !1, line: 370, type: !43)
!481 = !DILocation(line: 370, column: 42, scope: !478)
!482 = !DILocalVariable(name: "upsample", scope: !478, file: !1, line: 372, type: !31)
!483 = !DILocation(line: 372, column: 19, scope: !478)
!484 = !DILocation(line: 375, column: 7, scope: !478)
!485 = !DILocation(line: 375, column: 14, scope: !478)
!486 = !DILocation(line: 375, column: 19, scope: !478)
!487 = !DILocation(line: 375, column: 48, scope: !478)
!488 = !DILocation(line: 375, column: 5, scope: !478)
!489 = !DILocation(line: 374, column: 12, scope: !478)
!490 = !DILocation(line: 377, column: 47, scope: !478)
!491 = !DILocation(line: 377, column: 3, scope: !478)
!492 = !DILocation(line: 377, column: 10, scope: !478)
!493 = !DILocation(line: 377, column: 19, scope: !478)
!494 = !DILocation(line: 378, column: 3, scope: !478)
!495 = !DILocation(line: 378, column: 13, scope: !478)
!496 = !DILocation(line: 378, column: 17, scope: !478)
!497 = !DILocation(line: 378, column: 28, scope: !478)
!498 = !DILocation(line: 379, column: 3, scope: !478)
!499 = !DILocation(line: 379, column: 13, scope: !478)
!500 = !DILocation(line: 379, column: 17, scope: !478)
!501 = !DILocation(line: 379, column: 35, scope: !478)
!502 = !DILocation(line: 381, column: 29, scope: !478)
!503 = !DILocation(line: 381, column: 36, scope: !478)
!504 = !DILocation(line: 381, column: 51, scope: !478)
!505 = !DILocation(line: 381, column: 58, scope: !478)
!506 = !DILocation(line: 381, column: 49, scope: !478)
!507 = !DILocation(line: 381, column: 3, scope: !478)
!508 = !DILocation(line: 381, column: 13, scope: !478)
!509 = !DILocation(line: 381, column: 27, scope: !478)
!510 = !DILocation(line: 383, column: 7, scope: !511)
!511 = distinct !DILexicalBlock(scope: !478, file: !1, line: 383, column: 7)
!512 = !DILocation(line: 383, column: 14, scope: !511)
!513 = !DILocation(line: 383, column: 32, scope: !511)
!514 = !DILocation(line: 384, column: 5, scope: !515)
!515 = distinct !DILexicalBlock(scope: !511, file: !1, line: 383, column: 38)
!516 = !DILocation(line: 384, column: 15, scope: !515)
!517 = !DILocation(line: 384, column: 19, scope: !515)
!518 = !DILocation(line: 384, column: 28, scope: !515)
!519 = !DILocation(line: 385, column: 5, scope: !515)
!520 = !DILocation(line: 385, column: 15, scope: !515)
!521 = !DILocation(line: 385, column: 24, scope: !515)
!522 = !DILocation(line: 388, column: 9, scope: !515)
!523 = !DILocation(line: 388, column: 16, scope: !515)
!524 = !DILocation(line: 388, column: 21, scope: !515)
!525 = !DILocation(line: 388, column: 50, scope: !515)
!526 = !DILocation(line: 389, column: 13, scope: !515)
!527 = !DILocation(line: 389, column: 23, scope: !515)
!528 = !DILocation(line: 389, column: 37, scope: !515)
!529 = !DILocation(line: 388, column: 7, scope: !515)
!530 = !DILocation(line: 387, column: 5, scope: !515)
!531 = !DILocation(line: 387, column: 15, scope: !515)
!532 = !DILocation(line: 387, column: 25, scope: !515)
!533 = !DILocation(line: 390, column: 3, scope: !515)
!534 = !DILocation(line: 391, column: 5, scope: !535)
!535 = distinct !DILexicalBlock(scope: !511, file: !1, line: 390, column: 10)
!536 = !DILocation(line: 391, column: 15, scope: !535)
!537 = !DILocation(line: 391, column: 19, scope: !535)
!538 = !DILocation(line: 391, column: 28, scope: !535)
!539 = !DILocation(line: 392, column: 5, scope: !535)
!540 = !DILocation(line: 392, column: 15, scope: !535)
!541 = !DILocation(line: 392, column: 24, scope: !535)
!542 = !DILocation(line: 394, column: 5, scope: !535)
!543 = !DILocation(line: 394, column: 15, scope: !535)
!544 = !DILocation(line: 394, column: 25, scope: !535)
!545 = !DILocation(line: 397, column: 23, scope: !478)
!546 = !DILocation(line: 397, column: 3, scope: !478)
!547 = !DILocation(line: 398, column: 1, scope: !478)
!548 = distinct !DISubprogram(name: "start_pass_merged_upsample", scope: !1, file: !1, line: 126, type: !41, scopeLine: 127, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !479)
!549 = !DILocalVariable(name: "cinfo", arg: 1, scope: !548, file: !1, line: 126, type: !43)
!550 = !DILocation(line: 126, column: 46, scope: !548)
!551 = !DILocalVariable(name: "upsample", scope: !548, file: !1, line: 128, type: !31)
!552 = !DILocation(line: 128, column: 19, scope: !548)
!553 = !DILocation(line: 128, column: 48, scope: !548)
!554 = !DILocation(line: 128, column: 55, scope: !548)
!555 = !DILocation(line: 131, column: 3, scope: !548)
!556 = !DILocation(line: 131, column: 13, scope: !548)
!557 = !DILocation(line: 131, column: 24, scope: !548)
!558 = !DILocation(line: 133, column: 26, scope: !548)
!559 = !DILocation(line: 133, column: 33, scope: !548)
!560 = !DILocation(line: 133, column: 3, scope: !548)
!561 = !DILocation(line: 133, column: 13, scope: !548)
!562 = !DILocation(line: 133, column: 24, scope: !548)
!563 = !DILocation(line: 134, column: 1, scope: !548)
!564 = distinct !DISubprogram(name: "merged_2v_upsample", scope: !1, file: !1, line: 144, type: !379, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !479)
!565 = !DILocalVariable(name: "cinfo", arg: 1, scope: !564, file: !1, line: 144, type: !43)
!566 = !DILocation(line: 144, column: 38, scope: !564)
!567 = !DILocalVariable(name: "input_buf", arg: 2, scope: !564, file: !1, line: 145, type: !368)
!568 = !DILocation(line: 145, column: 18, scope: !564)
!569 = !DILocalVariable(name: "in_row_group_ctr", arg: 3, scope: !564, file: !1, line: 145, type: !353)
!570 = !DILocation(line: 145, column: 41, scope: !564)
!571 = !DILocalVariable(name: "in_row_groups_avail", arg: 4, scope: !564, file: !1, line: 146, type: !85)
!572 = !DILocation(line: 146, column: 18, scope: !564)
!573 = !DILocalVariable(name: "output_buf", arg: 5, scope: !564, file: !1, line: 147, type: !78)
!574 = !DILocation(line: 147, column: 18, scope: !564)
!575 = !DILocalVariable(name: "out_row_ctr", arg: 6, scope: !564, file: !1, line: 147, type: !353)
!576 = !DILocation(line: 147, column: 42, scope: !564)
!577 = !DILocalVariable(name: "out_rows_avail", arg: 7, scope: !564, file: !1, line: 148, type: !85)
!578 = !DILocation(line: 148, column: 18, scope: !564)
!579 = !DILocalVariable(name: "upsample", scope: !564, file: !1, line: 151, type: !31)
!580 = !DILocation(line: 151, column: 19, scope: !564)
!581 = !DILocation(line: 151, column: 48, scope: !564)
!582 = !DILocation(line: 151, column: 55, scope: !564)
!583 = !DILocalVariable(name: "work_ptrs", scope: !564, file: !1, line: 152, type: !584)
!584 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 128, elements: !585)
!585 = !{!586}
!586 = !DISubrange(count: 2)
!587 = !DILocation(line: 152, column: 12, scope: !564)
!588 = !DILocalVariable(name: "num_rows", scope: !564, file: !1, line: 153, type: !85)
!589 = !DILocation(line: 153, column: 14, scope: !564)
!590 = !DILocation(line: 155, column: 7, scope: !591)
!591 = distinct !DILexicalBlock(scope: !564, file: !1, line: 155, column: 7)
!592 = !DILocation(line: 155, column: 17, scope: !591)
!593 = !DILocation(line: 157, column: 25, scope: !594)
!594 = distinct !DILexicalBlock(scope: !591, file: !1, line: 155, column: 29)
!595 = !DILocation(line: 157, column: 35, scope: !594)
!596 = !DILocation(line: 157, column: 49, scope: !594)
!597 = !DILocation(line: 157, column: 63, scope: !594)
!598 = !DILocation(line: 157, column: 62, scope: !594)
!599 = !DILocation(line: 157, column: 60, scope: !594)
!600 = !DILocation(line: 158, column: 12, scope: !594)
!601 = !DILocation(line: 158, column: 22, scope: !594)
!602 = !DILocation(line: 157, column: 5, scope: !594)
!603 = !DILocation(line: 159, column: 14, scope: !594)
!604 = !DILocation(line: 160, column: 5, scope: !594)
!605 = !DILocation(line: 160, column: 15, scope: !594)
!606 = !DILocation(line: 160, column: 26, scope: !594)
!607 = !DILocation(line: 161, column: 3, scope: !594)
!608 = !DILocation(line: 163, column: 14, scope: !609)
!609 = distinct !DILexicalBlock(scope: !591, file: !1, line: 161, column: 10)
!610 = !DILocation(line: 165, column: 9, scope: !611)
!611 = distinct !DILexicalBlock(scope: !609, file: !1, line: 165, column: 9)
!612 = !DILocation(line: 165, column: 20, scope: !611)
!613 = !DILocation(line: 165, column: 30, scope: !611)
!614 = !DILocation(line: 165, column: 18, scope: !611)
!615 = !DILocation(line: 166, column: 18, scope: !611)
!616 = !DILocation(line: 166, column: 28, scope: !611)
!617 = !DILocation(line: 166, column: 16, scope: !611)
!618 = !DILocation(line: 166, column: 7, scope: !611)
!619 = !DILocation(line: 168, column: 24, scope: !609)
!620 = !DILocation(line: 168, column: 23, scope: !609)
!621 = !DILocation(line: 168, column: 20, scope: !609)
!622 = !DILocation(line: 169, column: 9, scope: !623)
!623 = distinct !DILexicalBlock(scope: !609, file: !1, line: 169, column: 9)
!624 = !DILocation(line: 169, column: 20, scope: !623)
!625 = !DILocation(line: 169, column: 18, scope: !623)
!626 = !DILocation(line: 170, column: 18, scope: !623)
!627 = !DILocation(line: 170, column: 16, scope: !623)
!628 = !DILocation(line: 170, column: 7, scope: !623)
!629 = !DILocation(line: 172, column: 20, scope: !609)
!630 = !DILocation(line: 172, column: 32, scope: !609)
!631 = !DILocation(line: 172, column: 31, scope: !609)
!632 = !DILocation(line: 172, column: 5, scope: !609)
!633 = !DILocation(line: 172, column: 18, scope: !609)
!634 = !DILocation(line: 173, column: 9, scope: !635)
!635 = distinct !DILexicalBlock(scope: !609, file: !1, line: 173, column: 9)
!636 = !DILocation(line: 173, column: 18, scope: !635)
!637 = !DILocation(line: 174, column: 22, scope: !638)
!638 = distinct !DILexicalBlock(scope: !635, file: !1, line: 173, column: 23)
!639 = !DILocation(line: 174, column: 34, scope: !638)
!640 = !DILocation(line: 174, column: 33, scope: !638)
!641 = !DILocation(line: 174, column: 46, scope: !638)
!642 = !DILocation(line: 174, column: 7, scope: !638)
!643 = !DILocation(line: 174, column: 20, scope: !638)
!644 = !DILocation(line: 175, column: 5, scope: !638)
!645 = !DILocation(line: 176, column: 22, scope: !646)
!646 = distinct !DILexicalBlock(scope: !635, file: !1, line: 175, column: 12)
!647 = !DILocation(line: 176, column: 32, scope: !646)
!648 = !DILocation(line: 176, column: 7, scope: !646)
!649 = !DILocation(line: 176, column: 20, scope: !646)
!650 = !DILocation(line: 177, column: 7, scope: !646)
!651 = !DILocation(line: 177, column: 17, scope: !646)
!652 = !DILocation(line: 177, column: 28, scope: !646)
!653 = !DILocation(line: 180, column: 7, scope: !609)
!654 = !DILocation(line: 180, column: 17, scope: !609)
!655 = !DILocation(line: 180, column: 28, scope: !609)
!656 = !DILocation(line: 180, column: 35, scope: !609)
!657 = !DILocation(line: 180, column: 47, scope: !609)
!658 = !DILocation(line: 180, column: 46, scope: !609)
!659 = !DILocation(line: 180, column: 65, scope: !609)
!660 = !DILocation(line: 180, column: 5, scope: !609)
!661 = !DILocation(line: 184, column: 19, scope: !564)
!662 = !DILocation(line: 184, column: 4, scope: !564)
!663 = !DILocation(line: 184, column: 16, scope: !564)
!664 = !DILocation(line: 185, column: 27, scope: !564)
!665 = !DILocation(line: 185, column: 3, scope: !564)
!666 = !DILocation(line: 185, column: 13, scope: !564)
!667 = !DILocation(line: 185, column: 24, scope: !564)
!668 = !DILocation(line: 187, column: 9, scope: !669)
!669 = distinct !DILexicalBlock(scope: !564, file: !1, line: 187, column: 7)
!670 = !DILocation(line: 187, column: 19, scope: !669)
!671 = !DILocation(line: 187, column: 7, scope: !669)
!672 = !DILocation(line: 188, column: 7, scope: !669)
!673 = !DILocation(line: 188, column: 24, scope: !669)
!674 = !DILocation(line: 188, column: 5, scope: !669)
!675 = !DILocation(line: 189, column: 1, scope: !564)
!676 = distinct !DISubprogram(name: "h2v2_merged_upsample", scope: !1, file: !1, line: 288, type: !457, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !479)
!677 = !DILocalVariable(name: "cinfo", arg: 1, scope: !676, file: !1, line: 288, type: !43)
!678 = !DILocation(line: 288, column: 40, scope: !676)
!679 = !DILocalVariable(name: "input_buf", arg: 2, scope: !676, file: !1, line: 289, type: !368)
!680 = !DILocation(line: 289, column: 20, scope: !676)
!681 = !DILocalVariable(name: "in_row_group_ctr", arg: 3, scope: !676, file: !1, line: 289, type: !85)
!682 = !DILocation(line: 289, column: 42, scope: !676)
!683 = !DILocalVariable(name: "output_buf", arg: 4, scope: !676, file: !1, line: 290, type: !78)
!684 = !DILocation(line: 290, column: 20, scope: !676)
!685 = !DILocalVariable(name: "upsample", scope: !676, file: !1, line: 292, type: !31)
!686 = !DILocation(line: 292, column: 19, scope: !676)
!687 = !DILocation(line: 292, column: 48, scope: !676)
!688 = !DILocation(line: 292, column: 55, scope: !676)
!689 = !DILocalVariable(name: "y", scope: !676, file: !1, line: 293, type: !69)
!690 = !DILocation(line: 293, column: 16, scope: !676)
!691 = !DILocalVariable(name: "cred", scope: !676, file: !1, line: 293, type: !69)
!692 = !DILocation(line: 293, column: 19, scope: !676)
!693 = !DILocalVariable(name: "cgreen", scope: !676, file: !1, line: 293, type: !69)
!694 = !DILocation(line: 293, column: 25, scope: !676)
!695 = !DILocalVariable(name: "cblue", scope: !676, file: !1, line: 293, type: !69)
!696 = !DILocation(line: 293, column: 33, scope: !676)
!697 = !DILocalVariable(name: "cb", scope: !676, file: !1, line: 294, type: !69)
!698 = !DILocation(line: 294, column: 7, scope: !676)
!699 = !DILocalVariable(name: "cr", scope: !676, file: !1, line: 294, type: !69)
!700 = !DILocation(line: 294, column: 11, scope: !676)
!701 = !DILocalVariable(name: "outptr0", scope: !676, file: !1, line: 295, type: !80)
!702 = !DILocation(line: 295, column: 21, scope: !676)
!703 = !DILocalVariable(name: "outptr1", scope: !676, file: !1, line: 295, type: !80)
!704 = !DILocation(line: 295, column: 30, scope: !676)
!705 = !DILocalVariable(name: "inptr00", scope: !676, file: !1, line: 296, type: !80)
!706 = !DILocation(line: 296, column: 12, scope: !676)
!707 = !DILocalVariable(name: "inptr01", scope: !676, file: !1, line: 296, type: !80)
!708 = !DILocation(line: 296, column: 21, scope: !676)
!709 = !DILocalVariable(name: "inptr1", scope: !676, file: !1, line: 296, type: !80)
!710 = !DILocation(line: 296, column: 30, scope: !676)
!711 = !DILocalVariable(name: "inptr2", scope: !676, file: !1, line: 296, type: !80)
!712 = !DILocation(line: 296, column: 38, scope: !676)
!713 = !DILocalVariable(name: "col", scope: !676, file: !1, line: 297, type: !85)
!714 = !DILocation(line: 297, column: 14, scope: !676)
!715 = !DILocalVariable(name: "range_limit", scope: !676, file: !1, line: 299, type: !81)
!716 = !DILocation(line: 299, column: 22, scope: !676)
!717 = !DILocation(line: 299, column: 36, scope: !676)
!718 = !DILocation(line: 299, column: 43, scope: !676)
!719 = !DILocalVariable(name: "Crrtab", scope: !676, file: !1, line: 300, type: !460)
!720 = !DILocation(line: 300, column: 9, scope: !676)
!721 = !DILocation(line: 300, column: 18, scope: !676)
!722 = !DILocation(line: 300, column: 28, scope: !676)
!723 = !DILocalVariable(name: "Cbbtab", scope: !676, file: !1, line: 301, type: !460)
!724 = !DILocation(line: 301, column: 9, scope: !676)
!725 = !DILocation(line: 301, column: 18, scope: !676)
!726 = !DILocation(line: 301, column: 28, scope: !676)
!727 = !DILocalVariable(name: "Crgtab", scope: !676, file: !1, line: 302, type: !463)
!728 = !DILocation(line: 302, column: 11, scope: !676)
!729 = !DILocation(line: 302, column: 20, scope: !676)
!730 = !DILocation(line: 302, column: 30, scope: !676)
!731 = !DILocalVariable(name: "Cbgtab", scope: !676, file: !1, line: 303, type: !463)
!732 = !DILocation(line: 303, column: 11, scope: !676)
!733 = !DILocation(line: 303, column: 20, scope: !676)
!734 = !DILocation(line: 303, column: 30, scope: !676)
!735 = !DILocation(line: 306, column: 13, scope: !676)
!736 = !DILocation(line: 306, column: 26, scope: !676)
!737 = !DILocation(line: 306, column: 42, scope: !676)
!738 = !DILocation(line: 306, column: 11, scope: !676)
!739 = !DILocation(line: 307, column: 13, scope: !676)
!740 = !DILocation(line: 307, column: 26, scope: !676)
!741 = !DILocation(line: 307, column: 42, scope: !676)
!742 = !DILocation(line: 307, column: 45, scope: !676)
!743 = !DILocation(line: 307, column: 11, scope: !676)
!744 = !DILocation(line: 308, column: 12, scope: !676)
!745 = !DILocation(line: 308, column: 25, scope: !676)
!746 = !DILocation(line: 308, column: 10, scope: !676)
!747 = !DILocation(line: 309, column: 12, scope: !676)
!748 = !DILocation(line: 309, column: 25, scope: !676)
!749 = !DILocation(line: 309, column: 10, scope: !676)
!750 = !DILocation(line: 310, column: 13, scope: !676)
!751 = !DILocation(line: 310, column: 11, scope: !676)
!752 = !DILocation(line: 311, column: 13, scope: !676)
!753 = !DILocation(line: 311, column: 11, scope: !676)
!754 = !DILocation(line: 313, column: 14, scope: !755)
!755 = distinct !DILexicalBlock(scope: !676, file: !1, line: 313, column: 3)
!756 = !DILocation(line: 313, column: 21, scope: !755)
!757 = !DILocation(line: 313, column: 34, scope: !755)
!758 = !DILocation(line: 313, column: 12, scope: !755)
!759 = !DILocation(line: 313, column: 8, scope: !755)
!760 = !DILocation(line: 313, column: 40, scope: !761)
!761 = distinct !DILexicalBlock(scope: !755, file: !1, line: 313, column: 3)
!762 = !DILocation(line: 313, column: 44, scope: !761)
!763 = !DILocation(line: 313, column: 3, scope: !755)
!764 = !DILocation(line: 315, column: 10, scope: !765)
!765 = distinct !DILexicalBlock(scope: !761, file: !1, line: 313, column: 56)
!766 = !DILocation(line: 315, column: 8, scope: !765)
!767 = !DILocation(line: 316, column: 10, scope: !765)
!768 = !DILocation(line: 316, column: 8, scope: !765)
!769 = !DILocation(line: 317, column: 12, scope: !765)
!770 = !DILocation(line: 317, column: 19, scope: !765)
!771 = !DILocation(line: 317, column: 10, scope: !765)
!772 = !DILocation(line: 318, column: 20, scope: !765)
!773 = !DILocation(line: 318, column: 14, scope: !765)
!774 = !DILocation(line: 318, column: 12, scope: !765)
!775 = !DILocation(line: 319, column: 13, scope: !765)
!776 = !DILocation(line: 319, column: 20, scope: !765)
!777 = !DILocation(line: 319, column: 11, scope: !765)
!778 = !DILocation(line: 321, column: 10, scope: !765)
!779 = !DILocation(line: 321, column: 8, scope: !765)
!780 = !DILocation(line: 322, column: 26, scope: !765)
!781 = !DILocation(line: 322, column: 38, scope: !765)
!782 = !DILocation(line: 322, column: 42, scope: !765)
!783 = !DILocation(line: 322, column: 40, scope: !765)
!784 = !DILocation(line: 322, column: 5, scope: !765)
!785 = !DILocation(line: 322, column: 22, scope: !765)
!786 = !DILocation(line: 323, column: 26, scope: !765)
!787 = !DILocation(line: 323, column: 38, scope: !765)
!788 = !DILocation(line: 323, column: 42, scope: !765)
!789 = !DILocation(line: 323, column: 40, scope: !765)
!790 = !DILocation(line: 323, column: 5, scope: !765)
!791 = !DILocation(line: 323, column: 24, scope: !765)
!792 = !DILocation(line: 324, column: 26, scope: !765)
!793 = !DILocation(line: 324, column: 38, scope: !765)
!794 = !DILocation(line: 324, column: 42, scope: !765)
!795 = !DILocation(line: 324, column: 40, scope: !765)
!796 = !DILocation(line: 324, column: 5, scope: !765)
!797 = !DILocation(line: 324, column: 23, scope: !765)
!798 = !DILocation(line: 325, column: 13, scope: !765)
!799 = !DILocation(line: 326, column: 10, scope: !765)
!800 = !DILocation(line: 326, column: 8, scope: !765)
!801 = !DILocation(line: 327, column: 26, scope: !765)
!802 = !DILocation(line: 327, column: 38, scope: !765)
!803 = !DILocation(line: 327, column: 42, scope: !765)
!804 = !DILocation(line: 327, column: 40, scope: !765)
!805 = !DILocation(line: 327, column: 5, scope: !765)
!806 = !DILocation(line: 327, column: 22, scope: !765)
!807 = !DILocation(line: 328, column: 26, scope: !765)
!808 = !DILocation(line: 328, column: 38, scope: !765)
!809 = !DILocation(line: 328, column: 42, scope: !765)
!810 = !DILocation(line: 328, column: 40, scope: !765)
!811 = !DILocation(line: 328, column: 5, scope: !765)
!812 = !DILocation(line: 328, column: 24, scope: !765)
!813 = !DILocation(line: 329, column: 26, scope: !765)
!814 = !DILocation(line: 329, column: 38, scope: !765)
!815 = !DILocation(line: 329, column: 42, scope: !765)
!816 = !DILocation(line: 329, column: 40, scope: !765)
!817 = !DILocation(line: 329, column: 5, scope: !765)
!818 = !DILocation(line: 329, column: 23, scope: !765)
!819 = !DILocation(line: 330, column: 13, scope: !765)
!820 = !DILocation(line: 331, column: 10, scope: !765)
!821 = !DILocation(line: 331, column: 8, scope: !765)
!822 = !DILocation(line: 332, column: 26, scope: !765)
!823 = !DILocation(line: 332, column: 38, scope: !765)
!824 = !DILocation(line: 332, column: 42, scope: !765)
!825 = !DILocation(line: 332, column: 40, scope: !765)
!826 = !DILocation(line: 332, column: 5, scope: !765)
!827 = !DILocation(line: 332, column: 22, scope: !765)
!828 = !DILocation(line: 333, column: 26, scope: !765)
!829 = !DILocation(line: 333, column: 38, scope: !765)
!830 = !DILocation(line: 333, column: 42, scope: !765)
!831 = !DILocation(line: 333, column: 40, scope: !765)
!832 = !DILocation(line: 333, column: 5, scope: !765)
!833 = !DILocation(line: 333, column: 24, scope: !765)
!834 = !DILocation(line: 334, column: 26, scope: !765)
!835 = !DILocation(line: 334, column: 38, scope: !765)
!836 = !DILocation(line: 334, column: 42, scope: !765)
!837 = !DILocation(line: 334, column: 40, scope: !765)
!838 = !DILocation(line: 334, column: 5, scope: !765)
!839 = !DILocation(line: 334, column: 23, scope: !765)
!840 = !DILocation(line: 335, column: 13, scope: !765)
!841 = !DILocation(line: 336, column: 10, scope: !765)
!842 = !DILocation(line: 336, column: 8, scope: !765)
!843 = !DILocation(line: 337, column: 26, scope: !765)
!844 = !DILocation(line: 337, column: 38, scope: !765)
!845 = !DILocation(line: 337, column: 42, scope: !765)
!846 = !DILocation(line: 337, column: 40, scope: !765)
!847 = !DILocation(line: 337, column: 5, scope: !765)
!848 = !DILocation(line: 337, column: 22, scope: !765)
!849 = !DILocation(line: 338, column: 26, scope: !765)
!850 = !DILocation(line: 338, column: 38, scope: !765)
!851 = !DILocation(line: 338, column: 42, scope: !765)
!852 = !DILocation(line: 338, column: 40, scope: !765)
!853 = !DILocation(line: 338, column: 5, scope: !765)
!854 = !DILocation(line: 338, column: 24, scope: !765)
!855 = !DILocation(line: 339, column: 26, scope: !765)
!856 = !DILocation(line: 339, column: 38, scope: !765)
!857 = !DILocation(line: 339, column: 42, scope: !765)
!858 = !DILocation(line: 339, column: 40, scope: !765)
!859 = !DILocation(line: 339, column: 5, scope: !765)
!860 = !DILocation(line: 339, column: 23, scope: !765)
!861 = !DILocation(line: 340, column: 13, scope: !765)
!862 = !DILocation(line: 341, column: 3, scope: !765)
!863 = !DILocation(line: 313, column: 52, scope: !761)
!864 = !DILocation(line: 313, column: 3, scope: !761)
!865 = distinct !{!865, !763, !866, !867}
!866 = !DILocation(line: 341, column: 3, scope: !755)
!867 = !{!"llvm.loop.mustprogress"}
!868 = !DILocation(line: 343, column: 7, scope: !869)
!869 = distinct !DILexicalBlock(scope: !676, file: !1, line: 343, column: 7)
!870 = !DILocation(line: 343, column: 14, scope: !869)
!871 = !DILocation(line: 343, column: 27, scope: !869)
!872 = !DILocation(line: 344, column: 10, scope: !873)
!873 = distinct !DILexicalBlock(scope: !869, file: !1, line: 343, column: 32)
!874 = !DILocation(line: 344, column: 8, scope: !873)
!875 = !DILocation(line: 345, column: 10, scope: !873)
!876 = !DILocation(line: 345, column: 8, scope: !873)
!877 = !DILocation(line: 346, column: 12, scope: !873)
!878 = !DILocation(line: 346, column: 19, scope: !873)
!879 = !DILocation(line: 346, column: 10, scope: !873)
!880 = !DILocation(line: 347, column: 20, scope: !873)
!881 = !DILocation(line: 347, column: 14, scope: !873)
!882 = !DILocation(line: 347, column: 12, scope: !873)
!883 = !DILocation(line: 348, column: 13, scope: !873)
!884 = !DILocation(line: 348, column: 20, scope: !873)
!885 = !DILocation(line: 348, column: 11, scope: !873)
!886 = !DILocation(line: 349, column: 10, scope: !873)
!887 = !DILocation(line: 349, column: 8, scope: !873)
!888 = !DILocation(line: 350, column: 26, scope: !873)
!889 = !DILocation(line: 350, column: 38, scope: !873)
!890 = !DILocation(line: 350, column: 42, scope: !873)
!891 = !DILocation(line: 350, column: 40, scope: !873)
!892 = !DILocation(line: 350, column: 5, scope: !873)
!893 = !DILocation(line: 350, column: 22, scope: !873)
!894 = !DILocation(line: 351, column: 26, scope: !873)
!895 = !DILocation(line: 351, column: 38, scope: !873)
!896 = !DILocation(line: 351, column: 42, scope: !873)
!897 = !DILocation(line: 351, column: 40, scope: !873)
!898 = !DILocation(line: 351, column: 5, scope: !873)
!899 = !DILocation(line: 351, column: 24, scope: !873)
!900 = !DILocation(line: 352, column: 26, scope: !873)
!901 = !DILocation(line: 352, column: 38, scope: !873)
!902 = !DILocation(line: 352, column: 42, scope: !873)
!903 = !DILocation(line: 352, column: 40, scope: !873)
!904 = !DILocation(line: 352, column: 5, scope: !873)
!905 = !DILocation(line: 352, column: 23, scope: !873)
!906 = !DILocation(line: 353, column: 10, scope: !873)
!907 = !DILocation(line: 353, column: 8, scope: !873)
!908 = !DILocation(line: 354, column: 26, scope: !873)
!909 = !DILocation(line: 354, column: 38, scope: !873)
!910 = !DILocation(line: 354, column: 42, scope: !873)
!911 = !DILocation(line: 354, column: 40, scope: !873)
!912 = !DILocation(line: 354, column: 5, scope: !873)
!913 = !DILocation(line: 354, column: 22, scope: !873)
!914 = !DILocation(line: 355, column: 26, scope: !873)
!915 = !DILocation(line: 355, column: 38, scope: !873)
!916 = !DILocation(line: 355, column: 42, scope: !873)
!917 = !DILocation(line: 355, column: 40, scope: !873)
!918 = !DILocation(line: 355, column: 5, scope: !873)
!919 = !DILocation(line: 355, column: 24, scope: !873)
!920 = !DILocation(line: 356, column: 26, scope: !873)
!921 = !DILocation(line: 356, column: 38, scope: !873)
!922 = !DILocation(line: 356, column: 42, scope: !873)
!923 = !DILocation(line: 356, column: 40, scope: !873)
!924 = !DILocation(line: 356, column: 5, scope: !873)
!925 = !DILocation(line: 356, column: 23, scope: !873)
!926 = !DILocation(line: 357, column: 3, scope: !873)
!927 = !DILocation(line: 358, column: 1, scope: !676)
!928 = distinct !DISubprogram(name: "merged_1v_upsample", scope: !1, file: !1, line: 193, type: !379, scopeLine: 199, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !479)
!929 = !DILocalVariable(name: "cinfo", arg: 1, scope: !928, file: !1, line: 193, type: !43)
!930 = !DILocation(line: 193, column: 38, scope: !928)
!931 = !DILocalVariable(name: "input_buf", arg: 2, scope: !928, file: !1, line: 194, type: !368)
!932 = !DILocation(line: 194, column: 18, scope: !928)
!933 = !DILocalVariable(name: "in_row_group_ctr", arg: 3, scope: !928, file: !1, line: 194, type: !353)
!934 = !DILocation(line: 194, column: 41, scope: !928)
!935 = !DILocalVariable(name: "in_row_groups_avail", arg: 4, scope: !928, file: !1, line: 195, type: !85)
!936 = !DILocation(line: 195, column: 18, scope: !928)
!937 = !DILocalVariable(name: "output_buf", arg: 5, scope: !928, file: !1, line: 196, type: !78)
!938 = !DILocation(line: 196, column: 18, scope: !928)
!939 = !DILocalVariable(name: "out_row_ctr", arg: 6, scope: !928, file: !1, line: 196, type: !353)
!940 = !DILocation(line: 196, column: 42, scope: !928)
!941 = !DILocalVariable(name: "out_rows_avail", arg: 7, scope: !928, file: !1, line: 197, type: !85)
!942 = !DILocation(line: 197, column: 18, scope: !928)
!943 = !DILocalVariable(name: "upsample", scope: !928, file: !1, line: 200, type: !31)
!944 = !DILocation(line: 200, column: 19, scope: !928)
!945 = !DILocation(line: 200, column: 48, scope: !928)
!946 = !DILocation(line: 200, column: 55, scope: !928)
!947 = !DILocation(line: 203, column: 5, scope: !928)
!948 = !DILocation(line: 203, column: 15, scope: !928)
!949 = !DILocation(line: 203, column: 26, scope: !928)
!950 = !DILocation(line: 203, column: 33, scope: !928)
!951 = !DILocation(line: 203, column: 45, scope: !928)
!952 = !DILocation(line: 203, column: 44, scope: !928)
!953 = !DILocation(line: 204, column: 5, scope: !928)
!954 = !DILocation(line: 204, column: 19, scope: !928)
!955 = !DILocation(line: 204, column: 18, scope: !928)
!956 = !DILocation(line: 204, column: 16, scope: !928)
!957 = !DILocation(line: 203, column: 3, scope: !928)
!958 = !DILocation(line: 206, column: 5, scope: !928)
!959 = !DILocation(line: 206, column: 17, scope: !928)
!960 = !DILocation(line: 207, column: 5, scope: !928)
!961 = !DILocation(line: 207, column: 22, scope: !928)
!962 = !DILocation(line: 208, column: 1, scope: !928)
!963 = distinct !DISubprogram(name: "h2v1_merged_upsample", scope: !1, file: !1, line: 226, type: !457, scopeLine: 229, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !479)
!964 = !DILocalVariable(name: "cinfo", arg: 1, scope: !963, file: !1, line: 226, type: !43)
!965 = !DILocation(line: 226, column: 40, scope: !963)
!966 = !DILocalVariable(name: "input_buf", arg: 2, scope: !963, file: !1, line: 227, type: !368)
!967 = !DILocation(line: 227, column: 20, scope: !963)
!968 = !DILocalVariable(name: "in_row_group_ctr", arg: 3, scope: !963, file: !1, line: 227, type: !85)
!969 = !DILocation(line: 227, column: 42, scope: !963)
!970 = !DILocalVariable(name: "output_buf", arg: 4, scope: !963, file: !1, line: 228, type: !78)
!971 = !DILocation(line: 228, column: 20, scope: !963)
!972 = !DILocalVariable(name: "upsample", scope: !963, file: !1, line: 230, type: !31)
!973 = !DILocation(line: 230, column: 19, scope: !963)
!974 = !DILocation(line: 230, column: 48, scope: !963)
!975 = !DILocation(line: 230, column: 55, scope: !963)
!976 = !DILocalVariable(name: "y", scope: !963, file: !1, line: 231, type: !69)
!977 = !DILocation(line: 231, column: 16, scope: !963)
!978 = !DILocalVariable(name: "cred", scope: !963, file: !1, line: 231, type: !69)
!979 = !DILocation(line: 231, column: 19, scope: !963)
!980 = !DILocalVariable(name: "cgreen", scope: !963, file: !1, line: 231, type: !69)
!981 = !DILocation(line: 231, column: 25, scope: !963)
!982 = !DILocalVariable(name: "cblue", scope: !963, file: !1, line: 231, type: !69)
!983 = !DILocation(line: 231, column: 33, scope: !963)
!984 = !DILocalVariable(name: "cb", scope: !963, file: !1, line: 232, type: !69)
!985 = !DILocation(line: 232, column: 7, scope: !963)
!986 = !DILocalVariable(name: "cr", scope: !963, file: !1, line: 232, type: !69)
!987 = !DILocation(line: 232, column: 11, scope: !963)
!988 = !DILocalVariable(name: "outptr", scope: !963, file: !1, line: 233, type: !80)
!989 = !DILocation(line: 233, column: 21, scope: !963)
!990 = !DILocalVariable(name: "inptr0", scope: !963, file: !1, line: 234, type: !80)
!991 = !DILocation(line: 234, column: 12, scope: !963)
!992 = !DILocalVariable(name: "inptr1", scope: !963, file: !1, line: 234, type: !80)
!993 = !DILocation(line: 234, column: 20, scope: !963)
!994 = !DILocalVariable(name: "inptr2", scope: !963, file: !1, line: 234, type: !80)
!995 = !DILocation(line: 234, column: 28, scope: !963)
!996 = !DILocalVariable(name: "col", scope: !963, file: !1, line: 235, type: !85)
!997 = !DILocation(line: 235, column: 14, scope: !963)
!998 = !DILocalVariable(name: "range_limit", scope: !963, file: !1, line: 237, type: !81)
!999 = !DILocation(line: 237, column: 22, scope: !963)
!1000 = !DILocation(line: 237, column: 36, scope: !963)
!1001 = !DILocation(line: 237, column: 43, scope: !963)
!1002 = !DILocalVariable(name: "Crrtab", scope: !963, file: !1, line: 238, type: !460)
!1003 = !DILocation(line: 238, column: 9, scope: !963)
!1004 = !DILocation(line: 238, column: 18, scope: !963)
!1005 = !DILocation(line: 238, column: 28, scope: !963)
!1006 = !DILocalVariable(name: "Cbbtab", scope: !963, file: !1, line: 239, type: !460)
!1007 = !DILocation(line: 239, column: 9, scope: !963)
!1008 = !DILocation(line: 239, column: 18, scope: !963)
!1009 = !DILocation(line: 239, column: 28, scope: !963)
!1010 = !DILocalVariable(name: "Crgtab", scope: !963, file: !1, line: 240, type: !463)
!1011 = !DILocation(line: 240, column: 11, scope: !963)
!1012 = !DILocation(line: 240, column: 20, scope: !963)
!1013 = !DILocation(line: 240, column: 30, scope: !963)
!1014 = !DILocalVariable(name: "Cbgtab", scope: !963, file: !1, line: 241, type: !463)
!1015 = !DILocation(line: 241, column: 11, scope: !963)
!1016 = !DILocation(line: 241, column: 20, scope: !963)
!1017 = !DILocation(line: 241, column: 30, scope: !963)
!1018 = !DILocation(line: 244, column: 12, scope: !963)
!1019 = !DILocation(line: 244, column: 25, scope: !963)
!1020 = !DILocation(line: 244, column: 10, scope: !963)
!1021 = !DILocation(line: 245, column: 12, scope: !963)
!1022 = !DILocation(line: 245, column: 25, scope: !963)
!1023 = !DILocation(line: 245, column: 10, scope: !963)
!1024 = !DILocation(line: 246, column: 12, scope: !963)
!1025 = !DILocation(line: 246, column: 25, scope: !963)
!1026 = !DILocation(line: 246, column: 10, scope: !963)
!1027 = !DILocation(line: 247, column: 12, scope: !963)
!1028 = !DILocation(line: 247, column: 10, scope: !963)
!1029 = !DILocation(line: 249, column: 14, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !963, file: !1, line: 249, column: 3)
!1031 = !DILocation(line: 249, column: 21, scope: !1030)
!1032 = !DILocation(line: 249, column: 34, scope: !1030)
!1033 = !DILocation(line: 249, column: 12, scope: !1030)
!1034 = !DILocation(line: 249, column: 8, scope: !1030)
!1035 = !DILocation(line: 249, column: 40, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !1030, file: !1, line: 249, column: 3)
!1037 = !DILocation(line: 249, column: 44, scope: !1036)
!1038 = !DILocation(line: 249, column: 3, scope: !1030)
!1039 = !DILocation(line: 251, column: 10, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !1036, file: !1, line: 249, column: 56)
!1041 = !DILocation(line: 251, column: 8, scope: !1040)
!1042 = !DILocation(line: 252, column: 10, scope: !1040)
!1043 = !DILocation(line: 252, column: 8, scope: !1040)
!1044 = !DILocation(line: 253, column: 12, scope: !1040)
!1045 = !DILocation(line: 253, column: 19, scope: !1040)
!1046 = !DILocation(line: 253, column: 10, scope: !1040)
!1047 = !DILocation(line: 254, column: 20, scope: !1040)
!1048 = !DILocation(line: 254, column: 14, scope: !1040)
!1049 = !DILocation(line: 254, column: 12, scope: !1040)
!1050 = !DILocation(line: 255, column: 13, scope: !1040)
!1051 = !DILocation(line: 255, column: 20, scope: !1040)
!1052 = !DILocation(line: 255, column: 11, scope: !1040)
!1053 = !DILocation(line: 257, column: 10, scope: !1040)
!1054 = !DILocation(line: 257, column: 8, scope: !1040)
!1055 = !DILocation(line: 258, column: 25, scope: !1040)
!1056 = !DILocation(line: 258, column: 37, scope: !1040)
!1057 = !DILocation(line: 258, column: 41, scope: !1040)
!1058 = !DILocation(line: 258, column: 39, scope: !1040)
!1059 = !DILocation(line: 258, column: 5, scope: !1040)
!1060 = !DILocation(line: 258, column: 21, scope: !1040)
!1061 = !DILocation(line: 259, column: 25, scope: !1040)
!1062 = !DILocation(line: 259, column: 37, scope: !1040)
!1063 = !DILocation(line: 259, column: 41, scope: !1040)
!1064 = !DILocation(line: 259, column: 39, scope: !1040)
!1065 = !DILocation(line: 259, column: 5, scope: !1040)
!1066 = !DILocation(line: 259, column: 23, scope: !1040)
!1067 = !DILocation(line: 260, column: 25, scope: !1040)
!1068 = !DILocation(line: 260, column: 37, scope: !1040)
!1069 = !DILocation(line: 260, column: 41, scope: !1040)
!1070 = !DILocation(line: 260, column: 39, scope: !1040)
!1071 = !DILocation(line: 260, column: 5, scope: !1040)
!1072 = !DILocation(line: 260, column: 22, scope: !1040)
!1073 = !DILocation(line: 261, column: 12, scope: !1040)
!1074 = !DILocation(line: 262, column: 10, scope: !1040)
!1075 = !DILocation(line: 262, column: 8, scope: !1040)
!1076 = !DILocation(line: 263, column: 25, scope: !1040)
!1077 = !DILocation(line: 263, column: 37, scope: !1040)
!1078 = !DILocation(line: 263, column: 41, scope: !1040)
!1079 = !DILocation(line: 263, column: 39, scope: !1040)
!1080 = !DILocation(line: 263, column: 5, scope: !1040)
!1081 = !DILocation(line: 263, column: 21, scope: !1040)
!1082 = !DILocation(line: 264, column: 25, scope: !1040)
!1083 = !DILocation(line: 264, column: 37, scope: !1040)
!1084 = !DILocation(line: 264, column: 41, scope: !1040)
!1085 = !DILocation(line: 264, column: 39, scope: !1040)
!1086 = !DILocation(line: 264, column: 5, scope: !1040)
!1087 = !DILocation(line: 264, column: 23, scope: !1040)
!1088 = !DILocation(line: 265, column: 25, scope: !1040)
!1089 = !DILocation(line: 265, column: 37, scope: !1040)
!1090 = !DILocation(line: 265, column: 41, scope: !1040)
!1091 = !DILocation(line: 265, column: 39, scope: !1040)
!1092 = !DILocation(line: 265, column: 5, scope: !1040)
!1093 = !DILocation(line: 265, column: 22, scope: !1040)
!1094 = !DILocation(line: 266, column: 12, scope: !1040)
!1095 = !DILocation(line: 267, column: 3, scope: !1040)
!1096 = !DILocation(line: 249, column: 52, scope: !1036)
!1097 = !DILocation(line: 249, column: 3, scope: !1036)
!1098 = distinct !{!1098, !1038, !1099, !867}
!1099 = !DILocation(line: 267, column: 3, scope: !1030)
!1100 = !DILocation(line: 269, column: 7, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !963, file: !1, line: 269, column: 7)
!1102 = !DILocation(line: 269, column: 14, scope: !1101)
!1103 = !DILocation(line: 269, column: 27, scope: !1101)
!1104 = !DILocation(line: 270, column: 10, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !1101, file: !1, line: 269, column: 32)
!1106 = !DILocation(line: 270, column: 8, scope: !1105)
!1107 = !DILocation(line: 271, column: 10, scope: !1105)
!1108 = !DILocation(line: 271, column: 8, scope: !1105)
!1109 = !DILocation(line: 272, column: 12, scope: !1105)
!1110 = !DILocation(line: 272, column: 19, scope: !1105)
!1111 = !DILocation(line: 272, column: 10, scope: !1105)
!1112 = !DILocation(line: 273, column: 20, scope: !1105)
!1113 = !DILocation(line: 273, column: 14, scope: !1105)
!1114 = !DILocation(line: 273, column: 12, scope: !1105)
!1115 = !DILocation(line: 274, column: 13, scope: !1105)
!1116 = !DILocation(line: 274, column: 20, scope: !1105)
!1117 = !DILocation(line: 274, column: 11, scope: !1105)
!1118 = !DILocation(line: 275, column: 10, scope: !1105)
!1119 = !DILocation(line: 275, column: 8, scope: !1105)
!1120 = !DILocation(line: 276, column: 25, scope: !1105)
!1121 = !DILocation(line: 276, column: 37, scope: !1105)
!1122 = !DILocation(line: 276, column: 41, scope: !1105)
!1123 = !DILocation(line: 276, column: 39, scope: !1105)
!1124 = !DILocation(line: 276, column: 5, scope: !1105)
!1125 = !DILocation(line: 276, column: 21, scope: !1105)
!1126 = !DILocation(line: 277, column: 25, scope: !1105)
!1127 = !DILocation(line: 277, column: 37, scope: !1105)
!1128 = !DILocation(line: 277, column: 41, scope: !1105)
!1129 = !DILocation(line: 277, column: 39, scope: !1105)
!1130 = !DILocation(line: 277, column: 5, scope: !1105)
!1131 = !DILocation(line: 277, column: 23, scope: !1105)
!1132 = !DILocation(line: 278, column: 25, scope: !1105)
!1133 = !DILocation(line: 278, column: 37, scope: !1105)
!1134 = !DILocation(line: 278, column: 41, scope: !1105)
!1135 = !DILocation(line: 278, column: 39, scope: !1105)
!1136 = !DILocation(line: 278, column: 5, scope: !1105)
!1137 = !DILocation(line: 278, column: 22, scope: !1105)
!1138 = !DILocation(line: 279, column: 3, scope: !1105)
!1139 = !DILocation(line: 280, column: 1, scope: !963)
!1140 = distinct !DISubprogram(name: "build_ycc_rgb_table", scope: !1, file: !1, line: 83, type: !41, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !479)
!1141 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1140, file: !1, line: 83, type: !43)
!1142 = !DILocation(line: 83, column: 39, scope: !1140)
!1143 = !DILocalVariable(name: "upsample", scope: !1140, file: !1, line: 85, type: !31)
!1144 = !DILocation(line: 85, column: 19, scope: !1140)
!1145 = !DILocation(line: 85, column: 48, scope: !1140)
!1146 = !DILocation(line: 85, column: 55, scope: !1140)
!1147 = !DILocalVariable(name: "i", scope: !1140, file: !1, line: 86, type: !69)
!1148 = !DILocation(line: 86, column: 7, scope: !1140)
!1149 = !DILocalVariable(name: "x", scope: !1140, file: !1, line: 87, type: !464)
!1150 = !DILocation(line: 87, column: 9, scope: !1140)
!1151 = !DILocation(line: 91, column: 7, scope: !1140)
!1152 = !DILocation(line: 91, column: 14, scope: !1140)
!1153 = !DILocation(line: 91, column: 19, scope: !1140)
!1154 = !DILocation(line: 91, column: 48, scope: !1140)
!1155 = !DILocation(line: 91, column: 5, scope: !1140)
!1156 = !DILocation(line: 90, column: 3, scope: !1140)
!1157 = !DILocation(line: 90, column: 13, scope: !1140)
!1158 = !DILocation(line: 90, column: 22, scope: !1140)
!1159 = !DILocation(line: 94, column: 7, scope: !1140)
!1160 = !DILocation(line: 94, column: 14, scope: !1140)
!1161 = !DILocation(line: 94, column: 19, scope: !1140)
!1162 = !DILocation(line: 94, column: 48, scope: !1140)
!1163 = !DILocation(line: 94, column: 5, scope: !1140)
!1164 = !DILocation(line: 93, column: 3, scope: !1140)
!1165 = !DILocation(line: 93, column: 13, scope: !1140)
!1166 = !DILocation(line: 93, column: 22, scope: !1140)
!1167 = !DILocation(line: 97, column: 7, scope: !1140)
!1168 = !DILocation(line: 97, column: 14, scope: !1140)
!1169 = !DILocation(line: 97, column: 19, scope: !1140)
!1170 = !DILocation(line: 97, column: 48, scope: !1140)
!1171 = !DILocation(line: 97, column: 5, scope: !1140)
!1172 = !DILocation(line: 96, column: 3, scope: !1140)
!1173 = !DILocation(line: 96, column: 13, scope: !1140)
!1174 = !DILocation(line: 96, column: 22, scope: !1140)
!1175 = !DILocation(line: 100, column: 7, scope: !1140)
!1176 = !DILocation(line: 100, column: 14, scope: !1140)
!1177 = !DILocation(line: 100, column: 19, scope: !1140)
!1178 = !DILocation(line: 100, column: 48, scope: !1140)
!1179 = !DILocation(line: 100, column: 5, scope: !1140)
!1180 = !DILocation(line: 99, column: 3, scope: !1140)
!1181 = !DILocation(line: 99, column: 13, scope: !1140)
!1182 = !DILocation(line: 99, column: 22, scope: !1140)
!1183 = !DILocation(line: 103, column: 10, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !1140, file: !1, line: 103, column: 3)
!1185 = !DILocation(line: 103, column: 17, scope: !1184)
!1186 = !DILocation(line: 103, column: 8, scope: !1184)
!1187 = !DILocation(line: 103, column: 35, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1184, file: !1, line: 103, column: 3)
!1189 = !DILocation(line: 103, column: 37, scope: !1188)
!1190 = !DILocation(line: 103, column: 3, scope: !1184)
!1191 = !DILocation(line: 108, column: 7, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1188, file: !1, line: 103, column: 62)
!1193 = !DILocation(line: 107, column: 29, scope: !1192)
!1194 = !DILocation(line: 107, column: 5, scope: !1192)
!1195 = !DILocation(line: 107, column: 15, scope: !1192)
!1196 = !DILocation(line: 107, column: 24, scope: !1192)
!1197 = !DILocation(line: 107, column: 27, scope: !1192)
!1198 = !DILocation(line: 111, column: 7, scope: !1192)
!1199 = !DILocation(line: 110, column: 29, scope: !1192)
!1200 = !DILocation(line: 110, column: 5, scope: !1192)
!1201 = !DILocation(line: 110, column: 15, scope: !1192)
!1202 = !DILocation(line: 110, column: 24, scope: !1192)
!1203 = !DILocation(line: 110, column: 27, scope: !1192)
!1204 = !DILocation(line: 113, column: 48, scope: !1192)
!1205 = !DILocation(line: 113, column: 46, scope: !1192)
!1206 = !DILocation(line: 113, column: 5, scope: !1192)
!1207 = !DILocation(line: 113, column: 15, scope: !1192)
!1208 = !DILocation(line: 113, column: 24, scope: !1192)
!1209 = !DILocation(line: 113, column: 27, scope: !1192)
!1210 = !DILocation(line: 116, column: 48, scope: !1192)
!1211 = !DILocation(line: 116, column: 46, scope: !1192)
!1212 = !DILocation(line: 116, column: 50, scope: !1192)
!1213 = !DILocation(line: 116, column: 5, scope: !1192)
!1214 = !DILocation(line: 116, column: 15, scope: !1192)
!1215 = !DILocation(line: 116, column: 24, scope: !1192)
!1216 = !DILocation(line: 116, column: 27, scope: !1192)
!1217 = !DILocation(line: 117, column: 3, scope: !1192)
!1218 = !DILocation(line: 103, column: 53, scope: !1188)
!1219 = !DILocation(line: 103, column: 58, scope: !1188)
!1220 = !DILocation(line: 103, column: 3, scope: !1188)
!1221 = distinct !{!1221, !1190, !1222, !867}
!1222 = !DILocation(line: 117, column: 3, scope: !1184)
!1223 = !DILocation(line: 118, column: 1, scope: !1140)
