; ModuleID = 'cBench/consumer_jpeg_c/src/jdhuff.c'
source_filename = "cBench/consumer_jpeg_c/src/jdhuff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jpeg_decompress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.d_derived_tbl = type { [17 x i64], [18 x i64], [17 x i32], ptr, [256 x i32], [256 x i8] }
%struct.JHUFF_TBL = type { [17 x i8], [256 x i8], i32 }
%struct.bitread_working_state = type { ptr, i64, i32, i64, i32, ptr, ptr }
%struct.jpeg_source_mgr = type { ptr, i64, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.huff_entropy_decoder = type { %struct.jpeg_entropy_decoder, %struct.bitread_perm_state, %struct.savable_state, i32, [4 x ptr], [4 x ptr] }
%struct.jpeg_entropy_decoder = type { ptr, ptr }
%struct.bitread_perm_state = type { i64, i32, i32 }
%struct.savable_state = type { [4 x i32] }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.jpeg_marker_reader = type { ptr, ptr, ptr, ptr, [16 x ptr], i32, i32, i32, i32 }

@extend_test = internal constant [16 x i32] [i32 0, i32 1, i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128, i32 256, i32 512, i32 1024, i32 2048, i32 4096, i32 8192, i32 16384], align 16, !dbg !0
@extend_offset = internal constant [16 x i32] [i32 0, i32 -1, i32 -3, i32 -7, i32 -15, i32 -31, i32 -63, i32 -127, i32 -255, i32 -511, i32 -1023, i32 -2047, i32 -4095, i32 -8191, i32 -16383, i32 -32767], align 16, !dbg !618
@jpeg_natural_order = external constant [0 x i32], align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @jpeg_make_d_derived_tbl(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !630 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [257 x i8], align 16
  %15 = alloca [257 x i32], align 16
  %16 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
    #dbg_declare(ptr %4, !635, !DIExpression(), !636)
  store ptr %1, ptr %5, align 8
    #dbg_declare(ptr %5, !637, !DIExpression(), !638)
  store ptr %2, ptr %6, align 8
    #dbg_declare(ptr %6, !639, !DIExpression(), !640)
    #dbg_declare(ptr %7, !641, !DIExpression(), !642)
    #dbg_declare(ptr %8, !643, !DIExpression(), !644)
    #dbg_declare(ptr %9, !645, !DIExpression(), !646)
    #dbg_declare(ptr %10, !647, !DIExpression(), !648)
    #dbg_declare(ptr %11, !649, !DIExpression(), !650)
    #dbg_declare(ptr %12, !651, !DIExpression(), !652)
    #dbg_declare(ptr %13, !653, !DIExpression(), !654)
    #dbg_declare(ptr %14, !655, !DIExpression(), !659)
    #dbg_declare(ptr %15, !660, !DIExpression(), !662)
    #dbg_declare(ptr %16, !663, !DIExpression(), !664)
  %17 = load ptr, ptr %6, align 8, !dbg !665
  %18 = load ptr, ptr %17, align 8, !dbg !667
  %19 = icmp eq ptr %18, null, !dbg !668
  br i1 %19, label %20, label %29, !dbg !668

20:                                               ; preds = %3
  %21 = load ptr, ptr %4, align 8, !dbg !669
  %22 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %21, i32 0, i32 1, !dbg !670
  %23 = load ptr, ptr %22, align 8, !dbg !670
  %24 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %23, i32 0, i32 0, !dbg !671
  %25 = load ptr, ptr %24, align 8, !dbg !671
  %26 = load ptr, ptr %4, align 8, !dbg !672
  %27 = call ptr %25(ptr noundef %26, i32 noundef 1, i64 noundef 1640), !dbg !673
  %28 = load ptr, ptr %6, align 8, !dbg !674
  store ptr %27, ptr %28, align 8, !dbg !675
  br label %29, !dbg !676

29:                                               ; preds = %20, %3
  %30 = load ptr, ptr %6, align 8, !dbg !677
  %31 = load ptr, ptr %30, align 8, !dbg !678
  store ptr %31, ptr %7, align 8, !dbg !679
  %32 = load ptr, ptr %5, align 8, !dbg !680
  %33 = load ptr, ptr %7, align 8, !dbg !681
  %34 = getelementptr inbounds nuw %struct.d_derived_tbl, ptr %33, i32 0, i32 3, !dbg !682
  store ptr %32, ptr %34, align 8, !dbg !683
  store i32 0, ptr %8, align 4, !dbg !684
  store i32 1, ptr %10, align 4, !dbg !685
  br label %35, !dbg !687

35:                                               ; preds = %60, %29
  %36 = load i32, ptr %10, align 4, !dbg !688
  %37 = icmp sle i32 %36, 16, !dbg !690
  br i1 %37, label %38, label %63, !dbg !691

38:                                               ; preds = %35
  store i32 1, ptr %9, align 4, !dbg !692
  br label %39, !dbg !695

39:                                               ; preds = %56, %38
  %40 = load i32, ptr %9, align 4, !dbg !696
  %41 = load ptr, ptr %5, align 8, !dbg !698
  %42 = getelementptr inbounds nuw %struct.JHUFF_TBL, ptr %41, i32 0, i32 0, !dbg !699
  %43 = load i32, ptr %10, align 4, !dbg !700
  %44 = sext i32 %43 to i64, !dbg !698
  %45 = getelementptr inbounds [17 x i8], ptr %42, i64 0, i64 %44, !dbg !698
  %46 = load i8, ptr %45, align 1, !dbg !698
  %47 = zext i8 %46 to i32, !dbg !701
  %48 = icmp sle i32 %40, %47, !dbg !702
  br i1 %48, label %49, label %59, !dbg !703

49:                                               ; preds = %39
  %50 = load i32, ptr %10, align 4, !dbg !704
  %51 = trunc i32 %50 to i8, !dbg !705
  %52 = load i32, ptr %8, align 4, !dbg !706
  %53 = add nsw i32 %52, 1, !dbg !706
  store i32 %53, ptr %8, align 4, !dbg !706
  %54 = sext i32 %52 to i64, !dbg !707
  %55 = getelementptr inbounds [257 x i8], ptr %14, i64 0, i64 %54, !dbg !707
  store i8 %51, ptr %55, align 1, !dbg !708
  br label %56, !dbg !707

56:                                               ; preds = %49
  %57 = load i32, ptr %9, align 4, !dbg !709
  %58 = add nsw i32 %57, 1, !dbg !709
  store i32 %58, ptr %9, align 4, !dbg !709
  br label %39, !dbg !710, !llvm.loop !711

59:                                               ; preds = %39
  br label %60, !dbg !714

60:                                               ; preds = %59
  %61 = load i32, ptr %10, align 4, !dbg !715
  %62 = add nsw i32 %61, 1, !dbg !715
  store i32 %62, ptr %10, align 4, !dbg !715
  br label %35, !dbg !716, !llvm.loop !717

63:                                               ; preds = %35
  %64 = load i32, ptr %8, align 4, !dbg !719
  %65 = sext i32 %64 to i64, !dbg !720
  %66 = getelementptr inbounds [257 x i8], ptr %14, i64 0, i64 %65, !dbg !720
  store i8 0, ptr %66, align 1, !dbg !721
  store i32 0, ptr %16, align 4, !dbg !722
  %67 = getelementptr inbounds [257 x i8], ptr %14, i64 0, i64 0, !dbg !723
  %68 = load i8, ptr %67, align 16, !dbg !723
  %69 = sext i8 %68 to i32, !dbg !723
  store i32 %69, ptr %11, align 4, !dbg !724
  store i32 0, ptr %8, align 4, !dbg !725
  br label %70, !dbg !726

70:                                               ; preds = %93, %63
  %71 = load i32, ptr %8, align 4, !dbg !727
  %72 = sext i32 %71 to i64, !dbg !728
  %73 = getelementptr inbounds [257 x i8], ptr %14, i64 0, i64 %72, !dbg !728
  %74 = load i8, ptr %73, align 1, !dbg !728
  %75 = icmp ne i8 %74, 0, !dbg !726
  br i1 %75, label %76, label %98, !dbg !726

76:                                               ; preds = %70
  br label %77, !dbg !729

77:                                               ; preds = %85, %76
  %78 = load i32, ptr %8, align 4, !dbg !731
  %79 = sext i32 %78 to i64, !dbg !732
  %80 = getelementptr inbounds [257 x i8], ptr %14, i64 0, i64 %79, !dbg !732
  %81 = load i8, ptr %80, align 1, !dbg !732
  %82 = sext i8 %81 to i32, !dbg !733
  %83 = load i32, ptr %11, align 4, !dbg !734
  %84 = icmp eq i32 %82, %83, !dbg !735
  br i1 %84, label %85, label %93, !dbg !729

85:                                               ; preds = %77
  %86 = load i32, ptr %16, align 4, !dbg !736
  %87 = load i32, ptr %8, align 4, !dbg !738
  %88 = add nsw i32 %87, 1, !dbg !738
  store i32 %88, ptr %8, align 4, !dbg !738
  %89 = sext i32 %87 to i64, !dbg !739
  %90 = getelementptr inbounds [257 x i32], ptr %15, i64 0, i64 %89, !dbg !739
  store i32 %86, ptr %90, align 4, !dbg !740
  %91 = load i32, ptr %16, align 4, !dbg !741
  %92 = add i32 %91, 1, !dbg !741
  store i32 %92, ptr %16, align 4, !dbg !741
  br label %77, !dbg !729, !llvm.loop !742

93:                                               ; preds = %77
  %94 = load i32, ptr %16, align 4, !dbg !744
  %95 = shl i32 %94, 1, !dbg !744
  store i32 %95, ptr %16, align 4, !dbg !744
  %96 = load i32, ptr %11, align 4, !dbg !745
  %97 = add nsw i32 %96, 1, !dbg !745
  store i32 %97, ptr %11, align 4, !dbg !745
  br label %70, !dbg !726, !llvm.loop !746

98:                                               ; preds = %70
  store i32 0, ptr %8, align 4, !dbg !748
  store i32 1, ptr %10, align 4, !dbg !749
  br label %99, !dbg !751

99:                                               ; preds = %154, %98
  %100 = load i32, ptr %10, align 4, !dbg !752
  %101 = icmp sle i32 %100, 16, !dbg !754
  br i1 %101, label %102, label %157, !dbg !755

102:                                              ; preds = %99
  %103 = load ptr, ptr %5, align 8, !dbg !756
  %104 = getelementptr inbounds nuw %struct.JHUFF_TBL, ptr %103, i32 0, i32 0, !dbg !759
  %105 = load i32, ptr %10, align 4, !dbg !760
  %106 = sext i32 %105 to i64, !dbg !756
  %107 = getelementptr inbounds [17 x i8], ptr %104, i64 0, i64 %106, !dbg !756
  %108 = load i8, ptr %107, align 1, !dbg !756
  %109 = icmp ne i8 %108, 0, !dbg !756
  br i1 %109, label %110, label %147, !dbg !756

110:                                              ; preds = %102
  %111 = load i32, ptr %8, align 4, !dbg !761
  %112 = load ptr, ptr %7, align 8, !dbg !763
  %113 = getelementptr inbounds nuw %struct.d_derived_tbl, ptr %112, i32 0, i32 2, !dbg !764
  %114 = load i32, ptr %10, align 4, !dbg !765
  %115 = sext i32 %114 to i64, !dbg !763
  %116 = getelementptr inbounds [17 x i32], ptr %113, i64 0, i64 %115, !dbg !763
  store i32 %111, ptr %116, align 4, !dbg !766
  %117 = load i32, ptr %8, align 4, !dbg !767
  %118 = sext i32 %117 to i64, !dbg !768
  %119 = getelementptr inbounds [257 x i32], ptr %15, i64 0, i64 %118, !dbg !768
  %120 = load i32, ptr %119, align 4, !dbg !768
  %121 = zext i32 %120 to i64, !dbg !768
  %122 = load ptr, ptr %7, align 8, !dbg !769
  %123 = getelementptr inbounds nuw %struct.d_derived_tbl, ptr %122, i32 0, i32 0, !dbg !770
  %124 = load i32, ptr %10, align 4, !dbg !771
  %125 = sext i32 %124 to i64, !dbg !769
  %126 = getelementptr inbounds [17 x i64], ptr %123, i64 0, i64 %125, !dbg !769
  store i64 %121, ptr %126, align 8, !dbg !772
  %127 = load ptr, ptr %5, align 8, !dbg !773
  %128 = getelementptr inbounds nuw %struct.JHUFF_TBL, ptr %127, i32 0, i32 0, !dbg !774
  %129 = load i32, ptr %10, align 4, !dbg !775
  %130 = sext i32 %129 to i64, !dbg !773
  %131 = getelementptr inbounds [17 x i8], ptr %128, i64 0, i64 %130, !dbg !773
  %132 = load i8, ptr %131, align 1, !dbg !773
  %133 = zext i8 %132 to i32, !dbg !773
  %134 = load i32, ptr %8, align 4, !dbg !776
  %135 = add nsw i32 %134, %133, !dbg !776
  store i32 %135, ptr %8, align 4, !dbg !776
  %136 = load i32, ptr %8, align 4, !dbg !777
  %137 = sub nsw i32 %136, 1, !dbg !778
  %138 = sext i32 %137 to i64, !dbg !779
  %139 = getelementptr inbounds [257 x i32], ptr %15, i64 0, i64 %138, !dbg !779
  %140 = load i32, ptr %139, align 4, !dbg !779
  %141 = zext i32 %140 to i64, !dbg !779
  %142 = load ptr, ptr %7, align 8, !dbg !780
  %143 = getelementptr inbounds nuw %struct.d_derived_tbl, ptr %142, i32 0, i32 1, !dbg !781
  %144 = load i32, ptr %10, align 4, !dbg !782
  %145 = sext i32 %144 to i64, !dbg !780
  %146 = getelementptr inbounds [18 x i64], ptr %143, i64 0, i64 %145, !dbg !780
  store i64 %141, ptr %146, align 8, !dbg !783
  br label %153, !dbg !784

147:                                              ; preds = %102
  %148 = load ptr, ptr %7, align 8, !dbg !785
  %149 = getelementptr inbounds nuw %struct.d_derived_tbl, ptr %148, i32 0, i32 1, !dbg !787
  %150 = load i32, ptr %10, align 4, !dbg !788
  %151 = sext i32 %150 to i64, !dbg !785
  %152 = getelementptr inbounds [18 x i64], ptr %149, i64 0, i64 %151, !dbg !785
  store i64 -1, ptr %152, align 8, !dbg !789
  br label %153

153:                                              ; preds = %147, %110
  br label %154, !dbg !790

154:                                              ; preds = %153
  %155 = load i32, ptr %10, align 4, !dbg !791
  %156 = add nsw i32 %155, 1, !dbg !791
  store i32 %156, ptr %10, align 4, !dbg !791
  br label %99, !dbg !792, !llvm.loop !793

157:                                              ; preds = %99
  %158 = load ptr, ptr %7, align 8, !dbg !795
  %159 = getelementptr inbounds nuw %struct.d_derived_tbl, ptr %158, i32 0, i32 1, !dbg !796
  %160 = getelementptr inbounds [18 x i64], ptr %159, i64 0, i64 17, !dbg !795
  store i64 1048575, ptr %160, align 8, !dbg !797
  %161 = load ptr, ptr %7, align 8, !dbg !798
  %162 = getelementptr inbounds nuw %struct.d_derived_tbl, ptr %161, i32 0, i32 4, !dbg !798
  %163 = getelementptr inbounds [256 x i32], ptr %162, i64 0, i64 0, !dbg !798
  call void @llvm.memset.p0.i64(ptr align 8 %163, i8 0, i64 1024, i1 false), !dbg !798
  store i32 0, ptr %8, align 4, !dbg !799
  store i32 1, ptr %10, align 4, !dbg !800
  br label %164, !dbg !802

164:                                              ; preds = %222, %157
  %165 = load i32, ptr %10, align 4, !dbg !803
  %166 = icmp sle i32 %165, 8, !dbg !805
  br i1 %166, label %167, label %225, !dbg !806

167:                                              ; preds = %164
  store i32 1, ptr %9, align 4, !dbg !807
  br label %168, !dbg !810

168:                                              ; preds = %216, %167
  %169 = load i32, ptr %9, align 4, !dbg !811
  %170 = load ptr, ptr %5, align 8, !dbg !813
  %171 = getelementptr inbounds nuw %struct.JHUFF_TBL, ptr %170, i32 0, i32 0, !dbg !814
  %172 = load i32, ptr %10, align 4, !dbg !815
  %173 = sext i32 %172 to i64, !dbg !813
  %174 = getelementptr inbounds [17 x i8], ptr %171, i64 0, i64 %173, !dbg !813
  %175 = load i8, ptr %174, align 1, !dbg !813
  %176 = zext i8 %175 to i32, !dbg !816
  %177 = icmp sle i32 %169, %176, !dbg !817
  br i1 %177, label %178, label %221, !dbg !818

178:                                              ; preds = %168
  %179 = load i32, ptr %8, align 4, !dbg !819
  %180 = sext i32 %179 to i64, !dbg !821
  %181 = getelementptr inbounds [257 x i32], ptr %15, i64 0, i64 %180, !dbg !821
  %182 = load i32, ptr %181, align 4, !dbg !821
  %183 = load i32, ptr %10, align 4, !dbg !822
  %184 = sub nsw i32 8, %183, !dbg !823
  %185 = shl i32 %182, %184, !dbg !824
  store i32 %185, ptr %12, align 4, !dbg !825
  %186 = load i32, ptr %10, align 4, !dbg !826
  %187 = sub nsw i32 8, %186, !dbg !828
  %188 = shl i32 1, %187, !dbg !829
  store i32 %188, ptr %13, align 4, !dbg !830
  br label %189, !dbg !831

189:                                              ; preds = %212, %178
  %190 = load i32, ptr %13, align 4, !dbg !832
  %191 = icmp sgt i32 %190, 0, !dbg !834
  br i1 %191, label %192, label %215, !dbg !835

192:                                              ; preds = %189
  %193 = load i32, ptr %10, align 4, !dbg !836
  %194 = load ptr, ptr %7, align 8, !dbg !838
  %195 = getelementptr inbounds nuw %struct.d_derived_tbl, ptr %194, i32 0, i32 4, !dbg !839
  %196 = load i32, ptr %12, align 4, !dbg !840
  %197 = sext i32 %196 to i64, !dbg !838
  %198 = getelementptr inbounds [256 x i32], ptr %195, i64 0, i64 %197, !dbg !838
  store i32 %193, ptr %198, align 4, !dbg !841
  %199 = load ptr, ptr %5, align 8, !dbg !842
  %200 = getelementptr inbounds nuw %struct.JHUFF_TBL, ptr %199, i32 0, i32 1, !dbg !843
  %201 = load i32, ptr %8, align 4, !dbg !844
  %202 = sext i32 %201 to i64, !dbg !842
  %203 = getelementptr inbounds [256 x i8], ptr %200, i64 0, i64 %202, !dbg !842
  %204 = load i8, ptr %203, align 1, !dbg !842
  %205 = load ptr, ptr %7, align 8, !dbg !845
  %206 = getelementptr inbounds nuw %struct.d_derived_tbl, ptr %205, i32 0, i32 5, !dbg !846
  %207 = load i32, ptr %12, align 4, !dbg !847
  %208 = sext i32 %207 to i64, !dbg !845
  %209 = getelementptr inbounds [256 x i8], ptr %206, i64 0, i64 %208, !dbg !845
  store i8 %204, ptr %209, align 1, !dbg !848
  %210 = load i32, ptr %12, align 4, !dbg !849
  %211 = add nsw i32 %210, 1, !dbg !849
  store i32 %211, ptr %12, align 4, !dbg !849
  br label %212, !dbg !850

212:                                              ; preds = %192
  %213 = load i32, ptr %13, align 4, !dbg !851
  %214 = add nsw i32 %213, -1, !dbg !851
  store i32 %214, ptr %13, align 4, !dbg !851
  br label %189, !dbg !852, !llvm.loop !853

215:                                              ; preds = %189
  br label %216, !dbg !855

216:                                              ; preds = %215
  %217 = load i32, ptr %9, align 4, !dbg !856
  %218 = add nsw i32 %217, 1, !dbg !856
  store i32 %218, ptr %9, align 4, !dbg !856
  %219 = load i32, ptr %8, align 4, !dbg !857
  %220 = add nsw i32 %219, 1, !dbg !857
  store i32 %220, ptr %8, align 4, !dbg !857
  br label %168, !dbg !858, !llvm.loop !859

221:                                              ; preds = %168
  br label %222, !dbg !861

222:                                              ; preds = %221
  %223 = load i32, ptr %10, align 4, !dbg !862
  %224 = add nsw i32 %223, 1, !dbg !862
  store i32 %224, ptr %10, align 4, !dbg !862
  br label %164, !dbg !863, !llvm.loop !864

225:                                              ; preds = %164
  ret void, !dbg !866
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @jpeg_fill_bit_buffer(ptr noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3) #0 !dbg !867 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store ptr %0, ptr %6, align 8
    #dbg_declare(ptr %6, !882, !DIExpression(), !883)
  store i64 %1, ptr %7, align 8
    #dbg_declare(ptr %7, !884, !DIExpression(), !885)
  store i32 %2, ptr %8, align 4
    #dbg_declare(ptr %8, !886, !DIExpression(), !887)
  store i32 %3, ptr %9, align 4
    #dbg_declare(ptr %9, !888, !DIExpression(), !889)
    #dbg_declare(ptr %10, !890, !DIExpression(), !891)
  %13 = load ptr, ptr %6, align 8, !dbg !892
  %14 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %13, i32 0, i32 0, !dbg !893
  %15 = load ptr, ptr %14, align 8, !dbg !893
  store ptr %15, ptr %10, align 8, !dbg !891
    #dbg_declare(ptr %11, !894, !DIExpression(), !895)
  %16 = load ptr, ptr %6, align 8, !dbg !896
  %17 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %16, i32 0, i32 1, !dbg !897
  %18 = load i64, ptr %17, align 8, !dbg !897
  store i64 %18, ptr %11, align 8, !dbg !895
    #dbg_declare(ptr %12, !898, !DIExpression(), !899)
  br label %19, !dbg !900

19:                                               ; preds = %153, %4
  %20 = load i32, ptr %8, align 4, !dbg !901
  %21 = icmp slt i32 %20, 25, !dbg !902
  br i1 %21, label %22, label %161, !dbg !900

22:                                               ; preds = %19
  %23 = load ptr, ptr %6, align 8, !dbg !903
  %24 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %23, i32 0, i32 2, !dbg !906
  %25 = load i32, ptr %24, align 8, !dbg !906
  %26 = icmp ne i32 %25, 0, !dbg !907
  br i1 %26, label %27, label %28, !dbg !907

27:                                               ; preds = %22
  br label %120, !dbg !908

28:                                               ; preds = %22
  %29 = load i64, ptr %11, align 8, !dbg !909
  %30 = icmp eq i64 %29, 0, !dbg !911
  br i1 %30, label %31, label %60, !dbg !911

31:                                               ; preds = %28
  %32 = load ptr, ptr %6, align 8, !dbg !912
  %33 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %32, i32 0, i32 5, !dbg !915
  %34 = load ptr, ptr %33, align 8, !dbg !915
  %35 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %34, i32 0, i32 5, !dbg !916
  %36 = load ptr, ptr %35, align 8, !dbg !916
  %37 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %36, i32 0, i32 3, !dbg !917
  %38 = load ptr, ptr %37, align 8, !dbg !917
  %39 = load ptr, ptr %6, align 8, !dbg !918
  %40 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %39, i32 0, i32 5, !dbg !919
  %41 = load ptr, ptr %40, align 8, !dbg !919
  %42 = call i32 %38(ptr noundef %41), !dbg !920
  %43 = icmp ne i32 %42, 0, !dbg !920
  br i1 %43, label %45, label %44, !dbg !921

44:                                               ; preds = %31
  store i32 0, ptr %5, align 4, !dbg !922
  br label %174, !dbg !922

45:                                               ; preds = %31
  %46 = load ptr, ptr %6, align 8, !dbg !923
  %47 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %46, i32 0, i32 5, !dbg !924
  %48 = load ptr, ptr %47, align 8, !dbg !924
  %49 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %48, i32 0, i32 5, !dbg !925
  %50 = load ptr, ptr %49, align 8, !dbg !925
  %51 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %50, i32 0, i32 0, !dbg !926
  %52 = load ptr, ptr %51, align 8, !dbg !926
  store ptr %52, ptr %10, align 8, !dbg !927
  %53 = load ptr, ptr %6, align 8, !dbg !928
  %54 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %53, i32 0, i32 5, !dbg !929
  %55 = load ptr, ptr %54, align 8, !dbg !929
  %56 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %55, i32 0, i32 5, !dbg !930
  %57 = load ptr, ptr %56, align 8, !dbg !930
  %58 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %57, i32 0, i32 1, !dbg !931
  %59 = load i64, ptr %58, align 8, !dbg !931
  store i64 %59, ptr %11, align 8, !dbg !932
  br label %60, !dbg !933

60:                                               ; preds = %45, %28
  %61 = load i64, ptr %11, align 8, !dbg !934
  %62 = add i64 %61, -1, !dbg !934
  store i64 %62, ptr %11, align 8, !dbg !934
  %63 = load ptr, ptr %10, align 8, !dbg !935
  %64 = getelementptr inbounds nuw i8, ptr %63, i32 1, !dbg !935
  store ptr %64, ptr %10, align 8, !dbg !935
  %65 = load i8, ptr %63, align 1, !dbg !935
  %66 = zext i8 %65 to i32, !dbg !935
  store i32 %66, ptr %12, align 4, !dbg !936
  %67 = load i32, ptr %12, align 4, !dbg !937
  %68 = icmp eq i32 %67, 255, !dbg !939
  br i1 %68, label %69, label %153, !dbg !939

69:                                               ; preds = %60
  br label %70, !dbg !940

70:                                               ; preds = %109, %69
  %71 = load i64, ptr %11, align 8, !dbg !942
  %72 = icmp eq i64 %71, 0, !dbg !945
  br i1 %72, label %73, label %102, !dbg !945

73:                                               ; preds = %70
  %74 = load ptr, ptr %6, align 8, !dbg !946
  %75 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %74, i32 0, i32 5, !dbg !949
  %76 = load ptr, ptr %75, align 8, !dbg !949
  %77 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %76, i32 0, i32 5, !dbg !950
  %78 = load ptr, ptr %77, align 8, !dbg !950
  %79 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %78, i32 0, i32 3, !dbg !951
  %80 = load ptr, ptr %79, align 8, !dbg !951
  %81 = load ptr, ptr %6, align 8, !dbg !952
  %82 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %81, i32 0, i32 5, !dbg !953
  %83 = load ptr, ptr %82, align 8, !dbg !953
  %84 = call i32 %80(ptr noundef %83), !dbg !954
  %85 = icmp ne i32 %84, 0, !dbg !954
  br i1 %85, label %87, label %86, !dbg !955

86:                                               ; preds = %73
  store i32 0, ptr %5, align 4, !dbg !956
  br label %174, !dbg !956

87:                                               ; preds = %73
  %88 = load ptr, ptr %6, align 8, !dbg !957
  %89 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %88, i32 0, i32 5, !dbg !958
  %90 = load ptr, ptr %89, align 8, !dbg !958
  %91 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %90, i32 0, i32 5, !dbg !959
  %92 = load ptr, ptr %91, align 8, !dbg !959
  %93 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %92, i32 0, i32 0, !dbg !960
  %94 = load ptr, ptr %93, align 8, !dbg !960
  store ptr %94, ptr %10, align 8, !dbg !961
  %95 = load ptr, ptr %6, align 8, !dbg !962
  %96 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %95, i32 0, i32 5, !dbg !963
  %97 = load ptr, ptr %96, align 8, !dbg !963
  %98 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %97, i32 0, i32 5, !dbg !964
  %99 = load ptr, ptr %98, align 8, !dbg !964
  %100 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %99, i32 0, i32 1, !dbg !965
  %101 = load i64, ptr %100, align 8, !dbg !965
  store i64 %101, ptr %11, align 8, !dbg !966
  br label %102, !dbg !967

102:                                              ; preds = %87, %70
  %103 = load i64, ptr %11, align 8, !dbg !968
  %104 = add i64 %103, -1, !dbg !968
  store i64 %104, ptr %11, align 8, !dbg !968
  %105 = load ptr, ptr %10, align 8, !dbg !969
  %106 = getelementptr inbounds nuw i8, ptr %105, i32 1, !dbg !969
  store ptr %106, ptr %10, align 8, !dbg !969
  %107 = load i8, ptr %105, align 1, !dbg !969
  %108 = zext i8 %107 to i32, !dbg !969
  store i32 %108, ptr %12, align 4, !dbg !970
  br label %109, !dbg !971

109:                                              ; preds = %102
  %110 = load i32, ptr %12, align 4, !dbg !972
  %111 = icmp eq i32 %110, 255, !dbg !973
  br i1 %111, label %70, label %112, !dbg !971, !llvm.loop !974

112:                                              ; preds = %109
  %113 = load i32, ptr %12, align 4, !dbg !976
  %114 = icmp eq i32 %113, 0, !dbg !978
  br i1 %114, label %115, label %116, !dbg !978

115:                                              ; preds = %112
  store i32 255, ptr %12, align 4, !dbg !979
  br label %152, !dbg !981

116:                                              ; preds = %112
  %117 = load i32, ptr %12, align 4, !dbg !982
  %118 = load ptr, ptr %6, align 8, !dbg !984
  %119 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %118, i32 0, i32 2, !dbg !985
  store i32 %117, ptr %119, align 8, !dbg !986
  br label %120, !dbg !984

120:                                              ; preds = %116, %27
    #dbg_label(!987, !988)
  %121 = load i32, ptr %8, align 4, !dbg !989
  %122 = load i32, ptr %9, align 4, !dbg !991
  %123 = icmp sge i32 %121, %122, !dbg !992
  br i1 %123, label %124, label %125, !dbg !992

124:                                              ; preds = %120
  br label %161, !dbg !993

125:                                              ; preds = %120
  %126 = load ptr, ptr %6, align 8, !dbg !994
  %127 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %126, i32 0, i32 6, !dbg !996
  %128 = load ptr, ptr %127, align 8, !dbg !996
  %129 = load i32, ptr %128, align 4, !dbg !997
  %130 = icmp ne i32 %129, 0, !dbg !997
  br i1 %130, label %151, label %131, !dbg !998

131:                                              ; preds = %125
  %132 = load ptr, ptr %6, align 8, !dbg !999
  %133 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %132, i32 0, i32 5, !dbg !999
  %134 = load ptr, ptr %133, align 8, !dbg !999
  %135 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %134, i32 0, i32 0, !dbg !999
  %136 = load ptr, ptr %135, align 8, !dbg !999
  %137 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %136, i32 0, i32 5, !dbg !999
  store i32 113, ptr %137, align 8, !dbg !999
  %138 = load ptr, ptr %6, align 8, !dbg !999
  %139 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %138, i32 0, i32 5, !dbg !999
  %140 = load ptr, ptr %139, align 8, !dbg !999
  %141 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %140, i32 0, i32 0, !dbg !999
  %142 = load ptr, ptr %141, align 8, !dbg !999
  %143 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %142, i32 0, i32 1, !dbg !999
  %144 = load ptr, ptr %143, align 8, !dbg !999
  %145 = load ptr, ptr %6, align 8, !dbg !999
  %146 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %145, i32 0, i32 5, !dbg !999
  %147 = load ptr, ptr %146, align 8, !dbg !999
  call void %144(ptr noundef %147, i32 noundef -1), !dbg !999
  %148 = load ptr, ptr %6, align 8, !dbg !1001
  %149 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %148, i32 0, i32 6, !dbg !1002
  %150 = load ptr, ptr %149, align 8, !dbg !1002
  store i32 1, ptr %150, align 4, !dbg !1003
  br label %151, !dbg !1004

151:                                              ; preds = %131, %125
  store i32 0, ptr %12, align 4, !dbg !1005
  br label %152

152:                                              ; preds = %151, %115
  br label %153, !dbg !1006

153:                                              ; preds = %152, %60
  %154 = load i64, ptr %7, align 8, !dbg !1007
  %155 = shl i64 %154, 8, !dbg !1008
  %156 = load i32, ptr %12, align 4, !dbg !1009
  %157 = sext i32 %156 to i64, !dbg !1009
  %158 = or i64 %155, %157, !dbg !1010
  store i64 %158, ptr %7, align 8, !dbg !1011
  %159 = load i32, ptr %8, align 4, !dbg !1012
  %160 = add nsw i32 %159, 8, !dbg !1012
  store i32 %160, ptr %8, align 4, !dbg !1012
  br label %19, !dbg !900, !llvm.loop !1013

161:                                              ; preds = %124, %19
  %162 = load ptr, ptr %10, align 8, !dbg !1015
  %163 = load ptr, ptr %6, align 8, !dbg !1016
  %164 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %163, i32 0, i32 0, !dbg !1017
  store ptr %162, ptr %164, align 8, !dbg !1018
  %165 = load i64, ptr %11, align 8, !dbg !1019
  %166 = load ptr, ptr %6, align 8, !dbg !1020
  %167 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %166, i32 0, i32 1, !dbg !1021
  store i64 %165, ptr %167, align 8, !dbg !1022
  %168 = load i64, ptr %7, align 8, !dbg !1023
  %169 = load ptr, ptr %6, align 8, !dbg !1024
  %170 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %169, i32 0, i32 3, !dbg !1025
  store i64 %168, ptr %170, align 8, !dbg !1026
  %171 = load i32, ptr %8, align 4, !dbg !1027
  %172 = load ptr, ptr %6, align 8, !dbg !1028
  %173 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %172, i32 0, i32 4, !dbg !1029
  store i32 %171, ptr %173, align 8, !dbg !1030
  store i32 1, ptr %5, align 4, !dbg !1031
  br label %174, !dbg !1031

174:                                              ; preds = %161, %86, %44
  %175 = load i32, ptr %5, align 4, !dbg !1032
  ret i32 %175, !dbg !1032
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @jpeg_huff_decode(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) #0 !dbg !1033 {
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store ptr %0, ptr %7, align 8
    #dbg_declare(ptr %7, !1036, !DIExpression(), !1037)
  store i64 %1, ptr %8, align 8
    #dbg_declare(ptr %8, !1038, !DIExpression(), !1039)
  store i32 %2, ptr %9, align 4
    #dbg_declare(ptr %9, !1040, !DIExpression(), !1041)
  store ptr %3, ptr %10, align 8
    #dbg_declare(ptr %10, !1042, !DIExpression(), !1043)
  store i32 %4, ptr %11, align 4
    #dbg_declare(ptr %11, !1044, !DIExpression(), !1045)
    #dbg_declare(ptr %12, !1046, !DIExpression(), !1047)
  %14 = load i32, ptr %11, align 4, !dbg !1048
  store i32 %14, ptr %12, align 4, !dbg !1047
    #dbg_declare(ptr %13, !1049, !DIExpression(), !1050)
  %15 = load i32, ptr %9, align 4, !dbg !1051
  %16 = load i32, ptr %12, align 4, !dbg !1051
  %17 = icmp slt i32 %15, %16, !dbg !1051
  br i1 %17, label %18, label %33, !dbg !1051

18:                                               ; preds = %5
  %19 = load ptr, ptr %7, align 8, !dbg !1054
  %20 = load i64, ptr %8, align 8, !dbg !1054
  %21 = load i32, ptr %9, align 4, !dbg !1054
  %22 = load i32, ptr %12, align 4, !dbg !1054
  %23 = call i32 @jpeg_fill_bit_buffer(ptr noundef %19, i64 noundef %20, i32 noundef %21, i32 noundef %22), !dbg !1054
  %24 = icmp ne i32 %23, 0, !dbg !1054
  br i1 %24, label %26, label %25, !dbg !1054

25:                                               ; preds = %18
  store i32 -1, ptr %6, align 4, !dbg !1057
  br label %138, !dbg !1057

26:                                               ; preds = %18
  %27 = load ptr, ptr %7, align 8, !dbg !1059
  %28 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %27, i32 0, i32 3, !dbg !1059
  %29 = load i64, ptr %28, align 8, !dbg !1059
  store i64 %29, ptr %8, align 8, !dbg !1059
  %30 = load ptr, ptr %7, align 8, !dbg !1059
  %31 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %30, i32 0, i32 4, !dbg !1059
  %32 = load i32, ptr %31, align 8, !dbg !1059
  store i32 %32, ptr %9, align 4, !dbg !1059
  br label %33, !dbg !1059

33:                                               ; preds = %26, %5
  %34 = load i64, ptr %8, align 8, !dbg !1060
  %35 = load i32, ptr %12, align 4, !dbg !1060
  %36 = load i32, ptr %9, align 4, !dbg !1060
  %37 = sub nsw i32 %36, %35, !dbg !1060
  store i32 %37, ptr %9, align 4, !dbg !1060
  %38 = zext i32 %37 to i64, !dbg !1060
  %39 = ashr i64 %34, %38, !dbg !1060
  %40 = trunc i64 %39 to i32, !dbg !1060
  %41 = load i32, ptr %12, align 4, !dbg !1060
  %42 = shl i32 1, %41, !dbg !1060
  %43 = sub nsw i32 %42, 1, !dbg !1060
  %44 = and i32 %40, %43, !dbg !1060
  %45 = sext i32 %44 to i64, !dbg !1060
  store i64 %45, ptr %13, align 8, !dbg !1061
  br label %46, !dbg !1062

46:                                               ; preds = %74, %33
  %47 = load i64, ptr %13, align 8, !dbg !1063
  %48 = load ptr, ptr %10, align 8, !dbg !1064
  %49 = getelementptr inbounds nuw %struct.d_derived_tbl, ptr %48, i32 0, i32 1, !dbg !1065
  %50 = load i32, ptr %12, align 4, !dbg !1066
  %51 = sext i32 %50 to i64, !dbg !1064
  %52 = getelementptr inbounds [18 x i64], ptr %49, i64 0, i64 %51, !dbg !1064
  %53 = load i64, ptr %52, align 8, !dbg !1064
  %54 = icmp sgt i64 %47, %53, !dbg !1067
  br i1 %54, label %55, label %87, !dbg !1062

55:                                               ; preds = %46
  %56 = load i64, ptr %13, align 8, !dbg !1068
  %57 = shl i64 %56, 1, !dbg !1068
  store i64 %57, ptr %13, align 8, !dbg !1068
  %58 = load i32, ptr %9, align 4, !dbg !1070
  %59 = icmp slt i32 %58, 1, !dbg !1070
  br i1 %59, label %60, label %74, !dbg !1070

60:                                               ; preds = %55
  %61 = load ptr, ptr %7, align 8, !dbg !1073
  %62 = load i64, ptr %8, align 8, !dbg !1073
  %63 = load i32, ptr %9, align 4, !dbg !1073
  %64 = call i32 @jpeg_fill_bit_buffer(ptr noundef %61, i64 noundef %62, i32 noundef %63, i32 noundef 1), !dbg !1073
  %65 = icmp ne i32 %64, 0, !dbg !1073
  br i1 %65, label %67, label %66, !dbg !1073

66:                                               ; preds = %60
  store i32 -1, ptr %6, align 4, !dbg !1076
  br label %138, !dbg !1076

67:                                               ; preds = %60
  %68 = load ptr, ptr %7, align 8, !dbg !1078
  %69 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %68, i32 0, i32 3, !dbg !1078
  %70 = load i64, ptr %69, align 8, !dbg !1078
  store i64 %70, ptr %8, align 8, !dbg !1078
  %71 = load ptr, ptr %7, align 8, !dbg !1078
  %72 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %71, i32 0, i32 4, !dbg !1078
  %73 = load i32, ptr %72, align 8, !dbg !1078
  store i32 %73, ptr %9, align 4, !dbg !1078
  br label %74, !dbg !1078

74:                                               ; preds = %67, %55
  %75 = load i64, ptr %8, align 8, !dbg !1079
  %76 = load i32, ptr %9, align 4, !dbg !1079
  %77 = sub nsw i32 %76, 1, !dbg !1079
  store i32 %77, ptr %9, align 4, !dbg !1079
  %78 = zext i32 %77 to i64, !dbg !1079
  %79 = ashr i64 %75, %78, !dbg !1079
  %80 = trunc i64 %79 to i32, !dbg !1079
  %81 = and i32 %80, 1, !dbg !1079
  %82 = sext i32 %81 to i64, !dbg !1079
  %83 = load i64, ptr %13, align 8, !dbg !1080
  %84 = or i64 %83, %82, !dbg !1080
  store i64 %84, ptr %13, align 8, !dbg !1080
  %85 = load i32, ptr %12, align 4, !dbg !1081
  %86 = add nsw i32 %85, 1, !dbg !1081
  store i32 %86, ptr %12, align 4, !dbg !1081
  br label %46, !dbg !1062, !llvm.loop !1082

87:                                               ; preds = %46
  %88 = load i64, ptr %8, align 8, !dbg !1084
  %89 = load ptr, ptr %7, align 8, !dbg !1085
  %90 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %89, i32 0, i32 3, !dbg !1086
  store i64 %88, ptr %90, align 8, !dbg !1087
  %91 = load i32, ptr %9, align 4, !dbg !1088
  %92 = load ptr, ptr %7, align 8, !dbg !1089
  %93 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %92, i32 0, i32 4, !dbg !1090
  store i32 %91, ptr %93, align 8, !dbg !1091
  %94 = load i32, ptr %12, align 4, !dbg !1092
  %95 = icmp sgt i32 %94, 16, !dbg !1094
  br i1 %95, label %96, label %113, !dbg !1094

96:                                               ; preds = %87
  %97 = load ptr, ptr %7, align 8, !dbg !1095
  %98 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %97, i32 0, i32 5, !dbg !1095
  %99 = load ptr, ptr %98, align 8, !dbg !1095
  %100 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %99, i32 0, i32 0, !dbg !1095
  %101 = load ptr, ptr %100, align 8, !dbg !1095
  %102 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %101, i32 0, i32 5, !dbg !1095
  store i32 114, ptr %102, align 8, !dbg !1095
  %103 = load ptr, ptr %7, align 8, !dbg !1095
  %104 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %103, i32 0, i32 5, !dbg !1095
  %105 = load ptr, ptr %104, align 8, !dbg !1095
  %106 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %105, i32 0, i32 0, !dbg !1095
  %107 = load ptr, ptr %106, align 8, !dbg !1095
  %108 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %107, i32 0, i32 1, !dbg !1095
  %109 = load ptr, ptr %108, align 8, !dbg !1095
  %110 = load ptr, ptr %7, align 8, !dbg !1095
  %111 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %110, i32 0, i32 5, !dbg !1095
  %112 = load ptr, ptr %111, align 8, !dbg !1095
  call void %109(ptr noundef %112, i32 noundef -1), !dbg !1095
  store i32 0, ptr %6, align 4, !dbg !1097
  br label %138, !dbg !1097

113:                                              ; preds = %87
  %114 = load ptr, ptr %10, align 8, !dbg !1098
  %115 = getelementptr inbounds nuw %struct.d_derived_tbl, ptr %114, i32 0, i32 3, !dbg !1099
  %116 = load ptr, ptr %115, align 8, !dbg !1099
  %117 = getelementptr inbounds nuw %struct.JHUFF_TBL, ptr %116, i32 0, i32 1, !dbg !1100
  %118 = load ptr, ptr %10, align 8, !dbg !1101
  %119 = getelementptr inbounds nuw %struct.d_derived_tbl, ptr %118, i32 0, i32 2, !dbg !1102
  %120 = load i32, ptr %12, align 4, !dbg !1103
  %121 = sext i32 %120 to i64, !dbg !1101
  %122 = getelementptr inbounds [17 x i32], ptr %119, i64 0, i64 %121, !dbg !1101
  %123 = load i32, ptr %122, align 4, !dbg !1101
  %124 = load i64, ptr %13, align 8, !dbg !1104
  %125 = load ptr, ptr %10, align 8, !dbg !1105
  %126 = getelementptr inbounds nuw %struct.d_derived_tbl, ptr %125, i32 0, i32 0, !dbg !1106
  %127 = load i32, ptr %12, align 4, !dbg !1107
  %128 = sext i32 %127 to i64, !dbg !1105
  %129 = getelementptr inbounds [17 x i64], ptr %126, i64 0, i64 %128, !dbg !1105
  %130 = load i64, ptr %129, align 8, !dbg !1105
  %131 = sub nsw i64 %124, %130, !dbg !1108
  %132 = trunc i64 %131 to i32, !dbg !1109
  %133 = add nsw i32 %123, %132, !dbg !1110
  %134 = sext i32 %133 to i64, !dbg !1098
  %135 = getelementptr inbounds [256 x i8], ptr %117, i64 0, i64 %134, !dbg !1098
  %136 = load i8, ptr %135, align 1, !dbg !1098
  %137 = zext i8 %136 to i32, !dbg !1098
  store i32 %137, ptr %6, align 4, !dbg !1111
  br label %138, !dbg !1111

138:                                              ; preds = %113, %96, %66, %25
  %139 = load i32, ptr %6, align 4, !dbg !1112
  ret i32 %139, !dbg !1112
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @jinit_huff_decoder(ptr noundef %0) #0 !dbg !1113 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !1114, !DIExpression(), !1115)
    #dbg_declare(ptr %3, !1116, !DIExpression(), !1117)
    #dbg_declare(ptr %4, !1118, !DIExpression(), !1119)
  %5 = load ptr, ptr %2, align 8, !dbg !1120
  %6 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %5, i32 0, i32 1, !dbg !1121
  %7 = load ptr, ptr %6, align 8, !dbg !1121
  %8 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %7, i32 0, i32 0, !dbg !1122
  %9 = load ptr, ptr %8, align 8, !dbg !1122
  %10 = load ptr, ptr %2, align 8, !dbg !1123
  %11 = call ptr %9(ptr noundef %10, i32 noundef 1, i64 noundef 120), !dbg !1124
  store ptr %11, ptr %3, align 8, !dbg !1125
  %12 = load ptr, ptr %3, align 8, !dbg !1126
  %13 = load ptr, ptr %2, align 8, !dbg !1127
  %14 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %13, i32 0, i32 79, !dbg !1128
  store ptr %12, ptr %14, align 8, !dbg !1129
  %15 = load ptr, ptr %3, align 8, !dbg !1130
  %16 = getelementptr inbounds nuw %struct.huff_entropy_decoder, ptr %15, i32 0, i32 0, !dbg !1131
  %17 = getelementptr inbounds nuw %struct.jpeg_entropy_decoder, ptr %16, i32 0, i32 0, !dbg !1132
  store ptr @start_pass_huff_decoder, ptr %17, align 8, !dbg !1133
  %18 = load ptr, ptr %3, align 8, !dbg !1134
  %19 = getelementptr inbounds nuw %struct.huff_entropy_decoder, ptr %18, i32 0, i32 0, !dbg !1135
  %20 = getelementptr inbounds nuw %struct.jpeg_entropy_decoder, ptr %19, i32 0, i32 1, !dbg !1136
  store ptr @decode_mcu, ptr %20, align 8, !dbg !1137
  store i32 0, ptr %4, align 4, !dbg !1138
  br label %21, !dbg !1140

21:                                               ; preds = %35, %1
  %22 = load i32, ptr %4, align 4, !dbg !1141
  %23 = icmp slt i32 %22, 4, !dbg !1143
  br i1 %23, label %24, label %38, !dbg !1144

24:                                               ; preds = %21
  %25 = load ptr, ptr %3, align 8, !dbg !1145
  %26 = getelementptr inbounds nuw %struct.huff_entropy_decoder, ptr %25, i32 0, i32 5, !dbg !1147
  %27 = load i32, ptr %4, align 4, !dbg !1148
  %28 = sext i32 %27 to i64, !dbg !1145
  %29 = getelementptr inbounds [4 x ptr], ptr %26, i64 0, i64 %28, !dbg !1145
  store ptr null, ptr %29, align 8, !dbg !1149
  %30 = load ptr, ptr %3, align 8, !dbg !1150
  %31 = getelementptr inbounds nuw %struct.huff_entropy_decoder, ptr %30, i32 0, i32 4, !dbg !1151
  %32 = load i32, ptr %4, align 4, !dbg !1152
  %33 = sext i32 %32 to i64, !dbg !1150
  %34 = getelementptr inbounds [4 x ptr], ptr %31, i64 0, i64 %33, !dbg !1150
  store ptr null, ptr %34, align 8, !dbg !1153
  br label %35, !dbg !1154

35:                                               ; preds = %24
  %36 = load i32, ptr %4, align 4, !dbg !1155
  %37 = add nsw i32 %36, 1, !dbg !1155
  store i32 %37, ptr %4, align 4, !dbg !1155
  br label %21, !dbg !1156, !llvm.loop !1157

38:                                               ; preds = %21
  ret void, !dbg !1159
}

; Function Attrs: noinline nounwind uwtable
define internal void @start_pass_huff_decoder(ptr noundef %0) #0 !dbg !1160 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !1161, !DIExpression(), !1162)
    #dbg_declare(ptr %3, !1163, !DIExpression(), !1164)
  %8 = load ptr, ptr %2, align 8, !dbg !1165
  %9 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %8, i32 0, i32 79, !dbg !1166
  %10 = load ptr, ptr %9, align 8, !dbg !1166
  store ptr %10, ptr %3, align 8, !dbg !1164
    #dbg_declare(ptr %4, !1167, !DIExpression(), !1168)
    #dbg_declare(ptr %5, !1169, !DIExpression(), !1170)
    #dbg_declare(ptr %6, !1171, !DIExpression(), !1172)
    #dbg_declare(ptr %7, !1173, !DIExpression(), !1174)
  %11 = load ptr, ptr %2, align 8, !dbg !1175
  %12 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %11, i32 0, i32 68, !dbg !1177
  %13 = load i32, ptr %12, align 4, !dbg !1177
  %14 = icmp ne i32 %13, 0, !dbg !1178
  br i1 %14, label %30, label %15, !dbg !1179

15:                                               ; preds = %1
  %16 = load ptr, ptr %2, align 8, !dbg !1180
  %17 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %16, i32 0, i32 69, !dbg !1181
  %18 = load i32, ptr %17, align 8, !dbg !1181
  %19 = icmp ne i32 %18, 63, !dbg !1182
  br i1 %19, label %30, label %20, !dbg !1183

20:                                               ; preds = %15
  %21 = load ptr, ptr %2, align 8, !dbg !1184
  %22 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %21, i32 0, i32 70, !dbg !1185
  %23 = load i32, ptr %22, align 4, !dbg !1185
  %24 = icmp ne i32 %23, 0, !dbg !1186
  br i1 %24, label %30, label %25, !dbg !1187

25:                                               ; preds = %20
  %26 = load ptr, ptr %2, align 8, !dbg !1188
  %27 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %26, i32 0, i32 71, !dbg !1189
  %28 = load i32, ptr %27, align 8, !dbg !1189
  %29 = icmp ne i32 %28, 0, !dbg !1190
  br i1 %29, label %30, label %41, !dbg !1187

30:                                               ; preds = %25, %20, %15, %1
  %31 = load ptr, ptr %2, align 8, !dbg !1191
  %32 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %31, i32 0, i32 0, !dbg !1191
  %33 = load ptr, ptr %32, align 8, !dbg !1191
  %34 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %33, i32 0, i32 5, !dbg !1191
  store i32 118, ptr %34, align 8, !dbg !1191
  %35 = load ptr, ptr %2, align 8, !dbg !1191
  %36 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %35, i32 0, i32 0, !dbg !1191
  %37 = load ptr, ptr %36, align 8, !dbg !1191
  %38 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %37, i32 0, i32 1, !dbg !1191
  %39 = load ptr, ptr %38, align 8, !dbg !1191
  %40 = load ptr, ptr %2, align 8, !dbg !1191
  call void %39(ptr noundef %40, i32 noundef -1), !dbg !1191
  br label %41, !dbg !1191

41:                                               ; preds = %30, %25
  store i32 0, ptr %4, align 4, !dbg !1192
  br label %42, !dbg !1194

42:                                               ; preds = %153, %41
  %43 = load i32, ptr %4, align 4, !dbg !1195
  %44 = load ptr, ptr %2, align 8, !dbg !1197
  %45 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %44, i32 0, i32 62, !dbg !1198
  %46 = load i32, ptr %45, align 8, !dbg !1198
  %47 = icmp slt i32 %43, %46, !dbg !1199
  br i1 %47, label %48, label %156, !dbg !1200

48:                                               ; preds = %42
  %49 = load ptr, ptr %2, align 8, !dbg !1201
  %50 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %49, i32 0, i32 63, !dbg !1203
  %51 = load i32, ptr %4, align 4, !dbg !1204
  %52 = sext i32 %51 to i64, !dbg !1201
  %53 = getelementptr inbounds [4 x ptr], ptr %50, i64 0, i64 %52, !dbg !1201
  %54 = load ptr, ptr %53, align 8, !dbg !1201
  store ptr %54, ptr %7, align 8, !dbg !1205
  %55 = load ptr, ptr %7, align 8, !dbg !1206
  %56 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %55, i32 0, i32 5, !dbg !1207
  %57 = load i32, ptr %56, align 4, !dbg !1207
  store i32 %57, ptr %5, align 4, !dbg !1208
  %58 = load ptr, ptr %7, align 8, !dbg !1209
  %59 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %58, i32 0, i32 6, !dbg !1210
  %60 = load i32, ptr %59, align 8, !dbg !1210
  store i32 %60, ptr %6, align 4, !dbg !1211
  %61 = load i32, ptr %5, align 4, !dbg !1212
  %62 = icmp slt i32 %61, 0, !dbg !1214
  br i1 %62, label %74, label %63, !dbg !1215

63:                                               ; preds = %48
  %64 = load i32, ptr %5, align 4, !dbg !1216
  %65 = icmp sge i32 %64, 4, !dbg !1217
  br i1 %65, label %74, label %66, !dbg !1218

66:                                               ; preds = %63
  %67 = load ptr, ptr %2, align 8, !dbg !1219
  %68 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %67, i32 0, i32 40, !dbg !1220
  %69 = load i32, ptr %5, align 4, !dbg !1221
  %70 = sext i32 %69 to i64, !dbg !1219
  %71 = getelementptr inbounds [4 x ptr], ptr %68, i64 0, i64 %70, !dbg !1219
  %72 = load ptr, ptr %71, align 8, !dbg !1219
  %73 = icmp eq ptr %72, null, !dbg !1222
  br i1 %73, label %74, label %91, !dbg !1218

74:                                               ; preds = %66, %63, %48
  %75 = load ptr, ptr %2, align 8, !dbg !1223
  %76 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %75, i32 0, i32 0, !dbg !1223
  %77 = load ptr, ptr %76, align 8, !dbg !1223
  %78 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %77, i32 0, i32 5, !dbg !1223
  store i32 49, ptr %78, align 8, !dbg !1223
  %79 = load i32, ptr %5, align 4, !dbg !1223
  %80 = load ptr, ptr %2, align 8, !dbg !1223
  %81 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %80, i32 0, i32 0, !dbg !1223
  %82 = load ptr, ptr %81, align 8, !dbg !1223
  %83 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %82, i32 0, i32 6, !dbg !1223
  %84 = getelementptr inbounds [8 x i32], ptr %83, i64 0, i64 0, !dbg !1223
  store i32 %79, ptr %84, align 4, !dbg !1223
  %85 = load ptr, ptr %2, align 8, !dbg !1223
  %86 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %85, i32 0, i32 0, !dbg !1223
  %87 = load ptr, ptr %86, align 8, !dbg !1223
  %88 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %87, i32 0, i32 0, !dbg !1223
  %89 = load ptr, ptr %88, align 8, !dbg !1223
  %90 = load ptr, ptr %2, align 8, !dbg !1223
  call void %89(ptr noundef %90), !dbg !1223
  br label %91, !dbg !1223

91:                                               ; preds = %74, %66
  %92 = load i32, ptr %6, align 4, !dbg !1224
  %93 = icmp slt i32 %92, 0, !dbg !1226
  br i1 %93, label %105, label %94, !dbg !1227

94:                                               ; preds = %91
  %95 = load i32, ptr %6, align 4, !dbg !1228
  %96 = icmp sge i32 %95, 4, !dbg !1229
  br i1 %96, label %105, label %97, !dbg !1230

97:                                               ; preds = %94
  %98 = load ptr, ptr %2, align 8, !dbg !1231
  %99 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %98, i32 0, i32 41, !dbg !1232
  %100 = load i32, ptr %6, align 4, !dbg !1233
  %101 = sext i32 %100 to i64, !dbg !1231
  %102 = getelementptr inbounds [4 x ptr], ptr %99, i64 0, i64 %101, !dbg !1231
  %103 = load ptr, ptr %102, align 8, !dbg !1231
  %104 = icmp eq ptr %103, null, !dbg !1234
  br i1 %104, label %105, label %122, !dbg !1230

105:                                              ; preds = %97, %94, %91
  %106 = load ptr, ptr %2, align 8, !dbg !1235
  %107 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %106, i32 0, i32 0, !dbg !1235
  %108 = load ptr, ptr %107, align 8, !dbg !1235
  %109 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %108, i32 0, i32 5, !dbg !1235
  store i32 49, ptr %109, align 8, !dbg !1235
  %110 = load i32, ptr %6, align 4, !dbg !1235
  %111 = load ptr, ptr %2, align 8, !dbg !1235
  %112 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %111, i32 0, i32 0, !dbg !1235
  %113 = load ptr, ptr %112, align 8, !dbg !1235
  %114 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %113, i32 0, i32 6, !dbg !1235
  %115 = getelementptr inbounds [8 x i32], ptr %114, i64 0, i64 0, !dbg !1235
  store i32 %110, ptr %115, align 4, !dbg !1235
  %116 = load ptr, ptr %2, align 8, !dbg !1235
  %117 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %116, i32 0, i32 0, !dbg !1235
  %118 = load ptr, ptr %117, align 8, !dbg !1235
  %119 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %118, i32 0, i32 0, !dbg !1235
  %120 = load ptr, ptr %119, align 8, !dbg !1235
  %121 = load ptr, ptr %2, align 8, !dbg !1235
  call void %120(ptr noundef %121), !dbg !1235
  br label %122, !dbg !1235

122:                                              ; preds = %105, %97
  %123 = load ptr, ptr %2, align 8, !dbg !1236
  %124 = load ptr, ptr %2, align 8, !dbg !1237
  %125 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %124, i32 0, i32 40, !dbg !1238
  %126 = load i32, ptr %5, align 4, !dbg !1239
  %127 = sext i32 %126 to i64, !dbg !1237
  %128 = getelementptr inbounds [4 x ptr], ptr %125, i64 0, i64 %127, !dbg !1237
  %129 = load ptr, ptr %128, align 8, !dbg !1237
  %130 = load ptr, ptr %3, align 8, !dbg !1240
  %131 = getelementptr inbounds nuw %struct.huff_entropy_decoder, ptr %130, i32 0, i32 4, !dbg !1241
  %132 = load i32, ptr %5, align 4, !dbg !1242
  %133 = sext i32 %132 to i64, !dbg !1240
  %134 = getelementptr inbounds [4 x ptr], ptr %131, i64 0, i64 %133, !dbg !1240
  call void @jpeg_make_d_derived_tbl(ptr noundef %123, ptr noundef %129, ptr noundef %134), !dbg !1243
  %135 = load ptr, ptr %2, align 8, !dbg !1244
  %136 = load ptr, ptr %2, align 8, !dbg !1245
  %137 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %136, i32 0, i32 41, !dbg !1246
  %138 = load i32, ptr %6, align 4, !dbg !1247
  %139 = sext i32 %138 to i64, !dbg !1245
  %140 = getelementptr inbounds [4 x ptr], ptr %137, i64 0, i64 %139, !dbg !1245
  %141 = load ptr, ptr %140, align 8, !dbg !1245
  %142 = load ptr, ptr %3, align 8, !dbg !1248
  %143 = getelementptr inbounds nuw %struct.huff_entropy_decoder, ptr %142, i32 0, i32 5, !dbg !1249
  %144 = load i32, ptr %6, align 4, !dbg !1250
  %145 = sext i32 %144 to i64, !dbg !1248
  %146 = getelementptr inbounds [4 x ptr], ptr %143, i64 0, i64 %145, !dbg !1248
  call void @jpeg_make_d_derived_tbl(ptr noundef %135, ptr noundef %141, ptr noundef %146), !dbg !1251
  %147 = load ptr, ptr %3, align 8, !dbg !1252
  %148 = getelementptr inbounds nuw %struct.huff_entropy_decoder, ptr %147, i32 0, i32 2, !dbg !1253
  %149 = getelementptr inbounds nuw %struct.savable_state, ptr %148, i32 0, i32 0, !dbg !1254
  %150 = load i32, ptr %4, align 4, !dbg !1255
  %151 = sext i32 %150 to i64, !dbg !1252
  %152 = getelementptr inbounds [4 x i32], ptr %149, i64 0, i64 %151, !dbg !1252
  store i32 0, ptr %152, align 4, !dbg !1256
  br label %153, !dbg !1257

153:                                              ; preds = %122
  %154 = load i32, ptr %4, align 4, !dbg !1258
  %155 = add nsw i32 %154, 1, !dbg !1258
  store i32 %155, ptr %4, align 4, !dbg !1258
  br label %42, !dbg !1259, !llvm.loop !1260

156:                                              ; preds = %42
  %157 = load ptr, ptr %3, align 8, !dbg !1262
  %158 = getelementptr inbounds nuw %struct.huff_entropy_decoder, ptr %157, i32 0, i32 1, !dbg !1263
  %159 = getelementptr inbounds nuw %struct.bitread_perm_state, ptr %158, i32 0, i32 1, !dbg !1264
  store i32 0, ptr %159, align 8, !dbg !1265
  %160 = load ptr, ptr %3, align 8, !dbg !1266
  %161 = getelementptr inbounds nuw %struct.huff_entropy_decoder, ptr %160, i32 0, i32 1, !dbg !1267
  %162 = getelementptr inbounds nuw %struct.bitread_perm_state, ptr %161, i32 0, i32 0, !dbg !1268
  store i64 0, ptr %162, align 8, !dbg !1269
  %163 = load ptr, ptr %3, align 8, !dbg !1270
  %164 = getelementptr inbounds nuw %struct.huff_entropy_decoder, ptr %163, i32 0, i32 1, !dbg !1271
  %165 = getelementptr inbounds nuw %struct.bitread_perm_state, ptr %164, i32 0, i32 2, !dbg !1272
  store i32 0, ptr %165, align 4, !dbg !1273
  %166 = load ptr, ptr %2, align 8, !dbg !1274
  %167 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %166, i32 0, i32 49, !dbg !1275
  %168 = load i32, ptr %167, align 8, !dbg !1275
  %169 = load ptr, ptr %3, align 8, !dbg !1276
  %170 = getelementptr inbounds nuw %struct.huff_entropy_decoder, ptr %169, i32 0, i32 3, !dbg !1277
  store i32 %168, ptr %170, align 8, !dbg !1278
  ret void, !dbg !1279
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @decode_mcu(ptr noundef %0, ptr noundef %1) #0 !dbg !1280 {
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
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.bitread_working_state, align 8
  %16 = alloca %struct.savable_state, align 4
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  %19 = alloca ptr, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
    #dbg_declare(ptr %4, !1281, !DIExpression(), !1282)
  store ptr %1, ptr %5, align 8
    #dbg_declare(ptr %5, !1283, !DIExpression(), !1284)
    #dbg_declare(ptr %6, !1285, !DIExpression(), !1286)
  %26 = load ptr, ptr %4, align 8, !dbg !1287
  %27 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %26, i32 0, i32 79, !dbg !1288
  %28 = load ptr, ptr %27, align 8, !dbg !1288
  store ptr %28, ptr %6, align 8, !dbg !1286
    #dbg_declare(ptr %7, !1289, !DIExpression(), !1290)
    #dbg_declare(ptr %8, !1291, !DIExpression(), !1292)
    #dbg_declare(ptr %9, !1293, !DIExpression(), !1294)
    #dbg_declare(ptr %10, !1295, !DIExpression(), !1296)
    #dbg_declare(ptr %11, !1297, !DIExpression(), !1298)
    #dbg_declare(ptr %12, !1299, !DIExpression(), !1300)
    #dbg_declare(ptr %13, !1301, !DIExpression(), !1302)
    #dbg_declare(ptr %14, !1303, !DIExpression(), !1302)
    #dbg_declare(ptr %15, !1304, !DIExpression(), !1302)
    #dbg_declare(ptr %16, !1305, !DIExpression(), !1306)
    #dbg_declare(ptr %17, !1307, !DIExpression(), !1308)
    #dbg_declare(ptr %18, !1309, !DIExpression(), !1310)
    #dbg_declare(ptr %19, !1311, !DIExpression(), !1312)
  %29 = load ptr, ptr %4, align 8, !dbg !1313
  %30 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %29, i32 0, i32 49, !dbg !1315
  %31 = load i32, ptr %30, align 8, !dbg !1315
  %32 = icmp ne i32 %31, 0, !dbg !1313
  br i1 %32, label %33, label %45, !dbg !1313

33:                                               ; preds = %2
  %34 = load ptr, ptr %6, align 8, !dbg !1316
  %35 = getelementptr inbounds nuw %struct.huff_entropy_decoder, ptr %34, i32 0, i32 3, !dbg !1319
  %36 = load i32, ptr %35, align 8, !dbg !1319
  %37 = icmp eq i32 %36, 0, !dbg !1320
  br i1 %37, label %38, label %44, !dbg !1320

38:                                               ; preds = %33
  %39 = load ptr, ptr %4, align 8, !dbg !1321
  %40 = call i32 @process_restart(ptr noundef %39), !dbg !1323
  %41 = icmp ne i32 %40, 0, !dbg !1323
  br i1 %41, label %43, label %42, !dbg !1324

42:                                               ; preds = %38
  store i32 0, ptr %3, align 4, !dbg !1325
  br label %528, !dbg !1325

43:                                               ; preds = %38
  br label %44, !dbg !1326

44:                                               ; preds = %43, %33
  br label %45, !dbg !1327

45:                                               ; preds = %44, %2
  %46 = load ptr, ptr %4, align 8, !dbg !1328
  %47 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %15, i32 0, i32 5, !dbg !1328
  store ptr %46, ptr %47, align 8, !dbg !1328
  %48 = load ptr, ptr %4, align 8, !dbg !1328
  %49 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %48, i32 0, i32 5, !dbg !1328
  %50 = load ptr, ptr %49, align 8, !dbg !1328
  %51 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %50, i32 0, i32 0, !dbg !1328
  %52 = load ptr, ptr %51, align 8, !dbg !1328
  %53 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %15, i32 0, i32 0, !dbg !1328
  store ptr %52, ptr %53, align 8, !dbg !1328
  %54 = load ptr, ptr %4, align 8, !dbg !1328
  %55 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %54, i32 0, i32 5, !dbg !1328
  %56 = load ptr, ptr %55, align 8, !dbg !1328
  %57 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %56, i32 0, i32 1, !dbg !1328
  %58 = load i64, ptr %57, align 8, !dbg !1328
  %59 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %15, i32 0, i32 1, !dbg !1328
  store i64 %58, ptr %59, align 8, !dbg !1328
  %60 = load ptr, ptr %4, align 8, !dbg !1328
  %61 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %60, i32 0, i32 72, !dbg !1328
  %62 = load i32, ptr %61, align 4, !dbg !1328
  %63 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %15, i32 0, i32 2, !dbg !1328
  store i32 %62, ptr %63, align 8, !dbg !1328
  %64 = load ptr, ptr %6, align 8, !dbg !1328
  %65 = getelementptr inbounds nuw %struct.huff_entropy_decoder, ptr %64, i32 0, i32 1, !dbg !1328
  %66 = getelementptr inbounds nuw %struct.bitread_perm_state, ptr %65, i32 0, i32 0, !dbg !1328
  %67 = load i64, ptr %66, align 8, !dbg !1328
  store i64 %67, ptr %13, align 8, !dbg !1328
  %68 = load ptr, ptr %6, align 8, !dbg !1328
  %69 = getelementptr inbounds nuw %struct.huff_entropy_decoder, ptr %68, i32 0, i32 1, !dbg !1328
  %70 = getelementptr inbounds nuw %struct.bitread_perm_state, ptr %69, i32 0, i32 1, !dbg !1328
  %71 = load i32, ptr %70, align 8, !dbg !1328
  store i32 %71, ptr %14, align 4, !dbg !1328
  %72 = load ptr, ptr %6, align 8, !dbg !1328
  %73 = getelementptr inbounds nuw %struct.huff_entropy_decoder, ptr %72, i32 0, i32 1, !dbg !1328
  %74 = getelementptr inbounds nuw %struct.bitread_perm_state, ptr %73, i32 0, i32 2, !dbg !1328
  %75 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %15, i32 0, i32 6, !dbg !1328
  store ptr %74, ptr %75, align 8, !dbg !1328
  %76 = load ptr, ptr %6, align 8, !dbg !1329
  %77 = getelementptr inbounds nuw %struct.huff_entropy_decoder, ptr %76, i32 0, i32 2, !dbg !1329
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %16, ptr align 8 %77, i64 16, i1 false), !dbg !1329
  store i32 0, ptr %10, align 4, !dbg !1330
  br label %78, !dbg !1332

78:                                               ; preds = %494, %45
  %79 = load i32, ptr %10, align 4, !dbg !1333
  %80 = load ptr, ptr %4, align 8, !dbg !1335
  %81 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %80, i32 0, i32 66, !dbg !1336
  %82 = load i32, ptr %81, align 8, !dbg !1336
  %83 = icmp slt i32 %79, %82, !dbg !1337
  br i1 %83, label %84, label %497, !dbg !1338

84:                                               ; preds = %78
  %85 = load ptr, ptr %5, align 8, !dbg !1339
  %86 = load i32, ptr %10, align 4, !dbg !1341
  %87 = sext i32 %86 to i64, !dbg !1339
  %88 = getelementptr inbounds ptr, ptr %85, i64 %87, !dbg !1339
  %89 = load ptr, ptr %88, align 8, !dbg !1339
  store ptr %89, ptr %12, align 8, !dbg !1342
  %90 = load ptr, ptr %4, align 8, !dbg !1343
  %91 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %90, i32 0, i32 67, !dbg !1344
  %92 = load i32, ptr %10, align 4, !dbg !1345
  %93 = sext i32 %92 to i64, !dbg !1343
  %94 = getelementptr inbounds [10 x i32], ptr %91, i64 0, i64 %93, !dbg !1343
  %95 = load i32, ptr %94, align 4, !dbg !1343
  store i32 %95, ptr %11, align 4, !dbg !1346
  %96 = load ptr, ptr %4, align 8, !dbg !1347
  %97 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %96, i32 0, i32 63, !dbg !1348
  %98 = load i32, ptr %11, align 4, !dbg !1349
  %99 = sext i32 %98 to i64, !dbg !1347
  %100 = getelementptr inbounds [4 x ptr], ptr %97, i64 0, i64 %99, !dbg !1347
  %101 = load ptr, ptr %100, align 8, !dbg !1347
  store ptr %101, ptr %19, align 8, !dbg !1350
  %102 = load ptr, ptr %6, align 8, !dbg !1351
  %103 = getelementptr inbounds nuw %struct.huff_entropy_decoder, ptr %102, i32 0, i32 4, !dbg !1352
  %104 = load ptr, ptr %19, align 8, !dbg !1353
  %105 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %104, i32 0, i32 5, !dbg !1354
  %106 = load i32, ptr %105, align 4, !dbg !1354
  %107 = sext i32 %106 to i64, !dbg !1351
  %108 = getelementptr inbounds [4 x ptr], ptr %103, i64 0, i64 %107, !dbg !1351
  %109 = load ptr, ptr %108, align 8, !dbg !1351
  store ptr %109, ptr %17, align 8, !dbg !1355
  %110 = load ptr, ptr %6, align 8, !dbg !1356
  %111 = getelementptr inbounds nuw %struct.huff_entropy_decoder, ptr %110, i32 0, i32 5, !dbg !1357
  %112 = load ptr, ptr %19, align 8, !dbg !1358
  %113 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %112, i32 0, i32 6, !dbg !1359
  %114 = load i32, ptr %113, align 8, !dbg !1359
  %115 = sext i32 %114 to i64, !dbg !1356
  %116 = getelementptr inbounds [4 x ptr], ptr %111, i64 0, i64 %115, !dbg !1356
  %117 = load ptr, ptr %116, align 8, !dbg !1356
  store ptr %117, ptr %18, align 8, !dbg !1360
    #dbg_declare(ptr %20, !1361, !DIExpression(), !1363)
    #dbg_declare(ptr %21, !1364, !DIExpression(), !1363)
  %118 = load i32, ptr %14, align 4, !dbg !1365
  %119 = icmp slt i32 %118, 8, !dbg !1365
  br i1 %119, label %120, label %135, !dbg !1365

120:                                              ; preds = %84
  %121 = load i64, ptr %13, align 8, !dbg !1367
  %122 = load i32, ptr %14, align 4, !dbg !1367
  %123 = call i32 @jpeg_fill_bit_buffer(ptr noundef %15, i64 noundef %121, i32 noundef %122, i32 noundef 0), !dbg !1367
  %124 = icmp ne i32 %123, 0, !dbg !1367
  br i1 %124, label %126, label %125, !dbg !1367

125:                                              ; preds = %120
  store i32 0, ptr %3, align 4, !dbg !1370
  br label %528, !dbg !1370

126:                                              ; preds = %120
  %127 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %15, i32 0, i32 3, !dbg !1372
  %128 = load i64, ptr %127, align 8, !dbg !1372
  store i64 %128, ptr %13, align 8, !dbg !1372
  %129 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %15, i32 0, i32 4, !dbg !1372
  %130 = load i32, ptr %129, align 8, !dbg !1372
  store i32 %130, ptr %14, align 4, !dbg !1372
  %131 = load i32, ptr %14, align 4, !dbg !1373
  %132 = icmp slt i32 %131, 8, !dbg !1373
  br i1 %132, label %133, label %134, !dbg !1373

133:                                              ; preds = %126
  store i32 1, ptr %20, align 4, !dbg !1375
  br label %162, !dbg !1375

134:                                              ; preds = %126
  br label %135, !dbg !1372

135:                                              ; preds = %134, %84
  %136 = load i64, ptr %13, align 8, !dbg !1363
  %137 = load i32, ptr %14, align 4, !dbg !1363
  %138 = sub nsw i32 %137, 8, !dbg !1363
  %139 = zext i32 %138 to i64, !dbg !1363
  %140 = ashr i64 %136, %139, !dbg !1363
  %141 = trunc i64 %140 to i32, !dbg !1363
  %142 = and i32 %141, 255, !dbg !1363
  store i32 %142, ptr %21, align 4, !dbg !1363
  %143 = load ptr, ptr %17, align 8, !dbg !1377
  %144 = getelementptr inbounds nuw %struct.d_derived_tbl, ptr %143, i32 0, i32 4, !dbg !1377
  %145 = load i32, ptr %21, align 4, !dbg !1377
  %146 = sext i32 %145 to i64, !dbg !1377
  %147 = getelementptr inbounds [256 x i32], ptr %144, i64 0, i64 %146, !dbg !1377
  %148 = load i32, ptr %147, align 4, !dbg !1377
  store i32 %148, ptr %20, align 4, !dbg !1377
  %149 = icmp ne i32 %148, 0, !dbg !1377
  br i1 %149, label %150, label %161, !dbg !1377

150:                                              ; preds = %135
  %151 = load i32, ptr %20, align 4, !dbg !1379
  %152 = load i32, ptr %14, align 4, !dbg !1379
  %153 = sub nsw i32 %152, %151, !dbg !1379
  store i32 %153, ptr %14, align 4, !dbg !1379
  %154 = load ptr, ptr %17, align 8, !dbg !1379
  %155 = getelementptr inbounds nuw %struct.d_derived_tbl, ptr %154, i32 0, i32 5, !dbg !1379
  %156 = load i32, ptr %21, align 4, !dbg !1379
  %157 = sext i32 %156 to i64, !dbg !1379
  %158 = getelementptr inbounds [256 x i8], ptr %155, i64 0, i64 %157, !dbg !1379
  %159 = load i8, ptr %158, align 1, !dbg !1379
  %160 = zext i8 %159 to i32, !dbg !1379
  store i32 %160, ptr %7, align 4, !dbg !1379
  br label %175, !dbg !1379

161:                                              ; preds = %135
  store i32 9, ptr %20, align 4, !dbg !1381
  br label %162, !dbg !1381

162:                                              ; preds = %161, %133
    #dbg_label(!1383, !1381)
  %163 = load i64, ptr %13, align 8, !dbg !1384
  %164 = load i32, ptr %14, align 4, !dbg !1384
  %165 = load ptr, ptr %17, align 8, !dbg !1384
  %166 = load i32, ptr %20, align 4, !dbg !1384
  %167 = call i32 @jpeg_huff_decode(ptr noundef %15, i64 noundef %163, i32 noundef %164, ptr noundef %165, i32 noundef %166), !dbg !1384
  store i32 %167, ptr %7, align 4, !dbg !1384
  %168 = icmp slt i32 %167, 0, !dbg !1384
  br i1 %168, label %169, label %170, !dbg !1384

169:                                              ; preds = %162
  store i32 0, ptr %3, align 4, !dbg !1386
  br label %528, !dbg !1386

170:                                              ; preds = %162
  %171 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %15, i32 0, i32 3, !dbg !1381
  %172 = load i64, ptr %171, align 8, !dbg !1381
  store i64 %172, ptr %13, align 8, !dbg !1381
  %173 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %15, i32 0, i32 4, !dbg !1381
  %174 = load i32, ptr %173, align 8, !dbg !1381
  store i32 %174, ptr %14, align 4, !dbg !1381
  br label %175

175:                                              ; preds = %170, %150
  %176 = load i32, ptr %7, align 4, !dbg !1388
  %177 = icmp ne i32 %176, 0, !dbg !1388
  br i1 %177, label %178, label %223, !dbg !1388

178:                                              ; preds = %175
  %179 = load i32, ptr %14, align 4, !dbg !1390
  %180 = load i32, ptr %7, align 4, !dbg !1390
  %181 = icmp slt i32 %179, %180, !dbg !1390
  br i1 %181, label %182, label %194, !dbg !1390

182:                                              ; preds = %178
  %183 = load i64, ptr %13, align 8, !dbg !1394
  %184 = load i32, ptr %14, align 4, !dbg !1394
  %185 = load i32, ptr %7, align 4, !dbg !1394
  %186 = call i32 @jpeg_fill_bit_buffer(ptr noundef %15, i64 noundef %183, i32 noundef %184, i32 noundef %185), !dbg !1394
  %187 = icmp ne i32 %186, 0, !dbg !1394
  br i1 %187, label %189, label %188, !dbg !1394

188:                                              ; preds = %182
  store i32 0, ptr %3, align 4, !dbg !1397
  br label %528, !dbg !1397

189:                                              ; preds = %182
  %190 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %15, i32 0, i32 3, !dbg !1399
  %191 = load i64, ptr %190, align 8, !dbg !1399
  store i64 %191, ptr %13, align 8, !dbg !1399
  %192 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %15, i32 0, i32 4, !dbg !1399
  %193 = load i32, ptr %192, align 8, !dbg !1399
  store i32 %193, ptr %14, align 4, !dbg !1399
  br label %194, !dbg !1399

194:                                              ; preds = %189, %178
  %195 = load i64, ptr %13, align 8, !dbg !1400
  %196 = load i32, ptr %7, align 4, !dbg !1400
  %197 = load i32, ptr %14, align 4, !dbg !1400
  %198 = sub nsw i32 %197, %196, !dbg !1400
  store i32 %198, ptr %14, align 4, !dbg !1400
  %199 = zext i32 %198 to i64, !dbg !1400
  %200 = ashr i64 %195, %199, !dbg !1400
  %201 = trunc i64 %200 to i32, !dbg !1400
  %202 = load i32, ptr %7, align 4, !dbg !1400
  %203 = shl i32 1, %202, !dbg !1400
  %204 = sub nsw i32 %203, 1, !dbg !1400
  %205 = and i32 %201, %204, !dbg !1400
  store i32 %205, ptr %9, align 4, !dbg !1401
  %206 = load i32, ptr %9, align 4, !dbg !1402
  %207 = load i32, ptr %7, align 4, !dbg !1402
  %208 = sext i32 %207 to i64, !dbg !1402
  %209 = getelementptr inbounds [16 x i32], ptr @extend_test, i64 0, i64 %208, !dbg !1402
  %210 = load i32, ptr %209, align 4, !dbg !1402
  %211 = icmp slt i32 %206, %210, !dbg !1402
  br i1 %211, label %212, label %219, !dbg !1402

212:                                              ; preds = %194
  %213 = load i32, ptr %9, align 4, !dbg !1402
  %214 = load i32, ptr %7, align 4, !dbg !1402
  %215 = sext i32 %214 to i64, !dbg !1402
  %216 = getelementptr inbounds [16 x i32], ptr @extend_offset, i64 0, i64 %215, !dbg !1402
  %217 = load i32, ptr %216, align 4, !dbg !1402
  %218 = add nsw i32 %213, %217, !dbg !1402
  br label %221, !dbg !1402

219:                                              ; preds = %194
  %220 = load i32, ptr %9, align 4, !dbg !1402
  br label %221, !dbg !1402

221:                                              ; preds = %219, %212
  %222 = phi i32 [ %218, %212 ], [ %220, %219 ], !dbg !1402
  store i32 %222, ptr %7, align 4, !dbg !1403
  br label %223, !dbg !1404

223:                                              ; preds = %221, %175
  %224 = load ptr, ptr %19, align 8, !dbg !1405
  %225 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %224, i32 0, i32 12, !dbg !1407
  %226 = load i32, ptr %225, align 8, !dbg !1407
  %227 = icmp ne i32 %226, 0, !dbg !1405
  br i1 %227, label %229, label %228, !dbg !1408

228:                                              ; preds = %223
  br label %389, !dbg !1409

229:                                              ; preds = %223
  %230 = getelementptr inbounds nuw %struct.savable_state, ptr %16, i32 0, i32 0, !dbg !1410
  %231 = load i32, ptr %11, align 4, !dbg !1411
  %232 = sext i32 %231 to i64, !dbg !1412
  %233 = getelementptr inbounds [4 x i32], ptr %230, i64 0, i64 %232, !dbg !1412
  %234 = load i32, ptr %233, align 4, !dbg !1412
  %235 = load i32, ptr %7, align 4, !dbg !1413
  %236 = add nsw i32 %235, %234, !dbg !1413
  store i32 %236, ptr %7, align 4, !dbg !1413
  %237 = load i32, ptr %7, align 4, !dbg !1414
  %238 = getelementptr inbounds nuw %struct.savable_state, ptr %16, i32 0, i32 0, !dbg !1415
  %239 = load i32, ptr %11, align 4, !dbg !1416
  %240 = sext i32 %239 to i64, !dbg !1417
  %241 = getelementptr inbounds [4 x i32], ptr %238, i64 0, i64 %240, !dbg !1417
  store i32 %237, ptr %241, align 4, !dbg !1418
  %242 = load i32, ptr %7, align 4, !dbg !1419
  %243 = trunc i32 %242 to i16, !dbg !1420
  %244 = load ptr, ptr %12, align 8, !dbg !1421
  %245 = getelementptr inbounds [64 x i16], ptr %244, i64 0, i64 0, !dbg !1422
  store i16 %243, ptr %245, align 2, !dbg !1423
  %246 = load ptr, ptr %19, align 8, !dbg !1424
  %247 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %246, i32 0, i32 9, !dbg !1426
  %248 = load i32, ptr %247, align 4, !dbg !1426
  %249 = icmp sgt i32 %248, 1, !dbg !1427
  br i1 %249, label %250, label %388, !dbg !1427

250:                                              ; preds = %229
  store i32 1, ptr %8, align 4, !dbg !1428
  br label %251, !dbg !1431

251:                                              ; preds = %384, %250
  %252 = load i32, ptr %8, align 4, !dbg !1432
  %253 = icmp slt i32 %252, 64, !dbg !1434
  br i1 %253, label %254, label %387, !dbg !1435

254:                                              ; preds = %251
    #dbg_declare(ptr %22, !1436, !DIExpression(), !1439)
    #dbg_declare(ptr %23, !1440, !DIExpression(), !1439)
  %255 = load i32, ptr %14, align 4, !dbg !1441
  %256 = icmp slt i32 %255, 8, !dbg !1441
  br i1 %256, label %257, label %272, !dbg !1441

257:                                              ; preds = %254
  %258 = load i64, ptr %13, align 8, !dbg !1443
  %259 = load i32, ptr %14, align 4, !dbg !1443
  %260 = call i32 @jpeg_fill_bit_buffer(ptr noundef %15, i64 noundef %258, i32 noundef %259, i32 noundef 0), !dbg !1443
  %261 = icmp ne i32 %260, 0, !dbg !1443
  br i1 %261, label %263, label %262, !dbg !1443

262:                                              ; preds = %257
  store i32 0, ptr %3, align 4, !dbg !1446
  br label %528, !dbg !1446

263:                                              ; preds = %257
  %264 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %15, i32 0, i32 3, !dbg !1448
  %265 = load i64, ptr %264, align 8, !dbg !1448
  store i64 %265, ptr %13, align 8, !dbg !1448
  %266 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %15, i32 0, i32 4, !dbg !1448
  %267 = load i32, ptr %266, align 8, !dbg !1448
  store i32 %267, ptr %14, align 4, !dbg !1448
  %268 = load i32, ptr %14, align 4, !dbg !1449
  %269 = icmp slt i32 %268, 8, !dbg !1449
  br i1 %269, label %270, label %271, !dbg !1449

270:                                              ; preds = %263
  store i32 1, ptr %22, align 4, !dbg !1451
  br label %299, !dbg !1451

271:                                              ; preds = %263
  br label %272, !dbg !1448

272:                                              ; preds = %271, %254
  %273 = load i64, ptr %13, align 8, !dbg !1439
  %274 = load i32, ptr %14, align 4, !dbg !1439
  %275 = sub nsw i32 %274, 8, !dbg !1439
  %276 = zext i32 %275 to i64, !dbg !1439
  %277 = ashr i64 %273, %276, !dbg !1439
  %278 = trunc i64 %277 to i32, !dbg !1439
  %279 = and i32 %278, 255, !dbg !1439
  store i32 %279, ptr %23, align 4, !dbg !1439
  %280 = load ptr, ptr %18, align 8, !dbg !1453
  %281 = getelementptr inbounds nuw %struct.d_derived_tbl, ptr %280, i32 0, i32 4, !dbg !1453
  %282 = load i32, ptr %23, align 4, !dbg !1453
  %283 = sext i32 %282 to i64, !dbg !1453
  %284 = getelementptr inbounds [256 x i32], ptr %281, i64 0, i64 %283, !dbg !1453
  %285 = load i32, ptr %284, align 4, !dbg !1453
  store i32 %285, ptr %22, align 4, !dbg !1453
  %286 = icmp ne i32 %285, 0, !dbg !1453
  br i1 %286, label %287, label %298, !dbg !1453

287:                                              ; preds = %272
  %288 = load i32, ptr %22, align 4, !dbg !1455
  %289 = load i32, ptr %14, align 4, !dbg !1455
  %290 = sub nsw i32 %289, %288, !dbg !1455
  store i32 %290, ptr %14, align 4, !dbg !1455
  %291 = load ptr, ptr %18, align 8, !dbg !1455
  %292 = getelementptr inbounds nuw %struct.d_derived_tbl, ptr %291, i32 0, i32 5, !dbg !1455
  %293 = load i32, ptr %23, align 4, !dbg !1455
  %294 = sext i32 %293 to i64, !dbg !1455
  %295 = getelementptr inbounds [256 x i8], ptr %292, i64 0, i64 %294, !dbg !1455
  %296 = load i8, ptr %295, align 1, !dbg !1455
  %297 = zext i8 %296 to i32, !dbg !1455
  store i32 %297, ptr %7, align 4, !dbg !1455
  br label %312, !dbg !1455

298:                                              ; preds = %272
  store i32 9, ptr %22, align 4, !dbg !1457
  br label %299, !dbg !1457

299:                                              ; preds = %298, %270
    #dbg_label(!1459, !1457)
  %300 = load i64, ptr %13, align 8, !dbg !1460
  %301 = load i32, ptr %14, align 4, !dbg !1460
  %302 = load ptr, ptr %18, align 8, !dbg !1460
  %303 = load i32, ptr %22, align 4, !dbg !1460
  %304 = call i32 @jpeg_huff_decode(ptr noundef %15, i64 noundef %300, i32 noundef %301, ptr noundef %302, i32 noundef %303), !dbg !1460
  store i32 %304, ptr %7, align 4, !dbg !1460
  %305 = icmp slt i32 %304, 0, !dbg !1460
  br i1 %305, label %306, label %307, !dbg !1460

306:                                              ; preds = %299
  store i32 0, ptr %3, align 4, !dbg !1462
  br label %528, !dbg !1462

307:                                              ; preds = %299
  %308 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %15, i32 0, i32 3, !dbg !1457
  %309 = load i64, ptr %308, align 8, !dbg !1457
  store i64 %309, ptr %13, align 8, !dbg !1457
  %310 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %15, i32 0, i32 4, !dbg !1457
  %311 = load i32, ptr %310, align 8, !dbg !1457
  store i32 %311, ptr %14, align 4, !dbg !1457
  br label %312

312:                                              ; preds = %307, %287
  %313 = load i32, ptr %7, align 4, !dbg !1464
  %314 = ashr i32 %313, 4, !dbg !1465
  store i32 %314, ptr %9, align 4, !dbg !1466
  %315 = load i32, ptr %7, align 4, !dbg !1467
  %316 = and i32 %315, 15, !dbg !1467
  store i32 %316, ptr %7, align 4, !dbg !1467
  %317 = load i32, ptr %7, align 4, !dbg !1468
  %318 = icmp ne i32 %317, 0, !dbg !1468
  br i1 %318, label %319, label %376, !dbg !1468

319:                                              ; preds = %312
  %320 = load i32, ptr %9, align 4, !dbg !1470
  %321 = load i32, ptr %8, align 4, !dbg !1472
  %322 = add nsw i32 %321, %320, !dbg !1472
  store i32 %322, ptr %8, align 4, !dbg !1472
  %323 = load i32, ptr %14, align 4, !dbg !1473
  %324 = load i32, ptr %7, align 4, !dbg !1473
  %325 = icmp slt i32 %323, %324, !dbg !1473
  br i1 %325, label %326, label %338, !dbg !1473

326:                                              ; preds = %319
  %327 = load i64, ptr %13, align 8, !dbg !1476
  %328 = load i32, ptr %14, align 4, !dbg !1476
  %329 = load i32, ptr %7, align 4, !dbg !1476
  %330 = call i32 @jpeg_fill_bit_buffer(ptr noundef %15, i64 noundef %327, i32 noundef %328, i32 noundef %329), !dbg !1476
  %331 = icmp ne i32 %330, 0, !dbg !1476
  br i1 %331, label %333, label %332, !dbg !1476

332:                                              ; preds = %326
  store i32 0, ptr %3, align 4, !dbg !1479
  br label %528, !dbg !1479

333:                                              ; preds = %326
  %334 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %15, i32 0, i32 3, !dbg !1481
  %335 = load i64, ptr %334, align 8, !dbg !1481
  store i64 %335, ptr %13, align 8, !dbg !1481
  %336 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %15, i32 0, i32 4, !dbg !1481
  %337 = load i32, ptr %336, align 8, !dbg !1481
  store i32 %337, ptr %14, align 4, !dbg !1481
  br label %338, !dbg !1481

338:                                              ; preds = %333, %319
  %339 = load i64, ptr %13, align 8, !dbg !1482
  %340 = load i32, ptr %7, align 4, !dbg !1482
  %341 = load i32, ptr %14, align 4, !dbg !1482
  %342 = sub nsw i32 %341, %340, !dbg !1482
  store i32 %342, ptr %14, align 4, !dbg !1482
  %343 = zext i32 %342 to i64, !dbg !1482
  %344 = ashr i64 %339, %343, !dbg !1482
  %345 = trunc i64 %344 to i32, !dbg !1482
  %346 = load i32, ptr %7, align 4, !dbg !1482
  %347 = shl i32 1, %346, !dbg !1482
  %348 = sub nsw i32 %347, 1, !dbg !1482
  %349 = and i32 %345, %348, !dbg !1482
  store i32 %349, ptr %9, align 4, !dbg !1483
  %350 = load i32, ptr %9, align 4, !dbg !1484
  %351 = load i32, ptr %7, align 4, !dbg !1484
  %352 = sext i32 %351 to i64, !dbg !1484
  %353 = getelementptr inbounds [16 x i32], ptr @extend_test, i64 0, i64 %352, !dbg !1484
  %354 = load i32, ptr %353, align 4, !dbg !1484
  %355 = icmp slt i32 %350, %354, !dbg !1484
  br i1 %355, label %356, label %363, !dbg !1484

356:                                              ; preds = %338
  %357 = load i32, ptr %9, align 4, !dbg !1484
  %358 = load i32, ptr %7, align 4, !dbg !1484
  %359 = sext i32 %358 to i64, !dbg !1484
  %360 = getelementptr inbounds [16 x i32], ptr @extend_offset, i64 0, i64 %359, !dbg !1484
  %361 = load i32, ptr %360, align 4, !dbg !1484
  %362 = add nsw i32 %357, %361, !dbg !1484
  br label %365, !dbg !1484

363:                                              ; preds = %338
  %364 = load i32, ptr %9, align 4, !dbg !1484
  br label %365, !dbg !1484

365:                                              ; preds = %363, %356
  %366 = phi i32 [ %362, %356 ], [ %364, %363 ], !dbg !1484
  store i32 %366, ptr %7, align 4, !dbg !1485
  %367 = load i32, ptr %7, align 4, !dbg !1486
  %368 = trunc i32 %367 to i16, !dbg !1487
  %369 = load ptr, ptr %12, align 8, !dbg !1488
  %370 = load i32, ptr %8, align 4, !dbg !1489
  %371 = sext i32 %370 to i64, !dbg !1490
  %372 = getelementptr inbounds [0 x i32], ptr @jpeg_natural_order, i64 0, i64 %371, !dbg !1490
  %373 = load i32, ptr %372, align 4, !dbg !1490
  %374 = sext i32 %373 to i64, !dbg !1491
  %375 = getelementptr inbounds [64 x i16], ptr %369, i64 0, i64 %374, !dbg !1491
  store i16 %368, ptr %375, align 2, !dbg !1492
  br label %383, !dbg !1493

376:                                              ; preds = %312
  %377 = load i32, ptr %9, align 4, !dbg !1494
  %378 = icmp ne i32 %377, 15, !dbg !1497
  br i1 %378, label %379, label %380, !dbg !1497

379:                                              ; preds = %376
  br label %387, !dbg !1498

380:                                              ; preds = %376
  %381 = load i32, ptr %8, align 4, !dbg !1499
  %382 = add nsw i32 %381, 15, !dbg !1499
  store i32 %382, ptr %8, align 4, !dbg !1499
  br label %383

383:                                              ; preds = %380, %365
  br label %384, !dbg !1500

384:                                              ; preds = %383
  %385 = load i32, ptr %8, align 4, !dbg !1501
  %386 = add nsw i32 %385, 1, !dbg !1501
  store i32 %386, ptr %8, align 4, !dbg !1501
  br label %251, !dbg !1502, !llvm.loop !1503

387:                                              ; preds = %379, %251
  br label %493, !dbg !1505

388:                                              ; preds = %229
  br label %389, !dbg !1506

389:                                              ; preds = %388, %228
    #dbg_label(!1507, !1509)
  store i32 1, ptr %8, align 4, !dbg !1510
  br label %390, !dbg !1512

390:                                              ; preds = %489, %389
  %391 = load i32, ptr %8, align 4, !dbg !1513
  %392 = icmp slt i32 %391, 64, !dbg !1515
  br i1 %392, label %393, label %492, !dbg !1516

393:                                              ; preds = %390
    #dbg_declare(ptr %24, !1517, !DIExpression(), !1520)
    #dbg_declare(ptr %25, !1521, !DIExpression(), !1520)
  %394 = load i32, ptr %14, align 4, !dbg !1522
  %395 = icmp slt i32 %394, 8, !dbg !1522
  br i1 %395, label %396, label %411, !dbg !1522

396:                                              ; preds = %393
  %397 = load i64, ptr %13, align 8, !dbg !1524
  %398 = load i32, ptr %14, align 4, !dbg !1524
  %399 = call i32 @jpeg_fill_bit_buffer(ptr noundef %15, i64 noundef %397, i32 noundef %398, i32 noundef 0), !dbg !1524
  %400 = icmp ne i32 %399, 0, !dbg !1524
  br i1 %400, label %402, label %401, !dbg !1524

401:                                              ; preds = %396
  store i32 0, ptr %3, align 4, !dbg !1527
  br label %528, !dbg !1527

402:                                              ; preds = %396
  %403 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %15, i32 0, i32 3, !dbg !1529
  %404 = load i64, ptr %403, align 8, !dbg !1529
  store i64 %404, ptr %13, align 8, !dbg !1529
  %405 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %15, i32 0, i32 4, !dbg !1529
  %406 = load i32, ptr %405, align 8, !dbg !1529
  store i32 %406, ptr %14, align 4, !dbg !1529
  %407 = load i32, ptr %14, align 4, !dbg !1530
  %408 = icmp slt i32 %407, 8, !dbg !1530
  br i1 %408, label %409, label %410, !dbg !1530

409:                                              ; preds = %402
  store i32 1, ptr %24, align 4, !dbg !1532
  br label %438, !dbg !1532

410:                                              ; preds = %402
  br label %411, !dbg !1529

411:                                              ; preds = %410, %393
  %412 = load i64, ptr %13, align 8, !dbg !1520
  %413 = load i32, ptr %14, align 4, !dbg !1520
  %414 = sub nsw i32 %413, 8, !dbg !1520
  %415 = zext i32 %414 to i64, !dbg !1520
  %416 = ashr i64 %412, %415, !dbg !1520
  %417 = trunc i64 %416 to i32, !dbg !1520
  %418 = and i32 %417, 255, !dbg !1520
  store i32 %418, ptr %25, align 4, !dbg !1520
  %419 = load ptr, ptr %18, align 8, !dbg !1534
  %420 = getelementptr inbounds nuw %struct.d_derived_tbl, ptr %419, i32 0, i32 4, !dbg !1534
  %421 = load i32, ptr %25, align 4, !dbg !1534
  %422 = sext i32 %421 to i64, !dbg !1534
  %423 = getelementptr inbounds [256 x i32], ptr %420, i64 0, i64 %422, !dbg !1534
  %424 = load i32, ptr %423, align 4, !dbg !1534
  store i32 %424, ptr %24, align 4, !dbg !1534
  %425 = icmp ne i32 %424, 0, !dbg !1534
  br i1 %425, label %426, label %437, !dbg !1534

426:                                              ; preds = %411
  %427 = load i32, ptr %24, align 4, !dbg !1536
  %428 = load i32, ptr %14, align 4, !dbg !1536
  %429 = sub nsw i32 %428, %427, !dbg !1536
  store i32 %429, ptr %14, align 4, !dbg !1536
  %430 = load ptr, ptr %18, align 8, !dbg !1536
  %431 = getelementptr inbounds nuw %struct.d_derived_tbl, ptr %430, i32 0, i32 5, !dbg !1536
  %432 = load i32, ptr %25, align 4, !dbg !1536
  %433 = sext i32 %432 to i64, !dbg !1536
  %434 = getelementptr inbounds [256 x i8], ptr %431, i64 0, i64 %433, !dbg !1536
  %435 = load i8, ptr %434, align 1, !dbg !1536
  %436 = zext i8 %435 to i32, !dbg !1536
  store i32 %436, ptr %7, align 4, !dbg !1536
  br label %451, !dbg !1536

437:                                              ; preds = %411
  store i32 9, ptr %24, align 4, !dbg !1538
  br label %438, !dbg !1538

438:                                              ; preds = %437, %409
    #dbg_label(!1540, !1538)
  %439 = load i64, ptr %13, align 8, !dbg !1541
  %440 = load i32, ptr %14, align 4, !dbg !1541
  %441 = load ptr, ptr %18, align 8, !dbg !1541
  %442 = load i32, ptr %24, align 4, !dbg !1541
  %443 = call i32 @jpeg_huff_decode(ptr noundef %15, i64 noundef %439, i32 noundef %440, ptr noundef %441, i32 noundef %442), !dbg !1541
  store i32 %443, ptr %7, align 4, !dbg !1541
  %444 = icmp slt i32 %443, 0, !dbg !1541
  br i1 %444, label %445, label %446, !dbg !1541

445:                                              ; preds = %438
  store i32 0, ptr %3, align 4, !dbg !1543
  br label %528, !dbg !1543

446:                                              ; preds = %438
  %447 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %15, i32 0, i32 3, !dbg !1538
  %448 = load i64, ptr %447, align 8, !dbg !1538
  store i64 %448, ptr %13, align 8, !dbg !1538
  %449 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %15, i32 0, i32 4, !dbg !1538
  %450 = load i32, ptr %449, align 8, !dbg !1538
  store i32 %450, ptr %14, align 4, !dbg !1538
  br label %451

451:                                              ; preds = %446, %426
  %452 = load i32, ptr %7, align 4, !dbg !1545
  %453 = ashr i32 %452, 4, !dbg !1546
  store i32 %453, ptr %9, align 4, !dbg !1547
  %454 = load i32, ptr %7, align 4, !dbg !1548
  %455 = and i32 %454, 15, !dbg !1548
  store i32 %455, ptr %7, align 4, !dbg !1548
  %456 = load i32, ptr %7, align 4, !dbg !1549
  %457 = icmp ne i32 %456, 0, !dbg !1549
  br i1 %457, label %458, label %481, !dbg !1549

458:                                              ; preds = %451
  %459 = load i32, ptr %9, align 4, !dbg !1551
  %460 = load i32, ptr %8, align 4, !dbg !1553
  %461 = add nsw i32 %460, %459, !dbg !1553
  store i32 %461, ptr %8, align 4, !dbg !1553
  %462 = load i32, ptr %14, align 4, !dbg !1554
  %463 = load i32, ptr %7, align 4, !dbg !1554
  %464 = icmp slt i32 %462, %463, !dbg !1554
  br i1 %464, label %465, label %477, !dbg !1554

465:                                              ; preds = %458
  %466 = load i64, ptr %13, align 8, !dbg !1557
  %467 = load i32, ptr %14, align 4, !dbg !1557
  %468 = load i32, ptr %7, align 4, !dbg !1557
  %469 = call i32 @jpeg_fill_bit_buffer(ptr noundef %15, i64 noundef %466, i32 noundef %467, i32 noundef %468), !dbg !1557
  %470 = icmp ne i32 %469, 0, !dbg !1557
  br i1 %470, label %472, label %471, !dbg !1557

471:                                              ; preds = %465
  store i32 0, ptr %3, align 4, !dbg !1560
  br label %528, !dbg !1560

472:                                              ; preds = %465
  %473 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %15, i32 0, i32 3, !dbg !1562
  %474 = load i64, ptr %473, align 8, !dbg !1562
  store i64 %474, ptr %13, align 8, !dbg !1562
  %475 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %15, i32 0, i32 4, !dbg !1562
  %476 = load i32, ptr %475, align 8, !dbg !1562
  store i32 %476, ptr %14, align 4, !dbg !1562
  br label %477, !dbg !1562

477:                                              ; preds = %472, %458
  %478 = load i32, ptr %7, align 4, !dbg !1563
  %479 = load i32, ptr %14, align 4, !dbg !1563
  %480 = sub nsw i32 %479, %478, !dbg !1563
  store i32 %480, ptr %14, align 4, !dbg !1563
  br label %488, !dbg !1564

481:                                              ; preds = %451
  %482 = load i32, ptr %9, align 4, !dbg !1565
  %483 = icmp ne i32 %482, 15, !dbg !1568
  br i1 %483, label %484, label %485, !dbg !1568

484:                                              ; preds = %481
  br label %492, !dbg !1569

485:                                              ; preds = %481
  %486 = load i32, ptr %8, align 4, !dbg !1570
  %487 = add nsw i32 %486, 15, !dbg !1570
  store i32 %487, ptr %8, align 4, !dbg !1570
  br label %488

488:                                              ; preds = %485, %477
  br label %489, !dbg !1571

489:                                              ; preds = %488
  %490 = load i32, ptr %8, align 4, !dbg !1572
  %491 = add nsw i32 %490, 1, !dbg !1572
  store i32 %491, ptr %8, align 4, !dbg !1572
  br label %390, !dbg !1573, !llvm.loop !1574

492:                                              ; preds = %484, %390
  br label %493

493:                                              ; preds = %492, %387
  br label %494, !dbg !1576

494:                                              ; preds = %493
  %495 = load i32, ptr %10, align 4, !dbg !1577
  %496 = add nsw i32 %495, 1, !dbg !1577
  store i32 %496, ptr %10, align 4, !dbg !1577
  br label %78, !dbg !1578, !llvm.loop !1579

497:                                              ; preds = %78
  %498 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %15, i32 0, i32 0, !dbg !1581
  %499 = load ptr, ptr %498, align 8, !dbg !1581
  %500 = load ptr, ptr %4, align 8, !dbg !1581
  %501 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %500, i32 0, i32 5, !dbg !1581
  %502 = load ptr, ptr %501, align 8, !dbg !1581
  %503 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %502, i32 0, i32 0, !dbg !1581
  store ptr %499, ptr %503, align 8, !dbg !1581
  %504 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %15, i32 0, i32 1, !dbg !1581
  %505 = load i64, ptr %504, align 8, !dbg !1581
  %506 = load ptr, ptr %4, align 8, !dbg !1581
  %507 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %506, i32 0, i32 5, !dbg !1581
  %508 = load ptr, ptr %507, align 8, !dbg !1581
  %509 = getelementptr inbounds nuw %struct.jpeg_source_mgr, ptr %508, i32 0, i32 1, !dbg !1581
  store i64 %505, ptr %509, align 8, !dbg !1581
  %510 = getelementptr inbounds nuw %struct.bitread_working_state, ptr %15, i32 0, i32 2, !dbg !1581
  %511 = load i32, ptr %510, align 8, !dbg !1581
  %512 = load ptr, ptr %4, align 8, !dbg !1581
  %513 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %512, i32 0, i32 72, !dbg !1581
  store i32 %511, ptr %513, align 4, !dbg !1581
  %514 = load i64, ptr %13, align 8, !dbg !1581
  %515 = load ptr, ptr %6, align 8, !dbg !1581
  %516 = getelementptr inbounds nuw %struct.huff_entropy_decoder, ptr %515, i32 0, i32 1, !dbg !1581
  %517 = getelementptr inbounds nuw %struct.bitread_perm_state, ptr %516, i32 0, i32 0, !dbg !1581
  store i64 %514, ptr %517, align 8, !dbg !1581
  %518 = load i32, ptr %14, align 4, !dbg !1581
  %519 = load ptr, ptr %6, align 8, !dbg !1581
  %520 = getelementptr inbounds nuw %struct.huff_entropy_decoder, ptr %519, i32 0, i32 1, !dbg !1581
  %521 = getelementptr inbounds nuw %struct.bitread_perm_state, ptr %520, i32 0, i32 1, !dbg !1581
  store i32 %518, ptr %521, align 8, !dbg !1581
  %522 = load ptr, ptr %6, align 8, !dbg !1582
  %523 = getelementptr inbounds nuw %struct.huff_entropy_decoder, ptr %522, i32 0, i32 2, !dbg !1582
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %523, ptr align 4 %16, i64 16, i1 false), !dbg !1582
  %524 = load ptr, ptr %6, align 8, !dbg !1583
  %525 = getelementptr inbounds nuw %struct.huff_entropy_decoder, ptr %524, i32 0, i32 3, !dbg !1584
  %526 = load i32, ptr %525, align 8, !dbg !1585
  %527 = add i32 %526, -1, !dbg !1585
  store i32 %527, ptr %525, align 8, !dbg !1585
  store i32 1, ptr %3, align 4, !dbg !1586
  br label %528, !dbg !1586

528:                                              ; preds = %497, %471, %445, %401, %332, %306, %262, %188, %169, %125, %42
  %529 = load i32, ptr %3, align 4, !dbg !1587
  ret i32 %529, !dbg !1587
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @process_restart(ptr noundef %0) #0 !dbg !1588 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !1589, !DIExpression(), !1590)
    #dbg_declare(ptr %4, !1591, !DIExpression(), !1592)
  %6 = load ptr, ptr %3, align 8, !dbg !1593
  %7 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %6, i32 0, i32 79, !dbg !1594
  %8 = load ptr, ptr %7, align 8, !dbg !1594
  store ptr %8, ptr %4, align 8, !dbg !1592
    #dbg_declare(ptr %5, !1595, !DIExpression(), !1596)
  %9 = load ptr, ptr %4, align 8, !dbg !1597
  %10 = getelementptr inbounds nuw %struct.huff_entropy_decoder, ptr %9, i32 0, i32 1, !dbg !1598
  %11 = getelementptr inbounds nuw %struct.bitread_perm_state, ptr %10, i32 0, i32 1, !dbg !1599
  %12 = load i32, ptr %11, align 8, !dbg !1599
  %13 = sdiv i32 %12, 8, !dbg !1600
  %14 = load ptr, ptr %3, align 8, !dbg !1601
  %15 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %14, i32 0, i32 78, !dbg !1602
  %16 = load ptr, ptr %15, align 8, !dbg !1602
  %17 = getelementptr inbounds nuw %struct.jpeg_marker_reader, ptr %16, i32 0, i32 8, !dbg !1603
  %18 = load i32, ptr %17, align 4, !dbg !1604
  %19 = add i32 %18, %13, !dbg !1604
  store i32 %19, ptr %17, align 4, !dbg !1604
  %20 = load ptr, ptr %4, align 8, !dbg !1605
  %21 = getelementptr inbounds nuw %struct.huff_entropy_decoder, ptr %20, i32 0, i32 1, !dbg !1606
  %22 = getelementptr inbounds nuw %struct.bitread_perm_state, ptr %21, i32 0, i32 1, !dbg !1607
  store i32 0, ptr %22, align 8, !dbg !1608
  %23 = load ptr, ptr %3, align 8, !dbg !1609
  %24 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %23, i32 0, i32 78, !dbg !1611
  %25 = load ptr, ptr %24, align 8, !dbg !1611
  %26 = getelementptr inbounds nuw %struct.jpeg_marker_reader, ptr %25, i32 0, i32 2, !dbg !1612
  %27 = load ptr, ptr %26, align 8, !dbg !1612
  %28 = load ptr, ptr %3, align 8, !dbg !1613
  %29 = call i32 %27(ptr noundef %28), !dbg !1614
  %30 = icmp ne i32 %29, 0, !dbg !1614
  br i1 %30, label %32, label %31, !dbg !1615

31:                                               ; preds = %1
  store i32 0, ptr %2, align 4, !dbg !1616
  br label %58, !dbg !1616

32:                                               ; preds = %1
  store i32 0, ptr %5, align 4, !dbg !1617
  br label %33, !dbg !1619

33:                                               ; preds = %46, %32
  %34 = load i32, ptr %5, align 4, !dbg !1620
  %35 = load ptr, ptr %3, align 8, !dbg !1622
  %36 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %35, i32 0, i32 62, !dbg !1623
  %37 = load i32, ptr %36, align 8, !dbg !1623
  %38 = icmp slt i32 %34, %37, !dbg !1624
  br i1 %38, label %39, label %49, !dbg !1625

39:                                               ; preds = %33
  %40 = load ptr, ptr %4, align 8, !dbg !1626
  %41 = getelementptr inbounds nuw %struct.huff_entropy_decoder, ptr %40, i32 0, i32 2, !dbg !1627
  %42 = getelementptr inbounds nuw %struct.savable_state, ptr %41, i32 0, i32 0, !dbg !1628
  %43 = load i32, ptr %5, align 4, !dbg !1629
  %44 = sext i32 %43 to i64, !dbg !1626
  %45 = getelementptr inbounds [4 x i32], ptr %42, i64 0, i64 %44, !dbg !1626
  store i32 0, ptr %45, align 4, !dbg !1630
  br label %46, !dbg !1626

46:                                               ; preds = %39
  %47 = load i32, ptr %5, align 4, !dbg !1631
  %48 = add nsw i32 %47, 1, !dbg !1631
  store i32 %48, ptr %5, align 4, !dbg !1631
  br label %33, !dbg !1632, !llvm.loop !1633

49:                                               ; preds = %33
  %50 = load ptr, ptr %3, align 8, !dbg !1635
  %51 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %50, i32 0, i32 49, !dbg !1636
  %52 = load i32, ptr %51, align 8, !dbg !1636
  %53 = load ptr, ptr %4, align 8, !dbg !1637
  %54 = getelementptr inbounds nuw %struct.huff_entropy_decoder, ptr %53, i32 0, i32 3, !dbg !1638
  store i32 %52, ptr %54, align 8, !dbg !1639
  %55 = load ptr, ptr %4, align 8, !dbg !1640
  %56 = getelementptr inbounds nuw %struct.huff_entropy_decoder, ptr %55, i32 0, i32 1, !dbg !1641
  %57 = getelementptr inbounds nuw %struct.bitread_perm_state, ptr %56, i32 0, i32 2, !dbg !1642
  store i32 0, ptr %57, align 4, !dbg !1643
  store i32 1, ptr %2, align 4, !dbg !1644
  br label %58, !dbg !1644

58:                                               ; preds = %49, %31
  %59 = load i32, ptr %2, align 4, !dbg !1645
  ret i32 %59, !dbg !1645
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!622, !623, !624, !625, !626, !627, !628}
!llvm.ident = !{!629}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "extend_test", scope: !2, file: !3, line: 374, type: !620, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !156, globals: !617, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jdhuff.c", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "6f67451762e56d409c4d279f47285454")
!4 = !{!5, !15, !20, !25, !32}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 194, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jpeglib.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "2a2b23235fe587b10147d741e3371e67")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14}
!9 = !DIEnumerator(name: "JCS_UNKNOWN", value: 0)
!10 = !DIEnumerator(name: "JCS_GRAYSCALE", value: 1)
!11 = !DIEnumerator(name: "JCS_RGB", value: 2)
!12 = !DIEnumerator(name: "JCS_YCbCr", value: 3)
!13 = !DIEnumerator(name: "JCS_CMYK", value: 4)
!14 = !DIEnumerator(name: "JCS_YCCK", value: 5)
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 205, baseType: !7, size: 32, elements: !16)
!16 = !{!17, !18, !19}
!17 = !DIEnumerator(name: "JDCT_ISLOW", value: 0)
!18 = !DIEnumerator(name: "JDCT_IFAST", value: 1)
!19 = !DIEnumerator(name: "JDCT_FLOAT", value: 2)
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 220, baseType: !7, size: 32, elements: !21)
!21 = !{!22, !23, !24}
!22 = !DIEnumerator(name: "JDITHER_NONE", value: 0)
!23 = !DIEnumerator(name: "JDITHER_ORDERED", value: 1)
!24 = !DIEnumerator(name: "JDITHER_FS", value: 2)
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !26, line: 16, baseType: !7, size: 32, elements: !27)
!26 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jpegint.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "87e9869e13f29b8e74a9dee50528c6c5")
!27 = !{!28, !29, !30, !31}
!28 = !DIEnumerator(name: "JBUF_PASS_THRU", value: 0)
!29 = !DIEnumerator(name: "JBUF_SAVE_SOURCE", value: 1)
!30 = !DIEnumerator(name: "JBUF_CRANK_DEST", value: 2)
!31 = !DIEnumerator(name: "JBUF_SAVE_AND_PASS", value: 3)
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !33, line: 33, baseType: !7, size: 32, elements: !34)
!33 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jerror.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "a232f2460ff0049c960896e323d8710b")
!34 = !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155}
!35 = !DIEnumerator(name: "JMSG_NOMESSAGE", value: 0)
!36 = !DIEnumerator(name: "JERR_ARITH_NOTIMPL", value: 1)
!37 = !DIEnumerator(name: "JERR_BAD_ALIGN_TYPE", value: 2)
!38 = !DIEnumerator(name: "JERR_BAD_ALLOC_CHUNK", value: 3)
!39 = !DIEnumerator(name: "JERR_BAD_BUFFER_MODE", value: 4)
!40 = !DIEnumerator(name: "JERR_BAD_COMPONENT_ID", value: 5)
!41 = !DIEnumerator(name: "JERR_BAD_DCTSIZE", value: 6)
!42 = !DIEnumerator(name: "JERR_BAD_IN_COLORSPACE", value: 7)
!43 = !DIEnumerator(name: "JERR_BAD_J_COLORSPACE", value: 8)
!44 = !DIEnumerator(name: "JERR_BAD_LENGTH", value: 9)
!45 = !DIEnumerator(name: "JERR_BAD_LIB_VERSION", value: 10)
!46 = !DIEnumerator(name: "JERR_BAD_MCU_SIZE", value: 11)
!47 = !DIEnumerator(name: "JERR_BAD_POOL_ID", value: 12)
!48 = !DIEnumerator(name: "JERR_BAD_PRECISION", value: 13)
!49 = !DIEnumerator(name: "JERR_BAD_PROGRESSION", value: 14)
!50 = !DIEnumerator(name: "JERR_BAD_PROG_SCRIPT", value: 15)
!51 = !DIEnumerator(name: "JERR_BAD_SAMPLING", value: 16)
!52 = !DIEnumerator(name: "JERR_BAD_SCAN_SCRIPT", value: 17)
!53 = !DIEnumerator(name: "JERR_BAD_STATE", value: 18)
!54 = !DIEnumerator(name: "JERR_BAD_STRUCT_SIZE", value: 19)
!55 = !DIEnumerator(name: "JERR_BAD_VIRTUAL_ACCESS", value: 20)
!56 = !DIEnumerator(name: "JERR_BUFFER_SIZE", value: 21)
!57 = !DIEnumerator(name: "JERR_CANT_SUSPEND", value: 22)
!58 = !DIEnumerator(name: "JERR_CCIR601_NOTIMPL", value: 23)
!59 = !DIEnumerator(name: "JERR_COMPONENT_COUNT", value: 24)
!60 = !DIEnumerator(name: "JERR_CONVERSION_NOTIMPL", value: 25)
!61 = !DIEnumerator(name: "JERR_DAC_INDEX", value: 26)
!62 = !DIEnumerator(name: "JERR_DAC_VALUE", value: 27)
!63 = !DIEnumerator(name: "JERR_DHT_COUNTS", value: 28)
!64 = !DIEnumerator(name: "JERR_DHT_INDEX", value: 29)
!65 = !DIEnumerator(name: "JERR_DQT_INDEX", value: 30)
!66 = !DIEnumerator(name: "JERR_EMPTY_IMAGE", value: 31)
!67 = !DIEnumerator(name: "JERR_EMS_READ", value: 32)
!68 = !DIEnumerator(name: "JERR_EMS_WRITE", value: 33)
!69 = !DIEnumerator(name: "JERR_EOI_EXPECTED", value: 34)
!70 = !DIEnumerator(name: "JERR_FILE_READ", value: 35)
!71 = !DIEnumerator(name: "JERR_FILE_WRITE", value: 36)
!72 = !DIEnumerator(name: "JERR_FRACT_SAMPLE_NOTIMPL", value: 37)
!73 = !DIEnumerator(name: "JERR_HUFF_CLEN_OVERFLOW", value: 38)
!74 = !DIEnumerator(name: "JERR_HUFF_MISSING_CODE", value: 39)
!75 = !DIEnumerator(name: "JERR_IMAGE_TOO_BIG", value: 40)
!76 = !DIEnumerator(name: "JERR_INPUT_EMPTY", value: 41)
!77 = !DIEnumerator(name: "JERR_INPUT_EOF", value: 42)
!78 = !DIEnumerator(name: "JERR_MISMATCHED_QUANT_TABLE", value: 43)
!79 = !DIEnumerator(name: "JERR_MISSING_DATA", value: 44)
!80 = !DIEnumerator(name: "JERR_MODE_CHANGE", value: 45)
!81 = !DIEnumerator(name: "JERR_NOTIMPL", value: 46)
!82 = !DIEnumerator(name: "JERR_NOT_COMPILED", value: 47)
!83 = !DIEnumerator(name: "JERR_NO_BACKING_STORE", value: 48)
!84 = !DIEnumerator(name: "JERR_NO_HUFF_TABLE", value: 49)
!85 = !DIEnumerator(name: "JERR_NO_IMAGE", value: 50)
!86 = !DIEnumerator(name: "JERR_NO_QUANT_TABLE", value: 51)
!87 = !DIEnumerator(name: "JERR_NO_SOI", value: 52)
!88 = !DIEnumerator(name: "JERR_OUT_OF_MEMORY", value: 53)
!89 = !DIEnumerator(name: "JERR_QUANT_COMPONENTS", value: 54)
!90 = !DIEnumerator(name: "JERR_QUANT_FEW_COLORS", value: 55)
!91 = !DIEnumerator(name: "JERR_QUANT_MANY_COLORS", value: 56)
!92 = !DIEnumerator(name: "JERR_SOF_DUPLICATE", value: 57)
!93 = !DIEnumerator(name: "JERR_SOF_NO_SOS", value: 58)
!94 = !DIEnumerator(name: "JERR_SOF_UNSUPPORTED", value: 59)
!95 = !DIEnumerator(name: "JERR_SOI_DUPLICATE", value: 60)
!96 = !DIEnumerator(name: "JERR_SOS_NO_SOF", value: 61)
!97 = !DIEnumerator(name: "JERR_TFILE_CREATE", value: 62)
!98 = !DIEnumerator(name: "JERR_TFILE_READ", value: 63)
!99 = !DIEnumerator(name: "JERR_TFILE_SEEK", value: 64)
!100 = !DIEnumerator(name: "JERR_TFILE_WRITE", value: 65)
!101 = !DIEnumerator(name: "JERR_TOO_LITTLE_DATA", value: 66)
!102 = !DIEnumerator(name: "JERR_UNKNOWN_MARKER", value: 67)
!103 = !DIEnumerator(name: "JERR_VIRTUAL_BUG", value: 68)
!104 = !DIEnumerator(name: "JERR_WIDTH_OVERFLOW", value: 69)
!105 = !DIEnumerator(name: "JERR_XMS_READ", value: 70)
!106 = !DIEnumerator(name: "JERR_XMS_WRITE", value: 71)
!107 = !DIEnumerator(name: "JMSG_COPYRIGHT", value: 72)
!108 = !DIEnumerator(name: "JMSG_VERSION", value: 73)
!109 = !DIEnumerator(name: "JTRC_16BIT_TABLES", value: 74)
!110 = !DIEnumerator(name: "JTRC_ADOBE", value: 75)
!111 = !DIEnumerator(name: "JTRC_APP0", value: 76)
!112 = !DIEnumerator(name: "JTRC_APP14", value: 77)
!113 = !DIEnumerator(name: "JTRC_DAC", value: 78)
!114 = !DIEnumerator(name: "JTRC_DHT", value: 79)
!115 = !DIEnumerator(name: "JTRC_DQT", value: 80)
!116 = !DIEnumerator(name: "JTRC_DRI", value: 81)
!117 = !DIEnumerator(name: "JTRC_EMS_CLOSE", value: 82)
!118 = !DIEnumerator(name: "JTRC_EMS_OPEN", value: 83)
!119 = !DIEnumerator(name: "JTRC_EOI", value: 84)
!120 = !DIEnumerator(name: "JTRC_HUFFBITS", value: 85)
!121 = !DIEnumerator(name: "JTRC_JFIF", value: 86)
!122 = !DIEnumerator(name: "JTRC_JFIF_BADTHUMBNAILSIZE", value: 87)
!123 = !DIEnumerator(name: "JTRC_JFIF_MINOR", value: 88)
!124 = !DIEnumerator(name: "JTRC_JFIF_THUMBNAIL", value: 89)
!125 = !DIEnumerator(name: "JTRC_MISC_MARKER", value: 90)
!126 = !DIEnumerator(name: "JTRC_PARMLESS_MARKER", value: 91)
!127 = !DIEnumerator(name: "JTRC_QUANTVALS", value: 92)
!128 = !DIEnumerator(name: "JTRC_QUANT_3_NCOLORS", value: 93)
!129 = !DIEnumerator(name: "JTRC_QUANT_NCOLORS", value: 94)
!130 = !DIEnumerator(name: "JTRC_QUANT_SELECTED", value: 95)
!131 = !DIEnumerator(name: "JTRC_RECOVERY_ACTION", value: 96)
!132 = !DIEnumerator(name: "JTRC_RST", value: 97)
!133 = !DIEnumerator(name: "JTRC_SMOOTH_NOTIMPL", value: 98)
!134 = !DIEnumerator(name: "JTRC_SOF", value: 99)
!135 = !DIEnumerator(name: "JTRC_SOF_COMPONENT", value: 100)
!136 = !DIEnumerator(name: "JTRC_SOI", value: 101)
!137 = !DIEnumerator(name: "JTRC_SOS", value: 102)
!138 = !DIEnumerator(name: "JTRC_SOS_COMPONENT", value: 103)
!139 = !DIEnumerator(name: "JTRC_SOS_PARAMS", value: 104)
!140 = !DIEnumerator(name: "JTRC_TFILE_CLOSE", value: 105)
!141 = !DIEnumerator(name: "JTRC_TFILE_OPEN", value: 106)
!142 = !DIEnumerator(name: "JTRC_UNKNOWN_IDS", value: 107)
!143 = !DIEnumerator(name: "JTRC_XMS_CLOSE", value: 108)
!144 = !DIEnumerator(name: "JTRC_XMS_OPEN", value: 109)
!145 = !DIEnumerator(name: "JWRN_ADOBE_XFORM", value: 110)
!146 = !DIEnumerator(name: "JWRN_BOGUS_PROGRESSION", value: 111)
!147 = !DIEnumerator(name: "JWRN_EXTRANEOUS_DATA", value: 112)
!148 = !DIEnumerator(name: "JWRN_HIT_MARKER", value: 113)
!149 = !DIEnumerator(name: "JWRN_HUFF_BAD_CODE", value: 114)
!150 = !DIEnumerator(name: "JWRN_JFIF_MAJOR", value: 115)
!151 = !DIEnumerator(name: "JWRN_JPEG_EOF", value: 116)
!152 = !DIEnumerator(name: "JWRN_MUST_RESYNC", value: 117)
!153 = !DIEnumerator(name: "JWRN_NOT_SEQUENTIAL", value: 118)
!154 = !DIEnumerator(name: "JWRN_TOO_MUCH_DATA", value: 119)
!155 = !DIEnumerator(name: "JMSG_LASTMSGCODE", value: 120)
!156 = !{!157, !158, !195, !250, !176, !217, !315, !551, !274}
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "d_derived_tbl", file: !160, line: 43, baseType: !161)
!160 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jdhuff.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "ae4ee10e9000ceb58d3d7f8a964b87b0")
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !160, line: 26, size: 13120, elements: !162)
!162 = !{!163, !170, !174, !177, !192, !194}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "mincode", scope: !161, file: !160, line: 28, baseType: !164, size: 1088)
!164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 1088, elements: !168)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT32", file: !166, line: 161, baseType: !167)
!166 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jmorecfg.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "56a0eda58fafa6bdd5498f702a998c09")
!167 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!168 = !{!169}
!169 = !DISubrange(count: 17)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "maxcode", scope: !161, file: !160, line: 29, baseType: !171, size: 1152, offset: 1088)
!171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 1152, elements: !172)
!172 = !{!173}
!173 = !DISubrange(count: 18)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "valptr", scope: !161, file: !160, line: 31, baseType: !175, size: 544, offset: 2240)
!175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 544, elements: !168)
!176 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "pub", scope: !161, file: !160, line: 34, baseType: !178, size: 64, offset: 2816)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "JHUFF_TBL", file: !6, line: 111, baseType: !180)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 100, size: 2240, elements: !181)
!181 = !{!182, !186, !190}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !180, file: !6, line: 102, baseType: !183, size: 136)
!183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 136, elements: !168)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT8", file: !166, line: 135, baseType: !185)
!185 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "huffval", scope: !180, file: !6, line: 104, baseType: !187, size: 2048, offset: 136)
!187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 2048, elements: !188)
!188 = !{!189}
!189 = !DISubrange(count: 256)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "sent_table", scope: !180, file: !6, line: 110, baseType: !191, size: 32, offset: 2208)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "boolean", file: !166, line: 227, baseType: !176)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "look_nbits", scope: !161, file: !160, line: 41, baseType: !193, size: 8192, offset: 2880)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 8192, elements: !188)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "look_sym", scope: !161, file: !160, line: 42, baseType: !187, size: 2048, offset: 11072)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "j_common_ptr", file: !6, line: 248, baseType: !196)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_common_struct", file: !6, line: 240, size: 256, elements: !198)
!198 = !{!199, !242, !304, !313, !314}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !197, file: !6, line: 241, baseType: !200, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_error_mgr", file: !6, line: 618, size: 1344, elements: !202)
!202 = !{!203, !207, !211, !212, !218, !219, !220, !231, !232, !233, !238, !239, !240, !241}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "error_exit", scope: !201, file: !6, line: 620, baseType: !204, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DISubroutineType(types: !206)
!206 = !{null, !195}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "emit_message", scope: !201, file: !6, line: 622, baseType: !208, size: 64, offset: 64)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DISubroutineType(types: !210)
!210 = !{null, !195, !176}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "output_message", scope: !201, file: !6, line: 624, baseType: !204, size: 64, offset: 128)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "format_message", scope: !201, file: !6, line: 626, baseType: !213, size: 64, offset: 192)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DISubroutineType(types: !215)
!215 = !{null, !195, !216}
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!217 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "reset_error_mgr", scope: !201, file: !6, line: 629, baseType: !204, size: 64, offset: 256)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "msg_code", scope: !201, file: !6, line: 634, baseType: !176, size: 32, offset: 320)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "msg_parm", scope: !201, file: !6, line: 639, baseType: !221, size: 640, offset: 352)
!221 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !201, file: !6, line: 636, size: 640, elements: !222)
!222 = !{!223, !227}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !221, file: !6, line: 637, baseType: !224, size: 256)
!224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 256, elements: !225)
!225 = !{!226}
!226 = !DISubrange(count: 8)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !221, file: !6, line: 638, baseType: !228, size: 640)
!228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 640, elements: !229)
!229 = !{!230}
!230 = !DISubrange(count: 80)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "trace_level", scope: !201, file: !6, line: 643, baseType: !176, size: 32, offset: 992)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "num_warnings", scope: !201, file: !6, line: 651, baseType: !167, size: 64, offset: 1024)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "jpeg_message_table", scope: !201, file: !6, line: 663, baseType: !234, size: 64, offset: 1088)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !236)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !217)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "last_jpeg_message", scope: !201, file: !6, line: 664, baseType: !176, size: 32, offset: 1152)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "addon_message_table", scope: !201, file: !6, line: 668, baseType: !234, size: 64, offset: 1216)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "first_addon_message", scope: !201, file: !6, line: 669, baseType: !176, size: 32, offset: 1280)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "last_addon_message", scope: !201, file: !6, line: 670, baseType: !176, size: 32, offset: 1312)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !197, file: !6, line: 241, baseType: !243, size: 64, offset: 64)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_memory_mgr", file: !6, line: 731, size: 768, elements: !245)
!245 = !{!246, !253, !254, !264, !278, !285, !292, !293, !297, !301, !302, !303}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_small", scope: !244, file: !6, line: 733, baseType: !247, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = !DISubroutineType(types: !249)
!249 = !{!157, !195, !176, !250}
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !251, line: 18, baseType: !252)
!251 = !DIFile(filename: "/usr/local/lib/clang/20/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!252 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_large", scope: !244, file: !6, line: 735, baseType: !247, size: 64, offset: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_sarray", scope: !244, file: !6, line: 737, baseType: !255, size: 64, offset: 128)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = !DISubroutineType(types: !257)
!257 = !{!258, !195, !176, !263, !263}
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPARRAY", file: !6, line: 67, baseType: !259)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPROW", file: !6, line: 66, baseType: !261)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPLE", file: !166, line: 59, baseType: !185)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "JDIMENSION", file: !166, line: 171, baseType: !7)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_barray", scope: !244, file: !6, line: 740, baseType: !265, size: 64, offset: 192)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = !DISubroutineType(types: !267)
!267 = !{!268, !195, !176, !263, !263}
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "JBLOCKARRAY", file: !6, line: 72, baseType: !269)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "JBLOCKROW", file: !6, line: 71, baseType: !271)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "JBLOCK", file: !6, line: 70, baseType: !273)
!273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !274, size: 1024, elements: !276)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "JCOEF", file: !166, line: 99, baseType: !275)
!275 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!276 = !{!277}
!277 = !DISubrange(count: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "request_virt_sarray", scope: !244, file: !6, line: 743, baseType: !279, size: 64, offset: 256)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DISubroutineType(types: !281)
!281 = !{!282, !195, !176, !191, !263, !263, !263}
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "jvirt_sarray_ptr", file: !6, line: 727, baseType: !283)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!284 = !DICompositeType(tag: DW_TAG_structure_type, name: "jvirt_sarray_control", file: !6, line: 727, flags: DIFlagFwdDecl)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "request_virt_barray", scope: !244, file: !6, line: 749, baseType: !286, size: 64, offset: 320)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = !DISubroutineType(types: !288)
!288 = !{!289, !195, !176, !191, !263, !263, !263}
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "jvirt_barray_ptr", file: !6, line: 728, baseType: !290)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = !DICompositeType(tag: DW_TAG_structure_type, name: "jvirt_barray_control", file: !6, line: 728, flags: DIFlagFwdDecl)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "realize_virt_arrays", scope: !244, file: !6, line: 755, baseType: !204, size: 64, offset: 384)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "access_virt_sarray", scope: !244, file: !6, line: 756, baseType: !294, size: 64, offset: 448)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = !DISubroutineType(types: !296)
!296 = !{!258, !195, !282, !263, !263, !191}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "access_virt_barray", scope: !244, file: !6, line: 761, baseType: !298, size: 64, offset: 512)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = !DISubroutineType(types: !300)
!300 = !{!268, !195, !289, !263, !263, !191}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "free_pool", scope: !244, file: !6, line: 766, baseType: !208, size: 64, offset: 576)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "self_destruct", scope: !244, file: !6, line: 767, baseType: !204, size: 64, offset: 640)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "max_memory_to_use", scope: !244, file: !6, line: 774, baseType: !167, size: 64, offset: 704)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "progress", scope: !197, file: !6, line: 241, baseType: !305, size: 64, offset: 128)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_progress_mgr", file: !6, line: 676, size: 256, elements: !307)
!307 = !{!308, !309, !310, !311, !312}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "progress_monitor", scope: !306, file: !6, line: 677, baseType: !204, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "pass_counter", scope: !306, file: !6, line: 679, baseType: !167, size: 64, offset: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "pass_limit", scope: !306, file: !6, line: 680, baseType: !167, size: 64, offset: 128)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "completed_passes", scope: !306, file: !6, line: 681, baseType: !176, size: 32, offset: 192)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "total_passes", scope: !306, file: !6, line: 682, baseType: !176, size: 32, offset: 224)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "is_decompressor", scope: !197, file: !6, line: 241, baseType: !191, size: 32, offset: 192)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "global_state", scope: !197, file: !6, line: 241, baseType: !176, size: 32, offset: 224)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "huff_entropy_ptr", file: !3, line: 69, baseType: !316)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "huff_entropy_decoder", file: !3, line: 67, baseType: !318)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 52, size: 960, elements: !319)
!319 = !{!320, !599, !607, !613, !614, !616}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "pub", scope: !318, file: !3, line: 53, baseType: !321, size: 128)
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_entropy_decoder", file: !26, line: 211, size: 128, elements: !322)
!322 = !{!323, !595}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !321, file: !26, line: 212, baseType: !324, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = !DISubroutineType(types: !326)
!326 = !{null, !327}
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "j_decompress_ptr", file: !6, line: 250, baseType: !328)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_decompress_struct", file: !6, line: 394, size: 4928, elements: !330)
!330 = !{!331, !332, !333, !334, !335, !336, !359, !360, !361, !362, !364, !365, !366, !367, !369, !370, !371, !373, !374, !375, !376, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !398, !411, !413, !414, !415, !441, !442, !443, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !465, !466, !467, !468, !472, !473, !474, !475, !476, !477, !484, !498, !516, !525, !535, !550, !552, !565, !572, !581}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !329, file: !6, line: 395, baseType: !200, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !329, file: !6, line: 395, baseType: !243, size: 64, offset: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "progress", scope: !329, file: !6, line: 395, baseType: !305, size: 64, offset: 128)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "is_decompressor", scope: !329, file: !6, line: 395, baseType: !191, size: 32, offset: 192)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "global_state", scope: !329, file: !6, line: 395, baseType: !176, size: 32, offset: 224)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !329, file: !6, line: 398, baseType: !337, size: 64, offset: 256)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_source_mgr", file: !6, line: 700, size: 448, elements: !339)
!339 = !{!340, !344, !345, !346, !350, !354, !358}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "next_input_byte", scope: !338, file: !6, line: 701, baseType: !341, size: 64)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !343)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "JOCTET", file: !166, line: 110, baseType: !185)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_in_buffer", scope: !338, file: !6, line: 702, baseType: !250, size: 64, offset: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "init_source", scope: !338, file: !6, line: 704, baseType: !324, size: 64, offset: 128)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "fill_input_buffer", scope: !338, file: !6, line: 705, baseType: !347, size: 64, offset: 192)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = !DISubroutineType(types: !349)
!349 = !{!191, !327}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "skip_input_data", scope: !338, file: !6, line: 706, baseType: !351, size: 64, offset: 256)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = !DISubroutineType(types: !353)
!353 = !{null, !327, !167}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "resync_to_restart", scope: !338, file: !6, line: 707, baseType: !355, size: 64, offset: 320)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = !DISubroutineType(types: !357)
!357 = !{!191, !327, !176}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "term_source", scope: !338, file: !6, line: 708, baseType: !324, size: 64, offset: 384)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "image_width", scope: !329, file: !6, line: 403, baseType: !263, size: 32, offset: 320)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "image_height", scope: !329, file: !6, line: 404, baseType: !263, size: 32, offset: 352)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "num_components", scope: !329, file: !6, line: 405, baseType: !176, size: 32, offset: 384)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "jpeg_color_space", scope: !329, file: !6, line: 406, baseType: !363, size: 32, offset: 416)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_COLOR_SPACE", file: !6, line: 201, baseType: !5)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "out_color_space", scope: !329, file: !6, line: 413, baseType: !363, size: 32, offset: 448)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "scale_num", scope: !329, file: !6, line: 415, baseType: !7, size: 32, offset: 480)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "scale_denom", scope: !329, file: !6, line: 415, baseType: !7, size: 32, offset: 512)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "output_gamma", scope: !329, file: !6, line: 417, baseType: !368, size: 64, offset: 576)
!368 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "buffered_image", scope: !329, file: !6, line: 419, baseType: !191, size: 32, offset: 640)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "raw_data_out", scope: !329, file: !6, line: 420, baseType: !191, size: 32, offset: 672)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "dct_method", scope: !329, file: !6, line: 422, baseType: !372, size: 32, offset: 704)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_DCT_METHOD", file: !6, line: 209, baseType: !15)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "do_fancy_upsampling", scope: !329, file: !6, line: 423, baseType: !191, size: 32, offset: 736)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "do_block_smoothing", scope: !329, file: !6, line: 424, baseType: !191, size: 32, offset: 768)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "quantize_colors", scope: !329, file: !6, line: 426, baseType: !191, size: 32, offset: 800)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "dither_mode", scope: !329, file: !6, line: 428, baseType: !377, size: 32, offset: 832)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_DITHER_MODE", file: !6, line: 224, baseType: !20)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "two_pass_quantize", scope: !329, file: !6, line: 429, baseType: !191, size: 32, offset: 864)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "desired_number_of_colors", scope: !329, file: !6, line: 430, baseType: !176, size: 32, offset: 896)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "enable_1pass_quant", scope: !329, file: !6, line: 432, baseType: !191, size: 32, offset: 928)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "enable_external_quant", scope: !329, file: !6, line: 433, baseType: !191, size: 32, offset: 960)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "enable_2pass_quant", scope: !329, file: !6, line: 434, baseType: !191, size: 32, offset: 992)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "output_width", scope: !329, file: !6, line: 442, baseType: !263, size: 32, offset: 1024)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "output_height", scope: !329, file: !6, line: 443, baseType: !263, size: 32, offset: 1056)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "out_color_components", scope: !329, file: !6, line: 444, baseType: !176, size: 32, offset: 1088)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "output_components", scope: !329, file: !6, line: 445, baseType: !176, size: 32, offset: 1120)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "rec_outbuf_height", scope: !329, file: !6, line: 449, baseType: !176, size: 32, offset: 1152)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "actual_number_of_colors", scope: !329, file: !6, line: 461, baseType: !176, size: 32, offset: 1184)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "colormap", scope: !329, file: !6, line: 462, baseType: !258, size: 64, offset: 1216)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "output_scanline", scope: !329, file: !6, line: 472, baseType: !263, size: 32, offset: 1280)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "input_scan_number", scope: !329, file: !6, line: 477, baseType: !176, size: 32, offset: 1312)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "input_iMCU_row", scope: !329, file: !6, line: 478, baseType: !263, size: 32, offset: 1344)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "output_scan_number", scope: !329, file: !6, line: 484, baseType: !176, size: 32, offset: 1376)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "output_iMCU_row", scope: !329, file: !6, line: 485, baseType: !263, size: 32, offset: 1408)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "coef_bits", scope: !329, file: !6, line: 494, baseType: !396, size: 64, offset: 1472)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 2048, elements: !276)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "quant_tbl_ptrs", scope: !329, file: !6, line: 505, baseType: !399, size: 256, offset: 1536)
!399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !400, size: 256, elements: !409)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "JQUANT_TBL", file: !6, line: 95, baseType: !402)
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 83, size: 1056, elements: !403)
!403 = !{!404, !408}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "quantval", scope: !402, file: !6, line: 88, baseType: !405, size: 1024)
!405 = !DICompositeType(tag: DW_TAG_array_type, baseType: !406, size: 1024, elements: !276)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT16", file: !166, line: 147, baseType: !407)
!407 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "sent_table", scope: !402, file: !6, line: 94, baseType: !191, size: 32, offset: 1024)
!409 = !{!410}
!410 = !DISubrange(count: 4)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "dc_huff_tbl_ptrs", scope: !329, file: !6, line: 508, baseType: !412, size: 256, offset: 1792)
!412 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 256, elements: !409)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "ac_huff_tbl_ptrs", scope: !329, file: !6, line: 509, baseType: !412, size: 256, offset: 2048)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "data_precision", scope: !329, file: !6, line: 516, baseType: !176, size: 32, offset: 2304)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "comp_info", scope: !329, file: !6, line: 518, baseType: !416, size: 64, offset: 2368)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "jpeg_component_info", file: !6, line: 179, baseType: !418)
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 116, size: 768, elements: !419)
!419 = !{!420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "component_id", scope: !418, file: !6, line: 120, baseType: !176, size: 32)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "component_index", scope: !418, file: !6, line: 121, baseType: !176, size: 32, offset: 32)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "h_samp_factor", scope: !418, file: !6, line: 122, baseType: !176, size: 32, offset: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "v_samp_factor", scope: !418, file: !6, line: 123, baseType: !176, size: 32, offset: 96)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "quant_tbl_no", scope: !418, file: !6, line: 124, baseType: !176, size: 32, offset: 128)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "dc_tbl_no", scope: !418, file: !6, line: 129, baseType: !176, size: 32, offset: 160)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tbl_no", scope: !418, file: !6, line: 130, baseType: !176, size: 32, offset: 192)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "width_in_blocks", scope: !418, file: !6, line: 139, baseType: !263, size: 32, offset: 224)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "height_in_blocks", scope: !418, file: !6, line: 140, baseType: !263, size: 32, offset: 256)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "DCT_scaled_size", scope: !418, file: !6, line: 147, baseType: !176, size: 32, offset: 288)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "downsampled_width", scope: !418, file: !6, line: 154, baseType: !263, size: 32, offset: 320)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "downsampled_height", scope: !418, file: !6, line: 155, baseType: !263, size: 32, offset: 352)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "component_needed", scope: !418, file: !6, line: 160, baseType: !191, size: 32, offset: 384)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_width", scope: !418, file: !6, line: 164, baseType: !176, size: 32, offset: 416)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_height", scope: !418, file: !6, line: 165, baseType: !176, size: 32, offset: 448)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_blocks", scope: !418, file: !6, line: 166, baseType: !176, size: 32, offset: 480)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_sample_width", scope: !418, file: !6, line: 167, baseType: !176, size: 32, offset: 512)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "last_col_width", scope: !418, file: !6, line: 168, baseType: !176, size: 32, offset: 544)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "last_row_height", scope: !418, file: !6, line: 169, baseType: !176, size: 32, offset: 576)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "quant_table", scope: !418, file: !6, line: 175, baseType: !400, size: 64, offset: 640)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "dct_table", scope: !418, file: !6, line: 178, baseType: !157, size: 64, offset: 704)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "progressive_mode", scope: !329, file: !6, line: 521, baseType: !191, size: 32, offset: 2432)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "arith_code", scope: !329, file: !6, line: 522, baseType: !191, size: 32, offset: 2464)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "arith_dc_L", scope: !329, file: !6, line: 524, baseType: !444, size: 128, offset: 2496)
!444 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 128, elements: !445)
!445 = !{!446}
!446 = !DISubrange(count: 16)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "arith_dc_U", scope: !329, file: !6, line: 525, baseType: !444, size: 128, offset: 2624)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "arith_ac_K", scope: !329, file: !6, line: 526, baseType: !444, size: 128, offset: 2752)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "restart_interval", scope: !329, file: !6, line: 528, baseType: !7, size: 32, offset: 2880)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "saw_JFIF_marker", scope: !329, file: !6, line: 533, baseType: !191, size: 32, offset: 2912)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "density_unit", scope: !329, file: !6, line: 535, baseType: !184, size: 8, offset: 2944)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "X_density", scope: !329, file: !6, line: 536, baseType: !406, size: 16, offset: 2960)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "Y_density", scope: !329, file: !6, line: 537, baseType: !406, size: 16, offset: 2976)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "saw_Adobe_marker", scope: !329, file: !6, line: 538, baseType: !191, size: 32, offset: 3008)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "Adobe_transform", scope: !329, file: !6, line: 539, baseType: !184, size: 8, offset: 3040)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "CCIR601_sampling", scope: !329, file: !6, line: 541, baseType: !191, size: 32, offset: 3072)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "max_h_samp_factor", scope: !329, file: !6, line: 550, baseType: !176, size: 32, offset: 3104)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "max_v_samp_factor", scope: !329, file: !6, line: 551, baseType: !176, size: 32, offset: 3136)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "min_DCT_scaled_size", scope: !329, file: !6, line: 553, baseType: !176, size: 32, offset: 3168)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "total_iMCU_rows", scope: !329, file: !6, line: 555, baseType: !263, size: 32, offset: 3200)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "sample_range_limit", scope: !329, file: !6, line: 564, baseType: !261, size: 64, offset: 3264)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "comps_in_scan", scope: !329, file: !6, line: 571, baseType: !176, size: 32, offset: 3328)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "cur_comp_info", scope: !329, file: !6, line: 572, baseType: !464, size: 256, offset: 3392)
!464 = !DICompositeType(tag: DW_TAG_array_type, baseType: !416, size: 256, elements: !409)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "MCUs_per_row", scope: !329, file: !6, line: 575, baseType: !263, size: 32, offset: 3648)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_rows_in_scan", scope: !329, file: !6, line: 576, baseType: !263, size: 32, offset: 3680)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "blocks_in_MCU", scope: !329, file: !6, line: 578, baseType: !176, size: 32, offset: 3712)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_membership", scope: !329, file: !6, line: 579, baseType: !469, size: 320, offset: 3744)
!469 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 320, elements: !470)
!470 = !{!471}
!471 = !DISubrange(count: 10)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "Ss", scope: !329, file: !6, line: 583, baseType: !176, size: 32, offset: 4064)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "Se", scope: !329, file: !6, line: 583, baseType: !176, size: 32, offset: 4096)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "Ah", scope: !329, file: !6, line: 583, baseType: !176, size: 32, offset: 4128)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "Al", scope: !329, file: !6, line: 583, baseType: !176, size: 32, offset: 4160)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "unread_marker", scope: !329, file: !6, line: 589, baseType: !176, size: 32, offset: 4192)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !329, file: !6, line: 594, baseType: !478, size: 64, offset: 4224)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_decomp_master", file: !26, line: 136, size: 192, elements: !480)
!480 = !{!481, !482, !483}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_for_output_pass", scope: !479, file: !26, line: 137, baseType: !324, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "finish_output_pass", scope: !479, file: !26, line: 138, baseType: !324, size: 64, offset: 64)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "is_dummy_pass", scope: !479, file: !26, line: 141, baseType: !191, size: 32, offset: 128)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "main", scope: !329, file: !6, line: 595, baseType: !485, size: 64, offset: 4288)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_d_main_controller", file: !26, line: 157, size: 128, elements: !487)
!487 = !{!488, !493}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !486, file: !26, line: 158, baseType: !489, size: 64)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = !DISubroutineType(types: !491)
!491 = !{null, !327, !492}
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_BUF_MODE", file: !26, line: 22, baseType: !25)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "process_data", scope: !486, file: !26, line: 159, baseType: !494, size: 64, offset: 64)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = !DISubroutineType(types: !496)
!496 = !{null, !327, !258, !497, !263}
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "coef", scope: !329, file: !6, line: 596, baseType: !499, size: 64, offset: 4352)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_d_coef_controller", file: !26, line: 165, size: 320, elements: !501)
!501 = !{!502, !503, !507, !508, !514}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "start_input_pass", scope: !500, file: !26, line: 166, baseType: !324, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "consume_data", scope: !500, file: !26, line: 167, baseType: !504, size: 64, offset: 64)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DISubroutineType(types: !506)
!506 = !{!176, !327}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "start_output_pass", scope: !500, file: !26, line: 168, baseType: !324, size: 64, offset: 128)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "decompress_data", scope: !500, file: !26, line: 169, baseType: !509, size: 64, offset: 192)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = !DISubroutineType(types: !511)
!511 = !{!176, !327, !512}
!512 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPIMAGE", file: !6, line: 68, baseType: !513)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "coef_arrays", scope: !500, file: !26, line: 172, baseType: !515, size: 64, offset: 256)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "post", scope: !329, file: !6, line: 597, baseType: !517, size: 64, offset: 4416)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_d_post_controller", file: !26, line: 176, size: 128, elements: !519)
!519 = !{!520, !521}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !518, file: !26, line: 177, baseType: !489, size: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "post_process_data", scope: !518, file: !26, line: 178, baseType: !522, size: 64, offset: 64)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = !DISubroutineType(types: !524)
!524 = !{null, !327, !512, !497, !263, !258, !497, !263}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "inputctl", scope: !329, file: !6, line: 598, baseType: !526, size: 64, offset: 4480)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_input_controller", file: !26, line: 145, size: 320, elements: !528)
!528 = !{!529, !530, !531, !532, !533, !534}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "consume_input", scope: !527, file: !26, line: 146, baseType: !504, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "reset_input_controller", scope: !527, file: !26, line: 147, baseType: !324, size: 64, offset: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "start_input_pass", scope: !527, file: !26, line: 148, baseType: !324, size: 64, offset: 128)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "finish_input_pass", scope: !527, file: !26, line: 149, baseType: !324, size: 64, offset: 192)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "has_multiple_scans", scope: !527, file: !26, line: 152, baseType: !191, size: 32, offset: 256)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "eoi_reached", scope: !527, file: !26, line: 153, baseType: !191, size: 32, offset: 288)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "marker", scope: !329, file: !6, line: 599, baseType: !536, size: 64, offset: 4544)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_marker_reader", file: !26, line: 188, size: 1408, elements: !538)
!538 = !{!539, !540, !541, !543, !544, !546, !547, !548, !549}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "reset_marker_reader", scope: !537, file: !26, line: 189, baseType: !324, size: 64)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "read_markers", scope: !537, file: !26, line: 194, baseType: !504, size: 64, offset: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "read_restart_marker", scope: !537, file: !26, line: 196, baseType: !542, size: 64, offset: 128)
!542 = !DIDerivedType(tag: DW_TAG_typedef, name: "jpeg_marker_parser_method", file: !6, line: 781, baseType: !347)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "process_COM", scope: !537, file: !26, line: 198, baseType: !542, size: 64, offset: 192)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "process_APPn", scope: !537, file: !26, line: 199, baseType: !545, size: 1024, offset: 256)
!545 = !DICompositeType(tag: DW_TAG_array_type, baseType: !542, size: 1024, elements: !445)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "saw_SOI", scope: !537, file: !26, line: 204, baseType: !191, size: 32, offset: 1280)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "saw_SOF", scope: !537, file: !26, line: 205, baseType: !191, size: 32, offset: 1312)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "next_restart_num", scope: !537, file: !26, line: 206, baseType: !176, size: 32, offset: 1344)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "discarded_bytes", scope: !537, file: !26, line: 207, baseType: !7, size: 32, offset: 1376)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "entropy", scope: !329, file: !6, line: 600, baseType: !551, size: 64, offset: 4608)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "idct", scope: !329, file: !6, line: 601, baseType: !553, size: 64, offset: 4672)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_inverse_dct", file: !26, line: 223, size: 704, elements: !555)
!555 = !{!556, !557}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !554, file: !26, line: 224, baseType: !324, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "inverse_DCT", scope: !554, file: !26, line: 226, baseType: !558, size: 640, offset: 64)
!558 = !DICompositeType(tag: DW_TAG_array_type, baseType: !559, size: 640, elements: !470)
!559 = !DIDerivedType(tag: DW_TAG_typedef, name: "inverse_DCT_method_ptr", file: !26, line: 218, baseType: !560)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = !DISubroutineType(types: !562)
!562 = !{null, !327, !416, !563, !258, !263}
!563 = !DIDerivedType(tag: DW_TAG_typedef, name: "JCOEFPTR", file: !6, line: 75, baseType: !564)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "upsample", scope: !329, file: !6, line: 602, baseType: !566, size: 64, offset: 4736)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_upsampler", file: !26, line: 230, size: 192, elements: !568)
!568 = !{!569, !570, !571}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !567, file: !26, line: 231, baseType: !324, size: 64)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "upsample", scope: !567, file: !26, line: 232, baseType: !522, size: 64, offset: 64)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "need_context_rows", scope: !567, file: !26, line: 240, baseType: !191, size: 32, offset: 128)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "cconvert", scope: !329, file: !6, line: 603, baseType: !573, size: 64, offset: 4800)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_color_deconverter", file: !26, line: 244, size: 128, elements: !575)
!575 = !{!576, !577}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !574, file: !26, line: 245, baseType: !324, size: 64)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "color_convert", scope: !574, file: !26, line: 246, baseType: !578, size: 64, offset: 64)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = !DISubroutineType(types: !580)
!580 = !{null, !327, !512, !263, !258, !176}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "cquantize", scope: !329, file: !6, line: 604, baseType: !582, size: 64, offset: 4864)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_color_quantizer", file: !26, line: 252, size: 256, elements: !584)
!584 = !{!585, !589, !593, !594}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !583, file: !26, line: 253, baseType: !586, size: 64)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = !DISubroutineType(types: !588)
!588 = !{null, !327, !191}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "color_quantize", scope: !583, file: !26, line: 254, baseType: !590, size: 64, offset: 64)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = !DISubroutineType(types: !592)
!592 = !{null, !327, !258, !258, !176}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "finish_pass", scope: !583, file: !26, line: 257, baseType: !324, size: 64, offset: 128)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "new_color_map", scope: !583, file: !26, line: 258, baseType: !324, size: 64, offset: 192)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "decode_mcu", scope: !321, file: !26, line: 213, baseType: !596, size: 64, offset: 64)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = !DISubroutineType(types: !598)
!598 = !{!191, !327, !269}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "bitstate", scope: !318, file: !3, line: 58, baseType: !600, size: 128, offset: 128)
!600 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitread_perm_state", file: !160, line: 82, baseType: !601)
!601 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !160, line: 78, size: 128, elements: !602)
!602 = !{!603, !605, !606}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "get_buffer", scope: !601, file: !160, line: 79, baseType: !604, size: 64)
!604 = !DIDerivedType(tag: DW_TAG_typedef, name: "bit_buf_type", file: !160, line: 68, baseType: !165)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "bits_left", scope: !601, file: !160, line: 80, baseType: !176, size: 32, offset: 64)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "printed_eod", scope: !601, file: !160, line: 81, baseType: !191, size: 32, offset: 96)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "saved", scope: !318, file: !3, line: 59, baseType: !608, size: 128, offset: 256)
!608 = !DIDerivedType(tag: DW_TAG_typedef, name: "savable_state", file: !3, line: 32, baseType: !609)
!609 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 30, size: 128, elements: !610)
!610 = !{!611}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "last_dc_val", scope: !609, file: !3, line: 31, baseType: !612, size: 128)
!612 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 128, elements: !409)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "restarts_to_go", scope: !318, file: !3, line: 62, baseType: !7, size: 32, offset: 384)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "dc_derived_tbls", scope: !318, file: !3, line: 65, baseType: !615, size: 256, offset: 448)
!615 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 256, elements: !409)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "ac_derived_tbls", scope: !318, file: !3, line: 66, baseType: !615, size: 256, offset: 704)
!617 = !{!0, !618}
!618 = !DIGlobalVariableExpression(var: !619, expr: !DIExpression())
!619 = distinct !DIGlobalVariable(name: "extend_offset", scope: !2, file: !3, line: 378, type: !620, isLocal: true, isDefinition: true)
!620 = !DICompositeType(tag: DW_TAG_array_type, baseType: !621, size: 512, elements: !445)
!621 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !176)
!622 = !{i32 7, !"Dwarf Version", i32 5}
!623 = !{i32 2, !"Debug Info Version", i32 3}
!624 = !{i32 1, !"wchar_size", i32 4}
!625 = !{i32 8, !"PIC Level", i32 2}
!626 = !{i32 7, !"PIE Level", i32 2}
!627 = !{i32 7, !"uwtable", i32 2}
!628 = !{i32 7, !"frame-pointer", i32 2}
!629 = !{!"clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)"}
!630 = distinct !DISubprogram(name: "jpeg_make_d_derived_tbl", scope: !3, file: !3, line: 128, type: !631, scopeLine: 130, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !634)
!631 = !DISubroutineType(types: !632)
!632 = !{null, !327, !178, !633}
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!634 = !{}
!635 = !DILocalVariable(name: "cinfo", arg: 1, scope: !630, file: !3, line: 128, type: !327)
!636 = !DILocation(line: 128, column: 43, scope: !630)
!637 = !DILocalVariable(name: "htbl", arg: 2, scope: !630, file: !3, line: 128, type: !178)
!638 = !DILocation(line: 128, column: 62, scope: !630)
!639 = !DILocalVariable(name: "pdtbl", arg: 3, scope: !630, file: !3, line: 129, type: !633)
!640 = !DILocation(line: 129, column: 22, scope: !630)
!641 = !DILocalVariable(name: "dtbl", scope: !630, file: !3, line: 131, type: !158)
!642 = !DILocation(line: 131, column: 18, scope: !630)
!643 = !DILocalVariable(name: "p", scope: !630, file: !3, line: 132, type: !176)
!644 = !DILocation(line: 132, column: 7, scope: !630)
!645 = !DILocalVariable(name: "i", scope: !630, file: !3, line: 132, type: !176)
!646 = !DILocation(line: 132, column: 10, scope: !630)
!647 = !DILocalVariable(name: "l", scope: !630, file: !3, line: 132, type: !176)
!648 = !DILocation(line: 132, column: 13, scope: !630)
!649 = !DILocalVariable(name: "si", scope: !630, file: !3, line: 132, type: !176)
!650 = !DILocation(line: 132, column: 16, scope: !630)
!651 = !DILocalVariable(name: "lookbits", scope: !630, file: !3, line: 133, type: !176)
!652 = !DILocation(line: 133, column: 7, scope: !630)
!653 = !DILocalVariable(name: "ctr", scope: !630, file: !3, line: 133, type: !176)
!654 = !DILocation(line: 133, column: 17, scope: !630)
!655 = !DILocalVariable(name: "huffsize", scope: !630, file: !3, line: 134, type: !656)
!656 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 2056, elements: !657)
!657 = !{!658}
!658 = !DISubrange(count: 257)
!659 = !DILocation(line: 134, column: 8, scope: !630)
!660 = !DILocalVariable(name: "huffcode", scope: !630, file: !3, line: 135, type: !661)
!661 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 8224, elements: !657)
!662 = !DILocation(line: 135, column: 16, scope: !630)
!663 = !DILocalVariable(name: "code", scope: !630, file: !3, line: 136, type: !7)
!664 = !DILocation(line: 136, column: 16, scope: !630)
!665 = !DILocation(line: 139, column: 8, scope: !666)
!666 = distinct !DILexicalBlock(scope: !630, file: !3, line: 139, column: 7)
!667 = !DILocation(line: 139, column: 7, scope: !666)
!668 = !DILocation(line: 139, column: 14, scope: !666)
!669 = !DILocation(line: 141, column: 9, scope: !666)
!670 = !DILocation(line: 141, column: 16, scope: !666)
!671 = !DILocation(line: 141, column: 21, scope: !666)
!672 = !DILocation(line: 141, column: 50, scope: !666)
!673 = !DILocation(line: 141, column: 7, scope: !666)
!674 = !DILocation(line: 140, column: 6, scope: !666)
!675 = !DILocation(line: 140, column: 12, scope: !666)
!676 = !DILocation(line: 140, column: 5, scope: !666)
!677 = !DILocation(line: 143, column: 11, scope: !630)
!678 = !DILocation(line: 143, column: 10, scope: !630)
!679 = !DILocation(line: 143, column: 8, scope: !630)
!680 = !DILocation(line: 144, column: 15, scope: !630)
!681 = !DILocation(line: 144, column: 3, scope: !630)
!682 = !DILocation(line: 144, column: 9, scope: !630)
!683 = !DILocation(line: 144, column: 13, scope: !630)
!684 = !DILocation(line: 149, column: 5, scope: !630)
!685 = !DILocation(line: 150, column: 10, scope: !686)
!686 = distinct !DILexicalBlock(scope: !630, file: !3, line: 150, column: 3)
!687 = !DILocation(line: 150, column: 8, scope: !686)
!688 = !DILocation(line: 150, column: 15, scope: !689)
!689 = distinct !DILexicalBlock(scope: !686, file: !3, line: 150, column: 3)
!690 = !DILocation(line: 150, column: 17, scope: !689)
!691 = !DILocation(line: 150, column: 3, scope: !686)
!692 = !DILocation(line: 151, column: 12, scope: !693)
!693 = distinct !DILexicalBlock(scope: !694, file: !3, line: 151, column: 5)
!694 = distinct !DILexicalBlock(scope: !689, file: !3, line: 150, column: 29)
!695 = !DILocation(line: 151, column: 10, scope: !693)
!696 = !DILocation(line: 151, column: 17, scope: !697)
!697 = distinct !DILexicalBlock(scope: !693, file: !3, line: 151, column: 5)
!698 = !DILocation(line: 151, column: 28, scope: !697)
!699 = !DILocation(line: 151, column: 34, scope: !697)
!700 = !DILocation(line: 151, column: 39, scope: !697)
!701 = !DILocation(line: 151, column: 22, scope: !697)
!702 = !DILocation(line: 151, column: 19, scope: !697)
!703 = !DILocation(line: 151, column: 5, scope: !693)
!704 = !DILocation(line: 152, column: 30, scope: !697)
!705 = !DILocation(line: 152, column: 23, scope: !697)
!706 = !DILocation(line: 152, column: 17, scope: !697)
!707 = !DILocation(line: 152, column: 7, scope: !697)
!708 = !DILocation(line: 152, column: 21, scope: !697)
!709 = !DILocation(line: 151, column: 44, scope: !697)
!710 = !DILocation(line: 151, column: 5, scope: !697)
!711 = distinct !{!711, !703, !712, !713}
!712 = !DILocation(line: 152, column: 30, scope: !693)
!713 = !{!"llvm.loop.mustprogress"}
!714 = !DILocation(line: 153, column: 3, scope: !694)
!715 = !DILocation(line: 150, column: 25, scope: !689)
!716 = !DILocation(line: 150, column: 3, scope: !689)
!717 = distinct !{!717, !691, !718, !713}
!718 = !DILocation(line: 153, column: 3, scope: !686)
!719 = !DILocation(line: 154, column: 12, scope: !630)
!720 = !DILocation(line: 154, column: 3, scope: !630)
!721 = !DILocation(line: 154, column: 15, scope: !630)
!722 = !DILocation(line: 159, column: 8, scope: !630)
!723 = !DILocation(line: 160, column: 8, scope: !630)
!724 = !DILocation(line: 160, column: 6, scope: !630)
!725 = !DILocation(line: 161, column: 5, scope: !630)
!726 = !DILocation(line: 162, column: 3, scope: !630)
!727 = !DILocation(line: 162, column: 19, scope: !630)
!728 = !DILocation(line: 162, column: 10, scope: !630)
!729 = !DILocation(line: 163, column: 5, scope: !730)
!730 = distinct !DILexicalBlock(scope: !630, file: !3, line: 162, column: 23)
!731 = !DILocation(line: 163, column: 28, scope: !730)
!732 = !DILocation(line: 163, column: 19, scope: !730)
!733 = !DILocation(line: 163, column: 13, scope: !730)
!734 = !DILocation(line: 163, column: 35, scope: !730)
!735 = !DILocation(line: 163, column: 32, scope: !730)
!736 = !DILocation(line: 164, column: 23, scope: !737)
!737 = distinct !DILexicalBlock(scope: !730, file: !3, line: 163, column: 39)
!738 = !DILocation(line: 164, column: 17, scope: !737)
!739 = !DILocation(line: 164, column: 7, scope: !737)
!740 = !DILocation(line: 164, column: 21, scope: !737)
!741 = !DILocation(line: 165, column: 11, scope: !737)
!742 = distinct !{!742, !729, !743, !713}
!743 = !DILocation(line: 166, column: 5, scope: !730)
!744 = !DILocation(line: 167, column: 10, scope: !730)
!745 = !DILocation(line: 168, column: 7, scope: !730)
!746 = distinct !{!746, !726, !747, !713}
!747 = !DILocation(line: 169, column: 3, scope: !630)
!748 = !DILocation(line: 173, column: 5, scope: !630)
!749 = !DILocation(line: 174, column: 10, scope: !750)
!750 = distinct !DILexicalBlock(scope: !630, file: !3, line: 174, column: 3)
!751 = !DILocation(line: 174, column: 8, scope: !750)
!752 = !DILocation(line: 174, column: 15, scope: !753)
!753 = distinct !DILexicalBlock(scope: !750, file: !3, line: 174, column: 3)
!754 = !DILocation(line: 174, column: 17, scope: !753)
!755 = !DILocation(line: 174, column: 3, scope: !750)
!756 = !DILocation(line: 175, column: 9, scope: !757)
!757 = distinct !DILexicalBlock(scope: !758, file: !3, line: 175, column: 9)
!758 = distinct !DILexicalBlock(scope: !753, file: !3, line: 174, column: 29)
!759 = !DILocation(line: 175, column: 15, scope: !757)
!760 = !DILocation(line: 175, column: 20, scope: !757)
!761 = !DILocation(line: 176, column: 25, scope: !762)
!762 = distinct !DILexicalBlock(scope: !757, file: !3, line: 175, column: 24)
!763 = !DILocation(line: 176, column: 7, scope: !762)
!764 = !DILocation(line: 176, column: 13, scope: !762)
!765 = !DILocation(line: 176, column: 20, scope: !762)
!766 = !DILocation(line: 176, column: 23, scope: !762)
!767 = !DILocation(line: 177, column: 35, scope: !762)
!768 = !DILocation(line: 177, column: 26, scope: !762)
!769 = !DILocation(line: 177, column: 7, scope: !762)
!770 = !DILocation(line: 177, column: 13, scope: !762)
!771 = !DILocation(line: 177, column: 21, scope: !762)
!772 = !DILocation(line: 177, column: 24, scope: !762)
!773 = !DILocation(line: 178, column: 12, scope: !762)
!774 = !DILocation(line: 178, column: 18, scope: !762)
!775 = !DILocation(line: 178, column: 23, scope: !762)
!776 = !DILocation(line: 178, column: 9, scope: !762)
!777 = !DILocation(line: 179, column: 35, scope: !762)
!778 = !DILocation(line: 179, column: 36, scope: !762)
!779 = !DILocation(line: 179, column: 26, scope: !762)
!780 = !DILocation(line: 179, column: 7, scope: !762)
!781 = !DILocation(line: 179, column: 13, scope: !762)
!782 = !DILocation(line: 179, column: 21, scope: !762)
!783 = !DILocation(line: 179, column: 24, scope: !762)
!784 = !DILocation(line: 180, column: 5, scope: !762)
!785 = !DILocation(line: 181, column: 7, scope: !786)
!786 = distinct !DILexicalBlock(scope: !757, file: !3, line: 180, column: 12)
!787 = !DILocation(line: 181, column: 13, scope: !786)
!788 = !DILocation(line: 181, column: 21, scope: !786)
!789 = !DILocation(line: 181, column: 24, scope: !786)
!790 = !DILocation(line: 183, column: 3, scope: !758)
!791 = !DILocation(line: 174, column: 25, scope: !753)
!792 = !DILocation(line: 174, column: 3, scope: !753)
!793 = distinct !{!793, !755, !794, !713}
!794 = !DILocation(line: 183, column: 3, scope: !750)
!795 = !DILocation(line: 184, column: 3, scope: !630)
!796 = !DILocation(line: 184, column: 9, scope: !630)
!797 = !DILocation(line: 184, column: 21, scope: !630)
!798 = !DILocation(line: 193, column: 3, scope: !630)
!799 = !DILocation(line: 195, column: 5, scope: !630)
!800 = !DILocation(line: 196, column: 10, scope: !801)
!801 = distinct !DILexicalBlock(scope: !630, file: !3, line: 196, column: 3)
!802 = !DILocation(line: 196, column: 8, scope: !801)
!803 = !DILocation(line: 196, column: 15, scope: !804)
!804 = distinct !DILexicalBlock(scope: !801, file: !3, line: 196, column: 3)
!805 = !DILocation(line: 196, column: 17, scope: !804)
!806 = !DILocation(line: 196, column: 3, scope: !801)
!807 = !DILocation(line: 197, column: 12, scope: !808)
!808 = distinct !DILexicalBlock(scope: !809, file: !3, line: 197, column: 5)
!809 = distinct !DILexicalBlock(scope: !804, file: !3, line: 196, column: 41)
!810 = !DILocation(line: 197, column: 10, scope: !808)
!811 = !DILocation(line: 197, column: 17, scope: !812)
!812 = distinct !DILexicalBlock(scope: !808, file: !3, line: 197, column: 5)
!813 = !DILocation(line: 197, column: 28, scope: !812)
!814 = !DILocation(line: 197, column: 34, scope: !812)
!815 = !DILocation(line: 197, column: 39, scope: !812)
!816 = !DILocation(line: 197, column: 22, scope: !812)
!817 = !DILocation(line: 197, column: 19, scope: !812)
!818 = !DILocation(line: 197, column: 5, scope: !808)
!819 = !DILocation(line: 200, column: 27, scope: !820)
!820 = distinct !DILexicalBlock(scope: !812, file: !3, line: 197, column: 53)
!821 = !DILocation(line: 200, column: 18, scope: !820)
!822 = !DILocation(line: 200, column: 49, scope: !820)
!823 = !DILocation(line: 200, column: 48, scope: !820)
!824 = !DILocation(line: 200, column: 30, scope: !820)
!825 = !DILocation(line: 200, column: 16, scope: !820)
!826 = !DILocation(line: 201, column: 39, scope: !827)
!827 = distinct !DILexicalBlock(scope: !820, file: !3, line: 201, column: 7)
!828 = !DILocation(line: 201, column: 38, scope: !827)
!829 = !DILocation(line: 201, column: 20, scope: !827)
!830 = !DILocation(line: 201, column: 16, scope: !827)
!831 = !DILocation(line: 201, column: 12, scope: !827)
!832 = !DILocation(line: 201, column: 43, scope: !833)
!833 = distinct !DILexicalBlock(scope: !827, file: !3, line: 201, column: 7)
!834 = !DILocation(line: 201, column: 47, scope: !833)
!835 = !DILocation(line: 201, column: 7, scope: !827)
!836 = !DILocation(line: 202, column: 31, scope: !837)
!837 = distinct !DILexicalBlock(scope: !833, file: !3, line: 201, column: 59)
!838 = !DILocation(line: 202, column: 2, scope: !837)
!839 = !DILocation(line: 202, column: 8, scope: !837)
!840 = !DILocation(line: 202, column: 19, scope: !837)
!841 = !DILocation(line: 202, column: 29, scope: !837)
!842 = !DILocation(line: 203, column: 29, scope: !837)
!843 = !DILocation(line: 203, column: 35, scope: !837)
!844 = !DILocation(line: 203, column: 43, scope: !837)
!845 = !DILocation(line: 203, column: 2, scope: !837)
!846 = !DILocation(line: 203, column: 8, scope: !837)
!847 = !DILocation(line: 203, column: 17, scope: !837)
!848 = !DILocation(line: 203, column: 27, scope: !837)
!849 = !DILocation(line: 204, column: 10, scope: !837)
!850 = !DILocation(line: 205, column: 7, scope: !837)
!851 = !DILocation(line: 201, column: 55, scope: !833)
!852 = !DILocation(line: 201, column: 7, scope: !833)
!853 = distinct !{!853, !835, !854, !713}
!854 = !DILocation(line: 205, column: 7, scope: !827)
!855 = !DILocation(line: 206, column: 5, scope: !820)
!856 = !DILocation(line: 197, column: 44, scope: !812)
!857 = !DILocation(line: 197, column: 49, scope: !812)
!858 = !DILocation(line: 197, column: 5, scope: !812)
!859 = distinct !{!859, !818, !860, !713}
!860 = !DILocation(line: 206, column: 5, scope: !808)
!861 = !DILocation(line: 207, column: 3, scope: !809)
!862 = !DILocation(line: 196, column: 37, scope: !804)
!863 = !DILocation(line: 196, column: 3, scope: !804)
!864 = distinct !{!864, !806, !865, !713}
!865 = !DILocation(line: 207, column: 3, scope: !801)
!866 = !DILocation(line: 208, column: 1, scope: !630)
!867 = distinct !DISubprogram(name: "jpeg_fill_bit_buffer", scope: !3, file: !3, line: 234, type: !868, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !634)
!868 = !DISubroutineType(types: !869)
!869 = !{!191, !870, !604, !176, !176}
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitread_working_state", file: !160, line: 97, baseType: !872)
!872 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !160, line: 84, size: 448, elements: !873)
!873 = !{!874, !875, !876, !877, !878, !879, !880}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "next_input_byte", scope: !872, file: !160, line: 86, baseType: !341, size: 64)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_in_buffer", scope: !872, file: !160, line: 87, baseType: !250, size: 64, offset: 64)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "unread_marker", scope: !872, file: !160, line: 88, baseType: !176, size: 32, offset: 128)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "get_buffer", scope: !872, file: !160, line: 92, baseType: !604, size: 64, offset: 192)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "bits_left", scope: !872, file: !160, line: 93, baseType: !176, size: 32, offset: 256)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "cinfo", scope: !872, file: !160, line: 95, baseType: !327, size: 64, offset: 320)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "printed_eod_ptr", scope: !872, file: !160, line: 96, baseType: !881, size: 64, offset: 384)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!882 = !DILocalVariable(name: "state", arg: 1, scope: !867, file: !3, line: 234, type: !870)
!883 = !DILocation(line: 234, column: 47, scope: !867)
!884 = !DILocalVariable(name: "get_buffer", arg: 2, scope: !867, file: !3, line: 235, type: !604)
!885 = !DILocation(line: 235, column: 31, scope: !867)
!886 = !DILocalVariable(name: "bits_left", arg: 3, scope: !867, file: !3, line: 235, type: !176)
!887 = !DILocation(line: 235, column: 56, scope: !867)
!888 = !DILocalVariable(name: "nbits", arg: 4, scope: !867, file: !3, line: 236, type: !176)
!889 = !DILocation(line: 236, column: 13, scope: !867)
!890 = !DILocalVariable(name: "next_input_byte", scope: !867, file: !3, line: 240, type: !341)
!891 = !DILocation(line: 240, column: 27, scope: !867)
!892 = !DILocation(line: 240, column: 45, scope: !867)
!893 = !DILocation(line: 240, column: 52, scope: !867)
!894 = !DILocalVariable(name: "bytes_in_buffer", scope: !867, file: !3, line: 241, type: !250)
!895 = !DILocation(line: 241, column: 19, scope: !867)
!896 = !DILocation(line: 241, column: 37, scope: !867)
!897 = !DILocation(line: 241, column: 44, scope: !867)
!898 = !DILocalVariable(name: "c", scope: !867, file: !3, line: 242, type: !176)
!899 = !DILocation(line: 242, column: 16, scope: !867)
!900 = !DILocation(line: 247, column: 3, scope: !867)
!901 = !DILocation(line: 247, column: 10, scope: !867)
!902 = !DILocation(line: 247, column: 20, scope: !867)
!903 = !DILocation(line: 249, column: 9, scope: !904)
!904 = distinct !DILexicalBlock(scope: !905, file: !3, line: 249, column: 9)
!905 = distinct !DILexicalBlock(scope: !867, file: !3, line: 247, column: 36)
!906 = !DILocation(line: 249, column: 16, scope: !904)
!907 = !DILocation(line: 249, column: 30, scope: !904)
!908 = !DILocation(line: 250, column: 7, scope: !904)
!909 = !DILocation(line: 252, column: 9, scope: !910)
!910 = distinct !DILexicalBlock(scope: !905, file: !3, line: 252, column: 9)
!911 = !DILocation(line: 252, column: 25, scope: !910)
!912 = !DILocation(line: 253, column: 15, scope: !913)
!913 = distinct !DILexicalBlock(scope: !914, file: !3, line: 253, column: 11)
!914 = distinct !DILexicalBlock(scope: !910, file: !3, line: 252, column: 31)
!915 = !DILocation(line: 253, column: 22, scope: !913)
!916 = !DILocation(line: 253, column: 29, scope: !913)
!917 = !DILocation(line: 253, column: 34, scope: !913)
!918 = !DILocation(line: 253, column: 54, scope: !913)
!919 = !DILocation(line: 253, column: 61, scope: !913)
!920 = !DILocation(line: 253, column: 13, scope: !913)
!921 = !DILocation(line: 253, column: 11, scope: !913)
!922 = !DILocation(line: 254, column: 2, scope: !913)
!923 = !DILocation(line: 255, column: 25, scope: !914)
!924 = !DILocation(line: 255, column: 32, scope: !914)
!925 = !DILocation(line: 255, column: 39, scope: !914)
!926 = !DILocation(line: 255, column: 44, scope: !914)
!927 = !DILocation(line: 255, column: 23, scope: !914)
!928 = !DILocation(line: 256, column: 25, scope: !914)
!929 = !DILocation(line: 256, column: 32, scope: !914)
!930 = !DILocation(line: 256, column: 39, scope: !914)
!931 = !DILocation(line: 256, column: 44, scope: !914)
!932 = !DILocation(line: 256, column: 23, scope: !914)
!933 = !DILocation(line: 257, column: 5, scope: !914)
!934 = !DILocation(line: 258, column: 20, scope: !905)
!935 = !DILocation(line: 259, column: 9, scope: !905)
!936 = !DILocation(line: 259, column: 7, scope: !905)
!937 = !DILocation(line: 262, column: 9, scope: !938)
!938 = distinct !DILexicalBlock(scope: !905, file: !3, line: 262, column: 9)
!939 = !DILocation(line: 262, column: 11, scope: !938)
!940 = !DILocation(line: 263, column: 7, scope: !941)
!941 = distinct !DILexicalBlock(scope: !938, file: !3, line: 262, column: 20)
!942 = !DILocation(line: 264, column: 6, scope: !943)
!943 = distinct !DILexicalBlock(scope: !944, file: !3, line: 264, column: 6)
!944 = distinct !DILexicalBlock(scope: !941, file: !3, line: 263, column: 10)
!945 = !DILocation(line: 264, column: 22, scope: !943)
!946 = !DILocation(line: 265, column: 12, scope: !947)
!947 = distinct !DILexicalBlock(scope: !948, file: !3, line: 265, column: 8)
!948 = distinct !DILexicalBlock(scope: !943, file: !3, line: 264, column: 28)
!949 = !DILocation(line: 265, column: 19, scope: !947)
!950 = !DILocation(line: 265, column: 26, scope: !947)
!951 = !DILocation(line: 265, column: 31, scope: !947)
!952 = !DILocation(line: 265, column: 51, scope: !947)
!953 = !DILocation(line: 265, column: 58, scope: !947)
!954 = !DILocation(line: 265, column: 10, scope: !947)
!955 = !DILocation(line: 265, column: 8, scope: !947)
!956 = !DILocation(line: 266, column: 6, scope: !947)
!957 = !DILocation(line: 267, column: 22, scope: !948)
!958 = !DILocation(line: 267, column: 29, scope: !948)
!959 = !DILocation(line: 267, column: 36, scope: !948)
!960 = !DILocation(line: 267, column: 41, scope: !948)
!961 = !DILocation(line: 267, column: 20, scope: !948)
!962 = !DILocation(line: 268, column: 22, scope: !948)
!963 = !DILocation(line: 268, column: 29, scope: !948)
!964 = !DILocation(line: 268, column: 36, scope: !948)
!965 = !DILocation(line: 268, column: 41, scope: !948)
!966 = !DILocation(line: 268, column: 20, scope: !948)
!967 = !DILocation(line: 269, column: 2, scope: !948)
!968 = !DILocation(line: 270, column: 17, scope: !944)
!969 = !DILocation(line: 271, column: 6, scope: !944)
!970 = !DILocation(line: 271, column: 4, scope: !944)
!971 = !DILocation(line: 272, column: 7, scope: !944)
!972 = !DILocation(line: 272, column: 16, scope: !941)
!973 = !DILocation(line: 272, column: 18, scope: !941)
!974 = distinct !{!974, !940, !975, !713}
!975 = !DILocation(line: 272, column: 25, scope: !941)
!976 = !DILocation(line: 274, column: 11, scope: !977)
!977 = distinct !DILexicalBlock(scope: !941, file: !3, line: 274, column: 11)
!978 = !DILocation(line: 274, column: 13, scope: !977)
!979 = !DILocation(line: 276, column: 4, scope: !980)
!980 = distinct !DILexicalBlock(scope: !977, file: !3, line: 274, column: 19)
!981 = !DILocation(line: 277, column: 7, scope: !980)
!982 = !DILocation(line: 280, column: 25, scope: !983)
!983 = distinct !DILexicalBlock(scope: !977, file: !3, line: 277, column: 14)
!984 = !DILocation(line: 280, column: 2, scope: !983)
!985 = !DILocation(line: 280, column: 9, scope: !983)
!986 = !DILocation(line: 280, column: 23, scope: !983)
!987 = !DILabel(scope: !983, name: "no_more_data", file: !3, line: 282)
!988 = !DILocation(line: 282, column: 7, scope: !983)
!989 = !DILocation(line: 285, column: 6, scope: !990)
!990 = distinct !DILexicalBlock(scope: !983, file: !3, line: 285, column: 6)
!991 = !DILocation(line: 285, column: 19, scope: !990)
!992 = !DILocation(line: 285, column: 16, scope: !990)
!993 = !DILocation(line: 286, column: 4, scope: !990)
!994 = !DILocation(line: 293, column: 10, scope: !995)
!995 = distinct !DILexicalBlock(scope: !983, file: !3, line: 293, column: 6)
!996 = !DILocation(line: 293, column: 17, scope: !995)
!997 = !DILocation(line: 293, column: 8, scope: !995)
!998 = !DILocation(line: 293, column: 6, scope: !995)
!999 = !DILocation(line: 294, column: 4, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !995, file: !3, line: 293, column: 35)
!1001 = !DILocation(line: 295, column: 6, scope: !1000)
!1002 = !DILocation(line: 295, column: 13, scope: !1000)
!1003 = !DILocation(line: 295, column: 30, scope: !1000)
!1004 = !DILocation(line: 296, column: 2, scope: !1000)
!1005 = !DILocation(line: 297, column: 4, scope: !983)
!1006 = !DILocation(line: 299, column: 5, scope: !941)
!1007 = !DILocation(line: 302, column: 19, scope: !905)
!1008 = !DILocation(line: 302, column: 30, scope: !905)
!1009 = !DILocation(line: 302, column: 38, scope: !905)
!1010 = !DILocation(line: 302, column: 36, scope: !905)
!1011 = !DILocation(line: 302, column: 16, scope: !905)
!1012 = !DILocation(line: 303, column: 15, scope: !905)
!1013 = distinct !{!1013, !900, !1014, !713}
!1014 = !DILocation(line: 304, column: 3, scope: !867)
!1015 = !DILocation(line: 307, column: 28, scope: !867)
!1016 = !DILocation(line: 307, column: 3, scope: !867)
!1017 = !DILocation(line: 307, column: 10, scope: !867)
!1018 = !DILocation(line: 307, column: 26, scope: !867)
!1019 = !DILocation(line: 308, column: 28, scope: !867)
!1020 = !DILocation(line: 308, column: 3, scope: !867)
!1021 = !DILocation(line: 308, column: 10, scope: !867)
!1022 = !DILocation(line: 308, column: 26, scope: !867)
!1023 = !DILocation(line: 309, column: 23, scope: !867)
!1024 = !DILocation(line: 309, column: 3, scope: !867)
!1025 = !DILocation(line: 309, column: 10, scope: !867)
!1026 = !DILocation(line: 309, column: 21, scope: !867)
!1027 = !DILocation(line: 310, column: 22, scope: !867)
!1028 = !DILocation(line: 310, column: 3, scope: !867)
!1029 = !DILocation(line: 310, column: 10, scope: !867)
!1030 = !DILocation(line: 310, column: 20, scope: !867)
!1031 = !DILocation(line: 312, column: 3, scope: !867)
!1032 = !DILocation(line: 313, column: 1, scope: !867)
!1033 = distinct !DISubprogram(name: "jpeg_huff_decode", scope: !3, file: !3, line: 322, type: !1034, scopeLine: 325, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !634)
!1034 = !DISubroutineType(types: !1035)
!1035 = !{!176, !870, !604, !176, !158, !176}
!1036 = !DILocalVariable(name: "state", arg: 1, scope: !1033, file: !3, line: 322, type: !870)
!1037 = !DILocation(line: 322, column: 43, scope: !1033)
!1038 = !DILocalVariable(name: "get_buffer", arg: 2, scope: !1033, file: !3, line: 323, type: !604)
!1039 = !DILocation(line: 323, column: 27, scope: !1033)
!1040 = !DILocalVariable(name: "bits_left", arg: 3, scope: !1033, file: !3, line: 323, type: !176)
!1041 = !DILocation(line: 323, column: 52, scope: !1033)
!1042 = !DILocalVariable(name: "htbl", arg: 4, scope: !1033, file: !3, line: 324, type: !158)
!1043 = !DILocation(line: 324, column: 21, scope: !1033)
!1044 = !DILocalVariable(name: "min_bits", arg: 5, scope: !1033, file: !3, line: 324, type: !176)
!1045 = !DILocation(line: 324, column: 31, scope: !1033)
!1046 = !DILocalVariable(name: "l", scope: !1033, file: !3, line: 326, type: !176)
!1047 = !DILocation(line: 326, column: 16, scope: !1033)
!1048 = !DILocation(line: 326, column: 20, scope: !1033)
!1049 = !DILocalVariable(name: "code", scope: !1033, file: !3, line: 327, type: !165)
!1050 = !DILocation(line: 327, column: 18, scope: !1033)
!1051 = !DILocation(line: 332, column: 3, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !1053, file: !3, line: 332, column: 3)
!1053 = distinct !DILexicalBlock(scope: !1033, file: !3, line: 332, column: 3)
!1054 = !DILocation(line: 332, column: 3, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !1056, file: !3, line: 332, column: 3)
!1056 = distinct !DILexicalBlock(scope: !1052, file: !3, line: 332, column: 3)
!1057 = !DILocation(line: 332, column: 3, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !1055, file: !3, line: 332, column: 3)
!1059 = !DILocation(line: 332, column: 3, scope: !1056)
!1060 = !DILocation(line: 333, column: 10, scope: !1033)
!1061 = !DILocation(line: 333, column: 8, scope: !1033)
!1062 = !DILocation(line: 338, column: 3, scope: !1033)
!1063 = !DILocation(line: 338, column: 10, scope: !1033)
!1064 = !DILocation(line: 338, column: 17, scope: !1033)
!1065 = !DILocation(line: 338, column: 23, scope: !1033)
!1066 = !DILocation(line: 338, column: 31, scope: !1033)
!1067 = !DILocation(line: 338, column: 15, scope: !1033)
!1068 = !DILocation(line: 339, column: 10, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !1033, file: !3, line: 338, column: 35)
!1070 = !DILocation(line: 340, column: 5, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !1072, file: !3, line: 340, column: 5)
!1072 = distinct !DILexicalBlock(scope: !1069, file: !3, line: 340, column: 5)
!1073 = !DILocation(line: 340, column: 5, scope: !1074)
!1074 = distinct !DILexicalBlock(scope: !1075, file: !3, line: 340, column: 5)
!1075 = distinct !DILexicalBlock(scope: !1071, file: !3, line: 340, column: 5)
!1076 = !DILocation(line: 340, column: 5, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !1074, file: !3, line: 340, column: 5)
!1078 = !DILocation(line: 340, column: 5, scope: !1075)
!1079 = !DILocation(line: 341, column: 13, scope: !1069)
!1080 = !DILocation(line: 341, column: 10, scope: !1069)
!1081 = !DILocation(line: 342, column: 6, scope: !1069)
!1082 = distinct !{!1082, !1062, !1083, !713}
!1083 = !DILocation(line: 343, column: 3, scope: !1033)
!1084 = !DILocation(line: 346, column: 23, scope: !1033)
!1085 = !DILocation(line: 346, column: 3, scope: !1033)
!1086 = !DILocation(line: 346, column: 10, scope: !1033)
!1087 = !DILocation(line: 346, column: 21, scope: !1033)
!1088 = !DILocation(line: 347, column: 22, scope: !1033)
!1089 = !DILocation(line: 347, column: 3, scope: !1033)
!1090 = !DILocation(line: 347, column: 10, scope: !1033)
!1091 = !DILocation(line: 347, column: 20, scope: !1033)
!1092 = !DILocation(line: 351, column: 7, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !1033, file: !3, line: 351, column: 7)
!1094 = !DILocation(line: 351, column: 9, scope: !1093)
!1095 = !DILocation(line: 352, column: 5, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1093, file: !3, line: 351, column: 15)
!1097 = !DILocation(line: 353, column: 5, scope: !1096)
!1098 = !DILocation(line: 356, column: 10, scope: !1033)
!1099 = !DILocation(line: 356, column: 16, scope: !1033)
!1100 = !DILocation(line: 356, column: 21, scope: !1033)
!1101 = !DILocation(line: 356, column: 30, scope: !1033)
!1102 = !DILocation(line: 356, column: 36, scope: !1033)
!1103 = !DILocation(line: 356, column: 43, scope: !1033)
!1104 = !DILocation(line: 357, column: 16, scope: !1033)
!1105 = !DILocation(line: 357, column: 23, scope: !1033)
!1106 = !DILocation(line: 357, column: 29, scope: !1033)
!1107 = !DILocation(line: 357, column: 37, scope: !1033)
!1108 = !DILocation(line: 357, column: 21, scope: !1033)
!1109 = !DILocation(line: 357, column: 9, scope: !1033)
!1110 = !DILocation(line: 356, column: 46, scope: !1033)
!1111 = !DILocation(line: 356, column: 3, scope: !1033)
!1112 = !DILocation(line: 358, column: 1, scope: !1033)
!1113 = distinct !DISubprogram(name: "jinit_huff_decoder", scope: !3, file: !3, line: 558, type: !325, scopeLine: 559, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !634)
!1114 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1113, file: !3, line: 558, type: !327)
!1115 = !DILocation(line: 558, column: 38, scope: !1113)
!1116 = !DILocalVariable(name: "entropy", scope: !1113, file: !3, line: 560, type: !315)
!1117 = !DILocation(line: 560, column: 20, scope: !1113)
!1118 = !DILocalVariable(name: "i", scope: !1113, file: !3, line: 561, type: !176)
!1119 = !DILocation(line: 561, column: 7, scope: !1113)
!1120 = !DILocation(line: 564, column: 7, scope: !1113)
!1121 = !DILocation(line: 564, column: 14, scope: !1113)
!1122 = !DILocation(line: 564, column: 19, scope: !1113)
!1123 = !DILocation(line: 564, column: 48, scope: !1113)
!1124 = !DILocation(line: 564, column: 5, scope: !1113)
!1125 = !DILocation(line: 563, column: 11, scope: !1113)
!1126 = !DILocation(line: 566, column: 52, scope: !1113)
!1127 = !DILocation(line: 566, column: 3, scope: !1113)
!1128 = !DILocation(line: 566, column: 10, scope: !1113)
!1129 = !DILocation(line: 566, column: 18, scope: !1113)
!1130 = !DILocation(line: 567, column: 3, scope: !1113)
!1131 = !DILocation(line: 567, column: 12, scope: !1113)
!1132 = !DILocation(line: 567, column: 16, scope: !1113)
!1133 = !DILocation(line: 567, column: 27, scope: !1113)
!1134 = !DILocation(line: 568, column: 3, scope: !1113)
!1135 = !DILocation(line: 568, column: 12, scope: !1113)
!1136 = !DILocation(line: 568, column: 16, scope: !1113)
!1137 = !DILocation(line: 568, column: 27, scope: !1113)
!1138 = !DILocation(line: 571, column: 10, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !1113, file: !3, line: 571, column: 3)
!1140 = !DILocation(line: 571, column: 8, scope: !1139)
!1141 = !DILocation(line: 571, column: 15, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !1139, file: !3, line: 571, column: 3)
!1143 = !DILocation(line: 571, column: 17, scope: !1142)
!1144 = !DILocation(line: 571, column: 3, scope: !1139)
!1145 = !DILocation(line: 572, column: 35, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1142, file: !3, line: 571, column: 39)
!1147 = !DILocation(line: 572, column: 44, scope: !1146)
!1148 = !DILocation(line: 572, column: 60, scope: !1146)
!1149 = !DILocation(line: 572, column: 63, scope: !1146)
!1150 = !DILocation(line: 572, column: 5, scope: !1146)
!1151 = !DILocation(line: 572, column: 14, scope: !1146)
!1152 = !DILocation(line: 572, column: 30, scope: !1146)
!1153 = !DILocation(line: 572, column: 33, scope: !1146)
!1154 = !DILocation(line: 573, column: 3, scope: !1146)
!1155 = !DILocation(line: 571, column: 35, scope: !1142)
!1156 = !DILocation(line: 571, column: 3, scope: !1142)
!1157 = distinct !{!1157, !1144, !1158, !713}
!1158 = !DILocation(line: 573, column: 3, scope: !1139)
!1159 = !DILocation(line: 574, column: 1, scope: !1113)
!1160 = distinct !DISubprogram(name: "start_pass_huff_decoder", scope: !3, file: !3, line: 77, type: !325, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !634)
!1161 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1160, file: !3, line: 77, type: !327)
!1162 = !DILocation(line: 77, column: 43, scope: !1160)
!1163 = !DILocalVariable(name: "entropy", scope: !1160, file: !3, line: 79, type: !315)
!1164 = !DILocation(line: 79, column: 20, scope: !1160)
!1165 = !DILocation(line: 79, column: 49, scope: !1160)
!1166 = !DILocation(line: 79, column: 56, scope: !1160)
!1167 = !DILocalVariable(name: "ci", scope: !1160, file: !3, line: 80, type: !176)
!1168 = !DILocation(line: 80, column: 7, scope: !1160)
!1169 = !DILocalVariable(name: "dctbl", scope: !1160, file: !3, line: 80, type: !176)
!1170 = !DILocation(line: 80, column: 11, scope: !1160)
!1171 = !DILocalVariable(name: "actbl", scope: !1160, file: !3, line: 80, type: !176)
!1172 = !DILocation(line: 80, column: 18, scope: !1160)
!1173 = !DILocalVariable(name: "compptr", scope: !1160, file: !3, line: 81, type: !416)
!1174 = !DILocation(line: 81, column: 25, scope: !1160)
!1175 = !DILocation(line: 87, column: 7, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1160, file: !3, line: 87, column: 7)
!1177 = !DILocation(line: 87, column: 14, scope: !1176)
!1178 = !DILocation(line: 87, column: 17, scope: !1176)
!1179 = !DILocation(line: 87, column: 22, scope: !1176)
!1180 = !DILocation(line: 87, column: 25, scope: !1176)
!1181 = !DILocation(line: 87, column: 32, scope: !1176)
!1182 = !DILocation(line: 87, column: 35, scope: !1176)
!1183 = !DILocation(line: 87, column: 49, scope: !1176)
!1184 = !DILocation(line: 88, column: 7, scope: !1176)
!1185 = !DILocation(line: 88, column: 14, scope: !1176)
!1186 = !DILocation(line: 88, column: 17, scope: !1176)
!1187 = !DILocation(line: 88, column: 22, scope: !1176)
!1188 = !DILocation(line: 88, column: 25, scope: !1176)
!1189 = !DILocation(line: 88, column: 32, scope: !1176)
!1190 = !DILocation(line: 88, column: 35, scope: !1176)
!1191 = !DILocation(line: 89, column: 5, scope: !1176)
!1192 = !DILocation(line: 91, column: 11, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1160, file: !3, line: 91, column: 3)
!1194 = !DILocation(line: 91, column: 8, scope: !1193)
!1195 = !DILocation(line: 91, column: 16, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !1193, file: !3, line: 91, column: 3)
!1197 = !DILocation(line: 91, column: 21, scope: !1196)
!1198 = !DILocation(line: 91, column: 28, scope: !1196)
!1199 = !DILocation(line: 91, column: 19, scope: !1196)
!1200 = !DILocation(line: 91, column: 3, scope: !1193)
!1201 = !DILocation(line: 92, column: 15, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !1196, file: !3, line: 91, column: 49)
!1203 = !DILocation(line: 92, column: 22, scope: !1202)
!1204 = !DILocation(line: 92, column: 36, scope: !1202)
!1205 = !DILocation(line: 92, column: 13, scope: !1202)
!1206 = !DILocation(line: 93, column: 13, scope: !1202)
!1207 = !DILocation(line: 93, column: 22, scope: !1202)
!1208 = !DILocation(line: 93, column: 11, scope: !1202)
!1209 = !DILocation(line: 94, column: 13, scope: !1202)
!1210 = !DILocation(line: 94, column: 22, scope: !1202)
!1211 = !DILocation(line: 94, column: 11, scope: !1202)
!1212 = !DILocation(line: 96, column: 9, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1202, file: !3, line: 96, column: 9)
!1214 = !DILocation(line: 96, column: 15, scope: !1213)
!1215 = !DILocation(line: 96, column: 19, scope: !1213)
!1216 = !DILocation(line: 96, column: 22, scope: !1213)
!1217 = !DILocation(line: 96, column: 28, scope: !1213)
!1218 = !DILocation(line: 96, column: 45, scope: !1213)
!1219 = !DILocation(line: 97, column: 2, scope: !1213)
!1220 = !DILocation(line: 97, column: 9, scope: !1213)
!1221 = !DILocation(line: 97, column: 26, scope: !1213)
!1222 = !DILocation(line: 97, column: 33, scope: !1213)
!1223 = !DILocation(line: 98, column: 7, scope: !1213)
!1224 = !DILocation(line: 99, column: 9, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1202, file: !3, line: 99, column: 9)
!1226 = !DILocation(line: 99, column: 15, scope: !1225)
!1227 = !DILocation(line: 99, column: 19, scope: !1225)
!1228 = !DILocation(line: 99, column: 22, scope: !1225)
!1229 = !DILocation(line: 99, column: 28, scope: !1225)
!1230 = !DILocation(line: 99, column: 45, scope: !1225)
!1231 = !DILocation(line: 100, column: 2, scope: !1225)
!1232 = !DILocation(line: 100, column: 9, scope: !1225)
!1233 = !DILocation(line: 100, column: 26, scope: !1225)
!1234 = !DILocation(line: 100, column: 33, scope: !1225)
!1235 = !DILocation(line: 101, column: 7, scope: !1225)
!1236 = !DILocation(line: 104, column: 29, scope: !1202)
!1237 = !DILocation(line: 104, column: 36, scope: !1202)
!1238 = !DILocation(line: 104, column: 43, scope: !1202)
!1239 = !DILocation(line: 104, column: 60, scope: !1202)
!1240 = !DILocation(line: 105, column: 10, scope: !1202)
!1241 = !DILocation(line: 105, column: 19, scope: !1202)
!1242 = !DILocation(line: 105, column: 35, scope: !1202)
!1243 = !DILocation(line: 104, column: 5, scope: !1202)
!1244 = !DILocation(line: 106, column: 29, scope: !1202)
!1245 = !DILocation(line: 106, column: 36, scope: !1202)
!1246 = !DILocation(line: 106, column: 43, scope: !1202)
!1247 = !DILocation(line: 106, column: 60, scope: !1202)
!1248 = !DILocation(line: 107, column: 10, scope: !1202)
!1249 = !DILocation(line: 107, column: 19, scope: !1202)
!1250 = !DILocation(line: 107, column: 35, scope: !1202)
!1251 = !DILocation(line: 106, column: 5, scope: !1202)
!1252 = !DILocation(line: 109, column: 5, scope: !1202)
!1253 = !DILocation(line: 109, column: 14, scope: !1202)
!1254 = !DILocation(line: 109, column: 20, scope: !1202)
!1255 = !DILocation(line: 109, column: 32, scope: !1202)
!1256 = !DILocation(line: 109, column: 36, scope: !1202)
!1257 = !DILocation(line: 110, column: 3, scope: !1202)
!1258 = !DILocation(line: 91, column: 45, scope: !1196)
!1259 = !DILocation(line: 91, column: 3, scope: !1196)
!1260 = distinct !{!1260, !1200, !1261, !713}
!1261 = !DILocation(line: 110, column: 3, scope: !1193)
!1262 = !DILocation(line: 113, column: 3, scope: !1160)
!1263 = !DILocation(line: 113, column: 12, scope: !1160)
!1264 = !DILocation(line: 113, column: 21, scope: !1160)
!1265 = !DILocation(line: 113, column: 31, scope: !1160)
!1266 = !DILocation(line: 114, column: 3, scope: !1160)
!1267 = !DILocation(line: 114, column: 12, scope: !1160)
!1268 = !DILocation(line: 114, column: 21, scope: !1160)
!1269 = !DILocation(line: 114, column: 32, scope: !1160)
!1270 = !DILocation(line: 115, column: 3, scope: !1160)
!1271 = !DILocation(line: 115, column: 12, scope: !1160)
!1272 = !DILocation(line: 115, column: 21, scope: !1160)
!1273 = !DILocation(line: 115, column: 33, scope: !1160)
!1274 = !DILocation(line: 118, column: 29, scope: !1160)
!1275 = !DILocation(line: 118, column: 36, scope: !1160)
!1276 = !DILocation(line: 118, column: 3, scope: !1160)
!1277 = !DILocation(line: 118, column: 12, scope: !1160)
!1278 = !DILocation(line: 118, column: 27, scope: !1160)
!1279 = !DILocation(line: 119, column: 1, scope: !1160)
!1280 = distinct !DISubprogram(name: "decode_mcu", scope: !3, file: !3, line: 437, type: !597, scopeLine: 438, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !634)
!1281 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1280, file: !3, line: 437, type: !327)
!1282 = !DILocation(line: 437, column: 30, scope: !1280)
!1283 = !DILocalVariable(name: "MCU_data", arg: 2, scope: !1280, file: !3, line: 437, type: !269)
!1284 = !DILocation(line: 437, column: 48, scope: !1280)
!1285 = !DILocalVariable(name: "entropy", scope: !1280, file: !3, line: 439, type: !315)
!1286 = !DILocation(line: 439, column: 20, scope: !1280)
!1287 = !DILocation(line: 439, column: 49, scope: !1280)
!1288 = !DILocation(line: 439, column: 56, scope: !1280)
!1289 = !DILocalVariable(name: "s", scope: !1280, file: !3, line: 440, type: !176)
!1290 = !DILocation(line: 440, column: 16, scope: !1280)
!1291 = !DILocalVariable(name: "k", scope: !1280, file: !3, line: 440, type: !176)
!1292 = !DILocation(line: 440, column: 19, scope: !1280)
!1293 = !DILocalVariable(name: "r", scope: !1280, file: !3, line: 440, type: !176)
!1294 = !DILocation(line: 440, column: 22, scope: !1280)
!1295 = !DILocalVariable(name: "blkn", scope: !1280, file: !3, line: 441, type: !176)
!1296 = !DILocation(line: 441, column: 7, scope: !1280)
!1297 = !DILocalVariable(name: "ci", scope: !1280, file: !3, line: 441, type: !176)
!1298 = !DILocation(line: 441, column: 13, scope: !1280)
!1299 = !DILocalVariable(name: "block", scope: !1280, file: !3, line: 442, type: !270)
!1300 = !DILocation(line: 442, column: 13, scope: !1280)
!1301 = !DILocalVariable(name: "get_buffer", scope: !1280, file: !3, line: 443, type: !604)
!1302 = !DILocation(line: 443, column: 3, scope: !1280)
!1303 = !DILocalVariable(name: "bits_left", scope: !1280, file: !3, line: 443, type: !176)
!1304 = !DILocalVariable(name: "br_state", scope: !1280, file: !3, line: 443, type: !871)
!1305 = !DILocalVariable(name: "state", scope: !1280, file: !3, line: 444, type: !608)
!1306 = !DILocation(line: 444, column: 17, scope: !1280)
!1307 = !DILocalVariable(name: "dctbl", scope: !1280, file: !3, line: 445, type: !158)
!1308 = !DILocation(line: 445, column: 19, scope: !1280)
!1309 = !DILocalVariable(name: "actbl", scope: !1280, file: !3, line: 446, type: !158)
!1310 = !DILocation(line: 446, column: 19, scope: !1280)
!1311 = !DILocalVariable(name: "compptr", scope: !1280, file: !3, line: 447, type: !416)
!1312 = !DILocation(line: 447, column: 25, scope: !1280)
!1313 = !DILocation(line: 450, column: 7, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1280, file: !3, line: 450, column: 7)
!1315 = !DILocation(line: 450, column: 14, scope: !1314)
!1316 = !DILocation(line: 451, column: 9, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1318, file: !3, line: 451, column: 9)
!1318 = distinct !DILexicalBlock(scope: !1314, file: !3, line: 450, column: 32)
!1319 = !DILocation(line: 451, column: 18, scope: !1317)
!1320 = !DILocation(line: 451, column: 33, scope: !1317)
!1321 = !DILocation(line: 452, column: 29, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1317, file: !3, line: 452, column: 11)
!1323 = !DILocation(line: 452, column: 13, scope: !1322)
!1324 = !DILocation(line: 452, column: 11, scope: !1322)
!1325 = !DILocation(line: 453, column: 2, scope: !1322)
!1326 = !DILocation(line: 452, column: 34, scope: !1322)
!1327 = !DILocation(line: 454, column: 3, scope: !1318)
!1328 = !DILocation(line: 457, column: 3, scope: !1280)
!1329 = !DILocation(line: 458, column: 3, scope: !1280)
!1330 = !DILocation(line: 462, column: 13, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1280, file: !3, line: 462, column: 3)
!1332 = !DILocation(line: 462, column: 8, scope: !1331)
!1333 = !DILocation(line: 462, column: 18, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1331, file: !3, line: 462, column: 3)
!1335 = !DILocation(line: 462, column: 25, scope: !1334)
!1336 = !DILocation(line: 462, column: 32, scope: !1334)
!1337 = !DILocation(line: 462, column: 23, scope: !1334)
!1338 = !DILocation(line: 462, column: 3, scope: !1331)
!1339 = !DILocation(line: 463, column: 13, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1334, file: !3, line: 462, column: 55)
!1341 = !DILocation(line: 463, column: 22, scope: !1340)
!1342 = !DILocation(line: 463, column: 11, scope: !1340)
!1343 = !DILocation(line: 464, column: 10, scope: !1340)
!1344 = !DILocation(line: 464, column: 17, scope: !1340)
!1345 = !DILocation(line: 464, column: 32, scope: !1340)
!1346 = !DILocation(line: 464, column: 8, scope: !1340)
!1347 = !DILocation(line: 465, column: 15, scope: !1340)
!1348 = !DILocation(line: 465, column: 22, scope: !1340)
!1349 = !DILocation(line: 465, column: 36, scope: !1340)
!1350 = !DILocation(line: 465, column: 13, scope: !1340)
!1351 = !DILocation(line: 466, column: 13, scope: !1340)
!1352 = !DILocation(line: 466, column: 22, scope: !1340)
!1353 = !DILocation(line: 466, column: 38, scope: !1340)
!1354 = !DILocation(line: 466, column: 47, scope: !1340)
!1355 = !DILocation(line: 466, column: 11, scope: !1340)
!1356 = !DILocation(line: 467, column: 13, scope: !1340)
!1357 = !DILocation(line: 467, column: 22, scope: !1340)
!1358 = !DILocation(line: 467, column: 38, scope: !1340)
!1359 = !DILocation(line: 467, column: 47, scope: !1340)
!1360 = !DILocation(line: 467, column: 11, scope: !1340)
!1361 = !DILocalVariable(name: "nb", scope: !1362, file: !3, line: 472, type: !176)
!1362 = distinct !DILexicalBlock(scope: !1340, file: !3, line: 472, column: 5)
!1363 = !DILocation(line: 472, column: 5, scope: !1362)
!1364 = !DILocalVariable(name: "look", scope: !1362, file: !3, line: 472, type: !176)
!1365 = !DILocation(line: 472, column: 5, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1362, file: !3, line: 472, column: 5)
!1367 = !DILocation(line: 472, column: 5, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1369, file: !3, line: 472, column: 5)
!1369 = distinct !DILexicalBlock(scope: !1366, file: !3, line: 472, column: 5)
!1370 = !DILocation(line: 472, column: 5, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1368, file: !3, line: 472, column: 5)
!1372 = !DILocation(line: 472, column: 5, scope: !1369)
!1373 = !DILocation(line: 472, column: 5, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !1369, file: !3, line: 472, column: 5)
!1375 = !DILocation(line: 472, column: 5, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1374, file: !3, line: 472, column: 5)
!1377 = !DILocation(line: 472, column: 5, scope: !1378)
!1378 = distinct !DILexicalBlock(scope: !1362, file: !3, line: 472, column: 5)
!1379 = !DILocation(line: 472, column: 5, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !1378, file: !3, line: 472, column: 5)
!1381 = !DILocation(line: 472, column: 5, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !1378, file: !3, line: 472, column: 5)
!1383 = !DILabel(scope: !1382, name: "label1", file: !3, line: 472)
!1384 = !DILocation(line: 472, column: 5, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !1382, file: !3, line: 472, column: 5)
!1386 = !DILocation(line: 472, column: 5, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !1385, file: !3, line: 472, column: 5)
!1388 = !DILocation(line: 473, column: 9, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !1340, file: !3, line: 473, column: 9)
!1390 = !DILocation(line: 474, column: 7, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1392, file: !3, line: 474, column: 7)
!1392 = distinct !DILexicalBlock(scope: !1393, file: !3, line: 474, column: 7)
!1393 = distinct !DILexicalBlock(scope: !1389, file: !3, line: 473, column: 12)
!1394 = !DILocation(line: 474, column: 7, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1396, file: !3, line: 474, column: 7)
!1396 = distinct !DILexicalBlock(scope: !1391, file: !3, line: 474, column: 7)
!1397 = !DILocation(line: 474, column: 7, scope: !1398)
!1398 = distinct !DILexicalBlock(scope: !1395, file: !3, line: 474, column: 7)
!1399 = !DILocation(line: 474, column: 7, scope: !1396)
!1400 = !DILocation(line: 475, column: 11, scope: !1393)
!1401 = !DILocation(line: 475, column: 9, scope: !1393)
!1402 = !DILocation(line: 476, column: 11, scope: !1393)
!1403 = !DILocation(line: 476, column: 9, scope: !1393)
!1404 = !DILocation(line: 477, column: 5, scope: !1393)
!1405 = !DILocation(line: 480, column: 11, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1340, file: !3, line: 480, column: 9)
!1407 = !DILocation(line: 480, column: 20, scope: !1406)
!1408 = !DILocation(line: 480, column: 9, scope: !1406)
!1409 = !DILocation(line: 481, column: 7, scope: !1406)
!1410 = !DILocation(line: 484, column: 16, scope: !1340)
!1411 = !DILocation(line: 484, column: 28, scope: !1340)
!1412 = !DILocation(line: 484, column: 10, scope: !1340)
!1413 = !DILocation(line: 484, column: 7, scope: !1340)
!1414 = !DILocation(line: 485, column: 29, scope: !1340)
!1415 = !DILocation(line: 485, column: 11, scope: !1340)
!1416 = !DILocation(line: 485, column: 23, scope: !1340)
!1417 = !DILocation(line: 485, column: 5, scope: !1340)
!1418 = !DILocation(line: 485, column: 27, scope: !1340)
!1419 = !DILocation(line: 487, column: 27, scope: !1340)
!1420 = !DILocation(line: 487, column: 19, scope: !1340)
!1421 = !DILocation(line: 487, column: 7, scope: !1340)
!1422 = !DILocation(line: 487, column: 5, scope: !1340)
!1423 = !DILocation(line: 487, column: 17, scope: !1340)
!1424 = !DILocation(line: 490, column: 9, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1340, file: !3, line: 490, column: 9)
!1426 = !DILocation(line: 490, column: 18, scope: !1425)
!1427 = !DILocation(line: 490, column: 34, scope: !1425)
!1428 = !DILocation(line: 494, column: 14, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1430, file: !3, line: 494, column: 7)
!1430 = distinct !DILexicalBlock(scope: !1425, file: !3, line: 490, column: 39)
!1431 = !DILocation(line: 494, column: 12, scope: !1429)
!1432 = !DILocation(line: 494, column: 19, scope: !1433)
!1433 = distinct !DILexicalBlock(scope: !1429, file: !3, line: 494, column: 7)
!1434 = !DILocation(line: 494, column: 21, scope: !1433)
!1435 = !DILocation(line: 494, column: 7, scope: !1429)
!1436 = !DILocalVariable(name: "nb", scope: !1437, file: !3, line: 495, type: !176)
!1437 = distinct !DILexicalBlock(scope: !1438, file: !3, line: 495, column: 2)
!1438 = distinct !DILexicalBlock(scope: !1433, file: !3, line: 494, column: 38)
!1439 = !DILocation(line: 495, column: 2, scope: !1437)
!1440 = !DILocalVariable(name: "look", scope: !1437, file: !3, line: 495, type: !176)
!1441 = !DILocation(line: 495, column: 2, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !1437, file: !3, line: 495, column: 2)
!1443 = !DILocation(line: 495, column: 2, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1445, file: !3, line: 495, column: 2)
!1445 = distinct !DILexicalBlock(scope: !1442, file: !3, line: 495, column: 2)
!1446 = !DILocation(line: 495, column: 2, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !1444, file: !3, line: 495, column: 2)
!1448 = !DILocation(line: 495, column: 2, scope: !1445)
!1449 = !DILocation(line: 495, column: 2, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !1445, file: !3, line: 495, column: 2)
!1451 = !DILocation(line: 495, column: 2, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1450, file: !3, line: 495, column: 2)
!1453 = !DILocation(line: 495, column: 2, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !1437, file: !3, line: 495, column: 2)
!1455 = !DILocation(line: 495, column: 2, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1454, file: !3, line: 495, column: 2)
!1457 = !DILocation(line: 495, column: 2, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1454, file: !3, line: 495, column: 2)
!1459 = !DILabel(scope: !1458, name: "label2", file: !3, line: 495)
!1460 = !DILocation(line: 495, column: 2, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !1458, file: !3, line: 495, column: 2)
!1462 = !DILocation(line: 495, column: 2, scope: !1463)
!1463 = distinct !DILexicalBlock(scope: !1461, file: !3, line: 495, column: 2)
!1464 = !DILocation(line: 497, column: 6, scope: !1438)
!1465 = !DILocation(line: 497, column: 8, scope: !1438)
!1466 = !DILocation(line: 497, column: 4, scope: !1438)
!1467 = !DILocation(line: 498, column: 4, scope: !1438)
!1468 = !DILocation(line: 500, column: 6, scope: !1469)
!1469 = distinct !DILexicalBlock(scope: !1438, file: !3, line: 500, column: 6)
!1470 = !DILocation(line: 501, column: 9, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !1469, file: !3, line: 500, column: 9)
!1472 = !DILocation(line: 501, column: 6, scope: !1471)
!1473 = !DILocation(line: 502, column: 4, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !1475, file: !3, line: 502, column: 4)
!1475 = distinct !DILexicalBlock(scope: !1471, file: !3, line: 502, column: 4)
!1476 = !DILocation(line: 502, column: 4, scope: !1477)
!1477 = distinct !DILexicalBlock(scope: !1478, file: !3, line: 502, column: 4)
!1478 = distinct !DILexicalBlock(scope: !1474, file: !3, line: 502, column: 4)
!1479 = !DILocation(line: 502, column: 4, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !1477, file: !3, line: 502, column: 4)
!1481 = !DILocation(line: 502, column: 4, scope: !1478)
!1482 = !DILocation(line: 503, column: 8, scope: !1471)
!1483 = !DILocation(line: 503, column: 6, scope: !1471)
!1484 = !DILocation(line: 504, column: 8, scope: !1471)
!1485 = !DILocation(line: 504, column: 6, scope: !1471)
!1486 = !DILocation(line: 509, column: 46, scope: !1471)
!1487 = !DILocation(line: 509, column: 38, scope: !1471)
!1488 = !DILocation(line: 509, column: 6, scope: !1471)
!1489 = !DILocation(line: 509, column: 32, scope: !1471)
!1490 = !DILocation(line: 509, column: 13, scope: !1471)
!1491 = !DILocation(line: 509, column: 4, scope: !1471)
!1492 = !DILocation(line: 509, column: 36, scope: !1471)
!1493 = !DILocation(line: 510, column: 2, scope: !1471)
!1494 = !DILocation(line: 511, column: 8, scope: !1495)
!1495 = distinct !DILexicalBlock(scope: !1496, file: !3, line: 511, column: 8)
!1496 = distinct !DILexicalBlock(scope: !1469, file: !3, line: 510, column: 9)
!1497 = !DILocation(line: 511, column: 10, scope: !1495)
!1498 = !DILocation(line: 512, column: 6, scope: !1495)
!1499 = !DILocation(line: 513, column: 6, scope: !1496)
!1500 = !DILocation(line: 515, column: 7, scope: !1438)
!1501 = !DILocation(line: 494, column: 34, scope: !1433)
!1502 = !DILocation(line: 494, column: 7, scope: !1433)
!1503 = distinct !{!1503, !1435, !1504, !713}
!1504 = !DILocation(line: 515, column: 7, scope: !1429)
!1505 = !DILocation(line: 517, column: 5, scope: !1430)
!1506 = !DILocation(line: 517, column: 12, scope: !1425)
!1507 = !DILabel(scope: !1508, name: "skip_ACs", file: !3, line: 518)
!1508 = distinct !DILexicalBlock(scope: !1425, file: !3, line: 517, column: 12)
!1509 = !DILocation(line: 518, column: 1, scope: !1508)
!1510 = !DILocation(line: 522, column: 14, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1508, file: !3, line: 522, column: 7)
!1512 = !DILocation(line: 522, column: 12, scope: !1511)
!1513 = !DILocation(line: 522, column: 19, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1511, file: !3, line: 522, column: 7)
!1515 = !DILocation(line: 522, column: 21, scope: !1514)
!1516 = !DILocation(line: 522, column: 7, scope: !1511)
!1517 = !DILocalVariable(name: "nb", scope: !1518, file: !3, line: 523, type: !176)
!1518 = distinct !DILexicalBlock(scope: !1519, file: !3, line: 523, column: 2)
!1519 = distinct !DILexicalBlock(scope: !1514, file: !3, line: 522, column: 38)
!1520 = !DILocation(line: 523, column: 2, scope: !1518)
!1521 = !DILocalVariable(name: "look", scope: !1518, file: !3, line: 523, type: !176)
!1522 = !DILocation(line: 523, column: 2, scope: !1523)
!1523 = distinct !DILexicalBlock(scope: !1518, file: !3, line: 523, column: 2)
!1524 = !DILocation(line: 523, column: 2, scope: !1525)
!1525 = distinct !DILexicalBlock(scope: !1526, file: !3, line: 523, column: 2)
!1526 = distinct !DILexicalBlock(scope: !1523, file: !3, line: 523, column: 2)
!1527 = !DILocation(line: 523, column: 2, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !1525, file: !3, line: 523, column: 2)
!1529 = !DILocation(line: 523, column: 2, scope: !1526)
!1530 = !DILocation(line: 523, column: 2, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !1526, file: !3, line: 523, column: 2)
!1532 = !DILocation(line: 523, column: 2, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !1531, file: !3, line: 523, column: 2)
!1534 = !DILocation(line: 523, column: 2, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1518, file: !3, line: 523, column: 2)
!1536 = !DILocation(line: 523, column: 2, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1535, file: !3, line: 523, column: 2)
!1538 = !DILocation(line: 523, column: 2, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1535, file: !3, line: 523, column: 2)
!1540 = !DILabel(scope: !1539, name: "label3", file: !3, line: 523)
!1541 = !DILocation(line: 523, column: 2, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1539, file: !3, line: 523, column: 2)
!1543 = !DILocation(line: 523, column: 2, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1542, file: !3, line: 523, column: 2)
!1545 = !DILocation(line: 525, column: 6, scope: !1519)
!1546 = !DILocation(line: 525, column: 8, scope: !1519)
!1547 = !DILocation(line: 525, column: 4, scope: !1519)
!1548 = !DILocation(line: 526, column: 4, scope: !1519)
!1549 = !DILocation(line: 528, column: 6, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1519, file: !3, line: 528, column: 6)
!1551 = !DILocation(line: 529, column: 9, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1550, file: !3, line: 528, column: 9)
!1553 = !DILocation(line: 529, column: 6, scope: !1552)
!1554 = !DILocation(line: 530, column: 4, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1556, file: !3, line: 530, column: 4)
!1556 = distinct !DILexicalBlock(scope: !1552, file: !3, line: 530, column: 4)
!1557 = !DILocation(line: 530, column: 4, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !1559, file: !3, line: 530, column: 4)
!1559 = distinct !DILexicalBlock(scope: !1555, file: !3, line: 530, column: 4)
!1560 = !DILocation(line: 530, column: 4, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !1558, file: !3, line: 530, column: 4)
!1562 = !DILocation(line: 530, column: 4, scope: !1559)
!1563 = !DILocation(line: 531, column: 4, scope: !1552)
!1564 = !DILocation(line: 532, column: 2, scope: !1552)
!1565 = !DILocation(line: 533, column: 8, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1567, file: !3, line: 533, column: 8)
!1567 = distinct !DILexicalBlock(scope: !1550, file: !3, line: 532, column: 9)
!1568 = !DILocation(line: 533, column: 10, scope: !1566)
!1569 = !DILocation(line: 534, column: 6, scope: !1566)
!1570 = !DILocation(line: 535, column: 6, scope: !1567)
!1571 = !DILocation(line: 537, column: 7, scope: !1519)
!1572 = !DILocation(line: 522, column: 34, scope: !1514)
!1573 = !DILocation(line: 522, column: 7, scope: !1514)
!1574 = distinct !{!1574, !1516, !1575, !713}
!1575 = !DILocation(line: 537, column: 7, scope: !1511)
!1576 = !DILocation(line: 540, column: 3, scope: !1340)
!1577 = !DILocation(line: 462, column: 51, scope: !1334)
!1578 = !DILocation(line: 462, column: 3, scope: !1334)
!1579 = distinct !{!1579, !1338, !1580, !713}
!1580 = !DILocation(line: 540, column: 3, scope: !1331)
!1581 = !DILocation(line: 543, column: 3, scope: !1280)
!1582 = !DILocation(line: 544, column: 3, scope: !1280)
!1583 = !DILocation(line: 547, column: 3, scope: !1280)
!1584 = !DILocation(line: 547, column: 12, scope: !1280)
!1585 = !DILocation(line: 547, column: 26, scope: !1280)
!1586 = !DILocation(line: 549, column: 3, scope: !1280)
!1587 = !DILocation(line: 550, column: 1, scope: !1280)
!1588 = distinct !DISubprogram(name: "process_restart", scope: !3, file: !3, line: 393, type: !348, scopeLine: 394, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !634)
!1589 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1588, file: !3, line: 393, type: !327)
!1590 = !DILocation(line: 393, column: 35, scope: !1588)
!1591 = !DILocalVariable(name: "entropy", scope: !1588, file: !3, line: 395, type: !315)
!1592 = !DILocation(line: 395, column: 20, scope: !1588)
!1593 = !DILocation(line: 395, column: 49, scope: !1588)
!1594 = !DILocation(line: 395, column: 56, scope: !1588)
!1595 = !DILocalVariable(name: "ci", scope: !1588, file: !3, line: 396, type: !176)
!1596 = !DILocation(line: 396, column: 7, scope: !1588)
!1597 = !DILocation(line: 400, column: 37, scope: !1588)
!1598 = !DILocation(line: 400, column: 46, scope: !1588)
!1599 = !DILocation(line: 400, column: 55, scope: !1588)
!1600 = !DILocation(line: 400, column: 65, scope: !1588)
!1601 = !DILocation(line: 400, column: 3, scope: !1588)
!1602 = !DILocation(line: 400, column: 10, scope: !1588)
!1603 = !DILocation(line: 400, column: 18, scope: !1588)
!1604 = !DILocation(line: 400, column: 34, scope: !1588)
!1605 = !DILocation(line: 401, column: 3, scope: !1588)
!1606 = !DILocation(line: 401, column: 12, scope: !1588)
!1607 = !DILocation(line: 401, column: 21, scope: !1588)
!1608 = !DILocation(line: 401, column: 31, scope: !1588)
!1609 = !DILocation(line: 404, column: 11, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !1588, file: !3, line: 404, column: 7)
!1611 = !DILocation(line: 404, column: 18, scope: !1610)
!1612 = !DILocation(line: 404, column: 26, scope: !1610)
!1613 = !DILocation(line: 404, column: 48, scope: !1610)
!1614 = !DILocation(line: 404, column: 9, scope: !1610)
!1615 = !DILocation(line: 404, column: 7, scope: !1610)
!1616 = !DILocation(line: 405, column: 5, scope: !1610)
!1617 = !DILocation(line: 408, column: 11, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1588, file: !3, line: 408, column: 3)
!1619 = !DILocation(line: 408, column: 8, scope: !1618)
!1620 = !DILocation(line: 408, column: 16, scope: !1621)
!1621 = distinct !DILexicalBlock(scope: !1618, file: !3, line: 408, column: 3)
!1622 = !DILocation(line: 408, column: 21, scope: !1621)
!1623 = !DILocation(line: 408, column: 28, scope: !1621)
!1624 = !DILocation(line: 408, column: 19, scope: !1621)
!1625 = !DILocation(line: 408, column: 3, scope: !1618)
!1626 = !DILocation(line: 409, column: 5, scope: !1621)
!1627 = !DILocation(line: 409, column: 14, scope: !1621)
!1628 = !DILocation(line: 409, column: 20, scope: !1621)
!1629 = !DILocation(line: 409, column: 32, scope: !1621)
!1630 = !DILocation(line: 409, column: 36, scope: !1621)
!1631 = !DILocation(line: 408, column: 45, scope: !1621)
!1632 = !DILocation(line: 408, column: 3, scope: !1621)
!1633 = distinct !{!1633, !1625, !1634, !713}
!1634 = !DILocation(line: 409, column: 38, scope: !1618)
!1635 = !DILocation(line: 412, column: 29, scope: !1588)
!1636 = !DILocation(line: 412, column: 36, scope: !1588)
!1637 = !DILocation(line: 412, column: 3, scope: !1588)
!1638 = !DILocation(line: 412, column: 12, scope: !1588)
!1639 = !DILocation(line: 412, column: 27, scope: !1588)
!1640 = !DILocation(line: 415, column: 3, scope: !1588)
!1641 = !DILocation(line: 415, column: 12, scope: !1588)
!1642 = !DILocation(line: 415, column: 21, scope: !1588)
!1643 = !DILocation(line: 415, column: 33, scope: !1588)
!1644 = !DILocation(line: 417, column: 3, scope: !1588)
!1645 = !DILocation(line: 418, column: 1, scope: !1588)
