; ModuleID = 'cBench/consumer_jpeg_c/src/jidctflt.c'
source_filename = "cBench/consumer_jpeg_c/src/jidctflt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jpeg_decompress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }

; Function Attrs: noinline nounwind uwtable
define dso_local void @jpeg_idct_float(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #0 !dbg !47 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca float, align 4
  %25 = alloca float, align 4
  %26 = alloca float, align 4
  %27 = alloca float, align 4
  %28 = alloca ptr, align 8
  %29 = alloca ptr, align 8
  %30 = alloca ptr, align 8
  %31 = alloca ptr, align 8
  %32 = alloca ptr, align 8
  %33 = alloca i32, align 4
  %34 = alloca [64 x float], align 16
  %35 = alloca float, align 4
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
  %36 = load ptr, ptr %6, align 8, !dbg !519
  %37 = getelementptr inbounds nuw %struct.jpeg_decompress_struct, ptr %36, i32 0, i32 61, !dbg !519
  %38 = load ptr, ptr %37, align 8, !dbg !519
  %39 = getelementptr inbounds i8, ptr %38, i64 128, !dbg !519
  store ptr %39, ptr %32, align 8, !dbg !518
    #dbg_declare(ptr %33, !520, !DIExpression(), !521)
    #dbg_declare(ptr %34, !522, !DIExpression(), !524)
  %40 = load ptr, ptr %8, align 8, !dbg !525
  store ptr %40, ptr %28, align 8, !dbg !526
  %41 = load ptr, ptr %7, align 8, !dbg !527
  %42 = getelementptr inbounds nuw %struct.jpeg_component_info, ptr %41, i32 0, i32 20, !dbg !528
  %43 = load ptr, ptr %42, align 8, !dbg !528
  store ptr %43, ptr %29, align 8, !dbg !529
  %44 = getelementptr inbounds [64 x float], ptr %34, i64 0, i64 0, !dbg !530
  store ptr %44, ptr %30, align 8, !dbg !531
  store i32 8, ptr %33, align 4, !dbg !532
  br label %45, !dbg !534

45:                                               ; preds = %300, %5
  %46 = load i32, ptr %33, align 4, !dbg !535
  %47 = icmp sgt i32 %46, 0, !dbg !537
  br i1 %47, label %48, label %303, !dbg !538

48:                                               ; preds = %45
  %49 = load ptr, ptr %28, align 8, !dbg !539
  %50 = getelementptr inbounds i16, ptr %49, i64 8, !dbg !539
  %51 = load i16, ptr %50, align 2, !dbg !539
  %52 = sext i16 %51 to i32, !dbg !539
  %53 = load ptr, ptr %28, align 8, !dbg !542
  %54 = getelementptr inbounds i16, ptr %53, i64 16, !dbg !542
  %55 = load i16, ptr %54, align 2, !dbg !542
  %56 = sext i16 %55 to i32, !dbg !542
  %57 = or i32 %52, %56, !dbg !543
  %58 = load ptr, ptr %28, align 8, !dbg !544
  %59 = getelementptr inbounds i16, ptr %58, i64 24, !dbg !544
  %60 = load i16, ptr %59, align 2, !dbg !544
  %61 = sext i16 %60 to i32, !dbg !544
  %62 = or i32 %57, %61, !dbg !545
  %63 = load ptr, ptr %28, align 8, !dbg !546
  %64 = getelementptr inbounds i16, ptr %63, i64 32, !dbg !546
  %65 = load i16, ptr %64, align 2, !dbg !546
  %66 = sext i16 %65 to i32, !dbg !546
  %67 = or i32 %62, %66, !dbg !547
  %68 = load ptr, ptr %28, align 8, !dbg !548
  %69 = getelementptr inbounds i16, ptr %68, i64 40, !dbg !548
  %70 = load i16, ptr %69, align 2, !dbg !548
  %71 = sext i16 %70 to i32, !dbg !548
  %72 = or i32 %67, %71, !dbg !549
  %73 = load ptr, ptr %28, align 8, !dbg !550
  %74 = getelementptr inbounds i16, ptr %73, i64 48, !dbg !550
  %75 = load i16, ptr %74, align 2, !dbg !550
  %76 = sext i16 %75 to i32, !dbg !550
  %77 = or i32 %72, %76, !dbg !551
  %78 = load ptr, ptr %28, align 8, !dbg !552
  %79 = getelementptr inbounds i16, ptr %78, i64 56, !dbg !552
  %80 = load i16, ptr %79, align 2, !dbg !552
  %81 = sext i16 %80 to i32, !dbg !552
  %82 = or i32 %77, %81, !dbg !553
  %83 = icmp eq i32 %82, 0, !dbg !554
  br i1 %83, label %84, label %123, !dbg !554

84:                                               ; preds = %48
    #dbg_declare(ptr %35, !555, !DIExpression(), !557)
  %85 = load ptr, ptr %28, align 8, !dbg !558
  %86 = getelementptr inbounds i16, ptr %85, i64 0, !dbg !558
  %87 = load i16, ptr %86, align 2, !dbg !558
  %88 = sitofp i16 %87 to float, !dbg !558
  %89 = load ptr, ptr %29, align 8, !dbg !558
  %90 = getelementptr inbounds float, ptr %89, i64 0, !dbg !558
  %91 = load float, ptr %90, align 4, !dbg !558
  %92 = fmul float %88, %91, !dbg !558
  store float %92, ptr %35, align 4, !dbg !557
  %93 = load float, ptr %35, align 4, !dbg !559
  %94 = load ptr, ptr %30, align 8, !dbg !560
  %95 = getelementptr inbounds float, ptr %94, i64 0, !dbg !560
  store float %93, ptr %95, align 4, !dbg !561
  %96 = load float, ptr %35, align 4, !dbg !562
  %97 = load ptr, ptr %30, align 8, !dbg !563
  %98 = getelementptr inbounds float, ptr %97, i64 8, !dbg !563
  store float %96, ptr %98, align 4, !dbg !564
  %99 = load float, ptr %35, align 4, !dbg !565
  %100 = load ptr, ptr %30, align 8, !dbg !566
  %101 = getelementptr inbounds float, ptr %100, i64 16, !dbg !566
  store float %99, ptr %101, align 4, !dbg !567
  %102 = load float, ptr %35, align 4, !dbg !568
  %103 = load ptr, ptr %30, align 8, !dbg !569
  %104 = getelementptr inbounds float, ptr %103, i64 24, !dbg !569
  store float %102, ptr %104, align 4, !dbg !570
  %105 = load float, ptr %35, align 4, !dbg !571
  %106 = load ptr, ptr %30, align 8, !dbg !572
  %107 = getelementptr inbounds float, ptr %106, i64 32, !dbg !572
  store float %105, ptr %107, align 4, !dbg !573
  %108 = load float, ptr %35, align 4, !dbg !574
  %109 = load ptr, ptr %30, align 8, !dbg !575
  %110 = getelementptr inbounds float, ptr %109, i64 40, !dbg !575
  store float %108, ptr %110, align 4, !dbg !576
  %111 = load float, ptr %35, align 4, !dbg !577
  %112 = load ptr, ptr %30, align 8, !dbg !578
  %113 = getelementptr inbounds float, ptr %112, i64 48, !dbg !578
  store float %111, ptr %113, align 4, !dbg !579
  %114 = load float, ptr %35, align 4, !dbg !580
  %115 = load ptr, ptr %30, align 8, !dbg !581
  %116 = getelementptr inbounds float, ptr %115, i64 56, !dbg !581
  store float %114, ptr %116, align 4, !dbg !582
  %117 = load ptr, ptr %28, align 8, !dbg !583
  %118 = getelementptr inbounds nuw i16, ptr %117, i32 1, !dbg !583
  store ptr %118, ptr %28, align 8, !dbg !583
  %119 = load ptr, ptr %29, align 8, !dbg !584
  %120 = getelementptr inbounds nuw float, ptr %119, i32 1, !dbg !584
  store ptr %120, ptr %29, align 8, !dbg !584
  %121 = load ptr, ptr %30, align 8, !dbg !585
  %122 = getelementptr inbounds nuw float, ptr %121, i32 1, !dbg !585
  store ptr %122, ptr %30, align 8, !dbg !585
  br label %300, !dbg !586

123:                                              ; preds = %48
  %124 = load ptr, ptr %28, align 8, !dbg !587
  %125 = getelementptr inbounds i16, ptr %124, i64 0, !dbg !587
  %126 = load i16, ptr %125, align 2, !dbg !587
  %127 = sitofp i16 %126 to float, !dbg !587
  %128 = load ptr, ptr %29, align 8, !dbg !587
  %129 = getelementptr inbounds float, ptr %128, i64 0, !dbg !587
  %130 = load float, ptr %129, align 4, !dbg !587
  %131 = fmul float %127, %130, !dbg !587
  store float %131, ptr %11, align 4, !dbg !588
  %132 = load ptr, ptr %28, align 8, !dbg !589
  %133 = getelementptr inbounds i16, ptr %132, i64 16, !dbg !589
  %134 = load i16, ptr %133, align 2, !dbg !589
  %135 = sitofp i16 %134 to float, !dbg !589
  %136 = load ptr, ptr %29, align 8, !dbg !589
  %137 = getelementptr inbounds float, ptr %136, i64 16, !dbg !589
  %138 = load float, ptr %137, align 4, !dbg !589
  %139 = fmul float %135, %138, !dbg !589
  store float %139, ptr %12, align 4, !dbg !590
  %140 = load ptr, ptr %28, align 8, !dbg !591
  %141 = getelementptr inbounds i16, ptr %140, i64 32, !dbg !591
  %142 = load i16, ptr %141, align 2, !dbg !591
  %143 = sitofp i16 %142 to float, !dbg !591
  %144 = load ptr, ptr %29, align 8, !dbg !591
  %145 = getelementptr inbounds float, ptr %144, i64 32, !dbg !591
  %146 = load float, ptr %145, align 4, !dbg !591
  %147 = fmul float %143, %146, !dbg !591
  store float %147, ptr %13, align 4, !dbg !592
  %148 = load ptr, ptr %28, align 8, !dbg !593
  %149 = getelementptr inbounds i16, ptr %148, i64 48, !dbg !593
  %150 = load i16, ptr %149, align 2, !dbg !593
  %151 = sitofp i16 %150 to float, !dbg !593
  %152 = load ptr, ptr %29, align 8, !dbg !593
  %153 = getelementptr inbounds float, ptr %152, i64 48, !dbg !593
  %154 = load float, ptr %153, align 4, !dbg !593
  %155 = fmul float %151, %154, !dbg !593
  store float %155, ptr %14, align 4, !dbg !594
  %156 = load float, ptr %11, align 4, !dbg !595
  %157 = load float, ptr %13, align 4, !dbg !596
  %158 = fadd float %156, %157, !dbg !597
  store float %158, ptr %19, align 4, !dbg !598
  %159 = load float, ptr %11, align 4, !dbg !599
  %160 = load float, ptr %13, align 4, !dbg !600
  %161 = fsub float %159, %160, !dbg !601
  store float %161, ptr %20, align 4, !dbg !602
  %162 = load float, ptr %12, align 4, !dbg !603
  %163 = load float, ptr %14, align 4, !dbg !604
  %164 = fadd float %162, %163, !dbg !605
  store float %164, ptr %22, align 4, !dbg !606
  %165 = load float, ptr %12, align 4, !dbg !607
  %166 = load float, ptr %14, align 4, !dbg !608
  %167 = fsub float %165, %166, !dbg !609
  %168 = load float, ptr %22, align 4, !dbg !610
  %169 = fneg float %168, !dbg !611
  %170 = call float @llvm.fmuladd.f32(float %167, float 0x3FF6A09E60000000, float %169), !dbg !611
  store float %170, ptr %21, align 4, !dbg !612
  %171 = load float, ptr %19, align 4, !dbg !613
  %172 = load float, ptr %22, align 4, !dbg !614
  %173 = fadd float %171, %172, !dbg !615
  store float %173, ptr %11, align 4, !dbg !616
  %174 = load float, ptr %19, align 4, !dbg !617
  %175 = load float, ptr %22, align 4, !dbg !618
  %176 = fsub float %174, %175, !dbg !619
  store float %176, ptr %14, align 4, !dbg !620
  %177 = load float, ptr %20, align 4, !dbg !621
  %178 = load float, ptr %21, align 4, !dbg !622
  %179 = fadd float %177, %178, !dbg !623
  store float %179, ptr %12, align 4, !dbg !624
  %180 = load float, ptr %20, align 4, !dbg !625
  %181 = load float, ptr %21, align 4, !dbg !626
  %182 = fsub float %180, %181, !dbg !627
  store float %182, ptr %13, align 4, !dbg !628
  %183 = load ptr, ptr %28, align 8, !dbg !629
  %184 = getelementptr inbounds i16, ptr %183, i64 8, !dbg !629
  %185 = load i16, ptr %184, align 2, !dbg !629
  %186 = sitofp i16 %185 to float, !dbg !629
  %187 = load ptr, ptr %29, align 8, !dbg !629
  %188 = getelementptr inbounds float, ptr %187, i64 8, !dbg !629
  %189 = load float, ptr %188, align 4, !dbg !629
  %190 = fmul float %186, %189, !dbg !629
  store float %190, ptr %15, align 4, !dbg !630
  %191 = load ptr, ptr %28, align 8, !dbg !631
  %192 = getelementptr inbounds i16, ptr %191, i64 24, !dbg !631
  %193 = load i16, ptr %192, align 2, !dbg !631
  %194 = sitofp i16 %193 to float, !dbg !631
  %195 = load ptr, ptr %29, align 8, !dbg !631
  %196 = getelementptr inbounds float, ptr %195, i64 24, !dbg !631
  %197 = load float, ptr %196, align 4, !dbg !631
  %198 = fmul float %194, %197, !dbg !631
  store float %198, ptr %16, align 4, !dbg !632
  %199 = load ptr, ptr %28, align 8, !dbg !633
  %200 = getelementptr inbounds i16, ptr %199, i64 40, !dbg !633
  %201 = load i16, ptr %200, align 2, !dbg !633
  %202 = sitofp i16 %201 to float, !dbg !633
  %203 = load ptr, ptr %29, align 8, !dbg !633
  %204 = getelementptr inbounds float, ptr %203, i64 40, !dbg !633
  %205 = load float, ptr %204, align 4, !dbg !633
  %206 = fmul float %202, %205, !dbg !633
  store float %206, ptr %17, align 4, !dbg !634
  %207 = load ptr, ptr %28, align 8, !dbg !635
  %208 = getelementptr inbounds i16, ptr %207, i64 56, !dbg !635
  %209 = load i16, ptr %208, align 2, !dbg !635
  %210 = sitofp i16 %209 to float, !dbg !635
  %211 = load ptr, ptr %29, align 8, !dbg !635
  %212 = getelementptr inbounds float, ptr %211, i64 56, !dbg !635
  %213 = load float, ptr %212, align 4, !dbg !635
  %214 = fmul float %210, %213, !dbg !635
  store float %214, ptr %18, align 4, !dbg !636
  %215 = load float, ptr %17, align 4, !dbg !637
  %216 = load float, ptr %16, align 4, !dbg !638
  %217 = fadd float %215, %216, !dbg !639
  store float %217, ptr %27, align 4, !dbg !640
  %218 = load float, ptr %17, align 4, !dbg !641
  %219 = load float, ptr %16, align 4, !dbg !642
  %220 = fsub float %218, %219, !dbg !643
  store float %220, ptr %24, align 4, !dbg !644
  %221 = load float, ptr %15, align 4, !dbg !645
  %222 = load float, ptr %18, align 4, !dbg !646
  %223 = fadd float %221, %222, !dbg !647
  store float %223, ptr %25, align 4, !dbg !648
  %224 = load float, ptr %15, align 4, !dbg !649
  %225 = load float, ptr %18, align 4, !dbg !650
  %226 = fsub float %224, %225, !dbg !651
  store float %226, ptr %26, align 4, !dbg !652
  %227 = load float, ptr %25, align 4, !dbg !653
  %228 = load float, ptr %27, align 4, !dbg !654
  %229 = fadd float %227, %228, !dbg !655
  store float %229, ptr %18, align 4, !dbg !656
  %230 = load float, ptr %25, align 4, !dbg !657
  %231 = load float, ptr %27, align 4, !dbg !658
  %232 = fsub float %230, %231, !dbg !659
  %233 = fmul float %232, 0x3FF6A09E60000000, !dbg !660
  store float %233, ptr %20, align 4, !dbg !661
  %234 = load float, ptr %24, align 4, !dbg !662
  %235 = load float, ptr %26, align 4, !dbg !663
  %236 = fadd float %234, %235, !dbg !664
  %237 = fmul float %236, 0x3FFD906BC0000000, !dbg !665
  store float %237, ptr %23, align 4, !dbg !666
  %238 = load float, ptr %26, align 4, !dbg !667
  %239 = load float, ptr %23, align 4, !dbg !668
  %240 = fneg float %239, !dbg !669
  %241 = call float @llvm.fmuladd.f32(float 0x3FF1517A80000000, float %238, float %240), !dbg !669
  store float %241, ptr %19, align 4, !dbg !670
  %242 = load float, ptr %24, align 4, !dbg !671
  %243 = load float, ptr %23, align 4, !dbg !672
  %244 = call float @llvm.fmuladd.f32(float 0xC004E7AEA0000000, float %242, float %243), !dbg !673
  store float %244, ptr %21, align 4, !dbg !674
  %245 = load float, ptr %21, align 4, !dbg !675
  %246 = load float, ptr %18, align 4, !dbg !676
  %247 = fsub float %245, %246, !dbg !677
  store float %247, ptr %17, align 4, !dbg !678
  %248 = load float, ptr %20, align 4, !dbg !679
  %249 = load float, ptr %17, align 4, !dbg !680
  %250 = fsub float %248, %249, !dbg !681
  store float %250, ptr %16, align 4, !dbg !682
  %251 = load float, ptr %19, align 4, !dbg !683
  %252 = load float, ptr %16, align 4, !dbg !684
  %253 = fadd float %251, %252, !dbg !685
  store float %253, ptr %15, align 4, !dbg !686
  %254 = load float, ptr %11, align 4, !dbg !687
  %255 = load float, ptr %18, align 4, !dbg !688
  %256 = fadd float %254, %255, !dbg !689
  %257 = load ptr, ptr %30, align 8, !dbg !690
  %258 = getelementptr inbounds float, ptr %257, i64 0, !dbg !690
  store float %256, ptr %258, align 4, !dbg !691
  %259 = load float, ptr %11, align 4, !dbg !692
  %260 = load float, ptr %18, align 4, !dbg !693
  %261 = fsub float %259, %260, !dbg !694
  %262 = load ptr, ptr %30, align 8, !dbg !695
  %263 = getelementptr inbounds float, ptr %262, i64 56, !dbg !695
  store float %261, ptr %263, align 4, !dbg !696
  %264 = load float, ptr %12, align 4, !dbg !697
  %265 = load float, ptr %17, align 4, !dbg !698
  %266 = fadd float %264, %265, !dbg !699
  %267 = load ptr, ptr %30, align 8, !dbg !700
  %268 = getelementptr inbounds float, ptr %267, i64 8, !dbg !700
  store float %266, ptr %268, align 4, !dbg !701
  %269 = load float, ptr %12, align 4, !dbg !702
  %270 = load float, ptr %17, align 4, !dbg !703
  %271 = fsub float %269, %270, !dbg !704
  %272 = load ptr, ptr %30, align 8, !dbg !705
  %273 = getelementptr inbounds float, ptr %272, i64 48, !dbg !705
  store float %271, ptr %273, align 4, !dbg !706
  %274 = load float, ptr %13, align 4, !dbg !707
  %275 = load float, ptr %16, align 4, !dbg !708
  %276 = fadd float %274, %275, !dbg !709
  %277 = load ptr, ptr %30, align 8, !dbg !710
  %278 = getelementptr inbounds float, ptr %277, i64 16, !dbg !710
  store float %276, ptr %278, align 4, !dbg !711
  %279 = load float, ptr %13, align 4, !dbg !712
  %280 = load float, ptr %16, align 4, !dbg !713
  %281 = fsub float %279, %280, !dbg !714
  %282 = load ptr, ptr %30, align 8, !dbg !715
  %283 = getelementptr inbounds float, ptr %282, i64 40, !dbg !715
  store float %281, ptr %283, align 4, !dbg !716
  %284 = load float, ptr %14, align 4, !dbg !717
  %285 = load float, ptr %15, align 4, !dbg !718
  %286 = fadd float %284, %285, !dbg !719
  %287 = load ptr, ptr %30, align 8, !dbg !720
  %288 = getelementptr inbounds float, ptr %287, i64 32, !dbg !720
  store float %286, ptr %288, align 4, !dbg !721
  %289 = load float, ptr %14, align 4, !dbg !722
  %290 = load float, ptr %15, align 4, !dbg !723
  %291 = fsub float %289, %290, !dbg !724
  %292 = load ptr, ptr %30, align 8, !dbg !725
  %293 = getelementptr inbounds float, ptr %292, i64 24, !dbg !725
  store float %291, ptr %293, align 4, !dbg !726
  %294 = load ptr, ptr %28, align 8, !dbg !727
  %295 = getelementptr inbounds nuw i16, ptr %294, i32 1, !dbg !727
  store ptr %295, ptr %28, align 8, !dbg !727
  %296 = load ptr, ptr %29, align 8, !dbg !728
  %297 = getelementptr inbounds nuw float, ptr %296, i32 1, !dbg !728
  store ptr %297, ptr %29, align 8, !dbg !728
  %298 = load ptr, ptr %30, align 8, !dbg !729
  %299 = getelementptr inbounds nuw float, ptr %298, i32 1, !dbg !729
  store ptr %299, ptr %30, align 8, !dbg !729
  br label %300, !dbg !730

300:                                              ; preds = %123, %84
  %301 = load i32, ptr %33, align 4, !dbg !731
  %302 = add nsw i32 %301, -1, !dbg !731
  store i32 %302, ptr %33, align 4, !dbg !731
  br label %45, !dbg !732, !llvm.loop !733

303:                                              ; preds = %45
  %304 = getelementptr inbounds [64 x float], ptr %34, i64 0, i64 0, !dbg !736
  store ptr %304, ptr %30, align 8, !dbg !737
  store i32 0, ptr %33, align 4, !dbg !738
  br label %305, !dbg !740

305:                                              ; preds = %529, %303
  %306 = load i32, ptr %33, align 4, !dbg !741
  %307 = icmp slt i32 %306, 8, !dbg !743
  br i1 %307, label %308, label %532, !dbg !744

308:                                              ; preds = %305
  %309 = load ptr, ptr %9, align 8, !dbg !745
  %310 = load i32, ptr %33, align 4, !dbg !747
  %311 = sext i32 %310 to i64, !dbg !745
  %312 = getelementptr inbounds ptr, ptr %309, i64 %311, !dbg !745
  %313 = load ptr, ptr %312, align 8, !dbg !745
  %314 = load i32, ptr %10, align 4, !dbg !748
  %315 = zext i32 %314 to i64, !dbg !749
  %316 = getelementptr inbounds nuw i8, ptr %313, i64 %315, !dbg !749
  store ptr %316, ptr %31, align 8, !dbg !750
  %317 = load ptr, ptr %30, align 8, !dbg !751
  %318 = getelementptr inbounds float, ptr %317, i64 0, !dbg !751
  %319 = load float, ptr %318, align 4, !dbg !751
  %320 = load ptr, ptr %30, align 8, !dbg !752
  %321 = getelementptr inbounds float, ptr %320, i64 4, !dbg !752
  %322 = load float, ptr %321, align 4, !dbg !752
  %323 = fadd float %319, %322, !dbg !753
  store float %323, ptr %19, align 4, !dbg !754
  %324 = load ptr, ptr %30, align 8, !dbg !755
  %325 = getelementptr inbounds float, ptr %324, i64 0, !dbg !755
  %326 = load float, ptr %325, align 4, !dbg !755
  %327 = load ptr, ptr %30, align 8, !dbg !756
  %328 = getelementptr inbounds float, ptr %327, i64 4, !dbg !756
  %329 = load float, ptr %328, align 4, !dbg !756
  %330 = fsub float %326, %329, !dbg !757
  store float %330, ptr %20, align 4, !dbg !758
  %331 = load ptr, ptr %30, align 8, !dbg !759
  %332 = getelementptr inbounds float, ptr %331, i64 2, !dbg !759
  %333 = load float, ptr %332, align 4, !dbg !759
  %334 = load ptr, ptr %30, align 8, !dbg !760
  %335 = getelementptr inbounds float, ptr %334, i64 6, !dbg !760
  %336 = load float, ptr %335, align 4, !dbg !760
  %337 = fadd float %333, %336, !dbg !761
  store float %337, ptr %22, align 4, !dbg !762
  %338 = load ptr, ptr %30, align 8, !dbg !763
  %339 = getelementptr inbounds float, ptr %338, i64 2, !dbg !763
  %340 = load float, ptr %339, align 4, !dbg !763
  %341 = load ptr, ptr %30, align 8, !dbg !764
  %342 = getelementptr inbounds float, ptr %341, i64 6, !dbg !764
  %343 = load float, ptr %342, align 4, !dbg !764
  %344 = fsub float %340, %343, !dbg !765
  %345 = load float, ptr %22, align 4, !dbg !766
  %346 = fneg float %345, !dbg !767
  %347 = call float @llvm.fmuladd.f32(float %344, float 0x3FF6A09E60000000, float %346), !dbg !767
  store float %347, ptr %21, align 4, !dbg !768
  %348 = load float, ptr %19, align 4, !dbg !769
  %349 = load float, ptr %22, align 4, !dbg !770
  %350 = fadd float %348, %349, !dbg !771
  store float %350, ptr %11, align 4, !dbg !772
  %351 = load float, ptr %19, align 4, !dbg !773
  %352 = load float, ptr %22, align 4, !dbg !774
  %353 = fsub float %351, %352, !dbg !775
  store float %353, ptr %14, align 4, !dbg !776
  %354 = load float, ptr %20, align 4, !dbg !777
  %355 = load float, ptr %21, align 4, !dbg !778
  %356 = fadd float %354, %355, !dbg !779
  store float %356, ptr %12, align 4, !dbg !780
  %357 = load float, ptr %20, align 4, !dbg !781
  %358 = load float, ptr %21, align 4, !dbg !782
  %359 = fsub float %357, %358, !dbg !783
  store float %359, ptr %13, align 4, !dbg !784
  %360 = load ptr, ptr %30, align 8, !dbg !785
  %361 = getelementptr inbounds float, ptr %360, i64 5, !dbg !785
  %362 = load float, ptr %361, align 4, !dbg !785
  %363 = load ptr, ptr %30, align 8, !dbg !786
  %364 = getelementptr inbounds float, ptr %363, i64 3, !dbg !786
  %365 = load float, ptr %364, align 4, !dbg !786
  %366 = fadd float %362, %365, !dbg !787
  store float %366, ptr %27, align 4, !dbg !788
  %367 = load ptr, ptr %30, align 8, !dbg !789
  %368 = getelementptr inbounds float, ptr %367, i64 5, !dbg !789
  %369 = load float, ptr %368, align 4, !dbg !789
  %370 = load ptr, ptr %30, align 8, !dbg !790
  %371 = getelementptr inbounds float, ptr %370, i64 3, !dbg !790
  %372 = load float, ptr %371, align 4, !dbg !790
  %373 = fsub float %369, %372, !dbg !791
  store float %373, ptr %24, align 4, !dbg !792
  %374 = load ptr, ptr %30, align 8, !dbg !793
  %375 = getelementptr inbounds float, ptr %374, i64 1, !dbg !793
  %376 = load float, ptr %375, align 4, !dbg !793
  %377 = load ptr, ptr %30, align 8, !dbg !794
  %378 = getelementptr inbounds float, ptr %377, i64 7, !dbg !794
  %379 = load float, ptr %378, align 4, !dbg !794
  %380 = fadd float %376, %379, !dbg !795
  store float %380, ptr %25, align 4, !dbg !796
  %381 = load ptr, ptr %30, align 8, !dbg !797
  %382 = getelementptr inbounds float, ptr %381, i64 1, !dbg !797
  %383 = load float, ptr %382, align 4, !dbg !797
  %384 = load ptr, ptr %30, align 8, !dbg !798
  %385 = getelementptr inbounds float, ptr %384, i64 7, !dbg !798
  %386 = load float, ptr %385, align 4, !dbg !798
  %387 = fsub float %383, %386, !dbg !799
  store float %387, ptr %26, align 4, !dbg !800
  %388 = load float, ptr %25, align 4, !dbg !801
  %389 = load float, ptr %27, align 4, !dbg !802
  %390 = fadd float %388, %389, !dbg !803
  store float %390, ptr %18, align 4, !dbg !804
  %391 = load float, ptr %25, align 4, !dbg !805
  %392 = load float, ptr %27, align 4, !dbg !806
  %393 = fsub float %391, %392, !dbg !807
  %394 = fmul float %393, 0x3FF6A09E60000000, !dbg !808
  store float %394, ptr %20, align 4, !dbg !809
  %395 = load float, ptr %24, align 4, !dbg !810
  %396 = load float, ptr %26, align 4, !dbg !811
  %397 = fadd float %395, %396, !dbg !812
  %398 = fmul float %397, 0x3FFD906BC0000000, !dbg !813
  store float %398, ptr %23, align 4, !dbg !814
  %399 = load float, ptr %26, align 4, !dbg !815
  %400 = load float, ptr %23, align 4, !dbg !816
  %401 = fneg float %400, !dbg !817
  %402 = call float @llvm.fmuladd.f32(float 0x3FF1517A80000000, float %399, float %401), !dbg !817
  store float %402, ptr %19, align 4, !dbg !818
  %403 = load float, ptr %24, align 4, !dbg !819
  %404 = load float, ptr %23, align 4, !dbg !820
  %405 = call float @llvm.fmuladd.f32(float 0xC004E7AEA0000000, float %403, float %404), !dbg !821
  store float %405, ptr %21, align 4, !dbg !822
  %406 = load float, ptr %21, align 4, !dbg !823
  %407 = load float, ptr %18, align 4, !dbg !824
  %408 = fsub float %406, %407, !dbg !825
  store float %408, ptr %17, align 4, !dbg !826
  %409 = load float, ptr %20, align 4, !dbg !827
  %410 = load float, ptr %17, align 4, !dbg !828
  %411 = fsub float %409, %410, !dbg !829
  store float %411, ptr %16, align 4, !dbg !830
  %412 = load float, ptr %19, align 4, !dbg !831
  %413 = load float, ptr %16, align 4, !dbg !832
  %414 = fadd float %412, %413, !dbg !833
  store float %414, ptr %15, align 4, !dbg !834
  %415 = load ptr, ptr %32, align 8, !dbg !835
  %416 = load float, ptr %11, align 4, !dbg !836
  %417 = load float, ptr %18, align 4, !dbg !836
  %418 = fadd float %416, %417, !dbg !836
  %419 = fptosi float %418 to i64, !dbg !836
  %420 = add nsw i64 %419, 4, !dbg !836
  %421 = ashr i64 %420, 3, !dbg !836
  %422 = trunc i64 %421 to i32, !dbg !837
  %423 = and i32 %422, 1023, !dbg !838
  %424 = sext i32 %423 to i64, !dbg !835
  %425 = getelementptr inbounds i8, ptr %415, i64 %424, !dbg !835
  %426 = load i8, ptr %425, align 1, !dbg !835
  %427 = load ptr, ptr %31, align 8, !dbg !839
  %428 = getelementptr inbounds i8, ptr %427, i64 0, !dbg !839
  store i8 %426, ptr %428, align 1, !dbg !840
  %429 = load ptr, ptr %32, align 8, !dbg !841
  %430 = load float, ptr %11, align 4, !dbg !842
  %431 = load float, ptr %18, align 4, !dbg !842
  %432 = fsub float %430, %431, !dbg !842
  %433 = fptosi float %432 to i64, !dbg !842
  %434 = add nsw i64 %433, 4, !dbg !842
  %435 = ashr i64 %434, 3, !dbg !842
  %436 = trunc i64 %435 to i32, !dbg !843
  %437 = and i32 %436, 1023, !dbg !844
  %438 = sext i32 %437 to i64, !dbg !841
  %439 = getelementptr inbounds i8, ptr %429, i64 %438, !dbg !841
  %440 = load i8, ptr %439, align 1, !dbg !841
  %441 = load ptr, ptr %31, align 8, !dbg !845
  %442 = getelementptr inbounds i8, ptr %441, i64 7, !dbg !845
  store i8 %440, ptr %442, align 1, !dbg !846
  %443 = load ptr, ptr %32, align 8, !dbg !847
  %444 = load float, ptr %12, align 4, !dbg !848
  %445 = load float, ptr %17, align 4, !dbg !848
  %446 = fadd float %444, %445, !dbg !848
  %447 = fptosi float %446 to i64, !dbg !848
  %448 = add nsw i64 %447, 4, !dbg !848
  %449 = ashr i64 %448, 3, !dbg !848
  %450 = trunc i64 %449 to i32, !dbg !849
  %451 = and i32 %450, 1023, !dbg !850
  %452 = sext i32 %451 to i64, !dbg !847
  %453 = getelementptr inbounds i8, ptr %443, i64 %452, !dbg !847
  %454 = load i8, ptr %453, align 1, !dbg !847
  %455 = load ptr, ptr %31, align 8, !dbg !851
  %456 = getelementptr inbounds i8, ptr %455, i64 1, !dbg !851
  store i8 %454, ptr %456, align 1, !dbg !852
  %457 = load ptr, ptr %32, align 8, !dbg !853
  %458 = load float, ptr %12, align 4, !dbg !854
  %459 = load float, ptr %17, align 4, !dbg !854
  %460 = fsub float %458, %459, !dbg !854
  %461 = fptosi float %460 to i64, !dbg !854
  %462 = add nsw i64 %461, 4, !dbg !854
  %463 = ashr i64 %462, 3, !dbg !854
  %464 = trunc i64 %463 to i32, !dbg !855
  %465 = and i32 %464, 1023, !dbg !856
  %466 = sext i32 %465 to i64, !dbg !853
  %467 = getelementptr inbounds i8, ptr %457, i64 %466, !dbg !853
  %468 = load i8, ptr %467, align 1, !dbg !853
  %469 = load ptr, ptr %31, align 8, !dbg !857
  %470 = getelementptr inbounds i8, ptr %469, i64 6, !dbg !857
  store i8 %468, ptr %470, align 1, !dbg !858
  %471 = load ptr, ptr %32, align 8, !dbg !859
  %472 = load float, ptr %13, align 4, !dbg !860
  %473 = load float, ptr %16, align 4, !dbg !860
  %474 = fadd float %472, %473, !dbg !860
  %475 = fptosi float %474 to i64, !dbg !860
  %476 = add nsw i64 %475, 4, !dbg !860
  %477 = ashr i64 %476, 3, !dbg !860
  %478 = trunc i64 %477 to i32, !dbg !861
  %479 = and i32 %478, 1023, !dbg !862
  %480 = sext i32 %479 to i64, !dbg !859
  %481 = getelementptr inbounds i8, ptr %471, i64 %480, !dbg !859
  %482 = load i8, ptr %481, align 1, !dbg !859
  %483 = load ptr, ptr %31, align 8, !dbg !863
  %484 = getelementptr inbounds i8, ptr %483, i64 2, !dbg !863
  store i8 %482, ptr %484, align 1, !dbg !864
  %485 = load ptr, ptr %32, align 8, !dbg !865
  %486 = load float, ptr %13, align 4, !dbg !866
  %487 = load float, ptr %16, align 4, !dbg !866
  %488 = fsub float %486, %487, !dbg !866
  %489 = fptosi float %488 to i64, !dbg !866
  %490 = add nsw i64 %489, 4, !dbg !866
  %491 = ashr i64 %490, 3, !dbg !866
  %492 = trunc i64 %491 to i32, !dbg !867
  %493 = and i32 %492, 1023, !dbg !868
  %494 = sext i32 %493 to i64, !dbg !865
  %495 = getelementptr inbounds i8, ptr %485, i64 %494, !dbg !865
  %496 = load i8, ptr %495, align 1, !dbg !865
  %497 = load ptr, ptr %31, align 8, !dbg !869
  %498 = getelementptr inbounds i8, ptr %497, i64 5, !dbg !869
  store i8 %496, ptr %498, align 1, !dbg !870
  %499 = load ptr, ptr %32, align 8, !dbg !871
  %500 = load float, ptr %14, align 4, !dbg !872
  %501 = load float, ptr %15, align 4, !dbg !872
  %502 = fadd float %500, %501, !dbg !872
  %503 = fptosi float %502 to i64, !dbg !872
  %504 = add nsw i64 %503, 4, !dbg !872
  %505 = ashr i64 %504, 3, !dbg !872
  %506 = trunc i64 %505 to i32, !dbg !873
  %507 = and i32 %506, 1023, !dbg !874
  %508 = sext i32 %507 to i64, !dbg !871
  %509 = getelementptr inbounds i8, ptr %499, i64 %508, !dbg !871
  %510 = load i8, ptr %509, align 1, !dbg !871
  %511 = load ptr, ptr %31, align 8, !dbg !875
  %512 = getelementptr inbounds i8, ptr %511, i64 4, !dbg !875
  store i8 %510, ptr %512, align 1, !dbg !876
  %513 = load ptr, ptr %32, align 8, !dbg !877
  %514 = load float, ptr %14, align 4, !dbg !878
  %515 = load float, ptr %15, align 4, !dbg !878
  %516 = fsub float %514, %515, !dbg !878
  %517 = fptosi float %516 to i64, !dbg !878
  %518 = add nsw i64 %517, 4, !dbg !878
  %519 = ashr i64 %518, 3, !dbg !878
  %520 = trunc i64 %519 to i32, !dbg !879
  %521 = and i32 %520, 1023, !dbg !880
  %522 = sext i32 %521 to i64, !dbg !877
  %523 = getelementptr inbounds i8, ptr %513, i64 %522, !dbg !877
  %524 = load i8, ptr %523, align 1, !dbg !877
  %525 = load ptr, ptr %31, align 8, !dbg !881
  %526 = getelementptr inbounds i8, ptr %525, i64 3, !dbg !881
  store i8 %524, ptr %526, align 1, !dbg !882
  %527 = load ptr, ptr %30, align 8, !dbg !883
  %528 = getelementptr inbounds float, ptr %527, i64 8, !dbg !883
  store ptr %528, ptr %30, align 8, !dbg !883
  br label %529, !dbg !884

529:                                              ; preds = %308
  %530 = load i32, ptr %33, align 4, !dbg !885
  %531 = add nsw i32 %530, 1, !dbg !885
  store i32 %531, ptr %33, align 4, !dbg !885
  br label %305, !dbg !886, !llvm.loop !887

532:                                              ; preds = %305
  ret void, !dbg !889
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !30, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jidctflt.c", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "2b4344ef5f0b6d1ca69772362752d91c")
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
!30 = !{!31, !34, !35, !36}
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "FLOAT_MULT_TYPE", file: !33, line: 64, baseType: !34)
!33 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jdct.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "18978d93cfb1aabf5618c3caa5dbcf5a")
!34 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!35 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
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
!47 = distinct !DISubprogram(name: "jpeg_idct_float", scope: !1, file: !1, line: 68, type: !48, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !463)
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
!74 = !{!75, !62, !35, !76}
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !77, line: 18, baseType: !78)
!77 = !DIFile(filename: "/usr/local/lib/clang/20/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!78 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_large", scope: !69, file: !4, line: 735, baseType: !72, size: 64, offset: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_sarray", scope: !69, file: !4, line: 737, baseType: !81, size: 64, offset: 128)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = !DISubroutineType(types: !83)
!83 = !{!84, !62, !35, !90, !90}
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
!94 = !{!95, !62, !35, !90, !90}
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
!108 = !{!109, !62, !35, !112, !90, !90, !90}
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "jvirt_sarray_ptr", file: !4, line: 727, baseType: !110)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = !DICompositeType(tag: DW_TAG_structure_type, name: "jvirt_sarray_control", file: !4, line: 727, flags: DIFlagFwdDecl)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "boolean", file: !37, line: 227, baseType: !35)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "request_virt_barray", scope: !69, file: !4, line: 749, baseType: !114, size: 64, offset: 320)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DISubroutineType(types: !116)
!116 = !{!117, !62, !35, !112, !90, !90, !90}
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
!132 = !{null, !62, !35}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "self_destruct", scope: !69, file: !4, line: 767, baseType: !59, size: 64, offset: 640)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "max_memory_to_use", scope: !69, file: !4, line: 774, baseType: !38, size: 64, offset: 704)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "progress", scope: !64, file: !4, line: 241, baseType: !136, size: 64, offset: 128)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_progress_mgr", file: !4, line: 676, size: 256, elements: !138)
!138 = !{!139, !140, !141, !142, !143}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "progress_monitor", scope: !137, file: !4, line: 677, baseType: !59, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "pass_counter", scope: !137, file: !4, line: 679, baseType: !38, size: 64, offset: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "pass_limit", scope: !137, file: !4, line: 680, baseType: !38, size: 64, offset: 128)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "completed_passes", scope: !137, file: !4, line: 681, baseType: !35, size: 32, offset: 192)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "total_passes", scope: !137, file: !4, line: 682, baseType: !35, size: 32, offset: 224)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "is_decompressor", scope: !64, file: !4, line: 241, baseType: !112, size: 32, offset: 192)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "global_state", scope: !64, file: !4, line: 241, baseType: !35, size: 32, offset: 224)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "emit_message", scope: !56, file: !4, line: 622, baseType: !130, size: 64, offset: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "output_message", scope: !56, file: !4, line: 624, baseType: !59, size: 64, offset: 128)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "format_message", scope: !56, file: !4, line: 626, baseType: !149, size: 64, offset: 192)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = !DISubroutineType(types: !151)
!151 = !{null, !62, !152}
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "reset_error_mgr", scope: !56, file: !4, line: 629, baseType: !59, size: 64, offset: 256)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "msg_code", scope: !56, file: !4, line: 634, baseType: !35, size: 32, offset: 320)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "msg_parm", scope: !56, file: !4, line: 639, baseType: !157, size: 640, offset: 352)
!157 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !56, file: !4, line: 636, size: 640, elements: !158)
!158 = !{!159, !163}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !157, file: !4, line: 637, baseType: !160, size: 256)
!160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 256, elements: !161)
!161 = !{!162}
!162 = !DISubrange(count: 8)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !157, file: !4, line: 638, baseType: !164, size: 640)
!164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 640, elements: !165)
!165 = !{!166}
!166 = !DISubrange(count: 80)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "trace_level", scope: !56, file: !4, line: 643, baseType: !35, size: 32, offset: 992)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "num_warnings", scope: !56, file: !4, line: 651, baseType: !38, size: 64, offset: 1024)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "jpeg_message_table", scope: !56, file: !4, line: 663, baseType: !170, size: 64, offset: 1088)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !172)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !153)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "last_jpeg_message", scope: !56, file: !4, line: 664, baseType: !35, size: 32, offset: 1152)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "addon_message_table", scope: !56, file: !4, line: 668, baseType: !170, size: 64, offset: 1216)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "first_addon_message", scope: !56, file: !4, line: 669, baseType: !35, size: 32, offset: 1280)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "last_addon_message", scope: !56, file: !4, line: 670, baseType: !35, size: 32, offset: 1312)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !52, file: !4, line: 395, baseType: !68, size: 64, offset: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "progress", scope: !52, file: !4, line: 395, baseType: !136, size: 64, offset: 128)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "is_decompressor", scope: !52, file: !4, line: 395, baseType: !112, size: 32, offset: 192)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "global_state", scope: !52, file: !4, line: 395, baseType: !35, size: 32, offset: 224)
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
!206 = !{!112, !50, !35}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "term_source", scope: !184, file: !4, line: 708, baseType: !192, size: 64, offset: 384)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "image_width", scope: !52, file: !4, line: 403, baseType: !90, size: 32, offset: 320)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "image_height", scope: !52, file: !4, line: 404, baseType: !90, size: 32, offset: 352)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "num_components", scope: !52, file: !4, line: 405, baseType: !35, size: 32, offset: 384)
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
!228 = !DIDerivedType(tag: DW_TAG_member, name: "desired_number_of_colors", scope: !52, file: !4, line: 430, baseType: !35, size: 32, offset: 896)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "enable_1pass_quant", scope: !52, file: !4, line: 432, baseType: !112, size: 32, offset: 928)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "enable_external_quant", scope: !52, file: !4, line: 433, baseType: !112, size: 32, offset: 960)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "enable_2pass_quant", scope: !52, file: !4, line: 434, baseType: !112, size: 32, offset: 992)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "output_width", scope: !52, file: !4, line: 442, baseType: !90, size: 32, offset: 1024)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "output_height", scope: !52, file: !4, line: 443, baseType: !90, size: 32, offset: 1056)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "out_color_components", scope: !52, file: !4, line: 444, baseType: !35, size: 32, offset: 1088)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "output_components", scope: !52, file: !4, line: 445, baseType: !35, size: 32, offset: 1120)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "rec_outbuf_height", scope: !52, file: !4, line: 449, baseType: !35, size: 32, offset: 1152)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "actual_number_of_colors", scope: !52, file: !4, line: 461, baseType: !35, size: 32, offset: 1184)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "colormap", scope: !52, file: !4, line: 462, baseType: !84, size: 64, offset: 1216)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "output_scanline", scope: !52, file: !4, line: 472, baseType: !90, size: 32, offset: 1280)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "input_scan_number", scope: !52, file: !4, line: 477, baseType: !35, size: 32, offset: 1312)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "input_iMCU_row", scope: !52, file: !4, line: 478, baseType: !90, size: 32, offset: 1344)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "output_scan_number", scope: !52, file: !4, line: 484, baseType: !35, size: 32, offset: 1376)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "output_iMCU_row", scope: !52, file: !4, line: 485, baseType: !90, size: 32, offset: 1408)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "coef_bits", scope: !52, file: !4, line: 494, baseType: !245, size: 64, offset: 1472)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 2048, elements: !103)
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
!277 = !DIDerivedType(tag: DW_TAG_member, name: "data_precision", scope: !52, file: !4, line: 516, baseType: !35, size: 32, offset: 2304)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "comp_info", scope: !52, file: !4, line: 518, baseType: !279, size: 64, offset: 2368)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "jpeg_component_info", file: !4, line: 179, baseType: !281)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 116, size: 768, elements: !282)
!282 = !{!283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "component_id", scope: !281, file: !4, line: 120, baseType: !35, size: 32)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "component_index", scope: !281, file: !4, line: 121, baseType: !35, size: 32, offset: 32)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "h_samp_factor", scope: !281, file: !4, line: 122, baseType: !35, size: 32, offset: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "v_samp_factor", scope: !281, file: !4, line: 123, baseType: !35, size: 32, offset: 96)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "quant_tbl_no", scope: !281, file: !4, line: 124, baseType: !35, size: 32, offset: 128)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "dc_tbl_no", scope: !281, file: !4, line: 129, baseType: !35, size: 32, offset: 160)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tbl_no", scope: !281, file: !4, line: 130, baseType: !35, size: 32, offset: 192)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "width_in_blocks", scope: !281, file: !4, line: 139, baseType: !90, size: 32, offset: 224)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "height_in_blocks", scope: !281, file: !4, line: 140, baseType: !90, size: 32, offset: 256)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "DCT_scaled_size", scope: !281, file: !4, line: 147, baseType: !35, size: 32, offset: 288)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "downsampled_width", scope: !281, file: !4, line: 154, baseType: !90, size: 32, offset: 320)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "downsampled_height", scope: !281, file: !4, line: 155, baseType: !90, size: 32, offset: 352)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "component_needed", scope: !281, file: !4, line: 160, baseType: !112, size: 32, offset: 384)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_width", scope: !281, file: !4, line: 164, baseType: !35, size: 32, offset: 416)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_height", scope: !281, file: !4, line: 165, baseType: !35, size: 32, offset: 448)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_blocks", scope: !281, file: !4, line: 166, baseType: !35, size: 32, offset: 480)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_sample_width", scope: !281, file: !4, line: 167, baseType: !35, size: 32, offset: 512)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "last_col_width", scope: !281, file: !4, line: 168, baseType: !35, size: 32, offset: 544)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "last_row_height", scope: !281, file: !4, line: 169, baseType: !35, size: 32, offset: 576)
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
!320 = !DIDerivedType(tag: DW_TAG_member, name: "max_h_samp_factor", scope: !52, file: !4, line: 550, baseType: !35, size: 32, offset: 3104)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "max_v_samp_factor", scope: !52, file: !4, line: 551, baseType: !35, size: 32, offset: 3136)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "min_DCT_scaled_size", scope: !52, file: !4, line: 553, baseType: !35, size: 32, offset: 3168)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "total_iMCU_rows", scope: !52, file: !4, line: 555, baseType: !90, size: 32, offset: 3200)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "sample_range_limit", scope: !52, file: !4, line: 564, baseType: !87, size: 64, offset: 3264)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "comps_in_scan", scope: !52, file: !4, line: 571, baseType: !35, size: 32, offset: 3328)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "cur_comp_info", scope: !52, file: !4, line: 572, baseType: !327, size: 256, offset: 3392)
!327 = !DICompositeType(tag: DW_TAG_array_type, baseType: !279, size: 256, elements: !258)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "MCUs_per_row", scope: !52, file: !4, line: 575, baseType: !90, size: 32, offset: 3648)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_rows_in_scan", scope: !52, file: !4, line: 576, baseType: !90, size: 32, offset: 3680)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "blocks_in_MCU", scope: !52, file: !4, line: 578, baseType: !35, size: 32, offset: 3712)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_membership", scope: !52, file: !4, line: 579, baseType: !332, size: 320, offset: 3744)
!332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 320, elements: !333)
!333 = !{!334}
!334 = !DISubrange(count: 10)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "Ss", scope: !52, file: !4, line: 583, baseType: !35, size: 32, offset: 4064)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "Se", scope: !52, file: !4, line: 583, baseType: !35, size: 32, offset: 4096)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "Ah", scope: !52, file: !4, line: 583, baseType: !35, size: 32, offset: 4128)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "Al", scope: !52, file: !4, line: 583, baseType: !35, size: 32, offset: 4160)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "unread_marker", scope: !52, file: !4, line: 589, baseType: !35, size: 32, offset: 4192)
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
!369 = !{!35, !50}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "start_output_pass", scope: !363, file: !24, line: 168, baseType: !192, size: 64, offset: 128)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "decompress_data", scope: !363, file: !24, line: 169, baseType: !372, size: 64, offset: 192)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = !DISubroutineType(types: !374)
!374 = !{!35, !50, !375}
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
!411 = !DIDerivedType(tag: DW_TAG_member, name: "next_restart_num", scope: !400, file: !24, line: 206, baseType: !35, size: 32, offset: 1344)
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
!446 = !{null, !50, !375, !90, !84, !35}
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
!458 = !{null, !50, !84, !84, !35}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "finish_pass", scope: !449, file: !24, line: 257, baseType: !192, size: 64, offset: 128)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "new_color_map", scope: !449, file: !24, line: 258, baseType: !192, size: 64, offset: 192)
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "JCOEFPTR", file: !4, line: 75, baseType: !462)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!463 = !{}
!464 = !DILocalVariable(name: "cinfo", arg: 1, scope: !47, file: !1, line: 68, type: !50)
!465 = !DILocation(line: 68, column: 35, scope: !47)
!466 = !DILocalVariable(name: "compptr", arg: 2, scope: !47, file: !1, line: 68, type: !279)
!467 = !DILocation(line: 68, column: 64, scope: !47)
!468 = !DILocalVariable(name: "coef_block", arg: 3, scope: !47, file: !1, line: 69, type: !461)
!469 = !DILocation(line: 69, column: 13, scope: !47)
!470 = !DILocalVariable(name: "output_buf", arg: 4, scope: !47, file: !1, line: 70, type: !84)
!471 = !DILocation(line: 70, column: 15, scope: !47)
!472 = !DILocalVariable(name: "output_col", arg: 5, scope: !47, file: !1, line: 70, type: !90)
!473 = !DILocation(line: 70, column: 38, scope: !47)
!474 = !DILocalVariable(name: "tmp0", scope: !47, file: !1, line: 72, type: !34)
!475 = !DILocation(line: 72, column: 14, scope: !47)
!476 = !DILocalVariable(name: "tmp1", scope: !47, file: !1, line: 72, type: !34)
!477 = !DILocation(line: 72, column: 20, scope: !47)
!478 = !DILocalVariable(name: "tmp2", scope: !47, file: !1, line: 72, type: !34)
!479 = !DILocation(line: 72, column: 26, scope: !47)
!480 = !DILocalVariable(name: "tmp3", scope: !47, file: !1, line: 72, type: !34)
!481 = !DILocation(line: 72, column: 32, scope: !47)
!482 = !DILocalVariable(name: "tmp4", scope: !47, file: !1, line: 72, type: !34)
!483 = !DILocation(line: 72, column: 38, scope: !47)
!484 = !DILocalVariable(name: "tmp5", scope: !47, file: !1, line: 72, type: !34)
!485 = !DILocation(line: 72, column: 44, scope: !47)
!486 = !DILocalVariable(name: "tmp6", scope: !47, file: !1, line: 72, type: !34)
!487 = !DILocation(line: 72, column: 50, scope: !47)
!488 = !DILocalVariable(name: "tmp7", scope: !47, file: !1, line: 72, type: !34)
!489 = !DILocation(line: 72, column: 56, scope: !47)
!490 = !DILocalVariable(name: "tmp10", scope: !47, file: !1, line: 73, type: !34)
!491 = !DILocation(line: 73, column: 14, scope: !47)
!492 = !DILocalVariable(name: "tmp11", scope: !47, file: !1, line: 73, type: !34)
!493 = !DILocation(line: 73, column: 21, scope: !47)
!494 = !DILocalVariable(name: "tmp12", scope: !47, file: !1, line: 73, type: !34)
!495 = !DILocation(line: 73, column: 28, scope: !47)
!496 = !DILocalVariable(name: "tmp13", scope: !47, file: !1, line: 73, type: !34)
!497 = !DILocation(line: 73, column: 35, scope: !47)
!498 = !DILocalVariable(name: "z5", scope: !47, file: !1, line: 74, type: !34)
!499 = !DILocation(line: 74, column: 14, scope: !47)
!500 = !DILocalVariable(name: "z10", scope: !47, file: !1, line: 74, type: !34)
!501 = !DILocation(line: 74, column: 18, scope: !47)
!502 = !DILocalVariable(name: "z11", scope: !47, file: !1, line: 74, type: !34)
!503 = !DILocation(line: 74, column: 23, scope: !47)
!504 = !DILocalVariable(name: "z12", scope: !47, file: !1, line: 74, type: !34)
!505 = !DILocation(line: 74, column: 28, scope: !47)
!506 = !DILocalVariable(name: "z13", scope: !47, file: !1, line: 74, type: !34)
!507 = !DILocation(line: 74, column: 33, scope: !47)
!508 = !DILocalVariable(name: "inptr", scope: !47, file: !1, line: 75, type: !461)
!509 = !DILocation(line: 75, column: 12, scope: !47)
!510 = !DILocalVariable(name: "quantptr", scope: !47, file: !1, line: 76, type: !31)
!511 = !DILocation(line: 76, column: 21, scope: !47)
!512 = !DILocalVariable(name: "wsptr", scope: !47, file: !1, line: 77, type: !513)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!514 = !DILocation(line: 77, column: 16, scope: !47)
!515 = !DILocalVariable(name: "outptr", scope: !47, file: !1, line: 78, type: !86)
!516 = !DILocation(line: 78, column: 12, scope: !47)
!517 = !DILocalVariable(name: "range_limit", scope: !47, file: !1, line: 79, type: !87)
!518 = !DILocation(line: 79, column: 12, scope: !47)
!519 = !DILocation(line: 79, column: 26, scope: !47)
!520 = !DILocalVariable(name: "ctr", scope: !47, file: !1, line: 80, type: !35)
!521 = !DILocation(line: 80, column: 7, scope: !47)
!522 = !DILocalVariable(name: "workspace", scope: !47, file: !1, line: 81, type: !523)
!523 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 2048, elements: !103)
!524 = !DILocation(line: 81, column: 14, scope: !47)
!525 = !DILocation(line: 86, column: 11, scope: !47)
!526 = !DILocation(line: 86, column: 9, scope: !47)
!527 = !DILocation(line: 87, column: 34, scope: !47)
!528 = !DILocation(line: 87, column: 43, scope: !47)
!529 = !DILocation(line: 87, column: 12, scope: !47)
!530 = !DILocation(line: 88, column: 11, scope: !47)
!531 = !DILocation(line: 88, column: 9, scope: !47)
!532 = !DILocation(line: 89, column: 12, scope: !533)
!533 = distinct !DILexicalBlock(scope: !47, file: !1, line: 89, column: 3)
!534 = !DILocation(line: 89, column: 8, scope: !533)
!535 = !DILocation(line: 89, column: 23, scope: !536)
!536 = distinct !DILexicalBlock(scope: !533, file: !1, line: 89, column: 3)
!537 = !DILocation(line: 89, column: 27, scope: !536)
!538 = !DILocation(line: 89, column: 3, scope: !533)
!539 = !DILocation(line: 99, column: 10, scope: !540)
!540 = distinct !DILexicalBlock(scope: !541, file: !1, line: 99, column: 9)
!541 = distinct !DILexicalBlock(scope: !536, file: !1, line: 89, column: 39)
!542 = !DILocation(line: 99, column: 29, scope: !540)
!543 = !DILocation(line: 99, column: 27, scope: !540)
!544 = !DILocation(line: 99, column: 48, scope: !540)
!545 = !DILocation(line: 99, column: 46, scope: !540)
!546 = !DILocation(line: 100, column: 3, scope: !540)
!547 = !DILocation(line: 99, column: 65, scope: !540)
!548 = !DILocation(line: 100, column: 22, scope: !540)
!549 = !DILocation(line: 100, column: 20, scope: !540)
!550 = !DILocation(line: 100, column: 41, scope: !540)
!551 = !DILocation(line: 100, column: 39, scope: !540)
!552 = !DILocation(line: 101, column: 3, scope: !540)
!553 = !DILocation(line: 100, column: 58, scope: !540)
!554 = !DILocation(line: 101, column: 21, scope: !540)
!555 = !DILocalVariable(name: "dcval", scope: !556, file: !1, line: 103, type: !34)
!556 = distinct !DILexicalBlock(scope: !540, file: !1, line: 101, column: 27)
!557 = !DILocation(line: 103, column: 18, scope: !556)
!558 = !DILocation(line: 103, column: 26, scope: !556)
!559 = !DILocation(line: 105, column: 26, scope: !556)
!560 = !DILocation(line: 105, column: 7, scope: !556)
!561 = !DILocation(line: 105, column: 24, scope: !556)
!562 = !DILocation(line: 106, column: 26, scope: !556)
!563 = !DILocation(line: 106, column: 7, scope: !556)
!564 = !DILocation(line: 106, column: 24, scope: !556)
!565 = !DILocation(line: 107, column: 26, scope: !556)
!566 = !DILocation(line: 107, column: 7, scope: !556)
!567 = !DILocation(line: 107, column: 24, scope: !556)
!568 = !DILocation(line: 108, column: 26, scope: !556)
!569 = !DILocation(line: 108, column: 7, scope: !556)
!570 = !DILocation(line: 108, column: 24, scope: !556)
!571 = !DILocation(line: 109, column: 26, scope: !556)
!572 = !DILocation(line: 109, column: 7, scope: !556)
!573 = !DILocation(line: 109, column: 24, scope: !556)
!574 = !DILocation(line: 110, column: 26, scope: !556)
!575 = !DILocation(line: 110, column: 7, scope: !556)
!576 = !DILocation(line: 110, column: 24, scope: !556)
!577 = !DILocation(line: 111, column: 26, scope: !556)
!578 = !DILocation(line: 111, column: 7, scope: !556)
!579 = !DILocation(line: 111, column: 24, scope: !556)
!580 = !DILocation(line: 112, column: 26, scope: !556)
!581 = !DILocation(line: 112, column: 7, scope: !556)
!582 = !DILocation(line: 112, column: 24, scope: !556)
!583 = !DILocation(line: 114, column: 12, scope: !556)
!584 = !DILocation(line: 115, column: 15, scope: !556)
!585 = !DILocation(line: 116, column: 12, scope: !556)
!586 = !DILocation(line: 117, column: 7, scope: !556)
!587 = !DILocation(line: 122, column: 12, scope: !541)
!588 = !DILocation(line: 122, column: 10, scope: !541)
!589 = !DILocation(line: 123, column: 12, scope: !541)
!590 = !DILocation(line: 123, column: 10, scope: !541)
!591 = !DILocation(line: 124, column: 12, scope: !541)
!592 = !DILocation(line: 124, column: 10, scope: !541)
!593 = !DILocation(line: 125, column: 12, scope: !541)
!594 = !DILocation(line: 125, column: 10, scope: !541)
!595 = !DILocation(line: 127, column: 13, scope: !541)
!596 = !DILocation(line: 127, column: 20, scope: !541)
!597 = !DILocation(line: 127, column: 18, scope: !541)
!598 = !DILocation(line: 127, column: 11, scope: !541)
!599 = !DILocation(line: 128, column: 13, scope: !541)
!600 = !DILocation(line: 128, column: 20, scope: !541)
!601 = !DILocation(line: 128, column: 18, scope: !541)
!602 = !DILocation(line: 128, column: 11, scope: !541)
!603 = !DILocation(line: 130, column: 13, scope: !541)
!604 = !DILocation(line: 130, column: 20, scope: !541)
!605 = !DILocation(line: 130, column: 18, scope: !541)
!606 = !DILocation(line: 130, column: 11, scope: !541)
!607 = !DILocation(line: 131, column: 14, scope: !541)
!608 = !DILocation(line: 131, column: 21, scope: !541)
!609 = !DILocation(line: 131, column: 19, scope: !541)
!610 = !DILocation(line: 131, column: 58, scope: !541)
!611 = !DILocation(line: 131, column: 56, scope: !541)
!612 = !DILocation(line: 131, column: 11, scope: !541)
!613 = !DILocation(line: 133, column: 12, scope: !541)
!614 = !DILocation(line: 133, column: 20, scope: !541)
!615 = !DILocation(line: 133, column: 18, scope: !541)
!616 = !DILocation(line: 133, column: 10, scope: !541)
!617 = !DILocation(line: 134, column: 12, scope: !541)
!618 = !DILocation(line: 134, column: 20, scope: !541)
!619 = !DILocation(line: 134, column: 18, scope: !541)
!620 = !DILocation(line: 134, column: 10, scope: !541)
!621 = !DILocation(line: 135, column: 12, scope: !541)
!622 = !DILocation(line: 135, column: 20, scope: !541)
!623 = !DILocation(line: 135, column: 18, scope: !541)
!624 = !DILocation(line: 135, column: 10, scope: !541)
!625 = !DILocation(line: 136, column: 12, scope: !541)
!626 = !DILocation(line: 136, column: 20, scope: !541)
!627 = !DILocation(line: 136, column: 18, scope: !541)
!628 = !DILocation(line: 136, column: 10, scope: !541)
!629 = !DILocation(line: 140, column: 12, scope: !541)
!630 = !DILocation(line: 140, column: 10, scope: !541)
!631 = !DILocation(line: 141, column: 12, scope: !541)
!632 = !DILocation(line: 141, column: 10, scope: !541)
!633 = !DILocation(line: 142, column: 12, scope: !541)
!634 = !DILocation(line: 142, column: 10, scope: !541)
!635 = !DILocation(line: 143, column: 12, scope: !541)
!636 = !DILocation(line: 143, column: 10, scope: !541)
!637 = !DILocation(line: 145, column: 11, scope: !541)
!638 = !DILocation(line: 145, column: 18, scope: !541)
!639 = !DILocation(line: 145, column: 16, scope: !541)
!640 = !DILocation(line: 145, column: 9, scope: !541)
!641 = !DILocation(line: 146, column: 11, scope: !541)
!642 = !DILocation(line: 146, column: 18, scope: !541)
!643 = !DILocation(line: 146, column: 16, scope: !541)
!644 = !DILocation(line: 146, column: 9, scope: !541)
!645 = !DILocation(line: 147, column: 11, scope: !541)
!646 = !DILocation(line: 147, column: 18, scope: !541)
!647 = !DILocation(line: 147, column: 16, scope: !541)
!648 = !DILocation(line: 147, column: 9, scope: !541)
!649 = !DILocation(line: 148, column: 11, scope: !541)
!650 = !DILocation(line: 148, column: 18, scope: !541)
!651 = !DILocation(line: 148, column: 16, scope: !541)
!652 = !DILocation(line: 148, column: 9, scope: !541)
!653 = !DILocation(line: 150, column: 12, scope: !541)
!654 = !DILocation(line: 150, column: 18, scope: !541)
!655 = !DILocation(line: 150, column: 16, scope: !541)
!656 = !DILocation(line: 150, column: 10, scope: !541)
!657 = !DILocation(line: 151, column: 14, scope: !541)
!658 = !DILocation(line: 151, column: 20, scope: !541)
!659 = !DILocation(line: 151, column: 18, scope: !541)
!660 = !DILocation(line: 151, column: 25, scope: !541)
!661 = !DILocation(line: 151, column: 11, scope: !541)
!662 = !DILocation(line: 153, column: 11, scope: !541)
!663 = !DILocation(line: 153, column: 17, scope: !541)
!664 = !DILocation(line: 153, column: 15, scope: !541)
!665 = !DILocation(line: 153, column: 22, scope: !541)
!666 = !DILocation(line: 153, column: 8, scope: !541)
!667 = !DILocation(line: 154, column: 42, scope: !541)
!668 = !DILocation(line: 154, column: 48, scope: !541)
!669 = !DILocation(line: 154, column: 46, scope: !541)
!670 = !DILocation(line: 154, column: 11, scope: !541)
!671 = !DILocation(line: 155, column: 43, scope: !541)
!672 = !DILocation(line: 155, column: 49, scope: !541)
!673 = !DILocation(line: 155, column: 47, scope: !541)
!674 = !DILocation(line: 155, column: 11, scope: !541)
!675 = !DILocation(line: 157, column: 12, scope: !541)
!676 = !DILocation(line: 157, column: 20, scope: !541)
!677 = !DILocation(line: 157, column: 18, scope: !541)
!678 = !DILocation(line: 157, column: 10, scope: !541)
!679 = !DILocation(line: 158, column: 12, scope: !541)
!680 = !DILocation(line: 158, column: 20, scope: !541)
!681 = !DILocation(line: 158, column: 18, scope: !541)
!682 = !DILocation(line: 158, column: 10, scope: !541)
!683 = !DILocation(line: 159, column: 12, scope: !541)
!684 = !DILocation(line: 159, column: 20, scope: !541)
!685 = !DILocation(line: 159, column: 18, scope: !541)
!686 = !DILocation(line: 159, column: 10, scope: !541)
!687 = !DILocation(line: 161, column: 24, scope: !541)
!688 = !DILocation(line: 161, column: 31, scope: !541)
!689 = !DILocation(line: 161, column: 29, scope: !541)
!690 = !DILocation(line: 161, column: 5, scope: !541)
!691 = !DILocation(line: 161, column: 22, scope: !541)
!692 = !DILocation(line: 162, column: 24, scope: !541)
!693 = !DILocation(line: 162, column: 31, scope: !541)
!694 = !DILocation(line: 162, column: 29, scope: !541)
!695 = !DILocation(line: 162, column: 5, scope: !541)
!696 = !DILocation(line: 162, column: 22, scope: !541)
!697 = !DILocation(line: 163, column: 24, scope: !541)
!698 = !DILocation(line: 163, column: 31, scope: !541)
!699 = !DILocation(line: 163, column: 29, scope: !541)
!700 = !DILocation(line: 163, column: 5, scope: !541)
!701 = !DILocation(line: 163, column: 22, scope: !541)
!702 = !DILocation(line: 164, column: 24, scope: !541)
!703 = !DILocation(line: 164, column: 31, scope: !541)
!704 = !DILocation(line: 164, column: 29, scope: !541)
!705 = !DILocation(line: 164, column: 5, scope: !541)
!706 = !DILocation(line: 164, column: 22, scope: !541)
!707 = !DILocation(line: 165, column: 24, scope: !541)
!708 = !DILocation(line: 165, column: 31, scope: !541)
!709 = !DILocation(line: 165, column: 29, scope: !541)
!710 = !DILocation(line: 165, column: 5, scope: !541)
!711 = !DILocation(line: 165, column: 22, scope: !541)
!712 = !DILocation(line: 166, column: 24, scope: !541)
!713 = !DILocation(line: 166, column: 31, scope: !541)
!714 = !DILocation(line: 166, column: 29, scope: !541)
!715 = !DILocation(line: 166, column: 5, scope: !541)
!716 = !DILocation(line: 166, column: 22, scope: !541)
!717 = !DILocation(line: 167, column: 24, scope: !541)
!718 = !DILocation(line: 167, column: 31, scope: !541)
!719 = !DILocation(line: 167, column: 29, scope: !541)
!720 = !DILocation(line: 167, column: 5, scope: !541)
!721 = !DILocation(line: 167, column: 22, scope: !541)
!722 = !DILocation(line: 168, column: 24, scope: !541)
!723 = !DILocation(line: 168, column: 31, scope: !541)
!724 = !DILocation(line: 168, column: 29, scope: !541)
!725 = !DILocation(line: 168, column: 5, scope: !541)
!726 = !DILocation(line: 168, column: 22, scope: !541)
!727 = !DILocation(line: 170, column: 10, scope: !541)
!728 = !DILocation(line: 171, column: 13, scope: !541)
!729 = !DILocation(line: 172, column: 10, scope: !541)
!730 = !DILocation(line: 173, column: 3, scope: !541)
!731 = !DILocation(line: 89, column: 35, scope: !536)
!732 = !DILocation(line: 89, column: 3, scope: !536)
!733 = distinct !{!733, !538, !734, !735}
!734 = !DILocation(line: 173, column: 3, scope: !533)
!735 = !{!"llvm.loop.mustprogress"}
!736 = !DILocation(line: 178, column: 11, scope: !47)
!737 = !DILocation(line: 178, column: 9, scope: !47)
!738 = !DILocation(line: 179, column: 12, scope: !739)
!739 = distinct !DILexicalBlock(scope: !47, file: !1, line: 179, column: 3)
!740 = !DILocation(line: 179, column: 8, scope: !739)
!741 = !DILocation(line: 179, column: 17, scope: !742)
!742 = distinct !DILexicalBlock(scope: !739, file: !1, line: 179, column: 3)
!743 = !DILocation(line: 179, column: 21, scope: !742)
!744 = !DILocation(line: 179, column: 3, scope: !739)
!745 = !DILocation(line: 180, column: 14, scope: !746)
!746 = distinct !DILexicalBlock(scope: !742, file: !1, line: 179, column: 39)
!747 = !DILocation(line: 180, column: 25, scope: !746)
!748 = !DILocation(line: 180, column: 32, scope: !746)
!749 = !DILocation(line: 180, column: 30, scope: !746)
!750 = !DILocation(line: 180, column: 12, scope: !746)
!751 = !DILocation(line: 189, column: 13, scope: !746)
!752 = !DILocation(line: 189, column: 24, scope: !746)
!753 = !DILocation(line: 189, column: 22, scope: !746)
!754 = !DILocation(line: 189, column: 11, scope: !746)
!755 = !DILocation(line: 190, column: 13, scope: !746)
!756 = !DILocation(line: 190, column: 24, scope: !746)
!757 = !DILocation(line: 190, column: 22, scope: !746)
!758 = !DILocation(line: 190, column: 11, scope: !746)
!759 = !DILocation(line: 192, column: 13, scope: !746)
!760 = !DILocation(line: 192, column: 24, scope: !746)
!761 = !DILocation(line: 192, column: 22, scope: !746)
!762 = !DILocation(line: 192, column: 11, scope: !746)
!763 = !DILocation(line: 193, column: 14, scope: !746)
!764 = !DILocation(line: 193, column: 25, scope: !746)
!765 = !DILocation(line: 193, column: 23, scope: !746)
!766 = !DILocation(line: 193, column: 66, scope: !746)
!767 = !DILocation(line: 193, column: 64, scope: !746)
!768 = !DILocation(line: 193, column: 11, scope: !746)
!769 = !DILocation(line: 195, column: 12, scope: !746)
!770 = !DILocation(line: 195, column: 20, scope: !746)
!771 = !DILocation(line: 195, column: 18, scope: !746)
!772 = !DILocation(line: 195, column: 10, scope: !746)
!773 = !DILocation(line: 196, column: 12, scope: !746)
!774 = !DILocation(line: 196, column: 20, scope: !746)
!775 = !DILocation(line: 196, column: 18, scope: !746)
!776 = !DILocation(line: 196, column: 10, scope: !746)
!777 = !DILocation(line: 197, column: 12, scope: !746)
!778 = !DILocation(line: 197, column: 20, scope: !746)
!779 = !DILocation(line: 197, column: 18, scope: !746)
!780 = !DILocation(line: 197, column: 10, scope: !746)
!781 = !DILocation(line: 198, column: 12, scope: !746)
!782 = !DILocation(line: 198, column: 20, scope: !746)
!783 = !DILocation(line: 198, column: 18, scope: !746)
!784 = !DILocation(line: 198, column: 10, scope: !746)
!785 = !DILocation(line: 202, column: 11, scope: !746)
!786 = !DILocation(line: 202, column: 22, scope: !746)
!787 = !DILocation(line: 202, column: 20, scope: !746)
!788 = !DILocation(line: 202, column: 9, scope: !746)
!789 = !DILocation(line: 203, column: 11, scope: !746)
!790 = !DILocation(line: 203, column: 22, scope: !746)
!791 = !DILocation(line: 203, column: 20, scope: !746)
!792 = !DILocation(line: 203, column: 9, scope: !746)
!793 = !DILocation(line: 204, column: 11, scope: !746)
!794 = !DILocation(line: 204, column: 22, scope: !746)
!795 = !DILocation(line: 204, column: 20, scope: !746)
!796 = !DILocation(line: 204, column: 9, scope: !746)
!797 = !DILocation(line: 205, column: 11, scope: !746)
!798 = !DILocation(line: 205, column: 22, scope: !746)
!799 = !DILocation(line: 205, column: 20, scope: !746)
!800 = !DILocation(line: 205, column: 9, scope: !746)
!801 = !DILocation(line: 207, column: 12, scope: !746)
!802 = !DILocation(line: 207, column: 18, scope: !746)
!803 = !DILocation(line: 207, column: 16, scope: !746)
!804 = !DILocation(line: 207, column: 10, scope: !746)
!805 = !DILocation(line: 208, column: 14, scope: !746)
!806 = !DILocation(line: 208, column: 20, scope: !746)
!807 = !DILocation(line: 208, column: 18, scope: !746)
!808 = !DILocation(line: 208, column: 25, scope: !746)
!809 = !DILocation(line: 208, column: 11, scope: !746)
!810 = !DILocation(line: 210, column: 11, scope: !746)
!811 = !DILocation(line: 210, column: 17, scope: !746)
!812 = !DILocation(line: 210, column: 15, scope: !746)
!813 = !DILocation(line: 210, column: 22, scope: !746)
!814 = !DILocation(line: 210, column: 8, scope: !746)
!815 = !DILocation(line: 211, column: 42, scope: !746)
!816 = !DILocation(line: 211, column: 48, scope: !746)
!817 = !DILocation(line: 211, column: 46, scope: !746)
!818 = !DILocation(line: 211, column: 11, scope: !746)
!819 = !DILocation(line: 212, column: 43, scope: !746)
!820 = !DILocation(line: 212, column: 49, scope: !746)
!821 = !DILocation(line: 212, column: 47, scope: !746)
!822 = !DILocation(line: 212, column: 11, scope: !746)
!823 = !DILocation(line: 214, column: 12, scope: !746)
!824 = !DILocation(line: 214, column: 20, scope: !746)
!825 = !DILocation(line: 214, column: 18, scope: !746)
!826 = !DILocation(line: 214, column: 10, scope: !746)
!827 = !DILocation(line: 215, column: 12, scope: !746)
!828 = !DILocation(line: 215, column: 20, scope: !746)
!829 = !DILocation(line: 215, column: 18, scope: !746)
!830 = !DILocation(line: 215, column: 10, scope: !746)
!831 = !DILocation(line: 216, column: 12, scope: !746)
!832 = !DILocation(line: 216, column: 20, scope: !746)
!833 = !DILocation(line: 216, column: 18, scope: !746)
!834 = !DILocation(line: 216, column: 10, scope: !746)
!835 = !DILocation(line: 220, column: 17, scope: !746)
!836 = !DILocation(line: 220, column: 35, scope: !746)
!837 = !DILocation(line: 220, column: 29, scope: !746)
!838 = !DILocation(line: 221, column: 8, scope: !746)
!839 = !DILocation(line: 220, column: 5, scope: !746)
!840 = !DILocation(line: 220, column: 15, scope: !746)
!841 = !DILocation(line: 222, column: 17, scope: !746)
!842 = !DILocation(line: 222, column: 35, scope: !746)
!843 = !DILocation(line: 222, column: 29, scope: !746)
!844 = !DILocation(line: 223, column: 8, scope: !746)
!845 = !DILocation(line: 222, column: 5, scope: !746)
!846 = !DILocation(line: 222, column: 15, scope: !746)
!847 = !DILocation(line: 224, column: 17, scope: !746)
!848 = !DILocation(line: 224, column: 35, scope: !746)
!849 = !DILocation(line: 224, column: 29, scope: !746)
!850 = !DILocation(line: 225, column: 8, scope: !746)
!851 = !DILocation(line: 224, column: 5, scope: !746)
!852 = !DILocation(line: 224, column: 15, scope: !746)
!853 = !DILocation(line: 226, column: 17, scope: !746)
!854 = !DILocation(line: 226, column: 35, scope: !746)
!855 = !DILocation(line: 226, column: 29, scope: !746)
!856 = !DILocation(line: 227, column: 8, scope: !746)
!857 = !DILocation(line: 226, column: 5, scope: !746)
!858 = !DILocation(line: 226, column: 15, scope: !746)
!859 = !DILocation(line: 228, column: 17, scope: !746)
!860 = !DILocation(line: 228, column: 35, scope: !746)
!861 = !DILocation(line: 228, column: 29, scope: !746)
!862 = !DILocation(line: 229, column: 8, scope: !746)
!863 = !DILocation(line: 228, column: 5, scope: !746)
!864 = !DILocation(line: 228, column: 15, scope: !746)
!865 = !DILocation(line: 230, column: 17, scope: !746)
!866 = !DILocation(line: 230, column: 35, scope: !746)
!867 = !DILocation(line: 230, column: 29, scope: !746)
!868 = !DILocation(line: 231, column: 8, scope: !746)
!869 = !DILocation(line: 230, column: 5, scope: !746)
!870 = !DILocation(line: 230, column: 15, scope: !746)
!871 = !DILocation(line: 232, column: 17, scope: !746)
!872 = !DILocation(line: 232, column: 35, scope: !746)
!873 = !DILocation(line: 232, column: 29, scope: !746)
!874 = !DILocation(line: 233, column: 8, scope: !746)
!875 = !DILocation(line: 232, column: 5, scope: !746)
!876 = !DILocation(line: 232, column: 15, scope: !746)
!877 = !DILocation(line: 234, column: 17, scope: !746)
!878 = !DILocation(line: 234, column: 35, scope: !746)
!879 = !DILocation(line: 234, column: 29, scope: !746)
!880 = !DILocation(line: 235, column: 8, scope: !746)
!881 = !DILocation(line: 234, column: 5, scope: !746)
!882 = !DILocation(line: 234, column: 15, scope: !746)
!883 = !DILocation(line: 237, column: 11, scope: !746)
!884 = !DILocation(line: 238, column: 3, scope: !746)
!885 = !DILocation(line: 179, column: 35, scope: !742)
!886 = !DILocation(line: 179, column: 3, scope: !742)
!887 = distinct !{!887, !744, !888, !735}
!888 = !DILocation(line: 238, column: 3, scope: !739)
!889 = !DILocation(line: 239, column: 1, scope: !47)
