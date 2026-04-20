; ModuleID = 'cBench/consumer_jpeg_c/src/jcsample.c'
source_filename = "cBench/consumer_jpeg_c/src/jcsample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jpeg_compress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, double, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [16 x i8], [16 x i8], [16 x i8], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.my_downsampler = type { %struct.jpeg_downsampler, [10 x ptr] }
%struct.jpeg_downsampler = type { ptr, ptr, i32 }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }

; Function Attrs: noinline nounwind uwtable
define dso_local void @jinit_downsampler(ptr noundef %0) #0 !dbg !541 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !543, !DIExpression(), !544)
    #dbg_declare(ptr %3, !545, !DIExpression(), !546)
    #dbg_declare(ptr %4, !547, !DIExpression(), !548)
    #dbg_declare(ptr %5, !549, !DIExpression(), !550)
    #dbg_declare(ptr %6, !551, !DIExpression(), !552)
  store i32 1, ptr %6, align 4, !dbg !552
  %7 = load ptr, ptr %2, align 8, !dbg !553
  %8 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %7, i32 0, i32 1, !dbg !554
  %9 = load ptr, ptr %8, align 8, !dbg !554
  %10 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %9, i32 0, i32 0, !dbg !555
  %11 = load ptr, ptr %10, align 8, !dbg !555
  %12 = load ptr, ptr %2, align 8, !dbg !556
  %13 = call ptr %11(ptr noundef %12, i32 noundef 1, i64 noundef 104), !dbg !557
  store ptr %13, ptr %3, align 8, !dbg !558
  %14 = load ptr, ptr %3, align 8, !dbg !559
  %15 = load ptr, ptr %2, align 8, !dbg !560
  %16 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %15, i32 0, i32 57, !dbg !561
  store ptr %14, ptr %16, align 8, !dbg !562
  %17 = load ptr, ptr %3, align 8, !dbg !563
  %18 = getelementptr inbounds nuw %struct.my_downsampler, ptr %17, i32 0, i32 0, !dbg !564
  %19 = getelementptr inbounds nuw %struct.jpeg_downsampler, ptr %18, i32 0, i32 0, !dbg !565
  store ptr @start_pass_downsample, ptr %19, align 8, !dbg !566
  %20 = load ptr, ptr %3, align 8, !dbg !567
  %21 = getelementptr inbounds nuw %struct.my_downsampler, ptr %20, i32 0, i32 0, !dbg !568
  %22 = getelementptr inbounds nuw %struct.jpeg_downsampler, ptr %21, i32 0, i32 1, !dbg !569
  store ptr @sep_downsample, ptr %22, align 8, !dbg !570
  %23 = load ptr, ptr %3, align 8, !dbg !571
  %24 = getelementptr inbounds nuw %struct.my_downsampler, ptr %23, i32 0, i32 0, !dbg !572
  %25 = getelementptr inbounds nuw %struct.jpeg_downsampler, ptr %24, i32 0, i32 2, !dbg !573
  store i32 0, ptr %25, align 8, !dbg !574
  %26 = load ptr, ptr %2, align 8, !dbg !575
  %27 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %26, i32 0, i32 26, !dbg !577
  %28 = load i32, ptr %27, align 4, !dbg !577
  %29 = icmp ne i32 %28, 0, !dbg !575
  br i1 %29, label %30, label %41, !dbg !575

30:                                               ; preds = %1
  %31 = load ptr, ptr %2, align 8, !dbg !578
  %32 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %31, i32 0, i32 0, !dbg !578
  %33 = load ptr, ptr %32, align 8, !dbg !578
  %34 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %33, i32 0, i32 5, !dbg !578
  store i32 23, ptr %34, align 8, !dbg !578
  %35 = load ptr, ptr %2, align 8, !dbg !578
  %36 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %35, i32 0, i32 0, !dbg !578
  %37 = load ptr, ptr %36, align 8, !dbg !578
  %38 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %37, i32 0, i32 0, !dbg !578
  %39 = load ptr, ptr %38, align 8, !dbg !578
  %40 = load ptr, ptr %2, align 8, !dbg !578
  call void %39(ptr noundef %40), !dbg !578
  br label %41, !dbg !578

41:                                               ; preds = %30, %1
  store i32 0, ptr %4, align 4, !dbg !579
  %42 = load ptr, ptr %2, align 8, !dbg !581
  %43 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %42, i32 0, i32 14, !dbg !582
  %44 = load ptr, ptr %43, align 8, !dbg !582
  store ptr %44, ptr %5, align 8, !dbg !583
  br label %45, !dbg !584

45:                                               ; preds = %189, %41
  %46 = load i32, ptr %4, align 4, !dbg !585
  %47 = load ptr, ptr %2, align 8, !dbg !587
  %48 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %47, i32 0, i32 12, !dbg !588
  %49 = load i32, ptr %48, align 4, !dbg !588
  %50 = icmp slt i32 %46, %49, !dbg !589
  br i1 %50, label %51, label %194, !dbg !590

51:                                               ; preds = %45
  %52 = load ptr, ptr %5, align 8, !dbg !591
  %53 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %52, i32 0, i32 2, !dbg !594
  %54 = load i32, ptr %53, align 8, !dbg !594
  %55 = load ptr, ptr %2, align 8, !dbg !595
  %56 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %55, i32 0, i32 38, !dbg !596
  %57 = load i32, ptr %56, align 8, !dbg !596
  %58 = icmp eq i32 %54, %57, !dbg !597
  br i1 %58, label %59, label %88, !dbg !598

59:                                               ; preds = %51
  %60 = load ptr, ptr %5, align 8, !dbg !599
  %61 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %60, i32 0, i32 3, !dbg !600
  %62 = load i32, ptr %61, align 4, !dbg !600
  %63 = load ptr, ptr %2, align 8, !dbg !601
  %64 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %63, i32 0, i32 39, !dbg !602
  %65 = load i32, ptr %64, align 4, !dbg !602
  %66 = icmp eq i32 %62, %65, !dbg !603
  br i1 %66, label %67, label %88, !dbg !598

67:                                               ; preds = %59
  %68 = load ptr, ptr %2, align 8, !dbg !604
  %69 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %68, i32 0, i32 27, !dbg !607
  %70 = load i32, ptr %69, align 8, !dbg !607
  %71 = icmp ne i32 %70, 0, !dbg !604
  br i1 %71, label %72, label %81, !dbg !604

72:                                               ; preds = %67
  %73 = load ptr, ptr %3, align 8, !dbg !608
  %74 = getelementptr inbounds nuw %struct.my_downsampler, ptr %73, i32 0, i32 1, !dbg !610
  %75 = load i32, ptr %4, align 4, !dbg !611
  %76 = sext i32 %75 to i64, !dbg !608
  %77 = getelementptr inbounds [10 x ptr], ptr %74, i64 0, i64 %76, !dbg !608
  store ptr @fullsize_smooth_downsample, ptr %77, align 8, !dbg !612
  %78 = load ptr, ptr %3, align 8, !dbg !613
  %79 = getelementptr inbounds nuw %struct.my_downsampler, ptr %78, i32 0, i32 0, !dbg !614
  %80 = getelementptr inbounds nuw %struct.jpeg_downsampler, ptr %79, i32 0, i32 2, !dbg !615
  store i32 1, ptr %80, align 8, !dbg !616
  br label %87, !dbg !617

81:                                               ; preds = %67
  %82 = load ptr, ptr %3, align 8, !dbg !618
  %83 = getelementptr inbounds nuw %struct.my_downsampler, ptr %82, i32 0, i32 1, !dbg !619
  %84 = load i32, ptr %4, align 4, !dbg !620
  %85 = sext i32 %84 to i64, !dbg !618
  %86 = getelementptr inbounds [10 x ptr], ptr %83, i64 0, i64 %85, !dbg !618
  store ptr @fullsize_downsample, ptr %86, align 8, !dbg !621
  br label %87

87:                                               ; preds = %81, %72
  br label %188, !dbg !622

88:                                               ; preds = %59, %51
  %89 = load ptr, ptr %5, align 8, !dbg !623
  %90 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %89, i32 0, i32 2, !dbg !625
  %91 = load i32, ptr %90, align 8, !dbg !625
  %92 = mul nsw i32 %91, 2, !dbg !626
  %93 = load ptr, ptr %2, align 8, !dbg !627
  %94 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %93, i32 0, i32 38, !dbg !628
  %95 = load i32, ptr %94, align 8, !dbg !628
  %96 = icmp eq i32 %92, %95, !dbg !629
  br i1 %96, label %97, label %111, !dbg !630

97:                                               ; preds = %88
  %98 = load ptr, ptr %5, align 8, !dbg !631
  %99 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %98, i32 0, i32 3, !dbg !632
  %100 = load i32, ptr %99, align 4, !dbg !632
  %101 = load ptr, ptr %2, align 8, !dbg !633
  %102 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %101, i32 0, i32 39, !dbg !634
  %103 = load i32, ptr %102, align 4, !dbg !634
  %104 = icmp eq i32 %100, %103, !dbg !635
  br i1 %104, label %105, label %111, !dbg !630

105:                                              ; preds = %97
  store i32 0, ptr %6, align 4, !dbg !636
  %106 = load ptr, ptr %3, align 8, !dbg !638
  %107 = getelementptr inbounds nuw %struct.my_downsampler, ptr %106, i32 0, i32 1, !dbg !639
  %108 = load i32, ptr %4, align 4, !dbg !640
  %109 = sext i32 %108 to i64, !dbg !638
  %110 = getelementptr inbounds [10 x ptr], ptr %107, i64 0, i64 %109, !dbg !638
  store ptr @h2v1_downsample, ptr %110, align 8, !dbg !641
  br label %187, !dbg !642

111:                                              ; preds = %97, %88
  %112 = load ptr, ptr %5, align 8, !dbg !643
  %113 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %112, i32 0, i32 2, !dbg !645
  %114 = load i32, ptr %113, align 8, !dbg !645
  %115 = mul nsw i32 %114, 2, !dbg !646
  %116 = load ptr, ptr %2, align 8, !dbg !647
  %117 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %116, i32 0, i32 38, !dbg !648
  %118 = load i32, ptr %117, align 8, !dbg !648
  %119 = icmp eq i32 %115, %118, !dbg !649
  br i1 %119, label %120, label %150, !dbg !650

120:                                              ; preds = %111
  %121 = load ptr, ptr %5, align 8, !dbg !651
  %122 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %121, i32 0, i32 3, !dbg !652
  %123 = load i32, ptr %122, align 4, !dbg !652
  %124 = mul nsw i32 %123, 2, !dbg !653
  %125 = load ptr, ptr %2, align 8, !dbg !654
  %126 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %125, i32 0, i32 39, !dbg !655
  %127 = load i32, ptr %126, align 4, !dbg !655
  %128 = icmp eq i32 %124, %127, !dbg !656
  br i1 %128, label %129, label %150, !dbg !650

129:                                              ; preds = %120
  %130 = load ptr, ptr %2, align 8, !dbg !657
  %131 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %130, i32 0, i32 27, !dbg !660
  %132 = load i32, ptr %131, align 8, !dbg !660
  %133 = icmp ne i32 %132, 0, !dbg !657
  br i1 %133, label %134, label %143, !dbg !657

134:                                              ; preds = %129
  %135 = load ptr, ptr %3, align 8, !dbg !661
  %136 = getelementptr inbounds nuw %struct.my_downsampler, ptr %135, i32 0, i32 1, !dbg !663
  %137 = load i32, ptr %4, align 4, !dbg !664
  %138 = sext i32 %137 to i64, !dbg !661
  %139 = getelementptr inbounds [10 x ptr], ptr %136, i64 0, i64 %138, !dbg !661
  store ptr @h2v2_smooth_downsample, ptr %139, align 8, !dbg !665
  %140 = load ptr, ptr %3, align 8, !dbg !666
  %141 = getelementptr inbounds nuw %struct.my_downsampler, ptr %140, i32 0, i32 0, !dbg !667
  %142 = getelementptr inbounds nuw %struct.jpeg_downsampler, ptr %141, i32 0, i32 2, !dbg !668
  store i32 1, ptr %142, align 8, !dbg !669
  br label %149, !dbg !670

143:                                              ; preds = %129
  %144 = load ptr, ptr %3, align 8, !dbg !671
  %145 = getelementptr inbounds nuw %struct.my_downsampler, ptr %144, i32 0, i32 1, !dbg !672
  %146 = load i32, ptr %4, align 4, !dbg !673
  %147 = sext i32 %146 to i64, !dbg !671
  %148 = getelementptr inbounds [10 x ptr], ptr %145, i64 0, i64 %147, !dbg !671
  store ptr @h2v2_downsample, ptr %148, align 8, !dbg !674
  br label %149

149:                                              ; preds = %143, %134
  br label %186, !dbg !675

150:                                              ; preds = %120, %111
  %151 = load ptr, ptr %2, align 8, !dbg !676
  %152 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %151, i32 0, i32 38, !dbg !678
  %153 = load i32, ptr %152, align 8, !dbg !678
  %154 = load ptr, ptr %5, align 8, !dbg !679
  %155 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %154, i32 0, i32 2, !dbg !680
  %156 = load i32, ptr %155, align 8, !dbg !680
  %157 = srem i32 %153, %156, !dbg !681
  %158 = icmp eq i32 %157, 0, !dbg !682
  br i1 %158, label %159, label %174, !dbg !683

159:                                              ; preds = %150
  %160 = load ptr, ptr %2, align 8, !dbg !684
  %161 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %160, i32 0, i32 39, !dbg !685
  %162 = load i32, ptr %161, align 4, !dbg !685
  %163 = load ptr, ptr %5, align 8, !dbg !686
  %164 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %163, i32 0, i32 3, !dbg !687
  %165 = load i32, ptr %164, align 4, !dbg !687
  %166 = srem i32 %162, %165, !dbg !688
  %167 = icmp eq i32 %166, 0, !dbg !689
  br i1 %167, label %168, label %174, !dbg !683

168:                                              ; preds = %159
  store i32 0, ptr %6, align 4, !dbg !690
  %169 = load ptr, ptr %3, align 8, !dbg !692
  %170 = getelementptr inbounds nuw %struct.my_downsampler, ptr %169, i32 0, i32 1, !dbg !693
  %171 = load i32, ptr %4, align 4, !dbg !694
  %172 = sext i32 %171 to i64, !dbg !692
  %173 = getelementptr inbounds [10 x ptr], ptr %170, i64 0, i64 %172, !dbg !692
  store ptr @int_downsample, ptr %173, align 8, !dbg !695
  br label %185, !dbg !696

174:                                              ; preds = %159, %150
  %175 = load ptr, ptr %2, align 8, !dbg !697
  %176 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %175, i32 0, i32 0, !dbg !697
  %177 = load ptr, ptr %176, align 8, !dbg !697
  %178 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %177, i32 0, i32 5, !dbg !697
  store i32 37, ptr %178, align 8, !dbg !697
  %179 = load ptr, ptr %2, align 8, !dbg !697
  %180 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %179, i32 0, i32 0, !dbg !697
  %181 = load ptr, ptr %180, align 8, !dbg !697
  %182 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %181, i32 0, i32 0, !dbg !697
  %183 = load ptr, ptr %182, align 8, !dbg !697
  %184 = load ptr, ptr %2, align 8, !dbg !697
  call void %183(ptr noundef %184), !dbg !697
  br label %185

185:                                              ; preds = %174, %168
  br label %186

186:                                              ; preds = %185, %149
  br label %187

187:                                              ; preds = %186, %105
  br label %188

188:                                              ; preds = %187, %87
  br label %189, !dbg !698

189:                                              ; preds = %188
  %190 = load i32, ptr %4, align 4, !dbg !699
  %191 = add nsw i32 %190, 1, !dbg !699
  store i32 %191, ptr %4, align 4, !dbg !699
  %192 = load ptr, ptr %5, align 8, !dbg !700
  %193 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %192, i32 1, !dbg !700
  store ptr %193, ptr %5, align 8, !dbg !700
  br label %45, !dbg !701, !llvm.loop !702

194:                                              ; preds = %45
  %195 = load ptr, ptr %2, align 8, !dbg !705
  %196 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %195, i32 0, i32 27, !dbg !707
  %197 = load i32, ptr %196, align 8, !dbg !707
  %198 = icmp ne i32 %197, 0, !dbg !705
  br i1 %198, label %199, label %213, !dbg !708

199:                                              ; preds = %194
  %200 = load i32, ptr %6, align 4, !dbg !709
  %201 = icmp ne i32 %200, 0, !dbg !709
  br i1 %201, label %213, label %202, !dbg !708

202:                                              ; preds = %199
  %203 = load ptr, ptr %2, align 8, !dbg !710
  %204 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %203, i32 0, i32 0, !dbg !710
  %205 = load ptr, ptr %204, align 8, !dbg !710
  %206 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %205, i32 0, i32 5, !dbg !710
  store i32 98, ptr %206, align 8, !dbg !710
  %207 = load ptr, ptr %2, align 8, !dbg !710
  %208 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %207, i32 0, i32 0, !dbg !710
  %209 = load ptr, ptr %208, align 8, !dbg !710
  %210 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %209, i32 0, i32 1, !dbg !710
  %211 = load ptr, ptr %210, align 8, !dbg !710
  %212 = load ptr, ptr %2, align 8, !dbg !710
  call void %211(ptr noundef %212, i32 noundef 0), !dbg !710
  br label %213, !dbg !710

213:                                              ; preds = %202, %199, %194
  ret void, !dbg !711
}

; Function Attrs: noinline nounwind uwtable
define internal void @start_pass_downsample(ptr noundef %0) #0 !dbg !712 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !713, !DIExpression(), !714)
  ret void, !dbg !715
}

; Function Attrs: noinline nounwind uwtable
define internal void @sep_downsample(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) #0 !dbg !716 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8
    #dbg_declare(ptr %6, !717, !DIExpression(), !718)
  store ptr %1, ptr %7, align 8
    #dbg_declare(ptr %7, !719, !DIExpression(), !720)
  store i32 %2, ptr %8, align 4
    #dbg_declare(ptr %8, !721, !DIExpression(), !722)
  store ptr %3, ptr %9, align 8
    #dbg_declare(ptr %9, !723, !DIExpression(), !724)
  store i32 %4, ptr %10, align 4
    #dbg_declare(ptr %10, !725, !DIExpression(), !726)
    #dbg_declare(ptr %11, !727, !DIExpression(), !728)
  %16 = load ptr, ptr %6, align 8, !dbg !729
  %17 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %16, i32 0, i32 57, !dbg !730
  %18 = load ptr, ptr %17, align 8, !dbg !730
  store ptr %18, ptr %11, align 8, !dbg !728
    #dbg_declare(ptr %12, !731, !DIExpression(), !732)
    #dbg_declare(ptr %13, !733, !DIExpression(), !734)
    #dbg_declare(ptr %14, !735, !DIExpression(), !736)
    #dbg_declare(ptr %15, !737, !DIExpression(), !738)
  store i32 0, ptr %12, align 4, !dbg !739
  %19 = load ptr, ptr %6, align 8, !dbg !741
  %20 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %19, i32 0, i32 14, !dbg !742
  %21 = load ptr, ptr %20, align 8, !dbg !742
  store ptr %21, ptr %13, align 8, !dbg !743
  br label %22, !dbg !744

22:                                               ; preds = %59, %5
  %23 = load i32, ptr %12, align 4, !dbg !745
  %24 = load ptr, ptr %6, align 8, !dbg !747
  %25 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %24, i32 0, i32 12, !dbg !748
  %26 = load i32, ptr %25, align 4, !dbg !748
  %27 = icmp slt i32 %23, %26, !dbg !749
  br i1 %27, label %28, label %64, !dbg !750

28:                                               ; preds = %22
  %29 = load ptr, ptr %7, align 8, !dbg !751
  %30 = load i32, ptr %12, align 4, !dbg !753
  %31 = sext i32 %30 to i64, !dbg !751
  %32 = getelementptr inbounds ptr, ptr %29, i64 %31, !dbg !751
  %33 = load ptr, ptr %32, align 8, !dbg !751
  %34 = load i32, ptr %8, align 4, !dbg !754
  %35 = zext i32 %34 to i64, !dbg !755
  %36 = getelementptr inbounds nuw ptr, ptr %33, i64 %35, !dbg !755
  store ptr %36, ptr %14, align 8, !dbg !756
  %37 = load ptr, ptr %9, align 8, !dbg !757
  %38 = load i32, ptr %12, align 4, !dbg !758
  %39 = sext i32 %38 to i64, !dbg !757
  %40 = getelementptr inbounds ptr, ptr %37, i64 %39, !dbg !757
  %41 = load ptr, ptr %40, align 8, !dbg !757
  %42 = load i32, ptr %10, align 4, !dbg !759
  %43 = load ptr, ptr %13, align 8, !dbg !760
  %44 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %43, i32 0, i32 3, !dbg !761
  %45 = load i32, ptr %44, align 4, !dbg !761
  %46 = mul i32 %42, %45, !dbg !762
  %47 = zext i32 %46 to i64, !dbg !763
  %48 = getelementptr inbounds nuw ptr, ptr %41, i64 %47, !dbg !763
  store ptr %48, ptr %15, align 8, !dbg !764
  %49 = load ptr, ptr %11, align 8, !dbg !765
  %50 = getelementptr inbounds nuw %struct.my_downsampler, ptr %49, i32 0, i32 1, !dbg !766
  %51 = load i32, ptr %12, align 4, !dbg !767
  %52 = sext i32 %51 to i64, !dbg !765
  %53 = getelementptr inbounds [10 x ptr], ptr %50, i64 0, i64 %52, !dbg !765
  %54 = load ptr, ptr %53, align 8, !dbg !765
  %55 = load ptr, ptr %6, align 8, !dbg !768
  %56 = load ptr, ptr %13, align 8, !dbg !769
  %57 = load ptr, ptr %14, align 8, !dbg !770
  %58 = load ptr, ptr %15, align 8, !dbg !771
  call void %54(ptr noundef %55, ptr noundef %56, ptr noundef %57, ptr noundef %58), !dbg !772
  br label %59, !dbg !773

59:                                               ; preds = %28
  %60 = load i32, ptr %12, align 4, !dbg !774
  %61 = add nsw i32 %60, 1, !dbg !774
  store i32 %61, ptr %12, align 4, !dbg !774
  %62 = load ptr, ptr %13, align 8, !dbg !775
  %63 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %62, i32 1, !dbg !775
  store ptr %63, ptr %13, align 8, !dbg !775
  br label %22, !dbg !776, !llvm.loop !777

64:                                               ; preds = %22
  ret void, !dbg !779
}

; Function Attrs: noinline nounwind uwtable
define internal void @fullsize_smooth_downsample(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 !dbg !780 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
    #dbg_declare(ptr %5, !781, !DIExpression(), !782)
  store ptr %1, ptr %6, align 8
    #dbg_declare(ptr %6, !783, !DIExpression(), !784)
  store ptr %2, ptr %7, align 8
    #dbg_declare(ptr %7, !785, !DIExpression(), !786)
  store ptr %3, ptr %8, align 8
    #dbg_declare(ptr %8, !787, !DIExpression(), !788)
    #dbg_declare(ptr %9, !789, !DIExpression(), !790)
    #dbg_declare(ptr %10, !791, !DIExpression(), !792)
    #dbg_declare(ptr %11, !793, !DIExpression(), !794)
  %23 = load ptr, ptr %6, align 8, !dbg !795
  %24 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %23, i32 0, i32 7, !dbg !796
  %25 = load i32, ptr %24, align 4, !dbg !796
  %26 = mul i32 %25, 8, !dbg !797
  store i32 %26, ptr %11, align 4, !dbg !794
    #dbg_declare(ptr %12, !798, !DIExpression(), !799)
    #dbg_declare(ptr %13, !800, !DIExpression(), !801)
    #dbg_declare(ptr %14, !802, !DIExpression(), !803)
    #dbg_declare(ptr %15, !804, !DIExpression(), !805)
    #dbg_declare(ptr %16, !806, !DIExpression(), !807)
    #dbg_declare(ptr %17, !808, !DIExpression(), !809)
    #dbg_declare(ptr %18, !810, !DIExpression(), !811)
    #dbg_declare(ptr %19, !812, !DIExpression(), !813)
    #dbg_declare(ptr %20, !814, !DIExpression(), !815)
    #dbg_declare(ptr %21, !816, !DIExpression(), !817)
    #dbg_declare(ptr %22, !818, !DIExpression(), !819)
  %27 = load ptr, ptr %7, align 8, !dbg !820
  %28 = getelementptr inbounds ptr, ptr %27, i64 -1, !dbg !821
  %29 = load ptr, ptr %5, align 8, !dbg !822
  %30 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %29, i32 0, i32 39, !dbg !823
  %31 = load i32, ptr %30, align 4, !dbg !823
  %32 = add nsw i32 %31, 2, !dbg !824
  %33 = load ptr, ptr %5, align 8, !dbg !825
  %34 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %33, i32 0, i32 6, !dbg !826
  %35 = load i32, ptr %34, align 8, !dbg !826
  %36 = load i32, ptr %11, align 4, !dbg !827
  call void @expand_right_edge(ptr noundef %28, i32 noundef %32, i32 noundef %35, i32 noundef %36), !dbg !828
  %37 = load ptr, ptr %5, align 8, !dbg !829
  %38 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %37, i32 0, i32 27, !dbg !830
  %39 = load i32, ptr %38, align 8, !dbg !830
  %40 = sext i32 %39 to i64, !dbg !829
  %41 = mul nsw i64 %40, 512, !dbg !831
  %42 = sub nsw i64 65536, %41, !dbg !832
  store i64 %42, ptr %18, align 8, !dbg !833
  %43 = load ptr, ptr %5, align 8, !dbg !834
  %44 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %43, i32 0, i32 27, !dbg !835
  %45 = load i32, ptr %44, align 8, !dbg !835
  %46 = mul nsw i32 %45, 64, !dbg !836
  %47 = sext i32 %46 to i64, !dbg !834
  store i64 %47, ptr %19, align 8, !dbg !837
  store i32 0, ptr %9, align 4, !dbg !838
  br label %48, !dbg !840

48:                                               ; preds = %212, %4
  %49 = load i32, ptr %9, align 4, !dbg !841
  %50 = load ptr, ptr %6, align 8, !dbg !843
  %51 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %50, i32 0, i32 3, !dbg !844
  %52 = load i32, ptr %51, align 4, !dbg !844
  %53 = icmp slt i32 %49, %52, !dbg !845
  br i1 %53, label %54, label %215, !dbg !846

54:                                               ; preds = %48
  %55 = load ptr, ptr %8, align 8, !dbg !847
  %56 = load i32, ptr %9, align 4, !dbg !849
  %57 = sext i32 %56 to i64, !dbg !847
  %58 = getelementptr inbounds ptr, ptr %55, i64 %57, !dbg !847
  %59 = load ptr, ptr %58, align 8, !dbg !847
  store ptr %59, ptr %15, align 8, !dbg !850
  %60 = load ptr, ptr %7, align 8, !dbg !851
  %61 = load i32, ptr %9, align 4, !dbg !852
  %62 = sext i32 %61 to i64, !dbg !851
  %63 = getelementptr inbounds ptr, ptr %60, i64 %62, !dbg !851
  %64 = load ptr, ptr %63, align 8, !dbg !851
  store ptr %64, ptr %12, align 8, !dbg !853
  %65 = load ptr, ptr %7, align 8, !dbg !854
  %66 = load i32, ptr %9, align 4, !dbg !855
  %67 = sub nsw i32 %66, 1, !dbg !856
  %68 = sext i32 %67 to i64, !dbg !854
  %69 = getelementptr inbounds ptr, ptr %65, i64 %68, !dbg !854
  %70 = load ptr, ptr %69, align 8, !dbg !854
  store ptr %70, ptr %13, align 8, !dbg !857
  %71 = load ptr, ptr %7, align 8, !dbg !858
  %72 = load i32, ptr %9, align 4, !dbg !859
  %73 = add nsw i32 %72, 1, !dbg !860
  %74 = sext i32 %73 to i64, !dbg !858
  %75 = getelementptr inbounds ptr, ptr %71, i64 %74, !dbg !858
  %76 = load ptr, ptr %75, align 8, !dbg !858
  store ptr %76, ptr %14, align 8, !dbg !861
  %77 = load ptr, ptr %13, align 8, !dbg !862
  %78 = getelementptr inbounds nuw i8, ptr %77, i32 1, !dbg !862
  store ptr %78, ptr %13, align 8, !dbg !862
  %79 = load i8, ptr %77, align 1, !dbg !862
  %80 = zext i8 %79 to i32, !dbg !862
  %81 = load ptr, ptr %14, align 8, !dbg !863
  %82 = getelementptr inbounds nuw i8, ptr %81, i32 1, !dbg !863
  store ptr %82, ptr %14, align 8, !dbg !863
  %83 = load i8, ptr %81, align 1, !dbg !863
  %84 = zext i8 %83 to i32, !dbg !863
  %85 = add nsw i32 %80, %84, !dbg !864
  %86 = load ptr, ptr %12, align 8, !dbg !865
  %87 = load i8, ptr %86, align 1, !dbg !865
  %88 = zext i8 %87 to i32, !dbg !865
  %89 = add nsw i32 %85, %88, !dbg !866
  store i32 %89, ptr %20, align 4, !dbg !867
  %90 = load ptr, ptr %12, align 8, !dbg !868
  %91 = getelementptr inbounds nuw i8, ptr %90, i32 1, !dbg !868
  store ptr %91, ptr %12, align 8, !dbg !868
  %92 = load i8, ptr %90, align 1, !dbg !868
  %93 = zext i8 %92 to i32, !dbg !868
  %94 = sext i32 %93 to i64, !dbg !868
  store i64 %94, ptr %16, align 8, !dbg !869
  %95 = load ptr, ptr %13, align 8, !dbg !870
  %96 = load i8, ptr %95, align 1, !dbg !870
  %97 = zext i8 %96 to i32, !dbg !870
  %98 = load ptr, ptr %14, align 8, !dbg !871
  %99 = load i8, ptr %98, align 1, !dbg !871
  %100 = zext i8 %99 to i32, !dbg !871
  %101 = add nsw i32 %97, %100, !dbg !872
  %102 = load ptr, ptr %12, align 8, !dbg !873
  %103 = load i8, ptr %102, align 1, !dbg !873
  %104 = zext i8 %103 to i32, !dbg !873
  %105 = add nsw i32 %101, %104, !dbg !874
  store i32 %105, ptr %22, align 4, !dbg !875
  %106 = load i32, ptr %20, align 4, !dbg !876
  %107 = sext i32 %106 to i64, !dbg !876
  %108 = load i32, ptr %20, align 4, !dbg !877
  %109 = sext i32 %108 to i64, !dbg !877
  %110 = load i64, ptr %16, align 8, !dbg !878
  %111 = sub nsw i64 %109, %110, !dbg !879
  %112 = add nsw i64 %107, %111, !dbg !880
  %113 = load i32, ptr %22, align 4, !dbg !881
  %114 = sext i32 %113 to i64, !dbg !881
  %115 = add nsw i64 %112, %114, !dbg !882
  store i64 %115, ptr %17, align 8, !dbg !883
  %116 = load i64, ptr %16, align 8, !dbg !884
  %117 = load i64, ptr %18, align 8, !dbg !885
  %118 = mul nsw i64 %116, %117, !dbg !886
  %119 = load i64, ptr %17, align 8, !dbg !887
  %120 = load i64, ptr %19, align 8, !dbg !888
  %121 = mul nsw i64 %119, %120, !dbg !889
  %122 = add nsw i64 %118, %121, !dbg !890
  store i64 %122, ptr %16, align 8, !dbg !891
  %123 = load i64, ptr %16, align 8, !dbg !892
  %124 = add nsw i64 %123, 32768, !dbg !893
  %125 = ashr i64 %124, 16, !dbg !894
  %126 = trunc i64 %125 to i8, !dbg !895
  %127 = load ptr, ptr %15, align 8, !dbg !896
  %128 = getelementptr inbounds nuw i8, ptr %127, i32 1, !dbg !896
  store ptr %128, ptr %15, align 8, !dbg !896
  store i8 %126, ptr %127, align 1, !dbg !897
  %129 = load i32, ptr %20, align 4, !dbg !898
  store i32 %129, ptr %21, align 4, !dbg !899
  %130 = load i32, ptr %22, align 4, !dbg !900
  store i32 %130, ptr %20, align 4, !dbg !901
  %131 = load i32, ptr %11, align 4, !dbg !902
  %132 = sub i32 %131, 2, !dbg !904
  store i32 %132, ptr %10, align 4, !dbg !905
  br label %133, !dbg !906

133:                                              ; preds = %182, %54
  %134 = load i32, ptr %10, align 4, !dbg !907
  %135 = icmp ugt i32 %134, 0, !dbg !909
  br i1 %135, label %136, label %185, !dbg !910

136:                                              ; preds = %133
  %137 = load ptr, ptr %12, align 8, !dbg !911
  %138 = getelementptr inbounds nuw i8, ptr %137, i32 1, !dbg !911
  store ptr %138, ptr %12, align 8, !dbg !911
  %139 = load i8, ptr %137, align 1, !dbg !911
  %140 = zext i8 %139 to i32, !dbg !911
  %141 = sext i32 %140 to i64, !dbg !911
  store i64 %141, ptr %16, align 8, !dbg !913
  %142 = load ptr, ptr %13, align 8, !dbg !914
  %143 = getelementptr inbounds nuw i8, ptr %142, i32 1, !dbg !914
  store ptr %143, ptr %13, align 8, !dbg !914
  %144 = load ptr, ptr %14, align 8, !dbg !915
  %145 = getelementptr inbounds nuw i8, ptr %144, i32 1, !dbg !915
  store ptr %145, ptr %14, align 8, !dbg !915
  %146 = load ptr, ptr %13, align 8, !dbg !916
  %147 = load i8, ptr %146, align 1, !dbg !916
  %148 = zext i8 %147 to i32, !dbg !916
  %149 = load ptr, ptr %14, align 8, !dbg !917
  %150 = load i8, ptr %149, align 1, !dbg !917
  %151 = zext i8 %150 to i32, !dbg !917
  %152 = add nsw i32 %148, %151, !dbg !918
  %153 = load ptr, ptr %12, align 8, !dbg !919
  %154 = load i8, ptr %153, align 1, !dbg !919
  %155 = zext i8 %154 to i32, !dbg !919
  %156 = add nsw i32 %152, %155, !dbg !920
  store i32 %156, ptr %22, align 4, !dbg !921
  %157 = load i32, ptr %21, align 4, !dbg !922
  %158 = sext i32 %157 to i64, !dbg !922
  %159 = load i32, ptr %20, align 4, !dbg !923
  %160 = sext i32 %159 to i64, !dbg !923
  %161 = load i64, ptr %16, align 8, !dbg !924
  %162 = sub nsw i64 %160, %161, !dbg !925
  %163 = add nsw i64 %158, %162, !dbg !926
  %164 = load i32, ptr %22, align 4, !dbg !927
  %165 = sext i32 %164 to i64, !dbg !927
  %166 = add nsw i64 %163, %165, !dbg !928
  store i64 %166, ptr %17, align 8, !dbg !929
  %167 = load i64, ptr %16, align 8, !dbg !930
  %168 = load i64, ptr %18, align 8, !dbg !931
  %169 = mul nsw i64 %167, %168, !dbg !932
  %170 = load i64, ptr %17, align 8, !dbg !933
  %171 = load i64, ptr %19, align 8, !dbg !934
  %172 = mul nsw i64 %170, %171, !dbg !935
  %173 = add nsw i64 %169, %172, !dbg !936
  store i64 %173, ptr %16, align 8, !dbg !937
  %174 = load i64, ptr %16, align 8, !dbg !938
  %175 = add nsw i64 %174, 32768, !dbg !939
  %176 = ashr i64 %175, 16, !dbg !940
  %177 = trunc i64 %176 to i8, !dbg !941
  %178 = load ptr, ptr %15, align 8, !dbg !942
  %179 = getelementptr inbounds nuw i8, ptr %178, i32 1, !dbg !942
  store ptr %179, ptr %15, align 8, !dbg !942
  store i8 %177, ptr %178, align 1, !dbg !943
  %180 = load i32, ptr %20, align 4, !dbg !944
  store i32 %180, ptr %21, align 4, !dbg !945
  %181 = load i32, ptr %22, align 4, !dbg !946
  store i32 %181, ptr %20, align 4, !dbg !947
  br label %182, !dbg !948

182:                                              ; preds = %136
  %183 = load i32, ptr %10, align 4, !dbg !949
  %184 = add i32 %183, -1, !dbg !949
  store i32 %184, ptr %10, align 4, !dbg !949
  br label %133, !dbg !950, !llvm.loop !951

185:                                              ; preds = %133
  %186 = load ptr, ptr %12, align 8, !dbg !953
  %187 = load i8, ptr %186, align 1, !dbg !953
  %188 = zext i8 %187 to i32, !dbg !953
  %189 = sext i32 %188 to i64, !dbg !953
  store i64 %189, ptr %16, align 8, !dbg !954
  %190 = load i32, ptr %21, align 4, !dbg !955
  %191 = sext i32 %190 to i64, !dbg !955
  %192 = load i32, ptr %20, align 4, !dbg !956
  %193 = sext i32 %192 to i64, !dbg !956
  %194 = load i64, ptr %16, align 8, !dbg !957
  %195 = sub nsw i64 %193, %194, !dbg !958
  %196 = add nsw i64 %191, %195, !dbg !959
  %197 = load i32, ptr %20, align 4, !dbg !960
  %198 = sext i32 %197 to i64, !dbg !960
  %199 = add nsw i64 %196, %198, !dbg !961
  store i64 %199, ptr %17, align 8, !dbg !962
  %200 = load i64, ptr %16, align 8, !dbg !963
  %201 = load i64, ptr %18, align 8, !dbg !964
  %202 = mul nsw i64 %200, %201, !dbg !965
  %203 = load i64, ptr %17, align 8, !dbg !966
  %204 = load i64, ptr %19, align 8, !dbg !967
  %205 = mul nsw i64 %203, %204, !dbg !968
  %206 = add nsw i64 %202, %205, !dbg !969
  store i64 %206, ptr %16, align 8, !dbg !970
  %207 = load i64, ptr %16, align 8, !dbg !971
  %208 = add nsw i64 %207, 32768, !dbg !972
  %209 = ashr i64 %208, 16, !dbg !973
  %210 = trunc i64 %209 to i8, !dbg !974
  %211 = load ptr, ptr %15, align 8, !dbg !975
  store i8 %210, ptr %211, align 1, !dbg !976
  br label %212, !dbg !977

212:                                              ; preds = %185
  %213 = load i32, ptr %9, align 4, !dbg !978
  %214 = add nsw i32 %213, 1, !dbg !978
  store i32 %214, ptr %9, align 4, !dbg !978
  br label %48, !dbg !979, !llvm.loop !980

215:                                              ; preds = %48
  ret void, !dbg !982
}

; Function Attrs: noinline nounwind uwtable
define internal void @fullsize_downsample(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 !dbg !983 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
    #dbg_declare(ptr %5, !984, !DIExpression(), !985)
  store ptr %1, ptr %6, align 8
    #dbg_declare(ptr %6, !986, !DIExpression(), !987)
  store ptr %2, ptr %7, align 8
    #dbg_declare(ptr %7, !988, !DIExpression(), !989)
  store ptr %3, ptr %8, align 8
    #dbg_declare(ptr %8, !990, !DIExpression(), !991)
  %9 = load ptr, ptr %7, align 8, !dbg !992
  %10 = load ptr, ptr %8, align 8, !dbg !993
  %11 = load ptr, ptr %5, align 8, !dbg !994
  %12 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %11, i32 0, i32 39, !dbg !995
  %13 = load i32, ptr %12, align 4, !dbg !995
  %14 = load ptr, ptr %5, align 8, !dbg !996
  %15 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %14, i32 0, i32 6, !dbg !997
  %16 = load i32, ptr %15, align 8, !dbg !997
  call void @jcopy_sample_rows(ptr noundef %9, i32 noundef 0, ptr noundef %10, i32 noundef 0, i32 noundef %13, i32 noundef %16), !dbg !998
  %17 = load ptr, ptr %8, align 8, !dbg !999
  %18 = load ptr, ptr %5, align 8, !dbg !1000
  %19 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %18, i32 0, i32 39, !dbg !1001
  %20 = load i32, ptr %19, align 4, !dbg !1001
  %21 = load ptr, ptr %5, align 8, !dbg !1002
  %22 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %21, i32 0, i32 6, !dbg !1003
  %23 = load i32, ptr %22, align 8, !dbg !1003
  %24 = load ptr, ptr %6, align 8, !dbg !1004
  %25 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %24, i32 0, i32 7, !dbg !1005
  %26 = load i32, ptr %25, align 4, !dbg !1005
  %27 = mul i32 %26, 8, !dbg !1006
  call void @expand_right_edge(ptr noundef %17, i32 noundef %20, i32 noundef %23, i32 noundef %27), !dbg !1007
  ret void, !dbg !1008
}

; Function Attrs: noinline nounwind uwtable
define internal void @h2v1_downsample(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 !dbg !1009 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
    #dbg_declare(ptr %5, !1010, !DIExpression(), !1011)
  store ptr %1, ptr %6, align 8
    #dbg_declare(ptr %6, !1012, !DIExpression(), !1013)
  store ptr %2, ptr %7, align 8
    #dbg_declare(ptr %7, !1014, !DIExpression(), !1015)
  store ptr %3, ptr %8, align 8
    #dbg_declare(ptr %8, !1016, !DIExpression(), !1017)
    #dbg_declare(ptr %9, !1018, !DIExpression(), !1019)
    #dbg_declare(ptr %10, !1020, !DIExpression(), !1021)
    #dbg_declare(ptr %11, !1022, !DIExpression(), !1023)
  %15 = load ptr, ptr %6, align 8, !dbg !1024
  %16 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %15, i32 0, i32 7, !dbg !1025
  %17 = load i32, ptr %16, align 4, !dbg !1025
  %18 = mul i32 %17, 8, !dbg !1026
  store i32 %18, ptr %11, align 4, !dbg !1023
    #dbg_declare(ptr %12, !1027, !DIExpression(), !1028)
    #dbg_declare(ptr %13, !1029, !DIExpression(), !1030)
    #dbg_declare(ptr %14, !1031, !DIExpression(), !1032)
  %19 = load ptr, ptr %7, align 8, !dbg !1033
  %20 = load ptr, ptr %5, align 8, !dbg !1034
  %21 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %20, i32 0, i32 39, !dbg !1035
  %22 = load i32, ptr %21, align 4, !dbg !1035
  %23 = load ptr, ptr %5, align 8, !dbg !1036
  %24 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %23, i32 0, i32 6, !dbg !1037
  %25 = load i32, ptr %24, align 8, !dbg !1037
  %26 = load i32, ptr %11, align 4, !dbg !1038
  %27 = mul i32 %26, 2, !dbg !1039
  call void @expand_right_edge(ptr noundef %19, i32 noundef %22, i32 noundef %25, i32 noundef %27), !dbg !1040
  store i32 0, ptr %9, align 4, !dbg !1041
  br label %28, !dbg !1043

28:                                               ; preds = %72, %4
  %29 = load i32, ptr %9, align 4, !dbg !1044
  %30 = load ptr, ptr %6, align 8, !dbg !1046
  %31 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %30, i32 0, i32 3, !dbg !1047
  %32 = load i32, ptr %31, align 4, !dbg !1047
  %33 = icmp slt i32 %29, %32, !dbg !1048
  br i1 %33, label %34, label %75, !dbg !1049

34:                                               ; preds = %28
  %35 = load ptr, ptr %8, align 8, !dbg !1050
  %36 = load i32, ptr %9, align 4, !dbg !1052
  %37 = sext i32 %36 to i64, !dbg !1050
  %38 = getelementptr inbounds ptr, ptr %35, i64 %37, !dbg !1050
  %39 = load ptr, ptr %38, align 8, !dbg !1050
  store ptr %39, ptr %13, align 8, !dbg !1053
  %40 = load ptr, ptr %7, align 8, !dbg !1054
  %41 = load i32, ptr %9, align 4, !dbg !1055
  %42 = sext i32 %41 to i64, !dbg !1054
  %43 = getelementptr inbounds ptr, ptr %40, i64 %42, !dbg !1054
  %44 = load ptr, ptr %43, align 8, !dbg !1054
  store ptr %44, ptr %12, align 8, !dbg !1056
  store i32 0, ptr %14, align 4, !dbg !1057
  store i32 0, ptr %10, align 4, !dbg !1058
  br label %45, !dbg !1060

45:                                               ; preds = %68, %34
  %46 = load i32, ptr %10, align 4, !dbg !1061
  %47 = load i32, ptr %11, align 4, !dbg !1063
  %48 = icmp ult i32 %46, %47, !dbg !1064
  br i1 %48, label %49, label %71, !dbg !1065

49:                                               ; preds = %45
  %50 = load ptr, ptr %12, align 8, !dbg !1066
  %51 = load i8, ptr %50, align 1, !dbg !1066
  %52 = zext i8 %51 to i32, !dbg !1066
  %53 = load ptr, ptr %12, align 8, !dbg !1068
  %54 = getelementptr inbounds i8, ptr %53, i64 1, !dbg !1068
  %55 = load i8, ptr %54, align 1, !dbg !1068
  %56 = zext i8 %55 to i32, !dbg !1068
  %57 = add nsw i32 %52, %56, !dbg !1069
  %58 = load i32, ptr %14, align 4, !dbg !1070
  %59 = add nsw i32 %57, %58, !dbg !1071
  %60 = ashr i32 %59, 1, !dbg !1072
  %61 = trunc i32 %60 to i8, !dbg !1073
  %62 = load ptr, ptr %13, align 8, !dbg !1074
  %63 = getelementptr inbounds nuw i8, ptr %62, i32 1, !dbg !1074
  store ptr %63, ptr %13, align 8, !dbg !1074
  store i8 %61, ptr %62, align 1, !dbg !1075
  %64 = load i32, ptr %14, align 4, !dbg !1076
  %65 = xor i32 %64, 1, !dbg !1076
  store i32 %65, ptr %14, align 4, !dbg !1076
  %66 = load ptr, ptr %12, align 8, !dbg !1077
  %67 = getelementptr inbounds i8, ptr %66, i64 2, !dbg !1077
  store ptr %67, ptr %12, align 8, !dbg !1077
  br label %68, !dbg !1078

68:                                               ; preds = %49
  %69 = load i32, ptr %10, align 4, !dbg !1079
  %70 = add i32 %69, 1, !dbg !1079
  store i32 %70, ptr %10, align 4, !dbg !1079
  br label %45, !dbg !1080, !llvm.loop !1081

71:                                               ; preds = %45
  br label %72, !dbg !1083

72:                                               ; preds = %71
  %73 = load i32, ptr %9, align 4, !dbg !1084
  %74 = add nsw i32 %73, 1, !dbg !1084
  store i32 %74, ptr %9, align 4, !dbg !1084
  br label %28, !dbg !1085, !llvm.loop !1086

75:                                               ; preds = %28
  ret void, !dbg !1088
}

; Function Attrs: noinline nounwind uwtable
define internal void @h2v2_smooth_downsample(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 !dbg !1089 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store ptr %0, ptr %5, align 8
    #dbg_declare(ptr %5, !1090, !DIExpression(), !1091)
  store ptr %1, ptr %6, align 8
    #dbg_declare(ptr %6, !1092, !DIExpression(), !1093)
  store ptr %2, ptr %7, align 8
    #dbg_declare(ptr %7, !1094, !DIExpression(), !1095)
  store ptr %3, ptr %8, align 8
    #dbg_declare(ptr %8, !1096, !DIExpression(), !1097)
    #dbg_declare(ptr %9, !1098, !DIExpression(), !1099)
    #dbg_declare(ptr %10, !1100, !DIExpression(), !1101)
    #dbg_declare(ptr %11, !1102, !DIExpression(), !1103)
    #dbg_declare(ptr %12, !1104, !DIExpression(), !1105)
  %22 = load ptr, ptr %6, align 8, !dbg !1106
  %23 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %22, i32 0, i32 7, !dbg !1107
  %24 = load i32, ptr %23, align 4, !dbg !1107
  %25 = mul i32 %24, 8, !dbg !1108
  store i32 %25, ptr %12, align 4, !dbg !1105
    #dbg_declare(ptr %13, !1109, !DIExpression(), !1110)
    #dbg_declare(ptr %14, !1111, !DIExpression(), !1112)
    #dbg_declare(ptr %15, !1113, !DIExpression(), !1114)
    #dbg_declare(ptr %16, !1115, !DIExpression(), !1116)
    #dbg_declare(ptr %17, !1117, !DIExpression(), !1118)
    #dbg_declare(ptr %18, !1119, !DIExpression(), !1120)
    #dbg_declare(ptr %19, !1121, !DIExpression(), !1122)
    #dbg_declare(ptr %20, !1123, !DIExpression(), !1124)
    #dbg_declare(ptr %21, !1125, !DIExpression(), !1126)
  %26 = load ptr, ptr %7, align 8, !dbg !1127
  %27 = getelementptr inbounds ptr, ptr %26, i64 -1, !dbg !1128
  %28 = load ptr, ptr %5, align 8, !dbg !1129
  %29 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %28, i32 0, i32 39, !dbg !1130
  %30 = load i32, ptr %29, align 4, !dbg !1130
  %31 = add nsw i32 %30, 2, !dbg !1131
  %32 = load ptr, ptr %5, align 8, !dbg !1132
  %33 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %32, i32 0, i32 6, !dbg !1133
  %34 = load i32, ptr %33, align 8, !dbg !1133
  %35 = load i32, ptr %12, align 4, !dbg !1134
  %36 = mul i32 %35, 2, !dbg !1135
  call void @expand_right_edge(ptr noundef %27, i32 noundef %31, i32 noundef %34, i32 noundef %36), !dbg !1136
  %37 = load ptr, ptr %5, align 8, !dbg !1137
  %38 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %37, i32 0, i32 27, !dbg !1138
  %39 = load i32, ptr %38, align 8, !dbg !1138
  %40 = mul nsw i32 %39, 80, !dbg !1139
  %41 = sub nsw i32 16384, %40, !dbg !1140
  %42 = sext i32 %41 to i64, !dbg !1141
  store i64 %42, ptr %20, align 8, !dbg !1142
  %43 = load ptr, ptr %5, align 8, !dbg !1143
  %44 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %43, i32 0, i32 27, !dbg !1144
  %45 = load i32, ptr %44, align 8, !dbg !1144
  %46 = mul nsw i32 %45, 16, !dbg !1145
  %47 = sext i32 %46 to i64, !dbg !1143
  store i64 %47, ptr %21, align 8, !dbg !1146
  store i32 0, ptr %9, align 4, !dbg !1147
  store i32 0, ptr %10, align 4, !dbg !1148
  br label %48, !dbg !1150

48:                                               ; preds = %388, %4
  %49 = load i32, ptr %10, align 4, !dbg !1151
  %50 = load ptr, ptr %6, align 8, !dbg !1153
  %51 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %50, i32 0, i32 3, !dbg !1154
  %52 = load i32, ptr %51, align 4, !dbg !1154
  %53 = icmp slt i32 %49, %52, !dbg !1155
  br i1 %53, label %54, label %391, !dbg !1156

54:                                               ; preds = %48
  %55 = load ptr, ptr %8, align 8, !dbg !1157
  %56 = load i32, ptr %10, align 4, !dbg !1159
  %57 = sext i32 %56 to i64, !dbg !1157
  %58 = getelementptr inbounds ptr, ptr %55, i64 %57, !dbg !1157
  %59 = load ptr, ptr %58, align 8, !dbg !1157
  store ptr %59, ptr %17, align 8, !dbg !1160
  %60 = load ptr, ptr %7, align 8, !dbg !1161
  %61 = load i32, ptr %9, align 4, !dbg !1162
  %62 = sext i32 %61 to i64, !dbg !1161
  %63 = getelementptr inbounds ptr, ptr %60, i64 %62, !dbg !1161
  %64 = load ptr, ptr %63, align 8, !dbg !1161
  store ptr %64, ptr %13, align 8, !dbg !1163
  %65 = load ptr, ptr %7, align 8, !dbg !1164
  %66 = load i32, ptr %9, align 4, !dbg !1165
  %67 = add nsw i32 %66, 1, !dbg !1166
  %68 = sext i32 %67 to i64, !dbg !1164
  %69 = getelementptr inbounds ptr, ptr %65, i64 %68, !dbg !1164
  %70 = load ptr, ptr %69, align 8, !dbg !1164
  store ptr %70, ptr %14, align 8, !dbg !1167
  %71 = load ptr, ptr %7, align 8, !dbg !1168
  %72 = load i32, ptr %9, align 4, !dbg !1169
  %73 = sub nsw i32 %72, 1, !dbg !1170
  %74 = sext i32 %73 to i64, !dbg !1168
  %75 = getelementptr inbounds ptr, ptr %71, i64 %74, !dbg !1168
  %76 = load ptr, ptr %75, align 8, !dbg !1168
  store ptr %76, ptr %15, align 8, !dbg !1171
  %77 = load ptr, ptr %7, align 8, !dbg !1172
  %78 = load i32, ptr %9, align 4, !dbg !1173
  %79 = add nsw i32 %78, 2, !dbg !1174
  %80 = sext i32 %79 to i64, !dbg !1172
  %81 = getelementptr inbounds ptr, ptr %77, i64 %80, !dbg !1172
  %82 = load ptr, ptr %81, align 8, !dbg !1172
  store ptr %82, ptr %16, align 8, !dbg !1175
  %83 = load ptr, ptr %13, align 8, !dbg !1176
  %84 = load i8, ptr %83, align 1, !dbg !1176
  %85 = zext i8 %84 to i32, !dbg !1176
  %86 = load ptr, ptr %13, align 8, !dbg !1177
  %87 = getelementptr inbounds i8, ptr %86, i64 1, !dbg !1177
  %88 = load i8, ptr %87, align 1, !dbg !1177
  %89 = zext i8 %88 to i32, !dbg !1177
  %90 = add nsw i32 %85, %89, !dbg !1178
  %91 = load ptr, ptr %14, align 8, !dbg !1179
  %92 = load i8, ptr %91, align 1, !dbg !1179
  %93 = zext i8 %92 to i32, !dbg !1179
  %94 = add nsw i32 %90, %93, !dbg !1180
  %95 = load ptr, ptr %14, align 8, !dbg !1181
  %96 = getelementptr inbounds i8, ptr %95, i64 1, !dbg !1181
  %97 = load i8, ptr %96, align 1, !dbg !1181
  %98 = zext i8 %97 to i32, !dbg !1181
  %99 = add nsw i32 %94, %98, !dbg !1182
  %100 = sext i32 %99 to i64, !dbg !1176
  store i64 %100, ptr %18, align 8, !dbg !1183
  %101 = load ptr, ptr %15, align 8, !dbg !1184
  %102 = load i8, ptr %101, align 1, !dbg !1184
  %103 = zext i8 %102 to i32, !dbg !1184
  %104 = load ptr, ptr %15, align 8, !dbg !1185
  %105 = getelementptr inbounds i8, ptr %104, i64 1, !dbg !1185
  %106 = load i8, ptr %105, align 1, !dbg !1185
  %107 = zext i8 %106 to i32, !dbg !1185
  %108 = add nsw i32 %103, %107, !dbg !1186
  %109 = load ptr, ptr %16, align 8, !dbg !1187
  %110 = load i8, ptr %109, align 1, !dbg !1187
  %111 = zext i8 %110 to i32, !dbg !1187
  %112 = add nsw i32 %108, %111, !dbg !1188
  %113 = load ptr, ptr %16, align 8, !dbg !1189
  %114 = getelementptr inbounds i8, ptr %113, i64 1, !dbg !1189
  %115 = load i8, ptr %114, align 1, !dbg !1189
  %116 = zext i8 %115 to i32, !dbg !1189
  %117 = add nsw i32 %112, %116, !dbg !1190
  %118 = load ptr, ptr %13, align 8, !dbg !1191
  %119 = load i8, ptr %118, align 1, !dbg !1191
  %120 = zext i8 %119 to i32, !dbg !1191
  %121 = add nsw i32 %117, %120, !dbg !1192
  %122 = load ptr, ptr %13, align 8, !dbg !1193
  %123 = getelementptr inbounds i8, ptr %122, i64 2, !dbg !1193
  %124 = load i8, ptr %123, align 1, !dbg !1193
  %125 = zext i8 %124 to i32, !dbg !1193
  %126 = add nsw i32 %121, %125, !dbg !1194
  %127 = load ptr, ptr %14, align 8, !dbg !1195
  %128 = load i8, ptr %127, align 1, !dbg !1195
  %129 = zext i8 %128 to i32, !dbg !1195
  %130 = add nsw i32 %126, %129, !dbg !1196
  %131 = load ptr, ptr %14, align 8, !dbg !1197
  %132 = getelementptr inbounds i8, ptr %131, i64 2, !dbg !1197
  %133 = load i8, ptr %132, align 1, !dbg !1197
  %134 = zext i8 %133 to i32, !dbg !1197
  %135 = add nsw i32 %130, %134, !dbg !1198
  %136 = sext i32 %135 to i64, !dbg !1184
  store i64 %136, ptr %19, align 8, !dbg !1199
  %137 = load i64, ptr %19, align 8, !dbg !1200
  %138 = load i64, ptr %19, align 8, !dbg !1201
  %139 = add nsw i64 %138, %137, !dbg !1201
  store i64 %139, ptr %19, align 8, !dbg !1201
  %140 = load ptr, ptr %15, align 8, !dbg !1202
  %141 = load i8, ptr %140, align 1, !dbg !1202
  %142 = zext i8 %141 to i32, !dbg !1202
  %143 = load ptr, ptr %15, align 8, !dbg !1203
  %144 = getelementptr inbounds i8, ptr %143, i64 2, !dbg !1203
  %145 = load i8, ptr %144, align 1, !dbg !1203
  %146 = zext i8 %145 to i32, !dbg !1203
  %147 = add nsw i32 %142, %146, !dbg !1204
  %148 = load ptr, ptr %16, align 8, !dbg !1205
  %149 = load i8, ptr %148, align 1, !dbg !1205
  %150 = zext i8 %149 to i32, !dbg !1205
  %151 = add nsw i32 %147, %150, !dbg !1206
  %152 = load ptr, ptr %16, align 8, !dbg !1207
  %153 = getelementptr inbounds i8, ptr %152, i64 2, !dbg !1207
  %154 = load i8, ptr %153, align 1, !dbg !1207
  %155 = zext i8 %154 to i32, !dbg !1207
  %156 = add nsw i32 %151, %155, !dbg !1208
  %157 = sext i32 %156 to i64, !dbg !1202
  %158 = load i64, ptr %19, align 8, !dbg !1209
  %159 = add nsw i64 %158, %157, !dbg !1209
  store i64 %159, ptr %19, align 8, !dbg !1209
  %160 = load i64, ptr %18, align 8, !dbg !1210
  %161 = load i64, ptr %20, align 8, !dbg !1211
  %162 = mul nsw i64 %160, %161, !dbg !1212
  %163 = load i64, ptr %19, align 8, !dbg !1213
  %164 = load i64, ptr %21, align 8, !dbg !1214
  %165 = mul nsw i64 %163, %164, !dbg !1215
  %166 = add nsw i64 %162, %165, !dbg !1216
  store i64 %166, ptr %18, align 8, !dbg !1217
  %167 = load i64, ptr %18, align 8, !dbg !1218
  %168 = add nsw i64 %167, 32768, !dbg !1219
  %169 = ashr i64 %168, 16, !dbg !1220
  %170 = trunc i64 %169 to i8, !dbg !1221
  %171 = load ptr, ptr %17, align 8, !dbg !1222
  %172 = getelementptr inbounds nuw i8, ptr %171, i32 1, !dbg !1222
  store ptr %172, ptr %17, align 8, !dbg !1222
  store i8 %170, ptr %171, align 1, !dbg !1223
  %173 = load ptr, ptr %13, align 8, !dbg !1224
  %174 = getelementptr inbounds i8, ptr %173, i64 2, !dbg !1224
  store ptr %174, ptr %13, align 8, !dbg !1224
  %175 = load ptr, ptr %14, align 8, !dbg !1225
  %176 = getelementptr inbounds i8, ptr %175, i64 2, !dbg !1225
  store ptr %176, ptr %14, align 8, !dbg !1225
  %177 = load ptr, ptr %15, align 8, !dbg !1226
  %178 = getelementptr inbounds i8, ptr %177, i64 2, !dbg !1226
  store ptr %178, ptr %15, align 8, !dbg !1226
  %179 = load ptr, ptr %16, align 8, !dbg !1227
  %180 = getelementptr inbounds i8, ptr %179, i64 2, !dbg !1227
  store ptr %180, ptr %16, align 8, !dbg !1227
  %181 = load i32, ptr %12, align 4, !dbg !1228
  %182 = sub i32 %181, 2, !dbg !1230
  store i32 %182, ptr %11, align 4, !dbg !1231
  br label %183, !dbg !1232

183:                                              ; preds = %289, %54
  %184 = load i32, ptr %11, align 4, !dbg !1233
  %185 = icmp ugt i32 %184, 0, !dbg !1235
  br i1 %185, label %186, label %292, !dbg !1236

186:                                              ; preds = %183
  %187 = load ptr, ptr %13, align 8, !dbg !1237
  %188 = load i8, ptr %187, align 1, !dbg !1237
  %189 = zext i8 %188 to i32, !dbg !1237
  %190 = load ptr, ptr %13, align 8, !dbg !1239
  %191 = getelementptr inbounds i8, ptr %190, i64 1, !dbg !1239
  %192 = load i8, ptr %191, align 1, !dbg !1239
  %193 = zext i8 %192 to i32, !dbg !1239
  %194 = add nsw i32 %189, %193, !dbg !1240
  %195 = load ptr, ptr %14, align 8, !dbg !1241
  %196 = load i8, ptr %195, align 1, !dbg !1241
  %197 = zext i8 %196 to i32, !dbg !1241
  %198 = add nsw i32 %194, %197, !dbg !1242
  %199 = load ptr, ptr %14, align 8, !dbg !1243
  %200 = getelementptr inbounds i8, ptr %199, i64 1, !dbg !1243
  %201 = load i8, ptr %200, align 1, !dbg !1243
  %202 = zext i8 %201 to i32, !dbg !1243
  %203 = add nsw i32 %198, %202, !dbg !1244
  %204 = sext i32 %203 to i64, !dbg !1237
  store i64 %204, ptr %18, align 8, !dbg !1245
  %205 = load ptr, ptr %15, align 8, !dbg !1246
  %206 = load i8, ptr %205, align 1, !dbg !1246
  %207 = zext i8 %206 to i32, !dbg !1246
  %208 = load ptr, ptr %15, align 8, !dbg !1247
  %209 = getelementptr inbounds i8, ptr %208, i64 1, !dbg !1247
  %210 = load i8, ptr %209, align 1, !dbg !1247
  %211 = zext i8 %210 to i32, !dbg !1247
  %212 = add nsw i32 %207, %211, !dbg !1248
  %213 = load ptr, ptr %16, align 8, !dbg !1249
  %214 = load i8, ptr %213, align 1, !dbg !1249
  %215 = zext i8 %214 to i32, !dbg !1249
  %216 = add nsw i32 %212, %215, !dbg !1250
  %217 = load ptr, ptr %16, align 8, !dbg !1251
  %218 = getelementptr inbounds i8, ptr %217, i64 1, !dbg !1251
  %219 = load i8, ptr %218, align 1, !dbg !1251
  %220 = zext i8 %219 to i32, !dbg !1251
  %221 = add nsw i32 %216, %220, !dbg !1252
  %222 = load ptr, ptr %13, align 8, !dbg !1253
  %223 = getelementptr inbounds i8, ptr %222, i64 -1, !dbg !1253
  %224 = load i8, ptr %223, align 1, !dbg !1253
  %225 = zext i8 %224 to i32, !dbg !1253
  %226 = add nsw i32 %221, %225, !dbg !1254
  %227 = load ptr, ptr %13, align 8, !dbg !1255
  %228 = getelementptr inbounds i8, ptr %227, i64 2, !dbg !1255
  %229 = load i8, ptr %228, align 1, !dbg !1255
  %230 = zext i8 %229 to i32, !dbg !1255
  %231 = add nsw i32 %226, %230, !dbg !1256
  %232 = load ptr, ptr %14, align 8, !dbg !1257
  %233 = getelementptr inbounds i8, ptr %232, i64 -1, !dbg !1257
  %234 = load i8, ptr %233, align 1, !dbg !1257
  %235 = zext i8 %234 to i32, !dbg !1257
  %236 = add nsw i32 %231, %235, !dbg !1258
  %237 = load ptr, ptr %14, align 8, !dbg !1259
  %238 = getelementptr inbounds i8, ptr %237, i64 2, !dbg !1259
  %239 = load i8, ptr %238, align 1, !dbg !1259
  %240 = zext i8 %239 to i32, !dbg !1259
  %241 = add nsw i32 %236, %240, !dbg !1260
  %242 = sext i32 %241 to i64, !dbg !1246
  store i64 %242, ptr %19, align 8, !dbg !1261
  %243 = load i64, ptr %19, align 8, !dbg !1262
  %244 = load i64, ptr %19, align 8, !dbg !1263
  %245 = add nsw i64 %244, %243, !dbg !1263
  store i64 %245, ptr %19, align 8, !dbg !1263
  %246 = load ptr, ptr %15, align 8, !dbg !1264
  %247 = getelementptr inbounds i8, ptr %246, i64 -1, !dbg !1264
  %248 = load i8, ptr %247, align 1, !dbg !1264
  %249 = zext i8 %248 to i32, !dbg !1264
  %250 = load ptr, ptr %15, align 8, !dbg !1265
  %251 = getelementptr inbounds i8, ptr %250, i64 2, !dbg !1265
  %252 = load i8, ptr %251, align 1, !dbg !1265
  %253 = zext i8 %252 to i32, !dbg !1265
  %254 = add nsw i32 %249, %253, !dbg !1266
  %255 = load ptr, ptr %16, align 8, !dbg !1267
  %256 = getelementptr inbounds i8, ptr %255, i64 -1, !dbg !1267
  %257 = load i8, ptr %256, align 1, !dbg !1267
  %258 = zext i8 %257 to i32, !dbg !1267
  %259 = add nsw i32 %254, %258, !dbg !1268
  %260 = load ptr, ptr %16, align 8, !dbg !1269
  %261 = getelementptr inbounds i8, ptr %260, i64 2, !dbg !1269
  %262 = load i8, ptr %261, align 1, !dbg !1269
  %263 = zext i8 %262 to i32, !dbg !1269
  %264 = add nsw i32 %259, %263, !dbg !1270
  %265 = sext i32 %264 to i64, !dbg !1264
  %266 = load i64, ptr %19, align 8, !dbg !1271
  %267 = add nsw i64 %266, %265, !dbg !1271
  store i64 %267, ptr %19, align 8, !dbg !1271
  %268 = load i64, ptr %18, align 8, !dbg !1272
  %269 = load i64, ptr %20, align 8, !dbg !1273
  %270 = mul nsw i64 %268, %269, !dbg !1274
  %271 = load i64, ptr %19, align 8, !dbg !1275
  %272 = load i64, ptr %21, align 8, !dbg !1276
  %273 = mul nsw i64 %271, %272, !dbg !1277
  %274 = add nsw i64 %270, %273, !dbg !1278
  store i64 %274, ptr %18, align 8, !dbg !1279
  %275 = load i64, ptr %18, align 8, !dbg !1280
  %276 = add nsw i64 %275, 32768, !dbg !1281
  %277 = ashr i64 %276, 16, !dbg !1282
  %278 = trunc i64 %277 to i8, !dbg !1283
  %279 = load ptr, ptr %17, align 8, !dbg !1284
  %280 = getelementptr inbounds nuw i8, ptr %279, i32 1, !dbg !1284
  store ptr %280, ptr %17, align 8, !dbg !1284
  store i8 %278, ptr %279, align 1, !dbg !1285
  %281 = load ptr, ptr %13, align 8, !dbg !1286
  %282 = getelementptr inbounds i8, ptr %281, i64 2, !dbg !1286
  store ptr %282, ptr %13, align 8, !dbg !1286
  %283 = load ptr, ptr %14, align 8, !dbg !1287
  %284 = getelementptr inbounds i8, ptr %283, i64 2, !dbg !1287
  store ptr %284, ptr %14, align 8, !dbg !1287
  %285 = load ptr, ptr %15, align 8, !dbg !1288
  %286 = getelementptr inbounds i8, ptr %285, i64 2, !dbg !1288
  store ptr %286, ptr %15, align 8, !dbg !1288
  %287 = load ptr, ptr %16, align 8, !dbg !1289
  %288 = getelementptr inbounds i8, ptr %287, i64 2, !dbg !1289
  store ptr %288, ptr %16, align 8, !dbg !1289
  br label %289, !dbg !1290

289:                                              ; preds = %186
  %290 = load i32, ptr %11, align 4, !dbg !1291
  %291 = add i32 %290, -1, !dbg !1291
  store i32 %291, ptr %11, align 4, !dbg !1291
  br label %183, !dbg !1292, !llvm.loop !1293

292:                                              ; preds = %183
  %293 = load ptr, ptr %13, align 8, !dbg !1295
  %294 = load i8, ptr %293, align 1, !dbg !1295
  %295 = zext i8 %294 to i32, !dbg !1295
  %296 = load ptr, ptr %13, align 8, !dbg !1296
  %297 = getelementptr inbounds i8, ptr %296, i64 1, !dbg !1296
  %298 = load i8, ptr %297, align 1, !dbg !1296
  %299 = zext i8 %298 to i32, !dbg !1296
  %300 = add nsw i32 %295, %299, !dbg !1297
  %301 = load ptr, ptr %14, align 8, !dbg !1298
  %302 = load i8, ptr %301, align 1, !dbg !1298
  %303 = zext i8 %302 to i32, !dbg !1298
  %304 = add nsw i32 %300, %303, !dbg !1299
  %305 = load ptr, ptr %14, align 8, !dbg !1300
  %306 = getelementptr inbounds i8, ptr %305, i64 1, !dbg !1300
  %307 = load i8, ptr %306, align 1, !dbg !1300
  %308 = zext i8 %307 to i32, !dbg !1300
  %309 = add nsw i32 %304, %308, !dbg !1301
  %310 = sext i32 %309 to i64, !dbg !1295
  store i64 %310, ptr %18, align 8, !dbg !1302
  %311 = load ptr, ptr %15, align 8, !dbg !1303
  %312 = load i8, ptr %311, align 1, !dbg !1303
  %313 = zext i8 %312 to i32, !dbg !1303
  %314 = load ptr, ptr %15, align 8, !dbg !1304
  %315 = getelementptr inbounds i8, ptr %314, i64 1, !dbg !1304
  %316 = load i8, ptr %315, align 1, !dbg !1304
  %317 = zext i8 %316 to i32, !dbg !1304
  %318 = add nsw i32 %313, %317, !dbg !1305
  %319 = load ptr, ptr %16, align 8, !dbg !1306
  %320 = load i8, ptr %319, align 1, !dbg !1306
  %321 = zext i8 %320 to i32, !dbg !1306
  %322 = add nsw i32 %318, %321, !dbg !1307
  %323 = load ptr, ptr %16, align 8, !dbg !1308
  %324 = getelementptr inbounds i8, ptr %323, i64 1, !dbg !1308
  %325 = load i8, ptr %324, align 1, !dbg !1308
  %326 = zext i8 %325 to i32, !dbg !1308
  %327 = add nsw i32 %322, %326, !dbg !1309
  %328 = load ptr, ptr %13, align 8, !dbg !1310
  %329 = getelementptr inbounds i8, ptr %328, i64 -1, !dbg !1310
  %330 = load i8, ptr %329, align 1, !dbg !1310
  %331 = zext i8 %330 to i32, !dbg !1310
  %332 = add nsw i32 %327, %331, !dbg !1311
  %333 = load ptr, ptr %13, align 8, !dbg !1312
  %334 = getelementptr inbounds i8, ptr %333, i64 1, !dbg !1312
  %335 = load i8, ptr %334, align 1, !dbg !1312
  %336 = zext i8 %335 to i32, !dbg !1312
  %337 = add nsw i32 %332, %336, !dbg !1313
  %338 = load ptr, ptr %14, align 8, !dbg !1314
  %339 = getelementptr inbounds i8, ptr %338, i64 -1, !dbg !1314
  %340 = load i8, ptr %339, align 1, !dbg !1314
  %341 = zext i8 %340 to i32, !dbg !1314
  %342 = add nsw i32 %337, %341, !dbg !1315
  %343 = load ptr, ptr %14, align 8, !dbg !1316
  %344 = getelementptr inbounds i8, ptr %343, i64 1, !dbg !1316
  %345 = load i8, ptr %344, align 1, !dbg !1316
  %346 = zext i8 %345 to i32, !dbg !1316
  %347 = add nsw i32 %342, %346, !dbg !1317
  %348 = sext i32 %347 to i64, !dbg !1303
  store i64 %348, ptr %19, align 8, !dbg !1318
  %349 = load i64, ptr %19, align 8, !dbg !1319
  %350 = load i64, ptr %19, align 8, !dbg !1320
  %351 = add nsw i64 %350, %349, !dbg !1320
  store i64 %351, ptr %19, align 8, !dbg !1320
  %352 = load ptr, ptr %15, align 8, !dbg !1321
  %353 = getelementptr inbounds i8, ptr %352, i64 -1, !dbg !1321
  %354 = load i8, ptr %353, align 1, !dbg !1321
  %355 = zext i8 %354 to i32, !dbg !1321
  %356 = load ptr, ptr %15, align 8, !dbg !1322
  %357 = getelementptr inbounds i8, ptr %356, i64 1, !dbg !1322
  %358 = load i8, ptr %357, align 1, !dbg !1322
  %359 = zext i8 %358 to i32, !dbg !1322
  %360 = add nsw i32 %355, %359, !dbg !1323
  %361 = load ptr, ptr %16, align 8, !dbg !1324
  %362 = getelementptr inbounds i8, ptr %361, i64 -1, !dbg !1324
  %363 = load i8, ptr %362, align 1, !dbg !1324
  %364 = zext i8 %363 to i32, !dbg !1324
  %365 = add nsw i32 %360, %364, !dbg !1325
  %366 = load ptr, ptr %16, align 8, !dbg !1326
  %367 = getelementptr inbounds i8, ptr %366, i64 1, !dbg !1326
  %368 = load i8, ptr %367, align 1, !dbg !1326
  %369 = zext i8 %368 to i32, !dbg !1326
  %370 = add nsw i32 %365, %369, !dbg !1327
  %371 = sext i32 %370 to i64, !dbg !1321
  %372 = load i64, ptr %19, align 8, !dbg !1328
  %373 = add nsw i64 %372, %371, !dbg !1328
  store i64 %373, ptr %19, align 8, !dbg !1328
  %374 = load i64, ptr %18, align 8, !dbg !1329
  %375 = load i64, ptr %20, align 8, !dbg !1330
  %376 = mul nsw i64 %374, %375, !dbg !1331
  %377 = load i64, ptr %19, align 8, !dbg !1332
  %378 = load i64, ptr %21, align 8, !dbg !1333
  %379 = mul nsw i64 %377, %378, !dbg !1334
  %380 = add nsw i64 %376, %379, !dbg !1335
  store i64 %380, ptr %18, align 8, !dbg !1336
  %381 = load i64, ptr %18, align 8, !dbg !1337
  %382 = add nsw i64 %381, 32768, !dbg !1338
  %383 = ashr i64 %382, 16, !dbg !1339
  %384 = trunc i64 %383 to i8, !dbg !1340
  %385 = load ptr, ptr %17, align 8, !dbg !1341
  store i8 %384, ptr %385, align 1, !dbg !1342
  %386 = load i32, ptr %9, align 4, !dbg !1343
  %387 = add nsw i32 %386, 2, !dbg !1343
  store i32 %387, ptr %9, align 4, !dbg !1343
  br label %388, !dbg !1344

388:                                              ; preds = %292
  %389 = load i32, ptr %10, align 4, !dbg !1345
  %390 = add nsw i32 %389, 1, !dbg !1345
  store i32 %390, ptr %10, align 4, !dbg !1345
  br label %48, !dbg !1346, !llvm.loop !1347

391:                                              ; preds = %48
  ret void, !dbg !1349
}

; Function Attrs: noinline nounwind uwtable
define internal void @h2v2_downsample(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 !dbg !1350 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
    #dbg_declare(ptr %5, !1351, !DIExpression(), !1352)
  store ptr %1, ptr %6, align 8
    #dbg_declare(ptr %6, !1353, !DIExpression(), !1354)
  store ptr %2, ptr %7, align 8
    #dbg_declare(ptr %7, !1355, !DIExpression(), !1356)
  store ptr %3, ptr %8, align 8
    #dbg_declare(ptr %8, !1357, !DIExpression(), !1358)
    #dbg_declare(ptr %9, !1359, !DIExpression(), !1360)
    #dbg_declare(ptr %10, !1361, !DIExpression(), !1362)
    #dbg_declare(ptr %11, !1363, !DIExpression(), !1364)
    #dbg_declare(ptr %12, !1365, !DIExpression(), !1366)
  %17 = load ptr, ptr %6, align 8, !dbg !1367
  %18 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %17, i32 0, i32 7, !dbg !1368
  %19 = load i32, ptr %18, align 4, !dbg !1368
  %20 = mul i32 %19, 8, !dbg !1369
  store i32 %20, ptr %12, align 4, !dbg !1366
    #dbg_declare(ptr %13, !1370, !DIExpression(), !1371)
    #dbg_declare(ptr %14, !1372, !DIExpression(), !1373)
    #dbg_declare(ptr %15, !1374, !DIExpression(), !1375)
    #dbg_declare(ptr %16, !1376, !DIExpression(), !1377)
  %21 = load ptr, ptr %7, align 8, !dbg !1378
  %22 = load ptr, ptr %5, align 8, !dbg !1379
  %23 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %22, i32 0, i32 39, !dbg !1380
  %24 = load i32, ptr %23, align 4, !dbg !1380
  %25 = load ptr, ptr %5, align 8, !dbg !1381
  %26 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %25, i32 0, i32 6, !dbg !1382
  %27 = load i32, ptr %26, align 8, !dbg !1382
  %28 = load i32, ptr %12, align 4, !dbg !1383
  %29 = mul i32 %28, 2, !dbg !1384
  call void @expand_right_edge(ptr noundef %21, i32 noundef %24, i32 noundef %27, i32 noundef %29), !dbg !1385
  store i32 0, ptr %9, align 4, !dbg !1386
  store i32 0, ptr %10, align 4, !dbg !1387
  br label %30, !dbg !1389

30:                                               ; preds = %93, %4
  %31 = load i32, ptr %10, align 4, !dbg !1390
  %32 = load ptr, ptr %6, align 8, !dbg !1392
  %33 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %32, i32 0, i32 3, !dbg !1393
  %34 = load i32, ptr %33, align 4, !dbg !1393
  %35 = icmp slt i32 %31, %34, !dbg !1394
  br i1 %35, label %36, label %96, !dbg !1395

36:                                               ; preds = %30
  %37 = load ptr, ptr %8, align 8, !dbg !1396
  %38 = load i32, ptr %10, align 4, !dbg !1398
  %39 = sext i32 %38 to i64, !dbg !1396
  %40 = getelementptr inbounds ptr, ptr %37, i64 %39, !dbg !1396
  %41 = load ptr, ptr %40, align 8, !dbg !1396
  store ptr %41, ptr %15, align 8, !dbg !1399
  %42 = load ptr, ptr %7, align 8, !dbg !1400
  %43 = load i32, ptr %9, align 4, !dbg !1401
  %44 = sext i32 %43 to i64, !dbg !1400
  %45 = getelementptr inbounds ptr, ptr %42, i64 %44, !dbg !1400
  %46 = load ptr, ptr %45, align 8, !dbg !1400
  store ptr %46, ptr %13, align 8, !dbg !1402
  %47 = load ptr, ptr %7, align 8, !dbg !1403
  %48 = load i32, ptr %9, align 4, !dbg !1404
  %49 = add nsw i32 %48, 1, !dbg !1405
  %50 = sext i32 %49 to i64, !dbg !1403
  %51 = getelementptr inbounds ptr, ptr %47, i64 %50, !dbg !1403
  %52 = load ptr, ptr %51, align 8, !dbg !1403
  store ptr %52, ptr %14, align 8, !dbg !1406
  store i32 1, ptr %16, align 4, !dbg !1407
  store i32 0, ptr %11, align 4, !dbg !1408
  br label %53, !dbg !1410

53:                                               ; preds = %87, %36
  %54 = load i32, ptr %11, align 4, !dbg !1411
  %55 = load i32, ptr %12, align 4, !dbg !1413
  %56 = icmp ult i32 %54, %55, !dbg !1414
  br i1 %56, label %57, label %90, !dbg !1415

57:                                               ; preds = %53
  %58 = load ptr, ptr %13, align 8, !dbg !1416
  %59 = load i8, ptr %58, align 1, !dbg !1416
  %60 = zext i8 %59 to i32, !dbg !1416
  %61 = load ptr, ptr %13, align 8, !dbg !1418
  %62 = getelementptr inbounds i8, ptr %61, i64 1, !dbg !1418
  %63 = load i8, ptr %62, align 1, !dbg !1418
  %64 = zext i8 %63 to i32, !dbg !1418
  %65 = add nsw i32 %60, %64, !dbg !1419
  %66 = load ptr, ptr %14, align 8, !dbg !1420
  %67 = load i8, ptr %66, align 1, !dbg !1420
  %68 = zext i8 %67 to i32, !dbg !1420
  %69 = add nsw i32 %65, %68, !dbg !1421
  %70 = load ptr, ptr %14, align 8, !dbg !1422
  %71 = getelementptr inbounds i8, ptr %70, i64 1, !dbg !1422
  %72 = load i8, ptr %71, align 1, !dbg !1422
  %73 = zext i8 %72 to i32, !dbg !1422
  %74 = add nsw i32 %69, %73, !dbg !1423
  %75 = load i32, ptr %16, align 4, !dbg !1424
  %76 = add nsw i32 %74, %75, !dbg !1425
  %77 = ashr i32 %76, 2, !dbg !1426
  %78 = trunc i32 %77 to i8, !dbg !1427
  %79 = load ptr, ptr %15, align 8, !dbg !1428
  %80 = getelementptr inbounds nuw i8, ptr %79, i32 1, !dbg !1428
  store ptr %80, ptr %15, align 8, !dbg !1428
  store i8 %78, ptr %79, align 1, !dbg !1429
  %81 = load i32, ptr %16, align 4, !dbg !1430
  %82 = xor i32 %81, 3, !dbg !1430
  store i32 %82, ptr %16, align 4, !dbg !1430
  %83 = load ptr, ptr %13, align 8, !dbg !1431
  %84 = getelementptr inbounds i8, ptr %83, i64 2, !dbg !1431
  store ptr %84, ptr %13, align 8, !dbg !1431
  %85 = load ptr, ptr %14, align 8, !dbg !1432
  %86 = getelementptr inbounds i8, ptr %85, i64 2, !dbg !1432
  store ptr %86, ptr %14, align 8, !dbg !1432
  br label %87, !dbg !1433

87:                                               ; preds = %57
  %88 = load i32, ptr %11, align 4, !dbg !1434
  %89 = add i32 %88, 1, !dbg !1434
  store i32 %89, ptr %11, align 4, !dbg !1434
  br label %53, !dbg !1435, !llvm.loop !1436

90:                                               ; preds = %53
  %91 = load i32, ptr %9, align 4, !dbg !1438
  %92 = add nsw i32 %91, 2, !dbg !1438
  store i32 %92, ptr %9, align 4, !dbg !1438
  br label %93, !dbg !1439

93:                                               ; preds = %90
  %94 = load i32, ptr %10, align 4, !dbg !1440
  %95 = add nsw i32 %94, 1, !dbg !1440
  store i32 %95, ptr %10, align 4, !dbg !1440
  br label %30, !dbg !1441, !llvm.loop !1442

96:                                               ; preds = %30
  ret void, !dbg !1444
}

; Function Attrs: noinline nounwind uwtable
define internal void @int_downsample(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 !dbg !1445 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca ptr, align 8
  %21 = alloca ptr, align 8
  %22 = alloca i64, align 8
  store ptr %0, ptr %5, align 8
    #dbg_declare(ptr %5, !1446, !DIExpression(), !1447)
  store ptr %1, ptr %6, align 8
    #dbg_declare(ptr %6, !1448, !DIExpression(), !1449)
  store ptr %2, ptr %7, align 8
    #dbg_declare(ptr %7, !1450, !DIExpression(), !1451)
  store ptr %3, ptr %8, align 8
    #dbg_declare(ptr %8, !1452, !DIExpression(), !1453)
    #dbg_declare(ptr %9, !1454, !DIExpression(), !1455)
    #dbg_declare(ptr %10, !1456, !DIExpression(), !1457)
    #dbg_declare(ptr %11, !1458, !DIExpression(), !1459)
    #dbg_declare(ptr %12, !1460, !DIExpression(), !1461)
    #dbg_declare(ptr %13, !1462, !DIExpression(), !1463)
    #dbg_declare(ptr %14, !1464, !DIExpression(), !1465)
    #dbg_declare(ptr %15, !1466, !DIExpression(), !1467)
    #dbg_declare(ptr %16, !1468, !DIExpression(), !1469)
    #dbg_declare(ptr %17, !1470, !DIExpression(), !1471)
    #dbg_declare(ptr %18, !1472, !DIExpression(), !1473)
    #dbg_declare(ptr %19, !1474, !DIExpression(), !1475)
  %23 = load ptr, ptr %6, align 8, !dbg !1476
  %24 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %23, i32 0, i32 7, !dbg !1477
  %25 = load i32, ptr %24, align 4, !dbg !1477
  %26 = mul i32 %25, 8, !dbg !1478
  store i32 %26, ptr %19, align 4, !dbg !1475
    #dbg_declare(ptr %20, !1479, !DIExpression(), !1480)
    #dbg_declare(ptr %21, !1481, !DIExpression(), !1482)
    #dbg_declare(ptr %22, !1483, !DIExpression(), !1484)
  %27 = load ptr, ptr %5, align 8, !dbg !1485
  %28 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %27, i32 0, i32 38, !dbg !1486
  %29 = load i32, ptr %28, align 8, !dbg !1486
  %30 = load ptr, ptr %6, align 8, !dbg !1487
  %31 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %30, i32 0, i32 2, !dbg !1488
  %32 = load i32, ptr %31, align 8, !dbg !1488
  %33 = sdiv i32 %29, %32, !dbg !1489
  store i32 %33, ptr %11, align 4, !dbg !1490
  %34 = load ptr, ptr %5, align 8, !dbg !1491
  %35 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %34, i32 0, i32 39, !dbg !1492
  %36 = load i32, ptr %35, align 4, !dbg !1492
  %37 = load ptr, ptr %6, align 8, !dbg !1493
  %38 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %37, i32 0, i32 3, !dbg !1494
  %39 = load i32, ptr %38, align 4, !dbg !1494
  %40 = sdiv i32 %36, %39, !dbg !1495
  store i32 %40, ptr %12, align 4, !dbg !1496
  %41 = load i32, ptr %11, align 4, !dbg !1497
  %42 = load i32, ptr %12, align 4, !dbg !1498
  %43 = mul nsw i32 %41, %42, !dbg !1499
  store i32 %43, ptr %13, align 4, !dbg !1500
  %44 = load i32, ptr %13, align 4, !dbg !1501
  %45 = sdiv i32 %44, 2, !dbg !1502
  store i32 %45, ptr %14, align 4, !dbg !1503
  %46 = load ptr, ptr %7, align 8, !dbg !1504
  %47 = load ptr, ptr %5, align 8, !dbg !1505
  %48 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %47, i32 0, i32 39, !dbg !1506
  %49 = load i32, ptr %48, align 4, !dbg !1506
  %50 = load ptr, ptr %5, align 8, !dbg !1507
  %51 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %50, i32 0, i32 6, !dbg !1508
  %52 = load i32, ptr %51, align 8, !dbg !1508
  %53 = load i32, ptr %19, align 4, !dbg !1509
  %54 = load i32, ptr %11, align 4, !dbg !1510
  %55 = mul i32 %53, %54, !dbg !1511
  call void @expand_right_edge(ptr noundef %46, i32 noundef %49, i32 noundef %52, i32 noundef %55), !dbg !1512
  store i32 0, ptr %9, align 4, !dbg !1513
  store i32 0, ptr %10, align 4, !dbg !1514
  br label %56, !dbg !1516

56:                                               ; preds = %128, %4
  %57 = load i32, ptr %10, align 4, !dbg !1517
  %58 = load ptr, ptr %6, align 8, !dbg !1519
  %59 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %58, i32 0, i32 3, !dbg !1520
  %60 = load i32, ptr %59, align 4, !dbg !1520
  %61 = icmp slt i32 %57, %60, !dbg !1521
  br i1 %61, label %62, label %131, !dbg !1522

62:                                               ; preds = %56
  %63 = load ptr, ptr %8, align 8, !dbg !1523
  %64 = load i32, ptr %10, align 4, !dbg !1525
  %65 = sext i32 %64 to i64, !dbg !1523
  %66 = getelementptr inbounds ptr, ptr %63, i64 %65, !dbg !1523
  %67 = load ptr, ptr %66, align 8, !dbg !1523
  store ptr %67, ptr %21, align 8, !dbg !1526
  store i32 0, ptr %17, align 4, !dbg !1527
  store i32 0, ptr %18, align 4, !dbg !1529
  br label %68, !dbg !1530

68:                                               ; preds = %118, %62
  %69 = load i32, ptr %17, align 4, !dbg !1531
  %70 = load i32, ptr %19, align 4, !dbg !1533
  %71 = icmp ult i32 %69, %70, !dbg !1534
  br i1 %71, label %72, label %124, !dbg !1535

72:                                               ; preds = %68
  store i64 0, ptr %22, align 8, !dbg !1536
  store i32 0, ptr %16, align 4, !dbg !1538
  br label %73, !dbg !1540

73:                                               ; preds = %104, %72
  %74 = load i32, ptr %16, align 4, !dbg !1541
  %75 = load i32, ptr %12, align 4, !dbg !1543
  %76 = icmp slt i32 %74, %75, !dbg !1544
  br i1 %76, label %77, label %107, !dbg !1545

77:                                               ; preds = %73
  %78 = load ptr, ptr %7, align 8, !dbg !1546
  %79 = load i32, ptr %9, align 4, !dbg !1548
  %80 = load i32, ptr %16, align 4, !dbg !1549
  %81 = add nsw i32 %79, %80, !dbg !1550
  %82 = sext i32 %81 to i64, !dbg !1546
  %83 = getelementptr inbounds ptr, ptr %78, i64 %82, !dbg !1546
  %84 = load ptr, ptr %83, align 8, !dbg !1546
  %85 = load i32, ptr %18, align 4, !dbg !1551
  %86 = zext i32 %85 to i64, !dbg !1552
  %87 = getelementptr inbounds nuw i8, ptr %84, i64 %86, !dbg !1552
  store ptr %87, ptr %20, align 8, !dbg !1553
  store i32 0, ptr %15, align 4, !dbg !1554
  br label %88, !dbg !1556

88:                                               ; preds = %100, %77
  %89 = load i32, ptr %15, align 4, !dbg !1557
  %90 = load i32, ptr %11, align 4, !dbg !1559
  %91 = icmp slt i32 %89, %90, !dbg !1560
  br i1 %91, label %92, label %103, !dbg !1561

92:                                               ; preds = %88
  %93 = load ptr, ptr %20, align 8, !dbg !1562
  %94 = getelementptr inbounds nuw i8, ptr %93, i32 1, !dbg !1562
  store ptr %94, ptr %20, align 8, !dbg !1562
  %95 = load i8, ptr %93, align 1, !dbg !1562
  %96 = zext i8 %95 to i32, !dbg !1562
  %97 = sext i32 %96 to i64, !dbg !1564
  %98 = load i64, ptr %22, align 8, !dbg !1565
  %99 = add nsw i64 %98, %97, !dbg !1565
  store i64 %99, ptr %22, align 8, !dbg !1565
  br label %100, !dbg !1566

100:                                              ; preds = %92
  %101 = load i32, ptr %15, align 4, !dbg !1567
  %102 = add nsw i32 %101, 1, !dbg !1567
  store i32 %102, ptr %15, align 4, !dbg !1567
  br label %88, !dbg !1568, !llvm.loop !1569

103:                                              ; preds = %88
  br label %104, !dbg !1571

104:                                              ; preds = %103
  %105 = load i32, ptr %16, align 4, !dbg !1572
  %106 = add nsw i32 %105, 1, !dbg !1572
  store i32 %106, ptr %16, align 4, !dbg !1572
  br label %73, !dbg !1573, !llvm.loop !1574

107:                                              ; preds = %73
  %108 = load i64, ptr %22, align 8, !dbg !1576
  %109 = load i32, ptr %14, align 4, !dbg !1577
  %110 = sext i32 %109 to i64, !dbg !1577
  %111 = add nsw i64 %108, %110, !dbg !1578
  %112 = load i32, ptr %13, align 4, !dbg !1579
  %113 = sext i32 %112 to i64, !dbg !1579
  %114 = sdiv i64 %111, %113, !dbg !1580
  %115 = trunc i64 %114 to i8, !dbg !1581
  %116 = load ptr, ptr %21, align 8, !dbg !1582
  %117 = getelementptr inbounds nuw i8, ptr %116, i32 1, !dbg !1582
  store ptr %117, ptr %21, align 8, !dbg !1582
  store i8 %115, ptr %116, align 1, !dbg !1583
  br label %118, !dbg !1584

118:                                              ; preds = %107
  %119 = load i32, ptr %17, align 4, !dbg !1585
  %120 = add i32 %119, 1, !dbg !1585
  store i32 %120, ptr %17, align 4, !dbg !1585
  %121 = load i32, ptr %11, align 4, !dbg !1586
  %122 = load i32, ptr %18, align 4, !dbg !1587
  %123 = add i32 %122, %121, !dbg !1587
  store i32 %123, ptr %18, align 4, !dbg !1587
  br label %68, !dbg !1588, !llvm.loop !1589

124:                                              ; preds = %68
  %125 = load i32, ptr %12, align 4, !dbg !1591
  %126 = load i32, ptr %9, align 4, !dbg !1592
  %127 = add nsw i32 %126, %125, !dbg !1592
  store i32 %127, ptr %9, align 4, !dbg !1592
  br label %128, !dbg !1593

128:                                              ; preds = %124
  %129 = load i32, ptr %10, align 4, !dbg !1594
  %130 = add nsw i32 %129, 1, !dbg !1594
  store i32 %130, ptr %10, align 4, !dbg !1594
  br label %56, !dbg !1595, !llvm.loop !1596

131:                                              ; preds = %56
  ret void, !dbg !1598
}

; Function Attrs: noinline nounwind uwtable
define internal void @expand_right_edge(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 !dbg !1599 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
    #dbg_declare(ptr %5, !1602, !DIExpression(), !1603)
  store i32 %1, ptr %6, align 4
    #dbg_declare(ptr %6, !1604, !DIExpression(), !1605)
  store i32 %2, ptr %7, align 4
    #dbg_declare(ptr %7, !1606, !DIExpression(), !1607)
  store i32 %3, ptr %8, align 4
    #dbg_declare(ptr %8, !1608, !DIExpression(), !1609)
    #dbg_declare(ptr %9, !1610, !DIExpression(), !1611)
    #dbg_declare(ptr %10, !1612, !DIExpression(), !1613)
    #dbg_declare(ptr %11, !1614, !DIExpression(), !1615)
    #dbg_declare(ptr %12, !1616, !DIExpression(), !1617)
    #dbg_declare(ptr %13, !1618, !DIExpression(), !1619)
  %14 = load i32, ptr %8, align 4, !dbg !1620
  %15 = load i32, ptr %7, align 4, !dbg !1621
  %16 = sub i32 %14, %15, !dbg !1622
  store i32 %16, ptr %13, align 4, !dbg !1619
  %17 = load i32, ptr %13, align 4, !dbg !1623
  %18 = icmp sgt i32 %17, 0, !dbg !1625
  br i1 %18, label %19, label %52, !dbg !1625

19:                                               ; preds = %4
  store i32 0, ptr %12, align 4, !dbg !1626
  br label %20, !dbg !1629

20:                                               ; preds = %48, %19
  %21 = load i32, ptr %12, align 4, !dbg !1630
  %22 = load i32, ptr %6, align 4, !dbg !1632
  %23 = icmp slt i32 %21, %22, !dbg !1633
  br i1 %23, label %24, label %51, !dbg !1634

24:                                               ; preds = %20
  %25 = load ptr, ptr %5, align 8, !dbg !1635
  %26 = load i32, ptr %12, align 4, !dbg !1637
  %27 = sext i32 %26 to i64, !dbg !1635
  %28 = getelementptr inbounds ptr, ptr %25, i64 %27, !dbg !1635
  %29 = load ptr, ptr %28, align 8, !dbg !1635
  %30 = load i32, ptr %7, align 4, !dbg !1638
  %31 = zext i32 %30 to i64, !dbg !1639
  %32 = getelementptr inbounds nuw i8, ptr %29, i64 %31, !dbg !1639
  store ptr %32, ptr %9, align 8, !dbg !1640
  %33 = load ptr, ptr %9, align 8, !dbg !1641
  %34 = getelementptr inbounds i8, ptr %33, i64 -1, !dbg !1641
  %35 = load i8, ptr %34, align 1, !dbg !1641
  store i8 %35, ptr %10, align 1, !dbg !1642
  %36 = load i32, ptr %13, align 4, !dbg !1643
  store i32 %36, ptr %11, align 4, !dbg !1645
  br label %37, !dbg !1646

37:                                               ; preds = %44, %24
  %38 = load i32, ptr %11, align 4, !dbg !1647
  %39 = icmp sgt i32 %38, 0, !dbg !1649
  br i1 %39, label %40, label %47, !dbg !1650

40:                                               ; preds = %37
  %41 = load i8, ptr %10, align 1, !dbg !1651
  %42 = load ptr, ptr %9, align 8, !dbg !1652
  %43 = getelementptr inbounds nuw i8, ptr %42, i32 1, !dbg !1652
  store ptr %43, ptr %9, align 8, !dbg !1652
  store i8 %41, ptr %42, align 1, !dbg !1653
  br label %44, !dbg !1654

44:                                               ; preds = %40
  %45 = load i32, ptr %11, align 4, !dbg !1655
  %46 = add nsw i32 %45, -1, !dbg !1655
  store i32 %46, ptr %11, align 4, !dbg !1655
  br label %37, !dbg !1656, !llvm.loop !1657

47:                                               ; preds = %37
  br label %48, !dbg !1659

48:                                               ; preds = %47
  %49 = load i32, ptr %12, align 4, !dbg !1660
  %50 = add nsw i32 %49, 1, !dbg !1660
  store i32 %50, ptr %12, align 4, !dbg !1660
  br label %20, !dbg !1661, !llvm.loop !1662

51:                                               ; preds = %20
  br label %52, !dbg !1664

52:                                               ; preds = %51, %4
  ret void, !dbg !1665
}

declare void @jcopy_sample_rows(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!533, !534, !535, !536, !537, !538, !539}
!llvm.ident = !{!540}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !149, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jcsample.c", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "ec3c4dcb82eec478cc53a84bd7d4f9e7")
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
!149 = !{!150, !174, !189, !498, !188, !201, !532}
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "my_downsample_ptr", file: !1, line: 67, baseType: !151)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "my_downsampler", file: !1, line: 65, baseType: !153)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 60, size: 832, elements: !154)
!154 = !{!155, !526}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "pub", scope: !153, file: !1, line: 61, baseType: !156, size: 192)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_downsampler", file: !19, line: 91, size: 192, elements: !157)
!157 = !{!158, !521, !525}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !156, file: !19, line: 92, baseType: !159, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = !DISubroutineType(types: !161)
!161 = !{null, !162}
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "j_compress_ptr", file: !4, line: 249, baseType: !163)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_compress_struct", file: !4, line: 255, size: 3968, elements: !165)
!165 = !{!166, !293, !294, !295, !296, !297, !311, !312, !313, !314, !316, !318, !319, !320, !321, !356, !360, !376, !377, !381, !382, !383, !384, !397, !398, !399, !400, !401, !402, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !419, !420, !421, !422, !426, !427, !428, !429, !430, !439, !453, !464, !473, !488, !497, !499, !508}
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
!300 = !{!301, !304, !305, !306, !310}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "next_output_byte", scope: !299, file: !4, line: 689, baseType: !302, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "JOCTET", file: !202, line: 110, baseType: !203)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "free_in_buffer", scope: !299, file: !4, line: 690, baseType: !189, size: 64, offset: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "init_destination", scope: !299, file: !4, line: 692, baseType: !159, size: 64, offset: 128)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "empty_output_buffer", scope: !299, file: !4, line: 693, baseType: !307, size: 64, offset: 192)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DISubroutineType(types: !309)
!309 = !{!226, !162}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "term_destination", scope: !299, file: !4, line: 694, baseType: !159, size: 64, offset: 256)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "image_width", scope: !164, file: !4, line: 266, baseType: !204, size: 32, offset: 320)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "image_height", scope: !164, file: !4, line: 267, baseType: !204, size: 32, offset: 352)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "input_components", scope: !164, file: !4, line: 268, baseType: !188, size: 32, offset: 384)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "in_color_space", scope: !164, file: !4, line: 269, baseType: !315, size: 32, offset: 416)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_COLOR_SPACE", file: !4, line: 201, baseType: !3)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "input_gamma", scope: !164, file: !4, line: 271, baseType: !317, size: 64, offset: 448)
!317 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "data_precision", scope: !164, file: !4, line: 281, baseType: !188, size: 32, offset: 512)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "num_components", scope: !164, file: !4, line: 283, baseType: !188, size: 32, offset: 544)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "jpeg_color_space", scope: !164, file: !4, line: 284, baseType: !315, size: 32, offset: 576)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "comp_info", scope: !164, file: !4, line: 286, baseType: !322, size: 64, offset: 640)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "jpeg_component_info", file: !4, line: 179, baseType: !324)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 116, size: 768, elements: !325)
!325 = !{!326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !355}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "component_id", scope: !324, file: !4, line: 120, baseType: !188, size: 32)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "component_index", scope: !324, file: !4, line: 121, baseType: !188, size: 32, offset: 32)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "h_samp_factor", scope: !324, file: !4, line: 122, baseType: !188, size: 32, offset: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "v_samp_factor", scope: !324, file: !4, line: 123, baseType: !188, size: 32, offset: 96)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "quant_tbl_no", scope: !324, file: !4, line: 124, baseType: !188, size: 32, offset: 128)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "dc_tbl_no", scope: !324, file: !4, line: 129, baseType: !188, size: 32, offset: 160)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tbl_no", scope: !324, file: !4, line: 130, baseType: !188, size: 32, offset: 192)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "width_in_blocks", scope: !324, file: !4, line: 139, baseType: !204, size: 32, offset: 224)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "height_in_blocks", scope: !324, file: !4, line: 140, baseType: !204, size: 32, offset: 256)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "DCT_scaled_size", scope: !324, file: !4, line: 147, baseType: !188, size: 32, offset: 288)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "downsampled_width", scope: !324, file: !4, line: 154, baseType: !204, size: 32, offset: 320)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "downsampled_height", scope: !324, file: !4, line: 155, baseType: !204, size: 32, offset: 352)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "component_needed", scope: !324, file: !4, line: 160, baseType: !226, size: 32, offset: 384)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_width", scope: !324, file: !4, line: 164, baseType: !188, size: 32, offset: 416)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_height", scope: !324, file: !4, line: 165, baseType: !188, size: 32, offset: 448)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_blocks", scope: !324, file: !4, line: 166, baseType: !188, size: 32, offset: 480)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_sample_width", scope: !324, file: !4, line: 167, baseType: !188, size: 32, offset: 512)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "last_col_width", scope: !324, file: !4, line: 168, baseType: !188, size: 32, offset: 544)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "last_row_height", scope: !324, file: !4, line: 169, baseType: !188, size: 32, offset: 576)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "quant_table", scope: !324, file: !4, line: 175, baseType: !346, size: 64, offset: 640)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "JQUANT_TBL", file: !4, line: 95, baseType: !348)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 83, size: 1056, elements: !349)
!349 = !{!350, !354}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "quantval", scope: !348, file: !4, line: 88, baseType: !351, size: 1024)
!351 = !DICompositeType(tag: DW_TAG_array_type, baseType: !352, size: 1024, elements: !217)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT16", file: !202, line: 147, baseType: !353)
!353 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "sent_table", scope: !348, file: !4, line: 94, baseType: !226, size: 32, offset: 1024)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "dct_table", scope: !324, file: !4, line: 178, baseType: !187, size: 64, offset: 704)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "quant_tbl_ptrs", scope: !164, file: !4, line: 289, baseType: !357, size: 256, offset: 704)
!357 = !DICompositeType(tag: DW_TAG_array_type, baseType: !346, size: 256, elements: !358)
!358 = !{!359}
!359 = !DISubrange(count: 4)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "dc_huff_tbl_ptrs", scope: !164, file: !4, line: 292, baseType: !361, size: 256, offset: 960)
!361 = !DICompositeType(tag: DW_TAG_array_type, baseType: !362, size: 256, elements: !358)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "JHUFF_TBL", file: !4, line: 111, baseType: !364)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 100, size: 2240, elements: !365)
!365 = !{!366, !371, !375}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !364, file: !4, line: 102, baseType: !367, size: 136)
!367 = !DICompositeType(tag: DW_TAG_array_type, baseType: !368, size: 136, elements: !369)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT8", file: !202, line: 135, baseType: !203)
!369 = !{!370}
!370 = !DISubrange(count: 17)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "huffval", scope: !364, file: !4, line: 104, baseType: !372, size: 2048, offset: 136)
!372 = !DICompositeType(tag: DW_TAG_array_type, baseType: !368, size: 2048, elements: !373)
!373 = !{!374}
!374 = !DISubrange(count: 256)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "sent_table", scope: !364, file: !4, line: 110, baseType: !226, size: 32, offset: 2208)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "ac_huff_tbl_ptrs", scope: !164, file: !4, line: 293, baseType: !361, size: 256, offset: 1216)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "arith_dc_L", scope: !164, file: !4, line: 296, baseType: !378, size: 128, offset: 1472)
!378 = !DICompositeType(tag: DW_TAG_array_type, baseType: !368, size: 128, elements: !379)
!379 = !{!380}
!380 = !DISubrange(count: 16)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "arith_dc_U", scope: !164, file: !4, line: 297, baseType: !378, size: 128, offset: 1600)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "arith_ac_K", scope: !164, file: !4, line: 298, baseType: !378, size: 128, offset: 1728)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "num_scans", scope: !164, file: !4, line: 300, baseType: !188, size: 32, offset: 1856)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "scan_info", scope: !164, file: !4, line: 301, baseType: !385, size: 64, offset: 1920)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!386 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !387)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "jpeg_scan_info", file: !4, line: 189, baseType: !388)
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 184, size: 288, elements: !389)
!389 = !{!390, !391, !393, !394, !395, !396}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "comps_in_scan", scope: !388, file: !4, line: 185, baseType: !188, size: 32)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "component_index", scope: !388, file: !4, line: 186, baseType: !392, size: 128, offset: 32)
!392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 128, elements: !358)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "Ss", scope: !388, file: !4, line: 187, baseType: !188, size: 32, offset: 160)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "Se", scope: !388, file: !4, line: 187, baseType: !188, size: 32, offset: 192)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "Ah", scope: !388, file: !4, line: 188, baseType: !188, size: 32, offset: 224)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "Al", scope: !388, file: !4, line: 188, baseType: !188, size: 32, offset: 256)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "raw_data_in", scope: !164, file: !4, line: 307, baseType: !226, size: 32, offset: 1984)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "arith_code", scope: !164, file: !4, line: 308, baseType: !226, size: 32, offset: 2016)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_coding", scope: !164, file: !4, line: 309, baseType: !226, size: 32, offset: 2048)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "CCIR601_sampling", scope: !164, file: !4, line: 310, baseType: !226, size: 32, offset: 2080)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "smoothing_factor", scope: !164, file: !4, line: 311, baseType: !188, size: 32, offset: 2112)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "dct_method", scope: !164, file: !4, line: 312, baseType: !403, size: 32, offset: 2144)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_DCT_METHOD", file: !4, line: 209, baseType: !13)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "restart_interval", scope: !164, file: !4, line: 319, baseType: !5, size: 32, offset: 2176)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "restart_in_rows", scope: !164, file: !4, line: 320, baseType: !188, size: 32, offset: 2208)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "write_JFIF_header", scope: !164, file: !4, line: 324, baseType: !226, size: 32, offset: 2240)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "density_unit", scope: !164, file: !4, line: 329, baseType: !368, size: 8, offset: 2272)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "X_density", scope: !164, file: !4, line: 330, baseType: !352, size: 16, offset: 2288)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "Y_density", scope: !164, file: !4, line: 331, baseType: !352, size: 16, offset: 2304)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "write_Adobe_marker", scope: !164, file: !4, line: 332, baseType: !226, size: 32, offset: 2336)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "next_scanline", scope: !164, file: !4, line: 339, baseType: !204, size: 32, offset: 2368)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "progressive_mode", scope: !164, file: !4, line: 348, baseType: !226, size: 32, offset: 2400)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "max_h_samp_factor", scope: !164, file: !4, line: 349, baseType: !188, size: 32, offset: 2432)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "max_v_samp_factor", scope: !164, file: !4, line: 350, baseType: !188, size: 32, offset: 2464)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "total_iMCU_rows", scope: !164, file: !4, line: 352, baseType: !204, size: 32, offset: 2496)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "comps_in_scan", scope: !164, file: !4, line: 363, baseType: !188, size: 32, offset: 2528)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "cur_comp_info", scope: !164, file: !4, line: 364, baseType: !418, size: 256, offset: 2560)
!418 = !DICompositeType(tag: DW_TAG_array_type, baseType: !322, size: 256, elements: !358)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "MCUs_per_row", scope: !164, file: !4, line: 367, baseType: !204, size: 32, offset: 2816)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_rows_in_scan", scope: !164, file: !4, line: 368, baseType: !204, size: 32, offset: 2848)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "blocks_in_MCU", scope: !164, file: !4, line: 370, baseType: !188, size: 32, offset: 2880)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_membership", scope: !164, file: !4, line: 371, baseType: !423, size: 320, offset: 2912)
!423 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 320, elements: !424)
!424 = !{!425}
!425 = !DISubrange(count: 10)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "Ss", scope: !164, file: !4, line: 375, baseType: !188, size: 32, offset: 3232)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "Se", scope: !164, file: !4, line: 375, baseType: !188, size: 32, offset: 3264)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "Ah", scope: !164, file: !4, line: 375, baseType: !188, size: 32, offset: 3296)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "Al", scope: !164, file: !4, line: 375, baseType: !188, size: 32, offset: 3328)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !164, file: !4, line: 380, baseType: !431, size: 64, offset: 3392)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_comp_master", file: !19, line: 45, size: 256, elements: !433)
!433 = !{!434, !435, !436, !437, !438}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_for_pass", scope: !432, file: !19, line: 46, baseType: !159, size: 64)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "pass_startup", scope: !432, file: !19, line: 47, baseType: !159, size: 64, offset: 64)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "finish_pass", scope: !432, file: !19, line: 48, baseType: !159, size: 64, offset: 128)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "call_pass_startup", scope: !432, file: !19, line: 51, baseType: !226, size: 32, offset: 192)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "is_last_pass", scope: !432, file: !19, line: 52, baseType: !226, size: 32, offset: 224)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "main", scope: !164, file: !4, line: 381, baseType: !440, size: 64, offset: 3456)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_c_main_controller", file: !19, line: 56, size: 128, elements: !442)
!442 = !{!443, !448}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !441, file: !19, line: 57, baseType: !444, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = !DISubroutineType(types: !446)
!446 = !{null, !162, !447}
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_BUF_MODE", file: !19, line: 22, baseType: !18)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "process_data", scope: !441, file: !19, line: 58, baseType: !449, size: 64, offset: 64)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!450 = !DISubroutineType(types: !451)
!451 = !{null, !162, !197, !452, !204}
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "prep", scope: !164, file: !4, line: 382, baseType: !454, size: 64, offset: 3520)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_c_prep_controller", file: !19, line: 64, size: 128, elements: !456)
!456 = !{!457, !458}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !455, file: !19, line: 65, baseType: !444, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "pre_process_data", scope: !455, file: !19, line: 66, baseType: !459, size: 64, offset: 64)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = !DISubroutineType(types: !461)
!461 = !{null, !162, !197, !452, !204, !462, !452, !204}
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPIMAGE", file: !4, line: 68, baseType: !463)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "coef", scope: !164, file: !4, line: 383, baseType: !465, size: 64, offset: 3584)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_c_coef_controller", file: !19, line: 76, size: 128, elements: !467)
!467 = !{!468, !469}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !466, file: !19, line: 77, baseType: !444, size: 64)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "compress_data", scope: !466, file: !19, line: 78, baseType: !470, size: 64, offset: 64)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DISubroutineType(types: !472)
!472 = !{!226, !162, !462}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "marker", scope: !164, file: !4, line: 384, baseType: !474, size: 64, offset: 3648)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_marker_writer", file: !19, line: 120, size: 384, elements: !476)
!476 = !{!477, !483, !484, !485, !486, !487}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "write_any_marker", scope: !475, file: !19, line: 123, baseType: !478, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!479 = !DISubroutineType(types: !480)
!480 = !{null, !162, !188, !481, !5}
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !303)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_header", scope: !475, file: !19, line: 125, baseType: !159, size: 64, offset: 64)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "write_frame_header", scope: !475, file: !19, line: 126, baseType: !159, size: 64, offset: 128)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "write_scan_header", scope: !475, file: !19, line: 127, baseType: !159, size: 64, offset: 192)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_trailer", scope: !475, file: !19, line: 128, baseType: !159, size: 64, offset: 256)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "write_tables_only", scope: !475, file: !19, line: 129, baseType: !159, size: 64, offset: 320)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "cconvert", scope: !164, file: !4, line: 385, baseType: !489, size: 64, offset: 3712)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_color_converter", file: !19, line: 83, size: 128, elements: !491)
!491 = !{!492, !493}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !490, file: !19, line: 84, baseType: !159, size: 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "color_convert", scope: !490, file: !19, line: 85, baseType: !494, size: 64, offset: 64)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = !DISubroutineType(types: !496)
!496 = !{null, !162, !197, !462, !204, !188}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "downsample", scope: !164, file: !4, line: 386, baseType: !498, size: 64, offset: 3776)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "fdct", scope: !164, file: !4, line: 387, baseType: !500, size: 64, offset: 3840)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_forward_dct", file: !19, line: 102, size: 128, elements: !502)
!502 = !{!503, !504}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !501, file: !19, line: 103, baseType: !159, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "forward_DCT", scope: !501, file: !19, line: 105, baseType: !505, size: 64, offset: 64)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DISubroutineType(types: !507)
!507 = !{null, !162, !322, !197, !211, !204, !204, !204}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "entropy", scope: !164, file: !4, line: 388, baseType: !509, size: 64, offset: 3904)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_entropy_encoder", file: !19, line: 113, size: 192, elements: !511)
!511 = !{!512, !516, !520}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !510, file: !19, line: 114, baseType: !513, size: 64)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = !DISubroutineType(types: !515)
!515 = !{null, !162, !226}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "encode_mcu", scope: !510, file: !19, line: 115, baseType: !517, size: 64, offset: 64)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = !DISubroutineType(types: !519)
!519 = !{!226, !162, !210}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "finish_pass", scope: !510, file: !19, line: 116, baseType: !159, size: 64, offset: 128)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "downsample", scope: !156, file: !19, line: 93, baseType: !522, size: 64, offset: 64)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = !DISubroutineType(types: !524)
!524 = !{null, !162, !462, !204, !462, !204}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "need_context_rows", scope: !156, file: !19, line: 98, baseType: !226, size: 32, offset: 128)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "methods", scope: !153, file: !1, line: 64, baseType: !527, size: 640, offset: 192)
!527 = !DICompositeType(tag: DW_TAG_array_type, baseType: !528, size: 640, elements: !424)
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "downsample1_ptr", file: !1, line: 54, baseType: !529)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = !DISubroutineType(types: !531)
!531 = !{null, !162, !322, !197, !197}
!532 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT32", file: !202, line: 161, baseType: !249)
!533 = !{i32 7, !"Dwarf Version", i32 5}
!534 = !{i32 2, !"Debug Info Version", i32 3}
!535 = !{i32 1, !"wchar_size", i32 4}
!536 = !{i32 8, !"PIC Level", i32 2}
!537 = !{i32 7, !"PIE Level", i32 2}
!538 = !{i32 7, !"uwtable", i32 2}
!539 = !{i32 7, !"frame-pointer", i32 2}
!540 = !{!"clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)"}
!541 = distinct !DISubprogram(name: "jinit_downsampler", scope: !1, file: !1, line: 464, type: !160, scopeLine: 465, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !542)
!542 = !{}
!543 = !DILocalVariable(name: "cinfo", arg: 1, scope: !541, file: !1, line: 464, type: !162)
!544 = !DILocation(line: 464, column: 35, scope: !541)
!545 = !DILocalVariable(name: "downsample", scope: !541, file: !1, line: 466, type: !150)
!546 = !DILocation(line: 466, column: 21, scope: !541)
!547 = !DILocalVariable(name: "ci", scope: !541, file: !1, line: 467, type: !188)
!548 = !DILocation(line: 467, column: 7, scope: !541)
!549 = !DILocalVariable(name: "compptr", scope: !541, file: !1, line: 468, type: !322)
!550 = !DILocation(line: 468, column: 25, scope: !541)
!551 = !DILocalVariable(name: "smoothok", scope: !541, file: !1, line: 469, type: !226)
!552 = !DILocation(line: 469, column: 11, scope: !541)
!553 = !DILocation(line: 472, column: 7, scope: !541)
!554 = !DILocation(line: 472, column: 14, scope: !541)
!555 = !DILocation(line: 472, column: 19, scope: !541)
!556 = !DILocation(line: 472, column: 48, scope: !541)
!557 = !DILocation(line: 472, column: 5, scope: !541)
!558 = !DILocation(line: 471, column: 14, scope: !541)
!559 = !DILocation(line: 474, column: 51, scope: !541)
!560 = !DILocation(line: 474, column: 3, scope: !541)
!561 = !DILocation(line: 474, column: 10, scope: !541)
!562 = !DILocation(line: 474, column: 21, scope: !541)
!563 = !DILocation(line: 475, column: 3, scope: !541)
!564 = !DILocation(line: 475, column: 15, scope: !541)
!565 = !DILocation(line: 475, column: 19, scope: !541)
!566 = !DILocation(line: 475, column: 30, scope: !541)
!567 = !DILocation(line: 476, column: 3, scope: !541)
!568 = !DILocation(line: 476, column: 15, scope: !541)
!569 = !DILocation(line: 476, column: 19, scope: !541)
!570 = !DILocation(line: 476, column: 30, scope: !541)
!571 = !DILocation(line: 477, column: 3, scope: !541)
!572 = !DILocation(line: 477, column: 15, scope: !541)
!573 = !DILocation(line: 477, column: 19, scope: !541)
!574 = !DILocation(line: 477, column: 37, scope: !541)
!575 = !DILocation(line: 479, column: 7, scope: !576)
!576 = distinct !DILexicalBlock(scope: !541, file: !1, line: 479, column: 7)
!577 = !DILocation(line: 479, column: 14, scope: !576)
!578 = !DILocation(line: 480, column: 5, scope: !576)
!579 = !DILocation(line: 483, column: 11, scope: !580)
!580 = distinct !DILexicalBlock(scope: !541, file: !1, line: 483, column: 3)
!581 = !DILocation(line: 483, column: 26, scope: !580)
!582 = !DILocation(line: 483, column: 33, scope: !580)
!583 = !DILocation(line: 483, column: 24, scope: !580)
!584 = !DILocation(line: 483, column: 8, scope: !580)
!585 = !DILocation(line: 483, column: 44, scope: !586)
!586 = distinct !DILexicalBlock(scope: !580, file: !1, line: 483, column: 3)
!587 = !DILocation(line: 483, column: 49, scope: !586)
!588 = !DILocation(line: 483, column: 56, scope: !586)
!589 = !DILocation(line: 483, column: 47, scope: !586)
!590 = !DILocation(line: 483, column: 3, scope: !580)
!591 = !DILocation(line: 485, column: 9, scope: !592)
!592 = distinct !DILexicalBlock(scope: !593, file: !1, line: 485, column: 9)
!593 = distinct !DILexicalBlock(scope: !586, file: !1, line: 484, column: 25)
!594 = !DILocation(line: 485, column: 18, scope: !592)
!595 = !DILocation(line: 485, column: 35, scope: !592)
!596 = !DILocation(line: 485, column: 42, scope: !592)
!597 = !DILocation(line: 485, column: 32, scope: !592)
!598 = !DILocation(line: 485, column: 60, scope: !592)
!599 = !DILocation(line: 486, column: 2, scope: !592)
!600 = !DILocation(line: 486, column: 11, scope: !592)
!601 = !DILocation(line: 486, column: 28, scope: !592)
!602 = !DILocation(line: 486, column: 35, scope: !592)
!603 = !DILocation(line: 486, column: 25, scope: !592)
!604 = !DILocation(line: 488, column: 11, scope: !605)
!605 = distinct !DILexicalBlock(scope: !606, file: !1, line: 488, column: 11)
!606 = distinct !DILexicalBlock(scope: !592, file: !1, line: 486, column: 54)
!607 = !DILocation(line: 488, column: 18, scope: !605)
!608 = !DILocation(line: 489, column: 2, scope: !609)
!609 = distinct !DILexicalBlock(scope: !605, file: !1, line: 488, column: 36)
!610 = !DILocation(line: 489, column: 14, scope: !609)
!611 = !DILocation(line: 489, column: 22, scope: !609)
!612 = !DILocation(line: 489, column: 26, scope: !609)
!613 = !DILocation(line: 490, column: 2, scope: !609)
!614 = !DILocation(line: 490, column: 14, scope: !609)
!615 = !DILocation(line: 490, column: 18, scope: !609)
!616 = !DILocation(line: 490, column: 36, scope: !609)
!617 = !DILocation(line: 491, column: 7, scope: !609)
!618 = !DILocation(line: 493, column: 2, scope: !605)
!619 = !DILocation(line: 493, column: 14, scope: !605)
!620 = !DILocation(line: 493, column: 22, scope: !605)
!621 = !DILocation(line: 493, column: 26, scope: !605)
!622 = !DILocation(line: 494, column: 5, scope: !606)
!623 = !DILocation(line: 494, column: 16, scope: !624)
!624 = distinct !DILexicalBlock(scope: !592, file: !1, line: 494, column: 16)
!625 = !DILocation(line: 494, column: 25, scope: !624)
!626 = !DILocation(line: 494, column: 39, scope: !624)
!627 = !DILocation(line: 494, column: 46, scope: !624)
!628 = !DILocation(line: 494, column: 53, scope: !624)
!629 = !DILocation(line: 494, column: 43, scope: !624)
!630 = !DILocation(line: 494, column: 71, scope: !624)
!631 = !DILocation(line: 495, column: 9, scope: !624)
!632 = !DILocation(line: 495, column: 18, scope: !624)
!633 = !DILocation(line: 495, column: 35, scope: !624)
!634 = !DILocation(line: 495, column: 42, scope: !624)
!635 = !DILocation(line: 495, column: 32, scope: !624)
!636 = !DILocation(line: 496, column: 16, scope: !637)
!637 = distinct !DILexicalBlock(scope: !624, file: !1, line: 495, column: 61)
!638 = !DILocation(line: 497, column: 7, scope: !637)
!639 = !DILocation(line: 497, column: 19, scope: !637)
!640 = !DILocation(line: 497, column: 27, scope: !637)
!641 = !DILocation(line: 497, column: 31, scope: !637)
!642 = !DILocation(line: 498, column: 5, scope: !637)
!643 = !DILocation(line: 498, column: 16, scope: !644)
!644 = distinct !DILexicalBlock(scope: !624, file: !1, line: 498, column: 16)
!645 = !DILocation(line: 498, column: 25, scope: !644)
!646 = !DILocation(line: 498, column: 39, scope: !644)
!647 = !DILocation(line: 498, column: 46, scope: !644)
!648 = !DILocation(line: 498, column: 53, scope: !644)
!649 = !DILocation(line: 498, column: 43, scope: !644)
!650 = !DILocation(line: 498, column: 71, scope: !644)
!651 = !DILocation(line: 499, column: 9, scope: !644)
!652 = !DILocation(line: 499, column: 18, scope: !644)
!653 = !DILocation(line: 499, column: 32, scope: !644)
!654 = !DILocation(line: 499, column: 39, scope: !644)
!655 = !DILocation(line: 499, column: 46, scope: !644)
!656 = !DILocation(line: 499, column: 36, scope: !644)
!657 = !DILocation(line: 501, column: 11, scope: !658)
!658 = distinct !DILexicalBlock(scope: !659, file: !1, line: 501, column: 11)
!659 = distinct !DILexicalBlock(scope: !644, file: !1, line: 499, column: 65)
!660 = !DILocation(line: 501, column: 18, scope: !658)
!661 = !DILocation(line: 502, column: 2, scope: !662)
!662 = distinct !DILexicalBlock(scope: !658, file: !1, line: 501, column: 36)
!663 = !DILocation(line: 502, column: 14, scope: !662)
!664 = !DILocation(line: 502, column: 22, scope: !662)
!665 = !DILocation(line: 502, column: 26, scope: !662)
!666 = !DILocation(line: 503, column: 2, scope: !662)
!667 = !DILocation(line: 503, column: 14, scope: !662)
!668 = !DILocation(line: 503, column: 18, scope: !662)
!669 = !DILocation(line: 503, column: 36, scope: !662)
!670 = !DILocation(line: 504, column: 7, scope: !662)
!671 = !DILocation(line: 506, column: 2, scope: !658)
!672 = !DILocation(line: 506, column: 14, scope: !658)
!673 = !DILocation(line: 506, column: 22, scope: !658)
!674 = !DILocation(line: 506, column: 26, scope: !658)
!675 = !DILocation(line: 507, column: 5, scope: !659)
!676 = !DILocation(line: 507, column: 17, scope: !677)
!677 = distinct !DILexicalBlock(scope: !644, file: !1, line: 507, column: 16)
!678 = !DILocation(line: 507, column: 24, scope: !677)
!679 = !DILocation(line: 507, column: 44, scope: !677)
!680 = !DILocation(line: 507, column: 53, scope: !677)
!681 = !DILocation(line: 507, column: 42, scope: !677)
!682 = !DILocation(line: 507, column: 68, scope: !677)
!683 = !DILocation(line: 507, column: 73, scope: !677)
!684 = !DILocation(line: 508, column: 10, scope: !677)
!685 = !DILocation(line: 508, column: 17, scope: !677)
!686 = !DILocation(line: 508, column: 37, scope: !677)
!687 = !DILocation(line: 508, column: 46, scope: !677)
!688 = !DILocation(line: 508, column: 35, scope: !677)
!689 = !DILocation(line: 508, column: 61, scope: !677)
!690 = !DILocation(line: 509, column: 16, scope: !691)
!691 = distinct !DILexicalBlock(scope: !677, file: !1, line: 508, column: 67)
!692 = !DILocation(line: 510, column: 7, scope: !691)
!693 = !DILocation(line: 510, column: 19, scope: !691)
!694 = !DILocation(line: 510, column: 27, scope: !691)
!695 = !DILocation(line: 510, column: 31, scope: !691)
!696 = !DILocation(line: 511, column: 5, scope: !691)
!697 = !DILocation(line: 512, column: 7, scope: !677)
!698 = !DILocation(line: 513, column: 3, scope: !593)
!699 = !DILocation(line: 484, column: 10, scope: !586)
!700 = !DILocation(line: 484, column: 21, scope: !586)
!701 = !DILocation(line: 483, column: 3, scope: !586)
!702 = distinct !{!702, !590, !703, !704}
!703 = !DILocation(line: 513, column: 3, scope: !580)
!704 = !{!"llvm.loop.mustprogress"}
!705 = !DILocation(line: 516, column: 7, scope: !706)
!706 = distinct !DILexicalBlock(scope: !541, file: !1, line: 516, column: 7)
!707 = !DILocation(line: 516, column: 14, scope: !706)
!708 = !DILocation(line: 516, column: 31, scope: !706)
!709 = !DILocation(line: 516, column: 35, scope: !706)
!710 = !DILocation(line: 517, column: 5, scope: !706)
!711 = !DILocation(line: 519, column: 1, scope: !541)
!712 = distinct !DISubprogram(name: "start_pass_downsample", scope: !1, file: !1, line: 75, type: !160, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !542)
!713 = !DILocalVariable(name: "cinfo", arg: 1, scope: !712, file: !1, line: 75, type: !162)
!714 = !DILocation(line: 75, column: 39, scope: !712)
!715 = !DILocation(line: 78, column: 1, scope: !712)
!716 = distinct !DISubprogram(name: "sep_downsample", scope: !1, file: !1, line: 114, type: !523, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !542)
!717 = !DILocalVariable(name: "cinfo", arg: 1, scope: !716, file: !1, line: 114, type: !162)
!718 = !DILocation(line: 114, column: 32, scope: !716)
!719 = !DILocalVariable(name: "input_buf", arg: 2, scope: !716, file: !1, line: 115, type: !462)
!720 = !DILocation(line: 115, column: 14, scope: !716)
!721 = !DILocalVariable(name: "in_row_index", arg: 3, scope: !716, file: !1, line: 115, type: !204)
!722 = !DILocation(line: 115, column: 36, scope: !716)
!723 = !DILocalVariable(name: "output_buf", arg: 4, scope: !716, file: !1, line: 116, type: !462)
!724 = !DILocation(line: 116, column: 14, scope: !716)
!725 = !DILocalVariable(name: "out_row_group_index", arg: 5, scope: !716, file: !1, line: 116, type: !204)
!726 = !DILocation(line: 116, column: 37, scope: !716)
!727 = !DILocalVariable(name: "downsample", scope: !716, file: !1, line: 118, type: !150)
!728 = !DILocation(line: 118, column: 21, scope: !716)
!729 = !DILocation(line: 118, column: 54, scope: !716)
!730 = !DILocation(line: 118, column: 61, scope: !716)
!731 = !DILocalVariable(name: "ci", scope: !716, file: !1, line: 119, type: !188)
!732 = !DILocation(line: 119, column: 7, scope: !716)
!733 = !DILocalVariable(name: "compptr", scope: !716, file: !1, line: 120, type: !322)
!734 = !DILocation(line: 120, column: 25, scope: !716)
!735 = !DILocalVariable(name: "in_ptr", scope: !716, file: !1, line: 121, type: !197)
!736 = !DILocation(line: 121, column: 14, scope: !716)
!737 = !DILocalVariable(name: "out_ptr", scope: !716, file: !1, line: 121, type: !197)
!738 = !DILocation(line: 121, column: 22, scope: !716)
!739 = !DILocation(line: 123, column: 11, scope: !740)
!740 = distinct !DILexicalBlock(scope: !716, file: !1, line: 123, column: 3)
!741 = !DILocation(line: 123, column: 26, scope: !740)
!742 = !DILocation(line: 123, column: 33, scope: !740)
!743 = !DILocation(line: 123, column: 24, scope: !740)
!744 = !DILocation(line: 123, column: 8, scope: !740)
!745 = !DILocation(line: 123, column: 44, scope: !746)
!746 = distinct !DILexicalBlock(scope: !740, file: !1, line: 123, column: 3)
!747 = !DILocation(line: 123, column: 49, scope: !746)
!748 = !DILocation(line: 123, column: 56, scope: !746)
!749 = !DILocation(line: 123, column: 47, scope: !746)
!750 = !DILocation(line: 123, column: 3, scope: !740)
!751 = !DILocation(line: 125, column: 14, scope: !752)
!752 = distinct !DILexicalBlock(scope: !746, file: !1, line: 124, column: 25)
!753 = !DILocation(line: 125, column: 24, scope: !752)
!754 = !DILocation(line: 125, column: 30, scope: !752)
!755 = !DILocation(line: 125, column: 28, scope: !752)
!756 = !DILocation(line: 125, column: 12, scope: !752)
!757 = !DILocation(line: 126, column: 15, scope: !752)
!758 = !DILocation(line: 126, column: 26, scope: !752)
!759 = !DILocation(line: 126, column: 33, scope: !752)
!760 = !DILocation(line: 126, column: 55, scope: !752)
!761 = !DILocation(line: 126, column: 64, scope: !752)
!762 = !DILocation(line: 126, column: 53, scope: !752)
!763 = !DILocation(line: 126, column: 30, scope: !752)
!764 = !DILocation(line: 126, column: 13, scope: !752)
!765 = !DILocation(line: 127, column: 7, scope: !752)
!766 = !DILocation(line: 127, column: 19, scope: !752)
!767 = !DILocation(line: 127, column: 27, scope: !752)
!768 = !DILocation(line: 127, column: 33, scope: !752)
!769 = !DILocation(line: 127, column: 40, scope: !752)
!770 = !DILocation(line: 127, column: 49, scope: !752)
!771 = !DILocation(line: 127, column: 57, scope: !752)
!772 = !DILocation(line: 127, column: 5, scope: !752)
!773 = !DILocation(line: 128, column: 3, scope: !752)
!774 = !DILocation(line: 124, column: 10, scope: !746)
!775 = !DILocation(line: 124, column: 21, scope: !746)
!776 = !DILocation(line: 123, column: 3, scope: !746)
!777 = distinct !{!777, !750, !778, !704}
!778 = !DILocation(line: 128, column: 3, scope: !740)
!779 = !DILocation(line: 129, column: 1, scope: !716)
!780 = distinct !DISubprogram(name: "fullsize_smooth_downsample", scope: !1, file: !1, line: 392, type: !530, scopeLine: 394, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !542)
!781 = !DILocalVariable(name: "cinfo", arg: 1, scope: !780, file: !1, line: 392, type: !162)
!782 = !DILocation(line: 392, column: 44, scope: !780)
!783 = !DILocalVariable(name: "compptr", arg: 2, scope: !780, file: !1, line: 392, type: !322)
!784 = !DILocation(line: 392, column: 72, scope: !780)
!785 = !DILocalVariable(name: "input_data", arg: 3, scope: !780, file: !1, line: 393, type: !197)
!786 = !DILocation(line: 393, column: 19, scope: !780)
!787 = !DILocalVariable(name: "output_data", arg: 4, scope: !780, file: !1, line: 393, type: !197)
!788 = !DILocation(line: 393, column: 42, scope: !780)
!789 = !DILocalVariable(name: "outrow", scope: !780, file: !1, line: 395, type: !188)
!790 = !DILocation(line: 395, column: 7, scope: !780)
!791 = !DILocalVariable(name: "colctr", scope: !780, file: !1, line: 396, type: !204)
!792 = !DILocation(line: 396, column: 14, scope: !780)
!793 = !DILocalVariable(name: "output_cols", scope: !780, file: !1, line: 397, type: !204)
!794 = !DILocation(line: 397, column: 14, scope: !780)
!795 = !DILocation(line: 397, column: 28, scope: !780)
!796 = !DILocation(line: 397, column: 37, scope: !780)
!797 = !DILocation(line: 397, column: 53, scope: !780)
!798 = !DILocalVariable(name: "inptr", scope: !780, file: !1, line: 398, type: !199)
!799 = !DILocation(line: 398, column: 21, scope: !780)
!800 = !DILocalVariable(name: "above_ptr", scope: !780, file: !1, line: 398, type: !199)
!801 = !DILocation(line: 398, column: 28, scope: !780)
!802 = !DILocalVariable(name: "below_ptr", scope: !780, file: !1, line: 398, type: !199)
!803 = !DILocation(line: 398, column: 39, scope: !780)
!804 = !DILocalVariable(name: "outptr", scope: !780, file: !1, line: 398, type: !199)
!805 = !DILocation(line: 398, column: 50, scope: !780)
!806 = !DILocalVariable(name: "membersum", scope: !780, file: !1, line: 399, type: !532)
!807 = !DILocation(line: 399, column: 9, scope: !780)
!808 = !DILocalVariable(name: "neighsum", scope: !780, file: !1, line: 399, type: !532)
!809 = !DILocation(line: 399, column: 20, scope: !780)
!810 = !DILocalVariable(name: "memberscale", scope: !780, file: !1, line: 399, type: !532)
!811 = !DILocation(line: 399, column: 30, scope: !780)
!812 = !DILocalVariable(name: "neighscale", scope: !780, file: !1, line: 399, type: !532)
!813 = !DILocation(line: 399, column: 43, scope: !780)
!814 = !DILocalVariable(name: "colsum", scope: !780, file: !1, line: 400, type: !188)
!815 = !DILocation(line: 400, column: 7, scope: !780)
!816 = !DILocalVariable(name: "lastcolsum", scope: !780, file: !1, line: 400, type: !188)
!817 = !DILocation(line: 400, column: 15, scope: !780)
!818 = !DILocalVariable(name: "nextcolsum", scope: !780, file: !1, line: 400, type: !188)
!819 = !DILocation(line: 400, column: 27, scope: !780)
!820 = !DILocation(line: 406, column: 21, scope: !780)
!821 = !DILocation(line: 406, column: 32, scope: !780)
!822 = !DILocation(line: 406, column: 37, scope: !780)
!823 = !DILocation(line: 406, column: 44, scope: !780)
!824 = !DILocation(line: 406, column: 62, scope: !780)
!825 = !DILocation(line: 407, column: 7, scope: !780)
!826 = !DILocation(line: 407, column: 14, scope: !780)
!827 = !DILocation(line: 407, column: 27, scope: !780)
!828 = !DILocation(line: 406, column: 3, scope: !780)
!829 = !DILocation(line: 415, column: 26, scope: !780)
!830 = !DILocation(line: 415, column: 33, scope: !780)
!831 = !DILocation(line: 415, column: 50, scope: !780)
!832 = !DILocation(line: 415, column: 24, scope: !780)
!833 = !DILocation(line: 415, column: 15, scope: !780)
!834 = !DILocation(line: 416, column: 16, scope: !780)
!835 = !DILocation(line: 416, column: 23, scope: !780)
!836 = !DILocation(line: 416, column: 40, scope: !780)
!837 = !DILocation(line: 416, column: 14, scope: !780)
!838 = !DILocation(line: 418, column: 15, scope: !839)
!839 = distinct !DILexicalBlock(scope: !780, file: !1, line: 418, column: 3)
!840 = !DILocation(line: 418, column: 8, scope: !839)
!841 = !DILocation(line: 418, column: 20, scope: !842)
!842 = distinct !DILexicalBlock(scope: !839, file: !1, line: 418, column: 3)
!843 = !DILocation(line: 418, column: 29, scope: !842)
!844 = !DILocation(line: 418, column: 38, scope: !842)
!845 = !DILocation(line: 418, column: 27, scope: !842)
!846 = !DILocation(line: 418, column: 3, scope: !839)
!847 = !DILocation(line: 419, column: 14, scope: !848)
!848 = distinct !DILexicalBlock(scope: !842, file: !1, line: 418, column: 63)
!849 = !DILocation(line: 419, column: 26, scope: !848)
!850 = !DILocation(line: 419, column: 12, scope: !848)
!851 = !DILocation(line: 420, column: 13, scope: !848)
!852 = !DILocation(line: 420, column: 24, scope: !848)
!853 = !DILocation(line: 420, column: 11, scope: !848)
!854 = !DILocation(line: 421, column: 17, scope: !848)
!855 = !DILocation(line: 421, column: 28, scope: !848)
!856 = !DILocation(line: 421, column: 34, scope: !848)
!857 = !DILocation(line: 421, column: 15, scope: !848)
!858 = !DILocation(line: 422, column: 17, scope: !848)
!859 = !DILocation(line: 422, column: 28, scope: !848)
!860 = !DILocation(line: 422, column: 34, scope: !848)
!861 = !DILocation(line: 422, column: 15, scope: !848)
!862 = !DILocation(line: 425, column: 14, scope: !848)
!863 = !DILocation(line: 425, column: 41, scope: !848)
!864 = !DILocation(line: 425, column: 39, scope: !848)
!865 = !DILocation(line: 426, column: 7, scope: !848)
!866 = !DILocation(line: 425, column: 66, scope: !848)
!867 = !DILocation(line: 425, column: 12, scope: !848)
!868 = !DILocation(line: 427, column: 17, scope: !848)
!869 = !DILocation(line: 427, column: 15, scope: !848)
!870 = !DILocation(line: 428, column: 18, scope: !848)
!871 = !DILocation(line: 428, column: 43, scope: !848)
!872 = !DILocation(line: 428, column: 41, scope: !848)
!873 = !DILocation(line: 429, column: 4, scope: !848)
!874 = !DILocation(line: 428, column: 66, scope: !848)
!875 = !DILocation(line: 428, column: 16, scope: !848)
!876 = !DILocation(line: 430, column: 16, scope: !848)
!877 = !DILocation(line: 430, column: 26, scope: !848)
!878 = !DILocation(line: 430, column: 35, scope: !848)
!879 = !DILocation(line: 430, column: 33, scope: !848)
!880 = !DILocation(line: 430, column: 23, scope: !848)
!881 = !DILocation(line: 430, column: 48, scope: !848)
!882 = !DILocation(line: 430, column: 46, scope: !848)
!883 = !DILocation(line: 430, column: 14, scope: !848)
!884 = !DILocation(line: 431, column: 17, scope: !848)
!885 = !DILocation(line: 431, column: 29, scope: !848)
!886 = !DILocation(line: 431, column: 27, scope: !848)
!887 = !DILocation(line: 431, column: 43, scope: !848)
!888 = !DILocation(line: 431, column: 54, scope: !848)
!889 = !DILocation(line: 431, column: 52, scope: !848)
!890 = !DILocation(line: 431, column: 41, scope: !848)
!891 = !DILocation(line: 431, column: 15, scope: !848)
!892 = !DILocation(line: 432, column: 29, scope: !848)
!893 = !DILocation(line: 432, column: 39, scope: !848)
!894 = !DILocation(line: 432, column: 48, scope: !848)
!895 = !DILocation(line: 432, column: 17, scope: !848)
!896 = !DILocation(line: 432, column: 12, scope: !848)
!897 = !DILocation(line: 432, column: 15, scope: !848)
!898 = !DILocation(line: 433, column: 18, scope: !848)
!899 = !DILocation(line: 433, column: 16, scope: !848)
!900 = !DILocation(line: 433, column: 35, scope: !848)
!901 = !DILocation(line: 433, column: 33, scope: !848)
!902 = !DILocation(line: 435, column: 19, scope: !903)
!903 = distinct !DILexicalBlock(scope: !848, file: !1, line: 435, column: 5)
!904 = !DILocation(line: 435, column: 31, scope: !903)
!905 = !DILocation(line: 435, column: 17, scope: !903)
!906 = !DILocation(line: 435, column: 10, scope: !903)
!907 = !DILocation(line: 435, column: 36, scope: !908)
!908 = distinct !DILexicalBlock(scope: !903, file: !1, line: 435, column: 5)
!909 = !DILocation(line: 435, column: 43, scope: !908)
!910 = !DILocation(line: 435, column: 5, scope: !903)
!911 = !DILocation(line: 436, column: 19, scope: !912)
!912 = distinct !DILexicalBlock(scope: !908, file: !1, line: 435, column: 58)
!913 = !DILocation(line: 436, column: 17, scope: !912)
!914 = !DILocation(line: 437, column: 16, scope: !912)
!915 = !DILocation(line: 437, column: 29, scope: !912)
!916 = !DILocation(line: 438, column: 20, scope: !912)
!917 = !DILocation(line: 438, column: 45, scope: !912)
!918 = !DILocation(line: 438, column: 43, scope: !912)
!919 = !DILocation(line: 439, column: 6, scope: !912)
!920 = !DILocation(line: 438, column: 68, scope: !912)
!921 = !DILocation(line: 438, column: 18, scope: !912)
!922 = !DILocation(line: 440, column: 18, scope: !912)
!923 = !DILocation(line: 440, column: 32, scope: !912)
!924 = !DILocation(line: 440, column: 41, scope: !912)
!925 = !DILocation(line: 440, column: 39, scope: !912)
!926 = !DILocation(line: 440, column: 29, scope: !912)
!927 = !DILocation(line: 440, column: 54, scope: !912)
!928 = !DILocation(line: 440, column: 52, scope: !912)
!929 = !DILocation(line: 440, column: 16, scope: !912)
!930 = !DILocation(line: 441, column: 19, scope: !912)
!931 = !DILocation(line: 441, column: 31, scope: !912)
!932 = !DILocation(line: 441, column: 29, scope: !912)
!933 = !DILocation(line: 441, column: 45, scope: !912)
!934 = !DILocation(line: 441, column: 56, scope: !912)
!935 = !DILocation(line: 441, column: 54, scope: !912)
!936 = !DILocation(line: 441, column: 43, scope: !912)
!937 = !DILocation(line: 441, column: 17, scope: !912)
!938 = !DILocation(line: 442, column: 31, scope: !912)
!939 = !DILocation(line: 442, column: 41, scope: !912)
!940 = !DILocation(line: 442, column: 50, scope: !912)
!941 = !DILocation(line: 442, column: 19, scope: !912)
!942 = !DILocation(line: 442, column: 14, scope: !912)
!943 = !DILocation(line: 442, column: 17, scope: !912)
!944 = !DILocation(line: 443, column: 20, scope: !912)
!945 = !DILocation(line: 443, column: 18, scope: !912)
!946 = !DILocation(line: 443, column: 37, scope: !912)
!947 = !DILocation(line: 443, column: 35, scope: !912)
!948 = !DILocation(line: 444, column: 5, scope: !912)
!949 = !DILocation(line: 435, column: 54, scope: !908)
!950 = !DILocation(line: 435, column: 5, scope: !908)
!951 = distinct !{!951, !910, !952, !704}
!952 = !DILocation(line: 444, column: 5, scope: !903)
!953 = !DILocation(line: 447, column: 17, scope: !848)
!954 = !DILocation(line: 447, column: 15, scope: !848)
!955 = !DILocation(line: 448, column: 16, scope: !848)
!956 = !DILocation(line: 448, column: 30, scope: !848)
!957 = !DILocation(line: 448, column: 39, scope: !848)
!958 = !DILocation(line: 448, column: 37, scope: !848)
!959 = !DILocation(line: 448, column: 27, scope: !848)
!960 = !DILocation(line: 448, column: 52, scope: !848)
!961 = !DILocation(line: 448, column: 50, scope: !848)
!962 = !DILocation(line: 448, column: 14, scope: !848)
!963 = !DILocation(line: 449, column: 17, scope: !848)
!964 = !DILocation(line: 449, column: 29, scope: !848)
!965 = !DILocation(line: 449, column: 27, scope: !848)
!966 = !DILocation(line: 449, column: 43, scope: !848)
!967 = !DILocation(line: 449, column: 54, scope: !848)
!968 = !DILocation(line: 449, column: 52, scope: !848)
!969 = !DILocation(line: 449, column: 41, scope: !848)
!970 = !DILocation(line: 449, column: 15, scope: !848)
!971 = !DILocation(line: 450, column: 27, scope: !848)
!972 = !DILocation(line: 450, column: 37, scope: !848)
!973 = !DILocation(line: 450, column: 46, scope: !848)
!974 = !DILocation(line: 450, column: 15, scope: !848)
!975 = !DILocation(line: 450, column: 6, scope: !848)
!976 = !DILocation(line: 450, column: 13, scope: !848)
!977 = !DILocation(line: 452, column: 3, scope: !848)
!978 = !DILocation(line: 418, column: 59, scope: !842)
!979 = !DILocation(line: 418, column: 3, scope: !842)
!980 = distinct !{!980, !846, !981, !704}
!981 = !DILocation(line: 452, column: 3, scope: !839)
!982 = !DILocation(line: 453, column: 1, scope: !780)
!983 = distinct !DISubprogram(name: "fullsize_downsample", scope: !1, file: !1, line: 187, type: !530, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !542)
!984 = !DILocalVariable(name: "cinfo", arg: 1, scope: !983, file: !1, line: 187, type: !162)
!985 = !DILocation(line: 187, column: 37, scope: !983)
!986 = !DILocalVariable(name: "compptr", arg: 2, scope: !983, file: !1, line: 187, type: !322)
!987 = !DILocation(line: 187, column: 66, scope: !983)
!988 = !DILocalVariable(name: "input_data", arg: 3, scope: !983, file: !1, line: 188, type: !197)
!989 = !DILocation(line: 188, column: 19, scope: !983)
!990 = !DILocalVariable(name: "output_data", arg: 4, scope: !983, file: !1, line: 188, type: !197)
!991 = !DILocation(line: 188, column: 42, scope: !983)
!992 = !DILocation(line: 191, column: 21, scope: !983)
!993 = !DILocation(line: 191, column: 36, scope: !983)
!994 = !DILocation(line: 192, column: 7, scope: !983)
!995 = !DILocation(line: 192, column: 14, scope: !983)
!996 = !DILocation(line: 192, column: 33, scope: !983)
!997 = !DILocation(line: 192, column: 40, scope: !983)
!998 = !DILocation(line: 191, column: 3, scope: !983)
!999 = !DILocation(line: 194, column: 21, scope: !983)
!1000 = !DILocation(line: 194, column: 34, scope: !983)
!1001 = !DILocation(line: 194, column: 41, scope: !983)
!1002 = !DILocation(line: 195, column: 7, scope: !983)
!1003 = !DILocation(line: 195, column: 14, scope: !983)
!1004 = !DILocation(line: 195, column: 27, scope: !983)
!1005 = !DILocation(line: 195, column: 36, scope: !983)
!1006 = !DILocation(line: 195, column: 52, scope: !983)
!1007 = !DILocation(line: 194, column: 3, scope: !983)
!1008 = !DILocation(line: 196, column: 1, scope: !983)
!1009 = distinct !DISubprogram(name: "h2v1_downsample", scope: !1, file: !1, line: 212, type: !530, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !542)
!1010 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1009, file: !1, line: 212, type: !162)
!1011 = !DILocation(line: 212, column: 33, scope: !1009)
!1012 = !DILocalVariable(name: "compptr", arg: 2, scope: !1009, file: !1, line: 212, type: !322)
!1013 = !DILocation(line: 212, column: 62, scope: !1009)
!1014 = !DILocalVariable(name: "input_data", arg: 3, scope: !1009, file: !1, line: 213, type: !197)
!1015 = !DILocation(line: 213, column: 15, scope: !1009)
!1016 = !DILocalVariable(name: "output_data", arg: 4, scope: !1009, file: !1, line: 213, type: !197)
!1017 = !DILocation(line: 213, column: 38, scope: !1009)
!1018 = !DILocalVariable(name: "outrow", scope: !1009, file: !1, line: 215, type: !188)
!1019 = !DILocation(line: 215, column: 7, scope: !1009)
!1020 = !DILocalVariable(name: "outcol", scope: !1009, file: !1, line: 216, type: !204)
!1021 = !DILocation(line: 216, column: 14, scope: !1009)
!1022 = !DILocalVariable(name: "output_cols", scope: !1009, file: !1, line: 217, type: !204)
!1023 = !DILocation(line: 217, column: 14, scope: !1009)
!1024 = !DILocation(line: 217, column: 28, scope: !1009)
!1025 = !DILocation(line: 217, column: 37, scope: !1009)
!1026 = !DILocation(line: 217, column: 53, scope: !1009)
!1027 = !DILocalVariable(name: "inptr", scope: !1009, file: !1, line: 218, type: !199)
!1028 = !DILocation(line: 218, column: 21, scope: !1009)
!1029 = !DILocalVariable(name: "outptr", scope: !1009, file: !1, line: 218, type: !199)
!1030 = !DILocation(line: 218, column: 28, scope: !1009)
!1031 = !DILocalVariable(name: "bias", scope: !1009, file: !1, line: 219, type: !188)
!1032 = !DILocation(line: 219, column: 16, scope: !1009)
!1033 = !DILocation(line: 225, column: 21, scope: !1009)
!1034 = !DILocation(line: 225, column: 33, scope: !1009)
!1035 = !DILocation(line: 225, column: 40, scope: !1009)
!1036 = !DILocation(line: 226, column: 7, scope: !1009)
!1037 = !DILocation(line: 226, column: 14, scope: !1009)
!1038 = !DILocation(line: 226, column: 27, scope: !1009)
!1039 = !DILocation(line: 226, column: 39, scope: !1009)
!1040 = !DILocation(line: 225, column: 3, scope: !1009)
!1041 = !DILocation(line: 228, column: 15, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1009, file: !1, line: 228, column: 3)
!1043 = !DILocation(line: 228, column: 8, scope: !1042)
!1044 = !DILocation(line: 228, column: 20, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !1042, file: !1, line: 228, column: 3)
!1046 = !DILocation(line: 228, column: 29, scope: !1045)
!1047 = !DILocation(line: 228, column: 38, scope: !1045)
!1048 = !DILocation(line: 228, column: 27, scope: !1045)
!1049 = !DILocation(line: 228, column: 3, scope: !1042)
!1050 = !DILocation(line: 229, column: 14, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !1045, file: !1, line: 228, column: 63)
!1052 = !DILocation(line: 229, column: 26, scope: !1051)
!1053 = !DILocation(line: 229, column: 12, scope: !1051)
!1054 = !DILocation(line: 230, column: 13, scope: !1051)
!1055 = !DILocation(line: 230, column: 24, scope: !1051)
!1056 = !DILocation(line: 230, column: 11, scope: !1051)
!1057 = !DILocation(line: 231, column: 10, scope: !1051)
!1058 = !DILocation(line: 232, column: 17, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1051, file: !1, line: 232, column: 5)
!1060 = !DILocation(line: 232, column: 10, scope: !1059)
!1061 = !DILocation(line: 232, column: 22, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !1059, file: !1, line: 232, column: 5)
!1063 = !DILocation(line: 232, column: 31, scope: !1062)
!1064 = !DILocation(line: 232, column: 29, scope: !1062)
!1065 = !DILocation(line: 232, column: 5, scope: !1059)
!1066 = !DILocation(line: 233, column: 31, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !1062, file: !1, line: 232, column: 54)
!1068 = !DILocation(line: 233, column: 52, scope: !1067)
!1069 = !DILocation(line: 233, column: 50, scope: !1067)
!1070 = !DILocation(line: 234, column: 12, scope: !1067)
!1071 = !DILocation(line: 234, column: 10, scope: !1067)
!1072 = !DILocation(line: 234, column: 18, scope: !1067)
!1073 = !DILocation(line: 233, column: 19, scope: !1067)
!1074 = !DILocation(line: 233, column: 14, scope: !1067)
!1075 = !DILocation(line: 233, column: 17, scope: !1067)
!1076 = !DILocation(line: 235, column: 12, scope: !1067)
!1077 = !DILocation(line: 236, column: 13, scope: !1067)
!1078 = !DILocation(line: 237, column: 5, scope: !1067)
!1079 = !DILocation(line: 232, column: 50, scope: !1062)
!1080 = !DILocation(line: 232, column: 5, scope: !1062)
!1081 = distinct !{!1081, !1065, !1082, !704}
!1082 = !DILocation(line: 237, column: 5, scope: !1059)
!1083 = !DILocation(line: 238, column: 3, scope: !1051)
!1084 = !DILocation(line: 228, column: 59, scope: !1045)
!1085 = !DILocation(line: 228, column: 3, scope: !1045)
!1086 = distinct !{!1086, !1049, !1087, !704}
!1087 = !DILocation(line: 238, column: 3, scope: !1042)
!1088 = !DILocation(line: 239, column: 1, scope: !1009)
!1089 = distinct !DISubprogram(name: "h2v2_smooth_downsample", scope: !1, file: !1, line: 292, type: !530, scopeLine: 294, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !542)
!1090 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1089, file: !1, line: 292, type: !162)
!1091 = !DILocation(line: 292, column: 40, scope: !1089)
!1092 = !DILocalVariable(name: "compptr", arg: 2, scope: !1089, file: !1, line: 292, type: !322)
!1093 = !DILocation(line: 292, column: 69, scope: !1089)
!1094 = !DILocalVariable(name: "input_data", arg: 3, scope: !1089, file: !1, line: 293, type: !197)
!1095 = !DILocation(line: 293, column: 15, scope: !1089)
!1096 = !DILocalVariable(name: "output_data", arg: 4, scope: !1089, file: !1, line: 293, type: !197)
!1097 = !DILocation(line: 293, column: 38, scope: !1089)
!1098 = !DILocalVariable(name: "inrow", scope: !1089, file: !1, line: 295, type: !188)
!1099 = !DILocation(line: 295, column: 7, scope: !1089)
!1100 = !DILocalVariable(name: "outrow", scope: !1089, file: !1, line: 295, type: !188)
!1101 = !DILocation(line: 295, column: 14, scope: !1089)
!1102 = !DILocalVariable(name: "colctr", scope: !1089, file: !1, line: 296, type: !204)
!1103 = !DILocation(line: 296, column: 14, scope: !1089)
!1104 = !DILocalVariable(name: "output_cols", scope: !1089, file: !1, line: 297, type: !204)
!1105 = !DILocation(line: 297, column: 14, scope: !1089)
!1106 = !DILocation(line: 297, column: 28, scope: !1089)
!1107 = !DILocation(line: 297, column: 37, scope: !1089)
!1108 = !DILocation(line: 297, column: 53, scope: !1089)
!1109 = !DILocalVariable(name: "inptr0", scope: !1089, file: !1, line: 298, type: !199)
!1110 = !DILocation(line: 298, column: 21, scope: !1089)
!1111 = !DILocalVariable(name: "inptr1", scope: !1089, file: !1, line: 298, type: !199)
!1112 = !DILocation(line: 298, column: 29, scope: !1089)
!1113 = !DILocalVariable(name: "above_ptr", scope: !1089, file: !1, line: 298, type: !199)
!1114 = !DILocation(line: 298, column: 37, scope: !1089)
!1115 = !DILocalVariable(name: "below_ptr", scope: !1089, file: !1, line: 298, type: !199)
!1116 = !DILocation(line: 298, column: 48, scope: !1089)
!1117 = !DILocalVariable(name: "outptr", scope: !1089, file: !1, line: 298, type: !199)
!1118 = !DILocation(line: 298, column: 59, scope: !1089)
!1119 = !DILocalVariable(name: "membersum", scope: !1089, file: !1, line: 299, type: !532)
!1120 = !DILocation(line: 299, column: 9, scope: !1089)
!1121 = !DILocalVariable(name: "neighsum", scope: !1089, file: !1, line: 299, type: !532)
!1122 = !DILocation(line: 299, column: 20, scope: !1089)
!1123 = !DILocalVariable(name: "memberscale", scope: !1089, file: !1, line: 299, type: !532)
!1124 = !DILocation(line: 299, column: 30, scope: !1089)
!1125 = !DILocalVariable(name: "neighscale", scope: !1089, file: !1, line: 299, type: !532)
!1126 = !DILocation(line: 299, column: 43, scope: !1089)
!1127 = !DILocation(line: 305, column: 21, scope: !1089)
!1128 = !DILocation(line: 305, column: 32, scope: !1089)
!1129 = !DILocation(line: 305, column: 37, scope: !1089)
!1130 = !DILocation(line: 305, column: 44, scope: !1089)
!1131 = !DILocation(line: 305, column: 62, scope: !1089)
!1132 = !DILocation(line: 306, column: 7, scope: !1089)
!1133 = !DILocation(line: 306, column: 14, scope: !1089)
!1134 = !DILocation(line: 306, column: 27, scope: !1089)
!1135 = !DILocation(line: 306, column: 39, scope: !1089)
!1136 = !DILocation(line: 305, column: 3, scope: !1089)
!1137 = !DILocation(line: 321, column: 25, scope: !1089)
!1138 = !DILocation(line: 321, column: 32, scope: !1089)
!1139 = !DILocation(line: 321, column: 49, scope: !1089)
!1140 = !DILocation(line: 321, column: 23, scope: !1089)
!1141 = !DILocation(line: 321, column: 17, scope: !1089)
!1142 = !DILocation(line: 321, column: 15, scope: !1089)
!1143 = !DILocation(line: 322, column: 16, scope: !1089)
!1144 = !DILocation(line: 322, column: 23, scope: !1089)
!1145 = !DILocation(line: 322, column: 40, scope: !1089)
!1146 = !DILocation(line: 322, column: 14, scope: !1089)
!1147 = !DILocation(line: 324, column: 9, scope: !1089)
!1148 = !DILocation(line: 325, column: 15, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1089, file: !1, line: 325, column: 3)
!1150 = !DILocation(line: 325, column: 8, scope: !1149)
!1151 = !DILocation(line: 325, column: 20, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1149, file: !1, line: 325, column: 3)
!1153 = !DILocation(line: 325, column: 29, scope: !1152)
!1154 = !DILocation(line: 325, column: 38, scope: !1152)
!1155 = !DILocation(line: 325, column: 27, scope: !1152)
!1156 = !DILocation(line: 325, column: 3, scope: !1149)
!1157 = !DILocation(line: 326, column: 14, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1152, file: !1, line: 325, column: 63)
!1159 = !DILocation(line: 326, column: 26, scope: !1158)
!1160 = !DILocation(line: 326, column: 12, scope: !1158)
!1161 = !DILocation(line: 327, column: 14, scope: !1158)
!1162 = !DILocation(line: 327, column: 25, scope: !1158)
!1163 = !DILocation(line: 327, column: 12, scope: !1158)
!1164 = !DILocation(line: 328, column: 14, scope: !1158)
!1165 = !DILocation(line: 328, column: 25, scope: !1158)
!1166 = !DILocation(line: 328, column: 30, scope: !1158)
!1167 = !DILocation(line: 328, column: 12, scope: !1158)
!1168 = !DILocation(line: 329, column: 17, scope: !1158)
!1169 = !DILocation(line: 329, column: 28, scope: !1158)
!1170 = !DILocation(line: 329, column: 33, scope: !1158)
!1171 = !DILocation(line: 329, column: 15, scope: !1158)
!1172 = !DILocation(line: 330, column: 17, scope: !1158)
!1173 = !DILocation(line: 330, column: 28, scope: !1158)
!1174 = !DILocation(line: 330, column: 33, scope: !1158)
!1175 = !DILocation(line: 330, column: 15, scope: !1158)
!1176 = !DILocation(line: 333, column: 17, scope: !1158)
!1177 = !DILocation(line: 333, column: 39, scope: !1158)
!1178 = !DILocation(line: 333, column: 37, scope: !1158)
!1179 = !DILocation(line: 334, column: 3, scope: !1158)
!1180 = !DILocation(line: 333, column: 61, scope: !1158)
!1181 = !DILocation(line: 334, column: 25, scope: !1158)
!1182 = !DILocation(line: 334, column: 23, scope: !1158)
!1183 = !DILocation(line: 333, column: 15, scope: !1158)
!1184 = !DILocation(line: 335, column: 16, scope: !1158)
!1185 = !DILocation(line: 335, column: 41, scope: !1158)
!1186 = !DILocation(line: 335, column: 39, scope: !1158)
!1187 = !DILocation(line: 336, column: 9, scope: !1158)
!1188 = !DILocation(line: 335, column: 66, scope: !1158)
!1189 = !DILocation(line: 336, column: 34, scope: !1158)
!1190 = !DILocation(line: 336, column: 32, scope: !1158)
!1191 = !DILocation(line: 337, column: 9, scope: !1158)
!1192 = !DILocation(line: 336, column: 59, scope: !1158)
!1193 = !DILocation(line: 337, column: 31, scope: !1158)
!1194 = !DILocation(line: 337, column: 29, scope: !1158)
!1195 = !DILocation(line: 338, column: 9, scope: !1158)
!1196 = !DILocation(line: 337, column: 53, scope: !1158)
!1197 = !DILocation(line: 338, column: 31, scope: !1158)
!1198 = !DILocation(line: 338, column: 29, scope: !1158)
!1199 = !DILocation(line: 335, column: 14, scope: !1158)
!1200 = !DILocation(line: 339, column: 17, scope: !1158)
!1201 = !DILocation(line: 339, column: 14, scope: !1158)
!1202 = !DILocation(line: 340, column: 17, scope: !1158)
!1203 = !DILocation(line: 340, column: 42, scope: !1158)
!1204 = !DILocation(line: 340, column: 40, scope: !1158)
!1205 = !DILocation(line: 341, column: 3, scope: !1158)
!1206 = !DILocation(line: 340, column: 67, scope: !1158)
!1207 = !DILocation(line: 341, column: 28, scope: !1158)
!1208 = !DILocation(line: 341, column: 26, scope: !1158)
!1209 = !DILocation(line: 340, column: 14, scope: !1158)
!1210 = !DILocation(line: 342, column: 17, scope: !1158)
!1211 = !DILocation(line: 342, column: 29, scope: !1158)
!1212 = !DILocation(line: 342, column: 27, scope: !1158)
!1213 = !DILocation(line: 342, column: 43, scope: !1158)
!1214 = !DILocation(line: 342, column: 54, scope: !1158)
!1215 = !DILocation(line: 342, column: 52, scope: !1158)
!1216 = !DILocation(line: 342, column: 41, scope: !1158)
!1217 = !DILocation(line: 342, column: 15, scope: !1158)
!1218 = !DILocation(line: 343, column: 29, scope: !1158)
!1219 = !DILocation(line: 343, column: 39, scope: !1158)
!1220 = !DILocation(line: 343, column: 48, scope: !1158)
!1221 = !DILocation(line: 343, column: 17, scope: !1158)
!1222 = !DILocation(line: 343, column: 12, scope: !1158)
!1223 = !DILocation(line: 343, column: 15, scope: !1158)
!1224 = !DILocation(line: 344, column: 12, scope: !1158)
!1225 = !DILocation(line: 344, column: 25, scope: !1158)
!1226 = !DILocation(line: 344, column: 41, scope: !1158)
!1227 = !DILocation(line: 344, column: 57, scope: !1158)
!1228 = !DILocation(line: 346, column: 19, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !1158, file: !1, line: 346, column: 5)
!1230 = !DILocation(line: 346, column: 31, scope: !1229)
!1231 = !DILocation(line: 346, column: 17, scope: !1229)
!1232 = !DILocation(line: 346, column: 10, scope: !1229)
!1233 = !DILocation(line: 346, column: 36, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !1229, file: !1, line: 346, column: 5)
!1235 = !DILocation(line: 346, column: 43, scope: !1234)
!1236 = !DILocation(line: 346, column: 5, scope: !1229)
!1237 = !DILocation(line: 348, column: 19, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1234, file: !1, line: 346, column: 58)
!1239 = !DILocation(line: 348, column: 41, scope: !1238)
!1240 = !DILocation(line: 348, column: 39, scope: !1238)
!1241 = !DILocation(line: 349, column: 5, scope: !1238)
!1242 = !DILocation(line: 348, column: 63, scope: !1238)
!1243 = !DILocation(line: 349, column: 27, scope: !1238)
!1244 = !DILocation(line: 349, column: 25, scope: !1238)
!1245 = !DILocation(line: 348, column: 17, scope: !1238)
!1246 = !DILocation(line: 351, column: 18, scope: !1238)
!1247 = !DILocation(line: 351, column: 43, scope: !1238)
!1248 = !DILocation(line: 351, column: 41, scope: !1238)
!1249 = !DILocation(line: 352, column: 4, scope: !1238)
!1250 = !DILocation(line: 351, column: 68, scope: !1238)
!1251 = !DILocation(line: 352, column: 29, scope: !1238)
!1252 = !DILocation(line: 352, column: 27, scope: !1238)
!1253 = !DILocation(line: 353, column: 4, scope: !1238)
!1254 = !DILocation(line: 352, column: 54, scope: !1238)
!1255 = !DILocation(line: 353, column: 29, scope: !1238)
!1256 = !DILocation(line: 353, column: 27, scope: !1238)
!1257 = !DILocation(line: 354, column: 4, scope: !1238)
!1258 = !DILocation(line: 353, column: 51, scope: !1238)
!1259 = !DILocation(line: 354, column: 29, scope: !1238)
!1260 = !DILocation(line: 354, column: 27, scope: !1238)
!1261 = !DILocation(line: 351, column: 16, scope: !1238)
!1262 = !DILocation(line: 356, column: 19, scope: !1238)
!1263 = !DILocation(line: 356, column: 16, scope: !1238)
!1264 = !DILocation(line: 358, column: 19, scope: !1238)
!1265 = !DILocation(line: 358, column: 47, scope: !1238)
!1266 = !DILocation(line: 358, column: 45, scope: !1238)
!1267 = !DILocation(line: 359, column: 5, scope: !1238)
!1268 = !DILocation(line: 358, column: 72, scope: !1238)
!1269 = !DILocation(line: 359, column: 33, scope: !1238)
!1270 = !DILocation(line: 359, column: 31, scope: !1238)
!1271 = !DILocation(line: 358, column: 16, scope: !1238)
!1272 = !DILocation(line: 361, column: 19, scope: !1238)
!1273 = !DILocation(line: 361, column: 31, scope: !1238)
!1274 = !DILocation(line: 361, column: 29, scope: !1238)
!1275 = !DILocation(line: 361, column: 45, scope: !1238)
!1276 = !DILocation(line: 361, column: 56, scope: !1238)
!1277 = !DILocation(line: 361, column: 54, scope: !1238)
!1278 = !DILocation(line: 361, column: 43, scope: !1238)
!1279 = !DILocation(line: 361, column: 17, scope: !1238)
!1280 = !DILocation(line: 363, column: 31, scope: !1238)
!1281 = !DILocation(line: 363, column: 41, scope: !1238)
!1282 = !DILocation(line: 363, column: 50, scope: !1238)
!1283 = !DILocation(line: 363, column: 19, scope: !1238)
!1284 = !DILocation(line: 363, column: 14, scope: !1238)
!1285 = !DILocation(line: 363, column: 17, scope: !1238)
!1286 = !DILocation(line: 364, column: 14, scope: !1238)
!1287 = !DILocation(line: 364, column: 27, scope: !1238)
!1288 = !DILocation(line: 364, column: 43, scope: !1238)
!1289 = !DILocation(line: 364, column: 59, scope: !1238)
!1290 = !DILocation(line: 365, column: 5, scope: !1238)
!1291 = !DILocation(line: 346, column: 54, scope: !1234)
!1292 = !DILocation(line: 346, column: 5, scope: !1234)
!1293 = distinct !{!1293, !1236, !1294, !704}
!1294 = !DILocation(line: 365, column: 5, scope: !1229)
!1295 = !DILocation(line: 368, column: 17, scope: !1158)
!1296 = !DILocation(line: 368, column: 39, scope: !1158)
!1297 = !DILocation(line: 368, column: 37, scope: !1158)
!1298 = !DILocation(line: 369, column: 3, scope: !1158)
!1299 = !DILocation(line: 368, column: 61, scope: !1158)
!1300 = !DILocation(line: 369, column: 25, scope: !1158)
!1301 = !DILocation(line: 369, column: 23, scope: !1158)
!1302 = !DILocation(line: 368, column: 15, scope: !1158)
!1303 = !DILocation(line: 370, column: 16, scope: !1158)
!1304 = !DILocation(line: 370, column: 41, scope: !1158)
!1305 = !DILocation(line: 370, column: 39, scope: !1158)
!1306 = !DILocation(line: 371, column: 9, scope: !1158)
!1307 = !DILocation(line: 370, column: 66, scope: !1158)
!1308 = !DILocation(line: 371, column: 34, scope: !1158)
!1309 = !DILocation(line: 371, column: 32, scope: !1158)
!1310 = !DILocation(line: 372, column: 9, scope: !1158)
!1311 = !DILocation(line: 371, column: 59, scope: !1158)
!1312 = !DILocation(line: 372, column: 34, scope: !1158)
!1313 = !DILocation(line: 372, column: 32, scope: !1158)
!1314 = !DILocation(line: 373, column: 9, scope: !1158)
!1315 = !DILocation(line: 372, column: 56, scope: !1158)
!1316 = !DILocation(line: 373, column: 34, scope: !1158)
!1317 = !DILocation(line: 373, column: 32, scope: !1158)
!1318 = !DILocation(line: 370, column: 14, scope: !1158)
!1319 = !DILocation(line: 374, column: 17, scope: !1158)
!1320 = !DILocation(line: 374, column: 14, scope: !1158)
!1321 = !DILocation(line: 375, column: 17, scope: !1158)
!1322 = !DILocation(line: 375, column: 45, scope: !1158)
!1323 = !DILocation(line: 375, column: 43, scope: !1158)
!1324 = !DILocation(line: 376, column: 3, scope: !1158)
!1325 = !DILocation(line: 375, column: 70, scope: !1158)
!1326 = !DILocation(line: 376, column: 31, scope: !1158)
!1327 = !DILocation(line: 376, column: 29, scope: !1158)
!1328 = !DILocation(line: 375, column: 14, scope: !1158)
!1329 = !DILocation(line: 377, column: 17, scope: !1158)
!1330 = !DILocation(line: 377, column: 29, scope: !1158)
!1331 = !DILocation(line: 377, column: 27, scope: !1158)
!1332 = !DILocation(line: 377, column: 43, scope: !1158)
!1333 = !DILocation(line: 377, column: 54, scope: !1158)
!1334 = !DILocation(line: 377, column: 52, scope: !1158)
!1335 = !DILocation(line: 377, column: 41, scope: !1158)
!1336 = !DILocation(line: 377, column: 15, scope: !1158)
!1337 = !DILocation(line: 378, column: 27, scope: !1158)
!1338 = !DILocation(line: 378, column: 37, scope: !1158)
!1339 = !DILocation(line: 378, column: 46, scope: !1158)
!1340 = !DILocation(line: 378, column: 15, scope: !1158)
!1341 = !DILocation(line: 378, column: 6, scope: !1158)
!1342 = !DILocation(line: 378, column: 13, scope: !1158)
!1343 = !DILocation(line: 380, column: 11, scope: !1158)
!1344 = !DILocation(line: 381, column: 3, scope: !1158)
!1345 = !DILocation(line: 325, column: 59, scope: !1152)
!1346 = !DILocation(line: 325, column: 3, scope: !1152)
!1347 = distinct !{!1347, !1156, !1348, !704}
!1348 = !DILocation(line: 381, column: 3, scope: !1149)
!1349 = !DILocation(line: 382, column: 1, scope: !1089)
!1350 = distinct !DISubprogram(name: "h2v2_downsample", scope: !1, file: !1, line: 249, type: !530, scopeLine: 251, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !542)
!1351 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1350, file: !1, line: 249, type: !162)
!1352 = !DILocation(line: 249, column: 33, scope: !1350)
!1353 = !DILocalVariable(name: "compptr", arg: 2, scope: !1350, file: !1, line: 249, type: !322)
!1354 = !DILocation(line: 249, column: 62, scope: !1350)
!1355 = !DILocalVariable(name: "input_data", arg: 3, scope: !1350, file: !1, line: 250, type: !197)
!1356 = !DILocation(line: 250, column: 15, scope: !1350)
!1357 = !DILocalVariable(name: "output_data", arg: 4, scope: !1350, file: !1, line: 250, type: !197)
!1358 = !DILocation(line: 250, column: 38, scope: !1350)
!1359 = !DILocalVariable(name: "inrow", scope: !1350, file: !1, line: 252, type: !188)
!1360 = !DILocation(line: 252, column: 7, scope: !1350)
!1361 = !DILocalVariable(name: "outrow", scope: !1350, file: !1, line: 252, type: !188)
!1362 = !DILocation(line: 252, column: 14, scope: !1350)
!1363 = !DILocalVariable(name: "outcol", scope: !1350, file: !1, line: 253, type: !204)
!1364 = !DILocation(line: 253, column: 14, scope: !1350)
!1365 = !DILocalVariable(name: "output_cols", scope: !1350, file: !1, line: 254, type: !204)
!1366 = !DILocation(line: 254, column: 14, scope: !1350)
!1367 = !DILocation(line: 254, column: 28, scope: !1350)
!1368 = !DILocation(line: 254, column: 37, scope: !1350)
!1369 = !DILocation(line: 254, column: 53, scope: !1350)
!1370 = !DILocalVariable(name: "inptr0", scope: !1350, file: !1, line: 255, type: !199)
!1371 = !DILocation(line: 255, column: 21, scope: !1350)
!1372 = !DILocalVariable(name: "inptr1", scope: !1350, file: !1, line: 255, type: !199)
!1373 = !DILocation(line: 255, column: 29, scope: !1350)
!1374 = !DILocalVariable(name: "outptr", scope: !1350, file: !1, line: 255, type: !199)
!1375 = !DILocation(line: 255, column: 37, scope: !1350)
!1376 = !DILocalVariable(name: "bias", scope: !1350, file: !1, line: 256, type: !188)
!1377 = !DILocation(line: 256, column: 16, scope: !1350)
!1378 = !DILocation(line: 262, column: 21, scope: !1350)
!1379 = !DILocation(line: 262, column: 33, scope: !1350)
!1380 = !DILocation(line: 262, column: 40, scope: !1350)
!1381 = !DILocation(line: 263, column: 7, scope: !1350)
!1382 = !DILocation(line: 263, column: 14, scope: !1350)
!1383 = !DILocation(line: 263, column: 27, scope: !1350)
!1384 = !DILocation(line: 263, column: 39, scope: !1350)
!1385 = !DILocation(line: 262, column: 3, scope: !1350)
!1386 = !DILocation(line: 265, column: 9, scope: !1350)
!1387 = !DILocation(line: 266, column: 15, scope: !1388)
!1388 = distinct !DILexicalBlock(scope: !1350, file: !1, line: 266, column: 3)
!1389 = !DILocation(line: 266, column: 8, scope: !1388)
!1390 = !DILocation(line: 266, column: 20, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1388, file: !1, line: 266, column: 3)
!1392 = !DILocation(line: 266, column: 29, scope: !1391)
!1393 = !DILocation(line: 266, column: 38, scope: !1391)
!1394 = !DILocation(line: 266, column: 27, scope: !1391)
!1395 = !DILocation(line: 266, column: 3, scope: !1388)
!1396 = !DILocation(line: 267, column: 14, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1391, file: !1, line: 266, column: 63)
!1398 = !DILocation(line: 267, column: 26, scope: !1397)
!1399 = !DILocation(line: 267, column: 12, scope: !1397)
!1400 = !DILocation(line: 268, column: 14, scope: !1397)
!1401 = !DILocation(line: 268, column: 25, scope: !1397)
!1402 = !DILocation(line: 268, column: 12, scope: !1397)
!1403 = !DILocation(line: 269, column: 14, scope: !1397)
!1404 = !DILocation(line: 269, column: 25, scope: !1397)
!1405 = !DILocation(line: 269, column: 30, scope: !1397)
!1406 = !DILocation(line: 269, column: 12, scope: !1397)
!1407 = !DILocation(line: 270, column: 10, scope: !1397)
!1408 = !DILocation(line: 271, column: 17, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1397, file: !1, line: 271, column: 5)
!1410 = !DILocation(line: 271, column: 10, scope: !1409)
!1411 = !DILocation(line: 271, column: 22, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1409, file: !1, line: 271, column: 5)
!1413 = !DILocation(line: 271, column: 31, scope: !1412)
!1414 = !DILocation(line: 271, column: 29, scope: !1412)
!1415 = !DILocation(line: 271, column: 5, scope: !1409)
!1416 = !DILocation(line: 272, column: 31, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !1412, file: !1, line: 271, column: 54)
!1418 = !DILocation(line: 272, column: 53, scope: !1417)
!1419 = !DILocation(line: 272, column: 51, scope: !1417)
!1420 = !DILocation(line: 273, column: 10, scope: !1417)
!1421 = !DILocation(line: 272, column: 75, scope: !1417)
!1422 = !DILocation(line: 273, column: 32, scope: !1417)
!1423 = !DILocation(line: 273, column: 30, scope: !1417)
!1424 = !DILocation(line: 274, column: 12, scope: !1417)
!1425 = !DILocation(line: 274, column: 10, scope: !1417)
!1426 = !DILocation(line: 274, column: 18, scope: !1417)
!1427 = !DILocation(line: 272, column: 19, scope: !1417)
!1428 = !DILocation(line: 272, column: 14, scope: !1417)
!1429 = !DILocation(line: 272, column: 17, scope: !1417)
!1430 = !DILocation(line: 275, column: 12, scope: !1417)
!1431 = !DILocation(line: 276, column: 14, scope: !1417)
!1432 = !DILocation(line: 276, column: 27, scope: !1417)
!1433 = !DILocation(line: 277, column: 5, scope: !1417)
!1434 = !DILocation(line: 271, column: 50, scope: !1412)
!1435 = !DILocation(line: 271, column: 5, scope: !1412)
!1436 = distinct !{!1436, !1415, !1437, !704}
!1437 = !DILocation(line: 277, column: 5, scope: !1409)
!1438 = !DILocation(line: 278, column: 11, scope: !1397)
!1439 = !DILocation(line: 279, column: 3, scope: !1397)
!1440 = !DILocation(line: 266, column: 59, scope: !1391)
!1441 = !DILocation(line: 266, column: 3, scope: !1391)
!1442 = distinct !{!1442, !1395, !1443, !704}
!1443 = !DILocation(line: 279, column: 3, scope: !1388)
!1444 = !DILocation(line: 280, column: 1, scope: !1350)
!1445 = distinct !DISubprogram(name: "int_downsample", scope: !1, file: !1, line: 140, type: !530, scopeLine: 142, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !542)
!1446 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1445, file: !1, line: 140, type: !162)
!1447 = !DILocation(line: 140, column: 32, scope: !1445)
!1448 = !DILocalVariable(name: "compptr", arg: 2, scope: !1445, file: !1, line: 140, type: !322)
!1449 = !DILocation(line: 140, column: 61, scope: !1445)
!1450 = !DILocalVariable(name: "input_data", arg: 3, scope: !1445, file: !1, line: 141, type: !197)
!1451 = !DILocation(line: 141, column: 14, scope: !1445)
!1452 = !DILocalVariable(name: "output_data", arg: 4, scope: !1445, file: !1, line: 141, type: !197)
!1453 = !DILocation(line: 141, column: 37, scope: !1445)
!1454 = !DILocalVariable(name: "inrow", scope: !1445, file: !1, line: 143, type: !188)
!1455 = !DILocation(line: 143, column: 7, scope: !1445)
!1456 = !DILocalVariable(name: "outrow", scope: !1445, file: !1, line: 143, type: !188)
!1457 = !DILocation(line: 143, column: 14, scope: !1445)
!1458 = !DILocalVariable(name: "h_expand", scope: !1445, file: !1, line: 143, type: !188)
!1459 = !DILocation(line: 143, column: 22, scope: !1445)
!1460 = !DILocalVariable(name: "v_expand", scope: !1445, file: !1, line: 143, type: !188)
!1461 = !DILocation(line: 143, column: 32, scope: !1445)
!1462 = !DILocalVariable(name: "numpix", scope: !1445, file: !1, line: 143, type: !188)
!1463 = !DILocation(line: 143, column: 42, scope: !1445)
!1464 = !DILocalVariable(name: "numpix2", scope: !1445, file: !1, line: 143, type: !188)
!1465 = !DILocation(line: 143, column: 50, scope: !1445)
!1466 = !DILocalVariable(name: "h", scope: !1445, file: !1, line: 143, type: !188)
!1467 = !DILocation(line: 143, column: 59, scope: !1445)
!1468 = !DILocalVariable(name: "v", scope: !1445, file: !1, line: 143, type: !188)
!1469 = !DILocation(line: 143, column: 62, scope: !1445)
!1470 = !DILocalVariable(name: "outcol", scope: !1445, file: !1, line: 144, type: !204)
!1471 = !DILocation(line: 144, column: 14, scope: !1445)
!1472 = !DILocalVariable(name: "outcol_h", scope: !1445, file: !1, line: 144, type: !204)
!1473 = !DILocation(line: 144, column: 22, scope: !1445)
!1474 = !DILocalVariable(name: "output_cols", scope: !1445, file: !1, line: 145, type: !204)
!1475 = !DILocation(line: 145, column: 14, scope: !1445)
!1476 = !DILocation(line: 145, column: 28, scope: !1445)
!1477 = !DILocation(line: 145, column: 37, scope: !1445)
!1478 = !DILocation(line: 145, column: 53, scope: !1445)
!1479 = !DILocalVariable(name: "inptr", scope: !1445, file: !1, line: 146, type: !199)
!1480 = !DILocation(line: 146, column: 12, scope: !1445)
!1481 = !DILocalVariable(name: "outptr", scope: !1445, file: !1, line: 146, type: !199)
!1482 = !DILocation(line: 146, column: 19, scope: !1445)
!1483 = !DILocalVariable(name: "outvalue", scope: !1445, file: !1, line: 147, type: !532)
!1484 = !DILocation(line: 147, column: 9, scope: !1445)
!1485 = !DILocation(line: 149, column: 14, scope: !1445)
!1486 = !DILocation(line: 149, column: 21, scope: !1445)
!1487 = !DILocation(line: 149, column: 41, scope: !1445)
!1488 = !DILocation(line: 149, column: 50, scope: !1445)
!1489 = !DILocation(line: 149, column: 39, scope: !1445)
!1490 = !DILocation(line: 149, column: 12, scope: !1445)
!1491 = !DILocation(line: 150, column: 14, scope: !1445)
!1492 = !DILocation(line: 150, column: 21, scope: !1445)
!1493 = !DILocation(line: 150, column: 41, scope: !1445)
!1494 = !DILocation(line: 150, column: 50, scope: !1445)
!1495 = !DILocation(line: 150, column: 39, scope: !1445)
!1496 = !DILocation(line: 150, column: 12, scope: !1445)
!1497 = !DILocation(line: 151, column: 12, scope: !1445)
!1498 = !DILocation(line: 151, column: 23, scope: !1445)
!1499 = !DILocation(line: 151, column: 21, scope: !1445)
!1500 = !DILocation(line: 151, column: 10, scope: !1445)
!1501 = !DILocation(line: 152, column: 13, scope: !1445)
!1502 = !DILocation(line: 152, column: 19, scope: !1445)
!1503 = !DILocation(line: 152, column: 11, scope: !1445)
!1504 = !DILocation(line: 158, column: 21, scope: !1445)
!1505 = !DILocation(line: 158, column: 33, scope: !1445)
!1506 = !DILocation(line: 158, column: 40, scope: !1445)
!1507 = !DILocation(line: 159, column: 7, scope: !1445)
!1508 = !DILocation(line: 159, column: 14, scope: !1445)
!1509 = !DILocation(line: 159, column: 27, scope: !1445)
!1510 = !DILocation(line: 159, column: 41, scope: !1445)
!1511 = !DILocation(line: 159, column: 39, scope: !1445)
!1512 = !DILocation(line: 158, column: 3, scope: !1445)
!1513 = !DILocation(line: 161, column: 9, scope: !1445)
!1514 = !DILocation(line: 162, column: 15, scope: !1515)
!1515 = distinct !DILexicalBlock(scope: !1445, file: !1, line: 162, column: 3)
!1516 = !DILocation(line: 162, column: 8, scope: !1515)
!1517 = !DILocation(line: 162, column: 20, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !1515, file: !1, line: 162, column: 3)
!1519 = !DILocation(line: 162, column: 29, scope: !1518)
!1520 = !DILocation(line: 162, column: 38, scope: !1518)
!1521 = !DILocation(line: 162, column: 27, scope: !1518)
!1522 = !DILocation(line: 162, column: 3, scope: !1515)
!1523 = !DILocation(line: 163, column: 14, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !1518, file: !1, line: 162, column: 63)
!1525 = !DILocation(line: 163, column: 26, scope: !1524)
!1526 = !DILocation(line: 163, column: 12, scope: !1524)
!1527 = !DILocation(line: 164, column: 17, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !1524, file: !1, line: 164, column: 5)
!1529 = !DILocation(line: 164, column: 31, scope: !1528)
!1530 = !DILocation(line: 164, column: 10, scope: !1528)
!1531 = !DILocation(line: 164, column: 36, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1528, file: !1, line: 164, column: 5)
!1533 = !DILocation(line: 164, column: 45, scope: !1532)
!1534 = !DILocation(line: 164, column: 43, scope: !1532)
!1535 = !DILocation(line: 164, column: 5, scope: !1528)
!1536 = !DILocation(line: 166, column: 16, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1532, file: !1, line: 165, column: 35)
!1538 = !DILocation(line: 167, column: 14, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1537, file: !1, line: 167, column: 7)
!1540 = !DILocation(line: 167, column: 12, scope: !1539)
!1541 = !DILocation(line: 167, column: 19, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1539, file: !1, line: 167, column: 7)
!1543 = !DILocation(line: 167, column: 23, scope: !1542)
!1544 = !DILocation(line: 167, column: 21, scope: !1542)
!1545 = !DILocation(line: 167, column: 7, scope: !1539)
!1546 = !DILocation(line: 168, column: 10, scope: !1547)
!1547 = distinct !DILexicalBlock(scope: !1542, file: !1, line: 167, column: 38)
!1548 = !DILocation(line: 168, column: 21, scope: !1547)
!1549 = !DILocation(line: 168, column: 27, scope: !1547)
!1550 = !DILocation(line: 168, column: 26, scope: !1547)
!1551 = !DILocation(line: 168, column: 32, scope: !1547)
!1552 = !DILocation(line: 168, column: 30, scope: !1547)
!1553 = !DILocation(line: 168, column: 8, scope: !1547)
!1554 = !DILocation(line: 169, column: 9, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1547, file: !1, line: 169, column: 2)
!1556 = !DILocation(line: 169, column: 7, scope: !1555)
!1557 = !DILocation(line: 169, column: 14, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !1555, file: !1, line: 169, column: 2)
!1559 = !DILocation(line: 169, column: 18, scope: !1558)
!1560 = !DILocation(line: 169, column: 16, scope: !1558)
!1561 = !DILocation(line: 169, column: 2, scope: !1555)
!1562 = !DILocation(line: 170, column: 24, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !1558, file: !1, line: 169, column: 33)
!1564 = !DILocation(line: 170, column: 16, scope: !1563)
!1565 = !DILocation(line: 170, column: 13, scope: !1563)
!1566 = !DILocation(line: 171, column: 2, scope: !1563)
!1567 = !DILocation(line: 169, column: 29, scope: !1558)
!1568 = !DILocation(line: 169, column: 2, scope: !1558)
!1569 = distinct !{!1569, !1561, !1570, !704}
!1570 = !DILocation(line: 171, column: 2, scope: !1555)
!1571 = !DILocation(line: 172, column: 7, scope: !1547)
!1572 = !DILocation(line: 167, column: 34, scope: !1542)
!1573 = !DILocation(line: 167, column: 7, scope: !1542)
!1574 = distinct !{!1574, !1545, !1575, !704}
!1575 = !DILocation(line: 172, column: 7, scope: !1539)
!1576 = !DILocation(line: 173, column: 31, scope: !1537)
!1577 = !DILocation(line: 173, column: 42, scope: !1537)
!1578 = !DILocation(line: 173, column: 40, scope: !1537)
!1579 = !DILocation(line: 173, column: 53, scope: !1537)
!1580 = !DILocation(line: 173, column: 51, scope: !1537)
!1581 = !DILocation(line: 173, column: 19, scope: !1537)
!1582 = !DILocation(line: 173, column: 14, scope: !1537)
!1583 = !DILocation(line: 173, column: 17, scope: !1537)
!1584 = !DILocation(line: 174, column: 5, scope: !1537)
!1585 = !DILocation(line: 165, column: 9, scope: !1532)
!1586 = !DILocation(line: 165, column: 25, scope: !1532)
!1587 = !DILocation(line: 165, column: 22, scope: !1532)
!1588 = !DILocation(line: 164, column: 5, scope: !1532)
!1589 = distinct !{!1589, !1535, !1590, !704}
!1590 = !DILocation(line: 174, column: 5, scope: !1528)
!1591 = !DILocation(line: 175, column: 14, scope: !1524)
!1592 = !DILocation(line: 175, column: 11, scope: !1524)
!1593 = !DILocation(line: 176, column: 3, scope: !1524)
!1594 = !DILocation(line: 162, column: 59, scope: !1518)
!1595 = !DILocation(line: 162, column: 3, scope: !1518)
!1596 = distinct !{!1596, !1522, !1597, !704}
!1597 = !DILocation(line: 176, column: 3, scope: !1515)
!1598 = !DILocation(line: 177, column: 1, scope: !1445)
!1599 = distinct !DISubprogram(name: "expand_right_edge", scope: !1, file: !1, line: 87, type: !1600, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !542)
!1600 = !DISubroutineType(types: !1601)
!1601 = !{null, !197, !188, !204, !204}
!1602 = !DILocalVariable(name: "image_data", arg: 1, scope: !1599, file: !1, line: 87, type: !197)
!1603 = !DILocation(line: 87, column: 31, scope: !1599)
!1604 = !DILocalVariable(name: "num_rows", arg: 2, scope: !1599, file: !1, line: 87, type: !188)
!1605 = !DILocation(line: 87, column: 47, scope: !1599)
!1606 = !DILocalVariable(name: "input_cols", arg: 3, scope: !1599, file: !1, line: 88, type: !204)
!1607 = !DILocation(line: 88, column: 17, scope: !1599)
!1608 = !DILocalVariable(name: "output_cols", arg: 4, scope: !1599, file: !1, line: 88, type: !204)
!1609 = !DILocation(line: 88, column: 40, scope: !1599)
!1610 = !DILocalVariable(name: "ptr", scope: !1599, file: !1, line: 90, type: !199)
!1611 = !DILocation(line: 90, column: 21, scope: !1599)
!1612 = !DILocalVariable(name: "pixval", scope: !1599, file: !1, line: 91, type: !201)
!1613 = !DILocation(line: 91, column: 20, scope: !1599)
!1614 = !DILocalVariable(name: "count", scope: !1599, file: !1, line: 92, type: !188)
!1615 = !DILocation(line: 92, column: 16, scope: !1599)
!1616 = !DILocalVariable(name: "row", scope: !1599, file: !1, line: 93, type: !188)
!1617 = !DILocation(line: 93, column: 7, scope: !1599)
!1618 = !DILocalVariable(name: "numcols", scope: !1599, file: !1, line: 94, type: !188)
!1619 = !DILocation(line: 94, column: 7, scope: !1599)
!1620 = !DILocation(line: 94, column: 24, scope: !1599)
!1621 = !DILocation(line: 94, column: 38, scope: !1599)
!1622 = !DILocation(line: 94, column: 36, scope: !1599)
!1623 = !DILocation(line: 96, column: 7, scope: !1624)
!1624 = distinct !DILexicalBlock(scope: !1599, file: !1, line: 96, column: 7)
!1625 = !DILocation(line: 96, column: 15, scope: !1624)
!1626 = !DILocation(line: 97, column: 14, scope: !1627)
!1627 = distinct !DILexicalBlock(scope: !1628, file: !1, line: 97, column: 5)
!1628 = distinct !DILexicalBlock(scope: !1624, file: !1, line: 96, column: 20)
!1629 = !DILocation(line: 97, column: 10, scope: !1627)
!1630 = !DILocation(line: 97, column: 19, scope: !1631)
!1631 = distinct !DILexicalBlock(scope: !1627, file: !1, line: 97, column: 5)
!1632 = !DILocation(line: 97, column: 25, scope: !1631)
!1633 = !DILocation(line: 97, column: 23, scope: !1631)
!1634 = !DILocation(line: 97, column: 5, scope: !1627)
!1635 = !DILocation(line: 98, column: 13, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !1631, file: !1, line: 97, column: 42)
!1637 = !DILocation(line: 98, column: 24, scope: !1636)
!1638 = !DILocation(line: 98, column: 31, scope: !1636)
!1639 = !DILocation(line: 98, column: 29, scope: !1636)
!1640 = !DILocation(line: 98, column: 11, scope: !1636)
!1641 = !DILocation(line: 99, column: 16, scope: !1636)
!1642 = !DILocation(line: 99, column: 14, scope: !1636)
!1643 = !DILocation(line: 100, column: 20, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !1636, file: !1, line: 100, column: 7)
!1645 = !DILocation(line: 100, column: 18, scope: !1644)
!1646 = !DILocation(line: 100, column: 12, scope: !1644)
!1647 = !DILocation(line: 100, column: 29, scope: !1648)
!1648 = distinct !DILexicalBlock(scope: !1644, file: !1, line: 100, column: 7)
!1649 = !DILocation(line: 100, column: 35, scope: !1648)
!1650 = !DILocation(line: 100, column: 7, scope: !1644)
!1651 = !DILocation(line: 101, column: 11, scope: !1648)
!1652 = !DILocation(line: 101, column: 6, scope: !1648)
!1653 = !DILocation(line: 101, column: 9, scope: !1648)
!1654 = !DILocation(line: 101, column: 2, scope: !1648)
!1655 = !DILocation(line: 100, column: 45, scope: !1648)
!1656 = !DILocation(line: 100, column: 7, scope: !1648)
!1657 = distinct !{!1657, !1650, !1658, !704}
!1658 = !DILocation(line: 101, column: 11, scope: !1644)
!1659 = !DILocation(line: 102, column: 5, scope: !1636)
!1660 = !DILocation(line: 97, column: 38, scope: !1631)
!1661 = !DILocation(line: 97, column: 5, scope: !1631)
!1662 = distinct !{!1662, !1634, !1663, !704}
!1663 = !DILocation(line: 102, column: 5, scope: !1627)
!1664 = !DILocation(line: 103, column: 3, scope: !1628)
!1665 = !DILocation(line: 104, column: 1, scope: !1599)
