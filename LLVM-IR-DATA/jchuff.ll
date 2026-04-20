; ModuleID = 'cBench/consumer_jpeg_c/src/jchuff.c'
source_filename = "cBench/consumer_jpeg_c/src/jchuff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jpeg_compress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, double, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [16 x i8], [16 x i8], [16 x i8], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.JHUFF_TBL = type { [17 x i8], [256 x i8], i32 }
%struct.c_derived_tbl = type { [256 x i32], [256 x i8] }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.huff_entropy_encoder = type { %struct.jpeg_entropy_encoder, %struct.savable_state, i32, i32, [4 x ptr], [4 x ptr], [4 x ptr], [4 x ptr] }
%struct.jpeg_entropy_encoder = type { ptr, ptr, ptr }
%struct.savable_state = type { i64, i32, [4 x i32] }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.working_state = type { ptr, i64, %struct.savable_state, ptr }
%struct.jpeg_destination_mgr = type { ptr, i64, ptr, ptr, ptr }

@jpeg_natural_order = external constant [0 x i32], align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @jpeg_make_c_derived_tbl(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !562 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [257 x i8], align 16
  %14 = alloca [257 x i32], align 16
  %15 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
    #dbg_declare(ptr %4, !567, !DIExpression(), !568)
  store ptr %1, ptr %5, align 8
    #dbg_declare(ptr %5, !569, !DIExpression(), !570)
  store ptr %2, ptr %6, align 8
    #dbg_declare(ptr %6, !571, !DIExpression(), !572)
    #dbg_declare(ptr %7, !573, !DIExpression(), !574)
    #dbg_declare(ptr %8, !575, !DIExpression(), !576)
    #dbg_declare(ptr %9, !577, !DIExpression(), !578)
    #dbg_declare(ptr %10, !579, !DIExpression(), !580)
    #dbg_declare(ptr %11, !581, !DIExpression(), !582)
    #dbg_declare(ptr %12, !583, !DIExpression(), !584)
    #dbg_declare(ptr %13, !585, !DIExpression(), !589)
    #dbg_declare(ptr %14, !590, !DIExpression(), !592)
    #dbg_declare(ptr %15, !593, !DIExpression(), !594)
  %16 = load ptr, ptr %6, align 8, !dbg !595
  %17 = load ptr, ptr %16, align 8, !dbg !597
  %18 = icmp eq ptr %17, null, !dbg !598
  br i1 %18, label %19, label %28, !dbg !598

19:                                               ; preds = %3
  %20 = load ptr, ptr %4, align 8, !dbg !599
  %21 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %20, i32 0, i32 1, !dbg !600
  %22 = load ptr, ptr %21, align 8, !dbg !600
  %23 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %22, i32 0, i32 0, !dbg !601
  %24 = load ptr, ptr %23, align 8, !dbg !601
  %25 = load ptr, ptr %4, align 8, !dbg !602
  %26 = call ptr %24(ptr noundef %25, i32 noundef 1, i64 noundef 1280), !dbg !603
  %27 = load ptr, ptr %6, align 8, !dbg !604
  store ptr %26, ptr %27, align 8, !dbg !605
  br label %28, !dbg !606

28:                                               ; preds = %19, %3
  %29 = load ptr, ptr %6, align 8, !dbg !607
  %30 = load ptr, ptr %29, align 8, !dbg !608
  store ptr %30, ptr %7, align 8, !dbg !609
  store i32 0, ptr %8, align 4, !dbg !610
  store i32 1, ptr %10, align 4, !dbg !611
  br label %31, !dbg !613

31:                                               ; preds = %56, %28
  %32 = load i32, ptr %10, align 4, !dbg !614
  %33 = icmp sle i32 %32, 16, !dbg !616
  br i1 %33, label %34, label %59, !dbg !617

34:                                               ; preds = %31
  store i32 1, ptr %9, align 4, !dbg !618
  br label %35, !dbg !621

35:                                               ; preds = %52, %34
  %36 = load i32, ptr %9, align 4, !dbg !622
  %37 = load ptr, ptr %5, align 8, !dbg !624
  %38 = getelementptr inbounds nuw %struct.JHUFF_TBL, ptr %37, i32 0, i32 0, !dbg !625
  %39 = load i32, ptr %10, align 4, !dbg !626
  %40 = sext i32 %39 to i64, !dbg !624
  %41 = getelementptr inbounds [17 x i8], ptr %38, i64 0, i64 %40, !dbg !624
  %42 = load i8, ptr %41, align 1, !dbg !624
  %43 = zext i8 %42 to i32, !dbg !627
  %44 = icmp sle i32 %36, %43, !dbg !628
  br i1 %44, label %45, label %55, !dbg !629

45:                                               ; preds = %35
  %46 = load i32, ptr %10, align 4, !dbg !630
  %47 = trunc i32 %46 to i8, !dbg !631
  %48 = load i32, ptr %8, align 4, !dbg !632
  %49 = add nsw i32 %48, 1, !dbg !632
  store i32 %49, ptr %8, align 4, !dbg !632
  %50 = sext i32 %48 to i64, !dbg !633
  %51 = getelementptr inbounds [257 x i8], ptr %13, i64 0, i64 %50, !dbg !633
  store i8 %47, ptr %51, align 1, !dbg !634
  br label %52, !dbg !633

52:                                               ; preds = %45
  %53 = load i32, ptr %9, align 4, !dbg !635
  %54 = add nsw i32 %53, 1, !dbg !635
  store i32 %54, ptr %9, align 4, !dbg !635
  br label %35, !dbg !636, !llvm.loop !637

55:                                               ; preds = %35
  br label %56, !dbg !640

56:                                               ; preds = %55
  %57 = load i32, ptr %10, align 4, !dbg !641
  %58 = add nsw i32 %57, 1, !dbg !641
  store i32 %58, ptr %10, align 4, !dbg !641
  br label %31, !dbg !642, !llvm.loop !643

59:                                               ; preds = %31
  %60 = load i32, ptr %8, align 4, !dbg !645
  %61 = sext i32 %60 to i64, !dbg !646
  %62 = getelementptr inbounds [257 x i8], ptr %13, i64 0, i64 %61, !dbg !646
  store i8 0, ptr %62, align 1, !dbg !647
  %63 = load i32, ptr %8, align 4, !dbg !648
  store i32 %63, ptr %11, align 4, !dbg !649
  store i32 0, ptr %15, align 4, !dbg !650
  %64 = getelementptr inbounds [257 x i8], ptr %13, i64 0, i64 0, !dbg !651
  %65 = load i8, ptr %64, align 16, !dbg !651
  %66 = sext i8 %65 to i32, !dbg !651
  store i32 %66, ptr %12, align 4, !dbg !652
  store i32 0, ptr %8, align 4, !dbg !653
  br label %67, !dbg !654

67:                                               ; preds = %90, %59
  %68 = load i32, ptr %8, align 4, !dbg !655
  %69 = sext i32 %68 to i64, !dbg !656
  %70 = getelementptr inbounds [257 x i8], ptr %13, i64 0, i64 %69, !dbg !656
  %71 = load i8, ptr %70, align 1, !dbg !656
  %72 = icmp ne i8 %71, 0, !dbg !654
  br i1 %72, label %73, label %95, !dbg !654

73:                                               ; preds = %67
  br label %74, !dbg !657

74:                                               ; preds = %82, %73
  %75 = load i32, ptr %8, align 4, !dbg !659
  %76 = sext i32 %75 to i64, !dbg !660
  %77 = getelementptr inbounds [257 x i8], ptr %13, i64 0, i64 %76, !dbg !660
  %78 = load i8, ptr %77, align 1, !dbg !660
  %79 = sext i8 %78 to i32, !dbg !661
  %80 = load i32, ptr %12, align 4, !dbg !662
  %81 = icmp eq i32 %79, %80, !dbg !663
  br i1 %81, label %82, label %90, !dbg !657

82:                                               ; preds = %74
  %83 = load i32, ptr %15, align 4, !dbg !664
  %84 = load i32, ptr %8, align 4, !dbg !666
  %85 = add nsw i32 %84, 1, !dbg !666
  store i32 %85, ptr %8, align 4, !dbg !666
  %86 = sext i32 %84 to i64, !dbg !667
  %87 = getelementptr inbounds [257 x i32], ptr %14, i64 0, i64 %86, !dbg !667
  store i32 %83, ptr %87, align 4, !dbg !668
  %88 = load i32, ptr %15, align 4, !dbg !669
  %89 = add i32 %88, 1, !dbg !669
  store i32 %89, ptr %15, align 4, !dbg !669
  br label %74, !dbg !657, !llvm.loop !670

90:                                               ; preds = %74
  %91 = load i32, ptr %15, align 4, !dbg !672
  %92 = shl i32 %91, 1, !dbg !672
  store i32 %92, ptr %15, align 4, !dbg !672
  %93 = load i32, ptr %12, align 4, !dbg !673
  %94 = add nsw i32 %93, 1, !dbg !673
  store i32 %94, ptr %12, align 4, !dbg !673
  br label %67, !dbg !654, !llvm.loop !674

95:                                               ; preds = %67
  %96 = load ptr, ptr %7, align 8, !dbg !676
  %97 = getelementptr inbounds nuw %struct.c_derived_tbl, ptr %96, i32 0, i32 1, !dbg !676
  %98 = getelementptr inbounds [256 x i8], ptr %97, i64 0, i64 0, !dbg !676
  call void @llvm.memset.p0.i64(ptr align 4 %98, i8 0, i64 256, i1 false), !dbg !676
  store i32 0, ptr %8, align 4, !dbg !677
  br label %99, !dbg !679

99:                                               ; preds = %132, %95
  %100 = load i32, ptr %8, align 4, !dbg !680
  %101 = load i32, ptr %11, align 4, !dbg !682
  %102 = icmp slt i32 %100, %101, !dbg !683
  br i1 %102, label %103, label %135, !dbg !684

103:                                              ; preds = %99
  %104 = load i32, ptr %8, align 4, !dbg !685
  %105 = sext i32 %104 to i64, !dbg !687
  %106 = getelementptr inbounds [257 x i32], ptr %14, i64 0, i64 %105, !dbg !687
  %107 = load i32, ptr %106, align 4, !dbg !687
  %108 = load ptr, ptr %7, align 8, !dbg !688
  %109 = getelementptr inbounds nuw %struct.c_derived_tbl, ptr %108, i32 0, i32 0, !dbg !689
  %110 = load ptr, ptr %5, align 8, !dbg !690
  %111 = getelementptr inbounds nuw %struct.JHUFF_TBL, ptr %110, i32 0, i32 1, !dbg !691
  %112 = load i32, ptr %8, align 4, !dbg !692
  %113 = sext i32 %112 to i64, !dbg !690
  %114 = getelementptr inbounds [256 x i8], ptr %111, i64 0, i64 %113, !dbg !690
  %115 = load i8, ptr %114, align 1, !dbg !690
  %116 = zext i8 %115 to i64, !dbg !688
  %117 = getelementptr inbounds nuw [256 x i32], ptr %109, i64 0, i64 %116, !dbg !688
  store i32 %107, ptr %117, align 4, !dbg !693
  %118 = load i32, ptr %8, align 4, !dbg !694
  %119 = sext i32 %118 to i64, !dbg !695
  %120 = getelementptr inbounds [257 x i8], ptr %13, i64 0, i64 %119, !dbg !695
  %121 = load i8, ptr %120, align 1, !dbg !695
  %122 = load ptr, ptr %7, align 8, !dbg !696
  %123 = getelementptr inbounds nuw %struct.c_derived_tbl, ptr %122, i32 0, i32 1, !dbg !697
  %124 = load ptr, ptr %5, align 8, !dbg !698
  %125 = getelementptr inbounds nuw %struct.JHUFF_TBL, ptr %124, i32 0, i32 1, !dbg !699
  %126 = load i32, ptr %8, align 4, !dbg !700
  %127 = sext i32 %126 to i64, !dbg !698
  %128 = getelementptr inbounds [256 x i8], ptr %125, i64 0, i64 %127, !dbg !698
  %129 = load i8, ptr %128, align 1, !dbg !698
  %130 = zext i8 %129 to i64, !dbg !696
  %131 = getelementptr inbounds nuw [256 x i8], ptr %123, i64 0, i64 %130, !dbg !696
  store i8 %121, ptr %131, align 1, !dbg !701
  br label %132, !dbg !702

132:                                              ; preds = %103
  %133 = load i32, ptr %8, align 4, !dbg !703
  %134 = add nsw i32 %133, 1, !dbg !703
  store i32 %134, ptr %8, align 4, !dbg !703
  br label %99, !dbg !704, !llvm.loop !705

135:                                              ; preds = %99
  ret void, !dbg !707
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @jpeg_gen_optimal_table(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !708 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca [33 x i8], align 16
  %8 = alloca [257 x i32], align 16
  %9 = alloca [257 x i32], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
    #dbg_declare(ptr %4, !711, !DIExpression(), !712)
  store ptr %1, ptr %5, align 8
    #dbg_declare(ptr %5, !713, !DIExpression(), !714)
  store ptr %2, ptr %6, align 8
    #dbg_declare(ptr %6, !715, !DIExpression(), !716)
    #dbg_declare(ptr %7, !717, !DIExpression(), !721)
    #dbg_declare(ptr %8, !722, !DIExpression(), !724)
    #dbg_declare(ptr %9, !725, !DIExpression(), !726)
    #dbg_declare(ptr %10, !727, !DIExpression(), !728)
    #dbg_declare(ptr %11, !729, !DIExpression(), !730)
    #dbg_declare(ptr %12, !731, !DIExpression(), !732)
    #dbg_declare(ptr %13, !733, !DIExpression(), !734)
    #dbg_declare(ptr %14, !735, !DIExpression(), !736)
    #dbg_declare(ptr %15, !737, !DIExpression(), !738)
  %16 = getelementptr inbounds [33 x i8], ptr %7, i64 0, i64 0, !dbg !739
  call void @llvm.memset.p0.i64(ptr align 16 %16, i8 0, i64 33, i1 false), !dbg !739
  %17 = getelementptr inbounds [257 x i32], ptr %8, i64 0, i64 0, !dbg !740
  call void @llvm.memset.p0.i64(ptr align 16 %17, i8 0, i64 1028, i1 false), !dbg !740
  store i32 0, ptr %13, align 4, !dbg !741
  br label %18, !dbg !743

18:                                               ; preds = %25, %3
  %19 = load i32, ptr %13, align 4, !dbg !744
  %20 = icmp slt i32 %19, 257, !dbg !746
  br i1 %20, label %21, label %28, !dbg !747

21:                                               ; preds = %18
  %22 = load i32, ptr %13, align 4, !dbg !748
  %23 = sext i32 %22 to i64, !dbg !749
  %24 = getelementptr inbounds [257 x i32], ptr %9, i64 0, i64 %23, !dbg !749
  store i32 -1, ptr %24, align 4, !dbg !750
  br label %25, !dbg !749

25:                                               ; preds = %21
  %26 = load i32, ptr %13, align 4, !dbg !751
  %27 = add nsw i32 %26, 1, !dbg !751
  store i32 %27, ptr %13, align 4, !dbg !751
  br label %18, !dbg !752, !llvm.loop !753

28:                                               ; preds = %18
  %29 = load ptr, ptr %6, align 8, !dbg !755
  %30 = getelementptr inbounds i64, ptr %29, i64 256, !dbg !755
  store i64 1, ptr %30, align 8, !dbg !756
  br label %31, !dbg !757

31:                                               ; preds = %162, %28
  store i32 -1, ptr %10, align 4, !dbg !758
  store i64 1000000000, ptr %15, align 8, !dbg !762
  store i32 0, ptr %13, align 4, !dbg !763
  br label %32, !dbg !765

32:                                               ; preds = %58, %31
  %33 = load i32, ptr %13, align 4, !dbg !766
  %34 = icmp sle i32 %33, 256, !dbg !768
  br i1 %34, label %35, label %61, !dbg !769

35:                                               ; preds = %32
  %36 = load ptr, ptr %6, align 8, !dbg !770
  %37 = load i32, ptr %13, align 4, !dbg !773
  %38 = sext i32 %37 to i64, !dbg !770
  %39 = getelementptr inbounds i64, ptr %36, i64 %38, !dbg !770
  %40 = load i64, ptr %39, align 8, !dbg !770
  %41 = icmp ne i64 %40, 0, !dbg !770
  br i1 %41, label %42, label %57, !dbg !774

42:                                               ; preds = %35
  %43 = load ptr, ptr %6, align 8, !dbg !775
  %44 = load i32, ptr %13, align 4, !dbg !776
  %45 = sext i32 %44 to i64, !dbg !775
  %46 = getelementptr inbounds i64, ptr %43, i64 %45, !dbg !775
  %47 = load i64, ptr %46, align 8, !dbg !775
  %48 = load i64, ptr %15, align 8, !dbg !777
  %49 = icmp sle i64 %47, %48, !dbg !778
  br i1 %49, label %50, label %57, !dbg !774

50:                                               ; preds = %42
  %51 = load ptr, ptr %6, align 8, !dbg !779
  %52 = load i32, ptr %13, align 4, !dbg !781
  %53 = sext i32 %52 to i64, !dbg !779
  %54 = getelementptr inbounds i64, ptr %51, i64 %53, !dbg !779
  %55 = load i64, ptr %54, align 8, !dbg !779
  store i64 %55, ptr %15, align 8, !dbg !782
  %56 = load i32, ptr %13, align 4, !dbg !783
  store i32 %56, ptr %10, align 4, !dbg !784
  br label %57, !dbg !785

57:                                               ; preds = %50, %42, %35
  br label %58, !dbg !786

58:                                               ; preds = %57
  %59 = load i32, ptr %13, align 4, !dbg !787
  %60 = add nsw i32 %59, 1, !dbg !787
  store i32 %60, ptr %13, align 4, !dbg !787
  br label %32, !dbg !788, !llvm.loop !789

61:                                               ; preds = %32
  store i32 -1, ptr %11, align 4, !dbg !791
  store i64 1000000000, ptr %15, align 8, !dbg !792
  store i32 0, ptr %13, align 4, !dbg !793
  br label %62, !dbg !795

62:                                               ; preds = %92, %61
  %63 = load i32, ptr %13, align 4, !dbg !796
  %64 = icmp sle i32 %63, 256, !dbg !798
  br i1 %64, label %65, label %95, !dbg !799

65:                                               ; preds = %62
  %66 = load ptr, ptr %6, align 8, !dbg !800
  %67 = load i32, ptr %13, align 4, !dbg !803
  %68 = sext i32 %67 to i64, !dbg !800
  %69 = getelementptr inbounds i64, ptr %66, i64 %68, !dbg !800
  %70 = load i64, ptr %69, align 8, !dbg !800
  %71 = icmp ne i64 %70, 0, !dbg !800
  br i1 %71, label %72, label %91, !dbg !804

72:                                               ; preds = %65
  %73 = load ptr, ptr %6, align 8, !dbg !805
  %74 = load i32, ptr %13, align 4, !dbg !806
  %75 = sext i32 %74 to i64, !dbg !805
  %76 = getelementptr inbounds i64, ptr %73, i64 %75, !dbg !805
  %77 = load i64, ptr %76, align 8, !dbg !805
  %78 = load i64, ptr %15, align 8, !dbg !807
  %79 = icmp sle i64 %77, %78, !dbg !808
  br i1 %79, label %80, label %91, !dbg !809

80:                                               ; preds = %72
  %81 = load i32, ptr %13, align 4, !dbg !810
  %82 = load i32, ptr %10, align 4, !dbg !811
  %83 = icmp ne i32 %81, %82, !dbg !812
  br i1 %83, label %84, label %91, !dbg !809

84:                                               ; preds = %80
  %85 = load ptr, ptr %6, align 8, !dbg !813
  %86 = load i32, ptr %13, align 4, !dbg !815
  %87 = sext i32 %86 to i64, !dbg !813
  %88 = getelementptr inbounds i64, ptr %85, i64 %87, !dbg !813
  %89 = load i64, ptr %88, align 8, !dbg !813
  store i64 %89, ptr %15, align 8, !dbg !816
  %90 = load i32, ptr %13, align 4, !dbg !817
  store i32 %90, ptr %11, align 4, !dbg !818
  br label %91, !dbg !819

91:                                               ; preds = %84, %80, %72, %65
  br label %92, !dbg !820

92:                                               ; preds = %91
  %93 = load i32, ptr %13, align 4, !dbg !821
  %94 = add nsw i32 %93, 1, !dbg !821
  store i32 %94, ptr %13, align 4, !dbg !821
  br label %62, !dbg !822, !llvm.loop !823

95:                                               ; preds = %62
  %96 = load i32, ptr %11, align 4, !dbg !825
  %97 = icmp slt i32 %96, 0, !dbg !827
  br i1 %97, label %98, label %99, !dbg !827

98:                                               ; preds = %95
  br label %163, !dbg !828

99:                                               ; preds = %95
  %100 = load ptr, ptr %6, align 8, !dbg !829
  %101 = load i32, ptr %11, align 4, !dbg !830
  %102 = sext i32 %101 to i64, !dbg !829
  %103 = getelementptr inbounds i64, ptr %100, i64 %102, !dbg !829
  %104 = load i64, ptr %103, align 8, !dbg !829
  %105 = load ptr, ptr %6, align 8, !dbg !831
  %106 = load i32, ptr %10, align 4, !dbg !832
  %107 = sext i32 %106 to i64, !dbg !831
  %108 = getelementptr inbounds i64, ptr %105, i64 %107, !dbg !831
  %109 = load i64, ptr %108, align 8, !dbg !833
  %110 = add nsw i64 %109, %104, !dbg !833
  store i64 %110, ptr %108, align 8, !dbg !833
  %111 = load ptr, ptr %6, align 8, !dbg !834
  %112 = load i32, ptr %11, align 4, !dbg !835
  %113 = sext i32 %112 to i64, !dbg !834
  %114 = getelementptr inbounds i64, ptr %111, i64 %113, !dbg !834
  store i64 0, ptr %114, align 8, !dbg !836
  %115 = load i32, ptr %10, align 4, !dbg !837
  %116 = sext i32 %115 to i64, !dbg !838
  %117 = getelementptr inbounds [257 x i32], ptr %8, i64 0, i64 %116, !dbg !838
  %118 = load i32, ptr %117, align 4, !dbg !839
  %119 = add nsw i32 %118, 1, !dbg !839
  store i32 %119, ptr %117, align 4, !dbg !839
  br label %120, !dbg !840

120:                                              ; preds = %126, %99
  %121 = load i32, ptr %10, align 4, !dbg !841
  %122 = sext i32 %121 to i64, !dbg !842
  %123 = getelementptr inbounds [257 x i32], ptr %9, i64 0, i64 %122, !dbg !842
  %124 = load i32, ptr %123, align 4, !dbg !842
  %125 = icmp sge i32 %124, 0, !dbg !843
  br i1 %125, label %126, label %136, !dbg !840

126:                                              ; preds = %120
  %127 = load i32, ptr %10, align 4, !dbg !844
  %128 = sext i32 %127 to i64, !dbg !846
  %129 = getelementptr inbounds [257 x i32], ptr %9, i64 0, i64 %128, !dbg !846
  %130 = load i32, ptr %129, align 4, !dbg !846
  store i32 %130, ptr %10, align 4, !dbg !847
  %131 = load i32, ptr %10, align 4, !dbg !848
  %132 = sext i32 %131 to i64, !dbg !849
  %133 = getelementptr inbounds [257 x i32], ptr %8, i64 0, i64 %132, !dbg !849
  %134 = load i32, ptr %133, align 4, !dbg !850
  %135 = add nsw i32 %134, 1, !dbg !850
  store i32 %135, ptr %133, align 4, !dbg !850
  br label %120, !dbg !840, !llvm.loop !851

136:                                              ; preds = %120
  %137 = load i32, ptr %11, align 4, !dbg !853
  %138 = load i32, ptr %10, align 4, !dbg !854
  %139 = sext i32 %138 to i64, !dbg !855
  %140 = getelementptr inbounds [257 x i32], ptr %9, i64 0, i64 %139, !dbg !855
  store i32 %137, ptr %140, align 4, !dbg !856
  %141 = load i32, ptr %11, align 4, !dbg !857
  %142 = sext i32 %141 to i64, !dbg !858
  %143 = getelementptr inbounds [257 x i32], ptr %8, i64 0, i64 %142, !dbg !858
  %144 = load i32, ptr %143, align 4, !dbg !859
  %145 = add nsw i32 %144, 1, !dbg !859
  store i32 %145, ptr %143, align 4, !dbg !859
  br label %146, !dbg !860

146:                                              ; preds = %152, %136
  %147 = load i32, ptr %11, align 4, !dbg !861
  %148 = sext i32 %147 to i64, !dbg !862
  %149 = getelementptr inbounds [257 x i32], ptr %9, i64 0, i64 %148, !dbg !862
  %150 = load i32, ptr %149, align 4, !dbg !862
  %151 = icmp sge i32 %150, 0, !dbg !863
  br i1 %151, label %152, label %162, !dbg !860

152:                                              ; preds = %146
  %153 = load i32, ptr %11, align 4, !dbg !864
  %154 = sext i32 %153 to i64, !dbg !866
  %155 = getelementptr inbounds [257 x i32], ptr %9, i64 0, i64 %154, !dbg !866
  %156 = load i32, ptr %155, align 4, !dbg !866
  store i32 %156, ptr %11, align 4, !dbg !867
  %157 = load i32, ptr %11, align 4, !dbg !868
  %158 = sext i32 %157 to i64, !dbg !869
  %159 = getelementptr inbounds [257 x i32], ptr %8, i64 0, i64 %158, !dbg !869
  %160 = load i32, ptr %159, align 4, !dbg !870
  %161 = add nsw i32 %160, 1, !dbg !870
  store i32 %161, ptr %159, align 4, !dbg !870
  br label %146, !dbg !860, !llvm.loop !871

162:                                              ; preds = %146
  br label %31, !dbg !873, !llvm.loop !874

163:                                              ; preds = %98
  store i32 0, ptr %13, align 4, !dbg !877
  br label %164, !dbg !879

164:                                              ; preds = %200, %163
  %165 = load i32, ptr %13, align 4, !dbg !880
  %166 = icmp sle i32 %165, 256, !dbg !882
  br i1 %166, label %167, label %203, !dbg !883

167:                                              ; preds = %164
  %168 = load i32, ptr %13, align 4, !dbg !884
  %169 = sext i32 %168 to i64, !dbg !887
  %170 = getelementptr inbounds [257 x i32], ptr %8, i64 0, i64 %169, !dbg !887
  %171 = load i32, ptr %170, align 4, !dbg !887
  %172 = icmp ne i32 %171, 0, !dbg !887
  br i1 %172, label %173, label %199, !dbg !887

173:                                              ; preds = %167
  %174 = load i32, ptr %13, align 4, !dbg !888
  %175 = sext i32 %174 to i64, !dbg !891
  %176 = getelementptr inbounds [257 x i32], ptr %8, i64 0, i64 %175, !dbg !891
  %177 = load i32, ptr %176, align 4, !dbg !891
  %178 = icmp sgt i32 %177, 32, !dbg !892
  br i1 %178, label %179, label %190, !dbg !892

179:                                              ; preds = %173
  %180 = load ptr, ptr %4, align 8, !dbg !893
  %181 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %180, i32 0, i32 0, !dbg !893
  %182 = load ptr, ptr %181, align 8, !dbg !893
  %183 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %182, i32 0, i32 5, !dbg !893
  store i32 38, ptr %183, align 8, !dbg !893
  %184 = load ptr, ptr %4, align 8, !dbg !893
  %185 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %184, i32 0, i32 0, !dbg !893
  %186 = load ptr, ptr %185, align 8, !dbg !893
  %187 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %186, i32 0, i32 0, !dbg !893
  %188 = load ptr, ptr %187, align 8, !dbg !893
  %189 = load ptr, ptr %4, align 8, !dbg !893
  call void %188(ptr noundef %189), !dbg !893
  br label %190, !dbg !893

190:                                              ; preds = %179, %173
  %191 = load i32, ptr %13, align 4, !dbg !894
  %192 = sext i32 %191 to i64, !dbg !895
  %193 = getelementptr inbounds [257 x i32], ptr %8, i64 0, i64 %192, !dbg !895
  %194 = load i32, ptr %193, align 4, !dbg !895
  %195 = sext i32 %194 to i64, !dbg !896
  %196 = getelementptr inbounds [33 x i8], ptr %7, i64 0, i64 %195, !dbg !896
  %197 = load i8, ptr %196, align 1, !dbg !897
  %198 = add i8 %197, 1, !dbg !897
  store i8 %198, ptr %196, align 1, !dbg !897
  br label %199, !dbg !898

199:                                              ; preds = %190, %167
  br label %200, !dbg !899

200:                                              ; preds = %199
  %201 = load i32, ptr %13, align 4, !dbg !900
  %202 = add nsw i32 %201, 1, !dbg !900
  store i32 %202, ptr %13, align 4, !dbg !900
  br label %164, !dbg !901, !llvm.loop !902

203:                                              ; preds = %164
  store i32 32, ptr %13, align 4, !dbg !904
  br label %204, !dbg !906

204:                                              ; preds = %256, %203
  %205 = load i32, ptr %13, align 4, !dbg !907
  %206 = icmp sgt i32 %205, 16, !dbg !909
  br i1 %206, label %207, label %259, !dbg !910

207:                                              ; preds = %204
  br label %208, !dbg !911

208:                                              ; preds = %228, %207
  %209 = load i32, ptr %13, align 4, !dbg !913
  %210 = sext i32 %209 to i64, !dbg !914
  %211 = getelementptr inbounds [33 x i8], ptr %7, i64 0, i64 %210, !dbg !914
  %212 = load i8, ptr %211, align 1, !dbg !914
  %213 = zext i8 %212 to i32, !dbg !914
  %214 = icmp sgt i32 %213, 0, !dbg !915
  br i1 %214, label %215, label %255, !dbg !911

215:                                              ; preds = %208
  %216 = load i32, ptr %13, align 4, !dbg !916
  %217 = sub nsw i32 %216, 2, !dbg !918
  store i32 %217, ptr %14, align 4, !dbg !919
  br label %218, !dbg !920

218:                                              ; preds = %225, %215
  %219 = load i32, ptr %14, align 4, !dbg !921
  %220 = sext i32 %219 to i64, !dbg !922
  %221 = getelementptr inbounds [33 x i8], ptr %7, i64 0, i64 %220, !dbg !922
  %222 = load i8, ptr %221, align 1, !dbg !922
  %223 = zext i8 %222 to i32, !dbg !922
  %224 = icmp eq i32 %223, 0, !dbg !923
  br i1 %224, label %225, label %228, !dbg !920

225:                                              ; preds = %218
  %226 = load i32, ptr %14, align 4, !dbg !924
  %227 = add nsw i32 %226, -1, !dbg !924
  store i32 %227, ptr %14, align 4, !dbg !924
  br label %218, !dbg !920, !llvm.loop !925

228:                                              ; preds = %218
  %229 = load i32, ptr %13, align 4, !dbg !926
  %230 = sext i32 %229 to i64, !dbg !927
  %231 = getelementptr inbounds [33 x i8], ptr %7, i64 0, i64 %230, !dbg !927
  %232 = load i8, ptr %231, align 1, !dbg !928
  %233 = zext i8 %232 to i32, !dbg !928
  %234 = sub nsw i32 %233, 2, !dbg !928
  %235 = trunc i32 %234 to i8, !dbg !928
  store i8 %235, ptr %231, align 1, !dbg !928
  %236 = load i32, ptr %13, align 4, !dbg !929
  %237 = sub nsw i32 %236, 1, !dbg !930
  %238 = sext i32 %237 to i64, !dbg !931
  %239 = getelementptr inbounds [33 x i8], ptr %7, i64 0, i64 %238, !dbg !931
  %240 = load i8, ptr %239, align 1, !dbg !932
  %241 = add i8 %240, 1, !dbg !932
  store i8 %241, ptr %239, align 1, !dbg !932
  %242 = load i32, ptr %14, align 4, !dbg !933
  %243 = add nsw i32 %242, 1, !dbg !934
  %244 = sext i32 %243 to i64, !dbg !935
  %245 = getelementptr inbounds [33 x i8], ptr %7, i64 0, i64 %244, !dbg !935
  %246 = load i8, ptr %245, align 1, !dbg !936
  %247 = zext i8 %246 to i32, !dbg !936
  %248 = add nsw i32 %247, 2, !dbg !936
  %249 = trunc i32 %248 to i8, !dbg !936
  store i8 %249, ptr %245, align 1, !dbg !936
  %250 = load i32, ptr %14, align 4, !dbg !937
  %251 = sext i32 %250 to i64, !dbg !938
  %252 = getelementptr inbounds [33 x i8], ptr %7, i64 0, i64 %251, !dbg !938
  %253 = load i8, ptr %252, align 1, !dbg !939
  %254 = add i8 %253, -1, !dbg !939
  store i8 %254, ptr %252, align 1, !dbg !939
  br label %208, !dbg !911, !llvm.loop !940

255:                                              ; preds = %208
  br label %256, !dbg !942

256:                                              ; preds = %255
  %257 = load i32, ptr %13, align 4, !dbg !943
  %258 = add nsw i32 %257, -1, !dbg !943
  store i32 %258, ptr %13, align 4, !dbg !943
  br label %204, !dbg !944, !llvm.loop !945

259:                                              ; preds = %204
  br label %260, !dbg !947

260:                                              ; preds = %267, %259
  %261 = load i32, ptr %13, align 4, !dbg !948
  %262 = sext i32 %261 to i64, !dbg !949
  %263 = getelementptr inbounds [33 x i8], ptr %7, i64 0, i64 %262, !dbg !949
  %264 = load i8, ptr %263, align 1, !dbg !949
  %265 = zext i8 %264 to i32, !dbg !949
  %266 = icmp eq i32 %265, 0, !dbg !950
  br i1 %266, label %267, label %270, !dbg !947

267:                                              ; preds = %260
  %268 = load i32, ptr %13, align 4, !dbg !951
  %269 = add nsw i32 %268, -1, !dbg !951
  store i32 %269, ptr %13, align 4, !dbg !951
  br label %260, !dbg !947, !llvm.loop !952

270:                                              ; preds = %260
  %271 = load i32, ptr %13, align 4, !dbg !953
  %272 = sext i32 %271 to i64, !dbg !954
  %273 = getelementptr inbounds [33 x i8], ptr %7, i64 0, i64 %272, !dbg !954
  %274 = load i8, ptr %273, align 1, !dbg !955
  %275 = add i8 %274, -1, !dbg !955
  store i8 %275, ptr %273, align 1, !dbg !955
  %276 = load ptr, ptr %5, align 8, !dbg !956
  %277 = getelementptr inbounds nuw %struct.JHUFF_TBL, ptr %276, i32 0, i32 0, !dbg !956
  %278 = getelementptr inbounds [17 x i8], ptr %277, i64 0, i64 0, !dbg !956
  %279 = getelementptr inbounds [33 x i8], ptr %7, i64 0, i64 0, !dbg !956
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %278, ptr align 16 %279, i64 17, i1 false), !dbg !956
  store i32 0, ptr %12, align 4, !dbg !957
  store i32 1, ptr %13, align 4, !dbg !958
  br label %280, !dbg !960

280:                                              ; preds = %309, %270
  %281 = load i32, ptr %13, align 4, !dbg !961
  %282 = icmp sle i32 %281, 32, !dbg !963
  br i1 %282, label %283, label %312, !dbg !964

283:                                              ; preds = %280
  store i32 0, ptr %14, align 4, !dbg !965
  br label %284, !dbg !968

284:                                              ; preds = %305, %283
  %285 = load i32, ptr %14, align 4, !dbg !969
  %286 = icmp sle i32 %285, 255, !dbg !971
  br i1 %286, label %287, label %308, !dbg !972

287:                                              ; preds = %284
  %288 = load i32, ptr %14, align 4, !dbg !973
  %289 = sext i32 %288 to i64, !dbg !976
  %290 = getelementptr inbounds [257 x i32], ptr %8, i64 0, i64 %289, !dbg !976
  %291 = load i32, ptr %290, align 4, !dbg !976
  %292 = load i32, ptr %13, align 4, !dbg !977
  %293 = icmp eq i32 %291, %292, !dbg !978
  br i1 %293, label %294, label %304, !dbg !978

294:                                              ; preds = %287
  %295 = load i32, ptr %14, align 4, !dbg !979
  %296 = trunc i32 %295 to i8, !dbg !981
  %297 = load ptr, ptr %5, align 8, !dbg !982
  %298 = getelementptr inbounds nuw %struct.JHUFF_TBL, ptr %297, i32 0, i32 1, !dbg !983
  %299 = load i32, ptr %12, align 4, !dbg !984
  %300 = sext i32 %299 to i64, !dbg !982
  %301 = getelementptr inbounds [256 x i8], ptr %298, i64 0, i64 %300, !dbg !982
  store i8 %296, ptr %301, align 1, !dbg !985
  %302 = load i32, ptr %12, align 4, !dbg !986
  %303 = add nsw i32 %302, 1, !dbg !986
  store i32 %303, ptr %12, align 4, !dbg !986
  br label %304, !dbg !987

304:                                              ; preds = %294, %287
  br label %305, !dbg !988

305:                                              ; preds = %304
  %306 = load i32, ptr %14, align 4, !dbg !989
  %307 = add nsw i32 %306, 1, !dbg !989
  store i32 %307, ptr %14, align 4, !dbg !989
  br label %284, !dbg !990, !llvm.loop !991

308:                                              ; preds = %284
  br label %309, !dbg !993

309:                                              ; preds = %308
  %310 = load i32, ptr %13, align 4, !dbg !994
  %311 = add nsw i32 %310, 1, !dbg !994
  store i32 %311, ptr %13, align 4, !dbg !994
  br label %280, !dbg !995, !llvm.loop !996

312:                                              ; preds = %280
  %313 = load ptr, ptr %5, align 8, !dbg !998
  %314 = getelementptr inbounds nuw %struct.JHUFF_TBL, ptr %313, i32 0, i32 2, !dbg !999
  store i32 0, ptr %314, align 4, !dbg !1000
  ret void, !dbg !1001
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @jinit_huff_encoder(ptr noundef %0) #0 !dbg !1002 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !1003, !DIExpression(), !1004)
    #dbg_declare(ptr %3, !1005, !DIExpression(), !1006)
    #dbg_declare(ptr %4, !1007, !DIExpression(), !1008)
  %5 = load ptr, ptr %2, align 8, !dbg !1009
  %6 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %5, i32 0, i32 1, !dbg !1010
  %7 = load ptr, ptr %6, align 8, !dbg !1010
  %8 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %7, i32 0, i32 0, !dbg !1011
  %9 = load ptr, ptr %8, align 8, !dbg !1011
  %10 = load ptr, ptr %2, align 8, !dbg !1012
  %11 = call ptr %9(ptr noundef %10, i32 noundef 1, i64 noundef 192), !dbg !1013
  store ptr %11, ptr %3, align 8, !dbg !1014
  %12 = load ptr, ptr %3, align 8, !dbg !1015
  %13 = load ptr, ptr %2, align 8, !dbg !1016
  %14 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %13, i32 0, i32 59, !dbg !1017
  store ptr %12, ptr %14, align 8, !dbg !1018
  %15 = load ptr, ptr %3, align 8, !dbg !1019
  %16 = getelementptr inbounds nuw %struct.huff_entropy_encoder, ptr %15, i32 0, i32 0, !dbg !1020
  %17 = getelementptr inbounds nuw %struct.jpeg_entropy_encoder, ptr %16, i32 0, i32 0, !dbg !1021
  store ptr @start_pass_huff, ptr %17, align 8, !dbg !1022
  store i32 0, ptr %4, align 4, !dbg !1023
  br label %18, !dbg !1025

18:                                               ; preds = %42, %1
  %19 = load i32, ptr %4, align 4, !dbg !1026
  %20 = icmp slt i32 %19, 4, !dbg !1028
  br i1 %20, label %21, label %45, !dbg !1029

21:                                               ; preds = %18
  %22 = load ptr, ptr %3, align 8, !dbg !1030
  %23 = getelementptr inbounds nuw %struct.huff_entropy_encoder, ptr %22, i32 0, i32 5, !dbg !1032
  %24 = load i32, ptr %4, align 4, !dbg !1033
  %25 = sext i32 %24 to i64, !dbg !1030
  %26 = getelementptr inbounds [4 x ptr], ptr %23, i64 0, i64 %25, !dbg !1030
  store ptr null, ptr %26, align 8, !dbg !1034
  %27 = load ptr, ptr %3, align 8, !dbg !1035
  %28 = getelementptr inbounds nuw %struct.huff_entropy_encoder, ptr %27, i32 0, i32 4, !dbg !1036
  %29 = load i32, ptr %4, align 4, !dbg !1037
  %30 = sext i32 %29 to i64, !dbg !1035
  %31 = getelementptr inbounds [4 x ptr], ptr %28, i64 0, i64 %30, !dbg !1035
  store ptr null, ptr %31, align 8, !dbg !1038
  %32 = load ptr, ptr %3, align 8, !dbg !1039
  %33 = getelementptr inbounds nuw %struct.huff_entropy_encoder, ptr %32, i32 0, i32 7, !dbg !1040
  %34 = load i32, ptr %4, align 4, !dbg !1041
  %35 = sext i32 %34 to i64, !dbg !1039
  %36 = getelementptr inbounds [4 x ptr], ptr %33, i64 0, i64 %35, !dbg !1039
  store ptr null, ptr %36, align 8, !dbg !1042
  %37 = load ptr, ptr %3, align 8, !dbg !1043
  %38 = getelementptr inbounds nuw %struct.huff_entropy_encoder, ptr %37, i32 0, i32 6, !dbg !1044
  %39 = load i32, ptr %4, align 4, !dbg !1045
  %40 = sext i32 %39 to i64, !dbg !1043
  %41 = getelementptr inbounds [4 x ptr], ptr %38, i64 0, i64 %40, !dbg !1043
  store ptr null, ptr %41, align 8, !dbg !1046
  br label %42, !dbg !1047

42:                                               ; preds = %21
  %43 = load i32, ptr %4, align 4, !dbg !1048
  %44 = add nsw i32 %43, 1, !dbg !1048
  store i32 %44, ptr %4, align 4, !dbg !1048
  br label %18, !dbg !1049, !llvm.loop !1050

45:                                               ; preds = %18
  ret void, !dbg !1052
}

; Function Attrs: noinline nounwind uwtable
define internal void @start_pass_huff(ptr noundef %0, i32 noundef %1) #0 !dbg !1053 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !1054, !DIExpression(), !1055)
  store i32 %1, ptr %4, align 4
    #dbg_declare(ptr %4, !1056, !DIExpression(), !1057)
    #dbg_declare(ptr %5, !1058, !DIExpression(), !1059)
  %10 = load ptr, ptr %3, align 8, !dbg !1060
  %11 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %10, i32 0, i32 59, !dbg !1061
  %12 = load ptr, ptr %11, align 8, !dbg !1061
  store ptr %12, ptr %5, align 8, !dbg !1059
    #dbg_declare(ptr %6, !1062, !DIExpression(), !1063)
    #dbg_declare(ptr %7, !1064, !DIExpression(), !1065)
    #dbg_declare(ptr %8, !1066, !DIExpression(), !1067)
    #dbg_declare(ptr %9, !1068, !DIExpression(), !1069)
  %13 = load i32, ptr %4, align 4, !dbg !1070
  %14 = icmp ne i32 %13, 0, !dbg !1070
  br i1 %14, label %15, label %22, !dbg !1070

15:                                               ; preds = %2
  %16 = load ptr, ptr %5, align 8, !dbg !1072
  %17 = getelementptr inbounds nuw %struct.huff_entropy_encoder, ptr %16, i32 0, i32 0, !dbg !1074
  %18 = getelementptr inbounds nuw %struct.jpeg_entropy_encoder, ptr %17, i32 0, i32 1, !dbg !1075
  store ptr @encode_mcu_gather, ptr %18, align 8, !dbg !1076
  %19 = load ptr, ptr %5, align 8, !dbg !1077
  %20 = getelementptr inbounds nuw %struct.huff_entropy_encoder, ptr %19, i32 0, i32 0, !dbg !1078
  %21 = getelementptr inbounds nuw %struct.jpeg_entropy_encoder, ptr %20, i32 0, i32 2, !dbg !1079
  store ptr @finish_pass_gather, ptr %21, align 8, !dbg !1080
  br label %29, !dbg !1081

22:                                               ; preds = %2
  %23 = load ptr, ptr %5, align 8, !dbg !1082
  %24 = getelementptr inbounds nuw %struct.huff_entropy_encoder, ptr %23, i32 0, i32 0, !dbg !1084
  %25 = getelementptr inbounds nuw %struct.jpeg_entropy_encoder, ptr %24, i32 0, i32 1, !dbg !1085
  store ptr @encode_mcu_huff, ptr %25, align 8, !dbg !1086
  %26 = load ptr, ptr %5, align 8, !dbg !1087
  %27 = getelementptr inbounds nuw %struct.huff_entropy_encoder, ptr %26, i32 0, i32 0, !dbg !1088
  %28 = getelementptr inbounds nuw %struct.jpeg_entropy_encoder, ptr %27, i32 0, i32 2, !dbg !1089
  store ptr @finish_pass_huff, ptr %28, align 8, !dbg !1090
  br label %29

29:                                               ; preds = %22, %15
  store i32 0, ptr %6, align 4, !dbg !1091
  br label %30, !dbg !1093

30:                                               ; preds = %206, %29
  %31 = load i32, ptr %6, align 4, !dbg !1094
  %32 = load ptr, ptr %3, align 8, !dbg !1096
  %33 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %32, i32 0, i32 41, !dbg !1097
  %34 = load i32, ptr %33, align 4, !dbg !1097
  %35 = icmp slt i32 %31, %34, !dbg !1098
  br i1 %35, label %36, label %209, !dbg !1099

36:                                               ; preds = %30
  %37 = load ptr, ptr %3, align 8, !dbg !1100
  %38 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %37, i32 0, i32 42, !dbg !1102
  %39 = load i32, ptr %6, align 4, !dbg !1103
  %40 = sext i32 %39 to i64, !dbg !1100
  %41 = getelementptr inbounds [4 x ptr], ptr %38, i64 0, i64 %40, !dbg !1100
  %42 = load ptr, ptr %41, align 8, !dbg !1100
  store ptr %42, ptr %9, align 8, !dbg !1104
  %43 = load ptr, ptr %9, align 8, !dbg !1105
  %44 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %43, i32 0, i32 5, !dbg !1106
  %45 = load i32, ptr %44, align 4, !dbg !1106
  store i32 %45, ptr %7, align 4, !dbg !1107
  %46 = load ptr, ptr %9, align 8, !dbg !1108
  %47 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %46, i32 0, i32 6, !dbg !1109
  %48 = load i32, ptr %47, align 8, !dbg !1109
  store i32 %48, ptr %8, align 4, !dbg !1110
  %49 = load i32, ptr %7, align 4, !dbg !1111
  %50 = icmp slt i32 %49, 0, !dbg !1113
  br i1 %50, label %65, label %51, !dbg !1114

51:                                               ; preds = %36
  %52 = load i32, ptr %7, align 4, !dbg !1115
  %53 = icmp sge i32 %52, 4, !dbg !1116
  br i1 %53, label %65, label %54, !dbg !1117

54:                                               ; preds = %51
  %55 = load ptr, ptr %3, align 8, !dbg !1118
  %56 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %55, i32 0, i32 16, !dbg !1119
  %57 = load i32, ptr %7, align 4, !dbg !1120
  %58 = sext i32 %57 to i64, !dbg !1118
  %59 = getelementptr inbounds [4 x ptr], ptr %56, i64 0, i64 %58, !dbg !1118
  %60 = load ptr, ptr %59, align 8, !dbg !1118
  %61 = icmp eq ptr %60, null, !dbg !1121
  br i1 %61, label %62, label %82, !dbg !1122

62:                                               ; preds = %54
  %63 = load i32, ptr %4, align 4, !dbg !1123
  %64 = icmp ne i32 %63, 0, !dbg !1123
  br i1 %64, label %82, label %65, !dbg !1117

65:                                               ; preds = %62, %51, %36
  %66 = load ptr, ptr %3, align 8, !dbg !1124
  %67 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %66, i32 0, i32 0, !dbg !1124
  %68 = load ptr, ptr %67, align 8, !dbg !1124
  %69 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %68, i32 0, i32 5, !dbg !1124
  store i32 49, ptr %69, align 8, !dbg !1124
  %70 = load i32, ptr %7, align 4, !dbg !1124
  %71 = load ptr, ptr %3, align 8, !dbg !1124
  %72 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %71, i32 0, i32 0, !dbg !1124
  %73 = load ptr, ptr %72, align 8, !dbg !1124
  %74 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %73, i32 0, i32 6, !dbg !1124
  %75 = getelementptr inbounds [8 x i32], ptr %74, i64 0, i64 0, !dbg !1124
  store i32 %70, ptr %75, align 4, !dbg !1124
  %76 = load ptr, ptr %3, align 8, !dbg !1124
  %77 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %76, i32 0, i32 0, !dbg !1124
  %78 = load ptr, ptr %77, align 8, !dbg !1124
  %79 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %78, i32 0, i32 0, !dbg !1124
  %80 = load ptr, ptr %79, align 8, !dbg !1124
  %81 = load ptr, ptr %3, align 8, !dbg !1124
  call void %80(ptr noundef %81), !dbg !1124
  br label %82, !dbg !1124

82:                                               ; preds = %65, %62, %54
  %83 = load i32, ptr %8, align 4, !dbg !1125
  %84 = icmp slt i32 %83, 0, !dbg !1127
  br i1 %84, label %99, label %85, !dbg !1128

85:                                               ; preds = %82
  %86 = load i32, ptr %8, align 4, !dbg !1129
  %87 = icmp sge i32 %86, 4, !dbg !1130
  br i1 %87, label %99, label %88, !dbg !1131

88:                                               ; preds = %85
  %89 = load ptr, ptr %3, align 8, !dbg !1132
  %90 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %89, i32 0, i32 17, !dbg !1133
  %91 = load i32, ptr %8, align 4, !dbg !1134
  %92 = sext i32 %91 to i64, !dbg !1132
  %93 = getelementptr inbounds [4 x ptr], ptr %90, i64 0, i64 %92, !dbg !1132
  %94 = load ptr, ptr %93, align 8, !dbg !1132
  %95 = icmp eq ptr %94, null, !dbg !1135
  br i1 %95, label %96, label %116, !dbg !1136

96:                                               ; preds = %88
  %97 = load i32, ptr %4, align 4, !dbg !1137
  %98 = icmp ne i32 %97, 0, !dbg !1137
  br i1 %98, label %116, label %99, !dbg !1131

99:                                               ; preds = %96, %85, %82
  %100 = load ptr, ptr %3, align 8, !dbg !1138
  %101 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %100, i32 0, i32 0, !dbg !1138
  %102 = load ptr, ptr %101, align 8, !dbg !1138
  %103 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %102, i32 0, i32 5, !dbg !1138
  store i32 49, ptr %103, align 8, !dbg !1138
  %104 = load i32, ptr %8, align 4, !dbg !1138
  %105 = load ptr, ptr %3, align 8, !dbg !1138
  %106 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %105, i32 0, i32 0, !dbg !1138
  %107 = load ptr, ptr %106, align 8, !dbg !1138
  %108 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %107, i32 0, i32 6, !dbg !1138
  %109 = getelementptr inbounds [8 x i32], ptr %108, i64 0, i64 0, !dbg !1138
  store i32 %104, ptr %109, align 4, !dbg !1138
  %110 = load ptr, ptr %3, align 8, !dbg !1138
  %111 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %110, i32 0, i32 0, !dbg !1138
  %112 = load ptr, ptr %111, align 8, !dbg !1138
  %113 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %112, i32 0, i32 0, !dbg !1138
  %114 = load ptr, ptr %113, align 8, !dbg !1138
  %115 = load ptr, ptr %3, align 8, !dbg !1138
  call void %114(ptr noundef %115), !dbg !1138
  br label %116, !dbg !1138

116:                                              ; preds = %99, %96, %88
  %117 = load i32, ptr %4, align 4, !dbg !1139
  %118 = icmp ne i32 %117, 0, !dbg !1139
  br i1 %118, label %119, label %174, !dbg !1139

119:                                              ; preds = %116
  %120 = load ptr, ptr %5, align 8, !dbg !1141
  %121 = getelementptr inbounds nuw %struct.huff_entropy_encoder, ptr %120, i32 0, i32 6, !dbg !1144
  %122 = load i32, ptr %7, align 4, !dbg !1145
  %123 = sext i32 %122 to i64, !dbg !1141
  %124 = getelementptr inbounds [4 x ptr], ptr %121, i64 0, i64 %123, !dbg !1141
  %125 = load ptr, ptr %124, align 8, !dbg !1141
  %126 = icmp eq ptr %125, null, !dbg !1146
  br i1 %126, label %127, label %140, !dbg !1146

127:                                              ; preds = %119
  %128 = load ptr, ptr %3, align 8, !dbg !1147
  %129 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %128, i32 0, i32 1, !dbg !1148
  %130 = load ptr, ptr %129, align 8, !dbg !1148
  %131 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %130, i32 0, i32 0, !dbg !1149
  %132 = load ptr, ptr %131, align 8, !dbg !1149
  %133 = load ptr, ptr %3, align 8, !dbg !1150
  %134 = call ptr %132(ptr noundef %133, i32 noundef 1, i64 noundef 2056), !dbg !1151
  %135 = load ptr, ptr %5, align 8, !dbg !1152
  %136 = getelementptr inbounds nuw %struct.huff_entropy_encoder, ptr %135, i32 0, i32 6, !dbg !1153
  %137 = load i32, ptr %7, align 4, !dbg !1154
  %138 = sext i32 %137 to i64, !dbg !1152
  %139 = getelementptr inbounds [4 x ptr], ptr %136, i64 0, i64 %138, !dbg !1152
  store ptr %134, ptr %139, align 8, !dbg !1155
  br label %140, !dbg !1152

140:                                              ; preds = %127, %119
  %141 = load ptr, ptr %5, align 8, !dbg !1156
  %142 = getelementptr inbounds nuw %struct.huff_entropy_encoder, ptr %141, i32 0, i32 6, !dbg !1156
  %143 = load i32, ptr %7, align 4, !dbg !1156
  %144 = sext i32 %143 to i64, !dbg !1156
  %145 = getelementptr inbounds [4 x ptr], ptr %142, i64 0, i64 %144, !dbg !1156
  %146 = load ptr, ptr %145, align 8, !dbg !1156
  call void @llvm.memset.p0.i64(ptr align 1 %146, i8 0, i64 2056, i1 false), !dbg !1156
  %147 = load ptr, ptr %5, align 8, !dbg !1157
  %148 = getelementptr inbounds nuw %struct.huff_entropy_encoder, ptr %147, i32 0, i32 7, !dbg !1159
  %149 = load i32, ptr %8, align 4, !dbg !1160
  %150 = sext i32 %149 to i64, !dbg !1157
  %151 = getelementptr inbounds [4 x ptr], ptr %148, i64 0, i64 %150, !dbg !1157
  %152 = load ptr, ptr %151, align 8, !dbg !1157
  %153 = icmp eq ptr %152, null, !dbg !1161
  br i1 %153, label %154, label %167, !dbg !1161

154:                                              ; preds = %140
  %155 = load ptr, ptr %3, align 8, !dbg !1162
  %156 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %155, i32 0, i32 1, !dbg !1163
  %157 = load ptr, ptr %156, align 8, !dbg !1163
  %158 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %157, i32 0, i32 0, !dbg !1164
  %159 = load ptr, ptr %158, align 8, !dbg !1164
  %160 = load ptr, ptr %3, align 8, !dbg !1165
  %161 = call ptr %159(ptr noundef %160, i32 noundef 1, i64 noundef 2056), !dbg !1166
  %162 = load ptr, ptr %5, align 8, !dbg !1167
  %163 = getelementptr inbounds nuw %struct.huff_entropy_encoder, ptr %162, i32 0, i32 7, !dbg !1168
  %164 = load i32, ptr %8, align 4, !dbg !1169
  %165 = sext i32 %164 to i64, !dbg !1167
  %166 = getelementptr inbounds [4 x ptr], ptr %163, i64 0, i64 %165, !dbg !1167
  store ptr %161, ptr %166, align 8, !dbg !1170
  br label %167, !dbg !1167

167:                                              ; preds = %154, %140
  %168 = load ptr, ptr %5, align 8, !dbg !1171
  %169 = getelementptr inbounds nuw %struct.huff_entropy_encoder, ptr %168, i32 0, i32 7, !dbg !1171
  %170 = load i32, ptr %8, align 4, !dbg !1171
  %171 = sext i32 %170 to i64, !dbg !1171
  %172 = getelementptr inbounds [4 x ptr], ptr %169, i64 0, i64 %171, !dbg !1171
  %173 = load ptr, ptr %172, align 8, !dbg !1171
  call void @llvm.memset.p0.i64(ptr align 1 %173, i8 0, i64 2056, i1 false), !dbg !1171
  br label %199, !dbg !1172

174:                                              ; preds = %116
  %175 = load ptr, ptr %3, align 8, !dbg !1173
  %176 = load ptr, ptr %3, align 8, !dbg !1175
  %177 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %176, i32 0, i32 16, !dbg !1176
  %178 = load i32, ptr %7, align 4, !dbg !1177
  %179 = sext i32 %178 to i64, !dbg !1175
  %180 = getelementptr inbounds [4 x ptr], ptr %177, i64 0, i64 %179, !dbg !1175
  %181 = load ptr, ptr %180, align 8, !dbg !1175
  %182 = load ptr, ptr %5, align 8, !dbg !1178
  %183 = getelementptr inbounds nuw %struct.huff_entropy_encoder, ptr %182, i32 0, i32 4, !dbg !1179
  %184 = load i32, ptr %7, align 4, !dbg !1180
  %185 = sext i32 %184 to i64, !dbg !1178
  %186 = getelementptr inbounds [4 x ptr], ptr %183, i64 0, i64 %185, !dbg !1178
  call void @jpeg_make_c_derived_tbl(ptr noundef %175, ptr noundef %181, ptr noundef %186), !dbg !1181
  %187 = load ptr, ptr %3, align 8, !dbg !1182
  %188 = load ptr, ptr %3, align 8, !dbg !1183
  %189 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %188, i32 0, i32 17, !dbg !1184
  %190 = load i32, ptr %8, align 4, !dbg !1185
  %191 = sext i32 %190 to i64, !dbg !1183
  %192 = getelementptr inbounds [4 x ptr], ptr %189, i64 0, i64 %191, !dbg !1183
  %193 = load ptr, ptr %192, align 8, !dbg !1183
  %194 = load ptr, ptr %5, align 8, !dbg !1186
  %195 = getelementptr inbounds nuw %struct.huff_entropy_encoder, ptr %194, i32 0, i32 5, !dbg !1187
  %196 = load i32, ptr %8, align 4, !dbg !1188
  %197 = sext i32 %196 to i64, !dbg !1186
  %198 = getelementptr inbounds [4 x ptr], ptr %195, i64 0, i64 %197, !dbg !1186
  call void @jpeg_make_c_derived_tbl(ptr noundef %187, ptr noundef %193, ptr noundef %198), !dbg !1189
  br label %199

199:                                              ; preds = %174, %167
  %200 = load ptr, ptr %5, align 8, !dbg !1190
  %201 = getelementptr inbounds nuw %struct.huff_entropy_encoder, ptr %200, i32 0, i32 1, !dbg !1191
  %202 = getelementptr inbounds nuw %struct.savable_state, ptr %201, i32 0, i32 2, !dbg !1192
  %203 = load i32, ptr %6, align 4, !dbg !1193
  %204 = sext i32 %203 to i64, !dbg !1190
  %205 = getelementptr inbounds [4 x i32], ptr %202, i64 0, i64 %204, !dbg !1190
  store i32 0, ptr %205, align 4, !dbg !1194
  br label %206, !dbg !1195

206:                                              ; preds = %199
  %207 = load i32, ptr %6, align 4, !dbg !1196
  %208 = add nsw i32 %207, 1, !dbg !1196
  store i32 %208, ptr %6, align 4, !dbg !1196
  br label %30, !dbg !1197, !llvm.loop !1198

209:                                              ; preds = %30
  %210 = load ptr, ptr %5, align 8, !dbg !1200
  %211 = getelementptr inbounds nuw %struct.huff_entropy_encoder, ptr %210, i32 0, i32 1, !dbg !1201
  %212 = getelementptr inbounds nuw %struct.savable_state, ptr %211, i32 0, i32 0, !dbg !1202
  store i64 0, ptr %212, align 8, !dbg !1203
  %213 = load ptr, ptr %5, align 8, !dbg !1204
  %214 = getelementptr inbounds nuw %struct.huff_entropy_encoder, ptr %213, i32 0, i32 1, !dbg !1205
  %215 = getelementptr inbounds nuw %struct.savable_state, ptr %214, i32 0, i32 1, !dbg !1206
  store i32 0, ptr %215, align 8, !dbg !1207
  %216 = load ptr, ptr %3, align 8, !dbg !1208
  %217 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %216, i32 0, i32 29, !dbg !1209
  %218 = load i32, ptr %217, align 8, !dbg !1209
  %219 = load ptr, ptr %5, align 8, !dbg !1210
  %220 = getelementptr inbounds nuw %struct.huff_entropy_encoder, ptr %219, i32 0, i32 2, !dbg !1211
  store i32 %218, ptr %220, align 8, !dbg !1212
  %221 = load ptr, ptr %5, align 8, !dbg !1213
  %222 = getelementptr inbounds nuw %struct.huff_entropy_encoder, ptr %221, i32 0, i32 3, !dbg !1214
  store i32 0, ptr %222, align 4, !dbg !1215
  ret void, !dbg !1216
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @encode_mcu_gather(ptr noundef %0, ptr noundef %1) #0 !dbg !1217 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !1218, !DIExpression(), !1219)
  store ptr %1, ptr %4, align 8
    #dbg_declare(ptr %4, !1220, !DIExpression(), !1221)
    #dbg_declare(ptr %5, !1222, !DIExpression(), !1223)
  %9 = load ptr, ptr %3, align 8, !dbg !1224
  %10 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %9, i32 0, i32 59, !dbg !1225
  %11 = load ptr, ptr %10, align 8, !dbg !1225
  store ptr %11, ptr %5, align 8, !dbg !1223
    #dbg_declare(ptr %6, !1226, !DIExpression(), !1227)
    #dbg_declare(ptr %7, !1228, !DIExpression(), !1229)
    #dbg_declare(ptr %8, !1230, !DIExpression(), !1231)
  %12 = load ptr, ptr %3, align 8, !dbg !1232
  %13 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %12, i32 0, i32 29, !dbg !1234
  %14 = load i32, ptr %13, align 8, !dbg !1234
  %15 = icmp ne i32 %14, 0, !dbg !1232
  br i1 %15, label %16, label %49, !dbg !1232

16:                                               ; preds = %2
  %17 = load ptr, ptr %5, align 8, !dbg !1235
  %18 = getelementptr inbounds nuw %struct.huff_entropy_encoder, ptr %17, i32 0, i32 2, !dbg !1238
  %19 = load i32, ptr %18, align 8, !dbg !1238
  %20 = icmp eq i32 %19, 0, !dbg !1239
  br i1 %20, label %21, label %44, !dbg !1239

21:                                               ; preds = %16
  store i32 0, ptr %7, align 4, !dbg !1240
  br label %22, !dbg !1243

22:                                               ; preds = %35, %21
  %23 = load i32, ptr %7, align 4, !dbg !1244
  %24 = load ptr, ptr %3, align 8, !dbg !1246
  %25 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %24, i32 0, i32 41, !dbg !1247
  %26 = load i32, ptr %25, align 4, !dbg !1247
  %27 = icmp slt i32 %23, %26, !dbg !1248
  br i1 %27, label %28, label %38, !dbg !1249

28:                                               ; preds = %22
  %29 = load ptr, ptr %5, align 8, !dbg !1250
  %30 = getelementptr inbounds nuw %struct.huff_entropy_encoder, ptr %29, i32 0, i32 1, !dbg !1251
  %31 = getelementptr inbounds nuw %struct.savable_state, ptr %30, i32 0, i32 2, !dbg !1252
  %32 = load i32, ptr %7, align 4, !dbg !1253
  %33 = sext i32 %32 to i64, !dbg !1250
  %34 = getelementptr inbounds [4 x i32], ptr %31, i64 0, i64 %33, !dbg !1250
  store i32 0, ptr %34, align 4, !dbg !1254
  br label %35, !dbg !1250

35:                                               ; preds = %28
  %36 = load i32, ptr %7, align 4, !dbg !1255
  %37 = add nsw i32 %36, 1, !dbg !1255
  store i32 %37, ptr %7, align 4, !dbg !1255
  br label %22, !dbg !1256, !llvm.loop !1257

38:                                               ; preds = %22
  %39 = load ptr, ptr %3, align 8, !dbg !1259
  %40 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %39, i32 0, i32 29, !dbg !1260
  %41 = load i32, ptr %40, align 8, !dbg !1260
  %42 = load ptr, ptr %5, align 8, !dbg !1261
  %43 = getelementptr inbounds nuw %struct.huff_entropy_encoder, ptr %42, i32 0, i32 2, !dbg !1262
  store i32 %41, ptr %43, align 8, !dbg !1263
  br label %44, !dbg !1264

44:                                               ; preds = %38, %16
  %45 = load ptr, ptr %5, align 8, !dbg !1265
  %46 = getelementptr inbounds nuw %struct.huff_entropy_encoder, ptr %45, i32 0, i32 2, !dbg !1266
  %47 = load i32, ptr %46, align 8, !dbg !1267
  %48 = add i32 %47, -1, !dbg !1267
  store i32 %48, ptr %46, align 8, !dbg !1267
  br label %49, !dbg !1268

49:                                               ; preds = %44, %2
  store i32 0, ptr %6, align 4, !dbg !1269
  br label %50, !dbg !1271

50:                                               ; preds = %114, %49
  %51 = load i32, ptr %6, align 4, !dbg !1272
  %52 = load ptr, ptr %3, align 8, !dbg !1274
  %53 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %52, i32 0, i32 45, !dbg !1275
  %54 = load i32, ptr %53, align 8, !dbg !1275
  %55 = icmp slt i32 %51, %54, !dbg !1276
  br i1 %55, label %56, label %117, !dbg !1277

56:                                               ; preds = %50
  %57 = load ptr, ptr %3, align 8, !dbg !1278
  %58 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %57, i32 0, i32 46, !dbg !1280
  %59 = load i32, ptr %6, align 4, !dbg !1281
  %60 = sext i32 %59 to i64, !dbg !1278
  %61 = getelementptr inbounds [10 x i32], ptr %58, i64 0, i64 %60, !dbg !1278
  %62 = load i32, ptr %61, align 4, !dbg !1278
  store i32 %62, ptr %7, align 4, !dbg !1282
  %63 = load ptr, ptr %3, align 8, !dbg !1283
  %64 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %63, i32 0, i32 42, !dbg !1284
  %65 = load i32, ptr %7, align 4, !dbg !1285
  %66 = sext i32 %65 to i64, !dbg !1283
  %67 = getelementptr inbounds [4 x ptr], ptr %64, i64 0, i64 %66, !dbg !1283
  %68 = load ptr, ptr %67, align 8, !dbg !1283
  store ptr %68, ptr %8, align 8, !dbg !1286
  %69 = load ptr, ptr %4, align 8, !dbg !1287
  %70 = load i32, ptr %6, align 4, !dbg !1288
  %71 = sext i32 %70 to i64, !dbg !1287
  %72 = getelementptr inbounds ptr, ptr %69, i64 %71, !dbg !1287
  %73 = load ptr, ptr %72, align 8, !dbg !1287
  %74 = getelementptr inbounds [64 x i16], ptr %73, i64 0, !dbg !1287
  %75 = getelementptr inbounds [64 x i16], ptr %74, i64 0, i64 0, !dbg !1287
  %76 = load ptr, ptr %5, align 8, !dbg !1289
  %77 = getelementptr inbounds nuw %struct.huff_entropy_encoder, ptr %76, i32 0, i32 1, !dbg !1290
  %78 = getelementptr inbounds nuw %struct.savable_state, ptr %77, i32 0, i32 2, !dbg !1291
  %79 = load i32, ptr %7, align 4, !dbg !1292
  %80 = sext i32 %79 to i64, !dbg !1289
  %81 = getelementptr inbounds [4 x i32], ptr %78, i64 0, i64 %80, !dbg !1289
  %82 = load i32, ptr %81, align 4, !dbg !1289
  %83 = load ptr, ptr %5, align 8, !dbg !1293
  %84 = getelementptr inbounds nuw %struct.huff_entropy_encoder, ptr %83, i32 0, i32 6, !dbg !1294
  %85 = load ptr, ptr %8, align 8, !dbg !1295
  %86 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %85, i32 0, i32 5, !dbg !1296
  %87 = load i32, ptr %86, align 4, !dbg !1296
  %88 = sext i32 %87 to i64, !dbg !1293
  %89 = getelementptr inbounds [4 x ptr], ptr %84, i64 0, i64 %88, !dbg !1293
  %90 = load ptr, ptr %89, align 8, !dbg !1293
  %91 = load ptr, ptr %5, align 8, !dbg !1297
  %92 = getelementptr inbounds nuw %struct.huff_entropy_encoder, ptr %91, i32 0, i32 7, !dbg !1298
  %93 = load ptr, ptr %8, align 8, !dbg !1299
  %94 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %93, i32 0, i32 6, !dbg !1300
  %95 = load i32, ptr %94, align 8, !dbg !1300
  %96 = sext i32 %95 to i64, !dbg !1297
  %97 = getelementptr inbounds [4 x ptr], ptr %92, i64 0, i64 %96, !dbg !1297
  %98 = load ptr, ptr %97, align 8, !dbg !1297
  call void @htest_one_block(ptr noundef %75, i32 noundef %82, ptr noundef %90, ptr noundef %98), !dbg !1301
  %99 = load ptr, ptr %4, align 8, !dbg !1302
  %100 = load i32, ptr %6, align 4, !dbg !1303
  %101 = sext i32 %100 to i64, !dbg !1302
  %102 = getelementptr inbounds ptr, ptr %99, i64 %101, !dbg !1302
  %103 = load ptr, ptr %102, align 8, !dbg !1302
  %104 = getelementptr inbounds [64 x i16], ptr %103, i64 0, !dbg !1302
  %105 = getelementptr inbounds [64 x i16], ptr %104, i64 0, i64 0, !dbg !1302
  %106 = load i16, ptr %105, align 2, !dbg !1302
  %107 = sext i16 %106 to i32, !dbg !1302
  %108 = load ptr, ptr %5, align 8, !dbg !1304
  %109 = getelementptr inbounds nuw %struct.huff_entropy_encoder, ptr %108, i32 0, i32 1, !dbg !1305
  %110 = getelementptr inbounds nuw %struct.savable_state, ptr %109, i32 0, i32 2, !dbg !1306
  %111 = load i32, ptr %7, align 4, !dbg !1307
  %112 = sext i32 %111 to i64, !dbg !1304
  %113 = getelementptr inbounds [4 x i32], ptr %110, i64 0, i64 %112, !dbg !1304
  store i32 %107, ptr %113, align 4, !dbg !1308
  br label %114, !dbg !1309

114:                                              ; preds = %56
  %115 = load i32, ptr %6, align 4, !dbg !1310
  %116 = add nsw i32 %115, 1, !dbg !1310
  store i32 %116, ptr %6, align 4, !dbg !1310
  br label %50, !dbg !1311, !llvm.loop !1312

117:                                              ; preds = %50
  ret i32 1, !dbg !1314
}

; Function Attrs: noinline nounwind uwtable
define internal void @finish_pass_gather(ptr noundef %0) #0 !dbg !1315 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca [4 x i32], align 16
  %10 = alloca [4 x i32], align 16
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !1316, !DIExpression(), !1317)
    #dbg_declare(ptr %3, !1318, !DIExpression(), !1319)
  %11 = load ptr, ptr %2, align 8, !dbg !1320
  %12 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %11, i32 0, i32 59, !dbg !1321
  %13 = load ptr, ptr %12, align 8, !dbg !1321
  store ptr %13, ptr %3, align 8, !dbg !1319
    #dbg_declare(ptr %4, !1322, !DIExpression(), !1323)
    #dbg_declare(ptr %5, !1324, !DIExpression(), !1325)
    #dbg_declare(ptr %6, !1326, !DIExpression(), !1327)
    #dbg_declare(ptr %7, !1328, !DIExpression(), !1329)
    #dbg_declare(ptr %8, !1330, !DIExpression(), !1332)
    #dbg_declare(ptr %9, !1333, !DIExpression(), !1335)
    #dbg_declare(ptr %10, !1336, !DIExpression(), !1337)
  %14 = getelementptr inbounds [4 x i32], ptr %9, i64 0, i64 0, !dbg !1338
  call void @llvm.memset.p0.i64(ptr align 16 %14, i8 0, i64 16, i1 false), !dbg !1338
  %15 = getelementptr inbounds [4 x i32], ptr %10, i64 0, i64 0, !dbg !1339
  call void @llvm.memset.p0.i64(ptr align 16 %15, i8 0, i64 16, i1 false), !dbg !1339
  store i32 0, ptr %4, align 4, !dbg !1340
  br label %16, !dbg !1342

16:                                               ; preds = %99, %1
  %17 = load i32, ptr %4, align 4, !dbg !1343
  %18 = load ptr, ptr %2, align 8, !dbg !1345
  %19 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %18, i32 0, i32 41, !dbg !1346
  %20 = load i32, ptr %19, align 4, !dbg !1346
  %21 = icmp slt i32 %17, %20, !dbg !1347
  br i1 %21, label %22, label %102, !dbg !1348

22:                                               ; preds = %16
  %23 = load ptr, ptr %2, align 8, !dbg !1349
  %24 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %23, i32 0, i32 42, !dbg !1351
  %25 = load i32, ptr %4, align 4, !dbg !1352
  %26 = sext i32 %25 to i64, !dbg !1349
  %27 = getelementptr inbounds [4 x ptr], ptr %24, i64 0, i64 %26, !dbg !1349
  %28 = load ptr, ptr %27, align 8, !dbg !1349
  store ptr %28, ptr %7, align 8, !dbg !1353
  %29 = load ptr, ptr %7, align 8, !dbg !1354
  %30 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %29, i32 0, i32 5, !dbg !1355
  %31 = load i32, ptr %30, align 4, !dbg !1355
  store i32 %31, ptr %5, align 4, !dbg !1356
  %32 = load ptr, ptr %7, align 8, !dbg !1357
  %33 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %32, i32 0, i32 6, !dbg !1358
  %34 = load i32, ptr %33, align 8, !dbg !1358
  store i32 %34, ptr %6, align 4, !dbg !1359
  %35 = load i32, ptr %5, align 4, !dbg !1360
  %36 = sext i32 %35 to i64, !dbg !1362
  %37 = getelementptr inbounds [4 x i32], ptr %9, i64 0, i64 %36, !dbg !1362
  %38 = load i32, ptr %37, align 4, !dbg !1362
  %39 = icmp ne i32 %38, 0, !dbg !1362
  br i1 %39, label %66, label %40, !dbg !1363

40:                                               ; preds = %22
  %41 = load ptr, ptr %2, align 8, !dbg !1364
  %42 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %41, i32 0, i32 16, !dbg !1366
  %43 = load i32, ptr %5, align 4, !dbg !1367
  %44 = sext i32 %43 to i64, !dbg !1364
  %45 = getelementptr inbounds [4 x ptr], ptr %42, i64 0, i64 %44, !dbg !1364
  store ptr %45, ptr %8, align 8, !dbg !1368
  %46 = load ptr, ptr %8, align 8, !dbg !1369
  %47 = load ptr, ptr %46, align 8, !dbg !1371
  %48 = icmp eq ptr %47, null, !dbg !1372
  br i1 %48, label %49, label %53, !dbg !1372

49:                                               ; preds = %40
  %50 = load ptr, ptr %2, align 8, !dbg !1373
  %51 = call ptr @jpeg_alloc_huff_table(ptr noundef %50), !dbg !1374
  %52 = load ptr, ptr %8, align 8, !dbg !1375
  store ptr %51, ptr %52, align 8, !dbg !1376
  br label %53, !dbg !1377

53:                                               ; preds = %49, %40
  %54 = load ptr, ptr %2, align 8, !dbg !1378
  %55 = load ptr, ptr %8, align 8, !dbg !1379
  %56 = load ptr, ptr %55, align 8, !dbg !1380
  %57 = load ptr, ptr %3, align 8, !dbg !1381
  %58 = getelementptr inbounds nuw %struct.huff_entropy_encoder, ptr %57, i32 0, i32 6, !dbg !1382
  %59 = load i32, ptr %5, align 4, !dbg !1383
  %60 = sext i32 %59 to i64, !dbg !1381
  %61 = getelementptr inbounds [4 x ptr], ptr %58, i64 0, i64 %60, !dbg !1381
  %62 = load ptr, ptr %61, align 8, !dbg !1381
  call void @jpeg_gen_optimal_table(ptr noundef %54, ptr noundef %56, ptr noundef %62), !dbg !1384
  %63 = load i32, ptr %5, align 4, !dbg !1385
  %64 = sext i32 %63 to i64, !dbg !1386
  %65 = getelementptr inbounds [4 x i32], ptr %9, i64 0, i64 %64, !dbg !1386
  store i32 1, ptr %65, align 4, !dbg !1387
  br label %66, !dbg !1388

66:                                               ; preds = %53, %22
  %67 = load i32, ptr %6, align 4, !dbg !1389
  %68 = sext i32 %67 to i64, !dbg !1391
  %69 = getelementptr inbounds [4 x i32], ptr %10, i64 0, i64 %68, !dbg !1391
  %70 = load i32, ptr %69, align 4, !dbg !1391
  %71 = icmp ne i32 %70, 0, !dbg !1391
  br i1 %71, label %98, label %72, !dbg !1392

72:                                               ; preds = %66
  %73 = load ptr, ptr %2, align 8, !dbg !1393
  %74 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %73, i32 0, i32 17, !dbg !1395
  %75 = load i32, ptr %6, align 4, !dbg !1396
  %76 = sext i32 %75 to i64, !dbg !1393
  %77 = getelementptr inbounds [4 x ptr], ptr %74, i64 0, i64 %76, !dbg !1393
  store ptr %77, ptr %8, align 8, !dbg !1397
  %78 = load ptr, ptr %8, align 8, !dbg !1398
  %79 = load ptr, ptr %78, align 8, !dbg !1400
  %80 = icmp eq ptr %79, null, !dbg !1401
  br i1 %80, label %81, label %85, !dbg !1401

81:                                               ; preds = %72
  %82 = load ptr, ptr %2, align 8, !dbg !1402
  %83 = call ptr @jpeg_alloc_huff_table(ptr noundef %82), !dbg !1403
  %84 = load ptr, ptr %8, align 8, !dbg !1404
  store ptr %83, ptr %84, align 8, !dbg !1405
  br label %85, !dbg !1406

85:                                               ; preds = %81, %72
  %86 = load ptr, ptr %2, align 8, !dbg !1407
  %87 = load ptr, ptr %8, align 8, !dbg !1408
  %88 = load ptr, ptr %87, align 8, !dbg !1409
  %89 = load ptr, ptr %3, align 8, !dbg !1410
  %90 = getelementptr inbounds nuw %struct.huff_entropy_encoder, ptr %89, i32 0, i32 7, !dbg !1411
  %91 = load i32, ptr %6, align 4, !dbg !1412
  %92 = sext i32 %91 to i64, !dbg !1410
  %93 = getelementptr inbounds [4 x ptr], ptr %90, i64 0, i64 %92, !dbg !1410
  %94 = load ptr, ptr %93, align 8, !dbg !1410
  call void @jpeg_gen_optimal_table(ptr noundef %86, ptr noundef %88, ptr noundef %94), !dbg !1413
  %95 = load i32, ptr %6, align 4, !dbg !1414
  %96 = sext i32 %95 to i64, !dbg !1415
  %97 = getelementptr inbounds [4 x i32], ptr %10, i64 0, i64 %96, !dbg !1415
  store i32 1, ptr %97, align 4, !dbg !1416
  br label %98, !dbg !1417

98:                                               ; preds = %85, %66
  br label %99, !dbg !1418

99:                                               ; preds = %98
  %100 = load i32, ptr %4, align 4, !dbg !1419
  %101 = add nsw i32 %100, 1, !dbg !1419
  store i32 %101, ptr %4, align 4, !dbg !1419
  br label %16, !dbg !1420, !llvm.loop !1421

102:                                              ; preds = %16
  ret void, !dbg !1423
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @encode_mcu_huff(ptr noundef %0, ptr noundef %1) #0 !dbg !1424 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %struct.working_state, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
    #dbg_declare(ptr %4, !1425, !DIExpression(), !1426)
  store ptr %1, ptr %5, align 8
    #dbg_declare(ptr %5, !1427, !DIExpression(), !1428)
    #dbg_declare(ptr %6, !1429, !DIExpression(), !1430)
  %11 = load ptr, ptr %4, align 8, !dbg !1431
  %12 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %11, i32 0, i32 59, !dbg !1432
  %13 = load ptr, ptr %12, align 8, !dbg !1432
  store ptr %13, ptr %6, align 8, !dbg !1430
    #dbg_declare(ptr %7, !1433, !DIExpression(), !1441)
    #dbg_declare(ptr %8, !1442, !DIExpression(), !1443)
    #dbg_declare(ptr %9, !1444, !DIExpression(), !1445)
    #dbg_declare(ptr %10, !1446, !DIExpression(), !1447)
  %14 = load ptr, ptr %4, align 8, !dbg !1448
  %15 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %14, i32 0, i32 5, !dbg !1449
  %16 = load ptr, ptr %15, align 8, !dbg !1449
  %17 = getelementptr inbounds nuw %struct.jpeg_destination_mgr, ptr %16, i32 0, i32 0, !dbg !1450
  %18 = load ptr, ptr %17, align 8, !dbg !1450
  %19 = getelementptr inbounds nuw %struct.working_state, ptr %7, i32 0, i32 0, !dbg !1451
  store ptr %18, ptr %19, align 8, !dbg !1452
  %20 = load ptr, ptr %4, align 8, !dbg !1453
  %21 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %20, i32 0, i32 5, !dbg !1454
  %22 = load ptr, ptr %21, align 8, !dbg !1454
  %23 = getelementptr inbounds nuw %struct.jpeg_destination_mgr, ptr %22, i32 0, i32 1, !dbg !1455
  %24 = load i64, ptr %23, align 8, !dbg !1455
  %25 = getelementptr inbounds nuw %struct.working_state, ptr %7, i32 0, i32 1, !dbg !1456
  store i64 %24, ptr %25, align 8, !dbg !1457
  %26 = getelementptr inbounds nuw %struct.working_state, ptr %7, i32 0, i32 2, !dbg !1458
  %27 = load ptr, ptr %6, align 8, !dbg !1458
  %28 = getelementptr inbounds nuw %struct.huff_entropy_encoder, ptr %27, i32 0, i32 1, !dbg !1458
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %26, ptr align 8 %28, i64 32, i1 false), !dbg !1458
  %29 = load ptr, ptr %4, align 8, !dbg !1459
  %30 = getelementptr inbounds nuw %struct.working_state, ptr %7, i32 0, i32 3, !dbg !1460
  store ptr %29, ptr %30, align 8, !dbg !1461
  %31 = load ptr, ptr %4, align 8, !dbg !1462
  %32 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %31, i32 0, i32 29, !dbg !1464
  %33 = load i32, ptr %32, align 8, !dbg !1464
  %34 = icmp ne i32 %33, 0, !dbg !1462
  br i1 %34, label %35, label %49, !dbg !1462

35:                                               ; preds = %2
  %36 = load ptr, ptr %6, align 8, !dbg !1465
  %37 = getelementptr inbounds nuw %struct.huff_entropy_encoder, ptr %36, i32 0, i32 2, !dbg !1468
  %38 = load i32, ptr %37, align 8, !dbg !1468
  %39 = icmp eq i32 %38, 0, !dbg !1469
  br i1 %39, label %40, label %48, !dbg !1469

40:                                               ; preds = %35
  %41 = load ptr, ptr %6, align 8, !dbg !1470
  %42 = getelementptr inbounds nuw %struct.huff_entropy_encoder, ptr %41, i32 0, i32 3, !dbg !1472
  %43 = load i32, ptr %42, align 4, !dbg !1472
  %44 = call i32 @emit_restart(ptr noundef %7, i32 noundef %43), !dbg !1473
  %45 = icmp ne i32 %44, 0, !dbg !1473
  br i1 %45, label %47, label %46, !dbg !1474

46:                                               ; preds = %40
  store i32 0, ptr %3, align 4, !dbg !1475
  br label %164, !dbg !1475

47:                                               ; preds = %40
  br label %48, !dbg !1476

48:                                               ; preds = %47, %35
  br label %49, !dbg !1477

49:                                               ; preds = %48, %2
  store i32 0, ptr %8, align 4, !dbg !1478
  br label %50, !dbg !1480

50:                                               ; preds = %116, %49
  %51 = load i32, ptr %8, align 4, !dbg !1481
  %52 = load ptr, ptr %4, align 8, !dbg !1483
  %53 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %52, i32 0, i32 45, !dbg !1484
  %54 = load i32, ptr %53, align 8, !dbg !1484
  %55 = icmp slt i32 %51, %54, !dbg !1485
  br i1 %55, label %56, label %119, !dbg !1486

56:                                               ; preds = %50
  %57 = load ptr, ptr %4, align 8, !dbg !1487
  %58 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %57, i32 0, i32 46, !dbg !1489
  %59 = load i32, ptr %8, align 4, !dbg !1490
  %60 = sext i32 %59 to i64, !dbg !1487
  %61 = getelementptr inbounds [10 x i32], ptr %58, i64 0, i64 %60, !dbg !1487
  %62 = load i32, ptr %61, align 4, !dbg !1487
  store i32 %62, ptr %9, align 4, !dbg !1491
  %63 = load ptr, ptr %4, align 8, !dbg !1492
  %64 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %63, i32 0, i32 42, !dbg !1493
  %65 = load i32, ptr %9, align 4, !dbg !1494
  %66 = sext i32 %65 to i64, !dbg !1492
  %67 = getelementptr inbounds [4 x ptr], ptr %64, i64 0, i64 %66, !dbg !1492
  %68 = load ptr, ptr %67, align 8, !dbg !1492
  store ptr %68, ptr %10, align 8, !dbg !1495
  %69 = load ptr, ptr %5, align 8, !dbg !1496
  %70 = load i32, ptr %8, align 4, !dbg !1498
  %71 = sext i32 %70 to i64, !dbg !1496
  %72 = getelementptr inbounds ptr, ptr %69, i64 %71, !dbg !1496
  %73 = load ptr, ptr %72, align 8, !dbg !1496
  %74 = getelementptr inbounds [64 x i16], ptr %73, i64 0, !dbg !1496
  %75 = getelementptr inbounds [64 x i16], ptr %74, i64 0, i64 0, !dbg !1496
  %76 = getelementptr inbounds nuw %struct.working_state, ptr %7, i32 0, i32 2, !dbg !1499
  %77 = getelementptr inbounds nuw %struct.savable_state, ptr %76, i32 0, i32 2, !dbg !1500
  %78 = load i32, ptr %9, align 4, !dbg !1501
  %79 = sext i32 %78 to i64, !dbg !1502
  %80 = getelementptr inbounds [4 x i32], ptr %77, i64 0, i64 %79, !dbg !1502
  %81 = load i32, ptr %80, align 4, !dbg !1502
  %82 = load ptr, ptr %6, align 8, !dbg !1503
  %83 = getelementptr inbounds nuw %struct.huff_entropy_encoder, ptr %82, i32 0, i32 4, !dbg !1504
  %84 = load ptr, ptr %10, align 8, !dbg !1505
  %85 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %84, i32 0, i32 5, !dbg !1506
  %86 = load i32, ptr %85, align 4, !dbg !1506
  %87 = sext i32 %86 to i64, !dbg !1503
  %88 = getelementptr inbounds [4 x ptr], ptr %83, i64 0, i64 %87, !dbg !1503
  %89 = load ptr, ptr %88, align 8, !dbg !1503
  %90 = load ptr, ptr %6, align 8, !dbg !1507
  %91 = getelementptr inbounds nuw %struct.huff_entropy_encoder, ptr %90, i32 0, i32 5, !dbg !1508
  %92 = load ptr, ptr %10, align 8, !dbg !1509
  %93 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %92, i32 0, i32 6, !dbg !1510
  %94 = load i32, ptr %93, align 8, !dbg !1510
  %95 = sext i32 %94 to i64, !dbg !1507
  %96 = getelementptr inbounds [4 x ptr], ptr %91, i64 0, i64 %95, !dbg !1507
  %97 = load ptr, ptr %96, align 8, !dbg !1507
  %98 = call i32 @encode_one_block(ptr noundef %7, ptr noundef %75, i32 noundef %81, ptr noundef %89, ptr noundef %97), !dbg !1511
  %99 = icmp ne i32 %98, 0, !dbg !1511
  br i1 %99, label %101, label %100, !dbg !1512

100:                                              ; preds = %56
  store i32 0, ptr %3, align 4, !dbg !1513
  br label %164, !dbg !1513

101:                                              ; preds = %56
  %102 = load ptr, ptr %5, align 8, !dbg !1514
  %103 = load i32, ptr %8, align 4, !dbg !1515
  %104 = sext i32 %103 to i64, !dbg !1514
  %105 = getelementptr inbounds ptr, ptr %102, i64 %104, !dbg !1514
  %106 = load ptr, ptr %105, align 8, !dbg !1514
  %107 = getelementptr inbounds [64 x i16], ptr %106, i64 0, !dbg !1514
  %108 = getelementptr inbounds [64 x i16], ptr %107, i64 0, i64 0, !dbg !1514
  %109 = load i16, ptr %108, align 2, !dbg !1514
  %110 = sext i16 %109 to i32, !dbg !1514
  %111 = getelementptr inbounds nuw %struct.working_state, ptr %7, i32 0, i32 2, !dbg !1516
  %112 = getelementptr inbounds nuw %struct.savable_state, ptr %111, i32 0, i32 2, !dbg !1517
  %113 = load i32, ptr %9, align 4, !dbg !1518
  %114 = sext i32 %113 to i64, !dbg !1519
  %115 = getelementptr inbounds [4 x i32], ptr %112, i64 0, i64 %114, !dbg !1519
  store i32 %110, ptr %115, align 4, !dbg !1520
  br label %116, !dbg !1521

116:                                              ; preds = %101
  %117 = load i32, ptr %8, align 4, !dbg !1522
  %118 = add nsw i32 %117, 1, !dbg !1522
  store i32 %118, ptr %8, align 4, !dbg !1522
  br label %50, !dbg !1523, !llvm.loop !1524

119:                                              ; preds = %50
  %120 = getelementptr inbounds nuw %struct.working_state, ptr %7, i32 0, i32 0, !dbg !1526
  %121 = load ptr, ptr %120, align 8, !dbg !1526
  %122 = load ptr, ptr %4, align 8, !dbg !1527
  %123 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %122, i32 0, i32 5, !dbg !1528
  %124 = load ptr, ptr %123, align 8, !dbg !1528
  %125 = getelementptr inbounds nuw %struct.jpeg_destination_mgr, ptr %124, i32 0, i32 0, !dbg !1529
  store ptr %121, ptr %125, align 8, !dbg !1530
  %126 = getelementptr inbounds nuw %struct.working_state, ptr %7, i32 0, i32 1, !dbg !1531
  %127 = load i64, ptr %126, align 8, !dbg !1531
  %128 = load ptr, ptr %4, align 8, !dbg !1532
  %129 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %128, i32 0, i32 5, !dbg !1533
  %130 = load ptr, ptr %129, align 8, !dbg !1533
  %131 = getelementptr inbounds nuw %struct.jpeg_destination_mgr, ptr %130, i32 0, i32 1, !dbg !1534
  store i64 %127, ptr %131, align 8, !dbg !1535
  %132 = load ptr, ptr %6, align 8, !dbg !1536
  %133 = getelementptr inbounds nuw %struct.huff_entropy_encoder, ptr %132, i32 0, i32 1, !dbg !1536
  %134 = getelementptr inbounds nuw %struct.working_state, ptr %7, i32 0, i32 2, !dbg !1536
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %133, ptr align 8 %134, i64 32, i1 false), !dbg !1536
  %135 = load ptr, ptr %4, align 8, !dbg !1537
  %136 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %135, i32 0, i32 29, !dbg !1539
  %137 = load i32, ptr %136, align 8, !dbg !1539
  %138 = icmp ne i32 %137, 0, !dbg !1537
  br i1 %138, label %139, label %163, !dbg !1537

139:                                              ; preds = %119
  %140 = load ptr, ptr %6, align 8, !dbg !1540
  %141 = getelementptr inbounds nuw %struct.huff_entropy_encoder, ptr %140, i32 0, i32 2, !dbg !1543
  %142 = load i32, ptr %141, align 8, !dbg !1543
  %143 = icmp eq i32 %142, 0, !dbg !1544
  br i1 %143, label %144, label %158, !dbg !1544

144:                                              ; preds = %139
  %145 = load ptr, ptr %4, align 8, !dbg !1545
  %146 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %145, i32 0, i32 29, !dbg !1547
  %147 = load i32, ptr %146, align 8, !dbg !1547
  %148 = load ptr, ptr %6, align 8, !dbg !1548
  %149 = getelementptr inbounds nuw %struct.huff_entropy_encoder, ptr %148, i32 0, i32 2, !dbg !1549
  store i32 %147, ptr %149, align 8, !dbg !1550
  %150 = load ptr, ptr %6, align 8, !dbg !1551
  %151 = getelementptr inbounds nuw %struct.huff_entropy_encoder, ptr %150, i32 0, i32 3, !dbg !1552
  %152 = load i32, ptr %151, align 4, !dbg !1553
  %153 = add nsw i32 %152, 1, !dbg !1553
  store i32 %153, ptr %151, align 4, !dbg !1553
  %154 = load ptr, ptr %6, align 8, !dbg !1554
  %155 = getelementptr inbounds nuw %struct.huff_entropy_encoder, ptr %154, i32 0, i32 3, !dbg !1555
  %156 = load i32, ptr %155, align 4, !dbg !1556
  %157 = and i32 %156, 7, !dbg !1556
  store i32 %157, ptr %155, align 4, !dbg !1556
  br label %158, !dbg !1557

158:                                              ; preds = %144, %139
  %159 = load ptr, ptr %6, align 8, !dbg !1558
  %160 = getelementptr inbounds nuw %struct.huff_entropy_encoder, ptr %159, i32 0, i32 2, !dbg !1559
  %161 = load i32, ptr %160, align 8, !dbg !1560
  %162 = add i32 %161, -1, !dbg !1560
  store i32 %162, ptr %160, align 8, !dbg !1560
  br label %163, !dbg !1561

163:                                              ; preds = %158, %119
  store i32 1, ptr %3, align 4, !dbg !1562
  br label %164, !dbg !1562

164:                                              ; preds = %163, %100, %46
  %165 = load i32, ptr %3, align 4, !dbg !1563
  ret i32 %165, !dbg !1563
}

; Function Attrs: noinline nounwind uwtable
define internal void @finish_pass_huff(ptr noundef %0) #0 !dbg !1564 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca %struct.working_state, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !1565, !DIExpression(), !1566)
    #dbg_declare(ptr %3, !1567, !DIExpression(), !1568)
  %5 = load ptr, ptr %2, align 8, !dbg !1569
  %6 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %5, i32 0, i32 59, !dbg !1570
  %7 = load ptr, ptr %6, align 8, !dbg !1570
  store ptr %7, ptr %3, align 8, !dbg !1568
    #dbg_declare(ptr %4, !1571, !DIExpression(), !1572)
  %8 = load ptr, ptr %2, align 8, !dbg !1573
  %9 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %8, i32 0, i32 5, !dbg !1574
  %10 = load ptr, ptr %9, align 8, !dbg !1574
  %11 = getelementptr inbounds nuw %struct.jpeg_destination_mgr, ptr %10, i32 0, i32 0, !dbg !1575
  %12 = load ptr, ptr %11, align 8, !dbg !1575
  %13 = getelementptr inbounds nuw %struct.working_state, ptr %4, i32 0, i32 0, !dbg !1576
  store ptr %12, ptr %13, align 8, !dbg !1577
  %14 = load ptr, ptr %2, align 8, !dbg !1578
  %15 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %14, i32 0, i32 5, !dbg !1579
  %16 = load ptr, ptr %15, align 8, !dbg !1579
  %17 = getelementptr inbounds nuw %struct.jpeg_destination_mgr, ptr %16, i32 0, i32 1, !dbg !1580
  %18 = load i64, ptr %17, align 8, !dbg !1580
  %19 = getelementptr inbounds nuw %struct.working_state, ptr %4, i32 0, i32 1, !dbg !1581
  store i64 %18, ptr %19, align 8, !dbg !1582
  %20 = getelementptr inbounds nuw %struct.working_state, ptr %4, i32 0, i32 2, !dbg !1583
  %21 = load ptr, ptr %3, align 8, !dbg !1583
  %22 = getelementptr inbounds nuw %struct.huff_entropy_encoder, ptr %21, i32 0, i32 1, !dbg !1583
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %20, ptr align 8 %22, i64 32, i1 false), !dbg !1583
  %23 = load ptr, ptr %2, align 8, !dbg !1584
  %24 = getelementptr inbounds nuw %struct.working_state, ptr %4, i32 0, i32 3, !dbg !1585
  store ptr %23, ptr %24, align 8, !dbg !1586
  %25 = call i32 @flush_bits(ptr noundef %4), !dbg !1587
  %26 = icmp ne i32 %25, 0, !dbg !1587
  br i1 %26, label %38, label %27, !dbg !1589

27:                                               ; preds = %1
  %28 = load ptr, ptr %2, align 8, !dbg !1590
  %29 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %28, i32 0, i32 0, !dbg !1590
  %30 = load ptr, ptr %29, align 8, !dbg !1590
  %31 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %30, i32 0, i32 5, !dbg !1590
  store i32 22, ptr %31, align 8, !dbg !1590
  %32 = load ptr, ptr %2, align 8, !dbg !1590
  %33 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %32, i32 0, i32 0, !dbg !1590
  %34 = load ptr, ptr %33, align 8, !dbg !1590
  %35 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %34, i32 0, i32 0, !dbg !1590
  %36 = load ptr, ptr %35, align 8, !dbg !1590
  %37 = load ptr, ptr %2, align 8, !dbg !1590
  call void %36(ptr noundef %37), !dbg !1590
  br label %38, !dbg !1590

38:                                               ; preds = %27, %1
  %39 = getelementptr inbounds nuw %struct.working_state, ptr %4, i32 0, i32 0, !dbg !1591
  %40 = load ptr, ptr %39, align 8, !dbg !1591
  %41 = load ptr, ptr %2, align 8, !dbg !1592
  %42 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %41, i32 0, i32 5, !dbg !1593
  %43 = load ptr, ptr %42, align 8, !dbg !1593
  %44 = getelementptr inbounds nuw %struct.jpeg_destination_mgr, ptr %43, i32 0, i32 0, !dbg !1594
  store ptr %40, ptr %44, align 8, !dbg !1595
  %45 = getelementptr inbounds nuw %struct.working_state, ptr %4, i32 0, i32 1, !dbg !1596
  %46 = load i64, ptr %45, align 8, !dbg !1596
  %47 = load ptr, ptr %2, align 8, !dbg !1597
  %48 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %47, i32 0, i32 5, !dbg !1598
  %49 = load ptr, ptr %48, align 8, !dbg !1598
  %50 = getelementptr inbounds nuw %struct.jpeg_destination_mgr, ptr %49, i32 0, i32 1, !dbg !1599
  store i64 %46, ptr %50, align 8, !dbg !1600
  %51 = load ptr, ptr %3, align 8, !dbg !1601
  %52 = getelementptr inbounds nuw %struct.huff_entropy_encoder, ptr %51, i32 0, i32 1, !dbg !1601
  %53 = getelementptr inbounds nuw %struct.working_state, ptr %4, i32 0, i32 2, !dbg !1601
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %52, ptr align 8 %53, i64 32, i1 false), !dbg !1601
  ret void, !dbg !1602
}

; Function Attrs: noinline nounwind uwtable
define internal void @htest_one_block(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #0 !dbg !1603 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
    #dbg_declare(ptr %5, !1608, !DIExpression(), !1609)
  store i32 %1, ptr %6, align 4
    #dbg_declare(ptr %6, !1610, !DIExpression(), !1611)
  store ptr %2, ptr %7, align 8
    #dbg_declare(ptr %7, !1612, !DIExpression(), !1613)
  store ptr %3, ptr %8, align 8
    #dbg_declare(ptr %8, !1614, !DIExpression(), !1615)
    #dbg_declare(ptr %9, !1616, !DIExpression(), !1617)
    #dbg_declare(ptr %10, !1618, !DIExpression(), !1619)
    #dbg_declare(ptr %11, !1620, !DIExpression(), !1621)
    #dbg_declare(ptr %12, !1622, !DIExpression(), !1623)
  %13 = load ptr, ptr %5, align 8, !dbg !1624
  %14 = getelementptr inbounds i16, ptr %13, i64 0, !dbg !1624
  %15 = load i16, ptr %14, align 2, !dbg !1624
  %16 = sext i16 %15 to i32, !dbg !1624
  %17 = load i32, ptr %6, align 4, !dbg !1625
  %18 = sub nsw i32 %16, %17, !dbg !1626
  store i32 %18, ptr %9, align 4, !dbg !1627
  %19 = load i32, ptr %9, align 4, !dbg !1628
  %20 = icmp slt i32 %19, 0, !dbg !1630
  br i1 %20, label %21, label %24, !dbg !1630

21:                                               ; preds = %4
  %22 = load i32, ptr %9, align 4, !dbg !1631
  %23 = sub nsw i32 0, %22, !dbg !1632
  store i32 %23, ptr %9, align 4, !dbg !1633
  br label %24, !dbg !1634

24:                                               ; preds = %21, %4
  store i32 0, ptr %10, align 4, !dbg !1635
  br label %25, !dbg !1636

25:                                               ; preds = %28, %24
  %26 = load i32, ptr %9, align 4, !dbg !1637
  %27 = icmp ne i32 %26, 0, !dbg !1636
  br i1 %27, label %28, label %33, !dbg !1636

28:                                               ; preds = %25
  %29 = load i32, ptr %10, align 4, !dbg !1638
  %30 = add nsw i32 %29, 1, !dbg !1638
  store i32 %30, ptr %10, align 4, !dbg !1638
  %31 = load i32, ptr %9, align 4, !dbg !1640
  %32 = ashr i32 %31, 1, !dbg !1640
  store i32 %32, ptr %9, align 4, !dbg !1640
  br label %25, !dbg !1636, !llvm.loop !1641

33:                                               ; preds = %25
  %34 = load ptr, ptr %7, align 8, !dbg !1643
  %35 = load i32, ptr %10, align 4, !dbg !1644
  %36 = sext i32 %35 to i64, !dbg !1643
  %37 = getelementptr inbounds i64, ptr %34, i64 %36, !dbg !1643
  %38 = load i64, ptr %37, align 8, !dbg !1645
  %39 = add nsw i64 %38, 1, !dbg !1645
  store i64 %39, ptr %37, align 8, !dbg !1645
  store i32 0, ptr %12, align 4, !dbg !1646
  store i32 1, ptr %11, align 4, !dbg !1647
  br label %40, !dbg !1649

40:                                               ; preds = %93, %33
  %41 = load i32, ptr %11, align 4, !dbg !1650
  %42 = icmp slt i32 %41, 64, !dbg !1652
  br i1 %42, label %43, label %96, !dbg !1653

43:                                               ; preds = %40
  %44 = load ptr, ptr %5, align 8, !dbg !1654
  %45 = load i32, ptr %11, align 4, !dbg !1657
  %46 = sext i32 %45 to i64, !dbg !1658
  %47 = getelementptr inbounds [0 x i32], ptr @jpeg_natural_order, i64 0, i64 %46, !dbg !1658
  %48 = load i32, ptr %47, align 4, !dbg !1658
  %49 = sext i32 %48 to i64, !dbg !1654
  %50 = getelementptr inbounds i16, ptr %44, i64 %49, !dbg !1654
  %51 = load i16, ptr %50, align 2, !dbg !1654
  %52 = sext i16 %51 to i32, !dbg !1654
  store i32 %52, ptr %9, align 4, !dbg !1659
  %53 = icmp eq i32 %52, 0, !dbg !1660
  br i1 %53, label %54, label %57, !dbg !1660

54:                                               ; preds = %43
  %55 = load i32, ptr %12, align 4, !dbg !1661
  %56 = add nsw i32 %55, 1, !dbg !1661
  store i32 %56, ptr %12, align 4, !dbg !1661
  br label %92, !dbg !1663

57:                                               ; preds = %43
  br label %58, !dbg !1664

58:                                               ; preds = %61, %57
  %59 = load i32, ptr %12, align 4, !dbg !1666
  %60 = icmp sgt i32 %59, 15, !dbg !1667
  br i1 %60, label %61, label %68, !dbg !1664

61:                                               ; preds = %58
  %62 = load ptr, ptr %8, align 8, !dbg !1668
  %63 = getelementptr inbounds i64, ptr %62, i64 240, !dbg !1668
  %64 = load i64, ptr %63, align 8, !dbg !1670
  %65 = add nsw i64 %64, 1, !dbg !1670
  store i64 %65, ptr %63, align 8, !dbg !1670
  %66 = load i32, ptr %12, align 4, !dbg !1671
  %67 = sub nsw i32 %66, 16, !dbg !1671
  store i32 %67, ptr %12, align 4, !dbg !1671
  br label %58, !dbg !1664, !llvm.loop !1672

68:                                               ; preds = %58
  %69 = load i32, ptr %9, align 4, !dbg !1674
  %70 = icmp slt i32 %69, 0, !dbg !1676
  br i1 %70, label %71, label %74, !dbg !1676

71:                                               ; preds = %68
  %72 = load i32, ptr %9, align 4, !dbg !1677
  %73 = sub nsw i32 0, %72, !dbg !1678
  store i32 %73, ptr %9, align 4, !dbg !1679
  br label %74, !dbg !1680

74:                                               ; preds = %71, %68
  store i32 1, ptr %10, align 4, !dbg !1681
  br label %75, !dbg !1682

75:                                               ; preds = %79, %74
  %76 = load i32, ptr %9, align 4, !dbg !1683
  %77 = ashr i32 %76, 1, !dbg !1683
  store i32 %77, ptr %9, align 4, !dbg !1683
  %78 = icmp ne i32 %77, 0, !dbg !1682
  br i1 %78, label %79, label %82, !dbg !1682

79:                                               ; preds = %75
  %80 = load i32, ptr %10, align 4, !dbg !1684
  %81 = add nsw i32 %80, 1, !dbg !1684
  store i32 %81, ptr %10, align 4, !dbg !1684
  br label %75, !dbg !1682, !llvm.loop !1685

82:                                               ; preds = %75
  %83 = load ptr, ptr %8, align 8, !dbg !1686
  %84 = load i32, ptr %12, align 4, !dbg !1687
  %85 = shl i32 %84, 4, !dbg !1688
  %86 = load i32, ptr %10, align 4, !dbg !1689
  %87 = add nsw i32 %85, %86, !dbg !1690
  %88 = sext i32 %87 to i64, !dbg !1686
  %89 = getelementptr inbounds i64, ptr %83, i64 %88, !dbg !1686
  %90 = load i64, ptr %89, align 8, !dbg !1691
  %91 = add nsw i64 %90, 1, !dbg !1691
  store i64 %91, ptr %89, align 8, !dbg !1691
  store i32 0, ptr %12, align 4, !dbg !1692
  br label %92

92:                                               ; preds = %82, %54
  br label %93, !dbg !1693

93:                                               ; preds = %92
  %94 = load i32, ptr %11, align 4, !dbg !1694
  %95 = add nsw i32 %94, 1, !dbg !1694
  store i32 %95, ptr %11, align 4, !dbg !1694
  br label %40, !dbg !1695, !llvm.loop !1696

96:                                               ; preds = %40
  %97 = load i32, ptr %12, align 4, !dbg !1698
  %98 = icmp sgt i32 %97, 0, !dbg !1700
  br i1 %98, label %99, label %104, !dbg !1700

99:                                               ; preds = %96
  %100 = load ptr, ptr %8, align 8, !dbg !1701
  %101 = getelementptr inbounds i64, ptr %100, i64 0, !dbg !1701
  %102 = load i64, ptr %101, align 8, !dbg !1702
  %103 = add nsw i64 %102, 1, !dbg !1702
  store i64 %103, ptr %101, align 8, !dbg !1702
  br label %104, !dbg !1701

104:                                              ; preds = %99, %96
  ret void, !dbg !1703
}

declare ptr @jpeg_alloc_huff_table(ptr noundef) #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @emit_restart(ptr noundef %0, i32 noundef %1) #0 !dbg !1704 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
    #dbg_declare(ptr %4, !1708, !DIExpression(), !1709)
  store i32 %1, ptr %5, align 4
    #dbg_declare(ptr %5, !1710, !DIExpression(), !1711)
    #dbg_declare(ptr %6, !1712, !DIExpression(), !1713)
  %7 = load ptr, ptr %4, align 8, !dbg !1714
  %8 = call i32 @flush_bits(ptr noundef %7), !dbg !1716
  %9 = icmp ne i32 %8, 0, !dbg !1716
  br i1 %9, label %11, label %10, !dbg !1717

10:                                               ; preds = %2
  store i32 0, ptr %3, align 4, !dbg !1718
  br label %66, !dbg !1718

11:                                               ; preds = %2
  %12 = load ptr, ptr %4, align 8, !dbg !1719
  %13 = getelementptr inbounds nuw %struct.working_state, ptr %12, i32 0, i32 0, !dbg !1719
  %14 = load ptr, ptr %13, align 8, !dbg !1719
  %15 = getelementptr inbounds nuw i8, ptr %14, i32 1, !dbg !1719
  store ptr %15, ptr %13, align 8, !dbg !1719
  store i8 -1, ptr %14, align 1, !dbg !1719
  %16 = load ptr, ptr %4, align 8, !dbg !1721
  %17 = getelementptr inbounds nuw %struct.working_state, ptr %16, i32 0, i32 1, !dbg !1721
  %18 = load i64, ptr %17, align 8, !dbg !1721
  %19 = add i64 %18, -1, !dbg !1721
  store i64 %19, ptr %17, align 8, !dbg !1721
  %20 = icmp eq i64 %19, 0, !dbg !1721
  br i1 %20, label %21, label %27, !dbg !1721

21:                                               ; preds = %11
  %22 = load ptr, ptr %4, align 8, !dbg !1723
  %23 = call i32 @dump_buffer(ptr noundef %22), !dbg !1723
  %24 = icmp ne i32 %23, 0, !dbg !1723
  br i1 %24, label %26, label %25, !dbg !1723

25:                                               ; preds = %21
  store i32 0, ptr %3, align 4, !dbg !1725
  br label %66, !dbg !1725

26:                                               ; preds = %21
  br label %27, !dbg !1723

27:                                               ; preds = %26, %11
  %28 = load i32, ptr %5, align 4, !dbg !1727
  %29 = add nsw i32 208, %28, !dbg !1727
  %30 = trunc i32 %29 to i8, !dbg !1727
  %31 = load ptr, ptr %4, align 8, !dbg !1727
  %32 = getelementptr inbounds nuw %struct.working_state, ptr %31, i32 0, i32 0, !dbg !1727
  %33 = load ptr, ptr %32, align 8, !dbg !1727
  %34 = getelementptr inbounds nuw i8, ptr %33, i32 1, !dbg !1727
  store ptr %34, ptr %32, align 8, !dbg !1727
  store i8 %30, ptr %33, align 1, !dbg !1727
  %35 = load ptr, ptr %4, align 8, !dbg !1729
  %36 = getelementptr inbounds nuw %struct.working_state, ptr %35, i32 0, i32 1, !dbg !1729
  %37 = load i64, ptr %36, align 8, !dbg !1729
  %38 = add i64 %37, -1, !dbg !1729
  store i64 %38, ptr %36, align 8, !dbg !1729
  %39 = icmp eq i64 %38, 0, !dbg !1729
  br i1 %39, label %40, label %46, !dbg !1729

40:                                               ; preds = %27
  %41 = load ptr, ptr %4, align 8, !dbg !1731
  %42 = call i32 @dump_buffer(ptr noundef %41), !dbg !1731
  %43 = icmp ne i32 %42, 0, !dbg !1731
  br i1 %43, label %45, label %44, !dbg !1731

44:                                               ; preds = %40
  store i32 0, ptr %3, align 4, !dbg !1733
  br label %66, !dbg !1733

45:                                               ; preds = %40
  br label %46, !dbg !1731

46:                                               ; preds = %45, %27
  store i32 0, ptr %6, align 4, !dbg !1735
  br label %47, !dbg !1737

47:                                               ; preds = %62, %46
  %48 = load i32, ptr %6, align 4, !dbg !1738
  %49 = load ptr, ptr %4, align 8, !dbg !1740
  %50 = getelementptr inbounds nuw %struct.working_state, ptr %49, i32 0, i32 3, !dbg !1741
  %51 = load ptr, ptr %50, align 8, !dbg !1741
  %52 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %51, i32 0, i32 41, !dbg !1742
  %53 = load i32, ptr %52, align 4, !dbg !1742
  %54 = icmp slt i32 %48, %53, !dbg !1743
  br i1 %54, label %55, label %65, !dbg !1744

55:                                               ; preds = %47
  %56 = load ptr, ptr %4, align 8, !dbg !1745
  %57 = getelementptr inbounds nuw %struct.working_state, ptr %56, i32 0, i32 2, !dbg !1746
  %58 = getelementptr inbounds nuw %struct.savable_state, ptr %57, i32 0, i32 2, !dbg !1747
  %59 = load i32, ptr %6, align 4, !dbg !1748
  %60 = sext i32 %59 to i64, !dbg !1745
  %61 = getelementptr inbounds [4 x i32], ptr %58, i64 0, i64 %60, !dbg !1745
  store i32 0, ptr %61, align 4, !dbg !1749
  br label %62, !dbg !1745

62:                                               ; preds = %55
  %63 = load i32, ptr %6, align 4, !dbg !1750
  %64 = add nsw i32 %63, 1, !dbg !1750
  store i32 %64, ptr %6, align 4, !dbg !1750
  br label %47, !dbg !1751, !llvm.loop !1752

65:                                               ; preds = %47
  store i32 1, ptr %3, align 4, !dbg !1754
  br label %66, !dbg !1754

66:                                               ; preds = %65, %44, %25, %10
  %67 = load i32, ptr %3, align 4, !dbg !1755
  ret i32 %67, !dbg !1755
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @encode_one_block(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #0 !dbg !1756 {
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store ptr %0, ptr %7, align 8
    #dbg_declare(ptr %7, !1759, !DIExpression(), !1760)
  store ptr %1, ptr %8, align 8
    #dbg_declare(ptr %8, !1761, !DIExpression(), !1762)
  store i32 %2, ptr %9, align 4
    #dbg_declare(ptr %9, !1763, !DIExpression(), !1764)
  store ptr %3, ptr %10, align 8
    #dbg_declare(ptr %10, !1765, !DIExpression(), !1766)
  store ptr %4, ptr %11, align 8
    #dbg_declare(ptr %11, !1767, !DIExpression(), !1768)
    #dbg_declare(ptr %12, !1769, !DIExpression(), !1770)
    #dbg_declare(ptr %13, !1771, !DIExpression(), !1772)
    #dbg_declare(ptr %14, !1773, !DIExpression(), !1774)
    #dbg_declare(ptr %15, !1775, !DIExpression(), !1776)
    #dbg_declare(ptr %16, !1777, !DIExpression(), !1778)
    #dbg_declare(ptr %17, !1779, !DIExpression(), !1780)
  %18 = load ptr, ptr %8, align 8, !dbg !1781
  %19 = getelementptr inbounds i16, ptr %18, i64 0, !dbg !1781
  %20 = load i16, ptr %19, align 2, !dbg !1781
  %21 = sext i16 %20 to i32, !dbg !1781
  %22 = load i32, ptr %9, align 4, !dbg !1782
  %23 = sub nsw i32 %21, %22, !dbg !1783
  store i32 %23, ptr %13, align 4, !dbg !1784
  store i32 %23, ptr %12, align 4, !dbg !1785
  %24 = load i32, ptr %12, align 4, !dbg !1786
  %25 = icmp slt i32 %24, 0, !dbg !1788
  br i1 %25, label %26, label %31, !dbg !1788

26:                                               ; preds = %5
  %27 = load i32, ptr %12, align 4, !dbg !1789
  %28 = sub nsw i32 0, %27, !dbg !1791
  store i32 %28, ptr %12, align 4, !dbg !1792
  %29 = load i32, ptr %13, align 4, !dbg !1793
  %30 = add nsw i32 %29, -1, !dbg !1793
  store i32 %30, ptr %13, align 4, !dbg !1793
  br label %31, !dbg !1794

31:                                               ; preds = %26, %5
  store i32 0, ptr %14, align 4, !dbg !1795
  br label %32, !dbg !1796

32:                                               ; preds = %35, %31
  %33 = load i32, ptr %12, align 4, !dbg !1797
  %34 = icmp ne i32 %33, 0, !dbg !1796
  br i1 %34, label %35, label %40, !dbg !1796

35:                                               ; preds = %32
  %36 = load i32, ptr %14, align 4, !dbg !1798
  %37 = add nsw i32 %36, 1, !dbg !1798
  store i32 %37, ptr %14, align 4, !dbg !1798
  %38 = load i32, ptr %12, align 4, !dbg !1800
  %39 = ashr i32 %38, 1, !dbg !1800
  store i32 %39, ptr %12, align 4, !dbg !1800
  br label %32, !dbg !1796, !llvm.loop !1801

40:                                               ; preds = %32
  %41 = load ptr, ptr %7, align 8, !dbg !1803
  %42 = load ptr, ptr %10, align 8, !dbg !1805
  %43 = getelementptr inbounds nuw %struct.c_derived_tbl, ptr %42, i32 0, i32 0, !dbg !1806
  %44 = load i32, ptr %14, align 4, !dbg !1807
  %45 = sext i32 %44 to i64, !dbg !1805
  %46 = getelementptr inbounds [256 x i32], ptr %43, i64 0, i64 %45, !dbg !1805
  %47 = load i32, ptr %46, align 4, !dbg !1805
  %48 = load ptr, ptr %10, align 8, !dbg !1808
  %49 = getelementptr inbounds nuw %struct.c_derived_tbl, ptr %48, i32 0, i32 1, !dbg !1809
  %50 = load i32, ptr %14, align 4, !dbg !1810
  %51 = sext i32 %50 to i64, !dbg !1808
  %52 = getelementptr inbounds [256 x i8], ptr %49, i64 0, i64 %51, !dbg !1808
  %53 = load i8, ptr %52, align 1, !dbg !1808
  %54 = sext i8 %53 to i32, !dbg !1808
  %55 = call i32 @emit_bits(ptr noundef %41, i32 noundef %47, i32 noundef %54), !dbg !1811
  %56 = icmp ne i32 %55, 0, !dbg !1811
  br i1 %56, label %58, label %57, !dbg !1812

57:                                               ; preds = %40
  store i32 0, ptr %6, align 4, !dbg !1813
  br label %178, !dbg !1813

58:                                               ; preds = %40
  %59 = load i32, ptr %14, align 4, !dbg !1814
  %60 = icmp ne i32 %59, 0, !dbg !1814
  br i1 %60, label %61, label %69, !dbg !1814

61:                                               ; preds = %58
  %62 = load ptr, ptr %7, align 8, !dbg !1816
  %63 = load i32, ptr %13, align 4, !dbg !1818
  %64 = load i32, ptr %14, align 4, !dbg !1819
  %65 = call i32 @emit_bits(ptr noundef %62, i32 noundef %63, i32 noundef %64), !dbg !1820
  %66 = icmp ne i32 %65, 0, !dbg !1820
  br i1 %66, label %68, label %67, !dbg !1821

67:                                               ; preds = %61
  store i32 0, ptr %6, align 4, !dbg !1822
  br label %178, !dbg !1822

68:                                               ; preds = %61
  br label %69, !dbg !1823

69:                                               ; preds = %68, %58
  store i32 0, ptr %16, align 4, !dbg !1824
  store i32 1, ptr %15, align 4, !dbg !1825
  br label %70, !dbg !1827

70:                                               ; preds = %156, %69
  %71 = load i32, ptr %15, align 4, !dbg !1828
  %72 = icmp slt i32 %71, 64, !dbg !1830
  br i1 %72, label %73, label %159, !dbg !1831

73:                                               ; preds = %70
  %74 = load ptr, ptr %8, align 8, !dbg !1832
  %75 = load i32, ptr %15, align 4, !dbg !1835
  %76 = sext i32 %75 to i64, !dbg !1836
  %77 = getelementptr inbounds [0 x i32], ptr @jpeg_natural_order, i64 0, i64 %76, !dbg !1836
  %78 = load i32, ptr %77, align 4, !dbg !1836
  %79 = sext i32 %78 to i64, !dbg !1832
  %80 = getelementptr inbounds i16, ptr %74, i64 %79, !dbg !1832
  %81 = load i16, ptr %80, align 2, !dbg !1832
  %82 = sext i16 %81 to i32, !dbg !1832
  store i32 %82, ptr %12, align 4, !dbg !1837
  %83 = icmp eq i32 %82, 0, !dbg !1838
  br i1 %83, label %84, label %87, !dbg !1838

84:                                               ; preds = %73
  %85 = load i32, ptr %16, align 4, !dbg !1839
  %86 = add nsw i32 %85, 1, !dbg !1839
  store i32 %86, ptr %16, align 4, !dbg !1839
  br label %155, !dbg !1841

87:                                               ; preds = %73
  br label %88, !dbg !1842

88:                                               ; preds = %105, %87
  %89 = load i32, ptr %16, align 4, !dbg !1844
  %90 = icmp sgt i32 %89, 15, !dbg !1845
  br i1 %90, label %91, label %108, !dbg !1842

91:                                               ; preds = %88
  %92 = load ptr, ptr %7, align 8, !dbg !1846
  %93 = load ptr, ptr %11, align 8, !dbg !1849
  %94 = getelementptr inbounds nuw %struct.c_derived_tbl, ptr %93, i32 0, i32 0, !dbg !1850
  %95 = getelementptr inbounds [256 x i32], ptr %94, i64 0, i64 240, !dbg !1849
  %96 = load i32, ptr %95, align 4, !dbg !1849
  %97 = load ptr, ptr %11, align 8, !dbg !1851
  %98 = getelementptr inbounds nuw %struct.c_derived_tbl, ptr %97, i32 0, i32 1, !dbg !1852
  %99 = getelementptr inbounds [256 x i8], ptr %98, i64 0, i64 240, !dbg !1851
  %100 = load i8, ptr %99, align 4, !dbg !1851
  %101 = sext i8 %100 to i32, !dbg !1851
  %102 = call i32 @emit_bits(ptr noundef %92, i32 noundef %96, i32 noundef %101), !dbg !1853
  %103 = icmp ne i32 %102, 0, !dbg !1853
  br i1 %103, label %105, label %104, !dbg !1854

104:                                              ; preds = %91
  store i32 0, ptr %6, align 4, !dbg !1855
  br label %178, !dbg !1855

105:                                              ; preds = %91
  %106 = load i32, ptr %16, align 4, !dbg !1856
  %107 = sub nsw i32 %106, 16, !dbg !1856
  store i32 %107, ptr %16, align 4, !dbg !1856
  br label %88, !dbg !1842, !llvm.loop !1857

108:                                              ; preds = %88
  %109 = load i32, ptr %12, align 4, !dbg !1859
  store i32 %109, ptr %13, align 4, !dbg !1860
  %110 = load i32, ptr %12, align 4, !dbg !1861
  %111 = icmp slt i32 %110, 0, !dbg !1863
  br i1 %111, label %112, label %117, !dbg !1863

112:                                              ; preds = %108
  %113 = load i32, ptr %12, align 4, !dbg !1864
  %114 = sub nsw i32 0, %113, !dbg !1866
  store i32 %114, ptr %12, align 4, !dbg !1867
  %115 = load i32, ptr %13, align 4, !dbg !1868
  %116 = add nsw i32 %115, -1, !dbg !1868
  store i32 %116, ptr %13, align 4, !dbg !1868
  br label %117, !dbg !1869

117:                                              ; preds = %112, %108
  store i32 1, ptr %14, align 4, !dbg !1870
  br label %118, !dbg !1871

118:                                              ; preds = %122, %117
  %119 = load i32, ptr %12, align 4, !dbg !1872
  %120 = ashr i32 %119, 1, !dbg !1872
  store i32 %120, ptr %12, align 4, !dbg !1872
  %121 = icmp ne i32 %120, 0, !dbg !1871
  br i1 %121, label %122, label %125, !dbg !1871

122:                                              ; preds = %118
  %123 = load i32, ptr %14, align 4, !dbg !1873
  %124 = add nsw i32 %123, 1, !dbg !1873
  store i32 %124, ptr %14, align 4, !dbg !1873
  br label %118, !dbg !1871, !llvm.loop !1874

125:                                              ; preds = %118
  %126 = load i32, ptr %16, align 4, !dbg !1875
  %127 = shl i32 %126, 4, !dbg !1876
  %128 = load i32, ptr %14, align 4, !dbg !1877
  %129 = add nsw i32 %127, %128, !dbg !1878
  store i32 %129, ptr %17, align 4, !dbg !1879
  %130 = load ptr, ptr %7, align 8, !dbg !1880
  %131 = load ptr, ptr %11, align 8, !dbg !1882
  %132 = getelementptr inbounds nuw %struct.c_derived_tbl, ptr %131, i32 0, i32 0, !dbg !1883
  %133 = load i32, ptr %17, align 4, !dbg !1884
  %134 = sext i32 %133 to i64, !dbg !1882
  %135 = getelementptr inbounds [256 x i32], ptr %132, i64 0, i64 %134, !dbg !1882
  %136 = load i32, ptr %135, align 4, !dbg !1882
  %137 = load ptr, ptr %11, align 8, !dbg !1885
  %138 = getelementptr inbounds nuw %struct.c_derived_tbl, ptr %137, i32 0, i32 1, !dbg !1886
  %139 = load i32, ptr %17, align 4, !dbg !1887
  %140 = sext i32 %139 to i64, !dbg !1885
  %141 = getelementptr inbounds [256 x i8], ptr %138, i64 0, i64 %140, !dbg !1885
  %142 = load i8, ptr %141, align 1, !dbg !1885
  %143 = sext i8 %142 to i32, !dbg !1885
  %144 = call i32 @emit_bits(ptr noundef %130, i32 noundef %136, i32 noundef %143), !dbg !1888
  %145 = icmp ne i32 %144, 0, !dbg !1888
  br i1 %145, label %147, label %146, !dbg !1889

146:                                              ; preds = %125
  store i32 0, ptr %6, align 4, !dbg !1890
  br label %178, !dbg !1890

147:                                              ; preds = %125
  %148 = load ptr, ptr %7, align 8, !dbg !1891
  %149 = load i32, ptr %13, align 4, !dbg !1893
  %150 = load i32, ptr %14, align 4, !dbg !1894
  %151 = call i32 @emit_bits(ptr noundef %148, i32 noundef %149, i32 noundef %150), !dbg !1895
  %152 = icmp ne i32 %151, 0, !dbg !1895
  br i1 %152, label %154, label %153, !dbg !1896

153:                                              ; preds = %147
  store i32 0, ptr %6, align 4, !dbg !1897
  br label %178, !dbg !1897

154:                                              ; preds = %147
  store i32 0, ptr %16, align 4, !dbg !1898
  br label %155

155:                                              ; preds = %154, %84
  br label %156, !dbg !1899

156:                                              ; preds = %155
  %157 = load i32, ptr %15, align 4, !dbg !1900
  %158 = add nsw i32 %157, 1, !dbg !1900
  store i32 %158, ptr %15, align 4, !dbg !1900
  br label %70, !dbg !1901, !llvm.loop !1902

159:                                              ; preds = %70
  %160 = load i32, ptr %16, align 4, !dbg !1904
  %161 = icmp sgt i32 %160, 0, !dbg !1906
  br i1 %161, label %162, label %177, !dbg !1906

162:                                              ; preds = %159
  %163 = load ptr, ptr %7, align 8, !dbg !1907
  %164 = load ptr, ptr %11, align 8, !dbg !1909
  %165 = getelementptr inbounds nuw %struct.c_derived_tbl, ptr %164, i32 0, i32 0, !dbg !1910
  %166 = getelementptr inbounds [256 x i32], ptr %165, i64 0, i64 0, !dbg !1909
  %167 = load i32, ptr %166, align 4, !dbg !1909
  %168 = load ptr, ptr %11, align 8, !dbg !1911
  %169 = getelementptr inbounds nuw %struct.c_derived_tbl, ptr %168, i32 0, i32 1, !dbg !1912
  %170 = getelementptr inbounds [256 x i8], ptr %169, i64 0, i64 0, !dbg !1911
  %171 = load i8, ptr %170, align 4, !dbg !1911
  %172 = sext i8 %171 to i32, !dbg !1911
  %173 = call i32 @emit_bits(ptr noundef %163, i32 noundef %167, i32 noundef %172), !dbg !1913
  %174 = icmp ne i32 %173, 0, !dbg !1913
  br i1 %174, label %176, label %175, !dbg !1914

175:                                              ; preds = %162
  store i32 0, ptr %6, align 4, !dbg !1915
  br label %178, !dbg !1915

176:                                              ; preds = %162
  br label %177, !dbg !1916

177:                                              ; preds = %176, %159
  store i32 1, ptr %6, align 4, !dbg !1917
  br label %178, !dbg !1917

178:                                              ; preds = %177, %175, %153, %146, %104, %67, %57
  %179 = load i32, ptr %6, align 4, !dbg !1918
  ret i32 %179, !dbg !1918
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @flush_bits(ptr noundef %0) #0 !dbg !1919 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !1922, !DIExpression(), !1923)
  %4 = load ptr, ptr %3, align 8, !dbg !1924
  %5 = call i32 @emit_bits(ptr noundef %4, i32 noundef 127, i32 noundef 7), !dbg !1926
  %6 = icmp ne i32 %5, 0, !dbg !1926
  br i1 %6, label %8, label %7, !dbg !1927

7:                                                ; preds = %1
  store i32 0, ptr %2, align 4, !dbg !1928
  br label %15, !dbg !1928

8:                                                ; preds = %1
  %9 = load ptr, ptr %3, align 8, !dbg !1929
  %10 = getelementptr inbounds nuw %struct.working_state, ptr %9, i32 0, i32 2, !dbg !1930
  %11 = getelementptr inbounds nuw %struct.savable_state, ptr %10, i32 0, i32 0, !dbg !1931
  store i64 0, ptr %11, align 8, !dbg !1932
  %12 = load ptr, ptr %3, align 8, !dbg !1933
  %13 = getelementptr inbounds nuw %struct.working_state, ptr %12, i32 0, i32 2, !dbg !1934
  %14 = getelementptr inbounds nuw %struct.savable_state, ptr %13, i32 0, i32 1, !dbg !1935
  store i32 0, ptr %14, align 8, !dbg !1936
  store i32 1, ptr %2, align 4, !dbg !1937
  br label %15, !dbg !1937

15:                                               ; preds = %8, %7
  %16 = load i32, ptr %2, align 4, !dbg !1938
  ret i32 %16, !dbg !1938
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @dump_buffer(ptr noundef %0) #0 !dbg !1939 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !1940, !DIExpression(), !1941)
    #dbg_declare(ptr %4, !1942, !DIExpression(), !1943)
  %5 = load ptr, ptr %3, align 8, !dbg !1944
  %6 = getelementptr inbounds nuw %struct.working_state, ptr %5, i32 0, i32 3, !dbg !1945
  %7 = load ptr, ptr %6, align 8, !dbg !1945
  %8 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %7, i32 0, i32 5, !dbg !1946
  %9 = load ptr, ptr %8, align 8, !dbg !1946
  store ptr %9, ptr %4, align 8, !dbg !1943
  %10 = load ptr, ptr %4, align 8, !dbg !1947
  %11 = getelementptr inbounds nuw %struct.jpeg_destination_mgr, ptr %10, i32 0, i32 3, !dbg !1949
  %12 = load ptr, ptr %11, align 8, !dbg !1949
  %13 = load ptr, ptr %3, align 8, !dbg !1950
  %14 = getelementptr inbounds nuw %struct.working_state, ptr %13, i32 0, i32 3, !dbg !1951
  %15 = load ptr, ptr %14, align 8, !dbg !1951
  %16 = call i32 %12(ptr noundef %15), !dbg !1952
  %17 = icmp ne i32 %16, 0, !dbg !1952
  br i1 %17, label %19, label %18, !dbg !1953

18:                                               ; preds = %1
  store i32 0, ptr %2, align 4, !dbg !1954
  br label %30, !dbg !1954

19:                                               ; preds = %1
  %20 = load ptr, ptr %4, align 8, !dbg !1955
  %21 = getelementptr inbounds nuw %struct.jpeg_destination_mgr, ptr %20, i32 0, i32 0, !dbg !1956
  %22 = load ptr, ptr %21, align 8, !dbg !1956
  %23 = load ptr, ptr %3, align 8, !dbg !1957
  %24 = getelementptr inbounds nuw %struct.working_state, ptr %23, i32 0, i32 0, !dbg !1958
  store ptr %22, ptr %24, align 8, !dbg !1959
  %25 = load ptr, ptr %4, align 8, !dbg !1960
  %26 = getelementptr inbounds nuw %struct.jpeg_destination_mgr, ptr %25, i32 0, i32 1, !dbg !1961
  %27 = load i64, ptr %26, align 8, !dbg !1961
  %28 = load ptr, ptr %3, align 8, !dbg !1962
  %29 = getelementptr inbounds nuw %struct.working_state, ptr %28, i32 0, i32 1, !dbg !1963
  store i64 %27, ptr %29, align 8, !dbg !1964
  store i32 1, ptr %2, align 4, !dbg !1965
  br label %30, !dbg !1965

30:                                               ; preds = %19, %18
  %31 = load i32, ptr %2, align 4, !dbg !1966
  ret i32 %31, !dbg !1966
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @emit_bits(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 !dbg !1967 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
    #dbg_declare(ptr %5, !1970, !DIExpression(), !1971)
  store i32 %1, ptr %6, align 4
    #dbg_declare(ptr %6, !1972, !DIExpression(), !1973)
  store i32 %2, ptr %7, align 4
    #dbg_declare(ptr %7, !1974, !DIExpression(), !1975)
    #dbg_declare(ptr %8, !1976, !DIExpression(), !1977)
  %11 = load i32, ptr %6, align 4, !dbg !1978
  %12 = zext i32 %11 to i64, !dbg !1979
  store i64 %12, ptr %8, align 8, !dbg !1977
    #dbg_declare(ptr %9, !1980, !DIExpression(), !1981)
  %13 = load ptr, ptr %5, align 8, !dbg !1982
  %14 = getelementptr inbounds nuw %struct.working_state, ptr %13, i32 0, i32 2, !dbg !1983
  %15 = getelementptr inbounds nuw %struct.savable_state, ptr %14, i32 0, i32 1, !dbg !1984
  %16 = load i32, ptr %15, align 8, !dbg !1984
  store i32 %16, ptr %9, align 4, !dbg !1981
  %17 = load i32, ptr %7, align 4, !dbg !1985
  %18 = icmp eq i32 %17, 0, !dbg !1987
  br i1 %18, label %19, label %36, !dbg !1987

19:                                               ; preds = %3
  %20 = load ptr, ptr %5, align 8, !dbg !1988
  %21 = getelementptr inbounds nuw %struct.working_state, ptr %20, i32 0, i32 3, !dbg !1988
  %22 = load ptr, ptr %21, align 8, !dbg !1988
  %23 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %22, i32 0, i32 0, !dbg !1988
  %24 = load ptr, ptr %23, align 8, !dbg !1988
  %25 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %24, i32 0, i32 5, !dbg !1988
  store i32 39, ptr %25, align 8, !dbg !1988
  %26 = load ptr, ptr %5, align 8, !dbg !1988
  %27 = getelementptr inbounds nuw %struct.working_state, ptr %26, i32 0, i32 3, !dbg !1988
  %28 = load ptr, ptr %27, align 8, !dbg !1988
  %29 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %28, i32 0, i32 0, !dbg !1988
  %30 = load ptr, ptr %29, align 8, !dbg !1988
  %31 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %30, i32 0, i32 0, !dbg !1988
  %32 = load ptr, ptr %31, align 8, !dbg !1988
  %33 = load ptr, ptr %5, align 8, !dbg !1988
  %34 = getelementptr inbounds nuw %struct.working_state, ptr %33, i32 0, i32 3, !dbg !1988
  %35 = load ptr, ptr %34, align 8, !dbg !1988
  call void %32(ptr noundef %35), !dbg !1988
  br label %36, !dbg !1988

36:                                               ; preds = %19, %3
  %37 = load i32, ptr %7, align 4, !dbg !1989
  %38 = zext i32 %37 to i64, !dbg !1990
  %39 = shl i64 1, %38, !dbg !1990
  %40 = sub nsw i64 %39, 1, !dbg !1991
  %41 = load i64, ptr %8, align 8, !dbg !1992
  %42 = and i64 %41, %40, !dbg !1992
  store i64 %42, ptr %8, align 8, !dbg !1992
  %43 = load i32, ptr %7, align 4, !dbg !1993
  %44 = load i32, ptr %9, align 4, !dbg !1994
  %45 = add nsw i32 %44, %43, !dbg !1994
  store i32 %45, ptr %9, align 4, !dbg !1994
  %46 = load i32, ptr %9, align 4, !dbg !1995
  %47 = sub nsw i32 24, %46, !dbg !1996
  %48 = load i64, ptr %8, align 8, !dbg !1997
  %49 = zext i32 %47 to i64, !dbg !1997
  %50 = shl i64 %48, %49, !dbg !1997
  store i64 %50, ptr %8, align 8, !dbg !1997
  %51 = load ptr, ptr %5, align 8, !dbg !1998
  %52 = getelementptr inbounds nuw %struct.working_state, ptr %51, i32 0, i32 2, !dbg !1999
  %53 = getelementptr inbounds nuw %struct.savable_state, ptr %52, i32 0, i32 0, !dbg !2000
  %54 = load i64, ptr %53, align 8, !dbg !2000
  %55 = load i64, ptr %8, align 8, !dbg !2001
  %56 = or i64 %55, %54, !dbg !2001
  store i64 %56, ptr %8, align 8, !dbg !2001
  br label %57, !dbg !2002

57:                                               ; preds = %102, %36
  %58 = load i32, ptr %9, align 4, !dbg !2003
  %59 = icmp sge i32 %58, 8, !dbg !2004
  br i1 %59, label %60, label %107, !dbg !2002

60:                                               ; preds = %57
    #dbg_declare(ptr %10, !2005, !DIExpression(), !2007)
  %61 = load i64, ptr %8, align 8, !dbg !2008
  %62 = ashr i64 %61, 16, !dbg !2009
  %63 = and i64 %62, 255, !dbg !2010
  %64 = trunc i64 %63 to i32, !dbg !2011
  store i32 %64, ptr %10, align 4, !dbg !2007
  %65 = load i32, ptr %10, align 4, !dbg !2012
  %66 = trunc i32 %65 to i8, !dbg !2012
  %67 = load ptr, ptr %5, align 8, !dbg !2012
  %68 = getelementptr inbounds nuw %struct.working_state, ptr %67, i32 0, i32 0, !dbg !2012
  %69 = load ptr, ptr %68, align 8, !dbg !2012
  %70 = getelementptr inbounds nuw i8, ptr %69, i32 1, !dbg !2012
  store ptr %70, ptr %68, align 8, !dbg !2012
  store i8 %66, ptr %69, align 1, !dbg !2012
  %71 = load ptr, ptr %5, align 8, !dbg !2014
  %72 = getelementptr inbounds nuw %struct.working_state, ptr %71, i32 0, i32 1, !dbg !2014
  %73 = load i64, ptr %72, align 8, !dbg !2014
  %74 = add i64 %73, -1, !dbg !2014
  store i64 %74, ptr %72, align 8, !dbg !2014
  %75 = icmp eq i64 %74, 0, !dbg !2014
  br i1 %75, label %76, label %82, !dbg !2014

76:                                               ; preds = %60
  %77 = load ptr, ptr %5, align 8, !dbg !2016
  %78 = call i32 @dump_buffer(ptr noundef %77), !dbg !2016
  %79 = icmp ne i32 %78, 0, !dbg !2016
  br i1 %79, label %81, label %80, !dbg !2016

80:                                               ; preds = %76
  store i32 0, ptr %4, align 4, !dbg !2018
  br label %116, !dbg !2018

81:                                               ; preds = %76
  br label %82, !dbg !2016

82:                                               ; preds = %81, %60
  %83 = load i32, ptr %10, align 4, !dbg !2020
  %84 = icmp eq i32 %83, 255, !dbg !2022
  br i1 %84, label %85, label %102, !dbg !2022

85:                                               ; preds = %82
  %86 = load ptr, ptr %5, align 8, !dbg !2023
  %87 = getelementptr inbounds nuw %struct.working_state, ptr %86, i32 0, i32 0, !dbg !2023
  %88 = load ptr, ptr %87, align 8, !dbg !2023
  %89 = getelementptr inbounds nuw i8, ptr %88, i32 1, !dbg !2023
  store ptr %89, ptr %87, align 8, !dbg !2023
  store i8 0, ptr %88, align 1, !dbg !2023
  %90 = load ptr, ptr %5, align 8, !dbg !2026
  %91 = getelementptr inbounds nuw %struct.working_state, ptr %90, i32 0, i32 1, !dbg !2026
  %92 = load i64, ptr %91, align 8, !dbg !2026
  %93 = add i64 %92, -1, !dbg !2026
  store i64 %93, ptr %91, align 8, !dbg !2026
  %94 = icmp eq i64 %93, 0, !dbg !2026
  br i1 %94, label %95, label %101, !dbg !2026

95:                                               ; preds = %85
  %96 = load ptr, ptr %5, align 8, !dbg !2028
  %97 = call i32 @dump_buffer(ptr noundef %96), !dbg !2028
  %98 = icmp ne i32 %97, 0, !dbg !2028
  br i1 %98, label %100, label %99, !dbg !2028

99:                                               ; preds = %95
  store i32 0, ptr %4, align 4, !dbg !2030
  br label %116, !dbg !2030

100:                                              ; preds = %95
  br label %101, !dbg !2028

101:                                              ; preds = %100, %85
  br label %102, !dbg !2032

102:                                              ; preds = %101, %82
  %103 = load i64, ptr %8, align 8, !dbg !2033
  %104 = shl i64 %103, 8, !dbg !2033
  store i64 %104, ptr %8, align 8, !dbg !2033
  %105 = load i32, ptr %9, align 4, !dbg !2034
  %106 = sub nsw i32 %105, 8, !dbg !2034
  store i32 %106, ptr %9, align 4, !dbg !2034
  br label %57, !dbg !2002, !llvm.loop !2035

107:                                              ; preds = %57
  %108 = load i64, ptr %8, align 8, !dbg !2037
  %109 = load ptr, ptr %5, align 8, !dbg !2038
  %110 = getelementptr inbounds nuw %struct.working_state, ptr %109, i32 0, i32 2, !dbg !2039
  %111 = getelementptr inbounds nuw %struct.savable_state, ptr %110, i32 0, i32 0, !dbg !2040
  store i64 %108, ptr %111, align 8, !dbg !2041
  %112 = load i32, ptr %9, align 4, !dbg !2042
  %113 = load ptr, ptr %5, align 8, !dbg !2043
  %114 = getelementptr inbounds nuw %struct.working_state, ptr %113, i32 0, i32 2, !dbg !2044
  %115 = getelementptr inbounds nuw %struct.savable_state, ptr %114, i32 0, i32 1, !dbg !2045
  store i32 %112, ptr %115, align 8, !dbg !2046
  store i32 1, ptr %4, align 4, !dbg !2047
  br label %116, !dbg !2047

116:                                              ; preds = %107, %99, %80
  %117 = load i32, ptr %4, align 4, !dbg !2048
  ret i32 %117, !dbg !2048
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!554, !555, !556, !557, !558, !559, !560}
!llvm.ident = !{!561}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !149, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jchuff.c", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "6590eac4e6429b1e1d29e20b489bf6d5")
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
!149 = !{!150, !151, !163, !219, !179, !162, !287, !289, !290, !531, !552, !317, !542, !5}
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "c_derived_tbl", file: !153, line: 19, baseType: !154)
!153 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jchuff.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "5bae8b1c561c9841cb394bb534daf1ce")
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !153, line: 15, size: 10240, elements: !155)
!155 = !{!156, !160}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "ehufco", scope: !154, file: !153, line: 16, baseType: !157, size: 8192)
!157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 8192, elements: !158)
!158 = !{!159}
!159 = !DISubrange(count: 256)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "ehufsi", scope: !154, file: !153, line: 17, baseType: !161, size: 2048, offset: 8192)
!161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 2048, elements: !158)
!162 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "j_common_ptr", file: !4, line: 248, baseType: !164)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_common_struct", file: !4, line: 240, size: 256, elements: !166)
!166 = !{!167, !211, !276, !285, !286}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !165, file: !4, line: 241, baseType: !168, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_error_mgr", file: !4, line: 618, size: 1344, elements: !170)
!170 = !{!171, !175, !180, !181, !186, !187, !188, !199, !200, !202, !207, !208, !209, !210}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "error_exit", scope: !169, file: !4, line: 620, baseType: !172, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = !DISubroutineType(types: !174)
!174 = !{null, !163}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "emit_message", scope: !169, file: !4, line: 622, baseType: !176, size: 64, offset: 64)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = !DISubroutineType(types: !178)
!178 = !{null, !163, !179}
!179 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "output_message", scope: !169, file: !4, line: 624, baseType: !172, size: 64, offset: 128)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "format_message", scope: !169, file: !4, line: 626, baseType: !182, size: 64, offset: 192)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = !DISubroutineType(types: !184)
!184 = !{null, !163, !185}
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "reset_error_mgr", scope: !169, file: !4, line: 629, baseType: !172, size: 64, offset: 256)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "msg_code", scope: !169, file: !4, line: 634, baseType: !179, size: 32, offset: 320)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "msg_parm", scope: !169, file: !4, line: 639, baseType: !189, size: 640, offset: 352)
!189 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !169, file: !4, line: 636, size: 640, elements: !190)
!190 = !{!191, !195}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !189, file: !4, line: 637, baseType: !192, size: 256)
!192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 256, elements: !193)
!193 = !{!194}
!194 = !DISubrange(count: 8)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !189, file: !4, line: 638, baseType: !196, size: 640)
!196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 640, elements: !197)
!197 = !{!198}
!198 = !DISubrange(count: 80)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "trace_level", scope: !169, file: !4, line: 643, baseType: !179, size: 32, offset: 992)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "num_warnings", scope: !169, file: !4, line: 651, baseType: !201, size: 64, offset: 1024)
!201 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "jpeg_message_table", scope: !169, file: !4, line: 663, baseType: !203, size: 64, offset: 1088)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !205)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !162)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "last_jpeg_message", scope: !169, file: !4, line: 664, baseType: !179, size: 32, offset: 1152)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "addon_message_table", scope: !169, file: !4, line: 668, baseType: !203, size: 64, offset: 1216)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "first_addon_message", scope: !169, file: !4, line: 669, baseType: !179, size: 32, offset: 1280)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "last_addon_message", scope: !169, file: !4, line: 670, baseType: !179, size: 32, offset: 1312)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !165, file: !4, line: 241, baseType: !212, size: 64, offset: 64)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_memory_mgr", file: !4, line: 731, size: 768, elements: !214)
!214 = !{!215, !222, !223, !235, !249, !257, !264, !265, !269, !273, !274, !275}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_small", scope: !213, file: !4, line: 733, baseType: !216, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!217 = !DISubroutineType(types: !218)
!218 = !{!150, !163, !179, !219}
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !220, line: 18, baseType: !221)
!220 = !DIFile(filename: "/usr/local/lib/clang/20/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!221 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_large", scope: !213, file: !4, line: 735, baseType: !216, size: 64, offset: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_sarray", scope: !213, file: !4, line: 737, baseType: !224, size: 64, offset: 128)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = !DISubroutineType(types: !226)
!226 = !{!227, !163, !179, !234, !234}
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPARRAY", file: !4, line: 67, baseType: !228)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPROW", file: !4, line: 66, baseType: !230)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPLE", file: !232, line: 59, baseType: !233)
!232 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jmorecfg.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "56a0eda58fafa6bdd5498f702a998c09")
!233 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "JDIMENSION", file: !232, line: 171, baseType: !5)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_barray", scope: !213, file: !4, line: 740, baseType: !236, size: 64, offset: 192)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = !DISubroutineType(types: !238)
!238 = !{!239, !163, !179, !234, !234}
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "JBLOCKARRAY", file: !4, line: 72, baseType: !240)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "JBLOCKROW", file: !4, line: 71, baseType: !242)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "JBLOCK", file: !4, line: 70, baseType: !244)
!244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !245, size: 1024, elements: !247)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "JCOEF", file: !232, line: 99, baseType: !246)
!246 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!247 = !{!248}
!248 = !DISubrange(count: 64)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "request_virt_sarray", scope: !213, file: !4, line: 743, baseType: !250, size: 64, offset: 256)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!251 = !DISubroutineType(types: !252)
!252 = !{!253, !163, !179, !256, !234, !234, !234}
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "jvirt_sarray_ptr", file: !4, line: 727, baseType: !254)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = !DICompositeType(tag: DW_TAG_structure_type, name: "jvirt_sarray_control", file: !4, line: 727, flags: DIFlagFwdDecl)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "boolean", file: !232, line: 227, baseType: !179)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "request_virt_barray", scope: !213, file: !4, line: 749, baseType: !258, size: 64, offset: 320)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DISubroutineType(types: !260)
!260 = !{!261, !163, !179, !256, !234, !234, !234}
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "jvirt_barray_ptr", file: !4, line: 728, baseType: !262)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = !DICompositeType(tag: DW_TAG_structure_type, name: "jvirt_barray_control", file: !4, line: 728, flags: DIFlagFwdDecl)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "realize_virt_arrays", scope: !213, file: !4, line: 755, baseType: !172, size: 64, offset: 384)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "access_virt_sarray", scope: !213, file: !4, line: 756, baseType: !266, size: 64, offset: 448)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = !DISubroutineType(types: !268)
!268 = !{!227, !163, !253, !234, !234, !256}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "access_virt_barray", scope: !213, file: !4, line: 761, baseType: !270, size: 64, offset: 512)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = !DISubroutineType(types: !272)
!272 = !{!239, !163, !261, !234, !234, !256}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "free_pool", scope: !213, file: !4, line: 766, baseType: !176, size: 64, offset: 576)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "self_destruct", scope: !213, file: !4, line: 767, baseType: !172, size: 64, offset: 640)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "max_memory_to_use", scope: !213, file: !4, line: 774, baseType: !201, size: 64, offset: 704)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "progress", scope: !165, file: !4, line: 241, baseType: !277, size: 64, offset: 128)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_progress_mgr", file: !4, line: 676, size: 256, elements: !279)
!279 = !{!280, !281, !282, !283, !284}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "progress_monitor", scope: !278, file: !4, line: 677, baseType: !172, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "pass_counter", scope: !278, file: !4, line: 679, baseType: !201, size: 64, offset: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "pass_limit", scope: !278, file: !4, line: 680, baseType: !201, size: 64, offset: 128)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "completed_passes", scope: !278, file: !4, line: 681, baseType: !179, size: 32, offset: 192)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "total_passes", scope: !278, file: !4, line: 682, baseType: !179, size: 32, offset: 224)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "is_decompressor", scope: !165, file: !4, line: 241, baseType: !256, size: 32, offset: 192)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "global_state", scope: !165, file: !4, line: 241, baseType: !179, size: 32, offset: 224)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT8", file: !232, line: 135, baseType: !233)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "huff_entropy_ptr", file: !1, line: 74, baseType: !291)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "huff_entropy_encoder", file: !1, line: 72, baseType: !293)
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 55, size: 1536, elements: !294)
!294 = !{!295, !537, !545, !546, !547, !549, !550, !553}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "pub", scope: !293, file: !1, line: 56, baseType: !296, size: 192)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_entropy_encoder", file: !19, line: 113, size: 192, elements: !297)
!297 = !{!298, !532, !536}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !296, file: !19, line: 114, baseType: !299, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = !DISubroutineType(types: !301)
!301 = !{null, !302, !256}
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "j_compress_ptr", file: !4, line: 249, baseType: !303)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_compress_struct", file: !4, line: 255, size: 3968, elements: !305)
!305 = !{!306, !307, !308, !309, !310, !311, !328, !329, !330, !331, !333, !335, !336, !337, !338, !373, !377, !390, !391, !395, !396, !397, !398, !411, !412, !413, !414, !415, !416, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !433, !434, !435, !436, !440, !441, !442, !443, !444, !453, !467, !478, !487, !502, !511, !521, !530}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !304, file: !4, line: 256, baseType: !168, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !304, file: !4, line: 256, baseType: !212, size: 64, offset: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "progress", scope: !304, file: !4, line: 256, baseType: !277, size: 64, offset: 128)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "is_decompressor", scope: !304, file: !4, line: 256, baseType: !256, size: 32, offset: 192)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "global_state", scope: !304, file: !4, line: 256, baseType: !179, size: 32, offset: 224)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !304, file: !4, line: 259, baseType: !312, size: 64, offset: 256)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_destination_mgr", file: !4, line: 688, size: 320, elements: !314)
!314 = !{!315, !318, !319, !323, !327}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "next_output_byte", scope: !313, file: !4, line: 689, baseType: !316, size: 64)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "JOCTET", file: !232, line: 110, baseType: !233)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "free_in_buffer", scope: !313, file: !4, line: 690, baseType: !219, size: 64, offset: 64)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "init_destination", scope: !313, file: !4, line: 692, baseType: !320, size: 64, offset: 128)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = !DISubroutineType(types: !322)
!322 = !{null, !302}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "empty_output_buffer", scope: !313, file: !4, line: 693, baseType: !324, size: 64, offset: 192)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = !DISubroutineType(types: !326)
!326 = !{!256, !302}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "term_destination", scope: !313, file: !4, line: 694, baseType: !320, size: 64, offset: 256)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "image_width", scope: !304, file: !4, line: 266, baseType: !234, size: 32, offset: 320)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "image_height", scope: !304, file: !4, line: 267, baseType: !234, size: 32, offset: 352)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "input_components", scope: !304, file: !4, line: 268, baseType: !179, size: 32, offset: 384)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "in_color_space", scope: !304, file: !4, line: 269, baseType: !332, size: 32, offset: 416)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_COLOR_SPACE", file: !4, line: 201, baseType: !3)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "input_gamma", scope: !304, file: !4, line: 271, baseType: !334, size: 64, offset: 448)
!334 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "data_precision", scope: !304, file: !4, line: 281, baseType: !179, size: 32, offset: 512)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "num_components", scope: !304, file: !4, line: 283, baseType: !179, size: 32, offset: 544)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "jpeg_color_space", scope: !304, file: !4, line: 284, baseType: !332, size: 32, offset: 576)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "comp_info", scope: !304, file: !4, line: 286, baseType: !339, size: 64, offset: 640)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "jpeg_component_info", file: !4, line: 179, baseType: !341)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 116, size: 768, elements: !342)
!342 = !{!343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !372}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "component_id", scope: !341, file: !4, line: 120, baseType: !179, size: 32)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "component_index", scope: !341, file: !4, line: 121, baseType: !179, size: 32, offset: 32)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "h_samp_factor", scope: !341, file: !4, line: 122, baseType: !179, size: 32, offset: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "v_samp_factor", scope: !341, file: !4, line: 123, baseType: !179, size: 32, offset: 96)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "quant_tbl_no", scope: !341, file: !4, line: 124, baseType: !179, size: 32, offset: 128)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "dc_tbl_no", scope: !341, file: !4, line: 129, baseType: !179, size: 32, offset: 160)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tbl_no", scope: !341, file: !4, line: 130, baseType: !179, size: 32, offset: 192)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "width_in_blocks", scope: !341, file: !4, line: 139, baseType: !234, size: 32, offset: 224)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "height_in_blocks", scope: !341, file: !4, line: 140, baseType: !234, size: 32, offset: 256)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "DCT_scaled_size", scope: !341, file: !4, line: 147, baseType: !179, size: 32, offset: 288)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "downsampled_width", scope: !341, file: !4, line: 154, baseType: !234, size: 32, offset: 320)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "downsampled_height", scope: !341, file: !4, line: 155, baseType: !234, size: 32, offset: 352)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "component_needed", scope: !341, file: !4, line: 160, baseType: !256, size: 32, offset: 384)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_width", scope: !341, file: !4, line: 164, baseType: !179, size: 32, offset: 416)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_height", scope: !341, file: !4, line: 165, baseType: !179, size: 32, offset: 448)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_blocks", scope: !341, file: !4, line: 166, baseType: !179, size: 32, offset: 480)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_sample_width", scope: !341, file: !4, line: 167, baseType: !179, size: 32, offset: 512)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "last_col_width", scope: !341, file: !4, line: 168, baseType: !179, size: 32, offset: 544)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "last_row_height", scope: !341, file: !4, line: 169, baseType: !179, size: 32, offset: 576)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "quant_table", scope: !341, file: !4, line: 175, baseType: !363, size: 64, offset: 640)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "JQUANT_TBL", file: !4, line: 95, baseType: !365)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 83, size: 1056, elements: !366)
!366 = !{!367, !371}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "quantval", scope: !365, file: !4, line: 88, baseType: !368, size: 1024)
!368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !369, size: 1024, elements: !247)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT16", file: !232, line: 147, baseType: !370)
!370 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "sent_table", scope: !365, file: !4, line: 94, baseType: !256, size: 32, offset: 1024)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "dct_table", scope: !341, file: !4, line: 178, baseType: !150, size: 64, offset: 704)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "quant_tbl_ptrs", scope: !304, file: !4, line: 289, baseType: !374, size: 256, offset: 704)
!374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !363, size: 256, elements: !375)
!375 = !{!376}
!376 = !DISubrange(count: 4)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "dc_huff_tbl_ptrs", scope: !304, file: !4, line: 292, baseType: !378, size: 256, offset: 960)
!378 = !DICompositeType(tag: DW_TAG_array_type, baseType: !379, size: 256, elements: !375)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "JHUFF_TBL", file: !4, line: 111, baseType: !381)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 100, size: 2240, elements: !382)
!382 = !{!383, !387, !389}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !381, file: !4, line: 102, baseType: !384, size: 136)
!384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !289, size: 136, elements: !385)
!385 = !{!386}
!386 = !DISubrange(count: 17)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "huffval", scope: !381, file: !4, line: 104, baseType: !388, size: 2048, offset: 136)
!388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !289, size: 2048, elements: !158)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "sent_table", scope: !381, file: !4, line: 110, baseType: !256, size: 32, offset: 2208)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "ac_huff_tbl_ptrs", scope: !304, file: !4, line: 293, baseType: !378, size: 256, offset: 1216)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "arith_dc_L", scope: !304, file: !4, line: 296, baseType: !392, size: 128, offset: 1472)
!392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !289, size: 128, elements: !393)
!393 = !{!394}
!394 = !DISubrange(count: 16)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "arith_dc_U", scope: !304, file: !4, line: 297, baseType: !392, size: 128, offset: 1600)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "arith_ac_K", scope: !304, file: !4, line: 298, baseType: !392, size: 128, offset: 1728)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "num_scans", scope: !304, file: !4, line: 300, baseType: !179, size: 32, offset: 1856)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "scan_info", scope: !304, file: !4, line: 301, baseType: !399, size: 64, offset: 1920)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !401)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "jpeg_scan_info", file: !4, line: 189, baseType: !402)
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 184, size: 288, elements: !403)
!403 = !{!404, !405, !407, !408, !409, !410}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "comps_in_scan", scope: !402, file: !4, line: 185, baseType: !179, size: 32)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "component_index", scope: !402, file: !4, line: 186, baseType: !406, size: 128, offset: 32)
!406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 128, elements: !375)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "Ss", scope: !402, file: !4, line: 187, baseType: !179, size: 32, offset: 160)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "Se", scope: !402, file: !4, line: 187, baseType: !179, size: 32, offset: 192)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "Ah", scope: !402, file: !4, line: 188, baseType: !179, size: 32, offset: 224)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "Al", scope: !402, file: !4, line: 188, baseType: !179, size: 32, offset: 256)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "raw_data_in", scope: !304, file: !4, line: 307, baseType: !256, size: 32, offset: 1984)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "arith_code", scope: !304, file: !4, line: 308, baseType: !256, size: 32, offset: 2016)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_coding", scope: !304, file: !4, line: 309, baseType: !256, size: 32, offset: 2048)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "CCIR601_sampling", scope: !304, file: !4, line: 310, baseType: !256, size: 32, offset: 2080)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "smoothing_factor", scope: !304, file: !4, line: 311, baseType: !179, size: 32, offset: 2112)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "dct_method", scope: !304, file: !4, line: 312, baseType: !417, size: 32, offset: 2144)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_DCT_METHOD", file: !4, line: 209, baseType: !13)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "restart_interval", scope: !304, file: !4, line: 319, baseType: !5, size: 32, offset: 2176)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "restart_in_rows", scope: !304, file: !4, line: 320, baseType: !179, size: 32, offset: 2208)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "write_JFIF_header", scope: !304, file: !4, line: 324, baseType: !256, size: 32, offset: 2240)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "density_unit", scope: !304, file: !4, line: 329, baseType: !289, size: 8, offset: 2272)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "X_density", scope: !304, file: !4, line: 330, baseType: !369, size: 16, offset: 2288)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "Y_density", scope: !304, file: !4, line: 331, baseType: !369, size: 16, offset: 2304)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "write_Adobe_marker", scope: !304, file: !4, line: 332, baseType: !256, size: 32, offset: 2336)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "next_scanline", scope: !304, file: !4, line: 339, baseType: !234, size: 32, offset: 2368)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "progressive_mode", scope: !304, file: !4, line: 348, baseType: !256, size: 32, offset: 2400)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "max_h_samp_factor", scope: !304, file: !4, line: 349, baseType: !179, size: 32, offset: 2432)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "max_v_samp_factor", scope: !304, file: !4, line: 350, baseType: !179, size: 32, offset: 2464)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "total_iMCU_rows", scope: !304, file: !4, line: 352, baseType: !234, size: 32, offset: 2496)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "comps_in_scan", scope: !304, file: !4, line: 363, baseType: !179, size: 32, offset: 2528)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "cur_comp_info", scope: !304, file: !4, line: 364, baseType: !432, size: 256, offset: 2560)
!432 = !DICompositeType(tag: DW_TAG_array_type, baseType: !339, size: 256, elements: !375)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "MCUs_per_row", scope: !304, file: !4, line: 367, baseType: !234, size: 32, offset: 2816)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_rows_in_scan", scope: !304, file: !4, line: 368, baseType: !234, size: 32, offset: 2848)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "blocks_in_MCU", scope: !304, file: !4, line: 370, baseType: !179, size: 32, offset: 2880)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_membership", scope: !304, file: !4, line: 371, baseType: !437, size: 320, offset: 2912)
!437 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 320, elements: !438)
!438 = !{!439}
!439 = !DISubrange(count: 10)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "Ss", scope: !304, file: !4, line: 375, baseType: !179, size: 32, offset: 3232)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "Se", scope: !304, file: !4, line: 375, baseType: !179, size: 32, offset: 3264)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "Ah", scope: !304, file: !4, line: 375, baseType: !179, size: 32, offset: 3296)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "Al", scope: !304, file: !4, line: 375, baseType: !179, size: 32, offset: 3328)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !304, file: !4, line: 380, baseType: !445, size: 64, offset: 3392)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_comp_master", file: !19, line: 45, size: 256, elements: !447)
!447 = !{!448, !449, !450, !451, !452}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_for_pass", scope: !446, file: !19, line: 46, baseType: !320, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "pass_startup", scope: !446, file: !19, line: 47, baseType: !320, size: 64, offset: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "finish_pass", scope: !446, file: !19, line: 48, baseType: !320, size: 64, offset: 128)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "call_pass_startup", scope: !446, file: !19, line: 51, baseType: !256, size: 32, offset: 192)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "is_last_pass", scope: !446, file: !19, line: 52, baseType: !256, size: 32, offset: 224)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "main", scope: !304, file: !4, line: 381, baseType: !454, size: 64, offset: 3456)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_c_main_controller", file: !19, line: 56, size: 128, elements: !456)
!456 = !{!457, !462}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !455, file: !19, line: 57, baseType: !458, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = !DISubroutineType(types: !460)
!460 = !{null, !302, !461}
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_BUF_MODE", file: !19, line: 22, baseType: !18)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "process_data", scope: !455, file: !19, line: 58, baseType: !463, size: 64, offset: 64)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = !DISubroutineType(types: !465)
!465 = !{null, !302, !227, !466, !234}
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "prep", scope: !304, file: !4, line: 382, baseType: !468, size: 64, offset: 3520)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_c_prep_controller", file: !19, line: 64, size: 128, elements: !470)
!470 = !{!471, !472}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !469, file: !19, line: 65, baseType: !458, size: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "pre_process_data", scope: !469, file: !19, line: 66, baseType: !473, size: 64, offset: 64)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DISubroutineType(types: !475)
!475 = !{null, !302, !227, !466, !234, !476, !466, !234}
!476 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPIMAGE", file: !4, line: 68, baseType: !477)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "coef", scope: !304, file: !4, line: 383, baseType: !479, size: 64, offset: 3584)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_c_coef_controller", file: !19, line: 76, size: 128, elements: !481)
!481 = !{!482, !483}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !480, file: !19, line: 77, baseType: !458, size: 64)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "compress_data", scope: !480, file: !19, line: 78, baseType: !484, size: 64, offset: 64)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = !DISubroutineType(types: !486)
!486 = !{!256, !302, !476}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "marker", scope: !304, file: !4, line: 384, baseType: !488, size: 64, offset: 3648)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_marker_writer", file: !19, line: 120, size: 384, elements: !490)
!490 = !{!491, !497, !498, !499, !500, !501}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "write_any_marker", scope: !489, file: !19, line: 123, baseType: !492, size: 64)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = !DISubroutineType(types: !494)
!494 = !{null, !302, !179, !495, !5}
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !317)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_header", scope: !489, file: !19, line: 125, baseType: !320, size: 64, offset: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "write_frame_header", scope: !489, file: !19, line: 126, baseType: !320, size: 64, offset: 128)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "write_scan_header", scope: !489, file: !19, line: 127, baseType: !320, size: 64, offset: 192)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_trailer", scope: !489, file: !19, line: 128, baseType: !320, size: 64, offset: 256)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "write_tables_only", scope: !489, file: !19, line: 129, baseType: !320, size: 64, offset: 320)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "cconvert", scope: !304, file: !4, line: 385, baseType: !503, size: 64, offset: 3712)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_color_converter", file: !19, line: 83, size: 128, elements: !505)
!505 = !{!506, !507}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !504, file: !19, line: 84, baseType: !320, size: 64)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "color_convert", scope: !504, file: !19, line: 85, baseType: !508, size: 64, offset: 64)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = !DISubroutineType(types: !510)
!510 = !{null, !302, !227, !476, !234, !179}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "downsample", scope: !304, file: !4, line: 386, baseType: !512, size: 64, offset: 3776)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_downsampler", file: !19, line: 91, size: 192, elements: !514)
!514 = !{!515, !516, !520}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !513, file: !19, line: 92, baseType: !320, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "downsample", scope: !513, file: !19, line: 93, baseType: !517, size: 64, offset: 64)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = !DISubroutineType(types: !519)
!519 = !{null, !302, !476, !234, !476, !234}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "need_context_rows", scope: !513, file: !19, line: 98, baseType: !256, size: 32, offset: 128)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "fdct", scope: !304, file: !4, line: 387, baseType: !522, size: 64, offset: 3840)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_forward_dct", file: !19, line: 102, size: 128, elements: !524)
!524 = !{!525, !526}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !523, file: !19, line: 103, baseType: !320, size: 64)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "forward_DCT", scope: !523, file: !19, line: 105, baseType: !527, size: 64, offset: 64)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = !DISubroutineType(types: !529)
!529 = !{null, !302, !339, !227, !241, !234, !234, !234}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "entropy", scope: !304, file: !4, line: 388, baseType: !531, size: 64, offset: 3904)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "encode_mcu", scope: !296, file: !19, line: 115, baseType: !533, size: 64, offset: 64)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = !DISubroutineType(types: !535)
!535 = !{!256, !302, !240}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "finish_pass", scope: !296, file: !19, line: 116, baseType: !320, size: 64, offset: 128)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "saved", scope: !293, file: !1, line: 58, baseType: !538, size: 256, offset: 192)
!538 = !DIDerivedType(tag: DW_TAG_typedef, name: "savable_state", file: !1, line: 33, baseType: !539)
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 29, size: 256, elements: !540)
!540 = !{!541, !543, !544}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "put_buffer", scope: !539, file: !1, line: 30, baseType: !542, size: 64)
!542 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT32", file: !232, line: 161, baseType: !201)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "put_bits", scope: !539, file: !1, line: 31, baseType: !179, size: 32, offset: 64)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "last_dc_val", scope: !539, file: !1, line: 32, baseType: !406, size: 128, offset: 96)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "restarts_to_go", scope: !293, file: !1, line: 61, baseType: !5, size: 32, offset: 448)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "next_restart_num", scope: !293, file: !1, line: 62, baseType: !179, size: 32, offset: 480)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "dc_derived_tbls", scope: !293, file: !1, line: 65, baseType: !548, size: 256, offset: 512)
!548 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 256, elements: !375)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "ac_derived_tbls", scope: !293, file: !1, line: 66, baseType: !548, size: 256, offset: 768)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "dc_count_ptrs", scope: !293, file: !1, line: 69, baseType: !551, size: 256, offset: 1024)
!551 = !DICompositeType(tag: DW_TAG_array_type, baseType: !552, size: 256, elements: !375)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "ac_count_ptrs", scope: !293, file: !1, line: 70, baseType: !551, size: 256, offset: 1280)
!554 = !{i32 7, !"Dwarf Version", i32 5}
!555 = !{i32 2, !"Debug Info Version", i32 3}
!556 = !{i32 1, !"wchar_size", i32 4}
!557 = !{i32 8, !"PIC Level", i32 2}
!558 = !{i32 7, !"PIE Level", i32 2}
!559 = !{i32 7, !"uwtable", i32 2}
!560 = !{i32 7, !"frame-pointer", i32 2}
!561 = !{!"clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)"}
!562 = distinct !DISubprogram(name: "jpeg_make_c_derived_tbl", scope: !1, file: !1, line: 179, type: !563, scopeLine: 181, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !566)
!563 = !DISubroutineType(types: !564)
!564 = !{null, !302, !379, !565}
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!566 = !{}
!567 = !DILocalVariable(name: "cinfo", arg: 1, scope: !562, file: !1, line: 179, type: !302)
!568 = !DILocation(line: 179, column: 41, scope: !562)
!569 = !DILocalVariable(name: "htbl", arg: 2, scope: !562, file: !1, line: 179, type: !379)
!570 = !DILocation(line: 179, column: 60, scope: !562)
!571 = !DILocalVariable(name: "pdtbl", arg: 3, scope: !562, file: !1, line: 180, type: !565)
!572 = !DILocation(line: 180, column: 22, scope: !562)
!573 = !DILocalVariable(name: "dtbl", scope: !562, file: !1, line: 182, type: !151)
!574 = !DILocation(line: 182, column: 18, scope: !562)
!575 = !DILocalVariable(name: "p", scope: !562, file: !1, line: 183, type: !179)
!576 = !DILocation(line: 183, column: 7, scope: !562)
!577 = !DILocalVariable(name: "i", scope: !562, file: !1, line: 183, type: !179)
!578 = !DILocation(line: 183, column: 10, scope: !562)
!579 = !DILocalVariable(name: "l", scope: !562, file: !1, line: 183, type: !179)
!580 = !DILocation(line: 183, column: 13, scope: !562)
!581 = !DILocalVariable(name: "lastp", scope: !562, file: !1, line: 183, type: !179)
!582 = !DILocation(line: 183, column: 16, scope: !562)
!583 = !DILocalVariable(name: "si", scope: !562, file: !1, line: 183, type: !179)
!584 = !DILocation(line: 183, column: 23, scope: !562)
!585 = !DILocalVariable(name: "huffsize", scope: !562, file: !1, line: 184, type: !586)
!586 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 2056, elements: !587)
!587 = !{!588}
!588 = !DISubrange(count: 257)
!589 = !DILocation(line: 184, column: 8, scope: !562)
!590 = !DILocalVariable(name: "huffcode", scope: !562, file: !1, line: 185, type: !591)
!591 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 8224, elements: !587)
!592 = !DILocation(line: 185, column: 16, scope: !562)
!593 = !DILocalVariable(name: "code", scope: !562, file: !1, line: 186, type: !5)
!594 = !DILocation(line: 186, column: 16, scope: !562)
!595 = !DILocation(line: 189, column: 8, scope: !596)
!596 = distinct !DILexicalBlock(scope: !562, file: !1, line: 189, column: 7)
!597 = !DILocation(line: 189, column: 7, scope: !596)
!598 = !DILocation(line: 189, column: 14, scope: !596)
!599 = !DILocation(line: 191, column: 9, scope: !596)
!600 = !DILocation(line: 191, column: 16, scope: !596)
!601 = !DILocation(line: 191, column: 21, scope: !596)
!602 = !DILocation(line: 191, column: 50, scope: !596)
!603 = !DILocation(line: 191, column: 7, scope: !596)
!604 = !DILocation(line: 190, column: 6, scope: !596)
!605 = !DILocation(line: 190, column: 12, scope: !596)
!606 = !DILocation(line: 190, column: 5, scope: !596)
!607 = !DILocation(line: 193, column: 11, scope: !562)
!608 = !DILocation(line: 193, column: 10, scope: !562)
!609 = !DILocation(line: 193, column: 8, scope: !562)
!610 = !DILocation(line: 198, column: 5, scope: !562)
!611 = !DILocation(line: 199, column: 10, scope: !612)
!612 = distinct !DILexicalBlock(scope: !562, file: !1, line: 199, column: 3)
!613 = !DILocation(line: 199, column: 8, scope: !612)
!614 = !DILocation(line: 199, column: 15, scope: !615)
!615 = distinct !DILexicalBlock(scope: !612, file: !1, line: 199, column: 3)
!616 = !DILocation(line: 199, column: 17, scope: !615)
!617 = !DILocation(line: 199, column: 3, scope: !612)
!618 = !DILocation(line: 200, column: 12, scope: !619)
!619 = distinct !DILexicalBlock(scope: !620, file: !1, line: 200, column: 5)
!620 = distinct !DILexicalBlock(scope: !615, file: !1, line: 199, column: 29)
!621 = !DILocation(line: 200, column: 10, scope: !619)
!622 = !DILocation(line: 200, column: 17, scope: !623)
!623 = distinct !DILexicalBlock(scope: !619, file: !1, line: 200, column: 5)
!624 = !DILocation(line: 200, column: 28, scope: !623)
!625 = !DILocation(line: 200, column: 34, scope: !623)
!626 = !DILocation(line: 200, column: 39, scope: !623)
!627 = !DILocation(line: 200, column: 22, scope: !623)
!628 = !DILocation(line: 200, column: 19, scope: !623)
!629 = !DILocation(line: 200, column: 5, scope: !619)
!630 = !DILocation(line: 201, column: 30, scope: !623)
!631 = !DILocation(line: 201, column: 23, scope: !623)
!632 = !DILocation(line: 201, column: 17, scope: !623)
!633 = !DILocation(line: 201, column: 7, scope: !623)
!634 = !DILocation(line: 201, column: 21, scope: !623)
!635 = !DILocation(line: 200, column: 44, scope: !623)
!636 = !DILocation(line: 200, column: 5, scope: !623)
!637 = distinct !{!637, !629, !638, !639}
!638 = !DILocation(line: 201, column: 30, scope: !619)
!639 = !{!"llvm.loop.mustprogress"}
!640 = !DILocation(line: 202, column: 3, scope: !620)
!641 = !DILocation(line: 199, column: 25, scope: !615)
!642 = !DILocation(line: 199, column: 3, scope: !615)
!643 = distinct !{!643, !617, !644, !639}
!644 = !DILocation(line: 202, column: 3, scope: !612)
!645 = !DILocation(line: 203, column: 12, scope: !562)
!646 = !DILocation(line: 203, column: 3, scope: !562)
!647 = !DILocation(line: 203, column: 15, scope: !562)
!648 = !DILocation(line: 204, column: 11, scope: !562)
!649 = !DILocation(line: 204, column: 9, scope: !562)
!650 = !DILocation(line: 209, column: 8, scope: !562)
!651 = !DILocation(line: 210, column: 8, scope: !562)
!652 = !DILocation(line: 210, column: 6, scope: !562)
!653 = !DILocation(line: 211, column: 5, scope: !562)
!654 = !DILocation(line: 212, column: 3, scope: !562)
!655 = !DILocation(line: 212, column: 19, scope: !562)
!656 = !DILocation(line: 212, column: 10, scope: !562)
!657 = !DILocation(line: 213, column: 5, scope: !658)
!658 = distinct !DILexicalBlock(scope: !562, file: !1, line: 212, column: 23)
!659 = !DILocation(line: 213, column: 28, scope: !658)
!660 = !DILocation(line: 213, column: 19, scope: !658)
!661 = !DILocation(line: 213, column: 13, scope: !658)
!662 = !DILocation(line: 213, column: 35, scope: !658)
!663 = !DILocation(line: 213, column: 32, scope: !658)
!664 = !DILocation(line: 214, column: 23, scope: !665)
!665 = distinct !DILexicalBlock(scope: !658, file: !1, line: 213, column: 39)
!666 = !DILocation(line: 214, column: 17, scope: !665)
!667 = !DILocation(line: 214, column: 7, scope: !665)
!668 = !DILocation(line: 214, column: 21, scope: !665)
!669 = !DILocation(line: 215, column: 11, scope: !665)
!670 = distinct !{!670, !657, !671, !639}
!671 = !DILocation(line: 216, column: 5, scope: !658)
!672 = !DILocation(line: 217, column: 10, scope: !658)
!673 = !DILocation(line: 218, column: 7, scope: !658)
!674 = distinct !{!674, !654, !675, !639}
!675 = !DILocation(line: 219, column: 3, scope: !562)
!676 = !DILocation(line: 227, column: 3, scope: !562)
!677 = !DILocation(line: 229, column: 10, scope: !678)
!678 = distinct !DILexicalBlock(scope: !562, file: !1, line: 229, column: 3)
!679 = !DILocation(line: 229, column: 8, scope: !678)
!680 = !DILocation(line: 229, column: 15, scope: !681)
!681 = distinct !DILexicalBlock(scope: !678, file: !1, line: 229, column: 3)
!682 = !DILocation(line: 229, column: 19, scope: !681)
!683 = !DILocation(line: 229, column: 17, scope: !681)
!684 = !DILocation(line: 229, column: 3, scope: !678)
!685 = !DILocation(line: 230, column: 47, scope: !686)
!686 = distinct !DILexicalBlock(scope: !681, file: !1, line: 229, column: 31)
!687 = !DILocation(line: 230, column: 38, scope: !686)
!688 = !DILocation(line: 230, column: 5, scope: !686)
!689 = !DILocation(line: 230, column: 11, scope: !686)
!690 = !DILocation(line: 230, column: 18, scope: !686)
!691 = !DILocation(line: 230, column: 24, scope: !686)
!692 = !DILocation(line: 230, column: 32, scope: !686)
!693 = !DILocation(line: 230, column: 36, scope: !686)
!694 = !DILocation(line: 231, column: 47, scope: !686)
!695 = !DILocation(line: 231, column: 38, scope: !686)
!696 = !DILocation(line: 231, column: 5, scope: !686)
!697 = !DILocation(line: 231, column: 11, scope: !686)
!698 = !DILocation(line: 231, column: 18, scope: !686)
!699 = !DILocation(line: 231, column: 24, scope: !686)
!700 = !DILocation(line: 231, column: 32, scope: !686)
!701 = !DILocation(line: 231, column: 36, scope: !686)
!702 = !DILocation(line: 232, column: 3, scope: !686)
!703 = !DILocation(line: 229, column: 27, scope: !681)
!704 = !DILocation(line: 229, column: 3, scope: !681)
!705 = distinct !{!705, !684, !706, !639}
!706 = !DILocation(line: 232, column: 3, scope: !678)
!707 = !DILocation(line: 233, column: 1, scope: !562)
!708 = distinct !DISubprogram(name: "jpeg_gen_optimal_table", scope: !1, file: !1, line: 642, type: !709, scopeLine: 643, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !566)
!709 = !DISubroutineType(types: !710)
!710 = !{null, !302, !379, !552}
!711 = !DILocalVariable(name: "cinfo", arg: 1, scope: !708, file: !1, line: 642, type: !302)
!712 = !DILocation(line: 642, column: 40, scope: !708)
!713 = !DILocalVariable(name: "htbl", arg: 2, scope: !708, file: !1, line: 642, type: !379)
!714 = !DILocation(line: 642, column: 59, scope: !708)
!715 = !DILocalVariable(name: "freq", arg: 3, scope: !708, file: !1, line: 642, type: !552)
!716 = !DILocation(line: 642, column: 70, scope: !708)
!717 = !DILocalVariable(name: "bits", scope: !708, file: !1, line: 645, type: !718)
!718 = !DICompositeType(tag: DW_TAG_array_type, baseType: !289, size: 264, elements: !719)
!719 = !{!720}
!720 = !DISubrange(count: 33)
!721 = !DILocation(line: 645, column: 9, scope: !708)
!722 = !DILocalVariable(name: "codesize", scope: !708, file: !1, line: 646, type: !723)
!723 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 8224, elements: !587)
!724 = !DILocation(line: 646, column: 7, scope: !708)
!725 = !DILocalVariable(name: "others", scope: !708, file: !1, line: 647, type: !723)
!726 = !DILocation(line: 647, column: 7, scope: !708)
!727 = !DILocalVariable(name: "c1", scope: !708, file: !1, line: 648, type: !179)
!728 = !DILocation(line: 648, column: 7, scope: !708)
!729 = !DILocalVariable(name: "c2", scope: !708, file: !1, line: 648, type: !179)
!730 = !DILocation(line: 648, column: 11, scope: !708)
!731 = !DILocalVariable(name: "p", scope: !708, file: !1, line: 649, type: !179)
!732 = !DILocation(line: 649, column: 7, scope: !708)
!733 = !DILocalVariable(name: "i", scope: !708, file: !1, line: 649, type: !179)
!734 = !DILocation(line: 649, column: 10, scope: !708)
!735 = !DILocalVariable(name: "j", scope: !708, file: !1, line: 649, type: !179)
!736 = !DILocation(line: 649, column: 13, scope: !708)
!737 = !DILocalVariable(name: "v", scope: !708, file: !1, line: 650, type: !201)
!738 = !DILocation(line: 650, column: 8, scope: !708)
!739 = !DILocation(line: 654, column: 3, scope: !708)
!740 = !DILocation(line: 655, column: 3, scope: !708)
!741 = !DILocation(line: 656, column: 10, scope: !742)
!742 = distinct !DILexicalBlock(scope: !708, file: !1, line: 656, column: 3)
!743 = !DILocation(line: 656, column: 8, scope: !742)
!744 = !DILocation(line: 656, column: 15, scope: !745)
!745 = distinct !DILexicalBlock(scope: !742, file: !1, line: 656, column: 3)
!746 = !DILocation(line: 656, column: 17, scope: !745)
!747 = !DILocation(line: 656, column: 3, scope: !742)
!748 = !DILocation(line: 657, column: 12, scope: !745)
!749 = !DILocation(line: 657, column: 5, scope: !745)
!750 = !DILocation(line: 657, column: 15, scope: !745)
!751 = !DILocation(line: 656, column: 25, scope: !745)
!752 = !DILocation(line: 656, column: 3, scope: !745)
!753 = distinct !{!753, !747, !754, !639}
!754 = !DILocation(line: 657, column: 18, scope: !742)
!755 = !DILocation(line: 659, column: 3, scope: !708)
!756 = !DILocation(line: 659, column: 13, scope: !708)
!757 = !DILocation(line: 667, column: 3, scope: !708)
!758 = !DILocation(line: 670, column: 8, scope: !759)
!759 = distinct !DILexicalBlock(scope: !760, file: !1, line: 667, column: 12)
!760 = distinct !DILexicalBlock(scope: !761, file: !1, line: 667, column: 3)
!761 = distinct !DILexicalBlock(scope: !708, file: !1, line: 667, column: 3)
!762 = !DILocation(line: 671, column: 7, scope: !759)
!763 = !DILocation(line: 672, column: 12, scope: !764)
!764 = distinct !DILexicalBlock(scope: !759, file: !1, line: 672, column: 5)
!765 = !DILocation(line: 672, column: 10, scope: !764)
!766 = !DILocation(line: 672, column: 17, scope: !767)
!767 = distinct !DILexicalBlock(scope: !764, file: !1, line: 672, column: 5)
!768 = !DILocation(line: 672, column: 19, scope: !767)
!769 = !DILocation(line: 672, column: 5, scope: !764)
!770 = !DILocation(line: 673, column: 11, scope: !771)
!771 = distinct !DILexicalBlock(scope: !772, file: !1, line: 673, column: 11)
!772 = distinct !DILexicalBlock(scope: !767, file: !1, line: 672, column: 32)
!773 = !DILocation(line: 673, column: 16, scope: !771)
!774 = !DILocation(line: 673, column: 19, scope: !771)
!775 = !DILocation(line: 673, column: 22, scope: !771)
!776 = !DILocation(line: 673, column: 27, scope: !771)
!777 = !DILocation(line: 673, column: 33, scope: !771)
!778 = !DILocation(line: 673, column: 30, scope: !771)
!779 = !DILocation(line: 674, column: 6, scope: !780)
!780 = distinct !DILexicalBlock(scope: !771, file: !1, line: 673, column: 36)
!781 = !DILocation(line: 674, column: 11, scope: !780)
!782 = !DILocation(line: 674, column: 4, scope: !780)
!783 = !DILocation(line: 675, column: 7, scope: !780)
!784 = !DILocation(line: 675, column: 5, scope: !780)
!785 = !DILocation(line: 676, column: 7, scope: !780)
!786 = !DILocation(line: 677, column: 5, scope: !772)
!787 = !DILocation(line: 672, column: 28, scope: !767)
!788 = !DILocation(line: 672, column: 5, scope: !767)
!789 = distinct !{!789, !769, !790, !639}
!790 = !DILocation(line: 677, column: 5, scope: !764)
!791 = !DILocation(line: 681, column: 8, scope: !759)
!792 = !DILocation(line: 682, column: 7, scope: !759)
!793 = !DILocation(line: 683, column: 12, scope: !794)
!794 = distinct !DILexicalBlock(scope: !759, file: !1, line: 683, column: 5)
!795 = !DILocation(line: 683, column: 10, scope: !794)
!796 = !DILocation(line: 683, column: 17, scope: !797)
!797 = distinct !DILexicalBlock(scope: !794, file: !1, line: 683, column: 5)
!798 = !DILocation(line: 683, column: 19, scope: !797)
!799 = !DILocation(line: 683, column: 5, scope: !794)
!800 = !DILocation(line: 684, column: 11, scope: !801)
!801 = distinct !DILexicalBlock(scope: !802, file: !1, line: 684, column: 11)
!802 = distinct !DILexicalBlock(scope: !797, file: !1, line: 683, column: 32)
!803 = !DILocation(line: 684, column: 16, scope: !801)
!804 = !DILocation(line: 684, column: 19, scope: !801)
!805 = !DILocation(line: 684, column: 22, scope: !801)
!806 = !DILocation(line: 684, column: 27, scope: !801)
!807 = !DILocation(line: 684, column: 33, scope: !801)
!808 = !DILocation(line: 684, column: 30, scope: !801)
!809 = !DILocation(line: 684, column: 35, scope: !801)
!810 = !DILocation(line: 684, column: 38, scope: !801)
!811 = !DILocation(line: 684, column: 43, scope: !801)
!812 = !DILocation(line: 684, column: 40, scope: !801)
!813 = !DILocation(line: 685, column: 6, scope: !814)
!814 = distinct !DILexicalBlock(scope: !801, file: !1, line: 684, column: 47)
!815 = !DILocation(line: 685, column: 11, scope: !814)
!816 = !DILocation(line: 685, column: 4, scope: !814)
!817 = !DILocation(line: 686, column: 7, scope: !814)
!818 = !DILocation(line: 686, column: 5, scope: !814)
!819 = !DILocation(line: 687, column: 7, scope: !814)
!820 = !DILocation(line: 688, column: 5, scope: !802)
!821 = !DILocation(line: 683, column: 28, scope: !797)
!822 = !DILocation(line: 683, column: 5, scope: !797)
!823 = distinct !{!823, !799, !824, !639}
!824 = !DILocation(line: 688, column: 5, scope: !794)
!825 = !DILocation(line: 691, column: 9, scope: !826)
!826 = distinct !DILexicalBlock(scope: !759, file: !1, line: 691, column: 9)
!827 = !DILocation(line: 691, column: 12, scope: !826)
!828 = !DILocation(line: 692, column: 7, scope: !826)
!829 = !DILocation(line: 695, column: 17, scope: !759)
!830 = !DILocation(line: 695, column: 22, scope: !759)
!831 = !DILocation(line: 695, column: 5, scope: !759)
!832 = !DILocation(line: 695, column: 10, scope: !759)
!833 = !DILocation(line: 695, column: 14, scope: !759)
!834 = !DILocation(line: 696, column: 5, scope: !759)
!835 = !DILocation(line: 696, column: 10, scope: !759)
!836 = !DILocation(line: 696, column: 14, scope: !759)
!837 = !DILocation(line: 699, column: 14, scope: !759)
!838 = !DILocation(line: 699, column: 5, scope: !759)
!839 = !DILocation(line: 699, column: 17, scope: !759)
!840 = !DILocation(line: 700, column: 5, scope: !759)
!841 = !DILocation(line: 700, column: 19, scope: !759)
!842 = !DILocation(line: 700, column: 12, scope: !759)
!843 = !DILocation(line: 700, column: 23, scope: !759)
!844 = !DILocation(line: 701, column: 19, scope: !845)
!845 = distinct !DILexicalBlock(scope: !759, file: !1, line: 700, column: 29)
!846 = !DILocation(line: 701, column: 12, scope: !845)
!847 = !DILocation(line: 701, column: 10, scope: !845)
!848 = !DILocation(line: 702, column: 16, scope: !845)
!849 = !DILocation(line: 702, column: 7, scope: !845)
!850 = !DILocation(line: 702, column: 19, scope: !845)
!851 = distinct !{!851, !840, !852, !639}
!852 = !DILocation(line: 703, column: 5, scope: !759)
!853 = !DILocation(line: 705, column: 18, scope: !759)
!854 = !DILocation(line: 705, column: 12, scope: !759)
!855 = !DILocation(line: 705, column: 5, scope: !759)
!856 = !DILocation(line: 705, column: 16, scope: !759)
!857 = !DILocation(line: 708, column: 14, scope: !759)
!858 = !DILocation(line: 708, column: 5, scope: !759)
!859 = !DILocation(line: 708, column: 17, scope: !759)
!860 = !DILocation(line: 709, column: 5, scope: !759)
!861 = !DILocation(line: 709, column: 19, scope: !759)
!862 = !DILocation(line: 709, column: 12, scope: !759)
!863 = !DILocation(line: 709, column: 23, scope: !759)
!864 = !DILocation(line: 710, column: 19, scope: !865)
!865 = distinct !DILexicalBlock(scope: !759, file: !1, line: 709, column: 29)
!866 = !DILocation(line: 710, column: 12, scope: !865)
!867 = !DILocation(line: 710, column: 10, scope: !865)
!868 = !DILocation(line: 711, column: 16, scope: !865)
!869 = !DILocation(line: 711, column: 7, scope: !865)
!870 = !DILocation(line: 711, column: 19, scope: !865)
!871 = distinct !{!871, !860, !872, !639}
!872 = !DILocation(line: 712, column: 5, scope: !759)
!873 = !DILocation(line: 667, column: 3, scope: !760)
!874 = distinct !{!874, !875, !876}
!875 = !DILocation(line: 667, column: 3, scope: !761)
!876 = !DILocation(line: 713, column: 3, scope: !761)
!877 = !DILocation(line: 716, column: 10, scope: !878)
!878 = distinct !DILexicalBlock(scope: !708, file: !1, line: 716, column: 3)
!879 = !DILocation(line: 716, column: 8, scope: !878)
!880 = !DILocation(line: 716, column: 15, scope: !881)
!881 = distinct !DILexicalBlock(scope: !878, file: !1, line: 716, column: 3)
!882 = !DILocation(line: 716, column: 17, scope: !881)
!883 = !DILocation(line: 716, column: 3, scope: !878)
!884 = !DILocation(line: 717, column: 18, scope: !885)
!885 = distinct !DILexicalBlock(scope: !886, file: !1, line: 717, column: 9)
!886 = distinct !DILexicalBlock(scope: !881, file: !1, line: 716, column: 30)
!887 = !DILocation(line: 717, column: 9, scope: !885)
!888 = !DILocation(line: 720, column: 20, scope: !889)
!889 = distinct !DILexicalBlock(scope: !890, file: !1, line: 720, column: 11)
!890 = distinct !DILexicalBlock(scope: !885, file: !1, line: 717, column: 22)
!891 = !DILocation(line: 720, column: 11, scope: !889)
!892 = !DILocation(line: 720, column: 23, scope: !889)
!893 = !DILocation(line: 721, column: 2, scope: !889)
!894 = !DILocation(line: 723, column: 21, scope: !890)
!895 = !DILocation(line: 723, column: 12, scope: !890)
!896 = !DILocation(line: 723, column: 7, scope: !890)
!897 = !DILocation(line: 723, column: 24, scope: !890)
!898 = !DILocation(line: 724, column: 5, scope: !890)
!899 = !DILocation(line: 725, column: 3, scope: !886)
!900 = !DILocation(line: 716, column: 26, scope: !881)
!901 = !DILocation(line: 716, column: 3, scope: !881)
!902 = distinct !{!902, !883, !903, !639}
!903 = !DILocation(line: 725, column: 3, scope: !878)
!904 = !DILocation(line: 738, column: 10, scope: !905)
!905 = distinct !DILexicalBlock(scope: !708, file: !1, line: 738, column: 3)
!906 = !DILocation(line: 738, column: 8, scope: !905)
!907 = !DILocation(line: 738, column: 22, scope: !908)
!908 = distinct !DILexicalBlock(scope: !905, file: !1, line: 738, column: 3)
!909 = !DILocation(line: 738, column: 24, scope: !908)
!910 = !DILocation(line: 738, column: 3, scope: !905)
!911 = !DILocation(line: 739, column: 5, scope: !912)
!912 = distinct !DILexicalBlock(scope: !908, file: !1, line: 738, column: 35)
!913 = !DILocation(line: 739, column: 17, scope: !912)
!914 = !DILocation(line: 739, column: 12, scope: !912)
!915 = !DILocation(line: 739, column: 20, scope: !912)
!916 = !DILocation(line: 740, column: 11, scope: !917)
!917 = distinct !DILexicalBlock(scope: !912, file: !1, line: 739, column: 25)
!918 = !DILocation(line: 740, column: 13, scope: !917)
!919 = !DILocation(line: 740, column: 9, scope: !917)
!920 = !DILocation(line: 741, column: 7, scope: !917)
!921 = !DILocation(line: 741, column: 19, scope: !917)
!922 = !DILocation(line: 741, column: 14, scope: !917)
!923 = !DILocation(line: 741, column: 22, scope: !917)
!924 = !DILocation(line: 742, column: 3, scope: !917)
!925 = distinct !{!925, !920, !924, !639}
!926 = !DILocation(line: 744, column: 12, scope: !917)
!927 = !DILocation(line: 744, column: 7, scope: !917)
!928 = !DILocation(line: 744, column: 15, scope: !917)
!929 = !DILocation(line: 745, column: 12, scope: !917)
!930 = !DILocation(line: 745, column: 13, scope: !917)
!931 = !DILocation(line: 745, column: 7, scope: !917)
!932 = !DILocation(line: 745, column: 16, scope: !917)
!933 = !DILocation(line: 746, column: 12, scope: !917)
!934 = !DILocation(line: 746, column: 13, scope: !917)
!935 = !DILocation(line: 746, column: 7, scope: !917)
!936 = !DILocation(line: 746, column: 17, scope: !917)
!937 = !DILocation(line: 747, column: 12, scope: !917)
!938 = !DILocation(line: 747, column: 7, scope: !917)
!939 = !DILocation(line: 747, column: 14, scope: !917)
!940 = distinct !{!940, !911, !941, !639}
!941 = !DILocation(line: 748, column: 5, scope: !912)
!942 = !DILocation(line: 749, column: 3, scope: !912)
!943 = !DILocation(line: 738, column: 31, scope: !908)
!944 = !DILocation(line: 738, column: 3, scope: !908)
!945 = distinct !{!945, !910, !946, !639}
!946 = !DILocation(line: 749, column: 3, scope: !905)
!947 = !DILocation(line: 752, column: 3, scope: !708)
!948 = !DILocation(line: 752, column: 15, scope: !708)
!949 = !DILocation(line: 752, column: 10, scope: !708)
!950 = !DILocation(line: 752, column: 18, scope: !708)
!951 = !DILocation(line: 753, column: 6, scope: !708)
!952 = distinct !{!952, !947, !951, !639}
!953 = !DILocation(line: 754, column: 8, scope: !708)
!954 = !DILocation(line: 754, column: 3, scope: !708)
!955 = !DILocation(line: 754, column: 10, scope: !708)
!956 = !DILocation(line: 757, column: 3, scope: !708)
!957 = !DILocation(line: 763, column: 5, scope: !708)
!958 = !DILocation(line: 764, column: 10, scope: !959)
!959 = distinct !DILexicalBlock(scope: !708, file: !1, line: 764, column: 3)
!960 = !DILocation(line: 764, column: 8, scope: !959)
!961 = !DILocation(line: 764, column: 15, scope: !962)
!962 = distinct !DILexicalBlock(scope: !959, file: !1, line: 764, column: 3)
!963 = !DILocation(line: 764, column: 17, scope: !962)
!964 = !DILocation(line: 764, column: 3, scope: !959)
!965 = !DILocation(line: 765, column: 12, scope: !966)
!966 = distinct !DILexicalBlock(scope: !967, file: !1, line: 765, column: 5)
!967 = distinct !DILexicalBlock(scope: !962, file: !1, line: 764, column: 35)
!968 = !DILocation(line: 765, column: 10, scope: !966)
!969 = !DILocation(line: 765, column: 17, scope: !970)
!970 = distinct !DILexicalBlock(scope: !966, file: !1, line: 765, column: 5)
!971 = !DILocation(line: 765, column: 19, scope: !970)
!972 = !DILocation(line: 765, column: 5, scope: !966)
!973 = !DILocation(line: 766, column: 20, scope: !974)
!974 = distinct !DILexicalBlock(scope: !975, file: !1, line: 766, column: 11)
!975 = distinct !DILexicalBlock(scope: !970, file: !1, line: 765, column: 32)
!976 = !DILocation(line: 766, column: 11, scope: !974)
!977 = !DILocation(line: 766, column: 26, scope: !974)
!978 = !DILocation(line: 766, column: 23, scope: !974)
!979 = !DILocation(line: 767, column: 29, scope: !980)
!980 = distinct !DILexicalBlock(scope: !974, file: !1, line: 766, column: 29)
!981 = !DILocation(line: 767, column: 21, scope: !980)
!982 = !DILocation(line: 767, column: 2, scope: !980)
!983 = !DILocation(line: 767, column: 8, scope: !980)
!984 = !DILocation(line: 767, column: 16, scope: !980)
!985 = !DILocation(line: 767, column: 19, scope: !980)
!986 = !DILocation(line: 768, column: 3, scope: !980)
!987 = !DILocation(line: 769, column: 7, scope: !980)
!988 = !DILocation(line: 770, column: 5, scope: !975)
!989 = !DILocation(line: 765, column: 28, scope: !970)
!990 = !DILocation(line: 765, column: 5, scope: !970)
!991 = distinct !{!991, !972, !992, !639}
!992 = !DILocation(line: 770, column: 5, scope: !966)
!993 = !DILocation(line: 771, column: 3, scope: !967)
!994 = !DILocation(line: 764, column: 31, scope: !962)
!995 = !DILocation(line: 764, column: 3, scope: !962)
!996 = distinct !{!996, !964, !997, !639}
!997 = !DILocation(line: 771, column: 3, scope: !959)
!998 = !DILocation(line: 774, column: 3, scope: !708)
!999 = !DILocation(line: 774, column: 9, scope: !708)
!1000 = !DILocation(line: 774, column: 20, scope: !708)
!1001 = !DILocation(line: 775, column: 1, scope: !708)
!1002 = distinct !DISubprogram(name: "jinit_huff_encoder", scope: !1, file: !1, line: 828, type: !321, scopeLine: 829, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !566)
!1003 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1002, file: !1, line: 828, type: !302)
!1004 = !DILocation(line: 828, column: 36, scope: !1002)
!1005 = !DILocalVariable(name: "entropy", scope: !1002, file: !1, line: 830, type: !290)
!1006 = !DILocation(line: 830, column: 20, scope: !1002)
!1007 = !DILocalVariable(name: "i", scope: !1002, file: !1, line: 831, type: !179)
!1008 = !DILocation(line: 831, column: 7, scope: !1002)
!1009 = !DILocation(line: 834, column: 7, scope: !1002)
!1010 = !DILocation(line: 834, column: 14, scope: !1002)
!1011 = !DILocation(line: 834, column: 19, scope: !1002)
!1012 = !DILocation(line: 834, column: 48, scope: !1002)
!1013 = !DILocation(line: 834, column: 5, scope: !1002)
!1014 = !DILocation(line: 833, column: 11, scope: !1002)
!1015 = !DILocation(line: 836, column: 52, scope: !1002)
!1016 = !DILocation(line: 836, column: 3, scope: !1002)
!1017 = !DILocation(line: 836, column: 10, scope: !1002)
!1018 = !DILocation(line: 836, column: 18, scope: !1002)
!1019 = !DILocation(line: 837, column: 3, scope: !1002)
!1020 = !DILocation(line: 837, column: 12, scope: !1002)
!1021 = !DILocation(line: 837, column: 16, scope: !1002)
!1022 = !DILocation(line: 837, column: 27, scope: !1002)
!1023 = !DILocation(line: 840, column: 10, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !1002, file: !1, line: 840, column: 3)
!1025 = !DILocation(line: 840, column: 8, scope: !1024)
!1026 = !DILocation(line: 840, column: 15, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !1024, file: !1, line: 840, column: 3)
!1028 = !DILocation(line: 840, column: 17, scope: !1027)
!1029 = !DILocation(line: 840, column: 3, scope: !1024)
!1030 = !DILocation(line: 841, column: 35, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !1027, file: !1, line: 840, column: 39)
!1032 = !DILocation(line: 841, column: 44, scope: !1031)
!1033 = !DILocation(line: 841, column: 60, scope: !1031)
!1034 = !DILocation(line: 841, column: 63, scope: !1031)
!1035 = !DILocation(line: 841, column: 5, scope: !1031)
!1036 = !DILocation(line: 841, column: 14, scope: !1031)
!1037 = !DILocation(line: 841, column: 30, scope: !1031)
!1038 = !DILocation(line: 841, column: 33, scope: !1031)
!1039 = !DILocation(line: 843, column: 33, scope: !1031)
!1040 = !DILocation(line: 843, column: 42, scope: !1031)
!1041 = !DILocation(line: 843, column: 56, scope: !1031)
!1042 = !DILocation(line: 843, column: 59, scope: !1031)
!1043 = !DILocation(line: 843, column: 5, scope: !1031)
!1044 = !DILocation(line: 843, column: 14, scope: !1031)
!1045 = !DILocation(line: 843, column: 28, scope: !1031)
!1046 = !DILocation(line: 843, column: 31, scope: !1031)
!1047 = !DILocation(line: 845, column: 3, scope: !1031)
!1048 = !DILocation(line: 840, column: 35, scope: !1027)
!1049 = !DILocation(line: 840, column: 3, scope: !1027)
!1050 = distinct !{!1050, !1029, !1051, !639}
!1051 = !DILocation(line: 845, column: 3, scope: !1024)
!1052 = !DILocation(line: 846, column: 1, scope: !1002)
!1053 = distinct !DISubprogram(name: "start_pass_huff", scope: !1, file: !1, line: 106, type: !300, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !566)
!1054 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1053, file: !1, line: 106, type: !302)
!1055 = !DILocation(line: 106, column: 33, scope: !1053)
!1056 = !DILocalVariable(name: "gather_statistics", arg: 2, scope: !1053, file: !1, line: 106, type: !256)
!1057 = !DILocation(line: 106, column: 48, scope: !1053)
!1058 = !DILocalVariable(name: "entropy", scope: !1053, file: !1, line: 108, type: !290)
!1059 = !DILocation(line: 108, column: 20, scope: !1053)
!1060 = !DILocation(line: 108, column: 49, scope: !1053)
!1061 = !DILocation(line: 108, column: 56, scope: !1053)
!1062 = !DILocalVariable(name: "ci", scope: !1053, file: !1, line: 109, type: !179)
!1063 = !DILocation(line: 109, column: 7, scope: !1053)
!1064 = !DILocalVariable(name: "dctbl", scope: !1053, file: !1, line: 109, type: !179)
!1065 = !DILocation(line: 109, column: 11, scope: !1053)
!1066 = !DILocalVariable(name: "actbl", scope: !1053, file: !1, line: 109, type: !179)
!1067 = !DILocation(line: 109, column: 18, scope: !1053)
!1068 = !DILocalVariable(name: "compptr", scope: !1053, file: !1, line: 110, type: !339)
!1069 = !DILocation(line: 110, column: 25, scope: !1053)
!1070 = !DILocation(line: 112, column: 7, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !1053, file: !1, line: 112, column: 7)
!1072 = !DILocation(line: 114, column: 5, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !1071, file: !1, line: 112, column: 26)
!1074 = !DILocation(line: 114, column: 14, scope: !1073)
!1075 = !DILocation(line: 114, column: 18, scope: !1073)
!1076 = !DILocation(line: 114, column: 29, scope: !1073)
!1077 = !DILocation(line: 115, column: 5, scope: !1073)
!1078 = !DILocation(line: 115, column: 14, scope: !1073)
!1079 = !DILocation(line: 115, column: 18, scope: !1073)
!1080 = !DILocation(line: 115, column: 30, scope: !1073)
!1081 = !DILocation(line: 119, column: 3, scope: !1073)
!1082 = !DILocation(line: 120, column: 5, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1071, file: !1, line: 119, column: 10)
!1084 = !DILocation(line: 120, column: 14, scope: !1083)
!1085 = !DILocation(line: 120, column: 18, scope: !1083)
!1086 = !DILocation(line: 120, column: 29, scope: !1083)
!1087 = !DILocation(line: 121, column: 5, scope: !1083)
!1088 = !DILocation(line: 121, column: 14, scope: !1083)
!1089 = !DILocation(line: 121, column: 18, scope: !1083)
!1090 = !DILocation(line: 121, column: 30, scope: !1083)
!1091 = !DILocation(line: 124, column: 11, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !1053, file: !1, line: 124, column: 3)
!1093 = !DILocation(line: 124, column: 8, scope: !1092)
!1094 = !DILocation(line: 124, column: 16, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1092, file: !1, line: 124, column: 3)
!1096 = !DILocation(line: 124, column: 21, scope: !1095)
!1097 = !DILocation(line: 124, column: 28, scope: !1095)
!1098 = !DILocation(line: 124, column: 19, scope: !1095)
!1099 = !DILocation(line: 124, column: 3, scope: !1092)
!1100 = !DILocation(line: 125, column: 15, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1095, file: !1, line: 124, column: 49)
!1102 = !DILocation(line: 125, column: 22, scope: !1101)
!1103 = !DILocation(line: 125, column: 36, scope: !1101)
!1104 = !DILocation(line: 125, column: 13, scope: !1101)
!1105 = !DILocation(line: 126, column: 13, scope: !1101)
!1106 = !DILocation(line: 126, column: 22, scope: !1101)
!1107 = !DILocation(line: 126, column: 11, scope: !1101)
!1108 = !DILocation(line: 127, column: 13, scope: !1101)
!1109 = !DILocation(line: 127, column: 22, scope: !1101)
!1110 = !DILocation(line: 127, column: 11, scope: !1101)
!1111 = !DILocation(line: 130, column: 9, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !1101, file: !1, line: 130, column: 9)
!1113 = !DILocation(line: 130, column: 15, scope: !1112)
!1114 = !DILocation(line: 130, column: 19, scope: !1112)
!1115 = !DILocation(line: 130, column: 22, scope: !1112)
!1116 = !DILocation(line: 130, column: 28, scope: !1112)
!1117 = !DILocation(line: 130, column: 45, scope: !1112)
!1118 = !DILocation(line: 131, column: 3, scope: !1112)
!1119 = !DILocation(line: 131, column: 10, scope: !1112)
!1120 = !DILocation(line: 131, column: 27, scope: !1112)
!1121 = !DILocation(line: 131, column: 34, scope: !1112)
!1122 = !DILocation(line: 131, column: 42, scope: !1112)
!1123 = !DILocation(line: 131, column: 46, scope: !1112)
!1124 = !DILocation(line: 132, column: 7, scope: !1112)
!1125 = !DILocation(line: 133, column: 9, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1101, file: !1, line: 133, column: 9)
!1127 = !DILocation(line: 133, column: 15, scope: !1126)
!1128 = !DILocation(line: 133, column: 19, scope: !1126)
!1129 = !DILocation(line: 133, column: 22, scope: !1126)
!1130 = !DILocation(line: 133, column: 28, scope: !1126)
!1131 = !DILocation(line: 133, column: 45, scope: !1126)
!1132 = !DILocation(line: 134, column: 3, scope: !1126)
!1133 = !DILocation(line: 134, column: 10, scope: !1126)
!1134 = !DILocation(line: 134, column: 27, scope: !1126)
!1135 = !DILocation(line: 134, column: 34, scope: !1126)
!1136 = !DILocation(line: 134, column: 42, scope: !1126)
!1137 = !DILocation(line: 134, column: 46, scope: !1126)
!1138 = !DILocation(line: 135, column: 7, scope: !1126)
!1139 = !DILocation(line: 136, column: 9, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1101, file: !1, line: 136, column: 9)
!1141 = !DILocation(line: 140, column: 11, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !1143, file: !1, line: 140, column: 11)
!1143 = distinct !DILexicalBlock(scope: !1140, file: !1, line: 136, column: 28)
!1144 = !DILocation(line: 140, column: 20, scope: !1142)
!1145 = !DILocation(line: 140, column: 34, scope: !1142)
!1146 = !DILocation(line: 140, column: 41, scope: !1142)
!1147 = !DILocation(line: 142, column: 6, scope: !1142)
!1148 = !DILocation(line: 142, column: 13, scope: !1142)
!1149 = !DILocation(line: 142, column: 18, scope: !1142)
!1150 = !DILocation(line: 142, column: 47, scope: !1142)
!1151 = !DILocation(line: 142, column: 4, scope: !1142)
!1152 = !DILocation(line: 141, column: 2, scope: !1142)
!1153 = !DILocation(line: 141, column: 11, scope: !1142)
!1154 = !DILocation(line: 141, column: 25, scope: !1142)
!1155 = !DILocation(line: 141, column: 32, scope: !1142)
!1156 = !DILocation(line: 144, column: 7, scope: !1143)
!1157 = !DILocation(line: 145, column: 11, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1143, file: !1, line: 145, column: 11)
!1159 = !DILocation(line: 145, column: 20, scope: !1158)
!1160 = !DILocation(line: 145, column: 34, scope: !1158)
!1161 = !DILocation(line: 145, column: 41, scope: !1158)
!1162 = !DILocation(line: 147, column: 6, scope: !1158)
!1163 = !DILocation(line: 147, column: 13, scope: !1158)
!1164 = !DILocation(line: 147, column: 18, scope: !1158)
!1165 = !DILocation(line: 147, column: 47, scope: !1158)
!1166 = !DILocation(line: 147, column: 4, scope: !1158)
!1167 = !DILocation(line: 146, column: 2, scope: !1158)
!1168 = !DILocation(line: 146, column: 11, scope: !1158)
!1169 = !DILocation(line: 146, column: 25, scope: !1158)
!1170 = !DILocation(line: 146, column: 32, scope: !1158)
!1171 = !DILocation(line: 149, column: 7, scope: !1143)
!1172 = !DILocation(line: 151, column: 5, scope: !1143)
!1173 = !DILocation(line: 154, column: 31, scope: !1174)
!1174 = distinct !DILexicalBlock(scope: !1140, file: !1, line: 151, column: 12)
!1175 = !DILocation(line: 154, column: 38, scope: !1174)
!1176 = !DILocation(line: 154, column: 45, scope: !1174)
!1177 = !DILocation(line: 154, column: 62, scope: !1174)
!1178 = !DILocation(line: 155, column: 12, scope: !1174)
!1179 = !DILocation(line: 155, column: 21, scope: !1174)
!1180 = !DILocation(line: 155, column: 37, scope: !1174)
!1181 = !DILocation(line: 154, column: 7, scope: !1174)
!1182 = !DILocation(line: 156, column: 31, scope: !1174)
!1183 = !DILocation(line: 156, column: 38, scope: !1174)
!1184 = !DILocation(line: 156, column: 45, scope: !1174)
!1185 = !DILocation(line: 156, column: 62, scope: !1174)
!1186 = !DILocation(line: 157, column: 12, scope: !1174)
!1187 = !DILocation(line: 157, column: 21, scope: !1174)
!1188 = !DILocation(line: 157, column: 37, scope: !1174)
!1189 = !DILocation(line: 156, column: 7, scope: !1174)
!1190 = !DILocation(line: 160, column: 5, scope: !1101)
!1191 = !DILocation(line: 160, column: 14, scope: !1101)
!1192 = !DILocation(line: 160, column: 20, scope: !1101)
!1193 = !DILocation(line: 160, column: 32, scope: !1101)
!1194 = !DILocation(line: 160, column: 36, scope: !1101)
!1195 = !DILocation(line: 161, column: 3, scope: !1101)
!1196 = !DILocation(line: 124, column: 45, scope: !1095)
!1197 = !DILocation(line: 124, column: 3, scope: !1095)
!1198 = distinct !{!1198, !1099, !1199, !639}
!1199 = !DILocation(line: 161, column: 3, scope: !1092)
!1200 = !DILocation(line: 164, column: 3, scope: !1053)
!1201 = !DILocation(line: 164, column: 12, scope: !1053)
!1202 = !DILocation(line: 164, column: 18, scope: !1053)
!1203 = !DILocation(line: 164, column: 29, scope: !1053)
!1204 = !DILocation(line: 165, column: 3, scope: !1053)
!1205 = !DILocation(line: 165, column: 12, scope: !1053)
!1206 = !DILocation(line: 165, column: 18, scope: !1053)
!1207 = !DILocation(line: 165, column: 27, scope: !1053)
!1208 = !DILocation(line: 168, column: 29, scope: !1053)
!1209 = !DILocation(line: 168, column: 36, scope: !1053)
!1210 = !DILocation(line: 168, column: 3, scope: !1053)
!1211 = !DILocation(line: 168, column: 12, scope: !1053)
!1212 = !DILocation(line: 168, column: 27, scope: !1053)
!1213 = !DILocation(line: 169, column: 3, scope: !1053)
!1214 = !DILocation(line: 169, column: 12, scope: !1053)
!1215 = !DILocation(line: 169, column: 29, scope: !1053)
!1216 = !DILocation(line: 170, column: 1, scope: !1053)
!1217 = distinct !DISubprogram(name: "encode_mcu_gather", scope: !1, file: !1, line: 605, type: !534, scopeLine: 606, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !566)
!1218 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1217, file: !1, line: 605, type: !302)
!1219 = !DILocation(line: 605, column: 35, scope: !1217)
!1220 = !DILocalVariable(name: "MCU_data", arg: 2, scope: !1217, file: !1, line: 605, type: !240)
!1221 = !DILocation(line: 605, column: 53, scope: !1217)
!1222 = !DILocalVariable(name: "entropy", scope: !1217, file: !1, line: 607, type: !290)
!1223 = !DILocation(line: 607, column: 20, scope: !1217)
!1224 = !DILocation(line: 607, column: 49, scope: !1217)
!1225 = !DILocation(line: 607, column: 56, scope: !1217)
!1226 = !DILocalVariable(name: "blkn", scope: !1217, file: !1, line: 608, type: !179)
!1227 = !DILocation(line: 608, column: 7, scope: !1217)
!1228 = !DILocalVariable(name: "ci", scope: !1217, file: !1, line: 608, type: !179)
!1229 = !DILocation(line: 608, column: 13, scope: !1217)
!1230 = !DILocalVariable(name: "compptr", scope: !1217, file: !1, line: 609, type: !339)
!1231 = !DILocation(line: 609, column: 25, scope: !1217)
!1232 = !DILocation(line: 612, column: 7, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !1217, file: !1, line: 612, column: 7)
!1234 = !DILocation(line: 612, column: 14, scope: !1233)
!1235 = !DILocation(line: 613, column: 9, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1237, file: !1, line: 613, column: 9)
!1237 = distinct !DILexicalBlock(scope: !1233, file: !1, line: 612, column: 32)
!1238 = !DILocation(line: 613, column: 18, scope: !1236)
!1239 = !DILocation(line: 613, column: 33, scope: !1236)
!1240 = !DILocation(line: 615, column: 15, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1242, file: !1, line: 615, column: 7)
!1242 = distinct !DILexicalBlock(scope: !1236, file: !1, line: 613, column: 39)
!1243 = !DILocation(line: 615, column: 12, scope: !1241)
!1244 = !DILocation(line: 615, column: 20, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1241, file: !1, line: 615, column: 7)
!1246 = !DILocation(line: 615, column: 25, scope: !1245)
!1247 = !DILocation(line: 615, column: 32, scope: !1245)
!1248 = !DILocation(line: 615, column: 23, scope: !1245)
!1249 = !DILocation(line: 615, column: 7, scope: !1241)
!1250 = !DILocation(line: 616, column: 2, scope: !1245)
!1251 = !DILocation(line: 616, column: 11, scope: !1245)
!1252 = !DILocation(line: 616, column: 17, scope: !1245)
!1253 = !DILocation(line: 616, column: 29, scope: !1245)
!1254 = !DILocation(line: 616, column: 33, scope: !1245)
!1255 = !DILocation(line: 615, column: 49, scope: !1245)
!1256 = !DILocation(line: 615, column: 7, scope: !1245)
!1257 = distinct !{!1257, !1249, !1258, !639}
!1258 = !DILocation(line: 616, column: 35, scope: !1241)
!1259 = !DILocation(line: 618, column: 33, scope: !1242)
!1260 = !DILocation(line: 618, column: 40, scope: !1242)
!1261 = !DILocation(line: 618, column: 7, scope: !1242)
!1262 = !DILocation(line: 618, column: 16, scope: !1242)
!1263 = !DILocation(line: 618, column: 31, scope: !1242)
!1264 = !DILocation(line: 619, column: 5, scope: !1242)
!1265 = !DILocation(line: 620, column: 5, scope: !1237)
!1266 = !DILocation(line: 620, column: 14, scope: !1237)
!1267 = !DILocation(line: 620, column: 28, scope: !1237)
!1268 = !DILocation(line: 621, column: 3, scope: !1237)
!1269 = !DILocation(line: 623, column: 13, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1217, file: !1, line: 623, column: 3)
!1271 = !DILocation(line: 623, column: 8, scope: !1270)
!1272 = !DILocation(line: 623, column: 18, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1270, file: !1, line: 623, column: 3)
!1274 = !DILocation(line: 623, column: 25, scope: !1273)
!1275 = !DILocation(line: 623, column: 32, scope: !1273)
!1276 = !DILocation(line: 623, column: 23, scope: !1273)
!1277 = !DILocation(line: 623, column: 3, scope: !1270)
!1278 = !DILocation(line: 624, column: 10, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1273, file: !1, line: 623, column: 55)
!1280 = !DILocation(line: 624, column: 17, scope: !1279)
!1281 = !DILocation(line: 624, column: 32, scope: !1279)
!1282 = !DILocation(line: 624, column: 8, scope: !1279)
!1283 = !DILocation(line: 625, column: 15, scope: !1279)
!1284 = !DILocation(line: 625, column: 22, scope: !1279)
!1285 = !DILocation(line: 625, column: 36, scope: !1279)
!1286 = !DILocation(line: 625, column: 13, scope: !1279)
!1287 = !DILocation(line: 626, column: 21, scope: !1279)
!1288 = !DILocation(line: 626, column: 30, scope: !1279)
!1289 = !DILocation(line: 626, column: 40, scope: !1279)
!1290 = !DILocation(line: 626, column: 49, scope: !1279)
!1291 = !DILocation(line: 626, column: 55, scope: !1279)
!1292 = !DILocation(line: 626, column: 67, scope: !1279)
!1293 = !DILocation(line: 627, column: 7, scope: !1279)
!1294 = !DILocation(line: 627, column: 16, scope: !1279)
!1295 = !DILocation(line: 627, column: 30, scope: !1279)
!1296 = !DILocation(line: 627, column: 39, scope: !1279)
!1297 = !DILocation(line: 628, column: 7, scope: !1279)
!1298 = !DILocation(line: 628, column: 16, scope: !1279)
!1299 = !DILocation(line: 628, column: 30, scope: !1279)
!1300 = !DILocation(line: 628, column: 39, scope: !1279)
!1301 = !DILocation(line: 626, column: 5, scope: !1279)
!1302 = !DILocation(line: 629, column: 38, scope: !1279)
!1303 = !DILocation(line: 629, column: 47, scope: !1279)
!1304 = !DILocation(line: 629, column: 5, scope: !1279)
!1305 = !DILocation(line: 629, column: 14, scope: !1279)
!1306 = !DILocation(line: 629, column: 20, scope: !1279)
!1307 = !DILocation(line: 629, column: 32, scope: !1279)
!1308 = !DILocation(line: 629, column: 36, scope: !1279)
!1309 = !DILocation(line: 630, column: 3, scope: !1279)
!1310 = !DILocation(line: 623, column: 51, scope: !1273)
!1311 = !DILocation(line: 623, column: 3, scope: !1273)
!1312 = distinct !{!1312, !1277, !1313, !639}
!1313 = !DILocation(line: 630, column: 3, scope: !1270)
!1314 = !DILocation(line: 632, column: 3, scope: !1217)
!1315 = distinct !DISubprogram(name: "finish_pass_gather", scope: !1, file: !1, line: 783, type: !321, scopeLine: 784, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !566)
!1316 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1315, file: !1, line: 783, type: !302)
!1317 = !DILocation(line: 783, column: 36, scope: !1315)
!1318 = !DILocalVariable(name: "entropy", scope: !1315, file: !1, line: 785, type: !290)
!1319 = !DILocation(line: 785, column: 20, scope: !1315)
!1320 = !DILocation(line: 785, column: 49, scope: !1315)
!1321 = !DILocation(line: 785, column: 56, scope: !1315)
!1322 = !DILocalVariable(name: "ci", scope: !1315, file: !1, line: 786, type: !179)
!1323 = !DILocation(line: 786, column: 7, scope: !1315)
!1324 = !DILocalVariable(name: "dctbl", scope: !1315, file: !1, line: 786, type: !179)
!1325 = !DILocation(line: 786, column: 11, scope: !1315)
!1326 = !DILocalVariable(name: "actbl", scope: !1315, file: !1, line: 786, type: !179)
!1327 = !DILocation(line: 786, column: 18, scope: !1315)
!1328 = !DILocalVariable(name: "compptr", scope: !1315, file: !1, line: 787, type: !339)
!1329 = !DILocation(line: 787, column: 25, scope: !1315)
!1330 = !DILocalVariable(name: "htblptr", scope: !1315, file: !1, line: 788, type: !1331)
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!1332 = !DILocation(line: 788, column: 15, scope: !1315)
!1333 = !DILocalVariable(name: "did_dc", scope: !1315, file: !1, line: 789, type: !1334)
!1334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !256, size: 128, elements: !375)
!1335 = !DILocation(line: 789, column: 11, scope: !1315)
!1336 = !DILocalVariable(name: "did_ac", scope: !1315, file: !1, line: 790, type: !1334)
!1337 = !DILocation(line: 790, column: 11, scope: !1315)
!1338 = !DILocation(line: 795, column: 3, scope: !1315)
!1339 = !DILocation(line: 796, column: 3, scope: !1315)
!1340 = !DILocation(line: 798, column: 11, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1315, file: !1, line: 798, column: 3)
!1342 = !DILocation(line: 798, column: 8, scope: !1341)
!1343 = !DILocation(line: 798, column: 16, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !1341, file: !1, line: 798, column: 3)
!1345 = !DILocation(line: 798, column: 21, scope: !1344)
!1346 = !DILocation(line: 798, column: 28, scope: !1344)
!1347 = !DILocation(line: 798, column: 19, scope: !1344)
!1348 = !DILocation(line: 798, column: 3, scope: !1341)
!1349 = !DILocation(line: 799, column: 15, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !1344, file: !1, line: 798, column: 49)
!1351 = !DILocation(line: 799, column: 22, scope: !1350)
!1352 = !DILocation(line: 799, column: 36, scope: !1350)
!1353 = !DILocation(line: 799, column: 13, scope: !1350)
!1354 = !DILocation(line: 800, column: 13, scope: !1350)
!1355 = !DILocation(line: 800, column: 22, scope: !1350)
!1356 = !DILocation(line: 800, column: 11, scope: !1350)
!1357 = !DILocation(line: 801, column: 13, scope: !1350)
!1358 = !DILocation(line: 801, column: 22, scope: !1350)
!1359 = !DILocation(line: 801, column: 11, scope: !1350)
!1360 = !DILocation(line: 802, column: 18, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1350, file: !1, line: 802, column: 9)
!1362 = !DILocation(line: 802, column: 11, scope: !1361)
!1363 = !DILocation(line: 802, column: 9, scope: !1361)
!1364 = !DILocation(line: 803, column: 19, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !1361, file: !1, line: 802, column: 26)
!1366 = !DILocation(line: 803, column: 26, scope: !1365)
!1367 = !DILocation(line: 803, column: 43, scope: !1365)
!1368 = !DILocation(line: 803, column: 15, scope: !1365)
!1369 = !DILocation(line: 804, column: 12, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1365, file: !1, line: 804, column: 11)
!1371 = !DILocation(line: 804, column: 11, scope: !1370)
!1372 = !DILocation(line: 804, column: 20, scope: !1370)
!1373 = !DILocation(line: 805, column: 50, scope: !1370)
!1374 = !DILocation(line: 805, column: 13, scope: !1370)
!1375 = !DILocation(line: 805, column: 3, scope: !1370)
!1376 = !DILocation(line: 805, column: 11, scope: !1370)
!1377 = !DILocation(line: 805, column: 2, scope: !1370)
!1378 = !DILocation(line: 806, column: 30, scope: !1365)
!1379 = !DILocation(line: 806, column: 38, scope: !1365)
!1380 = !DILocation(line: 806, column: 37, scope: !1365)
!1381 = !DILocation(line: 806, column: 47, scope: !1365)
!1382 = !DILocation(line: 806, column: 56, scope: !1365)
!1383 = !DILocation(line: 806, column: 70, scope: !1365)
!1384 = !DILocation(line: 806, column: 7, scope: !1365)
!1385 = !DILocation(line: 807, column: 14, scope: !1365)
!1386 = !DILocation(line: 807, column: 7, scope: !1365)
!1387 = !DILocation(line: 807, column: 21, scope: !1365)
!1388 = !DILocation(line: 808, column: 5, scope: !1365)
!1389 = !DILocation(line: 809, column: 18, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1350, file: !1, line: 809, column: 9)
!1391 = !DILocation(line: 809, column: 11, scope: !1390)
!1392 = !DILocation(line: 809, column: 9, scope: !1390)
!1393 = !DILocation(line: 810, column: 19, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !1390, file: !1, line: 809, column: 26)
!1395 = !DILocation(line: 810, column: 26, scope: !1394)
!1396 = !DILocation(line: 810, column: 43, scope: !1394)
!1397 = !DILocation(line: 810, column: 15, scope: !1394)
!1398 = !DILocation(line: 811, column: 12, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1394, file: !1, line: 811, column: 11)
!1400 = !DILocation(line: 811, column: 11, scope: !1399)
!1401 = !DILocation(line: 811, column: 20, scope: !1399)
!1402 = !DILocation(line: 812, column: 50, scope: !1399)
!1403 = !DILocation(line: 812, column: 13, scope: !1399)
!1404 = !DILocation(line: 812, column: 3, scope: !1399)
!1405 = !DILocation(line: 812, column: 11, scope: !1399)
!1406 = !DILocation(line: 812, column: 2, scope: !1399)
!1407 = !DILocation(line: 813, column: 30, scope: !1394)
!1408 = !DILocation(line: 813, column: 38, scope: !1394)
!1409 = !DILocation(line: 813, column: 37, scope: !1394)
!1410 = !DILocation(line: 813, column: 47, scope: !1394)
!1411 = !DILocation(line: 813, column: 56, scope: !1394)
!1412 = !DILocation(line: 813, column: 70, scope: !1394)
!1413 = !DILocation(line: 813, column: 7, scope: !1394)
!1414 = !DILocation(line: 814, column: 14, scope: !1394)
!1415 = !DILocation(line: 814, column: 7, scope: !1394)
!1416 = !DILocation(line: 814, column: 21, scope: !1394)
!1417 = !DILocation(line: 815, column: 5, scope: !1394)
!1418 = !DILocation(line: 816, column: 3, scope: !1350)
!1419 = !DILocation(line: 798, column: 45, scope: !1344)
!1420 = !DILocation(line: 798, column: 3, scope: !1344)
!1421 = distinct !{!1421, !1348, !1422, !639}
!1422 = !DILocation(line: 816, column: 3, scope: !1341)
!1423 = !DILocation(line: 817, column: 1, scope: !1315)
!1424 = distinct !DISubprogram(name: "encode_mcu_huff", scope: !1, file: !1, line: 437, type: !534, scopeLine: 438, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !566)
!1425 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1424, file: !1, line: 437, type: !302)
!1426 = !DILocation(line: 437, column: 33, scope: !1424)
!1427 = !DILocalVariable(name: "MCU_data", arg: 2, scope: !1424, file: !1, line: 437, type: !240)
!1428 = !DILocation(line: 437, column: 51, scope: !1424)
!1429 = !DILocalVariable(name: "entropy", scope: !1424, file: !1, line: 439, type: !290)
!1430 = !DILocation(line: 439, column: 20, scope: !1424)
!1431 = !DILocation(line: 439, column: 49, scope: !1424)
!1432 = !DILocation(line: 439, column: 56, scope: !1424)
!1433 = !DILocalVariable(name: "state", scope: !1424, file: !1, line: 440, type: !1434)
!1434 = !DIDerivedType(tag: DW_TAG_typedef, name: "working_state", file: !1, line: 85, baseType: !1435)
!1435 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 80, size: 448, elements: !1436)
!1436 = !{!1437, !1438, !1439, !1440}
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "next_output_byte", scope: !1435, file: !1, line: 81, baseType: !316, size: 64)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "free_in_buffer", scope: !1435, file: !1, line: 82, baseType: !219, size: 64, offset: 64)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !1435, file: !1, line: 83, baseType: !538, size: 256, offset: 128)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "cinfo", scope: !1435, file: !1, line: 84, baseType: !302, size: 64, offset: 384)
!1441 = !DILocation(line: 440, column: 17, scope: !1424)
!1442 = !DILocalVariable(name: "blkn", scope: !1424, file: !1, line: 441, type: !179)
!1443 = !DILocation(line: 441, column: 7, scope: !1424)
!1444 = !DILocalVariable(name: "ci", scope: !1424, file: !1, line: 441, type: !179)
!1445 = !DILocation(line: 441, column: 13, scope: !1424)
!1446 = !DILocalVariable(name: "compptr", scope: !1424, file: !1, line: 442, type: !339)
!1447 = !DILocation(line: 442, column: 25, scope: !1424)
!1448 = !DILocation(line: 445, column: 28, scope: !1424)
!1449 = !DILocation(line: 445, column: 35, scope: !1424)
!1450 = !DILocation(line: 445, column: 41, scope: !1424)
!1451 = !DILocation(line: 445, column: 9, scope: !1424)
!1452 = !DILocation(line: 445, column: 26, scope: !1424)
!1453 = !DILocation(line: 446, column: 26, scope: !1424)
!1454 = !DILocation(line: 446, column: 33, scope: !1424)
!1455 = !DILocation(line: 446, column: 39, scope: !1424)
!1456 = !DILocation(line: 446, column: 9, scope: !1424)
!1457 = !DILocation(line: 446, column: 24, scope: !1424)
!1458 = !DILocation(line: 447, column: 3, scope: !1424)
!1459 = !DILocation(line: 448, column: 17, scope: !1424)
!1460 = !DILocation(line: 448, column: 9, scope: !1424)
!1461 = !DILocation(line: 448, column: 15, scope: !1424)
!1462 = !DILocation(line: 451, column: 7, scope: !1463)
!1463 = distinct !DILexicalBlock(scope: !1424, file: !1, line: 451, column: 7)
!1464 = !DILocation(line: 451, column: 14, scope: !1463)
!1465 = !DILocation(line: 452, column: 9, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1467, file: !1, line: 452, column: 9)
!1467 = distinct !DILexicalBlock(scope: !1463, file: !1, line: 451, column: 32)
!1468 = !DILocation(line: 452, column: 18, scope: !1466)
!1469 = !DILocation(line: 452, column: 33, scope: !1466)
!1470 = !DILocation(line: 453, column: 34, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !1466, file: !1, line: 453, column: 11)
!1472 = !DILocation(line: 453, column: 43, scope: !1471)
!1473 = !DILocation(line: 453, column: 13, scope: !1471)
!1474 = !DILocation(line: 453, column: 11, scope: !1471)
!1475 = !DILocation(line: 454, column: 2, scope: !1471)
!1476 = !DILocation(line: 453, column: 59, scope: !1471)
!1477 = !DILocation(line: 455, column: 3, scope: !1467)
!1478 = !DILocation(line: 458, column: 13, scope: !1479)
!1479 = distinct !DILexicalBlock(scope: !1424, file: !1, line: 458, column: 3)
!1480 = !DILocation(line: 458, column: 8, scope: !1479)
!1481 = !DILocation(line: 458, column: 18, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !1479, file: !1, line: 458, column: 3)
!1483 = !DILocation(line: 458, column: 25, scope: !1482)
!1484 = !DILocation(line: 458, column: 32, scope: !1482)
!1485 = !DILocation(line: 458, column: 23, scope: !1482)
!1486 = !DILocation(line: 458, column: 3, scope: !1479)
!1487 = !DILocation(line: 459, column: 10, scope: !1488)
!1488 = distinct !DILexicalBlock(scope: !1482, file: !1, line: 458, column: 55)
!1489 = !DILocation(line: 459, column: 17, scope: !1488)
!1490 = !DILocation(line: 459, column: 32, scope: !1488)
!1491 = !DILocation(line: 459, column: 8, scope: !1488)
!1492 = !DILocation(line: 460, column: 15, scope: !1488)
!1493 = !DILocation(line: 460, column: 22, scope: !1488)
!1494 = !DILocation(line: 460, column: 36, scope: !1488)
!1495 = !DILocation(line: 460, column: 13, scope: !1488)
!1496 = !DILocation(line: 462, column: 7, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !1488, file: !1, line: 461, column: 9)
!1498 = !DILocation(line: 462, column: 16, scope: !1497)
!1499 = !DILocation(line: 462, column: 32, scope: !1497)
!1500 = !DILocation(line: 462, column: 36, scope: !1497)
!1501 = !DILocation(line: 462, column: 48, scope: !1497)
!1502 = !DILocation(line: 462, column: 26, scope: !1497)
!1503 = !DILocation(line: 463, column: 7, scope: !1497)
!1504 = !DILocation(line: 463, column: 16, scope: !1497)
!1505 = !DILocation(line: 463, column: 32, scope: !1497)
!1506 = !DILocation(line: 463, column: 41, scope: !1497)
!1507 = !DILocation(line: 464, column: 7, scope: !1497)
!1508 = !DILocation(line: 464, column: 16, scope: !1497)
!1509 = !DILocation(line: 464, column: 32, scope: !1497)
!1510 = !DILocation(line: 464, column: 41, scope: !1497)
!1511 = !DILocation(line: 461, column: 11, scope: !1497)
!1512 = !DILocation(line: 461, column: 9, scope: !1497)
!1513 = !DILocation(line: 465, column: 7, scope: !1497)
!1514 = !DILocation(line: 467, column: 33, scope: !1488)
!1515 = !DILocation(line: 467, column: 42, scope: !1488)
!1516 = !DILocation(line: 467, column: 11, scope: !1488)
!1517 = !DILocation(line: 467, column: 15, scope: !1488)
!1518 = !DILocation(line: 467, column: 27, scope: !1488)
!1519 = !DILocation(line: 467, column: 5, scope: !1488)
!1520 = !DILocation(line: 467, column: 31, scope: !1488)
!1521 = !DILocation(line: 468, column: 3, scope: !1488)
!1522 = !DILocation(line: 458, column: 51, scope: !1482)
!1523 = !DILocation(line: 458, column: 3, scope: !1482)
!1524 = distinct !{!1524, !1486, !1525, !639}
!1525 = !DILocation(line: 468, column: 3, scope: !1479)
!1526 = !DILocation(line: 471, column: 41, scope: !1424)
!1527 = !DILocation(line: 471, column: 3, scope: !1424)
!1528 = !DILocation(line: 471, column: 10, scope: !1424)
!1529 = !DILocation(line: 471, column: 16, scope: !1424)
!1530 = !DILocation(line: 471, column: 33, scope: !1424)
!1531 = !DILocation(line: 472, column: 39, scope: !1424)
!1532 = !DILocation(line: 472, column: 3, scope: !1424)
!1533 = !DILocation(line: 472, column: 10, scope: !1424)
!1534 = !DILocation(line: 472, column: 16, scope: !1424)
!1535 = !DILocation(line: 472, column: 31, scope: !1424)
!1536 = !DILocation(line: 473, column: 3, scope: !1424)
!1537 = !DILocation(line: 476, column: 7, scope: !1538)
!1538 = distinct !DILexicalBlock(scope: !1424, file: !1, line: 476, column: 7)
!1539 = !DILocation(line: 476, column: 14, scope: !1538)
!1540 = !DILocation(line: 477, column: 9, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1542, file: !1, line: 477, column: 9)
!1542 = distinct !DILexicalBlock(scope: !1538, file: !1, line: 476, column: 32)
!1543 = !DILocation(line: 477, column: 18, scope: !1541)
!1544 = !DILocation(line: 477, column: 33, scope: !1541)
!1545 = !DILocation(line: 478, column: 33, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !1541, file: !1, line: 477, column: 39)
!1547 = !DILocation(line: 478, column: 40, scope: !1546)
!1548 = !DILocation(line: 478, column: 7, scope: !1546)
!1549 = !DILocation(line: 478, column: 16, scope: !1546)
!1550 = !DILocation(line: 478, column: 31, scope: !1546)
!1551 = !DILocation(line: 479, column: 7, scope: !1546)
!1552 = !DILocation(line: 479, column: 16, scope: !1546)
!1553 = !DILocation(line: 479, column: 32, scope: !1546)
!1554 = !DILocation(line: 480, column: 7, scope: !1546)
!1555 = !DILocation(line: 480, column: 16, scope: !1546)
!1556 = !DILocation(line: 480, column: 33, scope: !1546)
!1557 = !DILocation(line: 481, column: 5, scope: !1546)
!1558 = !DILocation(line: 482, column: 5, scope: !1542)
!1559 = !DILocation(line: 482, column: 14, scope: !1542)
!1560 = !DILocation(line: 482, column: 28, scope: !1542)
!1561 = !DILocation(line: 483, column: 3, scope: !1542)
!1562 = !DILocation(line: 485, column: 3, scope: !1424)
!1563 = !DILocation(line: 486, column: 1, scope: !1424)
!1564 = distinct !DISubprogram(name: "finish_pass_huff", scope: !1, file: !1, line: 494, type: !321, scopeLine: 495, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !566)
!1565 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1564, file: !1, line: 494, type: !302)
!1566 = !DILocation(line: 494, column: 34, scope: !1564)
!1567 = !DILocalVariable(name: "entropy", scope: !1564, file: !1, line: 496, type: !290)
!1568 = !DILocation(line: 496, column: 20, scope: !1564)
!1569 = !DILocation(line: 496, column: 49, scope: !1564)
!1570 = !DILocation(line: 496, column: 56, scope: !1564)
!1571 = !DILocalVariable(name: "state", scope: !1564, file: !1, line: 497, type: !1434)
!1572 = !DILocation(line: 497, column: 17, scope: !1564)
!1573 = !DILocation(line: 500, column: 28, scope: !1564)
!1574 = !DILocation(line: 500, column: 35, scope: !1564)
!1575 = !DILocation(line: 500, column: 41, scope: !1564)
!1576 = !DILocation(line: 500, column: 9, scope: !1564)
!1577 = !DILocation(line: 500, column: 26, scope: !1564)
!1578 = !DILocation(line: 501, column: 26, scope: !1564)
!1579 = !DILocation(line: 501, column: 33, scope: !1564)
!1580 = !DILocation(line: 501, column: 39, scope: !1564)
!1581 = !DILocation(line: 501, column: 9, scope: !1564)
!1582 = !DILocation(line: 501, column: 24, scope: !1564)
!1583 = !DILocation(line: 502, column: 3, scope: !1564)
!1584 = !DILocation(line: 503, column: 17, scope: !1564)
!1585 = !DILocation(line: 503, column: 9, scope: !1564)
!1586 = !DILocation(line: 503, column: 15, scope: !1564)
!1587 = !DILocation(line: 506, column: 9, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !1564, file: !1, line: 506, column: 7)
!1589 = !DILocation(line: 506, column: 7, scope: !1588)
!1590 = !DILocation(line: 507, column: 5, scope: !1588)
!1591 = !DILocation(line: 510, column: 41, scope: !1564)
!1592 = !DILocation(line: 510, column: 3, scope: !1564)
!1593 = !DILocation(line: 510, column: 10, scope: !1564)
!1594 = !DILocation(line: 510, column: 16, scope: !1564)
!1595 = !DILocation(line: 510, column: 33, scope: !1564)
!1596 = !DILocation(line: 511, column: 39, scope: !1564)
!1597 = !DILocation(line: 511, column: 3, scope: !1564)
!1598 = !DILocation(line: 511, column: 10, scope: !1564)
!1599 = !DILocation(line: 511, column: 16, scope: !1564)
!1600 = !DILocation(line: 511, column: 31, scope: !1564)
!1601 = !DILocation(line: 512, column: 3, scope: !1564)
!1602 = !DILocation(line: 513, column: 1, scope: !1564)
!1603 = distinct !DISubprogram(name: "htest_one_block", scope: !1, file: !1, line: 540, type: !1604, scopeLine: 542, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !566)
!1604 = !DISubroutineType(types: !1605)
!1605 = !{null, !1606, !179, !552, !552}
!1606 = !DIDerivedType(tag: DW_TAG_typedef, name: "JCOEFPTR", file: !4, line: 75, baseType: !1607)
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!1608 = !DILocalVariable(name: "block", arg: 1, scope: !1603, file: !1, line: 540, type: !1606)
!1609 = !DILocation(line: 540, column: 27, scope: !1603)
!1610 = !DILocalVariable(name: "last_dc_val", arg: 2, scope: !1603, file: !1, line: 540, type: !179)
!1611 = !DILocation(line: 540, column: 38, scope: !1603)
!1612 = !DILocalVariable(name: "dc_counts", arg: 3, scope: !1603, file: !1, line: 541, type: !552)
!1613 = !DILocation(line: 541, column: 9, scope: !1603)
!1614 = !DILocalVariable(name: "ac_counts", arg: 4, scope: !1603, file: !1, line: 541, type: !552)
!1615 = !DILocation(line: 541, column: 27, scope: !1603)
!1616 = !DILocalVariable(name: "temp", scope: !1603, file: !1, line: 543, type: !179)
!1617 = !DILocation(line: 543, column: 16, scope: !1603)
!1618 = !DILocalVariable(name: "nbits", scope: !1603, file: !1, line: 544, type: !179)
!1619 = !DILocation(line: 544, column: 16, scope: !1603)
!1620 = !DILocalVariable(name: "k", scope: !1603, file: !1, line: 545, type: !179)
!1621 = !DILocation(line: 545, column: 16, scope: !1603)
!1622 = !DILocalVariable(name: "r", scope: !1603, file: !1, line: 545, type: !179)
!1623 = !DILocation(line: 545, column: 19, scope: !1603)
!1624 = !DILocation(line: 549, column: 10, scope: !1603)
!1625 = !DILocation(line: 549, column: 21, scope: !1603)
!1626 = !DILocation(line: 549, column: 19, scope: !1603)
!1627 = !DILocation(line: 549, column: 8, scope: !1603)
!1628 = !DILocation(line: 550, column: 7, scope: !1629)
!1629 = distinct !DILexicalBlock(scope: !1603, file: !1, line: 550, column: 7)
!1630 = !DILocation(line: 550, column: 12, scope: !1629)
!1631 = !DILocation(line: 551, column: 13, scope: !1629)
!1632 = !DILocation(line: 551, column: 12, scope: !1629)
!1633 = !DILocation(line: 551, column: 10, scope: !1629)
!1634 = !DILocation(line: 551, column: 5, scope: !1629)
!1635 = !DILocation(line: 554, column: 9, scope: !1603)
!1636 = !DILocation(line: 555, column: 3, scope: !1603)
!1637 = !DILocation(line: 555, column: 10, scope: !1603)
!1638 = !DILocation(line: 556, column: 10, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !1603, file: !1, line: 555, column: 16)
!1640 = !DILocation(line: 557, column: 10, scope: !1639)
!1641 = distinct !{!1641, !1636, !1642, !639}
!1642 = !DILocation(line: 558, column: 3, scope: !1603)
!1643 = !DILocation(line: 561, column: 3, scope: !1603)
!1644 = !DILocation(line: 561, column: 13, scope: !1603)
!1645 = !DILocation(line: 561, column: 19, scope: !1603)
!1646 = !DILocation(line: 565, column: 5, scope: !1603)
!1647 = !DILocation(line: 567, column: 10, scope: !1648)
!1648 = distinct !DILexicalBlock(scope: !1603, file: !1, line: 567, column: 3)
!1649 = !DILocation(line: 567, column: 8, scope: !1648)
!1650 = !DILocation(line: 567, column: 15, scope: !1651)
!1651 = distinct !DILexicalBlock(scope: !1648, file: !1, line: 567, column: 3)
!1652 = !DILocation(line: 567, column: 17, scope: !1651)
!1653 = !DILocation(line: 567, column: 3, scope: !1648)
!1654 = !DILocation(line: 568, column: 17, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !1656, file: !1, line: 568, column: 9)
!1656 = distinct !DILexicalBlock(scope: !1651, file: !1, line: 567, column: 34)
!1657 = !DILocation(line: 568, column: 42, scope: !1655)
!1658 = !DILocation(line: 568, column: 23, scope: !1655)
!1659 = !DILocation(line: 568, column: 15, scope: !1655)
!1660 = !DILocation(line: 568, column: 47, scope: !1655)
!1661 = !DILocation(line: 569, column: 8, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1655, file: !1, line: 568, column: 53)
!1663 = !DILocation(line: 570, column: 5, scope: !1662)
!1664 = !DILocation(line: 572, column: 7, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !1655, file: !1, line: 570, column: 12)
!1666 = !DILocation(line: 572, column: 14, scope: !1665)
!1667 = !DILocation(line: 572, column: 16, scope: !1665)
!1668 = !DILocation(line: 573, column: 2, scope: !1669)
!1669 = distinct !DILexicalBlock(scope: !1665, file: !1, line: 572, column: 22)
!1670 = !DILocation(line: 573, column: 17, scope: !1669)
!1671 = !DILocation(line: 574, column: 4, scope: !1669)
!1672 = distinct !{!1672, !1664, !1673, !639}
!1673 = !DILocation(line: 575, column: 7, scope: !1665)
!1674 = !DILocation(line: 578, column: 11, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !1665, file: !1, line: 578, column: 11)
!1676 = !DILocation(line: 578, column: 16, scope: !1675)
!1677 = !DILocation(line: 579, column: 10, scope: !1675)
!1678 = !DILocation(line: 579, column: 9, scope: !1675)
!1679 = !DILocation(line: 579, column: 7, scope: !1675)
!1680 = !DILocation(line: 579, column: 2, scope: !1675)
!1681 = !DILocation(line: 582, column: 13, scope: !1665)
!1682 = !DILocation(line: 583, column: 7, scope: !1665)
!1683 = !DILocation(line: 583, column: 20, scope: !1665)
!1684 = !DILocation(line: 584, column: 7, scope: !1665)
!1685 = distinct !{!1685, !1682, !1684, !639}
!1686 = !DILocation(line: 587, column: 7, scope: !1665)
!1687 = !DILocation(line: 587, column: 18, scope: !1665)
!1688 = !DILocation(line: 587, column: 20, scope: !1665)
!1689 = !DILocation(line: 587, column: 28, scope: !1665)
!1690 = !DILocation(line: 587, column: 26, scope: !1665)
!1691 = !DILocation(line: 587, column: 34, scope: !1665)
!1692 = !DILocation(line: 589, column: 9, scope: !1665)
!1693 = !DILocation(line: 591, column: 3, scope: !1656)
!1694 = !DILocation(line: 567, column: 30, scope: !1651)
!1695 = !DILocation(line: 567, column: 3, scope: !1651)
!1696 = distinct !{!1696, !1653, !1697, !639}
!1697 = !DILocation(line: 591, column: 3, scope: !1648)
!1698 = !DILocation(line: 594, column: 7, scope: !1699)
!1699 = distinct !DILexicalBlock(scope: !1603, file: !1, line: 594, column: 7)
!1700 = !DILocation(line: 594, column: 9, scope: !1699)
!1701 = !DILocation(line: 595, column: 5, scope: !1699)
!1702 = !DILocation(line: 595, column: 17, scope: !1699)
!1703 = !DILocation(line: 596, column: 1, scope: !1603)
!1704 = distinct !DISubprogram(name: "emit_restart", scope: !1, file: !1, line: 412, type: !1705, scopeLine: 413, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !566)
!1705 = !DISubroutineType(types: !1706)
!1706 = !{!256, !1707, !179}
!1707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1434, size: 64)
!1708 = !DILocalVariable(name: "state", arg: 1, scope: !1704, file: !1, line: 412, type: !1707)
!1709 = !DILocation(line: 412, column: 31, scope: !1704)
!1710 = !DILocalVariable(name: "restart_num", arg: 2, scope: !1704, file: !1, line: 412, type: !179)
!1711 = !DILocation(line: 412, column: 42, scope: !1704)
!1712 = !DILocalVariable(name: "ci", scope: !1704, file: !1, line: 414, type: !179)
!1713 = !DILocation(line: 414, column: 7, scope: !1704)
!1714 = !DILocation(line: 416, column: 20, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !1704, file: !1, line: 416, column: 7)
!1716 = !DILocation(line: 416, column: 9, scope: !1715)
!1717 = !DILocation(line: 416, column: 7, scope: !1715)
!1718 = !DILocation(line: 417, column: 5, scope: !1715)
!1719 = !DILocation(line: 419, column: 3, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1704, file: !1, line: 419, column: 3)
!1721 = !DILocation(line: 419, column: 3, scope: !1722)
!1722 = distinct !DILexicalBlock(scope: !1720, file: !1, line: 419, column: 3)
!1723 = !DILocation(line: 419, column: 3, scope: !1724)
!1724 = distinct !DILexicalBlock(scope: !1722, file: !1, line: 419, column: 3)
!1725 = !DILocation(line: 419, column: 3, scope: !1726)
!1726 = distinct !DILexicalBlock(scope: !1724, file: !1, line: 419, column: 3)
!1727 = !DILocation(line: 420, column: 3, scope: !1728)
!1728 = distinct !DILexicalBlock(scope: !1704, file: !1, line: 420, column: 3)
!1729 = !DILocation(line: 420, column: 3, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1728, file: !1, line: 420, column: 3)
!1731 = !DILocation(line: 420, column: 3, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !1730, file: !1, line: 420, column: 3)
!1733 = !DILocation(line: 420, column: 3, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !1732, file: !1, line: 420, column: 3)
!1735 = !DILocation(line: 423, column: 11, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !1704, file: !1, line: 423, column: 3)
!1737 = !DILocation(line: 423, column: 8, scope: !1736)
!1738 = !DILocation(line: 423, column: 16, scope: !1739)
!1739 = distinct !DILexicalBlock(scope: !1736, file: !1, line: 423, column: 3)
!1740 = !DILocation(line: 423, column: 21, scope: !1739)
!1741 = !DILocation(line: 423, column: 28, scope: !1739)
!1742 = !DILocation(line: 423, column: 35, scope: !1739)
!1743 = !DILocation(line: 423, column: 19, scope: !1739)
!1744 = !DILocation(line: 423, column: 3, scope: !1736)
!1745 = !DILocation(line: 424, column: 5, scope: !1739)
!1746 = !DILocation(line: 424, column: 12, scope: !1739)
!1747 = !DILocation(line: 424, column: 16, scope: !1739)
!1748 = !DILocation(line: 424, column: 28, scope: !1739)
!1749 = !DILocation(line: 424, column: 32, scope: !1739)
!1750 = !DILocation(line: 423, column: 52, scope: !1739)
!1751 = !DILocation(line: 423, column: 3, scope: !1739)
!1752 = distinct !{!1752, !1744, !1753, !639}
!1753 = !DILocation(line: 424, column: 34, scope: !1736)
!1754 = !DILocation(line: 428, column: 3, scope: !1704)
!1755 = !DILocation(line: 429, column: 1, scope: !1704)
!1756 = distinct !DISubprogram(name: "encode_one_block", scope: !1, file: !1, line: 322, type: !1757, scopeLine: 324, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !566)
!1757 = !DISubroutineType(types: !1758)
!1758 = !{!256, !1707, !1606, !179, !151, !151}
!1759 = !DILocalVariable(name: "state", arg: 1, scope: !1756, file: !1, line: 322, type: !1707)
!1760 = !DILocation(line: 322, column: 35, scope: !1756)
!1761 = !DILocalVariable(name: "block", arg: 2, scope: !1756, file: !1, line: 322, type: !1606)
!1762 = !DILocation(line: 322, column: 51, scope: !1756)
!1763 = !DILocalVariable(name: "last_dc_val", arg: 3, scope: !1756, file: !1, line: 322, type: !179)
!1764 = !DILocation(line: 322, column: 62, scope: !1756)
!1765 = !DILocalVariable(name: "dctbl", arg: 4, scope: !1756, file: !1, line: 323, type: !151)
!1766 = !DILocation(line: 323, column: 20, scope: !1756)
!1767 = !DILocalVariable(name: "actbl", arg: 5, scope: !1756, file: !1, line: 323, type: !151)
!1768 = !DILocation(line: 323, column: 42, scope: !1756)
!1769 = !DILocalVariable(name: "temp", scope: !1756, file: !1, line: 325, type: !179)
!1770 = !DILocation(line: 325, column: 16, scope: !1756)
!1771 = !DILocalVariable(name: "temp2", scope: !1756, file: !1, line: 325, type: !179)
!1772 = !DILocation(line: 325, column: 22, scope: !1756)
!1773 = !DILocalVariable(name: "nbits", scope: !1756, file: !1, line: 326, type: !179)
!1774 = !DILocation(line: 326, column: 16, scope: !1756)
!1775 = !DILocalVariable(name: "k", scope: !1756, file: !1, line: 327, type: !179)
!1776 = !DILocation(line: 327, column: 16, scope: !1756)
!1777 = !DILocalVariable(name: "r", scope: !1756, file: !1, line: 327, type: !179)
!1778 = !DILocation(line: 327, column: 19, scope: !1756)
!1779 = !DILocalVariable(name: "i", scope: !1756, file: !1, line: 327, type: !179)
!1780 = !DILocation(line: 327, column: 22, scope: !1756)
!1781 = !DILocation(line: 331, column: 18, scope: !1756)
!1782 = !DILocation(line: 331, column: 29, scope: !1756)
!1783 = !DILocation(line: 331, column: 27, scope: !1756)
!1784 = !DILocation(line: 331, column: 16, scope: !1756)
!1785 = !DILocation(line: 331, column: 8, scope: !1756)
!1786 = !DILocation(line: 333, column: 7, scope: !1787)
!1787 = distinct !DILexicalBlock(scope: !1756, file: !1, line: 333, column: 7)
!1788 = !DILocation(line: 333, column: 12, scope: !1787)
!1789 = !DILocation(line: 334, column: 13, scope: !1790)
!1790 = distinct !DILexicalBlock(scope: !1787, file: !1, line: 333, column: 17)
!1791 = !DILocation(line: 334, column: 12, scope: !1790)
!1792 = !DILocation(line: 334, column: 10, scope: !1790)
!1793 = !DILocation(line: 337, column: 10, scope: !1790)
!1794 = !DILocation(line: 338, column: 3, scope: !1790)
!1795 = !DILocation(line: 341, column: 9, scope: !1756)
!1796 = !DILocation(line: 342, column: 3, scope: !1756)
!1797 = !DILocation(line: 342, column: 10, scope: !1756)
!1798 = !DILocation(line: 343, column: 10, scope: !1799)
!1799 = distinct !DILexicalBlock(scope: !1756, file: !1, line: 342, column: 16)
!1800 = !DILocation(line: 344, column: 10, scope: !1799)
!1801 = distinct !{!1801, !1796, !1802, !639}
!1802 = !DILocation(line: 345, column: 3, scope: !1756)
!1803 = !DILocation(line: 348, column: 19, scope: !1804)
!1804 = distinct !DILexicalBlock(scope: !1756, file: !1, line: 348, column: 7)
!1805 = !DILocation(line: 348, column: 26, scope: !1804)
!1806 = !DILocation(line: 348, column: 33, scope: !1804)
!1807 = !DILocation(line: 348, column: 40, scope: !1804)
!1808 = !DILocation(line: 348, column: 48, scope: !1804)
!1809 = !DILocation(line: 348, column: 55, scope: !1804)
!1810 = !DILocation(line: 348, column: 62, scope: !1804)
!1811 = !DILocation(line: 348, column: 9, scope: !1804)
!1812 = !DILocation(line: 348, column: 7, scope: !1804)
!1813 = !DILocation(line: 349, column: 5, scope: !1804)
!1814 = !DILocation(line: 353, column: 7, scope: !1815)
!1815 = distinct !DILexicalBlock(scope: !1756, file: !1, line: 353, column: 7)
!1816 = !DILocation(line: 354, column: 21, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !1815, file: !1, line: 354, column: 9)
!1818 = !DILocation(line: 354, column: 43, scope: !1817)
!1819 = !DILocation(line: 354, column: 50, scope: !1817)
!1820 = !DILocation(line: 354, column: 11, scope: !1817)
!1821 = !DILocation(line: 354, column: 9, scope: !1817)
!1822 = !DILocation(line: 355, column: 7, scope: !1817)
!1823 = !DILocation(line: 354, column: 55, scope: !1817)
!1824 = !DILocation(line: 359, column: 5, scope: !1756)
!1825 = !DILocation(line: 361, column: 10, scope: !1826)
!1826 = distinct !DILexicalBlock(scope: !1756, file: !1, line: 361, column: 3)
!1827 = !DILocation(line: 361, column: 8, scope: !1826)
!1828 = !DILocation(line: 361, column: 15, scope: !1829)
!1829 = distinct !DILexicalBlock(scope: !1826, file: !1, line: 361, column: 3)
!1830 = !DILocation(line: 361, column: 17, scope: !1829)
!1831 = !DILocation(line: 361, column: 3, scope: !1826)
!1832 = !DILocation(line: 362, column: 17, scope: !1833)
!1833 = distinct !DILexicalBlock(scope: !1834, file: !1, line: 362, column: 9)
!1834 = distinct !DILexicalBlock(scope: !1829, file: !1, line: 361, column: 34)
!1835 = !DILocation(line: 362, column: 42, scope: !1833)
!1836 = !DILocation(line: 362, column: 23, scope: !1833)
!1837 = !DILocation(line: 362, column: 15, scope: !1833)
!1838 = !DILocation(line: 362, column: 47, scope: !1833)
!1839 = !DILocation(line: 363, column: 8, scope: !1840)
!1840 = distinct !DILexicalBlock(scope: !1833, file: !1, line: 362, column: 53)
!1841 = !DILocation(line: 364, column: 5, scope: !1840)
!1842 = !DILocation(line: 366, column: 7, scope: !1843)
!1843 = distinct !DILexicalBlock(scope: !1833, file: !1, line: 364, column: 12)
!1844 = !DILocation(line: 366, column: 14, scope: !1843)
!1845 = !DILocation(line: 366, column: 16, scope: !1843)
!1846 = !DILocation(line: 367, column: 18, scope: !1847)
!1847 = distinct !DILexicalBlock(scope: !1848, file: !1, line: 367, column: 6)
!1848 = distinct !DILexicalBlock(scope: !1843, file: !1, line: 366, column: 22)
!1849 = !DILocation(line: 367, column: 25, scope: !1847)
!1850 = !DILocation(line: 367, column: 32, scope: !1847)
!1851 = !DILocation(line: 367, column: 46, scope: !1847)
!1852 = !DILocation(line: 367, column: 53, scope: !1847)
!1853 = !DILocation(line: 367, column: 8, scope: !1847)
!1854 = !DILocation(line: 367, column: 6, scope: !1847)
!1855 = !DILocation(line: 368, column: 4, scope: !1847)
!1856 = !DILocation(line: 369, column: 4, scope: !1848)
!1857 = distinct !{!1857, !1842, !1858, !639}
!1858 = !DILocation(line: 370, column: 7, scope: !1843)
!1859 = !DILocation(line: 372, column: 15, scope: !1843)
!1860 = !DILocation(line: 372, column: 13, scope: !1843)
!1861 = !DILocation(line: 373, column: 11, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1843, file: !1, line: 373, column: 11)
!1863 = !DILocation(line: 373, column: 16, scope: !1862)
!1864 = !DILocation(line: 374, column: 10, scope: !1865)
!1865 = distinct !DILexicalBlock(scope: !1862, file: !1, line: 373, column: 21)
!1866 = !DILocation(line: 374, column: 9, scope: !1865)
!1867 = !DILocation(line: 374, column: 7, scope: !1865)
!1868 = !DILocation(line: 376, column: 7, scope: !1865)
!1869 = !DILocation(line: 377, column: 7, scope: !1865)
!1870 = !DILocation(line: 380, column: 13, scope: !1843)
!1871 = !DILocation(line: 381, column: 7, scope: !1843)
!1872 = !DILocation(line: 381, column: 20, scope: !1843)
!1873 = !DILocation(line: 382, column: 7, scope: !1843)
!1874 = distinct !{!1874, !1871, !1873, !639}
!1875 = !DILocation(line: 385, column: 12, scope: !1843)
!1876 = !DILocation(line: 385, column: 14, scope: !1843)
!1877 = !DILocation(line: 385, column: 22, scope: !1843)
!1878 = !DILocation(line: 385, column: 20, scope: !1843)
!1879 = !DILocation(line: 385, column: 9, scope: !1843)
!1880 = !DILocation(line: 386, column: 23, scope: !1881)
!1881 = distinct !DILexicalBlock(scope: !1843, file: !1, line: 386, column: 11)
!1882 = !DILocation(line: 386, column: 30, scope: !1881)
!1883 = !DILocation(line: 386, column: 37, scope: !1881)
!1884 = !DILocation(line: 386, column: 44, scope: !1881)
!1885 = !DILocation(line: 386, column: 48, scope: !1881)
!1886 = !DILocation(line: 386, column: 55, scope: !1881)
!1887 = !DILocation(line: 386, column: 62, scope: !1881)
!1888 = !DILocation(line: 386, column: 13, scope: !1881)
!1889 = !DILocation(line: 386, column: 11, scope: !1881)
!1890 = !DILocation(line: 387, column: 2, scope: !1881)
!1891 = !DILocation(line: 391, column: 23, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1843, file: !1, line: 391, column: 11)
!1893 = !DILocation(line: 391, column: 45, scope: !1892)
!1894 = !DILocation(line: 391, column: 52, scope: !1892)
!1895 = !DILocation(line: 391, column: 13, scope: !1892)
!1896 = !DILocation(line: 391, column: 11, scope: !1892)
!1897 = !DILocation(line: 392, column: 2, scope: !1892)
!1898 = !DILocation(line: 394, column: 9, scope: !1843)
!1899 = !DILocation(line: 396, column: 3, scope: !1834)
!1900 = !DILocation(line: 361, column: 30, scope: !1829)
!1901 = !DILocation(line: 361, column: 3, scope: !1829)
!1902 = distinct !{!1902, !1831, !1903, !639}
!1903 = !DILocation(line: 396, column: 3, scope: !1826)
!1904 = !DILocation(line: 399, column: 7, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !1756, file: !1, line: 399, column: 7)
!1906 = !DILocation(line: 399, column: 9, scope: !1905)
!1907 = !DILocation(line: 400, column: 21, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !1905, file: !1, line: 400, column: 9)
!1909 = !DILocation(line: 400, column: 28, scope: !1908)
!1910 = !DILocation(line: 400, column: 35, scope: !1908)
!1911 = !DILocation(line: 400, column: 46, scope: !1908)
!1912 = !DILocation(line: 400, column: 53, scope: !1908)
!1913 = !DILocation(line: 400, column: 11, scope: !1908)
!1914 = !DILocation(line: 400, column: 9, scope: !1908)
!1915 = !DILocation(line: 401, column: 7, scope: !1908)
!1916 = !DILocation(line: 400, column: 62, scope: !1908)
!1917 = !DILocation(line: 403, column: 3, scope: !1756)
!1918 = !DILocation(line: 404, column: 1, scope: !1756)
!1919 = distinct !DISubprogram(name: "flush_bits", scope: !1, file: !1, line: 309, type: !1920, scopeLine: 310, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !566)
!1920 = !DISubroutineType(types: !1921)
!1921 = !{!256, !1707}
!1922 = !DILocalVariable(name: "state", arg: 1, scope: !1919, file: !1, line: 309, type: !1707)
!1923 = !DILocation(line: 309, column: 29, scope: !1919)
!1924 = !DILocation(line: 311, column: 19, scope: !1925)
!1925 = distinct !DILexicalBlock(scope: !1919, file: !1, line: 311, column: 7)
!1926 = !DILocation(line: 311, column: 9, scope: !1925)
!1927 = !DILocation(line: 311, column: 7, scope: !1925)
!1928 = !DILocation(line: 312, column: 5, scope: !1925)
!1929 = !DILocation(line: 313, column: 3, scope: !1919)
!1930 = !DILocation(line: 313, column: 10, scope: !1919)
!1931 = !DILocation(line: 313, column: 14, scope: !1919)
!1932 = !DILocation(line: 313, column: 25, scope: !1919)
!1933 = !DILocation(line: 314, column: 3, scope: !1919)
!1934 = !DILocation(line: 314, column: 10, scope: !1919)
!1935 = !DILocation(line: 314, column: 14, scope: !1919)
!1936 = !DILocation(line: 314, column: 23, scope: !1919)
!1937 = !DILocation(line: 315, column: 3, scope: !1919)
!1938 = !DILocation(line: 316, column: 1, scope: !1919)
!1939 = distinct !DISubprogram(name: "dump_buffer", scope: !1, file: !1, line: 247, type: !1920, scopeLine: 249, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !566)
!1940 = !DILocalVariable(name: "state", arg: 1, scope: !1939, file: !1, line: 247, type: !1707)
!1941 = !DILocation(line: 247, column: 30, scope: !1939)
!1942 = !DILocalVariable(name: "dest", scope: !1939, file: !1, line: 250, type: !312)
!1943 = !DILocation(line: 250, column: 33, scope: !1939)
!1944 = !DILocation(line: 250, column: 40, scope: !1939)
!1945 = !DILocation(line: 250, column: 47, scope: !1939)
!1946 = !DILocation(line: 250, column: 54, scope: !1939)
!1947 = !DILocation(line: 252, column: 11, scope: !1948)
!1948 = distinct !DILexicalBlock(scope: !1939, file: !1, line: 252, column: 7)
!1949 = !DILocation(line: 252, column: 17, scope: !1948)
!1950 = !DILocation(line: 252, column: 39, scope: !1948)
!1951 = !DILocation(line: 252, column: 46, scope: !1948)
!1952 = !DILocation(line: 252, column: 9, scope: !1948)
!1953 = !DILocation(line: 252, column: 7, scope: !1948)
!1954 = !DILocation(line: 253, column: 5, scope: !1948)
!1955 = !DILocation(line: 255, column: 29, scope: !1939)
!1956 = !DILocation(line: 255, column: 35, scope: !1939)
!1957 = !DILocation(line: 255, column: 3, scope: !1939)
!1958 = !DILocation(line: 255, column: 10, scope: !1939)
!1959 = !DILocation(line: 255, column: 27, scope: !1939)
!1960 = !DILocation(line: 256, column: 27, scope: !1939)
!1961 = !DILocation(line: 256, column: 33, scope: !1939)
!1962 = !DILocation(line: 256, column: 3, scope: !1939)
!1963 = !DILocation(line: 256, column: 10, scope: !1939)
!1964 = !DILocation(line: 256, column: 25, scope: !1939)
!1965 = !DILocation(line: 257, column: 3, scope: !1939)
!1966 = !DILocation(line: 258, column: 1, scope: !1939)
!1967 = distinct !DISubprogram(name: "emit_bits", scope: !1, file: !1, line: 271, type: !1968, scopeLine: 273, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !566)
!1968 = !DISubroutineType(types: !1969)
!1969 = !{!256, !1707, !5, !179}
!1970 = !DILocalVariable(name: "state", arg: 1, scope: !1967, file: !1, line: 271, type: !1707)
!1971 = !DILocation(line: 271, column: 28, scope: !1967)
!1972 = !DILocalVariable(name: "code", arg: 2, scope: !1967, file: !1, line: 271, type: !5)
!1973 = !DILocation(line: 271, column: 48, scope: !1967)
!1974 = !DILocalVariable(name: "size", arg: 3, scope: !1967, file: !1, line: 271, type: !179)
!1975 = !DILocation(line: 271, column: 58, scope: !1967)
!1976 = !DILocalVariable(name: "put_buffer", scope: !1967, file: !1, line: 275, type: !542)
!1977 = !DILocation(line: 275, column: 18, scope: !1967)
!1978 = !DILocation(line: 275, column: 39, scope: !1967)
!1979 = !DILocation(line: 275, column: 31, scope: !1967)
!1980 = !DILocalVariable(name: "put_bits", scope: !1967, file: !1, line: 276, type: !179)
!1981 = !DILocation(line: 276, column: 16, scope: !1967)
!1982 = !DILocation(line: 276, column: 27, scope: !1967)
!1983 = !DILocation(line: 276, column: 34, scope: !1967)
!1984 = !DILocation(line: 276, column: 38, scope: !1967)
!1985 = !DILocation(line: 279, column: 7, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !1967, file: !1, line: 279, column: 7)
!1987 = !DILocation(line: 279, column: 12, scope: !1986)
!1988 = !DILocation(line: 280, column: 5, scope: !1986)
!1989 = !DILocation(line: 282, column: 31, scope: !1967)
!1990 = !DILocation(line: 282, column: 29, scope: !1967)
!1991 = !DILocation(line: 282, column: 37, scope: !1967)
!1992 = !DILocation(line: 282, column: 14, scope: !1967)
!1993 = !DILocation(line: 284, column: 15, scope: !1967)
!1994 = !DILocation(line: 284, column: 12, scope: !1967)
!1995 = !DILocation(line: 286, column: 23, scope: !1967)
!1996 = !DILocation(line: 286, column: 21, scope: !1967)
!1997 = !DILocation(line: 286, column: 14, scope: !1967)
!1998 = !DILocation(line: 288, column: 17, scope: !1967)
!1999 = !DILocation(line: 288, column: 24, scope: !1967)
!2000 = !DILocation(line: 288, column: 28, scope: !1967)
!2001 = !DILocation(line: 288, column: 14, scope: !1967)
!2002 = !DILocation(line: 290, column: 3, scope: !1967)
!2003 = !DILocation(line: 290, column: 10, scope: !1967)
!2004 = !DILocation(line: 290, column: 19, scope: !1967)
!2005 = !DILocalVariable(name: "c", scope: !2006, file: !1, line: 291, type: !179)
!2006 = distinct !DILexicalBlock(scope: !1967, file: !1, line: 290, column: 25)
!2007 = !DILocation(line: 291, column: 9, scope: !2006)
!2008 = !DILocation(line: 291, column: 21, scope: !2006)
!2009 = !DILocation(line: 291, column: 32, scope: !2006)
!2010 = !DILocation(line: 291, column: 39, scope: !2006)
!2011 = !DILocation(line: 291, column: 13, scope: !2006)
!2012 = !DILocation(line: 293, column: 5, scope: !2013)
!2013 = distinct !DILexicalBlock(scope: !2006, file: !1, line: 293, column: 5)
!2014 = !DILocation(line: 293, column: 5, scope: !2015)
!2015 = distinct !DILexicalBlock(scope: !2013, file: !1, line: 293, column: 5)
!2016 = !DILocation(line: 293, column: 5, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !2015, file: !1, line: 293, column: 5)
!2018 = !DILocation(line: 293, column: 5, scope: !2019)
!2019 = distinct !DILexicalBlock(scope: !2017, file: !1, line: 293, column: 5)
!2020 = !DILocation(line: 294, column: 9, scope: !2021)
!2021 = distinct !DILexicalBlock(scope: !2006, file: !1, line: 294, column: 9)
!2022 = !DILocation(line: 294, column: 11, scope: !2021)
!2023 = !DILocation(line: 295, column: 7, scope: !2024)
!2024 = distinct !DILexicalBlock(scope: !2025, file: !1, line: 295, column: 7)
!2025 = distinct !DILexicalBlock(scope: !2021, file: !1, line: 294, column: 20)
!2026 = !DILocation(line: 295, column: 7, scope: !2027)
!2027 = distinct !DILexicalBlock(scope: !2024, file: !1, line: 295, column: 7)
!2028 = !DILocation(line: 295, column: 7, scope: !2029)
!2029 = distinct !DILexicalBlock(scope: !2027, file: !1, line: 295, column: 7)
!2030 = !DILocation(line: 295, column: 7, scope: !2031)
!2031 = distinct !DILexicalBlock(scope: !2029, file: !1, line: 295, column: 7)
!2032 = !DILocation(line: 296, column: 5, scope: !2025)
!2033 = !DILocation(line: 297, column: 16, scope: !2006)
!2034 = !DILocation(line: 298, column: 14, scope: !2006)
!2035 = distinct !{!2035, !2002, !2036, !639}
!2036 = !DILocation(line: 299, column: 3, scope: !1967)
!2037 = !DILocation(line: 301, column: 27, scope: !1967)
!2038 = !DILocation(line: 301, column: 3, scope: !1967)
!2039 = !DILocation(line: 301, column: 10, scope: !1967)
!2040 = !DILocation(line: 301, column: 14, scope: !1967)
!2041 = !DILocation(line: 301, column: 25, scope: !1967)
!2042 = !DILocation(line: 302, column: 25, scope: !1967)
!2043 = !DILocation(line: 302, column: 3, scope: !1967)
!2044 = !DILocation(line: 302, column: 10, scope: !1967)
!2045 = !DILocation(line: 302, column: 14, scope: !1967)
!2046 = !DILocation(line: 302, column: 23, scope: !1967)
!2047 = !DILocation(line: 304, column: 3, scope: !1967)
!2048 = !DILocation(line: 305, column: 1, scope: !1967)
