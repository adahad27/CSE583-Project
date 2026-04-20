; ModuleID = 'cBench/consumer_jpeg_c/src/jidctfst.c'
source_filename = "cBench/consumer_jpeg_c/src/jidctfst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jpeg_decompress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }

; Function Attrs: noinline nounwind uwtable
define dso_local void @jpeg_idct_ifast(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #0 !dbg !47 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
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
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca ptr, align 8
  %29 = alloca ptr, align 8
  %30 = alloca ptr, align 8
  %31 = alloca ptr, align 8
  %32 = alloca ptr, align 8
  %33 = alloca i32, align 4
  %34 = alloca [64 x i32], align 16
  %35 = alloca i32, align 4
  %36 = alloca i8, align 1
  store ptr %0, ptr %6, align 8
    #dbg_declare(ptr %6, !464, !DIExpression(), !465)
  store ptr %1, ptr %7, align 8
    #dbg_declare(ptr %7, !466, !DIExpression(), !467)
  store ptr %2, ptr %8, align 8
    #dbg_declare(ptr %8, !468, !DIExpression(), !469)
  store ptr %3, ptr %9, align 8
    #dbg_declare(ptr %9, !470, !DIExpression(), !471)
  store i32 %4, ptr %10, align 4
    #dbg_declare(ptr %10, !472, !DIExpression(), !473)
    #dbg_declare(ptr %11, !474, !DIExpression(), !475)
    #dbg_declare(ptr %12, !476, !DIExpression(), !477)
    #dbg_declare(ptr %13, !478, !DIExpression(), !479)
    #dbg_declare(ptr %14, !480, !DIExpression(), !481)
    #dbg_declare(ptr %15, !482, !DIExpression(), !483)
    #dbg_declare(ptr %16, !484, !DIExpression(), !485)
    #dbg_declare(ptr %17, !486, !DIExpression(), !487)
    #dbg_declare(ptr %18, !488, !DIExpression(), !489)
    #dbg_declare(ptr %19, !490, !DIExpression(), !491)
    #dbg_declare(ptr %20, !492, !DIExpression(), !493)
    #dbg_declare(ptr %21, !494, !DIExpression(), !495)
    #dbg_declare(ptr %22, !496, !DIExpression(), !497)
    #dbg_declare(ptr %23, !498, !DIExpression(), !499)
    #dbg_declare(ptr %24, !500, !DIExpression(), !501)
    #dbg_declare(ptr %25, !502, !DIExpression(), !503)
    #dbg_declare(ptr %26, !504, !DIExpression(), !505)
    #dbg_declare(ptr %27, !506, !DIExpression(), !507)
    #dbg_declare(ptr %28, !508, !DIExpression(), !509)
    #dbg_declare(ptr %29, !510, !DIExpression(), !511)
    #dbg_declare(ptr %30, !512, !DIExpression(), !514)
    #dbg_declare(ptr %31, !515, !DIExpression(), !516)
    #dbg_declare(ptr %32, !517, !DIExpression(), !518)
  %37 = load ptr, ptr %6, align 8, !dbg !519
  %38 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %37, i32 0, i32 61, !dbg !519
  %39 = load ptr, ptr %38, align 8, !dbg !519
  %40 = getelementptr inbounds i8, ptr %39, i64 128, !dbg !519
  store ptr %40, ptr %32, align 8, !dbg !518
    #dbg_declare(ptr %33, !520, !DIExpression(), !521)
    #dbg_declare(ptr %34, !522, !DIExpression(), !523)
  %41 = load ptr, ptr %8, align 8, !dbg !524
  store ptr %41, ptr %28, align 8, !dbg !525
  %42 = load ptr, ptr %7, align 8, !dbg !526
  %43 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %42, i32 0, i32 20, !dbg !527
  %44 = load ptr, ptr %43, align 8, !dbg !527
  store ptr %44, ptr %29, align 8, !dbg !528
  %45 = getelementptr inbounds [64 x i32], ptr %34, i64 0, i64 0, !dbg !529
  store ptr %45, ptr %30, align 8, !dbg !530
  store i32 8, ptr %33, align 4, !dbg !531
  br label %46, !dbg !533

46:                                               ; preds = %317, %5
  %47 = load i32, ptr %33, align 4, !dbg !534
  %48 = icmp sgt i32 %47, 0, !dbg !536
  br i1 %48, label %49, label %320, !dbg !537

49:                                               ; preds = %46
  %50 = load ptr, ptr %28, align 8, !dbg !538
  %51 = getelementptr inbounds i16, ptr %50, i64 8, !dbg !538
  %52 = load i16, ptr %51, align 2, !dbg !538
  %53 = sext i16 %52 to i32, !dbg !538
  %54 = load ptr, ptr %28, align 8, !dbg !541
  %55 = getelementptr inbounds i16, ptr %54, i64 16, !dbg !541
  %56 = load i16, ptr %55, align 2, !dbg !541
  %57 = sext i16 %56 to i32, !dbg !541
  %58 = or i32 %53, %57, !dbg !542
  %59 = load ptr, ptr %28, align 8, !dbg !543
  %60 = getelementptr inbounds i16, ptr %59, i64 24, !dbg !543
  %61 = load i16, ptr %60, align 2, !dbg !543
  %62 = sext i16 %61 to i32, !dbg !543
  %63 = or i32 %58, %62, !dbg !544
  %64 = load ptr, ptr %28, align 8, !dbg !545
  %65 = getelementptr inbounds i16, ptr %64, i64 32, !dbg !545
  %66 = load i16, ptr %65, align 2, !dbg !545
  %67 = sext i16 %66 to i32, !dbg !545
  %68 = or i32 %63, %67, !dbg !546
  %69 = load ptr, ptr %28, align 8, !dbg !547
  %70 = getelementptr inbounds i16, ptr %69, i64 40, !dbg !547
  %71 = load i16, ptr %70, align 2, !dbg !547
  %72 = sext i16 %71 to i32, !dbg !547
  %73 = or i32 %68, %72, !dbg !548
  %74 = load ptr, ptr %28, align 8, !dbg !549
  %75 = getelementptr inbounds i16, ptr %74, i64 48, !dbg !549
  %76 = load i16, ptr %75, align 2, !dbg !549
  %77 = sext i16 %76 to i32, !dbg !549
  %78 = or i32 %73, %77, !dbg !550
  %79 = load ptr, ptr %28, align 8, !dbg !551
  %80 = getelementptr inbounds i16, ptr %79, i64 56, !dbg !551
  %81 = load i16, ptr %80, align 2, !dbg !551
  %82 = sext i16 %81 to i32, !dbg !551
  %83 = or i32 %78, %82, !dbg !552
  %84 = icmp eq i32 %83, 0, !dbg !553
  br i1 %84, label %85, label %124, !dbg !553

85:                                               ; preds = %49
    #dbg_declare(ptr %35, !554, !DIExpression(), !556)
  %86 = load ptr, ptr %28, align 8, !dbg !557
  %87 = getelementptr inbounds i16, ptr %86, i64 0, !dbg !557
  %88 = load i16, ptr %87, align 2, !dbg !557
  %89 = sext i16 %88 to i32, !dbg !557
  %90 = load ptr, ptr %29, align 8, !dbg !557
  %91 = getelementptr inbounds i32, ptr %90, i64 0, !dbg !557
  %92 = load i32, ptr %91, align 4, !dbg !557
  %93 = mul nsw i32 %89, %92, !dbg !557
  store i32 %93, ptr %35, align 4, !dbg !556
  %94 = load i32, ptr %35, align 4, !dbg !558
  %95 = load ptr, ptr %30, align 8, !dbg !559
  %96 = getelementptr inbounds i32, ptr %95, i64 0, !dbg !559
  store i32 %94, ptr %96, align 4, !dbg !560
  %97 = load i32, ptr %35, align 4, !dbg !561
  %98 = load ptr, ptr %30, align 8, !dbg !562
  %99 = getelementptr inbounds i32, ptr %98, i64 8, !dbg !562
  store i32 %97, ptr %99, align 4, !dbg !563
  %100 = load i32, ptr %35, align 4, !dbg !564
  %101 = load ptr, ptr %30, align 8, !dbg !565
  %102 = getelementptr inbounds i32, ptr %101, i64 16, !dbg !565
  store i32 %100, ptr %102, align 4, !dbg !566
  %103 = load i32, ptr %35, align 4, !dbg !567
  %104 = load ptr, ptr %30, align 8, !dbg !568
  %105 = getelementptr inbounds i32, ptr %104, i64 24, !dbg !568
  store i32 %103, ptr %105, align 4, !dbg !569
  %106 = load i32, ptr %35, align 4, !dbg !570
  %107 = load ptr, ptr %30, align 8, !dbg !571
  %108 = getelementptr inbounds i32, ptr %107, i64 32, !dbg !571
  store i32 %106, ptr %108, align 4, !dbg !572
  %109 = load i32, ptr %35, align 4, !dbg !573
  %110 = load ptr, ptr %30, align 8, !dbg !574
  %111 = getelementptr inbounds i32, ptr %110, i64 40, !dbg !574
  store i32 %109, ptr %111, align 4, !dbg !575
  %112 = load i32, ptr %35, align 4, !dbg !576
  %113 = load ptr, ptr %30, align 8, !dbg !577
  %114 = getelementptr inbounds i32, ptr %113, i64 48, !dbg !577
  store i32 %112, ptr %114, align 4, !dbg !578
  %115 = load i32, ptr %35, align 4, !dbg !579
  %116 = load ptr, ptr %30, align 8, !dbg !580
  %117 = getelementptr inbounds i32, ptr %116, i64 56, !dbg !580
  store i32 %115, ptr %117, align 4, !dbg !581
  %118 = load ptr, ptr %28, align 8, !dbg !582
  %119 = getelementptr inbounds nuw i16, ptr %118, i32 1, !dbg !582
  store ptr %119, ptr %28, align 8, !dbg !582
  %120 = load ptr, ptr %29, align 8, !dbg !583
  %121 = getelementptr inbounds nuw i32, ptr %120, i32 1, !dbg !583
  store ptr %121, ptr %29, align 8, !dbg !583
  %122 = load ptr, ptr %30, align 8, !dbg !584
  %123 = getelementptr inbounds nuw i32, ptr %122, i32 1, !dbg !584
  store ptr %123, ptr %30, align 8, !dbg !584
  br label %317, !dbg !585

124:                                              ; preds = %49
  %125 = load ptr, ptr %28, align 8, !dbg !586
  %126 = getelementptr inbounds i16, ptr %125, i64 0, !dbg !586
  %127 = load i16, ptr %126, align 2, !dbg !586
  %128 = sext i16 %127 to i32, !dbg !586
  %129 = load ptr, ptr %29, align 8, !dbg !586
  %130 = getelementptr inbounds i32, ptr %129, i64 0, !dbg !586
  %131 = load i32, ptr %130, align 4, !dbg !586
  %132 = mul nsw i32 %128, %131, !dbg !586
  store i32 %132, ptr %11, align 4, !dbg !587
  %133 = load ptr, ptr %28, align 8, !dbg !588
  %134 = getelementptr inbounds i16, ptr %133, i64 16, !dbg !588
  %135 = load i16, ptr %134, align 2, !dbg !588
  %136 = sext i16 %135 to i32, !dbg !588
  %137 = load ptr, ptr %29, align 8, !dbg !588
  %138 = getelementptr inbounds i32, ptr %137, i64 16, !dbg !588
  %139 = load i32, ptr %138, align 4, !dbg !588
  %140 = mul nsw i32 %136, %139, !dbg !588
  store i32 %140, ptr %12, align 4, !dbg !589
  %141 = load ptr, ptr %28, align 8, !dbg !590
  %142 = getelementptr inbounds i16, ptr %141, i64 32, !dbg !590
  %143 = load i16, ptr %142, align 2, !dbg !590
  %144 = sext i16 %143 to i32, !dbg !590
  %145 = load ptr, ptr %29, align 8, !dbg !590
  %146 = getelementptr inbounds i32, ptr %145, i64 32, !dbg !590
  %147 = load i32, ptr %146, align 4, !dbg !590
  %148 = mul nsw i32 %144, %147, !dbg !590
  store i32 %148, ptr %13, align 4, !dbg !591
  %149 = load ptr, ptr %28, align 8, !dbg !592
  %150 = getelementptr inbounds i16, ptr %149, i64 48, !dbg !592
  %151 = load i16, ptr %150, align 2, !dbg !592
  %152 = sext i16 %151 to i32, !dbg !592
  %153 = load ptr, ptr %29, align 8, !dbg !592
  %154 = getelementptr inbounds i32, ptr %153, i64 48, !dbg !592
  %155 = load i32, ptr %154, align 4, !dbg !592
  %156 = mul nsw i32 %152, %155, !dbg !592
  store i32 %156, ptr %14, align 4, !dbg !593
  %157 = load i32, ptr %11, align 4, !dbg !594
  %158 = load i32, ptr %13, align 4, !dbg !595
  %159 = add nsw i32 %157, %158, !dbg !596
  store i32 %159, ptr %19, align 4, !dbg !597
  %160 = load i32, ptr %11, align 4, !dbg !598
  %161 = load i32, ptr %13, align 4, !dbg !599
  %162 = sub nsw i32 %160, %161, !dbg !600
  store i32 %162, ptr %20, align 4, !dbg !601
  %163 = load i32, ptr %12, align 4, !dbg !602
  %164 = load i32, ptr %14, align 4, !dbg !603
  %165 = add nsw i32 %163, %164, !dbg !604
  store i32 %165, ptr %22, align 4, !dbg !605
  %166 = load i32, ptr %12, align 4, !dbg !606
  %167 = load i32, ptr %14, align 4, !dbg !606
  %168 = sub nsw i32 %166, %167, !dbg !606
  %169 = sext i32 %168 to i64, !dbg !606
  %170 = mul nsw i64 %169, 362, !dbg !606
  %171 = ashr i64 %170, 8, !dbg !606
  %172 = trunc i64 %171 to i32, !dbg !606
  %173 = load i32, ptr %22, align 4, !dbg !607
  %174 = sub nsw i32 %172, %173, !dbg !608
  store i32 %174, ptr %21, align 4, !dbg !609
  %175 = load i32, ptr %19, align 4, !dbg !610
  %176 = load i32, ptr %22, align 4, !dbg !611
  %177 = add nsw i32 %175, %176, !dbg !612
  store i32 %177, ptr %11, align 4, !dbg !613
  %178 = load i32, ptr %19, align 4, !dbg !614
  %179 = load i32, ptr %22, align 4, !dbg !615
  %180 = sub nsw i32 %178, %179, !dbg !616
  store i32 %180, ptr %14, align 4, !dbg !617
  %181 = load i32, ptr %20, align 4, !dbg !618
  %182 = load i32, ptr %21, align 4, !dbg !619
  %183 = add nsw i32 %181, %182, !dbg !620
  store i32 %183, ptr %12, align 4, !dbg !621
  %184 = load i32, ptr %20, align 4, !dbg !622
  %185 = load i32, ptr %21, align 4, !dbg !623
  %186 = sub nsw i32 %184, %185, !dbg !624
  store i32 %186, ptr %13, align 4, !dbg !625
  %187 = load ptr, ptr %28, align 8, !dbg !626
  %188 = getelementptr inbounds i16, ptr %187, i64 8, !dbg !626
  %189 = load i16, ptr %188, align 2, !dbg !626
  %190 = sext i16 %189 to i32, !dbg !626
  %191 = load ptr, ptr %29, align 8, !dbg !626
  %192 = getelementptr inbounds i32, ptr %191, i64 8, !dbg !626
  %193 = load i32, ptr %192, align 4, !dbg !626
  %194 = mul nsw i32 %190, %193, !dbg !626
  store i32 %194, ptr %15, align 4, !dbg !627
  %195 = load ptr, ptr %28, align 8, !dbg !628
  %196 = getelementptr inbounds i16, ptr %195, i64 24, !dbg !628
  %197 = load i16, ptr %196, align 2, !dbg !628
  %198 = sext i16 %197 to i32, !dbg !628
  %199 = load ptr, ptr %29, align 8, !dbg !628
  %200 = getelementptr inbounds i32, ptr %199, i64 24, !dbg !628
  %201 = load i32, ptr %200, align 4, !dbg !628
  %202 = mul nsw i32 %198, %201, !dbg !628
  store i32 %202, ptr %16, align 4, !dbg !629
  %203 = load ptr, ptr %28, align 8, !dbg !630
  %204 = getelementptr inbounds i16, ptr %203, i64 40, !dbg !630
  %205 = load i16, ptr %204, align 2, !dbg !630
  %206 = sext i16 %205 to i32, !dbg !630
  %207 = load ptr, ptr %29, align 8, !dbg !630
  %208 = getelementptr inbounds i32, ptr %207, i64 40, !dbg !630
  %209 = load i32, ptr %208, align 4, !dbg !630
  %210 = mul nsw i32 %206, %209, !dbg !630
  store i32 %210, ptr %17, align 4, !dbg !631
  %211 = load ptr, ptr %28, align 8, !dbg !632
  %212 = getelementptr inbounds i16, ptr %211, i64 56, !dbg !632
  %213 = load i16, ptr %212, align 2, !dbg !632
  %214 = sext i16 %213 to i32, !dbg !632
  %215 = load ptr, ptr %29, align 8, !dbg !632
  %216 = getelementptr inbounds i32, ptr %215, i64 56, !dbg !632
  %217 = load i32, ptr %216, align 4, !dbg !632
  %218 = mul nsw i32 %214, %217, !dbg !632
  store i32 %218, ptr %18, align 4, !dbg !633
  %219 = load i32, ptr %17, align 4, !dbg !634
  %220 = load i32, ptr %16, align 4, !dbg !635
  %221 = add nsw i32 %219, %220, !dbg !636
  store i32 %221, ptr %27, align 4, !dbg !637
  %222 = load i32, ptr %17, align 4, !dbg !638
  %223 = load i32, ptr %16, align 4, !dbg !639
  %224 = sub nsw i32 %222, %223, !dbg !640
  store i32 %224, ptr %24, align 4, !dbg !641
  %225 = load i32, ptr %15, align 4, !dbg !642
  %226 = load i32, ptr %18, align 4, !dbg !643
  %227 = add nsw i32 %225, %226, !dbg !644
  store i32 %227, ptr %25, align 4, !dbg !645
  %228 = load i32, ptr %15, align 4, !dbg !646
  %229 = load i32, ptr %18, align 4, !dbg !647
  %230 = sub nsw i32 %228, %229, !dbg !648
  store i32 %230, ptr %26, align 4, !dbg !649
  %231 = load i32, ptr %25, align 4, !dbg !650
  %232 = load i32, ptr %27, align 4, !dbg !651
  %233 = add nsw i32 %231, %232, !dbg !652
  store i32 %233, ptr %18, align 4, !dbg !653
  %234 = load i32, ptr %25, align 4, !dbg !654
  %235 = load i32, ptr %27, align 4, !dbg !654
  %236 = sub nsw i32 %234, %235, !dbg !654
  %237 = sext i32 %236 to i64, !dbg !654
  %238 = mul nsw i64 %237, 362, !dbg !654
  %239 = ashr i64 %238, 8, !dbg !654
  %240 = trunc i64 %239 to i32, !dbg !654
  store i32 %240, ptr %20, align 4, !dbg !655
  %241 = load i32, ptr %24, align 4, !dbg !656
  %242 = load i32, ptr %26, align 4, !dbg !656
  %243 = add nsw i32 %241, %242, !dbg !656
  %244 = sext i32 %243 to i64, !dbg !656
  %245 = mul nsw i64 %244, 473, !dbg !656
  %246 = ashr i64 %245, 8, !dbg !656
  %247 = trunc i64 %246 to i32, !dbg !656
  store i32 %247, ptr %23, align 4, !dbg !657
  %248 = load i32, ptr %26, align 4, !dbg !658
  %249 = sext i32 %248 to i64, !dbg !658
  %250 = mul nsw i64 %249, 277, !dbg !658
  %251 = ashr i64 %250, 8, !dbg !658
  %252 = trunc i64 %251 to i32, !dbg !658
  %253 = load i32, ptr %23, align 4, !dbg !659
  %254 = sub nsw i32 %252, %253, !dbg !660
  store i32 %254, ptr %19, align 4, !dbg !661
  %255 = load i32, ptr %24, align 4, !dbg !662
  %256 = sext i32 %255 to i64, !dbg !662
  %257 = mul nsw i64 %256, -669, !dbg !662
  %258 = ashr i64 %257, 8, !dbg !662
  %259 = trunc i64 %258 to i32, !dbg !662
  %260 = load i32, ptr %23, align 4, !dbg !663
  %261 = add nsw i32 %259, %260, !dbg !664
  store i32 %261, ptr %21, align 4, !dbg !665
  %262 = load i32, ptr %21, align 4, !dbg !666
  %263 = load i32, ptr %18, align 4, !dbg !667
  %264 = sub nsw i32 %262, %263, !dbg !668
  store i32 %264, ptr %17, align 4, !dbg !669
  %265 = load i32, ptr %20, align 4, !dbg !670
  %266 = load i32, ptr %17, align 4, !dbg !671
  %267 = sub nsw i32 %265, %266, !dbg !672
  store i32 %267, ptr %16, align 4, !dbg !673
  %268 = load i32, ptr %19, align 4, !dbg !674
  %269 = load i32, ptr %16, align 4, !dbg !675
  %270 = add nsw i32 %268, %269, !dbg !676
  store i32 %270, ptr %15, align 4, !dbg !677
  %271 = load i32, ptr %11, align 4, !dbg !678
  %272 = load i32, ptr %18, align 4, !dbg !679
  %273 = add nsw i32 %271, %272, !dbg !680
  %274 = load ptr, ptr %30, align 8, !dbg !681
  %275 = getelementptr inbounds i32, ptr %274, i64 0, !dbg !681
  store i32 %273, ptr %275, align 4, !dbg !682
  %276 = load i32, ptr %11, align 4, !dbg !683
  %277 = load i32, ptr %18, align 4, !dbg !684
  %278 = sub nsw i32 %276, %277, !dbg !685
  %279 = load ptr, ptr %30, align 8, !dbg !686
  %280 = getelementptr inbounds i32, ptr %279, i64 56, !dbg !686
  store i32 %278, ptr %280, align 4, !dbg !687
  %281 = load i32, ptr %12, align 4, !dbg !688
  %282 = load i32, ptr %17, align 4, !dbg !689
  %283 = add nsw i32 %281, %282, !dbg !690
  %284 = load ptr, ptr %30, align 8, !dbg !691
  %285 = getelementptr inbounds i32, ptr %284, i64 8, !dbg !691
  store i32 %283, ptr %285, align 4, !dbg !692
  %286 = load i32, ptr %12, align 4, !dbg !693
  %287 = load i32, ptr %17, align 4, !dbg !694
  %288 = sub nsw i32 %286, %287, !dbg !695
  %289 = load ptr, ptr %30, align 8, !dbg !696
  %290 = getelementptr inbounds i32, ptr %289, i64 48, !dbg !696
  store i32 %288, ptr %290, align 4, !dbg !697
  %291 = load i32, ptr %13, align 4, !dbg !698
  %292 = load i32, ptr %16, align 4, !dbg !699
  %293 = add nsw i32 %291, %292, !dbg !700
  %294 = load ptr, ptr %30, align 8, !dbg !701
  %295 = getelementptr inbounds i32, ptr %294, i64 16, !dbg !701
  store i32 %293, ptr %295, align 4, !dbg !702
  %296 = load i32, ptr %13, align 4, !dbg !703
  %297 = load i32, ptr %16, align 4, !dbg !704
  %298 = sub nsw i32 %296, %297, !dbg !705
  %299 = load ptr, ptr %30, align 8, !dbg !706
  %300 = getelementptr inbounds i32, ptr %299, i64 40, !dbg !706
  store i32 %298, ptr %300, align 4, !dbg !707
  %301 = load i32, ptr %14, align 4, !dbg !708
  %302 = load i32, ptr %15, align 4, !dbg !709
  %303 = add nsw i32 %301, %302, !dbg !710
  %304 = load ptr, ptr %30, align 8, !dbg !711
  %305 = getelementptr inbounds i32, ptr %304, i64 32, !dbg !711
  store i32 %303, ptr %305, align 4, !dbg !712
  %306 = load i32, ptr %14, align 4, !dbg !713
  %307 = load i32, ptr %15, align 4, !dbg !714
  %308 = sub nsw i32 %306, %307, !dbg !715
  %309 = load ptr, ptr %30, align 8, !dbg !716
  %310 = getelementptr inbounds i32, ptr %309, i64 24, !dbg !716
  store i32 %308, ptr %310, align 4, !dbg !717
  %311 = load ptr, ptr %28, align 8, !dbg !718
  %312 = getelementptr inbounds nuw i16, ptr %311, i32 1, !dbg !718
  store ptr %312, ptr %28, align 8, !dbg !718
  %313 = load ptr, ptr %29, align 8, !dbg !719
  %314 = getelementptr inbounds nuw i32, ptr %313, i32 1, !dbg !719
  store ptr %314, ptr %29, align 8, !dbg !719
  %315 = load ptr, ptr %30, align 8, !dbg !720
  %316 = getelementptr inbounds nuw i32, ptr %315, i32 1, !dbg !720
  store ptr %316, ptr %30, align 8, !dbg !720
  br label %317, !dbg !721

317:                                              ; preds = %124, %85
  %318 = load i32, ptr %33, align 4, !dbg !722
  %319 = add nsw i32 %318, -1, !dbg !722
  store i32 %319, ptr %33, align 4, !dbg !722
  br label %46, !dbg !723, !llvm.loop !724

320:                                              ; preds = %46
  %321 = getelementptr inbounds [64 x i32], ptr %34, i64 0, i64 0, !dbg !727
  store ptr %321, ptr %30, align 8, !dbg !728
  store i32 0, ptr %33, align 4, !dbg !729
  br label %322, !dbg !731

322:                                              ; preds = %603, %320
  %323 = load i32, ptr %33, align 4, !dbg !732
  %324 = icmp slt i32 %323, 8, !dbg !734
  br i1 %324, label %325, label %606, !dbg !735

325:                                              ; preds = %322
  %326 = load ptr, ptr %9, align 8, !dbg !736
  %327 = load i32, ptr %33, align 4, !dbg !738
  %328 = sext i32 %327 to i64, !dbg !736
  %329 = getelementptr inbounds ptr, ptr %326, i64 %328, !dbg !736
  %330 = load ptr, ptr %329, align 8, !dbg !736
  %331 = load i32, ptr %10, align 4, !dbg !739
  %332 = zext i32 %331 to i64, !dbg !740
  %333 = getelementptr inbounds nuw i8, ptr %330, i64 %332, !dbg !740
  store ptr %333, ptr %31, align 8, !dbg !741
  %334 = load ptr, ptr %30, align 8, !dbg !742
  %335 = getelementptr inbounds i32, ptr %334, i64 1, !dbg !742
  %336 = load i32, ptr %335, align 4, !dbg !742
  %337 = load ptr, ptr %30, align 8, !dbg !744
  %338 = getelementptr inbounds i32, ptr %337, i64 2, !dbg !744
  %339 = load i32, ptr %338, align 4, !dbg !744
  %340 = or i32 %336, %339, !dbg !745
  %341 = load ptr, ptr %30, align 8, !dbg !746
  %342 = getelementptr inbounds i32, ptr %341, i64 3, !dbg !746
  %343 = load i32, ptr %342, align 4, !dbg !746
  %344 = or i32 %340, %343, !dbg !747
  %345 = load ptr, ptr %30, align 8, !dbg !748
  %346 = getelementptr inbounds i32, ptr %345, i64 4, !dbg !748
  %347 = load i32, ptr %346, align 4, !dbg !748
  %348 = or i32 %344, %347, !dbg !749
  %349 = load ptr, ptr %30, align 8, !dbg !750
  %350 = getelementptr inbounds i32, ptr %349, i64 5, !dbg !750
  %351 = load i32, ptr %350, align 4, !dbg !750
  %352 = or i32 %348, %351, !dbg !751
  %353 = load ptr, ptr %30, align 8, !dbg !752
  %354 = getelementptr inbounds i32, ptr %353, i64 6, !dbg !752
  %355 = load i32, ptr %354, align 4, !dbg !752
  %356 = or i32 %352, %355, !dbg !753
  %357 = load ptr, ptr %30, align 8, !dbg !754
  %358 = getelementptr inbounds i32, ptr %357, i64 7, !dbg !754
  %359 = load i32, ptr %358, align 4, !dbg !754
  %360 = or i32 %356, %359, !dbg !755
  %361 = icmp eq i32 %360, 0, !dbg !756
  br i1 %361, label %362, label %398, !dbg !756

362:                                              ; preds = %325
    #dbg_declare(ptr %36, !757, !DIExpression(), !759)
  %363 = load ptr, ptr %32, align 8, !dbg !760
  %364 = load ptr, ptr %30, align 8, !dbg !761
  %365 = getelementptr inbounds i32, ptr %364, i64 0, !dbg !761
  %366 = load i32, ptr %365, align 4, !dbg !761
  %367 = ashr i32 %366, 5, !dbg !761
  %368 = and i32 %367, 1023, !dbg !762
  %369 = sext i32 %368 to i64, !dbg !760
  %370 = getelementptr inbounds i8, ptr %363, i64 %369, !dbg !760
  %371 = load i8, ptr %370, align 1, !dbg !760
  store i8 %371, ptr %36, align 1, !dbg !759
  %372 = load i8, ptr %36, align 1, !dbg !763
  %373 = load ptr, ptr %31, align 8, !dbg !764
  %374 = getelementptr inbounds i8, ptr %373, i64 0, !dbg !764
  store i8 %372, ptr %374, align 1, !dbg !765
  %375 = load i8, ptr %36, align 1, !dbg !766
  %376 = load ptr, ptr %31, align 8, !dbg !767
  %377 = getelementptr inbounds i8, ptr %376, i64 1, !dbg !767
  store i8 %375, ptr %377, align 1, !dbg !768
  %378 = load i8, ptr %36, align 1, !dbg !769
  %379 = load ptr, ptr %31, align 8, !dbg !770
  %380 = getelementptr inbounds i8, ptr %379, i64 2, !dbg !770
  store i8 %378, ptr %380, align 1, !dbg !771
  %381 = load i8, ptr %36, align 1, !dbg !772
  %382 = load ptr, ptr %31, align 8, !dbg !773
  %383 = getelementptr inbounds i8, ptr %382, i64 3, !dbg !773
  store i8 %381, ptr %383, align 1, !dbg !774
  %384 = load i8, ptr %36, align 1, !dbg !775
  %385 = load ptr, ptr %31, align 8, !dbg !776
  %386 = getelementptr inbounds i8, ptr %385, i64 4, !dbg !776
  store i8 %384, ptr %386, align 1, !dbg !777
  %387 = load i8, ptr %36, align 1, !dbg !778
  %388 = load ptr, ptr %31, align 8, !dbg !779
  %389 = getelementptr inbounds i8, ptr %388, i64 5, !dbg !779
  store i8 %387, ptr %389, align 1, !dbg !780
  %390 = load i8, ptr %36, align 1, !dbg !781
  %391 = load ptr, ptr %31, align 8, !dbg !782
  %392 = getelementptr inbounds i8, ptr %391, i64 6, !dbg !782
  store i8 %390, ptr %392, align 1, !dbg !783
  %393 = load i8, ptr %36, align 1, !dbg !784
  %394 = load ptr, ptr %31, align 8, !dbg !785
  %395 = getelementptr inbounds i8, ptr %394, i64 7, !dbg !785
  store i8 %393, ptr %395, align 1, !dbg !786
  %396 = load ptr, ptr %30, align 8, !dbg !787
  %397 = getelementptr inbounds i32, ptr %396, i64 8, !dbg !787
  store ptr %397, ptr %30, align 8, !dbg !787
  br label %603, !dbg !788

398:                                              ; preds = %325
  %399 = load ptr, ptr %30, align 8, !dbg !789
  %400 = getelementptr inbounds i32, ptr %399, i64 0, !dbg !789
  %401 = load i32, ptr %400, align 4, !dbg !789
  %402 = load ptr, ptr %30, align 8, !dbg !790
  %403 = getelementptr inbounds i32, ptr %402, i64 4, !dbg !790
  %404 = load i32, ptr %403, align 4, !dbg !790
  %405 = add nsw i32 %401, %404, !dbg !791
  store i32 %405, ptr %19, align 4, !dbg !792
  %406 = load ptr, ptr %30, align 8, !dbg !793
  %407 = getelementptr inbounds i32, ptr %406, i64 0, !dbg !793
  %408 = load i32, ptr %407, align 4, !dbg !793
  %409 = load ptr, ptr %30, align 8, !dbg !794
  %410 = getelementptr inbounds i32, ptr %409, i64 4, !dbg !794
  %411 = load i32, ptr %410, align 4, !dbg !794
  %412 = sub nsw i32 %408, %411, !dbg !795
  store i32 %412, ptr %20, align 4, !dbg !796
  %413 = load ptr, ptr %30, align 8, !dbg !797
  %414 = getelementptr inbounds i32, ptr %413, i64 2, !dbg !797
  %415 = load i32, ptr %414, align 4, !dbg !797
  %416 = load ptr, ptr %30, align 8, !dbg !798
  %417 = getelementptr inbounds i32, ptr %416, i64 6, !dbg !798
  %418 = load i32, ptr %417, align 4, !dbg !798
  %419 = add nsw i32 %415, %418, !dbg !799
  store i32 %419, ptr %22, align 4, !dbg !800
  %420 = load ptr, ptr %30, align 8, !dbg !801
  %421 = getelementptr inbounds i32, ptr %420, i64 2, !dbg !801
  %422 = load i32, ptr %421, align 4, !dbg !801
  %423 = load ptr, ptr %30, align 8, !dbg !801
  %424 = getelementptr inbounds i32, ptr %423, i64 6, !dbg !801
  %425 = load i32, ptr %424, align 4, !dbg !801
  %426 = sub nsw i32 %422, %425, !dbg !801
  %427 = sext i32 %426 to i64, !dbg !801
  %428 = mul nsw i64 %427, 362, !dbg !801
  %429 = ashr i64 %428, 8, !dbg !801
  %430 = trunc i64 %429 to i32, !dbg !801
  %431 = load i32, ptr %22, align 4, !dbg !802
  %432 = sub nsw i32 %430, %431, !dbg !803
  store i32 %432, ptr %21, align 4, !dbg !804
  %433 = load i32, ptr %19, align 4, !dbg !805
  %434 = load i32, ptr %22, align 4, !dbg !806
  %435 = add nsw i32 %433, %434, !dbg !807
  store i32 %435, ptr %11, align 4, !dbg !808
  %436 = load i32, ptr %19, align 4, !dbg !809
  %437 = load i32, ptr %22, align 4, !dbg !810
  %438 = sub nsw i32 %436, %437, !dbg !811
  store i32 %438, ptr %14, align 4, !dbg !812
  %439 = load i32, ptr %20, align 4, !dbg !813
  %440 = load i32, ptr %21, align 4, !dbg !814
  %441 = add nsw i32 %439, %440, !dbg !815
  store i32 %441, ptr %12, align 4, !dbg !816
  %442 = load i32, ptr %20, align 4, !dbg !817
  %443 = load i32, ptr %21, align 4, !dbg !818
  %444 = sub nsw i32 %442, %443, !dbg !819
  store i32 %444, ptr %13, align 4, !dbg !820
  %445 = load ptr, ptr %30, align 8, !dbg !821
  %446 = getelementptr inbounds i32, ptr %445, i64 5, !dbg !821
  %447 = load i32, ptr %446, align 4, !dbg !821
  %448 = load ptr, ptr %30, align 8, !dbg !822
  %449 = getelementptr inbounds i32, ptr %448, i64 3, !dbg !822
  %450 = load i32, ptr %449, align 4, !dbg !822
  %451 = add nsw i32 %447, %450, !dbg !823
  store i32 %451, ptr %27, align 4, !dbg !824
  %452 = load ptr, ptr %30, align 8, !dbg !825
  %453 = getelementptr inbounds i32, ptr %452, i64 5, !dbg !825
  %454 = load i32, ptr %453, align 4, !dbg !825
  %455 = load ptr, ptr %30, align 8, !dbg !826
  %456 = getelementptr inbounds i32, ptr %455, i64 3, !dbg !826
  %457 = load i32, ptr %456, align 4, !dbg !826
  %458 = sub nsw i32 %454, %457, !dbg !827
  store i32 %458, ptr %24, align 4, !dbg !828
  %459 = load ptr, ptr %30, align 8, !dbg !829
  %460 = getelementptr inbounds i32, ptr %459, i64 1, !dbg !829
  %461 = load i32, ptr %460, align 4, !dbg !829
  %462 = load ptr, ptr %30, align 8, !dbg !830
  %463 = getelementptr inbounds i32, ptr %462, i64 7, !dbg !830
  %464 = load i32, ptr %463, align 4, !dbg !830
  %465 = add nsw i32 %461, %464, !dbg !831
  store i32 %465, ptr %25, align 4, !dbg !832
  %466 = load ptr, ptr %30, align 8, !dbg !833
  %467 = getelementptr inbounds i32, ptr %466, i64 1, !dbg !833
  %468 = load i32, ptr %467, align 4, !dbg !833
  %469 = load ptr, ptr %30, align 8, !dbg !834
  %470 = getelementptr inbounds i32, ptr %469, i64 7, !dbg !834
  %471 = load i32, ptr %470, align 4, !dbg !834
  %472 = sub nsw i32 %468, %471, !dbg !835
  store i32 %472, ptr %26, align 4, !dbg !836
  %473 = load i32, ptr %25, align 4, !dbg !837
  %474 = load i32, ptr %27, align 4, !dbg !838
  %475 = add nsw i32 %473, %474, !dbg !839
  store i32 %475, ptr %18, align 4, !dbg !840
  %476 = load i32, ptr %25, align 4, !dbg !841
  %477 = load i32, ptr %27, align 4, !dbg !841
  %478 = sub nsw i32 %476, %477, !dbg !841
  %479 = sext i32 %478 to i64, !dbg !841
  %480 = mul nsw i64 %479, 362, !dbg !841
  %481 = ashr i64 %480, 8, !dbg !841
  %482 = trunc i64 %481 to i32, !dbg !841
  store i32 %482, ptr %20, align 4, !dbg !842
  %483 = load i32, ptr %24, align 4, !dbg !843
  %484 = load i32, ptr %26, align 4, !dbg !843
  %485 = add nsw i32 %483, %484, !dbg !843
  %486 = sext i32 %485 to i64, !dbg !843
  %487 = mul nsw i64 %486, 473, !dbg !843
  %488 = ashr i64 %487, 8, !dbg !843
  %489 = trunc i64 %488 to i32, !dbg !843
  store i32 %489, ptr %23, align 4, !dbg !844
  %490 = load i32, ptr %26, align 4, !dbg !845
  %491 = sext i32 %490 to i64, !dbg !845
  %492 = mul nsw i64 %491, 277, !dbg !845
  %493 = ashr i64 %492, 8, !dbg !845
  %494 = trunc i64 %493 to i32, !dbg !845
  %495 = load i32, ptr %23, align 4, !dbg !846
  %496 = sub nsw i32 %494, %495, !dbg !847
  store i32 %496, ptr %19, align 4, !dbg !848
  %497 = load i32, ptr %24, align 4, !dbg !849
  %498 = sext i32 %497 to i64, !dbg !849
  %499 = mul nsw i64 %498, -669, !dbg !849
  %500 = ashr i64 %499, 8, !dbg !849
  %501 = trunc i64 %500 to i32, !dbg !849
  %502 = load i32, ptr %23, align 4, !dbg !850
  %503 = add nsw i32 %501, %502, !dbg !851
  store i32 %503, ptr %21, align 4, !dbg !852
  %504 = load i32, ptr %21, align 4, !dbg !853
  %505 = load i32, ptr %18, align 4, !dbg !854
  %506 = sub nsw i32 %504, %505, !dbg !855
  store i32 %506, ptr %17, align 4, !dbg !856
  %507 = load i32, ptr %20, align 4, !dbg !857
  %508 = load i32, ptr %17, align 4, !dbg !858
  %509 = sub nsw i32 %507, %508, !dbg !859
  store i32 %509, ptr %16, align 4, !dbg !860
  %510 = load i32, ptr %19, align 4, !dbg !861
  %511 = load i32, ptr %16, align 4, !dbg !862
  %512 = add nsw i32 %510, %511, !dbg !863
  store i32 %512, ptr %15, align 4, !dbg !864
  %513 = load ptr, ptr %32, align 8, !dbg !865
  %514 = load i32, ptr %11, align 4, !dbg !866
  %515 = load i32, ptr %18, align 4, !dbg !866
  %516 = add nsw i32 %514, %515, !dbg !866
  %517 = ashr i32 %516, 5, !dbg !866
  %518 = and i32 %517, 1023, !dbg !867
  %519 = sext i32 %518 to i64, !dbg !865
  %520 = getelementptr inbounds i8, ptr %513, i64 %519, !dbg !865
  %521 = load i8, ptr %520, align 1, !dbg !865
  %522 = load ptr, ptr %31, align 8, !dbg !868
  %523 = getelementptr inbounds i8, ptr %522, i64 0, !dbg !868
  store i8 %521, ptr %523, align 1, !dbg !869
  %524 = load ptr, ptr %32, align 8, !dbg !870
  %525 = load i32, ptr %11, align 4, !dbg !871
  %526 = load i32, ptr %18, align 4, !dbg !871
  %527 = sub nsw i32 %525, %526, !dbg !871
  %528 = ashr i32 %527, 5, !dbg !871
  %529 = and i32 %528, 1023, !dbg !872
  %530 = sext i32 %529 to i64, !dbg !870
  %531 = getelementptr inbounds i8, ptr %524, i64 %530, !dbg !870
  %532 = load i8, ptr %531, align 1, !dbg !870
  %533 = load ptr, ptr %31, align 8, !dbg !873
  %534 = getelementptr inbounds i8, ptr %533, i64 7, !dbg !873
  store i8 %532, ptr %534, align 1, !dbg !874
  %535 = load ptr, ptr %32, align 8, !dbg !875
  %536 = load i32, ptr %12, align 4, !dbg !876
  %537 = load i32, ptr %17, align 4, !dbg !876
  %538 = add nsw i32 %536, %537, !dbg !876
  %539 = ashr i32 %538, 5, !dbg !876
  %540 = and i32 %539, 1023, !dbg !877
  %541 = sext i32 %540 to i64, !dbg !875
  %542 = getelementptr inbounds i8, ptr %535, i64 %541, !dbg !875
  %543 = load i8, ptr %542, align 1, !dbg !875
  %544 = load ptr, ptr %31, align 8, !dbg !878
  %545 = getelementptr inbounds i8, ptr %544, i64 1, !dbg !878
  store i8 %543, ptr %545, align 1, !dbg !879
  %546 = load ptr, ptr %32, align 8, !dbg !880
  %547 = load i32, ptr %12, align 4, !dbg !881
  %548 = load i32, ptr %17, align 4, !dbg !881
  %549 = sub nsw i32 %547, %548, !dbg !881
  %550 = ashr i32 %549, 5, !dbg !881
  %551 = and i32 %550, 1023, !dbg !882
  %552 = sext i32 %551 to i64, !dbg !880
  %553 = getelementptr inbounds i8, ptr %546, i64 %552, !dbg !880
  %554 = load i8, ptr %553, align 1, !dbg !880
  %555 = load ptr, ptr %31, align 8, !dbg !883
  %556 = getelementptr inbounds i8, ptr %555, i64 6, !dbg !883
  store i8 %554, ptr %556, align 1, !dbg !884
  %557 = load ptr, ptr %32, align 8, !dbg !885
  %558 = load i32, ptr %13, align 4, !dbg !886
  %559 = load i32, ptr %16, align 4, !dbg !886
  %560 = add nsw i32 %558, %559, !dbg !886
  %561 = ashr i32 %560, 5, !dbg !886
  %562 = and i32 %561, 1023, !dbg !887
  %563 = sext i32 %562 to i64, !dbg !885
  %564 = getelementptr inbounds i8, ptr %557, i64 %563, !dbg !885
  %565 = load i8, ptr %564, align 1, !dbg !885
  %566 = load ptr, ptr %31, align 8, !dbg !888
  %567 = getelementptr inbounds i8, ptr %566, i64 2, !dbg !888
  store i8 %565, ptr %567, align 1, !dbg !889
  %568 = load ptr, ptr %32, align 8, !dbg !890
  %569 = load i32, ptr %13, align 4, !dbg !891
  %570 = load i32, ptr %16, align 4, !dbg !891
  %571 = sub nsw i32 %569, %570, !dbg !891
  %572 = ashr i32 %571, 5, !dbg !891
  %573 = and i32 %572, 1023, !dbg !892
  %574 = sext i32 %573 to i64, !dbg !890
  %575 = getelementptr inbounds i8, ptr %568, i64 %574, !dbg !890
  %576 = load i8, ptr %575, align 1, !dbg !890
  %577 = load ptr, ptr %31, align 8, !dbg !893
  %578 = getelementptr inbounds i8, ptr %577, i64 5, !dbg !893
  store i8 %576, ptr %578, align 1, !dbg !894
  %579 = load ptr, ptr %32, align 8, !dbg !895
  %580 = load i32, ptr %14, align 4, !dbg !896
  %581 = load i32, ptr %15, align 4, !dbg !896
  %582 = add nsw i32 %580, %581, !dbg !896
  %583 = ashr i32 %582, 5, !dbg !896
  %584 = and i32 %583, 1023, !dbg !897
  %585 = sext i32 %584 to i64, !dbg !895
  %586 = getelementptr inbounds i8, ptr %579, i64 %585, !dbg !895
  %587 = load i8, ptr %586, align 1, !dbg !895
  %588 = load ptr, ptr %31, align 8, !dbg !898
  %589 = getelementptr inbounds i8, ptr %588, i64 4, !dbg !898
  store i8 %587, ptr %589, align 1, !dbg !899
  %590 = load ptr, ptr %32, align 8, !dbg !900
  %591 = load i32, ptr %14, align 4, !dbg !901
  %592 = load i32, ptr %15, align 4, !dbg !901
  %593 = sub nsw i32 %591, %592, !dbg !901
  %594 = ashr i32 %593, 5, !dbg !901
  %595 = and i32 %594, 1023, !dbg !902
  %596 = sext i32 %595 to i64, !dbg !900
  %597 = getelementptr inbounds i8, ptr %590, i64 %596, !dbg !900
  %598 = load i8, ptr %597, align 1, !dbg !900
  %599 = load ptr, ptr %31, align 8, !dbg !903
  %600 = getelementptr inbounds i8, ptr %599, i64 3, !dbg !903
  store i8 %598, ptr %600, align 1, !dbg !904
  %601 = load ptr, ptr %30, align 8, !dbg !905
  %602 = getelementptr inbounds i32, ptr %601, i64 8, !dbg !905
  store ptr %602, ptr %30, align 8, !dbg !905
  br label %603, !dbg !906

603:                                              ; preds = %398, %362
  %604 = load i32, ptr %33, align 4, !dbg !907
  %605 = add nsw i32 %604, 1, !dbg !907
  store i32 %605, ptr %33, align 4, !dbg !907
  br label %322, !dbg !908, !llvm.loop !909

606:                                              ; preds = %322
  ret void, !dbg !911
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !30, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jidctfst.c", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "66032cdf37bce13681cc5aa3ab884d71")
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
!30 = !{!31, !34, !32, !35, !36}
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "IFAST_MULT_TYPE", file: !33, line: 58, baseType: !34)
!33 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jdct.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "18978d93cfb1aabf5618c3caa5dbcf5a")
!34 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "DCTELEM", file: !33, line: 30, baseType: !34)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT32", file: !37, line: 161, baseType: !38)
!37 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jmorecfg.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "56a0eda58fafa6bdd5498f702a998c09")
!38 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!39 = !{i32 7, !"Dwarf Version", i32 5}
!40 = !{i32 2, !"Debug Info Version", i32 3}
!41 = !{i32 1, !"wchar_size", i32 4}
!42 = !{i32 8, !"PIC Level", i32 2}
!43 = !{i32 7, !"PIE Level", i32 2}
!44 = !{i32 7, !"uwtable", i32 2}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)"}
!47 = distinct !DISubprogram(name: "jpeg_idct_ifast", scope: !1, file: !1, line: 168, type: !48, scopeLine: 171, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !463)
!48 = !DISubroutineType(types: !49)
!49 = !{null, !50, !279, !461, !84, !90}
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "j_decompress_ptr", file: !4, line: 250, baseType: !51)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_decompress_struct", file: !4, line: 394, size: 4928, elements: !53)
!53 = !{!54, !178, !179, !180, !181, !182, !208, !209, !210, !211, !213, !214, !215, !216, !218, !219, !220, !222, !223, !224, !225, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !247, !260, !276, !277, !278, !304, !305, !306, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !328, !329, !330, !331, !335, !336, !337, !338, !339, !340, !347, !361, !379, !388, !398, !413, !422, !431, !438, !447}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !52, file: !4, line: 395, baseType: !55, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_error_mgr", file: !4, line: 618, size: 1344, elements: !57)
!57 = !{!58, !146, !147, !148, !154, !155, !156, !167, !168, !169, !174, !175, !176, !177}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "error_exit", scope: !56, file: !4, line: 620, baseType: !59, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = !DISubroutineType(types: !61)
!61 = !{null, !62}
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "j_common_ptr", file: !4, line: 248, baseType: !63)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_common_struct", file: !4, line: 240, size: 256, elements: !65)
!65 = !{!66, !67, !135, !144, !145}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !64, file: !4, line: 241, baseType: !55, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !64, file: !4, line: 241, baseType: !68, size: 64, offset: 64)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_memory_mgr", file: !4, line: 731, size: 768, elements: !70)
!70 = !{!71, !79, !80, !91, !105, !113, !120, !121, !125, !129, !133, !134}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_small", scope: !69, file: !4, line: 733, baseType: !72, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DISubroutineType(types: !74)
!74 = !{!75, !62, !34, !76}
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !77, line: 18, baseType: !78)
!77 = !DIFile(filename: "/usr/local/lib/clang/20/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!78 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_large", scope: !69, file: !4, line: 735, baseType: !72, size: 64, offset: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_sarray", scope: !69, file: !4, line: 737, baseType: !81, size: 64, offset: 128)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = !DISubroutineType(types: !83)
!83 = !{!84, !62, !34, !90, !90}
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPARRAY", file: !4, line: 67, baseType: !85)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPROW", file: !4, line: 66, baseType: !87)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPLE", file: !37, line: 59, baseType: !89)
!89 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "JDIMENSION", file: !37, line: 171, baseType: !5)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_barray", scope: !69, file: !4, line: 740, baseType: !92, size: 64, offset: 192)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = !DISubroutineType(types: !94)
!94 = !{!95, !62, !34, !90, !90}
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "JBLOCKARRAY", file: !4, line: 72, baseType: !96)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "JBLOCKROW", file: !4, line: 71, baseType: !98)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "JBLOCK", file: !4, line: 70, baseType: !100)
!100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 1024, elements: !103)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "JCOEF", file: !37, line: 99, baseType: !102)
!102 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!103 = !{!104}
!104 = !DISubrange(count: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "request_virt_sarray", scope: !69, file: !4, line: 743, baseType: !106, size: 64, offset: 256)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = !DISubroutineType(types: !108)
!108 = !{!109, !62, !34, !112, !90, !90, !90}
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "jvirt_sarray_ptr", file: !4, line: 727, baseType: !110)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = !DICompositeType(tag: DW_TAG_structure_type, name: "jvirt_sarray_control", file: !4, line: 727, flags: DIFlagFwdDecl)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "boolean", file: !37, line: 227, baseType: !34)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "request_virt_barray", scope: !69, file: !4, line: 749, baseType: !114, size: 64, offset: 320)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DISubroutineType(types: !116)
!116 = !{!117, !62, !34, !112, !90, !90, !90}
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "jvirt_barray_ptr", file: !4, line: 728, baseType: !118)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = !DICompositeType(tag: DW_TAG_structure_type, name: "jvirt_barray_control", file: !4, line: 728, flags: DIFlagFwdDecl)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "realize_virt_arrays", scope: !69, file: !4, line: 755, baseType: !59, size: 64, offset: 384)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "access_virt_sarray", scope: !69, file: !4, line: 756, baseType: !122, size: 64, offset: 448)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DISubroutineType(types: !124)
!124 = !{!84, !62, !109, !90, !90, !112}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "access_virt_barray", scope: !69, file: !4, line: 761, baseType: !126, size: 64, offset: 512)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DISubroutineType(types: !128)
!128 = !{!95, !62, !117, !90, !90, !112}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "free_pool", scope: !69, file: !4, line: 766, baseType: !130, size: 64, offset: 576)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = !DISubroutineType(types: !132)
!132 = !{null, !62, !34}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "self_destruct", scope: !69, file: !4, line: 767, baseType: !59, size: 64, offset: 640)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "max_memory_to_use", scope: !69, file: !4, line: 774, baseType: !38, size: 64, offset: 704)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "progress", scope: !64, file: !4, line: 241, baseType: !136, size: 64, offset: 128)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_progress_mgr", file: !4, line: 676, size: 256, elements: !138)
!138 = !{!139, !140, !141, !142, !143}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "progress_monitor", scope: !137, file: !4, line: 677, baseType: !59, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "pass_counter", scope: !137, file: !4, line: 679, baseType: !38, size: 64, offset: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "pass_limit", scope: !137, file: !4, line: 680, baseType: !38, size: 64, offset: 128)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "completed_passes", scope: !137, file: !4, line: 681, baseType: !34, size: 32, offset: 192)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "total_passes", scope: !137, file: !4, line: 682, baseType: !34, size: 32, offset: 224)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "is_decompressor", scope: !64, file: !4, line: 241, baseType: !112, size: 32, offset: 192)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "global_state", scope: !64, file: !4, line: 241, baseType: !34, size: 32, offset: 224)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "emit_message", scope: !56, file: !4, line: 622, baseType: !130, size: 64, offset: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "output_message", scope: !56, file: !4, line: 624, baseType: !59, size: 64, offset: 128)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "format_message", scope: !56, file: !4, line: 626, baseType: !149, size: 64, offset: 192)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = !DISubroutineType(types: !151)
!151 = !{null, !62, !152}
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "reset_error_mgr", scope: !56, file: !4, line: 629, baseType: !59, size: 64, offset: 256)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "msg_code", scope: !56, file: !4, line: 634, baseType: !34, size: 32, offset: 320)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "msg_parm", scope: !56, file: !4, line: 639, baseType: !157, size: 640, offset: 352)
!157 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !56, file: !4, line: 636, size: 640, elements: !158)
!158 = !{!159, !163}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !157, file: !4, line: 637, baseType: !160, size: 256)
!160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 256, elements: !161)
!161 = !{!162}
!162 = !DISubrange(count: 8)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !157, file: !4, line: 638, baseType: !164, size: 640)
!164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 640, elements: !165)
!165 = !{!166}
!166 = !DISubrange(count: 80)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "trace_level", scope: !56, file: !4, line: 643, baseType: !34, size: 32, offset: 992)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "num_warnings", scope: !56, file: !4, line: 651, baseType: !38, size: 64, offset: 1024)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "jpeg_message_table", scope: !56, file: !4, line: 663, baseType: !170, size: 64, offset: 1088)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !172)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !153)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "last_jpeg_message", scope: !56, file: !4, line: 664, baseType: !34, size: 32, offset: 1152)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "addon_message_table", scope: !56, file: !4, line: 668, baseType: !170, size: 64, offset: 1216)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "first_addon_message", scope: !56, file: !4, line: 669, baseType: !34, size: 32, offset: 1280)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "last_addon_message", scope: !56, file: !4, line: 670, baseType: !34, size: 32, offset: 1312)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !52, file: !4, line: 395, baseType: !68, size: 64, offset: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "progress", scope: !52, file: !4, line: 395, baseType: !136, size: 64, offset: 128)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "is_decompressor", scope: !52, file: !4, line: 395, baseType: !112, size: 32, offset: 192)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "global_state", scope: !52, file: !4, line: 395, baseType: !34, size: 32, offset: 224)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !52, file: !4, line: 398, baseType: !183, size: 64, offset: 256)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_source_mgr", file: !4, line: 700, size: 448, elements: !185)
!185 = !{!186, !190, !191, !195, !199, !203, !207}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "next_input_byte", scope: !184, file: !4, line: 701, baseType: !187, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !189)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "JOCTET", file: !37, line: 110, baseType: !89)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_in_buffer", scope: !184, file: !4, line: 702, baseType: !76, size: 64, offset: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "init_source", scope: !184, file: !4, line: 704, baseType: !192, size: 64, offset: 128)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = !DISubroutineType(types: !194)
!194 = !{null, !50}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "fill_input_buffer", scope: !184, file: !4, line: 705, baseType: !196, size: 64, offset: 192)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = !DISubroutineType(types: !198)
!198 = !{!112, !50}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "skip_input_data", scope: !184, file: !4, line: 706, baseType: !200, size: 64, offset: 256)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = !DISubroutineType(types: !202)
!202 = !{null, !50, !38}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "resync_to_restart", scope: !184, file: !4, line: 707, baseType: !204, size: 64, offset: 320)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DISubroutineType(types: !206)
!206 = !{!112, !50, !34}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "term_source", scope: !184, file: !4, line: 708, baseType: !192, size: 64, offset: 384)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "image_width", scope: !52, file: !4, line: 403, baseType: !90, size: 32, offset: 320)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "image_height", scope: !52, file: !4, line: 404, baseType: !90, size: 32, offset: 352)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "num_components", scope: !52, file: !4, line: 405, baseType: !34, size: 32, offset: 384)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "jpeg_color_space", scope: !52, file: !4, line: 406, baseType: !212, size: 32, offset: 416)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_COLOR_SPACE", file: !4, line: 201, baseType: !3)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "out_color_space", scope: !52, file: !4, line: 413, baseType: !212, size: 32, offset: 448)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "scale_num", scope: !52, file: !4, line: 415, baseType: !5, size: 32, offset: 480)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "scale_denom", scope: !52, file: !4, line: 415, baseType: !5, size: 32, offset: 512)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "output_gamma", scope: !52, file: !4, line: 417, baseType: !217, size: 64, offset: 576)
!217 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "buffered_image", scope: !52, file: !4, line: 419, baseType: !112, size: 32, offset: 640)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "raw_data_out", scope: !52, file: !4, line: 420, baseType: !112, size: 32, offset: 672)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "dct_method", scope: !52, file: !4, line: 422, baseType: !221, size: 32, offset: 704)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_DCT_METHOD", file: !4, line: 209, baseType: !13)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "do_fancy_upsampling", scope: !52, file: !4, line: 423, baseType: !112, size: 32, offset: 736)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "do_block_smoothing", scope: !52, file: !4, line: 424, baseType: !112, size: 32, offset: 768)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "quantize_colors", scope: !52, file: !4, line: 426, baseType: !112, size: 32, offset: 800)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "dither_mode", scope: !52, file: !4, line: 428, baseType: !226, size: 32, offset: 832)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_DITHER_MODE", file: !4, line: 224, baseType: !18)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "two_pass_quantize", scope: !52, file: !4, line: 429, baseType: !112, size: 32, offset: 864)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "desired_number_of_colors", scope: !52, file: !4, line: 430, baseType: !34, size: 32, offset: 896)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "enable_1pass_quant", scope: !52, file: !4, line: 432, baseType: !112, size: 32, offset: 928)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "enable_external_quant", scope: !52, file: !4, line: 433, baseType: !112, size: 32, offset: 960)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "enable_2pass_quant", scope: !52, file: !4, line: 434, baseType: !112, size: 32, offset: 992)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "output_width", scope: !52, file: !4, line: 442, baseType: !90, size: 32, offset: 1024)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "output_height", scope: !52, file: !4, line: 443, baseType: !90, size: 32, offset: 1056)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "out_color_components", scope: !52, file: !4, line: 444, baseType: !34, size: 32, offset: 1088)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "output_components", scope: !52, file: !4, line: 445, baseType: !34, size: 32, offset: 1120)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "rec_outbuf_height", scope: !52, file: !4, line: 449, baseType: !34, size: 32, offset: 1152)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "actual_number_of_colors", scope: !52, file: !4, line: 461, baseType: !34, size: 32, offset: 1184)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "colormap", scope: !52, file: !4, line: 462, baseType: !84, size: 64, offset: 1216)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "output_scanline", scope: !52, file: !4, line: 472, baseType: !90, size: 32, offset: 1280)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "input_scan_number", scope: !52, file: !4, line: 477, baseType: !34, size: 32, offset: 1312)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "input_iMCU_row", scope: !52, file: !4, line: 478, baseType: !90, size: 32, offset: 1344)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "output_scan_number", scope: !52, file: !4, line: 484, baseType: !34, size: 32, offset: 1376)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "output_iMCU_row", scope: !52, file: !4, line: 485, baseType: !90, size: 32, offset: 1408)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "coef_bits", scope: !52, file: !4, line: 494, baseType: !245, size: 64, offset: 1472)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 2048, elements: !103)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "quant_tbl_ptrs", scope: !52, file: !4, line: 505, baseType: !248, size: 256, offset: 1536)
!248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, size: 256, elements: !258)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "JQUANT_TBL", file: !4, line: 95, baseType: !251)
!251 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 83, size: 1056, elements: !252)
!252 = !{!253, !257}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "quantval", scope: !251, file: !4, line: 88, baseType: !254, size: 1024)
!254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !255, size: 1024, elements: !103)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT16", file: !37, line: 147, baseType: !256)
!256 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "sent_table", scope: !251, file: !4, line: 94, baseType: !112, size: 32, offset: 1024)
!258 = !{!259}
!259 = !DISubrange(count: 4)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "dc_huff_tbl_ptrs", scope: !52, file: !4, line: 508, baseType: !261, size: 256, offset: 1792)
!261 = !DICompositeType(tag: DW_TAG_array_type, baseType: !262, size: 256, elements: !258)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "JHUFF_TBL", file: !4, line: 111, baseType: !264)
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 100, size: 2240, elements: !265)
!265 = !{!266, !271, !275}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !264, file: !4, line: 102, baseType: !267, size: 136)
!267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !268, size: 136, elements: !269)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT8", file: !37, line: 135, baseType: !89)
!269 = !{!270}
!270 = !DISubrange(count: 17)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "huffval", scope: !264, file: !4, line: 104, baseType: !272, size: 2048, offset: 136)
!272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !268, size: 2048, elements: !273)
!273 = !{!274}
!274 = !DISubrange(count: 256)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "sent_table", scope: !264, file: !4, line: 110, baseType: !112, size: 32, offset: 2208)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "ac_huff_tbl_ptrs", scope: !52, file: !4, line: 509, baseType: !261, size: 256, offset: 2048)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "data_precision", scope: !52, file: !4, line: 516, baseType: !34, size: 32, offset: 2304)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "comp_info", scope: !52, file: !4, line: 518, baseType: !279, size: 64, offset: 2368)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "jpeg_component_info", file: !4, line: 179, baseType: !281)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 116, size: 768, elements: !282)
!282 = !{!283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "component_id", scope: !281, file: !4, line: 120, baseType: !34, size: 32)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "component_index", scope: !281, file: !4, line: 121, baseType: !34, size: 32, offset: 32)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "h_samp_factor", scope: !281, file: !4, line: 122, baseType: !34, size: 32, offset: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "v_samp_factor", scope: !281, file: !4, line: 123, baseType: !34, size: 32, offset: 96)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "quant_tbl_no", scope: !281, file: !4, line: 124, baseType: !34, size: 32, offset: 128)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "dc_tbl_no", scope: !281, file: !4, line: 129, baseType: !34, size: 32, offset: 160)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tbl_no", scope: !281, file: !4, line: 130, baseType: !34, size: 32, offset: 192)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "width_in_blocks", scope: !281, file: !4, line: 139, baseType: !90, size: 32, offset: 224)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "height_in_blocks", scope: !281, file: !4, line: 140, baseType: !90, size: 32, offset: 256)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "DCT_scaled_size", scope: !281, file: !4, line: 147, baseType: !34, size: 32, offset: 288)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "downsampled_width", scope: !281, file: !4, line: 154, baseType: !90, size: 32, offset: 320)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "downsampled_height", scope: !281, file: !4, line: 155, baseType: !90, size: 32, offset: 352)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "component_needed", scope: !281, file: !4, line: 160, baseType: !112, size: 32, offset: 384)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_width", scope: !281, file: !4, line: 164, baseType: !34, size: 32, offset: 416)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_height", scope: !281, file: !4, line: 165, baseType: !34, size: 32, offset: 448)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_blocks", scope: !281, file: !4, line: 166, baseType: !34, size: 32, offset: 480)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_sample_width", scope: !281, file: !4, line: 167, baseType: !34, size: 32, offset: 512)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "last_col_width", scope: !281, file: !4, line: 168, baseType: !34, size: 32, offset: 544)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "last_row_height", scope: !281, file: !4, line: 169, baseType: !34, size: 32, offset: 576)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "quant_table", scope: !281, file: !4, line: 175, baseType: !249, size: 64, offset: 640)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "dct_table", scope: !281, file: !4, line: 178, baseType: !75, size: 64, offset: 704)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "progressive_mode", scope: !52, file: !4, line: 521, baseType: !112, size: 32, offset: 2432)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "arith_code", scope: !52, file: !4, line: 522, baseType: !112, size: 32, offset: 2464)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "arith_dc_L", scope: !52, file: !4, line: 524, baseType: !307, size: 128, offset: 2496)
!307 = !DICompositeType(tag: DW_TAG_array_type, baseType: !268, size: 128, elements: !308)
!308 = !{!309}
!309 = !DISubrange(count: 16)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "arith_dc_U", scope: !52, file: !4, line: 525, baseType: !307, size: 128, offset: 2624)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "arith_ac_K", scope: !52, file: !4, line: 526, baseType: !307, size: 128, offset: 2752)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "restart_interval", scope: !52, file: !4, line: 528, baseType: !5, size: 32, offset: 2880)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "saw_JFIF_marker", scope: !52, file: !4, line: 533, baseType: !112, size: 32, offset: 2912)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "density_unit", scope: !52, file: !4, line: 535, baseType: !268, size: 8, offset: 2944)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "X_density", scope: !52, file: !4, line: 536, baseType: !255, size: 16, offset: 2960)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "Y_density", scope: !52, file: !4, line: 537, baseType: !255, size: 16, offset: 2976)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "saw_Adobe_marker", scope: !52, file: !4, line: 538, baseType: !112, size: 32, offset: 3008)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "Adobe_transform", scope: !52, file: !4, line: 539, baseType: !268, size: 8, offset: 3040)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "CCIR601_sampling", scope: !52, file: !4, line: 541, baseType: !112, size: 32, offset: 3072)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "max_h_samp_factor", scope: !52, file: !4, line: 550, baseType: !34, size: 32, offset: 3104)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "max_v_samp_factor", scope: !52, file: !4, line: 551, baseType: !34, size: 32, offset: 3136)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "min_DCT_scaled_size", scope: !52, file: !4, line: 553, baseType: !34, size: 32, offset: 3168)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "total_iMCU_rows", scope: !52, file: !4, line: 555, baseType: !90, size: 32, offset: 3200)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "sample_range_limit", scope: !52, file: !4, line: 564, baseType: !87, size: 64, offset: 3264)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "comps_in_scan", scope: !52, file: !4, line: 571, baseType: !34, size: 32, offset: 3328)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "cur_comp_info", scope: !52, file: !4, line: 572, baseType: !327, size: 256, offset: 3392)
!327 = !DICompositeType(tag: DW_TAG_array_type, baseType: !279, size: 256, elements: !258)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "MCUs_per_row", scope: !52, file: !4, line: 575, baseType: !90, size: 32, offset: 3648)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_rows_in_scan", scope: !52, file: !4, line: 576, baseType: !90, size: 32, offset: 3680)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "blocks_in_MCU", scope: !52, file: !4, line: 578, baseType: !34, size: 32, offset: 3712)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_membership", scope: !52, file: !4, line: 579, baseType: !332, size: 320, offset: 3744)
!332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 320, elements: !333)
!333 = !{!334}
!334 = !DISubrange(count: 10)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "Ss", scope: !52, file: !4, line: 583, baseType: !34, size: 32, offset: 4064)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "Se", scope: !52, file: !4, line: 583, baseType: !34, size: 32, offset: 4096)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "Ah", scope: !52, file: !4, line: 583, baseType: !34, size: 32, offset: 4128)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "Al", scope: !52, file: !4, line: 583, baseType: !34, size: 32, offset: 4160)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "unread_marker", scope: !52, file: !4, line: 589, baseType: !34, size: 32, offset: 4192)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !52, file: !4, line: 594, baseType: !341, size: 64, offset: 4224)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_decomp_master", file: !24, line: 136, size: 192, elements: !343)
!343 = !{!344, !345, !346}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_for_output_pass", scope: !342, file: !24, line: 137, baseType: !192, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "finish_output_pass", scope: !342, file: !24, line: 138, baseType: !192, size: 64, offset: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "is_dummy_pass", scope: !342, file: !24, line: 141, baseType: !112, size: 32, offset: 128)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "main", scope: !52, file: !4, line: 595, baseType: !348, size: 64, offset: 4288)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_d_main_controller", file: !24, line: 157, size: 128, elements: !350)
!350 = !{!351, !356}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !349, file: !24, line: 158, baseType: !352, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = !DISubroutineType(types: !354)
!354 = !{null, !50, !355}
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_BUF_MODE", file: !24, line: 22, baseType: !23)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "process_data", scope: !349, file: !24, line: 159, baseType: !357, size: 64, offset: 64)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = !DISubroutineType(types: !359)
!359 = !{null, !50, !84, !360, !90}
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "coef", scope: !52, file: !4, line: 596, baseType: !362, size: 64, offset: 4352)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_d_coef_controller", file: !24, line: 165, size: 320, elements: !364)
!364 = !{!365, !366, !370, !371, !377}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "start_input_pass", scope: !363, file: !24, line: 166, baseType: !192, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "consume_data", scope: !363, file: !24, line: 167, baseType: !367, size: 64, offset: 64)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = !DISubroutineType(types: !369)
!369 = !{!34, !50}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "start_output_pass", scope: !363, file: !24, line: 168, baseType: !192, size: 64, offset: 128)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "decompress_data", scope: !363, file: !24, line: 169, baseType: !372, size: 64, offset: 192)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = !DISubroutineType(types: !374)
!374 = !{!34, !50, !375}
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPIMAGE", file: !4, line: 68, baseType: !376)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "coef_arrays", scope: !363, file: !24, line: 172, baseType: !378, size: 64, offset: 256)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "post", scope: !52, file: !4, line: 597, baseType: !380, size: 64, offset: 4416)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_d_post_controller", file: !24, line: 176, size: 128, elements: !382)
!382 = !{!383, !384}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !381, file: !24, line: 177, baseType: !352, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "post_process_data", scope: !381, file: !24, line: 178, baseType: !385, size: 64, offset: 64)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!386 = !DISubroutineType(types: !387)
!387 = !{null, !50, !375, !360, !90, !84, !360, !90}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "inputctl", scope: !52, file: !4, line: 598, baseType: !389, size: 64, offset: 4480)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_input_controller", file: !24, line: 145, size: 320, elements: !391)
!391 = !{!392, !393, !394, !395, !396, !397}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "consume_input", scope: !390, file: !24, line: 146, baseType: !367, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "reset_input_controller", scope: !390, file: !24, line: 147, baseType: !192, size: 64, offset: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "start_input_pass", scope: !390, file: !24, line: 148, baseType: !192, size: 64, offset: 128)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "finish_input_pass", scope: !390, file: !24, line: 149, baseType: !192, size: 64, offset: 192)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "has_multiple_scans", scope: !390, file: !24, line: 152, baseType: !112, size: 32, offset: 256)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "eoi_reached", scope: !390, file: !24, line: 153, baseType: !112, size: 32, offset: 288)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "marker", scope: !52, file: !4, line: 599, baseType: !399, size: 64, offset: 4544)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_marker_reader", file: !24, line: 188, size: 1408, elements: !401)
!401 = !{!402, !403, !404, !406, !407, !409, !410, !411, !412}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "reset_marker_reader", scope: !400, file: !24, line: 189, baseType: !192, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "read_markers", scope: !400, file: !24, line: 194, baseType: !367, size: 64, offset: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "read_restart_marker", scope: !400, file: !24, line: 196, baseType: !405, size: 64, offset: 128)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "jpeg_marker_parser_method", file: !4, line: 781, baseType: !196)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "process_COM", scope: !400, file: !24, line: 198, baseType: !405, size: 64, offset: 192)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "process_APPn", scope: !400, file: !24, line: 199, baseType: !408, size: 1024, offset: 256)
!408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !405, size: 1024, elements: !308)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "saw_SOI", scope: !400, file: !24, line: 204, baseType: !112, size: 32, offset: 1280)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "saw_SOF", scope: !400, file: !24, line: 205, baseType: !112, size: 32, offset: 1312)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "next_restart_num", scope: !400, file: !24, line: 206, baseType: !34, size: 32, offset: 1344)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "discarded_bytes", scope: !400, file: !24, line: 207, baseType: !5, size: 32, offset: 1376)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "entropy", scope: !52, file: !4, line: 600, baseType: !414, size: 64, offset: 4608)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_entropy_decoder", file: !24, line: 211, size: 128, elements: !416)
!416 = !{!417, !418}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !415, file: !24, line: 212, baseType: !192, size: 64)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "decode_mcu", scope: !415, file: !24, line: 213, baseType: !419, size: 64, offset: 64)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = !DISubroutineType(types: !421)
!421 = !{!112, !50, !96}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "idct", scope: !52, file: !4, line: 601, baseType: !423, size: 64, offset: 4672)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_inverse_dct", file: !24, line: 223, size: 704, elements: !425)
!425 = !{!426, !427}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !424, file: !24, line: 224, baseType: !192, size: 64)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "inverse_DCT", scope: !424, file: !24, line: 226, baseType: !428, size: 640, offset: 64)
!428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !429, size: 640, elements: !333)
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "inverse_DCT_method_ptr", file: !24, line: 218, baseType: !430)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "upsample", scope: !52, file: !4, line: 602, baseType: !432, size: 64, offset: 4736)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_upsampler", file: !24, line: 230, size: 192, elements: !434)
!434 = !{!435, !436, !437}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !433, file: !24, line: 231, baseType: !192, size: 64)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "upsample", scope: !433, file: !24, line: 232, baseType: !385, size: 64, offset: 64)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "need_context_rows", scope: !433, file: !24, line: 240, baseType: !112, size: 32, offset: 128)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "cconvert", scope: !52, file: !4, line: 603, baseType: !439, size: 64, offset: 4800)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_color_deconverter", file: !24, line: 244, size: 128, elements: !441)
!441 = !{!442, !443}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !440, file: !24, line: 245, baseType: !192, size: 64)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "color_convert", scope: !440, file: !24, line: 246, baseType: !444, size: 64, offset: 64)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = !DISubroutineType(types: !446)
!446 = !{null, !50, !375, !90, !84, !34}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "cquantize", scope: !52, file: !4, line: 604, baseType: !448, size: 64, offset: 4864)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_color_quantizer", file: !24, line: 252, size: 256, elements: !450)
!450 = !{!451, !455, !459, !460}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "start_pass", scope: !449, file: !24, line: 253, baseType: !452, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = !DISubroutineType(types: !454)
!454 = !{null, !50, !112}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "color_quantize", scope: !449, file: !24, line: 254, baseType: !456, size: 64, offset: 64)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = !DISubroutineType(types: !458)
!458 = !{null, !50, !84, !84, !34}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "finish_pass", scope: !449, file: !24, line: 257, baseType: !192, size: 64, offset: 128)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "new_color_map", scope: !449, file: !24, line: 258, baseType: !192, size: 64, offset: 192)
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "JCOEFPTR", file: !4, line: 75, baseType: !462)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!463 = !{}
!464 = !DILocalVariable(name: "cinfo", arg: 1, scope: !47, file: !1, line: 168, type: !50)
!465 = !DILocation(line: 168, column: 35, scope: !47)
!466 = !DILocalVariable(name: "compptr", arg: 2, scope: !47, file: !1, line: 168, type: !279)
!467 = !DILocation(line: 168, column: 64, scope: !47)
!468 = !DILocalVariable(name: "coef_block", arg: 3, scope: !47, file: !1, line: 169, type: !461)
!469 = !DILocation(line: 169, column: 13, scope: !47)
!470 = !DILocalVariable(name: "output_buf", arg: 4, scope: !47, file: !1, line: 170, type: !84)
!471 = !DILocation(line: 170, column: 15, scope: !47)
!472 = !DILocalVariable(name: "output_col", arg: 5, scope: !47, file: !1, line: 170, type: !90)
!473 = !DILocation(line: 170, column: 38, scope: !47)
!474 = !DILocalVariable(name: "tmp0", scope: !47, file: !1, line: 172, type: !35)
!475 = !DILocation(line: 172, column: 11, scope: !47)
!476 = !DILocalVariable(name: "tmp1", scope: !47, file: !1, line: 172, type: !35)
!477 = !DILocation(line: 172, column: 17, scope: !47)
!478 = !DILocalVariable(name: "tmp2", scope: !47, file: !1, line: 172, type: !35)
!479 = !DILocation(line: 172, column: 23, scope: !47)
!480 = !DILocalVariable(name: "tmp3", scope: !47, file: !1, line: 172, type: !35)
!481 = !DILocation(line: 172, column: 29, scope: !47)
!482 = !DILocalVariable(name: "tmp4", scope: !47, file: !1, line: 172, type: !35)
!483 = !DILocation(line: 172, column: 35, scope: !47)
!484 = !DILocalVariable(name: "tmp5", scope: !47, file: !1, line: 172, type: !35)
!485 = !DILocation(line: 172, column: 41, scope: !47)
!486 = !DILocalVariable(name: "tmp6", scope: !47, file: !1, line: 172, type: !35)
!487 = !DILocation(line: 172, column: 47, scope: !47)
!488 = !DILocalVariable(name: "tmp7", scope: !47, file: !1, line: 172, type: !35)
!489 = !DILocation(line: 172, column: 53, scope: !47)
!490 = !DILocalVariable(name: "tmp10", scope: !47, file: !1, line: 173, type: !35)
!491 = !DILocation(line: 173, column: 11, scope: !47)
!492 = !DILocalVariable(name: "tmp11", scope: !47, file: !1, line: 173, type: !35)
!493 = !DILocation(line: 173, column: 18, scope: !47)
!494 = !DILocalVariable(name: "tmp12", scope: !47, file: !1, line: 173, type: !35)
!495 = !DILocation(line: 173, column: 25, scope: !47)
!496 = !DILocalVariable(name: "tmp13", scope: !47, file: !1, line: 173, type: !35)
!497 = !DILocation(line: 173, column: 32, scope: !47)
!498 = !DILocalVariable(name: "z5", scope: !47, file: !1, line: 174, type: !35)
!499 = !DILocation(line: 174, column: 11, scope: !47)
!500 = !DILocalVariable(name: "z10", scope: !47, file: !1, line: 174, type: !35)
!501 = !DILocation(line: 174, column: 15, scope: !47)
!502 = !DILocalVariable(name: "z11", scope: !47, file: !1, line: 174, type: !35)
!503 = !DILocation(line: 174, column: 20, scope: !47)
!504 = !DILocalVariable(name: "z12", scope: !47, file: !1, line: 174, type: !35)
!505 = !DILocation(line: 174, column: 25, scope: !47)
!506 = !DILocalVariable(name: "z13", scope: !47, file: !1, line: 174, type: !35)
!507 = !DILocation(line: 174, column: 30, scope: !47)
!508 = !DILocalVariable(name: "inptr", scope: !47, file: !1, line: 175, type: !461)
!509 = !DILocation(line: 175, column: 12, scope: !47)
!510 = !DILocalVariable(name: "quantptr", scope: !47, file: !1, line: 176, type: !31)
!511 = !DILocation(line: 176, column: 21, scope: !47)
!512 = !DILocalVariable(name: "wsptr", scope: !47, file: !1, line: 177, type: !513)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!514 = !DILocation(line: 177, column: 9, scope: !47)
!515 = !DILocalVariable(name: "outptr", scope: !47, file: !1, line: 178, type: !86)
!516 = !DILocation(line: 178, column: 12, scope: !47)
!517 = !DILocalVariable(name: "range_limit", scope: !47, file: !1, line: 179, type: !87)
!518 = !DILocation(line: 179, column: 12, scope: !47)
!519 = !DILocation(line: 179, column: 26, scope: !47)
!520 = !DILocalVariable(name: "ctr", scope: !47, file: !1, line: 180, type: !34)
!521 = !DILocation(line: 180, column: 7, scope: !47)
!522 = !DILocalVariable(name: "workspace", scope: !47, file: !1, line: 181, type: !246)
!523 = !DILocation(line: 181, column: 7, scope: !47)
!524 = !DILocation(line: 187, column: 11, scope: !47)
!525 = !DILocation(line: 187, column: 9, scope: !47)
!526 = !DILocation(line: 188, column: 34, scope: !47)
!527 = !DILocation(line: 188, column: 43, scope: !47)
!528 = !DILocation(line: 188, column: 12, scope: !47)
!529 = !DILocation(line: 189, column: 11, scope: !47)
!530 = !DILocation(line: 189, column: 9, scope: !47)
!531 = !DILocation(line: 190, column: 12, scope: !532)
!532 = distinct !DILexicalBlock(scope: !47, file: !1, line: 190, column: 3)
!533 = !DILocation(line: 190, column: 8, scope: !532)
!534 = !DILocation(line: 190, column: 23, scope: !535)
!535 = distinct !DILexicalBlock(scope: !532, file: !1, line: 190, column: 3)
!536 = !DILocation(line: 190, column: 27, scope: !535)
!537 = !DILocation(line: 190, column: 3, scope: !532)
!538 = !DILocation(line: 200, column: 10, scope: !539)
!539 = distinct !DILexicalBlock(scope: !540, file: !1, line: 200, column: 9)
!540 = distinct !DILexicalBlock(scope: !535, file: !1, line: 190, column: 39)
!541 = !DILocation(line: 200, column: 29, scope: !539)
!542 = !DILocation(line: 200, column: 27, scope: !539)
!543 = !DILocation(line: 200, column: 48, scope: !539)
!544 = !DILocation(line: 200, column: 46, scope: !539)
!545 = !DILocation(line: 201, column: 3, scope: !539)
!546 = !DILocation(line: 200, column: 65, scope: !539)
!547 = !DILocation(line: 201, column: 22, scope: !539)
!548 = !DILocation(line: 201, column: 20, scope: !539)
!549 = !DILocation(line: 201, column: 41, scope: !539)
!550 = !DILocation(line: 201, column: 39, scope: !539)
!551 = !DILocation(line: 202, column: 3, scope: !539)
!552 = !DILocation(line: 201, column: 58, scope: !539)
!553 = !DILocation(line: 202, column: 21, scope: !539)
!554 = !DILocalVariable(name: "dcval", scope: !555, file: !1, line: 204, type: !34)
!555 = distinct !DILexicalBlock(scope: !539, file: !1, line: 202, column: 27)
!556 = !DILocation(line: 204, column: 11, scope: !555)
!557 = !DILocation(line: 204, column: 25, scope: !555)
!558 = !DILocation(line: 206, column: 26, scope: !555)
!559 = !DILocation(line: 206, column: 7, scope: !555)
!560 = !DILocation(line: 206, column: 24, scope: !555)
!561 = !DILocation(line: 207, column: 26, scope: !555)
!562 = !DILocation(line: 207, column: 7, scope: !555)
!563 = !DILocation(line: 207, column: 24, scope: !555)
!564 = !DILocation(line: 208, column: 26, scope: !555)
!565 = !DILocation(line: 208, column: 7, scope: !555)
!566 = !DILocation(line: 208, column: 24, scope: !555)
!567 = !DILocation(line: 209, column: 26, scope: !555)
!568 = !DILocation(line: 209, column: 7, scope: !555)
!569 = !DILocation(line: 209, column: 24, scope: !555)
!570 = !DILocation(line: 210, column: 26, scope: !555)
!571 = !DILocation(line: 210, column: 7, scope: !555)
!572 = !DILocation(line: 210, column: 24, scope: !555)
!573 = !DILocation(line: 211, column: 26, scope: !555)
!574 = !DILocation(line: 211, column: 7, scope: !555)
!575 = !DILocation(line: 211, column: 24, scope: !555)
!576 = !DILocation(line: 212, column: 26, scope: !555)
!577 = !DILocation(line: 212, column: 7, scope: !555)
!578 = !DILocation(line: 212, column: 24, scope: !555)
!579 = !DILocation(line: 213, column: 26, scope: !555)
!580 = !DILocation(line: 213, column: 7, scope: !555)
!581 = !DILocation(line: 213, column: 24, scope: !555)
!582 = !DILocation(line: 215, column: 12, scope: !555)
!583 = !DILocation(line: 216, column: 15, scope: !555)
!584 = !DILocation(line: 217, column: 12, scope: !555)
!585 = !DILocation(line: 218, column: 7, scope: !555)
!586 = !DILocation(line: 223, column: 12, scope: !540)
!587 = !DILocation(line: 223, column: 10, scope: !540)
!588 = !DILocation(line: 224, column: 12, scope: !540)
!589 = !DILocation(line: 224, column: 10, scope: !540)
!590 = !DILocation(line: 225, column: 12, scope: !540)
!591 = !DILocation(line: 225, column: 10, scope: !540)
!592 = !DILocation(line: 226, column: 12, scope: !540)
!593 = !DILocation(line: 226, column: 10, scope: !540)
!594 = !DILocation(line: 228, column: 13, scope: !540)
!595 = !DILocation(line: 228, column: 20, scope: !540)
!596 = !DILocation(line: 228, column: 18, scope: !540)
!597 = !DILocation(line: 228, column: 11, scope: !540)
!598 = !DILocation(line: 229, column: 13, scope: !540)
!599 = !DILocation(line: 229, column: 20, scope: !540)
!600 = !DILocation(line: 229, column: 18, scope: !540)
!601 = !DILocation(line: 229, column: 11, scope: !540)
!602 = !DILocation(line: 231, column: 13, scope: !540)
!603 = !DILocation(line: 231, column: 20, scope: !540)
!604 = !DILocation(line: 231, column: 18, scope: !540)
!605 = !DILocation(line: 231, column: 11, scope: !540)
!606 = !DILocation(line: 232, column: 13, scope: !540)
!607 = !DILocation(line: 232, column: 54, scope: !540)
!608 = !DILocation(line: 232, column: 52, scope: !540)
!609 = !DILocation(line: 232, column: 11, scope: !540)
!610 = !DILocation(line: 234, column: 12, scope: !540)
!611 = !DILocation(line: 234, column: 20, scope: !540)
!612 = !DILocation(line: 234, column: 18, scope: !540)
!613 = !DILocation(line: 234, column: 10, scope: !540)
!614 = !DILocation(line: 235, column: 12, scope: !540)
!615 = !DILocation(line: 235, column: 20, scope: !540)
!616 = !DILocation(line: 235, column: 18, scope: !540)
!617 = !DILocation(line: 235, column: 10, scope: !540)
!618 = !DILocation(line: 236, column: 12, scope: !540)
!619 = !DILocation(line: 236, column: 20, scope: !540)
!620 = !DILocation(line: 236, column: 18, scope: !540)
!621 = !DILocation(line: 236, column: 10, scope: !540)
!622 = !DILocation(line: 237, column: 12, scope: !540)
!623 = !DILocation(line: 237, column: 20, scope: !540)
!624 = !DILocation(line: 237, column: 18, scope: !540)
!625 = !DILocation(line: 237, column: 10, scope: !540)
!626 = !DILocation(line: 241, column: 12, scope: !540)
!627 = !DILocation(line: 241, column: 10, scope: !540)
!628 = !DILocation(line: 242, column: 12, scope: !540)
!629 = !DILocation(line: 242, column: 10, scope: !540)
!630 = !DILocation(line: 243, column: 12, scope: !540)
!631 = !DILocation(line: 243, column: 10, scope: !540)
!632 = !DILocation(line: 244, column: 12, scope: !540)
!633 = !DILocation(line: 244, column: 10, scope: !540)
!634 = !DILocation(line: 246, column: 11, scope: !540)
!635 = !DILocation(line: 246, column: 18, scope: !540)
!636 = !DILocation(line: 246, column: 16, scope: !540)
!637 = !DILocation(line: 246, column: 9, scope: !540)
!638 = !DILocation(line: 247, column: 11, scope: !540)
!639 = !DILocation(line: 247, column: 18, scope: !540)
!640 = !DILocation(line: 247, column: 16, scope: !540)
!641 = !DILocation(line: 247, column: 9, scope: !540)
!642 = !DILocation(line: 248, column: 11, scope: !540)
!643 = !DILocation(line: 248, column: 18, scope: !540)
!644 = !DILocation(line: 248, column: 16, scope: !540)
!645 = !DILocation(line: 248, column: 9, scope: !540)
!646 = !DILocation(line: 249, column: 11, scope: !540)
!647 = !DILocation(line: 249, column: 18, scope: !540)
!648 = !DILocation(line: 249, column: 16, scope: !540)
!649 = !DILocation(line: 249, column: 9, scope: !540)
!650 = !DILocation(line: 251, column: 12, scope: !540)
!651 = !DILocation(line: 251, column: 18, scope: !540)
!652 = !DILocation(line: 251, column: 16, scope: !540)
!653 = !DILocation(line: 251, column: 10, scope: !540)
!654 = !DILocation(line: 252, column: 13, scope: !540)
!655 = !DILocation(line: 252, column: 11, scope: !540)
!656 = !DILocation(line: 254, column: 10, scope: !540)
!657 = !DILocation(line: 254, column: 8, scope: !540)
!658 = !DILocation(line: 255, column: 13, scope: !540)
!659 = !DILocation(line: 255, column: 46, scope: !540)
!660 = !DILocation(line: 255, column: 44, scope: !540)
!661 = !DILocation(line: 255, column: 11, scope: !540)
!662 = !DILocation(line: 256, column: 13, scope: !540)
!663 = !DILocation(line: 256, column: 48, scope: !540)
!664 = !DILocation(line: 256, column: 46, scope: !540)
!665 = !DILocation(line: 256, column: 11, scope: !540)
!666 = !DILocation(line: 258, column: 12, scope: !540)
!667 = !DILocation(line: 258, column: 20, scope: !540)
!668 = !DILocation(line: 258, column: 18, scope: !540)
!669 = !DILocation(line: 258, column: 10, scope: !540)
!670 = !DILocation(line: 259, column: 12, scope: !540)
!671 = !DILocation(line: 259, column: 20, scope: !540)
!672 = !DILocation(line: 259, column: 18, scope: !540)
!673 = !DILocation(line: 259, column: 10, scope: !540)
!674 = !DILocation(line: 260, column: 12, scope: !540)
!675 = !DILocation(line: 260, column: 20, scope: !540)
!676 = !DILocation(line: 260, column: 18, scope: !540)
!677 = !DILocation(line: 260, column: 10, scope: !540)
!678 = !DILocation(line: 262, column: 31, scope: !540)
!679 = !DILocation(line: 262, column: 38, scope: !540)
!680 = !DILocation(line: 262, column: 36, scope: !540)
!681 = !DILocation(line: 262, column: 5, scope: !540)
!682 = !DILocation(line: 262, column: 22, scope: !540)
!683 = !DILocation(line: 263, column: 31, scope: !540)
!684 = !DILocation(line: 263, column: 38, scope: !540)
!685 = !DILocation(line: 263, column: 36, scope: !540)
!686 = !DILocation(line: 263, column: 5, scope: !540)
!687 = !DILocation(line: 263, column: 22, scope: !540)
!688 = !DILocation(line: 264, column: 31, scope: !540)
!689 = !DILocation(line: 264, column: 38, scope: !540)
!690 = !DILocation(line: 264, column: 36, scope: !540)
!691 = !DILocation(line: 264, column: 5, scope: !540)
!692 = !DILocation(line: 264, column: 22, scope: !540)
!693 = !DILocation(line: 265, column: 31, scope: !540)
!694 = !DILocation(line: 265, column: 38, scope: !540)
!695 = !DILocation(line: 265, column: 36, scope: !540)
!696 = !DILocation(line: 265, column: 5, scope: !540)
!697 = !DILocation(line: 265, column: 22, scope: !540)
!698 = !DILocation(line: 266, column: 31, scope: !540)
!699 = !DILocation(line: 266, column: 38, scope: !540)
!700 = !DILocation(line: 266, column: 36, scope: !540)
!701 = !DILocation(line: 266, column: 5, scope: !540)
!702 = !DILocation(line: 266, column: 22, scope: !540)
!703 = !DILocation(line: 267, column: 31, scope: !540)
!704 = !DILocation(line: 267, column: 38, scope: !540)
!705 = !DILocation(line: 267, column: 36, scope: !540)
!706 = !DILocation(line: 267, column: 5, scope: !540)
!707 = !DILocation(line: 267, column: 22, scope: !540)
!708 = !DILocation(line: 268, column: 31, scope: !540)
!709 = !DILocation(line: 268, column: 38, scope: !540)
!710 = !DILocation(line: 268, column: 36, scope: !540)
!711 = !DILocation(line: 268, column: 5, scope: !540)
!712 = !DILocation(line: 268, column: 22, scope: !540)
!713 = !DILocation(line: 269, column: 31, scope: !540)
!714 = !DILocation(line: 269, column: 38, scope: !540)
!715 = !DILocation(line: 269, column: 36, scope: !540)
!716 = !DILocation(line: 269, column: 5, scope: !540)
!717 = !DILocation(line: 269, column: 22, scope: !540)
!718 = !DILocation(line: 271, column: 10, scope: !540)
!719 = !DILocation(line: 272, column: 13, scope: !540)
!720 = !DILocation(line: 273, column: 10, scope: !540)
!721 = !DILocation(line: 274, column: 3, scope: !540)
!722 = !DILocation(line: 190, column: 35, scope: !535)
!723 = !DILocation(line: 190, column: 3, scope: !535)
!724 = distinct !{!724, !537, !725, !726}
!725 = !DILocation(line: 274, column: 3, scope: !532)
!726 = !{!"llvm.loop.mustprogress"}
!727 = !DILocation(line: 280, column: 11, scope: !47)
!728 = !DILocation(line: 280, column: 9, scope: !47)
!729 = !DILocation(line: 281, column: 12, scope: !730)
!730 = distinct !DILexicalBlock(scope: !47, file: !1, line: 281, column: 3)
!731 = !DILocation(line: 281, column: 8, scope: !730)
!732 = !DILocation(line: 281, column: 17, scope: !733)
!733 = distinct !DILexicalBlock(scope: !730, file: !1, line: 281, column: 3)
!734 = !DILocation(line: 281, column: 21, scope: !733)
!735 = !DILocation(line: 281, column: 3, scope: !730)
!736 = !DILocation(line: 282, column: 14, scope: !737)
!737 = distinct !DILexicalBlock(scope: !733, file: !1, line: 281, column: 39)
!738 = !DILocation(line: 282, column: 25, scope: !737)
!739 = !DILocation(line: 282, column: 32, scope: !737)
!740 = !DILocation(line: 282, column: 30, scope: !737)
!741 = !DILocation(line: 282, column: 12, scope: !737)
!742 = !DILocation(line: 292, column: 10, scope: !743)
!743 = distinct !DILexicalBlock(scope: !737, file: !1, line: 292, column: 9)
!744 = !DILocation(line: 292, column: 21, scope: !743)
!745 = !DILocation(line: 292, column: 19, scope: !743)
!746 = !DILocation(line: 292, column: 32, scope: !743)
!747 = !DILocation(line: 292, column: 30, scope: !743)
!748 = !DILocation(line: 292, column: 43, scope: !743)
!749 = !DILocation(line: 292, column: 41, scope: !743)
!750 = !DILocation(line: 292, column: 54, scope: !743)
!751 = !DILocation(line: 292, column: 52, scope: !743)
!752 = !DILocation(line: 292, column: 65, scope: !743)
!753 = !DILocation(line: 292, column: 63, scope: !743)
!754 = !DILocation(line: 293, column: 3, scope: !743)
!755 = !DILocation(line: 292, column: 74, scope: !743)
!756 = !DILocation(line: 293, column: 13, scope: !743)
!757 = !DILocalVariable(name: "dcval", scope: !758, file: !1, line: 295, type: !88)
!758 = distinct !DILexicalBlock(scope: !743, file: !1, line: 293, column: 19)
!759 = !DILocation(line: 295, column: 15, scope: !758)
!760 = !DILocation(line: 295, column: 23, scope: !758)
!761 = !DILocation(line: 295, column: 35, scope: !758)
!762 = !DILocation(line: 296, column: 7, scope: !758)
!763 = !DILocation(line: 298, column: 19, scope: !758)
!764 = !DILocation(line: 298, column: 7, scope: !758)
!765 = !DILocation(line: 298, column: 17, scope: !758)
!766 = !DILocation(line: 299, column: 19, scope: !758)
!767 = !DILocation(line: 299, column: 7, scope: !758)
!768 = !DILocation(line: 299, column: 17, scope: !758)
!769 = !DILocation(line: 300, column: 19, scope: !758)
!770 = !DILocation(line: 300, column: 7, scope: !758)
!771 = !DILocation(line: 300, column: 17, scope: !758)
!772 = !DILocation(line: 301, column: 19, scope: !758)
!773 = !DILocation(line: 301, column: 7, scope: !758)
!774 = !DILocation(line: 301, column: 17, scope: !758)
!775 = !DILocation(line: 302, column: 19, scope: !758)
!776 = !DILocation(line: 302, column: 7, scope: !758)
!777 = !DILocation(line: 302, column: 17, scope: !758)
!778 = !DILocation(line: 303, column: 19, scope: !758)
!779 = !DILocation(line: 303, column: 7, scope: !758)
!780 = !DILocation(line: 303, column: 17, scope: !758)
!781 = !DILocation(line: 304, column: 19, scope: !758)
!782 = !DILocation(line: 304, column: 7, scope: !758)
!783 = !DILocation(line: 304, column: 17, scope: !758)
!784 = !DILocation(line: 305, column: 19, scope: !758)
!785 = !DILocation(line: 305, column: 7, scope: !758)
!786 = !DILocation(line: 305, column: 17, scope: !758)
!787 = !DILocation(line: 307, column: 13, scope: !758)
!788 = !DILocation(line: 308, column: 7, scope: !758)
!789 = !DILocation(line: 314, column: 24, scope: !737)
!790 = !DILocation(line: 314, column: 45, scope: !737)
!791 = !DILocation(line: 314, column: 33, scope: !737)
!792 = !DILocation(line: 314, column: 11, scope: !737)
!793 = !DILocation(line: 315, column: 24, scope: !737)
!794 = !DILocation(line: 315, column: 45, scope: !737)
!795 = !DILocation(line: 315, column: 33, scope: !737)
!796 = !DILocation(line: 315, column: 11, scope: !737)
!797 = !DILocation(line: 317, column: 24, scope: !737)
!798 = !DILocation(line: 317, column: 45, scope: !737)
!799 = !DILocation(line: 317, column: 33, scope: !737)
!800 = !DILocation(line: 317, column: 11, scope: !737)
!801 = !DILocation(line: 318, column: 13, scope: !737)
!802 = !DILocation(line: 319, column: 8, scope: !737)
!803 = !DILocation(line: 319, column: 6, scope: !737)
!804 = !DILocation(line: 318, column: 11, scope: !737)
!805 = !DILocation(line: 321, column: 12, scope: !737)
!806 = !DILocation(line: 321, column: 20, scope: !737)
!807 = !DILocation(line: 321, column: 18, scope: !737)
!808 = !DILocation(line: 321, column: 10, scope: !737)
!809 = !DILocation(line: 322, column: 12, scope: !737)
!810 = !DILocation(line: 322, column: 20, scope: !737)
!811 = !DILocation(line: 322, column: 18, scope: !737)
!812 = !DILocation(line: 322, column: 10, scope: !737)
!813 = !DILocation(line: 323, column: 12, scope: !737)
!814 = !DILocation(line: 323, column: 20, scope: !737)
!815 = !DILocation(line: 323, column: 18, scope: !737)
!816 = !DILocation(line: 323, column: 10, scope: !737)
!817 = !DILocation(line: 324, column: 12, scope: !737)
!818 = !DILocation(line: 324, column: 20, scope: !737)
!819 = !DILocation(line: 324, column: 18, scope: !737)
!820 = !DILocation(line: 324, column: 10, scope: !737)
!821 = !DILocation(line: 328, column: 21, scope: !737)
!822 = !DILocation(line: 328, column: 42, scope: !737)
!823 = !DILocation(line: 328, column: 30, scope: !737)
!824 = !DILocation(line: 328, column: 9, scope: !737)
!825 = !DILocation(line: 329, column: 21, scope: !737)
!826 = !DILocation(line: 329, column: 42, scope: !737)
!827 = !DILocation(line: 329, column: 30, scope: !737)
!828 = !DILocation(line: 329, column: 9, scope: !737)
!829 = !DILocation(line: 330, column: 21, scope: !737)
!830 = !DILocation(line: 330, column: 42, scope: !737)
!831 = !DILocation(line: 330, column: 30, scope: !737)
!832 = !DILocation(line: 330, column: 9, scope: !737)
!833 = !DILocation(line: 331, column: 21, scope: !737)
!834 = !DILocation(line: 331, column: 42, scope: !737)
!835 = !DILocation(line: 331, column: 30, scope: !737)
!836 = !DILocation(line: 331, column: 9, scope: !737)
!837 = !DILocation(line: 333, column: 12, scope: !737)
!838 = !DILocation(line: 333, column: 18, scope: !737)
!839 = !DILocation(line: 333, column: 16, scope: !737)
!840 = !DILocation(line: 333, column: 10, scope: !737)
!841 = !DILocation(line: 334, column: 13, scope: !737)
!842 = !DILocation(line: 334, column: 11, scope: !737)
!843 = !DILocation(line: 336, column: 10, scope: !737)
!844 = !DILocation(line: 336, column: 8, scope: !737)
!845 = !DILocation(line: 337, column: 13, scope: !737)
!846 = !DILocation(line: 337, column: 46, scope: !737)
!847 = !DILocation(line: 337, column: 44, scope: !737)
!848 = !DILocation(line: 337, column: 11, scope: !737)
!849 = !DILocation(line: 338, column: 13, scope: !737)
!850 = !DILocation(line: 338, column: 48, scope: !737)
!851 = !DILocation(line: 338, column: 46, scope: !737)
!852 = !DILocation(line: 338, column: 11, scope: !737)
!853 = !DILocation(line: 340, column: 12, scope: !737)
!854 = !DILocation(line: 340, column: 20, scope: !737)
!855 = !DILocation(line: 340, column: 18, scope: !737)
!856 = !DILocation(line: 340, column: 10, scope: !737)
!857 = !DILocation(line: 341, column: 12, scope: !737)
!858 = !DILocation(line: 341, column: 20, scope: !737)
!859 = !DILocation(line: 341, column: 18, scope: !737)
!860 = !DILocation(line: 341, column: 10, scope: !737)
!861 = !DILocation(line: 342, column: 12, scope: !737)
!862 = !DILocation(line: 342, column: 20, scope: !737)
!863 = !DILocation(line: 342, column: 18, scope: !737)
!864 = !DILocation(line: 342, column: 10, scope: !737)
!865 = !DILocation(line: 346, column: 17, scope: !737)
!866 = !DILocation(line: 346, column: 29, scope: !737)
!867 = !DILocation(line: 347, column: 8, scope: !737)
!868 = !DILocation(line: 346, column: 5, scope: !737)
!869 = !DILocation(line: 346, column: 15, scope: !737)
!870 = !DILocation(line: 348, column: 17, scope: !737)
!871 = !DILocation(line: 348, column: 29, scope: !737)
!872 = !DILocation(line: 349, column: 8, scope: !737)
!873 = !DILocation(line: 348, column: 5, scope: !737)
!874 = !DILocation(line: 348, column: 15, scope: !737)
!875 = !DILocation(line: 350, column: 17, scope: !737)
!876 = !DILocation(line: 350, column: 29, scope: !737)
!877 = !DILocation(line: 351, column: 8, scope: !737)
!878 = !DILocation(line: 350, column: 5, scope: !737)
!879 = !DILocation(line: 350, column: 15, scope: !737)
!880 = !DILocation(line: 352, column: 17, scope: !737)
!881 = !DILocation(line: 352, column: 29, scope: !737)
!882 = !DILocation(line: 353, column: 8, scope: !737)
!883 = !DILocation(line: 352, column: 5, scope: !737)
!884 = !DILocation(line: 352, column: 15, scope: !737)
!885 = !DILocation(line: 354, column: 17, scope: !737)
!886 = !DILocation(line: 354, column: 29, scope: !737)
!887 = !DILocation(line: 355, column: 8, scope: !737)
!888 = !DILocation(line: 354, column: 5, scope: !737)
!889 = !DILocation(line: 354, column: 15, scope: !737)
!890 = !DILocation(line: 356, column: 17, scope: !737)
!891 = !DILocation(line: 356, column: 29, scope: !737)
!892 = !DILocation(line: 357, column: 8, scope: !737)
!893 = !DILocation(line: 356, column: 5, scope: !737)
!894 = !DILocation(line: 356, column: 15, scope: !737)
!895 = !DILocation(line: 358, column: 17, scope: !737)
!896 = !DILocation(line: 358, column: 29, scope: !737)
!897 = !DILocation(line: 359, column: 8, scope: !737)
!898 = !DILocation(line: 358, column: 5, scope: !737)
!899 = !DILocation(line: 358, column: 15, scope: !737)
!900 = !DILocation(line: 360, column: 17, scope: !737)
!901 = !DILocation(line: 360, column: 29, scope: !737)
!902 = !DILocation(line: 361, column: 8, scope: !737)
!903 = !DILocation(line: 360, column: 5, scope: !737)
!904 = !DILocation(line: 360, column: 15, scope: !737)
!905 = !DILocation(line: 363, column: 11, scope: !737)
!906 = !DILocation(line: 364, column: 3, scope: !737)
!907 = !DILocation(line: 281, column: 35, scope: !733)
!908 = !DILocation(line: 281, column: 3, scope: !733)
!909 = distinct !{!909, !735, !910, !726}
!910 = !DILocation(line: 364, column: 3, scope: !730)
!911 = !DILocation(line: 365, column: 1, scope: !47)
