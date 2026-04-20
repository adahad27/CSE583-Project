; ModuleID = 'cBench/consumer_jpeg_c/src/rdbmp.c'
source_filename = "cBench/consumer_jpeg_c/src/rdbmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jpeg_compress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, double, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [16 x i8], [16 x i8], [16 x i8], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct._bmp_source_struct = type { %struct.cjpeg_source_struct, ptr, ptr, ptr, i32, i32, i32 }
%struct.cjpeg_source_struct = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.cdjpeg_progress_mgr = type { %struct.jpeg_progress_mgr, i32, i32, i32 }
%struct.jpeg_progress_mgr = type { ptr, i64, i64, i32, i32 }

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @jinit_read_bmp(ptr noundef %0) #0 !dbg !587 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !591, !DIExpression(), !592)
    #dbg_declare(ptr %3, !593, !DIExpression(), !594)
  %4 = load ptr, ptr %2, align 8, !dbg !595
  %5 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %4, i32 0, i32 1, !dbg !596
  %6 = load ptr, ptr %5, align 8, !dbg !596
  %7 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %6, i32 0, i32 0, !dbg !597
  %8 = load ptr, ptr %7, align 8, !dbg !597
  %9 = load ptr, ptr %2, align 8, !dbg !598
  %10 = call ptr %8(ptr noundef %9, i32 noundef 1, i64 noundef 88), !dbg !599
  store ptr %10, ptr %3, align 8, !dbg !600
  %11 = load ptr, ptr %2, align 8, !dbg !601
  %12 = load ptr, ptr %3, align 8, !dbg !602
  %13 = getelementptr inbounds nuw %struct._bmp_source_struct, ptr %12, i32 0, i32 1, !dbg !603
  store ptr %11, ptr %13, align 8, !dbg !604
  %14 = load ptr, ptr %3, align 8, !dbg !605
  %15 = getelementptr inbounds nuw %struct._bmp_source_struct, ptr %14, i32 0, i32 0, !dbg !606
  %16 = getelementptr inbounds nuw %struct.cjpeg_source_struct, ptr %15, i32 0, i32 0, !dbg !607
  store ptr @start_input_bmp, ptr %16, align 8, !dbg !608
  %17 = load ptr, ptr %3, align 8, !dbg !609
  %18 = getelementptr inbounds nuw %struct._bmp_source_struct, ptr %17, i32 0, i32 0, !dbg !610
  %19 = getelementptr inbounds nuw %struct.cjpeg_source_struct, ptr %18, i32 0, i32 2, !dbg !611
  store ptr @finish_input_bmp, ptr %19, align 8, !dbg !612
  %20 = load ptr, ptr %3, align 8, !dbg !613
  ret ptr %20, !dbg !614
}

; Function Attrs: noinline nounwind uwtable
define internal void @start_input_bmp(ptr noundef %0, ptr noundef %1) #0 !dbg !615 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca [14 x i8], align 1
  %7 = alloca [64 x i8], align 16
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !616, !DIExpression(), !617)
  store ptr %1, ptr %4, align 8
    #dbg_declare(ptr %4, !618, !DIExpression(), !619)
    #dbg_declare(ptr %5, !620, !DIExpression(), !621)
  %21 = load ptr, ptr %4, align 8, !dbg !622
  store ptr %21, ptr %5, align 8, !dbg !621
    #dbg_declare(ptr %6, !623, !DIExpression(), !628)
    #dbg_declare(ptr %7, !629, !DIExpression(), !631)
    #dbg_declare(ptr %8, !632, !DIExpression(), !633)
    #dbg_declare(ptr %9, !634, !DIExpression(), !635)
    #dbg_declare(ptr %10, !636, !DIExpression(), !637)
  store i64 0, ptr %10, align 8, !dbg !637
    #dbg_declare(ptr %11, !638, !DIExpression(), !639)
  store i64 0, ptr %11, align 8, !dbg !639
    #dbg_declare(ptr %12, !640, !DIExpression(), !641)
    #dbg_declare(ptr %13, !642, !DIExpression(), !643)
    #dbg_declare(ptr %14, !644, !DIExpression(), !645)
    #dbg_declare(ptr %15, !646, !DIExpression(), !647)
    #dbg_declare(ptr %16, !648, !DIExpression(), !649)
  store i64 0, ptr %16, align 8, !dbg !649
    #dbg_declare(ptr %17, !650, !DIExpression(), !651)
  store i32 0, ptr %17, align 4, !dbg !651
    #dbg_declare(ptr %18, !652, !DIExpression(), !653)
    #dbg_declare(ptr %19, !654, !DIExpression(), !655)
  %22 = getelementptr inbounds [14 x i8], ptr %6, i64 0, i64 0, !dbg !656
  %23 = load ptr, ptr %5, align 8, !dbg !656
  %24 = getelementptr inbounds nuw %struct._bmp_source_struct, ptr %23, i32 0, i32 0, !dbg !656
  %25 = getelementptr inbounds nuw %struct.cjpeg_source_struct, ptr %24, i32 0, i32 3, !dbg !656
  %26 = load ptr, ptr %25, align 8, !dbg !656
  %27 = call i64 @fread(ptr noundef %22, i64 noundef 1, i64 noundef 14, ptr noundef %26), !dbg !656
  %28 = icmp eq i64 %27, 14, !dbg !656
  br i1 %28, label %40, label %29, !dbg !658

29:                                               ; preds = %2
  %30 = load ptr, ptr %3, align 8, !dbg !659
  %31 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %30, i32 0, i32 0, !dbg !659
  %32 = load ptr, ptr %31, align 8, !dbg !659
  %33 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %32, i32 0, i32 5, !dbg !659
  store i32 42, ptr %33, align 8, !dbg !659
  %34 = load ptr, ptr %3, align 8, !dbg !659
  %35 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %34, i32 0, i32 0, !dbg !659
  %36 = load ptr, ptr %35, align 8, !dbg !659
  %37 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %36, i32 0, i32 0, !dbg !659
  %38 = load ptr, ptr %37, align 8, !dbg !659
  %39 = load ptr, ptr %3, align 8, !dbg !659
  call void %38(ptr noundef %39), !dbg !659
  br label %40, !dbg !659

40:                                               ; preds = %29, %2
  %41 = getelementptr inbounds [14 x i8], ptr %6, i64 0, i64 0, !dbg !660
  %42 = load i8, ptr %41, align 1, !dbg !660
  %43 = zext i8 %42 to i32, !dbg !660
  %44 = getelementptr inbounds [14 x i8], ptr %6, i64 0, i64 1, !dbg !660
  %45 = load i8, ptr %44, align 1, !dbg !660
  %46 = zext i8 %45 to i32, !dbg !660
  %47 = shl i32 %46, 8, !dbg !660
  %48 = add i32 %43, %47, !dbg !660
  %49 = icmp ne i32 %48, 19778, !dbg !662
  br i1 %49, label %50, label %61, !dbg !662

50:                                               ; preds = %40
  %51 = load ptr, ptr %3, align 8, !dbg !663
  %52 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %51, i32 0, i32 0, !dbg !663
  %53 = load ptr, ptr %52, align 8, !dbg !663
  %54 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %53, i32 0, i32 5, !dbg !663
  store i32 1007, ptr %54, align 8, !dbg !663
  %55 = load ptr, ptr %3, align 8, !dbg !663
  %56 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %55, i32 0, i32 0, !dbg !663
  %57 = load ptr, ptr %56, align 8, !dbg !663
  %58 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %57, i32 0, i32 0, !dbg !663
  %59 = load ptr, ptr %58, align 8, !dbg !663
  %60 = load ptr, ptr %3, align 8, !dbg !663
  call void %59(ptr noundef %60), !dbg !663
  br label %61, !dbg !663

61:                                               ; preds = %50, %40
  %62 = getelementptr inbounds [14 x i8], ptr %6, i64 0, i64 10, !dbg !664
  %63 = load i8, ptr %62, align 1, !dbg !664
  %64 = zext i8 %63 to i32, !dbg !664
  %65 = sext i32 %64 to i64, !dbg !664
  %66 = getelementptr inbounds [14 x i8], ptr %6, i64 0, i64 11, !dbg !664
  %67 = load i8, ptr %66, align 1, !dbg !664
  %68 = zext i8 %67 to i32, !dbg !664
  %69 = sext i32 %68 to i64, !dbg !664
  %70 = shl i64 %69, 8, !dbg !664
  %71 = add nsw i64 %65, %70, !dbg !664
  %72 = getelementptr inbounds [14 x i8], ptr %6, i64 0, i64 12, !dbg !664
  %73 = load i8, ptr %72, align 1, !dbg !664
  %74 = zext i8 %73 to i32, !dbg !664
  %75 = sext i32 %74 to i64, !dbg !664
  %76 = shl i64 %75, 16, !dbg !664
  %77 = add nsw i64 %71, %76, !dbg !664
  %78 = getelementptr inbounds [14 x i8], ptr %6, i64 0, i64 13, !dbg !664
  %79 = load i8, ptr %78, align 1, !dbg !664
  %80 = zext i8 %79 to i32, !dbg !664
  %81 = sext i32 %80 to i64, !dbg !664
  %82 = shl i64 %81, 24, !dbg !664
  %83 = add nsw i64 %77, %82, !dbg !664
  store i64 %83, ptr %8, align 8, !dbg !665
  %84 = getelementptr inbounds [64 x i8], ptr %7, i64 0, i64 0, !dbg !666
  %85 = load ptr, ptr %5, align 8, !dbg !666
  %86 = getelementptr inbounds nuw %struct._bmp_source_struct, ptr %85, i32 0, i32 0, !dbg !666
  %87 = getelementptr inbounds nuw %struct.cjpeg_source_struct, ptr %86, i32 0, i32 3, !dbg !666
  %88 = load ptr, ptr %87, align 8, !dbg !666
  %89 = call i64 @fread(ptr noundef %84, i64 noundef 1, i64 noundef 4, ptr noundef %88), !dbg !666
  %90 = icmp eq i64 %89, 4, !dbg !666
  br i1 %90, label %102, label %91, !dbg !668

91:                                               ; preds = %61
  %92 = load ptr, ptr %3, align 8, !dbg !669
  %93 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %92, i32 0, i32 0, !dbg !669
  %94 = load ptr, ptr %93, align 8, !dbg !669
  %95 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %94, i32 0, i32 5, !dbg !669
  store i32 42, ptr %95, align 8, !dbg !669
  %96 = load ptr, ptr %3, align 8, !dbg !669
  %97 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %96, i32 0, i32 0, !dbg !669
  %98 = load ptr, ptr %97, align 8, !dbg !669
  %99 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %98, i32 0, i32 0, !dbg !669
  %100 = load ptr, ptr %99, align 8, !dbg !669
  %101 = load ptr, ptr %3, align 8, !dbg !669
  call void %100(ptr noundef %101), !dbg !669
  br label %102, !dbg !669

102:                                              ; preds = %91, %61
  %103 = getelementptr inbounds [64 x i8], ptr %7, i64 0, i64 0, !dbg !670
  %104 = load i8, ptr %103, align 16, !dbg !670
  %105 = zext i8 %104 to i32, !dbg !670
  %106 = sext i32 %105 to i64, !dbg !670
  %107 = getelementptr inbounds [64 x i8], ptr %7, i64 0, i64 1, !dbg !670
  %108 = load i8, ptr %107, align 1, !dbg !670
  %109 = zext i8 %108 to i32, !dbg !670
  %110 = sext i32 %109 to i64, !dbg !670
  %111 = shl i64 %110, 8, !dbg !670
  %112 = add nsw i64 %106, %111, !dbg !670
  %113 = getelementptr inbounds [64 x i8], ptr %7, i64 0, i64 2, !dbg !670
  %114 = load i8, ptr %113, align 2, !dbg !670
  %115 = zext i8 %114 to i32, !dbg !670
  %116 = sext i32 %115 to i64, !dbg !670
  %117 = shl i64 %116, 16, !dbg !670
  %118 = add nsw i64 %112, %117, !dbg !670
  %119 = getelementptr inbounds [64 x i8], ptr %7, i64 0, i64 3, !dbg !670
  %120 = load i8, ptr %119, align 1, !dbg !670
  %121 = zext i8 %120 to i32, !dbg !670
  %122 = sext i32 %121 to i64, !dbg !670
  %123 = shl i64 %122, 24, !dbg !670
  %124 = add nsw i64 %118, %123, !dbg !670
  store i64 %124, ptr %9, align 8, !dbg !671
  %125 = load i64, ptr %9, align 8, !dbg !672
  %126 = icmp slt i64 %125, 12, !dbg !674
  br i1 %126, label %130, label %127, !dbg !675

127:                                              ; preds = %102
  %128 = load i64, ptr %9, align 8, !dbg !676
  %129 = icmp sgt i64 %128, 64, !dbg !677
  br i1 %129, label %130, label %141, !dbg !675

130:                                              ; preds = %127, %102
  %131 = load ptr, ptr %3, align 8, !dbg !678
  %132 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %131, i32 0, i32 0, !dbg !678
  %133 = load ptr, ptr %132, align 8, !dbg !678
  %134 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %133, i32 0, i32 5, !dbg !678
  store i32 1003, ptr %134, align 8, !dbg !678
  %135 = load ptr, ptr %3, align 8, !dbg !678
  %136 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %135, i32 0, i32 0, !dbg !678
  %137 = load ptr, ptr %136, align 8, !dbg !678
  %138 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %137, i32 0, i32 0, !dbg !678
  %139 = load ptr, ptr %138, align 8, !dbg !678
  %140 = load ptr, ptr %3, align 8, !dbg !678
  call void %139(ptr noundef %140), !dbg !678
  br label %141, !dbg !678

141:                                              ; preds = %130, %127
  %142 = getelementptr inbounds [64 x i8], ptr %7, i64 0, i64 0, !dbg !679
  %143 = getelementptr inbounds i8, ptr %142, i64 4, !dbg !679
  %144 = load i64, ptr %9, align 8, !dbg !679
  %145 = sub nsw i64 %144, 4, !dbg !679
  %146 = load ptr, ptr %5, align 8, !dbg !679
  %147 = getelementptr inbounds nuw %struct._bmp_source_struct, ptr %146, i32 0, i32 0, !dbg !679
  %148 = getelementptr inbounds nuw %struct.cjpeg_source_struct, ptr %147, i32 0, i32 3, !dbg !679
  %149 = load ptr, ptr %148, align 8, !dbg !679
  %150 = call i64 @fread(ptr noundef %143, i64 noundef 1, i64 noundef %145, ptr noundef %149), !dbg !679
  %151 = load i64, ptr %9, align 8, !dbg !679
  %152 = sub nsw i64 %151, 4, !dbg !679
  %153 = icmp eq i64 %150, %152, !dbg !679
  br i1 %153, label %165, label %154, !dbg !681

154:                                              ; preds = %141
  %155 = load ptr, ptr %3, align 8, !dbg !682
  %156 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %155, i32 0, i32 0, !dbg !682
  %157 = load ptr, ptr %156, align 8, !dbg !682
  %158 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %157, i32 0, i32 5, !dbg !682
  store i32 42, ptr %158, align 8, !dbg !682
  %159 = load ptr, ptr %3, align 8, !dbg !682
  %160 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %159, i32 0, i32 0, !dbg !682
  %161 = load ptr, ptr %160, align 8, !dbg !682
  %162 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %161, i32 0, i32 0, !dbg !682
  %163 = load ptr, ptr %162, align 8, !dbg !682
  %164 = load ptr, ptr %3, align 8, !dbg !682
  call void %163(ptr noundef %164), !dbg !682
  br label %165, !dbg !682

165:                                              ; preds = %154, %141
  %166 = load i64, ptr %9, align 8, !dbg !683
  %167 = trunc i64 %166 to i32, !dbg !684
  switch i32 %167, label %547 [
    i32 12, label %168
    i32 40, label %284
    i32 64, label %284
  ], !dbg !685

168:                                              ; preds = %165
  %169 = getelementptr inbounds [64 x i8], ptr %7, i64 0, i64 4, !dbg !686
  %170 = load i8, ptr %169, align 4, !dbg !686
  %171 = zext i8 %170 to i32, !dbg !686
  %172 = getelementptr inbounds [64 x i8], ptr %7, i64 0, i64 5, !dbg !686
  %173 = load i8, ptr %172, align 1, !dbg !686
  %174 = zext i8 %173 to i32, !dbg !686
  %175 = shl i32 %174, 8, !dbg !686
  %176 = add i32 %171, %175, !dbg !686
  %177 = zext i32 %176 to i64, !dbg !688
  store i64 %177, ptr %10, align 8, !dbg !689
  %178 = getelementptr inbounds [64 x i8], ptr %7, i64 0, i64 6, !dbg !690
  %179 = load i8, ptr %178, align 2, !dbg !690
  %180 = zext i8 %179 to i32, !dbg !690
  %181 = getelementptr inbounds [64 x i8], ptr %7, i64 0, i64 7, !dbg !690
  %182 = load i8, ptr %181, align 1, !dbg !690
  %183 = zext i8 %182 to i32, !dbg !690
  %184 = shl i32 %183, 8, !dbg !690
  %185 = add i32 %180, %184, !dbg !690
  %186 = zext i32 %185 to i64, !dbg !691
  store i64 %186, ptr %11, align 8, !dbg !692
  %187 = getelementptr inbounds [64 x i8], ptr %7, i64 0, i64 8, !dbg !693
  %188 = load i8, ptr %187, align 8, !dbg !693
  %189 = zext i8 %188 to i32, !dbg !693
  %190 = getelementptr inbounds [64 x i8], ptr %7, i64 0, i64 9, !dbg !693
  %191 = load i8, ptr %190, align 1, !dbg !693
  %192 = zext i8 %191 to i32, !dbg !693
  %193 = shl i32 %192, 8, !dbg !693
  %194 = add i32 %189, %193, !dbg !693
  store i32 %194, ptr %12, align 4, !dbg !694
  %195 = getelementptr inbounds [64 x i8], ptr %7, i64 0, i64 10, !dbg !695
  %196 = load i8, ptr %195, align 2, !dbg !695
  %197 = zext i8 %196 to i32, !dbg !695
  %198 = getelementptr inbounds [64 x i8], ptr %7, i64 0, i64 11, !dbg !695
  %199 = load i8, ptr %198, align 1, !dbg !695
  %200 = zext i8 %199 to i32, !dbg !695
  %201 = shl i32 %200, 8, !dbg !695
  %202 = add i32 %197, %201, !dbg !695
  %203 = load ptr, ptr %5, align 8, !dbg !696
  %204 = getelementptr inbounds nuw %struct._bmp_source_struct, ptr %203, i32 0, i32 6, !dbg !697
  store i32 %202, ptr %204, align 8, !dbg !698
  %205 = load ptr, ptr %5, align 8, !dbg !699
  %206 = getelementptr inbounds nuw %struct._bmp_source_struct, ptr %205, i32 0, i32 6, !dbg !700
  %207 = load i32, ptr %206, align 8, !dbg !700
  switch i32 %207, label %258 [
    i32 8, label %208
    i32 24, label %233
  ], !dbg !701

208:                                              ; preds = %168
  store i32 3, ptr %17, align 4, !dbg !702
  %209 = load ptr, ptr %3, align 8, !dbg !704
  %210 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %209, i32 0, i32 0, !dbg !704
  %211 = load ptr, ptr %210, align 8, !dbg !704
  %212 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %211, i32 0, i32 5, !dbg !704
  store i32 1011, ptr %212, align 8, !dbg !704
  %213 = load i64, ptr %10, align 8, !dbg !704
  %214 = trunc i64 %213 to i32, !dbg !704
  %215 = load ptr, ptr %3, align 8, !dbg !704
  %216 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %215, i32 0, i32 0, !dbg !704
  %217 = load ptr, ptr %216, align 8, !dbg !704
  %218 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %217, i32 0, i32 6, !dbg !704
  %219 = getelementptr inbounds [8 x i32], ptr %218, i64 0, i64 0, !dbg !704
  store i32 %214, ptr %219, align 4, !dbg !704
  %220 = load i64, ptr %11, align 8, !dbg !704
  %221 = trunc i64 %220 to i32, !dbg !704
  %222 = load ptr, ptr %3, align 8, !dbg !704
  %223 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %222, i32 0, i32 0, !dbg !704
  %224 = load ptr, ptr %223, align 8, !dbg !704
  %225 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %224, i32 0, i32 6, !dbg !704
  %226 = getelementptr inbounds [8 x i32], ptr %225, i64 0, i64 1, !dbg !704
  store i32 %221, ptr %226, align 4, !dbg !704
  %227 = load ptr, ptr %3, align 8, !dbg !704
  %228 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %227, i32 0, i32 0, !dbg !704
  %229 = load ptr, ptr %228, align 8, !dbg !704
  %230 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %229, i32 0, i32 1, !dbg !704
  %231 = load ptr, ptr %230, align 8, !dbg !704
  %232 = load ptr, ptr %3, align 8, !dbg !704
  call void %231(ptr noundef %232, i32 noundef 1), !dbg !704
  br label %269, !dbg !705

233:                                              ; preds = %168
  %234 = load ptr, ptr %3, align 8, !dbg !706
  %235 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %234, i32 0, i32 0, !dbg !706
  %236 = load ptr, ptr %235, align 8, !dbg !706
  %237 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %236, i32 0, i32 5, !dbg !706
  store i32 1010, ptr %237, align 8, !dbg !706
  %238 = load i64, ptr %10, align 8, !dbg !706
  %239 = trunc i64 %238 to i32, !dbg !706
  %240 = load ptr, ptr %3, align 8, !dbg !706
  %241 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %240, i32 0, i32 0, !dbg !706
  %242 = load ptr, ptr %241, align 8, !dbg !706
  %243 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %242, i32 0, i32 6, !dbg !706
  %244 = getelementptr inbounds [8 x i32], ptr %243, i64 0, i64 0, !dbg !706
  store i32 %239, ptr %244, align 4, !dbg !706
  %245 = load i64, ptr %11, align 8, !dbg !706
  %246 = trunc i64 %245 to i32, !dbg !706
  %247 = load ptr, ptr %3, align 8, !dbg !706
  %248 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %247, i32 0, i32 0, !dbg !706
  %249 = load ptr, ptr %248, align 8, !dbg !706
  %250 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %249, i32 0, i32 6, !dbg !706
  %251 = getelementptr inbounds [8 x i32], ptr %250, i64 0, i64 1, !dbg !706
  store i32 %246, ptr %251, align 4, !dbg !706
  %252 = load ptr, ptr %3, align 8, !dbg !706
  %253 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %252, i32 0, i32 0, !dbg !706
  %254 = load ptr, ptr %253, align 8, !dbg !706
  %255 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %254, i32 0, i32 1, !dbg !706
  %256 = load ptr, ptr %255, align 8, !dbg !706
  %257 = load ptr, ptr %3, align 8, !dbg !706
  call void %256(ptr noundef %257, i32 noundef 1), !dbg !706
  br label %269, !dbg !707

258:                                              ; preds = %168
  %259 = load ptr, ptr %3, align 8, !dbg !708
  %260 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %259, i32 0, i32 0, !dbg !708
  %261 = load ptr, ptr %260, align 8, !dbg !708
  %262 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %261, i32 0, i32 5, !dbg !708
  store i32 1002, ptr %262, align 8, !dbg !708
  %263 = load ptr, ptr %3, align 8, !dbg !708
  %264 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %263, i32 0, i32 0, !dbg !708
  %265 = load ptr, ptr %264, align 8, !dbg !708
  %266 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %265, i32 0, i32 0, !dbg !708
  %267 = load ptr, ptr %266, align 8, !dbg !708
  %268 = load ptr, ptr %3, align 8, !dbg !708
  call void %267(ptr noundef %268), !dbg !708
  br label %269, !dbg !709

269:                                              ; preds = %258, %233, %208
  %270 = load i32, ptr %12, align 4, !dbg !710
  %271 = icmp ne i32 %270, 1, !dbg !712
  br i1 %271, label %272, label %283, !dbg !712

272:                                              ; preds = %269
  %273 = load ptr, ptr %3, align 8, !dbg !713
  %274 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %273, i32 0, i32 0, !dbg !713
  %275 = load ptr, ptr %274, align 8, !dbg !713
  %276 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %275, i32 0, i32 5, !dbg !713
  store i32 1004, ptr %276, align 8, !dbg !713
  %277 = load ptr, ptr %3, align 8, !dbg !713
  %278 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %277, i32 0, i32 0, !dbg !713
  %279 = load ptr, ptr %278, align 8, !dbg !713
  %280 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %279, i32 0, i32 0, !dbg !713
  %281 = load ptr, ptr %280, align 8, !dbg !713
  %282 = load ptr, ptr %3, align 8, !dbg !713
  call void %281(ptr noundef %282), !dbg !713
  br label %283, !dbg !713

283:                                              ; preds = %272, %269
  br label %558, !dbg !714

284:                                              ; preds = %165, %165
  %285 = getelementptr inbounds [64 x i8], ptr %7, i64 0, i64 4, !dbg !715
  %286 = load i8, ptr %285, align 4, !dbg !715
  %287 = zext i8 %286 to i32, !dbg !715
  %288 = sext i32 %287 to i64, !dbg !715
  %289 = getelementptr inbounds [64 x i8], ptr %7, i64 0, i64 5, !dbg !715
  %290 = load i8, ptr %289, align 1, !dbg !715
  %291 = zext i8 %290 to i32, !dbg !715
  %292 = sext i32 %291 to i64, !dbg !715
  %293 = shl i64 %292, 8, !dbg !715
  %294 = add nsw i64 %288, %293, !dbg !715
  %295 = getelementptr inbounds [64 x i8], ptr %7, i64 0, i64 6, !dbg !715
  %296 = load i8, ptr %295, align 2, !dbg !715
  %297 = zext i8 %296 to i32, !dbg !715
  %298 = sext i32 %297 to i64, !dbg !715
  %299 = shl i64 %298, 16, !dbg !715
  %300 = add nsw i64 %294, %299, !dbg !715
  %301 = getelementptr inbounds [64 x i8], ptr %7, i64 0, i64 7, !dbg !715
  %302 = load i8, ptr %301, align 1, !dbg !715
  %303 = zext i8 %302 to i32, !dbg !715
  %304 = sext i32 %303 to i64, !dbg !715
  %305 = shl i64 %304, 24, !dbg !715
  %306 = add nsw i64 %300, %305, !dbg !715
  store i64 %306, ptr %10, align 8, !dbg !716
  %307 = getelementptr inbounds [64 x i8], ptr %7, i64 0, i64 8, !dbg !717
  %308 = load i8, ptr %307, align 8, !dbg !717
  %309 = zext i8 %308 to i32, !dbg !717
  %310 = sext i32 %309 to i64, !dbg !717
  %311 = getelementptr inbounds [64 x i8], ptr %7, i64 0, i64 9, !dbg !717
  %312 = load i8, ptr %311, align 1, !dbg !717
  %313 = zext i8 %312 to i32, !dbg !717
  %314 = sext i32 %313 to i64, !dbg !717
  %315 = shl i64 %314, 8, !dbg !717
  %316 = add nsw i64 %310, %315, !dbg !717
  %317 = getelementptr inbounds [64 x i8], ptr %7, i64 0, i64 10, !dbg !717
  %318 = load i8, ptr %317, align 2, !dbg !717
  %319 = zext i8 %318 to i32, !dbg !717
  %320 = sext i32 %319 to i64, !dbg !717
  %321 = shl i64 %320, 16, !dbg !717
  %322 = add nsw i64 %316, %321, !dbg !717
  %323 = getelementptr inbounds [64 x i8], ptr %7, i64 0, i64 11, !dbg !717
  %324 = load i8, ptr %323, align 1, !dbg !717
  %325 = zext i8 %324 to i32, !dbg !717
  %326 = sext i32 %325 to i64, !dbg !717
  %327 = shl i64 %326, 24, !dbg !717
  %328 = add nsw i64 %322, %327, !dbg !717
  store i64 %328, ptr %11, align 8, !dbg !718
  %329 = getelementptr inbounds [64 x i8], ptr %7, i64 0, i64 12, !dbg !719
  %330 = load i8, ptr %329, align 4, !dbg !719
  %331 = zext i8 %330 to i32, !dbg !719
  %332 = getelementptr inbounds [64 x i8], ptr %7, i64 0, i64 13, !dbg !719
  %333 = load i8, ptr %332, align 1, !dbg !719
  %334 = zext i8 %333 to i32, !dbg !719
  %335 = shl i32 %334, 8, !dbg !719
  %336 = add i32 %331, %335, !dbg !719
  store i32 %336, ptr %12, align 4, !dbg !720
  %337 = getelementptr inbounds [64 x i8], ptr %7, i64 0, i64 14, !dbg !721
  %338 = load i8, ptr %337, align 2, !dbg !721
  %339 = zext i8 %338 to i32, !dbg !721
  %340 = getelementptr inbounds [64 x i8], ptr %7, i64 0, i64 15, !dbg !721
  %341 = load i8, ptr %340, align 1, !dbg !721
  %342 = zext i8 %341 to i32, !dbg !721
  %343 = shl i32 %342, 8, !dbg !721
  %344 = add i32 %339, %343, !dbg !721
  %345 = load ptr, ptr %5, align 8, !dbg !722
  %346 = getelementptr inbounds nuw %struct._bmp_source_struct, ptr %345, i32 0, i32 6, !dbg !723
  store i32 %344, ptr %346, align 8, !dbg !724
  %347 = getelementptr inbounds [64 x i8], ptr %7, i64 0, i64 16, !dbg !725
  %348 = load i8, ptr %347, align 16, !dbg !725
  %349 = zext i8 %348 to i32, !dbg !725
  %350 = sext i32 %349 to i64, !dbg !725
  %351 = getelementptr inbounds [64 x i8], ptr %7, i64 0, i64 17, !dbg !725
  %352 = load i8, ptr %351, align 1, !dbg !725
  %353 = zext i8 %352 to i32, !dbg !725
  %354 = sext i32 %353 to i64, !dbg !725
  %355 = shl i64 %354, 8, !dbg !725
  %356 = add nsw i64 %350, %355, !dbg !725
  %357 = getelementptr inbounds [64 x i8], ptr %7, i64 0, i64 18, !dbg !725
  %358 = load i8, ptr %357, align 2, !dbg !725
  %359 = zext i8 %358 to i32, !dbg !725
  %360 = sext i32 %359 to i64, !dbg !725
  %361 = shl i64 %360, 16, !dbg !725
  %362 = add nsw i64 %356, %361, !dbg !725
  %363 = getelementptr inbounds [64 x i8], ptr %7, i64 0, i64 19, !dbg !725
  %364 = load i8, ptr %363, align 1, !dbg !725
  %365 = zext i8 %364 to i32, !dbg !725
  %366 = sext i32 %365 to i64, !dbg !725
  %367 = shl i64 %366, 24, !dbg !725
  %368 = add nsw i64 %362, %367, !dbg !725
  store i64 %368, ptr %13, align 8, !dbg !726
  %369 = getelementptr inbounds [64 x i8], ptr %7, i64 0, i64 24, !dbg !727
  %370 = load i8, ptr %369, align 8, !dbg !727
  %371 = zext i8 %370 to i32, !dbg !727
  %372 = sext i32 %371 to i64, !dbg !727
  %373 = getelementptr inbounds [64 x i8], ptr %7, i64 0, i64 25, !dbg !727
  %374 = load i8, ptr %373, align 1, !dbg !727
  %375 = zext i8 %374 to i32, !dbg !727
  %376 = sext i32 %375 to i64, !dbg !727
  %377 = shl i64 %376, 8, !dbg !727
  %378 = add nsw i64 %372, %377, !dbg !727
  %379 = getelementptr inbounds [64 x i8], ptr %7, i64 0, i64 26, !dbg !727
  %380 = load i8, ptr %379, align 2, !dbg !727
  %381 = zext i8 %380 to i32, !dbg !727
  %382 = sext i32 %381 to i64, !dbg !727
  %383 = shl i64 %382, 16, !dbg !727
  %384 = add nsw i64 %378, %383, !dbg !727
  %385 = getelementptr inbounds [64 x i8], ptr %7, i64 0, i64 27, !dbg !727
  %386 = load i8, ptr %385, align 1, !dbg !727
  %387 = zext i8 %386 to i32, !dbg !727
  %388 = sext i32 %387 to i64, !dbg !727
  %389 = shl i64 %388, 24, !dbg !727
  %390 = add nsw i64 %384, %389, !dbg !727
  store i64 %390, ptr %14, align 8, !dbg !728
  %391 = getelementptr inbounds [64 x i8], ptr %7, i64 0, i64 28, !dbg !729
  %392 = load i8, ptr %391, align 4, !dbg !729
  %393 = zext i8 %392 to i32, !dbg !729
  %394 = sext i32 %393 to i64, !dbg !729
  %395 = getelementptr inbounds [64 x i8], ptr %7, i64 0, i64 29, !dbg !729
  %396 = load i8, ptr %395, align 1, !dbg !729
  %397 = zext i8 %396 to i32, !dbg !729
  %398 = sext i32 %397 to i64, !dbg !729
  %399 = shl i64 %398, 8, !dbg !729
  %400 = add nsw i64 %394, %399, !dbg !729
  %401 = getelementptr inbounds [64 x i8], ptr %7, i64 0, i64 30, !dbg !729
  %402 = load i8, ptr %401, align 2, !dbg !729
  %403 = zext i8 %402 to i32, !dbg !729
  %404 = sext i32 %403 to i64, !dbg !729
  %405 = shl i64 %404, 16, !dbg !729
  %406 = add nsw i64 %400, %405, !dbg !729
  %407 = getelementptr inbounds [64 x i8], ptr %7, i64 0, i64 31, !dbg !729
  %408 = load i8, ptr %407, align 1, !dbg !729
  %409 = zext i8 %408 to i32, !dbg !729
  %410 = sext i32 %409 to i64, !dbg !729
  %411 = shl i64 %410, 24, !dbg !729
  %412 = add nsw i64 %406, %411, !dbg !729
  store i64 %412, ptr %15, align 8, !dbg !730
  %413 = getelementptr inbounds [64 x i8], ptr %7, i64 0, i64 32, !dbg !731
  %414 = load i8, ptr %413, align 16, !dbg !731
  %415 = zext i8 %414 to i32, !dbg !731
  %416 = sext i32 %415 to i64, !dbg !731
  %417 = getelementptr inbounds [64 x i8], ptr %7, i64 0, i64 33, !dbg !731
  %418 = load i8, ptr %417, align 1, !dbg !731
  %419 = zext i8 %418 to i32, !dbg !731
  %420 = sext i32 %419 to i64, !dbg !731
  %421 = shl i64 %420, 8, !dbg !731
  %422 = add nsw i64 %416, %421, !dbg !731
  %423 = getelementptr inbounds [64 x i8], ptr %7, i64 0, i64 34, !dbg !731
  %424 = load i8, ptr %423, align 2, !dbg !731
  %425 = zext i8 %424 to i32, !dbg !731
  %426 = sext i32 %425 to i64, !dbg !731
  %427 = shl i64 %426, 16, !dbg !731
  %428 = add nsw i64 %422, %427, !dbg !731
  %429 = getelementptr inbounds [64 x i8], ptr %7, i64 0, i64 35, !dbg !731
  %430 = load i8, ptr %429, align 1, !dbg !731
  %431 = zext i8 %430 to i32, !dbg !731
  %432 = sext i32 %431 to i64, !dbg !731
  %433 = shl i64 %432, 24, !dbg !731
  %434 = add nsw i64 %428, %433, !dbg !731
  store i64 %434, ptr %16, align 8, !dbg !732
  %435 = load ptr, ptr %5, align 8, !dbg !733
  %436 = getelementptr inbounds nuw %struct._bmp_source_struct, ptr %435, i32 0, i32 6, !dbg !734
  %437 = load i32, ptr %436, align 8, !dbg !734
  switch i32 %437, label %488 [
    i32 8, label %438
    i32 24, label %463
  ], !dbg !735

438:                                              ; preds = %284
  store i32 4, ptr %17, align 4, !dbg !736
  %439 = load ptr, ptr %3, align 8, !dbg !738
  %440 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %439, i32 0, i32 0, !dbg !738
  %441 = load ptr, ptr %440, align 8, !dbg !738
  %442 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %441, i32 0, i32 5, !dbg !738
  store i32 1009, ptr %442, align 8, !dbg !738
  %443 = load i64, ptr %10, align 8, !dbg !738
  %444 = trunc i64 %443 to i32, !dbg !738
  %445 = load ptr, ptr %3, align 8, !dbg !738
  %446 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %445, i32 0, i32 0, !dbg !738
  %447 = load ptr, ptr %446, align 8, !dbg !738
  %448 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %447, i32 0, i32 6, !dbg !738
  %449 = getelementptr inbounds [8 x i32], ptr %448, i64 0, i64 0, !dbg !738
  store i32 %444, ptr %449, align 4, !dbg !738
  %450 = load i64, ptr %11, align 8, !dbg !738
  %451 = trunc i64 %450 to i32, !dbg !738
  %452 = load ptr, ptr %3, align 8, !dbg !738
  %453 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %452, i32 0, i32 0, !dbg !738
  %454 = load ptr, ptr %453, align 8, !dbg !738
  %455 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %454, i32 0, i32 6, !dbg !738
  %456 = getelementptr inbounds [8 x i32], ptr %455, i64 0, i64 1, !dbg !738
  store i32 %451, ptr %456, align 4, !dbg !738
  %457 = load ptr, ptr %3, align 8, !dbg !738
  %458 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %457, i32 0, i32 0, !dbg !738
  %459 = load ptr, ptr %458, align 8, !dbg !738
  %460 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %459, i32 0, i32 1, !dbg !738
  %461 = load ptr, ptr %460, align 8, !dbg !738
  %462 = load ptr, ptr %3, align 8, !dbg !738
  call void %461(ptr noundef %462, i32 noundef 1), !dbg !738
  br label %499, !dbg !739

463:                                              ; preds = %284
  %464 = load ptr, ptr %3, align 8, !dbg !740
  %465 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %464, i32 0, i32 0, !dbg !740
  %466 = load ptr, ptr %465, align 8, !dbg !740
  %467 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %466, i32 0, i32 5, !dbg !740
  store i32 1008, ptr %467, align 8, !dbg !740
  %468 = load i64, ptr %10, align 8, !dbg !740
  %469 = trunc i64 %468 to i32, !dbg !740
  %470 = load ptr, ptr %3, align 8, !dbg !740
  %471 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %470, i32 0, i32 0, !dbg !740
  %472 = load ptr, ptr %471, align 8, !dbg !740
  %473 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %472, i32 0, i32 6, !dbg !740
  %474 = getelementptr inbounds [8 x i32], ptr %473, i64 0, i64 0, !dbg !740
  store i32 %469, ptr %474, align 4, !dbg !740
  %475 = load i64, ptr %11, align 8, !dbg !740
  %476 = trunc i64 %475 to i32, !dbg !740
  %477 = load ptr, ptr %3, align 8, !dbg !740
  %478 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %477, i32 0, i32 0, !dbg !740
  %479 = load ptr, ptr %478, align 8, !dbg !740
  %480 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %479, i32 0, i32 6, !dbg !740
  %481 = getelementptr inbounds [8 x i32], ptr %480, i64 0, i64 1, !dbg !740
  store i32 %476, ptr %481, align 4, !dbg !740
  %482 = load ptr, ptr %3, align 8, !dbg !740
  %483 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %482, i32 0, i32 0, !dbg !740
  %484 = load ptr, ptr %483, align 8, !dbg !740
  %485 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %484, i32 0, i32 1, !dbg !740
  %486 = load ptr, ptr %485, align 8, !dbg !740
  %487 = load ptr, ptr %3, align 8, !dbg !740
  call void %486(ptr noundef %487, i32 noundef 1), !dbg !740
  br label %499, !dbg !741

488:                                              ; preds = %284
  %489 = load ptr, ptr %3, align 8, !dbg !742
  %490 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %489, i32 0, i32 0, !dbg !742
  %491 = load ptr, ptr %490, align 8, !dbg !742
  %492 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %491, i32 0, i32 5, !dbg !742
  store i32 1002, ptr %492, align 8, !dbg !742
  %493 = load ptr, ptr %3, align 8, !dbg !742
  %494 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %493, i32 0, i32 0, !dbg !742
  %495 = load ptr, ptr %494, align 8, !dbg !742
  %496 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %495, i32 0, i32 0, !dbg !742
  %497 = load ptr, ptr %496, align 8, !dbg !742
  %498 = load ptr, ptr %3, align 8, !dbg !742
  call void %497(ptr noundef %498), !dbg !742
  br label %499, !dbg !743

499:                                              ; preds = %488, %463, %438
  %500 = load i32, ptr %12, align 4, !dbg !744
  %501 = icmp ne i32 %500, 1, !dbg !746
  br i1 %501, label %502, label %513, !dbg !746

502:                                              ; preds = %499
  %503 = load ptr, ptr %3, align 8, !dbg !747
  %504 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %503, i32 0, i32 0, !dbg !747
  %505 = load ptr, ptr %504, align 8, !dbg !747
  %506 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %505, i32 0, i32 5, !dbg !747
  store i32 1004, ptr %506, align 8, !dbg !747
  %507 = load ptr, ptr %3, align 8, !dbg !747
  %508 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %507, i32 0, i32 0, !dbg !747
  %509 = load ptr, ptr %508, align 8, !dbg !747
  %510 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %509, i32 0, i32 0, !dbg !747
  %511 = load ptr, ptr %510, align 8, !dbg !747
  %512 = load ptr, ptr %3, align 8, !dbg !747
  call void %511(ptr noundef %512), !dbg !747
  br label %513, !dbg !747

513:                                              ; preds = %502, %499
  %514 = load i64, ptr %13, align 8, !dbg !748
  %515 = icmp ne i64 %514, 0, !dbg !750
  br i1 %515, label %516, label %527, !dbg !750

516:                                              ; preds = %513
  %517 = load ptr, ptr %3, align 8, !dbg !751
  %518 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %517, i32 0, i32 0, !dbg !751
  %519 = load ptr, ptr %518, align 8, !dbg !751
  %520 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %519, i32 0, i32 5, !dbg !751
  store i32 1006, ptr %520, align 8, !dbg !751
  %521 = load ptr, ptr %3, align 8, !dbg !751
  %522 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %521, i32 0, i32 0, !dbg !751
  %523 = load ptr, ptr %522, align 8, !dbg !751
  %524 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %523, i32 0, i32 0, !dbg !751
  %525 = load ptr, ptr %524, align 8, !dbg !751
  %526 = load ptr, ptr %3, align 8, !dbg !751
  call void %525(ptr noundef %526), !dbg !751
  br label %527, !dbg !751

527:                                              ; preds = %516, %513
  %528 = load i64, ptr %14, align 8, !dbg !752
  %529 = icmp sgt i64 %528, 0, !dbg !754
  br i1 %529, label %530, label %546, !dbg !755

530:                                              ; preds = %527
  %531 = load i64, ptr %15, align 8, !dbg !756
  %532 = icmp sgt i64 %531, 0, !dbg !757
  br i1 %532, label %533, label %546, !dbg !755

533:                                              ; preds = %530
  %534 = load i64, ptr %14, align 8, !dbg !758
  %535 = sdiv i64 %534, 100, !dbg !760
  %536 = trunc i64 %535 to i16, !dbg !761
  %537 = load ptr, ptr %3, align 8, !dbg !762
  %538 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %537, i32 0, i32 33, !dbg !763
  store i16 %536, ptr %538, align 2, !dbg !764
  %539 = load i64, ptr %15, align 8, !dbg !765
  %540 = sdiv i64 %539, 100, !dbg !766
  %541 = trunc i64 %540 to i16, !dbg !767
  %542 = load ptr, ptr %3, align 8, !dbg !768
  %543 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %542, i32 0, i32 34, !dbg !769
  store i16 %541, ptr %543, align 8, !dbg !770
  %544 = load ptr, ptr %3, align 8, !dbg !771
  %545 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %544, i32 0, i32 32, !dbg !772
  store i8 2, ptr %545, align 4, !dbg !773
  br label %546, !dbg !774

546:                                              ; preds = %533, %530, %527
  br label %558, !dbg !775

547:                                              ; preds = %165
  %548 = load ptr, ptr %3, align 8, !dbg !776
  %549 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %548, i32 0, i32 0, !dbg !776
  %550 = load ptr, ptr %549, align 8, !dbg !776
  %551 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %550, i32 0, i32 5, !dbg !776
  store i32 1003, ptr %551, align 8, !dbg !776
  %552 = load ptr, ptr %3, align 8, !dbg !776
  %553 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %552, i32 0, i32 0, !dbg !776
  %554 = load ptr, ptr %553, align 8, !dbg !776
  %555 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %554, i32 0, i32 0, !dbg !776
  %556 = load ptr, ptr %555, align 8, !dbg !776
  %557 = load ptr, ptr %3, align 8, !dbg !776
  call void %556(ptr noundef %557), !dbg !776
  br label %558, !dbg !777

558:                                              ; preds = %547, %546, %283
  %559 = load i64, ptr %8, align 8, !dbg !778
  %560 = load i64, ptr %9, align 8, !dbg !779
  %561 = add nsw i64 %560, 14, !dbg !780
  %562 = sub nsw i64 %559, %561, !dbg !781
  store i64 %562, ptr %18, align 8, !dbg !782
  %563 = load i32, ptr %17, align 4, !dbg !783
  %564 = icmp sgt i32 %563, 0, !dbg !785
  br i1 %564, label %565, label %606, !dbg !785

565:                                              ; preds = %558
  %566 = load i64, ptr %16, align 8, !dbg !786
  %567 = icmp sle i64 %566, 0, !dbg !789
  br i1 %567, label %568, label %569, !dbg !789

568:                                              ; preds = %565
  store i64 256, ptr %16, align 8, !dbg !790
  br label %584, !dbg !791

569:                                              ; preds = %565
  %570 = load i64, ptr %16, align 8, !dbg !792
  %571 = icmp sgt i64 %570, 256, !dbg !794
  br i1 %571, label %572, label %583, !dbg !794

572:                                              ; preds = %569
  %573 = load ptr, ptr %3, align 8, !dbg !795
  %574 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %573, i32 0, i32 0, !dbg !795
  %575 = load ptr, ptr %574, align 8, !dbg !795
  %576 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %575, i32 0, i32 5, !dbg !795
  store i32 1001, ptr %576, align 8, !dbg !795
  %577 = load ptr, ptr %3, align 8, !dbg !795
  %578 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %577, i32 0, i32 0, !dbg !795
  %579 = load ptr, ptr %578, align 8, !dbg !795
  %580 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %579, i32 0, i32 0, !dbg !795
  %581 = load ptr, ptr %580, align 8, !dbg !795
  %582 = load ptr, ptr %3, align 8, !dbg !795
  call void %581(ptr noundef %582), !dbg !795
  br label %583, !dbg !795

583:                                              ; preds = %572, %569
  br label %584

584:                                              ; preds = %583, %568
  %585 = load ptr, ptr %3, align 8, !dbg !796
  %586 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %585, i32 0, i32 1, !dbg !797
  %587 = load ptr, ptr %586, align 8, !dbg !797
  %588 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %587, i32 0, i32 2, !dbg !798
  %589 = load ptr, ptr %588, align 8, !dbg !798
  %590 = load ptr, ptr %3, align 8, !dbg !799
  %591 = load i64, ptr %16, align 8, !dbg !800
  %592 = trunc i64 %591 to i32, !dbg !801
  %593 = call ptr %589(ptr noundef %590, i32 noundef 1, i32 noundef %592, i32 noundef 3), !dbg !802
  %594 = load ptr, ptr %5, align 8, !dbg !803
  %595 = getelementptr inbounds nuw %struct._bmp_source_struct, ptr %594, i32 0, i32 2, !dbg !804
  store ptr %593, ptr %595, align 8, !dbg !805
  %596 = load ptr, ptr %5, align 8, !dbg !806
  %597 = load i64, ptr %16, align 8, !dbg !807
  %598 = trunc i64 %597 to i32, !dbg !808
  %599 = load i32, ptr %17, align 4, !dbg !809
  call void @read_colormap(ptr noundef %596, i32 noundef %598, i32 noundef %599), !dbg !810
  %600 = load i64, ptr %16, align 8, !dbg !811
  %601 = load i32, ptr %17, align 4, !dbg !812
  %602 = sext i32 %601 to i64, !dbg !812
  %603 = mul nsw i64 %600, %602, !dbg !813
  %604 = load i64, ptr %18, align 8, !dbg !814
  %605 = sub nsw i64 %604, %603, !dbg !814
  store i64 %605, ptr %18, align 8, !dbg !814
  br label %606, !dbg !815

606:                                              ; preds = %584, %558
  %607 = load i64, ptr %18, align 8, !dbg !816
  %608 = icmp slt i64 %607, 0, !dbg !818
  br i1 %608, label %609, label %620, !dbg !818

609:                                              ; preds = %606
  %610 = load ptr, ptr %3, align 8, !dbg !819
  %611 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %610, i32 0, i32 0, !dbg !819
  %612 = load ptr, ptr %611, align 8, !dbg !819
  %613 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %612, i32 0, i32 5, !dbg !819
  store i32 1003, ptr %613, align 8, !dbg !819
  %614 = load ptr, ptr %3, align 8, !dbg !819
  %615 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %614, i32 0, i32 0, !dbg !819
  %616 = load ptr, ptr %615, align 8, !dbg !819
  %617 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %616, i32 0, i32 0, !dbg !819
  %618 = load ptr, ptr %617, align 8, !dbg !819
  %619 = load ptr, ptr %3, align 8, !dbg !819
  call void %618(ptr noundef %619), !dbg !819
  br label %620, !dbg !819

620:                                              ; preds = %609, %606
  br label %621, !dbg !820

621:                                              ; preds = %625, %620
  %622 = load i64, ptr %18, align 8, !dbg !821
  %623 = add nsw i64 %622, -1, !dbg !821
  store i64 %623, ptr %18, align 8, !dbg !821
  %624 = icmp sge i64 %623, 0, !dbg !822
  br i1 %624, label %625, label %628, !dbg !820

625:                                              ; preds = %621
  %626 = load ptr, ptr %5, align 8, !dbg !823
  %627 = call i32 @read_byte(ptr noundef %626), !dbg !825
  br label %621, !dbg !820, !llvm.loop !826

628:                                              ; preds = %621
  %629 = load ptr, ptr %5, align 8, !dbg !829
  %630 = getelementptr inbounds nuw %struct._bmp_source_struct, ptr %629, i32 0, i32 6, !dbg !831
  %631 = load i32, ptr %630, align 8, !dbg !831
  %632 = icmp eq i32 %631, 24, !dbg !832
  br i1 %632, label %633, label %637, !dbg !832

633:                                              ; preds = %628
  %634 = load i64, ptr %10, align 8, !dbg !833
  %635 = mul nsw i64 %634, 3, !dbg !834
  %636 = trunc i64 %635 to i32, !dbg !835
  store i32 %636, ptr %19, align 4, !dbg !836
  br label %640, !dbg !837

637:                                              ; preds = %628
  %638 = load i64, ptr %10, align 8, !dbg !838
  %639 = trunc i64 %638 to i32, !dbg !839
  store i32 %639, ptr %19, align 4, !dbg !840
  br label %640

640:                                              ; preds = %637, %633
  br label %641, !dbg !841

641:                                              ; preds = %645, %640
  %642 = load i32, ptr %19, align 4, !dbg !842
  %643 = and i32 %642, 3, !dbg !843
  %644 = icmp ne i32 %643, 0, !dbg !844
  br i1 %644, label %645, label %648, !dbg !841

645:                                              ; preds = %641
  %646 = load i32, ptr %19, align 4, !dbg !845
  %647 = add i32 %646, 1, !dbg !845
  store i32 %647, ptr %19, align 4, !dbg !845
  br label %641, !dbg !841, !llvm.loop !846

648:                                              ; preds = %641
  %649 = load i32, ptr %19, align 4, !dbg !847
  %650 = load ptr, ptr %5, align 8, !dbg !848
  %651 = getelementptr inbounds nuw %struct._bmp_source_struct, ptr %650, i32 0, i32 5, !dbg !849
  store i32 %649, ptr %651, align 4, !dbg !850
  %652 = load ptr, ptr %3, align 8, !dbg !851
  %653 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %652, i32 0, i32 1, !dbg !852
  %654 = load ptr, ptr %653, align 8, !dbg !852
  %655 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %654, i32 0, i32 4, !dbg !853
  %656 = load ptr, ptr %655, align 8, !dbg !853
  %657 = load ptr, ptr %3, align 8, !dbg !854
  %658 = load i32, ptr %19, align 4, !dbg !855
  %659 = load i64, ptr %11, align 8, !dbg !856
  %660 = trunc i64 %659 to i32, !dbg !857
  %661 = call ptr %656(ptr noundef %657, i32 noundef 1, i32 noundef 0, i32 noundef %658, i32 noundef %660, i32 noundef 1), !dbg !858
  %662 = load ptr, ptr %5, align 8, !dbg !859
  %663 = getelementptr inbounds nuw %struct._bmp_source_struct, ptr %662, i32 0, i32 3, !dbg !860
  store ptr %661, ptr %663, align 8, !dbg !861
  %664 = load ptr, ptr %5, align 8, !dbg !862
  %665 = getelementptr inbounds nuw %struct._bmp_source_struct, ptr %664, i32 0, i32 0, !dbg !863
  %666 = getelementptr inbounds nuw %struct.cjpeg_source_struct, ptr %665, i32 0, i32 1, !dbg !864
  store ptr @preload_image, ptr %666, align 8, !dbg !865
  %667 = load ptr, ptr %3, align 8, !dbg !866
  %668 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %667, i32 0, i32 2, !dbg !868
  %669 = load ptr, ptr %668, align 8, !dbg !868
  %670 = icmp ne ptr %669, null, !dbg !869
  br i1 %670, label %671, label %679, !dbg !869

671:                                              ; preds = %648
    #dbg_declare(ptr %20, !870, !DIExpression(), !872)
  %672 = load ptr, ptr %3, align 8, !dbg !873
  %673 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %672, i32 0, i32 2, !dbg !874
  %674 = load ptr, ptr %673, align 8, !dbg !874
  store ptr %674, ptr %20, align 8, !dbg !872
  %675 = load ptr, ptr %20, align 8, !dbg !875
  %676 = getelementptr inbounds nuw %struct.cdjpeg_progress_mgr, ptr %675, i32 0, i32 2, !dbg !876
  %677 = load i32, ptr %676, align 4, !dbg !877
  %678 = add nsw i32 %677, 1, !dbg !877
  store i32 %678, ptr %676, align 4, !dbg !877
  br label %679, !dbg !878

679:                                              ; preds = %671, %648
  %680 = load ptr, ptr %3, align 8, !dbg !879
  %681 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %680, i32 0, i32 1, !dbg !880
  %682 = load ptr, ptr %681, align 8, !dbg !880
  %683 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %682, i32 0, i32 2, !dbg !881
  %684 = load ptr, ptr %683, align 8, !dbg !881
  %685 = load ptr, ptr %3, align 8, !dbg !882
  %686 = load i64, ptr %10, align 8, !dbg !883
  %687 = mul nsw i64 %686, 3, !dbg !884
  %688 = trunc i64 %687 to i32, !dbg !885
  %689 = call ptr %684(ptr noundef %685, i32 noundef 1, i32 noundef %688, i32 noundef 1), !dbg !886
  %690 = load ptr, ptr %5, align 8, !dbg !887
  %691 = getelementptr inbounds nuw %struct._bmp_source_struct, ptr %690, i32 0, i32 0, !dbg !888
  %692 = getelementptr inbounds nuw %struct.cjpeg_source_struct, ptr %691, i32 0, i32 4, !dbg !889
  store ptr %689, ptr %692, align 8, !dbg !890
  %693 = load ptr, ptr %5, align 8, !dbg !891
  %694 = getelementptr inbounds nuw %struct._bmp_source_struct, ptr %693, i32 0, i32 0, !dbg !892
  %695 = getelementptr inbounds nuw %struct.cjpeg_source_struct, ptr %694, i32 0, i32 5, !dbg !893
  store i32 1, ptr %695, align 8, !dbg !894
  %696 = load ptr, ptr %3, align 8, !dbg !895
  %697 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %696, i32 0, i32 9, !dbg !896
  store i32 2, ptr %697, align 4, !dbg !897
  %698 = load ptr, ptr %3, align 8, !dbg !898
  %699 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %698, i32 0, i32 8, !dbg !899
  store i32 3, ptr %699, align 8, !dbg !900
  %700 = load ptr, ptr %3, align 8, !dbg !901
  %701 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %700, i32 0, i32 11, !dbg !902
  store i32 8, ptr %701, align 8, !dbg !903
  %702 = load i64, ptr %10, align 8, !dbg !904
  %703 = trunc i64 %702 to i32, !dbg !905
  %704 = load ptr, ptr %3, align 8, !dbg !906
  %705 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %704, i32 0, i32 6, !dbg !907
  store i32 %703, ptr %705, align 8, !dbg !908
  %706 = load i64, ptr %11, align 8, !dbg !909
  %707 = trunc i64 %706 to i32, !dbg !910
  %708 = load ptr, ptr %3, align 8, !dbg !911
  %709 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %708, i32 0, i32 7, !dbg !912
  store i32 %707, ptr %709, align 4, !dbg !913
  ret void, !dbg !914
}

; Function Attrs: noinline nounwind uwtable
define internal void @finish_input_bmp(ptr noundef %0, ptr noundef %1) #0 !dbg !915 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !916, !DIExpression(), !917)
  store ptr %1, ptr %4, align 8
    #dbg_declare(ptr %4, !918, !DIExpression(), !919)
  ret void, !dbg !920
}

declare i64 @fread(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @read_colormap(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 !dbg !921 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
    #dbg_declare(ptr %4, !924, !DIExpression(), !925)
  store i32 %1, ptr %5, align 4
    #dbg_declare(ptr %5, !926, !DIExpression(), !927)
  store i32 %2, ptr %6, align 4
    #dbg_declare(ptr %6, !928, !DIExpression(), !929)
    #dbg_declare(ptr %7, !930, !DIExpression(), !931)
  %8 = load i32, ptr %6, align 4, !dbg !932
  switch i32 %8, label %97 [
    i32 3, label %9
    i32 4, label %52
  ], !dbg !933

9:                                                ; preds = %3
  store i32 0, ptr %7, align 4, !dbg !934
  br label %10, !dbg !937

10:                                               ; preds = %48, %9
  %11 = load i32, ptr %7, align 4, !dbg !938
  %12 = load i32, ptr %5, align 4, !dbg !940
  %13 = icmp slt i32 %11, %12, !dbg !941
  br i1 %13, label %14, label %51, !dbg !942

14:                                               ; preds = %10
  %15 = load ptr, ptr %4, align 8, !dbg !943
  %16 = call i32 @read_byte(ptr noundef %15), !dbg !945
  %17 = trunc i32 %16 to i8, !dbg !946
  %18 = load ptr, ptr %4, align 8, !dbg !947
  %19 = getelementptr inbounds nuw %struct._bmp_source_struct, ptr %18, i32 0, i32 2, !dbg !948
  %20 = load ptr, ptr %19, align 8, !dbg !948
  %21 = getelementptr inbounds ptr, ptr %20, i64 2, !dbg !947
  %22 = load ptr, ptr %21, align 8, !dbg !947
  %23 = load i32, ptr %7, align 4, !dbg !949
  %24 = sext i32 %23 to i64, !dbg !947
  %25 = getelementptr inbounds i8, ptr %22, i64 %24, !dbg !947
  store i8 %17, ptr %25, align 1, !dbg !950
  %26 = load ptr, ptr %4, align 8, !dbg !951
  %27 = call i32 @read_byte(ptr noundef %26), !dbg !952
  %28 = trunc i32 %27 to i8, !dbg !953
  %29 = load ptr, ptr %4, align 8, !dbg !954
  %30 = getelementptr inbounds nuw %struct._bmp_source_struct, ptr %29, i32 0, i32 2, !dbg !955
  %31 = load ptr, ptr %30, align 8, !dbg !955
  %32 = getelementptr inbounds ptr, ptr %31, i64 1, !dbg !954
  %33 = load ptr, ptr %32, align 8, !dbg !954
  %34 = load i32, ptr %7, align 4, !dbg !956
  %35 = sext i32 %34 to i64, !dbg !954
  %36 = getelementptr inbounds i8, ptr %33, i64 %35, !dbg !954
  store i8 %28, ptr %36, align 1, !dbg !957
  %37 = load ptr, ptr %4, align 8, !dbg !958
  %38 = call i32 @read_byte(ptr noundef %37), !dbg !959
  %39 = trunc i32 %38 to i8, !dbg !960
  %40 = load ptr, ptr %4, align 8, !dbg !961
  %41 = getelementptr inbounds nuw %struct._bmp_source_struct, ptr %40, i32 0, i32 2, !dbg !962
  %42 = load ptr, ptr %41, align 8, !dbg !962
  %43 = getelementptr inbounds ptr, ptr %42, i64 0, !dbg !961
  %44 = load ptr, ptr %43, align 8, !dbg !961
  %45 = load i32, ptr %7, align 4, !dbg !963
  %46 = sext i32 %45 to i64, !dbg !961
  %47 = getelementptr inbounds i8, ptr %44, i64 %46, !dbg !961
  store i8 %39, ptr %47, align 1, !dbg !964
  br label %48, !dbg !965

48:                                               ; preds = %14
  %49 = load i32, ptr %7, align 4, !dbg !966
  %50 = add nsw i32 %49, 1, !dbg !966
  store i32 %50, ptr %7, align 4, !dbg !966
  br label %10, !dbg !967, !llvm.loop !968

51:                                               ; preds = %10
  br label %114, !dbg !970

52:                                               ; preds = %3
  store i32 0, ptr %7, align 4, !dbg !971
  br label %53, !dbg !973

53:                                               ; preds = %93, %52
  %54 = load i32, ptr %7, align 4, !dbg !974
  %55 = load i32, ptr %5, align 4, !dbg !976
  %56 = icmp slt i32 %54, %55, !dbg !977
  br i1 %56, label %57, label %96, !dbg !978

57:                                               ; preds = %53
  %58 = load ptr, ptr %4, align 8, !dbg !979
  %59 = call i32 @read_byte(ptr noundef %58), !dbg !981
  %60 = trunc i32 %59 to i8, !dbg !982
  %61 = load ptr, ptr %4, align 8, !dbg !983
  %62 = getelementptr inbounds nuw %struct._bmp_source_struct, ptr %61, i32 0, i32 2, !dbg !984
  %63 = load ptr, ptr %62, align 8, !dbg !984
  %64 = getelementptr inbounds ptr, ptr %63, i64 2, !dbg !983
  %65 = load ptr, ptr %64, align 8, !dbg !983
  %66 = load i32, ptr %7, align 4, !dbg !985
  %67 = sext i32 %66 to i64, !dbg !983
  %68 = getelementptr inbounds i8, ptr %65, i64 %67, !dbg !983
  store i8 %60, ptr %68, align 1, !dbg !986
  %69 = load ptr, ptr %4, align 8, !dbg !987
  %70 = call i32 @read_byte(ptr noundef %69), !dbg !988
  %71 = trunc i32 %70 to i8, !dbg !989
  %72 = load ptr, ptr %4, align 8, !dbg !990
  %73 = getelementptr inbounds nuw %struct._bmp_source_struct, ptr %72, i32 0, i32 2, !dbg !991
  %74 = load ptr, ptr %73, align 8, !dbg !991
  %75 = getelementptr inbounds ptr, ptr %74, i64 1, !dbg !990
  %76 = load ptr, ptr %75, align 8, !dbg !990
  %77 = load i32, ptr %7, align 4, !dbg !992
  %78 = sext i32 %77 to i64, !dbg !990
  %79 = getelementptr inbounds i8, ptr %76, i64 %78, !dbg !990
  store i8 %71, ptr %79, align 1, !dbg !993
  %80 = load ptr, ptr %4, align 8, !dbg !994
  %81 = call i32 @read_byte(ptr noundef %80), !dbg !995
  %82 = trunc i32 %81 to i8, !dbg !996
  %83 = load ptr, ptr %4, align 8, !dbg !997
  %84 = getelementptr inbounds nuw %struct._bmp_source_struct, ptr %83, i32 0, i32 2, !dbg !998
  %85 = load ptr, ptr %84, align 8, !dbg !998
  %86 = getelementptr inbounds ptr, ptr %85, i64 0, !dbg !997
  %87 = load ptr, ptr %86, align 8, !dbg !997
  %88 = load i32, ptr %7, align 4, !dbg !999
  %89 = sext i32 %88 to i64, !dbg !997
  %90 = getelementptr inbounds i8, ptr %87, i64 %89, !dbg !997
  store i8 %82, ptr %90, align 1, !dbg !1000
  %91 = load ptr, ptr %4, align 8, !dbg !1001
  %92 = call i32 @read_byte(ptr noundef %91), !dbg !1002
  br label %93, !dbg !1003

93:                                               ; preds = %57
  %94 = load i32, ptr %7, align 4, !dbg !1004
  %95 = add nsw i32 %94, 1, !dbg !1004
  store i32 %95, ptr %7, align 4, !dbg !1004
  br label %53, !dbg !1005, !llvm.loop !1006

96:                                               ; preds = %53
  br label %114, !dbg !1008

97:                                               ; preds = %3
  %98 = load ptr, ptr %4, align 8, !dbg !1009
  %99 = getelementptr inbounds nuw %struct._bmp_source_struct, ptr %98, i32 0, i32 1, !dbg !1009
  %100 = load ptr, ptr %99, align 8, !dbg !1009
  %101 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %100, i32 0, i32 0, !dbg !1009
  %102 = load ptr, ptr %101, align 8, !dbg !1009
  %103 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %102, i32 0, i32 5, !dbg !1009
  store i32 1001, ptr %103, align 8, !dbg !1009
  %104 = load ptr, ptr %4, align 8, !dbg !1009
  %105 = getelementptr inbounds nuw %struct._bmp_source_struct, ptr %104, i32 0, i32 1, !dbg !1009
  %106 = load ptr, ptr %105, align 8, !dbg !1009
  %107 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %106, i32 0, i32 0, !dbg !1009
  %108 = load ptr, ptr %107, align 8, !dbg !1009
  %109 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %108, i32 0, i32 0, !dbg !1009
  %110 = load ptr, ptr %109, align 8, !dbg !1009
  %111 = load ptr, ptr %4, align 8, !dbg !1009
  %112 = getelementptr inbounds nuw %struct._bmp_source_struct, ptr %111, i32 0, i32 1, !dbg !1009
  %113 = load ptr, ptr %112, align 8, !dbg !1009
  call void %110(ptr noundef %113), !dbg !1009
  br label %114, !dbg !1010

114:                                              ; preds = %97, %96, %51
  ret void, !dbg !1011
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @read_byte(ptr noundef %0) #0 !dbg !1012 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !1015, !DIExpression(), !1016)
    #dbg_declare(ptr %3, !1017, !DIExpression(), !1018)
  %5 = load ptr, ptr %2, align 8, !dbg !1019
  %6 = getelementptr inbounds nuw %struct._bmp_source_struct, ptr %5, i32 0, i32 0, !dbg !1020
  %7 = getelementptr inbounds nuw %struct.cjpeg_source_struct, ptr %6, i32 0, i32 3, !dbg !1021
  %8 = load ptr, ptr %7, align 8, !dbg !1021
  store ptr %8, ptr %3, align 8, !dbg !1018
    #dbg_declare(ptr %4, !1022, !DIExpression(), !1023)
  %9 = load ptr, ptr %3, align 8, !dbg !1024
  %10 = call i32 @getc(ptr noundef %9), !dbg !1026
  store i32 %10, ptr %4, align 4, !dbg !1027
  %11 = icmp eq i32 %10, -1, !dbg !1028
  br i1 %11, label %12, label %29, !dbg !1028

12:                                               ; preds = %1
  %13 = load ptr, ptr %2, align 8, !dbg !1029
  %14 = getelementptr inbounds nuw %struct._bmp_source_struct, ptr %13, i32 0, i32 1, !dbg !1029
  %15 = load ptr, ptr %14, align 8, !dbg !1029
  %16 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %15, i32 0, i32 0, !dbg !1029
  %17 = load ptr, ptr %16, align 8, !dbg !1029
  %18 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %17, i32 0, i32 5, !dbg !1029
  store i32 42, ptr %18, align 8, !dbg !1029
  %19 = load ptr, ptr %2, align 8, !dbg !1029
  %20 = getelementptr inbounds nuw %struct._bmp_source_struct, ptr %19, i32 0, i32 1, !dbg !1029
  %21 = load ptr, ptr %20, align 8, !dbg !1029
  %22 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %21, i32 0, i32 0, !dbg !1029
  %23 = load ptr, ptr %22, align 8, !dbg !1029
  %24 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %23, i32 0, i32 0, !dbg !1029
  %25 = load ptr, ptr %24, align 8, !dbg !1029
  %26 = load ptr, ptr %2, align 8, !dbg !1029
  %27 = getelementptr inbounds nuw %struct._bmp_source_struct, ptr %26, i32 0, i32 1, !dbg !1029
  %28 = load ptr, ptr %27, align 8, !dbg !1029
  call void %25(ptr noundef %28), !dbg !1029
  br label %29, !dbg !1029

29:                                               ; preds = %12, %1
  %30 = load i32, ptr %4, align 4, !dbg !1030
  ret i32 %30, !dbg !1031
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @preload_image(ptr noundef %0, ptr noundef %1) #0 !dbg !1032 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !1033, !DIExpression(), !1034)
  store ptr %1, ptr %4, align 8
    #dbg_declare(ptr %4, !1035, !DIExpression(), !1036)
    #dbg_declare(ptr %5, !1037, !DIExpression(), !1038)
  %13 = load ptr, ptr %4, align 8, !dbg !1039
  store ptr %13, ptr %5, align 8, !dbg !1038
    #dbg_declare(ptr %6, !1040, !DIExpression(), !1041)
  %14 = load ptr, ptr %5, align 8, !dbg !1042
  %15 = getelementptr inbounds nuw %struct._bmp_source_struct, ptr %14, i32 0, i32 0, !dbg !1043
  %16 = getelementptr inbounds nuw %struct.cjpeg_source_struct, ptr %15, i32 0, i32 3, !dbg !1044
  %17 = load ptr, ptr %16, align 8, !dbg !1044
  store ptr %17, ptr %6, align 8, !dbg !1041
    #dbg_declare(ptr %7, !1045, !DIExpression(), !1046)
    #dbg_declare(ptr %8, !1047, !DIExpression(), !1048)
    #dbg_declare(ptr %9, !1049, !DIExpression(), !1050)
    #dbg_declare(ptr %10, !1051, !DIExpression(), !1052)
    #dbg_declare(ptr %11, !1053, !DIExpression(), !1054)
    #dbg_declare(ptr %12, !1055, !DIExpression(), !1056)
  %18 = load ptr, ptr %3, align 8, !dbg !1057
  %19 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %18, i32 0, i32 2, !dbg !1058
  %20 = load ptr, ptr %19, align 8, !dbg !1058
  store ptr %20, ptr %12, align 8, !dbg !1056
  store i32 0, ptr %10, align 4, !dbg !1059
  br label %21, !dbg !1061

21:                                               ; preds = %93, %2
  %22 = load i32, ptr %10, align 4, !dbg !1062
  %23 = load ptr, ptr %3, align 8, !dbg !1064
  %24 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %23, i32 0, i32 7, !dbg !1065
  %25 = load i32, ptr %24, align 4, !dbg !1065
  %26 = icmp ult i32 %22, %25, !dbg !1066
  br i1 %26, label %27, label %96, !dbg !1067

27:                                               ; preds = %21
  %28 = load ptr, ptr %12, align 8, !dbg !1068
  %29 = icmp ne ptr %28, null, !dbg !1071
  br i1 %29, label %30, label %48, !dbg !1071

30:                                               ; preds = %27
  %31 = load i32, ptr %10, align 4, !dbg !1072
  %32 = zext i32 %31 to i64, !dbg !1074
  %33 = load ptr, ptr %12, align 8, !dbg !1075
  %34 = getelementptr inbounds nuw %struct.cdjpeg_progress_mgr, ptr %33, i32 0, i32 0, !dbg !1076
  %35 = getelementptr inbounds nuw %struct.jpeg_progress_mgr, ptr %34, i32 0, i32 1, !dbg !1077
  store i64 %32, ptr %35, align 8, !dbg !1078
  %36 = load ptr, ptr %3, align 8, !dbg !1079
  %37 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %36, i32 0, i32 7, !dbg !1080
  %38 = load i32, ptr %37, align 4, !dbg !1080
  %39 = zext i32 %38 to i64, !dbg !1081
  %40 = load ptr, ptr %12, align 8, !dbg !1082
  %41 = getelementptr inbounds nuw %struct.cdjpeg_progress_mgr, ptr %40, i32 0, i32 0, !dbg !1083
  %42 = getelementptr inbounds nuw %struct.jpeg_progress_mgr, ptr %41, i32 0, i32 2, !dbg !1084
  store i64 %39, ptr %42, align 8, !dbg !1085
  %43 = load ptr, ptr %12, align 8, !dbg !1086
  %44 = getelementptr inbounds nuw %struct.cdjpeg_progress_mgr, ptr %43, i32 0, i32 0, !dbg !1087
  %45 = getelementptr inbounds nuw %struct.jpeg_progress_mgr, ptr %44, i32 0, i32 0, !dbg !1088
  %46 = load ptr, ptr %45, align 8, !dbg !1088
  %47 = load ptr, ptr %3, align 8, !dbg !1089
  call void %46(ptr noundef %47), !dbg !1090
  br label %48, !dbg !1091

48:                                               ; preds = %30, %27
  %49 = load ptr, ptr %3, align 8, !dbg !1092
  %50 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %49, i32 0, i32 1, !dbg !1093
  %51 = load ptr, ptr %50, align 8, !dbg !1093
  %52 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %51, i32 0, i32 7, !dbg !1094
  %53 = load ptr, ptr %52, align 8, !dbg !1094
  %54 = load ptr, ptr %3, align 8, !dbg !1095
  %55 = load ptr, ptr %5, align 8, !dbg !1096
  %56 = getelementptr inbounds nuw %struct._bmp_source_struct, ptr %55, i32 0, i32 3, !dbg !1097
  %57 = load ptr, ptr %56, align 8, !dbg !1097
  %58 = load i32, ptr %10, align 4, !dbg !1098
  %59 = call ptr %53(ptr noundef %54, ptr noundef %57, i32 noundef %58, i32 noundef 1, i32 noundef 1), !dbg !1099
  store ptr %59, ptr %9, align 8, !dbg !1100
  %60 = load ptr, ptr %9, align 8, !dbg !1101
  %61 = getelementptr inbounds ptr, ptr %60, i64 0, !dbg !1101
  %62 = load ptr, ptr %61, align 8, !dbg !1101
  store ptr %62, ptr %8, align 8, !dbg !1102
  %63 = load ptr, ptr %5, align 8, !dbg !1103
  %64 = getelementptr inbounds nuw %struct._bmp_source_struct, ptr %63, i32 0, i32 5, !dbg !1105
  %65 = load i32, ptr %64, align 4, !dbg !1105
  store i32 %65, ptr %11, align 4, !dbg !1106
  br label %66, !dbg !1107

66:                                               ; preds = %89, %48
  %67 = load i32, ptr %11, align 4, !dbg !1108
  %68 = icmp ugt i32 %67, 0, !dbg !1110
  br i1 %68, label %69, label %92, !dbg !1111

69:                                               ; preds = %66
  %70 = load ptr, ptr %6, align 8, !dbg !1112
  %71 = call i32 @getc(ptr noundef %70), !dbg !1115
  store i32 %71, ptr %7, align 4, !dbg !1116
  %72 = icmp eq i32 %71, -1, !dbg !1117
  br i1 %72, label %73, label %84, !dbg !1117

73:                                               ; preds = %69
  %74 = load ptr, ptr %3, align 8, !dbg !1118
  %75 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %74, i32 0, i32 0, !dbg !1118
  %76 = load ptr, ptr %75, align 8, !dbg !1118
  %77 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %76, i32 0, i32 5, !dbg !1118
  store i32 42, ptr %77, align 8, !dbg !1118
  %78 = load ptr, ptr %3, align 8, !dbg !1118
  %79 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %78, i32 0, i32 0, !dbg !1118
  %80 = load ptr, ptr %79, align 8, !dbg !1118
  %81 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %80, i32 0, i32 0, !dbg !1118
  %82 = load ptr, ptr %81, align 8, !dbg !1118
  %83 = load ptr, ptr %3, align 8, !dbg !1118
  call void %82(ptr noundef %83), !dbg !1118
  br label %84, !dbg !1118

84:                                               ; preds = %73, %69
  %85 = load i32, ptr %7, align 4, !dbg !1119
  %86 = trunc i32 %85 to i8, !dbg !1120
  %87 = load ptr, ptr %8, align 8, !dbg !1121
  %88 = getelementptr inbounds nuw i8, ptr %87, i32 1, !dbg !1121
  store ptr %88, ptr %8, align 8, !dbg !1121
  store i8 %86, ptr %87, align 1, !dbg !1122
  br label %89, !dbg !1123

89:                                               ; preds = %84
  %90 = load i32, ptr %11, align 4, !dbg !1124
  %91 = add i32 %90, -1, !dbg !1124
  store i32 %91, ptr %11, align 4, !dbg !1124
  br label %66, !dbg !1125, !llvm.loop !1126

92:                                               ; preds = %66
  br label %93, !dbg !1128

93:                                               ; preds = %92
  %94 = load i32, ptr %10, align 4, !dbg !1129
  %95 = add i32 %94, 1, !dbg !1129
  store i32 %95, ptr %10, align 4, !dbg !1129
  br label %21, !dbg !1130, !llvm.loop !1131

96:                                               ; preds = %21
  %97 = load ptr, ptr %12, align 8, !dbg !1133
  %98 = icmp ne ptr %97, null, !dbg !1135
  br i1 %98, label %99, label %104, !dbg !1135

99:                                               ; preds = %96
  %100 = load ptr, ptr %12, align 8, !dbg !1136
  %101 = getelementptr inbounds nuw %struct.cdjpeg_progress_mgr, ptr %100, i32 0, i32 1, !dbg !1137
  %102 = load i32, ptr %101, align 8, !dbg !1138
  %103 = add nsw i32 %102, 1, !dbg !1138
  store i32 %103, ptr %101, align 8, !dbg !1138
  br label %104, !dbg !1136

104:                                              ; preds = %99, %96
  %105 = load ptr, ptr %5, align 8, !dbg !1139
  %106 = getelementptr inbounds nuw %struct._bmp_source_struct, ptr %105, i32 0, i32 6, !dbg !1140
  %107 = load i32, ptr %106, align 8, !dbg !1140
  switch i32 %107, label %116 [
    i32 8, label %108
    i32 24, label %112
  ], !dbg !1141

108:                                              ; preds = %104
  %109 = load ptr, ptr %5, align 8, !dbg !1142
  %110 = getelementptr inbounds nuw %struct._bmp_source_struct, ptr %109, i32 0, i32 0, !dbg !1144
  %111 = getelementptr inbounds nuw %struct.cjpeg_source_struct, ptr %110, i32 0, i32 1, !dbg !1145
  store ptr @get_8bit_row, ptr %111, align 8, !dbg !1146
  br label %127, !dbg !1147

112:                                              ; preds = %104
  %113 = load ptr, ptr %5, align 8, !dbg !1148
  %114 = getelementptr inbounds nuw %struct._bmp_source_struct, ptr %113, i32 0, i32 0, !dbg !1149
  %115 = getelementptr inbounds nuw %struct.cjpeg_source_struct, ptr %114, i32 0, i32 1, !dbg !1150
  store ptr @get_24bit_row, ptr %115, align 8, !dbg !1151
  br label %127, !dbg !1152

116:                                              ; preds = %104
  %117 = load ptr, ptr %3, align 8, !dbg !1153
  %118 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %117, i32 0, i32 0, !dbg !1153
  %119 = load ptr, ptr %118, align 8, !dbg !1153
  %120 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %119, i32 0, i32 5, !dbg !1153
  store i32 1002, ptr %120, align 8, !dbg !1153
  %121 = load ptr, ptr %3, align 8, !dbg !1153
  %122 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %121, i32 0, i32 0, !dbg !1153
  %123 = load ptr, ptr %122, align 8, !dbg !1153
  %124 = getelementptr inbounds nuw %struct.jpeg_error_mgr, ptr %123, i32 0, i32 0, !dbg !1153
  %125 = load ptr, ptr %124, align 8, !dbg !1153
  %126 = load ptr, ptr %3, align 8, !dbg !1153
  call void %125(ptr noundef %126), !dbg !1153
  br label %127, !dbg !1154

127:                                              ; preds = %116, %112, %108
  %128 = load ptr, ptr %3, align 8, !dbg !1155
  %129 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %128, i32 0, i32 7, !dbg !1156
  %130 = load i32, ptr %129, align 4, !dbg !1156
  %131 = load ptr, ptr %5, align 8, !dbg !1157
  %132 = getelementptr inbounds nuw %struct._bmp_source_struct, ptr %131, i32 0, i32 4, !dbg !1158
  store i32 %130, ptr %132, align 8, !dbg !1159
  %133 = load ptr, ptr %5, align 8, !dbg !1160
  %134 = getelementptr inbounds nuw %struct._bmp_source_struct, ptr %133, i32 0, i32 0, !dbg !1161
  %135 = getelementptr inbounds nuw %struct.cjpeg_source_struct, ptr %134, i32 0, i32 1, !dbg !1162
  %136 = load ptr, ptr %135, align 8, !dbg !1162
  %137 = load ptr, ptr %3, align 8, !dbg !1163
  %138 = load ptr, ptr %4, align 8, !dbg !1164
  %139 = call i32 %136(ptr noundef %137, ptr noundef %138), !dbg !1165
  ret i32 %139, !dbg !1166
}

declare i32 @getc(ptr noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @get_8bit_row(ptr noundef %0, ptr noundef %1) #0 !dbg !1167 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !1168, !DIExpression(), !1169)
  store ptr %1, ptr %4, align 8
    #dbg_declare(ptr %4, !1170, !DIExpression(), !1171)
    #dbg_declare(ptr %5, !1172, !DIExpression(), !1173)
  %12 = load ptr, ptr %4, align 8, !dbg !1174
  store ptr %12, ptr %5, align 8, !dbg !1173
    #dbg_declare(ptr %6, !1175, !DIExpression(), !1176)
  %13 = load ptr, ptr %5, align 8, !dbg !1177
  %14 = getelementptr inbounds nuw %struct._bmp_source_struct, ptr %13, i32 0, i32 2, !dbg !1178
  %15 = load ptr, ptr %14, align 8, !dbg !1178
  store ptr %15, ptr %6, align 8, !dbg !1176
    #dbg_declare(ptr %7, !1179, !DIExpression(), !1180)
    #dbg_declare(ptr %8, !1181, !DIExpression(), !1182)
    #dbg_declare(ptr %9, !1183, !DIExpression(), !1184)
    #dbg_declare(ptr %10, !1185, !DIExpression(), !1186)
    #dbg_declare(ptr %11, !1187, !DIExpression(), !1188)
  %16 = load ptr, ptr %5, align 8, !dbg !1189
  %17 = getelementptr inbounds nuw %struct._bmp_source_struct, ptr %16, i32 0, i32 4, !dbg !1190
  %18 = load i32, ptr %17, align 8, !dbg !1191
  %19 = add i32 %18, -1, !dbg !1191
  store i32 %19, ptr %17, align 8, !dbg !1191
  %20 = load ptr, ptr %3, align 8, !dbg !1192
  %21 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %20, i32 0, i32 1, !dbg !1193
  %22 = load ptr, ptr %21, align 8, !dbg !1193
  %23 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %22, i32 0, i32 7, !dbg !1194
  %24 = load ptr, ptr %23, align 8, !dbg !1194
  %25 = load ptr, ptr %3, align 8, !dbg !1195
  %26 = load ptr, ptr %5, align 8, !dbg !1196
  %27 = getelementptr inbounds nuw %struct._bmp_source_struct, ptr %26, i32 0, i32 3, !dbg !1197
  %28 = load ptr, ptr %27, align 8, !dbg !1197
  %29 = load ptr, ptr %5, align 8, !dbg !1198
  %30 = getelementptr inbounds nuw %struct._bmp_source_struct, ptr %29, i32 0, i32 4, !dbg !1199
  %31 = load i32, ptr %30, align 8, !dbg !1199
  %32 = call ptr %24(ptr noundef %25, ptr noundef %28, i32 noundef %31, i32 noundef 1, i32 noundef 0), !dbg !1200
  store ptr %32, ptr %7, align 8, !dbg !1201
  %33 = load ptr, ptr %7, align 8, !dbg !1202
  %34 = getelementptr inbounds ptr, ptr %33, i64 0, !dbg !1202
  %35 = load ptr, ptr %34, align 8, !dbg !1202
  store ptr %35, ptr %9, align 8, !dbg !1203
  %36 = load ptr, ptr %5, align 8, !dbg !1204
  %37 = getelementptr inbounds nuw %struct._bmp_source_struct, ptr %36, i32 0, i32 0, !dbg !1205
  %38 = getelementptr inbounds nuw %struct.cjpeg_source_struct, ptr %37, i32 0, i32 4, !dbg !1206
  %39 = load ptr, ptr %38, align 8, !dbg !1206
  %40 = getelementptr inbounds ptr, ptr %39, i64 0, !dbg !1204
  %41 = load ptr, ptr %40, align 8, !dbg !1204
  store ptr %41, ptr %10, align 8, !dbg !1207
  %42 = load ptr, ptr %3, align 8, !dbg !1208
  %43 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %42, i32 0, i32 6, !dbg !1210
  %44 = load i32, ptr %43, align 8, !dbg !1210
  store i32 %44, ptr %11, align 4, !dbg !1211
  br label %45, !dbg !1212

45:                                               ; preds = %80, %2
  %46 = load i32, ptr %11, align 4, !dbg !1213
  %47 = icmp ugt i32 %46, 0, !dbg !1215
  br i1 %47, label %48, label %83, !dbg !1216

48:                                               ; preds = %45
  %49 = load ptr, ptr %9, align 8, !dbg !1217
  %50 = getelementptr inbounds nuw i8, ptr %49, i32 1, !dbg !1217
  store ptr %50, ptr %9, align 8, !dbg !1217
  %51 = load i8, ptr %49, align 1, !dbg !1217
  %52 = zext i8 %51 to i32, !dbg !1217
  store i32 %52, ptr %8, align 4, !dbg !1219
  %53 = load ptr, ptr %6, align 8, !dbg !1220
  %54 = getelementptr inbounds ptr, ptr %53, i64 0, !dbg !1220
  %55 = load ptr, ptr %54, align 8, !dbg !1220
  %56 = load i32, ptr %8, align 4, !dbg !1221
  %57 = sext i32 %56 to i64, !dbg !1220
  %58 = getelementptr inbounds i8, ptr %55, i64 %57, !dbg !1220
  %59 = load i8, ptr %58, align 1, !dbg !1220
  %60 = load ptr, ptr %10, align 8, !dbg !1222
  %61 = getelementptr inbounds nuw i8, ptr %60, i32 1, !dbg !1222
  store ptr %61, ptr %10, align 8, !dbg !1222
  store i8 %59, ptr %60, align 1, !dbg !1223
  %62 = load ptr, ptr %6, align 8, !dbg !1224
  %63 = getelementptr inbounds ptr, ptr %62, i64 1, !dbg !1224
  %64 = load ptr, ptr %63, align 8, !dbg !1224
  %65 = load i32, ptr %8, align 4, !dbg !1225
  %66 = sext i32 %65 to i64, !dbg !1224
  %67 = getelementptr inbounds i8, ptr %64, i64 %66, !dbg !1224
  %68 = load i8, ptr %67, align 1, !dbg !1224
  %69 = load ptr, ptr %10, align 8, !dbg !1226
  %70 = getelementptr inbounds nuw i8, ptr %69, i32 1, !dbg !1226
  store ptr %70, ptr %10, align 8, !dbg !1226
  store i8 %68, ptr %69, align 1, !dbg !1227
  %71 = load ptr, ptr %6, align 8, !dbg !1228
  %72 = getelementptr inbounds ptr, ptr %71, i64 2, !dbg !1228
  %73 = load ptr, ptr %72, align 8, !dbg !1228
  %74 = load i32, ptr %8, align 4, !dbg !1229
  %75 = sext i32 %74 to i64, !dbg !1228
  %76 = getelementptr inbounds i8, ptr %73, i64 %75, !dbg !1228
  %77 = load i8, ptr %76, align 1, !dbg !1228
  %78 = load ptr, ptr %10, align 8, !dbg !1230
  %79 = getelementptr inbounds nuw i8, ptr %78, i32 1, !dbg !1230
  store ptr %79, ptr %10, align 8, !dbg !1230
  store i8 %77, ptr %78, align 1, !dbg !1231
  br label %80, !dbg !1232

80:                                               ; preds = %48
  %81 = load i32, ptr %11, align 4, !dbg !1233
  %82 = add i32 %81, -1, !dbg !1233
  store i32 %82, ptr %11, align 4, !dbg !1233
  br label %45, !dbg !1234, !llvm.loop !1235

83:                                               ; preds = %45
  ret i32 1, !dbg !1237
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @get_24bit_row(ptr noundef %0, ptr noundef %1) #0 !dbg !1238 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !1239, !DIExpression(), !1240)
  store ptr %1, ptr %4, align 8
    #dbg_declare(ptr %4, !1241, !DIExpression(), !1242)
    #dbg_declare(ptr %5, !1243, !DIExpression(), !1244)
  %10 = load ptr, ptr %4, align 8, !dbg !1245
  store ptr %10, ptr %5, align 8, !dbg !1244
    #dbg_declare(ptr %6, !1246, !DIExpression(), !1247)
    #dbg_declare(ptr %7, !1248, !DIExpression(), !1249)
    #dbg_declare(ptr %8, !1250, !DIExpression(), !1251)
    #dbg_declare(ptr %9, !1252, !DIExpression(), !1253)
  %11 = load ptr, ptr %5, align 8, !dbg !1254
  %12 = getelementptr inbounds nuw %struct._bmp_source_struct, ptr %11, i32 0, i32 4, !dbg !1255
  %13 = load i32, ptr %12, align 8, !dbg !1256
  %14 = add i32 %13, -1, !dbg !1256
  store i32 %14, ptr %12, align 8, !dbg !1256
  %15 = load ptr, ptr %3, align 8, !dbg !1257
  %16 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %15, i32 0, i32 1, !dbg !1258
  %17 = load ptr, ptr %16, align 8, !dbg !1258
  %18 = getelementptr inbounds nuw %struct.jpeg_memory_mgr, ptr %17, i32 0, i32 7, !dbg !1259
  %19 = load ptr, ptr %18, align 8, !dbg !1259
  %20 = load ptr, ptr %3, align 8, !dbg !1260
  %21 = load ptr, ptr %5, align 8, !dbg !1261
  %22 = getelementptr inbounds nuw %struct._bmp_source_struct, ptr %21, i32 0, i32 3, !dbg !1262
  %23 = load ptr, ptr %22, align 8, !dbg !1262
  %24 = load ptr, ptr %5, align 8, !dbg !1263
  %25 = getelementptr inbounds nuw %struct._bmp_source_struct, ptr %24, i32 0, i32 4, !dbg !1264
  %26 = load i32, ptr %25, align 8, !dbg !1264
  %27 = call ptr %19(ptr noundef %20, ptr noundef %23, i32 noundef %26, i32 noundef 1, i32 noundef 0), !dbg !1265
  store ptr %27, ptr %6, align 8, !dbg !1266
  %28 = load ptr, ptr %6, align 8, !dbg !1267
  %29 = getelementptr inbounds ptr, ptr %28, i64 0, !dbg !1267
  %30 = load ptr, ptr %29, align 8, !dbg !1267
  store ptr %30, ptr %7, align 8, !dbg !1268
  %31 = load ptr, ptr %5, align 8, !dbg !1269
  %32 = getelementptr inbounds nuw %struct._bmp_source_struct, ptr %31, i32 0, i32 0, !dbg !1270
  %33 = getelementptr inbounds nuw %struct.cjpeg_source_struct, ptr %32, i32 0, i32 4, !dbg !1271
  %34 = load ptr, ptr %33, align 8, !dbg !1271
  %35 = getelementptr inbounds ptr, ptr %34, i64 0, !dbg !1269
  %36 = load ptr, ptr %35, align 8, !dbg !1269
  store ptr %36, ptr %8, align 8, !dbg !1272
  %37 = load ptr, ptr %3, align 8, !dbg !1273
  %38 = getelementptr inbounds nuw %struct.jpeg_compress_struct, ptr %37, i32 0, i32 6, !dbg !1275
  %39 = load i32, ptr %38, align 8, !dbg !1275
  store i32 %39, ptr %9, align 4, !dbg !1276
  br label %40, !dbg !1277

40:                                               ; preds = %61, %2
  %41 = load i32, ptr %9, align 4, !dbg !1278
  %42 = icmp ugt i32 %41, 0, !dbg !1280
  br i1 %42, label %43, label %64, !dbg !1281

43:                                               ; preds = %40
  %44 = load ptr, ptr %7, align 8, !dbg !1282
  %45 = getelementptr inbounds nuw i8, ptr %44, i32 1, !dbg !1282
  store ptr %45, ptr %7, align 8, !dbg !1282
  %46 = load i8, ptr %44, align 1, !dbg !1284
  %47 = load ptr, ptr %8, align 8, !dbg !1285
  %48 = getelementptr inbounds i8, ptr %47, i64 2, !dbg !1285
  store i8 %46, ptr %48, align 1, !dbg !1286
  %49 = load ptr, ptr %7, align 8, !dbg !1287
  %50 = getelementptr inbounds nuw i8, ptr %49, i32 1, !dbg !1287
  store ptr %50, ptr %7, align 8, !dbg !1287
  %51 = load i8, ptr %49, align 1, !dbg !1288
  %52 = load ptr, ptr %8, align 8, !dbg !1289
  %53 = getelementptr inbounds i8, ptr %52, i64 1, !dbg !1289
  store i8 %51, ptr %53, align 1, !dbg !1290
  %54 = load ptr, ptr %7, align 8, !dbg !1291
  %55 = getelementptr inbounds nuw i8, ptr %54, i32 1, !dbg !1291
  store ptr %55, ptr %7, align 8, !dbg !1291
  %56 = load i8, ptr %54, align 1, !dbg !1292
  %57 = load ptr, ptr %8, align 8, !dbg !1293
  %58 = getelementptr inbounds i8, ptr %57, i64 0, !dbg !1293
  store i8 %56, ptr %58, align 1, !dbg !1294
  %59 = load ptr, ptr %8, align 8, !dbg !1295
  %60 = getelementptr inbounds i8, ptr %59, i64 3, !dbg !1295
  store ptr %60, ptr %8, align 8, !dbg !1295
  br label %61, !dbg !1296

61:                                               ; preds = %43
  %62 = load i32, ptr %9, align 4, !dbg !1297
  %63 = add i32 %62, -1, !dbg !1297
  store i32 %63, ptr %9, align 4, !dbg !1297
  br label %40, !dbg !1298, !llvm.loop !1299

64:                                               ; preds = %40
  ret i32 1, !dbg !1301
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!579, !580, !581, !582, !583, !584, !585}
!llvm.ident = !{!586}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !189, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "cBench/consumer_jpeg_c/src/rdbmp.c", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "c645c2f17288fccb2d81ddc00a5e56e8")
!2 = !{!3, !13, !18, !142}
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
!19 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jerror.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "a232f2460ff0049c960896e323d8710b")
!20 = !{!21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141}
!21 = !DIEnumerator(name: "JMSG_NOMESSAGE", value: 0)
!22 = !DIEnumerator(name: "JERR_ARITH_NOTIMPL", value: 1)
!23 = !DIEnumerator(name: "JERR_BAD_ALIGN_TYPE", value: 2)
!24 = !DIEnumerator(name: "JERR_BAD_ALLOC_CHUNK", value: 3)
!25 = !DIEnumerator(name: "JERR_BAD_BUFFER_MODE", value: 4)
!26 = !DIEnumerator(name: "JERR_BAD_COMPONENT_ID", value: 5)
!27 = !DIEnumerator(name: "JERR_BAD_DCTSIZE", value: 6)
!28 = !DIEnumerator(name: "JERR_BAD_IN_COLORSPACE", value: 7)
!29 = !DIEnumerator(name: "JERR_BAD_J_COLORSPACE", value: 8)
!30 = !DIEnumerator(name: "JERR_BAD_LENGTH", value: 9)
!31 = !DIEnumerator(name: "JERR_BAD_LIB_VERSION", value: 10)
!32 = !DIEnumerator(name: "JERR_BAD_MCU_SIZE", value: 11)
!33 = !DIEnumerator(name: "JERR_BAD_POOL_ID", value: 12)
!34 = !DIEnumerator(name: "JERR_BAD_PRECISION", value: 13)
!35 = !DIEnumerator(name: "JERR_BAD_PROGRESSION", value: 14)
!36 = !DIEnumerator(name: "JERR_BAD_PROG_SCRIPT", value: 15)
!37 = !DIEnumerator(name: "JERR_BAD_SAMPLING", value: 16)
!38 = !DIEnumerator(name: "JERR_BAD_SCAN_SCRIPT", value: 17)
!39 = !DIEnumerator(name: "JERR_BAD_STATE", value: 18)
!40 = !DIEnumerator(name: "JERR_BAD_STRUCT_SIZE", value: 19)
!41 = !DIEnumerator(name: "JERR_BAD_VIRTUAL_ACCESS", value: 20)
!42 = !DIEnumerator(name: "JERR_BUFFER_SIZE", value: 21)
!43 = !DIEnumerator(name: "JERR_CANT_SUSPEND", value: 22)
!44 = !DIEnumerator(name: "JERR_CCIR601_NOTIMPL", value: 23)
!45 = !DIEnumerator(name: "JERR_COMPONENT_COUNT", value: 24)
!46 = !DIEnumerator(name: "JERR_CONVERSION_NOTIMPL", value: 25)
!47 = !DIEnumerator(name: "JERR_DAC_INDEX", value: 26)
!48 = !DIEnumerator(name: "JERR_DAC_VALUE", value: 27)
!49 = !DIEnumerator(name: "JERR_DHT_COUNTS", value: 28)
!50 = !DIEnumerator(name: "JERR_DHT_INDEX", value: 29)
!51 = !DIEnumerator(name: "JERR_DQT_INDEX", value: 30)
!52 = !DIEnumerator(name: "JERR_EMPTY_IMAGE", value: 31)
!53 = !DIEnumerator(name: "JERR_EMS_READ", value: 32)
!54 = !DIEnumerator(name: "JERR_EMS_WRITE", value: 33)
!55 = !DIEnumerator(name: "JERR_EOI_EXPECTED", value: 34)
!56 = !DIEnumerator(name: "JERR_FILE_READ", value: 35)
!57 = !DIEnumerator(name: "JERR_FILE_WRITE", value: 36)
!58 = !DIEnumerator(name: "JERR_FRACT_SAMPLE_NOTIMPL", value: 37)
!59 = !DIEnumerator(name: "JERR_HUFF_CLEN_OVERFLOW", value: 38)
!60 = !DIEnumerator(name: "JERR_HUFF_MISSING_CODE", value: 39)
!61 = !DIEnumerator(name: "JERR_IMAGE_TOO_BIG", value: 40)
!62 = !DIEnumerator(name: "JERR_INPUT_EMPTY", value: 41)
!63 = !DIEnumerator(name: "JERR_INPUT_EOF", value: 42)
!64 = !DIEnumerator(name: "JERR_MISMATCHED_QUANT_TABLE", value: 43)
!65 = !DIEnumerator(name: "JERR_MISSING_DATA", value: 44)
!66 = !DIEnumerator(name: "JERR_MODE_CHANGE", value: 45)
!67 = !DIEnumerator(name: "JERR_NOTIMPL", value: 46)
!68 = !DIEnumerator(name: "JERR_NOT_COMPILED", value: 47)
!69 = !DIEnumerator(name: "JERR_NO_BACKING_STORE", value: 48)
!70 = !DIEnumerator(name: "JERR_NO_HUFF_TABLE", value: 49)
!71 = !DIEnumerator(name: "JERR_NO_IMAGE", value: 50)
!72 = !DIEnumerator(name: "JERR_NO_QUANT_TABLE", value: 51)
!73 = !DIEnumerator(name: "JERR_NO_SOI", value: 52)
!74 = !DIEnumerator(name: "JERR_OUT_OF_MEMORY", value: 53)
!75 = !DIEnumerator(name: "JERR_QUANT_COMPONENTS", value: 54)
!76 = !DIEnumerator(name: "JERR_QUANT_FEW_COLORS", value: 55)
!77 = !DIEnumerator(name: "JERR_QUANT_MANY_COLORS", value: 56)
!78 = !DIEnumerator(name: "JERR_SOF_DUPLICATE", value: 57)
!79 = !DIEnumerator(name: "JERR_SOF_NO_SOS", value: 58)
!80 = !DIEnumerator(name: "JERR_SOF_UNSUPPORTED", value: 59)
!81 = !DIEnumerator(name: "JERR_SOI_DUPLICATE", value: 60)
!82 = !DIEnumerator(name: "JERR_SOS_NO_SOF", value: 61)
!83 = !DIEnumerator(name: "JERR_TFILE_CREATE", value: 62)
!84 = !DIEnumerator(name: "JERR_TFILE_READ", value: 63)
!85 = !DIEnumerator(name: "JERR_TFILE_SEEK", value: 64)
!86 = !DIEnumerator(name: "JERR_TFILE_WRITE", value: 65)
!87 = !DIEnumerator(name: "JERR_TOO_LITTLE_DATA", value: 66)
!88 = !DIEnumerator(name: "JERR_UNKNOWN_MARKER", value: 67)
!89 = !DIEnumerator(name: "JERR_VIRTUAL_BUG", value: 68)
!90 = !DIEnumerator(name: "JERR_WIDTH_OVERFLOW", value: 69)
!91 = !DIEnumerator(name: "JERR_XMS_READ", value: 70)
!92 = !DIEnumerator(name: "JERR_XMS_WRITE", value: 71)
!93 = !DIEnumerator(name: "JMSG_COPYRIGHT", value: 72)
!94 = !DIEnumerator(name: "JMSG_VERSION", value: 73)
!95 = !DIEnumerator(name: "JTRC_16BIT_TABLES", value: 74)
!96 = !DIEnumerator(name: "JTRC_ADOBE", value: 75)
!97 = !DIEnumerator(name: "JTRC_APP0", value: 76)
!98 = !DIEnumerator(name: "JTRC_APP14", value: 77)
!99 = !DIEnumerator(name: "JTRC_DAC", value: 78)
!100 = !DIEnumerator(name: "JTRC_DHT", value: 79)
!101 = !DIEnumerator(name: "JTRC_DQT", value: 80)
!102 = !DIEnumerator(name: "JTRC_DRI", value: 81)
!103 = !DIEnumerator(name: "JTRC_EMS_CLOSE", value: 82)
!104 = !DIEnumerator(name: "JTRC_EMS_OPEN", value: 83)
!105 = !DIEnumerator(name: "JTRC_EOI", value: 84)
!106 = !DIEnumerator(name: "JTRC_HUFFBITS", value: 85)
!107 = !DIEnumerator(name: "JTRC_JFIF", value: 86)
!108 = !DIEnumerator(name: "JTRC_JFIF_BADTHUMBNAILSIZE", value: 87)
!109 = !DIEnumerator(name: "JTRC_JFIF_MINOR", value: 88)
!110 = !DIEnumerator(name: "JTRC_JFIF_THUMBNAIL", value: 89)
!111 = !DIEnumerator(name: "JTRC_MISC_MARKER", value: 90)
!112 = !DIEnumerator(name: "JTRC_PARMLESS_MARKER", value: 91)
!113 = !DIEnumerator(name: "JTRC_QUANTVALS", value: 92)
!114 = !DIEnumerator(name: "JTRC_QUANT_3_NCOLORS", value: 93)
!115 = !DIEnumerator(name: "JTRC_QUANT_NCOLORS", value: 94)
!116 = !DIEnumerator(name: "JTRC_QUANT_SELECTED", value: 95)
!117 = !DIEnumerator(name: "JTRC_RECOVERY_ACTION", value: 96)
!118 = !DIEnumerator(name: "JTRC_RST", value: 97)
!119 = !DIEnumerator(name: "JTRC_SMOOTH_NOTIMPL", value: 98)
!120 = !DIEnumerator(name: "JTRC_SOF", value: 99)
!121 = !DIEnumerator(name: "JTRC_SOF_COMPONENT", value: 100)
!122 = !DIEnumerator(name: "JTRC_SOI", value: 101)
!123 = !DIEnumerator(name: "JTRC_SOS", value: 102)
!124 = !DIEnumerator(name: "JTRC_SOS_COMPONENT", value: 103)
!125 = !DIEnumerator(name: "JTRC_SOS_PARAMS", value: 104)
!126 = !DIEnumerator(name: "JTRC_TFILE_CLOSE", value: 105)
!127 = !DIEnumerator(name: "JTRC_TFILE_OPEN", value: 106)
!128 = !DIEnumerator(name: "JTRC_UNKNOWN_IDS", value: 107)
!129 = !DIEnumerator(name: "JTRC_XMS_CLOSE", value: 108)
!130 = !DIEnumerator(name: "JTRC_XMS_OPEN", value: 109)
!131 = !DIEnumerator(name: "JWRN_ADOBE_XFORM", value: 110)
!132 = !DIEnumerator(name: "JWRN_BOGUS_PROGRESSION", value: 111)
!133 = !DIEnumerator(name: "JWRN_EXTRANEOUS_DATA", value: 112)
!134 = !DIEnumerator(name: "JWRN_HIT_MARKER", value: 113)
!135 = !DIEnumerator(name: "JWRN_HUFF_BAD_CODE", value: 114)
!136 = !DIEnumerator(name: "JWRN_JFIF_MAJOR", value: 115)
!137 = !DIEnumerator(name: "JWRN_JPEG_EOF", value: 116)
!138 = !DIEnumerator(name: "JWRN_MUST_RESYNC", value: 117)
!139 = !DIEnumerator(name: "JWRN_NOT_SEQUENTIAL", value: 118)
!140 = !DIEnumerator(name: "JWRN_TOO_MUCH_DATA", value: 119)
!141 = !DIEnumerator(name: "JMSG_LASTMSGCODE", value: 120)
!142 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !143, line: 33, baseType: !5, size: 32, elements: !144)
!143 = !DIFile(filename: "cBench/consumer_jpeg_c/src/cderror.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "023c024f882773b78143e7b16d959dcc")
!144 = !{!145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188}
!145 = !DIEnumerator(name: "JMSG_FIRSTADDONCODE", value: 1000)
!146 = !DIEnumerator(name: "JERR_BMP_BADCMAP", value: 1001)
!147 = !DIEnumerator(name: "JERR_BMP_BADDEPTH", value: 1002)
!148 = !DIEnumerator(name: "JERR_BMP_BADHEADER", value: 1003)
!149 = !DIEnumerator(name: "JERR_BMP_BADPLANES", value: 1004)
!150 = !DIEnumerator(name: "JERR_BMP_COLORSPACE", value: 1005)
!151 = !DIEnumerator(name: "JERR_BMP_COMPRESSED", value: 1006)
!152 = !DIEnumerator(name: "JERR_BMP_NOT", value: 1007)
!153 = !DIEnumerator(name: "JTRC_BMP", value: 1008)
!154 = !DIEnumerator(name: "JTRC_BMP_MAPPED", value: 1009)
!155 = !DIEnumerator(name: "JTRC_BMP_OS2", value: 1010)
!156 = !DIEnumerator(name: "JTRC_BMP_OS2_MAPPED", value: 1011)
!157 = !DIEnumerator(name: "JERR_GIF_BUG", value: 1012)
!158 = !DIEnumerator(name: "JERR_GIF_CODESIZE", value: 1013)
!159 = !DIEnumerator(name: "JERR_GIF_COLORSPACE", value: 1014)
!160 = !DIEnumerator(name: "JERR_GIF_IMAGENOTFOUND", value: 1015)
!161 = !DIEnumerator(name: "JERR_GIF_NOT", value: 1016)
!162 = !DIEnumerator(name: "JTRC_GIF", value: 1017)
!163 = !DIEnumerator(name: "JTRC_GIF_BADVERSION", value: 1018)
!164 = !DIEnumerator(name: "JTRC_GIF_EXTENSION", value: 1019)
!165 = !DIEnumerator(name: "JTRC_GIF_NONSQUARE", value: 1020)
!166 = !DIEnumerator(name: "JWRN_GIF_BADDATA", value: 1021)
!167 = !DIEnumerator(name: "JWRN_GIF_CHAR", value: 1022)
!168 = !DIEnumerator(name: "JWRN_GIF_ENDCODE", value: 1023)
!169 = !DIEnumerator(name: "JWRN_GIF_NOMOREDATA", value: 1024)
!170 = !DIEnumerator(name: "JERR_PPM_COLORSPACE", value: 1025)
!171 = !DIEnumerator(name: "JERR_PPM_NONNUMERIC", value: 1026)
!172 = !DIEnumerator(name: "JERR_PPM_NOT", value: 1027)
!173 = !DIEnumerator(name: "JTRC_PGM", value: 1028)
!174 = !DIEnumerator(name: "JTRC_PGM_TEXT", value: 1029)
!175 = !DIEnumerator(name: "JTRC_PPM", value: 1030)
!176 = !DIEnumerator(name: "JTRC_PPM_TEXT", value: 1031)
!177 = !DIEnumerator(name: "JERR_TGA_BADCMAP", value: 1032)
!178 = !DIEnumerator(name: "JERR_TGA_BADPARMS", value: 1033)
!179 = !DIEnumerator(name: "JERR_TGA_COLORSPACE", value: 1034)
!180 = !DIEnumerator(name: "JTRC_TGA", value: 1035)
!181 = !DIEnumerator(name: "JTRC_TGA_GRAY", value: 1036)
!182 = !DIEnumerator(name: "JTRC_TGA_MAPPED", value: 1037)
!183 = !DIEnumerator(name: "JERR_BAD_CMAP_FILE", value: 1038)
!184 = !DIEnumerator(name: "JERR_TOO_MANY_COLORS", value: 1039)
!185 = !DIEnumerator(name: "JERR_UNGETC_FAILED", value: 1040)
!186 = !DIEnumerator(name: "JERR_UNKNOWN_FORMAT", value: 1041)
!187 = !DIEnumerator(name: "JERR_UNSUPPORTED_FORMAT", value: 1042)
!188 = !DIEnumerator(name: "JMSG_LASTADDONCODE", value: 1043)
!189 = !{!190, !214, !229, !500, !227, !5, !228, !570, !395, !244, !571, !241, !289}
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "bmp_source_ptr", file: !1, line: 50, baseType: !191)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_bmp_source_struct", file: !1, line: 52, size: 704, elements: !193)
!193 = !{!194, !564, !565, !566, !567, !568, !569}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "pub", scope: !192, file: !1, line: 53, baseType: !195, size: 384)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cjpeg_source_struct", file: !196, line: 26, size: 384, elements: !197)
!196 = !DIFile(filename: "cBench/consumer_jpeg_c/src/cdjpeg.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "bced6b83fac9f9ba4577dcff987736ac")
!197 = !{!198, !502, !506, !507, !562, !563}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "start_input", scope: !195, file: !196, line: 27, baseType: !199, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = !DISubroutineType(types: !201)
!201 = !{null, !202, !500}
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "j_compress_ptr", file: !4, line: 249, baseType: !203)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_compress_struct", file: !4, line: 255, size: 3968, elements: !205)
!205 = !{!206, !333, !334, !335, !336, !337, !354, !355, !356, !357, !359, !361, !362, !363, !364, !399, !403, !419, !420, !424, !425, !426, !427, !440, !441, !442, !443, !444, !445, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !462, !463, !464, !465, !469, !470, !471, !472, !473, !476, !479, !482, !485, !488, !491, !494, !497}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !204, file: !4, line: 256, baseType: !207, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_error_mgr", file: !4, line: 618, size: 1344, elements: !209)
!209 = !{!210, !301, !302, !303, !309, !310, !311, !322, !323, !324, !329, !330, !331, !332}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "error_exit", scope: !208, file: !4, line: 620, baseType: !211, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = !DISubroutineType(types: !213)
!213 = !{null, !214}
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "j_common_ptr", file: !4, line: 248, baseType: !215)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_common_struct", file: !4, line: 240, size: 256, elements: !217)
!217 = !{!218, !219, !290, !299, !300}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !216, file: !4, line: 241, baseType: !207, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !216, file: !4, line: 241, baseType: !220, size: 64, offset: 64)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_memory_mgr", file: !4, line: 731, size: 768, elements: !222)
!222 = !{!223, !232, !233, !245, !259, !267, !274, !275, !279, !283, !287, !288}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_small", scope: !221, file: !4, line: 733, baseType: !224, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = !DISubroutineType(types: !226)
!226 = !{!227, !214, !228, !229}
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!228 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !230, line: 18, baseType: !231)
!230 = !DIFile(filename: "/usr/local/lib/clang/20/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!231 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_large", scope: !221, file: !4, line: 735, baseType: !224, size: 64, offset: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_sarray", scope: !221, file: !4, line: 737, baseType: !234, size: 64, offset: 128)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = !DISubroutineType(types: !236)
!236 = !{!237, !214, !228, !244, !244}
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPARRAY", file: !4, line: 67, baseType: !238)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPROW", file: !4, line: 66, baseType: !240)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "JSAMPLE", file: !242, line: 59, baseType: !243)
!242 = !DIFile(filename: "cBench/consumer_jpeg_c/src/jmorecfg.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "56a0eda58fafa6bdd5498f702a998c09")
!243 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "JDIMENSION", file: !242, line: 171, baseType: !5)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_barray", scope: !221, file: !4, line: 740, baseType: !246, size: 64, offset: 192)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = !DISubroutineType(types: !248)
!248 = !{!249, !214, !228, !244, !244}
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "JBLOCKARRAY", file: !4, line: 72, baseType: !250)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "JBLOCKROW", file: !4, line: 71, baseType: !252)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "JBLOCK", file: !4, line: 70, baseType: !254)
!254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !255, size: 1024, elements: !257)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "JCOEF", file: !242, line: 99, baseType: !256)
!256 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!257 = !{!258}
!258 = !DISubrange(count: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "request_virt_sarray", scope: !221, file: !4, line: 743, baseType: !260, size: 64, offset: 256)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = !DISubroutineType(types: !262)
!262 = !{!263, !214, !228, !266, !244, !244, !244}
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "jvirt_sarray_ptr", file: !4, line: 727, baseType: !264)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DICompositeType(tag: DW_TAG_structure_type, name: "jvirt_sarray_control", file: !4, line: 727, flags: DIFlagFwdDecl)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "boolean", file: !242, line: 227, baseType: !228)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "request_virt_barray", scope: !221, file: !4, line: 749, baseType: !268, size: 64, offset: 320)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = !DISubroutineType(types: !270)
!270 = !{!271, !214, !228, !266, !244, !244, !244}
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "jvirt_barray_ptr", file: !4, line: 728, baseType: !272)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DICompositeType(tag: DW_TAG_structure_type, name: "jvirt_barray_control", file: !4, line: 728, flags: DIFlagFwdDecl)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "realize_virt_arrays", scope: !221, file: !4, line: 755, baseType: !211, size: 64, offset: 384)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "access_virt_sarray", scope: !221, file: !4, line: 756, baseType: !276, size: 64, offset: 448)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DISubroutineType(types: !278)
!278 = !{!237, !214, !263, !244, !244, !266}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "access_virt_barray", scope: !221, file: !4, line: 761, baseType: !280, size: 64, offset: 512)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = !DISubroutineType(types: !282)
!282 = !{!249, !214, !271, !244, !244, !266}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "free_pool", scope: !221, file: !4, line: 766, baseType: !284, size: 64, offset: 576)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = !DISubroutineType(types: !286)
!286 = !{null, !214, !228}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "self_destruct", scope: !221, file: !4, line: 767, baseType: !211, size: 64, offset: 640)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "max_memory_to_use", scope: !221, file: !4, line: 774, baseType: !289, size: 64, offset: 704)
!289 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "progress", scope: !216, file: !4, line: 241, baseType: !291, size: 64, offset: 128)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_progress_mgr", file: !4, line: 676, size: 256, elements: !293)
!293 = !{!294, !295, !296, !297, !298}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "progress_monitor", scope: !292, file: !4, line: 677, baseType: !211, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "pass_counter", scope: !292, file: !4, line: 679, baseType: !289, size: 64, offset: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "pass_limit", scope: !292, file: !4, line: 680, baseType: !289, size: 64, offset: 128)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "completed_passes", scope: !292, file: !4, line: 681, baseType: !228, size: 32, offset: 192)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "total_passes", scope: !292, file: !4, line: 682, baseType: !228, size: 32, offset: 224)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "is_decompressor", scope: !216, file: !4, line: 241, baseType: !266, size: 32, offset: 192)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "global_state", scope: !216, file: !4, line: 241, baseType: !228, size: 32, offset: 224)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "emit_message", scope: !208, file: !4, line: 622, baseType: !284, size: 64, offset: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "output_message", scope: !208, file: !4, line: 624, baseType: !211, size: 64, offset: 128)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "format_message", scope: !208, file: !4, line: 626, baseType: !304, size: 64, offset: 192)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = !DISubroutineType(types: !306)
!306 = !{null, !214, !307}
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "reset_error_mgr", scope: !208, file: !4, line: 629, baseType: !211, size: 64, offset: 256)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "msg_code", scope: !208, file: !4, line: 634, baseType: !228, size: 32, offset: 320)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "msg_parm", scope: !208, file: !4, line: 639, baseType: !312, size: 640, offset: 352)
!312 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !208, file: !4, line: 636, size: 640, elements: !313)
!313 = !{!314, !318}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !312, file: !4, line: 637, baseType: !315, size: 256)
!315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !228, size: 256, elements: !316)
!316 = !{!317}
!317 = !DISubrange(count: 8)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !312, file: !4, line: 638, baseType: !319, size: 640)
!319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !308, size: 640, elements: !320)
!320 = !{!321}
!321 = !DISubrange(count: 80)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "trace_level", scope: !208, file: !4, line: 643, baseType: !228, size: 32, offset: 992)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "num_warnings", scope: !208, file: !4, line: 651, baseType: !289, size: 64, offset: 1024)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "jpeg_message_table", scope: !208, file: !4, line: 663, baseType: !325, size: 64, offset: 1088)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !327)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !308)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "last_jpeg_message", scope: !208, file: !4, line: 664, baseType: !228, size: 32, offset: 1152)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "addon_message_table", scope: !208, file: !4, line: 668, baseType: !325, size: 64, offset: 1216)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "first_addon_message", scope: !208, file: !4, line: 669, baseType: !228, size: 32, offset: 1280)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "last_addon_message", scope: !208, file: !4, line: 670, baseType: !228, size: 32, offset: 1312)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !204, file: !4, line: 256, baseType: !220, size: 64, offset: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "progress", scope: !204, file: !4, line: 256, baseType: !291, size: 64, offset: 128)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "is_decompressor", scope: !204, file: !4, line: 256, baseType: !266, size: 32, offset: 192)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "global_state", scope: !204, file: !4, line: 256, baseType: !228, size: 32, offset: 224)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !204, file: !4, line: 259, baseType: !338, size: 64, offset: 256)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_destination_mgr", file: !4, line: 688, size: 320, elements: !340)
!340 = !{!341, !344, !345, !349, !353}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "next_output_byte", scope: !339, file: !4, line: 689, baseType: !342, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "JOCTET", file: !242, line: 110, baseType: !243)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "free_in_buffer", scope: !339, file: !4, line: 690, baseType: !229, size: 64, offset: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "init_destination", scope: !339, file: !4, line: 692, baseType: !346, size: 64, offset: 128)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = !DISubroutineType(types: !348)
!348 = !{null, !202}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "empty_output_buffer", scope: !339, file: !4, line: 693, baseType: !350, size: 64, offset: 192)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = !DISubroutineType(types: !352)
!352 = !{!266, !202}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "term_destination", scope: !339, file: !4, line: 694, baseType: !346, size: 64, offset: 256)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "image_width", scope: !204, file: !4, line: 266, baseType: !244, size: 32, offset: 320)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "image_height", scope: !204, file: !4, line: 267, baseType: !244, size: 32, offset: 352)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "input_components", scope: !204, file: !4, line: 268, baseType: !228, size: 32, offset: 384)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "in_color_space", scope: !204, file: !4, line: 269, baseType: !358, size: 32, offset: 416)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_COLOR_SPACE", file: !4, line: 201, baseType: !3)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "input_gamma", scope: !204, file: !4, line: 271, baseType: !360, size: 64, offset: 448)
!360 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "data_precision", scope: !204, file: !4, line: 281, baseType: !228, size: 32, offset: 512)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "num_components", scope: !204, file: !4, line: 283, baseType: !228, size: 32, offset: 544)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "jpeg_color_space", scope: !204, file: !4, line: 284, baseType: !358, size: 32, offset: 576)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "comp_info", scope: !204, file: !4, line: 286, baseType: !365, size: 64, offset: 640)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "jpeg_component_info", file: !4, line: 179, baseType: !367)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 116, size: 768, elements: !368)
!368 = !{!369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !398}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "component_id", scope: !367, file: !4, line: 120, baseType: !228, size: 32)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "component_index", scope: !367, file: !4, line: 121, baseType: !228, size: 32, offset: 32)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "h_samp_factor", scope: !367, file: !4, line: 122, baseType: !228, size: 32, offset: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "v_samp_factor", scope: !367, file: !4, line: 123, baseType: !228, size: 32, offset: 96)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "quant_tbl_no", scope: !367, file: !4, line: 124, baseType: !228, size: 32, offset: 128)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "dc_tbl_no", scope: !367, file: !4, line: 129, baseType: !228, size: 32, offset: 160)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tbl_no", scope: !367, file: !4, line: 130, baseType: !228, size: 32, offset: 192)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "width_in_blocks", scope: !367, file: !4, line: 139, baseType: !244, size: 32, offset: 224)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "height_in_blocks", scope: !367, file: !4, line: 140, baseType: !244, size: 32, offset: 256)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "DCT_scaled_size", scope: !367, file: !4, line: 147, baseType: !228, size: 32, offset: 288)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "downsampled_width", scope: !367, file: !4, line: 154, baseType: !244, size: 32, offset: 320)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "downsampled_height", scope: !367, file: !4, line: 155, baseType: !244, size: 32, offset: 352)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "component_needed", scope: !367, file: !4, line: 160, baseType: !266, size: 32, offset: 384)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_width", scope: !367, file: !4, line: 164, baseType: !228, size: 32, offset: 416)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_height", scope: !367, file: !4, line: 165, baseType: !228, size: 32, offset: 448)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_blocks", scope: !367, file: !4, line: 166, baseType: !228, size: 32, offset: 480)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_sample_width", scope: !367, file: !4, line: 167, baseType: !228, size: 32, offset: 512)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "last_col_width", scope: !367, file: !4, line: 168, baseType: !228, size: 32, offset: 544)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "last_row_height", scope: !367, file: !4, line: 169, baseType: !228, size: 32, offset: 576)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "quant_table", scope: !367, file: !4, line: 175, baseType: !389, size: 64, offset: 640)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "JQUANT_TBL", file: !4, line: 95, baseType: !391)
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 83, size: 1056, elements: !392)
!392 = !{!393, !397}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "quantval", scope: !391, file: !4, line: 88, baseType: !394, size: 1024)
!394 = !DICompositeType(tag: DW_TAG_array_type, baseType: !395, size: 1024, elements: !257)
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT16", file: !242, line: 147, baseType: !396)
!396 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "sent_table", scope: !391, file: !4, line: 94, baseType: !266, size: 32, offset: 1024)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "dct_table", scope: !367, file: !4, line: 178, baseType: !227, size: 64, offset: 704)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "quant_tbl_ptrs", scope: !204, file: !4, line: 289, baseType: !400, size: 256, offset: 704)
!400 = !DICompositeType(tag: DW_TAG_array_type, baseType: !389, size: 256, elements: !401)
!401 = !{!402}
!402 = !DISubrange(count: 4)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "dc_huff_tbl_ptrs", scope: !204, file: !4, line: 292, baseType: !404, size: 256, offset: 960)
!404 = !DICompositeType(tag: DW_TAG_array_type, baseType: !405, size: 256, elements: !401)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "JHUFF_TBL", file: !4, line: 111, baseType: !407)
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 100, size: 2240, elements: !408)
!408 = !{!409, !414, !418}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !407, file: !4, line: 102, baseType: !410, size: 136)
!410 = !DICompositeType(tag: DW_TAG_array_type, baseType: !411, size: 136, elements: !412)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT8", file: !242, line: 135, baseType: !243)
!412 = !{!413}
!413 = !DISubrange(count: 17)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "huffval", scope: !407, file: !4, line: 104, baseType: !415, size: 2048, offset: 136)
!415 = !DICompositeType(tag: DW_TAG_array_type, baseType: !411, size: 2048, elements: !416)
!416 = !{!417}
!417 = !DISubrange(count: 256)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "sent_table", scope: !407, file: !4, line: 110, baseType: !266, size: 32, offset: 2208)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "ac_huff_tbl_ptrs", scope: !204, file: !4, line: 293, baseType: !404, size: 256, offset: 1216)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "arith_dc_L", scope: !204, file: !4, line: 296, baseType: !421, size: 128, offset: 1472)
!421 = !DICompositeType(tag: DW_TAG_array_type, baseType: !411, size: 128, elements: !422)
!422 = !{!423}
!423 = !DISubrange(count: 16)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "arith_dc_U", scope: !204, file: !4, line: 297, baseType: !421, size: 128, offset: 1600)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "arith_ac_K", scope: !204, file: !4, line: 298, baseType: !421, size: 128, offset: 1728)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "num_scans", scope: !204, file: !4, line: 300, baseType: !228, size: 32, offset: 1856)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "scan_info", scope: !204, file: !4, line: 301, baseType: !428, size: 64, offset: 1920)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !430)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "jpeg_scan_info", file: !4, line: 189, baseType: !431)
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 184, size: 288, elements: !432)
!432 = !{!433, !434, !436, !437, !438, !439}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "comps_in_scan", scope: !431, file: !4, line: 185, baseType: !228, size: 32)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "component_index", scope: !431, file: !4, line: 186, baseType: !435, size: 128, offset: 32)
!435 = !DICompositeType(tag: DW_TAG_array_type, baseType: !228, size: 128, elements: !401)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "Ss", scope: !431, file: !4, line: 187, baseType: !228, size: 32, offset: 160)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "Se", scope: !431, file: !4, line: 187, baseType: !228, size: 32, offset: 192)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "Ah", scope: !431, file: !4, line: 188, baseType: !228, size: 32, offset: 224)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "Al", scope: !431, file: !4, line: 188, baseType: !228, size: 32, offset: 256)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "raw_data_in", scope: !204, file: !4, line: 307, baseType: !266, size: 32, offset: 1984)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "arith_code", scope: !204, file: !4, line: 308, baseType: !266, size: 32, offset: 2016)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_coding", scope: !204, file: !4, line: 309, baseType: !266, size: 32, offset: 2048)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "CCIR601_sampling", scope: !204, file: !4, line: 310, baseType: !266, size: 32, offset: 2080)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "smoothing_factor", scope: !204, file: !4, line: 311, baseType: !228, size: 32, offset: 2112)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "dct_method", scope: !204, file: !4, line: 312, baseType: !446, size: 32, offset: 2144)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "J_DCT_METHOD", file: !4, line: 209, baseType: !13)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "restart_interval", scope: !204, file: !4, line: 319, baseType: !5, size: 32, offset: 2176)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "restart_in_rows", scope: !204, file: !4, line: 320, baseType: !228, size: 32, offset: 2208)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "write_JFIF_header", scope: !204, file: !4, line: 324, baseType: !266, size: 32, offset: 2240)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "density_unit", scope: !204, file: !4, line: 329, baseType: !411, size: 8, offset: 2272)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "X_density", scope: !204, file: !4, line: 330, baseType: !395, size: 16, offset: 2288)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "Y_density", scope: !204, file: !4, line: 331, baseType: !395, size: 16, offset: 2304)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "write_Adobe_marker", scope: !204, file: !4, line: 332, baseType: !266, size: 32, offset: 2336)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "next_scanline", scope: !204, file: !4, line: 339, baseType: !244, size: 32, offset: 2368)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "progressive_mode", scope: !204, file: !4, line: 348, baseType: !266, size: 32, offset: 2400)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "max_h_samp_factor", scope: !204, file: !4, line: 349, baseType: !228, size: 32, offset: 2432)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "max_v_samp_factor", scope: !204, file: !4, line: 350, baseType: !228, size: 32, offset: 2464)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "total_iMCU_rows", scope: !204, file: !4, line: 352, baseType: !244, size: 32, offset: 2496)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "comps_in_scan", scope: !204, file: !4, line: 363, baseType: !228, size: 32, offset: 2528)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "cur_comp_info", scope: !204, file: !4, line: 364, baseType: !461, size: 256, offset: 2560)
!461 = !DICompositeType(tag: DW_TAG_array_type, baseType: !365, size: 256, elements: !401)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "MCUs_per_row", scope: !204, file: !4, line: 367, baseType: !244, size: 32, offset: 2816)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_rows_in_scan", scope: !204, file: !4, line: 368, baseType: !244, size: 32, offset: 2848)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "blocks_in_MCU", scope: !204, file: !4, line: 370, baseType: !228, size: 32, offset: 2880)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "MCU_membership", scope: !204, file: !4, line: 371, baseType: !466, size: 320, offset: 2912)
!466 = !DICompositeType(tag: DW_TAG_array_type, baseType: !228, size: 320, elements: !467)
!467 = !{!468}
!468 = !DISubrange(count: 10)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "Ss", scope: !204, file: !4, line: 375, baseType: !228, size: 32, offset: 3232)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "Se", scope: !204, file: !4, line: 375, baseType: !228, size: 32, offset: 3264)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "Ah", scope: !204, file: !4, line: 375, baseType: !228, size: 32, offset: 3296)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "Al", scope: !204, file: !4, line: 375, baseType: !228, size: 32, offset: 3328)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !204, file: !4, line: 380, baseType: !474, size: 64, offset: 3392)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!475 = !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_comp_master", file: !4, line: 380, flags: DIFlagFwdDecl)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "main", scope: !204, file: !4, line: 381, baseType: !477, size: 64, offset: 3456)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_c_main_controller", file: !4, line: 381, flags: DIFlagFwdDecl)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "prep", scope: !204, file: !4, line: 382, baseType: !480, size: 64, offset: 3520)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_c_prep_controller", file: !4, line: 382, flags: DIFlagFwdDecl)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "coef", scope: !204, file: !4, line: 383, baseType: !483, size: 64, offset: 3584)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_c_coef_controller", file: !4, line: 383, flags: DIFlagFwdDecl)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "marker", scope: !204, file: !4, line: 384, baseType: !486, size: 64, offset: 3648)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_marker_writer", file: !4, line: 384, flags: DIFlagFwdDecl)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "cconvert", scope: !204, file: !4, line: 385, baseType: !489, size: 64, offset: 3712)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_color_converter", file: !4, line: 385, flags: DIFlagFwdDecl)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "downsample", scope: !204, file: !4, line: 386, baseType: !492, size: 64, offset: 3776)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_downsampler", file: !4, line: 386, flags: DIFlagFwdDecl)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "fdct", scope: !204, file: !4, line: 387, baseType: !495, size: 64, offset: 3840)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_forward_dct", file: !4, line: 387, flags: DIFlagFwdDecl)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "entropy", scope: !204, file: !4, line: 388, baseType: !498, size: 64, offset: 3904)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = !DICompositeType(tag: DW_TAG_structure_type, name: "jpeg_entropy_encoder", file: !4, line: 388, flags: DIFlagFwdDecl)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "cjpeg_source_ptr", file: !196, line: 24, baseType: !501)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "get_pixel_rows", scope: !195, file: !196, line: 29, baseType: !503, size: 64, offset: 64)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = !DISubroutineType(types: !505)
!505 = !{!244, !202, !500}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "finish_input", scope: !195, file: !196, line: 31, baseType: !199, size: 64, offset: 128)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "input_file", scope: !195, file: !196, line: 34, baseType: !508, size: 64, offset: 192)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !510, line: 7, baseType: !511)
!510 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !512, line: 49, size: 1728, elements: !513)
!512 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!513 = !{!514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !529, !531, !532, !533, !536, !537, !539, !543, !546, !548, !551, !554, !555, !556, !557, !558}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !511, file: !512, line: 51, baseType: !228, size: 32)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !511, file: !512, line: 54, baseType: !307, size: 64, offset: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !511, file: !512, line: 55, baseType: !307, size: 64, offset: 128)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !511, file: !512, line: 56, baseType: !307, size: 64, offset: 192)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !511, file: !512, line: 57, baseType: !307, size: 64, offset: 256)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !511, file: !512, line: 58, baseType: !307, size: 64, offset: 320)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !511, file: !512, line: 59, baseType: !307, size: 64, offset: 384)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !511, file: !512, line: 60, baseType: !307, size: 64, offset: 448)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !511, file: !512, line: 61, baseType: !307, size: 64, offset: 512)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !511, file: !512, line: 64, baseType: !307, size: 64, offset: 576)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !511, file: !512, line: 65, baseType: !307, size: 64, offset: 640)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !511, file: !512, line: 66, baseType: !307, size: 64, offset: 704)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !511, file: !512, line: 68, baseType: !527, size: 64, offset: 768)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !512, line: 36, flags: DIFlagFwdDecl)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !511, file: !512, line: 70, baseType: !530, size: 64, offset: 832)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !511, file: !512, line: 72, baseType: !228, size: 32, offset: 896)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !511, file: !512, line: 73, baseType: !228, size: 32, offset: 928)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !511, file: !512, line: 74, baseType: !534, size: 64, offset: 960)
!534 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !535, line: 152, baseType: !289)
!535 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!536 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !511, file: !512, line: 77, baseType: !396, size: 16, offset: 1024)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !511, file: !512, line: 78, baseType: !538, size: 8, offset: 1040)
!538 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !511, file: !512, line: 79, baseType: !540, size: 8, offset: 1048)
!540 = !DICompositeType(tag: DW_TAG_array_type, baseType: !308, size: 8, elements: !541)
!541 = !{!542}
!542 = !DISubrange(count: 1)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !511, file: !512, line: 81, baseType: !544, size: 64, offset: 1088)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !512, line: 43, baseType: null)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !511, file: !512, line: 89, baseType: !547, size: 64, offset: 1152)
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !535, line: 153, baseType: !289)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !511, file: !512, line: 91, baseType: !549, size: 64, offset: 1216)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !512, line: 37, flags: DIFlagFwdDecl)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !511, file: !512, line: 92, baseType: !552, size: 64, offset: 1280)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!553 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !512, line: 38, flags: DIFlagFwdDecl)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !511, file: !512, line: 93, baseType: !530, size: 64, offset: 1344)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !511, file: !512, line: 94, baseType: !227, size: 64, offset: 1408)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !511, file: !512, line: 95, baseType: !229, size: 64, offset: 1472)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !511, file: !512, line: 96, baseType: !228, size: 32, offset: 1536)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !511, file: !512, line: 98, baseType: !559, size: 160, offset: 1568)
!559 = !DICompositeType(tag: DW_TAG_array_type, baseType: !308, size: 160, elements: !560)
!560 = !{!561}
!561 = !DISubrange(count: 20)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !195, file: !196, line: 36, baseType: !237, size: 64, offset: 256)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_height", scope: !195, file: !196, line: 37, baseType: !244, size: 32, offset: 320)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "cinfo", scope: !192, file: !1, line: 55, baseType: !202, size: 64, offset: 384)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "colormap", scope: !192, file: !1, line: 57, baseType: !237, size: 64, offset: 448)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "whole_image", scope: !192, file: !1, line: 59, baseType: !263, size: 64, offset: 512)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "source_row", scope: !192, file: !1, line: 60, baseType: !244, size: 32, offset: 576)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "row_width", scope: !192, file: !1, line: 61, baseType: !244, size: 32, offset: 608)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "bits_per_pixel", scope: !192, file: !1, line: 63, baseType: !228, size: 32, offset: 640)
!570 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT32", file: !242, line: 161, baseType: !289)
!571 = !DIDerivedType(tag: DW_TAG_typedef, name: "cd_progress_ptr", file: !196, line: 89, baseType: !572)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdjpeg_progress_mgr", file: !196, line: 81, size: 384, elements: !574)
!574 = !{!575, !576, !577, !578}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "pub", scope: !573, file: !196, line: 82, baseType: !292, size: 256)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "completed_extra_passes", scope: !573, file: !196, line: 83, baseType: !228, size: 32, offset: 256)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "total_extra_passes", scope: !573, file: !196, line: 84, baseType: !228, size: 32, offset: 288)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "percent_done", scope: !573, file: !196, line: 86, baseType: !228, size: 32, offset: 320)
!579 = !{i32 7, !"Dwarf Version", i32 5}
!580 = !{i32 2, !"Debug Info Version", i32 3}
!581 = !{i32 1, !"wchar_size", i32 4}
!582 = !{i32 8, !"PIC Level", i32 2}
!583 = !{i32 7, !"PIE Level", i32 2}
!584 = !{i32 7, !"uwtable", i32 2}
!585 = !{i32 7, !"frame-pointer", i32 2}
!586 = !{!"clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)"}
!587 = distinct !DISubprogram(name: "jinit_read_bmp", scope: !1, file: !1, line: 423, type: !588, scopeLine: 424, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !590)
!588 = !DISubroutineType(types: !589)
!589 = !{!500, !202}
!590 = !{}
!591 = !DILocalVariable(name: "cinfo", arg: 1, scope: !587, file: !1, line: 423, type: !202)
!592 = !DILocation(line: 423, column: 32, scope: !587)
!593 = !DILocalVariable(name: "source", scope: !587, file: !1, line: 425, type: !190)
!594 = !DILocation(line: 425, column: 18, scope: !587)
!595 = !DILocation(line: 429, column: 9, scope: !587)
!596 = !DILocation(line: 429, column: 16, scope: !587)
!597 = !DILocation(line: 429, column: 21, scope: !587)
!598 = !DILocation(line: 429, column: 50, scope: !587)
!599 = !DILocation(line: 429, column: 7, scope: !587)
!600 = !DILocation(line: 428, column: 10, scope: !587)
!601 = !DILocation(line: 431, column: 19, scope: !587)
!602 = !DILocation(line: 431, column: 3, scope: !587)
!603 = !DILocation(line: 431, column: 11, scope: !587)
!604 = !DILocation(line: 431, column: 17, scope: !587)
!605 = !DILocation(line: 433, column: 3, scope: !587)
!606 = !DILocation(line: 433, column: 11, scope: !587)
!607 = !DILocation(line: 433, column: 15, scope: !587)
!608 = !DILocation(line: 433, column: 27, scope: !587)
!609 = !DILocation(line: 434, column: 3, scope: !587)
!610 = !DILocation(line: 434, column: 11, scope: !587)
!611 = !DILocation(line: 434, column: 15, scope: !587)
!612 = !DILocation(line: 434, column: 28, scope: !587)
!613 = !DILocation(line: 436, column: 29, scope: !587)
!614 = !DILocation(line: 436, column: 3, scope: !587)
!615 = distinct !DISubprogram(name: "start_input_bmp", scope: !1, file: !1, line: 241, type: !200, scopeLine: 242, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !590)
!616 = !DILocalVariable(name: "cinfo", arg: 1, scope: !615, file: !1, line: 241, type: !202)
!617 = !DILocation(line: 241, column: 33, scope: !615)
!618 = !DILocalVariable(name: "sinfo", arg: 2, scope: !615, file: !1, line: 241, type: !500)
!619 = !DILocation(line: 241, column: 57, scope: !615)
!620 = !DILocalVariable(name: "source", scope: !615, file: !1, line: 243, type: !190)
!621 = !DILocation(line: 243, column: 18, scope: !615)
!622 = !DILocation(line: 243, column: 44, scope: !615)
!623 = !DILocalVariable(name: "bmpfileheader", scope: !615, file: !1, line: 244, type: !624)
!624 = !DICompositeType(tag: DW_TAG_array_type, baseType: !625, size: 112, elements: !626)
!625 = !DIDerivedType(tag: DW_TAG_typedef, name: "U_CHAR", file: !1, line: 32, baseType: !243)
!626 = !{!627}
!627 = !DISubrange(count: 14)
!628 = !DILocation(line: 244, column: 10, scope: !615)
!629 = !DILocalVariable(name: "bmpinfoheader", scope: !615, file: !1, line: 245, type: !630)
!630 = !DICompositeType(tag: DW_TAG_array_type, baseType: !625, size: 512, elements: !257)
!631 = !DILocation(line: 245, column: 10, scope: !615)
!632 = !DILocalVariable(name: "bfOffBits", scope: !615, file: !1, line: 252, type: !570)
!633 = !DILocation(line: 252, column: 9, scope: !615)
!634 = !DILocalVariable(name: "headerSize", scope: !615, file: !1, line: 253, type: !570)
!635 = !DILocation(line: 253, column: 9, scope: !615)
!636 = !DILocalVariable(name: "biWidth", scope: !615, file: !1, line: 254, type: !570)
!637 = !DILocation(line: 254, column: 9, scope: !615)
!638 = !DILocalVariable(name: "biHeight", scope: !615, file: !1, line: 255, type: !570)
!639 = !DILocation(line: 255, column: 9, scope: !615)
!640 = !DILocalVariable(name: "biPlanes", scope: !615, file: !1, line: 256, type: !5)
!641 = !DILocation(line: 256, column: 16, scope: !615)
!642 = !DILocalVariable(name: "biCompression", scope: !615, file: !1, line: 257, type: !570)
!643 = !DILocation(line: 257, column: 9, scope: !615)
!644 = !DILocalVariable(name: "biXPelsPerMeter", scope: !615, file: !1, line: 258, type: !570)
!645 = !DILocation(line: 258, column: 9, scope: !615)
!646 = !DILocalVariable(name: "biYPelsPerMeter", scope: !615, file: !1, line: 258, type: !570)
!647 = !DILocation(line: 258, column: 25, scope: !615)
!648 = !DILocalVariable(name: "biClrUsed", scope: !615, file: !1, line: 259, type: !570)
!649 = !DILocation(line: 259, column: 9, scope: !615)
!650 = !DILocalVariable(name: "mapentrysize", scope: !615, file: !1, line: 260, type: !228)
!651 = !DILocation(line: 260, column: 7, scope: !615)
!652 = !DILocalVariable(name: "bPad", scope: !615, file: !1, line: 261, type: !570)
!653 = !DILocation(line: 261, column: 9, scope: !615)
!654 = !DILocalVariable(name: "row_width", scope: !615, file: !1, line: 262, type: !244)
!655 = !DILocation(line: 262, column: 14, scope: !615)
!656 = !DILocation(line: 265, column: 9, scope: !657)
!657 = distinct !DILexicalBlock(scope: !615, file: !1, line: 265, column: 7)
!658 = !DILocation(line: 265, column: 7, scope: !657)
!659 = !DILocation(line: 266, column: 5, scope: !657)
!660 = !DILocation(line: 267, column: 7, scope: !661)
!661 = distinct !DILexicalBlock(scope: !615, file: !1, line: 267, column: 7)
!662 = !DILocation(line: 267, column: 31, scope: !661)
!663 = !DILocation(line: 268, column: 5, scope: !661)
!664 = !DILocation(line: 269, column: 23, scope: !615)
!665 = !DILocation(line: 269, column: 13, scope: !615)
!666 = !DILocation(line: 275, column: 9, scope: !667)
!667 = distinct !DILexicalBlock(scope: !615, file: !1, line: 275, column: 7)
!668 = !DILocation(line: 275, column: 7, scope: !667)
!669 = !DILocation(line: 276, column: 5, scope: !667)
!670 = !DILocation(line: 277, column: 24, scope: !615)
!671 = !DILocation(line: 277, column: 14, scope: !615)
!672 = !DILocation(line: 278, column: 7, scope: !673)
!673 = distinct !DILexicalBlock(scope: !615, file: !1, line: 278, column: 7)
!674 = !DILocation(line: 278, column: 18, scope: !673)
!675 = !DILocation(line: 278, column: 23, scope: !673)
!676 = !DILocation(line: 278, column: 26, scope: !673)
!677 = !DILocation(line: 278, column: 37, scope: !673)
!678 = !DILocation(line: 279, column: 5, scope: !673)
!679 = !DILocation(line: 280, column: 9, scope: !680)
!680 = distinct !DILexicalBlock(scope: !615, file: !1, line: 280, column: 7)
!681 = !DILocation(line: 280, column: 7, scope: !680)
!682 = !DILocation(line: 281, column: 5, scope: !680)
!683 = !DILocation(line: 283, column: 17, scope: !615)
!684 = !DILocation(line: 283, column: 11, scope: !615)
!685 = !DILocation(line: 283, column: 3, scope: !615)
!686 = !DILocation(line: 286, column: 23, scope: !687)
!687 = distinct !DILexicalBlock(scope: !615, file: !1, line: 283, column: 29)
!688 = !DILocation(line: 286, column: 15, scope: !687)
!689 = !DILocation(line: 286, column: 13, scope: !687)
!690 = !DILocation(line: 287, column: 24, scope: !687)
!691 = !DILocation(line: 287, column: 16, scope: !687)
!692 = !DILocation(line: 287, column: 14, scope: !687)
!693 = !DILocation(line: 288, column: 16, scope: !687)
!694 = !DILocation(line: 288, column: 14, scope: !687)
!695 = !DILocation(line: 289, column: 36, scope: !687)
!696 = !DILocation(line: 289, column: 5, scope: !687)
!697 = !DILocation(line: 289, column: 13, scope: !687)
!698 = !DILocation(line: 289, column: 28, scope: !687)
!699 = !DILocation(line: 291, column: 13, scope: !687)
!700 = !DILocation(line: 291, column: 21, scope: !687)
!701 = !DILocation(line: 291, column: 5, scope: !687)
!702 = !DILocation(line: 293, column: 20, scope: !703)
!703 = distinct !DILexicalBlock(scope: !687, file: !1, line: 291, column: 37)
!704 = !DILocation(line: 294, column: 7, scope: !703)
!705 = !DILocation(line: 295, column: 7, scope: !703)
!706 = !DILocation(line: 297, column: 7, scope: !703)
!707 = !DILocation(line: 298, column: 7, scope: !703)
!708 = !DILocation(line: 300, column: 7, scope: !703)
!709 = !DILocation(line: 301, column: 7, scope: !703)
!710 = !DILocation(line: 303, column: 9, scope: !711)
!711 = distinct !DILexicalBlock(scope: !687, file: !1, line: 303, column: 9)
!712 = !DILocation(line: 303, column: 18, scope: !711)
!713 = !DILocation(line: 304, column: 7, scope: !711)
!714 = !DILocation(line: 305, column: 5, scope: !687)
!715 = !DILocation(line: 310, column: 15, scope: !687)
!716 = !DILocation(line: 310, column: 13, scope: !687)
!717 = !DILocation(line: 311, column: 16, scope: !687)
!718 = !DILocation(line: 311, column: 14, scope: !687)
!719 = !DILocation(line: 312, column: 16, scope: !687)
!720 = !DILocation(line: 312, column: 14, scope: !687)
!721 = !DILocation(line: 313, column: 36, scope: !687)
!722 = !DILocation(line: 313, column: 5, scope: !687)
!723 = !DILocation(line: 313, column: 13, scope: !687)
!724 = !DILocation(line: 313, column: 28, scope: !687)
!725 = !DILocation(line: 314, column: 21, scope: !687)
!726 = !DILocation(line: 314, column: 19, scope: !687)
!727 = !DILocation(line: 315, column: 23, scope: !687)
!728 = !DILocation(line: 315, column: 21, scope: !687)
!729 = !DILocation(line: 316, column: 23, scope: !687)
!730 = !DILocation(line: 316, column: 21, scope: !687)
!731 = !DILocation(line: 317, column: 17, scope: !687)
!732 = !DILocation(line: 317, column: 15, scope: !687)
!733 = !DILocation(line: 320, column: 13, scope: !687)
!734 = !DILocation(line: 320, column: 21, scope: !687)
!735 = !DILocation(line: 320, column: 5, scope: !687)
!736 = !DILocation(line: 322, column: 20, scope: !737)
!737 = distinct !DILexicalBlock(scope: !687, file: !1, line: 320, column: 37)
!738 = !DILocation(line: 323, column: 7, scope: !737)
!739 = !DILocation(line: 324, column: 7, scope: !737)
!740 = !DILocation(line: 326, column: 7, scope: !737)
!741 = !DILocation(line: 327, column: 7, scope: !737)
!742 = !DILocation(line: 329, column: 7, scope: !737)
!743 = !DILocation(line: 330, column: 7, scope: !737)
!744 = !DILocation(line: 332, column: 9, scope: !745)
!745 = distinct !DILexicalBlock(scope: !687, file: !1, line: 332, column: 9)
!746 = !DILocation(line: 332, column: 18, scope: !745)
!747 = !DILocation(line: 333, column: 7, scope: !745)
!748 = !DILocation(line: 334, column: 9, scope: !749)
!749 = distinct !DILexicalBlock(scope: !687, file: !1, line: 334, column: 9)
!750 = !DILocation(line: 334, column: 23, scope: !749)
!751 = !DILocation(line: 335, column: 7, scope: !749)
!752 = !DILocation(line: 337, column: 9, scope: !753)
!753 = distinct !DILexicalBlock(scope: !687, file: !1, line: 337, column: 9)
!754 = !DILocation(line: 337, column: 25, scope: !753)
!755 = !DILocation(line: 337, column: 29, scope: !753)
!756 = !DILocation(line: 337, column: 32, scope: !753)
!757 = !DILocation(line: 337, column: 48, scope: !753)
!758 = !DILocation(line: 339, column: 36, scope: !759)
!759 = distinct !DILexicalBlock(scope: !753, file: !1, line: 337, column: 53)
!760 = !DILocation(line: 339, column: 51, scope: !759)
!761 = !DILocation(line: 339, column: 26, scope: !759)
!762 = !DILocation(line: 339, column: 7, scope: !759)
!763 = !DILocation(line: 339, column: 14, scope: !759)
!764 = !DILocation(line: 339, column: 24, scope: !759)
!765 = !DILocation(line: 340, column: 36, scope: !759)
!766 = !DILocation(line: 340, column: 51, scope: !759)
!767 = !DILocation(line: 340, column: 26, scope: !759)
!768 = !DILocation(line: 340, column: 7, scope: !759)
!769 = !DILocation(line: 340, column: 14, scope: !759)
!770 = !DILocation(line: 340, column: 24, scope: !759)
!771 = !DILocation(line: 341, column: 7, scope: !759)
!772 = !DILocation(line: 341, column: 14, scope: !759)
!773 = !DILocation(line: 341, column: 27, scope: !759)
!774 = !DILocation(line: 342, column: 5, scope: !759)
!775 = !DILocation(line: 343, column: 5, scope: !687)
!776 = !DILocation(line: 345, column: 5, scope: !687)
!777 = !DILocation(line: 346, column: 5, scope: !687)
!778 = !DILocation(line: 350, column: 10, scope: !615)
!779 = !DILocation(line: 350, column: 23, scope: !615)
!780 = !DILocation(line: 350, column: 34, scope: !615)
!781 = !DILocation(line: 350, column: 20, scope: !615)
!782 = !DILocation(line: 350, column: 8, scope: !615)
!783 = !DILocation(line: 353, column: 7, scope: !784)
!784 = distinct !DILexicalBlock(scope: !615, file: !1, line: 353, column: 7)
!785 = !DILocation(line: 353, column: 20, scope: !784)
!786 = !DILocation(line: 354, column: 9, scope: !787)
!787 = distinct !DILexicalBlock(scope: !788, file: !1, line: 354, column: 9)
!788 = distinct !DILexicalBlock(scope: !784, file: !1, line: 353, column: 25)
!789 = !DILocation(line: 354, column: 19, scope: !787)
!790 = !DILocation(line: 355, column: 17, scope: !787)
!791 = !DILocation(line: 355, column: 7, scope: !787)
!792 = !DILocation(line: 356, column: 14, scope: !793)
!793 = distinct !DILexicalBlock(scope: !787, file: !1, line: 356, column: 14)
!794 = !DILocation(line: 356, column: 24, scope: !793)
!795 = !DILocation(line: 357, column: 7, scope: !793)
!796 = !DILocation(line: 359, column: 26, scope: !788)
!797 = !DILocation(line: 359, column: 33, scope: !788)
!798 = !DILocation(line: 359, column: 38, scope: !788)
!799 = !DILocation(line: 360, column: 23, scope: !788)
!800 = !DILocation(line: 361, column: 21, scope: !788)
!801 = !DILocation(line: 361, column: 8, scope: !788)
!802 = !DILocation(line: 359, column: 24, scope: !788)
!803 = !DILocation(line: 359, column: 5, scope: !788)
!804 = !DILocation(line: 359, column: 13, scope: !788)
!805 = !DILocation(line: 359, column: 22, scope: !788)
!806 = !DILocation(line: 363, column: 19, scope: !788)
!807 = !DILocation(line: 363, column: 33, scope: !788)
!808 = !DILocation(line: 363, column: 27, scope: !788)
!809 = !DILocation(line: 363, column: 44, scope: !788)
!810 = !DILocation(line: 363, column: 5, scope: !788)
!811 = !DILocation(line: 365, column: 13, scope: !788)
!812 = !DILocation(line: 365, column: 25, scope: !788)
!813 = !DILocation(line: 365, column: 23, scope: !788)
!814 = !DILocation(line: 365, column: 10, scope: !788)
!815 = !DILocation(line: 366, column: 3, scope: !788)
!816 = !DILocation(line: 369, column: 7, scope: !817)
!817 = distinct !DILexicalBlock(scope: !615, file: !1, line: 369, column: 7)
!818 = !DILocation(line: 369, column: 12, scope: !817)
!819 = !DILocation(line: 370, column: 5, scope: !817)
!820 = !DILocation(line: 371, column: 3, scope: !615)
!821 = !DILocation(line: 371, column: 10, scope: !615)
!822 = !DILocation(line: 371, column: 17, scope: !615)
!823 = !DILocation(line: 372, column: 22, scope: !824)
!824 = distinct !DILexicalBlock(scope: !615, file: !1, line: 371, column: 23)
!825 = !DILocation(line: 372, column: 12, scope: !824)
!826 = distinct !{!826, !820, !827, !828}
!827 = !DILocation(line: 373, column: 3, scope: !615)
!828 = !{!"llvm.loop.mustprogress"}
!829 = !DILocation(line: 376, column: 7, scope: !830)
!830 = distinct !DILexicalBlock(scope: !615, file: !1, line: 376, column: 7)
!831 = !DILocation(line: 376, column: 15, scope: !830)
!832 = !DILocation(line: 376, column: 30, scope: !830)
!833 = !DILocation(line: 377, column: 31, scope: !830)
!834 = !DILocation(line: 377, column: 39, scope: !830)
!835 = !DILocation(line: 377, column: 17, scope: !830)
!836 = !DILocation(line: 377, column: 15, scope: !830)
!837 = !DILocation(line: 377, column: 5, scope: !830)
!838 = !DILocation(line: 379, column: 30, scope: !830)
!839 = !DILocation(line: 379, column: 17, scope: !830)
!840 = !DILocation(line: 379, column: 15, scope: !830)
!841 = !DILocation(line: 380, column: 3, scope: !615)
!842 = !DILocation(line: 380, column: 11, scope: !615)
!843 = !DILocation(line: 380, column: 21, scope: !615)
!844 = !DILocation(line: 380, column: 26, scope: !615)
!845 = !DILocation(line: 380, column: 41, scope: !615)
!846 = distinct !{!846, !841, !845, !828}
!847 = !DILocation(line: 381, column: 23, scope: !615)
!848 = !DILocation(line: 381, column: 3, scope: !615)
!849 = !DILocation(line: 381, column: 11, scope: !615)
!850 = !DILocation(line: 381, column: 21, scope: !615)
!851 = !DILocation(line: 384, column: 27, scope: !615)
!852 = !DILocation(line: 384, column: 34, scope: !615)
!853 = !DILocation(line: 384, column: 39, scope: !615)
!854 = !DILocation(line: 385, column: 21, scope: !615)
!855 = !DILocation(line: 386, column: 6, scope: !615)
!856 = !DILocation(line: 386, column: 30, scope: !615)
!857 = !DILocation(line: 386, column: 17, scope: !615)
!858 = !DILocation(line: 384, column: 25, scope: !615)
!859 = !DILocation(line: 384, column: 3, scope: !615)
!860 = !DILocation(line: 384, column: 11, scope: !615)
!861 = !DILocation(line: 384, column: 23, scope: !615)
!862 = !DILocation(line: 387, column: 3, scope: !615)
!863 = !DILocation(line: 387, column: 11, scope: !615)
!864 = !DILocation(line: 387, column: 15, scope: !615)
!865 = !DILocation(line: 387, column: 30, scope: !615)
!866 = !DILocation(line: 388, column: 7, scope: !867)
!867 = distinct !DILexicalBlock(scope: !615, file: !1, line: 388, column: 7)
!868 = !DILocation(line: 388, column: 14, scope: !867)
!869 = !DILocation(line: 388, column: 23, scope: !867)
!870 = !DILocalVariable(name: "progress", scope: !871, file: !1, line: 389, type: !571)
!871 = distinct !DILexicalBlock(scope: !867, file: !1, line: 388, column: 32)
!872 = !DILocation(line: 389, column: 21, scope: !871)
!873 = !DILocation(line: 389, column: 50, scope: !871)
!874 = !DILocation(line: 389, column: 57, scope: !871)
!875 = !DILocation(line: 390, column: 5, scope: !871)
!876 = !DILocation(line: 390, column: 15, scope: !871)
!877 = !DILocation(line: 390, column: 33, scope: !871)
!878 = !DILocation(line: 391, column: 3, scope: !871)
!879 = !DILocation(line: 394, column: 26, scope: !615)
!880 = !DILocation(line: 394, column: 33, scope: !615)
!881 = !DILocation(line: 394, column: 38, scope: !615)
!882 = !DILocation(line: 395, column: 21, scope: !615)
!883 = !DILocation(line: 396, column: 20, scope: !615)
!884 = !DILocation(line: 396, column: 28, scope: !615)
!885 = !DILocation(line: 396, column: 6, scope: !615)
!886 = !DILocation(line: 394, column: 24, scope: !615)
!887 = !DILocation(line: 394, column: 3, scope: !615)
!888 = !DILocation(line: 394, column: 11, scope: !615)
!889 = !DILocation(line: 394, column: 15, scope: !615)
!890 = !DILocation(line: 394, column: 22, scope: !615)
!891 = !DILocation(line: 397, column: 3, scope: !615)
!892 = !DILocation(line: 397, column: 11, scope: !615)
!893 = !DILocation(line: 397, column: 15, scope: !615)
!894 = !DILocation(line: 397, column: 29, scope: !615)
!895 = !DILocation(line: 399, column: 3, scope: !615)
!896 = !DILocation(line: 399, column: 10, scope: !615)
!897 = !DILocation(line: 399, column: 25, scope: !615)
!898 = !DILocation(line: 400, column: 3, scope: !615)
!899 = !DILocation(line: 400, column: 10, scope: !615)
!900 = !DILocation(line: 400, column: 27, scope: !615)
!901 = !DILocation(line: 401, column: 3, scope: !615)
!902 = !DILocation(line: 401, column: 10, scope: !615)
!903 = !DILocation(line: 401, column: 25, scope: !615)
!904 = !DILocation(line: 402, column: 37, scope: !615)
!905 = !DILocation(line: 402, column: 24, scope: !615)
!906 = !DILocation(line: 402, column: 3, scope: !615)
!907 = !DILocation(line: 402, column: 10, scope: !615)
!908 = !DILocation(line: 402, column: 22, scope: !615)
!909 = !DILocation(line: 403, column: 38, scope: !615)
!910 = !DILocation(line: 403, column: 25, scope: !615)
!911 = !DILocation(line: 403, column: 3, scope: !615)
!912 = !DILocation(line: 403, column: 10, scope: !615)
!913 = !DILocation(line: 403, column: 23, scope: !615)
!914 = !DILocation(line: 404, column: 1, scope: !615)
!915 = distinct !DISubprogram(name: "finish_input_bmp", scope: !1, file: !1, line: 412, type: !200, scopeLine: 413, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !590)
!916 = !DILocalVariable(name: "cinfo", arg: 1, scope: !915, file: !1, line: 412, type: !202)
!917 = !DILocation(line: 412, column: 34, scope: !915)
!918 = !DILocalVariable(name: "sinfo", arg: 2, scope: !915, file: !1, line: 412, type: !500)
!919 = !DILocation(line: 412, column: 58, scope: !915)
!920 = !DILocation(line: 415, column: 1, scope: !915)
!921 = distinct !DISubprogram(name: "read_colormap", scope: !1, file: !1, line: 81, type: !922, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !590)
!922 = !DISubroutineType(types: !923)
!923 = !{null, !190, !228, !228}
!924 = !DILocalVariable(name: "sinfo", arg: 1, scope: !921, file: !1, line: 81, type: !190)
!925 = !DILocation(line: 81, column: 31, scope: !921)
!926 = !DILocalVariable(name: "cmaplen", arg: 2, scope: !921, file: !1, line: 81, type: !228)
!927 = !DILocation(line: 81, column: 42, scope: !921)
!928 = !DILocalVariable(name: "mapentrysize", arg: 3, scope: !921, file: !1, line: 81, type: !228)
!929 = !DILocation(line: 81, column: 55, scope: !921)
!930 = !DILocalVariable(name: "i", scope: !921, file: !1, line: 84, type: !228)
!931 = !DILocation(line: 84, column: 7, scope: !921)
!932 = !DILocation(line: 86, column: 11, scope: !921)
!933 = !DILocation(line: 86, column: 3, scope: !921)
!934 = !DILocation(line: 89, column: 12, scope: !935)
!935 = distinct !DILexicalBlock(scope: !936, file: !1, line: 89, column: 5)
!936 = distinct !DILexicalBlock(scope: !921, file: !1, line: 86, column: 25)
!937 = !DILocation(line: 89, column: 10, scope: !935)
!938 = !DILocation(line: 89, column: 17, scope: !939)
!939 = distinct !DILexicalBlock(scope: !935, file: !1, line: 89, column: 5)
!940 = !DILocation(line: 89, column: 21, scope: !939)
!941 = !DILocation(line: 89, column: 19, scope: !939)
!942 = !DILocation(line: 89, column: 5, scope: !935)
!943 = !DILocation(line: 90, column: 51, scope: !944)
!944 = distinct !DILexicalBlock(scope: !939, file: !1, line: 89, column: 35)
!945 = !DILocation(line: 90, column: 41, scope: !944)
!946 = !DILocation(line: 90, column: 31, scope: !944)
!947 = !DILocation(line: 90, column: 7, scope: !944)
!948 = !DILocation(line: 90, column: 14, scope: !944)
!949 = !DILocation(line: 90, column: 26, scope: !944)
!950 = !DILocation(line: 90, column: 29, scope: !944)
!951 = !DILocation(line: 91, column: 51, scope: !944)
!952 = !DILocation(line: 91, column: 41, scope: !944)
!953 = !DILocation(line: 91, column: 31, scope: !944)
!954 = !DILocation(line: 91, column: 7, scope: !944)
!955 = !DILocation(line: 91, column: 14, scope: !944)
!956 = !DILocation(line: 91, column: 26, scope: !944)
!957 = !DILocation(line: 91, column: 29, scope: !944)
!958 = !DILocation(line: 92, column: 51, scope: !944)
!959 = !DILocation(line: 92, column: 41, scope: !944)
!960 = !DILocation(line: 92, column: 31, scope: !944)
!961 = !DILocation(line: 92, column: 7, scope: !944)
!962 = !DILocation(line: 92, column: 14, scope: !944)
!963 = !DILocation(line: 92, column: 26, scope: !944)
!964 = !DILocation(line: 92, column: 29, scope: !944)
!965 = !DILocation(line: 93, column: 5, scope: !944)
!966 = !DILocation(line: 89, column: 31, scope: !939)
!967 = !DILocation(line: 89, column: 5, scope: !939)
!968 = distinct !{!968, !942, !969, !828}
!969 = !DILocation(line: 93, column: 5, scope: !935)
!970 = !DILocation(line: 94, column: 5, scope: !936)
!971 = !DILocation(line: 97, column: 12, scope: !972)
!972 = distinct !DILexicalBlock(scope: !936, file: !1, line: 97, column: 5)
!973 = !DILocation(line: 97, column: 10, scope: !972)
!974 = !DILocation(line: 97, column: 17, scope: !975)
!975 = distinct !DILexicalBlock(scope: !972, file: !1, line: 97, column: 5)
!976 = !DILocation(line: 97, column: 21, scope: !975)
!977 = !DILocation(line: 97, column: 19, scope: !975)
!978 = !DILocation(line: 97, column: 5, scope: !972)
!979 = !DILocation(line: 98, column: 51, scope: !980)
!980 = distinct !DILexicalBlock(scope: !975, file: !1, line: 97, column: 35)
!981 = !DILocation(line: 98, column: 41, scope: !980)
!982 = !DILocation(line: 98, column: 31, scope: !980)
!983 = !DILocation(line: 98, column: 7, scope: !980)
!984 = !DILocation(line: 98, column: 14, scope: !980)
!985 = !DILocation(line: 98, column: 26, scope: !980)
!986 = !DILocation(line: 98, column: 29, scope: !980)
!987 = !DILocation(line: 99, column: 51, scope: !980)
!988 = !DILocation(line: 99, column: 41, scope: !980)
!989 = !DILocation(line: 99, column: 31, scope: !980)
!990 = !DILocation(line: 99, column: 7, scope: !980)
!991 = !DILocation(line: 99, column: 14, scope: !980)
!992 = !DILocation(line: 99, column: 26, scope: !980)
!993 = !DILocation(line: 99, column: 29, scope: !980)
!994 = !DILocation(line: 100, column: 51, scope: !980)
!995 = !DILocation(line: 100, column: 41, scope: !980)
!996 = !DILocation(line: 100, column: 31, scope: !980)
!997 = !DILocation(line: 100, column: 7, scope: !980)
!998 = !DILocation(line: 100, column: 14, scope: !980)
!999 = !DILocation(line: 100, column: 26, scope: !980)
!1000 = !DILocation(line: 100, column: 29, scope: !980)
!1001 = !DILocation(line: 101, column: 24, scope: !980)
!1002 = !DILocation(line: 101, column: 14, scope: !980)
!1003 = !DILocation(line: 102, column: 5, scope: !980)
!1004 = !DILocation(line: 97, column: 31, scope: !975)
!1005 = !DILocation(line: 97, column: 5, scope: !975)
!1006 = distinct !{!1006, !978, !1007, !828}
!1007 = !DILocation(line: 102, column: 5, scope: !972)
!1008 = !DILocation(line: 103, column: 5, scope: !936)
!1009 = !DILocation(line: 105, column: 5, scope: !936)
!1010 = !DILocation(line: 106, column: 5, scope: !936)
!1011 = !DILocation(line: 108, column: 1, scope: !921)
!1012 = distinct !DISubprogram(name: "read_byte", scope: !1, file: !1, line: 68, type: !1013, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !590)
!1013 = !DISubroutineType(types: !1014)
!1014 = !{!228, !190}
!1015 = !DILocalVariable(name: "sinfo", arg: 1, scope: !1012, file: !1, line: 68, type: !190)
!1016 = !DILocation(line: 68, column: 27, scope: !1012)
!1017 = !DILocalVariable(name: "infile", scope: !1012, file: !1, line: 71, type: !508)
!1018 = !DILocation(line: 71, column: 18, scope: !1012)
!1019 = !DILocation(line: 71, column: 27, scope: !1012)
!1020 = !DILocation(line: 71, column: 34, scope: !1012)
!1021 = !DILocation(line: 71, column: 38, scope: !1012)
!1022 = !DILocalVariable(name: "c", scope: !1012, file: !1, line: 72, type: !228)
!1023 = !DILocation(line: 72, column: 16, scope: !1012)
!1024 = !DILocation(line: 74, column: 17, scope: !1025)
!1025 = distinct !DILexicalBlock(scope: !1012, file: !1, line: 74, column: 7)
!1026 = !DILocation(line: 74, column: 12, scope: !1025)
!1027 = !DILocation(line: 74, column: 10, scope: !1025)
!1028 = !DILocation(line: 74, column: 26, scope: !1025)
!1029 = !DILocation(line: 75, column: 5, scope: !1025)
!1030 = !DILocation(line: 76, column: 10, scope: !1012)
!1031 = !DILocation(line: 76, column: 3, scope: !1012)
!1032 = distinct !DISubprogram(name: "preload_image", scope: !1, file: !1, line: 187, type: !504, scopeLine: 188, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !590)
!1033 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1032, file: !1, line: 187, type: !202)
!1034 = !DILocation(line: 187, column: 31, scope: !1032)
!1035 = !DILocalVariable(name: "sinfo", arg: 2, scope: !1032, file: !1, line: 187, type: !500)
!1036 = !DILocation(line: 187, column: 55, scope: !1032)
!1037 = !DILocalVariable(name: "source", scope: !1032, file: !1, line: 189, type: !190)
!1038 = !DILocation(line: 189, column: 18, scope: !1032)
!1039 = !DILocation(line: 189, column: 44, scope: !1032)
!1040 = !DILocalVariable(name: "infile", scope: !1032, file: !1, line: 190, type: !508)
!1041 = !DILocation(line: 190, column: 18, scope: !1032)
!1042 = !DILocation(line: 190, column: 27, scope: !1032)
!1043 = !DILocation(line: 190, column: 35, scope: !1032)
!1044 = !DILocation(line: 190, column: 39, scope: !1032)
!1045 = !DILocalVariable(name: "c", scope: !1032, file: !1, line: 191, type: !228)
!1046 = !DILocation(line: 191, column: 16, scope: !1032)
!1047 = !DILocalVariable(name: "out_ptr", scope: !1032, file: !1, line: 192, type: !239)
!1048 = !DILocation(line: 192, column: 21, scope: !1032)
!1049 = !DILocalVariable(name: "image_ptr", scope: !1032, file: !1, line: 193, type: !237)
!1050 = !DILocation(line: 193, column: 14, scope: !1032)
!1051 = !DILocalVariable(name: "row", scope: !1032, file: !1, line: 194, type: !244)
!1052 = !DILocation(line: 194, column: 14, scope: !1032)
!1053 = !DILocalVariable(name: "col", scope: !1032, file: !1, line: 194, type: !244)
!1054 = !DILocation(line: 194, column: 19, scope: !1032)
!1055 = !DILocalVariable(name: "progress", scope: !1032, file: !1, line: 195, type: !571)
!1056 = !DILocation(line: 195, column: 19, scope: !1032)
!1057 = !DILocation(line: 195, column: 48, scope: !1032)
!1058 = !DILocation(line: 195, column: 55, scope: !1032)
!1059 = !DILocation(line: 198, column: 12, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1032, file: !1, line: 198, column: 3)
!1061 = !DILocation(line: 198, column: 8, scope: !1060)
!1062 = !DILocation(line: 198, column: 17, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1060, file: !1, line: 198, column: 3)
!1064 = !DILocation(line: 198, column: 23, scope: !1063)
!1065 = !DILocation(line: 198, column: 30, scope: !1063)
!1066 = !DILocation(line: 198, column: 21, scope: !1063)
!1067 = !DILocation(line: 198, column: 3, scope: !1060)
!1068 = !DILocation(line: 199, column: 9, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !1070, file: !1, line: 199, column: 9)
!1070 = distinct !DILexicalBlock(scope: !1063, file: !1, line: 198, column: 51)
!1071 = !DILocation(line: 199, column: 18, scope: !1069)
!1072 = !DILocation(line: 200, column: 43, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !1069, file: !1, line: 199, column: 27)
!1074 = !DILocation(line: 200, column: 36, scope: !1073)
!1075 = !DILocation(line: 200, column: 7, scope: !1073)
!1076 = !DILocation(line: 200, column: 17, scope: !1073)
!1077 = !DILocation(line: 200, column: 21, scope: !1073)
!1078 = !DILocation(line: 200, column: 34, scope: !1073)
!1079 = !DILocation(line: 201, column: 41, scope: !1073)
!1080 = !DILocation(line: 201, column: 48, scope: !1073)
!1081 = !DILocation(line: 201, column: 34, scope: !1073)
!1082 = !DILocation(line: 201, column: 7, scope: !1073)
!1083 = !DILocation(line: 201, column: 17, scope: !1073)
!1084 = !DILocation(line: 201, column: 21, scope: !1073)
!1085 = !DILocation(line: 201, column: 32, scope: !1073)
!1086 = !DILocation(line: 202, column: 9, scope: !1073)
!1087 = !DILocation(line: 202, column: 19, scope: !1073)
!1088 = !DILocation(line: 202, column: 23, scope: !1073)
!1089 = !DILocation(line: 202, column: 57, scope: !1073)
!1090 = !DILocation(line: 202, column: 7, scope: !1073)
!1091 = !DILocation(line: 203, column: 5, scope: !1073)
!1092 = !DILocation(line: 204, column: 19, scope: !1070)
!1093 = !DILocation(line: 204, column: 26, scope: !1070)
!1094 = !DILocation(line: 204, column: 31, scope: !1070)
!1095 = !DILocation(line: 205, column: 23, scope: !1070)
!1096 = !DILocation(line: 205, column: 30, scope: !1070)
!1097 = !DILocation(line: 205, column: 38, scope: !1070)
!1098 = !DILocation(line: 206, column: 8, scope: !1070)
!1099 = !DILocation(line: 204, column: 17, scope: !1070)
!1100 = !DILocation(line: 204, column: 15, scope: !1070)
!1101 = !DILocation(line: 207, column: 15, scope: !1070)
!1102 = !DILocation(line: 207, column: 13, scope: !1070)
!1103 = !DILocation(line: 208, column: 16, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !1070, file: !1, line: 208, column: 5)
!1105 = !DILocation(line: 208, column: 24, scope: !1104)
!1106 = !DILocation(line: 208, column: 14, scope: !1104)
!1107 = !DILocation(line: 208, column: 10, scope: !1104)
!1108 = !DILocation(line: 208, column: 35, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !1104, file: !1, line: 208, column: 5)
!1110 = !DILocation(line: 208, column: 39, scope: !1109)
!1111 = !DILocation(line: 208, column: 5, scope: !1104)
!1112 = !DILocation(line: 210, column: 21, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1114, file: !1, line: 210, column: 11)
!1114 = distinct !DILexicalBlock(scope: !1109, file: !1, line: 208, column: 51)
!1115 = !DILocation(line: 210, column: 16, scope: !1113)
!1116 = !DILocation(line: 210, column: 14, scope: !1113)
!1117 = !DILocation(line: 210, column: 30, scope: !1113)
!1118 = !DILocation(line: 211, column: 2, scope: !1113)
!1119 = !DILocation(line: 212, column: 30, scope: !1114)
!1120 = !DILocation(line: 212, column: 20, scope: !1114)
!1121 = !DILocation(line: 212, column: 15, scope: !1114)
!1122 = !DILocation(line: 212, column: 18, scope: !1114)
!1123 = !DILocation(line: 213, column: 5, scope: !1114)
!1124 = !DILocation(line: 208, column: 47, scope: !1109)
!1125 = !DILocation(line: 208, column: 5, scope: !1109)
!1126 = distinct !{!1126, !1111, !1127, !828}
!1127 = !DILocation(line: 213, column: 5, scope: !1104)
!1128 = !DILocation(line: 214, column: 3, scope: !1070)
!1129 = !DILocation(line: 198, column: 47, scope: !1063)
!1130 = !DILocation(line: 198, column: 3, scope: !1063)
!1131 = distinct !{!1131, !1067, !1132, !828}
!1132 = !DILocation(line: 214, column: 3, scope: !1060)
!1133 = !DILocation(line: 215, column: 7, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1032, file: !1, line: 215, column: 7)
!1135 = !DILocation(line: 215, column: 16, scope: !1134)
!1136 = !DILocation(line: 216, column: 5, scope: !1134)
!1137 = !DILocation(line: 216, column: 15, scope: !1134)
!1138 = !DILocation(line: 216, column: 37, scope: !1134)
!1139 = !DILocation(line: 219, column: 11, scope: !1032)
!1140 = !DILocation(line: 219, column: 19, scope: !1032)
!1141 = !DILocation(line: 219, column: 3, scope: !1032)
!1142 = !DILocation(line: 221, column: 5, scope: !1143)
!1143 = distinct !DILexicalBlock(scope: !1032, file: !1, line: 219, column: 35)
!1144 = !DILocation(line: 221, column: 13, scope: !1143)
!1145 = !DILocation(line: 221, column: 17, scope: !1143)
!1146 = !DILocation(line: 221, column: 32, scope: !1143)
!1147 = !DILocation(line: 222, column: 5, scope: !1143)
!1148 = !DILocation(line: 224, column: 5, scope: !1143)
!1149 = !DILocation(line: 224, column: 13, scope: !1143)
!1150 = !DILocation(line: 224, column: 17, scope: !1143)
!1151 = !DILocation(line: 224, column: 32, scope: !1143)
!1152 = !DILocation(line: 225, column: 5, scope: !1143)
!1153 = !DILocation(line: 227, column: 5, scope: !1143)
!1154 = !DILocation(line: 228, column: 3, scope: !1143)
!1155 = !DILocation(line: 229, column: 24, scope: !1032)
!1156 = !DILocation(line: 229, column: 31, scope: !1032)
!1157 = !DILocation(line: 229, column: 3, scope: !1032)
!1158 = !DILocation(line: 229, column: 11, scope: !1032)
!1159 = !DILocation(line: 229, column: 22, scope: !1032)
!1160 = !DILocation(line: 232, column: 12, scope: !1032)
!1161 = !DILocation(line: 232, column: 20, scope: !1032)
!1162 = !DILocation(line: 232, column: 24, scope: !1032)
!1163 = !DILocation(line: 232, column: 41, scope: !1032)
!1164 = !DILocation(line: 232, column: 48, scope: !1032)
!1165 = !DILocation(line: 232, column: 10, scope: !1032)
!1166 = !DILocation(line: 232, column: 3, scope: !1032)
!1167 = distinct !DISubprogram(name: "get_8bit_row", scope: !1, file: !1, line: 119, type: !504, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !590)
!1168 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1167, file: !1, line: 119, type: !202)
!1169 = !DILocation(line: 119, column: 30, scope: !1167)
!1170 = !DILocalVariable(name: "sinfo", arg: 2, scope: !1167, file: !1, line: 119, type: !500)
!1171 = !DILocation(line: 119, column: 54, scope: !1167)
!1172 = !DILocalVariable(name: "source", scope: !1167, file: !1, line: 122, type: !190)
!1173 = !DILocation(line: 122, column: 18, scope: !1167)
!1174 = !DILocation(line: 122, column: 44, scope: !1167)
!1175 = !DILocalVariable(name: "colormap", scope: !1167, file: !1, line: 123, type: !237)
!1176 = !DILocation(line: 123, column: 23, scope: !1167)
!1177 = !DILocation(line: 123, column: 34, scope: !1167)
!1178 = !DILocation(line: 123, column: 42, scope: !1167)
!1179 = !DILocalVariable(name: "image_ptr", scope: !1167, file: !1, line: 124, type: !237)
!1180 = !DILocation(line: 124, column: 14, scope: !1167)
!1181 = !DILocalVariable(name: "t", scope: !1167, file: !1, line: 125, type: !228)
!1182 = !DILocation(line: 125, column: 16, scope: !1167)
!1183 = !DILocalVariable(name: "inptr", scope: !1167, file: !1, line: 126, type: !239)
!1184 = !DILocation(line: 126, column: 21, scope: !1167)
!1185 = !DILocalVariable(name: "outptr", scope: !1167, file: !1, line: 126, type: !239)
!1186 = !DILocation(line: 126, column: 28, scope: !1167)
!1187 = !DILocalVariable(name: "col", scope: !1167, file: !1, line: 127, type: !244)
!1188 = !DILocation(line: 127, column: 23, scope: !1167)
!1189 = !DILocation(line: 130, column: 3, scope: !1167)
!1190 = !DILocation(line: 130, column: 11, scope: !1167)
!1191 = !DILocation(line: 130, column: 21, scope: !1167)
!1192 = !DILocation(line: 131, column: 17, scope: !1167)
!1193 = !DILocation(line: 131, column: 24, scope: !1167)
!1194 = !DILocation(line: 131, column: 29, scope: !1167)
!1195 = !DILocation(line: 132, column: 21, scope: !1167)
!1196 = !DILocation(line: 132, column: 28, scope: !1167)
!1197 = !DILocation(line: 132, column: 36, scope: !1167)
!1198 = !DILocation(line: 133, column: 6, scope: !1167)
!1199 = !DILocation(line: 133, column: 14, scope: !1167)
!1200 = !DILocation(line: 131, column: 15, scope: !1167)
!1201 = !DILocation(line: 131, column: 13, scope: !1167)
!1202 = !DILocation(line: 136, column: 11, scope: !1167)
!1203 = !DILocation(line: 136, column: 9, scope: !1167)
!1204 = !DILocation(line: 137, column: 12, scope: !1167)
!1205 = !DILocation(line: 137, column: 20, scope: !1167)
!1206 = !DILocation(line: 137, column: 24, scope: !1167)
!1207 = !DILocation(line: 137, column: 10, scope: !1167)
!1208 = !DILocation(line: 138, column: 14, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1167, file: !1, line: 138, column: 3)
!1210 = !DILocation(line: 138, column: 21, scope: !1209)
!1211 = !DILocation(line: 138, column: 12, scope: !1209)
!1212 = !DILocation(line: 138, column: 8, scope: !1209)
!1213 = !DILocation(line: 138, column: 34, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1209, file: !1, line: 138, column: 3)
!1215 = !DILocation(line: 138, column: 38, scope: !1214)
!1216 = !DILocation(line: 138, column: 3, scope: !1209)
!1217 = !DILocation(line: 139, column: 9, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1214, file: !1, line: 138, column: 50)
!1219 = !DILocation(line: 139, column: 7, scope: !1218)
!1220 = !DILocation(line: 140, column: 17, scope: !1218)
!1221 = !DILocation(line: 140, column: 29, scope: !1218)
!1222 = !DILocation(line: 140, column: 12, scope: !1218)
!1223 = !DILocation(line: 140, column: 15, scope: !1218)
!1224 = !DILocation(line: 141, column: 17, scope: !1218)
!1225 = !DILocation(line: 141, column: 29, scope: !1218)
!1226 = !DILocation(line: 141, column: 12, scope: !1218)
!1227 = !DILocation(line: 141, column: 15, scope: !1218)
!1228 = !DILocation(line: 142, column: 17, scope: !1218)
!1229 = !DILocation(line: 142, column: 29, scope: !1218)
!1230 = !DILocation(line: 142, column: 12, scope: !1218)
!1231 = !DILocation(line: 142, column: 15, scope: !1218)
!1232 = !DILocation(line: 143, column: 3, scope: !1218)
!1233 = !DILocation(line: 138, column: 46, scope: !1214)
!1234 = !DILocation(line: 138, column: 3, scope: !1214)
!1235 = distinct !{!1235, !1216, !1236, !828}
!1236 = !DILocation(line: 143, column: 3, scope: !1209)
!1237 = !DILocation(line: 145, column: 3, scope: !1167)
!1238 = distinct !DISubprogram(name: "get_24bit_row", scope: !1, file: !1, line: 150, type: !504, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !590)
!1239 = !DILocalVariable(name: "cinfo", arg: 1, scope: !1238, file: !1, line: 150, type: !202)
!1240 = !DILocation(line: 150, column: 31, scope: !1238)
!1241 = !DILocalVariable(name: "sinfo", arg: 2, scope: !1238, file: !1, line: 150, type: !500)
!1242 = !DILocation(line: 150, column: 55, scope: !1238)
!1243 = !DILocalVariable(name: "source", scope: !1238, file: !1, line: 153, type: !190)
!1244 = !DILocation(line: 153, column: 18, scope: !1238)
!1245 = !DILocation(line: 153, column: 44, scope: !1238)
!1246 = !DILocalVariable(name: "image_ptr", scope: !1238, file: !1, line: 154, type: !237)
!1247 = !DILocation(line: 154, column: 14, scope: !1238)
!1248 = !DILocalVariable(name: "inptr", scope: !1238, file: !1, line: 155, type: !239)
!1249 = !DILocation(line: 155, column: 21, scope: !1238)
!1250 = !DILocalVariable(name: "outptr", scope: !1238, file: !1, line: 155, type: !239)
!1251 = !DILocation(line: 155, column: 28, scope: !1238)
!1252 = !DILocalVariable(name: "col", scope: !1238, file: !1, line: 156, type: !244)
!1253 = !DILocation(line: 156, column: 23, scope: !1238)
!1254 = !DILocation(line: 159, column: 3, scope: !1238)
!1255 = !DILocation(line: 159, column: 11, scope: !1238)
!1256 = !DILocation(line: 159, column: 21, scope: !1238)
!1257 = !DILocation(line: 160, column: 17, scope: !1238)
!1258 = !DILocation(line: 160, column: 24, scope: !1238)
!1259 = !DILocation(line: 160, column: 29, scope: !1238)
!1260 = !DILocation(line: 161, column: 21, scope: !1238)
!1261 = !DILocation(line: 161, column: 28, scope: !1238)
!1262 = !DILocation(line: 161, column: 36, scope: !1238)
!1263 = !DILocation(line: 162, column: 6, scope: !1238)
!1264 = !DILocation(line: 162, column: 14, scope: !1238)
!1265 = !DILocation(line: 160, column: 15, scope: !1238)
!1266 = !DILocation(line: 160, column: 13, scope: !1238)
!1267 = !DILocation(line: 167, column: 11, scope: !1238)
!1268 = !DILocation(line: 167, column: 9, scope: !1238)
!1269 = !DILocation(line: 168, column: 12, scope: !1238)
!1270 = !DILocation(line: 168, column: 20, scope: !1238)
!1271 = !DILocation(line: 168, column: 24, scope: !1238)
!1272 = !DILocation(line: 168, column: 10, scope: !1238)
!1273 = !DILocation(line: 169, column: 14, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1238, file: !1, line: 169, column: 3)
!1275 = !DILocation(line: 169, column: 21, scope: !1274)
!1276 = !DILocation(line: 169, column: 12, scope: !1274)
!1277 = !DILocation(line: 169, column: 8, scope: !1274)
!1278 = !DILocation(line: 169, column: 34, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1274, file: !1, line: 169, column: 3)
!1280 = !DILocation(line: 169, column: 38, scope: !1279)
!1281 = !DILocation(line: 169, column: 3, scope: !1274)
!1282 = !DILocation(line: 170, column: 23, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !1279, file: !1, line: 169, column: 50)
!1284 = !DILocation(line: 170, column: 17, scope: !1283)
!1285 = !DILocation(line: 170, column: 5, scope: !1283)
!1286 = !DILocation(line: 170, column: 15, scope: !1283)
!1287 = !DILocation(line: 171, column: 23, scope: !1283)
!1288 = !DILocation(line: 171, column: 17, scope: !1283)
!1289 = !DILocation(line: 171, column: 5, scope: !1283)
!1290 = !DILocation(line: 171, column: 15, scope: !1283)
!1291 = !DILocation(line: 172, column: 23, scope: !1283)
!1292 = !DILocation(line: 172, column: 17, scope: !1283)
!1293 = !DILocation(line: 172, column: 5, scope: !1283)
!1294 = !DILocation(line: 172, column: 15, scope: !1283)
!1295 = !DILocation(line: 173, column: 12, scope: !1283)
!1296 = !DILocation(line: 174, column: 3, scope: !1283)
!1297 = !DILocation(line: 169, column: 46, scope: !1279)
!1298 = !DILocation(line: 169, column: 3, scope: !1279)
!1299 = distinct !{!1299, !1281, !1300, !828}
!1300 = !DILocation(line: 174, column: 3, scope: !1274)
!1301 = !DILocation(line: 176, column: 3, scope: !1238)
