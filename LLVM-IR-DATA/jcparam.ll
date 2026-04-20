; ModuleID = 'cBench/consumer_jpeg_c/src/jcparam.c'
source_filename = "cBench/consumer_jpeg_c/src/jcparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jpeg_compress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, double, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [16 x i8], [16 x i8], [16 x i8], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.JQUANT_TBL = type { [64 x i16], i32 }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.jpeg_scan_info = type { i32, [4 x i32], i32, i32, i32, i32 }
%struct.JHUFF_TBL = type { [17 x i8], [256 x i8], i32 }

@jpeg_set_linear_quality.std_luminance_quant_tbl = internal constant [64 x i32] [i32 16, i32 11, i32 10, i32 16, i32 24, i32 40, i32 51, i32 61, i32 12, i32 12, i32 14, i32 19, i32 26, i32 58, i32 60, i32 55, i32 14, i32 13, i32 16, i32 24, i32 40, i32 57, i32 69, i32 56, i32 14, i32 17, i32 22, i32 29, i32 51, i32 87, i32 80, i32 62, i32 18, i32 22, i32 37, i32 56, i32 68, i32 109, i32 103, i32 77, i32 24, i32 35, i32 55, i32 64, i32 81, i32 104, i32 113, i32 92, i32 49, i32 64, i32 78, i32 87, i32 103, i32 121, i32 120, i32 101, i32 72, i32 92, i32 95, i32 98, i32 112, i32 100, i32 103, i32 99], align 16, !dbg !0
@jpeg_set_linear_quality.std_chrominance_quant_tbl = internal constant [64 x i32] [i32 17, i32 18, i32 24, i32 47, i32 99, i32 99, i32 99, i32 99, i32 18, i32 21, i32 26, i32 66, i32 99, i32 99, i32 99, i32 99, i32 24, i32 26, i32 56, i32 99, i32 99, i32 99, i32 99, i32 99, i32 47, i32 66, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99], align 16, !dbg !529
@std_huff_tables.bits_dc_luminance = internal constant [17 x i8] c"\00\00\01\05\01\01\01\01\01\01\00\00\00\00\00\00\00", align 16, !dbg !533
@std_huff_tables.val_dc_luminance = internal constant [12 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B", align 1, !dbg !539
@std_huff_tables.bits_dc_chrominance = internal constant [17 x i8] c"\00\00\03\01\01\01\01\01\01\01\01\01\00\00\00\00\00", align 16, !dbg !544
@std_huff_tables.val_dc_chrominance = internal constant [12 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B", align 1, !dbg !546
@std_huff_tables.bits_ac_luminance = internal constant [17 x i8] c"\00\00\02\01\03\03\02\04\03\05\05\04\04\00\00\01}", align 16, !dbg !548
@std_huff_tables.val_ac_luminance = internal constant [162 x i8] c"\01\02\03\00\04\11\05\12!1A\06\13Qa\07\22q\142\81\91\A1\08#B\B1\C1\15R\D1\F0$3br\82\09\0A\16\17\18\19\1A%&'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz\83\84\85\86\87\88\89\8A\92\93\94\95\96\97\98\99\9A\A2\A3\A4\A5\A6\A7\A8\A9\AA\B2\B3\B4\B5\B6\B7\B8\B9\BA\C2\C3\C4\C5\C6\C7\C8\C9\CA\D2\D3\D4\D5\D6\D7\D8\D9\DA\E1\E2\E3\E4\E5\E6\E7\E8\E9\EA\F1\F2\F3\F4\F5\F6\F7\F8\F9\FA", align 16, !dbg !550
@std_huff_tables.bits_ac_chrominance = internal constant [17 x i8] c"\00\00\02\01\02\04\04\03\04\07\05\04\04\00\01\02w", align 16, !dbg !555
@std_huff_tables.val_ac_chrominance = internal constant [162 x i8] c"\00\01\02\03\11\04\05!1\06\12AQ\07aq\13\222\81\08\14B\91\A1\B1\C1\09#3R\F0\15br\D1\0A\16$4\E1%\F1\17\18\19\1A&'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz\82\83\84\85\86\87\88\89\8A\92\93\94\95\96\97\98\99\9A\A2\A3\A4\A5\A6\A7\A8\A9\AA\B2\B3\B4\B5\B6\B7\B8\B9\BA\C2\C3\C4\C5\C6\C7\C8\C9\CA\D2\D3\D4\D5\D6\D7\D8\D9\DA\E2\E3\E4\E5\E6\E7\E8\E9\EA\F2\F3\F4\F5\F6\F7\F8\F9\FA", align 16, !dbg !557

; Function Attrs: noinline nounwind uwtable
define dso_local void @jpeg_add_quant_table(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 !dbg !567 {
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store ptr %0, ptr %6, align 8
    #dbg_declare(ptr %6, !571, !DIExpression(), !572)
  store i32 %1, ptr %7, align 4
    #dbg_declare(ptr %7, !573, !DIExpression(), !574)
  store ptr %2, ptr %8, align 8
    #dbg_declare(ptr %8, !575, !DIExpression(), !576)
  store i32 %3, ptr %9, align 4
    #dbg_declare(ptr %9, !577, !DIExpression(), !578)
  store i32 %4, ptr %10, align 4
    #dbg_declare(ptr %10, !579, !DIExpression(), !580)
    #dbg_declare(ptr %11, !581, !DIExpression(), !583)
  %14 = load ptr, ptr %6, align 8, !dbg !584
  %15 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %14, i32 0, i32 15, !dbg !585
  %16 = load i32, ptr %7, align 4, !dbg !586
  %17 = sext i32 %16 to i64, !dbg !584
  %18 = getelementptr inbounds [4 x ptr], ptr %15, i64 0, i64 %17, !dbg !584
  store ptr %18, ptr %11, align 8, !dbg !583
    #dbg_declare(ptr %12, !587, !DIExpression(), !588)
    #dbg_declare(ptr %13, !589, !DIExpression(), !590)
  %19 = load ptr, ptr %6, align 8, !dbg !591
  %20 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %19, i32 0, i32 4, !dbg !593
  %21 = load i32, ptr %20, align 4, !dbg !593
  %22 = icmp ne i32 %21, 100, !dbg !594
  br i1 %22, label %23, label %42, !dbg !594

23:                                               ; preds = %5
  %24 = load ptr, ptr %6, align 8, !dbg !595
  %25 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %24, i32 0, i32 0, !dbg !595
  %26 = load ptr, ptr %25, align 8, !dbg !595
  %27 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %26, i32 0, i32 5, !dbg !595
  store i32 18, ptr %27, align 8, !dbg !595
  %28 = load ptr, ptr %6, align 8, !dbg !595
  %29 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %28, i32 0, i32 4, !dbg !595
  %30 = load i32, ptr %29, align 4, !dbg !595
  %31 = load ptr, ptr %6, align 8, !dbg !595
  %32 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %31, i32 0, i32 0, !dbg !595
  %33 = load ptr, ptr %32, align 8, !dbg !595
  %34 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %33, i32 0, i32 6, !dbg !595
  %35 = getelementptr inbounds [8 x i32], ptr %34, i64 0, i64 0, !dbg !595
  store i32 %30, ptr %35, align 4, !dbg !595
  %36 = load ptr, ptr %6, align 8, !dbg !595
  %37 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %36, i32 0, i32 0, !dbg !595
  %38 = load ptr, ptr %37, align 8, !dbg !595
  %39 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %38, i32 0, i32 0, !dbg !595
  %40 = load ptr, ptr %39, align 8, !dbg !595
  %41 = load ptr, ptr %6, align 8, !dbg !595
  call void %40(ptr noundef %41), !dbg !595
  br label %42, !dbg !595

42:                                               ; preds = %23, %5
  %43 = load ptr, ptr %11, align 8, !dbg !596
  %44 = load ptr, ptr %43, align 8, !dbg !598
  %45 = icmp eq ptr %44, null, !dbg !599
  br i1 %45, label %46, label %50, !dbg !599

46:                                               ; preds = %42
  %47 = load ptr, ptr %6, align 8, !dbg !600
  %48 = call ptr @jpeg_alloc_quant_table(ptr noundef %47), !dbg !601
  %49 = load ptr, ptr %11, align 8, !dbg !602
  store ptr %48, ptr %49, align 8, !dbg !603
  br label %50, !dbg !604

50:                                               ; preds = %46, %42
  store i32 0, ptr %12, align 4, !dbg !605
  br label %51, !dbg !607

51:                                               ; preds = %89, %50
  %52 = load i32, ptr %12, align 4, !dbg !608
  %53 = icmp slt i32 %52, 64, !dbg !610
  br i1 %53, label %54, label %92, !dbg !611

54:                                               ; preds = %51
  %55 = load ptr, ptr %8, align 8, !dbg !612
  %56 = load i32, ptr %12, align 4, !dbg !614
  %57 = sext i32 %56 to i64, !dbg !612
  %58 = getelementptr inbounds i32, ptr %55, i64 %57, !dbg !612
  %59 = load i32, ptr %58, align 4, !dbg !612
  %60 = zext i32 %59 to i64, !dbg !615
  %61 = load i32, ptr %9, align 4, !dbg !616
  %62 = sext i32 %61 to i64, !dbg !616
  %63 = mul nsw i64 %60, %62, !dbg !617
  %64 = add nsw i64 %63, 50, !dbg !618
  %65 = sdiv i64 %64, 100, !dbg !619
  store i64 %65, ptr %13, align 8, !dbg !620
  %66 = load i64, ptr %13, align 8, !dbg !621
  %67 = icmp sle i64 %66, 0, !dbg !623
  br i1 %67, label %68, label %69, !dbg !623

68:                                               ; preds = %54
  store i64 1, ptr %13, align 8, !dbg !624
  br label %69, !dbg !625

69:                                               ; preds = %68, %54
  %70 = load i64, ptr %13, align 8, !dbg !626
  %71 = icmp sgt i64 %70, 32767, !dbg !628
  br i1 %71, label %72, label %73, !dbg !628

72:                                               ; preds = %69
  store i64 32767, ptr %13, align 8, !dbg !629
  br label %73, !dbg !630

73:                                               ; preds = %72, %69
  %74 = load i32, ptr %10, align 4, !dbg !631
  %75 = icmp ne i32 %74, 0, !dbg !631
  br i1 %75, label %76, label %80, !dbg !633

76:                                               ; preds = %73
  %77 = load i64, ptr %13, align 8, !dbg !634
  %78 = icmp sgt i64 %77, 255, !dbg !635
  br i1 %78, label %79, label %80, !dbg !633

79:                                               ; preds = %76
  store i64 255, ptr %13, align 8, !dbg !636
  br label %80, !dbg !637

80:                                               ; preds = %79, %76, %73
  %81 = load i64, ptr %13, align 8, !dbg !638
  %82 = trunc i64 %81 to i16, !dbg !639
  %83 = load ptr, ptr %11, align 8, !dbg !640
  %84 = load ptr, ptr %83, align 8, !dbg !641
  %85 = getelementptr inbounds nuw %struct.JQUANT_TBL, ptr %84, i32 0, i32 0, !dbg !642
  %86 = load i32, ptr %12, align 4, !dbg !643
  %87 = sext i32 %86 to i64, !dbg !644
  %88 = getelementptr inbounds [64 x i16], ptr %85, i64 0, i64 %87, !dbg !644
  store i16 %82, ptr %88, align 2, !dbg !645
  br label %89, !dbg !646

89:                                               ; preds = %80
  %90 = load i32, ptr %12, align 4, !dbg !647
  %91 = add nsw i32 %90, 1, !dbg !647
  store i32 %91, ptr %12, align 4, !dbg !647
  br label %51, !dbg !648, !llvm.loop !649

92:                                               ; preds = %51
  %93 = load ptr, ptr %11, align 8, !dbg !652
  %94 = load ptr, ptr %93, align 8, !dbg !653
  %95 = getelementptr inbounds nuw %struct.JQUANT_TBL, ptr %94, i32 0, i32 1, !dbg !654
  store i32 0, ptr %95, align 4, !dbg !655
  ret void, !dbg !656
}

declare ptr @jpeg_alloc_quant_table(ptr noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @jpeg_set_linear_quality(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 !dbg !2 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
    #dbg_declare(ptr %4, !657, !DIExpression(), !658)
  store i32 %1, ptr %5, align 4
    #dbg_declare(ptr %5, !659, !DIExpression(), !660)
  store i32 %2, ptr %6, align 4
    #dbg_declare(ptr %6, !661, !DIExpression(), !662)
  %7 = load ptr, ptr %4, align 8, !dbg !663
  %8 = load i32, ptr %5, align 4, !dbg !664
  %9 = load i32, ptr %6, align 4, !dbg !665
  call void @jpeg_add_quant_table(ptr noundef %7, i32 noundef 0, ptr noundef @jpeg_set_linear_quality.std_luminance_quant_tbl, i32 noundef %8, i32 noundef %9), !dbg !666
  %10 = load ptr, ptr %4, align 8, !dbg !667
  %11 = load i32, ptr %5, align 4, !dbg !668
  %12 = load i32, ptr %6, align 4, !dbg !669
  call void @jpeg_add_quant_table(ptr noundef %10, i32 noundef 1, ptr noundef @jpeg_set_linear_quality.std_chrominance_quant_tbl, i32 noundef %11, i32 noundef %12), !dbg !670
  ret void, !dbg !671
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @jpeg_quality_scaling(i32 noundef %0) #0 !dbg !672 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
    #dbg_declare(ptr %2, !675, !DIExpression(), !676)
  %3 = load i32, ptr %2, align 4, !dbg !677
  %4 = icmp sle i32 %3, 0, !dbg !679
  br i1 %4, label %5, label %6, !dbg !679

5:                                                ; preds = %1
  store i32 1, ptr %2, align 4, !dbg !680
  br label %6, !dbg !681

6:                                                ; preds = %5, %1
  %7 = load i32, ptr %2, align 4, !dbg !682
  %8 = icmp sgt i32 %7, 100, !dbg !684
  br i1 %8, label %9, label %10, !dbg !684

9:                                                ; preds = %6
  store i32 100, ptr %2, align 4, !dbg !685
  br label %10, !dbg !686

10:                                               ; preds = %9, %6
  %11 = load i32, ptr %2, align 4, !dbg !687
  %12 = icmp slt i32 %11, 50, !dbg !689
  br i1 %12, label %13, label %16, !dbg !689

13:                                               ; preds = %10
  %14 = load i32, ptr %2, align 4, !dbg !690
  %15 = sdiv i32 5000, %14, !dbg !691
  store i32 %15, ptr %2, align 4, !dbg !692
  br label %20, !dbg !693

16:                                               ; preds = %10
  %17 = load i32, ptr %2, align 4, !dbg !694
  %18 = mul nsw i32 %17, 2, !dbg !695
  %19 = sub nsw i32 200, %18, !dbg !696
  store i32 %19, ptr %2, align 4, !dbg !697
  br label %20

20:                                               ; preds = %16, %13
  %21 = load i32, ptr %2, align 4, !dbg !698
  ret i32 %21, !dbg !699
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @jpeg_set_quality(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 !dbg !700 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
    #dbg_declare(ptr %4, !701, !DIExpression(), !702)
  store i32 %1, ptr %5, align 4
    #dbg_declare(ptr %5, !703, !DIExpression(), !704)
  store i32 %2, ptr %6, align 4
    #dbg_declare(ptr %6, !705, !DIExpression(), !706)
  %7 = load i32, ptr %5, align 4, !dbg !707
  %8 = call i32 @jpeg_quality_scaling(i32 noundef %7), !dbg !708
  store i32 %8, ptr %5, align 4, !dbg !709
  %9 = load ptr, ptr %4, align 8, !dbg !710
  %10 = load i32, ptr %5, align 4, !dbg !711
  %11 = load i32, ptr %6, align 4, !dbg !712
  call void @jpeg_set_linear_quality(ptr noundef %9, i32 noundef %10, i32 noundef %11), !dbg !713
  ret void, !dbg !714
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @jpeg_set_defaults(ptr noundef %0) #0 !dbg !715 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !716, !DIExpression(), !717)
    #dbg_declare(ptr %3, !718, !DIExpression(), !719)
  %4 = load ptr, ptr %2, align 8, !dbg !720
  %5 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %4, i32 0, i32 4, !dbg !722
  %6 = load i32, ptr %5, align 4, !dbg !722
  %7 = icmp ne i32 %6, 100, !dbg !723
  br i1 %7, label %8, label %27, !dbg !723

8:                                                ; preds = %1
  %9 = load ptr, ptr %2, align 8, !dbg !724
  %10 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %9, i32 0, i32 0, !dbg !724
  %11 = load ptr, ptr %10, align 8, !dbg !724
  %12 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %11, i32 0, i32 5, !dbg !724
  store i32 18, ptr %12, align 8, !dbg !724
  %13 = load ptr, ptr %2, align 8, !dbg !724
  %14 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %13, i32 0, i32 4, !dbg !724
  %15 = load i32, ptr %14, align 4, !dbg !724
  %16 = load ptr, ptr %2, align 8, !dbg !724
  %17 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %16, i32 0, i32 0, !dbg !724
  %18 = load ptr, ptr %17, align 8, !dbg !724
  %19 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %18, i32 0, i32 6, !dbg !724
  %20 = getelementptr inbounds [8 x i32], ptr %19, i64 0, i64 0, !dbg !724
  store i32 %15, ptr %20, align 4, !dbg !724
  %21 = load ptr, ptr %2, align 8, !dbg !724
  %22 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %21, i32 0, i32 0, !dbg !724
  %23 = load ptr, ptr %22, align 8, !dbg !724
  %24 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %23, i32 0, i32 0, !dbg !724
  %25 = load ptr, ptr %24, align 8, !dbg !724
  %26 = load ptr, ptr %2, align 8, !dbg !724
  call void %25(ptr noundef %26), !dbg !724
  br label %27, !dbg !724

27:                                               ; preds = %8, %1
  %28 = load ptr, ptr %2, align 8, !dbg !725
  %29 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %28, i32 0, i32 14, !dbg !727
  %30 = load ptr, ptr %29, align 8, !dbg !727
  %31 = icmp eq ptr %30, null, !dbg !728
  br i1 %31, label %32, label %42, !dbg !728

32:                                               ; preds = %27
  %33 = load ptr, ptr %2, align 8, !dbg !729
  %34 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %33, i32 0, i32 1, !dbg !730
  %35 = load ptr, ptr %34, align 8, !dbg !730
  %36 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %35, i32 0, i32 0, !dbg !731
  %37 = load ptr, ptr %36, align 8, !dbg !731
  %38 = load ptr, ptr %2, align 8, !dbg !732
  %39 = call ptr %37(ptr noundef %38, i32 noundef 0, i64 noundef 960), !dbg !733
  %40 = load ptr, ptr %2, align 8, !dbg !734
  %41 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %40, i32 0, i32 14, !dbg !735
  store ptr %39, ptr %41, align 8, !dbg !736
  br label %42, !dbg !734

42:                                               ; preds = %32, %27
  %43 = load ptr, ptr %2, align 8, !dbg !737
  %44 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %43, i32 0, i32 11, !dbg !738
  store i32 8, ptr %44, align 8, !dbg !739
  %45 = load ptr, ptr %2, align 8, !dbg !740
  call void @jpeg_set_quality(ptr noundef %45, i32 noundef 75, i32 noundef 1), !dbg !741
  %46 = load ptr, ptr %2, align 8, !dbg !742
  call void @std_huff_tables(ptr noundef %46), !dbg !743
  store i32 0, ptr %3, align 4, !dbg !744
  br label %47, !dbg !746

47:                                               ; preds = %66, %42
  %48 = load i32, ptr %3, align 4, !dbg !747
  %49 = icmp slt i32 %48, 16, !dbg !749
  br i1 %49, label %50, label %69, !dbg !750

50:                                               ; preds = %47
  %51 = load ptr, ptr %2, align 8, !dbg !751
  %52 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %51, i32 0, i32 18, !dbg !753
  %53 = load i32, ptr %3, align 4, !dbg !754
  %54 = sext i32 %53 to i64, !dbg !751
  %55 = getelementptr inbounds [16 x i8], ptr %52, i64 0, i64 %54, !dbg !751
  store i8 0, ptr %55, align 1, !dbg !755
  %56 = load ptr, ptr %2, align 8, !dbg !756
  %57 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %56, i32 0, i32 19, !dbg !757
  %58 = load i32, ptr %3, align 4, !dbg !758
  %59 = sext i32 %58 to i64, !dbg !756
  %60 = getelementptr inbounds [16 x i8], ptr %57, i64 0, i64 %59, !dbg !756
  store i8 1, ptr %60, align 1, !dbg !759
  %61 = load ptr, ptr %2, align 8, !dbg !760
  %62 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %61, i32 0, i32 20, !dbg !761
  %63 = load i32, ptr %3, align 4, !dbg !762
  %64 = sext i32 %63 to i64, !dbg !760
  %65 = getelementptr inbounds [16 x i8], ptr %62, i64 0, i64 %64, !dbg !760
  store i8 5, ptr %65, align 1, !dbg !763
  br label %66, !dbg !764

66:                                               ; preds = %50
  %67 = load i32, ptr %3, align 4, !dbg !765
  %68 = add nsw i32 %67, 1, !dbg !765
  store i32 %68, ptr %3, align 4, !dbg !765
  br label %47, !dbg !766, !llvm.loop !767

69:                                               ; preds = %47
  %70 = load ptr, ptr %2, align 8, !dbg !769
  %71 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %70, i32 0, i32 22, !dbg !770
  store ptr null, ptr %71, align 8, !dbg !771
  %72 = load ptr, ptr %2, align 8, !dbg !772
  %73 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %72, i32 0, i32 21, !dbg !773
  store i32 0, ptr %73, align 8, !dbg !774
  %74 = load ptr, ptr %2, align 8, !dbg !775
  %75 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %74, i32 0, i32 23, !dbg !776
  store i32 0, ptr %75, align 8, !dbg !777
  %76 = load ptr, ptr %2, align 8, !dbg !778
  %77 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %76, i32 0, i32 24, !dbg !779
  store i32 0, ptr %77, align 4, !dbg !780
  %78 = load ptr, ptr %2, align 8, !dbg !781
  %79 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %78, i32 0, i32 25, !dbg !782
  store i32 0, ptr %79, align 8, !dbg !783
  %80 = load ptr, ptr %2, align 8, !dbg !784
  %81 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %80, i32 0, i32 11, !dbg !786
  %82 = load i32, ptr %81, align 8, !dbg !786
  %83 = icmp sgt i32 %82, 8, !dbg !787
  br i1 %83, label %84, label %87, !dbg !787

84:                                               ; preds = %69
  %85 = load ptr, ptr %2, align 8, !dbg !788
  %86 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %85, i32 0, i32 25, !dbg !789
  store i32 1, ptr %86, align 8, !dbg !790
  br label %87, !dbg !788

87:                                               ; preds = %84, %69
  %88 = load ptr, ptr %2, align 8, !dbg !791
  %89 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %88, i32 0, i32 26, !dbg !792
  store i32 0, ptr %89, align 4, !dbg !793
  %90 = load ptr, ptr %2, align 8, !dbg !794
  %91 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %90, i32 0, i32 27, !dbg !795
  store i32 0, ptr %91, align 8, !dbg !796
  %92 = load ptr, ptr %2, align 8, !dbg !797
  %93 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %92, i32 0, i32 28, !dbg !798
  store i32 0, ptr %93, align 4, !dbg !799
  %94 = load ptr, ptr %2, align 8, !dbg !800
  %95 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %94, i32 0, i32 29, !dbg !801
  store i32 0, ptr %95, align 8, !dbg !802
  %96 = load ptr, ptr %2, align 8, !dbg !803
  %97 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %96, i32 0, i32 30, !dbg !804
  store i32 0, ptr %97, align 4, !dbg !805
  %98 = load ptr, ptr %2, align 8, !dbg !806
  %99 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %98, i32 0, i32 32, !dbg !807
  store i8 0, ptr %99, align 4, !dbg !808
  %100 = load ptr, ptr %2, align 8, !dbg !809
  %101 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %100, i32 0, i32 33, !dbg !810
  store i16 1, ptr %101, align 2, !dbg !811
  %102 = load ptr, ptr %2, align 8, !dbg !812
  %103 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %102, i32 0, i32 34, !dbg !813
  store i16 1, ptr %103, align 8, !dbg !814
  %104 = load ptr, ptr %2, align 8, !dbg !815
  call void @jpeg_default_colorspace(ptr noundef %104), !dbg !816
  ret void, !dbg !817
}

; Function Attrs: noinline nounwind uwtable
define internal void @std_huff_tables(ptr noundef %0) #0 !dbg !535 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !818, !DIExpression(), !819)
  %3 = load ptr, ptr %2, align 8, !dbg !820
  %4 = load ptr, ptr %2, align 8, !dbg !821
  %5 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %4, i32 0, i32 16, !dbg !822
  %6 = getelementptr inbounds [4 x ptr], ptr %5, i64 0, i64 0, !dbg !821
  call void @add_huff_table(ptr noundef %3, ptr noundef %6, ptr noundef @std_huff_tables.bits_dc_luminance, ptr noundef @std_huff_tables.val_dc_luminance), !dbg !823
  %7 = load ptr, ptr %2, align 8, !dbg !824
  %8 = load ptr, ptr %2, align 8, !dbg !825
  %9 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %8, i32 0, i32 17, !dbg !826
  %10 = getelementptr inbounds [4 x ptr], ptr %9, i64 0, i64 0, !dbg !825
  call void @add_huff_table(ptr noundef %7, ptr noundef %10, ptr noundef @std_huff_tables.bits_ac_luminance, ptr noundef @std_huff_tables.val_ac_luminance), !dbg !827
  %11 = load ptr, ptr %2, align 8, !dbg !828
  %12 = load ptr, ptr %2, align 8, !dbg !829
  %13 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %12, i32 0, i32 16, !dbg !830
  %14 = getelementptr inbounds [4 x ptr], ptr %13, i64 0, i64 1, !dbg !829
  call void @add_huff_table(ptr noundef %11, ptr noundef %14, ptr noundef @std_huff_tables.bits_dc_chrominance, ptr noundef @std_huff_tables.val_dc_chrominance), !dbg !831
  %15 = load ptr, ptr %2, align 8, !dbg !832
  %16 = load ptr, ptr %2, align 8, !dbg !833
  %17 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %16, i32 0, i32 17, !dbg !834
  %18 = getelementptr inbounds [4 x ptr], ptr %17, i64 0, i64 1, !dbg !833
  call void @add_huff_table(ptr noundef %15, ptr noundef %18, ptr noundef @std_huff_tables.bits_ac_chrominance, ptr noundef @std_huff_tables.val_ac_chrominance), !dbg !835
  ret void, !dbg !836
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @jpeg_default_colorspace(ptr noundef %0) #0 !dbg !837 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !838, !DIExpression(), !839)
  %3 = load ptr, ptr %2, align 8, !dbg !840
  %4 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %3, i32 0, i32 9, !dbg !841
  %5 = load i32, ptr %4, align 4, !dbg !841
  switch i32 %5, label %18 [
    i32 1, label %6
    i32 2, label %8
    i32 3, label %10
    i32 4, label %12
    i32 5, label %14
    i32 0, label %16
  ], !dbg !842

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !dbg !843
  call void @jpeg_set_colorspace(ptr noundef %7, i32 noundef 1), !dbg !845
  br label %29, !dbg !846

8:                                                ; preds = %1
  %9 = load ptr, ptr %2, align 8, !dbg !847
  call void @jpeg_set_colorspace(ptr noundef %9, i32 noundef 3), !dbg !848
  br label %29, !dbg !849

10:                                               ; preds = %1
  %11 = load ptr, ptr %2, align 8, !dbg !850
  call void @jpeg_set_colorspace(ptr noundef %11, i32 noundef 3), !dbg !851
  br label %29, !dbg !852

12:                                               ; preds = %1
  %13 = load ptr, ptr %2, align 8, !dbg !853
  call void @jpeg_set_colorspace(ptr noundef %13, i32 noundef 4), !dbg !854
  br label %29, !dbg !855

14:                                               ; preds = %1
  %15 = load ptr, ptr %2, align 8, !dbg !856
  call void @jpeg_set_colorspace(ptr noundef %15, i32 noundef 5), !dbg !857
  br label %29, !dbg !858

16:                                               ; preds = %1
  %17 = load ptr, ptr %2, align 8, !dbg !859
  call void @jpeg_set_colorspace(ptr noundef %17, i32 noundef 0), !dbg !860
  br label %29, !dbg !861

18:                                               ; preds = %1
  %19 = load ptr, ptr %2, align 8, !dbg !862
  %20 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %19, i32 0, i32 0, !dbg !862
  %21 = load ptr, ptr %20, align 8, !dbg !862
  %22 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %21, i32 0, i32 5, !dbg !862
  store i32 7, ptr %22, align 8, !dbg !862
  %23 = load ptr, ptr %2, align 8, !dbg !862
  %24 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %23, i32 0, i32 0, !dbg !862
  %25 = load ptr, ptr %24, align 8, !dbg !862
  %26 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %25, i32 0, i32 0, !dbg !862
  %27 = load ptr, ptr %26, align 8, !dbg !862
  %28 = load ptr, ptr %2, align 8, !dbg !862
  call void %27(ptr noundef %28), !dbg !862
  br label %29, !dbg !863

29:                                               ; preds = %18, %16, %14, %12, %10, %8, %6
  ret void, !dbg !864
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @jpeg_set_colorspace(ptr noundef %0, i32 noundef %1) #0 !dbg !865 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !868, !DIExpression(), !869)
  store i32 %1, ptr %4, align 4
    #dbg_declare(ptr %4, !870, !DIExpression(), !871)
    #dbg_declare(ptr %5, !872, !DIExpression(), !873)
    #dbg_declare(ptr %6, !874, !DIExpression(), !875)
  %7 = load ptr, ptr %3, align 8, !dbg !876
  %8 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %7, i32 0, i32 4, !dbg !878
  %9 = load i32, ptr %8, align 4, !dbg !878
  %10 = icmp ne i32 %9, 100, !dbg !879
  br i1 %10, label %11, label %30, !dbg !879

11:                                               ; preds = %2
  %12 = load ptr, ptr %3, align 8, !dbg !880
  %13 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %12, i32 0, i32 0, !dbg !880
  %14 = load ptr, ptr %13, align 8, !dbg !880
  %15 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %14, i32 0, i32 5, !dbg !880
  store i32 18, ptr %15, align 8, !dbg !880
  %16 = load ptr, ptr %3, align 8, !dbg !880
  %17 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %16, i32 0, i32 4, !dbg !880
  %18 = load i32, ptr %17, align 4, !dbg !880
  %19 = load ptr, ptr %3, align 8, !dbg !880
  %20 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %19, i32 0, i32 0, !dbg !880
  %21 = load ptr, ptr %20, align 8, !dbg !880
  %22 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %21, i32 0, i32 6, !dbg !880
  %23 = getelementptr inbounds [8 x i32], ptr %22, i64 0, i64 0, !dbg !880
  store i32 %18, ptr %23, align 4, !dbg !880
  %24 = load ptr, ptr %3, align 8, !dbg !880
  %25 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %24, i32 0, i32 0, !dbg !880
  %26 = load ptr, ptr %25, align 8, !dbg !880
  %27 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %26, i32 0, i32 0, !dbg !880
  %28 = load ptr, ptr %27, align 8, !dbg !880
  %29 = load ptr, ptr %3, align 8, !dbg !880
  call void %28(ptr noundef %29), !dbg !880
  br label %30, !dbg !880

30:                                               ; preds = %11, %2
  %31 = load i32, ptr %4, align 4, !dbg !881
  %32 = load ptr, ptr %3, align 8, !dbg !882
  %33 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %32, i32 0, i32 13, !dbg !883
  store i32 %31, ptr %33, align 8, !dbg !884
  %34 = load ptr, ptr %3, align 8, !dbg !885
  %35 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %34, i32 0, i32 31, !dbg !886
  store i32 0, ptr %35, align 8, !dbg !887
  %36 = load ptr, ptr %3, align 8, !dbg !888
  %37 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %36, i32 0, i32 35, !dbg !889
  store i32 0, ptr %37, align 4, !dbg !890
  %38 = load i32, ptr %4, align 4, !dbg !891
  switch i32 %38, label %374 [
    i32 1, label %39
    i32 2, label %60
    i32 3, label %113
    i32 4, label %166
    i32 5, label %235
    i32 0, label %304
  ], !dbg !892

39:                                               ; preds = %30
  %40 = load ptr, ptr %3, align 8, !dbg !893
  %41 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %40, i32 0, i32 31, !dbg !895
  store i32 1, ptr %41, align 8, !dbg !896
  %42 = load ptr, ptr %3, align 8, !dbg !897
  %43 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %42, i32 0, i32 12, !dbg !898
  store i32 1, ptr %43, align 4, !dbg !899
  %44 = load ptr, ptr %3, align 8, !dbg !900
  %45 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %44, i32 0, i32 14, !dbg !900
  %46 = load ptr, ptr %45, align 8, !dbg !900
  %47 = getelementptr inbounds %struct.jpeg_component_info, ptr %46, i64 0, !dbg !900
  store ptr %47, ptr %5, align 8, !dbg !900
  %48 = load ptr, ptr %5, align 8, !dbg !900
  %49 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %48, i32 0, i32 0, !dbg !900
  store i32 1, ptr %49, align 8, !dbg !900
  %50 = load ptr, ptr %5, align 8, !dbg !900
  %51 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %50, i32 0, i32 2, !dbg !900
  store i32 1, ptr %51, align 8, !dbg !900
  %52 = load ptr, ptr %5, align 8, !dbg !900
  %53 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %52, i32 0, i32 3, !dbg !900
  store i32 1, ptr %53, align 4, !dbg !900
  %54 = load ptr, ptr %5, align 8, !dbg !900
  %55 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %54, i32 0, i32 4, !dbg !900
  store i32 0, ptr %55, align 8, !dbg !900
  %56 = load ptr, ptr %5, align 8, !dbg !900
  %57 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %56, i32 0, i32 5, !dbg !900
  store i32 0, ptr %57, align 4, !dbg !900
  %58 = load ptr, ptr %5, align 8, !dbg !900
  %59 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %58, i32 0, i32 6, !dbg !900
  store i32 0, ptr %59, align 8, !dbg !900
  br label %385, !dbg !901

60:                                               ; preds = %30
  %61 = load ptr, ptr %3, align 8, !dbg !902
  %62 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %61, i32 0, i32 35, !dbg !903
  store i32 1, ptr %62, align 4, !dbg !904
  %63 = load ptr, ptr %3, align 8, !dbg !905
  %64 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %63, i32 0, i32 12, !dbg !906
  store i32 3, ptr %64, align 4, !dbg !907
  %65 = load ptr, ptr %3, align 8, !dbg !908
  %66 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %65, i32 0, i32 14, !dbg !908
  %67 = load ptr, ptr %66, align 8, !dbg !908
  %68 = getelementptr inbounds %struct.jpeg_component_info, ptr %67, i64 0, !dbg !908
  store ptr %68, ptr %5, align 8, !dbg !908
  %69 = load ptr, ptr %5, align 8, !dbg !908
  %70 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %69, i32 0, i32 0, !dbg !908
  store i32 82, ptr %70, align 8, !dbg !908
  %71 = load ptr, ptr %5, align 8, !dbg !908
  %72 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %71, i32 0, i32 2, !dbg !908
  store i32 1, ptr %72, align 8, !dbg !908
  %73 = load ptr, ptr %5, align 8, !dbg !908
  %74 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %73, i32 0, i32 3, !dbg !908
  store i32 1, ptr %74, align 4, !dbg !908
  %75 = load ptr, ptr %5, align 8, !dbg !908
  %76 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %75, i32 0, i32 4, !dbg !908
  store i32 0, ptr %76, align 8, !dbg !908
  %77 = load ptr, ptr %5, align 8, !dbg !908
  %78 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %77, i32 0, i32 5, !dbg !908
  store i32 0, ptr %78, align 4, !dbg !908
  %79 = load ptr, ptr %5, align 8, !dbg !908
  %80 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %79, i32 0, i32 6, !dbg !908
  store i32 0, ptr %80, align 8, !dbg !908
  %81 = load ptr, ptr %3, align 8, !dbg !909
  %82 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %81, i32 0, i32 14, !dbg !909
  %83 = load ptr, ptr %82, align 8, !dbg !909
  %84 = getelementptr inbounds %struct.jpeg_component_info, ptr %83, i64 1, !dbg !909
  store ptr %84, ptr %5, align 8, !dbg !909
  %85 = load ptr, ptr %5, align 8, !dbg !909
  %86 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %85, i32 0, i32 0, !dbg !909
  store i32 71, ptr %86, align 8, !dbg !909
  %87 = load ptr, ptr %5, align 8, !dbg !909
  %88 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %87, i32 0, i32 2, !dbg !909
  store i32 1, ptr %88, align 8, !dbg !909
  %89 = load ptr, ptr %5, align 8, !dbg !909
  %90 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %89, i32 0, i32 3, !dbg !909
  store i32 1, ptr %90, align 4, !dbg !909
  %91 = load ptr, ptr %5, align 8, !dbg !909
  %92 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %91, i32 0, i32 4, !dbg !909
  store i32 0, ptr %92, align 8, !dbg !909
  %93 = load ptr, ptr %5, align 8, !dbg !909
  %94 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %93, i32 0, i32 5, !dbg !909
  store i32 0, ptr %94, align 4, !dbg !909
  %95 = load ptr, ptr %5, align 8, !dbg !909
  %96 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %95, i32 0, i32 6, !dbg !909
  store i32 0, ptr %96, align 8, !dbg !909
  %97 = load ptr, ptr %3, align 8, !dbg !910
  %98 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %97, i32 0, i32 14, !dbg !910
  %99 = load ptr, ptr %98, align 8, !dbg !910
  %100 = getelementptr inbounds %struct.jpeg_component_info, ptr %99, i64 2, !dbg !910
  store ptr %100, ptr %5, align 8, !dbg !910
  %101 = load ptr, ptr %5, align 8, !dbg !910
  %102 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %101, i32 0, i32 0, !dbg !910
  store i32 66, ptr %102, align 8, !dbg !910
  %103 = load ptr, ptr %5, align 8, !dbg !910
  %104 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %103, i32 0, i32 2, !dbg !910
  store i32 1, ptr %104, align 8, !dbg !910
  %105 = load ptr, ptr %5, align 8, !dbg !910
  %106 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %105, i32 0, i32 3, !dbg !910
  store i32 1, ptr %106, align 4, !dbg !910
  %107 = load ptr, ptr %5, align 8, !dbg !910
  %108 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %107, i32 0, i32 4, !dbg !910
  store i32 0, ptr %108, align 8, !dbg !910
  %109 = load ptr, ptr %5, align 8, !dbg !910
  %110 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %109, i32 0, i32 5, !dbg !910
  store i32 0, ptr %110, align 4, !dbg !910
  %111 = load ptr, ptr %5, align 8, !dbg !910
  %112 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %111, i32 0, i32 6, !dbg !910
  store i32 0, ptr %112, align 8, !dbg !910
  br label %385, !dbg !911

113:                                              ; preds = %30
  %114 = load ptr, ptr %3, align 8, !dbg !912
  %115 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %114, i32 0, i32 31, !dbg !913
  store i32 1, ptr %115, align 8, !dbg !914
  %116 = load ptr, ptr %3, align 8, !dbg !915
  %117 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %116, i32 0, i32 12, !dbg !916
  store i32 3, ptr %117, align 4, !dbg !917
  %118 = load ptr, ptr %3, align 8, !dbg !918
  %119 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %118, i32 0, i32 14, !dbg !918
  %120 = load ptr, ptr %119, align 8, !dbg !918
  %121 = getelementptr inbounds %struct.jpeg_component_info, ptr %120, i64 0, !dbg !918
  store ptr %121, ptr %5, align 8, !dbg !918
  %122 = load ptr, ptr %5, align 8, !dbg !918
  %123 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %122, i32 0, i32 0, !dbg !918
  store i32 1, ptr %123, align 8, !dbg !918
  %124 = load ptr, ptr %5, align 8, !dbg !918
  %125 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %124, i32 0, i32 2, !dbg !918
  store i32 2, ptr %125, align 8, !dbg !918
  %126 = load ptr, ptr %5, align 8, !dbg !918
  %127 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %126, i32 0, i32 3, !dbg !918
  store i32 2, ptr %127, align 4, !dbg !918
  %128 = load ptr, ptr %5, align 8, !dbg !918
  %129 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %128, i32 0, i32 4, !dbg !918
  store i32 0, ptr %129, align 8, !dbg !918
  %130 = load ptr, ptr %5, align 8, !dbg !918
  %131 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %130, i32 0, i32 5, !dbg !918
  store i32 0, ptr %131, align 4, !dbg !918
  %132 = load ptr, ptr %5, align 8, !dbg !918
  %133 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %132, i32 0, i32 6, !dbg !918
  store i32 0, ptr %133, align 8, !dbg !918
  %134 = load ptr, ptr %3, align 8, !dbg !919
  %135 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %134, i32 0, i32 14, !dbg !919
  %136 = load ptr, ptr %135, align 8, !dbg !919
  %137 = getelementptr inbounds %struct.jpeg_component_info, ptr %136, i64 1, !dbg !919
  store ptr %137, ptr %5, align 8, !dbg !919
  %138 = load ptr, ptr %5, align 8, !dbg !919
  %139 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %138, i32 0, i32 0, !dbg !919
  store i32 2, ptr %139, align 8, !dbg !919
  %140 = load ptr, ptr %5, align 8, !dbg !919
  %141 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %140, i32 0, i32 2, !dbg !919
  store i32 1, ptr %141, align 8, !dbg !919
  %142 = load ptr, ptr %5, align 8, !dbg !919
  %143 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %142, i32 0, i32 3, !dbg !919
  store i32 1, ptr %143, align 4, !dbg !919
  %144 = load ptr, ptr %5, align 8, !dbg !919
  %145 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %144, i32 0, i32 4, !dbg !919
  store i32 1, ptr %145, align 8, !dbg !919
  %146 = load ptr, ptr %5, align 8, !dbg !919
  %147 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %146, i32 0, i32 5, !dbg !919
  store i32 1, ptr %147, align 4, !dbg !919
  %148 = load ptr, ptr %5, align 8, !dbg !919
  %149 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %148, i32 0, i32 6, !dbg !919
  store i32 1, ptr %149, align 8, !dbg !919
  %150 = load ptr, ptr %3, align 8, !dbg !920
  %151 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %150, i32 0, i32 14, !dbg !920
  %152 = load ptr, ptr %151, align 8, !dbg !920
  %153 = getelementptr inbounds %struct.jpeg_component_info, ptr %152, i64 2, !dbg !920
  store ptr %153, ptr %5, align 8, !dbg !920
  %154 = load ptr, ptr %5, align 8, !dbg !920
  %155 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %154, i32 0, i32 0, !dbg !920
  store i32 3, ptr %155, align 8, !dbg !920
  %156 = load ptr, ptr %5, align 8, !dbg !920
  %157 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %156, i32 0, i32 2, !dbg !920
  store i32 1, ptr %157, align 8, !dbg !920
  %158 = load ptr, ptr %5, align 8, !dbg !920
  %159 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %158, i32 0, i32 3, !dbg !920
  store i32 1, ptr %159, align 4, !dbg !920
  %160 = load ptr, ptr %5, align 8, !dbg !920
  %161 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %160, i32 0, i32 4, !dbg !920
  store i32 1, ptr %161, align 8, !dbg !920
  %162 = load ptr, ptr %5, align 8, !dbg !920
  %163 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %162, i32 0, i32 5, !dbg !920
  store i32 1, ptr %163, align 4, !dbg !920
  %164 = load ptr, ptr %5, align 8, !dbg !920
  %165 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %164, i32 0, i32 6, !dbg !920
  store i32 1, ptr %165, align 8, !dbg !920
  br label %385, !dbg !921

166:                                              ; preds = %30
  %167 = load ptr, ptr %3, align 8, !dbg !922
  %168 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %167, i32 0, i32 35, !dbg !923
  store i32 1, ptr %168, align 4, !dbg !924
  %169 = load ptr, ptr %3, align 8, !dbg !925
  %170 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %169, i32 0, i32 12, !dbg !926
  store i32 4, ptr %170, align 4, !dbg !927
  %171 = load ptr, ptr %3, align 8, !dbg !928
  %172 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %171, i32 0, i32 14, !dbg !928
  %173 = load ptr, ptr %172, align 8, !dbg !928
  %174 = getelementptr inbounds %struct.jpeg_component_info, ptr %173, i64 0, !dbg !928
  store ptr %174, ptr %5, align 8, !dbg !928
  %175 = load ptr, ptr %5, align 8, !dbg !928
  %176 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %175, i32 0, i32 0, !dbg !928
  store i32 67, ptr %176, align 8, !dbg !928
  %177 = load ptr, ptr %5, align 8, !dbg !928
  %178 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %177, i32 0, i32 2, !dbg !928
  store i32 1, ptr %178, align 8, !dbg !928
  %179 = load ptr, ptr %5, align 8, !dbg !928
  %180 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %179, i32 0, i32 3, !dbg !928
  store i32 1, ptr %180, align 4, !dbg !928
  %181 = load ptr, ptr %5, align 8, !dbg !928
  %182 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %181, i32 0, i32 4, !dbg !928
  store i32 0, ptr %182, align 8, !dbg !928
  %183 = load ptr, ptr %5, align 8, !dbg !928
  %184 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %183, i32 0, i32 5, !dbg !928
  store i32 0, ptr %184, align 4, !dbg !928
  %185 = load ptr, ptr %5, align 8, !dbg !928
  %186 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %185, i32 0, i32 6, !dbg !928
  store i32 0, ptr %186, align 8, !dbg !928
  %187 = load ptr, ptr %3, align 8, !dbg !929
  %188 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %187, i32 0, i32 14, !dbg !929
  %189 = load ptr, ptr %188, align 8, !dbg !929
  %190 = getelementptr inbounds %struct.jpeg_component_info, ptr %189, i64 1, !dbg !929
  store ptr %190, ptr %5, align 8, !dbg !929
  %191 = load ptr, ptr %5, align 8, !dbg !929
  %192 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %191, i32 0, i32 0, !dbg !929
  store i32 77, ptr %192, align 8, !dbg !929
  %193 = load ptr, ptr %5, align 8, !dbg !929
  %194 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %193, i32 0, i32 2, !dbg !929
  store i32 1, ptr %194, align 8, !dbg !929
  %195 = load ptr, ptr %5, align 8, !dbg !929
  %196 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %195, i32 0, i32 3, !dbg !929
  store i32 1, ptr %196, align 4, !dbg !929
  %197 = load ptr, ptr %5, align 8, !dbg !929
  %198 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %197, i32 0, i32 4, !dbg !929
  store i32 0, ptr %198, align 8, !dbg !929
  %199 = load ptr, ptr %5, align 8, !dbg !929
  %200 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %199, i32 0, i32 5, !dbg !929
  store i32 0, ptr %200, align 4, !dbg !929
  %201 = load ptr, ptr %5, align 8, !dbg !929
  %202 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %201, i32 0, i32 6, !dbg !929
  store i32 0, ptr %202, align 8, !dbg !929
  %203 = load ptr, ptr %3, align 8, !dbg !930
  %204 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %203, i32 0, i32 14, !dbg !930
  %205 = load ptr, ptr %204, align 8, !dbg !930
  %206 = getelementptr inbounds %struct.jpeg_component_info, ptr %205, i64 2, !dbg !930
  store ptr %206, ptr %5, align 8, !dbg !930
  %207 = load ptr, ptr %5, align 8, !dbg !930
  %208 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %207, i32 0, i32 0, !dbg !930
  store i32 89, ptr %208, align 8, !dbg !930
  %209 = load ptr, ptr %5, align 8, !dbg !930
  %210 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %209, i32 0, i32 2, !dbg !930
  store i32 1, ptr %210, align 8, !dbg !930
  %211 = load ptr, ptr %5, align 8, !dbg !930
  %212 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %211, i32 0, i32 3, !dbg !930
  store i32 1, ptr %212, align 4, !dbg !930
  %213 = load ptr, ptr %5, align 8, !dbg !930
  %214 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %213, i32 0, i32 4, !dbg !930
  store i32 0, ptr %214, align 8, !dbg !930
  %215 = load ptr, ptr %5, align 8, !dbg !930
  %216 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %215, i32 0, i32 5, !dbg !930
  store i32 0, ptr %216, align 4, !dbg !930
  %217 = load ptr, ptr %5, align 8, !dbg !930
  %218 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %217, i32 0, i32 6, !dbg !930
  store i32 0, ptr %218, align 8, !dbg !930
  %219 = load ptr, ptr %3, align 8, !dbg !931
  %220 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %219, i32 0, i32 14, !dbg !931
  %221 = load ptr, ptr %220, align 8, !dbg !931
  %222 = getelementptr inbounds %struct.jpeg_component_info, ptr %221, i64 3, !dbg !931
  store ptr %222, ptr %5, align 8, !dbg !931
  %223 = load ptr, ptr %5, align 8, !dbg !931
  %224 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %223, i32 0, i32 0, !dbg !931
  store i32 75, ptr %224, align 8, !dbg !931
  %225 = load ptr, ptr %5, align 8, !dbg !931
  %226 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %225, i32 0, i32 2, !dbg !931
  store i32 1, ptr %226, align 8, !dbg !931
  %227 = load ptr, ptr %5, align 8, !dbg !931
  %228 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %227, i32 0, i32 3, !dbg !931
  store i32 1, ptr %228, align 4, !dbg !931
  %229 = load ptr, ptr %5, align 8, !dbg !931
  %230 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %229, i32 0, i32 4, !dbg !931
  store i32 0, ptr %230, align 8, !dbg !931
  %231 = load ptr, ptr %5, align 8, !dbg !931
  %232 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %231, i32 0, i32 5, !dbg !931
  store i32 0, ptr %232, align 4, !dbg !931
  %233 = load ptr, ptr %5, align 8, !dbg !931
  %234 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %233, i32 0, i32 6, !dbg !931
  store i32 0, ptr %234, align 8, !dbg !931
  br label %385, !dbg !932

235:                                              ; preds = %30
  %236 = load ptr, ptr %3, align 8, !dbg !933
  %237 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %236, i32 0, i32 35, !dbg !934
  store i32 1, ptr %237, align 4, !dbg !935
  %238 = load ptr, ptr %3, align 8, !dbg !936
  %239 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %238, i32 0, i32 12, !dbg !937
  store i32 4, ptr %239, align 4, !dbg !938
  %240 = load ptr, ptr %3, align 8, !dbg !939
  %241 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %240, i32 0, i32 14, !dbg !939
  %242 = load ptr, ptr %241, align 8, !dbg !939
  %243 = getelementptr inbounds %struct.jpeg_component_info, ptr %242, i64 0, !dbg !939
  store ptr %243, ptr %5, align 8, !dbg !939
  %244 = load ptr, ptr %5, align 8, !dbg !939
  %245 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %244, i32 0, i32 0, !dbg !939
  store i32 1, ptr %245, align 8, !dbg !939
  %246 = load ptr, ptr %5, align 8, !dbg !939
  %247 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %246, i32 0, i32 2, !dbg !939
  store i32 2, ptr %247, align 8, !dbg !939
  %248 = load ptr, ptr %5, align 8, !dbg !939
  %249 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %248, i32 0, i32 3, !dbg !939
  store i32 2, ptr %249, align 4, !dbg !939
  %250 = load ptr, ptr %5, align 8, !dbg !939
  %251 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %250, i32 0, i32 4, !dbg !939
  store i32 0, ptr %251, align 8, !dbg !939
  %252 = load ptr, ptr %5, align 8, !dbg !939
  %253 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %252, i32 0, i32 5, !dbg !939
  store i32 0, ptr %253, align 4, !dbg !939
  %254 = load ptr, ptr %5, align 8, !dbg !939
  %255 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %254, i32 0, i32 6, !dbg !939
  store i32 0, ptr %255, align 8, !dbg !939
  %256 = load ptr, ptr %3, align 8, !dbg !940
  %257 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %256, i32 0, i32 14, !dbg !940
  %258 = load ptr, ptr %257, align 8, !dbg !940
  %259 = getelementptr inbounds %struct.jpeg_component_info, ptr %258, i64 1, !dbg !940
  store ptr %259, ptr %5, align 8, !dbg !940
  %260 = load ptr, ptr %5, align 8, !dbg !940
  %261 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %260, i32 0, i32 0, !dbg !940
  store i32 2, ptr %261, align 8, !dbg !940
  %262 = load ptr, ptr %5, align 8, !dbg !940
  %263 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %262, i32 0, i32 2, !dbg !940
  store i32 1, ptr %263, align 8, !dbg !940
  %264 = load ptr, ptr %5, align 8, !dbg !940
  %265 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %264, i32 0, i32 3, !dbg !940
  store i32 1, ptr %265, align 4, !dbg !940
  %266 = load ptr, ptr %5, align 8, !dbg !940
  %267 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %266, i32 0, i32 4, !dbg !940
  store i32 1, ptr %267, align 8, !dbg !940
  %268 = load ptr, ptr %5, align 8, !dbg !940
  %269 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %268, i32 0, i32 5, !dbg !940
  store i32 1, ptr %269, align 4, !dbg !940
  %270 = load ptr, ptr %5, align 8, !dbg !940
  %271 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %270, i32 0, i32 6, !dbg !940
  store i32 1, ptr %271, align 8, !dbg !940
  %272 = load ptr, ptr %3, align 8, !dbg !941
  %273 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %272, i32 0, i32 14, !dbg !941
  %274 = load ptr, ptr %273, align 8, !dbg !941
  %275 = getelementptr inbounds %struct.jpeg_component_info, ptr %274, i64 2, !dbg !941
  store ptr %275, ptr %5, align 8, !dbg !941
  %276 = load ptr, ptr %5, align 8, !dbg !941
  %277 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %276, i32 0, i32 0, !dbg !941
  store i32 3, ptr %277, align 8, !dbg !941
  %278 = load ptr, ptr %5, align 8, !dbg !941
  %279 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %278, i32 0, i32 2, !dbg !941
  store i32 1, ptr %279, align 8, !dbg !941
  %280 = load ptr, ptr %5, align 8, !dbg !941
  %281 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %280, i32 0, i32 3, !dbg !941
  store i32 1, ptr %281, align 4, !dbg !941
  %282 = load ptr, ptr %5, align 8, !dbg !941
  %283 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %282, i32 0, i32 4, !dbg !941
  store i32 1, ptr %283, align 8, !dbg !941
  %284 = load ptr, ptr %5, align 8, !dbg !941
  %285 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %284, i32 0, i32 5, !dbg !941
  store i32 1, ptr %285, align 4, !dbg !941
  %286 = load ptr, ptr %5, align 8, !dbg !941
  %287 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %286, i32 0, i32 6, !dbg !941
  store i32 1, ptr %287, align 8, !dbg !941
  %288 = load ptr, ptr %3, align 8, !dbg !942
  %289 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %288, i32 0, i32 14, !dbg !942
  %290 = load ptr, ptr %289, align 8, !dbg !942
  %291 = getelementptr inbounds %struct.jpeg_component_info, ptr %290, i64 3, !dbg !942
  store ptr %291, ptr %5, align 8, !dbg !942
  %292 = load ptr, ptr %5, align 8, !dbg !942
  %293 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %292, i32 0, i32 0, !dbg !942
  store i32 4, ptr %293, align 8, !dbg !942
  %294 = load ptr, ptr %5, align 8, !dbg !942
  %295 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %294, i32 0, i32 2, !dbg !942
  store i32 2, ptr %295, align 8, !dbg !942
  %296 = load ptr, ptr %5, align 8, !dbg !942
  %297 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %296, i32 0, i32 3, !dbg !942
  store i32 2, ptr %297, align 4, !dbg !942
  %298 = load ptr, ptr %5, align 8, !dbg !942
  %299 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %298, i32 0, i32 4, !dbg !942
  store i32 0, ptr %299, align 8, !dbg !942
  %300 = load ptr, ptr %5, align 8, !dbg !942
  %301 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %300, i32 0, i32 5, !dbg !942
  store i32 0, ptr %301, align 4, !dbg !942
  %302 = load ptr, ptr %5, align 8, !dbg !942
  %303 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %302, i32 0, i32 6, !dbg !942
  store i32 0, ptr %303, align 8, !dbg !942
  br label %385, !dbg !943

304:                                              ; preds = %30
  %305 = load ptr, ptr %3, align 8, !dbg !944
  %306 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %305, i32 0, i32 8, !dbg !945
  %307 = load i32, ptr %306, align 8, !dbg !945
  %308 = load ptr, ptr %3, align 8, !dbg !946
  %309 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %308, i32 0, i32 12, !dbg !947
  store i32 %307, ptr %309, align 4, !dbg !948
  %310 = load ptr, ptr %3, align 8, !dbg !949
  %311 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %310, i32 0, i32 12, !dbg !951
  %312 = load i32, ptr %311, align 4, !dbg !951
  %313 = icmp slt i32 %312, 1, !dbg !952
  br i1 %313, label %319, label %314, !dbg !953

314:                                              ; preds = %304
  %315 = load ptr, ptr %3, align 8, !dbg !954
  %316 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %315, i32 0, i32 12, !dbg !955
  %317 = load i32, ptr %316, align 4, !dbg !955
  %318 = icmp sgt i32 %317, 10, !dbg !956
  br i1 %318, label %319, label %343, !dbg !953

319:                                              ; preds = %314, %304
  %320 = load ptr, ptr %3, align 8, !dbg !957
  %321 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %320, i32 0, i32 0, !dbg !957
  %322 = load ptr, ptr %321, align 8, !dbg !957
  %323 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %322, i32 0, i32 5, !dbg !957
  store i32 24, ptr %323, align 8, !dbg !957
  %324 = load ptr, ptr %3, align 8, !dbg !957
  %325 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %324, i32 0, i32 12, !dbg !957
  %326 = load i32, ptr %325, align 4, !dbg !957
  %327 = load ptr, ptr %3, align 8, !dbg !957
  %328 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %327, i32 0, i32 0, !dbg !957
  %329 = load ptr, ptr %328, align 8, !dbg !957
  %330 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %329, i32 0, i32 6, !dbg !957
  %331 = getelementptr inbounds [8 x i32], ptr %330, i64 0, i64 0, !dbg !957
  store i32 %326, ptr %331, align 4, !dbg !957
  %332 = load ptr, ptr %3, align 8, !dbg !957
  %333 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %332, i32 0, i32 0, !dbg !957
  %334 = load ptr, ptr %333, align 8, !dbg !957
  %335 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %334, i32 0, i32 6, !dbg !957
  %336 = getelementptr inbounds [8 x i32], ptr %335, i64 0, i64 1, !dbg !957
  store i32 10, ptr %336, align 4, !dbg !957
  %337 = load ptr, ptr %3, align 8, !dbg !957
  %338 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %337, i32 0, i32 0, !dbg !957
  %339 = load ptr, ptr %338, align 8, !dbg !957
  %340 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %339, i32 0, i32 0, !dbg !957
  %341 = load ptr, ptr %340, align 8, !dbg !957
  %342 = load ptr, ptr %3, align 8, !dbg !957
  call void %341(ptr noundef %342), !dbg !957
  br label %343, !dbg !957

343:                                              ; preds = %319, %314
  store i32 0, ptr %6, align 4, !dbg !958
  br label %344, !dbg !960

344:                                              ; preds = %370, %343
  %345 = load i32, ptr %6, align 4, !dbg !961
  %346 = load ptr, ptr %3, align 8, !dbg !963
  %347 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %346, i32 0, i32 12, !dbg !964
  %348 = load i32, ptr %347, align 4, !dbg !964
  %349 = icmp slt i32 %345, %348, !dbg !965
  br i1 %349, label %350, label %373, !dbg !966

350:                                              ; preds = %344
  %351 = load ptr, ptr %3, align 8, !dbg !967
  %352 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %351, i32 0, i32 14, !dbg !967
  %353 = load ptr, ptr %352, align 8, !dbg !967
  %354 = load i32, ptr %6, align 4, !dbg !967
  %355 = sext i32 %354 to i64, !dbg !967
  %356 = getelementptr inbounds %struct.jpeg_component_info, ptr %353, i64 %355, !dbg !967
  store ptr %356, ptr %5, align 8, !dbg !967
  %357 = load i32, ptr %6, align 4, !dbg !967
  %358 = load ptr, ptr %5, align 8, !dbg !967
  %359 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %358, i32 0, i32 0, !dbg !967
  store i32 %357, ptr %359, align 8, !dbg !967
  %360 = load ptr, ptr %5, align 8, !dbg !967
  %361 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %360, i32 0, i32 2, !dbg !967
  store i32 1, ptr %361, align 8, !dbg !967
  %362 = load ptr, ptr %5, align 8, !dbg !967
  %363 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %362, i32 0, i32 3, !dbg !967
  store i32 1, ptr %363, align 4, !dbg !967
  %364 = load ptr, ptr %5, align 8, !dbg !967
  %365 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %364, i32 0, i32 4, !dbg !967
  store i32 0, ptr %365, align 8, !dbg !967
  %366 = load ptr, ptr %5, align 8, !dbg !967
  %367 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %366, i32 0, i32 5, !dbg !967
  store i32 0, ptr %367, align 4, !dbg !967
  %368 = load ptr, ptr %5, align 8, !dbg !967
  %369 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %368, i32 0, i32 6, !dbg !967
  store i32 0, ptr %369, align 8, !dbg !967
  br label %370, !dbg !969

370:                                              ; preds = %350
  %371 = load i32, ptr %6, align 4, !dbg !970
  %372 = add nsw i32 %371, 1, !dbg !970
  store i32 %372, ptr %6, align 4, !dbg !970
  br label %344, !dbg !971, !llvm.loop !972

373:                                              ; preds = %344
  br label %385, !dbg !974

374:                                              ; preds = %30
  %375 = load ptr, ptr %3, align 8, !dbg !975
  %376 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %375, i32 0, i32 0, !dbg !975
  %377 = load ptr, ptr %376, align 8, !dbg !975
  %378 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %377, i32 0, i32 5, !dbg !975
  store i32 8, ptr %378, align 8, !dbg !975
  %379 = load ptr, ptr %3, align 8, !dbg !975
  %380 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %379, i32 0, i32 0, !dbg !975
  %381 = load ptr, ptr %380, align 8, !dbg !975
  %382 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %381, i32 0, i32 0, !dbg !975
  %383 = load ptr, ptr %382, align 8, !dbg !975
  %384 = load ptr, ptr %3, align 8, !dbg !975
  call void %383(ptr noundef %384), !dbg !975
  br label %385, !dbg !976

385:                                              ; preds = %374, %373, %235, %166, %113, %60, %39
  ret void, !dbg !977
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @jpeg_simple_progression(ptr noundef %0) #0 !dbg !978 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !979, !DIExpression(), !980)
    #dbg_declare(ptr %3, !981, !DIExpression(), !982)
  %6 = load ptr, ptr %2, align 8, !dbg !983
  %7 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %6, i32 0, i32 12, !dbg !984
  %8 = load i32, ptr %7, align 4, !dbg !984
  store i32 %8, ptr %3, align 4, !dbg !982
    #dbg_declare(ptr %4, !985, !DIExpression(), !986)
    #dbg_declare(ptr %5, !987, !DIExpression(), !988)
  %9 = load ptr, ptr %2, align 8, !dbg !989
  %10 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %9, i32 0, i32 4, !dbg !991
  %11 = load i32, ptr %10, align 4, !dbg !991
  %12 = icmp ne i32 %11, 100, !dbg !992
  br i1 %12, label %13, label %32, !dbg !992

13:                                               ; preds = %1
  %14 = load ptr, ptr %2, align 8, !dbg !993
  %15 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %14, i32 0, i32 0, !dbg !993
  %16 = load ptr, ptr %15, align 8, !dbg !993
  %17 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %16, i32 0, i32 5, !dbg !993
  store i32 18, ptr %17, align 8, !dbg !993
  %18 = load ptr, ptr %2, align 8, !dbg !993
  %19 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %18, i32 0, i32 4, !dbg !993
  %20 = load i32, ptr %19, align 4, !dbg !993
  %21 = load ptr, ptr %2, align 8, !dbg !993
  %22 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %21, i32 0, i32 0, !dbg !993
  %23 = load ptr, ptr %22, align 8, !dbg !993
  %24 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %23, i32 0, i32 6, !dbg !993
  %25 = getelementptr inbounds [8 x i32], ptr %24, i64 0, i64 0, !dbg !993
  store i32 %20, ptr %25, align 4, !dbg !993
  %26 = load ptr, ptr %2, align 8, !dbg !993
  %27 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %26, i32 0, i32 0, !dbg !993
  %28 = load ptr, ptr %27, align 8, !dbg !993
  %29 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %28, i32 0, i32 0, !dbg !993
  %30 = load ptr, ptr %29, align 8, !dbg !993
  %31 = load ptr, ptr %2, align 8, !dbg !993
  call void %30(ptr noundef %31), !dbg !993
  br label %32, !dbg !993

32:                                               ; preds = %13, %1
  %33 = load i32, ptr %3, align 4, !dbg !994
  %34 = icmp eq i32 %33, 3, !dbg !996
  br i1 %34, label %35, label %41, !dbg !997

35:                                               ; preds = %32
  %36 = load ptr, ptr %2, align 8, !dbg !998
  %37 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %36, i32 0, i32 13, !dbg !999
  %38 = load i32, ptr %37, align 8, !dbg !999
  %39 = icmp eq i32 %38, 3, !dbg !1000
  br i1 %39, label %40, label %41, !dbg !997

40:                                               ; preds = %35
  store i32 10, ptr %4, align 4, !dbg !1001
  br label %52, !dbg !1003

41:                                               ; preds = %35, %32
  %42 = load i32, ptr %3, align 4, !dbg !1004
  %43 = icmp sgt i32 %42, 4, !dbg !1007
  br i1 %43, label %44, label %47, !dbg !1007

44:                                               ; preds = %41
  %45 = load i32, ptr %3, align 4, !dbg !1008
  %46 = mul nsw i32 6, %45, !dbg !1009
  store i32 %46, ptr %4, align 4, !dbg !1010
  br label %51, !dbg !1011

47:                                               ; preds = %41
  %48 = load i32, ptr %3, align 4, !dbg !1012
  %49 = mul nsw i32 4, %48, !dbg !1013
  %50 = add nsw i32 2, %49, !dbg !1014
  store i32 %50, ptr %4, align 4, !dbg !1015
  br label %51

51:                                               ; preds = %47, %44
  br label %52

52:                                               ; preds = %51, %40
  %53 = load ptr, ptr %2, align 8, !dbg !1016
  %54 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %53, i32 0, i32 1, !dbg !1017
  %55 = load ptr, ptr %54, align 8, !dbg !1017
  %56 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %55, i32 0, i32 0, !dbg !1018
  %57 = load ptr, ptr %56, align 8, !dbg !1018
  %58 = load ptr, ptr %2, align 8, !dbg !1019
  %59 = load i32, ptr %4, align 4, !dbg !1020
  %60 = sext i32 %59 to i64, !dbg !1020
  %61 = mul i64 %60, 36, !dbg !1021
  %62 = call ptr %57(ptr noundef %58, i32 noundef 0, i64 noundef %61), !dbg !1022
  store ptr %62, ptr %5, align 8, !dbg !1023
  %63 = load ptr, ptr %5, align 8, !dbg !1024
  %64 = load ptr, ptr %2, align 8, !dbg !1025
  %65 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %64, i32 0, i32 22, !dbg !1026
  store ptr %63, ptr %65, align 8, !dbg !1027
  %66 = load i32, ptr %4, align 4, !dbg !1028
  %67 = load ptr, ptr %2, align 8, !dbg !1029
  %68 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %67, i32 0, i32 21, !dbg !1030
  store i32 %66, ptr %68, align 8, !dbg !1031
  %69 = load i32, ptr %3, align 4, !dbg !1032
  %70 = icmp eq i32 %69, 3, !dbg !1034
  br i1 %70, label %71, label %99, !dbg !1035

71:                                               ; preds = %52
  %72 = load ptr, ptr %2, align 8, !dbg !1036
  %73 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %72, i32 0, i32 13, !dbg !1037
  %74 = load i32, ptr %73, align 8, !dbg !1037
  %75 = icmp eq i32 %74, 3, !dbg !1038
  br i1 %75, label %76, label %99, !dbg !1035

76:                                               ; preds = %71
  %77 = load ptr, ptr %5, align 8, !dbg !1039
  %78 = load i32, ptr %3, align 4, !dbg !1041
  %79 = call ptr @fill_dc_scans(ptr noundef %77, i32 noundef %78, i32 noundef 0, i32 noundef 1), !dbg !1042
  store ptr %79, ptr %5, align 8, !dbg !1043
  %80 = load ptr, ptr %5, align 8, !dbg !1044
  %81 = call ptr @fill_a_scan(ptr noundef %80, i32 noundef 0, i32 noundef 1, i32 noundef 5, i32 noundef 0, i32 noundef 2), !dbg !1045
  store ptr %81, ptr %5, align 8, !dbg !1046
  %82 = load ptr, ptr %5, align 8, !dbg !1047
  %83 = call ptr @fill_a_scan(ptr noundef %82, i32 noundef 2, i32 noundef 1, i32 noundef 63, i32 noundef 0, i32 noundef 1), !dbg !1048
  store ptr %83, ptr %5, align 8, !dbg !1049
  %84 = load ptr, ptr %5, align 8, !dbg !1050
  %85 = call ptr @fill_a_scan(ptr noundef %84, i32 noundef 1, i32 noundef 1, i32 noundef 63, i32 noundef 0, i32 noundef 1), !dbg !1051
  store ptr %85, ptr %5, align 8, !dbg !1052
  %86 = load ptr, ptr %5, align 8, !dbg !1053
  %87 = call ptr @fill_a_scan(ptr noundef %86, i32 noundef 0, i32 noundef 6, i32 noundef 63, i32 noundef 0, i32 noundef 2), !dbg !1054
  store ptr %87, ptr %5, align 8, !dbg !1055
  %88 = load ptr, ptr %5, align 8, !dbg !1056
  %89 = call ptr @fill_a_scan(ptr noundef %88, i32 noundef 0, i32 noundef 1, i32 noundef 63, i32 noundef 2, i32 noundef 1), !dbg !1057
  store ptr %89, ptr %5, align 8, !dbg !1058
  %90 = load ptr, ptr %5, align 8, !dbg !1059
  %91 = load i32, ptr %3, align 4, !dbg !1060
  %92 = call ptr @fill_dc_scans(ptr noundef %90, i32 noundef %91, i32 noundef 1, i32 noundef 0), !dbg !1061
  store ptr %92, ptr %5, align 8, !dbg !1062
  %93 = load ptr, ptr %5, align 8, !dbg !1063
  %94 = call ptr @fill_a_scan(ptr noundef %93, i32 noundef 2, i32 noundef 1, i32 noundef 63, i32 noundef 1, i32 noundef 0), !dbg !1064
  store ptr %94, ptr %5, align 8, !dbg !1065
  %95 = load ptr, ptr %5, align 8, !dbg !1066
  %96 = call ptr @fill_a_scan(ptr noundef %95, i32 noundef 1, i32 noundef 1, i32 noundef 63, i32 noundef 1, i32 noundef 0), !dbg !1067
  store ptr %96, ptr %5, align 8, !dbg !1068
  %97 = load ptr, ptr %5, align 8, !dbg !1069
  %98 = call ptr @fill_a_scan(ptr noundef %97, i32 noundef 0, i32 noundef 1, i32 noundef 63, i32 noundef 1, i32 noundef 0), !dbg !1070
  store ptr %98, ptr %5, align 8, !dbg !1071
  br label %118, !dbg !1072

99:                                               ; preds = %71, %52
  %100 = load ptr, ptr %5, align 8, !dbg !1073
  %101 = load i32, ptr %3, align 4, !dbg !1075
  %102 = call ptr @fill_dc_scans(ptr noundef %100, i32 noundef %101, i32 noundef 0, i32 noundef 1), !dbg !1076
  store ptr %102, ptr %5, align 8, !dbg !1077
  %103 = load ptr, ptr %5, align 8, !dbg !1078
  %104 = load i32, ptr %3, align 4, !dbg !1079
  %105 = call ptr @fill_scans(ptr noundef %103, i32 noundef %104, i32 noundef 1, i32 noundef 5, i32 noundef 0, i32 noundef 2), !dbg !1080
  store ptr %105, ptr %5, align 8, !dbg !1081
  %106 = load ptr, ptr %5, align 8, !dbg !1082
  %107 = load i32, ptr %3, align 4, !dbg !1083
  %108 = call ptr @fill_scans(ptr noundef %106, i32 noundef %107, i32 noundef 6, i32 noundef 63, i32 noundef 0, i32 noundef 2), !dbg !1084
  store ptr %108, ptr %5, align 8, !dbg !1085
  %109 = load ptr, ptr %5, align 8, !dbg !1086
  %110 = load i32, ptr %3, align 4, !dbg !1087
  %111 = call ptr @fill_scans(ptr noundef %109, i32 noundef %110, i32 noundef 1, i32 noundef 63, i32 noundef 2, i32 noundef 1), !dbg !1088
  store ptr %111, ptr %5, align 8, !dbg !1089
  %112 = load ptr, ptr %5, align 8, !dbg !1090
  %113 = load i32, ptr %3, align 4, !dbg !1091
  %114 = call ptr @fill_dc_scans(ptr noundef %112, i32 noundef %113, i32 noundef 1, i32 noundef 0), !dbg !1092
  store ptr %114, ptr %5, align 8, !dbg !1093
  %115 = load ptr, ptr %5, align 8, !dbg !1094
  %116 = load i32, ptr %3, align 4, !dbg !1095
  %117 = call ptr @fill_scans(ptr noundef %115, i32 noundef %116, i32 noundef 1, i32 noundef 63, i32 noundef 1, i32 noundef 0), !dbg !1096
  store ptr %117, ptr %5, align 8, !dbg !1097
  br label %118

118:                                              ; preds = %99, %76
  ret void, !dbg !1098
}

; Function Attrs: noinline nounwind uwtable
define internal ptr @fill_dc_scans(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 !dbg !1099 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
    #dbg_declare(ptr %5, !1102, !DIExpression(), !1103)
  store i32 %1, ptr %6, align 4
    #dbg_declare(ptr %6, !1104, !DIExpression(), !1105)
  store i32 %2, ptr %7, align 4
    #dbg_declare(ptr %7, !1106, !DIExpression(), !1107)
  store i32 %3, ptr %8, align 4
    #dbg_declare(ptr %8, !1108, !DIExpression(), !1109)
    #dbg_declare(ptr %9, !1110, !DIExpression(), !1111)
  %10 = load i32, ptr %6, align 4, !dbg !1112
  %11 = icmp sle i32 %10, 4, !dbg !1114
  br i1 %11, label %12, label %43, !dbg !1114

12:                                               ; preds = %4
  %13 = load i32, ptr %6, align 4, !dbg !1115
  %14 = load ptr, ptr %5, align 8, !dbg !1117
  %15 = getelementptr inbounds nuw %struct.jpeg_scan_info, ptr %14, i32 0, i32 0, !dbg !1118
  store i32 %13, ptr %15, align 4, !dbg !1119
  store i32 0, ptr %9, align 4, !dbg !1120
  br label %16, !dbg !1122

16:                                               ; preds = %27, %12
  %17 = load i32, ptr %9, align 4, !dbg !1123
  %18 = load i32, ptr %6, align 4, !dbg !1125
  %19 = icmp slt i32 %17, %18, !dbg !1126
  br i1 %19, label %20, label %30, !dbg !1127

20:                                               ; preds = %16
  %21 = load i32, ptr %9, align 4, !dbg !1128
  %22 = load ptr, ptr %5, align 8, !dbg !1129
  %23 = getelementptr inbounds nuw %struct.jpeg_scan_info, ptr %22, i32 0, i32 1, !dbg !1130
  %24 = load i32, ptr %9, align 4, !dbg !1131
  %25 = sext i32 %24 to i64, !dbg !1129
  %26 = getelementptr inbounds [4 x i32], ptr %23, i64 0, i64 %25, !dbg !1129
  store i32 %21, ptr %26, align 4, !dbg !1132
  br label %27, !dbg !1129

27:                                               ; preds = %20
  %28 = load i32, ptr %9, align 4, !dbg !1133
  %29 = add nsw i32 %28, 1, !dbg !1133
  store i32 %29, ptr %9, align 4, !dbg !1133
  br label %16, !dbg !1134, !llvm.loop !1135

30:                                               ; preds = %16
  %31 = load ptr, ptr %5, align 8, !dbg !1137
  %32 = getelementptr inbounds nuw %struct.jpeg_scan_info, ptr %31, i32 0, i32 3, !dbg !1138
  store i32 0, ptr %32, align 4, !dbg !1139
  %33 = load ptr, ptr %5, align 8, !dbg !1140
  %34 = getelementptr inbounds nuw %struct.jpeg_scan_info, ptr %33, i32 0, i32 2, !dbg !1141
  store i32 0, ptr %34, align 4, !dbg !1142
  %35 = load i32, ptr %7, align 4, !dbg !1143
  %36 = load ptr, ptr %5, align 8, !dbg !1144
  %37 = getelementptr inbounds nuw %struct.jpeg_scan_info, ptr %36, i32 0, i32 4, !dbg !1145
  store i32 %35, ptr %37, align 4, !dbg !1146
  %38 = load i32, ptr %8, align 4, !dbg !1147
  %39 = load ptr, ptr %5, align 8, !dbg !1148
  %40 = getelementptr inbounds nuw %struct.jpeg_scan_info, ptr %39, i32 0, i32 5, !dbg !1149
  store i32 %38, ptr %40, align 4, !dbg !1150
  %41 = load ptr, ptr %5, align 8, !dbg !1151
  %42 = getelementptr inbounds nuw %struct.jpeg_scan_info, ptr %41, i32 1, !dbg !1151
  store ptr %42, ptr %5, align 8, !dbg !1151
  br label %49, !dbg !1152

43:                                               ; preds = %4
  %44 = load ptr, ptr %5, align 8, !dbg !1153
  %45 = load i32, ptr %6, align 4, !dbg !1155
  %46 = load i32, ptr %7, align 4, !dbg !1156
  %47 = load i32, ptr %8, align 4, !dbg !1157
  %48 = call ptr @fill_scans(ptr noundef %44, i32 noundef %45, i32 noundef 0, i32 noundef 0, i32 noundef %46, i32 noundef %47), !dbg !1158
  store ptr %48, ptr %5, align 8, !dbg !1159
  br label %49

49:                                               ; preds = %43, %30
  %50 = load ptr, ptr %5, align 8, !dbg !1160
  ret ptr %50, !dbg !1161
}

; Function Attrs: noinline nounwind uwtable
define internal ptr @fill_a_scan(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 !dbg !1162 {
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store ptr %0, ptr %7, align 8
    #dbg_declare(ptr %7, !1165, !DIExpression(), !1166)
  store i32 %1, ptr %8, align 4
    #dbg_declare(ptr %8, !1167, !DIExpression(), !1168)
  store i32 %2, ptr %9, align 4
    #dbg_declare(ptr %9, !1169, !DIExpression(), !1170)
  store i32 %3, ptr %10, align 4
    #dbg_declare(ptr %10, !1171, !DIExpression(), !1172)
  store i32 %4, ptr %11, align 4
    #dbg_declare(ptr %11, !1173, !DIExpression(), !1174)
  store i32 %5, ptr %12, align 4
    #dbg_declare(ptr %12, !1175, !DIExpression(), !1176)
  %13 = load ptr, ptr %7, align 8, !dbg !1177
  %14 = getelementptr inbounds nuw %struct.jpeg_scan_info, ptr %13, i32 0, i32 0, !dbg !1178
  store i32 1, ptr %14, align 4, !dbg !1179
  %15 = load i32, ptr %8, align 4, !dbg !1180
  %16 = load ptr, ptr %7, align 8, !dbg !1181
  %17 = getelementptr inbounds nuw %struct.jpeg_scan_info, ptr %16, i32 0, i32 1, !dbg !1182
  %18 = getelementptr inbounds [4 x i32], ptr %17, i64 0, i64 0, !dbg !1181
  store i32 %15, ptr %18, align 4, !dbg !1183
  %19 = load i32, ptr %9, align 4, !dbg !1184
  %20 = load ptr, ptr %7, align 8, !dbg !1185
  %21 = getelementptr inbounds nuw %struct.jpeg_scan_info, ptr %20, i32 0, i32 2, !dbg !1186
  store i32 %19, ptr %21, align 4, !dbg !1187
  %22 = load i32, ptr %10, align 4, !dbg !1188
  %23 = load ptr, ptr %7, align 8, !dbg !1189
  %24 = getelementptr inbounds nuw %struct.jpeg_scan_info, ptr %23, i32 0, i32 3, !dbg !1190
  store i32 %22, ptr %24, align 4, !dbg !1191
  %25 = load i32, ptr %11, align 4, !dbg !1192
  %26 = load ptr, ptr %7, align 8, !dbg !1193
  %27 = getelementptr inbounds nuw %struct.jpeg_scan_info, ptr %26, i32 0, i32 4, !dbg !1194
  store i32 %25, ptr %27, align 4, !dbg !1195
  %28 = load i32, ptr %12, align 4, !dbg !1196
  %29 = load ptr, ptr %7, align 8, !dbg !1197
  %30 = getelementptr inbounds nuw %struct.jpeg_scan_info, ptr %29, i32 0, i32 5, !dbg !1198
  store i32 %28, ptr %30, align 4, !dbg !1199
  %31 = load ptr, ptr %7, align 8, !dbg !1200
  %32 = getelementptr inbounds nuw %struct.jpeg_scan_info, ptr %31, i32 1, !dbg !1200
  store ptr %32, ptr %7, align 8, !dbg !1200
  %33 = load ptr, ptr %7, align 8, !dbg !1201
  ret ptr %33, !dbg !1202
}

; Function Attrs: noinline nounwind uwtable
define internal ptr @fill_scans(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 !dbg !1203 {
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store ptr %0, ptr %7, align 8
    #dbg_declare(ptr %7, !1204, !DIExpression(), !1205)
  store i32 %1, ptr %8, align 4
    #dbg_declare(ptr %8, !1206, !DIExpression(), !1207)
  store i32 %2, ptr %9, align 4
    #dbg_declare(ptr %9, !1208, !DIExpression(), !1209)
  store i32 %3, ptr %10, align 4
    #dbg_declare(ptr %10, !1210, !DIExpression(), !1211)
  store i32 %4, ptr %11, align 4
    #dbg_declare(ptr %11, !1212, !DIExpression(), !1213)
  store i32 %5, ptr %12, align 4
    #dbg_declare(ptr %12, !1214, !DIExpression(), !1215)
    #dbg_declare(ptr %13, !1216, !DIExpression(), !1217)
  store i32 0, ptr %13, align 4, !dbg !1218
  br label %14, !dbg !1220

14:                                               ; preds = %39, %6
  %15 = load i32, ptr %13, align 4, !dbg !1221
  %16 = load i32, ptr %8, align 4, !dbg !1223
  %17 = icmp slt i32 %15, %16, !dbg !1224
  br i1 %17, label %18, label %42, !dbg !1225

18:                                               ; preds = %14
  %19 = load ptr, ptr %7, align 8, !dbg !1226
  %20 = getelementptr inbounds nuw %struct.jpeg_scan_info, ptr %19, i32 0, i32 0, !dbg !1228
  store i32 1, ptr %20, align 4, !dbg !1229
  %21 = load i32, ptr %13, align 4, !dbg !1230
  %22 = load ptr, ptr %7, align 8, !dbg !1231
  %23 = getelementptr inbounds nuw %struct.jpeg_scan_info, ptr %22, i32 0, i32 1, !dbg !1232
  %24 = getelementptr inbounds [4 x i32], ptr %23, i64 0, i64 0, !dbg !1231
  store i32 %21, ptr %24, align 4, !dbg !1233
  %25 = load i32, ptr %9, align 4, !dbg !1234
  %26 = load ptr, ptr %7, align 8, !dbg !1235
  %27 = getelementptr inbounds nuw %struct.jpeg_scan_info, ptr %26, i32 0, i32 2, !dbg !1236
  store i32 %25, ptr %27, align 4, !dbg !1237
  %28 = load i32, ptr %10, align 4, !dbg !1238
  %29 = load ptr, ptr %7, align 8, !dbg !1239
  %30 = getelementptr inbounds nuw %struct.jpeg_scan_info, ptr %29, i32 0, i32 3, !dbg !1240
  store i32 %28, ptr %30, align 4, !dbg !1241
  %31 = load i32, ptr %11, align 4, !dbg !1242
  %32 = load ptr, ptr %7, align 8, !dbg !1243
  %33 = getelementptr inbounds nuw %struct.jpeg_scan_info, ptr %32, i32 0, i32 4, !dbg !1244
  store i32 %31, ptr %33, align 4, !dbg !1245
  %34 = load i32, ptr %12, align 4, !dbg !1246
  %35 = load ptr, ptr %7, align 8, !dbg !1247
  %36 = getelementptr inbounds nuw %struct.jpeg_scan_info, ptr %35, i32 0, i32 5, !dbg !1248
  store i32 %34, ptr %36, align 4, !dbg !1249
  %37 = load ptr, ptr %7, align 8, !dbg !1250
  %38 = getelementptr inbounds nuw %struct.jpeg_scan_info, ptr %37, i32 1, !dbg !1250
  store ptr %38, ptr %7, align 8, !dbg !1250
  br label %39, !dbg !1251

39:                                               ; preds = %18
  %40 = load i32, ptr %13, align 4, !dbg !1252
  %41 = add nsw i32 %40, 1, !dbg !1252
  store i32 %41, ptr %13, align 4, !dbg !1252
  br label %14, !dbg !1253, !llvm.loop !1254

42:                                               ; preds = %14
  %43 = load ptr, ptr %7, align 8, !dbg !1256
  ret ptr %43, !dbg !1257
}

; Function Attrs: noinline nounwind uwtable
define internal void @add_huff_table(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 !dbg !1258 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
    #dbg_declare(ptr %5, !1263, !DIExpression(), !1264)
  store ptr %1, ptr %6, align 8
    #dbg_declare(ptr %6, !1265, !DIExpression(), !1266)
  store ptr %2, ptr %7, align 8
    #dbg_declare(ptr %7, !1267, !DIExpression(), !1268)
  store ptr %3, ptr %8, align 8
    #dbg_declare(ptr %8, !1269, !DIExpression(), !1270)
  %9 = load ptr, ptr %6, align 8, !dbg !1271
  %10 = load ptr, ptr %9, align 8, !dbg !1273
  %11 = icmp eq ptr %10, null, !dbg !1274
  br i1 %11, label %12, label %16, !dbg !1274

12:                                               ; preds = %4
  %13 = load ptr, ptr %5, align 8, !dbg !1275
  %14 = call ptr @jpeg_alloc_huff_table(ptr noundef %13), !dbg !1276
  %15 = load ptr, ptr %6, align 8, !dbg !1277
  store ptr %14, ptr %15, align 8, !dbg !1278
  br label %16, !dbg !1279

16:                                               ; preds = %12, %4
  %17 = load ptr, ptr %6, align 8, !dbg !1280
  %18 = load ptr, ptr %17, align 8, !dbg !1280
  %19 = getelementptr inbounds nuw %struct.JHUFF_TBL, ptr %18, i32 0, i32 0, !dbg !1280
  %20 = getelementptr inbounds [17 x i8], ptr %19, i64 0, i64 0, !dbg !1280
  %21 = load ptr, ptr %7, align 8, !dbg !1280
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %20, ptr align 1 %21, i64 17, i1 false), !dbg !1280
  %22 = load ptr, ptr %6, align 8, !dbg !1281
  %23 = load ptr, ptr %22, align 8, !dbg !1281
  %24 = getelementptr inbounds nuw %struct.JHUFF_TBL, ptr %23, i32 0, i32 1, !dbg !1281
  %25 = getelementptr inbounds [256 x i8], ptr %24, i64 0, i64 0, !dbg !1281
  %26 = load ptr, ptr %8, align 8, !dbg !1281
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %25, ptr align 1 %26, i64 256, i1 false), !dbg !1281
  %27 = load ptr, ptr %6, align 8, !dbg !1282
  %28 = load ptr, ptr %27, align 8, !dbg !1283
  %29 = getelementptr inbounds nuw %struct.JHUFF_TBL, ptr %28, i32 0, i32 2, !dbg !1284
  store i32 0, ptr %29, align 4, !dbg !1285
  ret void, !dbg !1286
}

declare ptr @jpeg_alloc_huff_table(ptr noundef) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

!llvm.dbg.cu = !{!398}
!llvm.module.flags = !{!559, !560, !561, !562, !563, !564, !565}
!llvm.ident = !{!566}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "std_luminance_quant_tbl", scope: !2, file: !3, line: 71, type: !531, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "jpeg_set_linear_quality", scope: !3, file: !3, line: 59, type: !4, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !398, retainedNodes: !536)
!3 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jcparam.c", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "c8d40025e1c90585c54f84cab86e7818")
!4 = !DISubroutineType(types: !5)
!5 = !{null, !6, !33, !72}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "j_compress_ptr", file: !7, line: 249, baseType: !8)
!7 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jpeglib.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "2a2b23235fe587b10147d741e3371e67")
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_compress_struct", file: !7, line: 255, size: 3968, elements: !10)
!10 = !{!11, !139, !140, !141, !142, !143, !160, !161, !162, !163, !173, !175, !176, !177, !178, !213, !217, !233, !234, !238, !239, !240, !241, !254, !255, !256, !257, !258, !259, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !281, !282, !283, !284, !288, !289, !290, !291, !292, !302, !322, !333, !342, !357, !366, !376, !385}
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
!146 = !{!147, !150, !151, !155, !159}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "next_output_byte", scope: !145, file: !7, line: 689, baseType: !148, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "JOCTET", file: !47, line: 110, baseType: !48)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "free_in_buffer", scope: !145, file: !7, line: 690, baseType: !34, size: 64, offset: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "init_destination", scope: !145, file: !7, line: 692, baseType: !152, size: 64, offset: 128)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = !DISubroutineType(types: !154)
!154 = !{null, !6}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "empty_output_buffer", scope: !145, file: !7, line: 693, baseType: !156, size: 64, offset: 192)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = !DISubroutineType(types: !158)
!158 = !{!72, !6}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "term_destination", scope: !145, file: !7, line: 694, baseType: !152, size: 64, offset: 256)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "image_width", scope: !9, file: !7, line: 266, baseType: !49, size: 32, offset: 320)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "image_height", scope: !9, file: !7, line: 267, baseType: !49, size: 32, offset: 352)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "input_components", scope: !9, file: !7, line: 268, baseType: !33, size: 32, offset: 384)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "in_color_space", scope: !9, file: !7, line: 269, baseType: !164, size: 32, offset: 416)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_COLOR_SPACE", file: !7, line: 201, baseType: !165)
!165 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !7, line: 194, baseType: !50, size: 32, elements: !166)
!166 = !{!167, !168, !169, !170, !171, !172}
!167 = !DIEnumerator(name: "JCS_UNKNOWN", value: 0)
!168 = !DIEnumerator(name: "JCS_GRAYSCALE", value: 1)
!169 = !DIEnumerator(name: "JCS_RGB", value: 2)
!170 = !DIEnumerator(name: "JCS_YCbCr", value: 3)
!171 = !DIEnumerator(name: "JCS_CMYK", value: 4)
!172 = !DIEnumerator(name: "JCS_YCCK", value: 5)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "input_gamma", scope: !9, file: !7, line: 271, baseType: !174, size: 64, offset: 448)
!174 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "data_precision", scope: !9, file: !7, line: 281, baseType: !33, size: 32, offset: 512)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "num_components", scope: !9, file: !7, line: 283, baseType: !33, size: 32, offset: 544)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "jpeg_color_space", scope: !9, file: !7, line: 284, baseType: !164, size: 32, offset: 576)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "comp_info", scope: !9, file: !7, line: 286, baseType: !179, size: 64, offset: 640)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "jpeg_component_info", file: !7, line: 179, baseType: !181)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 116, size: 768, elements: !182)
!182 = !{!183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !212}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "component_id", scope: !181, file: !7, line: 120, baseType: !33, size: 32)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "component_index", scope: !181, file: !7, line: 121, baseType: !33, size: 32, offset: 32)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "h_samp_factor", scope: !181, file: !7, line: 122, baseType: !33, size: 32, offset: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "v_samp_factor", scope: !181, file: !7, line: 123, baseType: !33, size: 32, offset: 96)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "quant_tbl_no", scope: !181, file: !7, line: 124, baseType: !33, size: 32, offset: 128)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "dc_tbl_no", scope: !181, file: !7, line: 129, baseType: !33, size: 32, offset: 160)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tbl_no", scope: !181, file: !7, line: 130, baseType: !33, size: 32, offset: 192)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "width_in_blocks", scope: !181, file: !7, line: 139, baseType: !49, size: 32, offset: 224)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "height_in_blocks", scope: !181, file: !7, line: 140, baseType: !49, size: 32, offset: 256)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "DCT_scaled_size", scope: !181, file: !7, line: 147, baseType: !33, size: 32, offset: 288)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "downsampled_width", scope: !181, file: !7, line: 154, baseType: !49, size: 32, offset: 320)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "downsampled_height", scope: !181, file: !7, line: 155, baseType: !49, size: 32, offset: 352)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "component_needed", scope: !181, file: !7, line: 160, baseType: !72, size: 32, offset: 384)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_width", scope: !181, file: !7, line: 164, baseType: !33, size: 32, offset: 416)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_height", scope: !181, file: !7, line: 165, baseType: !33, size: 32, offset: 448)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_blocks", scope: !181, file: !7, line: 166, baseType: !33, size: 32, offset: 480)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_sample_width", scope: !181, file: !7, line: 167, baseType: !33, size: 32, offset: 512)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "last_col_width", scope: !181, file: !7, line: 168, baseType: !33, size: 32, offset: 544)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "last_row_height", scope: !181, file: !7, line: 169, baseType: !33, size: 32, offset: 576)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "quant_table", scope: !181, file: !7, line: 175, baseType: !203, size: 64, offset: 640)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "JQUANT_TBL", file: !7, line: 95, baseType: !205)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 83, size: 1056, elements: !206)
!206 = !{!207, !211}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "quantval", scope: !205, file: !7, line: 88, baseType: !208, size: 1024)
!208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !209, size: 1024, elements: !63)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT16", file: !47, line: 147, baseType: !210)
!210 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "sent_table", scope: !205, file: !7, line: 94, baseType: !72, size: 32, offset: 1024)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "dct_table", scope: !181, file: !7, line: 178, baseType: !32, size: 64, offset: 704)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "quant_tbl_ptrs", scope: !9, file: !7, line: 289, baseType: !214, size: 256, offset: 704)
!214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, size: 256, elements: !215)
!215 = !{!216}
!216 = !DISubrange(count: 4)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "dc_huff_tbl_ptrs", scope: !9, file: !7, line: 292, baseType: !218, size: 256, offset: 960)
!218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 256, elements: !215)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "JHUFF_TBL", file: !7, line: 111, baseType: !221)
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 100, size: 2240, elements: !222)
!222 = !{!223, !228, !232}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !221, file: !7, line: 102, baseType: !224, size: 136)
!224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !225, size: 136, elements: !226)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT8", file: !47, line: 135, baseType: !48)
!226 = !{!227}
!227 = !DISubrange(count: 17)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "huffval", scope: !221, file: !7, line: 104, baseType: !229, size: 2048, offset: 136)
!229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !225, size: 2048, elements: !230)
!230 = !{!231}
!231 = !DISubrange(count: 256)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "sent_table", scope: !221, file: !7, line: 110, baseType: !72, size: 32, offset: 2208)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "ac_huff_tbl_ptrs", scope: !9, file: !7, line: 293, baseType: !218, size: 256, offset: 1216)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "arith_dc_L", scope: !9, file: !7, line: 296, baseType: !235, size: 128, offset: 1472)
!235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !225, size: 128, elements: !236)
!236 = !{!237}
!237 = !DISubrange(count: 16)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "arith_dc_U", scope: !9, file: !7, line: 297, baseType: !235, size: 128, offset: 1600)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "arith_ac_K", scope: !9, file: !7, line: 298, baseType: !235, size: 128, offset: 1728)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "num_scans", scope: !9, file: !7, line: 300, baseType: !33, size: 32, offset: 1856)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "scan_info", scope: !9, file: !7, line: 301, baseType: !242, size: 64, offset: 1920)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !244)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "jpeg_scan_info", file: !7, line: 189, baseType: !245)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 184, size: 288, elements: !246)
!246 = !{!247, !248, !250, !251, !252, !253}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "comps_in_scan", scope: !245, file: !7, line: 185, baseType: !33, size: 32)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "component_index", scope: !245, file: !7, line: 186, baseType: !249, size: 128, offset: 32)
!249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 128, elements: !215)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "Ss", scope: !245, file: !7, line: 187, baseType: !33, size: 32, offset: 160)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "Se", scope: !245, file: !7, line: 187, baseType: !33, size: 32, offset: 192)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "Ah", scope: !245, file: !7, line: 188, baseType: !33, size: 32, offset: 224)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "Al", scope: !245, file: !7, line: 188, baseType: !33, size: 32, offset: 256)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "raw_data_in", scope: !9, file: !7, line: 307, baseType: !72, size: 32, offset: 1984)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "arith_code", scope: !9, file: !7, line: 308, baseType: !72, size: 32, offset: 2016)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_coding", scope: !9, file: !7, line: 309, baseType: !72, size: 32, offset: 2048)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "CCIR601_sampling", scope: !9, file: !7, line: 310, baseType: !72, size: 32, offset: 2080)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "smoothing_factor", scope: !9, file: !7, line: 311, baseType: !33, size: 32, offset: 2112)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "dct_method", scope: !9, file: !7, line: 312, baseType: !260, size: 32, offset: 2144)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_DCT_METHOD", file: !7, line: 209, baseType: !261)
!261 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !7, line: 205, baseType: !50, size: 32, elements: !262)
!262 = !{!263, !264, !265}
!263 = !DIEnumerator(name: "JDCT_ISLOW", value: 0)
!264 = !DIEnumerator(name: "JDCT_IFAST", value: 1)
!265 = !DIEnumerator(name: "JDCT_FLOAT", value: 2)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "restart_interval", scope: !9, file: !7, line: 319, baseType: !50, size: 32, offset: 2176)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "restart_in_rows", scope: !9, file: !7, line: 320, baseType: !33, size: 32, offset: 2208)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "write_JFIF_header", scope: !9, file: !7, line: 324, baseType: !72, size: 32, offset: 2240)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "density_unit", scope: !9, file: !7, line: 329, baseType: !225, size: 8, offset: 2272)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "X_density", scope: !9, file: !7, line: 330, baseType: !209, size: 16, offset: 2288)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "Y_density", scope: !9, file: !7, line: 331, baseType: !209, size: 16, offset: 2304)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "write_Adobe_marker", scope: !9, file: !7, line: 332, baseType: !72, size: 32, offset: 2336)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "next_scanline", scope: !9, file: !7, line: 339, baseType: !49, size: 32, offset: 2368)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "progressive_mode", scope: !9, file: !7, line: 348, baseType: !72, size: 32, offset: 2400)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "max_h_samp_factor", scope: !9, file: !7, line: 349, baseType: !33, size: 32, offset: 2432)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "max_v_samp_factor", scope: !9, file: !7, line: 350, baseType: !33, size: 32, offset: 2464)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "total_iMCU_rows", scope: !9, file: !7, line: 352, baseType: !49, size: 32, offset: 2496)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "comps_in_scan", scope: !9, file: !7, line: 363, baseType: !33, size: 32, offset: 2528)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "cur_comp_info", scope: !9, file: !7, line: 364, baseType: !280, size: 256, offset: 2560)
!280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 256, elements: !215)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "MCUs_per_row", scope: !9, file: !7, line: 367, baseType: !49, size: 32, offset: 2816)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_rows_in_scan", scope: !9, file: !7, line: 368, baseType: !49, size: 32, offset: 2848)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "blocks_in_MCU", scope: !9, file: !7, line: 370, baseType: !33, size: 32, offset: 2880)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_membership", scope: !9, file: !7, line: 371, baseType: !285, size: 320, offset: 2912)
!285 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 320, elements: !286)
!286 = !{!287}
!287 = !DISubrange(count: 10)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "Ss", scope: !9, file: !7, line: 375, baseType: !33, size: 32, offset: 3232)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "Se", scope: !9, file: !7, line: 375, baseType: !33, size: 32, offset: 3264)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "Ah", scope: !9, file: !7, line: 375, baseType: !33, size: 32, offset: 3296)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "Al", scope: !9, file: !7, line: 375, baseType: !33, size: 32, offset: 3328)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !9, file: !7, line: 380, baseType: !293, size: 64, offset: 3392)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_comp_master", file: !295, line: 45, size: 256, elements: !296)
!295 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jpegint.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "87e9869e13f29b8e74a9dee50528c6c5")
!296 = !{!297, !298, !299, !300, !301}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_for_pass", scope: !294, file: !295, line: 46, baseType: !152, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "pass_startup", scope: !294, file: !295, line: 47, baseType: !152, size: 64, offset: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "finish_pass", scope: !294, file: !295, line: 48, baseType: !152, size: 64, offset: 128)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "call_pass_startup", scope: !294, file: !295, line: 51, baseType: !72, size: 32, offset: 192)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "is_last_pass", scope: !294, file: !295, line: 52, baseType: !72, size: 32, offset: 224)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "main", scope: !9, file: !7, line: 381, baseType: !303, size: 64, offset: 3456)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_c_main_controller", file: !295, line: 56, size: 128, elements: !305)
!305 = !{!306, !317}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !304, file: !295, line: 57, baseType: !307, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DISubroutineType(types: !309)
!309 = !{null, !6, !310}
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_BUF_MODE", file: !295, line: 22, baseType: !311)
!311 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !295, line: 16, baseType: !50, size: 32, elements: !312)
!312 = !{!313, !314, !315, !316}
!313 = !DIEnumerator(name: "JBUF_PASS_THRU", value: 0)
!314 = !DIEnumerator(name: "JBUF_SAVE_SOURCE", value: 1)
!315 = !DIEnumerator(name: "JBUF_CRANK_DEST", value: 2)
!316 = !DIEnumerator(name: "JBUF_SAVE_AND_PASS", value: 3)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "process_data", scope: !304, file: !295, line: 58, baseType: !318, size: 64, offset: 64)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = !DISubroutineType(types: !320)
!320 = !{null, !6, !42, !321, !49}
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "prep", scope: !9, file: !7, line: 382, baseType: !323, size: 64, offset: 3520)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_c_prep_controller", file: !295, line: 64, size: 128, elements: !325)
!325 = !{!326, !327}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !324, file: !295, line: 65, baseType: !307, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "pre_process_data", scope: !324, file: !295, line: 66, baseType: !328, size: 64, offset: 64)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = !DISubroutineType(types: !330)
!330 = !{null, !6, !42, !321, !49, !331, !321, !49}
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPIMAGE", file: !7, line: 68, baseType: !332)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "coef", scope: !9, file: !7, line: 383, baseType: !334, size: 64, offset: 3584)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_c_coef_controller", file: !295, line: 76, size: 128, elements: !336)
!336 = !{!337, !338}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !335, file: !295, line: 77, baseType: !307, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "compress_data", scope: !335, file: !295, line: 78, baseType: !339, size: 64, offset: 64)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = !DISubroutineType(types: !341)
!341 = !{!72, !6, !331}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "marker", scope: !9, file: !7, line: 384, baseType: !343, size: 64, offset: 3648)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_marker_writer", file: !295, line: 120, size: 384, elements: !345)
!345 = !{!346, !352, !353, !354, !355, !356}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "write_any_marker", scope: !344, file: !295, line: 123, baseType: !347, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = !DISubroutineType(types: !349)
!349 = !{null, !6, !33, !350, !50}
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !149)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_header", scope: !344, file: !295, line: 125, baseType: !152, size: 64, offset: 64)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "write_frame_header", scope: !344, file: !295, line: 126, baseType: !152, size: 64, offset: 128)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "write_scan_header", scope: !344, file: !295, line: 127, baseType: !152, size: 64, offset: 192)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_trailer", scope: !344, file: !295, line: 128, baseType: !152, size: 64, offset: 256)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "write_tables_only", scope: !344, file: !295, line: 129, baseType: !152, size: 64, offset: 320)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "cconvert", scope: !9, file: !7, line: 385, baseType: !358, size: 64, offset: 3712)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_color_converter", file: !295, line: 83, size: 128, elements: !360)
!360 = !{!361, !362}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !359, file: !295, line: 84, baseType: !152, size: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "color_convert", scope: !359, file: !295, line: 85, baseType: !363, size: 64, offset: 64)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = !DISubroutineType(types: !365)
!365 = !{null, !6, !42, !331, !49, !33}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "downsample", scope: !9, file: !7, line: 386, baseType: !367, size: 64, offset: 3776)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_downsampler", file: !295, line: 91, size: 192, elements: !369)
!369 = !{!370, !371, !375}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !368, file: !295, line: 92, baseType: !152, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "downsample", scope: !368, file: !295, line: 93, baseType: !372, size: 64, offset: 64)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = !DISubroutineType(types: !374)
!374 = !{null, !6, !331, !49, !331, !49}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "need_context_rows", scope: !368, file: !295, line: 98, baseType: !72, size: 32, offset: 128)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "fdct", scope: !9, file: !7, line: 387, baseType: !377, size: 64, offset: 3840)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_forward_dct", file: !295, line: 102, size: 128, elements: !379)
!379 = !{!380, !381}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !378, file: !295, line: 103, baseType: !152, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "forward_DCT", scope: !378, file: !295, line: 105, baseType: !382, size: 64, offset: 64)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = !DISubroutineType(types: !384)
!384 = !{null, !6, !179, !42, !57, !49, !49, !49}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "entropy", scope: !9, file: !7, line: 388, baseType: !386, size: 64, offset: 3904)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_entropy_encoder", file: !295, line: 113, size: 192, elements: !388)
!388 = !{!389, !393, !397}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !387, file: !295, line: 114, baseType: !390, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = !DISubroutineType(types: !392)
!392 = !{null, !6, !72}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "encode_mcu", scope: !387, file: !295, line: 115, baseType: !394, size: 64, offset: 64)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!395 = !DISubroutineType(types: !396)
!396 = !{!72, !6, !56}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "finish_pass", scope: !387, file: !295, line: 116, baseType: !152, size: 64, offset: 128)
!398 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !399, retainedTypes: !524, globals: !528, splitDebugInlining: false, nameTableKind: None)
!399 = !{!165, !261, !311, !400}
!400 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !401, line: 33, baseType: !50, size: 32, elements: !402)
!401 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jerror.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "a232f2460ff0049c960896e323d8710b")
!402 = !{!403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523}
!403 = !DIEnumerator(name: "JMSG_NOMESSAGE", value: 0)
!404 = !DIEnumerator(name: "JERR_ARITH_NOTIMPL", value: 1)
!405 = !DIEnumerator(name: "JERR_BAD_ALIGN_TYPE", value: 2)
!406 = !DIEnumerator(name: "JERR_BAD_ALLOC_CHUNK", value: 3)
!407 = !DIEnumerator(name: "JERR_BAD_BUFFER_MODE", value: 4)
!408 = !DIEnumerator(name: "JERR_BAD_COMPONENT_ID", value: 5)
!409 = !DIEnumerator(name: "JERR_BAD_DCTSIZE", value: 6)
!410 = !DIEnumerator(name: "JERR_BAD_IN_COLORSPACE", value: 7)
!411 = !DIEnumerator(name: "JERR_BAD_J_COLORSPACE", value: 8)
!412 = !DIEnumerator(name: "JERR_BAD_LENGTH", value: 9)
!413 = !DIEnumerator(name: "JERR_BAD_LIB_VERSION", value: 10)
!414 = !DIEnumerator(name: "JERR_BAD_MCU_SIZE", value: 11)
!415 = !DIEnumerator(name: "JERR_BAD_POOL_ID", value: 12)
!416 = !DIEnumerator(name: "JERR_BAD_PRECISION", value: 13)
!417 = !DIEnumerator(name: "JERR_BAD_PROGRESSION", value: 14)
!418 = !DIEnumerator(name: "JERR_BAD_PROG_SCRIPT", value: 15)
!419 = !DIEnumerator(name: "JERR_BAD_SAMPLING", value: 16)
!420 = !DIEnumerator(name: "JERR_BAD_SCAN_SCRIPT", value: 17)
!421 = !DIEnumerator(name: "JERR_BAD_STATE", value: 18)
!422 = !DIEnumerator(name: "JERR_BAD_STRUCT_SIZE", value: 19)
!423 = !DIEnumerator(name: "JERR_BAD_VIRTUAL_ACCESS", value: 20)
!424 = !DIEnumerator(name: "JERR_BUFFER_SIZE", value: 21)
!425 = !DIEnumerator(name: "JERR_CANT_SUSPEND", value: 22)
!426 = !DIEnumerator(name: "JERR_CCIR601_NOTIMPL", value: 23)
!427 = !DIEnumerator(name: "JERR_COMPONENT_COUNT", value: 24)
!428 = !DIEnumerator(name: "JERR_CONVERSION_NOTIMPL", value: 25)
!429 = !DIEnumerator(name: "JERR_DAC_INDEX", value: 26)
!430 = !DIEnumerator(name: "JERR_DAC_VALUE", value: 27)
!431 = !DIEnumerator(name: "JERR_DHT_COUNTS", value: 28)
!432 = !DIEnumerator(name: "JERR_DHT_INDEX", value: 29)
!433 = !DIEnumerator(name: "JERR_DQT_INDEX", value: 30)
!434 = !DIEnumerator(name: "JERR_EMPTY_IMAGE", value: 31)
!435 = !DIEnumerator(name: "JERR_EMS_READ", value: 32)
!436 = !DIEnumerator(name: "JERR_EMS_WRITE", value: 33)
!437 = !DIEnumerator(name: "JERR_EOI_EXPECTED", value: 34)
!438 = !DIEnumerator(name: "JERR_FILE_READ", value: 35)
!439 = !DIEnumerator(name: "JERR_FILE_WRITE", value: 36)
!440 = !DIEnumerator(name: "JERR_FRACT_SAMPLE_NOTIMPL", value: 37)
!441 = !DIEnumerator(name: "JERR_HUFF_CLEN_OVERFLOW", value: 38)
!442 = !DIEnumerator(name: "JERR_HUFF_MISSING_CODE", value: 39)
!443 = !DIEnumerator(name: "JERR_IMAGE_TOO_BIG", value: 40)
!444 = !DIEnumerator(name: "JERR_INPUT_EMPTY", value: 41)
!445 = !DIEnumerator(name: "JERR_INPUT_EOF", value: 42)
!446 = !DIEnumerator(name: "JERR_MISMATCHED_QUANT_TABLE", value: 43)
!447 = !DIEnumerator(name: "JERR_MISSING_DATA", value: 44)
!448 = !DIEnumerator(name: "JERR_MODE_CHANGE", value: 45)
!449 = !DIEnumerator(name: "JERR_NOTIMPL", value: 46)
!450 = !DIEnumerator(name: "JERR_NOT_COMPILED", value: 47)
!451 = !DIEnumerator(name: "JERR_NO_BACKING_STORE", value: 48)
!452 = !DIEnumerator(name: "JERR_NO_HUFF_TABLE", value: 49)
!453 = !DIEnumerator(name: "JERR_NO_IMAGE", value: 50)
!454 = !DIEnumerator(name: "JERR_NO_QUANT_TABLE", value: 51)
!455 = !DIEnumerator(name: "JERR_NO_SOI", value: 52)
!456 = !DIEnumerator(name: "JERR_OUT_OF_MEMORY", value: 53)
!457 = !DIEnumerator(name: "JERR_QUANT_COMPONENTS", value: 54)
!458 = !DIEnumerator(name: "JERR_QUANT_FEW_COLORS", value: 55)
!459 = !DIEnumerator(name: "JERR_QUANT_MANY_COLORS", value: 56)
!460 = !DIEnumerator(name: "JERR_SOF_DUPLICATE", value: 57)
!461 = !DIEnumerator(name: "JERR_SOF_NO_SOS", value: 58)
!462 = !DIEnumerator(name: "JERR_SOF_UNSUPPORTED", value: 59)
!463 = !DIEnumerator(name: "JERR_SOI_DUPLICATE", value: 60)
!464 = !DIEnumerator(name: "JERR_SOS_NO_SOF", value: 61)
!465 = !DIEnumerator(name: "JERR_TFILE_CREATE", value: 62)
!466 = !DIEnumerator(name: "JERR_TFILE_READ", value: 63)
!467 = !DIEnumerator(name: "JERR_TFILE_SEEK", value: 64)
!468 = !DIEnumerator(name: "JERR_TFILE_WRITE", value: 65)
!469 = !DIEnumerator(name: "JERR_TOO_LITTLE_DATA", value: 66)
!470 = !DIEnumerator(name: "JERR_UNKNOWN_MARKER", value: 67)
!471 = !DIEnumerator(name: "JERR_VIRTUAL_BUG", value: 68)
!472 = !DIEnumerator(name: "JERR_WIDTH_OVERFLOW", value: 69)
!473 = !DIEnumerator(name: "JERR_XMS_READ", value: 70)
!474 = !DIEnumerator(name: "JERR_XMS_WRITE", value: 71)
!475 = !DIEnumerator(name: "JMSG_COPYRIGHT", value: 72)
!476 = !DIEnumerator(name: "JMSG_VERSION", value: 73)
!477 = !DIEnumerator(name: "JTRC_16BIT_TABLES", value: 74)
!478 = !DIEnumerator(name: "JTRC_ADOBE", value: 75)
!479 = !DIEnumerator(name: "JTRC_APP0", value: 76)
!480 = !DIEnumerator(name: "JTRC_APP14", value: 77)
!481 = !DIEnumerator(name: "JTRC_DAC", value: 78)
!482 = !DIEnumerator(name: "JTRC_DHT", value: 79)
!483 = !DIEnumerator(name: "JTRC_DQT", value: 80)
!484 = !DIEnumerator(name: "JTRC_DRI", value: 81)
!485 = !DIEnumerator(name: "JTRC_EMS_CLOSE", value: 82)
!486 = !DIEnumerator(name: "JTRC_EMS_OPEN", value: 83)
!487 = !DIEnumerator(name: "JTRC_EOI", value: 84)
!488 = !DIEnumerator(name: "JTRC_HUFFBITS", value: 85)
!489 = !DIEnumerator(name: "JTRC_JFIF", value: 86)
!490 = !DIEnumerator(name: "JTRC_JFIF_BADTHUMBNAILSIZE", value: 87)
!491 = !DIEnumerator(name: "JTRC_JFIF_MINOR", value: 88)
!492 = !DIEnumerator(name: "JTRC_JFIF_THUMBNAIL", value: 89)
!493 = !DIEnumerator(name: "JTRC_MISC_MARKER", value: 90)
!494 = !DIEnumerator(name: "JTRC_PARMLESS_MARKER", value: 91)
!495 = !DIEnumerator(name: "JTRC_QUANTVALS", value: 92)
!496 = !DIEnumerator(name: "JTRC_QUANT_3_NCOLORS", value: 93)
!497 = !DIEnumerator(name: "JTRC_QUANT_NCOLORS", value: 94)
!498 = !DIEnumerator(name: "JTRC_QUANT_SELECTED", value: 95)
!499 = !DIEnumerator(name: "JTRC_RECOVERY_ACTION", value: 96)
!500 = !DIEnumerator(name: "JTRC_RST", value: 97)
!501 = !DIEnumerator(name: "JTRC_SMOOTH_NOTIMPL", value: 98)
!502 = !DIEnumerator(name: "JTRC_SOF", value: 99)
!503 = !DIEnumerator(name: "JTRC_SOF_COMPONENT", value: 100)
!504 = !DIEnumerator(name: "JTRC_SOI", value: 101)
!505 = !DIEnumerator(name: "JTRC_SOS", value: 102)
!506 = !DIEnumerator(name: "JTRC_SOS_COMPONENT", value: 103)
!507 = !DIEnumerator(name: "JTRC_SOS_PARAMS", value: 104)
!508 = !DIEnumerator(name: "JTRC_TFILE_CLOSE", value: 105)
!509 = !DIEnumerator(name: "JTRC_TFILE_OPEN", value: 106)
!510 = !DIEnumerator(name: "JTRC_UNKNOWN_IDS", value: 107)
!511 = !DIEnumerator(name: "JTRC_XMS_CLOSE", value: 108)
!512 = !DIEnumerator(name: "JTRC_XMS_OPEN", value: 109)
!513 = !DIEnumerator(name: "JWRN_ADOBE_XFORM", value: 110)
!514 = !DIEnumerator(name: "JWRN_BOGUS_PROGRESSION", value: 111)
!515 = !DIEnumerator(name: "JWRN_EXTRANEOUS_DATA", value: 112)
!516 = !DIEnumerator(name: "JWRN_HIT_MARKER", value: 113)
!517 = !DIEnumerator(name: "JWRN_HUFF_BAD_CODE", value: 114)
!518 = !DIEnumerator(name: "JWRN_JFIF_MAJOR", value: 115)
!519 = !DIEnumerator(name: "JWRN_JPEG_EOF", value: 116)
!520 = !DIEnumerator(name: "JWRN_MUST_RESYNC", value: 117)
!521 = !DIEnumerator(name: "JWRN_NOT_SEQUENTIAL", value: 118)
!522 = !DIEnumerator(name: "JWRN_TOO_MUCH_DATA", value: 119)
!523 = !DIEnumerator(name: "JMSG_LASTMSGCODE", value: 120)
!524 = !{!19, !32, !95, !209, !179, !34, !525, !526}
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!528 = !{!0, !529, !533, !539, !544, !546, !548, !550, !555, !557}
!529 = !DIGlobalVariableExpression(var: !530, expr: !DIExpression())
!530 = distinct !DIGlobalVariable(name: "std_chrominance_quant_tbl", scope: !2, file: !3, line: 81, type: !531, isLocal: true, isDefinition: true)
!531 = !DICompositeType(tag: DW_TAG_array_type, baseType: !532, size: 2048, elements: !63)
!532 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!533 = !DIGlobalVariableExpression(var: !534, expr: !DIExpression())
!534 = distinct !DIGlobalVariable(name: "bits_dc_luminance", scope: !535, file: !3, line: 167, type: !537, isLocal: true, isDefinition: true)
!535 = distinct !DISubprogram(name: "std_huff_tables", scope: !3, file: !3, line: 163, type: !153, scopeLine: 166, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !398, retainedNodes: !536)
!536 = !{}
!537 = !DICompositeType(tag: DW_TAG_array_type, baseType: !538, size: 136, elements: !226)
!538 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !225)
!539 = !DIGlobalVariableExpression(var: !540, expr: !DIExpression())
!540 = distinct !DIGlobalVariable(name: "val_dc_luminance", scope: !535, file: !3, line: 169, type: !541, isLocal: true, isDefinition: true)
!541 = !DICompositeType(tag: DW_TAG_array_type, baseType: !538, size: 96, elements: !542)
!542 = !{!543}
!543 = !DISubrange(count: 12)
!544 = !DIGlobalVariableExpression(var: !545, expr: !DIExpression())
!545 = distinct !DIGlobalVariable(name: "bits_dc_chrominance", scope: !535, file: !3, line: 172, type: !537, isLocal: true, isDefinition: true)
!546 = !DIGlobalVariableExpression(var: !547, expr: !DIExpression())
!547 = distinct !DIGlobalVariable(name: "val_dc_chrominance", scope: !535, file: !3, line: 174, type: !541, isLocal: true, isDefinition: true)
!548 = !DIGlobalVariableExpression(var: !549, expr: !DIExpression())
!549 = distinct !DIGlobalVariable(name: "bits_ac_luminance", scope: !535, file: !3, line: 177, type: !537, isLocal: true, isDefinition: true)
!550 = !DIGlobalVariableExpression(var: !551, expr: !DIExpression())
!551 = distinct !DIGlobalVariable(name: "val_ac_luminance", scope: !535, file: !3, line: 179, type: !552, isLocal: true, isDefinition: true)
!552 = !DICompositeType(tag: DW_TAG_array_type, baseType: !538, size: 1296, elements: !553)
!553 = !{!554}
!554 = !DISubrange(count: 162)
!555 = !DIGlobalVariableExpression(var: !556, expr: !DIExpression())
!556 = distinct !DIGlobalVariable(name: "bits_ac_chrominance", scope: !535, file: !3, line: 202, type: !537, isLocal: true, isDefinition: true)
!557 = !DIGlobalVariableExpression(var: !558, expr: !DIExpression())
!558 = distinct !DIGlobalVariable(name: "val_ac_chrominance", scope: !535, file: !3, line: 204, type: !552, isLocal: true, isDefinition: true)
!559 = !{i32 7, !"Dwarf Version", i32 5}
!560 = !{i32 2, !"Debug Info Version", i32 3}
!561 = !{i32 1, !"wchar_size", i32 4}
!562 = !{i32 8, !"PIC Level", i32 2}
!563 = !{i32 7, !"PIE Level", i32 2}
!564 = !{i32 7, !"uwtable", i32 2}
!565 = !{i32 7, !"frame-pointer", i32 2}
!566 = !{!"clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)"}
!567 = distinct !DISubprogram(name: "jpeg_add_quant_table", scope: !3, file: !3, line: 23, type: !568, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !398, retainedNodes: !536)
!568 = !DISubroutineType(types: !569)
!569 = !{null, !6, !33, !570, !33, !72}
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!571 = !DILocalVariable(name: "cinfo", arg: 1, scope: !567, file: !3, line: 23, type: !6)
!572 = !DILocation(line: 23, column: 38, scope: !567)
!573 = !DILocalVariable(name: "which_tbl", arg: 2, scope: !567, file: !3, line: 23, type: !33)
!574 = !DILocation(line: 23, column: 49, scope: !567)
!575 = !DILocalVariable(name: "basic_table", arg: 3, scope: !567, file: !3, line: 24, type: !570)
!576 = !DILocation(line: 24, column: 29, scope: !567)
!577 = !DILocalVariable(name: "scale_factor", arg: 4, scope: !567, file: !3, line: 25, type: !33)
!578 = !DILocation(line: 25, column: 13, scope: !567)
!579 = !DILocalVariable(name: "force_baseline", arg: 5, scope: !567, file: !3, line: 25, type: !72)
!580 = !DILocation(line: 25, column: 35, scope: !567)
!581 = !DILocalVariable(name: "qtblptr", scope: !567, file: !3, line: 32, type: !582)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!583 = !DILocation(line: 32, column: 17, scope: !567)
!584 = !DILocation(line: 32, column: 29, scope: !567)
!585 = !DILocation(line: 32, column: 36, scope: !567)
!586 = !DILocation(line: 32, column: 51, scope: !567)
!587 = !DILocalVariable(name: "i", scope: !567, file: !3, line: 33, type: !33)
!588 = !DILocation(line: 33, column: 7, scope: !567)
!589 = !DILocalVariable(name: "temp", scope: !567, file: !3, line: 34, type: !95)
!590 = !DILocation(line: 34, column: 8, scope: !567)
!591 = !DILocation(line: 37, column: 7, scope: !592)
!592 = distinct !DILexicalBlock(scope: !567, file: !3, line: 37, column: 7)
!593 = !DILocation(line: 37, column: 14, scope: !592)
!594 = !DILocation(line: 37, column: 27, scope: !592)
!595 = !DILocation(line: 38, column: 5, scope: !592)
!596 = !DILocation(line: 40, column: 8, scope: !597)
!597 = distinct !DILexicalBlock(scope: !567, file: !3, line: 40, column: 7)
!598 = !DILocation(line: 40, column: 7, scope: !597)
!599 = !DILocation(line: 40, column: 16, scope: !597)
!600 = !DILocation(line: 41, column: 54, scope: !597)
!601 = !DILocation(line: 41, column: 16, scope: !597)
!602 = !DILocation(line: 41, column: 6, scope: !597)
!603 = !DILocation(line: 41, column: 14, scope: !597)
!604 = !DILocation(line: 41, column: 5, scope: !597)
!605 = !DILocation(line: 43, column: 10, scope: !606)
!606 = distinct !DILexicalBlock(scope: !567, file: !3, line: 43, column: 3)
!607 = !DILocation(line: 43, column: 8, scope: !606)
!608 = !DILocation(line: 43, column: 15, scope: !609)
!609 = distinct !DILexicalBlock(scope: !606, file: !3, line: 43, column: 3)
!610 = !DILocation(line: 43, column: 17, scope: !609)
!611 = !DILocation(line: 43, column: 3, scope: !606)
!612 = !DILocation(line: 44, column: 20, scope: !613)
!613 = distinct !DILexicalBlock(scope: !609, file: !3, line: 43, column: 34)
!614 = !DILocation(line: 44, column: 32, scope: !613)
!615 = !DILocation(line: 44, column: 13, scope: !613)
!616 = !DILocation(line: 44, column: 37, scope: !613)
!617 = !DILocation(line: 44, column: 35, scope: !613)
!618 = !DILocation(line: 44, column: 50, scope: !613)
!619 = !DILocation(line: 44, column: 57, scope: !613)
!620 = !DILocation(line: 44, column: 10, scope: !613)
!621 = !DILocation(line: 46, column: 9, scope: !622)
!622 = distinct !DILexicalBlock(scope: !613, file: !3, line: 46, column: 9)
!623 = !DILocation(line: 46, column: 14, scope: !622)
!624 = !DILocation(line: 46, column: 26, scope: !622)
!625 = !DILocation(line: 46, column: 21, scope: !622)
!626 = !DILocation(line: 47, column: 9, scope: !627)
!627 = distinct !DILexicalBlock(scope: !613, file: !3, line: 47, column: 9)
!628 = !DILocation(line: 47, column: 14, scope: !627)
!629 = !DILocation(line: 47, column: 29, scope: !627)
!630 = !DILocation(line: 47, column: 24, scope: !627)
!631 = !DILocation(line: 48, column: 9, scope: !632)
!632 = distinct !DILexicalBlock(scope: !613, file: !3, line: 48, column: 9)
!633 = !DILocation(line: 48, column: 24, scope: !632)
!634 = !DILocation(line: 48, column: 27, scope: !632)
!635 = !DILocation(line: 48, column: 32, scope: !632)
!636 = !DILocation(line: 49, column: 12, scope: !632)
!637 = !DILocation(line: 49, column: 7, scope: !632)
!638 = !DILocation(line: 50, column: 40, scope: !613)
!639 = !DILocation(line: 50, column: 31, scope: !613)
!640 = !DILocation(line: 50, column: 7, scope: !613)
!641 = !DILocation(line: 50, column: 6, scope: !613)
!642 = !DILocation(line: 50, column: 17, scope: !613)
!643 = !DILocation(line: 50, column: 26, scope: !613)
!644 = !DILocation(line: 50, column: 5, scope: !613)
!645 = !DILocation(line: 50, column: 29, scope: !613)
!646 = !DILocation(line: 51, column: 3, scope: !613)
!647 = !DILocation(line: 43, column: 30, scope: !609)
!648 = !DILocation(line: 43, column: 3, scope: !609)
!649 = distinct !{!649, !611, !650, !651}
!650 = !DILocation(line: 51, column: 3, scope: !606)
!651 = !{!"llvm.loop.mustprogress"}
!652 = !DILocation(line: 54, column: 5, scope: !567)
!653 = !DILocation(line: 54, column: 4, scope: !567)
!654 = !DILocation(line: 54, column: 15, scope: !567)
!655 = !DILocation(line: 54, column: 26, scope: !567)
!656 = !DILocation(line: 55, column: 1, scope: !567)
!657 = !DILocalVariable(name: "cinfo", arg: 1, scope: !2, file: !3, line: 59, type: !6)
!658 = !DILocation(line: 59, column: 41, scope: !2)
!659 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !2, file: !3, line: 59, type: !33)
!660 = !DILocation(line: 59, column: 52, scope: !2)
!661 = !DILocalVariable(name: "force_baseline", arg: 3, scope: !2, file: !3, line: 60, type: !72)
!662 = !DILocation(line: 60, column: 13, scope: !2)
!663 = !DILocation(line: 93, column: 24, scope: !2)
!664 = !DILocation(line: 94, column: 10, scope: !2)
!665 = !DILocation(line: 94, column: 24, scope: !2)
!666 = !DILocation(line: 93, column: 3, scope: !2)
!667 = !DILocation(line: 95, column: 24, scope: !2)
!668 = !DILocation(line: 96, column: 10, scope: !2)
!669 = !DILocation(line: 96, column: 24, scope: !2)
!670 = !DILocation(line: 95, column: 3, scope: !2)
!671 = !DILocation(line: 97, column: 1, scope: !2)
!672 = distinct !DISubprogram(name: "jpeg_quality_scaling", scope: !3, file: !3, line: 101, type: !673, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !398, retainedNodes: !536)
!673 = !DISubroutineType(types: !674)
!674 = !{!33, !33}
!675 = !DILocalVariable(name: "quality", arg: 1, scope: !672, file: !3, line: 101, type: !33)
!676 = !DILocation(line: 101, column: 27, scope: !672)
!677 = !DILocation(line: 108, column: 7, scope: !678)
!678 = distinct !DILexicalBlock(scope: !672, file: !3, line: 108, column: 7)
!679 = !DILocation(line: 108, column: 15, scope: !678)
!680 = !DILocation(line: 108, column: 29, scope: !678)
!681 = !DILocation(line: 108, column: 21, scope: !678)
!682 = !DILocation(line: 109, column: 7, scope: !683)
!683 = distinct !DILexicalBlock(scope: !672, file: !3, line: 109, column: 7)
!684 = !DILocation(line: 109, column: 15, scope: !683)
!685 = !DILocation(line: 109, column: 30, scope: !683)
!686 = !DILocation(line: 109, column: 22, scope: !683)
!687 = !DILocation(line: 117, column: 7, scope: !688)
!688 = distinct !DILexicalBlock(scope: !672, file: !3, line: 117, column: 7)
!689 = !DILocation(line: 117, column: 15, scope: !688)
!690 = !DILocation(line: 118, column: 22, scope: !688)
!691 = !DILocation(line: 118, column: 20, scope: !688)
!692 = !DILocation(line: 118, column: 13, scope: !688)
!693 = !DILocation(line: 118, column: 5, scope: !688)
!694 = !DILocation(line: 120, column: 21, scope: !688)
!695 = !DILocation(line: 120, column: 28, scope: !688)
!696 = !DILocation(line: 120, column: 19, scope: !688)
!697 = !DILocation(line: 120, column: 13, scope: !688)
!698 = !DILocation(line: 122, column: 10, scope: !672)
!699 = !DILocation(line: 122, column: 3, scope: !672)
!700 = distinct !DISubprogram(name: "jpeg_set_quality", scope: !3, file: !3, line: 127, type: !4, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !398, retainedNodes: !536)
!701 = !DILocalVariable(name: "cinfo", arg: 1, scope: !700, file: !3, line: 127, type: !6)
!702 = !DILocation(line: 127, column: 34, scope: !700)
!703 = !DILocalVariable(name: "quality", arg: 2, scope: !700, file: !3, line: 127, type: !33)
!704 = !DILocation(line: 127, column: 45, scope: !700)
!705 = !DILocalVariable(name: "force_baseline", arg: 3, scope: !700, file: !3, line: 127, type: !72)
!706 = !DILocation(line: 127, column: 62, scope: !700)
!707 = !DILocation(line: 135, column: 34, scope: !700)
!708 = !DILocation(line: 135, column: 13, scope: !700)
!709 = !DILocation(line: 135, column: 11, scope: !700)
!710 = !DILocation(line: 138, column: 27, scope: !700)
!711 = !DILocation(line: 138, column: 34, scope: !700)
!712 = !DILocation(line: 138, column: 43, scope: !700)
!713 = !DILocation(line: 138, column: 3, scope: !700)
!714 = !DILocation(line: 139, column: 1, scope: !700)
!715 = distinct !DISubprogram(name: "jpeg_set_defaults", scope: !3, file: !3, line: 249, type: !153, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !398, retainedNodes: !536)
!716 = !DILocalVariable(name: "cinfo", arg: 1, scope: !715, file: !3, line: 249, type: !6)
!717 = !DILocation(line: 249, column: 35, scope: !715)
!718 = !DILocalVariable(name: "i", scope: !715, file: !3, line: 251, type: !33)
!719 = !DILocation(line: 251, column: 7, scope: !715)
!720 = !DILocation(line: 254, column: 7, scope: !721)
!721 = distinct !DILexicalBlock(scope: !715, file: !3, line: 254, column: 7)
!722 = !DILocation(line: 254, column: 14, scope: !721)
!723 = !DILocation(line: 254, column: 27, scope: !721)
!724 = !DILocation(line: 255, column: 5, scope: !721)
!725 = !DILocation(line: 261, column: 7, scope: !726)
!726 = distinct !DILexicalBlock(scope: !715, file: !3, line: 261, column: 7)
!727 = !DILocation(line: 261, column: 14, scope: !726)
!728 = !DILocation(line: 261, column: 24, scope: !726)
!729 = !DILocation(line: 263, column: 9, scope: !726)
!730 = !DILocation(line: 263, column: 16, scope: !726)
!731 = !DILocation(line: 263, column: 21, scope: !726)
!732 = !DILocation(line: 263, column: 50, scope: !726)
!733 = !DILocation(line: 263, column: 7, scope: !726)
!734 = !DILocation(line: 262, column: 5, scope: !726)
!735 = !DILocation(line: 262, column: 12, scope: !726)
!736 = !DILocation(line: 262, column: 22, scope: !726)
!737 = !DILocation(line: 268, column: 3, scope: !715)
!738 = !DILocation(line: 268, column: 10, scope: !715)
!739 = !DILocation(line: 268, column: 25, scope: !715)
!740 = !DILocation(line: 270, column: 20, scope: !715)
!741 = !DILocation(line: 270, column: 3, scope: !715)
!742 = !DILocation(line: 272, column: 19, scope: !715)
!743 = !DILocation(line: 272, column: 3, scope: !715)
!744 = !DILocation(line: 275, column: 10, scope: !745)
!745 = distinct !DILexicalBlock(scope: !715, file: !3, line: 275, column: 3)
!746 = !DILocation(line: 275, column: 8, scope: !745)
!747 = !DILocation(line: 275, column: 15, scope: !748)
!748 = distinct !DILexicalBlock(scope: !745, file: !3, line: 275, column: 3)
!749 = !DILocation(line: 275, column: 17, scope: !748)
!750 = !DILocation(line: 275, column: 3, scope: !745)
!751 = !DILocation(line: 276, column: 5, scope: !752)
!752 = distinct !DILexicalBlock(scope: !748, file: !3, line: 275, column: 40)
!753 = !DILocation(line: 276, column: 12, scope: !752)
!754 = !DILocation(line: 276, column: 23, scope: !752)
!755 = !DILocation(line: 276, column: 26, scope: !752)
!756 = !DILocation(line: 277, column: 5, scope: !752)
!757 = !DILocation(line: 277, column: 12, scope: !752)
!758 = !DILocation(line: 277, column: 23, scope: !752)
!759 = !DILocation(line: 277, column: 26, scope: !752)
!760 = !DILocation(line: 278, column: 5, scope: !752)
!761 = !DILocation(line: 278, column: 12, scope: !752)
!762 = !DILocation(line: 278, column: 23, scope: !752)
!763 = !DILocation(line: 278, column: 26, scope: !752)
!764 = !DILocation(line: 279, column: 3, scope: !752)
!765 = !DILocation(line: 275, column: 36, scope: !748)
!766 = !DILocation(line: 275, column: 3, scope: !748)
!767 = distinct !{!767, !750, !768, !651}
!768 = !DILocation(line: 279, column: 3, scope: !745)
!769 = !DILocation(line: 282, column: 3, scope: !715)
!770 = !DILocation(line: 282, column: 10, scope: !715)
!771 = !DILocation(line: 282, column: 20, scope: !715)
!772 = !DILocation(line: 283, column: 3, scope: !715)
!773 = !DILocation(line: 283, column: 10, scope: !715)
!774 = !DILocation(line: 283, column: 20, scope: !715)
!775 = !DILocation(line: 286, column: 3, scope: !715)
!776 = !DILocation(line: 286, column: 10, scope: !715)
!777 = !DILocation(line: 286, column: 22, scope: !715)
!778 = !DILocation(line: 289, column: 3, scope: !715)
!779 = !DILocation(line: 289, column: 10, scope: !715)
!780 = !DILocation(line: 289, column: 21, scope: !715)
!781 = !DILocation(line: 292, column: 3, scope: !715)
!782 = !DILocation(line: 292, column: 10, scope: !715)
!783 = !DILocation(line: 292, column: 26, scope: !715)
!784 = !DILocation(line: 298, column: 7, scope: !785)
!785 = distinct !DILexicalBlock(scope: !715, file: !3, line: 298, column: 7)
!786 = !DILocation(line: 298, column: 14, scope: !785)
!787 = !DILocation(line: 298, column: 29, scope: !785)
!788 = !DILocation(line: 299, column: 5, scope: !785)
!789 = !DILocation(line: 299, column: 12, scope: !785)
!790 = !DILocation(line: 299, column: 28, scope: !785)
!791 = !DILocation(line: 302, column: 3, scope: !715)
!792 = !DILocation(line: 302, column: 10, scope: !715)
!793 = !DILocation(line: 302, column: 27, scope: !715)
!794 = !DILocation(line: 305, column: 3, scope: !715)
!795 = !DILocation(line: 305, column: 10, scope: !715)
!796 = !DILocation(line: 305, column: 27, scope: !715)
!797 = !DILocation(line: 308, column: 3, scope: !715)
!798 = !DILocation(line: 308, column: 10, scope: !715)
!799 = !DILocation(line: 308, column: 21, scope: !715)
!800 = !DILocation(line: 311, column: 3, scope: !715)
!801 = !DILocation(line: 311, column: 10, scope: !715)
!802 = !DILocation(line: 311, column: 27, scope: !715)
!803 = !DILocation(line: 312, column: 3, scope: !715)
!804 = !DILocation(line: 312, column: 10, scope: !715)
!805 = !DILocation(line: 312, column: 26, scope: !715)
!806 = !DILocation(line: 317, column: 3, scope: !715)
!807 = !DILocation(line: 317, column: 10, scope: !715)
!808 = !DILocation(line: 317, column: 23, scope: !715)
!809 = !DILocation(line: 318, column: 3, scope: !715)
!810 = !DILocation(line: 318, column: 10, scope: !715)
!811 = !DILocation(line: 318, column: 20, scope: !715)
!812 = !DILocation(line: 319, column: 3, scope: !715)
!813 = !DILocation(line: 319, column: 10, scope: !715)
!814 = !DILocation(line: 319, column: 20, scope: !715)
!815 = !DILocation(line: 323, column: 27, scope: !715)
!816 = !DILocation(line: 323, column: 3, scope: !715)
!817 = !DILocation(line: 324, column: 1, scope: !715)
!818 = !DILocalVariable(name: "cinfo", arg: 1, scope: !535, file: !3, line: 163, type: !6)
!819 = !DILocation(line: 163, column: 33, scope: !535)
!820 = !DILocation(line: 227, column: 18, scope: !535)
!821 = !DILocation(line: 227, column: 26, scope: !535)
!822 = !DILocation(line: 227, column: 33, scope: !535)
!823 = !DILocation(line: 227, column: 3, scope: !535)
!824 = !DILocation(line: 229, column: 18, scope: !535)
!825 = !DILocation(line: 229, column: 26, scope: !535)
!826 = !DILocation(line: 229, column: 33, scope: !535)
!827 = !DILocation(line: 229, column: 3, scope: !535)
!828 = !DILocation(line: 231, column: 18, scope: !535)
!829 = !DILocation(line: 231, column: 26, scope: !535)
!830 = !DILocation(line: 231, column: 33, scope: !535)
!831 = !DILocation(line: 231, column: 3, scope: !535)
!832 = !DILocation(line: 233, column: 18, scope: !535)
!833 = !DILocation(line: 233, column: 26, scope: !535)
!834 = !DILocation(line: 233, column: 33, scope: !535)
!835 = !DILocation(line: 233, column: 3, scope: !535)
!836 = !DILocation(line: 235, column: 1, scope: !535)
!837 = distinct !DISubprogram(name: "jpeg_default_colorspace", scope: !3, file: !3, line: 332, type: !153, scopeLine: 333, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !398, retainedNodes: !536)
!838 = !DILocalVariable(name: "cinfo", arg: 1, scope: !837, file: !3, line: 332, type: !6)
!839 = !DILocation(line: 332, column: 41, scope: !837)
!840 = !DILocation(line: 334, column: 11, scope: !837)
!841 = !DILocation(line: 334, column: 18, scope: !837)
!842 = !DILocation(line: 334, column: 3, scope: !837)
!843 = !DILocation(line: 336, column: 25, scope: !844)
!844 = distinct !DILexicalBlock(scope: !837, file: !3, line: 334, column: 34)
!845 = !DILocation(line: 336, column: 5, scope: !844)
!846 = !DILocation(line: 337, column: 5, scope: !844)
!847 = !DILocation(line: 339, column: 25, scope: !844)
!848 = !DILocation(line: 339, column: 5, scope: !844)
!849 = !DILocation(line: 340, column: 5, scope: !844)
!850 = !DILocation(line: 342, column: 25, scope: !844)
!851 = !DILocation(line: 342, column: 5, scope: !844)
!852 = !DILocation(line: 343, column: 5, scope: !844)
!853 = !DILocation(line: 345, column: 25, scope: !844)
!854 = !DILocation(line: 345, column: 5, scope: !844)
!855 = !DILocation(line: 346, column: 5, scope: !844)
!856 = !DILocation(line: 348, column: 25, scope: !844)
!857 = !DILocation(line: 348, column: 5, scope: !844)
!858 = !DILocation(line: 349, column: 5, scope: !844)
!859 = !DILocation(line: 351, column: 25, scope: !844)
!860 = !DILocation(line: 351, column: 5, scope: !844)
!861 = !DILocation(line: 352, column: 5, scope: !844)
!862 = !DILocation(line: 354, column: 5, scope: !844)
!863 = !DILocation(line: 355, column: 3, scope: !844)
!864 = !DILocation(line: 356, column: 1, scope: !837)
!865 = distinct !DISubprogram(name: "jpeg_set_colorspace", scope: !3, file: !3, line: 364, type: !866, scopeLine: 365, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !398, retainedNodes: !536)
!866 = !DISubroutineType(types: !867)
!867 = !{null, !6, !164}
!868 = !DILocalVariable(name: "cinfo", arg: 1, scope: !865, file: !3, line: 364, type: !6)
!869 = !DILocation(line: 364, column: 37, scope: !865)
!870 = !DILocalVariable(name: "colorspace", arg: 2, scope: !865, file: !3, line: 364, type: !164)
!871 = !DILocation(line: 364, column: 58, scope: !865)
!872 = !DILocalVariable(name: "compptr", scope: !865, file: !3, line: 366, type: !179)
!873 = !DILocation(line: 366, column: 25, scope: !865)
!874 = !DILocalVariable(name: "ci", scope: !865, file: !3, line: 367, type: !33)
!875 = !DILocation(line: 367, column: 7, scope: !865)
!876 = !DILocation(line: 379, column: 7, scope: !877)
!877 = distinct !DILexicalBlock(scope: !865, file: !3, line: 379, column: 7)
!878 = !DILocation(line: 379, column: 14, scope: !877)
!879 = !DILocation(line: 379, column: 27, scope: !877)
!880 = !DILocation(line: 380, column: 5, scope: !877)
!881 = !DILocation(line: 386, column: 29, scope: !865)
!882 = !DILocation(line: 386, column: 3, scope: !865)
!883 = !DILocation(line: 386, column: 10, scope: !865)
!884 = !DILocation(line: 386, column: 27, scope: !865)
!885 = !DILocation(line: 388, column: 3, scope: !865)
!886 = !DILocation(line: 388, column: 10, scope: !865)
!887 = !DILocation(line: 388, column: 28, scope: !865)
!888 = !DILocation(line: 389, column: 3, scope: !865)
!889 = !DILocation(line: 389, column: 10, scope: !865)
!890 = !DILocation(line: 389, column: 29, scope: !865)
!891 = !DILocation(line: 391, column: 11, scope: !865)
!892 = !DILocation(line: 391, column: 3, scope: !865)
!893 = !DILocation(line: 393, column: 5, scope: !894)
!894 = distinct !DILexicalBlock(scope: !865, file: !3, line: 391, column: 23)
!895 = !DILocation(line: 393, column: 12, scope: !894)
!896 = !DILocation(line: 393, column: 30, scope: !894)
!897 = !DILocation(line: 394, column: 5, scope: !894)
!898 = !DILocation(line: 394, column: 12, scope: !894)
!899 = !DILocation(line: 394, column: 27, scope: !894)
!900 = !DILocation(line: 396, column: 5, scope: !894)
!901 = !DILocation(line: 397, column: 5, scope: !894)
!902 = !DILocation(line: 399, column: 5, scope: !894)
!903 = !DILocation(line: 399, column: 12, scope: !894)
!904 = !DILocation(line: 399, column: 31, scope: !894)
!905 = !DILocation(line: 400, column: 5, scope: !894)
!906 = !DILocation(line: 400, column: 12, scope: !894)
!907 = !DILocation(line: 400, column: 27, scope: !894)
!908 = !DILocation(line: 401, column: 5, scope: !894)
!909 = !DILocation(line: 402, column: 5, scope: !894)
!910 = !DILocation(line: 403, column: 5, scope: !894)
!911 = !DILocation(line: 404, column: 5, scope: !894)
!912 = !DILocation(line: 406, column: 5, scope: !894)
!913 = !DILocation(line: 406, column: 12, scope: !894)
!914 = !DILocation(line: 406, column: 30, scope: !894)
!915 = !DILocation(line: 407, column: 5, scope: !894)
!916 = !DILocation(line: 407, column: 12, scope: !894)
!917 = !DILocation(line: 407, column: 27, scope: !894)
!918 = !DILocation(line: 410, column: 5, scope: !894)
!919 = !DILocation(line: 411, column: 5, scope: !894)
!920 = !DILocation(line: 412, column: 5, scope: !894)
!921 = !DILocation(line: 413, column: 5, scope: !894)
!922 = !DILocation(line: 415, column: 5, scope: !894)
!923 = !DILocation(line: 415, column: 12, scope: !894)
!924 = !DILocation(line: 415, column: 31, scope: !894)
!925 = !DILocation(line: 416, column: 5, scope: !894)
!926 = !DILocation(line: 416, column: 12, scope: !894)
!927 = !DILocation(line: 416, column: 27, scope: !894)
!928 = !DILocation(line: 417, column: 5, scope: !894)
!929 = !DILocation(line: 418, column: 5, scope: !894)
!930 = !DILocation(line: 419, column: 5, scope: !894)
!931 = !DILocation(line: 420, column: 5, scope: !894)
!932 = !DILocation(line: 421, column: 5, scope: !894)
!933 = !DILocation(line: 423, column: 5, scope: !894)
!934 = !DILocation(line: 423, column: 12, scope: !894)
!935 = !DILocation(line: 423, column: 31, scope: !894)
!936 = !DILocation(line: 424, column: 5, scope: !894)
!937 = !DILocation(line: 424, column: 12, scope: !894)
!938 = !DILocation(line: 424, column: 27, scope: !894)
!939 = !DILocation(line: 425, column: 5, scope: !894)
!940 = !DILocation(line: 426, column: 5, scope: !894)
!941 = !DILocation(line: 427, column: 5, scope: !894)
!942 = !DILocation(line: 428, column: 5, scope: !894)
!943 = !DILocation(line: 429, column: 5, scope: !894)
!944 = !DILocation(line: 431, column: 29, scope: !894)
!945 = !DILocation(line: 431, column: 36, scope: !894)
!946 = !DILocation(line: 431, column: 5, scope: !894)
!947 = !DILocation(line: 431, column: 12, scope: !894)
!948 = !DILocation(line: 431, column: 27, scope: !894)
!949 = !DILocation(line: 432, column: 9, scope: !950)
!950 = distinct !DILexicalBlock(scope: !894, file: !3, line: 432, column: 9)
!951 = !DILocation(line: 432, column: 16, scope: !950)
!952 = !DILocation(line: 432, column: 31, scope: !950)
!953 = !DILocation(line: 432, column: 35, scope: !950)
!954 = !DILocation(line: 432, column: 38, scope: !950)
!955 = !DILocation(line: 432, column: 45, scope: !950)
!956 = !DILocation(line: 432, column: 60, scope: !950)
!957 = !DILocation(line: 433, column: 7, scope: !950)
!958 = !DILocation(line: 435, column: 13, scope: !959)
!959 = distinct !DILexicalBlock(scope: !894, file: !3, line: 435, column: 5)
!960 = !DILocation(line: 435, column: 10, scope: !959)
!961 = !DILocation(line: 435, column: 18, scope: !962)
!962 = distinct !DILexicalBlock(scope: !959, file: !3, line: 435, column: 5)
!963 = !DILocation(line: 435, column: 23, scope: !962)
!964 = !DILocation(line: 435, column: 30, scope: !962)
!965 = !DILocation(line: 435, column: 21, scope: !962)
!966 = !DILocation(line: 435, column: 5, scope: !959)
!967 = !DILocation(line: 436, column: 7, scope: !968)
!968 = distinct !DILexicalBlock(scope: !962, file: !3, line: 435, column: 52)
!969 = !DILocation(line: 437, column: 5, scope: !968)
!970 = !DILocation(line: 435, column: 48, scope: !962)
!971 = !DILocation(line: 435, column: 5, scope: !962)
!972 = distinct !{!972, !966, !973, !651}
!973 = !DILocation(line: 437, column: 5, scope: !959)
!974 = !DILocation(line: 438, column: 5, scope: !894)
!975 = !DILocation(line: 440, column: 5, scope: !894)
!976 = !DILocation(line: 441, column: 3, scope: !894)
!977 = !DILocation(line: 442, column: 1, scope: !865)
!978 = distinct !DISubprogram(name: "jpeg_simple_progression", scope: !3, file: !3, line: 510, type: !153, scopeLine: 511, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !398, retainedNodes: !536)
!979 = !DILocalVariable(name: "cinfo", arg: 1, scope: !978, file: !3, line: 510, type: !6)
!980 = !DILocation(line: 510, column: 41, scope: !978)
!981 = !DILocalVariable(name: "ncomps", scope: !978, file: !3, line: 512, type: !33)
!982 = !DILocation(line: 512, column: 7, scope: !978)
!983 = !DILocation(line: 512, column: 16, scope: !978)
!984 = !DILocation(line: 512, column: 23, scope: !978)
!985 = !DILocalVariable(name: "nscans", scope: !978, file: !3, line: 513, type: !33)
!986 = !DILocation(line: 513, column: 7, scope: !978)
!987 = !DILocalVariable(name: "scanptr", scope: !978, file: !3, line: 514, type: !525)
!988 = !DILocation(line: 514, column: 20, scope: !978)
!989 = !DILocation(line: 517, column: 7, scope: !990)
!990 = distinct !DILexicalBlock(scope: !978, file: !3, line: 517, column: 7)
!991 = !DILocation(line: 517, column: 14, scope: !990)
!992 = !DILocation(line: 517, column: 27, scope: !990)
!993 = !DILocation(line: 518, column: 5, scope: !990)
!994 = !DILocation(line: 521, column: 7, scope: !995)
!995 = distinct !DILexicalBlock(scope: !978, file: !3, line: 521, column: 7)
!996 = !DILocation(line: 521, column: 14, scope: !995)
!997 = !DILocation(line: 521, column: 19, scope: !995)
!998 = !DILocation(line: 521, column: 22, scope: !995)
!999 = !DILocation(line: 521, column: 29, scope: !995)
!1000 = !DILocation(line: 521, column: 46, scope: !995)
!1001 = !DILocation(line: 523, column: 12, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !995, file: !3, line: 521, column: 60)
!1003 = !DILocation(line: 524, column: 3, scope: !1002)
!1004 = !DILocation(line: 526, column: 9, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !1006, file: !3, line: 526, column: 9)
!1006 = distinct !DILexicalBlock(scope: !995, file: !3, line: 524, column: 10)
!1007 = !DILocation(line: 526, column: 16, scope: !1005)
!1008 = !DILocation(line: 527, column: 20, scope: !1005)
!1009 = !DILocation(line: 527, column: 18, scope: !1005)
!1010 = !DILocation(line: 527, column: 14, scope: !1005)
!1011 = !DILocation(line: 527, column: 7, scope: !1005)
!1012 = !DILocation(line: 529, column: 24, scope: !1005)
!1013 = !DILocation(line: 529, column: 22, scope: !1005)
!1014 = !DILocation(line: 529, column: 18, scope: !1005)
!1015 = !DILocation(line: 529, column: 14, scope: !1005)
!1016 = !DILocation(line: 535, column: 7, scope: !978)
!1017 = !DILocation(line: 535, column: 14, scope: !978)
!1018 = !DILocation(line: 535, column: 19, scope: !978)
!1019 = !DILocation(line: 535, column: 48, scope: !978)
!1020 = !DILocation(line: 536, column: 5, scope: !978)
!1021 = !DILocation(line: 536, column: 12, scope: !978)
!1022 = !DILocation(line: 535, column: 5, scope: !978)
!1023 = !DILocation(line: 534, column: 11, scope: !978)
!1024 = !DILocation(line: 537, column: 22, scope: !978)
!1025 = !DILocation(line: 537, column: 3, scope: !978)
!1026 = !DILocation(line: 537, column: 10, scope: !978)
!1027 = !DILocation(line: 537, column: 20, scope: !978)
!1028 = !DILocation(line: 538, column: 22, scope: !978)
!1029 = !DILocation(line: 538, column: 3, scope: !978)
!1030 = !DILocation(line: 538, column: 10, scope: !978)
!1031 = !DILocation(line: 538, column: 20, scope: !978)
!1032 = !DILocation(line: 540, column: 7, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !978, file: !3, line: 540, column: 7)
!1034 = !DILocation(line: 540, column: 14, scope: !1033)
!1035 = !DILocation(line: 540, column: 19, scope: !1033)
!1036 = !DILocation(line: 540, column: 22, scope: !1033)
!1037 = !DILocation(line: 540, column: 29, scope: !1033)
!1038 = !DILocation(line: 540, column: 46, scope: !1033)
!1039 = !DILocation(line: 543, column: 29, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !1033, file: !3, line: 540, column: 60)
!1041 = !DILocation(line: 543, column: 38, scope: !1040)
!1042 = !DILocation(line: 543, column: 15, scope: !1040)
!1043 = !DILocation(line: 543, column: 13, scope: !1040)
!1044 = !DILocation(line: 545, column: 27, scope: !1040)
!1045 = !DILocation(line: 545, column: 15, scope: !1040)
!1046 = !DILocation(line: 545, column: 13, scope: !1040)
!1047 = !DILocation(line: 547, column: 27, scope: !1040)
!1048 = !DILocation(line: 547, column: 15, scope: !1040)
!1049 = !DILocation(line: 547, column: 13, scope: !1040)
!1050 = !DILocation(line: 548, column: 27, scope: !1040)
!1051 = !DILocation(line: 548, column: 15, scope: !1040)
!1052 = !DILocation(line: 548, column: 13, scope: !1040)
!1053 = !DILocation(line: 550, column: 27, scope: !1040)
!1054 = !DILocation(line: 550, column: 15, scope: !1040)
!1055 = !DILocation(line: 550, column: 13, scope: !1040)
!1056 = !DILocation(line: 552, column: 27, scope: !1040)
!1057 = !DILocation(line: 552, column: 15, scope: !1040)
!1058 = !DILocation(line: 552, column: 13, scope: !1040)
!1059 = !DILocation(line: 554, column: 29, scope: !1040)
!1060 = !DILocation(line: 554, column: 38, scope: !1040)
!1061 = !DILocation(line: 554, column: 15, scope: !1040)
!1062 = !DILocation(line: 554, column: 13, scope: !1040)
!1063 = !DILocation(line: 556, column: 27, scope: !1040)
!1064 = !DILocation(line: 556, column: 15, scope: !1040)
!1065 = !DILocation(line: 556, column: 13, scope: !1040)
!1066 = !DILocation(line: 557, column: 27, scope: !1040)
!1067 = !DILocation(line: 557, column: 15, scope: !1040)
!1068 = !DILocation(line: 557, column: 13, scope: !1040)
!1069 = !DILocation(line: 559, column: 27, scope: !1040)
!1070 = !DILocation(line: 559, column: 15, scope: !1040)
!1071 = !DILocation(line: 559, column: 13, scope: !1040)
!1072 = !DILocation(line: 560, column: 3, scope: !1040)
!1073 = !DILocation(line: 563, column: 29, scope: !1074)
!1074 = distinct !DILexicalBlock(scope: !1033, file: !3, line: 560, column: 10)
!1075 = !DILocation(line: 563, column: 38, scope: !1074)
!1076 = !DILocation(line: 563, column: 15, scope: !1074)
!1077 = !DILocation(line: 563, column: 13, scope: !1074)
!1078 = !DILocation(line: 564, column: 26, scope: !1074)
!1079 = !DILocation(line: 564, column: 35, scope: !1074)
!1080 = !DILocation(line: 564, column: 15, scope: !1074)
!1081 = !DILocation(line: 564, column: 13, scope: !1074)
!1082 = !DILocation(line: 565, column: 26, scope: !1074)
!1083 = !DILocation(line: 565, column: 35, scope: !1074)
!1084 = !DILocation(line: 565, column: 15, scope: !1074)
!1085 = !DILocation(line: 565, column: 13, scope: !1074)
!1086 = !DILocation(line: 567, column: 26, scope: !1074)
!1087 = !DILocation(line: 567, column: 35, scope: !1074)
!1088 = !DILocation(line: 567, column: 15, scope: !1074)
!1089 = !DILocation(line: 567, column: 13, scope: !1074)
!1090 = !DILocation(line: 569, column: 29, scope: !1074)
!1091 = !DILocation(line: 569, column: 38, scope: !1074)
!1092 = !DILocation(line: 569, column: 15, scope: !1074)
!1093 = !DILocation(line: 569, column: 13, scope: !1074)
!1094 = !DILocation(line: 570, column: 26, scope: !1074)
!1095 = !DILocation(line: 570, column: 35, scope: !1074)
!1096 = !DILocation(line: 570, column: 15, scope: !1074)
!1097 = !DILocation(line: 570, column: 13, scope: !1074)
!1098 = !DILocation(line: 572, column: 1, scope: !978)
!1099 = distinct !DISubprogram(name: "fill_dc_scans", scope: !3, file: !3, line: 482, type: !1100, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !398, retainedNodes: !536)
!1100 = !DISubroutineType(types: !1101)
!1101 = !{!525, !525, !33, !33, !33}
!1102 = !DILocalVariable(name: "scanptr", arg: 1, scope: !1099, file: !3, line: 482, type: !525)
!1103 = !DILocation(line: 482, column: 33, scope: !1099)
!1104 = !DILocalVariable(name: "ncomps", arg: 2, scope: !1099, file: !3, line: 482, type: !33)
!1105 = !DILocation(line: 482, column: 46, scope: !1099)
!1106 = !DILocalVariable(name: "Ah", arg: 3, scope: !1099, file: !3, line: 482, type: !33)
!1107 = !DILocation(line: 482, column: 58, scope: !1099)
!1108 = !DILocalVariable(name: "Al", arg: 4, scope: !1099, file: !3, line: 482, type: !33)
!1109 = !DILocation(line: 482, column: 66, scope: !1099)
!1110 = !DILocalVariable(name: "ci", scope: !1099, file: !3, line: 485, type: !33)
!1111 = !DILocation(line: 485, column: 7, scope: !1099)
!1112 = !DILocation(line: 487, column: 7, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1099, file: !3, line: 487, column: 7)
!1114 = !DILocation(line: 487, column: 14, scope: !1113)
!1115 = !DILocation(line: 489, column: 30, scope: !1116)
!1116 = distinct !DILexicalBlock(scope: !1113, file: !3, line: 487, column: 36)
!1117 = !DILocation(line: 489, column: 5, scope: !1116)
!1118 = !DILocation(line: 489, column: 14, scope: !1116)
!1119 = !DILocation(line: 489, column: 28, scope: !1116)
!1120 = !DILocation(line: 490, column: 13, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !1116, file: !3, line: 490, column: 5)
!1122 = !DILocation(line: 490, column: 10, scope: !1121)
!1123 = !DILocation(line: 490, column: 18, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1121, file: !3, line: 490, column: 5)
!1125 = !DILocation(line: 490, column: 23, scope: !1124)
!1126 = !DILocation(line: 490, column: 21, scope: !1124)
!1127 = !DILocation(line: 490, column: 5, scope: !1121)
!1128 = !DILocation(line: 491, column: 38, scope: !1124)
!1129 = !DILocation(line: 491, column: 7, scope: !1124)
!1130 = !DILocation(line: 491, column: 16, scope: !1124)
!1131 = !DILocation(line: 491, column: 32, scope: !1124)
!1132 = !DILocation(line: 491, column: 36, scope: !1124)
!1133 = !DILocation(line: 490, column: 33, scope: !1124)
!1134 = !DILocation(line: 490, column: 5, scope: !1124)
!1135 = distinct !{!1135, !1127, !1136, !651}
!1136 = !DILocation(line: 491, column: 38, scope: !1121)
!1137 = !DILocation(line: 492, column: 19, scope: !1116)
!1138 = !DILocation(line: 492, column: 28, scope: !1116)
!1139 = !DILocation(line: 492, column: 31, scope: !1116)
!1140 = !DILocation(line: 492, column: 5, scope: !1116)
!1141 = !DILocation(line: 492, column: 14, scope: !1116)
!1142 = !DILocation(line: 492, column: 17, scope: !1116)
!1143 = !DILocation(line: 493, column: 19, scope: !1116)
!1144 = !DILocation(line: 493, column: 5, scope: !1116)
!1145 = !DILocation(line: 493, column: 14, scope: !1116)
!1146 = !DILocation(line: 493, column: 17, scope: !1116)
!1147 = !DILocation(line: 494, column: 19, scope: !1116)
!1148 = !DILocation(line: 494, column: 5, scope: !1116)
!1149 = !DILocation(line: 494, column: 14, scope: !1116)
!1150 = !DILocation(line: 494, column: 17, scope: !1116)
!1151 = !DILocation(line: 495, column: 12, scope: !1116)
!1152 = !DILocation(line: 496, column: 3, scope: !1116)
!1153 = !DILocation(line: 498, column: 26, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !1113, file: !3, line: 496, column: 10)
!1155 = !DILocation(line: 498, column: 35, scope: !1154)
!1156 = !DILocation(line: 498, column: 49, scope: !1154)
!1157 = !DILocation(line: 498, column: 53, scope: !1154)
!1158 = !DILocation(line: 498, column: 15, scope: !1154)
!1159 = !DILocation(line: 498, column: 13, scope: !1154)
!1160 = !DILocation(line: 500, column: 10, scope: !1099)
!1161 = !DILocation(line: 500, column: 3, scope: !1099)
!1162 = distinct !DISubprogram(name: "fill_a_scan", scope: !3, file: !3, line: 448, type: !1163, scopeLine: 451, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !398, retainedNodes: !536)
!1163 = !DISubroutineType(types: !1164)
!1164 = !{!525, !525, !33, !33, !33, !33, !33}
!1165 = !DILocalVariable(name: "scanptr", arg: 1, scope: !1162, file: !3, line: 448, type: !525)
!1166 = !DILocation(line: 448, column: 31, scope: !1162)
!1167 = !DILocalVariable(name: "ci", arg: 2, scope: !1162, file: !3, line: 448, type: !33)
!1168 = !DILocation(line: 448, column: 44, scope: !1162)
!1169 = !DILocalVariable(name: "Ss", arg: 3, scope: !1162, file: !3, line: 449, type: !33)
!1170 = !DILocation(line: 449, column: 11, scope: !1162)
!1171 = !DILocalVariable(name: "Se", arg: 4, scope: !1162, file: !3, line: 449, type: !33)
!1172 = !DILocation(line: 449, column: 19, scope: !1162)
!1173 = !DILocalVariable(name: "Ah", arg: 5, scope: !1162, file: !3, line: 449, type: !33)
!1174 = !DILocation(line: 449, column: 27, scope: !1162)
!1175 = !DILocalVariable(name: "Al", arg: 6, scope: !1162, file: !3, line: 449, type: !33)
!1176 = !DILocation(line: 449, column: 35, scope: !1162)
!1177 = !DILocation(line: 452, column: 3, scope: !1162)
!1178 = !DILocation(line: 452, column: 12, scope: !1162)
!1179 = !DILocation(line: 452, column: 26, scope: !1162)
!1180 = !DILocation(line: 453, column: 33, scope: !1162)
!1181 = !DILocation(line: 453, column: 3, scope: !1162)
!1182 = !DILocation(line: 453, column: 12, scope: !1162)
!1183 = !DILocation(line: 453, column: 31, scope: !1162)
!1184 = !DILocation(line: 454, column: 17, scope: !1162)
!1185 = !DILocation(line: 454, column: 3, scope: !1162)
!1186 = !DILocation(line: 454, column: 12, scope: !1162)
!1187 = !DILocation(line: 454, column: 15, scope: !1162)
!1188 = !DILocation(line: 455, column: 17, scope: !1162)
!1189 = !DILocation(line: 455, column: 3, scope: !1162)
!1190 = !DILocation(line: 455, column: 12, scope: !1162)
!1191 = !DILocation(line: 455, column: 15, scope: !1162)
!1192 = !DILocation(line: 456, column: 17, scope: !1162)
!1193 = !DILocation(line: 456, column: 3, scope: !1162)
!1194 = !DILocation(line: 456, column: 12, scope: !1162)
!1195 = !DILocation(line: 456, column: 15, scope: !1162)
!1196 = !DILocation(line: 457, column: 17, scope: !1162)
!1197 = !DILocation(line: 457, column: 3, scope: !1162)
!1198 = !DILocation(line: 457, column: 12, scope: !1162)
!1199 = !DILocation(line: 457, column: 15, scope: !1162)
!1200 = !DILocation(line: 458, column: 10, scope: !1162)
!1201 = !DILocation(line: 459, column: 10, scope: !1162)
!1202 = !DILocation(line: 459, column: 3, scope: !1162)
!1203 = distinct !DISubprogram(name: "fill_scans", scope: !3, file: !3, line: 463, type: !1163, scopeLine: 466, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !398, retainedNodes: !536)
!1204 = !DILocalVariable(name: "scanptr", arg: 1, scope: !1203, file: !3, line: 463, type: !525)
!1205 = !DILocation(line: 463, column: 30, scope: !1203)
!1206 = !DILocalVariable(name: "ncomps", arg: 2, scope: !1203, file: !3, line: 463, type: !33)
!1207 = !DILocation(line: 463, column: 43, scope: !1203)
!1208 = !DILocalVariable(name: "Ss", arg: 3, scope: !1203, file: !3, line: 464, type: !33)
!1209 = !DILocation(line: 464, column: 10, scope: !1203)
!1210 = !DILocalVariable(name: "Se", arg: 4, scope: !1203, file: !3, line: 464, type: !33)
!1211 = !DILocation(line: 464, column: 18, scope: !1203)
!1212 = !DILocalVariable(name: "Ah", arg: 5, scope: !1203, file: !3, line: 464, type: !33)
!1213 = !DILocation(line: 464, column: 26, scope: !1203)
!1214 = !DILocalVariable(name: "Al", arg: 6, scope: !1203, file: !3, line: 464, type: !33)
!1215 = !DILocation(line: 464, column: 34, scope: !1203)
!1216 = !DILocalVariable(name: "ci", scope: !1203, file: !3, line: 467, type: !33)
!1217 = !DILocation(line: 467, column: 7, scope: !1203)
!1218 = !DILocation(line: 469, column: 11, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1203, file: !3, line: 469, column: 3)
!1220 = !DILocation(line: 469, column: 8, scope: !1219)
!1221 = !DILocation(line: 469, column: 16, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1219, file: !3, line: 469, column: 3)
!1223 = !DILocation(line: 469, column: 21, scope: !1222)
!1224 = !DILocation(line: 469, column: 19, scope: !1222)
!1225 = !DILocation(line: 469, column: 3, scope: !1219)
!1226 = !DILocation(line: 470, column: 5, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1222, file: !3, line: 469, column: 35)
!1228 = !DILocation(line: 470, column: 14, scope: !1227)
!1229 = !DILocation(line: 470, column: 28, scope: !1227)
!1230 = !DILocation(line: 471, column: 35, scope: !1227)
!1231 = !DILocation(line: 471, column: 5, scope: !1227)
!1232 = !DILocation(line: 471, column: 14, scope: !1227)
!1233 = !DILocation(line: 471, column: 33, scope: !1227)
!1234 = !DILocation(line: 472, column: 19, scope: !1227)
!1235 = !DILocation(line: 472, column: 5, scope: !1227)
!1236 = !DILocation(line: 472, column: 14, scope: !1227)
!1237 = !DILocation(line: 472, column: 17, scope: !1227)
!1238 = !DILocation(line: 473, column: 19, scope: !1227)
!1239 = !DILocation(line: 473, column: 5, scope: !1227)
!1240 = !DILocation(line: 473, column: 14, scope: !1227)
!1241 = !DILocation(line: 473, column: 17, scope: !1227)
!1242 = !DILocation(line: 474, column: 19, scope: !1227)
!1243 = !DILocation(line: 474, column: 5, scope: !1227)
!1244 = !DILocation(line: 474, column: 14, scope: !1227)
!1245 = !DILocation(line: 474, column: 17, scope: !1227)
!1246 = !DILocation(line: 475, column: 19, scope: !1227)
!1247 = !DILocation(line: 475, column: 5, scope: !1227)
!1248 = !DILocation(line: 475, column: 14, scope: !1227)
!1249 = !DILocation(line: 475, column: 17, scope: !1227)
!1250 = !DILocation(line: 476, column: 12, scope: !1227)
!1251 = !DILocation(line: 477, column: 3, scope: !1227)
!1252 = !DILocation(line: 469, column: 31, scope: !1222)
!1253 = !DILocation(line: 469, column: 3, scope: !1222)
!1254 = distinct !{!1254, !1225, !1255, !651}
!1255 = !DILocation(line: 477, column: 3, scope: !1219)
!1256 = !DILocation(line: 478, column: 10, scope: !1203)
!1257 = !DILocation(line: 478, column: 3, scope: !1203)
!1258 = distinct !DISubprogram(name: "add_huff_table", scope: !3, file: !3, line: 147, type: !1259, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !398, retainedNodes: !536)
!1259 = !DISubroutineType(types: !1260)
!1260 = !{null, !6, !1261, !1262, !1262}
!1261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!1262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!1263 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1258, file: !3, line: 147, type: !6)
!1264 = !DILocation(line: 147, column: 32, scope: !1258)
!1265 = !DILocalVariable(name: "htblptr", arg: 2, scope: !1258, file: !3, line: 148, type: !1261)
!1266 = !DILocation(line: 148, column: 15, scope: !1258)
!1267 = !DILocalVariable(name: "bits", arg: 3, scope: !1258, file: !3, line: 148, type: !1262)
!1268 = !DILocation(line: 148, column: 37, scope: !1258)
!1269 = !DILocalVariable(name: "val", arg: 4, scope: !1258, file: !3, line: 148, type: !1262)
!1270 = !DILocation(line: 148, column: 56, scope: !1258)
!1271 = !DILocation(line: 151, column: 8, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !1258, file: !3, line: 151, column: 7)
!1273 = !DILocation(line: 151, column: 7, scope: !1272)
!1274 = !DILocation(line: 151, column: 16, scope: !1272)
!1275 = !DILocation(line: 152, column: 53, scope: !1272)
!1276 = !DILocation(line: 152, column: 16, scope: !1272)
!1277 = !DILocation(line: 152, column: 6, scope: !1272)
!1278 = !DILocation(line: 152, column: 14, scope: !1272)
!1279 = !DILocation(line: 152, column: 5, scope: !1272)
!1280 = !DILocation(line: 154, column: 3, scope: !1258)
!1281 = !DILocation(line: 155, column: 3, scope: !1258)
!1282 = !DILocation(line: 158, column: 5, scope: !1258)
!1283 = !DILocation(line: 158, column: 4, scope: !1258)
!1284 = !DILocation(line: 158, column: 15, scope: !1258)
!1285 = !DILocation(line: 158, column: 26, scope: !1258)
!1286 = !DILocation(line: 159, column: 1, scope: !1258)
