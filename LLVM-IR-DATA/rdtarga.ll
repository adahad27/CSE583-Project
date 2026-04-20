; ModuleID = 'cBench/consumer_jpeg_c/src/rdtarga.c'
source_filename = "cBench/consumer_jpeg_c/src/rdtarga.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jpeg_compress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, double, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [16 x i8], [16 x i8], [16 x i8], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct._tga_source_struct = type { %struct.cjpeg_source_struct, ptr, ptr, ptr, i32, ptr, [4 x i8], i32, i32, i32, ptr }
%struct.cjpeg_source_struct = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.cdjpeg_progress_mgr = type { %struct.jpeg_progress_mgr, i32, i32, i32 }
%struct.jpeg_progress_mgr = type { ptr, i64, i64, i32, i32 }

@c5to8bits = internal constant [32 x i8] c"\00\08\10\19!)1:BJRZcks{\84\8C\94\9C\A5\AD\B5\BD\C5\CE\D6\DE\E6\EF\F7\FF", align 16, !dbg !0

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @jinit_read_targa(ptr noundef %0) #0 !dbg !602 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !606, !DIExpression(), !607)
    #dbg_declare(ptr %3, !608, !DIExpression(), !609)
  %4 = load ptr, ptr %2, align 8, !dbg !610
  %5 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %4, i32 0, i32 1, !dbg !611
  %6 = load ptr, ptr %5, align 8, !dbg !611
  %7 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %6, i32 0, i32 0, !dbg !612
  %8 = load ptr, ptr %7, align 8, !dbg !612
  %9 = load ptr, ptr %2, align 8, !dbg !613
  %10 = call ptr %8(ptr noundef %9, i32 noundef 1, i64 noundef 112), !dbg !614
  store ptr %10, ptr %3, align 8, !dbg !615
  %11 = load ptr, ptr %2, align 8, !dbg !616
  %12 = load ptr, ptr %3, align 8, !dbg !617
  %13 = getelementptr inbounds nuw %struct._tga_source_struct, ptr %12, i32 0, i32 1, !dbg !618
  store ptr %11, ptr %13, align 8, !dbg !619
  %14 = load ptr, ptr %3, align 8, !dbg !620
  %15 = getelementptr inbounds nuw %struct._tga_source_struct, ptr %14, i32 0, i32 0, !dbg !621
  %16 = getelementptr inbounds nuw %struct.cjpeg_source_struct, ptr %15, i32 0, i32 0, !dbg !622
  store ptr @start_input_tga, ptr %16, align 8, !dbg !623
  %17 = load ptr, ptr %3, align 8, !dbg !624
  %18 = getelementptr inbounds nuw %struct._tga_source_struct, ptr %17, i32 0, i32 0, !dbg !625
  %19 = getelementptr inbounds nuw %struct.cjpeg_source_struct, ptr %18, i32 0, i32 2, !dbg !626
  store ptr @finish_input_tga, ptr %19, align 8, !dbg !627
  %20 = load ptr, ptr %3, align 8, !dbg !628
  ret ptr %20, !dbg !629
}

; Function Attrs: noinline nounwind uwtable
define internal void @start_input_tga(ptr noundef %0, ptr noundef %1) #0 !dbg !630 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca [18 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !631, !DIExpression(), !632)
  store ptr %1, ptr %4, align 8
    #dbg_declare(ptr %4, !633, !DIExpression(), !634)
    #dbg_declare(ptr %5, !635, !DIExpression(), !636)
  %18 = load ptr, ptr %4, align 8, !dbg !637
  store ptr %18, ptr %5, align 8, !dbg !636
    #dbg_declare(ptr %6, !638, !DIExpression(), !642)
    #dbg_declare(ptr %7, !643, !DIExpression(), !644)
    #dbg_declare(ptr %8, !645, !DIExpression(), !646)
    #dbg_declare(ptr %9, !647, !DIExpression(), !648)
    #dbg_declare(ptr %10, !649, !DIExpression(), !650)
    #dbg_declare(ptr %11, !651, !DIExpression(), !652)
    #dbg_declare(ptr %12, !653, !DIExpression(), !654)
    #dbg_declare(ptr %13, !655, !DIExpression(), !656)
    #dbg_declare(ptr %14, !657, !DIExpression(), !658)
    #dbg_declare(ptr %15, !659, !DIExpression(), !660)
    #dbg_declare(ptr %16, !661, !DIExpression(), !662)
  %19 = getelementptr inbounds [18 x i8], ptr %6, i64 0, i64 0, !dbg !663
  %20 = load ptr, ptr %5, align 8, !dbg !663
  %21 = getelementptr inbounds nuw %struct._tga_source_struct, ptr %20, i32 0, i32 0, !dbg !663
  %22 = getelementptr inbounds nuw %struct.cjpeg_source_struct, ptr %21, i32 0, i32 3, !dbg !663
  %23 = load ptr, ptr %22, align 8, !dbg !663
  %24 = call i64 @fread(ptr noundef %19, i64 noundef 1, i64 noundef 18, ptr noundef %23), !dbg !663
  %25 = icmp eq i64 %24, 18, !dbg !663
  br i1 %25, label %37, label %26, !dbg !665

26:                                               ; preds = %2
  %27 = load ptr, ptr %3, align 8, !dbg !666
  %28 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %27, i32 0, i32 0, !dbg !666
  %29 = load ptr, ptr %28, align 8, !dbg !666
  %30 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %29, i32 0, i32 5, !dbg !666
  store i32 42, ptr %30, align 8, !dbg !666
  %31 = load ptr, ptr %3, align 8, !dbg !666
  %32 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %31, i32 0, i32 0, !dbg !666
  %33 = load ptr, ptr %32, align 8, !dbg !666
  %34 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %33, i32 0, i32 0, !dbg !666
  %35 = load ptr, ptr %34, align 8, !dbg !666
  %36 = load ptr, ptr %3, align 8, !dbg !666
  call void %35(ptr noundef %36), !dbg !666
  br label %37, !dbg !666

37:                                               ; preds = %26, %2
  %38 = getelementptr inbounds [18 x i8], ptr %6, i64 0, i64 16, !dbg !667
  %39 = load i8, ptr %38, align 16, !dbg !667
  %40 = zext i8 %39 to i32, !dbg !667
  %41 = icmp eq i32 %40, 15, !dbg !669
  br i1 %41, label %42, label %44, !dbg !669

42:                                               ; preds = %37
  %43 = getelementptr inbounds [18 x i8], ptr %6, i64 0, i64 16, !dbg !670
  store i8 16, ptr %43, align 16, !dbg !671
  br label %44, !dbg !670

44:                                               ; preds = %42, %37
  %45 = getelementptr inbounds [18 x i8], ptr %6, i64 0, i64 0, !dbg !672
  %46 = load i8, ptr %45, align 16, !dbg !672
  %47 = zext i8 %46 to i32, !dbg !672
  store i32 %47, ptr %7, align 4, !dbg !673
  %48 = getelementptr inbounds [18 x i8], ptr %6, i64 0, i64 1, !dbg !674
  %49 = load i8, ptr %48, align 1, !dbg !674
  %50 = zext i8 %49 to i32, !dbg !674
  store i32 %50, ptr %8, align 4, !dbg !675
  %51 = getelementptr inbounds [18 x i8], ptr %6, i64 0, i64 2, !dbg !676
  %52 = load i8, ptr %51, align 2, !dbg !676
  %53 = zext i8 %52 to i32, !dbg !676
  store i32 %53, ptr %9, align 4, !dbg !677
  %54 = getelementptr inbounds [18 x i8], ptr %6, i64 0, i64 5, !dbg !678
  %55 = load i8, ptr %54, align 1, !dbg !678
  %56 = zext i8 %55 to i32, !dbg !678
  %57 = getelementptr inbounds [18 x i8], ptr %6, i64 0, i64 6, !dbg !678
  %58 = load i8, ptr %57, align 2, !dbg !678
  %59 = zext i8 %58 to i32, !dbg !678
  %60 = shl i32 %59, 8, !dbg !678
  %61 = add i32 %56, %60, !dbg !678
  store i32 %61, ptr %15, align 4, !dbg !679
  %62 = getelementptr inbounds [18 x i8], ptr %6, i64 0, i64 12, !dbg !680
  %63 = load i8, ptr %62, align 4, !dbg !680
  %64 = zext i8 %63 to i32, !dbg !680
  %65 = getelementptr inbounds [18 x i8], ptr %6, i64 0, i64 13, !dbg !680
  %66 = load i8, ptr %65, align 1, !dbg !680
  %67 = zext i8 %66 to i32, !dbg !680
  %68 = shl i32 %67, 8, !dbg !680
  %69 = add i32 %64, %68, !dbg !680
  store i32 %69, ptr %13, align 4, !dbg !681
  %70 = getelementptr inbounds [18 x i8], ptr %6, i64 0, i64 14, !dbg !682
  %71 = load i8, ptr %70, align 2, !dbg !682
  %72 = zext i8 %71 to i32, !dbg !682
  %73 = getelementptr inbounds [18 x i8], ptr %6, i64 0, i64 15, !dbg !682
  %74 = load i8, ptr %73, align 1, !dbg !682
  %75 = zext i8 %74 to i32, !dbg !682
  %76 = shl i32 %75, 8, !dbg !682
  %77 = add i32 %72, %76, !dbg !682
  store i32 %77, ptr %14, align 4, !dbg !683
  %78 = getelementptr inbounds [18 x i8], ptr %6, i64 0, i64 16, !dbg !684
  %79 = load i8, ptr %78, align 16, !dbg !684
  %80 = zext i8 %79 to i32, !dbg !684
  %81 = ashr i32 %80, 3, !dbg !685
  %82 = load ptr, ptr %5, align 8, !dbg !686
  %83 = getelementptr inbounds nuw %struct._tga_source_struct, ptr %82, i32 0, i32 7, !dbg !687
  store i32 %81, ptr %83, align 4, !dbg !688
  %84 = getelementptr inbounds [18 x i8], ptr %6, i64 0, i64 17, !dbg !689
  %85 = load i8, ptr %84, align 1, !dbg !689
  %86 = zext i8 %85 to i32, !dbg !689
  store i32 %86, ptr %10, align 4, !dbg !690
  %87 = load i32, ptr %10, align 4, !dbg !691
  %88 = and i32 %87, 32, !dbg !692
  %89 = icmp eq i32 %88, 0, !dbg !693
  %90 = zext i1 %89 to i32, !dbg !693
  store i32 %90, ptr %16, align 4, !dbg !694
  %91 = load i32, ptr %10, align 4, !dbg !695
  %92 = ashr i32 %91, 6, !dbg !696
  store i32 %92, ptr %11, align 4, !dbg !697
  %93 = load i32, ptr %8, align 4, !dbg !698
  %94 = icmp sgt i32 %93, 1, !dbg !700
  br i1 %94, label %114, label %95, !dbg !701

95:                                               ; preds = %44
  %96 = load ptr, ptr %5, align 8, !dbg !702
  %97 = getelementptr inbounds nuw %struct._tga_source_struct, ptr %96, i32 0, i32 7, !dbg !703
  %98 = load i32, ptr %97, align 4, !dbg !703
  %99 = icmp slt i32 %98, 1, !dbg !704
  br i1 %99, label %114, label %100, !dbg !705

100:                                              ; preds = %95
  %101 = load ptr, ptr %5, align 8, !dbg !706
  %102 = getelementptr inbounds nuw %struct._tga_source_struct, ptr %101, i32 0, i32 7, !dbg !707
  %103 = load i32, ptr %102, align 4, !dbg !707
  %104 = icmp sgt i32 %103, 4, !dbg !708
  br i1 %104, label %114, label %105, !dbg !709

105:                                              ; preds = %100
  %106 = getelementptr inbounds [18 x i8], ptr %6, i64 0, i64 16, !dbg !710
  %107 = load i8, ptr %106, align 16, !dbg !710
  %108 = zext i8 %107 to i32, !dbg !710
  %109 = and i32 %108, 7, !dbg !711
  %110 = icmp ne i32 %109, 0, !dbg !712
  br i1 %110, label %114, label %111, !dbg !713

111:                                              ; preds = %105
  %112 = load i32, ptr %11, align 4, !dbg !714
  %113 = icmp ne i32 %112, 0, !dbg !715
  br i1 %113, label %114, label %125, !dbg !713

114:                                              ; preds = %111, %105, %100, %95, %44
  %115 = load ptr, ptr %3, align 8, !dbg !716
  %116 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %115, i32 0, i32 0, !dbg !716
  %117 = load ptr, ptr %116, align 8, !dbg !716
  %118 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %117, i32 0, i32 5, !dbg !716
  store i32 1033, ptr %118, align 8, !dbg !716
  %119 = load ptr, ptr %3, align 8, !dbg !716
  %120 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %119, i32 0, i32 0, !dbg !716
  %121 = load ptr, ptr %120, align 8, !dbg !716
  %122 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %121, i32 0, i32 0, !dbg !716
  %123 = load ptr, ptr %122, align 8, !dbg !716
  %124 = load ptr, ptr %3, align 8, !dbg !716
  call void %123(ptr noundef %124), !dbg !716
  br label %125, !dbg !716

125:                                              ; preds = %114, %111
  %126 = load i32, ptr %9, align 4, !dbg !717
  %127 = icmp sgt i32 %126, 8, !dbg !719
  br i1 %127, label %128, label %137, !dbg !719

128:                                              ; preds = %125
  %129 = load ptr, ptr %5, align 8, !dbg !720
  %130 = getelementptr inbounds nuw %struct._tga_source_struct, ptr %129, i32 0, i32 5, !dbg !722
  store ptr @read_rle_pixel, ptr %130, align 8, !dbg !723
  %131 = load ptr, ptr %5, align 8, !dbg !724
  %132 = getelementptr inbounds nuw %struct._tga_source_struct, ptr %131, i32 0, i32 9, !dbg !725
  store i32 0, ptr %132, align 4, !dbg !726
  %133 = load ptr, ptr %5, align 8, !dbg !727
  %134 = getelementptr inbounds nuw %struct._tga_source_struct, ptr %133, i32 0, i32 8, !dbg !728
  store i32 0, ptr %134, align 8, !dbg !729
  %135 = load i32, ptr %9, align 4, !dbg !730
  %136 = sub nsw i32 %135, 8, !dbg !730
  store i32 %136, ptr %9, align 4, !dbg !730
  br label %140, !dbg !731

137:                                              ; preds = %125
  %138 = load ptr, ptr %5, align 8, !dbg !732
  %139 = getelementptr inbounds nuw %struct._tga_source_struct, ptr %138, i32 0, i32 5, !dbg !734
  store ptr @read_non_rle_pixel, ptr %139, align 8, !dbg !735
  br label %140

140:                                              ; preds = %137, %128
  store i32 3, ptr %12, align 4, !dbg !736
  %141 = load ptr, ptr %3, align 8, !dbg !737
  %142 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %141, i32 0, i32 9, !dbg !738
  store i32 2, ptr %142, align 4, !dbg !739
  %143 = load i32, ptr %9, align 4, !dbg !740
  switch i32 %143, label %280 [
    i32 1, label %144
    i32 2, label %189
    i32 3, label %236
  ], !dbg !741

144:                                              ; preds = %140
  %145 = load ptr, ptr %5, align 8, !dbg !742
  %146 = getelementptr inbounds nuw %struct._tga_source_struct, ptr %145, i32 0, i32 7, !dbg !745
  %147 = load i32, ptr %146, align 4, !dbg !745
  %148 = icmp eq i32 %147, 1, !dbg !746
  br i1 %148, label %149, label %155, !dbg !747

149:                                              ; preds = %144
  %150 = load i32, ptr %8, align 4, !dbg !748
  %151 = icmp eq i32 %150, 1, !dbg !749
  br i1 %151, label %152, label %155, !dbg !747

152:                                              ; preds = %149
  %153 = load ptr, ptr %5, align 8, !dbg !750
  %154 = getelementptr inbounds nuw %struct._tga_source_struct, ptr %153, i32 0, i32 10, !dbg !751
  store ptr @get_8bit_row, ptr %154, align 8, !dbg !752
  br label %166, !dbg !750

155:                                              ; preds = %149, %144
  %156 = load ptr, ptr %3, align 8, !dbg !753
  %157 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %156, i32 0, i32 0, !dbg !753
  %158 = load ptr, ptr %157, align 8, !dbg !753
  %159 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %158, i32 0, i32 5, !dbg !753
  store i32 1033, ptr %159, align 8, !dbg !753
  %160 = load ptr, ptr %3, align 8, !dbg !753
  %161 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %160, i32 0, i32 0, !dbg !753
  %162 = load ptr, ptr %161, align 8, !dbg !753
  %163 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %162, i32 0, i32 0, !dbg !753
  %164 = load ptr, ptr %163, align 8, !dbg !753
  %165 = load ptr, ptr %3, align 8, !dbg !753
  call void %164(ptr noundef %165), !dbg !753
  br label %166

166:                                              ; preds = %155, %152
  %167 = load ptr, ptr %3, align 8, !dbg !754
  %168 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %167, i32 0, i32 0, !dbg !754
  %169 = load ptr, ptr %168, align 8, !dbg !754
  %170 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %169, i32 0, i32 5, !dbg !754
  store i32 1037, ptr %170, align 8, !dbg !754
  %171 = load i32, ptr %13, align 4, !dbg !754
  %172 = load ptr, ptr %3, align 8, !dbg !754
  %173 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %172, i32 0, i32 0, !dbg !754
  %174 = load ptr, ptr %173, align 8, !dbg !754
  %175 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %174, i32 0, i32 6, !dbg !754
  %176 = getelementptr inbounds [8 x i32], ptr %175, i64 0, i64 0, !dbg !754
  store i32 %171, ptr %176, align 4, !dbg !754
  %177 = load i32, ptr %14, align 4, !dbg !754
  %178 = load ptr, ptr %3, align 8, !dbg !754
  %179 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %178, i32 0, i32 0, !dbg !754
  %180 = load ptr, ptr %179, align 8, !dbg !754
  %181 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %180, i32 0, i32 6, !dbg !754
  %182 = getelementptr inbounds [8 x i32], ptr %181, i64 0, i64 1, !dbg !754
  store i32 %177, ptr %182, align 4, !dbg !754
  %183 = load ptr, ptr %3, align 8, !dbg !754
  %184 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %183, i32 0, i32 0, !dbg !754
  %185 = load ptr, ptr %184, align 8, !dbg !754
  %186 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %185, i32 0, i32 1, !dbg !754
  %187 = load ptr, ptr %186, align 8, !dbg !754
  %188 = load ptr, ptr %3, align 8, !dbg !754
  call void %187(ptr noundef %188, i32 noundef 1), !dbg !754
  br label %291, !dbg !755

189:                                              ; preds = %140
  %190 = load ptr, ptr %5, align 8, !dbg !756
  %191 = getelementptr inbounds nuw %struct._tga_source_struct, ptr %190, i32 0, i32 7, !dbg !757
  %192 = load i32, ptr %191, align 4, !dbg !757
  switch i32 %192, label %202 [
    i32 2, label %193
    i32 3, label %196
    i32 4, label %199
  ], !dbg !758

193:                                              ; preds = %189
  %194 = load ptr, ptr %5, align 8, !dbg !759
  %195 = getelementptr inbounds nuw %struct._tga_source_struct, ptr %194, i32 0, i32 10, !dbg !761
  store ptr @get_16bit_row, ptr %195, align 8, !dbg !762
  br label %213, !dbg !763

196:                                              ; preds = %189
  %197 = load ptr, ptr %5, align 8, !dbg !764
  %198 = getelementptr inbounds nuw %struct._tga_source_struct, ptr %197, i32 0, i32 10, !dbg !765
  store ptr @get_24bit_row, ptr %198, align 8, !dbg !766
  br label %213, !dbg !767

199:                                              ; preds = %189
  %200 = load ptr, ptr %5, align 8, !dbg !768
  %201 = getelementptr inbounds nuw %struct._tga_source_struct, ptr %200, i32 0, i32 10, !dbg !769
  store ptr @get_24bit_row, ptr %201, align 8, !dbg !770
  br label %213, !dbg !771

202:                                              ; preds = %189
  %203 = load ptr, ptr %3, align 8, !dbg !772
  %204 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %203, i32 0, i32 0, !dbg !772
  %205 = load ptr, ptr %204, align 8, !dbg !772
  %206 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %205, i32 0, i32 5, !dbg !772
  store i32 1033, ptr %206, align 8, !dbg !772
  %207 = load ptr, ptr %3, align 8, !dbg !772
  %208 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %207, i32 0, i32 0, !dbg !772
  %209 = load ptr, ptr %208, align 8, !dbg !772
  %210 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %209, i32 0, i32 0, !dbg !772
  %211 = load ptr, ptr %210, align 8, !dbg !772
  %212 = load ptr, ptr %3, align 8, !dbg !772
  call void %211(ptr noundef %212), !dbg !772
  br label %213, !dbg !773

213:                                              ; preds = %202, %199, %196, %193
  %214 = load ptr, ptr %3, align 8, !dbg !774
  %215 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %214, i32 0, i32 0, !dbg !774
  %216 = load ptr, ptr %215, align 8, !dbg !774
  %217 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %216, i32 0, i32 5, !dbg !774
  store i32 1035, ptr %217, align 8, !dbg !774
  %218 = load i32, ptr %13, align 4, !dbg !774
  %219 = load ptr, ptr %3, align 8, !dbg !774
  %220 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %219, i32 0, i32 0, !dbg !774
  %221 = load ptr, ptr %220, align 8, !dbg !774
  %222 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %221, i32 0, i32 6, !dbg !774
  %223 = getelementptr inbounds [8 x i32], ptr %222, i64 0, i64 0, !dbg !774
  store i32 %218, ptr %223, align 4, !dbg !774
  %224 = load i32, ptr %14, align 4, !dbg !774
  %225 = load ptr, ptr %3, align 8, !dbg !774
  %226 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %225, i32 0, i32 0, !dbg !774
  %227 = load ptr, ptr %226, align 8, !dbg !774
  %228 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %227, i32 0, i32 6, !dbg !774
  %229 = getelementptr inbounds [8 x i32], ptr %228, i64 0, i64 1, !dbg !774
  store i32 %224, ptr %229, align 4, !dbg !774
  %230 = load ptr, ptr %3, align 8, !dbg !774
  %231 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %230, i32 0, i32 0, !dbg !774
  %232 = load ptr, ptr %231, align 8, !dbg !774
  %233 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %232, i32 0, i32 1, !dbg !774
  %234 = load ptr, ptr %233, align 8, !dbg !774
  %235 = load ptr, ptr %3, align 8, !dbg !774
  call void %234(ptr noundef %235, i32 noundef 1), !dbg !774
  br label %291, !dbg !775

236:                                              ; preds = %140
  store i32 1, ptr %12, align 4, !dbg !776
  %237 = load ptr, ptr %3, align 8, !dbg !777
  %238 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %237, i32 0, i32 9, !dbg !778
  store i32 1, ptr %238, align 4, !dbg !779
  %239 = load ptr, ptr %5, align 8, !dbg !780
  %240 = getelementptr inbounds nuw %struct._tga_source_struct, ptr %239, i32 0, i32 7, !dbg !782
  %241 = load i32, ptr %240, align 4, !dbg !782
  %242 = icmp eq i32 %241, 1, !dbg !783
  br i1 %242, label %243, label %246, !dbg !783

243:                                              ; preds = %236
  %244 = load ptr, ptr %5, align 8, !dbg !784
  %245 = getelementptr inbounds nuw %struct._tga_source_struct, ptr %244, i32 0, i32 10, !dbg !785
  store ptr @get_8bit_gray_row, ptr %245, align 8, !dbg !786
  br label %257, !dbg !784

246:                                              ; preds = %236
  %247 = load ptr, ptr %3, align 8, !dbg !787
  %248 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %247, i32 0, i32 0, !dbg !787
  %249 = load ptr, ptr %248, align 8, !dbg !787
  %250 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %249, i32 0, i32 5, !dbg !787
  store i32 1033, ptr %250, align 8, !dbg !787
  %251 = load ptr, ptr %3, align 8, !dbg !787
  %252 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %251, i32 0, i32 0, !dbg !787
  %253 = load ptr, ptr %252, align 8, !dbg !787
  %254 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %253, i32 0, i32 0, !dbg !787
  %255 = load ptr, ptr %254, align 8, !dbg !787
  %256 = load ptr, ptr %3, align 8, !dbg !787
  call void %255(ptr noundef %256), !dbg !787
  br label %257

257:                                              ; preds = %246, %243
  %258 = load ptr, ptr %3, align 8, !dbg !788
  %259 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %258, i32 0, i32 0, !dbg !788
  %260 = load ptr, ptr %259, align 8, !dbg !788
  %261 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %260, i32 0, i32 5, !dbg !788
  store i32 1036, ptr %261, align 8, !dbg !788
  %262 = load i32, ptr %13, align 4, !dbg !788
  %263 = load ptr, ptr %3, align 8, !dbg !788
  %264 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %263, i32 0, i32 0, !dbg !788
  %265 = load ptr, ptr %264, align 8, !dbg !788
  %266 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %265, i32 0, i32 6, !dbg !788
  %267 = getelementptr inbounds [8 x i32], ptr %266, i64 0, i64 0, !dbg !788
  store i32 %262, ptr %267, align 4, !dbg !788
  %268 = load i32, ptr %14, align 4, !dbg !788
  %269 = load ptr, ptr %3, align 8, !dbg !788
  %270 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %269, i32 0, i32 0, !dbg !788
  %271 = load ptr, ptr %270, align 8, !dbg !788
  %272 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %271, i32 0, i32 6, !dbg !788
  %273 = getelementptr inbounds [8 x i32], ptr %272, i64 0, i64 1, !dbg !788
  store i32 %268, ptr %273, align 4, !dbg !788
  %274 = load ptr, ptr %3, align 8, !dbg !788
  %275 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %274, i32 0, i32 0, !dbg !788
  %276 = load ptr, ptr %275, align 8, !dbg !788
  %277 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %276, i32 0, i32 1, !dbg !788
  %278 = load ptr, ptr %277, align 8, !dbg !788
  %279 = load ptr, ptr %3, align 8, !dbg !788
  call void %278(ptr noundef %279, i32 noundef 1), !dbg !788
  br label %291, !dbg !789

280:                                              ; preds = %140
  %281 = load ptr, ptr %3, align 8, !dbg !790
  %282 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %281, i32 0, i32 0, !dbg !790
  %283 = load ptr, ptr %282, align 8, !dbg !790
  %284 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %283, i32 0, i32 5, !dbg !790
  store i32 1033, ptr %284, align 8, !dbg !790
  %285 = load ptr, ptr %3, align 8, !dbg !790
  %286 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %285, i32 0, i32 0, !dbg !790
  %287 = load ptr, ptr %286, align 8, !dbg !790
  %288 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %287, i32 0, i32 0, !dbg !790
  %289 = load ptr, ptr %288, align 8, !dbg !790
  %290 = load ptr, ptr %3, align 8, !dbg !790
  call void %289(ptr noundef %290), !dbg !790
  br label %291, !dbg !791

291:                                              ; preds = %280, %257, %213, %166
  %292 = load i32, ptr %16, align 4, !dbg !792
  %293 = icmp ne i32 %292, 0, !dbg !792
  br i1 %293, label %294, label %327, !dbg !792

294:                                              ; preds = %291
  %295 = load ptr, ptr %3, align 8, !dbg !794
  %296 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %295, i32 0, i32 1, !dbg !796
  %297 = load ptr, ptr %296, align 8, !dbg !796
  %298 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %297, i32 0, i32 4, !dbg !797
  %299 = load ptr, ptr %298, align 8, !dbg !797
  %300 = load ptr, ptr %3, align 8, !dbg !798
  %301 = load i32, ptr %13, align 4, !dbg !799
  %302 = load i32, ptr %12, align 4, !dbg !800
  %303 = mul i32 %301, %302, !dbg !801
  %304 = load i32, ptr %14, align 4, !dbg !802
  %305 = call ptr %299(ptr noundef %300, i32 noundef 1, i32 noundef 0, i32 noundef %303, i32 noundef %304, i32 noundef 1), !dbg !803
  %306 = load ptr, ptr %5, align 8, !dbg !804
  %307 = getelementptr inbounds nuw %struct._tga_source_struct, ptr %306, i32 0, i32 3, !dbg !805
  store ptr %305, ptr %307, align 8, !dbg !806
  %308 = load ptr, ptr %3, align 8, !dbg !807
  %309 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %308, i32 0, i32 2, !dbg !809
  %310 = load ptr, ptr %309, align 8, !dbg !809
  %311 = icmp ne ptr %310, null, !dbg !810
  br i1 %311, label %312, label %320, !dbg !810

312:                                              ; preds = %294
    #dbg_declare(ptr %17, !811, !DIExpression(), !813)
  %313 = load ptr, ptr %3, align 8, !dbg !814
  %314 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %313, i32 0, i32 2, !dbg !815
  %315 = load ptr, ptr %314, align 8, !dbg !815
  store ptr %315, ptr %17, align 8, !dbg !813
  %316 = load ptr, ptr %17, align 8, !dbg !816
  %317 = getelementptr inbounds nuw %struct.cdjpeg_progress_mgr, ptr %316, i32 0, i32 2, !dbg !817
  %318 = load i32, ptr %317, align 4, !dbg !818
  %319 = add nsw i32 %318, 1, !dbg !818
  store i32 %319, ptr %317, align 4, !dbg !818
  br label %320, !dbg !819

320:                                              ; preds = %312, %294
  %321 = load ptr, ptr %5, align 8, !dbg !820
  %322 = getelementptr inbounds nuw %struct._tga_source_struct, ptr %321, i32 0, i32 0, !dbg !821
  %323 = getelementptr inbounds nuw %struct.cjpeg_source_struct, ptr %322, i32 0, i32 5, !dbg !822
  store i32 1, ptr %323, align 8, !dbg !823
  %324 = load ptr, ptr %5, align 8, !dbg !824
  %325 = getelementptr inbounds nuw %struct._tga_source_struct, ptr %324, i32 0, i32 0, !dbg !825
  %326 = getelementptr inbounds nuw %struct.cjpeg_source_struct, ptr %325, i32 0, i32 1, !dbg !826
  store ptr @preload_image, ptr %326, align 8, !dbg !827
  br label %352, !dbg !828

327:                                              ; preds = %291
  %328 = load ptr, ptr %5, align 8, !dbg !829
  %329 = getelementptr inbounds nuw %struct._tga_source_struct, ptr %328, i32 0, i32 3, !dbg !831
  store ptr null, ptr %329, align 8, !dbg !832
  %330 = load ptr, ptr %3, align 8, !dbg !833
  %331 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %330, i32 0, i32 1, !dbg !834
  %332 = load ptr, ptr %331, align 8, !dbg !834
  %333 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %332, i32 0, i32 2, !dbg !835
  %334 = load ptr, ptr %333, align 8, !dbg !835
  %335 = load ptr, ptr %3, align 8, !dbg !836
  %336 = load i32, ptr %13, align 4, !dbg !837
  %337 = load i32, ptr %12, align 4, !dbg !838
  %338 = mul i32 %336, %337, !dbg !839
  %339 = call ptr %334(ptr noundef %335, i32 noundef 1, i32 noundef %338, i32 noundef 1), !dbg !840
  %340 = load ptr, ptr %5, align 8, !dbg !841
  %341 = getelementptr inbounds nuw %struct._tga_source_struct, ptr %340, i32 0, i32 0, !dbg !842
  %342 = getelementptr inbounds nuw %struct.cjpeg_source_struct, ptr %341, i32 0, i32 4, !dbg !843
  store ptr %339, ptr %342, align 8, !dbg !844
  %343 = load ptr, ptr %5, align 8, !dbg !845
  %344 = getelementptr inbounds nuw %struct._tga_source_struct, ptr %343, i32 0, i32 0, !dbg !846
  %345 = getelementptr inbounds nuw %struct.cjpeg_source_struct, ptr %344, i32 0, i32 5, !dbg !847
  store i32 1, ptr %345, align 8, !dbg !848
  %346 = load ptr, ptr %5, align 8, !dbg !849
  %347 = getelementptr inbounds nuw %struct._tga_source_struct, ptr %346, i32 0, i32 10, !dbg !850
  %348 = load ptr, ptr %347, align 8, !dbg !850
  %349 = load ptr, ptr %5, align 8, !dbg !851
  %350 = getelementptr inbounds nuw %struct._tga_source_struct, ptr %349, i32 0, i32 0, !dbg !852
  %351 = getelementptr inbounds nuw %struct.cjpeg_source_struct, ptr %350, i32 0, i32 1, !dbg !853
  store ptr %348, ptr %351, align 8, !dbg !854
  br label %352

352:                                              ; preds = %327, %320
  br label %353, !dbg !855

353:                                              ; preds = %357, %352
  %354 = load i32, ptr %7, align 4, !dbg !856
  %355 = add nsw i32 %354, -1, !dbg !856
  store i32 %355, ptr %7, align 4, !dbg !856
  %356 = icmp ne i32 %354, 0, !dbg !855
  br i1 %356, label %357, label %360, !dbg !855

357:                                              ; preds = %353
  %358 = load ptr, ptr %5, align 8, !dbg !857
  %359 = call i32 @read_byte(ptr noundef %358), !dbg !858
  br label %353, !dbg !855, !llvm.loop !859

360:                                              ; preds = %353
  %361 = load i32, ptr %15, align 4, !dbg !862
  %362 = icmp ugt i32 %361, 0, !dbg !864
  br i1 %362, label %363, label %403, !dbg !864

363:                                              ; preds = %360
  %364 = load i32, ptr %15, align 4, !dbg !865
  %365 = icmp ugt i32 %364, 256, !dbg !868
  br i1 %365, label %376, label %366, !dbg !869

366:                                              ; preds = %363
  %367 = getelementptr inbounds [18 x i8], ptr %6, i64 0, i64 3, !dbg !870
  %368 = load i8, ptr %367, align 1, !dbg !870
  %369 = zext i8 %368 to i32, !dbg !870
  %370 = getelementptr inbounds [18 x i8], ptr %6, i64 0, i64 4, !dbg !870
  %371 = load i8, ptr %370, align 4, !dbg !870
  %372 = zext i8 %371 to i32, !dbg !870
  %373 = shl i32 %372, 8, !dbg !870
  %374 = add i32 %369, %373, !dbg !870
  %375 = icmp ne i32 %374, 0, !dbg !871
  br i1 %375, label %376, label %387, !dbg !869

376:                                              ; preds = %366, %363
  %377 = load ptr, ptr %3, align 8, !dbg !872
  %378 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %377, i32 0, i32 0, !dbg !872
  %379 = load ptr, ptr %378, align 8, !dbg !872
  %380 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %379, i32 0, i32 5, !dbg !872
  store i32 1032, ptr %380, align 8, !dbg !872
  %381 = load ptr, ptr %3, align 8, !dbg !872
  %382 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %381, i32 0, i32 0, !dbg !872
  %383 = load ptr, ptr %382, align 8, !dbg !872
  %384 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %383, i32 0, i32 0, !dbg !872
  %385 = load ptr, ptr %384, align 8, !dbg !872
  %386 = load ptr, ptr %3, align 8, !dbg !872
  call void %385(ptr noundef %386), !dbg !872
  br label %387, !dbg !872

387:                                              ; preds = %376, %366
  %388 = load ptr, ptr %3, align 8, !dbg !873
  %389 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %388, i32 0, i32 1, !dbg !874
  %390 = load ptr, ptr %389, align 8, !dbg !874
  %391 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %390, i32 0, i32 2, !dbg !875
  %392 = load ptr, ptr %391, align 8, !dbg !875
  %393 = load ptr, ptr %3, align 8, !dbg !876
  %394 = load i32, ptr %15, align 4, !dbg !877
  %395 = call ptr %392(ptr noundef %393, i32 noundef 1, i32 noundef %394, i32 noundef 3), !dbg !878
  %396 = load ptr, ptr %5, align 8, !dbg !879
  %397 = getelementptr inbounds nuw %struct._tga_source_struct, ptr %396, i32 0, i32 2, !dbg !880
  store ptr %395, ptr %397, align 8, !dbg !881
  %398 = load ptr, ptr %5, align 8, !dbg !882
  %399 = load i32, ptr %15, align 4, !dbg !883
  %400 = getelementptr inbounds [18 x i8], ptr %6, i64 0, i64 7, !dbg !884
  %401 = load i8, ptr %400, align 1, !dbg !884
  %402 = zext i8 %401 to i32, !dbg !884
  call void @read_colormap(ptr noundef %398, i32 noundef %399, i32 noundef %402), !dbg !885
  br label %420, !dbg !886

403:                                              ; preds = %360
  %404 = load i32, ptr %8, align 4, !dbg !887
  %405 = icmp ne i32 %404, 0, !dbg !887
  br i1 %405, label %406, label %417, !dbg !887

406:                                              ; preds = %403
  %407 = load ptr, ptr %3, align 8, !dbg !890
  %408 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %407, i32 0, i32 0, !dbg !890
  %409 = load ptr, ptr %408, align 8, !dbg !890
  %410 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %409, i32 0, i32 5, !dbg !890
  store i32 1033, ptr %410, align 8, !dbg !890
  %411 = load ptr, ptr %3, align 8, !dbg !890
  %412 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %411, i32 0, i32 0, !dbg !890
  %413 = load ptr, ptr %412, align 8, !dbg !890
  %414 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %413, i32 0, i32 0, !dbg !890
  %415 = load ptr, ptr %414, align 8, !dbg !890
  %416 = load ptr, ptr %3, align 8, !dbg !890
  call void %415(ptr noundef %416), !dbg !890
  br label %417, !dbg !890

417:                                              ; preds = %406, %403
  %418 = load ptr, ptr %5, align 8, !dbg !891
  %419 = getelementptr inbounds nuw %struct._tga_source_struct, ptr %418, i32 0, i32 2, !dbg !892
  store ptr null, ptr %419, align 8, !dbg !893
  br label %420

420:                                              ; preds = %417, %387
  %421 = load i32, ptr %12, align 4, !dbg !894
  %422 = load ptr, ptr %3, align 8, !dbg !895
  %423 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %422, i32 0, i32 8, !dbg !896
  store i32 %421, ptr %423, align 8, !dbg !897
  %424 = load ptr, ptr %3, align 8, !dbg !898
  %425 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %424, i32 0, i32 11, !dbg !899
  store i32 8, ptr %425, align 8, !dbg !900
  %426 = load i32, ptr %13, align 4, !dbg !901
  %427 = load ptr, ptr %3, align 8, !dbg !902
  %428 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %427, i32 0, i32 6, !dbg !903
  store i32 %426, ptr %428, align 8, !dbg !904
  %429 = load i32, ptr %14, align 4, !dbg !905
  %430 = load ptr, ptr %3, align 8, !dbg !906
  %431 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %430, i32 0, i32 7, !dbg !907
  store i32 %429, ptr %431, align 4, !dbg !908
  ret void, !dbg !909
}

; Function Attrs: noinline nounwind uwtable
define internal void @finish_input_tga(ptr noundef %0, ptr noundef %1) #0 !dbg !910 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !911, !DIExpression(), !912)
  store ptr %1, ptr %4, align 8
    #dbg_declare(ptr %4, !913, !DIExpression(), !914)
  ret void, !dbg !915
}

declare i64 @fread(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @read_rle_pixel(ptr noundef %0) #0 !dbg !916 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !917, !DIExpression(), !918)
    #dbg_declare(ptr %3, !919, !DIExpression(), !920)
  %5 = load ptr, ptr %2, align 8, !dbg !921
  %6 = getelementptr inbounds nuw %struct._tga_source_struct, ptr %5, i32 0, i32 0, !dbg !922
  %7 = getelementptr inbounds nuw %struct.cjpeg_source_struct, ptr %6, i32 0, i32 3, !dbg !923
  %8 = load ptr, ptr %7, align 8, !dbg !923
  store ptr %8, ptr %3, align 8, !dbg !920
    #dbg_declare(ptr %4, !924, !DIExpression(), !925)
  %9 = load ptr, ptr %2, align 8, !dbg !926
  %10 = getelementptr inbounds nuw %struct._tga_source_struct, ptr %9, i32 0, i32 9, !dbg !928
  %11 = load i32, ptr %10, align 4, !dbg !928
  %12 = icmp sgt i32 %11, 0, !dbg !929
  br i1 %12, label %13, label %18, !dbg !929

13:                                               ; preds = %1
  %14 = load ptr, ptr %2, align 8, !dbg !930
  %15 = getelementptr inbounds nuw %struct._tga_source_struct, ptr %14, i32 0, i32 9, !dbg !932
  %16 = load i32, ptr %15, align 4, !dbg !933
  %17 = add nsw i32 %16, -1, !dbg !933
  store i32 %17, ptr %15, align 4, !dbg !933
  br label %62, !dbg !934

18:                                               ; preds = %1
  %19 = load ptr, ptr %2, align 8, !dbg !935
  %20 = getelementptr inbounds nuw %struct._tga_source_struct, ptr %19, i32 0, i32 8, !dbg !937
  %21 = load i32, ptr %20, align 8, !dbg !938
  %22 = add nsw i32 %21, -1, !dbg !938
  store i32 %22, ptr %20, align 8, !dbg !938
  %23 = icmp slt i32 %22, 0, !dbg !939
  br i1 %23, label %24, label %43, !dbg !939

24:                                               ; preds = %18
  %25 = load ptr, ptr %2, align 8, !dbg !940
  %26 = call i32 @read_byte(ptr noundef %25), !dbg !942
  store i32 %26, ptr %4, align 4, !dbg !943
  %27 = load i32, ptr %4, align 4, !dbg !944
  %28 = and i32 %27, 128, !dbg !946
  %29 = icmp ne i32 %28, 0, !dbg !946
  br i1 %29, label %30, label %37, !dbg !946

30:                                               ; preds = %24
  %31 = load i32, ptr %4, align 4, !dbg !947
  %32 = and i32 %31, 127, !dbg !949
  %33 = load ptr, ptr %2, align 8, !dbg !950
  %34 = getelementptr inbounds nuw %struct._tga_source_struct, ptr %33, i32 0, i32 9, !dbg !951
  store i32 %32, ptr %34, align 4, !dbg !952
  %35 = load ptr, ptr %2, align 8, !dbg !953
  %36 = getelementptr inbounds nuw %struct._tga_source_struct, ptr %35, i32 0, i32 8, !dbg !954
  store i32 0, ptr %36, align 8, !dbg !955
  br label %42, !dbg !956

37:                                               ; preds = %24
  %38 = load i32, ptr %4, align 4, !dbg !957
  %39 = and i32 %38, 127, !dbg !959
  %40 = load ptr, ptr %2, align 8, !dbg !960
  %41 = getelementptr inbounds nuw %struct._tga_source_struct, ptr %40, i32 0, i32 8, !dbg !961
  store i32 %39, ptr %41, align 8, !dbg !962
  br label %42

42:                                               ; preds = %37, %30
  br label %43, !dbg !963

43:                                               ; preds = %42, %18
  store i32 0, ptr %4, align 4, !dbg !964
  br label %44, !dbg !966

44:                                               ; preds = %59, %43
  %45 = load i32, ptr %4, align 4, !dbg !967
  %46 = load ptr, ptr %2, align 8, !dbg !969
  %47 = getelementptr inbounds nuw %struct._tga_source_struct, ptr %46, i32 0, i32 7, !dbg !970
  %48 = load i32, ptr %47, align 4, !dbg !970
  %49 = icmp slt i32 %45, %48, !dbg !971
  br i1 %49, label %50, label %62, !dbg !972

50:                                               ; preds = %44
  %51 = load ptr, ptr %3, align 8, !dbg !973
  %52 = call i32 @getc(ptr noundef %51), !dbg !975
  %53 = trunc i32 %52 to i8, !dbg !976
  %54 = load ptr, ptr %2, align 8, !dbg !977
  %55 = getelementptr inbounds nuw %struct._tga_source_struct, ptr %54, i32 0, i32 6, !dbg !978
  %56 = load i32, ptr %4, align 4, !dbg !979
  %57 = sext i32 %56 to i64, !dbg !977
  %58 = getelementptr inbounds [4 x i8], ptr %55, i64 0, i64 %57, !dbg !977
  store i8 %53, ptr %58, align 1, !dbg !980
  br label %59, !dbg !981

59:                                               ; preds = %50
  %60 = load i32, ptr %4, align 4, !dbg !982
  %61 = add nsw i32 %60, 1, !dbg !982
  store i32 %61, ptr %4, align 4, !dbg !982
  br label %44, !dbg !983, !llvm.loop !984

62:                                               ; preds = %13, %44
  ret void, !dbg !986
}

; Function Attrs: noinline nounwind uwtable
define internal void @read_non_rle_pixel(ptr noundef %0) #0 !dbg !987 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !988, !DIExpression(), !989)
    #dbg_declare(ptr %3, !990, !DIExpression(), !991)
  %5 = load ptr, ptr %2, align 8, !dbg !992
  %6 = getelementptr inbounds nuw %struct._tga_source_struct, ptr %5, i32 0, i32 0, !dbg !993
  %7 = getelementptr inbounds nuw %struct.cjpeg_source_struct, ptr %6, i32 0, i32 3, !dbg !994
  %8 = load ptr, ptr %7, align 8, !dbg !994
  store ptr %8, ptr %3, align 8, !dbg !991
    #dbg_declare(ptr %4, !995, !DIExpression(), !996)
  store i32 0, ptr %4, align 4, !dbg !997
  br label %9, !dbg !999

9:                                                ; preds = %24, %1
  %10 = load i32, ptr %4, align 4, !dbg !1000
  %11 = load ptr, ptr %2, align 8, !dbg !1002
  %12 = getelementptr inbounds nuw %struct._tga_source_struct, ptr %11, i32 0, i32 7, !dbg !1003
  %13 = load i32, ptr %12, align 4, !dbg !1003
  %14 = icmp slt i32 %10, %13, !dbg !1004
  br i1 %14, label %15, label %27, !dbg !1005

15:                                               ; preds = %9
  %16 = load ptr, ptr %3, align 8, !dbg !1006
  %17 = call i32 @getc(ptr noundef %16), !dbg !1008
  %18 = trunc i32 %17 to i8, !dbg !1009
  %19 = load ptr, ptr %2, align 8, !dbg !1010
  %20 = getelementptr inbounds nuw %struct._tga_source_struct, ptr %19, i32 0, i32 6, !dbg !1011
  %21 = load i32, ptr %4, align 4, !dbg !1012
  %22 = sext i32 %21 to i64, !dbg !1010
  %23 = getelementptr inbounds [4 x i8], ptr %20, i64 0, i64 %22, !dbg !1010
  store i8 %18, ptr %23, align 1, !dbg !1013
  br label %24, !dbg !1014

24:                                               ; preds = %15
  %25 = load i32, ptr %4, align 4, !dbg !1015
  %26 = add nsw i32 %25, 1, !dbg !1015
  store i32 %26, ptr %4, align 4, !dbg !1015
  br label %9, !dbg !1016, !llvm.loop !1017

27:                                               ; preds = %9
  ret void, !dbg !1019
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @get_8bit_row(ptr noundef %0, ptr noundef %1) #0 !dbg !1020 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !1021, !DIExpression(), !1022)
  store ptr %1, ptr %4, align 8
    #dbg_declare(ptr %4, !1023, !DIExpression(), !1024)
    #dbg_declare(ptr %5, !1025, !DIExpression(), !1026)
  %10 = load ptr, ptr %4, align 8, !dbg !1027
  store ptr %10, ptr %5, align 8, !dbg !1026
    #dbg_declare(ptr %6, !1028, !DIExpression(), !1029)
    #dbg_declare(ptr %7, !1030, !DIExpression(), !1031)
    #dbg_declare(ptr %8, !1032, !DIExpression(), !1033)
    #dbg_declare(ptr %9, !1034, !DIExpression(), !1035)
  %11 = load ptr, ptr %5, align 8, !dbg !1036
  %12 = getelementptr inbounds nuw %struct._tga_source_struct, ptr %11, i32 0, i32 2, !dbg !1037
  %13 = load ptr, ptr %12, align 8, !dbg !1037
  store ptr %13, ptr %9, align 8, !dbg !1035
  %14 = load ptr, ptr %5, align 8, !dbg !1038
  %15 = getelementptr inbounds nuw %struct._tga_source_struct, ptr %14, i32 0, i32 0, !dbg !1039
  %16 = getelementptr inbounds nuw %struct.cjpeg_source_struct, ptr %15, i32 0, i32 4, !dbg !1040
  %17 = load ptr, ptr %16, align 8, !dbg !1040
  %18 = getelementptr inbounds ptr, ptr %17, i64 0, !dbg !1038
  %19 = load ptr, ptr %18, align 8, !dbg !1038
  store ptr %19, ptr %7, align 8, !dbg !1041
  %20 = load ptr, ptr %3, align 8, !dbg !1042
  %21 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %20, i32 0, i32 6, !dbg !1044
  %22 = load i32, ptr %21, align 8, !dbg !1044
  store i32 %22, ptr %8, align 4, !dbg !1045
  br label %23, !dbg !1046

23:                                               ; preds = %63, %2
  %24 = load i32, ptr %8, align 4, !dbg !1047
  %25 = icmp ugt i32 %24, 0, !dbg !1049
  br i1 %25, label %26, label %66, !dbg !1050

26:                                               ; preds = %23
  %27 = load ptr, ptr %5, align 8, !dbg !1051
  %28 = getelementptr inbounds nuw %struct._tga_source_struct, ptr %27, i32 0, i32 5, !dbg !1053
  %29 = load ptr, ptr %28, align 8, !dbg !1053
  %30 = load ptr, ptr %5, align 8, !dbg !1054
  call void %29(ptr noundef %30), !dbg !1055
  %31 = load ptr, ptr %5, align 8, !dbg !1056
  %32 = getelementptr inbounds nuw %struct._tga_source_struct, ptr %31, i32 0, i32 6, !dbg !1056
  %33 = getelementptr inbounds [4 x i8], ptr %32, i64 0, i64 0, !dbg !1056
  %34 = load i8, ptr %33, align 8, !dbg !1056
  %35 = zext i8 %34 to i32, !dbg !1056
  store i32 %35, ptr %6, align 4, !dbg !1057
  %36 = load ptr, ptr %9, align 8, !dbg !1058
  %37 = getelementptr inbounds ptr, ptr %36, i64 0, !dbg !1058
  %38 = load ptr, ptr %37, align 8, !dbg !1058
  %39 = load i32, ptr %6, align 4, !dbg !1059
  %40 = sext i32 %39 to i64, !dbg !1058
  %41 = getelementptr inbounds i8, ptr %38, i64 %40, !dbg !1058
  %42 = load i8, ptr %41, align 1, !dbg !1058
  %43 = load ptr, ptr %7, align 8, !dbg !1060
  %44 = getelementptr inbounds nuw i8, ptr %43, i32 1, !dbg !1060
  store ptr %44, ptr %7, align 8, !dbg !1060
  store i8 %42, ptr %43, align 1, !dbg !1061
  %45 = load ptr, ptr %9, align 8, !dbg !1062
  %46 = getelementptr inbounds ptr, ptr %45, i64 1, !dbg !1062
  %47 = load ptr, ptr %46, align 8, !dbg !1062
  %48 = load i32, ptr %6, align 4, !dbg !1063
  %49 = sext i32 %48 to i64, !dbg !1062
  %50 = getelementptr inbounds i8, ptr %47, i64 %49, !dbg !1062
  %51 = load i8, ptr %50, align 1, !dbg !1062
  %52 = load ptr, ptr %7, align 8, !dbg !1064
  %53 = getelementptr inbounds nuw i8, ptr %52, i32 1, !dbg !1064
  store ptr %53, ptr %7, align 8, !dbg !1064
  store i8 %51, ptr %52, align 1, !dbg !1065
  %54 = load ptr, ptr %9, align 8, !dbg !1066
  %55 = getelementptr inbounds ptr, ptr %54, i64 2, !dbg !1066
  %56 = load ptr, ptr %55, align 8, !dbg !1066
  %57 = load i32, ptr %6, align 4, !dbg !1067
  %58 = sext i32 %57 to i64, !dbg !1066
  %59 = getelementptr inbounds i8, ptr %56, i64 %58, !dbg !1066
  %60 = load i8, ptr %59, align 1, !dbg !1066
  %61 = load ptr, ptr %7, align 8, !dbg !1068
  %62 = getelementptr inbounds nuw i8, ptr %61, i32 1, !dbg !1068
  store ptr %62, ptr %7, align 8, !dbg !1068
  store i8 %60, ptr %61, align 1, !dbg !1069
  br label %63, !dbg !1070

63:                                               ; preds = %26
  %64 = load i32, ptr %8, align 4, !dbg !1071
  %65 = add i32 %64, -1, !dbg !1071
  store i32 %65, ptr %8, align 4, !dbg !1071
  br label %23, !dbg !1072, !llvm.loop !1073

66:                                               ; preds = %23
  ret i32 1, !dbg !1075
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @get_16bit_row(ptr noundef %0, ptr noundef %1) #0 !dbg !1076 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !1077, !DIExpression(), !1078)
  store ptr %1, ptr %4, align 8
    #dbg_declare(ptr %4, !1079, !DIExpression(), !1080)
    #dbg_declare(ptr %5, !1081, !DIExpression(), !1082)
  %9 = load ptr, ptr %4, align 8, !dbg !1083
  store ptr %9, ptr %5, align 8, !dbg !1082
    #dbg_declare(ptr %6, !1084, !DIExpression(), !1085)
    #dbg_declare(ptr %7, !1086, !DIExpression(), !1087)
    #dbg_declare(ptr %8, !1088, !DIExpression(), !1089)
  %10 = load ptr, ptr %5, align 8, !dbg !1090
  %11 = getelementptr inbounds nuw %struct._tga_source_struct, ptr %10, i32 0, i32 0, !dbg !1091
  %12 = getelementptr inbounds nuw %struct.cjpeg_source_struct, ptr %11, i32 0, i32 4, !dbg !1092
  %13 = load ptr, ptr %12, align 8, !dbg !1092
  %14 = getelementptr inbounds ptr, ptr %13, i64 0, !dbg !1090
  %15 = load ptr, ptr %14, align 8, !dbg !1090
  store ptr %15, ptr %7, align 8, !dbg !1093
  %16 = load ptr, ptr %3, align 8, !dbg !1094
  %17 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %16, i32 0, i32 6, !dbg !1096
  %18 = load i32, ptr %17, align 8, !dbg !1096
  store i32 %18, ptr %8, align 4, !dbg !1097
  br label %19, !dbg !1098

19:                                               ; preds = %67, %2
  %20 = load i32, ptr %8, align 4, !dbg !1099
  %21 = icmp ugt i32 %20, 0, !dbg !1101
  br i1 %21, label %22, label %70, !dbg !1102

22:                                               ; preds = %19
  %23 = load ptr, ptr %5, align 8, !dbg !1103
  %24 = getelementptr inbounds nuw %struct._tga_source_struct, ptr %23, i32 0, i32 5, !dbg !1105
  %25 = load ptr, ptr %24, align 8, !dbg !1105
  %26 = load ptr, ptr %5, align 8, !dbg !1106
  call void %25(ptr noundef %26), !dbg !1107
  %27 = load ptr, ptr %5, align 8, !dbg !1108
  %28 = getelementptr inbounds nuw %struct._tga_source_struct, ptr %27, i32 0, i32 6, !dbg !1108
  %29 = getelementptr inbounds [4 x i8], ptr %28, i64 0, i64 0, !dbg !1108
  %30 = load i8, ptr %29, align 8, !dbg !1108
  %31 = zext i8 %30 to i32, !dbg !1108
  store i32 %31, ptr %6, align 4, !dbg !1109
  %32 = load ptr, ptr %5, align 8, !dbg !1110
  %33 = getelementptr inbounds nuw %struct._tga_source_struct, ptr %32, i32 0, i32 6, !dbg !1110
  %34 = getelementptr inbounds [4 x i8], ptr %33, i64 0, i64 1, !dbg !1110
  %35 = load i8, ptr %34, align 1, !dbg !1110
  %36 = zext i8 %35 to i32, !dbg !1110
  %37 = shl i32 %36, 8, !dbg !1111
  %38 = load i32, ptr %6, align 4, !dbg !1112
  %39 = add nsw i32 %38, %37, !dbg !1112
  store i32 %39, ptr %6, align 4, !dbg !1112
  %40 = load i32, ptr %6, align 4, !dbg !1113
  %41 = and i32 %40, 31, !dbg !1114
  %42 = sext i32 %41 to i64, !dbg !1115
  %43 = getelementptr inbounds [32 x i8], ptr @c5to8bits, i64 0, i64 %42, !dbg !1115
  %44 = load i8, ptr %43, align 1, !dbg !1115
  %45 = load ptr, ptr %7, align 8, !dbg !1116
  %46 = getelementptr inbounds i8, ptr %45, i64 2, !dbg !1116
  store i8 %44, ptr %46, align 1, !dbg !1117
  %47 = load i32, ptr %6, align 4, !dbg !1118
  %48 = ashr i32 %47, 5, !dbg !1118
  store i32 %48, ptr %6, align 4, !dbg !1118
  %49 = load i32, ptr %6, align 4, !dbg !1119
  %50 = and i32 %49, 31, !dbg !1120
  %51 = sext i32 %50 to i64, !dbg !1121
  %52 = getelementptr inbounds [32 x i8], ptr @c5to8bits, i64 0, i64 %51, !dbg !1121
  %53 = load i8, ptr %52, align 1, !dbg !1121
  %54 = load ptr, ptr %7, align 8, !dbg !1122
  %55 = getelementptr inbounds i8, ptr %54, i64 1, !dbg !1122
  store i8 %53, ptr %55, align 1, !dbg !1123
  %56 = load i32, ptr %6, align 4, !dbg !1124
  %57 = ashr i32 %56, 5, !dbg !1124
  store i32 %57, ptr %6, align 4, !dbg !1124
  %58 = load i32, ptr %6, align 4, !dbg !1125
  %59 = and i32 %58, 31, !dbg !1126
  %60 = sext i32 %59 to i64, !dbg !1127
  %61 = getelementptr inbounds [32 x i8], ptr @c5to8bits, i64 0, i64 %60, !dbg !1127
  %62 = load i8, ptr %61, align 1, !dbg !1127
  %63 = load ptr, ptr %7, align 8, !dbg !1128
  %64 = getelementptr inbounds i8, ptr %63, i64 0, !dbg !1128
  store i8 %62, ptr %64, align 1, !dbg !1129
  %65 = load ptr, ptr %7, align 8, !dbg !1130
  %66 = getelementptr inbounds i8, ptr %65, i64 3, !dbg !1130
  store ptr %66, ptr %7, align 8, !dbg !1130
  br label %67, !dbg !1131

67:                                               ; preds = %22
  %68 = load i32, ptr %8, align 4, !dbg !1132
  %69 = add i32 %68, -1, !dbg !1132
  store i32 %69, ptr %8, align 4, !dbg !1132
  br label %19, !dbg !1133, !llvm.loop !1134

70:                                               ; preds = %19
  ret i32 1, !dbg !1136
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @get_24bit_row(ptr noundef %0, ptr noundef %1) #0 !dbg !1137 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !1138, !DIExpression(), !1139)
  store ptr %1, ptr %4, align 8
    #dbg_declare(ptr %4, !1140, !DIExpression(), !1141)
    #dbg_declare(ptr %5, !1142, !DIExpression(), !1143)
  %8 = load ptr, ptr %4, align 8, !dbg !1144
  store ptr %8, ptr %5, align 8, !dbg !1143
    #dbg_declare(ptr %6, !1145, !DIExpression(), !1146)
    #dbg_declare(ptr %7, !1147, !DIExpression(), !1148)
  %9 = load ptr, ptr %5, align 8, !dbg !1149
  %10 = getelementptr inbounds nuw %struct._tga_source_struct, ptr %9, i32 0, i32 0, !dbg !1150
  %11 = getelementptr inbounds nuw %struct.cjpeg_source_struct, ptr %10, i32 0, i32 4, !dbg !1151
  %12 = load ptr, ptr %11, align 8, !dbg !1151
  %13 = getelementptr inbounds ptr, ptr %12, i64 0, !dbg !1149
  %14 = load ptr, ptr %13, align 8, !dbg !1149
  store ptr %14, ptr %6, align 8, !dbg !1152
  %15 = load ptr, ptr %3, align 8, !dbg !1153
  %16 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %15, i32 0, i32 6, !dbg !1155
  %17 = load i32, ptr %16, align 8, !dbg !1155
  store i32 %17, ptr %7, align 4, !dbg !1156
  br label %18, !dbg !1157

18:                                               ; preds = %50, %2
  %19 = load i32, ptr %7, align 4, !dbg !1158
  %20 = icmp ugt i32 %19, 0, !dbg !1160
  br i1 %20, label %21, label %53, !dbg !1161

21:                                               ; preds = %18
  %22 = load ptr, ptr %5, align 8, !dbg !1162
  %23 = getelementptr inbounds nuw %struct._tga_source_struct, ptr %22, i32 0, i32 5, !dbg !1164
  %24 = load ptr, ptr %23, align 8, !dbg !1164
  %25 = load ptr, ptr %5, align 8, !dbg !1165
  call void %24(ptr noundef %25), !dbg !1166
  %26 = load ptr, ptr %5, align 8, !dbg !1167
  %27 = getelementptr inbounds nuw %struct._tga_source_struct, ptr %26, i32 0, i32 6, !dbg !1167
  %28 = getelementptr inbounds [4 x i8], ptr %27, i64 0, i64 2, !dbg !1167
  %29 = load i8, ptr %28, align 2, !dbg !1167
  %30 = zext i8 %29 to i32, !dbg !1167
  %31 = trunc i32 %30 to i8, !dbg !1168
  %32 = load ptr, ptr %6, align 8, !dbg !1169
  %33 = getelementptr inbounds nuw i8, ptr %32, i32 1, !dbg !1169
  store ptr %33, ptr %6, align 8, !dbg !1169
  store i8 %31, ptr %32, align 1, !dbg !1170
  %34 = load ptr, ptr %5, align 8, !dbg !1171
  %35 = getelementptr inbounds nuw %struct._tga_source_struct, ptr %34, i32 0, i32 6, !dbg !1171
  %36 = getelementptr inbounds [4 x i8], ptr %35, i64 0, i64 1, !dbg !1171
  %37 = load i8, ptr %36, align 1, !dbg !1171
  %38 = zext i8 %37 to i32, !dbg !1171
  %39 = trunc i32 %38 to i8, !dbg !1172
  %40 = load ptr, ptr %6, align 8, !dbg !1173
  %41 = getelementptr inbounds nuw i8, ptr %40, i32 1, !dbg !1173
  store ptr %41, ptr %6, align 8, !dbg !1173
  store i8 %39, ptr %40, align 1, !dbg !1174
  %42 = load ptr, ptr %5, align 8, !dbg !1175
  %43 = getelementptr inbounds nuw %struct._tga_source_struct, ptr %42, i32 0, i32 6, !dbg !1175
  %44 = getelementptr inbounds [4 x i8], ptr %43, i64 0, i64 0, !dbg !1175
  %45 = load i8, ptr %44, align 8, !dbg !1175
  %46 = zext i8 %45 to i32, !dbg !1175
  %47 = trunc i32 %46 to i8, !dbg !1176
  %48 = load ptr, ptr %6, align 8, !dbg !1177
  %49 = getelementptr inbounds nuw i8, ptr %48, i32 1, !dbg !1177
  store ptr %49, ptr %6, align 8, !dbg !1177
  store i8 %47, ptr %48, align 1, !dbg !1178
  br label %50, !dbg !1179

50:                                               ; preds = %21
  %51 = load i32, ptr %7, align 4, !dbg !1180
  %52 = add i32 %51, -1, !dbg !1180
  store i32 %52, ptr %7, align 4, !dbg !1180
  br label %18, !dbg !1181, !llvm.loop !1182

53:                                               ; preds = %18
  ret i32 1, !dbg !1184
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @get_8bit_gray_row(ptr noundef %0, ptr noundef %1) #0 !dbg !1185 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !1186, !DIExpression(), !1187)
  store ptr %1, ptr %4, align 8
    #dbg_declare(ptr %4, !1188, !DIExpression(), !1189)
    #dbg_declare(ptr %5, !1190, !DIExpression(), !1191)
  %8 = load ptr, ptr %4, align 8, !dbg !1192
  store ptr %8, ptr %5, align 8, !dbg !1191
    #dbg_declare(ptr %6, !1193, !DIExpression(), !1194)
    #dbg_declare(ptr %7, !1195, !DIExpression(), !1196)
  %9 = load ptr, ptr %5, align 8, !dbg !1197
  %10 = getelementptr inbounds nuw %struct._tga_source_struct, ptr %9, i32 0, i32 0, !dbg !1198
  %11 = getelementptr inbounds nuw %struct.cjpeg_source_struct, ptr %10, i32 0, i32 4, !dbg !1199
  %12 = load ptr, ptr %11, align 8, !dbg !1199
  %13 = getelementptr inbounds ptr, ptr %12, i64 0, !dbg !1197
  %14 = load ptr, ptr %13, align 8, !dbg !1197
  store ptr %14, ptr %6, align 8, !dbg !1200
  %15 = load ptr, ptr %3, align 8, !dbg !1201
  %16 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %15, i32 0, i32 6, !dbg !1203
  %17 = load i32, ptr %16, align 8, !dbg !1203
  store i32 %17, ptr %7, align 4, !dbg !1204
  br label %18, !dbg !1205

18:                                               ; preds = %34, %2
  %19 = load i32, ptr %7, align 4, !dbg !1206
  %20 = icmp ugt i32 %19, 0, !dbg !1208
  br i1 %20, label %21, label %37, !dbg !1209

21:                                               ; preds = %18
  %22 = load ptr, ptr %5, align 8, !dbg !1210
  %23 = getelementptr inbounds nuw %struct._tga_source_struct, ptr %22, i32 0, i32 5, !dbg !1212
  %24 = load ptr, ptr %23, align 8, !dbg !1212
  %25 = load ptr, ptr %5, align 8, !dbg !1213
  call void %24(ptr noundef %25), !dbg !1214
  %26 = load ptr, ptr %5, align 8, !dbg !1215
  %27 = getelementptr inbounds nuw %struct._tga_source_struct, ptr %26, i32 0, i32 6, !dbg !1215
  %28 = getelementptr inbounds [4 x i8], ptr %27, i64 0, i64 0, !dbg !1215
  %29 = load i8, ptr %28, align 8, !dbg !1215
  %30 = zext i8 %29 to i32, !dbg !1215
  %31 = trunc i32 %30 to i8, !dbg !1216
  %32 = load ptr, ptr %6, align 8, !dbg !1217
  %33 = getelementptr inbounds nuw i8, ptr %32, i32 1, !dbg !1217
  store ptr %33, ptr %6, align 8, !dbg !1217
  store i8 %31, ptr %32, align 1, !dbg !1218
  br label %34, !dbg !1219

34:                                               ; preds = %21
  %35 = load i32, ptr %7, align 4, !dbg !1220
  %36 = add i32 %35, -1, !dbg !1220
  store i32 %36, ptr %7, align 4, !dbg !1220
  br label %18, !dbg !1221, !llvm.loop !1222

37:                                               ; preds = %18
  ret i32 1, !dbg !1224
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @preload_image(ptr noundef %0, ptr noundef %1) #0 !dbg !1225 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !1226, !DIExpression(), !1227)
  store ptr %1, ptr %4, align 8
    #dbg_declare(ptr %4, !1228, !DIExpression(), !1229)
    #dbg_declare(ptr %5, !1230, !DIExpression(), !1231)
  %8 = load ptr, ptr %4, align 8, !dbg !1232
  store ptr %8, ptr %5, align 8, !dbg !1231
    #dbg_declare(ptr %6, !1233, !DIExpression(), !1234)
    #dbg_declare(ptr %7, !1235, !DIExpression(), !1236)
  %9 = load ptr, ptr %3, align 8, !dbg !1237
  %10 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %9, i32 0, i32 2, !dbg !1238
  %11 = load ptr, ptr %10, align 8, !dbg !1238
  store ptr %11, ptr %7, align 8, !dbg !1236
  store i32 0, ptr %6, align 4, !dbg !1239
  br label %12, !dbg !1241

12:                                               ; preds = %60, %2
  %13 = load i32, ptr %6, align 4, !dbg !1242
  %14 = load ptr, ptr %3, align 8, !dbg !1244
  %15 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %14, i32 0, i32 7, !dbg !1245
  %16 = load i32, ptr %15, align 4, !dbg !1245
  %17 = icmp ult i32 %13, %16, !dbg !1246
  br i1 %17, label %18, label %63, !dbg !1247

18:                                               ; preds = %12
  %19 = load ptr, ptr %7, align 8, !dbg !1248
  %20 = icmp ne ptr %19, null, !dbg !1251
  br i1 %20, label %21, label %39, !dbg !1251

21:                                               ; preds = %18
  %22 = load i32, ptr %6, align 4, !dbg !1252
  %23 = zext i32 %22 to i64, !dbg !1254
  %24 = load ptr, ptr %7, align 8, !dbg !1255
  %25 = getelementptr inbounds nuw %struct.cdjpeg_progress_mgr, ptr %24, i32 0, i32 0, !dbg !1256
  %26 = getelementptr inbounds nuw %struct.jpeg_progress_mgr, ptr %25, i32 0, i32 1, !dbg !1257
  store i64 %23, ptr %26, align 8, !dbg !1258
  %27 = load ptr, ptr %3, align 8, !dbg !1259
  %28 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %27, i32 0, i32 7, !dbg !1260
  %29 = load i32, ptr %28, align 4, !dbg !1260
  %30 = zext i32 %29 to i64, !dbg !1261
  %31 = load ptr, ptr %7, align 8, !dbg !1262
  %32 = getelementptr inbounds nuw %struct.cdjpeg_progress_mgr, ptr %31, i32 0, i32 0, !dbg !1263
  %33 = getelementptr inbounds nuw %struct.jpeg_progress_mgr, ptr %32, i32 0, i32 2, !dbg !1264
  store i64 %30, ptr %33, align 8, !dbg !1265
  %34 = load ptr, ptr %7, align 8, !dbg !1266
  %35 = getelementptr inbounds nuw %struct.cdjpeg_progress_mgr, ptr %34, i32 0, i32 0, !dbg !1267
  %36 = getelementptr inbounds nuw %struct.jpeg_progress_mgr, ptr %35, i32 0, i32 0, !dbg !1268
  %37 = load ptr, ptr %36, align 8, !dbg !1268
  %38 = load ptr, ptr %3, align 8, !dbg !1269
  call void %37(ptr noundef %38), !dbg !1270
  br label %39, !dbg !1271

39:                                               ; preds = %21, %18
  %40 = load ptr, ptr %3, align 8, !dbg !1272
  %41 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %40, i32 0, i32 1, !dbg !1273
  %42 = load ptr, ptr %41, align 8, !dbg !1273
  %43 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %42, i32 0, i32 7, !dbg !1274
  %44 = load ptr, ptr %43, align 8, !dbg !1274
  %45 = load ptr, ptr %3, align 8, !dbg !1275
  %46 = load ptr, ptr %5, align 8, !dbg !1276
  %47 = getelementptr inbounds nuw %struct._tga_source_struct, ptr %46, i32 0, i32 3, !dbg !1277
  %48 = load ptr, ptr %47, align 8, !dbg !1277
  %49 = load i32, ptr %6, align 4, !dbg !1278
  %50 = call ptr %44(ptr noundef %45, ptr noundef %48, i32 noundef %49, i32 noundef 1, i32 noundef 1), !dbg !1279
  %51 = load ptr, ptr %5, align 8, !dbg !1280
  %52 = getelementptr inbounds nuw %struct._tga_source_struct, ptr %51, i32 0, i32 0, !dbg !1281
  %53 = getelementptr inbounds nuw %struct.cjpeg_source_struct, ptr %52, i32 0, i32 4, !dbg !1282
  store ptr %50, ptr %53, align 8, !dbg !1283
  %54 = load ptr, ptr %5, align 8, !dbg !1284
  %55 = getelementptr inbounds nuw %struct._tga_source_struct, ptr %54, i32 0, i32 10, !dbg !1285
  %56 = load ptr, ptr %55, align 8, !dbg !1285
  %57 = load ptr, ptr %3, align 8, !dbg !1286
  %58 = load ptr, ptr %4, align 8, !dbg !1287
  %59 = call i32 %56(ptr noundef %57, ptr noundef %58), !dbg !1288
  br label %60, !dbg !1289

60:                                               ; preds = %39
  %61 = load i32, ptr %6, align 4, !dbg !1290
  %62 = add i32 %61, 1, !dbg !1290
  store i32 %62, ptr %6, align 4, !dbg !1290
  br label %12, !dbg !1291, !llvm.loop !1292

63:                                               ; preds = %12
  %64 = load ptr, ptr %7, align 8, !dbg !1294
  %65 = icmp ne ptr %64, null, !dbg !1296
  br i1 %65, label %66, label %71, !dbg !1296

66:                                               ; preds = %63
  %67 = load ptr, ptr %7, align 8, !dbg !1297
  %68 = getelementptr inbounds nuw %struct.cdjpeg_progress_mgr, ptr %67, i32 0, i32 1, !dbg !1298
  %69 = load i32, ptr %68, align 8, !dbg !1299
  %70 = add nsw i32 %69, 1, !dbg !1299
  store i32 %70, ptr %68, align 8, !dbg !1299
  br label %71, !dbg !1297

71:                                               ; preds = %66, %63
  %72 = load ptr, ptr %5, align 8, !dbg !1300
  %73 = getelementptr inbounds nuw %struct._tga_source_struct, ptr %72, i32 0, i32 0, !dbg !1301
  %74 = getelementptr inbounds nuw %struct.cjpeg_source_struct, ptr %73, i32 0, i32 1, !dbg !1302
  store ptr @get_memory_row, ptr %74, align 8, !dbg !1303
  %75 = load ptr, ptr %5, align 8, !dbg !1304
  %76 = getelementptr inbounds nuw %struct._tga_source_struct, ptr %75, i32 0, i32 4, !dbg !1305
  store i32 0, ptr %76, align 8, !dbg !1306
  %77 = load ptr, ptr %3, align 8, !dbg !1307
  %78 = load ptr, ptr %4, align 8, !dbg !1308
  %79 = call i32 @get_memory_row(ptr noundef %77, ptr noundef %78), !dbg !1309
  ret i32 %79, !dbg !1310
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @read_byte(ptr noundef %0) #0 !dbg !1311 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !1314, !DIExpression(), !1315)
    #dbg_declare(ptr %3, !1316, !DIExpression(), !1317)
  %5 = load ptr, ptr %2, align 8, !dbg !1318
  %6 = getelementptr inbounds nuw %struct._tga_source_struct, ptr %5, i32 0, i32 0, !dbg !1319
  %7 = getelementptr inbounds nuw %struct.cjpeg_source_struct, ptr %6, i32 0, i32 3, !dbg !1320
  %8 = load ptr, ptr %7, align 8, !dbg !1320
  store ptr %8, ptr %3, align 8, !dbg !1317
    #dbg_declare(ptr %4, !1321, !DIExpression(), !1322)
  %9 = load ptr, ptr %3, align 8, !dbg !1323
  %10 = call i32 @getc(ptr noundef %9), !dbg !1325
  store i32 %10, ptr %4, align 4, !dbg !1326
  %11 = icmp eq i32 %10, -1, !dbg !1327
  br i1 %11, label %12, label %29, !dbg !1327

12:                                               ; preds = %1
  %13 = load ptr, ptr %2, align 8, !dbg !1328
  %14 = getelementptr inbounds nuw %struct._tga_source_struct, ptr %13, i32 0, i32 1, !dbg !1328
  %15 = load ptr, ptr %14, align 8, !dbg !1328
  %16 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %15, i32 0, i32 0, !dbg !1328
  %17 = load ptr, ptr %16, align 8, !dbg !1328
  %18 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %17, i32 0, i32 5, !dbg !1328
  store i32 42, ptr %18, align 8, !dbg !1328
  %19 = load ptr, ptr %2, align 8, !dbg !1328
  %20 = getelementptr inbounds nuw %struct._tga_source_struct, ptr %19, i32 0, i32 1, !dbg !1328
  %21 = load ptr, ptr %20, align 8, !dbg !1328
  %22 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %21, i32 0, i32 0, !dbg !1328
  %23 = load ptr, ptr %22, align 8, !dbg !1328
  %24 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %23, i32 0, i32 0, !dbg !1328
  %25 = load ptr, ptr %24, align 8, !dbg !1328
  %26 = load ptr, ptr %2, align 8, !dbg !1328
  %27 = getelementptr inbounds nuw %struct._tga_source_struct, ptr %26, i32 0, i32 1, !dbg !1328
  %28 = load ptr, ptr %27, align 8, !dbg !1328
  call void %25(ptr noundef %28), !dbg !1328
  br label %29, !dbg !1328

29:                                               ; preds = %12, %1
  %30 = load i32, ptr %4, align 4, !dbg !1329
  ret i32 %30, !dbg !1330
}

; Function Attrs: noinline nounwind uwtable
define internal void @read_colormap(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 !dbg !1331 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
    #dbg_declare(ptr %4, !1334, !DIExpression(), !1335)
  store i32 %1, ptr %5, align 4
    #dbg_declare(ptr %5, !1336, !DIExpression(), !1337)
  store i32 %2, ptr %6, align 4
    #dbg_declare(ptr %6, !1338, !DIExpression(), !1339)
    #dbg_declare(ptr %7, !1340, !DIExpression(), !1341)
  %8 = load i32, ptr %6, align 4, !dbg !1342
  %9 = icmp ne i32 %8, 24, !dbg !1344
  br i1 %9, label %10, label %27, !dbg !1344

10:                                               ; preds = %3
  %11 = load ptr, ptr %4, align 8, !dbg !1345
  %12 = getelementptr inbounds nuw %struct._tga_source_struct, ptr %11, i32 0, i32 1, !dbg !1345
  %13 = load ptr, ptr %12, align 8, !dbg !1345
  %14 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %13, i32 0, i32 0, !dbg !1345
  %15 = load ptr, ptr %14, align 8, !dbg !1345
  %16 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %15, i32 0, i32 5, !dbg !1345
  store i32 1032, ptr %16, align 8, !dbg !1345
  %17 = load ptr, ptr %4, align 8, !dbg !1345
  %18 = getelementptr inbounds nuw %struct._tga_source_struct, ptr %17, i32 0, i32 1, !dbg !1345
  %19 = load ptr, ptr %18, align 8, !dbg !1345
  %20 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %19, i32 0, i32 0, !dbg !1345
  %21 = load ptr, ptr %20, align 8, !dbg !1345
  %22 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %21, i32 0, i32 0, !dbg !1345
  %23 = load ptr, ptr %22, align 8, !dbg !1345
  %24 = load ptr, ptr %4, align 8, !dbg !1345
  %25 = getelementptr inbounds nuw %struct._tga_source_struct, ptr %24, i32 0, i32 1, !dbg !1345
  %26 = load ptr, ptr %25, align 8, !dbg !1345
  call void %23(ptr noundef %26), !dbg !1345
  br label %27, !dbg !1345

27:                                               ; preds = %10, %3
  store i32 0, ptr %7, align 4, !dbg !1346
  br label %28, !dbg !1348

28:                                               ; preds = %66, %27
  %29 = load i32, ptr %7, align 4, !dbg !1349
  %30 = load i32, ptr %5, align 4, !dbg !1351
  %31 = icmp slt i32 %29, %30, !dbg !1352
  br i1 %31, label %32, label %69, !dbg !1353

32:                                               ; preds = %28
  %33 = load ptr, ptr %4, align 8, !dbg !1354
  %34 = call i32 @read_byte(ptr noundef %33), !dbg !1356
  %35 = trunc i32 %34 to i8, !dbg !1357
  %36 = load ptr, ptr %4, align 8, !dbg !1358
  %37 = getelementptr inbounds nuw %struct._tga_source_struct, ptr %36, i32 0, i32 2, !dbg !1359
  %38 = load ptr, ptr %37, align 8, !dbg !1359
  %39 = getelementptr inbounds ptr, ptr %38, i64 2, !dbg !1358
  %40 = load ptr, ptr %39, align 8, !dbg !1358
  %41 = load i32, ptr %7, align 4, !dbg !1360
  %42 = sext i32 %41 to i64, !dbg !1358
  %43 = getelementptr inbounds i8, ptr %40, i64 %42, !dbg !1358
  store i8 %35, ptr %43, align 1, !dbg !1361
  %44 = load ptr, ptr %4, align 8, !dbg !1362
  %45 = call i32 @read_byte(ptr noundef %44), !dbg !1363
  %46 = trunc i32 %45 to i8, !dbg !1364
  %47 = load ptr, ptr %4, align 8, !dbg !1365
  %48 = getelementptr inbounds nuw %struct._tga_source_struct, ptr %47, i32 0, i32 2, !dbg !1366
  %49 = load ptr, ptr %48, align 8, !dbg !1366
  %50 = getelementptr inbounds ptr, ptr %49, i64 1, !dbg !1365
  %51 = load ptr, ptr %50, align 8, !dbg !1365
  %52 = load i32, ptr %7, align 4, !dbg !1367
  %53 = sext i32 %52 to i64, !dbg !1365
  %54 = getelementptr inbounds i8, ptr %51, i64 %53, !dbg !1365
  store i8 %46, ptr %54, align 1, !dbg !1368
  %55 = load ptr, ptr %4, align 8, !dbg !1369
  %56 = call i32 @read_byte(ptr noundef %55), !dbg !1370
  %57 = trunc i32 %56 to i8, !dbg !1371
  %58 = load ptr, ptr %4, align 8, !dbg !1372
  %59 = getelementptr inbounds nuw %struct._tga_source_struct, ptr %58, i32 0, i32 2, !dbg !1373
  %60 = load ptr, ptr %59, align 8, !dbg !1373
  %61 = getelementptr inbounds ptr, ptr %60, i64 0, !dbg !1372
  %62 = load ptr, ptr %61, align 8, !dbg !1372
  %63 = load i32, ptr %7, align 4, !dbg !1374
  %64 = sext i32 %63 to i64, !dbg !1372
  %65 = getelementptr inbounds i8, ptr %62, i64 %64, !dbg !1372
  store i8 %57, ptr %65, align 1, !dbg !1375
  br label %66, !dbg !1376

66:                                               ; preds = %32
  %67 = load i32, ptr %7, align 4, !dbg !1377
  %68 = add nsw i32 %67, 1, !dbg !1377
  store i32 %68, ptr %7, align 4, !dbg !1377
  br label %28, !dbg !1378, !llvm.loop !1379

69:                                               ; preds = %28
  ret void, !dbg !1381
}

declare i32 @getc(ptr noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @get_memory_row(ptr noundef %0, ptr noundef %1) #0 !dbg !1382 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !1383, !DIExpression(), !1384)
  store ptr %1, ptr %4, align 8
    #dbg_declare(ptr %4, !1385, !DIExpression(), !1386)
    #dbg_declare(ptr %5, !1387, !DIExpression(), !1388)
  %7 = load ptr, ptr %4, align 8, !dbg !1389
  store ptr %7, ptr %5, align 8, !dbg !1388
    #dbg_declare(ptr %6, !1390, !DIExpression(), !1391)
  %8 = load ptr, ptr %3, align 8, !dbg !1392
  %9 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %8, i32 0, i32 7, !dbg !1393
  %10 = load i32, ptr %9, align 4, !dbg !1393
  %11 = load ptr, ptr %5, align 8, !dbg !1394
  %12 = getelementptr inbounds nuw %struct._tga_source_struct, ptr %11, i32 0, i32 4, !dbg !1395
  %13 = load i32, ptr %12, align 8, !dbg !1395
  %14 = sub i32 %10, %13, !dbg !1396
  %15 = sub i32 %14, 1, !dbg !1397
  store i32 %15, ptr %6, align 4, !dbg !1398
  %16 = load ptr, ptr %3, align 8, !dbg !1399
  %17 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %16, i32 0, i32 1, !dbg !1400
  %18 = load ptr, ptr %17, align 8, !dbg !1400
  %19 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %18, i32 0, i32 7, !dbg !1401
  %20 = load ptr, ptr %19, align 8, !dbg !1401
  %21 = load ptr, ptr %3, align 8, !dbg !1402
  %22 = load ptr, ptr %5, align 8, !dbg !1403
  %23 = getelementptr inbounds nuw %struct._tga_source_struct, ptr %22, i32 0, i32 3, !dbg !1404
  %24 = load ptr, ptr %23, align 8, !dbg !1404
  %25 = load i32, ptr %6, align 4, !dbg !1405
  %26 = call ptr %20(ptr noundef %21, ptr noundef %24, i32 noundef %25, i32 noundef 1, i32 noundef 0), !dbg !1406
  %27 = load ptr, ptr %5, align 8, !dbg !1407
  %28 = getelementptr inbounds nuw %struct._tga_source_struct, ptr %27, i32 0, i32 0, !dbg !1408
  %29 = getelementptr inbounds nuw %struct.cjpeg_source_struct, ptr %28, i32 0, i32 4, !dbg !1409
  store ptr %26, ptr %29, align 8, !dbg !1410
  %30 = load ptr, ptr %5, align 8, !dbg !1411
  %31 = getelementptr inbounds nuw %struct._tga_source_struct, ptr %30, i32 0, i32 4, !dbg !1412
  %32 = load i32, ptr %31, align 8, !dbg !1413
  %33 = add i32 %32, 1, !dbg !1413
  store i32 %33, ptr %31, align 8, !dbg !1413
  ret i32 1, !dbg !1414
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!594, !595, !596, !597, !598, !599, !600}
!llvm.ident = !{!601}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "c5to8bits", scope: !2, file: !3, line: 78, type: !590, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !191, globals: !589, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "cBench/consumer_jpeg_c/src/rdtarga.c", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "b522b32beda6a075f8d1bccfb66aa094")
!4 = !{!5, !15, !20, !144}
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
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !21, line: 33, baseType: !7, size: 32, elements: !22)
!21 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jerror.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "a232f2460ff0049c960896e323d8710b")
!22 = !{!23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143}
!23 = !DIEnumerator(name: "JMSG_NOMESSAGE", value: 0)
!24 = !DIEnumerator(name: "JERR_ARITH_NOTIMPL", value: 1)
!25 = !DIEnumerator(name: "JERR_BAD_ALIGN_TYPE", value: 2)
!26 = !DIEnumerator(name: "JERR_BAD_ALLOC_CHUNK", value: 3)
!27 = !DIEnumerator(name: "JERR_BAD_BUFFER_MODE", value: 4)
!28 = !DIEnumerator(name: "JERR_BAD_COMPONENT_ID", value: 5)
!29 = !DIEnumerator(name: "JERR_BAD_DCTSIZE", value: 6)
!30 = !DIEnumerator(name: "JERR_BAD_IN_COLORSPACE", value: 7)
!31 = !DIEnumerator(name: "JERR_BAD_J_COLORSPACE", value: 8)
!32 = !DIEnumerator(name: "JERR_BAD_LENGTH", value: 9)
!33 = !DIEnumerator(name: "JERR_BAD_LIB_VERSION", value: 10)
!34 = !DIEnumerator(name: "JERR_BAD_MCU_SIZE", value: 11)
!35 = !DIEnumerator(name: "JERR_BAD_POOL_ID", value: 12)
!36 = !DIEnumerator(name: "JERR_BAD_PRECISION", value: 13)
!37 = !DIEnumerator(name: "JERR_BAD_PROGRESSION", value: 14)
!38 = !DIEnumerator(name: "JERR_BAD_PROG_SCRIPT", value: 15)
!39 = !DIEnumerator(name: "JERR_BAD_SAMPLING", value: 16)
!40 = !DIEnumerator(name: "JERR_BAD_SCAN_SCRIPT", value: 17)
!41 = !DIEnumerator(name: "JERR_BAD_STATE", value: 18)
!42 = !DIEnumerator(name: "JERR_BAD_STRUCT_SIZE", value: 19)
!43 = !DIEnumerator(name: "JERR_BAD_VIRTUAL_ACCESS", value: 20)
!44 = !DIEnumerator(name: "JERR_BUFFER_SIZE", value: 21)
!45 = !DIEnumerator(name: "JERR_CANT_SUSPEND", value: 22)
!46 = !DIEnumerator(name: "JERR_CCIR601_NOTIMPL", value: 23)
!47 = !DIEnumerator(name: "JERR_COMPONENT_COUNT", value: 24)
!48 = !DIEnumerator(name: "JERR_CONVERSION_NOTIMPL", value: 25)
!49 = !DIEnumerator(name: "JERR_DAC_INDEX", value: 26)
!50 = !DIEnumerator(name: "JERR_DAC_VALUE", value: 27)
!51 = !DIEnumerator(name: "JERR_DHT_COUNTS", value: 28)
!52 = !DIEnumerator(name: "JERR_DHT_INDEX", value: 29)
!53 = !DIEnumerator(name: "JERR_DQT_INDEX", value: 30)
!54 = !DIEnumerator(name: "JERR_EMPTY_IMAGE", value: 31)
!55 = !DIEnumerator(name: "JERR_EMS_READ", value: 32)
!56 = !DIEnumerator(name: "JERR_EMS_WRITE", value: 33)
!57 = !DIEnumerator(name: "JERR_EOI_EXPECTED", value: 34)
!58 = !DIEnumerator(name: "JERR_FILE_READ", value: 35)
!59 = !DIEnumerator(name: "JERR_FILE_WRITE", value: 36)
!60 = !DIEnumerator(name: "JERR_FRACT_SAMPLE_NOTIMPL", value: 37)
!61 = !DIEnumerator(name: "JERR_HUFF_CLEN_OVERFLOW", value: 38)
!62 = !DIEnumerator(name: "JERR_HUFF_MISSING_CODE", value: 39)
!63 = !DIEnumerator(name: "JERR_IMAGE_TOO_BIG", value: 40)
!64 = !DIEnumerator(name: "JERR_INPUT_EMPTY", value: 41)
!65 = !DIEnumerator(name: "JERR_INPUT_EOF", value: 42)
!66 = !DIEnumerator(name: "JERR_MISMATCHED_QUANT_TABLE", value: 43)
!67 = !DIEnumerator(name: "JERR_MISSING_DATA", value: 44)
!68 = !DIEnumerator(name: "JERR_MODE_CHANGE", value: 45)
!69 = !DIEnumerator(name: "JERR_NOTIMPL", value: 46)
!70 = !DIEnumerator(name: "JERR_NOT_COMPILED", value: 47)
!71 = !DIEnumerator(name: "JERR_NO_BACKING_STORE", value: 48)
!72 = !DIEnumerator(name: "JERR_NO_HUFF_TABLE", value: 49)
!73 = !DIEnumerator(name: "JERR_NO_IMAGE", value: 50)
!74 = !DIEnumerator(name: "JERR_NO_QUANT_TABLE", value: 51)
!75 = !DIEnumerator(name: "JERR_NO_SOI", value: 52)
!76 = !DIEnumerator(name: "JERR_OUT_OF_MEMORY", value: 53)
!77 = !DIEnumerator(name: "JERR_QUANT_COMPONENTS", value: 54)
!78 = !DIEnumerator(name: "JERR_QUANT_FEW_COLORS", value: 55)
!79 = !DIEnumerator(name: "JERR_QUANT_MANY_COLORS", value: 56)
!80 = !DIEnumerator(name: "JERR_SOF_DUPLICATE", value: 57)
!81 = !DIEnumerator(name: "JERR_SOF_NO_SOS", value: 58)
!82 = !DIEnumerator(name: "JERR_SOF_UNSUPPORTED", value: 59)
!83 = !DIEnumerator(name: "JERR_SOI_DUPLICATE", value: 60)
!84 = !DIEnumerator(name: "JERR_SOS_NO_SOF", value: 61)
!85 = !DIEnumerator(name: "JERR_TFILE_CREATE", value: 62)
!86 = !DIEnumerator(name: "JERR_TFILE_READ", value: 63)
!87 = !DIEnumerator(name: "JERR_TFILE_SEEK", value: 64)
!88 = !DIEnumerator(name: "JERR_TFILE_WRITE", value: 65)
!89 = !DIEnumerator(name: "JERR_TOO_LITTLE_DATA", value: 66)
!90 = !DIEnumerator(name: "JERR_UNKNOWN_MARKER", value: 67)
!91 = !DIEnumerator(name: "JERR_VIRTUAL_BUG", value: 68)
!92 = !DIEnumerator(name: "JERR_WIDTH_OVERFLOW", value: 69)
!93 = !DIEnumerator(name: "JERR_XMS_READ", value: 70)
!94 = !DIEnumerator(name: "JERR_XMS_WRITE", value: 71)
!95 = !DIEnumerator(name: "JMSG_COPYRIGHT", value: 72)
!96 = !DIEnumerator(name: "JMSG_VERSION", value: 73)
!97 = !DIEnumerator(name: "JTRC_16BIT_TABLES", value: 74)
!98 = !DIEnumerator(name: "JTRC_ADOBE", value: 75)
!99 = !DIEnumerator(name: "JTRC_APP0", value: 76)
!100 = !DIEnumerator(name: "JTRC_APP14", value: 77)
!101 = !DIEnumerator(name: "JTRC_DAC", value: 78)
!102 = !DIEnumerator(name: "JTRC_DHT", value: 79)
!103 = !DIEnumerator(name: "JTRC_DQT", value: 80)
!104 = !DIEnumerator(name: "JTRC_DRI", value: 81)
!105 = !DIEnumerator(name: "JTRC_EMS_CLOSE", value: 82)
!106 = !DIEnumerator(name: "JTRC_EMS_OPEN", value: 83)
!107 = !DIEnumerator(name: "JTRC_EOI", value: 84)
!108 = !DIEnumerator(name: "JTRC_HUFFBITS", value: 85)
!109 = !DIEnumerator(name: "JTRC_JFIF", value: 86)
!110 = !DIEnumerator(name: "JTRC_JFIF_BADTHUMBNAILSIZE", value: 87)
!111 = !DIEnumerator(name: "JTRC_JFIF_MINOR", value: 88)
!112 = !DIEnumerator(name: "JTRC_JFIF_THUMBNAIL", value: 89)
!113 = !DIEnumerator(name: "JTRC_MISC_MARKER", value: 90)
!114 = !DIEnumerator(name: "JTRC_PARMLESS_MARKER", value: 91)
!115 = !DIEnumerator(name: "JTRC_QUANTVALS", value: 92)
!116 = !DIEnumerator(name: "JTRC_QUANT_3_NCOLORS", value: 93)
!117 = !DIEnumerator(name: "JTRC_QUANT_NCOLORS", value: 94)
!118 = !DIEnumerator(name: "JTRC_QUANT_SELECTED", value: 95)
!119 = !DIEnumerator(name: "JTRC_RECOVERY_ACTION", value: 96)
!120 = !DIEnumerator(name: "JTRC_RST", value: 97)
!121 = !DIEnumerator(name: "JTRC_SMOOTH_NOTIMPL", value: 98)
!122 = !DIEnumerator(name: "JTRC_SOF", value: 99)
!123 = !DIEnumerator(name: "JTRC_SOF_COMPONENT", value: 100)
!124 = !DIEnumerator(name: "JTRC_SOI", value: 101)
!125 = !DIEnumerator(name: "JTRC_SOS", value: 102)
!126 = !DIEnumerator(name: "JTRC_SOS_COMPONENT", value: 103)
!127 = !DIEnumerator(name: "JTRC_SOS_PARAMS", value: 104)
!128 = !DIEnumerator(name: "JTRC_TFILE_CLOSE", value: 105)
!129 = !DIEnumerator(name: "JTRC_TFILE_OPEN", value: 106)
!130 = !DIEnumerator(name: "JTRC_UNKNOWN_IDS", value: 107)
!131 = !DIEnumerator(name: "JTRC_XMS_CLOSE", value: 108)
!132 = !DIEnumerator(name: "JTRC_XMS_OPEN", value: 109)
!133 = !DIEnumerator(name: "JWRN_ADOBE_XFORM", value: 110)
!134 = !DIEnumerator(name: "JWRN_BOGUS_PROGRESSION", value: 111)
!135 = !DIEnumerator(name: "JWRN_EXTRANEOUS_DATA", value: 112)
!136 = !DIEnumerator(name: "JWRN_HIT_MARKER", value: 113)
!137 = !DIEnumerator(name: "JWRN_HUFF_BAD_CODE", value: 114)
!138 = !DIEnumerator(name: "JWRN_JFIF_MAJOR", value: 115)
!139 = !DIEnumerator(name: "JWRN_JPEG_EOF", value: 116)
!140 = !DIEnumerator(name: "JWRN_MUST_RESYNC", value: 117)
!141 = !DIEnumerator(name: "JWRN_NOT_SEQUENTIAL", value: 118)
!142 = !DIEnumerator(name: "JWRN_TOO_MUCH_DATA", value: 119)
!143 = !DIEnumerator(name: "JMSG_LASTMSGCODE", value: 120)
!144 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !145, line: 33, baseType: !7, size: 32, elements: !146)
!145 = !DIFile(filename: "cBench/consumer_jpeg_c/src/cderror.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "023c024f882773b78143e7b16d959dcc")
!146 = !{!147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190}
!147 = !DIEnumerator(name: "JMSG_FIRSTADDONCODE", value: 1000)
!148 = !DIEnumerator(name: "JERR_BMP_BADCMAP", value: 1001)
!149 = !DIEnumerator(name: "JERR_BMP_BADDEPTH", value: 1002)
!150 = !DIEnumerator(name: "JERR_BMP_BADHEADER", value: 1003)
!151 = !DIEnumerator(name: "JERR_BMP_BADPLANES", value: 1004)
!152 = !DIEnumerator(name: "JERR_BMP_COLORSPACE", value: 1005)
!153 = !DIEnumerator(name: "JERR_BMP_COMPRESSED", value: 1006)
!154 = !DIEnumerator(name: "JERR_BMP_NOT", value: 1007)
!155 = !DIEnumerator(name: "JTRC_BMP", value: 1008)
!156 = !DIEnumerator(name: "JTRC_BMP_MAPPED", value: 1009)
!157 = !DIEnumerator(name: "JTRC_BMP_OS2", value: 1010)
!158 = !DIEnumerator(name: "JTRC_BMP_OS2_MAPPED", value: 1011)
!159 = !DIEnumerator(name: "JERR_GIF_BUG", value: 1012)
!160 = !DIEnumerator(name: "JERR_GIF_CODESIZE", value: 1013)
!161 = !DIEnumerator(name: "JERR_GIF_COLORSPACE", value: 1014)
!162 = !DIEnumerator(name: "JERR_GIF_IMAGENOTFOUND", value: 1015)
!163 = !DIEnumerator(name: "JERR_GIF_NOT", value: 1016)
!164 = !DIEnumerator(name: "JTRC_GIF", value: 1017)
!165 = !DIEnumerator(name: "JTRC_GIF_BADVERSION", value: 1018)
!166 = !DIEnumerator(name: "JTRC_GIF_EXTENSION", value: 1019)
!167 = !DIEnumerator(name: "JTRC_GIF_NONSQUARE", value: 1020)
!168 = !DIEnumerator(name: "JWRN_GIF_BADDATA", value: 1021)
!169 = !DIEnumerator(name: "JWRN_GIF_CHAR", value: 1022)
!170 = !DIEnumerator(name: "JWRN_GIF_ENDCODE", value: 1023)
!171 = !DIEnumerator(name: "JWRN_GIF_NOMOREDATA", value: 1024)
!172 = !DIEnumerator(name: "JERR_PPM_COLORSPACE", value: 1025)
!173 = !DIEnumerator(name: "JERR_PPM_NONNUMERIC", value: 1026)
!174 = !DIEnumerator(name: "JERR_PPM_NOT", value: 1027)
!175 = !DIEnumerator(name: "JTRC_PGM", value: 1028)
!176 = !DIEnumerator(name: "JTRC_PGM_TEXT", value: 1029)
!177 = !DIEnumerator(name: "JTRC_PPM", value: 1030)
!178 = !DIEnumerator(name: "JTRC_PPM_TEXT", value: 1031)
!179 = !DIEnumerator(name: "JERR_TGA_BADCMAP", value: 1032)
!180 = !DIEnumerator(name: "JERR_TGA_BADPARMS", value: 1033)
!181 = !DIEnumerator(name: "JERR_TGA_COLORSPACE", value: 1034)
!182 = !DIEnumerator(name: "JTRC_TGA", value: 1035)
!183 = !DIEnumerator(name: "JTRC_TGA_GRAY", value: 1036)
!184 = !DIEnumerator(name: "JTRC_TGA_MAPPED", value: 1037)
!185 = !DIEnumerator(name: "JERR_BAD_CMAP_FILE", value: 1038)
!186 = !DIEnumerator(name: "JERR_TOO_MANY_COLORS", value: 1039)
!187 = !DIEnumerator(name: "JERR_UNGETC_FAILED", value: 1040)
!188 = !DIEnumerator(name: "JERR_UNKNOWN_FORMAT", value: 1041)
!189 = !DIEnumerator(name: "JERR_UNSUPPORTED_FORMAT", value: 1042)
!190 = !DIEnumerator(name: "JMSG_LASTADDONCODE", value: 1043)
!191 = !{!192, !216, !231, !502, !229, !230, !7, !246, !581, !576, !243, !291}
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "tga_source_ptr", file: !3, line: 46, baseType: !193)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_tga_source_struct", file: !3, line: 48, size: 896, elements: !195)
!195 = !{!196, !566, !567, !568, !569, !570, !574, !577, !578, !579, !580}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "pub", scope: !194, file: !3, line: 49, baseType: !197, size: 384)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cjpeg_source_struct", file: !198, line: 26, size: 384, elements: !199)
!198 = !DIFile(filename: "cBench/consumer_jpeg_c/src/cdjpeg.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "bced6b83fac9f9ba4577dcff987736ac")
!199 = !{!200, !504, !508, !509, !564, !565}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "start_input", scope: !197, file: !198, line: 27, baseType: !201, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = !DISubroutineType(types: !203)
!203 = !{null, !204, !502}
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "j_compress_ptr", file: !6, line: 249, baseType: !205)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_compress_struct", file: !6, line: 255, size: 3968, elements: !207)
!207 = !{!208, !335, !336, !337, !338, !339, !356, !357, !358, !359, !361, !363, !364, !365, !366, !401, !405, !421, !422, !426, !427, !428, !429, !442, !443, !444, !445, !446, !447, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !464, !465, !466, !467, !471, !472, !473, !474, !475, !478, !481, !484, !487, !490, !493, !496, !499}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !206, file: !6, line: 256, baseType: !209, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_error_mgr", file: !6, line: 618, size: 1344, elements: !211)
!211 = !{!212, !303, !304, !305, !311, !312, !313, !324, !325, !326, !331, !332, !333, !334}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "error_exit", scope: !210, file: !6, line: 620, baseType: !213, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DISubroutineType(types: !215)
!215 = !{null, !216}
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "j_common_ptr", file: !6, line: 248, baseType: !217)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_common_struct", file: !6, line: 240, size: 256, elements: !219)
!219 = !{!220, !221, !292, !301, !302}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !218, file: !6, line: 241, baseType: !209, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !218, file: !6, line: 241, baseType: !222, size: 64, offset: 64)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_memory_mgr", file: !6, line: 731, size: 768, elements: !224)
!224 = !{!225, !234, !235, !247, !261, !269, !276, !277, !281, !285, !289, !290}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_small", scope: !223, file: !6, line: 733, baseType: !226, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = !DISubroutineType(types: !228)
!228 = !{!229, !216, !230, !231}
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!230 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !232, line: 18, baseType: !233)
!232 = !DIFile(filename: "/usr/local/lib/clang/20/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!233 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_large", scope: !223, file: !6, line: 735, baseType: !226, size: 64, offset: 64)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_sarray", scope: !223, file: !6, line: 737, baseType: !236, size: 64, offset: 128)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = !DISubroutineType(types: !238)
!238 = !{!239, !216, !230, !246, !246}
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPARRAY", file: !6, line: 67, baseType: !240)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPROW", file: !6, line: 66, baseType: !242)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPLE", file: !244, line: 59, baseType: !245)
!244 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jmorecfg.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "56a0eda58fafa6bdd5498f702a998c09")
!245 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "JDIMENSION", file: !244, line: 171, baseType: !7)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_barray", scope: !223, file: !6, line: 740, baseType: !248, size: 64, offset: 192)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DISubroutineType(types: !250)
!250 = !{!251, !216, !230, !246, !246}
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "JBLOCKARRAY", file: !6, line: 72, baseType: !252)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "JBLOCKROW", file: !6, line: 71, baseType: !254)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "JBLOCK", file: !6, line: 70, baseType: !256)
!256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !257, size: 1024, elements: !259)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "JCOEF", file: !244, line: 99, baseType: !258)
!258 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!259 = !{!260}
!260 = !DISubrange(count: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "request_virt_sarray", scope: !223, file: !6, line: 743, baseType: !262, size: 64, offset: 256)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = !DISubroutineType(types: !264)
!264 = !{!265, !216, !230, !268, !246, !246, !246}
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "jvirt_sarray_ptr", file: !6, line: 727, baseType: !266)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = !DICompositeType(tag: DW_TAG_structure_type, name: "jvirt_sarray_control", file: !6, line: 727, flags: DIFlagFwdDecl)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "boolean", file: !244, line: 227, baseType: !230)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "request_virt_barray", scope: !223, file: !6, line: 749, baseType: !270, size: 64, offset: 320)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = !DISubroutineType(types: !272)
!272 = !{!273, !216, !230, !268, !246, !246, !246}
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "jvirt_barray_ptr", file: !6, line: 728, baseType: !274)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = !DICompositeType(tag: DW_TAG_structure_type, name: "jvirt_barray_control", file: !6, line: 728, flags: DIFlagFwdDecl)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "realize_virt_arrays", scope: !223, file: !6, line: 755, baseType: !213, size: 64, offset: 384)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "access_virt_sarray", scope: !223, file: !6, line: 756, baseType: !278, size: 64, offset: 448)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = !DISubroutineType(types: !280)
!280 = !{!239, !216, !265, !246, !246, !268}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "access_virt_barray", scope: !223, file: !6, line: 761, baseType: !282, size: 64, offset: 512)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DISubroutineType(types: !284)
!284 = !{!251, !216, !273, !246, !246, !268}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "free_pool", scope: !223, file: !6, line: 766, baseType: !286, size: 64, offset: 576)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = !DISubroutineType(types: !288)
!288 = !{null, !216, !230}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "self_destruct", scope: !223, file: !6, line: 767, baseType: !213, size: 64, offset: 640)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "max_memory_to_use", scope: !223, file: !6, line: 774, baseType: !291, size: 64, offset: 704)
!291 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "progress", scope: !218, file: !6, line: 241, baseType: !293, size: 64, offset: 128)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_progress_mgr", file: !6, line: 676, size: 256, elements: !295)
!295 = !{!296, !297, !298, !299, !300}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "progress_monitor", scope: !294, file: !6, line: 677, baseType: !213, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "pass_counter", scope: !294, file: !6, line: 679, baseType: !291, size: 64, offset: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "pass_limit", scope: !294, file: !6, line: 680, baseType: !291, size: 64, offset: 128)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "completed_passes", scope: !294, file: !6, line: 681, baseType: !230, size: 32, offset: 192)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "total_passes", scope: !294, file: !6, line: 682, baseType: !230, size: 32, offset: 224)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "is_decompressor", scope: !218, file: !6, line: 241, baseType: !268, size: 32, offset: 192)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "global_state", scope: !218, file: !6, line: 241, baseType: !230, size: 32, offset: 224)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "emit_message", scope: !210, file: !6, line: 622, baseType: !286, size: 64, offset: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "output_message", scope: !210, file: !6, line: 624, baseType: !213, size: 64, offset: 128)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "format_message", scope: !210, file: !6, line: 626, baseType: !306, size: 64, offset: 192)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = !DISubroutineType(types: !308)
!308 = !{null, !216, !309}
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "reset_error_mgr", scope: !210, file: !6, line: 629, baseType: !213, size: 64, offset: 256)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "msg_code", scope: !210, file: !6, line: 634, baseType: !230, size: 32, offset: 320)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "msg_parm", scope: !210, file: !6, line: 639, baseType: !314, size: 640, offset: 352)
!314 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !210, file: !6, line: 636, size: 640, elements: !315)
!315 = !{!316, !320}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !314, file: !6, line: 637, baseType: !317, size: 256)
!317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !230, size: 256, elements: !318)
!318 = !{!319}
!319 = !DISubrange(count: 8)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !314, file: !6, line: 638, baseType: !321, size: 640)
!321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !310, size: 640, elements: !322)
!322 = !{!323}
!323 = !DISubrange(count: 80)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "trace_level", scope: !210, file: !6, line: 643, baseType: !230, size: 32, offset: 992)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "num_warnings", scope: !210, file: !6, line: 651, baseType: !291, size: 64, offset: 1024)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "jpeg_message_table", scope: !210, file: !6, line: 663, baseType: !327, size: 64, offset: 1088)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !329)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !310)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "last_jpeg_message", scope: !210, file: !6, line: 664, baseType: !230, size: 32, offset: 1152)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "addon_message_table", scope: !210, file: !6, line: 668, baseType: !327, size: 64, offset: 1216)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "first_addon_message", scope: !210, file: !6, line: 669, baseType: !230, size: 32, offset: 1280)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "last_addon_message", scope: !210, file: !6, line: 670, baseType: !230, size: 32, offset: 1312)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !206, file: !6, line: 256, baseType: !222, size: 64, offset: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "progress", scope: !206, file: !6, line: 256, baseType: !293, size: 64, offset: 128)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "is_decompressor", scope: !206, file: !6, line: 256, baseType: !268, size: 32, offset: 192)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "global_state", scope: !206, file: !6, line: 256, baseType: !230, size: 32, offset: 224)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !206, file: !6, line: 259, baseType: !340, size: 64, offset: 256)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_destination_mgr", file: !6, line: 688, size: 320, elements: !342)
!342 = !{!343, !346, !347, !351, !355}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "next_output_byte", scope: !341, file: !6, line: 689, baseType: !344, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "JOCTET", file: !244, line: 110, baseType: !245)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "free_in_buffer", scope: !341, file: !6, line: 690, baseType: !231, size: 64, offset: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "init_destination", scope: !341, file: !6, line: 692, baseType: !348, size: 64, offset: 128)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = !DISubroutineType(types: !350)
!350 = !{null, !204}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "empty_output_buffer", scope: !341, file: !6, line: 693, baseType: !352, size: 64, offset: 192)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = !DISubroutineType(types: !354)
!354 = !{!268, !204}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "term_destination", scope: !341, file: !6, line: 694, baseType: !348, size: 64, offset: 256)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "image_width", scope: !206, file: !6, line: 266, baseType: !246, size: 32, offset: 320)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "image_height", scope: !206, file: !6, line: 267, baseType: !246, size: 32, offset: 352)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "input_components", scope: !206, file: !6, line: 268, baseType: !230, size: 32, offset: 384)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "in_color_space", scope: !206, file: !6, line: 269, baseType: !360, size: 32, offset: 416)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_COLOR_SPACE", file: !6, line: 201, baseType: !5)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "input_gamma", scope: !206, file: !6, line: 271, baseType: !362, size: 64, offset: 448)
!362 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "data_precision", scope: !206, file: !6, line: 281, baseType: !230, size: 32, offset: 512)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "num_components", scope: !206, file: !6, line: 283, baseType: !230, size: 32, offset: 544)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "jpeg_color_space", scope: !206, file: !6, line: 284, baseType: !360, size: 32, offset: 576)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "comp_info", scope: !206, file: !6, line: 286, baseType: !367, size: 64, offset: 640)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "jpeg_component_info", file: !6, line: 179, baseType: !369)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 116, size: 768, elements: !370)
!370 = !{!371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !400}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "component_id", scope: !369, file: !6, line: 120, baseType: !230, size: 32)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "component_index", scope: !369, file: !6, line: 121, baseType: !230, size: 32, offset: 32)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "h_samp_factor", scope: !369, file: !6, line: 122, baseType: !230, size: 32, offset: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "v_samp_factor", scope: !369, file: !6, line: 123, baseType: !230, size: 32, offset: 96)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "quant_tbl_no", scope: !369, file: !6, line: 124, baseType: !230, size: 32, offset: 128)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "dc_tbl_no", scope: !369, file: !6, line: 129, baseType: !230, size: 32, offset: 160)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tbl_no", scope: !369, file: !6, line: 130, baseType: !230, size: 32, offset: 192)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "width_in_blocks", scope: !369, file: !6, line: 139, baseType: !246, size: 32, offset: 224)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "height_in_blocks", scope: !369, file: !6, line: 140, baseType: !246, size: 32, offset: 256)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "DCT_scaled_size", scope: !369, file: !6, line: 147, baseType: !230, size: 32, offset: 288)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "downsampled_width", scope: !369, file: !6, line: 154, baseType: !246, size: 32, offset: 320)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "downsampled_height", scope: !369, file: !6, line: 155, baseType: !246, size: 32, offset: 352)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "component_needed", scope: !369, file: !6, line: 160, baseType: !268, size: 32, offset: 384)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_width", scope: !369, file: !6, line: 164, baseType: !230, size: 32, offset: 416)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_height", scope: !369, file: !6, line: 165, baseType: !230, size: 32, offset: 448)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_blocks", scope: !369, file: !6, line: 166, baseType: !230, size: 32, offset: 480)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_sample_width", scope: !369, file: !6, line: 167, baseType: !230, size: 32, offset: 512)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "last_col_width", scope: !369, file: !6, line: 168, baseType: !230, size: 32, offset: 544)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "last_row_height", scope: !369, file: !6, line: 169, baseType: !230, size: 32, offset: 576)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "quant_table", scope: !369, file: !6, line: 175, baseType: !391, size: 64, offset: 640)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "JQUANT_TBL", file: !6, line: 95, baseType: !393)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 83, size: 1056, elements: !394)
!394 = !{!395, !399}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "quantval", scope: !393, file: !6, line: 88, baseType: !396, size: 1024)
!396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !397, size: 1024, elements: !259)
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT16", file: !244, line: 147, baseType: !398)
!398 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "sent_table", scope: !393, file: !6, line: 94, baseType: !268, size: 32, offset: 1024)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "dct_table", scope: !369, file: !6, line: 178, baseType: !229, size: 64, offset: 704)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "quant_tbl_ptrs", scope: !206, file: !6, line: 289, baseType: !402, size: 256, offset: 704)
!402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !391, size: 256, elements: !403)
!403 = !{!404}
!404 = !DISubrange(count: 4)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "dc_huff_tbl_ptrs", scope: !206, file: !6, line: 292, baseType: !406, size: 256, offset: 960)
!406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !407, size: 256, elements: !403)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "JHUFF_TBL", file: !6, line: 111, baseType: !409)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 100, size: 2240, elements: !410)
!410 = !{!411, !416, !420}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !409, file: !6, line: 102, baseType: !412, size: 136)
!412 = !DICompositeType(tag: DW_TAG_array_type, baseType: !413, size: 136, elements: !414)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT8", file: !244, line: 135, baseType: !245)
!414 = !{!415}
!415 = !DISubrange(count: 17)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "huffval", scope: !409, file: !6, line: 104, baseType: !417, size: 2048, offset: 136)
!417 = !DICompositeType(tag: DW_TAG_array_type, baseType: !413, size: 2048, elements: !418)
!418 = !{!419}
!419 = !DISubrange(count: 256)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "sent_table", scope: !409, file: !6, line: 110, baseType: !268, size: 32, offset: 2208)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "ac_huff_tbl_ptrs", scope: !206, file: !6, line: 293, baseType: !406, size: 256, offset: 1216)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "arith_dc_L", scope: !206, file: !6, line: 296, baseType: !423, size: 128, offset: 1472)
!423 = !DICompositeType(tag: DW_TAG_array_type, baseType: !413, size: 128, elements: !424)
!424 = !{!425}
!425 = !DISubrange(count: 16)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "arith_dc_U", scope: !206, file: !6, line: 297, baseType: !423, size: 128, offset: 1600)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "arith_ac_K", scope: !206, file: !6, line: 298, baseType: !423, size: 128, offset: 1728)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "num_scans", scope: !206, file: !6, line: 300, baseType: !230, size: 32, offset: 1856)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "scan_info", scope: !206, file: !6, line: 301, baseType: !430, size: 64, offset: 1920)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !432)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "jpeg_scan_info", file: !6, line: 189, baseType: !433)
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 184, size: 288, elements: !434)
!434 = !{!435, !436, !438, !439, !440, !441}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "comps_in_scan", scope: !433, file: !6, line: 185, baseType: !230, size: 32)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "component_index", scope: !433, file: !6, line: 186, baseType: !437, size: 128, offset: 32)
!437 = !DICompositeType(tag: DW_TAG_array_type, baseType: !230, size: 128, elements: !403)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "Ss", scope: !433, file: !6, line: 187, baseType: !230, size: 32, offset: 160)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "Se", scope: !433, file: !6, line: 187, baseType: !230, size: 32, offset: 192)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "Ah", scope: !433, file: !6, line: 188, baseType: !230, size: 32, offset: 224)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "Al", scope: !433, file: !6, line: 188, baseType: !230, size: 32, offset: 256)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "raw_data_in", scope: !206, file: !6, line: 307, baseType: !268, size: 32, offset: 1984)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "arith_code", scope: !206, file: !6, line: 308, baseType: !268, size: 32, offset: 2016)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_coding", scope: !206, file: !6, line: 309, baseType: !268, size: 32, offset: 2048)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "CCIR601_sampling", scope: !206, file: !6, line: 310, baseType: !268, size: 32, offset: 2080)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "smoothing_factor", scope: !206, file: !6, line: 311, baseType: !230, size: 32, offset: 2112)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "dct_method", scope: !206, file: !6, line: 312, baseType: !448, size: 32, offset: 2144)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_DCT_METHOD", file: !6, line: 209, baseType: !15)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "restart_interval", scope: !206, file: !6, line: 319, baseType: !7, size: 32, offset: 2176)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "restart_in_rows", scope: !206, file: !6, line: 320, baseType: !230, size: 32, offset: 2208)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "write_JFIF_header", scope: !206, file: !6, line: 324, baseType: !268, size: 32, offset: 2240)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "density_unit", scope: !206, file: !6, line: 329, baseType: !413, size: 8, offset: 2272)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "X_density", scope: !206, file: !6, line: 330, baseType: !397, size: 16, offset: 2288)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "Y_density", scope: !206, file: !6, line: 331, baseType: !397, size: 16, offset: 2304)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "write_Adobe_marker", scope: !206, file: !6, line: 332, baseType: !268, size: 32, offset: 2336)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "next_scanline", scope: !206, file: !6, line: 339, baseType: !246, size: 32, offset: 2368)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "progressive_mode", scope: !206, file: !6, line: 348, baseType: !268, size: 32, offset: 2400)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "max_h_samp_factor", scope: !206, file: !6, line: 349, baseType: !230, size: 32, offset: 2432)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "max_v_samp_factor", scope: !206, file: !6, line: 350, baseType: !230, size: 32, offset: 2464)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "total_iMCU_rows", scope: !206, file: !6, line: 352, baseType: !246, size: 32, offset: 2496)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "comps_in_scan", scope: !206, file: !6, line: 363, baseType: !230, size: 32, offset: 2528)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "cur_comp_info", scope: !206, file: !6, line: 364, baseType: !463, size: 256, offset: 2560)
!463 = !DICompositeType(tag: DW_TAG_array_type, baseType: !367, size: 256, elements: !403)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "MCUs_per_row", scope: !206, file: !6, line: 367, baseType: !246, size: 32, offset: 2816)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_rows_in_scan", scope: !206, file: !6, line: 368, baseType: !246, size: 32, offset: 2848)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "blocks_in_MCU", scope: !206, file: !6, line: 370, baseType: !230, size: 32, offset: 2880)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_membership", scope: !206, file: !6, line: 371, baseType: !468, size: 320, offset: 2912)
!468 = !DICompositeType(tag: DW_TAG_array_type, baseType: !230, size: 320, elements: !469)
!469 = !{!470}
!470 = !DISubrange(count: 10)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "Ss", scope: !206, file: !6, line: 375, baseType: !230, size: 32, offset: 3232)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "Se", scope: !206, file: !6, line: 375, baseType: !230, size: 32, offset: 3264)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "Ah", scope: !206, file: !6, line: 375, baseType: !230, size: 32, offset: 3296)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "Al", scope: !206, file: !6, line: 375, baseType: !230, size: 32, offset: 3328)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !206, file: !6, line: 380, baseType: !476, size: 64, offset: 3392)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_comp_master", file: !6, line: 380, flags: DIFlagFwdDecl)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "main", scope: !206, file: !6, line: 381, baseType: !479, size: 64, offset: 3456)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_c_main_controller", file: !6, line: 381, flags: DIFlagFwdDecl)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "prep", scope: !206, file: !6, line: 382, baseType: !482, size: 64, offset: 3520)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_c_prep_controller", file: !6, line: 382, flags: DIFlagFwdDecl)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "coef", scope: !206, file: !6, line: 383, baseType: !485, size: 64, offset: 3584)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_c_coef_controller", file: !6, line: 383, flags: DIFlagFwdDecl)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "marker", scope: !206, file: !6, line: 384, baseType: !488, size: 64, offset: 3648)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_marker_writer", file: !6, line: 384, flags: DIFlagFwdDecl)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "cconvert", scope: !206, file: !6, line: 385, baseType: !491, size: 64, offset: 3712)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_color_converter", file: !6, line: 385, flags: DIFlagFwdDecl)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "downsample", scope: !206, file: !6, line: 386, baseType: !494, size: 64, offset: 3776)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_downsampler", file: !6, line: 386, flags: DIFlagFwdDecl)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "fdct", scope: !206, file: !6, line: 387, baseType: !497, size: 64, offset: 3840)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_forward_dct", file: !6, line: 387, flags: DIFlagFwdDecl)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "entropy", scope: !206, file: !6, line: 388, baseType: !500, size: 64, offset: 3904)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_entropy_encoder", file: !6, line: 388, flags: DIFlagFwdDecl)
!502 = !DIDerivedType(tag: DW_TAG_typedef, name: "cjpeg_source_ptr", file: !198, line: 24, baseType: !503)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "get_pixel_rows", scope: !197, file: !198, line: 29, baseType: !505, size: 64, offset: 64)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DISubroutineType(types: !507)
!507 = !{!246, !204, !502}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "finish_input", scope: !197, file: !198, line: 31, baseType: !201, size: 64, offset: 128)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "input_file", scope: !197, file: !198, line: 34, baseType: !510, size: 64, offset: 192)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !512, line: 7, baseType: !513)
!512 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !514, line: 49, size: 1728, elements: !515)
!514 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!515 = !{!516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !531, !533, !534, !535, !538, !539, !541, !545, !548, !550, !553, !556, !557, !558, !559, !560}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !513, file: !514, line: 51, baseType: !230, size: 32)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !513, file: !514, line: 54, baseType: !309, size: 64, offset: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !513, file: !514, line: 55, baseType: !309, size: 64, offset: 128)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !513, file: !514, line: 56, baseType: !309, size: 64, offset: 192)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !513, file: !514, line: 57, baseType: !309, size: 64, offset: 256)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !513, file: !514, line: 58, baseType: !309, size: 64, offset: 320)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !513, file: !514, line: 59, baseType: !309, size: 64, offset: 384)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !513, file: !514, line: 60, baseType: !309, size: 64, offset: 448)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !513, file: !514, line: 61, baseType: !309, size: 64, offset: 512)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !513, file: !514, line: 64, baseType: !309, size: 64, offset: 576)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !513, file: !514, line: 65, baseType: !309, size: 64, offset: 640)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !513, file: !514, line: 66, baseType: !309, size: 64, offset: 704)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !513, file: !514, line: 68, baseType: !529, size: 64, offset: 768)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !514, line: 36, flags: DIFlagFwdDecl)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !513, file: !514, line: 70, baseType: !532, size: 64, offset: 832)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !513, file: !514, line: 72, baseType: !230, size: 32, offset: 896)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !513, file: !514, line: 73, baseType: !230, size: 32, offset: 928)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !513, file: !514, line: 74, baseType: !536, size: 64, offset: 960)
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !537, line: 152, baseType: !291)
!537 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!538 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !513, file: !514, line: 77, baseType: !398, size: 16, offset: 1024)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !513, file: !514, line: 78, baseType: !540, size: 8, offset: 1040)
!540 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !513, file: !514, line: 79, baseType: !542, size: 8, offset: 1048)
!542 = !DICompositeType(tag: DW_TAG_array_type, baseType: !310, size: 8, elements: !543)
!543 = !{!544}
!544 = !DISubrange(count: 1)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !513, file: !514, line: 81, baseType: !546, size: 64, offset: 1088)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !514, line: 43, baseType: null)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !513, file: !514, line: 89, baseType: !549, size: 64, offset: 1152)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !537, line: 153, baseType: !291)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !513, file: !514, line: 91, baseType: !551, size: 64, offset: 1216)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !514, line: 37, flags: DIFlagFwdDecl)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !513, file: !514, line: 92, baseType: !554, size: 64, offset: 1280)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !514, line: 38, flags: DIFlagFwdDecl)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !513, file: !514, line: 93, baseType: !532, size: 64, offset: 1344)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !513, file: !514, line: 94, baseType: !229, size: 64, offset: 1408)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !513, file: !514, line: 95, baseType: !231, size: 64, offset: 1472)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !513, file: !514, line: 96, baseType: !230, size: 32, offset: 1536)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !513, file: !514, line: 98, baseType: !561, size: 160, offset: 1568)
!561 = !DICompositeType(tag: DW_TAG_array_type, baseType: !310, size: 160, elements: !562)
!562 = !{!563}
!563 = !DISubrange(count: 20)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !197, file: !198, line: 36, baseType: !239, size: 64, offset: 256)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_height", scope: !197, file: !198, line: 37, baseType: !246, size: 32, offset: 320)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "cinfo", scope: !194, file: !3, line: 51, baseType: !204, size: 64, offset: 384)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "colormap", scope: !194, file: !3, line: 53, baseType: !239, size: 64, offset: 448)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "whole_image", scope: !194, file: !3, line: 55, baseType: !265, size: 64, offset: 512)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "current_row", scope: !194, file: !3, line: 56, baseType: !246, size: 32, offset: 576)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "read_pixel", scope: !194, file: !3, line: 59, baseType: !571, size: 64, offset: 640)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = !DISubroutineType(types: !573)
!573 = !{null, !192}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "tga_pixel", scope: !194, file: !3, line: 62, baseType: !575, size: 32, offset: 704)
!575 = !DICompositeType(tag: DW_TAG_array_type, baseType: !576, size: 32, elements: !403)
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "U_CHAR", file: !3, line: 28, baseType: !245)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "pixel_size", scope: !194, file: !3, line: 64, baseType: !230, size: 32, offset: 736)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "block_count", scope: !194, file: !3, line: 67, baseType: !230, size: 32, offset: 768)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "dup_pixel_count", scope: !194, file: !3, line: 68, baseType: !230, size: 32, offset: 800)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "get_pixel_rows", scope: !194, file: !3, line: 71, baseType: !505, size: 64, offset: 832)
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "cd_progress_ptr", file: !198, line: 89, baseType: !582)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdjpeg_progress_mgr", file: !198, line: 81, size: 384, elements: !584)
!584 = !{!585, !586, !587, !588}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "pub", scope: !583, file: !198, line: 82, baseType: !294, size: 256)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "completed_extra_passes", scope: !583, file: !198, line: 83, baseType: !230, size: 32, offset: 256)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "total_extra_passes", scope: !583, file: !198, line: 84, baseType: !230, size: 32, offset: 288)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "percent_done", scope: !583, file: !198, line: 86, baseType: !230, size: 32, offset: 320)
!589 = !{!0}
!590 = !DICompositeType(tag: DW_TAG_array_type, baseType: !591, size: 256, elements: !592)
!591 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !413)
!592 = !{!593}
!593 = !DISubrange(count: 32)
!594 = !{i32 7, !"Dwarf Version", i32 5}
!595 = !{i32 2, !"Debug Info Version", i32 3}
!596 = !{i32 1, !"wchar_size", i32 4}
!597 = !{i32 8, !"PIC Level", i32 2}
!598 = !{i32 7, !"PIE Level", i32 2}
!599 = !{i32 7, !"uwtable", i32 2}
!600 = !{i32 7, !"frame-pointer", i32 2}
!601 = !{!"clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)"}
!602 = distinct !DISubprogram(name: "jinit_read_targa", scope: !3, file: !3, line: 484, type: !603, scopeLine: 485, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !605)
!603 = !DISubroutineType(types: !604)
!604 = !{!502, !204}
!605 = !{}
!606 = !DILocalVariable(name: "cinfo", arg: 1, scope: !602, file: !3, line: 484, type: !204)
!607 = !DILocation(line: 484, column: 34, scope: !602)
!608 = !DILocalVariable(name: "source", scope: !602, file: !3, line: 486, type: !192)
!609 = !DILocation(line: 486, column: 18, scope: !602)
!610 = !DILocation(line: 490, column: 9, scope: !602)
!611 = !DILocation(line: 490, column: 16, scope: !602)
!612 = !DILocation(line: 490, column: 21, scope: !602)
!613 = !DILocation(line: 490, column: 50, scope: !602)
!614 = !DILocation(line: 490, column: 7, scope: !602)
!615 = !DILocation(line: 489, column: 10, scope: !602)
!616 = !DILocation(line: 492, column: 19, scope: !602)
!617 = !DILocation(line: 492, column: 3, scope: !602)
!618 = !DILocation(line: 492, column: 11, scope: !602)
!619 = !DILocation(line: 492, column: 17, scope: !602)
!620 = !DILocation(line: 494, column: 3, scope: !602)
!621 = !DILocation(line: 494, column: 11, scope: !602)
!622 = !DILocation(line: 494, column: 15, scope: !602)
!623 = !DILocation(line: 494, column: 27, scope: !602)
!624 = !DILocation(line: 495, column: 3, scope: !602)
!625 = !DILocation(line: 495, column: 11, scope: !602)
!626 = !DILocation(line: 495, column: 15, scope: !602)
!627 = !DILocation(line: 495, column: 28, scope: !602)
!628 = !DILocation(line: 497, column: 29, scope: !602)
!629 = !DILocation(line: 497, column: 3, scope: !602)
!630 = distinct !DISubprogram(name: "start_input_tga", scope: !3, file: !3, line: 333, type: !202, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !605)
!631 = !DILocalVariable(name: "cinfo", arg: 1, scope: !630, file: !3, line: 333, type: !204)
!632 = !DILocation(line: 333, column: 33, scope: !630)
!633 = !DILocalVariable(name: "sinfo", arg: 2, scope: !630, file: !3, line: 333, type: !502)
!634 = !DILocation(line: 333, column: 57, scope: !630)
!635 = !DILocalVariable(name: "source", scope: !630, file: !3, line: 335, type: !192)
!636 = !DILocation(line: 335, column: 18, scope: !630)
!637 = !DILocation(line: 335, column: 44, scope: !630)
!638 = !DILocalVariable(name: "targaheader", scope: !630, file: !3, line: 336, type: !639)
!639 = !DICompositeType(tag: DW_TAG_array_type, baseType: !576, size: 144, elements: !640)
!640 = !{!641}
!641 = !DISubrange(count: 18)
!642 = !DILocation(line: 336, column: 10, scope: !630)
!643 = !DILocalVariable(name: "idlen", scope: !630, file: !3, line: 337, type: !230)
!644 = !DILocation(line: 337, column: 7, scope: !630)
!645 = !DILocalVariable(name: "cmaptype", scope: !630, file: !3, line: 337, type: !230)
!646 = !DILocation(line: 337, column: 14, scope: !630)
!647 = !DILocalVariable(name: "subtype", scope: !630, file: !3, line: 337, type: !230)
!648 = !DILocation(line: 337, column: 24, scope: !630)
!649 = !DILocalVariable(name: "flags", scope: !630, file: !3, line: 337, type: !230)
!650 = !DILocation(line: 337, column: 33, scope: !630)
!651 = !DILocalVariable(name: "interlace_type", scope: !630, file: !3, line: 337, type: !230)
!652 = !DILocation(line: 337, column: 40, scope: !630)
!653 = !DILocalVariable(name: "components", scope: !630, file: !3, line: 337, type: !230)
!654 = !DILocation(line: 337, column: 56, scope: !630)
!655 = !DILocalVariable(name: "width", scope: !630, file: !3, line: 338, type: !7)
!656 = !DILocation(line: 338, column: 16, scope: !630)
!657 = !DILocalVariable(name: "height", scope: !630, file: !3, line: 338, type: !7)
!658 = !DILocation(line: 338, column: 23, scope: !630)
!659 = !DILocalVariable(name: "maplen", scope: !630, file: !3, line: 338, type: !7)
!660 = !DILocation(line: 338, column: 31, scope: !630)
!661 = !DILocalVariable(name: "is_bottom_up", scope: !630, file: !3, line: 339, type: !268)
!662 = !DILocation(line: 339, column: 11, scope: !630)
!663 = !DILocation(line: 344, column: 9, scope: !664)
!664 = distinct !DILexicalBlock(scope: !630, file: !3, line: 344, column: 7)
!665 = !DILocation(line: 344, column: 7, scope: !664)
!666 = !DILocation(line: 345, column: 5, scope: !664)
!667 = !DILocation(line: 348, column: 7, scope: !668)
!668 = distinct !DILexicalBlock(scope: !630, file: !3, line: 348, column: 7)
!669 = !DILocation(line: 348, column: 23, scope: !668)
!670 = !DILocation(line: 349, column: 5, scope: !668)
!671 = !DILocation(line: 349, column: 21, scope: !668)
!672 = !DILocation(line: 351, column: 11, scope: !630)
!673 = !DILocation(line: 351, column: 9, scope: !630)
!674 = !DILocation(line: 352, column: 14, scope: !630)
!675 = !DILocation(line: 352, column: 12, scope: !630)
!676 = !DILocation(line: 353, column: 13, scope: !630)
!677 = !DILocation(line: 353, column: 11, scope: !630)
!678 = !DILocation(line: 354, column: 12, scope: !630)
!679 = !DILocation(line: 354, column: 10, scope: !630)
!680 = !DILocation(line: 355, column: 11, scope: !630)
!681 = !DILocation(line: 355, column: 9, scope: !630)
!682 = !DILocation(line: 356, column: 12, scope: !630)
!683 = !DILocation(line: 356, column: 10, scope: !630)
!684 = !DILocation(line: 357, column: 24, scope: !630)
!685 = !DILocation(line: 357, column: 45, scope: !630)
!686 = !DILocation(line: 357, column: 3, scope: !630)
!687 = !DILocation(line: 357, column: 11, scope: !630)
!688 = !DILocation(line: 357, column: 22, scope: !630)
!689 = !DILocation(line: 358, column: 11, scope: !630)
!690 = !DILocation(line: 358, column: 9, scope: !630)
!691 = !DILocation(line: 360, column: 20, scope: !630)
!692 = !DILocation(line: 360, column: 26, scope: !630)
!693 = !DILocation(line: 360, column: 34, scope: !630)
!694 = !DILocation(line: 360, column: 16, scope: !630)
!695 = !DILocation(line: 361, column: 20, scope: !630)
!696 = !DILocation(line: 361, column: 26, scope: !630)
!697 = !DILocation(line: 361, column: 18, scope: !630)
!698 = !DILocation(line: 363, column: 7, scope: !699)
!699 = distinct !DILexicalBlock(scope: !630, file: !3, line: 363, column: 7)
!700 = !DILocation(line: 363, column: 16, scope: !699)
!701 = !DILocation(line: 363, column: 20, scope: !699)
!702 = !DILocation(line: 364, column: 7, scope: !699)
!703 = !DILocation(line: 364, column: 15, scope: !699)
!704 = !DILocation(line: 364, column: 26, scope: !699)
!705 = !DILocation(line: 364, column: 30, scope: !699)
!706 = !DILocation(line: 364, column: 33, scope: !699)
!707 = !DILocation(line: 364, column: 41, scope: !699)
!708 = !DILocation(line: 364, column: 52, scope: !699)
!709 = !DILocation(line: 364, column: 56, scope: !699)
!710 = !DILocation(line: 365, column: 8, scope: !699)
!711 = !DILocation(line: 365, column: 29, scope: !699)
!712 = !DILocation(line: 365, column: 34, scope: !699)
!713 = !DILocation(line: 365, column: 39, scope: !699)
!714 = !DILocation(line: 366, column: 7, scope: !699)
!715 = !DILocation(line: 366, column: 22, scope: !699)
!716 = !DILocation(line: 367, column: 5, scope: !699)
!717 = !DILocation(line: 369, column: 7, scope: !718)
!718 = distinct !DILexicalBlock(scope: !630, file: !3, line: 369, column: 7)
!719 = !DILocation(line: 369, column: 15, scope: !718)
!720 = !DILocation(line: 371, column: 5, scope: !721)
!721 = distinct !DILexicalBlock(scope: !718, file: !3, line: 369, column: 20)
!722 = !DILocation(line: 371, column: 13, scope: !721)
!723 = !DILocation(line: 371, column: 24, scope: !721)
!724 = !DILocation(line: 372, column: 27, scope: !721)
!725 = !DILocation(line: 372, column: 35, scope: !721)
!726 = !DILocation(line: 372, column: 51, scope: !721)
!727 = !DILocation(line: 372, column: 5, scope: !721)
!728 = !DILocation(line: 372, column: 13, scope: !721)
!729 = !DILocation(line: 372, column: 25, scope: !721)
!730 = !DILocation(line: 373, column: 13, scope: !721)
!731 = !DILocation(line: 374, column: 3, scope: !721)
!732 = !DILocation(line: 376, column: 5, scope: !733)
!733 = distinct !DILexicalBlock(scope: !718, file: !3, line: 374, column: 10)
!734 = !DILocation(line: 376, column: 13, scope: !733)
!735 = !DILocation(line: 376, column: 24, scope: !733)
!736 = !DILocation(line: 380, column: 14, scope: !630)
!737 = !DILocation(line: 381, column: 3, scope: !630)
!738 = !DILocation(line: 381, column: 10, scope: !630)
!739 = !DILocation(line: 381, column: 25, scope: !630)
!740 = !DILocation(line: 383, column: 11, scope: !630)
!741 = !DILocation(line: 383, column: 3, scope: !630)
!742 = !DILocation(line: 385, column: 9, scope: !743)
!743 = distinct !DILexicalBlock(scope: !744, file: !3, line: 385, column: 9)
!744 = distinct !DILexicalBlock(scope: !630, file: !3, line: 383, column: 20)
!745 = !DILocation(line: 385, column: 17, scope: !743)
!746 = !DILocation(line: 385, column: 28, scope: !743)
!747 = !DILocation(line: 385, column: 33, scope: !743)
!748 = !DILocation(line: 385, column: 36, scope: !743)
!749 = !DILocation(line: 385, column: 45, scope: !743)
!750 = !DILocation(line: 386, column: 7, scope: !743)
!751 = !DILocation(line: 386, column: 15, scope: !743)
!752 = !DILocation(line: 386, column: 30, scope: !743)
!753 = !DILocation(line: 388, column: 7, scope: !743)
!754 = !DILocation(line: 389, column: 5, scope: !744)
!755 = !DILocation(line: 390, column: 5, scope: !744)
!756 = !DILocation(line: 392, column: 13, scope: !744)
!757 = !DILocation(line: 392, column: 21, scope: !744)
!758 = !DILocation(line: 392, column: 5, scope: !744)
!759 = !DILocation(line: 394, column: 7, scope: !760)
!760 = distinct !DILexicalBlock(scope: !744, file: !3, line: 392, column: 33)
!761 = !DILocation(line: 394, column: 15, scope: !760)
!762 = !DILocation(line: 394, column: 30, scope: !760)
!763 = !DILocation(line: 395, column: 7, scope: !760)
!764 = !DILocation(line: 397, column: 7, scope: !760)
!765 = !DILocation(line: 397, column: 15, scope: !760)
!766 = !DILocation(line: 397, column: 30, scope: !760)
!767 = !DILocation(line: 398, column: 7, scope: !760)
!768 = !DILocation(line: 400, column: 7, scope: !760)
!769 = !DILocation(line: 400, column: 15, scope: !760)
!770 = !DILocation(line: 400, column: 30, scope: !760)
!771 = !DILocation(line: 401, column: 7, scope: !760)
!772 = !DILocation(line: 403, column: 7, scope: !760)
!773 = !DILocation(line: 404, column: 7, scope: !760)
!774 = !DILocation(line: 406, column: 5, scope: !744)
!775 = !DILocation(line: 407, column: 5, scope: !744)
!776 = !DILocation(line: 409, column: 16, scope: !744)
!777 = !DILocation(line: 410, column: 5, scope: !744)
!778 = !DILocation(line: 410, column: 12, scope: !744)
!779 = !DILocation(line: 410, column: 27, scope: !744)
!780 = !DILocation(line: 411, column: 9, scope: !781)
!781 = distinct !DILexicalBlock(scope: !744, file: !3, line: 411, column: 9)
!782 = !DILocation(line: 411, column: 17, scope: !781)
!783 = !DILocation(line: 411, column: 28, scope: !781)
!784 = !DILocation(line: 412, column: 7, scope: !781)
!785 = !DILocation(line: 412, column: 15, scope: !781)
!786 = !DILocation(line: 412, column: 30, scope: !781)
!787 = !DILocation(line: 414, column: 7, scope: !781)
!788 = !DILocation(line: 415, column: 5, scope: !744)
!789 = !DILocation(line: 416, column: 5, scope: !744)
!790 = !DILocation(line: 418, column: 5, scope: !744)
!791 = !DILocation(line: 419, column: 5, scope: !744)
!792 = !DILocation(line: 422, column: 7, scope: !793)
!793 = distinct !DILexicalBlock(scope: !630, file: !3, line: 422, column: 7)
!794 = !DILocation(line: 424, column: 29, scope: !795)
!795 = distinct !DILexicalBlock(scope: !793, file: !3, line: 422, column: 21)
!796 = !DILocation(line: 424, column: 36, scope: !795)
!797 = !DILocation(line: 424, column: 41, scope: !795)
!798 = !DILocation(line: 425, column: 23, scope: !795)
!799 = !DILocation(line: 426, column: 21, scope: !795)
!800 = !DILocation(line: 426, column: 29, scope: !795)
!801 = !DILocation(line: 426, column: 27, scope: !795)
!802 = !DILocation(line: 426, column: 54, scope: !795)
!803 = !DILocation(line: 424, column: 27, scope: !795)
!804 = !DILocation(line: 424, column: 5, scope: !795)
!805 = !DILocation(line: 424, column: 13, scope: !795)
!806 = !DILocation(line: 424, column: 25, scope: !795)
!807 = !DILocation(line: 427, column: 9, scope: !808)
!808 = distinct !DILexicalBlock(scope: !795, file: !3, line: 427, column: 9)
!809 = !DILocation(line: 427, column: 16, scope: !808)
!810 = !DILocation(line: 427, column: 25, scope: !808)
!811 = !DILocalVariable(name: "progress", scope: !812, file: !3, line: 428, type: !581)
!812 = distinct !DILexicalBlock(scope: !808, file: !3, line: 427, column: 34)
!813 = !DILocation(line: 428, column: 23, scope: !812)
!814 = !DILocation(line: 428, column: 52, scope: !812)
!815 = !DILocation(line: 428, column: 59, scope: !812)
!816 = !DILocation(line: 429, column: 7, scope: !812)
!817 = !DILocation(line: 429, column: 17, scope: !812)
!818 = !DILocation(line: 429, column: 35, scope: !812)
!819 = !DILocation(line: 430, column: 5, scope: !812)
!820 = !DILocation(line: 432, column: 5, scope: !795)
!821 = !DILocation(line: 432, column: 13, scope: !795)
!822 = !DILocation(line: 432, column: 17, scope: !795)
!823 = !DILocation(line: 432, column: 31, scope: !795)
!824 = !DILocation(line: 433, column: 5, scope: !795)
!825 = !DILocation(line: 433, column: 13, scope: !795)
!826 = !DILocation(line: 433, column: 17, scope: !795)
!827 = !DILocation(line: 433, column: 32, scope: !795)
!828 = !DILocation(line: 434, column: 3, scope: !795)
!829 = !DILocation(line: 436, column: 5, scope: !830)
!830 = distinct !DILexicalBlock(scope: !793, file: !3, line: 434, column: 10)
!831 = !DILocation(line: 436, column: 13, scope: !830)
!832 = !DILocation(line: 436, column: 25, scope: !830)
!833 = !DILocation(line: 437, column: 28, scope: !830)
!834 = !DILocation(line: 437, column: 35, scope: !830)
!835 = !DILocation(line: 437, column: 40, scope: !830)
!836 = !DILocation(line: 438, column: 23, scope: !830)
!837 = !DILocation(line: 439, column: 21, scope: !830)
!838 = !DILocation(line: 439, column: 29, scope: !830)
!839 = !DILocation(line: 439, column: 27, scope: !830)
!840 = !DILocation(line: 437, column: 26, scope: !830)
!841 = !DILocation(line: 437, column: 5, scope: !830)
!842 = !DILocation(line: 437, column: 13, scope: !830)
!843 = !DILocation(line: 437, column: 17, scope: !830)
!844 = !DILocation(line: 437, column: 24, scope: !830)
!845 = !DILocation(line: 440, column: 5, scope: !830)
!846 = !DILocation(line: 440, column: 13, scope: !830)
!847 = !DILocation(line: 440, column: 17, scope: !830)
!848 = !DILocation(line: 440, column: 31, scope: !830)
!849 = !DILocation(line: 441, column: 34, scope: !830)
!850 = !DILocation(line: 441, column: 42, scope: !830)
!851 = !DILocation(line: 441, column: 5, scope: !830)
!852 = !DILocation(line: 441, column: 13, scope: !830)
!853 = !DILocation(line: 441, column: 17, scope: !830)
!854 = !DILocation(line: 441, column: 32, scope: !830)
!855 = !DILocation(line: 444, column: 3, scope: !630)
!856 = !DILocation(line: 444, column: 15, scope: !630)
!857 = !DILocation(line: 445, column: 22, scope: !630)
!858 = !DILocation(line: 445, column: 12, scope: !630)
!859 = distinct !{!859, !855, !860, !861}
!860 = !DILocation(line: 445, column: 28, scope: !630)
!861 = !{!"llvm.loop.mustprogress"}
!862 = !DILocation(line: 447, column: 7, scope: !863)
!863 = distinct !DILexicalBlock(scope: !630, file: !3, line: 447, column: 7)
!864 = !DILocation(line: 447, column: 14, scope: !863)
!865 = !DILocation(line: 448, column: 9, scope: !866)
!866 = distinct !DILexicalBlock(scope: !867, file: !3, line: 448, column: 9)
!867 = distinct !DILexicalBlock(scope: !863, file: !3, line: 447, column: 19)
!868 = !DILocation(line: 448, column: 16, scope: !866)
!869 = !DILocation(line: 448, column: 22, scope: !866)
!870 = !DILocation(line: 448, column: 25, scope: !866)
!871 = !DILocation(line: 448, column: 35, scope: !866)
!872 = !DILocation(line: 449, column: 7, scope: !866)
!873 = !DILocation(line: 451, column: 26, scope: !867)
!874 = !DILocation(line: 451, column: 33, scope: !867)
!875 = !DILocation(line: 451, column: 38, scope: !867)
!876 = !DILocation(line: 452, column: 23, scope: !867)
!877 = !DILocation(line: 452, column: 56, scope: !867)
!878 = !DILocation(line: 451, column: 24, scope: !867)
!879 = !DILocation(line: 451, column: 5, scope: !867)
!880 = !DILocation(line: 451, column: 13, scope: !867)
!881 = !DILocation(line: 451, column: 22, scope: !867)
!882 = !DILocation(line: 454, column: 19, scope: !867)
!883 = !DILocation(line: 454, column: 33, scope: !867)
!884 = !DILocation(line: 454, column: 41, scope: !867)
!885 = !DILocation(line: 454, column: 5, scope: !867)
!886 = !DILocation(line: 455, column: 3, scope: !867)
!887 = !DILocation(line: 456, column: 9, scope: !888)
!888 = distinct !DILexicalBlock(scope: !889, file: !3, line: 456, column: 9)
!889 = distinct !DILexicalBlock(scope: !863, file: !3, line: 455, column: 10)
!890 = !DILocation(line: 457, column: 7, scope: !888)
!891 = !DILocation(line: 458, column: 5, scope: !889)
!892 = !DILocation(line: 458, column: 13, scope: !889)
!893 = !DILocation(line: 458, column: 22, scope: !889)
!894 = !DILocation(line: 461, column: 29, scope: !630)
!895 = !DILocation(line: 461, column: 3, scope: !630)
!896 = !DILocation(line: 461, column: 10, scope: !630)
!897 = !DILocation(line: 461, column: 27, scope: !630)
!898 = !DILocation(line: 462, column: 3, scope: !630)
!899 = !DILocation(line: 462, column: 10, scope: !630)
!900 = !DILocation(line: 462, column: 25, scope: !630)
!901 = !DILocation(line: 463, column: 24, scope: !630)
!902 = !DILocation(line: 463, column: 3, scope: !630)
!903 = !DILocation(line: 463, column: 10, scope: !630)
!904 = !DILocation(line: 463, column: 22, scope: !630)
!905 = !DILocation(line: 464, column: 25, scope: !630)
!906 = !DILocation(line: 464, column: 3, scope: !630)
!907 = !DILocation(line: 464, column: 10, scope: !630)
!908 = !DILocation(line: 464, column: 23, scope: !630)
!909 = !DILocation(line: 465, column: 1, scope: !630)
!910 = distinct !DISubprogram(name: "finish_input_tga", scope: !3, file: !3, line: 473, type: !202, scopeLine: 474, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !605)
!911 = !DILocalVariable(name: "cinfo", arg: 1, scope: !910, file: !3, line: 473, type: !204)
!912 = !DILocation(line: 473, column: 34, scope: !910)
!913 = !DILocalVariable(name: "sinfo", arg: 2, scope: !910, file: !3, line: 473, type: !502)
!914 = !DILocation(line: 473, column: 58, scope: !910)
!915 = !DILocation(line: 476, column: 1, scope: !910)
!916 = distinct !DISubprogram(name: "read_rle_pixel", scope: !3, file: !3, line: 136, type: !572, scopeLine: 138, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !605)
!917 = !DILocalVariable(name: "sinfo", arg: 1, scope: !916, file: !3, line: 136, type: !192)
!918 = !DILocation(line: 136, column: 32, scope: !916)
!919 = !DILocalVariable(name: "infile", scope: !916, file: !3, line: 139, type: !510)
!920 = !DILocation(line: 139, column: 18, scope: !916)
!921 = !DILocation(line: 139, column: 27, scope: !916)
!922 = !DILocation(line: 139, column: 34, scope: !916)
!923 = !DILocation(line: 139, column: 38, scope: !916)
!924 = !DILocalVariable(name: "i", scope: !916, file: !3, line: 140, type: !230)
!925 = !DILocation(line: 140, column: 16, scope: !916)
!926 = !DILocation(line: 143, column: 7, scope: !927)
!927 = distinct !DILexicalBlock(scope: !916, file: !3, line: 143, column: 7)
!928 = !DILocation(line: 143, column: 14, scope: !927)
!929 = !DILocation(line: 143, column: 30, scope: !927)
!930 = !DILocation(line: 144, column: 5, scope: !931)
!931 = distinct !DILexicalBlock(scope: !927, file: !3, line: 143, column: 35)
!932 = !DILocation(line: 144, column: 12, scope: !931)
!933 = !DILocation(line: 144, column: 27, scope: !931)
!934 = !DILocation(line: 145, column: 5, scope: !931)
!935 = !DILocation(line: 149, column: 9, scope: !936)
!936 = distinct !DILexicalBlock(scope: !916, file: !3, line: 149, column: 7)
!937 = !DILocation(line: 149, column: 16, scope: !936)
!938 = !DILocation(line: 149, column: 7, scope: !936)
!939 = !DILocation(line: 149, column: 28, scope: !936)
!940 = !DILocation(line: 150, column: 19, scope: !941)
!941 = distinct !DILexicalBlock(scope: !936, file: !3, line: 149, column: 33)
!942 = !DILocation(line: 150, column: 9, scope: !941)
!943 = !DILocation(line: 150, column: 7, scope: !941)
!944 = !DILocation(line: 151, column: 9, scope: !945)
!945 = distinct !DILexicalBlock(scope: !941, file: !3, line: 151, column: 9)
!946 = !DILocation(line: 151, column: 11, scope: !945)
!947 = !DILocation(line: 152, column: 32, scope: !948)
!948 = distinct !DILexicalBlock(scope: !945, file: !3, line: 151, column: 19)
!949 = !DILocation(line: 152, column: 34, scope: !948)
!950 = !DILocation(line: 152, column: 7, scope: !948)
!951 = !DILocation(line: 152, column: 14, scope: !948)
!952 = !DILocation(line: 152, column: 30, scope: !948)
!953 = !DILocation(line: 153, column: 7, scope: !948)
!954 = !DILocation(line: 153, column: 14, scope: !948)
!955 = !DILocation(line: 153, column: 26, scope: !948)
!956 = !DILocation(line: 154, column: 5, scope: !948)
!957 = !DILocation(line: 155, column: 28, scope: !958)
!958 = distinct !DILexicalBlock(scope: !945, file: !3, line: 154, column: 12)
!959 = !DILocation(line: 155, column: 30, scope: !958)
!960 = !DILocation(line: 155, column: 7, scope: !958)
!961 = !DILocation(line: 155, column: 14, scope: !958)
!962 = !DILocation(line: 155, column: 26, scope: !958)
!963 = !DILocation(line: 157, column: 3, scope: !941)
!964 = !DILocation(line: 160, column: 10, scope: !965)
!965 = distinct !DILexicalBlock(scope: !916, file: !3, line: 160, column: 3)
!966 = !DILocation(line: 160, column: 8, scope: !965)
!967 = !DILocation(line: 160, column: 15, scope: !968)
!968 = distinct !DILexicalBlock(scope: !965, file: !3, line: 160, column: 3)
!969 = !DILocation(line: 160, column: 19, scope: !968)
!970 = !DILocation(line: 160, column: 26, scope: !968)
!971 = !DILocation(line: 160, column: 17, scope: !968)
!972 = !DILocation(line: 160, column: 3, scope: !965)
!973 = !DILocation(line: 161, column: 41, scope: !974)
!974 = distinct !DILexicalBlock(scope: !968, file: !3, line: 160, column: 43)
!975 = !DILocation(line: 161, column: 36, scope: !974)
!976 = !DILocation(line: 161, column: 27, scope: !974)
!977 = !DILocation(line: 161, column: 5, scope: !974)
!978 = !DILocation(line: 161, column: 12, scope: !974)
!979 = !DILocation(line: 161, column: 22, scope: !974)
!980 = !DILocation(line: 161, column: 25, scope: !974)
!981 = !DILocation(line: 162, column: 3, scope: !974)
!982 = !DILocation(line: 160, column: 39, scope: !968)
!983 = !DILocation(line: 160, column: 3, scope: !968)
!984 = distinct !{!984, !972, !985, !861}
!985 = !DILocation(line: 162, column: 3, scope: !965)
!986 = !DILocation(line: 163, column: 1, scope: !916)
!987 = distinct !DISubprogram(name: "read_non_rle_pixel", scope: !3, file: !3, line: 123, type: !572, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !605)
!988 = !DILocalVariable(name: "sinfo", arg: 1, scope: !987, file: !3, line: 123, type: !192)
!989 = !DILocation(line: 123, column: 36, scope: !987)
!990 = !DILocalVariable(name: "infile", scope: !987, file: !3, line: 126, type: !510)
!991 = !DILocation(line: 126, column: 18, scope: !987)
!992 = !DILocation(line: 126, column: 27, scope: !987)
!993 = !DILocation(line: 126, column: 34, scope: !987)
!994 = !DILocation(line: 126, column: 38, scope: !987)
!995 = !DILocalVariable(name: "i", scope: !987, file: !3, line: 127, type: !230)
!996 = !DILocation(line: 127, column: 16, scope: !987)
!997 = !DILocation(line: 129, column: 10, scope: !998)
!998 = distinct !DILexicalBlock(scope: !987, file: !3, line: 129, column: 3)
!999 = !DILocation(line: 129, column: 8, scope: !998)
!1000 = !DILocation(line: 129, column: 15, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !998, file: !3, line: 129, column: 3)
!1002 = !DILocation(line: 129, column: 19, scope: !1001)
!1003 = !DILocation(line: 129, column: 26, scope: !1001)
!1004 = !DILocation(line: 129, column: 17, scope: !1001)
!1005 = !DILocation(line: 129, column: 3, scope: !998)
!1006 = !DILocation(line: 130, column: 41, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !1001, file: !3, line: 129, column: 43)
!1008 = !DILocation(line: 130, column: 36, scope: !1007)
!1009 = !DILocation(line: 130, column: 27, scope: !1007)
!1010 = !DILocation(line: 130, column: 5, scope: !1007)
!1011 = !DILocation(line: 130, column: 12, scope: !1007)
!1012 = !DILocation(line: 130, column: 22, scope: !1007)
!1013 = !DILocation(line: 130, column: 25, scope: !1007)
!1014 = !DILocation(line: 131, column: 3, scope: !1007)
!1015 = !DILocation(line: 129, column: 39, scope: !1001)
!1016 = !DILocation(line: 129, column: 3, scope: !1001)
!1017 = distinct !{!1017, !1005, !1018, !861}
!1018 = !DILocation(line: 131, column: 3, scope: !998)
!1019 = !DILocation(line: 132, column: 1, scope: !987)
!1020 = distinct !DISubprogram(name: "get_8bit_row", scope: !3, file: !3, line: 190, type: !506, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !605)
!1021 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1020, file: !3, line: 190, type: !204)
!1022 = !DILocation(line: 190, column: 30, scope: !1020)
!1023 = !DILocalVariable(name: "sinfo", arg: 2, scope: !1020, file: !3, line: 190, type: !502)
!1024 = !DILocation(line: 190, column: 54, scope: !1020)
!1025 = !DILocalVariable(name: "source", scope: !1020, file: !3, line: 193, type: !192)
!1026 = !DILocation(line: 193, column: 18, scope: !1020)
!1027 = !DILocation(line: 193, column: 44, scope: !1020)
!1028 = !DILocalVariable(name: "t", scope: !1020, file: !3, line: 194, type: !230)
!1029 = !DILocation(line: 194, column: 16, scope: !1020)
!1030 = !DILocalVariable(name: "ptr", scope: !1020, file: !3, line: 195, type: !241)
!1031 = !DILocation(line: 195, column: 21, scope: !1020)
!1032 = !DILocalVariable(name: "col", scope: !1020, file: !3, line: 196, type: !246)
!1033 = !DILocation(line: 196, column: 23, scope: !1020)
!1034 = !DILocalVariable(name: "colormap", scope: !1020, file: !3, line: 197, type: !239)
!1035 = !DILocation(line: 197, column: 23, scope: !1020)
!1036 = !DILocation(line: 197, column: 34, scope: !1020)
!1037 = !DILocation(line: 197, column: 42, scope: !1020)
!1038 = !DILocation(line: 199, column: 9, scope: !1020)
!1039 = !DILocation(line: 199, column: 17, scope: !1020)
!1040 = !DILocation(line: 199, column: 21, scope: !1020)
!1041 = !DILocation(line: 199, column: 7, scope: !1020)
!1042 = !DILocation(line: 200, column: 14, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !1020, file: !3, line: 200, column: 3)
!1044 = !DILocation(line: 200, column: 21, scope: !1043)
!1045 = !DILocation(line: 200, column: 12, scope: !1043)
!1046 = !DILocation(line: 200, column: 8, scope: !1043)
!1047 = !DILocation(line: 200, column: 34, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !1043, file: !3, line: 200, column: 3)
!1049 = !DILocation(line: 200, column: 38, scope: !1048)
!1050 = !DILocation(line: 200, column: 3, scope: !1043)
!1051 = !DILocation(line: 201, column: 7, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !1048, file: !3, line: 200, column: 50)
!1053 = !DILocation(line: 201, column: 15, scope: !1052)
!1054 = !DILocation(line: 201, column: 28, scope: !1052)
!1055 = !DILocation(line: 201, column: 5, scope: !1052)
!1056 = !DILocation(line: 202, column: 9, scope: !1052)
!1057 = !DILocation(line: 202, column: 7, scope: !1052)
!1058 = !DILocation(line: 203, column: 14, scope: !1052)
!1059 = !DILocation(line: 203, column: 26, scope: !1052)
!1060 = !DILocation(line: 203, column: 9, scope: !1052)
!1061 = !DILocation(line: 203, column: 12, scope: !1052)
!1062 = !DILocation(line: 204, column: 14, scope: !1052)
!1063 = !DILocation(line: 204, column: 26, scope: !1052)
!1064 = !DILocation(line: 204, column: 9, scope: !1052)
!1065 = !DILocation(line: 204, column: 12, scope: !1052)
!1066 = !DILocation(line: 205, column: 14, scope: !1052)
!1067 = !DILocation(line: 205, column: 26, scope: !1052)
!1068 = !DILocation(line: 205, column: 9, scope: !1052)
!1069 = !DILocation(line: 205, column: 12, scope: !1052)
!1070 = !DILocation(line: 206, column: 3, scope: !1052)
!1071 = !DILocation(line: 200, column: 46, scope: !1048)
!1072 = !DILocation(line: 200, column: 3, scope: !1048)
!1073 = distinct !{!1073, !1050, !1074, !861}
!1074 = !DILocation(line: 206, column: 3, scope: !1043)
!1075 = !DILocation(line: 207, column: 3, scope: !1020)
!1076 = distinct !DISubprogram(name: "get_16bit_row", scope: !3, file: !3, line: 211, type: !506, scopeLine: 213, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !605)
!1077 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1076, file: !3, line: 211, type: !204)
!1078 = !DILocation(line: 211, column: 31, scope: !1076)
!1079 = !DILocalVariable(name: "sinfo", arg: 2, scope: !1076, file: !3, line: 211, type: !502)
!1080 = !DILocation(line: 211, column: 55, scope: !1076)
!1081 = !DILocalVariable(name: "source", scope: !1076, file: !3, line: 214, type: !192)
!1082 = !DILocation(line: 214, column: 18, scope: !1076)
!1083 = !DILocation(line: 214, column: 44, scope: !1076)
!1084 = !DILocalVariable(name: "t", scope: !1076, file: !3, line: 215, type: !230)
!1085 = !DILocation(line: 215, column: 16, scope: !1076)
!1086 = !DILocalVariable(name: "ptr", scope: !1076, file: !3, line: 216, type: !241)
!1087 = !DILocation(line: 216, column: 21, scope: !1076)
!1088 = !DILocalVariable(name: "col", scope: !1076, file: !3, line: 217, type: !246)
!1089 = !DILocation(line: 217, column: 23, scope: !1076)
!1090 = !DILocation(line: 219, column: 9, scope: !1076)
!1091 = !DILocation(line: 219, column: 17, scope: !1076)
!1092 = !DILocation(line: 219, column: 21, scope: !1076)
!1093 = !DILocation(line: 219, column: 7, scope: !1076)
!1094 = !DILocation(line: 220, column: 14, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1076, file: !3, line: 220, column: 3)
!1096 = !DILocation(line: 220, column: 21, scope: !1095)
!1097 = !DILocation(line: 220, column: 12, scope: !1095)
!1098 = !DILocation(line: 220, column: 8, scope: !1095)
!1099 = !DILocation(line: 220, column: 34, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !1095, file: !3, line: 220, column: 3)
!1101 = !DILocation(line: 220, column: 38, scope: !1100)
!1102 = !DILocation(line: 220, column: 3, scope: !1095)
!1103 = !DILocation(line: 221, column: 7, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !1100, file: !3, line: 220, column: 50)
!1105 = !DILocation(line: 221, column: 15, scope: !1104)
!1106 = !DILocation(line: 221, column: 28, scope: !1104)
!1107 = !DILocation(line: 221, column: 5, scope: !1104)
!1108 = !DILocation(line: 222, column: 9, scope: !1104)
!1109 = !DILocation(line: 222, column: 7, scope: !1104)
!1110 = !DILocation(line: 223, column: 10, scope: !1104)
!1111 = !DILocation(line: 223, column: 36, scope: !1104)
!1112 = !DILocation(line: 223, column: 7, scope: !1104)
!1113 = !DILocation(line: 228, column: 34, scope: !1104)
!1114 = !DILocation(line: 228, column: 36, scope: !1104)
!1115 = !DILocation(line: 228, column: 24, scope: !1104)
!1116 = !DILocation(line: 228, column: 5, scope: !1104)
!1117 = !DILocation(line: 228, column: 12, scope: !1104)
!1118 = !DILocation(line: 229, column: 7, scope: !1104)
!1119 = !DILocation(line: 230, column: 34, scope: !1104)
!1120 = !DILocation(line: 230, column: 36, scope: !1104)
!1121 = !DILocation(line: 230, column: 24, scope: !1104)
!1122 = !DILocation(line: 230, column: 5, scope: !1104)
!1123 = !DILocation(line: 230, column: 12, scope: !1104)
!1124 = !DILocation(line: 231, column: 7, scope: !1104)
!1125 = !DILocation(line: 232, column: 34, scope: !1104)
!1126 = !DILocation(line: 232, column: 36, scope: !1104)
!1127 = !DILocation(line: 232, column: 24, scope: !1104)
!1128 = !DILocation(line: 232, column: 5, scope: !1104)
!1129 = !DILocation(line: 232, column: 12, scope: !1104)
!1130 = !DILocation(line: 233, column: 9, scope: !1104)
!1131 = !DILocation(line: 234, column: 3, scope: !1104)
!1132 = !DILocation(line: 220, column: 46, scope: !1100)
!1133 = !DILocation(line: 220, column: 3, scope: !1100)
!1134 = distinct !{!1134, !1102, !1135, !861}
!1135 = !DILocation(line: 234, column: 3, scope: !1095)
!1136 = !DILocation(line: 235, column: 3, scope: !1076)
!1137 = distinct !DISubprogram(name: "get_24bit_row", scope: !3, file: !3, line: 239, type: !506, scopeLine: 241, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !605)
!1138 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1137, file: !3, line: 239, type: !204)
!1139 = !DILocation(line: 239, column: 31, scope: !1137)
!1140 = !DILocalVariable(name: "sinfo", arg: 2, scope: !1137, file: !3, line: 239, type: !502)
!1141 = !DILocation(line: 239, column: 55, scope: !1137)
!1142 = !DILocalVariable(name: "source", scope: !1137, file: !3, line: 242, type: !192)
!1143 = !DILocation(line: 242, column: 18, scope: !1137)
!1144 = !DILocation(line: 242, column: 44, scope: !1137)
!1145 = !DILocalVariable(name: "ptr", scope: !1137, file: !3, line: 243, type: !241)
!1146 = !DILocation(line: 243, column: 21, scope: !1137)
!1147 = !DILocalVariable(name: "col", scope: !1137, file: !3, line: 244, type: !246)
!1148 = !DILocation(line: 244, column: 23, scope: !1137)
!1149 = !DILocation(line: 246, column: 9, scope: !1137)
!1150 = !DILocation(line: 246, column: 17, scope: !1137)
!1151 = !DILocation(line: 246, column: 21, scope: !1137)
!1152 = !DILocation(line: 246, column: 7, scope: !1137)
!1153 = !DILocation(line: 247, column: 14, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !1137, file: !3, line: 247, column: 3)
!1155 = !DILocation(line: 247, column: 21, scope: !1154)
!1156 = !DILocation(line: 247, column: 12, scope: !1154)
!1157 = !DILocation(line: 247, column: 8, scope: !1154)
!1158 = !DILocation(line: 247, column: 34, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !1154, file: !3, line: 247, column: 3)
!1160 = !DILocation(line: 247, column: 38, scope: !1159)
!1161 = !DILocation(line: 247, column: 3, scope: !1154)
!1162 = !DILocation(line: 248, column: 7, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1159, file: !3, line: 247, column: 50)
!1164 = !DILocation(line: 248, column: 15, scope: !1163)
!1165 = !DILocation(line: 248, column: 28, scope: !1163)
!1166 = !DILocation(line: 248, column: 5, scope: !1163)
!1167 = !DILocation(line: 249, column: 24, scope: !1163)
!1168 = !DILocation(line: 249, column: 14, scope: !1163)
!1169 = !DILocation(line: 249, column: 9, scope: !1163)
!1170 = !DILocation(line: 249, column: 12, scope: !1163)
!1171 = !DILocation(line: 250, column: 24, scope: !1163)
!1172 = !DILocation(line: 250, column: 14, scope: !1163)
!1173 = !DILocation(line: 250, column: 9, scope: !1163)
!1174 = !DILocation(line: 250, column: 12, scope: !1163)
!1175 = !DILocation(line: 251, column: 24, scope: !1163)
!1176 = !DILocation(line: 251, column: 14, scope: !1163)
!1177 = !DILocation(line: 251, column: 9, scope: !1163)
!1178 = !DILocation(line: 251, column: 12, scope: !1163)
!1179 = !DILocation(line: 252, column: 3, scope: !1163)
!1180 = !DILocation(line: 247, column: 46, scope: !1159)
!1181 = !DILocation(line: 247, column: 3, scope: !1159)
!1182 = distinct !{!1182, !1161, !1183, !861}
!1183 = !DILocation(line: 252, column: 3, scope: !1154)
!1184 = !DILocation(line: 253, column: 3, scope: !1137)
!1185 = distinct !DISubprogram(name: "get_8bit_gray_row", scope: !3, file: !3, line: 174, type: !506, scopeLine: 176, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !605)
!1186 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1185, file: !3, line: 174, type: !204)
!1187 = !DILocation(line: 174, column: 35, scope: !1185)
!1188 = !DILocalVariable(name: "sinfo", arg: 2, scope: !1185, file: !3, line: 174, type: !502)
!1189 = !DILocation(line: 174, column: 59, scope: !1185)
!1190 = !DILocalVariable(name: "source", scope: !1185, file: !3, line: 177, type: !192)
!1191 = !DILocation(line: 177, column: 18, scope: !1185)
!1192 = !DILocation(line: 177, column: 44, scope: !1185)
!1193 = !DILocalVariable(name: "ptr", scope: !1185, file: !3, line: 178, type: !241)
!1194 = !DILocation(line: 178, column: 21, scope: !1185)
!1195 = !DILocalVariable(name: "col", scope: !1185, file: !3, line: 179, type: !246)
!1196 = !DILocation(line: 179, column: 23, scope: !1185)
!1197 = !DILocation(line: 181, column: 9, scope: !1185)
!1198 = !DILocation(line: 181, column: 17, scope: !1185)
!1199 = !DILocation(line: 181, column: 21, scope: !1185)
!1200 = !DILocation(line: 181, column: 7, scope: !1185)
!1201 = !DILocation(line: 182, column: 14, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !1185, file: !3, line: 182, column: 3)
!1203 = !DILocation(line: 182, column: 21, scope: !1202)
!1204 = !DILocation(line: 182, column: 12, scope: !1202)
!1205 = !DILocation(line: 182, column: 8, scope: !1202)
!1206 = !DILocation(line: 182, column: 34, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !1202, file: !3, line: 182, column: 3)
!1208 = !DILocation(line: 182, column: 38, scope: !1207)
!1209 = !DILocation(line: 182, column: 3, scope: !1202)
!1210 = !DILocation(line: 183, column: 7, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1207, file: !3, line: 182, column: 50)
!1212 = !DILocation(line: 183, column: 15, scope: !1211)
!1213 = !DILocation(line: 183, column: 28, scope: !1211)
!1214 = !DILocation(line: 183, column: 5, scope: !1211)
!1215 = !DILocation(line: 184, column: 24, scope: !1211)
!1216 = !DILocation(line: 184, column: 14, scope: !1211)
!1217 = !DILocation(line: 184, column: 9, scope: !1211)
!1218 = !DILocation(line: 184, column: 12, scope: !1211)
!1219 = !DILocation(line: 185, column: 3, scope: !1211)
!1220 = !DILocation(line: 182, column: 46, scope: !1207)
!1221 = !DILocation(line: 182, column: 3, scope: !1207)
!1222 = distinct !{!1222, !1209, !1223, !861}
!1223 = !DILocation(line: 185, column: 3, scope: !1202)
!1224 = !DILocation(line: 186, column: 3, scope: !1185)
!1225 = distinct !DISubprogram(name: "preload_image", scope: !3, file: !3, line: 300, type: !506, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !605)
!1226 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1225, file: !3, line: 300, type: !204)
!1227 = !DILocation(line: 300, column: 31, scope: !1225)
!1228 = !DILocalVariable(name: "sinfo", arg: 2, scope: !1225, file: !3, line: 300, type: !502)
!1229 = !DILocation(line: 300, column: 55, scope: !1225)
!1230 = !DILocalVariable(name: "source", scope: !1225, file: !3, line: 302, type: !192)
!1231 = !DILocation(line: 302, column: 18, scope: !1225)
!1232 = !DILocation(line: 302, column: 44, scope: !1225)
!1233 = !DILocalVariable(name: "row", scope: !1225, file: !3, line: 303, type: !246)
!1234 = !DILocation(line: 303, column: 14, scope: !1225)
!1235 = !DILocalVariable(name: "progress", scope: !1225, file: !3, line: 304, type: !581)
!1236 = !DILocation(line: 304, column: 19, scope: !1225)
!1237 = !DILocation(line: 304, column: 48, scope: !1225)
!1238 = !DILocation(line: 304, column: 55, scope: !1225)
!1239 = !DILocation(line: 307, column: 12, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1225, file: !3, line: 307, column: 3)
!1241 = !DILocation(line: 307, column: 8, scope: !1240)
!1242 = !DILocation(line: 307, column: 17, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1240, file: !3, line: 307, column: 3)
!1244 = !DILocation(line: 307, column: 23, scope: !1243)
!1245 = !DILocation(line: 307, column: 30, scope: !1243)
!1246 = !DILocation(line: 307, column: 21, scope: !1243)
!1247 = !DILocation(line: 307, column: 3, scope: !1240)
!1248 = !DILocation(line: 308, column: 9, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1250, file: !3, line: 308, column: 9)
!1250 = distinct !DILexicalBlock(scope: !1243, file: !3, line: 307, column: 51)
!1251 = !DILocation(line: 308, column: 18, scope: !1249)
!1252 = !DILocation(line: 309, column: 43, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !1249, file: !3, line: 308, column: 27)
!1254 = !DILocation(line: 309, column: 36, scope: !1253)
!1255 = !DILocation(line: 309, column: 7, scope: !1253)
!1256 = !DILocation(line: 309, column: 17, scope: !1253)
!1257 = !DILocation(line: 309, column: 21, scope: !1253)
!1258 = !DILocation(line: 309, column: 34, scope: !1253)
!1259 = !DILocation(line: 310, column: 41, scope: !1253)
!1260 = !DILocation(line: 310, column: 48, scope: !1253)
!1261 = !DILocation(line: 310, column: 34, scope: !1253)
!1262 = !DILocation(line: 310, column: 7, scope: !1253)
!1263 = !DILocation(line: 310, column: 17, scope: !1253)
!1264 = !DILocation(line: 310, column: 21, scope: !1253)
!1265 = !DILocation(line: 310, column: 32, scope: !1253)
!1266 = !DILocation(line: 311, column: 9, scope: !1253)
!1267 = !DILocation(line: 311, column: 19, scope: !1253)
!1268 = !DILocation(line: 311, column: 23, scope: !1253)
!1269 = !DILocation(line: 311, column: 57, scope: !1253)
!1270 = !DILocation(line: 311, column: 7, scope: !1253)
!1271 = !DILocation(line: 312, column: 5, scope: !1253)
!1272 = !DILocation(line: 313, column: 28, scope: !1250)
!1273 = !DILocation(line: 313, column: 35, scope: !1250)
!1274 = !DILocation(line: 313, column: 40, scope: !1250)
!1275 = !DILocation(line: 314, column: 23, scope: !1250)
!1276 = !DILocation(line: 314, column: 30, scope: !1250)
!1277 = !DILocation(line: 314, column: 38, scope: !1250)
!1278 = !DILocation(line: 314, column: 51, scope: !1250)
!1279 = !DILocation(line: 313, column: 26, scope: !1250)
!1280 = !DILocation(line: 313, column: 5, scope: !1250)
!1281 = !DILocation(line: 313, column: 13, scope: !1250)
!1282 = !DILocation(line: 313, column: 17, scope: !1250)
!1283 = !DILocation(line: 313, column: 24, scope: !1250)
!1284 = !DILocation(line: 315, column: 7, scope: !1250)
!1285 = !DILocation(line: 315, column: 15, scope: !1250)
!1286 = !DILocation(line: 315, column: 32, scope: !1250)
!1287 = !DILocation(line: 315, column: 39, scope: !1250)
!1288 = !DILocation(line: 315, column: 5, scope: !1250)
!1289 = !DILocation(line: 316, column: 3, scope: !1250)
!1290 = !DILocation(line: 307, column: 47, scope: !1243)
!1291 = !DILocation(line: 307, column: 3, scope: !1243)
!1292 = distinct !{!1292, !1247, !1293, !861}
!1293 = !DILocation(line: 316, column: 3, scope: !1240)
!1294 = !DILocation(line: 317, column: 7, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1225, file: !3, line: 317, column: 7)
!1296 = !DILocation(line: 317, column: 16, scope: !1295)
!1297 = !DILocation(line: 318, column: 5, scope: !1295)
!1298 = !DILocation(line: 318, column: 15, scope: !1295)
!1299 = !DILocation(line: 318, column: 37, scope: !1295)
!1300 = !DILocation(line: 321, column: 3, scope: !1225)
!1301 = !DILocation(line: 321, column: 11, scope: !1225)
!1302 = !DILocation(line: 321, column: 15, scope: !1225)
!1303 = !DILocation(line: 321, column: 30, scope: !1225)
!1304 = !DILocation(line: 322, column: 3, scope: !1225)
!1305 = !DILocation(line: 322, column: 11, scope: !1225)
!1306 = !DILocation(line: 322, column: 23, scope: !1225)
!1307 = !DILocation(line: 324, column: 25, scope: !1225)
!1308 = !DILocation(line: 324, column: 32, scope: !1225)
!1309 = !DILocation(line: 324, column: 10, scope: !1225)
!1310 = !DILocation(line: 324, column: 3, scope: !1225)
!1311 = distinct !DISubprogram(name: "read_byte", scope: !3, file: !3, line: 88, type: !1312, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !605)
!1312 = !DISubroutineType(types: !1313)
!1313 = !{!230, !192}
!1314 = !DILocalVariable(name: "sinfo", arg: 1, scope: !1311, file: !3, line: 88, type: !192)
!1315 = !DILocation(line: 88, column: 27, scope: !1311)
!1316 = !DILocalVariable(name: "infile", scope: !1311, file: !3, line: 91, type: !510)
!1317 = !DILocation(line: 91, column: 18, scope: !1311)
!1318 = !DILocation(line: 91, column: 27, scope: !1311)
!1319 = !DILocation(line: 91, column: 34, scope: !1311)
!1320 = !DILocation(line: 91, column: 38, scope: !1311)
!1321 = !DILocalVariable(name: "c", scope: !1311, file: !3, line: 92, type: !230)
!1322 = !DILocation(line: 92, column: 16, scope: !1311)
!1323 = !DILocation(line: 94, column: 17, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1311, file: !3, line: 94, column: 7)
!1325 = !DILocation(line: 94, column: 12, scope: !1324)
!1326 = !DILocation(line: 94, column: 10, scope: !1324)
!1327 = !DILocation(line: 94, column: 26, scope: !1324)
!1328 = !DILocation(line: 95, column: 5, scope: !1324)
!1329 = !DILocation(line: 96, column: 10, scope: !1311)
!1330 = !DILocation(line: 96, column: 3, scope: !1311)
!1331 = distinct !DISubprogram(name: "read_colormap", scope: !3, file: !3, line: 101, type: !1332, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !605)
!1332 = !DISubroutineType(types: !1333)
!1333 = !{null, !192, !230, !230}
!1334 = !DILocalVariable(name: "sinfo", arg: 1, scope: !1331, file: !3, line: 101, type: !192)
!1335 = !DILocation(line: 101, column: 31, scope: !1331)
!1336 = !DILocalVariable(name: "cmaplen", arg: 2, scope: !1331, file: !3, line: 101, type: !230)
!1337 = !DILocation(line: 101, column: 42, scope: !1331)
!1338 = !DILocalVariable(name: "mapentrysize", arg: 3, scope: !1331, file: !3, line: 101, type: !230)
!1339 = !DILocation(line: 101, column: 55, scope: !1331)
!1340 = !DILocalVariable(name: "i", scope: !1331, file: !3, line: 104, type: !230)
!1341 = !DILocation(line: 104, column: 7, scope: !1331)
!1342 = !DILocation(line: 107, column: 7, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !1331, file: !3, line: 107, column: 7)
!1344 = !DILocation(line: 107, column: 20, scope: !1343)
!1345 = !DILocation(line: 108, column: 5, scope: !1343)
!1346 = !DILocation(line: 110, column: 10, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1331, file: !3, line: 110, column: 3)
!1348 = !DILocation(line: 110, column: 8, scope: !1347)
!1349 = !DILocation(line: 110, column: 15, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !1347, file: !3, line: 110, column: 3)
!1351 = !DILocation(line: 110, column: 19, scope: !1350)
!1352 = !DILocation(line: 110, column: 17, scope: !1350)
!1353 = !DILocation(line: 110, column: 3, scope: !1347)
!1354 = !DILocation(line: 111, column: 49, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1350, file: !3, line: 110, column: 33)
!1356 = !DILocation(line: 111, column: 39, scope: !1355)
!1357 = !DILocation(line: 111, column: 29, scope: !1355)
!1358 = !DILocation(line: 111, column: 5, scope: !1355)
!1359 = !DILocation(line: 111, column: 12, scope: !1355)
!1360 = !DILocation(line: 111, column: 24, scope: !1355)
!1361 = !DILocation(line: 111, column: 27, scope: !1355)
!1362 = !DILocation(line: 112, column: 49, scope: !1355)
!1363 = !DILocation(line: 112, column: 39, scope: !1355)
!1364 = !DILocation(line: 112, column: 29, scope: !1355)
!1365 = !DILocation(line: 112, column: 5, scope: !1355)
!1366 = !DILocation(line: 112, column: 12, scope: !1355)
!1367 = !DILocation(line: 112, column: 24, scope: !1355)
!1368 = !DILocation(line: 112, column: 27, scope: !1355)
!1369 = !DILocation(line: 113, column: 49, scope: !1355)
!1370 = !DILocation(line: 113, column: 39, scope: !1355)
!1371 = !DILocation(line: 113, column: 29, scope: !1355)
!1372 = !DILocation(line: 113, column: 5, scope: !1355)
!1373 = !DILocation(line: 113, column: 12, scope: !1355)
!1374 = !DILocation(line: 113, column: 24, scope: !1355)
!1375 = !DILocation(line: 113, column: 27, scope: !1355)
!1376 = !DILocation(line: 114, column: 3, scope: !1355)
!1377 = !DILocation(line: 110, column: 29, scope: !1350)
!1378 = !DILocation(line: 110, column: 3, scope: !1350)
!1379 = distinct !{!1379, !1353, !1380, !861}
!1380 = !DILocation(line: 114, column: 3, scope: !1347)
!1381 = !DILocation(line: 115, column: 1, scope: !1331)
!1382 = distinct !DISubprogram(name: "get_memory_row", scope: !3, file: !3, line: 273, type: !506, scopeLine: 274, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !605)
!1383 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1382, file: !3, line: 273, type: !204)
!1384 = !DILocation(line: 273, column: 32, scope: !1382)
!1385 = !DILocalVariable(name: "sinfo", arg: 2, scope: !1382, file: !3, line: 273, type: !502)
!1386 = !DILocation(line: 273, column: 56, scope: !1382)
!1387 = !DILocalVariable(name: "source", scope: !1382, file: !3, line: 275, type: !192)
!1388 = !DILocation(line: 275, column: 18, scope: !1382)
!1389 = !DILocation(line: 275, column: 44, scope: !1382)
!1390 = !DILocalVariable(name: "source_row", scope: !1382, file: !3, line: 276, type: !246)
!1391 = !DILocation(line: 276, column: 14, scope: !1382)
!1392 = !DILocation(line: 281, column: 16, scope: !1382)
!1393 = !DILocation(line: 281, column: 23, scope: !1382)
!1394 = !DILocation(line: 281, column: 38, scope: !1382)
!1395 = !DILocation(line: 281, column: 46, scope: !1382)
!1396 = !DILocation(line: 281, column: 36, scope: !1382)
!1397 = !DILocation(line: 281, column: 58, scope: !1382)
!1398 = !DILocation(line: 281, column: 14, scope: !1382)
!1399 = !DILocation(line: 284, column: 26, scope: !1382)
!1400 = !DILocation(line: 284, column: 33, scope: !1382)
!1401 = !DILocation(line: 284, column: 38, scope: !1382)
!1402 = !DILocation(line: 285, column: 21, scope: !1382)
!1403 = !DILocation(line: 285, column: 28, scope: !1382)
!1404 = !DILocation(line: 285, column: 36, scope: !1382)
!1405 = !DILocation(line: 286, column: 6, scope: !1382)
!1406 = !DILocation(line: 284, column: 24, scope: !1382)
!1407 = !DILocation(line: 284, column: 3, scope: !1382)
!1408 = !DILocation(line: 284, column: 11, scope: !1382)
!1409 = !DILocation(line: 284, column: 15, scope: !1382)
!1410 = !DILocation(line: 284, column: 22, scope: !1382)
!1411 = !DILocation(line: 288, column: 3, scope: !1382)
!1412 = !DILocation(line: 288, column: 11, scope: !1382)
!1413 = !DILocation(line: 288, column: 22, scope: !1382)
!1414 = !DILocation(line: 289, column: 3, scope: !1382)
