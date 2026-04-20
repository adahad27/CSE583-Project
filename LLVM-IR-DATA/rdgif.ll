; ModuleID = 'cBench/consumer_jpeg_c/src/rdgif.c'
source_filename = "cBench/consumer_jpeg_c/src/rdgif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jpeg_compress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, double, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [16 x i8], [16 x i8], [16 x i8], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.gif_source_struct = type { %struct.cjpeg_source_struct, ptr, ptr, [260 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32 }
%struct.cjpeg_source_struct = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.cdjpeg_progress_mgr = type { %struct.jpeg_progress_mgr, i32, i32, i32 }
%struct.jpeg_progress_mgr = type { ptr, i64, i64, i32, i32 }

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @jinit_read_gif(ptr noundef %0) #0 !dbg !612 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !616, !DIExpression(), !617)
    #dbg_declare(ptr %3, !618, !DIExpression(), !619)
  %4 = load ptr, ptr %2, align 8, !dbg !620
  %5 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %4, i32 0, i32 1, !dbg !621
  %6 = load ptr, ptr %5, align 8, !dbg !621
  %7 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %6, i32 0, i32 0, !dbg !622
  %8 = load ptr, ptr %7, align 8, !dbg !622
  %9 = load ptr, ptr %2, align 8, !dbg !623
  %10 = call ptr %8(ptr noundef %9, i32 noundef 1, i64 noundef 440), !dbg !624
  store ptr %10, ptr %3, align 8, !dbg !625
  %11 = load ptr, ptr %2, align 8, !dbg !626
  %12 = load ptr, ptr %3, align 8, !dbg !627
  %13 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %12, i32 0, i32 1, !dbg !628
  store ptr %11, ptr %13, align 8, !dbg !629
  %14 = load ptr, ptr %3, align 8, !dbg !630
  %15 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %14, i32 0, i32 0, !dbg !631
  %16 = getelementptr inbounds nuw %struct.cjpeg_source_struct, ptr %15, i32 0, i32 0, !dbg !632
  store ptr @start_input_gif, ptr %16, align 8, !dbg !633
  %17 = load ptr, ptr %3, align 8, !dbg !634
  %18 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %17, i32 0, i32 0, !dbg !635
  %19 = getelementptr inbounds nuw %struct.cjpeg_source_struct, ptr %18, i32 0, i32 2, !dbg !636
  store ptr @finish_input_gif, ptr %19, align 8, !dbg !637
  %20 = load ptr, ptr %3, align 8, !dbg !638
  ret ptr %20, !dbg !639
}

; Function Attrs: noinline nounwind uwtable
define internal void @start_input_gif(ptr noundef %0, ptr noundef %1) #0 !dbg !640 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca [10 x i8], align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !641, !DIExpression(), !642)
  store ptr %1, ptr %4, align 8
    #dbg_declare(ptr %4, !643, !DIExpression(), !644)
    #dbg_declare(ptr %5, !645, !DIExpression(), !646)
  %15 = load ptr, ptr %4, align 8, !dbg !647
  store ptr %15, ptr %5, align 8, !dbg !646
    #dbg_declare(ptr %6, !648, !DIExpression(), !650)
    #dbg_declare(ptr %7, !651, !DIExpression(), !652)
    #dbg_declare(ptr %8, !653, !DIExpression(), !654)
    #dbg_declare(ptr %9, !655, !DIExpression(), !656)
    #dbg_declare(ptr %10, !657, !DIExpression(), !658)
    #dbg_declare(ptr %11, !659, !DIExpression(), !660)
  %16 = load ptr, ptr %3, align 8, !dbg !661
  %17 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %16, i32 0, i32 1, !dbg !662
  %18 = load ptr, ptr %17, align 8, !dbg !662
  %19 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %18, i32 0, i32 2, !dbg !663
  %20 = load ptr, ptr %19, align 8, !dbg !663
  %21 = load ptr, ptr %3, align 8, !dbg !664
  %22 = call ptr %20(ptr noundef %21, i32 noundef 1, i32 noundef 256, i32 noundef 3), !dbg !665
  %23 = load ptr, ptr %5, align 8, !dbg !666
  %24 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %23, i32 0, i32 2, !dbg !667
  store ptr %22, ptr %24, align 8, !dbg !668
  %25 = getelementptr inbounds [10 x i8], ptr %6, i64 0, i64 0, !dbg !669
  %26 = load ptr, ptr %5, align 8, !dbg !669
  %27 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %26, i32 0, i32 0, !dbg !669
  %28 = getelementptr inbounds nuw %struct.cjpeg_source_struct, ptr %27, i32 0, i32 3, !dbg !669
  %29 = load ptr, ptr %28, align 8, !dbg !669
  %30 = call i64 @fread(ptr noundef %25, i64 noundef 1, i64 noundef 6, ptr noundef %29), !dbg !669
  %31 = icmp eq i64 %30, 6, !dbg !669
  br i1 %31, label %43, label %32, !dbg !671

32:                                               ; preds = %2
  %33 = load ptr, ptr %3, align 8, !dbg !672
  %34 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %33, i32 0, i32 0, !dbg !672
  %35 = load ptr, ptr %34, align 8, !dbg !672
  %36 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %35, i32 0, i32 5, !dbg !672
  store i32 1016, ptr %36, align 8, !dbg !672
  %37 = load ptr, ptr %3, align 8, !dbg !672
  %38 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %37, i32 0, i32 0, !dbg !672
  %39 = load ptr, ptr %38, align 8, !dbg !672
  %40 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %39, i32 0, i32 0, !dbg !672
  %41 = load ptr, ptr %40, align 8, !dbg !672
  %42 = load ptr, ptr %3, align 8, !dbg !672
  call void %41(ptr noundef %42), !dbg !672
  br label %43, !dbg !672

43:                                               ; preds = %32, %2
  %44 = getelementptr inbounds [10 x i8], ptr %6, i64 0, i64 0, !dbg !673
  %45 = load i8, ptr %44, align 1, !dbg !673
  %46 = sext i8 %45 to i32, !dbg !673
  %47 = icmp ne i32 %46, 71, !dbg !675
  br i1 %47, label %58, label %48, !dbg !676

48:                                               ; preds = %43
  %49 = getelementptr inbounds [10 x i8], ptr %6, i64 0, i64 1, !dbg !677
  %50 = load i8, ptr %49, align 1, !dbg !677
  %51 = sext i8 %50 to i32, !dbg !677
  %52 = icmp ne i32 %51, 73, !dbg !678
  br i1 %52, label %58, label %53, !dbg !679

53:                                               ; preds = %48
  %54 = getelementptr inbounds [10 x i8], ptr %6, i64 0, i64 2, !dbg !680
  %55 = load i8, ptr %54, align 1, !dbg !680
  %56 = sext i8 %55 to i32, !dbg !680
  %57 = icmp ne i32 %56, 70, !dbg !681
  br i1 %57, label %58, label %69, !dbg !679

58:                                               ; preds = %53, %48, %43
  %59 = load ptr, ptr %3, align 8, !dbg !682
  %60 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %59, i32 0, i32 0, !dbg !682
  %61 = load ptr, ptr %60, align 8, !dbg !682
  %62 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %61, i32 0, i32 5, !dbg !682
  store i32 1016, ptr %62, align 8, !dbg !682
  %63 = load ptr, ptr %3, align 8, !dbg !682
  %64 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %63, i32 0, i32 0, !dbg !682
  %65 = load ptr, ptr %64, align 8, !dbg !682
  %66 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %65, i32 0, i32 0, !dbg !682
  %67 = load ptr, ptr %66, align 8, !dbg !682
  %68 = load ptr, ptr %3, align 8, !dbg !682
  call void %67(ptr noundef %68), !dbg !682
  br label %69, !dbg !682

69:                                               ; preds = %58, %53
  %70 = getelementptr inbounds [10 x i8], ptr %6, i64 0, i64 3, !dbg !683
  %71 = load i8, ptr %70, align 1, !dbg !683
  %72 = sext i8 %71 to i32, !dbg !683
  %73 = icmp ne i32 %72, 56, !dbg !685
  br i1 %73, label %84, label %74, !dbg !686

74:                                               ; preds = %69
  %75 = getelementptr inbounds [10 x i8], ptr %6, i64 0, i64 4, !dbg !687
  %76 = load i8, ptr %75, align 1, !dbg !687
  %77 = sext i8 %76 to i32, !dbg !687
  %78 = icmp ne i32 %77, 55, !dbg !688
  br i1 %78, label %84, label %79, !dbg !689

79:                                               ; preds = %74
  %80 = getelementptr inbounds [10 x i8], ptr %6, i64 0, i64 5, !dbg !690
  %81 = load i8, ptr %80, align 1, !dbg !690
  %82 = sext i8 %81 to i32, !dbg !690
  %83 = icmp ne i32 %82, 97, !dbg !691
  br i1 %83, label %84, label %132, !dbg !692

84:                                               ; preds = %79, %74, %69
  %85 = getelementptr inbounds [10 x i8], ptr %6, i64 0, i64 3, !dbg !693
  %86 = load i8, ptr %85, align 1, !dbg !693
  %87 = sext i8 %86 to i32, !dbg !693
  %88 = icmp ne i32 %87, 56, !dbg !694
  br i1 %88, label %99, label %89, !dbg !695

89:                                               ; preds = %84
  %90 = getelementptr inbounds [10 x i8], ptr %6, i64 0, i64 4, !dbg !696
  %91 = load i8, ptr %90, align 1, !dbg !696
  %92 = sext i8 %91 to i32, !dbg !696
  %93 = icmp ne i32 %92, 57, !dbg !697
  br i1 %93, label %99, label %94, !dbg !698

94:                                               ; preds = %89
  %95 = getelementptr inbounds [10 x i8], ptr %6, i64 0, i64 5, !dbg !699
  %96 = load i8, ptr %95, align 1, !dbg !699
  %97 = sext i8 %96 to i32, !dbg !699
  %98 = icmp ne i32 %97, 97, !dbg !700
  br i1 %98, label %99, label %132, !dbg !692

99:                                               ; preds = %94, %89, %84
  br label %100, !dbg !701

100:                                              ; preds = %99
    #dbg_declare(ptr %12, !702, !DIExpression(), !705)
  %101 = load ptr, ptr %3, align 8, !dbg !705
  %102 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %101, i32 0, i32 0, !dbg !705
  %103 = load ptr, ptr %102, align 8, !dbg !705
  %104 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %103, i32 0, i32 6, !dbg !705
  %105 = getelementptr inbounds [8 x i32], ptr %104, i64 0, i64 0, !dbg !705
  store ptr %105, ptr %12, align 8, !dbg !705
  %106 = getelementptr inbounds [10 x i8], ptr %6, i64 0, i64 3, !dbg !705
  %107 = load i8, ptr %106, align 1, !dbg !705
  %108 = sext i8 %107 to i32, !dbg !705
  %109 = load ptr, ptr %12, align 8, !dbg !705
  %110 = getelementptr inbounds i32, ptr %109, i64 0, !dbg !705
  store i32 %108, ptr %110, align 4, !dbg !705
  %111 = getelementptr inbounds [10 x i8], ptr %6, i64 0, i64 4, !dbg !705
  %112 = load i8, ptr %111, align 1, !dbg !705
  %113 = sext i8 %112 to i32, !dbg !705
  %114 = load ptr, ptr %12, align 8, !dbg !705
  %115 = getelementptr inbounds i32, ptr %114, i64 1, !dbg !705
  store i32 %113, ptr %115, align 4, !dbg !705
  %116 = getelementptr inbounds [10 x i8], ptr %6, i64 0, i64 5, !dbg !705
  %117 = load i8, ptr %116, align 1, !dbg !705
  %118 = sext i8 %117 to i32, !dbg !705
  %119 = load ptr, ptr %12, align 8, !dbg !705
  %120 = getelementptr inbounds i32, ptr %119, i64 2, !dbg !705
  store i32 %118, ptr %120, align 4, !dbg !705
  %121 = load ptr, ptr %3, align 8, !dbg !705
  %122 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %121, i32 0, i32 0, !dbg !705
  %123 = load ptr, ptr %122, align 8, !dbg !705
  %124 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %123, i32 0, i32 5, !dbg !705
  store i32 1018, ptr %124, align 8, !dbg !705
  %125 = load ptr, ptr %3, align 8, !dbg !705
  %126 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %125, i32 0, i32 0, !dbg !705
  %127 = load ptr, ptr %126, align 8, !dbg !705
  %128 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %127, i32 0, i32 1, !dbg !705
  %129 = load ptr, ptr %128, align 8, !dbg !705
  %130 = load ptr, ptr %3, align 8, !dbg !705
  call void %129(ptr noundef %130, i32 noundef 1), !dbg !705
  br label %131, !dbg !705

131:                                              ; preds = %100
  br label %132, !dbg !705

132:                                              ; preds = %131, %94, %79
  %133 = getelementptr inbounds [10 x i8], ptr %6, i64 0, i64 0, !dbg !706
  %134 = load ptr, ptr %5, align 8, !dbg !706
  %135 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %134, i32 0, i32 0, !dbg !706
  %136 = getelementptr inbounds nuw %struct.cjpeg_source_struct, ptr %135, i32 0, i32 3, !dbg !706
  %137 = load ptr, ptr %136, align 8, !dbg !706
  %138 = call i64 @fread(ptr noundef %133, i64 noundef 1, i64 noundef 7, ptr noundef %137), !dbg !706
  %139 = icmp eq i64 %138, 7, !dbg !706
  br i1 %139, label %151, label %140, !dbg !708

140:                                              ; preds = %132
  %141 = load ptr, ptr %3, align 8, !dbg !709
  %142 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %141, i32 0, i32 0, !dbg !709
  %143 = load ptr, ptr %142, align 8, !dbg !709
  %144 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %143, i32 0, i32 5, !dbg !709
  store i32 42, ptr %144, align 8, !dbg !709
  %145 = load ptr, ptr %3, align 8, !dbg !709
  %146 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %145, i32 0, i32 0, !dbg !709
  %147 = load ptr, ptr %146, align 8, !dbg !709
  %148 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %147, i32 0, i32 0, !dbg !709
  %149 = load ptr, ptr %148, align 8, !dbg !709
  %150 = load ptr, ptr %3, align 8, !dbg !709
  call void %149(ptr noundef %150), !dbg !709
  br label %151, !dbg !709

151:                                              ; preds = %140, %132
  %152 = getelementptr inbounds [10 x i8], ptr %6, i64 0, i64 1, !dbg !710
  %153 = load i8, ptr %152, align 1, !dbg !710
  %154 = sext i8 %153 to i32, !dbg !710
  %155 = and i32 %154, 255, !dbg !710
  %156 = shl i32 %155, 8, !dbg !710
  %157 = getelementptr inbounds [10 x i8], ptr %6, i64 0, i64 0, !dbg !710
  %158 = load i8, ptr %157, align 1, !dbg !710
  %159 = sext i8 %158 to i32, !dbg !710
  %160 = and i32 %159, 255, !dbg !710
  %161 = or i32 %156, %160, !dbg !710
  store i32 %161, ptr %7, align 4, !dbg !711
  %162 = getelementptr inbounds [10 x i8], ptr %6, i64 0, i64 3, !dbg !712
  %163 = load i8, ptr %162, align 1, !dbg !712
  %164 = sext i8 %163 to i32, !dbg !712
  %165 = and i32 %164, 255, !dbg !712
  %166 = shl i32 %165, 8, !dbg !712
  %167 = getelementptr inbounds [10 x i8], ptr %6, i64 0, i64 2, !dbg !712
  %168 = load i8, ptr %167, align 1, !dbg !712
  %169 = sext i8 %168 to i32, !dbg !712
  %170 = and i32 %169, 255, !dbg !712
  %171 = or i32 %166, %170, !dbg !712
  store i32 %171, ptr %8, align 4, !dbg !713
  %172 = getelementptr inbounds [10 x i8], ptr %6, i64 0, i64 4, !dbg !714
  %173 = load i8, ptr %172, align 1, !dbg !714
  %174 = sext i8 %173 to i32, !dbg !714
  %175 = and i32 %174, 7, !dbg !715
  %176 = shl i32 2, %175, !dbg !716
  store i32 %176, ptr %9, align 4, !dbg !717
  %177 = getelementptr inbounds [10 x i8], ptr %6, i64 0, i64 6, !dbg !718
  %178 = load i8, ptr %177, align 1, !dbg !718
  %179 = sext i8 %178 to i32, !dbg !718
  %180 = and i32 %179, 255, !dbg !719
  store i32 %180, ptr %10, align 4, !dbg !720
  %181 = load i32, ptr %10, align 4, !dbg !721
  %182 = icmp ne i32 %181, 0, !dbg !723
  br i1 %182, label %183, label %197, !dbg !724

183:                                              ; preds = %151
  %184 = load i32, ptr %10, align 4, !dbg !725
  %185 = icmp ne i32 %184, 49, !dbg !726
  br i1 %185, label %186, label %197, !dbg !724

186:                                              ; preds = %183
  %187 = load ptr, ptr %3, align 8, !dbg !727
  %188 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %187, i32 0, i32 0, !dbg !727
  %189 = load ptr, ptr %188, align 8, !dbg !727
  %190 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %189, i32 0, i32 5, !dbg !727
  store i32 1020, ptr %190, align 8, !dbg !727
  %191 = load ptr, ptr %3, align 8, !dbg !727
  %192 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %191, i32 0, i32 0, !dbg !727
  %193 = load ptr, ptr %192, align 8, !dbg !727
  %194 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %193, i32 0, i32 1, !dbg !727
  %195 = load ptr, ptr %194, align 8, !dbg !727
  %196 = load ptr, ptr %3, align 8, !dbg !727
  call void %195(ptr noundef %196, i32 noundef 1), !dbg !727
  br label %197, !dbg !727

197:                                              ; preds = %186, %183, %151
  %198 = getelementptr inbounds [10 x i8], ptr %6, i64 0, i64 4, !dbg !728
  %199 = load i8, ptr %198, align 1, !dbg !728
  %200 = sext i8 %199 to i32, !dbg !728
  %201 = and i32 %200, 128, !dbg !728
  %202 = icmp ne i32 %201, 0, !dbg !728
  br i1 %202, label %203, label %209, !dbg !728

203:                                              ; preds = %197
  %204 = load ptr, ptr %5, align 8, !dbg !730
  %205 = load i32, ptr %9, align 4, !dbg !731
  %206 = load ptr, ptr %5, align 8, !dbg !732
  %207 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %206, i32 0, i32 2, !dbg !733
  %208 = load ptr, ptr %207, align 8, !dbg !733
  call void @ReadColorMap(ptr noundef %204, i32 noundef %205, ptr noundef %208), !dbg !734
  br label %209, !dbg !734

209:                                              ; preds = %203, %197
  br label %210, !dbg !735

210:                                              ; preds = %234, %229, %209
  %211 = load ptr, ptr %5, align 8, !dbg !736
  %212 = call i32 @ReadByte(ptr noundef %211), !dbg !740
  store i32 %212, ptr %11, align 4, !dbg !741
  %213 = load i32, ptr %11, align 4, !dbg !742
  %214 = icmp eq i32 %213, 59, !dbg !744
  br i1 %214, label %215, label %226, !dbg !744

215:                                              ; preds = %210
  %216 = load ptr, ptr %3, align 8, !dbg !745
  %217 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %216, i32 0, i32 0, !dbg !745
  %218 = load ptr, ptr %217, align 8, !dbg !745
  %219 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %218, i32 0, i32 5, !dbg !745
  store i32 1015, ptr %219, align 8, !dbg !745
  %220 = load ptr, ptr %3, align 8, !dbg !745
  %221 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %220, i32 0, i32 0, !dbg !745
  %222 = load ptr, ptr %221, align 8, !dbg !745
  %223 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %222, i32 0, i32 0, !dbg !745
  %224 = load ptr, ptr %223, align 8, !dbg !745
  %225 = load ptr, ptr %3, align 8, !dbg !745
  call void %224(ptr noundef %225), !dbg !745
  br label %226, !dbg !745

226:                                              ; preds = %215, %210
  %227 = load i32, ptr %11, align 4, !dbg !746
  %228 = icmp eq i32 %227, 33, !dbg !748
  br i1 %228, label %229, label %231, !dbg !748

229:                                              ; preds = %226
  %230 = load ptr, ptr %5, align 8, !dbg !749
  call void @DoExtension(ptr noundef %230), !dbg !751
  br label %210, !dbg !752, !llvm.loop !753

231:                                              ; preds = %226
  %232 = load i32, ptr %11, align 4, !dbg !756
  %233 = icmp ne i32 %232, 44, !dbg !758
  br i1 %233, label %234, label %251, !dbg !758

234:                                              ; preds = %231
  %235 = load ptr, ptr %3, align 8, !dbg !759
  %236 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %235, i32 0, i32 0, !dbg !759
  %237 = load ptr, ptr %236, align 8, !dbg !759
  %238 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %237, i32 0, i32 5, !dbg !759
  store i32 1022, ptr %238, align 8, !dbg !759
  %239 = load i32, ptr %11, align 4, !dbg !759
  %240 = load ptr, ptr %3, align 8, !dbg !759
  %241 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %240, i32 0, i32 0, !dbg !759
  %242 = load ptr, ptr %241, align 8, !dbg !759
  %243 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %242, i32 0, i32 6, !dbg !759
  %244 = getelementptr inbounds [8 x i32], ptr %243, i64 0, i64 0, !dbg !759
  store i32 %239, ptr %244, align 4, !dbg !759
  %245 = load ptr, ptr %3, align 8, !dbg !759
  %246 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %245, i32 0, i32 0, !dbg !759
  %247 = load ptr, ptr %246, align 8, !dbg !759
  %248 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %247, i32 0, i32 1, !dbg !759
  %249 = load ptr, ptr %248, align 8, !dbg !759
  %250 = load ptr, ptr %3, align 8, !dbg !759
  call void %249(ptr noundef %250, i32 noundef -1), !dbg !759
  br label %210, !dbg !761, !llvm.loop !753

251:                                              ; preds = %231
  %252 = getelementptr inbounds [10 x i8], ptr %6, i64 0, i64 0, !dbg !762
  %253 = load ptr, ptr %5, align 8, !dbg !762
  %254 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %253, i32 0, i32 0, !dbg !762
  %255 = getelementptr inbounds nuw %struct.cjpeg_source_struct, ptr %254, i32 0, i32 3, !dbg !762
  %256 = load ptr, ptr %255, align 8, !dbg !762
  %257 = call i64 @fread(ptr noundef %252, i64 noundef 1, i64 noundef 9, ptr noundef %256), !dbg !762
  %258 = icmp eq i64 %257, 9, !dbg !762
  br i1 %258, label %270, label %259, !dbg !764

259:                                              ; preds = %251
  %260 = load ptr, ptr %3, align 8, !dbg !765
  %261 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %260, i32 0, i32 0, !dbg !765
  %262 = load ptr, ptr %261, align 8, !dbg !765
  %263 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %262, i32 0, i32 5, !dbg !765
  store i32 42, ptr %263, align 8, !dbg !765
  %264 = load ptr, ptr %3, align 8, !dbg !765
  %265 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %264, i32 0, i32 0, !dbg !765
  %266 = load ptr, ptr %265, align 8, !dbg !765
  %267 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %266, i32 0, i32 0, !dbg !765
  %268 = load ptr, ptr %267, align 8, !dbg !765
  %269 = load ptr, ptr %3, align 8, !dbg !765
  call void %268(ptr noundef %269), !dbg !765
  br label %270, !dbg !765

270:                                              ; preds = %259, %251
  %271 = getelementptr inbounds [10 x i8], ptr %6, i64 0, i64 5, !dbg !766
  %272 = load i8, ptr %271, align 1, !dbg !766
  %273 = sext i8 %272 to i32, !dbg !766
  %274 = and i32 %273, 255, !dbg !766
  %275 = shl i32 %274, 8, !dbg !766
  %276 = getelementptr inbounds [10 x i8], ptr %6, i64 0, i64 4, !dbg !766
  %277 = load i8, ptr %276, align 1, !dbg !766
  %278 = sext i8 %277 to i32, !dbg !766
  %279 = and i32 %278, 255, !dbg !766
  %280 = or i32 %275, %279, !dbg !766
  store i32 %280, ptr %7, align 4, !dbg !767
  %281 = getelementptr inbounds [10 x i8], ptr %6, i64 0, i64 7, !dbg !768
  %282 = load i8, ptr %281, align 1, !dbg !768
  %283 = sext i8 %282 to i32, !dbg !768
  %284 = and i32 %283, 255, !dbg !768
  %285 = shl i32 %284, 8, !dbg !768
  %286 = getelementptr inbounds [10 x i8], ptr %6, i64 0, i64 6, !dbg !768
  %287 = load i8, ptr %286, align 1, !dbg !768
  %288 = sext i8 %287 to i32, !dbg !768
  %289 = and i32 %288, 255, !dbg !768
  %290 = or i32 %285, %289, !dbg !768
  store i32 %290, ptr %8, align 4, !dbg !769
  %291 = getelementptr inbounds [10 x i8], ptr %6, i64 0, i64 8, !dbg !770
  %292 = load i8, ptr %291, align 1, !dbg !770
  %293 = sext i8 %292 to i32, !dbg !770
  %294 = and i32 %293, 64, !dbg !770
  %295 = load ptr, ptr %5, align 8, !dbg !771
  %296 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %295, i32 0, i32 21, !dbg !772
  store i32 %294, ptr %296, align 8, !dbg !773
  %297 = getelementptr inbounds [10 x i8], ptr %6, i64 0, i64 8, !dbg !774
  %298 = load i8, ptr %297, align 1, !dbg !774
  %299 = sext i8 %298 to i32, !dbg !774
  %300 = and i32 %299, 128, !dbg !774
  %301 = icmp ne i32 %300, 0, !dbg !774
  br i1 %301, label %302, label %313, !dbg !774

302:                                              ; preds = %270
  %303 = getelementptr inbounds [10 x i8], ptr %6, i64 0, i64 8, !dbg !776
  %304 = load i8, ptr %303, align 1, !dbg !776
  %305 = sext i8 %304 to i32, !dbg !776
  %306 = and i32 %305, 7, !dbg !778
  %307 = shl i32 2, %306, !dbg !779
  store i32 %307, ptr %9, align 4, !dbg !780
  %308 = load ptr, ptr %5, align 8, !dbg !781
  %309 = load i32, ptr %9, align 4, !dbg !782
  %310 = load ptr, ptr %5, align 8, !dbg !783
  %311 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %310, i32 0, i32 2, !dbg !784
  %312 = load ptr, ptr %311, align 8, !dbg !784
  call void @ReadColorMap(ptr noundef %308, i32 noundef %309, ptr noundef %312), !dbg !785
  br label %313, !dbg !786

313:                                              ; preds = %302, %270
  %314 = load ptr, ptr %5, align 8, !dbg !787
  %315 = call i32 @ReadByte(ptr noundef %314), !dbg !788
  %316 = load ptr, ptr %5, align 8, !dbg !789
  %317 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %316, i32 0, i32 8, !dbg !790
  store i32 %315, ptr %317, align 4, !dbg !791
  %318 = load ptr, ptr %5, align 8, !dbg !792
  %319 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %318, i32 0, i32 8, !dbg !794
  %320 = load i32, ptr %319, align 4, !dbg !794
  %321 = icmp slt i32 %320, 2, !dbg !795
  br i1 %321, label %327, label %322, !dbg !796

322:                                              ; preds = %313
  %323 = load ptr, ptr %5, align 8, !dbg !797
  %324 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %323, i32 0, i32 8, !dbg !798
  %325 = load i32, ptr %324, align 4, !dbg !798
  %326 = icmp sge i32 %325, 12, !dbg !799
  br i1 %326, label %327, label %346, !dbg !796

327:                                              ; preds = %322, %313
  %328 = load ptr, ptr %3, align 8, !dbg !800
  %329 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %328, i32 0, i32 0, !dbg !800
  %330 = load ptr, ptr %329, align 8, !dbg !800
  %331 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %330, i32 0, i32 5, !dbg !800
  store i32 1013, ptr %331, align 8, !dbg !800
  %332 = load ptr, ptr %5, align 8, !dbg !800
  %333 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %332, i32 0, i32 8, !dbg !800
  %334 = load i32, ptr %333, align 4, !dbg !800
  %335 = load ptr, ptr %3, align 8, !dbg !800
  %336 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %335, i32 0, i32 0, !dbg !800
  %337 = load ptr, ptr %336, align 8, !dbg !800
  %338 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %337, i32 0, i32 6, !dbg !800
  %339 = getelementptr inbounds [8 x i32], ptr %338, i64 0, i64 0, !dbg !800
  store i32 %334, ptr %339, align 4, !dbg !800
  %340 = load ptr, ptr %3, align 8, !dbg !800
  %341 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %340, i32 0, i32 0, !dbg !800
  %342 = load ptr, ptr %341, align 8, !dbg !800
  %343 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %342, i32 0, i32 0, !dbg !800
  %344 = load ptr, ptr %343, align 8, !dbg !800
  %345 = load ptr, ptr %3, align 8, !dbg !800
  call void %344(ptr noundef %345), !dbg !800
  br label %346, !dbg !800

346:                                              ; preds = %327, %322
  br label %347, !dbg !801

347:                                              ; preds = %346
  %348 = load ptr, ptr %3, align 8, !dbg !802
  %349 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %348, i32 0, i32 1, !dbg !803
  %350 = load ptr, ptr %349, align 8, !dbg !803
  %351 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %350, i32 0, i32 1, !dbg !804
  %352 = load ptr, ptr %351, align 8, !dbg !804
  %353 = load ptr, ptr %3, align 8, !dbg !805
  %354 = call ptr %352(ptr noundef %353, i32 noundef 1, i64 noundef 8192), !dbg !806
  %355 = load ptr, ptr %5, align 8, !dbg !807
  %356 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %355, i32 0, i32 17, !dbg !808
  store ptr %354, ptr %356, align 8, !dbg !809
  %357 = load ptr, ptr %3, align 8, !dbg !810
  %358 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %357, i32 0, i32 1, !dbg !811
  %359 = load ptr, ptr %358, align 8, !dbg !811
  %360 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %359, i32 0, i32 1, !dbg !812
  %361 = load ptr, ptr %360, align 8, !dbg !812
  %362 = load ptr, ptr %3, align 8, !dbg !813
  %363 = call ptr %361(ptr noundef %362, i32 noundef 1, i64 noundef 4096), !dbg !814
  %364 = load ptr, ptr %5, align 8, !dbg !815
  %365 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %364, i32 0, i32 18, !dbg !816
  store ptr %363, ptr %365, align 8, !dbg !817
  %366 = load ptr, ptr %3, align 8, !dbg !818
  %367 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %366, i32 0, i32 1, !dbg !819
  %368 = load ptr, ptr %367, align 8, !dbg !819
  %369 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %368, i32 0, i32 1, !dbg !820
  %370 = load ptr, ptr %369, align 8, !dbg !820
  %371 = load ptr, ptr %3, align 8, !dbg !821
  %372 = call ptr %370(ptr noundef %371, i32 noundef 1, i64 noundef 4096), !dbg !822
  %373 = load ptr, ptr %5, align 8, !dbg !823
  %374 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %373, i32 0, i32 19, !dbg !824
  store ptr %372, ptr %374, align 8, !dbg !825
  %375 = load ptr, ptr %5, align 8, !dbg !826
  call void @InitLZWCode(ptr noundef %375), !dbg !827
  %376 = load ptr, ptr %5, align 8, !dbg !828
  %377 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %376, i32 0, i32 21, !dbg !830
  %378 = load i32, ptr %377, align 8, !dbg !830
  %379 = icmp ne i32 %378, 0, !dbg !828
  br i1 %379, label %380, label %408, !dbg !828

380:                                              ; preds = %347
  %381 = load ptr, ptr %3, align 8, !dbg !831
  %382 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %381, i32 0, i32 1, !dbg !833
  %383 = load ptr, ptr %382, align 8, !dbg !833
  %384 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %383, i32 0, i32 4, !dbg !834
  %385 = load ptr, ptr %384, align 8, !dbg !834
  %386 = load ptr, ptr %3, align 8, !dbg !835
  %387 = load i32, ptr %7, align 4, !dbg !836
  %388 = load i32, ptr %8, align 4, !dbg !837
  %389 = call ptr %385(ptr noundef %386, i32 noundef 1, i32 noundef 0, i32 noundef %387, i32 noundef %388, i32 noundef 1), !dbg !838
  %390 = load ptr, ptr %5, align 8, !dbg !839
  %391 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %390, i32 0, i32 22, !dbg !840
  store ptr %389, ptr %391, align 8, !dbg !841
  %392 = load ptr, ptr %3, align 8, !dbg !842
  %393 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %392, i32 0, i32 2, !dbg !844
  %394 = load ptr, ptr %393, align 8, !dbg !844
  %395 = icmp ne ptr %394, null, !dbg !845
  br i1 %395, label %396, label %404, !dbg !845

396:                                              ; preds = %380
    #dbg_declare(ptr %13, !846, !DIExpression(), !848)
  %397 = load ptr, ptr %3, align 8, !dbg !849
  %398 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %397, i32 0, i32 2, !dbg !850
  %399 = load ptr, ptr %398, align 8, !dbg !850
  store ptr %399, ptr %13, align 8, !dbg !848
  %400 = load ptr, ptr %13, align 8, !dbg !851
  %401 = getelementptr inbounds nuw %struct.cdjpeg_progress_mgr, ptr %400, i32 0, i32 2, !dbg !852
  %402 = load i32, ptr %401, align 4, !dbg !853
  %403 = add nsw i32 %402, 1, !dbg !853
  store i32 %403, ptr %401, align 4, !dbg !853
  br label %404, !dbg !854

404:                                              ; preds = %396, %380
  %405 = load ptr, ptr %5, align 8, !dbg !855
  %406 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %405, i32 0, i32 0, !dbg !856
  %407 = getelementptr inbounds nuw %struct.cjpeg_source_struct, ptr %406, i32 0, i32 1, !dbg !857
  store ptr @load_interlaced_image, ptr %407, align 8, !dbg !858
  br label %412, !dbg !859

408:                                              ; preds = %347
  %409 = load ptr, ptr %5, align 8, !dbg !860
  %410 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %409, i32 0, i32 0, !dbg !862
  %411 = getelementptr inbounds nuw %struct.cjpeg_source_struct, ptr %410, i32 0, i32 1, !dbg !863
  store ptr @get_pixel_rows, ptr %411, align 8, !dbg !864
  br label %412

412:                                              ; preds = %408, %404
  %413 = load ptr, ptr %3, align 8, !dbg !865
  %414 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %413, i32 0, i32 1, !dbg !866
  %415 = load ptr, ptr %414, align 8, !dbg !866
  %416 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %415, i32 0, i32 2, !dbg !867
  %417 = load ptr, ptr %416, align 8, !dbg !867
  %418 = load ptr, ptr %3, align 8, !dbg !868
  %419 = load i32, ptr %7, align 4, !dbg !869
  %420 = mul i32 %419, 3, !dbg !870
  %421 = call ptr %417(ptr noundef %418, i32 noundef 1, i32 noundef %420, i32 noundef 1), !dbg !871
  %422 = load ptr, ptr %5, align 8, !dbg !872
  %423 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %422, i32 0, i32 0, !dbg !873
  %424 = getelementptr inbounds nuw %struct.cjpeg_source_struct, ptr %423, i32 0, i32 4, !dbg !874
  store ptr %421, ptr %424, align 8, !dbg !875
  %425 = load ptr, ptr %5, align 8, !dbg !876
  %426 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %425, i32 0, i32 0, !dbg !877
  %427 = getelementptr inbounds nuw %struct.cjpeg_source_struct, ptr %426, i32 0, i32 5, !dbg !878
  store i32 1, ptr %427, align 8, !dbg !879
  %428 = load ptr, ptr %3, align 8, !dbg !880
  %429 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %428, i32 0, i32 9, !dbg !881
  store i32 2, ptr %429, align 4, !dbg !882
  %430 = load ptr, ptr %3, align 8, !dbg !883
  %431 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %430, i32 0, i32 8, !dbg !884
  store i32 3, ptr %431, align 8, !dbg !885
  %432 = load ptr, ptr %3, align 8, !dbg !886
  %433 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %432, i32 0, i32 11, !dbg !887
  store i32 8, ptr %433, align 8, !dbg !888
  %434 = load i32, ptr %7, align 4, !dbg !889
  %435 = load ptr, ptr %3, align 8, !dbg !890
  %436 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %435, i32 0, i32 6, !dbg !891
  store i32 %434, ptr %436, align 8, !dbg !892
  %437 = load i32, ptr %8, align 4, !dbg !893
  %438 = load ptr, ptr %3, align 8, !dbg !894
  %439 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %438, i32 0, i32 7, !dbg !895
  store i32 %437, ptr %439, align 4, !dbg !896
  br label %440, !dbg !897

440:                                              ; preds = %412
    #dbg_declare(ptr %14, !898, !DIExpression(), !900)
  %441 = load ptr, ptr %3, align 8, !dbg !900
  %442 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %441, i32 0, i32 0, !dbg !900
  %443 = load ptr, ptr %442, align 8, !dbg !900
  %444 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %443, i32 0, i32 6, !dbg !900
  %445 = getelementptr inbounds [8 x i32], ptr %444, i64 0, i64 0, !dbg !900
  store ptr %445, ptr %14, align 8, !dbg !900
  %446 = load i32, ptr %7, align 4, !dbg !900
  %447 = load ptr, ptr %14, align 8, !dbg !900
  %448 = getelementptr inbounds i32, ptr %447, i64 0, !dbg !900
  store i32 %446, ptr %448, align 4, !dbg !900
  %449 = load i32, ptr %8, align 4, !dbg !900
  %450 = load ptr, ptr %14, align 8, !dbg !900
  %451 = getelementptr inbounds i32, ptr %450, i64 1, !dbg !900
  store i32 %449, ptr %451, align 4, !dbg !900
  %452 = load i32, ptr %9, align 4, !dbg !900
  %453 = load ptr, ptr %14, align 8, !dbg !900
  %454 = getelementptr inbounds i32, ptr %453, i64 2, !dbg !900
  store i32 %452, ptr %454, align 4, !dbg !900
  %455 = load ptr, ptr %3, align 8, !dbg !900
  %456 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %455, i32 0, i32 0, !dbg !900
  %457 = load ptr, ptr %456, align 8, !dbg !900
  %458 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %457, i32 0, i32 5, !dbg !900
  store i32 1017, ptr %458, align 8, !dbg !900
  %459 = load ptr, ptr %3, align 8, !dbg !900
  %460 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %459, i32 0, i32 0, !dbg !900
  %461 = load ptr, ptr %460, align 8, !dbg !900
  %462 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %461, i32 0, i32 1, !dbg !900
  %463 = load ptr, ptr %462, align 8, !dbg !900
  %464 = load ptr, ptr %3, align 8, !dbg !900
  call void %463(ptr noundef %464, i32 noundef 1), !dbg !900
  br label %465, !dbg !900

465:                                              ; preds = %440
  ret void, !dbg !901
}

; Function Attrs: noinline nounwind uwtable
define internal void @finish_input_gif(ptr noundef %0, ptr noundef %1) #0 !dbg !902 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !903, !DIExpression(), !904)
  store ptr %1, ptr %4, align 8
    #dbg_declare(ptr %4, !905, !DIExpression(), !906)
  ret void, !dbg !907
}

declare i64 @fread(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @ReadColorMap(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 !dbg !908 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
    #dbg_declare(ptr %4, !911, !DIExpression(), !912)
  store i32 %1, ptr %5, align 4
    #dbg_declare(ptr %5, !913, !DIExpression(), !914)
  store ptr %2, ptr %6, align 8
    #dbg_declare(ptr %6, !915, !DIExpression(), !916)
    #dbg_declare(ptr %7, !917, !DIExpression(), !918)
  store i32 0, ptr %7, align 4, !dbg !919
  br label %8, !dbg !921

8:                                                ; preds = %40, %3
  %9 = load i32, ptr %7, align 4, !dbg !922
  %10 = load i32, ptr %5, align 4, !dbg !924
  %11 = icmp slt i32 %9, %10, !dbg !925
  br i1 %11, label %12, label %43, !dbg !926

12:                                               ; preds = %8
  %13 = load ptr, ptr %4, align 8, !dbg !927
  %14 = call i32 @ReadByte(ptr noundef %13), !dbg !927
  %15 = trunc i32 %14 to i8, !dbg !929
  %16 = load ptr, ptr %6, align 8, !dbg !930
  %17 = getelementptr inbounds ptr, ptr %16, i64 0, !dbg !930
  %18 = load ptr, ptr %17, align 8, !dbg !930
  %19 = load i32, ptr %7, align 4, !dbg !931
  %20 = sext i32 %19 to i64, !dbg !930
  %21 = getelementptr inbounds i8, ptr %18, i64 %20, !dbg !930
  store i8 %15, ptr %21, align 1, !dbg !932
  %22 = load ptr, ptr %4, align 8, !dbg !933
  %23 = call i32 @ReadByte(ptr noundef %22), !dbg !933
  %24 = trunc i32 %23 to i8, !dbg !934
  %25 = load ptr, ptr %6, align 8, !dbg !935
  %26 = getelementptr inbounds ptr, ptr %25, i64 1, !dbg !935
  %27 = load ptr, ptr %26, align 8, !dbg !935
  %28 = load i32, ptr %7, align 4, !dbg !936
  %29 = sext i32 %28 to i64, !dbg !935
  %30 = getelementptr inbounds i8, ptr %27, i64 %29, !dbg !935
  store i8 %24, ptr %30, align 1, !dbg !937
  %31 = load ptr, ptr %4, align 8, !dbg !938
  %32 = call i32 @ReadByte(ptr noundef %31), !dbg !938
  %33 = trunc i32 %32 to i8, !dbg !939
  %34 = load ptr, ptr %6, align 8, !dbg !940
  %35 = getelementptr inbounds ptr, ptr %34, i64 2, !dbg !940
  %36 = load ptr, ptr %35, align 8, !dbg !940
  %37 = load i32, ptr %7, align 4, !dbg !941
  %38 = sext i32 %37 to i64, !dbg !940
  %39 = getelementptr inbounds i8, ptr %36, i64 %38, !dbg !940
  store i8 %33, ptr %39, align 1, !dbg !942
  br label %40, !dbg !943

40:                                               ; preds = %12
  %41 = load i32, ptr %7, align 4, !dbg !944
  %42 = add nsw i32 %41, 1, !dbg !944
  store i32 %42, ptr %7, align 4, !dbg !944
  br label %8, !dbg !945, !llvm.loop !946

43:                                               ; preds = %8
  ret void, !dbg !949
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @ReadByte(ptr noundef %0) #0 !dbg !950 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !953, !DIExpression(), !954)
    #dbg_declare(ptr %3, !955, !DIExpression(), !956)
  %5 = load ptr, ptr %2, align 8, !dbg !957
  %6 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %5, i32 0, i32 0, !dbg !958
  %7 = getelementptr inbounds nuw %struct.cjpeg_source_struct, ptr %6, i32 0, i32 3, !dbg !959
  %8 = load ptr, ptr %7, align 8, !dbg !959
  store ptr %8, ptr %3, align 8, !dbg !956
    #dbg_declare(ptr %4, !960, !DIExpression(), !961)
  %9 = load ptr, ptr %3, align 8, !dbg !962
  %10 = call i32 @getc(ptr noundef %9), !dbg !964
  store i32 %10, ptr %4, align 4, !dbg !965
  %11 = icmp eq i32 %10, -1, !dbg !966
  br i1 %11, label %12, label %29, !dbg !966

12:                                               ; preds = %1
  %13 = load ptr, ptr %2, align 8, !dbg !967
  %14 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %13, i32 0, i32 1, !dbg !967
  %15 = load ptr, ptr %14, align 8, !dbg !967
  %16 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %15, i32 0, i32 0, !dbg !967
  %17 = load ptr, ptr %16, align 8, !dbg !967
  %18 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %17, i32 0, i32 5, !dbg !967
  store i32 42, ptr %18, align 8, !dbg !967
  %19 = load ptr, ptr %2, align 8, !dbg !967
  %20 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %19, i32 0, i32 1, !dbg !967
  %21 = load ptr, ptr %20, align 8, !dbg !967
  %22 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %21, i32 0, i32 0, !dbg !967
  %23 = load ptr, ptr %22, align 8, !dbg !967
  %24 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %23, i32 0, i32 0, !dbg !967
  %25 = load ptr, ptr %24, align 8, !dbg !967
  %26 = load ptr, ptr %2, align 8, !dbg !967
  %27 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %26, i32 0, i32 1, !dbg !967
  %28 = load ptr, ptr %27, align 8, !dbg !967
  call void %25(ptr noundef %28), !dbg !967
  br label %29, !dbg !967

29:                                               ; preds = %12, %1
  %30 = load i32, ptr %4, align 4, !dbg !968
  ret i32 %30, !dbg !969
}

; Function Attrs: noinline nounwind uwtable
define internal void @DoExtension(ptr noundef %0) #0 !dbg !970 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !973, !DIExpression(), !974)
    #dbg_declare(ptr %3, !975, !DIExpression(), !976)
  %4 = load ptr, ptr %2, align 8, !dbg !977
  %5 = call i32 @ReadByte(ptr noundef %4), !dbg !978
  store i32 %5, ptr %3, align 4, !dbg !979
  %6 = load ptr, ptr %2, align 8, !dbg !980
  %7 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %6, i32 0, i32 1, !dbg !980
  %8 = load ptr, ptr %7, align 8, !dbg !980
  %9 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %8, i32 0, i32 0, !dbg !980
  %10 = load ptr, ptr %9, align 8, !dbg !980
  %11 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %10, i32 0, i32 5, !dbg !980
  store i32 1019, ptr %11, align 8, !dbg !980
  %12 = load i32, ptr %3, align 4, !dbg !980
  %13 = load ptr, ptr %2, align 8, !dbg !980
  %14 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %13, i32 0, i32 1, !dbg !980
  %15 = load ptr, ptr %14, align 8, !dbg !980
  %16 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %15, i32 0, i32 0, !dbg !980
  %17 = load ptr, ptr %16, align 8, !dbg !980
  %18 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %17, i32 0, i32 6, !dbg !980
  %19 = getelementptr inbounds [8 x i32], ptr %18, i64 0, i64 0, !dbg !980
  store i32 %12, ptr %19, align 4, !dbg !980
  %20 = load ptr, ptr %2, align 8, !dbg !980
  %21 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %20, i32 0, i32 1, !dbg !980
  %22 = load ptr, ptr %21, align 8, !dbg !980
  %23 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %22, i32 0, i32 0, !dbg !980
  %24 = load ptr, ptr %23, align 8, !dbg !980
  %25 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %24, i32 0, i32 1, !dbg !980
  %26 = load ptr, ptr %25, align 8, !dbg !980
  %27 = load ptr, ptr %2, align 8, !dbg !980
  %28 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %27, i32 0, i32 1, !dbg !980
  %29 = load ptr, ptr %28, align 8, !dbg !980
  call void %26(ptr noundef %29, i32 noundef 1), !dbg !980
  %30 = load ptr, ptr %2, align 8, !dbg !981
  call void @SkipDataBlocks(ptr noundef %30), !dbg !982
  ret void, !dbg !983
}

; Function Attrs: noinline nounwind uwtable
define internal void @InitLZWCode(ptr noundef %0) #0 !dbg !984 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !985, !DIExpression(), !986)
  %3 = load ptr, ptr %2, align 8, !dbg !987
  %4 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %3, i32 0, i32 4, !dbg !988
  store i32 2, ptr %4, align 4, !dbg !989
  %5 = load ptr, ptr %2, align 8, !dbg !990
  %6 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %5, i32 0, i32 5, !dbg !991
  store i32 0, ptr %6, align 8, !dbg !992
  %7 = load ptr, ptr %2, align 8, !dbg !993
  %8 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %7, i32 0, i32 6, !dbg !994
  store i32 0, ptr %8, align 4, !dbg !995
  %9 = load ptr, ptr %2, align 8, !dbg !996
  %10 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %9, i32 0, i32 7, !dbg !997
  store i32 0, ptr %10, align 8, !dbg !998
  %11 = load ptr, ptr %2, align 8, !dbg !999
  %12 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %11, i32 0, i32 8, !dbg !1000
  %13 = load i32, ptr %12, align 4, !dbg !1000
  %14 = shl i32 1, %13, !dbg !1001
  %15 = load ptr, ptr %2, align 8, !dbg !1002
  %16 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %15, i32 0, i32 9, !dbg !1003
  store i32 %14, ptr %16, align 8, !dbg !1004
  %17 = load ptr, ptr %2, align 8, !dbg !1005
  %18 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %17, i32 0, i32 9, !dbg !1006
  %19 = load i32, ptr %18, align 8, !dbg !1006
  %20 = add nsw i32 %19, 1, !dbg !1007
  %21 = load ptr, ptr %2, align 8, !dbg !1008
  %22 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %21, i32 0, i32 10, !dbg !1009
  store i32 %20, ptr %22, align 4, !dbg !1010
  %23 = load ptr, ptr %2, align 8, !dbg !1011
  %24 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %23, i32 0, i32 14, !dbg !1012
  store i32 1, ptr %24, align 4, !dbg !1013
  %25 = load ptr, ptr %2, align 8, !dbg !1014
  call void @ReInitLZW(ptr noundef %25), !dbg !1015
  ret void, !dbg !1016
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @load_interlaced_image(ptr noundef %0, ptr noundef %1) #0 !dbg !1017 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !1018, !DIExpression(), !1019)
  store ptr %1, ptr %4, align 8
    #dbg_declare(ptr %4, !1020, !DIExpression(), !1021)
    #dbg_declare(ptr %5, !1022, !DIExpression(), !1023)
  %11 = load ptr, ptr %4, align 8, !dbg !1024
  store ptr %11, ptr %5, align 8, !dbg !1023
    #dbg_declare(ptr %6, !1025, !DIExpression(), !1026)
    #dbg_declare(ptr %7, !1027, !DIExpression(), !1028)
    #dbg_declare(ptr %8, !1029, !DIExpression(), !1030)
    #dbg_declare(ptr %9, !1031, !DIExpression(), !1032)
    #dbg_declare(ptr %10, !1033, !DIExpression(), !1034)
  %12 = load ptr, ptr %3, align 8, !dbg !1035
  %13 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %12, i32 0, i32 2, !dbg !1036
  %14 = load ptr, ptr %13, align 8, !dbg !1036
  store ptr %14, ptr %10, align 8, !dbg !1034
  store i32 0, ptr %9, align 4, !dbg !1037
  br label %15, !dbg !1039

15:                                               ; preds = %73, %2
  %16 = load i32, ptr %9, align 4, !dbg !1040
  %17 = load ptr, ptr %3, align 8, !dbg !1042
  %18 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %17, i32 0, i32 7, !dbg !1043
  %19 = load i32, ptr %18, align 4, !dbg !1043
  %20 = icmp ult i32 %16, %19, !dbg !1044
  br i1 %20, label %21, label %76, !dbg !1045

21:                                               ; preds = %15
  %22 = load ptr, ptr %10, align 8, !dbg !1046
  %23 = icmp ne ptr %22, null, !dbg !1049
  br i1 %23, label %24, label %42, !dbg !1049

24:                                               ; preds = %21
  %25 = load i32, ptr %9, align 4, !dbg !1050
  %26 = zext i32 %25 to i64, !dbg !1052
  %27 = load ptr, ptr %10, align 8, !dbg !1053
  %28 = getelementptr inbounds nuw %struct.cdjpeg_progress_mgr, ptr %27, i32 0, i32 0, !dbg !1054
  %29 = getelementptr inbounds nuw %struct.jpeg_progress_mgr, ptr %28, i32 0, i32 1, !dbg !1055
  store i64 %26, ptr %29, align 8, !dbg !1056
  %30 = load ptr, ptr %3, align 8, !dbg !1057
  %31 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %30, i32 0, i32 7, !dbg !1058
  %32 = load i32, ptr %31, align 4, !dbg !1058
  %33 = zext i32 %32 to i64, !dbg !1059
  %34 = load ptr, ptr %10, align 8, !dbg !1060
  %35 = getelementptr inbounds nuw %struct.cdjpeg_progress_mgr, ptr %34, i32 0, i32 0, !dbg !1061
  %36 = getelementptr inbounds nuw %struct.jpeg_progress_mgr, ptr %35, i32 0, i32 2, !dbg !1062
  store i64 %33, ptr %36, align 8, !dbg !1063
  %37 = load ptr, ptr %10, align 8, !dbg !1064
  %38 = getelementptr inbounds nuw %struct.cdjpeg_progress_mgr, ptr %37, i32 0, i32 0, !dbg !1065
  %39 = getelementptr inbounds nuw %struct.jpeg_progress_mgr, ptr %38, i32 0, i32 0, !dbg !1066
  %40 = load ptr, ptr %39, align 8, !dbg !1066
  %41 = load ptr, ptr %3, align 8, !dbg !1067
  call void %40(ptr noundef %41), !dbg !1068
  br label %42, !dbg !1069

42:                                               ; preds = %24, %21
  %43 = load ptr, ptr %3, align 8, !dbg !1070
  %44 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %43, i32 0, i32 1, !dbg !1071
  %45 = load ptr, ptr %44, align 8, !dbg !1071
  %46 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %45, i32 0, i32 7, !dbg !1072
  %47 = load ptr, ptr %46, align 8, !dbg !1072
  %48 = load ptr, ptr %3, align 8, !dbg !1073
  %49 = load ptr, ptr %5, align 8, !dbg !1074
  %50 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %49, i32 0, i32 22, !dbg !1075
  %51 = load ptr, ptr %50, align 8, !dbg !1075
  %52 = load i32, ptr %9, align 4, !dbg !1076
  %53 = call ptr %47(ptr noundef %48, ptr noundef %51, i32 noundef %52, i32 noundef 1, i32 noundef 1), !dbg !1077
  store ptr %53, ptr %6, align 8, !dbg !1078
  %54 = load ptr, ptr %6, align 8, !dbg !1079
  %55 = getelementptr inbounds ptr, ptr %54, i64 0, !dbg !1079
  %56 = load ptr, ptr %55, align 8, !dbg !1079
  store ptr %56, ptr %7, align 8, !dbg !1080
  %57 = load ptr, ptr %3, align 8, !dbg !1081
  %58 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %57, i32 0, i32 6, !dbg !1083
  %59 = load i32, ptr %58, align 8, !dbg !1083
  store i32 %59, ptr %8, align 4, !dbg !1084
  br label %60, !dbg !1085

60:                                               ; preds = %69, %42
  %61 = load i32, ptr %8, align 4, !dbg !1086
  %62 = icmp ugt i32 %61, 0, !dbg !1088
  br i1 %62, label %63, label %72, !dbg !1089

63:                                               ; preds = %60
  %64 = load ptr, ptr %5, align 8, !dbg !1090
  %65 = call i32 @LZWReadByte(ptr noundef %64), !dbg !1092
  %66 = trunc i32 %65 to i8, !dbg !1093
  %67 = load ptr, ptr %7, align 8, !dbg !1094
  %68 = getelementptr inbounds nuw i8, ptr %67, i32 1, !dbg !1094
  store ptr %68, ptr %7, align 8, !dbg !1094
  store i8 %66, ptr %67, align 1, !dbg !1095
  br label %69, !dbg !1096

69:                                               ; preds = %63
  %70 = load i32, ptr %8, align 4, !dbg !1097
  %71 = add i32 %70, -1, !dbg !1097
  store i32 %71, ptr %8, align 4, !dbg !1097
  br label %60, !dbg !1098, !llvm.loop !1099

72:                                               ; preds = %60
  br label %73, !dbg !1101

73:                                               ; preds = %72
  %74 = load i32, ptr %9, align 4, !dbg !1102
  %75 = add i32 %74, 1, !dbg !1102
  store i32 %75, ptr %9, align 4, !dbg !1102
  br label %15, !dbg !1103, !llvm.loop !1104

76:                                               ; preds = %15
  %77 = load ptr, ptr %10, align 8, !dbg !1106
  %78 = icmp ne ptr %77, null, !dbg !1108
  br i1 %78, label %79, label %84, !dbg !1108

79:                                               ; preds = %76
  %80 = load ptr, ptr %10, align 8, !dbg !1109
  %81 = getelementptr inbounds nuw %struct.cdjpeg_progress_mgr, ptr %80, i32 0, i32 1, !dbg !1110
  %82 = load i32, ptr %81, align 8, !dbg !1111
  %83 = add nsw i32 %82, 1, !dbg !1111
  store i32 %83, ptr %81, align 8, !dbg !1111
  br label %84, !dbg !1109

84:                                               ; preds = %79, %76
  %85 = load ptr, ptr %5, align 8, !dbg !1112
  %86 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %85, i32 0, i32 0, !dbg !1113
  %87 = getelementptr inbounds nuw %struct.cjpeg_source_struct, ptr %86, i32 0, i32 1, !dbg !1114
  store ptr @get_interlaced_row, ptr %87, align 8, !dbg !1115
  %88 = load ptr, ptr %5, align 8, !dbg !1116
  %89 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %88, i32 0, i32 23, !dbg !1117
  store i32 0, ptr %89, align 8, !dbg !1118
  %90 = load ptr, ptr %3, align 8, !dbg !1119
  %91 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %90, i32 0, i32 7, !dbg !1120
  %92 = load i32, ptr %91, align 4, !dbg !1120
  %93 = add i32 %92, 7, !dbg !1121
  %94 = udiv i32 %93, 8, !dbg !1122
  %95 = load ptr, ptr %5, align 8, !dbg !1123
  %96 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %95, i32 0, i32 24, !dbg !1124
  store i32 %94, ptr %96, align 4, !dbg !1125
  %97 = load ptr, ptr %5, align 8, !dbg !1126
  %98 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %97, i32 0, i32 24, !dbg !1127
  %99 = load i32, ptr %98, align 4, !dbg !1127
  %100 = load ptr, ptr %3, align 8, !dbg !1128
  %101 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %100, i32 0, i32 7, !dbg !1129
  %102 = load i32, ptr %101, align 4, !dbg !1129
  %103 = add i32 %102, 3, !dbg !1130
  %104 = udiv i32 %103, 8, !dbg !1131
  %105 = add i32 %99, %104, !dbg !1132
  %106 = load ptr, ptr %5, align 8, !dbg !1133
  %107 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %106, i32 0, i32 25, !dbg !1134
  store i32 %105, ptr %107, align 8, !dbg !1135
  %108 = load ptr, ptr %5, align 8, !dbg !1136
  %109 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %108, i32 0, i32 25, !dbg !1137
  %110 = load i32, ptr %109, align 8, !dbg !1137
  %111 = load ptr, ptr %3, align 8, !dbg !1138
  %112 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %111, i32 0, i32 7, !dbg !1139
  %113 = load i32, ptr %112, align 4, !dbg !1139
  %114 = add i32 %113, 1, !dbg !1140
  %115 = udiv i32 %114, 4, !dbg !1141
  %116 = add i32 %110, %115, !dbg !1142
  %117 = load ptr, ptr %5, align 8, !dbg !1143
  %118 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %117, i32 0, i32 26, !dbg !1144
  store i32 %116, ptr %118, align 4, !dbg !1145
  %119 = load ptr, ptr %3, align 8, !dbg !1146
  %120 = load ptr, ptr %4, align 8, !dbg !1147
  %121 = call i32 @get_interlaced_row(ptr noundef %119, ptr noundef %120), !dbg !1148
  ret i32 %121, !dbg !1149
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @get_pixel_rows(ptr noundef %0, ptr noundef %1) #0 !dbg !1150 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !1151, !DIExpression(), !1152)
  store ptr %1, ptr %4, align 8
    #dbg_declare(ptr %4, !1153, !DIExpression(), !1154)
    #dbg_declare(ptr %5, !1155, !DIExpression(), !1156)
  %10 = load ptr, ptr %4, align 8, !dbg !1157
  store ptr %10, ptr %5, align 8, !dbg !1156
    #dbg_declare(ptr %6, !1158, !DIExpression(), !1159)
    #dbg_declare(ptr %7, !1160, !DIExpression(), !1161)
    #dbg_declare(ptr %8, !1162, !DIExpression(), !1163)
    #dbg_declare(ptr %9, !1164, !DIExpression(), !1165)
  %11 = load ptr, ptr %5, align 8, !dbg !1166
  %12 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %11, i32 0, i32 2, !dbg !1167
  %13 = load ptr, ptr %12, align 8, !dbg !1167
  store ptr %13, ptr %9, align 8, !dbg !1165
  %14 = load ptr, ptr %5, align 8, !dbg !1168
  %15 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %14, i32 0, i32 0, !dbg !1169
  %16 = getelementptr inbounds nuw %struct.cjpeg_source_struct, ptr %15, i32 0, i32 4, !dbg !1170
  %17 = load ptr, ptr %16, align 8, !dbg !1170
  %18 = getelementptr inbounds ptr, ptr %17, i64 0, !dbg !1168
  %19 = load ptr, ptr %18, align 8, !dbg !1168
  store ptr %19, ptr %7, align 8, !dbg !1171
  %20 = load ptr, ptr %3, align 8, !dbg !1172
  %21 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %20, i32 0, i32 6, !dbg !1174
  %22 = load i32, ptr %21, align 8, !dbg !1174
  store i32 %22, ptr %8, align 4, !dbg !1175
  br label %23, !dbg !1176

23:                                               ; preds = %56, %2
  %24 = load i32, ptr %8, align 4, !dbg !1177
  %25 = icmp ugt i32 %24, 0, !dbg !1179
  br i1 %25, label %26, label %59, !dbg !1180

26:                                               ; preds = %23
  %27 = load ptr, ptr %5, align 8, !dbg !1181
  %28 = call i32 @LZWReadByte(ptr noundef %27), !dbg !1183
  store i32 %28, ptr %6, align 4, !dbg !1184
  %29 = load ptr, ptr %9, align 8, !dbg !1185
  %30 = getelementptr inbounds ptr, ptr %29, i64 0, !dbg !1185
  %31 = load ptr, ptr %30, align 8, !dbg !1185
  %32 = load i32, ptr %6, align 4, !dbg !1186
  %33 = sext i32 %32 to i64, !dbg !1185
  %34 = getelementptr inbounds i8, ptr %31, i64 %33, !dbg !1185
  %35 = load i8, ptr %34, align 1, !dbg !1185
  %36 = load ptr, ptr %7, align 8, !dbg !1187
  %37 = getelementptr inbounds nuw i8, ptr %36, i32 1, !dbg !1187
  store ptr %37, ptr %7, align 8, !dbg !1187
  store i8 %35, ptr %36, align 1, !dbg !1188
  %38 = load ptr, ptr %9, align 8, !dbg !1189
  %39 = getelementptr inbounds ptr, ptr %38, i64 1, !dbg !1189
  %40 = load ptr, ptr %39, align 8, !dbg !1189
  %41 = load i32, ptr %6, align 4, !dbg !1190
  %42 = sext i32 %41 to i64, !dbg !1189
  %43 = getelementptr inbounds i8, ptr %40, i64 %42, !dbg !1189
  %44 = load i8, ptr %43, align 1, !dbg !1189
  %45 = load ptr, ptr %7, align 8, !dbg !1191
  %46 = getelementptr inbounds nuw i8, ptr %45, i32 1, !dbg !1191
  store ptr %46, ptr %7, align 8, !dbg !1191
  store i8 %44, ptr %45, align 1, !dbg !1192
  %47 = load ptr, ptr %9, align 8, !dbg !1193
  %48 = getelementptr inbounds ptr, ptr %47, i64 2, !dbg !1193
  %49 = load ptr, ptr %48, align 8, !dbg !1193
  %50 = load i32, ptr %6, align 4, !dbg !1194
  %51 = sext i32 %50 to i64, !dbg !1193
  %52 = getelementptr inbounds i8, ptr %49, i64 %51, !dbg !1193
  %53 = load i8, ptr %52, align 1, !dbg !1193
  %54 = load ptr, ptr %7, align 8, !dbg !1195
  %55 = getelementptr inbounds nuw i8, ptr %54, i32 1, !dbg !1195
  store ptr %55, ptr %7, align 8, !dbg !1195
  store i8 %53, ptr %54, align 1, !dbg !1196
  br label %56, !dbg !1197

56:                                               ; preds = %26
  %57 = load i32, ptr %8, align 4, !dbg !1198
  %58 = add i32 %57, -1, !dbg !1198
  store i32 %58, ptr %8, align 4, !dbg !1198
  br label %23, !dbg !1199, !llvm.loop !1200

59:                                               ; preds = %23
  ret i32 1, !dbg !1202
}

declare i32 @getc(ptr noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @SkipDataBlocks(ptr noundef %0) #0 !dbg !1203 {
  %2 = alloca ptr, align 8
  %3 = alloca [256 x i8], align 16
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !1204, !DIExpression(), !1205)
    #dbg_declare(ptr %3, !1206, !DIExpression(), !1208)
  br label %4, !dbg !1209

4:                                                ; preds = %9, %1
  %5 = load ptr, ptr %2, align 8, !dbg !1210
  %6 = getelementptr inbounds [256 x i8], ptr %3, i64 0, i64 0, !dbg !1211
  %7 = call i32 @GetDataBlock(ptr noundef %5, ptr noundef %6), !dbg !1212
  %8 = icmp sgt i32 %7, 0, !dbg !1213
  br i1 %8, label %9, label %10, !dbg !1209

9:                                                ; preds = %4
  br label %4, !dbg !1209, !llvm.loop !1214

10:                                               ; preds = %4
  ret void, !dbg !1216
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @GetDataBlock(ptr noundef %0, ptr noundef %1) #0 !dbg !1217 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !1220, !DIExpression(), !1221)
  store ptr %1, ptr %4, align 8
    #dbg_declare(ptr %4, !1222, !DIExpression(), !1223)
    #dbg_declare(ptr %5, !1224, !DIExpression(), !1225)
  %6 = load ptr, ptr %3, align 8, !dbg !1226
  %7 = call i32 @ReadByte(ptr noundef %6), !dbg !1227
  store i32 %7, ptr %5, align 4, !dbg !1228
  %8 = load i32, ptr %5, align 4, !dbg !1229
  %9 = icmp sgt i32 %8, 0, !dbg !1231
  br i1 %9, label %10, label %40, !dbg !1231

10:                                               ; preds = %2
  %11 = load ptr, ptr %4, align 8, !dbg !1232
  %12 = load i32, ptr %5, align 4, !dbg !1232
  %13 = sext i32 %12 to i64, !dbg !1232
  %14 = load ptr, ptr %3, align 8, !dbg !1232
  %15 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %14, i32 0, i32 0, !dbg !1232
  %16 = getelementptr inbounds nuw %struct.cjpeg_source_struct, ptr %15, i32 0, i32 3, !dbg !1232
  %17 = load ptr, ptr %16, align 8, !dbg !1232
  %18 = call i64 @fread(ptr noundef %11, i64 noundef 1, i64 noundef %13, ptr noundef %17), !dbg !1232
  %19 = load i32, ptr %5, align 4, !dbg !1232
  %20 = sext i32 %19 to i64, !dbg !1232
  %21 = icmp eq i64 %18, %20, !dbg !1232
  br i1 %21, label %39, label %22, !dbg !1235

22:                                               ; preds = %10
  %23 = load ptr, ptr %3, align 8, !dbg !1236
  %24 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %23, i32 0, i32 1, !dbg !1236
  %25 = load ptr, ptr %24, align 8, !dbg !1236
  %26 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %25, i32 0, i32 0, !dbg !1236
  %27 = load ptr, ptr %26, align 8, !dbg !1236
  %28 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %27, i32 0, i32 5, !dbg !1236
  store i32 42, ptr %28, align 8, !dbg !1236
  %29 = load ptr, ptr %3, align 8, !dbg !1236
  %30 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %29, i32 0, i32 1, !dbg !1236
  %31 = load ptr, ptr %30, align 8, !dbg !1236
  %32 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %31, i32 0, i32 0, !dbg !1236
  %33 = load ptr, ptr %32, align 8, !dbg !1236
  %34 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %33, i32 0, i32 0, !dbg !1236
  %35 = load ptr, ptr %34, align 8, !dbg !1236
  %36 = load ptr, ptr %3, align 8, !dbg !1236
  %37 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %36, i32 0, i32 1, !dbg !1236
  %38 = load ptr, ptr %37, align 8, !dbg !1236
  call void %35(ptr noundef %38), !dbg !1236
  br label %39, !dbg !1236

39:                                               ; preds = %22, %10
  br label %40, !dbg !1237

40:                                               ; preds = %39, %2
  %41 = load i32, ptr %5, align 4, !dbg !1238
  ret i32 %41, !dbg !1239
}

; Function Attrs: noinline nounwind uwtable
define internal void @ReInitLZW(ptr noundef %0) #0 !dbg !1240 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !1241, !DIExpression(), !1242)
  %3 = load ptr, ptr %2, align 8, !dbg !1243
  %4 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %3, i32 0, i32 8, !dbg !1244
  %5 = load i32, ptr %4, align 4, !dbg !1244
  %6 = add nsw i32 %5, 1, !dbg !1245
  %7 = load ptr, ptr %2, align 8, !dbg !1246
  %8 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %7, i32 0, i32 11, !dbg !1247
  store i32 %6, ptr %8, align 8, !dbg !1248
  %9 = load ptr, ptr %2, align 8, !dbg !1249
  %10 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %9, i32 0, i32 9, !dbg !1250
  %11 = load i32, ptr %10, align 8, !dbg !1250
  %12 = shl i32 %11, 1, !dbg !1251
  %13 = load ptr, ptr %2, align 8, !dbg !1252
  %14 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %13, i32 0, i32 12, !dbg !1253
  store i32 %12, ptr %14, align 4, !dbg !1254
  %15 = load ptr, ptr %2, align 8, !dbg !1255
  %16 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %15, i32 0, i32 9, !dbg !1256
  %17 = load i32, ptr %16, align 8, !dbg !1256
  %18 = add nsw i32 %17, 2, !dbg !1257
  %19 = load ptr, ptr %2, align 8, !dbg !1258
  %20 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %19, i32 0, i32 13, !dbg !1259
  store i32 %18, ptr %20, align 8, !dbg !1260
  %21 = load ptr, ptr %2, align 8, !dbg !1261
  %22 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %21, i32 0, i32 19, !dbg !1262
  %23 = load ptr, ptr %22, align 8, !dbg !1262
  %24 = load ptr, ptr %2, align 8, !dbg !1263
  %25 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %24, i32 0, i32 20, !dbg !1264
  store ptr %23, ptr %25, align 8, !dbg !1265
  ret void, !dbg !1266
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @LZWReadByte(ptr noundef %0) #0 !dbg !1267 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !1268, !DIExpression(), !1269)
    #dbg_declare(ptr %4, !1270, !DIExpression(), !1271)
    #dbg_declare(ptr %5, !1272, !DIExpression(), !1273)
  %6 = load ptr, ptr %3, align 8, !dbg !1274
  %7 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %6, i32 0, i32 14, !dbg !1276
  %8 = load i32, ptr %7, align 4, !dbg !1276
  %9 = icmp ne i32 %8, 0, !dbg !1274
  br i1 %9, label %10, label %16, !dbg !1274

10:                                               ; preds = %1
  %11 = load ptr, ptr %3, align 8, !dbg !1277
  %12 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %11, i32 0, i32 14, !dbg !1279
  store i32 0, ptr %12, align 4, !dbg !1280
  %13 = load ptr, ptr %3, align 8, !dbg !1281
  %14 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %13, i32 0, i32 9, !dbg !1282
  %15 = load i32, ptr %14, align 8, !dbg !1282
  store i32 %15, ptr %4, align 4, !dbg !1283
  br label %34, !dbg !1284

16:                                               ; preds = %1
  %17 = load ptr, ptr %3, align 8, !dbg !1285
  %18 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %17, i32 0, i32 20, !dbg !1288
  %19 = load ptr, ptr %18, align 8, !dbg !1288
  %20 = load ptr, ptr %3, align 8, !dbg !1289
  %21 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %20, i32 0, i32 19, !dbg !1290
  %22 = load ptr, ptr %21, align 8, !dbg !1290
  %23 = icmp ugt ptr %19, %22, !dbg !1291
  br i1 %23, label %24, label %31, !dbg !1291

24:                                               ; preds = %16
  %25 = load ptr, ptr %3, align 8, !dbg !1292
  %26 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %25, i32 0, i32 20, !dbg !1293
  %27 = load ptr, ptr %26, align 8, !dbg !1294
  %28 = getelementptr inbounds i8, ptr %27, i32 -1, !dbg !1294
  store ptr %28, ptr %26, align 8, !dbg !1294
  %29 = load i8, ptr %28, align 1, !dbg !1295
  %30 = zext i8 %29 to i32, !dbg !1296
  store i32 %30, ptr %2, align 4, !dbg !1297
  br label %244, !dbg !1297

31:                                               ; preds = %16
  %32 = load ptr, ptr %3, align 8, !dbg !1298
  %33 = call i32 @GetCode(ptr noundef %32), !dbg !1299
  store i32 %33, ptr %4, align 4, !dbg !1300
  br label %34

34:                                               ; preds = %31, %10
  %35 = load i32, ptr %4, align 4, !dbg !1301
  %36 = load ptr, ptr %3, align 8, !dbg !1303
  %37 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %36, i32 0, i32 9, !dbg !1304
  %38 = load i32, ptr %37, align 8, !dbg !1304
  %39 = icmp eq i32 %35, %38, !dbg !1305
  br i1 %39, label %40, label %81, !dbg !1305

40:                                               ; preds = %34
  %41 = load ptr, ptr %3, align 8, !dbg !1306
  call void @ReInitLZW(ptr noundef %41), !dbg !1308
  br label %42, !dbg !1309

42:                                               ; preds = %45, %40
  %43 = load ptr, ptr %3, align 8, !dbg !1310
  %44 = call i32 @GetCode(ptr noundef %43), !dbg !1312
  store i32 %44, ptr %4, align 4, !dbg !1313
  br label %45, !dbg !1314

45:                                               ; preds = %42
  %46 = load i32, ptr %4, align 4, !dbg !1315
  %47 = load ptr, ptr %3, align 8, !dbg !1316
  %48 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %47, i32 0, i32 9, !dbg !1317
  %49 = load i32, ptr %48, align 8, !dbg !1317
  %50 = icmp eq i32 %46, %49, !dbg !1318
  br i1 %50, label %42, label %51, !dbg !1314, !llvm.loop !1319

51:                                               ; preds = %45
  %52 = load i32, ptr %4, align 4, !dbg !1321
  %53 = load ptr, ptr %3, align 8, !dbg !1323
  %54 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %53, i32 0, i32 9, !dbg !1324
  %55 = load i32, ptr %54, align 8, !dbg !1324
  %56 = icmp sgt i32 %52, %55, !dbg !1325
  br i1 %56, label %57, label %74, !dbg !1325

57:                                               ; preds = %51
  %58 = load ptr, ptr %3, align 8, !dbg !1326
  %59 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %58, i32 0, i32 1, !dbg !1326
  %60 = load ptr, ptr %59, align 8, !dbg !1326
  %61 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %60, i32 0, i32 0, !dbg !1326
  %62 = load ptr, ptr %61, align 8, !dbg !1326
  %63 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %62, i32 0, i32 5, !dbg !1326
  store i32 1021, ptr %63, align 8, !dbg !1326
  %64 = load ptr, ptr %3, align 8, !dbg !1326
  %65 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %64, i32 0, i32 1, !dbg !1326
  %66 = load ptr, ptr %65, align 8, !dbg !1326
  %67 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %66, i32 0, i32 0, !dbg !1326
  %68 = load ptr, ptr %67, align 8, !dbg !1326
  %69 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %68, i32 0, i32 1, !dbg !1326
  %70 = load ptr, ptr %69, align 8, !dbg !1326
  %71 = load ptr, ptr %3, align 8, !dbg !1326
  %72 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %71, i32 0, i32 1, !dbg !1326
  %73 = load ptr, ptr %72, align 8, !dbg !1326
  call void %70(ptr noundef %73, i32 noundef -1), !dbg !1326
  store i32 0, ptr %4, align 4, !dbg !1328
  br label %74, !dbg !1329

74:                                               ; preds = %57, %51
  %75 = load i32, ptr %4, align 4, !dbg !1330
  %76 = load ptr, ptr %3, align 8, !dbg !1331
  %77 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %76, i32 0, i32 15, !dbg !1332
  store i32 %75, ptr %77, align 8, !dbg !1333
  %78 = load ptr, ptr %3, align 8, !dbg !1334
  %79 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %78, i32 0, i32 16, !dbg !1335
  store i32 %75, ptr %79, align 4, !dbg !1336
  %80 = load i32, ptr %4, align 4, !dbg !1337
  store i32 %80, ptr %2, align 4, !dbg !1338
  br label %244, !dbg !1338

81:                                               ; preds = %34
  %82 = load i32, ptr %4, align 4, !dbg !1339
  %83 = load ptr, ptr %3, align 8, !dbg !1341
  %84 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %83, i32 0, i32 10, !dbg !1342
  %85 = load i32, ptr %84, align 4, !dbg !1342
  %86 = icmp eq i32 %82, %85, !dbg !1343
  br i1 %86, label %87, label %113, !dbg !1343

87:                                               ; preds = %81
  %88 = load ptr, ptr %3, align 8, !dbg !1344
  %89 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %88, i32 0, i32 7, !dbg !1347
  %90 = load i32, ptr %89, align 8, !dbg !1347
  %91 = icmp ne i32 %90, 0, !dbg !1344
  br i1 %91, label %96, label %92, !dbg !1348

92:                                               ; preds = %87
  %93 = load ptr, ptr %3, align 8, !dbg !1349
  call void @SkipDataBlocks(ptr noundef %93), !dbg !1351
  %94 = load ptr, ptr %3, align 8, !dbg !1352
  %95 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %94, i32 0, i32 7, !dbg !1353
  store i32 1, ptr %95, align 8, !dbg !1354
  br label %96, !dbg !1355

96:                                               ; preds = %92, %87
  %97 = load ptr, ptr %3, align 8, !dbg !1356
  %98 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %97, i32 0, i32 1, !dbg !1356
  %99 = load ptr, ptr %98, align 8, !dbg !1356
  %100 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %99, i32 0, i32 0, !dbg !1356
  %101 = load ptr, ptr %100, align 8, !dbg !1356
  %102 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %101, i32 0, i32 5, !dbg !1356
  store i32 1023, ptr %102, align 8, !dbg !1356
  %103 = load ptr, ptr %3, align 8, !dbg !1356
  %104 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %103, i32 0, i32 1, !dbg !1356
  %105 = load ptr, ptr %104, align 8, !dbg !1356
  %106 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %105, i32 0, i32 0, !dbg !1356
  %107 = load ptr, ptr %106, align 8, !dbg !1356
  %108 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %107, i32 0, i32 1, !dbg !1356
  %109 = load ptr, ptr %108, align 8, !dbg !1356
  %110 = load ptr, ptr %3, align 8, !dbg !1356
  %111 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %110, i32 0, i32 1, !dbg !1356
  %112 = load ptr, ptr %111, align 8, !dbg !1356
  call void %109(ptr noundef %112, i32 noundef -1), !dbg !1356
  store i32 0, ptr %2, align 4, !dbg !1357
  br label %244, !dbg !1357

113:                                              ; preds = %81
  %114 = load i32, ptr %4, align 4, !dbg !1358
  store i32 %114, ptr %5, align 4, !dbg !1359
  %115 = load i32, ptr %4, align 4, !dbg !1360
  %116 = load ptr, ptr %3, align 8, !dbg !1362
  %117 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %116, i32 0, i32 13, !dbg !1363
  %118 = load i32, ptr %117, align 8, !dbg !1363
  %119 = icmp sge i32 %115, %118, !dbg !1364
  br i1 %119, label %120, label %155, !dbg !1364

120:                                              ; preds = %113
  %121 = load i32, ptr %4, align 4, !dbg !1365
  %122 = load ptr, ptr %3, align 8, !dbg !1368
  %123 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %122, i32 0, i32 13, !dbg !1369
  %124 = load i32, ptr %123, align 8, !dbg !1369
  %125 = icmp sgt i32 %121, %124, !dbg !1370
  br i1 %125, label %126, label %143, !dbg !1370

126:                                              ; preds = %120
  %127 = load ptr, ptr %3, align 8, !dbg !1371
  %128 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %127, i32 0, i32 1, !dbg !1371
  %129 = load ptr, ptr %128, align 8, !dbg !1371
  %130 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %129, i32 0, i32 0, !dbg !1371
  %131 = load ptr, ptr %130, align 8, !dbg !1371
  %132 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %131, i32 0, i32 5, !dbg !1371
  store i32 1021, ptr %132, align 8, !dbg !1371
  %133 = load ptr, ptr %3, align 8, !dbg !1371
  %134 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %133, i32 0, i32 1, !dbg !1371
  %135 = load ptr, ptr %134, align 8, !dbg !1371
  %136 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %135, i32 0, i32 0, !dbg !1371
  %137 = load ptr, ptr %136, align 8, !dbg !1371
  %138 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %137, i32 0, i32 1, !dbg !1371
  %139 = load ptr, ptr %138, align 8, !dbg !1371
  %140 = load ptr, ptr %3, align 8, !dbg !1371
  %141 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %140, i32 0, i32 1, !dbg !1371
  %142 = load ptr, ptr %141, align 8, !dbg !1371
  call void %139(ptr noundef %142, i32 noundef -1), !dbg !1371
  store i32 0, ptr %5, align 4, !dbg !1373
  br label %143, !dbg !1374

143:                                              ; preds = %126, %120
  %144 = load ptr, ptr %3, align 8, !dbg !1375
  %145 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %144, i32 0, i32 16, !dbg !1376
  %146 = load i32, ptr %145, align 4, !dbg !1376
  %147 = trunc i32 %146 to i8, !dbg !1377
  %148 = load ptr, ptr %3, align 8, !dbg !1378
  %149 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %148, i32 0, i32 20, !dbg !1379
  %150 = load ptr, ptr %149, align 8, !dbg !1380
  %151 = getelementptr inbounds nuw i8, ptr %150, i32 1, !dbg !1380
  store ptr %151, ptr %149, align 8, !dbg !1380
  store i8 %147, ptr %150, align 1, !dbg !1381
  %152 = load ptr, ptr %3, align 8, !dbg !1382
  %153 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %152, i32 0, i32 15, !dbg !1383
  %154 = load i32, ptr %153, align 8, !dbg !1383
  store i32 %154, ptr %4, align 4, !dbg !1384
  br label %155, !dbg !1385

155:                                              ; preds = %143, %113
  br label %156, !dbg !1386

156:                                              ; preds = %162, %155
  %157 = load i32, ptr %4, align 4, !dbg !1387
  %158 = load ptr, ptr %3, align 8, !dbg !1388
  %159 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %158, i32 0, i32 9, !dbg !1389
  %160 = load i32, ptr %159, align 8, !dbg !1389
  %161 = icmp sge i32 %157, %160, !dbg !1390
  br i1 %161, label %162, label %182, !dbg !1386

162:                                              ; preds = %156
  %163 = load ptr, ptr %3, align 8, !dbg !1391
  %164 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %163, i32 0, i32 18, !dbg !1393
  %165 = load ptr, ptr %164, align 8, !dbg !1393
  %166 = load i32, ptr %4, align 4, !dbg !1394
  %167 = sext i32 %166 to i64, !dbg !1391
  %168 = getelementptr inbounds i8, ptr %165, i64 %167, !dbg !1391
  %169 = load i8, ptr %168, align 1, !dbg !1391
  %170 = load ptr, ptr %3, align 8, !dbg !1395
  %171 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %170, i32 0, i32 20, !dbg !1396
  %172 = load ptr, ptr %171, align 8, !dbg !1397
  %173 = getelementptr inbounds nuw i8, ptr %172, i32 1, !dbg !1397
  store ptr %173, ptr %171, align 8, !dbg !1397
  store i8 %169, ptr %172, align 1, !dbg !1398
  %174 = load ptr, ptr %3, align 8, !dbg !1399
  %175 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %174, i32 0, i32 17, !dbg !1400
  %176 = load ptr, ptr %175, align 8, !dbg !1400
  %177 = load i32, ptr %4, align 4, !dbg !1401
  %178 = sext i32 %177 to i64, !dbg !1399
  %179 = getelementptr inbounds i16, ptr %176, i64 %178, !dbg !1399
  %180 = load i16, ptr %179, align 2, !dbg !1399
  %181 = zext i16 %180 to i32, !dbg !1399
  store i32 %181, ptr %4, align 4, !dbg !1402
  br label %156, !dbg !1386, !llvm.loop !1403

182:                                              ; preds = %156
  %183 = load i32, ptr %4, align 4, !dbg !1405
  %184 = load ptr, ptr %3, align 8, !dbg !1406
  %185 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %184, i32 0, i32 16, !dbg !1407
  store i32 %183, ptr %185, align 4, !dbg !1408
  %186 = load ptr, ptr %3, align 8, !dbg !1409
  %187 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %186, i32 0, i32 13, !dbg !1411
  %188 = load i32, ptr %187, align 8, !dbg !1411
  store i32 %188, ptr %4, align 4, !dbg !1412
  %189 = icmp slt i32 %188, 4096, !dbg !1413
  br i1 %189, label %190, label %237, !dbg !1413

190:                                              ; preds = %182
  %191 = load ptr, ptr %3, align 8, !dbg !1414
  %192 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %191, i32 0, i32 15, !dbg !1416
  %193 = load i32, ptr %192, align 8, !dbg !1416
  %194 = trunc i32 %193 to i16, !dbg !1414
  %195 = load ptr, ptr %3, align 8, !dbg !1417
  %196 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %195, i32 0, i32 17, !dbg !1418
  %197 = load ptr, ptr %196, align 8, !dbg !1418
  %198 = load i32, ptr %4, align 4, !dbg !1419
  %199 = sext i32 %198 to i64, !dbg !1417
  %200 = getelementptr inbounds i16, ptr %197, i64 %199, !dbg !1417
  store i16 %194, ptr %200, align 2, !dbg !1420
  %201 = load ptr, ptr %3, align 8, !dbg !1421
  %202 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %201, i32 0, i32 16, !dbg !1422
  %203 = load i32, ptr %202, align 4, !dbg !1422
  %204 = trunc i32 %203 to i8, !dbg !1423
  %205 = load ptr, ptr %3, align 8, !dbg !1424
  %206 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %205, i32 0, i32 18, !dbg !1425
  %207 = load ptr, ptr %206, align 8, !dbg !1425
  %208 = load i32, ptr %4, align 4, !dbg !1426
  %209 = sext i32 %208 to i64, !dbg !1424
  %210 = getelementptr inbounds i8, ptr %207, i64 %209, !dbg !1424
  store i8 %204, ptr %210, align 1, !dbg !1427
  %211 = load ptr, ptr %3, align 8, !dbg !1428
  %212 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %211, i32 0, i32 13, !dbg !1429
  %213 = load i32, ptr %212, align 8, !dbg !1430
  %214 = add nsw i32 %213, 1, !dbg !1430
  store i32 %214, ptr %212, align 8, !dbg !1430
  %215 = load ptr, ptr %3, align 8, !dbg !1431
  %216 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %215, i32 0, i32 13, !dbg !1433
  %217 = load i32, ptr %216, align 8, !dbg !1433
  %218 = load ptr, ptr %3, align 8, !dbg !1434
  %219 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %218, i32 0, i32 12, !dbg !1435
  %220 = load i32, ptr %219, align 4, !dbg !1435
  %221 = icmp sge i32 %217, %220, !dbg !1436
  br i1 %221, label %222, label %236, !dbg !1437

222:                                              ; preds = %190
  %223 = load ptr, ptr %3, align 8, !dbg !1438
  %224 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %223, i32 0, i32 11, !dbg !1439
  %225 = load i32, ptr %224, align 8, !dbg !1439
  %226 = icmp slt i32 %225, 12, !dbg !1440
  br i1 %226, label %227, label %236, !dbg !1437

227:                                              ; preds = %222
  %228 = load ptr, ptr %3, align 8, !dbg !1441
  %229 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %228, i32 0, i32 11, !dbg !1443
  %230 = load i32, ptr %229, align 8, !dbg !1444
  %231 = add nsw i32 %230, 1, !dbg !1444
  store i32 %231, ptr %229, align 8, !dbg !1444
  %232 = load ptr, ptr %3, align 8, !dbg !1445
  %233 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %232, i32 0, i32 12, !dbg !1446
  %234 = load i32, ptr %233, align 4, !dbg !1447
  %235 = shl i32 %234, 1, !dbg !1447
  store i32 %235, ptr %233, align 4, !dbg !1447
  br label %236, !dbg !1448

236:                                              ; preds = %227, %222, %190
  br label %237, !dbg !1449

237:                                              ; preds = %236, %182
  %238 = load i32, ptr %5, align 4, !dbg !1450
  %239 = load ptr, ptr %3, align 8, !dbg !1451
  %240 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %239, i32 0, i32 15, !dbg !1452
  store i32 %238, ptr %240, align 8, !dbg !1453
  %241 = load ptr, ptr %3, align 8, !dbg !1454
  %242 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %241, i32 0, i32 16, !dbg !1455
  %243 = load i32, ptr %242, align 4, !dbg !1455
  store i32 %243, ptr %2, align 4, !dbg !1456
  br label %244, !dbg !1456

244:                                              ; preds = %237, %96, %74, %24
  %245 = load i32, ptr %2, align 4, !dbg !1457
  ret i32 %245, !dbg !1457
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @get_interlaced_row(ptr noundef %0, ptr noundef %1) #0 !dbg !1458 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !1459, !DIExpression(), !1460)
  store ptr %1, ptr %4, align 8
    #dbg_declare(ptr %4, !1461, !DIExpression(), !1462)
    #dbg_declare(ptr %5, !1463, !DIExpression(), !1464)
  %13 = load ptr, ptr %4, align 8, !dbg !1465
  store ptr %13, ptr %5, align 8, !dbg !1464
    #dbg_declare(ptr %6, !1466, !DIExpression(), !1467)
    #dbg_declare(ptr %7, !1468, !DIExpression(), !1469)
    #dbg_declare(ptr %8, !1470, !DIExpression(), !1471)
    #dbg_declare(ptr %9, !1472, !DIExpression(), !1473)
    #dbg_declare(ptr %10, !1474, !DIExpression(), !1475)
    #dbg_declare(ptr %11, !1476, !DIExpression(), !1477)
  %14 = load ptr, ptr %5, align 8, !dbg !1478
  %15 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %14, i32 0, i32 2, !dbg !1479
  %16 = load ptr, ptr %15, align 8, !dbg !1479
  store ptr %16, ptr %11, align 8, !dbg !1477
    #dbg_declare(ptr %12, !1480, !DIExpression(), !1481)
  %17 = load ptr, ptr %5, align 8, !dbg !1482
  %18 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %17, i32 0, i32 23, !dbg !1483
  %19 = load i32, ptr %18, align 8, !dbg !1483
  %20 = and i32 %19, 7, !dbg !1484
  switch i32 %20, label %44 [
    i32 0, label %21
    i32 4, label %26
    i32 2, label %35
    i32 6, label %35
  ], !dbg !1485

21:                                               ; preds = %2
  %22 = load ptr, ptr %5, align 8, !dbg !1486
  %23 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %22, i32 0, i32 23, !dbg !1488
  %24 = load i32, ptr %23, align 8, !dbg !1488
  %25 = lshr i32 %24, 3, !dbg !1489
  store i32 %25, ptr %12, align 4, !dbg !1490
  br label %53, !dbg !1491

26:                                               ; preds = %2
  %27 = load ptr, ptr %5, align 8, !dbg !1492
  %28 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %27, i32 0, i32 23, !dbg !1493
  %29 = load i32, ptr %28, align 8, !dbg !1493
  %30 = lshr i32 %29, 3, !dbg !1494
  %31 = load ptr, ptr %5, align 8, !dbg !1495
  %32 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %31, i32 0, i32 24, !dbg !1496
  %33 = load i32, ptr %32, align 4, !dbg !1496
  %34 = add i32 %30, %33, !dbg !1497
  store i32 %34, ptr %12, align 4, !dbg !1498
  br label %53, !dbg !1499

35:                                               ; preds = %2, %2
  %36 = load ptr, ptr %5, align 8, !dbg !1500
  %37 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %36, i32 0, i32 23, !dbg !1501
  %38 = load i32, ptr %37, align 8, !dbg !1501
  %39 = lshr i32 %38, 2, !dbg !1502
  %40 = load ptr, ptr %5, align 8, !dbg !1503
  %41 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %40, i32 0, i32 25, !dbg !1504
  %42 = load i32, ptr %41, align 8, !dbg !1504
  %43 = add i32 %39, %42, !dbg !1505
  store i32 %43, ptr %12, align 4, !dbg !1506
  br label %53, !dbg !1507

44:                                               ; preds = %2
  %45 = load ptr, ptr %5, align 8, !dbg !1508
  %46 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %45, i32 0, i32 23, !dbg !1509
  %47 = load i32, ptr %46, align 8, !dbg !1509
  %48 = lshr i32 %47, 1, !dbg !1510
  %49 = load ptr, ptr %5, align 8, !dbg !1511
  %50 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %49, i32 0, i32 26, !dbg !1512
  %51 = load i32, ptr %50, align 4, !dbg !1512
  %52 = add i32 %48, %51, !dbg !1513
  store i32 %52, ptr %12, align 4, !dbg !1514
  br label %53, !dbg !1515

53:                                               ; preds = %44, %35, %26, %21
  %54 = load ptr, ptr %3, align 8, !dbg !1516
  %55 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %54, i32 0, i32 1, !dbg !1517
  %56 = load ptr, ptr %55, align 8, !dbg !1517
  %57 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %56, i32 0, i32 7, !dbg !1518
  %58 = load ptr, ptr %57, align 8, !dbg !1518
  %59 = load ptr, ptr %3, align 8, !dbg !1519
  %60 = load ptr, ptr %5, align 8, !dbg !1520
  %61 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %60, i32 0, i32 22, !dbg !1521
  %62 = load ptr, ptr %61, align 8, !dbg !1521
  %63 = load i32, ptr %12, align 4, !dbg !1522
  %64 = call ptr %58(ptr noundef %59, ptr noundef %62, i32 noundef %63, i32 noundef 1, i32 noundef 0), !dbg !1523
  store ptr %64, ptr %6, align 8, !dbg !1524
  %65 = load ptr, ptr %6, align 8, !dbg !1525
  %66 = getelementptr inbounds ptr, ptr %65, i64 0, !dbg !1525
  %67 = load ptr, ptr %66, align 8, !dbg !1525
  store ptr %67, ptr %8, align 8, !dbg !1526
  %68 = load ptr, ptr %5, align 8, !dbg !1527
  %69 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %68, i32 0, i32 0, !dbg !1528
  %70 = getelementptr inbounds nuw %struct.cjpeg_source_struct, ptr %69, i32 0, i32 4, !dbg !1529
  %71 = load ptr, ptr %70, align 8, !dbg !1529
  %72 = getelementptr inbounds ptr, ptr %71, i64 0, !dbg !1527
  %73 = load ptr, ptr %72, align 8, !dbg !1527
  store ptr %73, ptr %9, align 8, !dbg !1530
  %74 = load ptr, ptr %3, align 8, !dbg !1531
  %75 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %74, i32 0, i32 6, !dbg !1533
  %76 = load i32, ptr %75, align 8, !dbg !1533
  store i32 %76, ptr %10, align 4, !dbg !1534
  br label %77, !dbg !1535

77:                                               ; preds = %112, %53
  %78 = load i32, ptr %10, align 4, !dbg !1536
  %79 = icmp ugt i32 %78, 0, !dbg !1538
  br i1 %79, label %80, label %115, !dbg !1539

80:                                               ; preds = %77
  %81 = load ptr, ptr %8, align 8, !dbg !1540
  %82 = getelementptr inbounds nuw i8, ptr %81, i32 1, !dbg !1540
  store ptr %82, ptr %8, align 8, !dbg !1540
  %83 = load i8, ptr %81, align 1, !dbg !1540
  %84 = zext i8 %83 to i32, !dbg !1540
  store i32 %84, ptr %7, align 4, !dbg !1542
  %85 = load ptr, ptr %11, align 8, !dbg !1543
  %86 = getelementptr inbounds ptr, ptr %85, i64 0, !dbg !1543
  %87 = load ptr, ptr %86, align 8, !dbg !1543
  %88 = load i32, ptr %7, align 4, !dbg !1544
  %89 = sext i32 %88 to i64, !dbg !1543
  %90 = getelementptr inbounds i8, ptr %87, i64 %89, !dbg !1543
  %91 = load i8, ptr %90, align 1, !dbg !1543
  %92 = load ptr, ptr %9, align 8, !dbg !1545
  %93 = getelementptr inbounds nuw i8, ptr %92, i32 1, !dbg !1545
  store ptr %93, ptr %9, align 8, !dbg !1545
  store i8 %91, ptr %92, align 1, !dbg !1546
  %94 = load ptr, ptr %11, align 8, !dbg !1547
  %95 = getelementptr inbounds ptr, ptr %94, i64 1, !dbg !1547
  %96 = load ptr, ptr %95, align 8, !dbg !1547
  %97 = load i32, ptr %7, align 4, !dbg !1548
  %98 = sext i32 %97 to i64, !dbg !1547
  %99 = getelementptr inbounds i8, ptr %96, i64 %98, !dbg !1547
  %100 = load i8, ptr %99, align 1, !dbg !1547
  %101 = load ptr, ptr %9, align 8, !dbg !1549
  %102 = getelementptr inbounds nuw i8, ptr %101, i32 1, !dbg !1549
  store ptr %102, ptr %9, align 8, !dbg !1549
  store i8 %100, ptr %101, align 1, !dbg !1550
  %103 = load ptr, ptr %11, align 8, !dbg !1551
  %104 = getelementptr inbounds ptr, ptr %103, i64 2, !dbg !1551
  %105 = load ptr, ptr %104, align 8, !dbg !1551
  %106 = load i32, ptr %7, align 4, !dbg !1552
  %107 = sext i32 %106 to i64, !dbg !1551
  %108 = getelementptr inbounds i8, ptr %105, i64 %107, !dbg !1551
  %109 = load i8, ptr %108, align 1, !dbg !1551
  %110 = load ptr, ptr %9, align 8, !dbg !1553
  %111 = getelementptr inbounds nuw i8, ptr %110, i32 1, !dbg !1553
  store ptr %111, ptr %9, align 8, !dbg !1553
  store i8 %109, ptr %110, align 1, !dbg !1554
  br label %112, !dbg !1555

112:                                              ; preds = %80
  %113 = load i32, ptr %10, align 4, !dbg !1556
  %114 = add i32 %113, -1, !dbg !1556
  store i32 %114, ptr %10, align 4, !dbg !1556
  br label %77, !dbg !1557, !llvm.loop !1558

115:                                              ; preds = %77
  %116 = load ptr, ptr %5, align 8, !dbg !1560
  %117 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %116, i32 0, i32 23, !dbg !1561
  %118 = load i32, ptr %117, align 8, !dbg !1562
  %119 = add i32 %118, 1, !dbg !1562
  store i32 %119, ptr %117, align 8, !dbg !1562
  ret i32 1, !dbg !1563
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @GetCode(ptr noundef %0) #0 !dbg !1564 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !1565, !DIExpression(), !1566)
    #dbg_declare(ptr %4, !1567, !DIExpression(), !1569)
    #dbg_declare(ptr %5, !1570, !DIExpression(), !1571)
    #dbg_declare(ptr %6, !1572, !DIExpression(), !1573)
    #dbg_declare(ptr %7, !1574, !DIExpression(), !1575)
  br label %8, !dbg !1576

8:                                                ; preds = %98, %1
  %9 = load ptr, ptr %3, align 8, !dbg !1577
  %10 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %9, i32 0, i32 6, !dbg !1578
  %11 = load i32, ptr %10, align 4, !dbg !1578
  %12 = load ptr, ptr %3, align 8, !dbg !1579
  %13 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %12, i32 0, i32 11, !dbg !1580
  %14 = load i32, ptr %13, align 8, !dbg !1580
  %15 = add nsw i32 %11, %14, !dbg !1581
  %16 = load ptr, ptr %3, align 8, !dbg !1582
  %17 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %16, i32 0, i32 5, !dbg !1583
  %18 = load i32, ptr %17, align 8, !dbg !1583
  %19 = icmp sgt i32 %15, %18, !dbg !1584
  br i1 %19, label %20, label %119, !dbg !1576

20:                                               ; preds = %8
  %21 = load ptr, ptr %3, align 8, !dbg !1585
  %22 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %21, i32 0, i32 7, !dbg !1588
  %23 = load i32, ptr %22, align 8, !dbg !1588
  %24 = icmp ne i32 %23, 0, !dbg !1585
  br i1 %24, label %25, label %45, !dbg !1585

25:                                               ; preds = %20
  %26 = load ptr, ptr %3, align 8, !dbg !1589
  %27 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %26, i32 0, i32 1, !dbg !1589
  %28 = load ptr, ptr %27, align 8, !dbg !1589
  %29 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %28, i32 0, i32 0, !dbg !1589
  %30 = load ptr, ptr %29, align 8, !dbg !1589
  %31 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %30, i32 0, i32 5, !dbg !1589
  store i32 1024, ptr %31, align 8, !dbg !1589
  %32 = load ptr, ptr %3, align 8, !dbg !1589
  %33 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %32, i32 0, i32 1, !dbg !1589
  %34 = load ptr, ptr %33, align 8, !dbg !1589
  %35 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %34, i32 0, i32 0, !dbg !1589
  %36 = load ptr, ptr %35, align 8, !dbg !1589
  %37 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %36, i32 0, i32 1, !dbg !1589
  %38 = load ptr, ptr %37, align 8, !dbg !1589
  %39 = load ptr, ptr %3, align 8, !dbg !1589
  %40 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %39, i32 0, i32 1, !dbg !1589
  %41 = load ptr, ptr %40, align 8, !dbg !1589
  call void %38(ptr noundef %41, i32 noundef -1), !dbg !1589
  %42 = load ptr, ptr %3, align 8, !dbg !1591
  %43 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %42, i32 0, i32 10, !dbg !1592
  %44 = load i32, ptr %43, align 4, !dbg !1592
  store i32 %44, ptr %2, align 4, !dbg !1593
  br label %184, !dbg !1593

45:                                               ; preds = %20
  %46 = load ptr, ptr %3, align 8, !dbg !1594
  %47 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %46, i32 0, i32 3, !dbg !1595
  %48 = load ptr, ptr %3, align 8, !dbg !1596
  %49 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %48, i32 0, i32 4, !dbg !1597
  %50 = load i32, ptr %49, align 4, !dbg !1597
  %51 = sub nsw i32 %50, 2, !dbg !1598
  %52 = sext i32 %51 to i64, !dbg !1594
  %53 = getelementptr inbounds [260 x i8], ptr %47, i64 0, i64 %52, !dbg !1594
  %54 = load i8, ptr %53, align 1, !dbg !1594
  %55 = load ptr, ptr %3, align 8, !dbg !1599
  %56 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %55, i32 0, i32 3, !dbg !1600
  %57 = getelementptr inbounds [260 x i8], ptr %56, i64 0, i64 0, !dbg !1599
  store i8 %54, ptr %57, align 8, !dbg !1601
  %58 = load ptr, ptr %3, align 8, !dbg !1602
  %59 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %58, i32 0, i32 3, !dbg !1603
  %60 = load ptr, ptr %3, align 8, !dbg !1604
  %61 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %60, i32 0, i32 4, !dbg !1605
  %62 = load i32, ptr %61, align 4, !dbg !1605
  %63 = sub nsw i32 %62, 1, !dbg !1606
  %64 = sext i32 %63 to i64, !dbg !1602
  %65 = getelementptr inbounds [260 x i8], ptr %59, i64 0, i64 %64, !dbg !1602
  %66 = load i8, ptr %65, align 1, !dbg !1602
  %67 = load ptr, ptr %3, align 8, !dbg !1607
  %68 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %67, i32 0, i32 3, !dbg !1608
  %69 = getelementptr inbounds [260 x i8], ptr %68, i64 0, i64 1, !dbg !1607
  store i8 %66, ptr %69, align 1, !dbg !1609
  %70 = load ptr, ptr %3, align 8, !dbg !1610
  %71 = load ptr, ptr %3, align 8, !dbg !1612
  %72 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %71, i32 0, i32 3, !dbg !1613
  %73 = getelementptr inbounds [260 x i8], ptr %72, i64 0, i64 2, !dbg !1612
  %74 = call i32 @GetDataBlock(ptr noundef %70, ptr noundef %73), !dbg !1614
  store i32 %74, ptr %7, align 4, !dbg !1615
  %75 = icmp eq i32 %74, 0, !dbg !1616
  br i1 %75, label %76, label %98, !dbg !1616

76:                                               ; preds = %45
  %77 = load ptr, ptr %3, align 8, !dbg !1617
  %78 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %77, i32 0, i32 7, !dbg !1619
  store i32 1, ptr %78, align 8, !dbg !1620
  %79 = load ptr, ptr %3, align 8, !dbg !1621
  %80 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %79, i32 0, i32 1, !dbg !1621
  %81 = load ptr, ptr %80, align 8, !dbg !1621
  %82 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %81, i32 0, i32 0, !dbg !1621
  %83 = load ptr, ptr %82, align 8, !dbg !1621
  %84 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %83, i32 0, i32 5, !dbg !1621
  store i32 1024, ptr %84, align 8, !dbg !1621
  %85 = load ptr, ptr %3, align 8, !dbg !1621
  %86 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %85, i32 0, i32 1, !dbg !1621
  %87 = load ptr, ptr %86, align 8, !dbg !1621
  %88 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %87, i32 0, i32 0, !dbg !1621
  %89 = load ptr, ptr %88, align 8, !dbg !1621
  %90 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %89, i32 0, i32 1, !dbg !1621
  %91 = load ptr, ptr %90, align 8, !dbg !1621
  %92 = load ptr, ptr %3, align 8, !dbg !1621
  %93 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %92, i32 0, i32 1, !dbg !1621
  %94 = load ptr, ptr %93, align 8, !dbg !1621
  call void %91(ptr noundef %94, i32 noundef -1), !dbg !1621
  %95 = load ptr, ptr %3, align 8, !dbg !1622
  %96 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %95, i32 0, i32 10, !dbg !1623
  %97 = load i32, ptr %96, align 4, !dbg !1623
  store i32 %97, ptr %2, align 4, !dbg !1624
  br label %184, !dbg !1624

98:                                               ; preds = %45
  %99 = load ptr, ptr %3, align 8, !dbg !1625
  %100 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %99, i32 0, i32 6, !dbg !1626
  %101 = load i32, ptr %100, align 4, !dbg !1626
  %102 = load ptr, ptr %3, align 8, !dbg !1627
  %103 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %102, i32 0, i32 5, !dbg !1628
  %104 = load i32, ptr %103, align 8, !dbg !1628
  %105 = sub nsw i32 %101, %104, !dbg !1629
  %106 = add nsw i32 %105, 16, !dbg !1630
  %107 = load ptr, ptr %3, align 8, !dbg !1631
  %108 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %107, i32 0, i32 6, !dbg !1632
  store i32 %106, ptr %108, align 4, !dbg !1633
  %109 = load i32, ptr %7, align 4, !dbg !1634
  %110 = add nsw i32 2, %109, !dbg !1635
  %111 = load ptr, ptr %3, align 8, !dbg !1636
  %112 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %111, i32 0, i32 4, !dbg !1637
  store i32 %110, ptr %112, align 4, !dbg !1638
  %113 = load ptr, ptr %3, align 8, !dbg !1639
  %114 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %113, i32 0, i32 4, !dbg !1640
  %115 = load i32, ptr %114, align 4, !dbg !1640
  %116 = mul nsw i32 %115, 8, !dbg !1641
  %117 = load ptr, ptr %3, align 8, !dbg !1642
  %118 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %117, i32 0, i32 5, !dbg !1643
  store i32 %116, ptr %118, align 8, !dbg !1644
  br label %8, !dbg !1576, !llvm.loop !1645

119:                                              ; preds = %8
  %120 = load ptr, ptr %3, align 8, !dbg !1647
  %121 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %120, i32 0, i32 6, !dbg !1648
  %122 = load i32, ptr %121, align 4, !dbg !1648
  %123 = ashr i32 %122, 3, !dbg !1649
  store i32 %123, ptr %5, align 4, !dbg !1650
  %124 = load ptr, ptr %3, align 8, !dbg !1651
  %125 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %124, i32 0, i32 3, !dbg !1652
  %126 = load i32, ptr %5, align 4, !dbg !1653
  %127 = add nsw i32 %126, 2, !dbg !1654
  %128 = sext i32 %127 to i64, !dbg !1651
  %129 = getelementptr inbounds [260 x i8], ptr %125, i64 0, i64 %128, !dbg !1651
  %130 = load i8, ptr %129, align 1, !dbg !1651
  %131 = sext i8 %130 to i32, !dbg !1651
  %132 = and i32 %131, 255, !dbg !1655
  %133 = sext i32 %132 to i64, !dbg !1651
  store i64 %133, ptr %4, align 8, !dbg !1656
  %134 = load i64, ptr %4, align 8, !dbg !1657
  %135 = shl i64 %134, 8, !dbg !1657
  store i64 %135, ptr %4, align 8, !dbg !1657
  %136 = load ptr, ptr %3, align 8, !dbg !1658
  %137 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %136, i32 0, i32 3, !dbg !1659
  %138 = load i32, ptr %5, align 4, !dbg !1660
  %139 = add nsw i32 %138, 1, !dbg !1661
  %140 = sext i32 %139 to i64, !dbg !1658
  %141 = getelementptr inbounds [260 x i8], ptr %137, i64 0, i64 %140, !dbg !1658
  %142 = load i8, ptr %141, align 1, !dbg !1658
  %143 = sext i8 %142 to i32, !dbg !1658
  %144 = and i32 %143, 255, !dbg !1662
  %145 = sext i32 %144 to i64, !dbg !1658
  %146 = load i64, ptr %4, align 8, !dbg !1663
  %147 = or i64 %146, %145, !dbg !1663
  store i64 %147, ptr %4, align 8, !dbg !1663
  %148 = load i64, ptr %4, align 8, !dbg !1664
  %149 = shl i64 %148, 8, !dbg !1664
  store i64 %149, ptr %4, align 8, !dbg !1664
  %150 = load ptr, ptr %3, align 8, !dbg !1665
  %151 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %150, i32 0, i32 3, !dbg !1666
  %152 = load i32, ptr %5, align 4, !dbg !1667
  %153 = sext i32 %152 to i64, !dbg !1665
  %154 = getelementptr inbounds [260 x i8], ptr %151, i64 0, i64 %153, !dbg !1665
  %155 = load i8, ptr %154, align 1, !dbg !1665
  %156 = sext i8 %155 to i32, !dbg !1665
  %157 = and i32 %156, 255, !dbg !1668
  %158 = sext i32 %157 to i64, !dbg !1665
  %159 = load i64, ptr %4, align 8, !dbg !1669
  %160 = or i64 %159, %158, !dbg !1669
  store i64 %160, ptr %4, align 8, !dbg !1669
  %161 = load ptr, ptr %3, align 8, !dbg !1670
  %162 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %161, i32 0, i32 6, !dbg !1671
  %163 = load i32, ptr %162, align 4, !dbg !1671
  %164 = and i32 %163, 7, !dbg !1672
  %165 = load i64, ptr %4, align 8, !dbg !1673
  %166 = zext i32 %164 to i64, !dbg !1673
  %167 = ashr i64 %165, %166, !dbg !1673
  store i64 %167, ptr %4, align 8, !dbg !1673
  %168 = load i64, ptr %4, align 8, !dbg !1674
  %169 = trunc i64 %168 to i32, !dbg !1675
  %170 = load ptr, ptr %3, align 8, !dbg !1676
  %171 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %170, i32 0, i32 11, !dbg !1677
  %172 = load i32, ptr %171, align 8, !dbg !1677
  %173 = shl i32 1, %172, !dbg !1678
  %174 = sub nsw i32 %173, 1, !dbg !1679
  %175 = and i32 %169, %174, !dbg !1680
  store i32 %175, ptr %6, align 4, !dbg !1681
  %176 = load ptr, ptr %3, align 8, !dbg !1682
  %177 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %176, i32 0, i32 11, !dbg !1683
  %178 = load i32, ptr %177, align 8, !dbg !1683
  %179 = load ptr, ptr %3, align 8, !dbg !1684
  %180 = getelementptr inbounds nuw %struct.gif_source_struct, ptr %179, i32 0, i32 6, !dbg !1685
  %181 = load i32, ptr %180, align 4, !dbg !1686
  %182 = add nsw i32 %181, %178, !dbg !1686
  store i32 %182, ptr %180, align 4, !dbg !1686
  %183 = load i32, ptr %6, align 4, !dbg !1687
  store i32 %183, ptr %2, align 4, !dbg !1688
  br label %184, !dbg !1688

184:                                              ; preds = %119, %76, %25
  %185 = load i32, ptr %2, align 4, !dbg !1689
  ret i32 %185, !dbg !1689
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!604, !605, !606, !607, !608, !609, !610}
!llvm.ident = !{!611}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !189, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "cBench/consumer_jpeg_c/src/rdgif.c", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "9239336e56a20c64cacc4262ac020ded")
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
!189 = !{!190, !215, !230, !501, !245, !228, !585, !587, !596, !242, !290, !229, !412}
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "gif_source_ptr", file: !1, line: 125, baseType: !191)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "gif_source_struct", file: !1, line: 123, baseType: !193)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 84, size: 3520, elements: !194)
!194 = !{!195, !565, !566, !567, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !586, !588, !589, !590, !591, !592, !593, !594, !595}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "pub", scope: !193, file: !1, line: 85, baseType: !196, size: 384)
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
!565 = !DIDerivedType(tag: DW_TAG_member, name: "cinfo", scope: !193, file: !1, line: 87, baseType: !203, size: 64, offset: 384)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "colormap", scope: !193, file: !1, line: 89, baseType: !238, size: 64, offset: 448)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "code_buf", scope: !193, file: !1, line: 92, baseType: !568, size: 2080, offset: 512)
!568 = !DICompositeType(tag: DW_TAG_array_type, baseType: !309, size: 2080, elements: !569)
!569 = !{!570}
!570 = !DISubrange(count: 260)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "last_byte", scope: !193, file: !1, line: 93, baseType: !229, size: 32, offset: 2592)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "last_bit", scope: !193, file: !1, line: 94, baseType: !229, size: 32, offset: 2624)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bit", scope: !193, file: !1, line: 95, baseType: !229, size: 32, offset: 2656)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "out_of_blocks", scope: !193, file: !1, line: 96, baseType: !267, size: 32, offset: 2688)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "input_code_size", scope: !193, file: !1, line: 98, baseType: !229, size: 32, offset: 2720)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "clear_code", scope: !193, file: !1, line: 99, baseType: !229, size: 32, offset: 2752)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !193, file: !1, line: 99, baseType: !229, size: 32, offset: 2784)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "code_size", scope: !193, file: !1, line: 101, baseType: !229, size: 32, offset: 2816)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "limit_code", scope: !193, file: !1, line: 102, baseType: !229, size: 32, offset: 2848)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "max_code", scope: !193, file: !1, line: 103, baseType: !229, size: 32, offset: 2880)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "first_time", scope: !193, file: !1, line: 104, baseType: !267, size: 32, offset: 2912)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "oldcode", scope: !193, file: !1, line: 107, baseType: !229, size: 32, offset: 2944)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "firstcode", scope: !193, file: !1, line: 108, baseType: !229, size: 32, offset: 2976)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_head", scope: !193, file: !1, line: 111, baseType: !585, size: 64, offset: 3008)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_tail", scope: !193, file: !1, line: 112, baseType: !587, size: 64, offset: 3072)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_stack", scope: !193, file: !1, line: 113, baseType: !587, size: 64, offset: 3136)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !193, file: !1, line: 114, baseType: !587, size: 64, offset: 3200)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "is_interlaced", scope: !193, file: !1, line: 117, baseType: !267, size: 32, offset: 3264)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "interlaced_image", scope: !193, file: !1, line: 118, baseType: !264, size: 64, offset: 3328)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "cur_row_number", scope: !193, file: !1, line: 119, baseType: !245, size: 32, offset: 3392)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "pass2_offset", scope: !193, file: !1, line: 120, baseType: !245, size: 32, offset: 3424)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "pass3_offset", scope: !193, file: !1, line: 121, baseType: !245, size: 32, offset: 3456)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "pass4_offset", scope: !193, file: !1, line: 122, baseType: !245, size: 32, offset: 3488)
!596 = !DIDerivedType(tag: DW_TAG_typedef, name: "cd_progress_ptr", file: !197, line: 89, baseType: !597)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdjpeg_progress_mgr", file: !197, line: 81, size: 384, elements: !599)
!599 = !{!600, !601, !602, !603}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "pub", scope: !598, file: !197, line: 82, baseType: !293, size: 256)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "completed_extra_passes", scope: !598, file: !197, line: 83, baseType: !229, size: 32, offset: 256)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "total_extra_passes", scope: !598, file: !197, line: 84, baseType: !229, size: 32, offset: 288)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "percent_done", scope: !598, file: !197, line: 86, baseType: !229, size: 32, offset: 320)
!604 = !{i32 7, !"Dwarf Version", i32 5}
!605 = !{i32 2, !"Debug Info Version", i32 3}
!606 = !{i32 1, !"wchar_size", i32 4}
!607 = !{i32 8, !"PIC Level", i32 2}
!608 = !{i32 7, !"PIE Level", i32 2}
!609 = !{i32 7, !"uwtable", i32 2}
!610 = !{i32 7, !"frame-pointer", i32 2}
!611 = !{!"clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)"}
!612 = distinct !DISubprogram(name: "jinit_read_gif", scope: !1, file: !1, line: 667, type: !613, scopeLine: 668, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !615)
!613 = !DISubroutineType(types: !614)
!614 = !{!501, !203}
!615 = !{}
!616 = !DILocalVariable(name: "cinfo", arg: 1, scope: !612, file: !1, line: 667, type: !203)
!617 = !DILocation(line: 667, column: 32, scope: !612)
!618 = !DILocalVariable(name: "source", scope: !612, file: !1, line: 669, type: !190)
!619 = !DILocation(line: 669, column: 18, scope: !612)
!620 = !DILocation(line: 673, column: 9, scope: !612)
!621 = !DILocation(line: 673, column: 16, scope: !612)
!622 = !DILocation(line: 673, column: 21, scope: !612)
!623 = !DILocation(line: 673, column: 50, scope: !612)
!624 = !DILocation(line: 673, column: 7, scope: !612)
!625 = !DILocation(line: 672, column: 10, scope: !612)
!626 = !DILocation(line: 675, column: 19, scope: !612)
!627 = !DILocation(line: 675, column: 3, scope: !612)
!628 = !DILocation(line: 675, column: 11, scope: !612)
!629 = !DILocation(line: 675, column: 17, scope: !612)
!630 = !DILocation(line: 677, column: 3, scope: !612)
!631 = !DILocation(line: 677, column: 11, scope: !612)
!632 = !DILocation(line: 677, column: 15, scope: !612)
!633 = !DILocation(line: 677, column: 27, scope: !612)
!634 = !DILocation(line: 678, column: 3, scope: !612)
!635 = !DILocation(line: 678, column: 11, scope: !612)
!636 = !DILocation(line: 678, column: 15, scope: !612)
!637 = !DILocation(line: 678, column: 28, scope: !612)
!638 = !DILocation(line: 680, column: 29, scope: !612)
!639 = !DILocation(line: 680, column: 3, scope: !612)
!640 = distinct !DISubprogram(name: "start_input_gif", scope: !1, file: !1, line: 392, type: !201, scopeLine: 393, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !615)
!641 = !DILocalVariable(name: "cinfo", arg: 1, scope: !640, file: !1, line: 392, type: !203)
!642 = !DILocation(line: 392, column: 33, scope: !640)
!643 = !DILocalVariable(name: "sinfo", arg: 2, scope: !640, file: !1, line: 392, type: !501)
!644 = !DILocation(line: 392, column: 57, scope: !640)
!645 = !DILocalVariable(name: "source", scope: !640, file: !1, line: 394, type: !190)
!646 = !DILocation(line: 394, column: 18, scope: !640)
!647 = !DILocation(line: 394, column: 44, scope: !640)
!648 = !DILocalVariable(name: "hdrbuf", scope: !640, file: !1, line: 395, type: !649)
!649 = !DICompositeType(tag: DW_TAG_array_type, baseType: !309, size: 80, elements: !468)
!650 = !DILocation(line: 395, column: 8, scope: !640)
!651 = !DILocalVariable(name: "width", scope: !640, file: !1, line: 396, type: !5)
!652 = !DILocation(line: 396, column: 16, scope: !640)
!653 = !DILocalVariable(name: "height", scope: !640, file: !1, line: 396, type: !5)
!654 = !DILocation(line: 396, column: 23, scope: !640)
!655 = !DILocalVariable(name: "colormaplen", scope: !640, file: !1, line: 397, type: !229)
!656 = !DILocation(line: 397, column: 7, scope: !640)
!657 = !DILocalVariable(name: "aspectRatio", scope: !640, file: !1, line: 397, type: !229)
!658 = !DILocation(line: 397, column: 20, scope: !640)
!659 = !DILocalVariable(name: "c", scope: !640, file: !1, line: 398, type: !229)
!660 = !DILocation(line: 398, column: 7, scope: !640)
!661 = !DILocation(line: 401, column: 24, scope: !640)
!662 = !DILocation(line: 401, column: 31, scope: !640)
!663 = !DILocation(line: 401, column: 36, scope: !640)
!664 = !DILocation(line: 402, column: 21, scope: !640)
!665 = !DILocation(line: 401, column: 22, scope: !640)
!666 = !DILocation(line: 401, column: 3, scope: !640)
!667 = !DILocation(line: 401, column: 11, scope: !640)
!668 = !DILocation(line: 401, column: 20, scope: !640)
!669 = !DILocation(line: 406, column: 9, scope: !670)
!670 = distinct !DILexicalBlock(scope: !640, file: !1, line: 406, column: 7)
!671 = !DILocation(line: 406, column: 7, scope: !670)
!672 = !DILocation(line: 407, column: 5, scope: !670)
!673 = !DILocation(line: 408, column: 7, scope: !674)
!674 = distinct !DILexicalBlock(scope: !640, file: !1, line: 408, column: 7)
!675 = !DILocation(line: 408, column: 17, scope: !674)
!676 = !DILocation(line: 408, column: 24, scope: !674)
!677 = !DILocation(line: 408, column: 27, scope: !674)
!678 = !DILocation(line: 408, column: 37, scope: !674)
!679 = !DILocation(line: 408, column: 44, scope: !674)
!680 = !DILocation(line: 408, column: 47, scope: !674)
!681 = !DILocation(line: 408, column: 57, scope: !674)
!682 = !DILocation(line: 409, column: 5, scope: !674)
!683 = !DILocation(line: 414, column: 8, scope: !684)
!684 = distinct !DILexicalBlock(scope: !640, file: !1, line: 414, column: 7)
!685 = !DILocation(line: 414, column: 18, scope: !684)
!686 = !DILocation(line: 414, column: 25, scope: !684)
!687 = !DILocation(line: 414, column: 28, scope: !684)
!688 = !DILocation(line: 414, column: 38, scope: !684)
!689 = !DILocation(line: 414, column: 45, scope: !684)
!690 = !DILocation(line: 414, column: 48, scope: !684)
!691 = !DILocation(line: 414, column: 58, scope: !684)
!692 = !DILocation(line: 414, column: 66, scope: !684)
!693 = !DILocation(line: 415, column: 8, scope: !684)
!694 = !DILocation(line: 415, column: 18, scope: !684)
!695 = !DILocation(line: 415, column: 25, scope: !684)
!696 = !DILocation(line: 415, column: 28, scope: !684)
!697 = !DILocation(line: 415, column: 38, scope: !684)
!698 = !DILocation(line: 415, column: 45, scope: !684)
!699 = !DILocation(line: 415, column: 48, scope: !684)
!700 = !DILocation(line: 415, column: 58, scope: !684)
!701 = !DILocation(line: 416, column: 5, scope: !684)
!702 = !DILocalVariable(name: "_mp", scope: !703, file: !1, line: 416, type: !704)
!703 = distinct !DILexicalBlock(scope: !684, file: !1, line: 416, column: 5)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!705 = !DILocation(line: 416, column: 5, scope: !703)
!706 = !DILocation(line: 419, column: 9, scope: !707)
!707 = distinct !DILexicalBlock(scope: !640, file: !1, line: 419, column: 7)
!708 = !DILocation(line: 419, column: 7, scope: !707)
!709 = !DILocation(line: 420, column: 5, scope: !707)
!710 = !DILocation(line: 421, column: 11, scope: !640)
!711 = !DILocation(line: 421, column: 9, scope: !640)
!712 = !DILocation(line: 422, column: 12, scope: !640)
!713 = !DILocation(line: 422, column: 10, scope: !640)
!714 = !DILocation(line: 423, column: 23, scope: !640)
!715 = !DILocation(line: 423, column: 33, scope: !640)
!716 = !DILocation(line: 423, column: 19, scope: !640)
!717 = !DILocation(line: 423, column: 15, scope: !640)
!718 = !DILocation(line: 425, column: 17, scope: !640)
!719 = !DILocation(line: 425, column: 27, scope: !640)
!720 = !DILocation(line: 425, column: 15, scope: !640)
!721 = !DILocation(line: 426, column: 7, scope: !722)
!722 = distinct !DILexicalBlock(scope: !640, file: !1, line: 426, column: 7)
!723 = !DILocation(line: 426, column: 19, scope: !722)
!724 = !DILocation(line: 426, column: 24, scope: !722)
!725 = !DILocation(line: 426, column: 27, scope: !722)
!726 = !DILocation(line: 426, column: 39, scope: !722)
!727 = !DILocation(line: 427, column: 5, scope: !722)
!728 = !DILocation(line: 430, column: 7, scope: !729)
!729 = distinct !DILexicalBlock(scope: !640, file: !1, line: 430, column: 7)
!730 = !DILocation(line: 431, column: 18, scope: !729)
!731 = !DILocation(line: 431, column: 26, scope: !729)
!732 = !DILocation(line: 431, column: 39, scope: !729)
!733 = !DILocation(line: 431, column: 47, scope: !729)
!734 = !DILocation(line: 431, column: 5, scope: !729)
!735 = !DILocation(line: 436, column: 3, scope: !640)
!736 = !DILocation(line: 437, column: 18, scope: !737)
!737 = distinct !DILexicalBlock(scope: !738, file: !1, line: 436, column: 12)
!738 = distinct !DILexicalBlock(scope: !739, file: !1, line: 436, column: 3)
!739 = distinct !DILexicalBlock(scope: !640, file: !1, line: 436, column: 3)
!740 = !DILocation(line: 437, column: 9, scope: !737)
!741 = !DILocation(line: 437, column: 7, scope: !737)
!742 = !DILocation(line: 439, column: 9, scope: !743)
!743 = distinct !DILexicalBlock(scope: !737, file: !1, line: 439, column: 9)
!744 = !DILocation(line: 439, column: 11, scope: !743)
!745 = !DILocation(line: 440, column: 7, scope: !743)
!746 = !DILocation(line: 442, column: 9, scope: !747)
!747 = distinct !DILexicalBlock(scope: !737, file: !1, line: 442, column: 9)
!748 = !DILocation(line: 442, column: 11, scope: !747)
!749 = !DILocation(line: 443, column: 19, scope: !750)
!750 = distinct !DILexicalBlock(scope: !747, file: !1, line: 442, column: 19)
!751 = !DILocation(line: 443, column: 7, scope: !750)
!752 = !DILocation(line: 444, column: 7, scope: !750)
!753 = distinct !{!753, !754, !755}
!754 = !DILocation(line: 436, column: 3, scope: !739)
!755 = !DILocation(line: 476, column: 3, scope: !739)
!756 = !DILocation(line: 447, column: 9, scope: !757)
!757 = distinct !DILexicalBlock(scope: !737, file: !1, line: 447, column: 9)
!758 = !DILocation(line: 447, column: 11, scope: !757)
!759 = !DILocation(line: 448, column: 7, scope: !760)
!760 = distinct !DILexicalBlock(scope: !757, file: !1, line: 447, column: 19)
!761 = !DILocation(line: 449, column: 7, scope: !760)
!762 = !DILocation(line: 453, column: 11, scope: !763)
!763 = distinct !DILexicalBlock(scope: !737, file: !1, line: 453, column: 9)
!764 = !DILocation(line: 453, column: 9, scope: !763)
!765 = !DILocation(line: 454, column: 7, scope: !763)
!766 = !DILocation(line: 456, column: 13, scope: !737)
!767 = !DILocation(line: 456, column: 11, scope: !737)
!768 = !DILocation(line: 457, column: 14, scope: !737)
!769 = !DILocation(line: 457, column: 12, scope: !737)
!770 = !DILocation(line: 458, column: 29, scope: !737)
!771 = !DILocation(line: 458, column: 5, scope: !737)
!772 = !DILocation(line: 458, column: 13, scope: !737)
!773 = !DILocation(line: 458, column: 27, scope: !737)
!774 = !DILocation(line: 463, column: 9, scope: !775)
!775 = distinct !DILexicalBlock(scope: !737, file: !1, line: 463, column: 9)
!776 = !DILocation(line: 464, column: 27, scope: !777)
!777 = distinct !DILexicalBlock(scope: !775, file: !1, line: 463, column: 42)
!778 = !DILocation(line: 464, column: 37, scope: !777)
!779 = !DILocation(line: 464, column: 23, scope: !777)
!780 = !DILocation(line: 464, column: 19, scope: !777)
!781 = !DILocation(line: 465, column: 20, scope: !777)
!782 = !DILocation(line: 465, column: 28, scope: !777)
!783 = !DILocation(line: 465, column: 41, scope: !777)
!784 = !DILocation(line: 465, column: 49, scope: !777)
!785 = !DILocation(line: 465, column: 7, scope: !777)
!786 = !DILocation(line: 466, column: 5, scope: !777)
!787 = !DILocation(line: 468, column: 40, scope: !737)
!788 = !DILocation(line: 468, column: 31, scope: !737)
!789 = !DILocation(line: 468, column: 5, scope: !737)
!790 = !DILocation(line: 468, column: 13, scope: !737)
!791 = !DILocation(line: 468, column: 29, scope: !737)
!792 = !DILocation(line: 469, column: 9, scope: !793)
!793 = distinct !DILexicalBlock(scope: !737, file: !1, line: 469, column: 9)
!794 = !DILocation(line: 469, column: 17, scope: !793)
!795 = !DILocation(line: 469, column: 33, scope: !793)
!796 = !DILocation(line: 469, column: 37, scope: !793)
!797 = !DILocation(line: 469, column: 40, scope: !793)
!798 = !DILocation(line: 469, column: 48, scope: !793)
!799 = !DILocation(line: 469, column: 64, scope: !793)
!800 = !DILocation(line: 470, column: 7, scope: !793)
!801 = !DILocation(line: 475, column: 5, scope: !737)
!802 = !DILocation(line: 480, column: 7, scope: !640)
!803 = !DILocation(line: 480, column: 14, scope: !640)
!804 = !DILocation(line: 480, column: 19, scope: !640)
!805 = !DILocation(line: 480, column: 48, scope: !640)
!806 = !DILocation(line: 480, column: 5, scope: !640)
!807 = !DILocation(line: 479, column: 3, scope: !640)
!808 = !DILocation(line: 479, column: 11, scope: !640)
!809 = !DILocation(line: 479, column: 23, scope: !640)
!810 = !DILocation(line: 483, column: 7, scope: !640)
!811 = !DILocation(line: 483, column: 14, scope: !640)
!812 = !DILocation(line: 483, column: 19, scope: !640)
!813 = !DILocation(line: 483, column: 48, scope: !640)
!814 = !DILocation(line: 483, column: 5, scope: !640)
!815 = !DILocation(line: 482, column: 3, scope: !640)
!816 = !DILocation(line: 482, column: 11, scope: !640)
!817 = !DILocation(line: 482, column: 23, scope: !640)
!818 = !DILocation(line: 486, column: 7, scope: !640)
!819 = !DILocation(line: 486, column: 14, scope: !640)
!820 = !DILocation(line: 486, column: 19, scope: !640)
!821 = !DILocation(line: 486, column: 48, scope: !640)
!822 = !DILocation(line: 486, column: 5, scope: !640)
!823 = !DILocation(line: 485, column: 3, scope: !640)
!824 = !DILocation(line: 485, column: 11, scope: !640)
!825 = !DILocation(line: 485, column: 24, scope: !640)
!826 = !DILocation(line: 488, column: 15, scope: !640)
!827 = !DILocation(line: 488, column: 3, scope: !640)
!828 = !DILocation(line: 495, column: 7, scope: !829)
!829 = distinct !DILexicalBlock(scope: !640, file: !1, line: 495, column: 7)
!830 = !DILocation(line: 495, column: 15, scope: !829)
!831 = !DILocation(line: 500, column: 34, scope: !832)
!832 = distinct !DILexicalBlock(scope: !829, file: !1, line: 495, column: 30)
!833 = !DILocation(line: 500, column: 41, scope: !832)
!834 = !DILocation(line: 500, column: 46, scope: !832)
!835 = !DILocation(line: 501, column: 23, scope: !832)
!836 = !DILocation(line: 502, column: 21, scope: !832)
!837 = !DILocation(line: 502, column: 41, scope: !832)
!838 = !DILocation(line: 500, column: 32, scope: !832)
!839 = !DILocation(line: 500, column: 5, scope: !832)
!840 = !DILocation(line: 500, column: 13, scope: !832)
!841 = !DILocation(line: 500, column: 30, scope: !832)
!842 = !DILocation(line: 503, column: 9, scope: !843)
!843 = distinct !DILexicalBlock(scope: !832, file: !1, line: 503, column: 9)
!844 = !DILocation(line: 503, column: 16, scope: !843)
!845 = !DILocation(line: 503, column: 25, scope: !843)
!846 = !DILocalVariable(name: "progress", scope: !847, file: !1, line: 504, type: !596)
!847 = distinct !DILexicalBlock(scope: !843, file: !1, line: 503, column: 34)
!848 = !DILocation(line: 504, column: 23, scope: !847)
!849 = !DILocation(line: 504, column: 52, scope: !847)
!850 = !DILocation(line: 504, column: 59, scope: !847)
!851 = !DILocation(line: 505, column: 7, scope: !847)
!852 = !DILocation(line: 505, column: 17, scope: !847)
!853 = !DILocation(line: 505, column: 35, scope: !847)
!854 = !DILocation(line: 506, column: 5, scope: !847)
!855 = !DILocation(line: 507, column: 5, scope: !832)
!856 = !DILocation(line: 507, column: 13, scope: !832)
!857 = !DILocation(line: 507, column: 17, scope: !832)
!858 = !DILocation(line: 507, column: 32, scope: !832)
!859 = !DILocation(line: 508, column: 3, scope: !832)
!860 = !DILocation(line: 509, column: 5, scope: !861)
!861 = distinct !DILexicalBlock(scope: !829, file: !1, line: 508, column: 10)
!862 = !DILocation(line: 509, column: 13, scope: !861)
!863 = !DILocation(line: 509, column: 17, scope: !861)
!864 = !DILocation(line: 509, column: 32, scope: !861)
!865 = !DILocation(line: 513, column: 26, scope: !640)
!866 = !DILocation(line: 513, column: 33, scope: !640)
!867 = !DILocation(line: 513, column: 38, scope: !640)
!868 = !DILocation(line: 514, column: 21, scope: !640)
!869 = !DILocation(line: 515, column: 19, scope: !640)
!870 = !DILocation(line: 515, column: 25, scope: !640)
!871 = !DILocation(line: 513, column: 24, scope: !640)
!872 = !DILocation(line: 513, column: 3, scope: !640)
!873 = !DILocation(line: 513, column: 11, scope: !640)
!874 = !DILocation(line: 513, column: 15, scope: !640)
!875 = !DILocation(line: 513, column: 22, scope: !640)
!876 = !DILocation(line: 516, column: 3, scope: !640)
!877 = !DILocation(line: 516, column: 11, scope: !640)
!878 = !DILocation(line: 516, column: 15, scope: !640)
!879 = !DILocation(line: 516, column: 29, scope: !640)
!880 = !DILocation(line: 519, column: 3, scope: !640)
!881 = !DILocation(line: 519, column: 10, scope: !640)
!882 = !DILocation(line: 519, column: 25, scope: !640)
!883 = !DILocation(line: 520, column: 3, scope: !640)
!884 = !DILocation(line: 520, column: 10, scope: !640)
!885 = !DILocation(line: 520, column: 27, scope: !640)
!886 = !DILocation(line: 521, column: 3, scope: !640)
!887 = !DILocation(line: 521, column: 10, scope: !640)
!888 = !DILocation(line: 521, column: 25, scope: !640)
!889 = !DILocation(line: 522, column: 24, scope: !640)
!890 = !DILocation(line: 522, column: 3, scope: !640)
!891 = !DILocation(line: 522, column: 10, scope: !640)
!892 = !DILocation(line: 522, column: 22, scope: !640)
!893 = !DILocation(line: 523, column: 25, scope: !640)
!894 = !DILocation(line: 523, column: 3, scope: !640)
!895 = !DILocation(line: 523, column: 10, scope: !640)
!896 = !DILocation(line: 523, column: 23, scope: !640)
!897 = !DILocation(line: 525, column: 3, scope: !640)
!898 = !DILocalVariable(name: "_mp", scope: !899, file: !1, line: 525, type: !704)
!899 = distinct !DILexicalBlock(scope: !640, file: !1, line: 525, column: 3)
!900 = !DILocation(line: 525, column: 3, scope: !899)
!901 = !DILocation(line: 526, column: 1, scope: !640)
!902 = distinct !DISubprogram(name: "finish_input_gif", scope: !1, file: !1, line: 656, type: !201, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !615)
!903 = !DILocalVariable(name: "cinfo", arg: 1, scope: !902, file: !1, line: 656, type: !203)
!904 = !DILocation(line: 656, column: 34, scope: !902)
!905 = !DILocalVariable(name: "sinfo", arg: 2, scope: !902, file: !1, line: 656, type: !501)
!906 = !DILocation(line: 656, column: 58, scope: !902)
!907 = !DILocation(line: 659, column: 1, scope: !902)
!908 = distinct !DISubprogram(name: "ReadColorMap", scope: !1, file: !1, line: 354, type: !909, scopeLine: 356, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !615)
!909 = !DISubroutineType(types: !910)
!910 = !{null, !190, !229, !238}
!911 = !DILocalVariable(name: "sinfo", arg: 1, scope: !908, file: !1, line: 354, type: !190)
!912 = !DILocation(line: 354, column: 30, scope: !908)
!913 = !DILocalVariable(name: "cmaplen", arg: 2, scope: !908, file: !1, line: 354, type: !229)
!914 = !DILocation(line: 354, column: 41, scope: !908)
!915 = !DILocalVariable(name: "cmap", arg: 3, scope: !908, file: !1, line: 354, type: !238)
!916 = !DILocation(line: 354, column: 61, scope: !908)
!917 = !DILocalVariable(name: "i", scope: !908, file: !1, line: 357, type: !229)
!918 = !DILocation(line: 357, column: 7, scope: !908)
!919 = !DILocation(line: 359, column: 10, scope: !920)
!920 = distinct !DILexicalBlock(scope: !908, file: !1, line: 359, column: 3)
!921 = !DILocation(line: 359, column: 8, scope: !920)
!922 = !DILocation(line: 359, column: 15, scope: !923)
!923 = distinct !DILexicalBlock(scope: !920, file: !1, line: 359, column: 3)
!924 = !DILocation(line: 359, column: 19, scope: !923)
!925 = !DILocation(line: 359, column: 17, scope: !923)
!926 = !DILocation(line: 359, column: 3, scope: !920)
!927 = !DILocation(line: 365, column: 35, scope: !928)
!928 = distinct !DILexicalBlock(scope: !923, file: !1, line: 359, column: 33)
!929 = !DILocation(line: 365, column: 25, scope: !928)
!930 = !DILocation(line: 365, column: 5, scope: !928)
!931 = !DILocation(line: 365, column: 18, scope: !928)
!932 = !DILocation(line: 365, column: 23, scope: !928)
!933 = !DILocation(line: 366, column: 35, scope: !928)
!934 = !DILocation(line: 366, column: 25, scope: !928)
!935 = !DILocation(line: 366, column: 5, scope: !928)
!936 = !DILocation(line: 366, column: 20, scope: !928)
!937 = !DILocation(line: 366, column: 23, scope: !928)
!938 = !DILocation(line: 367, column: 35, scope: !928)
!939 = !DILocation(line: 367, column: 25, scope: !928)
!940 = !DILocation(line: 367, column: 5, scope: !928)
!941 = !DILocation(line: 367, column: 19, scope: !928)
!942 = !DILocation(line: 367, column: 23, scope: !928)
!943 = !DILocation(line: 368, column: 3, scope: !928)
!944 = !DILocation(line: 359, column: 29, scope: !923)
!945 = !DILocation(line: 359, column: 3, scope: !923)
!946 = distinct !{!946, !926, !947, !948}
!947 = !DILocation(line: 368, column: 3, scope: !920)
!948 = !{!"llvm.loop.mustprogress"}
!949 = !DILocation(line: 369, column: 1, scope: !908)
!950 = distinct !DISubprogram(name: "ReadByte", scope: !1, file: !1, line: 138, type: !951, scopeLine: 140, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !615)
!951 = !DISubroutineType(types: !952)
!952 = !{!229, !190}
!953 = !DILocalVariable(name: "sinfo", arg: 1, scope: !950, file: !1, line: 138, type: !190)
!954 = !DILocation(line: 138, column: 26, scope: !950)
!955 = !DILocalVariable(name: "infile", scope: !950, file: !1, line: 141, type: !509)
!956 = !DILocation(line: 141, column: 19, scope: !950)
!957 = !DILocation(line: 141, column: 28, scope: !950)
!958 = !DILocation(line: 141, column: 35, scope: !950)
!959 = !DILocation(line: 141, column: 39, scope: !950)
!960 = !DILocalVariable(name: "c", scope: !950, file: !1, line: 142, type: !229)
!961 = !DILocation(line: 142, column: 7, scope: !950)
!962 = !DILocation(line: 144, column: 17, scope: !963)
!963 = distinct !DILexicalBlock(scope: !950, file: !1, line: 144, column: 7)
!964 = !DILocation(line: 144, column: 12, scope: !963)
!965 = !DILocation(line: 144, column: 10, scope: !963)
!966 = !DILocation(line: 144, column: 26, scope: !963)
!967 = !DILocation(line: 145, column: 5, scope: !963)
!968 = !DILocation(line: 146, column: 10, scope: !950)
!969 = !DILocation(line: 146, column: 3, scope: !950)
!970 = distinct !DISubprogram(name: "DoExtension", scope: !1, file: !1, line: 373, type: !971, scopeLine: 376, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !615)
!971 = !DISubroutineType(types: !972)
!972 = !{null, !190}
!973 = !DILocalVariable(name: "sinfo", arg: 1, scope: !970, file: !1, line: 373, type: !190)
!974 = !DILocation(line: 373, column: 29, scope: !970)
!975 = !DILocalVariable(name: "extlabel", scope: !970, file: !1, line: 377, type: !229)
!976 = !DILocation(line: 377, column: 7, scope: !970)
!977 = !DILocation(line: 380, column: 23, scope: !970)
!978 = !DILocation(line: 380, column: 14, scope: !970)
!979 = !DILocation(line: 380, column: 12, scope: !970)
!980 = !DILocation(line: 381, column: 3, scope: !970)
!981 = !DILocation(line: 383, column: 18, scope: !970)
!982 = !DILocation(line: 383, column: 3, scope: !970)
!983 = !DILocation(line: 384, column: 1, scope: !970)
!984 = distinct !DISubprogram(name: "InitLZWCode", scope: !1, file: !1, line: 189, type: !971, scopeLine: 191, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !615)
!985 = !DILocalVariable(name: "sinfo", arg: 1, scope: !984, file: !1, line: 189, type: !190)
!986 = !DILocation(line: 189, column: 29, scope: !984)
!987 = !DILocation(line: 193, column: 3, scope: !984)
!988 = !DILocation(line: 193, column: 10, scope: !984)
!989 = !DILocation(line: 193, column: 20, scope: !984)
!990 = !DILocation(line: 194, column: 3, scope: !984)
!991 = !DILocation(line: 194, column: 10, scope: !984)
!992 = !DILocation(line: 194, column: 19, scope: !984)
!993 = !DILocation(line: 195, column: 3, scope: !984)
!994 = !DILocation(line: 195, column: 10, scope: !984)
!995 = !DILocation(line: 195, column: 18, scope: !984)
!996 = !DILocation(line: 196, column: 3, scope: !984)
!997 = !DILocation(line: 196, column: 10, scope: !984)
!998 = !DILocation(line: 196, column: 24, scope: !984)
!999 = !DILocation(line: 200, column: 28, scope: !984)
!1000 = !DILocation(line: 200, column: 35, scope: !984)
!1001 = !DILocation(line: 200, column: 25, scope: !984)
!1002 = !DILocation(line: 200, column: 3, scope: !984)
!1003 = !DILocation(line: 200, column: 10, scope: !984)
!1004 = !DILocation(line: 200, column: 21, scope: !984)
!1005 = !DILocation(line: 201, column: 21, scope: !984)
!1006 = !DILocation(line: 201, column: 28, scope: !984)
!1007 = !DILocation(line: 201, column: 39, scope: !984)
!1008 = !DILocation(line: 201, column: 3, scope: !984)
!1009 = !DILocation(line: 201, column: 10, scope: !984)
!1010 = !DILocation(line: 201, column: 19, scope: !984)
!1011 = !DILocation(line: 202, column: 3, scope: !984)
!1012 = !DILocation(line: 202, column: 10, scope: !984)
!1013 = !DILocation(line: 202, column: 21, scope: !984)
!1014 = !DILocation(line: 203, column: 13, scope: !984)
!1015 = !DILocation(line: 203, column: 3, scope: !984)
!1016 = !DILocation(line: 204, column: 1, scope: !984)
!1017 = distinct !DISubprogram(name: "load_interlaced_image", scope: !1, file: !1, line: 562, type: !505, scopeLine: 563, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !615)
!1018 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1017, file: !1, line: 562, type: !203)
!1019 = !DILocation(line: 562, column: 39, scope: !1017)
!1020 = !DILocalVariable(name: "sinfo", arg: 2, scope: !1017, file: !1, line: 562, type: !501)
!1021 = !DILocation(line: 562, column: 63, scope: !1017)
!1022 = !DILocalVariable(name: "source", scope: !1017, file: !1, line: 564, type: !190)
!1023 = !DILocation(line: 564, column: 18, scope: !1017)
!1024 = !DILocation(line: 564, column: 44, scope: !1017)
!1025 = !DILocalVariable(name: "image_ptr", scope: !1017, file: !1, line: 565, type: !238)
!1026 = !DILocation(line: 565, column: 14, scope: !1017)
!1027 = !DILocalVariable(name: "sptr", scope: !1017, file: !1, line: 566, type: !240)
!1028 = !DILocation(line: 566, column: 21, scope: !1017)
!1029 = !DILocalVariable(name: "col", scope: !1017, file: !1, line: 567, type: !245)
!1030 = !DILocation(line: 567, column: 23, scope: !1017)
!1031 = !DILocalVariable(name: "row", scope: !1017, file: !1, line: 568, type: !245)
!1032 = !DILocation(line: 568, column: 14, scope: !1017)
!1033 = !DILocalVariable(name: "progress", scope: !1017, file: !1, line: 569, type: !596)
!1034 = !DILocation(line: 569, column: 19, scope: !1017)
!1035 = !DILocation(line: 569, column: 48, scope: !1017)
!1036 = !DILocation(line: 569, column: 55, scope: !1017)
!1037 = !DILocation(line: 572, column: 12, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !1017, file: !1, line: 572, column: 3)
!1039 = !DILocation(line: 572, column: 8, scope: !1038)
!1040 = !DILocation(line: 572, column: 17, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1038, file: !1, line: 572, column: 3)
!1042 = !DILocation(line: 572, column: 23, scope: !1041)
!1043 = !DILocation(line: 572, column: 30, scope: !1041)
!1044 = !DILocation(line: 572, column: 21, scope: !1041)
!1045 = !DILocation(line: 572, column: 3, scope: !1038)
!1046 = !DILocation(line: 573, column: 9, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !1048, file: !1, line: 573, column: 9)
!1048 = distinct !DILexicalBlock(scope: !1041, file: !1, line: 572, column: 51)
!1049 = !DILocation(line: 573, column: 18, scope: !1047)
!1050 = !DILocation(line: 574, column: 43, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !1047, file: !1, line: 573, column: 27)
!1052 = !DILocation(line: 574, column: 36, scope: !1051)
!1053 = !DILocation(line: 574, column: 7, scope: !1051)
!1054 = !DILocation(line: 574, column: 17, scope: !1051)
!1055 = !DILocation(line: 574, column: 21, scope: !1051)
!1056 = !DILocation(line: 574, column: 34, scope: !1051)
!1057 = !DILocation(line: 575, column: 41, scope: !1051)
!1058 = !DILocation(line: 575, column: 48, scope: !1051)
!1059 = !DILocation(line: 575, column: 34, scope: !1051)
!1060 = !DILocation(line: 575, column: 7, scope: !1051)
!1061 = !DILocation(line: 575, column: 17, scope: !1051)
!1062 = !DILocation(line: 575, column: 21, scope: !1051)
!1063 = !DILocation(line: 575, column: 32, scope: !1051)
!1064 = !DILocation(line: 576, column: 9, scope: !1051)
!1065 = !DILocation(line: 576, column: 19, scope: !1051)
!1066 = !DILocation(line: 576, column: 23, scope: !1051)
!1067 = !DILocation(line: 576, column: 57, scope: !1051)
!1068 = !DILocation(line: 576, column: 7, scope: !1051)
!1069 = !DILocation(line: 577, column: 5, scope: !1051)
!1070 = !DILocation(line: 578, column: 19, scope: !1048)
!1071 = !DILocation(line: 578, column: 26, scope: !1048)
!1072 = !DILocation(line: 578, column: 31, scope: !1048)
!1073 = !DILocation(line: 579, column: 23, scope: !1048)
!1074 = !DILocation(line: 579, column: 30, scope: !1048)
!1075 = !DILocation(line: 579, column: 38, scope: !1048)
!1076 = !DILocation(line: 580, column: 8, scope: !1048)
!1077 = !DILocation(line: 578, column: 17, scope: !1048)
!1078 = !DILocation(line: 578, column: 15, scope: !1048)
!1079 = !DILocation(line: 581, column: 12, scope: !1048)
!1080 = !DILocation(line: 581, column: 10, scope: !1048)
!1081 = !DILocation(line: 582, column: 16, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !1048, file: !1, line: 582, column: 5)
!1083 = !DILocation(line: 582, column: 23, scope: !1082)
!1084 = !DILocation(line: 582, column: 14, scope: !1082)
!1085 = !DILocation(line: 582, column: 10, scope: !1082)
!1086 = !DILocation(line: 582, column: 36, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !1082, file: !1, line: 582, column: 5)
!1088 = !DILocation(line: 582, column: 40, scope: !1087)
!1089 = !DILocation(line: 582, column: 5, scope: !1082)
!1090 = !DILocation(line: 583, column: 39, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !1087, file: !1, line: 582, column: 52)
!1092 = !DILocation(line: 583, column: 27, scope: !1091)
!1093 = !DILocation(line: 583, column: 17, scope: !1091)
!1094 = !DILocation(line: 583, column: 12, scope: !1091)
!1095 = !DILocation(line: 583, column: 15, scope: !1091)
!1096 = !DILocation(line: 584, column: 5, scope: !1091)
!1097 = !DILocation(line: 582, column: 48, scope: !1087)
!1098 = !DILocation(line: 582, column: 5, scope: !1087)
!1099 = distinct !{!1099, !1089, !1100, !948}
!1100 = !DILocation(line: 584, column: 5, scope: !1082)
!1101 = !DILocation(line: 585, column: 3, scope: !1048)
!1102 = !DILocation(line: 572, column: 47, scope: !1041)
!1103 = !DILocation(line: 572, column: 3, scope: !1041)
!1104 = distinct !{!1104, !1045, !1105, !948}
!1105 = !DILocation(line: 585, column: 3, scope: !1038)
!1106 = !DILocation(line: 586, column: 7, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !1017, file: !1, line: 586, column: 7)
!1108 = !DILocation(line: 586, column: 16, scope: !1107)
!1109 = !DILocation(line: 587, column: 5, scope: !1107)
!1110 = !DILocation(line: 587, column: 15, scope: !1107)
!1111 = !DILocation(line: 587, column: 37, scope: !1107)
!1112 = !DILocation(line: 590, column: 3, scope: !1017)
!1113 = !DILocation(line: 590, column: 11, scope: !1017)
!1114 = !DILocation(line: 590, column: 15, scope: !1017)
!1115 = !DILocation(line: 590, column: 30, scope: !1017)
!1116 = !DILocation(line: 592, column: 3, scope: !1017)
!1117 = !DILocation(line: 592, column: 11, scope: !1017)
!1118 = !DILocation(line: 592, column: 26, scope: !1017)
!1119 = !DILocation(line: 593, column: 27, scope: !1017)
!1120 = !DILocation(line: 593, column: 34, scope: !1017)
!1121 = !DILocation(line: 593, column: 47, scope: !1017)
!1122 = !DILocation(line: 593, column: 52, scope: !1017)
!1123 = !DILocation(line: 593, column: 3, scope: !1017)
!1124 = !DILocation(line: 593, column: 11, scope: !1017)
!1125 = !DILocation(line: 593, column: 24, scope: !1017)
!1126 = !DILocation(line: 594, column: 26, scope: !1017)
!1127 = !DILocation(line: 594, column: 34, scope: !1017)
!1128 = !DILocation(line: 594, column: 50, scope: !1017)
!1129 = !DILocation(line: 594, column: 57, scope: !1017)
!1130 = !DILocation(line: 594, column: 70, scope: !1017)
!1131 = !DILocation(line: 594, column: 75, scope: !1017)
!1132 = !DILocation(line: 594, column: 47, scope: !1017)
!1133 = !DILocation(line: 594, column: 3, scope: !1017)
!1134 = !DILocation(line: 594, column: 11, scope: !1017)
!1135 = !DILocation(line: 594, column: 24, scope: !1017)
!1136 = !DILocation(line: 595, column: 26, scope: !1017)
!1137 = !DILocation(line: 595, column: 34, scope: !1017)
!1138 = !DILocation(line: 595, column: 50, scope: !1017)
!1139 = !DILocation(line: 595, column: 57, scope: !1017)
!1140 = !DILocation(line: 595, column: 70, scope: !1017)
!1141 = !DILocation(line: 595, column: 75, scope: !1017)
!1142 = !DILocation(line: 595, column: 47, scope: !1017)
!1143 = !DILocation(line: 595, column: 3, scope: !1017)
!1144 = !DILocation(line: 595, column: 11, scope: !1017)
!1145 = !DILocation(line: 595, column: 24, scope: !1017)
!1146 = !DILocation(line: 597, column: 29, scope: !1017)
!1147 = !DILocation(line: 597, column: 36, scope: !1017)
!1148 = !DILocation(line: 597, column: 10, scope: !1017)
!1149 = !DILocation(line: 597, column: 3, scope: !1017)
!1150 = distinct !DISubprogram(name: "get_pixel_rows", scope: !1, file: !1, line: 536, type: !505, scopeLine: 537, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !615)
!1151 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1150, file: !1, line: 536, type: !203)
!1152 = !DILocation(line: 536, column: 32, scope: !1150)
!1153 = !DILocalVariable(name: "sinfo", arg: 2, scope: !1150, file: !1, line: 536, type: !501)
!1154 = !DILocation(line: 536, column: 56, scope: !1150)
!1155 = !DILocalVariable(name: "source", scope: !1150, file: !1, line: 538, type: !190)
!1156 = !DILocation(line: 538, column: 18, scope: !1150)
!1157 = !DILocation(line: 538, column: 44, scope: !1150)
!1158 = !DILocalVariable(name: "c", scope: !1150, file: !1, line: 539, type: !229)
!1159 = !DILocation(line: 539, column: 16, scope: !1150)
!1160 = !DILocalVariable(name: "ptr", scope: !1150, file: !1, line: 540, type: !240)
!1161 = !DILocation(line: 540, column: 21, scope: !1150)
!1162 = !DILocalVariable(name: "col", scope: !1150, file: !1, line: 541, type: !245)
!1163 = !DILocation(line: 541, column: 23, scope: !1150)
!1164 = !DILocalVariable(name: "colormap", scope: !1150, file: !1, line: 542, type: !238)
!1165 = !DILocation(line: 542, column: 23, scope: !1150)
!1166 = !DILocation(line: 542, column: 34, scope: !1150)
!1167 = !DILocation(line: 542, column: 42, scope: !1150)
!1168 = !DILocation(line: 544, column: 9, scope: !1150)
!1169 = !DILocation(line: 544, column: 17, scope: !1150)
!1170 = !DILocation(line: 544, column: 21, scope: !1150)
!1171 = !DILocation(line: 544, column: 7, scope: !1150)
!1172 = !DILocation(line: 545, column: 14, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !1150, file: !1, line: 545, column: 3)
!1174 = !DILocation(line: 545, column: 21, scope: !1173)
!1175 = !DILocation(line: 545, column: 12, scope: !1173)
!1176 = !DILocation(line: 545, column: 8, scope: !1173)
!1177 = !DILocation(line: 545, column: 34, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !1173, file: !1, line: 545, column: 3)
!1179 = !DILocation(line: 545, column: 38, scope: !1178)
!1180 = !DILocation(line: 545, column: 3, scope: !1173)
!1181 = !DILocation(line: 546, column: 21, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1178, file: !1, line: 545, column: 50)
!1183 = !DILocation(line: 546, column: 9, scope: !1182)
!1184 = !DILocation(line: 546, column: 7, scope: !1182)
!1185 = !DILocation(line: 547, column: 14, scope: !1182)
!1186 = !DILocation(line: 547, column: 31, scope: !1182)
!1187 = !DILocation(line: 547, column: 9, scope: !1182)
!1188 = !DILocation(line: 547, column: 12, scope: !1182)
!1189 = !DILocation(line: 548, column: 14, scope: !1182)
!1190 = !DILocation(line: 548, column: 33, scope: !1182)
!1191 = !DILocation(line: 548, column: 9, scope: !1182)
!1192 = !DILocation(line: 548, column: 12, scope: !1182)
!1193 = !DILocation(line: 549, column: 14, scope: !1182)
!1194 = !DILocation(line: 549, column: 32, scope: !1182)
!1195 = !DILocation(line: 549, column: 9, scope: !1182)
!1196 = !DILocation(line: 549, column: 12, scope: !1182)
!1197 = !DILocation(line: 550, column: 3, scope: !1182)
!1198 = !DILocation(line: 545, column: 46, scope: !1178)
!1199 = !DILocation(line: 545, column: 3, scope: !1178)
!1200 = distinct !{!1200, !1180, !1201, !948}
!1201 = !DILocation(line: 550, column: 3, scope: !1173)
!1202 = !DILocation(line: 551, column: 3, scope: !1150)
!1203 = distinct !DISubprogram(name: "SkipDataBlocks", scope: !1, file: !1, line: 167, type: !971, scopeLine: 169, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !615)
!1204 = !DILocalVariable(name: "sinfo", arg: 1, scope: !1203, file: !1, line: 167, type: !190)
!1205 = !DILocation(line: 167, column: 32, scope: !1203)
!1206 = !DILocalVariable(name: "buf", scope: !1203, file: !1, line: 170, type: !1207)
!1207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !309, size: 2048, elements: !417)
!1208 = !DILocation(line: 170, column: 8, scope: !1203)
!1209 = !DILocation(line: 172, column: 3, scope: !1203)
!1210 = !DILocation(line: 172, column: 23, scope: !1203)
!1211 = !DILocation(line: 172, column: 30, scope: !1203)
!1212 = !DILocation(line: 172, column: 10, scope: !1203)
!1213 = !DILocation(line: 172, column: 35, scope: !1203)
!1214 = distinct !{!1214, !1209, !1215, !948}
!1215 = !DILocation(line: 173, column: 15, scope: !1203)
!1216 = !DILocation(line: 174, column: 1, scope: !1203)
!1217 = distinct !DISubprogram(name: "GetDataBlock", scope: !1, file: !1, line: 151, type: !1218, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !615)
!1218 = !DISubroutineType(types: !1219)
!1219 = !{!229, !190, !308}
!1220 = !DILocalVariable(name: "sinfo", arg: 1, scope: !1217, file: !1, line: 151, type: !190)
!1221 = !DILocation(line: 151, column: 30, scope: !1217)
!1222 = !DILocalVariable(name: "buf", arg: 2, scope: !1217, file: !1, line: 151, type: !308)
!1223 = !DILocation(line: 151, column: 43, scope: !1217)
!1224 = !DILocalVariable(name: "count", scope: !1217, file: !1, line: 155, type: !229)
!1225 = !DILocation(line: 155, column: 7, scope: !1217)
!1226 = !DILocation(line: 157, column: 20, scope: !1217)
!1227 = !DILocation(line: 157, column: 11, scope: !1217)
!1228 = !DILocation(line: 157, column: 9, scope: !1217)
!1229 = !DILocation(line: 158, column: 7, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1217, file: !1, line: 158, column: 7)
!1231 = !DILocation(line: 158, column: 13, scope: !1230)
!1232 = !DILocation(line: 159, column: 11, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !1234, file: !1, line: 159, column: 9)
!1234 = distinct !DILexicalBlock(scope: !1230, file: !1, line: 158, column: 18)
!1235 = !DILocation(line: 159, column: 9, scope: !1233)
!1236 = !DILocation(line: 160, column: 7, scope: !1233)
!1237 = !DILocation(line: 161, column: 3, scope: !1234)
!1238 = !DILocation(line: 162, column: 10, scope: !1217)
!1239 = !DILocation(line: 162, column: 3, scope: !1217)
!1240 = distinct !DISubprogram(name: "ReInitLZW", scope: !1, file: !1, line: 178, type: !971, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !615)
!1241 = !DILocalVariable(name: "sinfo", arg: 1, scope: !1240, file: !1, line: 178, type: !190)
!1242 = !DILocation(line: 178, column: 27, scope: !1240)
!1243 = !DILocation(line: 181, column: 22, scope: !1240)
!1244 = !DILocation(line: 181, column: 29, scope: !1240)
!1245 = !DILocation(line: 181, column: 45, scope: !1240)
!1246 = !DILocation(line: 181, column: 3, scope: !1240)
!1247 = !DILocation(line: 181, column: 10, scope: !1240)
!1248 = !DILocation(line: 181, column: 20, scope: !1240)
!1249 = !DILocation(line: 182, column: 23, scope: !1240)
!1250 = !DILocation(line: 182, column: 30, scope: !1240)
!1251 = !DILocation(line: 182, column: 41, scope: !1240)
!1252 = !DILocation(line: 182, column: 3, scope: !1240)
!1253 = !DILocation(line: 182, column: 10, scope: !1240)
!1254 = !DILocation(line: 182, column: 21, scope: !1240)
!1255 = !DILocation(line: 183, column: 21, scope: !1240)
!1256 = !DILocation(line: 183, column: 28, scope: !1240)
!1257 = !DILocation(line: 183, column: 39, scope: !1240)
!1258 = !DILocation(line: 183, column: 3, scope: !1240)
!1259 = !DILocation(line: 183, column: 10, scope: !1240)
!1260 = !DILocation(line: 183, column: 19, scope: !1240)
!1261 = !DILocation(line: 184, column: 15, scope: !1240)
!1262 = !DILocation(line: 184, column: 22, scope: !1240)
!1263 = !DILocation(line: 184, column: 3, scope: !1240)
!1264 = !DILocation(line: 184, column: 10, scope: !1240)
!1265 = !DILocation(line: 184, column: 13, scope: !1240)
!1266 = !DILocation(line: 185, column: 1, scope: !1240)
!1267 = distinct !DISubprogram(name: "LZWReadByte", scope: !1, file: !1, line: 262, type: !951, scopeLine: 264, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !615)
!1268 = !DILocalVariable(name: "sinfo", arg: 1, scope: !1267, file: !1, line: 262, type: !190)
!1269 = !DILocation(line: 262, column: 29, scope: !1267)
!1270 = !DILocalVariable(name: "code", scope: !1267, file: !1, line: 265, type: !229)
!1271 = !DILocation(line: 265, column: 16, scope: !1267)
!1272 = !DILocalVariable(name: "incode", scope: !1267, file: !1, line: 266, type: !229)
!1273 = !DILocation(line: 266, column: 7, scope: !1267)
!1274 = !DILocation(line: 270, column: 7, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1267, file: !1, line: 270, column: 7)
!1276 = !DILocation(line: 270, column: 14, scope: !1275)
!1277 = !DILocation(line: 271, column: 5, scope: !1278)
!1278 = distinct !DILexicalBlock(scope: !1275, file: !1, line: 270, column: 26)
!1279 = !DILocation(line: 271, column: 12, scope: !1278)
!1280 = !DILocation(line: 271, column: 23, scope: !1278)
!1281 = !DILocation(line: 272, column: 12, scope: !1278)
!1282 = !DILocation(line: 272, column: 19, scope: !1278)
!1283 = !DILocation(line: 272, column: 10, scope: !1278)
!1284 = !DILocation(line: 273, column: 3, scope: !1278)
!1285 = !DILocation(line: 276, column: 9, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1287, file: !1, line: 276, column: 9)
!1287 = distinct !DILexicalBlock(scope: !1275, file: !1, line: 273, column: 10)
!1288 = !DILocation(line: 276, column: 16, scope: !1286)
!1289 = !DILocation(line: 276, column: 21, scope: !1286)
!1290 = !DILocation(line: 276, column: 28, scope: !1286)
!1291 = !DILocation(line: 276, column: 19, scope: !1286)
!1292 = !DILocation(line: 277, column: 25, scope: !1286)
!1293 = !DILocation(line: 277, column: 32, scope: !1286)
!1294 = !DILocation(line: 277, column: 22, scope: !1286)
!1295 = !DILocation(line: 277, column: 20, scope: !1286)
!1296 = !DILocation(line: 277, column: 14, scope: !1286)
!1297 = !DILocation(line: 277, column: 7, scope: !1286)
!1298 = !DILocation(line: 280, column: 20, scope: !1287)
!1299 = !DILocation(line: 280, column: 12, scope: !1287)
!1300 = !DILocation(line: 280, column: 10, scope: !1287)
!1301 = !DILocation(line: 284, column: 7, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1267, file: !1, line: 284, column: 7)
!1303 = !DILocation(line: 284, column: 15, scope: !1302)
!1304 = !DILocation(line: 284, column: 22, scope: !1302)
!1305 = !DILocation(line: 284, column: 12, scope: !1302)
!1306 = !DILocation(line: 287, column: 15, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1302, file: !1, line: 284, column: 34)
!1308 = !DILocation(line: 287, column: 5, scope: !1307)
!1309 = !DILocation(line: 288, column: 5, scope: !1307)
!1310 = !DILocation(line: 289, column: 22, scope: !1311)
!1311 = distinct !DILexicalBlock(scope: !1307, file: !1, line: 288, column: 8)
!1312 = !DILocation(line: 289, column: 14, scope: !1311)
!1313 = !DILocation(line: 289, column: 12, scope: !1311)
!1314 = !DILocation(line: 290, column: 5, scope: !1311)
!1315 = !DILocation(line: 290, column: 14, scope: !1307)
!1316 = !DILocation(line: 290, column: 22, scope: !1307)
!1317 = !DILocation(line: 290, column: 29, scope: !1307)
!1318 = !DILocation(line: 290, column: 19, scope: !1307)
!1319 = distinct !{!1319, !1309, !1320, !948}
!1320 = !DILocation(line: 290, column: 39, scope: !1307)
!1321 = !DILocation(line: 291, column: 9, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1307, file: !1, line: 291, column: 9)
!1323 = !DILocation(line: 291, column: 16, scope: !1322)
!1324 = !DILocation(line: 291, column: 23, scope: !1322)
!1325 = !DILocation(line: 291, column: 14, scope: !1322)
!1326 = !DILocation(line: 292, column: 7, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1322, file: !1, line: 291, column: 35)
!1328 = !DILocation(line: 293, column: 12, scope: !1327)
!1329 = !DILocation(line: 294, column: 5, scope: !1327)
!1330 = !DILocation(line: 296, column: 41, scope: !1307)
!1331 = !DILocation(line: 296, column: 24, scope: !1307)
!1332 = !DILocation(line: 296, column: 31, scope: !1307)
!1333 = !DILocation(line: 296, column: 39, scope: !1307)
!1334 = !DILocation(line: 296, column: 5, scope: !1307)
!1335 = !DILocation(line: 296, column: 12, scope: !1307)
!1336 = !DILocation(line: 296, column: 22, scope: !1307)
!1337 = !DILocation(line: 297, column: 12, scope: !1307)
!1338 = !DILocation(line: 297, column: 5, scope: !1307)
!1339 = !DILocation(line: 300, column: 7, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1267, file: !1, line: 300, column: 7)
!1341 = !DILocation(line: 300, column: 15, scope: !1340)
!1342 = !DILocation(line: 300, column: 22, scope: !1340)
!1343 = !DILocation(line: 300, column: 12, scope: !1340)
!1344 = !DILocation(line: 302, column: 11, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1346, file: !1, line: 302, column: 9)
!1346 = distinct !DILexicalBlock(scope: !1340, file: !1, line: 300, column: 32)
!1347 = !DILocation(line: 302, column: 18, scope: !1345)
!1348 = !DILocation(line: 302, column: 9, scope: !1345)
!1349 = !DILocation(line: 303, column: 22, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !1345, file: !1, line: 302, column: 33)
!1351 = !DILocation(line: 303, column: 7, scope: !1350)
!1352 = !DILocation(line: 304, column: 7, scope: !1350)
!1353 = !DILocation(line: 304, column: 14, scope: !1350)
!1354 = !DILocation(line: 304, column: 28, scope: !1350)
!1355 = !DILocation(line: 305, column: 5, scope: !1350)
!1356 = !DILocation(line: 307, column: 5, scope: !1346)
!1357 = !DILocation(line: 309, column: 5, scope: !1346)
!1358 = !DILocation(line: 313, column: 12, scope: !1267)
!1359 = !DILocation(line: 313, column: 10, scope: !1267)
!1360 = !DILocation(line: 315, column: 7, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1267, file: !1, line: 315, column: 7)
!1362 = !DILocation(line: 315, column: 15, scope: !1361)
!1363 = !DILocation(line: 315, column: 22, scope: !1361)
!1364 = !DILocation(line: 315, column: 12, scope: !1361)
!1365 = !DILocation(line: 317, column: 9, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1367, file: !1, line: 317, column: 9)
!1367 = distinct !DILexicalBlock(scope: !1361, file: !1, line: 315, column: 32)
!1368 = !DILocation(line: 317, column: 16, scope: !1366)
!1369 = !DILocation(line: 317, column: 23, scope: !1366)
!1370 = !DILocation(line: 317, column: 14, scope: !1366)
!1371 = !DILocation(line: 318, column: 7, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1366, file: !1, line: 317, column: 33)
!1373 = !DILocation(line: 319, column: 14, scope: !1372)
!1374 = !DILocation(line: 320, column: 5, scope: !1372)
!1375 = !DILocation(line: 322, column: 30, scope: !1367)
!1376 = !DILocation(line: 322, column: 37, scope: !1367)
!1377 = !DILocation(line: 322, column: 22, scope: !1367)
!1378 = !DILocation(line: 322, column: 7, scope: !1367)
!1379 = !DILocation(line: 322, column: 14, scope: !1367)
!1380 = !DILocation(line: 322, column: 16, scope: !1367)
!1381 = !DILocation(line: 322, column: 20, scope: !1367)
!1382 = !DILocation(line: 323, column: 12, scope: !1367)
!1383 = !DILocation(line: 323, column: 19, scope: !1367)
!1384 = !DILocation(line: 323, column: 10, scope: !1367)
!1385 = !DILocation(line: 324, column: 3, scope: !1367)
!1386 = !DILocation(line: 327, column: 3, scope: !1267)
!1387 = !DILocation(line: 327, column: 10, scope: !1267)
!1388 = !DILocation(line: 327, column: 18, scope: !1267)
!1389 = !DILocation(line: 327, column: 25, scope: !1267)
!1390 = !DILocation(line: 327, column: 15, scope: !1267)
!1391 = !DILocation(line: 328, column: 22, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !1267, file: !1, line: 327, column: 37)
!1393 = !DILocation(line: 328, column: 29, scope: !1392)
!1394 = !DILocation(line: 328, column: 41, scope: !1392)
!1395 = !DILocation(line: 328, column: 7, scope: !1392)
!1396 = !DILocation(line: 328, column: 14, scope: !1392)
!1397 = !DILocation(line: 328, column: 16, scope: !1392)
!1398 = !DILocation(line: 328, column: 20, scope: !1392)
!1399 = !DILocation(line: 329, column: 12, scope: !1392)
!1400 = !DILocation(line: 329, column: 19, scope: !1392)
!1401 = !DILocation(line: 329, column: 31, scope: !1392)
!1402 = !DILocation(line: 329, column: 10, scope: !1392)
!1403 = distinct !{!1403, !1386, !1404, !948}
!1404 = !DILocation(line: 330, column: 3, scope: !1267)
!1405 = !DILocation(line: 332, column: 22, scope: !1267)
!1406 = !DILocation(line: 332, column: 3, scope: !1267)
!1407 = !DILocation(line: 332, column: 10, scope: !1267)
!1408 = !DILocation(line: 332, column: 20, scope: !1267)
!1409 = !DILocation(line: 335, column: 15, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1267, file: !1, line: 335, column: 7)
!1411 = !DILocation(line: 335, column: 22, scope: !1410)
!1412 = !DILocation(line: 335, column: 13, scope: !1410)
!1413 = !DILocation(line: 335, column: 32, scope: !1410)
!1414 = !DILocation(line: 337, column: 32, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1410, file: !1, line: 335, column: 50)
!1416 = !DILocation(line: 337, column: 39, scope: !1415)
!1417 = !DILocation(line: 337, column: 5, scope: !1415)
!1418 = !DILocation(line: 337, column: 12, scope: !1415)
!1419 = !DILocation(line: 337, column: 24, scope: !1415)
!1420 = !DILocation(line: 337, column: 30, scope: !1415)
!1421 = !DILocation(line: 338, column: 40, scope: !1415)
!1422 = !DILocation(line: 338, column: 47, scope: !1415)
!1423 = !DILocation(line: 338, column: 32, scope: !1415)
!1424 = !DILocation(line: 338, column: 5, scope: !1415)
!1425 = !DILocation(line: 338, column: 12, scope: !1415)
!1426 = !DILocation(line: 338, column: 24, scope: !1415)
!1427 = !DILocation(line: 338, column: 30, scope: !1415)
!1428 = !DILocation(line: 339, column: 5, scope: !1415)
!1429 = !DILocation(line: 339, column: 12, scope: !1415)
!1430 = !DILocation(line: 339, column: 20, scope: !1415)
!1431 = !DILocation(line: 341, column: 10, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1415, file: !1, line: 341, column: 9)
!1433 = !DILocation(line: 341, column: 17, scope: !1432)
!1434 = !DILocation(line: 341, column: 29, scope: !1432)
!1435 = !DILocation(line: 341, column: 36, scope: !1432)
!1436 = !DILocation(line: 341, column: 26, scope: !1432)
!1437 = !DILocation(line: 341, column: 48, scope: !1432)
!1438 = !DILocation(line: 342, column: 3, scope: !1432)
!1439 = !DILocation(line: 342, column: 10, scope: !1432)
!1440 = !DILocation(line: 342, column: 20, scope: !1432)
!1441 = !DILocation(line: 343, column: 7, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !1432, file: !1, line: 342, column: 37)
!1443 = !DILocation(line: 343, column: 14, scope: !1442)
!1444 = !DILocation(line: 343, column: 23, scope: !1442)
!1445 = !DILocation(line: 344, column: 7, scope: !1442)
!1446 = !DILocation(line: 344, column: 14, scope: !1442)
!1447 = !DILocation(line: 344, column: 25, scope: !1442)
!1448 = !DILocation(line: 345, column: 5, scope: !1442)
!1449 = !DILocation(line: 346, column: 3, scope: !1415)
!1450 = !DILocation(line: 348, column: 20, scope: !1267)
!1451 = !DILocation(line: 348, column: 3, scope: !1267)
!1452 = !DILocation(line: 348, column: 10, scope: !1267)
!1453 = !DILocation(line: 348, column: 18, scope: !1267)
!1454 = !DILocation(line: 349, column: 10, scope: !1267)
!1455 = !DILocation(line: 349, column: 17, scope: !1267)
!1456 = !DILocation(line: 349, column: 3, scope: !1267)
!1457 = !DILocation(line: 350, column: 1, scope: !1267)
!1458 = distinct !DISubprogram(name: "get_interlaced_row", scope: !1, file: !1, line: 608, type: !505, scopeLine: 609, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !615)
!1459 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1458, file: !1, line: 608, type: !203)
!1460 = !DILocation(line: 608, column: 36, scope: !1458)
!1461 = !DILocalVariable(name: "sinfo", arg: 2, scope: !1458, file: !1, line: 608, type: !501)
!1462 = !DILocation(line: 608, column: 60, scope: !1458)
!1463 = !DILocalVariable(name: "source", scope: !1458, file: !1, line: 610, type: !190)
!1464 = !DILocation(line: 610, column: 18, scope: !1458)
!1465 = !DILocation(line: 610, column: 44, scope: !1458)
!1466 = !DILocalVariable(name: "image_ptr", scope: !1458, file: !1, line: 611, type: !238)
!1467 = !DILocation(line: 611, column: 14, scope: !1458)
!1468 = !DILocalVariable(name: "c", scope: !1458, file: !1, line: 612, type: !229)
!1469 = !DILocation(line: 612, column: 16, scope: !1458)
!1470 = !DILocalVariable(name: "sptr", scope: !1458, file: !1, line: 613, type: !240)
!1471 = !DILocation(line: 613, column: 21, scope: !1458)
!1472 = !DILocalVariable(name: "ptr", scope: !1458, file: !1, line: 613, type: !240)
!1473 = !DILocation(line: 613, column: 27, scope: !1458)
!1474 = !DILocalVariable(name: "col", scope: !1458, file: !1, line: 614, type: !245)
!1475 = !DILocation(line: 614, column: 23, scope: !1458)
!1476 = !DILocalVariable(name: "colormap", scope: !1458, file: !1, line: 615, type: !238)
!1477 = !DILocation(line: 615, column: 23, scope: !1458)
!1478 = !DILocation(line: 615, column: 34, scope: !1458)
!1479 = !DILocation(line: 615, column: 42, scope: !1458)
!1480 = !DILocalVariable(name: "irow", scope: !1458, file: !1, line: 616, type: !245)
!1481 = !DILocation(line: 616, column: 14, scope: !1458)
!1482 = !DILocation(line: 619, column: 18, scope: !1458)
!1483 = !DILocation(line: 619, column: 26, scope: !1458)
!1484 = !DILocation(line: 619, column: 41, scope: !1458)
!1485 = !DILocation(line: 619, column: 3, scope: !1458)
!1486 = !DILocation(line: 621, column: 12, scope: !1487)
!1487 = distinct !DILexicalBlock(scope: !1458, file: !1, line: 619, column: 47)
!1488 = !DILocation(line: 621, column: 20, scope: !1487)
!1489 = !DILocation(line: 621, column: 35, scope: !1487)
!1490 = !DILocation(line: 621, column: 10, scope: !1487)
!1491 = !DILocation(line: 622, column: 5, scope: !1487)
!1492 = !DILocation(line: 624, column: 13, scope: !1487)
!1493 = !DILocation(line: 624, column: 21, scope: !1487)
!1494 = !DILocation(line: 624, column: 36, scope: !1487)
!1495 = !DILocation(line: 624, column: 44, scope: !1487)
!1496 = !DILocation(line: 624, column: 52, scope: !1487)
!1497 = !DILocation(line: 624, column: 42, scope: !1487)
!1498 = !DILocation(line: 624, column: 10, scope: !1487)
!1499 = !DILocation(line: 625, column: 5, scope: !1487)
!1500 = !DILocation(line: 628, column: 13, scope: !1487)
!1501 = !DILocation(line: 628, column: 21, scope: !1487)
!1502 = !DILocation(line: 628, column: 36, scope: !1487)
!1503 = !DILocation(line: 628, column: 44, scope: !1487)
!1504 = !DILocation(line: 628, column: 52, scope: !1487)
!1505 = !DILocation(line: 628, column: 42, scope: !1487)
!1506 = !DILocation(line: 628, column: 10, scope: !1487)
!1507 = !DILocation(line: 629, column: 5, scope: !1487)
!1508 = !DILocation(line: 631, column: 13, scope: !1487)
!1509 = !DILocation(line: 631, column: 21, scope: !1487)
!1510 = !DILocation(line: 631, column: 36, scope: !1487)
!1511 = !DILocation(line: 631, column: 44, scope: !1487)
!1512 = !DILocation(line: 631, column: 52, scope: !1487)
!1513 = !DILocation(line: 631, column: 42, scope: !1487)
!1514 = !DILocation(line: 631, column: 10, scope: !1487)
!1515 = !DILocation(line: 632, column: 5, scope: !1487)
!1516 = !DILocation(line: 634, column: 17, scope: !1458)
!1517 = !DILocation(line: 634, column: 24, scope: !1458)
!1518 = !DILocation(line: 634, column: 29, scope: !1458)
!1519 = !DILocation(line: 635, column: 21, scope: !1458)
!1520 = !DILocation(line: 635, column: 28, scope: !1458)
!1521 = !DILocation(line: 635, column: 36, scope: !1458)
!1522 = !DILocation(line: 636, column: 6, scope: !1458)
!1523 = !DILocation(line: 634, column: 15, scope: !1458)
!1524 = !DILocation(line: 634, column: 13, scope: !1458)
!1525 = !DILocation(line: 638, column: 10, scope: !1458)
!1526 = !DILocation(line: 638, column: 8, scope: !1458)
!1527 = !DILocation(line: 639, column: 9, scope: !1458)
!1528 = !DILocation(line: 639, column: 17, scope: !1458)
!1529 = !DILocation(line: 639, column: 21, scope: !1458)
!1530 = !DILocation(line: 639, column: 7, scope: !1458)
!1531 = !DILocation(line: 640, column: 14, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1458, file: !1, line: 640, column: 3)
!1533 = !DILocation(line: 640, column: 21, scope: !1532)
!1534 = !DILocation(line: 640, column: 12, scope: !1532)
!1535 = !DILocation(line: 640, column: 8, scope: !1532)
!1536 = !DILocation(line: 640, column: 34, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1532, file: !1, line: 640, column: 3)
!1538 = !DILocation(line: 640, column: 38, scope: !1537)
!1539 = !DILocation(line: 640, column: 3, scope: !1532)
!1540 = !DILocation(line: 641, column: 9, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1537, file: !1, line: 640, column: 50)
!1542 = !DILocation(line: 641, column: 7, scope: !1541)
!1543 = !DILocation(line: 642, column: 14, scope: !1541)
!1544 = !DILocation(line: 642, column: 31, scope: !1541)
!1545 = !DILocation(line: 642, column: 9, scope: !1541)
!1546 = !DILocation(line: 642, column: 12, scope: !1541)
!1547 = !DILocation(line: 643, column: 14, scope: !1541)
!1548 = !DILocation(line: 643, column: 33, scope: !1541)
!1549 = !DILocation(line: 643, column: 9, scope: !1541)
!1550 = !DILocation(line: 643, column: 12, scope: !1541)
!1551 = !DILocation(line: 644, column: 14, scope: !1541)
!1552 = !DILocation(line: 644, column: 32, scope: !1541)
!1553 = !DILocation(line: 644, column: 9, scope: !1541)
!1554 = !DILocation(line: 644, column: 12, scope: !1541)
!1555 = !DILocation(line: 645, column: 3, scope: !1541)
!1556 = !DILocation(line: 640, column: 46, scope: !1537)
!1557 = !DILocation(line: 640, column: 3, scope: !1537)
!1558 = distinct !{!1558, !1539, !1559, !948}
!1559 = !DILocation(line: 645, column: 3, scope: !1532)
!1560 = !DILocation(line: 646, column: 3, scope: !1458)
!1561 = !DILocation(line: 646, column: 11, scope: !1458)
!1562 = !DILocation(line: 646, column: 25, scope: !1458)
!1563 = !DILocation(line: 647, column: 3, scope: !1458)
!1564 = distinct !DISubprogram(name: "GetCode", scope: !1, file: !1, line: 208, type: !951, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !615)
!1565 = !DILocalVariable(name: "sinfo", arg: 1, scope: !1564, file: !1, line: 208, type: !190)
!1566 = !DILocation(line: 208, column: 25, scope: !1564)
!1567 = !DILocalVariable(name: "accum", scope: !1564, file: !1, line: 212, type: !1568)
!1568 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT32", file: !243, line: 161, baseType: !290)
!1569 = !DILocation(line: 212, column: 18, scope: !1564)
!1570 = !DILocalVariable(name: "offs", scope: !1564, file: !1, line: 213, type: !229)
!1571 = !DILocation(line: 213, column: 7, scope: !1564)
!1572 = !DILocalVariable(name: "ret", scope: !1564, file: !1, line: 213, type: !229)
!1573 = !DILocation(line: 213, column: 13, scope: !1564)
!1574 = !DILocalVariable(name: "count", scope: !1564, file: !1, line: 213, type: !229)
!1575 = !DILocation(line: 213, column: 18, scope: !1564)
!1576 = !DILocation(line: 215, column: 3, scope: !1564)
!1577 = !DILocation(line: 215, column: 12, scope: !1564)
!1578 = !DILocation(line: 215, column: 19, scope: !1564)
!1579 = !DILocation(line: 215, column: 29, scope: !1564)
!1580 = !DILocation(line: 215, column: 36, scope: !1564)
!1581 = !DILocation(line: 215, column: 27, scope: !1564)
!1582 = !DILocation(line: 215, column: 49, scope: !1564)
!1583 = !DILocation(line: 215, column: 56, scope: !1564)
!1584 = !DILocation(line: 215, column: 47, scope: !1564)
!1585 = !DILocation(line: 217, column: 9, scope: !1586)
!1586 = distinct !DILexicalBlock(scope: !1587, file: !1, line: 217, column: 9)
!1587 = distinct !DILexicalBlock(scope: !1564, file: !1, line: 215, column: 66)
!1588 = !DILocation(line: 217, column: 16, scope: !1586)
!1589 = !DILocation(line: 218, column: 7, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1586, file: !1, line: 217, column: 31)
!1591 = !DILocation(line: 219, column: 14, scope: !1590)
!1592 = !DILocation(line: 219, column: 21, scope: !1590)
!1593 = !DILocation(line: 219, column: 7, scope: !1590)
!1594 = !DILocation(line: 222, column: 26, scope: !1587)
!1595 = !DILocation(line: 222, column: 33, scope: !1587)
!1596 = !DILocation(line: 222, column: 42, scope: !1587)
!1597 = !DILocation(line: 222, column: 49, scope: !1587)
!1598 = !DILocation(line: 222, column: 58, scope: !1587)
!1599 = !DILocation(line: 222, column: 5, scope: !1587)
!1600 = !DILocation(line: 222, column: 12, scope: !1587)
!1601 = !DILocation(line: 222, column: 24, scope: !1587)
!1602 = !DILocation(line: 223, column: 26, scope: !1587)
!1603 = !DILocation(line: 223, column: 33, scope: !1587)
!1604 = !DILocation(line: 223, column: 42, scope: !1587)
!1605 = !DILocation(line: 223, column: 49, scope: !1587)
!1606 = !DILocation(line: 223, column: 58, scope: !1587)
!1607 = !DILocation(line: 223, column: 5, scope: !1587)
!1608 = !DILocation(line: 223, column: 12, scope: !1587)
!1609 = !DILocation(line: 223, column: 24, scope: !1587)
!1610 = !DILocation(line: 225, column: 31, scope: !1611)
!1611 = distinct !DILexicalBlock(scope: !1587, file: !1, line: 225, column: 9)
!1612 = !DILocation(line: 225, column: 39, scope: !1611)
!1613 = !DILocation(line: 225, column: 46, scope: !1611)
!1614 = !DILocation(line: 225, column: 18, scope: !1611)
!1615 = !DILocation(line: 225, column: 16, scope: !1611)
!1616 = !DILocation(line: 225, column: 60, scope: !1611)
!1617 = !DILocation(line: 226, column: 7, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1611, file: !1, line: 225, column: 66)
!1619 = !DILocation(line: 226, column: 14, scope: !1618)
!1620 = !DILocation(line: 226, column: 28, scope: !1618)
!1621 = !DILocation(line: 227, column: 7, scope: !1618)
!1622 = !DILocation(line: 228, column: 14, scope: !1618)
!1623 = !DILocation(line: 228, column: 21, scope: !1618)
!1624 = !DILocation(line: 228, column: 7, scope: !1618)
!1625 = !DILocation(line: 231, column: 23, scope: !1587)
!1626 = !DILocation(line: 231, column: 30, scope: !1587)
!1627 = !DILocation(line: 231, column: 40, scope: !1587)
!1628 = !DILocation(line: 231, column: 47, scope: !1587)
!1629 = !DILocation(line: 231, column: 38, scope: !1587)
!1630 = !DILocation(line: 231, column: 57, scope: !1587)
!1631 = !DILocation(line: 231, column: 5, scope: !1587)
!1632 = !DILocation(line: 231, column: 12, scope: !1587)
!1633 = !DILocation(line: 231, column: 20, scope: !1587)
!1634 = !DILocation(line: 232, column: 28, scope: !1587)
!1635 = !DILocation(line: 232, column: 26, scope: !1587)
!1636 = !DILocation(line: 232, column: 5, scope: !1587)
!1637 = !DILocation(line: 232, column: 12, scope: !1587)
!1638 = !DILocation(line: 232, column: 22, scope: !1587)
!1639 = !DILocation(line: 233, column: 23, scope: !1587)
!1640 = !DILocation(line: 233, column: 30, scope: !1587)
!1641 = !DILocation(line: 233, column: 40, scope: !1587)
!1642 = !DILocation(line: 233, column: 5, scope: !1587)
!1643 = !DILocation(line: 233, column: 12, scope: !1587)
!1644 = !DILocation(line: 233, column: 21, scope: !1587)
!1645 = distinct !{!1645, !1576, !1646, !948}
!1646 = !DILocation(line: 234, column: 3, scope: !1564)
!1647 = !DILocation(line: 237, column: 10, scope: !1564)
!1648 = !DILocation(line: 237, column: 17, scope: !1564)
!1649 = !DILocation(line: 237, column: 25, scope: !1564)
!1650 = !DILocation(line: 237, column: 8, scope: !1564)
!1651 = !DILocation(line: 245, column: 11, scope: !1564)
!1652 = !DILocation(line: 245, column: 18, scope: !1564)
!1653 = !DILocation(line: 245, column: 27, scope: !1564)
!1654 = !DILocation(line: 245, column: 31, scope: !1564)
!1655 = !DILocation(line: 245, column: 35, scope: !1564)
!1656 = !DILocation(line: 245, column: 9, scope: !1564)
!1657 = !DILocation(line: 246, column: 9, scope: !1564)
!1658 = !DILocation(line: 247, column: 12, scope: !1564)
!1659 = !DILocation(line: 247, column: 19, scope: !1564)
!1660 = !DILocation(line: 247, column: 28, scope: !1564)
!1661 = !DILocation(line: 247, column: 32, scope: !1564)
!1662 = !DILocation(line: 247, column: 36, scope: !1564)
!1663 = !DILocation(line: 247, column: 9, scope: !1564)
!1664 = !DILocation(line: 248, column: 9, scope: !1564)
!1665 = !DILocation(line: 249, column: 12, scope: !1564)
!1666 = !DILocation(line: 249, column: 19, scope: !1564)
!1667 = !DILocation(line: 249, column: 28, scope: !1564)
!1668 = !DILocation(line: 249, column: 34, scope: !1564)
!1669 = !DILocation(line: 249, column: 9, scope: !1564)
!1670 = !DILocation(line: 253, column: 14, scope: !1564)
!1671 = !DILocation(line: 253, column: 21, scope: !1564)
!1672 = !DILocation(line: 253, column: 29, scope: !1564)
!1673 = !DILocation(line: 253, column: 9, scope: !1564)
!1674 = !DILocation(line: 254, column: 16, scope: !1564)
!1675 = !DILocation(line: 254, column: 10, scope: !1564)
!1676 = !DILocation(line: 254, column: 32, scope: !1564)
!1677 = !DILocation(line: 254, column: 39, scope: !1564)
!1678 = !DILocation(line: 254, column: 29, scope: !1564)
!1679 = !DILocation(line: 254, column: 50, scope: !1564)
!1680 = !DILocation(line: 254, column: 23, scope: !1564)
!1681 = !DILocation(line: 254, column: 7, scope: !1564)
!1682 = !DILocation(line: 256, column: 21, scope: !1564)
!1683 = !DILocation(line: 256, column: 28, scope: !1564)
!1684 = !DILocation(line: 256, column: 3, scope: !1564)
!1685 = !DILocation(line: 256, column: 10, scope: !1564)
!1686 = !DILocation(line: 256, column: 18, scope: !1564)
!1687 = !DILocation(line: 257, column: 10, scope: !1564)
!1688 = !DILocation(line: 257, column: 3, scope: !1564)
!1689 = !DILocation(line: 258, column: 1, scope: !1564)
