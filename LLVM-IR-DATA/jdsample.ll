; ModuleID = 'cBench/consumer_jpeg_c/src/jdsample.c'
source_filename = "cBench/consumer_jpeg_c/src/jdsample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jpeg_decompress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.my_upsampler = type { %struct.jpeg_upsampler, [10 x ptr], [10 x ptr], i32, i32, [10 x i32], [10 x i8], [10 x i8] }
%struct.jpeg_upsampler = type { ptr, ptr, i32 }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.jpeg_color_deconverter = type { ptr, ptr }

; Function Attrs: noinline nounwind uwtable
define dso_local void @jinit_upsampler(ptr noundef %0) #0 !dbg !601 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !603, !DIExpression(), !604)
    #dbg_declare(ptr %3, !605, !DIExpression(), !606)
    #dbg_declare(ptr %4, !607, !DIExpression(), !608)
    #dbg_declare(ptr %5, !609, !DIExpression(), !610)
    #dbg_declare(ptr %6, !611, !DIExpression(), !612)
    #dbg_declare(ptr %7, !613, !DIExpression(), !614)
    #dbg_declare(ptr %8, !615, !DIExpression(), !616)
    #dbg_declare(ptr %9, !617, !DIExpression(), !618)
    #dbg_declare(ptr %10, !619, !DIExpression(), !620)
    #dbg_declare(ptr %11, !621, !DIExpression(), !622)
  %12 = load ptr, ptr %2, align 8, !dbg !623
  %13 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %12, i32 0, i32 1, !dbg !624
  %14 = load ptr, ptr %13, align 8, !dbg !624
  %15 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %14, i32 0, i32 0, !dbg !625
  %16 = load ptr, ptr %15, align 8, !dbg !625
  %17 = load ptr, ptr %2, align 8, !dbg !626
  %18 = call ptr %16(ptr noundef %17, i32 noundef 1, i64 noundef 256), !dbg !627
  store ptr %18, ptr %3, align 8, !dbg !628
  %19 = load ptr, ptr %3, align 8, !dbg !629
  %20 = load ptr, ptr %2, align 8, !dbg !630
  %21 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %20, i32 0, i32 81, !dbg !631
  store ptr %19, ptr %21, align 8, !dbg !632
  %22 = load ptr, ptr %3, align 8, !dbg !633
  %23 = getelementptr inbounds nuw %struct.my_upsampler, ptr %22, i32 0, i32 0, !dbg !634
  %24 = getelementptr inbounds nuw %struct.jpeg_upsampler, ptr %23, i32 0, i32 0, !dbg !635
  store ptr @start_pass_upsample, ptr %24, align 8, !dbg !636
  %25 = load ptr, ptr %3, align 8, !dbg !637
  %26 = getelementptr inbounds nuw %struct.my_upsampler, ptr %25, i32 0, i32 0, !dbg !638
  %27 = getelementptr inbounds nuw %struct.jpeg_upsampler, ptr %26, i32 0, i32 1, !dbg !639
  store ptr @sep_upsample, ptr %27, align 8, !dbg !640
  %28 = load ptr, ptr %3, align 8, !dbg !641
  %29 = getelementptr inbounds nuw %struct.my_upsampler, ptr %28, i32 0, i32 0, !dbg !642
  %30 = getelementptr inbounds nuw %struct.jpeg_upsampler, ptr %29, i32 0, i32 2, !dbg !643
  store i32 0, ptr %30, align 8, !dbg !644
  %31 = load ptr, ptr %2, align 8, !dbg !645
  %32 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %31, i32 0, i32 56, !dbg !647
  %33 = load i32, ptr %32, align 8, !dbg !647
  %34 = icmp ne i32 %33, 0, !dbg !645
  br i1 %34, label %35, label %46, !dbg !645

35:                                               ; preds = %1
  %36 = load ptr, ptr %2, align 8, !dbg !648
  %37 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %36, i32 0, i32 0, !dbg !648
  %38 = load ptr, ptr %37, align 8, !dbg !648
  %39 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %38, i32 0, i32 5, !dbg !648
  store i32 23, ptr %39, align 8, !dbg !648
  %40 = load ptr, ptr %2, align 8, !dbg !648
  %41 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %40, i32 0, i32 0, !dbg !648
  %42 = load ptr, ptr %41, align 8, !dbg !648
  %43 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %42, i32 0, i32 0, !dbg !648
  %44 = load ptr, ptr %43, align 8, !dbg !648
  %45 = load ptr, ptr %2, align 8, !dbg !648
  call void %44(ptr noundef %45), !dbg !648
  br label %46, !dbg !648

46:                                               ; preds = %35, %1
  %47 = load ptr, ptr %2, align 8, !dbg !649
  %48 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %47, i32 0, i32 17, !dbg !650
  %49 = load i32, ptr %48, align 4, !dbg !650
  %50 = icmp ne i32 %49, 0, !dbg !649
  br i1 %50, label %51, label %56, !dbg !651

51:                                               ; preds = %46
  %52 = load ptr, ptr %2, align 8, !dbg !652
  %53 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %52, i32 0, i32 59, !dbg !653
  %54 = load i32, ptr %53, align 4, !dbg !653
  %55 = icmp sgt i32 %54, 1, !dbg !654
  br label %56

56:                                               ; preds = %51, %46
  %57 = phi i1 [ false, %46 ], [ %55, %51 ], !dbg !655
  %58 = zext i1 %57 to i32, !dbg !651
  store i32 %58, ptr %7, align 4, !dbg !656
  store i32 0, ptr %4, align 4, !dbg !657
  %59 = load ptr, ptr %2, align 8, !dbg !659
  %60 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %59, i32 0, i32 43, !dbg !660
  %61 = load ptr, ptr %60, align 8, !dbg !660
  store ptr %61, ptr %5, align 8, !dbg !661
  br label %62, !dbg !662

62:                                               ; preds = %270, %56
  %63 = load i32, ptr %4, align 4, !dbg !663
  %64 = load ptr, ptr %2, align 8, !dbg !665
  %65 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %64, i32 0, i32 8, !dbg !666
  %66 = load i32, ptr %65, align 8, !dbg !666
  %67 = icmp slt i32 %63, %66, !dbg !667
  br i1 %67, label %68, label %275, !dbg !668

68:                                               ; preds = %62
  %69 = load ptr, ptr %5, align 8, !dbg !669
  %70 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %69, i32 0, i32 2, !dbg !671
  %71 = load i32, ptr %70, align 8, !dbg !671
  %72 = load ptr, ptr %5, align 8, !dbg !672
  %73 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %72, i32 0, i32 9, !dbg !673
  %74 = load i32, ptr %73, align 4, !dbg !673
  %75 = mul nsw i32 %71, %74, !dbg !674
  %76 = load ptr, ptr %2, align 8, !dbg !675
  %77 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %76, i32 0, i32 59, !dbg !676
  %78 = load i32, ptr %77, align 4, !dbg !676
  %79 = sdiv i32 %75, %78, !dbg !677
  store i32 %79, ptr %8, align 4, !dbg !678
  %80 = load ptr, ptr %5, align 8, !dbg !679
  %81 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %80, i32 0, i32 3, !dbg !680
  %82 = load i32, ptr %81, align 4, !dbg !680
  %83 = load ptr, ptr %5, align 8, !dbg !681
  %84 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %83, i32 0, i32 9, !dbg !682
  %85 = load i32, ptr %84, align 4, !dbg !682
  %86 = mul nsw i32 %82, %85, !dbg !683
  %87 = load ptr, ptr %2, align 8, !dbg !684
  %88 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %87, i32 0, i32 59, !dbg !685
  %89 = load i32, ptr %88, align 4, !dbg !685
  %90 = sdiv i32 %86, %89, !dbg !686
  store i32 %90, ptr %9, align 4, !dbg !687
  %91 = load ptr, ptr %2, align 8, !dbg !688
  %92 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %91, i32 0, i32 57, !dbg !689
  %93 = load i32, ptr %92, align 4, !dbg !689
  store i32 %93, ptr %10, align 4, !dbg !690
  %94 = load ptr, ptr %2, align 8, !dbg !691
  %95 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %94, i32 0, i32 58, !dbg !692
  %96 = load i32, ptr %95, align 8, !dbg !692
  store i32 %96, ptr %11, align 4, !dbg !693
  %97 = load i32, ptr %9, align 4, !dbg !694
  %98 = load ptr, ptr %3, align 8, !dbg !695
  %99 = getelementptr inbounds nuw %struct.my_upsampler, ptr %98, i32 0, i32 5, !dbg !696
  %100 = load i32, ptr %4, align 4, !dbg !697
  %101 = sext i32 %100 to i64, !dbg !695
  %102 = getelementptr inbounds [10 x i32], ptr %99, i64 0, i64 %101, !dbg !695
  store i32 %97, ptr %102, align 4, !dbg !698
  store i32 1, ptr %6, align 4, !dbg !699
  %103 = load ptr, ptr %5, align 8, !dbg !700
  %104 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %103, i32 0, i32 12, !dbg !702
  %105 = load i32, ptr %104, align 8, !dbg !702
  %106 = icmp ne i32 %105, 0, !dbg !700
  br i1 %106, label %113, label %107, !dbg !703

107:                                              ; preds = %68
  %108 = load ptr, ptr %3, align 8, !dbg !704
  %109 = getelementptr inbounds nuw %struct.my_upsampler, ptr %108, i32 0, i32 2, !dbg !706
  %110 = load i32, ptr %4, align 4, !dbg !707
  %111 = sext i32 %110 to i64, !dbg !704
  %112 = getelementptr inbounds [10 x ptr], ptr %109, i64 0, i64 %111, !dbg !704
  store ptr @noop_upsample, ptr %112, align 8, !dbg !708
  store i32 0, ptr %6, align 4, !dbg !709
  br label %240, !dbg !710

113:                                              ; preds = %68
  %114 = load i32, ptr %8, align 4, !dbg !711
  %115 = load i32, ptr %10, align 4, !dbg !713
  %116 = icmp eq i32 %114, %115, !dbg !714
  br i1 %116, label %117, label %127, !dbg !715

117:                                              ; preds = %113
  %118 = load i32, ptr %9, align 4, !dbg !716
  %119 = load i32, ptr %11, align 4, !dbg !717
  %120 = icmp eq i32 %118, %119, !dbg !718
  br i1 %120, label %121, label %127, !dbg !715

121:                                              ; preds = %117
  %122 = load ptr, ptr %3, align 8, !dbg !719
  %123 = getelementptr inbounds nuw %struct.my_upsampler, ptr %122, i32 0, i32 2, !dbg !721
  %124 = load i32, ptr %4, align 4, !dbg !722
  %125 = sext i32 %124 to i64, !dbg !719
  %126 = getelementptr inbounds [10 x ptr], ptr %123, i64 0, i64 %125, !dbg !719
  store ptr @fullsize_upsample, ptr %126, align 8, !dbg !723
  store i32 0, ptr %6, align 4, !dbg !724
  br label %239, !dbg !725

127:                                              ; preds = %117, %113
  %128 = load i32, ptr %8, align 4, !dbg !726
  %129 = mul nsw i32 %128, 2, !dbg !728
  %130 = load i32, ptr %10, align 4, !dbg !729
  %131 = icmp eq i32 %129, %130, !dbg !730
  br i1 %131, label %132, label %157, !dbg !731

132:                                              ; preds = %127
  %133 = load i32, ptr %9, align 4, !dbg !732
  %134 = load i32, ptr %11, align 4, !dbg !733
  %135 = icmp eq i32 %133, %134, !dbg !734
  br i1 %135, label %136, label %157, !dbg !731

136:                                              ; preds = %132
  %137 = load i32, ptr %7, align 4, !dbg !735
  %138 = icmp ne i32 %137, 0, !dbg !735
  br i1 %138, label %139, label %150, !dbg !738

139:                                              ; preds = %136
  %140 = load ptr, ptr %5, align 8, !dbg !739
  %141 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %140, i32 0, i32 10, !dbg !740
  %142 = load i32, ptr %141, align 8, !dbg !740
  %143 = icmp ugt i32 %142, 2, !dbg !741
  br i1 %143, label %144, label %150, !dbg !738

144:                                              ; preds = %139
  %145 = load ptr, ptr %3, align 8, !dbg !742
  %146 = getelementptr inbounds nuw %struct.my_upsampler, ptr %145, i32 0, i32 2, !dbg !743
  %147 = load i32, ptr %4, align 4, !dbg !744
  %148 = sext i32 %147 to i64, !dbg !742
  %149 = getelementptr inbounds [10 x ptr], ptr %146, i64 0, i64 %148, !dbg !742
  store ptr @h2v1_fancy_upsample, ptr %149, align 8, !dbg !745
  br label %156, !dbg !742

150:                                              ; preds = %139, %136
  %151 = load ptr, ptr %3, align 8, !dbg !746
  %152 = getelementptr inbounds nuw %struct.my_upsampler, ptr %151, i32 0, i32 2, !dbg !747
  %153 = load i32, ptr %4, align 4, !dbg !748
  %154 = sext i32 %153 to i64, !dbg !746
  %155 = getelementptr inbounds [10 x ptr], ptr %152, i64 0, i64 %154, !dbg !746
  store ptr @h2v1_upsample, ptr %155, align 8, !dbg !749
  br label %156

156:                                              ; preds = %150, %144
  br label %238, !dbg !750

157:                                              ; preds = %132, %127
  %158 = load i32, ptr %8, align 4, !dbg !751
  %159 = mul nsw i32 %158, 2, !dbg !753
  %160 = load i32, ptr %10, align 4, !dbg !754
  %161 = icmp eq i32 %159, %160, !dbg !755
  br i1 %161, label %162, label %191, !dbg !756

162:                                              ; preds = %157
  %163 = load i32, ptr %9, align 4, !dbg !757
  %164 = mul nsw i32 %163, 2, !dbg !758
  %165 = load i32, ptr %11, align 4, !dbg !759
  %166 = icmp eq i32 %164, %165, !dbg !760
  br i1 %166, label %167, label %191, !dbg !756

167:                                              ; preds = %162
  %168 = load i32, ptr %7, align 4, !dbg !761
  %169 = icmp ne i32 %168, 0, !dbg !761
  br i1 %169, label %170, label %184, !dbg !764

170:                                              ; preds = %167
  %171 = load ptr, ptr %5, align 8, !dbg !765
  %172 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %171, i32 0, i32 10, !dbg !766
  %173 = load i32, ptr %172, align 8, !dbg !766
  %174 = icmp ugt i32 %173, 2, !dbg !767
  br i1 %174, label %175, label %184, !dbg !764

175:                                              ; preds = %170
  %176 = load ptr, ptr %3, align 8, !dbg !768
  %177 = getelementptr inbounds nuw %struct.my_upsampler, ptr %176, i32 0, i32 2, !dbg !770
  %178 = load i32, ptr %4, align 4, !dbg !771
  %179 = sext i32 %178 to i64, !dbg !768
  %180 = getelementptr inbounds [10 x ptr], ptr %177, i64 0, i64 %179, !dbg !768
  store ptr @h2v2_fancy_upsample, ptr %180, align 8, !dbg !772
  %181 = load ptr, ptr %3, align 8, !dbg !773
  %182 = getelementptr inbounds nuw %struct.my_upsampler, ptr %181, i32 0, i32 0, !dbg !774
  %183 = getelementptr inbounds nuw %struct.jpeg_upsampler, ptr %182, i32 0, i32 2, !dbg !775
  store i32 1, ptr %183, align 8, !dbg !776
  br label %190, !dbg !777

184:                                              ; preds = %170, %167
  %185 = load ptr, ptr %3, align 8, !dbg !778
  %186 = getelementptr inbounds nuw %struct.my_upsampler, ptr %185, i32 0, i32 2, !dbg !779
  %187 = load i32, ptr %4, align 4, !dbg !780
  %188 = sext i32 %187 to i64, !dbg !778
  %189 = getelementptr inbounds [10 x ptr], ptr %186, i64 0, i64 %188, !dbg !778
  store ptr @h2v2_upsample, ptr %189, align 8, !dbg !781
  br label %190

190:                                              ; preds = %184, %175
  br label %237, !dbg !782

191:                                              ; preds = %162, %157
  %192 = load i32, ptr %10, align 4, !dbg !783
  %193 = load i32, ptr %8, align 4, !dbg !785
  %194 = srem i32 %192, %193, !dbg !786
  %195 = icmp eq i32 %194, 0, !dbg !787
  br i1 %195, label %196, label %225, !dbg !788

196:                                              ; preds = %191
  %197 = load i32, ptr %11, align 4, !dbg !789
  %198 = load i32, ptr %9, align 4, !dbg !790
  %199 = srem i32 %197, %198, !dbg !791
  %200 = icmp eq i32 %199, 0, !dbg !792
  br i1 %200, label %201, label %225, !dbg !788

201:                                              ; preds = %196
  %202 = load ptr, ptr %3, align 8, !dbg !793
  %203 = getelementptr inbounds nuw %struct.my_upsampler, ptr %202, i32 0, i32 2, !dbg !795
  %204 = load i32, ptr %4, align 4, !dbg !796
  %205 = sext i32 %204 to i64, !dbg !793
  %206 = getelementptr inbounds [10 x ptr], ptr %203, i64 0, i64 %205, !dbg !793
  store ptr @int_upsample, ptr %206, align 8, !dbg !797
  %207 = load i32, ptr %10, align 4, !dbg !798
  %208 = load i32, ptr %8, align 4, !dbg !799
  %209 = sdiv i32 %207, %208, !dbg !800
  %210 = trunc i32 %209 to i8, !dbg !801
  %211 = load ptr, ptr %3, align 8, !dbg !802
  %212 = getelementptr inbounds nuw %struct.my_upsampler, ptr %211, i32 0, i32 6, !dbg !803
  %213 = load i32, ptr %4, align 4, !dbg !804
  %214 = sext i32 %213 to i64, !dbg !802
  %215 = getelementptr inbounds [10 x i8], ptr %212, i64 0, i64 %214, !dbg !802
  store i8 %210, ptr %215, align 1, !dbg !805
  %216 = load i32, ptr %11, align 4, !dbg !806
  %217 = load i32, ptr %9, align 4, !dbg !807
  %218 = sdiv i32 %216, %217, !dbg !808
  %219 = trunc i32 %218 to i8, !dbg !809
  %220 = load ptr, ptr %3, align 8, !dbg !810
  %221 = getelementptr inbounds nuw %struct.my_upsampler, ptr %220, i32 0, i32 7, !dbg !811
  %222 = load i32, ptr %4, align 4, !dbg !812
  %223 = sext i32 %222 to i64, !dbg !810
  %224 = getelementptr inbounds [10 x i8], ptr %221, i64 0, i64 %223, !dbg !810
  store i8 %219, ptr %224, align 1, !dbg !813
  br label %236, !dbg !814

225:                                              ; preds = %196, %191
  %226 = load ptr, ptr %2, align 8, !dbg !815
  %227 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %226, i32 0, i32 0, !dbg !815
  %228 = load ptr, ptr %227, align 8, !dbg !815
  %229 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %228, i32 0, i32 5, !dbg !815
  store i32 37, ptr %229, align 8, !dbg !815
  %230 = load ptr, ptr %2, align 8, !dbg !815
  %231 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %230, i32 0, i32 0, !dbg !815
  %232 = load ptr, ptr %231, align 8, !dbg !815
  %233 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %232, i32 0, i32 0, !dbg !815
  %234 = load ptr, ptr %233, align 8, !dbg !815
  %235 = load ptr, ptr %2, align 8, !dbg !815
  call void %234(ptr noundef %235), !dbg !815
  br label %236

236:                                              ; preds = %225, %201
  br label %237

237:                                              ; preds = %236, %190
  br label %238

238:                                              ; preds = %237, %156
  br label %239

239:                                              ; preds = %238, %121
  br label %240

240:                                              ; preds = %239, %107
  %241 = load i32, ptr %6, align 4, !dbg !816
  %242 = icmp ne i32 %241, 0, !dbg !816
  br i1 %242, label %243, label %269, !dbg !816

243:                                              ; preds = %240
  %244 = load ptr, ptr %2, align 8, !dbg !818
  %245 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %244, i32 0, i32 1, !dbg !820
  %246 = load ptr, ptr %245, align 8, !dbg !820
  %247 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %246, i32 0, i32 2, !dbg !821
  %248 = load ptr, ptr %247, align 8, !dbg !821
  %249 = load ptr, ptr %2, align 8, !dbg !822
  %250 = load ptr, ptr %2, align 8, !dbg !823
  %251 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %250, i32 0, i32 26, !dbg !824
  %252 = load i32, ptr %251, align 8, !dbg !824
  %253 = zext i32 %252 to i64, !dbg !825
  %254 = load ptr, ptr %2, align 8, !dbg !826
  %255 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %254, i32 0, i32 57, !dbg !827
  %256 = load i32, ptr %255, align 4, !dbg !827
  %257 = sext i32 %256 to i64, !dbg !828
  %258 = call i64 @jround_up(i64 noundef %253, i64 noundef %257), !dbg !829
  %259 = trunc i64 %258 to i32, !dbg !830
  %260 = load ptr, ptr %2, align 8, !dbg !831
  %261 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %260, i32 0, i32 58, !dbg !832
  %262 = load i32, ptr %261, align 8, !dbg !832
  %263 = call ptr %248(ptr noundef %249, i32 noundef 1, i32 noundef %259, i32 noundef %262), !dbg !833
  %264 = load ptr, ptr %3, align 8, !dbg !834
  %265 = getelementptr inbounds nuw %struct.my_upsampler, ptr %264, i32 0, i32 1, !dbg !835
  %266 = load i32, ptr %4, align 4, !dbg !836
  %267 = sext i32 %266 to i64, !dbg !834
  %268 = getelementptr inbounds [10 x ptr], ptr %265, i64 0, i64 %267, !dbg !834
  store ptr %263, ptr %268, align 8, !dbg !837
  br label %269, !dbg !838

269:                                              ; preds = %243, %240
  br label %270, !dbg !839

270:                                              ; preds = %269
  %271 = load i32, ptr %4, align 4, !dbg !840
  %272 = add nsw i32 %271, 1, !dbg !840
  store i32 %272, ptr %4, align 4, !dbg !840
  %273 = load ptr, ptr %5, align 8, !dbg !841
  %274 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %273, i32 1, !dbg !841
  store ptr %274, ptr %5, align 8, !dbg !841
  br label %62, !dbg !842, !llvm.loop !843

275:                                              ; preds = %62
  ret void, !dbg !846
}

; Function Attrs: noinline nounwind uwtable
define internal void @start_pass_upsample(ptr noundef %0) #0 !dbg !847 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !848, !DIExpression(), !849)
    #dbg_declare(ptr %3, !850, !DIExpression(), !851)
  %4 = load ptr, ptr %2, align 8, !dbg !852
  %5 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %4, i32 0, i32 81, !dbg !853
  %6 = load ptr, ptr %5, align 8, !dbg !853
  store ptr %6, ptr %3, align 8, !dbg !851
  %7 = load ptr, ptr %2, align 8, !dbg !854
  %8 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %7, i32 0, i32 58, !dbg !855
  %9 = load i32, ptr %8, align 8, !dbg !855
  %10 = load ptr, ptr %3, align 8, !dbg !856
  %11 = getelementptr inbounds nuw %struct.my_upsampler, ptr %10, i32 0, i32 3, !dbg !857
  store i32 %9, ptr %11, align 8, !dbg !858
  %12 = load ptr, ptr %2, align 8, !dbg !859
  %13 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %12, i32 0, i32 27, !dbg !860
  %14 = load i32, ptr %13, align 4, !dbg !860
  %15 = load ptr, ptr %3, align 8, !dbg !861
  %16 = getelementptr inbounds nuw %struct.my_upsampler, ptr %15, i32 0, i32 4, !dbg !862
  store i32 %14, ptr %16, align 4, !dbg !863
  ret void, !dbg !864
}

; Function Attrs: noinline nounwind uwtable
define internal void @sep_upsample(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6) #0 !dbg !865 {
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca i32, align 4
  %15 = alloca ptr, align 8
  %16 = alloca i32, align 4
  %17 = alloca ptr, align 8
  %18 = alloca i32, align 4
  store ptr %0, ptr %8, align 8
    #dbg_declare(ptr %8, !866, !DIExpression(), !867)
  store ptr %1, ptr %9, align 8
    #dbg_declare(ptr %9, !868, !DIExpression(), !869)
  store ptr %2, ptr %10, align 8
    #dbg_declare(ptr %10, !870, !DIExpression(), !871)
  store i32 %3, ptr %11, align 4
    #dbg_declare(ptr %11, !872, !DIExpression(), !873)
  store ptr %4, ptr %12, align 8
    #dbg_declare(ptr %12, !874, !DIExpression(), !875)
  store ptr %5, ptr %13, align 8
    #dbg_declare(ptr %13, !876, !DIExpression(), !877)
  store i32 %6, ptr %14, align 4
    #dbg_declare(ptr %14, !878, !DIExpression(), !879)
    #dbg_declare(ptr %15, !880, !DIExpression(), !881)
  %19 = load ptr, ptr %8, align 8, !dbg !882
  %20 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %19, i32 0, i32 81, !dbg !883
  %21 = load ptr, ptr %20, align 8, !dbg !883
  store ptr %21, ptr %15, align 8, !dbg !881
    #dbg_declare(ptr %16, !884, !DIExpression(), !885)
    #dbg_declare(ptr %17, !886, !DIExpression(), !887)
    #dbg_declare(ptr %18, !888, !DIExpression(), !889)
  %22 = load ptr, ptr %15, align 8, !dbg !890
  %23 = getelementptr inbounds nuw %struct.my_upsampler, ptr %22, i32 0, i32 3, !dbg !892
  %24 = load i32, ptr %23, align 8, !dbg !892
  %25 = load ptr, ptr %8, align 8, !dbg !893
  %26 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %25, i32 0, i32 58, !dbg !894
  %27 = load i32, ptr %26, align 8, !dbg !894
  %28 = icmp sge i32 %24, %27, !dbg !895
  br i1 %28, label %29, label %78, !dbg !895

29:                                               ; preds = %7
  store i32 0, ptr %16, align 4, !dbg !896
  %30 = load ptr, ptr %8, align 8, !dbg !899
  %31 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %30, i32 0, i32 43, !dbg !900
  %32 = load ptr, ptr %31, align 8, !dbg !900
  store ptr %32, ptr %17, align 8, !dbg !901
  br label %33, !dbg !902

33:                                               ; preds = %70, %29
  %34 = load i32, ptr %16, align 4, !dbg !903
  %35 = load ptr, ptr %8, align 8, !dbg !905
  %36 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %35, i32 0, i32 8, !dbg !906
  %37 = load i32, ptr %36, align 8, !dbg !906
  %38 = icmp slt i32 %34, %37, !dbg !907
  br i1 %38, label %39, label %75, !dbg !908

39:                                               ; preds = %33
  %40 = load ptr, ptr %15, align 8, !dbg !909
  %41 = getelementptr inbounds nuw %struct.my_upsampler, ptr %40, i32 0, i32 2, !dbg !911
  %42 = load i32, ptr %16, align 4, !dbg !912
  %43 = sext i32 %42 to i64, !dbg !909
  %44 = getelementptr inbounds [10 x ptr], ptr %41, i64 0, i64 %43, !dbg !909
  %45 = load ptr, ptr %44, align 8, !dbg !909
  %46 = load ptr, ptr %8, align 8, !dbg !913
  %47 = load ptr, ptr %17, align 8, !dbg !914
  %48 = load ptr, ptr %9, align 8, !dbg !915
  %49 = load i32, ptr %16, align 4, !dbg !916
  %50 = sext i32 %49 to i64, !dbg !915
  %51 = getelementptr inbounds ptr, ptr %48, i64 %50, !dbg !915
  %52 = load ptr, ptr %51, align 8, !dbg !915
  %53 = load ptr, ptr %10, align 8, !dbg !917
  %54 = load i32, ptr %53, align 4, !dbg !918
  %55 = load ptr, ptr %15, align 8, !dbg !919
  %56 = getelementptr inbounds nuw %struct.my_upsampler, ptr %55, i32 0, i32 5, !dbg !920
  %57 = load i32, ptr %16, align 4, !dbg !921
  %58 = sext i32 %57 to i64, !dbg !919
  %59 = getelementptr inbounds [10 x i32], ptr %56, i64 0, i64 %58, !dbg !919
  %60 = load i32, ptr %59, align 4, !dbg !919
  %61 = mul i32 %54, %60, !dbg !922
  %62 = zext i32 %61 to i64, !dbg !923
  %63 = getelementptr inbounds nuw ptr, ptr %52, i64 %62, !dbg !923
  %64 = load ptr, ptr %15, align 8, !dbg !924
  %65 = getelementptr inbounds nuw %struct.my_upsampler, ptr %64, i32 0, i32 1, !dbg !925
  %66 = getelementptr inbounds [10 x ptr], ptr %65, i64 0, i64 0, !dbg !924
  %67 = load i32, ptr %16, align 4, !dbg !926
  %68 = sext i32 %67 to i64, !dbg !927
  %69 = getelementptr inbounds ptr, ptr %66, i64 %68, !dbg !927
  call void %45(ptr noundef %46, ptr noundef %47, ptr noundef %63, ptr noundef %69), !dbg !928
  br label %70, !dbg !929

70:                                               ; preds = %39
  %71 = load i32, ptr %16, align 4, !dbg !930
  %72 = add nsw i32 %71, 1, !dbg !930
  store i32 %72, ptr %16, align 4, !dbg !930
  %73 = load ptr, ptr %17, align 8, !dbg !931
  %74 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %73, i32 1, !dbg !931
  store ptr %74, ptr %17, align 8, !dbg !931
  br label %33, !dbg !932, !llvm.loop !933

75:                                               ; preds = %33
  %76 = load ptr, ptr %15, align 8, !dbg !935
  %77 = getelementptr inbounds nuw %struct.my_upsampler, ptr %76, i32 0, i32 3, !dbg !936
  store i32 0, ptr %77, align 8, !dbg !937
  br label %78, !dbg !938

78:                                               ; preds = %75, %7
  %79 = load ptr, ptr %8, align 8, !dbg !939
  %80 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %79, i32 0, i32 58, !dbg !940
  %81 = load i32, ptr %80, align 8, !dbg !940
  %82 = load ptr, ptr %15, align 8, !dbg !941
  %83 = getelementptr inbounds nuw %struct.my_upsampler, ptr %82, i32 0, i32 3, !dbg !942
  %84 = load i32, ptr %83, align 8, !dbg !942
  %85 = sub nsw i32 %81, %84, !dbg !943
  store i32 %85, ptr %18, align 4, !dbg !944
  %86 = load i32, ptr %18, align 4, !dbg !945
  %87 = load ptr, ptr %15, align 8, !dbg !947
  %88 = getelementptr inbounds nuw %struct.my_upsampler, ptr %87, i32 0, i32 4, !dbg !948
  %89 = load i32, ptr %88, align 4, !dbg !948
  %90 = icmp ugt i32 %86, %89, !dbg !949
  br i1 %90, label %91, label %95, !dbg !949

91:                                               ; preds = %78
  %92 = load ptr, ptr %15, align 8, !dbg !950
  %93 = getelementptr inbounds nuw %struct.my_upsampler, ptr %92, i32 0, i32 4, !dbg !951
  %94 = load i32, ptr %93, align 4, !dbg !951
  store i32 %94, ptr %18, align 4, !dbg !952
  br label %95, !dbg !953

95:                                               ; preds = %91, %78
  %96 = load ptr, ptr %13, align 8, !dbg !954
  %97 = load i32, ptr %96, align 4, !dbg !955
  %98 = load i32, ptr %14, align 4, !dbg !956
  %99 = sub i32 %98, %97, !dbg !956
  store i32 %99, ptr %14, align 4, !dbg !956
  %100 = load i32, ptr %18, align 4, !dbg !957
  %101 = load i32, ptr %14, align 4, !dbg !959
  %102 = icmp ugt i32 %100, %101, !dbg !960
  br i1 %102, label %103, label %105, !dbg !960

103:                                              ; preds = %95
  %104 = load i32, ptr %14, align 4, !dbg !961
  store i32 %104, ptr %18, align 4, !dbg !962
  br label %105, !dbg !963

105:                                              ; preds = %103, %95
  %106 = load ptr, ptr %8, align 8, !dbg !964
  %107 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %106, i32 0, i32 82, !dbg !965
  %108 = load ptr, ptr %107, align 8, !dbg !965
  %109 = getelementptr inbounds nuw %struct.jpeg_color_deconverter, ptr %108, i32 0, i32 1, !dbg !966
  %110 = load ptr, ptr %109, align 8, !dbg !966
  %111 = load ptr, ptr %8, align 8, !dbg !967
  %112 = load ptr, ptr %15, align 8, !dbg !968
  %113 = getelementptr inbounds nuw %struct.my_upsampler, ptr %112, i32 0, i32 1, !dbg !969
  %114 = getelementptr inbounds [10 x ptr], ptr %113, i64 0, i64 0, !dbg !968
  %115 = load ptr, ptr %15, align 8, !dbg !970
  %116 = getelementptr inbounds nuw %struct.my_upsampler, ptr %115, i32 0, i32 3, !dbg !971
  %117 = load i32, ptr %116, align 8, !dbg !971
  %118 = load ptr, ptr %12, align 8, !dbg !972
  %119 = load ptr, ptr %13, align 8, !dbg !973
  %120 = load i32, ptr %119, align 4, !dbg !974
  %121 = zext i32 %120 to i64, !dbg !975
  %122 = getelementptr inbounds nuw ptr, ptr %118, i64 %121, !dbg !975
  %123 = load i32, ptr %18, align 4, !dbg !976
  call void %110(ptr noundef %111, ptr noundef %114, i32 noundef %117, ptr noundef %122, i32 noundef %123), !dbg !977
  %124 = load i32, ptr %18, align 4, !dbg !978
  %125 = load ptr, ptr %13, align 8, !dbg !979
  %126 = load i32, ptr %125, align 4, !dbg !980
  %127 = add i32 %126, %124, !dbg !980
  store i32 %127, ptr %125, align 4, !dbg !980
  %128 = load i32, ptr %18, align 4, !dbg !981
  %129 = load ptr, ptr %15, align 8, !dbg !982
  %130 = getelementptr inbounds nuw %struct.my_upsampler, ptr %129, i32 0, i32 4, !dbg !983
  %131 = load i32, ptr %130, align 4, !dbg !984
  %132 = sub i32 %131, %128, !dbg !984
  store i32 %132, ptr %130, align 4, !dbg !984
  %133 = load i32, ptr %18, align 4, !dbg !985
  %134 = load ptr, ptr %15, align 8, !dbg !986
  %135 = getelementptr inbounds nuw %struct.my_upsampler, ptr %134, i32 0, i32 3, !dbg !987
  %136 = load i32, ptr %135, align 8, !dbg !988
  %137 = add i32 %136, %133, !dbg !988
  store i32 %137, ptr %135, align 8, !dbg !988
  %138 = load ptr, ptr %15, align 8, !dbg !989
  %139 = getelementptr inbounds nuw %struct.my_upsampler, ptr %138, i32 0, i32 3, !dbg !991
  %140 = load i32, ptr %139, align 8, !dbg !991
  %141 = load ptr, ptr %8, align 8, !dbg !992
  %142 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %141, i32 0, i32 58, !dbg !993
  %143 = load i32, ptr %142, align 8, !dbg !993
  %144 = icmp sge i32 %140, %143, !dbg !994
  br i1 %144, label %145, label %149, !dbg !994

145:                                              ; preds = %105
  %146 = load ptr, ptr %10, align 8, !dbg !995
  %147 = load i32, ptr %146, align 4, !dbg !996
  %148 = add i32 %147, 1, !dbg !996
  store i32 %148, ptr %146, align 4, !dbg !996
  br label %149, !dbg !997

149:                                              ; preds = %145, %105
  ret void, !dbg !998
}

; Function Attrs: noinline nounwind uwtable
define internal void @noop_upsample(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 !dbg !999 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
    #dbg_declare(ptr %5, !1000, !DIExpression(), !1001)
  store ptr %1, ptr %6, align 8
    #dbg_declare(ptr %6, !1002, !DIExpression(), !1003)
  store ptr %2, ptr %7, align 8
    #dbg_declare(ptr %7, !1004, !DIExpression(), !1005)
  store ptr %3, ptr %8, align 8
    #dbg_declare(ptr %8, !1006, !DIExpression(), !1007)
  %9 = load ptr, ptr %8, align 8, !dbg !1008
  store ptr null, ptr %9, align 8, !dbg !1009
  ret void, !dbg !1010
}

; Function Attrs: noinline nounwind uwtable
define internal void @fullsize_upsample(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 !dbg !1011 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
    #dbg_declare(ptr %5, !1012, !DIExpression(), !1013)
  store ptr %1, ptr %6, align 8
    #dbg_declare(ptr %6, !1014, !DIExpression(), !1015)
  store ptr %2, ptr %7, align 8
    #dbg_declare(ptr %7, !1016, !DIExpression(), !1017)
  store ptr %3, ptr %8, align 8
    #dbg_declare(ptr %8, !1018, !DIExpression(), !1019)
  %9 = load ptr, ptr %7, align 8, !dbg !1020
  %10 = load ptr, ptr %8, align 8, !dbg !1021
  store ptr %9, ptr %10, align 8, !dbg !1022
  ret void, !dbg !1023
}

; Function Attrs: noinline nounwind uwtable
define internal void @h2v1_fancy_upsample(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 !dbg !1024 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
    #dbg_declare(ptr %5, !1025, !DIExpression(), !1026)
  store ptr %1, ptr %6, align 8
    #dbg_declare(ptr %6, !1027, !DIExpression(), !1028)
  store ptr %2, ptr %7, align 8
    #dbg_declare(ptr %7, !1029, !DIExpression(), !1030)
  store ptr %3, ptr %8, align 8
    #dbg_declare(ptr %8, !1031, !DIExpression(), !1032)
    #dbg_declare(ptr %9, !1033, !DIExpression(), !1034)
  %15 = load ptr, ptr %8, align 8, !dbg !1035
  %16 = load ptr, ptr %15, align 8, !dbg !1036
  store ptr %16, ptr %9, align 8, !dbg !1034
    #dbg_declare(ptr %10, !1037, !DIExpression(), !1038)
    #dbg_declare(ptr %11, !1039, !DIExpression(), !1040)
    #dbg_declare(ptr %12, !1041, !DIExpression(), !1042)
    #dbg_declare(ptr %13, !1043, !DIExpression(), !1044)
    #dbg_declare(ptr %14, !1045, !DIExpression(), !1046)
  store i32 0, ptr %14, align 4, !dbg !1047
  br label %17, !dbg !1049

17:                                               ; preds = %110, %4
  %18 = load i32, ptr %14, align 4, !dbg !1050
  %19 = load ptr, ptr %5, align 8, !dbg !1052
  %20 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %19, i32 0, i32 58, !dbg !1053
  %21 = load i32, ptr %20, align 8, !dbg !1053
  %22 = icmp slt i32 %18, %21, !dbg !1054
  br i1 %22, label %23, label %113, !dbg !1055

23:                                               ; preds = %17
  %24 = load ptr, ptr %7, align 8, !dbg !1056
  %25 = load i32, ptr %14, align 4, !dbg !1058
  %26 = sext i32 %25 to i64, !dbg !1056
  %27 = getelementptr inbounds ptr, ptr %24, i64 %26, !dbg !1056
  %28 = load ptr, ptr %27, align 8, !dbg !1056
  store ptr %28, ptr %10, align 8, !dbg !1059
  %29 = load ptr, ptr %9, align 8, !dbg !1060
  %30 = load i32, ptr %14, align 4, !dbg !1061
  %31 = sext i32 %30 to i64, !dbg !1060
  %32 = getelementptr inbounds ptr, ptr %29, i64 %31, !dbg !1060
  %33 = load ptr, ptr %32, align 8, !dbg !1060
  store ptr %33, ptr %11, align 8, !dbg !1062
  %34 = load ptr, ptr %10, align 8, !dbg !1063
  %35 = getelementptr inbounds nuw i8, ptr %34, i32 1, !dbg !1063
  store ptr %35, ptr %10, align 8, !dbg !1063
  %36 = load i8, ptr %34, align 1, !dbg !1063
  %37 = zext i8 %36 to i32, !dbg !1063
  store i32 %37, ptr %12, align 4, !dbg !1064
  %38 = load i32, ptr %12, align 4, !dbg !1065
  %39 = trunc i32 %38 to i8, !dbg !1066
  %40 = load ptr, ptr %11, align 8, !dbg !1067
  %41 = getelementptr inbounds nuw i8, ptr %40, i32 1, !dbg !1067
  store ptr %41, ptr %11, align 8, !dbg !1067
  store i8 %39, ptr %40, align 1, !dbg !1068
  %42 = load i32, ptr %12, align 4, !dbg !1069
  %43 = mul nsw i32 %42, 3, !dbg !1070
  %44 = load ptr, ptr %10, align 8, !dbg !1071
  %45 = load i8, ptr %44, align 1, !dbg !1071
  %46 = zext i8 %45 to i32, !dbg !1071
  %47 = add nsw i32 %43, %46, !dbg !1072
  %48 = add nsw i32 %47, 2, !dbg !1073
  %49 = ashr i32 %48, 2, !dbg !1074
  %50 = trunc i32 %49 to i8, !dbg !1075
  %51 = load ptr, ptr %11, align 8, !dbg !1076
  %52 = getelementptr inbounds nuw i8, ptr %51, i32 1, !dbg !1076
  store ptr %52, ptr %11, align 8, !dbg !1076
  store i8 %50, ptr %51, align 1, !dbg !1077
  %53 = load ptr, ptr %6, align 8, !dbg !1078
  %54 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %53, i32 0, i32 10, !dbg !1080
  %55 = load i32, ptr %54, align 8, !dbg !1080
  %56 = sub i32 %55, 2, !dbg !1081
  store i32 %56, ptr %13, align 4, !dbg !1082
  br label %57, !dbg !1083

57:                                               ; preds = %87, %23
  %58 = load i32, ptr %13, align 4, !dbg !1084
  %59 = icmp ugt i32 %58, 0, !dbg !1086
  br i1 %59, label %60, label %90, !dbg !1087

60:                                               ; preds = %57
  %61 = load ptr, ptr %10, align 8, !dbg !1088
  %62 = getelementptr inbounds nuw i8, ptr %61, i32 1, !dbg !1088
  store ptr %62, ptr %10, align 8, !dbg !1088
  %63 = load i8, ptr %61, align 1, !dbg !1088
  %64 = zext i8 %63 to i32, !dbg !1088
  %65 = mul nsw i32 %64, 3, !dbg !1090
  store i32 %65, ptr %12, align 4, !dbg !1091
  %66 = load i32, ptr %12, align 4, !dbg !1092
  %67 = load ptr, ptr %10, align 8, !dbg !1093
  %68 = getelementptr inbounds i8, ptr %67, i64 -2, !dbg !1093
  %69 = load i8, ptr %68, align 1, !dbg !1093
  %70 = zext i8 %69 to i32, !dbg !1093
  %71 = add nsw i32 %66, %70, !dbg !1094
  %72 = add nsw i32 %71, 1, !dbg !1095
  %73 = ashr i32 %72, 2, !dbg !1096
  %74 = trunc i32 %73 to i8, !dbg !1097
  %75 = load ptr, ptr %11, align 8, !dbg !1098
  %76 = getelementptr inbounds nuw i8, ptr %75, i32 1, !dbg !1098
  store ptr %76, ptr %11, align 8, !dbg !1098
  store i8 %74, ptr %75, align 1, !dbg !1099
  %77 = load i32, ptr %12, align 4, !dbg !1100
  %78 = load ptr, ptr %10, align 8, !dbg !1101
  %79 = load i8, ptr %78, align 1, !dbg !1101
  %80 = zext i8 %79 to i32, !dbg !1101
  %81 = add nsw i32 %77, %80, !dbg !1102
  %82 = add nsw i32 %81, 2, !dbg !1103
  %83 = ashr i32 %82, 2, !dbg !1104
  %84 = trunc i32 %83 to i8, !dbg !1105
  %85 = load ptr, ptr %11, align 8, !dbg !1106
  %86 = getelementptr inbounds nuw i8, ptr %85, i32 1, !dbg !1106
  store ptr %86, ptr %11, align 8, !dbg !1106
  store i8 %84, ptr %85, align 1, !dbg !1107
  br label %87, !dbg !1108

87:                                               ; preds = %60
  %88 = load i32, ptr %13, align 4, !dbg !1109
  %89 = add i32 %88, -1, !dbg !1109
  store i32 %89, ptr %13, align 4, !dbg !1109
  br label %57, !dbg !1110, !llvm.loop !1111

90:                                               ; preds = %57
  %91 = load ptr, ptr %10, align 8, !dbg !1113
  %92 = load i8, ptr %91, align 1, !dbg !1113
  %93 = zext i8 %92 to i32, !dbg !1113
  store i32 %93, ptr %12, align 4, !dbg !1114
  %94 = load i32, ptr %12, align 4, !dbg !1115
  %95 = mul nsw i32 %94, 3, !dbg !1116
  %96 = load ptr, ptr %10, align 8, !dbg !1117
  %97 = getelementptr inbounds i8, ptr %96, i64 -1, !dbg !1117
  %98 = load i8, ptr %97, align 1, !dbg !1117
  %99 = zext i8 %98 to i32, !dbg !1117
  %100 = add nsw i32 %95, %99, !dbg !1118
  %101 = add nsw i32 %100, 1, !dbg !1119
  %102 = ashr i32 %101, 2, !dbg !1120
  %103 = trunc i32 %102 to i8, !dbg !1121
  %104 = load ptr, ptr %11, align 8, !dbg !1122
  %105 = getelementptr inbounds nuw i8, ptr %104, i32 1, !dbg !1122
  store ptr %105, ptr %11, align 8, !dbg !1122
  store i8 %103, ptr %104, align 1, !dbg !1123
  %106 = load i32, ptr %12, align 4, !dbg !1124
  %107 = trunc i32 %106 to i8, !dbg !1125
  %108 = load ptr, ptr %11, align 8, !dbg !1126
  %109 = getelementptr inbounds nuw i8, ptr %108, i32 1, !dbg !1126
  store ptr %109, ptr %11, align 8, !dbg !1126
  store i8 %107, ptr %108, align 1, !dbg !1127
  br label %110, !dbg !1128

110:                                              ; preds = %90
  %111 = load i32, ptr %14, align 4, !dbg !1129
  %112 = add nsw i32 %111, 1, !dbg !1129
  store i32 %112, ptr %14, align 4, !dbg !1129
  br label %17, !dbg !1130, !llvm.loop !1131

113:                                              ; preds = %17
  ret void, !dbg !1133
}

; Function Attrs: noinline nounwind uwtable
define internal void @h2v1_upsample(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 !dbg !1134 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i8, align 1
  %13 = alloca ptr, align 8
  %14 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
    #dbg_declare(ptr %5, !1135, !DIExpression(), !1136)
  store ptr %1, ptr %6, align 8
    #dbg_declare(ptr %6, !1137, !DIExpression(), !1138)
  store ptr %2, ptr %7, align 8
    #dbg_declare(ptr %7, !1139, !DIExpression(), !1140)
  store ptr %3, ptr %8, align 8
    #dbg_declare(ptr %8, !1141, !DIExpression(), !1142)
    #dbg_declare(ptr %9, !1143, !DIExpression(), !1144)
  %15 = load ptr, ptr %8, align 8, !dbg !1145
  %16 = load ptr, ptr %15, align 8, !dbg !1146
  store ptr %16, ptr %9, align 8, !dbg !1144
    #dbg_declare(ptr %10, !1147, !DIExpression(), !1148)
    #dbg_declare(ptr %11, !1149, !DIExpression(), !1150)
    #dbg_declare(ptr %12, !1151, !DIExpression(), !1152)
    #dbg_declare(ptr %13, !1153, !DIExpression(), !1154)
    #dbg_declare(ptr %14, !1155, !DIExpression(), !1156)
  store i32 0, ptr %14, align 4, !dbg !1157
  br label %17, !dbg !1159

17:                                               ; preds = %55, %4
  %18 = load i32, ptr %14, align 4, !dbg !1160
  %19 = load ptr, ptr %5, align 8, !dbg !1162
  %20 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %19, i32 0, i32 58, !dbg !1163
  %21 = load i32, ptr %20, align 8, !dbg !1163
  %22 = icmp slt i32 %18, %21, !dbg !1164
  br i1 %22, label %23, label %58, !dbg !1165

23:                                               ; preds = %17
  %24 = load ptr, ptr %7, align 8, !dbg !1166
  %25 = load i32, ptr %14, align 4, !dbg !1168
  %26 = sext i32 %25 to i64, !dbg !1166
  %27 = getelementptr inbounds ptr, ptr %24, i64 %26, !dbg !1166
  %28 = load ptr, ptr %27, align 8, !dbg !1166
  store ptr %28, ptr %10, align 8, !dbg !1169
  %29 = load ptr, ptr %9, align 8, !dbg !1170
  %30 = load i32, ptr %14, align 4, !dbg !1171
  %31 = sext i32 %30 to i64, !dbg !1170
  %32 = getelementptr inbounds ptr, ptr %29, i64 %31, !dbg !1170
  %33 = load ptr, ptr %32, align 8, !dbg !1170
  store ptr %33, ptr %11, align 8, !dbg !1172
  %34 = load ptr, ptr %11, align 8, !dbg !1173
  %35 = load ptr, ptr %5, align 8, !dbg !1174
  %36 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %35, i32 0, i32 26, !dbg !1175
  %37 = load i32, ptr %36, align 8, !dbg !1175
  %38 = zext i32 %37 to i64, !dbg !1176
  %39 = getelementptr inbounds nuw i8, ptr %34, i64 %38, !dbg !1176
  store ptr %39, ptr %13, align 8, !dbg !1177
  br label %40, !dbg !1178

40:                                               ; preds = %44, %23
  %41 = load ptr, ptr %11, align 8, !dbg !1179
  %42 = load ptr, ptr %13, align 8, !dbg !1180
  %43 = icmp ult ptr %41, %42, !dbg !1181
  br i1 %43, label %44, label %54, !dbg !1178

44:                                               ; preds = %40
  %45 = load ptr, ptr %10, align 8, !dbg !1182
  %46 = getelementptr inbounds nuw i8, ptr %45, i32 1, !dbg !1182
  store ptr %46, ptr %10, align 8, !dbg !1182
  %47 = load i8, ptr %45, align 1, !dbg !1184
  store i8 %47, ptr %12, align 1, !dbg !1185
  %48 = load i8, ptr %12, align 1, !dbg !1186
  %49 = load ptr, ptr %11, align 8, !dbg !1187
  %50 = getelementptr inbounds nuw i8, ptr %49, i32 1, !dbg !1187
  store ptr %50, ptr %11, align 8, !dbg !1187
  store i8 %48, ptr %49, align 1, !dbg !1188
  %51 = load i8, ptr %12, align 1, !dbg !1189
  %52 = load ptr, ptr %11, align 8, !dbg !1190
  %53 = getelementptr inbounds nuw i8, ptr %52, i32 1, !dbg !1190
  store ptr %53, ptr %11, align 8, !dbg !1190
  store i8 %51, ptr %52, align 1, !dbg !1191
  br label %40, !dbg !1178, !llvm.loop !1192

54:                                               ; preds = %40
  br label %55, !dbg !1194

55:                                               ; preds = %54
  %56 = load i32, ptr %14, align 4, !dbg !1195
  %57 = add nsw i32 %56, 1, !dbg !1195
  store i32 %57, ptr %14, align 4, !dbg !1195
  br label %17, !dbg !1196, !llvm.loop !1197

58:                                               ; preds = %17
  ret void, !dbg !1199
}

; Function Attrs: noinline nounwind uwtable
define internal void @h2v2_fancy_upsample(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 !dbg !1200 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
    #dbg_declare(ptr %5, !1201, !DIExpression(), !1202)
  store ptr %1, ptr %6, align 8
    #dbg_declare(ptr %6, !1203, !DIExpression(), !1204)
  store ptr %2, ptr %7, align 8
    #dbg_declare(ptr %7, !1205, !DIExpression(), !1206)
  store ptr %3, ptr %8, align 8
    #dbg_declare(ptr %8, !1207, !DIExpression(), !1208)
    #dbg_declare(ptr %9, !1209, !DIExpression(), !1210)
  %20 = load ptr, ptr %8, align 8, !dbg !1211
  %21 = load ptr, ptr %20, align 8, !dbg !1212
  store ptr %21, ptr %9, align 8, !dbg !1210
    #dbg_declare(ptr %10, !1213, !DIExpression(), !1214)
    #dbg_declare(ptr %11, !1215, !DIExpression(), !1216)
    #dbg_declare(ptr %12, !1217, !DIExpression(), !1218)
    #dbg_declare(ptr %13, !1219, !DIExpression(), !1220)
    #dbg_declare(ptr %14, !1221, !DIExpression(), !1222)
    #dbg_declare(ptr %15, !1223, !DIExpression(), !1224)
    #dbg_declare(ptr %16, !1225, !DIExpression(), !1226)
    #dbg_declare(ptr %17, !1227, !DIExpression(), !1228)
    #dbg_declare(ptr %18, !1229, !DIExpression(), !1230)
    #dbg_declare(ptr %19, !1231, !DIExpression(), !1232)
  store i32 0, ptr %18, align 4, !dbg !1233
  store i32 0, ptr %17, align 4, !dbg !1234
  br label %22, !dbg !1235

22:                                               ; preds = %160, %4
  %23 = load i32, ptr %18, align 4, !dbg !1236
  %24 = load ptr, ptr %5, align 8, !dbg !1237
  %25 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %24, i32 0, i32 58, !dbg !1238
  %26 = load i32, ptr %25, align 8, !dbg !1238
  %27 = icmp slt i32 %23, %26, !dbg !1239
  br i1 %27, label %28, label %163, !dbg !1235

28:                                               ; preds = %22
  store i32 0, ptr %19, align 4, !dbg !1240
  br label %29, !dbg !1243

29:                                               ; preds = %157, %28
  %30 = load i32, ptr %19, align 4, !dbg !1244
  %31 = icmp slt i32 %30, 2, !dbg !1246
  br i1 %31, label %32, label %160, !dbg !1247

32:                                               ; preds = %29
  %33 = load ptr, ptr %7, align 8, !dbg !1248
  %34 = load i32, ptr %17, align 4, !dbg !1250
  %35 = sext i32 %34 to i64, !dbg !1248
  %36 = getelementptr inbounds ptr, ptr %33, i64 %35, !dbg !1248
  %37 = load ptr, ptr %36, align 8, !dbg !1248
  store ptr %37, ptr %10, align 8, !dbg !1251
  %38 = load i32, ptr %19, align 4, !dbg !1252
  %39 = icmp eq i32 %38, 0, !dbg !1254
  br i1 %39, label %40, label %47, !dbg !1254

40:                                               ; preds = %32
  %41 = load ptr, ptr %7, align 8, !dbg !1255
  %42 = load i32, ptr %17, align 4, !dbg !1256
  %43 = sub nsw i32 %42, 1, !dbg !1257
  %44 = sext i32 %43 to i64, !dbg !1255
  %45 = getelementptr inbounds ptr, ptr %41, i64 %44, !dbg !1255
  %46 = load ptr, ptr %45, align 8, !dbg !1255
  store ptr %46, ptr %11, align 8, !dbg !1258
  br label %54, !dbg !1259

47:                                               ; preds = %32
  %48 = load ptr, ptr %7, align 8, !dbg !1260
  %49 = load i32, ptr %17, align 4, !dbg !1261
  %50 = add nsw i32 %49, 1, !dbg !1262
  %51 = sext i32 %50 to i64, !dbg !1260
  %52 = getelementptr inbounds ptr, ptr %48, i64 %51, !dbg !1260
  %53 = load ptr, ptr %52, align 8, !dbg !1260
  store ptr %53, ptr %11, align 8, !dbg !1263
  br label %54

54:                                               ; preds = %47, %40
  %55 = load ptr, ptr %9, align 8, !dbg !1264
  %56 = load i32, ptr %18, align 4, !dbg !1265
  %57 = add nsw i32 %56, 1, !dbg !1265
  store i32 %57, ptr %18, align 4, !dbg !1265
  %58 = sext i32 %56 to i64, !dbg !1264
  %59 = getelementptr inbounds ptr, ptr %55, i64 %58, !dbg !1264
  %60 = load ptr, ptr %59, align 8, !dbg !1264
  store ptr %60, ptr %12, align 8, !dbg !1266
  %61 = load ptr, ptr %10, align 8, !dbg !1267
  %62 = getelementptr inbounds nuw i8, ptr %61, i32 1, !dbg !1267
  store ptr %62, ptr %10, align 8, !dbg !1267
  %63 = load i8, ptr %61, align 1, !dbg !1267
  %64 = zext i8 %63 to i32, !dbg !1267
  %65 = mul nsw i32 %64, 3, !dbg !1268
  %66 = load ptr, ptr %11, align 8, !dbg !1269
  %67 = getelementptr inbounds nuw i8, ptr %66, i32 1, !dbg !1269
  store ptr %67, ptr %11, align 8, !dbg !1269
  %68 = load i8, ptr %66, align 1, !dbg !1269
  %69 = zext i8 %68 to i32, !dbg !1269
  %70 = add nsw i32 %65, %69, !dbg !1270
  store i32 %70, ptr %13, align 4, !dbg !1271
  %71 = load ptr, ptr %10, align 8, !dbg !1272
  %72 = getelementptr inbounds nuw i8, ptr %71, i32 1, !dbg !1272
  store ptr %72, ptr %10, align 8, !dbg !1272
  %73 = load i8, ptr %71, align 1, !dbg !1272
  %74 = zext i8 %73 to i32, !dbg !1272
  %75 = mul nsw i32 %74, 3, !dbg !1273
  %76 = load ptr, ptr %11, align 8, !dbg !1274
  %77 = getelementptr inbounds nuw i8, ptr %76, i32 1, !dbg !1274
  store ptr %77, ptr %11, align 8, !dbg !1274
  %78 = load i8, ptr %76, align 1, !dbg !1274
  %79 = zext i8 %78 to i32, !dbg !1274
  %80 = add nsw i32 %75, %79, !dbg !1275
  store i32 %80, ptr %15, align 4, !dbg !1276
  %81 = load i32, ptr %13, align 4, !dbg !1277
  %82 = mul nsw i32 %81, 4, !dbg !1278
  %83 = add nsw i32 %82, 8, !dbg !1279
  %84 = ashr i32 %83, 4, !dbg !1280
  %85 = trunc i32 %84 to i8, !dbg !1281
  %86 = load ptr, ptr %12, align 8, !dbg !1282
  %87 = getelementptr inbounds nuw i8, ptr %86, i32 1, !dbg !1282
  store ptr %87, ptr %12, align 8, !dbg !1282
  store i8 %85, ptr %86, align 1, !dbg !1283
  %88 = load i32, ptr %13, align 4, !dbg !1284
  %89 = mul nsw i32 %88, 3, !dbg !1285
  %90 = load i32, ptr %15, align 4, !dbg !1286
  %91 = add nsw i32 %89, %90, !dbg !1287
  %92 = add nsw i32 %91, 7, !dbg !1288
  %93 = ashr i32 %92, 4, !dbg !1289
  %94 = trunc i32 %93 to i8, !dbg !1290
  %95 = load ptr, ptr %12, align 8, !dbg !1291
  %96 = getelementptr inbounds nuw i8, ptr %95, i32 1, !dbg !1291
  store ptr %96, ptr %12, align 8, !dbg !1291
  store i8 %94, ptr %95, align 1, !dbg !1292
  %97 = load i32, ptr %13, align 4, !dbg !1293
  store i32 %97, ptr %14, align 4, !dbg !1294
  %98 = load i32, ptr %15, align 4, !dbg !1295
  store i32 %98, ptr %13, align 4, !dbg !1296
  %99 = load ptr, ptr %6, align 8, !dbg !1297
  %100 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %99, i32 0, i32 10, !dbg !1299
  %101 = load i32, ptr %100, align 8, !dbg !1299
  %102 = sub i32 %101, 2, !dbg !1300
  store i32 %102, ptr %16, align 4, !dbg !1301
  br label %103, !dbg !1302

103:                                              ; preds = %137, %54
  %104 = load i32, ptr %16, align 4, !dbg !1303
  %105 = icmp ugt i32 %104, 0, !dbg !1305
  br i1 %105, label %106, label %140, !dbg !1306

106:                                              ; preds = %103
  %107 = load ptr, ptr %10, align 8, !dbg !1307
  %108 = getelementptr inbounds nuw i8, ptr %107, i32 1, !dbg !1307
  store ptr %108, ptr %10, align 8, !dbg !1307
  %109 = load i8, ptr %107, align 1, !dbg !1307
  %110 = zext i8 %109 to i32, !dbg !1307
  %111 = mul nsw i32 %110, 3, !dbg !1309
  %112 = load ptr, ptr %11, align 8, !dbg !1310
  %113 = getelementptr inbounds nuw i8, ptr %112, i32 1, !dbg !1310
  store ptr %113, ptr %11, align 8, !dbg !1310
  %114 = load i8, ptr %112, align 1, !dbg !1310
  %115 = zext i8 %114 to i32, !dbg !1310
  %116 = add nsw i32 %111, %115, !dbg !1311
  store i32 %116, ptr %15, align 4, !dbg !1312
  %117 = load i32, ptr %13, align 4, !dbg !1313
  %118 = mul nsw i32 %117, 3, !dbg !1314
  %119 = load i32, ptr %14, align 4, !dbg !1315
  %120 = add nsw i32 %118, %119, !dbg !1316
  %121 = add nsw i32 %120, 8, !dbg !1317
  %122 = ashr i32 %121, 4, !dbg !1318
  %123 = trunc i32 %122 to i8, !dbg !1319
  %124 = load ptr, ptr %12, align 8, !dbg !1320
  %125 = getelementptr inbounds nuw i8, ptr %124, i32 1, !dbg !1320
  store ptr %125, ptr %12, align 8, !dbg !1320
  store i8 %123, ptr %124, align 1, !dbg !1321
  %126 = load i32, ptr %13, align 4, !dbg !1322
  %127 = mul nsw i32 %126, 3, !dbg !1323
  %128 = load i32, ptr %15, align 4, !dbg !1324
  %129 = add nsw i32 %127, %128, !dbg !1325
  %130 = add nsw i32 %129, 7, !dbg !1326
  %131 = ashr i32 %130, 4, !dbg !1327
  %132 = trunc i32 %131 to i8, !dbg !1328
  %133 = load ptr, ptr %12, align 8, !dbg !1329
  %134 = getelementptr inbounds nuw i8, ptr %133, i32 1, !dbg !1329
  store ptr %134, ptr %12, align 8, !dbg !1329
  store i8 %132, ptr %133, align 1, !dbg !1330
  %135 = load i32, ptr %13, align 4, !dbg !1331
  store i32 %135, ptr %14, align 4, !dbg !1332
  %136 = load i32, ptr %15, align 4, !dbg !1333
  store i32 %136, ptr %13, align 4, !dbg !1334
  br label %137, !dbg !1335

137:                                              ; preds = %106
  %138 = load i32, ptr %16, align 4, !dbg !1336
  %139 = add i32 %138, -1, !dbg !1336
  store i32 %139, ptr %16, align 4, !dbg !1336
  br label %103, !dbg !1337, !llvm.loop !1338

140:                                              ; preds = %103
  %141 = load i32, ptr %13, align 4, !dbg !1340
  %142 = mul nsw i32 %141, 3, !dbg !1341
  %143 = load i32, ptr %14, align 4, !dbg !1342
  %144 = add nsw i32 %142, %143, !dbg !1343
  %145 = add nsw i32 %144, 8, !dbg !1344
  %146 = ashr i32 %145, 4, !dbg !1345
  %147 = trunc i32 %146 to i8, !dbg !1346
  %148 = load ptr, ptr %12, align 8, !dbg !1347
  %149 = getelementptr inbounds nuw i8, ptr %148, i32 1, !dbg !1347
  store ptr %149, ptr %12, align 8, !dbg !1347
  store i8 %147, ptr %148, align 1, !dbg !1348
  %150 = load i32, ptr %13, align 4, !dbg !1349
  %151 = mul nsw i32 %150, 4, !dbg !1350
  %152 = add nsw i32 %151, 7, !dbg !1351
  %153 = ashr i32 %152, 4, !dbg !1352
  %154 = trunc i32 %153 to i8, !dbg !1353
  %155 = load ptr, ptr %12, align 8, !dbg !1354
  %156 = getelementptr inbounds nuw i8, ptr %155, i32 1, !dbg !1354
  store ptr %156, ptr %12, align 8, !dbg !1354
  store i8 %154, ptr %155, align 1, !dbg !1355
  br label %157, !dbg !1356

157:                                              ; preds = %140
  %158 = load i32, ptr %19, align 4, !dbg !1357
  %159 = add nsw i32 %158, 1, !dbg !1357
  store i32 %159, ptr %19, align 4, !dbg !1357
  br label %29, !dbg !1358, !llvm.loop !1359

160:                                              ; preds = %29
  %161 = load i32, ptr %17, align 4, !dbg !1361
  %162 = add nsw i32 %161, 1, !dbg !1361
  store i32 %162, ptr %17, align 4, !dbg !1361
  br label %22, !dbg !1235, !llvm.loop !1362

163:                                              ; preds = %22
  ret void, !dbg !1364
}

; Function Attrs: noinline nounwind uwtable
define internal void @h2v2_upsample(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 !dbg !1365 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i8, align 1
  %13 = alloca ptr, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
    #dbg_declare(ptr %5, !1366, !DIExpression(), !1367)
  store ptr %1, ptr %6, align 8
    #dbg_declare(ptr %6, !1368, !DIExpression(), !1369)
  store ptr %2, ptr %7, align 8
    #dbg_declare(ptr %7, !1370, !DIExpression(), !1371)
  store ptr %3, ptr %8, align 8
    #dbg_declare(ptr %8, !1372, !DIExpression(), !1373)
    #dbg_declare(ptr %9, !1374, !DIExpression(), !1375)
  %16 = load ptr, ptr %8, align 8, !dbg !1376
  %17 = load ptr, ptr %16, align 8, !dbg !1377
  store ptr %17, ptr %9, align 8, !dbg !1375
    #dbg_declare(ptr %10, !1378, !DIExpression(), !1379)
    #dbg_declare(ptr %11, !1380, !DIExpression(), !1381)
    #dbg_declare(ptr %12, !1382, !DIExpression(), !1383)
    #dbg_declare(ptr %13, !1384, !DIExpression(), !1385)
    #dbg_declare(ptr %14, !1386, !DIExpression(), !1387)
    #dbg_declare(ptr %15, !1388, !DIExpression(), !1389)
  store i32 0, ptr %15, align 4, !dbg !1390
  store i32 0, ptr %14, align 4, !dbg !1391
  br label %18, !dbg !1392

18:                                               ; preds = %55, %4
  %19 = load i32, ptr %15, align 4, !dbg !1393
  %20 = load ptr, ptr %5, align 8, !dbg !1394
  %21 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %20, i32 0, i32 58, !dbg !1395
  %22 = load i32, ptr %21, align 8, !dbg !1395
  %23 = icmp slt i32 %19, %22, !dbg !1396
  br i1 %23, label %24, label %68, !dbg !1392

24:                                               ; preds = %18
  %25 = load ptr, ptr %7, align 8, !dbg !1397
  %26 = load i32, ptr %14, align 4, !dbg !1399
  %27 = sext i32 %26 to i64, !dbg !1397
  %28 = getelementptr inbounds ptr, ptr %25, i64 %27, !dbg !1397
  %29 = load ptr, ptr %28, align 8, !dbg !1397
  store ptr %29, ptr %10, align 8, !dbg !1400
  %30 = load ptr, ptr %9, align 8, !dbg !1401
  %31 = load i32, ptr %15, align 4, !dbg !1402
  %32 = sext i32 %31 to i64, !dbg !1401
  %33 = getelementptr inbounds ptr, ptr %30, i64 %32, !dbg !1401
  %34 = load ptr, ptr %33, align 8, !dbg !1401
  store ptr %34, ptr %11, align 8, !dbg !1403
  %35 = load ptr, ptr %11, align 8, !dbg !1404
  %36 = load ptr, ptr %5, align 8, !dbg !1405
  %37 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %36, i32 0, i32 26, !dbg !1406
  %38 = load i32, ptr %37, align 8, !dbg !1406
  %39 = zext i32 %38 to i64, !dbg !1407
  %40 = getelementptr inbounds nuw i8, ptr %35, i64 %39, !dbg !1407
  store ptr %40, ptr %13, align 8, !dbg !1408
  br label %41, !dbg !1409

41:                                               ; preds = %45, %24
  %42 = load ptr, ptr %11, align 8, !dbg !1410
  %43 = load ptr, ptr %13, align 8, !dbg !1411
  %44 = icmp ult ptr %42, %43, !dbg !1412
  br i1 %44, label %45, label %55, !dbg !1409

45:                                               ; preds = %41
  %46 = load ptr, ptr %10, align 8, !dbg !1413
  %47 = getelementptr inbounds nuw i8, ptr %46, i32 1, !dbg !1413
  store ptr %47, ptr %10, align 8, !dbg !1413
  %48 = load i8, ptr %46, align 1, !dbg !1415
  store i8 %48, ptr %12, align 1, !dbg !1416
  %49 = load i8, ptr %12, align 1, !dbg !1417
  %50 = load ptr, ptr %11, align 8, !dbg !1418
  %51 = getelementptr inbounds nuw i8, ptr %50, i32 1, !dbg !1418
  store ptr %51, ptr %11, align 8, !dbg !1418
  store i8 %49, ptr %50, align 1, !dbg !1419
  %52 = load i8, ptr %12, align 1, !dbg !1420
  %53 = load ptr, ptr %11, align 8, !dbg !1421
  %54 = getelementptr inbounds nuw i8, ptr %53, i32 1, !dbg !1421
  store ptr %54, ptr %11, align 8, !dbg !1421
  store i8 %52, ptr %53, align 1, !dbg !1422
  br label %41, !dbg !1409, !llvm.loop !1423

55:                                               ; preds = %41
  %56 = load ptr, ptr %9, align 8, !dbg !1425
  %57 = load i32, ptr %15, align 4, !dbg !1426
  %58 = load ptr, ptr %9, align 8, !dbg !1427
  %59 = load i32, ptr %15, align 4, !dbg !1428
  %60 = add nsw i32 %59, 1, !dbg !1429
  %61 = load ptr, ptr %5, align 8, !dbg !1430
  %62 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %61, i32 0, i32 26, !dbg !1431
  %63 = load i32, ptr %62, align 8, !dbg !1431
  call void @jcopy_sample_rows(ptr noundef %56, i32 noundef %57, ptr noundef %58, i32 noundef %60, i32 noundef 1, i32 noundef %63), !dbg !1432
  %64 = load i32, ptr %14, align 4, !dbg !1433
  %65 = add nsw i32 %64, 1, !dbg !1433
  store i32 %65, ptr %14, align 4, !dbg !1433
  %66 = load i32, ptr %15, align 4, !dbg !1434
  %67 = add nsw i32 %66, 2, !dbg !1434
  store i32 %67, ptr %15, align 4, !dbg !1434
  br label %18, !dbg !1392, !llvm.loop !1435

68:                                               ; preds = %18
  ret void, !dbg !1437
}

; Function Attrs: noinline nounwind uwtable
define internal void @int_upsample(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 !dbg !1438 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  %15 = alloca ptr, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
    #dbg_declare(ptr %5, !1439, !DIExpression(), !1440)
  store ptr %1, ptr %6, align 8
    #dbg_declare(ptr %6, !1441, !DIExpression(), !1442)
  store ptr %2, ptr %7, align 8
    #dbg_declare(ptr %7, !1443, !DIExpression(), !1444)
  store ptr %3, ptr %8, align 8
    #dbg_declare(ptr %8, !1445, !DIExpression(), !1446)
    #dbg_declare(ptr %9, !1447, !DIExpression(), !1448)
  %20 = load ptr, ptr %5, align 8, !dbg !1449
  %21 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %20, i32 0, i32 81, !dbg !1450
  %22 = load ptr, ptr %21, align 8, !dbg !1450
  store ptr %22, ptr %9, align 8, !dbg !1448
    #dbg_declare(ptr %10, !1451, !DIExpression(), !1452)
  %23 = load ptr, ptr %8, align 8, !dbg !1453
  %24 = load ptr, ptr %23, align 8, !dbg !1454
  store ptr %24, ptr %10, align 8, !dbg !1452
    #dbg_declare(ptr %11, !1455, !DIExpression(), !1456)
    #dbg_declare(ptr %12, !1457, !DIExpression(), !1458)
    #dbg_declare(ptr %13, !1459, !DIExpression(), !1460)
    #dbg_declare(ptr %14, !1461, !DIExpression(), !1462)
    #dbg_declare(ptr %15, !1463, !DIExpression(), !1464)
    #dbg_declare(ptr %16, !1465, !DIExpression(), !1466)
    #dbg_declare(ptr %17, !1467, !DIExpression(), !1468)
    #dbg_declare(ptr %18, !1469, !DIExpression(), !1470)
    #dbg_declare(ptr %19, !1471, !DIExpression(), !1472)
  %25 = load ptr, ptr %9, align 8, !dbg !1473
  %26 = getelementptr inbounds nuw %struct.my_upsampler, ptr %25, i32 0, i32 6, !dbg !1474
  %27 = load ptr, ptr %6, align 8, !dbg !1475
  %28 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %27, i32 0, i32 1, !dbg !1476
  %29 = load i32, ptr %28, align 4, !dbg !1476
  %30 = sext i32 %29 to i64, !dbg !1473
  %31 = getelementptr inbounds [10 x i8], ptr %26, i64 0, i64 %30, !dbg !1473
  %32 = load i8, ptr %31, align 1, !dbg !1473
  %33 = zext i8 %32 to i32, !dbg !1473
  store i32 %33, ptr %16, align 4, !dbg !1477
  %34 = load ptr, ptr %9, align 8, !dbg !1478
  %35 = getelementptr inbounds nuw %struct.my_upsampler, ptr %34, i32 0, i32 7, !dbg !1479
  %36 = load ptr, ptr %6, align 8, !dbg !1480
  %37 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %36, i32 0, i32 1, !dbg !1481
  %38 = load i32, ptr %37, align 4, !dbg !1481
  %39 = sext i32 %38 to i64, !dbg !1478
  %40 = getelementptr inbounds [10 x i8], ptr %35, i64 0, i64 %39, !dbg !1478
  %41 = load i8, ptr %40, align 1, !dbg !1478
  %42 = zext i8 %41 to i32, !dbg !1478
  store i32 %42, ptr %17, align 4, !dbg !1482
  store i32 0, ptr %19, align 4, !dbg !1483
  store i32 0, ptr %18, align 4, !dbg !1484
  br label %43, !dbg !1485

43:                                               ; preds = %100, %4
  %44 = load i32, ptr %19, align 4, !dbg !1486
  %45 = load ptr, ptr %5, align 8, !dbg !1487
  %46 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %45, i32 0, i32 58, !dbg !1488
  %47 = load i32, ptr %46, align 8, !dbg !1488
  %48 = icmp slt i32 %44, %47, !dbg !1489
  br i1 %48, label %49, label %106, !dbg !1485

49:                                               ; preds = %43
  %50 = load ptr, ptr %7, align 8, !dbg !1490
  %51 = load i32, ptr %18, align 4, !dbg !1492
  %52 = sext i32 %51 to i64, !dbg !1490
  %53 = getelementptr inbounds ptr, ptr %50, i64 %52, !dbg !1490
  %54 = load ptr, ptr %53, align 8, !dbg !1490
  store ptr %54, ptr %11, align 8, !dbg !1493
  %55 = load ptr, ptr %10, align 8, !dbg !1494
  %56 = load i32, ptr %19, align 4, !dbg !1495
  %57 = sext i32 %56 to i64, !dbg !1494
  %58 = getelementptr inbounds ptr, ptr %55, i64 %57, !dbg !1494
  %59 = load ptr, ptr %58, align 8, !dbg !1494
  store ptr %59, ptr %12, align 8, !dbg !1496
  %60 = load ptr, ptr %12, align 8, !dbg !1497
  %61 = load ptr, ptr %5, align 8, !dbg !1498
  %62 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %61, i32 0, i32 26, !dbg !1499
  %63 = load i32, ptr %62, align 8, !dbg !1499
  %64 = zext i32 %63 to i64, !dbg !1500
  %65 = getelementptr inbounds nuw i8, ptr %60, i64 %64, !dbg !1500
  store ptr %65, ptr %15, align 8, !dbg !1501
  br label %66, !dbg !1502

66:                                               ; preds = %85, %49
  %67 = load ptr, ptr %12, align 8, !dbg !1503
  %68 = load ptr, ptr %15, align 8, !dbg !1504
  %69 = icmp ult ptr %67, %68, !dbg !1505
  br i1 %69, label %70, label %86, !dbg !1502

70:                                               ; preds = %66
  %71 = load ptr, ptr %11, align 8, !dbg !1506
  %72 = getelementptr inbounds nuw i8, ptr %71, i32 1, !dbg !1506
  store ptr %72, ptr %11, align 8, !dbg !1506
  %73 = load i8, ptr %71, align 1, !dbg !1508
  store i8 %73, ptr %13, align 1, !dbg !1509
  %74 = load i32, ptr %16, align 4, !dbg !1510
  store i32 %74, ptr %14, align 4, !dbg !1512
  br label %75, !dbg !1513

75:                                               ; preds = %82, %70
  %76 = load i32, ptr %14, align 4, !dbg !1514
  %77 = icmp sgt i32 %76, 0, !dbg !1516
  br i1 %77, label %78, label %85, !dbg !1517

78:                                               ; preds = %75
  %79 = load i8, ptr %13, align 1, !dbg !1518
  %80 = load ptr, ptr %12, align 8, !dbg !1520
  %81 = getelementptr inbounds nuw i8, ptr %80, i32 1, !dbg !1520
  store ptr %81, ptr %12, align 8, !dbg !1520
  store i8 %79, ptr %80, align 1, !dbg !1521
  br label %82, !dbg !1522

82:                                               ; preds = %78
  %83 = load i32, ptr %14, align 4, !dbg !1523
  %84 = add nsw i32 %83, -1, !dbg !1523
  store i32 %84, ptr %14, align 4, !dbg !1523
  br label %75, !dbg !1524, !llvm.loop !1525

85:                                               ; preds = %75
  br label %66, !dbg !1502, !llvm.loop !1527

86:                                               ; preds = %66
  %87 = load i32, ptr %17, align 4, !dbg !1529
  %88 = icmp sgt i32 %87, 1, !dbg !1531
  br i1 %88, label %89, label %100, !dbg !1531

89:                                               ; preds = %86
  %90 = load ptr, ptr %10, align 8, !dbg !1532
  %91 = load i32, ptr %19, align 4, !dbg !1534
  %92 = load ptr, ptr %10, align 8, !dbg !1535
  %93 = load i32, ptr %19, align 4, !dbg !1536
  %94 = add nsw i32 %93, 1, !dbg !1537
  %95 = load i32, ptr %17, align 4, !dbg !1538
  %96 = sub nsw i32 %95, 1, !dbg !1539
  %97 = load ptr, ptr %5, align 8, !dbg !1540
  %98 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %97, i32 0, i32 26, !dbg !1541
  %99 = load i32, ptr %98, align 8, !dbg !1541
  call void @jcopy_sample_rows(ptr noundef %90, i32 noundef %91, ptr noundef %92, i32 noundef %94, i32 noundef %96, i32 noundef %99), !dbg !1542
  br label %100, !dbg !1543

100:                                              ; preds = %89, %86
  %101 = load i32, ptr %18, align 4, !dbg !1544
  %102 = add nsw i32 %101, 1, !dbg !1544
  store i32 %102, ptr %18, align 4, !dbg !1544
  %103 = load i32, ptr %17, align 4, !dbg !1545
  %104 = load i32, ptr %19, align 4, !dbg !1546
  %105 = add nsw i32 %104, %103, !dbg !1546
  store i32 %105, ptr %19, align 4, !dbg !1546
  br label %43, !dbg !1485, !llvm.loop !1547

106:                                              ; preds = %43
  ret void, !dbg !1549
}

declare i64 @jround_up(i64 noundef, i64 noundef) #1

declare void @jcopy_sample_rows(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!593, !594, !595, !596, !597, !598, !599}
!llvm.ident = !{!600}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !154, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jdsample.c", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "4363ec24ab3d5df946f550eac583708a")
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
!154 = !{!155, !179, !194, !553, !385, !209, !254, !193, !206}
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "my_upsample_ptr", file: !1, line: 61, baseType: !156)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "my_upsampler", file: !1, line: 59, baseType: !158)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 33, size: 2048, elements: !159)
!159 = !{!160, !579, !581, !587, !588, !589, !590, !592}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "pub", scope: !158, file: !1, line: 34, baseType: !161, size: 192)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_upsampler", file: !24, line: 230, size: 192, elements: !162)
!162 = !{!163, !577, !578}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !161, file: !24, line: 231, baseType: !164, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = !DISubroutineType(types: !166)
!166 = !{null, !167}
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "j_decompress_ptr", file: !4, line: 250, baseType: !168)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_decompress_struct", file: !4, line: 394, size: 4928, elements: !170)
!170 = !{!171, !298, !299, !300, !301, !302, !325, !326, !327, !328, !330, !331, !332, !333, !335, !336, !337, !339, !340, !341, !342, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !364, !377, !393, !394, !395, !421, !422, !423, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !445, !446, !447, !448, !452, !453, !454, !455, !456, !457, !464, !478, !496, !505, !515, !530, !539, !552, !554, !563}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !169, file: !4, line: 395, baseType: !172, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_error_mgr", file: !4, line: 618, size: 1344, elements: !174)
!174 = !{!175, !266, !267, !268, !274, !275, !276, !287, !288, !289, !294, !295, !296, !297}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "error_exit", scope: !173, file: !4, line: 620, baseType: !176, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = !DISubroutineType(types: !178)
!178 = !{null, !179}
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "j_common_ptr", file: !4, line: 248, baseType: !180)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_common_struct", file: !4, line: 240, size: 256, elements: !182)
!182 = !{!183, !184, !255, !264, !265}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !181, file: !4, line: 241, baseType: !172, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !181, file: !4, line: 241, baseType: !185, size: 64, offset: 64)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_memory_mgr", file: !4, line: 731, size: 768, elements: !187)
!187 = !{!188, !197, !198, !210, !224, !232, !239, !240, !244, !248, !252, !253}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_small", scope: !186, file: !4, line: 733, baseType: !189, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = !DISubroutineType(types: !191)
!191 = !{!192, !179, !193, !194}
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!193 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !195, line: 18, baseType: !196)
!195 = !DIFile(filename: "/usr/local/lib/clang/20/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!196 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_large", scope: !186, file: !4, line: 735, baseType: !189, size: 64, offset: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_sarray", scope: !186, file: !4, line: 737, baseType: !199, size: 64, offset: 128)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = !DISubroutineType(types: !201)
!201 = !{!202, !179, !193, !209, !209}
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPARRAY", file: !4, line: 67, baseType: !203)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPROW", file: !4, line: 66, baseType: !205)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPLE", file: !207, line: 59, baseType: !208)
!207 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jmorecfg.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "56a0eda58fafa6bdd5498f702a998c09")
!208 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "JDIMENSION", file: !207, line: 171, baseType: !5)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_barray", scope: !186, file: !4, line: 740, baseType: !211, size: 64, offset: 192)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = !DISubroutineType(types: !213)
!213 = !{!214, !179, !193, !209, !209}
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "JBLOCKARRAY", file: !4, line: 72, baseType: !215)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "JBLOCKROW", file: !4, line: 71, baseType: !217)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "JBLOCK", file: !4, line: 70, baseType: !219)
!219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 1024, elements: !222)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "JCOEF", file: !207, line: 99, baseType: !221)
!221 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!222 = !{!223}
!223 = !DISubrange(count: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "request_virt_sarray", scope: !186, file: !4, line: 743, baseType: !225, size: 64, offset: 256)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = !DISubroutineType(types: !227)
!227 = !{!228, !179, !193, !231, !209, !209, !209}
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "jvirt_sarray_ptr", file: !4, line: 727, baseType: !229)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DICompositeType(tag: DW_TAG_structure_type, name: "jvirt_sarray_control", file: !4, line: 727, flags: DIFlagFwdDecl)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "boolean", file: !207, line: 227, baseType: !193)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "request_virt_barray", scope: !186, file: !4, line: 749, baseType: !233, size: 64, offset: 320)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DISubroutineType(types: !235)
!235 = !{!236, !179, !193, !231, !209, !209, !209}
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "jvirt_barray_ptr", file: !4, line: 728, baseType: !237)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = !DICompositeType(tag: DW_TAG_structure_type, name: "jvirt_barray_control", file: !4, line: 728, flags: DIFlagFwdDecl)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "realize_virt_arrays", scope: !186, file: !4, line: 755, baseType: !176, size: 64, offset: 384)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "access_virt_sarray", scope: !186, file: !4, line: 756, baseType: !241, size: 64, offset: 448)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = !DISubroutineType(types: !243)
!243 = !{!202, !179, !228, !209, !209, !231}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "access_virt_barray", scope: !186, file: !4, line: 761, baseType: !245, size: 64, offset: 512)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!246 = !DISubroutineType(types: !247)
!247 = !{!214, !179, !236, !209, !209, !231}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "free_pool", scope: !186, file: !4, line: 766, baseType: !249, size: 64, offset: 576)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = !DISubroutineType(types: !251)
!251 = !{null, !179, !193}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "self_destruct", scope: !186, file: !4, line: 767, baseType: !176, size: 64, offset: 640)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "max_memory_to_use", scope: !186, file: !4, line: 774, baseType: !254, size: 64, offset: 704)
!254 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "progress", scope: !181, file: !4, line: 241, baseType: !256, size: 64, offset: 128)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_progress_mgr", file: !4, line: 676, size: 256, elements: !258)
!258 = !{!259, !260, !261, !262, !263}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "progress_monitor", scope: !257, file: !4, line: 677, baseType: !176, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "pass_counter", scope: !257, file: !4, line: 679, baseType: !254, size: 64, offset: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "pass_limit", scope: !257, file: !4, line: 680, baseType: !254, size: 64, offset: 128)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "completed_passes", scope: !257, file: !4, line: 681, baseType: !193, size: 32, offset: 192)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "total_passes", scope: !257, file: !4, line: 682, baseType: !193, size: 32, offset: 224)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "is_decompressor", scope: !181, file: !4, line: 241, baseType: !231, size: 32, offset: 192)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "global_state", scope: !181, file: !4, line: 241, baseType: !193, size: 32, offset: 224)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "emit_message", scope: !173, file: !4, line: 622, baseType: !249, size: 64, offset: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "output_message", scope: !173, file: !4, line: 624, baseType: !176, size: 64, offset: 128)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "format_message", scope: !173, file: !4, line: 626, baseType: !269, size: 64, offset: 192)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = !DISubroutineType(types: !271)
!271 = !{null, !179, !272}
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "reset_error_mgr", scope: !173, file: !4, line: 629, baseType: !176, size: 64, offset: 256)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "msg_code", scope: !173, file: !4, line: 634, baseType: !193, size: 32, offset: 320)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "msg_parm", scope: !173, file: !4, line: 639, baseType: !277, size: 640, offset: 352)
!277 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !173, file: !4, line: 636, size: 640, elements: !278)
!278 = !{!279, !283}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !277, file: !4, line: 637, baseType: !280, size: 256)
!280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, size: 256, elements: !281)
!281 = !{!282}
!282 = !DISubrange(count: 8)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !277, file: !4, line: 638, baseType: !284, size: 640)
!284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !273, size: 640, elements: !285)
!285 = !{!286}
!286 = !DISubrange(count: 80)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "trace_level", scope: !173, file: !4, line: 643, baseType: !193, size: 32, offset: 992)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "num_warnings", scope: !173, file: !4, line: 651, baseType: !254, size: 64, offset: 1024)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "jpeg_message_table", scope: !173, file: !4, line: 663, baseType: !290, size: 64, offset: 1088)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !292)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !273)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "last_jpeg_message", scope: !173, file: !4, line: 664, baseType: !193, size: 32, offset: 1152)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "addon_message_table", scope: !173, file: !4, line: 668, baseType: !290, size: 64, offset: 1216)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "first_addon_message", scope: !173, file: !4, line: 669, baseType: !193, size: 32, offset: 1280)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "last_addon_message", scope: !173, file: !4, line: 670, baseType: !193, size: 32, offset: 1312)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !169, file: !4, line: 395, baseType: !185, size: 64, offset: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "progress", scope: !169, file: !4, line: 395, baseType: !256, size: 64, offset: 128)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "is_decompressor", scope: !169, file: !4, line: 395, baseType: !231, size: 32, offset: 192)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "global_state", scope: !169, file: !4, line: 395, baseType: !193, size: 32, offset: 224)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !169, file: !4, line: 398, baseType: !303, size: 64, offset: 256)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_source_mgr", file: !4, line: 700, size: 448, elements: !305)
!305 = !{!306, !310, !311, !312, !316, !320, !324}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "next_input_byte", scope: !304, file: !4, line: 701, baseType: !307, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !309)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "JOCTET", file: !207, line: 110, baseType: !208)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_in_buffer", scope: !304, file: !4, line: 702, baseType: !194, size: 64, offset: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "init_source", scope: !304, file: !4, line: 704, baseType: !164, size: 64, offset: 128)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "fill_input_buffer", scope: !304, file: !4, line: 705, baseType: !313, size: 64, offset: 192)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DISubroutineType(types: !315)
!315 = !{!231, !167}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "skip_input_data", scope: !304, file: !4, line: 706, baseType: !317, size: 64, offset: 256)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = !DISubroutineType(types: !319)
!319 = !{null, !167, !254}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "resync_to_restart", scope: !304, file: !4, line: 707, baseType: !321, size: 64, offset: 320)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = !DISubroutineType(types: !323)
!323 = !{!231, !167, !193}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "term_source", scope: !304, file: !4, line: 708, baseType: !164, size: 64, offset: 384)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "image_width", scope: !169, file: !4, line: 403, baseType: !209, size: 32, offset: 320)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "image_height", scope: !169, file: !4, line: 404, baseType: !209, size: 32, offset: 352)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "num_components", scope: !169, file: !4, line: 405, baseType: !193, size: 32, offset: 384)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "jpeg_color_space", scope: !169, file: !4, line: 406, baseType: !329, size: 32, offset: 416)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_COLOR_SPACE", file: !4, line: 201, baseType: !3)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "out_color_space", scope: !169, file: !4, line: 413, baseType: !329, size: 32, offset: 448)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "scale_num", scope: !169, file: !4, line: 415, baseType: !5, size: 32, offset: 480)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "scale_denom", scope: !169, file: !4, line: 415, baseType: !5, size: 32, offset: 512)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "output_gamma", scope: !169, file: !4, line: 417, baseType: !334, size: 64, offset: 576)
!334 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "buffered_image", scope: !169, file: !4, line: 419, baseType: !231, size: 32, offset: 640)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "raw_data_out", scope: !169, file: !4, line: 420, baseType: !231, size: 32, offset: 672)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "dct_method", scope: !169, file: !4, line: 422, baseType: !338, size: 32, offset: 704)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_DCT_METHOD", file: !4, line: 209, baseType: !13)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "do_fancy_upsampling", scope: !169, file: !4, line: 423, baseType: !231, size: 32, offset: 736)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "do_block_smoothing", scope: !169, file: !4, line: 424, baseType: !231, size: 32, offset: 768)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "quantize_colors", scope: !169, file: !4, line: 426, baseType: !231, size: 32, offset: 800)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "dither_mode", scope: !169, file: !4, line: 428, baseType: !343, size: 32, offset: 832)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_DITHER_MODE", file: !4, line: 224, baseType: !18)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "two_pass_quantize", scope: !169, file: !4, line: 429, baseType: !231, size: 32, offset: 864)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "desired_number_of_colors", scope: !169, file: !4, line: 430, baseType: !193, size: 32, offset: 896)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "enable_1pass_quant", scope: !169, file: !4, line: 432, baseType: !231, size: 32, offset: 928)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "enable_external_quant", scope: !169, file: !4, line: 433, baseType: !231, size: 32, offset: 960)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "enable_2pass_quant", scope: !169, file: !4, line: 434, baseType: !231, size: 32, offset: 992)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "output_width", scope: !169, file: !4, line: 442, baseType: !209, size: 32, offset: 1024)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "output_height", scope: !169, file: !4, line: 443, baseType: !209, size: 32, offset: 1056)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "out_color_components", scope: !169, file: !4, line: 444, baseType: !193, size: 32, offset: 1088)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "output_components", scope: !169, file: !4, line: 445, baseType: !193, size: 32, offset: 1120)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "rec_outbuf_height", scope: !169, file: !4, line: 449, baseType: !193, size: 32, offset: 1152)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "actual_number_of_colors", scope: !169, file: !4, line: 461, baseType: !193, size: 32, offset: 1184)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "colormap", scope: !169, file: !4, line: 462, baseType: !202, size: 64, offset: 1216)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "output_scanline", scope: !169, file: !4, line: 472, baseType: !209, size: 32, offset: 1280)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "input_scan_number", scope: !169, file: !4, line: 477, baseType: !193, size: 32, offset: 1312)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "input_iMCU_row", scope: !169, file: !4, line: 478, baseType: !209, size: 32, offset: 1344)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "output_scan_number", scope: !169, file: !4, line: 484, baseType: !193, size: 32, offset: 1376)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "output_iMCU_row", scope: !169, file: !4, line: 485, baseType: !209, size: 32, offset: 1408)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "coef_bits", scope: !169, file: !4, line: 494, baseType: !362, size: 64, offset: 1472)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, size: 2048, elements: !222)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "quant_tbl_ptrs", scope: !169, file: !4, line: 505, baseType: !365, size: 256, offset: 1536)
!365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !366, size: 256, elements: !375)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "JQUANT_TBL", file: !4, line: 95, baseType: !368)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 83, size: 1056, elements: !369)
!369 = !{!370, !374}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "quantval", scope: !368, file: !4, line: 88, baseType: !371, size: 1024)
!371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !372, size: 1024, elements: !222)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT16", file: !207, line: 147, baseType: !373)
!373 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "sent_table", scope: !368, file: !4, line: 94, baseType: !231, size: 32, offset: 1024)
!375 = !{!376}
!376 = !DISubrange(count: 4)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "dc_huff_tbl_ptrs", scope: !169, file: !4, line: 508, baseType: !378, size: 256, offset: 1792)
!378 = !DICompositeType(tag: DW_TAG_array_type, baseType: !379, size: 256, elements: !375)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "JHUFF_TBL", file: !4, line: 111, baseType: !381)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 100, size: 2240, elements: !382)
!382 = !{!383, !388, !392}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !381, file: !4, line: 102, baseType: !384, size: 136)
!384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !385, size: 136, elements: !386)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT8", file: !207, line: 135, baseType: !208)
!386 = !{!387}
!387 = !DISubrange(count: 17)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "huffval", scope: !381, file: !4, line: 104, baseType: !389, size: 2048, offset: 136)
!389 = !DICompositeType(tag: DW_TAG_array_type, baseType: !385, size: 2048, elements: !390)
!390 = !{!391}
!391 = !DISubrange(count: 256)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "sent_table", scope: !381, file: !4, line: 110, baseType: !231, size: 32, offset: 2208)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "ac_huff_tbl_ptrs", scope: !169, file: !4, line: 509, baseType: !378, size: 256, offset: 2048)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "data_precision", scope: !169, file: !4, line: 516, baseType: !193, size: 32, offset: 2304)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "comp_info", scope: !169, file: !4, line: 518, baseType: !396, size: 64, offset: 2368)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "jpeg_component_info", file: !4, line: 179, baseType: !398)
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 116, size: 768, elements: !399)
!399 = !{!400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "component_id", scope: !398, file: !4, line: 120, baseType: !193, size: 32)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "component_index", scope: !398, file: !4, line: 121, baseType: !193, size: 32, offset: 32)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "h_samp_factor", scope: !398, file: !4, line: 122, baseType: !193, size: 32, offset: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "v_samp_factor", scope: !398, file: !4, line: 123, baseType: !193, size: 32, offset: 96)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "quant_tbl_no", scope: !398, file: !4, line: 124, baseType: !193, size: 32, offset: 128)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "dc_tbl_no", scope: !398, file: !4, line: 129, baseType: !193, size: 32, offset: 160)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tbl_no", scope: !398, file: !4, line: 130, baseType: !193, size: 32, offset: 192)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "width_in_blocks", scope: !398, file: !4, line: 139, baseType: !209, size: 32, offset: 224)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "height_in_blocks", scope: !398, file: !4, line: 140, baseType: !209, size: 32, offset: 256)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "DCT_scaled_size", scope: !398, file: !4, line: 147, baseType: !193, size: 32, offset: 288)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "downsampled_width", scope: !398, file: !4, line: 154, baseType: !209, size: 32, offset: 320)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "downsampled_height", scope: !398, file: !4, line: 155, baseType: !209, size: 32, offset: 352)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "component_needed", scope: !398, file: !4, line: 160, baseType: !231, size: 32, offset: 384)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_width", scope: !398, file: !4, line: 164, baseType: !193, size: 32, offset: 416)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_height", scope: !398, file: !4, line: 165, baseType: !193, size: 32, offset: 448)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_blocks", scope: !398, file: !4, line: 166, baseType: !193, size: 32, offset: 480)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_sample_width", scope: !398, file: !4, line: 167, baseType: !193, size: 32, offset: 512)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "last_col_width", scope: !398, file: !4, line: 168, baseType: !193, size: 32, offset: 544)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "last_row_height", scope: !398, file: !4, line: 169, baseType: !193, size: 32, offset: 576)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "quant_table", scope: !398, file: !4, line: 175, baseType: !366, size: 64, offset: 640)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "dct_table", scope: !398, file: !4, line: 178, baseType: !192, size: 64, offset: 704)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "progressive_mode", scope: !169, file: !4, line: 521, baseType: !231, size: 32, offset: 2432)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "arith_code", scope: !169, file: !4, line: 522, baseType: !231, size: 32, offset: 2464)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "arith_dc_L", scope: !169, file: !4, line: 524, baseType: !424, size: 128, offset: 2496)
!424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !385, size: 128, elements: !425)
!425 = !{!426}
!426 = !DISubrange(count: 16)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "arith_dc_U", scope: !169, file: !4, line: 525, baseType: !424, size: 128, offset: 2624)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "arith_ac_K", scope: !169, file: !4, line: 526, baseType: !424, size: 128, offset: 2752)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "restart_interval", scope: !169, file: !4, line: 528, baseType: !5, size: 32, offset: 2880)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "saw_JFIF_marker", scope: !169, file: !4, line: 533, baseType: !231, size: 32, offset: 2912)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "density_unit", scope: !169, file: !4, line: 535, baseType: !385, size: 8, offset: 2944)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "X_density", scope: !169, file: !4, line: 536, baseType: !372, size: 16, offset: 2960)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "Y_density", scope: !169, file: !4, line: 537, baseType: !372, size: 16, offset: 2976)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "saw_Adobe_marker", scope: !169, file: !4, line: 538, baseType: !231, size: 32, offset: 3008)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "Adobe_transform", scope: !169, file: !4, line: 539, baseType: !385, size: 8, offset: 3040)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "CCIR601_sampling", scope: !169, file: !4, line: 541, baseType: !231, size: 32, offset: 3072)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "max_h_samp_factor", scope: !169, file: !4, line: 550, baseType: !193, size: 32, offset: 3104)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "max_v_samp_factor", scope: !169, file: !4, line: 551, baseType: !193, size: 32, offset: 3136)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "min_DCT_scaled_size", scope: !169, file: !4, line: 553, baseType: !193, size: 32, offset: 3168)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "total_iMCU_rows", scope: !169, file: !4, line: 555, baseType: !209, size: 32, offset: 3200)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "sample_range_limit", scope: !169, file: !4, line: 564, baseType: !205, size: 64, offset: 3264)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "comps_in_scan", scope: !169, file: !4, line: 571, baseType: !193, size: 32, offset: 3328)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "cur_comp_info", scope: !169, file: !4, line: 572, baseType: !444, size: 256, offset: 3392)
!444 = !DICompositeType(tag: DW_TAG_array_type, baseType: !396, size: 256, elements: !375)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "MCUs_per_row", scope: !169, file: !4, line: 575, baseType: !209, size: 32, offset: 3648)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_rows_in_scan", scope: !169, file: !4, line: 576, baseType: !209, size: 32, offset: 3680)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "blocks_in_MCU", scope: !169, file: !4, line: 578, baseType: !193, size: 32, offset: 3712)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_membership", scope: !169, file: !4, line: 579, baseType: !449, size: 320, offset: 3744)
!449 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, size: 320, elements: !450)
!450 = !{!451}
!451 = !DISubrange(count: 10)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "Ss", scope: !169, file: !4, line: 583, baseType: !193, size: 32, offset: 4064)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "Se", scope: !169, file: !4, line: 583, baseType: !193, size: 32, offset: 4096)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "Ah", scope: !169, file: !4, line: 583, baseType: !193, size: 32, offset: 4128)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "Al", scope: !169, file: !4, line: 583, baseType: !193, size: 32, offset: 4160)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "unread_marker", scope: !169, file: !4, line: 589, baseType: !193, size: 32, offset: 4192)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !169, file: !4, line: 594, baseType: !458, size: 64, offset: 4224)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_decomp_master", file: !24, line: 136, size: 192, elements: !460)
!460 = !{!461, !462, !463}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_for_output_pass", scope: !459, file: !24, line: 137, baseType: !164, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "finish_output_pass", scope: !459, file: !24, line: 138, baseType: !164, size: 64, offset: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "is_dummy_pass", scope: !459, file: !24, line: 141, baseType: !231, size: 32, offset: 128)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "main", scope: !169, file: !4, line: 595, baseType: !465, size: 64, offset: 4288)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_d_main_controller", file: !24, line: 157, size: 128, elements: !467)
!467 = !{!468, !473}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !466, file: !24, line: 158, baseType: !469, size: 64)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = !DISubroutineType(types: !471)
!471 = !{null, !167, !472}
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_BUF_MODE", file: !24, line: 22, baseType: !23)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "process_data", scope: !466, file: !24, line: 159, baseType: !474, size: 64, offset: 64)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!475 = !DISubroutineType(types: !476)
!476 = !{null, !167, !202, !477, !209}
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "coef", scope: !169, file: !4, line: 596, baseType: !479, size: 64, offset: 4352)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_d_coef_controller", file: !24, line: 165, size: 320, elements: !481)
!481 = !{!482, !483, !487, !488, !494}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "start_input_pass", scope: !480, file: !24, line: 166, baseType: !164, size: 64)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "consume_data", scope: !480, file: !24, line: 167, baseType: !484, size: 64, offset: 64)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = !DISubroutineType(types: !486)
!486 = !{!193, !167}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "start_output_pass", scope: !480, file: !24, line: 168, baseType: !164, size: 64, offset: 128)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "decompress_data", scope: !480, file: !24, line: 169, baseType: !489, size: 64, offset: 192)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = !DISubroutineType(types: !491)
!491 = !{!193, !167, !492}
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPIMAGE", file: !4, line: 68, baseType: !493)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "coef_arrays", scope: !480, file: !24, line: 172, baseType: !495, size: 64, offset: 256)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "post", scope: !169, file: !4, line: 597, baseType: !497, size: 64, offset: 4416)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_d_post_controller", file: !24, line: 176, size: 128, elements: !499)
!499 = !{!500, !501}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !498, file: !24, line: 177, baseType: !469, size: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "post_process_data", scope: !498, file: !24, line: 178, baseType: !502, size: 64, offset: 64)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = !DISubroutineType(types: !504)
!504 = !{null, !167, !492, !477, !209, !202, !477, !209}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "inputctl", scope: !169, file: !4, line: 598, baseType: !506, size: 64, offset: 4480)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_input_controller", file: !24, line: 145, size: 320, elements: !508)
!508 = !{!509, !510, !511, !512, !513, !514}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "consume_input", scope: !507, file: !24, line: 146, baseType: !484, size: 64)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "reset_input_controller", scope: !507, file: !24, line: 147, baseType: !164, size: 64, offset: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "start_input_pass", scope: !507, file: !24, line: 148, baseType: !164, size: 64, offset: 128)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "finish_input_pass", scope: !507, file: !24, line: 149, baseType: !164, size: 64, offset: 192)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "has_multiple_scans", scope: !507, file: !24, line: 152, baseType: !231, size: 32, offset: 256)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "eoi_reached", scope: !507, file: !24, line: 153, baseType: !231, size: 32, offset: 288)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "marker", scope: !169, file: !4, line: 599, baseType: !516, size: 64, offset: 4544)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_marker_reader", file: !24, line: 188, size: 1408, elements: !518)
!518 = !{!519, !520, !521, !523, !524, !526, !527, !528, !529}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "reset_marker_reader", scope: !517, file: !24, line: 189, baseType: !164, size: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "read_markers", scope: !517, file: !24, line: 194, baseType: !484, size: 64, offset: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "read_restart_marker", scope: !517, file: !24, line: 196, baseType: !522, size: 64, offset: 128)
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "jpeg_marker_parser_method", file: !4, line: 781, baseType: !313)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "process_COM", scope: !517, file: !24, line: 198, baseType: !522, size: 64, offset: 192)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "process_APPn", scope: !517, file: !24, line: 199, baseType: !525, size: 1024, offset: 256)
!525 = !DICompositeType(tag: DW_TAG_array_type, baseType: !522, size: 1024, elements: !425)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "saw_SOI", scope: !517, file: !24, line: 204, baseType: !231, size: 32, offset: 1280)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "saw_SOF", scope: !517, file: !24, line: 205, baseType: !231, size: 32, offset: 1312)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "next_restart_num", scope: !517, file: !24, line: 206, baseType: !193, size: 32, offset: 1344)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "discarded_bytes", scope: !517, file: !24, line: 207, baseType: !5, size: 32, offset: 1376)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "entropy", scope: !169, file: !4, line: 600, baseType: !531, size: 64, offset: 4608)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_entropy_decoder", file: !24, line: 211, size: 128, elements: !533)
!533 = !{!534, !535}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !532, file: !24, line: 212, baseType: !164, size: 64)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "decode_mcu", scope: !532, file: !24, line: 213, baseType: !536, size: 64, offset: 64)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = !DISubroutineType(types: !538)
!538 = !{!231, !167, !215}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "idct", scope: !169, file: !4, line: 601, baseType: !540, size: 64, offset: 4672)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_inverse_dct", file: !24, line: 223, size: 704, elements: !542)
!542 = !{!543, !544}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !541, file: !24, line: 224, baseType: !164, size: 64)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "inverse_DCT", scope: !541, file: !24, line: 226, baseType: !545, size: 640, offset: 64)
!545 = !DICompositeType(tag: DW_TAG_array_type, baseType: !546, size: 640, elements: !450)
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "inverse_DCT_method_ptr", file: !24, line: 218, baseType: !547)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = !DISubroutineType(types: !549)
!549 = !{null, !167, !396, !550, !202, !209}
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "JCOEFPTR", file: !4, line: 75, baseType: !551)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "upsample", scope: !169, file: !4, line: 602, baseType: !553, size: 64, offset: 4736)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "cconvert", scope: !169, file: !4, line: 603, baseType: !555, size: 64, offset: 4800)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_color_deconverter", file: !24, line: 244, size: 128, elements: !557)
!557 = !{!558, !559}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !556, file: !24, line: 245, baseType: !164, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "color_convert", scope: !556, file: !24, line: 246, baseType: !560, size: 64, offset: 64)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = !DISubroutineType(types: !562)
!562 = !{null, !167, !492, !209, !202, !193}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "cquantize", scope: !169, file: !4, line: 604, baseType: !564, size: 64, offset: 4864)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_color_quantizer", file: !24, line: 252, size: 256, elements: !566)
!566 = !{!567, !571, !575, !576}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !565, file: !24, line: 253, baseType: !568, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DISubroutineType(types: !570)
!570 = !{null, !167, !231}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "color_quantize", scope: !565, file: !24, line: 254, baseType: !572, size: 64, offset: 64)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DISubroutineType(types: !574)
!574 = !{null, !167, !202, !202, !193}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "finish_pass", scope: !565, file: !24, line: 257, baseType: !164, size: 64, offset: 128)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "new_color_map", scope: !565, file: !24, line: 258, baseType: !164, size: 64, offset: 192)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "upsample", scope: !161, file: !24, line: 232, baseType: !502, size: 64, offset: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "need_context_rows", scope: !161, file: !24, line: 240, baseType: !231, size: 32, offset: 128)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "color_buf", scope: !158, file: !1, line: 43, baseType: !580, size: 640, offset: 192)
!580 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 640, elements: !450)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "methods", scope: !158, file: !1, line: 46, baseType: !582, size: 640, offset: 832)
!582 = !DICompositeType(tag: DW_TAG_array_type, baseType: !583, size: 640, elements: !450)
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "upsample1_ptr", file: !1, line: 27, baseType: !584)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = !DISubroutineType(types: !586)
!586 = !{null, !167, !396, !202, !493}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "next_row_out", scope: !158, file: !1, line: 48, baseType: !193, size: 32, offset: 1472)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "rows_to_go", scope: !158, file: !1, line: 49, baseType: !209, size: 32, offset: 1504)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "rowgroup_height", scope: !158, file: !1, line: 52, baseType: !449, size: 320, offset: 1536)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "h_expand", scope: !158, file: !1, line: 57, baseType: !591, size: 80, offset: 1856)
!591 = !DICompositeType(tag: DW_TAG_array_type, baseType: !385, size: 80, elements: !450)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "v_expand", scope: !158, file: !1, line: 58, baseType: !591, size: 80, offset: 1936)
!593 = !{i32 7, !"Dwarf Version", i32 5}
!594 = !{i32 2, !"Debug Info Version", i32 3}
!595 = !{i32 1, !"wchar_size", i32 4}
!596 = !{i32 8, !"PIC Level", i32 2}
!597 = !{i32 7, !"PIE Level", i32 2}
!598 = !{i32 7, !"uwtable", i32 2}
!599 = !{i32 7, !"frame-pointer", i32 2}
!600 = !{!"clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)"}
!601 = distinct !DISubprogram(name: "jinit_upsampler", scope: !1, file: !1, line: 399, type: !165, scopeLine: 400, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !602)
!602 = !{}
!603 = !DILocalVariable(name: "cinfo", arg: 1, scope: !601, file: !1, line: 399, type: !167)
!604 = !DILocation(line: 399, column: 35, scope: !601)
!605 = !DILocalVariable(name: "upsample", scope: !601, file: !1, line: 401, type: !155)
!606 = !DILocation(line: 401, column: 19, scope: !601)
!607 = !DILocalVariable(name: "ci", scope: !601, file: !1, line: 402, type: !193)
!608 = !DILocation(line: 402, column: 7, scope: !601)
!609 = !DILocalVariable(name: "compptr", scope: !601, file: !1, line: 403, type: !396)
!610 = !DILocation(line: 403, column: 25, scope: !601)
!611 = !DILocalVariable(name: "need_buffer", scope: !601, file: !1, line: 404, type: !231)
!612 = !DILocation(line: 404, column: 11, scope: !601)
!613 = !DILocalVariable(name: "do_fancy", scope: !601, file: !1, line: 404, type: !231)
!614 = !DILocation(line: 404, column: 24, scope: !601)
!615 = !DILocalVariable(name: "h_in_group", scope: !601, file: !1, line: 405, type: !193)
!616 = !DILocation(line: 405, column: 7, scope: !601)
!617 = !DILocalVariable(name: "v_in_group", scope: !601, file: !1, line: 405, type: !193)
!618 = !DILocation(line: 405, column: 19, scope: !601)
!619 = !DILocalVariable(name: "h_out_group", scope: !601, file: !1, line: 405, type: !193)
!620 = !DILocation(line: 405, column: 31, scope: !601)
!621 = !DILocalVariable(name: "v_out_group", scope: !601, file: !1, line: 405, type: !193)
!622 = !DILocation(line: 405, column: 44, scope: !601)
!623 = !DILocation(line: 408, column: 7, scope: !601)
!624 = !DILocation(line: 408, column: 14, scope: !601)
!625 = !DILocation(line: 408, column: 19, scope: !601)
!626 = !DILocation(line: 408, column: 48, scope: !601)
!627 = !DILocation(line: 408, column: 5, scope: !601)
!628 = !DILocation(line: 407, column: 12, scope: !601)
!629 = !DILocation(line: 410, column: 47, scope: !601)
!630 = !DILocation(line: 410, column: 3, scope: !601)
!631 = !DILocation(line: 410, column: 10, scope: !601)
!632 = !DILocation(line: 410, column: 19, scope: !601)
!633 = !DILocation(line: 411, column: 3, scope: !601)
!634 = !DILocation(line: 411, column: 13, scope: !601)
!635 = !DILocation(line: 411, column: 17, scope: !601)
!636 = !DILocation(line: 411, column: 28, scope: !601)
!637 = !DILocation(line: 412, column: 3, scope: !601)
!638 = !DILocation(line: 412, column: 13, scope: !601)
!639 = !DILocation(line: 412, column: 17, scope: !601)
!640 = !DILocation(line: 412, column: 26, scope: !601)
!641 = !DILocation(line: 413, column: 3, scope: !601)
!642 = !DILocation(line: 413, column: 13, scope: !601)
!643 = !DILocation(line: 413, column: 17, scope: !601)
!644 = !DILocation(line: 413, column: 35, scope: !601)
!645 = !DILocation(line: 415, column: 7, scope: !646)
!646 = distinct !DILexicalBlock(scope: !601, file: !1, line: 415, column: 7)
!647 = !DILocation(line: 415, column: 14, scope: !646)
!648 = !DILocation(line: 416, column: 5, scope: !646)
!649 = !DILocation(line: 421, column: 14, scope: !601)
!650 = !DILocation(line: 421, column: 21, scope: !601)
!651 = !DILocation(line: 421, column: 41, scope: !601)
!652 = !DILocation(line: 421, column: 44, scope: !601)
!653 = !DILocation(line: 421, column: 51, scope: !601)
!654 = !DILocation(line: 421, column: 71, scope: !601)
!655 = !DILocation(line: 0, scope: !601)
!656 = !DILocation(line: 421, column: 12, scope: !601)
!657 = !DILocation(line: 426, column: 11, scope: !658)
!658 = distinct !DILexicalBlock(scope: !601, file: !1, line: 426, column: 3)
!659 = !DILocation(line: 426, column: 26, scope: !658)
!660 = !DILocation(line: 426, column: 33, scope: !658)
!661 = !DILocation(line: 426, column: 24, scope: !658)
!662 = !DILocation(line: 426, column: 8, scope: !658)
!663 = !DILocation(line: 426, column: 44, scope: !664)
!664 = distinct !DILexicalBlock(scope: !658, file: !1, line: 426, column: 3)
!665 = !DILocation(line: 426, column: 49, scope: !664)
!666 = !DILocation(line: 426, column: 56, scope: !664)
!667 = !DILocation(line: 426, column: 47, scope: !664)
!668 = !DILocation(line: 426, column: 3, scope: !658)
!669 = !DILocation(line: 431, column: 19, scope: !670)
!670 = distinct !DILexicalBlock(scope: !664, file: !1, line: 427, column: 25)
!671 = !DILocation(line: 431, column: 28, scope: !670)
!672 = !DILocation(line: 431, column: 44, scope: !670)
!673 = !DILocation(line: 431, column: 53, scope: !670)
!674 = !DILocation(line: 431, column: 42, scope: !670)
!675 = !DILocation(line: 432, column: 4, scope: !670)
!676 = !DILocation(line: 432, column: 11, scope: !670)
!677 = !DILocation(line: 431, column: 70, scope: !670)
!678 = !DILocation(line: 431, column: 16, scope: !670)
!679 = !DILocation(line: 433, column: 19, scope: !670)
!680 = !DILocation(line: 433, column: 28, scope: !670)
!681 = !DILocation(line: 433, column: 44, scope: !670)
!682 = !DILocation(line: 433, column: 53, scope: !670)
!683 = !DILocation(line: 433, column: 42, scope: !670)
!684 = !DILocation(line: 434, column: 4, scope: !670)
!685 = !DILocation(line: 434, column: 11, scope: !670)
!686 = !DILocation(line: 433, column: 70, scope: !670)
!687 = !DILocation(line: 433, column: 16, scope: !670)
!688 = !DILocation(line: 435, column: 19, scope: !670)
!689 = !DILocation(line: 435, column: 26, scope: !670)
!690 = !DILocation(line: 435, column: 17, scope: !670)
!691 = !DILocation(line: 436, column: 19, scope: !670)
!692 = !DILocation(line: 436, column: 26, scope: !670)
!693 = !DILocation(line: 436, column: 17, scope: !670)
!694 = !DILocation(line: 437, column: 37, scope: !670)
!695 = !DILocation(line: 437, column: 5, scope: !670)
!696 = !DILocation(line: 437, column: 15, scope: !670)
!697 = !DILocation(line: 437, column: 31, scope: !670)
!698 = !DILocation(line: 437, column: 35, scope: !670)
!699 = !DILocation(line: 438, column: 17, scope: !670)
!700 = !DILocation(line: 439, column: 11, scope: !701)
!701 = distinct !DILexicalBlock(scope: !670, file: !1, line: 439, column: 9)
!702 = !DILocation(line: 439, column: 20, scope: !701)
!703 = !DILocation(line: 439, column: 9, scope: !701)
!704 = !DILocation(line: 441, column: 7, scope: !705)
!705 = distinct !DILexicalBlock(scope: !701, file: !1, line: 439, column: 38)
!706 = !DILocation(line: 441, column: 17, scope: !705)
!707 = !DILocation(line: 441, column: 25, scope: !705)
!708 = !DILocation(line: 441, column: 29, scope: !705)
!709 = !DILocation(line: 442, column: 19, scope: !705)
!710 = !DILocation(line: 443, column: 5, scope: !705)
!711 = !DILocation(line: 443, column: 16, scope: !712)
!712 = distinct !DILexicalBlock(scope: !701, file: !1, line: 443, column: 16)
!713 = !DILocation(line: 443, column: 30, scope: !712)
!714 = !DILocation(line: 443, column: 27, scope: !712)
!715 = !DILocation(line: 443, column: 42, scope: !712)
!716 = !DILocation(line: 443, column: 45, scope: !712)
!717 = !DILocation(line: 443, column: 59, scope: !712)
!718 = !DILocation(line: 443, column: 56, scope: !712)
!719 = !DILocation(line: 445, column: 7, scope: !720)
!720 = distinct !DILexicalBlock(scope: !712, file: !1, line: 443, column: 72)
!721 = !DILocation(line: 445, column: 17, scope: !720)
!722 = !DILocation(line: 445, column: 25, scope: !720)
!723 = !DILocation(line: 445, column: 29, scope: !720)
!724 = !DILocation(line: 446, column: 19, scope: !720)
!725 = !DILocation(line: 447, column: 5, scope: !720)
!726 = !DILocation(line: 447, column: 16, scope: !727)
!727 = distinct !DILexicalBlock(scope: !712, file: !1, line: 447, column: 16)
!728 = !DILocation(line: 447, column: 27, scope: !727)
!729 = !DILocation(line: 447, column: 34, scope: !727)
!730 = !DILocation(line: 447, column: 31, scope: !727)
!731 = !DILocation(line: 447, column: 46, scope: !727)
!732 = !DILocation(line: 448, column: 9, scope: !727)
!733 = !DILocation(line: 448, column: 23, scope: !727)
!734 = !DILocation(line: 448, column: 20, scope: !727)
!735 = !DILocation(line: 450, column: 11, scope: !736)
!736 = distinct !DILexicalBlock(scope: !737, file: !1, line: 450, column: 11)
!737 = distinct !DILexicalBlock(scope: !727, file: !1, line: 448, column: 36)
!738 = !DILocation(line: 450, column: 20, scope: !736)
!739 = !DILocation(line: 450, column: 23, scope: !736)
!740 = !DILocation(line: 450, column: 32, scope: !736)
!741 = !DILocation(line: 450, column: 50, scope: !736)
!742 = !DILocation(line: 451, column: 2, scope: !736)
!743 = !DILocation(line: 451, column: 12, scope: !736)
!744 = !DILocation(line: 451, column: 20, scope: !736)
!745 = !DILocation(line: 451, column: 24, scope: !736)
!746 = !DILocation(line: 453, column: 2, scope: !736)
!747 = !DILocation(line: 453, column: 12, scope: !736)
!748 = !DILocation(line: 453, column: 20, scope: !736)
!749 = !DILocation(line: 453, column: 24, scope: !736)
!750 = !DILocation(line: 454, column: 5, scope: !737)
!751 = !DILocation(line: 454, column: 16, scope: !752)
!752 = distinct !DILexicalBlock(scope: !727, file: !1, line: 454, column: 16)
!753 = !DILocation(line: 454, column: 27, scope: !752)
!754 = !DILocation(line: 454, column: 34, scope: !752)
!755 = !DILocation(line: 454, column: 31, scope: !752)
!756 = !DILocation(line: 454, column: 46, scope: !752)
!757 = !DILocation(line: 455, column: 9, scope: !752)
!758 = !DILocation(line: 455, column: 20, scope: !752)
!759 = !DILocation(line: 455, column: 27, scope: !752)
!760 = !DILocation(line: 455, column: 24, scope: !752)
!761 = !DILocation(line: 457, column: 11, scope: !762)
!762 = distinct !DILexicalBlock(scope: !763, file: !1, line: 457, column: 11)
!763 = distinct !DILexicalBlock(scope: !752, file: !1, line: 455, column: 40)
!764 = !DILocation(line: 457, column: 20, scope: !762)
!765 = !DILocation(line: 457, column: 23, scope: !762)
!766 = !DILocation(line: 457, column: 32, scope: !762)
!767 = !DILocation(line: 457, column: 50, scope: !762)
!768 = !DILocation(line: 458, column: 2, scope: !769)
!769 = distinct !DILexicalBlock(scope: !762, file: !1, line: 457, column: 55)
!770 = !DILocation(line: 458, column: 12, scope: !769)
!771 = !DILocation(line: 458, column: 20, scope: !769)
!772 = !DILocation(line: 458, column: 24, scope: !769)
!773 = !DILocation(line: 459, column: 2, scope: !769)
!774 = !DILocation(line: 459, column: 12, scope: !769)
!775 = !DILocation(line: 459, column: 16, scope: !769)
!776 = !DILocation(line: 459, column: 34, scope: !769)
!777 = !DILocation(line: 460, column: 7, scope: !769)
!778 = !DILocation(line: 461, column: 2, scope: !762)
!779 = !DILocation(line: 461, column: 12, scope: !762)
!780 = !DILocation(line: 461, column: 20, scope: !762)
!781 = !DILocation(line: 461, column: 24, scope: !762)
!782 = !DILocation(line: 462, column: 5, scope: !763)
!783 = !DILocation(line: 462, column: 17, scope: !784)
!784 = distinct !DILexicalBlock(scope: !752, file: !1, line: 462, column: 16)
!785 = !DILocation(line: 462, column: 31, scope: !784)
!786 = !DILocation(line: 462, column: 29, scope: !784)
!787 = !DILocation(line: 462, column: 43, scope: !784)
!788 = !DILocation(line: 462, column: 48, scope: !784)
!789 = !DILocation(line: 463, column: 10, scope: !784)
!790 = !DILocation(line: 463, column: 24, scope: !784)
!791 = !DILocation(line: 463, column: 22, scope: !784)
!792 = !DILocation(line: 463, column: 36, scope: !784)
!793 = !DILocation(line: 465, column: 7, scope: !794)
!794 = distinct !DILexicalBlock(scope: !784, file: !1, line: 463, column: 42)
!795 = !DILocation(line: 465, column: 17, scope: !794)
!796 = !DILocation(line: 465, column: 25, scope: !794)
!797 = !DILocation(line: 465, column: 29, scope: !794)
!798 = !DILocation(line: 466, column: 41, scope: !794)
!799 = !DILocation(line: 466, column: 55, scope: !794)
!800 = !DILocation(line: 466, column: 53, scope: !794)
!801 = !DILocation(line: 466, column: 32, scope: !794)
!802 = !DILocation(line: 466, column: 7, scope: !794)
!803 = !DILocation(line: 466, column: 17, scope: !794)
!804 = !DILocation(line: 466, column: 26, scope: !794)
!805 = !DILocation(line: 466, column: 30, scope: !794)
!806 = !DILocation(line: 467, column: 41, scope: !794)
!807 = !DILocation(line: 467, column: 55, scope: !794)
!808 = !DILocation(line: 467, column: 53, scope: !794)
!809 = !DILocation(line: 467, column: 32, scope: !794)
!810 = !DILocation(line: 467, column: 7, scope: !794)
!811 = !DILocation(line: 467, column: 17, scope: !794)
!812 = !DILocation(line: 467, column: 26, scope: !794)
!813 = !DILocation(line: 467, column: 30, scope: !794)
!814 = !DILocation(line: 468, column: 5, scope: !794)
!815 = !DILocation(line: 469, column: 7, scope: !784)
!816 = !DILocation(line: 470, column: 9, scope: !817)
!817 = distinct !DILexicalBlock(scope: !670, file: !1, line: 470, column: 9)
!818 = !DILocation(line: 471, column: 35, scope: !819)
!819 = distinct !DILexicalBlock(scope: !817, file: !1, line: 470, column: 22)
!820 = !DILocation(line: 471, column: 42, scope: !819)
!821 = !DILocation(line: 471, column: 47, scope: !819)
!822 = !DILocation(line: 472, column: 18, scope: !819)
!823 = !DILocation(line: 473, column: 33, scope: !819)
!824 = !DILocation(line: 473, column: 40, scope: !819)
!825 = !DILocation(line: 473, column: 26, scope: !819)
!826 = !DILocation(line: 474, column: 12, scope: !819)
!827 = !DILocation(line: 474, column: 19, scope: !819)
!828 = !DILocation(line: 474, column: 5, scope: !819)
!829 = !DILocation(line: 473, column: 16, scope: !819)
!830 = !DILocation(line: 473, column: 3, scope: !819)
!831 = !DILocation(line: 475, column: 16, scope: !819)
!832 = !DILocation(line: 475, column: 23, scope: !819)
!833 = !DILocation(line: 471, column: 33, scope: !819)
!834 = !DILocation(line: 471, column: 7, scope: !819)
!835 = !DILocation(line: 471, column: 17, scope: !819)
!836 = !DILocation(line: 471, column: 27, scope: !819)
!837 = !DILocation(line: 471, column: 31, scope: !819)
!838 = !DILocation(line: 476, column: 5, scope: !819)
!839 = !DILocation(line: 477, column: 3, scope: !670)
!840 = !DILocation(line: 427, column: 10, scope: !664)
!841 = !DILocation(line: 427, column: 21, scope: !664)
!842 = !DILocation(line: 426, column: 3, scope: !664)
!843 = distinct !{!843, !668, !844, !845}
!844 = !DILocation(line: 477, column: 3, scope: !658)
!845 = !{!"llvm.loop.mustprogress"}
!846 = !DILocation(line: 478, column: 1, scope: !601)
!847 = distinct !DISubprogram(name: "start_pass_upsample", scope: !1, file: !1, line: 69, type: !165, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !602)
!848 = !DILocalVariable(name: "cinfo", arg: 1, scope: !847, file: !1, line: 69, type: !167)
!849 = !DILocation(line: 69, column: 39, scope: !847)
!850 = !DILocalVariable(name: "upsample", scope: !847, file: !1, line: 71, type: !155)
!851 = !DILocation(line: 71, column: 19, scope: !847)
!852 = !DILocation(line: 71, column: 48, scope: !847)
!853 = !DILocation(line: 71, column: 55, scope: !847)
!854 = !DILocation(line: 74, column: 28, scope: !847)
!855 = !DILocation(line: 74, column: 35, scope: !847)
!856 = !DILocation(line: 74, column: 3, scope: !847)
!857 = !DILocation(line: 74, column: 13, scope: !847)
!858 = !DILocation(line: 74, column: 26, scope: !847)
!859 = !DILocation(line: 76, column: 26, scope: !847)
!860 = !DILocation(line: 76, column: 33, scope: !847)
!861 = !DILocation(line: 76, column: 3, scope: !847)
!862 = !DILocation(line: 76, column: 13, scope: !847)
!863 = !DILocation(line: 76, column: 24, scope: !847)
!864 = !DILocation(line: 77, column: 1, scope: !847)
!865 = distinct !DISubprogram(name: "sep_upsample", scope: !1, file: !1, line: 89, type: !503, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !602)
!866 = !DILocalVariable(name: "cinfo", arg: 1, scope: !865, file: !1, line: 89, type: !167)
!867 = !DILocation(line: 89, column: 32, scope: !865)
!868 = !DILocalVariable(name: "input_buf", arg: 2, scope: !865, file: !1, line: 90, type: !492)
!869 = !DILocation(line: 90, column: 19, scope: !865)
!870 = !DILocalVariable(name: "in_row_group_ctr", arg: 3, scope: !865, file: !1, line: 90, type: !477)
!871 = !DILocation(line: 90, column: 42, scope: !865)
!872 = !DILocalVariable(name: "in_row_groups_avail", arg: 4, scope: !865, file: !1, line: 91, type: !209)
!873 = !DILocation(line: 91, column: 19, scope: !865)
!874 = !DILocalVariable(name: "output_buf", arg: 5, scope: !865, file: !1, line: 92, type: !202)
!875 = !DILocation(line: 92, column: 19, scope: !865)
!876 = !DILocalVariable(name: "out_row_ctr", arg: 6, scope: !865, file: !1, line: 92, type: !477)
!877 = !DILocation(line: 92, column: 43, scope: !865)
!878 = !DILocalVariable(name: "out_rows_avail", arg: 7, scope: !865, file: !1, line: 93, type: !209)
!879 = !DILocation(line: 93, column: 19, scope: !865)
!880 = !DILocalVariable(name: "upsample", scope: !865, file: !1, line: 95, type: !155)
!881 = !DILocation(line: 95, column: 19, scope: !865)
!882 = !DILocation(line: 95, column: 48, scope: !865)
!883 = !DILocation(line: 95, column: 55, scope: !865)
!884 = !DILocalVariable(name: "ci", scope: !865, file: !1, line: 96, type: !193)
!885 = !DILocation(line: 96, column: 7, scope: !865)
!886 = !DILocalVariable(name: "compptr", scope: !865, file: !1, line: 97, type: !396)
!887 = !DILocation(line: 97, column: 25, scope: !865)
!888 = !DILocalVariable(name: "num_rows", scope: !865, file: !1, line: 98, type: !209)
!889 = !DILocation(line: 98, column: 14, scope: !865)
!890 = !DILocation(line: 101, column: 7, scope: !891)
!891 = distinct !DILexicalBlock(scope: !865, file: !1, line: 101, column: 7)
!892 = !DILocation(line: 101, column: 17, scope: !891)
!893 = !DILocation(line: 101, column: 33, scope: !891)
!894 = !DILocation(line: 101, column: 40, scope: !891)
!895 = !DILocation(line: 101, column: 30, scope: !891)
!896 = !DILocation(line: 102, column: 13, scope: !897)
!897 = distinct !DILexicalBlock(scope: !898, file: !1, line: 102, column: 5)
!898 = distinct !DILexicalBlock(scope: !891, file: !1, line: 101, column: 59)
!899 = !DILocation(line: 102, column: 28, scope: !897)
!900 = !DILocation(line: 102, column: 35, scope: !897)
!901 = !DILocation(line: 102, column: 26, scope: !897)
!902 = !DILocation(line: 102, column: 10, scope: !897)
!903 = !DILocation(line: 102, column: 46, scope: !904)
!904 = distinct !DILexicalBlock(scope: !897, file: !1, line: 102, column: 5)
!905 = !DILocation(line: 102, column: 51, scope: !904)
!906 = !DILocation(line: 102, column: 58, scope: !904)
!907 = !DILocation(line: 102, column: 49, scope: !904)
!908 = !DILocation(line: 102, column: 5, scope: !897)
!909 = !DILocation(line: 107, column: 9, scope: !910)
!910 = distinct !DILexicalBlock(scope: !904, file: !1, line: 103, column: 20)
!911 = !DILocation(line: 107, column: 19, scope: !910)
!912 = !DILocation(line: 107, column: 27, scope: !910)
!913 = !DILocation(line: 107, column: 33, scope: !910)
!914 = !DILocation(line: 107, column: 40, scope: !910)
!915 = !DILocation(line: 108, column: 2, scope: !910)
!916 = !DILocation(line: 108, column: 12, scope: !910)
!917 = !DILocation(line: 108, column: 20, scope: !910)
!918 = !DILocation(line: 108, column: 19, scope: !910)
!919 = !DILocation(line: 108, column: 39, scope: !910)
!920 = !DILocation(line: 108, column: 49, scope: !910)
!921 = !DILocation(line: 108, column: 65, scope: !910)
!922 = !DILocation(line: 108, column: 37, scope: !910)
!923 = !DILocation(line: 108, column: 16, scope: !910)
!924 = !DILocation(line: 109, column: 2, scope: !910)
!925 = !DILocation(line: 109, column: 12, scope: !910)
!926 = !DILocation(line: 109, column: 24, scope: !910)
!927 = !DILocation(line: 109, column: 22, scope: !910)
!928 = !DILocation(line: 107, column: 7, scope: !910)
!929 = !DILocation(line: 110, column: 5, scope: !910)
!930 = !DILocation(line: 103, column: 5, scope: !904)
!931 = !DILocation(line: 103, column: 16, scope: !904)
!932 = !DILocation(line: 102, column: 5, scope: !904)
!933 = distinct !{!933, !908, !934, !845}
!934 = !DILocation(line: 110, column: 5, scope: !897)
!935 = !DILocation(line: 111, column: 5, scope: !898)
!936 = !DILocation(line: 111, column: 15, scope: !898)
!937 = !DILocation(line: 111, column: 28, scope: !898)
!938 = !DILocation(line: 112, column: 3, scope: !898)
!939 = !DILocation(line: 117, column: 28, scope: !865)
!940 = !DILocation(line: 117, column: 35, scope: !865)
!941 = !DILocation(line: 117, column: 55, scope: !865)
!942 = !DILocation(line: 117, column: 65, scope: !865)
!943 = !DILocation(line: 117, column: 53, scope: !865)
!944 = !DILocation(line: 117, column: 12, scope: !865)
!945 = !DILocation(line: 121, column: 7, scope: !946)
!946 = distinct !DILexicalBlock(scope: !865, file: !1, line: 121, column: 7)
!947 = !DILocation(line: 121, column: 18, scope: !946)
!948 = !DILocation(line: 121, column: 28, scope: !946)
!949 = !DILocation(line: 121, column: 16, scope: !946)
!950 = !DILocation(line: 122, column: 16, scope: !946)
!951 = !DILocation(line: 122, column: 26, scope: !946)
!952 = !DILocation(line: 122, column: 14, scope: !946)
!953 = !DILocation(line: 122, column: 5, scope: !946)
!954 = !DILocation(line: 124, column: 22, scope: !865)
!955 = !DILocation(line: 124, column: 21, scope: !865)
!956 = !DILocation(line: 124, column: 18, scope: !865)
!957 = !DILocation(line: 125, column: 7, scope: !958)
!958 = distinct !DILexicalBlock(scope: !865, file: !1, line: 125, column: 7)
!959 = !DILocation(line: 125, column: 18, scope: !958)
!960 = !DILocation(line: 125, column: 16, scope: !958)
!961 = !DILocation(line: 126, column: 16, scope: !958)
!962 = !DILocation(line: 126, column: 14, scope: !958)
!963 = !DILocation(line: 126, column: 5, scope: !958)
!964 = !DILocation(line: 128, column: 5, scope: !865)
!965 = !DILocation(line: 128, column: 12, scope: !865)
!966 = !DILocation(line: 128, column: 22, scope: !865)
!967 = !DILocation(line: 128, column: 38, scope: !865)
!968 = !DILocation(line: 128, column: 45, scope: !865)
!969 = !DILocation(line: 128, column: 55, scope: !865)
!970 = !DILocation(line: 129, column: 23, scope: !865)
!971 = !DILocation(line: 129, column: 33, scope: !865)
!972 = !DILocation(line: 130, column: 10, scope: !865)
!973 = !DILocation(line: 130, column: 24, scope: !865)
!974 = !DILocation(line: 130, column: 23, scope: !865)
!975 = !DILocation(line: 130, column: 21, scope: !865)
!976 = !DILocation(line: 131, column: 16, scope: !865)
!977 = !DILocation(line: 128, column: 3, scope: !865)
!978 = !DILocation(line: 134, column: 19, scope: !865)
!979 = !DILocation(line: 134, column: 4, scope: !865)
!980 = !DILocation(line: 134, column: 16, scope: !865)
!981 = !DILocation(line: 135, column: 27, scope: !865)
!982 = !DILocation(line: 135, column: 3, scope: !865)
!983 = !DILocation(line: 135, column: 13, scope: !865)
!984 = !DILocation(line: 135, column: 24, scope: !865)
!985 = !DILocation(line: 136, column: 29, scope: !865)
!986 = !DILocation(line: 136, column: 3, scope: !865)
!987 = !DILocation(line: 136, column: 13, scope: !865)
!988 = !DILocation(line: 136, column: 26, scope: !865)
!989 = !DILocation(line: 138, column: 7, scope: !990)
!990 = distinct !DILexicalBlock(scope: !865, file: !1, line: 138, column: 7)
!991 = !DILocation(line: 138, column: 17, scope: !990)
!992 = !DILocation(line: 138, column: 33, scope: !990)
!993 = !DILocation(line: 138, column: 40, scope: !990)
!994 = !DILocation(line: 138, column: 30, scope: !990)
!995 = !DILocation(line: 139, column: 7, scope: !990)
!996 = !DILocation(line: 139, column: 24, scope: !990)
!997 = !DILocation(line: 139, column: 5, scope: !990)
!998 = !DILocation(line: 140, column: 1, scope: !865)
!999 = distinct !DISubprogram(name: "noop_upsample", scope: !1, file: !1, line: 170, type: !585, scopeLine: 172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !602)
!1000 = !DILocalVariable(name: "cinfo", arg: 1, scope: !999, file: !1, line: 170, type: !167)
!1001 = !DILocation(line: 170, column: 33, scope: !999)
!1002 = !DILocalVariable(name: "compptr", arg: 2, scope: !999, file: !1, line: 170, type: !396)
!1003 = !DILocation(line: 170, column: 62, scope: !999)
!1004 = !DILocalVariable(name: "input_data", arg: 3, scope: !999, file: !1, line: 171, type: !202)
!1005 = !DILocation(line: 171, column: 20, scope: !999)
!1006 = !DILocalVariable(name: "output_data_ptr", arg: 4, scope: !999, file: !1, line: 171, type: !493)
!1007 = !DILocation(line: 171, column: 45, scope: !999)
!1008 = !DILocation(line: 173, column: 4, scope: !999)
!1009 = !DILocation(line: 173, column: 20, scope: !999)
!1010 = !DILocation(line: 174, column: 1, scope: !999)
!1011 = distinct !DISubprogram(name: "fullsize_upsample", scope: !1, file: !1, line: 157, type: !585, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !602)
!1012 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1011, file: !1, line: 157, type: !167)
!1013 = !DILocation(line: 157, column: 37, scope: !1011)
!1014 = !DILocalVariable(name: "compptr", arg: 2, scope: !1011, file: !1, line: 157, type: !396)
!1015 = !DILocation(line: 157, column: 66, scope: !1011)
!1016 = !DILocalVariable(name: "input_data", arg: 3, scope: !1011, file: !1, line: 158, type: !202)
!1017 = !DILocation(line: 158, column: 17, scope: !1011)
!1018 = !DILocalVariable(name: "output_data_ptr", arg: 4, scope: !1011, file: !1, line: 158, type: !493)
!1019 = !DILocation(line: 158, column: 42, scope: !1011)
!1020 = !DILocation(line: 160, column: 22, scope: !1011)
!1021 = !DILocation(line: 160, column: 4, scope: !1011)
!1022 = !DILocation(line: 160, column: 20, scope: !1011)
!1023 = !DILocation(line: 161, column: 1, scope: !1011)
!1024 = distinct !DISubprogram(name: "h2v1_fancy_upsample", scope: !1, file: !1, line: 304, type: !585, scopeLine: 306, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !602)
!1025 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1024, file: !1, line: 304, type: !167)
!1026 = !DILocation(line: 304, column: 39, scope: !1024)
!1027 = !DILocalVariable(name: "compptr", arg: 2, scope: !1024, file: !1, line: 304, type: !396)
!1028 = !DILocation(line: 304, column: 68, scope: !1024)
!1029 = !DILocalVariable(name: "input_data", arg: 3, scope: !1024, file: !1, line: 305, type: !202)
!1030 = !DILocation(line: 305, column: 19, scope: !1024)
!1031 = !DILocalVariable(name: "output_data_ptr", arg: 4, scope: !1024, file: !1, line: 305, type: !493)
!1032 = !DILocation(line: 305, column: 44, scope: !1024)
!1033 = !DILocalVariable(name: "output_data", scope: !1024, file: !1, line: 307, type: !202)
!1034 = !DILocation(line: 307, column: 14, scope: !1024)
!1035 = !DILocation(line: 307, column: 29, scope: !1024)
!1036 = !DILocation(line: 307, column: 28, scope: !1024)
!1037 = !DILocalVariable(name: "inptr", scope: !1024, file: !1, line: 308, type: !204)
!1038 = !DILocation(line: 308, column: 21, scope: !1024)
!1039 = !DILocalVariable(name: "outptr", scope: !1024, file: !1, line: 308, type: !204)
!1040 = !DILocation(line: 308, column: 28, scope: !1024)
!1041 = !DILocalVariable(name: "invalue", scope: !1024, file: !1, line: 309, type: !193)
!1042 = !DILocation(line: 309, column: 16, scope: !1024)
!1043 = !DILocalVariable(name: "colctr", scope: !1024, file: !1, line: 310, type: !209)
!1044 = !DILocation(line: 310, column: 23, scope: !1024)
!1045 = !DILocalVariable(name: "inrow", scope: !1024, file: !1, line: 311, type: !193)
!1046 = !DILocation(line: 311, column: 7, scope: !1024)
!1047 = !DILocation(line: 313, column: 14, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !1024, file: !1, line: 313, column: 3)
!1049 = !DILocation(line: 313, column: 8, scope: !1048)
!1050 = !DILocation(line: 313, column: 19, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !1048, file: !1, line: 313, column: 3)
!1052 = !DILocation(line: 313, column: 27, scope: !1051)
!1053 = !DILocation(line: 313, column: 34, scope: !1051)
!1054 = !DILocation(line: 313, column: 25, scope: !1051)
!1055 = !DILocation(line: 313, column: 3, scope: !1048)
!1056 = !DILocation(line: 314, column: 13, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !1051, file: !1, line: 313, column: 62)
!1058 = !DILocation(line: 314, column: 24, scope: !1057)
!1059 = !DILocation(line: 314, column: 11, scope: !1057)
!1060 = !DILocation(line: 315, column: 14, scope: !1057)
!1061 = !DILocation(line: 315, column: 26, scope: !1057)
!1062 = !DILocation(line: 315, column: 12, scope: !1057)
!1063 = !DILocation(line: 317, column: 15, scope: !1057)
!1064 = !DILocation(line: 317, column: 13, scope: !1057)
!1065 = !DILocation(line: 318, column: 27, scope: !1057)
!1066 = !DILocation(line: 318, column: 17, scope: !1057)
!1067 = !DILocation(line: 318, column: 12, scope: !1057)
!1068 = !DILocation(line: 318, column: 15, scope: !1057)
!1069 = !DILocation(line: 319, column: 29, scope: !1057)
!1070 = !DILocation(line: 319, column: 37, scope: !1057)
!1071 = !DILocation(line: 319, column: 43, scope: !1057)
!1072 = !DILocation(line: 319, column: 41, scope: !1057)
!1073 = !DILocation(line: 319, column: 62, scope: !1057)
!1074 = !DILocation(line: 319, column: 67, scope: !1057)
!1075 = !DILocation(line: 319, column: 17, scope: !1057)
!1076 = !DILocation(line: 319, column: 12, scope: !1057)
!1077 = !DILocation(line: 319, column: 15, scope: !1057)
!1078 = !DILocation(line: 321, column: 19, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !1057, file: !1, line: 321, column: 5)
!1080 = !DILocation(line: 321, column: 28, scope: !1079)
!1081 = !DILocation(line: 321, column: 46, scope: !1079)
!1082 = !DILocation(line: 321, column: 17, scope: !1079)
!1083 = !DILocation(line: 321, column: 10, scope: !1079)
!1084 = !DILocation(line: 321, column: 51, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1079, file: !1, line: 321, column: 5)
!1086 = !DILocation(line: 321, column: 58, scope: !1085)
!1087 = !DILocation(line: 321, column: 5, scope: !1079)
!1088 = !DILocation(line: 323, column: 17, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !1085, file: !1, line: 321, column: 73)
!1090 = !DILocation(line: 323, column: 38, scope: !1089)
!1091 = !DILocation(line: 323, column: 15, scope: !1089)
!1092 = !DILocation(line: 324, column: 31, scope: !1089)
!1093 = !DILocation(line: 324, column: 41, scope: !1089)
!1094 = !DILocation(line: 324, column: 39, scope: !1089)
!1095 = !DILocation(line: 324, column: 63, scope: !1089)
!1096 = !DILocation(line: 324, column: 68, scope: !1089)
!1097 = !DILocation(line: 324, column: 19, scope: !1089)
!1098 = !DILocation(line: 324, column: 14, scope: !1089)
!1099 = !DILocation(line: 324, column: 17, scope: !1089)
!1100 = !DILocation(line: 325, column: 31, scope: !1089)
!1101 = !DILocation(line: 325, column: 41, scope: !1089)
!1102 = !DILocation(line: 325, column: 39, scope: !1089)
!1103 = !DILocation(line: 325, column: 60, scope: !1089)
!1104 = !DILocation(line: 325, column: 65, scope: !1089)
!1105 = !DILocation(line: 325, column: 19, scope: !1089)
!1106 = !DILocation(line: 325, column: 14, scope: !1089)
!1107 = !DILocation(line: 325, column: 17, scope: !1089)
!1108 = !DILocation(line: 326, column: 5, scope: !1089)
!1109 = !DILocation(line: 321, column: 69, scope: !1085)
!1110 = !DILocation(line: 321, column: 5, scope: !1085)
!1111 = distinct !{!1111, !1087, !1112, !845}
!1112 = !DILocation(line: 326, column: 5, scope: !1079)
!1113 = !DILocation(line: 329, column: 15, scope: !1057)
!1114 = !DILocation(line: 329, column: 13, scope: !1057)
!1115 = !DILocation(line: 330, column: 29, scope: !1057)
!1116 = !DILocation(line: 330, column: 37, scope: !1057)
!1117 = !DILocation(line: 330, column: 43, scope: !1057)
!1118 = !DILocation(line: 330, column: 41, scope: !1057)
!1119 = !DILocation(line: 330, column: 65, scope: !1057)
!1120 = !DILocation(line: 330, column: 70, scope: !1057)
!1121 = !DILocation(line: 330, column: 17, scope: !1057)
!1122 = !DILocation(line: 330, column: 12, scope: !1057)
!1123 = !DILocation(line: 330, column: 15, scope: !1057)
!1124 = !DILocation(line: 331, column: 27, scope: !1057)
!1125 = !DILocation(line: 331, column: 17, scope: !1057)
!1126 = !DILocation(line: 331, column: 12, scope: !1057)
!1127 = !DILocation(line: 331, column: 15, scope: !1057)
!1128 = !DILocation(line: 332, column: 3, scope: !1057)
!1129 = !DILocation(line: 313, column: 58, scope: !1051)
!1130 = !DILocation(line: 313, column: 3, scope: !1051)
!1131 = distinct !{!1131, !1055, !1132, !845}
!1132 = !DILocation(line: 332, column: 3, scope: !1048)
!1133 = !DILocation(line: 333, column: 1, scope: !1024)
!1134 = distinct !DISubprogram(name: "h2v1_upsample", scope: !1, file: !1, line: 233, type: !585, scopeLine: 235, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !602)
!1135 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1134, file: !1, line: 233, type: !167)
!1136 = !DILocation(line: 233, column: 33, scope: !1134)
!1137 = !DILocalVariable(name: "compptr", arg: 2, scope: !1134, file: !1, line: 233, type: !396)
!1138 = !DILocation(line: 233, column: 62, scope: !1134)
!1139 = !DILocalVariable(name: "input_data", arg: 3, scope: !1134, file: !1, line: 234, type: !202)
!1140 = !DILocation(line: 234, column: 20, scope: !1134)
!1141 = !DILocalVariable(name: "output_data_ptr", arg: 4, scope: !1134, file: !1, line: 234, type: !493)
!1142 = !DILocation(line: 234, column: 45, scope: !1134)
!1143 = !DILocalVariable(name: "output_data", scope: !1134, file: !1, line: 236, type: !202)
!1144 = !DILocation(line: 236, column: 14, scope: !1134)
!1145 = !DILocation(line: 236, column: 29, scope: !1134)
!1146 = !DILocation(line: 236, column: 28, scope: !1134)
!1147 = !DILocalVariable(name: "inptr", scope: !1134, file: !1, line: 237, type: !204)
!1148 = !DILocation(line: 237, column: 21, scope: !1134)
!1149 = !DILocalVariable(name: "outptr", scope: !1134, file: !1, line: 237, type: !204)
!1150 = !DILocation(line: 237, column: 28, scope: !1134)
!1151 = !DILocalVariable(name: "invalue", scope: !1134, file: !1, line: 238, type: !206)
!1152 = !DILocation(line: 238, column: 20, scope: !1134)
!1153 = !DILocalVariable(name: "outend", scope: !1134, file: !1, line: 239, type: !204)
!1154 = !DILocation(line: 239, column: 12, scope: !1134)
!1155 = !DILocalVariable(name: "inrow", scope: !1134, file: !1, line: 240, type: !193)
!1156 = !DILocation(line: 240, column: 7, scope: !1134)
!1157 = !DILocation(line: 242, column: 14, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1134, file: !1, line: 242, column: 3)
!1159 = !DILocation(line: 242, column: 8, scope: !1158)
!1160 = !DILocation(line: 242, column: 19, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1158, file: !1, line: 242, column: 3)
!1162 = !DILocation(line: 242, column: 27, scope: !1161)
!1163 = !DILocation(line: 242, column: 34, scope: !1161)
!1164 = !DILocation(line: 242, column: 25, scope: !1161)
!1165 = !DILocation(line: 242, column: 3, scope: !1158)
!1166 = !DILocation(line: 243, column: 13, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !1161, file: !1, line: 242, column: 62)
!1168 = !DILocation(line: 243, column: 24, scope: !1167)
!1169 = !DILocation(line: 243, column: 11, scope: !1167)
!1170 = !DILocation(line: 244, column: 14, scope: !1167)
!1171 = !DILocation(line: 244, column: 26, scope: !1167)
!1172 = !DILocation(line: 244, column: 12, scope: !1167)
!1173 = !DILocation(line: 245, column: 14, scope: !1167)
!1174 = !DILocation(line: 245, column: 23, scope: !1167)
!1175 = !DILocation(line: 245, column: 30, scope: !1167)
!1176 = !DILocation(line: 245, column: 21, scope: !1167)
!1177 = !DILocation(line: 245, column: 12, scope: !1167)
!1178 = !DILocation(line: 246, column: 5, scope: !1167)
!1179 = !DILocation(line: 246, column: 12, scope: !1167)
!1180 = !DILocation(line: 246, column: 21, scope: !1167)
!1181 = !DILocation(line: 246, column: 19, scope: !1167)
!1182 = !DILocation(line: 247, column: 23, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !1167, file: !1, line: 246, column: 29)
!1184 = !DILocation(line: 247, column: 17, scope: !1183)
!1185 = !DILocation(line: 247, column: 15, scope: !1183)
!1186 = !DILocation(line: 248, column: 19, scope: !1183)
!1187 = !DILocation(line: 248, column: 14, scope: !1183)
!1188 = !DILocation(line: 248, column: 17, scope: !1183)
!1189 = !DILocation(line: 249, column: 19, scope: !1183)
!1190 = !DILocation(line: 249, column: 14, scope: !1183)
!1191 = !DILocation(line: 249, column: 17, scope: !1183)
!1192 = distinct !{!1192, !1178, !1193, !845}
!1193 = !DILocation(line: 250, column: 5, scope: !1167)
!1194 = !DILocation(line: 251, column: 3, scope: !1167)
!1195 = !DILocation(line: 242, column: 58, scope: !1161)
!1196 = !DILocation(line: 242, column: 3, scope: !1161)
!1197 = distinct !{!1197, !1165, !1198, !845}
!1198 = !DILocation(line: 251, column: 3, scope: !1158)
!1199 = !DILocation(line: 252, column: 1, scope: !1134)
!1200 = distinct !DISubprogram(name: "h2v2_fancy_upsample", scope: !1, file: !1, line: 345, type: !585, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !602)
!1201 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1200, file: !1, line: 345, type: !167)
!1202 = !DILocation(line: 345, column: 39, scope: !1200)
!1203 = !DILocalVariable(name: "compptr", arg: 2, scope: !1200, file: !1, line: 345, type: !396)
!1204 = !DILocation(line: 345, column: 68, scope: !1200)
!1205 = !DILocalVariable(name: "input_data", arg: 3, scope: !1200, file: !1, line: 346, type: !202)
!1206 = !DILocation(line: 346, column: 19, scope: !1200)
!1207 = !DILocalVariable(name: "output_data_ptr", arg: 4, scope: !1200, file: !1, line: 346, type: !493)
!1208 = !DILocation(line: 346, column: 44, scope: !1200)
!1209 = !DILocalVariable(name: "output_data", scope: !1200, file: !1, line: 348, type: !202)
!1210 = !DILocation(line: 348, column: 14, scope: !1200)
!1211 = !DILocation(line: 348, column: 29, scope: !1200)
!1212 = !DILocation(line: 348, column: 28, scope: !1200)
!1213 = !DILocalVariable(name: "inptr0", scope: !1200, file: !1, line: 349, type: !204)
!1214 = !DILocation(line: 349, column: 21, scope: !1200)
!1215 = !DILocalVariable(name: "inptr1", scope: !1200, file: !1, line: 349, type: !204)
!1216 = !DILocation(line: 349, column: 29, scope: !1200)
!1217 = !DILocalVariable(name: "outptr", scope: !1200, file: !1, line: 349, type: !204)
!1218 = !DILocation(line: 349, column: 37, scope: !1200)
!1219 = !DILocalVariable(name: "thiscolsum", scope: !1200, file: !1, line: 351, type: !193)
!1220 = !DILocation(line: 351, column: 16, scope: !1200)
!1221 = !DILocalVariable(name: "lastcolsum", scope: !1200, file: !1, line: 351, type: !193)
!1222 = !DILocation(line: 351, column: 28, scope: !1200)
!1223 = !DILocalVariable(name: "nextcolsum", scope: !1200, file: !1, line: 351, type: !193)
!1224 = !DILocation(line: 351, column: 40, scope: !1200)
!1225 = !DILocalVariable(name: "colctr", scope: !1200, file: !1, line: 355, type: !209)
!1226 = !DILocation(line: 355, column: 23, scope: !1200)
!1227 = !DILocalVariable(name: "inrow", scope: !1200, file: !1, line: 356, type: !193)
!1228 = !DILocation(line: 356, column: 7, scope: !1200)
!1229 = !DILocalVariable(name: "outrow", scope: !1200, file: !1, line: 356, type: !193)
!1230 = !DILocation(line: 356, column: 14, scope: !1200)
!1231 = !DILocalVariable(name: "v", scope: !1200, file: !1, line: 356, type: !193)
!1232 = !DILocation(line: 356, column: 22, scope: !1200)
!1233 = !DILocation(line: 358, column: 18, scope: !1200)
!1234 = !DILocation(line: 358, column: 9, scope: !1200)
!1235 = !DILocation(line: 359, column: 3, scope: !1200)
!1236 = !DILocation(line: 359, column: 10, scope: !1200)
!1237 = !DILocation(line: 359, column: 19, scope: !1200)
!1238 = !DILocation(line: 359, column: 26, scope: !1200)
!1239 = !DILocation(line: 359, column: 17, scope: !1200)
!1240 = !DILocation(line: 360, column: 12, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1242, file: !1, line: 360, column: 5)
!1242 = distinct !DILexicalBlock(scope: !1200, file: !1, line: 359, column: 45)
!1243 = !DILocation(line: 360, column: 10, scope: !1241)
!1244 = !DILocation(line: 360, column: 17, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1241, file: !1, line: 360, column: 5)
!1246 = !DILocation(line: 360, column: 19, scope: !1245)
!1247 = !DILocation(line: 360, column: 5, scope: !1241)
!1248 = !DILocation(line: 362, column: 16, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1245, file: !1, line: 360, column: 29)
!1250 = !DILocation(line: 362, column: 27, scope: !1249)
!1251 = !DILocation(line: 362, column: 14, scope: !1249)
!1252 = !DILocation(line: 363, column: 11, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !1249, file: !1, line: 363, column: 11)
!1254 = !DILocation(line: 363, column: 13, scope: !1253)
!1255 = !DILocation(line: 364, column: 11, scope: !1253)
!1256 = !DILocation(line: 364, column: 22, scope: !1253)
!1257 = !DILocation(line: 364, column: 27, scope: !1253)
!1258 = !DILocation(line: 364, column: 9, scope: !1253)
!1259 = !DILocation(line: 364, column: 2, scope: !1253)
!1260 = !DILocation(line: 366, column: 11, scope: !1253)
!1261 = !DILocation(line: 366, column: 22, scope: !1253)
!1262 = !DILocation(line: 366, column: 27, scope: !1253)
!1263 = !DILocation(line: 366, column: 9, scope: !1253)
!1264 = !DILocation(line: 367, column: 16, scope: !1249)
!1265 = !DILocation(line: 367, column: 34, scope: !1249)
!1266 = !DILocation(line: 367, column: 14, scope: !1249)
!1267 = !DILocation(line: 370, column: 20, scope: !1249)
!1268 = !DILocation(line: 370, column: 42, scope: !1249)
!1269 = !DILocation(line: 370, column: 48, scope: !1249)
!1270 = !DILocation(line: 370, column: 46, scope: !1249)
!1271 = !DILocation(line: 370, column: 18, scope: !1249)
!1272 = !DILocation(line: 371, column: 20, scope: !1249)
!1273 = !DILocation(line: 371, column: 42, scope: !1249)
!1274 = !DILocation(line: 371, column: 48, scope: !1249)
!1275 = !DILocation(line: 371, column: 46, scope: !1249)
!1276 = !DILocation(line: 371, column: 18, scope: !1249)
!1277 = !DILocation(line: 372, column: 31, scope: !1249)
!1278 = !DILocation(line: 372, column: 42, scope: !1249)
!1279 = !DILocation(line: 372, column: 46, scope: !1249)
!1280 = !DILocation(line: 372, column: 51, scope: !1249)
!1281 = !DILocation(line: 372, column: 19, scope: !1249)
!1282 = !DILocation(line: 372, column: 14, scope: !1249)
!1283 = !DILocation(line: 372, column: 17, scope: !1249)
!1284 = !DILocation(line: 373, column: 31, scope: !1249)
!1285 = !DILocation(line: 373, column: 42, scope: !1249)
!1286 = !DILocation(line: 373, column: 48, scope: !1249)
!1287 = !DILocation(line: 373, column: 46, scope: !1249)
!1288 = !DILocation(line: 373, column: 59, scope: !1249)
!1289 = !DILocation(line: 373, column: 64, scope: !1249)
!1290 = !DILocation(line: 373, column: 19, scope: !1249)
!1291 = !DILocation(line: 373, column: 14, scope: !1249)
!1292 = !DILocation(line: 373, column: 17, scope: !1249)
!1293 = !DILocation(line: 374, column: 20, scope: !1249)
!1294 = !DILocation(line: 374, column: 18, scope: !1249)
!1295 = !DILocation(line: 374, column: 45, scope: !1249)
!1296 = !DILocation(line: 374, column: 43, scope: !1249)
!1297 = !DILocation(line: 376, column: 21, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1249, file: !1, line: 376, column: 7)
!1299 = !DILocation(line: 376, column: 30, scope: !1298)
!1300 = !DILocation(line: 376, column: 48, scope: !1298)
!1301 = !DILocation(line: 376, column: 19, scope: !1298)
!1302 = !DILocation(line: 376, column: 12, scope: !1298)
!1303 = !DILocation(line: 376, column: 53, scope: !1304)
!1304 = distinct !DILexicalBlock(scope: !1298, file: !1, line: 376, column: 7)
!1305 = !DILocation(line: 376, column: 60, scope: !1304)
!1306 = !DILocation(line: 376, column: 7, scope: !1298)
!1307 = !DILocation(line: 379, column: 15, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1304, file: !1, line: 376, column: 75)
!1309 = !DILocation(line: 379, column: 37, scope: !1308)
!1310 = !DILocation(line: 379, column: 43, scope: !1308)
!1311 = !DILocation(line: 379, column: 41, scope: !1308)
!1312 = !DILocation(line: 379, column: 13, scope: !1308)
!1313 = !DILocation(line: 380, column: 26, scope: !1308)
!1314 = !DILocation(line: 380, column: 37, scope: !1308)
!1315 = !DILocation(line: 380, column: 43, scope: !1308)
!1316 = !DILocation(line: 380, column: 41, scope: !1308)
!1317 = !DILocation(line: 380, column: 54, scope: !1308)
!1318 = !DILocation(line: 380, column: 59, scope: !1308)
!1319 = !DILocation(line: 380, column: 14, scope: !1308)
!1320 = !DILocation(line: 380, column: 9, scope: !1308)
!1321 = !DILocation(line: 380, column: 12, scope: !1308)
!1322 = !DILocation(line: 381, column: 26, scope: !1308)
!1323 = !DILocation(line: 381, column: 37, scope: !1308)
!1324 = !DILocation(line: 381, column: 43, scope: !1308)
!1325 = !DILocation(line: 381, column: 41, scope: !1308)
!1326 = !DILocation(line: 381, column: 54, scope: !1308)
!1327 = !DILocation(line: 381, column: 59, scope: !1308)
!1328 = !DILocation(line: 381, column: 14, scope: !1308)
!1329 = !DILocation(line: 381, column: 9, scope: !1308)
!1330 = !DILocation(line: 381, column: 12, scope: !1308)
!1331 = !DILocation(line: 382, column: 15, scope: !1308)
!1332 = !DILocation(line: 382, column: 13, scope: !1308)
!1333 = !DILocation(line: 382, column: 40, scope: !1308)
!1334 = !DILocation(line: 382, column: 38, scope: !1308)
!1335 = !DILocation(line: 383, column: 7, scope: !1308)
!1336 = !DILocation(line: 376, column: 71, scope: !1304)
!1337 = !DILocation(line: 376, column: 7, scope: !1304)
!1338 = distinct !{!1338, !1306, !1339, !845}
!1339 = !DILocation(line: 383, column: 7, scope: !1298)
!1340 = !DILocation(line: 386, column: 31, scope: !1249)
!1341 = !DILocation(line: 386, column: 42, scope: !1249)
!1342 = !DILocation(line: 386, column: 48, scope: !1249)
!1343 = !DILocation(line: 386, column: 46, scope: !1249)
!1344 = !DILocation(line: 386, column: 59, scope: !1249)
!1345 = !DILocation(line: 386, column: 64, scope: !1249)
!1346 = !DILocation(line: 386, column: 19, scope: !1249)
!1347 = !DILocation(line: 386, column: 14, scope: !1249)
!1348 = !DILocation(line: 386, column: 17, scope: !1249)
!1349 = !DILocation(line: 387, column: 31, scope: !1249)
!1350 = !DILocation(line: 387, column: 42, scope: !1249)
!1351 = !DILocation(line: 387, column: 46, scope: !1249)
!1352 = !DILocation(line: 387, column: 51, scope: !1249)
!1353 = !DILocation(line: 387, column: 19, scope: !1249)
!1354 = !DILocation(line: 387, column: 14, scope: !1249)
!1355 = !DILocation(line: 387, column: 17, scope: !1249)
!1356 = !DILocation(line: 388, column: 5, scope: !1249)
!1357 = !DILocation(line: 360, column: 25, scope: !1245)
!1358 = !DILocation(line: 360, column: 5, scope: !1245)
!1359 = distinct !{!1359, !1247, !1360, !845}
!1360 = !DILocation(line: 388, column: 5, scope: !1241)
!1361 = !DILocation(line: 389, column: 10, scope: !1242)
!1362 = distinct !{!1362, !1235, !1363, !845}
!1363 = !DILocation(line: 390, column: 3, scope: !1200)
!1364 = !DILocation(line: 391, column: 1, scope: !1200)
!1365 = distinct !DISubprogram(name: "h2v2_upsample", scope: !1, file: !1, line: 261, type: !585, scopeLine: 263, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !602)
!1366 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1365, file: !1, line: 261, type: !167)
!1367 = !DILocation(line: 261, column: 33, scope: !1365)
!1368 = !DILocalVariable(name: "compptr", arg: 2, scope: !1365, file: !1, line: 261, type: !396)
!1369 = !DILocation(line: 261, column: 62, scope: !1365)
!1370 = !DILocalVariable(name: "input_data", arg: 3, scope: !1365, file: !1, line: 262, type: !202)
!1371 = !DILocation(line: 262, column: 20, scope: !1365)
!1372 = !DILocalVariable(name: "output_data_ptr", arg: 4, scope: !1365, file: !1, line: 262, type: !493)
!1373 = !DILocation(line: 262, column: 45, scope: !1365)
!1374 = !DILocalVariable(name: "output_data", scope: !1365, file: !1, line: 264, type: !202)
!1375 = !DILocation(line: 264, column: 14, scope: !1365)
!1376 = !DILocation(line: 264, column: 29, scope: !1365)
!1377 = !DILocation(line: 264, column: 28, scope: !1365)
!1378 = !DILocalVariable(name: "inptr", scope: !1365, file: !1, line: 265, type: !204)
!1379 = !DILocation(line: 265, column: 21, scope: !1365)
!1380 = !DILocalVariable(name: "outptr", scope: !1365, file: !1, line: 265, type: !204)
!1381 = !DILocation(line: 265, column: 28, scope: !1365)
!1382 = !DILocalVariable(name: "invalue", scope: !1365, file: !1, line: 266, type: !206)
!1383 = !DILocation(line: 266, column: 20, scope: !1365)
!1384 = !DILocalVariable(name: "outend", scope: !1365, file: !1, line: 267, type: !204)
!1385 = !DILocation(line: 267, column: 12, scope: !1365)
!1386 = !DILocalVariable(name: "inrow", scope: !1365, file: !1, line: 268, type: !193)
!1387 = !DILocation(line: 268, column: 7, scope: !1365)
!1388 = !DILocalVariable(name: "outrow", scope: !1365, file: !1, line: 268, type: !193)
!1389 = !DILocation(line: 268, column: 14, scope: !1365)
!1390 = !DILocation(line: 270, column: 18, scope: !1365)
!1391 = !DILocation(line: 270, column: 9, scope: !1365)
!1392 = !DILocation(line: 271, column: 3, scope: !1365)
!1393 = !DILocation(line: 271, column: 10, scope: !1365)
!1394 = !DILocation(line: 271, column: 19, scope: !1365)
!1395 = !DILocation(line: 271, column: 26, scope: !1365)
!1396 = !DILocation(line: 271, column: 17, scope: !1365)
!1397 = !DILocation(line: 272, column: 13, scope: !1398)
!1398 = distinct !DILexicalBlock(scope: !1365, file: !1, line: 271, column: 45)
!1399 = !DILocation(line: 272, column: 24, scope: !1398)
!1400 = !DILocation(line: 272, column: 11, scope: !1398)
!1401 = !DILocation(line: 273, column: 14, scope: !1398)
!1402 = !DILocation(line: 273, column: 26, scope: !1398)
!1403 = !DILocation(line: 273, column: 12, scope: !1398)
!1404 = !DILocation(line: 274, column: 14, scope: !1398)
!1405 = !DILocation(line: 274, column: 23, scope: !1398)
!1406 = !DILocation(line: 274, column: 30, scope: !1398)
!1407 = !DILocation(line: 274, column: 21, scope: !1398)
!1408 = !DILocation(line: 274, column: 12, scope: !1398)
!1409 = !DILocation(line: 275, column: 5, scope: !1398)
!1410 = !DILocation(line: 275, column: 12, scope: !1398)
!1411 = !DILocation(line: 275, column: 21, scope: !1398)
!1412 = !DILocation(line: 275, column: 19, scope: !1398)
!1413 = !DILocation(line: 276, column: 23, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !1398, file: !1, line: 275, column: 29)
!1415 = !DILocation(line: 276, column: 17, scope: !1414)
!1416 = !DILocation(line: 276, column: 15, scope: !1414)
!1417 = !DILocation(line: 277, column: 19, scope: !1414)
!1418 = !DILocation(line: 277, column: 14, scope: !1414)
!1419 = !DILocation(line: 277, column: 17, scope: !1414)
!1420 = !DILocation(line: 278, column: 19, scope: !1414)
!1421 = !DILocation(line: 278, column: 14, scope: !1414)
!1422 = !DILocation(line: 278, column: 17, scope: !1414)
!1423 = distinct !{!1423, !1409, !1424, !845}
!1424 = !DILocation(line: 279, column: 5, scope: !1398)
!1425 = !DILocation(line: 280, column: 23, scope: !1398)
!1426 = !DILocation(line: 280, column: 36, scope: !1398)
!1427 = !DILocation(line: 280, column: 44, scope: !1398)
!1428 = !DILocation(line: 280, column: 57, scope: !1398)
!1429 = !DILocation(line: 280, column: 63, scope: !1398)
!1430 = !DILocation(line: 281, column: 12, scope: !1398)
!1431 = !DILocation(line: 281, column: 19, scope: !1398)
!1432 = !DILocation(line: 280, column: 5, scope: !1398)
!1433 = !DILocation(line: 282, column: 10, scope: !1398)
!1434 = !DILocation(line: 283, column: 12, scope: !1398)
!1435 = distinct !{!1435, !1392, !1436, !845}
!1436 = !DILocation(line: 284, column: 3, scope: !1365)
!1437 = !DILocation(line: 285, column: 1, scope: !1365)
!1438 = distinct !DISubprogram(name: "int_upsample", scope: !1, file: !1, line: 189, type: !585, scopeLine: 191, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !602)
!1439 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1438, file: !1, line: 189, type: !167)
!1440 = !DILocation(line: 189, column: 32, scope: !1438)
!1441 = !DILocalVariable(name: "compptr", arg: 2, scope: !1438, file: !1, line: 189, type: !396)
!1442 = !DILocation(line: 189, column: 61, scope: !1438)
!1443 = !DILocalVariable(name: "input_data", arg: 3, scope: !1438, file: !1, line: 190, type: !202)
!1444 = !DILocation(line: 190, column: 19, scope: !1438)
!1445 = !DILocalVariable(name: "output_data_ptr", arg: 4, scope: !1438, file: !1, line: 190, type: !493)
!1446 = !DILocation(line: 190, column: 44, scope: !1438)
!1447 = !DILocalVariable(name: "upsample", scope: !1438, file: !1, line: 192, type: !155)
!1448 = !DILocation(line: 192, column: 19, scope: !1438)
!1449 = !DILocation(line: 192, column: 48, scope: !1438)
!1450 = !DILocation(line: 192, column: 55, scope: !1438)
!1451 = !DILocalVariable(name: "output_data", scope: !1438, file: !1, line: 193, type: !202)
!1452 = !DILocation(line: 193, column: 14, scope: !1438)
!1453 = !DILocation(line: 193, column: 29, scope: !1438)
!1454 = !DILocation(line: 193, column: 28, scope: !1438)
!1455 = !DILocalVariable(name: "inptr", scope: !1438, file: !1, line: 194, type: !204)
!1456 = !DILocation(line: 194, column: 21, scope: !1438)
!1457 = !DILocalVariable(name: "outptr", scope: !1438, file: !1, line: 194, type: !204)
!1458 = !DILocation(line: 194, column: 28, scope: !1438)
!1459 = !DILocalVariable(name: "invalue", scope: !1438, file: !1, line: 195, type: !206)
!1460 = !DILocation(line: 195, column: 20, scope: !1438)
!1461 = !DILocalVariable(name: "h", scope: !1438, file: !1, line: 196, type: !193)
!1462 = !DILocation(line: 196, column: 16, scope: !1438)
!1463 = !DILocalVariable(name: "outend", scope: !1438, file: !1, line: 197, type: !204)
!1464 = !DILocation(line: 197, column: 12, scope: !1438)
!1465 = !DILocalVariable(name: "h_expand", scope: !1438, file: !1, line: 198, type: !193)
!1466 = !DILocation(line: 198, column: 7, scope: !1438)
!1467 = !DILocalVariable(name: "v_expand", scope: !1438, file: !1, line: 198, type: !193)
!1468 = !DILocation(line: 198, column: 17, scope: !1438)
!1469 = !DILocalVariable(name: "inrow", scope: !1438, file: !1, line: 199, type: !193)
!1470 = !DILocation(line: 199, column: 7, scope: !1438)
!1471 = !DILocalVariable(name: "outrow", scope: !1438, file: !1, line: 199, type: !193)
!1472 = !DILocation(line: 199, column: 14, scope: !1438)
!1473 = !DILocation(line: 201, column: 14, scope: !1438)
!1474 = !DILocation(line: 201, column: 24, scope: !1438)
!1475 = !DILocation(line: 201, column: 33, scope: !1438)
!1476 = !DILocation(line: 201, column: 42, scope: !1438)
!1477 = !DILocation(line: 201, column: 12, scope: !1438)
!1478 = !DILocation(line: 202, column: 14, scope: !1438)
!1479 = !DILocation(line: 202, column: 24, scope: !1438)
!1480 = !DILocation(line: 202, column: 33, scope: !1438)
!1481 = !DILocation(line: 202, column: 42, scope: !1438)
!1482 = !DILocation(line: 202, column: 12, scope: !1438)
!1483 = !DILocation(line: 204, column: 18, scope: !1438)
!1484 = !DILocation(line: 204, column: 9, scope: !1438)
!1485 = !DILocation(line: 205, column: 3, scope: !1438)
!1486 = !DILocation(line: 205, column: 10, scope: !1438)
!1487 = !DILocation(line: 205, column: 19, scope: !1438)
!1488 = !DILocation(line: 205, column: 26, scope: !1438)
!1489 = !DILocation(line: 205, column: 17, scope: !1438)
!1490 = !DILocation(line: 207, column: 13, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !1438, file: !1, line: 205, column: 45)
!1492 = !DILocation(line: 207, column: 24, scope: !1491)
!1493 = !DILocation(line: 207, column: 11, scope: !1491)
!1494 = !DILocation(line: 208, column: 14, scope: !1491)
!1495 = !DILocation(line: 208, column: 26, scope: !1491)
!1496 = !DILocation(line: 208, column: 12, scope: !1491)
!1497 = !DILocation(line: 209, column: 14, scope: !1491)
!1498 = !DILocation(line: 209, column: 23, scope: !1491)
!1499 = !DILocation(line: 209, column: 30, scope: !1491)
!1500 = !DILocation(line: 209, column: 21, scope: !1491)
!1501 = !DILocation(line: 209, column: 12, scope: !1491)
!1502 = !DILocation(line: 210, column: 5, scope: !1491)
!1503 = !DILocation(line: 210, column: 12, scope: !1491)
!1504 = !DILocation(line: 210, column: 21, scope: !1491)
!1505 = !DILocation(line: 210, column: 19, scope: !1491)
!1506 = !DILocation(line: 211, column: 23, scope: !1507)
!1507 = distinct !DILexicalBlock(scope: !1491, file: !1, line: 210, column: 29)
!1508 = !DILocation(line: 211, column: 17, scope: !1507)
!1509 = !DILocation(line: 211, column: 15, scope: !1507)
!1510 = !DILocation(line: 212, column: 16, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1507, file: !1, line: 212, column: 7)
!1512 = !DILocation(line: 212, column: 14, scope: !1511)
!1513 = !DILocation(line: 212, column: 12, scope: !1511)
!1514 = !DILocation(line: 212, column: 26, scope: !1515)
!1515 = distinct !DILexicalBlock(scope: !1511, file: !1, line: 212, column: 7)
!1516 = !DILocation(line: 212, column: 28, scope: !1515)
!1517 = !DILocation(line: 212, column: 7, scope: !1511)
!1518 = !DILocation(line: 213, column: 14, scope: !1519)
!1519 = distinct !DILexicalBlock(scope: !1515, file: !1, line: 212, column: 38)
!1520 = !DILocation(line: 213, column: 9, scope: !1519)
!1521 = !DILocation(line: 213, column: 12, scope: !1519)
!1522 = !DILocation(line: 214, column: 7, scope: !1519)
!1523 = !DILocation(line: 212, column: 34, scope: !1515)
!1524 = !DILocation(line: 212, column: 7, scope: !1515)
!1525 = distinct !{!1525, !1517, !1526, !845}
!1526 = !DILocation(line: 214, column: 7, scope: !1511)
!1527 = distinct !{!1527, !1502, !1528, !845}
!1528 = !DILocation(line: 215, column: 5, scope: !1491)
!1529 = !DILocation(line: 217, column: 9, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1491, file: !1, line: 217, column: 9)
!1531 = !DILocation(line: 217, column: 18, scope: !1530)
!1532 = !DILocation(line: 218, column: 25, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !1530, file: !1, line: 217, column: 23)
!1534 = !DILocation(line: 218, column: 38, scope: !1533)
!1535 = !DILocation(line: 218, column: 46, scope: !1533)
!1536 = !DILocation(line: 218, column: 59, scope: !1533)
!1537 = !DILocation(line: 218, column: 65, scope: !1533)
!1538 = !DILocation(line: 219, column: 4, scope: !1533)
!1539 = !DILocation(line: 219, column: 12, scope: !1533)
!1540 = !DILocation(line: 219, column: 16, scope: !1533)
!1541 = !DILocation(line: 219, column: 23, scope: !1533)
!1542 = !DILocation(line: 218, column: 7, scope: !1533)
!1543 = !DILocation(line: 220, column: 5, scope: !1533)
!1544 = !DILocation(line: 221, column: 10, scope: !1491)
!1545 = !DILocation(line: 222, column: 15, scope: !1491)
!1546 = !DILocation(line: 222, column: 12, scope: !1491)
!1547 = distinct !{!1547, !1485, !1548, !845}
!1548 = !DILocation(line: 223, column: 3, scope: !1438)
!1549 = !DILocation(line: 224, column: 1, scope: !1438)
