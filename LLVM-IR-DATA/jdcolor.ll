; ModuleID = 'cBench/consumer_jpeg_c/src/jdcolor.c'
source_filename = "cBench/consumer_jpeg_c/src/jdcolor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jpeg_decompress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.my_color_deconverter = type { %struct.jpeg_color_deconverter, ptr, ptr, ptr, ptr }
%struct.jpeg_color_deconverter = type { ptr, ptr }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }

; Function Attrs: noinline nounwind uwtable
define dso_local void @jinit_color_deconverter(ptr noundef %0) #0 !dbg !594 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !596, !DIExpression(), !597)
    #dbg_declare(ptr %3, !598, !DIExpression(), !599)
    #dbg_declare(ptr %4, !600, !DIExpression(), !601)
  %5 = load ptr, ptr %2, align 8, !dbg !602
  %6 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %5, i32 0, i32 1, !dbg !603
  %7 = load ptr, ptr %6, align 8, !dbg !603
  %8 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %7, i32 0, i32 0, !dbg !604
  %9 = load ptr, ptr %8, align 8, !dbg !604
  %10 = load ptr, ptr %2, align 8, !dbg !605
  %11 = call ptr %9(ptr noundef %10, i32 noundef 1, i64 noundef 48), !dbg !606
  store ptr %11, ptr %3, align 8, !dbg !607
  %12 = load ptr, ptr %3, align 8, !dbg !608
  %13 = load ptr, ptr %2, align 8, !dbg !609
  %14 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %13, i32 0, i32 82, !dbg !610
  store ptr %12, ptr %14, align 8, !dbg !611
  %15 = load ptr, ptr %3, align 8, !dbg !612
  %16 = getelementptr inbounds nuw %struct.my_color_deconverter, ptr %15, i32 0, i32 0, !dbg !613
  %17 = getelementptr inbounds nuw %struct.jpeg_color_deconverter, ptr %16, i32 0, i32 0, !dbg !614
  store ptr @start_pass_dcolor, ptr %17, align 8, !dbg !615
  %18 = load ptr, ptr %2, align 8, !dbg !616
  %19 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %18, i32 0, i32 9, !dbg !617
  %20 = load i32, ptr %19, align 4, !dbg !617
  switch i32 %20, label %72 [
    i32 1, label %21
    i32 2, label %38
    i32 3, label %38
    i32 4, label %55
    i32 5, label %55
  ], !dbg !618

21:                                               ; preds = %1
  %22 = load ptr, ptr %2, align 8, !dbg !619
  %23 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %22, i32 0, i32 8, !dbg !622
  %24 = load i32, ptr %23, align 8, !dbg !622
  %25 = icmp ne i32 %24, 1, !dbg !623
  br i1 %25, label %26, label %37, !dbg !623

26:                                               ; preds = %21
  %27 = load ptr, ptr %2, align 8, !dbg !624
  %28 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %27, i32 0, i32 0, !dbg !624
  %29 = load ptr, ptr %28, align 8, !dbg !624
  %30 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %29, i32 0, i32 5, !dbg !624
  store i32 8, ptr %30, align 8, !dbg !624
  %31 = load ptr, ptr %2, align 8, !dbg !624
  %32 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %31, i32 0, i32 0, !dbg !624
  %33 = load ptr, ptr %32, align 8, !dbg !624
  %34 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %33, i32 0, i32 0, !dbg !624
  %35 = load ptr, ptr %34, align 8, !dbg !624
  %36 = load ptr, ptr %2, align 8, !dbg !624
  call void %35(ptr noundef %36), !dbg !624
  br label %37, !dbg !624

37:                                               ; preds = %26, %21
  br label %89, !dbg !625

38:                                               ; preds = %1, %1
  %39 = load ptr, ptr %2, align 8, !dbg !626
  %40 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %39, i32 0, i32 8, !dbg !628
  %41 = load i32, ptr %40, align 8, !dbg !628
  %42 = icmp ne i32 %41, 3, !dbg !629
  br i1 %42, label %43, label %54, !dbg !629

43:                                               ; preds = %38
  %44 = load ptr, ptr %2, align 8, !dbg !630
  %45 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %44, i32 0, i32 0, !dbg !630
  %46 = load ptr, ptr %45, align 8, !dbg !630
  %47 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %46, i32 0, i32 5, !dbg !630
  store i32 8, ptr %47, align 8, !dbg !630
  %48 = load ptr, ptr %2, align 8, !dbg !630
  %49 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %48, i32 0, i32 0, !dbg !630
  %50 = load ptr, ptr %49, align 8, !dbg !630
  %51 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %50, i32 0, i32 0, !dbg !630
  %52 = load ptr, ptr %51, align 8, !dbg !630
  %53 = load ptr, ptr %2, align 8, !dbg !630
  call void %52(ptr noundef %53), !dbg !630
  br label %54, !dbg !630

54:                                               ; preds = %43, %38
  br label %89, !dbg !631

55:                                               ; preds = %1, %1
  %56 = load ptr, ptr %2, align 8, !dbg !632
  %57 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %56, i32 0, i32 8, !dbg !634
  %58 = load i32, ptr %57, align 8, !dbg !634
  %59 = icmp ne i32 %58, 4, !dbg !635
  br i1 %59, label %60, label %71, !dbg !635

60:                                               ; preds = %55
  %61 = load ptr, ptr %2, align 8, !dbg !636
  %62 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %61, i32 0, i32 0, !dbg !636
  %63 = load ptr, ptr %62, align 8, !dbg !636
  %64 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %63, i32 0, i32 5, !dbg !636
  store i32 8, ptr %64, align 8, !dbg !636
  %65 = load ptr, ptr %2, align 8, !dbg !636
  %66 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %65, i32 0, i32 0, !dbg !636
  %67 = load ptr, ptr %66, align 8, !dbg !636
  %68 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %67, i32 0, i32 0, !dbg !636
  %69 = load ptr, ptr %68, align 8, !dbg !636
  %70 = load ptr, ptr %2, align 8, !dbg !636
  call void %69(ptr noundef %70), !dbg !636
  br label %71, !dbg !636

71:                                               ; preds = %60, %55
  br label %89, !dbg !637

72:                                               ; preds = %1
  %73 = load ptr, ptr %2, align 8, !dbg !638
  %74 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %73, i32 0, i32 8, !dbg !640
  %75 = load i32, ptr %74, align 8, !dbg !640
  %76 = icmp slt i32 %75, 1, !dbg !641
  br i1 %76, label %77, label %88, !dbg !641

77:                                               ; preds = %72
  %78 = load ptr, ptr %2, align 8, !dbg !642
  %79 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %78, i32 0, i32 0, !dbg !642
  %80 = load ptr, ptr %79, align 8, !dbg !642
  %81 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %80, i32 0, i32 5, !dbg !642
  store i32 8, ptr %81, align 8, !dbg !642
  %82 = load ptr, ptr %2, align 8, !dbg !642
  %83 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %82, i32 0, i32 0, !dbg !642
  %84 = load ptr, ptr %83, align 8, !dbg !642
  %85 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %84, i32 0, i32 0, !dbg !642
  %86 = load ptr, ptr %85, align 8, !dbg !642
  %87 = load ptr, ptr %2, align 8, !dbg !642
  call void %86(ptr noundef %87), !dbg !642
  br label %88, !dbg !642

88:                                               ; preds = %77, %72
  br label %89, !dbg !643

89:                                               ; preds = %88, %71, %54, %37
  %90 = load ptr, ptr %2, align 8, !dbg !644
  %91 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %90, i32 0, i32 10, !dbg !645
  %92 = load i32, ptr %91, align 8, !dbg !645
  switch i32 %92, label %207 [
    i32 1, label %93
    i32 2, label %139
    i32 4, label %173
  ], !dbg !646

93:                                               ; preds = %89
  %94 = load ptr, ptr %2, align 8, !dbg !647
  %95 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %94, i32 0, i32 28, !dbg !649
  store i32 1, ptr %95, align 8, !dbg !650
  %96 = load ptr, ptr %2, align 8, !dbg !651
  %97 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %96, i32 0, i32 9, !dbg !653
  %98 = load i32, ptr %97, align 4, !dbg !653
  %99 = icmp eq i32 %98, 1, !dbg !654
  br i1 %99, label %105, label %100, !dbg !655

100:                                              ; preds = %93
  %101 = load ptr, ptr %2, align 8, !dbg !656
  %102 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %101, i32 0, i32 9, !dbg !657
  %103 = load i32, ptr %102, align 4, !dbg !657
  %104 = icmp eq i32 %103, 3, !dbg !658
  br i1 %104, label %105, label %127, !dbg !655

105:                                              ; preds = %100, %93
  %106 = load ptr, ptr %3, align 8, !dbg !659
  %107 = getelementptr inbounds nuw %struct.my_color_deconverter, ptr %106, i32 0, i32 0, !dbg !661
  %108 = getelementptr inbounds nuw %struct.jpeg_color_deconverter, ptr %107, i32 0, i32 1, !dbg !662
  store ptr @grayscale_convert, ptr %108, align 8, !dbg !663
  store i32 1, ptr %4, align 4, !dbg !664
  br label %109, !dbg !666

109:                                              ; preds = %123, %105
  %110 = load i32, ptr %4, align 4, !dbg !667
  %111 = load ptr, ptr %2, align 8, !dbg !669
  %112 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %111, i32 0, i32 8, !dbg !670
  %113 = load i32, ptr %112, align 8, !dbg !670
  %114 = icmp slt i32 %110, %113, !dbg !671
  br i1 %114, label %115, label %126, !dbg !672

115:                                              ; preds = %109
  %116 = load ptr, ptr %2, align 8, !dbg !673
  %117 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %116, i32 0, i32 43, !dbg !674
  %118 = load ptr, ptr %117, align 8, !dbg !674
  %119 = load i32, ptr %4, align 4, !dbg !675
  %120 = sext i32 %119 to i64, !dbg !673
  %121 = getelementptr inbounds %struct.jpeg_component_info, ptr %118, i64 %120, !dbg !673
  %122 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %121, i32 0, i32 12, !dbg !676
  store i32 0, ptr %122, align 8, !dbg !677
  br label %123, !dbg !673

123:                                              ; preds = %115
  %124 = load i32, ptr %4, align 4, !dbg !678
  %125 = add nsw i32 %124, 1, !dbg !678
  store i32 %125, ptr %4, align 4, !dbg !678
  br label %109, !dbg !679, !llvm.loop !680

126:                                              ; preds = %109
  br label %138, !dbg !683

127:                                              ; preds = %100
  %128 = load ptr, ptr %2, align 8, !dbg !684
  %129 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %128, i32 0, i32 0, !dbg !684
  %130 = load ptr, ptr %129, align 8, !dbg !684
  %131 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %130, i32 0, i32 5, !dbg !684
  store i32 25, ptr %131, align 8, !dbg !684
  %132 = load ptr, ptr %2, align 8, !dbg !684
  %133 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %132, i32 0, i32 0, !dbg !684
  %134 = load ptr, ptr %133, align 8, !dbg !684
  %135 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %134, i32 0, i32 0, !dbg !684
  %136 = load ptr, ptr %135, align 8, !dbg !684
  %137 = load ptr, ptr %2, align 8, !dbg !684
  call void %136(ptr noundef %137), !dbg !684
  br label %138

138:                                              ; preds = %127, %126
  br label %236, !dbg !685

139:                                              ; preds = %89
  %140 = load ptr, ptr %2, align 8, !dbg !686
  %141 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %140, i32 0, i32 28, !dbg !687
  store i32 3, ptr %141, align 8, !dbg !688
  %142 = load ptr, ptr %2, align 8, !dbg !689
  %143 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %142, i32 0, i32 9, !dbg !691
  %144 = load i32, ptr %143, align 4, !dbg !691
  %145 = icmp eq i32 %144, 3, !dbg !692
  br i1 %145, label %146, label %151, !dbg !692

146:                                              ; preds = %139
  %147 = load ptr, ptr %3, align 8, !dbg !693
  %148 = getelementptr inbounds nuw %struct.my_color_deconverter, ptr %147, i32 0, i32 0, !dbg !695
  %149 = getelementptr inbounds nuw %struct.jpeg_color_deconverter, ptr %148, i32 0, i32 1, !dbg !696
  store ptr @ycc_rgb_convert, ptr %149, align 8, !dbg !697
  %150 = load ptr, ptr %2, align 8, !dbg !698
  call void @build_ycc_rgb_table(ptr noundef %150), !dbg !699
  br label %172, !dbg !700

151:                                              ; preds = %139
  %152 = load ptr, ptr %2, align 8, !dbg !701
  %153 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %152, i32 0, i32 9, !dbg !703
  %154 = load i32, ptr %153, align 4, !dbg !703
  %155 = icmp eq i32 %154, 2, !dbg !704
  br i1 %155, label %156, label %160, !dbg !705

156:                                              ; preds = %151
  %157 = load ptr, ptr %3, align 8, !dbg !706
  %158 = getelementptr inbounds nuw %struct.my_color_deconverter, ptr %157, i32 0, i32 0, !dbg !708
  %159 = getelementptr inbounds nuw %struct.jpeg_color_deconverter, ptr %158, i32 0, i32 1, !dbg !709
  store ptr @null_convert, ptr %159, align 8, !dbg !710
  br label %171, !dbg !711

160:                                              ; preds = %151
  %161 = load ptr, ptr %2, align 8, !dbg !712
  %162 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %161, i32 0, i32 0, !dbg !712
  %163 = load ptr, ptr %162, align 8, !dbg !712
  %164 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %163, i32 0, i32 5, !dbg !712
  store i32 25, ptr %164, align 8, !dbg !712
  %165 = load ptr, ptr %2, align 8, !dbg !712
  %166 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %165, i32 0, i32 0, !dbg !712
  %167 = load ptr, ptr %166, align 8, !dbg !712
  %168 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %167, i32 0, i32 0, !dbg !712
  %169 = load ptr, ptr %168, align 8, !dbg !712
  %170 = load ptr, ptr %2, align 8, !dbg !712
  call void %169(ptr noundef %170), !dbg !712
  br label %171

171:                                              ; preds = %160, %156
  br label %172

172:                                              ; preds = %171, %146
  br label %236, !dbg !713

173:                                              ; preds = %89
  %174 = load ptr, ptr %2, align 8, !dbg !714
  %175 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %174, i32 0, i32 28, !dbg !715
  store i32 4, ptr %175, align 8, !dbg !716
  %176 = load ptr, ptr %2, align 8, !dbg !717
  %177 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %176, i32 0, i32 9, !dbg !719
  %178 = load i32, ptr %177, align 4, !dbg !719
  %179 = icmp eq i32 %178, 5, !dbg !720
  br i1 %179, label %180, label %185, !dbg !720

180:                                              ; preds = %173
  %181 = load ptr, ptr %3, align 8, !dbg !721
  %182 = getelementptr inbounds nuw %struct.my_color_deconverter, ptr %181, i32 0, i32 0, !dbg !723
  %183 = getelementptr inbounds nuw %struct.jpeg_color_deconverter, ptr %182, i32 0, i32 1, !dbg !724
  store ptr @ycck_cmyk_convert, ptr %183, align 8, !dbg !725
  %184 = load ptr, ptr %2, align 8, !dbg !726
  call void @build_ycc_rgb_table(ptr noundef %184), !dbg !727
  br label %206, !dbg !728

185:                                              ; preds = %173
  %186 = load ptr, ptr %2, align 8, !dbg !729
  %187 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %186, i32 0, i32 9, !dbg !731
  %188 = load i32, ptr %187, align 4, !dbg !731
  %189 = icmp eq i32 %188, 4, !dbg !732
  br i1 %189, label %190, label %194, !dbg !732

190:                                              ; preds = %185
  %191 = load ptr, ptr %3, align 8, !dbg !733
  %192 = getelementptr inbounds nuw %struct.my_color_deconverter, ptr %191, i32 0, i32 0, !dbg !735
  %193 = getelementptr inbounds nuw %struct.jpeg_color_deconverter, ptr %192, i32 0, i32 1, !dbg !736
  store ptr @null_convert, ptr %193, align 8, !dbg !737
  br label %205, !dbg !738

194:                                              ; preds = %185
  %195 = load ptr, ptr %2, align 8, !dbg !739
  %196 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %195, i32 0, i32 0, !dbg !739
  %197 = load ptr, ptr %196, align 8, !dbg !739
  %198 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %197, i32 0, i32 5, !dbg !739
  store i32 25, ptr %198, align 8, !dbg !739
  %199 = load ptr, ptr %2, align 8, !dbg !739
  %200 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %199, i32 0, i32 0, !dbg !739
  %201 = load ptr, ptr %200, align 8, !dbg !739
  %202 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %201, i32 0, i32 0, !dbg !739
  %203 = load ptr, ptr %202, align 8, !dbg !739
  %204 = load ptr, ptr %2, align 8, !dbg !739
  call void %203(ptr noundef %204), !dbg !739
  br label %205

205:                                              ; preds = %194, %190
  br label %206

206:                                              ; preds = %205, %180
  br label %236, !dbg !740

207:                                              ; preds = %89
  %208 = load ptr, ptr %2, align 8, !dbg !741
  %209 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %208, i32 0, i32 10, !dbg !743
  %210 = load i32, ptr %209, align 8, !dbg !743
  %211 = load ptr, ptr %2, align 8, !dbg !744
  %212 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %211, i32 0, i32 9, !dbg !745
  %213 = load i32, ptr %212, align 4, !dbg !745
  %214 = icmp eq i32 %210, %213, !dbg !746
  br i1 %214, label %215, label %224, !dbg !746

215:                                              ; preds = %207
  %216 = load ptr, ptr %2, align 8, !dbg !747
  %217 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %216, i32 0, i32 8, !dbg !749
  %218 = load i32, ptr %217, align 8, !dbg !749
  %219 = load ptr, ptr %2, align 8, !dbg !750
  %220 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %219, i32 0, i32 28, !dbg !751
  store i32 %218, ptr %220, align 8, !dbg !752
  %221 = load ptr, ptr %3, align 8, !dbg !753
  %222 = getelementptr inbounds nuw %struct.my_color_deconverter, ptr %221, i32 0, i32 0, !dbg !754
  %223 = getelementptr inbounds nuw %struct.jpeg_color_deconverter, ptr %222, i32 0, i32 1, !dbg !755
  store ptr @null_convert, ptr %223, align 8, !dbg !756
  br label %235, !dbg !757

224:                                              ; preds = %207
  %225 = load ptr, ptr %2, align 8, !dbg !758
  %226 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %225, i32 0, i32 0, !dbg !758
  %227 = load ptr, ptr %226, align 8, !dbg !758
  %228 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %227, i32 0, i32 5, !dbg !758
  store i32 25, ptr %228, align 8, !dbg !758
  %229 = load ptr, ptr %2, align 8, !dbg !758
  %230 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %229, i32 0, i32 0, !dbg !758
  %231 = load ptr, ptr %230, align 8, !dbg !758
  %232 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %231, i32 0, i32 0, !dbg !758
  %233 = load ptr, ptr %232, align 8, !dbg !758
  %234 = load ptr, ptr %2, align 8, !dbg !758
  call void %233(ptr noundef %234), !dbg !758
  br label %235

235:                                              ; preds = %224, %215
  br label %236, !dbg !759

236:                                              ; preds = %235, %206, %172, %138
  %237 = load ptr, ptr %2, align 8, !dbg !760
  %238 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %237, i32 0, i32 19, !dbg !762
  %239 = load i32, ptr %238, align 4, !dbg !762
  %240 = icmp ne i32 %239, 0, !dbg !760
  br i1 %240, label %241, label %244, !dbg !760

241:                                              ; preds = %236
  %242 = load ptr, ptr %2, align 8, !dbg !763
  %243 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %242, i32 0, i32 29, !dbg !764
  store i32 1, ptr %243, align 4, !dbg !765
  br label %250, !dbg !763

244:                                              ; preds = %236
  %245 = load ptr, ptr %2, align 8, !dbg !766
  %246 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %245, i32 0, i32 28, !dbg !767
  %247 = load i32, ptr %246, align 8, !dbg !767
  %248 = load ptr, ptr %2, align 8, !dbg !768
  %249 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %248, i32 0, i32 29, !dbg !769
  store i32 %247, ptr %249, align 4, !dbg !770
  br label %250

250:                                              ; preds = %244, %241
  ret void, !dbg !771
}

; Function Attrs: noinline nounwind uwtable
define internal void @start_pass_dcolor(ptr noundef %0) #0 !dbg !772 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !773, !DIExpression(), !774)
  ret void, !dbg !775
}

; Function Attrs: noinline nounwind uwtable
define internal void @grayscale_convert(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) #0 !dbg !776 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  store ptr %0, ptr %6, align 8
    #dbg_declare(ptr %6, !777, !DIExpression(), !778)
  store ptr %1, ptr %7, align 8
    #dbg_declare(ptr %7, !779, !DIExpression(), !780)
  store i32 %2, ptr %8, align 4
    #dbg_declare(ptr %8, !781, !DIExpression(), !782)
  store ptr %3, ptr %9, align 8
    #dbg_declare(ptr %9, !783, !DIExpression(), !784)
  store i32 %4, ptr %10, align 4
    #dbg_declare(ptr %10, !785, !DIExpression(), !786)
  %11 = load ptr, ptr %7, align 8, !dbg !787
  %12 = getelementptr inbounds ptr, ptr %11, i64 0, !dbg !787
  %13 = load ptr, ptr %12, align 8, !dbg !787
  %14 = load i32, ptr %8, align 4, !dbg !788
  %15 = load ptr, ptr %9, align 8, !dbg !789
  %16 = load i32, ptr %10, align 4, !dbg !790
  %17 = load ptr, ptr %6, align 8, !dbg !791
  %18 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %17, i32 0, i32 26, !dbg !792
  %19 = load i32, ptr %18, align 8, !dbg !792
  call void @jcopy_sample_rows(ptr noundef %13, i32 noundef %14, ptr noundef %15, i32 noundef 0, i32 noundef %16, i32 noundef %19), !dbg !793
  ret void, !dbg !794
}

; Function Attrs: noinline nounwind uwtable
define internal void @ycc_rgb_convert(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) #0 !dbg !795 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca ptr, align 8
  %22 = alloca ptr, align 8
  %23 = alloca ptr, align 8
  %24 = alloca ptr, align 8
  %25 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8
    #dbg_declare(ptr %6, !796, !DIExpression(), !797)
  store ptr %1, ptr %7, align 8
    #dbg_declare(ptr %7, !798, !DIExpression(), !799)
  store i32 %2, ptr %8, align 4
    #dbg_declare(ptr %8, !800, !DIExpression(), !801)
  store ptr %3, ptr %9, align 8
    #dbg_declare(ptr %9, !802, !DIExpression(), !803)
  store i32 %4, ptr %10, align 4
    #dbg_declare(ptr %10, !804, !DIExpression(), !805)
    #dbg_declare(ptr %11, !806, !DIExpression(), !807)
  %26 = load ptr, ptr %6, align 8, !dbg !808
  %27 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %26, i32 0, i32 82, !dbg !809
  %28 = load ptr, ptr %27, align 8, !dbg !809
  store ptr %28, ptr %11, align 8, !dbg !807
    #dbg_declare(ptr %12, !810, !DIExpression(), !811)
    #dbg_declare(ptr %13, !812, !DIExpression(), !813)
    #dbg_declare(ptr %14, !814, !DIExpression(), !815)
    #dbg_declare(ptr %15, !816, !DIExpression(), !817)
    #dbg_declare(ptr %16, !818, !DIExpression(), !819)
    #dbg_declare(ptr %17, !820, !DIExpression(), !821)
    #dbg_declare(ptr %18, !822, !DIExpression(), !823)
    #dbg_declare(ptr %19, !824, !DIExpression(), !825)
    #dbg_declare(ptr %20, !826, !DIExpression(), !827)
  %29 = load ptr, ptr %6, align 8, !dbg !828
  %30 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %29, i32 0, i32 26, !dbg !829
  %31 = load i32, ptr %30, align 8, !dbg !829
  store i32 %31, ptr %20, align 4, !dbg !827
    #dbg_declare(ptr %21, !830, !DIExpression(), !831)
  %32 = load ptr, ptr %6, align 8, !dbg !832
  %33 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %32, i32 0, i32 61, !dbg !833
  %34 = load ptr, ptr %33, align 8, !dbg !833
  store ptr %34, ptr %21, align 8, !dbg !831
    #dbg_declare(ptr %22, !834, !DIExpression(), !835)
  %35 = load ptr, ptr %11, align 8, !dbg !836
  %36 = getelementptr inbounds nuw %struct.my_color_deconverter, ptr %35, i32 0, i32 1, !dbg !837
  %37 = load ptr, ptr %36, align 8, !dbg !837
  store ptr %37, ptr %22, align 8, !dbg !835
    #dbg_declare(ptr %23, !838, !DIExpression(), !839)
  %38 = load ptr, ptr %11, align 8, !dbg !840
  %39 = getelementptr inbounds nuw %struct.my_color_deconverter, ptr %38, i32 0, i32 2, !dbg !841
  %40 = load ptr, ptr %39, align 8, !dbg !841
  store ptr %40, ptr %23, align 8, !dbg !839
    #dbg_declare(ptr %24, !842, !DIExpression(), !843)
  %41 = load ptr, ptr %11, align 8, !dbg !844
  %42 = getelementptr inbounds nuw %struct.my_color_deconverter, ptr %41, i32 0, i32 3, !dbg !845
  %43 = load ptr, ptr %42, align 8, !dbg !845
  store ptr %43, ptr %24, align 8, !dbg !843
    #dbg_declare(ptr %25, !846, !DIExpression(), !847)
  %44 = load ptr, ptr %11, align 8, !dbg !848
  %45 = getelementptr inbounds nuw %struct.my_color_deconverter, ptr %44, i32 0, i32 4, !dbg !849
  %46 = load ptr, ptr %45, align 8, !dbg !849
  store ptr %46, ptr %25, align 8, !dbg !847
  br label %47, !dbg !850

47:                                               ; preds = %153, %5
  %48 = load i32, ptr %10, align 4, !dbg !851
  %49 = add nsw i32 %48, -1, !dbg !851
  store i32 %49, ptr %10, align 4, !dbg !851
  %50 = icmp sge i32 %49, 0, !dbg !852
  br i1 %50, label %51, label %154, !dbg !850

51:                                               ; preds = %47
  %52 = load ptr, ptr %7, align 8, !dbg !853
  %53 = getelementptr inbounds ptr, ptr %52, i64 0, !dbg !853
  %54 = load ptr, ptr %53, align 8, !dbg !853
  %55 = load i32, ptr %8, align 4, !dbg !855
  %56 = zext i32 %55 to i64, !dbg !853
  %57 = getelementptr inbounds nuw ptr, ptr %54, i64 %56, !dbg !853
  %58 = load ptr, ptr %57, align 8, !dbg !853
  store ptr %58, ptr %16, align 8, !dbg !856
  %59 = load ptr, ptr %7, align 8, !dbg !857
  %60 = getelementptr inbounds ptr, ptr %59, i64 1, !dbg !857
  %61 = load ptr, ptr %60, align 8, !dbg !857
  %62 = load i32, ptr %8, align 4, !dbg !858
  %63 = zext i32 %62 to i64, !dbg !857
  %64 = getelementptr inbounds nuw ptr, ptr %61, i64 %63, !dbg !857
  %65 = load ptr, ptr %64, align 8, !dbg !857
  store ptr %65, ptr %17, align 8, !dbg !859
  %66 = load ptr, ptr %7, align 8, !dbg !860
  %67 = getelementptr inbounds ptr, ptr %66, i64 2, !dbg !860
  %68 = load ptr, ptr %67, align 8, !dbg !860
  %69 = load i32, ptr %8, align 4, !dbg !861
  %70 = zext i32 %69 to i64, !dbg !860
  %71 = getelementptr inbounds nuw ptr, ptr %68, i64 %70, !dbg !860
  %72 = load ptr, ptr %71, align 8, !dbg !860
  store ptr %72, ptr %18, align 8, !dbg !862
  %73 = load i32, ptr %8, align 4, !dbg !863
  %74 = add i32 %73, 1, !dbg !863
  store i32 %74, ptr %8, align 4, !dbg !863
  %75 = load ptr, ptr %9, align 8, !dbg !864
  %76 = getelementptr inbounds nuw ptr, ptr %75, i32 1, !dbg !864
  store ptr %76, ptr %9, align 8, !dbg !864
  %77 = load ptr, ptr %75, align 8, !dbg !865
  store ptr %77, ptr %15, align 8, !dbg !866
  store i32 0, ptr %19, align 4, !dbg !867
  br label %78, !dbg !869

78:                                               ; preds = %150, %51
  %79 = load i32, ptr %19, align 4, !dbg !870
  %80 = load i32, ptr %20, align 4, !dbg !872
  %81 = icmp ult i32 %79, %80, !dbg !873
  br i1 %81, label %82, label %153, !dbg !874

82:                                               ; preds = %78
  %83 = load ptr, ptr %16, align 8, !dbg !875
  %84 = load i32, ptr %19, align 4, !dbg !875
  %85 = zext i32 %84 to i64, !dbg !875
  %86 = getelementptr inbounds nuw i8, ptr %83, i64 %85, !dbg !875
  %87 = load i8, ptr %86, align 1, !dbg !875
  %88 = zext i8 %87 to i32, !dbg !875
  store i32 %88, ptr %12, align 4, !dbg !877
  %89 = load ptr, ptr %17, align 8, !dbg !878
  %90 = load i32, ptr %19, align 4, !dbg !878
  %91 = zext i32 %90 to i64, !dbg !878
  %92 = getelementptr inbounds nuw i8, ptr %89, i64 %91, !dbg !878
  %93 = load i8, ptr %92, align 1, !dbg !878
  %94 = zext i8 %93 to i32, !dbg !878
  store i32 %94, ptr %13, align 4, !dbg !879
  %95 = load ptr, ptr %18, align 8, !dbg !880
  %96 = load i32, ptr %19, align 4, !dbg !880
  %97 = zext i32 %96 to i64, !dbg !880
  %98 = getelementptr inbounds nuw i8, ptr %95, i64 %97, !dbg !880
  %99 = load i8, ptr %98, align 1, !dbg !880
  %100 = zext i8 %99 to i32, !dbg !880
  store i32 %100, ptr %14, align 4, !dbg !881
  %101 = load ptr, ptr %21, align 8, !dbg !882
  %102 = load i32, ptr %12, align 4, !dbg !883
  %103 = load ptr, ptr %22, align 8, !dbg !884
  %104 = load i32, ptr %14, align 4, !dbg !885
  %105 = sext i32 %104 to i64, !dbg !884
  %106 = getelementptr inbounds i32, ptr %103, i64 %105, !dbg !884
  %107 = load i32, ptr %106, align 4, !dbg !884
  %108 = add nsw i32 %102, %107, !dbg !886
  %109 = sext i32 %108 to i64, !dbg !882
  %110 = getelementptr inbounds i8, ptr %101, i64 %109, !dbg !882
  %111 = load i8, ptr %110, align 1, !dbg !882
  %112 = load ptr, ptr %15, align 8, !dbg !887
  %113 = getelementptr inbounds i8, ptr %112, i64 0, !dbg !887
  store i8 %111, ptr %113, align 1, !dbg !888
  %114 = load ptr, ptr %21, align 8, !dbg !889
  %115 = load i32, ptr %12, align 4, !dbg !890
  %116 = load ptr, ptr %25, align 8, !dbg !891
  %117 = load i32, ptr %13, align 4, !dbg !891
  %118 = sext i32 %117 to i64, !dbg !891
  %119 = getelementptr inbounds i64, ptr %116, i64 %118, !dbg !891
  %120 = load i64, ptr %119, align 8, !dbg !891
  %121 = load ptr, ptr %24, align 8, !dbg !891
  %122 = load i32, ptr %14, align 4, !dbg !891
  %123 = sext i32 %122 to i64, !dbg !891
  %124 = getelementptr inbounds i64, ptr %121, i64 %123, !dbg !891
  %125 = load i64, ptr %124, align 8, !dbg !891
  %126 = add nsw i64 %120, %125, !dbg !891
  %127 = ashr i64 %126, 16, !dbg !891
  %128 = trunc i64 %127 to i32, !dbg !892
  %129 = add nsw i32 %115, %128, !dbg !893
  %130 = sext i32 %129 to i64, !dbg !889
  %131 = getelementptr inbounds i8, ptr %114, i64 %130, !dbg !889
  %132 = load i8, ptr %131, align 1, !dbg !889
  %133 = load ptr, ptr %15, align 8, !dbg !894
  %134 = getelementptr inbounds i8, ptr %133, i64 1, !dbg !894
  store i8 %132, ptr %134, align 1, !dbg !895
  %135 = load ptr, ptr %21, align 8, !dbg !896
  %136 = load i32, ptr %12, align 4, !dbg !897
  %137 = load ptr, ptr %23, align 8, !dbg !898
  %138 = load i32, ptr %13, align 4, !dbg !899
  %139 = sext i32 %138 to i64, !dbg !898
  %140 = getelementptr inbounds i32, ptr %137, i64 %139, !dbg !898
  %141 = load i32, ptr %140, align 4, !dbg !898
  %142 = add nsw i32 %136, %141, !dbg !900
  %143 = sext i32 %142 to i64, !dbg !896
  %144 = getelementptr inbounds i8, ptr %135, i64 %143, !dbg !896
  %145 = load i8, ptr %144, align 1, !dbg !896
  %146 = load ptr, ptr %15, align 8, !dbg !901
  %147 = getelementptr inbounds i8, ptr %146, i64 2, !dbg !901
  store i8 %145, ptr %147, align 1, !dbg !902
  %148 = load ptr, ptr %15, align 8, !dbg !903
  %149 = getelementptr inbounds i8, ptr %148, i64 3, !dbg !903
  store ptr %149, ptr %15, align 8, !dbg !903
  br label %150, !dbg !904

150:                                              ; preds = %82
  %151 = load i32, ptr %19, align 4, !dbg !905
  %152 = add i32 %151, 1, !dbg !905
  store i32 %152, ptr %19, align 4, !dbg !905
  br label %78, !dbg !906, !llvm.loop !907

153:                                              ; preds = %78
  br label %47, !dbg !850, !llvm.loop !909

154:                                              ; preds = %47
  ret void, !dbg !911
}

; Function Attrs: noinline nounwind uwtable
define internal void @build_ycc_rgb_table(ptr noundef %0) #0 !dbg !912 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !913, !DIExpression(), !914)
    #dbg_declare(ptr %3, !915, !DIExpression(), !916)
  %6 = load ptr, ptr %2, align 8, !dbg !917
  %7 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %6, i32 0, i32 82, !dbg !918
  %8 = load ptr, ptr %7, align 8, !dbg !918
  store ptr %8, ptr %3, align 8, !dbg !916
    #dbg_declare(ptr %4, !919, !DIExpression(), !920)
    #dbg_declare(ptr %5, !921, !DIExpression(), !922)
  %9 = load ptr, ptr %2, align 8, !dbg !923
  %10 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %9, i32 0, i32 1, !dbg !924
  %11 = load ptr, ptr %10, align 8, !dbg !924
  %12 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %11, i32 0, i32 0, !dbg !925
  %13 = load ptr, ptr %12, align 8, !dbg !925
  %14 = load ptr, ptr %2, align 8, !dbg !926
  %15 = call ptr %13(ptr noundef %14, i32 noundef 1, i64 noundef 1024), !dbg !927
  %16 = load ptr, ptr %3, align 8, !dbg !928
  %17 = getelementptr inbounds nuw %struct.my_color_deconverter, ptr %16, i32 0, i32 1, !dbg !929
  store ptr %15, ptr %17, align 8, !dbg !930
  %18 = load ptr, ptr %2, align 8, !dbg !931
  %19 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %18, i32 0, i32 1, !dbg !932
  %20 = load ptr, ptr %19, align 8, !dbg !932
  %21 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %20, i32 0, i32 0, !dbg !933
  %22 = load ptr, ptr %21, align 8, !dbg !933
  %23 = load ptr, ptr %2, align 8, !dbg !934
  %24 = call ptr %22(ptr noundef %23, i32 noundef 1, i64 noundef 1024), !dbg !935
  %25 = load ptr, ptr %3, align 8, !dbg !936
  %26 = getelementptr inbounds nuw %struct.my_color_deconverter, ptr %25, i32 0, i32 2, !dbg !937
  store ptr %24, ptr %26, align 8, !dbg !938
  %27 = load ptr, ptr %2, align 8, !dbg !939
  %28 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %27, i32 0, i32 1, !dbg !940
  %29 = load ptr, ptr %28, align 8, !dbg !940
  %30 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %29, i32 0, i32 0, !dbg !941
  %31 = load ptr, ptr %30, align 8, !dbg !941
  %32 = load ptr, ptr %2, align 8, !dbg !942
  %33 = call ptr %31(ptr noundef %32, i32 noundef 1, i64 noundef 2048), !dbg !943
  %34 = load ptr, ptr %3, align 8, !dbg !944
  %35 = getelementptr inbounds nuw %struct.my_color_deconverter, ptr %34, i32 0, i32 3, !dbg !945
  store ptr %33, ptr %35, align 8, !dbg !946
  %36 = load ptr, ptr %2, align 8, !dbg !947
  %37 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %36, i32 0, i32 1, !dbg !948
  %38 = load ptr, ptr %37, align 8, !dbg !948
  %39 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %38, i32 0, i32 0, !dbg !949
  %40 = load ptr, ptr %39, align 8, !dbg !949
  %41 = load ptr, ptr %2, align 8, !dbg !950
  %42 = call ptr %40(ptr noundef %41, i32 noundef 1, i64 noundef 2048), !dbg !951
  %43 = load ptr, ptr %3, align 8, !dbg !952
  %44 = getelementptr inbounds nuw %struct.my_color_deconverter, ptr %43, i32 0, i32 4, !dbg !953
  store ptr %42, ptr %44, align 8, !dbg !954
  store i32 0, ptr %4, align 4, !dbg !955
  store i64 -128, ptr %5, align 8, !dbg !957
  br label %45, !dbg !958

45:                                               ; preds = %88, %1
  %46 = load i32, ptr %4, align 4, !dbg !959
  %47 = icmp sle i32 %46, 255, !dbg !961
  br i1 %47, label %48, label %93, !dbg !962

48:                                               ; preds = %45
  %49 = load i64, ptr %5, align 8, !dbg !963
  %50 = mul nsw i64 91881, %49, !dbg !963
  %51 = add nsw i64 %50, 32768, !dbg !963
  %52 = ashr i64 %51, 16, !dbg !963
  %53 = trunc i64 %52 to i32, !dbg !965
  %54 = load ptr, ptr %3, align 8, !dbg !966
  %55 = getelementptr inbounds nuw %struct.my_color_deconverter, ptr %54, i32 0, i32 1, !dbg !967
  %56 = load ptr, ptr %55, align 8, !dbg !967
  %57 = load i32, ptr %4, align 4, !dbg !968
  %58 = sext i32 %57 to i64, !dbg !966
  %59 = getelementptr inbounds i32, ptr %56, i64 %58, !dbg !966
  store i32 %53, ptr %59, align 4, !dbg !969
  %60 = load i64, ptr %5, align 8, !dbg !970
  %61 = mul nsw i64 116130, %60, !dbg !970
  %62 = add nsw i64 %61, 32768, !dbg !970
  %63 = ashr i64 %62, 16, !dbg !970
  %64 = trunc i64 %63 to i32, !dbg !971
  %65 = load ptr, ptr %3, align 8, !dbg !972
  %66 = getelementptr inbounds nuw %struct.my_color_deconverter, ptr %65, i32 0, i32 2, !dbg !973
  %67 = load ptr, ptr %66, align 8, !dbg !973
  %68 = load i32, ptr %4, align 4, !dbg !974
  %69 = sext i32 %68 to i64, !dbg !972
  %70 = getelementptr inbounds i32, ptr %67, i64 %69, !dbg !972
  store i32 %64, ptr %70, align 4, !dbg !975
  %71 = load i64, ptr %5, align 8, !dbg !976
  %72 = mul nsw i64 -46802, %71, !dbg !977
  %73 = load ptr, ptr %3, align 8, !dbg !978
  %74 = getelementptr inbounds nuw %struct.my_color_deconverter, ptr %73, i32 0, i32 3, !dbg !979
  %75 = load ptr, ptr %74, align 8, !dbg !979
  %76 = load i32, ptr %4, align 4, !dbg !980
  %77 = sext i32 %76 to i64, !dbg !978
  %78 = getelementptr inbounds i64, ptr %75, i64 %77, !dbg !978
  store i64 %72, ptr %78, align 8, !dbg !981
  %79 = load i64, ptr %5, align 8, !dbg !982
  %80 = mul nsw i64 -22554, %79, !dbg !983
  %81 = add nsw i64 %80, 32768, !dbg !984
  %82 = load ptr, ptr %3, align 8, !dbg !985
  %83 = getelementptr inbounds nuw %struct.my_color_deconverter, ptr %82, i32 0, i32 4, !dbg !986
  %84 = load ptr, ptr %83, align 8, !dbg !986
  %85 = load i32, ptr %4, align 4, !dbg !987
  %86 = sext i32 %85 to i64, !dbg !985
  %87 = getelementptr inbounds i64, ptr %84, i64 %86, !dbg !985
  store i64 %81, ptr %87, align 8, !dbg !988
  br label %88, !dbg !989

88:                                               ; preds = %48
  %89 = load i32, ptr %4, align 4, !dbg !990
  %90 = add nsw i32 %89, 1, !dbg !990
  store i32 %90, ptr %4, align 4, !dbg !990
  %91 = load i64, ptr %5, align 8, !dbg !991
  %92 = add nsw i64 %91, 1, !dbg !991
  store i64 %92, ptr %5, align 8, !dbg !991
  br label %45, !dbg !992, !llvm.loop !993

93:                                               ; preds = %45
  ret void, !dbg !995
}

; Function Attrs: noinline nounwind uwtable
define internal void @null_convert(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) #0 !dbg !996 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store ptr %0, ptr %6, align 8
    #dbg_declare(ptr %6, !997, !DIExpression(), !998)
  store ptr %1, ptr %7, align 8
    #dbg_declare(ptr %7, !999, !DIExpression(), !1000)
  store i32 %2, ptr %8, align 4
    #dbg_declare(ptr %8, !1001, !DIExpression(), !1002)
  store ptr %3, ptr %9, align 8
    #dbg_declare(ptr %9, !1003, !DIExpression(), !1004)
  store i32 %4, ptr %10, align 4
    #dbg_declare(ptr %10, !1005, !DIExpression(), !1006)
    #dbg_declare(ptr %11, !1007, !DIExpression(), !1008)
    #dbg_declare(ptr %12, !1009, !DIExpression(), !1010)
    #dbg_declare(ptr %13, !1011, !DIExpression(), !1012)
    #dbg_declare(ptr %14, !1013, !DIExpression(), !1014)
  %17 = load ptr, ptr %6, align 8, !dbg !1015
  %18 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %17, i32 0, i32 8, !dbg !1016
  %19 = load i32, ptr %18, align 8, !dbg !1016
  store i32 %19, ptr %14, align 4, !dbg !1014
    #dbg_declare(ptr %15, !1017, !DIExpression(), !1018)
  %20 = load ptr, ptr %6, align 8, !dbg !1019
  %21 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %20, i32 0, i32 26, !dbg !1020
  %22 = load i32, ptr %21, align 8, !dbg !1020
  store i32 %22, ptr %15, align 4, !dbg !1018
    #dbg_declare(ptr %16, !1021, !DIExpression(), !1022)
  br label %23, !dbg !1023

23:                                               ; preds = %68, %5
  %24 = load i32, ptr %10, align 4, !dbg !1024
  %25 = add nsw i32 %24, -1, !dbg !1024
  store i32 %25, ptr %10, align 4, !dbg !1024
  %26 = icmp sge i32 %25, 0, !dbg !1025
  br i1 %26, label %27, label %73, !dbg !1023

27:                                               ; preds = %23
  store i32 0, ptr %16, align 4, !dbg !1026
  br label %28, !dbg !1029

28:                                               ; preds = %65, %27
  %29 = load i32, ptr %16, align 4, !dbg !1030
  %30 = load i32, ptr %14, align 4, !dbg !1032
  %31 = icmp slt i32 %29, %30, !dbg !1033
  br i1 %31, label %32, label %68, !dbg !1034

32:                                               ; preds = %28
  %33 = load ptr, ptr %7, align 8, !dbg !1035
  %34 = load i32, ptr %16, align 4, !dbg !1037
  %35 = sext i32 %34 to i64, !dbg !1035
  %36 = getelementptr inbounds ptr, ptr %33, i64 %35, !dbg !1035
  %37 = load ptr, ptr %36, align 8, !dbg !1035
  %38 = load i32, ptr %8, align 4, !dbg !1038
  %39 = zext i32 %38 to i64, !dbg !1035
  %40 = getelementptr inbounds nuw ptr, ptr %37, i64 %39, !dbg !1035
  %41 = load ptr, ptr %40, align 8, !dbg !1035
  store ptr %41, ptr %11, align 8, !dbg !1039
  %42 = load ptr, ptr %9, align 8, !dbg !1040
  %43 = getelementptr inbounds ptr, ptr %42, i64 0, !dbg !1040
  %44 = load ptr, ptr %43, align 8, !dbg !1040
  %45 = load i32, ptr %16, align 4, !dbg !1041
  %46 = sext i32 %45 to i64, !dbg !1042
  %47 = getelementptr inbounds i8, ptr %44, i64 %46, !dbg !1042
  store ptr %47, ptr %12, align 8, !dbg !1043
  %48 = load i32, ptr %15, align 4, !dbg !1044
  store i32 %48, ptr %13, align 4, !dbg !1046
  br label %49, !dbg !1047

49:                                               ; preds = %61, %32
  %50 = load i32, ptr %13, align 4, !dbg !1048
  %51 = icmp ugt i32 %50, 0, !dbg !1050
  br i1 %51, label %52, label %64, !dbg !1051

52:                                               ; preds = %49
  %53 = load ptr, ptr %11, align 8, !dbg !1052
  %54 = getelementptr inbounds nuw i8, ptr %53, i32 1, !dbg !1052
  store ptr %54, ptr %11, align 8, !dbg !1052
  %55 = load i8, ptr %53, align 1, !dbg !1054
  %56 = load ptr, ptr %12, align 8, !dbg !1055
  store i8 %55, ptr %56, align 1, !dbg !1056
  %57 = load i32, ptr %14, align 4, !dbg !1057
  %58 = load ptr, ptr %12, align 8, !dbg !1058
  %59 = sext i32 %57 to i64, !dbg !1058
  %60 = getelementptr inbounds i8, ptr %58, i64 %59, !dbg !1058
  store ptr %60, ptr %12, align 8, !dbg !1058
  br label %61, !dbg !1059

61:                                               ; preds = %52
  %62 = load i32, ptr %13, align 4, !dbg !1060
  %63 = add i32 %62, -1, !dbg !1060
  store i32 %63, ptr %13, align 4, !dbg !1060
  br label %49, !dbg !1061, !llvm.loop !1062

64:                                               ; preds = %49
  br label %65, !dbg !1064

65:                                               ; preds = %64
  %66 = load i32, ptr %16, align 4, !dbg !1065
  %67 = add nsw i32 %66, 1, !dbg !1065
  store i32 %67, ptr %16, align 4, !dbg !1065
  br label %28, !dbg !1066, !llvm.loop !1067

68:                                               ; preds = %28
  %69 = load i32, ptr %8, align 4, !dbg !1069
  %70 = add i32 %69, 1, !dbg !1069
  store i32 %70, ptr %8, align 4, !dbg !1069
  %71 = load ptr, ptr %9, align 8, !dbg !1070
  %72 = getelementptr inbounds nuw ptr, ptr %71, i32 1, !dbg !1070
  store ptr %72, ptr %9, align 8, !dbg !1070
  br label %23, !dbg !1023, !llvm.loop !1071

73:                                               ; preds = %23
  ret void, !dbg !1073
}

; Function Attrs: noinline nounwind uwtable
define internal void @ycck_cmyk_convert(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) #0 !dbg !1074 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  %19 = alloca ptr, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca ptr, align 8
  %23 = alloca ptr, align 8
  %24 = alloca ptr, align 8
  %25 = alloca ptr, align 8
  %26 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8
    #dbg_declare(ptr %6, !1075, !DIExpression(), !1076)
  store ptr %1, ptr %7, align 8
    #dbg_declare(ptr %7, !1077, !DIExpression(), !1078)
  store i32 %2, ptr %8, align 4
    #dbg_declare(ptr %8, !1079, !DIExpression(), !1080)
  store ptr %3, ptr %9, align 8
    #dbg_declare(ptr %9, !1081, !DIExpression(), !1082)
  store i32 %4, ptr %10, align 4
    #dbg_declare(ptr %10, !1083, !DIExpression(), !1084)
    #dbg_declare(ptr %11, !1085, !DIExpression(), !1086)
  %27 = load ptr, ptr %6, align 8, !dbg !1087
  %28 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %27, i32 0, i32 82, !dbg !1088
  %29 = load ptr, ptr %28, align 8, !dbg !1088
  store ptr %29, ptr %11, align 8, !dbg !1086
    #dbg_declare(ptr %12, !1089, !DIExpression(), !1090)
    #dbg_declare(ptr %13, !1091, !DIExpression(), !1092)
    #dbg_declare(ptr %14, !1093, !DIExpression(), !1094)
    #dbg_declare(ptr %15, !1095, !DIExpression(), !1096)
    #dbg_declare(ptr %16, !1097, !DIExpression(), !1098)
    #dbg_declare(ptr %17, !1099, !DIExpression(), !1100)
    #dbg_declare(ptr %18, !1101, !DIExpression(), !1102)
    #dbg_declare(ptr %19, !1103, !DIExpression(), !1104)
    #dbg_declare(ptr %20, !1105, !DIExpression(), !1106)
    #dbg_declare(ptr %21, !1107, !DIExpression(), !1108)
  %30 = load ptr, ptr %6, align 8, !dbg !1109
  %31 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %30, i32 0, i32 26, !dbg !1110
  %32 = load i32, ptr %31, align 8, !dbg !1110
  store i32 %32, ptr %21, align 4, !dbg !1108
    #dbg_declare(ptr %22, !1111, !DIExpression(), !1112)
  %33 = load ptr, ptr %6, align 8, !dbg !1113
  %34 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %33, i32 0, i32 61, !dbg !1114
  %35 = load ptr, ptr %34, align 8, !dbg !1114
  store ptr %35, ptr %22, align 8, !dbg !1112
    #dbg_declare(ptr %23, !1115, !DIExpression(), !1116)
  %36 = load ptr, ptr %11, align 8, !dbg !1117
  %37 = getelementptr inbounds nuw %struct.my_color_deconverter, ptr %36, i32 0, i32 1, !dbg !1118
  %38 = load ptr, ptr %37, align 8, !dbg !1118
  store ptr %38, ptr %23, align 8, !dbg !1116
    #dbg_declare(ptr %24, !1119, !DIExpression(), !1120)
  %39 = load ptr, ptr %11, align 8, !dbg !1121
  %40 = getelementptr inbounds nuw %struct.my_color_deconverter, ptr %39, i32 0, i32 2, !dbg !1122
  %41 = load ptr, ptr %40, align 8, !dbg !1122
  store ptr %41, ptr %24, align 8, !dbg !1120
    #dbg_declare(ptr %25, !1123, !DIExpression(), !1124)
  %42 = load ptr, ptr %11, align 8, !dbg !1125
  %43 = getelementptr inbounds nuw %struct.my_color_deconverter, ptr %42, i32 0, i32 3, !dbg !1126
  %44 = load ptr, ptr %43, align 8, !dbg !1126
  store ptr %44, ptr %25, align 8, !dbg !1124
    #dbg_declare(ptr %26, !1127, !DIExpression(), !1128)
  %45 = load ptr, ptr %11, align 8, !dbg !1129
  %46 = getelementptr inbounds nuw %struct.my_color_deconverter, ptr %45, i32 0, i32 4, !dbg !1130
  %47 = load ptr, ptr %46, align 8, !dbg !1130
  store ptr %47, ptr %26, align 8, !dbg !1128
  br label %48, !dbg !1131

48:                                               ; preds = %171, %5
  %49 = load i32, ptr %10, align 4, !dbg !1132
  %50 = add nsw i32 %49, -1, !dbg !1132
  store i32 %50, ptr %10, align 4, !dbg !1132
  %51 = icmp sge i32 %50, 0, !dbg !1133
  br i1 %51, label %52, label %172, !dbg !1131

52:                                               ; preds = %48
  %53 = load ptr, ptr %7, align 8, !dbg !1134
  %54 = getelementptr inbounds ptr, ptr %53, i64 0, !dbg !1134
  %55 = load ptr, ptr %54, align 8, !dbg !1134
  %56 = load i32, ptr %8, align 4, !dbg !1136
  %57 = zext i32 %56 to i64, !dbg !1134
  %58 = getelementptr inbounds nuw ptr, ptr %55, i64 %57, !dbg !1134
  %59 = load ptr, ptr %58, align 8, !dbg !1134
  store ptr %59, ptr %16, align 8, !dbg !1137
  %60 = load ptr, ptr %7, align 8, !dbg !1138
  %61 = getelementptr inbounds ptr, ptr %60, i64 1, !dbg !1138
  %62 = load ptr, ptr %61, align 8, !dbg !1138
  %63 = load i32, ptr %8, align 4, !dbg !1139
  %64 = zext i32 %63 to i64, !dbg !1138
  %65 = getelementptr inbounds nuw ptr, ptr %62, i64 %64, !dbg !1138
  %66 = load ptr, ptr %65, align 8, !dbg !1138
  store ptr %66, ptr %17, align 8, !dbg !1140
  %67 = load ptr, ptr %7, align 8, !dbg !1141
  %68 = getelementptr inbounds ptr, ptr %67, i64 2, !dbg !1141
  %69 = load ptr, ptr %68, align 8, !dbg !1141
  %70 = load i32, ptr %8, align 4, !dbg !1142
  %71 = zext i32 %70 to i64, !dbg !1141
  %72 = getelementptr inbounds nuw ptr, ptr %69, i64 %71, !dbg !1141
  %73 = load ptr, ptr %72, align 8, !dbg !1141
  store ptr %73, ptr %18, align 8, !dbg !1143
  %74 = load ptr, ptr %7, align 8, !dbg !1144
  %75 = getelementptr inbounds ptr, ptr %74, i64 3, !dbg !1144
  %76 = load ptr, ptr %75, align 8, !dbg !1144
  %77 = load i32, ptr %8, align 4, !dbg !1145
  %78 = zext i32 %77 to i64, !dbg !1144
  %79 = getelementptr inbounds nuw ptr, ptr %76, i64 %78, !dbg !1144
  %80 = load ptr, ptr %79, align 8, !dbg !1144
  store ptr %80, ptr %19, align 8, !dbg !1146
  %81 = load i32, ptr %8, align 4, !dbg !1147
  %82 = add i32 %81, 1, !dbg !1147
  store i32 %82, ptr %8, align 4, !dbg !1147
  %83 = load ptr, ptr %9, align 8, !dbg !1148
  %84 = getelementptr inbounds nuw ptr, ptr %83, i32 1, !dbg !1148
  store ptr %84, ptr %9, align 8, !dbg !1148
  %85 = load ptr, ptr %83, align 8, !dbg !1149
  store ptr %85, ptr %15, align 8, !dbg !1150
  store i32 0, ptr %20, align 4, !dbg !1151
  br label %86, !dbg !1153

86:                                               ; preds = %168, %52
  %87 = load i32, ptr %20, align 4, !dbg !1154
  %88 = load i32, ptr %21, align 4, !dbg !1156
  %89 = icmp ult i32 %87, %88, !dbg !1157
  br i1 %89, label %90, label %171, !dbg !1158

90:                                               ; preds = %86
  %91 = load ptr, ptr %16, align 8, !dbg !1159
  %92 = load i32, ptr %20, align 4, !dbg !1159
  %93 = zext i32 %92 to i64, !dbg !1159
  %94 = getelementptr inbounds nuw i8, ptr %91, i64 %93, !dbg !1159
  %95 = load i8, ptr %94, align 1, !dbg !1159
  %96 = zext i8 %95 to i32, !dbg !1159
  store i32 %96, ptr %12, align 4, !dbg !1161
  %97 = load ptr, ptr %17, align 8, !dbg !1162
  %98 = load i32, ptr %20, align 4, !dbg !1162
  %99 = zext i32 %98 to i64, !dbg !1162
  %100 = getelementptr inbounds nuw i8, ptr %97, i64 %99, !dbg !1162
  %101 = load i8, ptr %100, align 1, !dbg !1162
  %102 = zext i8 %101 to i32, !dbg !1162
  store i32 %102, ptr %13, align 4, !dbg !1163
  %103 = load ptr, ptr %18, align 8, !dbg !1164
  %104 = load i32, ptr %20, align 4, !dbg !1164
  %105 = zext i32 %104 to i64, !dbg !1164
  %106 = getelementptr inbounds nuw i8, ptr %103, i64 %105, !dbg !1164
  %107 = load i8, ptr %106, align 1, !dbg !1164
  %108 = zext i8 %107 to i32, !dbg !1164
  store i32 %108, ptr %14, align 4, !dbg !1165
  %109 = load ptr, ptr %22, align 8, !dbg !1166
  %110 = load i32, ptr %12, align 4, !dbg !1167
  %111 = load ptr, ptr %23, align 8, !dbg !1168
  %112 = load i32, ptr %14, align 4, !dbg !1169
  %113 = sext i32 %112 to i64, !dbg !1168
  %114 = getelementptr inbounds i32, ptr %111, i64 %113, !dbg !1168
  %115 = load i32, ptr %114, align 4, !dbg !1168
  %116 = add nsw i32 %110, %115, !dbg !1170
  %117 = sub nsw i32 255, %116, !dbg !1171
  %118 = sext i32 %117 to i64, !dbg !1166
  %119 = getelementptr inbounds i8, ptr %109, i64 %118, !dbg !1166
  %120 = load i8, ptr %119, align 1, !dbg !1166
  %121 = load ptr, ptr %15, align 8, !dbg !1172
  %122 = getelementptr inbounds i8, ptr %121, i64 0, !dbg !1172
  store i8 %120, ptr %122, align 1, !dbg !1173
  %123 = load ptr, ptr %22, align 8, !dbg !1174
  %124 = load i32, ptr %12, align 4, !dbg !1175
  %125 = load ptr, ptr %26, align 8, !dbg !1176
  %126 = load i32, ptr %13, align 4, !dbg !1176
  %127 = sext i32 %126 to i64, !dbg !1176
  %128 = getelementptr inbounds i64, ptr %125, i64 %127, !dbg !1176
  %129 = load i64, ptr %128, align 8, !dbg !1176
  %130 = load ptr, ptr %25, align 8, !dbg !1176
  %131 = load i32, ptr %14, align 4, !dbg !1176
  %132 = sext i32 %131 to i64, !dbg !1176
  %133 = getelementptr inbounds i64, ptr %130, i64 %132, !dbg !1176
  %134 = load i64, ptr %133, align 8, !dbg !1176
  %135 = add nsw i64 %129, %134, !dbg !1176
  %136 = ashr i64 %135, 16, !dbg !1176
  %137 = trunc i64 %136 to i32, !dbg !1177
  %138 = add nsw i32 %124, %137, !dbg !1178
  %139 = sub nsw i32 255, %138, !dbg !1179
  %140 = sext i32 %139 to i64, !dbg !1174
  %141 = getelementptr inbounds i8, ptr %123, i64 %140, !dbg !1174
  %142 = load i8, ptr %141, align 1, !dbg !1174
  %143 = load ptr, ptr %15, align 8, !dbg !1180
  %144 = getelementptr inbounds i8, ptr %143, i64 1, !dbg !1180
  store i8 %142, ptr %144, align 1, !dbg !1181
  %145 = load ptr, ptr %22, align 8, !dbg !1182
  %146 = load i32, ptr %12, align 4, !dbg !1183
  %147 = load ptr, ptr %24, align 8, !dbg !1184
  %148 = load i32, ptr %13, align 4, !dbg !1185
  %149 = sext i32 %148 to i64, !dbg !1184
  %150 = getelementptr inbounds i32, ptr %147, i64 %149, !dbg !1184
  %151 = load i32, ptr %150, align 4, !dbg !1184
  %152 = add nsw i32 %146, %151, !dbg !1186
  %153 = sub nsw i32 255, %152, !dbg !1187
  %154 = sext i32 %153 to i64, !dbg !1182
  %155 = getelementptr inbounds i8, ptr %145, i64 %154, !dbg !1182
  %156 = load i8, ptr %155, align 1, !dbg !1182
  %157 = load ptr, ptr %15, align 8, !dbg !1188
  %158 = getelementptr inbounds i8, ptr %157, i64 2, !dbg !1188
  store i8 %156, ptr %158, align 1, !dbg !1189
  %159 = load ptr, ptr %19, align 8, !dbg !1190
  %160 = load i32, ptr %20, align 4, !dbg !1191
  %161 = zext i32 %160 to i64, !dbg !1190
  %162 = getelementptr inbounds nuw i8, ptr %159, i64 %161, !dbg !1190
  %163 = load i8, ptr %162, align 1, !dbg !1190
  %164 = load ptr, ptr %15, align 8, !dbg !1192
  %165 = getelementptr inbounds i8, ptr %164, i64 3, !dbg !1192
  store i8 %163, ptr %165, align 1, !dbg !1193
  %166 = load ptr, ptr %15, align 8, !dbg !1194
  %167 = getelementptr inbounds i8, ptr %166, i64 4, !dbg !1194
  store ptr %167, ptr %15, align 8, !dbg !1194
  br label %168, !dbg !1195

168:                                              ; preds = %90
  %169 = load i32, ptr %20, align 4, !dbg !1196
  %170 = add i32 %169, 1, !dbg !1196
  store i32 %170, ptr %20, align 4, !dbg !1196
  br label %86, !dbg !1197, !llvm.loop !1198

171:                                              ; preds = %86
  br label %48, !dbg !1131, !llvm.loop !1200

172:                                              ; preds = %48
  ret void, !dbg !1202
}

declare void @jcopy_sample_rows(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!586, !587, !588, !589, !590, !591, !592}
!llvm.ident = !{!593}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !154, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jdcolor.c", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "8a1284c820bd8fbe3d82391cab512d0d")
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
!154 = !{!155, !179, !194, !560, !193, !580, !583, !584}
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "my_cconvert_ptr", file: !1, line: 28, baseType: !156)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "my_color_deconverter", file: !1, line: 26, baseType: !158)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 18, size: 384, elements: !159)
!159 = !{!160, !579, !581, !582, !585}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "pub", scope: !158, file: !1, line: 19, baseType: !161, size: 128)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_color_deconverter", file: !24, line: 244, size: 128, elements: !162)
!162 = !{!163, !575}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !161, file: !24, line: 245, baseType: !164, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = !DISubroutineType(types: !166)
!166 = !{null, !167}
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "j_decompress_ptr", file: !4, line: 250, baseType: !168)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_decompress_struct", file: !4, line: 394, size: 4928, elements: !170)
!170 = !{!171, !298, !299, !300, !301, !302, !325, !326, !327, !328, !330, !331, !332, !333, !335, !336, !337, !339, !340, !341, !342, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !364, !377, !393, !394, !395, !421, !422, !423, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !445, !446, !447, !448, !452, !453, !454, !455, !456, !457, !464, !478, !496, !505, !515, !530, !539, !552, !559, !561}
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
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_upsampler", file: !24, line: 230, size: 192, elements: !555)
!555 = !{!556, !557, !558}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !554, file: !24, line: 231, baseType: !164, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "upsample", scope: !554, file: !24, line: 232, baseType: !502, size: 64, offset: 64)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "need_context_rows", scope: !554, file: !24, line: 240, baseType: !231, size: 32, offset: 128)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "cconvert", scope: !169, file: !4, line: 603, baseType: !560, size: 64, offset: 4800)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "cquantize", scope: !169, file: !4, line: 604, baseType: !562, size: 64, offset: 4864)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_color_quantizer", file: !24, line: 252, size: 256, elements: !564)
!564 = !{!565, !569, !573, !574}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !563, file: !24, line: 253, baseType: !566, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!567 = !DISubroutineType(types: !568)
!568 = !{null, !167, !231}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "color_quantize", scope: !563, file: !24, line: 254, baseType: !570, size: 64, offset: 64)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!571 = !DISubroutineType(types: !572)
!572 = !{null, !167, !202, !202, !193}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "finish_pass", scope: !563, file: !24, line: 257, baseType: !164, size: 64, offset: 128)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "new_color_map", scope: !563, file: !24, line: 258, baseType: !164, size: 64, offset: 192)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "color_convert", scope: !161, file: !24, line: 246, baseType: !576, size: 64, offset: 64)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = !DISubroutineType(types: !578)
!578 = !{null, !167, !492, !209, !202, !193}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "Cr_r_tab", scope: !158, file: !1, line: 22, baseType: !580, size: 64, offset: 128)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "Cb_b_tab", scope: !158, file: !1, line: 23, baseType: !580, size: 64, offset: 192)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "Cr_g_tab", scope: !158, file: !1, line: 24, baseType: !583, size: 64, offset: 256)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT32", file: !207, line: 161, baseType: !254)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "Cb_g_tab", scope: !158, file: !1, line: 25, baseType: !583, size: 64, offset: 320)
!586 = !{i32 7, !"Dwarf Version", i32 5}
!587 = !{i32 2, !"Debug Info Version", i32 3}
!588 = !{i32 1, !"wchar_size", i32 4}
!589 = !{i32 8, !"PIC Level", i32 2}
!590 = !{i32 7, !"PIE Level", i32 2}
!591 = !{i32 7, !"uwtable", i32 2}
!592 = !{i32 7, !"frame-pointer", i32 2}
!593 = !{!"clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)"}
!594 = distinct !DISubprogram(name: "jinit_color_deconverter", scope: !1, file: !1, line: 277, type: !165, scopeLine: 278, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !595)
!595 = !{}
!596 = !DILocalVariable(name: "cinfo", arg: 1, scope: !594, file: !1, line: 277, type: !167)
!597 = !DILocation(line: 277, column: 43, scope: !594)
!598 = !DILocalVariable(name: "cconvert", scope: !594, file: !1, line: 279, type: !155)
!599 = !DILocation(line: 279, column: 19, scope: !594)
!600 = !DILocalVariable(name: "ci", scope: !594, file: !1, line: 280, type: !193)
!601 = !DILocation(line: 280, column: 7, scope: !594)
!602 = !DILocation(line: 283, column: 7, scope: !594)
!603 = !DILocation(line: 283, column: 14, scope: !594)
!604 = !DILocation(line: 283, column: 19, scope: !594)
!605 = !DILocation(line: 283, column: 48, scope: !594)
!606 = !DILocation(line: 283, column: 5, scope: !594)
!607 = !DILocation(line: 282, column: 12, scope: !594)
!608 = !DILocation(line: 285, column: 55, scope: !594)
!609 = !DILocation(line: 285, column: 3, scope: !594)
!610 = !DILocation(line: 285, column: 10, scope: !594)
!611 = !DILocation(line: 285, column: 19, scope: !594)
!612 = !DILocation(line: 286, column: 3, scope: !594)
!613 = !DILocation(line: 286, column: 13, scope: !594)
!614 = !DILocation(line: 286, column: 17, scope: !594)
!615 = !DILocation(line: 286, column: 28, scope: !594)
!616 = !DILocation(line: 289, column: 11, scope: !594)
!617 = !DILocation(line: 289, column: 18, scope: !594)
!618 = !DILocation(line: 289, column: 3, scope: !594)
!619 = !DILocation(line: 291, column: 9, scope: !620)
!620 = distinct !DILexicalBlock(scope: !621, file: !1, line: 291, column: 9)
!621 = distinct !DILexicalBlock(scope: !594, file: !1, line: 289, column: 36)
!622 = !DILocation(line: 291, column: 16, scope: !620)
!623 = !DILocation(line: 291, column: 31, scope: !620)
!624 = !DILocation(line: 292, column: 7, scope: !620)
!625 = !DILocation(line: 293, column: 5, scope: !621)
!626 = !DILocation(line: 297, column: 9, scope: !627)
!627 = distinct !DILexicalBlock(scope: !621, file: !1, line: 297, column: 9)
!628 = !DILocation(line: 297, column: 16, scope: !627)
!629 = !DILocation(line: 297, column: 31, scope: !627)
!630 = !DILocation(line: 298, column: 7, scope: !627)
!631 = !DILocation(line: 299, column: 5, scope: !621)
!632 = !DILocation(line: 303, column: 9, scope: !633)
!633 = distinct !DILexicalBlock(scope: !621, file: !1, line: 303, column: 9)
!634 = !DILocation(line: 303, column: 16, scope: !633)
!635 = !DILocation(line: 303, column: 31, scope: !633)
!636 = !DILocation(line: 304, column: 7, scope: !633)
!637 = !DILocation(line: 305, column: 5, scope: !621)
!638 = !DILocation(line: 308, column: 9, scope: !639)
!639 = distinct !DILexicalBlock(scope: !621, file: !1, line: 308, column: 9)
!640 = !DILocation(line: 308, column: 16, scope: !639)
!641 = !DILocation(line: 308, column: 31, scope: !639)
!642 = !DILocation(line: 309, column: 7, scope: !639)
!643 = !DILocation(line: 310, column: 5, scope: !621)
!644 = !DILocation(line: 318, column: 11, scope: !594)
!645 = !DILocation(line: 318, column: 18, scope: !594)
!646 = !DILocation(line: 318, column: 3, scope: !594)
!647 = !DILocation(line: 320, column: 5, scope: !648)
!648 = distinct !DILexicalBlock(scope: !594, file: !1, line: 318, column: 35)
!649 = !DILocation(line: 320, column: 12, scope: !648)
!650 = !DILocation(line: 320, column: 33, scope: !648)
!651 = !DILocation(line: 321, column: 9, scope: !652)
!652 = distinct !DILexicalBlock(scope: !648, file: !1, line: 321, column: 9)
!653 = !DILocation(line: 321, column: 16, scope: !652)
!654 = !DILocation(line: 321, column: 33, scope: !652)
!655 = !DILocation(line: 321, column: 50, scope: !652)
!656 = !DILocation(line: 322, column: 2, scope: !652)
!657 = !DILocation(line: 322, column: 9, scope: !652)
!658 = !DILocation(line: 322, column: 26, scope: !652)
!659 = !DILocation(line: 323, column: 7, scope: !660)
!660 = distinct !DILexicalBlock(scope: !652, file: !1, line: 322, column: 40)
!661 = !DILocation(line: 323, column: 17, scope: !660)
!662 = !DILocation(line: 323, column: 21, scope: !660)
!663 = !DILocation(line: 323, column: 35, scope: !660)
!664 = !DILocation(line: 325, column: 15, scope: !665)
!665 = distinct !DILexicalBlock(scope: !660, file: !1, line: 325, column: 7)
!666 = !DILocation(line: 325, column: 12, scope: !665)
!667 = !DILocation(line: 325, column: 20, scope: !668)
!668 = distinct !DILexicalBlock(scope: !665, file: !1, line: 325, column: 7)
!669 = !DILocation(line: 325, column: 25, scope: !668)
!670 = !DILocation(line: 325, column: 32, scope: !668)
!671 = !DILocation(line: 325, column: 23, scope: !668)
!672 = !DILocation(line: 325, column: 7, scope: !665)
!673 = !DILocation(line: 326, column: 2, scope: !668)
!674 = !DILocation(line: 326, column: 9, scope: !668)
!675 = !DILocation(line: 326, column: 19, scope: !668)
!676 = !DILocation(line: 326, column: 23, scope: !668)
!677 = !DILocation(line: 326, column: 40, scope: !668)
!678 = !DILocation(line: 325, column: 50, scope: !668)
!679 = !DILocation(line: 325, column: 7, scope: !668)
!680 = distinct !{!680, !672, !681, !682}
!681 = !DILocation(line: 326, column: 42, scope: !665)
!682 = !{!"llvm.loop.mustprogress"}
!683 = !DILocation(line: 327, column: 5, scope: !660)
!684 = !DILocation(line: 328, column: 7, scope: !652)
!685 = !DILocation(line: 329, column: 5, scope: !648)
!686 = !DILocation(line: 332, column: 5, scope: !648)
!687 = !DILocation(line: 332, column: 12, scope: !648)
!688 = !DILocation(line: 332, column: 33, scope: !648)
!689 = !DILocation(line: 333, column: 9, scope: !690)
!690 = distinct !DILexicalBlock(scope: !648, file: !1, line: 333, column: 9)
!691 = !DILocation(line: 333, column: 16, scope: !690)
!692 = !DILocation(line: 333, column: 33, scope: !690)
!693 = !DILocation(line: 334, column: 7, scope: !694)
!694 = distinct !DILexicalBlock(scope: !690, file: !1, line: 333, column: 47)
!695 = !DILocation(line: 334, column: 17, scope: !694)
!696 = !DILocation(line: 334, column: 21, scope: !694)
!697 = !DILocation(line: 334, column: 35, scope: !694)
!698 = !DILocation(line: 335, column: 27, scope: !694)
!699 = !DILocation(line: 335, column: 7, scope: !694)
!700 = !DILocation(line: 336, column: 5, scope: !694)
!701 = !DILocation(line: 336, column: 16, scope: !702)
!702 = distinct !DILexicalBlock(scope: !690, file: !1, line: 336, column: 16)
!703 = !DILocation(line: 336, column: 23, scope: !702)
!704 = !DILocation(line: 336, column: 40, scope: !702)
!705 = !DILocation(line: 336, column: 51, scope: !702)
!706 = !DILocation(line: 337, column: 7, scope: !707)
!707 = distinct !DILexicalBlock(scope: !702, file: !1, line: 336, column: 74)
!708 = !DILocation(line: 337, column: 17, scope: !707)
!709 = !DILocation(line: 337, column: 21, scope: !707)
!710 = !DILocation(line: 337, column: 35, scope: !707)
!711 = !DILocation(line: 338, column: 5, scope: !707)
!712 = !DILocation(line: 339, column: 7, scope: !702)
!713 = !DILocation(line: 340, column: 5, scope: !648)
!714 = !DILocation(line: 343, column: 5, scope: !648)
!715 = !DILocation(line: 343, column: 12, scope: !648)
!716 = !DILocation(line: 343, column: 33, scope: !648)
!717 = !DILocation(line: 344, column: 9, scope: !718)
!718 = distinct !DILexicalBlock(scope: !648, file: !1, line: 344, column: 9)
!719 = !DILocation(line: 344, column: 16, scope: !718)
!720 = !DILocation(line: 344, column: 33, scope: !718)
!721 = !DILocation(line: 345, column: 7, scope: !722)
!722 = distinct !DILexicalBlock(scope: !718, file: !1, line: 344, column: 46)
!723 = !DILocation(line: 345, column: 17, scope: !722)
!724 = !DILocation(line: 345, column: 21, scope: !722)
!725 = !DILocation(line: 345, column: 35, scope: !722)
!726 = !DILocation(line: 346, column: 27, scope: !722)
!727 = !DILocation(line: 346, column: 7, scope: !722)
!728 = !DILocation(line: 347, column: 5, scope: !722)
!729 = !DILocation(line: 347, column: 16, scope: !730)
!730 = distinct !DILexicalBlock(scope: !718, file: !1, line: 347, column: 16)
!731 = !DILocation(line: 347, column: 23, scope: !730)
!732 = !DILocation(line: 347, column: 40, scope: !730)
!733 = !DILocation(line: 348, column: 7, scope: !734)
!734 = distinct !DILexicalBlock(scope: !730, file: !1, line: 347, column: 53)
!735 = !DILocation(line: 348, column: 17, scope: !734)
!736 = !DILocation(line: 348, column: 21, scope: !734)
!737 = !DILocation(line: 348, column: 35, scope: !734)
!738 = !DILocation(line: 349, column: 5, scope: !734)
!739 = !DILocation(line: 350, column: 7, scope: !730)
!740 = !DILocation(line: 351, column: 5, scope: !648)
!741 = !DILocation(line: 355, column: 9, scope: !742)
!742 = distinct !DILexicalBlock(scope: !648, file: !1, line: 355, column: 9)
!743 = !DILocation(line: 355, column: 16, scope: !742)
!744 = !DILocation(line: 355, column: 35, scope: !742)
!745 = !DILocation(line: 355, column: 42, scope: !742)
!746 = !DILocation(line: 355, column: 32, scope: !742)
!747 = !DILocation(line: 356, column: 37, scope: !748)
!748 = distinct !DILexicalBlock(scope: !742, file: !1, line: 355, column: 60)
!749 = !DILocation(line: 356, column: 44, scope: !748)
!750 = !DILocation(line: 356, column: 7, scope: !748)
!751 = !DILocation(line: 356, column: 14, scope: !748)
!752 = !DILocation(line: 356, column: 35, scope: !748)
!753 = !DILocation(line: 357, column: 7, scope: !748)
!754 = !DILocation(line: 357, column: 17, scope: !748)
!755 = !DILocation(line: 357, column: 21, scope: !748)
!756 = !DILocation(line: 357, column: 35, scope: !748)
!757 = !DILocation(line: 358, column: 5, scope: !748)
!758 = !DILocation(line: 359, column: 7, scope: !742)
!759 = !DILocation(line: 360, column: 5, scope: !648)
!760 = !DILocation(line: 363, column: 7, scope: !761)
!761 = distinct !DILexicalBlock(scope: !594, file: !1, line: 363, column: 7)
!762 = !DILocation(line: 363, column: 14, scope: !761)
!763 = !DILocation(line: 364, column: 5, scope: !761)
!764 = !DILocation(line: 364, column: 12, scope: !761)
!765 = !DILocation(line: 364, column: 30, scope: !761)
!766 = !DILocation(line: 366, column: 32, scope: !761)
!767 = !DILocation(line: 366, column: 39, scope: !761)
!768 = !DILocation(line: 366, column: 5, scope: !761)
!769 = !DILocation(line: 366, column: 12, scope: !761)
!770 = !DILocation(line: 366, column: 30, scope: !761)
!771 = !DILocation(line: 367, column: 1, scope: !594)
!772 = distinct !DISubprogram(name: "start_pass_dcolor", scope: !1, file: !1, line: 266, type: !165, scopeLine: 267, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !595)
!773 = !DILocalVariable(name: "cinfo", arg: 1, scope: !772, file: !1, line: 266, type: !167)
!774 = !DILocation(line: 266, column: 37, scope: !772)
!775 = !DILocation(line: 269, column: 1, scope: !772)
!776 = distinct !DISubprogram(name: "grayscale_convert", scope: !1, file: !1, line: 201, type: !577, scopeLine: 204, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !595)
!777 = !DILocalVariable(name: "cinfo", arg: 1, scope: !776, file: !1, line: 201, type: !167)
!778 = !DILocation(line: 201, column: 37, scope: !776)
!779 = !DILocalVariable(name: "input_buf", arg: 2, scope: !776, file: !1, line: 202, type: !492)
!780 = !DILocation(line: 202, column: 17, scope: !776)
!781 = !DILocalVariable(name: "input_row", arg: 3, scope: !776, file: !1, line: 202, type: !209)
!782 = !DILocation(line: 202, column: 39, scope: !776)
!783 = !DILocalVariable(name: "output_buf", arg: 4, scope: !776, file: !1, line: 203, type: !202)
!784 = !DILocation(line: 203, column: 17, scope: !776)
!785 = !DILocalVariable(name: "num_rows", arg: 5, scope: !776, file: !1, line: 203, type: !193)
!786 = !DILocation(line: 203, column: 33, scope: !776)
!787 = !DILocation(line: 205, column: 21, scope: !776)
!788 = !DILocation(line: 205, column: 41, scope: !776)
!789 = !DILocation(line: 205, column: 52, scope: !776)
!790 = !DILocation(line: 206, column: 7, scope: !776)
!791 = !DILocation(line: 206, column: 17, scope: !776)
!792 = !DILocation(line: 206, column: 24, scope: !776)
!793 = !DILocation(line: 205, column: 3, scope: !776)
!794 = !DILocation(line: 207, column: 1, scope: !776)
!795 = distinct !DISubprogram(name: "ycc_rgb_convert", scope: !1, file: !1, line: 120, type: !577, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !595)
!796 = !DILocalVariable(name: "cinfo", arg: 1, scope: !795, file: !1, line: 120, type: !167)
!797 = !DILocation(line: 120, column: 35, scope: !795)
!798 = !DILocalVariable(name: "input_buf", arg: 2, scope: !795, file: !1, line: 121, type: !492)
!799 = !DILocation(line: 121, column: 15, scope: !795)
!800 = !DILocalVariable(name: "input_row", arg: 3, scope: !795, file: !1, line: 121, type: !209)
!801 = !DILocation(line: 121, column: 37, scope: !795)
!802 = !DILocalVariable(name: "output_buf", arg: 4, scope: !795, file: !1, line: 122, type: !202)
!803 = !DILocation(line: 122, column: 15, scope: !795)
!804 = !DILocalVariable(name: "num_rows", arg: 5, scope: !795, file: !1, line: 122, type: !193)
!805 = !DILocation(line: 122, column: 31, scope: !795)
!806 = !DILocalVariable(name: "cconvert", scope: !795, file: !1, line: 124, type: !155)
!807 = !DILocation(line: 124, column: 19, scope: !795)
!808 = !DILocation(line: 124, column: 48, scope: !795)
!809 = !DILocation(line: 124, column: 55, scope: !795)
!810 = !DILocalVariable(name: "y", scope: !795, file: !1, line: 125, type: !193)
!811 = !DILocation(line: 125, column: 16, scope: !795)
!812 = !DILocalVariable(name: "cb", scope: !795, file: !1, line: 125, type: !193)
!813 = !DILocation(line: 125, column: 19, scope: !795)
!814 = !DILocalVariable(name: "cr", scope: !795, file: !1, line: 125, type: !193)
!815 = !DILocation(line: 125, column: 23, scope: !795)
!816 = !DILocalVariable(name: "outptr", scope: !795, file: !1, line: 126, type: !204)
!817 = !DILocation(line: 126, column: 21, scope: !795)
!818 = !DILocalVariable(name: "inptr0", scope: !795, file: !1, line: 127, type: !204)
!819 = !DILocation(line: 127, column: 21, scope: !795)
!820 = !DILocalVariable(name: "inptr1", scope: !795, file: !1, line: 127, type: !204)
!821 = !DILocation(line: 127, column: 29, scope: !795)
!822 = !DILocalVariable(name: "inptr2", scope: !795, file: !1, line: 127, type: !204)
!823 = !DILocation(line: 127, column: 37, scope: !795)
!824 = !DILocalVariable(name: "col", scope: !795, file: !1, line: 128, type: !209)
!825 = !DILocation(line: 128, column: 23, scope: !795)
!826 = !DILocalVariable(name: "num_cols", scope: !795, file: !1, line: 129, type: !209)
!827 = !DILocation(line: 129, column: 14, scope: !795)
!828 = !DILocation(line: 129, column: 25, scope: !795)
!829 = !DILocation(line: 129, column: 32, scope: !795)
!830 = !DILocalVariable(name: "range_limit", scope: !795, file: !1, line: 131, type: !205)
!831 = !DILocation(line: 131, column: 22, scope: !795)
!832 = !DILocation(line: 131, column: 36, scope: !795)
!833 = !DILocation(line: 131, column: 43, scope: !795)
!834 = !DILocalVariable(name: "Crrtab", scope: !795, file: !1, line: 132, type: !580)
!835 = !DILocation(line: 132, column: 18, scope: !795)
!836 = !DILocation(line: 132, column: 27, scope: !795)
!837 = !DILocation(line: 132, column: 37, scope: !795)
!838 = !DILocalVariable(name: "Cbbtab", scope: !795, file: !1, line: 133, type: !580)
!839 = !DILocation(line: 133, column: 18, scope: !795)
!840 = !DILocation(line: 133, column: 27, scope: !795)
!841 = !DILocation(line: 133, column: 37, scope: !795)
!842 = !DILocalVariable(name: "Crgtab", scope: !795, file: !1, line: 134, type: !583)
!843 = !DILocation(line: 134, column: 20, scope: !795)
!844 = !DILocation(line: 134, column: 29, scope: !795)
!845 = !DILocation(line: 134, column: 39, scope: !795)
!846 = !DILocalVariable(name: "Cbgtab", scope: !795, file: !1, line: 135, type: !583)
!847 = !DILocation(line: 135, column: 20, scope: !795)
!848 = !DILocation(line: 135, column: 29, scope: !795)
!849 = !DILocation(line: 135, column: 39, scope: !795)
!850 = !DILocation(line: 138, column: 3, scope: !795)
!851 = !DILocation(line: 138, column: 10, scope: !795)
!852 = !DILocation(line: 138, column: 21, scope: !795)
!853 = !DILocation(line: 139, column: 14, scope: !854)
!854 = distinct !DILexicalBlock(scope: !795, file: !1, line: 138, column: 27)
!855 = !DILocation(line: 139, column: 27, scope: !854)
!856 = !DILocation(line: 139, column: 12, scope: !854)
!857 = !DILocation(line: 140, column: 14, scope: !854)
!858 = !DILocation(line: 140, column: 27, scope: !854)
!859 = !DILocation(line: 140, column: 12, scope: !854)
!860 = !DILocation(line: 141, column: 14, scope: !854)
!861 = !DILocation(line: 141, column: 27, scope: !854)
!862 = !DILocation(line: 141, column: 12, scope: !854)
!863 = !DILocation(line: 142, column: 14, scope: !854)
!864 = !DILocation(line: 143, column: 25, scope: !854)
!865 = !DILocation(line: 143, column: 14, scope: !854)
!866 = !DILocation(line: 143, column: 12, scope: !854)
!867 = !DILocation(line: 144, column: 14, scope: !868)
!868 = distinct !DILexicalBlock(scope: !854, file: !1, line: 144, column: 5)
!869 = !DILocation(line: 144, column: 10, scope: !868)
!870 = !DILocation(line: 144, column: 19, scope: !871)
!871 = distinct !DILexicalBlock(scope: !868, file: !1, line: 144, column: 5)
!872 = !DILocation(line: 144, column: 25, scope: !871)
!873 = !DILocation(line: 144, column: 23, scope: !871)
!874 = !DILocation(line: 144, column: 5, scope: !868)
!875 = !DILocation(line: 145, column: 12, scope: !876)
!876 = distinct !DILexicalBlock(scope: !871, file: !1, line: 144, column: 42)
!877 = !DILocation(line: 145, column: 10, scope: !876)
!878 = !DILocation(line: 146, column: 12, scope: !876)
!879 = !DILocation(line: 146, column: 10, scope: !876)
!880 = !DILocation(line: 147, column: 12, scope: !876)
!881 = !DILocation(line: 147, column: 10, scope: !876)
!882 = !DILocation(line: 149, column: 27, scope: !876)
!883 = !DILocation(line: 149, column: 39, scope: !876)
!884 = !DILocation(line: 149, column: 43, scope: !876)
!885 = !DILocation(line: 149, column: 50, scope: !876)
!886 = !DILocation(line: 149, column: 41, scope: !876)
!887 = !DILocation(line: 149, column: 7, scope: !876)
!888 = !DILocation(line: 149, column: 23, scope: !876)
!889 = !DILocation(line: 150, column: 27, scope: !876)
!890 = !DILocation(line: 150, column: 39, scope: !876)
!891 = !DILocation(line: 151, column: 17, scope: !876)
!892 = !DILocation(line: 151, column: 11, scope: !876)
!893 = !DILocation(line: 150, column: 41, scope: !876)
!894 = !DILocation(line: 150, column: 7, scope: !876)
!895 = !DILocation(line: 150, column: 25, scope: !876)
!896 = !DILocation(line: 153, column: 27, scope: !876)
!897 = !DILocation(line: 153, column: 39, scope: !876)
!898 = !DILocation(line: 153, column: 43, scope: !876)
!899 = !DILocation(line: 153, column: 50, scope: !876)
!900 = !DILocation(line: 153, column: 41, scope: !876)
!901 = !DILocation(line: 153, column: 7, scope: !876)
!902 = !DILocation(line: 153, column: 24, scope: !876)
!903 = !DILocation(line: 154, column: 14, scope: !876)
!904 = !DILocation(line: 155, column: 5, scope: !876)
!905 = !DILocation(line: 144, column: 38, scope: !871)
!906 = !DILocation(line: 144, column: 5, scope: !871)
!907 = distinct !{!907, !874, !908, !682}
!908 = !DILocation(line: 155, column: 5, scope: !868)
!909 = distinct !{!909, !850, !910, !682}
!910 = !DILocation(line: 156, column: 3, scope: !795)
!911 = !DILocation(line: 157, column: 1, scope: !795)
!912 = distinct !DISubprogram(name: "build_ycc_rgb_table", scope: !1, file: !1, line: 70, type: !165, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !595)
!913 = !DILocalVariable(name: "cinfo", arg: 1, scope: !912, file: !1, line: 70, type: !167)
!914 = !DILocation(line: 70, column: 39, scope: !912)
!915 = !DILocalVariable(name: "cconvert", scope: !912, file: !1, line: 72, type: !155)
!916 = !DILocation(line: 72, column: 19, scope: !912)
!917 = !DILocation(line: 72, column: 48, scope: !912)
!918 = !DILocation(line: 72, column: 55, scope: !912)
!919 = !DILocalVariable(name: "i", scope: !912, file: !1, line: 73, type: !193)
!920 = !DILocation(line: 73, column: 7, scope: !912)
!921 = !DILocalVariable(name: "x", scope: !912, file: !1, line: 74, type: !584)
!922 = !DILocation(line: 74, column: 9, scope: !912)
!923 = !DILocation(line: 78, column: 7, scope: !912)
!924 = !DILocation(line: 78, column: 14, scope: !912)
!925 = !DILocation(line: 78, column: 19, scope: !912)
!926 = !DILocation(line: 78, column: 48, scope: !912)
!927 = !DILocation(line: 78, column: 5, scope: !912)
!928 = !DILocation(line: 77, column: 3, scope: !912)
!929 = !DILocation(line: 77, column: 13, scope: !912)
!930 = !DILocation(line: 77, column: 22, scope: !912)
!931 = !DILocation(line: 81, column: 7, scope: !912)
!932 = !DILocation(line: 81, column: 14, scope: !912)
!933 = !DILocation(line: 81, column: 19, scope: !912)
!934 = !DILocation(line: 81, column: 48, scope: !912)
!935 = !DILocation(line: 81, column: 5, scope: !912)
!936 = !DILocation(line: 80, column: 3, scope: !912)
!937 = !DILocation(line: 80, column: 13, scope: !912)
!938 = !DILocation(line: 80, column: 22, scope: !912)
!939 = !DILocation(line: 84, column: 7, scope: !912)
!940 = !DILocation(line: 84, column: 14, scope: !912)
!941 = !DILocation(line: 84, column: 19, scope: !912)
!942 = !DILocation(line: 84, column: 48, scope: !912)
!943 = !DILocation(line: 84, column: 5, scope: !912)
!944 = !DILocation(line: 83, column: 3, scope: !912)
!945 = !DILocation(line: 83, column: 13, scope: !912)
!946 = !DILocation(line: 83, column: 22, scope: !912)
!947 = !DILocation(line: 87, column: 7, scope: !912)
!948 = !DILocation(line: 87, column: 14, scope: !912)
!949 = !DILocation(line: 87, column: 19, scope: !912)
!950 = !DILocation(line: 87, column: 48, scope: !912)
!951 = !DILocation(line: 87, column: 5, scope: !912)
!952 = !DILocation(line: 86, column: 3, scope: !912)
!953 = !DILocation(line: 86, column: 13, scope: !912)
!954 = !DILocation(line: 86, column: 22, scope: !912)
!955 = !DILocation(line: 90, column: 10, scope: !956)
!956 = distinct !DILexicalBlock(scope: !912, file: !1, line: 90, column: 3)
!957 = !DILocation(line: 90, column: 17, scope: !956)
!958 = !DILocation(line: 90, column: 8, scope: !956)
!959 = !DILocation(line: 90, column: 35, scope: !960)
!960 = distinct !DILexicalBlock(scope: !956, file: !1, line: 90, column: 3)
!961 = !DILocation(line: 90, column: 37, scope: !960)
!962 = !DILocation(line: 90, column: 3, scope: !956)
!963 = !DILocation(line: 95, column: 7, scope: !964)
!964 = distinct !DILexicalBlock(scope: !960, file: !1, line: 90, column: 62)
!965 = !DILocation(line: 94, column: 29, scope: !964)
!966 = !DILocation(line: 94, column: 5, scope: !964)
!967 = !DILocation(line: 94, column: 15, scope: !964)
!968 = !DILocation(line: 94, column: 24, scope: !964)
!969 = !DILocation(line: 94, column: 27, scope: !964)
!970 = !DILocation(line: 98, column: 7, scope: !964)
!971 = !DILocation(line: 97, column: 29, scope: !964)
!972 = !DILocation(line: 97, column: 5, scope: !964)
!973 = !DILocation(line: 97, column: 15, scope: !964)
!974 = !DILocation(line: 97, column: 24, scope: !964)
!975 = !DILocation(line: 97, column: 27, scope: !964)
!976 = !DILocation(line: 100, column: 48, scope: !964)
!977 = !DILocation(line: 100, column: 46, scope: !964)
!978 = !DILocation(line: 100, column: 5, scope: !964)
!979 = !DILocation(line: 100, column: 15, scope: !964)
!980 = !DILocation(line: 100, column: 24, scope: !964)
!981 = !DILocation(line: 100, column: 27, scope: !964)
!982 = !DILocation(line: 103, column: 48, scope: !964)
!983 = !DILocation(line: 103, column: 46, scope: !964)
!984 = !DILocation(line: 103, column: 50, scope: !964)
!985 = !DILocation(line: 103, column: 5, scope: !964)
!986 = !DILocation(line: 103, column: 15, scope: !964)
!987 = !DILocation(line: 103, column: 24, scope: !964)
!988 = !DILocation(line: 103, column: 27, scope: !964)
!989 = !DILocation(line: 104, column: 3, scope: !964)
!990 = !DILocation(line: 90, column: 53, scope: !960)
!991 = !DILocation(line: 90, column: 58, scope: !960)
!992 = !DILocation(line: 90, column: 3, scope: !960)
!993 = distinct !{!993, !962, !994, !682}
!994 = !DILocation(line: 104, column: 3, scope: !956)
!995 = !DILocation(line: 105, column: 1, scope: !912)
!996 = distinct !DISubprogram(name: "null_convert", scope: !1, file: !1, line: 169, type: !577, scopeLine: 172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !595)
!997 = !DILocalVariable(name: "cinfo", arg: 1, scope: !996, file: !1, line: 169, type: !167)
!998 = !DILocation(line: 169, column: 32, scope: !996)
!999 = !DILocalVariable(name: "input_buf", arg: 2, scope: !996, file: !1, line: 170, type: !492)
!1000 = !DILocation(line: 170, column: 19, scope: !996)
!1001 = !DILocalVariable(name: "input_row", arg: 3, scope: !996, file: !1, line: 170, type: !209)
!1002 = !DILocation(line: 170, column: 41, scope: !996)
!1003 = !DILocalVariable(name: "output_buf", arg: 4, scope: !996, file: !1, line: 171, type: !202)
!1004 = !DILocation(line: 171, column: 19, scope: !996)
!1005 = !DILocalVariable(name: "num_rows", arg: 5, scope: !996, file: !1, line: 171, type: !193)
!1006 = !DILocation(line: 171, column: 35, scope: !996)
!1007 = !DILocalVariable(name: "inptr", scope: !996, file: !1, line: 173, type: !204)
!1008 = !DILocation(line: 173, column: 21, scope: !996)
!1009 = !DILocalVariable(name: "outptr", scope: !996, file: !1, line: 173, type: !204)
!1010 = !DILocation(line: 173, column: 28, scope: !996)
!1011 = !DILocalVariable(name: "count", scope: !996, file: !1, line: 174, type: !209)
!1012 = !DILocation(line: 174, column: 23, scope: !996)
!1013 = !DILocalVariable(name: "num_components", scope: !996, file: !1, line: 175, type: !193)
!1014 = !DILocation(line: 175, column: 16, scope: !996)
!1015 = !DILocation(line: 175, column: 33, scope: !996)
!1016 = !DILocation(line: 175, column: 40, scope: !996)
!1017 = !DILocalVariable(name: "num_cols", scope: !996, file: !1, line: 176, type: !209)
!1018 = !DILocation(line: 176, column: 14, scope: !996)
!1019 = !DILocation(line: 176, column: 25, scope: !996)
!1020 = !DILocation(line: 176, column: 32, scope: !996)
!1021 = !DILocalVariable(name: "ci", scope: !996, file: !1, line: 177, type: !193)
!1022 = !DILocation(line: 177, column: 7, scope: !996)
!1023 = !DILocation(line: 179, column: 3, scope: !996)
!1024 = !DILocation(line: 179, column: 10, scope: !996)
!1025 = !DILocation(line: 179, column: 21, scope: !996)
!1026 = !DILocation(line: 180, column: 13, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !1028, file: !1, line: 180, column: 5)
!1028 = distinct !DILexicalBlock(scope: !996, file: !1, line: 179, column: 27)
!1029 = !DILocation(line: 180, column: 10, scope: !1027)
!1030 = !DILocation(line: 180, column: 18, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !1027, file: !1, line: 180, column: 5)
!1032 = !DILocation(line: 180, column: 23, scope: !1031)
!1033 = !DILocation(line: 180, column: 21, scope: !1031)
!1034 = !DILocation(line: 180, column: 5, scope: !1027)
!1035 = !DILocation(line: 181, column: 15, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !1031, file: !1, line: 180, column: 45)
!1037 = !DILocation(line: 181, column: 25, scope: !1036)
!1038 = !DILocation(line: 181, column: 29, scope: !1036)
!1039 = !DILocation(line: 181, column: 13, scope: !1036)
!1040 = !DILocation(line: 182, column: 16, scope: !1036)
!1041 = !DILocation(line: 182, column: 32, scope: !1036)
!1042 = !DILocation(line: 182, column: 30, scope: !1036)
!1043 = !DILocation(line: 182, column: 14, scope: !1036)
!1044 = !DILocation(line: 183, column: 20, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !1036, file: !1, line: 183, column: 7)
!1046 = !DILocation(line: 183, column: 18, scope: !1045)
!1047 = !DILocation(line: 183, column: 12, scope: !1045)
!1048 = !DILocation(line: 183, column: 30, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !1045, file: !1, line: 183, column: 7)
!1050 = !DILocation(line: 183, column: 36, scope: !1049)
!1051 = !DILocation(line: 183, column: 7, scope: !1045)
!1052 = !DILocation(line: 184, column: 18, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !1049, file: !1, line: 183, column: 50)
!1054 = !DILocation(line: 184, column: 12, scope: !1053)
!1055 = !DILocation(line: 184, column: 3, scope: !1053)
!1056 = !DILocation(line: 184, column: 10, scope: !1053)
!1057 = !DILocation(line: 185, column: 12, scope: !1053)
!1058 = !DILocation(line: 185, column: 9, scope: !1053)
!1059 = !DILocation(line: 186, column: 7, scope: !1053)
!1060 = !DILocation(line: 183, column: 46, scope: !1049)
!1061 = !DILocation(line: 183, column: 7, scope: !1049)
!1062 = distinct !{!1062, !1051, !1063, !682}
!1063 = !DILocation(line: 186, column: 7, scope: !1045)
!1064 = !DILocation(line: 187, column: 5, scope: !1036)
!1065 = !DILocation(line: 180, column: 41, scope: !1031)
!1066 = !DILocation(line: 180, column: 5, scope: !1031)
!1067 = distinct !{!1067, !1034, !1068, !682}
!1068 = !DILocation(line: 187, column: 5, scope: !1027)
!1069 = !DILocation(line: 188, column: 14, scope: !1028)
!1070 = !DILocation(line: 189, column: 15, scope: !1028)
!1071 = distinct !{!1071, !1023, !1072, !682}
!1072 = !DILocation(line: 190, column: 3, scope: !996)
!1073 = !DILocation(line: 191, column: 1, scope: !996)
!1074 = distinct !DISubprogram(name: "ycck_cmyk_convert", scope: !1, file: !1, line: 218, type: !577, scopeLine: 221, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !595)
!1075 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1074, file: !1, line: 218, type: !167)
!1076 = !DILocation(line: 218, column: 37, scope: !1074)
!1077 = !DILocalVariable(name: "input_buf", arg: 2, scope: !1074, file: !1, line: 219, type: !492)
!1078 = !DILocation(line: 219, column: 17, scope: !1074)
!1079 = !DILocalVariable(name: "input_row", arg: 3, scope: !1074, file: !1, line: 219, type: !209)
!1080 = !DILocation(line: 219, column: 39, scope: !1074)
!1081 = !DILocalVariable(name: "output_buf", arg: 4, scope: !1074, file: !1, line: 220, type: !202)
!1082 = !DILocation(line: 220, column: 17, scope: !1074)
!1083 = !DILocalVariable(name: "num_rows", arg: 5, scope: !1074, file: !1, line: 220, type: !193)
!1084 = !DILocation(line: 220, column: 33, scope: !1074)
!1085 = !DILocalVariable(name: "cconvert", scope: !1074, file: !1, line: 222, type: !155)
!1086 = !DILocation(line: 222, column: 19, scope: !1074)
!1087 = !DILocation(line: 222, column: 48, scope: !1074)
!1088 = !DILocation(line: 222, column: 55, scope: !1074)
!1089 = !DILocalVariable(name: "y", scope: !1074, file: !1, line: 223, type: !193)
!1090 = !DILocation(line: 223, column: 16, scope: !1074)
!1091 = !DILocalVariable(name: "cb", scope: !1074, file: !1, line: 223, type: !193)
!1092 = !DILocation(line: 223, column: 19, scope: !1074)
!1093 = !DILocalVariable(name: "cr", scope: !1074, file: !1, line: 223, type: !193)
!1094 = !DILocation(line: 223, column: 23, scope: !1074)
!1095 = !DILocalVariable(name: "outptr", scope: !1074, file: !1, line: 224, type: !204)
!1096 = !DILocation(line: 224, column: 21, scope: !1074)
!1097 = !DILocalVariable(name: "inptr0", scope: !1074, file: !1, line: 225, type: !204)
!1098 = !DILocation(line: 225, column: 21, scope: !1074)
!1099 = !DILocalVariable(name: "inptr1", scope: !1074, file: !1, line: 225, type: !204)
!1100 = !DILocation(line: 225, column: 29, scope: !1074)
!1101 = !DILocalVariable(name: "inptr2", scope: !1074, file: !1, line: 225, type: !204)
!1102 = !DILocation(line: 225, column: 37, scope: !1074)
!1103 = !DILocalVariable(name: "inptr3", scope: !1074, file: !1, line: 225, type: !204)
!1104 = !DILocation(line: 225, column: 45, scope: !1074)
!1105 = !DILocalVariable(name: "col", scope: !1074, file: !1, line: 226, type: !209)
!1106 = !DILocation(line: 226, column: 23, scope: !1074)
!1107 = !DILocalVariable(name: "num_cols", scope: !1074, file: !1, line: 227, type: !209)
!1108 = !DILocation(line: 227, column: 14, scope: !1074)
!1109 = !DILocation(line: 227, column: 25, scope: !1074)
!1110 = !DILocation(line: 227, column: 32, scope: !1074)
!1111 = !DILocalVariable(name: "range_limit", scope: !1074, file: !1, line: 229, type: !205)
!1112 = !DILocation(line: 229, column: 22, scope: !1074)
!1113 = !DILocation(line: 229, column: 36, scope: !1074)
!1114 = !DILocation(line: 229, column: 43, scope: !1074)
!1115 = !DILocalVariable(name: "Crrtab", scope: !1074, file: !1, line: 230, type: !580)
!1116 = !DILocation(line: 230, column: 18, scope: !1074)
!1117 = !DILocation(line: 230, column: 27, scope: !1074)
!1118 = !DILocation(line: 230, column: 37, scope: !1074)
!1119 = !DILocalVariable(name: "Cbbtab", scope: !1074, file: !1, line: 231, type: !580)
!1120 = !DILocation(line: 231, column: 18, scope: !1074)
!1121 = !DILocation(line: 231, column: 27, scope: !1074)
!1122 = !DILocation(line: 231, column: 37, scope: !1074)
!1123 = !DILocalVariable(name: "Crgtab", scope: !1074, file: !1, line: 232, type: !583)
!1124 = !DILocation(line: 232, column: 20, scope: !1074)
!1125 = !DILocation(line: 232, column: 29, scope: !1074)
!1126 = !DILocation(line: 232, column: 39, scope: !1074)
!1127 = !DILocalVariable(name: "Cbgtab", scope: !1074, file: !1, line: 233, type: !583)
!1128 = !DILocation(line: 233, column: 20, scope: !1074)
!1129 = !DILocation(line: 233, column: 29, scope: !1074)
!1130 = !DILocation(line: 233, column: 39, scope: !1074)
!1131 = !DILocation(line: 236, column: 3, scope: !1074)
!1132 = !DILocation(line: 236, column: 10, scope: !1074)
!1133 = !DILocation(line: 236, column: 21, scope: !1074)
!1134 = !DILocation(line: 237, column: 14, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1074, file: !1, line: 236, column: 27)
!1136 = !DILocation(line: 237, column: 27, scope: !1135)
!1137 = !DILocation(line: 237, column: 12, scope: !1135)
!1138 = !DILocation(line: 238, column: 14, scope: !1135)
!1139 = !DILocation(line: 238, column: 27, scope: !1135)
!1140 = !DILocation(line: 238, column: 12, scope: !1135)
!1141 = !DILocation(line: 239, column: 14, scope: !1135)
!1142 = !DILocation(line: 239, column: 27, scope: !1135)
!1143 = !DILocation(line: 239, column: 12, scope: !1135)
!1144 = !DILocation(line: 240, column: 14, scope: !1135)
!1145 = !DILocation(line: 240, column: 27, scope: !1135)
!1146 = !DILocation(line: 240, column: 12, scope: !1135)
!1147 = !DILocation(line: 241, column: 14, scope: !1135)
!1148 = !DILocation(line: 242, column: 25, scope: !1135)
!1149 = !DILocation(line: 242, column: 14, scope: !1135)
!1150 = !DILocation(line: 242, column: 12, scope: !1135)
!1151 = !DILocation(line: 243, column: 14, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1135, file: !1, line: 243, column: 5)
!1153 = !DILocation(line: 243, column: 10, scope: !1152)
!1154 = !DILocation(line: 243, column: 19, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1152, file: !1, line: 243, column: 5)
!1156 = !DILocation(line: 243, column: 25, scope: !1155)
!1157 = !DILocation(line: 243, column: 23, scope: !1155)
!1158 = !DILocation(line: 243, column: 5, scope: !1152)
!1159 = !DILocation(line: 244, column: 12, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1155, file: !1, line: 243, column: 42)
!1161 = !DILocation(line: 244, column: 10, scope: !1160)
!1162 = !DILocation(line: 245, column: 12, scope: !1160)
!1163 = !DILocation(line: 245, column: 10, scope: !1160)
!1164 = !DILocation(line: 246, column: 12, scope: !1160)
!1165 = !DILocation(line: 246, column: 10, scope: !1160)
!1166 = !DILocation(line: 248, column: 19, scope: !1160)
!1167 = !DILocation(line: 248, column: 45, scope: !1160)
!1168 = !DILocation(line: 248, column: 49, scope: !1160)
!1169 = !DILocation(line: 248, column: 56, scope: !1160)
!1170 = !DILocation(line: 248, column: 47, scope: !1160)
!1171 = !DILocation(line: 248, column: 42, scope: !1160)
!1172 = !DILocation(line: 248, column: 7, scope: !1160)
!1173 = !DILocation(line: 248, column: 17, scope: !1160)
!1174 = !DILocation(line: 249, column: 19, scope: !1160)
!1175 = !DILocation(line: 249, column: 45, scope: !1160)
!1176 = !DILocation(line: 250, column: 17, scope: !1160)
!1177 = !DILocation(line: 250, column: 11, scope: !1160)
!1178 = !DILocation(line: 249, column: 47, scope: !1160)
!1179 = !DILocation(line: 249, column: 42, scope: !1160)
!1180 = !DILocation(line: 249, column: 7, scope: !1160)
!1181 = !DILocation(line: 249, column: 17, scope: !1160)
!1182 = !DILocation(line: 252, column: 19, scope: !1160)
!1183 = !DILocation(line: 252, column: 45, scope: !1160)
!1184 = !DILocation(line: 252, column: 49, scope: !1160)
!1185 = !DILocation(line: 252, column: 56, scope: !1160)
!1186 = !DILocation(line: 252, column: 47, scope: !1160)
!1187 = !DILocation(line: 252, column: 42, scope: !1160)
!1188 = !DILocation(line: 252, column: 7, scope: !1160)
!1189 = !DILocation(line: 252, column: 17, scope: !1160)
!1190 = !DILocation(line: 254, column: 19, scope: !1160)
!1191 = !DILocation(line: 254, column: 26, scope: !1160)
!1192 = !DILocation(line: 254, column: 7, scope: !1160)
!1193 = !DILocation(line: 254, column: 17, scope: !1160)
!1194 = !DILocation(line: 255, column: 14, scope: !1160)
!1195 = !DILocation(line: 256, column: 5, scope: !1160)
!1196 = !DILocation(line: 243, column: 38, scope: !1155)
!1197 = !DILocation(line: 243, column: 5, scope: !1155)
!1198 = distinct !{!1198, !1158, !1199, !682}
!1199 = !DILocation(line: 256, column: 5, scope: !1152)
!1200 = distinct !{!1200, !1131, !1201, !682}
!1201 = !DILocation(line: 257, column: 3, scope: !1074)
!1202 = !DILocation(line: 258, column: 1, scope: !1074)
