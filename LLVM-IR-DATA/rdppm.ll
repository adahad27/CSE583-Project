; ModuleID = 'cBench/consumer_jpeg_c/src/rdppm.c'
source_filename = "cBench/consumer_jpeg_c/src/rdppm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jpeg_compress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, double, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [16 x i8], [16 x i8], [16 x i8], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.ppm_source_struct = type { %struct.cjpeg_source_struct, ptr, ptr, i64, ptr }
%struct.cjpeg_source_struct = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @jinit_read_ppm(ptr noundef %0) #0 !dbg !580 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !584, !DIExpression(), !585)
    #dbg_declare(ptr %3, !586, !DIExpression(), !587)
  %4 = load ptr, ptr %2, align 8, !dbg !588
  %5 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %4, i32 0, i32 1, !dbg !589
  %6 = load ptr, ptr %5, align 8, !dbg !589
  %7 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %6, i32 0, i32 0, !dbg !590
  %8 = load ptr, ptr %7, align 8, !dbg !590
  %9 = load ptr, ptr %2, align 8, !dbg !591
  %10 = call ptr %8(ptr noundef %9, i32 noundef 1, i64 noundef 80), !dbg !592
  store ptr %10, ptr %3, align 8, !dbg !593
  %11 = load ptr, ptr %3, align 8, !dbg !594
  %12 = getelementptr inbounds nuw %struct.ppm_source_struct, ptr %11, i32 0, i32 0, !dbg !595
  %13 = getelementptr inbounds nuw %struct.cjpeg_source_struct, ptr %12, i32 0, i32 0, !dbg !596
  store ptr @start_input_ppm, ptr %13, align 8, !dbg !597
  %14 = load ptr, ptr %3, align 8, !dbg !598
  %15 = getelementptr inbounds nuw %struct.ppm_source_struct, ptr %14, i32 0, i32 0, !dbg !599
  %16 = getelementptr inbounds nuw %struct.cjpeg_source_struct, ptr %15, i32 0, i32 2, !dbg !600
  store ptr @finish_input_ppm, ptr %16, align 8, !dbg !601
  %17 = load ptr, ptr %3, align 8, !dbg !602
  ret ptr %17, !dbg !603
}

; Function Attrs: noinline nounwind uwtable
define internal void @start_input_ppm(ptr noundef %0, ptr noundef %1) #0 !dbg !604 {
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
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !605, !DIExpression(), !606)
  store ptr %1, ptr %4, align 8
    #dbg_declare(ptr %4, !607, !DIExpression(), !608)
    #dbg_declare(ptr %5, !609, !DIExpression(), !610)
  %15 = load ptr, ptr %4, align 8, !dbg !611
  store ptr %15, ptr %5, align 8, !dbg !610
    #dbg_declare(ptr %6, !612, !DIExpression(), !613)
    #dbg_declare(ptr %7, !614, !DIExpression(), !615)
    #dbg_declare(ptr %8, !616, !DIExpression(), !617)
    #dbg_declare(ptr %9, !618, !DIExpression(), !619)
    #dbg_declare(ptr %10, !620, !DIExpression(), !621)
    #dbg_declare(ptr %11, !622, !DIExpression(), !623)
    #dbg_declare(ptr %12, !624, !DIExpression(), !625)
  %16 = load ptr, ptr %5, align 8, !dbg !626
  %17 = getelementptr inbounds nuw %struct.ppm_source_struct, ptr %16, i32 0, i32 0, !dbg !628
  %18 = getelementptr inbounds nuw %struct.cjpeg_source_struct, ptr %17, i32 0, i32 3, !dbg !629
  %19 = load ptr, ptr %18, align 8, !dbg !629
  %20 = call i32 @getc(ptr noundef %19), !dbg !630
  %21 = icmp ne i32 %20, 80, !dbg !631
  br i1 %21, label %22, label %33, !dbg !631

22:                                               ; preds = %2
  %23 = load ptr, ptr %3, align 8, !dbg !632
  %24 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %23, i32 0, i32 0, !dbg !632
  %25 = load ptr, ptr %24, align 8, !dbg !632
  %26 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %25, i32 0, i32 5, !dbg !632
  store i32 1027, ptr %26, align 8, !dbg !632
  %27 = load ptr, ptr %3, align 8, !dbg !632
  %28 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %27, i32 0, i32 0, !dbg !632
  %29 = load ptr, ptr %28, align 8, !dbg !632
  %30 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %29, i32 0, i32 0, !dbg !632
  %31 = load ptr, ptr %30, align 8, !dbg !632
  %32 = load ptr, ptr %3, align 8, !dbg !632
  call void %31(ptr noundef %32), !dbg !632
  br label %33, !dbg !632

33:                                               ; preds = %22, %2
  %34 = load ptr, ptr %5, align 8, !dbg !633
  %35 = getelementptr inbounds nuw %struct.ppm_source_struct, ptr %34, i32 0, i32 0, !dbg !634
  %36 = getelementptr inbounds nuw %struct.cjpeg_source_struct, ptr %35, i32 0, i32 3, !dbg !635
  %37 = load ptr, ptr %36, align 8, !dbg !635
  %38 = call i32 @getc(ptr noundef %37), !dbg !636
  store i32 %38, ptr %6, align 4, !dbg !637
  %39 = load ptr, ptr %3, align 8, !dbg !638
  %40 = load ptr, ptr %5, align 8, !dbg !639
  %41 = getelementptr inbounds nuw %struct.ppm_source_struct, ptr %40, i32 0, i32 0, !dbg !640
  %42 = getelementptr inbounds nuw %struct.cjpeg_source_struct, ptr %41, i32 0, i32 3, !dbg !641
  %43 = load ptr, ptr %42, align 8, !dbg !641
  %44 = call i32 @read_pbm_integer(ptr noundef %39, ptr noundef %43), !dbg !642
  store i32 %44, ptr %7, align 4, !dbg !643
  %45 = load ptr, ptr %3, align 8, !dbg !644
  %46 = load ptr, ptr %5, align 8, !dbg !645
  %47 = getelementptr inbounds nuw %struct.ppm_source_struct, ptr %46, i32 0, i32 0, !dbg !646
  %48 = getelementptr inbounds nuw %struct.cjpeg_source_struct, ptr %47, i32 0, i32 3, !dbg !647
  %49 = load ptr, ptr %48, align 8, !dbg !647
  %50 = call i32 @read_pbm_integer(ptr noundef %45, ptr noundef %49), !dbg !648
  store i32 %50, ptr %8, align 4, !dbg !649
  %51 = load ptr, ptr %3, align 8, !dbg !650
  %52 = load ptr, ptr %5, align 8, !dbg !651
  %53 = getelementptr inbounds nuw %struct.ppm_source_struct, ptr %52, i32 0, i32 0, !dbg !652
  %54 = getelementptr inbounds nuw %struct.cjpeg_source_struct, ptr %53, i32 0, i32 3, !dbg !653
  %55 = load ptr, ptr %54, align 8, !dbg !653
  %56 = call i32 @read_pbm_integer(ptr noundef %51, ptr noundef %55), !dbg !654
  store i32 %56, ptr %9, align 4, !dbg !655
  %57 = load i32, ptr %7, align 4, !dbg !656
  %58 = icmp ule i32 %57, 0, !dbg !658
  br i1 %58, label %65, label %59, !dbg !659

59:                                               ; preds = %33
  %60 = load i32, ptr %8, align 4, !dbg !660
  %61 = icmp ule i32 %60, 0, !dbg !661
  br i1 %61, label %65, label %62, !dbg !662

62:                                               ; preds = %59
  %63 = load i32, ptr %9, align 4, !dbg !663
  %64 = icmp ule i32 %63, 0, !dbg !664
  br i1 %64, label %65, label %76, !dbg !662

65:                                               ; preds = %62, %59, %33
  %66 = load ptr, ptr %3, align 8, !dbg !665
  %67 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %66, i32 0, i32 0, !dbg !665
  %68 = load ptr, ptr %67, align 8, !dbg !665
  %69 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %68, i32 0, i32 5, !dbg !665
  store i32 1027, ptr %69, align 8, !dbg !665
  %70 = load ptr, ptr %3, align 8, !dbg !665
  %71 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %70, i32 0, i32 0, !dbg !665
  %72 = load ptr, ptr %71, align 8, !dbg !665
  %73 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %72, i32 0, i32 0, !dbg !665
  %74 = load ptr, ptr %73, align 8, !dbg !665
  %75 = load ptr, ptr %3, align 8, !dbg !665
  call void %74(ptr noundef %75), !dbg !665
  br label %76, !dbg !665

76:                                               ; preds = %65, %62
  %77 = load ptr, ptr %3, align 8, !dbg !666
  %78 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %77, i32 0, i32 11, !dbg !667
  store i32 8, ptr %78, align 8, !dbg !668
  %79 = load i32, ptr %7, align 4, !dbg !669
  %80 = load ptr, ptr %3, align 8, !dbg !670
  %81 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %80, i32 0, i32 6, !dbg !671
  store i32 %79, ptr %81, align 8, !dbg !672
  %82 = load i32, ptr %8, align 4, !dbg !673
  %83 = load ptr, ptr %3, align 8, !dbg !674
  %84 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %83, i32 0, i32 7, !dbg !675
  store i32 %82, ptr %84, align 4, !dbg !676
  store i32 1, ptr %10, align 4, !dbg !677
  store i32 0, ptr %11, align 4, !dbg !678
  store i32 1, ptr %12, align 4, !dbg !679
  %85 = load i32, ptr %6, align 4, !dbg !680
  switch i32 %85, label %238 [
    i32 50, label %86
    i32 51, label %116
    i32 53, label %146
    i32 54, label %192
  ], !dbg !681

86:                                               ; preds = %76
  %87 = load ptr, ptr %3, align 8, !dbg !682
  %88 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %87, i32 0, i32 8, !dbg !684
  store i32 1, ptr %88, align 8, !dbg !685
  %89 = load ptr, ptr %3, align 8, !dbg !686
  %90 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %89, i32 0, i32 9, !dbg !687
  store i32 1, ptr %90, align 4, !dbg !688
  %91 = load ptr, ptr %3, align 8, !dbg !689
  %92 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %91, i32 0, i32 0, !dbg !689
  %93 = load ptr, ptr %92, align 8, !dbg !689
  %94 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %93, i32 0, i32 5, !dbg !689
  store i32 1029, ptr %94, align 8, !dbg !689
  %95 = load i32, ptr %7, align 4, !dbg !689
  %96 = load ptr, ptr %3, align 8, !dbg !689
  %97 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %96, i32 0, i32 0, !dbg !689
  %98 = load ptr, ptr %97, align 8, !dbg !689
  %99 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %98, i32 0, i32 6, !dbg !689
  %100 = getelementptr inbounds [8 x i32], ptr %99, i64 0, i64 0, !dbg !689
  store i32 %95, ptr %100, align 4, !dbg !689
  %101 = load i32, ptr %8, align 4, !dbg !689
  %102 = load ptr, ptr %3, align 8, !dbg !689
  %103 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %102, i32 0, i32 0, !dbg !689
  %104 = load ptr, ptr %103, align 8, !dbg !689
  %105 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %104, i32 0, i32 6, !dbg !689
  %106 = getelementptr inbounds [8 x i32], ptr %105, i64 0, i64 1, !dbg !689
  store i32 %101, ptr %106, align 4, !dbg !689
  %107 = load ptr, ptr %3, align 8, !dbg !689
  %108 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %107, i32 0, i32 0, !dbg !689
  %109 = load ptr, ptr %108, align 8, !dbg !689
  %110 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %109, i32 0, i32 1, !dbg !689
  %111 = load ptr, ptr %110, align 8, !dbg !689
  %112 = load ptr, ptr %3, align 8, !dbg !689
  call void %111(ptr noundef %112, i32 noundef 1), !dbg !689
  %113 = load ptr, ptr %5, align 8, !dbg !690
  %114 = getelementptr inbounds nuw %struct.ppm_source_struct, ptr %113, i32 0, i32 0, !dbg !691
  %115 = getelementptr inbounds nuw %struct.cjpeg_source_struct, ptr %114, i32 0, i32 1, !dbg !692
  store ptr @get_text_gray_row, ptr %115, align 8, !dbg !693
  store i32 0, ptr %10, align 4, !dbg !694
  br label %249, !dbg !695

116:                                              ; preds = %76
  %117 = load ptr, ptr %3, align 8, !dbg !696
  %118 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %117, i32 0, i32 8, !dbg !697
  store i32 3, ptr %118, align 8, !dbg !698
  %119 = load ptr, ptr %3, align 8, !dbg !699
  %120 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %119, i32 0, i32 9, !dbg !700
  store i32 2, ptr %120, align 4, !dbg !701
  %121 = load ptr, ptr %3, align 8, !dbg !702
  %122 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %121, i32 0, i32 0, !dbg !702
  %123 = load ptr, ptr %122, align 8, !dbg !702
  %124 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %123, i32 0, i32 5, !dbg !702
  store i32 1031, ptr %124, align 8, !dbg !702
  %125 = load i32, ptr %7, align 4, !dbg !702
  %126 = load ptr, ptr %3, align 8, !dbg !702
  %127 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %126, i32 0, i32 0, !dbg !702
  %128 = load ptr, ptr %127, align 8, !dbg !702
  %129 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %128, i32 0, i32 6, !dbg !702
  %130 = getelementptr inbounds [8 x i32], ptr %129, i64 0, i64 0, !dbg !702
  store i32 %125, ptr %130, align 4, !dbg !702
  %131 = load i32, ptr %8, align 4, !dbg !702
  %132 = load ptr, ptr %3, align 8, !dbg !702
  %133 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %132, i32 0, i32 0, !dbg !702
  %134 = load ptr, ptr %133, align 8, !dbg !702
  %135 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %134, i32 0, i32 6, !dbg !702
  %136 = getelementptr inbounds [8 x i32], ptr %135, i64 0, i64 1, !dbg !702
  store i32 %131, ptr %136, align 4, !dbg !702
  %137 = load ptr, ptr %3, align 8, !dbg !702
  %138 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %137, i32 0, i32 0, !dbg !702
  %139 = load ptr, ptr %138, align 8, !dbg !702
  %140 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %139, i32 0, i32 1, !dbg !702
  %141 = load ptr, ptr %140, align 8, !dbg !702
  %142 = load ptr, ptr %3, align 8, !dbg !702
  call void %141(ptr noundef %142, i32 noundef 1), !dbg !702
  %143 = load ptr, ptr %5, align 8, !dbg !703
  %144 = getelementptr inbounds nuw %struct.ppm_source_struct, ptr %143, i32 0, i32 0, !dbg !704
  %145 = getelementptr inbounds nuw %struct.cjpeg_source_struct, ptr %144, i32 0, i32 1, !dbg !705
  store ptr @get_text_rgb_row, ptr %145, align 8, !dbg !706
  store i32 0, ptr %10, align 4, !dbg !707
  br label %249, !dbg !708

146:                                              ; preds = %76
  %147 = load ptr, ptr %3, align 8, !dbg !709
  %148 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %147, i32 0, i32 8, !dbg !710
  store i32 1, ptr %148, align 8, !dbg !711
  %149 = load ptr, ptr %3, align 8, !dbg !712
  %150 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %149, i32 0, i32 9, !dbg !713
  store i32 1, ptr %150, align 4, !dbg !714
  %151 = load ptr, ptr %3, align 8, !dbg !715
  %152 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %151, i32 0, i32 0, !dbg !715
  %153 = load ptr, ptr %152, align 8, !dbg !715
  %154 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %153, i32 0, i32 5, !dbg !715
  store i32 1028, ptr %154, align 8, !dbg !715
  %155 = load i32, ptr %7, align 4, !dbg !715
  %156 = load ptr, ptr %3, align 8, !dbg !715
  %157 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %156, i32 0, i32 0, !dbg !715
  %158 = load ptr, ptr %157, align 8, !dbg !715
  %159 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %158, i32 0, i32 6, !dbg !715
  %160 = getelementptr inbounds [8 x i32], ptr %159, i64 0, i64 0, !dbg !715
  store i32 %155, ptr %160, align 4, !dbg !715
  %161 = load i32, ptr %8, align 4, !dbg !715
  %162 = load ptr, ptr %3, align 8, !dbg !715
  %163 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %162, i32 0, i32 0, !dbg !715
  %164 = load ptr, ptr %163, align 8, !dbg !715
  %165 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %164, i32 0, i32 6, !dbg !715
  %166 = getelementptr inbounds [8 x i32], ptr %165, i64 0, i64 1, !dbg !715
  store i32 %161, ptr %166, align 4, !dbg !715
  %167 = load ptr, ptr %3, align 8, !dbg !715
  %168 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %167, i32 0, i32 0, !dbg !715
  %169 = load ptr, ptr %168, align 8, !dbg !715
  %170 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %169, i32 0, i32 1, !dbg !715
  %171 = load ptr, ptr %170, align 8, !dbg !715
  %172 = load ptr, ptr %3, align 8, !dbg !715
  call void %171(ptr noundef %172, i32 noundef 1), !dbg !715
  %173 = load i32, ptr %9, align 4, !dbg !716
  %174 = icmp ugt i32 %173, 255, !dbg !718
  br i1 %174, label %175, label %179, !dbg !718

175:                                              ; preds = %146
  %176 = load ptr, ptr %5, align 8, !dbg !719
  %177 = getelementptr inbounds nuw %struct.ppm_source_struct, ptr %176, i32 0, i32 0, !dbg !721
  %178 = getelementptr inbounds nuw %struct.cjpeg_source_struct, ptr %177, i32 0, i32 1, !dbg !722
  store ptr @get_word_gray_row, ptr %178, align 8, !dbg !723
  br label %191, !dbg !724

179:                                              ; preds = %146
  %180 = load i32, ptr %9, align 4, !dbg !725
  %181 = icmp eq i32 %180, 255, !dbg !727
  br i1 %181, label %182, label %186, !dbg !728

182:                                              ; preds = %179
  %183 = load ptr, ptr %5, align 8, !dbg !729
  %184 = getelementptr inbounds nuw %struct.ppm_source_struct, ptr %183, i32 0, i32 0, !dbg !731
  %185 = getelementptr inbounds nuw %struct.cjpeg_source_struct, ptr %184, i32 0, i32 1, !dbg !732
  store ptr @get_raw_row, ptr %185, align 8, !dbg !733
  store i32 1, ptr %11, align 4, !dbg !734
  store i32 0, ptr %12, align 4, !dbg !735
  br label %190, !dbg !736

186:                                              ; preds = %179
  %187 = load ptr, ptr %5, align 8, !dbg !737
  %188 = getelementptr inbounds nuw %struct.ppm_source_struct, ptr %187, i32 0, i32 0, !dbg !739
  %189 = getelementptr inbounds nuw %struct.cjpeg_source_struct, ptr %188, i32 0, i32 1, !dbg !740
  store ptr @get_scaled_gray_row, ptr %189, align 8, !dbg !741
  br label %190

190:                                              ; preds = %186, %182
  br label %191

191:                                              ; preds = %190, %175
  br label %249, !dbg !742

192:                                              ; preds = %76
  %193 = load ptr, ptr %3, align 8, !dbg !743
  %194 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %193, i32 0, i32 8, !dbg !744
  store i32 3, ptr %194, align 8, !dbg !745
  %195 = load ptr, ptr %3, align 8, !dbg !746
  %196 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %195, i32 0, i32 9, !dbg !747
  store i32 2, ptr %196, align 4, !dbg !748
  %197 = load ptr, ptr %3, align 8, !dbg !749
  %198 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %197, i32 0, i32 0, !dbg !749
  %199 = load ptr, ptr %198, align 8, !dbg !749
  %200 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %199, i32 0, i32 5, !dbg !749
  store i32 1030, ptr %200, align 8, !dbg !749
  %201 = load i32, ptr %7, align 4, !dbg !749
  %202 = load ptr, ptr %3, align 8, !dbg !749
  %203 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %202, i32 0, i32 0, !dbg !749
  %204 = load ptr, ptr %203, align 8, !dbg !749
  %205 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %204, i32 0, i32 6, !dbg !749
  %206 = getelementptr inbounds [8 x i32], ptr %205, i64 0, i64 0, !dbg !749
  store i32 %201, ptr %206, align 4, !dbg !749
  %207 = load i32, ptr %8, align 4, !dbg !749
  %208 = load ptr, ptr %3, align 8, !dbg !749
  %209 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %208, i32 0, i32 0, !dbg !749
  %210 = load ptr, ptr %209, align 8, !dbg !749
  %211 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %210, i32 0, i32 6, !dbg !749
  %212 = getelementptr inbounds [8 x i32], ptr %211, i64 0, i64 1, !dbg !749
  store i32 %207, ptr %212, align 4, !dbg !749
  %213 = load ptr, ptr %3, align 8, !dbg !749
  %214 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %213, i32 0, i32 0, !dbg !749
  %215 = load ptr, ptr %214, align 8, !dbg !749
  %216 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %215, i32 0, i32 1, !dbg !749
  %217 = load ptr, ptr %216, align 8, !dbg !749
  %218 = load ptr, ptr %3, align 8, !dbg !749
  call void %217(ptr noundef %218, i32 noundef 1), !dbg !749
  %219 = load i32, ptr %9, align 4, !dbg !750
  %220 = icmp ugt i32 %219, 255, !dbg !752
  br i1 %220, label %221, label %225, !dbg !752

221:                                              ; preds = %192
  %222 = load ptr, ptr %5, align 8, !dbg !753
  %223 = getelementptr inbounds nuw %struct.ppm_source_struct, ptr %222, i32 0, i32 0, !dbg !755
  %224 = getelementptr inbounds nuw %struct.cjpeg_source_struct, ptr %223, i32 0, i32 1, !dbg !756
  store ptr @get_word_rgb_row, ptr %224, align 8, !dbg !757
  br label %237, !dbg !758

225:                                              ; preds = %192
  %226 = load i32, ptr %9, align 4, !dbg !759
  %227 = icmp eq i32 %226, 255, !dbg !761
  br i1 %227, label %228, label %232, !dbg !762

228:                                              ; preds = %225
  %229 = load ptr, ptr %5, align 8, !dbg !763
  %230 = getelementptr inbounds nuw %struct.ppm_source_struct, ptr %229, i32 0, i32 0, !dbg !765
  %231 = getelementptr inbounds nuw %struct.cjpeg_source_struct, ptr %230, i32 0, i32 1, !dbg !766
  store ptr @get_raw_row, ptr %231, align 8, !dbg !767
  store i32 1, ptr %11, align 4, !dbg !768
  store i32 0, ptr %12, align 4, !dbg !769
  br label %236, !dbg !770

232:                                              ; preds = %225
  %233 = load ptr, ptr %5, align 8, !dbg !771
  %234 = getelementptr inbounds nuw %struct.ppm_source_struct, ptr %233, i32 0, i32 0, !dbg !773
  %235 = getelementptr inbounds nuw %struct.cjpeg_source_struct, ptr %234, i32 0, i32 1, !dbg !774
  store ptr @get_scaled_rgb_row, ptr %235, align 8, !dbg !775
  br label %236

236:                                              ; preds = %232, %228
  br label %237

237:                                              ; preds = %236, %221
  br label %249, !dbg !776

238:                                              ; preds = %76
  %239 = load ptr, ptr %3, align 8, !dbg !777
  %240 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %239, i32 0, i32 0, !dbg !777
  %241 = load ptr, ptr %240, align 8, !dbg !777
  %242 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %241, i32 0, i32 5, !dbg !777
  store i32 1027, ptr %242, align 8, !dbg !777
  %243 = load ptr, ptr %3, align 8, !dbg !777
  %244 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %243, i32 0, i32 0, !dbg !777
  %245 = load ptr, ptr %244, align 8, !dbg !777
  %246 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %245, i32 0, i32 0, !dbg !777
  %247 = load ptr, ptr %246, align 8, !dbg !777
  %248 = load ptr, ptr %3, align 8, !dbg !777
  call void %247(ptr noundef %248), !dbg !777
  br label %249, !dbg !778

249:                                              ; preds = %238, %237, %191, %116, %86
  %250 = load i32, ptr %10, align 4, !dbg !779
  %251 = icmp ne i32 %250, 0, !dbg !779
  br i1 %251, label %252, label %279, !dbg !779

252:                                              ; preds = %249
  %253 = load i32, ptr %7, align 4, !dbg !781
  %254 = zext i32 %253 to i64, !dbg !783
  %255 = load ptr, ptr %3, align 8, !dbg !784
  %256 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %255, i32 0, i32 8, !dbg !785
  %257 = load i32, ptr %256, align 8, !dbg !785
  %258 = sext i32 %257 to i64, !dbg !784
  %259 = mul i64 %254, %258, !dbg !786
  %260 = load i32, ptr %9, align 4, !dbg !787
  %261 = icmp ule i32 %260, 255, !dbg !788
  %262 = zext i1 %261 to i64, !dbg !789
  %263 = select i1 %261, i64 1, i64 2, !dbg !789
  %264 = mul i64 %259, %263, !dbg !790
  %265 = load ptr, ptr %5, align 8, !dbg !791
  %266 = getelementptr inbounds nuw %struct.ppm_source_struct, ptr %265, i32 0, i32 3, !dbg !792
  store i64 %264, ptr %266, align 8, !dbg !793
  %267 = load ptr, ptr %3, align 8, !dbg !794
  %268 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %267, i32 0, i32 1, !dbg !795
  %269 = load ptr, ptr %268, align 8, !dbg !795
  %270 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %269, i32 0, i32 0, !dbg !796
  %271 = load ptr, ptr %270, align 8, !dbg !796
  %272 = load ptr, ptr %3, align 8, !dbg !797
  %273 = load ptr, ptr %5, align 8, !dbg !798
  %274 = getelementptr inbounds nuw %struct.ppm_source_struct, ptr %273, i32 0, i32 3, !dbg !799
  %275 = load i64, ptr %274, align 8, !dbg !799
  %276 = call ptr %271(ptr noundef %272, i32 noundef 1, i64 noundef %275), !dbg !800
  %277 = load ptr, ptr %5, align 8, !dbg !801
  %278 = getelementptr inbounds nuw %struct.ppm_source_struct, ptr %277, i32 0, i32 1, !dbg !802
  store ptr %276, ptr %278, align 8, !dbg !803
  br label %279, !dbg !804

279:                                              ; preds = %252, %249
  %280 = load i32, ptr %11, align 4, !dbg !805
  %281 = icmp ne i32 %280, 0, !dbg !805
  br i1 %281, label %282, label %296, !dbg !805

282:                                              ; preds = %279
  %283 = load ptr, ptr %5, align 8, !dbg !807
  %284 = getelementptr inbounds nuw %struct.ppm_source_struct, ptr %283, i32 0, i32 1, !dbg !809
  %285 = load ptr, ptr %284, align 8, !dbg !809
  %286 = load ptr, ptr %5, align 8, !dbg !810
  %287 = getelementptr inbounds nuw %struct.ppm_source_struct, ptr %286, i32 0, i32 2, !dbg !811
  store ptr %285, ptr %287, align 8, !dbg !812
  %288 = load ptr, ptr %5, align 8, !dbg !813
  %289 = getelementptr inbounds nuw %struct.ppm_source_struct, ptr %288, i32 0, i32 2, !dbg !814
  %290 = load ptr, ptr %5, align 8, !dbg !815
  %291 = getelementptr inbounds nuw %struct.ppm_source_struct, ptr %290, i32 0, i32 0, !dbg !816
  %292 = getelementptr inbounds nuw %struct.cjpeg_source_struct, ptr %291, i32 0, i32 4, !dbg !817
  store ptr %289, ptr %292, align 8, !dbg !818
  %293 = load ptr, ptr %5, align 8, !dbg !819
  %294 = getelementptr inbounds nuw %struct.ppm_source_struct, ptr %293, i32 0, i32 0, !dbg !820
  %295 = getelementptr inbounds nuw %struct.cjpeg_source_struct, ptr %294, i32 0, i32 5, !dbg !821
  store i32 1, ptr %295, align 8, !dbg !822
  br label %315, !dbg !823

296:                                              ; preds = %279
  %297 = load ptr, ptr %3, align 8, !dbg !824
  %298 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %297, i32 0, i32 1, !dbg !826
  %299 = load ptr, ptr %298, align 8, !dbg !826
  %300 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %299, i32 0, i32 2, !dbg !827
  %301 = load ptr, ptr %300, align 8, !dbg !827
  %302 = load ptr, ptr %3, align 8, !dbg !828
  %303 = load i32, ptr %7, align 4, !dbg !829
  %304 = load ptr, ptr %3, align 8, !dbg !830
  %305 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %304, i32 0, i32 8, !dbg !831
  %306 = load i32, ptr %305, align 8, !dbg !831
  %307 = mul i32 %303, %306, !dbg !832
  %308 = call ptr %301(ptr noundef %302, i32 noundef 1, i32 noundef %307, i32 noundef 1), !dbg !833
  %309 = load ptr, ptr %5, align 8, !dbg !834
  %310 = getelementptr inbounds nuw %struct.ppm_source_struct, ptr %309, i32 0, i32 0, !dbg !835
  %311 = getelementptr inbounds nuw %struct.cjpeg_source_struct, ptr %310, i32 0, i32 4, !dbg !836
  store ptr %308, ptr %311, align 8, !dbg !837
  %312 = load ptr, ptr %5, align 8, !dbg !838
  %313 = getelementptr inbounds nuw %struct.ppm_source_struct, ptr %312, i32 0, i32 0, !dbg !839
  %314 = getelementptr inbounds nuw %struct.cjpeg_source_struct, ptr %313, i32 0, i32 5, !dbg !840
  store i32 1, ptr %314, align 8, !dbg !841
  br label %315

315:                                              ; preds = %296, %282
  %316 = load i32, ptr %12, align 4, !dbg !842
  %317 = icmp ne i32 %316, 0, !dbg !842
  br i1 %317, label %318, label %358, !dbg !842

318:                                              ; preds = %315
    #dbg_declare(ptr %13, !844, !DIExpression(), !846)
    #dbg_declare(ptr %14, !847, !DIExpression(), !848)
  %319 = load ptr, ptr %3, align 8, !dbg !849
  %320 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %319, i32 0, i32 1, !dbg !850
  %321 = load ptr, ptr %320, align 8, !dbg !850
  %322 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %321, i32 0, i32 0, !dbg !851
  %323 = load ptr, ptr %322, align 8, !dbg !851
  %324 = load ptr, ptr %3, align 8, !dbg !852
  %325 = load i32, ptr %9, align 4, !dbg !853
  %326 = zext i32 %325 to i64, !dbg !854
  %327 = add nsw i64 %326, 1, !dbg !855
  %328 = mul i64 %327, 1, !dbg !856
  %329 = call ptr %323(ptr noundef %324, i32 noundef 1, i64 noundef %328), !dbg !857
  %330 = load ptr, ptr %5, align 8, !dbg !858
  %331 = getelementptr inbounds nuw %struct.ppm_source_struct, ptr %330, i32 0, i32 4, !dbg !859
  store ptr %329, ptr %331, align 8, !dbg !860
  %332 = load i32, ptr %9, align 4, !dbg !861
  %333 = udiv i32 %332, 2, !dbg !862
  %334 = zext i32 %333 to i64, !dbg !861
  store i64 %334, ptr %14, align 8, !dbg !863
  store i64 0, ptr %13, align 8, !dbg !864
  br label %335, !dbg !866

335:                                              ; preds = %354, %318
  %336 = load i64, ptr %13, align 8, !dbg !867
  %337 = load i32, ptr %9, align 4, !dbg !869
  %338 = zext i32 %337 to i64, !dbg !870
  %339 = icmp sle i64 %336, %338, !dbg !871
  br i1 %339, label %340, label %357, !dbg !872

340:                                              ; preds = %335
  %341 = load i64, ptr %13, align 8, !dbg !873
  %342 = mul nsw i64 %341, 255, !dbg !875
  %343 = load i64, ptr %14, align 8, !dbg !876
  %344 = add nsw i64 %342, %343, !dbg !877
  %345 = load i32, ptr %9, align 4, !dbg !878
  %346 = zext i32 %345 to i64, !dbg !878
  %347 = sdiv i64 %344, %346, !dbg !879
  %348 = trunc i64 %347 to i8, !dbg !880
  %349 = load ptr, ptr %5, align 8, !dbg !881
  %350 = getelementptr inbounds nuw %struct.ppm_source_struct, ptr %349, i32 0, i32 4, !dbg !882
  %351 = load ptr, ptr %350, align 8, !dbg !882
  %352 = load i64, ptr %13, align 8, !dbg !883
  %353 = getelementptr inbounds i8, ptr %351, i64 %352, !dbg !881
  store i8 %348, ptr %353, align 1, !dbg !884
  br label %354, !dbg !885

354:                                              ; preds = %340
  %355 = load i64, ptr %13, align 8, !dbg !886
  %356 = add nsw i64 %355, 1, !dbg !886
  store i64 %356, ptr %13, align 8, !dbg !886
  br label %335, !dbg !887, !llvm.loop !888

357:                                              ; preds = %335
  br label %358, !dbg !891

358:                                              ; preds = %357, %315
  ret void, !dbg !892
}

; Function Attrs: noinline nounwind uwtable
define internal void @finish_input_ppm(ptr noundef %0, ptr noundef %1) #0 !dbg !893 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !894, !DIExpression(), !895)
  store ptr %1, ptr %4, align 8
    #dbg_declare(ptr %4, !896, !DIExpression(), !897)
  ret void, !dbg !898
}

declare i32 @getc(ptr noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @read_pbm_integer(ptr noundef %0, ptr noundef %1) #0 !dbg !899 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !902, !DIExpression(), !903)
  store ptr %1, ptr %4, align 8
    #dbg_declare(ptr %4, !904, !DIExpression(), !905)
    #dbg_declare(ptr %5, !906, !DIExpression(), !907)
    #dbg_declare(ptr %6, !908, !DIExpression(), !909)
  br label %7, !dbg !910

7:                                                ; preds = %36, %2
  %8 = load ptr, ptr %4, align 8, !dbg !911
  %9 = call i32 @pbm_getc(ptr noundef %8), !dbg !913
  store i32 %9, ptr %5, align 4, !dbg !914
  %10 = load i32, ptr %5, align 4, !dbg !915
  %11 = icmp eq i32 %10, -1, !dbg !917
  br i1 %11, label %12, label %23, !dbg !917

12:                                               ; preds = %7
  %13 = load ptr, ptr %3, align 8, !dbg !918
  %14 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %13, i32 0, i32 0, !dbg !918
  %15 = load ptr, ptr %14, align 8, !dbg !918
  %16 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %15, i32 0, i32 5, !dbg !918
  store i32 42, ptr %16, align 8, !dbg !918
  %17 = load ptr, ptr %3, align 8, !dbg !918
  %18 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %17, i32 0, i32 0, !dbg !918
  %19 = load ptr, ptr %18, align 8, !dbg !918
  %20 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %19, i32 0, i32 0, !dbg !918
  %21 = load ptr, ptr %20, align 8, !dbg !918
  %22 = load ptr, ptr %3, align 8, !dbg !918
  call void %21(ptr noundef %22), !dbg !918
  br label %23, !dbg !918

23:                                               ; preds = %12, %7
  br label %24, !dbg !919

24:                                               ; preds = %23
  %25 = load i32, ptr %5, align 4, !dbg !920
  %26 = icmp eq i32 %25, 32, !dbg !921
  br i1 %26, label %36, label %27, !dbg !922

27:                                               ; preds = %24
  %28 = load i32, ptr %5, align 4, !dbg !923
  %29 = icmp eq i32 %28, 9, !dbg !924
  br i1 %29, label %36, label %30, !dbg !925

30:                                               ; preds = %27
  %31 = load i32, ptr %5, align 4, !dbg !926
  %32 = icmp eq i32 %31, 10, !dbg !927
  br i1 %32, label %36, label %33, !dbg !928

33:                                               ; preds = %30
  %34 = load i32, ptr %5, align 4, !dbg !929
  %35 = icmp eq i32 %34, 13, !dbg !930
  br label %36, !dbg !928

36:                                               ; preds = %33, %30, %27, %24
  %37 = phi i1 [ true, %30 ], [ true, %27 ], [ true, %24 ], [ %35, %33 ]
  br i1 %37, label %7, label %38, !dbg !919, !llvm.loop !931

38:                                               ; preds = %36
  %39 = load i32, ptr %5, align 4, !dbg !933
  %40 = icmp slt i32 %39, 48, !dbg !935
  br i1 %40, label %44, label %41, !dbg !936

41:                                               ; preds = %38
  %42 = load i32, ptr %5, align 4, !dbg !937
  %43 = icmp sgt i32 %42, 57, !dbg !938
  br i1 %43, label %44, label %55, !dbg !936

44:                                               ; preds = %41, %38
  %45 = load ptr, ptr %3, align 8, !dbg !939
  %46 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %45, i32 0, i32 0, !dbg !939
  %47 = load ptr, ptr %46, align 8, !dbg !939
  %48 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %47, i32 0, i32 5, !dbg !939
  store i32 1026, ptr %48, align 8, !dbg !939
  %49 = load ptr, ptr %3, align 8, !dbg !939
  %50 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %49, i32 0, i32 0, !dbg !939
  %51 = load ptr, ptr %50, align 8, !dbg !939
  %52 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %51, i32 0, i32 0, !dbg !939
  %53 = load ptr, ptr %52, align 8, !dbg !939
  %54 = load ptr, ptr %3, align 8, !dbg !939
  call void %53(ptr noundef %54), !dbg !939
  br label %55, !dbg !939

55:                                               ; preds = %44, %41
  %56 = load i32, ptr %5, align 4, !dbg !940
  %57 = sub nsw i32 %56, 48, !dbg !941
  store i32 %57, ptr %6, align 4, !dbg !942
  br label %58, !dbg !943

58:                                               ; preds = %67, %55
  %59 = load ptr, ptr %4, align 8, !dbg !944
  %60 = call i32 @pbm_getc(ptr noundef %59), !dbg !945
  store i32 %60, ptr %5, align 4, !dbg !946
  %61 = icmp sge i32 %60, 48, !dbg !947
  br i1 %61, label %62, label %65, !dbg !948

62:                                               ; preds = %58
  %63 = load i32, ptr %5, align 4, !dbg !949
  %64 = icmp sle i32 %63, 57, !dbg !950
  br label %65

65:                                               ; preds = %62, %58
  %66 = phi i1 [ false, %58 ], [ %64, %62 ], !dbg !951
  br i1 %66, label %67, label %74, !dbg !943

67:                                               ; preds = %65
  %68 = load i32, ptr %6, align 4, !dbg !952
  %69 = mul i32 %68, 10, !dbg !952
  store i32 %69, ptr %6, align 4, !dbg !952
  %70 = load i32, ptr %5, align 4, !dbg !954
  %71 = sub nsw i32 %70, 48, !dbg !955
  %72 = load i32, ptr %6, align 4, !dbg !956
  %73 = add i32 %72, %71, !dbg !956
  store i32 %73, ptr %6, align 4, !dbg !956
  br label %58, !dbg !943, !llvm.loop !957

74:                                               ; preds = %65
  %75 = load i32, ptr %6, align 4, !dbg !959
  ret i32 %75, !dbg !960
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @get_text_gray_row(ptr noundef %0, ptr noundef %1) #0 !dbg !961 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !962, !DIExpression(), !963)
  store ptr %1, ptr %4, align 8
    #dbg_declare(ptr %4, !964, !DIExpression(), !965)
    #dbg_declare(ptr %5, !966, !DIExpression(), !967)
  %10 = load ptr, ptr %4, align 8, !dbg !968
  store ptr %10, ptr %5, align 8, !dbg !967
    #dbg_declare(ptr %6, !969, !DIExpression(), !970)
  %11 = load ptr, ptr %5, align 8, !dbg !971
  %12 = getelementptr inbounds nuw %struct.ppm_source_struct, ptr %11, i32 0, i32 0, !dbg !972
  %13 = getelementptr inbounds nuw %struct.cjpeg_source_struct, ptr %12, i32 0, i32 3, !dbg !973
  %14 = load ptr, ptr %13, align 8, !dbg !973
  store ptr %14, ptr %6, align 8, !dbg !970
    #dbg_declare(ptr %7, !974, !DIExpression(), !975)
    #dbg_declare(ptr %8, !976, !DIExpression(), !977)
  %15 = load ptr, ptr %5, align 8, !dbg !978
  %16 = getelementptr inbounds nuw %struct.ppm_source_struct, ptr %15, i32 0, i32 4, !dbg !979
  %17 = load ptr, ptr %16, align 8, !dbg !979
  store ptr %17, ptr %8, align 8, !dbg !977
    #dbg_declare(ptr %9, !980, !DIExpression(), !981)
  %18 = load ptr, ptr %5, align 8, !dbg !982
  %19 = getelementptr inbounds nuw %struct.ppm_source_struct, ptr %18, i32 0, i32 0, !dbg !983
  %20 = getelementptr inbounds nuw %struct.cjpeg_source_struct, ptr %19, i32 0, i32 4, !dbg !984
  %21 = load ptr, ptr %20, align 8, !dbg !984
  %22 = getelementptr inbounds ptr, ptr %21, i64 0, !dbg !982
  %23 = load ptr, ptr %22, align 8, !dbg !982
  store ptr %23, ptr %7, align 8, !dbg !985
  %24 = load ptr, ptr %3, align 8, !dbg !986
  %25 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %24, i32 0, i32 6, !dbg !988
  %26 = load i32, ptr %25, align 8, !dbg !988
  store i32 %26, ptr %9, align 4, !dbg !989
  br label %27, !dbg !990

27:                                               ; preds = %40, %2
  %28 = load i32, ptr %9, align 4, !dbg !991
  %29 = icmp ugt i32 %28, 0, !dbg !993
  br i1 %29, label %30, label %43, !dbg !994

30:                                               ; preds = %27
  %31 = load ptr, ptr %8, align 8, !dbg !995
  %32 = load ptr, ptr %3, align 8, !dbg !997
  %33 = load ptr, ptr %6, align 8, !dbg !998
  %34 = call i32 @read_pbm_integer(ptr noundef %32, ptr noundef %33), !dbg !999
  %35 = zext i32 %34 to i64, !dbg !995
  %36 = getelementptr inbounds nuw i8, ptr %31, i64 %35, !dbg !995
  %37 = load i8, ptr %36, align 1, !dbg !995
  %38 = load ptr, ptr %7, align 8, !dbg !1000
  %39 = getelementptr inbounds nuw i8, ptr %38, i32 1, !dbg !1000
  store ptr %39, ptr %7, align 8, !dbg !1000
  store i8 %37, ptr %38, align 1, !dbg !1001
  br label %40, !dbg !1002

40:                                               ; preds = %30
  %41 = load i32, ptr %9, align 4, !dbg !1003
  %42 = add i32 %41, -1, !dbg !1003
  store i32 %42, ptr %9, align 4, !dbg !1003
  br label %27, !dbg !1004, !llvm.loop !1005

43:                                               ; preds = %27
  ret i32 1, !dbg !1007
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @get_text_rgb_row(ptr noundef %0, ptr noundef %1) #0 !dbg !1008 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !1009, !DIExpression(), !1010)
  store ptr %1, ptr %4, align 8
    #dbg_declare(ptr %4, !1011, !DIExpression(), !1012)
    #dbg_declare(ptr %5, !1013, !DIExpression(), !1014)
  %10 = load ptr, ptr %4, align 8, !dbg !1015
  store ptr %10, ptr %5, align 8, !dbg !1014
    #dbg_declare(ptr %6, !1016, !DIExpression(), !1017)
  %11 = load ptr, ptr %5, align 8, !dbg !1018
  %12 = getelementptr inbounds nuw %struct.ppm_source_struct, ptr %11, i32 0, i32 0, !dbg !1019
  %13 = getelementptr inbounds nuw %struct.cjpeg_source_struct, ptr %12, i32 0, i32 3, !dbg !1020
  %14 = load ptr, ptr %13, align 8, !dbg !1020
  store ptr %14, ptr %6, align 8, !dbg !1017
    #dbg_declare(ptr %7, !1021, !DIExpression(), !1022)
    #dbg_declare(ptr %8, !1023, !DIExpression(), !1024)
  %15 = load ptr, ptr %5, align 8, !dbg !1025
  %16 = getelementptr inbounds nuw %struct.ppm_source_struct, ptr %15, i32 0, i32 4, !dbg !1026
  %17 = load ptr, ptr %16, align 8, !dbg !1026
  store ptr %17, ptr %8, align 8, !dbg !1024
    #dbg_declare(ptr %9, !1027, !DIExpression(), !1028)
  %18 = load ptr, ptr %5, align 8, !dbg !1029
  %19 = getelementptr inbounds nuw %struct.ppm_source_struct, ptr %18, i32 0, i32 0, !dbg !1030
  %20 = getelementptr inbounds nuw %struct.cjpeg_source_struct, ptr %19, i32 0, i32 4, !dbg !1031
  %21 = load ptr, ptr %20, align 8, !dbg !1031
  %22 = getelementptr inbounds ptr, ptr %21, i64 0, !dbg !1029
  %23 = load ptr, ptr %22, align 8, !dbg !1029
  store ptr %23, ptr %7, align 8, !dbg !1032
  %24 = load ptr, ptr %3, align 8, !dbg !1033
  %25 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %24, i32 0, i32 6, !dbg !1035
  %26 = load i32, ptr %25, align 8, !dbg !1035
  store i32 %26, ptr %9, align 4, !dbg !1036
  br label %27, !dbg !1037

27:                                               ; preds = %58, %2
  %28 = load i32, ptr %9, align 4, !dbg !1038
  %29 = icmp ugt i32 %28, 0, !dbg !1040
  br i1 %29, label %30, label %61, !dbg !1041

30:                                               ; preds = %27
  %31 = load ptr, ptr %8, align 8, !dbg !1042
  %32 = load ptr, ptr %3, align 8, !dbg !1044
  %33 = load ptr, ptr %6, align 8, !dbg !1045
  %34 = call i32 @read_pbm_integer(ptr noundef %32, ptr noundef %33), !dbg !1046
  %35 = zext i32 %34 to i64, !dbg !1042
  %36 = getelementptr inbounds nuw i8, ptr %31, i64 %35, !dbg !1042
  %37 = load i8, ptr %36, align 1, !dbg !1042
  %38 = load ptr, ptr %7, align 8, !dbg !1047
  %39 = getelementptr inbounds nuw i8, ptr %38, i32 1, !dbg !1047
  store ptr %39, ptr %7, align 8, !dbg !1047
  store i8 %37, ptr %38, align 1, !dbg !1048
  %40 = load ptr, ptr %8, align 8, !dbg !1049
  %41 = load ptr, ptr %3, align 8, !dbg !1050
  %42 = load ptr, ptr %6, align 8, !dbg !1051
  %43 = call i32 @read_pbm_integer(ptr noundef %41, ptr noundef %42), !dbg !1052
  %44 = zext i32 %43 to i64, !dbg !1049
  %45 = getelementptr inbounds nuw i8, ptr %40, i64 %44, !dbg !1049
  %46 = load i8, ptr %45, align 1, !dbg !1049
  %47 = load ptr, ptr %7, align 8, !dbg !1053
  %48 = getelementptr inbounds nuw i8, ptr %47, i32 1, !dbg !1053
  store ptr %48, ptr %7, align 8, !dbg !1053
  store i8 %46, ptr %47, align 1, !dbg !1054
  %49 = load ptr, ptr %8, align 8, !dbg !1055
  %50 = load ptr, ptr %3, align 8, !dbg !1056
  %51 = load ptr, ptr %6, align 8, !dbg !1057
  %52 = call i32 @read_pbm_integer(ptr noundef %50, ptr noundef %51), !dbg !1058
  %53 = zext i32 %52 to i64, !dbg !1055
  %54 = getelementptr inbounds nuw i8, ptr %49, i64 %53, !dbg !1055
  %55 = load i8, ptr %54, align 1, !dbg !1055
  %56 = load ptr, ptr %7, align 8, !dbg !1059
  %57 = getelementptr inbounds nuw i8, ptr %56, i32 1, !dbg !1059
  store ptr %57, ptr %7, align 8, !dbg !1059
  store i8 %55, ptr %56, align 1, !dbg !1060
  br label %58, !dbg !1061

58:                                               ; preds = %30
  %59 = load i32, ptr %9, align 4, !dbg !1062
  %60 = add i32 %59, -1, !dbg !1062
  store i32 %60, ptr %9, align 4, !dbg !1062
  br label %27, !dbg !1063, !llvm.loop !1064

61:                                               ; preds = %27
  ret i32 1, !dbg !1066
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @get_word_gray_row(ptr noundef %0, ptr noundef %1) #0 !dbg !1067 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !1068, !DIExpression(), !1069)
  store ptr %1, ptr %4, align 8
    #dbg_declare(ptr %4, !1070, !DIExpression(), !1071)
    #dbg_declare(ptr %5, !1072, !DIExpression(), !1073)
  %11 = load ptr, ptr %4, align 8, !dbg !1074
  store ptr %11, ptr %5, align 8, !dbg !1073
    #dbg_declare(ptr %6, !1075, !DIExpression(), !1076)
    #dbg_declare(ptr %7, !1077, !DIExpression(), !1078)
    #dbg_declare(ptr %8, !1079, !DIExpression(), !1080)
  %12 = load ptr, ptr %5, align 8, !dbg !1081
  %13 = getelementptr inbounds nuw %struct.ppm_source_struct, ptr %12, i32 0, i32 4, !dbg !1082
  %14 = load ptr, ptr %13, align 8, !dbg !1082
  store ptr %14, ptr %8, align 8, !dbg !1080
    #dbg_declare(ptr %9, !1083, !DIExpression(), !1084)
  %15 = load ptr, ptr %5, align 8, !dbg !1085
  %16 = getelementptr inbounds nuw %struct.ppm_source_struct, ptr %15, i32 0, i32 1, !dbg !1085
  %17 = load ptr, ptr %16, align 8, !dbg !1085
  %18 = load ptr, ptr %5, align 8, !dbg !1085
  %19 = getelementptr inbounds nuw %struct.ppm_source_struct, ptr %18, i32 0, i32 3, !dbg !1085
  %20 = load i64, ptr %19, align 8, !dbg !1085
  %21 = load ptr, ptr %5, align 8, !dbg !1085
  %22 = getelementptr inbounds nuw %struct.ppm_source_struct, ptr %21, i32 0, i32 0, !dbg !1085
  %23 = getelementptr inbounds nuw %struct.cjpeg_source_struct, ptr %22, i32 0, i32 3, !dbg !1085
  %24 = load ptr, ptr %23, align 8, !dbg !1085
  %25 = call i64 @fread(ptr noundef %17, i64 noundef 1, i64 noundef %20, ptr noundef %24), !dbg !1085
  %26 = load ptr, ptr %5, align 8, !dbg !1085
  %27 = getelementptr inbounds nuw %struct.ppm_source_struct, ptr %26, i32 0, i32 3, !dbg !1085
  %28 = load i64, ptr %27, align 8, !dbg !1085
  %29 = icmp eq i64 %25, %28, !dbg !1085
  br i1 %29, label %41, label %30, !dbg !1087

30:                                               ; preds = %2
  %31 = load ptr, ptr %3, align 8, !dbg !1088
  %32 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %31, i32 0, i32 0, !dbg !1088
  %33 = load ptr, ptr %32, align 8, !dbg !1088
  %34 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %33, i32 0, i32 5, !dbg !1088
  store i32 42, ptr %34, align 8, !dbg !1088
  %35 = load ptr, ptr %3, align 8, !dbg !1088
  %36 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %35, i32 0, i32 0, !dbg !1088
  %37 = load ptr, ptr %36, align 8, !dbg !1088
  %38 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %37, i32 0, i32 0, !dbg !1088
  %39 = load ptr, ptr %38, align 8, !dbg !1088
  %40 = load ptr, ptr %3, align 8, !dbg !1088
  call void %39(ptr noundef %40), !dbg !1088
  br label %41, !dbg !1088

41:                                               ; preds = %30, %2
  %42 = load ptr, ptr %5, align 8, !dbg !1089
  %43 = getelementptr inbounds nuw %struct.ppm_source_struct, ptr %42, i32 0, i32 0, !dbg !1090
  %44 = getelementptr inbounds nuw %struct.cjpeg_source_struct, ptr %43, i32 0, i32 4, !dbg !1091
  %45 = load ptr, ptr %44, align 8, !dbg !1091
  %46 = getelementptr inbounds ptr, ptr %45, i64 0, !dbg !1089
  %47 = load ptr, ptr %46, align 8, !dbg !1089
  store ptr %47, ptr %6, align 8, !dbg !1092
  %48 = load ptr, ptr %5, align 8, !dbg !1093
  %49 = getelementptr inbounds nuw %struct.ppm_source_struct, ptr %48, i32 0, i32 1, !dbg !1094
  %50 = load ptr, ptr %49, align 8, !dbg !1094
  store ptr %50, ptr %7, align 8, !dbg !1095
  %51 = load ptr, ptr %3, align 8, !dbg !1096
  %52 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %51, i32 0, i32 6, !dbg !1098
  %53 = load i32, ptr %52, align 8, !dbg !1098
  store i32 %53, ptr %9, align 4, !dbg !1099
  br label %54, !dbg !1100

54:                                               ; preds = %76, %41
  %55 = load i32, ptr %9, align 4, !dbg !1101
  %56 = icmp ugt i32 %55, 0, !dbg !1103
  br i1 %56, label %57, label %79, !dbg !1104

57:                                               ; preds = %54
    #dbg_declare(ptr %10, !1105, !DIExpression(), !1107)
  %58 = load ptr, ptr %7, align 8, !dbg !1108
  %59 = getelementptr inbounds nuw i8, ptr %58, i32 1, !dbg !1108
  store ptr %59, ptr %7, align 8, !dbg !1108
  %60 = load i8, ptr %58, align 1, !dbg !1108
  %61 = zext i8 %60 to i32, !dbg !1108
  store i32 %61, ptr %10, align 4, !dbg !1109
  %62 = load ptr, ptr %7, align 8, !dbg !1110
  %63 = getelementptr inbounds nuw i8, ptr %62, i32 1, !dbg !1110
  store ptr %63, ptr %7, align 8, !dbg !1110
  %64 = load i8, ptr %62, align 1, !dbg !1110
  %65 = zext i8 %64 to i32, !dbg !1110
  %66 = shl i32 %65, 8, !dbg !1111
  %67 = load i32, ptr %10, align 4, !dbg !1112
  %68 = or i32 %67, %66, !dbg !1112
  store i32 %68, ptr %10, align 4, !dbg !1112
  %69 = load ptr, ptr %8, align 8, !dbg !1113
  %70 = load i32, ptr %10, align 4, !dbg !1114
  %71 = sext i32 %70 to i64, !dbg !1113
  %72 = getelementptr inbounds i8, ptr %69, i64 %71, !dbg !1113
  %73 = load i8, ptr %72, align 1, !dbg !1113
  %74 = load ptr, ptr %6, align 8, !dbg !1115
  %75 = getelementptr inbounds nuw i8, ptr %74, i32 1, !dbg !1115
  store ptr %75, ptr %6, align 8, !dbg !1115
  store i8 %73, ptr %74, align 1, !dbg !1116
  br label %76, !dbg !1117

76:                                               ; preds = %57
  %77 = load i32, ptr %9, align 4, !dbg !1118
  %78 = add i32 %77, -1, !dbg !1118
  store i32 %78, ptr %9, align 4, !dbg !1118
  br label %54, !dbg !1119, !llvm.loop !1120

79:                                               ; preds = %54
  ret i32 1, !dbg !1122
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @get_raw_row(ptr noundef %0, ptr noundef %1) #0 !dbg !1123 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !1124, !DIExpression(), !1125)
  store ptr %1, ptr %4, align 8
    #dbg_declare(ptr %4, !1126, !DIExpression(), !1127)
    #dbg_declare(ptr %5, !1128, !DIExpression(), !1129)
  %6 = load ptr, ptr %4, align 8, !dbg !1130
  store ptr %6, ptr %5, align 8, !dbg !1129
  %7 = load ptr, ptr %5, align 8, !dbg !1131
  %8 = getelementptr inbounds nuw %struct.ppm_source_struct, ptr %7, i32 0, i32 1, !dbg !1131
  %9 = load ptr, ptr %8, align 8, !dbg !1131
  %10 = load ptr, ptr %5, align 8, !dbg !1131
  %11 = getelementptr inbounds nuw %struct.ppm_source_struct, ptr %10, i32 0, i32 3, !dbg !1131
  %12 = load i64, ptr %11, align 8, !dbg !1131
  %13 = load ptr, ptr %5, align 8, !dbg !1131
  %14 = getelementptr inbounds nuw %struct.ppm_source_struct, ptr %13, i32 0, i32 0, !dbg !1131
  %15 = getelementptr inbounds nuw %struct.cjpeg_source_struct, ptr %14, i32 0, i32 3, !dbg !1131
  %16 = load ptr, ptr %15, align 8, !dbg !1131
  %17 = call i64 @fread(ptr noundef %9, i64 noundef 1, i64 noundef %12, ptr noundef %16), !dbg !1131
  %18 = load ptr, ptr %5, align 8, !dbg !1131
  %19 = getelementptr inbounds nuw %struct.ppm_source_struct, ptr %18, i32 0, i32 3, !dbg !1131
  %20 = load i64, ptr %19, align 8, !dbg !1131
  %21 = icmp eq i64 %17, %20, !dbg !1131
  br i1 %21, label %33, label %22, !dbg !1133

22:                                               ; preds = %2
  %23 = load ptr, ptr %3, align 8, !dbg !1134
  %24 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %23, i32 0, i32 0, !dbg !1134
  %25 = load ptr, ptr %24, align 8, !dbg !1134
  %26 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %25, i32 0, i32 5, !dbg !1134
  store i32 42, ptr %26, align 8, !dbg !1134
  %27 = load ptr, ptr %3, align 8, !dbg !1134
  %28 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %27, i32 0, i32 0, !dbg !1134
  %29 = load ptr, ptr %28, align 8, !dbg !1134
  %30 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %29, i32 0, i32 0, !dbg !1134
  %31 = load ptr, ptr %30, align 8, !dbg !1134
  %32 = load ptr, ptr %3, align 8, !dbg !1134
  call void %31(ptr noundef %32), !dbg !1134
  br label %33, !dbg !1134

33:                                               ; preds = %22, %2
  ret i32 1, !dbg !1135
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @get_scaled_gray_row(ptr noundef %0, ptr noundef %1) #0 !dbg !1136 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !1137, !DIExpression(), !1138)
  store ptr %1, ptr %4, align 8
    #dbg_declare(ptr %4, !1139, !DIExpression(), !1140)
    #dbg_declare(ptr %5, !1141, !DIExpression(), !1142)
  %10 = load ptr, ptr %4, align 8, !dbg !1143
  store ptr %10, ptr %5, align 8, !dbg !1142
    #dbg_declare(ptr %6, !1144, !DIExpression(), !1145)
    #dbg_declare(ptr %7, !1146, !DIExpression(), !1147)
    #dbg_declare(ptr %8, !1148, !DIExpression(), !1149)
  %11 = load ptr, ptr %5, align 8, !dbg !1150
  %12 = getelementptr inbounds nuw %struct.ppm_source_struct, ptr %11, i32 0, i32 4, !dbg !1151
  %13 = load ptr, ptr %12, align 8, !dbg !1151
  store ptr %13, ptr %8, align 8, !dbg !1149
    #dbg_declare(ptr %9, !1152, !DIExpression(), !1153)
  %14 = load ptr, ptr %5, align 8, !dbg !1154
  %15 = getelementptr inbounds nuw %struct.ppm_source_struct, ptr %14, i32 0, i32 1, !dbg !1154
  %16 = load ptr, ptr %15, align 8, !dbg !1154
  %17 = load ptr, ptr %5, align 8, !dbg !1154
  %18 = getelementptr inbounds nuw %struct.ppm_source_struct, ptr %17, i32 0, i32 3, !dbg !1154
  %19 = load i64, ptr %18, align 8, !dbg !1154
  %20 = load ptr, ptr %5, align 8, !dbg !1154
  %21 = getelementptr inbounds nuw %struct.ppm_source_struct, ptr %20, i32 0, i32 0, !dbg !1154
  %22 = getelementptr inbounds nuw %struct.cjpeg_source_struct, ptr %21, i32 0, i32 3, !dbg !1154
  %23 = load ptr, ptr %22, align 8, !dbg !1154
  %24 = call i64 @fread(ptr noundef %16, i64 noundef 1, i64 noundef %19, ptr noundef %23), !dbg !1154
  %25 = load ptr, ptr %5, align 8, !dbg !1154
  %26 = getelementptr inbounds nuw %struct.ppm_source_struct, ptr %25, i32 0, i32 3, !dbg !1154
  %27 = load i64, ptr %26, align 8, !dbg !1154
  %28 = icmp eq i64 %24, %27, !dbg !1154
  br i1 %28, label %40, label %29, !dbg !1156

29:                                               ; preds = %2
  %30 = load ptr, ptr %3, align 8, !dbg !1157
  %31 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %30, i32 0, i32 0, !dbg !1157
  %32 = load ptr, ptr %31, align 8, !dbg !1157
  %33 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %32, i32 0, i32 5, !dbg !1157
  store i32 42, ptr %33, align 8, !dbg !1157
  %34 = load ptr, ptr %3, align 8, !dbg !1157
  %35 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %34, i32 0, i32 0, !dbg !1157
  %36 = load ptr, ptr %35, align 8, !dbg !1157
  %37 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %36, i32 0, i32 0, !dbg !1157
  %38 = load ptr, ptr %37, align 8, !dbg !1157
  %39 = load ptr, ptr %3, align 8, !dbg !1157
  call void %38(ptr noundef %39), !dbg !1157
  br label %40, !dbg !1157

40:                                               ; preds = %29, %2
  %41 = load ptr, ptr %5, align 8, !dbg !1158
  %42 = getelementptr inbounds nuw %struct.ppm_source_struct, ptr %41, i32 0, i32 0, !dbg !1159
  %43 = getelementptr inbounds nuw %struct.cjpeg_source_struct, ptr %42, i32 0, i32 4, !dbg !1160
  %44 = load ptr, ptr %43, align 8, !dbg !1160
  %45 = getelementptr inbounds ptr, ptr %44, i64 0, !dbg !1158
  %46 = load ptr, ptr %45, align 8, !dbg !1158
  store ptr %46, ptr %6, align 8, !dbg !1161
  %47 = load ptr, ptr %5, align 8, !dbg !1162
  %48 = getelementptr inbounds nuw %struct.ppm_source_struct, ptr %47, i32 0, i32 1, !dbg !1163
  %49 = load ptr, ptr %48, align 8, !dbg !1163
  store ptr %49, ptr %7, align 8, !dbg !1164
  %50 = load ptr, ptr %3, align 8, !dbg !1165
  %51 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %50, i32 0, i32 6, !dbg !1167
  %52 = load i32, ptr %51, align 8, !dbg !1167
  store i32 %52, ptr %9, align 4, !dbg !1168
  br label %53, !dbg !1169

53:                                               ; preds = %67, %40
  %54 = load i32, ptr %9, align 4, !dbg !1170
  %55 = icmp ugt i32 %54, 0, !dbg !1172
  br i1 %55, label %56, label %70, !dbg !1173

56:                                               ; preds = %53
  %57 = load ptr, ptr %8, align 8, !dbg !1174
  %58 = load ptr, ptr %7, align 8, !dbg !1176
  %59 = getelementptr inbounds nuw i8, ptr %58, i32 1, !dbg !1176
  store ptr %59, ptr %7, align 8, !dbg !1176
  %60 = load i8, ptr %58, align 1, !dbg !1176
  %61 = zext i8 %60 to i32, !dbg !1176
  %62 = sext i32 %61 to i64, !dbg !1174
  %63 = getelementptr inbounds i8, ptr %57, i64 %62, !dbg !1174
  %64 = load i8, ptr %63, align 1, !dbg !1174
  %65 = load ptr, ptr %6, align 8, !dbg !1177
  %66 = getelementptr inbounds nuw i8, ptr %65, i32 1, !dbg !1177
  store ptr %66, ptr %6, align 8, !dbg !1177
  store i8 %64, ptr %65, align 1, !dbg !1178
  br label %67, !dbg !1179

67:                                               ; preds = %56
  %68 = load i32, ptr %9, align 4, !dbg !1180
  %69 = add i32 %68, -1, !dbg !1180
  store i32 %69, ptr %9, align 4, !dbg !1180
  br label %53, !dbg !1181, !llvm.loop !1182

70:                                               ; preds = %53
  ret i32 1, !dbg !1184
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @get_word_rgb_row(ptr noundef %0, ptr noundef %1) #0 !dbg !1185 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !1186, !DIExpression(), !1187)
  store ptr %1, ptr %4, align 8
    #dbg_declare(ptr %4, !1188, !DIExpression(), !1189)
    #dbg_declare(ptr %5, !1190, !DIExpression(), !1191)
  %11 = load ptr, ptr %4, align 8, !dbg !1192
  store ptr %11, ptr %5, align 8, !dbg !1191
    #dbg_declare(ptr %6, !1193, !DIExpression(), !1194)
    #dbg_declare(ptr %7, !1195, !DIExpression(), !1196)
    #dbg_declare(ptr %8, !1197, !DIExpression(), !1198)
  %12 = load ptr, ptr %5, align 8, !dbg !1199
  %13 = getelementptr inbounds nuw %struct.ppm_source_struct, ptr %12, i32 0, i32 4, !dbg !1200
  %14 = load ptr, ptr %13, align 8, !dbg !1200
  store ptr %14, ptr %8, align 8, !dbg !1198
    #dbg_declare(ptr %9, !1201, !DIExpression(), !1202)
  %15 = load ptr, ptr %5, align 8, !dbg !1203
  %16 = getelementptr inbounds nuw %struct.ppm_source_struct, ptr %15, i32 0, i32 1, !dbg !1203
  %17 = load ptr, ptr %16, align 8, !dbg !1203
  %18 = load ptr, ptr %5, align 8, !dbg !1203
  %19 = getelementptr inbounds nuw %struct.ppm_source_struct, ptr %18, i32 0, i32 3, !dbg !1203
  %20 = load i64, ptr %19, align 8, !dbg !1203
  %21 = load ptr, ptr %5, align 8, !dbg !1203
  %22 = getelementptr inbounds nuw %struct.ppm_source_struct, ptr %21, i32 0, i32 0, !dbg !1203
  %23 = getelementptr inbounds nuw %struct.cjpeg_source_struct, ptr %22, i32 0, i32 3, !dbg !1203
  %24 = load ptr, ptr %23, align 8, !dbg !1203
  %25 = call i64 @fread(ptr noundef %17, i64 noundef 1, i64 noundef %20, ptr noundef %24), !dbg !1203
  %26 = load ptr, ptr %5, align 8, !dbg !1203
  %27 = getelementptr inbounds nuw %struct.ppm_source_struct, ptr %26, i32 0, i32 3, !dbg !1203
  %28 = load i64, ptr %27, align 8, !dbg !1203
  %29 = icmp eq i64 %25, %28, !dbg !1203
  br i1 %29, label %41, label %30, !dbg !1205

30:                                               ; preds = %2
  %31 = load ptr, ptr %3, align 8, !dbg !1206
  %32 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %31, i32 0, i32 0, !dbg !1206
  %33 = load ptr, ptr %32, align 8, !dbg !1206
  %34 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %33, i32 0, i32 5, !dbg !1206
  store i32 42, ptr %34, align 8, !dbg !1206
  %35 = load ptr, ptr %3, align 8, !dbg !1206
  %36 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %35, i32 0, i32 0, !dbg !1206
  %37 = load ptr, ptr %36, align 8, !dbg !1206
  %38 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %37, i32 0, i32 0, !dbg !1206
  %39 = load ptr, ptr %38, align 8, !dbg !1206
  %40 = load ptr, ptr %3, align 8, !dbg !1206
  call void %39(ptr noundef %40), !dbg !1206
  br label %41, !dbg !1206

41:                                               ; preds = %30, %2
  %42 = load ptr, ptr %5, align 8, !dbg !1207
  %43 = getelementptr inbounds nuw %struct.ppm_source_struct, ptr %42, i32 0, i32 0, !dbg !1208
  %44 = getelementptr inbounds nuw %struct.cjpeg_source_struct, ptr %43, i32 0, i32 4, !dbg !1209
  %45 = load ptr, ptr %44, align 8, !dbg !1209
  %46 = getelementptr inbounds ptr, ptr %45, i64 0, !dbg !1207
  %47 = load ptr, ptr %46, align 8, !dbg !1207
  store ptr %47, ptr %6, align 8, !dbg !1210
  %48 = load ptr, ptr %5, align 8, !dbg !1211
  %49 = getelementptr inbounds nuw %struct.ppm_source_struct, ptr %48, i32 0, i32 1, !dbg !1212
  %50 = load ptr, ptr %49, align 8, !dbg !1212
  store ptr %50, ptr %7, align 8, !dbg !1213
  %51 = load ptr, ptr %3, align 8, !dbg !1214
  %52 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %51, i32 0, i32 6, !dbg !1216
  %53 = load i32, ptr %52, align 8, !dbg !1216
  store i32 %53, ptr %9, align 4, !dbg !1217
  br label %54, !dbg !1218

54:                                               ; preds = %112, %41
  %55 = load i32, ptr %9, align 4, !dbg !1219
  %56 = icmp ugt i32 %55, 0, !dbg !1221
  br i1 %56, label %57, label %115, !dbg !1222

57:                                               ; preds = %54
    #dbg_declare(ptr %10, !1223, !DIExpression(), !1225)
  %58 = load ptr, ptr %7, align 8, !dbg !1226
  %59 = getelementptr inbounds nuw i8, ptr %58, i32 1, !dbg !1226
  store ptr %59, ptr %7, align 8, !dbg !1226
  %60 = load i8, ptr %58, align 1, !dbg !1226
  %61 = zext i8 %60 to i32, !dbg !1226
  store i32 %61, ptr %10, align 4, !dbg !1227
  %62 = load ptr, ptr %7, align 8, !dbg !1228
  %63 = getelementptr inbounds nuw i8, ptr %62, i32 1, !dbg !1228
  store ptr %63, ptr %7, align 8, !dbg !1228
  %64 = load i8, ptr %62, align 1, !dbg !1228
  %65 = zext i8 %64 to i32, !dbg !1228
  %66 = shl i32 %65, 8, !dbg !1229
  %67 = load i32, ptr %10, align 4, !dbg !1230
  %68 = or i32 %67, %66, !dbg !1230
  store i32 %68, ptr %10, align 4, !dbg !1230
  %69 = load ptr, ptr %8, align 8, !dbg !1231
  %70 = load i32, ptr %10, align 4, !dbg !1232
  %71 = sext i32 %70 to i64, !dbg !1231
  %72 = getelementptr inbounds i8, ptr %69, i64 %71, !dbg !1231
  %73 = load i8, ptr %72, align 1, !dbg !1231
  %74 = load ptr, ptr %6, align 8, !dbg !1233
  %75 = getelementptr inbounds nuw i8, ptr %74, i32 1, !dbg !1233
  store ptr %75, ptr %6, align 8, !dbg !1233
  store i8 %73, ptr %74, align 1, !dbg !1234
  %76 = load ptr, ptr %7, align 8, !dbg !1235
  %77 = getelementptr inbounds nuw i8, ptr %76, i32 1, !dbg !1235
  store ptr %77, ptr %7, align 8, !dbg !1235
  %78 = load i8, ptr %76, align 1, !dbg !1235
  %79 = zext i8 %78 to i32, !dbg !1235
  store i32 %79, ptr %10, align 4, !dbg !1236
  %80 = load ptr, ptr %7, align 8, !dbg !1237
  %81 = getelementptr inbounds nuw i8, ptr %80, i32 1, !dbg !1237
  store ptr %81, ptr %7, align 8, !dbg !1237
  %82 = load i8, ptr %80, align 1, !dbg !1237
  %83 = zext i8 %82 to i32, !dbg !1237
  %84 = shl i32 %83, 8, !dbg !1238
  %85 = load i32, ptr %10, align 4, !dbg !1239
  %86 = or i32 %85, %84, !dbg !1239
  store i32 %86, ptr %10, align 4, !dbg !1239
  %87 = load ptr, ptr %8, align 8, !dbg !1240
  %88 = load i32, ptr %10, align 4, !dbg !1241
  %89 = sext i32 %88 to i64, !dbg !1240
  %90 = getelementptr inbounds i8, ptr %87, i64 %89, !dbg !1240
  %91 = load i8, ptr %90, align 1, !dbg !1240
  %92 = load ptr, ptr %6, align 8, !dbg !1242
  %93 = getelementptr inbounds nuw i8, ptr %92, i32 1, !dbg !1242
  store ptr %93, ptr %6, align 8, !dbg !1242
  store i8 %91, ptr %92, align 1, !dbg !1243
  %94 = load ptr, ptr %7, align 8, !dbg !1244
  %95 = getelementptr inbounds nuw i8, ptr %94, i32 1, !dbg !1244
  store ptr %95, ptr %7, align 8, !dbg !1244
  %96 = load i8, ptr %94, align 1, !dbg !1244
  %97 = zext i8 %96 to i32, !dbg !1244
  store i32 %97, ptr %10, align 4, !dbg !1245
  %98 = load ptr, ptr %7, align 8, !dbg !1246
  %99 = getelementptr inbounds nuw i8, ptr %98, i32 1, !dbg !1246
  store ptr %99, ptr %7, align 8, !dbg !1246
  %100 = load i8, ptr %98, align 1, !dbg !1246
  %101 = zext i8 %100 to i32, !dbg !1246
  %102 = shl i32 %101, 8, !dbg !1247
  %103 = load i32, ptr %10, align 4, !dbg !1248
  %104 = or i32 %103, %102, !dbg !1248
  store i32 %104, ptr %10, align 4, !dbg !1248
  %105 = load ptr, ptr %8, align 8, !dbg !1249
  %106 = load i32, ptr %10, align 4, !dbg !1250
  %107 = sext i32 %106 to i64, !dbg !1249
  %108 = getelementptr inbounds i8, ptr %105, i64 %107, !dbg !1249
  %109 = load i8, ptr %108, align 1, !dbg !1249
  %110 = load ptr, ptr %6, align 8, !dbg !1251
  %111 = getelementptr inbounds nuw i8, ptr %110, i32 1, !dbg !1251
  store ptr %111, ptr %6, align 8, !dbg !1251
  store i8 %109, ptr %110, align 1, !dbg !1252
  br label %112, !dbg !1253

112:                                              ; preds = %57
  %113 = load i32, ptr %9, align 4, !dbg !1254
  %114 = add i32 %113, -1, !dbg !1254
  store i32 %114, ptr %9, align 4, !dbg !1254
  br label %54, !dbg !1255, !llvm.loop !1256

115:                                              ; preds = %54
  ret i32 1, !dbg !1258
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @get_scaled_rgb_row(ptr noundef %0, ptr noundef %1) #0 !dbg !1259 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !1260, !DIExpression(), !1261)
  store ptr %1, ptr %4, align 8
    #dbg_declare(ptr %4, !1262, !DIExpression(), !1263)
    #dbg_declare(ptr %5, !1264, !DIExpression(), !1265)
  %10 = load ptr, ptr %4, align 8, !dbg !1266
  store ptr %10, ptr %5, align 8, !dbg !1265
    #dbg_declare(ptr %6, !1267, !DIExpression(), !1268)
    #dbg_declare(ptr %7, !1269, !DIExpression(), !1270)
    #dbg_declare(ptr %8, !1271, !DIExpression(), !1272)
  %11 = load ptr, ptr %5, align 8, !dbg !1273
  %12 = getelementptr inbounds nuw %struct.ppm_source_struct, ptr %11, i32 0, i32 4, !dbg !1274
  %13 = load ptr, ptr %12, align 8, !dbg !1274
  store ptr %13, ptr %8, align 8, !dbg !1272
    #dbg_declare(ptr %9, !1275, !DIExpression(), !1276)
  %14 = load ptr, ptr %5, align 8, !dbg !1277
  %15 = getelementptr inbounds nuw %struct.ppm_source_struct, ptr %14, i32 0, i32 1, !dbg !1277
  %16 = load ptr, ptr %15, align 8, !dbg !1277
  %17 = load ptr, ptr %5, align 8, !dbg !1277
  %18 = getelementptr inbounds nuw %struct.ppm_source_struct, ptr %17, i32 0, i32 3, !dbg !1277
  %19 = load i64, ptr %18, align 8, !dbg !1277
  %20 = load ptr, ptr %5, align 8, !dbg !1277
  %21 = getelementptr inbounds nuw %struct.ppm_source_struct, ptr %20, i32 0, i32 0, !dbg !1277
  %22 = getelementptr inbounds nuw %struct.cjpeg_source_struct, ptr %21, i32 0, i32 3, !dbg !1277
  %23 = load ptr, ptr %22, align 8, !dbg !1277
  %24 = call i64 @fread(ptr noundef %16, i64 noundef 1, i64 noundef %19, ptr noundef %23), !dbg !1277
  %25 = load ptr, ptr %5, align 8, !dbg !1277
  %26 = getelementptr inbounds nuw %struct.ppm_source_struct, ptr %25, i32 0, i32 3, !dbg !1277
  %27 = load i64, ptr %26, align 8, !dbg !1277
  %28 = icmp eq i64 %24, %27, !dbg !1277
  br i1 %28, label %40, label %29, !dbg !1279

29:                                               ; preds = %2
  %30 = load ptr, ptr %3, align 8, !dbg !1280
  %31 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %30, i32 0, i32 0, !dbg !1280
  %32 = load ptr, ptr %31, align 8, !dbg !1280
  %33 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %32, i32 0, i32 5, !dbg !1280
  store i32 42, ptr %33, align 8, !dbg !1280
  %34 = load ptr, ptr %3, align 8, !dbg !1280
  %35 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %34, i32 0, i32 0, !dbg !1280
  %36 = load ptr, ptr %35, align 8, !dbg !1280
  %37 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %36, i32 0, i32 0, !dbg !1280
  %38 = load ptr, ptr %37, align 8, !dbg !1280
  %39 = load ptr, ptr %3, align 8, !dbg !1280
  call void %38(ptr noundef %39), !dbg !1280
  br label %40, !dbg !1280

40:                                               ; preds = %29, %2
  %41 = load ptr, ptr %5, align 8, !dbg !1281
  %42 = getelementptr inbounds nuw %struct.ppm_source_struct, ptr %41, i32 0, i32 0, !dbg !1282
  %43 = getelementptr inbounds nuw %struct.cjpeg_source_struct, ptr %42, i32 0, i32 4, !dbg !1283
  %44 = load ptr, ptr %43, align 8, !dbg !1283
  %45 = getelementptr inbounds ptr, ptr %44, i64 0, !dbg !1281
  %46 = load ptr, ptr %45, align 8, !dbg !1281
  store ptr %46, ptr %6, align 8, !dbg !1284
  %47 = load ptr, ptr %5, align 8, !dbg !1285
  %48 = getelementptr inbounds nuw %struct.ppm_source_struct, ptr %47, i32 0, i32 1, !dbg !1286
  %49 = load ptr, ptr %48, align 8, !dbg !1286
  store ptr %49, ptr %7, align 8, !dbg !1287
  %50 = load ptr, ptr %3, align 8, !dbg !1288
  %51 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %50, i32 0, i32 6, !dbg !1290
  %52 = load i32, ptr %51, align 8, !dbg !1290
  store i32 %52, ptr %9, align 4, !dbg !1291
  br label %53, !dbg !1292

53:                                               ; preds = %87, %40
  %54 = load i32, ptr %9, align 4, !dbg !1293
  %55 = icmp ugt i32 %54, 0, !dbg !1295
  br i1 %55, label %56, label %90, !dbg !1296

56:                                               ; preds = %53
  %57 = load ptr, ptr %8, align 8, !dbg !1297
  %58 = load ptr, ptr %7, align 8, !dbg !1299
  %59 = getelementptr inbounds nuw i8, ptr %58, i32 1, !dbg !1299
  store ptr %59, ptr %7, align 8, !dbg !1299
  %60 = load i8, ptr %58, align 1, !dbg !1299
  %61 = zext i8 %60 to i32, !dbg !1299
  %62 = sext i32 %61 to i64, !dbg !1297
  %63 = getelementptr inbounds i8, ptr %57, i64 %62, !dbg !1297
  %64 = load i8, ptr %63, align 1, !dbg !1297
  %65 = load ptr, ptr %6, align 8, !dbg !1300
  %66 = getelementptr inbounds nuw i8, ptr %65, i32 1, !dbg !1300
  store ptr %66, ptr %6, align 8, !dbg !1300
  store i8 %64, ptr %65, align 1, !dbg !1301
  %67 = load ptr, ptr %8, align 8, !dbg !1302
  %68 = load ptr, ptr %7, align 8, !dbg !1303
  %69 = getelementptr inbounds nuw i8, ptr %68, i32 1, !dbg !1303
  store ptr %69, ptr %7, align 8, !dbg !1303
  %70 = load i8, ptr %68, align 1, !dbg !1303
  %71 = zext i8 %70 to i32, !dbg !1303
  %72 = sext i32 %71 to i64, !dbg !1302
  %73 = getelementptr inbounds i8, ptr %67, i64 %72, !dbg !1302
  %74 = load i8, ptr %73, align 1, !dbg !1302
  %75 = load ptr, ptr %6, align 8, !dbg !1304
  %76 = getelementptr inbounds nuw i8, ptr %75, i32 1, !dbg !1304
  store ptr %76, ptr %6, align 8, !dbg !1304
  store i8 %74, ptr %75, align 1, !dbg !1305
  %77 = load ptr, ptr %8, align 8, !dbg !1306
  %78 = load ptr, ptr %7, align 8, !dbg !1307
  %79 = getelementptr inbounds nuw i8, ptr %78, i32 1, !dbg !1307
  store ptr %79, ptr %7, align 8, !dbg !1307
  %80 = load i8, ptr %78, align 1, !dbg !1307
  %81 = zext i8 %80 to i32, !dbg !1307
  %82 = sext i32 %81 to i64, !dbg !1306
  %83 = getelementptr inbounds i8, ptr %77, i64 %82, !dbg !1306
  %84 = load i8, ptr %83, align 1, !dbg !1306
  %85 = load ptr, ptr %6, align 8, !dbg !1308
  %86 = getelementptr inbounds nuw i8, ptr %85, i32 1, !dbg !1308
  store ptr %86, ptr %6, align 8, !dbg !1308
  store i8 %84, ptr %85, align 1, !dbg !1309
  br label %87, !dbg !1310

87:                                               ; preds = %56
  %88 = load i32, ptr %9, align 4, !dbg !1311
  %89 = add i32 %88, -1, !dbg !1311
  store i32 %89, ptr %9, align 4, !dbg !1311
  br label %53, !dbg !1312, !llvm.loop !1313

90:                                               ; preds = %53
  ret i32 1, !dbg !1315
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @pbm_getc(ptr noundef %0) #0 !dbg !1316 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !1319, !DIExpression(), !1320)
    #dbg_declare(ptr %3, !1321, !DIExpression(), !1322)
  %4 = load ptr, ptr %2, align 8, !dbg !1323
  %5 = call i32 @getc(ptr noundef %4), !dbg !1324
  store i32 %5, ptr %3, align 4, !dbg !1325
  %6 = load i32, ptr %3, align 4, !dbg !1326
  %7 = icmp eq i32 %6, 35, !dbg !1328
  br i1 %7, label %8, label %21, !dbg !1328

8:                                                ; preds = %1
  br label %9, !dbg !1329

9:                                                ; preds = %18, %8
  %10 = load ptr, ptr %2, align 8, !dbg !1331
  %11 = call i32 @getc(ptr noundef %10), !dbg !1333
  store i32 %11, ptr %3, align 4, !dbg !1334
  br label %12, !dbg !1335

12:                                               ; preds = %9
  %13 = load i32, ptr %3, align 4, !dbg !1336
  %14 = icmp ne i32 %13, 10, !dbg !1337
  br i1 %14, label %15, label %18, !dbg !1338

15:                                               ; preds = %12
  %16 = load i32, ptr %3, align 4, !dbg !1339
  %17 = icmp ne i32 %16, -1, !dbg !1340
  br label %18

18:                                               ; preds = %15, %12
  %19 = phi i1 [ false, %12 ], [ %17, %15 ], !dbg !1341
  br i1 %19, label %9, label %20, !dbg !1335, !llvm.loop !1342

20:                                               ; preds = %18
  br label %21, !dbg !1344

21:                                               ; preds = %20, %1
  %22 = load i32, ptr %3, align 4, !dbg !1345
  ret i32 %22, !dbg !1346
}

declare i64 @fread(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!572, !573, !574, !575, !576, !577, !578}
!llvm.ident = !{!579}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !189, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "cBench/consumer_jpeg_c/src/rdppm.c", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "5df7f0947ca58c0be7c3be7d2113fb55")
!2 = !{!3, !13, !18, !65}
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
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !19, line: 33, baseType: !5, size: 32, elements: !20)
!19 = !DIFile(filename: "cBench/consumer_jpeg_c/src/cderror.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "023c024f882773b78143e7b16d959dcc")
!20 = !{!21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64}
!21 = !DIEnumerator(name: "JMSG_FIRSTADDONCODE", value: 1000)
!22 = !DIEnumerator(name: "JERR_BMP_BADCMAP", value: 1001)
!23 = !DIEnumerator(name: "JERR_BMP_BADDEPTH", value: 1002)
!24 = !DIEnumerator(name: "JERR_BMP_BADHEADER", value: 1003)
!25 = !DIEnumerator(name: "JERR_BMP_BADPLANES", value: 1004)
!26 = !DIEnumerator(name: "JERR_BMP_COLORSPACE", value: 1005)
!27 = !DIEnumerator(name: "JERR_BMP_COMPRESSED", value: 1006)
!28 = !DIEnumerator(name: "JERR_BMP_NOT", value: 1007)
!29 = !DIEnumerator(name: "JTRC_BMP", value: 1008)
!30 = !DIEnumerator(name: "JTRC_BMP_MAPPED", value: 1009)
!31 = !DIEnumerator(name: "JTRC_BMP_OS2", value: 1010)
!32 = !DIEnumerator(name: "JTRC_BMP_OS2_MAPPED", value: 1011)
!33 = !DIEnumerator(name: "JERR_GIF_BUG", value: 1012)
!34 = !DIEnumerator(name: "JERR_GIF_CODESIZE", value: 1013)
!35 = !DIEnumerator(name: "JERR_GIF_COLORSPACE", value: 1014)
!36 = !DIEnumerator(name: "JERR_GIF_IMAGENOTFOUND", value: 1015)
!37 = !DIEnumerator(name: "JERR_GIF_NOT", value: 1016)
!38 = !DIEnumerator(name: "JTRC_GIF", value: 1017)
!39 = !DIEnumerator(name: "JTRC_GIF_BADVERSION", value: 1018)
!40 = !DIEnumerator(name: "JTRC_GIF_EXTENSION", value: 1019)
!41 = !DIEnumerator(name: "JTRC_GIF_NONSQUARE", value: 1020)
!42 = !DIEnumerator(name: "JWRN_GIF_BADDATA", value: 1021)
!43 = !DIEnumerator(name: "JWRN_GIF_CHAR", value: 1022)
!44 = !DIEnumerator(name: "JWRN_GIF_ENDCODE", value: 1023)
!45 = !DIEnumerator(name: "JWRN_GIF_NOMOREDATA", value: 1024)
!46 = !DIEnumerator(name: "JERR_PPM_COLORSPACE", value: 1025)
!47 = !DIEnumerator(name: "JERR_PPM_NONNUMERIC", value: 1026)
!48 = !DIEnumerator(name: "JERR_PPM_NOT", value: 1027)
!49 = !DIEnumerator(name: "JTRC_PGM", value: 1028)
!50 = !DIEnumerator(name: "JTRC_PGM_TEXT", value: 1029)
!51 = !DIEnumerator(name: "JTRC_PPM", value: 1030)
!52 = !DIEnumerator(name: "JTRC_PPM_TEXT", value: 1031)
!53 = !DIEnumerator(name: "JERR_TGA_BADCMAP", value: 1032)
!54 = !DIEnumerator(name: "JERR_TGA_BADPARMS", value: 1033)
!55 = !DIEnumerator(name: "JERR_TGA_COLORSPACE", value: 1034)
!56 = !DIEnumerator(name: "JTRC_TGA", value: 1035)
!57 = !DIEnumerator(name: "JTRC_TGA_GRAY", value: 1036)
!58 = !DIEnumerator(name: "JTRC_TGA_MAPPED", value: 1037)
!59 = !DIEnumerator(name: "JERR_BAD_CMAP_FILE", value: 1038)
!60 = !DIEnumerator(name: "JERR_TOO_MANY_COLORS", value: 1039)
!61 = !DIEnumerator(name: "JERR_UNGETC_FAILED", value: 1040)
!62 = !DIEnumerator(name: "JERR_UNKNOWN_FORMAT", value: 1041)
!63 = !DIEnumerator(name: "JERR_UNSUPPORTED_FORMAT", value: 1042)
!64 = !DIEnumerator(name: "JMSG_LASTADDONCODE", value: 1043)
!65 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !66, line: 33, baseType: !5, size: 32, elements: !67)
!66 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jerror.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "a232f2460ff0049c960896e323d8710b")
!67 = !{!68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188}
!68 = !DIEnumerator(name: "JMSG_NOMESSAGE", value: 0)
!69 = !DIEnumerator(name: "JERR_ARITH_NOTIMPL", value: 1)
!70 = !DIEnumerator(name: "JERR_BAD_ALIGN_TYPE", value: 2)
!71 = !DIEnumerator(name: "JERR_BAD_ALLOC_CHUNK", value: 3)
!72 = !DIEnumerator(name: "JERR_BAD_BUFFER_MODE", value: 4)
!73 = !DIEnumerator(name: "JERR_BAD_COMPONENT_ID", value: 5)
!74 = !DIEnumerator(name: "JERR_BAD_DCTSIZE", value: 6)
!75 = !DIEnumerator(name: "JERR_BAD_IN_COLORSPACE", value: 7)
!76 = !DIEnumerator(name: "JERR_BAD_J_COLORSPACE", value: 8)
!77 = !DIEnumerator(name: "JERR_BAD_LENGTH", value: 9)
!78 = !DIEnumerator(name: "JERR_BAD_LIB_VERSION", value: 10)
!79 = !DIEnumerator(name: "JERR_BAD_MCU_SIZE", value: 11)
!80 = !DIEnumerator(name: "JERR_BAD_POOL_ID", value: 12)
!81 = !DIEnumerator(name: "JERR_BAD_PRECISION", value: 13)
!82 = !DIEnumerator(name: "JERR_BAD_PROGRESSION", value: 14)
!83 = !DIEnumerator(name: "JERR_BAD_PROG_SCRIPT", value: 15)
!84 = !DIEnumerator(name: "JERR_BAD_SAMPLING", value: 16)
!85 = !DIEnumerator(name: "JERR_BAD_SCAN_SCRIPT", value: 17)
!86 = !DIEnumerator(name: "JERR_BAD_STATE", value: 18)
!87 = !DIEnumerator(name: "JERR_BAD_STRUCT_SIZE", value: 19)
!88 = !DIEnumerator(name: "JERR_BAD_VIRTUAL_ACCESS", value: 20)
!89 = !DIEnumerator(name: "JERR_BUFFER_SIZE", value: 21)
!90 = !DIEnumerator(name: "JERR_CANT_SUSPEND", value: 22)
!91 = !DIEnumerator(name: "JERR_CCIR601_NOTIMPL", value: 23)
!92 = !DIEnumerator(name: "JERR_COMPONENT_COUNT", value: 24)
!93 = !DIEnumerator(name: "JERR_CONVERSION_NOTIMPL", value: 25)
!94 = !DIEnumerator(name: "JERR_DAC_INDEX", value: 26)
!95 = !DIEnumerator(name: "JERR_DAC_VALUE", value: 27)
!96 = !DIEnumerator(name: "JERR_DHT_COUNTS", value: 28)
!97 = !DIEnumerator(name: "JERR_DHT_INDEX", value: 29)
!98 = !DIEnumerator(name: "JERR_DQT_INDEX", value: 30)
!99 = !DIEnumerator(name: "JERR_EMPTY_IMAGE", value: 31)
!100 = !DIEnumerator(name: "JERR_EMS_READ", value: 32)
!101 = !DIEnumerator(name: "JERR_EMS_WRITE", value: 33)
!102 = !DIEnumerator(name: "JERR_EOI_EXPECTED", value: 34)
!103 = !DIEnumerator(name: "JERR_FILE_READ", value: 35)
!104 = !DIEnumerator(name: "JERR_FILE_WRITE", value: 36)
!105 = !DIEnumerator(name: "JERR_FRACT_SAMPLE_NOTIMPL", value: 37)
!106 = !DIEnumerator(name: "JERR_HUFF_CLEN_OVERFLOW", value: 38)
!107 = !DIEnumerator(name: "JERR_HUFF_MISSING_CODE", value: 39)
!108 = !DIEnumerator(name: "JERR_IMAGE_TOO_BIG", value: 40)
!109 = !DIEnumerator(name: "JERR_INPUT_EMPTY", value: 41)
!110 = !DIEnumerator(name: "JERR_INPUT_EOF", value: 42)
!111 = !DIEnumerator(name: "JERR_MISMATCHED_QUANT_TABLE", value: 43)
!112 = !DIEnumerator(name: "JERR_MISSING_DATA", value: 44)
!113 = !DIEnumerator(name: "JERR_MODE_CHANGE", value: 45)
!114 = !DIEnumerator(name: "JERR_NOTIMPL", value: 46)
!115 = !DIEnumerator(name: "JERR_NOT_COMPILED", value: 47)
!116 = !DIEnumerator(name: "JERR_NO_BACKING_STORE", value: 48)
!117 = !DIEnumerator(name: "JERR_NO_HUFF_TABLE", value: 49)
!118 = !DIEnumerator(name: "JERR_NO_IMAGE", value: 50)
!119 = !DIEnumerator(name: "JERR_NO_QUANT_TABLE", value: 51)
!120 = !DIEnumerator(name: "JERR_NO_SOI", value: 52)
!121 = !DIEnumerator(name: "JERR_OUT_OF_MEMORY", value: 53)
!122 = !DIEnumerator(name: "JERR_QUANT_COMPONENTS", value: 54)
!123 = !DIEnumerator(name: "JERR_QUANT_FEW_COLORS", value: 55)
!124 = !DIEnumerator(name: "JERR_QUANT_MANY_COLORS", value: 56)
!125 = !DIEnumerator(name: "JERR_SOF_DUPLICATE", value: 57)
!126 = !DIEnumerator(name: "JERR_SOF_NO_SOS", value: 58)
!127 = !DIEnumerator(name: "JERR_SOF_UNSUPPORTED", value: 59)
!128 = !DIEnumerator(name: "JERR_SOI_DUPLICATE", value: 60)
!129 = !DIEnumerator(name: "JERR_SOS_NO_SOF", value: 61)
!130 = !DIEnumerator(name: "JERR_TFILE_CREATE", value: 62)
!131 = !DIEnumerator(name: "JERR_TFILE_READ", value: 63)
!132 = !DIEnumerator(name: "JERR_TFILE_SEEK", value: 64)
!133 = !DIEnumerator(name: "JERR_TFILE_WRITE", value: 65)
!134 = !DIEnumerator(name: "JERR_TOO_LITTLE_DATA", value: 66)
!135 = !DIEnumerator(name: "JERR_UNKNOWN_MARKER", value: 67)
!136 = !DIEnumerator(name: "JERR_VIRTUAL_BUG", value: 68)
!137 = !DIEnumerator(name: "JERR_WIDTH_OVERFLOW", value: 69)
!138 = !DIEnumerator(name: "JERR_XMS_READ", value: 70)
!139 = !DIEnumerator(name: "JERR_XMS_WRITE", value: 71)
!140 = !DIEnumerator(name: "JMSG_COPYRIGHT", value: 72)
!141 = !DIEnumerator(name: "JMSG_VERSION", value: 73)
!142 = !DIEnumerator(name: "JTRC_16BIT_TABLES", value: 74)
!143 = !DIEnumerator(name: "JTRC_ADOBE", value: 75)
!144 = !DIEnumerator(name: "JTRC_APP0", value: 76)
!145 = !DIEnumerator(name: "JTRC_APP14", value: 77)
!146 = !DIEnumerator(name: "JTRC_DAC", value: 78)
!147 = !DIEnumerator(name: "JTRC_DHT", value: 79)
!148 = !DIEnumerator(name: "JTRC_DQT", value: 80)
!149 = !DIEnumerator(name: "JTRC_DRI", value: 81)
!150 = !DIEnumerator(name: "JTRC_EMS_CLOSE", value: 82)
!151 = !DIEnumerator(name: "JTRC_EMS_OPEN", value: 83)
!152 = !DIEnumerator(name: "JTRC_EOI", value: 84)
!153 = !DIEnumerator(name: "JTRC_HUFFBITS", value: 85)
!154 = !DIEnumerator(name: "JTRC_JFIF", value: 86)
!155 = !DIEnumerator(name: "JTRC_JFIF_BADTHUMBNAILSIZE", value: 87)
!156 = !DIEnumerator(name: "JTRC_JFIF_MINOR", value: 88)
!157 = !DIEnumerator(name: "JTRC_JFIF_THUMBNAIL", value: 89)
!158 = !DIEnumerator(name: "JTRC_MISC_MARKER", value: 90)
!159 = !DIEnumerator(name: "JTRC_PARMLESS_MARKER", value: 91)
!160 = !DIEnumerator(name: "JTRC_QUANTVALS", value: 92)
!161 = !DIEnumerator(name: "JTRC_QUANT_3_NCOLORS", value: 93)
!162 = !DIEnumerator(name: "JTRC_QUANT_NCOLORS", value: 94)
!163 = !DIEnumerator(name: "JTRC_QUANT_SELECTED", value: 95)
!164 = !DIEnumerator(name: "JTRC_RECOVERY_ACTION", value: 96)
!165 = !DIEnumerator(name: "JTRC_RST", value: 97)
!166 = !DIEnumerator(name: "JTRC_SMOOTH_NOTIMPL", value: 98)
!167 = !DIEnumerator(name: "JTRC_SOF", value: 99)
!168 = !DIEnumerator(name: "JTRC_SOF_COMPONENT", value: 100)
!169 = !DIEnumerator(name: "JTRC_SOI", value: 101)
!170 = !DIEnumerator(name: "JTRC_SOS", value: 102)
!171 = !DIEnumerator(name: "JTRC_SOS_COMPONENT", value: 103)
!172 = !DIEnumerator(name: "JTRC_SOS_PARAMS", value: 104)
!173 = !DIEnumerator(name: "JTRC_TFILE_CLOSE", value: 105)
!174 = !DIEnumerator(name: "JTRC_TFILE_OPEN", value: 106)
!175 = !DIEnumerator(name: "JTRC_UNKNOWN_IDS", value: 107)
!176 = !DIEnumerator(name: "JTRC_XMS_CLOSE", value: 108)
!177 = !DIEnumerator(name: "JTRC_XMS_OPEN", value: 109)
!178 = !DIEnumerator(name: "JWRN_ADOBE_XFORM", value: 110)
!179 = !DIEnumerator(name: "JWRN_BOGUS_PROGRESSION", value: 111)
!180 = !DIEnumerator(name: "JWRN_EXTRANEOUS_DATA", value: 112)
!181 = !DIEnumerator(name: "JWRN_HIT_MARKER", value: 113)
!182 = !DIEnumerator(name: "JWRN_HUFF_BAD_CODE", value: 114)
!183 = !DIEnumerator(name: "JWRN_JFIF_MAJOR", value: 115)
!184 = !DIEnumerator(name: "JWRN_JPEG_EOF", value: 116)
!185 = !DIEnumerator(name: "JWRN_MUST_RESYNC", value: 117)
!186 = !DIEnumerator(name: "JWRN_NOT_SEQUENTIAL", value: 118)
!187 = !DIEnumerator(name: "JWRN_TOO_MUCH_DATA", value: 119)
!188 = !DIEnumerator(name: "JMSG_LASTMSGCODE", value: 120)
!189 = !{!190, !215, !230, !501, !245, !566, !240, !241, !290, !571, !242, !228, !229}
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "ppm_source_ptr", file: !1, line: 80, baseType: !191)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "ppm_source_struct", file: !1, line: 78, baseType: !193)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 71, size: 640, elements: !194)
!194 = !{!195, !565, !568, !569, !570}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "pub", scope: !193, file: !1, line: 72, baseType: !196, size: 384)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cjpeg_source_struct", file: !197, line: 26, size: 384, elements: !198)
!197 = !DIFile(filename: "cBench/consumer_jpeg_c/src/cdjpeg.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "bced6b83fac9f9ba4577dcff987736ac")
!198 = !{!199, !503, !507, !508, !563, !564}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "start_input", scope: !196, file: !197, line: 27, baseType: !200, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = !DISubroutineType(types: !202)
!202 = !{null, !203, !501}
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "j_compress_ptr", file: !4, line: 249, baseType: !204)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_compress_struct", file: !4, line: 255, size: 3968, elements: !206)
!206 = !{!207, !334, !335, !336, !337, !338, !355, !356, !357, !358, !360, !362, !363, !364, !365, !400, !404, !420, !421, !425, !426, !427, !428, !441, !442, !443, !444, !445, !446, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !463, !464, !465, !466, !470, !471, !472, !473, !474, !477, !480, !483, !486, !489, !492, !495, !498}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !205, file: !4, line: 256, baseType: !208, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_error_mgr", file: !4, line: 618, size: 1344, elements: !210)
!210 = !{!211, !302, !303, !304, !310, !311, !312, !323, !324, !325, !330, !331, !332, !333}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "error_exit", scope: !209, file: !4, line: 620, baseType: !212, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = !DISubroutineType(types: !214)
!214 = !{null, !215}
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "j_common_ptr", file: !4, line: 248, baseType: !216)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_common_struct", file: !4, line: 240, size: 256, elements: !218)
!218 = !{!219, !220, !291, !300, !301}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !217, file: !4, line: 241, baseType: !208, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !217, file: !4, line: 241, baseType: !221, size: 64, offset: 64)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_memory_mgr", file: !4, line: 731, size: 768, elements: !223)
!223 = !{!224, !233, !234, !246, !260, !268, !275, !276, !280, !284, !288, !289}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_small", scope: !222, file: !4, line: 733, baseType: !225, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = !DISubroutineType(types: !227)
!227 = !{!228, !215, !229, !230}
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!229 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !231, line: 18, baseType: !232)
!231 = !DIFile(filename: "/usr/local/lib/clang/20/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!232 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_large", scope: !222, file: !4, line: 735, baseType: !225, size: 64, offset: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_sarray", scope: !222, file: !4, line: 737, baseType: !235, size: 64, offset: 128)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = !DISubroutineType(types: !237)
!237 = !{!238, !215, !229, !245, !245}
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPARRAY", file: !4, line: 67, baseType: !239)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPROW", file: !4, line: 66, baseType: !241)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPLE", file: !243, line: 59, baseType: !244)
!243 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jmorecfg.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "56a0eda58fafa6bdd5498f702a998c09")
!244 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "JDIMENSION", file: !243, line: 171, baseType: !5)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_barray", scope: !222, file: !4, line: 740, baseType: !247, size: 64, offset: 192)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = !DISubroutineType(types: !249)
!249 = !{!250, !215, !229, !245, !245}
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "JBLOCKARRAY", file: !4, line: 72, baseType: !251)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "JBLOCKROW", file: !4, line: 71, baseType: !253)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "JBLOCK", file: !4, line: 70, baseType: !255)
!255 = !DICompositeType(tag: DW_TAG_array_type, baseType: !256, size: 1024, elements: !258)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "JCOEF", file: !243, line: 99, baseType: !257)
!257 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!258 = !{!259}
!259 = !DISubrange(count: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "request_virt_sarray", scope: !222, file: !4, line: 743, baseType: !261, size: 64, offset: 256)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = !DISubroutineType(types: !263)
!263 = !{!264, !215, !229, !267, !245, !245, !245}
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "jvirt_sarray_ptr", file: !4, line: 727, baseType: !265)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = !DICompositeType(tag: DW_TAG_structure_type, name: "jvirt_sarray_control", file: !4, line: 727, flags: DIFlagFwdDecl)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "boolean", file: !243, line: 227, baseType: !229)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "request_virt_barray", scope: !222, file: !4, line: 749, baseType: !269, size: 64, offset: 320)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = !DISubroutineType(types: !271)
!271 = !{!272, !215, !229, !267, !245, !245, !245}
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "jvirt_barray_ptr", file: !4, line: 728, baseType: !273)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = !DICompositeType(tag: DW_TAG_structure_type, name: "jvirt_barray_control", file: !4, line: 728, flags: DIFlagFwdDecl)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "realize_virt_arrays", scope: !222, file: !4, line: 755, baseType: !212, size: 64, offset: 384)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "access_virt_sarray", scope: !222, file: !4, line: 756, baseType: !277, size: 64, offset: 448)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = !DISubroutineType(types: !279)
!279 = !{!238, !215, !264, !245, !245, !267}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "access_virt_barray", scope: !222, file: !4, line: 761, baseType: !281, size: 64, offset: 512)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = !DISubroutineType(types: !283)
!283 = !{!250, !215, !272, !245, !245, !267}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "free_pool", scope: !222, file: !4, line: 766, baseType: !285, size: 64, offset: 576)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = !DISubroutineType(types: !287)
!287 = !{null, !215, !229}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "self_destruct", scope: !222, file: !4, line: 767, baseType: !212, size: 64, offset: 640)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "max_memory_to_use", scope: !222, file: !4, line: 774, baseType: !290, size: 64, offset: 704)
!290 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "progress", scope: !217, file: !4, line: 241, baseType: !292, size: 64, offset: 128)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_progress_mgr", file: !4, line: 676, size: 256, elements: !294)
!294 = !{!295, !296, !297, !298, !299}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "progress_monitor", scope: !293, file: !4, line: 677, baseType: !212, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "pass_counter", scope: !293, file: !4, line: 679, baseType: !290, size: 64, offset: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "pass_limit", scope: !293, file: !4, line: 680, baseType: !290, size: 64, offset: 128)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "completed_passes", scope: !293, file: !4, line: 681, baseType: !229, size: 32, offset: 192)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "total_passes", scope: !293, file: !4, line: 682, baseType: !229, size: 32, offset: 224)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "is_decompressor", scope: !217, file: !4, line: 241, baseType: !267, size: 32, offset: 192)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "global_state", scope: !217, file: !4, line: 241, baseType: !229, size: 32, offset: 224)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "emit_message", scope: !209, file: !4, line: 622, baseType: !285, size: 64, offset: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "output_message", scope: !209, file: !4, line: 624, baseType: !212, size: 64, offset: 128)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "format_message", scope: !209, file: !4, line: 626, baseType: !305, size: 64, offset: 192)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = !DISubroutineType(types: !307)
!307 = !{null, !215, !308}
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "reset_error_mgr", scope: !209, file: !4, line: 629, baseType: !212, size: 64, offset: 256)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "msg_code", scope: !209, file: !4, line: 634, baseType: !229, size: 32, offset: 320)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "msg_parm", scope: !209, file: !4, line: 639, baseType: !313, size: 640, offset: 352)
!313 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !209, file: !4, line: 636, size: 640, elements: !314)
!314 = !{!315, !319}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !313, file: !4, line: 637, baseType: !316, size: 256)
!316 = !DICompositeType(tag: DW_TAG_array_type, baseType: !229, size: 256, elements: !317)
!317 = !{!318}
!318 = !DISubrange(count: 8)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !313, file: !4, line: 638, baseType: !320, size: 640)
!320 = !DICompositeType(tag: DW_TAG_array_type, baseType: !309, size: 640, elements: !321)
!321 = !{!322}
!322 = !DISubrange(count: 80)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "trace_level", scope: !209, file: !4, line: 643, baseType: !229, size: 32, offset: 992)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "num_warnings", scope: !209, file: !4, line: 651, baseType: !290, size: 64, offset: 1024)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "jpeg_message_table", scope: !209, file: !4, line: 663, baseType: !326, size: 64, offset: 1088)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !328)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !309)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "last_jpeg_message", scope: !209, file: !4, line: 664, baseType: !229, size: 32, offset: 1152)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "addon_message_table", scope: !209, file: !4, line: 668, baseType: !326, size: 64, offset: 1216)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "first_addon_message", scope: !209, file: !4, line: 669, baseType: !229, size: 32, offset: 1280)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "last_addon_message", scope: !209, file: !4, line: 670, baseType: !229, size: 32, offset: 1312)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !205, file: !4, line: 256, baseType: !221, size: 64, offset: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "progress", scope: !205, file: !4, line: 256, baseType: !292, size: 64, offset: 128)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "is_decompressor", scope: !205, file: !4, line: 256, baseType: !267, size: 32, offset: 192)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "global_state", scope: !205, file: !4, line: 256, baseType: !229, size: 32, offset: 224)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !205, file: !4, line: 259, baseType: !339, size: 64, offset: 256)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_destination_mgr", file: !4, line: 688, size: 320, elements: !341)
!341 = !{!342, !345, !346, !350, !354}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "next_output_byte", scope: !340, file: !4, line: 689, baseType: !343, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "JOCTET", file: !243, line: 110, baseType: !244)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "free_in_buffer", scope: !340, file: !4, line: 690, baseType: !230, size: 64, offset: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "init_destination", scope: !340, file: !4, line: 692, baseType: !347, size: 64, offset: 128)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = !DISubroutineType(types: !349)
!349 = !{null, !203}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "empty_output_buffer", scope: !340, file: !4, line: 693, baseType: !351, size: 64, offset: 192)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = !DISubroutineType(types: !353)
!353 = !{!267, !203}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "term_destination", scope: !340, file: !4, line: 694, baseType: !347, size: 64, offset: 256)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "image_width", scope: !205, file: !4, line: 266, baseType: !245, size: 32, offset: 320)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "image_height", scope: !205, file: !4, line: 267, baseType: !245, size: 32, offset: 352)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "input_components", scope: !205, file: !4, line: 268, baseType: !229, size: 32, offset: 384)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "in_color_space", scope: !205, file: !4, line: 269, baseType: !359, size: 32, offset: 416)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_COLOR_SPACE", file: !4, line: 201, baseType: !3)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "input_gamma", scope: !205, file: !4, line: 271, baseType: !361, size: 64, offset: 448)
!361 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "data_precision", scope: !205, file: !4, line: 281, baseType: !229, size: 32, offset: 512)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "num_components", scope: !205, file: !4, line: 283, baseType: !229, size: 32, offset: 544)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "jpeg_color_space", scope: !205, file: !4, line: 284, baseType: !359, size: 32, offset: 576)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "comp_info", scope: !205, file: !4, line: 286, baseType: !366, size: 64, offset: 640)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "jpeg_component_info", file: !4, line: 179, baseType: !368)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 116, size: 768, elements: !369)
!369 = !{!370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !399}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "component_id", scope: !368, file: !4, line: 120, baseType: !229, size: 32)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "component_index", scope: !368, file: !4, line: 121, baseType: !229, size: 32, offset: 32)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "h_samp_factor", scope: !368, file: !4, line: 122, baseType: !229, size: 32, offset: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "v_samp_factor", scope: !368, file: !4, line: 123, baseType: !229, size: 32, offset: 96)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "quant_tbl_no", scope: !368, file: !4, line: 124, baseType: !229, size: 32, offset: 128)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "dc_tbl_no", scope: !368, file: !4, line: 129, baseType: !229, size: 32, offset: 160)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tbl_no", scope: !368, file: !4, line: 130, baseType: !229, size: 32, offset: 192)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "width_in_blocks", scope: !368, file: !4, line: 139, baseType: !245, size: 32, offset: 224)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "height_in_blocks", scope: !368, file: !4, line: 140, baseType: !245, size: 32, offset: 256)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "DCT_scaled_size", scope: !368, file: !4, line: 147, baseType: !229, size: 32, offset: 288)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "downsampled_width", scope: !368, file: !4, line: 154, baseType: !245, size: 32, offset: 320)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "downsampled_height", scope: !368, file: !4, line: 155, baseType: !245, size: 32, offset: 352)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "component_needed", scope: !368, file: !4, line: 160, baseType: !267, size: 32, offset: 384)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_width", scope: !368, file: !4, line: 164, baseType: !229, size: 32, offset: 416)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_height", scope: !368, file: !4, line: 165, baseType: !229, size: 32, offset: 448)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_blocks", scope: !368, file: !4, line: 166, baseType: !229, size: 32, offset: 480)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_sample_width", scope: !368, file: !4, line: 167, baseType: !229, size: 32, offset: 512)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "last_col_width", scope: !368, file: !4, line: 168, baseType: !229, size: 32, offset: 544)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "last_row_height", scope: !368, file: !4, line: 169, baseType: !229, size: 32, offset: 576)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "quant_table", scope: !368, file: !4, line: 175, baseType: !390, size: 64, offset: 640)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "JQUANT_TBL", file: !4, line: 95, baseType: !392)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 83, size: 1056, elements: !393)
!393 = !{!394, !398}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "quantval", scope: !392, file: !4, line: 88, baseType: !395, size: 1024)
!395 = !DICompositeType(tag: DW_TAG_array_type, baseType: !396, size: 1024, elements: !258)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT16", file: !243, line: 147, baseType: !397)
!397 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "sent_table", scope: !392, file: !4, line: 94, baseType: !267, size: 32, offset: 1024)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "dct_table", scope: !368, file: !4, line: 178, baseType: !228, size: 64, offset: 704)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "quant_tbl_ptrs", scope: !205, file: !4, line: 289, baseType: !401, size: 256, offset: 704)
!401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !390, size: 256, elements: !402)
!402 = !{!403}
!403 = !DISubrange(count: 4)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "dc_huff_tbl_ptrs", scope: !205, file: !4, line: 292, baseType: !405, size: 256, offset: 960)
!405 = !DICompositeType(tag: DW_TAG_array_type, baseType: !406, size: 256, elements: !402)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "JHUFF_TBL", file: !4, line: 111, baseType: !408)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 100, size: 2240, elements: !409)
!409 = !{!410, !415, !419}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !408, file: !4, line: 102, baseType: !411, size: 136)
!411 = !DICompositeType(tag: DW_TAG_array_type, baseType: !412, size: 136, elements: !413)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT8", file: !243, line: 135, baseType: !244)
!413 = !{!414}
!414 = !DISubrange(count: 17)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "huffval", scope: !408, file: !4, line: 104, baseType: !416, size: 2048, offset: 136)
!416 = !DICompositeType(tag: DW_TAG_array_type, baseType: !412, size: 2048, elements: !417)
!417 = !{!418}
!418 = !DISubrange(count: 256)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "sent_table", scope: !408, file: !4, line: 110, baseType: !267, size: 32, offset: 2208)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "ac_huff_tbl_ptrs", scope: !205, file: !4, line: 293, baseType: !405, size: 256, offset: 1216)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "arith_dc_L", scope: !205, file: !4, line: 296, baseType: !422, size: 128, offset: 1472)
!422 = !DICompositeType(tag: DW_TAG_array_type, baseType: !412, size: 128, elements: !423)
!423 = !{!424}
!424 = !DISubrange(count: 16)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "arith_dc_U", scope: !205, file: !4, line: 297, baseType: !422, size: 128, offset: 1600)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "arith_ac_K", scope: !205, file: !4, line: 298, baseType: !422, size: 128, offset: 1728)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "num_scans", scope: !205, file: !4, line: 300, baseType: !229, size: 32, offset: 1856)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "scan_info", scope: !205, file: !4, line: 301, baseType: !429, size: 64, offset: 1920)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !431)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "jpeg_scan_info", file: !4, line: 189, baseType: !432)
!432 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 184, size: 288, elements: !433)
!433 = !{!434, !435, !437, !438, !439, !440}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "comps_in_scan", scope: !432, file: !4, line: 185, baseType: !229, size: 32)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "component_index", scope: !432, file: !4, line: 186, baseType: !436, size: 128, offset: 32)
!436 = !DICompositeType(tag: DW_TAG_array_type, baseType: !229, size: 128, elements: !402)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "Ss", scope: !432, file: !4, line: 187, baseType: !229, size: 32, offset: 160)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "Se", scope: !432, file: !4, line: 187, baseType: !229, size: 32, offset: 192)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "Ah", scope: !432, file: !4, line: 188, baseType: !229, size: 32, offset: 224)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "Al", scope: !432, file: !4, line: 188, baseType: !229, size: 32, offset: 256)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "raw_data_in", scope: !205, file: !4, line: 307, baseType: !267, size: 32, offset: 1984)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "arith_code", scope: !205, file: !4, line: 308, baseType: !267, size: 32, offset: 2016)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_coding", scope: !205, file: !4, line: 309, baseType: !267, size: 32, offset: 2048)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "CCIR601_sampling", scope: !205, file: !4, line: 310, baseType: !267, size: 32, offset: 2080)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "smoothing_factor", scope: !205, file: !4, line: 311, baseType: !229, size: 32, offset: 2112)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "dct_method", scope: !205, file: !4, line: 312, baseType: !447, size: 32, offset: 2144)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_DCT_METHOD", file: !4, line: 209, baseType: !13)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "restart_interval", scope: !205, file: !4, line: 319, baseType: !5, size: 32, offset: 2176)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "restart_in_rows", scope: !205, file: !4, line: 320, baseType: !229, size: 32, offset: 2208)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "write_JFIF_header", scope: !205, file: !4, line: 324, baseType: !267, size: 32, offset: 2240)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "density_unit", scope: !205, file: !4, line: 329, baseType: !412, size: 8, offset: 2272)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "X_density", scope: !205, file: !4, line: 330, baseType: !396, size: 16, offset: 2288)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "Y_density", scope: !205, file: !4, line: 331, baseType: !396, size: 16, offset: 2304)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "write_Adobe_marker", scope: !205, file: !4, line: 332, baseType: !267, size: 32, offset: 2336)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "next_scanline", scope: !205, file: !4, line: 339, baseType: !245, size: 32, offset: 2368)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "progressive_mode", scope: !205, file: !4, line: 348, baseType: !267, size: 32, offset: 2400)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "max_h_samp_factor", scope: !205, file: !4, line: 349, baseType: !229, size: 32, offset: 2432)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "max_v_samp_factor", scope: !205, file: !4, line: 350, baseType: !229, size: 32, offset: 2464)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "total_iMCU_rows", scope: !205, file: !4, line: 352, baseType: !245, size: 32, offset: 2496)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "comps_in_scan", scope: !205, file: !4, line: 363, baseType: !229, size: 32, offset: 2528)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "cur_comp_info", scope: !205, file: !4, line: 364, baseType: !462, size: 256, offset: 2560)
!462 = !DICompositeType(tag: DW_TAG_array_type, baseType: !366, size: 256, elements: !402)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "MCUs_per_row", scope: !205, file: !4, line: 367, baseType: !245, size: 32, offset: 2816)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_rows_in_scan", scope: !205, file: !4, line: 368, baseType: !245, size: 32, offset: 2848)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "blocks_in_MCU", scope: !205, file: !4, line: 370, baseType: !229, size: 32, offset: 2880)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_membership", scope: !205, file: !4, line: 371, baseType: !467, size: 320, offset: 2912)
!467 = !DICompositeType(tag: DW_TAG_array_type, baseType: !229, size: 320, elements: !468)
!468 = !{!469}
!469 = !DISubrange(count: 10)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "Ss", scope: !205, file: !4, line: 375, baseType: !229, size: 32, offset: 3232)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "Se", scope: !205, file: !4, line: 375, baseType: !229, size: 32, offset: 3264)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "Ah", scope: !205, file: !4, line: 375, baseType: !229, size: 32, offset: 3296)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "Al", scope: !205, file: !4, line: 375, baseType: !229, size: 32, offset: 3328)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !205, file: !4, line: 380, baseType: !475, size: 64, offset: 3392)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_comp_master", file: !4, line: 380, flags: DIFlagFwdDecl)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "main", scope: !205, file: !4, line: 381, baseType: !478, size: 64, offset: 3456)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!479 = !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_c_main_controller", file: !4, line: 381, flags: DIFlagFwdDecl)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "prep", scope: !205, file: !4, line: 382, baseType: !481, size: 64, offset: 3520)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_c_prep_controller", file: !4, line: 382, flags: DIFlagFwdDecl)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "coef", scope: !205, file: !4, line: 383, baseType: !484, size: 64, offset: 3584)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_c_coef_controller", file: !4, line: 383, flags: DIFlagFwdDecl)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "marker", scope: !205, file: !4, line: 384, baseType: !487, size: 64, offset: 3648)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_marker_writer", file: !4, line: 384, flags: DIFlagFwdDecl)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "cconvert", scope: !205, file: !4, line: 385, baseType: !490, size: 64, offset: 3712)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_color_converter", file: !4, line: 385, flags: DIFlagFwdDecl)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "downsample", scope: !205, file: !4, line: 386, baseType: !493, size: 64, offset: 3776)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_downsampler", file: !4, line: 386, flags: DIFlagFwdDecl)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "fdct", scope: !205, file: !4, line: 387, baseType: !496, size: 64, offset: 3840)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_forward_dct", file: !4, line: 387, flags: DIFlagFwdDecl)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "entropy", scope: !205, file: !4, line: 388, baseType: !499, size: 64, offset: 3904)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_entropy_encoder", file: !4, line: 388, flags: DIFlagFwdDecl)
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "cjpeg_source_ptr", file: !197, line: 24, baseType: !502)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "get_pixel_rows", scope: !196, file: !197, line: 29, baseType: !504, size: 64, offset: 64)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DISubroutineType(types: !506)
!506 = !{!245, !203, !501}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "finish_input", scope: !196, file: !197, line: 31, baseType: !200, size: 64, offset: 128)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "input_file", scope: !196, file: !197, line: 34, baseType: !509, size: 64, offset: 192)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !511, line: 7, baseType: !512)
!511 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !513, line: 49, size: 1728, elements: !514)
!513 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!514 = !{!515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !530, !532, !533, !534, !537, !538, !540, !544, !547, !549, !552, !555, !556, !557, !558, !559}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !512, file: !513, line: 51, baseType: !229, size: 32)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !512, file: !513, line: 54, baseType: !308, size: 64, offset: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !512, file: !513, line: 55, baseType: !308, size: 64, offset: 128)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !512, file: !513, line: 56, baseType: !308, size: 64, offset: 192)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !512, file: !513, line: 57, baseType: !308, size: 64, offset: 256)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !512, file: !513, line: 58, baseType: !308, size: 64, offset: 320)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !512, file: !513, line: 59, baseType: !308, size: 64, offset: 384)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !512, file: !513, line: 60, baseType: !308, size: 64, offset: 448)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !512, file: !513, line: 61, baseType: !308, size: 64, offset: 512)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !512, file: !513, line: 64, baseType: !308, size: 64, offset: 576)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !512, file: !513, line: 65, baseType: !308, size: 64, offset: 640)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !512, file: !513, line: 66, baseType: !308, size: 64, offset: 704)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !512, file: !513, line: 68, baseType: !528, size: 64, offset: 768)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !513, line: 36, flags: DIFlagFwdDecl)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !512, file: !513, line: 70, baseType: !531, size: 64, offset: 832)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !512, file: !513, line: 72, baseType: !229, size: 32, offset: 896)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !512, file: !513, line: 73, baseType: !229, size: 32, offset: 928)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !512, file: !513, line: 74, baseType: !535, size: 64, offset: 960)
!535 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !536, line: 152, baseType: !290)
!536 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!537 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !512, file: !513, line: 77, baseType: !397, size: 16, offset: 1024)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !512, file: !513, line: 78, baseType: !539, size: 8, offset: 1040)
!539 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !512, file: !513, line: 79, baseType: !541, size: 8, offset: 1048)
!541 = !DICompositeType(tag: DW_TAG_array_type, baseType: !309, size: 8, elements: !542)
!542 = !{!543}
!543 = !DISubrange(count: 1)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !512, file: !513, line: 81, baseType: !545, size: 64, offset: 1088)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !513, line: 43, baseType: null)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !512, file: !513, line: 89, baseType: !548, size: 64, offset: 1152)
!548 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !536, line: 153, baseType: !290)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !512, file: !513, line: 91, baseType: !550, size: 64, offset: 1216)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !513, line: 37, flags: DIFlagFwdDecl)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !512, file: !513, line: 92, baseType: !553, size: 64, offset: 1280)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !513, line: 38, flags: DIFlagFwdDecl)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !512, file: !513, line: 93, baseType: !531, size: 64, offset: 1344)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !512, file: !513, line: 94, baseType: !228, size: 64, offset: 1408)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !512, file: !513, line: 95, baseType: !230, size: 64, offset: 1472)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !512, file: !513, line: 96, baseType: !229, size: 32, offset: 1536)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !512, file: !513, line: 98, baseType: !560, size: 160, offset: 1568)
!560 = !DICompositeType(tag: DW_TAG_array_type, baseType: !309, size: 160, elements: !561)
!561 = !{!562}
!562 = !DISubrange(count: 20)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !196, file: !197, line: 36, baseType: !238, size: 64, offset: 256)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_height", scope: !196, file: !197, line: 37, baseType: !245, size: 32, offset: 320)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "iobuffer", scope: !193, file: !1, line: 74, baseType: !566, size: 64, offset: 384)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "U_CHAR", file: !1, line: 42, baseType: !244)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "pixrow", scope: !193, file: !1, line: 75, baseType: !240, size: 64, offset: 448)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_width", scope: !193, file: !1, line: 76, baseType: !230, size: 64, offset: 512)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "rescale", scope: !193, file: !1, line: 77, baseType: !241, size: 64, offset: 576)
!571 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT32", file: !243, line: 161, baseType: !290)
!572 = !{i32 7, !"Dwarf Version", i32 5}
!573 = !{i32 2, !"Debug Info Version", i32 3}
!574 = !{i32 1, !"wchar_size", i32 4}
!575 = !{i32 8, !"PIC Level", i32 2}
!576 = !{i32 7, !"PIE Level", i32 2}
!577 = !{i32 7, !"uwtable", i32 2}
!578 = !{i32 7, !"frame-pointer", i32 2}
!579 = !{!"clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)"}
!580 = distinct !DISubprogram(name: "jinit_read_ppm", scope: !1, file: !1, line: 435, type: !581, scopeLine: 436, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !583)
!581 = !DISubroutineType(types: !582)
!582 = !{!501, !203}
!583 = !{}
!584 = !DILocalVariable(name: "cinfo", arg: 1, scope: !580, file: !1, line: 435, type: !203)
!585 = !DILocation(line: 435, column: 32, scope: !580)
!586 = !DILocalVariable(name: "source", scope: !580, file: !1, line: 437, type: !190)
!587 = !DILocation(line: 437, column: 18, scope: !580)
!588 = !DILocation(line: 441, column: 9, scope: !580)
!589 = !DILocation(line: 441, column: 16, scope: !580)
!590 = !DILocation(line: 441, column: 21, scope: !580)
!591 = !DILocation(line: 441, column: 50, scope: !580)
!592 = !DILocation(line: 441, column: 7, scope: !580)
!593 = !DILocation(line: 440, column: 10, scope: !580)
!594 = !DILocation(line: 444, column: 3, scope: !580)
!595 = !DILocation(line: 444, column: 11, scope: !580)
!596 = !DILocation(line: 444, column: 15, scope: !580)
!597 = !DILocation(line: 444, column: 27, scope: !580)
!598 = !DILocation(line: 445, column: 3, scope: !580)
!599 = !DILocation(line: 445, column: 11, scope: !580)
!600 = !DILocation(line: 445, column: 15, scope: !580)
!601 = !DILocation(line: 445, column: 28, scope: !580)
!602 = !DILocation(line: 447, column: 29, scope: !580)
!603 = !DILocation(line: 447, column: 3, scope: !580)
!604 = distinct !DISubprogram(name: "start_input_ppm", scope: !1, file: !1, line: 296, type: !201, scopeLine: 297, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !583)
!605 = !DILocalVariable(name: "cinfo", arg: 1, scope: !604, file: !1, line: 296, type: !203)
!606 = !DILocation(line: 296, column: 33, scope: !604)
!607 = !DILocalVariable(name: "sinfo", arg: 2, scope: !604, file: !1, line: 296, type: !501)
!608 = !DILocation(line: 296, column: 57, scope: !604)
!609 = !DILocalVariable(name: "source", scope: !604, file: !1, line: 298, type: !190)
!610 = !DILocation(line: 298, column: 18, scope: !604)
!611 = !DILocation(line: 298, column: 44, scope: !604)
!612 = !DILocalVariable(name: "c", scope: !604, file: !1, line: 299, type: !229)
!613 = !DILocation(line: 299, column: 7, scope: !604)
!614 = !DILocalVariable(name: "w", scope: !604, file: !1, line: 300, type: !5)
!615 = !DILocation(line: 300, column: 16, scope: !604)
!616 = !DILocalVariable(name: "h", scope: !604, file: !1, line: 300, type: !5)
!617 = !DILocation(line: 300, column: 19, scope: !604)
!618 = !DILocalVariable(name: "maxval", scope: !604, file: !1, line: 300, type: !5)
!619 = !DILocation(line: 300, column: 22, scope: !604)
!620 = !DILocalVariable(name: "need_iobuffer", scope: !604, file: !1, line: 301, type: !267)
!621 = !DILocation(line: 301, column: 11, scope: !604)
!622 = !DILocalVariable(name: "use_raw_buffer", scope: !604, file: !1, line: 301, type: !267)
!623 = !DILocation(line: 301, column: 26, scope: !604)
!624 = !DILocalVariable(name: "need_rescale", scope: !604, file: !1, line: 301, type: !267)
!625 = !DILocation(line: 301, column: 42, scope: !604)
!626 = !DILocation(line: 303, column: 12, scope: !627)
!627 = distinct !DILexicalBlock(scope: !604, file: !1, line: 303, column: 7)
!628 = !DILocation(line: 303, column: 20, scope: !627)
!629 = !DILocation(line: 303, column: 24, scope: !627)
!630 = !DILocation(line: 303, column: 7, scope: !627)
!631 = !DILocation(line: 303, column: 36, scope: !627)
!632 = !DILocation(line: 304, column: 5, scope: !627)
!633 = !DILocation(line: 306, column: 12, scope: !604)
!634 = !DILocation(line: 306, column: 20, scope: !604)
!635 = !DILocation(line: 306, column: 24, scope: !604)
!636 = !DILocation(line: 306, column: 7, scope: !604)
!637 = !DILocation(line: 306, column: 5, scope: !604)
!638 = !DILocation(line: 309, column: 24, scope: !604)
!639 = !DILocation(line: 309, column: 31, scope: !604)
!640 = !DILocation(line: 309, column: 39, scope: !604)
!641 = !DILocation(line: 309, column: 43, scope: !604)
!642 = !DILocation(line: 309, column: 7, scope: !604)
!643 = !DILocation(line: 309, column: 5, scope: !604)
!644 = !DILocation(line: 310, column: 24, scope: !604)
!645 = !DILocation(line: 310, column: 31, scope: !604)
!646 = !DILocation(line: 310, column: 39, scope: !604)
!647 = !DILocation(line: 310, column: 43, scope: !604)
!648 = !DILocation(line: 310, column: 7, scope: !604)
!649 = !DILocation(line: 310, column: 5, scope: !604)
!650 = !DILocation(line: 311, column: 29, scope: !604)
!651 = !DILocation(line: 311, column: 36, scope: !604)
!652 = !DILocation(line: 311, column: 44, scope: !604)
!653 = !DILocation(line: 311, column: 48, scope: !604)
!654 = !DILocation(line: 311, column: 12, scope: !604)
!655 = !DILocation(line: 311, column: 10, scope: !604)
!656 = !DILocation(line: 313, column: 7, scope: !657)
!657 = distinct !DILexicalBlock(scope: !604, file: !1, line: 313, column: 7)
!658 = !DILocation(line: 313, column: 9, scope: !657)
!659 = !DILocation(line: 313, column: 14, scope: !657)
!660 = !DILocation(line: 313, column: 17, scope: !657)
!661 = !DILocation(line: 313, column: 19, scope: !657)
!662 = !DILocation(line: 313, column: 24, scope: !657)
!663 = !DILocation(line: 313, column: 27, scope: !657)
!664 = !DILocation(line: 313, column: 34, scope: !657)
!665 = !DILocation(line: 314, column: 5, scope: !657)
!666 = !DILocation(line: 316, column: 3, scope: !604)
!667 = !DILocation(line: 316, column: 10, scope: !604)
!668 = !DILocation(line: 316, column: 25, scope: !604)
!669 = !DILocation(line: 317, column: 37, scope: !604)
!670 = !DILocation(line: 317, column: 3, scope: !604)
!671 = !DILocation(line: 317, column: 10, scope: !604)
!672 = !DILocation(line: 317, column: 22, scope: !604)
!673 = !DILocation(line: 318, column: 38, scope: !604)
!674 = !DILocation(line: 318, column: 3, scope: !604)
!675 = !DILocation(line: 318, column: 10, scope: !604)
!676 = !DILocation(line: 318, column: 23, scope: !604)
!677 = !DILocation(line: 321, column: 17, scope: !604)
!678 = !DILocation(line: 322, column: 18, scope: !604)
!679 = !DILocation(line: 323, column: 16, scope: !604)
!680 = !DILocation(line: 325, column: 11, scope: !604)
!681 = !DILocation(line: 325, column: 3, scope: !604)
!682 = !DILocation(line: 327, column: 5, scope: !683)
!683 = distinct !DILexicalBlock(scope: !604, file: !1, line: 325, column: 14)
!684 = !DILocation(line: 327, column: 12, scope: !683)
!685 = !DILocation(line: 327, column: 29, scope: !683)
!686 = !DILocation(line: 328, column: 5, scope: !683)
!687 = !DILocation(line: 328, column: 12, scope: !683)
!688 = !DILocation(line: 328, column: 27, scope: !683)
!689 = !DILocation(line: 329, column: 5, scope: !683)
!690 = !DILocation(line: 330, column: 5, scope: !683)
!691 = !DILocation(line: 330, column: 13, scope: !683)
!692 = !DILocation(line: 330, column: 17, scope: !683)
!693 = !DILocation(line: 330, column: 32, scope: !683)
!694 = !DILocation(line: 331, column: 19, scope: !683)
!695 = !DILocation(line: 332, column: 5, scope: !683)
!696 = !DILocation(line: 335, column: 5, scope: !683)
!697 = !DILocation(line: 335, column: 12, scope: !683)
!698 = !DILocation(line: 335, column: 29, scope: !683)
!699 = !DILocation(line: 336, column: 5, scope: !683)
!700 = !DILocation(line: 336, column: 12, scope: !683)
!701 = !DILocation(line: 336, column: 27, scope: !683)
!702 = !DILocation(line: 337, column: 5, scope: !683)
!703 = !DILocation(line: 338, column: 5, scope: !683)
!704 = !DILocation(line: 338, column: 13, scope: !683)
!705 = !DILocation(line: 338, column: 17, scope: !683)
!706 = !DILocation(line: 338, column: 32, scope: !683)
!707 = !DILocation(line: 339, column: 19, scope: !683)
!708 = !DILocation(line: 340, column: 5, scope: !683)
!709 = !DILocation(line: 343, column: 5, scope: !683)
!710 = !DILocation(line: 343, column: 12, scope: !683)
!711 = !DILocation(line: 343, column: 29, scope: !683)
!712 = !DILocation(line: 344, column: 5, scope: !683)
!713 = !DILocation(line: 344, column: 12, scope: !683)
!714 = !DILocation(line: 344, column: 27, scope: !683)
!715 = !DILocation(line: 345, column: 5, scope: !683)
!716 = !DILocation(line: 346, column: 9, scope: !717)
!717 = distinct !DILexicalBlock(scope: !683, file: !1, line: 346, column: 9)
!718 = !DILocation(line: 346, column: 16, scope: !717)
!719 = !DILocation(line: 347, column: 7, scope: !720)
!720 = distinct !DILexicalBlock(scope: !717, file: !1, line: 346, column: 23)
!721 = !DILocation(line: 347, column: 15, scope: !720)
!722 = !DILocation(line: 347, column: 19, scope: !720)
!723 = !DILocation(line: 347, column: 34, scope: !720)
!724 = !DILocation(line: 348, column: 5, scope: !720)
!725 = !DILocation(line: 348, column: 16, scope: !726)
!726 = distinct !DILexicalBlock(scope: !717, file: !1, line: 348, column: 16)
!727 = !DILocation(line: 348, column: 23, scope: !726)
!728 = !DILocation(line: 348, column: 37, scope: !726)
!729 = !DILocation(line: 349, column: 7, scope: !730)
!730 = distinct !DILexicalBlock(scope: !726, file: !1, line: 348, column: 75)
!731 = !DILocation(line: 349, column: 15, scope: !730)
!732 = !DILocation(line: 349, column: 19, scope: !730)
!733 = !DILocation(line: 349, column: 34, scope: !730)
!734 = !DILocation(line: 350, column: 22, scope: !730)
!735 = !DILocation(line: 351, column: 20, scope: !730)
!736 = !DILocation(line: 352, column: 5, scope: !730)
!737 = !DILocation(line: 353, column: 7, scope: !738)
!738 = distinct !DILexicalBlock(scope: !726, file: !1, line: 352, column: 12)
!739 = !DILocation(line: 353, column: 15, scope: !738)
!740 = !DILocation(line: 353, column: 19, scope: !738)
!741 = !DILocation(line: 353, column: 34, scope: !738)
!742 = !DILocation(line: 355, column: 5, scope: !683)
!743 = !DILocation(line: 358, column: 5, scope: !683)
!744 = !DILocation(line: 358, column: 12, scope: !683)
!745 = !DILocation(line: 358, column: 29, scope: !683)
!746 = !DILocation(line: 359, column: 5, scope: !683)
!747 = !DILocation(line: 359, column: 12, scope: !683)
!748 = !DILocation(line: 359, column: 27, scope: !683)
!749 = !DILocation(line: 360, column: 5, scope: !683)
!750 = !DILocation(line: 361, column: 9, scope: !751)
!751 = distinct !DILexicalBlock(scope: !683, file: !1, line: 361, column: 9)
!752 = !DILocation(line: 361, column: 16, scope: !751)
!753 = !DILocation(line: 362, column: 7, scope: !754)
!754 = distinct !DILexicalBlock(scope: !751, file: !1, line: 361, column: 23)
!755 = !DILocation(line: 362, column: 15, scope: !754)
!756 = !DILocation(line: 362, column: 19, scope: !754)
!757 = !DILocation(line: 362, column: 34, scope: !754)
!758 = !DILocation(line: 363, column: 5, scope: !754)
!759 = !DILocation(line: 363, column: 16, scope: !760)
!760 = distinct !DILexicalBlock(scope: !751, file: !1, line: 363, column: 16)
!761 = !DILocation(line: 363, column: 23, scope: !760)
!762 = !DILocation(line: 363, column: 37, scope: !760)
!763 = !DILocation(line: 364, column: 7, scope: !764)
!764 = distinct !DILexicalBlock(scope: !760, file: !1, line: 363, column: 75)
!765 = !DILocation(line: 364, column: 15, scope: !764)
!766 = !DILocation(line: 364, column: 19, scope: !764)
!767 = !DILocation(line: 364, column: 34, scope: !764)
!768 = !DILocation(line: 365, column: 22, scope: !764)
!769 = !DILocation(line: 366, column: 20, scope: !764)
!770 = !DILocation(line: 367, column: 5, scope: !764)
!771 = !DILocation(line: 368, column: 7, scope: !772)
!772 = distinct !DILexicalBlock(scope: !760, file: !1, line: 367, column: 12)
!773 = !DILocation(line: 368, column: 15, scope: !772)
!774 = !DILocation(line: 368, column: 19, scope: !772)
!775 = !DILocation(line: 368, column: 34, scope: !772)
!776 = !DILocation(line: 370, column: 5, scope: !683)
!777 = !DILocation(line: 373, column: 5, scope: !683)
!778 = !DILocation(line: 374, column: 5, scope: !683)
!779 = !DILocation(line: 378, column: 7, scope: !780)
!780 = distinct !DILexicalBlock(scope: !604, file: !1, line: 378, column: 7)
!781 = !DILocation(line: 379, column: 37, scope: !782)
!782 = distinct !DILexicalBlock(scope: !780, file: !1, line: 378, column: 22)
!783 = !DILocation(line: 379, column: 28, scope: !782)
!784 = !DILocation(line: 379, column: 41, scope: !782)
!785 = !DILocation(line: 379, column: 48, scope: !782)
!786 = !DILocation(line: 379, column: 39, scope: !782)
!787 = !DILocation(line: 380, column: 9, scope: !782)
!788 = !DILocation(line: 380, column: 15, scope: !782)
!789 = !DILocation(line: 380, column: 8, scope: !782)
!790 = !DILocation(line: 379, column: 65, scope: !782)
!791 = !DILocation(line: 379, column: 5, scope: !782)
!792 = !DILocation(line: 379, column: 13, scope: !782)
!793 = !DILocation(line: 379, column: 26, scope: !782)
!794 = !DILocation(line: 382, column: 9, scope: !782)
!795 = !DILocation(line: 382, column: 16, scope: !782)
!796 = !DILocation(line: 382, column: 21, scope: !782)
!797 = !DILocation(line: 382, column: 50, scope: !782)
!798 = !DILocation(line: 383, column: 7, scope: !782)
!799 = !DILocation(line: 383, column: 15, scope: !782)
!800 = !DILocation(line: 382, column: 7, scope: !782)
!801 = !DILocation(line: 381, column: 5, scope: !782)
!802 = !DILocation(line: 381, column: 13, scope: !782)
!803 = !DILocation(line: 381, column: 22, scope: !782)
!804 = !DILocation(line: 384, column: 3, scope: !782)
!805 = !DILocation(line: 387, column: 7, scope: !806)
!806 = distinct !DILexicalBlock(scope: !604, file: !1, line: 387, column: 7)
!807 = !DILocation(line: 391, column: 33, scope: !808)
!808 = distinct !DILexicalBlock(scope: !806, file: !1, line: 387, column: 23)
!809 = !DILocation(line: 391, column: 41, scope: !808)
!810 = !DILocation(line: 391, column: 5, scope: !808)
!811 = !DILocation(line: 391, column: 13, scope: !808)
!812 = !DILocation(line: 391, column: 20, scope: !808)
!813 = !DILocation(line: 392, column: 28, scope: !808)
!814 = !DILocation(line: 392, column: 36, scope: !808)
!815 = !DILocation(line: 392, column: 5, scope: !808)
!816 = !DILocation(line: 392, column: 13, scope: !808)
!817 = !DILocation(line: 392, column: 17, scope: !808)
!818 = !DILocation(line: 392, column: 24, scope: !808)
!819 = !DILocation(line: 393, column: 5, scope: !808)
!820 = !DILocation(line: 393, column: 13, scope: !808)
!821 = !DILocation(line: 393, column: 17, scope: !808)
!822 = !DILocation(line: 393, column: 31, scope: !808)
!823 = !DILocation(line: 394, column: 3, scope: !808)
!824 = !DILocation(line: 396, column: 28, scope: !825)
!825 = distinct !DILexicalBlock(scope: !806, file: !1, line: 394, column: 10)
!826 = !DILocation(line: 396, column: 35, scope: !825)
!827 = !DILocation(line: 396, column: 40, scope: !825)
!828 = !DILocation(line: 397, column: 23, scope: !825)
!829 = !DILocation(line: 398, column: 21, scope: !825)
!830 = !DILocation(line: 398, column: 25, scope: !825)
!831 = !DILocation(line: 398, column: 32, scope: !825)
!832 = !DILocation(line: 398, column: 23, scope: !825)
!833 = !DILocation(line: 396, column: 26, scope: !825)
!834 = !DILocation(line: 396, column: 5, scope: !825)
!835 = !DILocation(line: 396, column: 13, scope: !825)
!836 = !DILocation(line: 396, column: 17, scope: !825)
!837 = !DILocation(line: 396, column: 24, scope: !825)
!838 = !DILocation(line: 399, column: 5, scope: !825)
!839 = !DILocation(line: 399, column: 13, scope: !825)
!840 = !DILocation(line: 399, column: 17, scope: !825)
!841 = !DILocation(line: 399, column: 31, scope: !825)
!842 = !DILocation(line: 403, column: 7, scope: !843)
!843 = distinct !DILexicalBlock(scope: !604, file: !1, line: 403, column: 7)
!844 = !DILocalVariable(name: "val", scope: !845, file: !1, line: 404, type: !571)
!845 = distinct !DILexicalBlock(scope: !843, file: !1, line: 403, column: 21)
!846 = !DILocation(line: 404, column: 11, scope: !845)
!847 = !DILocalVariable(name: "half_maxval", scope: !845, file: !1, line: 404, type: !571)
!848 = !DILocation(line: 404, column: 16, scope: !845)
!849 = !DILocation(line: 408, column: 9, scope: !845)
!850 = !DILocation(line: 408, column: 16, scope: !845)
!851 = !DILocation(line: 408, column: 21, scope: !845)
!852 = !DILocation(line: 408, column: 50, scope: !845)
!853 = !DILocation(line: 409, column: 25, scope: !845)
!854 = !DILocation(line: 409, column: 18, scope: !845)
!855 = !DILocation(line: 409, column: 32, scope: !845)
!856 = !DILocation(line: 409, column: 38, scope: !845)
!857 = !DILocation(line: 408, column: 7, scope: !845)
!858 = !DILocation(line: 407, column: 5, scope: !845)
!859 = !DILocation(line: 407, column: 13, scope: !845)
!860 = !DILocation(line: 407, column: 21, scope: !845)
!861 = !DILocation(line: 410, column: 19, scope: !845)
!862 = !DILocation(line: 410, column: 26, scope: !845)
!863 = !DILocation(line: 410, column: 17, scope: !845)
!864 = !DILocation(line: 411, column: 14, scope: !865)
!865 = distinct !DILexicalBlock(scope: !845, file: !1, line: 411, column: 5)
!866 = !DILocation(line: 411, column: 10, scope: !865)
!867 = !DILocation(line: 411, column: 19, scope: !868)
!868 = distinct !DILexicalBlock(scope: !865, file: !1, line: 411, column: 5)
!869 = !DILocation(line: 411, column: 34, scope: !868)
!870 = !DILocation(line: 411, column: 26, scope: !868)
!871 = !DILocation(line: 411, column: 23, scope: !868)
!872 = !DILocation(line: 411, column: 5, scope: !865)
!873 = !DILocation(line: 413, column: 42, scope: !874)
!874 = distinct !DILexicalBlock(scope: !868, file: !1, line: 411, column: 49)
!875 = !DILocation(line: 413, column: 45, scope: !874)
!876 = !DILocation(line: 413, column: 59, scope: !874)
!877 = !DILocation(line: 413, column: 57, scope: !874)
!878 = !DILocation(line: 413, column: 72, scope: !874)
!879 = !DILocation(line: 413, column: 71, scope: !874)
!880 = !DILocation(line: 413, column: 30, scope: !874)
!881 = !DILocation(line: 413, column: 7, scope: !874)
!882 = !DILocation(line: 413, column: 15, scope: !874)
!883 = !DILocation(line: 413, column: 23, scope: !874)
!884 = !DILocation(line: 413, column: 28, scope: !874)
!885 = !DILocation(line: 414, column: 5, scope: !874)
!886 = !DILocation(line: 411, column: 45, scope: !868)
!887 = !DILocation(line: 411, column: 5, scope: !868)
!888 = distinct !{!888, !872, !889, !890}
!889 = !DILocation(line: 414, column: 5, scope: !865)
!890 = !{!"llvm.loop.mustprogress"}
!891 = !DILocation(line: 415, column: 3, scope: !845)
!892 = !DILocation(line: 416, column: 1, scope: !604)
!893 = distinct !DISubprogram(name: "finish_input_ppm", scope: !1, file: !1, line: 424, type: !201, scopeLine: 425, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !583)
!894 = !DILocalVariable(name: "cinfo", arg: 1, scope: !893, file: !1, line: 424, type: !203)
!895 = !DILocation(line: 424, column: 34, scope: !893)
!896 = !DILocalVariable(name: "sinfo", arg: 2, scope: !893, file: !1, line: 424, type: !501)
!897 = !DILocation(line: 424, column: 58, scope: !893)
!898 = !DILocation(line: 427, column: 1, scope: !893)
!899 = distinct !DISubprogram(name: "read_pbm_integer", scope: !1, file: !1, line: 101, type: !900, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !583)
!900 = !DISubroutineType(types: !901)
!901 = !{!5, !203, !509}
!902 = !DILocalVariable(name: "cinfo", arg: 1, scope: !899, file: !1, line: 101, type: !203)
!903 = !DILocation(line: 101, column: 34, scope: !899)
!904 = !DILocalVariable(name: "infile", arg: 2, scope: !899, file: !1, line: 101, type: !509)
!905 = !DILocation(line: 101, column: 48, scope: !899)
!906 = !DILocalVariable(name: "ch", scope: !899, file: !1, line: 107, type: !229)
!907 = !DILocation(line: 107, column: 16, scope: !899)
!908 = !DILocalVariable(name: "val", scope: !899, file: !1, line: 108, type: !5)
!909 = !DILocation(line: 108, column: 25, scope: !899)
!910 = !DILocation(line: 111, column: 3, scope: !899)
!911 = !DILocation(line: 112, column: 19, scope: !912)
!912 = distinct !DILexicalBlock(scope: !899, file: !1, line: 111, column: 6)
!913 = !DILocation(line: 112, column: 10, scope: !912)
!914 = !DILocation(line: 112, column: 8, scope: !912)
!915 = !DILocation(line: 113, column: 9, scope: !916)
!916 = distinct !DILexicalBlock(scope: !912, file: !1, line: 113, column: 9)
!917 = !DILocation(line: 113, column: 12, scope: !916)
!918 = !DILocation(line: 114, column: 7, scope: !916)
!919 = !DILocation(line: 115, column: 3, scope: !912)
!920 = !DILocation(line: 115, column: 12, scope: !899)
!921 = !DILocation(line: 115, column: 15, scope: !899)
!922 = !DILocation(line: 115, column: 22, scope: !899)
!923 = !DILocation(line: 115, column: 25, scope: !899)
!924 = !DILocation(line: 115, column: 28, scope: !899)
!925 = !DILocation(line: 115, column: 36, scope: !899)
!926 = !DILocation(line: 115, column: 39, scope: !899)
!927 = !DILocation(line: 115, column: 42, scope: !899)
!928 = !DILocation(line: 115, column: 50, scope: !899)
!929 = !DILocation(line: 115, column: 53, scope: !899)
!930 = !DILocation(line: 115, column: 56, scope: !899)
!931 = distinct !{!931, !910, !932, !890}
!932 = !DILocation(line: 115, column: 63, scope: !899)
!933 = !DILocation(line: 117, column: 7, scope: !934)
!934 = distinct !DILexicalBlock(scope: !899, file: !1, line: 117, column: 7)
!935 = !DILocation(line: 117, column: 10, scope: !934)
!936 = !DILocation(line: 117, column: 16, scope: !934)
!937 = !DILocation(line: 117, column: 19, scope: !934)
!938 = !DILocation(line: 117, column: 22, scope: !934)
!939 = !DILocation(line: 118, column: 5, scope: !934)
!940 = !DILocation(line: 120, column: 9, scope: !899)
!941 = !DILocation(line: 120, column: 12, scope: !899)
!942 = !DILocation(line: 120, column: 7, scope: !899)
!943 = !DILocation(line: 121, column: 3, scope: !899)
!944 = !DILocation(line: 121, column: 25, scope: !899)
!945 = !DILocation(line: 121, column: 16, scope: !899)
!946 = !DILocation(line: 121, column: 14, scope: !899)
!947 = !DILocation(line: 121, column: 34, scope: !899)
!948 = !DILocation(line: 121, column: 41, scope: !899)
!949 = !DILocation(line: 121, column: 44, scope: !899)
!950 = !DILocation(line: 121, column: 47, scope: !899)
!951 = !DILocation(line: 0, scope: !899)
!952 = !DILocation(line: 122, column: 9, scope: !953)
!953 = distinct !DILexicalBlock(scope: !899, file: !1, line: 121, column: 55)
!954 = !DILocation(line: 123, column: 12, scope: !953)
!955 = !DILocation(line: 123, column: 15, scope: !953)
!956 = !DILocation(line: 123, column: 9, scope: !953)
!957 = distinct !{!957, !943, !958, !890}
!958 = !DILocation(line: 124, column: 3, scope: !899)
!959 = !DILocation(line: 125, column: 10, scope: !899)
!960 = !DILocation(line: 125, column: 3, scope: !899)
!961 = distinct !DISubprogram(name: "get_text_gray_row", scope: !1, file: !1, line: 141, type: !505, scopeLine: 143, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !583)
!962 = !DILocalVariable(name: "cinfo", arg: 1, scope: !961, file: !1, line: 141, type: !203)
!963 = !DILocation(line: 141, column: 35, scope: !961)
!964 = !DILocalVariable(name: "sinfo", arg: 2, scope: !961, file: !1, line: 141, type: !501)
!965 = !DILocation(line: 141, column: 59, scope: !961)
!966 = !DILocalVariable(name: "source", scope: !961, file: !1, line: 144, type: !190)
!967 = !DILocation(line: 144, column: 18, scope: !961)
!968 = !DILocation(line: 144, column: 44, scope: !961)
!969 = !DILocalVariable(name: "infile", scope: !961, file: !1, line: 145, type: !509)
!970 = !DILocation(line: 145, column: 10, scope: !961)
!971 = !DILocation(line: 145, column: 19, scope: !961)
!972 = !DILocation(line: 145, column: 27, scope: !961)
!973 = !DILocation(line: 145, column: 31, scope: !961)
!974 = !DILocalVariable(name: "ptr", scope: !961, file: !1, line: 146, type: !240)
!975 = !DILocation(line: 146, column: 21, scope: !961)
!976 = !DILocalVariable(name: "rescale", scope: !961, file: !1, line: 147, type: !241)
!977 = !DILocation(line: 147, column: 21, scope: !961)
!978 = !DILocation(line: 147, column: 31, scope: !961)
!979 = !DILocation(line: 147, column: 39, scope: !961)
!980 = !DILocalVariable(name: "col", scope: !961, file: !1, line: 148, type: !245)
!981 = !DILocation(line: 148, column: 14, scope: !961)
!982 = !DILocation(line: 150, column: 9, scope: !961)
!983 = !DILocation(line: 150, column: 17, scope: !961)
!984 = !DILocation(line: 150, column: 21, scope: !961)
!985 = !DILocation(line: 150, column: 7, scope: !961)
!986 = !DILocation(line: 151, column: 14, scope: !987)
!987 = distinct !DILexicalBlock(scope: !961, file: !1, line: 151, column: 3)
!988 = !DILocation(line: 151, column: 21, scope: !987)
!989 = !DILocation(line: 151, column: 12, scope: !987)
!990 = !DILocation(line: 151, column: 8, scope: !987)
!991 = !DILocation(line: 151, column: 34, scope: !992)
!992 = distinct !DILexicalBlock(scope: !987, file: !1, line: 151, column: 3)
!993 = !DILocation(line: 151, column: 38, scope: !992)
!994 = !DILocation(line: 151, column: 3, scope: !987)
!995 = !DILocation(line: 152, column: 14, scope: !996)
!996 = distinct !DILexicalBlock(scope: !992, file: !1, line: 151, column: 50)
!997 = !DILocation(line: 152, column: 39, scope: !996)
!998 = !DILocation(line: 152, column: 46, scope: !996)
!999 = !DILocation(line: 152, column: 22, scope: !996)
!1000 = !DILocation(line: 152, column: 9, scope: !996)
!1001 = !DILocation(line: 152, column: 12, scope: !996)
!1002 = !DILocation(line: 153, column: 3, scope: !996)
!1003 = !DILocation(line: 151, column: 46, scope: !992)
!1004 = !DILocation(line: 151, column: 3, scope: !992)
!1005 = distinct !{!1005, !994, !1006, !890}
!1006 = !DILocation(line: 153, column: 3, scope: !987)
!1007 = !DILocation(line: 154, column: 3, scope: !961)
!1008 = distinct !DISubprogram(name: "get_text_rgb_row", scope: !1, file: !1, line: 159, type: !505, scopeLine: 161, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !583)
!1009 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1008, file: !1, line: 159, type: !203)
!1010 = !DILocation(line: 159, column: 34, scope: !1008)
!1011 = !DILocalVariable(name: "sinfo", arg: 2, scope: !1008, file: !1, line: 159, type: !501)
!1012 = !DILocation(line: 159, column: 58, scope: !1008)
!1013 = !DILocalVariable(name: "source", scope: !1008, file: !1, line: 162, type: !190)
!1014 = !DILocation(line: 162, column: 18, scope: !1008)
!1015 = !DILocation(line: 162, column: 44, scope: !1008)
!1016 = !DILocalVariable(name: "infile", scope: !1008, file: !1, line: 163, type: !509)
!1017 = !DILocation(line: 163, column: 10, scope: !1008)
!1018 = !DILocation(line: 163, column: 19, scope: !1008)
!1019 = !DILocation(line: 163, column: 27, scope: !1008)
!1020 = !DILocation(line: 163, column: 31, scope: !1008)
!1021 = !DILocalVariable(name: "ptr", scope: !1008, file: !1, line: 164, type: !240)
!1022 = !DILocation(line: 164, column: 21, scope: !1008)
!1023 = !DILocalVariable(name: "rescale", scope: !1008, file: !1, line: 165, type: !241)
!1024 = !DILocation(line: 165, column: 21, scope: !1008)
!1025 = !DILocation(line: 165, column: 31, scope: !1008)
!1026 = !DILocation(line: 165, column: 39, scope: !1008)
!1027 = !DILocalVariable(name: "col", scope: !1008, file: !1, line: 166, type: !245)
!1028 = !DILocation(line: 166, column: 14, scope: !1008)
!1029 = !DILocation(line: 168, column: 9, scope: !1008)
!1030 = !DILocation(line: 168, column: 17, scope: !1008)
!1031 = !DILocation(line: 168, column: 21, scope: !1008)
!1032 = !DILocation(line: 168, column: 7, scope: !1008)
!1033 = !DILocation(line: 169, column: 14, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !1008, file: !1, line: 169, column: 3)
!1035 = !DILocation(line: 169, column: 21, scope: !1034)
!1036 = !DILocation(line: 169, column: 12, scope: !1034)
!1037 = !DILocation(line: 169, column: 8, scope: !1034)
!1038 = !DILocation(line: 169, column: 34, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !1034, file: !1, line: 169, column: 3)
!1040 = !DILocation(line: 169, column: 38, scope: !1039)
!1041 = !DILocation(line: 169, column: 3, scope: !1034)
!1042 = !DILocation(line: 170, column: 14, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !1039, file: !1, line: 169, column: 50)
!1044 = !DILocation(line: 170, column: 39, scope: !1043)
!1045 = !DILocation(line: 170, column: 46, scope: !1043)
!1046 = !DILocation(line: 170, column: 22, scope: !1043)
!1047 = !DILocation(line: 170, column: 9, scope: !1043)
!1048 = !DILocation(line: 170, column: 12, scope: !1043)
!1049 = !DILocation(line: 171, column: 14, scope: !1043)
!1050 = !DILocation(line: 171, column: 39, scope: !1043)
!1051 = !DILocation(line: 171, column: 46, scope: !1043)
!1052 = !DILocation(line: 171, column: 22, scope: !1043)
!1053 = !DILocation(line: 171, column: 9, scope: !1043)
!1054 = !DILocation(line: 171, column: 12, scope: !1043)
!1055 = !DILocation(line: 172, column: 14, scope: !1043)
!1056 = !DILocation(line: 172, column: 39, scope: !1043)
!1057 = !DILocation(line: 172, column: 46, scope: !1043)
!1058 = !DILocation(line: 172, column: 22, scope: !1043)
!1059 = !DILocation(line: 172, column: 9, scope: !1043)
!1060 = !DILocation(line: 172, column: 12, scope: !1043)
!1061 = !DILocation(line: 173, column: 3, scope: !1043)
!1062 = !DILocation(line: 169, column: 46, scope: !1039)
!1063 = !DILocation(line: 169, column: 3, scope: !1039)
!1064 = distinct !{!1064, !1041, !1065, !890}
!1065 = !DILocation(line: 173, column: 3, scope: !1034)
!1066 = !DILocation(line: 174, column: 3, scope: !1008)
!1067 = distinct !DISubprogram(name: "get_word_gray_row", scope: !1, file: !1, line: 238, type: !505, scopeLine: 240, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !583)
!1068 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1067, file: !1, line: 238, type: !203)
!1069 = !DILocation(line: 238, column: 35, scope: !1067)
!1070 = !DILocalVariable(name: "sinfo", arg: 2, scope: !1067, file: !1, line: 238, type: !501)
!1071 = !DILocation(line: 238, column: 59, scope: !1067)
!1072 = !DILocalVariable(name: "source", scope: !1067, file: !1, line: 241, type: !190)
!1073 = !DILocation(line: 241, column: 18, scope: !1067)
!1074 = !DILocation(line: 241, column: 44, scope: !1067)
!1075 = !DILocalVariable(name: "ptr", scope: !1067, file: !1, line: 242, type: !240)
!1076 = !DILocation(line: 242, column: 21, scope: !1067)
!1077 = !DILocalVariable(name: "bufferptr", scope: !1067, file: !1, line: 243, type: !566)
!1078 = !DILocation(line: 243, column: 21, scope: !1067)
!1079 = !DILocalVariable(name: "rescale", scope: !1067, file: !1, line: 244, type: !241)
!1080 = !DILocation(line: 244, column: 21, scope: !1067)
!1081 = !DILocation(line: 244, column: 31, scope: !1067)
!1082 = !DILocation(line: 244, column: 39, scope: !1067)
!1083 = !DILocalVariable(name: "col", scope: !1067, file: !1, line: 245, type: !245)
!1084 = !DILocation(line: 245, column: 14, scope: !1067)
!1085 = !DILocation(line: 247, column: 9, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !1067, file: !1, line: 247, column: 7)
!1087 = !DILocation(line: 247, column: 7, scope: !1086)
!1088 = !DILocation(line: 248, column: 5, scope: !1086)
!1089 = !DILocation(line: 249, column: 9, scope: !1067)
!1090 = !DILocation(line: 249, column: 17, scope: !1067)
!1091 = !DILocation(line: 249, column: 21, scope: !1067)
!1092 = !DILocation(line: 249, column: 7, scope: !1067)
!1093 = !DILocation(line: 250, column: 15, scope: !1067)
!1094 = !DILocation(line: 250, column: 23, scope: !1067)
!1095 = !DILocation(line: 250, column: 13, scope: !1067)
!1096 = !DILocation(line: 251, column: 14, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !1067, file: !1, line: 251, column: 3)
!1098 = !DILocation(line: 251, column: 21, scope: !1097)
!1099 = !DILocation(line: 251, column: 12, scope: !1097)
!1100 = !DILocation(line: 251, column: 8, scope: !1097)
!1101 = !DILocation(line: 251, column: 34, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1097, file: !1, line: 251, column: 3)
!1103 = !DILocation(line: 251, column: 38, scope: !1102)
!1104 = !DILocation(line: 251, column: 3, scope: !1097)
!1105 = !DILocalVariable(name: "temp", scope: !1106, file: !1, line: 252, type: !229)
!1106 = distinct !DILexicalBlock(scope: !1102, file: !1, line: 251, column: 50)
!1107 = !DILocation(line: 252, column: 18, scope: !1106)
!1108 = !DILocation(line: 253, column: 13, scope: !1106)
!1109 = !DILocation(line: 253, column: 11, scope: !1106)
!1110 = !DILocation(line: 254, column: 13, scope: !1106)
!1111 = !DILocation(line: 254, column: 31, scope: !1106)
!1112 = !DILocation(line: 254, column: 10, scope: !1106)
!1113 = !DILocation(line: 255, column: 14, scope: !1106)
!1114 = !DILocation(line: 255, column: 22, scope: !1106)
!1115 = !DILocation(line: 255, column: 9, scope: !1106)
!1116 = !DILocation(line: 255, column: 12, scope: !1106)
!1117 = !DILocation(line: 256, column: 3, scope: !1106)
!1118 = !DILocation(line: 251, column: 46, scope: !1102)
!1119 = !DILocation(line: 251, column: 3, scope: !1102)
!1120 = distinct !{!1120, !1104, !1121, !890}
!1121 = !DILocation(line: 256, column: 3, scope: !1097)
!1122 = !DILocation(line: 257, column: 3, scope: !1067)
!1123 = distinct !DISubprogram(name: "get_raw_row", scope: !1, file: !1, line: 223, type: !505, scopeLine: 228, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !583)
!1124 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1123, file: !1, line: 223, type: !203)
!1125 = !DILocation(line: 223, column: 29, scope: !1123)
!1126 = !DILocalVariable(name: "sinfo", arg: 2, scope: !1123, file: !1, line: 223, type: !501)
!1127 = !DILocation(line: 223, column: 53, scope: !1123)
!1128 = !DILocalVariable(name: "source", scope: !1123, file: !1, line: 229, type: !190)
!1129 = !DILocation(line: 229, column: 18, scope: !1123)
!1130 = !DILocation(line: 229, column: 44, scope: !1123)
!1131 = !DILocation(line: 231, column: 9, scope: !1132)
!1132 = distinct !DILexicalBlock(scope: !1123, file: !1, line: 231, column: 7)
!1133 = !DILocation(line: 231, column: 7, scope: !1132)
!1134 = !DILocation(line: 232, column: 5, scope: !1132)
!1135 = !DILocation(line: 233, column: 3, scope: !1123)
!1136 = distinct !DISubprogram(name: "get_scaled_gray_row", scope: !1, file: !1, line: 179, type: !505, scopeLine: 181, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !583)
!1137 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1136, file: !1, line: 179, type: !203)
!1138 = !DILocation(line: 179, column: 37, scope: !1136)
!1139 = !DILocalVariable(name: "sinfo", arg: 2, scope: !1136, file: !1, line: 179, type: !501)
!1140 = !DILocation(line: 179, column: 61, scope: !1136)
!1141 = !DILocalVariable(name: "source", scope: !1136, file: !1, line: 182, type: !190)
!1142 = !DILocation(line: 182, column: 18, scope: !1136)
!1143 = !DILocation(line: 182, column: 44, scope: !1136)
!1144 = !DILocalVariable(name: "ptr", scope: !1136, file: !1, line: 183, type: !240)
!1145 = !DILocation(line: 183, column: 21, scope: !1136)
!1146 = !DILocalVariable(name: "bufferptr", scope: !1136, file: !1, line: 184, type: !566)
!1147 = !DILocation(line: 184, column: 21, scope: !1136)
!1148 = !DILocalVariable(name: "rescale", scope: !1136, file: !1, line: 185, type: !241)
!1149 = !DILocation(line: 185, column: 21, scope: !1136)
!1150 = !DILocation(line: 185, column: 31, scope: !1136)
!1151 = !DILocation(line: 185, column: 39, scope: !1136)
!1152 = !DILocalVariable(name: "col", scope: !1136, file: !1, line: 186, type: !245)
!1153 = !DILocation(line: 186, column: 14, scope: !1136)
!1154 = !DILocation(line: 188, column: 9, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1136, file: !1, line: 188, column: 7)
!1156 = !DILocation(line: 188, column: 7, scope: !1155)
!1157 = !DILocation(line: 189, column: 5, scope: !1155)
!1158 = !DILocation(line: 190, column: 9, scope: !1136)
!1159 = !DILocation(line: 190, column: 17, scope: !1136)
!1160 = !DILocation(line: 190, column: 21, scope: !1136)
!1161 = !DILocation(line: 190, column: 7, scope: !1136)
!1162 = !DILocation(line: 191, column: 15, scope: !1136)
!1163 = !DILocation(line: 191, column: 23, scope: !1136)
!1164 = !DILocation(line: 191, column: 13, scope: !1136)
!1165 = !DILocation(line: 192, column: 14, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !1136, file: !1, line: 192, column: 3)
!1167 = !DILocation(line: 192, column: 21, scope: !1166)
!1168 = !DILocation(line: 192, column: 12, scope: !1166)
!1169 = !DILocation(line: 192, column: 8, scope: !1166)
!1170 = !DILocation(line: 192, column: 34, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !1166, file: !1, line: 192, column: 3)
!1172 = !DILocation(line: 192, column: 38, scope: !1171)
!1173 = !DILocation(line: 192, column: 3, scope: !1166)
!1174 = !DILocation(line: 193, column: 14, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !1171, file: !1, line: 192, column: 50)
!1176 = !DILocation(line: 193, column: 22, scope: !1175)
!1177 = !DILocation(line: 193, column: 9, scope: !1175)
!1178 = !DILocation(line: 193, column: 12, scope: !1175)
!1179 = !DILocation(line: 194, column: 3, scope: !1175)
!1180 = !DILocation(line: 192, column: 46, scope: !1171)
!1181 = !DILocation(line: 192, column: 3, scope: !1171)
!1182 = distinct !{!1182, !1173, !1183, !890}
!1183 = !DILocation(line: 194, column: 3, scope: !1166)
!1184 = !DILocation(line: 195, column: 3, scope: !1136)
!1185 = distinct !DISubprogram(name: "get_word_rgb_row", scope: !1, file: !1, line: 262, type: !505, scopeLine: 264, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !583)
!1186 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1185, file: !1, line: 262, type: !203)
!1187 = !DILocation(line: 262, column: 34, scope: !1185)
!1188 = !DILocalVariable(name: "sinfo", arg: 2, scope: !1185, file: !1, line: 262, type: !501)
!1189 = !DILocation(line: 262, column: 58, scope: !1185)
!1190 = !DILocalVariable(name: "source", scope: !1185, file: !1, line: 265, type: !190)
!1191 = !DILocation(line: 265, column: 18, scope: !1185)
!1192 = !DILocation(line: 265, column: 44, scope: !1185)
!1193 = !DILocalVariable(name: "ptr", scope: !1185, file: !1, line: 266, type: !240)
!1194 = !DILocation(line: 266, column: 21, scope: !1185)
!1195 = !DILocalVariable(name: "bufferptr", scope: !1185, file: !1, line: 267, type: !566)
!1196 = !DILocation(line: 267, column: 21, scope: !1185)
!1197 = !DILocalVariable(name: "rescale", scope: !1185, file: !1, line: 268, type: !241)
!1198 = !DILocation(line: 268, column: 21, scope: !1185)
!1199 = !DILocation(line: 268, column: 31, scope: !1185)
!1200 = !DILocation(line: 268, column: 39, scope: !1185)
!1201 = !DILocalVariable(name: "col", scope: !1185, file: !1, line: 269, type: !245)
!1202 = !DILocation(line: 269, column: 14, scope: !1185)
!1203 = !DILocation(line: 271, column: 9, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1185, file: !1, line: 271, column: 7)
!1205 = !DILocation(line: 271, column: 7, scope: !1204)
!1206 = !DILocation(line: 272, column: 5, scope: !1204)
!1207 = !DILocation(line: 273, column: 9, scope: !1185)
!1208 = !DILocation(line: 273, column: 17, scope: !1185)
!1209 = !DILocation(line: 273, column: 21, scope: !1185)
!1210 = !DILocation(line: 273, column: 7, scope: !1185)
!1211 = !DILocation(line: 274, column: 15, scope: !1185)
!1212 = !DILocation(line: 274, column: 23, scope: !1185)
!1213 = !DILocation(line: 274, column: 13, scope: !1185)
!1214 = !DILocation(line: 275, column: 14, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !1185, file: !1, line: 275, column: 3)
!1216 = !DILocation(line: 275, column: 21, scope: !1215)
!1217 = !DILocation(line: 275, column: 12, scope: !1215)
!1218 = !DILocation(line: 275, column: 8, scope: !1215)
!1219 = !DILocation(line: 275, column: 34, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1215, file: !1, line: 275, column: 3)
!1221 = !DILocation(line: 275, column: 38, scope: !1220)
!1222 = !DILocation(line: 275, column: 3, scope: !1215)
!1223 = !DILocalVariable(name: "temp", scope: !1224, file: !1, line: 276, type: !229)
!1224 = distinct !DILexicalBlock(scope: !1220, file: !1, line: 275, column: 50)
!1225 = !DILocation(line: 276, column: 18, scope: !1224)
!1226 = !DILocation(line: 277, column: 13, scope: !1224)
!1227 = !DILocation(line: 277, column: 11, scope: !1224)
!1228 = !DILocation(line: 278, column: 13, scope: !1224)
!1229 = !DILocation(line: 278, column: 31, scope: !1224)
!1230 = !DILocation(line: 278, column: 10, scope: !1224)
!1231 = !DILocation(line: 279, column: 14, scope: !1224)
!1232 = !DILocation(line: 279, column: 22, scope: !1224)
!1233 = !DILocation(line: 279, column: 9, scope: !1224)
!1234 = !DILocation(line: 279, column: 12, scope: !1224)
!1235 = !DILocation(line: 280, column: 13, scope: !1224)
!1236 = !DILocation(line: 280, column: 11, scope: !1224)
!1237 = !DILocation(line: 281, column: 13, scope: !1224)
!1238 = !DILocation(line: 281, column: 31, scope: !1224)
!1239 = !DILocation(line: 281, column: 10, scope: !1224)
!1240 = !DILocation(line: 282, column: 14, scope: !1224)
!1241 = !DILocation(line: 282, column: 22, scope: !1224)
!1242 = !DILocation(line: 282, column: 9, scope: !1224)
!1243 = !DILocation(line: 282, column: 12, scope: !1224)
!1244 = !DILocation(line: 283, column: 13, scope: !1224)
!1245 = !DILocation(line: 283, column: 11, scope: !1224)
!1246 = !DILocation(line: 284, column: 13, scope: !1224)
!1247 = !DILocation(line: 284, column: 31, scope: !1224)
!1248 = !DILocation(line: 284, column: 10, scope: !1224)
!1249 = !DILocation(line: 285, column: 14, scope: !1224)
!1250 = !DILocation(line: 285, column: 22, scope: !1224)
!1251 = !DILocation(line: 285, column: 9, scope: !1224)
!1252 = !DILocation(line: 285, column: 12, scope: !1224)
!1253 = !DILocation(line: 286, column: 3, scope: !1224)
!1254 = !DILocation(line: 275, column: 46, scope: !1220)
!1255 = !DILocation(line: 275, column: 3, scope: !1220)
!1256 = distinct !{!1256, !1222, !1257, !890}
!1257 = !DILocation(line: 286, column: 3, scope: !1215)
!1258 = !DILocation(line: 287, column: 3, scope: !1185)
!1259 = distinct !DISubprogram(name: "get_scaled_rgb_row", scope: !1, file: !1, line: 200, type: !505, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !583)
!1260 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1259, file: !1, line: 200, type: !203)
!1261 = !DILocation(line: 200, column: 36, scope: !1259)
!1262 = !DILocalVariable(name: "sinfo", arg: 2, scope: !1259, file: !1, line: 200, type: !501)
!1263 = !DILocation(line: 200, column: 60, scope: !1259)
!1264 = !DILocalVariable(name: "source", scope: !1259, file: !1, line: 203, type: !190)
!1265 = !DILocation(line: 203, column: 18, scope: !1259)
!1266 = !DILocation(line: 203, column: 44, scope: !1259)
!1267 = !DILocalVariable(name: "ptr", scope: !1259, file: !1, line: 204, type: !240)
!1268 = !DILocation(line: 204, column: 21, scope: !1259)
!1269 = !DILocalVariable(name: "bufferptr", scope: !1259, file: !1, line: 205, type: !566)
!1270 = !DILocation(line: 205, column: 21, scope: !1259)
!1271 = !DILocalVariable(name: "rescale", scope: !1259, file: !1, line: 206, type: !241)
!1272 = !DILocation(line: 206, column: 21, scope: !1259)
!1273 = !DILocation(line: 206, column: 31, scope: !1259)
!1274 = !DILocation(line: 206, column: 39, scope: !1259)
!1275 = !DILocalVariable(name: "col", scope: !1259, file: !1, line: 207, type: !245)
!1276 = !DILocation(line: 207, column: 14, scope: !1259)
!1277 = !DILocation(line: 209, column: 9, scope: !1278)
!1278 = distinct !DILexicalBlock(scope: !1259, file: !1, line: 209, column: 7)
!1279 = !DILocation(line: 209, column: 7, scope: !1278)
!1280 = !DILocation(line: 210, column: 5, scope: !1278)
!1281 = !DILocation(line: 211, column: 9, scope: !1259)
!1282 = !DILocation(line: 211, column: 17, scope: !1259)
!1283 = !DILocation(line: 211, column: 21, scope: !1259)
!1284 = !DILocation(line: 211, column: 7, scope: !1259)
!1285 = !DILocation(line: 212, column: 15, scope: !1259)
!1286 = !DILocation(line: 212, column: 23, scope: !1259)
!1287 = !DILocation(line: 212, column: 13, scope: !1259)
!1288 = !DILocation(line: 213, column: 14, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1259, file: !1, line: 213, column: 3)
!1290 = !DILocation(line: 213, column: 21, scope: !1289)
!1291 = !DILocation(line: 213, column: 12, scope: !1289)
!1292 = !DILocation(line: 213, column: 8, scope: !1289)
!1293 = !DILocation(line: 213, column: 34, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1289, file: !1, line: 213, column: 3)
!1295 = !DILocation(line: 213, column: 38, scope: !1294)
!1296 = !DILocation(line: 213, column: 3, scope: !1289)
!1297 = !DILocation(line: 214, column: 14, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1294, file: !1, line: 213, column: 50)
!1299 = !DILocation(line: 214, column: 22, scope: !1298)
!1300 = !DILocation(line: 214, column: 9, scope: !1298)
!1301 = !DILocation(line: 214, column: 12, scope: !1298)
!1302 = !DILocation(line: 215, column: 14, scope: !1298)
!1303 = !DILocation(line: 215, column: 22, scope: !1298)
!1304 = !DILocation(line: 215, column: 9, scope: !1298)
!1305 = !DILocation(line: 215, column: 12, scope: !1298)
!1306 = !DILocation(line: 216, column: 14, scope: !1298)
!1307 = !DILocation(line: 216, column: 22, scope: !1298)
!1308 = !DILocation(line: 216, column: 9, scope: !1298)
!1309 = !DILocation(line: 216, column: 12, scope: !1298)
!1310 = !DILocation(line: 217, column: 3, scope: !1298)
!1311 = !DILocation(line: 213, column: 46, scope: !1294)
!1312 = !DILocation(line: 213, column: 3, scope: !1294)
!1313 = distinct !{!1313, !1296, !1314, !890}
!1314 = !DILocation(line: 217, column: 3, scope: !1289)
!1315 = !DILocation(line: 218, column: 3, scope: !1259)
!1316 = distinct !DISubprogram(name: "pbm_getc", scope: !1, file: !1, line: 84, type: !1317, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !583)
!1317 = !DISubroutineType(types: !1318)
!1318 = !{!229, !509}
!1319 = !DILocalVariable(name: "infile", arg: 1, scope: !1316, file: !1, line: 84, type: !509)
!1320 = !DILocation(line: 84, column: 18, scope: !1316)
!1321 = !DILocalVariable(name: "ch", scope: !1316, file: !1, line: 88, type: !229)
!1322 = !DILocation(line: 88, column: 16, scope: !1316)
!1323 = !DILocation(line: 90, column: 13, scope: !1316)
!1324 = !DILocation(line: 90, column: 8, scope: !1316)
!1325 = !DILocation(line: 90, column: 6, scope: !1316)
!1326 = !DILocation(line: 91, column: 7, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1316, file: !1, line: 91, column: 7)
!1328 = !DILocation(line: 91, column: 10, scope: !1327)
!1329 = !DILocation(line: 92, column: 5, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1327, file: !1, line: 91, column: 18)
!1331 = !DILocation(line: 93, column: 17, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1330, file: !1, line: 92, column: 8)
!1333 = !DILocation(line: 93, column: 12, scope: !1332)
!1334 = !DILocation(line: 93, column: 10, scope: !1332)
!1335 = !DILocation(line: 94, column: 5, scope: !1332)
!1336 = !DILocation(line: 94, column: 14, scope: !1330)
!1337 = !DILocation(line: 94, column: 17, scope: !1330)
!1338 = !DILocation(line: 94, column: 25, scope: !1330)
!1339 = !DILocation(line: 94, column: 28, scope: !1330)
!1340 = !DILocation(line: 94, column: 31, scope: !1330)
!1341 = !DILocation(line: 0, scope: !1330)
!1342 = distinct !{!1342, !1329, !1343, !890}
!1343 = !DILocation(line: 94, column: 37, scope: !1330)
!1344 = !DILocation(line: 95, column: 3, scope: !1330)
!1345 = !DILocation(line: 96, column: 10, scope: !1316)
!1346 = !DILocation(line: 96, column: 3, scope: !1316)
