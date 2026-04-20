; ModuleID = 'cBench/consumer_jpeg_c/src/jccolor.c'
source_filename = "cBench/consumer_jpeg_c/src/jccolor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jpeg_compress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, double, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [16 x i8], [16 x i8], [16 x i8], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.my_color_converter = type { %struct.jpeg_color_converter, ptr }
%struct.jpeg_color_converter = type { ptr, ptr }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }

; Function Attrs: noinline nounwind uwtable
define dso_local void @jinit_color_converter(ptr noundef %0) #0 !dbg !537 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !539, !DIExpression(), !540)
    #dbg_declare(ptr %3, !541, !DIExpression(), !542)
  %4 = load ptr, ptr %2, align 8, !dbg !543
  %5 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %4, i32 0, i32 1, !dbg !544
  %6 = load ptr, ptr %5, align 8, !dbg !544
  %7 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %6, i32 0, i32 0, !dbg !545
  %8 = load ptr, ptr %7, align 8, !dbg !545
  %9 = load ptr, ptr %2, align 8, !dbg !546
  %10 = call ptr %8(ptr noundef %9, i32 noundef 1, i64 noundef 24), !dbg !547
  store ptr %10, ptr %3, align 8, !dbg !548
  %11 = load ptr, ptr %3, align 8, !dbg !549
  %12 = load ptr, ptr %2, align 8, !dbg !550
  %13 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %12, i32 0, i32 56, !dbg !551
  store ptr %11, ptr %13, align 8, !dbg !552
  %14 = load ptr, ptr %3, align 8, !dbg !553
  %15 = getelementptr inbounds nuw %struct.my_color_converter, ptr %14, i32 0, i32 0, !dbg !554
  %16 = getelementptr inbounds nuw %struct.jpeg_color_converter, ptr %15, i32 0, i32 0, !dbg !555
  store ptr @null_method, ptr %16, align 8, !dbg !556
  %17 = load ptr, ptr %2, align 8, !dbg !557
  %18 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %17, i32 0, i32 9, !dbg !558
  %19 = load i32, ptr %18, align 4, !dbg !558
  switch i32 %19, label %71 [
    i32 1, label %20
    i32 2, label %37
    i32 3, label %37
    i32 4, label %54
    i32 5, label %54
  ], !dbg !559

20:                                               ; preds = %1
  %21 = load ptr, ptr %2, align 8, !dbg !560
  %22 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %21, i32 0, i32 8, !dbg !563
  %23 = load i32, ptr %22, align 8, !dbg !563
  %24 = icmp ne i32 %23, 1, !dbg !564
  br i1 %24, label %25, label %36, !dbg !564

25:                                               ; preds = %20
  %26 = load ptr, ptr %2, align 8, !dbg !565
  %27 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %26, i32 0, i32 0, !dbg !565
  %28 = load ptr, ptr %27, align 8, !dbg !565
  %29 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %28, i32 0, i32 5, !dbg !565
  store i32 7, ptr %29, align 8, !dbg !565
  %30 = load ptr, ptr %2, align 8, !dbg !565
  %31 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %30, i32 0, i32 0, !dbg !565
  %32 = load ptr, ptr %31, align 8, !dbg !565
  %33 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %32, i32 0, i32 0, !dbg !565
  %34 = load ptr, ptr %33, align 8, !dbg !565
  %35 = load ptr, ptr %2, align 8, !dbg !565
  call void %34(ptr noundef %35), !dbg !565
  br label %36, !dbg !565

36:                                               ; preds = %25, %20
  br label %88, !dbg !566

37:                                               ; preds = %1, %1
  %38 = load ptr, ptr %2, align 8, !dbg !567
  %39 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %38, i32 0, i32 8, !dbg !569
  %40 = load i32, ptr %39, align 8, !dbg !569
  %41 = icmp ne i32 %40, 3, !dbg !570
  br i1 %41, label %42, label %53, !dbg !570

42:                                               ; preds = %37
  %43 = load ptr, ptr %2, align 8, !dbg !571
  %44 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %43, i32 0, i32 0, !dbg !571
  %45 = load ptr, ptr %44, align 8, !dbg !571
  %46 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %45, i32 0, i32 5, !dbg !571
  store i32 7, ptr %46, align 8, !dbg !571
  %47 = load ptr, ptr %2, align 8, !dbg !571
  %48 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %47, i32 0, i32 0, !dbg !571
  %49 = load ptr, ptr %48, align 8, !dbg !571
  %50 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %49, i32 0, i32 0, !dbg !571
  %51 = load ptr, ptr %50, align 8, !dbg !571
  %52 = load ptr, ptr %2, align 8, !dbg !571
  call void %51(ptr noundef %52), !dbg !571
  br label %53, !dbg !571

53:                                               ; preds = %42, %37
  br label %88, !dbg !572

54:                                               ; preds = %1, %1
  %55 = load ptr, ptr %2, align 8, !dbg !573
  %56 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %55, i32 0, i32 8, !dbg !575
  %57 = load i32, ptr %56, align 8, !dbg !575
  %58 = icmp ne i32 %57, 4, !dbg !576
  br i1 %58, label %59, label %70, !dbg !576

59:                                               ; preds = %54
  %60 = load ptr, ptr %2, align 8, !dbg !577
  %61 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %60, i32 0, i32 0, !dbg !577
  %62 = load ptr, ptr %61, align 8, !dbg !577
  %63 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %62, i32 0, i32 5, !dbg !577
  store i32 7, ptr %63, align 8, !dbg !577
  %64 = load ptr, ptr %2, align 8, !dbg !577
  %65 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %64, i32 0, i32 0, !dbg !577
  %66 = load ptr, ptr %65, align 8, !dbg !577
  %67 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %66, i32 0, i32 0, !dbg !577
  %68 = load ptr, ptr %67, align 8, !dbg !577
  %69 = load ptr, ptr %2, align 8, !dbg !577
  call void %68(ptr noundef %69), !dbg !577
  br label %70, !dbg !577

70:                                               ; preds = %59, %54
  br label %88, !dbg !578

71:                                               ; preds = %1
  %72 = load ptr, ptr %2, align 8, !dbg !579
  %73 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %72, i32 0, i32 8, !dbg !581
  %74 = load i32, ptr %73, align 8, !dbg !581
  %75 = icmp slt i32 %74, 1, !dbg !582
  br i1 %75, label %76, label %87, !dbg !582

76:                                               ; preds = %71
  %77 = load ptr, ptr %2, align 8, !dbg !583
  %78 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %77, i32 0, i32 0, !dbg !583
  %79 = load ptr, ptr %78, align 8, !dbg !583
  %80 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %79, i32 0, i32 5, !dbg !583
  store i32 7, ptr %80, align 8, !dbg !583
  %81 = load ptr, ptr %2, align 8, !dbg !583
  %82 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %81, i32 0, i32 0, !dbg !583
  %83 = load ptr, ptr %82, align 8, !dbg !583
  %84 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %83, i32 0, i32 0, !dbg !583
  %85 = load ptr, ptr %84, align 8, !dbg !583
  %86 = load ptr, ptr %2, align 8, !dbg !583
  call void %85(ptr noundef %86), !dbg !583
  br label %87, !dbg !583

87:                                               ; preds = %76, %71
  br label %88, !dbg !584

88:                                               ; preds = %87, %70, %53, %36
  %89 = load ptr, ptr %2, align 8, !dbg !585
  %90 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %89, i32 0, i32 13, !dbg !586
  %91 = load i32, ptr %90, align 8, !dbg !586
  switch i32 %91, label %326 [
    i32 1, label %92
    i32 2, label %152
    i32 3, label %189
    i32 4, label %239
    i32 5, label %276
  ], !dbg !587

92:                                               ; preds = %88
  %93 = load ptr, ptr %2, align 8, !dbg !588
  %94 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %93, i32 0, i32 12, !dbg !591
  %95 = load i32, ptr %94, align 4, !dbg !591
  %96 = icmp ne i32 %95, 1, !dbg !592
  br i1 %96, label %97, label %108, !dbg !592

97:                                               ; preds = %92
  %98 = load ptr, ptr %2, align 8, !dbg !593
  %99 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %98, i32 0, i32 0, !dbg !593
  %100 = load ptr, ptr %99, align 8, !dbg !593
  %101 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %100, i32 0, i32 5, !dbg !593
  store i32 8, ptr %101, align 8, !dbg !593
  %102 = load ptr, ptr %2, align 8, !dbg !593
  %103 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %102, i32 0, i32 0, !dbg !593
  %104 = load ptr, ptr %103, align 8, !dbg !593
  %105 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %104, i32 0, i32 0, !dbg !593
  %106 = load ptr, ptr %105, align 8, !dbg !593
  %107 = load ptr, ptr %2, align 8, !dbg !593
  call void %106(ptr noundef %107), !dbg !593
  br label %108, !dbg !593

108:                                              ; preds = %97, %92
  %109 = load ptr, ptr %2, align 8, !dbg !594
  %110 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %109, i32 0, i32 9, !dbg !596
  %111 = load i32, ptr %110, align 4, !dbg !596
  %112 = icmp eq i32 %111, 1, !dbg !597
  br i1 %112, label %113, label %117, !dbg !597

113:                                              ; preds = %108
  %114 = load ptr, ptr %3, align 8, !dbg !598
  %115 = getelementptr inbounds nuw %struct.my_color_converter, ptr %114, i32 0, i32 0, !dbg !599
  %116 = getelementptr inbounds nuw %struct.jpeg_color_converter, ptr %115, i32 0, i32 1, !dbg !600
  store ptr @grayscale_convert, ptr %116, align 8, !dbg !601
  br label %151, !dbg !598

117:                                              ; preds = %108
  %118 = load ptr, ptr %2, align 8, !dbg !602
  %119 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %118, i32 0, i32 9, !dbg !604
  %120 = load i32, ptr %119, align 4, !dbg !604
  %121 = icmp eq i32 %120, 2, !dbg !605
  br i1 %121, label %122, label %129, !dbg !605

122:                                              ; preds = %117
  %123 = load ptr, ptr %3, align 8, !dbg !606
  %124 = getelementptr inbounds nuw %struct.my_color_converter, ptr %123, i32 0, i32 0, !dbg !608
  %125 = getelementptr inbounds nuw %struct.jpeg_color_converter, ptr %124, i32 0, i32 0, !dbg !609
  store ptr @rgb_ycc_start, ptr %125, align 8, !dbg !610
  %126 = load ptr, ptr %3, align 8, !dbg !611
  %127 = getelementptr inbounds nuw %struct.my_color_converter, ptr %126, i32 0, i32 0, !dbg !612
  %128 = getelementptr inbounds nuw %struct.jpeg_color_converter, ptr %127, i32 0, i32 1, !dbg !613
  store ptr @rgb_gray_convert, ptr %128, align 8, !dbg !614
  br label %150, !dbg !615

129:                                              ; preds = %117
  %130 = load ptr, ptr %2, align 8, !dbg !616
  %131 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %130, i32 0, i32 9, !dbg !618
  %132 = load i32, ptr %131, align 4, !dbg !618
  %133 = icmp eq i32 %132, 3, !dbg !619
  br i1 %133, label %134, label %138, !dbg !619

134:                                              ; preds = %129
  %135 = load ptr, ptr %3, align 8, !dbg !620
  %136 = getelementptr inbounds nuw %struct.my_color_converter, ptr %135, i32 0, i32 0, !dbg !621
  %137 = getelementptr inbounds nuw %struct.jpeg_color_converter, ptr %136, i32 0, i32 1, !dbg !622
  store ptr @grayscale_convert, ptr %137, align 8, !dbg !623
  br label %149, !dbg !620

138:                                              ; preds = %129
  %139 = load ptr, ptr %2, align 8, !dbg !624
  %140 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %139, i32 0, i32 0, !dbg !624
  %141 = load ptr, ptr %140, align 8, !dbg !624
  %142 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %141, i32 0, i32 5, !dbg !624
  store i32 25, ptr %142, align 8, !dbg !624
  %143 = load ptr, ptr %2, align 8, !dbg !624
  %144 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %143, i32 0, i32 0, !dbg !624
  %145 = load ptr, ptr %144, align 8, !dbg !624
  %146 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %145, i32 0, i32 0, !dbg !624
  %147 = load ptr, ptr %146, align 8, !dbg !624
  %148 = load ptr, ptr %2, align 8, !dbg !624
  call void %147(ptr noundef %148), !dbg !624
  br label %149

149:                                              ; preds = %138, %134
  br label %150

150:                                              ; preds = %149, %122
  br label %151

151:                                              ; preds = %150, %113
  br label %357, !dbg !625

152:                                              ; preds = %88
  %153 = load ptr, ptr %2, align 8, !dbg !626
  %154 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %153, i32 0, i32 12, !dbg !628
  %155 = load i32, ptr %154, align 4, !dbg !628
  %156 = icmp ne i32 %155, 3, !dbg !629
  br i1 %156, label %157, label %168, !dbg !629

157:                                              ; preds = %152
  %158 = load ptr, ptr %2, align 8, !dbg !630
  %159 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %158, i32 0, i32 0, !dbg !630
  %160 = load ptr, ptr %159, align 8, !dbg !630
  %161 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %160, i32 0, i32 5, !dbg !630
  store i32 8, ptr %161, align 8, !dbg !630
  %162 = load ptr, ptr %2, align 8, !dbg !630
  %163 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %162, i32 0, i32 0, !dbg !630
  %164 = load ptr, ptr %163, align 8, !dbg !630
  %165 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %164, i32 0, i32 0, !dbg !630
  %166 = load ptr, ptr %165, align 8, !dbg !630
  %167 = load ptr, ptr %2, align 8, !dbg !630
  call void %166(ptr noundef %167), !dbg !630
  br label %168, !dbg !630

168:                                              ; preds = %157, %152
  %169 = load ptr, ptr %2, align 8, !dbg !631
  %170 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %169, i32 0, i32 9, !dbg !633
  %171 = load i32, ptr %170, align 4, !dbg !633
  %172 = icmp eq i32 %171, 2, !dbg !634
  br i1 %172, label %173, label %177, !dbg !635

173:                                              ; preds = %168
  %174 = load ptr, ptr %3, align 8, !dbg !636
  %175 = getelementptr inbounds nuw %struct.my_color_converter, ptr %174, i32 0, i32 0, !dbg !637
  %176 = getelementptr inbounds nuw %struct.jpeg_color_converter, ptr %175, i32 0, i32 1, !dbg !638
  store ptr @null_convert, ptr %176, align 8, !dbg !639
  br label %188, !dbg !636

177:                                              ; preds = %168
  %178 = load ptr, ptr %2, align 8, !dbg !640
  %179 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %178, i32 0, i32 0, !dbg !640
  %180 = load ptr, ptr %179, align 8, !dbg !640
  %181 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %180, i32 0, i32 5, !dbg !640
  store i32 25, ptr %181, align 8, !dbg !640
  %182 = load ptr, ptr %2, align 8, !dbg !640
  %183 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %182, i32 0, i32 0, !dbg !640
  %184 = load ptr, ptr %183, align 8, !dbg !640
  %185 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %184, i32 0, i32 0, !dbg !640
  %186 = load ptr, ptr %185, align 8, !dbg !640
  %187 = load ptr, ptr %2, align 8, !dbg !640
  call void %186(ptr noundef %187), !dbg !640
  br label %188

188:                                              ; preds = %177, %173
  br label %357, !dbg !641

189:                                              ; preds = %88
  %190 = load ptr, ptr %2, align 8, !dbg !642
  %191 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %190, i32 0, i32 12, !dbg !644
  %192 = load i32, ptr %191, align 4, !dbg !644
  %193 = icmp ne i32 %192, 3, !dbg !645
  br i1 %193, label %194, label %205, !dbg !645

194:                                              ; preds = %189
  %195 = load ptr, ptr %2, align 8, !dbg !646
  %196 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %195, i32 0, i32 0, !dbg !646
  %197 = load ptr, ptr %196, align 8, !dbg !646
  %198 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %197, i32 0, i32 5, !dbg !646
  store i32 8, ptr %198, align 8, !dbg !646
  %199 = load ptr, ptr %2, align 8, !dbg !646
  %200 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %199, i32 0, i32 0, !dbg !646
  %201 = load ptr, ptr %200, align 8, !dbg !646
  %202 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %201, i32 0, i32 0, !dbg !646
  %203 = load ptr, ptr %202, align 8, !dbg !646
  %204 = load ptr, ptr %2, align 8, !dbg !646
  call void %203(ptr noundef %204), !dbg !646
  br label %205, !dbg !646

205:                                              ; preds = %194, %189
  %206 = load ptr, ptr %2, align 8, !dbg !647
  %207 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %206, i32 0, i32 9, !dbg !649
  %208 = load i32, ptr %207, align 4, !dbg !649
  %209 = icmp eq i32 %208, 2, !dbg !650
  br i1 %209, label %210, label %217, !dbg !650

210:                                              ; preds = %205
  %211 = load ptr, ptr %3, align 8, !dbg !651
  %212 = getelementptr inbounds nuw %struct.my_color_converter, ptr %211, i32 0, i32 0, !dbg !653
  %213 = getelementptr inbounds nuw %struct.jpeg_color_converter, ptr %212, i32 0, i32 0, !dbg !654
  store ptr @rgb_ycc_start, ptr %213, align 8, !dbg !655
  %214 = load ptr, ptr %3, align 8, !dbg !656
  %215 = getelementptr inbounds nuw %struct.my_color_converter, ptr %214, i32 0, i32 0, !dbg !657
  %216 = getelementptr inbounds nuw %struct.jpeg_color_converter, ptr %215, i32 0, i32 1, !dbg !658
  store ptr @rgb_ycc_convert, ptr %216, align 8, !dbg !659
  br label %238, !dbg !660

217:                                              ; preds = %205
  %218 = load ptr, ptr %2, align 8, !dbg !661
  %219 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %218, i32 0, i32 9, !dbg !663
  %220 = load i32, ptr %219, align 4, !dbg !663
  %221 = icmp eq i32 %220, 3, !dbg !664
  br i1 %221, label %222, label %226, !dbg !664

222:                                              ; preds = %217
  %223 = load ptr, ptr %3, align 8, !dbg !665
  %224 = getelementptr inbounds nuw %struct.my_color_converter, ptr %223, i32 0, i32 0, !dbg !666
  %225 = getelementptr inbounds nuw %struct.jpeg_color_converter, ptr %224, i32 0, i32 1, !dbg !667
  store ptr @null_convert, ptr %225, align 8, !dbg !668
  br label %237, !dbg !665

226:                                              ; preds = %217
  %227 = load ptr, ptr %2, align 8, !dbg !669
  %228 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %227, i32 0, i32 0, !dbg !669
  %229 = load ptr, ptr %228, align 8, !dbg !669
  %230 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %229, i32 0, i32 5, !dbg !669
  store i32 25, ptr %230, align 8, !dbg !669
  %231 = load ptr, ptr %2, align 8, !dbg !669
  %232 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %231, i32 0, i32 0, !dbg !669
  %233 = load ptr, ptr %232, align 8, !dbg !669
  %234 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %233, i32 0, i32 0, !dbg !669
  %235 = load ptr, ptr %234, align 8, !dbg !669
  %236 = load ptr, ptr %2, align 8, !dbg !669
  call void %235(ptr noundef %236), !dbg !669
  br label %237

237:                                              ; preds = %226, %222
  br label %238

238:                                              ; preds = %237, %210
  br label %357, !dbg !670

239:                                              ; preds = %88
  %240 = load ptr, ptr %2, align 8, !dbg !671
  %241 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %240, i32 0, i32 12, !dbg !673
  %242 = load i32, ptr %241, align 4, !dbg !673
  %243 = icmp ne i32 %242, 4, !dbg !674
  br i1 %243, label %244, label %255, !dbg !674

244:                                              ; preds = %239
  %245 = load ptr, ptr %2, align 8, !dbg !675
  %246 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %245, i32 0, i32 0, !dbg !675
  %247 = load ptr, ptr %246, align 8, !dbg !675
  %248 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %247, i32 0, i32 5, !dbg !675
  store i32 8, ptr %248, align 8, !dbg !675
  %249 = load ptr, ptr %2, align 8, !dbg !675
  %250 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %249, i32 0, i32 0, !dbg !675
  %251 = load ptr, ptr %250, align 8, !dbg !675
  %252 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %251, i32 0, i32 0, !dbg !675
  %253 = load ptr, ptr %252, align 8, !dbg !675
  %254 = load ptr, ptr %2, align 8, !dbg !675
  call void %253(ptr noundef %254), !dbg !675
  br label %255, !dbg !675

255:                                              ; preds = %244, %239
  %256 = load ptr, ptr %2, align 8, !dbg !676
  %257 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %256, i32 0, i32 9, !dbg !678
  %258 = load i32, ptr %257, align 4, !dbg !678
  %259 = icmp eq i32 %258, 4, !dbg !679
  br i1 %259, label %260, label %264, !dbg !679

260:                                              ; preds = %255
  %261 = load ptr, ptr %3, align 8, !dbg !680
  %262 = getelementptr inbounds nuw %struct.my_color_converter, ptr %261, i32 0, i32 0, !dbg !681
  %263 = getelementptr inbounds nuw %struct.jpeg_color_converter, ptr %262, i32 0, i32 1, !dbg !682
  store ptr @null_convert, ptr %263, align 8, !dbg !683
  br label %275, !dbg !680

264:                                              ; preds = %255
  %265 = load ptr, ptr %2, align 8, !dbg !684
  %266 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %265, i32 0, i32 0, !dbg !684
  %267 = load ptr, ptr %266, align 8, !dbg !684
  %268 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %267, i32 0, i32 5, !dbg !684
  store i32 25, ptr %268, align 8, !dbg !684
  %269 = load ptr, ptr %2, align 8, !dbg !684
  %270 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %269, i32 0, i32 0, !dbg !684
  %271 = load ptr, ptr %270, align 8, !dbg !684
  %272 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %271, i32 0, i32 0, !dbg !684
  %273 = load ptr, ptr %272, align 8, !dbg !684
  %274 = load ptr, ptr %2, align 8, !dbg !684
  call void %273(ptr noundef %274), !dbg !684
  br label %275

275:                                              ; preds = %264, %260
  br label %357, !dbg !685

276:                                              ; preds = %88
  %277 = load ptr, ptr %2, align 8, !dbg !686
  %278 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %277, i32 0, i32 12, !dbg !688
  %279 = load i32, ptr %278, align 4, !dbg !688
  %280 = icmp ne i32 %279, 4, !dbg !689
  br i1 %280, label %281, label %292, !dbg !689

281:                                              ; preds = %276
  %282 = load ptr, ptr %2, align 8, !dbg !690
  %283 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %282, i32 0, i32 0, !dbg !690
  %284 = load ptr, ptr %283, align 8, !dbg !690
  %285 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %284, i32 0, i32 5, !dbg !690
  store i32 8, ptr %285, align 8, !dbg !690
  %286 = load ptr, ptr %2, align 8, !dbg !690
  %287 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %286, i32 0, i32 0, !dbg !690
  %288 = load ptr, ptr %287, align 8, !dbg !690
  %289 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %288, i32 0, i32 0, !dbg !690
  %290 = load ptr, ptr %289, align 8, !dbg !690
  %291 = load ptr, ptr %2, align 8, !dbg !690
  call void %290(ptr noundef %291), !dbg !690
  br label %292, !dbg !690

292:                                              ; preds = %281, %276
  %293 = load ptr, ptr %2, align 8, !dbg !691
  %294 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %293, i32 0, i32 9, !dbg !693
  %295 = load i32, ptr %294, align 4, !dbg !693
  %296 = icmp eq i32 %295, 4, !dbg !694
  br i1 %296, label %297, label %304, !dbg !694

297:                                              ; preds = %292
  %298 = load ptr, ptr %3, align 8, !dbg !695
  %299 = getelementptr inbounds nuw %struct.my_color_converter, ptr %298, i32 0, i32 0, !dbg !697
  %300 = getelementptr inbounds nuw %struct.jpeg_color_converter, ptr %299, i32 0, i32 0, !dbg !698
  store ptr @rgb_ycc_start, ptr %300, align 8, !dbg !699
  %301 = load ptr, ptr %3, align 8, !dbg !700
  %302 = getelementptr inbounds nuw %struct.my_color_converter, ptr %301, i32 0, i32 0, !dbg !701
  %303 = getelementptr inbounds nuw %struct.jpeg_color_converter, ptr %302, i32 0, i32 1, !dbg !702
  store ptr @cmyk_ycck_convert, ptr %303, align 8, !dbg !703
  br label %325, !dbg !704

304:                                              ; preds = %292
  %305 = load ptr, ptr %2, align 8, !dbg !705
  %306 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %305, i32 0, i32 9, !dbg !707
  %307 = load i32, ptr %306, align 4, !dbg !707
  %308 = icmp eq i32 %307, 5, !dbg !708
  br i1 %308, label %309, label %313, !dbg !708

309:                                              ; preds = %304
  %310 = load ptr, ptr %3, align 8, !dbg !709
  %311 = getelementptr inbounds nuw %struct.my_color_converter, ptr %310, i32 0, i32 0, !dbg !710
  %312 = getelementptr inbounds nuw %struct.jpeg_color_converter, ptr %311, i32 0, i32 1, !dbg !711
  store ptr @null_convert, ptr %312, align 8, !dbg !712
  br label %324, !dbg !709

313:                                              ; preds = %304
  %314 = load ptr, ptr %2, align 8, !dbg !713
  %315 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %314, i32 0, i32 0, !dbg !713
  %316 = load ptr, ptr %315, align 8, !dbg !713
  %317 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %316, i32 0, i32 5, !dbg !713
  store i32 25, ptr %317, align 8, !dbg !713
  %318 = load ptr, ptr %2, align 8, !dbg !713
  %319 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %318, i32 0, i32 0, !dbg !713
  %320 = load ptr, ptr %319, align 8, !dbg !713
  %321 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %320, i32 0, i32 0, !dbg !713
  %322 = load ptr, ptr %321, align 8, !dbg !713
  %323 = load ptr, ptr %2, align 8, !dbg !713
  call void %322(ptr noundef %323), !dbg !713
  br label %324

324:                                              ; preds = %313, %309
  br label %325

325:                                              ; preds = %324, %297
  br label %357, !dbg !714

326:                                              ; preds = %88
  %327 = load ptr, ptr %2, align 8, !dbg !715
  %328 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %327, i32 0, i32 13, !dbg !717
  %329 = load i32, ptr %328, align 8, !dbg !717
  %330 = load ptr, ptr %2, align 8, !dbg !718
  %331 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %330, i32 0, i32 9, !dbg !719
  %332 = load i32, ptr %331, align 4, !dbg !719
  %333 = icmp ne i32 %329, %332, !dbg !720
  br i1 %333, label %342, label %334, !dbg !721

334:                                              ; preds = %326
  %335 = load ptr, ptr %2, align 8, !dbg !722
  %336 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %335, i32 0, i32 12, !dbg !723
  %337 = load i32, ptr %336, align 4, !dbg !723
  %338 = load ptr, ptr %2, align 8, !dbg !724
  %339 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %338, i32 0, i32 8, !dbg !725
  %340 = load i32, ptr %339, align 8, !dbg !725
  %341 = icmp ne i32 %337, %340, !dbg !726
  br i1 %341, label %342, label %353, !dbg !721

342:                                              ; preds = %334, %326
  %343 = load ptr, ptr %2, align 8, !dbg !727
  %344 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %343, i32 0, i32 0, !dbg !727
  %345 = load ptr, ptr %344, align 8, !dbg !727
  %346 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %345, i32 0, i32 5, !dbg !727
  store i32 25, ptr %346, align 8, !dbg !727
  %347 = load ptr, ptr %2, align 8, !dbg !727
  %348 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %347, i32 0, i32 0, !dbg !727
  %349 = load ptr, ptr %348, align 8, !dbg !727
  %350 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %349, i32 0, i32 0, !dbg !727
  %351 = load ptr, ptr %350, align 8, !dbg !727
  %352 = load ptr, ptr %2, align 8, !dbg !727
  call void %351(ptr noundef %352), !dbg !727
  br label %353, !dbg !727

353:                                              ; preds = %342, %334
  %354 = load ptr, ptr %3, align 8, !dbg !728
  %355 = getelementptr inbounds nuw %struct.my_color_converter, ptr %354, i32 0, i32 0, !dbg !729
  %356 = getelementptr inbounds nuw %struct.jpeg_color_converter, ptr %355, i32 0, i32 1, !dbg !730
  store ptr @null_convert, ptr %356, align 8, !dbg !731
  br label %357, !dbg !732

357:                                              ; preds = %353, %325, %275, %238, %188, %151
  ret void, !dbg !733
}

; Function Attrs: noinline nounwind uwtable
define internal void @null_method(ptr noundef %0) #0 !dbg !734 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !735, !DIExpression(), !736)
  ret void, !dbg !737
}

; Function Attrs: noinline nounwind uwtable
define internal void @grayscale_convert(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 !dbg !738 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store ptr %0, ptr %6, align 8
    #dbg_declare(ptr %6, !739, !DIExpression(), !740)
  store ptr %1, ptr %7, align 8
    #dbg_declare(ptr %7, !741, !DIExpression(), !742)
  store ptr %2, ptr %8, align 8
    #dbg_declare(ptr %8, !743, !DIExpression(), !744)
  store i32 %3, ptr %9, align 4
    #dbg_declare(ptr %9, !745, !DIExpression(), !746)
  store i32 %4, ptr %10, align 4
    #dbg_declare(ptr %10, !747, !DIExpression(), !748)
    #dbg_declare(ptr %11, !749, !DIExpression(), !750)
    #dbg_declare(ptr %12, !751, !DIExpression(), !752)
    #dbg_declare(ptr %13, !753, !DIExpression(), !754)
    #dbg_declare(ptr %14, !755, !DIExpression(), !756)
  %16 = load ptr, ptr %6, align 8, !dbg !757
  %17 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %16, i32 0, i32 6, !dbg !758
  %18 = load i32, ptr %17, align 8, !dbg !758
  store i32 %18, ptr %14, align 4, !dbg !756
    #dbg_declare(ptr %15, !759, !DIExpression(), !760)
  %19 = load ptr, ptr %6, align 8, !dbg !761
  %20 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %19, i32 0, i32 8, !dbg !762
  %21 = load i32, ptr %20, align 8, !dbg !762
  store i32 %21, ptr %15, align 4, !dbg !760
  br label %22, !dbg !763

22:                                               ; preds = %58, %5
  %23 = load i32, ptr %10, align 4, !dbg !764
  %24 = add nsw i32 %23, -1, !dbg !764
  store i32 %24, ptr %10, align 4, !dbg !764
  %25 = icmp sge i32 %24, 0, !dbg !765
  br i1 %25, label %26, label %59, !dbg !763

26:                                               ; preds = %22
  %27 = load ptr, ptr %7, align 8, !dbg !766
  %28 = getelementptr inbounds nuw ptr, ptr %27, i32 1, !dbg !766
  store ptr %28, ptr %7, align 8, !dbg !766
  %29 = load ptr, ptr %27, align 8, !dbg !768
  store ptr %29, ptr %11, align 8, !dbg !769
  %30 = load ptr, ptr %8, align 8, !dbg !770
  %31 = getelementptr inbounds ptr, ptr %30, i64 0, !dbg !770
  %32 = load ptr, ptr %31, align 8, !dbg !770
  %33 = load i32, ptr %9, align 4, !dbg !771
  %34 = zext i32 %33 to i64, !dbg !770
  %35 = getelementptr inbounds nuw ptr, ptr %32, i64 %34, !dbg !770
  %36 = load ptr, ptr %35, align 8, !dbg !770
  store ptr %36, ptr %12, align 8, !dbg !772
  %37 = load i32, ptr %9, align 4, !dbg !773
  %38 = add i32 %37, 1, !dbg !773
  store i32 %38, ptr %9, align 4, !dbg !773
  store i32 0, ptr %13, align 4, !dbg !774
  br label %39, !dbg !776

39:                                               ; preds = %55, %26
  %40 = load i32, ptr %13, align 4, !dbg !777
  %41 = load i32, ptr %14, align 4, !dbg !779
  %42 = icmp ult i32 %40, %41, !dbg !780
  br i1 %42, label %43, label %58, !dbg !781

43:                                               ; preds = %39
  %44 = load ptr, ptr %11, align 8, !dbg !782
  %45 = getelementptr inbounds i8, ptr %44, i64 0, !dbg !782
  %46 = load i8, ptr %45, align 1, !dbg !782
  %47 = load ptr, ptr %12, align 8, !dbg !784
  %48 = load i32, ptr %13, align 4, !dbg !785
  %49 = zext i32 %48 to i64, !dbg !784
  %50 = getelementptr inbounds nuw i8, ptr %47, i64 %49, !dbg !784
  store i8 %46, ptr %50, align 1, !dbg !786
  %51 = load i32, ptr %15, align 4, !dbg !787
  %52 = load ptr, ptr %11, align 8, !dbg !788
  %53 = sext i32 %51 to i64, !dbg !788
  %54 = getelementptr inbounds i8, ptr %52, i64 %53, !dbg !788
  store ptr %54, ptr %11, align 8, !dbg !788
  br label %55, !dbg !789

55:                                               ; preds = %43
  %56 = load i32, ptr %13, align 4, !dbg !790
  %57 = add i32 %56, 1, !dbg !790
  store i32 %57, ptr %13, align 4, !dbg !790
  br label %39, !dbg !791, !llvm.loop !792

58:                                               ; preds = %39
  br label %22, !dbg !763, !llvm.loop !795

59:                                               ; preds = %22
  ret void, !dbg !797
}

; Function Attrs: noinline nounwind uwtable
define internal void @rgb_ycc_start(ptr noundef %0) #0 !dbg !798 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !799, !DIExpression(), !800)
    #dbg_declare(ptr %3, !801, !DIExpression(), !802)
  %6 = load ptr, ptr %2, align 8, !dbg !803
  %7 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %6, i32 0, i32 56, !dbg !804
  %8 = load ptr, ptr %7, align 8, !dbg !804
  store ptr %8, ptr %3, align 8, !dbg !802
    #dbg_declare(ptr %4, !805, !DIExpression(), !806)
    #dbg_declare(ptr %5, !807, !DIExpression(), !808)
  %9 = load ptr, ptr %2, align 8, !dbg !809
  %10 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %9, i32 0, i32 1, !dbg !810
  %11 = load ptr, ptr %10, align 8, !dbg !810
  %12 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %11, i32 0, i32 0, !dbg !811
  %13 = load ptr, ptr %12, align 8, !dbg !811
  %14 = load ptr, ptr %2, align 8, !dbg !812
  %15 = call ptr %13(ptr noundef %14, i32 noundef 1, i64 noundef 16384), !dbg !813
  store ptr %15, ptr %4, align 8, !dbg !814
  %16 = load ptr, ptr %3, align 8, !dbg !815
  %17 = getelementptr inbounds nuw %struct.my_color_converter, ptr %16, i32 0, i32 1, !dbg !816
  store ptr %15, ptr %17, align 8, !dbg !817
  store i64 0, ptr %5, align 8, !dbg !818
  br label %18, !dbg !820

18:                                               ; preds = %74, %1
  %19 = load i64, ptr %5, align 8, !dbg !821
  %20 = icmp sle i64 %19, 255, !dbg !823
  br i1 %20, label %21, label %77, !dbg !824

21:                                               ; preds = %18
  %22 = load i64, ptr %5, align 8, !dbg !825
  %23 = mul nsw i64 19595, %22, !dbg !827
  %24 = load ptr, ptr %4, align 8, !dbg !828
  %25 = load i64, ptr %5, align 8, !dbg !829
  %26 = add nsw i64 %25, 0, !dbg !830
  %27 = getelementptr inbounds i64, ptr %24, i64 %26, !dbg !828
  store i64 %23, ptr %27, align 8, !dbg !831
  %28 = load i64, ptr %5, align 8, !dbg !832
  %29 = mul nsw i64 38470, %28, !dbg !833
  %30 = load ptr, ptr %4, align 8, !dbg !834
  %31 = load i64, ptr %5, align 8, !dbg !835
  %32 = add nsw i64 %31, 256, !dbg !836
  %33 = getelementptr inbounds i64, ptr %30, i64 %32, !dbg !834
  store i64 %29, ptr %33, align 8, !dbg !837
  %34 = load i64, ptr %5, align 8, !dbg !838
  %35 = mul nsw i64 7471, %34, !dbg !839
  %36 = add nsw i64 %35, 32768, !dbg !840
  %37 = load ptr, ptr %4, align 8, !dbg !841
  %38 = load i64, ptr %5, align 8, !dbg !842
  %39 = add nsw i64 %38, 512, !dbg !843
  %40 = getelementptr inbounds i64, ptr %37, i64 %39, !dbg !841
  store i64 %36, ptr %40, align 8, !dbg !844
  %41 = load i64, ptr %5, align 8, !dbg !845
  %42 = mul nsw i64 -11059, %41, !dbg !846
  %43 = load ptr, ptr %4, align 8, !dbg !847
  %44 = load i64, ptr %5, align 8, !dbg !848
  %45 = add nsw i64 %44, 768, !dbg !849
  %46 = getelementptr inbounds i64, ptr %43, i64 %45, !dbg !847
  store i64 %42, ptr %46, align 8, !dbg !850
  %47 = load i64, ptr %5, align 8, !dbg !851
  %48 = mul nsw i64 -21709, %47, !dbg !852
  %49 = load ptr, ptr %4, align 8, !dbg !853
  %50 = load i64, ptr %5, align 8, !dbg !854
  %51 = add nsw i64 %50, 1024, !dbg !855
  %52 = getelementptr inbounds i64, ptr %49, i64 %51, !dbg !853
  store i64 %48, ptr %52, align 8, !dbg !856
  %53 = load i64, ptr %5, align 8, !dbg !857
  %54 = mul nsw i64 32768, %53, !dbg !858
  %55 = add nsw i64 %54, 8388608, !dbg !859
  %56 = add nsw i64 %55, 32768, !dbg !860
  %57 = sub nsw i64 %56, 1, !dbg !861
  %58 = load ptr, ptr %4, align 8, !dbg !862
  %59 = load i64, ptr %5, align 8, !dbg !863
  %60 = add nsw i64 %59, 1280, !dbg !864
  %61 = getelementptr inbounds i64, ptr %58, i64 %60, !dbg !862
  store i64 %57, ptr %61, align 8, !dbg !865
  %62 = load i64, ptr %5, align 8, !dbg !866
  %63 = mul nsw i64 -27439, %62, !dbg !867
  %64 = load ptr, ptr %4, align 8, !dbg !868
  %65 = load i64, ptr %5, align 8, !dbg !869
  %66 = add nsw i64 %65, 1536, !dbg !870
  %67 = getelementptr inbounds i64, ptr %64, i64 %66, !dbg !868
  store i64 %63, ptr %67, align 8, !dbg !871
  %68 = load i64, ptr %5, align 8, !dbg !872
  %69 = mul nsw i64 -5329, %68, !dbg !873
  %70 = load ptr, ptr %4, align 8, !dbg !874
  %71 = load i64, ptr %5, align 8, !dbg !875
  %72 = add nsw i64 %71, 1792, !dbg !876
  %73 = getelementptr inbounds i64, ptr %70, i64 %72, !dbg !874
  store i64 %69, ptr %73, align 8, !dbg !877
  br label %74, !dbg !878

74:                                               ; preds = %21
  %75 = load i64, ptr %5, align 8, !dbg !879
  %76 = add nsw i64 %75, 1, !dbg !879
  store i64 %76, ptr %5, align 8, !dbg !879
  br label %18, !dbg !880, !llvm.loop !881

77:                                               ; preds = %18
  ret void, !dbg !883
}

; Function Attrs: noinline nounwind uwtable
define internal void @rgb_gray_convert(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 !dbg !884 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store ptr %0, ptr %6, align 8
    #dbg_declare(ptr %6, !885, !DIExpression(), !886)
  store ptr %1, ptr %7, align 8
    #dbg_declare(ptr %7, !887, !DIExpression(), !888)
  store ptr %2, ptr %8, align 8
    #dbg_declare(ptr %8, !889, !DIExpression(), !890)
  store i32 %3, ptr %9, align 4
    #dbg_declare(ptr %9, !891, !DIExpression(), !892)
  store i32 %4, ptr %10, align 4
    #dbg_declare(ptr %10, !893, !DIExpression(), !894)
    #dbg_declare(ptr %11, !895, !DIExpression(), !896)
  %20 = load ptr, ptr %6, align 8, !dbg !897
  %21 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %20, i32 0, i32 56, !dbg !898
  %22 = load ptr, ptr %21, align 8, !dbg !898
  store ptr %22, ptr %11, align 8, !dbg !896
    #dbg_declare(ptr %12, !899, !DIExpression(), !900)
    #dbg_declare(ptr %13, !901, !DIExpression(), !902)
    #dbg_declare(ptr %14, !903, !DIExpression(), !904)
    #dbg_declare(ptr %15, !905, !DIExpression(), !906)
  %23 = load ptr, ptr %11, align 8, !dbg !907
  %24 = getelementptr inbounds nuw %struct.my_color_converter, ptr %23, i32 0, i32 1, !dbg !908
  %25 = load ptr, ptr %24, align 8, !dbg !908
  store ptr %25, ptr %15, align 8, !dbg !906
    #dbg_declare(ptr %16, !909, !DIExpression(), !910)
    #dbg_declare(ptr %17, !911, !DIExpression(), !912)
    #dbg_declare(ptr %18, !913, !DIExpression(), !914)
    #dbg_declare(ptr %19, !915, !DIExpression(), !916)
  %26 = load ptr, ptr %6, align 8, !dbg !917
  %27 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %26, i32 0, i32 6, !dbg !918
  %28 = load i32, ptr %27, align 8, !dbg !918
  store i32 %28, ptr %19, align 4, !dbg !916
  br label %29, !dbg !919

29:                                               ; preds = %94, %5
  %30 = load i32, ptr %10, align 4, !dbg !920
  %31 = add nsw i32 %30, -1, !dbg !920
  store i32 %31, ptr %10, align 4, !dbg !920
  %32 = icmp sge i32 %31, 0, !dbg !921
  br i1 %32, label %33, label %95, !dbg !919

33:                                               ; preds = %29
  %34 = load ptr, ptr %7, align 8, !dbg !922
  %35 = getelementptr inbounds nuw ptr, ptr %34, i32 1, !dbg !922
  store ptr %35, ptr %7, align 8, !dbg !922
  %36 = load ptr, ptr %34, align 8, !dbg !924
  store ptr %36, ptr %16, align 8, !dbg !925
  %37 = load ptr, ptr %8, align 8, !dbg !926
  %38 = getelementptr inbounds ptr, ptr %37, i64 0, !dbg !926
  %39 = load ptr, ptr %38, align 8, !dbg !926
  %40 = load i32, ptr %9, align 4, !dbg !927
  %41 = zext i32 %40 to i64, !dbg !926
  %42 = getelementptr inbounds nuw ptr, ptr %39, i64 %41, !dbg !926
  %43 = load ptr, ptr %42, align 8, !dbg !926
  store ptr %43, ptr %17, align 8, !dbg !928
  %44 = load i32, ptr %9, align 4, !dbg !929
  %45 = add i32 %44, 1, !dbg !929
  store i32 %45, ptr %9, align 4, !dbg !929
  store i32 0, ptr %18, align 4, !dbg !930
  br label %46, !dbg !932

46:                                               ; preds = %91, %33
  %47 = load i32, ptr %18, align 4, !dbg !933
  %48 = load i32, ptr %19, align 4, !dbg !935
  %49 = icmp ult i32 %47, %48, !dbg !936
  br i1 %49, label %50, label %94, !dbg !937

50:                                               ; preds = %46
  %51 = load ptr, ptr %16, align 8, !dbg !938
  %52 = getelementptr inbounds i8, ptr %51, i64 0, !dbg !938
  %53 = load i8, ptr %52, align 1, !dbg !938
  %54 = zext i8 %53 to i32, !dbg !938
  store i32 %54, ptr %12, align 4, !dbg !940
  %55 = load ptr, ptr %16, align 8, !dbg !941
  %56 = getelementptr inbounds i8, ptr %55, i64 1, !dbg !941
  %57 = load i8, ptr %56, align 1, !dbg !941
  %58 = zext i8 %57 to i32, !dbg !941
  store i32 %58, ptr %13, align 4, !dbg !942
  %59 = load ptr, ptr %16, align 8, !dbg !943
  %60 = getelementptr inbounds i8, ptr %59, i64 2, !dbg !943
  %61 = load i8, ptr %60, align 1, !dbg !943
  %62 = zext i8 %61 to i32, !dbg !943
  store i32 %62, ptr %14, align 4, !dbg !944
  %63 = load ptr, ptr %16, align 8, !dbg !945
  %64 = getelementptr inbounds i8, ptr %63, i64 3, !dbg !945
  store ptr %64, ptr %16, align 8, !dbg !945
  %65 = load ptr, ptr %15, align 8, !dbg !946
  %66 = load i32, ptr %12, align 4, !dbg !947
  %67 = add nsw i32 %66, 0, !dbg !948
  %68 = sext i32 %67 to i64, !dbg !946
  %69 = getelementptr inbounds i64, ptr %65, i64 %68, !dbg !946
  %70 = load i64, ptr %69, align 8, !dbg !946
  %71 = load ptr, ptr %15, align 8, !dbg !949
  %72 = load i32, ptr %13, align 4, !dbg !950
  %73 = add nsw i32 %72, 256, !dbg !951
  %74 = sext i32 %73 to i64, !dbg !949
  %75 = getelementptr inbounds i64, ptr %71, i64 %74, !dbg !949
  %76 = load i64, ptr %75, align 8, !dbg !949
  %77 = add nsw i64 %70, %76, !dbg !952
  %78 = load ptr, ptr %15, align 8, !dbg !953
  %79 = load i32, ptr %14, align 4, !dbg !954
  %80 = add nsw i32 %79, 512, !dbg !955
  %81 = sext i32 %80 to i64, !dbg !953
  %82 = getelementptr inbounds i64, ptr %78, i64 %81, !dbg !953
  %83 = load i64, ptr %82, align 8, !dbg !953
  %84 = add nsw i64 %77, %83, !dbg !956
  %85 = ashr i64 %84, 16, !dbg !957
  %86 = trunc i64 %85 to i8, !dbg !958
  %87 = load ptr, ptr %17, align 8, !dbg !959
  %88 = load i32, ptr %18, align 4, !dbg !960
  %89 = zext i32 %88 to i64, !dbg !959
  %90 = getelementptr inbounds nuw i8, ptr %87, i64 %89, !dbg !959
  store i8 %86, ptr %90, align 1, !dbg !961
  br label %91, !dbg !962

91:                                               ; preds = %50
  %92 = load i32, ptr %18, align 4, !dbg !963
  %93 = add i32 %92, 1, !dbg !963
  store i32 %93, ptr %18, align 4, !dbg !963
  br label %46, !dbg !964, !llvm.loop !965

94:                                               ; preds = %46
  br label %29, !dbg !919, !llvm.loop !967

95:                                               ; preds = %29
  ret void, !dbg !969
}

; Function Attrs: noinline nounwind uwtable
define internal void @null_convert(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 !dbg !970 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store ptr %0, ptr %6, align 8
    #dbg_declare(ptr %6, !971, !DIExpression(), !972)
  store ptr %1, ptr %7, align 8
    #dbg_declare(ptr %7, !973, !DIExpression(), !974)
  store ptr %2, ptr %8, align 8
    #dbg_declare(ptr %8, !975, !DIExpression(), !976)
  store i32 %3, ptr %9, align 4
    #dbg_declare(ptr %9, !977, !DIExpression(), !978)
  store i32 %4, ptr %10, align 4
    #dbg_declare(ptr %10, !979, !DIExpression(), !980)
    #dbg_declare(ptr %11, !981, !DIExpression(), !982)
    #dbg_declare(ptr %12, !983, !DIExpression(), !984)
    #dbg_declare(ptr %13, !985, !DIExpression(), !986)
    #dbg_declare(ptr %14, !987, !DIExpression(), !988)
    #dbg_declare(ptr %15, !989, !DIExpression(), !990)
  %17 = load ptr, ptr %6, align 8, !dbg !991
  %18 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %17, i32 0, i32 12, !dbg !992
  %19 = load i32, ptr %18, align 4, !dbg !992
  store i32 %19, ptr %15, align 4, !dbg !990
    #dbg_declare(ptr %16, !993, !DIExpression(), !994)
  %20 = load ptr, ptr %6, align 8, !dbg !995
  %21 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %20, i32 0, i32 6, !dbg !996
  %22 = load i32, ptr %21, align 8, !dbg !996
  store i32 %22, ptr %16, align 4, !dbg !994
  br label %23, !dbg !997

23:                                               ; preds = %69, %5
  %24 = load i32, ptr %10, align 4, !dbg !998
  %25 = add nsw i32 %24, -1, !dbg !998
  store i32 %25, ptr %10, align 4, !dbg !998
  %26 = icmp sge i32 %25, 0, !dbg !999
  br i1 %26, label %27, label %74, !dbg !997

27:                                               ; preds = %23
  store i32 0, ptr %14, align 4, !dbg !1000
  br label %28, !dbg !1003

28:                                               ; preds = %66, %27
  %29 = load i32, ptr %14, align 4, !dbg !1004
  %30 = load i32, ptr %15, align 4, !dbg !1006
  %31 = icmp slt i32 %29, %30, !dbg !1007
  br i1 %31, label %32, label %69, !dbg !1008

32:                                               ; preds = %28
  %33 = load ptr, ptr %7, align 8, !dbg !1009
  %34 = load ptr, ptr %33, align 8, !dbg !1011
  store ptr %34, ptr %11, align 8, !dbg !1012
  %35 = load ptr, ptr %8, align 8, !dbg !1013
  %36 = load i32, ptr %14, align 4, !dbg !1014
  %37 = sext i32 %36 to i64, !dbg !1013
  %38 = getelementptr inbounds ptr, ptr %35, i64 %37, !dbg !1013
  %39 = load ptr, ptr %38, align 8, !dbg !1013
  %40 = load i32, ptr %9, align 4, !dbg !1015
  %41 = zext i32 %40 to i64, !dbg !1013
  %42 = getelementptr inbounds nuw ptr, ptr %39, i64 %41, !dbg !1013
  %43 = load ptr, ptr %42, align 8, !dbg !1013
  store ptr %43, ptr %12, align 8, !dbg !1016
  store i32 0, ptr %13, align 4, !dbg !1017
  br label %44, !dbg !1019

44:                                               ; preds = %62, %32
  %45 = load i32, ptr %13, align 4, !dbg !1020
  %46 = load i32, ptr %16, align 4, !dbg !1022
  %47 = icmp ult i32 %45, %46, !dbg !1023
  br i1 %47, label %48, label %65, !dbg !1024

48:                                               ; preds = %44
  %49 = load ptr, ptr %11, align 8, !dbg !1025
  %50 = load i32, ptr %14, align 4, !dbg !1027
  %51 = sext i32 %50 to i64, !dbg !1025
  %52 = getelementptr inbounds i8, ptr %49, i64 %51, !dbg !1025
  %53 = load i8, ptr %52, align 1, !dbg !1025
  %54 = load ptr, ptr %12, align 8, !dbg !1028
  %55 = load i32, ptr %13, align 4, !dbg !1029
  %56 = zext i32 %55 to i64, !dbg !1028
  %57 = getelementptr inbounds nuw i8, ptr %54, i64 %56, !dbg !1028
  store i8 %53, ptr %57, align 1, !dbg !1030
  %58 = load i32, ptr %15, align 4, !dbg !1031
  %59 = load ptr, ptr %11, align 8, !dbg !1032
  %60 = sext i32 %58 to i64, !dbg !1032
  %61 = getelementptr inbounds i8, ptr %59, i64 %60, !dbg !1032
  store ptr %61, ptr %11, align 8, !dbg !1032
  br label %62, !dbg !1033

62:                                               ; preds = %48
  %63 = load i32, ptr %13, align 4, !dbg !1034
  %64 = add i32 %63, 1, !dbg !1034
  store i32 %64, ptr %13, align 4, !dbg !1034
  br label %44, !dbg !1035, !llvm.loop !1036

65:                                               ; preds = %44
  br label %66, !dbg !1038

66:                                               ; preds = %65
  %67 = load i32, ptr %14, align 4, !dbg !1039
  %68 = add nsw i32 %67, 1, !dbg !1039
  store i32 %68, ptr %14, align 4, !dbg !1039
  br label %28, !dbg !1040, !llvm.loop !1041

69:                                               ; preds = %28
  %70 = load ptr, ptr %7, align 8, !dbg !1043
  %71 = getelementptr inbounds nuw ptr, ptr %70, i32 1, !dbg !1043
  store ptr %71, ptr %7, align 8, !dbg !1043
  %72 = load i32, ptr %9, align 4, !dbg !1044
  %73 = add i32 %72, 1, !dbg !1044
  store i32 %73, ptr %9, align 4, !dbg !1044
  br label %23, !dbg !997, !llvm.loop !1045

74:                                               ; preds = %23
  ret void, !dbg !1047
}

; Function Attrs: noinline nounwind uwtable
define internal void @rgb_ycc_convert(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 !dbg !1048 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
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
  store ptr %0, ptr %6, align 8
    #dbg_declare(ptr %6, !1049, !DIExpression(), !1050)
  store ptr %1, ptr %7, align 8
    #dbg_declare(ptr %7, !1051, !DIExpression(), !1052)
  store ptr %2, ptr %8, align 8
    #dbg_declare(ptr %8, !1053, !DIExpression(), !1054)
  store i32 %3, ptr %9, align 4
    #dbg_declare(ptr %9, !1055, !DIExpression(), !1056)
  store i32 %4, ptr %10, align 4
    #dbg_declare(ptr %10, !1057, !DIExpression(), !1058)
    #dbg_declare(ptr %11, !1059, !DIExpression(), !1060)
  %22 = load ptr, ptr %6, align 8, !dbg !1061
  %23 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %22, i32 0, i32 56, !dbg !1062
  %24 = load ptr, ptr %23, align 8, !dbg !1062
  store ptr %24, ptr %11, align 8, !dbg !1060
    #dbg_declare(ptr %12, !1063, !DIExpression(), !1064)
    #dbg_declare(ptr %13, !1065, !DIExpression(), !1066)
    #dbg_declare(ptr %14, !1067, !DIExpression(), !1068)
    #dbg_declare(ptr %15, !1069, !DIExpression(), !1070)
  %25 = load ptr, ptr %11, align 8, !dbg !1071
  %26 = getelementptr inbounds nuw %struct.my_color_converter, ptr %25, i32 0, i32 1, !dbg !1072
  %27 = load ptr, ptr %26, align 8, !dbg !1072
  store ptr %27, ptr %15, align 8, !dbg !1070
    #dbg_declare(ptr %16, !1073, !DIExpression(), !1074)
    #dbg_declare(ptr %17, !1075, !DIExpression(), !1076)
    #dbg_declare(ptr %18, !1077, !DIExpression(), !1078)
    #dbg_declare(ptr %19, !1079, !DIExpression(), !1080)
    #dbg_declare(ptr %20, !1081, !DIExpression(), !1082)
    #dbg_declare(ptr %21, !1083, !DIExpression(), !1084)
  %28 = load ptr, ptr %6, align 8, !dbg !1085
  %29 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %28, i32 0, i32 6, !dbg !1086
  %30 = load i32, ptr %29, align 8, !dbg !1086
  store i32 %30, ptr %21, align 4, !dbg !1084
  br label %31, !dbg !1087

31:                                               ; preds = %162, %5
  %32 = load i32, ptr %10, align 4, !dbg !1088
  %33 = add nsw i32 %32, -1, !dbg !1088
  store i32 %33, ptr %10, align 4, !dbg !1088
  %34 = icmp sge i32 %33, 0, !dbg !1089
  br i1 %34, label %35, label %163, !dbg !1087

35:                                               ; preds = %31
  %36 = load ptr, ptr %7, align 8, !dbg !1090
  %37 = getelementptr inbounds nuw ptr, ptr %36, i32 1, !dbg !1090
  store ptr %37, ptr %7, align 8, !dbg !1090
  %38 = load ptr, ptr %36, align 8, !dbg !1092
  store ptr %38, ptr %16, align 8, !dbg !1093
  %39 = load ptr, ptr %8, align 8, !dbg !1094
  %40 = getelementptr inbounds ptr, ptr %39, i64 0, !dbg !1094
  %41 = load ptr, ptr %40, align 8, !dbg !1094
  %42 = load i32, ptr %9, align 4, !dbg !1095
  %43 = zext i32 %42 to i64, !dbg !1094
  %44 = getelementptr inbounds nuw ptr, ptr %41, i64 %43, !dbg !1094
  %45 = load ptr, ptr %44, align 8, !dbg !1094
  store ptr %45, ptr %17, align 8, !dbg !1096
  %46 = load ptr, ptr %8, align 8, !dbg !1097
  %47 = getelementptr inbounds ptr, ptr %46, i64 1, !dbg !1097
  %48 = load ptr, ptr %47, align 8, !dbg !1097
  %49 = load i32, ptr %9, align 4, !dbg !1098
  %50 = zext i32 %49 to i64, !dbg !1097
  %51 = getelementptr inbounds nuw ptr, ptr %48, i64 %50, !dbg !1097
  %52 = load ptr, ptr %51, align 8, !dbg !1097
  store ptr %52, ptr %18, align 8, !dbg !1099
  %53 = load ptr, ptr %8, align 8, !dbg !1100
  %54 = getelementptr inbounds ptr, ptr %53, i64 2, !dbg !1100
  %55 = load ptr, ptr %54, align 8, !dbg !1100
  %56 = load i32, ptr %9, align 4, !dbg !1101
  %57 = zext i32 %56 to i64, !dbg !1100
  %58 = getelementptr inbounds nuw ptr, ptr %55, i64 %57, !dbg !1100
  %59 = load ptr, ptr %58, align 8, !dbg !1100
  store ptr %59, ptr %19, align 8, !dbg !1102
  %60 = load i32, ptr %9, align 4, !dbg !1103
  %61 = add i32 %60, 1, !dbg !1103
  store i32 %61, ptr %9, align 4, !dbg !1103
  store i32 0, ptr %20, align 4, !dbg !1104
  br label %62, !dbg !1106

62:                                               ; preds = %159, %35
  %63 = load i32, ptr %20, align 4, !dbg !1107
  %64 = load i32, ptr %21, align 4, !dbg !1109
  %65 = icmp ult i32 %63, %64, !dbg !1110
  br i1 %65, label %66, label %162, !dbg !1111

66:                                               ; preds = %62
  %67 = load ptr, ptr %16, align 8, !dbg !1112
  %68 = getelementptr inbounds i8, ptr %67, i64 0, !dbg !1112
  %69 = load i8, ptr %68, align 1, !dbg !1112
  %70 = zext i8 %69 to i32, !dbg !1112
  store i32 %70, ptr %12, align 4, !dbg !1114
  %71 = load ptr, ptr %16, align 8, !dbg !1115
  %72 = getelementptr inbounds i8, ptr %71, i64 1, !dbg !1115
  %73 = load i8, ptr %72, align 1, !dbg !1115
  %74 = zext i8 %73 to i32, !dbg !1115
  store i32 %74, ptr %13, align 4, !dbg !1116
  %75 = load ptr, ptr %16, align 8, !dbg !1117
  %76 = getelementptr inbounds i8, ptr %75, i64 2, !dbg !1117
  %77 = load i8, ptr %76, align 1, !dbg !1117
  %78 = zext i8 %77 to i32, !dbg !1117
  store i32 %78, ptr %14, align 4, !dbg !1118
  %79 = load ptr, ptr %16, align 8, !dbg !1119
  %80 = getelementptr inbounds i8, ptr %79, i64 3, !dbg !1119
  store ptr %80, ptr %16, align 8, !dbg !1119
  %81 = load ptr, ptr %15, align 8, !dbg !1120
  %82 = load i32, ptr %12, align 4, !dbg !1121
  %83 = add nsw i32 %82, 0, !dbg !1122
  %84 = sext i32 %83 to i64, !dbg !1120
  %85 = getelementptr inbounds i64, ptr %81, i64 %84, !dbg !1120
  %86 = load i64, ptr %85, align 8, !dbg !1120
  %87 = load ptr, ptr %15, align 8, !dbg !1123
  %88 = load i32, ptr %13, align 4, !dbg !1124
  %89 = add nsw i32 %88, 256, !dbg !1125
  %90 = sext i32 %89 to i64, !dbg !1123
  %91 = getelementptr inbounds i64, ptr %87, i64 %90, !dbg !1123
  %92 = load i64, ptr %91, align 8, !dbg !1123
  %93 = add nsw i64 %86, %92, !dbg !1126
  %94 = load ptr, ptr %15, align 8, !dbg !1127
  %95 = load i32, ptr %14, align 4, !dbg !1128
  %96 = add nsw i32 %95, 512, !dbg !1129
  %97 = sext i32 %96 to i64, !dbg !1127
  %98 = getelementptr inbounds i64, ptr %94, i64 %97, !dbg !1127
  %99 = load i64, ptr %98, align 8, !dbg !1127
  %100 = add nsw i64 %93, %99, !dbg !1130
  %101 = ashr i64 %100, 16, !dbg !1131
  %102 = trunc i64 %101 to i8, !dbg !1132
  %103 = load ptr, ptr %17, align 8, !dbg !1133
  %104 = load i32, ptr %20, align 4, !dbg !1134
  %105 = zext i32 %104 to i64, !dbg !1133
  %106 = getelementptr inbounds nuw i8, ptr %103, i64 %105, !dbg !1133
  store i8 %102, ptr %106, align 1, !dbg !1135
  %107 = load ptr, ptr %15, align 8, !dbg !1136
  %108 = load i32, ptr %12, align 4, !dbg !1137
  %109 = add nsw i32 %108, 768, !dbg !1138
  %110 = sext i32 %109 to i64, !dbg !1136
  %111 = getelementptr inbounds i64, ptr %107, i64 %110, !dbg !1136
  %112 = load i64, ptr %111, align 8, !dbg !1136
  %113 = load ptr, ptr %15, align 8, !dbg !1139
  %114 = load i32, ptr %13, align 4, !dbg !1140
  %115 = add nsw i32 %114, 1024, !dbg !1141
  %116 = sext i32 %115 to i64, !dbg !1139
  %117 = getelementptr inbounds i64, ptr %113, i64 %116, !dbg !1139
  %118 = load i64, ptr %117, align 8, !dbg !1139
  %119 = add nsw i64 %112, %118, !dbg !1142
  %120 = load ptr, ptr %15, align 8, !dbg !1143
  %121 = load i32, ptr %14, align 4, !dbg !1144
  %122 = add nsw i32 %121, 1280, !dbg !1145
  %123 = sext i32 %122 to i64, !dbg !1143
  %124 = getelementptr inbounds i64, ptr %120, i64 %123, !dbg !1143
  %125 = load i64, ptr %124, align 8, !dbg !1143
  %126 = add nsw i64 %119, %125, !dbg !1146
  %127 = ashr i64 %126, 16, !dbg !1147
  %128 = trunc i64 %127 to i8, !dbg !1148
  %129 = load ptr, ptr %18, align 8, !dbg !1149
  %130 = load i32, ptr %20, align 4, !dbg !1150
  %131 = zext i32 %130 to i64, !dbg !1149
  %132 = getelementptr inbounds nuw i8, ptr %129, i64 %131, !dbg !1149
  store i8 %128, ptr %132, align 1, !dbg !1151
  %133 = load ptr, ptr %15, align 8, !dbg !1152
  %134 = load i32, ptr %12, align 4, !dbg !1153
  %135 = add nsw i32 %134, 1280, !dbg !1154
  %136 = sext i32 %135 to i64, !dbg !1152
  %137 = getelementptr inbounds i64, ptr %133, i64 %136, !dbg !1152
  %138 = load i64, ptr %137, align 8, !dbg !1152
  %139 = load ptr, ptr %15, align 8, !dbg !1155
  %140 = load i32, ptr %13, align 4, !dbg !1156
  %141 = add nsw i32 %140, 1536, !dbg !1157
  %142 = sext i32 %141 to i64, !dbg !1155
  %143 = getelementptr inbounds i64, ptr %139, i64 %142, !dbg !1155
  %144 = load i64, ptr %143, align 8, !dbg !1155
  %145 = add nsw i64 %138, %144, !dbg !1158
  %146 = load ptr, ptr %15, align 8, !dbg !1159
  %147 = load i32, ptr %14, align 4, !dbg !1160
  %148 = add nsw i32 %147, 1792, !dbg !1161
  %149 = sext i32 %148 to i64, !dbg !1159
  %150 = getelementptr inbounds i64, ptr %146, i64 %149, !dbg !1159
  %151 = load i64, ptr %150, align 8, !dbg !1159
  %152 = add nsw i64 %145, %151, !dbg !1162
  %153 = ashr i64 %152, 16, !dbg !1163
  %154 = trunc i64 %153 to i8, !dbg !1164
  %155 = load ptr, ptr %19, align 8, !dbg !1165
  %156 = load i32, ptr %20, align 4, !dbg !1166
  %157 = zext i32 %156 to i64, !dbg !1165
  %158 = getelementptr inbounds nuw i8, ptr %155, i64 %157, !dbg !1165
  store i8 %154, ptr %158, align 1, !dbg !1167
  br label %159, !dbg !1168

159:                                              ; preds = %66
  %160 = load i32, ptr %20, align 4, !dbg !1169
  %161 = add i32 %160, 1, !dbg !1169
  store i32 %161, ptr %20, align 4, !dbg !1169
  br label %62, !dbg !1170, !llvm.loop !1171

162:                                              ; preds = %62
  br label %31, !dbg !1087, !llvm.loop !1173

163:                                              ; preds = %31
  ret void, !dbg !1175
}

; Function Attrs: noinline nounwind uwtable
define internal void @cmyk_ycck_convert(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 !dbg !1176 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
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
  %20 = alloca ptr, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store ptr %0, ptr %6, align 8
    #dbg_declare(ptr %6, !1177, !DIExpression(), !1178)
  store ptr %1, ptr %7, align 8
    #dbg_declare(ptr %7, !1179, !DIExpression(), !1180)
  store ptr %2, ptr %8, align 8
    #dbg_declare(ptr %8, !1181, !DIExpression(), !1182)
  store i32 %3, ptr %9, align 4
    #dbg_declare(ptr %9, !1183, !DIExpression(), !1184)
  store i32 %4, ptr %10, align 4
    #dbg_declare(ptr %10, !1185, !DIExpression(), !1186)
    #dbg_declare(ptr %11, !1187, !DIExpression(), !1188)
  %23 = load ptr, ptr %6, align 8, !dbg !1189
  %24 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %23, i32 0, i32 56, !dbg !1190
  %25 = load ptr, ptr %24, align 8, !dbg !1190
  store ptr %25, ptr %11, align 8, !dbg !1188
    #dbg_declare(ptr %12, !1191, !DIExpression(), !1192)
    #dbg_declare(ptr %13, !1193, !DIExpression(), !1194)
    #dbg_declare(ptr %14, !1195, !DIExpression(), !1196)
    #dbg_declare(ptr %15, !1197, !DIExpression(), !1198)
  %26 = load ptr, ptr %11, align 8, !dbg !1199
  %27 = getelementptr inbounds nuw %struct.my_color_converter, ptr %26, i32 0, i32 1, !dbg !1200
  %28 = load ptr, ptr %27, align 8, !dbg !1200
  store ptr %28, ptr %15, align 8, !dbg !1198
    #dbg_declare(ptr %16, !1201, !DIExpression(), !1202)
    #dbg_declare(ptr %17, !1203, !DIExpression(), !1204)
    #dbg_declare(ptr %18, !1205, !DIExpression(), !1206)
    #dbg_declare(ptr %19, !1207, !DIExpression(), !1208)
    #dbg_declare(ptr %20, !1209, !DIExpression(), !1210)
    #dbg_declare(ptr %21, !1211, !DIExpression(), !1212)
    #dbg_declare(ptr %22, !1213, !DIExpression(), !1214)
  %29 = load ptr, ptr %6, align 8, !dbg !1215
  %30 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %29, i32 0, i32 6, !dbg !1216
  %31 = load i32, ptr %30, align 8, !dbg !1216
  store i32 %31, ptr %22, align 4, !dbg !1214
  br label %32, !dbg !1217

32:                                               ; preds = %180, %5
  %33 = load i32, ptr %10, align 4, !dbg !1218
  %34 = add nsw i32 %33, -1, !dbg !1218
  store i32 %34, ptr %10, align 4, !dbg !1218
  %35 = icmp sge i32 %34, 0, !dbg !1219
  br i1 %35, label %36, label %181, !dbg !1217

36:                                               ; preds = %32
  %37 = load ptr, ptr %7, align 8, !dbg !1220
  %38 = getelementptr inbounds nuw ptr, ptr %37, i32 1, !dbg !1220
  store ptr %38, ptr %7, align 8, !dbg !1220
  %39 = load ptr, ptr %37, align 8, !dbg !1222
  store ptr %39, ptr %16, align 8, !dbg !1223
  %40 = load ptr, ptr %8, align 8, !dbg !1224
  %41 = getelementptr inbounds ptr, ptr %40, i64 0, !dbg !1224
  %42 = load ptr, ptr %41, align 8, !dbg !1224
  %43 = load i32, ptr %9, align 4, !dbg !1225
  %44 = zext i32 %43 to i64, !dbg !1224
  %45 = getelementptr inbounds nuw ptr, ptr %42, i64 %44, !dbg !1224
  %46 = load ptr, ptr %45, align 8, !dbg !1224
  store ptr %46, ptr %17, align 8, !dbg !1226
  %47 = load ptr, ptr %8, align 8, !dbg !1227
  %48 = getelementptr inbounds ptr, ptr %47, i64 1, !dbg !1227
  %49 = load ptr, ptr %48, align 8, !dbg !1227
  %50 = load i32, ptr %9, align 4, !dbg !1228
  %51 = zext i32 %50 to i64, !dbg !1227
  %52 = getelementptr inbounds nuw ptr, ptr %49, i64 %51, !dbg !1227
  %53 = load ptr, ptr %52, align 8, !dbg !1227
  store ptr %53, ptr %18, align 8, !dbg !1229
  %54 = load ptr, ptr %8, align 8, !dbg !1230
  %55 = getelementptr inbounds ptr, ptr %54, i64 2, !dbg !1230
  %56 = load ptr, ptr %55, align 8, !dbg !1230
  %57 = load i32, ptr %9, align 4, !dbg !1231
  %58 = zext i32 %57 to i64, !dbg !1230
  %59 = getelementptr inbounds nuw ptr, ptr %56, i64 %58, !dbg !1230
  %60 = load ptr, ptr %59, align 8, !dbg !1230
  store ptr %60, ptr %19, align 8, !dbg !1232
  %61 = load ptr, ptr %8, align 8, !dbg !1233
  %62 = getelementptr inbounds ptr, ptr %61, i64 3, !dbg !1233
  %63 = load ptr, ptr %62, align 8, !dbg !1233
  %64 = load i32, ptr %9, align 4, !dbg !1234
  %65 = zext i32 %64 to i64, !dbg !1233
  %66 = getelementptr inbounds nuw ptr, ptr %63, i64 %65, !dbg !1233
  %67 = load ptr, ptr %66, align 8, !dbg !1233
  store ptr %67, ptr %20, align 8, !dbg !1235
  %68 = load i32, ptr %9, align 4, !dbg !1236
  %69 = add i32 %68, 1, !dbg !1236
  store i32 %69, ptr %9, align 4, !dbg !1236
  store i32 0, ptr %21, align 4, !dbg !1237
  br label %70, !dbg !1239

70:                                               ; preds = %177, %36
  %71 = load i32, ptr %21, align 4, !dbg !1240
  %72 = load i32, ptr %22, align 4, !dbg !1242
  %73 = icmp ult i32 %71, %72, !dbg !1243
  br i1 %73, label %74, label %180, !dbg !1244

74:                                               ; preds = %70
  %75 = load ptr, ptr %16, align 8, !dbg !1245
  %76 = getelementptr inbounds i8, ptr %75, i64 0, !dbg !1245
  %77 = load i8, ptr %76, align 1, !dbg !1245
  %78 = zext i8 %77 to i32, !dbg !1245
  %79 = sub nsw i32 255, %78, !dbg !1247
  store i32 %79, ptr %12, align 4, !dbg !1248
  %80 = load ptr, ptr %16, align 8, !dbg !1249
  %81 = getelementptr inbounds i8, ptr %80, i64 1, !dbg !1249
  %82 = load i8, ptr %81, align 1, !dbg !1249
  %83 = zext i8 %82 to i32, !dbg !1249
  %84 = sub nsw i32 255, %83, !dbg !1250
  store i32 %84, ptr %13, align 4, !dbg !1251
  %85 = load ptr, ptr %16, align 8, !dbg !1252
  %86 = getelementptr inbounds i8, ptr %85, i64 2, !dbg !1252
  %87 = load i8, ptr %86, align 1, !dbg !1252
  %88 = zext i8 %87 to i32, !dbg !1252
  %89 = sub nsw i32 255, %88, !dbg !1253
  store i32 %89, ptr %14, align 4, !dbg !1254
  %90 = load ptr, ptr %16, align 8, !dbg !1255
  %91 = getelementptr inbounds i8, ptr %90, i64 3, !dbg !1255
  %92 = load i8, ptr %91, align 1, !dbg !1255
  %93 = load ptr, ptr %20, align 8, !dbg !1256
  %94 = load i32, ptr %21, align 4, !dbg !1257
  %95 = zext i32 %94 to i64, !dbg !1256
  %96 = getelementptr inbounds nuw i8, ptr %93, i64 %95, !dbg !1256
  store i8 %92, ptr %96, align 1, !dbg !1258
  %97 = load ptr, ptr %16, align 8, !dbg !1259
  %98 = getelementptr inbounds i8, ptr %97, i64 4, !dbg !1259
  store ptr %98, ptr %16, align 8, !dbg !1259
  %99 = load ptr, ptr %15, align 8, !dbg !1260
  %100 = load i32, ptr %12, align 4, !dbg !1261
  %101 = add nsw i32 %100, 0, !dbg !1262
  %102 = sext i32 %101 to i64, !dbg !1260
  %103 = getelementptr inbounds i64, ptr %99, i64 %102, !dbg !1260
  %104 = load i64, ptr %103, align 8, !dbg !1260
  %105 = load ptr, ptr %15, align 8, !dbg !1263
  %106 = load i32, ptr %13, align 4, !dbg !1264
  %107 = add nsw i32 %106, 256, !dbg !1265
  %108 = sext i32 %107 to i64, !dbg !1263
  %109 = getelementptr inbounds i64, ptr %105, i64 %108, !dbg !1263
  %110 = load i64, ptr %109, align 8, !dbg !1263
  %111 = add nsw i64 %104, %110, !dbg !1266
  %112 = load ptr, ptr %15, align 8, !dbg !1267
  %113 = load i32, ptr %14, align 4, !dbg !1268
  %114 = add nsw i32 %113, 512, !dbg !1269
  %115 = sext i32 %114 to i64, !dbg !1267
  %116 = getelementptr inbounds i64, ptr %112, i64 %115, !dbg !1267
  %117 = load i64, ptr %116, align 8, !dbg !1267
  %118 = add nsw i64 %111, %117, !dbg !1270
  %119 = ashr i64 %118, 16, !dbg !1271
  %120 = trunc i64 %119 to i8, !dbg !1272
  %121 = load ptr, ptr %17, align 8, !dbg !1273
  %122 = load i32, ptr %21, align 4, !dbg !1274
  %123 = zext i32 %122 to i64, !dbg !1273
  %124 = getelementptr inbounds nuw i8, ptr %121, i64 %123, !dbg !1273
  store i8 %120, ptr %124, align 1, !dbg !1275
  %125 = load ptr, ptr %15, align 8, !dbg !1276
  %126 = load i32, ptr %12, align 4, !dbg !1277
  %127 = add nsw i32 %126, 768, !dbg !1278
  %128 = sext i32 %127 to i64, !dbg !1276
  %129 = getelementptr inbounds i64, ptr %125, i64 %128, !dbg !1276
  %130 = load i64, ptr %129, align 8, !dbg !1276
  %131 = load ptr, ptr %15, align 8, !dbg !1279
  %132 = load i32, ptr %13, align 4, !dbg !1280
  %133 = add nsw i32 %132, 1024, !dbg !1281
  %134 = sext i32 %133 to i64, !dbg !1279
  %135 = getelementptr inbounds i64, ptr %131, i64 %134, !dbg !1279
  %136 = load i64, ptr %135, align 8, !dbg !1279
  %137 = add nsw i64 %130, %136, !dbg !1282
  %138 = load ptr, ptr %15, align 8, !dbg !1283
  %139 = load i32, ptr %14, align 4, !dbg !1284
  %140 = add nsw i32 %139, 1280, !dbg !1285
  %141 = sext i32 %140 to i64, !dbg !1283
  %142 = getelementptr inbounds i64, ptr %138, i64 %141, !dbg !1283
  %143 = load i64, ptr %142, align 8, !dbg !1283
  %144 = add nsw i64 %137, %143, !dbg !1286
  %145 = ashr i64 %144, 16, !dbg !1287
  %146 = trunc i64 %145 to i8, !dbg !1288
  %147 = load ptr, ptr %18, align 8, !dbg !1289
  %148 = load i32, ptr %21, align 4, !dbg !1290
  %149 = zext i32 %148 to i64, !dbg !1289
  %150 = getelementptr inbounds nuw i8, ptr %147, i64 %149, !dbg !1289
  store i8 %146, ptr %150, align 1, !dbg !1291
  %151 = load ptr, ptr %15, align 8, !dbg !1292
  %152 = load i32, ptr %12, align 4, !dbg !1293
  %153 = add nsw i32 %152, 1280, !dbg !1294
  %154 = sext i32 %153 to i64, !dbg !1292
  %155 = getelementptr inbounds i64, ptr %151, i64 %154, !dbg !1292
  %156 = load i64, ptr %155, align 8, !dbg !1292
  %157 = load ptr, ptr %15, align 8, !dbg !1295
  %158 = load i32, ptr %13, align 4, !dbg !1296
  %159 = add nsw i32 %158, 1536, !dbg !1297
  %160 = sext i32 %159 to i64, !dbg !1295
  %161 = getelementptr inbounds i64, ptr %157, i64 %160, !dbg !1295
  %162 = load i64, ptr %161, align 8, !dbg !1295
  %163 = add nsw i64 %156, %162, !dbg !1298
  %164 = load ptr, ptr %15, align 8, !dbg !1299
  %165 = load i32, ptr %14, align 4, !dbg !1300
  %166 = add nsw i32 %165, 1792, !dbg !1301
  %167 = sext i32 %166 to i64, !dbg !1299
  %168 = getelementptr inbounds i64, ptr %164, i64 %167, !dbg !1299
  %169 = load i64, ptr %168, align 8, !dbg !1299
  %170 = add nsw i64 %163, %169, !dbg !1302
  %171 = ashr i64 %170, 16, !dbg !1303
  %172 = trunc i64 %171 to i8, !dbg !1304
  %173 = load ptr, ptr %19, align 8, !dbg !1305
  %174 = load i32, ptr %21, align 4, !dbg !1306
  %175 = zext i32 %174 to i64, !dbg !1305
  %176 = getelementptr inbounds nuw i8, ptr %173, i64 %175, !dbg !1305
  store i8 %172, ptr %176, align 1, !dbg !1307
  br label %177, !dbg !1308

177:                                              ; preds = %74
  %178 = load i32, ptr %21, align 4, !dbg !1309
  %179 = add i32 %178, 1, !dbg !1309
  store i32 %179, ptr %21, align 4, !dbg !1309
  br label %70, !dbg !1310, !llvm.loop !1311

180:                                              ; preds = %70
  br label %32, !dbg !1217, !llvm.loop !1313

181:                                              ; preds = %32
  ret void, !dbg !1315
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!529, !530, !531, !532, !533, !534, !535}
!llvm.ident = !{!536}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !149, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jccolor.c", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "f92444f9ec363c2f9bc847b46a0f020b")
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
!149 = !{!150, !174, !189, !489, !527, !528, !188, !201}
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "my_cconvert_ptr", file: !1, line: 25, baseType: !151)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "my_color_converter", file: !1, line: 23, baseType: !153)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 18, size: 192, elements: !154)
!154 = !{!155, !526}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "pub", scope: !153, file: !1, line: 19, baseType: !156, size: 128)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_color_converter", file: !19, line: 83, size: 128, elements: !157)
!157 = !{!158, !522}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !156, file: !19, line: 84, baseType: !159, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = !DISubroutineType(types: !161)
!161 = !{null, !162}
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "j_compress_ptr", file: !4, line: 249, baseType: !163)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_compress_struct", file: !4, line: 255, size: 3968, elements: !165)
!165 = !{!166, !293, !294, !295, !296, !297, !311, !312, !313, !314, !316, !318, !319, !320, !321, !356, !360, !376, !377, !381, !382, !383, !384, !397, !398, !399, !400, !401, !402, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !419, !420, !421, !422, !426, !427, !428, !429, !430, !439, !453, !464, !473, !488, !490, !500, !509}
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
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "downsample", scope: !164, file: !4, line: 386, baseType: !491, size: 64, offset: 3776)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_downsampler", file: !19, line: 91, size: 192, elements: !493)
!493 = !{!494, !495, !499}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !492, file: !19, line: 92, baseType: !159, size: 64)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "downsample", scope: !492, file: !19, line: 93, baseType: !496, size: 64, offset: 64)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DISubroutineType(types: !498)
!498 = !{null, !162, !462, !204, !462, !204}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "need_context_rows", scope: !492, file: !19, line: 98, baseType: !226, size: 32, offset: 128)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "fdct", scope: !164, file: !4, line: 387, baseType: !501, size: 64, offset: 3840)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_forward_dct", file: !19, line: 102, size: 128, elements: !503)
!503 = !{!504, !505}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !502, file: !19, line: 103, baseType: !159, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "forward_DCT", scope: !502, file: !19, line: 105, baseType: !506, size: 64, offset: 64)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = !DISubroutineType(types: !508)
!508 = !{null, !162, !322, !197, !211, !204, !204, !204}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "entropy", scope: !164, file: !4, line: 388, baseType: !510, size: 64, offset: 3904)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_entropy_encoder", file: !19, line: 113, size: 192, elements: !512)
!512 = !{!513, !517, !521}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !511, file: !19, line: 114, baseType: !514, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = !DISubroutineType(types: !516)
!516 = !{null, !162, !226}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "encode_mcu", scope: !511, file: !19, line: 115, baseType: !518, size: 64, offset: 64)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = !DISubroutineType(types: !520)
!520 = !{!226, !162, !210}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "finish_pass", scope: !511, file: !19, line: 116, baseType: !159, size: 64, offset: 128)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "color_convert", scope: !156, file: !19, line: 85, baseType: !523, size: 64, offset: 64)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = !DISubroutineType(types: !525)
!525 = !{null, !162, !197, !462, !204, !188}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "rgb_ycc_tab", scope: !153, file: !1, line: 22, baseType: !527, size: 64, offset: 128)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT32", file: !202, line: 161, baseType: !249)
!529 = !{i32 7, !"Dwarf Version", i32 5}
!530 = !{i32 2, !"Debug Info Version", i32 3}
!531 = !{i32 1, !"wchar_size", i32 4}
!532 = !{i32 8, !"PIC Level", i32 2}
!533 = !{i32 7, !"PIE Level", i32 2}
!534 = !{i32 7, !"uwtable", i32 2}
!535 = !{i32 7, !"frame-pointer", i32 2}
!536 = !{!"clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)"}
!537 = distinct !DISubprogram(name: "jinit_color_converter", scope: !1, file: !1, line: 352, type: !160, scopeLine: 353, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !538)
!538 = !{}
!539 = !DILocalVariable(name: "cinfo", arg: 1, scope: !537, file: !1, line: 352, type: !162)
!540 = !DILocation(line: 352, column: 39, scope: !537)
!541 = !DILocalVariable(name: "cconvert", scope: !537, file: !1, line: 354, type: !150)
!542 = !DILocation(line: 354, column: 19, scope: !537)
!543 = !DILocation(line: 357, column: 7, scope: !537)
!544 = !DILocation(line: 357, column: 14, scope: !537)
!545 = !DILocation(line: 357, column: 19, scope: !537)
!546 = !DILocation(line: 357, column: 48, scope: !537)
!547 = !DILocation(line: 357, column: 5, scope: !537)
!548 = !DILocation(line: 356, column: 12, scope: !537)
!549 = !DILocation(line: 359, column: 53, scope: !537)
!550 = !DILocation(line: 359, column: 3, scope: !537)
!551 = !DILocation(line: 359, column: 10, scope: !537)
!552 = !DILocation(line: 359, column: 19, scope: !537)
!553 = !DILocation(line: 361, column: 3, scope: !537)
!554 = !DILocation(line: 361, column: 13, scope: !537)
!555 = !DILocation(line: 361, column: 17, scope: !537)
!556 = !DILocation(line: 361, column: 28, scope: !537)
!557 = !DILocation(line: 364, column: 11, scope: !537)
!558 = !DILocation(line: 364, column: 18, scope: !537)
!559 = !DILocation(line: 364, column: 3, scope: !537)
!560 = !DILocation(line: 366, column: 9, scope: !561)
!561 = distinct !DILexicalBlock(scope: !562, file: !1, line: 366, column: 9)
!562 = distinct !DILexicalBlock(scope: !537, file: !1, line: 364, column: 34)
!563 = !DILocation(line: 366, column: 16, scope: !561)
!564 = !DILocation(line: 366, column: 33, scope: !561)
!565 = !DILocation(line: 367, column: 7, scope: !561)
!566 = !DILocation(line: 368, column: 5, scope: !562)
!567 = !DILocation(line: 378, column: 9, scope: !568)
!568 = distinct !DILexicalBlock(scope: !562, file: !1, line: 378, column: 9)
!569 = !DILocation(line: 378, column: 16, scope: !568)
!570 = !DILocation(line: 378, column: 33, scope: !568)
!571 = !DILocation(line: 379, column: 7, scope: !568)
!572 = !DILocation(line: 380, column: 5, scope: !562)
!573 = !DILocation(line: 384, column: 9, scope: !574)
!574 = distinct !DILexicalBlock(scope: !562, file: !1, line: 384, column: 9)
!575 = !DILocation(line: 384, column: 16, scope: !574)
!576 = !DILocation(line: 384, column: 33, scope: !574)
!577 = !DILocation(line: 385, column: 7, scope: !574)
!578 = !DILocation(line: 386, column: 5, scope: !562)
!579 = !DILocation(line: 389, column: 9, scope: !580)
!580 = distinct !DILexicalBlock(scope: !562, file: !1, line: 389, column: 9)
!581 = !DILocation(line: 389, column: 16, scope: !580)
!582 = !DILocation(line: 389, column: 33, scope: !580)
!583 = !DILocation(line: 390, column: 7, scope: !580)
!584 = !DILocation(line: 391, column: 5, scope: !562)
!585 = !DILocation(line: 395, column: 11, scope: !537)
!586 = !DILocation(line: 395, column: 18, scope: !537)
!587 = !DILocation(line: 395, column: 3, scope: !537)
!588 = !DILocation(line: 397, column: 9, scope: !589)
!589 = distinct !DILexicalBlock(scope: !590, file: !1, line: 397, column: 9)
!590 = distinct !DILexicalBlock(scope: !537, file: !1, line: 395, column: 36)
!591 = !DILocation(line: 397, column: 16, scope: !589)
!592 = !DILocation(line: 397, column: 31, scope: !589)
!593 = !DILocation(line: 398, column: 7, scope: !589)
!594 = !DILocation(line: 399, column: 9, scope: !595)
!595 = distinct !DILexicalBlock(scope: !590, file: !1, line: 399, column: 9)
!596 = !DILocation(line: 399, column: 16, scope: !595)
!597 = !DILocation(line: 399, column: 31, scope: !595)
!598 = !DILocation(line: 400, column: 7, scope: !595)
!599 = !DILocation(line: 400, column: 17, scope: !595)
!600 = !DILocation(line: 400, column: 21, scope: !595)
!601 = !DILocation(line: 400, column: 35, scope: !595)
!602 = !DILocation(line: 401, column: 14, scope: !603)
!603 = distinct !DILexicalBlock(scope: !595, file: !1, line: 401, column: 14)
!604 = !DILocation(line: 401, column: 21, scope: !603)
!605 = !DILocation(line: 401, column: 36, scope: !603)
!606 = !DILocation(line: 402, column: 7, scope: !607)
!607 = distinct !DILexicalBlock(scope: !603, file: !1, line: 401, column: 48)
!608 = !DILocation(line: 402, column: 17, scope: !607)
!609 = !DILocation(line: 402, column: 21, scope: !607)
!610 = !DILocation(line: 402, column: 32, scope: !607)
!611 = !DILocation(line: 403, column: 7, scope: !607)
!612 = !DILocation(line: 403, column: 17, scope: !607)
!613 = !DILocation(line: 403, column: 21, scope: !607)
!614 = !DILocation(line: 403, column: 35, scope: !607)
!615 = !DILocation(line: 404, column: 5, scope: !607)
!616 = !DILocation(line: 404, column: 16, scope: !617)
!617 = distinct !DILexicalBlock(scope: !603, file: !1, line: 404, column: 16)
!618 = !DILocation(line: 404, column: 23, scope: !617)
!619 = !DILocation(line: 404, column: 38, scope: !617)
!620 = !DILocation(line: 405, column: 7, scope: !617)
!621 = !DILocation(line: 405, column: 17, scope: !617)
!622 = !DILocation(line: 405, column: 21, scope: !617)
!623 = !DILocation(line: 405, column: 35, scope: !617)
!624 = !DILocation(line: 407, column: 7, scope: !617)
!625 = !DILocation(line: 408, column: 5, scope: !590)
!626 = !DILocation(line: 411, column: 9, scope: !627)
!627 = distinct !DILexicalBlock(scope: !590, file: !1, line: 411, column: 9)
!628 = !DILocation(line: 411, column: 16, scope: !627)
!629 = !DILocation(line: 411, column: 31, scope: !627)
!630 = !DILocation(line: 412, column: 7, scope: !627)
!631 = !DILocation(line: 413, column: 9, scope: !632)
!632 = distinct !DILexicalBlock(scope: !590, file: !1, line: 413, column: 9)
!633 = !DILocation(line: 413, column: 16, scope: !632)
!634 = !DILocation(line: 413, column: 31, scope: !632)
!635 = !DILocation(line: 413, column: 42, scope: !632)
!636 = !DILocation(line: 414, column: 7, scope: !632)
!637 = !DILocation(line: 414, column: 17, scope: !632)
!638 = !DILocation(line: 414, column: 21, scope: !632)
!639 = !DILocation(line: 414, column: 35, scope: !632)
!640 = !DILocation(line: 416, column: 7, scope: !632)
!641 = !DILocation(line: 417, column: 5, scope: !590)
!642 = !DILocation(line: 420, column: 9, scope: !643)
!643 = distinct !DILexicalBlock(scope: !590, file: !1, line: 420, column: 9)
!644 = !DILocation(line: 420, column: 16, scope: !643)
!645 = !DILocation(line: 420, column: 31, scope: !643)
!646 = !DILocation(line: 421, column: 7, scope: !643)
!647 = !DILocation(line: 422, column: 9, scope: !648)
!648 = distinct !DILexicalBlock(scope: !590, file: !1, line: 422, column: 9)
!649 = !DILocation(line: 422, column: 16, scope: !648)
!650 = !DILocation(line: 422, column: 31, scope: !648)
!651 = !DILocation(line: 423, column: 7, scope: !652)
!652 = distinct !DILexicalBlock(scope: !648, file: !1, line: 422, column: 43)
!653 = !DILocation(line: 423, column: 17, scope: !652)
!654 = !DILocation(line: 423, column: 21, scope: !652)
!655 = !DILocation(line: 423, column: 32, scope: !652)
!656 = !DILocation(line: 424, column: 7, scope: !652)
!657 = !DILocation(line: 424, column: 17, scope: !652)
!658 = !DILocation(line: 424, column: 21, scope: !652)
!659 = !DILocation(line: 424, column: 35, scope: !652)
!660 = !DILocation(line: 425, column: 5, scope: !652)
!661 = !DILocation(line: 425, column: 16, scope: !662)
!662 = distinct !DILexicalBlock(scope: !648, file: !1, line: 425, column: 16)
!663 = !DILocation(line: 425, column: 23, scope: !662)
!664 = !DILocation(line: 425, column: 38, scope: !662)
!665 = !DILocation(line: 426, column: 7, scope: !662)
!666 = !DILocation(line: 426, column: 17, scope: !662)
!667 = !DILocation(line: 426, column: 21, scope: !662)
!668 = !DILocation(line: 426, column: 35, scope: !662)
!669 = !DILocation(line: 428, column: 7, scope: !662)
!670 = !DILocation(line: 429, column: 5, scope: !590)
!671 = !DILocation(line: 432, column: 9, scope: !672)
!672 = distinct !DILexicalBlock(scope: !590, file: !1, line: 432, column: 9)
!673 = !DILocation(line: 432, column: 16, scope: !672)
!674 = !DILocation(line: 432, column: 31, scope: !672)
!675 = !DILocation(line: 433, column: 7, scope: !672)
!676 = !DILocation(line: 434, column: 9, scope: !677)
!677 = distinct !DILexicalBlock(scope: !590, file: !1, line: 434, column: 9)
!678 = !DILocation(line: 434, column: 16, scope: !677)
!679 = !DILocation(line: 434, column: 31, scope: !677)
!680 = !DILocation(line: 435, column: 7, scope: !677)
!681 = !DILocation(line: 435, column: 17, scope: !677)
!682 = !DILocation(line: 435, column: 21, scope: !677)
!683 = !DILocation(line: 435, column: 35, scope: !677)
!684 = !DILocation(line: 437, column: 7, scope: !677)
!685 = !DILocation(line: 438, column: 5, scope: !590)
!686 = !DILocation(line: 441, column: 9, scope: !687)
!687 = distinct !DILexicalBlock(scope: !590, file: !1, line: 441, column: 9)
!688 = !DILocation(line: 441, column: 16, scope: !687)
!689 = !DILocation(line: 441, column: 31, scope: !687)
!690 = !DILocation(line: 442, column: 7, scope: !687)
!691 = !DILocation(line: 443, column: 9, scope: !692)
!692 = distinct !DILexicalBlock(scope: !590, file: !1, line: 443, column: 9)
!693 = !DILocation(line: 443, column: 16, scope: !692)
!694 = !DILocation(line: 443, column: 31, scope: !692)
!695 = !DILocation(line: 444, column: 7, scope: !696)
!696 = distinct !DILexicalBlock(scope: !692, file: !1, line: 443, column: 44)
!697 = !DILocation(line: 444, column: 17, scope: !696)
!698 = !DILocation(line: 444, column: 21, scope: !696)
!699 = !DILocation(line: 444, column: 32, scope: !696)
!700 = !DILocation(line: 445, column: 7, scope: !696)
!701 = !DILocation(line: 445, column: 17, scope: !696)
!702 = !DILocation(line: 445, column: 21, scope: !696)
!703 = !DILocation(line: 445, column: 35, scope: !696)
!704 = !DILocation(line: 446, column: 5, scope: !696)
!705 = !DILocation(line: 446, column: 16, scope: !706)
!706 = distinct !DILexicalBlock(scope: !692, file: !1, line: 446, column: 16)
!707 = !DILocation(line: 446, column: 23, scope: !706)
!708 = !DILocation(line: 446, column: 38, scope: !706)
!709 = !DILocation(line: 447, column: 7, scope: !706)
!710 = !DILocation(line: 447, column: 17, scope: !706)
!711 = !DILocation(line: 447, column: 21, scope: !706)
!712 = !DILocation(line: 447, column: 35, scope: !706)
!713 = !DILocation(line: 449, column: 7, scope: !706)
!714 = !DILocation(line: 450, column: 5, scope: !590)
!715 = !DILocation(line: 453, column: 9, scope: !716)
!716 = distinct !DILexicalBlock(scope: !590, file: !1, line: 453, column: 9)
!717 = !DILocation(line: 453, column: 16, scope: !716)
!718 = !DILocation(line: 453, column: 36, scope: !716)
!719 = !DILocation(line: 453, column: 43, scope: !716)
!720 = !DILocation(line: 453, column: 33, scope: !716)
!721 = !DILocation(line: 453, column: 58, scope: !716)
!722 = !DILocation(line: 454, column: 2, scope: !716)
!723 = !DILocation(line: 454, column: 9, scope: !716)
!724 = !DILocation(line: 454, column: 27, scope: !716)
!725 = !DILocation(line: 454, column: 34, scope: !716)
!726 = !DILocation(line: 454, column: 24, scope: !716)
!727 = !DILocation(line: 455, column: 7, scope: !716)
!728 = !DILocation(line: 456, column: 5, scope: !590)
!729 = !DILocation(line: 456, column: 15, scope: !590)
!730 = !DILocation(line: 456, column: 19, scope: !590)
!731 = !DILocation(line: 456, column: 33, scope: !590)
!732 = !DILocation(line: 457, column: 5, scope: !590)
!733 = !DILocation(line: 459, column: 1, scope: !537)
!734 = distinct !DISubprogram(name: "null_method", scope: !1, file: !1, line: 341, type: !160, scopeLine: 342, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !538)
!735 = !DILocalVariable(name: "cinfo", arg: 1, scope: !734, file: !1, line: 341, type: !162)
!736 = !DILocation(line: 341, column: 29, scope: !734)
!737 = !DILocation(line: 344, column: 1, scope: !734)
!738 = distinct !DISubprogram(name: "grayscale_convert", scope: !1, file: !1, line: 280, type: !524, scopeLine: 283, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !538)
!739 = !DILocalVariable(name: "cinfo", arg: 1, scope: !738, file: !1, line: 280, type: !162)
!740 = !DILocation(line: 280, column: 35, scope: !738)
!741 = !DILocalVariable(name: "input_buf", arg: 2, scope: !738, file: !1, line: 281, type: !197)
!742 = !DILocation(line: 281, column: 17, scope: !738)
!743 = !DILocalVariable(name: "output_buf", arg: 3, scope: !738, file: !1, line: 281, type: !462)
!744 = !DILocation(line: 281, column: 39, scope: !738)
!745 = !DILocalVariable(name: "output_row", arg: 4, scope: !738, file: !1, line: 282, type: !204)
!746 = !DILocation(line: 282, column: 17, scope: !738)
!747 = !DILocalVariable(name: "num_rows", arg: 5, scope: !738, file: !1, line: 282, type: !188)
!748 = !DILocation(line: 282, column: 33, scope: !738)
!749 = !DILocalVariable(name: "inptr", scope: !738, file: !1, line: 284, type: !199)
!750 = !DILocation(line: 284, column: 21, scope: !738)
!751 = !DILocalVariable(name: "outptr", scope: !738, file: !1, line: 285, type: !199)
!752 = !DILocation(line: 285, column: 21, scope: !738)
!753 = !DILocalVariable(name: "col", scope: !738, file: !1, line: 286, type: !204)
!754 = !DILocation(line: 286, column: 23, scope: !738)
!755 = !DILocalVariable(name: "num_cols", scope: !738, file: !1, line: 287, type: !204)
!756 = !DILocation(line: 287, column: 14, scope: !738)
!757 = !DILocation(line: 287, column: 25, scope: !738)
!758 = !DILocation(line: 287, column: 32, scope: !738)
!759 = !DILocalVariable(name: "instride", scope: !738, file: !1, line: 288, type: !188)
!760 = !DILocation(line: 288, column: 7, scope: !738)
!761 = !DILocation(line: 288, column: 18, scope: !738)
!762 = !DILocation(line: 288, column: 25, scope: !738)
!763 = !DILocation(line: 290, column: 3, scope: !738)
!764 = !DILocation(line: 290, column: 10, scope: !738)
!765 = !DILocation(line: 290, column: 21, scope: !738)
!766 = !DILocation(line: 291, column: 23, scope: !767)
!767 = distinct !DILexicalBlock(scope: !738, file: !1, line: 290, column: 27)
!768 = !DILocation(line: 291, column: 13, scope: !767)
!769 = !DILocation(line: 291, column: 11, scope: !767)
!770 = !DILocation(line: 292, column: 14, scope: !767)
!771 = !DILocation(line: 292, column: 28, scope: !767)
!772 = !DILocation(line: 292, column: 12, scope: !767)
!773 = !DILocation(line: 293, column: 15, scope: !767)
!774 = !DILocation(line: 294, column: 14, scope: !775)
!775 = distinct !DILexicalBlock(scope: !767, file: !1, line: 294, column: 5)
!776 = !DILocation(line: 294, column: 10, scope: !775)
!777 = !DILocation(line: 294, column: 19, scope: !778)
!778 = distinct !DILexicalBlock(scope: !775, file: !1, line: 294, column: 5)
!779 = !DILocation(line: 294, column: 25, scope: !778)
!780 = !DILocation(line: 294, column: 23, scope: !778)
!781 = !DILocation(line: 294, column: 5, scope: !775)
!782 = !DILocation(line: 295, column: 21, scope: !783)
!783 = distinct !DILexicalBlock(scope: !778, file: !1, line: 294, column: 42)
!784 = !DILocation(line: 295, column: 7, scope: !783)
!785 = !DILocation(line: 295, column: 14, scope: !783)
!786 = !DILocation(line: 295, column: 19, scope: !783)
!787 = !DILocation(line: 296, column: 16, scope: !783)
!788 = !DILocation(line: 296, column: 13, scope: !783)
!789 = !DILocation(line: 297, column: 5, scope: !783)
!790 = !DILocation(line: 294, column: 38, scope: !778)
!791 = !DILocation(line: 294, column: 5, scope: !778)
!792 = distinct !{!792, !781, !793, !794}
!793 = !DILocation(line: 297, column: 5, scope: !775)
!794 = !{!"llvm.loop.mustprogress"}
!795 = distinct !{!795, !763, !796, !794}
!796 = !DILocation(line: 298, column: 3, scope: !738)
!797 = !DILocation(line: 299, column: 1, scope: !738)
!798 = distinct !DISubprogram(name: "rgb_ycc_start", scope: !1, file: !1, line: 86, type: !160, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !538)
!799 = !DILocalVariable(name: "cinfo", arg: 1, scope: !798, file: !1, line: 86, type: !162)
!800 = !DILocation(line: 86, column: 31, scope: !798)
!801 = !DILocalVariable(name: "cconvert", scope: !798, file: !1, line: 88, type: !150)
!802 = !DILocation(line: 88, column: 19, scope: !798)
!803 = !DILocation(line: 88, column: 48, scope: !798)
!804 = !DILocation(line: 88, column: 55, scope: !798)
!805 = !DILocalVariable(name: "rgb_ycc_tab", scope: !798, file: !1, line: 89, type: !527)
!806 = !DILocation(line: 89, column: 11, scope: !798)
!807 = !DILocalVariable(name: "i", scope: !798, file: !1, line: 90, type: !528)
!808 = !DILocation(line: 90, column: 9, scope: !798)
!809 = !DILocation(line: 94, column: 7, scope: !798)
!810 = !DILocation(line: 94, column: 14, scope: !798)
!811 = !DILocation(line: 94, column: 19, scope: !798)
!812 = !DILocation(line: 94, column: 48, scope: !798)
!813 = !DILocation(line: 94, column: 5, scope: !798)
!814 = !DILocation(line: 93, column: 39, scope: !798)
!815 = !DILocation(line: 93, column: 3, scope: !798)
!816 = !DILocation(line: 93, column: 13, scope: !798)
!817 = !DILocation(line: 93, column: 25, scope: !798)
!818 = !DILocation(line: 97, column: 10, scope: !819)
!819 = distinct !DILexicalBlock(scope: !798, file: !1, line: 97, column: 3)
!820 = !DILocation(line: 97, column: 8, scope: !819)
!821 = !DILocation(line: 97, column: 15, scope: !822)
!822 = distinct !DILexicalBlock(scope: !819, file: !1, line: 97, column: 3)
!823 = !DILocation(line: 97, column: 17, scope: !822)
!824 = !DILocation(line: 97, column: 3, scope: !819)
!825 = !DILocation(line: 98, column: 45, scope: !826)
!826 = distinct !DILexicalBlock(scope: !822, file: !1, line: 97, column: 37)
!827 = !DILocation(line: 98, column: 43, scope: !826)
!828 = !DILocation(line: 98, column: 5, scope: !826)
!829 = !DILocation(line: 98, column: 17, scope: !826)
!830 = !DILocation(line: 98, column: 18, scope: !826)
!831 = !DILocation(line: 98, column: 28, scope: !826)
!832 = !DILocation(line: 99, column: 45, scope: !826)
!833 = !DILocation(line: 99, column: 43, scope: !826)
!834 = !DILocation(line: 99, column: 5, scope: !826)
!835 = !DILocation(line: 99, column: 17, scope: !826)
!836 = !DILocation(line: 99, column: 18, scope: !826)
!837 = !DILocation(line: 99, column: 28, scope: !826)
!838 = !DILocation(line: 100, column: 45, scope: !826)
!839 = !DILocation(line: 100, column: 43, scope: !826)
!840 = !DILocation(line: 100, column: 51, scope: !826)
!841 = !DILocation(line: 100, column: 5, scope: !826)
!842 = !DILocation(line: 100, column: 17, scope: !826)
!843 = !DILocation(line: 100, column: 18, scope: !826)
!844 = !DILocation(line: 100, column: 28, scope: !826)
!845 = !DILocation(line: 101, column: 49, scope: !826)
!846 = !DILocation(line: 101, column: 47, scope: !826)
!847 = !DILocation(line: 101, column: 5, scope: !826)
!848 = !DILocation(line: 101, column: 17, scope: !826)
!849 = !DILocation(line: 101, column: 18, scope: !826)
!850 = !DILocation(line: 101, column: 29, scope: !826)
!851 = !DILocation(line: 102, column: 49, scope: !826)
!852 = !DILocation(line: 102, column: 47, scope: !826)
!853 = !DILocation(line: 102, column: 5, scope: !826)
!854 = !DILocation(line: 102, column: 17, scope: !826)
!855 = !DILocation(line: 102, column: 18, scope: !826)
!856 = !DILocation(line: 102, column: 29, scope: !826)
!857 = !DILocation(line: 107, column: 46, scope: !826)
!858 = !DILocation(line: 107, column: 44, scope: !826)
!859 = !DILocation(line: 107, column: 51, scope: !826)
!860 = !DILocation(line: 107, column: 65, scope: !826)
!861 = !DILocation(line: 107, column: 75, scope: !826)
!862 = !DILocation(line: 107, column: 5, scope: !826)
!863 = !DILocation(line: 107, column: 17, scope: !826)
!864 = !DILocation(line: 107, column: 18, scope: !826)
!865 = !DILocation(line: 107, column: 29, scope: !826)
!866 = !DILocation(line: 111, column: 49, scope: !826)
!867 = !DILocation(line: 111, column: 47, scope: !826)
!868 = !DILocation(line: 111, column: 5, scope: !826)
!869 = !DILocation(line: 111, column: 17, scope: !826)
!870 = !DILocation(line: 111, column: 18, scope: !826)
!871 = !DILocation(line: 111, column: 29, scope: !826)
!872 = !DILocation(line: 112, column: 49, scope: !826)
!873 = !DILocation(line: 112, column: 47, scope: !826)
!874 = !DILocation(line: 112, column: 5, scope: !826)
!875 = !DILocation(line: 112, column: 17, scope: !826)
!876 = !DILocation(line: 112, column: 18, scope: !826)
!877 = !DILocation(line: 112, column: 29, scope: !826)
!878 = !DILocation(line: 113, column: 3, scope: !826)
!879 = !DILocation(line: 97, column: 33, scope: !822)
!880 = !DILocation(line: 97, column: 3, scope: !822)
!881 = distinct !{!881, !824, !882, !794}
!882 = !DILocation(line: 113, column: 3, scope: !819)
!883 = !DILocation(line: 114, column: 1, scope: !798)
!884 = distinct !DISubprogram(name: "rgb_gray_convert", scope: !1, file: !1, line: 186, type: !524, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !538)
!885 = !DILocalVariable(name: "cinfo", arg: 1, scope: !884, file: !1, line: 186, type: !162)
!886 = !DILocation(line: 186, column: 34, scope: !884)
!887 = !DILocalVariable(name: "input_buf", arg: 2, scope: !884, file: !1, line: 187, type: !197)
!888 = !DILocation(line: 187, column: 16, scope: !884)
!889 = !DILocalVariable(name: "output_buf", arg: 3, scope: !884, file: !1, line: 187, type: !462)
!890 = !DILocation(line: 187, column: 38, scope: !884)
!891 = !DILocalVariable(name: "output_row", arg: 4, scope: !884, file: !1, line: 188, type: !204)
!892 = !DILocation(line: 188, column: 16, scope: !884)
!893 = !DILocalVariable(name: "num_rows", arg: 5, scope: !884, file: !1, line: 188, type: !188)
!894 = !DILocation(line: 188, column: 32, scope: !884)
!895 = !DILocalVariable(name: "cconvert", scope: !884, file: !1, line: 190, type: !150)
!896 = !DILocation(line: 190, column: 19, scope: !884)
!897 = !DILocation(line: 190, column: 48, scope: !884)
!898 = !DILocation(line: 190, column: 55, scope: !884)
!899 = !DILocalVariable(name: "r", scope: !884, file: !1, line: 191, type: !188)
!900 = !DILocation(line: 191, column: 16, scope: !884)
!901 = !DILocalVariable(name: "g", scope: !884, file: !1, line: 191, type: !188)
!902 = !DILocation(line: 191, column: 19, scope: !884)
!903 = !DILocalVariable(name: "b", scope: !884, file: !1, line: 191, type: !188)
!904 = !DILocation(line: 191, column: 22, scope: !884)
!905 = !DILocalVariable(name: "ctab", scope: !884, file: !1, line: 192, type: !527)
!906 = !DILocation(line: 192, column: 20, scope: !884)
!907 = !DILocation(line: 192, column: 27, scope: !884)
!908 = !DILocation(line: 192, column: 37, scope: !884)
!909 = !DILocalVariable(name: "inptr", scope: !884, file: !1, line: 193, type: !199)
!910 = !DILocation(line: 193, column: 21, scope: !884)
!911 = !DILocalVariable(name: "outptr", scope: !884, file: !1, line: 194, type: !199)
!912 = !DILocation(line: 194, column: 21, scope: !884)
!913 = !DILocalVariable(name: "col", scope: !884, file: !1, line: 195, type: !204)
!914 = !DILocation(line: 195, column: 23, scope: !884)
!915 = !DILocalVariable(name: "num_cols", scope: !884, file: !1, line: 196, type: !204)
!916 = !DILocation(line: 196, column: 14, scope: !884)
!917 = !DILocation(line: 196, column: 25, scope: !884)
!918 = !DILocation(line: 196, column: 32, scope: !884)
!919 = !DILocation(line: 198, column: 3, scope: !884)
!920 = !DILocation(line: 198, column: 10, scope: !884)
!921 = !DILocation(line: 198, column: 21, scope: !884)
!922 = !DILocation(line: 199, column: 23, scope: !923)
!923 = distinct !DILexicalBlock(scope: !884, file: !1, line: 198, column: 27)
!924 = !DILocation(line: 199, column: 13, scope: !923)
!925 = !DILocation(line: 199, column: 11, scope: !923)
!926 = !DILocation(line: 200, column: 14, scope: !923)
!927 = !DILocation(line: 200, column: 28, scope: !923)
!928 = !DILocation(line: 200, column: 12, scope: !923)
!929 = !DILocation(line: 201, column: 15, scope: !923)
!930 = !DILocation(line: 202, column: 14, scope: !931)
!931 = distinct !DILexicalBlock(scope: !923, file: !1, line: 202, column: 5)
!932 = !DILocation(line: 202, column: 10, scope: !931)
!933 = !DILocation(line: 202, column: 19, scope: !934)
!934 = distinct !DILexicalBlock(scope: !931, file: !1, line: 202, column: 5)
!935 = !DILocation(line: 202, column: 25, scope: !934)
!936 = !DILocation(line: 202, column: 23, scope: !934)
!937 = !DILocation(line: 202, column: 5, scope: !931)
!938 = !DILocation(line: 203, column: 11, scope: !939)
!939 = distinct !DILexicalBlock(scope: !934, file: !1, line: 202, column: 42)
!940 = !DILocation(line: 203, column: 9, scope: !939)
!941 = !DILocation(line: 204, column: 11, scope: !939)
!942 = !DILocation(line: 204, column: 9, scope: !939)
!943 = !DILocation(line: 205, column: 11, scope: !939)
!944 = !DILocation(line: 205, column: 9, scope: !939)
!945 = !DILocation(line: 206, column: 13, scope: !939)
!946 = !DILocation(line: 209, column: 5, scope: !939)
!947 = !DILocation(line: 209, column: 10, scope: !939)
!948 = !DILocation(line: 209, column: 11, scope: !939)
!949 = !DILocation(line: 209, column: 23, scope: !939)
!950 = !DILocation(line: 209, column: 28, scope: !939)
!951 = !DILocation(line: 209, column: 29, scope: !939)
!952 = !DILocation(line: 209, column: 21, scope: !939)
!953 = !DILocation(line: 209, column: 41, scope: !939)
!954 = !DILocation(line: 209, column: 46, scope: !939)
!955 = !DILocation(line: 209, column: 47, scope: !939)
!956 = !DILocation(line: 209, column: 39, scope: !939)
!957 = !DILocation(line: 210, column: 4, scope: !939)
!958 = !DILocation(line: 208, column: 21, scope: !939)
!959 = !DILocation(line: 208, column: 7, scope: !939)
!960 = !DILocation(line: 208, column: 14, scope: !939)
!961 = !DILocation(line: 208, column: 19, scope: !939)
!962 = !DILocation(line: 211, column: 5, scope: !939)
!963 = !DILocation(line: 202, column: 38, scope: !934)
!964 = !DILocation(line: 202, column: 5, scope: !934)
!965 = distinct !{!965, !937, !966, !794}
!966 = !DILocation(line: 211, column: 5, scope: !931)
!967 = distinct !{!967, !919, !968, !794}
!968 = !DILocation(line: 212, column: 3, scope: !884)
!969 = !DILocation(line: 213, column: 1, scope: !884)
!970 = distinct !DISubprogram(name: "null_convert", scope: !1, file: !1, line: 309, type: !524, scopeLine: 312, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !538)
!971 = !DILocalVariable(name: "cinfo", arg: 1, scope: !970, file: !1, line: 309, type: !162)
!972 = !DILocation(line: 309, column: 30, scope: !970)
!973 = !DILocalVariable(name: "input_buf", arg: 2, scope: !970, file: !1, line: 310, type: !197)
!974 = !DILocation(line: 310, column: 19, scope: !970)
!975 = !DILocalVariable(name: "output_buf", arg: 3, scope: !970, file: !1, line: 310, type: !462)
!976 = !DILocation(line: 310, column: 41, scope: !970)
!977 = !DILocalVariable(name: "output_row", arg: 4, scope: !970, file: !1, line: 311, type: !204)
!978 = !DILocation(line: 311, column: 19, scope: !970)
!979 = !DILocalVariable(name: "num_rows", arg: 5, scope: !970, file: !1, line: 311, type: !188)
!980 = !DILocation(line: 311, column: 35, scope: !970)
!981 = !DILocalVariable(name: "inptr", scope: !970, file: !1, line: 313, type: !199)
!982 = !DILocation(line: 313, column: 21, scope: !970)
!983 = !DILocalVariable(name: "outptr", scope: !970, file: !1, line: 314, type: !199)
!984 = !DILocation(line: 314, column: 21, scope: !970)
!985 = !DILocalVariable(name: "col", scope: !970, file: !1, line: 315, type: !204)
!986 = !DILocation(line: 315, column: 23, scope: !970)
!987 = !DILocalVariable(name: "ci", scope: !970, file: !1, line: 316, type: !188)
!988 = !DILocation(line: 316, column: 16, scope: !970)
!989 = !DILocalVariable(name: "nc", scope: !970, file: !1, line: 317, type: !188)
!990 = !DILocation(line: 317, column: 7, scope: !970)
!991 = !DILocation(line: 317, column: 12, scope: !970)
!992 = !DILocation(line: 317, column: 19, scope: !970)
!993 = !DILocalVariable(name: "num_cols", scope: !970, file: !1, line: 318, type: !204)
!994 = !DILocation(line: 318, column: 14, scope: !970)
!995 = !DILocation(line: 318, column: 25, scope: !970)
!996 = !DILocation(line: 318, column: 32, scope: !970)
!997 = !DILocation(line: 320, column: 3, scope: !970)
!998 = !DILocation(line: 320, column: 10, scope: !970)
!999 = !DILocation(line: 320, column: 21, scope: !970)
!1000 = !DILocation(line: 322, column: 13, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !1002, file: !1, line: 322, column: 5)
!1002 = distinct !DILexicalBlock(scope: !970, file: !1, line: 320, column: 27)
!1003 = !DILocation(line: 322, column: 10, scope: !1001)
!1004 = !DILocation(line: 322, column: 18, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !1001, file: !1, line: 322, column: 5)
!1006 = !DILocation(line: 322, column: 23, scope: !1005)
!1007 = !DILocation(line: 322, column: 21, scope: !1005)
!1008 = !DILocation(line: 322, column: 5, scope: !1001)
!1009 = !DILocation(line: 323, column: 16, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !1005, file: !1, line: 322, column: 33)
!1011 = !DILocation(line: 323, column: 15, scope: !1010)
!1012 = !DILocation(line: 323, column: 13, scope: !1010)
!1013 = !DILocation(line: 324, column: 16, scope: !1010)
!1014 = !DILocation(line: 324, column: 27, scope: !1010)
!1015 = !DILocation(line: 324, column: 31, scope: !1010)
!1016 = !DILocation(line: 324, column: 14, scope: !1010)
!1017 = !DILocation(line: 325, column: 16, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !1010, file: !1, line: 325, column: 7)
!1019 = !DILocation(line: 325, column: 12, scope: !1018)
!1020 = !DILocation(line: 325, column: 21, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !1018, file: !1, line: 325, column: 7)
!1022 = !DILocation(line: 325, column: 27, scope: !1021)
!1023 = !DILocation(line: 325, column: 25, scope: !1021)
!1024 = !DILocation(line: 325, column: 7, scope: !1018)
!1025 = !DILocation(line: 326, column: 16, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !1021, file: !1, line: 325, column: 44)
!1027 = !DILocation(line: 326, column: 22, scope: !1026)
!1028 = !DILocation(line: 326, column: 2, scope: !1026)
!1029 = !DILocation(line: 326, column: 9, scope: !1026)
!1030 = !DILocation(line: 326, column: 14, scope: !1026)
!1031 = !DILocation(line: 327, column: 11, scope: !1026)
!1032 = !DILocation(line: 327, column: 8, scope: !1026)
!1033 = !DILocation(line: 328, column: 7, scope: !1026)
!1034 = !DILocation(line: 325, column: 40, scope: !1021)
!1035 = !DILocation(line: 325, column: 7, scope: !1021)
!1036 = distinct !{!1036, !1024, !1037, !794}
!1037 = !DILocation(line: 328, column: 7, scope: !1018)
!1038 = !DILocation(line: 329, column: 5, scope: !1010)
!1039 = !DILocation(line: 322, column: 29, scope: !1005)
!1040 = !DILocation(line: 322, column: 5, scope: !1005)
!1041 = distinct !{!1041, !1008, !1042, !794}
!1042 = !DILocation(line: 329, column: 5, scope: !1001)
!1043 = !DILocation(line: 330, column: 14, scope: !1002)
!1044 = !DILocation(line: 331, column: 15, scope: !1002)
!1045 = distinct !{!1045, !997, !1046, !794}
!1046 = !DILocation(line: 332, column: 3, scope: !970)
!1047 = !DILocation(line: 333, column: 1, scope: !970)
!1048 = distinct !DISubprogram(name: "rgb_ycc_convert", scope: !1, file: !1, line: 130, type: !524, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !538)
!1049 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1048, file: !1, line: 130, type: !162)
!1050 = !DILocation(line: 130, column: 33, scope: !1048)
!1051 = !DILocalVariable(name: "input_buf", arg: 2, scope: !1048, file: !1, line: 131, type: !197)
!1052 = !DILocation(line: 131, column: 15, scope: !1048)
!1053 = !DILocalVariable(name: "output_buf", arg: 3, scope: !1048, file: !1, line: 131, type: !462)
!1054 = !DILocation(line: 131, column: 37, scope: !1048)
!1055 = !DILocalVariable(name: "output_row", arg: 4, scope: !1048, file: !1, line: 132, type: !204)
!1056 = !DILocation(line: 132, column: 15, scope: !1048)
!1057 = !DILocalVariable(name: "num_rows", arg: 5, scope: !1048, file: !1, line: 132, type: !188)
!1058 = !DILocation(line: 132, column: 31, scope: !1048)
!1059 = !DILocalVariable(name: "cconvert", scope: !1048, file: !1, line: 134, type: !150)
!1060 = !DILocation(line: 134, column: 19, scope: !1048)
!1061 = !DILocation(line: 134, column: 48, scope: !1048)
!1062 = !DILocation(line: 134, column: 55, scope: !1048)
!1063 = !DILocalVariable(name: "r", scope: !1048, file: !1, line: 135, type: !188)
!1064 = !DILocation(line: 135, column: 16, scope: !1048)
!1065 = !DILocalVariable(name: "g", scope: !1048, file: !1, line: 135, type: !188)
!1066 = !DILocation(line: 135, column: 19, scope: !1048)
!1067 = !DILocalVariable(name: "b", scope: !1048, file: !1, line: 135, type: !188)
!1068 = !DILocation(line: 135, column: 22, scope: !1048)
!1069 = !DILocalVariable(name: "ctab", scope: !1048, file: !1, line: 136, type: !527)
!1070 = !DILocation(line: 136, column: 20, scope: !1048)
!1071 = !DILocation(line: 136, column: 27, scope: !1048)
!1072 = !DILocation(line: 136, column: 37, scope: !1048)
!1073 = !DILocalVariable(name: "inptr", scope: !1048, file: !1, line: 137, type: !199)
!1074 = !DILocation(line: 137, column: 21, scope: !1048)
!1075 = !DILocalVariable(name: "outptr0", scope: !1048, file: !1, line: 138, type: !199)
!1076 = !DILocation(line: 138, column: 21, scope: !1048)
!1077 = !DILocalVariable(name: "outptr1", scope: !1048, file: !1, line: 138, type: !199)
!1078 = !DILocation(line: 138, column: 30, scope: !1048)
!1079 = !DILocalVariable(name: "outptr2", scope: !1048, file: !1, line: 138, type: !199)
!1080 = !DILocation(line: 138, column: 39, scope: !1048)
!1081 = !DILocalVariable(name: "col", scope: !1048, file: !1, line: 139, type: !204)
!1082 = !DILocation(line: 139, column: 23, scope: !1048)
!1083 = !DILocalVariable(name: "num_cols", scope: !1048, file: !1, line: 140, type: !204)
!1084 = !DILocation(line: 140, column: 14, scope: !1048)
!1085 = !DILocation(line: 140, column: 25, scope: !1048)
!1086 = !DILocation(line: 140, column: 32, scope: !1048)
!1087 = !DILocation(line: 142, column: 3, scope: !1048)
!1088 = !DILocation(line: 142, column: 10, scope: !1048)
!1089 = !DILocation(line: 142, column: 21, scope: !1048)
!1090 = !DILocation(line: 143, column: 23, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !1048, file: !1, line: 142, column: 27)
!1092 = !DILocation(line: 143, column: 13, scope: !1091)
!1093 = !DILocation(line: 143, column: 11, scope: !1091)
!1094 = !DILocation(line: 144, column: 15, scope: !1091)
!1095 = !DILocation(line: 144, column: 29, scope: !1091)
!1096 = !DILocation(line: 144, column: 13, scope: !1091)
!1097 = !DILocation(line: 145, column: 15, scope: !1091)
!1098 = !DILocation(line: 145, column: 29, scope: !1091)
!1099 = !DILocation(line: 145, column: 13, scope: !1091)
!1100 = !DILocation(line: 146, column: 15, scope: !1091)
!1101 = !DILocation(line: 146, column: 29, scope: !1091)
!1102 = !DILocation(line: 146, column: 13, scope: !1091)
!1103 = !DILocation(line: 147, column: 15, scope: !1091)
!1104 = !DILocation(line: 148, column: 14, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !1091, file: !1, line: 148, column: 5)
!1106 = !DILocation(line: 148, column: 10, scope: !1105)
!1107 = !DILocation(line: 148, column: 19, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1105, file: !1, line: 148, column: 5)
!1109 = !DILocation(line: 148, column: 25, scope: !1108)
!1110 = !DILocation(line: 148, column: 23, scope: !1108)
!1111 = !DILocation(line: 148, column: 5, scope: !1105)
!1112 = !DILocation(line: 149, column: 11, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1108, file: !1, line: 148, column: 42)
!1114 = !DILocation(line: 149, column: 9, scope: !1113)
!1115 = !DILocation(line: 150, column: 11, scope: !1113)
!1116 = !DILocation(line: 150, column: 9, scope: !1113)
!1117 = !DILocation(line: 151, column: 11, scope: !1113)
!1118 = !DILocation(line: 151, column: 9, scope: !1113)
!1119 = !DILocation(line: 152, column: 13, scope: !1113)
!1120 = !DILocation(line: 160, column: 5, scope: !1113)
!1121 = !DILocation(line: 160, column: 10, scope: !1113)
!1122 = !DILocation(line: 160, column: 11, scope: !1113)
!1123 = !DILocation(line: 160, column: 23, scope: !1113)
!1124 = !DILocation(line: 160, column: 28, scope: !1113)
!1125 = !DILocation(line: 160, column: 29, scope: !1113)
!1126 = !DILocation(line: 160, column: 21, scope: !1113)
!1127 = !DILocation(line: 160, column: 41, scope: !1113)
!1128 = !DILocation(line: 160, column: 46, scope: !1113)
!1129 = !DILocation(line: 160, column: 47, scope: !1113)
!1130 = !DILocation(line: 160, column: 39, scope: !1113)
!1131 = !DILocation(line: 161, column: 4, scope: !1113)
!1132 = !DILocation(line: 159, column: 22, scope: !1113)
!1133 = !DILocation(line: 159, column: 7, scope: !1113)
!1134 = !DILocation(line: 159, column: 15, scope: !1113)
!1135 = !DILocation(line: 159, column: 20, scope: !1113)
!1136 = !DILocation(line: 164, column: 5, scope: !1113)
!1137 = !DILocation(line: 164, column: 10, scope: !1113)
!1138 = !DILocation(line: 164, column: 11, scope: !1113)
!1139 = !DILocation(line: 164, column: 24, scope: !1113)
!1140 = !DILocation(line: 164, column: 29, scope: !1113)
!1141 = !DILocation(line: 164, column: 30, scope: !1113)
!1142 = !DILocation(line: 164, column: 22, scope: !1113)
!1143 = !DILocation(line: 164, column: 43, scope: !1113)
!1144 = !DILocation(line: 164, column: 48, scope: !1113)
!1145 = !DILocation(line: 164, column: 49, scope: !1113)
!1146 = !DILocation(line: 164, column: 41, scope: !1113)
!1147 = !DILocation(line: 165, column: 4, scope: !1113)
!1148 = !DILocation(line: 163, column: 22, scope: !1113)
!1149 = !DILocation(line: 163, column: 7, scope: !1113)
!1150 = !DILocation(line: 163, column: 15, scope: !1113)
!1151 = !DILocation(line: 163, column: 20, scope: !1113)
!1152 = !DILocation(line: 168, column: 5, scope: !1113)
!1153 = !DILocation(line: 168, column: 10, scope: !1113)
!1154 = !DILocation(line: 168, column: 11, scope: !1113)
!1155 = !DILocation(line: 168, column: 24, scope: !1113)
!1156 = !DILocation(line: 168, column: 29, scope: !1113)
!1157 = !DILocation(line: 168, column: 30, scope: !1113)
!1158 = !DILocation(line: 168, column: 22, scope: !1113)
!1159 = !DILocation(line: 168, column: 43, scope: !1113)
!1160 = !DILocation(line: 168, column: 48, scope: !1113)
!1161 = !DILocation(line: 168, column: 49, scope: !1113)
!1162 = !DILocation(line: 168, column: 41, scope: !1113)
!1163 = !DILocation(line: 169, column: 4, scope: !1113)
!1164 = !DILocation(line: 167, column: 22, scope: !1113)
!1165 = !DILocation(line: 167, column: 7, scope: !1113)
!1166 = !DILocation(line: 167, column: 15, scope: !1113)
!1167 = !DILocation(line: 167, column: 20, scope: !1113)
!1168 = !DILocation(line: 170, column: 5, scope: !1113)
!1169 = !DILocation(line: 148, column: 38, scope: !1108)
!1170 = !DILocation(line: 148, column: 5, scope: !1108)
!1171 = distinct !{!1171, !1111, !1172, !794}
!1172 = !DILocation(line: 170, column: 5, scope: !1105)
!1173 = distinct !{!1173, !1087, !1174, !794}
!1174 = !DILocation(line: 171, column: 3, scope: !1048)
!1175 = !DILocation(line: 172, column: 1, scope: !1048)
!1176 = distinct !DISubprogram(name: "cmyk_ycck_convert", scope: !1, file: !1, line: 225, type: !524, scopeLine: 228, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !538)
!1177 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1176, file: !1, line: 225, type: !162)
!1178 = !DILocation(line: 225, column: 35, scope: !1176)
!1179 = !DILocalVariable(name: "input_buf", arg: 2, scope: !1176, file: !1, line: 226, type: !197)
!1180 = !DILocation(line: 226, column: 17, scope: !1176)
!1181 = !DILocalVariable(name: "output_buf", arg: 3, scope: !1176, file: !1, line: 226, type: !462)
!1182 = !DILocation(line: 226, column: 39, scope: !1176)
!1183 = !DILocalVariable(name: "output_row", arg: 4, scope: !1176, file: !1, line: 227, type: !204)
!1184 = !DILocation(line: 227, column: 17, scope: !1176)
!1185 = !DILocalVariable(name: "num_rows", arg: 5, scope: !1176, file: !1, line: 227, type: !188)
!1186 = !DILocation(line: 227, column: 33, scope: !1176)
!1187 = !DILocalVariable(name: "cconvert", scope: !1176, file: !1, line: 229, type: !150)
!1188 = !DILocation(line: 229, column: 19, scope: !1176)
!1189 = !DILocation(line: 229, column: 48, scope: !1176)
!1190 = !DILocation(line: 229, column: 55, scope: !1176)
!1191 = !DILocalVariable(name: "r", scope: !1176, file: !1, line: 230, type: !188)
!1192 = !DILocation(line: 230, column: 16, scope: !1176)
!1193 = !DILocalVariable(name: "g", scope: !1176, file: !1, line: 230, type: !188)
!1194 = !DILocation(line: 230, column: 19, scope: !1176)
!1195 = !DILocalVariable(name: "b", scope: !1176, file: !1, line: 230, type: !188)
!1196 = !DILocation(line: 230, column: 22, scope: !1176)
!1197 = !DILocalVariable(name: "ctab", scope: !1176, file: !1, line: 231, type: !527)
!1198 = !DILocation(line: 231, column: 20, scope: !1176)
!1199 = !DILocation(line: 231, column: 27, scope: !1176)
!1200 = !DILocation(line: 231, column: 37, scope: !1176)
!1201 = !DILocalVariable(name: "inptr", scope: !1176, file: !1, line: 232, type: !199)
!1202 = !DILocation(line: 232, column: 21, scope: !1176)
!1203 = !DILocalVariable(name: "outptr0", scope: !1176, file: !1, line: 233, type: !199)
!1204 = !DILocation(line: 233, column: 21, scope: !1176)
!1205 = !DILocalVariable(name: "outptr1", scope: !1176, file: !1, line: 233, type: !199)
!1206 = !DILocation(line: 233, column: 30, scope: !1176)
!1207 = !DILocalVariable(name: "outptr2", scope: !1176, file: !1, line: 233, type: !199)
!1208 = !DILocation(line: 233, column: 39, scope: !1176)
!1209 = !DILocalVariable(name: "outptr3", scope: !1176, file: !1, line: 233, type: !199)
!1210 = !DILocation(line: 233, column: 48, scope: !1176)
!1211 = !DILocalVariable(name: "col", scope: !1176, file: !1, line: 234, type: !204)
!1212 = !DILocation(line: 234, column: 23, scope: !1176)
!1213 = !DILocalVariable(name: "num_cols", scope: !1176, file: !1, line: 235, type: !204)
!1214 = !DILocation(line: 235, column: 14, scope: !1176)
!1215 = !DILocation(line: 235, column: 25, scope: !1176)
!1216 = !DILocation(line: 235, column: 32, scope: !1176)
!1217 = !DILocation(line: 237, column: 3, scope: !1176)
!1218 = !DILocation(line: 237, column: 10, scope: !1176)
!1219 = !DILocation(line: 237, column: 21, scope: !1176)
!1220 = !DILocation(line: 238, column: 23, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !1176, file: !1, line: 237, column: 27)
!1222 = !DILocation(line: 238, column: 13, scope: !1221)
!1223 = !DILocation(line: 238, column: 11, scope: !1221)
!1224 = !DILocation(line: 239, column: 15, scope: !1221)
!1225 = !DILocation(line: 239, column: 29, scope: !1221)
!1226 = !DILocation(line: 239, column: 13, scope: !1221)
!1227 = !DILocation(line: 240, column: 15, scope: !1221)
!1228 = !DILocation(line: 240, column: 29, scope: !1221)
!1229 = !DILocation(line: 240, column: 13, scope: !1221)
!1230 = !DILocation(line: 241, column: 15, scope: !1221)
!1231 = !DILocation(line: 241, column: 29, scope: !1221)
!1232 = !DILocation(line: 241, column: 13, scope: !1221)
!1233 = !DILocation(line: 242, column: 15, scope: !1221)
!1234 = !DILocation(line: 242, column: 29, scope: !1221)
!1235 = !DILocation(line: 242, column: 13, scope: !1221)
!1236 = !DILocation(line: 243, column: 15, scope: !1221)
!1237 = !DILocation(line: 244, column: 14, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1221, file: !1, line: 244, column: 5)
!1239 = !DILocation(line: 244, column: 10, scope: !1238)
!1240 = !DILocation(line: 244, column: 19, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1238, file: !1, line: 244, column: 5)
!1242 = !DILocation(line: 244, column: 25, scope: !1241)
!1243 = !DILocation(line: 244, column: 23, scope: !1241)
!1244 = !DILocation(line: 244, column: 5, scope: !1238)
!1245 = !DILocation(line: 245, column: 24, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1241, file: !1, line: 244, column: 42)
!1247 = !DILocation(line: 245, column: 22, scope: !1246)
!1248 = !DILocation(line: 245, column: 9, scope: !1246)
!1249 = !DILocation(line: 246, column: 24, scope: !1246)
!1250 = !DILocation(line: 246, column: 22, scope: !1246)
!1251 = !DILocation(line: 246, column: 9, scope: !1246)
!1252 = !DILocation(line: 247, column: 24, scope: !1246)
!1253 = !DILocation(line: 247, column: 22, scope: !1246)
!1254 = !DILocation(line: 247, column: 9, scope: !1246)
!1255 = !DILocation(line: 249, column: 22, scope: !1246)
!1256 = !DILocation(line: 249, column: 7, scope: !1246)
!1257 = !DILocation(line: 249, column: 15, scope: !1246)
!1258 = !DILocation(line: 249, column: 20, scope: !1246)
!1259 = !DILocation(line: 250, column: 13, scope: !1246)
!1260 = !DILocation(line: 258, column: 5, scope: !1246)
!1261 = !DILocation(line: 258, column: 10, scope: !1246)
!1262 = !DILocation(line: 258, column: 11, scope: !1246)
!1263 = !DILocation(line: 258, column: 23, scope: !1246)
!1264 = !DILocation(line: 258, column: 28, scope: !1246)
!1265 = !DILocation(line: 258, column: 29, scope: !1246)
!1266 = !DILocation(line: 258, column: 21, scope: !1246)
!1267 = !DILocation(line: 258, column: 41, scope: !1246)
!1268 = !DILocation(line: 258, column: 46, scope: !1246)
!1269 = !DILocation(line: 258, column: 47, scope: !1246)
!1270 = !DILocation(line: 258, column: 39, scope: !1246)
!1271 = !DILocation(line: 259, column: 4, scope: !1246)
!1272 = !DILocation(line: 257, column: 22, scope: !1246)
!1273 = !DILocation(line: 257, column: 7, scope: !1246)
!1274 = !DILocation(line: 257, column: 15, scope: !1246)
!1275 = !DILocation(line: 257, column: 20, scope: !1246)
!1276 = !DILocation(line: 262, column: 5, scope: !1246)
!1277 = !DILocation(line: 262, column: 10, scope: !1246)
!1278 = !DILocation(line: 262, column: 11, scope: !1246)
!1279 = !DILocation(line: 262, column: 24, scope: !1246)
!1280 = !DILocation(line: 262, column: 29, scope: !1246)
!1281 = !DILocation(line: 262, column: 30, scope: !1246)
!1282 = !DILocation(line: 262, column: 22, scope: !1246)
!1283 = !DILocation(line: 262, column: 43, scope: !1246)
!1284 = !DILocation(line: 262, column: 48, scope: !1246)
!1285 = !DILocation(line: 262, column: 49, scope: !1246)
!1286 = !DILocation(line: 262, column: 41, scope: !1246)
!1287 = !DILocation(line: 263, column: 4, scope: !1246)
!1288 = !DILocation(line: 261, column: 22, scope: !1246)
!1289 = !DILocation(line: 261, column: 7, scope: !1246)
!1290 = !DILocation(line: 261, column: 15, scope: !1246)
!1291 = !DILocation(line: 261, column: 20, scope: !1246)
!1292 = !DILocation(line: 266, column: 5, scope: !1246)
!1293 = !DILocation(line: 266, column: 10, scope: !1246)
!1294 = !DILocation(line: 266, column: 11, scope: !1246)
!1295 = !DILocation(line: 266, column: 24, scope: !1246)
!1296 = !DILocation(line: 266, column: 29, scope: !1246)
!1297 = !DILocation(line: 266, column: 30, scope: !1246)
!1298 = !DILocation(line: 266, column: 22, scope: !1246)
!1299 = !DILocation(line: 266, column: 43, scope: !1246)
!1300 = !DILocation(line: 266, column: 48, scope: !1246)
!1301 = !DILocation(line: 266, column: 49, scope: !1246)
!1302 = !DILocation(line: 266, column: 41, scope: !1246)
!1303 = !DILocation(line: 267, column: 4, scope: !1246)
!1304 = !DILocation(line: 265, column: 22, scope: !1246)
!1305 = !DILocation(line: 265, column: 7, scope: !1246)
!1306 = !DILocation(line: 265, column: 15, scope: !1246)
!1307 = !DILocation(line: 265, column: 20, scope: !1246)
!1308 = !DILocation(line: 268, column: 5, scope: !1246)
!1309 = !DILocation(line: 244, column: 38, scope: !1241)
!1310 = !DILocation(line: 244, column: 5, scope: !1241)
!1311 = distinct !{!1311, !1244, !1312, !794}
!1312 = !DILocation(line: 268, column: 5, scope: !1238)
!1313 = distinct !{!1313, !1217, !1314, !794}
!1314 = !DILocation(line: 269, column: 3, scope: !1176)
!1315 = !DILocation(line: 270, column: 1, scope: !1176)
