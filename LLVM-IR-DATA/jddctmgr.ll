; ModuleID = 'cBench/consumer_jpeg_c/src/jddctmgr.c'
source_filename = "cBench/consumer_jpeg_c/src/jddctmgr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jpeg_decompress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.my_idct_controller = type { %struct.jpeg_inverse_dct, [10 x i32] }
%struct.jpeg_inverse_dct = type { ptr, [10 x ptr] }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.JQUANT_TBL = type { [64 x i16], i32 }

@start_pass.aanscales = internal constant [64 x i16] [i16 16384, i16 22725, i16 21407, i16 19266, i16 16384, i16 12873, i16 8867, i16 4520, i16 22725, i16 31521, i16 29692, i16 26722, i16 22725, i16 17855, i16 12299, i16 6270, i16 21407, i16 29692, i16 27969, i16 25172, i16 21407, i16 16819, i16 11585, i16 5906, i16 19266, i16 26722, i16 25172, i16 22654, i16 19266, i16 15137, i16 10426, i16 5315, i16 16384, i16 22725, i16 21407, i16 19266, i16 16384, i16 12873, i16 8867, i16 4520, i16 12873, i16 17855, i16 16819, i16 15137, i16 12873, i16 10114, i16 6967, i16 3552, i16 8867, i16 12299, i16 11585, i16 10426, i16 8867, i16 6967, i16 4799, i16 2446, i16 4520, i16 6270, i16 5906, i16 5315, i16 4520, i16 3552, i16 2446, i16 1247], align 16, !dbg !0
@start_pass.aanscalefactor = internal constant [8 x double] [double 1.000000e+00, double 0x3FF63150B14861EF, double 0x3FF4E7AE914D6FCA, double 0x3FF2D062EF6C11AA, double 1.000000e+00, double 0x3FE92469C0A7BF3B, double 0x3FE1517A7BC720BB, double 0x3FD1A855DE72AB5D], align 16, !dbg !593

; Function Attrs: noinline nounwind uwtable
define dso_local void @jinit_inverse_dct(ptr noundef %0) #0 !dbg !609 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !610, !DIExpression(), !611)
    #dbg_declare(ptr %3, !612, !DIExpression(), !613)
    #dbg_declare(ptr %4, !614, !DIExpression(), !615)
    #dbg_declare(ptr %5, !616, !DIExpression(), !617)
  %6 = load ptr, ptr %2, align 8, !dbg !618
  %7 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %6, i32 0, i32 1, !dbg !619
  %8 = load ptr, ptr %7, align 8, !dbg !619
  %9 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %8, i32 0, i32 0, !dbg !620
  %10 = load ptr, ptr %9, align 8, !dbg !620
  %11 = load ptr, ptr %2, align 8, !dbg !621
  %12 = call ptr %10(ptr noundef %11, i32 noundef 1, i64 noundef 128), !dbg !622
  store ptr %12, ptr %3, align 8, !dbg !623
  %13 = load ptr, ptr %3, align 8, !dbg !624
  %14 = load ptr, ptr %2, align 8, !dbg !625
  %15 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %14, i32 0, i32 80, !dbg !626
  store ptr %13, ptr %15, align 8, !dbg !627
  %16 = load ptr, ptr %3, align 8, !dbg !628
  %17 = getelementptr inbounds nuw %struct.my_idct_controller, ptr %16, i32 0, i32 0, !dbg !629
  %18 = getelementptr inbounds nuw %struct.jpeg_inverse_dct, ptr %17, i32 0, i32 0, !dbg !630
  store ptr @start_pass, ptr %18, align 8, !dbg !631
  store i32 0, ptr %4, align 4, !dbg !632
  %19 = load ptr, ptr %2, align 8, !dbg !634
  %20 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %19, i32 0, i32 43, !dbg !635
  %21 = load ptr, ptr %20, align 8, !dbg !635
  store ptr %21, ptr %5, align 8, !dbg !636
  br label %22, !dbg !637

22:                                               ; preds = %46, %1
  %23 = load i32, ptr %4, align 4, !dbg !638
  %24 = load ptr, ptr %2, align 8, !dbg !640
  %25 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %24, i32 0, i32 8, !dbg !641
  %26 = load i32, ptr %25, align 8, !dbg !641
  %27 = icmp slt i32 %23, %26, !dbg !642
  br i1 %27, label %28, label %51, !dbg !643

28:                                               ; preds = %22
  %29 = load ptr, ptr %2, align 8, !dbg !644
  %30 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %29, i32 0, i32 1, !dbg !646
  %31 = load ptr, ptr %30, align 8, !dbg !646
  %32 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %31, i32 0, i32 0, !dbg !647
  %33 = load ptr, ptr %32, align 8, !dbg !647
  %34 = load ptr, ptr %2, align 8, !dbg !648
  %35 = call ptr %33(ptr noundef %34, i32 noundef 1, i64 noundef 256), !dbg !649
  %36 = load ptr, ptr %5, align 8, !dbg !650
  %37 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %36, i32 0, i32 20, !dbg !651
  store ptr %35, ptr %37, align 8, !dbg !652
  %38 = load ptr, ptr %5, align 8, !dbg !653
  %39 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %38, i32 0, i32 20, !dbg !653
  %40 = load ptr, ptr %39, align 8, !dbg !653
  call void @llvm.memset.p0.i64(ptr align 1 %40, i8 0, i64 256, i1 false), !dbg !653
  %41 = load ptr, ptr %3, align 8, !dbg !654
  %42 = getelementptr inbounds nuw %struct.my_idct_controller, ptr %41, i32 0, i32 1, !dbg !655
  %43 = load i32, ptr %4, align 4, !dbg !656
  %44 = sext i32 %43 to i64, !dbg !654
  %45 = getelementptr inbounds [10 x i32], ptr %42, i64 0, i64 %44, !dbg !654
  store i32 -1, ptr %45, align 4, !dbg !657
  br label %46, !dbg !658

46:                                               ; preds = %28
  %47 = load i32, ptr %4, align 4, !dbg !659
  %48 = add nsw i32 %47, 1, !dbg !659
  store i32 %48, ptr %4, align 4, !dbg !659
  %49 = load ptr, ptr %5, align 8, !dbg !660
  %50 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %49, i32 1, !dbg !660
  store ptr %50, ptr %5, align 8, !dbg !660
  br label %22, !dbg !661, !llvm.loop !662

51:                                               ; preds = %22
  ret void, !dbg !665
}

; Function Attrs: noinline nounwind uwtable
define internal void @start_pass(ptr noundef %0) #0 !dbg !2 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !666, !DIExpression(), !667)
    #dbg_declare(ptr %3, !668, !DIExpression(), !669)
  %15 = load ptr, ptr %2, align 8, !dbg !670
  %16 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %15, i32 0, i32 80, !dbg !671
  %17 = load ptr, ptr %16, align 8, !dbg !671
  store ptr %17, ptr %3, align 8, !dbg !669
    #dbg_declare(ptr %4, !672, !DIExpression(), !673)
    #dbg_declare(ptr %5, !674, !DIExpression(), !675)
    #dbg_declare(ptr %6, !676, !DIExpression(), !677)
    #dbg_declare(ptr %7, !678, !DIExpression(), !679)
  store i32 0, ptr %7, align 4, !dbg !679
    #dbg_declare(ptr %8, !680, !DIExpression(), !681)
  store ptr null, ptr %8, align 8, !dbg !681
    #dbg_declare(ptr %9, !682, !DIExpression(), !683)
  store i32 0, ptr %4, align 4, !dbg !684
  %18 = load ptr, ptr %2, align 8, !dbg !686
  %19 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %18, i32 0, i32 43, !dbg !687
  %20 = load ptr, ptr %19, align 8, !dbg !687
  store ptr %20, ptr %6, align 8, !dbg !688
  br label %21, !dbg !689

21:                                               ; preds = %220, %1
  %22 = load i32, ptr %4, align 4, !dbg !690
  %23 = load ptr, ptr %2, align 8, !dbg !692
  %24 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %23, i32 0, i32 8, !dbg !693
  %25 = load i32, ptr %24, align 8, !dbg !693
  %26 = icmp slt i32 %22, %25, !dbg !694
  br i1 %26, label %27, label %225, !dbg !695

27:                                               ; preds = %21
  %28 = load ptr, ptr %6, align 8, !dbg !696
  %29 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %28, i32 0, i32 9, !dbg !698
  %30 = load i32, ptr %29, align 4, !dbg !698
  switch i32 %30, label %53 [
    i32 1, label %31
    i32 2, label %32
    i32 4, label %33
    i32 8, label %34
  ], !dbg !699

31:                                               ; preds = %27
  store ptr @jpeg_idct_1x1, ptr %8, align 8, !dbg !700
  store i32 0, ptr %7, align 4, !dbg !702
  br label %72, !dbg !703

32:                                               ; preds = %27
  store ptr @jpeg_idct_2x2, ptr %8, align 8, !dbg !704
  store i32 0, ptr %7, align 4, !dbg !705
  br label %72, !dbg !706

33:                                               ; preds = %27
  store ptr @jpeg_idct_4x4, ptr %8, align 8, !dbg !707
  store i32 0, ptr %7, align 4, !dbg !708
  br label %72, !dbg !709

34:                                               ; preds = %27
  %35 = load ptr, ptr %2, align 8, !dbg !710
  %36 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %35, i32 0, i32 16, !dbg !711
  %37 = load i32, ptr %36, align 8, !dbg !711
  switch i32 %37, label %41 [
    i32 0, label %38
    i32 1, label %39
    i32 2, label %40
  ], !dbg !712

38:                                               ; preds = %34
  store ptr @jpeg_idct_islow, ptr %8, align 8, !dbg !713
  store i32 0, ptr %7, align 4, !dbg !715
  br label %52, !dbg !716

39:                                               ; preds = %34
  store ptr @jpeg_idct_ifast, ptr %8, align 8, !dbg !717
  store i32 1, ptr %7, align 4, !dbg !718
  br label %52, !dbg !719

40:                                               ; preds = %34
  store ptr @jpeg_idct_float, ptr %8, align 8, !dbg !720
  store i32 2, ptr %7, align 4, !dbg !721
  br label %52, !dbg !722

41:                                               ; preds = %34
  %42 = load ptr, ptr %2, align 8, !dbg !723
  %43 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %42, i32 0, i32 0, !dbg !723
  %44 = load ptr, ptr %43, align 8, !dbg !723
  %45 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %44, i32 0, i32 5, !dbg !723
  store i32 47, ptr %45, align 8, !dbg !723
  %46 = load ptr, ptr %2, align 8, !dbg !723
  %47 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %46, i32 0, i32 0, !dbg !723
  %48 = load ptr, ptr %47, align 8, !dbg !723
  %49 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %48, i32 0, i32 0, !dbg !723
  %50 = load ptr, ptr %49, align 8, !dbg !723
  %51 = load ptr, ptr %2, align 8, !dbg !723
  call void %50(ptr noundef %51), !dbg !723
  br label %52, !dbg !724

52:                                               ; preds = %41, %40, %39, %38
  br label %72, !dbg !725

53:                                               ; preds = %27
  %54 = load ptr, ptr %2, align 8, !dbg !726
  %55 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %54, i32 0, i32 0, !dbg !726
  %56 = load ptr, ptr %55, align 8, !dbg !726
  %57 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %56, i32 0, i32 5, !dbg !726
  store i32 6, ptr %57, align 8, !dbg !726
  %58 = load ptr, ptr %6, align 8, !dbg !726
  %59 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %58, i32 0, i32 9, !dbg !726
  %60 = load i32, ptr %59, align 4, !dbg !726
  %61 = load ptr, ptr %2, align 8, !dbg !726
  %62 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %61, i32 0, i32 0, !dbg !726
  %63 = load ptr, ptr %62, align 8, !dbg !726
  %64 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %63, i32 0, i32 6, !dbg !726
  %65 = getelementptr inbounds [8 x i32], ptr %64, i64 0, i64 0, !dbg !726
  store i32 %60, ptr %65, align 4, !dbg !726
  %66 = load ptr, ptr %2, align 8, !dbg !726
  %67 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %66, i32 0, i32 0, !dbg !726
  %68 = load ptr, ptr %67, align 8, !dbg !726
  %69 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %68, i32 0, i32 0, !dbg !726
  %70 = load ptr, ptr %69, align 8, !dbg !726
  %71 = load ptr, ptr %2, align 8, !dbg !726
  call void %70(ptr noundef %71), !dbg !726
  br label %72, !dbg !727

72:                                               ; preds = %53, %52, %33, %32, %31
  %73 = load ptr, ptr %8, align 8, !dbg !728
  %74 = load ptr, ptr %3, align 8, !dbg !729
  %75 = getelementptr inbounds nuw %struct.my_idct_controller, ptr %74, i32 0, i32 0, !dbg !730
  %76 = getelementptr inbounds nuw %struct.jpeg_inverse_dct, ptr %75, i32 0, i32 1, !dbg !731
  %77 = load i32, ptr %4, align 4, !dbg !732
  %78 = sext i32 %77 to i64, !dbg !729
  %79 = getelementptr inbounds [10 x ptr], ptr %76, i64 0, i64 %78, !dbg !729
  store ptr %73, ptr %79, align 8, !dbg !733
  %80 = load ptr, ptr %6, align 8, !dbg !734
  %81 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %80, i32 0, i32 12, !dbg !736
  %82 = load i32, ptr %81, align 8, !dbg !736
  %83 = icmp ne i32 %82, 0, !dbg !734
  br i1 %83, label %84, label %93, !dbg !737

84:                                               ; preds = %72
  %85 = load ptr, ptr %3, align 8, !dbg !738
  %86 = getelementptr inbounds nuw %struct.my_idct_controller, ptr %85, i32 0, i32 1, !dbg !739
  %87 = load i32, ptr %4, align 4, !dbg !740
  %88 = sext i32 %87 to i64, !dbg !738
  %89 = getelementptr inbounds [10 x i32], ptr %86, i64 0, i64 %88, !dbg !738
  %90 = load i32, ptr %89, align 4, !dbg !738
  %91 = load i32, ptr %7, align 4, !dbg !741
  %92 = icmp eq i32 %90, %91, !dbg !742
  br i1 %92, label %93, label %94, !dbg !737

93:                                               ; preds = %84, %72
  br label %220, !dbg !743

94:                                               ; preds = %84
  %95 = load ptr, ptr %6, align 8, !dbg !744
  %96 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %95, i32 0, i32 19, !dbg !745
  %97 = load ptr, ptr %96, align 8, !dbg !745
  store ptr %97, ptr %9, align 8, !dbg !746
  %98 = load ptr, ptr %9, align 8, !dbg !747
  %99 = icmp eq ptr %98, null, !dbg !749
  br i1 %99, label %100, label %101, !dbg !749

100:                                              ; preds = %94
  br label %220, !dbg !750

101:                                              ; preds = %94
  %102 = load i32, ptr %7, align 4, !dbg !751
  %103 = load ptr, ptr %3, align 8, !dbg !752
  %104 = getelementptr inbounds nuw %struct.my_idct_controller, ptr %103, i32 0, i32 1, !dbg !753
  %105 = load i32, ptr %4, align 4, !dbg !754
  %106 = sext i32 %105 to i64, !dbg !752
  %107 = getelementptr inbounds [10 x i32], ptr %104, i64 0, i64 %106, !dbg !752
  store i32 %102, ptr %107, align 4, !dbg !755
  %108 = load i32, ptr %7, align 4, !dbg !756
  switch i32 %108, label %208 [
    i32 0, label %109
    i32 1, label %132
    i32 2, label %164
  ], !dbg !757

109:                                              ; preds = %101
    #dbg_declare(ptr %10, !758, !DIExpression(), !761)
  %110 = load ptr, ptr %6, align 8, !dbg !762
  %111 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %110, i32 0, i32 20, !dbg !763
  %112 = load ptr, ptr %111, align 8, !dbg !763
  store ptr %112, ptr %10, align 8, !dbg !761
  store i32 0, ptr %5, align 4, !dbg !764
  br label %113, !dbg !766

113:                                              ; preds = %128, %109
  %114 = load i32, ptr %5, align 4, !dbg !767
  %115 = icmp slt i32 %114, 64, !dbg !769
  br i1 %115, label %116, label %131, !dbg !770

116:                                              ; preds = %113
  %117 = load ptr, ptr %9, align 8, !dbg !771
  %118 = getelementptr inbounds nuw %struct.JQUANT_TBL, ptr %117, i32 0, i32 0, !dbg !773
  %119 = load i32, ptr %5, align 4, !dbg !774
  %120 = sext i32 %119 to i64, !dbg !771
  %121 = getelementptr inbounds [64 x i16], ptr %118, i64 0, i64 %120, !dbg !771
  %122 = load i16, ptr %121, align 2, !dbg !771
  %123 = zext i16 %122 to i32, !dbg !775
  %124 = load ptr, ptr %10, align 8, !dbg !776
  %125 = load i32, ptr %5, align 4, !dbg !777
  %126 = sext i32 %125 to i64, !dbg !776
  %127 = getelementptr inbounds i32, ptr %124, i64 %126, !dbg !776
  store i32 %123, ptr %127, align 4, !dbg !778
  br label %128, !dbg !779

128:                                              ; preds = %116
  %129 = load i32, ptr %5, align 4, !dbg !780
  %130 = add nsw i32 %129, 1, !dbg !780
  store i32 %130, ptr %5, align 4, !dbg !780
  br label %113, !dbg !781, !llvm.loop !782

131:                                              ; preds = %113
  br label %219, !dbg !784

132:                                              ; preds = %101
    #dbg_declare(ptr %11, !785, !DIExpression(), !787)
  %133 = load ptr, ptr %6, align 8, !dbg !788
  %134 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %133, i32 0, i32 20, !dbg !789
  %135 = load ptr, ptr %134, align 8, !dbg !789
  store ptr %135, ptr %11, align 8, !dbg !787
  store i32 0, ptr %5, align 4, !dbg !790
  br label %136, !dbg !792

136:                                              ; preds = %160, %132
  %137 = load i32, ptr %5, align 4, !dbg !793
  %138 = icmp slt i32 %137, 64, !dbg !795
  br i1 %138, label %139, label %163, !dbg !796

139:                                              ; preds = %136
  %140 = load ptr, ptr %9, align 8, !dbg !797
  %141 = getelementptr inbounds nuw %struct.JQUANT_TBL, ptr %140, i32 0, i32 0, !dbg !797
  %142 = load i32, ptr %5, align 4, !dbg !797
  %143 = sext i32 %142 to i64, !dbg !797
  %144 = getelementptr inbounds [64 x i16], ptr %141, i64 0, i64 %143, !dbg !797
  %145 = load i16, ptr %144, align 2, !dbg !797
  %146 = zext i16 %145 to i64, !dbg !797
  %147 = load i32, ptr %5, align 4, !dbg !797
  %148 = sext i32 %147 to i64, !dbg !797
  %149 = getelementptr inbounds [64 x i16], ptr @start_pass.aanscales, i64 0, i64 %148, !dbg !797
  %150 = load i16, ptr %149, align 2, !dbg !797
  %151 = sext i16 %150 to i64, !dbg !797
  %152 = mul nsw i64 %146, %151, !dbg !797
  %153 = add nsw i64 %152, 2048, !dbg !797
  %154 = ashr i64 %153, 12, !dbg !797
  %155 = trunc i64 %154 to i32, !dbg !799
  %156 = load ptr, ptr %11, align 8, !dbg !800
  %157 = load i32, ptr %5, align 4, !dbg !801
  %158 = sext i32 %157 to i64, !dbg !800
  %159 = getelementptr inbounds i32, ptr %156, i64 %158, !dbg !800
  store i32 %155, ptr %159, align 4, !dbg !802
  br label %160, !dbg !803

160:                                              ; preds = %139
  %161 = load i32, ptr %5, align 4, !dbg !804
  %162 = add nsw i32 %161, 1, !dbg !804
  store i32 %162, ptr %5, align 4, !dbg !804
  br label %136, !dbg !805, !llvm.loop !806

163:                                              ; preds = %136
  br label %219, !dbg !808

164:                                              ; preds = %101
    #dbg_declare(ptr %12, !809, !DIExpression(), !811)
  %165 = load ptr, ptr %6, align 8, !dbg !812
  %166 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %165, i32 0, i32 20, !dbg !813
  %167 = load ptr, ptr %166, align 8, !dbg !813
  store ptr %167, ptr %12, align 8, !dbg !811
    #dbg_declare(ptr %13, !814, !DIExpression(), !815)
    #dbg_declare(ptr %14, !816, !DIExpression(), !817)
  store i32 0, ptr %5, align 4, !dbg !818
  store i32 0, ptr %13, align 4, !dbg !819
  br label %168, !dbg !821

168:                                              ; preds = %204, %164
  %169 = load i32, ptr %13, align 4, !dbg !822
  %170 = icmp slt i32 %169, 8, !dbg !824
  br i1 %170, label %171, label %207, !dbg !825

171:                                              ; preds = %168
  store i32 0, ptr %14, align 4, !dbg !826
  br label %172, !dbg !829

172:                                              ; preds = %200, %171
  %173 = load i32, ptr %14, align 4, !dbg !830
  %174 = icmp slt i32 %173, 8, !dbg !832
  br i1 %174, label %175, label %203, !dbg !833

175:                                              ; preds = %172
  %176 = load ptr, ptr %9, align 8, !dbg !834
  %177 = getelementptr inbounds nuw %struct.JQUANT_TBL, ptr %176, i32 0, i32 0, !dbg !836
  %178 = load i32, ptr %5, align 4, !dbg !837
  %179 = sext i32 %178 to i64, !dbg !834
  %180 = getelementptr inbounds [64 x i16], ptr %177, i64 0, i64 %179, !dbg !834
  %181 = load i16, ptr %180, align 2, !dbg !834
  %182 = uitofp i16 %181 to double, !dbg !838
  %183 = load i32, ptr %13, align 4, !dbg !839
  %184 = sext i32 %183 to i64, !dbg !840
  %185 = getelementptr inbounds [8 x double], ptr @start_pass.aanscalefactor, i64 0, i64 %184, !dbg !840
  %186 = load double, ptr %185, align 8, !dbg !840
  %187 = fmul double %182, %186, !dbg !841
  %188 = load i32, ptr %14, align 4, !dbg !842
  %189 = sext i32 %188 to i64, !dbg !843
  %190 = getelementptr inbounds [8 x double], ptr @start_pass.aanscalefactor, i64 0, i64 %189, !dbg !843
  %191 = load double, ptr %190, align 8, !dbg !843
  %192 = fmul double %187, %191, !dbg !844
  %193 = fptrunc double %192 to float, !dbg !845
  %194 = load ptr, ptr %12, align 8, !dbg !846
  %195 = load i32, ptr %5, align 4, !dbg !847
  %196 = sext i32 %195 to i64, !dbg !846
  %197 = getelementptr inbounds float, ptr %194, i64 %196, !dbg !846
  store float %193, ptr %197, align 4, !dbg !848
  %198 = load i32, ptr %5, align 4, !dbg !849
  %199 = add nsw i32 %198, 1, !dbg !849
  store i32 %199, ptr %5, align 4, !dbg !849
  br label %200, !dbg !850

200:                                              ; preds = %175
  %201 = load i32, ptr %14, align 4, !dbg !851
  %202 = add nsw i32 %201, 1, !dbg !851
  store i32 %202, ptr %14, align 4, !dbg !851
  br label %172, !dbg !852, !llvm.loop !853

203:                                              ; preds = %172
  br label %204, !dbg !855

204:                                              ; preds = %203
  %205 = load i32, ptr %13, align 4, !dbg !856
  %206 = add nsw i32 %205, 1, !dbg !856
  store i32 %206, ptr %13, align 4, !dbg !856
  br label %168, !dbg !857, !llvm.loop !858

207:                                              ; preds = %168
  br label %219, !dbg !860

208:                                              ; preds = %101
  %209 = load ptr, ptr %2, align 8, !dbg !861
  %210 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %209, i32 0, i32 0, !dbg !861
  %211 = load ptr, ptr %210, align 8, !dbg !861
  %212 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %211, i32 0, i32 5, !dbg !861
  store i32 47, ptr %212, align 8, !dbg !861
  %213 = load ptr, ptr %2, align 8, !dbg !861
  %214 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %213, i32 0, i32 0, !dbg !861
  %215 = load ptr, ptr %214, align 8, !dbg !861
  %216 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %215, i32 0, i32 0, !dbg !861
  %217 = load ptr, ptr %216, align 8, !dbg !861
  %218 = load ptr, ptr %2, align 8, !dbg !861
  call void %217(ptr noundef %218), !dbg !861
  br label %219, !dbg !862

219:                                              ; preds = %208, %207, %163, %131
  br label %220, !dbg !863

220:                                              ; preds = %219, %100, %93
  %221 = load i32, ptr %4, align 4, !dbg !864
  %222 = add nsw i32 %221, 1, !dbg !864
  store i32 %222, ptr %4, align 4, !dbg !864
  %223 = load ptr, ptr %6, align 8, !dbg !865
  %224 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %223, i32 1, !dbg !865
  store ptr %224, ptr %6, align 8, !dbg !865
  br label %21, !dbg !866, !llvm.loop !867

225:                                              ; preds = %21
  ret void, !dbg !869
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

declare void @jpeg_idct_1x1(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare void @jpeg_idct_2x2(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare void @jpeg_idct_4x4(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare void @jpeg_idct_islow(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare void @jpeg_idct_ifast(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare void @jpeg_idct_float(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!449}
!llvm.module.flags = !{!601, !602, !603, !604, !605, !606, !607}
!llvm.ident = !{!608}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "aanscales", scope: !2, file: !3, line: 185, type: !598, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "start_pass", scope: !3, file: !3, line: 89, type: !4, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !449, retainedNodes: !597)
!3 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jddctmgr.c", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "1caa1e0a42975992180b315855419dd6")
!4 = !DISubroutineType(types: !5)
!5 = !{null, !6}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "j_decompress_ptr", file: !7, line: 250, baseType: !8)
!7 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jpeglib.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "2a2b23235fe587b10147d741e3371e67")
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_decompress_struct", file: !7, line: 394, size: 4928, elements: !10)
!10 = !{!11, !139, !140, !141, !142, !143, !167, !168, !169, !170, !180, !181, !182, !183, !185, !186, !187, !194, !195, !196, !197, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !224, !237, !253, !254, !255, !281, !282, !283, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !305, !306, !307, !308, !312, !313, !314, !315, !316, !317, !325, !345, !363, !372, !382, !397, !406, !419, !426, !435}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !9, file: !7, line: 395, baseType: !12, size: 64)
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
!139 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !9, file: !7, line: 395, baseType: !25, size: 64, offset: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "progress", scope: !9, file: !7, line: 395, baseType: !97, size: 64, offset: 128)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "is_decompressor", scope: !9, file: !7, line: 395, baseType: !72, size: 32, offset: 192)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "global_state", scope: !9, file: !7, line: 395, baseType: !33, size: 32, offset: 224)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !9, file: !7, line: 398, baseType: !144, size: 64, offset: 256)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_source_mgr", file: !7, line: 700, size: 448, elements: !146)
!146 = !{!147, !151, !152, !154, !158, !162, !166}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "next_input_byte", scope: !145, file: !7, line: 701, baseType: !148, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !150)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "JOCTET", file: !47, line: 110, baseType: !48)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_in_buffer", scope: !145, file: !7, line: 702, baseType: !34, size: 64, offset: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "init_source", scope: !145, file: !7, line: 704, baseType: !153, size: 64, offset: 128)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "fill_input_buffer", scope: !145, file: !7, line: 705, baseType: !155, size: 64, offset: 192)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = !DISubroutineType(types: !157)
!157 = !{!72, !6}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "skip_input_data", scope: !145, file: !7, line: 706, baseType: !159, size: 64, offset: 256)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = !DISubroutineType(types: !161)
!161 = !{null, !6, !95}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "resync_to_restart", scope: !145, file: !7, line: 707, baseType: !163, size: 64, offset: 320)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = !DISubroutineType(types: !165)
!165 = !{!72, !6, !33}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "term_source", scope: !145, file: !7, line: 708, baseType: !153, size: 64, offset: 384)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "image_width", scope: !9, file: !7, line: 403, baseType: !49, size: 32, offset: 320)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "image_height", scope: !9, file: !7, line: 404, baseType: !49, size: 32, offset: 352)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "num_components", scope: !9, file: !7, line: 405, baseType: !33, size: 32, offset: 384)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "jpeg_color_space", scope: !9, file: !7, line: 406, baseType: !171, size: 32, offset: 416)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_COLOR_SPACE", file: !7, line: 201, baseType: !172)
!172 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !7, line: 194, baseType: !50, size: 32, elements: !173)
!173 = !{!174, !175, !176, !177, !178, !179}
!174 = !DIEnumerator(name: "JCS_UNKNOWN", value: 0)
!175 = !DIEnumerator(name: "JCS_GRAYSCALE", value: 1)
!176 = !DIEnumerator(name: "JCS_RGB", value: 2)
!177 = !DIEnumerator(name: "JCS_YCbCr", value: 3)
!178 = !DIEnumerator(name: "JCS_CMYK", value: 4)
!179 = !DIEnumerator(name: "JCS_YCCK", value: 5)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "out_color_space", scope: !9, file: !7, line: 413, baseType: !171, size: 32, offset: 448)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "scale_num", scope: !9, file: !7, line: 415, baseType: !50, size: 32, offset: 480)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "scale_denom", scope: !9, file: !7, line: 415, baseType: !50, size: 32, offset: 512)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "output_gamma", scope: !9, file: !7, line: 417, baseType: !184, size: 64, offset: 576)
!184 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "buffered_image", scope: !9, file: !7, line: 419, baseType: !72, size: 32, offset: 640)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "raw_data_out", scope: !9, file: !7, line: 420, baseType: !72, size: 32, offset: 672)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "dct_method", scope: !9, file: !7, line: 422, baseType: !188, size: 32, offset: 704)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_DCT_METHOD", file: !7, line: 209, baseType: !189)
!189 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !7, line: 205, baseType: !50, size: 32, elements: !190)
!190 = !{!191, !192, !193}
!191 = !DIEnumerator(name: "JDCT_ISLOW", value: 0)
!192 = !DIEnumerator(name: "JDCT_IFAST", value: 1)
!193 = !DIEnumerator(name: "JDCT_FLOAT", value: 2)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "do_fancy_upsampling", scope: !9, file: !7, line: 423, baseType: !72, size: 32, offset: 736)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "do_block_smoothing", scope: !9, file: !7, line: 424, baseType: !72, size: 32, offset: 768)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "quantize_colors", scope: !9, file: !7, line: 426, baseType: !72, size: 32, offset: 800)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "dither_mode", scope: !9, file: !7, line: 428, baseType: !198, size: 32, offset: 832)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_DITHER_MODE", file: !7, line: 224, baseType: !199)
!199 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !7, line: 220, baseType: !50, size: 32, elements: !200)
!200 = !{!201, !202, !203}
!201 = !DIEnumerator(name: "JDITHER_NONE", value: 0)
!202 = !DIEnumerator(name: "JDITHER_ORDERED", value: 1)
!203 = !DIEnumerator(name: "JDITHER_FS", value: 2)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "two_pass_quantize", scope: !9, file: !7, line: 429, baseType: !72, size: 32, offset: 864)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "desired_number_of_colors", scope: !9, file: !7, line: 430, baseType: !33, size: 32, offset: 896)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "enable_1pass_quant", scope: !9, file: !7, line: 432, baseType: !72, size: 32, offset: 928)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "enable_external_quant", scope: !9, file: !7, line: 433, baseType: !72, size: 32, offset: 960)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "enable_2pass_quant", scope: !9, file: !7, line: 434, baseType: !72, size: 32, offset: 992)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "output_width", scope: !9, file: !7, line: 442, baseType: !49, size: 32, offset: 1024)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "output_height", scope: !9, file: !7, line: 443, baseType: !49, size: 32, offset: 1056)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "out_color_components", scope: !9, file: !7, line: 444, baseType: !33, size: 32, offset: 1088)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "output_components", scope: !9, file: !7, line: 445, baseType: !33, size: 32, offset: 1120)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "rec_outbuf_height", scope: !9, file: !7, line: 449, baseType: !33, size: 32, offset: 1152)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "actual_number_of_colors", scope: !9, file: !7, line: 461, baseType: !33, size: 32, offset: 1184)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "colormap", scope: !9, file: !7, line: 462, baseType: !42, size: 64, offset: 1216)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "output_scanline", scope: !9, file: !7, line: 472, baseType: !49, size: 32, offset: 1280)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "input_scan_number", scope: !9, file: !7, line: 477, baseType: !33, size: 32, offset: 1312)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "input_iMCU_row", scope: !9, file: !7, line: 478, baseType: !49, size: 32, offset: 1344)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "output_scan_number", scope: !9, file: !7, line: 484, baseType: !33, size: 32, offset: 1376)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "output_iMCU_row", scope: !9, file: !7, line: 485, baseType: !49, size: 32, offset: 1408)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "coef_bits", scope: !9, file: !7, line: 494, baseType: !222, size: 64, offset: 1472)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 2048, elements: !63)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "quant_tbl_ptrs", scope: !9, file: !7, line: 505, baseType: !225, size: 256, offset: 1536)
!225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 256, elements: !235)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "JQUANT_TBL", file: !7, line: 95, baseType: !228)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 83, size: 1056, elements: !229)
!229 = !{!230, !234}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "quantval", scope: !228, file: !7, line: 88, baseType: !231, size: 1024)
!231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !232, size: 1024, elements: !63)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT16", file: !47, line: 147, baseType: !233)
!233 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "sent_table", scope: !228, file: !7, line: 94, baseType: !72, size: 32, offset: 1024)
!235 = !{!236}
!236 = !DISubrange(count: 4)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "dc_huff_tbl_ptrs", scope: !9, file: !7, line: 508, baseType: !238, size: 256, offset: 1792)
!238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !239, size: 256, elements: !235)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "JHUFF_TBL", file: !7, line: 111, baseType: !241)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 100, size: 2240, elements: !242)
!242 = !{!243, !248, !252}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !241, file: !7, line: 102, baseType: !244, size: 136)
!244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !245, size: 136, elements: !246)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT8", file: !47, line: 135, baseType: !48)
!246 = !{!247}
!247 = !DISubrange(count: 17)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "huffval", scope: !241, file: !7, line: 104, baseType: !249, size: 2048, offset: 136)
!249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !245, size: 2048, elements: !250)
!250 = !{!251}
!251 = !DISubrange(count: 256)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "sent_table", scope: !241, file: !7, line: 110, baseType: !72, size: 32, offset: 2208)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "ac_huff_tbl_ptrs", scope: !9, file: !7, line: 509, baseType: !238, size: 256, offset: 2048)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "data_precision", scope: !9, file: !7, line: 516, baseType: !33, size: 32, offset: 2304)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "comp_info", scope: !9, file: !7, line: 518, baseType: !256, size: 64, offset: 2368)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "jpeg_component_info", file: !7, line: 179, baseType: !258)
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 116, size: 768, elements: !259)
!259 = !{!260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "component_id", scope: !258, file: !7, line: 120, baseType: !33, size: 32)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "component_index", scope: !258, file: !7, line: 121, baseType: !33, size: 32, offset: 32)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "h_samp_factor", scope: !258, file: !7, line: 122, baseType: !33, size: 32, offset: 64)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "v_samp_factor", scope: !258, file: !7, line: 123, baseType: !33, size: 32, offset: 96)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "quant_tbl_no", scope: !258, file: !7, line: 124, baseType: !33, size: 32, offset: 128)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "dc_tbl_no", scope: !258, file: !7, line: 129, baseType: !33, size: 32, offset: 160)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tbl_no", scope: !258, file: !7, line: 130, baseType: !33, size: 32, offset: 192)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "width_in_blocks", scope: !258, file: !7, line: 139, baseType: !49, size: 32, offset: 224)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "height_in_blocks", scope: !258, file: !7, line: 140, baseType: !49, size: 32, offset: 256)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "DCT_scaled_size", scope: !258, file: !7, line: 147, baseType: !33, size: 32, offset: 288)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "downsampled_width", scope: !258, file: !7, line: 154, baseType: !49, size: 32, offset: 320)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "downsampled_height", scope: !258, file: !7, line: 155, baseType: !49, size: 32, offset: 352)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "component_needed", scope: !258, file: !7, line: 160, baseType: !72, size: 32, offset: 384)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_width", scope: !258, file: !7, line: 164, baseType: !33, size: 32, offset: 416)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_height", scope: !258, file: !7, line: 165, baseType: !33, size: 32, offset: 448)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_blocks", scope: !258, file: !7, line: 166, baseType: !33, size: 32, offset: 480)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_sample_width", scope: !258, file: !7, line: 167, baseType: !33, size: 32, offset: 512)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "last_col_width", scope: !258, file: !7, line: 168, baseType: !33, size: 32, offset: 544)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "last_row_height", scope: !258, file: !7, line: 169, baseType: !33, size: 32, offset: 576)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "quant_table", scope: !258, file: !7, line: 175, baseType: !226, size: 64, offset: 640)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "dct_table", scope: !258, file: !7, line: 178, baseType: !32, size: 64, offset: 704)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "progressive_mode", scope: !9, file: !7, line: 521, baseType: !72, size: 32, offset: 2432)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "arith_code", scope: !9, file: !7, line: 522, baseType: !72, size: 32, offset: 2464)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "arith_dc_L", scope: !9, file: !7, line: 524, baseType: !284, size: 128, offset: 2496)
!284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !245, size: 128, elements: !285)
!285 = !{!286}
!286 = !DISubrange(count: 16)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "arith_dc_U", scope: !9, file: !7, line: 525, baseType: !284, size: 128, offset: 2624)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "arith_ac_K", scope: !9, file: !7, line: 526, baseType: !284, size: 128, offset: 2752)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "restart_interval", scope: !9, file: !7, line: 528, baseType: !50, size: 32, offset: 2880)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "saw_JFIF_marker", scope: !9, file: !7, line: 533, baseType: !72, size: 32, offset: 2912)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "density_unit", scope: !9, file: !7, line: 535, baseType: !245, size: 8, offset: 2944)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "X_density", scope: !9, file: !7, line: 536, baseType: !232, size: 16, offset: 2960)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "Y_density", scope: !9, file: !7, line: 537, baseType: !232, size: 16, offset: 2976)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "saw_Adobe_marker", scope: !9, file: !7, line: 538, baseType: !72, size: 32, offset: 3008)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "Adobe_transform", scope: !9, file: !7, line: 539, baseType: !245, size: 8, offset: 3040)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "CCIR601_sampling", scope: !9, file: !7, line: 541, baseType: !72, size: 32, offset: 3072)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "max_h_samp_factor", scope: !9, file: !7, line: 550, baseType: !33, size: 32, offset: 3104)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "max_v_samp_factor", scope: !9, file: !7, line: 551, baseType: !33, size: 32, offset: 3136)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "min_DCT_scaled_size", scope: !9, file: !7, line: 553, baseType: !33, size: 32, offset: 3168)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "total_iMCU_rows", scope: !9, file: !7, line: 555, baseType: !49, size: 32, offset: 3200)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "sample_range_limit", scope: !9, file: !7, line: 564, baseType: !45, size: 64, offset: 3264)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "comps_in_scan", scope: !9, file: !7, line: 571, baseType: !33, size: 32, offset: 3328)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "cur_comp_info", scope: !9, file: !7, line: 572, baseType: !304, size: 256, offset: 3392)
!304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !256, size: 256, elements: !235)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "MCUs_per_row", scope: !9, file: !7, line: 575, baseType: !49, size: 32, offset: 3648)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_rows_in_scan", scope: !9, file: !7, line: 576, baseType: !49, size: 32, offset: 3680)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "blocks_in_MCU", scope: !9, file: !7, line: 578, baseType: !33, size: 32, offset: 3712)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_membership", scope: !9, file: !7, line: 579, baseType: !309, size: 320, offset: 3744)
!309 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 320, elements: !310)
!310 = !{!311}
!311 = !DISubrange(count: 10)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "Ss", scope: !9, file: !7, line: 583, baseType: !33, size: 32, offset: 4064)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "Se", scope: !9, file: !7, line: 583, baseType: !33, size: 32, offset: 4096)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "Ah", scope: !9, file: !7, line: 583, baseType: !33, size: 32, offset: 4128)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "Al", scope: !9, file: !7, line: 583, baseType: !33, size: 32, offset: 4160)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "unread_marker", scope: !9, file: !7, line: 589, baseType: !33, size: 32, offset: 4192)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !9, file: !7, line: 594, baseType: !318, size: 64, offset: 4224)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_decomp_master", file: !320, line: 136, size: 192, elements: !321)
!320 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jpegint.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "87e9869e13f29b8e74a9dee50528c6c5")
!321 = !{!322, !323, !324}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_for_output_pass", scope: !319, file: !320, line: 137, baseType: !153, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "finish_output_pass", scope: !319, file: !320, line: 138, baseType: !153, size: 64, offset: 64)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "is_dummy_pass", scope: !319, file: !320, line: 141, baseType: !72, size: 32, offset: 128)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "main", scope: !9, file: !7, line: 595, baseType: !326, size: 64, offset: 4288)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_d_main_controller", file: !320, line: 157, size: 128, elements: !328)
!328 = !{!329, !340}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !327, file: !320, line: 158, baseType: !330, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = !DISubroutineType(types: !332)
!332 = !{null, !6, !333}
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_BUF_MODE", file: !320, line: 22, baseType: !334)
!334 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !320, line: 16, baseType: !50, size: 32, elements: !335)
!335 = !{!336, !337, !338, !339}
!336 = !DIEnumerator(name: "JBUF_PASS_THRU", value: 0)
!337 = !DIEnumerator(name: "JBUF_SAVE_SOURCE", value: 1)
!338 = !DIEnumerator(name: "JBUF_CRANK_DEST", value: 2)
!339 = !DIEnumerator(name: "JBUF_SAVE_AND_PASS", value: 3)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "process_data", scope: !327, file: !320, line: 159, baseType: !341, size: 64, offset: 64)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = !DISubroutineType(types: !343)
!343 = !{null, !6, !42, !344, !49}
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "coef", scope: !9, file: !7, line: 596, baseType: !346, size: 64, offset: 4352)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_d_coef_controller", file: !320, line: 165, size: 320, elements: !348)
!348 = !{!349, !350, !354, !355, !361}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "start_input_pass", scope: !347, file: !320, line: 166, baseType: !153, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "consume_data", scope: !347, file: !320, line: 167, baseType: !351, size: 64, offset: 64)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = !DISubroutineType(types: !353)
!353 = !{!33, !6}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "start_output_pass", scope: !347, file: !320, line: 168, baseType: !153, size: 64, offset: 128)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "decompress_data", scope: !347, file: !320, line: 169, baseType: !356, size: 64, offset: 192)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = !DISubroutineType(types: !358)
!358 = !{!33, !6, !359}
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPIMAGE", file: !7, line: 68, baseType: !360)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "coef_arrays", scope: !347, file: !320, line: 172, baseType: !362, size: 64, offset: 256)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "post", scope: !9, file: !7, line: 597, baseType: !364, size: 64, offset: 4416)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_d_post_controller", file: !320, line: 176, size: 128, elements: !366)
!366 = !{!367, !368}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !365, file: !320, line: 177, baseType: !330, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "post_process_data", scope: !365, file: !320, line: 178, baseType: !369, size: 64, offset: 64)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = !DISubroutineType(types: !371)
!371 = !{null, !6, !359, !344, !49, !42, !344, !49}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "inputctl", scope: !9, file: !7, line: 598, baseType: !373, size: 64, offset: 4480)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_input_controller", file: !320, line: 145, size: 320, elements: !375)
!375 = !{!376, !377, !378, !379, !380, !381}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "consume_input", scope: !374, file: !320, line: 146, baseType: !351, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "reset_input_controller", scope: !374, file: !320, line: 147, baseType: !153, size: 64, offset: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "start_input_pass", scope: !374, file: !320, line: 148, baseType: !153, size: 64, offset: 128)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "finish_input_pass", scope: !374, file: !320, line: 149, baseType: !153, size: 64, offset: 192)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "has_multiple_scans", scope: !374, file: !320, line: 152, baseType: !72, size: 32, offset: 256)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "eoi_reached", scope: !374, file: !320, line: 153, baseType: !72, size: 32, offset: 288)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "marker", scope: !9, file: !7, line: 599, baseType: !383, size: 64, offset: 4544)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_marker_reader", file: !320, line: 188, size: 1408, elements: !385)
!385 = !{!386, !387, !388, !390, !391, !393, !394, !395, !396}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "reset_marker_reader", scope: !384, file: !320, line: 189, baseType: !153, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "read_markers", scope: !384, file: !320, line: 194, baseType: !351, size: 64, offset: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "read_restart_marker", scope: !384, file: !320, line: 196, baseType: !389, size: 64, offset: 128)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "jpeg_marker_parser_method", file: !7, line: 781, baseType: !155)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "process_COM", scope: !384, file: !320, line: 198, baseType: !389, size: 64, offset: 192)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "process_APPn", scope: !384, file: !320, line: 199, baseType: !392, size: 1024, offset: 256)
!392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !389, size: 1024, elements: !285)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "saw_SOI", scope: !384, file: !320, line: 204, baseType: !72, size: 32, offset: 1280)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "saw_SOF", scope: !384, file: !320, line: 205, baseType: !72, size: 32, offset: 1312)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "next_restart_num", scope: !384, file: !320, line: 206, baseType: !33, size: 32, offset: 1344)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "discarded_bytes", scope: !384, file: !320, line: 207, baseType: !50, size: 32, offset: 1376)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "entropy", scope: !9, file: !7, line: 600, baseType: !398, size: 64, offset: 4608)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_entropy_decoder", file: !320, line: 211, size: 128, elements: !400)
!400 = !{!401, !402}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !399, file: !320, line: 212, baseType: !153, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "decode_mcu", scope: !399, file: !320, line: 213, baseType: !403, size: 64, offset: 64)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = !DISubroutineType(types: !405)
!405 = !{!72, !6, !56}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "idct", scope: !9, file: !7, line: 601, baseType: !407, size: 64, offset: 4672)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_inverse_dct", file: !320, line: 223, size: 704, elements: !409)
!409 = !{!410, !411}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !408, file: !320, line: 224, baseType: !153, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "inverse_DCT", scope: !408, file: !320, line: 226, baseType: !412, size: 640, offset: 64)
!412 = !DICompositeType(tag: DW_TAG_array_type, baseType: !413, size: 640, elements: !310)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "inverse_DCT_method_ptr", file: !320, line: 218, baseType: !414)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!415 = !DISubroutineType(types: !416)
!416 = !{null, !6, !256, !417, !42, !49}
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "JCOEFPTR", file: !7, line: 75, baseType: !418)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "upsample", scope: !9, file: !7, line: 602, baseType: !420, size: 64, offset: 4736)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_upsampler", file: !320, line: 230, size: 192, elements: !422)
!422 = !{!423, !424, !425}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !421, file: !320, line: 231, baseType: !153, size: 64)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "upsample", scope: !421, file: !320, line: 232, baseType: !369, size: 64, offset: 64)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "need_context_rows", scope: !421, file: !320, line: 240, baseType: !72, size: 32, offset: 128)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "cconvert", scope: !9, file: !7, line: 603, baseType: !427, size: 64, offset: 4800)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_color_deconverter", file: !320, line: 244, size: 128, elements: !429)
!429 = !{!430, !431}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !428, file: !320, line: 245, baseType: !153, size: 64)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "color_convert", scope: !428, file: !320, line: 246, baseType: !432, size: 64, offset: 64)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = !DISubroutineType(types: !434)
!434 = !{null, !6, !359, !49, !42, !33}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "cquantize", scope: !9, file: !7, line: 604, baseType: !436, size: 64, offset: 4864)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_color_quantizer", file: !320, line: 252, size: 256, elements: !438)
!438 = !{!439, !443, !447, !448}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !437, file: !320, line: 253, baseType: !440, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = !DISubroutineType(types: !442)
!442 = !{null, !6, !72}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "color_quantize", scope: !437, file: !320, line: 254, baseType: !444, size: 64, offset: 64)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = !DISubroutineType(types: !446)
!446 = !{null, !6, !42, !42, !33}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "finish_pass", scope: !437, file: !320, line: 257, baseType: !153, size: 64, offset: 128)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "new_color_map", scope: !437, file: !320, line: 258, baseType: !153, size: 64, offset: 192)
!449 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !450, retainedTypes: !575, globals: !592, splitDebugInlining: false, nameTableKind: None)
!450 = !{!172, !189, !199, !334, !451}
!451 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !452, line: 33, baseType: !50, size: 32, elements: !453)
!452 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jerror.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "a232f2460ff0049c960896e323d8710b")
!453 = !{!454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574}
!454 = !DIEnumerator(name: "JMSG_NOMESSAGE", value: 0)
!455 = !DIEnumerator(name: "JERR_ARITH_NOTIMPL", value: 1)
!456 = !DIEnumerator(name: "JERR_BAD_ALIGN_TYPE", value: 2)
!457 = !DIEnumerator(name: "JERR_BAD_ALLOC_CHUNK", value: 3)
!458 = !DIEnumerator(name: "JERR_BAD_BUFFER_MODE", value: 4)
!459 = !DIEnumerator(name: "JERR_BAD_COMPONENT_ID", value: 5)
!460 = !DIEnumerator(name: "JERR_BAD_DCTSIZE", value: 6)
!461 = !DIEnumerator(name: "JERR_BAD_IN_COLORSPACE", value: 7)
!462 = !DIEnumerator(name: "JERR_BAD_J_COLORSPACE", value: 8)
!463 = !DIEnumerator(name: "JERR_BAD_LENGTH", value: 9)
!464 = !DIEnumerator(name: "JERR_BAD_LIB_VERSION", value: 10)
!465 = !DIEnumerator(name: "JERR_BAD_MCU_SIZE", value: 11)
!466 = !DIEnumerator(name: "JERR_BAD_POOL_ID", value: 12)
!467 = !DIEnumerator(name: "JERR_BAD_PRECISION", value: 13)
!468 = !DIEnumerator(name: "JERR_BAD_PROGRESSION", value: 14)
!469 = !DIEnumerator(name: "JERR_BAD_PROG_SCRIPT", value: 15)
!470 = !DIEnumerator(name: "JERR_BAD_SAMPLING", value: 16)
!471 = !DIEnumerator(name: "JERR_BAD_SCAN_SCRIPT", value: 17)
!472 = !DIEnumerator(name: "JERR_BAD_STATE", value: 18)
!473 = !DIEnumerator(name: "JERR_BAD_STRUCT_SIZE", value: 19)
!474 = !DIEnumerator(name: "JERR_BAD_VIRTUAL_ACCESS", value: 20)
!475 = !DIEnumerator(name: "JERR_BUFFER_SIZE", value: 21)
!476 = !DIEnumerator(name: "JERR_CANT_SUSPEND", value: 22)
!477 = !DIEnumerator(name: "JERR_CCIR601_NOTIMPL", value: 23)
!478 = !DIEnumerator(name: "JERR_COMPONENT_COUNT", value: 24)
!479 = !DIEnumerator(name: "JERR_CONVERSION_NOTIMPL", value: 25)
!480 = !DIEnumerator(name: "JERR_DAC_INDEX", value: 26)
!481 = !DIEnumerator(name: "JERR_DAC_VALUE", value: 27)
!482 = !DIEnumerator(name: "JERR_DHT_COUNTS", value: 28)
!483 = !DIEnumerator(name: "JERR_DHT_INDEX", value: 29)
!484 = !DIEnumerator(name: "JERR_DQT_INDEX", value: 30)
!485 = !DIEnumerator(name: "JERR_EMPTY_IMAGE", value: 31)
!486 = !DIEnumerator(name: "JERR_EMS_READ", value: 32)
!487 = !DIEnumerator(name: "JERR_EMS_WRITE", value: 33)
!488 = !DIEnumerator(name: "JERR_EOI_EXPECTED", value: 34)
!489 = !DIEnumerator(name: "JERR_FILE_READ", value: 35)
!490 = !DIEnumerator(name: "JERR_FILE_WRITE", value: 36)
!491 = !DIEnumerator(name: "JERR_FRACT_SAMPLE_NOTIMPL", value: 37)
!492 = !DIEnumerator(name: "JERR_HUFF_CLEN_OVERFLOW", value: 38)
!493 = !DIEnumerator(name: "JERR_HUFF_MISSING_CODE", value: 39)
!494 = !DIEnumerator(name: "JERR_IMAGE_TOO_BIG", value: 40)
!495 = !DIEnumerator(name: "JERR_INPUT_EMPTY", value: 41)
!496 = !DIEnumerator(name: "JERR_INPUT_EOF", value: 42)
!497 = !DIEnumerator(name: "JERR_MISMATCHED_QUANT_TABLE", value: 43)
!498 = !DIEnumerator(name: "JERR_MISSING_DATA", value: 44)
!499 = !DIEnumerator(name: "JERR_MODE_CHANGE", value: 45)
!500 = !DIEnumerator(name: "JERR_NOTIMPL", value: 46)
!501 = !DIEnumerator(name: "JERR_NOT_COMPILED", value: 47)
!502 = !DIEnumerator(name: "JERR_NO_BACKING_STORE", value: 48)
!503 = !DIEnumerator(name: "JERR_NO_HUFF_TABLE", value: 49)
!504 = !DIEnumerator(name: "JERR_NO_IMAGE", value: 50)
!505 = !DIEnumerator(name: "JERR_NO_QUANT_TABLE", value: 51)
!506 = !DIEnumerator(name: "JERR_NO_SOI", value: 52)
!507 = !DIEnumerator(name: "JERR_OUT_OF_MEMORY", value: 53)
!508 = !DIEnumerator(name: "JERR_QUANT_COMPONENTS", value: 54)
!509 = !DIEnumerator(name: "JERR_QUANT_FEW_COLORS", value: 55)
!510 = !DIEnumerator(name: "JERR_QUANT_MANY_COLORS", value: 56)
!511 = !DIEnumerator(name: "JERR_SOF_DUPLICATE", value: 57)
!512 = !DIEnumerator(name: "JERR_SOF_NO_SOS", value: 58)
!513 = !DIEnumerator(name: "JERR_SOF_UNSUPPORTED", value: 59)
!514 = !DIEnumerator(name: "JERR_SOI_DUPLICATE", value: 60)
!515 = !DIEnumerator(name: "JERR_SOS_NO_SOF", value: 61)
!516 = !DIEnumerator(name: "JERR_TFILE_CREATE", value: 62)
!517 = !DIEnumerator(name: "JERR_TFILE_READ", value: 63)
!518 = !DIEnumerator(name: "JERR_TFILE_SEEK", value: 64)
!519 = !DIEnumerator(name: "JERR_TFILE_WRITE", value: 65)
!520 = !DIEnumerator(name: "JERR_TOO_LITTLE_DATA", value: 66)
!521 = !DIEnumerator(name: "JERR_UNKNOWN_MARKER", value: 67)
!522 = !DIEnumerator(name: "JERR_VIRTUAL_BUG", value: 68)
!523 = !DIEnumerator(name: "JERR_WIDTH_OVERFLOW", value: 69)
!524 = !DIEnumerator(name: "JERR_XMS_READ", value: 70)
!525 = !DIEnumerator(name: "JERR_XMS_WRITE", value: 71)
!526 = !DIEnumerator(name: "JMSG_COPYRIGHT", value: 72)
!527 = !DIEnumerator(name: "JMSG_VERSION", value: 73)
!528 = !DIEnumerator(name: "JTRC_16BIT_TABLES", value: 74)
!529 = !DIEnumerator(name: "JTRC_ADOBE", value: 75)
!530 = !DIEnumerator(name: "JTRC_APP0", value: 76)
!531 = !DIEnumerator(name: "JTRC_APP14", value: 77)
!532 = !DIEnumerator(name: "JTRC_DAC", value: 78)
!533 = !DIEnumerator(name: "JTRC_DHT", value: 79)
!534 = !DIEnumerator(name: "JTRC_DQT", value: 80)
!535 = !DIEnumerator(name: "JTRC_DRI", value: 81)
!536 = !DIEnumerator(name: "JTRC_EMS_CLOSE", value: 82)
!537 = !DIEnumerator(name: "JTRC_EMS_OPEN", value: 83)
!538 = !DIEnumerator(name: "JTRC_EOI", value: 84)
!539 = !DIEnumerator(name: "JTRC_HUFFBITS", value: 85)
!540 = !DIEnumerator(name: "JTRC_JFIF", value: 86)
!541 = !DIEnumerator(name: "JTRC_JFIF_BADTHUMBNAILSIZE", value: 87)
!542 = !DIEnumerator(name: "JTRC_JFIF_MINOR", value: 88)
!543 = !DIEnumerator(name: "JTRC_JFIF_THUMBNAIL", value: 89)
!544 = !DIEnumerator(name: "JTRC_MISC_MARKER", value: 90)
!545 = !DIEnumerator(name: "JTRC_PARMLESS_MARKER", value: 91)
!546 = !DIEnumerator(name: "JTRC_QUANTVALS", value: 92)
!547 = !DIEnumerator(name: "JTRC_QUANT_3_NCOLORS", value: 93)
!548 = !DIEnumerator(name: "JTRC_QUANT_NCOLORS", value: 94)
!549 = !DIEnumerator(name: "JTRC_QUANT_SELECTED", value: 95)
!550 = !DIEnumerator(name: "JTRC_RECOVERY_ACTION", value: 96)
!551 = !DIEnumerator(name: "JTRC_RST", value: 97)
!552 = !DIEnumerator(name: "JTRC_SMOOTH_NOTIMPL", value: 98)
!553 = !DIEnumerator(name: "JTRC_SOF", value: 99)
!554 = !DIEnumerator(name: "JTRC_SOF_COMPONENT", value: 100)
!555 = !DIEnumerator(name: "JTRC_SOI", value: 101)
!556 = !DIEnumerator(name: "JTRC_SOS", value: 102)
!557 = !DIEnumerator(name: "JTRC_SOS_COMPONENT", value: 103)
!558 = !DIEnumerator(name: "JTRC_SOS_PARAMS", value: 104)
!559 = !DIEnumerator(name: "JTRC_TFILE_CLOSE", value: 105)
!560 = !DIEnumerator(name: "JTRC_TFILE_OPEN", value: 106)
!561 = !DIEnumerator(name: "JTRC_UNKNOWN_IDS", value: 107)
!562 = !DIEnumerator(name: "JTRC_XMS_CLOSE", value: 108)
!563 = !DIEnumerator(name: "JTRC_XMS_OPEN", value: 109)
!564 = !DIEnumerator(name: "JWRN_ADOBE_XFORM", value: 110)
!565 = !DIEnumerator(name: "JWRN_BOGUS_PROGRESSION", value: 111)
!566 = !DIEnumerator(name: "JWRN_EXTRANEOUS_DATA", value: 112)
!567 = !DIEnumerator(name: "JWRN_HIT_MARKER", value: 113)
!568 = !DIEnumerator(name: "JWRN_HUFF_BAD_CODE", value: 114)
!569 = !DIEnumerator(name: "JWRN_JFIF_MAJOR", value: 115)
!570 = !DIEnumerator(name: "JWRN_JPEG_EOF", value: 116)
!571 = !DIEnumerator(name: "JWRN_MUST_RESYNC", value: 117)
!572 = !DIEnumerator(name: "JWRN_NOT_SEQUENTIAL", value: 118)
!573 = !DIEnumerator(name: "JWRN_TOO_MUCH_DATA", value: 119)
!574 = !DIEnumerator(name: "JMSG_LASTMSGCODE", value: 120)
!575 = !{!576, !19, !34, !407, !32, !583, !584, !586, !587, !588, !589, !590, !184}
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "my_idct_ptr", file: !3, line: 54, baseType: !577)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_typedef, name: "my_idct_controller", file: !3, line: 52, baseType: !579)
!579 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 43, size: 1024, elements: !580)
!580 = !{!581, !582}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "pub", scope: !579, file: !3, line: 44, baseType: !408, size: 704)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "cur_method", scope: !579, file: !3, line: 51, baseType: !309, size: 320, offset: 704)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_typedef, name: "ISLOW_MULT_TYPE", file: !585, line: 56, baseType: !33)
!585 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jdct.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "18978d93cfb1aabf5618c3caa5dbcf5a")
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_typedef, name: "IFAST_MULT_TYPE", file: !585, line: 58, baseType: !33)
!588 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT32", file: !47, line: 161, baseType: !95)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_typedef, name: "FLOAT_MULT_TYPE", file: !585, line: 64, baseType: !591)
!591 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!592 = !{!0, !593}
!593 = !DIGlobalVariableExpression(var: !594, expr: !DIExpression())
!594 = distinct !DIGlobalVariable(name: "aanscalefactor", scope: !2, file: !3, line: 217, type: !595, isLocal: true, isDefinition: true)
!595 = !DICompositeType(tag: DW_TAG_array_type, baseType: !596, size: 512, elements: !122)
!596 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !184)
!597 = !{}
!598 = !DICompositeType(tag: DW_TAG_array_type, baseType: !599, size: 1024, elements: !63)
!599 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !600)
!600 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT16", file: !47, line: 155, baseType: !62)
!601 = !{i32 7, !"Dwarf Version", i32 5}
!602 = !{i32 2, !"Debug Info Version", i32 3}
!603 = !{i32 1, !"wchar_size", i32 4}
!604 = !{i32 8, !"PIC Level", i32 2}
!605 = !{i32 7, !"PIE Level", i32 2}
!606 = !{i32 7, !"uwtable", i32 2}
!607 = !{i32 7, !"frame-pointer", i32 2}
!608 = !{!"clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)"}
!609 = distinct !DISubprogram(name: "jinit_inverse_dct", scope: !3, file: !3, line: 247, type: !4, scopeLine: 248, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !449, retainedNodes: !597)
!610 = !DILocalVariable(name: "cinfo", arg: 1, scope: !609, file: !3, line: 247, type: !6)
!611 = !DILocation(line: 247, column: 37, scope: !609)
!612 = !DILocalVariable(name: "idct", scope: !609, file: !3, line: 249, type: !576)
!613 = !DILocation(line: 249, column: 15, scope: !609)
!614 = !DILocalVariable(name: "ci", scope: !609, file: !3, line: 250, type: !33)
!615 = !DILocation(line: 250, column: 7, scope: !609)
!616 = !DILocalVariable(name: "compptr", scope: !609, file: !3, line: 251, type: !256)
!617 = !DILocation(line: 251, column: 24, scope: !609)
!618 = !DILocation(line: 254, column: 7, scope: !609)
!619 = !DILocation(line: 254, column: 14, scope: !609)
!620 = !DILocation(line: 254, column: 19, scope: !609)
!621 = !DILocation(line: 254, column: 48, scope: !609)
!622 = !DILocation(line: 254, column: 5, scope: !609)
!623 = !DILocation(line: 253, column: 8, scope: !609)
!624 = !DILocation(line: 256, column: 45, scope: !609)
!625 = !DILocation(line: 256, column: 3, scope: !609)
!626 = !DILocation(line: 256, column: 10, scope: !609)
!627 = !DILocation(line: 256, column: 15, scope: !609)
!628 = !DILocation(line: 257, column: 3, scope: !609)
!629 = !DILocation(line: 257, column: 9, scope: !609)
!630 = !DILocation(line: 257, column: 13, scope: !609)
!631 = !DILocation(line: 257, column: 24, scope: !609)
!632 = !DILocation(line: 259, column: 11, scope: !633)
!633 = distinct !DILexicalBlock(scope: !609, file: !3, line: 259, column: 3)
!634 = !DILocation(line: 259, column: 26, scope: !633)
!635 = !DILocation(line: 259, column: 33, scope: !633)
!636 = !DILocation(line: 259, column: 24, scope: !633)
!637 = !DILocation(line: 259, column: 8, scope: !633)
!638 = !DILocation(line: 259, column: 44, scope: !639)
!639 = distinct !DILexicalBlock(scope: !633, file: !3, line: 259, column: 3)
!640 = !DILocation(line: 259, column: 49, scope: !639)
!641 = !DILocation(line: 259, column: 56, scope: !639)
!642 = !DILocation(line: 259, column: 47, scope: !639)
!643 = !DILocation(line: 259, column: 3, scope: !633)
!644 = !DILocation(line: 263, column: 9, scope: !645)
!645 = distinct !DILexicalBlock(scope: !639, file: !3, line: 260, column: 25)
!646 = !DILocation(line: 263, column: 16, scope: !645)
!647 = !DILocation(line: 263, column: 21, scope: !645)
!648 = !DILocation(line: 263, column: 50, scope: !645)
!649 = !DILocation(line: 263, column: 7, scope: !645)
!650 = !DILocation(line: 262, column: 5, scope: !645)
!651 = !DILocation(line: 262, column: 14, scope: !645)
!652 = !DILocation(line: 262, column: 24, scope: !645)
!653 = !DILocation(line: 265, column: 5, scope: !645)
!654 = !DILocation(line: 267, column: 5, scope: !645)
!655 = !DILocation(line: 267, column: 11, scope: !645)
!656 = !DILocation(line: 267, column: 22, scope: !645)
!657 = !DILocation(line: 267, column: 26, scope: !645)
!658 = !DILocation(line: 268, column: 3, scope: !645)
!659 = !DILocation(line: 260, column: 10, scope: !639)
!660 = !DILocation(line: 260, column: 21, scope: !639)
!661 = !DILocation(line: 259, column: 3, scope: !639)
!662 = distinct !{!662, !643, !663, !664}
!663 = !DILocation(line: 268, column: 3, scope: !633)
!664 = !{!"llvm.loop.mustprogress"}
!665 = !DILocation(line: 269, column: 1, scope: !609)
!666 = !DILocalVariable(name: "cinfo", arg: 1, scope: !2, file: !3, line: 89, type: !6)
!667 = !DILocation(line: 89, column: 30, scope: !2)
!668 = !DILocalVariable(name: "idct", scope: !2, file: !3, line: 91, type: !576)
!669 = !DILocation(line: 91, column: 15, scope: !2)
!670 = !DILocation(line: 91, column: 36, scope: !2)
!671 = !DILocation(line: 91, column: 43, scope: !2)
!672 = !DILocalVariable(name: "ci", scope: !2, file: !3, line: 92, type: !33)
!673 = !DILocation(line: 92, column: 7, scope: !2)
!674 = !DILocalVariable(name: "i", scope: !2, file: !3, line: 92, type: !33)
!675 = !DILocation(line: 92, column: 11, scope: !2)
!676 = !DILocalVariable(name: "compptr", scope: !2, file: !3, line: 93, type: !256)
!677 = !DILocation(line: 93, column: 24, scope: !2)
!678 = !DILocalVariable(name: "method", scope: !2, file: !3, line: 94, type: !33)
!679 = !DILocation(line: 94, column: 7, scope: !2)
!680 = !DILocalVariable(name: "method_ptr", scope: !2, file: !3, line: 95, type: !413)
!681 = !DILocation(line: 95, column: 26, scope: !2)
!682 = !DILocalVariable(name: "qtbl", scope: !2, file: !3, line: 96, type: !226)
!683 = !DILocation(line: 96, column: 16, scope: !2)
!684 = !DILocation(line: 98, column: 11, scope: !685)
!685 = distinct !DILexicalBlock(scope: !2, file: !3, line: 98, column: 3)
!686 = !DILocation(line: 98, column: 26, scope: !685)
!687 = !DILocation(line: 98, column: 33, scope: !685)
!688 = !DILocation(line: 98, column: 24, scope: !685)
!689 = !DILocation(line: 98, column: 8, scope: !685)
!690 = !DILocation(line: 98, column: 44, scope: !691)
!691 = distinct !DILexicalBlock(scope: !685, file: !3, line: 98, column: 3)
!692 = !DILocation(line: 98, column: 49, scope: !691)
!693 = !DILocation(line: 98, column: 56, scope: !691)
!694 = !DILocation(line: 98, column: 47, scope: !691)
!695 = !DILocation(line: 98, column: 3, scope: !685)
!696 = !DILocation(line: 101, column: 13, scope: !697)
!697 = distinct !DILexicalBlock(scope: !691, file: !3, line: 99, column: 25)
!698 = !DILocation(line: 101, column: 22, scope: !697)
!699 = !DILocation(line: 101, column: 5, scope: !697)
!700 = !DILocation(line: 104, column: 18, scope: !701)
!701 = distinct !DILexicalBlock(scope: !697, file: !3, line: 101, column: 39)
!702 = !DILocation(line: 105, column: 14, scope: !701)
!703 = !DILocation(line: 106, column: 7, scope: !701)
!704 = !DILocation(line: 108, column: 18, scope: !701)
!705 = !DILocation(line: 109, column: 14, scope: !701)
!706 = !DILocation(line: 110, column: 7, scope: !701)
!707 = !DILocation(line: 112, column: 18, scope: !701)
!708 = !DILocation(line: 113, column: 14, scope: !701)
!709 = !DILocation(line: 114, column: 7, scope: !701)
!710 = !DILocation(line: 117, column: 15, scope: !701)
!711 = !DILocation(line: 117, column: 22, scope: !701)
!712 = !DILocation(line: 117, column: 7, scope: !701)
!713 = !DILocation(line: 120, column: 13, scope: !714)
!714 = distinct !DILexicalBlock(scope: !701, file: !3, line: 117, column: 34)
!715 = !DILocation(line: 121, column: 9, scope: !714)
!716 = !DILocation(line: 122, column: 2, scope: !714)
!717 = !DILocation(line: 126, column: 13, scope: !714)
!718 = !DILocation(line: 127, column: 9, scope: !714)
!719 = !DILocation(line: 128, column: 2, scope: !714)
!720 = !DILocation(line: 132, column: 13, scope: !714)
!721 = !DILocation(line: 133, column: 9, scope: !714)
!722 = !DILocation(line: 134, column: 2, scope: !714)
!723 = !DILocation(line: 137, column: 2, scope: !714)
!724 = !DILocation(line: 138, column: 2, scope: !714)
!725 = !DILocation(line: 140, column: 7, scope: !701)
!726 = !DILocation(line: 142, column: 7, scope: !701)
!727 = !DILocation(line: 143, column: 7, scope: !701)
!728 = !DILocation(line: 145, column: 33, scope: !697)
!729 = !DILocation(line: 145, column: 5, scope: !697)
!730 = !DILocation(line: 145, column: 11, scope: !697)
!731 = !DILocation(line: 145, column: 15, scope: !697)
!732 = !DILocation(line: 145, column: 27, scope: !697)
!733 = !DILocation(line: 145, column: 31, scope: !697)
!734 = !DILocation(line: 153, column: 11, scope: !735)
!735 = distinct !DILexicalBlock(scope: !697, file: !3, line: 153, column: 9)
!736 = !DILocation(line: 153, column: 20, scope: !735)
!737 = !DILocation(line: 153, column: 37, scope: !735)
!738 = !DILocation(line: 153, column: 40, scope: !735)
!739 = !DILocation(line: 153, column: 46, scope: !735)
!740 = !DILocation(line: 153, column: 57, scope: !735)
!741 = !DILocation(line: 153, column: 64, scope: !735)
!742 = !DILocation(line: 153, column: 61, scope: !735)
!743 = !DILocation(line: 154, column: 7, scope: !735)
!744 = !DILocation(line: 155, column: 12, scope: !697)
!745 = !DILocation(line: 155, column: 21, scope: !697)
!746 = !DILocation(line: 155, column: 10, scope: !697)
!747 = !DILocation(line: 156, column: 9, scope: !748)
!748 = distinct !DILexicalBlock(scope: !697, file: !3, line: 156, column: 9)
!749 = !DILocation(line: 156, column: 14, scope: !748)
!750 = !DILocation(line: 157, column: 7, scope: !748)
!751 = !DILocation(line: 158, column: 28, scope: !697)
!752 = !DILocation(line: 158, column: 5, scope: !697)
!753 = !DILocation(line: 158, column: 11, scope: !697)
!754 = !DILocation(line: 158, column: 22, scope: !697)
!755 = !DILocation(line: 158, column: 26, scope: !697)
!756 = !DILocation(line: 159, column: 13, scope: !697)
!757 = !DILocation(line: 159, column: 5, scope: !697)
!758 = !DILocalVariable(name: "ismtbl", scope: !759, file: !3, line: 166, type: !583)
!759 = distinct !DILexicalBlock(scope: !760, file: !3, line: 162, column: 7)
!760 = distinct !DILexicalBlock(scope: !697, file: !3, line: 159, column: 21)
!761 = !DILocation(line: 166, column: 20, scope: !759)
!762 = !DILocation(line: 166, column: 49, scope: !759)
!763 = !DILocation(line: 166, column: 58, scope: !759)
!764 = !DILocation(line: 167, column: 9, scope: !765)
!765 = distinct !DILexicalBlock(scope: !759, file: !3, line: 167, column: 2)
!766 = !DILocation(line: 167, column: 7, scope: !765)
!767 = !DILocation(line: 167, column: 14, scope: !768)
!768 = distinct !DILexicalBlock(scope: !765, file: !3, line: 167, column: 2)
!769 = !DILocation(line: 167, column: 16, scope: !768)
!770 = !DILocation(line: 167, column: 2, scope: !765)
!771 = !DILocation(line: 168, column: 34, scope: !772)
!772 = distinct !DILexicalBlock(scope: !768, file: !3, line: 167, column: 33)
!773 = !DILocation(line: 168, column: 40, scope: !772)
!774 = !DILocation(line: 168, column: 49, scope: !772)
!775 = !DILocation(line: 168, column: 16, scope: !772)
!776 = !DILocation(line: 168, column: 4, scope: !772)
!777 = !DILocation(line: 168, column: 11, scope: !772)
!778 = !DILocation(line: 168, column: 14, scope: !772)
!779 = !DILocation(line: 169, column: 2, scope: !772)
!780 = !DILocation(line: 167, column: 29, scope: !768)
!781 = !DILocation(line: 167, column: 2, scope: !768)
!782 = distinct !{!782, !770, !783, !664}
!783 = !DILocation(line: 169, column: 2, scope: !765)
!784 = !DILocation(line: 171, column: 7, scope: !760)
!785 = !DILocalVariable(name: "ifmtbl", scope: !786, file: !3, line: 183, type: !586)
!786 = distinct !DILexicalBlock(scope: !760, file: !3, line: 175, column: 7)
!787 = !DILocation(line: 183, column: 20, scope: !786)
!788 = !DILocation(line: 183, column: 49, scope: !786)
!789 = !DILocation(line: 183, column: 58, scope: !786)
!790 = !DILocation(line: 198, column: 9, scope: !791)
!791 = distinct !DILexicalBlock(scope: !786, file: !3, line: 198, column: 2)
!792 = !DILocation(line: 198, column: 7, scope: !791)
!793 = !DILocation(line: 198, column: 14, scope: !794)
!794 = distinct !DILexicalBlock(scope: !791, file: !3, line: 198, column: 2)
!795 = !DILocation(line: 198, column: 16, scope: !794)
!796 = !DILocation(line: 198, column: 2, scope: !791)
!797 = !DILocation(line: 200, column: 6, scope: !798)
!798 = distinct !DILexicalBlock(scope: !794, file: !3, line: 198, column: 33)
!799 = !DILocation(line: 199, column: 16, scope: !798)
!800 = !DILocation(line: 199, column: 4, scope: !798)
!801 = !DILocation(line: 199, column: 11, scope: !798)
!802 = !DILocation(line: 199, column: 14, scope: !798)
!803 = !DILocation(line: 203, column: 2, scope: !798)
!804 = !DILocation(line: 198, column: 29, scope: !794)
!805 = !DILocation(line: 198, column: 2, scope: !794)
!806 = distinct !{!806, !796, !807, !664}
!807 = !DILocation(line: 203, column: 2, scope: !791)
!808 = !DILocation(line: 205, column: 7, scope: !760)
!809 = !DILocalVariable(name: "fmtbl", scope: !810, file: !3, line: 215, type: !589)
!810 = distinct !DILexicalBlock(scope: !760, file: !3, line: 209, column: 7)
!811 = !DILocation(line: 215, column: 20, scope: !810)
!812 = !DILocation(line: 215, column: 48, scope: !810)
!813 = !DILocation(line: 215, column: 57, scope: !810)
!814 = !DILocalVariable(name: "row", scope: !810, file: !3, line: 216, type: !33)
!815 = !DILocation(line: 216, column: 6, scope: !810)
!816 = !DILocalVariable(name: "col", scope: !810, file: !3, line: 216, type: !33)
!817 = !DILocation(line: 216, column: 11, scope: !810)
!818 = !DILocation(line: 222, column: 4, scope: !810)
!819 = !DILocation(line: 223, column: 11, scope: !820)
!820 = distinct !DILexicalBlock(scope: !810, file: !3, line: 223, column: 2)
!821 = !DILocation(line: 223, column: 7, scope: !820)
!822 = !DILocation(line: 223, column: 16, scope: !823)
!823 = distinct !DILexicalBlock(scope: !820, file: !3, line: 223, column: 2)
!824 = !DILocation(line: 223, column: 20, scope: !823)
!825 = !DILocation(line: 223, column: 2, scope: !820)
!826 = !DILocation(line: 224, column: 13, scope: !827)
!827 = distinct !DILexicalBlock(scope: !828, file: !3, line: 224, column: 4)
!828 = distinct !DILexicalBlock(scope: !823, file: !3, line: 223, column: 38)
!829 = !DILocation(line: 224, column: 9, scope: !827)
!830 = !DILocation(line: 224, column: 18, scope: !831)
!831 = distinct !DILexicalBlock(scope: !827, file: !3, line: 224, column: 4)
!832 = !DILocation(line: 224, column: 22, scope: !831)
!833 = !DILocation(line: 224, column: 4, scope: !827)
!834 = !DILocation(line: 226, column: 18, scope: !835)
!835 = distinct !DILexicalBlock(scope: !831, file: !3, line: 224, column: 40)
!836 = !DILocation(line: 226, column: 24, scope: !835)
!837 = !DILocation(line: 226, column: 33, scope: !835)
!838 = !DILocation(line: 226, column: 9, scope: !835)
!839 = !DILocation(line: 227, column: 24, scope: !835)
!840 = !DILocation(line: 227, column: 9, scope: !835)
!841 = !DILocation(line: 226, column: 36, scope: !835)
!842 = !DILocation(line: 227, column: 46, scope: !835)
!843 = !DILocation(line: 227, column: 31, scope: !835)
!844 = !DILocation(line: 227, column: 29, scope: !835)
!845 = !DILocation(line: 225, column: 17, scope: !835)
!846 = !DILocation(line: 225, column: 6, scope: !835)
!847 = !DILocation(line: 225, column: 12, scope: !835)
!848 = !DILocation(line: 225, column: 15, scope: !835)
!849 = !DILocation(line: 228, column: 7, scope: !835)
!850 = !DILocation(line: 229, column: 4, scope: !835)
!851 = !DILocation(line: 224, column: 36, scope: !831)
!852 = !DILocation(line: 224, column: 4, scope: !831)
!853 = distinct !{!853, !833, !854, !664}
!854 = !DILocation(line: 229, column: 4, scope: !827)
!855 = !DILocation(line: 230, column: 2, scope: !828)
!856 = !DILocation(line: 223, column: 34, scope: !823)
!857 = !DILocation(line: 223, column: 2, scope: !823)
!858 = distinct !{!858, !825, !859, !664}
!859 = !DILocation(line: 230, column: 2, scope: !820)
!860 = !DILocation(line: 232, column: 7, scope: !760)
!861 = !DILocation(line: 235, column: 7, scope: !760)
!862 = !DILocation(line: 236, column: 7, scope: !760)
!863 = !DILocation(line: 238, column: 3, scope: !697)
!864 = !DILocation(line: 99, column: 10, scope: !691)
!865 = !DILocation(line: 99, column: 21, scope: !691)
!866 = !DILocation(line: 98, column: 3, scope: !691)
!867 = distinct !{!867, !695, !868, !664}
!868 = !DILocation(line: 238, column: 3, scope: !685)
!869 = !DILocation(line: 239, column: 1, scope: !2)
