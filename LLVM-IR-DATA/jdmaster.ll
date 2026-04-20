; ModuleID = 'cBench/consumer_jpeg_c/src/jdmaster.c'
source_filename = "cBench/consumer_jpeg_c/src/jdmaster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jpeg_decompress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.my_decomp_master = type { %struct.jpeg_decomp_master, i32, i32, ptr, ptr }
%struct.jpeg_decomp_master = type { ptr, ptr, i32 }
%struct.jpeg_color_quantizer = type { ptr, ptr, ptr, ptr }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.jpeg_d_post_controller = type { ptr, ptr }
%struct.jpeg_d_main_controller = type { ptr, ptr }
%struct.jpeg_inverse_dct = type { ptr, [10 x ptr] }
%struct.jpeg_d_coef_controller = type { ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_color_deconverter = type { ptr, ptr }
%struct.jpeg_upsampler = type { ptr, ptr, i32 }
%struct.jpeg_progress_mgr = type { ptr, i64, i64, i32, i32 }
%struct.jpeg_input_controller = type { ptr, ptr, ptr, ptr, i32, i32 }

; Function Attrs: noinline nounwind uwtable
define dso_local void @jpeg_calc_output_dimensions(ptr noundef %0) #0 !dbg !593 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !595, !DIExpression(), !596)
    #dbg_declare(ptr %3, !597, !DIExpression(), !598)
    #dbg_declare(ptr %4, !599, !DIExpression(), !600)
  %6 = load ptr, ptr %2, align 8, !dbg !601
  %7 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %6, i32 0, i32 4, !dbg !603
  %8 = load i32, ptr %7, align 4, !dbg !603
  %9 = icmp ne i32 %8, 202, !dbg !604
  br i1 %9, label %10, label %29, !dbg !604

10:                                               ; preds = %1
  %11 = load ptr, ptr %2, align 8, !dbg !605
  %12 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %11, i32 0, i32 0, !dbg !605
  %13 = load ptr, ptr %12, align 8, !dbg !605
  %14 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %13, i32 0, i32 5, !dbg !605
  store i32 18, ptr %14, align 8, !dbg !605
  %15 = load ptr, ptr %2, align 8, !dbg !605
  %16 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %15, i32 0, i32 4, !dbg !605
  %17 = load i32, ptr %16, align 4, !dbg !605
  %18 = load ptr, ptr %2, align 8, !dbg !605
  %19 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %18, i32 0, i32 0, !dbg !605
  %20 = load ptr, ptr %19, align 8, !dbg !605
  %21 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %20, i32 0, i32 6, !dbg !605
  %22 = getelementptr inbounds [8 x i32], ptr %21, i64 0, i64 0, !dbg !605
  store i32 %17, ptr %22, align 4, !dbg !605
  %23 = load ptr, ptr %2, align 8, !dbg !605
  %24 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %23, i32 0, i32 0, !dbg !605
  %25 = load ptr, ptr %24, align 8, !dbg !605
  %26 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %25, i32 0, i32 0, !dbg !605
  %27 = load ptr, ptr %26, align 8, !dbg !605
  %28 = load ptr, ptr %2, align 8, !dbg !605
  call void %27(ptr noundef %28), !dbg !605
  br label %29, !dbg !605

29:                                               ; preds = %10, %1
  %30 = load ptr, ptr %2, align 8, !dbg !606
  %31 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %30, i32 0, i32 11, !dbg !608
  %32 = load i32, ptr %31, align 4, !dbg !608
  %33 = mul i32 %32, 8, !dbg !609
  %34 = load ptr, ptr %2, align 8, !dbg !610
  %35 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %34, i32 0, i32 12, !dbg !611
  %36 = load i32, ptr %35, align 8, !dbg !611
  %37 = icmp ule i32 %33, %36, !dbg !612
  br i1 %37, label %38, label %57, !dbg !612

38:                                               ; preds = %29
  %39 = load ptr, ptr %2, align 8, !dbg !613
  %40 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %39, i32 0, i32 6, !dbg !615
  %41 = load i32, ptr %40, align 8, !dbg !615
  %42 = zext i32 %41 to i64, !dbg !616
  %43 = call i64 @jdiv_round_up(i64 noundef %42, i64 noundef 8), !dbg !617
  %44 = trunc i64 %43 to i32, !dbg !618
  %45 = load ptr, ptr %2, align 8, !dbg !619
  %46 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %45, i32 0, i32 26, !dbg !620
  store i32 %44, ptr %46, align 8, !dbg !621
  %47 = load ptr, ptr %2, align 8, !dbg !622
  %48 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %47, i32 0, i32 7, !dbg !623
  %49 = load i32, ptr %48, align 4, !dbg !623
  %50 = zext i32 %49 to i64, !dbg !624
  %51 = call i64 @jdiv_round_up(i64 noundef %50, i64 noundef 8), !dbg !625
  %52 = trunc i64 %51 to i32, !dbg !626
  %53 = load ptr, ptr %2, align 8, !dbg !627
  %54 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %53, i32 0, i32 27, !dbg !628
  store i32 %52, ptr %54, align 4, !dbg !629
  %55 = load ptr, ptr %2, align 8, !dbg !630
  %56 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %55, i32 0, i32 59, !dbg !631
  store i32 1, ptr %56, align 4, !dbg !632
  br label %128, !dbg !633

57:                                               ; preds = %29
  %58 = load ptr, ptr %2, align 8, !dbg !634
  %59 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %58, i32 0, i32 11, !dbg !636
  %60 = load i32, ptr %59, align 4, !dbg !636
  %61 = mul i32 %60, 4, !dbg !637
  %62 = load ptr, ptr %2, align 8, !dbg !638
  %63 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %62, i32 0, i32 12, !dbg !639
  %64 = load i32, ptr %63, align 8, !dbg !639
  %65 = icmp ule i32 %61, %64, !dbg !640
  br i1 %65, label %66, label %85, !dbg !640

66:                                               ; preds = %57
  %67 = load ptr, ptr %2, align 8, !dbg !641
  %68 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %67, i32 0, i32 6, !dbg !643
  %69 = load i32, ptr %68, align 8, !dbg !643
  %70 = zext i32 %69 to i64, !dbg !644
  %71 = call i64 @jdiv_round_up(i64 noundef %70, i64 noundef 4), !dbg !645
  %72 = trunc i64 %71 to i32, !dbg !646
  %73 = load ptr, ptr %2, align 8, !dbg !647
  %74 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %73, i32 0, i32 26, !dbg !648
  store i32 %72, ptr %74, align 8, !dbg !649
  %75 = load ptr, ptr %2, align 8, !dbg !650
  %76 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %75, i32 0, i32 7, !dbg !651
  %77 = load i32, ptr %76, align 4, !dbg !651
  %78 = zext i32 %77 to i64, !dbg !652
  %79 = call i64 @jdiv_round_up(i64 noundef %78, i64 noundef 4), !dbg !653
  %80 = trunc i64 %79 to i32, !dbg !654
  %81 = load ptr, ptr %2, align 8, !dbg !655
  %82 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %81, i32 0, i32 27, !dbg !656
  store i32 %80, ptr %82, align 4, !dbg !657
  %83 = load ptr, ptr %2, align 8, !dbg !658
  %84 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %83, i32 0, i32 59, !dbg !659
  store i32 2, ptr %84, align 4, !dbg !660
  br label %127, !dbg !661

85:                                               ; preds = %57
  %86 = load ptr, ptr %2, align 8, !dbg !662
  %87 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %86, i32 0, i32 11, !dbg !664
  %88 = load i32, ptr %87, align 4, !dbg !664
  %89 = mul i32 %88, 2, !dbg !665
  %90 = load ptr, ptr %2, align 8, !dbg !666
  %91 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %90, i32 0, i32 12, !dbg !667
  %92 = load i32, ptr %91, align 8, !dbg !667
  %93 = icmp ule i32 %89, %92, !dbg !668
  br i1 %93, label %94, label %113, !dbg !668

94:                                               ; preds = %85
  %95 = load ptr, ptr %2, align 8, !dbg !669
  %96 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %95, i32 0, i32 6, !dbg !671
  %97 = load i32, ptr %96, align 8, !dbg !671
  %98 = zext i32 %97 to i64, !dbg !672
  %99 = call i64 @jdiv_round_up(i64 noundef %98, i64 noundef 2), !dbg !673
  %100 = trunc i64 %99 to i32, !dbg !674
  %101 = load ptr, ptr %2, align 8, !dbg !675
  %102 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %101, i32 0, i32 26, !dbg !676
  store i32 %100, ptr %102, align 8, !dbg !677
  %103 = load ptr, ptr %2, align 8, !dbg !678
  %104 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %103, i32 0, i32 7, !dbg !679
  %105 = load i32, ptr %104, align 4, !dbg !679
  %106 = zext i32 %105 to i64, !dbg !680
  %107 = call i64 @jdiv_round_up(i64 noundef %106, i64 noundef 2), !dbg !681
  %108 = trunc i64 %107 to i32, !dbg !682
  %109 = load ptr, ptr %2, align 8, !dbg !683
  %110 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %109, i32 0, i32 27, !dbg !684
  store i32 %108, ptr %110, align 4, !dbg !685
  %111 = load ptr, ptr %2, align 8, !dbg !686
  %112 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %111, i32 0, i32 59, !dbg !687
  store i32 4, ptr %112, align 4, !dbg !688
  br label %126, !dbg !689

113:                                              ; preds = %85
  %114 = load ptr, ptr %2, align 8, !dbg !690
  %115 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %114, i32 0, i32 6, !dbg !692
  %116 = load i32, ptr %115, align 8, !dbg !692
  %117 = load ptr, ptr %2, align 8, !dbg !693
  %118 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %117, i32 0, i32 26, !dbg !694
  store i32 %116, ptr %118, align 8, !dbg !695
  %119 = load ptr, ptr %2, align 8, !dbg !696
  %120 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %119, i32 0, i32 7, !dbg !697
  %121 = load i32, ptr %120, align 4, !dbg !697
  %122 = load ptr, ptr %2, align 8, !dbg !698
  %123 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %122, i32 0, i32 27, !dbg !699
  store i32 %121, ptr %123, align 4, !dbg !700
  %124 = load ptr, ptr %2, align 8, !dbg !701
  %125 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %124, i32 0, i32 59, !dbg !702
  store i32 8, ptr %125, align 4, !dbg !703
  br label %126

126:                                              ; preds = %113, %94
  br label %127

127:                                              ; preds = %126, %66
  br label %128

128:                                              ; preds = %127, %38
  store i32 0, ptr %3, align 4, !dbg !704
  %129 = load ptr, ptr %2, align 8, !dbg !706
  %130 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %129, i32 0, i32 43, !dbg !707
  %131 = load ptr, ptr %130, align 8, !dbg !707
  store ptr %131, ptr %4, align 8, !dbg !708
  br label %132, !dbg !709

132:                                              ; preds = %184, %128
  %133 = load i32, ptr %3, align 4, !dbg !710
  %134 = load ptr, ptr %2, align 8, !dbg !712
  %135 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %134, i32 0, i32 8, !dbg !713
  %136 = load i32, ptr %135, align 8, !dbg !713
  %137 = icmp slt i32 %133, %136, !dbg !714
  br i1 %137, label %138, label %189, !dbg !715

138:                                              ; preds = %132
    #dbg_declare(ptr %5, !716, !DIExpression(), !718)
  %139 = load ptr, ptr %2, align 8, !dbg !719
  %140 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %139, i32 0, i32 59, !dbg !720
  %141 = load i32, ptr %140, align 4, !dbg !720
  store i32 %141, ptr %5, align 4, !dbg !718
  br label %142, !dbg !721

142:                                              ; preds = %177, %138
  %143 = load i32, ptr %5, align 4, !dbg !722
  %144 = icmp slt i32 %143, 8, !dbg !723
  br i1 %144, label %145, label %175, !dbg !724

145:                                              ; preds = %142
  %146 = load ptr, ptr %4, align 8, !dbg !725
  %147 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %146, i32 0, i32 2, !dbg !726
  %148 = load i32, ptr %147, align 8, !dbg !726
  %149 = load i32, ptr %5, align 4, !dbg !727
  %150 = mul nsw i32 %148, %149, !dbg !728
  %151 = mul nsw i32 %150, 2, !dbg !729
  %152 = load ptr, ptr %2, align 8, !dbg !730
  %153 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %152, i32 0, i32 57, !dbg !731
  %154 = load i32, ptr %153, align 4, !dbg !731
  %155 = load ptr, ptr %2, align 8, !dbg !732
  %156 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %155, i32 0, i32 59, !dbg !733
  %157 = load i32, ptr %156, align 4, !dbg !733
  %158 = mul nsw i32 %154, %157, !dbg !734
  %159 = icmp sle i32 %151, %158, !dbg !735
  br i1 %159, label %160, label %175, !dbg !736

160:                                              ; preds = %145
  %161 = load ptr, ptr %4, align 8, !dbg !737
  %162 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %161, i32 0, i32 3, !dbg !738
  %163 = load i32, ptr %162, align 4, !dbg !738
  %164 = load i32, ptr %5, align 4, !dbg !739
  %165 = mul nsw i32 %163, %164, !dbg !740
  %166 = mul nsw i32 %165, 2, !dbg !741
  %167 = load ptr, ptr %2, align 8, !dbg !742
  %168 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %167, i32 0, i32 58, !dbg !743
  %169 = load i32, ptr %168, align 8, !dbg !743
  %170 = load ptr, ptr %2, align 8, !dbg !744
  %171 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %170, i32 0, i32 59, !dbg !745
  %172 = load i32, ptr %171, align 4, !dbg !745
  %173 = mul nsw i32 %169, %172, !dbg !746
  %174 = icmp sle i32 %166, %173, !dbg !747
  br label %175

175:                                              ; preds = %160, %145, %142
  %176 = phi i1 [ false, %145 ], [ false, %142 ], [ %174, %160 ], !dbg !748
  br i1 %176, label %177, label %180, !dbg !721

177:                                              ; preds = %175
  %178 = load i32, ptr %5, align 4, !dbg !749
  %179 = mul nsw i32 %178, 2, !dbg !751
  store i32 %179, ptr %5, align 4, !dbg !752
  br label %142, !dbg !721, !llvm.loop !753

180:                                              ; preds = %175
  %181 = load i32, ptr %5, align 4, !dbg !756
  %182 = load ptr, ptr %4, align 8, !dbg !757
  %183 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %182, i32 0, i32 9, !dbg !758
  store i32 %181, ptr %183, align 4, !dbg !759
  br label %184, !dbg !760

184:                                              ; preds = %180
  %185 = load i32, ptr %3, align 4, !dbg !761
  %186 = add nsw i32 %185, 1, !dbg !761
  store i32 %186, ptr %3, align 4, !dbg !761
  %187 = load ptr, ptr %4, align 8, !dbg !762
  %188 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %187, i32 1, !dbg !762
  store ptr %188, ptr %4, align 8, !dbg !762
  br label %132, !dbg !763, !llvm.loop !764

189:                                              ; preds = %132
  store i32 0, ptr %3, align 4, !dbg !766
  %190 = load ptr, ptr %2, align 8, !dbg !768
  %191 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %190, i32 0, i32 43, !dbg !769
  %192 = load ptr, ptr %191, align 8, !dbg !769
  store ptr %192, ptr %4, align 8, !dbg !770
  br label %193, !dbg !771

193:                                              ; preds = %244, %189
  %194 = load i32, ptr %3, align 4, !dbg !772
  %195 = load ptr, ptr %2, align 8, !dbg !774
  %196 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %195, i32 0, i32 8, !dbg !775
  %197 = load i32, ptr %196, align 8, !dbg !775
  %198 = icmp slt i32 %194, %197, !dbg !776
  br i1 %198, label %199, label %249, !dbg !777

199:                                              ; preds = %193
  %200 = load ptr, ptr %2, align 8, !dbg !778
  %201 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %200, i32 0, i32 6, !dbg !780
  %202 = load i32, ptr %201, align 8, !dbg !780
  %203 = zext i32 %202 to i64, !dbg !781
  %204 = load ptr, ptr %4, align 8, !dbg !782
  %205 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %204, i32 0, i32 2, !dbg !783
  %206 = load i32, ptr %205, align 8, !dbg !783
  %207 = load ptr, ptr %4, align 8, !dbg !784
  %208 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %207, i32 0, i32 9, !dbg !785
  %209 = load i32, ptr %208, align 4, !dbg !785
  %210 = mul nsw i32 %206, %209, !dbg !786
  %211 = sext i32 %210 to i64, !dbg !787
  %212 = mul nsw i64 %203, %211, !dbg !788
  %213 = load ptr, ptr %2, align 8, !dbg !789
  %214 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %213, i32 0, i32 57, !dbg !790
  %215 = load i32, ptr %214, align 4, !dbg !790
  %216 = mul nsw i32 %215, 8, !dbg !791
  %217 = sext i32 %216 to i64, !dbg !792
  %218 = call i64 @jdiv_round_up(i64 noundef %212, i64 noundef %217), !dbg !793
  %219 = trunc i64 %218 to i32, !dbg !794
  %220 = load ptr, ptr %4, align 8, !dbg !795
  %221 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %220, i32 0, i32 10, !dbg !796
  store i32 %219, ptr %221, align 8, !dbg !797
  %222 = load ptr, ptr %2, align 8, !dbg !798
  %223 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %222, i32 0, i32 7, !dbg !799
  %224 = load i32, ptr %223, align 4, !dbg !799
  %225 = zext i32 %224 to i64, !dbg !800
  %226 = load ptr, ptr %4, align 8, !dbg !801
  %227 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %226, i32 0, i32 3, !dbg !802
  %228 = load i32, ptr %227, align 4, !dbg !802
  %229 = load ptr, ptr %4, align 8, !dbg !803
  %230 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %229, i32 0, i32 9, !dbg !804
  %231 = load i32, ptr %230, align 4, !dbg !804
  %232 = mul nsw i32 %228, %231, !dbg !805
  %233 = sext i32 %232 to i64, !dbg !806
  %234 = mul nsw i64 %225, %233, !dbg !807
  %235 = load ptr, ptr %2, align 8, !dbg !808
  %236 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %235, i32 0, i32 58, !dbg !809
  %237 = load i32, ptr %236, align 8, !dbg !809
  %238 = mul nsw i32 %237, 8, !dbg !810
  %239 = sext i32 %238 to i64, !dbg !811
  %240 = call i64 @jdiv_round_up(i64 noundef %234, i64 noundef %239), !dbg !812
  %241 = trunc i64 %240 to i32, !dbg !813
  %242 = load ptr, ptr %4, align 8, !dbg !814
  %243 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %242, i32 0, i32 11, !dbg !815
  store i32 %241, ptr %243, align 4, !dbg !816
  br label %244, !dbg !817

244:                                              ; preds = %199
  %245 = load i32, ptr %3, align 4, !dbg !818
  %246 = add nsw i32 %245, 1, !dbg !818
  store i32 %246, ptr %3, align 4, !dbg !818
  %247 = load ptr, ptr %4, align 8, !dbg !819
  %248 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %247, i32 1, !dbg !819
  store ptr %248, ptr %4, align 8, !dbg !819
  br label %193, !dbg !820, !llvm.loop !821

249:                                              ; preds = %193
  %250 = load ptr, ptr %2, align 8, !dbg !823
  %251 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %250, i32 0, i32 10, !dbg !824
  %252 = load i32, ptr %251, align 8, !dbg !824
  switch i32 %252, label %262 [
    i32 1, label %253
    i32 2, label %256
    i32 3, label %256
    i32 4, label %259
    i32 5, label %259
  ], !dbg !825

253:                                              ; preds = %249
  %254 = load ptr, ptr %2, align 8, !dbg !826
  %255 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %254, i32 0, i32 28, !dbg !828
  store i32 1, ptr %255, align 8, !dbg !829
  br label %268, !dbg !830

256:                                              ; preds = %249, %249
  %257 = load ptr, ptr %2, align 8, !dbg !831
  %258 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %257, i32 0, i32 28, !dbg !832
  store i32 3, ptr %258, align 8, !dbg !833
  br label %268, !dbg !834

259:                                              ; preds = %249, %249
  %260 = load ptr, ptr %2, align 8, !dbg !835
  %261 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %260, i32 0, i32 28, !dbg !836
  store i32 4, ptr %261, align 8, !dbg !837
  br label %268, !dbg !838

262:                                              ; preds = %249
  %263 = load ptr, ptr %2, align 8, !dbg !839
  %264 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %263, i32 0, i32 8, !dbg !840
  %265 = load i32, ptr %264, align 8, !dbg !840
  %266 = load ptr, ptr %2, align 8, !dbg !841
  %267 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %266, i32 0, i32 28, !dbg !842
  store i32 %265, ptr %267, align 8, !dbg !843
  br label %268, !dbg !844

268:                                              ; preds = %262, %259, %256, %253
  %269 = load ptr, ptr %2, align 8, !dbg !845
  %270 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %269, i32 0, i32 19, !dbg !846
  %271 = load i32, ptr %270, align 4, !dbg !846
  %272 = icmp ne i32 %271, 0, !dbg !845
  br i1 %272, label %273, label %274, !dbg !845

273:                                              ; preds = %268
  br label %278, !dbg !845

274:                                              ; preds = %268
  %275 = load ptr, ptr %2, align 8, !dbg !847
  %276 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %275, i32 0, i32 28, !dbg !848
  %277 = load i32, ptr %276, align 8, !dbg !848
  br label %278, !dbg !845

278:                                              ; preds = %274, %273
  %279 = phi i32 [ 1, %273 ], [ %277, %274 ], !dbg !845
  %280 = load ptr, ptr %2, align 8, !dbg !849
  %281 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %280, i32 0, i32 29, !dbg !850
  store i32 %279, ptr %281, align 4, !dbg !851
  %282 = load ptr, ptr %2, align 8, !dbg !852
  %283 = call i32 @use_merged_upsample(ptr noundef %282), !dbg !854
  %284 = icmp ne i32 %283, 0, !dbg !854
  br i1 %284, label %285, label %291, !dbg !854

285:                                              ; preds = %278
  %286 = load ptr, ptr %2, align 8, !dbg !855
  %287 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %286, i32 0, i32 58, !dbg !856
  %288 = load i32, ptr %287, align 8, !dbg !856
  %289 = load ptr, ptr %2, align 8, !dbg !857
  %290 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %289, i32 0, i32 30, !dbg !858
  store i32 %288, ptr %290, align 8, !dbg !859
  br label %294, !dbg !857

291:                                              ; preds = %278
  %292 = load ptr, ptr %2, align 8, !dbg !860
  %293 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %292, i32 0, i32 30, !dbg !861
  store i32 1, ptr %293, align 8, !dbg !862
  br label %294

294:                                              ; preds = %291, %285
  ret void, !dbg !863
}

declare i64 @jdiv_round_up(i64 noundef, i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @use_merged_upsample(ptr noundef %0) #0 !dbg !864 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !865, !DIExpression(), !866)
  %4 = load ptr, ptr %3, align 8, !dbg !867
  %5 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %4, i32 0, i32 17, !dbg !869
  %6 = load i32, ptr %5, align 4, !dbg !869
  %7 = icmp ne i32 %6, 0, !dbg !867
  br i1 %7, label %13, label %8, !dbg !870

8:                                                ; preds = %1
  %9 = load ptr, ptr %3, align 8, !dbg !871
  %10 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %9, i32 0, i32 56, !dbg !872
  %11 = load i32, ptr %10, align 8, !dbg !872
  %12 = icmp ne i32 %11, 0, !dbg !871
  br i1 %12, label %13, label %14, !dbg !870

13:                                               ; preds = %8, %1
  store i32 0, ptr %2, align 4, !dbg !873
  br label %119, !dbg !873

14:                                               ; preds = %8
  %15 = load ptr, ptr %3, align 8, !dbg !874
  %16 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %15, i32 0, i32 9, !dbg !876
  %17 = load i32, ptr %16, align 4, !dbg !876
  %18 = icmp ne i32 %17, 3, !dbg !877
  br i1 %18, label %34, label %19, !dbg !878

19:                                               ; preds = %14
  %20 = load ptr, ptr %3, align 8, !dbg !879
  %21 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %20, i32 0, i32 8, !dbg !880
  %22 = load i32, ptr %21, align 8, !dbg !880
  %23 = icmp ne i32 %22, 3, !dbg !881
  br i1 %23, label %34, label %24, !dbg !882

24:                                               ; preds = %19
  %25 = load ptr, ptr %3, align 8, !dbg !883
  %26 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %25, i32 0, i32 10, !dbg !884
  %27 = load i32, ptr %26, align 8, !dbg !884
  %28 = icmp ne i32 %27, 2, !dbg !885
  br i1 %28, label %34, label %29, !dbg !886

29:                                               ; preds = %24
  %30 = load ptr, ptr %3, align 8, !dbg !887
  %31 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %30, i32 0, i32 28, !dbg !888
  %32 = load i32, ptr %31, align 8, !dbg !888
  %33 = icmp ne i32 %32, 3, !dbg !889
  br i1 %33, label %34, label %35, !dbg !886

34:                                               ; preds = %29, %24, %19, %14
  store i32 0, ptr %2, align 4, !dbg !890
  br label %119, !dbg !890

35:                                               ; preds = %29
  %36 = load ptr, ptr %3, align 8, !dbg !891
  %37 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %36, i32 0, i32 43, !dbg !893
  %38 = load ptr, ptr %37, align 8, !dbg !893
  %39 = getelementptr inbounds %struct.jpeg_component_info, ptr %38, i64 0, !dbg !891
  %40 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %39, i32 0, i32 2, !dbg !894
  %41 = load i32, ptr %40, align 8, !dbg !894
  %42 = icmp ne i32 %41, 2, !dbg !895
  br i1 %42, label %83, label %43, !dbg !896

43:                                               ; preds = %35
  %44 = load ptr, ptr %3, align 8, !dbg !897
  %45 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %44, i32 0, i32 43, !dbg !898
  %46 = load ptr, ptr %45, align 8, !dbg !898
  %47 = getelementptr inbounds %struct.jpeg_component_info, ptr %46, i64 1, !dbg !897
  %48 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %47, i32 0, i32 2, !dbg !899
  %49 = load i32, ptr %48, align 8, !dbg !899
  %50 = icmp ne i32 %49, 1, !dbg !900
  br i1 %50, label %83, label %51, !dbg !901

51:                                               ; preds = %43
  %52 = load ptr, ptr %3, align 8, !dbg !902
  %53 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %52, i32 0, i32 43, !dbg !903
  %54 = load ptr, ptr %53, align 8, !dbg !903
  %55 = getelementptr inbounds %struct.jpeg_component_info, ptr %54, i64 2, !dbg !902
  %56 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %55, i32 0, i32 2, !dbg !904
  %57 = load i32, ptr %56, align 8, !dbg !904
  %58 = icmp ne i32 %57, 1, !dbg !905
  br i1 %58, label %83, label %59, !dbg !906

59:                                               ; preds = %51
  %60 = load ptr, ptr %3, align 8, !dbg !907
  %61 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %60, i32 0, i32 43, !dbg !908
  %62 = load ptr, ptr %61, align 8, !dbg !908
  %63 = getelementptr inbounds %struct.jpeg_component_info, ptr %62, i64 0, !dbg !907
  %64 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %63, i32 0, i32 3, !dbg !909
  %65 = load i32, ptr %64, align 4, !dbg !909
  %66 = icmp sgt i32 %65, 2, !dbg !910
  br i1 %66, label %83, label %67, !dbg !911

67:                                               ; preds = %59
  %68 = load ptr, ptr %3, align 8, !dbg !912
  %69 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %68, i32 0, i32 43, !dbg !913
  %70 = load ptr, ptr %69, align 8, !dbg !913
  %71 = getelementptr inbounds %struct.jpeg_component_info, ptr %70, i64 1, !dbg !912
  %72 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %71, i32 0, i32 3, !dbg !914
  %73 = load i32, ptr %72, align 4, !dbg !914
  %74 = icmp ne i32 %73, 1, !dbg !915
  br i1 %74, label %83, label %75, !dbg !916

75:                                               ; preds = %67
  %76 = load ptr, ptr %3, align 8, !dbg !917
  %77 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %76, i32 0, i32 43, !dbg !918
  %78 = load ptr, ptr %77, align 8, !dbg !918
  %79 = getelementptr inbounds %struct.jpeg_component_info, ptr %78, i64 2, !dbg !917
  %80 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %79, i32 0, i32 3, !dbg !919
  %81 = load i32, ptr %80, align 4, !dbg !919
  %82 = icmp ne i32 %81, 1, !dbg !920
  br i1 %82, label %83, label %84, !dbg !916

83:                                               ; preds = %75, %67, %59, %51, %43, %35
  store i32 0, ptr %2, align 4, !dbg !921
  br label %119, !dbg !921

84:                                               ; preds = %75
  %85 = load ptr, ptr %3, align 8, !dbg !922
  %86 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %85, i32 0, i32 43, !dbg !924
  %87 = load ptr, ptr %86, align 8, !dbg !924
  %88 = getelementptr inbounds %struct.jpeg_component_info, ptr %87, i64 0, !dbg !922
  %89 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %88, i32 0, i32 9, !dbg !925
  %90 = load i32, ptr %89, align 4, !dbg !925
  %91 = load ptr, ptr %3, align 8, !dbg !926
  %92 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %91, i32 0, i32 59, !dbg !927
  %93 = load i32, ptr %92, align 4, !dbg !927
  %94 = icmp ne i32 %90, %93, !dbg !928
  br i1 %94, label %117, label %95, !dbg !929

95:                                               ; preds = %84
  %96 = load ptr, ptr %3, align 8, !dbg !930
  %97 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %96, i32 0, i32 43, !dbg !931
  %98 = load ptr, ptr %97, align 8, !dbg !931
  %99 = getelementptr inbounds %struct.jpeg_component_info, ptr %98, i64 1, !dbg !930
  %100 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %99, i32 0, i32 9, !dbg !932
  %101 = load i32, ptr %100, align 4, !dbg !932
  %102 = load ptr, ptr %3, align 8, !dbg !933
  %103 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %102, i32 0, i32 59, !dbg !934
  %104 = load i32, ptr %103, align 4, !dbg !934
  %105 = icmp ne i32 %101, %104, !dbg !935
  br i1 %105, label %117, label %106, !dbg !936

106:                                              ; preds = %95
  %107 = load ptr, ptr %3, align 8, !dbg !937
  %108 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %107, i32 0, i32 43, !dbg !938
  %109 = load ptr, ptr %108, align 8, !dbg !938
  %110 = getelementptr inbounds %struct.jpeg_component_info, ptr %109, i64 2, !dbg !937
  %111 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %110, i32 0, i32 9, !dbg !939
  %112 = load i32, ptr %111, align 4, !dbg !939
  %113 = load ptr, ptr %3, align 8, !dbg !940
  %114 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %113, i32 0, i32 59, !dbg !941
  %115 = load i32, ptr %114, align 4, !dbg !941
  %116 = icmp ne i32 %112, %115, !dbg !942
  br i1 %116, label %117, label %118, !dbg !936

117:                                              ; preds = %106, %95, %84
  store i32 0, ptr %2, align 4, !dbg !943
  br label %119, !dbg !943

118:                                              ; preds = %106
  store i32 1, ptr %2, align 4, !dbg !944
  br label %119, !dbg !944

119:                                              ; preds = %118, %117, %83, %34, %13
  %120 = load i32, ptr %2, align 4, !dbg !945
  ret i32 %120, !dbg !945
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @jpeg_new_colormap(ptr noundef %0) #0 !dbg !946 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !947, !DIExpression(), !948)
    #dbg_declare(ptr %3, !949, !DIExpression(), !950)
  %4 = load ptr, ptr %2, align 8, !dbg !951
  %5 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %4, i32 0, i32 73, !dbg !952
  %6 = load ptr, ptr %5, align 8, !dbg !952
  store ptr %6, ptr %3, align 8, !dbg !950
  %7 = load ptr, ptr %2, align 8, !dbg !953
  %8 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %7, i32 0, i32 4, !dbg !955
  %9 = load i32, ptr %8, align 4, !dbg !955
  %10 = icmp ne i32 %9, 207, !dbg !956
  br i1 %10, label %11, label %30, !dbg !956

11:                                               ; preds = %1
  %12 = load ptr, ptr %2, align 8, !dbg !957
  %13 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %12, i32 0, i32 0, !dbg !957
  %14 = load ptr, ptr %13, align 8, !dbg !957
  %15 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %14, i32 0, i32 5, !dbg !957
  store i32 18, ptr %15, align 8, !dbg !957
  %16 = load ptr, ptr %2, align 8, !dbg !957
  %17 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %16, i32 0, i32 4, !dbg !957
  %18 = load i32, ptr %17, align 4, !dbg !957
  %19 = load ptr, ptr %2, align 8, !dbg !957
  %20 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %19, i32 0, i32 0, !dbg !957
  %21 = load ptr, ptr %20, align 8, !dbg !957
  %22 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %21, i32 0, i32 6, !dbg !957
  %23 = getelementptr inbounds [8 x i32], ptr %22, i64 0, i64 0, !dbg !957
  store i32 %18, ptr %23, align 4, !dbg !957
  %24 = load ptr, ptr %2, align 8, !dbg !957
  %25 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %24, i32 0, i32 0, !dbg !957
  %26 = load ptr, ptr %25, align 8, !dbg !957
  %27 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %26, i32 0, i32 0, !dbg !957
  %28 = load ptr, ptr %27, align 8, !dbg !957
  %29 = load ptr, ptr %2, align 8, !dbg !957
  call void %28(ptr noundef %29), !dbg !957
  br label %30, !dbg !957

30:                                               ; preds = %11, %1
  %31 = load ptr, ptr %2, align 8, !dbg !958
  %32 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %31, i32 0, i32 19, !dbg !960
  %33 = load i32, ptr %32, align 4, !dbg !960
  %34 = icmp ne i32 %33, 0, !dbg !958
  br i1 %34, label %35, label %60, !dbg !961

35:                                               ; preds = %30
  %36 = load ptr, ptr %2, align 8, !dbg !962
  %37 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %36, i32 0, i32 24, !dbg !963
  %38 = load i32, ptr %37, align 8, !dbg !963
  %39 = icmp ne i32 %38, 0, !dbg !962
  br i1 %39, label %40, label %60, !dbg !964

40:                                               ; preds = %35
  %41 = load ptr, ptr %2, align 8, !dbg !965
  %42 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %41, i32 0, i32 32, !dbg !966
  %43 = load ptr, ptr %42, align 8, !dbg !966
  %44 = icmp ne ptr %43, null, !dbg !967
  br i1 %44, label %45, label %60, !dbg !964

45:                                               ; preds = %40
  %46 = load ptr, ptr %3, align 8, !dbg !968
  %47 = getelementptr inbounds nuw %struct.my_decomp_master, ptr %46, i32 0, i32 4, !dbg !970
  %48 = load ptr, ptr %47, align 8, !dbg !970
  %49 = load ptr, ptr %2, align 8, !dbg !971
  %50 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %49, i32 0, i32 83, !dbg !972
  store ptr %48, ptr %50, align 8, !dbg !973
  %51 = load ptr, ptr %2, align 8, !dbg !974
  %52 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %51, i32 0, i32 83, !dbg !975
  %53 = load ptr, ptr %52, align 8, !dbg !975
  %54 = getelementptr inbounds nuw %struct.jpeg_color_quantizer, ptr %53, i32 0, i32 3, !dbg !976
  %55 = load ptr, ptr %54, align 8, !dbg !976
  %56 = load ptr, ptr %2, align 8, !dbg !977
  call void %55(ptr noundef %56), !dbg !978
  %57 = load ptr, ptr %3, align 8, !dbg !979
  %58 = getelementptr inbounds nuw %struct.my_decomp_master, ptr %57, i32 0, i32 0, !dbg !980
  %59 = getelementptr inbounds nuw %struct.jpeg_decomp_master, ptr %58, i32 0, i32 2, !dbg !981
  store i32 0, ptr %59, align 8, !dbg !982
  br label %71, !dbg !983

60:                                               ; preds = %40, %35, %30
  %61 = load ptr, ptr %2, align 8, !dbg !984
  %62 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %61, i32 0, i32 0, !dbg !984
  %63 = load ptr, ptr %62, align 8, !dbg !984
  %64 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %63, i32 0, i32 5, !dbg !984
  store i32 45, ptr %64, align 8, !dbg !984
  %65 = load ptr, ptr %2, align 8, !dbg !984
  %66 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %65, i32 0, i32 0, !dbg !984
  %67 = load ptr, ptr %66, align 8, !dbg !984
  %68 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %67, i32 0, i32 0, !dbg !984
  %69 = load ptr, ptr %68, align 8, !dbg !984
  %70 = load ptr, ptr %2, align 8, !dbg !984
  call void %69(ptr noundef %70), !dbg !984
  br label %71

71:                                               ; preds = %60, %45
  ret void, !dbg !985
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @jinit_master_decompress(ptr noundef %0) #0 !dbg !986 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !987, !DIExpression(), !988)
    #dbg_declare(ptr %3, !989, !DIExpression(), !990)
  %4 = load ptr, ptr %2, align 8, !dbg !991
  %5 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %4, i32 0, i32 1, !dbg !992
  %6 = load ptr, ptr %5, align 8, !dbg !992
  %7 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %6, i32 0, i32 0, !dbg !993
  %8 = load ptr, ptr %7, align 8, !dbg !993
  %9 = load ptr, ptr %2, align 8, !dbg !994
  %10 = call ptr %8(ptr noundef %9, i32 noundef 1, i64 noundef 48), !dbg !995
  store ptr %10, ptr %3, align 8, !dbg !996
  %11 = load ptr, ptr %3, align 8, !dbg !997
  %12 = load ptr, ptr %2, align 8, !dbg !998
  %13 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %12, i32 0, i32 73, !dbg !999
  store ptr %11, ptr %13, align 8, !dbg !1000
  %14 = load ptr, ptr %3, align 8, !dbg !1001
  %15 = getelementptr inbounds nuw %struct.my_decomp_master, ptr %14, i32 0, i32 0, !dbg !1002
  %16 = getelementptr inbounds nuw %struct.jpeg_decomp_master, ptr %15, i32 0, i32 0, !dbg !1003
  store ptr @prepare_for_output_pass, ptr %16, align 8, !dbg !1004
  %17 = load ptr, ptr %3, align 8, !dbg !1005
  %18 = getelementptr inbounds nuw %struct.my_decomp_master, ptr %17, i32 0, i32 0, !dbg !1006
  %19 = getelementptr inbounds nuw %struct.jpeg_decomp_master, ptr %18, i32 0, i32 1, !dbg !1007
  store ptr @finish_output_pass, ptr %19, align 8, !dbg !1008
  %20 = load ptr, ptr %3, align 8, !dbg !1009
  %21 = getelementptr inbounds nuw %struct.my_decomp_master, ptr %20, i32 0, i32 0, !dbg !1010
  %22 = getelementptr inbounds nuw %struct.jpeg_decomp_master, ptr %21, i32 0, i32 2, !dbg !1011
  store i32 0, ptr %22, align 8, !dbg !1012
  %23 = load ptr, ptr %2, align 8, !dbg !1013
  call void @master_selection(ptr noundef %23), !dbg !1014
  ret void, !dbg !1015
}

; Function Attrs: noinline nounwind uwtable
define internal void @prepare_for_output_pass(ptr noundef %0) #0 !dbg !1016 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !1017, !DIExpression(), !1018)
    #dbg_declare(ptr %3, !1019, !DIExpression(), !1020)
  %4 = load ptr, ptr %2, align 8, !dbg !1021
  %5 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %4, i32 0, i32 73, !dbg !1022
  %6 = load ptr, ptr %5, align 8, !dbg !1022
  store ptr %6, ptr %3, align 8, !dbg !1020
  %7 = load ptr, ptr %3, align 8, !dbg !1023
  %8 = getelementptr inbounds nuw %struct.my_decomp_master, ptr %7, i32 0, i32 0, !dbg !1025
  %9 = getelementptr inbounds nuw %struct.jpeg_decomp_master, ptr %8, i32 0, i32 2, !dbg !1026
  %10 = load i32, ptr %9, align 8, !dbg !1026
  %11 = icmp ne i32 %10, 0, !dbg !1023
  br i1 %11, label %12, label %34, !dbg !1023

12:                                               ; preds = %1
  %13 = load ptr, ptr %3, align 8, !dbg !1027
  %14 = getelementptr inbounds nuw %struct.my_decomp_master, ptr %13, i32 0, i32 0, !dbg !1029
  %15 = getelementptr inbounds nuw %struct.jpeg_decomp_master, ptr %14, i32 0, i32 2, !dbg !1030
  store i32 0, ptr %15, align 8, !dbg !1031
  %16 = load ptr, ptr %2, align 8, !dbg !1032
  %17 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %16, i32 0, i32 83, !dbg !1033
  %18 = load ptr, ptr %17, align 8, !dbg !1033
  %19 = getelementptr inbounds nuw %struct.jpeg_color_quantizer, ptr %18, i32 0, i32 0, !dbg !1034
  %20 = load ptr, ptr %19, align 8, !dbg !1034
  %21 = load ptr, ptr %2, align 8, !dbg !1035
  call void %20(ptr noundef %21, i32 noundef 0), !dbg !1036
  %22 = load ptr, ptr %2, align 8, !dbg !1037
  %23 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %22, i32 0, i32 76, !dbg !1038
  %24 = load ptr, ptr %23, align 8, !dbg !1038
  %25 = getelementptr inbounds nuw %struct.jpeg_d_post_controller, ptr %24, i32 0, i32 0, !dbg !1039
  %26 = load ptr, ptr %25, align 8, !dbg !1039
  %27 = load ptr, ptr %2, align 8, !dbg !1040
  call void %26(ptr noundef %27, i32 noundef 2), !dbg !1041
  %28 = load ptr, ptr %2, align 8, !dbg !1042
  %29 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %28, i32 0, i32 74, !dbg !1043
  %30 = load ptr, ptr %29, align 8, !dbg !1043
  %31 = getelementptr inbounds nuw %struct.jpeg_d_main_controller, ptr %30, i32 0, i32 0, !dbg !1044
  %32 = load ptr, ptr %31, align 8, !dbg !1044
  %33 = load ptr, ptr %2, align 8, !dbg !1045
  call void %32(ptr noundef %33, i32 noundef 2), !dbg !1046
  br label %159, !dbg !1047

34:                                               ; preds = %1
  %35 = load ptr, ptr %2, align 8, !dbg !1048
  %36 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %35, i32 0, i32 19, !dbg !1051
  %37 = load i32, ptr %36, align 4, !dbg !1051
  %38 = icmp ne i32 %37, 0, !dbg !1048
  br i1 %38, label %39, label %87, !dbg !1052

39:                                               ; preds = %34
  %40 = load ptr, ptr %2, align 8, !dbg !1053
  %41 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %40, i32 0, i32 32, !dbg !1054
  %42 = load ptr, ptr %41, align 8, !dbg !1054
  %43 = icmp eq ptr %42, null, !dbg !1055
  br i1 %43, label %44, label %87, !dbg !1052

44:                                               ; preds = %39
  %45 = load ptr, ptr %2, align 8, !dbg !1056
  %46 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %45, i32 0, i32 21, !dbg !1059
  %47 = load i32, ptr %46, align 4, !dbg !1059
  %48 = icmp ne i32 %47, 0, !dbg !1056
  br i1 %48, label %49, label %63, !dbg !1060

49:                                               ; preds = %44
  %50 = load ptr, ptr %2, align 8, !dbg !1061
  %51 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %50, i32 0, i32 25, !dbg !1062
  %52 = load i32, ptr %51, align 4, !dbg !1062
  %53 = icmp ne i32 %52, 0, !dbg !1061
  br i1 %53, label %54, label %63, !dbg !1060

54:                                               ; preds = %49
  %55 = load ptr, ptr %3, align 8, !dbg !1063
  %56 = getelementptr inbounds nuw %struct.my_decomp_master, ptr %55, i32 0, i32 4, !dbg !1065
  %57 = load ptr, ptr %56, align 8, !dbg !1065
  %58 = load ptr, ptr %2, align 8, !dbg !1066
  %59 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %58, i32 0, i32 83, !dbg !1067
  store ptr %57, ptr %59, align 8, !dbg !1068
  %60 = load ptr, ptr %3, align 8, !dbg !1069
  %61 = getelementptr inbounds nuw %struct.my_decomp_master, ptr %60, i32 0, i32 0, !dbg !1070
  %62 = getelementptr inbounds nuw %struct.jpeg_decomp_master, ptr %61, i32 0, i32 2, !dbg !1071
  store i32 1, ptr %62, align 8, !dbg !1072
  br label %86, !dbg !1073

63:                                               ; preds = %49, %44
  %64 = load ptr, ptr %2, align 8, !dbg !1074
  %65 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %64, i32 0, i32 23, !dbg !1076
  %66 = load i32, ptr %65, align 4, !dbg !1076
  %67 = icmp ne i32 %66, 0, !dbg !1074
  br i1 %67, label %68, label %74, !dbg !1074

68:                                               ; preds = %63
  %69 = load ptr, ptr %3, align 8, !dbg !1077
  %70 = getelementptr inbounds nuw %struct.my_decomp_master, ptr %69, i32 0, i32 3, !dbg !1079
  %71 = load ptr, ptr %70, align 8, !dbg !1079
  %72 = load ptr, ptr %2, align 8, !dbg !1080
  %73 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %72, i32 0, i32 83, !dbg !1081
  store ptr %71, ptr %73, align 8, !dbg !1082
  br label %85, !dbg !1083

74:                                               ; preds = %63
  %75 = load ptr, ptr %2, align 8, !dbg !1084
  %76 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %75, i32 0, i32 0, !dbg !1084
  %77 = load ptr, ptr %76, align 8, !dbg !1084
  %78 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %77, i32 0, i32 5, !dbg !1084
  store i32 45, ptr %78, align 8, !dbg !1084
  %79 = load ptr, ptr %2, align 8, !dbg !1084
  %80 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %79, i32 0, i32 0, !dbg !1084
  %81 = load ptr, ptr %80, align 8, !dbg !1084
  %82 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %81, i32 0, i32 0, !dbg !1084
  %83 = load ptr, ptr %82, align 8, !dbg !1084
  %84 = load ptr, ptr %2, align 8, !dbg !1084
  call void %83(ptr noundef %84), !dbg !1084
  br label %85

85:                                               ; preds = %74, %68
  br label %86

86:                                               ; preds = %85, %54
  br label %87, !dbg !1086

87:                                               ; preds = %86, %39, %34
  %88 = load ptr, ptr %2, align 8, !dbg !1087
  %89 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %88, i32 0, i32 80, !dbg !1088
  %90 = load ptr, ptr %89, align 8, !dbg !1088
  %91 = getelementptr inbounds nuw %struct.jpeg_inverse_dct, ptr %90, i32 0, i32 0, !dbg !1089
  %92 = load ptr, ptr %91, align 8, !dbg !1089
  %93 = load ptr, ptr %2, align 8, !dbg !1090
  call void %92(ptr noundef %93), !dbg !1091
  %94 = load ptr, ptr %2, align 8, !dbg !1092
  %95 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %94, i32 0, i32 75, !dbg !1093
  %96 = load ptr, ptr %95, align 8, !dbg !1093
  %97 = getelementptr inbounds nuw %struct.jpeg_d_coef_controller, ptr %96, i32 0, i32 2, !dbg !1094
  %98 = load ptr, ptr %97, align 8, !dbg !1094
  %99 = load ptr, ptr %2, align 8, !dbg !1095
  call void %98(ptr noundef %99), !dbg !1096
  %100 = load ptr, ptr %2, align 8, !dbg !1097
  %101 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %100, i32 0, i32 15, !dbg !1099
  %102 = load i32, ptr %101, align 4, !dbg !1099
  %103 = icmp ne i32 %102, 0, !dbg !1097
  br i1 %103, label %158, label %104, !dbg !1100

104:                                              ; preds = %87
  %105 = load ptr, ptr %3, align 8, !dbg !1101
  %106 = getelementptr inbounds nuw %struct.my_decomp_master, ptr %105, i32 0, i32 2, !dbg !1104
  %107 = load i32, ptr %106, align 4, !dbg !1104
  %108 = icmp ne i32 %107, 0, !dbg !1101
  br i1 %108, label %116, label %109, !dbg !1105

109:                                              ; preds = %104
  %110 = load ptr, ptr %2, align 8, !dbg !1106
  %111 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %110, i32 0, i32 82, !dbg !1107
  %112 = load ptr, ptr %111, align 8, !dbg !1107
  %113 = getelementptr inbounds nuw %struct.jpeg_color_deconverter, ptr %112, i32 0, i32 0, !dbg !1108
  %114 = load ptr, ptr %113, align 8, !dbg !1108
  %115 = load ptr, ptr %2, align 8, !dbg !1109
  call void %114(ptr noundef %115), !dbg !1110
  br label %116, !dbg !1110

116:                                              ; preds = %109, %104
  %117 = load ptr, ptr %2, align 8, !dbg !1111
  %118 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %117, i32 0, i32 81, !dbg !1112
  %119 = load ptr, ptr %118, align 8, !dbg !1112
  %120 = getelementptr inbounds nuw %struct.jpeg_upsampler, ptr %119, i32 0, i32 0, !dbg !1113
  %121 = load ptr, ptr %120, align 8, !dbg !1113
  %122 = load ptr, ptr %2, align 8, !dbg !1114
  call void %121(ptr noundef %122), !dbg !1115
  %123 = load ptr, ptr %2, align 8, !dbg !1116
  %124 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %123, i32 0, i32 19, !dbg !1118
  %125 = load i32, ptr %124, align 4, !dbg !1118
  %126 = icmp ne i32 %125, 0, !dbg !1116
  br i1 %126, label %127, label %138, !dbg !1116

127:                                              ; preds = %116
  %128 = load ptr, ptr %2, align 8, !dbg !1119
  %129 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %128, i32 0, i32 83, !dbg !1120
  %130 = load ptr, ptr %129, align 8, !dbg !1120
  %131 = getelementptr inbounds nuw %struct.jpeg_color_quantizer, ptr %130, i32 0, i32 0, !dbg !1121
  %132 = load ptr, ptr %131, align 8, !dbg !1121
  %133 = load ptr, ptr %2, align 8, !dbg !1122
  %134 = load ptr, ptr %3, align 8, !dbg !1123
  %135 = getelementptr inbounds nuw %struct.my_decomp_master, ptr %134, i32 0, i32 0, !dbg !1124
  %136 = getelementptr inbounds nuw %struct.jpeg_decomp_master, ptr %135, i32 0, i32 2, !dbg !1125
  %137 = load i32, ptr %136, align 8, !dbg !1125
  call void %132(ptr noundef %133, i32 noundef %137), !dbg !1126
  br label %138, !dbg !1126

138:                                              ; preds = %127, %116
  %139 = load ptr, ptr %2, align 8, !dbg !1127
  %140 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %139, i32 0, i32 76, !dbg !1128
  %141 = load ptr, ptr %140, align 8, !dbg !1128
  %142 = getelementptr inbounds nuw %struct.jpeg_d_post_controller, ptr %141, i32 0, i32 0, !dbg !1129
  %143 = load ptr, ptr %142, align 8, !dbg !1129
  %144 = load ptr, ptr %2, align 8, !dbg !1130
  %145 = load ptr, ptr %3, align 8, !dbg !1131
  %146 = getelementptr inbounds nuw %struct.my_decomp_master, ptr %145, i32 0, i32 0, !dbg !1132
  %147 = getelementptr inbounds nuw %struct.jpeg_decomp_master, ptr %146, i32 0, i32 2, !dbg !1133
  %148 = load i32, ptr %147, align 8, !dbg !1133
  %149 = icmp ne i32 %148, 0, !dbg !1131
  %150 = zext i1 %149 to i64, !dbg !1131
  %151 = select i1 %149, i32 3, i32 0, !dbg !1131
  call void %143(ptr noundef %144, i32 noundef %151), !dbg !1134
  %152 = load ptr, ptr %2, align 8, !dbg !1135
  %153 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %152, i32 0, i32 74, !dbg !1136
  %154 = load ptr, ptr %153, align 8, !dbg !1136
  %155 = getelementptr inbounds nuw %struct.jpeg_d_main_controller, ptr %154, i32 0, i32 0, !dbg !1137
  %156 = load ptr, ptr %155, align 8, !dbg !1137
  %157 = load ptr, ptr %2, align 8, !dbg !1138
  call void %156(ptr noundef %157, i32 noundef 0), !dbg !1139
  br label %158, !dbg !1140

158:                                              ; preds = %138, %87
  br label %159

159:                                              ; preds = %158, %12
  %160 = load ptr, ptr %2, align 8, !dbg !1141
  %161 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %160, i32 0, i32 2, !dbg !1143
  %162 = load ptr, ptr %161, align 8, !dbg !1143
  %163 = icmp ne ptr %162, null, !dbg !1144
  br i1 %163, label %164, label %212, !dbg !1144

164:                                              ; preds = %159
  %165 = load ptr, ptr %3, align 8, !dbg !1145
  %166 = getelementptr inbounds nuw %struct.my_decomp_master, ptr %165, i32 0, i32 1, !dbg !1147
  %167 = load i32, ptr %166, align 8, !dbg !1147
  %168 = load ptr, ptr %2, align 8, !dbg !1148
  %169 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %168, i32 0, i32 2, !dbg !1149
  %170 = load ptr, ptr %169, align 8, !dbg !1149
  %171 = getelementptr inbounds nuw %struct.jpeg_progress_mgr, ptr %170, i32 0, i32 3, !dbg !1150
  store i32 %167, ptr %171, align 8, !dbg !1151
  %172 = load ptr, ptr %3, align 8, !dbg !1152
  %173 = getelementptr inbounds nuw %struct.my_decomp_master, ptr %172, i32 0, i32 1, !dbg !1153
  %174 = load i32, ptr %173, align 8, !dbg !1153
  %175 = load ptr, ptr %3, align 8, !dbg !1154
  %176 = getelementptr inbounds nuw %struct.my_decomp_master, ptr %175, i32 0, i32 0, !dbg !1155
  %177 = getelementptr inbounds nuw %struct.jpeg_decomp_master, ptr %176, i32 0, i32 2, !dbg !1156
  %178 = load i32, ptr %177, align 8, !dbg !1156
  %179 = icmp ne i32 %178, 0, !dbg !1154
  %180 = zext i1 %179 to i64, !dbg !1154
  %181 = select i1 %179, i32 2, i32 1, !dbg !1154
  %182 = add nsw i32 %174, %181, !dbg !1157
  %183 = load ptr, ptr %2, align 8, !dbg !1158
  %184 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %183, i32 0, i32 2, !dbg !1159
  %185 = load ptr, ptr %184, align 8, !dbg !1159
  %186 = getelementptr inbounds nuw %struct.jpeg_progress_mgr, ptr %185, i32 0, i32 4, !dbg !1160
  store i32 %182, ptr %186, align 4, !dbg !1161
  %187 = load ptr, ptr %2, align 8, !dbg !1162
  %188 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %187, i32 0, i32 14, !dbg !1164
  %189 = load i32, ptr %188, align 8, !dbg !1164
  %190 = icmp ne i32 %189, 0, !dbg !1162
  br i1 %190, label %191, label %211, !dbg !1165

191:                                              ; preds = %164
  %192 = load ptr, ptr %2, align 8, !dbg !1166
  %193 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %192, i32 0, i32 77, !dbg !1167
  %194 = load ptr, ptr %193, align 8, !dbg !1167
  %195 = getelementptr inbounds nuw %struct.jpeg_input_controller, ptr %194, i32 0, i32 5, !dbg !1168
  %196 = load i32, ptr %195, align 4, !dbg !1168
  %197 = icmp ne i32 %196, 0, !dbg !1166
  br i1 %197, label %211, label %198, !dbg !1165

198:                                              ; preds = %191
  %199 = load ptr, ptr %2, align 8, !dbg !1169
  %200 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %199, i32 0, i32 25, !dbg !1171
  %201 = load i32, ptr %200, align 4, !dbg !1171
  %202 = icmp ne i32 %201, 0, !dbg !1169
  %203 = zext i1 %202 to i64, !dbg !1169
  %204 = select i1 %202, i32 2, i32 1, !dbg !1169
  %205 = load ptr, ptr %2, align 8, !dbg !1172
  %206 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %205, i32 0, i32 2, !dbg !1173
  %207 = load ptr, ptr %206, align 8, !dbg !1173
  %208 = getelementptr inbounds nuw %struct.jpeg_progress_mgr, ptr %207, i32 0, i32 4, !dbg !1174
  %209 = load i32, ptr %208, align 4, !dbg !1175
  %210 = add nsw i32 %209, %204, !dbg !1175
  store i32 %210, ptr %208, align 4, !dbg !1175
  br label %211, !dbg !1176

211:                                              ; preds = %198, %191, %164
  br label %212, !dbg !1177

212:                                              ; preds = %211, %159
  ret void, !dbg !1178
}

; Function Attrs: noinline nounwind uwtable
define internal void @finish_output_pass(ptr noundef %0) #0 !dbg !1179 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !1180, !DIExpression(), !1181)
    #dbg_declare(ptr %3, !1182, !DIExpression(), !1183)
  %4 = load ptr, ptr %2, align 8, !dbg !1184
  %5 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %4, i32 0, i32 73, !dbg !1185
  %6 = load ptr, ptr %5, align 8, !dbg !1185
  store ptr %6, ptr %3, align 8, !dbg !1183
  %7 = load ptr, ptr %2, align 8, !dbg !1186
  %8 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %7, i32 0, i32 19, !dbg !1188
  %9 = load i32, ptr %8, align 4, !dbg !1188
  %10 = icmp ne i32 %9, 0, !dbg !1186
  br i1 %10, label %11, label %18, !dbg !1186

11:                                               ; preds = %1
  %12 = load ptr, ptr %2, align 8, !dbg !1189
  %13 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %12, i32 0, i32 83, !dbg !1190
  %14 = load ptr, ptr %13, align 8, !dbg !1190
  %15 = getelementptr inbounds nuw %struct.jpeg_color_quantizer, ptr %14, i32 0, i32 2, !dbg !1191
  %16 = load ptr, ptr %15, align 8, !dbg !1191
  %17 = load ptr, ptr %2, align 8, !dbg !1192
  call void %16(ptr noundef %17), !dbg !1193
  br label %18, !dbg !1193

18:                                               ; preds = %11, %1
  %19 = load ptr, ptr %3, align 8, !dbg !1194
  %20 = getelementptr inbounds nuw %struct.my_decomp_master, ptr %19, i32 0, i32 1, !dbg !1195
  %21 = load i32, ptr %20, align 8, !dbg !1196
  %22 = add nsw i32 %21, 1, !dbg !1196
  store i32 %22, ptr %20, align 8, !dbg !1196
  ret void, !dbg !1197
}

; Function Attrs: noinline nounwind uwtable
define internal void @master_selection(ptr noundef %0) #0 !dbg !1198 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !1199, !DIExpression(), !1200)
    #dbg_declare(ptr %3, !1201, !DIExpression(), !1202)
  %8 = load ptr, ptr %2, align 8, !dbg !1203
  %9 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %8, i32 0, i32 73, !dbg !1204
  %10 = load ptr, ptr %9, align 8, !dbg !1204
  store ptr %10, ptr %3, align 8, !dbg !1202
    #dbg_declare(ptr %4, !1205, !DIExpression(), !1206)
    #dbg_declare(ptr %5, !1207, !DIExpression(), !1208)
    #dbg_declare(ptr %6, !1209, !DIExpression(), !1210)
  %11 = load ptr, ptr %2, align 8, !dbg !1211
  call void @jpeg_calc_output_dimensions(ptr noundef %11), !dbg !1212
  %12 = load ptr, ptr %2, align 8, !dbg !1213
  call void @prepare_range_limit_table(ptr noundef %12), !dbg !1214
  %13 = load ptr, ptr %2, align 8, !dbg !1215
  %14 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %13, i32 0, i32 26, !dbg !1216
  %15 = load i32, ptr %14, align 8, !dbg !1216
  %16 = zext i32 %15 to i64, !dbg !1217
  %17 = load ptr, ptr %2, align 8, !dbg !1218
  %18 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %17, i32 0, i32 28, !dbg !1219
  %19 = load i32, ptr %18, align 8, !dbg !1219
  %20 = sext i32 %19 to i64, !dbg !1220
  %21 = mul nsw i64 %16, %20, !dbg !1221
  store i64 %21, ptr %5, align 8, !dbg !1222
  %22 = load i64, ptr %5, align 8, !dbg !1223
  %23 = trunc i64 %22 to i32, !dbg !1224
  store i32 %23, ptr %6, align 4, !dbg !1225
  %24 = load i32, ptr %6, align 4, !dbg !1226
  %25 = zext i32 %24 to i64, !dbg !1228
  %26 = load i64, ptr %5, align 8, !dbg !1229
  %27 = icmp ne i64 %25, %26, !dbg !1230
  br i1 %27, label %28, label %39, !dbg !1230

28:                                               ; preds = %1
  %29 = load ptr, ptr %2, align 8, !dbg !1231
  %30 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %29, i32 0, i32 0, !dbg !1231
  %31 = load ptr, ptr %30, align 8, !dbg !1231
  %32 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %31, i32 0, i32 5, !dbg !1231
  store i32 69, ptr %32, align 8, !dbg !1231
  %33 = load ptr, ptr %2, align 8, !dbg !1231
  %34 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %33, i32 0, i32 0, !dbg !1231
  %35 = load ptr, ptr %34, align 8, !dbg !1231
  %36 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %35, i32 0, i32 0, !dbg !1231
  %37 = load ptr, ptr %36, align 8, !dbg !1231
  %38 = load ptr, ptr %2, align 8, !dbg !1231
  call void %37(ptr noundef %38), !dbg !1231
  br label %39, !dbg !1231

39:                                               ; preds = %28, %1
  %40 = load ptr, ptr %3, align 8, !dbg !1232
  %41 = getelementptr inbounds nuw %struct.my_decomp_master, ptr %40, i32 0, i32 1, !dbg !1233
  store i32 0, ptr %41, align 8, !dbg !1234
  %42 = load ptr, ptr %2, align 8, !dbg !1235
  %43 = call i32 @use_merged_upsample(ptr noundef %42), !dbg !1236
  %44 = load ptr, ptr %3, align 8, !dbg !1237
  %45 = getelementptr inbounds nuw %struct.my_decomp_master, ptr %44, i32 0, i32 2, !dbg !1238
  store i32 %43, ptr %45, align 4, !dbg !1239
  %46 = load ptr, ptr %3, align 8, !dbg !1240
  %47 = getelementptr inbounds nuw %struct.my_decomp_master, ptr %46, i32 0, i32 3, !dbg !1241
  store ptr null, ptr %47, align 8, !dbg !1242
  %48 = load ptr, ptr %3, align 8, !dbg !1243
  %49 = getelementptr inbounds nuw %struct.my_decomp_master, ptr %48, i32 0, i32 4, !dbg !1244
  store ptr null, ptr %49, align 8, !dbg !1245
  %50 = load ptr, ptr %2, align 8, !dbg !1246
  %51 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %50, i32 0, i32 19, !dbg !1248
  %52 = load i32, ptr %51, align 4, !dbg !1248
  %53 = icmp ne i32 %52, 0, !dbg !1246
  br i1 %53, label %54, label %59, !dbg !1249

54:                                               ; preds = %39
  %55 = load ptr, ptr %2, align 8, !dbg !1250
  %56 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %55, i32 0, i32 14, !dbg !1251
  %57 = load i32, ptr %56, align 8, !dbg !1251
  %58 = icmp ne i32 %57, 0, !dbg !1250
  br i1 %58, label %66, label %59, !dbg !1249

59:                                               ; preds = %54, %39
  %60 = load ptr, ptr %2, align 8, !dbg !1252
  %61 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %60, i32 0, i32 23, !dbg !1254
  store i32 0, ptr %61, align 4, !dbg !1255
  %62 = load ptr, ptr %2, align 8, !dbg !1256
  %63 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %62, i32 0, i32 24, !dbg !1257
  store i32 0, ptr %63, align 8, !dbg !1258
  %64 = load ptr, ptr %2, align 8, !dbg !1259
  %65 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %64, i32 0, i32 25, !dbg !1260
  store i32 0, ptr %65, align 4, !dbg !1261
  br label %66, !dbg !1262

66:                                               ; preds = %59, %54
  %67 = load ptr, ptr %2, align 8, !dbg !1263
  %68 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %67, i32 0, i32 19, !dbg !1265
  %69 = load i32, ptr %68, align 4, !dbg !1265
  %70 = icmp ne i32 %69, 0, !dbg !1263
  br i1 %70, label %71, label %152, !dbg !1263

71:                                               ; preds = %66
  %72 = load ptr, ptr %2, align 8, !dbg !1266
  %73 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %72, i32 0, i32 15, !dbg !1269
  %74 = load i32, ptr %73, align 4, !dbg !1269
  %75 = icmp ne i32 %74, 0, !dbg !1266
  br i1 %75, label %76, label %87, !dbg !1266

76:                                               ; preds = %71
  %77 = load ptr, ptr %2, align 8, !dbg !1270
  %78 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %77, i32 0, i32 0, !dbg !1270
  %79 = load ptr, ptr %78, align 8, !dbg !1270
  %80 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %79, i32 0, i32 5, !dbg !1270
  store i32 46, ptr %80, align 8, !dbg !1270
  %81 = load ptr, ptr %2, align 8, !dbg !1270
  %82 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %81, i32 0, i32 0, !dbg !1270
  %83 = load ptr, ptr %82, align 8, !dbg !1270
  %84 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %83, i32 0, i32 0, !dbg !1270
  %85 = load ptr, ptr %84, align 8, !dbg !1270
  %86 = load ptr, ptr %2, align 8, !dbg !1270
  call void %85(ptr noundef %86), !dbg !1270
  br label %87, !dbg !1270

87:                                               ; preds = %76, %71
  %88 = load ptr, ptr %2, align 8, !dbg !1271
  %89 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %88, i32 0, i32 28, !dbg !1273
  %90 = load i32, ptr %89, align 8, !dbg !1273
  %91 = icmp ne i32 %90, 3, !dbg !1274
  br i1 %91, label %92, label %101, !dbg !1274

92:                                               ; preds = %87
  %93 = load ptr, ptr %2, align 8, !dbg !1275
  %94 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %93, i32 0, i32 23, !dbg !1277
  store i32 1, ptr %94, align 4, !dbg !1278
  %95 = load ptr, ptr %2, align 8, !dbg !1279
  %96 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %95, i32 0, i32 24, !dbg !1280
  store i32 0, ptr %96, align 8, !dbg !1281
  %97 = load ptr, ptr %2, align 8, !dbg !1282
  %98 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %97, i32 0, i32 25, !dbg !1283
  store i32 0, ptr %98, align 4, !dbg !1284
  %99 = load ptr, ptr %2, align 8, !dbg !1285
  %100 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %99, i32 0, i32 32, !dbg !1286
  store ptr null, ptr %100, align 8, !dbg !1287
  br label %122, !dbg !1288

101:                                              ; preds = %87
  %102 = load ptr, ptr %2, align 8, !dbg !1289
  %103 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %102, i32 0, i32 32, !dbg !1291
  %104 = load ptr, ptr %103, align 8, !dbg !1291
  %105 = icmp ne ptr %104, null, !dbg !1292
  br i1 %105, label %106, label %109, !dbg !1292

106:                                              ; preds = %101
  %107 = load ptr, ptr %2, align 8, !dbg !1293
  %108 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %107, i32 0, i32 24, !dbg !1295
  store i32 1, ptr %108, align 8, !dbg !1296
  br label %121, !dbg !1297

109:                                              ; preds = %101
  %110 = load ptr, ptr %2, align 8, !dbg !1298
  %111 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %110, i32 0, i32 21, !dbg !1300
  %112 = load i32, ptr %111, align 4, !dbg !1300
  %113 = icmp ne i32 %112, 0, !dbg !1298
  br i1 %113, label %114, label %117, !dbg !1298

114:                                              ; preds = %109
  %115 = load ptr, ptr %2, align 8, !dbg !1301
  %116 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %115, i32 0, i32 25, !dbg !1303
  store i32 1, ptr %116, align 4, !dbg !1304
  br label %120, !dbg !1305

117:                                              ; preds = %109
  %118 = load ptr, ptr %2, align 8, !dbg !1306
  %119 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %118, i32 0, i32 23, !dbg !1308
  store i32 1, ptr %119, align 4, !dbg !1309
  br label %120

120:                                              ; preds = %117, %114
  br label %121

121:                                              ; preds = %120, %106
  br label %122

122:                                              ; preds = %121, %92
  %123 = load ptr, ptr %2, align 8, !dbg !1310
  %124 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %123, i32 0, i32 23, !dbg !1312
  %125 = load i32, ptr %124, align 4, !dbg !1312
  %126 = icmp ne i32 %125, 0, !dbg !1310
  br i1 %126, label %127, label %134, !dbg !1310

127:                                              ; preds = %122
  %128 = load ptr, ptr %2, align 8, !dbg !1313
  call void @jinit_1pass_quantizer(ptr noundef %128), !dbg !1315
  %129 = load ptr, ptr %2, align 8, !dbg !1316
  %130 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %129, i32 0, i32 83, !dbg !1317
  %131 = load ptr, ptr %130, align 8, !dbg !1317
  %132 = load ptr, ptr %3, align 8, !dbg !1318
  %133 = getelementptr inbounds nuw %struct.my_decomp_master, ptr %132, i32 0, i32 3, !dbg !1319
  store ptr %131, ptr %133, align 8, !dbg !1320
  br label %134, !dbg !1321

134:                                              ; preds = %127, %122
  %135 = load ptr, ptr %2, align 8, !dbg !1322
  %136 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %135, i32 0, i32 25, !dbg !1324
  %137 = load i32, ptr %136, align 4, !dbg !1324
  %138 = icmp ne i32 %137, 0, !dbg !1322
  br i1 %138, label %144, label %139, !dbg !1325

139:                                              ; preds = %134
  %140 = load ptr, ptr %2, align 8, !dbg !1326
  %141 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %140, i32 0, i32 24, !dbg !1327
  %142 = load i32, ptr %141, align 8, !dbg !1327
  %143 = icmp ne i32 %142, 0, !dbg !1326
  br i1 %143, label %144, label %151, !dbg !1325

144:                                              ; preds = %139, %134
  %145 = load ptr, ptr %2, align 8, !dbg !1328
  call void @jinit_2pass_quantizer(ptr noundef %145), !dbg !1330
  %146 = load ptr, ptr %2, align 8, !dbg !1331
  %147 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %146, i32 0, i32 83, !dbg !1332
  %148 = load ptr, ptr %147, align 8, !dbg !1332
  %149 = load ptr, ptr %3, align 8, !dbg !1333
  %150 = getelementptr inbounds nuw %struct.my_decomp_master, ptr %149, i32 0, i32 4, !dbg !1334
  store ptr %148, ptr %150, align 8, !dbg !1335
  br label %151, !dbg !1336

151:                                              ; preds = %144, %139
  br label %152, !dbg !1337

152:                                              ; preds = %151, %66
  %153 = load ptr, ptr %2, align 8, !dbg !1338
  %154 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %153, i32 0, i32 15, !dbg !1340
  %155 = load i32, ptr %154, align 4, !dbg !1340
  %156 = icmp ne i32 %155, 0, !dbg !1338
  br i1 %156, label %172, label %157, !dbg !1341

157:                                              ; preds = %152
  %158 = load ptr, ptr %3, align 8, !dbg !1342
  %159 = getelementptr inbounds nuw %struct.my_decomp_master, ptr %158, i32 0, i32 2, !dbg !1345
  %160 = load i32, ptr %159, align 4, !dbg !1345
  %161 = icmp ne i32 %160, 0, !dbg !1342
  br i1 %161, label %162, label %164, !dbg !1342

162:                                              ; preds = %157
  %163 = load ptr, ptr %2, align 8, !dbg !1346
  call void @jinit_merged_upsampler(ptr noundef %163), !dbg !1348
  br label %167, !dbg !1349

164:                                              ; preds = %157
  %165 = load ptr, ptr %2, align 8, !dbg !1350
  call void @jinit_color_deconverter(ptr noundef %165), !dbg !1352
  %166 = load ptr, ptr %2, align 8, !dbg !1353
  call void @jinit_upsampler(ptr noundef %166), !dbg !1354
  br label %167

167:                                              ; preds = %164, %162
  %168 = load ptr, ptr %2, align 8, !dbg !1355
  %169 = load ptr, ptr %2, align 8, !dbg !1356
  %170 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %169, i32 0, i32 25, !dbg !1357
  %171 = load i32, ptr %170, align 4, !dbg !1357
  call void @jinit_d_post_controller(ptr noundef %168, i32 noundef %171), !dbg !1358
  br label %172, !dbg !1359

172:                                              ; preds = %167, %152
  %173 = load ptr, ptr %2, align 8, !dbg !1360
  call void @jinit_inverse_dct(ptr noundef %173), !dbg !1361
  %174 = load ptr, ptr %2, align 8, !dbg !1362
  %175 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %174, i32 0, i32 45, !dbg !1364
  %176 = load i32, ptr %175, align 4, !dbg !1364
  %177 = icmp ne i32 %176, 0, !dbg !1362
  br i1 %177, label %178, label %189, !dbg !1362

178:                                              ; preds = %172
  %179 = load ptr, ptr %2, align 8, !dbg !1365
  %180 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %179, i32 0, i32 0, !dbg !1365
  %181 = load ptr, ptr %180, align 8, !dbg !1365
  %182 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %181, i32 0, i32 5, !dbg !1365
  store i32 1, ptr %182, align 8, !dbg !1365
  %183 = load ptr, ptr %2, align 8, !dbg !1365
  %184 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %183, i32 0, i32 0, !dbg !1365
  %185 = load ptr, ptr %184, align 8, !dbg !1365
  %186 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %185, i32 0, i32 0, !dbg !1365
  %187 = load ptr, ptr %186, align 8, !dbg !1365
  %188 = load ptr, ptr %2, align 8, !dbg !1365
  call void %187(ptr noundef %188), !dbg !1365
  br label %199, !dbg !1367

189:                                              ; preds = %172
  %190 = load ptr, ptr %2, align 8, !dbg !1368
  %191 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %190, i32 0, i32 44, !dbg !1371
  %192 = load i32, ptr %191, align 8, !dbg !1371
  %193 = icmp ne i32 %192, 0, !dbg !1368
  br i1 %193, label %194, label %196, !dbg !1368

194:                                              ; preds = %189
  %195 = load ptr, ptr %2, align 8, !dbg !1372
  call void @jinit_phuff_decoder(ptr noundef %195), !dbg !1374
  br label %198, !dbg !1375

196:                                              ; preds = %189
  %197 = load ptr, ptr %2, align 8, !dbg !1376
  call void @jinit_huff_decoder(ptr noundef %197), !dbg !1377
  br label %198

198:                                              ; preds = %196, %194
  br label %199

199:                                              ; preds = %198, %178
  %200 = load ptr, ptr %2, align 8, !dbg !1378
  %201 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %200, i32 0, i32 77, !dbg !1379
  %202 = load ptr, ptr %201, align 8, !dbg !1379
  %203 = getelementptr inbounds nuw %struct.jpeg_input_controller, ptr %202, i32 0, i32 4, !dbg !1380
  %204 = load i32, ptr %203, align 8, !dbg !1380
  %205 = icmp ne i32 %204, 0, !dbg !1378
  br i1 %205, label %211, label %206, !dbg !1381

206:                                              ; preds = %199
  %207 = load ptr, ptr %2, align 8, !dbg !1382
  %208 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %207, i32 0, i32 14, !dbg !1383
  %209 = load i32, ptr %208, align 8, !dbg !1383
  %210 = icmp ne i32 %209, 0, !dbg !1381
  br label %211, !dbg !1381

211:                                              ; preds = %206, %199
  %212 = phi i1 [ true, %199 ], [ %210, %206 ]
  %213 = zext i1 %212 to i32, !dbg !1381
  store i32 %213, ptr %4, align 4, !dbg !1384
  %214 = load ptr, ptr %2, align 8, !dbg !1385
  %215 = load i32, ptr %4, align 4, !dbg !1386
  call void @jinit_d_coef_controller(ptr noundef %214, i32 noundef %215), !dbg !1387
  %216 = load ptr, ptr %2, align 8, !dbg !1388
  %217 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %216, i32 0, i32 15, !dbg !1390
  %218 = load i32, ptr %217, align 4, !dbg !1390
  %219 = icmp ne i32 %218, 0, !dbg !1388
  br i1 %219, label %222, label %220, !dbg !1391

220:                                              ; preds = %211
  %221 = load ptr, ptr %2, align 8, !dbg !1392
  call void @jinit_d_main_controller(ptr noundef %221, i32 noundef 0), !dbg !1393
  br label %222, !dbg !1393

222:                                              ; preds = %220, %211
  %223 = load ptr, ptr %2, align 8, !dbg !1394
  %224 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %223, i32 0, i32 1, !dbg !1395
  %225 = load ptr, ptr %224, align 8, !dbg !1395
  %226 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %225, i32 0, i32 6, !dbg !1396
  %227 = load ptr, ptr %226, align 8, !dbg !1396
  %228 = load ptr, ptr %2, align 8, !dbg !1397
  call void %227(ptr noundef %228), !dbg !1398
  %229 = load ptr, ptr %2, align 8, !dbg !1399
  %230 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %229, i32 0, i32 77, !dbg !1400
  %231 = load ptr, ptr %230, align 8, !dbg !1400
  %232 = getelementptr inbounds nuw %struct.jpeg_input_controller, ptr %231, i32 0, i32 2, !dbg !1401
  %233 = load ptr, ptr %232, align 8, !dbg !1401
  %234 = load ptr, ptr %2, align 8, !dbg !1402
  call void %233(ptr noundef %234), !dbg !1403
  %235 = load ptr, ptr %2, align 8, !dbg !1404
  %236 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %235, i32 0, i32 2, !dbg !1406
  %237 = load ptr, ptr %236, align 8, !dbg !1406
  %238 = icmp ne ptr %237, null, !dbg !1407
  br i1 %238, label %239, label %300, !dbg !1408

239:                                              ; preds = %222
  %240 = load ptr, ptr %2, align 8, !dbg !1409
  %241 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %240, i32 0, i32 14, !dbg !1410
  %242 = load i32, ptr %241, align 8, !dbg !1410
  %243 = icmp ne i32 %242, 0, !dbg !1409
  br i1 %243, label %300, label %244, !dbg !1411

244:                                              ; preds = %239
  %245 = load ptr, ptr %2, align 8, !dbg !1412
  %246 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %245, i32 0, i32 77, !dbg !1413
  %247 = load ptr, ptr %246, align 8, !dbg !1413
  %248 = getelementptr inbounds nuw %struct.jpeg_input_controller, ptr %247, i32 0, i32 4, !dbg !1414
  %249 = load i32, ptr %248, align 8, !dbg !1414
  %250 = icmp ne i32 %249, 0, !dbg !1412
  br i1 %250, label %251, label %300, !dbg !1411

251:                                              ; preds = %244
    #dbg_declare(ptr %7, !1415, !DIExpression(), !1417)
  %252 = load ptr, ptr %2, align 8, !dbg !1418
  %253 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %252, i32 0, i32 44, !dbg !1420
  %254 = load i32, ptr %253, align 8, !dbg !1420
  %255 = icmp ne i32 %254, 0, !dbg !1418
  br i1 %255, label %256, label %262, !dbg !1418

256:                                              ; preds = %251
  %257 = load ptr, ptr %2, align 8, !dbg !1421
  %258 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %257, i32 0, i32 8, !dbg !1423
  %259 = load i32, ptr %258, align 8, !dbg !1423
  %260 = mul nsw i32 3, %259, !dbg !1424
  %261 = add nsw i32 2, %260, !dbg !1425
  store i32 %261, ptr %7, align 4, !dbg !1426
  br label %266, !dbg !1427

262:                                              ; preds = %251
  %263 = load ptr, ptr %2, align 8, !dbg !1428
  %264 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %263, i32 0, i32 8, !dbg !1430
  %265 = load i32, ptr %264, align 8, !dbg !1430
  store i32 %265, ptr %7, align 4, !dbg !1431
  br label %266

266:                                              ; preds = %262, %256
  %267 = load ptr, ptr %2, align 8, !dbg !1432
  %268 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %267, i32 0, i32 2, !dbg !1433
  %269 = load ptr, ptr %268, align 8, !dbg !1433
  %270 = getelementptr inbounds nuw %struct.jpeg_progress_mgr, ptr %269, i32 0, i32 1, !dbg !1434
  store i64 0, ptr %270, align 8, !dbg !1435
  %271 = load ptr, ptr %2, align 8, !dbg !1436
  %272 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %271, i32 0, i32 60, !dbg !1437
  %273 = load i32, ptr %272, align 8, !dbg !1437
  %274 = zext i32 %273 to i64, !dbg !1438
  %275 = load i32, ptr %7, align 4, !dbg !1439
  %276 = sext i32 %275 to i64, !dbg !1439
  %277 = mul nsw i64 %274, %276, !dbg !1440
  %278 = load ptr, ptr %2, align 8, !dbg !1441
  %279 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %278, i32 0, i32 2, !dbg !1442
  %280 = load ptr, ptr %279, align 8, !dbg !1442
  %281 = getelementptr inbounds nuw %struct.jpeg_progress_mgr, ptr %280, i32 0, i32 2, !dbg !1443
  store i64 %277, ptr %281, align 8, !dbg !1444
  %282 = load ptr, ptr %2, align 8, !dbg !1445
  %283 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %282, i32 0, i32 2, !dbg !1446
  %284 = load ptr, ptr %283, align 8, !dbg !1446
  %285 = getelementptr inbounds nuw %struct.jpeg_progress_mgr, ptr %284, i32 0, i32 3, !dbg !1447
  store i32 0, ptr %285, align 8, !dbg !1448
  %286 = load ptr, ptr %2, align 8, !dbg !1449
  %287 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %286, i32 0, i32 25, !dbg !1450
  %288 = load i32, ptr %287, align 4, !dbg !1450
  %289 = icmp ne i32 %288, 0, !dbg !1449
  %290 = zext i1 %289 to i64, !dbg !1449
  %291 = select i1 %289, i32 3, i32 2, !dbg !1449
  %292 = load ptr, ptr %2, align 8, !dbg !1451
  %293 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %292, i32 0, i32 2, !dbg !1452
  %294 = load ptr, ptr %293, align 8, !dbg !1452
  %295 = getelementptr inbounds nuw %struct.jpeg_progress_mgr, ptr %294, i32 0, i32 4, !dbg !1453
  store i32 %291, ptr %295, align 4, !dbg !1454
  %296 = load ptr, ptr %3, align 8, !dbg !1455
  %297 = getelementptr inbounds nuw %struct.my_decomp_master, ptr %296, i32 0, i32 1, !dbg !1456
  %298 = load i32, ptr %297, align 8, !dbg !1457
  %299 = add nsw i32 %298, 1, !dbg !1457
  store i32 %299, ptr %297, align 8, !dbg !1457
  br label %300, !dbg !1458

300:                                              ; preds = %266, %244, %239, %222
  ret void, !dbg !1459
}

; Function Attrs: noinline nounwind uwtable
define internal void @prepare_range_limit_table(ptr noundef %0) #0 !dbg !1460 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !1461, !DIExpression(), !1462)
    #dbg_declare(ptr %3, !1463, !DIExpression(), !1464)
    #dbg_declare(ptr %4, !1465, !DIExpression(), !1466)
  %5 = load ptr, ptr %2, align 8, !dbg !1467
  %6 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %5, i32 0, i32 1, !dbg !1468
  %7 = load ptr, ptr %6, align 8, !dbg !1468
  %8 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %7, i32 0, i32 0, !dbg !1469
  %9 = load ptr, ptr %8, align 8, !dbg !1469
  %10 = load ptr, ptr %2, align 8, !dbg !1470
  %11 = call ptr %9(ptr noundef %10, i32 noundef 1, i64 noundef 1408), !dbg !1471
  store ptr %11, ptr %3, align 8, !dbg !1472
  %12 = load ptr, ptr %3, align 8, !dbg !1473
  %13 = getelementptr inbounds i8, ptr %12, i64 256, !dbg !1473
  store ptr %13, ptr %3, align 8, !dbg !1473
  %14 = load ptr, ptr %3, align 8, !dbg !1474
  %15 = load ptr, ptr %2, align 8, !dbg !1475
  %16 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %15, i32 0, i32 61, !dbg !1476
  store ptr %14, ptr %16, align 8, !dbg !1477
  %17 = load ptr, ptr %3, align 8, !dbg !1478
  %18 = getelementptr inbounds i8, ptr %17, i64 -256, !dbg !1478
  call void @llvm.memset.p0.i64(ptr align 1 %18, i8 0, i64 256, i1 false), !dbg !1478
  store i32 0, ptr %4, align 4, !dbg !1479
  br label %19, !dbg !1481

19:                                               ; preds = %29, %1
  %20 = load i32, ptr %4, align 4, !dbg !1482
  %21 = icmp sle i32 %20, 255, !dbg !1484
  br i1 %21, label %22, label %32, !dbg !1485

22:                                               ; preds = %19
  %23 = load i32, ptr %4, align 4, !dbg !1486
  %24 = trunc i32 %23 to i8, !dbg !1487
  %25 = load ptr, ptr %3, align 8, !dbg !1488
  %26 = load i32, ptr %4, align 4, !dbg !1489
  %27 = sext i32 %26 to i64, !dbg !1488
  %28 = getelementptr inbounds i8, ptr %25, i64 %27, !dbg !1488
  store i8 %24, ptr %28, align 1, !dbg !1490
  br label %29, !dbg !1488

29:                                               ; preds = %22
  %30 = load i32, ptr %4, align 4, !dbg !1491
  %31 = add nsw i32 %30, 1, !dbg !1491
  store i32 %31, ptr %4, align 4, !dbg !1491
  br label %19, !dbg !1492, !llvm.loop !1493

32:                                               ; preds = %19
  %33 = load ptr, ptr %3, align 8, !dbg !1495
  %34 = getelementptr inbounds i8, ptr %33, i64 128, !dbg !1495
  store ptr %34, ptr %3, align 8, !dbg !1495
  store i32 128, ptr %4, align 4, !dbg !1496
  br label %35, !dbg !1498

35:                                               ; preds = %43, %32
  %36 = load i32, ptr %4, align 4, !dbg !1499
  %37 = icmp slt i32 %36, 512, !dbg !1501
  br i1 %37, label %38, label %46, !dbg !1502

38:                                               ; preds = %35
  %39 = load ptr, ptr %3, align 8, !dbg !1503
  %40 = load i32, ptr %4, align 4, !dbg !1504
  %41 = sext i32 %40 to i64, !dbg !1503
  %42 = getelementptr inbounds i8, ptr %39, i64 %41, !dbg !1503
  store i8 -1, ptr %42, align 1, !dbg !1505
  br label %43, !dbg !1503

43:                                               ; preds = %38
  %44 = load i32, ptr %4, align 4, !dbg !1506
  %45 = add nsw i32 %44, 1, !dbg !1506
  store i32 %45, ptr %4, align 4, !dbg !1506
  br label %35, !dbg !1507, !llvm.loop !1508

46:                                               ; preds = %35
  %47 = load ptr, ptr %3, align 8, !dbg !1510
  %48 = getelementptr inbounds i8, ptr %47, i64 512, !dbg !1510
  call void @llvm.memset.p0.i64(ptr align 1 %48, i8 0, i64 384, i1 false), !dbg !1510
  %49 = load ptr, ptr %3, align 8, !dbg !1511
  %50 = getelementptr inbounds i8, ptr %49, i64 896, !dbg !1511
  %51 = load ptr, ptr %2, align 8, !dbg !1511
  %52 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %51, i32 0, i32 61, !dbg !1511
  %53 = load ptr, ptr %52, align 8, !dbg !1511
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %50, ptr align 1 %53, i64 128, i1 false), !dbg !1511
  ret void, !dbg !1512
}

declare void @jinit_1pass_quantizer(ptr noundef) #1

declare void @jinit_2pass_quantizer(ptr noundef) #1

declare void @jinit_merged_upsampler(ptr noundef) #1

declare void @jinit_color_deconverter(ptr noundef) #1

declare void @jinit_upsampler(ptr noundef) #1

declare void @jinit_d_post_controller(ptr noundef, i32 noundef) #1

declare void @jinit_inverse_dct(ptr noundef) #1

declare void @jinit_phuff_decoder(ptr noundef) #1

declare void @jinit_huff_decoder(ptr noundef) #1

declare void @jinit_d_coef_controller(ptr noundef, i32 noundef) #1

declare void @jinit_d_main_controller(ptr noundef, i32 noundef) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!585, !586, !587, !588, !589, !590, !591}
!llvm.ident = !{!592}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !154, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jdmaster.c", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "f1934f4bfc003e5ec1a9a20343f92380")
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
!154 = !{!155, !228, !194, !281, !212, !213, !458, !224, !225, !583}
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "j_common_ptr", file: !4, line: 248, baseType: !156)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_common_struct", file: !4, line: 240, size: 256, elements: !158)
!158 = !{!159, !204, !270, !279, !280}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !157, file: !4, line: 241, baseType: !160, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_error_mgr", file: !4, line: 618, size: 1344, elements: !162)
!162 = !{!163, !167, !172, !173, !179, !180, !181, !192, !193, !195, !200, !201, !202, !203}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "error_exit", scope: !161, file: !4, line: 620, baseType: !164, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = !DISubroutineType(types: !166)
!166 = !{null, !155}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "emit_message", scope: !161, file: !4, line: 622, baseType: !168, size: 64, offset: 64)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = !DISubroutineType(types: !170)
!170 = !{null, !155, !171}
!171 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "output_message", scope: !161, file: !4, line: 624, baseType: !164, size: 64, offset: 128)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "format_message", scope: !161, file: !4, line: 626, baseType: !174, size: 64, offset: 192)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = !DISubroutineType(types: !176)
!176 = !{null, !155, !177}
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "reset_error_mgr", scope: !161, file: !4, line: 629, baseType: !164, size: 64, offset: 256)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "msg_code", scope: !161, file: !4, line: 634, baseType: !171, size: 32, offset: 320)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "msg_parm", scope: !161, file: !4, line: 639, baseType: !182, size: 640, offset: 352)
!182 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !161, file: !4, line: 636, size: 640, elements: !183)
!183 = !{!184, !188}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !182, file: !4, line: 637, baseType: !185, size: 256)
!185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 256, elements: !186)
!186 = !{!187}
!187 = !DISubrange(count: 8)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !182, file: !4, line: 638, baseType: !189, size: 640)
!189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 640, elements: !190)
!190 = !{!191}
!191 = !DISubrange(count: 80)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "trace_level", scope: !161, file: !4, line: 643, baseType: !171, size: 32, offset: 992)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "num_warnings", scope: !161, file: !4, line: 651, baseType: !194, size: 64, offset: 1024)
!194 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "jpeg_message_table", scope: !161, file: !4, line: 663, baseType: !196, size: 64, offset: 1088)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !198)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !178)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "last_jpeg_message", scope: !161, file: !4, line: 664, baseType: !171, size: 32, offset: 1152)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "addon_message_table", scope: !161, file: !4, line: 668, baseType: !196, size: 64, offset: 1216)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "first_addon_message", scope: !161, file: !4, line: 669, baseType: !171, size: 32, offset: 1280)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "last_addon_message", scope: !161, file: !4, line: 670, baseType: !171, size: 32, offset: 1312)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !157, file: !4, line: 241, baseType: !205, size: 64, offset: 64)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_memory_mgr", file: !4, line: 731, size: 768, elements: !207)
!207 = !{!208, !216, !217, !229, !243, !251, !258, !259, !263, !267, !268, !269}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_small", scope: !206, file: !4, line: 733, baseType: !209, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = !DISubroutineType(types: !211)
!211 = !{!212, !155, !171, !213}
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !214, line: 18, baseType: !215)
!214 = !DIFile(filename: "/usr/local/lib/clang/20/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!215 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_large", scope: !206, file: !4, line: 735, baseType: !209, size: 64, offset: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_sarray", scope: !206, file: !4, line: 737, baseType: !218, size: 64, offset: 128)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DISubroutineType(types: !220)
!220 = !{!221, !155, !171, !228, !228}
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPARRAY", file: !4, line: 67, baseType: !222)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPROW", file: !4, line: 66, baseType: !224)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPLE", file: !226, line: 59, baseType: !227)
!226 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jmorecfg.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "56a0eda58fafa6bdd5498f702a998c09")
!227 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "JDIMENSION", file: !226, line: 171, baseType: !5)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_barray", scope: !206, file: !4, line: 740, baseType: !230, size: 64, offset: 192)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = !DISubroutineType(types: !232)
!232 = !{!233, !155, !171, !228, !228}
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
!243 = !DIDerivedType(tag: DW_TAG_member, name: "request_virt_sarray", scope: !206, file: !4, line: 743, baseType: !244, size: 64, offset: 256)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = !DISubroutineType(types: !246)
!246 = !{!247, !155, !171, !250, !228, !228, !228}
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "jvirt_sarray_ptr", file: !4, line: 727, baseType: !248)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DICompositeType(tag: DW_TAG_structure_type, name: "jvirt_sarray_control", file: !4, line: 727, flags: DIFlagFwdDecl)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "boolean", file: !226, line: 227, baseType: !171)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "request_virt_barray", scope: !206, file: !4, line: 749, baseType: !252, size: 64, offset: 320)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DISubroutineType(types: !254)
!254 = !{!255, !155, !171, !250, !228, !228, !228}
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "jvirt_barray_ptr", file: !4, line: 728, baseType: !256)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = !DICompositeType(tag: DW_TAG_structure_type, name: "jvirt_barray_control", file: !4, line: 728, flags: DIFlagFwdDecl)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "realize_virt_arrays", scope: !206, file: !4, line: 755, baseType: !164, size: 64, offset: 384)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "access_virt_sarray", scope: !206, file: !4, line: 756, baseType: !260, size: 64, offset: 448)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = !DISubroutineType(types: !262)
!262 = !{!221, !155, !247, !228, !228, !250}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "access_virt_barray", scope: !206, file: !4, line: 761, baseType: !264, size: 64, offset: 512)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DISubroutineType(types: !266)
!266 = !{!233, !155, !255, !228, !228, !250}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "free_pool", scope: !206, file: !4, line: 766, baseType: !168, size: 64, offset: 576)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "self_destruct", scope: !206, file: !4, line: 767, baseType: !164, size: 64, offset: 640)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "max_memory_to_use", scope: !206, file: !4, line: 774, baseType: !194, size: 64, offset: 704)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "progress", scope: !157, file: !4, line: 241, baseType: !271, size: 64, offset: 128)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_progress_mgr", file: !4, line: 676, size: 256, elements: !273)
!273 = !{!274, !275, !276, !277, !278}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "progress_monitor", scope: !272, file: !4, line: 677, baseType: !164, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "pass_counter", scope: !272, file: !4, line: 679, baseType: !194, size: 64, offset: 64)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "pass_limit", scope: !272, file: !4, line: 680, baseType: !194, size: 64, offset: 128)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "completed_passes", scope: !272, file: !4, line: 681, baseType: !171, size: 32, offset: 192)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "total_passes", scope: !272, file: !4, line: 682, baseType: !171, size: 32, offset: 224)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "is_decompressor", scope: !157, file: !4, line: 241, baseType: !250, size: 32, offset: 192)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "global_state", scope: !157, file: !4, line: 241, baseType: !171, size: 32, offset: 224)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "my_master_ptr", file: !1, line: 35, baseType: !282)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "my_decomp_master", file: !1, line: 33, baseType: !284)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 21, size: 384, elements: !285)
!285 = !{!286, !579, !580, !581, !582}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "pub", scope: !284, file: !1, line: 22, baseType: !287, size: 192)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_decomp_master", file: !24, line: 136, size: 192, elements: !288)
!288 = !{!289, !577, !578}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_for_output_pass", scope: !287, file: !24, line: 137, baseType: !290, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = !DISubroutineType(types: !292)
!292 = !{null, !293}
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "j_decompress_ptr", file: !4, line: 250, baseType: !294)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_decompress_struct", file: !4, line: 394, size: 4928, elements: !296)
!296 = !{!297, !298, !299, !300, !301, !302, !325, !326, !327, !328, !330, !331, !332, !333, !335, !336, !337, !339, !340, !341, !342, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !364, !377, !393, !394, !395, !421, !422, !423, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !445, !446, !447, !448, !452, !453, !454, !455, !456, !457, !459, !473, !491, !500, !510, !525, !534, !547, !554, !563}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !295, file: !4, line: 395, baseType: !160, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !295, file: !4, line: 395, baseType: !205, size: 64, offset: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "progress", scope: !295, file: !4, line: 395, baseType: !271, size: 64, offset: 128)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "is_decompressor", scope: !295, file: !4, line: 395, baseType: !250, size: 32, offset: 192)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "global_state", scope: !295, file: !4, line: 395, baseType: !171, size: 32, offset: 224)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !295, file: !4, line: 398, baseType: !303, size: 64, offset: 256)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_source_mgr", file: !4, line: 700, size: 448, elements: !305)
!305 = !{!306, !310, !311, !312, !316, !320, !324}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "next_input_byte", scope: !304, file: !4, line: 701, baseType: !307, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !309)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "JOCTET", file: !226, line: 110, baseType: !227)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_in_buffer", scope: !304, file: !4, line: 702, baseType: !213, size: 64, offset: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "init_source", scope: !304, file: !4, line: 704, baseType: !290, size: 64, offset: 128)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "fill_input_buffer", scope: !304, file: !4, line: 705, baseType: !313, size: 64, offset: 192)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DISubroutineType(types: !315)
!315 = !{!250, !293}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "skip_input_data", scope: !304, file: !4, line: 706, baseType: !317, size: 64, offset: 256)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = !DISubroutineType(types: !319)
!319 = !{null, !293, !194}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "resync_to_restart", scope: !304, file: !4, line: 707, baseType: !321, size: 64, offset: 320)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = !DISubroutineType(types: !323)
!323 = !{!250, !293, !171}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "term_source", scope: !304, file: !4, line: 708, baseType: !290, size: 64, offset: 384)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "image_width", scope: !295, file: !4, line: 403, baseType: !228, size: 32, offset: 320)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "image_height", scope: !295, file: !4, line: 404, baseType: !228, size: 32, offset: 352)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "num_components", scope: !295, file: !4, line: 405, baseType: !171, size: 32, offset: 384)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "jpeg_color_space", scope: !295, file: !4, line: 406, baseType: !329, size: 32, offset: 416)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_COLOR_SPACE", file: !4, line: 201, baseType: !3)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "out_color_space", scope: !295, file: !4, line: 413, baseType: !329, size: 32, offset: 448)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "scale_num", scope: !295, file: !4, line: 415, baseType: !5, size: 32, offset: 480)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "scale_denom", scope: !295, file: !4, line: 415, baseType: !5, size: 32, offset: 512)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "output_gamma", scope: !295, file: !4, line: 417, baseType: !334, size: 64, offset: 576)
!334 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "buffered_image", scope: !295, file: !4, line: 419, baseType: !250, size: 32, offset: 640)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "raw_data_out", scope: !295, file: !4, line: 420, baseType: !250, size: 32, offset: 672)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "dct_method", scope: !295, file: !4, line: 422, baseType: !338, size: 32, offset: 704)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_DCT_METHOD", file: !4, line: 209, baseType: !13)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "do_fancy_upsampling", scope: !295, file: !4, line: 423, baseType: !250, size: 32, offset: 736)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "do_block_smoothing", scope: !295, file: !4, line: 424, baseType: !250, size: 32, offset: 768)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "quantize_colors", scope: !295, file: !4, line: 426, baseType: !250, size: 32, offset: 800)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "dither_mode", scope: !295, file: !4, line: 428, baseType: !343, size: 32, offset: 832)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_DITHER_MODE", file: !4, line: 224, baseType: !18)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "two_pass_quantize", scope: !295, file: !4, line: 429, baseType: !250, size: 32, offset: 864)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "desired_number_of_colors", scope: !295, file: !4, line: 430, baseType: !171, size: 32, offset: 896)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "enable_1pass_quant", scope: !295, file: !4, line: 432, baseType: !250, size: 32, offset: 928)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "enable_external_quant", scope: !295, file: !4, line: 433, baseType: !250, size: 32, offset: 960)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "enable_2pass_quant", scope: !295, file: !4, line: 434, baseType: !250, size: 32, offset: 992)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "output_width", scope: !295, file: !4, line: 442, baseType: !228, size: 32, offset: 1024)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "output_height", scope: !295, file: !4, line: 443, baseType: !228, size: 32, offset: 1056)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "out_color_components", scope: !295, file: !4, line: 444, baseType: !171, size: 32, offset: 1088)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "output_components", scope: !295, file: !4, line: 445, baseType: !171, size: 32, offset: 1120)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "rec_outbuf_height", scope: !295, file: !4, line: 449, baseType: !171, size: 32, offset: 1152)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "actual_number_of_colors", scope: !295, file: !4, line: 461, baseType: !171, size: 32, offset: 1184)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "colormap", scope: !295, file: !4, line: 462, baseType: !221, size: 64, offset: 1216)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "output_scanline", scope: !295, file: !4, line: 472, baseType: !228, size: 32, offset: 1280)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "input_scan_number", scope: !295, file: !4, line: 477, baseType: !171, size: 32, offset: 1312)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "input_iMCU_row", scope: !295, file: !4, line: 478, baseType: !228, size: 32, offset: 1344)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "output_scan_number", scope: !295, file: !4, line: 484, baseType: !171, size: 32, offset: 1376)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "output_iMCU_row", scope: !295, file: !4, line: 485, baseType: !228, size: 32, offset: 1408)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "coef_bits", scope: !295, file: !4, line: 494, baseType: !362, size: 64, offset: 1472)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 2048, elements: !241)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "quant_tbl_ptrs", scope: !295, file: !4, line: 505, baseType: !365, size: 256, offset: 1536)
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
!377 = !DIDerivedType(tag: DW_TAG_member, name: "dc_huff_tbl_ptrs", scope: !295, file: !4, line: 508, baseType: !378, size: 256, offset: 1792)
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
!393 = !DIDerivedType(tag: DW_TAG_member, name: "ac_huff_tbl_ptrs", scope: !295, file: !4, line: 509, baseType: !378, size: 256, offset: 2048)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "data_precision", scope: !295, file: !4, line: 516, baseType: !171, size: 32, offset: 2304)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "comp_info", scope: !295, file: !4, line: 518, baseType: !396, size: 64, offset: 2368)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "jpeg_component_info", file: !4, line: 179, baseType: !398)
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 116, size: 768, elements: !399)
!399 = !{!400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "component_id", scope: !398, file: !4, line: 120, baseType: !171, size: 32)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "component_index", scope: !398, file: !4, line: 121, baseType: !171, size: 32, offset: 32)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "h_samp_factor", scope: !398, file: !4, line: 122, baseType: !171, size: 32, offset: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "v_samp_factor", scope: !398, file: !4, line: 123, baseType: !171, size: 32, offset: 96)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "quant_tbl_no", scope: !398, file: !4, line: 124, baseType: !171, size: 32, offset: 128)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "dc_tbl_no", scope: !398, file: !4, line: 129, baseType: !171, size: 32, offset: 160)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tbl_no", scope: !398, file: !4, line: 130, baseType: !171, size: 32, offset: 192)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "width_in_blocks", scope: !398, file: !4, line: 139, baseType: !228, size: 32, offset: 224)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "height_in_blocks", scope: !398, file: !4, line: 140, baseType: !228, size: 32, offset: 256)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "DCT_scaled_size", scope: !398, file: !4, line: 147, baseType: !171, size: 32, offset: 288)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "downsampled_width", scope: !398, file: !4, line: 154, baseType: !228, size: 32, offset: 320)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "downsampled_height", scope: !398, file: !4, line: 155, baseType: !228, size: 32, offset: 352)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "component_needed", scope: !398, file: !4, line: 160, baseType: !250, size: 32, offset: 384)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_width", scope: !398, file: !4, line: 164, baseType: !171, size: 32, offset: 416)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_height", scope: !398, file: !4, line: 165, baseType: !171, size: 32, offset: 448)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_blocks", scope: !398, file: !4, line: 166, baseType: !171, size: 32, offset: 480)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_sample_width", scope: !398, file: !4, line: 167, baseType: !171, size: 32, offset: 512)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "last_col_width", scope: !398, file: !4, line: 168, baseType: !171, size: 32, offset: 544)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "last_row_height", scope: !398, file: !4, line: 169, baseType: !171, size: 32, offset: 576)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "quant_table", scope: !398, file: !4, line: 175, baseType: !366, size: 64, offset: 640)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "dct_table", scope: !398, file: !4, line: 178, baseType: !212, size: 64, offset: 704)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "progressive_mode", scope: !295, file: !4, line: 521, baseType: !250, size: 32, offset: 2432)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "arith_code", scope: !295, file: !4, line: 522, baseType: !250, size: 32, offset: 2464)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "arith_dc_L", scope: !295, file: !4, line: 524, baseType: !424, size: 128, offset: 2496)
!424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !385, size: 128, elements: !425)
!425 = !{!426}
!426 = !DISubrange(count: 16)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "arith_dc_U", scope: !295, file: !4, line: 525, baseType: !424, size: 128, offset: 2624)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "arith_ac_K", scope: !295, file: !4, line: 526, baseType: !424, size: 128, offset: 2752)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "restart_interval", scope: !295, file: !4, line: 528, baseType: !5, size: 32, offset: 2880)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "saw_JFIF_marker", scope: !295, file: !4, line: 533, baseType: !250, size: 32, offset: 2912)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "density_unit", scope: !295, file: !4, line: 535, baseType: !385, size: 8, offset: 2944)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "X_density", scope: !295, file: !4, line: 536, baseType: !372, size: 16, offset: 2960)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "Y_density", scope: !295, file: !4, line: 537, baseType: !372, size: 16, offset: 2976)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "saw_Adobe_marker", scope: !295, file: !4, line: 538, baseType: !250, size: 32, offset: 3008)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "Adobe_transform", scope: !295, file: !4, line: 539, baseType: !385, size: 8, offset: 3040)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "CCIR601_sampling", scope: !295, file: !4, line: 541, baseType: !250, size: 32, offset: 3072)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "max_h_samp_factor", scope: !295, file: !4, line: 550, baseType: !171, size: 32, offset: 3104)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "max_v_samp_factor", scope: !295, file: !4, line: 551, baseType: !171, size: 32, offset: 3136)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "min_DCT_scaled_size", scope: !295, file: !4, line: 553, baseType: !171, size: 32, offset: 3168)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "total_iMCU_rows", scope: !295, file: !4, line: 555, baseType: !228, size: 32, offset: 3200)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "sample_range_limit", scope: !295, file: !4, line: 564, baseType: !224, size: 64, offset: 3264)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "comps_in_scan", scope: !295, file: !4, line: 571, baseType: !171, size: 32, offset: 3328)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "cur_comp_info", scope: !295, file: !4, line: 572, baseType: !444, size: 256, offset: 3392)
!444 = !DICompositeType(tag: DW_TAG_array_type, baseType: !396, size: 256, elements: !375)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "MCUs_per_row", scope: !295, file: !4, line: 575, baseType: !228, size: 32, offset: 3648)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_rows_in_scan", scope: !295, file: !4, line: 576, baseType: !228, size: 32, offset: 3680)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "blocks_in_MCU", scope: !295, file: !4, line: 578, baseType: !171, size: 32, offset: 3712)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_membership", scope: !295, file: !4, line: 579, baseType: !449, size: 320, offset: 3744)
!449 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 320, elements: !450)
!450 = !{!451}
!451 = !DISubrange(count: 10)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "Ss", scope: !295, file: !4, line: 583, baseType: !171, size: 32, offset: 4064)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "Se", scope: !295, file: !4, line: 583, baseType: !171, size: 32, offset: 4096)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "Ah", scope: !295, file: !4, line: 583, baseType: !171, size: 32, offset: 4128)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "Al", scope: !295, file: !4, line: 583, baseType: !171, size: 32, offset: 4160)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "unread_marker", scope: !295, file: !4, line: 589, baseType: !171, size: 32, offset: 4192)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !295, file: !4, line: 594, baseType: !458, size: 64, offset: 4224)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "main", scope: !295, file: !4, line: 595, baseType: !460, size: 64, offset: 4288)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_d_main_controller", file: !24, line: 157, size: 128, elements: !462)
!462 = !{!463, !468}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !461, file: !24, line: 158, baseType: !464, size: 64)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = !DISubroutineType(types: !466)
!466 = !{null, !293, !467}
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_BUF_MODE", file: !24, line: 22, baseType: !23)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "process_data", scope: !461, file: !24, line: 159, baseType: !469, size: 64, offset: 64)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = !DISubroutineType(types: !471)
!471 = !{null, !293, !221, !472, !228}
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "coef", scope: !295, file: !4, line: 596, baseType: !474, size: 64, offset: 4352)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_d_coef_controller", file: !24, line: 165, size: 320, elements: !476)
!476 = !{!477, !478, !482, !483, !489}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "start_input_pass", scope: !475, file: !24, line: 166, baseType: !290, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "consume_data", scope: !475, file: !24, line: 167, baseType: !479, size: 64, offset: 64)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DISubroutineType(types: !481)
!481 = !{!171, !293}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "start_output_pass", scope: !475, file: !24, line: 168, baseType: !290, size: 64, offset: 128)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "decompress_data", scope: !475, file: !24, line: 169, baseType: !484, size: 64, offset: 192)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = !DISubroutineType(types: !486)
!486 = !{!171, !293, !487}
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPIMAGE", file: !4, line: 68, baseType: !488)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "coef_arrays", scope: !475, file: !24, line: 172, baseType: !490, size: 64, offset: 256)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "post", scope: !295, file: !4, line: 597, baseType: !492, size: 64, offset: 4416)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_d_post_controller", file: !24, line: 176, size: 128, elements: !494)
!494 = !{!495, !496}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !493, file: !24, line: 177, baseType: !464, size: 64)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "post_process_data", scope: !493, file: !24, line: 178, baseType: !497, size: 64, offset: 64)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = !DISubroutineType(types: !499)
!499 = !{null, !293, !487, !472, !228, !221, !472, !228}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "inputctl", scope: !295, file: !4, line: 598, baseType: !501, size: 64, offset: 4480)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_input_controller", file: !24, line: 145, size: 320, elements: !503)
!503 = !{!504, !505, !506, !507, !508, !509}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "consume_input", scope: !502, file: !24, line: 146, baseType: !479, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "reset_input_controller", scope: !502, file: !24, line: 147, baseType: !290, size: 64, offset: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "start_input_pass", scope: !502, file: !24, line: 148, baseType: !290, size: 64, offset: 128)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "finish_input_pass", scope: !502, file: !24, line: 149, baseType: !290, size: 64, offset: 192)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "has_multiple_scans", scope: !502, file: !24, line: 152, baseType: !250, size: 32, offset: 256)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "eoi_reached", scope: !502, file: !24, line: 153, baseType: !250, size: 32, offset: 288)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "marker", scope: !295, file: !4, line: 599, baseType: !511, size: 64, offset: 4544)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_marker_reader", file: !24, line: 188, size: 1408, elements: !513)
!513 = !{!514, !515, !516, !518, !519, !521, !522, !523, !524}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "reset_marker_reader", scope: !512, file: !24, line: 189, baseType: !290, size: 64)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "read_markers", scope: !512, file: !24, line: 194, baseType: !479, size: 64, offset: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "read_restart_marker", scope: !512, file: !24, line: 196, baseType: !517, size: 64, offset: 128)
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "jpeg_marker_parser_method", file: !4, line: 781, baseType: !313)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "process_COM", scope: !512, file: !24, line: 198, baseType: !517, size: 64, offset: 192)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "process_APPn", scope: !512, file: !24, line: 199, baseType: !520, size: 1024, offset: 256)
!520 = !DICompositeType(tag: DW_TAG_array_type, baseType: !517, size: 1024, elements: !425)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "saw_SOI", scope: !512, file: !24, line: 204, baseType: !250, size: 32, offset: 1280)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "saw_SOF", scope: !512, file: !24, line: 205, baseType: !250, size: 32, offset: 1312)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "next_restart_num", scope: !512, file: !24, line: 206, baseType: !171, size: 32, offset: 1344)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "discarded_bytes", scope: !512, file: !24, line: 207, baseType: !5, size: 32, offset: 1376)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "entropy", scope: !295, file: !4, line: 600, baseType: !526, size: 64, offset: 4608)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_entropy_decoder", file: !24, line: 211, size: 128, elements: !528)
!528 = !{!529, !530}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !527, file: !24, line: 212, baseType: !290, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "decode_mcu", scope: !527, file: !24, line: 213, baseType: !531, size: 64, offset: 64)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = !DISubroutineType(types: !533)
!533 = !{!250, !293, !234}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "idct", scope: !295, file: !4, line: 601, baseType: !535, size: 64, offset: 4672)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_inverse_dct", file: !24, line: 223, size: 704, elements: !537)
!537 = !{!538, !539}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !536, file: !24, line: 224, baseType: !290, size: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "inverse_DCT", scope: !536, file: !24, line: 226, baseType: !540, size: 640, offset: 64)
!540 = !DICompositeType(tag: DW_TAG_array_type, baseType: !541, size: 640, elements: !450)
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "inverse_DCT_method_ptr", file: !24, line: 218, baseType: !542)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = !DISubroutineType(types: !544)
!544 = !{null, !293, !396, !545, !221, !228}
!545 = !DIDerivedType(tag: DW_TAG_typedef, name: "JCOEFPTR", file: !4, line: 75, baseType: !546)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "upsample", scope: !295, file: !4, line: 602, baseType: !548, size: 64, offset: 4736)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_upsampler", file: !24, line: 230, size: 192, elements: !550)
!550 = !{!551, !552, !553}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !549, file: !24, line: 231, baseType: !290, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "upsample", scope: !549, file: !24, line: 232, baseType: !497, size: 64, offset: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "need_context_rows", scope: !549, file: !24, line: 240, baseType: !250, size: 32, offset: 128)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "cconvert", scope: !295, file: !4, line: 603, baseType: !555, size: 64, offset: 4800)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_color_deconverter", file: !24, line: 244, size: 128, elements: !557)
!557 = !{!558, !559}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !556, file: !24, line: 245, baseType: !290, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "color_convert", scope: !556, file: !24, line: 246, baseType: !560, size: 64, offset: 64)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = !DISubroutineType(types: !562)
!562 = !{null, !293, !487, !228, !221, !171}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "cquantize", scope: !295, file: !4, line: 604, baseType: !564, size: 64, offset: 4864)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_color_quantizer", file: !24, line: 252, size: 256, elements: !566)
!566 = !{!567, !571, !575, !576}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !565, file: !24, line: 253, baseType: !568, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DISubroutineType(types: !570)
!570 = !{null, !293, !250}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "color_quantize", scope: !565, file: !24, line: 254, baseType: !572, size: 64, offset: 64)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DISubroutineType(types: !574)
!574 = !{null, !293, !221, !221, !171}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "finish_pass", scope: !565, file: !24, line: 257, baseType: !290, size: 64, offset: 128)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "new_color_map", scope: !565, file: !24, line: 258, baseType: !290, size: 64, offset: 192)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "finish_output_pass", scope: !287, file: !24, line: 138, baseType: !290, size: 64, offset: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "is_dummy_pass", scope: !287, file: !24, line: 141, baseType: !250, size: 32, offset: 128)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !284, file: !1, line: 24, baseType: !171, size: 32, offset: 192)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "using_merged_upsample", scope: !284, file: !1, line: 26, baseType: !250, size: 32, offset: 224)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "quantizer_1pass", scope: !284, file: !1, line: 31, baseType: !564, size: 64, offset: 256)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "quantizer_2pass", scope: !284, file: !1, line: 32, baseType: !564, size: 64, offset: 320)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!585 = !{i32 7, !"Dwarf Version", i32 5}
!586 = !{i32 2, !"Debug Info Version", i32 3}
!587 = !{i32 1, !"wchar_size", i32 4}
!588 = !{i32 8, !"PIC Level", i32 2}
!589 = !{i32 7, !"PIE Level", i32 2}
!590 = !{i32 7, !"uwtable", i32 2}
!591 = !{i32 7, !"frame-pointer", i32 2}
!592 = !{!"clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)"}
!593 = distinct !DISubprogram(name: "jpeg_calc_output_dimensions", scope: !1, file: !1, line: 84, type: !291, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !594)
!594 = !{}
!595 = !DILocalVariable(name: "cinfo", arg: 1, scope: !593, file: !1, line: 84, type: !293)
!596 = !DILocation(line: 84, column: 47, scope: !593)
!597 = !DILocalVariable(name: "ci", scope: !593, file: !1, line: 87, type: !171)
!598 = !DILocation(line: 87, column: 7, scope: !593)
!599 = !DILocalVariable(name: "compptr", scope: !593, file: !1, line: 88, type: !396)
!600 = !DILocation(line: 88, column: 24, scope: !593)
!601 = !DILocation(line: 91, column: 7, scope: !602)
!602 = distinct !DILexicalBlock(scope: !593, file: !1, line: 91, column: 7)
!603 = !DILocation(line: 91, column: 14, scope: !602)
!604 = !DILocation(line: 91, column: 27, scope: !602)
!605 = !DILocation(line: 92, column: 5, scope: !602)
!606 = !DILocation(line: 97, column: 7, scope: !607)
!607 = distinct !DILexicalBlock(scope: !593, file: !1, line: 97, column: 7)
!608 = !DILocation(line: 97, column: 14, scope: !607)
!609 = !DILocation(line: 97, column: 24, scope: !607)
!610 = !DILocation(line: 97, column: 31, scope: !607)
!611 = !DILocation(line: 97, column: 38, scope: !607)
!612 = !DILocation(line: 97, column: 28, scope: !607)
!613 = !DILocation(line: 100, column: 28, scope: !614)
!614 = distinct !DILexicalBlock(scope: !607, file: !1, line: 97, column: 51)
!615 = !DILocation(line: 100, column: 35, scope: !614)
!616 = !DILocation(line: 100, column: 21, scope: !614)
!617 = !DILocation(line: 100, column: 7, scope: !614)
!618 = !DILocation(line: 99, column: 27, scope: !614)
!619 = !DILocation(line: 99, column: 5, scope: !614)
!620 = !DILocation(line: 99, column: 12, scope: !614)
!621 = !DILocation(line: 99, column: 25, scope: !614)
!622 = !DILocation(line: 102, column: 28, scope: !614)
!623 = !DILocation(line: 102, column: 35, scope: !614)
!624 = !DILocation(line: 102, column: 21, scope: !614)
!625 = !DILocation(line: 102, column: 7, scope: !614)
!626 = !DILocation(line: 101, column: 28, scope: !614)
!627 = !DILocation(line: 101, column: 5, scope: !614)
!628 = !DILocation(line: 101, column: 12, scope: !614)
!629 = !DILocation(line: 101, column: 26, scope: !614)
!630 = !DILocation(line: 103, column: 5, scope: !614)
!631 = !DILocation(line: 103, column: 12, scope: !614)
!632 = !DILocation(line: 103, column: 32, scope: !614)
!633 = !DILocation(line: 104, column: 3, scope: !614)
!634 = !DILocation(line: 104, column: 14, scope: !635)
!635 = distinct !DILexicalBlock(scope: !607, file: !1, line: 104, column: 14)
!636 = !DILocation(line: 104, column: 21, scope: !635)
!637 = !DILocation(line: 104, column: 31, scope: !635)
!638 = !DILocation(line: 104, column: 38, scope: !635)
!639 = !DILocation(line: 104, column: 45, scope: !635)
!640 = !DILocation(line: 104, column: 35, scope: !635)
!641 = !DILocation(line: 107, column: 28, scope: !642)
!642 = distinct !DILexicalBlock(scope: !635, file: !1, line: 104, column: 58)
!643 = !DILocation(line: 107, column: 35, scope: !642)
!644 = !DILocation(line: 107, column: 21, scope: !642)
!645 = !DILocation(line: 107, column: 7, scope: !642)
!646 = !DILocation(line: 106, column: 27, scope: !642)
!647 = !DILocation(line: 106, column: 5, scope: !642)
!648 = !DILocation(line: 106, column: 12, scope: !642)
!649 = !DILocation(line: 106, column: 25, scope: !642)
!650 = !DILocation(line: 109, column: 28, scope: !642)
!651 = !DILocation(line: 109, column: 35, scope: !642)
!652 = !DILocation(line: 109, column: 21, scope: !642)
!653 = !DILocation(line: 109, column: 7, scope: !642)
!654 = !DILocation(line: 108, column: 28, scope: !642)
!655 = !DILocation(line: 108, column: 5, scope: !642)
!656 = !DILocation(line: 108, column: 12, scope: !642)
!657 = !DILocation(line: 108, column: 26, scope: !642)
!658 = !DILocation(line: 110, column: 5, scope: !642)
!659 = !DILocation(line: 110, column: 12, scope: !642)
!660 = !DILocation(line: 110, column: 32, scope: !642)
!661 = !DILocation(line: 111, column: 3, scope: !642)
!662 = !DILocation(line: 111, column: 14, scope: !663)
!663 = distinct !DILexicalBlock(scope: !635, file: !1, line: 111, column: 14)
!664 = !DILocation(line: 111, column: 21, scope: !663)
!665 = !DILocation(line: 111, column: 31, scope: !663)
!666 = !DILocation(line: 111, column: 38, scope: !663)
!667 = !DILocation(line: 111, column: 45, scope: !663)
!668 = !DILocation(line: 111, column: 35, scope: !663)
!669 = !DILocation(line: 114, column: 28, scope: !670)
!670 = distinct !DILexicalBlock(scope: !663, file: !1, line: 111, column: 58)
!671 = !DILocation(line: 114, column: 35, scope: !670)
!672 = !DILocation(line: 114, column: 21, scope: !670)
!673 = !DILocation(line: 114, column: 7, scope: !670)
!674 = !DILocation(line: 113, column: 27, scope: !670)
!675 = !DILocation(line: 113, column: 5, scope: !670)
!676 = !DILocation(line: 113, column: 12, scope: !670)
!677 = !DILocation(line: 113, column: 25, scope: !670)
!678 = !DILocation(line: 116, column: 28, scope: !670)
!679 = !DILocation(line: 116, column: 35, scope: !670)
!680 = !DILocation(line: 116, column: 21, scope: !670)
!681 = !DILocation(line: 116, column: 7, scope: !670)
!682 = !DILocation(line: 115, column: 28, scope: !670)
!683 = !DILocation(line: 115, column: 5, scope: !670)
!684 = !DILocation(line: 115, column: 12, scope: !670)
!685 = !DILocation(line: 115, column: 26, scope: !670)
!686 = !DILocation(line: 117, column: 5, scope: !670)
!687 = !DILocation(line: 117, column: 12, scope: !670)
!688 = !DILocation(line: 117, column: 32, scope: !670)
!689 = !DILocation(line: 118, column: 3, scope: !670)
!690 = !DILocation(line: 120, column: 27, scope: !691)
!691 = distinct !DILexicalBlock(scope: !663, file: !1, line: 118, column: 10)
!692 = !DILocation(line: 120, column: 34, scope: !691)
!693 = !DILocation(line: 120, column: 5, scope: !691)
!694 = !DILocation(line: 120, column: 12, scope: !691)
!695 = !DILocation(line: 120, column: 25, scope: !691)
!696 = !DILocation(line: 121, column: 28, scope: !691)
!697 = !DILocation(line: 121, column: 35, scope: !691)
!698 = !DILocation(line: 121, column: 5, scope: !691)
!699 = !DILocation(line: 121, column: 12, scope: !691)
!700 = !DILocation(line: 121, column: 26, scope: !691)
!701 = !DILocation(line: 122, column: 5, scope: !691)
!702 = !DILocation(line: 122, column: 12, scope: !691)
!703 = !DILocation(line: 122, column: 32, scope: !691)
!704 = !DILocation(line: 129, column: 11, scope: !705)
!705 = distinct !DILexicalBlock(scope: !593, file: !1, line: 129, column: 3)
!706 = !DILocation(line: 129, column: 26, scope: !705)
!707 = !DILocation(line: 129, column: 33, scope: !705)
!708 = !DILocation(line: 129, column: 24, scope: !705)
!709 = !DILocation(line: 129, column: 8, scope: !705)
!710 = !DILocation(line: 129, column: 44, scope: !711)
!711 = distinct !DILexicalBlock(scope: !705, file: !1, line: 129, column: 3)
!712 = !DILocation(line: 129, column: 49, scope: !711)
!713 = !DILocation(line: 129, column: 56, scope: !711)
!714 = !DILocation(line: 129, column: 47, scope: !711)
!715 = !DILocation(line: 129, column: 3, scope: !705)
!716 = !DILocalVariable(name: "ssize", scope: !717, file: !1, line: 131, type: !171)
!717 = distinct !DILexicalBlock(scope: !711, file: !1, line: 130, column: 25)
!718 = !DILocation(line: 131, column: 9, scope: !717)
!719 = !DILocation(line: 131, column: 17, scope: !717)
!720 = !DILocation(line: 131, column: 24, scope: !717)
!721 = !DILocation(line: 132, column: 5, scope: !717)
!722 = !DILocation(line: 132, column: 12, scope: !717)
!723 = !DILocation(line: 132, column: 18, scope: !717)
!724 = !DILocation(line: 132, column: 28, scope: !717)
!725 = !DILocation(line: 133, column: 6, scope: !717)
!726 = !DILocation(line: 133, column: 15, scope: !717)
!727 = !DILocation(line: 133, column: 31, scope: !717)
!728 = !DILocation(line: 133, column: 29, scope: !717)
!729 = !DILocation(line: 133, column: 37, scope: !717)
!730 = !DILocation(line: 134, column: 6, scope: !717)
!731 = !DILocation(line: 134, column: 13, scope: !717)
!732 = !DILocation(line: 134, column: 33, scope: !717)
!733 = !DILocation(line: 134, column: 40, scope: !717)
!734 = !DILocation(line: 134, column: 31, scope: !717)
!735 = !DILocation(line: 133, column: 41, scope: !717)
!736 = !DILocation(line: 134, column: 61, scope: !717)
!737 = !DILocation(line: 135, column: 6, scope: !717)
!738 = !DILocation(line: 135, column: 15, scope: !717)
!739 = !DILocation(line: 135, column: 31, scope: !717)
!740 = !DILocation(line: 135, column: 29, scope: !717)
!741 = !DILocation(line: 135, column: 37, scope: !717)
!742 = !DILocation(line: 136, column: 6, scope: !717)
!743 = !DILocation(line: 136, column: 13, scope: !717)
!744 = !DILocation(line: 136, column: 33, scope: !717)
!745 = !DILocation(line: 136, column: 40, scope: !717)
!746 = !DILocation(line: 136, column: 31, scope: !717)
!747 = !DILocation(line: 135, column: 41, scope: !717)
!748 = !DILocation(line: 0, scope: !717)
!749 = !DILocation(line: 137, column: 15, scope: !750)
!750 = distinct !DILexicalBlock(scope: !717, file: !1, line: 136, column: 62)
!751 = !DILocation(line: 137, column: 21, scope: !750)
!752 = !DILocation(line: 137, column: 13, scope: !750)
!753 = distinct !{!753, !721, !754, !755}
!754 = !DILocation(line: 138, column: 5, scope: !717)
!755 = !{!"llvm.loop.mustprogress"}
!756 = !DILocation(line: 139, column: 32, scope: !717)
!757 = !DILocation(line: 139, column: 5, scope: !717)
!758 = !DILocation(line: 139, column: 14, scope: !717)
!759 = !DILocation(line: 139, column: 30, scope: !717)
!760 = !DILocation(line: 140, column: 3, scope: !717)
!761 = !DILocation(line: 130, column: 10, scope: !711)
!762 = !DILocation(line: 130, column: 21, scope: !711)
!763 = !DILocation(line: 129, column: 3, scope: !711)
!764 = distinct !{!764, !715, !765, !755}
!765 = !DILocation(line: 140, column: 3, scope: !705)
!766 = !DILocation(line: 145, column: 11, scope: !767)
!767 = distinct !DILexicalBlock(scope: !593, file: !1, line: 145, column: 3)
!768 = !DILocation(line: 145, column: 26, scope: !767)
!769 = !DILocation(line: 145, column: 33, scope: !767)
!770 = !DILocation(line: 145, column: 24, scope: !767)
!771 = !DILocation(line: 145, column: 8, scope: !767)
!772 = !DILocation(line: 145, column: 44, scope: !773)
!773 = distinct !DILexicalBlock(scope: !767, file: !1, line: 145, column: 3)
!774 = !DILocation(line: 145, column: 49, scope: !773)
!775 = !DILocation(line: 145, column: 56, scope: !773)
!776 = !DILocation(line: 145, column: 47, scope: !773)
!777 = !DILocation(line: 145, column: 3, scope: !767)
!778 = !DILocation(line: 149, column: 28, scope: !779)
!779 = distinct !DILexicalBlock(scope: !773, file: !1, line: 146, column: 25)
!780 = !DILocation(line: 149, column: 35, scope: !779)
!781 = !DILocation(line: 149, column: 21, scope: !779)
!782 = !DILocation(line: 150, column: 15, scope: !779)
!783 = !DILocation(line: 150, column: 24, scope: !779)
!784 = !DILocation(line: 150, column: 40, scope: !779)
!785 = !DILocation(line: 150, column: 49, scope: !779)
!786 = !DILocation(line: 150, column: 38, scope: !779)
!787 = !DILocation(line: 150, column: 7, scope: !779)
!788 = !DILocation(line: 149, column: 47, scope: !779)
!789 = !DILocation(line: 151, column: 15, scope: !779)
!790 = !DILocation(line: 151, column: 22, scope: !779)
!791 = !DILocation(line: 151, column: 40, scope: !779)
!792 = !DILocation(line: 151, column: 7, scope: !779)
!793 = !DILocation(line: 149, column: 7, scope: !779)
!794 = !DILocation(line: 148, column: 34, scope: !779)
!795 = !DILocation(line: 148, column: 5, scope: !779)
!796 = !DILocation(line: 148, column: 14, scope: !779)
!797 = !DILocation(line: 148, column: 32, scope: !779)
!798 = !DILocation(line: 153, column: 28, scope: !779)
!799 = !DILocation(line: 153, column: 35, scope: !779)
!800 = !DILocation(line: 153, column: 21, scope: !779)
!801 = !DILocation(line: 154, column: 15, scope: !779)
!802 = !DILocation(line: 154, column: 24, scope: !779)
!803 = !DILocation(line: 154, column: 40, scope: !779)
!804 = !DILocation(line: 154, column: 49, scope: !779)
!805 = !DILocation(line: 154, column: 38, scope: !779)
!806 = !DILocation(line: 154, column: 7, scope: !779)
!807 = !DILocation(line: 153, column: 48, scope: !779)
!808 = !DILocation(line: 155, column: 15, scope: !779)
!809 = !DILocation(line: 155, column: 22, scope: !779)
!810 = !DILocation(line: 155, column: 40, scope: !779)
!811 = !DILocation(line: 155, column: 7, scope: !779)
!812 = !DILocation(line: 153, column: 7, scope: !779)
!813 = !DILocation(line: 152, column: 35, scope: !779)
!814 = !DILocation(line: 152, column: 5, scope: !779)
!815 = !DILocation(line: 152, column: 14, scope: !779)
!816 = !DILocation(line: 152, column: 33, scope: !779)
!817 = !DILocation(line: 156, column: 3, scope: !779)
!818 = !DILocation(line: 146, column: 10, scope: !773)
!819 = !DILocation(line: 146, column: 21, scope: !773)
!820 = !DILocation(line: 145, column: 3, scope: !773)
!821 = distinct !{!821, !777, !822, !755}
!822 = !DILocation(line: 156, column: 3, scope: !767)
!823 = !DILocation(line: 171, column: 11, scope: !593)
!824 = !DILocation(line: 171, column: 18, scope: !593)
!825 = !DILocation(line: 171, column: 3, scope: !593)
!826 = !DILocation(line: 173, column: 5, scope: !827)
!827 = distinct !DILexicalBlock(scope: !593, file: !1, line: 171, column: 35)
!828 = !DILocation(line: 173, column: 12, scope: !827)
!829 = !DILocation(line: 173, column: 33, scope: !827)
!830 = !DILocation(line: 174, column: 5, scope: !827)
!831 = !DILocation(line: 181, column: 5, scope: !827)
!832 = !DILocation(line: 181, column: 12, scope: !827)
!833 = !DILocation(line: 181, column: 33, scope: !827)
!834 = !DILocation(line: 182, column: 5, scope: !827)
!835 = !DILocation(line: 185, column: 5, scope: !827)
!836 = !DILocation(line: 185, column: 12, scope: !827)
!837 = !DILocation(line: 185, column: 33, scope: !827)
!838 = !DILocation(line: 186, column: 5, scope: !827)
!839 = !DILocation(line: 188, column: 35, scope: !827)
!840 = !DILocation(line: 188, column: 42, scope: !827)
!841 = !DILocation(line: 188, column: 5, scope: !827)
!842 = !DILocation(line: 188, column: 12, scope: !827)
!843 = !DILocation(line: 188, column: 33, scope: !827)
!844 = !DILocation(line: 189, column: 5, scope: !827)
!845 = !DILocation(line: 191, column: 31, scope: !593)
!846 = !DILocation(line: 191, column: 38, scope: !593)
!847 = !DILocation(line: 192, column: 10, scope: !593)
!848 = !DILocation(line: 192, column: 17, scope: !593)
!849 = !DILocation(line: 191, column: 3, scope: !593)
!850 = !DILocation(line: 191, column: 10, scope: !593)
!851 = !DILocation(line: 191, column: 28, scope: !593)
!852 = !DILocation(line: 195, column: 27, scope: !853)
!853 = distinct !DILexicalBlock(scope: !593, file: !1, line: 195, column: 7)
!854 = !DILocation(line: 195, column: 7, scope: !853)
!855 = !DILocation(line: 196, column: 32, scope: !853)
!856 = !DILocation(line: 196, column: 39, scope: !853)
!857 = !DILocation(line: 196, column: 5, scope: !853)
!858 = !DILocation(line: 196, column: 12, scope: !853)
!859 = !DILocation(line: 196, column: 30, scope: !853)
!860 = !DILocation(line: 198, column: 5, scope: !853)
!861 = !DILocation(line: 198, column: 12, scope: !853)
!862 = !DILocation(line: 198, column: 30, scope: !853)
!863 = !DILocation(line: 199, column: 1, scope: !593)
!864 = distinct !DISubprogram(name: "use_merged_upsample", scope: !1, file: !1, line: 44, type: !314, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !594)
!865 = !DILocalVariable(name: "cinfo", arg: 1, scope: !864, file: !1, line: 44, type: !293)
!866 = !DILocation(line: 44, column: 39, scope: !864)
!867 = !DILocation(line: 48, column: 7, scope: !868)
!868 = distinct !DILexicalBlock(scope: !864, file: !1, line: 48, column: 7)
!869 = !DILocation(line: 48, column: 14, scope: !868)
!870 = !DILocation(line: 48, column: 34, scope: !868)
!871 = !DILocation(line: 48, column: 37, scope: !868)
!872 = !DILocation(line: 48, column: 44, scope: !868)
!873 = !DILocation(line: 49, column: 5, scope: !868)
!874 = !DILocation(line: 51, column: 7, scope: !875)
!875 = distinct !DILexicalBlock(scope: !864, file: !1, line: 51, column: 7)
!876 = !DILocation(line: 51, column: 14, scope: !875)
!877 = !DILocation(line: 51, column: 31, scope: !875)
!878 = !DILocation(line: 51, column: 44, scope: !875)
!879 = !DILocation(line: 51, column: 47, scope: !875)
!880 = !DILocation(line: 51, column: 54, scope: !875)
!881 = !DILocation(line: 51, column: 69, scope: !875)
!882 = !DILocation(line: 51, column: 74, scope: !875)
!883 = !DILocation(line: 52, column: 7, scope: !875)
!884 = !DILocation(line: 52, column: 14, scope: !875)
!885 = !DILocation(line: 52, column: 30, scope: !875)
!886 = !DILocation(line: 52, column: 41, scope: !875)
!887 = !DILocation(line: 53, column: 7, scope: !875)
!888 = !DILocation(line: 53, column: 14, scope: !875)
!889 = !DILocation(line: 53, column: 35, scope: !875)
!890 = !DILocation(line: 54, column: 5, scope: !875)
!891 = !DILocation(line: 56, column: 7, scope: !892)
!892 = distinct !DILexicalBlock(scope: !864, file: !1, line: 56, column: 7)
!893 = !DILocation(line: 56, column: 14, scope: !892)
!894 = !DILocation(line: 56, column: 27, scope: !892)
!895 = !DILocation(line: 56, column: 41, scope: !892)
!896 = !DILocation(line: 56, column: 46, scope: !892)
!897 = !DILocation(line: 57, column: 7, scope: !892)
!898 = !DILocation(line: 57, column: 14, scope: !892)
!899 = !DILocation(line: 57, column: 27, scope: !892)
!900 = !DILocation(line: 57, column: 41, scope: !892)
!901 = !DILocation(line: 57, column: 46, scope: !892)
!902 = !DILocation(line: 58, column: 7, scope: !892)
!903 = !DILocation(line: 58, column: 14, scope: !892)
!904 = !DILocation(line: 58, column: 27, scope: !892)
!905 = !DILocation(line: 58, column: 41, scope: !892)
!906 = !DILocation(line: 58, column: 46, scope: !892)
!907 = !DILocation(line: 59, column: 7, scope: !892)
!908 = !DILocation(line: 59, column: 14, scope: !892)
!909 = !DILocation(line: 59, column: 27, scope: !892)
!910 = !DILocation(line: 59, column: 41, scope: !892)
!911 = !DILocation(line: 59, column: 46, scope: !892)
!912 = !DILocation(line: 60, column: 7, scope: !892)
!913 = !DILocation(line: 60, column: 14, scope: !892)
!914 = !DILocation(line: 60, column: 27, scope: !892)
!915 = !DILocation(line: 60, column: 41, scope: !892)
!916 = !DILocation(line: 60, column: 46, scope: !892)
!917 = !DILocation(line: 61, column: 7, scope: !892)
!918 = !DILocation(line: 61, column: 14, scope: !892)
!919 = !DILocation(line: 61, column: 27, scope: !892)
!920 = !DILocation(line: 61, column: 41, scope: !892)
!921 = !DILocation(line: 62, column: 5, scope: !892)
!922 = !DILocation(line: 64, column: 7, scope: !923)
!923 = distinct !DILexicalBlock(scope: !864, file: !1, line: 64, column: 7)
!924 = !DILocation(line: 64, column: 14, scope: !923)
!925 = !DILocation(line: 64, column: 27, scope: !923)
!926 = !DILocation(line: 64, column: 46, scope: !923)
!927 = !DILocation(line: 64, column: 53, scope: !923)
!928 = !DILocation(line: 64, column: 43, scope: !923)
!929 = !DILocation(line: 64, column: 73, scope: !923)
!930 = !DILocation(line: 65, column: 7, scope: !923)
!931 = !DILocation(line: 65, column: 14, scope: !923)
!932 = !DILocation(line: 65, column: 27, scope: !923)
!933 = !DILocation(line: 65, column: 46, scope: !923)
!934 = !DILocation(line: 65, column: 53, scope: !923)
!935 = !DILocation(line: 65, column: 43, scope: !923)
!936 = !DILocation(line: 65, column: 73, scope: !923)
!937 = !DILocation(line: 66, column: 7, scope: !923)
!938 = !DILocation(line: 66, column: 14, scope: !923)
!939 = !DILocation(line: 66, column: 27, scope: !923)
!940 = !DILocation(line: 66, column: 46, scope: !923)
!941 = !DILocation(line: 66, column: 53, scope: !923)
!942 = !DILocation(line: 66, column: 43, scope: !923)
!943 = !DILocation(line: 67, column: 5, scope: !923)
!944 = !DILocation(line: 69, column: 3, scope: !864)
!945 = !DILocation(line: 73, column: 1, scope: !864)
!946 = distinct !DISubprogram(name: "jpeg_new_colormap", scope: !1, file: !1, line: 513, type: !291, scopeLine: 514, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !594)
!947 = !DILocalVariable(name: "cinfo", arg: 1, scope: !946, file: !1, line: 513, type: !293)
!948 = !DILocation(line: 513, column: 37, scope: !946)
!949 = !DILocalVariable(name: "master", scope: !946, file: !1, line: 515, type: !281)
!950 = !DILocation(line: 515, column: 17, scope: !946)
!951 = !DILocation(line: 515, column: 42, scope: !946)
!952 = !DILocation(line: 515, column: 49, scope: !946)
!953 = !DILocation(line: 518, column: 7, scope: !954)
!954 = distinct !DILexicalBlock(scope: !946, file: !1, line: 518, column: 7)
!955 = !DILocation(line: 518, column: 14, scope: !954)
!956 = !DILocation(line: 518, column: 27, scope: !954)
!957 = !DILocation(line: 519, column: 5, scope: !954)
!958 = !DILocation(line: 521, column: 7, scope: !959)
!959 = distinct !DILexicalBlock(scope: !946, file: !1, line: 521, column: 7)
!960 = !DILocation(line: 521, column: 14, scope: !959)
!961 = !DILocation(line: 521, column: 30, scope: !959)
!962 = !DILocation(line: 521, column: 33, scope: !959)
!963 = !DILocation(line: 521, column: 40, scope: !959)
!964 = !DILocation(line: 521, column: 62, scope: !959)
!965 = !DILocation(line: 522, column: 7, scope: !959)
!966 = !DILocation(line: 522, column: 14, scope: !959)
!967 = !DILocation(line: 522, column: 23, scope: !959)
!968 = !DILocation(line: 524, column: 24, scope: !969)
!969 = distinct !DILexicalBlock(scope: !959, file: !1, line: 522, column: 32)
!970 = !DILocation(line: 524, column: 32, scope: !969)
!971 = !DILocation(line: 524, column: 5, scope: !969)
!972 = !DILocation(line: 524, column: 12, scope: !969)
!973 = !DILocation(line: 524, column: 22, scope: !969)
!974 = !DILocation(line: 526, column: 7, scope: !969)
!975 = !DILocation(line: 526, column: 14, scope: !969)
!976 = !DILocation(line: 526, column: 25, scope: !969)
!977 = !DILocation(line: 526, column: 41, scope: !969)
!978 = !DILocation(line: 526, column: 5, scope: !969)
!979 = !DILocation(line: 527, column: 5, scope: !969)
!980 = !DILocation(line: 527, column: 13, scope: !969)
!981 = !DILocation(line: 527, column: 17, scope: !969)
!982 = !DILocation(line: 527, column: 31, scope: !969)
!983 = !DILocation(line: 528, column: 3, scope: !969)
!984 = !DILocation(line: 529, column: 5, scope: !959)
!985 = !DILocation(line: 530, column: 1, scope: !946)
!986 = distinct !DISubprogram(name: "jinit_master_decompress", scope: !1, file: !1, line: 541, type: !291, scopeLine: 542, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !594)
!987 = !DILocalVariable(name: "cinfo", arg: 1, scope: !986, file: !1, line: 541, type: !293)
!988 = !DILocation(line: 541, column: 43, scope: !986)
!989 = !DILocalVariable(name: "master", scope: !986, file: !1, line: 543, type: !281)
!990 = !DILocation(line: 543, column: 17, scope: !986)
!991 = !DILocation(line: 546, column: 9, scope: !986)
!992 = !DILocation(line: 546, column: 16, scope: !986)
!993 = !DILocation(line: 546, column: 21, scope: !986)
!994 = !DILocation(line: 546, column: 50, scope: !986)
!995 = !DILocation(line: 546, column: 7, scope: !986)
!996 = !DILocation(line: 545, column: 10, scope: !986)
!997 = !DILocation(line: 548, column: 49, scope: !986)
!998 = !DILocation(line: 548, column: 3, scope: !986)
!999 = !DILocation(line: 548, column: 10, scope: !986)
!1000 = !DILocation(line: 548, column: 17, scope: !986)
!1001 = !DILocation(line: 549, column: 3, scope: !986)
!1002 = !DILocation(line: 549, column: 11, scope: !986)
!1003 = !DILocation(line: 549, column: 15, scope: !986)
!1004 = !DILocation(line: 549, column: 39, scope: !986)
!1005 = !DILocation(line: 550, column: 3, scope: !986)
!1006 = !DILocation(line: 550, column: 11, scope: !986)
!1007 = !DILocation(line: 550, column: 15, scope: !986)
!1008 = !DILocation(line: 550, column: 34, scope: !986)
!1009 = !DILocation(line: 552, column: 3, scope: !986)
!1010 = !DILocation(line: 552, column: 11, scope: !986)
!1011 = !DILocation(line: 552, column: 15, scope: !986)
!1012 = !DILocation(line: 552, column: 29, scope: !986)
!1013 = !DILocation(line: 554, column: 20, scope: !986)
!1014 = !DILocation(line: 554, column: 3, scope: !986)
!1015 = !DILocation(line: 555, column: 1, scope: !986)
!1016 = distinct !DISubprogram(name: "prepare_for_output_pass", scope: !1, file: !1, line: 436, type: !291, scopeLine: 437, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !594)
!1017 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1016, file: !1, line: 436, type: !293)
!1018 = !DILocation(line: 436, column: 43, scope: !1016)
!1019 = !DILocalVariable(name: "master", scope: !1016, file: !1, line: 438, type: !281)
!1020 = !DILocation(line: 438, column: 17, scope: !1016)
!1021 = !DILocation(line: 438, column: 42, scope: !1016)
!1022 = !DILocation(line: 438, column: 49, scope: !1016)
!1023 = !DILocation(line: 440, column: 7, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !1016, file: !1, line: 440, column: 7)
!1025 = !DILocation(line: 440, column: 15, scope: !1024)
!1026 = !DILocation(line: 440, column: 19, scope: !1024)
!1027 = !DILocation(line: 443, column: 5, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !1024, file: !1, line: 440, column: 34)
!1029 = !DILocation(line: 443, column: 13, scope: !1028)
!1030 = !DILocation(line: 443, column: 17, scope: !1028)
!1031 = !DILocation(line: 443, column: 31, scope: !1028)
!1032 = !DILocation(line: 444, column: 7, scope: !1028)
!1033 = !DILocation(line: 444, column: 14, scope: !1028)
!1034 = !DILocation(line: 444, column: 25, scope: !1028)
!1035 = !DILocation(line: 444, column: 38, scope: !1028)
!1036 = !DILocation(line: 444, column: 5, scope: !1028)
!1037 = !DILocation(line: 445, column: 7, scope: !1028)
!1038 = !DILocation(line: 445, column: 14, scope: !1028)
!1039 = !DILocation(line: 445, column: 20, scope: !1028)
!1040 = !DILocation(line: 445, column: 33, scope: !1028)
!1041 = !DILocation(line: 445, column: 5, scope: !1028)
!1042 = !DILocation(line: 446, column: 7, scope: !1028)
!1043 = !DILocation(line: 446, column: 14, scope: !1028)
!1044 = !DILocation(line: 446, column: 20, scope: !1028)
!1045 = !DILocation(line: 446, column: 33, scope: !1028)
!1046 = !DILocation(line: 446, column: 5, scope: !1028)
!1047 = !DILocation(line: 450, column: 3, scope: !1028)
!1048 = !DILocation(line: 451, column: 9, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !1050, file: !1, line: 451, column: 9)
!1050 = distinct !DILexicalBlock(scope: !1024, file: !1, line: 450, column: 10)
!1051 = !DILocation(line: 451, column: 16, scope: !1049)
!1052 = !DILocation(line: 451, column: 32, scope: !1049)
!1053 = !DILocation(line: 451, column: 35, scope: !1049)
!1054 = !DILocation(line: 451, column: 42, scope: !1049)
!1055 = !DILocation(line: 451, column: 51, scope: !1049)
!1056 = !DILocation(line: 453, column: 11, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !1058, file: !1, line: 453, column: 11)
!1058 = distinct !DILexicalBlock(scope: !1049, file: !1, line: 451, column: 60)
!1059 = !DILocation(line: 453, column: 18, scope: !1057)
!1060 = !DILocation(line: 453, column: 36, scope: !1057)
!1061 = !DILocation(line: 453, column: 39, scope: !1057)
!1062 = !DILocation(line: 453, column: 46, scope: !1057)
!1063 = !DILocation(line: 454, column: 21, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !1057, file: !1, line: 453, column: 66)
!1065 = !DILocation(line: 454, column: 29, scope: !1064)
!1066 = !DILocation(line: 454, column: 2, scope: !1064)
!1067 = !DILocation(line: 454, column: 9, scope: !1064)
!1068 = !DILocation(line: 454, column: 19, scope: !1064)
!1069 = !DILocation(line: 455, column: 2, scope: !1064)
!1070 = !DILocation(line: 455, column: 10, scope: !1064)
!1071 = !DILocation(line: 455, column: 14, scope: !1064)
!1072 = !DILocation(line: 455, column: 28, scope: !1064)
!1073 = !DILocation(line: 456, column: 7, scope: !1064)
!1074 = !DILocation(line: 456, column: 18, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !1057, file: !1, line: 456, column: 18)
!1076 = !DILocation(line: 456, column: 25, scope: !1075)
!1077 = !DILocation(line: 457, column: 21, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1075, file: !1, line: 456, column: 45)
!1079 = !DILocation(line: 457, column: 29, scope: !1078)
!1080 = !DILocation(line: 457, column: 2, scope: !1078)
!1081 = !DILocation(line: 457, column: 9, scope: !1078)
!1082 = !DILocation(line: 457, column: 19, scope: !1078)
!1083 = !DILocation(line: 458, column: 7, scope: !1078)
!1084 = !DILocation(line: 459, column: 2, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1075, file: !1, line: 458, column: 14)
!1086 = !DILocation(line: 461, column: 5, scope: !1058)
!1087 = !DILocation(line: 462, column: 7, scope: !1050)
!1088 = !DILocation(line: 462, column: 14, scope: !1050)
!1089 = !DILocation(line: 462, column: 20, scope: !1050)
!1090 = !DILocation(line: 462, column: 33, scope: !1050)
!1091 = !DILocation(line: 462, column: 5, scope: !1050)
!1092 = !DILocation(line: 463, column: 7, scope: !1050)
!1093 = !DILocation(line: 463, column: 14, scope: !1050)
!1094 = !DILocation(line: 463, column: 20, scope: !1050)
!1095 = !DILocation(line: 463, column: 40, scope: !1050)
!1096 = !DILocation(line: 463, column: 5, scope: !1050)
!1097 = !DILocation(line: 464, column: 11, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !1050, file: !1, line: 464, column: 9)
!1099 = !DILocation(line: 464, column: 18, scope: !1098)
!1100 = !DILocation(line: 464, column: 9, scope: !1098)
!1101 = !DILocation(line: 465, column: 13, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1103, file: !1, line: 465, column: 11)
!1103 = distinct !DILexicalBlock(scope: !1098, file: !1, line: 464, column: 32)
!1104 = !DILocation(line: 465, column: 21, scope: !1102)
!1105 = !DILocation(line: 465, column: 11, scope: !1102)
!1106 = !DILocation(line: 466, column: 4, scope: !1102)
!1107 = !DILocation(line: 466, column: 11, scope: !1102)
!1108 = !DILocation(line: 466, column: 21, scope: !1102)
!1109 = !DILocation(line: 466, column: 34, scope: !1102)
!1110 = !DILocation(line: 466, column: 2, scope: !1102)
!1111 = !DILocation(line: 467, column: 9, scope: !1103)
!1112 = !DILocation(line: 467, column: 16, scope: !1103)
!1113 = !DILocation(line: 467, column: 26, scope: !1103)
!1114 = !DILocation(line: 467, column: 39, scope: !1103)
!1115 = !DILocation(line: 467, column: 7, scope: !1103)
!1116 = !DILocation(line: 468, column: 11, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !1103, file: !1, line: 468, column: 11)
!1118 = !DILocation(line: 468, column: 18, scope: !1117)
!1119 = !DILocation(line: 469, column: 4, scope: !1117)
!1120 = !DILocation(line: 469, column: 11, scope: !1117)
!1121 = !DILocation(line: 469, column: 22, scope: !1117)
!1122 = !DILocation(line: 469, column: 35, scope: !1117)
!1123 = !DILocation(line: 469, column: 42, scope: !1117)
!1124 = !DILocation(line: 469, column: 50, scope: !1117)
!1125 = !DILocation(line: 469, column: 54, scope: !1117)
!1126 = !DILocation(line: 469, column: 2, scope: !1117)
!1127 = !DILocation(line: 470, column: 9, scope: !1103)
!1128 = !DILocation(line: 470, column: 16, scope: !1103)
!1129 = !DILocation(line: 470, column: 22, scope: !1103)
!1130 = !DILocation(line: 470, column: 35, scope: !1103)
!1131 = !DILocation(line: 471, column: 7, scope: !1103)
!1132 = !DILocation(line: 471, column: 15, scope: !1103)
!1133 = !DILocation(line: 471, column: 19, scope: !1103)
!1134 = !DILocation(line: 470, column: 7, scope: !1103)
!1135 = !DILocation(line: 472, column: 9, scope: !1103)
!1136 = !DILocation(line: 472, column: 16, scope: !1103)
!1137 = !DILocation(line: 472, column: 22, scope: !1103)
!1138 = !DILocation(line: 472, column: 35, scope: !1103)
!1139 = !DILocation(line: 472, column: 7, scope: !1103)
!1140 = !DILocation(line: 473, column: 5, scope: !1103)
!1141 = !DILocation(line: 477, column: 7, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !1016, file: !1, line: 477, column: 7)
!1143 = !DILocation(line: 477, column: 14, scope: !1142)
!1144 = !DILocation(line: 477, column: 23, scope: !1142)
!1145 = !DILocation(line: 478, column: 41, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1142, file: !1, line: 477, column: 32)
!1147 = !DILocation(line: 478, column: 49, scope: !1146)
!1148 = !DILocation(line: 478, column: 5, scope: !1146)
!1149 = !DILocation(line: 478, column: 12, scope: !1146)
!1150 = !DILocation(line: 478, column: 22, scope: !1146)
!1151 = !DILocation(line: 478, column: 39, scope: !1146)
!1152 = !DILocation(line: 479, column: 37, scope: !1146)
!1153 = !DILocation(line: 479, column: 45, scope: !1146)
!1154 = !DILocation(line: 480, column: 10, scope: !1146)
!1155 = !DILocation(line: 480, column: 18, scope: !1146)
!1156 = !DILocation(line: 480, column: 22, scope: !1146)
!1157 = !DILocation(line: 479, column: 57, scope: !1146)
!1158 = !DILocation(line: 479, column: 5, scope: !1146)
!1159 = !DILocation(line: 479, column: 12, scope: !1146)
!1160 = !DILocation(line: 479, column: 22, scope: !1146)
!1161 = !DILocation(line: 479, column: 35, scope: !1146)
!1162 = !DILocation(line: 484, column: 9, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1146, file: !1, line: 484, column: 9)
!1164 = !DILocation(line: 484, column: 16, scope: !1163)
!1165 = !DILocation(line: 484, column: 31, scope: !1163)
!1166 = !DILocation(line: 484, column: 36, scope: !1163)
!1167 = !DILocation(line: 484, column: 43, scope: !1163)
!1168 = !DILocation(line: 484, column: 53, scope: !1163)
!1169 = !DILocation(line: 485, column: 41, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1163, file: !1, line: 484, column: 66)
!1171 = !DILocation(line: 485, column: 48, scope: !1170)
!1172 = !DILocation(line: 485, column: 7, scope: !1170)
!1173 = !DILocation(line: 485, column: 14, scope: !1170)
!1174 = !DILocation(line: 485, column: 24, scope: !1170)
!1175 = !DILocation(line: 485, column: 37, scope: !1170)
!1176 = !DILocation(line: 486, column: 5, scope: !1170)
!1177 = !DILocation(line: 487, column: 3, scope: !1146)
!1178 = !DILocation(line: 488, column: 1, scope: !1016)
!1179 = distinct !DISubprogram(name: "finish_output_pass", scope: !1, file: !1, line: 496, type: !291, scopeLine: 497, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !594)
!1180 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1179, file: !1, line: 496, type: !293)
!1181 = !DILocation(line: 496, column: 38, scope: !1179)
!1182 = !DILocalVariable(name: "master", scope: !1179, file: !1, line: 498, type: !281)
!1183 = !DILocation(line: 498, column: 17, scope: !1179)
!1184 = !DILocation(line: 498, column: 42, scope: !1179)
!1185 = !DILocation(line: 498, column: 49, scope: !1179)
!1186 = !DILocation(line: 500, column: 7, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1179, file: !1, line: 500, column: 7)
!1188 = !DILocation(line: 500, column: 14, scope: !1187)
!1189 = !DILocation(line: 501, column: 7, scope: !1187)
!1190 = !DILocation(line: 501, column: 14, scope: !1187)
!1191 = !DILocation(line: 501, column: 25, scope: !1187)
!1192 = !DILocation(line: 501, column: 39, scope: !1187)
!1193 = !DILocation(line: 501, column: 5, scope: !1187)
!1194 = !DILocation(line: 502, column: 3, scope: !1179)
!1195 = !DILocation(line: 502, column: 11, scope: !1179)
!1196 = !DILocation(line: 502, column: 22, scope: !1179)
!1197 = !DILocation(line: 503, column: 1, scope: !1179)
!1198 = distinct !DISubprogram(name: "master_selection", scope: !1, file: !1, line: 286, type: !291, scopeLine: 287, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !594)
!1199 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1198, file: !1, line: 286, type: !293)
!1200 = !DILocation(line: 286, column: 36, scope: !1198)
!1201 = !DILocalVariable(name: "master", scope: !1198, file: !1, line: 288, type: !281)
!1202 = !DILocation(line: 288, column: 17, scope: !1198)
!1203 = !DILocation(line: 288, column: 42, scope: !1198)
!1204 = !DILocation(line: 288, column: 49, scope: !1198)
!1205 = !DILocalVariable(name: "use_c_buffer", scope: !1198, file: !1, line: 289, type: !250)
!1206 = !DILocation(line: 289, column: 11, scope: !1198)
!1207 = !DILocalVariable(name: "samplesperrow", scope: !1198, file: !1, line: 290, type: !194)
!1208 = !DILocation(line: 290, column: 8, scope: !1198)
!1209 = !DILocalVariable(name: "jd_samplesperrow", scope: !1198, file: !1, line: 291, type: !228)
!1210 = !DILocation(line: 291, column: 14, scope: !1198)
!1211 = !DILocation(line: 294, column: 31, scope: !1198)
!1212 = !DILocation(line: 294, column: 3, scope: !1198)
!1213 = !DILocation(line: 295, column: 29, scope: !1198)
!1214 = !DILocation(line: 295, column: 3, scope: !1198)
!1215 = !DILocation(line: 298, column: 26, scope: !1198)
!1216 = !DILocation(line: 298, column: 33, scope: !1198)
!1217 = !DILocation(line: 298, column: 19, scope: !1198)
!1218 = !DILocation(line: 298, column: 55, scope: !1198)
!1219 = !DILocation(line: 298, column: 62, scope: !1198)
!1220 = !DILocation(line: 298, column: 48, scope: !1198)
!1221 = !DILocation(line: 298, column: 46, scope: !1198)
!1222 = !DILocation(line: 298, column: 17, scope: !1198)
!1223 = !DILocation(line: 299, column: 35, scope: !1198)
!1224 = !DILocation(line: 299, column: 22, scope: !1198)
!1225 = !DILocation(line: 299, column: 20, scope: !1198)
!1226 = !DILocation(line: 300, column: 14, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1198, file: !1, line: 300, column: 7)
!1228 = !DILocation(line: 300, column: 7, scope: !1227)
!1229 = !DILocation(line: 300, column: 34, scope: !1227)
!1230 = !DILocation(line: 300, column: 31, scope: !1227)
!1231 = !DILocation(line: 301, column: 5, scope: !1227)
!1232 = !DILocation(line: 304, column: 3, scope: !1198)
!1233 = !DILocation(line: 304, column: 11, scope: !1198)
!1234 = !DILocation(line: 304, column: 23, scope: !1198)
!1235 = !DILocation(line: 305, column: 55, scope: !1198)
!1236 = !DILocation(line: 305, column: 35, scope: !1198)
!1237 = !DILocation(line: 305, column: 3, scope: !1198)
!1238 = !DILocation(line: 305, column: 11, scope: !1198)
!1239 = !DILocation(line: 305, column: 33, scope: !1198)
!1240 = !DILocation(line: 308, column: 3, scope: !1198)
!1241 = !DILocation(line: 308, column: 11, scope: !1198)
!1242 = !DILocation(line: 308, column: 27, scope: !1198)
!1243 = !DILocation(line: 309, column: 3, scope: !1198)
!1244 = !DILocation(line: 309, column: 11, scope: !1198)
!1245 = !DILocation(line: 309, column: 27, scope: !1198)
!1246 = !DILocation(line: 311, column: 9, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !1198, file: !1, line: 311, column: 7)
!1248 = !DILocation(line: 311, column: 16, scope: !1247)
!1249 = !DILocation(line: 311, column: 32, scope: !1247)
!1250 = !DILocation(line: 311, column: 37, scope: !1247)
!1251 = !DILocation(line: 311, column: 44, scope: !1247)
!1252 = !DILocation(line: 312, column: 5, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !1247, file: !1, line: 311, column: 60)
!1254 = !DILocation(line: 312, column: 12, scope: !1253)
!1255 = !DILocation(line: 312, column: 31, scope: !1253)
!1256 = !DILocation(line: 313, column: 5, scope: !1253)
!1257 = !DILocation(line: 313, column: 12, scope: !1253)
!1258 = !DILocation(line: 313, column: 34, scope: !1253)
!1259 = !DILocation(line: 314, column: 5, scope: !1253)
!1260 = !DILocation(line: 314, column: 12, scope: !1253)
!1261 = !DILocation(line: 314, column: 31, scope: !1253)
!1262 = !DILocation(line: 315, column: 3, scope: !1253)
!1263 = !DILocation(line: 316, column: 7, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !1198, file: !1, line: 316, column: 7)
!1265 = !DILocation(line: 316, column: 14, scope: !1264)
!1266 = !DILocation(line: 317, column: 9, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !1268, file: !1, line: 317, column: 9)
!1268 = distinct !DILexicalBlock(scope: !1264, file: !1, line: 316, column: 31)
!1269 = !DILocation(line: 317, column: 16, scope: !1267)
!1270 = !DILocation(line: 318, column: 7, scope: !1267)
!1271 = !DILocation(line: 320, column: 9, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !1268, file: !1, line: 320, column: 9)
!1273 = !DILocation(line: 320, column: 16, scope: !1272)
!1274 = !DILocation(line: 320, column: 37, scope: !1272)
!1275 = !DILocation(line: 321, column: 7, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !1272, file: !1, line: 320, column: 43)
!1277 = !DILocation(line: 321, column: 14, scope: !1276)
!1278 = !DILocation(line: 321, column: 33, scope: !1276)
!1279 = !DILocation(line: 322, column: 7, scope: !1276)
!1280 = !DILocation(line: 322, column: 14, scope: !1276)
!1281 = !DILocation(line: 322, column: 36, scope: !1276)
!1282 = !DILocation(line: 323, column: 7, scope: !1276)
!1283 = !DILocation(line: 323, column: 14, scope: !1276)
!1284 = !DILocation(line: 323, column: 33, scope: !1276)
!1285 = !DILocation(line: 324, column: 7, scope: !1276)
!1286 = !DILocation(line: 324, column: 14, scope: !1276)
!1287 = !DILocation(line: 324, column: 23, scope: !1276)
!1288 = !DILocation(line: 325, column: 5, scope: !1276)
!1289 = !DILocation(line: 325, column: 16, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1272, file: !1, line: 325, column: 16)
!1291 = !DILocation(line: 325, column: 23, scope: !1290)
!1292 = !DILocation(line: 325, column: 32, scope: !1290)
!1293 = !DILocation(line: 326, column: 7, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1290, file: !1, line: 325, column: 41)
!1295 = !DILocation(line: 326, column: 14, scope: !1294)
!1296 = !DILocation(line: 326, column: 36, scope: !1294)
!1297 = !DILocation(line: 327, column: 5, scope: !1294)
!1298 = !DILocation(line: 327, column: 16, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1290, file: !1, line: 327, column: 16)
!1300 = !DILocation(line: 327, column: 23, scope: !1299)
!1301 = !DILocation(line: 328, column: 7, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1299, file: !1, line: 327, column: 42)
!1303 = !DILocation(line: 328, column: 14, scope: !1302)
!1304 = !DILocation(line: 328, column: 33, scope: !1302)
!1305 = !DILocation(line: 329, column: 5, scope: !1302)
!1306 = !DILocation(line: 330, column: 7, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1299, file: !1, line: 329, column: 12)
!1308 = !DILocation(line: 330, column: 14, scope: !1307)
!1309 = !DILocation(line: 330, column: 33, scope: !1307)
!1310 = !DILocation(line: 333, column: 9, scope: !1311)
!1311 = distinct !DILexicalBlock(scope: !1268, file: !1, line: 333, column: 9)
!1312 = !DILocation(line: 333, column: 16, scope: !1311)
!1313 = !DILocation(line: 335, column: 29, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1311, file: !1, line: 333, column: 36)
!1315 = !DILocation(line: 335, column: 7, scope: !1314)
!1316 = !DILocation(line: 336, column: 33, scope: !1314)
!1317 = !DILocation(line: 336, column: 40, scope: !1314)
!1318 = !DILocation(line: 336, column: 7, scope: !1314)
!1319 = !DILocation(line: 336, column: 15, scope: !1314)
!1320 = !DILocation(line: 336, column: 31, scope: !1314)
!1321 = !DILocation(line: 340, column: 5, scope: !1314)
!1322 = !DILocation(line: 343, column: 9, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1268, file: !1, line: 343, column: 9)
!1324 = !DILocation(line: 343, column: 16, scope: !1323)
!1325 = !DILocation(line: 343, column: 35, scope: !1323)
!1326 = !DILocation(line: 343, column: 38, scope: !1323)
!1327 = !DILocation(line: 343, column: 45, scope: !1323)
!1328 = !DILocation(line: 345, column: 29, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1323, file: !1, line: 343, column: 68)
!1330 = !DILocation(line: 345, column: 7, scope: !1329)
!1331 = !DILocation(line: 346, column: 33, scope: !1329)
!1332 = !DILocation(line: 346, column: 40, scope: !1329)
!1333 = !DILocation(line: 346, column: 7, scope: !1329)
!1334 = !DILocation(line: 346, column: 15, scope: !1329)
!1335 = !DILocation(line: 346, column: 31, scope: !1329)
!1336 = !DILocation(line: 350, column: 5, scope: !1329)
!1337 = !DILocation(line: 354, column: 3, scope: !1268)
!1338 = !DILocation(line: 357, column: 9, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1198, file: !1, line: 357, column: 7)
!1340 = !DILocation(line: 357, column: 16, scope: !1339)
!1341 = !DILocation(line: 357, column: 7, scope: !1339)
!1342 = !DILocation(line: 358, column: 9, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !1344, file: !1, line: 358, column: 9)
!1344 = distinct !DILexicalBlock(scope: !1339, file: !1, line: 357, column: 30)
!1345 = !DILocation(line: 358, column: 17, scope: !1343)
!1346 = !DILocation(line: 360, column: 30, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1343, file: !1, line: 358, column: 40)
!1348 = !DILocation(line: 360, column: 7, scope: !1347)
!1349 = !DILocation(line: 364, column: 5, scope: !1347)
!1350 = !DILocation(line: 365, column: 31, scope: !1351)
!1351 = distinct !DILexicalBlock(scope: !1343, file: !1, line: 364, column: 12)
!1352 = !DILocation(line: 365, column: 7, scope: !1351)
!1353 = !DILocation(line: 366, column: 23, scope: !1351)
!1354 = !DILocation(line: 366, column: 7, scope: !1351)
!1355 = !DILocation(line: 368, column: 29, scope: !1344)
!1356 = !DILocation(line: 368, column: 36, scope: !1344)
!1357 = !DILocation(line: 368, column: 43, scope: !1344)
!1358 = !DILocation(line: 368, column: 5, scope: !1344)
!1359 = !DILocation(line: 369, column: 3, scope: !1344)
!1360 = !DILocation(line: 371, column: 21, scope: !1198)
!1361 = !DILocation(line: 371, column: 3, scope: !1198)
!1362 = !DILocation(line: 373, column: 7, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1198, file: !1, line: 373, column: 7)
!1364 = !DILocation(line: 373, column: 14, scope: !1363)
!1365 = !DILocation(line: 374, column: 5, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1363, file: !1, line: 373, column: 26)
!1367 = !DILocation(line: 375, column: 3, scope: !1366)
!1368 = !DILocation(line: 376, column: 9, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1370, file: !1, line: 376, column: 9)
!1370 = distinct !DILexicalBlock(scope: !1363, file: !1, line: 375, column: 10)
!1371 = !DILocation(line: 376, column: 16, scope: !1369)
!1372 = !DILocation(line: 378, column: 27, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !1369, file: !1, line: 376, column: 34)
!1374 = !DILocation(line: 378, column: 7, scope: !1373)
!1375 = !DILocation(line: 382, column: 5, scope: !1373)
!1376 = !DILocation(line: 383, column: 26, scope: !1369)
!1377 = !DILocation(line: 383, column: 7, scope: !1369)
!1378 = !DILocation(line: 387, column: 18, scope: !1198)
!1379 = !DILocation(line: 387, column: 25, scope: !1198)
!1380 = !DILocation(line: 387, column: 35, scope: !1198)
!1381 = !DILocation(line: 387, column: 54, scope: !1198)
!1382 = !DILocation(line: 387, column: 57, scope: !1198)
!1383 = !DILocation(line: 387, column: 64, scope: !1198)
!1384 = !DILocation(line: 387, column: 16, scope: !1198)
!1385 = !DILocation(line: 388, column: 27, scope: !1198)
!1386 = !DILocation(line: 388, column: 34, scope: !1198)
!1387 = !DILocation(line: 388, column: 3, scope: !1198)
!1388 = !DILocation(line: 390, column: 9, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !1198, file: !1, line: 390, column: 7)
!1390 = !DILocation(line: 390, column: 16, scope: !1389)
!1391 = !DILocation(line: 390, column: 7, scope: !1389)
!1392 = !DILocation(line: 391, column: 29, scope: !1389)
!1393 = !DILocation(line: 391, column: 5, scope: !1389)
!1394 = !DILocation(line: 394, column: 5, scope: !1198)
!1395 = !DILocation(line: 394, column: 12, scope: !1198)
!1396 = !DILocation(line: 394, column: 17, scope: !1198)
!1397 = !DILocation(line: 394, column: 54, scope: !1198)
!1398 = !DILocation(line: 394, column: 3, scope: !1198)
!1399 = !DILocation(line: 397, column: 5, scope: !1198)
!1400 = !DILocation(line: 397, column: 12, scope: !1198)
!1401 = !DILocation(line: 397, column: 22, scope: !1198)
!1402 = !DILocation(line: 397, column: 41, scope: !1198)
!1403 = !DILocation(line: 397, column: 3, scope: !1198)
!1404 = !DILocation(line: 404, column: 7, scope: !1405)
!1405 = distinct !DILexicalBlock(scope: !1198, file: !1, line: 404, column: 7)
!1406 = !DILocation(line: 404, column: 14, scope: !1405)
!1407 = !DILocation(line: 404, column: 23, scope: !1405)
!1408 = !DILocation(line: 404, column: 31, scope: !1405)
!1409 = !DILocation(line: 404, column: 36, scope: !1405)
!1410 = !DILocation(line: 404, column: 43, scope: !1405)
!1411 = !DILocation(line: 404, column: 58, scope: !1405)
!1412 = !DILocation(line: 405, column: 7, scope: !1405)
!1413 = !DILocation(line: 405, column: 14, scope: !1405)
!1414 = !DILocation(line: 405, column: 24, scope: !1405)
!1415 = !DILocalVariable(name: "nscans", scope: !1416, file: !1, line: 406, type: !171)
!1416 = distinct !DILexicalBlock(scope: !1405, file: !1, line: 405, column: 44)
!1417 = !DILocation(line: 406, column: 9, scope: !1416)
!1418 = !DILocation(line: 408, column: 9, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1416, file: !1, line: 408, column: 9)
!1420 = !DILocation(line: 408, column: 16, scope: !1419)
!1421 = !DILocation(line: 410, column: 24, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !1419, file: !1, line: 408, column: 34)
!1423 = !DILocation(line: 410, column: 31, scope: !1422)
!1424 = !DILocation(line: 410, column: 22, scope: !1422)
!1425 = !DILocation(line: 410, column: 18, scope: !1422)
!1426 = !DILocation(line: 410, column: 14, scope: !1422)
!1427 = !DILocation(line: 411, column: 5, scope: !1422)
!1428 = !DILocation(line: 413, column: 16, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1419, file: !1, line: 411, column: 12)
!1430 = !DILocation(line: 413, column: 23, scope: !1429)
!1431 = !DILocation(line: 413, column: 14, scope: !1429)
!1432 = !DILocation(line: 415, column: 5, scope: !1416)
!1433 = !DILocation(line: 415, column: 12, scope: !1416)
!1434 = !DILocation(line: 415, column: 22, scope: !1416)
!1435 = !DILocation(line: 415, column: 35, scope: !1416)
!1436 = !DILocation(line: 416, column: 42, scope: !1416)
!1437 = !DILocation(line: 416, column: 49, scope: !1416)
!1438 = !DILocation(line: 416, column: 35, scope: !1416)
!1439 = !DILocation(line: 416, column: 67, scope: !1416)
!1440 = !DILocation(line: 416, column: 65, scope: !1416)
!1441 = !DILocation(line: 416, column: 5, scope: !1416)
!1442 = !DILocation(line: 416, column: 12, scope: !1416)
!1443 = !DILocation(line: 416, column: 22, scope: !1416)
!1444 = !DILocation(line: 416, column: 33, scope: !1416)
!1445 = !DILocation(line: 417, column: 5, scope: !1416)
!1446 = !DILocation(line: 417, column: 12, scope: !1416)
!1447 = !DILocation(line: 417, column: 22, scope: !1416)
!1448 = !DILocation(line: 417, column: 39, scope: !1416)
!1449 = !DILocation(line: 418, column: 38, scope: !1416)
!1450 = !DILocation(line: 418, column: 45, scope: !1416)
!1451 = !DILocation(line: 418, column: 5, scope: !1416)
!1452 = !DILocation(line: 418, column: 12, scope: !1416)
!1453 = !DILocation(line: 418, column: 22, scope: !1416)
!1454 = !DILocation(line: 418, column: 35, scope: !1416)
!1455 = !DILocation(line: 420, column: 5, scope: !1416)
!1456 = !DILocation(line: 420, column: 13, scope: !1416)
!1457 = !DILocation(line: 420, column: 24, scope: !1416)
!1458 = !DILocation(line: 421, column: 3, scope: !1416)
!1459 = !DILocation(line: 423, column: 1, scope: !1198)
!1460 = distinct !DISubprogram(name: "prepare_range_limit_table", scope: !1, file: !1, line: 246, type: !291, scopeLine: 248, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !594)
!1461 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1460, file: !1, line: 246, type: !293)
!1462 = !DILocation(line: 246, column: 45, scope: !1460)
!1463 = !DILocalVariable(name: "table", scope: !1460, file: !1, line: 249, type: !224)
!1464 = !DILocation(line: 249, column: 13, scope: !1460)
!1465 = !DILocalVariable(name: "i", scope: !1460, file: !1, line: 250, type: !171)
!1466 = !DILocation(line: 250, column: 7, scope: !1460)
!1467 = !DILocation(line: 253, column: 7, scope: !1460)
!1468 = !DILocation(line: 253, column: 14, scope: !1460)
!1469 = !DILocation(line: 253, column: 19, scope: !1460)
!1470 = !DILocation(line: 253, column: 48, scope: !1460)
!1471 = !DILocation(line: 253, column: 5, scope: !1460)
!1472 = !DILocation(line: 252, column: 9, scope: !1460)
!1473 = !DILocation(line: 255, column: 9, scope: !1460)
!1474 = !DILocation(line: 256, column: 31, scope: !1460)
!1475 = !DILocation(line: 256, column: 3, scope: !1460)
!1476 = !DILocation(line: 256, column: 10, scope: !1460)
!1477 = !DILocation(line: 256, column: 29, scope: !1460)
!1478 = !DILocation(line: 258, column: 3, scope: !1460)
!1479 = !DILocation(line: 260, column: 10, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !1460, file: !1, line: 260, column: 3)
!1481 = !DILocation(line: 260, column: 8, scope: !1480)
!1482 = !DILocation(line: 260, column: 15, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !1480, file: !1, line: 260, column: 3)
!1484 = !DILocation(line: 260, column: 17, scope: !1483)
!1485 = !DILocation(line: 260, column: 3, scope: !1480)
!1486 = !DILocation(line: 261, column: 26, scope: !1483)
!1487 = !DILocation(line: 261, column: 16, scope: !1483)
!1488 = !DILocation(line: 261, column: 5, scope: !1483)
!1489 = !DILocation(line: 261, column: 11, scope: !1483)
!1490 = !DILocation(line: 261, column: 14, scope: !1483)
!1491 = !DILocation(line: 260, column: 33, scope: !1483)
!1492 = !DILocation(line: 260, column: 3, scope: !1483)
!1493 = distinct !{!1493, !1485, !1494, !755}
!1494 = !DILocation(line: 261, column: 26, scope: !1480)
!1495 = !DILocation(line: 262, column: 9, scope: !1460)
!1496 = !DILocation(line: 264, column: 10, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !1460, file: !1, line: 264, column: 3)
!1498 = !DILocation(line: 264, column: 8, scope: !1497)
!1499 = !DILocation(line: 264, column: 27, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1497, file: !1, line: 264, column: 3)
!1501 = !DILocation(line: 264, column: 29, scope: !1500)
!1502 = !DILocation(line: 264, column: 3, scope: !1497)
!1503 = !DILocation(line: 265, column: 5, scope: !1500)
!1504 = !DILocation(line: 265, column: 11, scope: !1500)
!1505 = !DILocation(line: 265, column: 14, scope: !1500)
!1506 = !DILocation(line: 264, column: 50, scope: !1500)
!1507 = !DILocation(line: 264, column: 3, scope: !1500)
!1508 = distinct !{!1508, !1502, !1509, !755}
!1509 = !DILocation(line: 265, column: 16, scope: !1497)
!1510 = !DILocation(line: 267, column: 3, scope: !1460)
!1511 = !DILocation(line: 269, column: 3, scope: !1460)
!1512 = !DILocation(line: 271, column: 1, scope: !1460)
