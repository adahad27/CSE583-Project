; ModuleID = 'cBench/consumer_jpeg_c/src/jidctred.c'
source_filename = "cBench/consumer_jpeg_c/src/jidctred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jpeg_decompress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }

; Function Attrs: noinline nounwind uwtable
define dso_local void @jpeg_idct_4x4(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #0 !dbg !46 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca ptr, align 8
  %20 = alloca ptr, align 8
  %21 = alloca ptr, align 8
  %22 = alloca ptr, align 8
  %23 = alloca ptr, align 8
  %24 = alloca i32, align 4
  %25 = alloca [32 x i32], align 16
  %26 = alloca i32, align 4
  %27 = alloca i8, align 1
  store ptr %0, ptr %6, align 8
    #dbg_declare(ptr %6, !463, !DIExpression(), !464)
  store ptr %1, ptr %7, align 8
    #dbg_declare(ptr %7, !465, !DIExpression(), !466)
  store ptr %2, ptr %8, align 8
    #dbg_declare(ptr %8, !467, !DIExpression(), !468)
  store ptr %3, ptr %9, align 8
    #dbg_declare(ptr %9, !469, !DIExpression(), !470)
  store i32 %4, ptr %10, align 4
    #dbg_declare(ptr %10, !471, !DIExpression(), !472)
    #dbg_declare(ptr %11, !473, !DIExpression(), !474)
    #dbg_declare(ptr %12, !475, !DIExpression(), !476)
    #dbg_declare(ptr %13, !477, !DIExpression(), !478)
    #dbg_declare(ptr %14, !479, !DIExpression(), !480)
    #dbg_declare(ptr %15, !481, !DIExpression(), !482)
    #dbg_declare(ptr %16, !483, !DIExpression(), !484)
    #dbg_declare(ptr %17, !485, !DIExpression(), !486)
    #dbg_declare(ptr %18, !487, !DIExpression(), !488)
    #dbg_declare(ptr %19, !489, !DIExpression(), !490)
    #dbg_declare(ptr %20, !491, !DIExpression(), !492)
    #dbg_declare(ptr %21, !493, !DIExpression(), !495)
    #dbg_declare(ptr %22, !496, !DIExpression(), !497)
    #dbg_declare(ptr %23, !498, !DIExpression(), !499)
  %28 = load ptr, ptr %6, align 8, !dbg !500
  %29 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %28, i32 0, i32 61, !dbg !500
  %30 = load ptr, ptr %29, align 8, !dbg !500
  %31 = getelementptr inbounds i8, ptr %30, i64 128, !dbg !500
  store ptr %31, ptr %23, align 8, !dbg !499
    #dbg_declare(ptr %24, !501, !DIExpression(), !502)
    #dbg_declare(ptr %25, !503, !DIExpression(), !507)
  %32 = load ptr, ptr %8, align 8, !dbg !508
  store ptr %32, ptr %19, align 8, !dbg !509
  %33 = load ptr, ptr %7, align 8, !dbg !510
  %34 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %33, i32 0, i32 20, !dbg !511
  %35 = load ptr, ptr %34, align 8, !dbg !511
  store ptr %35, ptr %20, align 8, !dbg !512
  %36 = getelementptr inbounds [32 x i32], ptr %25, i64 0, i64 0, !dbg !513
  store ptr %36, ptr %21, align 8, !dbg !514
  store i32 8, ptr %24, align 4, !dbg !515
  br label %37, !dbg !517

37:                                               ; preds = %228, %5
  %38 = load i32, ptr %24, align 4, !dbg !518
  %39 = icmp sgt i32 %38, 0, !dbg !520
  br i1 %39, label %40, label %237, !dbg !521

40:                                               ; preds = %37
  %41 = load i32, ptr %24, align 4, !dbg !522
  %42 = icmp eq i32 %41, 4, !dbg !525
  br i1 %42, label %43, label %44, !dbg !525

43:                                               ; preds = %40
  br label %228, !dbg !526

44:                                               ; preds = %40
  %45 = load ptr, ptr %19, align 8, !dbg !527
  %46 = getelementptr inbounds i16, ptr %45, i64 8, !dbg !527
  %47 = load i16, ptr %46, align 2, !dbg !527
  %48 = sext i16 %47 to i32, !dbg !527
  %49 = load ptr, ptr %19, align 8, !dbg !529
  %50 = getelementptr inbounds i16, ptr %49, i64 16, !dbg !529
  %51 = load i16, ptr %50, align 2, !dbg !529
  %52 = sext i16 %51 to i32, !dbg !529
  %53 = or i32 %48, %52, !dbg !530
  %54 = load ptr, ptr %19, align 8, !dbg !531
  %55 = getelementptr inbounds i16, ptr %54, i64 24, !dbg !531
  %56 = load i16, ptr %55, align 2, !dbg !531
  %57 = sext i16 %56 to i32, !dbg !531
  %58 = or i32 %53, %57, !dbg !532
  %59 = load ptr, ptr %19, align 8, !dbg !533
  %60 = getelementptr inbounds i16, ptr %59, i64 40, !dbg !533
  %61 = load i16, ptr %60, align 2, !dbg !533
  %62 = sext i16 %61 to i32, !dbg !533
  %63 = or i32 %58, %62, !dbg !534
  %64 = load ptr, ptr %19, align 8, !dbg !535
  %65 = getelementptr inbounds i16, ptr %64, i64 48, !dbg !535
  %66 = load i16, ptr %65, align 2, !dbg !535
  %67 = sext i16 %66 to i32, !dbg !535
  %68 = or i32 %63, %67, !dbg !536
  %69 = load ptr, ptr %19, align 8, !dbg !537
  %70 = getelementptr inbounds i16, ptr %69, i64 56, !dbg !537
  %71 = load i16, ptr %70, align 2, !dbg !537
  %72 = sext i16 %71 to i32, !dbg !537
  %73 = or i32 %68, %72, !dbg !538
  %74 = icmp eq i32 %73, 0, !dbg !539
  br i1 %74, label %75, label %97, !dbg !539

75:                                               ; preds = %44
    #dbg_declare(ptr %26, !540, !DIExpression(), !542)
  %76 = load ptr, ptr %19, align 8, !dbg !543
  %77 = getelementptr inbounds i16, ptr %76, i64 0, !dbg !543
  %78 = load i16, ptr %77, align 2, !dbg !543
  %79 = sext i16 %78 to i32, !dbg !543
  %80 = load ptr, ptr %20, align 8, !dbg !543
  %81 = getelementptr inbounds i32, ptr %80, i64 0, !dbg !543
  %82 = load i32, ptr %81, align 4, !dbg !543
  %83 = mul nsw i32 %79, %82, !dbg !543
  %84 = shl i32 %83, 2, !dbg !544
  store i32 %84, ptr %26, align 4, !dbg !542
  %85 = load i32, ptr %26, align 4, !dbg !545
  %86 = load ptr, ptr %21, align 8, !dbg !546
  %87 = getelementptr inbounds i32, ptr %86, i64 0, !dbg !546
  store i32 %85, ptr %87, align 4, !dbg !547
  %88 = load i32, ptr %26, align 4, !dbg !548
  %89 = load ptr, ptr %21, align 8, !dbg !549
  %90 = getelementptr inbounds i32, ptr %89, i64 8, !dbg !549
  store i32 %88, ptr %90, align 4, !dbg !550
  %91 = load i32, ptr %26, align 4, !dbg !551
  %92 = load ptr, ptr %21, align 8, !dbg !552
  %93 = getelementptr inbounds i32, ptr %92, i64 16, !dbg !552
  store i32 %91, ptr %93, align 4, !dbg !553
  %94 = load i32, ptr %26, align 4, !dbg !554
  %95 = load ptr, ptr %21, align 8, !dbg !555
  %96 = getelementptr inbounds i32, ptr %95, i64 24, !dbg !555
  store i32 %94, ptr %96, align 4, !dbg !556
  br label %228, !dbg !557

97:                                               ; preds = %44
  %98 = load ptr, ptr %19, align 8, !dbg !558
  %99 = getelementptr inbounds i16, ptr %98, i64 0, !dbg !558
  %100 = load i16, ptr %99, align 2, !dbg !558
  %101 = sext i16 %100 to i32, !dbg !558
  %102 = load ptr, ptr %20, align 8, !dbg !558
  %103 = getelementptr inbounds i32, ptr %102, i64 0, !dbg !558
  %104 = load i32, ptr %103, align 4, !dbg !558
  %105 = mul nsw i32 %101, %104, !dbg !558
  %106 = sext i32 %105 to i64, !dbg !558
  store i64 %106, ptr %11, align 8, !dbg !559
  %107 = load i64, ptr %11, align 8, !dbg !560
  %108 = shl i64 %107, 14, !dbg !560
  store i64 %108, ptr %11, align 8, !dbg !560
  %109 = load ptr, ptr %19, align 8, !dbg !561
  %110 = getelementptr inbounds i16, ptr %109, i64 16, !dbg !561
  %111 = load i16, ptr %110, align 2, !dbg !561
  %112 = sext i16 %111 to i32, !dbg !561
  %113 = load ptr, ptr %20, align 8, !dbg !561
  %114 = getelementptr inbounds i32, ptr %113, i64 16, !dbg !561
  %115 = load i32, ptr %114, align 4, !dbg !561
  %116 = mul nsw i32 %112, %115, !dbg !561
  %117 = sext i32 %116 to i64, !dbg !561
  store i64 %117, ptr %16, align 8, !dbg !562
  %118 = load ptr, ptr %19, align 8, !dbg !563
  %119 = getelementptr inbounds i16, ptr %118, i64 48, !dbg !563
  %120 = load i16, ptr %119, align 2, !dbg !563
  %121 = sext i16 %120 to i32, !dbg !563
  %122 = load ptr, ptr %20, align 8, !dbg !563
  %123 = getelementptr inbounds i32, ptr %122, i64 48, !dbg !563
  %124 = load i32, ptr %123, align 4, !dbg !563
  %125 = mul nsw i32 %121, %124, !dbg !563
  %126 = sext i32 %125 to i64, !dbg !563
  store i64 %126, ptr %17, align 8, !dbg !564
  %127 = load i64, ptr %16, align 8, !dbg !565
  %128 = mul nsw i64 %127, 15137, !dbg !565
  %129 = load i64, ptr %17, align 8, !dbg !566
  %130 = mul nsw i64 %129, -6270, !dbg !566
  %131 = add nsw i64 %128, %130, !dbg !567
  store i64 %131, ptr %12, align 8, !dbg !568
  %132 = load i64, ptr %11, align 8, !dbg !569
  %133 = load i64, ptr %12, align 8, !dbg !570
  %134 = add nsw i64 %132, %133, !dbg !571
  store i64 %134, ptr %13, align 8, !dbg !572
  %135 = load i64, ptr %11, align 8, !dbg !573
  %136 = load i64, ptr %12, align 8, !dbg !574
  %137 = sub nsw i64 %135, %136, !dbg !575
  store i64 %137, ptr %14, align 8, !dbg !576
  %138 = load ptr, ptr %19, align 8, !dbg !577
  %139 = getelementptr inbounds i16, ptr %138, i64 56, !dbg !577
  %140 = load i16, ptr %139, align 2, !dbg !577
  %141 = sext i16 %140 to i32, !dbg !577
  %142 = load ptr, ptr %20, align 8, !dbg !577
  %143 = getelementptr inbounds i32, ptr %142, i64 56, !dbg !577
  %144 = load i32, ptr %143, align 4, !dbg !577
  %145 = mul nsw i32 %141, %144, !dbg !577
  %146 = sext i32 %145 to i64, !dbg !577
  store i64 %146, ptr %15, align 8, !dbg !578
  %147 = load ptr, ptr %19, align 8, !dbg !579
  %148 = getelementptr inbounds i16, ptr %147, i64 40, !dbg !579
  %149 = load i16, ptr %148, align 2, !dbg !579
  %150 = sext i16 %149 to i32, !dbg !579
  %151 = load ptr, ptr %20, align 8, !dbg !579
  %152 = getelementptr inbounds i32, ptr %151, i64 40, !dbg !579
  %153 = load i32, ptr %152, align 4, !dbg !579
  %154 = mul nsw i32 %150, %153, !dbg !579
  %155 = sext i32 %154 to i64, !dbg !579
  store i64 %155, ptr %16, align 8, !dbg !580
  %156 = load ptr, ptr %19, align 8, !dbg !581
  %157 = getelementptr inbounds i16, ptr %156, i64 24, !dbg !581
  %158 = load i16, ptr %157, align 2, !dbg !581
  %159 = sext i16 %158 to i32, !dbg !581
  %160 = load ptr, ptr %20, align 8, !dbg !581
  %161 = getelementptr inbounds i32, ptr %160, i64 24, !dbg !581
  %162 = load i32, ptr %161, align 4, !dbg !581
  %163 = mul nsw i32 %159, %162, !dbg !581
  %164 = sext i32 %163 to i64, !dbg !581
  store i64 %164, ptr %17, align 8, !dbg !582
  %165 = load ptr, ptr %19, align 8, !dbg !583
  %166 = getelementptr inbounds i16, ptr %165, i64 8, !dbg !583
  %167 = load i16, ptr %166, align 2, !dbg !583
  %168 = sext i16 %167 to i32, !dbg !583
  %169 = load ptr, ptr %20, align 8, !dbg !583
  %170 = getelementptr inbounds i32, ptr %169, i64 8, !dbg !583
  %171 = load i32, ptr %170, align 4, !dbg !583
  %172 = mul nsw i32 %168, %171, !dbg !583
  %173 = sext i32 %172 to i64, !dbg !583
  store i64 %173, ptr %18, align 8, !dbg !584
  %174 = load i64, ptr %15, align 8, !dbg !585
  %175 = mul nsw i64 %174, -1730, !dbg !585
  %176 = load i64, ptr %16, align 8, !dbg !586
  %177 = mul nsw i64 %176, 11893, !dbg !586
  %178 = add nsw i64 %175, %177, !dbg !587
  %179 = load i64, ptr %17, align 8, !dbg !588
  %180 = mul nsw i64 %179, -17799, !dbg !588
  %181 = add nsw i64 %178, %180, !dbg !589
  %182 = load i64, ptr %18, align 8, !dbg !590
  %183 = mul nsw i64 %182, 8697, !dbg !590
  %184 = add nsw i64 %181, %183, !dbg !591
  store i64 %184, ptr %11, align 8, !dbg !592
  %185 = load i64, ptr %15, align 8, !dbg !593
  %186 = mul nsw i64 %185, -4176, !dbg !593
  %187 = load i64, ptr %16, align 8, !dbg !594
  %188 = mul nsw i64 %187, -4926, !dbg !594
  %189 = add nsw i64 %186, %188, !dbg !595
  %190 = load i64, ptr %17, align 8, !dbg !596
  %191 = mul nsw i64 %190, 7373, !dbg !596
  %192 = add nsw i64 %189, %191, !dbg !597
  %193 = load i64, ptr %18, align 8, !dbg !598
  %194 = mul nsw i64 %193, 20995, !dbg !598
  %195 = add nsw i64 %192, %194, !dbg !599
  store i64 %195, ptr %12, align 8, !dbg !600
  %196 = load i64, ptr %13, align 8, !dbg !601
  %197 = load i64, ptr %12, align 8, !dbg !601
  %198 = add nsw i64 %196, %197, !dbg !601
  %199 = add nsw i64 %198, 2048, !dbg !601
  %200 = ashr i64 %199, 12, !dbg !601
  %201 = trunc i64 %200 to i32, !dbg !602
  %202 = load ptr, ptr %21, align 8, !dbg !603
  %203 = getelementptr inbounds i32, ptr %202, i64 0, !dbg !603
  store i32 %201, ptr %203, align 4, !dbg !604
  %204 = load i64, ptr %13, align 8, !dbg !605
  %205 = load i64, ptr %12, align 8, !dbg !605
  %206 = sub nsw i64 %204, %205, !dbg !605
  %207 = add nsw i64 %206, 2048, !dbg !605
  %208 = ashr i64 %207, 12, !dbg !605
  %209 = trunc i64 %208 to i32, !dbg !606
  %210 = load ptr, ptr %21, align 8, !dbg !607
  %211 = getelementptr inbounds i32, ptr %210, i64 24, !dbg !607
  store i32 %209, ptr %211, align 4, !dbg !608
  %212 = load i64, ptr %14, align 8, !dbg !609
  %213 = load i64, ptr %11, align 8, !dbg !609
  %214 = add nsw i64 %212, %213, !dbg !609
  %215 = add nsw i64 %214, 2048, !dbg !609
  %216 = ashr i64 %215, 12, !dbg !609
  %217 = trunc i64 %216 to i32, !dbg !610
  %218 = load ptr, ptr %21, align 8, !dbg !611
  %219 = getelementptr inbounds i32, ptr %218, i64 8, !dbg !611
  store i32 %217, ptr %219, align 4, !dbg !612
  %220 = load i64, ptr %14, align 8, !dbg !613
  %221 = load i64, ptr %11, align 8, !dbg !613
  %222 = sub nsw i64 %220, %221, !dbg !613
  %223 = add nsw i64 %222, 2048, !dbg !613
  %224 = ashr i64 %223, 12, !dbg !613
  %225 = trunc i64 %224 to i32, !dbg !614
  %226 = load ptr, ptr %21, align 8, !dbg !615
  %227 = getelementptr inbounds i32, ptr %226, i64 16, !dbg !615
  store i32 %225, ptr %227, align 4, !dbg !616
  br label %228, !dbg !617

228:                                              ; preds = %97, %75, %43
  %229 = load ptr, ptr %19, align 8, !dbg !618
  %230 = getelementptr inbounds nuw i16, ptr %229, i32 1, !dbg !618
  store ptr %230, ptr %19, align 8, !dbg !618
  %231 = load ptr, ptr %20, align 8, !dbg !619
  %232 = getelementptr inbounds nuw i32, ptr %231, i32 1, !dbg !619
  store ptr %232, ptr %20, align 8, !dbg !619
  %233 = load ptr, ptr %21, align 8, !dbg !620
  %234 = getelementptr inbounds nuw i32, ptr %233, i32 1, !dbg !620
  store ptr %234, ptr %21, align 8, !dbg !620
  %235 = load i32, ptr %24, align 4, !dbg !621
  %236 = add nsw i32 %235, -1, !dbg !621
  store i32 %236, ptr %24, align 4, !dbg !621
  br label %37, !dbg !622, !llvm.loop !623

237:                                              ; preds = %37
  %238 = getelementptr inbounds [32 x i32], ptr %25, i64 0, i64 0, !dbg !626
  store ptr %238, ptr %21, align 8, !dbg !627
  store i32 0, ptr %24, align 4, !dbg !628
  br label %239, !dbg !630

239:                                              ; preds = %417, %237
  %240 = load i32, ptr %24, align 4, !dbg !631
  %241 = icmp slt i32 %240, 4, !dbg !633
  br i1 %241, label %242, label %420, !dbg !634

242:                                              ; preds = %239
  %243 = load ptr, ptr %9, align 8, !dbg !635
  %244 = load i32, ptr %24, align 4, !dbg !637
  %245 = sext i32 %244 to i64, !dbg !635
  %246 = getelementptr inbounds ptr, ptr %243, i64 %245, !dbg !635
  %247 = load ptr, ptr %246, align 8, !dbg !635
  %248 = load i32, ptr %10, align 4, !dbg !638
  %249 = zext i32 %248 to i64, !dbg !639
  %250 = getelementptr inbounds nuw i8, ptr %247, i64 %249, !dbg !639
  store ptr %250, ptr %22, align 8, !dbg !640
  %251 = load ptr, ptr %21, align 8, !dbg !641
  %252 = getelementptr inbounds i32, ptr %251, i64 1, !dbg !641
  %253 = load i32, ptr %252, align 4, !dbg !641
  %254 = load ptr, ptr %21, align 8, !dbg !643
  %255 = getelementptr inbounds i32, ptr %254, i64 2, !dbg !643
  %256 = load i32, ptr %255, align 4, !dbg !643
  %257 = or i32 %253, %256, !dbg !644
  %258 = load ptr, ptr %21, align 8, !dbg !645
  %259 = getelementptr inbounds i32, ptr %258, i64 3, !dbg !645
  %260 = load i32, ptr %259, align 4, !dbg !645
  %261 = or i32 %257, %260, !dbg !646
  %262 = load ptr, ptr %21, align 8, !dbg !647
  %263 = getelementptr inbounds i32, ptr %262, i64 5, !dbg !647
  %264 = load i32, ptr %263, align 4, !dbg !647
  %265 = or i32 %261, %264, !dbg !648
  %266 = load ptr, ptr %21, align 8, !dbg !649
  %267 = getelementptr inbounds i32, ptr %266, i64 6, !dbg !649
  %268 = load i32, ptr %267, align 4, !dbg !649
  %269 = or i32 %265, %268, !dbg !650
  %270 = load ptr, ptr %21, align 8, !dbg !651
  %271 = getelementptr inbounds i32, ptr %270, i64 7, !dbg !651
  %272 = load i32, ptr %271, align 4, !dbg !651
  %273 = or i32 %269, %272, !dbg !652
  %274 = icmp eq i32 %273, 0, !dbg !653
  br i1 %274, label %275, label %302, !dbg !653

275:                                              ; preds = %242
    #dbg_declare(ptr %27, !654, !DIExpression(), !656)
  %276 = load ptr, ptr %23, align 8, !dbg !657
  %277 = load ptr, ptr %21, align 8, !dbg !658
  %278 = getelementptr inbounds i32, ptr %277, i64 0, !dbg !658
  %279 = load i32, ptr %278, align 4, !dbg !658
  %280 = sext i32 %279 to i64, !dbg !658
  %281 = add nsw i64 %280, 16, !dbg !658
  %282 = ashr i64 %281, 5, !dbg !658
  %283 = trunc i64 %282 to i32, !dbg !659
  %284 = and i32 %283, 1023, !dbg !660
  %285 = sext i32 %284 to i64, !dbg !657
  %286 = getelementptr inbounds i8, ptr %276, i64 %285, !dbg !657
  %287 = load i8, ptr %286, align 1, !dbg !657
  store i8 %287, ptr %27, align 1, !dbg !656
  %288 = load i8, ptr %27, align 1, !dbg !661
  %289 = load ptr, ptr %22, align 8, !dbg !662
  %290 = getelementptr inbounds i8, ptr %289, i64 0, !dbg !662
  store i8 %288, ptr %290, align 1, !dbg !663
  %291 = load i8, ptr %27, align 1, !dbg !664
  %292 = load ptr, ptr %22, align 8, !dbg !665
  %293 = getelementptr inbounds i8, ptr %292, i64 1, !dbg !665
  store i8 %291, ptr %293, align 1, !dbg !666
  %294 = load i8, ptr %27, align 1, !dbg !667
  %295 = load ptr, ptr %22, align 8, !dbg !668
  %296 = getelementptr inbounds i8, ptr %295, i64 2, !dbg !668
  store i8 %294, ptr %296, align 1, !dbg !669
  %297 = load i8, ptr %27, align 1, !dbg !670
  %298 = load ptr, ptr %22, align 8, !dbg !671
  %299 = getelementptr inbounds i8, ptr %298, i64 3, !dbg !671
  store i8 %297, ptr %299, align 1, !dbg !672
  %300 = load ptr, ptr %21, align 8, !dbg !673
  %301 = getelementptr inbounds i32, ptr %300, i64 8, !dbg !673
  store ptr %301, ptr %21, align 8, !dbg !673
  br label %417, !dbg !674

302:                                              ; preds = %242
  %303 = load ptr, ptr %21, align 8, !dbg !675
  %304 = getelementptr inbounds i32, ptr %303, i64 0, !dbg !675
  %305 = load i32, ptr %304, align 4, !dbg !675
  %306 = sext i32 %305 to i64, !dbg !676
  %307 = shl i64 %306, 14, !dbg !677
  store i64 %307, ptr %11, align 8, !dbg !678
  %308 = load ptr, ptr %21, align 8, !dbg !679
  %309 = getelementptr inbounds i32, ptr %308, i64 2, !dbg !679
  %310 = load i32, ptr %309, align 4, !dbg !679
  %311 = sext i32 %310 to i64, !dbg !679
  %312 = mul nsw i64 %311, 15137, !dbg !679
  %313 = load ptr, ptr %21, align 8, !dbg !680
  %314 = getelementptr inbounds i32, ptr %313, i64 6, !dbg !680
  %315 = load i32, ptr %314, align 4, !dbg !680
  %316 = sext i32 %315 to i64, !dbg !680
  %317 = mul nsw i64 %316, -6270, !dbg !680
  %318 = add nsw i64 %312, %317, !dbg !681
  store i64 %318, ptr %12, align 8, !dbg !682
  %319 = load i64, ptr %11, align 8, !dbg !683
  %320 = load i64, ptr %12, align 8, !dbg !684
  %321 = add nsw i64 %319, %320, !dbg !685
  store i64 %321, ptr %13, align 8, !dbg !686
  %322 = load i64, ptr %11, align 8, !dbg !687
  %323 = load i64, ptr %12, align 8, !dbg !688
  %324 = sub nsw i64 %322, %323, !dbg !689
  store i64 %324, ptr %14, align 8, !dbg !690
  %325 = load ptr, ptr %21, align 8, !dbg !691
  %326 = getelementptr inbounds i32, ptr %325, i64 7, !dbg !691
  %327 = load i32, ptr %326, align 4, !dbg !691
  %328 = sext i32 %327 to i64, !dbg !692
  store i64 %328, ptr %15, align 8, !dbg !693
  %329 = load ptr, ptr %21, align 8, !dbg !694
  %330 = getelementptr inbounds i32, ptr %329, i64 5, !dbg !694
  %331 = load i32, ptr %330, align 4, !dbg !694
  %332 = sext i32 %331 to i64, !dbg !695
  store i64 %332, ptr %16, align 8, !dbg !696
  %333 = load ptr, ptr %21, align 8, !dbg !697
  %334 = getelementptr inbounds i32, ptr %333, i64 3, !dbg !697
  %335 = load i32, ptr %334, align 4, !dbg !697
  %336 = sext i32 %335 to i64, !dbg !698
  store i64 %336, ptr %17, align 8, !dbg !699
  %337 = load ptr, ptr %21, align 8, !dbg !700
  %338 = getelementptr inbounds i32, ptr %337, i64 1, !dbg !700
  %339 = load i32, ptr %338, align 4, !dbg !700
  %340 = sext i32 %339 to i64, !dbg !701
  store i64 %340, ptr %18, align 8, !dbg !702
  %341 = load i64, ptr %15, align 8, !dbg !703
  %342 = mul nsw i64 %341, -1730, !dbg !703
  %343 = load i64, ptr %16, align 8, !dbg !704
  %344 = mul nsw i64 %343, 11893, !dbg !704
  %345 = add nsw i64 %342, %344, !dbg !705
  %346 = load i64, ptr %17, align 8, !dbg !706
  %347 = mul nsw i64 %346, -17799, !dbg !706
  %348 = add nsw i64 %345, %347, !dbg !707
  %349 = load i64, ptr %18, align 8, !dbg !708
  %350 = mul nsw i64 %349, 8697, !dbg !708
  %351 = add nsw i64 %348, %350, !dbg !709
  store i64 %351, ptr %11, align 8, !dbg !710
  %352 = load i64, ptr %15, align 8, !dbg !711
  %353 = mul nsw i64 %352, -4176, !dbg !711
  %354 = load i64, ptr %16, align 8, !dbg !712
  %355 = mul nsw i64 %354, -4926, !dbg !712
  %356 = add nsw i64 %353, %355, !dbg !713
  %357 = load i64, ptr %17, align 8, !dbg !714
  %358 = mul nsw i64 %357, 7373, !dbg !714
  %359 = add nsw i64 %356, %358, !dbg !715
  %360 = load i64, ptr %18, align 8, !dbg !716
  %361 = mul nsw i64 %360, 20995, !dbg !716
  %362 = add nsw i64 %359, %361, !dbg !717
  store i64 %362, ptr %12, align 8, !dbg !718
  %363 = load ptr, ptr %23, align 8, !dbg !719
  %364 = load i64, ptr %13, align 8, !dbg !720
  %365 = load i64, ptr %12, align 8, !dbg !720
  %366 = add nsw i64 %364, %365, !dbg !720
  %367 = add nsw i64 %366, 262144, !dbg !720
  %368 = ashr i64 %367, 19, !dbg !720
  %369 = trunc i64 %368 to i32, !dbg !721
  %370 = and i32 %369, 1023, !dbg !722
  %371 = sext i32 %370 to i64, !dbg !719
  %372 = getelementptr inbounds i8, ptr %363, i64 %371, !dbg !719
  %373 = load i8, ptr %372, align 1, !dbg !719
  %374 = load ptr, ptr %22, align 8, !dbg !723
  %375 = getelementptr inbounds i8, ptr %374, i64 0, !dbg !723
  store i8 %373, ptr %375, align 1, !dbg !724
  %376 = load ptr, ptr %23, align 8, !dbg !725
  %377 = load i64, ptr %13, align 8, !dbg !726
  %378 = load i64, ptr %12, align 8, !dbg !726
  %379 = sub nsw i64 %377, %378, !dbg !726
  %380 = add nsw i64 %379, 262144, !dbg !726
  %381 = ashr i64 %380, 19, !dbg !726
  %382 = trunc i64 %381 to i32, !dbg !727
  %383 = and i32 %382, 1023, !dbg !728
  %384 = sext i32 %383 to i64, !dbg !725
  %385 = getelementptr inbounds i8, ptr %376, i64 %384, !dbg !725
  %386 = load i8, ptr %385, align 1, !dbg !725
  %387 = load ptr, ptr %22, align 8, !dbg !729
  %388 = getelementptr inbounds i8, ptr %387, i64 3, !dbg !729
  store i8 %386, ptr %388, align 1, !dbg !730
  %389 = load ptr, ptr %23, align 8, !dbg !731
  %390 = load i64, ptr %14, align 8, !dbg !732
  %391 = load i64, ptr %11, align 8, !dbg !732
  %392 = add nsw i64 %390, %391, !dbg !732
  %393 = add nsw i64 %392, 262144, !dbg !732
  %394 = ashr i64 %393, 19, !dbg !732
  %395 = trunc i64 %394 to i32, !dbg !733
  %396 = and i32 %395, 1023, !dbg !734
  %397 = sext i32 %396 to i64, !dbg !731
  %398 = getelementptr inbounds i8, ptr %389, i64 %397, !dbg !731
  %399 = load i8, ptr %398, align 1, !dbg !731
  %400 = load ptr, ptr %22, align 8, !dbg !735
  %401 = getelementptr inbounds i8, ptr %400, i64 1, !dbg !735
  store i8 %399, ptr %401, align 1, !dbg !736
  %402 = load ptr, ptr %23, align 8, !dbg !737
  %403 = load i64, ptr %14, align 8, !dbg !738
  %404 = load i64, ptr %11, align 8, !dbg !738
  %405 = sub nsw i64 %403, %404, !dbg !738
  %406 = add nsw i64 %405, 262144, !dbg !738
  %407 = ashr i64 %406, 19, !dbg !738
  %408 = trunc i64 %407 to i32, !dbg !739
  %409 = and i32 %408, 1023, !dbg !740
  %410 = sext i32 %409 to i64, !dbg !737
  %411 = getelementptr inbounds i8, ptr %402, i64 %410, !dbg !737
  %412 = load i8, ptr %411, align 1, !dbg !737
  %413 = load ptr, ptr %22, align 8, !dbg !741
  %414 = getelementptr inbounds i8, ptr %413, i64 2, !dbg !741
  store i8 %412, ptr %414, align 1, !dbg !742
  %415 = load ptr, ptr %21, align 8, !dbg !743
  %416 = getelementptr inbounds i32, ptr %415, i64 8, !dbg !743
  store ptr %416, ptr %21, align 8, !dbg !743
  br label %417, !dbg !744

417:                                              ; preds = %302, %275
  %418 = load i32, ptr %24, align 4, !dbg !745
  %419 = add nsw i32 %418, 1, !dbg !745
  store i32 %419, ptr %24, align 4, !dbg !745
  br label %239, !dbg !746, !llvm.loop !747

420:                                              ; preds = %239
  ret void, !dbg !749
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @jpeg_idct_2x2(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #0 !dbg !750 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  %19 = alloca i32, align 4
  %20 = alloca [16 x i32], align 16
  %21 = alloca i32, align 4
  %22 = alloca i8, align 1
  store ptr %0, ptr %6, align 8
    #dbg_declare(ptr %6, !751, !DIExpression(), !752)
  store ptr %1, ptr %7, align 8
    #dbg_declare(ptr %7, !753, !DIExpression(), !754)
  store ptr %2, ptr %8, align 8
    #dbg_declare(ptr %8, !755, !DIExpression(), !756)
  store ptr %3, ptr %9, align 8
    #dbg_declare(ptr %9, !757, !DIExpression(), !758)
  store i32 %4, ptr %10, align 4
    #dbg_declare(ptr %10, !759, !DIExpression(), !760)
    #dbg_declare(ptr %11, !761, !DIExpression(), !762)
    #dbg_declare(ptr %12, !763, !DIExpression(), !764)
    #dbg_declare(ptr %13, !765, !DIExpression(), !766)
    #dbg_declare(ptr %14, !767, !DIExpression(), !768)
    #dbg_declare(ptr %15, !769, !DIExpression(), !770)
    #dbg_declare(ptr %16, !771, !DIExpression(), !772)
    #dbg_declare(ptr %17, !773, !DIExpression(), !774)
    #dbg_declare(ptr %18, !775, !DIExpression(), !776)
  %23 = load ptr, ptr %6, align 8, !dbg !777
  %24 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %23, i32 0, i32 61, !dbg !777
  %25 = load ptr, ptr %24, align 8, !dbg !777
  %26 = getelementptr inbounds i8, ptr %25, i64 128, !dbg !777
  store ptr %26, ptr %18, align 8, !dbg !776
    #dbg_declare(ptr %19, !778, !DIExpression(), !779)
    #dbg_declare(ptr %20, !780, !DIExpression(), !782)
  %27 = load ptr, ptr %8, align 8, !dbg !783
  store ptr %27, ptr %14, align 8, !dbg !784
  %28 = load ptr, ptr %7, align 8, !dbg !785
  %29 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %28, i32 0, i32 20, !dbg !786
  %30 = load ptr, ptr %29, align 8, !dbg !786
  store ptr %30, ptr %15, align 8, !dbg !787
  %31 = getelementptr inbounds [16 x i32], ptr %20, i64 0, i64 0, !dbg !788
  store ptr %31, ptr %16, align 8, !dbg !789
  store i32 8, ptr %19, align 4, !dbg !790
  br label %32, !dbg !792

32:                                               ; preds = %160, %5
  %33 = load i32, ptr %19, align 4, !dbg !793
  %34 = icmp sgt i32 %33, 0, !dbg !795
  br i1 %34, label %35, label %169, !dbg !796

35:                                               ; preds = %32
  %36 = load i32, ptr %19, align 4, !dbg !797
  %37 = icmp eq i32 %36, 6, !dbg !800
  br i1 %37, label %44, label %38, !dbg !801

38:                                               ; preds = %35
  %39 = load i32, ptr %19, align 4, !dbg !802
  %40 = icmp eq i32 %39, 4, !dbg !803
  br i1 %40, label %44, label %41, !dbg !804

41:                                               ; preds = %38
  %42 = load i32, ptr %19, align 4, !dbg !805
  %43 = icmp eq i32 %42, 2, !dbg !806
  br i1 %43, label %44, label %45, !dbg !804

44:                                               ; preds = %41, %38, %35
  br label %160, !dbg !807

45:                                               ; preds = %41
  %46 = load ptr, ptr %14, align 8, !dbg !808
  %47 = getelementptr inbounds i16, ptr %46, i64 8, !dbg !808
  %48 = load i16, ptr %47, align 2, !dbg !808
  %49 = sext i16 %48 to i32, !dbg !808
  %50 = load ptr, ptr %14, align 8, !dbg !810
  %51 = getelementptr inbounds i16, ptr %50, i64 24, !dbg !810
  %52 = load i16, ptr %51, align 2, !dbg !810
  %53 = sext i16 %52 to i32, !dbg !810
  %54 = or i32 %49, %53, !dbg !811
  %55 = load ptr, ptr %14, align 8, !dbg !812
  %56 = getelementptr inbounds i16, ptr %55, i64 40, !dbg !812
  %57 = load i16, ptr %56, align 2, !dbg !812
  %58 = sext i16 %57 to i32, !dbg !812
  %59 = or i32 %54, %58, !dbg !813
  %60 = load ptr, ptr %14, align 8, !dbg !814
  %61 = getelementptr inbounds i16, ptr %60, i64 56, !dbg !814
  %62 = load i16, ptr %61, align 2, !dbg !814
  %63 = sext i16 %62 to i32, !dbg !814
  %64 = or i32 %59, %63, !dbg !815
  %65 = icmp eq i32 %64, 0, !dbg !816
  br i1 %65, label %66, label %82, !dbg !816

66:                                               ; preds = %45
    #dbg_declare(ptr %21, !817, !DIExpression(), !819)
  %67 = load ptr, ptr %14, align 8, !dbg !820
  %68 = getelementptr inbounds i16, ptr %67, i64 0, !dbg !820
  %69 = load i16, ptr %68, align 2, !dbg !820
  %70 = sext i16 %69 to i32, !dbg !820
  %71 = load ptr, ptr %15, align 8, !dbg !820
  %72 = getelementptr inbounds i32, ptr %71, i64 0, !dbg !820
  %73 = load i32, ptr %72, align 4, !dbg !820
  %74 = mul nsw i32 %70, %73, !dbg !820
  %75 = shl i32 %74, 2, !dbg !821
  store i32 %75, ptr %21, align 4, !dbg !819
  %76 = load i32, ptr %21, align 4, !dbg !822
  %77 = load ptr, ptr %16, align 8, !dbg !823
  %78 = getelementptr inbounds i32, ptr %77, i64 0, !dbg !823
  store i32 %76, ptr %78, align 4, !dbg !824
  %79 = load i32, ptr %21, align 4, !dbg !825
  %80 = load ptr, ptr %16, align 8, !dbg !826
  %81 = getelementptr inbounds i32, ptr %80, i64 8, !dbg !826
  store i32 %79, ptr %81, align 4, !dbg !827
  br label %160, !dbg !828

82:                                               ; preds = %45
  %83 = load ptr, ptr %14, align 8, !dbg !829
  %84 = getelementptr inbounds i16, ptr %83, i64 0, !dbg !829
  %85 = load i16, ptr %84, align 2, !dbg !829
  %86 = sext i16 %85 to i32, !dbg !829
  %87 = load ptr, ptr %15, align 8, !dbg !829
  %88 = getelementptr inbounds i32, ptr %87, i64 0, !dbg !829
  %89 = load i32, ptr %88, align 4, !dbg !829
  %90 = mul nsw i32 %86, %89, !dbg !829
  %91 = sext i32 %90 to i64, !dbg !829
  store i64 %91, ptr %13, align 8, !dbg !830
  %92 = load i64, ptr %13, align 8, !dbg !831
  %93 = shl i64 %92, 15, !dbg !832
  store i64 %93, ptr %12, align 8, !dbg !833
  %94 = load ptr, ptr %14, align 8, !dbg !834
  %95 = getelementptr inbounds i16, ptr %94, i64 56, !dbg !834
  %96 = load i16, ptr %95, align 2, !dbg !834
  %97 = sext i16 %96 to i32, !dbg !834
  %98 = load ptr, ptr %15, align 8, !dbg !834
  %99 = getelementptr inbounds i32, ptr %98, i64 56, !dbg !834
  %100 = load i32, ptr %99, align 4, !dbg !834
  %101 = mul nsw i32 %97, %100, !dbg !834
  %102 = sext i32 %101 to i64, !dbg !834
  store i64 %102, ptr %13, align 8, !dbg !835
  %103 = load i64, ptr %13, align 8, !dbg !836
  %104 = mul nsw i64 %103, -5906, !dbg !836
  store i64 %104, ptr %11, align 8, !dbg !837
  %105 = load ptr, ptr %14, align 8, !dbg !838
  %106 = getelementptr inbounds i16, ptr %105, i64 40, !dbg !838
  %107 = load i16, ptr %106, align 2, !dbg !838
  %108 = sext i16 %107 to i32, !dbg !838
  %109 = load ptr, ptr %15, align 8, !dbg !838
  %110 = getelementptr inbounds i32, ptr %109, i64 40, !dbg !838
  %111 = load i32, ptr %110, align 4, !dbg !838
  %112 = mul nsw i32 %108, %111, !dbg !838
  %113 = sext i32 %112 to i64, !dbg !838
  store i64 %113, ptr %13, align 8, !dbg !839
  %114 = load i64, ptr %13, align 8, !dbg !840
  %115 = mul nsw i64 %114, 6967, !dbg !840
  %116 = load i64, ptr %11, align 8, !dbg !841
  %117 = add nsw i64 %116, %115, !dbg !841
  store i64 %117, ptr %11, align 8, !dbg !841
  %118 = load ptr, ptr %14, align 8, !dbg !842
  %119 = getelementptr inbounds i16, ptr %118, i64 24, !dbg !842
  %120 = load i16, ptr %119, align 2, !dbg !842
  %121 = sext i16 %120 to i32, !dbg !842
  %122 = load ptr, ptr %15, align 8, !dbg !842
  %123 = getelementptr inbounds i32, ptr %122, i64 24, !dbg !842
  %124 = load i32, ptr %123, align 4, !dbg !842
  %125 = mul nsw i32 %121, %124, !dbg !842
  %126 = sext i32 %125 to i64, !dbg !842
  store i64 %126, ptr %13, align 8, !dbg !843
  %127 = load i64, ptr %13, align 8, !dbg !844
  %128 = mul nsw i64 %127, -10426, !dbg !844
  %129 = load i64, ptr %11, align 8, !dbg !845
  %130 = add nsw i64 %129, %128, !dbg !845
  store i64 %130, ptr %11, align 8, !dbg !845
  %131 = load ptr, ptr %14, align 8, !dbg !846
  %132 = getelementptr inbounds i16, ptr %131, i64 8, !dbg !846
  %133 = load i16, ptr %132, align 2, !dbg !846
  %134 = sext i16 %133 to i32, !dbg !846
  %135 = load ptr, ptr %15, align 8, !dbg !846
  %136 = getelementptr inbounds i32, ptr %135, i64 8, !dbg !846
  %137 = load i32, ptr %136, align 4, !dbg !846
  %138 = mul nsw i32 %134, %137, !dbg !846
  %139 = sext i32 %138 to i64, !dbg !846
  store i64 %139, ptr %13, align 8, !dbg !847
  %140 = load i64, ptr %13, align 8, !dbg !848
  %141 = mul nsw i64 %140, 29692, !dbg !848
  %142 = load i64, ptr %11, align 8, !dbg !849
  %143 = add nsw i64 %142, %141, !dbg !849
  store i64 %143, ptr %11, align 8, !dbg !849
  %144 = load i64, ptr %12, align 8, !dbg !850
  %145 = load i64, ptr %11, align 8, !dbg !850
  %146 = add nsw i64 %144, %145, !dbg !850
  %147 = add nsw i64 %146, 4096, !dbg !850
  %148 = ashr i64 %147, 13, !dbg !850
  %149 = trunc i64 %148 to i32, !dbg !851
  %150 = load ptr, ptr %16, align 8, !dbg !852
  %151 = getelementptr inbounds i32, ptr %150, i64 0, !dbg !852
  store i32 %149, ptr %151, align 4, !dbg !853
  %152 = load i64, ptr %12, align 8, !dbg !854
  %153 = load i64, ptr %11, align 8, !dbg !854
  %154 = sub nsw i64 %152, %153, !dbg !854
  %155 = add nsw i64 %154, 4096, !dbg !854
  %156 = ashr i64 %155, 13, !dbg !854
  %157 = trunc i64 %156 to i32, !dbg !855
  %158 = load ptr, ptr %16, align 8, !dbg !856
  %159 = getelementptr inbounds i32, ptr %158, i64 8, !dbg !856
  store i32 %157, ptr %159, align 4, !dbg !857
  br label %160, !dbg !858

160:                                              ; preds = %82, %66, %44
  %161 = load ptr, ptr %14, align 8, !dbg !859
  %162 = getelementptr inbounds nuw i16, ptr %161, i32 1, !dbg !859
  store ptr %162, ptr %14, align 8, !dbg !859
  %163 = load ptr, ptr %15, align 8, !dbg !860
  %164 = getelementptr inbounds nuw i32, ptr %163, i32 1, !dbg !860
  store ptr %164, ptr %15, align 8, !dbg !860
  %165 = load ptr, ptr %16, align 8, !dbg !861
  %166 = getelementptr inbounds nuw i32, ptr %165, i32 1, !dbg !861
  store ptr %166, ptr %16, align 8, !dbg !861
  %167 = load i32, ptr %19, align 4, !dbg !862
  %168 = add nsw i32 %167, -1, !dbg !862
  store i32 %168, ptr %19, align 4, !dbg !862
  br label %32, !dbg !863, !llvm.loop !864

169:                                              ; preds = %32
  %170 = getelementptr inbounds [16 x i32], ptr %20, i64 0, i64 0, !dbg !866
  store ptr %170, ptr %16, align 8, !dbg !867
  store i32 0, ptr %19, align 4, !dbg !868
  br label %171, !dbg !870

171:                                              ; preds = %277, %169
  %172 = load i32, ptr %19, align 4, !dbg !871
  %173 = icmp slt i32 %172, 2, !dbg !873
  br i1 %173, label %174, label %280, !dbg !874

174:                                              ; preds = %171
  %175 = load ptr, ptr %9, align 8, !dbg !875
  %176 = load i32, ptr %19, align 4, !dbg !877
  %177 = sext i32 %176 to i64, !dbg !875
  %178 = getelementptr inbounds ptr, ptr %175, i64 %177, !dbg !875
  %179 = load ptr, ptr %178, align 8, !dbg !875
  %180 = load i32, ptr %10, align 4, !dbg !878
  %181 = zext i32 %180 to i64, !dbg !879
  %182 = getelementptr inbounds nuw i8, ptr %179, i64 %181, !dbg !879
  store ptr %182, ptr %17, align 8, !dbg !880
  %183 = load ptr, ptr %16, align 8, !dbg !881
  %184 = getelementptr inbounds i32, ptr %183, i64 1, !dbg !881
  %185 = load i32, ptr %184, align 4, !dbg !881
  %186 = load ptr, ptr %16, align 8, !dbg !883
  %187 = getelementptr inbounds i32, ptr %186, i64 3, !dbg !883
  %188 = load i32, ptr %187, align 4, !dbg !883
  %189 = or i32 %185, %188, !dbg !884
  %190 = load ptr, ptr %16, align 8, !dbg !885
  %191 = getelementptr inbounds i32, ptr %190, i64 5, !dbg !885
  %192 = load i32, ptr %191, align 4, !dbg !885
  %193 = or i32 %189, %192, !dbg !886
  %194 = load ptr, ptr %16, align 8, !dbg !887
  %195 = getelementptr inbounds i32, ptr %194, i64 7, !dbg !887
  %196 = load i32, ptr %195, align 4, !dbg !887
  %197 = or i32 %193, %196, !dbg !888
  %198 = icmp eq i32 %197, 0, !dbg !889
  br i1 %198, label %199, label %220, !dbg !889

199:                                              ; preds = %174
    #dbg_declare(ptr %22, !890, !DIExpression(), !892)
  %200 = load ptr, ptr %18, align 8, !dbg !893
  %201 = load ptr, ptr %16, align 8, !dbg !894
  %202 = getelementptr inbounds i32, ptr %201, i64 0, !dbg !894
  %203 = load i32, ptr %202, align 4, !dbg !894
  %204 = sext i32 %203 to i64, !dbg !894
  %205 = add nsw i64 %204, 16, !dbg !894
  %206 = ashr i64 %205, 5, !dbg !894
  %207 = trunc i64 %206 to i32, !dbg !895
  %208 = and i32 %207, 1023, !dbg !896
  %209 = sext i32 %208 to i64, !dbg !893
  %210 = getelementptr inbounds i8, ptr %200, i64 %209, !dbg !893
  %211 = load i8, ptr %210, align 1, !dbg !893
  store i8 %211, ptr %22, align 1, !dbg !892
  %212 = load i8, ptr %22, align 1, !dbg !897
  %213 = load ptr, ptr %17, align 8, !dbg !898
  %214 = getelementptr inbounds i8, ptr %213, i64 0, !dbg !898
  store i8 %212, ptr %214, align 1, !dbg !899
  %215 = load i8, ptr %22, align 1, !dbg !900
  %216 = load ptr, ptr %17, align 8, !dbg !901
  %217 = getelementptr inbounds i8, ptr %216, i64 1, !dbg !901
  store i8 %215, ptr %217, align 1, !dbg !902
  %218 = load ptr, ptr %16, align 8, !dbg !903
  %219 = getelementptr inbounds i32, ptr %218, i64 8, !dbg !903
  store ptr %219, ptr %16, align 8, !dbg !903
  br label %277, !dbg !904

220:                                              ; preds = %174
  %221 = load ptr, ptr %16, align 8, !dbg !905
  %222 = getelementptr inbounds i32, ptr %221, i64 0, !dbg !905
  %223 = load i32, ptr %222, align 4, !dbg !905
  %224 = sext i32 %223 to i64, !dbg !906
  %225 = shl i64 %224, 15, !dbg !907
  store i64 %225, ptr %12, align 8, !dbg !908
  %226 = load ptr, ptr %16, align 8, !dbg !909
  %227 = getelementptr inbounds i32, ptr %226, i64 7, !dbg !909
  %228 = load i32, ptr %227, align 4, !dbg !909
  %229 = sext i32 %228 to i64, !dbg !909
  %230 = mul nsw i64 %229, -5906, !dbg !909
  %231 = load ptr, ptr %16, align 8, !dbg !910
  %232 = getelementptr inbounds i32, ptr %231, i64 5, !dbg !910
  %233 = load i32, ptr %232, align 4, !dbg !910
  %234 = sext i32 %233 to i64, !dbg !910
  %235 = mul nsw i64 %234, 6967, !dbg !910
  %236 = add nsw i64 %230, %235, !dbg !911
  %237 = load ptr, ptr %16, align 8, !dbg !912
  %238 = getelementptr inbounds i32, ptr %237, i64 3, !dbg !912
  %239 = load i32, ptr %238, align 4, !dbg !912
  %240 = sext i32 %239 to i64, !dbg !912
  %241 = mul nsw i64 %240, -10426, !dbg !912
  %242 = add nsw i64 %236, %241, !dbg !913
  %243 = load ptr, ptr %16, align 8, !dbg !914
  %244 = getelementptr inbounds i32, ptr %243, i64 1, !dbg !914
  %245 = load i32, ptr %244, align 4, !dbg !914
  %246 = sext i32 %245 to i64, !dbg !914
  %247 = mul nsw i64 %246, 29692, !dbg !914
  %248 = add nsw i64 %242, %247, !dbg !915
  store i64 %248, ptr %11, align 8, !dbg !916
  %249 = load ptr, ptr %18, align 8, !dbg !917
  %250 = load i64, ptr %12, align 8, !dbg !918
  %251 = load i64, ptr %11, align 8, !dbg !918
  %252 = add nsw i64 %250, %251, !dbg !918
  %253 = add nsw i64 %252, 524288, !dbg !918
  %254 = ashr i64 %253, 20, !dbg !918
  %255 = trunc i64 %254 to i32, !dbg !919
  %256 = and i32 %255, 1023, !dbg !920
  %257 = sext i32 %256 to i64, !dbg !917
  %258 = getelementptr inbounds i8, ptr %249, i64 %257, !dbg !917
  %259 = load i8, ptr %258, align 1, !dbg !917
  %260 = load ptr, ptr %17, align 8, !dbg !921
  %261 = getelementptr inbounds i8, ptr %260, i64 0, !dbg !921
  store i8 %259, ptr %261, align 1, !dbg !922
  %262 = load ptr, ptr %18, align 8, !dbg !923
  %263 = load i64, ptr %12, align 8, !dbg !924
  %264 = load i64, ptr %11, align 8, !dbg !924
  %265 = sub nsw i64 %263, %264, !dbg !924
  %266 = add nsw i64 %265, 524288, !dbg !924
  %267 = ashr i64 %266, 20, !dbg !924
  %268 = trunc i64 %267 to i32, !dbg !925
  %269 = and i32 %268, 1023, !dbg !926
  %270 = sext i32 %269 to i64, !dbg !923
  %271 = getelementptr inbounds i8, ptr %262, i64 %270, !dbg !923
  %272 = load i8, ptr %271, align 1, !dbg !923
  %273 = load ptr, ptr %17, align 8, !dbg !927
  %274 = getelementptr inbounds i8, ptr %273, i64 1, !dbg !927
  store i8 %272, ptr %274, align 1, !dbg !928
  %275 = load ptr, ptr %16, align 8, !dbg !929
  %276 = getelementptr inbounds i32, ptr %275, i64 8, !dbg !929
  store ptr %276, ptr %16, align 8, !dbg !929
  br label %277, !dbg !930

277:                                              ; preds = %220, %199
  %278 = load i32, ptr %19, align 4, !dbg !931
  %279 = add nsw i32 %278, 1, !dbg !931
  store i32 %279, ptr %19, align 4, !dbg !931
  br label %171, !dbg !932, !llvm.loop !933

280:                                              ; preds = %171
  ret void, !dbg !935
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @jpeg_idct_1x1(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #0 !dbg !936 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8
    #dbg_declare(ptr %6, !937, !DIExpression(), !938)
  store ptr %1, ptr %7, align 8
    #dbg_declare(ptr %7, !939, !DIExpression(), !940)
  store ptr %2, ptr %8, align 8
    #dbg_declare(ptr %8, !941, !DIExpression(), !942)
  store ptr %3, ptr %9, align 8
    #dbg_declare(ptr %9, !943, !DIExpression(), !944)
  store i32 %4, ptr %10, align 4
    #dbg_declare(ptr %10, !945, !DIExpression(), !946)
    #dbg_declare(ptr %11, !947, !DIExpression(), !948)
    #dbg_declare(ptr %12, !949, !DIExpression(), !950)
    #dbg_declare(ptr %13, !951, !DIExpression(), !952)
  %14 = load ptr, ptr %6, align 8, !dbg !953
  %15 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %14, i32 0, i32 61, !dbg !953
  %16 = load ptr, ptr %15, align 8, !dbg !953
  %17 = getelementptr inbounds i8, ptr %16, i64 128, !dbg !953
  store ptr %17, ptr %13, align 8, !dbg !952
  %18 = load ptr, ptr %7, align 8, !dbg !954
  %19 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %18, i32 0, i32 20, !dbg !955
  %20 = load ptr, ptr %19, align 8, !dbg !955
  store ptr %20, ptr %12, align 8, !dbg !956
  %21 = load ptr, ptr %8, align 8, !dbg !957
  %22 = getelementptr inbounds i16, ptr %21, i64 0, !dbg !957
  %23 = load i16, ptr %22, align 2, !dbg !957
  %24 = sext i16 %23 to i32, !dbg !957
  %25 = load ptr, ptr %12, align 8, !dbg !957
  %26 = getelementptr inbounds i32, ptr %25, i64 0, !dbg !957
  %27 = load i32, ptr %26, align 4, !dbg !957
  %28 = mul nsw i32 %24, %27, !dbg !957
  store i32 %28, ptr %11, align 4, !dbg !958
  %29 = load i32, ptr %11, align 4, !dbg !959
  %30 = sext i32 %29 to i64, !dbg !959
  %31 = add nsw i64 %30, 4, !dbg !959
  %32 = ashr i64 %31, 3, !dbg !959
  %33 = trunc i64 %32 to i32, !dbg !960
  store i32 %33, ptr %11, align 4, !dbg !961
  %34 = load ptr, ptr %13, align 8, !dbg !962
  %35 = load i32, ptr %11, align 4, !dbg !963
  %36 = and i32 %35, 1023, !dbg !964
  %37 = sext i32 %36 to i64, !dbg !962
  %38 = getelementptr inbounds i8, ptr %34, i64 %37, !dbg !962
  %39 = load i8, ptr %38, align 1, !dbg !962
  %40 = load ptr, ptr %9, align 8, !dbg !965
  %41 = getelementptr inbounds ptr, ptr %40, i64 0, !dbg !965
  %42 = load ptr, ptr %41, align 8, !dbg !965
  %43 = load i32, ptr %10, align 4, !dbg !966
  %44 = zext i32 %43 to i64, !dbg !965
  %45 = getelementptr inbounds nuw i8, ptr %42, i64 %44, !dbg !965
  store i8 %39, ptr %45, align 1, !dbg !967
  ret void, !dbg !968
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !30, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jidctred.c", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "239dcdd901a7e662b456edae7bc7d272")
!2 = !{!3, !13, !18, !23}
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
!30 = !{!31, !32, !35, !34}
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "ISLOW_MULT_TYPE", file: !33, line: 56, baseType: !34)
!33 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jdct.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "18978d93cfb1aabf5618c3caa5dbcf5a")
!34 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT32", file: !36, line: 161, baseType: !37)
!36 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jmorecfg.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "56a0eda58fafa6bdd5498f702a998c09")
!37 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!38 = !{i32 7, !"Dwarf Version", i32 5}
!39 = !{i32 2, !"Debug Info Version", i32 3}
!40 = !{i32 1, !"wchar_size", i32 4}
!41 = !{i32 8, !"PIC Level", i32 2}
!42 = !{i32 7, !"PIE Level", i32 2}
!43 = !{i32 7, !"uwtable", i32 2}
!44 = !{i32 7, !"frame-pointer", i32 2}
!45 = !{!"clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)"}
!46 = distinct !DISubprogram(name: "jpeg_idct_4x4", scope: !1, file: !1, line: 118, type: !47, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !462)
!47 = !DISubroutineType(types: !48)
!48 = !{null, !49, !278, !460, !83, !89}
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "j_decompress_ptr", file: !4, line: 250, baseType: !50)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_decompress_struct", file: !4, line: 394, size: 4928, elements: !52)
!52 = !{!53, !177, !178, !179, !180, !181, !207, !208, !209, !210, !212, !213, !214, !215, !217, !218, !219, !221, !222, !223, !224, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !246, !259, !275, !276, !277, !303, !304, !305, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !327, !328, !329, !330, !334, !335, !336, !337, !338, !339, !346, !360, !378, !387, !397, !412, !421, !430, !437, !446}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !51, file: !4, line: 395, baseType: !54, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_error_mgr", file: !4, line: 618, size: 1344, elements: !56)
!56 = !{!57, !145, !146, !147, !153, !154, !155, !166, !167, !168, !173, !174, !175, !176}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "error_exit", scope: !55, file: !4, line: 620, baseType: !58, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DISubroutineType(types: !60)
!60 = !{null, !61}
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "j_common_ptr", file: !4, line: 248, baseType: !62)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_common_struct", file: !4, line: 240, size: 256, elements: !64)
!64 = !{!65, !66, !134, !143, !144}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !63, file: !4, line: 241, baseType: !54, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !63, file: !4, line: 241, baseType: !67, size: 64, offset: 64)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_memory_mgr", file: !4, line: 731, size: 768, elements: !69)
!69 = !{!70, !78, !79, !90, !104, !112, !119, !120, !124, !128, !132, !133}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_small", scope: !68, file: !4, line: 733, baseType: !71, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DISubroutineType(types: !73)
!73 = !{!74, !61, !34, !75}
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !76, line: 18, baseType: !77)
!76 = !DIFile(filename: "/usr/local/lib/clang/20/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!77 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_large", scope: !68, file: !4, line: 735, baseType: !71, size: 64, offset: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_sarray", scope: !68, file: !4, line: 737, baseType: !80, size: 64, offset: 128)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DISubroutineType(types: !82)
!82 = !{!83, !61, !34, !89, !89}
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPARRAY", file: !4, line: 67, baseType: !84)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPROW", file: !4, line: 66, baseType: !86)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPLE", file: !36, line: 59, baseType: !88)
!88 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "JDIMENSION", file: !36, line: 171, baseType: !5)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_barray", scope: !68, file: !4, line: 740, baseType: !91, size: 64, offset: 192)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = !DISubroutineType(types: !93)
!93 = !{!94, !61, !34, !89, !89}
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "JBLOCKARRAY", file: !4, line: 72, baseType: !95)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "JBLOCKROW", file: !4, line: 71, baseType: !97)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "JBLOCK", file: !4, line: 70, baseType: !99)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 1024, elements: !102)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "JCOEF", file: !36, line: 99, baseType: !101)
!101 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!102 = !{!103}
!103 = !DISubrange(count: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "request_virt_sarray", scope: !68, file: !4, line: 743, baseType: !105, size: 64, offset: 256)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = !DISubroutineType(types: !107)
!107 = !{!108, !61, !34, !111, !89, !89, !89}
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "jvirt_sarray_ptr", file: !4, line: 727, baseType: !109)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DICompositeType(tag: DW_TAG_structure_type, name: "jvirt_sarray_control", file: !4, line: 727, flags: DIFlagFwdDecl)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "boolean", file: !36, line: 227, baseType: !34)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "request_virt_barray", scope: !68, file: !4, line: 749, baseType: !113, size: 64, offset: 320)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = !DISubroutineType(types: !115)
!115 = !{!116, !61, !34, !111, !89, !89, !89}
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "jvirt_barray_ptr", file: !4, line: 728, baseType: !117)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = !DICompositeType(tag: DW_TAG_structure_type, name: "jvirt_barray_control", file: !4, line: 728, flags: DIFlagFwdDecl)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "realize_virt_arrays", scope: !68, file: !4, line: 755, baseType: !58, size: 64, offset: 384)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "access_virt_sarray", scope: !68, file: !4, line: 756, baseType: !121, size: 64, offset: 448)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DISubroutineType(types: !123)
!123 = !{!83, !61, !108, !89, !89, !111}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "access_virt_barray", scope: !68, file: !4, line: 761, baseType: !125, size: 64, offset: 512)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DISubroutineType(types: !127)
!127 = !{!94, !61, !116, !89, !89, !111}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "free_pool", scope: !68, file: !4, line: 766, baseType: !129, size: 64, offset: 576)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = !DISubroutineType(types: !131)
!131 = !{null, !61, !34}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "self_destruct", scope: !68, file: !4, line: 767, baseType: !58, size: 64, offset: 640)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "max_memory_to_use", scope: !68, file: !4, line: 774, baseType: !37, size: 64, offset: 704)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "progress", scope: !63, file: !4, line: 241, baseType: !135, size: 64, offset: 128)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_progress_mgr", file: !4, line: 676, size: 256, elements: !137)
!137 = !{!138, !139, !140, !141, !142}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "progress_monitor", scope: !136, file: !4, line: 677, baseType: !58, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "pass_counter", scope: !136, file: !4, line: 679, baseType: !37, size: 64, offset: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "pass_limit", scope: !136, file: !4, line: 680, baseType: !37, size: 64, offset: 128)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "completed_passes", scope: !136, file: !4, line: 681, baseType: !34, size: 32, offset: 192)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "total_passes", scope: !136, file: !4, line: 682, baseType: !34, size: 32, offset: 224)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "is_decompressor", scope: !63, file: !4, line: 241, baseType: !111, size: 32, offset: 192)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "global_state", scope: !63, file: !4, line: 241, baseType: !34, size: 32, offset: 224)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "emit_message", scope: !55, file: !4, line: 622, baseType: !129, size: 64, offset: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "output_message", scope: !55, file: !4, line: 624, baseType: !58, size: 64, offset: 128)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "format_message", scope: !55, file: !4, line: 626, baseType: !148, size: 64, offset: 192)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!149 = !DISubroutineType(types: !150)
!150 = !{null, !61, !151}
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "reset_error_mgr", scope: !55, file: !4, line: 629, baseType: !58, size: 64, offset: 256)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "msg_code", scope: !55, file: !4, line: 634, baseType: !34, size: 32, offset: 320)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "msg_parm", scope: !55, file: !4, line: 639, baseType: !156, size: 640, offset: 352)
!156 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !55, file: !4, line: 636, size: 640, elements: !157)
!157 = !{!158, !162}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !156, file: !4, line: 637, baseType: !159, size: 256)
!159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 256, elements: !160)
!160 = !{!161}
!161 = !DISubrange(count: 8)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !156, file: !4, line: 638, baseType: !163, size: 640)
!163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 640, elements: !164)
!164 = !{!165}
!165 = !DISubrange(count: 80)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "trace_level", scope: !55, file: !4, line: 643, baseType: !34, size: 32, offset: 992)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "num_warnings", scope: !55, file: !4, line: 651, baseType: !37, size: 64, offset: 1024)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "jpeg_message_table", scope: !55, file: !4, line: 663, baseType: !169, size: 64, offset: 1088)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !171)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !152)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "last_jpeg_message", scope: !55, file: !4, line: 664, baseType: !34, size: 32, offset: 1152)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "addon_message_table", scope: !55, file: !4, line: 668, baseType: !169, size: 64, offset: 1216)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "first_addon_message", scope: !55, file: !4, line: 669, baseType: !34, size: 32, offset: 1280)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "last_addon_message", scope: !55, file: !4, line: 670, baseType: !34, size: 32, offset: 1312)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !51, file: !4, line: 395, baseType: !67, size: 64, offset: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "progress", scope: !51, file: !4, line: 395, baseType: !135, size: 64, offset: 128)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "is_decompressor", scope: !51, file: !4, line: 395, baseType: !111, size: 32, offset: 192)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "global_state", scope: !51, file: !4, line: 395, baseType: !34, size: 32, offset: 224)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !51, file: !4, line: 398, baseType: !182, size: 64, offset: 256)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_source_mgr", file: !4, line: 700, size: 448, elements: !184)
!184 = !{!185, !189, !190, !194, !198, !202, !206}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "next_input_byte", scope: !183, file: !4, line: 701, baseType: !186, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !188)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "JOCTET", file: !36, line: 110, baseType: !88)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_in_buffer", scope: !183, file: !4, line: 702, baseType: !75, size: 64, offset: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "init_source", scope: !183, file: !4, line: 704, baseType: !191, size: 64, offset: 128)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DISubroutineType(types: !193)
!193 = !{null, !49}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "fill_input_buffer", scope: !183, file: !4, line: 705, baseType: !195, size: 64, offset: 192)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = !DISubroutineType(types: !197)
!197 = !{!111, !49}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "skip_input_data", scope: !183, file: !4, line: 706, baseType: !199, size: 64, offset: 256)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = !DISubroutineType(types: !201)
!201 = !{null, !49, !37}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "resync_to_restart", scope: !183, file: !4, line: 707, baseType: !203, size: 64, offset: 320)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = !DISubroutineType(types: !205)
!205 = !{!111, !49, !34}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "term_source", scope: !183, file: !4, line: 708, baseType: !191, size: 64, offset: 384)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "image_width", scope: !51, file: !4, line: 403, baseType: !89, size: 32, offset: 320)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "image_height", scope: !51, file: !4, line: 404, baseType: !89, size: 32, offset: 352)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "num_components", scope: !51, file: !4, line: 405, baseType: !34, size: 32, offset: 384)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "jpeg_color_space", scope: !51, file: !4, line: 406, baseType: !211, size: 32, offset: 416)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_COLOR_SPACE", file: !4, line: 201, baseType: !3)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "out_color_space", scope: !51, file: !4, line: 413, baseType: !211, size: 32, offset: 448)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "scale_num", scope: !51, file: !4, line: 415, baseType: !5, size: 32, offset: 480)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "scale_denom", scope: !51, file: !4, line: 415, baseType: !5, size: 32, offset: 512)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "output_gamma", scope: !51, file: !4, line: 417, baseType: !216, size: 64, offset: 576)
!216 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "buffered_image", scope: !51, file: !4, line: 419, baseType: !111, size: 32, offset: 640)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "raw_data_out", scope: !51, file: !4, line: 420, baseType: !111, size: 32, offset: 672)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "dct_method", scope: !51, file: !4, line: 422, baseType: !220, size: 32, offset: 704)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_DCT_METHOD", file: !4, line: 209, baseType: !13)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "do_fancy_upsampling", scope: !51, file: !4, line: 423, baseType: !111, size: 32, offset: 736)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "do_block_smoothing", scope: !51, file: !4, line: 424, baseType: !111, size: 32, offset: 768)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "quantize_colors", scope: !51, file: !4, line: 426, baseType: !111, size: 32, offset: 800)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "dither_mode", scope: !51, file: !4, line: 428, baseType: !225, size: 32, offset: 832)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_DITHER_MODE", file: !4, line: 224, baseType: !18)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "two_pass_quantize", scope: !51, file: !4, line: 429, baseType: !111, size: 32, offset: 864)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "desired_number_of_colors", scope: !51, file: !4, line: 430, baseType: !34, size: 32, offset: 896)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "enable_1pass_quant", scope: !51, file: !4, line: 432, baseType: !111, size: 32, offset: 928)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "enable_external_quant", scope: !51, file: !4, line: 433, baseType: !111, size: 32, offset: 960)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "enable_2pass_quant", scope: !51, file: !4, line: 434, baseType: !111, size: 32, offset: 992)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "output_width", scope: !51, file: !4, line: 442, baseType: !89, size: 32, offset: 1024)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "output_height", scope: !51, file: !4, line: 443, baseType: !89, size: 32, offset: 1056)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "out_color_components", scope: !51, file: !4, line: 444, baseType: !34, size: 32, offset: 1088)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "output_components", scope: !51, file: !4, line: 445, baseType: !34, size: 32, offset: 1120)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "rec_outbuf_height", scope: !51, file: !4, line: 449, baseType: !34, size: 32, offset: 1152)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "actual_number_of_colors", scope: !51, file: !4, line: 461, baseType: !34, size: 32, offset: 1184)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "colormap", scope: !51, file: !4, line: 462, baseType: !83, size: 64, offset: 1216)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "output_scanline", scope: !51, file: !4, line: 472, baseType: !89, size: 32, offset: 1280)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "input_scan_number", scope: !51, file: !4, line: 477, baseType: !34, size: 32, offset: 1312)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "input_iMCU_row", scope: !51, file: !4, line: 478, baseType: !89, size: 32, offset: 1344)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "output_scan_number", scope: !51, file: !4, line: 484, baseType: !34, size: 32, offset: 1376)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "output_iMCU_row", scope: !51, file: !4, line: 485, baseType: !89, size: 32, offset: 1408)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "coef_bits", scope: !51, file: !4, line: 494, baseType: !244, size: 64, offset: 1472)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 2048, elements: !102)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "quant_tbl_ptrs", scope: !51, file: !4, line: 505, baseType: !247, size: 256, offset: 1536)
!247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !248, size: 256, elements: !257)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "JQUANT_TBL", file: !4, line: 95, baseType: !250)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 83, size: 1056, elements: !251)
!251 = !{!252, !256}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "quantval", scope: !250, file: !4, line: 88, baseType: !253, size: 1024)
!253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !254, size: 1024, elements: !102)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT16", file: !36, line: 147, baseType: !255)
!255 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "sent_table", scope: !250, file: !4, line: 94, baseType: !111, size: 32, offset: 1024)
!257 = !{!258}
!258 = !DISubrange(count: 4)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "dc_huff_tbl_ptrs", scope: !51, file: !4, line: 508, baseType: !260, size: 256, offset: 1792)
!260 = !DICompositeType(tag: DW_TAG_array_type, baseType: !261, size: 256, elements: !257)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "JHUFF_TBL", file: !4, line: 111, baseType: !263)
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 100, size: 2240, elements: !264)
!264 = !{!265, !270, !274}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !263, file: !4, line: 102, baseType: !266, size: 136)
!266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !267, size: 136, elements: !268)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT8", file: !36, line: 135, baseType: !88)
!268 = !{!269}
!269 = !DISubrange(count: 17)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "huffval", scope: !263, file: !4, line: 104, baseType: !271, size: 2048, offset: 136)
!271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !267, size: 2048, elements: !272)
!272 = !{!273}
!273 = !DISubrange(count: 256)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "sent_table", scope: !263, file: !4, line: 110, baseType: !111, size: 32, offset: 2208)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "ac_huff_tbl_ptrs", scope: !51, file: !4, line: 509, baseType: !260, size: 256, offset: 2048)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "data_precision", scope: !51, file: !4, line: 516, baseType: !34, size: 32, offset: 2304)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "comp_info", scope: !51, file: !4, line: 518, baseType: !278, size: 64, offset: 2368)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "jpeg_component_info", file: !4, line: 179, baseType: !280)
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 116, size: 768, elements: !281)
!281 = !{!282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "component_id", scope: !280, file: !4, line: 120, baseType: !34, size: 32)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "component_index", scope: !280, file: !4, line: 121, baseType: !34, size: 32, offset: 32)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "h_samp_factor", scope: !280, file: !4, line: 122, baseType: !34, size: 32, offset: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "v_samp_factor", scope: !280, file: !4, line: 123, baseType: !34, size: 32, offset: 96)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "quant_tbl_no", scope: !280, file: !4, line: 124, baseType: !34, size: 32, offset: 128)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "dc_tbl_no", scope: !280, file: !4, line: 129, baseType: !34, size: 32, offset: 160)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tbl_no", scope: !280, file: !4, line: 130, baseType: !34, size: 32, offset: 192)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "width_in_blocks", scope: !280, file: !4, line: 139, baseType: !89, size: 32, offset: 224)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "height_in_blocks", scope: !280, file: !4, line: 140, baseType: !89, size: 32, offset: 256)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "DCT_scaled_size", scope: !280, file: !4, line: 147, baseType: !34, size: 32, offset: 288)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "downsampled_width", scope: !280, file: !4, line: 154, baseType: !89, size: 32, offset: 320)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "downsampled_height", scope: !280, file: !4, line: 155, baseType: !89, size: 32, offset: 352)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "component_needed", scope: !280, file: !4, line: 160, baseType: !111, size: 32, offset: 384)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_width", scope: !280, file: !4, line: 164, baseType: !34, size: 32, offset: 416)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_height", scope: !280, file: !4, line: 165, baseType: !34, size: 32, offset: 448)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_blocks", scope: !280, file: !4, line: 166, baseType: !34, size: 32, offset: 480)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_sample_width", scope: !280, file: !4, line: 167, baseType: !34, size: 32, offset: 512)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "last_col_width", scope: !280, file: !4, line: 168, baseType: !34, size: 32, offset: 544)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "last_row_height", scope: !280, file: !4, line: 169, baseType: !34, size: 32, offset: 576)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "quant_table", scope: !280, file: !4, line: 175, baseType: !248, size: 64, offset: 640)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "dct_table", scope: !280, file: !4, line: 178, baseType: !74, size: 64, offset: 704)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "progressive_mode", scope: !51, file: !4, line: 521, baseType: !111, size: 32, offset: 2432)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "arith_code", scope: !51, file: !4, line: 522, baseType: !111, size: 32, offset: 2464)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "arith_dc_L", scope: !51, file: !4, line: 524, baseType: !306, size: 128, offset: 2496)
!306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !267, size: 128, elements: !307)
!307 = !{!308}
!308 = !DISubrange(count: 16)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "arith_dc_U", scope: !51, file: !4, line: 525, baseType: !306, size: 128, offset: 2624)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "arith_ac_K", scope: !51, file: !4, line: 526, baseType: !306, size: 128, offset: 2752)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "restart_interval", scope: !51, file: !4, line: 528, baseType: !5, size: 32, offset: 2880)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "saw_JFIF_marker", scope: !51, file: !4, line: 533, baseType: !111, size: 32, offset: 2912)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "density_unit", scope: !51, file: !4, line: 535, baseType: !267, size: 8, offset: 2944)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "X_density", scope: !51, file: !4, line: 536, baseType: !254, size: 16, offset: 2960)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "Y_density", scope: !51, file: !4, line: 537, baseType: !254, size: 16, offset: 2976)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "saw_Adobe_marker", scope: !51, file: !4, line: 538, baseType: !111, size: 32, offset: 3008)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "Adobe_transform", scope: !51, file: !4, line: 539, baseType: !267, size: 8, offset: 3040)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "CCIR601_sampling", scope: !51, file: !4, line: 541, baseType: !111, size: 32, offset: 3072)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "max_h_samp_factor", scope: !51, file: !4, line: 550, baseType: !34, size: 32, offset: 3104)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "max_v_samp_factor", scope: !51, file: !4, line: 551, baseType: !34, size: 32, offset: 3136)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "min_DCT_scaled_size", scope: !51, file: !4, line: 553, baseType: !34, size: 32, offset: 3168)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "total_iMCU_rows", scope: !51, file: !4, line: 555, baseType: !89, size: 32, offset: 3200)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "sample_range_limit", scope: !51, file: !4, line: 564, baseType: !86, size: 64, offset: 3264)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "comps_in_scan", scope: !51, file: !4, line: 571, baseType: !34, size: 32, offset: 3328)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "cur_comp_info", scope: !51, file: !4, line: 572, baseType: !326, size: 256, offset: 3392)
!326 = !DICompositeType(tag: DW_TAG_array_type, baseType: !278, size: 256, elements: !257)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "MCUs_per_row", scope: !51, file: !4, line: 575, baseType: !89, size: 32, offset: 3648)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_rows_in_scan", scope: !51, file: !4, line: 576, baseType: !89, size: 32, offset: 3680)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "blocks_in_MCU", scope: !51, file: !4, line: 578, baseType: !34, size: 32, offset: 3712)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_membership", scope: !51, file: !4, line: 579, baseType: !331, size: 320, offset: 3744)
!331 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 320, elements: !332)
!332 = !{!333}
!333 = !DISubrange(count: 10)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "Ss", scope: !51, file: !4, line: 583, baseType: !34, size: 32, offset: 4064)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "Se", scope: !51, file: !4, line: 583, baseType: !34, size: 32, offset: 4096)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "Ah", scope: !51, file: !4, line: 583, baseType: !34, size: 32, offset: 4128)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "Al", scope: !51, file: !4, line: 583, baseType: !34, size: 32, offset: 4160)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "unread_marker", scope: !51, file: !4, line: 589, baseType: !34, size: 32, offset: 4192)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !51, file: !4, line: 594, baseType: !340, size: 64, offset: 4224)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_decomp_master", file: !24, line: 136, size: 192, elements: !342)
!342 = !{!343, !344, !345}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_for_output_pass", scope: !341, file: !24, line: 137, baseType: !191, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "finish_output_pass", scope: !341, file: !24, line: 138, baseType: !191, size: 64, offset: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "is_dummy_pass", scope: !341, file: !24, line: 141, baseType: !111, size: 32, offset: 128)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "main", scope: !51, file: !4, line: 595, baseType: !347, size: 64, offset: 4288)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_d_main_controller", file: !24, line: 157, size: 128, elements: !349)
!349 = !{!350, !355}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !348, file: !24, line: 158, baseType: !351, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = !DISubroutineType(types: !353)
!353 = !{null, !49, !354}
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_BUF_MODE", file: !24, line: 22, baseType: !23)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "process_data", scope: !348, file: !24, line: 159, baseType: !356, size: 64, offset: 64)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = !DISubroutineType(types: !358)
!358 = !{null, !49, !83, !359, !89}
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "coef", scope: !51, file: !4, line: 596, baseType: !361, size: 64, offset: 4352)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_d_coef_controller", file: !24, line: 165, size: 320, elements: !363)
!363 = !{!364, !365, !369, !370, !376}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "start_input_pass", scope: !362, file: !24, line: 166, baseType: !191, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "consume_data", scope: !362, file: !24, line: 167, baseType: !366, size: 64, offset: 64)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = !DISubroutineType(types: !368)
!368 = !{!34, !49}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "start_output_pass", scope: !362, file: !24, line: 168, baseType: !191, size: 64, offset: 128)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "decompress_data", scope: !362, file: !24, line: 169, baseType: !371, size: 64, offset: 192)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!372 = !DISubroutineType(types: !373)
!373 = !{!34, !49, !374}
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPIMAGE", file: !4, line: 68, baseType: !375)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "coef_arrays", scope: !362, file: !24, line: 172, baseType: !377, size: 64, offset: 256)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "post", scope: !51, file: !4, line: 597, baseType: !379, size: 64, offset: 4416)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_d_post_controller", file: !24, line: 176, size: 128, elements: !381)
!381 = !{!382, !383}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !380, file: !24, line: 177, baseType: !351, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "post_process_data", scope: !380, file: !24, line: 178, baseType: !384, size: 64, offset: 64)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = !DISubroutineType(types: !386)
!386 = !{null, !49, !374, !359, !89, !83, !359, !89}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "inputctl", scope: !51, file: !4, line: 598, baseType: !388, size: 64, offset: 4480)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_input_controller", file: !24, line: 145, size: 320, elements: !390)
!390 = !{!391, !392, !393, !394, !395, !396}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "consume_input", scope: !389, file: !24, line: 146, baseType: !366, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "reset_input_controller", scope: !389, file: !24, line: 147, baseType: !191, size: 64, offset: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "start_input_pass", scope: !389, file: !24, line: 148, baseType: !191, size: 64, offset: 128)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "finish_input_pass", scope: !389, file: !24, line: 149, baseType: !191, size: 64, offset: 192)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "has_multiple_scans", scope: !389, file: !24, line: 152, baseType: !111, size: 32, offset: 256)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "eoi_reached", scope: !389, file: !24, line: 153, baseType: !111, size: 32, offset: 288)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "marker", scope: !51, file: !4, line: 599, baseType: !398, size: 64, offset: 4544)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_marker_reader", file: !24, line: 188, size: 1408, elements: !400)
!400 = !{!401, !402, !403, !405, !406, !408, !409, !410, !411}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "reset_marker_reader", scope: !399, file: !24, line: 189, baseType: !191, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "read_markers", scope: !399, file: !24, line: 194, baseType: !366, size: 64, offset: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "read_restart_marker", scope: !399, file: !24, line: 196, baseType: !404, size: 64, offset: 128)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "jpeg_marker_parser_method", file: !4, line: 781, baseType: !195)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "process_COM", scope: !399, file: !24, line: 198, baseType: !404, size: 64, offset: 192)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "process_APPn", scope: !399, file: !24, line: 199, baseType: !407, size: 1024, offset: 256)
!407 = !DICompositeType(tag: DW_TAG_array_type, baseType: !404, size: 1024, elements: !307)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "saw_SOI", scope: !399, file: !24, line: 204, baseType: !111, size: 32, offset: 1280)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "saw_SOF", scope: !399, file: !24, line: 205, baseType: !111, size: 32, offset: 1312)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "next_restart_num", scope: !399, file: !24, line: 206, baseType: !34, size: 32, offset: 1344)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "discarded_bytes", scope: !399, file: !24, line: 207, baseType: !5, size: 32, offset: 1376)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "entropy", scope: !51, file: !4, line: 600, baseType: !413, size: 64, offset: 4608)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_entropy_decoder", file: !24, line: 211, size: 128, elements: !415)
!415 = !{!416, !417}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !414, file: !24, line: 212, baseType: !191, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "decode_mcu", scope: !414, file: !24, line: 213, baseType: !418, size: 64, offset: 64)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!419 = !DISubroutineType(types: !420)
!420 = !{!111, !49, !95}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "idct", scope: !51, file: !4, line: 601, baseType: !422, size: 64, offset: 4672)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_inverse_dct", file: !24, line: 223, size: 704, elements: !424)
!424 = !{!425, !426}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !423, file: !24, line: 224, baseType: !191, size: 64)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "inverse_DCT", scope: !423, file: !24, line: 226, baseType: !427, size: 640, offset: 64)
!427 = !DICompositeType(tag: DW_TAG_array_type, baseType: !428, size: 640, elements: !332)
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "inverse_DCT_method_ptr", file: !24, line: 218, baseType: !429)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "upsample", scope: !51, file: !4, line: 602, baseType: !431, size: 64, offset: 4736)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_upsampler", file: !24, line: 230, size: 192, elements: !433)
!433 = !{!434, !435, !436}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !432, file: !24, line: 231, baseType: !191, size: 64)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "upsample", scope: !432, file: !24, line: 232, baseType: !384, size: 64, offset: 64)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "need_context_rows", scope: !432, file: !24, line: 240, baseType: !111, size: 32, offset: 128)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "cconvert", scope: !51, file: !4, line: 603, baseType: !438, size: 64, offset: 4800)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_color_deconverter", file: !24, line: 244, size: 128, elements: !440)
!440 = !{!441, !442}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !439, file: !24, line: 245, baseType: !191, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "color_convert", scope: !439, file: !24, line: 246, baseType: !443, size: 64, offset: 64)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = !DISubroutineType(types: !445)
!445 = !{null, !49, !374, !89, !83, !34}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "cquantize", scope: !51, file: !4, line: 604, baseType: !447, size: 64, offset: 4864)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_color_quantizer", file: !24, line: 252, size: 256, elements: !449)
!449 = !{!450, !454, !458, !459}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !448, file: !24, line: 253, baseType: !451, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DISubroutineType(types: !453)
!453 = !{null, !49, !111}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "color_quantize", scope: !448, file: !24, line: 254, baseType: !455, size: 64, offset: 64)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DISubroutineType(types: !457)
!457 = !{null, !49, !83, !83, !34}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "finish_pass", scope: !448, file: !24, line: 257, baseType: !191, size: 64, offset: 128)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "new_color_map", scope: !448, file: !24, line: 258, baseType: !191, size: 64, offset: 192)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "JCOEFPTR", file: !4, line: 75, baseType: !461)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!462 = !{}
!463 = !DILocalVariable(name: "cinfo", arg: 1, scope: !46, file: !1, line: 118, type: !49)
!464 = !DILocation(line: 118, column: 33, scope: !46)
!465 = !DILocalVariable(name: "compptr", arg: 2, scope: !46, file: !1, line: 118, type: !278)
!466 = !DILocation(line: 118, column: 62, scope: !46)
!467 = !DILocalVariable(name: "coef_block", arg: 3, scope: !46, file: !1, line: 119, type: !460)
!468 = !DILocation(line: 119, column: 18, scope: !46)
!469 = !DILocalVariable(name: "output_buf", arg: 4, scope: !46, file: !1, line: 120, type: !83)
!470 = !DILocation(line: 120, column: 20, scope: !46)
!471 = !DILocalVariable(name: "output_col", arg: 5, scope: !46, file: !1, line: 120, type: !89)
!472 = !DILocation(line: 120, column: 43, scope: !46)
!473 = !DILocalVariable(name: "tmp0", scope: !46, file: !1, line: 122, type: !35)
!474 = !DILocation(line: 122, column: 9, scope: !46)
!475 = !DILocalVariable(name: "tmp2", scope: !46, file: !1, line: 122, type: !35)
!476 = !DILocation(line: 122, column: 15, scope: !46)
!477 = !DILocalVariable(name: "tmp10", scope: !46, file: !1, line: 122, type: !35)
!478 = !DILocation(line: 122, column: 21, scope: !46)
!479 = !DILocalVariable(name: "tmp12", scope: !46, file: !1, line: 122, type: !35)
!480 = !DILocation(line: 122, column: 28, scope: !46)
!481 = !DILocalVariable(name: "z1", scope: !46, file: !1, line: 123, type: !35)
!482 = !DILocation(line: 123, column: 9, scope: !46)
!483 = !DILocalVariable(name: "z2", scope: !46, file: !1, line: 123, type: !35)
!484 = !DILocation(line: 123, column: 13, scope: !46)
!485 = !DILocalVariable(name: "z3", scope: !46, file: !1, line: 123, type: !35)
!486 = !DILocation(line: 123, column: 17, scope: !46)
!487 = !DILocalVariable(name: "z4", scope: !46, file: !1, line: 123, type: !35)
!488 = !DILocation(line: 123, column: 21, scope: !46)
!489 = !DILocalVariable(name: "inptr", scope: !46, file: !1, line: 124, type: !460)
!490 = !DILocation(line: 124, column: 12, scope: !46)
!491 = !DILocalVariable(name: "quantptr", scope: !46, file: !1, line: 125, type: !31)
!492 = !DILocation(line: 125, column: 21, scope: !46)
!493 = !DILocalVariable(name: "wsptr", scope: !46, file: !1, line: 126, type: !494)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!495 = !DILocation(line: 126, column: 9, scope: !46)
!496 = !DILocalVariable(name: "outptr", scope: !46, file: !1, line: 127, type: !85)
!497 = !DILocation(line: 127, column: 12, scope: !46)
!498 = !DILocalVariable(name: "range_limit", scope: !46, file: !1, line: 128, type: !86)
!499 = !DILocation(line: 128, column: 12, scope: !46)
!500 = !DILocation(line: 128, column: 26, scope: !46)
!501 = !DILocalVariable(name: "ctr", scope: !46, file: !1, line: 129, type: !34)
!502 = !DILocation(line: 129, column: 7, scope: !46)
!503 = !DILocalVariable(name: "workspace", scope: !46, file: !1, line: 130, type: !504)
!504 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 1024, elements: !505)
!505 = !{!506}
!506 = !DISubrange(count: 32)
!507 = !DILocation(line: 130, column: 7, scope: !46)
!508 = !DILocation(line: 135, column: 11, scope: !46)
!509 = !DILocation(line: 135, column: 9, scope: !46)
!510 = !DILocation(line: 136, column: 34, scope: !46)
!511 = !DILocation(line: 136, column: 43, scope: !46)
!512 = !DILocation(line: 136, column: 12, scope: !46)
!513 = !DILocation(line: 137, column: 11, scope: !46)
!514 = !DILocation(line: 137, column: 9, scope: !46)
!515 = !DILocation(line: 138, column: 12, scope: !516)
!516 = distinct !DILexicalBlock(scope: !46, file: !1, line: 138, column: 3)
!517 = !DILocation(line: 138, column: 8, scope: !516)
!518 = !DILocation(line: 138, column: 23, scope: !519)
!519 = distinct !DILexicalBlock(scope: !516, file: !1, line: 138, column: 3)
!520 = !DILocation(line: 138, column: 27, scope: !519)
!521 = !DILocation(line: 138, column: 3, scope: !516)
!522 = !DILocation(line: 140, column: 9, scope: !523)
!523 = distinct !DILexicalBlock(scope: !524, file: !1, line: 140, column: 9)
!524 = distinct !DILexicalBlock(scope: !519, file: !1, line: 138, column: 69)
!525 = !DILocation(line: 140, column: 13, scope: !523)
!526 = !DILocation(line: 141, column: 7, scope: !523)
!527 = !DILocation(line: 142, column: 10, scope: !528)
!528 = distinct !DILexicalBlock(scope: !524, file: !1, line: 142, column: 9)
!529 = !DILocation(line: 142, column: 29, scope: !528)
!530 = !DILocation(line: 142, column: 27, scope: !528)
!531 = !DILocation(line: 142, column: 48, scope: !528)
!532 = !DILocation(line: 142, column: 46, scope: !528)
!533 = !DILocation(line: 143, column: 3, scope: !528)
!534 = !DILocation(line: 142, column: 65, scope: !528)
!535 = !DILocation(line: 143, column: 22, scope: !528)
!536 = !DILocation(line: 143, column: 20, scope: !528)
!537 = !DILocation(line: 143, column: 41, scope: !528)
!538 = !DILocation(line: 143, column: 39, scope: !528)
!539 = !DILocation(line: 143, column: 59, scope: !528)
!540 = !DILocalVariable(name: "dcval", scope: !541, file: !1, line: 145, type: !34)
!541 = distinct !DILexicalBlock(scope: !528, file: !1, line: 143, column: 65)
!542 = !DILocation(line: 145, column: 11, scope: !541)
!543 = !DILocation(line: 145, column: 19, scope: !541)
!544 = !DILocation(line: 145, column: 69, scope: !541)
!545 = !DILocation(line: 147, column: 26, scope: !541)
!546 = !DILocation(line: 147, column: 7, scope: !541)
!547 = !DILocation(line: 147, column: 24, scope: !541)
!548 = !DILocation(line: 148, column: 26, scope: !541)
!549 = !DILocation(line: 148, column: 7, scope: !541)
!550 = !DILocation(line: 148, column: 24, scope: !541)
!551 = !DILocation(line: 149, column: 26, scope: !541)
!552 = !DILocation(line: 149, column: 7, scope: !541)
!553 = !DILocation(line: 149, column: 24, scope: !541)
!554 = !DILocation(line: 150, column: 26, scope: !541)
!555 = !DILocation(line: 150, column: 7, scope: !541)
!556 = !DILocation(line: 150, column: 24, scope: !541)
!557 = !DILocation(line: 152, column: 7, scope: !541)
!558 = !DILocation(line: 157, column: 12, scope: !524)
!559 = !DILocation(line: 157, column: 10, scope: !524)
!560 = !DILocation(line: 158, column: 10, scope: !524)
!561 = !DILocation(line: 160, column: 10, scope: !524)
!562 = !DILocation(line: 160, column: 8, scope: !524)
!563 = !DILocation(line: 161, column: 10, scope: !524)
!564 = !DILocation(line: 161, column: 8, scope: !524)
!565 = !DILocation(line: 163, column: 12, scope: !524)
!566 = !DILocation(line: 163, column: 44, scope: !524)
!567 = !DILocation(line: 163, column: 42, scope: !524)
!568 = !DILocation(line: 163, column: 10, scope: !524)
!569 = !DILocation(line: 165, column: 13, scope: !524)
!570 = !DILocation(line: 165, column: 20, scope: !524)
!571 = !DILocation(line: 165, column: 18, scope: !524)
!572 = !DILocation(line: 165, column: 11, scope: !524)
!573 = !DILocation(line: 166, column: 13, scope: !524)
!574 = !DILocation(line: 166, column: 20, scope: !524)
!575 = !DILocation(line: 166, column: 18, scope: !524)
!576 = !DILocation(line: 166, column: 11, scope: !524)
!577 = !DILocation(line: 170, column: 10, scope: !524)
!578 = !DILocation(line: 170, column: 8, scope: !524)
!579 = !DILocation(line: 171, column: 10, scope: !524)
!580 = !DILocation(line: 171, column: 8, scope: !524)
!581 = !DILocation(line: 172, column: 10, scope: !524)
!582 = !DILocation(line: 172, column: 8, scope: !524)
!583 = !DILocation(line: 173, column: 10, scope: !524)
!584 = !DILocation(line: 173, column: 8, scope: !524)
!585 = !DILocation(line: 175, column: 12, scope: !524)
!586 = !DILocation(line: 176, column: 5, scope: !524)
!587 = !DILocation(line: 176, column: 3, scope: !524)
!588 = !DILocation(line: 177, column: 5, scope: !524)
!589 = !DILocation(line: 177, column: 3, scope: !524)
!590 = !DILocation(line: 178, column: 5, scope: !524)
!591 = !DILocation(line: 178, column: 3, scope: !524)
!592 = !DILocation(line: 175, column: 10, scope: !524)
!593 = !DILocation(line: 180, column: 12, scope: !524)
!594 = !DILocation(line: 181, column: 5, scope: !524)
!595 = !DILocation(line: 181, column: 3, scope: !524)
!596 = !DILocation(line: 182, column: 5, scope: !524)
!597 = !DILocation(line: 182, column: 3, scope: !524)
!598 = !DILocation(line: 183, column: 5, scope: !524)
!599 = !DILocation(line: 183, column: 3, scope: !524)
!600 = !DILocation(line: 180, column: 10, scope: !524)
!601 = !DILocation(line: 187, column: 30, scope: !524)
!602 = !DILocation(line: 187, column: 24, scope: !524)
!603 = !DILocation(line: 187, column: 5, scope: !524)
!604 = !DILocation(line: 187, column: 22, scope: !524)
!605 = !DILocation(line: 188, column: 30, scope: !524)
!606 = !DILocation(line: 188, column: 24, scope: !524)
!607 = !DILocation(line: 188, column: 5, scope: !524)
!608 = !DILocation(line: 188, column: 22, scope: !524)
!609 = !DILocation(line: 189, column: 30, scope: !524)
!610 = !DILocation(line: 189, column: 24, scope: !524)
!611 = !DILocation(line: 189, column: 5, scope: !524)
!612 = !DILocation(line: 189, column: 22, scope: !524)
!613 = !DILocation(line: 190, column: 30, scope: !524)
!614 = !DILocation(line: 190, column: 24, scope: !524)
!615 = !DILocation(line: 190, column: 5, scope: !524)
!616 = !DILocation(line: 190, column: 22, scope: !524)
!617 = !DILocation(line: 191, column: 3, scope: !524)
!618 = !DILocation(line: 138, column: 37, scope: !519)
!619 = !DILocation(line: 138, column: 49, scope: !519)
!620 = !DILocation(line: 138, column: 58, scope: !519)
!621 = !DILocation(line: 138, column: 65, scope: !519)
!622 = !DILocation(line: 138, column: 3, scope: !519)
!623 = distinct !{!623, !521, !624, !625}
!624 = !DILocation(line: 191, column: 3, scope: !516)
!625 = !{!"llvm.loop.mustprogress"}
!626 = !DILocation(line: 195, column: 11, scope: !46)
!627 = !DILocation(line: 195, column: 9, scope: !46)
!628 = !DILocation(line: 196, column: 12, scope: !629)
!629 = distinct !DILexicalBlock(scope: !46, file: !1, line: 196, column: 3)
!630 = !DILocation(line: 196, column: 8, scope: !629)
!631 = !DILocation(line: 196, column: 17, scope: !632)
!632 = distinct !DILexicalBlock(scope: !629, file: !1, line: 196, column: 3)
!633 = !DILocation(line: 196, column: 21, scope: !632)
!634 = !DILocation(line: 196, column: 3, scope: !629)
!635 = !DILocation(line: 197, column: 14, scope: !636)
!636 = distinct !DILexicalBlock(scope: !632, file: !1, line: 196, column: 33)
!637 = !DILocation(line: 197, column: 25, scope: !636)
!638 = !DILocation(line: 197, column: 32, scope: !636)
!639 = !DILocation(line: 197, column: 30, scope: !636)
!640 = !DILocation(line: 197, column: 12, scope: !636)
!641 = !DILocation(line: 201, column: 10, scope: !642)
!642 = distinct !DILexicalBlock(scope: !636, file: !1, line: 201, column: 9)
!643 = !DILocation(line: 201, column: 21, scope: !642)
!644 = !DILocation(line: 201, column: 19, scope: !642)
!645 = !DILocation(line: 201, column: 32, scope: !642)
!646 = !DILocation(line: 201, column: 30, scope: !642)
!647 = !DILocation(line: 201, column: 43, scope: !642)
!648 = !DILocation(line: 201, column: 41, scope: !642)
!649 = !DILocation(line: 201, column: 54, scope: !642)
!650 = !DILocation(line: 201, column: 52, scope: !642)
!651 = !DILocation(line: 202, column: 3, scope: !642)
!652 = !DILocation(line: 201, column: 63, scope: !642)
!653 = !DILocation(line: 202, column: 13, scope: !642)
!654 = !DILocalVariable(name: "dcval", scope: !655, file: !1, line: 204, type: !87)
!655 = distinct !DILexicalBlock(scope: !642, file: !1, line: 202, column: 19)
!656 = !DILocation(line: 204, column: 15, scope: !655)
!657 = !DILocation(line: 204, column: 23, scope: !655)
!658 = !DILocation(line: 204, column: 41, scope: !655)
!659 = !DILocation(line: 204, column: 35, scope: !655)
!660 = !DILocation(line: 205, column: 7, scope: !655)
!661 = !DILocation(line: 207, column: 19, scope: !655)
!662 = !DILocation(line: 207, column: 7, scope: !655)
!663 = !DILocation(line: 207, column: 17, scope: !655)
!664 = !DILocation(line: 208, column: 19, scope: !655)
!665 = !DILocation(line: 208, column: 7, scope: !655)
!666 = !DILocation(line: 208, column: 17, scope: !655)
!667 = !DILocation(line: 209, column: 19, scope: !655)
!668 = !DILocation(line: 209, column: 7, scope: !655)
!669 = !DILocation(line: 209, column: 17, scope: !655)
!670 = !DILocation(line: 210, column: 19, scope: !655)
!671 = !DILocation(line: 210, column: 7, scope: !655)
!672 = !DILocation(line: 210, column: 17, scope: !655)
!673 = !DILocation(line: 212, column: 13, scope: !655)
!674 = !DILocation(line: 213, column: 7, scope: !655)
!675 = !DILocation(line: 219, column: 21, scope: !636)
!676 = !DILocation(line: 219, column: 13, scope: !636)
!677 = !DILocation(line: 219, column: 31, scope: !636)
!678 = !DILocation(line: 219, column: 10, scope: !636)
!679 = !DILocation(line: 221, column: 12, scope: !636)
!680 = !DILocation(line: 222, column: 5, scope: !636)
!681 = !DILocation(line: 222, column: 3, scope: !636)
!682 = !DILocation(line: 221, column: 10, scope: !636)
!683 = !DILocation(line: 224, column: 13, scope: !636)
!684 = !DILocation(line: 224, column: 20, scope: !636)
!685 = !DILocation(line: 224, column: 18, scope: !636)
!686 = !DILocation(line: 224, column: 11, scope: !636)
!687 = !DILocation(line: 225, column: 13, scope: !636)
!688 = !DILocation(line: 225, column: 20, scope: !636)
!689 = !DILocation(line: 225, column: 18, scope: !636)
!690 = !DILocation(line: 225, column: 11, scope: !636)
!691 = !DILocation(line: 229, column: 18, scope: !636)
!692 = !DILocation(line: 229, column: 10, scope: !636)
!693 = !DILocation(line: 229, column: 8, scope: !636)
!694 = !DILocation(line: 230, column: 18, scope: !636)
!695 = !DILocation(line: 230, column: 10, scope: !636)
!696 = !DILocation(line: 230, column: 8, scope: !636)
!697 = !DILocation(line: 231, column: 18, scope: !636)
!698 = !DILocation(line: 231, column: 10, scope: !636)
!699 = !DILocation(line: 231, column: 8, scope: !636)
!700 = !DILocation(line: 232, column: 18, scope: !636)
!701 = !DILocation(line: 232, column: 10, scope: !636)
!702 = !DILocation(line: 232, column: 8, scope: !636)
!703 = !DILocation(line: 234, column: 12, scope: !636)
!704 = !DILocation(line: 235, column: 5, scope: !636)
!705 = !DILocation(line: 235, column: 3, scope: !636)
!706 = !DILocation(line: 236, column: 5, scope: !636)
!707 = !DILocation(line: 236, column: 3, scope: !636)
!708 = !DILocation(line: 237, column: 5, scope: !636)
!709 = !DILocation(line: 237, column: 3, scope: !636)
!710 = !DILocation(line: 234, column: 10, scope: !636)
!711 = !DILocation(line: 239, column: 12, scope: !636)
!712 = !DILocation(line: 240, column: 5, scope: !636)
!713 = !DILocation(line: 240, column: 3, scope: !636)
!714 = !DILocation(line: 241, column: 5, scope: !636)
!715 = !DILocation(line: 241, column: 3, scope: !636)
!716 = !DILocation(line: 242, column: 5, scope: !636)
!717 = !DILocation(line: 242, column: 3, scope: !636)
!718 = !DILocation(line: 239, column: 10, scope: !636)
!719 = !DILocation(line: 246, column: 17, scope: !636)
!720 = !DILocation(line: 246, column: 35, scope: !636)
!721 = !DILocation(line: 246, column: 29, scope: !636)
!722 = !DILocation(line: 248, column: 8, scope: !636)
!723 = !DILocation(line: 246, column: 5, scope: !636)
!724 = !DILocation(line: 246, column: 15, scope: !636)
!725 = !DILocation(line: 249, column: 17, scope: !636)
!726 = !DILocation(line: 249, column: 35, scope: !636)
!727 = !DILocation(line: 249, column: 29, scope: !636)
!728 = !DILocation(line: 251, column: 8, scope: !636)
!729 = !DILocation(line: 249, column: 5, scope: !636)
!730 = !DILocation(line: 249, column: 15, scope: !636)
!731 = !DILocation(line: 252, column: 17, scope: !636)
!732 = !DILocation(line: 252, column: 35, scope: !636)
!733 = !DILocation(line: 252, column: 29, scope: !636)
!734 = !DILocation(line: 254, column: 8, scope: !636)
!735 = !DILocation(line: 252, column: 5, scope: !636)
!736 = !DILocation(line: 252, column: 15, scope: !636)
!737 = !DILocation(line: 255, column: 17, scope: !636)
!738 = !DILocation(line: 255, column: 35, scope: !636)
!739 = !DILocation(line: 255, column: 29, scope: !636)
!740 = !DILocation(line: 257, column: 8, scope: !636)
!741 = !DILocation(line: 255, column: 5, scope: !636)
!742 = !DILocation(line: 255, column: 15, scope: !636)
!743 = !DILocation(line: 259, column: 11, scope: !636)
!744 = !DILocation(line: 260, column: 3, scope: !636)
!745 = !DILocation(line: 196, column: 29, scope: !632)
!746 = !DILocation(line: 196, column: 3, scope: !632)
!747 = distinct !{!747, !634, !748, !625}
!748 = !DILocation(line: 260, column: 3, scope: !629)
!749 = !DILocation(line: 261, column: 1, scope: !46)
!750 = distinct !DISubprogram(name: "jpeg_idct_2x2", scope: !1, file: !1, line: 270, type: !47, scopeLine: 273, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !462)
!751 = !DILocalVariable(name: "cinfo", arg: 1, scope: !750, file: !1, line: 270, type: !49)
!752 = !DILocation(line: 270, column: 33, scope: !750)
!753 = !DILocalVariable(name: "compptr", arg: 2, scope: !750, file: !1, line: 270, type: !278)
!754 = !DILocation(line: 270, column: 62, scope: !750)
!755 = !DILocalVariable(name: "coef_block", arg: 3, scope: !750, file: !1, line: 271, type: !460)
!756 = !DILocation(line: 271, column: 18, scope: !750)
!757 = !DILocalVariable(name: "output_buf", arg: 4, scope: !750, file: !1, line: 272, type: !83)
!758 = !DILocation(line: 272, column: 20, scope: !750)
!759 = !DILocalVariable(name: "output_col", arg: 5, scope: !750, file: !1, line: 272, type: !89)
!760 = !DILocation(line: 272, column: 43, scope: !750)
!761 = !DILocalVariable(name: "tmp0", scope: !750, file: !1, line: 274, type: !35)
!762 = !DILocation(line: 274, column: 9, scope: !750)
!763 = !DILocalVariable(name: "tmp10", scope: !750, file: !1, line: 274, type: !35)
!764 = !DILocation(line: 274, column: 15, scope: !750)
!765 = !DILocalVariable(name: "z1", scope: !750, file: !1, line: 274, type: !35)
!766 = !DILocation(line: 274, column: 22, scope: !750)
!767 = !DILocalVariable(name: "inptr", scope: !750, file: !1, line: 275, type: !460)
!768 = !DILocation(line: 275, column: 12, scope: !750)
!769 = !DILocalVariable(name: "quantptr", scope: !750, file: !1, line: 276, type: !31)
!770 = !DILocation(line: 276, column: 21, scope: !750)
!771 = !DILocalVariable(name: "wsptr", scope: !750, file: !1, line: 277, type: !494)
!772 = !DILocation(line: 277, column: 9, scope: !750)
!773 = !DILocalVariable(name: "outptr", scope: !750, file: !1, line: 278, type: !85)
!774 = !DILocation(line: 278, column: 12, scope: !750)
!775 = !DILocalVariable(name: "range_limit", scope: !750, file: !1, line: 279, type: !86)
!776 = !DILocation(line: 279, column: 12, scope: !750)
!777 = !DILocation(line: 279, column: 26, scope: !750)
!778 = !DILocalVariable(name: "ctr", scope: !750, file: !1, line: 280, type: !34)
!779 = !DILocation(line: 280, column: 7, scope: !750)
!780 = !DILocalVariable(name: "workspace", scope: !750, file: !1, line: 281, type: !781)
!781 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 512, elements: !307)
!782 = !DILocation(line: 281, column: 7, scope: !750)
!783 = !DILocation(line: 286, column: 11, scope: !750)
!784 = !DILocation(line: 286, column: 9, scope: !750)
!785 = !DILocation(line: 287, column: 34, scope: !750)
!786 = !DILocation(line: 287, column: 43, scope: !750)
!787 = !DILocation(line: 287, column: 12, scope: !750)
!788 = !DILocation(line: 288, column: 11, scope: !750)
!789 = !DILocation(line: 288, column: 9, scope: !750)
!790 = !DILocation(line: 289, column: 12, scope: !791)
!791 = distinct !DILexicalBlock(scope: !750, file: !1, line: 289, column: 3)
!792 = !DILocation(line: 289, column: 8, scope: !791)
!793 = !DILocation(line: 289, column: 23, scope: !794)
!794 = distinct !DILexicalBlock(scope: !791, file: !1, line: 289, column: 3)
!795 = !DILocation(line: 289, column: 27, scope: !794)
!796 = !DILocation(line: 289, column: 3, scope: !791)
!797 = !DILocation(line: 291, column: 9, scope: !798)
!798 = distinct !DILexicalBlock(scope: !799, file: !1, line: 291, column: 9)
!799 = distinct !DILexicalBlock(scope: !794, file: !1, line: 289, column: 69)
!800 = !DILocation(line: 291, column: 13, scope: !798)
!801 = !DILocation(line: 291, column: 26, scope: !798)
!802 = !DILocation(line: 291, column: 29, scope: !798)
!803 = !DILocation(line: 291, column: 33, scope: !798)
!804 = !DILocation(line: 291, column: 46, scope: !798)
!805 = !DILocation(line: 291, column: 49, scope: !798)
!806 = !DILocation(line: 291, column: 53, scope: !798)
!807 = !DILocation(line: 292, column: 7, scope: !798)
!808 = !DILocation(line: 293, column: 10, scope: !809)
!809 = distinct !DILexicalBlock(scope: !799, file: !1, line: 293, column: 9)
!810 = !DILocation(line: 293, column: 29, scope: !809)
!811 = !DILocation(line: 293, column: 27, scope: !809)
!812 = !DILocation(line: 294, column: 3, scope: !809)
!813 = !DILocation(line: 293, column: 46, scope: !809)
!814 = !DILocation(line: 294, column: 22, scope: !809)
!815 = !DILocation(line: 294, column: 20, scope: !809)
!816 = !DILocation(line: 294, column: 40, scope: !809)
!817 = !DILocalVariable(name: "dcval", scope: !818, file: !1, line: 296, type: !34)
!818 = distinct !DILexicalBlock(scope: !809, file: !1, line: 294, column: 46)
!819 = !DILocation(line: 296, column: 11, scope: !818)
!820 = !DILocation(line: 296, column: 19, scope: !818)
!821 = !DILocation(line: 296, column: 69, scope: !818)
!822 = !DILocation(line: 298, column: 26, scope: !818)
!823 = !DILocation(line: 298, column: 7, scope: !818)
!824 = !DILocation(line: 298, column: 24, scope: !818)
!825 = !DILocation(line: 299, column: 26, scope: !818)
!826 = !DILocation(line: 299, column: 7, scope: !818)
!827 = !DILocation(line: 299, column: 24, scope: !818)
!828 = !DILocation(line: 301, column: 7, scope: !818)
!829 = !DILocation(line: 306, column: 10, scope: !799)
!830 = !DILocation(line: 306, column: 8, scope: !799)
!831 = !DILocation(line: 307, column: 13, scope: !799)
!832 = !DILocation(line: 307, column: 16, scope: !799)
!833 = !DILocation(line: 307, column: 11, scope: !799)
!834 = !DILocation(line: 311, column: 10, scope: !799)
!835 = !DILocation(line: 311, column: 8, scope: !799)
!836 = !DILocation(line: 312, column: 12, scope: !799)
!837 = !DILocation(line: 312, column: 10, scope: !799)
!838 = !DILocation(line: 313, column: 10, scope: !799)
!839 = !DILocation(line: 313, column: 8, scope: !799)
!840 = !DILocation(line: 314, column: 13, scope: !799)
!841 = !DILocation(line: 314, column: 10, scope: !799)
!842 = !DILocation(line: 315, column: 10, scope: !799)
!843 = !DILocation(line: 315, column: 8, scope: !799)
!844 = !DILocation(line: 316, column: 13, scope: !799)
!845 = !DILocation(line: 316, column: 10, scope: !799)
!846 = !DILocation(line: 317, column: 10, scope: !799)
!847 = !DILocation(line: 317, column: 8, scope: !799)
!848 = !DILocation(line: 318, column: 13, scope: !799)
!849 = !DILocation(line: 318, column: 10, scope: !799)
!850 = !DILocation(line: 322, column: 30, scope: !799)
!851 = !DILocation(line: 322, column: 24, scope: !799)
!852 = !DILocation(line: 322, column: 5, scope: !799)
!853 = !DILocation(line: 322, column: 22, scope: !799)
!854 = !DILocation(line: 323, column: 30, scope: !799)
!855 = !DILocation(line: 323, column: 24, scope: !799)
!856 = !DILocation(line: 323, column: 5, scope: !799)
!857 = !DILocation(line: 323, column: 22, scope: !799)
!858 = !DILocation(line: 324, column: 3, scope: !799)
!859 = !DILocation(line: 289, column: 37, scope: !794)
!860 = !DILocation(line: 289, column: 49, scope: !794)
!861 = !DILocation(line: 289, column: 58, scope: !794)
!862 = !DILocation(line: 289, column: 65, scope: !794)
!863 = !DILocation(line: 289, column: 3, scope: !794)
!864 = distinct !{!864, !796, !865, !625}
!865 = !DILocation(line: 324, column: 3, scope: !791)
!866 = !DILocation(line: 328, column: 11, scope: !750)
!867 = !DILocation(line: 328, column: 9, scope: !750)
!868 = !DILocation(line: 329, column: 12, scope: !869)
!869 = distinct !DILexicalBlock(scope: !750, file: !1, line: 329, column: 3)
!870 = !DILocation(line: 329, column: 8, scope: !869)
!871 = !DILocation(line: 329, column: 17, scope: !872)
!872 = distinct !DILexicalBlock(scope: !869, file: !1, line: 329, column: 3)
!873 = !DILocation(line: 329, column: 21, scope: !872)
!874 = !DILocation(line: 329, column: 3, scope: !869)
!875 = !DILocation(line: 330, column: 14, scope: !876)
!876 = distinct !DILexicalBlock(scope: !872, file: !1, line: 329, column: 33)
!877 = !DILocation(line: 330, column: 25, scope: !876)
!878 = !DILocation(line: 330, column: 32, scope: !876)
!879 = !DILocation(line: 330, column: 30, scope: !876)
!880 = !DILocation(line: 330, column: 12, scope: !876)
!881 = !DILocation(line: 334, column: 10, scope: !882)
!882 = distinct !DILexicalBlock(scope: !876, file: !1, line: 334, column: 9)
!883 = !DILocation(line: 334, column: 21, scope: !882)
!884 = !DILocation(line: 334, column: 19, scope: !882)
!885 = !DILocation(line: 334, column: 32, scope: !882)
!886 = !DILocation(line: 334, column: 30, scope: !882)
!887 = !DILocation(line: 334, column: 43, scope: !882)
!888 = !DILocation(line: 334, column: 41, scope: !882)
!889 = !DILocation(line: 334, column: 53, scope: !882)
!890 = !DILocalVariable(name: "dcval", scope: !891, file: !1, line: 336, type: !87)
!891 = distinct !DILexicalBlock(scope: !882, file: !1, line: 334, column: 59)
!892 = !DILocation(line: 336, column: 15, scope: !891)
!893 = !DILocation(line: 336, column: 23, scope: !891)
!894 = !DILocation(line: 336, column: 41, scope: !891)
!895 = !DILocation(line: 336, column: 35, scope: !891)
!896 = !DILocation(line: 337, column: 7, scope: !891)
!897 = !DILocation(line: 339, column: 19, scope: !891)
!898 = !DILocation(line: 339, column: 7, scope: !891)
!899 = !DILocation(line: 339, column: 17, scope: !891)
!900 = !DILocation(line: 340, column: 19, scope: !891)
!901 = !DILocation(line: 340, column: 7, scope: !891)
!902 = !DILocation(line: 340, column: 17, scope: !891)
!903 = !DILocation(line: 342, column: 13, scope: !891)
!904 = !DILocation(line: 343, column: 7, scope: !891)
!905 = !DILocation(line: 349, column: 22, scope: !876)
!906 = !DILocation(line: 349, column: 14, scope: !876)
!907 = !DILocation(line: 349, column: 32, scope: !876)
!908 = !DILocation(line: 349, column: 11, scope: !876)
!909 = !DILocation(line: 353, column: 12, scope: !876)
!910 = !DILocation(line: 354, column: 5, scope: !876)
!911 = !DILocation(line: 354, column: 3, scope: !876)
!912 = !DILocation(line: 355, column: 5, scope: !876)
!913 = !DILocation(line: 355, column: 3, scope: !876)
!914 = !DILocation(line: 356, column: 5, scope: !876)
!915 = !DILocation(line: 356, column: 3, scope: !876)
!916 = !DILocation(line: 353, column: 10, scope: !876)
!917 = !DILocation(line: 360, column: 17, scope: !876)
!918 = !DILocation(line: 360, column: 35, scope: !876)
!919 = !DILocation(line: 360, column: 29, scope: !876)
!920 = !DILocation(line: 362, column: 8, scope: !876)
!921 = !DILocation(line: 360, column: 5, scope: !876)
!922 = !DILocation(line: 360, column: 15, scope: !876)
!923 = !DILocation(line: 363, column: 17, scope: !876)
!924 = !DILocation(line: 363, column: 35, scope: !876)
!925 = !DILocation(line: 363, column: 29, scope: !876)
!926 = !DILocation(line: 365, column: 8, scope: !876)
!927 = !DILocation(line: 363, column: 5, scope: !876)
!928 = !DILocation(line: 363, column: 15, scope: !876)
!929 = !DILocation(line: 367, column: 11, scope: !876)
!930 = !DILocation(line: 368, column: 3, scope: !876)
!931 = !DILocation(line: 329, column: 29, scope: !872)
!932 = !DILocation(line: 329, column: 3, scope: !872)
!933 = distinct !{!933, !874, !934, !625}
!934 = !DILocation(line: 368, column: 3, scope: !869)
!935 = !DILocation(line: 369, column: 1, scope: !750)
!936 = distinct !DISubprogram(name: "jpeg_idct_1x1", scope: !1, file: !1, line: 378, type: !47, scopeLine: 381, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !462)
!937 = !DILocalVariable(name: "cinfo", arg: 1, scope: !936, file: !1, line: 378, type: !49)
!938 = !DILocation(line: 378, column: 33, scope: !936)
!939 = !DILocalVariable(name: "compptr", arg: 2, scope: !936, file: !1, line: 378, type: !278)
!940 = !DILocation(line: 378, column: 62, scope: !936)
!941 = !DILocalVariable(name: "coef_block", arg: 3, scope: !936, file: !1, line: 379, type: !460)
!942 = !DILocation(line: 379, column: 18, scope: !936)
!943 = !DILocalVariable(name: "output_buf", arg: 4, scope: !936, file: !1, line: 380, type: !83)
!944 = !DILocation(line: 380, column: 20, scope: !936)
!945 = !DILocalVariable(name: "output_col", arg: 5, scope: !936, file: !1, line: 380, type: !89)
!946 = !DILocation(line: 380, column: 43, scope: !936)
!947 = !DILocalVariable(name: "dcval", scope: !936, file: !1, line: 382, type: !34)
!948 = !DILocation(line: 382, column: 7, scope: !936)
!949 = !DILocalVariable(name: "quantptr", scope: !936, file: !1, line: 383, type: !31)
!950 = !DILocation(line: 383, column: 21, scope: !936)
!951 = !DILocalVariable(name: "range_limit", scope: !936, file: !1, line: 384, type: !86)
!952 = !DILocation(line: 384, column: 12, scope: !936)
!953 = !DILocation(line: 384, column: 26, scope: !936)
!954 = !DILocation(line: 390, column: 34, scope: !936)
!955 = !DILocation(line: 390, column: 43, scope: !936)
!956 = !DILocation(line: 390, column: 12, scope: !936)
!957 = !DILocation(line: 391, column: 11, scope: !936)
!958 = !DILocation(line: 391, column: 9, scope: !936)
!959 = !DILocation(line: 392, column: 17, scope: !936)
!960 = !DILocation(line: 392, column: 11, scope: !936)
!961 = !DILocation(line: 392, column: 9, scope: !936)
!962 = !DILocation(line: 394, column: 31, scope: !936)
!963 = !DILocation(line: 394, column: 43, scope: !936)
!964 = !DILocation(line: 394, column: 49, scope: !936)
!965 = !DILocation(line: 394, column: 3, scope: !936)
!966 = !DILocation(line: 394, column: 17, scope: !936)
!967 = !DILocation(line: 394, column: 29, scope: !936)
!968 = !DILocation(line: 395, column: 1, scope: !936)
