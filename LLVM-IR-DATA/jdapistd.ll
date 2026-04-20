; ModuleID = 'cBench/consumer_jpeg_c/src/jdapistd.c'
source_filename = "cBench/consumer_jpeg_c/src/jdapistd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jpeg_decompress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_input_controller = type { ptr, ptr, ptr, ptr, i32, i32 }
%struct.jpeg_progress_mgr = type { ptr, i64, i64, i32, i32 }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_decomp_master = type { ptr, ptr, i32 }
%struct.jpeg_d_main_controller = type { ptr, ptr }
%struct.jpeg_d_coef_controller = type { ptr, ptr, ptr, ptr, ptr }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @jpeg_start_decompress(ptr noundef %0) #0 !dbg !289 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !583, !DIExpression(), !584)
  %5 = load ptr, ptr %3, align 8, !dbg !585
  %6 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %5, i32 0, i32 4, !dbg !587
  %7 = load i32, ptr %6, align 4, !dbg !587
  %8 = icmp eq i32 %7, 202, !dbg !588
  br i1 %8, label %9, label %21, !dbg !588

9:                                                ; preds = %1
  %10 = load ptr, ptr %3, align 8, !dbg !589
  call void @jinit_master_decompress(ptr noundef %10), !dbg !591
  %11 = load ptr, ptr %3, align 8, !dbg !592
  %12 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %11, i32 0, i32 14, !dbg !594
  %13 = load i32, ptr %12, align 8, !dbg !594
  %14 = icmp ne i32 %13, 0, !dbg !592
  br i1 %14, label %15, label %18, !dbg !592

15:                                               ; preds = %9
  %16 = load ptr, ptr %3, align 8, !dbg !595
  %17 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %16, i32 0, i32 4, !dbg !597
  store i32 207, ptr %17, align 4, !dbg !598
  store i32 1, ptr %2, align 4, !dbg !599
  br label %133, !dbg !599

18:                                               ; preds = %9
  %19 = load ptr, ptr %3, align 8, !dbg !600
  %20 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %19, i32 0, i32 4, !dbg !601
  store i32 203, ptr %20, align 4, !dbg !602
  br label %21, !dbg !603

21:                                               ; preds = %18, %1
  %22 = load ptr, ptr %3, align 8, !dbg !604
  %23 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %22, i32 0, i32 4, !dbg !606
  %24 = load i32, ptr %23, align 4, !dbg !606
  %25 = icmp eq i32 %24, 203, !dbg !607
  br i1 %25, label %26, label %105, !dbg !607

26:                                               ; preds = %21
  %27 = load ptr, ptr %3, align 8, !dbg !608
  %28 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %27, i32 0, i32 77, !dbg !611
  %29 = load ptr, ptr %28, align 8, !dbg !611
  %30 = getelementptr inbounds nuw %struct.jpeg_input_controller, ptr %29, i32 0, i32 4, !dbg !612
  %31 = load i32, ptr %30, align 8, !dbg !612
  %32 = icmp ne i32 %31, 0, !dbg !608
  br i1 %32, label %33, label %99, !dbg !608

33:                                               ; preds = %26
  br label %34, !dbg !613

34:                                               ; preds = %97, %33
    #dbg_declare(ptr %4, !615, !DIExpression(), !619)
  %35 = load ptr, ptr %3, align 8, !dbg !620
  %36 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %35, i32 0, i32 2, !dbg !622
  %37 = load ptr, ptr %36, align 8, !dbg !622
  %38 = icmp ne ptr %37, null, !dbg !623
  br i1 %38, label %39, label %46, !dbg !623

39:                                               ; preds = %34
  %40 = load ptr, ptr %3, align 8, !dbg !624
  %41 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %40, i32 0, i32 2, !dbg !625
  %42 = load ptr, ptr %41, align 8, !dbg !625
  %43 = getelementptr inbounds nuw %struct.jpeg_progress_mgr, ptr %42, i32 0, i32 0, !dbg !626
  %44 = load ptr, ptr %43, align 8, !dbg !626
  %45 = load ptr, ptr %3, align 8, !dbg !627
  call void %44(ptr noundef %45), !dbg !628
  br label %46, !dbg !628

46:                                               ; preds = %39, %34
  %47 = load ptr, ptr %3, align 8, !dbg !629
  %48 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %47, i32 0, i32 77, !dbg !630
  %49 = load ptr, ptr %48, align 8, !dbg !630
  %50 = getelementptr inbounds nuw %struct.jpeg_input_controller, ptr %49, i32 0, i32 0, !dbg !631
  %51 = load ptr, ptr %50, align 8, !dbg !631
  %52 = load ptr, ptr %3, align 8, !dbg !632
  %53 = call i32 %51(ptr noundef %52), !dbg !633
  store i32 %53, ptr %4, align 4, !dbg !634
  %54 = load i32, ptr %4, align 4, !dbg !635
  %55 = icmp eq i32 %54, 0, !dbg !637
  br i1 %55, label %56, label %57, !dbg !637

56:                                               ; preds = %46
  store i32 0, ptr %2, align 4, !dbg !638
  br label %133, !dbg !638

57:                                               ; preds = %46
  %58 = load i32, ptr %4, align 4, !dbg !639
  %59 = icmp eq i32 %58, 2, !dbg !641
  br i1 %59, label %60, label %61, !dbg !641

60:                                               ; preds = %57
  br label %98, !dbg !642

61:                                               ; preds = %57
  %62 = load ptr, ptr %3, align 8, !dbg !643
  %63 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %62, i32 0, i32 2, !dbg !645
  %64 = load ptr, ptr %63, align 8, !dbg !645
  %65 = icmp ne ptr %64, null, !dbg !646
  br i1 %65, label %66, label %97, !dbg !647

66:                                               ; preds = %61
  %67 = load i32, ptr %4, align 4, !dbg !648
  %68 = icmp eq i32 %67, 3, !dbg !649
  br i1 %68, label %72, label %69, !dbg !650

69:                                               ; preds = %66
  %70 = load i32, ptr %4, align 4, !dbg !651
  %71 = icmp eq i32 %70, 1, !dbg !652
  br i1 %71, label %72, label %97, !dbg !647

72:                                               ; preds = %69, %66
  %73 = load ptr, ptr %3, align 8, !dbg !653
  %74 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %73, i32 0, i32 2, !dbg !656
  %75 = load ptr, ptr %74, align 8, !dbg !656
  %76 = getelementptr inbounds nuw %struct.jpeg_progress_mgr, ptr %75, i32 0, i32 1, !dbg !657
  %77 = load i64, ptr %76, align 8, !dbg !658
  %78 = add nsw i64 %77, 1, !dbg !658
  store i64 %78, ptr %76, align 8, !dbg !658
  %79 = load ptr, ptr %3, align 8, !dbg !659
  %80 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %79, i32 0, i32 2, !dbg !660
  %81 = load ptr, ptr %80, align 8, !dbg !660
  %82 = getelementptr inbounds nuw %struct.jpeg_progress_mgr, ptr %81, i32 0, i32 2, !dbg !661
  %83 = load i64, ptr %82, align 8, !dbg !661
  %84 = icmp sge i64 %78, %83, !dbg !662
  br i1 %84, label %85, label %96, !dbg !662

85:                                               ; preds = %72
  %86 = load ptr, ptr %3, align 8, !dbg !663
  %87 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %86, i32 0, i32 60, !dbg !665
  %88 = load i32, ptr %87, align 8, !dbg !665
  %89 = zext i32 %88 to i64, !dbg !666
  %90 = load ptr, ptr %3, align 8, !dbg !667
  %91 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %90, i32 0, i32 2, !dbg !668
  %92 = load ptr, ptr %91, align 8, !dbg !668
  %93 = getelementptr inbounds nuw %struct.jpeg_progress_mgr, ptr %92, i32 0, i32 2, !dbg !669
  %94 = load i64, ptr %93, align 8, !dbg !670
  %95 = add nsw i64 %94, %89, !dbg !670
  store i64 %95, ptr %93, align 8, !dbg !670
  br label %96, !dbg !671

96:                                               ; preds = %85, %72
  br label %97, !dbg !672

97:                                               ; preds = %96, %69, %61
  br label %34, !dbg !673, !llvm.loop !674

98:                                               ; preds = %60
  br label %99, !dbg !677

99:                                               ; preds = %98, %26
  %100 = load ptr, ptr %3, align 8, !dbg !678
  %101 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %100, i32 0, i32 34, !dbg !679
  %102 = load i32, ptr %101, align 4, !dbg !679
  %103 = load ptr, ptr %3, align 8, !dbg !680
  %104 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %103, i32 0, i32 36, !dbg !681
  store i32 %102, ptr %104, align 4, !dbg !682
  br label %130, !dbg !683

105:                                              ; preds = %21
  %106 = load ptr, ptr %3, align 8, !dbg !684
  %107 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %106, i32 0, i32 4, !dbg !686
  %108 = load i32, ptr %107, align 4, !dbg !686
  %109 = icmp ne i32 %108, 204, !dbg !687
  br i1 %109, label %110, label %129, !dbg !687

110:                                              ; preds = %105
  %111 = load ptr, ptr %3, align 8, !dbg !688
  %112 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %111, i32 0, i32 0, !dbg !688
  %113 = load ptr, ptr %112, align 8, !dbg !688
  %114 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %113, i32 0, i32 5, !dbg !688
  store i32 18, ptr %114, align 8, !dbg !688
  %115 = load ptr, ptr %3, align 8, !dbg !688
  %116 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %115, i32 0, i32 4, !dbg !688
  %117 = load i32, ptr %116, align 4, !dbg !688
  %118 = load ptr, ptr %3, align 8, !dbg !688
  %119 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %118, i32 0, i32 0, !dbg !688
  %120 = load ptr, ptr %119, align 8, !dbg !688
  %121 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %120, i32 0, i32 6, !dbg !688
  %122 = getelementptr inbounds [8 x i32], ptr %121, i64 0, i64 0, !dbg !688
  store i32 %117, ptr %122, align 4, !dbg !688
  %123 = load ptr, ptr %3, align 8, !dbg !688
  %124 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %123, i32 0, i32 0, !dbg !688
  %125 = load ptr, ptr %124, align 8, !dbg !688
  %126 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %125, i32 0, i32 0, !dbg !688
  %127 = load ptr, ptr %126, align 8, !dbg !688
  %128 = load ptr, ptr %3, align 8, !dbg !688
  call void %127(ptr noundef %128), !dbg !688
  br label %129, !dbg !688

129:                                              ; preds = %110, %105
  br label %130

130:                                              ; preds = %129, %99
  %131 = load ptr, ptr %3, align 8, !dbg !689
  %132 = call i32 @output_pass_setup(ptr noundef %131), !dbg !690
  store i32 %132, ptr %2, align 4, !dbg !691
  br label %133, !dbg !691

133:                                              ; preds = %130, %56, %15
  %134 = load i32, ptr %2, align 4, !dbg !692
  ret i32 %134, !dbg !692
}

declare void @jinit_master_decompress(ptr noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @output_pass_setup(ptr noundef %0) #0 !dbg !693 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !694, !DIExpression(), !695)
  %5 = load ptr, ptr %3, align 8, !dbg !696
  %6 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %5, i32 0, i32 4, !dbg !698
  %7 = load i32, ptr %6, align 4, !dbg !698
  %8 = icmp ne i32 %7, 204, !dbg !699
  br i1 %8, label %9, label %20, !dbg !699

9:                                                ; preds = %1
  %10 = load ptr, ptr %3, align 8, !dbg !700
  %11 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %10, i32 0, i32 73, !dbg !702
  %12 = load ptr, ptr %11, align 8, !dbg !702
  %13 = getelementptr inbounds nuw %struct.jpeg_decomp_master, ptr %12, i32 0, i32 0, !dbg !703
  %14 = load ptr, ptr %13, align 8, !dbg !703
  %15 = load ptr, ptr %3, align 8, !dbg !704
  call void %14(ptr noundef %15), !dbg !705
  %16 = load ptr, ptr %3, align 8, !dbg !706
  %17 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %16, i32 0, i32 33, !dbg !707
  store i32 0, ptr %17, align 8, !dbg !708
  %18 = load ptr, ptr %3, align 8, !dbg !709
  %19 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %18, i32 0, i32 4, !dbg !710
  store i32 204, ptr %19, align 4, !dbg !711
  br label %20, !dbg !712

20:                                               ; preds = %9, %1
  br label %21, !dbg !713

21:                                               ; preds = %84, %20
  %22 = load ptr, ptr %3, align 8, !dbg !714
  %23 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %22, i32 0, i32 73, !dbg !715
  %24 = load ptr, ptr %23, align 8, !dbg !715
  %25 = getelementptr inbounds nuw %struct.jpeg_decomp_master, ptr %24, i32 0, i32 2, !dbg !716
  %26 = load i32, ptr %25, align 8, !dbg !716
  %27 = icmp ne i32 %26, 0, !dbg !713
  br i1 %27, label %28, label %99, !dbg !713

28:                                               ; preds = %21
  br label %29, !dbg !717

29:                                               ; preds = %83, %28
  %30 = load ptr, ptr %3, align 8, !dbg !719
  %31 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %30, i32 0, i32 33, !dbg !720
  %32 = load i32, ptr %31, align 8, !dbg !720
  %33 = load ptr, ptr %3, align 8, !dbg !721
  %34 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %33, i32 0, i32 27, !dbg !722
  %35 = load i32, ptr %34, align 4, !dbg !722
  %36 = icmp ult i32 %32, %35, !dbg !723
  br i1 %36, label %37, label %84, !dbg !717

37:                                               ; preds = %29
    #dbg_declare(ptr %4, !724, !DIExpression(), !726)
  %38 = load ptr, ptr %3, align 8, !dbg !727
  %39 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %38, i32 0, i32 2, !dbg !729
  %40 = load ptr, ptr %39, align 8, !dbg !729
  %41 = icmp ne ptr %40, null, !dbg !730
  br i1 %41, label %42, label %65, !dbg !730

42:                                               ; preds = %37
  %43 = load ptr, ptr %3, align 8, !dbg !731
  %44 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %43, i32 0, i32 33, !dbg !733
  %45 = load i32, ptr %44, align 8, !dbg !733
  %46 = zext i32 %45 to i64, !dbg !734
  %47 = load ptr, ptr %3, align 8, !dbg !735
  %48 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %47, i32 0, i32 2, !dbg !736
  %49 = load ptr, ptr %48, align 8, !dbg !736
  %50 = getelementptr inbounds nuw %struct.jpeg_progress_mgr, ptr %49, i32 0, i32 1, !dbg !737
  store i64 %46, ptr %50, align 8, !dbg !738
  %51 = load ptr, ptr %3, align 8, !dbg !739
  %52 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %51, i32 0, i32 27, !dbg !740
  %53 = load i32, ptr %52, align 4, !dbg !740
  %54 = zext i32 %53 to i64, !dbg !741
  %55 = load ptr, ptr %3, align 8, !dbg !742
  %56 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %55, i32 0, i32 2, !dbg !743
  %57 = load ptr, ptr %56, align 8, !dbg !743
  %58 = getelementptr inbounds nuw %struct.jpeg_progress_mgr, ptr %57, i32 0, i32 2, !dbg !744
  store i64 %54, ptr %58, align 8, !dbg !745
  %59 = load ptr, ptr %3, align 8, !dbg !746
  %60 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %59, i32 0, i32 2, !dbg !747
  %61 = load ptr, ptr %60, align 8, !dbg !747
  %62 = getelementptr inbounds nuw %struct.jpeg_progress_mgr, ptr %61, i32 0, i32 0, !dbg !748
  %63 = load ptr, ptr %62, align 8, !dbg !748
  %64 = load ptr, ptr %3, align 8, !dbg !749
  call void %63(ptr noundef %64), !dbg !750
  br label %65, !dbg !751

65:                                               ; preds = %42, %37
  %66 = load ptr, ptr %3, align 8, !dbg !752
  %67 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %66, i32 0, i32 33, !dbg !753
  %68 = load i32, ptr %67, align 8, !dbg !753
  store i32 %68, ptr %4, align 4, !dbg !754
  %69 = load ptr, ptr %3, align 8, !dbg !755
  %70 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %69, i32 0, i32 74, !dbg !756
  %71 = load ptr, ptr %70, align 8, !dbg !756
  %72 = getelementptr inbounds nuw %struct.jpeg_d_main_controller, ptr %71, i32 0, i32 1, !dbg !757
  %73 = load ptr, ptr %72, align 8, !dbg !757
  %74 = load ptr, ptr %3, align 8, !dbg !758
  %75 = load ptr, ptr %3, align 8, !dbg !759
  %76 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %75, i32 0, i32 33, !dbg !760
  call void %73(ptr noundef %74, ptr noundef null, ptr noundef %76, i32 noundef 0), !dbg !761
  %77 = load ptr, ptr %3, align 8, !dbg !762
  %78 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %77, i32 0, i32 33, !dbg !764
  %79 = load i32, ptr %78, align 8, !dbg !764
  %80 = load i32, ptr %4, align 4, !dbg !765
  %81 = icmp eq i32 %79, %80, !dbg !766
  br i1 %81, label %82, label %83, !dbg !766

82:                                               ; preds = %65
  store i32 0, ptr %2, align 4, !dbg !767
  br label %108, !dbg !767

83:                                               ; preds = %65
  br label %29, !dbg !717, !llvm.loop !768

84:                                               ; preds = %29
  %85 = load ptr, ptr %3, align 8, !dbg !771
  %86 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %85, i32 0, i32 73, !dbg !772
  %87 = load ptr, ptr %86, align 8, !dbg !772
  %88 = getelementptr inbounds nuw %struct.jpeg_decomp_master, ptr %87, i32 0, i32 1, !dbg !773
  %89 = load ptr, ptr %88, align 8, !dbg !773
  %90 = load ptr, ptr %3, align 8, !dbg !774
  call void %89(ptr noundef %90), !dbg !775
  %91 = load ptr, ptr %3, align 8, !dbg !776
  %92 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %91, i32 0, i32 73, !dbg !777
  %93 = load ptr, ptr %92, align 8, !dbg !777
  %94 = getelementptr inbounds nuw %struct.jpeg_decomp_master, ptr %93, i32 0, i32 0, !dbg !778
  %95 = load ptr, ptr %94, align 8, !dbg !778
  %96 = load ptr, ptr %3, align 8, !dbg !779
  call void %95(ptr noundef %96), !dbg !780
  %97 = load ptr, ptr %3, align 8, !dbg !781
  %98 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %97, i32 0, i32 33, !dbg !782
  store i32 0, ptr %98, align 8, !dbg !783
  br label %21, !dbg !713, !llvm.loop !784

99:                                               ; preds = %21
  %100 = load ptr, ptr %3, align 8, !dbg !786
  %101 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %100, i32 0, i32 15, !dbg !787
  %102 = load i32, ptr %101, align 4, !dbg !787
  %103 = icmp ne i32 %102, 0, !dbg !786
  %104 = zext i1 %103 to i64, !dbg !786
  %105 = select i1 %103, i32 206, i32 205, !dbg !786
  %106 = load ptr, ptr %3, align 8, !dbg !788
  %107 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %106, i32 0, i32 4, !dbg !789
  store i32 %105, ptr %107, align 4, !dbg !790
  store i32 1, ptr %2, align 4, !dbg !791
  br label %108, !dbg !791

108:                                              ; preds = %99, %82
  %109 = load i32, ptr %2, align 4, !dbg !792
  ret i32 %109, !dbg !792
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @jpeg_read_scanlines(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 !dbg !793 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
    #dbg_declare(ptr %5, !796, !DIExpression(), !797)
  store ptr %1, ptr %6, align 8
    #dbg_declare(ptr %6, !798, !DIExpression(), !799)
  store i32 %2, ptr %7, align 4
    #dbg_declare(ptr %7, !800, !DIExpression(), !801)
    #dbg_declare(ptr %8, !802, !DIExpression(), !803)
  %9 = load ptr, ptr %5, align 8, !dbg !804
  %10 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %9, i32 0, i32 4, !dbg !806
  %11 = load i32, ptr %10, align 4, !dbg !806
  %12 = icmp ne i32 %11, 205, !dbg !807
  br i1 %12, label %13, label %32, !dbg !807

13:                                               ; preds = %3
  %14 = load ptr, ptr %5, align 8, !dbg !808
  %15 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %14, i32 0, i32 0, !dbg !808
  %16 = load ptr, ptr %15, align 8, !dbg !808
  %17 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %16, i32 0, i32 5, !dbg !808
  store i32 18, ptr %17, align 8, !dbg !808
  %18 = load ptr, ptr %5, align 8, !dbg !808
  %19 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %18, i32 0, i32 4, !dbg !808
  %20 = load i32, ptr %19, align 4, !dbg !808
  %21 = load ptr, ptr %5, align 8, !dbg !808
  %22 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %21, i32 0, i32 0, !dbg !808
  %23 = load ptr, ptr %22, align 8, !dbg !808
  %24 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %23, i32 0, i32 6, !dbg !808
  %25 = getelementptr inbounds [8 x i32], ptr %24, i64 0, i64 0, !dbg !808
  store i32 %20, ptr %25, align 4, !dbg !808
  %26 = load ptr, ptr %5, align 8, !dbg !808
  %27 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %26, i32 0, i32 0, !dbg !808
  %28 = load ptr, ptr %27, align 8, !dbg !808
  %29 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %28, i32 0, i32 0, !dbg !808
  %30 = load ptr, ptr %29, align 8, !dbg !808
  %31 = load ptr, ptr %5, align 8, !dbg !808
  call void %30(ptr noundef %31), !dbg !808
  br label %32, !dbg !808

32:                                               ; preds = %13, %3
  %33 = load ptr, ptr %5, align 8, !dbg !809
  %34 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %33, i32 0, i32 33, !dbg !811
  %35 = load i32, ptr %34, align 8, !dbg !811
  %36 = load ptr, ptr %5, align 8, !dbg !812
  %37 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %36, i32 0, i32 27, !dbg !813
  %38 = load i32, ptr %37, align 4, !dbg !813
  %39 = icmp uge i32 %35, %38, !dbg !814
  br i1 %39, label %40, label %51, !dbg !814

40:                                               ; preds = %32
  %41 = load ptr, ptr %5, align 8, !dbg !815
  %42 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %41, i32 0, i32 0, !dbg !815
  %43 = load ptr, ptr %42, align 8, !dbg !815
  %44 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %43, i32 0, i32 5, !dbg !815
  store i32 119, ptr %44, align 8, !dbg !815
  %45 = load ptr, ptr %5, align 8, !dbg !815
  %46 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %45, i32 0, i32 0, !dbg !815
  %47 = load ptr, ptr %46, align 8, !dbg !815
  %48 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %47, i32 0, i32 1, !dbg !815
  %49 = load ptr, ptr %48, align 8, !dbg !815
  %50 = load ptr, ptr %5, align 8, !dbg !815
  call void %49(ptr noundef %50, i32 noundef -1), !dbg !815
  store i32 0, ptr %4, align 4, !dbg !817
  br label %94, !dbg !817

51:                                               ; preds = %32
  %52 = load ptr, ptr %5, align 8, !dbg !818
  %53 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %52, i32 0, i32 2, !dbg !820
  %54 = load ptr, ptr %53, align 8, !dbg !820
  %55 = icmp ne ptr %54, null, !dbg !821
  br i1 %55, label %56, label %79, !dbg !821

56:                                               ; preds = %51
  %57 = load ptr, ptr %5, align 8, !dbg !822
  %58 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %57, i32 0, i32 33, !dbg !824
  %59 = load i32, ptr %58, align 8, !dbg !824
  %60 = zext i32 %59 to i64, !dbg !825
  %61 = load ptr, ptr %5, align 8, !dbg !826
  %62 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %61, i32 0, i32 2, !dbg !827
  %63 = load ptr, ptr %62, align 8, !dbg !827
  %64 = getelementptr inbounds nuw %struct.jpeg_progress_mgr, ptr %63, i32 0, i32 1, !dbg !828
  store i64 %60, ptr %64, align 8, !dbg !829
  %65 = load ptr, ptr %5, align 8, !dbg !830
  %66 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %65, i32 0, i32 27, !dbg !831
  %67 = load i32, ptr %66, align 4, !dbg !831
  %68 = zext i32 %67 to i64, !dbg !832
  %69 = load ptr, ptr %5, align 8, !dbg !833
  %70 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %69, i32 0, i32 2, !dbg !834
  %71 = load ptr, ptr %70, align 8, !dbg !834
  %72 = getelementptr inbounds nuw %struct.jpeg_progress_mgr, ptr %71, i32 0, i32 2, !dbg !835
  store i64 %68, ptr %72, align 8, !dbg !836
  %73 = load ptr, ptr %5, align 8, !dbg !837
  %74 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %73, i32 0, i32 2, !dbg !838
  %75 = load ptr, ptr %74, align 8, !dbg !838
  %76 = getelementptr inbounds nuw %struct.jpeg_progress_mgr, ptr %75, i32 0, i32 0, !dbg !839
  %77 = load ptr, ptr %76, align 8, !dbg !839
  %78 = load ptr, ptr %5, align 8, !dbg !840
  call void %77(ptr noundef %78), !dbg !841
  br label %79, !dbg !842

79:                                               ; preds = %56, %51
  store i32 0, ptr %8, align 4, !dbg !843
  %80 = load ptr, ptr %5, align 8, !dbg !844
  %81 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %80, i32 0, i32 74, !dbg !845
  %82 = load ptr, ptr %81, align 8, !dbg !845
  %83 = getelementptr inbounds nuw %struct.jpeg_d_main_controller, ptr %82, i32 0, i32 1, !dbg !846
  %84 = load ptr, ptr %83, align 8, !dbg !846
  %85 = load ptr, ptr %5, align 8, !dbg !847
  %86 = load ptr, ptr %6, align 8, !dbg !848
  %87 = load i32, ptr %7, align 4, !dbg !849
  call void %84(ptr noundef %85, ptr noundef %86, ptr noundef %8, i32 noundef %87), !dbg !850
  %88 = load i32, ptr %8, align 4, !dbg !851
  %89 = load ptr, ptr %5, align 8, !dbg !852
  %90 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %89, i32 0, i32 33, !dbg !853
  %91 = load i32, ptr %90, align 8, !dbg !854
  %92 = add i32 %91, %88, !dbg !854
  store i32 %92, ptr %90, align 8, !dbg !854
  %93 = load i32, ptr %8, align 4, !dbg !855
  store i32 %93, ptr %4, align 4, !dbg !856
  br label %94, !dbg !856

94:                                               ; preds = %79, %40
  %95 = load i32, ptr %4, align 4, !dbg !857
  ret i32 %95, !dbg !857
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @jpeg_read_raw_data(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 !dbg !858 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
    #dbg_declare(ptr %5, !861, !DIExpression(), !862)
  store ptr %1, ptr %6, align 8
    #dbg_declare(ptr %6, !863, !DIExpression(), !864)
  store i32 %2, ptr %7, align 4
    #dbg_declare(ptr %7, !865, !DIExpression(), !866)
    #dbg_declare(ptr %8, !867, !DIExpression(), !868)
  %9 = load ptr, ptr %5, align 8, !dbg !869
  %10 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %9, i32 0, i32 4, !dbg !871
  %11 = load i32, ptr %10, align 4, !dbg !871
  %12 = icmp ne i32 %11, 206, !dbg !872
  br i1 %12, label %13, label %32, !dbg !872

13:                                               ; preds = %3
  %14 = load ptr, ptr %5, align 8, !dbg !873
  %15 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %14, i32 0, i32 0, !dbg !873
  %16 = load ptr, ptr %15, align 8, !dbg !873
  %17 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %16, i32 0, i32 5, !dbg !873
  store i32 18, ptr %17, align 8, !dbg !873
  %18 = load ptr, ptr %5, align 8, !dbg !873
  %19 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %18, i32 0, i32 4, !dbg !873
  %20 = load i32, ptr %19, align 4, !dbg !873
  %21 = load ptr, ptr %5, align 8, !dbg !873
  %22 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %21, i32 0, i32 0, !dbg !873
  %23 = load ptr, ptr %22, align 8, !dbg !873
  %24 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %23, i32 0, i32 6, !dbg !873
  %25 = getelementptr inbounds [8 x i32], ptr %24, i64 0, i64 0, !dbg !873
  store i32 %20, ptr %25, align 4, !dbg !873
  %26 = load ptr, ptr %5, align 8, !dbg !873
  %27 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %26, i32 0, i32 0, !dbg !873
  %28 = load ptr, ptr %27, align 8, !dbg !873
  %29 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %28, i32 0, i32 0, !dbg !873
  %30 = load ptr, ptr %29, align 8, !dbg !873
  %31 = load ptr, ptr %5, align 8, !dbg !873
  call void %30(ptr noundef %31), !dbg !873
  br label %32, !dbg !873

32:                                               ; preds = %13, %3
  %33 = load ptr, ptr %5, align 8, !dbg !874
  %34 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %33, i32 0, i32 33, !dbg !876
  %35 = load i32, ptr %34, align 8, !dbg !876
  %36 = load ptr, ptr %5, align 8, !dbg !877
  %37 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %36, i32 0, i32 27, !dbg !878
  %38 = load i32, ptr %37, align 4, !dbg !878
  %39 = icmp uge i32 %35, %38, !dbg !879
  br i1 %39, label %40, label %51, !dbg !879

40:                                               ; preds = %32
  %41 = load ptr, ptr %5, align 8, !dbg !880
  %42 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %41, i32 0, i32 0, !dbg !880
  %43 = load ptr, ptr %42, align 8, !dbg !880
  %44 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %43, i32 0, i32 5, !dbg !880
  store i32 119, ptr %44, align 8, !dbg !880
  %45 = load ptr, ptr %5, align 8, !dbg !880
  %46 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %45, i32 0, i32 0, !dbg !880
  %47 = load ptr, ptr %46, align 8, !dbg !880
  %48 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %47, i32 0, i32 1, !dbg !880
  %49 = load ptr, ptr %48, align 8, !dbg !880
  %50 = load ptr, ptr %5, align 8, !dbg !880
  call void %49(ptr noundef %50, i32 noundef -1), !dbg !880
  store i32 0, ptr %4, align 4, !dbg !882
  br label %119, !dbg !882

51:                                               ; preds = %32
  %52 = load ptr, ptr %5, align 8, !dbg !883
  %53 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %52, i32 0, i32 2, !dbg !885
  %54 = load ptr, ptr %53, align 8, !dbg !885
  %55 = icmp ne ptr %54, null, !dbg !886
  br i1 %55, label %56, label %79, !dbg !886

56:                                               ; preds = %51
  %57 = load ptr, ptr %5, align 8, !dbg !887
  %58 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %57, i32 0, i32 33, !dbg !889
  %59 = load i32, ptr %58, align 8, !dbg !889
  %60 = zext i32 %59 to i64, !dbg !890
  %61 = load ptr, ptr %5, align 8, !dbg !891
  %62 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %61, i32 0, i32 2, !dbg !892
  %63 = load ptr, ptr %62, align 8, !dbg !892
  %64 = getelementptr inbounds nuw %struct.jpeg_progress_mgr, ptr %63, i32 0, i32 1, !dbg !893
  store i64 %60, ptr %64, align 8, !dbg !894
  %65 = load ptr, ptr %5, align 8, !dbg !895
  %66 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %65, i32 0, i32 27, !dbg !896
  %67 = load i32, ptr %66, align 4, !dbg !896
  %68 = zext i32 %67 to i64, !dbg !897
  %69 = load ptr, ptr %5, align 8, !dbg !898
  %70 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %69, i32 0, i32 2, !dbg !899
  %71 = load ptr, ptr %70, align 8, !dbg !899
  %72 = getelementptr inbounds nuw %struct.jpeg_progress_mgr, ptr %71, i32 0, i32 2, !dbg !900
  store i64 %68, ptr %72, align 8, !dbg !901
  %73 = load ptr, ptr %5, align 8, !dbg !902
  %74 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %73, i32 0, i32 2, !dbg !903
  %75 = load ptr, ptr %74, align 8, !dbg !903
  %76 = getelementptr inbounds nuw %struct.jpeg_progress_mgr, ptr %75, i32 0, i32 0, !dbg !904
  %77 = load ptr, ptr %76, align 8, !dbg !904
  %78 = load ptr, ptr %5, align 8, !dbg !905
  call void %77(ptr noundef %78), !dbg !906
  br label %79, !dbg !907

79:                                               ; preds = %56, %51
  %80 = load ptr, ptr %5, align 8, !dbg !908
  %81 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %80, i32 0, i32 58, !dbg !909
  %82 = load i32, ptr %81, align 8, !dbg !909
  %83 = load ptr, ptr %5, align 8, !dbg !910
  %84 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %83, i32 0, i32 59, !dbg !911
  %85 = load i32, ptr %84, align 4, !dbg !911
  %86 = mul nsw i32 %82, %85, !dbg !912
  store i32 %86, ptr %8, align 4, !dbg !913
  %87 = load i32, ptr %7, align 4, !dbg !914
  %88 = load i32, ptr %8, align 4, !dbg !916
  %89 = icmp ult i32 %87, %88, !dbg !917
  br i1 %89, label %90, label %101, !dbg !917

90:                                               ; preds = %79
  %91 = load ptr, ptr %5, align 8, !dbg !918
  %92 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %91, i32 0, i32 0, !dbg !918
  %93 = load ptr, ptr %92, align 8, !dbg !918
  %94 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %93, i32 0, i32 5, !dbg !918
  store i32 21, ptr %94, align 8, !dbg !918
  %95 = load ptr, ptr %5, align 8, !dbg !918
  %96 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %95, i32 0, i32 0, !dbg !918
  %97 = load ptr, ptr %96, align 8, !dbg !918
  %98 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %97, i32 0, i32 0, !dbg !918
  %99 = load ptr, ptr %98, align 8, !dbg !918
  %100 = load ptr, ptr %5, align 8, !dbg !918
  call void %99(ptr noundef %100), !dbg !918
  br label %101, !dbg !918

101:                                              ; preds = %90, %79
  %102 = load ptr, ptr %5, align 8, !dbg !919
  %103 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %102, i32 0, i32 75, !dbg !921
  %104 = load ptr, ptr %103, align 8, !dbg !921
  %105 = getelementptr inbounds nuw %struct.jpeg_d_coef_controller, ptr %104, i32 0, i32 3, !dbg !922
  %106 = load ptr, ptr %105, align 8, !dbg !922
  %107 = load ptr, ptr %5, align 8, !dbg !923
  %108 = load ptr, ptr %6, align 8, !dbg !924
  %109 = call i32 %106(ptr noundef %107, ptr noundef %108), !dbg !925
  %110 = icmp ne i32 %109, 0, !dbg !925
  br i1 %110, label %112, label %111, !dbg !926

111:                                              ; preds = %101
  store i32 0, ptr %4, align 4, !dbg !927
  br label %119, !dbg !927

112:                                              ; preds = %101
  %113 = load i32, ptr %8, align 4, !dbg !928
  %114 = load ptr, ptr %5, align 8, !dbg !929
  %115 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %114, i32 0, i32 33, !dbg !930
  %116 = load i32, ptr %115, align 8, !dbg !931
  %117 = add i32 %116, %113, !dbg !931
  store i32 %117, ptr %115, align 8, !dbg !931
  %118 = load i32, ptr %8, align 4, !dbg !932
  store i32 %118, ptr %4, align 4, !dbg !933
  br label %119, !dbg !933

119:                                              ; preds = %112, %111, %40
  %120 = load i32, ptr %4, align 4, !dbg !934
  ret i32 %120, !dbg !934
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @jpeg_start_output(ptr noundef %0, i32 noundef %1) #0 !dbg !935 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !936, !DIExpression(), !937)
  store i32 %1, ptr %4, align 4
    #dbg_declare(ptr %4, !938, !DIExpression(), !939)
  %5 = load ptr, ptr %3, align 8, !dbg !940
  %6 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %5, i32 0, i32 4, !dbg !942
  %7 = load i32, ptr %6, align 4, !dbg !942
  %8 = icmp ne i32 %7, 207, !dbg !943
  br i1 %8, label %9, label %33, !dbg !944

9:                                                ; preds = %2
  %10 = load ptr, ptr %3, align 8, !dbg !945
  %11 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %10, i32 0, i32 4, !dbg !946
  %12 = load i32, ptr %11, align 4, !dbg !946
  %13 = icmp ne i32 %12, 204, !dbg !947
  br i1 %13, label %14, label %33, !dbg !944

14:                                               ; preds = %9
  %15 = load ptr, ptr %3, align 8, !dbg !948
  %16 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %15, i32 0, i32 0, !dbg !948
  %17 = load ptr, ptr %16, align 8, !dbg !948
  %18 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %17, i32 0, i32 5, !dbg !948
  store i32 18, ptr %18, align 8, !dbg !948
  %19 = load ptr, ptr %3, align 8, !dbg !948
  %20 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %19, i32 0, i32 4, !dbg !948
  %21 = load i32, ptr %20, align 4, !dbg !948
  %22 = load ptr, ptr %3, align 8, !dbg !948
  %23 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %22, i32 0, i32 0, !dbg !948
  %24 = load ptr, ptr %23, align 8, !dbg !948
  %25 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %24, i32 0, i32 6, !dbg !948
  %26 = getelementptr inbounds [8 x i32], ptr %25, i64 0, i64 0, !dbg !948
  store i32 %21, ptr %26, align 4, !dbg !948
  %27 = load ptr, ptr %3, align 8, !dbg !948
  %28 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %27, i32 0, i32 0, !dbg !948
  %29 = load ptr, ptr %28, align 8, !dbg !948
  %30 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %29, i32 0, i32 0, !dbg !948
  %31 = load ptr, ptr %30, align 8, !dbg !948
  %32 = load ptr, ptr %3, align 8, !dbg !948
  call void %31(ptr noundef %32), !dbg !948
  br label %33, !dbg !948

33:                                               ; preds = %14, %9, %2
  %34 = load i32, ptr %4, align 4, !dbg !949
  %35 = icmp sle i32 %34, 0, !dbg !951
  br i1 %35, label %36, label %37, !dbg !951

36:                                               ; preds = %33
  store i32 1, ptr %4, align 4, !dbg !952
  br label %37, !dbg !953

37:                                               ; preds = %36, %33
  %38 = load ptr, ptr %3, align 8, !dbg !954
  %39 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %38, i32 0, i32 77, !dbg !956
  %40 = load ptr, ptr %39, align 8, !dbg !956
  %41 = getelementptr inbounds nuw %struct.jpeg_input_controller, ptr %40, i32 0, i32 5, !dbg !957
  %42 = load i32, ptr %41, align 4, !dbg !957
  %43 = icmp ne i32 %42, 0, !dbg !954
  br i1 %43, label %44, label %54, !dbg !958

44:                                               ; preds = %37
  %45 = load i32, ptr %4, align 4, !dbg !959
  %46 = load ptr, ptr %3, align 8, !dbg !960
  %47 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %46, i32 0, i32 34, !dbg !961
  %48 = load i32, ptr %47, align 4, !dbg !961
  %49 = icmp sgt i32 %45, %48, !dbg !962
  br i1 %49, label %50, label %54, !dbg !958

50:                                               ; preds = %44
  %51 = load ptr, ptr %3, align 8, !dbg !963
  %52 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %51, i32 0, i32 34, !dbg !964
  %53 = load i32, ptr %52, align 4, !dbg !964
  store i32 %53, ptr %4, align 4, !dbg !965
  br label %54, !dbg !966

54:                                               ; preds = %50, %44, %37
  %55 = load i32, ptr %4, align 4, !dbg !967
  %56 = load ptr, ptr %3, align 8, !dbg !968
  %57 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %56, i32 0, i32 36, !dbg !969
  store i32 %55, ptr %57, align 4, !dbg !970
  %58 = load ptr, ptr %3, align 8, !dbg !971
  %59 = call i32 @output_pass_setup(ptr noundef %58), !dbg !972
  ret i32 %59, !dbg !973
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @jpeg_finish_output(ptr noundef %0) #0 !dbg !974 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !975, !DIExpression(), !976)
  %4 = load ptr, ptr %3, align 8, !dbg !977
  %5 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %4, i32 0, i32 4, !dbg !979
  %6 = load i32, ptr %5, align 4, !dbg !979
  %7 = icmp eq i32 %6, 205, !dbg !980
  br i1 %7, label %13, label %8, !dbg !981

8:                                                ; preds = %1
  %9 = load ptr, ptr %3, align 8, !dbg !982
  %10 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %9, i32 0, i32 4, !dbg !983
  %11 = load i32, ptr %10, align 4, !dbg !983
  %12 = icmp eq i32 %11, 206, !dbg !984
  br i1 %12, label %13, label %27, !dbg !985

13:                                               ; preds = %8, %1
  %14 = load ptr, ptr %3, align 8, !dbg !986
  %15 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %14, i32 0, i32 14, !dbg !987
  %16 = load i32, ptr %15, align 8, !dbg !987
  %17 = icmp ne i32 %16, 0, !dbg !986
  br i1 %17, label %18, label %27, !dbg !985

18:                                               ; preds = %13
  %19 = load ptr, ptr %3, align 8, !dbg !988
  %20 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %19, i32 0, i32 73, !dbg !990
  %21 = load ptr, ptr %20, align 8, !dbg !990
  %22 = getelementptr inbounds nuw %struct.jpeg_decomp_master, ptr %21, i32 0, i32 1, !dbg !991
  %23 = load ptr, ptr %22, align 8, !dbg !991
  %24 = load ptr, ptr %3, align 8, !dbg !992
  call void %23(ptr noundef %24), !dbg !993
  %25 = load ptr, ptr %3, align 8, !dbg !994
  %26 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %25, i32 0, i32 4, !dbg !995
  store i32 208, ptr %26, align 4, !dbg !996
  br label %52, !dbg !997

27:                                               ; preds = %13, %8
  %28 = load ptr, ptr %3, align 8, !dbg !998
  %29 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %28, i32 0, i32 4, !dbg !1000
  %30 = load i32, ptr %29, align 4, !dbg !1000
  %31 = icmp ne i32 %30, 208, !dbg !1001
  br i1 %31, label %32, label %51, !dbg !1001

32:                                               ; preds = %27
  %33 = load ptr, ptr %3, align 8, !dbg !1002
  %34 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %33, i32 0, i32 0, !dbg !1002
  %35 = load ptr, ptr %34, align 8, !dbg !1002
  %36 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %35, i32 0, i32 5, !dbg !1002
  store i32 18, ptr %36, align 8, !dbg !1002
  %37 = load ptr, ptr %3, align 8, !dbg !1002
  %38 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %37, i32 0, i32 4, !dbg !1002
  %39 = load i32, ptr %38, align 4, !dbg !1002
  %40 = load ptr, ptr %3, align 8, !dbg !1002
  %41 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %40, i32 0, i32 0, !dbg !1002
  %42 = load ptr, ptr %41, align 8, !dbg !1002
  %43 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %42, i32 0, i32 6, !dbg !1002
  %44 = getelementptr inbounds [8 x i32], ptr %43, i64 0, i64 0, !dbg !1002
  store i32 %39, ptr %44, align 4, !dbg !1002
  %45 = load ptr, ptr %3, align 8, !dbg !1002
  %46 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %45, i32 0, i32 0, !dbg !1002
  %47 = load ptr, ptr %46, align 8, !dbg !1002
  %48 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %47, i32 0, i32 0, !dbg !1002
  %49 = load ptr, ptr %48, align 8, !dbg !1002
  %50 = load ptr, ptr %3, align 8, !dbg !1002
  call void %49(ptr noundef %50), !dbg !1002
  br label %51, !dbg !1004

51:                                               ; preds = %32, %27
  br label %52

52:                                               ; preds = %51, %18
  br label %53, !dbg !1005

53:                                               ; preds = %81, %52
  %54 = load ptr, ptr %3, align 8, !dbg !1006
  %55 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %54, i32 0, i32 34, !dbg !1007
  %56 = load i32, ptr %55, align 4, !dbg !1007
  %57 = load ptr, ptr %3, align 8, !dbg !1008
  %58 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %57, i32 0, i32 36, !dbg !1009
  %59 = load i32, ptr %58, align 4, !dbg !1009
  %60 = icmp sle i32 %56, %59, !dbg !1010
  br i1 %60, label %61, label %69, !dbg !1011

61:                                               ; preds = %53
  %62 = load ptr, ptr %3, align 8, !dbg !1012
  %63 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %62, i32 0, i32 77, !dbg !1013
  %64 = load ptr, ptr %63, align 8, !dbg !1013
  %65 = getelementptr inbounds nuw %struct.jpeg_input_controller, ptr %64, i32 0, i32 5, !dbg !1014
  %66 = load i32, ptr %65, align 4, !dbg !1014
  %67 = icmp ne i32 %66, 0, !dbg !1015
  %68 = xor i1 %67, true, !dbg !1015
  br label %69

69:                                               ; preds = %61, %53
  %70 = phi i1 [ false, %53 ], [ %68, %61 ], !dbg !1016
  br i1 %70, label %71, label %82, !dbg !1005

71:                                               ; preds = %69
  %72 = load ptr, ptr %3, align 8, !dbg !1017
  %73 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %72, i32 0, i32 77, !dbg !1020
  %74 = load ptr, ptr %73, align 8, !dbg !1020
  %75 = getelementptr inbounds nuw %struct.jpeg_input_controller, ptr %74, i32 0, i32 0, !dbg !1021
  %76 = load ptr, ptr %75, align 8, !dbg !1021
  %77 = load ptr, ptr %3, align 8, !dbg !1022
  %78 = call i32 %76(ptr noundef %77), !dbg !1023
  %79 = icmp eq i32 %78, 0, !dbg !1024
  br i1 %79, label %80, label %81, !dbg !1024

80:                                               ; preds = %71
  store i32 0, ptr %2, align 4, !dbg !1025
  br label %85, !dbg !1025

81:                                               ; preds = %71
  br label %53, !dbg !1005, !llvm.loop !1026

82:                                               ; preds = %69
  %83 = load ptr, ptr %3, align 8, !dbg !1028
  %84 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %83, i32 0, i32 4, !dbg !1029
  store i32 207, ptr %84, align 4, !dbg !1030
  store i32 1, ptr %2, align 4, !dbg !1031
  br label %85, !dbg !1031

85:                                               ; preds = %82, %80
  %86 = load i32, ptr %2, align 4, !dbg !1032
  ret i32 %86, !dbg !1032
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!281, !282, !283, !284, !285, !286, !287}
!llvm.ident = !{!288}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !154, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jdapistd.c", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "b8c2a9211a40b4e34a6bede0d768e729")
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
!154 = !{!155, !156, !195, !221, !228}
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "j_common_ptr", file: !4, line: 248, baseType: !157)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_common_struct", file: !4, line: 240, size: 256, elements: !159)
!159 = !{!160, !205, !270, !279, !280}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !158, file: !4, line: 241, baseType: !161, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_error_mgr", file: !4, line: 618, size: 1344, elements: !163)
!163 = !{!164, !168, !173, !174, !180, !181, !182, !193, !194, !196, !201, !202, !203, !204}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "error_exit", scope: !162, file: !4, line: 620, baseType: !165, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = !DISubroutineType(types: !167)
!167 = !{null, !156}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "emit_message", scope: !162, file: !4, line: 622, baseType: !169, size: 64, offset: 64)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = !DISubroutineType(types: !171)
!171 = !{null, !156, !172}
!172 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "output_message", scope: !162, file: !4, line: 624, baseType: !165, size: 64, offset: 128)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "format_message", scope: !162, file: !4, line: 626, baseType: !175, size: 64, offset: 192)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = !DISubroutineType(types: !177)
!177 = !{null, !156, !178}
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "reset_error_mgr", scope: !162, file: !4, line: 629, baseType: !165, size: 64, offset: 256)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "msg_code", scope: !162, file: !4, line: 634, baseType: !172, size: 32, offset: 320)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "msg_parm", scope: !162, file: !4, line: 639, baseType: !183, size: 640, offset: 352)
!183 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !162, file: !4, line: 636, size: 640, elements: !184)
!184 = !{!185, !189}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !183, file: !4, line: 637, baseType: !186, size: 256)
!186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 256, elements: !187)
!187 = !{!188}
!188 = !DISubrange(count: 8)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !183, file: !4, line: 638, baseType: !190, size: 640)
!190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 640, elements: !191)
!191 = !{!192}
!192 = !DISubrange(count: 80)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "trace_level", scope: !162, file: !4, line: 643, baseType: !172, size: 32, offset: 992)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "num_warnings", scope: !162, file: !4, line: 651, baseType: !195, size: 64, offset: 1024)
!195 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "jpeg_message_table", scope: !162, file: !4, line: 663, baseType: !197, size: 64, offset: 1088)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !199)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !179)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "last_jpeg_message", scope: !162, file: !4, line: 664, baseType: !172, size: 32, offset: 1152)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "addon_message_table", scope: !162, file: !4, line: 668, baseType: !197, size: 64, offset: 1216)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "first_addon_message", scope: !162, file: !4, line: 669, baseType: !172, size: 32, offset: 1280)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "last_addon_message", scope: !162, file: !4, line: 670, baseType: !172, size: 32, offset: 1312)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !158, file: !4, line: 241, baseType: !206, size: 64, offset: 64)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_memory_mgr", file: !4, line: 731, size: 768, elements: !208)
!208 = !{!209, !216, !217, !229, !243, !251, !258, !259, !263, !267, !268, !269}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_small", scope: !207, file: !4, line: 733, baseType: !210, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = !DISubroutineType(types: !212)
!212 = !{!155, !156, !172, !213}
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !214, line: 18, baseType: !215)
!214 = !DIFile(filename: "/usr/local/lib/clang/20/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!215 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_large", scope: !207, file: !4, line: 735, baseType: !210, size: 64, offset: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_sarray", scope: !207, file: !4, line: 737, baseType: !218, size: 64, offset: 128)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DISubroutineType(types: !220)
!220 = !{!221, !156, !172, !228, !228}
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPARRAY", file: !4, line: 67, baseType: !222)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPROW", file: !4, line: 66, baseType: !224)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPLE", file: !226, line: 59, baseType: !227)
!226 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jmorecfg.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "56a0eda58fafa6bdd5498f702a998c09")
!227 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "JDIMENSION", file: !226, line: 171, baseType: !5)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_barray", scope: !207, file: !4, line: 740, baseType: !230, size: 64, offset: 192)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = !DISubroutineType(types: !232)
!232 = !{!233, !156, !172, !228, !228}
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "JBLOCKARRAY", file: !4, line: 72, baseType: !234)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "JBLOCKROW", file: !4, line: 71, baseType: !236)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "JBLOCK", file: !4, line: 70, baseType: !238)
!238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !239, size: 1024, elements: !241)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "JCOEF", file: !226, line: 99, baseType: !240)
!240 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!241 = !{!242}
!242 = !DISubrange(count: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "request_virt_sarray", scope: !207, file: !4, line: 743, baseType: !244, size: 64, offset: 256)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = !DISubroutineType(types: !246)
!246 = !{!247, !156, !172, !250, !228, !228, !228}
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "jvirt_sarray_ptr", file: !4, line: 727, baseType: !248)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DICompositeType(tag: DW_TAG_structure_type, name: "jvirt_sarray_control", file: !4, line: 727, flags: DIFlagFwdDecl)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "boolean", file: !226, line: 227, baseType: !172)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "request_virt_barray", scope: !207, file: !4, line: 749, baseType: !252, size: 64, offset: 320)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DISubroutineType(types: !254)
!254 = !{!255, !156, !172, !250, !228, !228, !228}
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "jvirt_barray_ptr", file: !4, line: 728, baseType: !256)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = !DICompositeType(tag: DW_TAG_structure_type, name: "jvirt_barray_control", file: !4, line: 728, flags: DIFlagFwdDecl)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "realize_virt_arrays", scope: !207, file: !4, line: 755, baseType: !165, size: 64, offset: 384)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "access_virt_sarray", scope: !207, file: !4, line: 756, baseType: !260, size: 64, offset: 448)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = !DISubroutineType(types: !262)
!262 = !{!221, !156, !247, !228, !228, !250}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "access_virt_barray", scope: !207, file: !4, line: 761, baseType: !264, size: 64, offset: 512)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DISubroutineType(types: !266)
!266 = !{!233, !156, !255, !228, !228, !250}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "free_pool", scope: !207, file: !4, line: 766, baseType: !169, size: 64, offset: 576)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "self_destruct", scope: !207, file: !4, line: 767, baseType: !165, size: 64, offset: 640)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "max_memory_to_use", scope: !207, file: !4, line: 774, baseType: !195, size: 64, offset: 704)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "progress", scope: !158, file: !4, line: 241, baseType: !271, size: 64, offset: 128)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_progress_mgr", file: !4, line: 676, size: 256, elements: !273)
!273 = !{!274, !275, !276, !277, !278}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "progress_monitor", scope: !272, file: !4, line: 677, baseType: !165, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "pass_counter", scope: !272, file: !4, line: 679, baseType: !195, size: 64, offset: 64)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "pass_limit", scope: !272, file: !4, line: 680, baseType: !195, size: 64, offset: 128)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "completed_passes", scope: !272, file: !4, line: 681, baseType: !172, size: 32, offset: 192)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "total_passes", scope: !272, file: !4, line: 682, baseType: !172, size: 32, offset: 224)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "is_decompressor", scope: !158, file: !4, line: 241, baseType: !250, size: 32, offset: 192)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "global_state", scope: !158, file: !4, line: 241, baseType: !172, size: 32, offset: 224)
!281 = !{i32 7, !"Dwarf Version", i32 5}
!282 = !{i32 2, !"Debug Info Version", i32 3}
!283 = !{i32 1, !"wchar_size", i32 4}
!284 = !{i32 8, !"PIC Level", i32 2}
!285 = !{i32 7, !"PIE Level", i32 2}
!286 = !{i32 7, !"uwtable", i32 2}
!287 = !{i32 7, !"frame-pointer", i32 2}
!288 = !{!"clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)"}
!289 = distinct !DISubprogram(name: "jpeg_start_decompress", scope: !1, file: !1, line: 38, type: !290, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !582)
!290 = !DISubroutineType(types: !291)
!291 = !{!250, !292}
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "j_decompress_ptr", file: !4, line: 250, baseType: !293)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_decompress_struct", file: !4, line: 394, size: 4928, elements: !295)
!295 = !{!296, !297, !298, !299, !300, !301, !325, !326, !327, !328, !330, !331, !332, !333, !335, !336, !337, !339, !340, !341, !342, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !364, !377, !393, !394, !395, !421, !422, !423, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !445, !446, !447, !448, !452, !453, !454, !455, !456, !457, !464, !478, !496, !505, !515, !530, !539, !552, !559, !568}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !294, file: !4, line: 395, baseType: !161, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !294, file: !4, line: 395, baseType: !206, size: 64, offset: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "progress", scope: !294, file: !4, line: 395, baseType: !271, size: 64, offset: 128)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "is_decompressor", scope: !294, file: !4, line: 395, baseType: !250, size: 32, offset: 192)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "global_state", scope: !294, file: !4, line: 395, baseType: !172, size: 32, offset: 224)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !294, file: !4, line: 398, baseType: !302, size: 64, offset: 256)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_source_mgr", file: !4, line: 700, size: 448, elements: !304)
!304 = !{!305, !309, !310, !314, !316, !320, !324}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "next_input_byte", scope: !303, file: !4, line: 701, baseType: !306, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !308)
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "JOCTET", file: !226, line: 110, baseType: !227)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_in_buffer", scope: !303, file: !4, line: 702, baseType: !213, size: 64, offset: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "init_source", scope: !303, file: !4, line: 704, baseType: !311, size: 64, offset: 128)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = !DISubroutineType(types: !313)
!313 = !{null, !292}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "fill_input_buffer", scope: !303, file: !4, line: 705, baseType: !315, size: 64, offset: 192)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "skip_input_data", scope: !303, file: !4, line: 706, baseType: !317, size: 64, offset: 256)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = !DISubroutineType(types: !319)
!319 = !{null, !292, !195}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "resync_to_restart", scope: !303, file: !4, line: 707, baseType: !321, size: 64, offset: 320)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = !DISubroutineType(types: !323)
!323 = !{!250, !292, !172}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "term_source", scope: !303, file: !4, line: 708, baseType: !311, size: 64, offset: 384)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "image_width", scope: !294, file: !4, line: 403, baseType: !228, size: 32, offset: 320)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "image_height", scope: !294, file: !4, line: 404, baseType: !228, size: 32, offset: 352)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "num_components", scope: !294, file: !4, line: 405, baseType: !172, size: 32, offset: 384)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "jpeg_color_space", scope: !294, file: !4, line: 406, baseType: !329, size: 32, offset: 416)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_COLOR_SPACE", file: !4, line: 201, baseType: !3)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "out_color_space", scope: !294, file: !4, line: 413, baseType: !329, size: 32, offset: 448)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "scale_num", scope: !294, file: !4, line: 415, baseType: !5, size: 32, offset: 480)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "scale_denom", scope: !294, file: !4, line: 415, baseType: !5, size: 32, offset: 512)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "output_gamma", scope: !294, file: !4, line: 417, baseType: !334, size: 64, offset: 576)
!334 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "buffered_image", scope: !294, file: !4, line: 419, baseType: !250, size: 32, offset: 640)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "raw_data_out", scope: !294, file: !4, line: 420, baseType: !250, size: 32, offset: 672)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "dct_method", scope: !294, file: !4, line: 422, baseType: !338, size: 32, offset: 704)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_DCT_METHOD", file: !4, line: 209, baseType: !13)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "do_fancy_upsampling", scope: !294, file: !4, line: 423, baseType: !250, size: 32, offset: 736)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "do_block_smoothing", scope: !294, file: !4, line: 424, baseType: !250, size: 32, offset: 768)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "quantize_colors", scope: !294, file: !4, line: 426, baseType: !250, size: 32, offset: 800)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "dither_mode", scope: !294, file: !4, line: 428, baseType: !343, size: 32, offset: 832)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_DITHER_MODE", file: !4, line: 224, baseType: !18)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "two_pass_quantize", scope: !294, file: !4, line: 429, baseType: !250, size: 32, offset: 864)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "desired_number_of_colors", scope: !294, file: !4, line: 430, baseType: !172, size: 32, offset: 896)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "enable_1pass_quant", scope: !294, file: !4, line: 432, baseType: !250, size: 32, offset: 928)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "enable_external_quant", scope: !294, file: !4, line: 433, baseType: !250, size: 32, offset: 960)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "enable_2pass_quant", scope: !294, file: !4, line: 434, baseType: !250, size: 32, offset: 992)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "output_width", scope: !294, file: !4, line: 442, baseType: !228, size: 32, offset: 1024)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "output_height", scope: !294, file: !4, line: 443, baseType: !228, size: 32, offset: 1056)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "out_color_components", scope: !294, file: !4, line: 444, baseType: !172, size: 32, offset: 1088)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "output_components", scope: !294, file: !4, line: 445, baseType: !172, size: 32, offset: 1120)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "rec_outbuf_height", scope: !294, file: !4, line: 449, baseType: !172, size: 32, offset: 1152)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "actual_number_of_colors", scope: !294, file: !4, line: 461, baseType: !172, size: 32, offset: 1184)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "colormap", scope: !294, file: !4, line: 462, baseType: !221, size: 64, offset: 1216)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "output_scanline", scope: !294, file: !4, line: 472, baseType: !228, size: 32, offset: 1280)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "input_scan_number", scope: !294, file: !4, line: 477, baseType: !172, size: 32, offset: 1312)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "input_iMCU_row", scope: !294, file: !4, line: 478, baseType: !228, size: 32, offset: 1344)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "output_scan_number", scope: !294, file: !4, line: 484, baseType: !172, size: 32, offset: 1376)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "output_iMCU_row", scope: !294, file: !4, line: 485, baseType: !228, size: 32, offset: 1408)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "coef_bits", scope: !294, file: !4, line: 494, baseType: !362, size: 64, offset: 1472)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 2048, elements: !241)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "quant_tbl_ptrs", scope: !294, file: !4, line: 505, baseType: !365, size: 256, offset: 1536)
!365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !366, size: 256, elements: !375)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "JQUANT_TBL", file: !4, line: 95, baseType: !368)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 83, size: 1056, elements: !369)
!369 = !{!370, !374}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "quantval", scope: !368, file: !4, line: 88, baseType: !371, size: 1024)
!371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !372, size: 1024, elements: !241)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT16", file: !226, line: 147, baseType: !373)
!373 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "sent_table", scope: !368, file: !4, line: 94, baseType: !250, size: 32, offset: 1024)
!375 = !{!376}
!376 = !DISubrange(count: 4)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "dc_huff_tbl_ptrs", scope: !294, file: !4, line: 508, baseType: !378, size: 256, offset: 1792)
!378 = !DICompositeType(tag: DW_TAG_array_type, baseType: !379, size: 256, elements: !375)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "JHUFF_TBL", file: !4, line: 111, baseType: !381)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 100, size: 2240, elements: !382)
!382 = !{!383, !388, !392}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !381, file: !4, line: 102, baseType: !384, size: 136)
!384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !385, size: 136, elements: !386)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT8", file: !226, line: 135, baseType: !227)
!386 = !{!387}
!387 = !DISubrange(count: 17)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "huffval", scope: !381, file: !4, line: 104, baseType: !389, size: 2048, offset: 136)
!389 = !DICompositeType(tag: DW_TAG_array_type, baseType: !385, size: 2048, elements: !390)
!390 = !{!391}
!391 = !DISubrange(count: 256)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "sent_table", scope: !381, file: !4, line: 110, baseType: !250, size: 32, offset: 2208)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "ac_huff_tbl_ptrs", scope: !294, file: !4, line: 509, baseType: !378, size: 256, offset: 2048)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "data_precision", scope: !294, file: !4, line: 516, baseType: !172, size: 32, offset: 2304)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "comp_info", scope: !294, file: !4, line: 518, baseType: !396, size: 64, offset: 2368)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "jpeg_component_info", file: !4, line: 179, baseType: !398)
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 116, size: 768, elements: !399)
!399 = !{!400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "component_id", scope: !398, file: !4, line: 120, baseType: !172, size: 32)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "component_index", scope: !398, file: !4, line: 121, baseType: !172, size: 32, offset: 32)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "h_samp_factor", scope: !398, file: !4, line: 122, baseType: !172, size: 32, offset: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "v_samp_factor", scope: !398, file: !4, line: 123, baseType: !172, size: 32, offset: 96)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "quant_tbl_no", scope: !398, file: !4, line: 124, baseType: !172, size: 32, offset: 128)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "dc_tbl_no", scope: !398, file: !4, line: 129, baseType: !172, size: 32, offset: 160)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tbl_no", scope: !398, file: !4, line: 130, baseType: !172, size: 32, offset: 192)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "width_in_blocks", scope: !398, file: !4, line: 139, baseType: !228, size: 32, offset: 224)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "height_in_blocks", scope: !398, file: !4, line: 140, baseType: !228, size: 32, offset: 256)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "DCT_scaled_size", scope: !398, file: !4, line: 147, baseType: !172, size: 32, offset: 288)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "downsampled_width", scope: !398, file: !4, line: 154, baseType: !228, size: 32, offset: 320)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "downsampled_height", scope: !398, file: !4, line: 155, baseType: !228, size: 32, offset: 352)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "component_needed", scope: !398, file: !4, line: 160, baseType: !250, size: 32, offset: 384)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_width", scope: !398, file: !4, line: 164, baseType: !172, size: 32, offset: 416)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_height", scope: !398, file: !4, line: 165, baseType: !172, size: 32, offset: 448)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_blocks", scope: !398, file: !4, line: 166, baseType: !172, size: 32, offset: 480)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_sample_width", scope: !398, file: !4, line: 167, baseType: !172, size: 32, offset: 512)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "last_col_width", scope: !398, file: !4, line: 168, baseType: !172, size: 32, offset: 544)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "last_row_height", scope: !398, file: !4, line: 169, baseType: !172, size: 32, offset: 576)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "quant_table", scope: !398, file: !4, line: 175, baseType: !366, size: 64, offset: 640)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "dct_table", scope: !398, file: !4, line: 178, baseType: !155, size: 64, offset: 704)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "progressive_mode", scope: !294, file: !4, line: 521, baseType: !250, size: 32, offset: 2432)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "arith_code", scope: !294, file: !4, line: 522, baseType: !250, size: 32, offset: 2464)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "arith_dc_L", scope: !294, file: !4, line: 524, baseType: !424, size: 128, offset: 2496)
!424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !385, size: 128, elements: !425)
!425 = !{!426}
!426 = !DISubrange(count: 16)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "arith_dc_U", scope: !294, file: !4, line: 525, baseType: !424, size: 128, offset: 2624)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "arith_ac_K", scope: !294, file: !4, line: 526, baseType: !424, size: 128, offset: 2752)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "restart_interval", scope: !294, file: !4, line: 528, baseType: !5, size: 32, offset: 2880)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "saw_JFIF_marker", scope: !294, file: !4, line: 533, baseType: !250, size: 32, offset: 2912)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "density_unit", scope: !294, file: !4, line: 535, baseType: !385, size: 8, offset: 2944)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "X_density", scope: !294, file: !4, line: 536, baseType: !372, size: 16, offset: 2960)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "Y_density", scope: !294, file: !4, line: 537, baseType: !372, size: 16, offset: 2976)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "saw_Adobe_marker", scope: !294, file: !4, line: 538, baseType: !250, size: 32, offset: 3008)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "Adobe_transform", scope: !294, file: !4, line: 539, baseType: !385, size: 8, offset: 3040)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "CCIR601_sampling", scope: !294, file: !4, line: 541, baseType: !250, size: 32, offset: 3072)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "max_h_samp_factor", scope: !294, file: !4, line: 550, baseType: !172, size: 32, offset: 3104)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "max_v_samp_factor", scope: !294, file: !4, line: 551, baseType: !172, size: 32, offset: 3136)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "min_DCT_scaled_size", scope: !294, file: !4, line: 553, baseType: !172, size: 32, offset: 3168)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "total_iMCU_rows", scope: !294, file: !4, line: 555, baseType: !228, size: 32, offset: 3200)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "sample_range_limit", scope: !294, file: !4, line: 564, baseType: !224, size: 64, offset: 3264)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "comps_in_scan", scope: !294, file: !4, line: 571, baseType: !172, size: 32, offset: 3328)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "cur_comp_info", scope: !294, file: !4, line: 572, baseType: !444, size: 256, offset: 3392)
!444 = !DICompositeType(tag: DW_TAG_array_type, baseType: !396, size: 256, elements: !375)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "MCUs_per_row", scope: !294, file: !4, line: 575, baseType: !228, size: 32, offset: 3648)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_rows_in_scan", scope: !294, file: !4, line: 576, baseType: !228, size: 32, offset: 3680)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "blocks_in_MCU", scope: !294, file: !4, line: 578, baseType: !172, size: 32, offset: 3712)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_membership", scope: !294, file: !4, line: 579, baseType: !449, size: 320, offset: 3744)
!449 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 320, elements: !450)
!450 = !{!451}
!451 = !DISubrange(count: 10)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "Ss", scope: !294, file: !4, line: 583, baseType: !172, size: 32, offset: 4064)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "Se", scope: !294, file: !4, line: 583, baseType: !172, size: 32, offset: 4096)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "Ah", scope: !294, file: !4, line: 583, baseType: !172, size: 32, offset: 4128)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "Al", scope: !294, file: !4, line: 583, baseType: !172, size: 32, offset: 4160)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "unread_marker", scope: !294, file: !4, line: 589, baseType: !172, size: 32, offset: 4192)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !294, file: !4, line: 594, baseType: !458, size: 64, offset: 4224)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_decomp_master", file: !24, line: 136, size: 192, elements: !460)
!460 = !{!461, !462, !463}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_for_output_pass", scope: !459, file: !24, line: 137, baseType: !311, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "finish_output_pass", scope: !459, file: !24, line: 138, baseType: !311, size: 64, offset: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "is_dummy_pass", scope: !459, file: !24, line: 141, baseType: !250, size: 32, offset: 128)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "main", scope: !294, file: !4, line: 595, baseType: !465, size: 64, offset: 4288)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_d_main_controller", file: !24, line: 157, size: 128, elements: !467)
!467 = !{!468, !473}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !466, file: !24, line: 158, baseType: !469, size: 64)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = !DISubroutineType(types: !471)
!471 = !{null, !292, !472}
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_BUF_MODE", file: !24, line: 22, baseType: !23)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "process_data", scope: !466, file: !24, line: 159, baseType: !474, size: 64, offset: 64)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!475 = !DISubroutineType(types: !476)
!476 = !{null, !292, !221, !477, !228}
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "coef", scope: !294, file: !4, line: 596, baseType: !479, size: 64, offset: 4352)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_d_coef_controller", file: !24, line: 165, size: 320, elements: !481)
!481 = !{!482, !483, !487, !488, !494}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "start_input_pass", scope: !480, file: !24, line: 166, baseType: !311, size: 64)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "consume_data", scope: !480, file: !24, line: 167, baseType: !484, size: 64, offset: 64)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = !DISubroutineType(types: !486)
!486 = !{!172, !292}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "start_output_pass", scope: !480, file: !24, line: 168, baseType: !311, size: 64, offset: 128)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "decompress_data", scope: !480, file: !24, line: 169, baseType: !489, size: 64, offset: 192)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = !DISubroutineType(types: !491)
!491 = !{!172, !292, !492}
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPIMAGE", file: !4, line: 68, baseType: !493)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "coef_arrays", scope: !480, file: !24, line: 172, baseType: !495, size: 64, offset: 256)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "post", scope: !294, file: !4, line: 597, baseType: !497, size: 64, offset: 4416)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_d_post_controller", file: !24, line: 176, size: 128, elements: !499)
!499 = !{!500, !501}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !498, file: !24, line: 177, baseType: !469, size: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "post_process_data", scope: !498, file: !24, line: 178, baseType: !502, size: 64, offset: 64)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = !DISubroutineType(types: !504)
!504 = !{null, !292, !492, !477, !228, !221, !477, !228}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "inputctl", scope: !294, file: !4, line: 598, baseType: !506, size: 64, offset: 4480)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_input_controller", file: !24, line: 145, size: 320, elements: !508)
!508 = !{!509, !510, !511, !512, !513, !514}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "consume_input", scope: !507, file: !24, line: 146, baseType: !484, size: 64)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "reset_input_controller", scope: !507, file: !24, line: 147, baseType: !311, size: 64, offset: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "start_input_pass", scope: !507, file: !24, line: 148, baseType: !311, size: 64, offset: 128)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "finish_input_pass", scope: !507, file: !24, line: 149, baseType: !311, size: 64, offset: 192)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "has_multiple_scans", scope: !507, file: !24, line: 152, baseType: !250, size: 32, offset: 256)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "eoi_reached", scope: !507, file: !24, line: 153, baseType: !250, size: 32, offset: 288)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "marker", scope: !294, file: !4, line: 599, baseType: !516, size: 64, offset: 4544)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_marker_reader", file: !24, line: 188, size: 1408, elements: !518)
!518 = !{!519, !520, !521, !523, !524, !526, !527, !528, !529}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "reset_marker_reader", scope: !517, file: !24, line: 189, baseType: !311, size: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "read_markers", scope: !517, file: !24, line: 194, baseType: !484, size: 64, offset: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "read_restart_marker", scope: !517, file: !24, line: 196, baseType: !522, size: 64, offset: 128)
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "jpeg_marker_parser_method", file: !4, line: 781, baseType: !315)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "process_COM", scope: !517, file: !24, line: 198, baseType: !522, size: 64, offset: 192)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "process_APPn", scope: !517, file: !24, line: 199, baseType: !525, size: 1024, offset: 256)
!525 = !DICompositeType(tag: DW_TAG_array_type, baseType: !522, size: 1024, elements: !425)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "saw_SOI", scope: !517, file: !24, line: 204, baseType: !250, size: 32, offset: 1280)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "saw_SOF", scope: !517, file: !24, line: 205, baseType: !250, size: 32, offset: 1312)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "next_restart_num", scope: !517, file: !24, line: 206, baseType: !172, size: 32, offset: 1344)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "discarded_bytes", scope: !517, file: !24, line: 207, baseType: !5, size: 32, offset: 1376)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "entropy", scope: !294, file: !4, line: 600, baseType: !531, size: 64, offset: 4608)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_entropy_decoder", file: !24, line: 211, size: 128, elements: !533)
!533 = !{!534, !535}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !532, file: !24, line: 212, baseType: !311, size: 64)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "decode_mcu", scope: !532, file: !24, line: 213, baseType: !536, size: 64, offset: 64)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = !DISubroutineType(types: !538)
!538 = !{!250, !292, !234}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "idct", scope: !294, file: !4, line: 601, baseType: !540, size: 64, offset: 4672)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_inverse_dct", file: !24, line: 223, size: 704, elements: !542)
!542 = !{!543, !544}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !541, file: !24, line: 224, baseType: !311, size: 64)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "inverse_DCT", scope: !541, file: !24, line: 226, baseType: !545, size: 640, offset: 64)
!545 = !DICompositeType(tag: DW_TAG_array_type, baseType: !546, size: 640, elements: !450)
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "inverse_DCT_method_ptr", file: !24, line: 218, baseType: !547)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = !DISubroutineType(types: !549)
!549 = !{null, !292, !396, !550, !221, !228}
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "JCOEFPTR", file: !4, line: 75, baseType: !551)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "upsample", scope: !294, file: !4, line: 602, baseType: !553, size: 64, offset: 4736)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_upsampler", file: !24, line: 230, size: 192, elements: !555)
!555 = !{!556, !557, !558}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !554, file: !24, line: 231, baseType: !311, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "upsample", scope: !554, file: !24, line: 232, baseType: !502, size: 64, offset: 64)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "need_context_rows", scope: !554, file: !24, line: 240, baseType: !250, size: 32, offset: 128)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "cconvert", scope: !294, file: !4, line: 603, baseType: !560, size: 64, offset: 4800)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_color_deconverter", file: !24, line: 244, size: 128, elements: !562)
!562 = !{!563, !564}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !561, file: !24, line: 245, baseType: !311, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "color_convert", scope: !561, file: !24, line: 246, baseType: !565, size: 64, offset: 64)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = !DISubroutineType(types: !567)
!567 = !{null, !292, !492, !228, !221, !172}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "cquantize", scope: !294, file: !4, line: 604, baseType: !569, size: 64, offset: 4864)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_color_quantizer", file: !24, line: 252, size: 256, elements: !571)
!571 = !{!572, !576, !580, !581}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !570, file: !24, line: 253, baseType: !573, size: 64)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!574 = !DISubroutineType(types: !575)
!575 = !{null, !292, !250}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "color_quantize", scope: !570, file: !24, line: 254, baseType: !577, size: 64, offset: 64)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = !DISubroutineType(types: !579)
!579 = !{null, !292, !221, !221, !172}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "finish_pass", scope: !570, file: !24, line: 257, baseType: !311, size: 64, offset: 128)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "new_color_map", scope: !570, file: !24, line: 258, baseType: !311, size: 64, offset: 192)
!582 = !{}
!583 = !DILocalVariable(name: "cinfo", arg: 1, scope: !289, file: !1, line: 38, type: !292)
!584 = !DILocation(line: 38, column: 41, scope: !289)
!585 = !DILocation(line: 40, column: 7, scope: !586)
!586 = distinct !DILexicalBlock(scope: !289, file: !1, line: 40, column: 7)
!587 = !DILocation(line: 40, column: 14, scope: !586)
!588 = !DILocation(line: 40, column: 27, scope: !586)
!589 = !DILocation(line: 42, column: 29, scope: !590)
!590 = distinct !DILexicalBlock(scope: !586, file: !1, line: 40, column: 44)
!591 = !DILocation(line: 42, column: 5, scope: !590)
!592 = !DILocation(line: 43, column: 9, scope: !593)
!593 = distinct !DILexicalBlock(scope: !590, file: !1, line: 43, column: 9)
!594 = !DILocation(line: 43, column: 16, scope: !593)
!595 = !DILocation(line: 45, column: 7, scope: !596)
!596 = distinct !DILexicalBlock(scope: !593, file: !1, line: 43, column: 32)
!597 = !DILocation(line: 45, column: 14, scope: !596)
!598 = !DILocation(line: 45, column: 27, scope: !596)
!599 = !DILocation(line: 46, column: 7, scope: !596)
!600 = !DILocation(line: 48, column: 5, scope: !590)
!601 = !DILocation(line: 48, column: 12, scope: !590)
!602 = !DILocation(line: 48, column: 25, scope: !590)
!603 = !DILocation(line: 49, column: 3, scope: !590)
!604 = !DILocation(line: 50, column: 7, scope: !605)
!605 = distinct !DILexicalBlock(scope: !289, file: !1, line: 50, column: 7)
!606 = !DILocation(line: 50, column: 14, scope: !605)
!607 = !DILocation(line: 50, column: 27, scope: !605)
!608 = !DILocation(line: 52, column: 9, scope: !609)
!609 = distinct !DILexicalBlock(scope: !610, file: !1, line: 52, column: 9)
!610 = distinct !DILexicalBlock(scope: !605, file: !1, line: 50, column: 46)
!611 = !DILocation(line: 52, column: 16, scope: !609)
!612 = !DILocation(line: 52, column: 26, scope: !609)
!613 = !DILocation(line: 54, column: 7, scope: !614)
!614 = distinct !DILexicalBlock(scope: !609, file: !1, line: 52, column: 46)
!615 = !DILocalVariable(name: "retcode", scope: !616, file: !1, line: 55, type: !172)
!616 = distinct !DILexicalBlock(scope: !617, file: !1, line: 54, column: 16)
!617 = distinct !DILexicalBlock(scope: !618, file: !1, line: 54, column: 7)
!618 = distinct !DILexicalBlock(scope: !614, file: !1, line: 54, column: 7)
!619 = !DILocation(line: 55, column: 6, scope: !616)
!620 = !DILocation(line: 57, column: 6, scope: !621)
!621 = distinct !DILexicalBlock(scope: !616, file: !1, line: 57, column: 6)
!622 = !DILocation(line: 57, column: 13, scope: !621)
!623 = !DILocation(line: 57, column: 22, scope: !621)
!624 = !DILocation(line: 58, column: 6, scope: !621)
!625 = !DILocation(line: 58, column: 13, scope: !621)
!626 = !DILocation(line: 58, column: 23, scope: !621)
!627 = !DILocation(line: 58, column: 57, scope: !621)
!628 = !DILocation(line: 58, column: 4, scope: !621)
!629 = !DILocation(line: 60, column: 14, scope: !616)
!630 = !DILocation(line: 60, column: 21, scope: !616)
!631 = !DILocation(line: 60, column: 31, scope: !616)
!632 = !DILocation(line: 60, column: 47, scope: !616)
!633 = !DILocation(line: 60, column: 12, scope: !616)
!634 = !DILocation(line: 60, column: 10, scope: !616)
!635 = !DILocation(line: 61, column: 6, scope: !636)
!636 = distinct !DILexicalBlock(scope: !616, file: !1, line: 61, column: 6)
!637 = !DILocation(line: 61, column: 14, scope: !636)
!638 = !DILocation(line: 62, column: 4, scope: !636)
!639 = !DILocation(line: 63, column: 6, scope: !640)
!640 = distinct !DILexicalBlock(scope: !616, file: !1, line: 63, column: 6)
!641 = !DILocation(line: 63, column: 14, scope: !640)
!642 = !DILocation(line: 64, column: 4, scope: !640)
!643 = !DILocation(line: 66, column: 6, scope: !644)
!644 = distinct !DILexicalBlock(scope: !616, file: !1, line: 66, column: 6)
!645 = !DILocation(line: 66, column: 13, scope: !644)
!646 = !DILocation(line: 66, column: 22, scope: !644)
!647 = !DILocation(line: 66, column: 30, scope: !644)
!648 = !DILocation(line: 67, column: 7, scope: !644)
!649 = !DILocation(line: 67, column: 15, scope: !644)
!650 = !DILocation(line: 67, column: 37, scope: !644)
!651 = !DILocation(line: 67, column: 40, scope: !644)
!652 = !DILocation(line: 67, column: 48, scope: !644)
!653 = !DILocation(line: 68, column: 10, scope: !654)
!654 = distinct !DILexicalBlock(scope: !655, file: !1, line: 68, column: 8)
!655 = distinct !DILexicalBlock(scope: !644, file: !1, line: 67, column: 70)
!656 = !DILocation(line: 68, column: 17, scope: !654)
!657 = !DILocation(line: 68, column: 27, scope: !654)
!658 = !DILocation(line: 68, column: 8, scope: !654)
!659 = !DILocation(line: 68, column: 43, scope: !654)
!660 = !DILocation(line: 68, column: 50, scope: !654)
!661 = !DILocation(line: 68, column: 60, scope: !654)
!662 = !DILocation(line: 68, column: 40, scope: !654)
!663 = !DILocation(line: 70, column: 44, scope: !664)
!664 = distinct !DILexicalBlock(scope: !654, file: !1, line: 68, column: 72)
!665 = !DILocation(line: 70, column: 51, scope: !664)
!666 = !DILocation(line: 70, column: 37, scope: !664)
!667 = !DILocation(line: 70, column: 6, scope: !664)
!668 = !DILocation(line: 70, column: 13, scope: !664)
!669 = !DILocation(line: 70, column: 23, scope: !664)
!670 = !DILocation(line: 70, column: 34, scope: !664)
!671 = !DILocation(line: 71, column: 4, scope: !664)
!672 = !DILocation(line: 72, column: 2, scope: !655)
!673 = !DILocation(line: 54, column: 7, scope: !617)
!674 = distinct !{!674, !675, !676}
!675 = !DILocation(line: 54, column: 7, scope: !618)
!676 = !DILocation(line: 73, column: 7, scope: !618)
!677 = !DILocation(line: 77, column: 5, scope: !614)
!678 = !DILocation(line: 78, column: 33, scope: !610)
!679 = !DILocation(line: 78, column: 40, scope: !610)
!680 = !DILocation(line: 78, column: 5, scope: !610)
!681 = !DILocation(line: 78, column: 12, scope: !610)
!682 = !DILocation(line: 78, column: 31, scope: !610)
!683 = !DILocation(line: 79, column: 3, scope: !610)
!684 = !DILocation(line: 79, column: 14, scope: !685)
!685 = distinct !DILexicalBlock(scope: !605, file: !1, line: 79, column: 14)
!686 = !DILocation(line: 79, column: 21, scope: !685)
!687 = !DILocation(line: 79, column: 34, scope: !685)
!688 = !DILocation(line: 80, column: 5, scope: !685)
!689 = !DILocation(line: 82, column: 28, scope: !289)
!690 = !DILocation(line: 82, column: 10, scope: !289)
!691 = !DILocation(line: 82, column: 3, scope: !289)
!692 = !DILocation(line: 83, column: 1, scope: !289)
!693 = distinct !DISubprogram(name: "output_pass_setup", scope: !1, file: !1, line: 95, type: !290, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !582)
!694 = !DILocalVariable(name: "cinfo", arg: 1, scope: !693, file: !1, line: 95, type: !292)
!695 = !DILocation(line: 95, column: 37, scope: !693)
!696 = !DILocation(line: 97, column: 7, scope: !697)
!697 = distinct !DILexicalBlock(scope: !693, file: !1, line: 97, column: 7)
!698 = !DILocation(line: 97, column: 14, scope: !697)
!699 = !DILocation(line: 97, column: 27, scope: !697)
!700 = !DILocation(line: 99, column: 7, scope: !701)
!701 = distinct !DILexicalBlock(scope: !697, file: !1, line: 97, column: 46)
!702 = !DILocation(line: 99, column: 14, scope: !701)
!703 = !DILocation(line: 99, column: 22, scope: !701)
!704 = !DILocation(line: 99, column: 48, scope: !701)
!705 = !DILocation(line: 99, column: 5, scope: !701)
!706 = !DILocation(line: 100, column: 5, scope: !701)
!707 = !DILocation(line: 100, column: 12, scope: !701)
!708 = !DILocation(line: 100, column: 28, scope: !701)
!709 = !DILocation(line: 101, column: 5, scope: !701)
!710 = !DILocation(line: 101, column: 12, scope: !701)
!711 = !DILocation(line: 101, column: 25, scope: !701)
!712 = !DILocation(line: 102, column: 3, scope: !701)
!713 = !DILocation(line: 104, column: 3, scope: !693)
!714 = !DILocation(line: 104, column: 10, scope: !693)
!715 = !DILocation(line: 104, column: 17, scope: !693)
!716 = !DILocation(line: 104, column: 25, scope: !693)
!717 = !DILocation(line: 107, column: 5, scope: !718)
!718 = distinct !DILexicalBlock(scope: !693, file: !1, line: 104, column: 40)
!719 = !DILocation(line: 107, column: 12, scope: !718)
!720 = !DILocation(line: 107, column: 19, scope: !718)
!721 = !DILocation(line: 107, column: 37, scope: !718)
!722 = !DILocation(line: 107, column: 44, scope: !718)
!723 = !DILocation(line: 107, column: 35, scope: !718)
!724 = !DILocalVariable(name: "last_scanline", scope: !725, file: !1, line: 108, type: !228)
!725 = distinct !DILexicalBlock(scope: !718, file: !1, line: 107, column: 59)
!726 = !DILocation(line: 108, column: 18, scope: !725)
!727 = !DILocation(line: 110, column: 11, scope: !728)
!728 = distinct !DILexicalBlock(scope: !725, file: !1, line: 110, column: 11)
!729 = !DILocation(line: 110, column: 18, scope: !728)
!730 = !DILocation(line: 110, column: 27, scope: !728)
!731 = !DILocation(line: 111, column: 41, scope: !732)
!732 = distinct !DILexicalBlock(scope: !728, file: !1, line: 110, column: 36)
!733 = !DILocation(line: 111, column: 48, scope: !732)
!734 = !DILocation(line: 111, column: 34, scope: !732)
!735 = !DILocation(line: 111, column: 2, scope: !732)
!736 = !DILocation(line: 111, column: 9, scope: !732)
!737 = !DILocation(line: 111, column: 19, scope: !732)
!738 = !DILocation(line: 111, column: 32, scope: !732)
!739 = !DILocation(line: 112, column: 39, scope: !732)
!740 = !DILocation(line: 112, column: 46, scope: !732)
!741 = !DILocation(line: 112, column: 32, scope: !732)
!742 = !DILocation(line: 112, column: 2, scope: !732)
!743 = !DILocation(line: 112, column: 9, scope: !732)
!744 = !DILocation(line: 112, column: 19, scope: !732)
!745 = !DILocation(line: 112, column: 30, scope: !732)
!746 = !DILocation(line: 113, column: 4, scope: !732)
!747 = !DILocation(line: 113, column: 11, scope: !732)
!748 = !DILocation(line: 113, column: 21, scope: !732)
!749 = !DILocation(line: 113, column: 55, scope: !732)
!750 = !DILocation(line: 113, column: 2, scope: !732)
!751 = !DILocation(line: 114, column: 7, scope: !732)
!752 = !DILocation(line: 116, column: 23, scope: !725)
!753 = !DILocation(line: 116, column: 30, scope: !725)
!754 = !DILocation(line: 116, column: 21, scope: !725)
!755 = !DILocation(line: 117, column: 9, scope: !725)
!756 = !DILocation(line: 117, column: 16, scope: !725)
!757 = !DILocation(line: 117, column: 22, scope: !725)
!758 = !DILocation(line: 117, column: 37, scope: !725)
!759 = !DILocation(line: 118, column: 10, scope: !725)
!760 = !DILocation(line: 118, column: 17, scope: !725)
!761 = !DILocation(line: 117, column: 7, scope: !725)
!762 = !DILocation(line: 119, column: 11, scope: !763)
!763 = distinct !DILexicalBlock(scope: !725, file: !1, line: 119, column: 11)
!764 = !DILocation(line: 119, column: 18, scope: !763)
!765 = !DILocation(line: 119, column: 37, scope: !763)
!766 = !DILocation(line: 119, column: 34, scope: !763)
!767 = !DILocation(line: 120, column: 2, scope: !763)
!768 = distinct !{!768, !717, !769, !770}
!769 = !DILocation(line: 121, column: 5, scope: !718)
!770 = !{!"llvm.loop.mustprogress"}
!771 = !DILocation(line: 123, column: 7, scope: !718)
!772 = !DILocation(line: 123, column: 14, scope: !718)
!773 = !DILocation(line: 123, column: 22, scope: !718)
!774 = !DILocation(line: 123, column: 43, scope: !718)
!775 = !DILocation(line: 123, column: 5, scope: !718)
!776 = !DILocation(line: 124, column: 7, scope: !718)
!777 = !DILocation(line: 124, column: 14, scope: !718)
!778 = !DILocation(line: 124, column: 22, scope: !718)
!779 = !DILocation(line: 124, column: 48, scope: !718)
!780 = !DILocation(line: 124, column: 5, scope: !718)
!781 = !DILocation(line: 125, column: 5, scope: !718)
!782 = !DILocation(line: 125, column: 12, scope: !718)
!783 = !DILocation(line: 125, column: 28, scope: !718)
!784 = distinct !{!784, !713, !785, !770}
!785 = !DILocation(line: 129, column: 3, scope: !693)
!786 = !DILocation(line: 133, column: 25, scope: !693)
!787 = !DILocation(line: 133, column: 32, scope: !693)
!788 = !DILocation(line: 133, column: 3, scope: !693)
!789 = !DILocation(line: 133, column: 10, scope: !693)
!790 = !DILocation(line: 133, column: 23, scope: !693)
!791 = !DILocation(line: 134, column: 3, scope: !693)
!792 = !DILocation(line: 135, column: 1, scope: !693)
!793 = distinct !DISubprogram(name: "jpeg_read_scanlines", scope: !1, file: !1, line: 152, type: !794, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !582)
!794 = !DISubroutineType(types: !795)
!795 = !{!228, !292, !221, !228}
!796 = !DILocalVariable(name: "cinfo", arg: 1, scope: !793, file: !1, line: 152, type: !292)
!797 = !DILocation(line: 152, column: 39, scope: !793)
!798 = !DILocalVariable(name: "scanlines", arg: 2, scope: !793, file: !1, line: 152, type: !221)
!799 = !DILocation(line: 152, column: 57, scope: !793)
!800 = !DILocalVariable(name: "max_lines", arg: 3, scope: !793, file: !1, line: 153, type: !228)
!801 = !DILocation(line: 153, column: 19, scope: !793)
!802 = !DILocalVariable(name: "row_ctr", scope: !793, file: !1, line: 155, type: !228)
!803 = !DILocation(line: 155, column: 14, scope: !793)
!804 = !DILocation(line: 157, column: 7, scope: !805)
!805 = distinct !DILexicalBlock(scope: !793, file: !1, line: 157, column: 7)
!806 = !DILocation(line: 157, column: 14, scope: !805)
!807 = !DILocation(line: 157, column: 27, scope: !805)
!808 = !DILocation(line: 158, column: 5, scope: !805)
!809 = !DILocation(line: 159, column: 7, scope: !810)
!810 = distinct !DILexicalBlock(scope: !793, file: !1, line: 159, column: 7)
!811 = !DILocation(line: 159, column: 14, scope: !810)
!812 = !DILocation(line: 159, column: 33, scope: !810)
!813 = !DILocation(line: 159, column: 40, scope: !810)
!814 = !DILocation(line: 159, column: 30, scope: !810)
!815 = !DILocation(line: 160, column: 5, scope: !816)
!816 = distinct !DILexicalBlock(scope: !810, file: !1, line: 159, column: 55)
!817 = !DILocation(line: 161, column: 5, scope: !816)
!818 = !DILocation(line: 165, column: 7, scope: !819)
!819 = distinct !DILexicalBlock(scope: !793, file: !1, line: 165, column: 7)
!820 = !DILocation(line: 165, column: 14, scope: !819)
!821 = !DILocation(line: 165, column: 23, scope: !819)
!822 = !DILocation(line: 166, column: 44, scope: !823)
!823 = distinct !DILexicalBlock(scope: !819, file: !1, line: 165, column: 32)
!824 = !DILocation(line: 166, column: 51, scope: !823)
!825 = !DILocation(line: 166, column: 37, scope: !823)
!826 = !DILocation(line: 166, column: 5, scope: !823)
!827 = !DILocation(line: 166, column: 12, scope: !823)
!828 = !DILocation(line: 166, column: 22, scope: !823)
!829 = !DILocation(line: 166, column: 35, scope: !823)
!830 = !DILocation(line: 167, column: 42, scope: !823)
!831 = !DILocation(line: 167, column: 49, scope: !823)
!832 = !DILocation(line: 167, column: 35, scope: !823)
!833 = !DILocation(line: 167, column: 5, scope: !823)
!834 = !DILocation(line: 167, column: 12, scope: !823)
!835 = !DILocation(line: 167, column: 22, scope: !823)
!836 = !DILocation(line: 167, column: 33, scope: !823)
!837 = !DILocation(line: 168, column: 7, scope: !823)
!838 = !DILocation(line: 168, column: 14, scope: !823)
!839 = !DILocation(line: 168, column: 24, scope: !823)
!840 = !DILocation(line: 168, column: 58, scope: !823)
!841 = !DILocation(line: 168, column: 5, scope: !823)
!842 = !DILocation(line: 169, column: 3, scope: !823)
!843 = !DILocation(line: 172, column: 11, scope: !793)
!844 = !DILocation(line: 173, column: 5, scope: !793)
!845 = !DILocation(line: 173, column: 12, scope: !793)
!846 = !DILocation(line: 173, column: 18, scope: !793)
!847 = !DILocation(line: 173, column: 33, scope: !793)
!848 = !DILocation(line: 173, column: 40, scope: !793)
!849 = !DILocation(line: 173, column: 61, scope: !793)
!850 = !DILocation(line: 173, column: 3, scope: !793)
!851 = !DILocation(line: 174, column: 29, scope: !793)
!852 = !DILocation(line: 174, column: 3, scope: !793)
!853 = !DILocation(line: 174, column: 10, scope: !793)
!854 = !DILocation(line: 174, column: 26, scope: !793)
!855 = !DILocation(line: 175, column: 10, scope: !793)
!856 = !DILocation(line: 175, column: 3, scope: !793)
!857 = !DILocation(line: 176, column: 1, scope: !793)
!858 = distinct !DISubprogram(name: "jpeg_read_raw_data", scope: !1, file: !1, line: 185, type: !859, scopeLine: 187, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !582)
!859 = !DISubroutineType(types: !860)
!860 = !{!228, !292, !492, !228}
!861 = !DILocalVariable(name: "cinfo", arg: 1, scope: !858, file: !1, line: 185, type: !292)
!862 = !DILocation(line: 185, column: 38, scope: !858)
!863 = !DILocalVariable(name: "data", arg: 2, scope: !858, file: !1, line: 185, type: !492)
!864 = !DILocation(line: 185, column: 56, scope: !858)
!865 = !DILocalVariable(name: "max_lines", arg: 3, scope: !858, file: !1, line: 186, type: !228)
!866 = !DILocation(line: 186, column: 18, scope: !858)
!867 = !DILocalVariable(name: "lines_per_iMCU_row", scope: !858, file: !1, line: 188, type: !228)
!868 = !DILocation(line: 188, column: 14, scope: !858)
!869 = !DILocation(line: 190, column: 7, scope: !870)
!870 = distinct !DILexicalBlock(scope: !858, file: !1, line: 190, column: 7)
!871 = !DILocation(line: 190, column: 14, scope: !870)
!872 = !DILocation(line: 190, column: 27, scope: !870)
!873 = !DILocation(line: 191, column: 5, scope: !870)
!874 = !DILocation(line: 192, column: 7, scope: !875)
!875 = distinct !DILexicalBlock(scope: !858, file: !1, line: 192, column: 7)
!876 = !DILocation(line: 192, column: 14, scope: !875)
!877 = !DILocation(line: 192, column: 33, scope: !875)
!878 = !DILocation(line: 192, column: 40, scope: !875)
!879 = !DILocation(line: 192, column: 30, scope: !875)
!880 = !DILocation(line: 193, column: 5, scope: !881)
!881 = distinct !DILexicalBlock(scope: !875, file: !1, line: 192, column: 55)
!882 = !DILocation(line: 194, column: 5, scope: !881)
!883 = !DILocation(line: 198, column: 7, scope: !884)
!884 = distinct !DILexicalBlock(scope: !858, file: !1, line: 198, column: 7)
!885 = !DILocation(line: 198, column: 14, scope: !884)
!886 = !DILocation(line: 198, column: 23, scope: !884)
!887 = !DILocation(line: 199, column: 44, scope: !888)
!888 = distinct !DILexicalBlock(scope: !884, file: !1, line: 198, column: 32)
!889 = !DILocation(line: 199, column: 51, scope: !888)
!890 = !DILocation(line: 199, column: 37, scope: !888)
!891 = !DILocation(line: 199, column: 5, scope: !888)
!892 = !DILocation(line: 199, column: 12, scope: !888)
!893 = !DILocation(line: 199, column: 22, scope: !888)
!894 = !DILocation(line: 199, column: 35, scope: !888)
!895 = !DILocation(line: 200, column: 42, scope: !888)
!896 = !DILocation(line: 200, column: 49, scope: !888)
!897 = !DILocation(line: 200, column: 35, scope: !888)
!898 = !DILocation(line: 200, column: 5, scope: !888)
!899 = !DILocation(line: 200, column: 12, scope: !888)
!900 = !DILocation(line: 200, column: 22, scope: !888)
!901 = !DILocation(line: 200, column: 33, scope: !888)
!902 = !DILocation(line: 201, column: 7, scope: !888)
!903 = !DILocation(line: 201, column: 14, scope: !888)
!904 = !DILocation(line: 201, column: 24, scope: !888)
!905 = !DILocation(line: 201, column: 58, scope: !888)
!906 = !DILocation(line: 201, column: 5, scope: !888)
!907 = !DILocation(line: 202, column: 3, scope: !888)
!908 = !DILocation(line: 205, column: 24, scope: !858)
!909 = !DILocation(line: 205, column: 31, scope: !858)
!910 = !DILocation(line: 205, column: 51, scope: !858)
!911 = !DILocation(line: 205, column: 58, scope: !858)
!912 = !DILocation(line: 205, column: 49, scope: !858)
!913 = !DILocation(line: 205, column: 22, scope: !858)
!914 = !DILocation(line: 206, column: 7, scope: !915)
!915 = distinct !DILexicalBlock(scope: !858, file: !1, line: 206, column: 7)
!916 = !DILocation(line: 206, column: 19, scope: !915)
!917 = !DILocation(line: 206, column: 17, scope: !915)
!918 = !DILocation(line: 207, column: 5, scope: !915)
!919 = !DILocation(line: 210, column: 11, scope: !920)
!920 = distinct !DILexicalBlock(scope: !858, file: !1, line: 210, column: 7)
!921 = !DILocation(line: 210, column: 18, scope: !920)
!922 = !DILocation(line: 210, column: 24, scope: !920)
!923 = !DILocation(line: 210, column: 42, scope: !920)
!924 = !DILocation(line: 210, column: 49, scope: !920)
!925 = !DILocation(line: 210, column: 9, scope: !920)
!926 = !DILocation(line: 210, column: 7, scope: !920)
!927 = !DILocation(line: 211, column: 5, scope: !920)
!928 = !DILocation(line: 214, column: 29, scope: !858)
!929 = !DILocation(line: 214, column: 3, scope: !858)
!930 = !DILocation(line: 214, column: 10, scope: !858)
!931 = !DILocation(line: 214, column: 26, scope: !858)
!932 = !DILocation(line: 215, column: 10, scope: !858)
!933 = !DILocation(line: 215, column: 3, scope: !858)
!934 = !DILocation(line: 216, column: 1, scope: !858)
!935 = distinct !DISubprogram(name: "jpeg_start_output", scope: !1, file: !1, line: 228, type: !322, scopeLine: 229, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !582)
!936 = !DILocalVariable(name: "cinfo", arg: 1, scope: !935, file: !1, line: 228, type: !292)
!937 = !DILocation(line: 228, column: 37, scope: !935)
!938 = !DILocalVariable(name: "scan_number", arg: 2, scope: !935, file: !1, line: 228, type: !172)
!939 = !DILocation(line: 228, column: 48, scope: !935)
!940 = !DILocation(line: 230, column: 7, scope: !941)
!941 = distinct !DILexicalBlock(scope: !935, file: !1, line: 230, column: 7)
!942 = !DILocation(line: 230, column: 14, scope: !941)
!943 = !DILocation(line: 230, column: 27, scope: !941)
!944 = !DILocation(line: 230, column: 46, scope: !941)
!945 = !DILocation(line: 231, column: 7, scope: !941)
!946 = !DILocation(line: 231, column: 14, scope: !941)
!947 = !DILocation(line: 231, column: 27, scope: !941)
!948 = !DILocation(line: 232, column: 5, scope: !941)
!949 = !DILocation(line: 234, column: 7, scope: !950)
!950 = distinct !DILexicalBlock(scope: !935, file: !1, line: 234, column: 7)
!951 = !DILocation(line: 234, column: 19, scope: !950)
!952 = !DILocation(line: 235, column: 17, scope: !950)
!953 = !DILocation(line: 235, column: 5, scope: !950)
!954 = !DILocation(line: 236, column: 7, scope: !955)
!955 = distinct !DILexicalBlock(scope: !935, file: !1, line: 236, column: 7)
!956 = !DILocation(line: 236, column: 14, scope: !955)
!957 = !DILocation(line: 236, column: 24, scope: !955)
!958 = !DILocation(line: 236, column: 36, scope: !955)
!959 = !DILocation(line: 237, column: 7, scope: !955)
!960 = !DILocation(line: 237, column: 21, scope: !955)
!961 = !DILocation(line: 237, column: 28, scope: !955)
!962 = !DILocation(line: 237, column: 19, scope: !955)
!963 = !DILocation(line: 238, column: 19, scope: !955)
!964 = !DILocation(line: 238, column: 26, scope: !955)
!965 = !DILocation(line: 238, column: 17, scope: !955)
!966 = !DILocation(line: 238, column: 5, scope: !955)
!967 = !DILocation(line: 239, column: 31, scope: !935)
!968 = !DILocation(line: 239, column: 3, scope: !935)
!969 = !DILocation(line: 239, column: 10, scope: !935)
!970 = !DILocation(line: 239, column: 29, scope: !935)
!971 = !DILocation(line: 241, column: 28, scope: !935)
!972 = !DILocation(line: 241, column: 10, scope: !935)
!973 = !DILocation(line: 241, column: 3, scope: !935)
!974 = distinct !DISubprogram(name: "jpeg_finish_output", scope: !1, file: !1, line: 253, type: !290, scopeLine: 254, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !582)
!975 = !DILocalVariable(name: "cinfo", arg: 1, scope: !974, file: !1, line: 253, type: !292)
!976 = !DILocation(line: 253, column: 38, scope: !974)
!977 = !DILocation(line: 255, column: 8, scope: !978)
!978 = distinct !DILexicalBlock(scope: !974, file: !1, line: 255, column: 7)
!979 = !DILocation(line: 255, column: 15, scope: !978)
!980 = !DILocation(line: 255, column: 28, scope: !978)
!981 = !DILocation(line: 255, column: 47, scope: !978)
!982 = !DILocation(line: 256, column: 8, scope: !978)
!983 = !DILocation(line: 256, column: 15, scope: !978)
!984 = !DILocation(line: 256, column: 28, scope: !978)
!985 = !DILocation(line: 256, column: 46, scope: !978)
!986 = !DILocation(line: 256, column: 49, scope: !978)
!987 = !DILocation(line: 256, column: 56, scope: !978)
!988 = !DILocation(line: 259, column: 7, scope: !989)
!989 = distinct !DILexicalBlock(scope: !978, file: !1, line: 256, column: 72)
!990 = !DILocation(line: 259, column: 14, scope: !989)
!991 = !DILocation(line: 259, column: 22, scope: !989)
!992 = !DILocation(line: 259, column: 43, scope: !989)
!993 = !DILocation(line: 259, column: 5, scope: !989)
!994 = !DILocation(line: 260, column: 5, scope: !989)
!995 = !DILocation(line: 260, column: 12, scope: !989)
!996 = !DILocation(line: 260, column: 25, scope: !989)
!997 = !DILocation(line: 261, column: 3, scope: !989)
!998 = !DILocation(line: 261, column: 14, scope: !999)
!999 = distinct !DILexicalBlock(scope: !978, file: !1, line: 261, column: 14)
!1000 = !DILocation(line: 261, column: 21, scope: !999)
!1001 = !DILocation(line: 261, column: 34, scope: !999)
!1002 = !DILocation(line: 263, column: 5, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !999, file: !1, line: 261, column: 53)
!1004 = !DILocation(line: 264, column: 3, scope: !1003)
!1005 = !DILocation(line: 266, column: 3, scope: !974)
!1006 = !DILocation(line: 266, column: 10, scope: !974)
!1007 = !DILocation(line: 266, column: 17, scope: !974)
!1008 = !DILocation(line: 266, column: 38, scope: !974)
!1009 = !DILocation(line: 266, column: 45, scope: !974)
!1010 = !DILocation(line: 266, column: 35, scope: !974)
!1011 = !DILocation(line: 266, column: 64, scope: !974)
!1012 = !DILocation(line: 267, column: 5, scope: !974)
!1013 = !DILocation(line: 267, column: 12, scope: !974)
!1014 = !DILocation(line: 267, column: 22, scope: !974)
!1015 = !DILocation(line: 267, column: 3, scope: !974)
!1016 = !DILocation(line: 0, scope: !974)
!1017 = !DILocation(line: 268, column: 11, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !1019, file: !1, line: 268, column: 9)
!1019 = distinct !DILexicalBlock(scope: !974, file: !1, line: 267, column: 35)
!1020 = !DILocation(line: 268, column: 18, scope: !1018)
!1021 = !DILocation(line: 268, column: 28, scope: !1018)
!1022 = !DILocation(line: 268, column: 44, scope: !1018)
!1023 = !DILocation(line: 268, column: 9, scope: !1018)
!1024 = !DILocation(line: 268, column: 51, scope: !1018)
!1025 = !DILocation(line: 269, column: 7, scope: !1018)
!1026 = distinct !{!1026, !1005, !1027, !770}
!1027 = !DILocation(line: 270, column: 3, scope: !974)
!1028 = !DILocation(line: 271, column: 3, scope: !974)
!1029 = !DILocation(line: 271, column: 10, scope: !974)
!1030 = !DILocation(line: 271, column: 23, scope: !974)
!1031 = !DILocation(line: 272, column: 3, scope: !974)
!1032 = !DILocation(line: 273, column: 1, scope: !974)
