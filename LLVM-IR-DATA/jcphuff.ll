; ModuleID = 'cBench/consumer_jpeg_c/src/jcphuff.c'
source_filename = "cBench/consumer_jpeg_c/src/jcphuff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jpeg_compress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, double, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [16 x i8], [16 x i8], [16 x i8], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.phuff_entropy_encoder = type { %struct.jpeg_entropy_encoder, i32, ptr, i64, i64, i32, ptr, [4 x i32], i32, i32, i32, ptr, i32, i32, [4 x ptr], [4 x ptr] }
%struct.jpeg_entropy_encoder = type { ptr, ptr, ptr }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_destination_mgr = type { ptr, i64, ptr, ptr, ptr }
%struct.c_derived_tbl = type { [256 x i32], [256 x i8] }

@jpeg_natural_order = external constant [0 x i32], align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @jinit_phuff_encoder(ptr noundef %0) #0 !dbg !562 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !564, !DIExpression(), !565)
    #dbg_declare(ptr %3, !566, !DIExpression(), !567)
    #dbg_declare(ptr %4, !568, !DIExpression(), !569)
  %5 = load ptr, ptr %2, align 8, !dbg !570
  %6 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %5, i32 0, i32 1, !dbg !571
  %7 = load ptr, ptr %6, align 8, !dbg !571
  %8 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %7, i32 0, i32 0, !dbg !572
  %9 = load ptr, ptr %8, align 8, !dbg !572
  %10 = load ptr, ptr %2, align 8, !dbg !573
  %11 = call ptr %9(ptr noundef %10, i32 noundef 1, i64 noundef 184), !dbg !574
  store ptr %11, ptr %3, align 8, !dbg !575
  %12 = load ptr, ptr %3, align 8, !dbg !576
  %13 = load ptr, ptr %2, align 8, !dbg !577
  %14 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %13, i32 0, i32 59, !dbg !578
  store ptr %12, ptr %14, align 8, !dbg !579
  %15 = load ptr, ptr %3, align 8, !dbg !580
  %16 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %15, i32 0, i32 0, !dbg !581
  %17 = getelementptr inbounds nuw %struct.jpeg_entropy_encoder, ptr %16, i32 0, i32 0, !dbg !582
  store ptr @start_pass_phuff, ptr %17, align 8, !dbg !583
  store i32 0, ptr %4, align 4, !dbg !584
  br label %18, !dbg !586

18:                                               ; preds = %32, %1
  %19 = load i32, ptr %4, align 4, !dbg !587
  %20 = icmp slt i32 %19, 4, !dbg !589
  br i1 %20, label %21, label %35, !dbg !590

21:                                               ; preds = %18
  %22 = load ptr, ptr %3, align 8, !dbg !591
  %23 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %22, i32 0, i32 14, !dbg !593
  %24 = load i32, ptr %4, align 4, !dbg !594
  %25 = sext i32 %24 to i64, !dbg !591
  %26 = getelementptr inbounds [4 x ptr], ptr %23, i64 0, i64 %25, !dbg !591
  store ptr null, ptr %26, align 8, !dbg !595
  %27 = load ptr, ptr %3, align 8, !dbg !596
  %28 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %27, i32 0, i32 15, !dbg !597
  %29 = load i32, ptr %4, align 4, !dbg !598
  %30 = sext i32 %29 to i64, !dbg !596
  %31 = getelementptr inbounds [4 x ptr], ptr %28, i64 0, i64 %30, !dbg !596
  store ptr null, ptr %31, align 8, !dbg !599
  br label %32, !dbg !600

32:                                               ; preds = %21
  %33 = load i32, ptr %4, align 4, !dbg !601
  %34 = add nsw i32 %33, 1, !dbg !601
  store i32 %34, ptr %4, align 4, !dbg !601
  br label %18, !dbg !602, !llvm.loop !603

35:                                               ; preds = %18
  %36 = load ptr, ptr %3, align 8, !dbg !606
  %37 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %36, i32 0, i32 11, !dbg !607
  store ptr null, ptr %37, align 8, !dbg !608
  ret void, !dbg !609
}

; Function Attrs: noinline nounwind uwtable
define internal void @start_pass_phuff(ptr noundef %0, i32 noundef %1) #0 !dbg !610 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !611, !DIExpression(), !612)
  store i32 %1, ptr %4, align 4
    #dbg_declare(ptr %4, !613, !DIExpression(), !614)
    #dbg_declare(ptr %5, !615, !DIExpression(), !616)
  %10 = load ptr, ptr %3, align 8, !dbg !617
  %11 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %10, i32 0, i32 59, !dbg !618
  %12 = load ptr, ptr %11, align 8, !dbg !618
  store ptr %12, ptr %5, align 8, !dbg !616
    #dbg_declare(ptr %6, !619, !DIExpression(), !620)
    #dbg_declare(ptr %7, !621, !DIExpression(), !622)
    #dbg_declare(ptr %8, !623, !DIExpression(), !624)
    #dbg_declare(ptr %9, !625, !DIExpression(), !626)
  %13 = load ptr, ptr %3, align 8, !dbg !627
  %14 = load ptr, ptr %5, align 8, !dbg !628
  %15 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %14, i32 0, i32 6, !dbg !629
  store ptr %13, ptr %15, align 8, !dbg !630
  %16 = load i32, ptr %4, align 4, !dbg !631
  %17 = load ptr, ptr %5, align 8, !dbg !632
  %18 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %17, i32 0, i32 1, !dbg !633
  store i32 %16, ptr %18, align 8, !dbg !634
  %19 = load ptr, ptr %3, align 8, !dbg !635
  %20 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %19, i32 0, i32 47, !dbg !636
  %21 = load i32, ptr %20, align 4, !dbg !636
  %22 = icmp eq i32 %21, 0, !dbg !637
  %23 = zext i1 %22 to i32, !dbg !637
  store i32 %23, ptr %6, align 4, !dbg !638
  %24 = load ptr, ptr %3, align 8, !dbg !639
  %25 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %24, i32 0, i32 49, !dbg !641
  %26 = load i32, ptr %25, align 4, !dbg !641
  %27 = icmp eq i32 %26, 0, !dbg !642
  br i1 %27, label %28, label %40, !dbg !642

28:                                               ; preds = %2
  %29 = load i32, ptr %6, align 4, !dbg !643
  %30 = icmp ne i32 %29, 0, !dbg !643
  br i1 %30, label %31, label %35, !dbg !643

31:                                               ; preds = %28
  %32 = load ptr, ptr %5, align 8, !dbg !646
  %33 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %32, i32 0, i32 0, !dbg !647
  %34 = getelementptr inbounds nuw %struct.jpeg_entropy_encoder, ptr %33, i32 0, i32 1, !dbg !648
  store ptr @encode_mcu_DC_first, ptr %34, align 8, !dbg !649
  br label %39, !dbg !646

35:                                               ; preds = %28
  %36 = load ptr, ptr %5, align 8, !dbg !650
  %37 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %36, i32 0, i32 0, !dbg !651
  %38 = getelementptr inbounds nuw %struct.jpeg_entropy_encoder, ptr %37, i32 0, i32 1, !dbg !652
  store ptr @encode_mcu_AC_first, ptr %38, align 8, !dbg !653
  br label %39

39:                                               ; preds = %35, %31
  br label %67, !dbg !654

40:                                               ; preds = %2
  %41 = load i32, ptr %6, align 4, !dbg !655
  %42 = icmp ne i32 %41, 0, !dbg !655
  br i1 %42, label %43, label %47, !dbg !655

43:                                               ; preds = %40
  %44 = load ptr, ptr %5, align 8, !dbg !658
  %45 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %44, i32 0, i32 0, !dbg !659
  %46 = getelementptr inbounds nuw %struct.jpeg_entropy_encoder, ptr %45, i32 0, i32 1, !dbg !660
  store ptr @encode_mcu_DC_refine, ptr %46, align 8, !dbg !661
  br label %66, !dbg !658

47:                                               ; preds = %40
  %48 = load ptr, ptr %5, align 8, !dbg !662
  %49 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %48, i32 0, i32 0, !dbg !664
  %50 = getelementptr inbounds nuw %struct.jpeg_entropy_encoder, ptr %49, i32 0, i32 1, !dbg !665
  store ptr @encode_mcu_AC_refine, ptr %50, align 8, !dbg !666
  %51 = load ptr, ptr %5, align 8, !dbg !667
  %52 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %51, i32 0, i32 11, !dbg !669
  %53 = load ptr, ptr %52, align 8, !dbg !669
  %54 = icmp eq ptr %53, null, !dbg !670
  br i1 %54, label %55, label %65, !dbg !670

55:                                               ; preds = %47
  %56 = load ptr, ptr %3, align 8, !dbg !671
  %57 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %56, i32 0, i32 1, !dbg !672
  %58 = load ptr, ptr %57, align 8, !dbg !672
  %59 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %58, i32 0, i32 0, !dbg !673
  %60 = load ptr, ptr %59, align 8, !dbg !673
  %61 = load ptr, ptr %3, align 8, !dbg !674
  %62 = call ptr %60(ptr noundef %61, i32 noundef 1, i64 noundef 1000), !dbg !675
  %63 = load ptr, ptr %5, align 8, !dbg !676
  %64 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %63, i32 0, i32 11, !dbg !677
  store ptr %62, ptr %64, align 8, !dbg !678
  br label %65, !dbg !676

65:                                               ; preds = %55, %47
  br label %66

66:                                               ; preds = %65, %43
  br label %67

67:                                               ; preds = %66, %39
  %68 = load i32, ptr %4, align 4, !dbg !679
  %69 = icmp ne i32 %68, 0, !dbg !679
  br i1 %69, label %70, label %74, !dbg !679

70:                                               ; preds = %67
  %71 = load ptr, ptr %5, align 8, !dbg !681
  %72 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %71, i32 0, i32 0, !dbg !682
  %73 = getelementptr inbounds nuw %struct.jpeg_entropy_encoder, ptr %72, i32 0, i32 2, !dbg !683
  store ptr @finish_pass_gather_phuff, ptr %73, align 8, !dbg !684
  br label %78, !dbg !681

74:                                               ; preds = %67
  %75 = load ptr, ptr %5, align 8, !dbg !685
  %76 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %75, i32 0, i32 0, !dbg !686
  %77 = getelementptr inbounds nuw %struct.jpeg_entropy_encoder, ptr %76, i32 0, i32 2, !dbg !687
  store ptr @finish_pass_phuff, ptr %77, align 8, !dbg !688
  br label %78

78:                                               ; preds = %74, %70
  store i32 0, ptr %7, align 4, !dbg !689
  br label %79, !dbg !691

79:                                               ; preds = %245, %78
  %80 = load i32, ptr %7, align 4, !dbg !692
  %81 = load ptr, ptr %3, align 8, !dbg !694
  %82 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %81, i32 0, i32 41, !dbg !695
  %83 = load i32, ptr %82, align 4, !dbg !695
  %84 = icmp slt i32 %80, %83, !dbg !696
  br i1 %84, label %85, label %248, !dbg !697

85:                                               ; preds = %79
  %86 = load ptr, ptr %3, align 8, !dbg !698
  %87 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %86, i32 0, i32 42, !dbg !700
  %88 = load i32, ptr %7, align 4, !dbg !701
  %89 = sext i32 %88 to i64, !dbg !698
  %90 = getelementptr inbounds [4 x ptr], ptr %87, i64 0, i64 %89, !dbg !698
  %91 = load ptr, ptr %90, align 8, !dbg !698
  store ptr %91, ptr %9, align 8, !dbg !702
  %92 = load ptr, ptr %5, align 8, !dbg !703
  %93 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %92, i32 0, i32 7, !dbg !704
  %94 = load i32, ptr %7, align 4, !dbg !705
  %95 = sext i32 %94 to i64, !dbg !703
  %96 = getelementptr inbounds [4 x i32], ptr %93, i64 0, i64 %95, !dbg !703
  store i32 0, ptr %96, align 4, !dbg !706
  %97 = load i32, ptr %6, align 4, !dbg !707
  %98 = icmp ne i32 %97, 0, !dbg !707
  br i1 %98, label %99, label %143, !dbg !707

99:                                               ; preds = %85
  %100 = load ptr, ptr %3, align 8, !dbg !709
  %101 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %100, i32 0, i32 49, !dbg !712
  %102 = load i32, ptr %101, align 4, !dbg !712
  %103 = icmp ne i32 %102, 0, !dbg !713
  br i1 %103, label %104, label %105, !dbg !713

104:                                              ; preds = %99
  br label %245, !dbg !714

105:                                              ; preds = %99
  %106 = load ptr, ptr %9, align 8, !dbg !715
  %107 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %106, i32 0, i32 5, !dbg !716
  %108 = load i32, ptr %107, align 4, !dbg !716
  store i32 %108, ptr %8, align 4, !dbg !717
  %109 = load i32, ptr %8, align 4, !dbg !718
  %110 = icmp slt i32 %109, 0, !dbg !720
  br i1 %110, label %125, label %111, !dbg !721

111:                                              ; preds = %105
  %112 = load i32, ptr %8, align 4, !dbg !722
  %113 = icmp sge i32 %112, 4, !dbg !723
  br i1 %113, label %125, label %114, !dbg !724

114:                                              ; preds = %111
  %115 = load ptr, ptr %3, align 8, !dbg !725
  %116 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %115, i32 0, i32 16, !dbg !726
  %117 = load i32, ptr %8, align 4, !dbg !727
  %118 = sext i32 %117 to i64, !dbg !725
  %119 = getelementptr inbounds [4 x ptr], ptr %116, i64 0, i64 %118, !dbg !725
  %120 = load ptr, ptr %119, align 8, !dbg !725
  %121 = icmp eq ptr %120, null, !dbg !728
  br i1 %121, label %122, label %142, !dbg !729

122:                                              ; preds = %114
  %123 = load i32, ptr %4, align 4, !dbg !730
  %124 = icmp ne i32 %123, 0, !dbg !730
  br i1 %124, label %142, label %125, !dbg !724

125:                                              ; preds = %122, %111, %105
  %126 = load ptr, ptr %3, align 8, !dbg !731
  %127 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %126, i32 0, i32 0, !dbg !731
  %128 = load ptr, ptr %127, align 8, !dbg !731
  %129 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %128, i32 0, i32 5, !dbg !731
  store i32 49, ptr %129, align 8, !dbg !731
  %130 = load i32, ptr %8, align 4, !dbg !731
  %131 = load ptr, ptr %3, align 8, !dbg !731
  %132 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %131, i32 0, i32 0, !dbg !731
  %133 = load ptr, ptr %132, align 8, !dbg !731
  %134 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %133, i32 0, i32 6, !dbg !731
  %135 = getelementptr inbounds [8 x i32], ptr %134, i64 0, i64 0, !dbg !731
  store i32 %130, ptr %135, align 4, !dbg !731
  %136 = load ptr, ptr %3, align 8, !dbg !731
  %137 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %136, i32 0, i32 0, !dbg !731
  %138 = load ptr, ptr %137, align 8, !dbg !731
  %139 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %138, i32 0, i32 0, !dbg !731
  %140 = load ptr, ptr %139, align 8, !dbg !731
  %141 = load ptr, ptr %3, align 8, !dbg !731
  call void %140(ptr noundef %141), !dbg !731
  br label %142, !dbg !731

142:                                              ; preds = %125, %122, %114
  br label %183, !dbg !732

143:                                              ; preds = %85
  %144 = load ptr, ptr %9, align 8, !dbg !733
  %145 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %144, i32 0, i32 6, !dbg !735
  %146 = load i32, ptr %145, align 8, !dbg !735
  store i32 %146, ptr %8, align 4, !dbg !736
  %147 = load ptr, ptr %5, align 8, !dbg !737
  %148 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %147, i32 0, i32 8, !dbg !738
  store i32 %146, ptr %148, align 8, !dbg !739
  %149 = load i32, ptr %8, align 4, !dbg !740
  %150 = icmp slt i32 %149, 0, !dbg !742
  br i1 %150, label %165, label %151, !dbg !743

151:                                              ; preds = %143
  %152 = load i32, ptr %8, align 4, !dbg !744
  %153 = icmp sge i32 %152, 4, !dbg !745
  br i1 %153, label %165, label %154, !dbg !746

154:                                              ; preds = %151
  %155 = load ptr, ptr %3, align 8, !dbg !747
  %156 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %155, i32 0, i32 17, !dbg !748
  %157 = load i32, ptr %8, align 4, !dbg !749
  %158 = sext i32 %157 to i64, !dbg !747
  %159 = getelementptr inbounds [4 x ptr], ptr %156, i64 0, i64 %158, !dbg !747
  %160 = load ptr, ptr %159, align 8, !dbg !747
  %161 = icmp eq ptr %160, null, !dbg !750
  br i1 %161, label %162, label %182, !dbg !751

162:                                              ; preds = %154
  %163 = load i32, ptr %4, align 4, !dbg !752
  %164 = icmp ne i32 %163, 0, !dbg !752
  br i1 %164, label %182, label %165, !dbg !746

165:                                              ; preds = %162, %151, %143
  %166 = load ptr, ptr %3, align 8, !dbg !753
  %167 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %166, i32 0, i32 0, !dbg !753
  %168 = load ptr, ptr %167, align 8, !dbg !753
  %169 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %168, i32 0, i32 5, !dbg !753
  store i32 49, ptr %169, align 8, !dbg !753
  %170 = load i32, ptr %8, align 4, !dbg !753
  %171 = load ptr, ptr %3, align 8, !dbg !753
  %172 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %171, i32 0, i32 0, !dbg !753
  %173 = load ptr, ptr %172, align 8, !dbg !753
  %174 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %173, i32 0, i32 6, !dbg !753
  %175 = getelementptr inbounds [8 x i32], ptr %174, i64 0, i64 0, !dbg !753
  store i32 %170, ptr %175, align 4, !dbg !753
  %176 = load ptr, ptr %3, align 8, !dbg !753
  %177 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %176, i32 0, i32 0, !dbg !753
  %178 = load ptr, ptr %177, align 8, !dbg !753
  %179 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %178, i32 0, i32 0, !dbg !753
  %180 = load ptr, ptr %179, align 8, !dbg !753
  %181 = load ptr, ptr %3, align 8, !dbg !753
  call void %180(ptr noundef %181), !dbg !753
  br label %182, !dbg !753

182:                                              ; preds = %165, %162, %154
  br label %183

183:                                              ; preds = %182, %142
  %184 = load i32, ptr %4, align 4, !dbg !754
  %185 = icmp ne i32 %184, 0, !dbg !754
  br i1 %185, label %186, label %214, !dbg !754

186:                                              ; preds = %183
  %187 = load ptr, ptr %5, align 8, !dbg !756
  %188 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %187, i32 0, i32 15, !dbg !759
  %189 = load i32, ptr %8, align 4, !dbg !760
  %190 = sext i32 %189 to i64, !dbg !756
  %191 = getelementptr inbounds [4 x ptr], ptr %188, i64 0, i64 %190, !dbg !756
  %192 = load ptr, ptr %191, align 8, !dbg !756
  %193 = icmp eq ptr %192, null, !dbg !761
  br i1 %193, label %194, label %207, !dbg !761

194:                                              ; preds = %186
  %195 = load ptr, ptr %3, align 8, !dbg !762
  %196 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %195, i32 0, i32 1, !dbg !763
  %197 = load ptr, ptr %196, align 8, !dbg !763
  %198 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %197, i32 0, i32 0, !dbg !764
  %199 = load ptr, ptr %198, align 8, !dbg !764
  %200 = load ptr, ptr %3, align 8, !dbg !765
  %201 = call ptr %199(ptr noundef %200, i32 noundef 1, i64 noundef 2056), !dbg !766
  %202 = load ptr, ptr %5, align 8, !dbg !767
  %203 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %202, i32 0, i32 15, !dbg !768
  %204 = load i32, ptr %8, align 4, !dbg !769
  %205 = sext i32 %204 to i64, !dbg !767
  %206 = getelementptr inbounds [4 x ptr], ptr %203, i64 0, i64 %205, !dbg !767
  store ptr %201, ptr %206, align 8, !dbg !770
  br label %207, !dbg !767

207:                                              ; preds = %194, %186
  %208 = load ptr, ptr %5, align 8, !dbg !771
  %209 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %208, i32 0, i32 15, !dbg !771
  %210 = load i32, ptr %8, align 4, !dbg !771
  %211 = sext i32 %210 to i64, !dbg !771
  %212 = getelementptr inbounds [4 x ptr], ptr %209, i64 0, i64 %211, !dbg !771
  %213 = load ptr, ptr %212, align 8, !dbg !771
  call void @llvm.memset.p0.i64(ptr align 1 %213, i8 0, i64 2056, i1 false), !dbg !771
  br label %244, !dbg !772

214:                                              ; preds = %183
  %215 = load i32, ptr %6, align 4, !dbg !773
  %216 = icmp ne i32 %215, 0, !dbg !773
  br i1 %216, label %217, label %230, !dbg !773

217:                                              ; preds = %214
  %218 = load ptr, ptr %3, align 8, !dbg !776
  %219 = load ptr, ptr %3, align 8, !dbg !777
  %220 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %219, i32 0, i32 16, !dbg !778
  %221 = load i32, ptr %8, align 4, !dbg !779
  %222 = sext i32 %221 to i64, !dbg !777
  %223 = getelementptr inbounds [4 x ptr], ptr %220, i64 0, i64 %222, !dbg !777
  %224 = load ptr, ptr %223, align 8, !dbg !777
  %225 = load ptr, ptr %5, align 8, !dbg !780
  %226 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %225, i32 0, i32 14, !dbg !781
  %227 = load i32, ptr %8, align 4, !dbg !782
  %228 = sext i32 %227 to i64, !dbg !780
  %229 = getelementptr inbounds [4 x ptr], ptr %226, i64 0, i64 %228, !dbg !780
  call void @jpeg_make_c_derived_tbl(ptr noundef %218, ptr noundef %224, ptr noundef %229), !dbg !783
  br label %243, !dbg !783

230:                                              ; preds = %214
  %231 = load ptr, ptr %3, align 8, !dbg !784
  %232 = load ptr, ptr %3, align 8, !dbg !785
  %233 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %232, i32 0, i32 17, !dbg !786
  %234 = load i32, ptr %8, align 4, !dbg !787
  %235 = sext i32 %234 to i64, !dbg !785
  %236 = getelementptr inbounds [4 x ptr], ptr %233, i64 0, i64 %235, !dbg !785
  %237 = load ptr, ptr %236, align 8, !dbg !785
  %238 = load ptr, ptr %5, align 8, !dbg !788
  %239 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %238, i32 0, i32 14, !dbg !789
  %240 = load i32, ptr %8, align 4, !dbg !790
  %241 = sext i32 %240 to i64, !dbg !788
  %242 = getelementptr inbounds [4 x ptr], ptr %239, i64 0, i64 %241, !dbg !788
  call void @jpeg_make_c_derived_tbl(ptr noundef %231, ptr noundef %237, ptr noundef %242), !dbg !791
  br label %243

243:                                              ; preds = %230, %217
  br label %244

244:                                              ; preds = %243, %207
  br label %245, !dbg !792

245:                                              ; preds = %244, %104
  %246 = load i32, ptr %7, align 4, !dbg !793
  %247 = add nsw i32 %246, 1, !dbg !793
  store i32 %247, ptr %7, align 4, !dbg !793
  br label %79, !dbg !794, !llvm.loop !795

248:                                              ; preds = %79
  %249 = load ptr, ptr %5, align 8, !dbg !797
  %250 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %249, i32 0, i32 9, !dbg !798
  store i32 0, ptr %250, align 4, !dbg !799
  %251 = load ptr, ptr %5, align 8, !dbg !800
  %252 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %251, i32 0, i32 10, !dbg !801
  store i32 0, ptr %252, align 8, !dbg !802
  %253 = load ptr, ptr %5, align 8, !dbg !803
  %254 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %253, i32 0, i32 4, !dbg !804
  store i64 0, ptr %254, align 8, !dbg !805
  %255 = load ptr, ptr %5, align 8, !dbg !806
  %256 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %255, i32 0, i32 5, !dbg !807
  store i32 0, ptr %256, align 8, !dbg !808
  %257 = load ptr, ptr %3, align 8, !dbg !809
  %258 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %257, i32 0, i32 29, !dbg !810
  %259 = load i32, ptr %258, align 8, !dbg !810
  %260 = load ptr, ptr %5, align 8, !dbg !811
  %261 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %260, i32 0, i32 12, !dbg !812
  store i32 %259, ptr %261, align 8, !dbg !813
  %262 = load ptr, ptr %5, align 8, !dbg !814
  %263 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %262, i32 0, i32 13, !dbg !815
  store i32 0, ptr %263, align 4, !dbg !816
  ret void, !dbg !817
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @encode_mcu_DC_first(ptr noundef %0, ptr noundef %1) #0 !dbg !818 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !819, !DIExpression(), !820)
  store ptr %1, ptr %4, align 8
    #dbg_declare(ptr %4, !821, !DIExpression(), !822)
    #dbg_declare(ptr %5, !823, !DIExpression(), !824)
  %14 = load ptr, ptr %3, align 8, !dbg !825
  %15 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %14, i32 0, i32 59, !dbg !826
  %16 = load ptr, ptr %15, align 8, !dbg !826
  store ptr %16, ptr %5, align 8, !dbg !824
    #dbg_declare(ptr %6, !827, !DIExpression(), !828)
    #dbg_declare(ptr %7, !829, !DIExpression(), !830)
    #dbg_declare(ptr %8, !831, !DIExpression(), !832)
    #dbg_declare(ptr %9, !833, !DIExpression(), !834)
    #dbg_declare(ptr %10, !835, !DIExpression(), !836)
    #dbg_declare(ptr %11, !837, !DIExpression(), !838)
  %17 = load ptr, ptr %3, align 8, !dbg !839
  %18 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %17, i32 0, i32 50, !dbg !840
  %19 = load i32, ptr %18, align 8, !dbg !840
  store i32 %19, ptr %11, align 4, !dbg !838
    #dbg_declare(ptr %12, !841, !DIExpression(), !842)
    #dbg_declare(ptr %13, !843, !DIExpression(), !844)
  %20 = load ptr, ptr %3, align 8, !dbg !845
  %21 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %20, i32 0, i32 5, !dbg !846
  %22 = load ptr, ptr %21, align 8, !dbg !846
  %23 = getelementptr inbounds nuw %struct.jpeg_destination_mgr, ptr %22, i32 0, i32 0, !dbg !847
  %24 = load ptr, ptr %23, align 8, !dbg !847
  %25 = load ptr, ptr %5, align 8, !dbg !848
  %26 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %25, i32 0, i32 2, !dbg !849
  store ptr %24, ptr %26, align 8, !dbg !850
  %27 = load ptr, ptr %3, align 8, !dbg !851
  %28 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %27, i32 0, i32 5, !dbg !852
  %29 = load ptr, ptr %28, align 8, !dbg !852
  %30 = getelementptr inbounds nuw %struct.jpeg_destination_mgr, ptr %29, i32 0, i32 1, !dbg !853
  %31 = load i64, ptr %30, align 8, !dbg !853
  %32 = load ptr, ptr %5, align 8, !dbg !854
  %33 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %32, i32 0, i32 3, !dbg !855
  store i64 %31, ptr %33, align 8, !dbg !856
  %34 = load ptr, ptr %3, align 8, !dbg !857
  %35 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %34, i32 0, i32 29, !dbg !859
  %36 = load i32, ptr %35, align 8, !dbg !859
  %37 = icmp ne i32 %36, 0, !dbg !857
  br i1 %37, label %38, label %49, !dbg !857

38:                                               ; preds = %2
  %39 = load ptr, ptr %5, align 8, !dbg !860
  %40 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %39, i32 0, i32 12, !dbg !862
  %41 = load i32, ptr %40, align 8, !dbg !862
  %42 = icmp eq i32 %41, 0, !dbg !863
  br i1 %42, label %43, label %48, !dbg !863

43:                                               ; preds = %38
  %44 = load ptr, ptr %5, align 8, !dbg !864
  %45 = load ptr, ptr %5, align 8, !dbg !865
  %46 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %45, i32 0, i32 13, !dbg !866
  %47 = load i32, ptr %46, align 4, !dbg !866
  call void @emit_restart(ptr noundef %44, i32 noundef %47), !dbg !867
  br label %48, !dbg !867

48:                                               ; preds = %43, %38
  br label %49, !dbg !868

49:                                               ; preds = %48, %2
  store i32 0, ptr %9, align 4, !dbg !869
  br label %50, !dbg !871

50:                                               ; preds = %124, %49
  %51 = load i32, ptr %9, align 4, !dbg !872
  %52 = load ptr, ptr %3, align 8, !dbg !874
  %53 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %52, i32 0, i32 45, !dbg !875
  %54 = load i32, ptr %53, align 8, !dbg !875
  %55 = icmp slt i32 %51, %54, !dbg !876
  br i1 %55, label %56, label %127, !dbg !877

56:                                               ; preds = %50
  %57 = load ptr, ptr %4, align 8, !dbg !878
  %58 = load i32, ptr %9, align 4, !dbg !880
  %59 = sext i32 %58 to i64, !dbg !878
  %60 = getelementptr inbounds ptr, ptr %57, i64 %59, !dbg !878
  %61 = load ptr, ptr %60, align 8, !dbg !878
  store ptr %61, ptr %12, align 8, !dbg !881
  %62 = load ptr, ptr %3, align 8, !dbg !882
  %63 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %62, i32 0, i32 46, !dbg !883
  %64 = load i32, ptr %9, align 4, !dbg !884
  %65 = sext i32 %64 to i64, !dbg !882
  %66 = getelementptr inbounds [10 x i32], ptr %63, i64 0, i64 %65, !dbg !882
  %67 = load i32, ptr %66, align 4, !dbg !882
  store i32 %67, ptr %10, align 4, !dbg !885
  %68 = load ptr, ptr %3, align 8, !dbg !886
  %69 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %68, i32 0, i32 42, !dbg !887
  %70 = load i32, ptr %10, align 4, !dbg !888
  %71 = sext i32 %70 to i64, !dbg !886
  %72 = getelementptr inbounds [4 x ptr], ptr %69, i64 0, i64 %71, !dbg !886
  %73 = load ptr, ptr %72, align 8, !dbg !886
  store ptr %73, ptr %13, align 8, !dbg !889
  %74 = load ptr, ptr %12, align 8, !dbg !890
  %75 = getelementptr inbounds [64 x i16], ptr %74, i64 0, i64 0, !dbg !890
  %76 = load i16, ptr %75, align 2, !dbg !890
  %77 = sext i16 %76 to i32, !dbg !890
  %78 = load i32, ptr %11, align 4, !dbg !890
  %79 = ashr i32 %77, %78, !dbg !890
  store i32 %79, ptr %7, align 4, !dbg !891
  %80 = load i32, ptr %7, align 4, !dbg !892
  %81 = load ptr, ptr %5, align 8, !dbg !893
  %82 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %81, i32 0, i32 7, !dbg !894
  %83 = load i32, ptr %10, align 4, !dbg !895
  %84 = sext i32 %83 to i64, !dbg !893
  %85 = getelementptr inbounds [4 x i32], ptr %82, i64 0, i64 %84, !dbg !893
  %86 = load i32, ptr %85, align 4, !dbg !893
  %87 = sub nsw i32 %80, %86, !dbg !896
  store i32 %87, ptr %6, align 4, !dbg !897
  %88 = load i32, ptr %7, align 4, !dbg !898
  %89 = load ptr, ptr %5, align 8, !dbg !899
  %90 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %89, i32 0, i32 7, !dbg !900
  %91 = load i32, ptr %10, align 4, !dbg !901
  %92 = sext i32 %91 to i64, !dbg !899
  %93 = getelementptr inbounds [4 x i32], ptr %90, i64 0, i64 %92, !dbg !899
  store i32 %88, ptr %93, align 4, !dbg !902
  %94 = load i32, ptr %6, align 4, !dbg !903
  store i32 %94, ptr %7, align 4, !dbg !904
  %95 = load i32, ptr %6, align 4, !dbg !905
  %96 = icmp slt i32 %95, 0, !dbg !907
  br i1 %96, label %97, label %102, !dbg !907

97:                                               ; preds = %56
  %98 = load i32, ptr %6, align 4, !dbg !908
  %99 = sub nsw i32 0, %98, !dbg !910
  store i32 %99, ptr %6, align 4, !dbg !911
  %100 = load i32, ptr %7, align 4, !dbg !912
  %101 = add nsw i32 %100, -1, !dbg !912
  store i32 %101, ptr %7, align 4, !dbg !912
  br label %102, !dbg !913

102:                                              ; preds = %97, %56
  store i32 0, ptr %8, align 4, !dbg !914
  br label %103, !dbg !915

103:                                              ; preds = %106, %102
  %104 = load i32, ptr %6, align 4, !dbg !916
  %105 = icmp ne i32 %104, 0, !dbg !915
  br i1 %105, label %106, label %111, !dbg !915

106:                                              ; preds = %103
  %107 = load i32, ptr %8, align 4, !dbg !917
  %108 = add nsw i32 %107, 1, !dbg !917
  store i32 %108, ptr %8, align 4, !dbg !917
  %109 = load i32, ptr %6, align 4, !dbg !919
  %110 = ashr i32 %109, 1, !dbg !919
  store i32 %110, ptr %6, align 4, !dbg !919
  br label %103, !dbg !915, !llvm.loop !920

111:                                              ; preds = %103
  %112 = load ptr, ptr %5, align 8, !dbg !922
  %113 = load ptr, ptr %13, align 8, !dbg !923
  %114 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %113, i32 0, i32 5, !dbg !924
  %115 = load i32, ptr %114, align 4, !dbg !924
  %116 = load i32, ptr %8, align 4, !dbg !925
  call void @emit_symbol(ptr noundef %112, i32 noundef %115, i32 noundef %116), !dbg !926
  %117 = load i32, ptr %8, align 4, !dbg !927
  %118 = icmp ne i32 %117, 0, !dbg !927
  br i1 %118, label %119, label %123, !dbg !927

119:                                              ; preds = %111
  %120 = load ptr, ptr %5, align 8, !dbg !929
  %121 = load i32, ptr %7, align 4, !dbg !930
  %122 = load i32, ptr %8, align 4, !dbg !931
  call void @emit_bits(ptr noundef %120, i32 noundef %121, i32 noundef %122), !dbg !932
  br label %123, !dbg !932

123:                                              ; preds = %119, %111
  br label %124, !dbg !933

124:                                              ; preds = %123
  %125 = load i32, ptr %9, align 4, !dbg !934
  %126 = add nsw i32 %125, 1, !dbg !934
  store i32 %126, ptr %9, align 4, !dbg !934
  br label %50, !dbg !935, !llvm.loop !936

127:                                              ; preds = %50
  %128 = load ptr, ptr %5, align 8, !dbg !938
  %129 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %128, i32 0, i32 2, !dbg !939
  %130 = load ptr, ptr %129, align 8, !dbg !939
  %131 = load ptr, ptr %3, align 8, !dbg !940
  %132 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %131, i32 0, i32 5, !dbg !941
  %133 = load ptr, ptr %132, align 8, !dbg !941
  %134 = getelementptr inbounds nuw %struct.jpeg_destination_mgr, ptr %133, i32 0, i32 0, !dbg !942
  store ptr %130, ptr %134, align 8, !dbg !943
  %135 = load ptr, ptr %5, align 8, !dbg !944
  %136 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %135, i32 0, i32 3, !dbg !945
  %137 = load i64, ptr %136, align 8, !dbg !945
  %138 = load ptr, ptr %3, align 8, !dbg !946
  %139 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %138, i32 0, i32 5, !dbg !947
  %140 = load ptr, ptr %139, align 8, !dbg !947
  %141 = getelementptr inbounds nuw %struct.jpeg_destination_mgr, ptr %140, i32 0, i32 1, !dbg !948
  store i64 %137, ptr %141, align 8, !dbg !949
  %142 = load ptr, ptr %3, align 8, !dbg !950
  %143 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %142, i32 0, i32 29, !dbg !952
  %144 = load i32, ptr %143, align 8, !dbg !952
  %145 = icmp ne i32 %144, 0, !dbg !950
  br i1 %145, label %146, label %170, !dbg !950

146:                                              ; preds = %127
  %147 = load ptr, ptr %5, align 8, !dbg !953
  %148 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %147, i32 0, i32 12, !dbg !956
  %149 = load i32, ptr %148, align 8, !dbg !956
  %150 = icmp eq i32 %149, 0, !dbg !957
  br i1 %150, label %151, label %165, !dbg !957

151:                                              ; preds = %146
  %152 = load ptr, ptr %3, align 8, !dbg !958
  %153 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %152, i32 0, i32 29, !dbg !960
  %154 = load i32, ptr %153, align 8, !dbg !960
  %155 = load ptr, ptr %5, align 8, !dbg !961
  %156 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %155, i32 0, i32 12, !dbg !962
  store i32 %154, ptr %156, align 8, !dbg !963
  %157 = load ptr, ptr %5, align 8, !dbg !964
  %158 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %157, i32 0, i32 13, !dbg !965
  %159 = load i32, ptr %158, align 4, !dbg !966
  %160 = add nsw i32 %159, 1, !dbg !966
  store i32 %160, ptr %158, align 4, !dbg !966
  %161 = load ptr, ptr %5, align 8, !dbg !967
  %162 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %161, i32 0, i32 13, !dbg !968
  %163 = load i32, ptr %162, align 4, !dbg !969
  %164 = and i32 %163, 7, !dbg !969
  store i32 %164, ptr %162, align 4, !dbg !969
  br label %165, !dbg !970

165:                                              ; preds = %151, %146
  %166 = load ptr, ptr %5, align 8, !dbg !971
  %167 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %166, i32 0, i32 12, !dbg !972
  %168 = load i32, ptr %167, align 8, !dbg !973
  %169 = add i32 %168, -1, !dbg !973
  store i32 %169, ptr %167, align 8, !dbg !973
  br label %170, !dbg !974

170:                                              ; preds = %165, %127
  ret i32 1, !dbg !975
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @encode_mcu_AC_first(ptr noundef %0, ptr noundef %1) #0 !dbg !976 {
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
  %13 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !977, !DIExpression(), !978)
  store ptr %1, ptr %4, align 8
    #dbg_declare(ptr %4, !979, !DIExpression(), !980)
    #dbg_declare(ptr %5, !981, !DIExpression(), !982)
  %14 = load ptr, ptr %3, align 8, !dbg !983
  %15 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %14, i32 0, i32 59, !dbg !984
  %16 = load ptr, ptr %15, align 8, !dbg !984
  store ptr %16, ptr %5, align 8, !dbg !982
    #dbg_declare(ptr %6, !985, !DIExpression(), !986)
    #dbg_declare(ptr %7, !987, !DIExpression(), !988)
    #dbg_declare(ptr %8, !989, !DIExpression(), !990)
    #dbg_declare(ptr %9, !991, !DIExpression(), !992)
    #dbg_declare(ptr %10, !993, !DIExpression(), !994)
    #dbg_declare(ptr %11, !995, !DIExpression(), !996)
  %17 = load ptr, ptr %3, align 8, !dbg !997
  %18 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %17, i32 0, i32 48, !dbg !998
  %19 = load i32, ptr %18, align 8, !dbg !998
  store i32 %19, ptr %11, align 4, !dbg !996
    #dbg_declare(ptr %12, !999, !DIExpression(), !1000)
  %20 = load ptr, ptr %3, align 8, !dbg !1001
  %21 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %20, i32 0, i32 50, !dbg !1002
  %22 = load i32, ptr %21, align 8, !dbg !1002
  store i32 %22, ptr %12, align 4, !dbg !1000
    #dbg_declare(ptr %13, !1003, !DIExpression(), !1004)
  %23 = load ptr, ptr %3, align 8, !dbg !1005
  %24 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %23, i32 0, i32 5, !dbg !1006
  %25 = load ptr, ptr %24, align 8, !dbg !1006
  %26 = getelementptr inbounds nuw %struct.jpeg_destination_mgr, ptr %25, i32 0, i32 0, !dbg !1007
  %27 = load ptr, ptr %26, align 8, !dbg !1007
  %28 = load ptr, ptr %5, align 8, !dbg !1008
  %29 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %28, i32 0, i32 2, !dbg !1009
  store ptr %27, ptr %29, align 8, !dbg !1010
  %30 = load ptr, ptr %3, align 8, !dbg !1011
  %31 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %30, i32 0, i32 5, !dbg !1012
  %32 = load ptr, ptr %31, align 8, !dbg !1012
  %33 = getelementptr inbounds nuw %struct.jpeg_destination_mgr, ptr %32, i32 0, i32 1, !dbg !1013
  %34 = load i64, ptr %33, align 8, !dbg !1013
  %35 = load ptr, ptr %5, align 8, !dbg !1014
  %36 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %35, i32 0, i32 3, !dbg !1015
  store i64 %34, ptr %36, align 8, !dbg !1016
  %37 = load ptr, ptr %3, align 8, !dbg !1017
  %38 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %37, i32 0, i32 29, !dbg !1019
  %39 = load i32, ptr %38, align 8, !dbg !1019
  %40 = icmp ne i32 %39, 0, !dbg !1017
  br i1 %40, label %41, label %52, !dbg !1017

41:                                               ; preds = %2
  %42 = load ptr, ptr %5, align 8, !dbg !1020
  %43 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %42, i32 0, i32 12, !dbg !1022
  %44 = load i32, ptr %43, align 8, !dbg !1022
  %45 = icmp eq i32 %44, 0, !dbg !1023
  br i1 %45, label %46, label %51, !dbg !1023

46:                                               ; preds = %41
  %47 = load ptr, ptr %5, align 8, !dbg !1024
  %48 = load ptr, ptr %5, align 8, !dbg !1025
  %49 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %48, i32 0, i32 13, !dbg !1026
  %50 = load i32, ptr %49, align 4, !dbg !1026
  call void @emit_restart(ptr noundef %47, i32 noundef %50), !dbg !1027
  br label %51, !dbg !1027

51:                                               ; preds = %46, %41
  br label %52, !dbg !1028

52:                                               ; preds = %51, %2
  %53 = load ptr, ptr %4, align 8, !dbg !1029
  %54 = getelementptr inbounds ptr, ptr %53, i64 0, !dbg !1029
  %55 = load ptr, ptr %54, align 8, !dbg !1029
  store ptr %55, ptr %13, align 8, !dbg !1030
  store i32 0, ptr %9, align 4, !dbg !1031
  %56 = load ptr, ptr %3, align 8, !dbg !1032
  %57 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %56, i32 0, i32 47, !dbg !1034
  %58 = load i32, ptr %57, align 4, !dbg !1034
  store i32 %58, ptr %10, align 4, !dbg !1035
  br label %59, !dbg !1036

59:                                               ; preds = %137, %52
  %60 = load i32, ptr %10, align 4, !dbg !1037
  %61 = load i32, ptr %11, align 4, !dbg !1039
  %62 = icmp sle i32 %60, %61, !dbg !1040
  br i1 %62, label %63, label %140, !dbg !1041

63:                                               ; preds = %59
  %64 = load ptr, ptr %13, align 8, !dbg !1042
  %65 = load i32, ptr %10, align 4, !dbg !1045
  %66 = sext i32 %65 to i64, !dbg !1046
  %67 = getelementptr inbounds [0 x i32], ptr @jpeg_natural_order, i64 0, i64 %66, !dbg !1046
  %68 = load i32, ptr %67, align 4, !dbg !1046
  %69 = sext i32 %68 to i64, !dbg !1047
  %70 = getelementptr inbounds [64 x i16], ptr %64, i64 0, i64 %69, !dbg !1047
  %71 = load i16, ptr %70, align 2, !dbg !1047
  %72 = sext i16 %71 to i32, !dbg !1047
  store i32 %72, ptr %6, align 4, !dbg !1048
  %73 = icmp eq i32 %72, 0, !dbg !1049
  br i1 %73, label %74, label %77, !dbg !1049

74:                                               ; preds = %63
  %75 = load i32, ptr %9, align 4, !dbg !1050
  %76 = add nsw i32 %75, 1, !dbg !1050
  store i32 %76, ptr %9, align 4, !dbg !1050
  br label %137, !dbg !1052

77:                                               ; preds = %63
  %78 = load i32, ptr %6, align 4, !dbg !1053
  %79 = icmp slt i32 %78, 0, !dbg !1055
  br i1 %79, label %80, label %88, !dbg !1055

80:                                               ; preds = %77
  %81 = load i32, ptr %6, align 4, !dbg !1056
  %82 = sub nsw i32 0, %81, !dbg !1058
  store i32 %82, ptr %6, align 4, !dbg !1059
  %83 = load i32, ptr %12, align 4, !dbg !1060
  %84 = load i32, ptr %6, align 4, !dbg !1061
  %85 = ashr i32 %84, %83, !dbg !1061
  store i32 %85, ptr %6, align 4, !dbg !1061
  %86 = load i32, ptr %6, align 4, !dbg !1062
  %87 = xor i32 %86, -1, !dbg !1063
  store i32 %87, ptr %7, align 4, !dbg !1064
  br label %93, !dbg !1065

88:                                               ; preds = %77
  %89 = load i32, ptr %12, align 4, !dbg !1066
  %90 = load i32, ptr %6, align 4, !dbg !1068
  %91 = ashr i32 %90, %89, !dbg !1068
  store i32 %91, ptr %6, align 4, !dbg !1068
  %92 = load i32, ptr %6, align 4, !dbg !1069
  store i32 %92, ptr %7, align 4, !dbg !1070
  br label %93

93:                                               ; preds = %88, %80
  %94 = load i32, ptr %6, align 4, !dbg !1071
  %95 = icmp eq i32 %94, 0, !dbg !1073
  br i1 %95, label %96, label %99, !dbg !1073

96:                                               ; preds = %93
  %97 = load i32, ptr %9, align 4, !dbg !1074
  %98 = add nsw i32 %97, 1, !dbg !1074
  store i32 %98, ptr %9, align 4, !dbg !1074
  br label %137, !dbg !1076

99:                                               ; preds = %93
  %100 = load ptr, ptr %5, align 8, !dbg !1077
  %101 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %100, i32 0, i32 9, !dbg !1079
  %102 = load i32, ptr %101, align 4, !dbg !1079
  %103 = icmp ugt i32 %102, 0, !dbg !1080
  br i1 %103, label %104, label %106, !dbg !1080

104:                                              ; preds = %99
  %105 = load ptr, ptr %5, align 8, !dbg !1081
  call void @emit_eobrun(ptr noundef %105), !dbg !1082
  br label %106, !dbg !1082

106:                                              ; preds = %104, %99
  br label %107, !dbg !1083

107:                                              ; preds = %110, %106
  %108 = load i32, ptr %9, align 4, !dbg !1084
  %109 = icmp sgt i32 %108, 15, !dbg !1085
  br i1 %109, label %110, label %117, !dbg !1083

110:                                              ; preds = %107
  %111 = load ptr, ptr %5, align 8, !dbg !1086
  %112 = load ptr, ptr %5, align 8, !dbg !1088
  %113 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %112, i32 0, i32 8, !dbg !1089
  %114 = load i32, ptr %113, align 8, !dbg !1089
  call void @emit_symbol(ptr noundef %111, i32 noundef %114, i32 noundef 240), !dbg !1090
  %115 = load i32, ptr %9, align 4, !dbg !1091
  %116 = sub nsw i32 %115, 16, !dbg !1091
  store i32 %116, ptr %9, align 4, !dbg !1091
  br label %107, !dbg !1083, !llvm.loop !1092

117:                                              ; preds = %107
  store i32 1, ptr %8, align 4, !dbg !1094
  br label %118, !dbg !1095

118:                                              ; preds = %122, %117
  %119 = load i32, ptr %6, align 4, !dbg !1096
  %120 = ashr i32 %119, 1, !dbg !1096
  store i32 %120, ptr %6, align 4, !dbg !1096
  %121 = icmp ne i32 %120, 0, !dbg !1095
  br i1 %121, label %122, label %125, !dbg !1095

122:                                              ; preds = %118
  %123 = load i32, ptr %8, align 4, !dbg !1097
  %124 = add nsw i32 %123, 1, !dbg !1097
  store i32 %124, ptr %8, align 4, !dbg !1097
  br label %118, !dbg !1095, !llvm.loop !1098

125:                                              ; preds = %118
  %126 = load ptr, ptr %5, align 8, !dbg !1099
  %127 = load ptr, ptr %5, align 8, !dbg !1100
  %128 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %127, i32 0, i32 8, !dbg !1101
  %129 = load i32, ptr %128, align 8, !dbg !1101
  %130 = load i32, ptr %9, align 4, !dbg !1102
  %131 = shl i32 %130, 4, !dbg !1103
  %132 = load i32, ptr %8, align 4, !dbg !1104
  %133 = add nsw i32 %131, %132, !dbg !1105
  call void @emit_symbol(ptr noundef %126, i32 noundef %129, i32 noundef %133), !dbg !1106
  %134 = load ptr, ptr %5, align 8, !dbg !1107
  %135 = load i32, ptr %7, align 4, !dbg !1108
  %136 = load i32, ptr %8, align 4, !dbg !1109
  call void @emit_bits(ptr noundef %134, i32 noundef %135, i32 noundef %136), !dbg !1110
  store i32 0, ptr %9, align 4, !dbg !1111
  br label %137, !dbg !1112

137:                                              ; preds = %125, %96, %74
  %138 = load i32, ptr %10, align 4, !dbg !1113
  %139 = add nsw i32 %138, 1, !dbg !1113
  store i32 %139, ptr %10, align 4, !dbg !1113
  br label %59, !dbg !1114, !llvm.loop !1115

140:                                              ; preds = %59
  %141 = load i32, ptr %9, align 4, !dbg !1117
  %142 = icmp sgt i32 %141, 0, !dbg !1119
  br i1 %142, label %143, label %155, !dbg !1119

143:                                              ; preds = %140
  %144 = load ptr, ptr %5, align 8, !dbg !1120
  %145 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %144, i32 0, i32 9, !dbg !1122
  %146 = load i32, ptr %145, align 4, !dbg !1123
  %147 = add i32 %146, 1, !dbg !1123
  store i32 %147, ptr %145, align 4, !dbg !1123
  %148 = load ptr, ptr %5, align 8, !dbg !1124
  %149 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %148, i32 0, i32 9, !dbg !1126
  %150 = load i32, ptr %149, align 4, !dbg !1126
  %151 = icmp eq i32 %150, 32767, !dbg !1127
  br i1 %151, label %152, label %154, !dbg !1127

152:                                              ; preds = %143
  %153 = load ptr, ptr %5, align 8, !dbg !1128
  call void @emit_eobrun(ptr noundef %153), !dbg !1129
  br label %154, !dbg !1129

154:                                              ; preds = %152, %143
  br label %155, !dbg !1130

155:                                              ; preds = %154, %140
  %156 = load ptr, ptr %5, align 8, !dbg !1131
  %157 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %156, i32 0, i32 2, !dbg !1132
  %158 = load ptr, ptr %157, align 8, !dbg !1132
  %159 = load ptr, ptr %3, align 8, !dbg !1133
  %160 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %159, i32 0, i32 5, !dbg !1134
  %161 = load ptr, ptr %160, align 8, !dbg !1134
  %162 = getelementptr inbounds nuw %struct.jpeg_destination_mgr, ptr %161, i32 0, i32 0, !dbg !1135
  store ptr %158, ptr %162, align 8, !dbg !1136
  %163 = load ptr, ptr %5, align 8, !dbg !1137
  %164 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %163, i32 0, i32 3, !dbg !1138
  %165 = load i64, ptr %164, align 8, !dbg !1138
  %166 = load ptr, ptr %3, align 8, !dbg !1139
  %167 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %166, i32 0, i32 5, !dbg !1140
  %168 = load ptr, ptr %167, align 8, !dbg !1140
  %169 = getelementptr inbounds nuw %struct.jpeg_destination_mgr, ptr %168, i32 0, i32 1, !dbg !1141
  store i64 %165, ptr %169, align 8, !dbg !1142
  %170 = load ptr, ptr %3, align 8, !dbg !1143
  %171 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %170, i32 0, i32 29, !dbg !1145
  %172 = load i32, ptr %171, align 8, !dbg !1145
  %173 = icmp ne i32 %172, 0, !dbg !1143
  br i1 %173, label %174, label %198, !dbg !1143

174:                                              ; preds = %155
  %175 = load ptr, ptr %5, align 8, !dbg !1146
  %176 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %175, i32 0, i32 12, !dbg !1149
  %177 = load i32, ptr %176, align 8, !dbg !1149
  %178 = icmp eq i32 %177, 0, !dbg !1150
  br i1 %178, label %179, label %193, !dbg !1150

179:                                              ; preds = %174
  %180 = load ptr, ptr %3, align 8, !dbg !1151
  %181 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %180, i32 0, i32 29, !dbg !1153
  %182 = load i32, ptr %181, align 8, !dbg !1153
  %183 = load ptr, ptr %5, align 8, !dbg !1154
  %184 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %183, i32 0, i32 12, !dbg !1155
  store i32 %182, ptr %184, align 8, !dbg !1156
  %185 = load ptr, ptr %5, align 8, !dbg !1157
  %186 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %185, i32 0, i32 13, !dbg !1158
  %187 = load i32, ptr %186, align 4, !dbg !1159
  %188 = add nsw i32 %187, 1, !dbg !1159
  store i32 %188, ptr %186, align 4, !dbg !1159
  %189 = load ptr, ptr %5, align 8, !dbg !1160
  %190 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %189, i32 0, i32 13, !dbg !1161
  %191 = load i32, ptr %190, align 4, !dbg !1162
  %192 = and i32 %191, 7, !dbg !1162
  store i32 %192, ptr %190, align 4, !dbg !1162
  br label %193, !dbg !1163

193:                                              ; preds = %179, %174
  %194 = load ptr, ptr %5, align 8, !dbg !1164
  %195 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %194, i32 0, i32 12, !dbg !1165
  %196 = load i32, ptr %195, align 8, !dbg !1166
  %197 = add i32 %196, -1, !dbg !1166
  store i32 %197, ptr %195, align 8, !dbg !1166
  br label %198, !dbg !1167

198:                                              ; preds = %193, %155
  ret i32 1, !dbg !1168
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @encode_mcu_DC_refine(ptr noundef %0, ptr noundef %1) #0 !dbg !1169 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !1170, !DIExpression(), !1171)
  store ptr %1, ptr %4, align 8
    #dbg_declare(ptr %4, !1172, !DIExpression(), !1173)
    #dbg_declare(ptr %5, !1174, !DIExpression(), !1175)
  %10 = load ptr, ptr %3, align 8, !dbg !1176
  %11 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %10, i32 0, i32 59, !dbg !1177
  %12 = load ptr, ptr %11, align 8, !dbg !1177
  store ptr %12, ptr %5, align 8, !dbg !1175
    #dbg_declare(ptr %6, !1178, !DIExpression(), !1179)
    #dbg_declare(ptr %7, !1180, !DIExpression(), !1181)
    #dbg_declare(ptr %8, !1182, !DIExpression(), !1183)
  %13 = load ptr, ptr %3, align 8, !dbg !1184
  %14 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %13, i32 0, i32 50, !dbg !1185
  %15 = load i32, ptr %14, align 8, !dbg !1185
  store i32 %15, ptr %8, align 4, !dbg !1183
    #dbg_declare(ptr %9, !1186, !DIExpression(), !1187)
  %16 = load ptr, ptr %3, align 8, !dbg !1188
  %17 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %16, i32 0, i32 5, !dbg !1189
  %18 = load ptr, ptr %17, align 8, !dbg !1189
  %19 = getelementptr inbounds nuw %struct.jpeg_destination_mgr, ptr %18, i32 0, i32 0, !dbg !1190
  %20 = load ptr, ptr %19, align 8, !dbg !1190
  %21 = load ptr, ptr %5, align 8, !dbg !1191
  %22 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %21, i32 0, i32 2, !dbg !1192
  store ptr %20, ptr %22, align 8, !dbg !1193
  %23 = load ptr, ptr %3, align 8, !dbg !1194
  %24 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %23, i32 0, i32 5, !dbg !1195
  %25 = load ptr, ptr %24, align 8, !dbg !1195
  %26 = getelementptr inbounds nuw %struct.jpeg_destination_mgr, ptr %25, i32 0, i32 1, !dbg !1196
  %27 = load i64, ptr %26, align 8, !dbg !1196
  %28 = load ptr, ptr %5, align 8, !dbg !1197
  %29 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %28, i32 0, i32 3, !dbg !1198
  store i64 %27, ptr %29, align 8, !dbg !1199
  %30 = load ptr, ptr %3, align 8, !dbg !1200
  %31 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %30, i32 0, i32 29, !dbg !1202
  %32 = load i32, ptr %31, align 8, !dbg !1202
  %33 = icmp ne i32 %32, 0, !dbg !1200
  br i1 %33, label %34, label %45, !dbg !1200

34:                                               ; preds = %2
  %35 = load ptr, ptr %5, align 8, !dbg !1203
  %36 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %35, i32 0, i32 12, !dbg !1205
  %37 = load i32, ptr %36, align 8, !dbg !1205
  %38 = icmp eq i32 %37, 0, !dbg !1206
  br i1 %38, label %39, label %44, !dbg !1206

39:                                               ; preds = %34
  %40 = load ptr, ptr %5, align 8, !dbg !1207
  %41 = load ptr, ptr %5, align 8, !dbg !1208
  %42 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %41, i32 0, i32 13, !dbg !1209
  %43 = load i32, ptr %42, align 4, !dbg !1209
  call void @emit_restart(ptr noundef %40, i32 noundef %43), !dbg !1210
  br label %44, !dbg !1210

44:                                               ; preds = %39, %34
  br label %45, !dbg !1211

45:                                               ; preds = %44, %2
  store i32 0, ptr %7, align 4, !dbg !1212
  br label %46, !dbg !1214

46:                                               ; preds = %66, %45
  %47 = load i32, ptr %7, align 4, !dbg !1215
  %48 = load ptr, ptr %3, align 8, !dbg !1217
  %49 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %48, i32 0, i32 45, !dbg !1218
  %50 = load i32, ptr %49, align 8, !dbg !1218
  %51 = icmp slt i32 %47, %50, !dbg !1219
  br i1 %51, label %52, label %69, !dbg !1220

52:                                               ; preds = %46
  %53 = load ptr, ptr %4, align 8, !dbg !1221
  %54 = load i32, ptr %7, align 4, !dbg !1223
  %55 = sext i32 %54 to i64, !dbg !1221
  %56 = getelementptr inbounds ptr, ptr %53, i64 %55, !dbg !1221
  %57 = load ptr, ptr %56, align 8, !dbg !1221
  store ptr %57, ptr %9, align 8, !dbg !1224
  %58 = load ptr, ptr %9, align 8, !dbg !1225
  %59 = getelementptr inbounds [64 x i16], ptr %58, i64 0, i64 0, !dbg !1226
  %60 = load i16, ptr %59, align 2, !dbg !1226
  %61 = sext i16 %60 to i32, !dbg !1226
  store i32 %61, ptr %6, align 4, !dbg !1227
  %62 = load ptr, ptr %5, align 8, !dbg !1228
  %63 = load i32, ptr %6, align 4, !dbg !1229
  %64 = load i32, ptr %8, align 4, !dbg !1230
  %65 = ashr i32 %63, %64, !dbg !1231
  call void @emit_bits(ptr noundef %62, i32 noundef %65, i32 noundef 1), !dbg !1232
  br label %66, !dbg !1233

66:                                               ; preds = %52
  %67 = load i32, ptr %7, align 4, !dbg !1234
  %68 = add nsw i32 %67, 1, !dbg !1234
  store i32 %68, ptr %7, align 4, !dbg !1234
  br label %46, !dbg !1235, !llvm.loop !1236

69:                                               ; preds = %46
  %70 = load ptr, ptr %5, align 8, !dbg !1238
  %71 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %70, i32 0, i32 2, !dbg !1239
  %72 = load ptr, ptr %71, align 8, !dbg !1239
  %73 = load ptr, ptr %3, align 8, !dbg !1240
  %74 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %73, i32 0, i32 5, !dbg !1241
  %75 = load ptr, ptr %74, align 8, !dbg !1241
  %76 = getelementptr inbounds nuw %struct.jpeg_destination_mgr, ptr %75, i32 0, i32 0, !dbg !1242
  store ptr %72, ptr %76, align 8, !dbg !1243
  %77 = load ptr, ptr %5, align 8, !dbg !1244
  %78 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %77, i32 0, i32 3, !dbg !1245
  %79 = load i64, ptr %78, align 8, !dbg !1245
  %80 = load ptr, ptr %3, align 8, !dbg !1246
  %81 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %80, i32 0, i32 5, !dbg !1247
  %82 = load ptr, ptr %81, align 8, !dbg !1247
  %83 = getelementptr inbounds nuw %struct.jpeg_destination_mgr, ptr %82, i32 0, i32 1, !dbg !1248
  store i64 %79, ptr %83, align 8, !dbg !1249
  %84 = load ptr, ptr %3, align 8, !dbg !1250
  %85 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %84, i32 0, i32 29, !dbg !1252
  %86 = load i32, ptr %85, align 8, !dbg !1252
  %87 = icmp ne i32 %86, 0, !dbg !1250
  br i1 %87, label %88, label %112, !dbg !1250

88:                                               ; preds = %69
  %89 = load ptr, ptr %5, align 8, !dbg !1253
  %90 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %89, i32 0, i32 12, !dbg !1256
  %91 = load i32, ptr %90, align 8, !dbg !1256
  %92 = icmp eq i32 %91, 0, !dbg !1257
  br i1 %92, label %93, label %107, !dbg !1257

93:                                               ; preds = %88
  %94 = load ptr, ptr %3, align 8, !dbg !1258
  %95 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %94, i32 0, i32 29, !dbg !1260
  %96 = load i32, ptr %95, align 8, !dbg !1260
  %97 = load ptr, ptr %5, align 8, !dbg !1261
  %98 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %97, i32 0, i32 12, !dbg !1262
  store i32 %96, ptr %98, align 8, !dbg !1263
  %99 = load ptr, ptr %5, align 8, !dbg !1264
  %100 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %99, i32 0, i32 13, !dbg !1265
  %101 = load i32, ptr %100, align 4, !dbg !1266
  %102 = add nsw i32 %101, 1, !dbg !1266
  store i32 %102, ptr %100, align 4, !dbg !1266
  %103 = load ptr, ptr %5, align 8, !dbg !1267
  %104 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %103, i32 0, i32 13, !dbg !1268
  %105 = load i32, ptr %104, align 4, !dbg !1269
  %106 = and i32 %105, 7, !dbg !1269
  store i32 %106, ptr %104, align 4, !dbg !1269
  br label %107, !dbg !1270

107:                                              ; preds = %93, %88
  %108 = load ptr, ptr %5, align 8, !dbg !1271
  %109 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %108, i32 0, i32 12, !dbg !1272
  %110 = load i32, ptr %109, align 8, !dbg !1273
  %111 = add i32 %110, -1, !dbg !1273
  store i32 %111, ptr %109, align 8, !dbg !1273
  br label %112, !dbg !1274

112:                                              ; preds = %107, %69
  ret i32 1, !dbg !1275
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @encode_mcu_AC_refine(ptr noundef %0, ptr noundef %1) #0 !dbg !1276 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca ptr, align 8
  %15 = alloca [64 x i32], align 16
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !1277, !DIExpression(), !1278)
  store ptr %1, ptr %4, align 8
    #dbg_declare(ptr %4, !1279, !DIExpression(), !1280)
    #dbg_declare(ptr %5, !1281, !DIExpression(), !1282)
  %16 = load ptr, ptr %3, align 8, !dbg !1283
  %17 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %16, i32 0, i32 59, !dbg !1284
  %18 = load ptr, ptr %17, align 8, !dbg !1284
  store ptr %18, ptr %5, align 8, !dbg !1282
    #dbg_declare(ptr %6, !1285, !DIExpression(), !1286)
    #dbg_declare(ptr %7, !1287, !DIExpression(), !1288)
    #dbg_declare(ptr %8, !1289, !DIExpression(), !1290)
    #dbg_declare(ptr %9, !1291, !DIExpression(), !1292)
    #dbg_declare(ptr %10, !1293, !DIExpression(), !1294)
    #dbg_declare(ptr %11, !1295, !DIExpression(), !1296)
    #dbg_declare(ptr %12, !1297, !DIExpression(), !1298)
  %19 = load ptr, ptr %3, align 8, !dbg !1299
  %20 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %19, i32 0, i32 48, !dbg !1300
  %21 = load i32, ptr %20, align 8, !dbg !1300
  store i32 %21, ptr %12, align 4, !dbg !1298
    #dbg_declare(ptr %13, !1301, !DIExpression(), !1302)
  %22 = load ptr, ptr %3, align 8, !dbg !1303
  %23 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %22, i32 0, i32 50, !dbg !1304
  %24 = load i32, ptr %23, align 8, !dbg !1304
  store i32 %24, ptr %13, align 4, !dbg !1302
    #dbg_declare(ptr %14, !1305, !DIExpression(), !1306)
    #dbg_declare(ptr %15, !1307, !DIExpression(), !1309)
  %25 = load ptr, ptr %3, align 8, !dbg !1310
  %26 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %25, i32 0, i32 5, !dbg !1311
  %27 = load ptr, ptr %26, align 8, !dbg !1311
  %28 = getelementptr inbounds nuw %struct.jpeg_destination_mgr, ptr %27, i32 0, i32 0, !dbg !1312
  %29 = load ptr, ptr %28, align 8, !dbg !1312
  %30 = load ptr, ptr %5, align 8, !dbg !1313
  %31 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %30, i32 0, i32 2, !dbg !1314
  store ptr %29, ptr %31, align 8, !dbg !1315
  %32 = load ptr, ptr %3, align 8, !dbg !1316
  %33 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %32, i32 0, i32 5, !dbg !1317
  %34 = load ptr, ptr %33, align 8, !dbg !1317
  %35 = getelementptr inbounds nuw %struct.jpeg_destination_mgr, ptr %34, i32 0, i32 1, !dbg !1318
  %36 = load i64, ptr %35, align 8, !dbg !1318
  %37 = load ptr, ptr %5, align 8, !dbg !1319
  %38 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %37, i32 0, i32 3, !dbg !1320
  store i64 %36, ptr %38, align 8, !dbg !1321
  %39 = load ptr, ptr %3, align 8, !dbg !1322
  %40 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %39, i32 0, i32 29, !dbg !1324
  %41 = load i32, ptr %40, align 8, !dbg !1324
  %42 = icmp ne i32 %41, 0, !dbg !1322
  br i1 %42, label %43, label %54, !dbg !1322

43:                                               ; preds = %2
  %44 = load ptr, ptr %5, align 8, !dbg !1325
  %45 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %44, i32 0, i32 12, !dbg !1327
  %46 = load i32, ptr %45, align 8, !dbg !1327
  %47 = icmp eq i32 %46, 0, !dbg !1328
  br i1 %47, label %48, label %53, !dbg !1328

48:                                               ; preds = %43
  %49 = load ptr, ptr %5, align 8, !dbg !1329
  %50 = load ptr, ptr %5, align 8, !dbg !1330
  %51 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %50, i32 0, i32 13, !dbg !1331
  %52 = load i32, ptr %51, align 4, !dbg !1331
  call void @emit_restart(ptr noundef %49, i32 noundef %52), !dbg !1332
  br label %53, !dbg !1332

53:                                               ; preds = %48, %43
  br label %54, !dbg !1333

54:                                               ; preds = %53, %2
  %55 = load ptr, ptr %4, align 8, !dbg !1334
  %56 = getelementptr inbounds ptr, ptr %55, i64 0, !dbg !1334
  %57 = load ptr, ptr %56, align 8, !dbg !1334
  store ptr %57, ptr %14, align 8, !dbg !1335
  store i32 0, ptr %9, align 4, !dbg !1336
  %58 = load ptr, ptr %3, align 8, !dbg !1337
  %59 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %58, i32 0, i32 47, !dbg !1339
  %60 = load i32, ptr %59, align 4, !dbg !1339
  store i32 %60, ptr %8, align 4, !dbg !1340
  br label %61, !dbg !1341

61:                                               ; preds = %93, %54
  %62 = load i32, ptr %8, align 4, !dbg !1342
  %63 = load i32, ptr %12, align 4, !dbg !1344
  %64 = icmp sle i32 %62, %63, !dbg !1345
  br i1 %64, label %65, label %96, !dbg !1346

65:                                               ; preds = %61
  %66 = load ptr, ptr %14, align 8, !dbg !1347
  %67 = load i32, ptr %8, align 4, !dbg !1349
  %68 = sext i32 %67 to i64, !dbg !1350
  %69 = getelementptr inbounds [0 x i32], ptr @jpeg_natural_order, i64 0, i64 %68, !dbg !1350
  %70 = load i32, ptr %69, align 4, !dbg !1350
  %71 = sext i32 %70 to i64, !dbg !1351
  %72 = getelementptr inbounds [64 x i16], ptr %66, i64 0, i64 %71, !dbg !1351
  %73 = load i16, ptr %72, align 2, !dbg !1351
  %74 = sext i16 %73 to i32, !dbg !1351
  store i32 %74, ptr %6, align 4, !dbg !1352
  %75 = load i32, ptr %6, align 4, !dbg !1353
  %76 = icmp slt i32 %75, 0, !dbg !1355
  br i1 %76, label %77, label %80, !dbg !1355

77:                                               ; preds = %65
  %78 = load i32, ptr %6, align 4, !dbg !1356
  %79 = sub nsw i32 0, %78, !dbg !1357
  store i32 %79, ptr %6, align 4, !dbg !1358
  br label %80, !dbg !1359

80:                                               ; preds = %77, %65
  %81 = load i32, ptr %13, align 4, !dbg !1360
  %82 = load i32, ptr %6, align 4, !dbg !1361
  %83 = ashr i32 %82, %81, !dbg !1361
  store i32 %83, ptr %6, align 4, !dbg !1361
  %84 = load i32, ptr %6, align 4, !dbg !1362
  %85 = load i32, ptr %8, align 4, !dbg !1363
  %86 = sext i32 %85 to i64, !dbg !1364
  %87 = getelementptr inbounds [64 x i32], ptr %15, i64 0, i64 %86, !dbg !1364
  store i32 %84, ptr %87, align 4, !dbg !1365
  %88 = load i32, ptr %6, align 4, !dbg !1366
  %89 = icmp eq i32 %88, 1, !dbg !1368
  br i1 %89, label %90, label %92, !dbg !1368

90:                                               ; preds = %80
  %91 = load i32, ptr %8, align 4, !dbg !1369
  store i32 %91, ptr %9, align 4, !dbg !1370
  br label %92, !dbg !1371

92:                                               ; preds = %90, %80
  br label %93, !dbg !1372

93:                                               ; preds = %92
  %94 = load i32, ptr %8, align 4, !dbg !1373
  %95 = add nsw i32 %94, 1, !dbg !1373
  store i32 %95, ptr %8, align 4, !dbg !1373
  br label %61, !dbg !1374, !llvm.loop !1375

96:                                               ; preds = %61
  store i32 0, ptr %7, align 4, !dbg !1377
  store i32 0, ptr %11, align 4, !dbg !1378
  %97 = load ptr, ptr %5, align 8, !dbg !1379
  %98 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %97, i32 0, i32 11, !dbg !1380
  %99 = load ptr, ptr %98, align 8, !dbg !1380
  %100 = load ptr, ptr %5, align 8, !dbg !1381
  %101 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %100, i32 0, i32 10, !dbg !1382
  %102 = load i32, ptr %101, align 8, !dbg !1382
  %103 = zext i32 %102 to i64, !dbg !1383
  %104 = getelementptr inbounds nuw i8, ptr %99, i64 %103, !dbg !1383
  store ptr %104, ptr %10, align 8, !dbg !1384
  %105 = load ptr, ptr %3, align 8, !dbg !1385
  %106 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %105, i32 0, i32 47, !dbg !1387
  %107 = load i32, ptr %106, align 4, !dbg !1387
  store i32 %107, ptr %8, align 4, !dbg !1388
  br label %108, !dbg !1389

108:                                              ; preds = %186, %96
  %109 = load i32, ptr %8, align 4, !dbg !1390
  %110 = load i32, ptr %12, align 4, !dbg !1392
  %111 = icmp sle i32 %109, %110, !dbg !1393
  br i1 %111, label %112, label %189, !dbg !1394

112:                                              ; preds = %108
  %113 = load i32, ptr %8, align 4, !dbg !1395
  %114 = sext i32 %113 to i64, !dbg !1398
  %115 = getelementptr inbounds [64 x i32], ptr %15, i64 0, i64 %114, !dbg !1398
  %116 = load i32, ptr %115, align 4, !dbg !1398
  store i32 %116, ptr %6, align 4, !dbg !1399
  %117 = icmp eq i32 %116, 0, !dbg !1400
  br i1 %117, label %118, label %121, !dbg !1400

118:                                              ; preds = %112
  %119 = load i32, ptr %7, align 4, !dbg !1401
  %120 = add nsw i32 %119, 1, !dbg !1401
  store i32 %120, ptr %7, align 4, !dbg !1401
  br label %186, !dbg !1403

121:                                              ; preds = %112
  br label %122, !dbg !1404

122:                                              ; preds = %131, %121
  %123 = load i32, ptr %7, align 4, !dbg !1405
  %124 = icmp sgt i32 %123, 15, !dbg !1406
  br i1 %124, label %125, label %129, !dbg !1407

125:                                              ; preds = %122
  %126 = load i32, ptr %8, align 4, !dbg !1408
  %127 = load i32, ptr %9, align 4, !dbg !1409
  %128 = icmp sle i32 %126, %127, !dbg !1410
  br label %129

129:                                              ; preds = %125, %122
  %130 = phi i1 [ false, %122 ], [ %128, %125 ], !dbg !1411
  br i1 %130, label %131, label %145, !dbg !1404

131:                                              ; preds = %129
  %132 = load ptr, ptr %5, align 8, !dbg !1412
  call void @emit_eobrun(ptr noundef %132), !dbg !1414
  %133 = load ptr, ptr %5, align 8, !dbg !1415
  %134 = load ptr, ptr %5, align 8, !dbg !1416
  %135 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %134, i32 0, i32 8, !dbg !1417
  %136 = load i32, ptr %135, align 8, !dbg !1417
  call void @emit_symbol(ptr noundef %133, i32 noundef %136, i32 noundef 240), !dbg !1418
  %137 = load i32, ptr %7, align 4, !dbg !1419
  %138 = sub nsw i32 %137, 16, !dbg !1419
  store i32 %138, ptr %7, align 4, !dbg !1419
  %139 = load ptr, ptr %5, align 8, !dbg !1420
  %140 = load ptr, ptr %10, align 8, !dbg !1421
  %141 = load i32, ptr %11, align 4, !dbg !1422
  call void @emit_buffered_bits(ptr noundef %139, ptr noundef %140, i32 noundef %141), !dbg !1423
  %142 = load ptr, ptr %5, align 8, !dbg !1424
  %143 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %142, i32 0, i32 11, !dbg !1425
  %144 = load ptr, ptr %143, align 8, !dbg !1425
  store ptr %144, ptr %10, align 8, !dbg !1426
  store i32 0, ptr %11, align 4, !dbg !1427
  br label %122, !dbg !1404, !llvm.loop !1428

145:                                              ; preds = %129
  %146 = load i32, ptr %6, align 4, !dbg !1430
  %147 = icmp sgt i32 %146, 1, !dbg !1432
  br i1 %147, label %148, label %157, !dbg !1432

148:                                              ; preds = %145
  %149 = load i32, ptr %6, align 4, !dbg !1433
  %150 = and i32 %149, 1, !dbg !1435
  %151 = trunc i32 %150 to i8, !dbg !1436
  %152 = load ptr, ptr %10, align 8, !dbg !1437
  %153 = load i32, ptr %11, align 4, !dbg !1438
  %154 = add i32 %153, 1, !dbg !1438
  store i32 %154, ptr %11, align 4, !dbg !1438
  %155 = zext i32 %153 to i64, !dbg !1437
  %156 = getelementptr inbounds nuw i8, ptr %152, i64 %155, !dbg !1437
  store i8 %151, ptr %156, align 1, !dbg !1439
  br label %186, !dbg !1440

157:                                              ; preds = %145
  %158 = load ptr, ptr %5, align 8, !dbg !1441
  call void @emit_eobrun(ptr noundef %158), !dbg !1442
  %159 = load ptr, ptr %5, align 8, !dbg !1443
  %160 = load ptr, ptr %5, align 8, !dbg !1444
  %161 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %160, i32 0, i32 8, !dbg !1445
  %162 = load i32, ptr %161, align 8, !dbg !1445
  %163 = load i32, ptr %7, align 4, !dbg !1446
  %164 = shl i32 %163, 4, !dbg !1447
  %165 = add nsw i32 %164, 1, !dbg !1448
  call void @emit_symbol(ptr noundef %159, i32 noundef %162, i32 noundef %165), !dbg !1449
  %166 = load ptr, ptr %14, align 8, !dbg !1450
  %167 = load i32, ptr %8, align 4, !dbg !1451
  %168 = sext i32 %167 to i64, !dbg !1452
  %169 = getelementptr inbounds [0 x i32], ptr @jpeg_natural_order, i64 0, i64 %168, !dbg !1452
  %170 = load i32, ptr %169, align 4, !dbg !1452
  %171 = sext i32 %170 to i64, !dbg !1453
  %172 = getelementptr inbounds [64 x i16], ptr %166, i64 0, i64 %171, !dbg !1453
  %173 = load i16, ptr %172, align 2, !dbg !1453
  %174 = sext i16 %173 to i32, !dbg !1453
  %175 = icmp slt i32 %174, 0, !dbg !1454
  %176 = zext i1 %175 to i64, !dbg !1455
  %177 = select i1 %175, i32 0, i32 1, !dbg !1455
  store i32 %177, ptr %6, align 4, !dbg !1456
  %178 = load ptr, ptr %5, align 8, !dbg !1457
  %179 = load i32, ptr %6, align 4, !dbg !1458
  call void @emit_bits(ptr noundef %178, i32 noundef %179, i32 noundef 1), !dbg !1459
  %180 = load ptr, ptr %5, align 8, !dbg !1460
  %181 = load ptr, ptr %10, align 8, !dbg !1461
  %182 = load i32, ptr %11, align 4, !dbg !1462
  call void @emit_buffered_bits(ptr noundef %180, ptr noundef %181, i32 noundef %182), !dbg !1463
  %183 = load ptr, ptr %5, align 8, !dbg !1464
  %184 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %183, i32 0, i32 11, !dbg !1465
  %185 = load ptr, ptr %184, align 8, !dbg !1465
  store ptr %185, ptr %10, align 8, !dbg !1466
  store i32 0, ptr %11, align 4, !dbg !1467
  store i32 0, ptr %7, align 4, !dbg !1468
  br label %186, !dbg !1469

186:                                              ; preds = %157, %148, %118
  %187 = load i32, ptr %8, align 4, !dbg !1470
  %188 = add nsw i32 %187, 1, !dbg !1470
  store i32 %188, ptr %8, align 4, !dbg !1470
  br label %108, !dbg !1471, !llvm.loop !1472

189:                                              ; preds = %108
  %190 = load i32, ptr %7, align 4, !dbg !1474
  %191 = icmp sgt i32 %190, 0, !dbg !1476
  br i1 %191, label %195, label %192, !dbg !1477

192:                                              ; preds = %189
  %193 = load i32, ptr %11, align 4, !dbg !1478
  %194 = icmp ugt i32 %193, 0, !dbg !1479
  br i1 %194, label %195, label %217, !dbg !1477

195:                                              ; preds = %192, %189
  %196 = load ptr, ptr %5, align 8, !dbg !1480
  %197 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %196, i32 0, i32 9, !dbg !1482
  %198 = load i32, ptr %197, align 4, !dbg !1483
  %199 = add i32 %198, 1, !dbg !1483
  store i32 %199, ptr %197, align 4, !dbg !1483
  %200 = load i32, ptr %11, align 4, !dbg !1484
  %201 = load ptr, ptr %5, align 8, !dbg !1485
  %202 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %201, i32 0, i32 10, !dbg !1486
  %203 = load i32, ptr %202, align 8, !dbg !1487
  %204 = add i32 %203, %200, !dbg !1487
  store i32 %204, ptr %202, align 8, !dbg !1487
  %205 = load ptr, ptr %5, align 8, !dbg !1488
  %206 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %205, i32 0, i32 9, !dbg !1490
  %207 = load i32, ptr %206, align 4, !dbg !1490
  %208 = icmp eq i32 %207, 32767, !dbg !1491
  br i1 %208, label %214, label %209, !dbg !1492

209:                                              ; preds = %195
  %210 = load ptr, ptr %5, align 8, !dbg !1493
  %211 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %210, i32 0, i32 10, !dbg !1494
  %212 = load i32, ptr %211, align 8, !dbg !1494
  %213 = icmp ugt i32 %212, 937, !dbg !1495
  br i1 %213, label %214, label %216, !dbg !1492

214:                                              ; preds = %209, %195
  %215 = load ptr, ptr %5, align 8, !dbg !1496
  call void @emit_eobrun(ptr noundef %215), !dbg !1497
  br label %216, !dbg !1497

216:                                              ; preds = %214, %209
  br label %217, !dbg !1498

217:                                              ; preds = %216, %192
  %218 = load ptr, ptr %5, align 8, !dbg !1499
  %219 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %218, i32 0, i32 2, !dbg !1500
  %220 = load ptr, ptr %219, align 8, !dbg !1500
  %221 = load ptr, ptr %3, align 8, !dbg !1501
  %222 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %221, i32 0, i32 5, !dbg !1502
  %223 = load ptr, ptr %222, align 8, !dbg !1502
  %224 = getelementptr inbounds nuw %struct.jpeg_destination_mgr, ptr %223, i32 0, i32 0, !dbg !1503
  store ptr %220, ptr %224, align 8, !dbg !1504
  %225 = load ptr, ptr %5, align 8, !dbg !1505
  %226 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %225, i32 0, i32 3, !dbg !1506
  %227 = load i64, ptr %226, align 8, !dbg !1506
  %228 = load ptr, ptr %3, align 8, !dbg !1507
  %229 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %228, i32 0, i32 5, !dbg !1508
  %230 = load ptr, ptr %229, align 8, !dbg !1508
  %231 = getelementptr inbounds nuw %struct.jpeg_destination_mgr, ptr %230, i32 0, i32 1, !dbg !1509
  store i64 %227, ptr %231, align 8, !dbg !1510
  %232 = load ptr, ptr %3, align 8, !dbg !1511
  %233 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %232, i32 0, i32 29, !dbg !1513
  %234 = load i32, ptr %233, align 8, !dbg !1513
  %235 = icmp ne i32 %234, 0, !dbg !1511
  br i1 %235, label %236, label %260, !dbg !1511

236:                                              ; preds = %217
  %237 = load ptr, ptr %5, align 8, !dbg !1514
  %238 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %237, i32 0, i32 12, !dbg !1517
  %239 = load i32, ptr %238, align 8, !dbg !1517
  %240 = icmp eq i32 %239, 0, !dbg !1518
  br i1 %240, label %241, label %255, !dbg !1518

241:                                              ; preds = %236
  %242 = load ptr, ptr %3, align 8, !dbg !1519
  %243 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %242, i32 0, i32 29, !dbg !1521
  %244 = load i32, ptr %243, align 8, !dbg !1521
  %245 = load ptr, ptr %5, align 8, !dbg !1522
  %246 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %245, i32 0, i32 12, !dbg !1523
  store i32 %244, ptr %246, align 8, !dbg !1524
  %247 = load ptr, ptr %5, align 8, !dbg !1525
  %248 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %247, i32 0, i32 13, !dbg !1526
  %249 = load i32, ptr %248, align 4, !dbg !1527
  %250 = add nsw i32 %249, 1, !dbg !1527
  store i32 %250, ptr %248, align 4, !dbg !1527
  %251 = load ptr, ptr %5, align 8, !dbg !1528
  %252 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %251, i32 0, i32 13, !dbg !1529
  %253 = load i32, ptr %252, align 4, !dbg !1530
  %254 = and i32 %253, 7, !dbg !1530
  store i32 %254, ptr %252, align 4, !dbg !1530
  br label %255, !dbg !1531

255:                                              ; preds = %241, %236
  %256 = load ptr, ptr %5, align 8, !dbg !1532
  %257 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %256, i32 0, i32 12, !dbg !1533
  %258 = load i32, ptr %257, align 8, !dbg !1534
  %259 = add i32 %258, -1, !dbg !1534
  store i32 %259, ptr %257, align 8, !dbg !1534
  br label %260, !dbg !1535

260:                                              ; preds = %255, %217
  ret i32 1, !dbg !1536
}

; Function Attrs: noinline nounwind uwtable
define internal void @finish_pass_gather_phuff(ptr noundef %0) #0 !dbg !1537 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca [4 x i32], align 16
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !1538, !DIExpression(), !1539)
    #dbg_declare(ptr %3, !1540, !DIExpression(), !1541)
  %10 = load ptr, ptr %2, align 8, !dbg !1542
  %11 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %10, i32 0, i32 59, !dbg !1543
  %12 = load ptr, ptr %11, align 8, !dbg !1543
  store ptr %12, ptr %3, align 8, !dbg !1541
    #dbg_declare(ptr %4, !1544, !DIExpression(), !1545)
    #dbg_declare(ptr %5, !1546, !DIExpression(), !1547)
    #dbg_declare(ptr %6, !1548, !DIExpression(), !1549)
    #dbg_declare(ptr %7, !1550, !DIExpression(), !1551)
    #dbg_declare(ptr %8, !1552, !DIExpression(), !1554)
    #dbg_declare(ptr %9, !1555, !DIExpression(), !1557)
  %13 = load ptr, ptr %3, align 8, !dbg !1558
  call void @emit_eobrun(ptr noundef %13), !dbg !1559
  %14 = load ptr, ptr %2, align 8, !dbg !1560
  %15 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %14, i32 0, i32 47, !dbg !1561
  %16 = load i32, ptr %15, align 4, !dbg !1561
  %17 = icmp eq i32 %16, 0, !dbg !1562
  %18 = zext i1 %17 to i32, !dbg !1562
  store i32 %18, ptr %4, align 4, !dbg !1563
  %19 = getelementptr inbounds [4 x i32], ptr %9, i64 0, i64 0, !dbg !1564
  call void @llvm.memset.p0.i64(ptr align 16 %19, i8 0, i64 16, i1 false), !dbg !1564
  store i32 0, ptr %5, align 4, !dbg !1565
  br label %20, !dbg !1567

20:                                               ; preds = %92, %1
  %21 = load i32, ptr %5, align 4, !dbg !1568
  %22 = load ptr, ptr %2, align 8, !dbg !1570
  %23 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %22, i32 0, i32 41, !dbg !1571
  %24 = load i32, ptr %23, align 4, !dbg !1571
  %25 = icmp slt i32 %21, %24, !dbg !1572
  br i1 %25, label %26, label %95, !dbg !1573

26:                                               ; preds = %20
  %27 = load ptr, ptr %2, align 8, !dbg !1574
  %28 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %27, i32 0, i32 42, !dbg !1576
  %29 = load i32, ptr %5, align 4, !dbg !1577
  %30 = sext i32 %29 to i64, !dbg !1574
  %31 = getelementptr inbounds [4 x ptr], ptr %28, i64 0, i64 %30, !dbg !1574
  %32 = load ptr, ptr %31, align 8, !dbg !1574
  store ptr %32, ptr %7, align 8, !dbg !1578
  %33 = load i32, ptr %4, align 4, !dbg !1579
  %34 = icmp ne i32 %33, 0, !dbg !1579
  br i1 %34, label %35, label %45, !dbg !1579

35:                                               ; preds = %26
  %36 = load ptr, ptr %2, align 8, !dbg !1581
  %37 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %36, i32 0, i32 49, !dbg !1584
  %38 = load i32, ptr %37, align 4, !dbg !1584
  %39 = icmp ne i32 %38, 0, !dbg !1585
  br i1 %39, label %40, label %41, !dbg !1585

40:                                               ; preds = %35
  br label %92, !dbg !1586

41:                                               ; preds = %35
  %42 = load ptr, ptr %7, align 8, !dbg !1587
  %43 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %42, i32 0, i32 5, !dbg !1588
  %44 = load i32, ptr %43, align 4, !dbg !1588
  store i32 %44, ptr %6, align 4, !dbg !1589
  br label %49, !dbg !1590

45:                                               ; preds = %26
  %46 = load ptr, ptr %7, align 8, !dbg !1591
  %47 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %46, i32 0, i32 6, !dbg !1593
  %48 = load i32, ptr %47, align 8, !dbg !1593
  store i32 %48, ptr %6, align 4, !dbg !1594
  br label %49

49:                                               ; preds = %45, %41
  %50 = load i32, ptr %6, align 4, !dbg !1595
  %51 = sext i32 %50 to i64, !dbg !1597
  %52 = getelementptr inbounds [4 x i32], ptr %9, i64 0, i64 %51, !dbg !1597
  %53 = load i32, ptr %52, align 4, !dbg !1597
  %54 = icmp ne i32 %53, 0, !dbg !1597
  br i1 %54, label %91, label %55, !dbg !1598

55:                                               ; preds = %49
  %56 = load i32, ptr %4, align 4, !dbg !1599
  %57 = icmp ne i32 %56, 0, !dbg !1599
  br i1 %57, label %58, label %64, !dbg !1599

58:                                               ; preds = %55
  %59 = load ptr, ptr %2, align 8, !dbg !1602
  %60 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %59, i32 0, i32 16, !dbg !1603
  %61 = load i32, ptr %6, align 4, !dbg !1604
  %62 = sext i32 %61 to i64, !dbg !1602
  %63 = getelementptr inbounds [4 x ptr], ptr %60, i64 0, i64 %62, !dbg !1602
  store ptr %63, ptr %8, align 8, !dbg !1605
  br label %70, !dbg !1606

64:                                               ; preds = %55
  %65 = load ptr, ptr %2, align 8, !dbg !1607
  %66 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %65, i32 0, i32 17, !dbg !1608
  %67 = load i32, ptr %6, align 4, !dbg !1609
  %68 = sext i32 %67 to i64, !dbg !1607
  %69 = getelementptr inbounds [4 x ptr], ptr %66, i64 0, i64 %68, !dbg !1607
  store ptr %69, ptr %8, align 8, !dbg !1610
  br label %70

70:                                               ; preds = %64, %58
  %71 = load ptr, ptr %8, align 8, !dbg !1611
  %72 = load ptr, ptr %71, align 8, !dbg !1613
  %73 = icmp eq ptr %72, null, !dbg !1614
  br i1 %73, label %74, label %78, !dbg !1614

74:                                               ; preds = %70
  %75 = load ptr, ptr %2, align 8, !dbg !1615
  %76 = call ptr @jpeg_alloc_huff_table(ptr noundef %75), !dbg !1616
  %77 = load ptr, ptr %8, align 8, !dbg !1617
  store ptr %76, ptr %77, align 8, !dbg !1618
  br label %78, !dbg !1619

78:                                               ; preds = %74, %70
  %79 = load ptr, ptr %2, align 8, !dbg !1620
  %80 = load ptr, ptr %8, align 8, !dbg !1621
  %81 = load ptr, ptr %80, align 8, !dbg !1622
  %82 = load ptr, ptr %3, align 8, !dbg !1623
  %83 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %82, i32 0, i32 15, !dbg !1624
  %84 = load i32, ptr %6, align 4, !dbg !1625
  %85 = sext i32 %84 to i64, !dbg !1623
  %86 = getelementptr inbounds [4 x ptr], ptr %83, i64 0, i64 %85, !dbg !1623
  %87 = load ptr, ptr %86, align 8, !dbg !1623
  call void @jpeg_gen_optimal_table(ptr noundef %79, ptr noundef %81, ptr noundef %87), !dbg !1626
  %88 = load i32, ptr %6, align 4, !dbg !1627
  %89 = sext i32 %88 to i64, !dbg !1628
  %90 = getelementptr inbounds [4 x i32], ptr %9, i64 0, i64 %89, !dbg !1628
  store i32 1, ptr %90, align 4, !dbg !1629
  br label %91, !dbg !1630

91:                                               ; preds = %78, %49
  br label %92, !dbg !1631

92:                                               ; preds = %91, %40
  %93 = load i32, ptr %5, align 4, !dbg !1632
  %94 = add nsw i32 %93, 1, !dbg !1632
  store i32 %94, ptr %5, align 4, !dbg !1632
  br label %20, !dbg !1633, !llvm.loop !1634

95:                                               ; preds = %20
  ret void, !dbg !1636
}

; Function Attrs: noinline nounwind uwtable
define internal void @finish_pass_phuff(ptr noundef %0) #0 !dbg !1637 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !1638, !DIExpression(), !1639)
    #dbg_declare(ptr %3, !1640, !DIExpression(), !1641)
  %4 = load ptr, ptr %2, align 8, !dbg !1642
  %5 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %4, i32 0, i32 59, !dbg !1643
  %6 = load ptr, ptr %5, align 8, !dbg !1643
  store ptr %6, ptr %3, align 8, !dbg !1641
  %7 = load ptr, ptr %2, align 8, !dbg !1644
  %8 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %7, i32 0, i32 5, !dbg !1645
  %9 = load ptr, ptr %8, align 8, !dbg !1645
  %10 = getelementptr inbounds nuw %struct.jpeg_destination_mgr, ptr %9, i32 0, i32 0, !dbg !1646
  %11 = load ptr, ptr %10, align 8, !dbg !1646
  %12 = load ptr, ptr %3, align 8, !dbg !1647
  %13 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %12, i32 0, i32 2, !dbg !1648
  store ptr %11, ptr %13, align 8, !dbg !1649
  %14 = load ptr, ptr %2, align 8, !dbg !1650
  %15 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %14, i32 0, i32 5, !dbg !1651
  %16 = load ptr, ptr %15, align 8, !dbg !1651
  %17 = getelementptr inbounds nuw %struct.jpeg_destination_mgr, ptr %16, i32 0, i32 1, !dbg !1652
  %18 = load i64, ptr %17, align 8, !dbg !1652
  %19 = load ptr, ptr %3, align 8, !dbg !1653
  %20 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %19, i32 0, i32 3, !dbg !1654
  store i64 %18, ptr %20, align 8, !dbg !1655
  %21 = load ptr, ptr %3, align 8, !dbg !1656
  call void @emit_eobrun(ptr noundef %21), !dbg !1657
  %22 = load ptr, ptr %3, align 8, !dbg !1658
  call void @flush_bits(ptr noundef %22), !dbg !1659
  %23 = load ptr, ptr %3, align 8, !dbg !1660
  %24 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %23, i32 0, i32 2, !dbg !1661
  %25 = load ptr, ptr %24, align 8, !dbg !1661
  %26 = load ptr, ptr %2, align 8, !dbg !1662
  %27 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %26, i32 0, i32 5, !dbg !1663
  %28 = load ptr, ptr %27, align 8, !dbg !1663
  %29 = getelementptr inbounds nuw %struct.jpeg_destination_mgr, ptr %28, i32 0, i32 0, !dbg !1664
  store ptr %25, ptr %29, align 8, !dbg !1665
  %30 = load ptr, ptr %3, align 8, !dbg !1666
  %31 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %30, i32 0, i32 3, !dbg !1667
  %32 = load i64, ptr %31, align 8, !dbg !1667
  %33 = load ptr, ptr %2, align 8, !dbg !1668
  %34 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %33, i32 0, i32 5, !dbg !1669
  %35 = load ptr, ptr %34, align 8, !dbg !1669
  %36 = getelementptr inbounds nuw %struct.jpeg_destination_mgr, ptr %35, i32 0, i32 1, !dbg !1670
  store i64 %32, ptr %36, align 8, !dbg !1671
  ret void, !dbg !1672
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

declare void @jpeg_make_c_derived_tbl(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal void @emit_restart(ptr noundef %0, i32 noundef %1) #0 !dbg !1673 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !1676, !DIExpression(), !1677)
  store i32 %1, ptr %4, align 4
    #dbg_declare(ptr %4, !1678, !DIExpression(), !1679)
    #dbg_declare(ptr %5, !1680, !DIExpression(), !1681)
  %6 = load ptr, ptr %3, align 8, !dbg !1682
  call void @emit_eobrun(ptr noundef %6), !dbg !1683
  %7 = load ptr, ptr %3, align 8, !dbg !1684
  %8 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %7, i32 0, i32 1, !dbg !1686
  %9 = load i32, ptr %8, align 8, !dbg !1686
  %10 = icmp ne i32 %9, 0, !dbg !1684
  br i1 %10, label %40, label %11, !dbg !1687

11:                                               ; preds = %2
  %12 = load ptr, ptr %3, align 8, !dbg !1688
  call void @flush_bits(ptr noundef %12), !dbg !1690
  %13 = load ptr, ptr %3, align 8, !dbg !1691
  %14 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %13, i32 0, i32 2, !dbg !1691
  %15 = load ptr, ptr %14, align 8, !dbg !1691
  %16 = getelementptr inbounds nuw i8, ptr %15, i32 1, !dbg !1691
  store ptr %16, ptr %14, align 8, !dbg !1691
  store i8 -1, ptr %15, align 1, !dbg !1691
  %17 = load ptr, ptr %3, align 8, !dbg !1693
  %18 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %17, i32 0, i32 3, !dbg !1693
  %19 = load i64, ptr %18, align 8, !dbg !1693
  %20 = add i64 %19, -1, !dbg !1693
  store i64 %20, ptr %18, align 8, !dbg !1693
  %21 = icmp eq i64 %20, 0, !dbg !1693
  br i1 %21, label %22, label %24, !dbg !1693

22:                                               ; preds = %11
  %23 = load ptr, ptr %3, align 8, !dbg !1693
  call void @dump_buffer(ptr noundef %23), !dbg !1693
  br label %24, !dbg !1693

24:                                               ; preds = %22, %11
  %25 = load i32, ptr %4, align 4, !dbg !1695
  %26 = add nsw i32 208, %25, !dbg !1695
  %27 = trunc i32 %26 to i8, !dbg !1695
  %28 = load ptr, ptr %3, align 8, !dbg !1695
  %29 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %28, i32 0, i32 2, !dbg !1695
  %30 = load ptr, ptr %29, align 8, !dbg !1695
  %31 = getelementptr inbounds nuw i8, ptr %30, i32 1, !dbg !1695
  store ptr %31, ptr %29, align 8, !dbg !1695
  store i8 %27, ptr %30, align 1, !dbg !1695
  %32 = load ptr, ptr %3, align 8, !dbg !1697
  %33 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %32, i32 0, i32 3, !dbg !1697
  %34 = load i64, ptr %33, align 8, !dbg !1697
  %35 = add i64 %34, -1, !dbg !1697
  store i64 %35, ptr %33, align 8, !dbg !1697
  %36 = icmp eq i64 %35, 0, !dbg !1697
  br i1 %36, label %37, label %39, !dbg !1697

37:                                               ; preds = %24
  %38 = load ptr, ptr %3, align 8, !dbg !1697
  call void @dump_buffer(ptr noundef %38), !dbg !1697
  br label %39, !dbg !1697

39:                                               ; preds = %37, %24
  br label %40, !dbg !1699

40:                                               ; preds = %39, %2
  %41 = load ptr, ptr %3, align 8, !dbg !1700
  %42 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %41, i32 0, i32 6, !dbg !1702
  %43 = load ptr, ptr %42, align 8, !dbg !1702
  %44 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %43, i32 0, i32 47, !dbg !1703
  %45 = load i32, ptr %44, align 4, !dbg !1703
  %46 = icmp eq i32 %45, 0, !dbg !1704
  br i1 %46, label %47, label %66, !dbg !1704

47:                                               ; preds = %40
  store i32 0, ptr %5, align 4, !dbg !1705
  br label %48, !dbg !1708

48:                                               ; preds = %62, %47
  %49 = load i32, ptr %5, align 4, !dbg !1709
  %50 = load ptr, ptr %3, align 8, !dbg !1711
  %51 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %50, i32 0, i32 6, !dbg !1712
  %52 = load ptr, ptr %51, align 8, !dbg !1712
  %53 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %52, i32 0, i32 41, !dbg !1713
  %54 = load i32, ptr %53, align 4, !dbg !1713
  %55 = icmp slt i32 %49, %54, !dbg !1714
  br i1 %55, label %56, label %65, !dbg !1715

56:                                               ; preds = %48
  %57 = load ptr, ptr %3, align 8, !dbg !1716
  %58 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %57, i32 0, i32 7, !dbg !1717
  %59 = load i32, ptr %5, align 4, !dbg !1718
  %60 = sext i32 %59 to i64, !dbg !1716
  %61 = getelementptr inbounds [4 x i32], ptr %58, i64 0, i64 %60, !dbg !1716
  store i32 0, ptr %61, align 4, !dbg !1719
  br label %62, !dbg !1716

62:                                               ; preds = %56
  %63 = load i32, ptr %5, align 4, !dbg !1720
  %64 = add nsw i32 %63, 1, !dbg !1720
  store i32 %64, ptr %5, align 4, !dbg !1720
  br label %48, !dbg !1721, !llvm.loop !1722

65:                                               ; preds = %48
  br label %71, !dbg !1724

66:                                               ; preds = %40
  %67 = load ptr, ptr %3, align 8, !dbg !1725
  %68 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %67, i32 0, i32 9, !dbg !1727
  store i32 0, ptr %68, align 4, !dbg !1728
  %69 = load ptr, ptr %3, align 8, !dbg !1729
  %70 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %69, i32 0, i32 10, !dbg !1730
  store i32 0, ptr %70, align 8, !dbg !1731
  br label %71

71:                                               ; preds = %66, %65
  ret void, !dbg !1732
}

; Function Attrs: noinline nounwind uwtable
define internal void @emit_symbol(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 !dbg !1733 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
    #dbg_declare(ptr %4, !1736, !DIExpression(), !1737)
  store i32 %1, ptr %5, align 4
    #dbg_declare(ptr %5, !1738, !DIExpression(), !1739)
  store i32 %2, ptr %6, align 4
    #dbg_declare(ptr %6, !1740, !DIExpression(), !1741)
  %8 = load ptr, ptr %4, align 8, !dbg !1742
  %9 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %8, i32 0, i32 1, !dbg !1744
  %10 = load i32, ptr %9, align 8, !dbg !1744
  %11 = icmp ne i32 %10, 0, !dbg !1742
  br i1 %11, label %12, label %24, !dbg !1742

12:                                               ; preds = %3
  %13 = load ptr, ptr %4, align 8, !dbg !1745
  %14 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %13, i32 0, i32 15, !dbg !1746
  %15 = load i32, ptr %5, align 4, !dbg !1747
  %16 = sext i32 %15 to i64, !dbg !1745
  %17 = getelementptr inbounds [4 x ptr], ptr %14, i64 0, i64 %16, !dbg !1745
  %18 = load ptr, ptr %17, align 8, !dbg !1745
  %19 = load i32, ptr %6, align 4, !dbg !1748
  %20 = sext i32 %19 to i64, !dbg !1745
  %21 = getelementptr inbounds i64, ptr %18, i64 %20, !dbg !1745
  %22 = load i64, ptr %21, align 8, !dbg !1749
  %23 = add nsw i64 %22, 1, !dbg !1749
  store i64 %23, ptr %21, align 8, !dbg !1749
  br label %45, !dbg !1745

24:                                               ; preds = %3
    #dbg_declare(ptr %7, !1750, !DIExpression(), !1752)
  %25 = load ptr, ptr %4, align 8, !dbg !1753
  %26 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %25, i32 0, i32 14, !dbg !1754
  %27 = load i32, ptr %5, align 4, !dbg !1755
  %28 = sext i32 %27 to i64, !dbg !1753
  %29 = getelementptr inbounds [4 x ptr], ptr %26, i64 0, i64 %28, !dbg !1753
  %30 = load ptr, ptr %29, align 8, !dbg !1753
  store ptr %30, ptr %7, align 8, !dbg !1752
  %31 = load ptr, ptr %4, align 8, !dbg !1756
  %32 = load ptr, ptr %7, align 8, !dbg !1757
  %33 = getelementptr inbounds nuw %struct.c_derived_tbl, ptr %32, i32 0, i32 0, !dbg !1758
  %34 = load i32, ptr %6, align 4, !dbg !1759
  %35 = sext i32 %34 to i64, !dbg !1757
  %36 = getelementptr inbounds [256 x i32], ptr %33, i64 0, i64 %35, !dbg !1757
  %37 = load i32, ptr %36, align 4, !dbg !1757
  %38 = load ptr, ptr %7, align 8, !dbg !1760
  %39 = getelementptr inbounds nuw %struct.c_derived_tbl, ptr %38, i32 0, i32 1, !dbg !1761
  %40 = load i32, ptr %6, align 4, !dbg !1762
  %41 = sext i32 %40 to i64, !dbg !1760
  %42 = getelementptr inbounds [256 x i8], ptr %39, i64 0, i64 %41, !dbg !1760
  %43 = load i8, ptr %42, align 1, !dbg !1760
  %44 = sext i8 %43 to i32, !dbg !1760
  call void @emit_bits(ptr noundef %31, i32 noundef %37, i32 noundef %44), !dbg !1763
  br label %45

45:                                               ; preds = %24, %12
  ret void, !dbg !1764
}

; Function Attrs: noinline nounwind uwtable
define internal void @emit_bits(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 !dbg !1765 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
    #dbg_declare(ptr %4, !1768, !DIExpression(), !1769)
  store i32 %1, ptr %5, align 4
    #dbg_declare(ptr %5, !1770, !DIExpression(), !1771)
  store i32 %2, ptr %6, align 4
    #dbg_declare(ptr %6, !1772, !DIExpression(), !1773)
    #dbg_declare(ptr %7, !1774, !DIExpression(), !1775)
  %10 = load i32, ptr %5, align 4, !dbg !1776
  %11 = zext i32 %10 to i64, !dbg !1777
  store i64 %11, ptr %7, align 8, !dbg !1775
    #dbg_declare(ptr %8, !1778, !DIExpression(), !1779)
  %12 = load ptr, ptr %4, align 8, !dbg !1780
  %13 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %12, i32 0, i32 5, !dbg !1781
  %14 = load i32, ptr %13, align 8, !dbg !1781
  store i32 %14, ptr %8, align 4, !dbg !1779
  %15 = load i32, ptr %6, align 4, !dbg !1782
  %16 = icmp eq i32 %15, 0, !dbg !1784
  br i1 %16, label %17, label %34, !dbg !1784

17:                                               ; preds = %3
  %18 = load ptr, ptr %4, align 8, !dbg !1785
  %19 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %18, i32 0, i32 6, !dbg !1785
  %20 = load ptr, ptr %19, align 8, !dbg !1785
  %21 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %20, i32 0, i32 0, !dbg !1785
  %22 = load ptr, ptr %21, align 8, !dbg !1785
  %23 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %22, i32 0, i32 5, !dbg !1785
  store i32 39, ptr %23, align 8, !dbg !1785
  %24 = load ptr, ptr %4, align 8, !dbg !1785
  %25 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %24, i32 0, i32 6, !dbg !1785
  %26 = load ptr, ptr %25, align 8, !dbg !1785
  %27 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %26, i32 0, i32 0, !dbg !1785
  %28 = load ptr, ptr %27, align 8, !dbg !1785
  %29 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %28, i32 0, i32 0, !dbg !1785
  %30 = load ptr, ptr %29, align 8, !dbg !1785
  %31 = load ptr, ptr %4, align 8, !dbg !1785
  %32 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %31, i32 0, i32 6, !dbg !1785
  %33 = load ptr, ptr %32, align 8, !dbg !1785
  call void %30(ptr noundef %33), !dbg !1785
  br label %34, !dbg !1785

34:                                               ; preds = %17, %3
  %35 = load ptr, ptr %4, align 8, !dbg !1786
  %36 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %35, i32 0, i32 1, !dbg !1788
  %37 = load i32, ptr %36, align 8, !dbg !1788
  %38 = icmp ne i32 %37, 0, !dbg !1786
  br i1 %38, label %39, label %40, !dbg !1786

39:                                               ; preds = %34
  br label %109, !dbg !1789

40:                                               ; preds = %34
  %41 = load i32, ptr %6, align 4, !dbg !1790
  %42 = zext i32 %41 to i64, !dbg !1791
  %43 = shl i64 1, %42, !dbg !1791
  %44 = sub nsw i64 %43, 1, !dbg !1792
  %45 = load i64, ptr %7, align 8, !dbg !1793
  %46 = and i64 %45, %44, !dbg !1793
  store i64 %46, ptr %7, align 8, !dbg !1793
  %47 = load i32, ptr %6, align 4, !dbg !1794
  %48 = load i32, ptr %8, align 4, !dbg !1795
  %49 = add nsw i32 %48, %47, !dbg !1795
  store i32 %49, ptr %8, align 4, !dbg !1795
  %50 = load i32, ptr %8, align 4, !dbg !1796
  %51 = sub nsw i32 24, %50, !dbg !1797
  %52 = load i64, ptr %7, align 8, !dbg !1798
  %53 = zext i32 %51 to i64, !dbg !1798
  %54 = shl i64 %52, %53, !dbg !1798
  store i64 %54, ptr %7, align 8, !dbg !1798
  %55 = load ptr, ptr %4, align 8, !dbg !1799
  %56 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %55, i32 0, i32 4, !dbg !1800
  %57 = load i64, ptr %56, align 8, !dbg !1800
  %58 = load i64, ptr %7, align 8, !dbg !1801
  %59 = or i64 %58, %57, !dbg !1801
  store i64 %59, ptr %7, align 8, !dbg !1801
  br label %60, !dbg !1802

60:                                               ; preds = %97, %40
  %61 = load i32, ptr %8, align 4, !dbg !1803
  %62 = icmp sge i32 %61, 8, !dbg !1804
  br i1 %62, label %63, label %102, !dbg !1802

63:                                               ; preds = %60
    #dbg_declare(ptr %9, !1805, !DIExpression(), !1807)
  %64 = load i64, ptr %7, align 8, !dbg !1808
  %65 = ashr i64 %64, 16, !dbg !1809
  %66 = and i64 %65, 255, !dbg !1810
  %67 = trunc i64 %66 to i32, !dbg !1811
  store i32 %67, ptr %9, align 4, !dbg !1807
  %68 = load i32, ptr %9, align 4, !dbg !1812
  %69 = trunc i32 %68 to i8, !dbg !1812
  %70 = load ptr, ptr %4, align 8, !dbg !1812
  %71 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %70, i32 0, i32 2, !dbg !1812
  %72 = load ptr, ptr %71, align 8, !dbg !1812
  %73 = getelementptr inbounds nuw i8, ptr %72, i32 1, !dbg !1812
  store ptr %73, ptr %71, align 8, !dbg !1812
  store i8 %69, ptr %72, align 1, !dbg !1812
  %74 = load ptr, ptr %4, align 8, !dbg !1814
  %75 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %74, i32 0, i32 3, !dbg !1814
  %76 = load i64, ptr %75, align 8, !dbg !1814
  %77 = add i64 %76, -1, !dbg !1814
  store i64 %77, ptr %75, align 8, !dbg !1814
  %78 = icmp eq i64 %77, 0, !dbg !1814
  br i1 %78, label %79, label %81, !dbg !1814

79:                                               ; preds = %63
  %80 = load ptr, ptr %4, align 8, !dbg !1814
  call void @dump_buffer(ptr noundef %80), !dbg !1814
  br label %81, !dbg !1814

81:                                               ; preds = %79, %63
  %82 = load i32, ptr %9, align 4, !dbg !1816
  %83 = icmp eq i32 %82, 255, !dbg !1818
  br i1 %83, label %84, label %97, !dbg !1818

84:                                               ; preds = %81
  %85 = load ptr, ptr %4, align 8, !dbg !1819
  %86 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %85, i32 0, i32 2, !dbg !1819
  %87 = load ptr, ptr %86, align 8, !dbg !1819
  %88 = getelementptr inbounds nuw i8, ptr %87, i32 1, !dbg !1819
  store ptr %88, ptr %86, align 8, !dbg !1819
  store i8 0, ptr %87, align 1, !dbg !1819
  %89 = load ptr, ptr %4, align 8, !dbg !1822
  %90 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %89, i32 0, i32 3, !dbg !1822
  %91 = load i64, ptr %90, align 8, !dbg !1822
  %92 = add i64 %91, -1, !dbg !1822
  store i64 %92, ptr %90, align 8, !dbg !1822
  %93 = icmp eq i64 %92, 0, !dbg !1822
  br i1 %93, label %94, label %96, !dbg !1822

94:                                               ; preds = %84
  %95 = load ptr, ptr %4, align 8, !dbg !1822
  call void @dump_buffer(ptr noundef %95), !dbg !1822
  br label %96, !dbg !1822

96:                                               ; preds = %94, %84
  br label %97, !dbg !1824

97:                                               ; preds = %96, %81
  %98 = load i64, ptr %7, align 8, !dbg !1825
  %99 = shl i64 %98, 8, !dbg !1825
  store i64 %99, ptr %7, align 8, !dbg !1825
  %100 = load i32, ptr %8, align 4, !dbg !1826
  %101 = sub nsw i32 %100, 8, !dbg !1826
  store i32 %101, ptr %8, align 4, !dbg !1826
  br label %60, !dbg !1802, !llvm.loop !1827

102:                                              ; preds = %60
  %103 = load i64, ptr %7, align 8, !dbg !1829
  %104 = load ptr, ptr %4, align 8, !dbg !1830
  %105 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %104, i32 0, i32 4, !dbg !1831
  store i64 %103, ptr %105, align 8, !dbg !1832
  %106 = load i32, ptr %8, align 4, !dbg !1833
  %107 = load ptr, ptr %4, align 8, !dbg !1834
  %108 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %107, i32 0, i32 5, !dbg !1835
  store i32 %106, ptr %108, align 8, !dbg !1836
  br label %109, !dbg !1837

109:                                              ; preds = %102, %39
  ret void, !dbg !1837
}

; Function Attrs: noinline nounwind uwtable
define internal void @emit_eobrun(ptr noundef %0) #0 !dbg !1838 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !1841, !DIExpression(), !1842)
    #dbg_declare(ptr %3, !1843, !DIExpression(), !1844)
    #dbg_declare(ptr %4, !1845, !DIExpression(), !1846)
  %5 = load ptr, ptr %2, align 8, !dbg !1847
  %6 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %5, i32 0, i32 9, !dbg !1849
  %7 = load i32, ptr %6, align 4, !dbg !1849
  %8 = icmp ugt i32 %7, 0, !dbg !1850
  br i1 %8, label %9, label %47, !dbg !1850

9:                                                ; preds = %1
  %10 = load ptr, ptr %2, align 8, !dbg !1851
  %11 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %10, i32 0, i32 9, !dbg !1853
  %12 = load i32, ptr %11, align 4, !dbg !1853
  store i32 %12, ptr %3, align 4, !dbg !1854
  store i32 0, ptr %4, align 4, !dbg !1855
  br label %13, !dbg !1856

13:                                               ; preds = %17, %9
  %14 = load i32, ptr %3, align 4, !dbg !1857
  %15 = ashr i32 %14, 1, !dbg !1857
  store i32 %15, ptr %3, align 4, !dbg !1857
  %16 = icmp ne i32 %15, 0, !dbg !1856
  br i1 %16, label %17, label %20, !dbg !1856

17:                                               ; preds = %13
  %18 = load i32, ptr %4, align 4, !dbg !1858
  %19 = add nsw i32 %18, 1, !dbg !1858
  store i32 %19, ptr %4, align 4, !dbg !1858
  br label %13, !dbg !1856, !llvm.loop !1859

20:                                               ; preds = %13
  %21 = load ptr, ptr %2, align 8, !dbg !1860
  %22 = load ptr, ptr %2, align 8, !dbg !1861
  %23 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %22, i32 0, i32 8, !dbg !1862
  %24 = load i32, ptr %23, align 8, !dbg !1862
  %25 = load i32, ptr %4, align 4, !dbg !1863
  %26 = shl i32 %25, 4, !dbg !1864
  call void @emit_symbol(ptr noundef %21, i32 noundef %24, i32 noundef %26), !dbg !1865
  %27 = load i32, ptr %4, align 4, !dbg !1866
  %28 = icmp ne i32 %27, 0, !dbg !1866
  br i1 %28, label %29, label %35, !dbg !1866

29:                                               ; preds = %20
  %30 = load ptr, ptr %2, align 8, !dbg !1868
  %31 = load ptr, ptr %2, align 8, !dbg !1869
  %32 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %31, i32 0, i32 9, !dbg !1870
  %33 = load i32, ptr %32, align 4, !dbg !1870
  %34 = load i32, ptr %4, align 4, !dbg !1871
  call void @emit_bits(ptr noundef %30, i32 noundef %33, i32 noundef %34), !dbg !1872
  br label %35, !dbg !1872

35:                                               ; preds = %29, %20
  %36 = load ptr, ptr %2, align 8, !dbg !1873
  %37 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %36, i32 0, i32 9, !dbg !1874
  store i32 0, ptr %37, align 4, !dbg !1875
  %38 = load ptr, ptr %2, align 8, !dbg !1876
  %39 = load ptr, ptr %2, align 8, !dbg !1877
  %40 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %39, i32 0, i32 11, !dbg !1878
  %41 = load ptr, ptr %40, align 8, !dbg !1878
  %42 = load ptr, ptr %2, align 8, !dbg !1879
  %43 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %42, i32 0, i32 10, !dbg !1880
  %44 = load i32, ptr %43, align 8, !dbg !1880
  call void @emit_buffered_bits(ptr noundef %38, ptr noundef %41, i32 noundef %44), !dbg !1881
  %45 = load ptr, ptr %2, align 8, !dbg !1882
  %46 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %45, i32 0, i32 10, !dbg !1883
  store i32 0, ptr %46, align 8, !dbg !1884
  br label %47, !dbg !1885

47:                                               ; preds = %35, %1
  ret void, !dbg !1886
}

; Function Attrs: noinline nounwind uwtable
define internal void @flush_bits(ptr noundef %0) #0 !dbg !1887 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !1888, !DIExpression(), !1889)
  %3 = load ptr, ptr %2, align 8, !dbg !1890
  call void @emit_bits(ptr noundef %3, i32 noundef 127, i32 noundef 7), !dbg !1891
  %4 = load ptr, ptr %2, align 8, !dbg !1892
  %5 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %4, i32 0, i32 4, !dbg !1893
  store i64 0, ptr %5, align 8, !dbg !1894
  %6 = load ptr, ptr %2, align 8, !dbg !1895
  %7 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %6, i32 0, i32 5, !dbg !1896
  store i32 0, ptr %7, align 8, !dbg !1897
  ret void, !dbg !1898
}

; Function Attrs: noinline nounwind uwtable
define internal void @dump_buffer(ptr noundef %0) #0 !dbg !1899 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !1900, !DIExpression(), !1901)
    #dbg_declare(ptr %3, !1902, !DIExpression(), !1903)
  %4 = load ptr, ptr %2, align 8, !dbg !1904
  %5 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %4, i32 0, i32 6, !dbg !1905
  %6 = load ptr, ptr %5, align 8, !dbg !1905
  %7 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %6, i32 0, i32 5, !dbg !1906
  %8 = load ptr, ptr %7, align 8, !dbg !1906
  store ptr %8, ptr %3, align 8, !dbg !1903
  %9 = load ptr, ptr %3, align 8, !dbg !1907
  %10 = getelementptr inbounds nuw %struct.jpeg_destination_mgr, ptr %9, i32 0, i32 3, !dbg !1909
  %11 = load ptr, ptr %10, align 8, !dbg !1909
  %12 = load ptr, ptr %2, align 8, !dbg !1910
  %13 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %12, i32 0, i32 6, !dbg !1911
  %14 = load ptr, ptr %13, align 8, !dbg !1911
  %15 = call i32 %11(ptr noundef %14), !dbg !1912
  %16 = icmp ne i32 %15, 0, !dbg !1912
  br i1 %16, label %34, label %17, !dbg !1913

17:                                               ; preds = %1
  %18 = load ptr, ptr %2, align 8, !dbg !1914
  %19 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %18, i32 0, i32 6, !dbg !1914
  %20 = load ptr, ptr %19, align 8, !dbg !1914
  %21 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %20, i32 0, i32 0, !dbg !1914
  %22 = load ptr, ptr %21, align 8, !dbg !1914
  %23 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %22, i32 0, i32 5, !dbg !1914
  store i32 22, ptr %23, align 8, !dbg !1914
  %24 = load ptr, ptr %2, align 8, !dbg !1914
  %25 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %24, i32 0, i32 6, !dbg !1914
  %26 = load ptr, ptr %25, align 8, !dbg !1914
  %27 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %26, i32 0, i32 0, !dbg !1914
  %28 = load ptr, ptr %27, align 8, !dbg !1914
  %29 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %28, i32 0, i32 0, !dbg !1914
  %30 = load ptr, ptr %29, align 8, !dbg !1914
  %31 = load ptr, ptr %2, align 8, !dbg !1914
  %32 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %31, i32 0, i32 6, !dbg !1914
  %33 = load ptr, ptr %32, align 8, !dbg !1914
  call void %30(ptr noundef %33), !dbg !1914
  br label %34, !dbg !1914

34:                                               ; preds = %17, %1
  %35 = load ptr, ptr %3, align 8, !dbg !1915
  %36 = getelementptr inbounds nuw %struct.jpeg_destination_mgr, ptr %35, i32 0, i32 0, !dbg !1916
  %37 = load ptr, ptr %36, align 8, !dbg !1916
  %38 = load ptr, ptr %2, align 8, !dbg !1917
  %39 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %38, i32 0, i32 2, !dbg !1918
  store ptr %37, ptr %39, align 8, !dbg !1919
  %40 = load ptr, ptr %3, align 8, !dbg !1920
  %41 = getelementptr inbounds nuw %struct.jpeg_destination_mgr, ptr %40, i32 0, i32 1, !dbg !1921
  %42 = load i64, ptr %41, align 8, !dbg !1921
  %43 = load ptr, ptr %2, align 8, !dbg !1922
  %44 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %43, i32 0, i32 3, !dbg !1923
  store i64 %42, ptr %44, align 8, !dbg !1924
  ret void, !dbg !1925
}

; Function Attrs: noinline nounwind uwtable
define internal void @emit_buffered_bits(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 !dbg !1926 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
    #dbg_declare(ptr %4, !1929, !DIExpression(), !1930)
  store ptr %1, ptr %5, align 8
    #dbg_declare(ptr %5, !1931, !DIExpression(), !1932)
  store i32 %2, ptr %6, align 4
    #dbg_declare(ptr %6, !1933, !DIExpression(), !1934)
  %7 = load ptr, ptr %4, align 8, !dbg !1935
  %8 = getelementptr inbounds nuw %struct.phuff_entropy_encoder, ptr %7, i32 0, i32 1, !dbg !1937
  %9 = load i32, ptr %8, align 8, !dbg !1937
  %10 = icmp ne i32 %9, 0, !dbg !1935
  br i1 %10, label %11, label %12, !dbg !1935

11:                                               ; preds = %3
  br label %25, !dbg !1938

12:                                               ; preds = %3
  br label %13, !dbg !1939

13:                                               ; preds = %16, %12
  %14 = load i32, ptr %6, align 4, !dbg !1940
  %15 = icmp ugt i32 %14, 0, !dbg !1941
  br i1 %15, label %16, label %25, !dbg !1939

16:                                               ; preds = %13
  %17 = load ptr, ptr %4, align 8, !dbg !1942
  %18 = load ptr, ptr %5, align 8, !dbg !1944
  %19 = load i8, ptr %18, align 1, !dbg !1945
  %20 = sext i8 %19 to i32, !dbg !1946
  call void @emit_bits(ptr noundef %17, i32 noundef %20, i32 noundef 1), !dbg !1947
  %21 = load ptr, ptr %5, align 8, !dbg !1948
  %22 = getelementptr inbounds nuw i8, ptr %21, i32 1, !dbg !1948
  store ptr %22, ptr %5, align 8, !dbg !1948
  %23 = load i32, ptr %6, align 4, !dbg !1949
  %24 = add i32 %23, -1, !dbg !1949
  store i32 %24, ptr %6, align 4, !dbg !1949
  br label %13, !dbg !1939, !llvm.loop !1950

25:                                               ; preds = %11, %13
  ret void, !dbg !1952
}

declare ptr @jpeg_alloc_huff_table(ptr noundef) #2

declare void @jpeg_gen_optimal_table(ptr noundef, ptr noundef, ptr noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!554, !555, !556, !557, !558, !559, !560}
!llvm.ident = !{!561}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !149, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jcphuff.c", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "709ffed87f957730335b304a3795bd67")
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
!149 = !{!150, !174, !189, !520, !187, !267, !553, !188, !5, !303, !530, !268}
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "phuff_entropy_ptr", file: !1, line: 62, baseType: !151)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "phuff_entropy_encoder", file: !1, line: 60, baseType: !153)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 24, size: 1472, elements: !154)
!154 = !{!155, !526, !527, !528, !529, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !551}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "pub", scope: !153, file: !1, line: 25, baseType: !156, size: 192)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_entropy_encoder", file: !19, line: 113, size: 192, elements: !157)
!157 = !{!158, !521, !525}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !156, file: !19, line: 114, baseType: !159, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = !DISubroutineType(types: !161)
!161 = !{null, !162, !226}
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "j_compress_ptr", file: !4, line: 249, baseType: !163)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_compress_struct", file: !4, line: 255, size: 3968, elements: !165)
!165 = !{!166, !293, !294, !295, !296, !297, !314, !315, !316, !317, !319, !321, !322, !323, !324, !359, !363, !379, !380, !384, !385, !386, !387, !400, !401, !402, !403, !404, !405, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !422, !423, !424, !425, !429, !430, !431, !432, !433, !442, !456, !467, !476, !491, !500, !510, !519}
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
!445 = !{!446, !451}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !444, file: !19, line: 57, baseType: !447, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = !DISubroutineType(types: !449)
!449 = !{null, !162, !450}
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_BUF_MODE", file: !19, line: 22, baseType: !18)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "process_data", scope: !444, file: !19, line: 58, baseType: !452, size: 64, offset: 64)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = !DISubroutineType(types: !454)
!454 = !{null, !162, !197, !455, !204}
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "prep", scope: !164, file: !4, line: 382, baseType: !457, size: 64, offset: 3520)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_c_prep_controller", file: !19, line: 64, size: 128, elements: !459)
!459 = !{!460, !461}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !458, file: !19, line: 65, baseType: !447, size: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "pre_process_data", scope: !458, file: !19, line: 66, baseType: !462, size: 64, offset: 64)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = !DISubroutineType(types: !464)
!464 = !{null, !162, !197, !455, !204, !465, !455, !204}
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPIMAGE", file: !4, line: 68, baseType: !466)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "coef", scope: !164, file: !4, line: 383, baseType: !468, size: 64, offset: 3584)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_c_coef_controller", file: !19, line: 76, size: 128, elements: !470)
!470 = !{!471, !472}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !469, file: !19, line: 77, baseType: !447, size: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "compress_data", scope: !469, file: !19, line: 78, baseType: !473, size: 64, offset: 64)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DISubroutineType(types: !475)
!475 = !{!226, !162, !465}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "marker", scope: !164, file: !4, line: 384, baseType: !477, size: 64, offset: 3648)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_marker_writer", file: !19, line: 120, size: 384, elements: !479)
!479 = !{!480, !486, !487, !488, !489, !490}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "write_any_marker", scope: !478, file: !19, line: 123, baseType: !481, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = !DISubroutineType(types: !483)
!483 = !{null, !162, !188, !484, !5}
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !303)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_header", scope: !478, file: !19, line: 125, baseType: !306, size: 64, offset: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "write_frame_header", scope: !478, file: !19, line: 126, baseType: !306, size: 64, offset: 128)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "write_scan_header", scope: !478, file: !19, line: 127, baseType: !306, size: 64, offset: 192)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_trailer", scope: !478, file: !19, line: 128, baseType: !306, size: 64, offset: 256)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "write_tables_only", scope: !478, file: !19, line: 129, baseType: !306, size: 64, offset: 320)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "cconvert", scope: !164, file: !4, line: 385, baseType: !492, size: 64, offset: 3712)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_color_converter", file: !19, line: 83, size: 128, elements: !494)
!494 = !{!495, !496}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !493, file: !19, line: 84, baseType: !306, size: 64)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "color_convert", scope: !493, file: !19, line: 85, baseType: !497, size: 64, offset: 64)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = !DISubroutineType(types: !499)
!499 = !{null, !162, !197, !465, !204, !188}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "downsample", scope: !164, file: !4, line: 386, baseType: !501, size: 64, offset: 3776)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_downsampler", file: !19, line: 91, size: 192, elements: !503)
!503 = !{!504, !505, !509}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !502, file: !19, line: 92, baseType: !306, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "downsample", scope: !502, file: !19, line: 93, baseType: !506, size: 64, offset: 64)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = !DISubroutineType(types: !508)
!508 = !{null, !162, !465, !204, !465, !204}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "need_context_rows", scope: !502, file: !19, line: 98, baseType: !226, size: 32, offset: 128)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "fdct", scope: !164, file: !4, line: 387, baseType: !511, size: 64, offset: 3840)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_forward_dct", file: !19, line: 102, size: 128, elements: !513)
!513 = !{!514, !515}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !512, file: !19, line: 103, baseType: !306, size: 64)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "forward_DCT", scope: !512, file: !19, line: 105, baseType: !516, size: 64, offset: 64)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = !DISubroutineType(types: !518)
!518 = !{null, !162, !325, !197, !211, !204, !204, !204}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "entropy", scope: !164, file: !4, line: 388, baseType: !520, size: 64, offset: 3904)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "encode_mcu", scope: !156, file: !19, line: 115, baseType: !522, size: 64, offset: 64)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = !DISubroutineType(types: !524)
!524 = !{!226, !162, !210}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "finish_pass", scope: !156, file: !19, line: 116, baseType: !306, size: 64, offset: 128)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "gather_statistics", scope: !153, file: !1, line: 28, baseType: !226, size: 32, offset: 192)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "next_output_byte", scope: !153, file: !1, line: 33, baseType: !302, size: 64, offset: 256)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "free_in_buffer", scope: !153, file: !1, line: 34, baseType: !189, size: 64, offset: 320)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "put_buffer", scope: !153, file: !1, line: 35, baseType: !530, size: 64, offset: 384)
!530 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT32", file: !202, line: 161, baseType: !249)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "put_bits", scope: !153, file: !1, line: 36, baseType: !188, size: 32, offset: 448)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "cinfo", scope: !153, file: !1, line: 37, baseType: !162, size: 64, offset: 512)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "last_dc_val", scope: !153, file: !1, line: 40, baseType: !395, size: 128, offset: 576)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tbl_no", scope: !153, file: !1, line: 43, baseType: !188, size: 32, offset: 704)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "EOBRUN", scope: !153, file: !1, line: 44, baseType: !5, size: 32, offset: 736)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "BE", scope: !153, file: !1, line: 45, baseType: !5, size: 32, offset: 768)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "bit_buffer", scope: !153, file: !1, line: 46, baseType: !267, size: 64, offset: 832)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "restarts_to_go", scope: !153, file: !1, line: 49, baseType: !5, size: 32, offset: 896)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "next_restart_num", scope: !153, file: !1, line: 50, baseType: !188, size: 32, offset: 928)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "derived_tbls", scope: !153, file: !1, line: 56, baseType: !541, size: 256, offset: 960)
!541 = !DICompositeType(tag: DW_TAG_array_type, baseType: !542, size: 256, elements: !361)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = !DIDerivedType(tag: DW_TAG_typedef, name: "c_derived_tbl", file: !544, line: 19, baseType: !545)
!544 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jchuff.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "5bae8b1c561c9841cb394bb534daf1ce")
!545 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !544, line: 15, size: 10240, elements: !546)
!546 = !{!547, !549}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "ehufco", scope: !545, file: !544, line: 16, baseType: !548, size: 8192)
!548 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 8192, elements: !376)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "ehufsi", scope: !545, file: !544, line: 17, baseType: !550, size: 2048, offset: 8192)
!550 = !DICompositeType(tag: DW_TAG_array_type, baseType: !268, size: 2048, elements: !376)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "count_ptrs", scope: !153, file: !1, line: 59, baseType: !552, size: 256, offset: 1216)
!552 = !DICompositeType(tag: DW_TAG_array_type, baseType: !553, size: 256, elements: !361)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!554 = !{i32 7, !"Dwarf Version", i32 5}
!555 = !{i32 2, !"Debug Info Version", i32 3}
!556 = !{i32 1, !"wchar_size", i32 4}
!557 = !{i32 8, !"PIC Level", i32 2}
!558 = !{i32 7, !"PIE Level", i32 2}
!559 = !{i32 7, !"uwtable", i32 2}
!560 = !{i32 7, !"frame-pointer", i32 2}
!561 = !{!"clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)"}
!562 = distinct !DISubprogram(name: "jinit_phuff_encoder", scope: !1, file: !1, line: 810, type: !307, scopeLine: 811, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !563)
!563 = !{}
!564 = !DILocalVariable(name: "cinfo", arg: 1, scope: !562, file: !1, line: 810, type: !162)
!565 = !DILocation(line: 810, column: 37, scope: !562)
!566 = !DILocalVariable(name: "entropy", scope: !562, file: !1, line: 812, type: !150)
!567 = !DILocation(line: 812, column: 21, scope: !562)
!568 = !DILocalVariable(name: "i", scope: !562, file: !1, line: 813, type: !188)
!569 = !DILocation(line: 813, column: 7, scope: !562)
!570 = !DILocation(line: 816, column: 7, scope: !562)
!571 = !DILocation(line: 816, column: 14, scope: !562)
!572 = !DILocation(line: 816, column: 19, scope: !562)
!573 = !DILocation(line: 816, column: 48, scope: !562)
!574 = !DILocation(line: 816, column: 5, scope: !562)
!575 = !DILocation(line: 815, column: 11, scope: !562)
!576 = !DILocation(line: 818, column: 52, scope: !562)
!577 = !DILocation(line: 818, column: 3, scope: !562)
!578 = !DILocation(line: 818, column: 10, scope: !562)
!579 = !DILocation(line: 818, column: 18, scope: !562)
!580 = !DILocation(line: 819, column: 3, scope: !562)
!581 = !DILocation(line: 819, column: 12, scope: !562)
!582 = !DILocation(line: 819, column: 16, scope: !562)
!583 = !DILocation(line: 819, column: 27, scope: !562)
!584 = !DILocation(line: 822, column: 10, scope: !585)
!585 = distinct !DILexicalBlock(scope: !562, file: !1, line: 822, column: 3)
!586 = !DILocation(line: 822, column: 8, scope: !585)
!587 = !DILocation(line: 822, column: 15, scope: !588)
!588 = distinct !DILexicalBlock(scope: !585, file: !1, line: 822, column: 3)
!589 = !DILocation(line: 822, column: 17, scope: !588)
!590 = !DILocation(line: 822, column: 3, scope: !585)
!591 = !DILocation(line: 823, column: 5, scope: !592)
!592 = distinct !DILexicalBlock(scope: !588, file: !1, line: 822, column: 39)
!593 = !DILocation(line: 823, column: 14, scope: !592)
!594 = !DILocation(line: 823, column: 27, scope: !592)
!595 = !DILocation(line: 823, column: 30, scope: !592)
!596 = !DILocation(line: 824, column: 5, scope: !592)
!597 = !DILocation(line: 824, column: 14, scope: !592)
!598 = !DILocation(line: 824, column: 25, scope: !592)
!599 = !DILocation(line: 824, column: 28, scope: !592)
!600 = !DILocation(line: 825, column: 3, scope: !592)
!601 = !DILocation(line: 822, column: 35, scope: !588)
!602 = !DILocation(line: 822, column: 3, scope: !588)
!603 = distinct !{!603, !590, !604, !605}
!604 = !DILocation(line: 825, column: 3, scope: !585)
!605 = !{!"llvm.loop.mustprogress"}
!606 = !DILocation(line: 826, column: 3, scope: !562)
!607 = !DILocation(line: 826, column: 12, scope: !562)
!608 = !DILocation(line: 826, column: 23, scope: !562)
!609 = !DILocation(line: 827, column: 1, scope: !562)
!610 = distinct !DISubprogram(name: "start_pass_phuff", scope: !1, file: !1, line: 106, type: !160, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !563)
!611 = !DILocalVariable(name: "cinfo", arg: 1, scope: !610, file: !1, line: 106, type: !162)
!612 = !DILocation(line: 106, column: 34, scope: !610)
!613 = !DILocalVariable(name: "gather_statistics", arg: 2, scope: !610, file: !1, line: 106, type: !226)
!614 = !DILocation(line: 106, column: 49, scope: !610)
!615 = !DILocalVariable(name: "entropy", scope: !610, file: !1, line: 108, type: !150)
!616 = !DILocation(line: 108, column: 21, scope: !610)
!617 = !DILocation(line: 108, column: 51, scope: !610)
!618 = !DILocation(line: 108, column: 58, scope: !610)
!619 = !DILocalVariable(name: "is_DC_band", scope: !610, file: !1, line: 109, type: !226)
!620 = !DILocation(line: 109, column: 11, scope: !610)
!621 = !DILocalVariable(name: "ci", scope: !610, file: !1, line: 110, type: !188)
!622 = !DILocation(line: 110, column: 7, scope: !610)
!623 = !DILocalVariable(name: "tbl", scope: !610, file: !1, line: 110, type: !188)
!624 = !DILocation(line: 110, column: 11, scope: !610)
!625 = !DILocalVariable(name: "compptr", scope: !610, file: !1, line: 111, type: !325)
!626 = !DILocation(line: 111, column: 25, scope: !610)
!627 = !DILocation(line: 113, column: 20, scope: !610)
!628 = !DILocation(line: 113, column: 3, scope: !610)
!629 = !DILocation(line: 113, column: 12, scope: !610)
!630 = !DILocation(line: 113, column: 18, scope: !610)
!631 = !DILocation(line: 114, column: 32, scope: !610)
!632 = !DILocation(line: 114, column: 3, scope: !610)
!633 = !DILocation(line: 114, column: 12, scope: !610)
!634 = !DILocation(line: 114, column: 30, scope: !610)
!635 = !DILocation(line: 116, column: 17, scope: !610)
!636 = !DILocation(line: 116, column: 24, scope: !610)
!637 = !DILocation(line: 116, column: 27, scope: !610)
!638 = !DILocation(line: 116, column: 14, scope: !610)
!639 = !DILocation(line: 121, column: 7, scope: !640)
!640 = distinct !DILexicalBlock(scope: !610, file: !1, line: 121, column: 7)
!641 = !DILocation(line: 121, column: 14, scope: !640)
!642 = !DILocation(line: 121, column: 17, scope: !640)
!643 = !DILocation(line: 122, column: 9, scope: !644)
!644 = distinct !DILexicalBlock(scope: !645, file: !1, line: 122, column: 9)
!645 = distinct !DILexicalBlock(scope: !640, file: !1, line: 121, column: 23)
!646 = !DILocation(line: 123, column: 7, scope: !644)
!647 = !DILocation(line: 123, column: 16, scope: !644)
!648 = !DILocation(line: 123, column: 20, scope: !644)
!649 = !DILocation(line: 123, column: 31, scope: !644)
!650 = !DILocation(line: 125, column: 7, scope: !644)
!651 = !DILocation(line: 125, column: 16, scope: !644)
!652 = !DILocation(line: 125, column: 20, scope: !644)
!653 = !DILocation(line: 125, column: 31, scope: !644)
!654 = !DILocation(line: 126, column: 3, scope: !645)
!655 = !DILocation(line: 127, column: 9, scope: !656)
!656 = distinct !DILexicalBlock(scope: !657, file: !1, line: 127, column: 9)
!657 = distinct !DILexicalBlock(scope: !640, file: !1, line: 126, column: 10)
!658 = !DILocation(line: 128, column: 7, scope: !656)
!659 = !DILocation(line: 128, column: 16, scope: !656)
!660 = !DILocation(line: 128, column: 20, scope: !656)
!661 = !DILocation(line: 128, column: 31, scope: !656)
!662 = !DILocation(line: 130, column: 7, scope: !663)
!663 = distinct !DILexicalBlock(scope: !656, file: !1, line: 129, column: 10)
!664 = !DILocation(line: 130, column: 16, scope: !663)
!665 = !DILocation(line: 130, column: 20, scope: !663)
!666 = !DILocation(line: 130, column: 31, scope: !663)
!667 = !DILocation(line: 132, column: 11, scope: !668)
!668 = distinct !DILexicalBlock(scope: !663, file: !1, line: 132, column: 11)
!669 = !DILocation(line: 132, column: 20, scope: !668)
!670 = !DILocation(line: 132, column: 31, scope: !668)
!671 = !DILocation(line: 134, column: 6, scope: !668)
!672 = !DILocation(line: 134, column: 13, scope: !668)
!673 = !DILocation(line: 134, column: 18, scope: !668)
!674 = !DILocation(line: 134, column: 47, scope: !668)
!675 = !DILocation(line: 134, column: 4, scope: !668)
!676 = !DILocation(line: 133, column: 2, scope: !668)
!677 = !DILocation(line: 133, column: 11, scope: !668)
!678 = !DILocation(line: 133, column: 22, scope: !668)
!679 = !DILocation(line: 138, column: 7, scope: !680)
!680 = distinct !DILexicalBlock(scope: !610, file: !1, line: 138, column: 7)
!681 = !DILocation(line: 139, column: 5, scope: !680)
!682 = !DILocation(line: 139, column: 14, scope: !680)
!683 = !DILocation(line: 139, column: 18, scope: !680)
!684 = !DILocation(line: 139, column: 30, scope: !680)
!685 = !DILocation(line: 141, column: 5, scope: !680)
!686 = !DILocation(line: 141, column: 14, scope: !680)
!687 = !DILocation(line: 141, column: 18, scope: !680)
!688 = !DILocation(line: 141, column: 30, scope: !680)
!689 = !DILocation(line: 146, column: 11, scope: !690)
!690 = distinct !DILexicalBlock(scope: !610, file: !1, line: 146, column: 3)
!691 = !DILocation(line: 146, column: 8, scope: !690)
!692 = !DILocation(line: 146, column: 16, scope: !693)
!693 = distinct !DILexicalBlock(scope: !690, file: !1, line: 146, column: 3)
!694 = !DILocation(line: 146, column: 21, scope: !693)
!695 = !DILocation(line: 146, column: 28, scope: !693)
!696 = !DILocation(line: 146, column: 19, scope: !693)
!697 = !DILocation(line: 146, column: 3, scope: !690)
!698 = !DILocation(line: 147, column: 15, scope: !699)
!699 = distinct !DILexicalBlock(scope: !693, file: !1, line: 146, column: 49)
!700 = !DILocation(line: 147, column: 22, scope: !699)
!701 = !DILocation(line: 147, column: 36, scope: !699)
!702 = !DILocation(line: 147, column: 13, scope: !699)
!703 = !DILocation(line: 149, column: 5, scope: !699)
!704 = !DILocation(line: 149, column: 14, scope: !699)
!705 = !DILocation(line: 149, column: 26, scope: !699)
!706 = !DILocation(line: 149, column: 30, scope: !699)
!707 = !DILocation(line: 152, column: 9, scope: !708)
!708 = distinct !DILexicalBlock(scope: !699, file: !1, line: 152, column: 9)
!709 = !DILocation(line: 153, column: 11, scope: !710)
!710 = distinct !DILexicalBlock(scope: !711, file: !1, line: 153, column: 11)
!711 = distinct !DILexicalBlock(scope: !708, file: !1, line: 152, column: 21)
!712 = !DILocation(line: 153, column: 18, scope: !710)
!713 = !DILocation(line: 153, column: 21, scope: !710)
!714 = !DILocation(line: 154, column: 2, scope: !710)
!715 = !DILocation(line: 155, column: 13, scope: !711)
!716 = !DILocation(line: 155, column: 22, scope: !711)
!717 = !DILocation(line: 155, column: 11, scope: !711)
!718 = !DILocation(line: 156, column: 11, scope: !719)
!719 = distinct !DILexicalBlock(scope: !711, file: !1, line: 156, column: 11)
!720 = !DILocation(line: 156, column: 15, scope: !719)
!721 = !DILocation(line: 156, column: 19, scope: !719)
!722 = !DILocation(line: 156, column: 22, scope: !719)
!723 = !DILocation(line: 156, column: 26, scope: !719)
!724 = !DILocation(line: 156, column: 43, scope: !719)
!725 = !DILocation(line: 157, column: 5, scope: !719)
!726 = !DILocation(line: 157, column: 12, scope: !719)
!727 = !DILocation(line: 157, column: 29, scope: !719)
!728 = !DILocation(line: 157, column: 34, scope: !719)
!729 = !DILocation(line: 157, column: 42, scope: !719)
!730 = !DILocation(line: 157, column: 46, scope: !719)
!731 = !DILocation(line: 158, column: 2, scope: !719)
!732 = !DILocation(line: 159, column: 5, scope: !711)
!733 = !DILocation(line: 160, column: 34, scope: !734)
!734 = distinct !DILexicalBlock(scope: !708, file: !1, line: 159, column: 12)
!735 = !DILocation(line: 160, column: 43, scope: !734)
!736 = !DILocation(line: 160, column: 32, scope: !734)
!737 = !DILocation(line: 160, column: 7, scope: !734)
!738 = !DILocation(line: 160, column: 16, scope: !734)
!739 = !DILocation(line: 160, column: 26, scope: !734)
!740 = !DILocation(line: 161, column: 11, scope: !741)
!741 = distinct !DILexicalBlock(scope: !734, file: !1, line: 161, column: 11)
!742 = !DILocation(line: 161, column: 15, scope: !741)
!743 = !DILocation(line: 161, column: 19, scope: !741)
!744 = !DILocation(line: 161, column: 22, scope: !741)
!745 = !DILocation(line: 161, column: 26, scope: !741)
!746 = !DILocation(line: 161, column: 43, scope: !741)
!747 = !DILocation(line: 162, column: 12, scope: !741)
!748 = !DILocation(line: 162, column: 19, scope: !741)
!749 = !DILocation(line: 162, column: 36, scope: !741)
!750 = !DILocation(line: 162, column: 41, scope: !741)
!751 = !DILocation(line: 162, column: 49, scope: !741)
!752 = !DILocation(line: 162, column: 53, scope: !741)
!753 = !DILocation(line: 163, column: 9, scope: !741)
!754 = !DILocation(line: 165, column: 9, scope: !755)
!755 = distinct !DILexicalBlock(scope: !699, file: !1, line: 165, column: 9)
!756 = !DILocation(line: 168, column: 11, scope: !757)
!757 = distinct !DILexicalBlock(scope: !758, file: !1, line: 168, column: 11)
!758 = distinct !DILexicalBlock(scope: !755, file: !1, line: 165, column: 28)
!759 = !DILocation(line: 168, column: 20, scope: !757)
!760 = !DILocation(line: 168, column: 31, scope: !757)
!761 = !DILocation(line: 168, column: 36, scope: !757)
!762 = !DILocation(line: 170, column: 6, scope: !757)
!763 = !DILocation(line: 170, column: 13, scope: !757)
!764 = !DILocation(line: 170, column: 18, scope: !757)
!765 = !DILocation(line: 170, column: 47, scope: !757)
!766 = !DILocation(line: 170, column: 4, scope: !757)
!767 = !DILocation(line: 169, column: 2, scope: !757)
!768 = !DILocation(line: 169, column: 11, scope: !757)
!769 = !DILocation(line: 169, column: 22, scope: !757)
!770 = !DILocation(line: 169, column: 27, scope: !757)
!771 = !DILocation(line: 172, column: 7, scope: !758)
!772 = !DILocation(line: 173, column: 5, scope: !758)
!773 = !DILocation(line: 176, column: 11, scope: !774)
!774 = distinct !DILexicalBlock(scope: !775, file: !1, line: 176, column: 11)
!775 = distinct !DILexicalBlock(scope: !755, file: !1, line: 173, column: 12)
!776 = !DILocation(line: 177, column: 33, scope: !774)
!777 = !DILocation(line: 177, column: 40, scope: !774)
!778 = !DILocation(line: 177, column: 47, scope: !774)
!779 = !DILocation(line: 177, column: 64, scope: !774)
!780 = !DILocation(line: 178, column: 7, scope: !774)
!781 = !DILocation(line: 178, column: 16, scope: !774)
!782 = !DILocation(line: 178, column: 29, scope: !774)
!783 = !DILocation(line: 177, column: 9, scope: !774)
!784 = !DILocation(line: 180, column: 33, scope: !774)
!785 = !DILocation(line: 180, column: 40, scope: !774)
!786 = !DILocation(line: 180, column: 47, scope: !774)
!787 = !DILocation(line: 180, column: 64, scope: !774)
!788 = !DILocation(line: 181, column: 7, scope: !774)
!789 = !DILocation(line: 181, column: 16, scope: !774)
!790 = !DILocation(line: 181, column: 29, scope: !774)
!791 = !DILocation(line: 180, column: 9, scope: !774)
!792 = !DILocation(line: 183, column: 3, scope: !699)
!793 = !DILocation(line: 146, column: 45, scope: !693)
!794 = !DILocation(line: 146, column: 3, scope: !693)
!795 = distinct !{!795, !697, !796, !605}
!796 = !DILocation(line: 183, column: 3, scope: !690)
!797 = !DILocation(line: 186, column: 3, scope: !610)
!798 = !DILocation(line: 186, column: 12, scope: !610)
!799 = !DILocation(line: 186, column: 19, scope: !610)
!800 = !DILocation(line: 187, column: 3, scope: !610)
!801 = !DILocation(line: 187, column: 12, scope: !610)
!802 = !DILocation(line: 187, column: 15, scope: !610)
!803 = !DILocation(line: 190, column: 3, scope: !610)
!804 = !DILocation(line: 190, column: 12, scope: !610)
!805 = !DILocation(line: 190, column: 23, scope: !610)
!806 = !DILocation(line: 191, column: 3, scope: !610)
!807 = !DILocation(line: 191, column: 12, scope: !610)
!808 = !DILocation(line: 191, column: 21, scope: !610)
!809 = !DILocation(line: 194, column: 29, scope: !610)
!810 = !DILocation(line: 194, column: 36, scope: !610)
!811 = !DILocation(line: 194, column: 3, scope: !610)
!812 = !DILocation(line: 194, column: 12, scope: !610)
!813 = !DILocation(line: 194, column: 27, scope: !610)
!814 = !DILocation(line: 195, column: 3, scope: !610)
!815 = !DILocation(line: 195, column: 12, scope: !610)
!816 = !DILocation(line: 195, column: 29, scope: !610)
!817 = !DILocation(line: 196, column: 1, scope: !610)
!818 = distinct !DISubprogram(name: "encode_mcu_DC_first", scope: !1, file: !1, line: 381, type: !523, scopeLine: 382, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !563)
!819 = !DILocalVariable(name: "cinfo", arg: 1, scope: !818, file: !1, line: 381, type: !162)
!820 = !DILocation(line: 381, column: 37, scope: !818)
!821 = !DILocalVariable(name: "MCU_data", arg: 2, scope: !818, file: !1, line: 381, type: !210)
!822 = !DILocation(line: 381, column: 55, scope: !818)
!823 = !DILocalVariable(name: "entropy", scope: !818, file: !1, line: 383, type: !150)
!824 = !DILocation(line: 383, column: 21, scope: !818)
!825 = !DILocation(line: 383, column: 51, scope: !818)
!826 = !DILocation(line: 383, column: 58, scope: !818)
!827 = !DILocalVariable(name: "temp", scope: !818, file: !1, line: 384, type: !188)
!828 = !DILocation(line: 384, column: 16, scope: !818)
!829 = !DILocalVariable(name: "temp2", scope: !818, file: !1, line: 384, type: !188)
!830 = !DILocation(line: 384, column: 22, scope: !818)
!831 = !DILocalVariable(name: "nbits", scope: !818, file: !1, line: 385, type: !188)
!832 = !DILocation(line: 385, column: 16, scope: !818)
!833 = !DILocalVariable(name: "blkn", scope: !818, file: !1, line: 386, type: !188)
!834 = !DILocation(line: 386, column: 7, scope: !818)
!835 = !DILocalVariable(name: "ci", scope: !818, file: !1, line: 386, type: !188)
!836 = !DILocation(line: 386, column: 13, scope: !818)
!837 = !DILocalVariable(name: "Al", scope: !818, file: !1, line: 387, type: !188)
!838 = !DILocation(line: 387, column: 7, scope: !818)
!839 = !DILocation(line: 387, column: 12, scope: !818)
!840 = !DILocation(line: 387, column: 19, scope: !818)
!841 = !DILocalVariable(name: "block", scope: !818, file: !1, line: 388, type: !211)
!842 = !DILocation(line: 388, column: 13, scope: !818)
!843 = !DILocalVariable(name: "compptr", scope: !818, file: !1, line: 389, type: !325)
!844 = !DILocation(line: 389, column: 25, scope: !818)
!845 = !DILocation(line: 392, column: 31, scope: !818)
!846 = !DILocation(line: 392, column: 38, scope: !818)
!847 = !DILocation(line: 392, column: 44, scope: !818)
!848 = !DILocation(line: 392, column: 3, scope: !818)
!849 = !DILocation(line: 392, column: 12, scope: !818)
!850 = !DILocation(line: 392, column: 29, scope: !818)
!851 = !DILocation(line: 393, column: 29, scope: !818)
!852 = !DILocation(line: 393, column: 36, scope: !818)
!853 = !DILocation(line: 393, column: 42, scope: !818)
!854 = !DILocation(line: 393, column: 3, scope: !818)
!855 = !DILocation(line: 393, column: 12, scope: !818)
!856 = !DILocation(line: 393, column: 27, scope: !818)
!857 = !DILocation(line: 396, column: 7, scope: !858)
!858 = distinct !DILexicalBlock(scope: !818, file: !1, line: 396, column: 7)
!859 = !DILocation(line: 396, column: 14, scope: !858)
!860 = !DILocation(line: 397, column: 9, scope: !861)
!861 = distinct !DILexicalBlock(scope: !858, file: !1, line: 397, column: 9)
!862 = !DILocation(line: 397, column: 18, scope: !861)
!863 = !DILocation(line: 397, column: 33, scope: !861)
!864 = !DILocation(line: 398, column: 20, scope: !861)
!865 = !DILocation(line: 398, column: 29, scope: !861)
!866 = !DILocation(line: 398, column: 38, scope: !861)
!867 = !DILocation(line: 398, column: 7, scope: !861)
!868 = !DILocation(line: 397, column: 36, scope: !861)
!869 = !DILocation(line: 401, column: 13, scope: !870)
!870 = distinct !DILexicalBlock(scope: !818, file: !1, line: 401, column: 3)
!871 = !DILocation(line: 401, column: 8, scope: !870)
!872 = !DILocation(line: 401, column: 18, scope: !873)
!873 = distinct !DILexicalBlock(scope: !870, file: !1, line: 401, column: 3)
!874 = !DILocation(line: 401, column: 25, scope: !873)
!875 = !DILocation(line: 401, column: 32, scope: !873)
!876 = !DILocation(line: 401, column: 23, scope: !873)
!877 = !DILocation(line: 401, column: 3, scope: !870)
!878 = !DILocation(line: 402, column: 13, scope: !879)
!879 = distinct !DILexicalBlock(scope: !873, file: !1, line: 401, column: 55)
!880 = !DILocation(line: 402, column: 22, scope: !879)
!881 = !DILocation(line: 402, column: 11, scope: !879)
!882 = !DILocation(line: 403, column: 10, scope: !879)
!883 = !DILocation(line: 403, column: 17, scope: !879)
!884 = !DILocation(line: 403, column: 32, scope: !879)
!885 = !DILocation(line: 403, column: 8, scope: !879)
!886 = !DILocation(line: 404, column: 15, scope: !879)
!887 = !DILocation(line: 404, column: 22, scope: !879)
!888 = !DILocation(line: 404, column: 36, scope: !879)
!889 = !DILocation(line: 404, column: 13, scope: !879)
!890 = !DILocation(line: 409, column: 13, scope: !879)
!891 = !DILocation(line: 409, column: 11, scope: !879)
!892 = !DILocation(line: 412, column: 12, scope: !879)
!893 = !DILocation(line: 412, column: 20, scope: !879)
!894 = !DILocation(line: 412, column: 29, scope: !879)
!895 = !DILocation(line: 412, column: 41, scope: !879)
!896 = !DILocation(line: 412, column: 18, scope: !879)
!897 = !DILocation(line: 412, column: 10, scope: !879)
!898 = !DILocation(line: 413, column: 32, scope: !879)
!899 = !DILocation(line: 413, column: 5, scope: !879)
!900 = !DILocation(line: 413, column: 14, scope: !879)
!901 = !DILocation(line: 413, column: 26, scope: !879)
!902 = !DILocation(line: 413, column: 30, scope: !879)
!903 = !DILocation(line: 416, column: 13, scope: !879)
!904 = !DILocation(line: 416, column: 11, scope: !879)
!905 = !DILocation(line: 417, column: 9, scope: !906)
!906 = distinct !DILexicalBlock(scope: !879, file: !1, line: 417, column: 9)
!907 = !DILocation(line: 417, column: 14, scope: !906)
!908 = !DILocation(line: 418, column: 15, scope: !909)
!909 = distinct !DILexicalBlock(scope: !906, file: !1, line: 417, column: 19)
!910 = !DILocation(line: 418, column: 14, scope: !909)
!911 = !DILocation(line: 418, column: 12, scope: !909)
!912 = !DILocation(line: 421, column: 12, scope: !909)
!913 = !DILocation(line: 422, column: 5, scope: !909)
!914 = !DILocation(line: 425, column: 11, scope: !879)
!915 = !DILocation(line: 426, column: 5, scope: !879)
!916 = !DILocation(line: 426, column: 12, scope: !879)
!917 = !DILocation(line: 427, column: 12, scope: !918)
!918 = distinct !DILexicalBlock(scope: !879, file: !1, line: 426, column: 18)
!919 = !DILocation(line: 428, column: 12, scope: !918)
!920 = distinct !{!920, !915, !921, !605}
!921 = !DILocation(line: 429, column: 5, scope: !879)
!922 = !DILocation(line: 432, column: 17, scope: !879)
!923 = !DILocation(line: 432, column: 26, scope: !879)
!924 = !DILocation(line: 432, column: 35, scope: !879)
!925 = !DILocation(line: 432, column: 46, scope: !879)
!926 = !DILocation(line: 432, column: 5, scope: !879)
!927 = !DILocation(line: 436, column: 9, scope: !928)
!928 = distinct !DILexicalBlock(scope: !879, file: !1, line: 436, column: 9)
!929 = !DILocation(line: 437, column: 17, scope: !928)
!930 = !DILocation(line: 437, column: 41, scope: !928)
!931 = !DILocation(line: 437, column: 48, scope: !928)
!932 = !DILocation(line: 437, column: 7, scope: !928)
!933 = !DILocation(line: 438, column: 3, scope: !879)
!934 = !DILocation(line: 401, column: 51, scope: !873)
!935 = !DILocation(line: 401, column: 3, scope: !873)
!936 = distinct !{!936, !877, !937, !605}
!937 = !DILocation(line: 438, column: 3, scope: !870)
!938 = !DILocation(line: 440, column: 35, scope: !818)
!939 = !DILocation(line: 440, column: 44, scope: !818)
!940 = !DILocation(line: 440, column: 3, scope: !818)
!941 = !DILocation(line: 440, column: 10, scope: !818)
!942 = !DILocation(line: 440, column: 16, scope: !818)
!943 = !DILocation(line: 440, column: 33, scope: !818)
!944 = !DILocation(line: 441, column: 33, scope: !818)
!945 = !DILocation(line: 441, column: 42, scope: !818)
!946 = !DILocation(line: 441, column: 3, scope: !818)
!947 = !DILocation(line: 441, column: 10, scope: !818)
!948 = !DILocation(line: 441, column: 16, scope: !818)
!949 = !DILocation(line: 441, column: 31, scope: !818)
!950 = !DILocation(line: 444, column: 7, scope: !951)
!951 = distinct !DILexicalBlock(scope: !818, file: !1, line: 444, column: 7)
!952 = !DILocation(line: 444, column: 14, scope: !951)
!953 = !DILocation(line: 445, column: 9, scope: !954)
!954 = distinct !DILexicalBlock(scope: !955, file: !1, line: 445, column: 9)
!955 = distinct !DILexicalBlock(scope: !951, file: !1, line: 444, column: 32)
!956 = !DILocation(line: 445, column: 18, scope: !954)
!957 = !DILocation(line: 445, column: 33, scope: !954)
!958 = !DILocation(line: 446, column: 33, scope: !959)
!959 = distinct !DILexicalBlock(scope: !954, file: !1, line: 445, column: 39)
!960 = !DILocation(line: 446, column: 40, scope: !959)
!961 = !DILocation(line: 446, column: 7, scope: !959)
!962 = !DILocation(line: 446, column: 16, scope: !959)
!963 = !DILocation(line: 446, column: 31, scope: !959)
!964 = !DILocation(line: 447, column: 7, scope: !959)
!965 = !DILocation(line: 447, column: 16, scope: !959)
!966 = !DILocation(line: 447, column: 32, scope: !959)
!967 = !DILocation(line: 448, column: 7, scope: !959)
!968 = !DILocation(line: 448, column: 16, scope: !959)
!969 = !DILocation(line: 448, column: 33, scope: !959)
!970 = !DILocation(line: 449, column: 5, scope: !959)
!971 = !DILocation(line: 450, column: 5, scope: !955)
!972 = !DILocation(line: 450, column: 14, scope: !955)
!973 = !DILocation(line: 450, column: 28, scope: !955)
!974 = !DILocation(line: 451, column: 3, scope: !955)
!975 = !DILocation(line: 453, column: 3, scope: !818)
!976 = distinct !DISubprogram(name: "encode_mcu_AC_first", scope: !1, file: !1, line: 463, type: !523, scopeLine: 464, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !563)
!977 = !DILocalVariable(name: "cinfo", arg: 1, scope: !976, file: !1, line: 463, type: !162)
!978 = !DILocation(line: 463, column: 37, scope: !976)
!979 = !DILocalVariable(name: "MCU_data", arg: 2, scope: !976, file: !1, line: 463, type: !210)
!980 = !DILocation(line: 463, column: 55, scope: !976)
!981 = !DILocalVariable(name: "entropy", scope: !976, file: !1, line: 465, type: !150)
!982 = !DILocation(line: 465, column: 21, scope: !976)
!983 = !DILocation(line: 465, column: 51, scope: !976)
!984 = !DILocation(line: 465, column: 58, scope: !976)
!985 = !DILocalVariable(name: "temp", scope: !976, file: !1, line: 466, type: !188)
!986 = !DILocation(line: 466, column: 16, scope: !976)
!987 = !DILocalVariable(name: "temp2", scope: !976, file: !1, line: 466, type: !188)
!988 = !DILocation(line: 466, column: 22, scope: !976)
!989 = !DILocalVariable(name: "nbits", scope: !976, file: !1, line: 467, type: !188)
!990 = !DILocation(line: 467, column: 16, scope: !976)
!991 = !DILocalVariable(name: "r", scope: !976, file: !1, line: 468, type: !188)
!992 = !DILocation(line: 468, column: 16, scope: !976)
!993 = !DILocalVariable(name: "k", scope: !976, file: !1, line: 468, type: !188)
!994 = !DILocation(line: 468, column: 19, scope: !976)
!995 = !DILocalVariable(name: "Se", scope: !976, file: !1, line: 469, type: !188)
!996 = !DILocation(line: 469, column: 7, scope: !976)
!997 = !DILocation(line: 469, column: 12, scope: !976)
!998 = !DILocation(line: 469, column: 19, scope: !976)
!999 = !DILocalVariable(name: "Al", scope: !976, file: !1, line: 470, type: !188)
!1000 = !DILocation(line: 470, column: 7, scope: !976)
!1001 = !DILocation(line: 470, column: 12, scope: !976)
!1002 = !DILocation(line: 470, column: 19, scope: !976)
!1003 = !DILocalVariable(name: "block", scope: !976, file: !1, line: 471, type: !211)
!1004 = !DILocation(line: 471, column: 13, scope: !976)
!1005 = !DILocation(line: 473, column: 31, scope: !976)
!1006 = !DILocation(line: 473, column: 38, scope: !976)
!1007 = !DILocation(line: 473, column: 44, scope: !976)
!1008 = !DILocation(line: 473, column: 3, scope: !976)
!1009 = !DILocation(line: 473, column: 12, scope: !976)
!1010 = !DILocation(line: 473, column: 29, scope: !976)
!1011 = !DILocation(line: 474, column: 29, scope: !976)
!1012 = !DILocation(line: 474, column: 36, scope: !976)
!1013 = !DILocation(line: 474, column: 42, scope: !976)
!1014 = !DILocation(line: 474, column: 3, scope: !976)
!1015 = !DILocation(line: 474, column: 12, scope: !976)
!1016 = !DILocation(line: 474, column: 27, scope: !976)
!1017 = !DILocation(line: 477, column: 7, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !976, file: !1, line: 477, column: 7)
!1019 = !DILocation(line: 477, column: 14, scope: !1018)
!1020 = !DILocation(line: 478, column: 9, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !1018, file: !1, line: 478, column: 9)
!1022 = !DILocation(line: 478, column: 18, scope: !1021)
!1023 = !DILocation(line: 478, column: 33, scope: !1021)
!1024 = !DILocation(line: 479, column: 20, scope: !1021)
!1025 = !DILocation(line: 479, column: 29, scope: !1021)
!1026 = !DILocation(line: 479, column: 38, scope: !1021)
!1027 = !DILocation(line: 479, column: 7, scope: !1021)
!1028 = !DILocation(line: 478, column: 36, scope: !1021)
!1029 = !DILocation(line: 482, column: 11, scope: !976)
!1030 = !DILocation(line: 482, column: 9, scope: !976)
!1031 = !DILocation(line: 486, column: 5, scope: !976)
!1032 = !DILocation(line: 488, column: 12, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !976, file: !1, line: 488, column: 3)
!1034 = !DILocation(line: 488, column: 19, scope: !1033)
!1035 = !DILocation(line: 488, column: 10, scope: !1033)
!1036 = !DILocation(line: 488, column: 8, scope: !1033)
!1037 = !DILocation(line: 488, column: 23, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !1033, file: !1, line: 488, column: 3)
!1039 = !DILocation(line: 488, column: 28, scope: !1038)
!1040 = !DILocation(line: 488, column: 25, scope: !1038)
!1041 = !DILocation(line: 488, column: 3, scope: !1033)
!1042 = !DILocation(line: 489, column: 19, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !1044, file: !1, line: 489, column: 9)
!1044 = distinct !DILexicalBlock(scope: !1038, file: !1, line: 488, column: 37)
!1045 = !DILocation(line: 489, column: 45, scope: !1043)
!1046 = !DILocation(line: 489, column: 26, scope: !1043)
!1047 = !DILocation(line: 489, column: 17, scope: !1043)
!1048 = !DILocation(line: 489, column: 15, scope: !1043)
!1049 = !DILocation(line: 489, column: 50, scope: !1043)
!1050 = !DILocation(line: 490, column: 8, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !1043, file: !1, line: 489, column: 56)
!1052 = !DILocation(line: 491, column: 7, scope: !1051)
!1053 = !DILocation(line: 498, column: 9, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !1044, file: !1, line: 498, column: 9)
!1055 = !DILocation(line: 498, column: 14, scope: !1054)
!1056 = !DILocation(line: 499, column: 15, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !1054, file: !1, line: 498, column: 19)
!1058 = !DILocation(line: 499, column: 14, scope: !1057)
!1059 = !DILocation(line: 499, column: 12, scope: !1057)
!1060 = !DILocation(line: 500, column: 16, scope: !1057)
!1061 = !DILocation(line: 500, column: 12, scope: !1057)
!1062 = !DILocation(line: 502, column: 16, scope: !1057)
!1063 = !DILocation(line: 502, column: 15, scope: !1057)
!1064 = !DILocation(line: 502, column: 13, scope: !1057)
!1065 = !DILocation(line: 503, column: 5, scope: !1057)
!1066 = !DILocation(line: 504, column: 16, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !1054, file: !1, line: 503, column: 12)
!1068 = !DILocation(line: 504, column: 12, scope: !1067)
!1069 = !DILocation(line: 505, column: 15, scope: !1067)
!1070 = !DILocation(line: 505, column: 13, scope: !1067)
!1071 = !DILocation(line: 508, column: 9, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !1044, file: !1, line: 508, column: 9)
!1073 = !DILocation(line: 508, column: 14, scope: !1072)
!1074 = !DILocation(line: 509, column: 8, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !1072, file: !1, line: 508, column: 20)
!1076 = !DILocation(line: 510, column: 7, scope: !1075)
!1077 = !DILocation(line: 514, column: 9, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1044, file: !1, line: 514, column: 9)
!1079 = !DILocation(line: 514, column: 18, scope: !1078)
!1080 = !DILocation(line: 514, column: 25, scope: !1078)
!1081 = !DILocation(line: 515, column: 19, scope: !1078)
!1082 = !DILocation(line: 515, column: 7, scope: !1078)
!1083 = !DILocation(line: 517, column: 5, scope: !1044)
!1084 = !DILocation(line: 517, column: 12, scope: !1044)
!1085 = !DILocation(line: 517, column: 14, scope: !1044)
!1086 = !DILocation(line: 518, column: 19, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !1044, file: !1, line: 517, column: 20)
!1088 = !DILocation(line: 518, column: 28, scope: !1087)
!1089 = !DILocation(line: 518, column: 37, scope: !1087)
!1090 = !DILocation(line: 518, column: 7, scope: !1087)
!1091 = !DILocation(line: 519, column: 9, scope: !1087)
!1092 = distinct !{!1092, !1083, !1093, !605}
!1093 = !DILocation(line: 520, column: 5, scope: !1044)
!1094 = !DILocation(line: 523, column: 11, scope: !1044)
!1095 = !DILocation(line: 524, column: 5, scope: !1044)
!1096 = !DILocation(line: 524, column: 18, scope: !1044)
!1097 = !DILocation(line: 525, column: 12, scope: !1044)
!1098 = distinct !{!1098, !1095, !1097, !605}
!1099 = !DILocation(line: 528, column: 17, scope: !1044)
!1100 = !DILocation(line: 528, column: 26, scope: !1044)
!1101 = !DILocation(line: 528, column: 35, scope: !1044)
!1102 = !DILocation(line: 528, column: 47, scope: !1044)
!1103 = !DILocation(line: 528, column: 49, scope: !1044)
!1104 = !DILocation(line: 528, column: 57, scope: !1044)
!1105 = !DILocation(line: 528, column: 55, scope: !1044)
!1106 = !DILocation(line: 528, column: 5, scope: !1044)
!1107 = !DILocation(line: 532, column: 15, scope: !1044)
!1108 = !DILocation(line: 532, column: 39, scope: !1044)
!1109 = !DILocation(line: 532, column: 46, scope: !1044)
!1110 = !DILocation(line: 532, column: 5, scope: !1044)
!1111 = !DILocation(line: 534, column: 7, scope: !1044)
!1112 = !DILocation(line: 535, column: 3, scope: !1044)
!1113 = !DILocation(line: 488, column: 33, scope: !1038)
!1114 = !DILocation(line: 488, column: 3, scope: !1038)
!1115 = distinct !{!1115, !1041, !1116, !605}
!1116 = !DILocation(line: 535, column: 3, scope: !1033)
!1117 = !DILocation(line: 537, column: 7, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !976, file: !1, line: 537, column: 7)
!1119 = !DILocation(line: 537, column: 9, scope: !1118)
!1120 = !DILocation(line: 538, column: 5, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !1118, file: !1, line: 537, column: 14)
!1122 = !DILocation(line: 538, column: 14, scope: !1121)
!1123 = !DILocation(line: 538, column: 20, scope: !1121)
!1124 = !DILocation(line: 539, column: 9, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1121, file: !1, line: 539, column: 9)
!1126 = !DILocation(line: 539, column: 18, scope: !1125)
!1127 = !DILocation(line: 539, column: 25, scope: !1125)
!1128 = !DILocation(line: 540, column: 19, scope: !1125)
!1129 = !DILocation(line: 540, column: 7, scope: !1125)
!1130 = !DILocation(line: 541, column: 3, scope: !1121)
!1131 = !DILocation(line: 543, column: 35, scope: !976)
!1132 = !DILocation(line: 543, column: 44, scope: !976)
!1133 = !DILocation(line: 543, column: 3, scope: !976)
!1134 = !DILocation(line: 543, column: 10, scope: !976)
!1135 = !DILocation(line: 543, column: 16, scope: !976)
!1136 = !DILocation(line: 543, column: 33, scope: !976)
!1137 = !DILocation(line: 544, column: 33, scope: !976)
!1138 = !DILocation(line: 544, column: 42, scope: !976)
!1139 = !DILocation(line: 544, column: 3, scope: !976)
!1140 = !DILocation(line: 544, column: 10, scope: !976)
!1141 = !DILocation(line: 544, column: 16, scope: !976)
!1142 = !DILocation(line: 544, column: 31, scope: !976)
!1143 = !DILocation(line: 547, column: 7, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !976, file: !1, line: 547, column: 7)
!1145 = !DILocation(line: 547, column: 14, scope: !1144)
!1146 = !DILocation(line: 548, column: 9, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1148, file: !1, line: 548, column: 9)
!1148 = distinct !DILexicalBlock(scope: !1144, file: !1, line: 547, column: 32)
!1149 = !DILocation(line: 548, column: 18, scope: !1147)
!1150 = !DILocation(line: 548, column: 33, scope: !1147)
!1151 = !DILocation(line: 549, column: 33, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1147, file: !1, line: 548, column: 39)
!1153 = !DILocation(line: 549, column: 40, scope: !1152)
!1154 = !DILocation(line: 549, column: 7, scope: !1152)
!1155 = !DILocation(line: 549, column: 16, scope: !1152)
!1156 = !DILocation(line: 549, column: 31, scope: !1152)
!1157 = !DILocation(line: 550, column: 7, scope: !1152)
!1158 = !DILocation(line: 550, column: 16, scope: !1152)
!1159 = !DILocation(line: 550, column: 32, scope: !1152)
!1160 = !DILocation(line: 551, column: 7, scope: !1152)
!1161 = !DILocation(line: 551, column: 16, scope: !1152)
!1162 = !DILocation(line: 551, column: 33, scope: !1152)
!1163 = !DILocation(line: 552, column: 5, scope: !1152)
!1164 = !DILocation(line: 553, column: 5, scope: !1148)
!1165 = !DILocation(line: 553, column: 14, scope: !1148)
!1166 = !DILocation(line: 553, column: 28, scope: !1148)
!1167 = !DILocation(line: 554, column: 3, scope: !1148)
!1168 = !DILocation(line: 556, column: 3, scope: !976)
!1169 = distinct !DISubprogram(name: "encode_mcu_DC_refine", scope: !1, file: !1, line: 567, type: !523, scopeLine: 568, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !563)
!1170 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1169, file: !1, line: 567, type: !162)
!1171 = !DILocation(line: 567, column: 38, scope: !1169)
!1172 = !DILocalVariable(name: "MCU_data", arg: 2, scope: !1169, file: !1, line: 567, type: !210)
!1173 = !DILocation(line: 567, column: 56, scope: !1169)
!1174 = !DILocalVariable(name: "entropy", scope: !1169, file: !1, line: 569, type: !150)
!1175 = !DILocation(line: 569, column: 21, scope: !1169)
!1176 = !DILocation(line: 569, column: 51, scope: !1169)
!1177 = !DILocation(line: 569, column: 58, scope: !1169)
!1178 = !DILocalVariable(name: "temp", scope: !1169, file: !1, line: 570, type: !188)
!1179 = !DILocation(line: 570, column: 16, scope: !1169)
!1180 = !DILocalVariable(name: "blkn", scope: !1169, file: !1, line: 571, type: !188)
!1181 = !DILocation(line: 571, column: 7, scope: !1169)
!1182 = !DILocalVariable(name: "Al", scope: !1169, file: !1, line: 572, type: !188)
!1183 = !DILocation(line: 572, column: 7, scope: !1169)
!1184 = !DILocation(line: 572, column: 12, scope: !1169)
!1185 = !DILocation(line: 572, column: 19, scope: !1169)
!1186 = !DILocalVariable(name: "block", scope: !1169, file: !1, line: 573, type: !211)
!1187 = !DILocation(line: 573, column: 13, scope: !1169)
!1188 = !DILocation(line: 575, column: 31, scope: !1169)
!1189 = !DILocation(line: 575, column: 38, scope: !1169)
!1190 = !DILocation(line: 575, column: 44, scope: !1169)
!1191 = !DILocation(line: 575, column: 3, scope: !1169)
!1192 = !DILocation(line: 575, column: 12, scope: !1169)
!1193 = !DILocation(line: 575, column: 29, scope: !1169)
!1194 = !DILocation(line: 576, column: 29, scope: !1169)
!1195 = !DILocation(line: 576, column: 36, scope: !1169)
!1196 = !DILocation(line: 576, column: 42, scope: !1169)
!1197 = !DILocation(line: 576, column: 3, scope: !1169)
!1198 = !DILocation(line: 576, column: 12, scope: !1169)
!1199 = !DILocation(line: 576, column: 27, scope: !1169)
!1200 = !DILocation(line: 579, column: 7, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1169, file: !1, line: 579, column: 7)
!1202 = !DILocation(line: 579, column: 14, scope: !1201)
!1203 = !DILocation(line: 580, column: 9, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1201, file: !1, line: 580, column: 9)
!1205 = !DILocation(line: 580, column: 18, scope: !1204)
!1206 = !DILocation(line: 580, column: 33, scope: !1204)
!1207 = !DILocation(line: 581, column: 20, scope: !1204)
!1208 = !DILocation(line: 581, column: 29, scope: !1204)
!1209 = !DILocation(line: 581, column: 38, scope: !1204)
!1210 = !DILocation(line: 581, column: 7, scope: !1204)
!1211 = !DILocation(line: 580, column: 36, scope: !1204)
!1212 = !DILocation(line: 584, column: 13, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1169, file: !1, line: 584, column: 3)
!1214 = !DILocation(line: 584, column: 8, scope: !1213)
!1215 = !DILocation(line: 584, column: 18, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1213, file: !1, line: 584, column: 3)
!1217 = !DILocation(line: 584, column: 25, scope: !1216)
!1218 = !DILocation(line: 584, column: 32, scope: !1216)
!1219 = !DILocation(line: 584, column: 23, scope: !1216)
!1220 = !DILocation(line: 584, column: 3, scope: !1213)
!1221 = !DILocation(line: 585, column: 13, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1216, file: !1, line: 584, column: 55)
!1223 = !DILocation(line: 585, column: 22, scope: !1222)
!1224 = !DILocation(line: 585, column: 11, scope: !1222)
!1225 = !DILocation(line: 588, column: 14, scope: !1222)
!1226 = !DILocation(line: 588, column: 12, scope: !1222)
!1227 = !DILocation(line: 588, column: 10, scope: !1222)
!1228 = !DILocation(line: 589, column: 15, scope: !1222)
!1229 = !DILocation(line: 589, column: 40, scope: !1222)
!1230 = !DILocation(line: 589, column: 48, scope: !1222)
!1231 = !DILocation(line: 589, column: 45, scope: !1222)
!1232 = !DILocation(line: 589, column: 5, scope: !1222)
!1233 = !DILocation(line: 590, column: 3, scope: !1222)
!1234 = !DILocation(line: 584, column: 51, scope: !1216)
!1235 = !DILocation(line: 584, column: 3, scope: !1216)
!1236 = distinct !{!1236, !1220, !1237, !605}
!1237 = !DILocation(line: 590, column: 3, scope: !1213)
!1238 = !DILocation(line: 592, column: 35, scope: !1169)
!1239 = !DILocation(line: 592, column: 44, scope: !1169)
!1240 = !DILocation(line: 592, column: 3, scope: !1169)
!1241 = !DILocation(line: 592, column: 10, scope: !1169)
!1242 = !DILocation(line: 592, column: 16, scope: !1169)
!1243 = !DILocation(line: 592, column: 33, scope: !1169)
!1244 = !DILocation(line: 593, column: 33, scope: !1169)
!1245 = !DILocation(line: 593, column: 42, scope: !1169)
!1246 = !DILocation(line: 593, column: 3, scope: !1169)
!1247 = !DILocation(line: 593, column: 10, scope: !1169)
!1248 = !DILocation(line: 593, column: 16, scope: !1169)
!1249 = !DILocation(line: 593, column: 31, scope: !1169)
!1250 = !DILocation(line: 596, column: 7, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1169, file: !1, line: 596, column: 7)
!1252 = !DILocation(line: 596, column: 14, scope: !1251)
!1253 = !DILocation(line: 597, column: 9, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !1255, file: !1, line: 597, column: 9)
!1255 = distinct !DILexicalBlock(scope: !1251, file: !1, line: 596, column: 32)
!1256 = !DILocation(line: 597, column: 18, scope: !1254)
!1257 = !DILocation(line: 597, column: 33, scope: !1254)
!1258 = !DILocation(line: 598, column: 33, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1254, file: !1, line: 597, column: 39)
!1260 = !DILocation(line: 598, column: 40, scope: !1259)
!1261 = !DILocation(line: 598, column: 7, scope: !1259)
!1262 = !DILocation(line: 598, column: 16, scope: !1259)
!1263 = !DILocation(line: 598, column: 31, scope: !1259)
!1264 = !DILocation(line: 599, column: 7, scope: !1259)
!1265 = !DILocation(line: 599, column: 16, scope: !1259)
!1266 = !DILocation(line: 599, column: 32, scope: !1259)
!1267 = !DILocation(line: 600, column: 7, scope: !1259)
!1268 = !DILocation(line: 600, column: 16, scope: !1259)
!1269 = !DILocation(line: 600, column: 33, scope: !1259)
!1270 = !DILocation(line: 601, column: 5, scope: !1259)
!1271 = !DILocation(line: 602, column: 5, scope: !1255)
!1272 = !DILocation(line: 602, column: 14, scope: !1255)
!1273 = !DILocation(line: 602, column: 28, scope: !1255)
!1274 = !DILocation(line: 603, column: 3, scope: !1255)
!1275 = !DILocation(line: 605, column: 3, scope: !1169)
!1276 = distinct !DISubprogram(name: "encode_mcu_AC_refine", scope: !1, file: !1, line: 614, type: !523, scopeLine: 615, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !563)
!1277 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1276, file: !1, line: 614, type: !162)
!1278 = !DILocation(line: 614, column: 38, scope: !1276)
!1279 = !DILocalVariable(name: "MCU_data", arg: 2, scope: !1276, file: !1, line: 614, type: !210)
!1280 = !DILocation(line: 614, column: 56, scope: !1276)
!1281 = !DILocalVariable(name: "entropy", scope: !1276, file: !1, line: 616, type: !150)
!1282 = !DILocation(line: 616, column: 21, scope: !1276)
!1283 = !DILocation(line: 616, column: 51, scope: !1276)
!1284 = !DILocation(line: 616, column: 58, scope: !1276)
!1285 = !DILocalVariable(name: "temp", scope: !1276, file: !1, line: 617, type: !188)
!1286 = !DILocation(line: 617, column: 16, scope: !1276)
!1287 = !DILocalVariable(name: "r", scope: !1276, file: !1, line: 618, type: !188)
!1288 = !DILocation(line: 618, column: 16, scope: !1276)
!1289 = !DILocalVariable(name: "k", scope: !1276, file: !1, line: 618, type: !188)
!1290 = !DILocation(line: 618, column: 19, scope: !1276)
!1291 = !DILocalVariable(name: "EOB", scope: !1276, file: !1, line: 619, type: !188)
!1292 = !DILocation(line: 619, column: 7, scope: !1276)
!1293 = !DILocalVariable(name: "BR_buffer", scope: !1276, file: !1, line: 620, type: !267)
!1294 = !DILocation(line: 620, column: 9, scope: !1276)
!1295 = !DILocalVariable(name: "BR", scope: !1276, file: !1, line: 621, type: !5)
!1296 = !DILocation(line: 621, column: 16, scope: !1276)
!1297 = !DILocalVariable(name: "Se", scope: !1276, file: !1, line: 622, type: !188)
!1298 = !DILocation(line: 622, column: 7, scope: !1276)
!1299 = !DILocation(line: 622, column: 12, scope: !1276)
!1300 = !DILocation(line: 622, column: 19, scope: !1276)
!1301 = !DILocalVariable(name: "Al", scope: !1276, file: !1, line: 623, type: !188)
!1302 = !DILocation(line: 623, column: 7, scope: !1276)
!1303 = !DILocation(line: 623, column: 12, scope: !1276)
!1304 = !DILocation(line: 623, column: 19, scope: !1276)
!1305 = !DILocalVariable(name: "block", scope: !1276, file: !1, line: 624, type: !211)
!1306 = !DILocation(line: 624, column: 13, scope: !1276)
!1307 = !DILocalVariable(name: "absvalues", scope: !1276, file: !1, line: 625, type: !1308)
!1308 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 2048, elements: !217)
!1309 = !DILocation(line: 625, column: 7, scope: !1276)
!1310 = !DILocation(line: 627, column: 31, scope: !1276)
!1311 = !DILocation(line: 627, column: 38, scope: !1276)
!1312 = !DILocation(line: 627, column: 44, scope: !1276)
!1313 = !DILocation(line: 627, column: 3, scope: !1276)
!1314 = !DILocation(line: 627, column: 12, scope: !1276)
!1315 = !DILocation(line: 627, column: 29, scope: !1276)
!1316 = !DILocation(line: 628, column: 29, scope: !1276)
!1317 = !DILocation(line: 628, column: 36, scope: !1276)
!1318 = !DILocation(line: 628, column: 42, scope: !1276)
!1319 = !DILocation(line: 628, column: 3, scope: !1276)
!1320 = !DILocation(line: 628, column: 12, scope: !1276)
!1321 = !DILocation(line: 628, column: 27, scope: !1276)
!1322 = !DILocation(line: 631, column: 7, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1276, file: !1, line: 631, column: 7)
!1324 = !DILocation(line: 631, column: 14, scope: !1323)
!1325 = !DILocation(line: 632, column: 9, scope: !1326)
!1326 = distinct !DILexicalBlock(scope: !1323, file: !1, line: 632, column: 9)
!1327 = !DILocation(line: 632, column: 18, scope: !1326)
!1328 = !DILocation(line: 632, column: 33, scope: !1326)
!1329 = !DILocation(line: 633, column: 20, scope: !1326)
!1330 = !DILocation(line: 633, column: 29, scope: !1326)
!1331 = !DILocation(line: 633, column: 38, scope: !1326)
!1332 = !DILocation(line: 633, column: 7, scope: !1326)
!1333 = !DILocation(line: 632, column: 36, scope: !1326)
!1334 = !DILocation(line: 636, column: 11, scope: !1276)
!1335 = !DILocation(line: 636, column: 9, scope: !1276)
!1336 = !DILocation(line: 641, column: 7, scope: !1276)
!1337 = !DILocation(line: 642, column: 12, scope: !1338)
!1338 = distinct !DILexicalBlock(scope: !1276, file: !1, line: 642, column: 3)
!1339 = !DILocation(line: 642, column: 19, scope: !1338)
!1340 = !DILocation(line: 642, column: 10, scope: !1338)
!1341 = !DILocation(line: 642, column: 8, scope: !1338)
!1342 = !DILocation(line: 642, column: 23, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !1338, file: !1, line: 642, column: 3)
!1344 = !DILocation(line: 642, column: 28, scope: !1343)
!1345 = !DILocation(line: 642, column: 25, scope: !1343)
!1346 = !DILocation(line: 642, column: 3, scope: !1338)
!1347 = !DILocation(line: 643, column: 14, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !1343, file: !1, line: 642, column: 37)
!1349 = !DILocation(line: 643, column: 40, scope: !1348)
!1350 = !DILocation(line: 643, column: 21, scope: !1348)
!1351 = !DILocation(line: 643, column: 12, scope: !1348)
!1352 = !DILocation(line: 643, column: 10, scope: !1348)
!1353 = !DILocation(line: 648, column: 9, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1348, file: !1, line: 648, column: 9)
!1355 = !DILocation(line: 648, column: 14, scope: !1354)
!1356 = !DILocation(line: 649, column: 15, scope: !1354)
!1357 = !DILocation(line: 649, column: 14, scope: !1354)
!1358 = !DILocation(line: 649, column: 12, scope: !1354)
!1359 = !DILocation(line: 649, column: 7, scope: !1354)
!1360 = !DILocation(line: 650, column: 14, scope: !1348)
!1361 = !DILocation(line: 650, column: 10, scope: !1348)
!1362 = !DILocation(line: 651, column: 20, scope: !1348)
!1363 = !DILocation(line: 651, column: 15, scope: !1348)
!1364 = !DILocation(line: 651, column: 5, scope: !1348)
!1365 = !DILocation(line: 651, column: 18, scope: !1348)
!1366 = !DILocation(line: 652, column: 9, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1348, file: !1, line: 652, column: 9)
!1368 = !DILocation(line: 652, column: 14, scope: !1367)
!1369 = !DILocation(line: 653, column: 13, scope: !1367)
!1370 = !DILocation(line: 653, column: 11, scope: !1367)
!1371 = !DILocation(line: 653, column: 7, scope: !1367)
!1372 = !DILocation(line: 654, column: 3, scope: !1348)
!1373 = !DILocation(line: 642, column: 33, scope: !1343)
!1374 = !DILocation(line: 642, column: 3, scope: !1343)
!1375 = distinct !{!1375, !1346, !1376, !605}
!1376 = !DILocation(line: 654, column: 3, scope: !1338)
!1377 = !DILocation(line: 658, column: 5, scope: !1276)
!1378 = !DILocation(line: 659, column: 6, scope: !1276)
!1379 = !DILocation(line: 660, column: 15, scope: !1276)
!1380 = !DILocation(line: 660, column: 24, scope: !1276)
!1381 = !DILocation(line: 660, column: 37, scope: !1276)
!1382 = !DILocation(line: 660, column: 46, scope: !1276)
!1383 = !DILocation(line: 660, column: 35, scope: !1276)
!1384 = !DILocation(line: 660, column: 13, scope: !1276)
!1385 = !DILocation(line: 662, column: 12, scope: !1386)
!1386 = distinct !DILexicalBlock(scope: !1276, file: !1, line: 662, column: 3)
!1387 = !DILocation(line: 662, column: 19, scope: !1386)
!1388 = !DILocation(line: 662, column: 10, scope: !1386)
!1389 = !DILocation(line: 662, column: 8, scope: !1386)
!1390 = !DILocation(line: 662, column: 23, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1386, file: !1, line: 662, column: 3)
!1392 = !DILocation(line: 662, column: 28, scope: !1391)
!1393 = !DILocation(line: 662, column: 25, scope: !1391)
!1394 = !DILocation(line: 662, column: 3, scope: !1386)
!1395 = !DILocation(line: 663, column: 27, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1397, file: !1, line: 663, column: 9)
!1397 = distinct !DILexicalBlock(scope: !1391, file: !1, line: 662, column: 37)
!1398 = !DILocation(line: 663, column: 17, scope: !1396)
!1399 = !DILocation(line: 663, column: 15, scope: !1396)
!1400 = !DILocation(line: 663, column: 31, scope: !1396)
!1401 = !DILocation(line: 664, column: 8, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1396, file: !1, line: 663, column: 37)
!1403 = !DILocation(line: 665, column: 7, scope: !1402)
!1404 = !DILocation(line: 669, column: 5, scope: !1397)
!1405 = !DILocation(line: 669, column: 12, scope: !1397)
!1406 = !DILocation(line: 669, column: 14, scope: !1397)
!1407 = !DILocation(line: 669, column: 19, scope: !1397)
!1408 = !DILocation(line: 669, column: 22, scope: !1397)
!1409 = !DILocation(line: 669, column: 27, scope: !1397)
!1410 = !DILocation(line: 669, column: 24, scope: !1397)
!1411 = !DILocation(line: 0, scope: !1397)
!1412 = !DILocation(line: 671, column: 19, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !1397, file: !1, line: 669, column: 32)
!1414 = !DILocation(line: 671, column: 7, scope: !1413)
!1415 = !DILocation(line: 673, column: 19, scope: !1413)
!1416 = !DILocation(line: 673, column: 28, scope: !1413)
!1417 = !DILocation(line: 673, column: 37, scope: !1413)
!1418 = !DILocation(line: 673, column: 7, scope: !1413)
!1419 = !DILocation(line: 674, column: 9, scope: !1413)
!1420 = !DILocation(line: 676, column: 26, scope: !1413)
!1421 = !DILocation(line: 676, column: 35, scope: !1413)
!1422 = !DILocation(line: 676, column: 46, scope: !1413)
!1423 = !DILocation(line: 676, column: 7, scope: !1413)
!1424 = !DILocation(line: 677, column: 19, scope: !1413)
!1425 = !DILocation(line: 677, column: 28, scope: !1413)
!1426 = !DILocation(line: 677, column: 17, scope: !1413)
!1427 = !DILocation(line: 678, column: 10, scope: !1413)
!1428 = distinct !{!1428, !1404, !1429, !605}
!1429 = !DILocation(line: 679, column: 5, scope: !1397)
!1430 = !DILocation(line: 686, column: 9, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1397, file: !1, line: 686, column: 9)
!1432 = !DILocation(line: 686, column: 14, scope: !1431)
!1433 = !DILocation(line: 688, column: 33, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1431, file: !1, line: 686, column: 19)
!1435 = !DILocation(line: 688, column: 38, scope: !1434)
!1436 = !DILocation(line: 688, column: 25, scope: !1434)
!1437 = !DILocation(line: 688, column: 7, scope: !1434)
!1438 = !DILocation(line: 688, column: 19, scope: !1434)
!1439 = !DILocation(line: 688, column: 23, scope: !1434)
!1440 = !DILocation(line: 689, column: 7, scope: !1434)
!1441 = !DILocation(line: 693, column: 17, scope: !1397)
!1442 = !DILocation(line: 693, column: 5, scope: !1397)
!1443 = !DILocation(line: 696, column: 17, scope: !1397)
!1444 = !DILocation(line: 696, column: 26, scope: !1397)
!1445 = !DILocation(line: 696, column: 35, scope: !1397)
!1446 = !DILocation(line: 696, column: 47, scope: !1397)
!1447 = !DILocation(line: 696, column: 49, scope: !1397)
!1448 = !DILocation(line: 696, column: 55, scope: !1397)
!1449 = !DILocation(line: 696, column: 5, scope: !1397)
!1450 = !DILocation(line: 699, column: 15, scope: !1397)
!1451 = !DILocation(line: 699, column: 41, scope: !1397)
!1452 = !DILocation(line: 699, column: 22, scope: !1397)
!1453 = !DILocation(line: 699, column: 13, scope: !1397)
!1454 = !DILocation(line: 699, column: 45, scope: !1397)
!1455 = !DILocation(line: 699, column: 12, scope: !1397)
!1456 = !DILocation(line: 699, column: 10, scope: !1397)
!1457 = !DILocation(line: 700, column: 15, scope: !1397)
!1458 = !DILocation(line: 700, column: 39, scope: !1397)
!1459 = !DILocation(line: 700, column: 5, scope: !1397)
!1460 = !DILocation(line: 703, column: 24, scope: !1397)
!1461 = !DILocation(line: 703, column: 33, scope: !1397)
!1462 = !DILocation(line: 703, column: 44, scope: !1397)
!1463 = !DILocation(line: 703, column: 5, scope: !1397)
!1464 = !DILocation(line: 704, column: 17, scope: !1397)
!1465 = !DILocation(line: 704, column: 26, scope: !1397)
!1466 = !DILocation(line: 704, column: 15, scope: !1397)
!1467 = !DILocation(line: 705, column: 8, scope: !1397)
!1468 = !DILocation(line: 706, column: 7, scope: !1397)
!1469 = !DILocation(line: 707, column: 3, scope: !1397)
!1470 = !DILocation(line: 662, column: 33, scope: !1391)
!1471 = !DILocation(line: 662, column: 3, scope: !1391)
!1472 = distinct !{!1472, !1394, !1473, !605}
!1473 = !DILocation(line: 707, column: 3, scope: !1386)
!1474 = !DILocation(line: 709, column: 7, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1276, file: !1, line: 709, column: 7)
!1476 = !DILocation(line: 709, column: 9, scope: !1475)
!1477 = !DILocation(line: 709, column: 13, scope: !1475)
!1478 = !DILocation(line: 709, column: 16, scope: !1475)
!1479 = !DILocation(line: 709, column: 19, scope: !1475)
!1480 = !DILocation(line: 710, column: 5, scope: !1481)
!1481 = distinct !DILexicalBlock(scope: !1475, file: !1, line: 709, column: 24)
!1482 = !DILocation(line: 710, column: 14, scope: !1481)
!1483 = !DILocation(line: 710, column: 20, scope: !1481)
!1484 = !DILocation(line: 711, column: 20, scope: !1481)
!1485 = !DILocation(line: 711, column: 5, scope: !1481)
!1486 = !DILocation(line: 711, column: 14, scope: !1481)
!1487 = !DILocation(line: 711, column: 17, scope: !1481)
!1488 = !DILocation(line: 716, column: 9, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !1481, file: !1, line: 716, column: 9)
!1490 = !DILocation(line: 716, column: 18, scope: !1489)
!1491 = !DILocation(line: 716, column: 25, scope: !1489)
!1492 = !DILocation(line: 716, column: 35, scope: !1489)
!1493 = !DILocation(line: 716, column: 38, scope: !1489)
!1494 = !DILocation(line: 716, column: 47, scope: !1489)
!1495 = !DILocation(line: 716, column: 50, scope: !1489)
!1496 = !DILocation(line: 717, column: 19, scope: !1489)
!1497 = !DILocation(line: 717, column: 7, scope: !1489)
!1498 = !DILocation(line: 718, column: 3, scope: !1481)
!1499 = !DILocation(line: 720, column: 35, scope: !1276)
!1500 = !DILocation(line: 720, column: 44, scope: !1276)
!1501 = !DILocation(line: 720, column: 3, scope: !1276)
!1502 = !DILocation(line: 720, column: 10, scope: !1276)
!1503 = !DILocation(line: 720, column: 16, scope: !1276)
!1504 = !DILocation(line: 720, column: 33, scope: !1276)
!1505 = !DILocation(line: 721, column: 33, scope: !1276)
!1506 = !DILocation(line: 721, column: 42, scope: !1276)
!1507 = !DILocation(line: 721, column: 3, scope: !1276)
!1508 = !DILocation(line: 721, column: 10, scope: !1276)
!1509 = !DILocation(line: 721, column: 16, scope: !1276)
!1510 = !DILocation(line: 721, column: 31, scope: !1276)
!1511 = !DILocation(line: 724, column: 7, scope: !1512)
!1512 = distinct !DILexicalBlock(scope: !1276, file: !1, line: 724, column: 7)
!1513 = !DILocation(line: 724, column: 14, scope: !1512)
!1514 = !DILocation(line: 725, column: 9, scope: !1515)
!1515 = distinct !DILexicalBlock(scope: !1516, file: !1, line: 725, column: 9)
!1516 = distinct !DILexicalBlock(scope: !1512, file: !1, line: 724, column: 32)
!1517 = !DILocation(line: 725, column: 18, scope: !1515)
!1518 = !DILocation(line: 725, column: 33, scope: !1515)
!1519 = !DILocation(line: 726, column: 33, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !1515, file: !1, line: 725, column: 39)
!1521 = !DILocation(line: 726, column: 40, scope: !1520)
!1522 = !DILocation(line: 726, column: 7, scope: !1520)
!1523 = !DILocation(line: 726, column: 16, scope: !1520)
!1524 = !DILocation(line: 726, column: 31, scope: !1520)
!1525 = !DILocation(line: 727, column: 7, scope: !1520)
!1526 = !DILocation(line: 727, column: 16, scope: !1520)
!1527 = !DILocation(line: 727, column: 32, scope: !1520)
!1528 = !DILocation(line: 728, column: 7, scope: !1520)
!1529 = !DILocation(line: 728, column: 16, scope: !1520)
!1530 = !DILocation(line: 728, column: 33, scope: !1520)
!1531 = !DILocation(line: 729, column: 5, scope: !1520)
!1532 = !DILocation(line: 730, column: 5, scope: !1516)
!1533 = !DILocation(line: 730, column: 14, scope: !1516)
!1534 = !DILocation(line: 730, column: 28, scope: !1516)
!1535 = !DILocation(line: 731, column: 3, scope: !1516)
!1536 = !DILocation(line: 733, column: 3, scope: !1276)
!1537 = distinct !DISubprogram(name: "finish_pass_gather_phuff", scope: !1, file: !1, line: 763, type: !307, scopeLine: 764, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !563)
!1538 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1537, file: !1, line: 763, type: !162)
!1539 = !DILocation(line: 763, column: 42, scope: !1537)
!1540 = !DILocalVariable(name: "entropy", scope: !1537, file: !1, line: 765, type: !150)
!1541 = !DILocation(line: 765, column: 21, scope: !1537)
!1542 = !DILocation(line: 765, column: 51, scope: !1537)
!1543 = !DILocation(line: 765, column: 58, scope: !1537)
!1544 = !DILocalVariable(name: "is_DC_band", scope: !1537, file: !1, line: 766, type: !226)
!1545 = !DILocation(line: 766, column: 11, scope: !1537)
!1546 = !DILocalVariable(name: "ci", scope: !1537, file: !1, line: 767, type: !188)
!1547 = !DILocation(line: 767, column: 7, scope: !1537)
!1548 = !DILocalVariable(name: "tbl", scope: !1537, file: !1, line: 767, type: !188)
!1549 = !DILocation(line: 767, column: 11, scope: !1537)
!1550 = !DILocalVariable(name: "compptr", scope: !1537, file: !1, line: 768, type: !325)
!1551 = !DILocation(line: 768, column: 25, scope: !1537)
!1552 = !DILocalVariable(name: "htblptr", scope: !1537, file: !1, line: 769, type: !1553)
!1553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!1554 = !DILocation(line: 769, column: 15, scope: !1537)
!1555 = !DILocalVariable(name: "did", scope: !1537, file: !1, line: 770, type: !1556)
!1556 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 128, elements: !361)
!1557 = !DILocation(line: 770, column: 11, scope: !1537)
!1558 = !DILocation(line: 773, column: 15, scope: !1537)
!1559 = !DILocation(line: 773, column: 3, scope: !1537)
!1560 = !DILocation(line: 775, column: 17, scope: !1537)
!1561 = !DILocation(line: 775, column: 24, scope: !1537)
!1562 = !DILocation(line: 775, column: 27, scope: !1537)
!1563 = !DILocation(line: 775, column: 14, scope: !1537)
!1564 = !DILocation(line: 780, column: 3, scope: !1537)
!1565 = !DILocation(line: 782, column: 11, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1537, file: !1, line: 782, column: 3)
!1567 = !DILocation(line: 782, column: 8, scope: !1566)
!1568 = !DILocation(line: 782, column: 16, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1566, file: !1, line: 782, column: 3)
!1570 = !DILocation(line: 782, column: 21, scope: !1569)
!1571 = !DILocation(line: 782, column: 28, scope: !1569)
!1572 = !DILocation(line: 782, column: 19, scope: !1569)
!1573 = !DILocation(line: 782, column: 3, scope: !1566)
!1574 = !DILocation(line: 783, column: 15, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1569, file: !1, line: 782, column: 49)
!1576 = !DILocation(line: 783, column: 22, scope: !1575)
!1577 = !DILocation(line: 783, column: 36, scope: !1575)
!1578 = !DILocation(line: 783, column: 13, scope: !1575)
!1579 = !DILocation(line: 784, column: 9, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !1575, file: !1, line: 784, column: 9)
!1581 = !DILocation(line: 785, column: 11, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !1583, file: !1, line: 785, column: 11)
!1583 = distinct !DILexicalBlock(scope: !1580, file: !1, line: 784, column: 21)
!1584 = !DILocation(line: 785, column: 18, scope: !1582)
!1585 = !DILocation(line: 785, column: 21, scope: !1582)
!1586 = !DILocation(line: 786, column: 2, scope: !1582)
!1587 = !DILocation(line: 787, column: 13, scope: !1583)
!1588 = !DILocation(line: 787, column: 22, scope: !1583)
!1589 = !DILocation(line: 787, column: 11, scope: !1583)
!1590 = !DILocation(line: 788, column: 5, scope: !1583)
!1591 = !DILocation(line: 789, column: 13, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1580, file: !1, line: 788, column: 12)
!1593 = !DILocation(line: 789, column: 22, scope: !1592)
!1594 = !DILocation(line: 789, column: 11, scope: !1592)
!1595 = !DILocation(line: 791, column: 15, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !1575, file: !1, line: 791, column: 9)
!1597 = !DILocation(line: 791, column: 11, scope: !1596)
!1598 = !DILocation(line: 791, column: 9, scope: !1596)
!1599 = !DILocation(line: 792, column: 11, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !1601, file: !1, line: 792, column: 11)
!1601 = distinct !DILexicalBlock(scope: !1596, file: !1, line: 791, column: 21)
!1602 = !DILocation(line: 793, column: 21, scope: !1600)
!1603 = !DILocation(line: 793, column: 28, scope: !1600)
!1604 = !DILocation(line: 793, column: 45, scope: !1600)
!1605 = !DILocation(line: 793, column: 17, scope: !1600)
!1606 = !DILocation(line: 793, column: 9, scope: !1600)
!1607 = !DILocation(line: 795, column: 21, scope: !1600)
!1608 = !DILocation(line: 795, column: 28, scope: !1600)
!1609 = !DILocation(line: 795, column: 45, scope: !1600)
!1610 = !DILocation(line: 795, column: 17, scope: !1600)
!1611 = !DILocation(line: 796, column: 12, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1601, file: !1, line: 796, column: 11)
!1613 = !DILocation(line: 796, column: 11, scope: !1612)
!1614 = !DILocation(line: 796, column: 20, scope: !1612)
!1615 = !DILocation(line: 797, column: 57, scope: !1612)
!1616 = !DILocation(line: 797, column: 20, scope: !1612)
!1617 = !DILocation(line: 797, column: 10, scope: !1612)
!1618 = !DILocation(line: 797, column: 18, scope: !1612)
!1619 = !DILocation(line: 797, column: 9, scope: !1612)
!1620 = !DILocation(line: 798, column: 30, scope: !1601)
!1621 = !DILocation(line: 798, column: 38, scope: !1601)
!1622 = !DILocation(line: 798, column: 37, scope: !1601)
!1623 = !DILocation(line: 798, column: 47, scope: !1601)
!1624 = !DILocation(line: 798, column: 56, scope: !1601)
!1625 = !DILocation(line: 798, column: 67, scope: !1601)
!1626 = !DILocation(line: 798, column: 7, scope: !1601)
!1627 = !DILocation(line: 799, column: 11, scope: !1601)
!1628 = !DILocation(line: 799, column: 7, scope: !1601)
!1629 = !DILocation(line: 799, column: 16, scope: !1601)
!1630 = !DILocation(line: 800, column: 5, scope: !1601)
!1631 = !DILocation(line: 801, column: 3, scope: !1575)
!1632 = !DILocation(line: 782, column: 45, scope: !1569)
!1633 = !DILocation(line: 782, column: 3, scope: !1569)
!1634 = distinct !{!1634, !1573, !1635, !605}
!1635 = !DILocation(line: 801, column: 3, scope: !1566)
!1636 = !DILocation(line: 802, column: 1, scope: !1537)
!1637 = distinct !DISubprogram(name: "finish_pass_phuff", scope: !1, file: !1, line: 742, type: !307, scopeLine: 743, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !563)
!1638 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1637, file: !1, line: 742, type: !162)
!1639 = !DILocation(line: 742, column: 35, scope: !1637)
!1640 = !DILocalVariable(name: "entropy", scope: !1637, file: !1, line: 744, type: !150)
!1641 = !DILocation(line: 744, column: 21, scope: !1637)
!1642 = !DILocation(line: 744, column: 51, scope: !1637)
!1643 = !DILocation(line: 744, column: 58, scope: !1637)
!1644 = !DILocation(line: 746, column: 31, scope: !1637)
!1645 = !DILocation(line: 746, column: 38, scope: !1637)
!1646 = !DILocation(line: 746, column: 44, scope: !1637)
!1647 = !DILocation(line: 746, column: 3, scope: !1637)
!1648 = !DILocation(line: 746, column: 12, scope: !1637)
!1649 = !DILocation(line: 746, column: 29, scope: !1637)
!1650 = !DILocation(line: 747, column: 29, scope: !1637)
!1651 = !DILocation(line: 747, column: 36, scope: !1637)
!1652 = !DILocation(line: 747, column: 42, scope: !1637)
!1653 = !DILocation(line: 747, column: 3, scope: !1637)
!1654 = !DILocation(line: 747, column: 12, scope: !1637)
!1655 = !DILocation(line: 747, column: 27, scope: !1637)
!1656 = !DILocation(line: 750, column: 15, scope: !1637)
!1657 = !DILocation(line: 750, column: 3, scope: !1637)
!1658 = !DILocation(line: 751, column: 14, scope: !1637)
!1659 = !DILocation(line: 751, column: 3, scope: !1637)
!1660 = !DILocation(line: 753, column: 35, scope: !1637)
!1661 = !DILocation(line: 753, column: 44, scope: !1637)
!1662 = !DILocation(line: 753, column: 3, scope: !1637)
!1663 = !DILocation(line: 753, column: 10, scope: !1637)
!1664 = !DILocation(line: 753, column: 16, scope: !1637)
!1665 = !DILocation(line: 753, column: 33, scope: !1637)
!1666 = !DILocation(line: 754, column: 33, scope: !1637)
!1667 = !DILocation(line: 754, column: 42, scope: !1637)
!1668 = !DILocation(line: 754, column: 3, scope: !1637)
!1669 = !DILocation(line: 754, column: 10, scope: !1637)
!1670 = !DILocation(line: 754, column: 16, scope: !1637)
!1671 = !DILocation(line: 754, column: 31, scope: !1637)
!1672 = !DILocation(line: 755, column: 1, scope: !1637)
!1673 = distinct !DISubprogram(name: "emit_restart", scope: !1, file: !1, line: 351, type: !1674, scopeLine: 352, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !563)
!1674 = !DISubroutineType(types: !1675)
!1675 = !{null, !150, !188}
!1676 = !DILocalVariable(name: "entropy", arg: 1, scope: !1673, file: !1, line: 351, type: !150)
!1677 = !DILocation(line: 351, column: 33, scope: !1673)
!1678 = !DILocalVariable(name: "restart_num", arg: 2, scope: !1673, file: !1, line: 351, type: !188)
!1679 = !DILocation(line: 351, column: 46, scope: !1673)
!1680 = !DILocalVariable(name: "ci", scope: !1673, file: !1, line: 353, type: !188)
!1681 = !DILocation(line: 353, column: 7, scope: !1673)
!1682 = !DILocation(line: 355, column: 15, scope: !1673)
!1683 = !DILocation(line: 355, column: 3, scope: !1673)
!1684 = !DILocation(line: 357, column: 9, scope: !1685)
!1685 = distinct !DILexicalBlock(scope: !1673, file: !1, line: 357, column: 7)
!1686 = !DILocation(line: 357, column: 18, scope: !1685)
!1687 = !DILocation(line: 357, column: 7, scope: !1685)
!1688 = !DILocation(line: 358, column: 16, scope: !1689)
!1689 = distinct !DILexicalBlock(scope: !1685, file: !1, line: 357, column: 37)
!1690 = !DILocation(line: 358, column: 5, scope: !1689)
!1691 = !DILocation(line: 359, column: 5, scope: !1692)
!1692 = distinct !DILexicalBlock(scope: !1689, file: !1, line: 359, column: 5)
!1693 = !DILocation(line: 359, column: 5, scope: !1694)
!1694 = distinct !DILexicalBlock(scope: !1692, file: !1, line: 359, column: 5)
!1695 = !DILocation(line: 360, column: 5, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !1689, file: !1, line: 360, column: 5)
!1697 = !DILocation(line: 360, column: 5, scope: !1698)
!1698 = distinct !DILexicalBlock(scope: !1696, file: !1, line: 360, column: 5)
!1699 = !DILocation(line: 361, column: 3, scope: !1689)
!1700 = !DILocation(line: 363, column: 7, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !1673, file: !1, line: 363, column: 7)
!1702 = !DILocation(line: 363, column: 16, scope: !1701)
!1703 = !DILocation(line: 363, column: 23, scope: !1701)
!1704 = !DILocation(line: 363, column: 26, scope: !1701)
!1705 = !DILocation(line: 365, column: 13, scope: !1706)
!1706 = distinct !DILexicalBlock(scope: !1707, file: !1, line: 365, column: 5)
!1707 = distinct !DILexicalBlock(scope: !1701, file: !1, line: 363, column: 32)
!1708 = !DILocation(line: 365, column: 10, scope: !1706)
!1709 = !DILocation(line: 365, column: 18, scope: !1710)
!1710 = distinct !DILexicalBlock(scope: !1706, file: !1, line: 365, column: 5)
!1711 = !DILocation(line: 365, column: 23, scope: !1710)
!1712 = !DILocation(line: 365, column: 32, scope: !1710)
!1713 = !DILocation(line: 365, column: 39, scope: !1710)
!1714 = !DILocation(line: 365, column: 21, scope: !1710)
!1715 = !DILocation(line: 365, column: 5, scope: !1706)
!1716 = !DILocation(line: 366, column: 7, scope: !1710)
!1717 = !DILocation(line: 366, column: 16, scope: !1710)
!1718 = !DILocation(line: 366, column: 28, scope: !1710)
!1719 = !DILocation(line: 366, column: 32, scope: !1710)
!1720 = !DILocation(line: 365, column: 56, scope: !1710)
!1721 = !DILocation(line: 365, column: 5, scope: !1710)
!1722 = distinct !{!1722, !1715, !1723, !605}
!1723 = !DILocation(line: 366, column: 34, scope: !1706)
!1724 = !DILocation(line: 367, column: 3, scope: !1707)
!1725 = !DILocation(line: 369, column: 5, scope: !1726)
!1726 = distinct !DILexicalBlock(scope: !1701, file: !1, line: 367, column: 10)
!1727 = !DILocation(line: 369, column: 14, scope: !1726)
!1728 = !DILocation(line: 369, column: 21, scope: !1726)
!1729 = !DILocation(line: 370, column: 5, scope: !1726)
!1730 = !DILocation(line: 370, column: 14, scope: !1726)
!1731 = !DILocation(line: 370, column: 17, scope: !1726)
!1732 = !DILocation(line: 372, column: 1, scope: !1673)
!1733 = distinct !DISubprogram(name: "emit_symbol", scope: !1, file: !1, line: 288, type: !1734, scopeLine: 289, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !563)
!1734 = !DISubroutineType(types: !1735)
!1735 = !{null, !150, !188, !188}
!1736 = !DILocalVariable(name: "entropy", arg: 1, scope: !1733, file: !1, line: 288, type: !150)
!1737 = !DILocation(line: 288, column: 32, scope: !1733)
!1738 = !DILocalVariable(name: "tbl_no", arg: 2, scope: !1733, file: !1, line: 288, type: !188)
!1739 = !DILocation(line: 288, column: 45, scope: !1733)
!1740 = !DILocalVariable(name: "symbol", arg: 3, scope: !1733, file: !1, line: 288, type: !188)
!1741 = !DILocation(line: 288, column: 57, scope: !1733)
!1742 = !DILocation(line: 290, column: 7, scope: !1743)
!1743 = distinct !DILexicalBlock(scope: !1733, file: !1, line: 290, column: 7)
!1744 = !DILocation(line: 290, column: 16, scope: !1743)
!1745 = !DILocation(line: 291, column: 5, scope: !1743)
!1746 = !DILocation(line: 291, column: 14, scope: !1743)
!1747 = !DILocation(line: 291, column: 25, scope: !1743)
!1748 = !DILocation(line: 291, column: 33, scope: !1743)
!1749 = !DILocation(line: 291, column: 40, scope: !1743)
!1750 = !DILocalVariable(name: "tbl", scope: !1751, file: !1, line: 293, type: !542)
!1751 = distinct !DILexicalBlock(scope: !1743, file: !1, line: 292, column: 8)
!1752 = !DILocation(line: 293, column: 21, scope: !1751)
!1753 = !DILocation(line: 293, column: 27, scope: !1751)
!1754 = !DILocation(line: 293, column: 36, scope: !1751)
!1755 = !DILocation(line: 293, column: 49, scope: !1751)
!1756 = !DILocation(line: 294, column: 15, scope: !1751)
!1757 = !DILocation(line: 294, column: 24, scope: !1751)
!1758 = !DILocation(line: 294, column: 29, scope: !1751)
!1759 = !DILocation(line: 294, column: 36, scope: !1751)
!1760 = !DILocation(line: 294, column: 45, scope: !1751)
!1761 = !DILocation(line: 294, column: 50, scope: !1751)
!1762 = !DILocation(line: 294, column: 57, scope: !1751)
!1763 = !DILocation(line: 294, column: 5, scope: !1751)
!1764 = !DILocation(line: 296, column: 1, scope: !1733)
!1765 = distinct !DISubprogram(name: "emit_bits", scope: !1, file: !1, line: 235, type: !1766, scopeLine: 237, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !563)
!1766 = !DISubroutineType(types: !1767)
!1767 = !{null, !150, !5, !188}
!1768 = !DILocalVariable(name: "entropy", arg: 1, scope: !1765, file: !1, line: 235, type: !150)
!1769 = !DILocation(line: 235, column: 30, scope: !1765)
!1770 = !DILocalVariable(name: "code", arg: 2, scope: !1765, file: !1, line: 235, type: !5)
!1771 = !DILocation(line: 235, column: 52, scope: !1765)
!1772 = !DILocalVariable(name: "size", arg: 3, scope: !1765, file: !1, line: 235, type: !188)
!1773 = !DILocation(line: 235, column: 62, scope: !1765)
!1774 = !DILocalVariable(name: "put_buffer", scope: !1765, file: !1, line: 239, type: !530)
!1775 = !DILocation(line: 239, column: 18, scope: !1765)
!1776 = !DILocation(line: 239, column: 39, scope: !1765)
!1777 = !DILocation(line: 239, column: 31, scope: !1765)
!1778 = !DILocalVariable(name: "put_bits", scope: !1765, file: !1, line: 240, type: !188)
!1779 = !DILocation(line: 240, column: 16, scope: !1765)
!1780 = !DILocation(line: 240, column: 27, scope: !1765)
!1781 = !DILocation(line: 240, column: 36, scope: !1765)
!1782 = !DILocation(line: 243, column: 7, scope: !1783)
!1783 = distinct !DILexicalBlock(scope: !1765, file: !1, line: 243, column: 7)
!1784 = !DILocation(line: 243, column: 12, scope: !1783)
!1785 = !DILocation(line: 244, column: 5, scope: !1783)
!1786 = !DILocation(line: 246, column: 7, scope: !1787)
!1787 = distinct !DILexicalBlock(scope: !1765, file: !1, line: 246, column: 7)
!1788 = !DILocation(line: 246, column: 16, scope: !1787)
!1789 = !DILocation(line: 247, column: 5, scope: !1787)
!1790 = !DILocation(line: 249, column: 31, scope: !1765)
!1791 = !DILocation(line: 249, column: 29, scope: !1765)
!1792 = !DILocation(line: 249, column: 37, scope: !1765)
!1793 = !DILocation(line: 249, column: 14, scope: !1765)
!1794 = !DILocation(line: 251, column: 15, scope: !1765)
!1795 = !DILocation(line: 251, column: 12, scope: !1765)
!1796 = !DILocation(line: 253, column: 23, scope: !1765)
!1797 = !DILocation(line: 253, column: 21, scope: !1765)
!1798 = !DILocation(line: 253, column: 14, scope: !1765)
!1799 = !DILocation(line: 255, column: 17, scope: !1765)
!1800 = !DILocation(line: 255, column: 26, scope: !1765)
!1801 = !DILocation(line: 255, column: 14, scope: !1765)
!1802 = !DILocation(line: 257, column: 3, scope: !1765)
!1803 = !DILocation(line: 257, column: 10, scope: !1765)
!1804 = !DILocation(line: 257, column: 19, scope: !1765)
!1805 = !DILocalVariable(name: "c", scope: !1806, file: !1, line: 258, type: !188)
!1806 = distinct !DILexicalBlock(scope: !1765, file: !1, line: 257, column: 25)
!1807 = !DILocation(line: 258, column: 9, scope: !1806)
!1808 = !DILocation(line: 258, column: 21, scope: !1806)
!1809 = !DILocation(line: 258, column: 32, scope: !1806)
!1810 = !DILocation(line: 258, column: 39, scope: !1806)
!1811 = !DILocation(line: 258, column: 13, scope: !1806)
!1812 = !DILocation(line: 260, column: 5, scope: !1813)
!1813 = distinct !DILexicalBlock(scope: !1806, file: !1, line: 260, column: 5)
!1814 = !DILocation(line: 260, column: 5, scope: !1815)
!1815 = distinct !DILexicalBlock(scope: !1813, file: !1, line: 260, column: 5)
!1816 = !DILocation(line: 261, column: 9, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !1806, file: !1, line: 261, column: 9)
!1818 = !DILocation(line: 261, column: 11, scope: !1817)
!1819 = !DILocation(line: 262, column: 7, scope: !1820)
!1820 = distinct !DILexicalBlock(scope: !1821, file: !1, line: 262, column: 7)
!1821 = distinct !DILexicalBlock(scope: !1817, file: !1, line: 261, column: 20)
!1822 = !DILocation(line: 262, column: 7, scope: !1823)
!1823 = distinct !DILexicalBlock(scope: !1820, file: !1, line: 262, column: 7)
!1824 = !DILocation(line: 263, column: 5, scope: !1821)
!1825 = !DILocation(line: 264, column: 16, scope: !1806)
!1826 = !DILocation(line: 265, column: 14, scope: !1806)
!1827 = distinct !{!1827, !1802, !1828, !605}
!1828 = !DILocation(line: 266, column: 3, scope: !1765)
!1829 = !DILocation(line: 268, column: 25, scope: !1765)
!1830 = !DILocation(line: 268, column: 3, scope: !1765)
!1831 = !DILocation(line: 268, column: 12, scope: !1765)
!1832 = !DILocation(line: 268, column: 23, scope: !1765)
!1833 = !DILocation(line: 269, column: 23, scope: !1765)
!1834 = !DILocation(line: 269, column: 3, scope: !1765)
!1835 = !DILocation(line: 269, column: 12, scope: !1765)
!1836 = !DILocation(line: 269, column: 21, scope: !1765)
!1837 = !DILocation(line: 270, column: 1, scope: !1765)
!1838 = distinct !DISubprogram(name: "emit_eobrun", scope: !1, file: !1, line: 323, type: !1839, scopeLine: 324, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !563)
!1839 = !DISubroutineType(types: !1840)
!1840 = !{null, !150}
!1841 = !DILocalVariable(name: "entropy", arg: 1, scope: !1838, file: !1, line: 323, type: !150)
!1842 = !DILocation(line: 323, column: 32, scope: !1838)
!1843 = !DILocalVariable(name: "temp", scope: !1838, file: !1, line: 325, type: !188)
!1844 = !DILocation(line: 325, column: 16, scope: !1838)
!1845 = !DILocalVariable(name: "nbits", scope: !1838, file: !1, line: 325, type: !188)
!1846 = !DILocation(line: 325, column: 22, scope: !1838)
!1847 = !DILocation(line: 327, column: 7, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !1838, file: !1, line: 327, column: 7)
!1849 = !DILocation(line: 327, column: 16, scope: !1848)
!1850 = !DILocation(line: 327, column: 23, scope: !1848)
!1851 = !DILocation(line: 328, column: 12, scope: !1852)
!1852 = distinct !DILexicalBlock(scope: !1848, file: !1, line: 327, column: 28)
!1853 = !DILocation(line: 328, column: 21, scope: !1852)
!1854 = !DILocation(line: 328, column: 10, scope: !1852)
!1855 = !DILocation(line: 329, column: 11, scope: !1852)
!1856 = !DILocation(line: 330, column: 5, scope: !1852)
!1857 = !DILocation(line: 330, column: 18, scope: !1852)
!1858 = !DILocation(line: 331, column: 12, scope: !1852)
!1859 = distinct !{!1859, !1856, !1858, !605}
!1860 = !DILocation(line: 333, column: 17, scope: !1852)
!1861 = !DILocation(line: 333, column: 26, scope: !1852)
!1862 = !DILocation(line: 333, column: 35, scope: !1852)
!1863 = !DILocation(line: 333, column: 46, scope: !1852)
!1864 = !DILocation(line: 333, column: 52, scope: !1852)
!1865 = !DILocation(line: 333, column: 5, scope: !1852)
!1866 = !DILocation(line: 334, column: 9, scope: !1867)
!1867 = distinct !DILexicalBlock(scope: !1852, file: !1, line: 334, column: 9)
!1868 = !DILocation(line: 335, column: 17, scope: !1867)
!1869 = !DILocation(line: 335, column: 26, scope: !1867)
!1870 = !DILocation(line: 335, column: 35, scope: !1867)
!1871 = !DILocation(line: 335, column: 43, scope: !1867)
!1872 = !DILocation(line: 335, column: 7, scope: !1867)
!1873 = !DILocation(line: 337, column: 5, scope: !1852)
!1874 = !DILocation(line: 337, column: 14, scope: !1852)
!1875 = !DILocation(line: 337, column: 21, scope: !1852)
!1876 = !DILocation(line: 340, column: 24, scope: !1852)
!1877 = !DILocation(line: 340, column: 33, scope: !1852)
!1878 = !DILocation(line: 340, column: 42, scope: !1852)
!1879 = !DILocation(line: 340, column: 54, scope: !1852)
!1880 = !DILocation(line: 340, column: 63, scope: !1852)
!1881 = !DILocation(line: 340, column: 5, scope: !1852)
!1882 = !DILocation(line: 341, column: 5, scope: !1852)
!1883 = !DILocation(line: 341, column: 14, scope: !1852)
!1884 = !DILocation(line: 341, column: 17, scope: !1852)
!1885 = !DILocation(line: 342, column: 3, scope: !1852)
!1886 = !DILocation(line: 343, column: 1, scope: !1838)
!1887 = distinct !DISubprogram(name: "flush_bits", scope: !1, file: !1, line: 274, type: !1839, scopeLine: 275, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !563)
!1888 = !DILocalVariable(name: "entropy", arg: 1, scope: !1887, file: !1, line: 274, type: !150)
!1889 = !DILocation(line: 274, column: 31, scope: !1887)
!1890 = !DILocation(line: 276, column: 13, scope: !1887)
!1891 = !DILocation(line: 276, column: 3, scope: !1887)
!1892 = !DILocation(line: 277, column: 3, scope: !1887)
!1893 = !DILocation(line: 277, column: 12, scope: !1887)
!1894 = !DILocation(line: 277, column: 23, scope: !1887)
!1895 = !DILocation(line: 278, column: 3, scope: !1887)
!1896 = !DILocation(line: 278, column: 12, scope: !1887)
!1897 = !DILocation(line: 278, column: 21, scope: !1887)
!1898 = !DILocation(line: 279, column: 1, scope: !1887)
!1899 = distinct !DISubprogram(name: "dump_buffer", scope: !1, file: !1, line: 212, type: !1839, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !563)
!1900 = !DILocalVariable(name: "entropy", arg: 1, scope: !1899, file: !1, line: 212, type: !150)
!1901 = !DILocation(line: 212, column: 32, scope: !1899)
!1902 = !DILocalVariable(name: "dest", scope: !1899, file: !1, line: 215, type: !298)
!1903 = !DILocation(line: 215, column: 33, scope: !1899)
!1904 = !DILocation(line: 215, column: 40, scope: !1899)
!1905 = !DILocation(line: 215, column: 49, scope: !1899)
!1906 = !DILocation(line: 215, column: 56, scope: !1899)
!1907 = !DILocation(line: 217, column: 11, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !1899, file: !1, line: 217, column: 7)
!1909 = !DILocation(line: 217, column: 17, scope: !1908)
!1910 = !DILocation(line: 217, column: 39, scope: !1908)
!1911 = !DILocation(line: 217, column: 48, scope: !1908)
!1912 = !DILocation(line: 217, column: 9, scope: !1908)
!1913 = !DILocation(line: 217, column: 7, scope: !1908)
!1914 = !DILocation(line: 218, column: 5, scope: !1908)
!1915 = !DILocation(line: 220, column: 31, scope: !1899)
!1916 = !DILocation(line: 220, column: 37, scope: !1899)
!1917 = !DILocation(line: 220, column: 3, scope: !1899)
!1918 = !DILocation(line: 220, column: 12, scope: !1899)
!1919 = !DILocation(line: 220, column: 29, scope: !1899)
!1920 = !DILocation(line: 221, column: 29, scope: !1899)
!1921 = !DILocation(line: 221, column: 35, scope: !1899)
!1922 = !DILocation(line: 221, column: 3, scope: !1899)
!1923 = !DILocation(line: 221, column: 12, scope: !1899)
!1924 = !DILocation(line: 221, column: 27, scope: !1899)
!1925 = !DILocation(line: 222, column: 1, scope: !1899)
!1926 = distinct !DISubprogram(name: "emit_buffered_bits", scope: !1, file: !1, line: 304, type: !1927, scopeLine: 306, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !563)
!1927 = !DISubroutineType(types: !1928)
!1928 = !{null, !150, !267, !5}
!1929 = !DILocalVariable(name: "entropy", arg: 1, scope: !1926, file: !1, line: 304, type: !150)
!1930 = !DILocation(line: 304, column: 39, scope: !1926)
!1931 = !DILocalVariable(name: "bufstart", arg: 2, scope: !1926, file: !1, line: 304, type: !267)
!1932 = !DILocation(line: 304, column: 55, scope: !1926)
!1933 = !DILocalVariable(name: "nbits", arg: 3, scope: !1926, file: !1, line: 305, type: !5)
!1934 = !DILocation(line: 305, column: 20, scope: !1926)
!1935 = !DILocation(line: 307, column: 7, scope: !1936)
!1936 = distinct !DILexicalBlock(scope: !1926, file: !1, line: 307, column: 7)
!1937 = !DILocation(line: 307, column: 16, scope: !1936)
!1938 = !DILocation(line: 308, column: 5, scope: !1936)
!1939 = !DILocation(line: 310, column: 3, scope: !1926)
!1940 = !DILocation(line: 310, column: 10, scope: !1926)
!1941 = !DILocation(line: 310, column: 16, scope: !1926)
!1942 = !DILocation(line: 311, column: 15, scope: !1943)
!1943 = distinct !DILexicalBlock(scope: !1926, file: !1, line: 310, column: 21)
!1944 = !DILocation(line: 311, column: 41, scope: !1943)
!1945 = !DILocation(line: 311, column: 40, scope: !1943)
!1946 = !DILocation(line: 311, column: 24, scope: !1943)
!1947 = !DILocation(line: 311, column: 5, scope: !1943)
!1948 = !DILocation(line: 312, column: 13, scope: !1943)
!1949 = !DILocation(line: 313, column: 10, scope: !1943)
!1950 = distinct !{!1950, !1939, !1951, !605}
!1951 = !DILocation(line: 314, column: 3, scope: !1926)
!1952 = !DILocation(line: 315, column: 1, scope: !1926)
