; ModuleID = 'cBench/consumer_tiff2bw/src/tif_dirwrite.c'
source_filename = "cBench/consumer_tiff2bw/src/tif_dirwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tiff = type { ptr, i32, i32, i32, i32, i32, %struct.TIFFDirectory, %struct.TIFFHeader, ptr, ptr, ptr, i32, i16, i32, i32, i32, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr }
%struct.TIFFDirectory = type { [3 x i64], i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, double, double, float, float, i16, i16, float, float, [2 x i16], [3 x ptr], [2 x i16], i16, ptr, double, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i16, ptr, ptr, [2 x i16], i16, ptr, ptr, ptr, [3 x ptr], i16, i16, [2 x i16], i32, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i32, ptr, ptr, float, ptr, ptr }
%struct.TIFFHeader = type { i16, i16, i32 }
%struct.TIFFFieldInfo = type { i32, i16, i16, i32, i16, i8, i8, ptr }
%struct.TIFFDirEntry = type { i16, i16, i32, i32 }

@.str = private unnamed_addr constant [43 x i8] c"Error post-encoding before directory write\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [43 x i8] c"Error flushing data before directory write\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [37 x i8] c"Cannot write directory, out of space\00", align 1, !dbg !9
@.str.3 = private unnamed_addr constant [30 x i8] c"Error writing directory count\00", align 1, !dbg !14
@.str.4 = private unnamed_addr constant [33 x i8] c"Error writing directory contents\00", align 1, !dbg !19
@.str.5 = private unnamed_addr constant [29 x i8] c"Error writing directory link\00", align 1, !dbg !24
@tiffDataWidth = external constant [0 x i32], align 4
@.str.6 = private unnamed_addr constant [34 x i8] c"Error writing data for field \22%s\22\00", align 1, !dbg !29
@.str.7 = private unnamed_addr constant [65 x i8] c"\22%s\22: Information lost writing value (%g) as (unsigned) RATIONAL\00", align 1, !dbg !34
@TIFFLinkDirectory.module = internal constant [18 x i8] c"TIFFLinkDirectory\00", align 16, !dbg !39
@.str.8 = private unnamed_addr constant [40 x i8] c"%s: Error writing SubIFD directory link\00", align 1, !dbg !420
@.str.9 = private unnamed_addr constant [26 x i8] c"Error writing TIFF header\00", align 1, !dbg !425
@.str.10 = private unnamed_addr constant [31 x i8] c"Error fetching directory count\00", align 1, !dbg !430
@.str.11 = private unnamed_addr constant [30 x i8] c"Error fetching directory link\00", align 1, !dbg !435

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @TIFFWriteDirectory(ptr noundef %0) #0 !dbg !450 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca i16, align 2
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i64, align 8
  %13 = alloca [3 x i64], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !451, !DIExpression(), !452)
    #dbg_declare(ptr %4, !453, !DIExpression(), !454)
    #dbg_declare(ptr %5, !455, !DIExpression(), !456)
    #dbg_declare(ptr %6, !457, !DIExpression(), !458)
    #dbg_declare(ptr %7, !459, !DIExpression(), !460)
    #dbg_declare(ptr %8, !461, !DIExpression(), !462)
    #dbg_declare(ptr %9, !463, !DIExpression(), !464)
    #dbg_declare(ptr %10, !465, !DIExpression(), !466)
    #dbg_declare(ptr %11, !467, !DIExpression(), !469)
    #dbg_declare(ptr %12, !470, !DIExpression(), !471)
    #dbg_declare(ptr %13, !472, !DIExpression(), !473)
    #dbg_declare(ptr %14, !474, !DIExpression(), !475)
    #dbg_declare(ptr %15, !476, !DIExpression(), !477)
  %17 = load ptr, ptr %3, align 8, !dbg !478
  %18 = getelementptr inbounds nuw %struct.tiff, ptr %17, i32 0, i32 2, !dbg !480
  %19 = load i32, ptr %18, align 4, !dbg !480
  %20 = icmp eq i32 %19, 0, !dbg !481
  br i1 %20, label %21, label %22, !dbg !481

21:                                               ; preds = %1
  store i32 1, ptr %2, align 4, !dbg !482
  br label %607, !dbg !482

22:                                               ; preds = %1
  %23 = load ptr, ptr %3, align 8, !dbg !483
  %24 = getelementptr inbounds nuw %struct.tiff, ptr %23, i32 0, i32 3, !dbg !485
  %25 = load i32, ptr %24, align 8, !dbg !485
  %26 = and i32 %25, 4096, !dbg !486
  %27 = icmp ne i32 %26, 0, !dbg !486
  br i1 %27, label %28, label %44, !dbg !486

28:                                               ; preds = %22
  %29 = load ptr, ptr %3, align 8, !dbg !487
  %30 = getelementptr inbounds nuw %struct.tiff, ptr %29, i32 0, i32 3, !dbg !489
  %31 = load i32, ptr %30, align 8, !dbg !490
  %32 = and i32 %31, -4097, !dbg !490
  store i32 %32, ptr %30, align 8, !dbg !490
  %33 = load ptr, ptr %3, align 8, !dbg !491
  %34 = getelementptr inbounds nuw %struct.tiff, ptr %33, i32 0, i32 25, !dbg !493
  %35 = load ptr, ptr %34, align 8, !dbg !493
  %36 = load ptr, ptr %3, align 8, !dbg !494
  %37 = call i32 %35(ptr noundef %36), !dbg !495
  %38 = icmp ne i32 %37, 0, !dbg !495
  br i1 %38, label %43, label %39, !dbg !496

39:                                               ; preds = %28
  %40 = load ptr, ptr %3, align 8, !dbg !497
  %41 = getelementptr inbounds nuw %struct.tiff, ptr %40, i32 0, i32 0, !dbg !499
  %42 = load ptr, ptr %41, align 8, !dbg !499
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %42, ptr noundef @.str), !dbg !500
  store i32 0, ptr %2, align 4, !dbg !501
  br label %607, !dbg !501

43:                                               ; preds = %28
  br label %44, !dbg !502

44:                                               ; preds = %43, %22
  %45 = load ptr, ptr %3, align 8, !dbg !503
  %46 = getelementptr inbounds nuw %struct.tiff, ptr %45, i32 0, i32 32, !dbg !504
  %47 = load ptr, ptr %46, align 8, !dbg !504
  %48 = load ptr, ptr %3, align 8, !dbg !505
  call void %47(ptr noundef %48), !dbg !506
  %49 = load ptr, ptr %3, align 8, !dbg !507
  %50 = getelementptr inbounds nuw %struct.tiff, ptr %49, i32 0, i32 43, !dbg !509
  %51 = load i32, ptr %50, align 8, !dbg !509
  %52 = icmp sgt i32 %51, 0, !dbg !510
  br i1 %52, label %53, label %61, !dbg !511

53:                                               ; preds = %44
  %54 = load ptr, ptr %3, align 8, !dbg !512
  %55 = call i32 @TIFFFlushData1(ptr noundef %54), !dbg !513
  %56 = icmp ne i32 %55, 0, !dbg !513
  br i1 %56, label %61, label %57, !dbg !511

57:                                               ; preds = %53
  %58 = load ptr, ptr %3, align 8, !dbg !514
  %59 = getelementptr inbounds nuw %struct.tiff, ptr %58, i32 0, i32 0, !dbg !516
  %60 = load ptr, ptr %59, align 8, !dbg !516
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %60, ptr noundef @.str.1), !dbg !517
  store i32 0, ptr %2, align 4, !dbg !518
  br label %607, !dbg !518

61:                                               ; preds = %53, %44
  %62 = load ptr, ptr %3, align 8, !dbg !519
  %63 = getelementptr inbounds nuw %struct.tiff, ptr %62, i32 0, i32 3, !dbg !521
  %64 = load i32, ptr %63, align 8, !dbg !521
  %65 = and i32 %64, 512, !dbg !522
  %66 = icmp ne i32 %65, 0, !dbg !522
  br i1 %66, label %67, label %80, !dbg !523

67:                                               ; preds = %61
  %68 = load ptr, ptr %3, align 8, !dbg !524
  %69 = getelementptr inbounds nuw %struct.tiff, ptr %68, i32 0, i32 40, !dbg !525
  %70 = load ptr, ptr %69, align 8, !dbg !525
  %71 = icmp ne ptr %70, null, !dbg !524
  br i1 %71, label %72, label %80, !dbg !523

72:                                               ; preds = %67
  %73 = load ptr, ptr %3, align 8, !dbg !526
  %74 = getelementptr inbounds nuw %struct.tiff, ptr %73, i32 0, i32 40, !dbg !528
  %75 = load ptr, ptr %74, align 8, !dbg !528
  call void @_TIFFfree(ptr noundef %75), !dbg !529
  %76 = load ptr, ptr %3, align 8, !dbg !530
  %77 = getelementptr inbounds nuw %struct.tiff, ptr %76, i32 0, i32 40, !dbg !531
  store ptr null, ptr %77, align 8, !dbg !532
  %78 = load ptr, ptr %3, align 8, !dbg !533
  %79 = getelementptr inbounds nuw %struct.tiff, ptr %78, i32 0, i32 43, !dbg !534
  store i32 0, ptr %79, align 8, !dbg !535
  br label %80, !dbg !536

80:                                               ; preds = %72, %67, %61
  %81 = load ptr, ptr %3, align 8, !dbg !537
  %82 = getelementptr inbounds nuw %struct.tiff, ptr %81, i32 0, i32 3, !dbg !538
  %83 = load i32, ptr %82, align 8, !dbg !539
  %84 = and i32 %83, -81, !dbg !539
  store i32 %84, ptr %82, align 8, !dbg !539
  %85 = load ptr, ptr %3, align 8, !dbg !540
  %86 = getelementptr inbounds nuw %struct.tiff, ptr %85, i32 0, i32 6, !dbg !541
  store ptr %86, ptr %11, align 8, !dbg !542
  store i32 0, ptr %7, align 4, !dbg !543
  store i64 0, ptr %12, align 8, !dbg !544
  br label %87, !dbg !546

87:                                               ; preds = %111, %80
  %88 = load i64, ptr %12, align 8, !dbg !547
  %89 = icmp ule i64 %88, 95, !dbg !549
  br i1 %89, label %90, label %114, !dbg !550

90:                                               ; preds = %87
  %91 = load ptr, ptr %3, align 8, !dbg !551
  %92 = getelementptr inbounds nuw %struct.tiff, ptr %91, i32 0, i32 6, !dbg !551
  %93 = getelementptr inbounds nuw %struct.TIFFDirectory, ptr %92, i32 0, i32 0, !dbg !551
  %94 = load i64, ptr %12, align 8, !dbg !551
  %95 = udiv i64 %94, 32, !dbg !551
  %96 = getelementptr inbounds nuw [3 x i64], ptr %93, i64 0, i64 %95, !dbg !551
  %97 = load i64, ptr %96, align 8, !dbg !551
  %98 = load i64, ptr %12, align 8, !dbg !551
  %99 = and i64 %98, 31, !dbg !551
  %100 = shl i64 1, %99, !dbg !551
  %101 = and i64 %97, %100, !dbg !551
  %102 = icmp ne i64 %101, 0, !dbg !551
  br i1 %102, label %103, label %110, !dbg !551

103:                                              ; preds = %90
  %104 = load i64, ptr %12, align 8, !dbg !553
  %105 = icmp ult i64 %104, 5, !dbg !554
  %106 = zext i1 %105 to i64, !dbg !553
  %107 = select i1 %105, i32 2, i32 1, !dbg !553
  %108 = load i32, ptr %7, align 4, !dbg !555
  %109 = add i32 %108, %107, !dbg !555
  store i32 %109, ptr %7, align 4, !dbg !555
  br label %110, !dbg !556

110:                                              ; preds = %103, %90
  br label %111, !dbg !551

111:                                              ; preds = %110
  %112 = load i64, ptr %12, align 8, !dbg !557
  %113 = add i64 %112, 1, !dbg !557
  store i64 %113, ptr %12, align 8, !dbg !557
  br label %87, !dbg !558, !llvm.loop !559

114:                                              ; preds = %87
  %115 = load i32, ptr %7, align 4, !dbg !562
  %116 = zext i32 %115 to i64, !dbg !562
  %117 = mul i64 %116, 12, !dbg !563
  %118 = trunc i64 %117 to i32, !dbg !562
  store i32 %118, ptr %8, align 4, !dbg !564
  %119 = load i32, ptr %8, align 4, !dbg !565
  %120 = call ptr @_TIFFmalloc(i32 noundef %119), !dbg !566
  store ptr %120, ptr %9, align 8, !dbg !567
  %121 = load ptr, ptr %9, align 8, !dbg !568
  %122 = icmp eq ptr %121, null, !dbg !570
  br i1 %122, label %123, label %127, !dbg !570

123:                                              ; preds = %114
  %124 = load ptr, ptr %3, align 8, !dbg !571
  %125 = getelementptr inbounds nuw %struct.tiff, ptr %124, i32 0, i32 0, !dbg !573
  %126 = load ptr, ptr %125, align 8, !dbg !573
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %126, ptr noundef @.str.2), !dbg !574
  store i32 0, ptr %2, align 4, !dbg !575
  br label %607, !dbg !575

127:                                              ; preds = %114
  %128 = load ptr, ptr %3, align 8, !dbg !576
  %129 = getelementptr inbounds nuw %struct.tiff, ptr %128, i32 0, i32 4, !dbg !578
  %130 = load i32, ptr %129, align 4, !dbg !578
  %131 = icmp eq i32 %130, 0, !dbg !579
  br i1 %131, label %132, label %137, !dbg !580

132:                                              ; preds = %127
  %133 = load ptr, ptr %3, align 8, !dbg !581
  %134 = call i32 @TIFFLinkDirectory(ptr noundef %133), !dbg !582
  %135 = icmp ne i32 %134, 0, !dbg !582
  br i1 %135, label %137, label %136, !dbg !580

136:                                              ; preds = %132
  br label %605, !dbg !583

137:                                              ; preds = %132, %127
  %138 = load ptr, ptr %3, align 8, !dbg !584
  %139 = getelementptr inbounds nuw %struct.tiff, ptr %138, i32 0, i32 4, !dbg !585
  %140 = load i32, ptr %139, align 4, !dbg !585
  %141 = sext i32 %140 to i64, !dbg !584
  %142 = add i64 %141, 2, !dbg !586
  %143 = load i32, ptr %8, align 4, !dbg !587
  %144 = sext i32 %143 to i64, !dbg !587
  %145 = add i64 %142, %144, !dbg !588
  %146 = add i64 %145, 4, !dbg !589
  %147 = trunc i64 %146 to i32, !dbg !590
  %148 = load ptr, ptr %3, align 8, !dbg !591
  %149 = getelementptr inbounds nuw %struct.tiff, ptr %148, i32 0, i32 15, !dbg !592
  store i32 %147, ptr %149, align 8, !dbg !593
  %150 = load ptr, ptr %3, align 8, !dbg !594
  %151 = getelementptr inbounds nuw %struct.tiff, ptr %150, i32 0, i32 15, !dbg !596
  %152 = load i32, ptr %151, align 8, !dbg !596
  %153 = and i32 %152, 1, !dbg !597
  %154 = icmp ne i32 %153, 0, !dbg !597
  br i1 %154, label %155, label %160, !dbg !597

155:                                              ; preds = %137
  %156 = load ptr, ptr %3, align 8, !dbg !598
  %157 = getelementptr inbounds nuw %struct.tiff, ptr %156, i32 0, i32 15, !dbg !599
  %158 = load i32, ptr %157, align 8, !dbg !600
  %159 = add nsw i32 %158, 1, !dbg !600
  store i32 %159, ptr %157, align 8, !dbg !600
  br label %160, !dbg !598

160:                                              ; preds = %155, %137
  %161 = load ptr, ptr %3, align 8, !dbg !601
  %162 = getelementptr inbounds nuw %struct.tiff, ptr %161, i32 0, i32 51, !dbg !601
  %163 = load ptr, ptr %162, align 8, !dbg !601
  %164 = load ptr, ptr %3, align 8, !dbg !601
  %165 = getelementptr inbounds nuw %struct.tiff, ptr %164, i32 0, i32 48, !dbg !601
  %166 = load ptr, ptr %165, align 8, !dbg !601
  %167 = load ptr, ptr %3, align 8, !dbg !601
  %168 = getelementptr inbounds nuw %struct.tiff, ptr %167, i32 0, i32 15, !dbg !601
  %169 = load i32, ptr %168, align 8, !dbg !601
  %170 = call i32 %163(ptr noundef %166, i32 noundef %169, i32 noundef 0), !dbg !601
  %171 = load ptr, ptr %3, align 8, !dbg !602
  %172 = getelementptr inbounds nuw %struct.tiff, ptr %171, i32 0, i32 12, !dbg !603
  %173 = load i16, ptr %172, align 4, !dbg !604
  %174 = add i16 %173, 1, !dbg !604
  store i16 %174, ptr %172, align 4, !dbg !604
  %175 = load ptr, ptr %9, align 8, !dbg !605
  store ptr %175, ptr %10, align 8, !dbg !606
  %176 = getelementptr inbounds [3 x i64], ptr %13, i64 0, i64 0, !dbg !607
  %177 = load ptr, ptr %11, align 8, !dbg !608
  %178 = getelementptr inbounds nuw %struct.TIFFDirectory, ptr %177, i32 0, i32 0, !dbg !609
  %179 = getelementptr inbounds [3 x i64], ptr %178, i64 0, i64 0, !dbg !608
  call void @_TIFFmemcpy(ptr noundef %176, ptr noundef %179, i32 noundef 24), !dbg !610
  %180 = getelementptr inbounds [3 x i64], ptr %13, i64 0, i64 0, !dbg !611
  %181 = load i64, ptr %180, align 16, !dbg !611
  %182 = and i64 %181, 2147483648, !dbg !611
  %183 = icmp ne i64 %182, 0, !dbg !611
  br i1 %183, label %184, label %199, !dbg !613

184:                                              ; preds = %160
  %185 = load ptr, ptr %11, align 8, !dbg !614
  %186 = getelementptr inbounds nuw %struct.TIFFDirectory, ptr %185, i32 0, i32 30, !dbg !615
  %187 = load i16, ptr %186, align 4, !dbg !615
  %188 = icmp ne i16 %187, 0, !dbg !614
  br i1 %188, label %199, label %189, !dbg !613

189:                                              ; preds = %184
  %190 = getelementptr inbounds [3 x i64], ptr %13, i64 0, i64 0, !dbg !616
  %191 = load i64, ptr %190, align 16, !dbg !616
  %192 = and i64 %191, -2147483649, !dbg !616
  store i64 %192, ptr %190, align 16, !dbg !616
  %193 = load i32, ptr %7, align 4, !dbg !618
  %194 = add i32 %193, -1, !dbg !618
  store i32 %194, ptr %7, align 4, !dbg !618
  %195 = load i32, ptr %8, align 4, !dbg !619
  %196 = sext i32 %195 to i64, !dbg !619
  %197 = sub i64 %196, 12, !dbg !619
  %198 = trunc i64 %197 to i32, !dbg !619
  store i32 %198, ptr %8, align 4, !dbg !619
  br label %199, !dbg !620

199:                                              ; preds = %189, %184, %160
  store i32 0, ptr %14, align 4, !dbg !621
  %200 = load ptr, ptr %3, align 8, !dbg !623
  %201 = getelementptr inbounds nuw %struct.tiff, ptr %200, i32 0, i32 56, !dbg !624
  %202 = load i32, ptr %201, align 8, !dbg !624
  store i32 %202, ptr %15, align 4, !dbg !625
  br label %203, !dbg !626

203:                                              ; preds = %498, %199
  %204 = load i32, ptr %15, align 4, !dbg !627
  %205 = icmp sgt i32 %204, 0, !dbg !629
  br i1 %205, label %206, label %503, !dbg !630

206:                                              ; preds = %203
    #dbg_declare(ptr %16, !631, !DIExpression(), !635)
  %207 = load ptr, ptr %3, align 8, !dbg !636
  %208 = getelementptr inbounds nuw %struct.tiff, ptr %207, i32 0, i32 55, !dbg !637
  %209 = load ptr, ptr %208, align 8, !dbg !637
  %210 = load i32, ptr %14, align 4, !dbg !638
  %211 = sext i32 %210 to i64, !dbg !636
  %212 = getelementptr inbounds ptr, ptr %209, i64 %211, !dbg !636
  %213 = load ptr, ptr %212, align 8, !dbg !636
  store ptr %213, ptr %16, align 8, !dbg !635
  %214 = load ptr, ptr %16, align 8, !dbg !639
  %215 = getelementptr inbounds nuw %struct.TIFFFieldInfo, ptr %214, i32 0, i32 4, !dbg !639
  %216 = load i16, ptr %215, align 4, !dbg !639
  %217 = zext i16 %216 to i32, !dbg !639
  %218 = sdiv i32 %217, 32, !dbg !639
  %219 = sext i32 %218 to i64, !dbg !639
  %220 = getelementptr inbounds [3 x i64], ptr %13, i64 0, i64 %219, !dbg !639
  %221 = load i64, ptr %220, align 8, !dbg !639
  %222 = load ptr, ptr %16, align 8, !dbg !639
  %223 = getelementptr inbounds nuw %struct.TIFFFieldInfo, ptr %222, i32 0, i32 4, !dbg !639
  %224 = load i16, ptr %223, align 4, !dbg !639
  %225 = zext i16 %224 to i32, !dbg !639
  %226 = and i32 %225, 31, !dbg !639
  %227 = zext i32 %226 to i64, !dbg !639
  %228 = shl i64 1, %227, !dbg !639
  %229 = and i64 %221, %228, !dbg !639
  %230 = icmp ne i64 %229, 0, !dbg !639
  br i1 %230, label %232, label %231, !dbg !641

231:                                              ; preds = %206
  br label %498, !dbg !642

232:                                              ; preds = %206
  %233 = load ptr, ptr %16, align 8, !dbg !643
  %234 = getelementptr inbounds nuw %struct.TIFFFieldInfo, ptr %233, i32 0, i32 4, !dbg !644
  %235 = load i16, ptr %234, align 4, !dbg !644
  %236 = zext i16 %235 to i32, !dbg !643
  switch i32 %236, label %470 [
    i32 25, label %237
    i32 24, label %265
    i32 17, label %293
    i32 26, label %299
    i32 1, label %309
    i32 2, label %321
    i32 4, label %333
    i32 3, label %353
    i32 6, label %373
    i32 18, label %373
    i32 19, label %373
    i32 32, label %373
    i32 33, label %383
    i32 34, label %383
    i32 23, label %395
    i32 37, label %395
    i32 39, label %395
    i32 47, label %395
    i32 46, label %405
    i32 44, label %412
    i32 49, label %419
  ], !dbg !645

237:                                              ; preds = %232
  %238 = load ptr, ptr %3, align 8, !dbg !646
  %239 = getelementptr inbounds nuw %struct.tiff, ptr %238, i32 0, i32 3, !dbg !646
  %240 = load i32, ptr %239, align 8, !dbg !646
  %241 = and i32 %240, 1024, !dbg !646
  %242 = icmp ne i32 %241, 0, !dbg !646
  %243 = zext i1 %242 to i64, !dbg !646
  %244 = select i1 %242, i32 324, i32 273, !dbg !646
  store i32 %244, ptr %6, align 4, !dbg !648
  %245 = load i32, ptr %6, align 4, !dbg !649
  %246 = load ptr, ptr %16, align 8, !dbg !651
  %247 = getelementptr inbounds nuw %struct.TIFFFieldInfo, ptr %246, i32 0, i32 0, !dbg !652
  %248 = load i32, ptr %247, align 8, !dbg !652
  %249 = icmp ne i32 %245, %248, !dbg !653
  br i1 %249, label %250, label %251, !dbg !653

250:                                              ; preds = %237
  br label %498, !dbg !654

251:                                              ; preds = %237
  %252 = load ptr, ptr %3, align 8, !dbg !655
  %253 = load i32, ptr %6, align 4, !dbg !657
  %254 = load ptr, ptr %10, align 8, !dbg !658
  %255 = load ptr, ptr %11, align 8, !dbg !659
  %256 = getelementptr inbounds nuw %struct.TIFFDirectory, ptr %255, i32 0, i32 43, !dbg !660
  %257 = load i32, ptr %256, align 4, !dbg !660
  %258 = load ptr, ptr %11, align 8, !dbg !661
  %259 = getelementptr inbounds nuw %struct.TIFFDirectory, ptr %258, i32 0, i32 44, !dbg !662
  %260 = load ptr, ptr %259, align 8, !dbg !662
  %261 = call i32 @TIFFWriteLongArray(ptr noundef %252, i32 noundef 4, i32 noundef %253, ptr noundef %254, i32 noundef %257, ptr noundef %260), !dbg !663
  %262 = icmp ne i32 %261, 0, !dbg !663
  br i1 %262, label %264, label %263, !dbg !664

263:                                              ; preds = %251
  br label %605, !dbg !665

264:                                              ; preds = %251
  br label %478, !dbg !666

265:                                              ; preds = %232
  %266 = load ptr, ptr %3, align 8, !dbg !667
  %267 = getelementptr inbounds nuw %struct.tiff, ptr %266, i32 0, i32 3, !dbg !667
  %268 = load i32, ptr %267, align 8, !dbg !667
  %269 = and i32 %268, 1024, !dbg !667
  %270 = icmp ne i32 %269, 0, !dbg !667
  %271 = zext i1 %270 to i64, !dbg !667
  %272 = select i1 %270, i32 325, i32 279, !dbg !667
  store i32 %272, ptr %6, align 4, !dbg !668
  %273 = load i32, ptr %6, align 4, !dbg !669
  %274 = load ptr, ptr %16, align 8, !dbg !671
  %275 = getelementptr inbounds nuw %struct.TIFFFieldInfo, ptr %274, i32 0, i32 0, !dbg !672
  %276 = load i32, ptr %275, align 8, !dbg !672
  %277 = icmp ne i32 %273, %276, !dbg !673
  br i1 %277, label %278, label %279, !dbg !673

278:                                              ; preds = %265
  br label %498, !dbg !674

279:                                              ; preds = %265
  %280 = load ptr, ptr %3, align 8, !dbg !675
  %281 = load i32, ptr %6, align 4, !dbg !677
  %282 = load ptr, ptr %10, align 8, !dbg !678
  %283 = load ptr, ptr %11, align 8, !dbg !679
  %284 = getelementptr inbounds nuw %struct.TIFFDirectory, ptr %283, i32 0, i32 43, !dbg !680
  %285 = load i32, ptr %284, align 4, !dbg !680
  %286 = load ptr, ptr %11, align 8, !dbg !681
  %287 = getelementptr inbounds nuw %struct.TIFFDirectory, ptr %286, i32 0, i32 45, !dbg !682
  %288 = load ptr, ptr %287, align 8, !dbg !682
  %289 = call i32 @TIFFWriteLongArray(ptr noundef %280, i32 noundef 4, i32 noundef %281, ptr noundef %282, i32 noundef %285, ptr noundef %288), !dbg !683
  %290 = icmp ne i32 %289, 0, !dbg !683
  br i1 %290, label %292, label %291, !dbg !684

291:                                              ; preds = %279
  br label %605, !dbg !685

292:                                              ; preds = %279
  br label %478, !dbg !686

293:                                              ; preds = %232
  %294 = load ptr, ptr %3, align 8, !dbg !687
  %295 = load ptr, ptr %10, align 8, !dbg !688
  %296 = load ptr, ptr %11, align 8, !dbg !689
  %297 = getelementptr inbounds nuw %struct.TIFFDirectory, ptr %296, i32 0, i32 16, !dbg !690
  %298 = load i32, ptr %297, align 4, !dbg !690
  call void @TIFFSetupShortLong(ptr noundef %294, i32 noundef 278, ptr noundef %295, i32 noundef %298), !dbg !691
  br label %478, !dbg !692

299:                                              ; preds = %232
  %300 = load ptr, ptr %3, align 8, !dbg !693
  %301 = load ptr, ptr %10, align 8, !dbg !695
  %302 = load ptr, ptr %11, align 8, !dbg !696
  %303 = getelementptr inbounds nuw %struct.TIFFDirectory, ptr %302, i32 0, i32 28, !dbg !697
  %304 = getelementptr inbounds [3 x ptr], ptr %303, i64 0, i64 0, !dbg !696
  %305 = call i32 @TIFFWriteShortTable(ptr noundef %300, i32 noundef 320, ptr noundef %301, i32 noundef 3, ptr noundef %304), !dbg !698
  %306 = icmp ne i32 %305, 0, !dbg !698
  br i1 %306, label %308, label %307, !dbg !699

307:                                              ; preds = %299
  br label %605, !dbg !700

308:                                              ; preds = %299
  br label %478, !dbg !701

309:                                              ; preds = %232
  %310 = load ptr, ptr %3, align 8, !dbg !702
  %311 = load ptr, ptr %10, align 8, !dbg !703
  %312 = getelementptr inbounds nuw %struct.TIFFDirEntry, ptr %311, i32 1, !dbg !703
  store ptr %312, ptr %10, align 8, !dbg !703
  %313 = load ptr, ptr %11, align 8, !dbg !704
  %314 = getelementptr inbounds nuw %struct.TIFFDirectory, ptr %313, i32 0, i32 1, !dbg !705
  %315 = load i32, ptr %314, align 8, !dbg !705
  call void @TIFFSetupShortLong(ptr noundef %310, i32 noundef 256, ptr noundef %311, i32 noundef %315), !dbg !706
  %316 = load ptr, ptr %3, align 8, !dbg !707
  %317 = load ptr, ptr %10, align 8, !dbg !708
  %318 = load ptr, ptr %11, align 8, !dbg !709
  %319 = getelementptr inbounds nuw %struct.TIFFDirectory, ptr %318, i32 0, i32 2, !dbg !710
  %320 = load i32, ptr %319, align 4, !dbg !710
  call void @TIFFSetupShortLong(ptr noundef %316, i32 noundef 257, ptr noundef %317, i32 noundef %320), !dbg !711
  br label %478, !dbg !712

321:                                              ; preds = %232
  %322 = load ptr, ptr %3, align 8, !dbg !713
  %323 = load ptr, ptr %10, align 8, !dbg !714
  %324 = getelementptr inbounds nuw %struct.TIFFDirEntry, ptr %323, i32 1, !dbg !714
  store ptr %324, ptr %10, align 8, !dbg !714
  %325 = load ptr, ptr %11, align 8, !dbg !715
  %326 = getelementptr inbounds nuw %struct.TIFFDirectory, ptr %325, i32 0, i32 4, !dbg !716
  %327 = load i32, ptr %326, align 4, !dbg !716
  call void @TIFFSetupShortLong(ptr noundef %322, i32 noundef 322, ptr noundef %323, i32 noundef %327), !dbg !717
  %328 = load ptr, ptr %3, align 8, !dbg !718
  %329 = load ptr, ptr %10, align 8, !dbg !719
  %330 = load ptr, ptr %11, align 8, !dbg !720
  %331 = getelementptr inbounds nuw %struct.TIFFDirectory, ptr %330, i32 0, i32 5, !dbg !721
  %332 = load i32, ptr %331, align 8, !dbg !721
  call void @TIFFSetupShortLong(ptr noundef %328, i32 noundef 323, ptr noundef %329, i32 noundef %332), !dbg !722
  br label %478, !dbg !723

333:                                              ; preds = %232
  %334 = load ptr, ptr %3, align 8, !dbg !724
  %335 = load ptr, ptr %10, align 8, !dbg !724
  %336 = load ptr, ptr %11, align 8, !dbg !724
  %337 = getelementptr inbounds nuw %struct.TIFFDirectory, ptr %336, i32 0, i32 25, !dbg !724
  %338 = call i32 @TIFFWriteRationalArray(ptr noundef %334, i32 noundef 5, i32 noundef 286, ptr noundef %335, i32 noundef 1, ptr noundef %337), !dbg !724
  %339 = icmp ne i32 %338, 0, !dbg !724
  br i1 %339, label %341, label %340, !dbg !724

340:                                              ; preds = %333
  br label %605, !dbg !724

341:                                              ; preds = %333
  %342 = load ptr, ptr %3, align 8, !dbg !727
  %343 = load ptr, ptr %10, align 8, !dbg !727
  %344 = getelementptr inbounds %struct.TIFFDirEntry, ptr %343, i64 1, !dbg !727
  %345 = load ptr, ptr %11, align 8, !dbg !727
  %346 = getelementptr inbounds nuw %struct.TIFFDirectory, ptr %345, i32 0, i32 26, !dbg !727
  %347 = call i32 @TIFFWriteRationalArray(ptr noundef %342, i32 noundef 5, i32 noundef 287, ptr noundef %344, i32 noundef 1, ptr noundef %346), !dbg !727
  %348 = icmp ne i32 %347, 0, !dbg !727
  br i1 %348, label %350, label %349, !dbg !727

349:                                              ; preds = %341
  br label %605, !dbg !727

350:                                              ; preds = %341
  %351 = load ptr, ptr %10, align 8, !dbg !729
  %352 = getelementptr inbounds nuw %struct.TIFFDirEntry, ptr %351, i32 1, !dbg !729
  store ptr %352, ptr %10, align 8, !dbg !729
  br label %478, !dbg !730

353:                                              ; preds = %232
  %354 = load ptr, ptr %3, align 8, !dbg !731
  %355 = load ptr, ptr %10, align 8, !dbg !731
  %356 = load ptr, ptr %11, align 8, !dbg !731
  %357 = getelementptr inbounds nuw %struct.TIFFDirectory, ptr %356, i32 0, i32 21, !dbg !731
  %358 = call i32 @TIFFWriteRationalArray(ptr noundef %354, i32 noundef 5, i32 noundef 282, ptr noundef %355, i32 noundef 1, ptr noundef %357), !dbg !731
  %359 = icmp ne i32 %358, 0, !dbg !731
  br i1 %359, label %361, label %360, !dbg !731

360:                                              ; preds = %353
  br label %605, !dbg !731

361:                                              ; preds = %353
  %362 = load ptr, ptr %3, align 8, !dbg !734
  %363 = load ptr, ptr %10, align 8, !dbg !734
  %364 = getelementptr inbounds %struct.TIFFDirEntry, ptr %363, i64 1, !dbg !734
  %365 = load ptr, ptr %11, align 8, !dbg !734
  %366 = getelementptr inbounds nuw %struct.TIFFDirectory, ptr %365, i32 0, i32 22, !dbg !734
  %367 = call i32 @TIFFWriteRationalArray(ptr noundef %362, i32 noundef 5, i32 noundef 283, ptr noundef %364, i32 noundef 1, ptr noundef %366), !dbg !734
  %368 = icmp ne i32 %367, 0, !dbg !734
  br i1 %368, label %370, label %369, !dbg !734

369:                                              ; preds = %361
  br label %605, !dbg !734

370:                                              ; preds = %361
  %371 = load ptr, ptr %10, align 8, !dbg !736
  %372 = getelementptr inbounds nuw %struct.TIFFDirEntry, ptr %371, i32 1, !dbg !736
  store ptr %372, ptr %10, align 8, !dbg !736
  br label %478, !dbg !737

373:                                              ; preds = %232, %232, %232, %232
  %374 = load ptr, ptr %3, align 8, !dbg !738
  %375 = load ptr, ptr %16, align 8, !dbg !740
  %376 = getelementptr inbounds nuw %struct.TIFFFieldInfo, ptr %375, i32 0, i32 0, !dbg !741
  %377 = load i32, ptr %376, align 8, !dbg !741
  %378 = load ptr, ptr %10, align 8, !dbg !742
  %379 = call i32 @TIFFWritePerSampleShorts(ptr noundef %374, i32 noundef %377, ptr noundef %378), !dbg !743
  %380 = icmp ne i32 %379, 0, !dbg !743
  br i1 %380, label %382, label %381, !dbg !744

381:                                              ; preds = %373
  br label %605, !dbg !745

382:                                              ; preds = %373
  br label %478, !dbg !746

383:                                              ; preds = %232, %232
  %384 = load ptr, ptr %3, align 8, !dbg !747
  %385 = load ptr, ptr %3, align 8, !dbg !749
  %386 = call i32 @_TIFFSampleToTagType(ptr noundef %385), !dbg !750
  %387 = load ptr, ptr %16, align 8, !dbg !751
  %388 = getelementptr inbounds nuw %struct.TIFFFieldInfo, ptr %387, i32 0, i32 0, !dbg !752
  %389 = load i32, ptr %388, align 8, !dbg !752
  %390 = load ptr, ptr %10, align 8, !dbg !753
  %391 = call i32 @TIFFWritePerSampleAnys(ptr noundef %384, i32 noundef %386, i32 noundef %389, ptr noundef %390), !dbg !754
  %392 = icmp ne i32 %391, 0, !dbg !754
  br i1 %392, label %394, label %393, !dbg !755

393:                                              ; preds = %383
  br label %605, !dbg !756

394:                                              ; preds = %383
  br label %478, !dbg !757

395:                                              ; preds = %232, %232, %232, %232
  %396 = load ptr, ptr %3, align 8, !dbg !758
  %397 = load ptr, ptr %16, align 8, !dbg !760
  %398 = getelementptr inbounds nuw %struct.TIFFFieldInfo, ptr %397, i32 0, i32 0, !dbg !761
  %399 = load i32, ptr %398, align 8, !dbg !761
  %400 = load ptr, ptr %10, align 8, !dbg !762
  %401 = call i32 @TIFFSetupShortPair(ptr noundef %396, i32 noundef %399, ptr noundef %400), !dbg !763
  %402 = icmp ne i32 %401, 0, !dbg !763
  br i1 %402, label %404, label %403, !dbg !764

403:                                              ; preds = %395
  br label %605, !dbg !765

404:                                              ; preds = %395
  br label %478, !dbg !766

405:                                              ; preds = %232
  %406 = load ptr, ptr %3, align 8, !dbg !767
  %407 = load ptr, ptr %10, align 8, !dbg !769
  %408 = call i32 @TIFFWriteInkNames(ptr noundef %406, ptr noundef %407), !dbg !770
  %409 = icmp ne i32 %408, 0, !dbg !770
  br i1 %409, label %411, label %410, !dbg !771

410:                                              ; preds = %405
  br label %605, !dbg !772

411:                                              ; preds = %405
  br label %478, !dbg !773

412:                                              ; preds = %232
  %413 = load ptr, ptr %3, align 8, !dbg !774
  %414 = load ptr, ptr %10, align 8, !dbg !776
  %415 = call i32 @TIFFWriteTransferFunction(ptr noundef %413, ptr noundef %414), !dbg !777
  %416 = icmp ne i32 %415, 0, !dbg !777
  br i1 %416, label %418, label %417, !dbg !778

417:                                              ; preds = %412
  br label %605, !dbg !779

418:                                              ; preds = %412
  br label %478, !dbg !780

419:                                              ; preds = %232
  %420 = load ptr, ptr %3, align 8, !dbg !781
  %421 = load ptr, ptr %10, align 8, !dbg !783
  %422 = load ptr, ptr %16, align 8, !dbg !784
  %423 = call i32 @TIFFWriteNormalTag(ptr noundef %420, ptr noundef %421, ptr noundef %422), !dbg !785
  %424 = icmp ne i32 %423, 0, !dbg !785
  br i1 %424, label %426, label %425, !dbg !786

425:                                              ; preds = %419
  br label %605, !dbg !787

426:                                              ; preds = %419
  %427 = load ptr, ptr %10, align 8, !dbg !788
  %428 = getelementptr inbounds nuw %struct.TIFFDirEntry, ptr %427, i32 0, i32 2, !dbg !790
  %429 = load i32, ptr %428, align 4, !dbg !790
  %430 = icmp ugt i32 %429, 0, !dbg !791
  br i1 %430, label %431, label %469, !dbg !791

431:                                              ; preds = %426
  %432 = load ptr, ptr %3, align 8, !dbg !792
  %433 = getelementptr inbounds nuw %struct.tiff, ptr %432, i32 0, i32 3, !dbg !794
  %434 = load i32, ptr %433, align 8, !dbg !795
  %435 = or i32 %434, 8192, !dbg !795
  store i32 %435, ptr %433, align 8, !dbg !795
  %436 = load ptr, ptr %10, align 8, !dbg !796
  %437 = getelementptr inbounds nuw %struct.TIFFDirEntry, ptr %436, i32 0, i32 2, !dbg !797
  %438 = load i32, ptr %437, align 4, !dbg !797
  %439 = trunc i32 %438 to i16, !dbg !798
  %440 = load ptr, ptr %3, align 8, !dbg !799
  %441 = getelementptr inbounds nuw %struct.tiff, ptr %440, i32 0, i32 16, !dbg !800
  store i16 %439, ptr %441, align 4, !dbg !801
  %442 = load ptr, ptr %10, align 8, !dbg !802
  %443 = getelementptr inbounds nuw %struct.TIFFDirEntry, ptr %442, i32 0, i32 2, !dbg !804
  %444 = load i32, ptr %443, align 4, !dbg !804
  %445 = icmp ugt i32 %444, 1, !dbg !805
  br i1 %445, label %446, label %452, !dbg !805

446:                                              ; preds = %431
  %447 = load ptr, ptr %10, align 8, !dbg !806
  %448 = getelementptr inbounds nuw %struct.TIFFDirEntry, ptr %447, i32 0, i32 3, !dbg !807
  %449 = load i32, ptr %448, align 4, !dbg !807
  %450 = load ptr, ptr %3, align 8, !dbg !808
  %451 = getelementptr inbounds nuw %struct.tiff, ptr %450, i32 0, i32 17, !dbg !809
  store i32 %449, ptr %451, align 8, !dbg !810
  br label %468, !dbg !808

452:                                              ; preds = %431
  %453 = load ptr, ptr %3, align 8, !dbg !811
  %454 = getelementptr inbounds nuw %struct.tiff, ptr %453, i32 0, i32 4, !dbg !812
  %455 = load i32, ptr %454, align 4, !dbg !812
  %456 = sext i32 %455 to i64, !dbg !811
  %457 = add i64 %456, 2, !dbg !813
  %458 = load ptr, ptr %10, align 8, !dbg !814
  %459 = getelementptr inbounds nuw %struct.TIFFDirEntry, ptr %458, i32 0, i32 3, !dbg !815
  %460 = load ptr, ptr %9, align 8, !dbg !816
  %461 = ptrtoint ptr %459 to i64, !dbg !817
  %462 = ptrtoint ptr %460 to i64, !dbg !817
  %463 = sub i64 %461, %462, !dbg !817
  %464 = add i64 %457, %463, !dbg !818
  %465 = trunc i64 %464 to i32, !dbg !819
  %466 = load ptr, ptr %3, align 8, !dbg !820
  %467 = getelementptr inbounds nuw %struct.tiff, ptr %466, i32 0, i32 17, !dbg !821
  store i32 %465, ptr %467, align 8, !dbg !822
  br label %468

468:                                              ; preds = %452, %446
  br label %469, !dbg !823

469:                                              ; preds = %468, %426
  br label %478, !dbg !824

470:                                              ; preds = %232
  %471 = load ptr, ptr %3, align 8, !dbg !825
  %472 = load ptr, ptr %10, align 8, !dbg !827
  %473 = load ptr, ptr %16, align 8, !dbg !828
  %474 = call i32 @TIFFWriteNormalTag(ptr noundef %471, ptr noundef %472, ptr noundef %473), !dbg !829
  %475 = icmp ne i32 %474, 0, !dbg !829
  br i1 %475, label %477, label %476, !dbg !830

476:                                              ; preds = %470
  br label %605, !dbg !831

477:                                              ; preds = %470
  br label %478, !dbg !832

478:                                              ; preds = %477, %469, %418, %411, %404, %394, %382, %370, %350, %321, %309, %308, %293, %292, %264
  %479 = load ptr, ptr %10, align 8, !dbg !833
  %480 = getelementptr inbounds nuw %struct.TIFFDirEntry, ptr %479, i32 1, !dbg !833
  store ptr %480, ptr %10, align 8, !dbg !833
  %481 = load ptr, ptr %16, align 8, !dbg !834
  %482 = getelementptr inbounds nuw %struct.TIFFFieldInfo, ptr %481, i32 0, i32 4, !dbg !834
  %483 = load i16, ptr %482, align 4, !dbg !834
  %484 = zext i16 %483 to i32, !dbg !834
  %485 = and i32 %484, 31, !dbg !834
  %486 = zext i32 %485 to i64, !dbg !834
  %487 = shl i64 1, %486, !dbg !834
  %488 = xor i64 %487, -1, !dbg !834
  %489 = load ptr, ptr %16, align 8, !dbg !834
  %490 = getelementptr inbounds nuw %struct.TIFFFieldInfo, ptr %489, i32 0, i32 4, !dbg !834
  %491 = load i16, ptr %490, align 4, !dbg !834
  %492 = zext i16 %491 to i32, !dbg !834
  %493 = sdiv i32 %492, 32, !dbg !834
  %494 = sext i32 %493 to i64, !dbg !834
  %495 = getelementptr inbounds [3 x i64], ptr %13, i64 0, i64 %494, !dbg !834
  %496 = load i64, ptr %495, align 8, !dbg !834
  %497 = and i64 %496, %488, !dbg !834
  store i64 %497, ptr %495, align 8, !dbg !834
  br label %498, !dbg !835

498:                                              ; preds = %478, %278, %250, %231
  %499 = load i32, ptr %15, align 4, !dbg !836
  %500 = add nsw i32 %499, -1, !dbg !836
  store i32 %500, ptr %15, align 4, !dbg !836
  %501 = load i32, ptr %14, align 4, !dbg !837
  %502 = add nsw i32 %501, 1, !dbg !837
  store i32 %502, ptr %14, align 4, !dbg !837
  br label %203, !dbg !838, !llvm.loop !839

503:                                              ; preds = %203
  %504 = load i32, ptr %7, align 4, !dbg !841
  %505 = trunc i32 %504 to i16, !dbg !842
  store i16 %505, ptr %4, align 2, !dbg !843
  %506 = load ptr, ptr %3, align 8, !dbg !844
  %507 = getelementptr inbounds nuw %struct.tiff, ptr %506, i32 0, i32 5, !dbg !845
  %508 = load i32, ptr %507, align 8, !dbg !845
  store i32 %508, ptr %5, align 4, !dbg !846
  %509 = load ptr, ptr %3, align 8, !dbg !847
  %510 = getelementptr inbounds nuw %struct.tiff, ptr %509, i32 0, i32 3, !dbg !849
  %511 = load i32, ptr %510, align 8, !dbg !849
  %512 = and i32 %511, 128, !dbg !850
  %513 = icmp ne i32 %512, 0, !dbg !850
  br i1 %513, label %514, label %532, !dbg !850

514:                                              ; preds = %503
  %515 = load ptr, ptr %9, align 8, !dbg !851
  store ptr %515, ptr %10, align 8, !dbg !854
  br label %516, !dbg !855

516:                                              ; preds = %524, %514
  %517 = load i16, ptr %4, align 2, !dbg !856
  %518 = icmp ne i16 %517, 0, !dbg !858
  br i1 %518, label %519, label %529, !dbg !858

519:                                              ; preds = %516
  %520 = load ptr, ptr %10, align 8, !dbg !859
  %521 = getelementptr inbounds nuw %struct.TIFFDirEntry, ptr %520, i32 0, i32 0, !dbg !861
  call void @TIFFSwabArrayOfShort(ptr noundef %521, i64 noundef 2), !dbg !862
  %522 = load ptr, ptr %10, align 8, !dbg !863
  %523 = getelementptr inbounds nuw %struct.TIFFDirEntry, ptr %522, i32 0, i32 2, !dbg !864
  call void @TIFFSwabArrayOfLong(ptr noundef %523, i64 noundef 2), !dbg !865
  br label %524, !dbg !866

524:                                              ; preds = %519
  %525 = load ptr, ptr %10, align 8, !dbg !867
  %526 = getelementptr inbounds nuw %struct.TIFFDirEntry, ptr %525, i32 1, !dbg !867
  store ptr %526, ptr %10, align 8, !dbg !867
  %527 = load i16, ptr %4, align 2, !dbg !868
  %528 = add i16 %527, -1, !dbg !868
  store i16 %528, ptr %4, align 2, !dbg !868
  br label %516, !dbg !869, !llvm.loop !870

529:                                              ; preds = %516
  %530 = load i32, ptr %7, align 4, !dbg !872
  %531 = trunc i32 %530 to i16, !dbg !873
  store i16 %531, ptr %4, align 2, !dbg !874
  call void @TIFFSwabShort(ptr noundef %4), !dbg !875
  call void @TIFFSwabLong(ptr noundef %5), !dbg !876
  br label %532, !dbg !877

532:                                              ; preds = %529, %503
  %533 = load ptr, ptr %3, align 8, !dbg !878
  %534 = getelementptr inbounds nuw %struct.tiff, ptr %533, i32 0, i32 51, !dbg !878
  %535 = load ptr, ptr %534, align 8, !dbg !878
  %536 = load ptr, ptr %3, align 8, !dbg !878
  %537 = getelementptr inbounds nuw %struct.tiff, ptr %536, i32 0, i32 48, !dbg !878
  %538 = load ptr, ptr %537, align 8, !dbg !878
  %539 = load ptr, ptr %3, align 8, !dbg !878
  %540 = getelementptr inbounds nuw %struct.tiff, ptr %539, i32 0, i32 4, !dbg !878
  %541 = load i32, ptr %540, align 4, !dbg !878
  %542 = call i32 %535(ptr noundef %538, i32 noundef %541, i32 noundef 0), !dbg !878
  %543 = load ptr, ptr %3, align 8, !dbg !879
  %544 = getelementptr inbounds nuw %struct.tiff, ptr %543, i32 0, i32 50, !dbg !879
  %545 = load ptr, ptr %544, align 8, !dbg !879
  %546 = load ptr, ptr %3, align 8, !dbg !879
  %547 = getelementptr inbounds nuw %struct.tiff, ptr %546, i32 0, i32 48, !dbg !879
  %548 = load ptr, ptr %547, align 8, !dbg !879
  %549 = call i32 %545(ptr noundef %548, ptr noundef %4, i32 noundef 2), !dbg !879
  %550 = icmp eq i32 %549, 2, !dbg !879
  br i1 %550, label %555, label %551, !dbg !881

551:                                              ; preds = %532
  %552 = load ptr, ptr %3, align 8, !dbg !882
  %553 = getelementptr inbounds nuw %struct.tiff, ptr %552, i32 0, i32 0, !dbg !884
  %554 = load ptr, ptr %553, align 8, !dbg !884
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %554, ptr noundef @.str.3), !dbg !885
  br label %605, !dbg !886

555:                                              ; preds = %532
  %556 = load ptr, ptr %3, align 8, !dbg !887
  %557 = getelementptr inbounds nuw %struct.tiff, ptr %556, i32 0, i32 50, !dbg !887
  %558 = load ptr, ptr %557, align 8, !dbg !887
  %559 = load ptr, ptr %3, align 8, !dbg !887
  %560 = getelementptr inbounds nuw %struct.tiff, ptr %559, i32 0, i32 48, !dbg !887
  %561 = load ptr, ptr %560, align 8, !dbg !887
  %562 = load ptr, ptr %9, align 8, !dbg !887
  %563 = load i32, ptr %8, align 4, !dbg !887
  %564 = call i32 %558(ptr noundef %561, ptr noundef %562, i32 noundef %563), !dbg !887
  %565 = load i32, ptr %8, align 4, !dbg !887
  %566 = icmp eq i32 %564, %565, !dbg !887
  br i1 %566, label %571, label %567, !dbg !889

567:                                              ; preds = %555
  %568 = load ptr, ptr %3, align 8, !dbg !890
  %569 = getelementptr inbounds nuw %struct.tiff, ptr %568, i32 0, i32 0, !dbg !892
  %570 = load ptr, ptr %569, align 8, !dbg !892
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %570, ptr noundef @.str.4), !dbg !893
  br label %605, !dbg !894

571:                                              ; preds = %555
  %572 = load ptr, ptr %3, align 8, !dbg !895
  %573 = getelementptr inbounds nuw %struct.tiff, ptr %572, i32 0, i32 50, !dbg !895
  %574 = load ptr, ptr %573, align 8, !dbg !895
  %575 = load ptr, ptr %3, align 8, !dbg !895
  %576 = getelementptr inbounds nuw %struct.tiff, ptr %575, i32 0, i32 48, !dbg !895
  %577 = load ptr, ptr %576, align 8, !dbg !895
  %578 = call i32 %574(ptr noundef %577, ptr noundef %5, i32 noundef 4), !dbg !895
  %579 = icmp eq i32 %578, 4, !dbg !895
  br i1 %579, label %584, label %580, !dbg !897

580:                                              ; preds = %571
  %581 = load ptr, ptr %3, align 8, !dbg !898
  %582 = getelementptr inbounds nuw %struct.tiff, ptr %581, i32 0, i32 0, !dbg !900
  %583 = load ptr, ptr %582, align 8, !dbg !900
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %583, ptr noundef @.str.5), !dbg !901
  br label %605, !dbg !902

584:                                              ; preds = %571
  %585 = load ptr, ptr %3, align 8, !dbg !903
  call void @TIFFFreeDirectory(ptr noundef %585), !dbg !904
  %586 = load ptr, ptr %9, align 8, !dbg !905
  call void @_TIFFfree(ptr noundef %586), !dbg !906
  %587 = load ptr, ptr %3, align 8, !dbg !907
  %588 = getelementptr inbounds nuw %struct.tiff, ptr %587, i32 0, i32 3, !dbg !908
  %589 = load i32, ptr %588, align 8, !dbg !909
  %590 = and i32 %589, -9, !dbg !909
  store i32 %590, ptr %588, align 8, !dbg !909
  %591 = load ptr, ptr %3, align 8, !dbg !910
  %592 = getelementptr inbounds nuw %struct.tiff, ptr %591, i32 0, i32 34, !dbg !911
  %593 = load ptr, ptr %592, align 8, !dbg !911
  %594 = load ptr, ptr %3, align 8, !dbg !912
  call void %593(ptr noundef %594), !dbg !913
  %595 = load ptr, ptr %3, align 8, !dbg !914
  %596 = call i32 @TIFFDefaultDirectory(ptr noundef %595), !dbg !915
  %597 = load ptr, ptr %3, align 8, !dbg !916
  %598 = getelementptr inbounds nuw %struct.tiff, ptr %597, i32 0, i32 4, !dbg !917
  store i32 0, ptr %598, align 4, !dbg !918
  %599 = load ptr, ptr %3, align 8, !dbg !919
  %600 = getelementptr inbounds nuw %struct.tiff, ptr %599, i32 0, i32 14, !dbg !920
  store i32 0, ptr %600, align 4, !dbg !921
  %601 = load ptr, ptr %3, align 8, !dbg !922
  %602 = getelementptr inbounds nuw %struct.tiff, ptr %601, i32 0, i32 11, !dbg !923
  store i32 -1, ptr %602, align 8, !dbg !924
  %603 = load ptr, ptr %3, align 8, !dbg !925
  %604 = getelementptr inbounds nuw %struct.tiff, ptr %603, i32 0, i32 13, !dbg !926
  store i32 -1, ptr %604, align 8, !dbg !927
  store i32 1, ptr %2, align 4, !dbg !928
  br label %607, !dbg !928

605:                                              ; preds = %580, %567, %551, %476, %425, %417, %410, %403, %393, %381, %369, %360, %349, %340, %307, %291, %263, %136
    #dbg_label(!929, !930)
  %606 = load ptr, ptr %9, align 8, !dbg !931
  call void @_TIFFfree(ptr noundef %606), !dbg !932
  store i32 0, ptr %2, align 4, !dbg !933
  br label %607, !dbg !933

607:                                              ; preds = %605, %584, %123, %57, %39, %21
  %608 = load i32, ptr %2, align 4, !dbg !934
  ret i32 %608, !dbg !934
}

declare void @TIFFError(ptr noundef, ptr noundef, ...) #1

declare i32 @TIFFFlushData1(ptr noundef) #1

declare void @_TIFFfree(ptr noundef) #1

declare ptr @_TIFFmalloc(i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @TIFFLinkDirectory(ptr noundef %0) #0 !dbg !41 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !935, !DIExpression(), !936)
    #dbg_declare(ptr %4, !937, !DIExpression(), !938)
    #dbg_declare(ptr %5, !939, !DIExpression(), !940)
  %7 = load ptr, ptr %3, align 8, !dbg !941
  %8 = getelementptr inbounds nuw %struct.tiff, ptr %7, i32 0, i32 51, !dbg !941
  %9 = load ptr, ptr %8, align 8, !dbg !941
  %10 = load ptr, ptr %3, align 8, !dbg !941
  %11 = getelementptr inbounds nuw %struct.tiff, ptr %10, i32 0, i32 48, !dbg !941
  %12 = load ptr, ptr %11, align 8, !dbg !941
  %13 = call i32 %9(ptr noundef %12, i32 noundef 0, i32 noundef 2), !dbg !941
  %14 = add nsw i32 %13, 1, !dbg !942
  %15 = and i32 %14, -2, !dbg !943
  %16 = load ptr, ptr %3, align 8, !dbg !944
  %17 = getelementptr inbounds nuw %struct.tiff, ptr %16, i32 0, i32 4, !dbg !945
  store i32 %15, ptr %17, align 4, !dbg !946
  %18 = load ptr, ptr %3, align 8, !dbg !947
  %19 = getelementptr inbounds nuw %struct.tiff, ptr %18, i32 0, i32 4, !dbg !948
  %20 = load i32, ptr %19, align 4, !dbg !948
  store i32 %20, ptr %5, align 4, !dbg !949
  %21 = load ptr, ptr %3, align 8, !dbg !950
  %22 = getelementptr inbounds nuw %struct.tiff, ptr %21, i32 0, i32 3, !dbg !952
  %23 = load i32, ptr %22, align 8, !dbg !952
  %24 = and i32 %23, 128, !dbg !953
  %25 = icmp ne i32 %24, 0, !dbg !953
  br i1 %25, label %26, label %27, !dbg !953

26:                                               ; preds = %1
  call void @TIFFSwabLong(ptr noundef %5), !dbg !954
  br label %27, !dbg !954

27:                                               ; preds = %26, %1
  %28 = load ptr, ptr %3, align 8, !dbg !955
  %29 = getelementptr inbounds nuw %struct.tiff, ptr %28, i32 0, i32 3, !dbg !957
  %30 = load i32, ptr %29, align 8, !dbg !957
  %31 = and i32 %30, 8192, !dbg !958
  %32 = icmp ne i32 %31, 0, !dbg !958
  br i1 %32, label %33, label %75, !dbg !958

33:                                               ; preds = %27
  %34 = load ptr, ptr %3, align 8, !dbg !959
  %35 = getelementptr inbounds nuw %struct.tiff, ptr %34, i32 0, i32 51, !dbg !959
  %36 = load ptr, ptr %35, align 8, !dbg !959
  %37 = load ptr, ptr %3, align 8, !dbg !959
  %38 = getelementptr inbounds nuw %struct.tiff, ptr %37, i32 0, i32 48, !dbg !959
  %39 = load ptr, ptr %38, align 8, !dbg !959
  %40 = load ptr, ptr %3, align 8, !dbg !959
  %41 = getelementptr inbounds nuw %struct.tiff, ptr %40, i32 0, i32 17, !dbg !959
  %42 = load i32, ptr %41, align 8, !dbg !959
  %43 = call i32 %36(ptr noundef %39, i32 noundef %42, i32 noundef 0), !dbg !959
  %44 = load ptr, ptr %3, align 8, !dbg !961
  %45 = getelementptr inbounds nuw %struct.tiff, ptr %44, i32 0, i32 50, !dbg !961
  %46 = load ptr, ptr %45, align 8, !dbg !961
  %47 = load ptr, ptr %3, align 8, !dbg !961
  %48 = getelementptr inbounds nuw %struct.tiff, ptr %47, i32 0, i32 48, !dbg !961
  %49 = load ptr, ptr %48, align 8, !dbg !961
  %50 = call i32 %46(ptr noundef %49, ptr noundef %5, i32 noundef 4), !dbg !961
  %51 = icmp eq i32 %50, 4, !dbg !961
  br i1 %51, label %56, label %52, !dbg !963

52:                                               ; preds = %33
  %53 = load ptr, ptr %3, align 8, !dbg !964
  %54 = getelementptr inbounds nuw %struct.tiff, ptr %53, i32 0, i32 0, !dbg !966
  %55 = load ptr, ptr %54, align 8, !dbg !966
  call void (ptr, ptr, ...) @TIFFError(ptr noundef @TIFFLinkDirectory.module, ptr noundef @.str.8, ptr noundef %55), !dbg !967
  store i32 0, ptr %2, align 4, !dbg !968
  br label %191, !dbg !968

56:                                               ; preds = %33
  %57 = load ptr, ptr %3, align 8, !dbg !969
  %58 = getelementptr inbounds nuw %struct.tiff, ptr %57, i32 0, i32 16, !dbg !971
  %59 = load i16, ptr %58, align 4, !dbg !972
  %60 = add i16 %59, -1, !dbg !972
  store i16 %60, ptr %58, align 4, !dbg !972
  %61 = icmp ne i16 %60, 0, !dbg !972
  br i1 %61, label %62, label %69, !dbg !972

62:                                               ; preds = %56
  %63 = load ptr, ptr %3, align 8, !dbg !973
  %64 = getelementptr inbounds nuw %struct.tiff, ptr %63, i32 0, i32 17, !dbg !974
  %65 = load i32, ptr %64, align 8, !dbg !975
  %66 = sext i32 %65 to i64, !dbg !975
  %67 = add i64 %66, 4, !dbg !975
  %68 = trunc i64 %67 to i32, !dbg !975
  store i32 %68, ptr %64, align 8, !dbg !975
  br label %74, !dbg !973

69:                                               ; preds = %56
  %70 = load ptr, ptr %3, align 8, !dbg !976
  %71 = getelementptr inbounds nuw %struct.tiff, ptr %70, i32 0, i32 3, !dbg !977
  %72 = load i32, ptr %71, align 8, !dbg !978
  %73 = and i32 %72, -8193, !dbg !978
  store i32 %73, ptr %71, align 8, !dbg !978
  br label %74

74:                                               ; preds = %69, %62
  store i32 1, ptr %2, align 4, !dbg !979
  br label %191, !dbg !979

75:                                               ; preds = %27
  %76 = load ptr, ptr %3, align 8, !dbg !980
  %77 = getelementptr inbounds nuw %struct.tiff, ptr %76, i32 0, i32 7, !dbg !982
  %78 = getelementptr inbounds nuw %struct.TIFFHeader, ptr %77, i32 0, i32 2, !dbg !983
  %79 = load i32, ptr %78, align 4, !dbg !983
  %80 = icmp eq i32 %79, 0, !dbg !984
  br i1 %80, label %81, label %108, !dbg !984

81:                                               ; preds = %75
  %82 = load ptr, ptr %3, align 8, !dbg !985
  %83 = getelementptr inbounds nuw %struct.tiff, ptr %82, i32 0, i32 4, !dbg !987
  %84 = load i32, ptr %83, align 4, !dbg !987
  %85 = load ptr, ptr %3, align 8, !dbg !988
  %86 = getelementptr inbounds nuw %struct.tiff, ptr %85, i32 0, i32 7, !dbg !989
  %87 = getelementptr inbounds nuw %struct.TIFFHeader, ptr %86, i32 0, i32 2, !dbg !990
  store i32 %84, ptr %87, align 4, !dbg !991
  %88 = load ptr, ptr %3, align 8, !dbg !992
  %89 = getelementptr inbounds nuw %struct.tiff, ptr %88, i32 0, i32 51, !dbg !992
  %90 = load ptr, ptr %89, align 8, !dbg !992
  %91 = load ptr, ptr %3, align 8, !dbg !992
  %92 = getelementptr inbounds nuw %struct.tiff, ptr %91, i32 0, i32 48, !dbg !992
  %93 = load ptr, ptr %92, align 8, !dbg !992
  %94 = call i32 %90(ptr noundef %93, i32 noundef ptrtoint (ptr getelementptr inbounds nuw (%struct.TIFFHeader, ptr null, i32 0, i32 2) to i32), i32 noundef 0), !dbg !992
  %95 = load ptr, ptr %3, align 8, !dbg !993
  %96 = getelementptr inbounds nuw %struct.tiff, ptr %95, i32 0, i32 50, !dbg !993
  %97 = load ptr, ptr %96, align 8, !dbg !993
  %98 = load ptr, ptr %3, align 8, !dbg !993
  %99 = getelementptr inbounds nuw %struct.tiff, ptr %98, i32 0, i32 48, !dbg !993
  %100 = load ptr, ptr %99, align 8, !dbg !993
  %101 = call i32 %97(ptr noundef %100, ptr noundef %5, i32 noundef 4), !dbg !993
  %102 = icmp eq i32 %101, 4, !dbg !993
  br i1 %102, label %107, label %103, !dbg !995

103:                                              ; preds = %81
  %104 = load ptr, ptr %3, align 8, !dbg !996
  %105 = getelementptr inbounds nuw %struct.tiff, ptr %104, i32 0, i32 0, !dbg !998
  %106 = load ptr, ptr %105, align 8, !dbg !998
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %106, ptr noundef @.str.9), !dbg !999
  store i32 0, ptr %2, align 4, !dbg !1000
  br label %191, !dbg !1000

107:                                              ; preds = %81
  store i32 1, ptr %2, align 4, !dbg !1001
  br label %191, !dbg !1001

108:                                              ; preds = %75
  %109 = load ptr, ptr %3, align 8, !dbg !1002
  %110 = getelementptr inbounds nuw %struct.tiff, ptr %109, i32 0, i32 7, !dbg !1003
  %111 = getelementptr inbounds nuw %struct.TIFFHeader, ptr %110, i32 0, i32 2, !dbg !1004
  %112 = load i32, ptr %111, align 4, !dbg !1004
  store i32 %112, ptr %4, align 4, !dbg !1005
  br label %113, !dbg !1006

113:                                              ; preds = %170, %108
    #dbg_declare(ptr %6, !1007, !DIExpression(), !1009)
  %114 = load ptr, ptr %3, align 8, !dbg !1010
  %115 = getelementptr inbounds nuw %struct.tiff, ptr %114, i32 0, i32 51, !dbg !1010
  %116 = load ptr, ptr %115, align 8, !dbg !1010
  %117 = load ptr, ptr %3, align 8, !dbg !1010
  %118 = getelementptr inbounds nuw %struct.tiff, ptr %117, i32 0, i32 48, !dbg !1010
  %119 = load ptr, ptr %118, align 8, !dbg !1010
  %120 = load i32, ptr %4, align 4, !dbg !1010
  %121 = call i32 %116(ptr noundef %119, i32 noundef %120, i32 noundef 0), !dbg !1010
  %122 = load i32, ptr %4, align 4, !dbg !1010
  %123 = icmp eq i32 %121, %122, !dbg !1010
  br i1 %123, label %124, label %133, !dbg !1012

124:                                              ; preds = %113
  %125 = load ptr, ptr %3, align 8, !dbg !1013
  %126 = getelementptr inbounds nuw %struct.tiff, ptr %125, i32 0, i32 49, !dbg !1013
  %127 = load ptr, ptr %126, align 8, !dbg !1013
  %128 = load ptr, ptr %3, align 8, !dbg !1013
  %129 = getelementptr inbounds nuw %struct.tiff, ptr %128, i32 0, i32 48, !dbg !1013
  %130 = load ptr, ptr %129, align 8, !dbg !1013
  %131 = call i32 %127(ptr noundef %130, ptr noundef %6, i32 noundef 2), !dbg !1013
  %132 = icmp eq i32 %131, 2, !dbg !1013
  br i1 %132, label %134, label %133, !dbg !1012

133:                                              ; preds = %124, %113
  call void (ptr, ptr, ...) @TIFFError(ptr noundef @TIFFLinkDirectory.module, ptr noundef @.str.10), !dbg !1014
  store i32 0, ptr %2, align 4, !dbg !1016
  br label %191, !dbg !1016

134:                                              ; preds = %124
  %135 = load ptr, ptr %3, align 8, !dbg !1017
  %136 = getelementptr inbounds nuw %struct.tiff, ptr %135, i32 0, i32 3, !dbg !1019
  %137 = load i32, ptr %136, align 8, !dbg !1019
  %138 = and i32 %137, 128, !dbg !1020
  %139 = icmp ne i32 %138, 0, !dbg !1020
  br i1 %139, label %140, label %141, !dbg !1020

140:                                              ; preds = %134
  call void @TIFFSwabShort(ptr noundef %6), !dbg !1021
  br label %141, !dbg !1021

141:                                              ; preds = %140, %134
  %142 = load ptr, ptr %3, align 8, !dbg !1022
  %143 = getelementptr inbounds nuw %struct.tiff, ptr %142, i32 0, i32 51, !dbg !1022
  %144 = load ptr, ptr %143, align 8, !dbg !1022
  %145 = load ptr, ptr %3, align 8, !dbg !1022
  %146 = getelementptr inbounds nuw %struct.tiff, ptr %145, i32 0, i32 48, !dbg !1022
  %147 = load ptr, ptr %146, align 8, !dbg !1022
  %148 = load i16, ptr %6, align 2, !dbg !1022
  %149 = zext i16 %148 to i64, !dbg !1022
  %150 = mul i64 %149, 12, !dbg !1022
  %151 = trunc i64 %150 to i32, !dbg !1022
  %152 = call i32 %144(ptr noundef %147, i32 noundef %151, i32 noundef 1), !dbg !1022
  %153 = load ptr, ptr %3, align 8, !dbg !1023
  %154 = getelementptr inbounds nuw %struct.tiff, ptr %153, i32 0, i32 49, !dbg !1023
  %155 = load ptr, ptr %154, align 8, !dbg !1023
  %156 = load ptr, ptr %3, align 8, !dbg !1023
  %157 = getelementptr inbounds nuw %struct.tiff, ptr %156, i32 0, i32 48, !dbg !1023
  %158 = load ptr, ptr %157, align 8, !dbg !1023
  %159 = call i32 %155(ptr noundef %158, ptr noundef %4, i32 noundef 4), !dbg !1023
  %160 = icmp eq i32 %159, 4, !dbg !1023
  br i1 %160, label %162, label %161, !dbg !1025

161:                                              ; preds = %141
  call void (ptr, ptr, ...) @TIFFError(ptr noundef @TIFFLinkDirectory.module, ptr noundef @.str.11), !dbg !1026
  store i32 0, ptr %2, align 4, !dbg !1028
  br label %191, !dbg !1028

162:                                              ; preds = %141
  %163 = load ptr, ptr %3, align 8, !dbg !1029
  %164 = getelementptr inbounds nuw %struct.tiff, ptr %163, i32 0, i32 3, !dbg !1031
  %165 = load i32, ptr %164, align 8, !dbg !1031
  %166 = and i32 %165, 128, !dbg !1032
  %167 = icmp ne i32 %166, 0, !dbg !1032
  br i1 %167, label %168, label %169, !dbg !1032

168:                                              ; preds = %162
  call void @TIFFSwabLong(ptr noundef %4), !dbg !1033
  br label %169, !dbg !1033

169:                                              ; preds = %168, %162
  br label %170, !dbg !1034

170:                                              ; preds = %169
  %171 = load i32, ptr %4, align 4, !dbg !1035
  %172 = icmp ne i32 %171, 0, !dbg !1036
  br i1 %172, label %113, label %173, !dbg !1034, !llvm.loop !1037

173:                                              ; preds = %170
  %174 = load ptr, ptr %3, align 8, !dbg !1039
  %175 = getelementptr inbounds nuw %struct.tiff, ptr %174, i32 0, i32 51, !dbg !1039
  %176 = load ptr, ptr %175, align 8, !dbg !1039
  %177 = load ptr, ptr %3, align 8, !dbg !1039
  %178 = getelementptr inbounds nuw %struct.tiff, ptr %177, i32 0, i32 48, !dbg !1039
  %179 = load ptr, ptr %178, align 8, !dbg !1039
  %180 = call i32 %176(ptr noundef %179, i32 noundef -4, i32 noundef 1), !dbg !1039
  %181 = load ptr, ptr %3, align 8, !dbg !1040
  %182 = getelementptr inbounds nuw %struct.tiff, ptr %181, i32 0, i32 50, !dbg !1040
  %183 = load ptr, ptr %182, align 8, !dbg !1040
  %184 = load ptr, ptr %3, align 8, !dbg !1040
  %185 = getelementptr inbounds nuw %struct.tiff, ptr %184, i32 0, i32 48, !dbg !1040
  %186 = load ptr, ptr %185, align 8, !dbg !1040
  %187 = call i32 %183(ptr noundef %186, ptr noundef %5, i32 noundef 4), !dbg !1040
  %188 = icmp eq i32 %187, 4, !dbg !1040
  br i1 %188, label %190, label %189, !dbg !1042

189:                                              ; preds = %173
  call void (ptr, ptr, ...) @TIFFError(ptr noundef @TIFFLinkDirectory.module, ptr noundef @.str.5), !dbg !1043
  store i32 0, ptr %2, align 4, !dbg !1045
  br label %191, !dbg !1045

190:                                              ; preds = %173
  store i32 1, ptr %2, align 4, !dbg !1046
  br label %191, !dbg !1046

191:                                              ; preds = %190, %189, %161, %133, %107, %103, %74, %52
  %192 = load i32, ptr %2, align 4, !dbg !1047
  ret i32 %192, !dbg !1047
}

declare void @_TIFFmemcpy(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @TIFFWriteLongArray(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) #0 !dbg !1048 {
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca ptr, align 8
  store ptr %0, ptr %8, align 8
    #dbg_declare(ptr %8, !1051, !DIExpression(), !1052)
  store i32 %1, ptr %9, align 4
    #dbg_declare(ptr %9, !1053, !DIExpression(), !1054)
  store i32 %2, ptr %10, align 4
    #dbg_declare(ptr %10, !1055, !DIExpression(), !1056)
  store ptr %3, ptr %11, align 8
    #dbg_declare(ptr %11, !1057, !DIExpression(), !1058)
  store i32 %4, ptr %12, align 4
    #dbg_declare(ptr %12, !1059, !DIExpression(), !1060)
  store ptr %5, ptr %13, align 8
    #dbg_declare(ptr %13, !1061, !DIExpression(), !1062)
  %14 = load i32, ptr %10, align 4, !dbg !1063
  %15 = trunc i32 %14 to i16, !dbg !1064
  %16 = load ptr, ptr %11, align 8, !dbg !1065
  %17 = getelementptr inbounds nuw %struct.TIFFDirEntry, ptr %16, i32 0, i32 0, !dbg !1066
  store i16 %15, ptr %17, align 4, !dbg !1067
  %18 = load i32, ptr %9, align 4, !dbg !1068
  %19 = trunc i32 %18 to i16, !dbg !1069
  %20 = load ptr, ptr %11, align 8, !dbg !1070
  %21 = getelementptr inbounds nuw %struct.TIFFDirEntry, ptr %20, i32 0, i32 1, !dbg !1071
  store i16 %19, ptr %21, align 2, !dbg !1072
  %22 = load i32, ptr %12, align 4, !dbg !1073
  %23 = load ptr, ptr %11, align 8, !dbg !1074
  %24 = getelementptr inbounds nuw %struct.TIFFDirEntry, ptr %23, i32 0, i32 2, !dbg !1075
  store i32 %22, ptr %24, align 4, !dbg !1076
  %25 = load i32, ptr %12, align 4, !dbg !1077
  %26 = icmp eq i32 %25, 1, !dbg !1079
  br i1 %26, label %27, label %33, !dbg !1079

27:                                               ; preds = %6
  %28 = load ptr, ptr %13, align 8, !dbg !1080
  %29 = getelementptr inbounds i32, ptr %28, i64 0, !dbg !1080
  %30 = load i32, ptr %29, align 4, !dbg !1080
  %31 = load ptr, ptr %11, align 8, !dbg !1082
  %32 = getelementptr inbounds nuw %struct.TIFFDirEntry, ptr %31, i32 0, i32 3, !dbg !1083
  store i32 %30, ptr %32, align 4, !dbg !1084
  store i32 1, ptr %7, align 4, !dbg !1085
  br label %38, !dbg !1085

33:                                               ; preds = %6
  %34 = load ptr, ptr %8, align 8, !dbg !1086
  %35 = load ptr, ptr %11, align 8, !dbg !1087
  %36 = load ptr, ptr %13, align 8, !dbg !1088
  %37 = call i32 @TIFFWriteData(ptr noundef %34, ptr noundef %35, ptr noundef %36), !dbg !1089
  store i32 %37, ptr %7, align 4, !dbg !1090
  br label %38, !dbg !1090

38:                                               ; preds = %33, %27
  %39 = load i32, ptr %7, align 4, !dbg !1091
  ret i32 %39, !dbg !1091
}

; Function Attrs: noinline nounwind uwtable
define internal void @TIFFSetupShortLong(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #0 !dbg !1092 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
    #dbg_declare(ptr %5, !1095, !DIExpression(), !1096)
  store i32 %1, ptr %6, align 4
    #dbg_declare(ptr %6, !1097, !DIExpression(), !1098)
  store ptr %2, ptr %7, align 8
    #dbg_declare(ptr %7, !1099, !DIExpression(), !1100)
  store i32 %3, ptr %8, align 4
    #dbg_declare(ptr %8, !1101, !DIExpression(), !1102)
  %9 = load i32, ptr %6, align 4, !dbg !1103
  %10 = trunc i32 %9 to i16, !dbg !1104
  %11 = load ptr, ptr %7, align 8, !dbg !1105
  %12 = getelementptr inbounds nuw %struct.TIFFDirEntry, ptr %11, i32 0, i32 0, !dbg !1106
  store i16 %10, ptr %12, align 4, !dbg !1107
  %13 = load ptr, ptr %7, align 8, !dbg !1108
  %14 = getelementptr inbounds nuw %struct.TIFFDirEntry, ptr %13, i32 0, i32 2, !dbg !1109
  store i32 1, ptr %14, align 4, !dbg !1110
  %15 = load i32, ptr %8, align 4, !dbg !1111
  %16 = zext i32 %15 to i64, !dbg !1111
  %17 = icmp sgt i64 %16, 65535, !dbg !1113
  br i1 %17, label %18, label %24, !dbg !1113

18:                                               ; preds = %4
  %19 = load ptr, ptr %7, align 8, !dbg !1114
  %20 = getelementptr inbounds nuw %struct.TIFFDirEntry, ptr %19, i32 0, i32 1, !dbg !1116
  store i16 4, ptr %20, align 2, !dbg !1117
  %21 = load i32, ptr %8, align 4, !dbg !1118
  %22 = load ptr, ptr %7, align 8, !dbg !1119
  %23 = getelementptr inbounds nuw %struct.TIFFDirEntry, ptr %22, i32 0, i32 3, !dbg !1120
  store i32 %21, ptr %23, align 4, !dbg !1121
  br label %63, !dbg !1122

24:                                               ; preds = %4
  %25 = load ptr, ptr %7, align 8, !dbg !1123
  %26 = getelementptr inbounds nuw %struct.TIFFDirEntry, ptr %25, i32 0, i32 1, !dbg !1125
  store i16 3, ptr %26, align 2, !dbg !1126
  %27 = load ptr, ptr %5, align 8, !dbg !1127
  %28 = getelementptr inbounds nuw %struct.tiff, ptr %27, i32 0, i32 7, !dbg !1127
  %29 = getelementptr inbounds nuw %struct.TIFFHeader, ptr %28, i32 0, i32 0, !dbg !1127
  %30 = load i16, ptr %29, align 8, !dbg !1127
  %31 = zext i16 %30 to i32, !dbg !1127
  %32 = icmp eq i32 %31, 19789, !dbg !1127
  br i1 %32, label %33, label %49, !dbg !1127

33:                                               ; preds = %24
  %34 = load i32, ptr %8, align 4, !dbg !1127
  %35 = zext i32 %34 to i64, !dbg !1127
  %36 = load ptr, ptr %5, align 8, !dbg !1127
  %37 = getelementptr inbounds nuw %struct.tiff, ptr %36, i32 0, i32 10, !dbg !1127
  %38 = load ptr, ptr %37, align 8, !dbg !1127
  %39 = getelementptr inbounds i64, ptr %38, i64 3, !dbg !1127
  %40 = load i64, ptr %39, align 8, !dbg !1127
  %41 = and i64 %35, %40, !dbg !1127
  %42 = load ptr, ptr %5, align 8, !dbg !1127
  %43 = getelementptr inbounds nuw %struct.tiff, ptr %42, i32 0, i32 9, !dbg !1127
  %44 = load ptr, ptr %43, align 8, !dbg !1127
  %45 = getelementptr inbounds i32, ptr %44, i64 3, !dbg !1127
  %46 = load i32, ptr %45, align 4, !dbg !1127
  %47 = zext i32 %46 to i64, !dbg !1127
  %48 = shl i64 %41, %47, !dbg !1127
  br label %58, !dbg !1127

49:                                               ; preds = %24
  %50 = load i32, ptr %8, align 4, !dbg !1127
  %51 = zext i32 %50 to i64, !dbg !1127
  %52 = load ptr, ptr %5, align 8, !dbg !1127
  %53 = getelementptr inbounds nuw %struct.tiff, ptr %52, i32 0, i32 10, !dbg !1127
  %54 = load ptr, ptr %53, align 8, !dbg !1127
  %55 = getelementptr inbounds i64, ptr %54, i64 3, !dbg !1127
  %56 = load i64, ptr %55, align 8, !dbg !1127
  %57 = and i64 %51, %56, !dbg !1127
  br label %58, !dbg !1127

58:                                               ; preds = %49, %33
  %59 = phi i64 [ %48, %33 ], [ %57, %49 ], !dbg !1127
  %60 = trunc i64 %59 to i32, !dbg !1127
  %61 = load ptr, ptr %7, align 8, !dbg !1128
  %62 = getelementptr inbounds nuw %struct.TIFFDirEntry, ptr %61, i32 0, i32 3, !dbg !1129
  store i32 %60, ptr %62, align 4, !dbg !1130
  br label %63

63:                                               ; preds = %58, %18
  ret void, !dbg !1131
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @TIFFWriteShortTable(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) #0 !dbg !1132 {
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store ptr %0, ptr %7, align 8
    #dbg_declare(ptr %7, !1136, !DIExpression(), !1137)
  store i32 %1, ptr %8, align 4
    #dbg_declare(ptr %8, !1138, !DIExpression(), !1139)
  store ptr %2, ptr %9, align 8
    #dbg_declare(ptr %9, !1140, !DIExpression(), !1141)
  store i32 %3, ptr %10, align 4
    #dbg_declare(ptr %10, !1142, !DIExpression(), !1143)
  store ptr %4, ptr %11, align 8
    #dbg_declare(ptr %11, !1144, !DIExpression(), !1145)
    #dbg_declare(ptr %12, !1146, !DIExpression(), !1147)
    #dbg_declare(ptr %13, !1148, !DIExpression(), !1149)
  %14 = load i32, ptr %8, align 4, !dbg !1150
  %15 = trunc i32 %14 to i16, !dbg !1151
  %16 = load ptr, ptr %9, align 8, !dbg !1152
  %17 = getelementptr inbounds nuw %struct.TIFFDirEntry, ptr %16, i32 0, i32 0, !dbg !1153
  store i16 %15, ptr %17, align 4, !dbg !1154
  %18 = load ptr, ptr %9, align 8, !dbg !1155
  %19 = getelementptr inbounds nuw %struct.TIFFDirEntry, ptr %18, i32 0, i32 1, !dbg !1156
  store i16 3, ptr %19, align 2, !dbg !1157
  %20 = load ptr, ptr %7, align 8, !dbg !1158
  %21 = getelementptr inbounds nuw %struct.tiff, ptr %20, i32 0, i32 6, !dbg !1159
  %22 = getelementptr inbounds nuw %struct.TIFFDirectory, ptr %21, i32 0, i32 8, !dbg !1160
  %23 = load i16, ptr %22, align 4, !dbg !1160
  %24 = zext i16 %23 to i32, !dbg !1158
  %25 = zext i32 %24 to i64, !dbg !1161
  %26 = shl i64 1, %25, !dbg !1161
  %27 = trunc i64 %26 to i32, !dbg !1162
  %28 = load ptr, ptr %9, align 8, !dbg !1163
  %29 = getelementptr inbounds nuw %struct.TIFFDirEntry, ptr %28, i32 0, i32 2, !dbg !1164
  store i32 %27, ptr %29, align 4, !dbg !1165
  %30 = load ptr, ptr %7, align 8, !dbg !1166
  %31 = getelementptr inbounds nuw %struct.tiff, ptr %30, i32 0, i32 15, !dbg !1167
  %32 = load i32, ptr %31, align 8, !dbg !1167
  store i32 %32, ptr %13, align 4, !dbg !1168
  store i32 0, ptr %12, align 4, !dbg !1169
  br label %33, !dbg !1171

33:                                               ; preds = %49, %5
  %34 = load i32, ptr %12, align 4, !dbg !1172
  %35 = load i32, ptr %10, align 4, !dbg !1174
  %36 = icmp ult i32 %34, %35, !dbg !1175
  br i1 %36, label %37, label %52, !dbg !1176

37:                                               ; preds = %33
  %38 = load ptr, ptr %7, align 8, !dbg !1177
  %39 = load ptr, ptr %9, align 8, !dbg !1179
  %40 = load ptr, ptr %11, align 8, !dbg !1180
  %41 = load i32, ptr %12, align 4, !dbg !1181
  %42 = zext i32 %41 to i64, !dbg !1180
  %43 = getelementptr inbounds nuw ptr, ptr %40, i64 %42, !dbg !1180
  %44 = load ptr, ptr %43, align 8, !dbg !1180
  %45 = call i32 @TIFFWriteData(ptr noundef %38, ptr noundef %39, ptr noundef %44), !dbg !1182
  %46 = icmp ne i32 %45, 0, !dbg !1182
  br i1 %46, label %48, label %47, !dbg !1183

47:                                               ; preds = %37
  store i32 0, ptr %6, align 4, !dbg !1184
  br label %61, !dbg !1184

48:                                               ; preds = %37
  br label %49, !dbg !1185

49:                                               ; preds = %48
  %50 = load i32, ptr %12, align 4, !dbg !1186
  %51 = add i32 %50, 1, !dbg !1186
  store i32 %51, ptr %12, align 4, !dbg !1186
  br label %33, !dbg !1187, !llvm.loop !1188

52:                                               ; preds = %33
  %53 = load i32, ptr %10, align 4, !dbg !1190
  %54 = load ptr, ptr %9, align 8, !dbg !1191
  %55 = getelementptr inbounds nuw %struct.TIFFDirEntry, ptr %54, i32 0, i32 2, !dbg !1192
  %56 = load i32, ptr %55, align 4, !dbg !1193
  %57 = mul i32 %56, %53, !dbg !1193
  store i32 %57, ptr %55, align 4, !dbg !1193
  %58 = load i32, ptr %13, align 4, !dbg !1194
  %59 = load ptr, ptr %9, align 8, !dbg !1195
  %60 = getelementptr inbounds nuw %struct.TIFFDirEntry, ptr %59, i32 0, i32 3, !dbg !1196
  store i32 %58, ptr %60, align 4, !dbg !1197
  store i32 1, ptr %6, align 4, !dbg !1198
  br label %61, !dbg !1198

61:                                               ; preds = %52, %47
  %62 = load i32, ptr %6, align 4, !dbg !1199
  ret i32 %62, !dbg !1199
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @TIFFWriteRationalArray(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) #0 !dbg !1200 {
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca ptr, align 8
  %13 = alloca i32, align 4
  %14 = alloca ptr, align 8
  %15 = alloca i32, align 4
  %16 = alloca float, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store ptr %0, ptr %7, align 8
    #dbg_declare(ptr %7, !1203, !DIExpression(), !1204)
  store i32 %1, ptr %8, align 4
    #dbg_declare(ptr %8, !1205, !DIExpression(), !1206)
  store i32 %2, ptr %9, align 4
    #dbg_declare(ptr %9, !1207, !DIExpression(), !1208)
  store ptr %3, ptr %10, align 8
    #dbg_declare(ptr %10, !1209, !DIExpression(), !1210)
  store i32 %4, ptr %11, align 4
    #dbg_declare(ptr %11, !1211, !DIExpression(), !1212)
  store ptr %5, ptr %12, align 8
    #dbg_declare(ptr %12, !1213, !DIExpression(), !1214)
    #dbg_declare(ptr %13, !1215, !DIExpression(), !1216)
    #dbg_declare(ptr %14, !1217, !DIExpression(), !1218)
    #dbg_declare(ptr %15, !1219, !DIExpression(), !1220)
  %19 = load i32, ptr %9, align 4, !dbg !1221
  %20 = trunc i32 %19 to i16, !dbg !1222
  %21 = load ptr, ptr %10, align 8, !dbg !1223
  %22 = getelementptr inbounds nuw %struct.TIFFDirEntry, ptr %21, i32 0, i32 0, !dbg !1224
  store i16 %20, ptr %22, align 4, !dbg !1225
  %23 = load i32, ptr %8, align 4, !dbg !1226
  %24 = trunc i32 %23 to i16, !dbg !1227
  %25 = load ptr, ptr %10, align 8, !dbg !1228
  %26 = getelementptr inbounds nuw %struct.TIFFDirEntry, ptr %25, i32 0, i32 1, !dbg !1229
  store i16 %24, ptr %26, align 2, !dbg !1230
  %27 = load i32, ptr %11, align 4, !dbg !1231
  %28 = load ptr, ptr %10, align 8, !dbg !1232
  %29 = getelementptr inbounds nuw %struct.TIFFDirEntry, ptr %28, i32 0, i32 2, !dbg !1233
  store i32 %27, ptr %29, align 4, !dbg !1234
  %30 = load i32, ptr %11, align 4, !dbg !1235
  %31 = mul i32 2, %30, !dbg !1236
  %32 = zext i32 %31 to i64, !dbg !1237
  %33 = mul i64 %32, 4, !dbg !1238
  %34 = trunc i64 %33 to i32, !dbg !1237
  %35 = call ptr @_TIFFmalloc(i32 noundef %34), !dbg !1239
  store ptr %35, ptr %14, align 8, !dbg !1240
  store i32 0, ptr %13, align 4, !dbg !1241
  br label %36, !dbg !1243

36:                                               ; preds = %108, %6
  %37 = load i32, ptr %13, align 4, !dbg !1244
  %38 = load i32, ptr %11, align 4, !dbg !1246
  %39 = icmp ult i32 %37, %38, !dbg !1247
  br i1 %39, label %40, label %111, !dbg !1248

40:                                               ; preds = %36
    #dbg_declare(ptr %16, !1249, !DIExpression(), !1251)
  %41 = load ptr, ptr %12, align 8, !dbg !1252
  %42 = load i32, ptr %13, align 4, !dbg !1253
  %43 = zext i32 %42 to i64, !dbg !1252
  %44 = getelementptr inbounds nuw float, ptr %41, i64 %43, !dbg !1252
  %45 = load float, ptr %44, align 4, !dbg !1252
  store float %45, ptr %16, align 4, !dbg !1251
    #dbg_declare(ptr %17, !1254, !DIExpression(), !1255)
  store i32 1, ptr %17, align 4, !dbg !1255
    #dbg_declare(ptr %18, !1256, !DIExpression(), !1257)
  %46 = load float, ptr %16, align 4, !dbg !1258
  %47 = fcmp olt float %46, 0.000000e+00, !dbg !1260
  br i1 %47, label %48, label %66, !dbg !1260

48:                                               ; preds = %40
  %49 = load i32, ptr %8, align 4, !dbg !1261
  %50 = icmp eq i32 %49, 5, !dbg !1264
  br i1 %50, label %51, label %62, !dbg !1264

51:                                               ; preds = %48
  %52 = load ptr, ptr %7, align 8, !dbg !1265
  %53 = getelementptr inbounds nuw %struct.tiff, ptr %52, i32 0, i32 0, !dbg !1267
  %54 = load ptr, ptr %53, align 8, !dbg !1267
  %55 = load ptr, ptr %7, align 8, !dbg !1268
  %56 = load i32, ptr %9, align 4, !dbg !1269
  %57 = call ptr @_TIFFFieldWithTag(ptr noundef %55, i32 noundef %56), !dbg !1270
  %58 = getelementptr inbounds nuw %struct.TIFFFieldInfo, ptr %57, i32 0, i32 7, !dbg !1271
  %59 = load ptr, ptr %58, align 8, !dbg !1271
  %60 = load float, ptr %16, align 4, !dbg !1272
  %61 = fpext float %60 to double, !dbg !1272
  call void (ptr, ptr, ...) @TIFFWarning(ptr noundef %54, ptr noundef @.str.7, ptr noundef %59, double noundef %61), !dbg !1273
  store float 0.000000e+00, ptr %16, align 4, !dbg !1274
  br label %65, !dbg !1275

62:                                               ; preds = %48
  %63 = load float, ptr %16, align 4, !dbg !1276
  %64 = fneg float %63, !dbg !1277
  store float %64, ptr %16, align 4, !dbg !1278
  store i32 -1, ptr %17, align 4, !dbg !1279
  br label %65

65:                                               ; preds = %62, %51
  br label %66, !dbg !1280

66:                                               ; preds = %65, %40
  store i32 1, ptr %18, align 4, !dbg !1281
  %67 = load float, ptr %16, align 4, !dbg !1282
  %68 = fcmp ogt float %67, 0.000000e+00, !dbg !1284
  br i1 %68, label %69, label %87, !dbg !1284

69:                                               ; preds = %66
  br label %70, !dbg !1285

70:                                               ; preds = %79, %69
  %71 = load float, ptr %16, align 4, !dbg !1287
  %72 = fcmp olt float %71, 0x41B0000000000000, !dbg !1288
  br i1 %72, label %73, label %77, !dbg !1289

73:                                               ; preds = %70
  %74 = load i32, ptr %18, align 4, !dbg !1290
  %75 = zext i32 %74 to i64, !dbg !1290
  %76 = icmp slt i64 %75, 268435456, !dbg !1291
  br label %77

77:                                               ; preds = %73, %70
  %78 = phi i1 [ false, %70 ], [ %76, %73 ], !dbg !1292
  br i1 %78, label %79, label %86, !dbg !1285

79:                                               ; preds = %77
  %80 = load float, ptr %16, align 4, !dbg !1293
  %81 = fmul float %80, 8.000000e+00, !dbg !1293
  store float %81, ptr %16, align 4, !dbg !1293
  %82 = load i32, ptr %18, align 4, !dbg !1294
  %83 = zext i32 %82 to i64, !dbg !1294
  %84 = mul nsw i64 %83, 8, !dbg !1294
  %85 = trunc i64 %84 to i32, !dbg !1294
  store i32 %85, ptr %18, align 4, !dbg !1294
  br label %70, !dbg !1285, !llvm.loop !1295

86:                                               ; preds = %77
  br label %87, !dbg !1297

87:                                               ; preds = %86, %66
  %88 = load i32, ptr %17, align 4, !dbg !1298
  %89 = sitofp i32 %88 to double, !dbg !1298
  %90 = load float, ptr %16, align 4, !dbg !1299
  %91 = fpext float %90 to double, !dbg !1299
  %92 = fadd double %91, 5.000000e-01, !dbg !1300
  %93 = fmul double %89, %92, !dbg !1301
  %94 = fptoui double %93 to i32, !dbg !1302
  %95 = load ptr, ptr %14, align 8, !dbg !1303
  %96 = load i32, ptr %13, align 4, !dbg !1304
  %97 = mul i32 2, %96, !dbg !1305
  %98 = add i32 %97, 0, !dbg !1306
  %99 = zext i32 %98 to i64, !dbg !1303
  %100 = getelementptr inbounds nuw i32, ptr %95, i64 %99, !dbg !1303
  store i32 %94, ptr %100, align 4, !dbg !1307
  %101 = load i32, ptr %18, align 4, !dbg !1308
  %102 = load ptr, ptr %14, align 8, !dbg !1309
  %103 = load i32, ptr %13, align 4, !dbg !1310
  %104 = mul i32 2, %103, !dbg !1311
  %105 = add i32 %104, 1, !dbg !1312
  %106 = zext i32 %105 to i64, !dbg !1309
  %107 = getelementptr inbounds nuw i32, ptr %102, i64 %106, !dbg !1309
  store i32 %101, ptr %107, align 4, !dbg !1313
  br label %108, !dbg !1314

108:                                              ; preds = %87
  %109 = load i32, ptr %13, align 4, !dbg !1315
  %110 = add i32 %109, 1, !dbg !1315
  store i32 %110, ptr %13, align 4, !dbg !1315
  br label %36, !dbg !1316, !llvm.loop !1317

111:                                              ; preds = %36
  %112 = load ptr, ptr %7, align 8, !dbg !1319
  %113 = load ptr, ptr %10, align 8, !dbg !1320
  %114 = load ptr, ptr %14, align 8, !dbg !1321
  %115 = call i32 @TIFFWriteData(ptr noundef %112, ptr noundef %113, ptr noundef %114), !dbg !1322
  store i32 %115, ptr %15, align 4, !dbg !1323
  %116 = load ptr, ptr %14, align 8, !dbg !1324
  call void @_TIFFfree(ptr noundef %116), !dbg !1325
  %117 = load i32, ptr %15, align 4, !dbg !1326
  ret i32 %117, !dbg !1327
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @TIFFWritePerSampleShorts(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 !dbg !1328 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca [10 x i16], align 16
  %8 = alloca i16, align 2
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
    #dbg_declare(ptr %4, !1331, !DIExpression(), !1332)
  store i32 %1, ptr %5, align 4
    #dbg_declare(ptr %5, !1333, !DIExpression(), !1334)
  store ptr %2, ptr %6, align 8
    #dbg_declare(ptr %6, !1335, !DIExpression(), !1336)
    #dbg_declare(ptr %7, !1337, !DIExpression(), !1341)
    #dbg_declare(ptr %8, !1342, !DIExpression(), !1343)
    #dbg_declare(ptr %9, !1344, !DIExpression(), !1345)
  %13 = getelementptr inbounds [10 x i16], ptr %7, i64 0, i64 0, !dbg !1346
  store ptr %13, ptr %9, align 8, !dbg !1345
    #dbg_declare(ptr %10, !1347, !DIExpression(), !1348)
    #dbg_declare(ptr %11, !1349, !DIExpression(), !1350)
    #dbg_declare(ptr %12, !1351, !DIExpression(), !1352)
  %14 = load ptr, ptr %4, align 8, !dbg !1353
  %15 = getelementptr inbounds nuw %struct.tiff, ptr %14, i32 0, i32 6, !dbg !1354
  %16 = getelementptr inbounds nuw %struct.TIFFDirectory, ptr %15, i32 0, i32 15, !dbg !1355
  %17 = load i16, ptr %16, align 2, !dbg !1355
  %18 = zext i16 %17 to i32, !dbg !1353
  store i32 %18, ptr %12, align 4, !dbg !1352
  %19 = load i32, ptr %12, align 4, !dbg !1356
  %20 = sext i32 %19 to i64, !dbg !1356
  %21 = icmp ugt i64 %20, 10, !dbg !1358
  br i1 %21, label %22, label %28, !dbg !1358

22:                                               ; preds = %3
  %23 = load i32, ptr %12, align 4, !dbg !1359
  %24 = sext i32 %23 to i64, !dbg !1359
  %25 = mul i64 %24, 2, !dbg !1360
  %26 = trunc i64 %25 to i32, !dbg !1359
  %27 = call ptr @_TIFFmalloc(i32 noundef %26), !dbg !1361
  store ptr %27, ptr %9, align 8, !dbg !1362
  br label %28, !dbg !1363

28:                                               ; preds = %22, %3
  %29 = load ptr, ptr %4, align 8, !dbg !1364
  %30 = load i32, ptr %5, align 4, !dbg !1365
  %31 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %29, i32 noundef %30, ptr noundef %8), !dbg !1366
  store i32 0, ptr %10, align 4, !dbg !1367
  br label %32, !dbg !1369

32:                                               ; preds = %42, %28
  %33 = load i32, ptr %10, align 4, !dbg !1370
  %34 = load i32, ptr %12, align 4, !dbg !1372
  %35 = icmp slt i32 %33, %34, !dbg !1373
  br i1 %35, label %36, label %45, !dbg !1374

36:                                               ; preds = %32
  %37 = load i16, ptr %8, align 2, !dbg !1375
  %38 = load ptr, ptr %9, align 8, !dbg !1376
  %39 = load i32, ptr %10, align 4, !dbg !1377
  %40 = sext i32 %39 to i64, !dbg !1376
  %41 = getelementptr inbounds i16, ptr %38, i64 %40, !dbg !1376
  store i16 %37, ptr %41, align 2, !dbg !1378
  br label %42, !dbg !1376

42:                                               ; preds = %36
  %43 = load i32, ptr %10, align 4, !dbg !1379
  %44 = add nsw i32 %43, 1, !dbg !1379
  store i32 %44, ptr %10, align 4, !dbg !1379
  br label %32, !dbg !1380, !llvm.loop !1381

45:                                               ; preds = %32
  %46 = load ptr, ptr %4, align 8, !dbg !1383
  %47 = load i32, ptr %5, align 4, !dbg !1384
  %48 = load ptr, ptr %6, align 8, !dbg !1385
  %49 = load i32, ptr %12, align 4, !dbg !1386
  %50 = load ptr, ptr %9, align 8, !dbg !1387
  %51 = call i32 @TIFFWriteShortArray(ptr noundef %46, i32 noundef 3, i32 noundef %47, ptr noundef %48, i32 noundef %49, ptr noundef %50), !dbg !1388
  store i32 %51, ptr %11, align 4, !dbg !1389
  %52 = load ptr, ptr %9, align 8, !dbg !1390
  %53 = getelementptr inbounds [10 x i16], ptr %7, i64 0, i64 0, !dbg !1392
  %54 = icmp ne ptr %52, %53, !dbg !1393
  br i1 %54, label %55, label %57, !dbg !1393

55:                                               ; preds = %45
  %56 = load ptr, ptr %9, align 8, !dbg !1394
  call void @_TIFFfree(ptr noundef %56), !dbg !1395
  br label %57, !dbg !1395

57:                                               ; preds = %55, %45
  %58 = load i32, ptr %11, align 4, !dbg !1396
  ret i32 %58, !dbg !1397
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @TIFFWritePerSampleAnys(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #0 !dbg !1398 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca [10 x double], align 16
  %10 = alloca double, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
    #dbg_declare(ptr %5, !1401, !DIExpression(), !1402)
  store i32 %1, ptr %6, align 4
    #dbg_declare(ptr %6, !1403, !DIExpression(), !1404)
  store i32 %2, ptr %7, align 4
    #dbg_declare(ptr %7, !1405, !DIExpression(), !1406)
  store ptr %3, ptr %8, align 8
    #dbg_declare(ptr %8, !1407, !DIExpression(), !1408)
    #dbg_declare(ptr %9, !1409, !DIExpression(), !1411)
    #dbg_declare(ptr %10, !1412, !DIExpression(), !1413)
    #dbg_declare(ptr %11, !1414, !DIExpression(), !1415)
  %15 = getelementptr inbounds [10 x double], ptr %9, i64 0, i64 0, !dbg !1416
  store ptr %15, ptr %11, align 8, !dbg !1415
    #dbg_declare(ptr %12, !1417, !DIExpression(), !1418)
    #dbg_declare(ptr %13, !1419, !DIExpression(), !1420)
    #dbg_declare(ptr %14, !1421, !DIExpression(), !1422)
  %16 = load ptr, ptr %5, align 8, !dbg !1423
  %17 = getelementptr inbounds nuw %struct.tiff, ptr %16, i32 0, i32 6, !dbg !1424
  %18 = getelementptr inbounds nuw %struct.TIFFDirectory, ptr %17, i32 0, i32 15, !dbg !1425
  %19 = load i16, ptr %18, align 2, !dbg !1425
  %20 = zext i16 %19 to i32, !dbg !1426
  store i32 %20, ptr %14, align 4, !dbg !1422
  %21 = load i32, ptr %14, align 4, !dbg !1427
  %22 = sext i32 %21 to i64, !dbg !1427
  %23 = icmp ugt i64 %22, 10, !dbg !1429
  br i1 %23, label %24, label %30, !dbg !1429

24:                                               ; preds = %4
  %25 = load i32, ptr %14, align 4, !dbg !1430
  %26 = sext i32 %25 to i64, !dbg !1430
  %27 = mul i64 %26, 8, !dbg !1431
  %28 = trunc i64 %27 to i32, !dbg !1430
  %29 = call ptr @_TIFFmalloc(i32 noundef %28), !dbg !1432
  store ptr %29, ptr %11, align 8, !dbg !1433
  br label %30, !dbg !1434

30:                                               ; preds = %24, %4
  %31 = load ptr, ptr %5, align 8, !dbg !1435
  %32 = load i32, ptr %7, align 4, !dbg !1436
  %33 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %31, i32 noundef %32, ptr noundef %10), !dbg !1437
  store i32 0, ptr %12, align 4, !dbg !1438
  br label %34, !dbg !1440

34:                                               ; preds = %44, %30
  %35 = load i32, ptr %12, align 4, !dbg !1441
  %36 = load i32, ptr %14, align 4, !dbg !1443
  %37 = icmp slt i32 %35, %36, !dbg !1444
  br i1 %37, label %38, label %47, !dbg !1445

38:                                               ; preds = %34
  %39 = load double, ptr %10, align 8, !dbg !1446
  %40 = load ptr, ptr %11, align 8, !dbg !1447
  %41 = load i32, ptr %12, align 4, !dbg !1448
  %42 = sext i32 %41 to i64, !dbg !1447
  %43 = getelementptr inbounds double, ptr %40, i64 %42, !dbg !1447
  store double %39, ptr %43, align 8, !dbg !1449
  br label %44, !dbg !1447

44:                                               ; preds = %38
  %45 = load i32, ptr %12, align 4, !dbg !1450
  %46 = add nsw i32 %45, 1, !dbg !1450
  store i32 %46, ptr %12, align 4, !dbg !1450
  br label %34, !dbg !1451, !llvm.loop !1452

47:                                               ; preds = %34
  %48 = load ptr, ptr %5, align 8, !dbg !1454
  %49 = load i32, ptr %6, align 4, !dbg !1455
  %50 = load i32, ptr %7, align 4, !dbg !1456
  %51 = load ptr, ptr %8, align 8, !dbg !1457
  %52 = load i32, ptr %14, align 4, !dbg !1458
  %53 = load ptr, ptr %11, align 8, !dbg !1459
  %54 = call i32 @TIFFWriteAnyArray(ptr noundef %48, i32 noundef %49, i32 noundef %50, ptr noundef %51, i32 noundef %52, ptr noundef %53), !dbg !1460
  store i32 %54, ptr %13, align 4, !dbg !1461
  %55 = load ptr, ptr %11, align 8, !dbg !1462
  %56 = getelementptr inbounds [10 x double], ptr %9, i64 0, i64 0, !dbg !1464
  %57 = icmp ne ptr %55, %56, !dbg !1465
  br i1 %57, label %58, label %60, !dbg !1465

58:                                               ; preds = %47
  %59 = load ptr, ptr %11, align 8, !dbg !1466
  call void @_TIFFfree(ptr noundef %59), !dbg !1467
  br label %60, !dbg !1467

60:                                               ; preds = %58, %47
  %61 = load i32, ptr %13, align 4, !dbg !1468
  ret i32 %61, !dbg !1469
}

declare i32 @_TIFFSampleToTagType(ptr noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @TIFFSetupShortPair(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 !dbg !1470 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca [2 x i16], align 2
  store ptr %0, ptr %4, align 8
    #dbg_declare(ptr %4, !1471, !DIExpression(), !1472)
  store i32 %1, ptr %5, align 4
    #dbg_declare(ptr %5, !1473, !DIExpression(), !1474)
  store ptr %2, ptr %6, align 8
    #dbg_declare(ptr %6, !1475, !DIExpression(), !1476)
    #dbg_declare(ptr %7, !1477, !DIExpression(), !1478)
  %8 = load ptr, ptr %4, align 8, !dbg !1479
  %9 = load i32, ptr %5, align 4, !dbg !1480
  %10 = getelementptr inbounds [2 x i16], ptr %7, i64 0, i64 0, !dbg !1481
  %11 = getelementptr inbounds [2 x i16], ptr %7, i64 0, i64 1, !dbg !1482
  %12 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %8, i32 noundef %9, ptr noundef %10, ptr noundef %11), !dbg !1483
  %13 = load ptr, ptr %4, align 8, !dbg !1484
  %14 = load i32, ptr %5, align 4, !dbg !1485
  %15 = load ptr, ptr %6, align 8, !dbg !1486
  %16 = getelementptr inbounds [2 x i16], ptr %7, i64 0, i64 0, !dbg !1487
  %17 = call i32 @TIFFWriteShortArray(ptr noundef %13, i32 noundef 3, i32 noundef %14, ptr noundef %15, i32 noundef 2, ptr noundef %16), !dbg !1488
  ret i32 %17, !dbg !1489
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @TIFFWriteInkNames(ptr noundef %0, ptr noundef %1) #0 !dbg !1490 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !1493, !DIExpression(), !1494)
  store ptr %1, ptr %4, align 8
    #dbg_declare(ptr %4, !1495, !DIExpression(), !1496)
    #dbg_declare(ptr %5, !1497, !DIExpression(), !1498)
  %6 = load ptr, ptr %3, align 8, !dbg !1499
  %7 = getelementptr inbounds nuw %struct.tiff, ptr %6, i32 0, i32 6, !dbg !1500
  store ptr %7, ptr %5, align 8, !dbg !1498
  %8 = load ptr, ptr %4, align 8, !dbg !1501
  %9 = getelementptr inbounds nuw %struct.TIFFDirEntry, ptr %8, i32 0, i32 0, !dbg !1502
  store i16 333, ptr %9, align 4, !dbg !1503
  %10 = load ptr, ptr %4, align 8, !dbg !1504
  %11 = getelementptr inbounds nuw %struct.TIFFDirEntry, ptr %10, i32 0, i32 1, !dbg !1505
  store i16 2, ptr %11, align 2, !dbg !1506
  %12 = load ptr, ptr %5, align 8, !dbg !1507
  %13 = getelementptr inbounds nuw %struct.TIFFDirectory, ptr %12, i32 0, i32 58, !dbg !1508
  %14 = load i32, ptr %13, align 8, !dbg !1508
  %15 = load ptr, ptr %4, align 8, !dbg !1509
  %16 = getelementptr inbounds nuw %struct.TIFFDirEntry, ptr %15, i32 0, i32 2, !dbg !1510
  store i32 %14, ptr %16, align 4, !dbg !1511
  %17 = load ptr, ptr %3, align 8, !dbg !1512
  %18 = load ptr, ptr %4, align 8, !dbg !1513
  %19 = load ptr, ptr %5, align 8, !dbg !1514
  %20 = getelementptr inbounds nuw %struct.TIFFDirectory, ptr %19, i32 0, i32 59, !dbg !1515
  %21 = load ptr, ptr %20, align 8, !dbg !1515
  %22 = call i32 @TIFFWriteByteArray(ptr noundef %17, ptr noundef %18, ptr noundef %21), !dbg !1516
  ret i32 %22, !dbg !1517
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @TIFFWriteTransferFunction(ptr noundef %0, ptr noundef %1) #0 !dbg !1518 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !1519, !DIExpression(), !1520)
  store ptr %1, ptr %4, align 8
    #dbg_declare(ptr %4, !1521, !DIExpression(), !1522)
    #dbg_declare(ptr %5, !1523, !DIExpression(), !1524)
  %9 = load ptr, ptr %3, align 8, !dbg !1525
  %10 = getelementptr inbounds nuw %struct.tiff, ptr %9, i32 0, i32 6, !dbg !1526
  store ptr %10, ptr %5, align 8, !dbg !1524
    #dbg_declare(ptr %6, !1527, !DIExpression(), !1528)
  %11 = load ptr, ptr %5, align 8, !dbg !1529
  %12 = getelementptr inbounds nuw %struct.TIFFDirectory, ptr %11, i32 0, i32 8, !dbg !1530
  %13 = load i16, ptr %12, align 4, !dbg !1530
  %14 = zext i16 %13 to i32, !dbg !1529
  %15 = zext i32 %14 to i64, !dbg !1531
  %16 = shl i64 1, %15, !dbg !1531
  %17 = mul i64 %16, 2, !dbg !1532
  %18 = trunc i64 %17 to i32, !dbg !1533
  store i32 %18, ptr %6, align 4, !dbg !1528
    #dbg_declare(ptr %7, !1534, !DIExpression(), !1535)
  %19 = load ptr, ptr %5, align 8, !dbg !1536
  %20 = getelementptr inbounds nuw %struct.TIFFDirectory, ptr %19, i32 0, i32 54, !dbg !1537
  %21 = getelementptr inbounds [3 x ptr], ptr %20, i64 0, i64 0, !dbg !1536
  store ptr %21, ptr %7, align 8, !dbg !1535
    #dbg_declare(ptr %8, !1538, !DIExpression(), !1539)
  %22 = load ptr, ptr %5, align 8, !dbg !1540
  %23 = getelementptr inbounds nuw %struct.TIFFDirectory, ptr %22, i32 0, i32 15, !dbg !1541
  %24 = load i16, ptr %23, align 2, !dbg !1541
  %25 = zext i16 %24 to i32, !dbg !1540
  %26 = load ptr, ptr %5, align 8, !dbg !1542
  %27 = getelementptr inbounds nuw %struct.TIFFDirectory, ptr %26, i32 0, i32 30, !dbg !1543
  %28 = load i16, ptr %27, align 4, !dbg !1543
  %29 = zext i16 %28 to i32, !dbg !1542
  %30 = sub nsw i32 %25, %29, !dbg !1544
  switch i32 %30, label %31 [
    i32 2, label %43
    i32 1, label %55
    i32 0, label %55
  ], !dbg !1545

31:                                               ; preds = %2
  %32 = load ptr, ptr %7, align 8, !dbg !1546
  %33 = getelementptr inbounds ptr, ptr %32, i64 0, !dbg !1546
  %34 = load ptr, ptr %33, align 8, !dbg !1546
  %35 = load ptr, ptr %7, align 8, !dbg !1549
  %36 = getelementptr inbounds ptr, ptr %35, i64 2, !dbg !1549
  %37 = load ptr, ptr %36, align 8, !dbg !1549
  %38 = load i32, ptr %6, align 4, !dbg !1550
  %39 = call i32 @_TIFFmemcmp(ptr noundef %34, ptr noundef %37, i32 noundef %38), !dbg !1551
  %40 = icmp ne i32 %39, 0, !dbg !1551
  br i1 %40, label %41, label %42, !dbg !1551

41:                                               ; preds = %31
  store i32 3, ptr %8, align 4, !dbg !1552
  br label %56, !dbg !1554

42:                                               ; preds = %31
  br label %43, !dbg !1555

43:                                               ; preds = %2, %42
  %44 = load ptr, ptr %7, align 8, !dbg !1556
  %45 = getelementptr inbounds ptr, ptr %44, i64 0, !dbg !1556
  %46 = load ptr, ptr %45, align 8, !dbg !1556
  %47 = load ptr, ptr %7, align 8, !dbg !1558
  %48 = getelementptr inbounds ptr, ptr %47, i64 1, !dbg !1558
  %49 = load ptr, ptr %48, align 8, !dbg !1558
  %50 = load i32, ptr %6, align 4, !dbg !1559
  %51 = call i32 @_TIFFmemcmp(ptr noundef %46, ptr noundef %49, i32 noundef %50), !dbg !1560
  %52 = icmp ne i32 %51, 0, !dbg !1560
  br i1 %52, label %53, label %54, !dbg !1560

53:                                               ; preds = %43
  store i32 3, ptr %8, align 4, !dbg !1561
  br label %56, !dbg !1563

54:                                               ; preds = %43
  br label %55, !dbg !1564

55:                                               ; preds = %2, %2, %54
  store i32 1, ptr %8, align 4, !dbg !1565
  br label %56, !dbg !1566

56:                                               ; preds = %55, %53, %41
  %57 = load ptr, ptr %3, align 8, !dbg !1567
  %58 = load ptr, ptr %4, align 8, !dbg !1568
  %59 = load i32, ptr %8, align 4, !dbg !1569
  %60 = load ptr, ptr %7, align 8, !dbg !1570
  %61 = call i32 @TIFFWriteShortTable(ptr noundef %57, i32 noundef 301, ptr noundef %58, i32 noundef %59, ptr noundef %60), !dbg !1571
  ret i32 %61, !dbg !1572
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @TIFFWriteNormalTag(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !1573 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i16, align 2
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca i16, align 2
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca float, align 4
  %15 = alloca ptr, align 8
  %16 = alloca float, align 4
  %17 = alloca ptr, align 8
  %18 = alloca double, align 8
  %19 = alloca ptr, align 8
  %20 = alloca ptr, align 8
  %21 = alloca i8, align 1
  %22 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
    #dbg_declare(ptr %5, !1576, !DIExpression(), !1577)
  store ptr %1, ptr %6, align 8
    #dbg_declare(ptr %6, !1578, !DIExpression(), !1579)
  store ptr %2, ptr %7, align 8
    #dbg_declare(ptr %7, !1580, !DIExpression(), !1581)
    #dbg_declare(ptr %8, !1582, !DIExpression(), !1583)
  %23 = load ptr, ptr %7, align 8, !dbg !1584
  %24 = getelementptr inbounds nuw %struct.TIFFFieldInfo, ptr %23, i32 0, i32 2, !dbg !1585
  %25 = load i16, ptr %24, align 2, !dbg !1585
  store i16 %25, ptr %8, align 2, !dbg !1583
    #dbg_declare(ptr %9, !1586, !DIExpression(), !1587)
  %26 = load ptr, ptr %7, align 8, !dbg !1588
  %27 = getelementptr inbounds nuw %struct.TIFFFieldInfo, ptr %26, i32 0, i32 0, !dbg !1589
  %28 = load i32, ptr %27, align 8, !dbg !1589
  %29 = trunc i32 %28 to i16, !dbg !1590
  %30 = load ptr, ptr %6, align 8, !dbg !1591
  %31 = getelementptr inbounds nuw %struct.TIFFDirEntry, ptr %30, i32 0, i32 0, !dbg !1592
  store i16 %29, ptr %31, align 4, !dbg !1593
  %32 = load ptr, ptr %7, align 8, !dbg !1594
  %33 = getelementptr inbounds nuw %struct.TIFFFieldInfo, ptr %32, i32 0, i32 3, !dbg !1595
  %34 = load i32, ptr %33, align 8, !dbg !1595
  %35 = trunc i32 %34 to i16, !dbg !1596
  %36 = load ptr, ptr %6, align 8, !dbg !1597
  %37 = getelementptr inbounds nuw %struct.TIFFDirEntry, ptr %36, i32 0, i32 1, !dbg !1598
  store i16 %35, ptr %37, align 2, !dbg !1599
  %38 = load i16, ptr %8, align 2, !dbg !1600
  %39 = zext i16 %38 to i32, !dbg !1600
  %40 = load ptr, ptr %6, align 8, !dbg !1601
  %41 = getelementptr inbounds nuw %struct.TIFFDirEntry, ptr %40, i32 0, i32 2, !dbg !1602
  store i32 %39, ptr %41, align 4, !dbg !1603
  %42 = load ptr, ptr %7, align 8, !dbg !1604
  %43 = getelementptr inbounds nuw %struct.TIFFFieldInfo, ptr %42, i32 0, i32 3, !dbg !1605
  %44 = load i32, ptr %43, align 8, !dbg !1605
  switch i32 %44, label %459 [
    i32 3, label %45
    i32 8, label %45
    i32 4, label %136
    i32 9, label %136
    i32 5, label %181
    i32 10, label %181
    i32 11, label %238
    i32 12, label %295
    i32 2, label %352
    i32 1, label %371
    i32 6, label %371
    i32 7, label %416
    i32 0, label %458
  ], !dbg !1606

45:                                               ; preds = %3, %3
  %46 = load i16, ptr %8, align 2, !dbg !1607
  %47 = zext i16 %46 to i32, !dbg !1607
  %48 = icmp sgt i32 %47, 1, !dbg !1610
  br i1 %48, label %49, label %81, !dbg !1610

49:                                               ; preds = %45
    #dbg_declare(ptr %10, !1611, !DIExpression(), !1613)
  %50 = load i16, ptr %8, align 2, !dbg !1614
  %51 = zext i16 %50 to i32, !dbg !1614
  %52 = icmp eq i32 %51, 65535, !dbg !1616
  br i1 %52, label %53, label %59, !dbg !1616

53:                                               ; preds = %49
  %54 = load ptr, ptr %5, align 8, !dbg !1617
  %55 = load ptr, ptr %7, align 8, !dbg !1618
  %56 = getelementptr inbounds nuw %struct.TIFFFieldInfo, ptr %55, i32 0, i32 0, !dbg !1619
  %57 = load i32, ptr %56, align 8, !dbg !1619
  %58 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %54, i32 noundef %57, ptr noundef %8, ptr noundef %10), !dbg !1620
  br label %65, !dbg !1620

59:                                               ; preds = %49
  %60 = load ptr, ptr %5, align 8, !dbg !1621
  %61 = load ptr, ptr %7, align 8, !dbg !1622
  %62 = getelementptr inbounds nuw %struct.TIFFFieldInfo, ptr %61, i32 0, i32 0, !dbg !1623
  %63 = load i32, ptr %62, align 8, !dbg !1623
  %64 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %60, i32 noundef %63, ptr noundef %10), !dbg !1624
  br label %65

65:                                               ; preds = %59, %53
  %66 = load ptr, ptr %5, align 8, !dbg !1625
  %67 = load ptr, ptr %7, align 8, !dbg !1625
  %68 = getelementptr inbounds nuw %struct.TIFFFieldInfo, ptr %67, i32 0, i32 3, !dbg !1625
  %69 = load i32, ptr %68, align 8, !dbg !1625
  %70 = load ptr, ptr %7, align 8, !dbg !1625
  %71 = getelementptr inbounds nuw %struct.TIFFFieldInfo, ptr %70, i32 0, i32 0, !dbg !1625
  %72 = load i32, ptr %71, align 8, !dbg !1625
  %73 = load ptr, ptr %6, align 8, !dbg !1625
  %74 = load i16, ptr %8, align 2, !dbg !1625
  %75 = zext i16 %74 to i32, !dbg !1625
  %76 = load ptr, ptr %10, align 8, !dbg !1625
  %77 = call i32 @TIFFWriteShortArray(ptr noundef %66, i32 noundef %69, i32 noundef %72, ptr noundef %73, i32 noundef %75, ptr noundef %76), !dbg !1625
  %78 = icmp ne i32 %77, 0, !dbg !1625
  br i1 %78, label %80, label %79, !dbg !1627

79:                                               ; preds = %65
  store i32 0, ptr %4, align 4, !dbg !1628
  br label %460, !dbg !1628

80:                                               ; preds = %65
  br label %135, !dbg !1629

81:                                               ; preds = %45
    #dbg_declare(ptr %11, !1630, !DIExpression(), !1632)
  %82 = load ptr, ptr %5, align 8, !dbg !1633
  %83 = load ptr, ptr %7, align 8, !dbg !1634
  %84 = getelementptr inbounds nuw %struct.TIFFFieldInfo, ptr %83, i32 0, i32 0, !dbg !1635
  %85 = load i32, ptr %84, align 8, !dbg !1635
  %86 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %82, i32 noundef %85, ptr noundef %11), !dbg !1636
  %87 = load ptr, ptr %5, align 8, !dbg !1637
  %88 = getelementptr inbounds nuw %struct.tiff, ptr %87, i32 0, i32 7, !dbg !1637
  %89 = getelementptr inbounds nuw %struct.TIFFHeader, ptr %88, i32 0, i32 0, !dbg !1637
  %90 = load i16, ptr %89, align 8, !dbg !1637
  %91 = zext i16 %90 to i32, !dbg !1637
  %92 = icmp eq i32 %91, 19789, !dbg !1637
  br i1 %92, label %93, label %117, !dbg !1637

93:                                               ; preds = %81
  %94 = load i16, ptr %11, align 2, !dbg !1637
  %95 = zext i16 %94 to i64, !dbg !1637
  %96 = load ptr, ptr %5, align 8, !dbg !1637
  %97 = getelementptr inbounds nuw %struct.tiff, ptr %96, i32 0, i32 10, !dbg !1637
  %98 = load ptr, ptr %97, align 8, !dbg !1637
  %99 = load ptr, ptr %6, align 8, !dbg !1637
  %100 = getelementptr inbounds nuw %struct.TIFFDirEntry, ptr %99, i32 0, i32 1, !dbg !1637
  %101 = load i16, ptr %100, align 2, !dbg !1637
  %102 = zext i16 %101 to i64, !dbg !1637
  %103 = getelementptr inbounds nuw i64, ptr %98, i64 %102, !dbg !1637
  %104 = load i64, ptr %103, align 8, !dbg !1637
  %105 = and i64 %95, %104, !dbg !1637
  %106 = load ptr, ptr %5, align 8, !dbg !1637
  %107 = getelementptr inbounds nuw %struct.tiff, ptr %106, i32 0, i32 9, !dbg !1637
  %108 = load ptr, ptr %107, align 8, !dbg !1637
  %109 = load ptr, ptr %6, align 8, !dbg !1637
  %110 = getelementptr inbounds nuw %struct.TIFFDirEntry, ptr %109, i32 0, i32 1, !dbg !1637
  %111 = load i16, ptr %110, align 2, !dbg !1637
  %112 = zext i16 %111 to i64, !dbg !1637
  %113 = getelementptr inbounds nuw i32, ptr %108, i64 %112, !dbg !1637
  %114 = load i32, ptr %113, align 4, !dbg !1637
  %115 = zext i32 %114 to i64, !dbg !1637
  %116 = shl i64 %105, %115, !dbg !1637
  br label %130, !dbg !1637

117:                                              ; preds = %81
  %118 = load i16, ptr %11, align 2, !dbg !1637
  %119 = zext i16 %118 to i64, !dbg !1637
  %120 = load ptr, ptr %5, align 8, !dbg !1637
  %121 = getelementptr inbounds nuw %struct.tiff, ptr %120, i32 0, i32 10, !dbg !1637
  %122 = load ptr, ptr %121, align 8, !dbg !1637
  %123 = load ptr, ptr %6, align 8, !dbg !1637
  %124 = getelementptr inbounds nuw %struct.TIFFDirEntry, ptr %123, i32 0, i32 1, !dbg !1637
  %125 = load i16, ptr %124, align 2, !dbg !1637
  %126 = zext i16 %125 to i64, !dbg !1637
  %127 = getelementptr inbounds nuw i64, ptr %122, i64 %126, !dbg !1637
  %128 = load i64, ptr %127, align 8, !dbg !1637
  %129 = and i64 %119, %128, !dbg !1637
  br label %130, !dbg !1637

130:                                              ; preds = %117, %93
  %131 = phi i64 [ %116, %93 ], [ %129, %117 ], !dbg !1637
  %132 = trunc i64 %131 to i32, !dbg !1637
  %133 = load ptr, ptr %6, align 8, !dbg !1638
  %134 = getelementptr inbounds nuw %struct.TIFFDirEntry, ptr %133, i32 0, i32 3, !dbg !1639
  store i32 %132, ptr %134, align 4, !dbg !1640
  br label %135

135:                                              ; preds = %130, %80
  br label %459, !dbg !1641

136:                                              ; preds = %3, %3
  %137 = load i16, ptr %8, align 2, !dbg !1642
  %138 = zext i16 %137 to i32, !dbg !1642
  %139 = icmp sgt i32 %138, 1, !dbg !1644
  br i1 %139, label %140, label %172, !dbg !1644

140:                                              ; preds = %136
    #dbg_declare(ptr %12, !1645, !DIExpression(), !1647)
  %141 = load i16, ptr %8, align 2, !dbg !1648
  %142 = zext i16 %141 to i32, !dbg !1648
  %143 = icmp eq i32 %142, 65535, !dbg !1650
  br i1 %143, label %144, label %150, !dbg !1650

144:                                              ; preds = %140
  %145 = load ptr, ptr %5, align 8, !dbg !1651
  %146 = load ptr, ptr %7, align 8, !dbg !1652
  %147 = getelementptr inbounds nuw %struct.TIFFFieldInfo, ptr %146, i32 0, i32 0, !dbg !1653
  %148 = load i32, ptr %147, align 8, !dbg !1653
  %149 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %145, i32 noundef %148, ptr noundef %8, ptr noundef %12), !dbg !1654
  br label %156, !dbg !1654

150:                                              ; preds = %140
  %151 = load ptr, ptr %5, align 8, !dbg !1655
  %152 = load ptr, ptr %7, align 8, !dbg !1656
  %153 = getelementptr inbounds nuw %struct.TIFFFieldInfo, ptr %152, i32 0, i32 0, !dbg !1657
  %154 = load i32, ptr %153, align 8, !dbg !1657
  %155 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %151, i32 noundef %154, ptr noundef %12), !dbg !1658
  br label %156

156:                                              ; preds = %150, %144
  %157 = load ptr, ptr %5, align 8, !dbg !1659
  %158 = load ptr, ptr %7, align 8, !dbg !1659
  %159 = getelementptr inbounds nuw %struct.TIFFFieldInfo, ptr %158, i32 0, i32 3, !dbg !1659
  %160 = load i32, ptr %159, align 8, !dbg !1659
  %161 = load ptr, ptr %7, align 8, !dbg !1659
  %162 = getelementptr inbounds nuw %struct.TIFFFieldInfo, ptr %161, i32 0, i32 0, !dbg !1659
  %163 = load i32, ptr %162, align 8, !dbg !1659
  %164 = load ptr, ptr %6, align 8, !dbg !1659
  %165 = load i16, ptr %8, align 2, !dbg !1659
  %166 = zext i16 %165 to i32, !dbg !1659
  %167 = load ptr, ptr %12, align 8, !dbg !1659
  %168 = call i32 @TIFFWriteLongArray(ptr noundef %157, i32 noundef %160, i32 noundef %163, ptr noundef %164, i32 noundef %166, ptr noundef %167), !dbg !1659
  %169 = icmp ne i32 %168, 0, !dbg !1659
  br i1 %169, label %171, label %170, !dbg !1661

170:                                              ; preds = %156
  store i32 0, ptr %4, align 4, !dbg !1662
  br label %460, !dbg !1662

171:                                              ; preds = %156
  br label %180, !dbg !1663

172:                                              ; preds = %136
  %173 = load ptr, ptr %5, align 8, !dbg !1664
  %174 = load ptr, ptr %7, align 8, !dbg !1666
  %175 = getelementptr inbounds nuw %struct.TIFFFieldInfo, ptr %174, i32 0, i32 0, !dbg !1667
  %176 = load i32, ptr %175, align 8, !dbg !1667
  %177 = load ptr, ptr %6, align 8, !dbg !1668
  %178 = getelementptr inbounds nuw %struct.TIFFDirEntry, ptr %177, i32 0, i32 3, !dbg !1669
  %179 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %173, i32 noundef %176, ptr noundef %178), !dbg !1670
  br label %180

180:                                              ; preds = %172, %171
  br label %459, !dbg !1671

181:                                              ; preds = %3, %3
  %182 = load i16, ptr %8, align 2, !dbg !1672
  %183 = zext i16 %182 to i32, !dbg !1672
  %184 = icmp sgt i32 %183, 1, !dbg !1674
  br i1 %184, label %185, label %217, !dbg !1674

185:                                              ; preds = %181
    #dbg_declare(ptr %13, !1675, !DIExpression(), !1677)
  %186 = load i16, ptr %8, align 2, !dbg !1678
  %187 = zext i16 %186 to i32, !dbg !1678
  %188 = icmp eq i32 %187, 65535, !dbg !1680
  br i1 %188, label %189, label %195, !dbg !1680

189:                                              ; preds = %185
  %190 = load ptr, ptr %5, align 8, !dbg !1681
  %191 = load ptr, ptr %7, align 8, !dbg !1682
  %192 = getelementptr inbounds nuw %struct.TIFFFieldInfo, ptr %191, i32 0, i32 0, !dbg !1683
  %193 = load i32, ptr %192, align 8, !dbg !1683
  %194 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %190, i32 noundef %193, ptr noundef %8, ptr noundef %13), !dbg !1684
  br label %201, !dbg !1684

195:                                              ; preds = %185
  %196 = load ptr, ptr %5, align 8, !dbg !1685
  %197 = load ptr, ptr %7, align 8, !dbg !1686
  %198 = getelementptr inbounds nuw %struct.TIFFFieldInfo, ptr %197, i32 0, i32 0, !dbg !1687
  %199 = load i32, ptr %198, align 8, !dbg !1687
  %200 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %196, i32 noundef %199, ptr noundef %13), !dbg !1688
  br label %201

201:                                              ; preds = %195, %189
  %202 = load ptr, ptr %5, align 8, !dbg !1689
  %203 = load ptr, ptr %7, align 8, !dbg !1689
  %204 = getelementptr inbounds nuw %struct.TIFFFieldInfo, ptr %203, i32 0, i32 3, !dbg !1689
  %205 = load i32, ptr %204, align 8, !dbg !1689
  %206 = load ptr, ptr %7, align 8, !dbg !1689
  %207 = getelementptr inbounds nuw %struct.TIFFFieldInfo, ptr %206, i32 0, i32 0, !dbg !1689
  %208 = load i32, ptr %207, align 8, !dbg !1689
  %209 = load ptr, ptr %6, align 8, !dbg !1689
  %210 = load i16, ptr %8, align 2, !dbg !1689
  %211 = zext i16 %210 to i32, !dbg !1689
  %212 = load ptr, ptr %13, align 8, !dbg !1689
  %213 = call i32 @TIFFWriteRationalArray(ptr noundef %202, i32 noundef %205, i32 noundef %208, ptr noundef %209, i32 noundef %211, ptr noundef %212), !dbg !1689
  %214 = icmp ne i32 %213, 0, !dbg !1689
  br i1 %214, label %216, label %215, !dbg !1691

215:                                              ; preds = %201
  store i32 0, ptr %4, align 4, !dbg !1692
  br label %460, !dbg !1692

216:                                              ; preds = %201
  br label %237, !dbg !1693

217:                                              ; preds = %181
    #dbg_declare(ptr %14, !1694, !DIExpression(), !1696)
  %218 = load ptr, ptr %5, align 8, !dbg !1697
  %219 = load ptr, ptr %7, align 8, !dbg !1698
  %220 = getelementptr inbounds nuw %struct.TIFFFieldInfo, ptr %219, i32 0, i32 0, !dbg !1699
  %221 = load i32, ptr %220, align 8, !dbg !1699
  %222 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %218, i32 noundef %221, ptr noundef %14), !dbg !1700
  %223 = load ptr, ptr %5, align 8, !dbg !1701
  %224 = load ptr, ptr %7, align 8, !dbg !1701
  %225 = getelementptr inbounds nuw %struct.TIFFFieldInfo, ptr %224, i32 0, i32 3, !dbg !1701
  %226 = load i32, ptr %225, align 8, !dbg !1701
  %227 = load ptr, ptr %7, align 8, !dbg !1701
  %228 = getelementptr inbounds nuw %struct.TIFFFieldInfo, ptr %227, i32 0, i32 0, !dbg !1701
  %229 = load i32, ptr %228, align 8, !dbg !1701
  %230 = load ptr, ptr %6, align 8, !dbg !1701
  %231 = load i16, ptr %8, align 2, !dbg !1701
  %232 = zext i16 %231 to i32, !dbg !1701
  %233 = call i32 @TIFFWriteRationalArray(ptr noundef %223, i32 noundef %226, i32 noundef %229, ptr noundef %230, i32 noundef %232, ptr noundef %14), !dbg !1701
  %234 = icmp ne i32 %233, 0, !dbg !1701
  br i1 %234, label %236, label %235, !dbg !1703

235:                                              ; preds = %217
  store i32 0, ptr %4, align 4, !dbg !1704
  br label %460, !dbg !1704

236:                                              ; preds = %217
  br label %237

237:                                              ; preds = %236, %216
  br label %459, !dbg !1705

238:                                              ; preds = %3
  %239 = load i16, ptr %8, align 2, !dbg !1706
  %240 = zext i16 %239 to i32, !dbg !1706
  %241 = icmp sgt i32 %240, 1, !dbg !1708
  br i1 %241, label %242, label %274, !dbg !1708

242:                                              ; preds = %238
    #dbg_declare(ptr %15, !1709, !DIExpression(), !1711)
  %243 = load i16, ptr %8, align 2, !dbg !1712
  %244 = zext i16 %243 to i32, !dbg !1712
  %245 = icmp eq i32 %244, 65535, !dbg !1714
  br i1 %245, label %246, label %252, !dbg !1714

246:                                              ; preds = %242
  %247 = load ptr, ptr %5, align 8, !dbg !1715
  %248 = load ptr, ptr %7, align 8, !dbg !1716
  %249 = getelementptr inbounds nuw %struct.TIFFFieldInfo, ptr %248, i32 0, i32 0, !dbg !1717
  %250 = load i32, ptr %249, align 8, !dbg !1717
  %251 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %247, i32 noundef %250, ptr noundef %8, ptr noundef %15), !dbg !1718
  br label %258, !dbg !1718

252:                                              ; preds = %242
  %253 = load ptr, ptr %5, align 8, !dbg !1719
  %254 = load ptr, ptr %7, align 8, !dbg !1720
  %255 = getelementptr inbounds nuw %struct.TIFFFieldInfo, ptr %254, i32 0, i32 0, !dbg !1721
  %256 = load i32, ptr %255, align 8, !dbg !1721
  %257 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %253, i32 noundef %256, ptr noundef %15), !dbg !1722
  br label %258

258:                                              ; preds = %252, %246
  %259 = load ptr, ptr %5, align 8, !dbg !1723
  %260 = load ptr, ptr %7, align 8, !dbg !1723
  %261 = getelementptr inbounds nuw %struct.TIFFFieldInfo, ptr %260, i32 0, i32 3, !dbg !1723
  %262 = load i32, ptr %261, align 8, !dbg !1723
  %263 = load ptr, ptr %7, align 8, !dbg !1723
  %264 = getelementptr inbounds nuw %struct.TIFFFieldInfo, ptr %263, i32 0, i32 0, !dbg !1723
  %265 = load i32, ptr %264, align 8, !dbg !1723
  %266 = load ptr, ptr %6, align 8, !dbg !1723
  %267 = load i16, ptr %8, align 2, !dbg !1723
  %268 = zext i16 %267 to i32, !dbg !1723
  %269 = load ptr, ptr %15, align 8, !dbg !1723
  %270 = call i32 @TIFFWriteFloatArray(ptr noundef %259, i32 noundef %262, i32 noundef %265, ptr noundef %266, i32 noundef %268, ptr noundef %269), !dbg !1723
  %271 = icmp ne i32 %270, 0, !dbg !1723
  br i1 %271, label %273, label %272, !dbg !1725

272:                                              ; preds = %258
  store i32 0, ptr %4, align 4, !dbg !1726
  br label %460, !dbg !1726

273:                                              ; preds = %258
  br label %294, !dbg !1727

274:                                              ; preds = %238
    #dbg_declare(ptr %16, !1728, !DIExpression(), !1730)
  %275 = load ptr, ptr %5, align 8, !dbg !1731
  %276 = load ptr, ptr %7, align 8, !dbg !1732
  %277 = getelementptr inbounds nuw %struct.TIFFFieldInfo, ptr %276, i32 0, i32 0, !dbg !1733
  %278 = load i32, ptr %277, align 8, !dbg !1733
  %279 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %275, i32 noundef %278, ptr noundef %16), !dbg !1734
  %280 = load ptr, ptr %5, align 8, !dbg !1735
  %281 = load ptr, ptr %7, align 8, !dbg !1735
  %282 = getelementptr inbounds nuw %struct.TIFFFieldInfo, ptr %281, i32 0, i32 3, !dbg !1735
  %283 = load i32, ptr %282, align 8, !dbg !1735
  %284 = load ptr, ptr %7, align 8, !dbg !1735
  %285 = getelementptr inbounds nuw %struct.TIFFFieldInfo, ptr %284, i32 0, i32 0, !dbg !1735
  %286 = load i32, ptr %285, align 8, !dbg !1735
  %287 = load ptr, ptr %6, align 8, !dbg !1735
  %288 = load i16, ptr %8, align 2, !dbg !1735
  %289 = zext i16 %288 to i32, !dbg !1735
  %290 = call i32 @TIFFWriteFloatArray(ptr noundef %280, i32 noundef %283, i32 noundef %286, ptr noundef %287, i32 noundef %289, ptr noundef %16), !dbg !1735
  %291 = icmp ne i32 %290, 0, !dbg !1735
  br i1 %291, label %293, label %292, !dbg !1737

292:                                              ; preds = %274
  store i32 0, ptr %4, align 4, !dbg !1738
  br label %460, !dbg !1738

293:                                              ; preds = %274
  br label %294

294:                                              ; preds = %293, %273
  br label %459, !dbg !1739

295:                                              ; preds = %3
  %296 = load i16, ptr %8, align 2, !dbg !1740
  %297 = zext i16 %296 to i32, !dbg !1740
  %298 = icmp sgt i32 %297, 1, !dbg !1742
  br i1 %298, label %299, label %331, !dbg !1742

299:                                              ; preds = %295
    #dbg_declare(ptr %17, !1743, !DIExpression(), !1745)
  %300 = load i16, ptr %8, align 2, !dbg !1746
  %301 = zext i16 %300 to i32, !dbg !1746
  %302 = icmp eq i32 %301, 65535, !dbg !1748
  br i1 %302, label %303, label %309, !dbg !1748

303:                                              ; preds = %299
  %304 = load ptr, ptr %5, align 8, !dbg !1749
  %305 = load ptr, ptr %7, align 8, !dbg !1750
  %306 = getelementptr inbounds nuw %struct.TIFFFieldInfo, ptr %305, i32 0, i32 0, !dbg !1751
  %307 = load i32, ptr %306, align 8, !dbg !1751
  %308 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %304, i32 noundef %307, ptr noundef %8, ptr noundef %17), !dbg !1752
  br label %315, !dbg !1752

309:                                              ; preds = %299
  %310 = load ptr, ptr %5, align 8, !dbg !1753
  %311 = load ptr, ptr %7, align 8, !dbg !1754
  %312 = getelementptr inbounds nuw %struct.TIFFFieldInfo, ptr %311, i32 0, i32 0, !dbg !1755
  %313 = load i32, ptr %312, align 8, !dbg !1755
  %314 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %310, i32 noundef %313, ptr noundef %17), !dbg !1756
  br label %315

315:                                              ; preds = %309, %303
  %316 = load ptr, ptr %5, align 8, !dbg !1757
  %317 = load ptr, ptr %7, align 8, !dbg !1757
  %318 = getelementptr inbounds nuw %struct.TIFFFieldInfo, ptr %317, i32 0, i32 3, !dbg !1757
  %319 = load i32, ptr %318, align 8, !dbg !1757
  %320 = load ptr, ptr %7, align 8, !dbg !1757
  %321 = getelementptr inbounds nuw %struct.TIFFFieldInfo, ptr %320, i32 0, i32 0, !dbg !1757
  %322 = load i32, ptr %321, align 8, !dbg !1757
  %323 = load ptr, ptr %6, align 8, !dbg !1757
  %324 = load i16, ptr %8, align 2, !dbg !1757
  %325 = zext i16 %324 to i32, !dbg !1757
  %326 = load ptr, ptr %17, align 8, !dbg !1757
  %327 = call i32 @TIFFWriteDoubleArray(ptr noundef %316, i32 noundef %319, i32 noundef %322, ptr noundef %323, i32 noundef %325, ptr noundef %326), !dbg !1757
  %328 = icmp ne i32 %327, 0, !dbg !1757
  br i1 %328, label %330, label %329, !dbg !1759

329:                                              ; preds = %315
  store i32 0, ptr %4, align 4, !dbg !1760
  br label %460, !dbg !1760

330:                                              ; preds = %315
  br label %351, !dbg !1761

331:                                              ; preds = %295
    #dbg_declare(ptr %18, !1762, !DIExpression(), !1764)
  %332 = load ptr, ptr %5, align 8, !dbg !1765
  %333 = load ptr, ptr %7, align 8, !dbg !1766
  %334 = getelementptr inbounds nuw %struct.TIFFFieldInfo, ptr %333, i32 0, i32 0, !dbg !1767
  %335 = load i32, ptr %334, align 8, !dbg !1767
  %336 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %332, i32 noundef %335, ptr noundef %18), !dbg !1768
  %337 = load ptr, ptr %5, align 8, !dbg !1769
  %338 = load ptr, ptr %7, align 8, !dbg !1769
  %339 = getelementptr inbounds nuw %struct.TIFFFieldInfo, ptr %338, i32 0, i32 3, !dbg !1769
  %340 = load i32, ptr %339, align 8, !dbg !1769
  %341 = load ptr, ptr %7, align 8, !dbg !1769
  %342 = getelementptr inbounds nuw %struct.TIFFFieldInfo, ptr %341, i32 0, i32 0, !dbg !1769
  %343 = load i32, ptr %342, align 8, !dbg !1769
  %344 = load ptr, ptr %6, align 8, !dbg !1769
  %345 = load i16, ptr %8, align 2, !dbg !1769
  %346 = zext i16 %345 to i32, !dbg !1769
  %347 = call i32 @TIFFWriteDoubleArray(ptr noundef %337, i32 noundef %340, i32 noundef %343, ptr noundef %344, i32 noundef %346, ptr noundef %18), !dbg !1769
  %348 = icmp ne i32 %347, 0, !dbg !1769
  br i1 %348, label %350, label %349, !dbg !1771

349:                                              ; preds = %331
  store i32 0, ptr %4, align 4, !dbg !1772
  br label %460, !dbg !1772

350:                                              ; preds = %331
  br label %351

351:                                              ; preds = %350, %330
  br label %459, !dbg !1773

352:                                              ; preds = %3
    #dbg_declare(ptr %19, !1774, !DIExpression(), !1776)
  %353 = load ptr, ptr %5, align 8, !dbg !1777
  %354 = load ptr, ptr %7, align 8, !dbg !1778
  %355 = getelementptr inbounds nuw %struct.TIFFFieldInfo, ptr %354, i32 0, i32 0, !dbg !1779
  %356 = load i32, ptr %355, align 8, !dbg !1779
  %357 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %353, i32 noundef %356, ptr noundef %19), !dbg !1780
  %358 = load ptr, ptr %19, align 8, !dbg !1781
  %359 = call i64 @strlen(ptr noundef %358) #3, !dbg !1782
  %360 = add i64 %359, 1, !dbg !1783
  %361 = trunc i64 %360 to i32, !dbg !1784
  %362 = load ptr, ptr %6, align 8, !dbg !1785
  %363 = getelementptr inbounds nuw %struct.TIFFDirEntry, ptr %362, i32 0, i32 2, !dbg !1786
  store i32 %361, ptr %363, align 4, !dbg !1787
  %364 = load ptr, ptr %5, align 8, !dbg !1788
  %365 = load ptr, ptr %6, align 8, !dbg !1790
  %366 = load ptr, ptr %19, align 8, !dbg !1791
  %367 = call i32 @TIFFWriteByteArray(ptr noundef %364, ptr noundef %365, ptr noundef %366), !dbg !1792
  %368 = icmp ne i32 %367, 0, !dbg !1792
  br i1 %368, label %370, label %369, !dbg !1793

369:                                              ; preds = %352
  store i32 0, ptr %4, align 4, !dbg !1794
  br label %460, !dbg !1794

370:                                              ; preds = %352
  br label %459, !dbg !1795

371:                                              ; preds = %3, %3
  %372 = load i16, ptr %8, align 2, !dbg !1796
  %373 = zext i16 %372 to i32, !dbg !1796
  %374 = icmp sgt i32 %373, 1, !dbg !1798
  br i1 %374, label %375, label %403, !dbg !1798

375:                                              ; preds = %371
    #dbg_declare(ptr %20, !1799, !DIExpression(), !1801)
  %376 = load i16, ptr %8, align 2, !dbg !1802
  %377 = zext i16 %376 to i32, !dbg !1802
  %378 = icmp eq i32 %377, 65535, !dbg !1804
  br i1 %378, label %379, label %389, !dbg !1804

379:                                              ; preds = %375
  %380 = load ptr, ptr %5, align 8, !dbg !1805
  %381 = load ptr, ptr %7, align 8, !dbg !1807
  %382 = getelementptr inbounds nuw %struct.TIFFFieldInfo, ptr %381, i32 0, i32 0, !dbg !1808
  %383 = load i32, ptr %382, align 8, !dbg !1808
  %384 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %380, i32 noundef %383, ptr noundef %8, ptr noundef %20), !dbg !1809
  %385 = load i16, ptr %8, align 2, !dbg !1810
  %386 = zext i16 %385 to i32, !dbg !1810
  %387 = load ptr, ptr %6, align 8, !dbg !1811
  %388 = getelementptr inbounds nuw %struct.TIFFDirEntry, ptr %387, i32 0, i32 2, !dbg !1812
  store i32 %386, ptr %388, align 4, !dbg !1813
  br label %395, !dbg !1814

389:                                              ; preds = %375
  %390 = load ptr, ptr %5, align 8, !dbg !1815
  %391 = load ptr, ptr %7, align 8, !dbg !1816
  %392 = getelementptr inbounds nuw %struct.TIFFFieldInfo, ptr %391, i32 0, i32 0, !dbg !1817
  %393 = load i32, ptr %392, align 8, !dbg !1817
  %394 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %390, i32 noundef %393, ptr noundef %20), !dbg !1818
  br label %395

395:                                              ; preds = %389, %379
  %396 = load ptr, ptr %5, align 8, !dbg !1819
  %397 = load ptr, ptr %6, align 8, !dbg !1821
  %398 = load ptr, ptr %20, align 8, !dbg !1822
  %399 = call i32 @TIFFWriteByteArray(ptr noundef %396, ptr noundef %397, ptr noundef %398), !dbg !1823
  %400 = icmp ne i32 %399, 0, !dbg !1823
  br i1 %400, label %402, label %401, !dbg !1824

401:                                              ; preds = %395
  store i32 0, ptr %4, align 4, !dbg !1825
  br label %460, !dbg !1825

402:                                              ; preds = %395
  br label %415, !dbg !1826

403:                                              ; preds = %371
    #dbg_declare(ptr %21, !1827, !DIExpression(), !1829)
  %404 = load ptr, ptr %5, align 8, !dbg !1830
  %405 = load ptr, ptr %7, align 8, !dbg !1831
  %406 = getelementptr inbounds nuw %struct.TIFFFieldInfo, ptr %405, i32 0, i32 0, !dbg !1832
  %407 = load i32, ptr %406, align 8, !dbg !1832
  %408 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %404, i32 noundef %407, ptr noundef %21), !dbg !1833
  %409 = load ptr, ptr %5, align 8, !dbg !1834
  %410 = load ptr, ptr %6, align 8, !dbg !1836
  %411 = call i32 @TIFFWriteByteArray(ptr noundef %409, ptr noundef %410, ptr noundef %21), !dbg !1837
  %412 = icmp ne i32 %411, 0, !dbg !1837
  br i1 %412, label %414, label %413, !dbg !1838

413:                                              ; preds = %403
  store i32 0, ptr %4, align 4, !dbg !1839
  br label %460, !dbg !1839

414:                                              ; preds = %403
  br label %415

415:                                              ; preds = %414, %402
  br label %459, !dbg !1840

416:                                              ; preds = %3
    #dbg_declare(ptr %22, !1841, !DIExpression(), !1843)
  %417 = load i16, ptr %8, align 2, !dbg !1844
  %418 = zext i16 %417 to i32, !dbg !1844
  %419 = icmp eq i32 %418, 65535, !dbg !1846
  br i1 %419, label %420, label %430, !dbg !1846

420:                                              ; preds = %416
  %421 = load ptr, ptr %5, align 8, !dbg !1847
  %422 = load ptr, ptr %7, align 8, !dbg !1849
  %423 = getelementptr inbounds nuw %struct.TIFFFieldInfo, ptr %422, i32 0, i32 0, !dbg !1850
  %424 = load i32, ptr %423, align 8, !dbg !1850
  %425 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %421, i32 noundef %424, ptr noundef %8, ptr noundef %22), !dbg !1851
  %426 = load i16, ptr %8, align 2, !dbg !1852
  %427 = zext i16 %426 to i32, !dbg !1852
  %428 = load ptr, ptr %6, align 8, !dbg !1853
  %429 = getelementptr inbounds nuw %struct.TIFFDirEntry, ptr %428, i32 0, i32 2, !dbg !1854
  store i32 %427, ptr %429, align 4, !dbg !1855
  br label %450, !dbg !1856

430:                                              ; preds = %416
  %431 = load i16, ptr %8, align 2, !dbg !1857
  %432 = zext i16 %431 to i32, !dbg !1857
  %433 = icmp eq i32 %432, 65533, !dbg !1859
  br i1 %433, label %434, label %443, !dbg !1859

434:                                              ; preds = %430
  %435 = load ptr, ptr %5, align 8, !dbg !1860
  %436 = load ptr, ptr %7, align 8, !dbg !1862
  %437 = getelementptr inbounds nuw %struct.TIFFFieldInfo, ptr %436, i32 0, i32 0, !dbg !1863
  %438 = load i32, ptr %437, align 8, !dbg !1863
  %439 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %435, i32 noundef %438, ptr noundef %9, ptr noundef %22), !dbg !1864
  %440 = load i32, ptr %9, align 4, !dbg !1865
  %441 = load ptr, ptr %6, align 8, !dbg !1866
  %442 = getelementptr inbounds nuw %struct.TIFFDirEntry, ptr %441, i32 0, i32 2, !dbg !1867
  store i32 %440, ptr %442, align 4, !dbg !1868
  br label %449, !dbg !1869

443:                                              ; preds = %430
  %444 = load ptr, ptr %5, align 8, !dbg !1870
  %445 = load ptr, ptr %7, align 8, !dbg !1871
  %446 = getelementptr inbounds nuw %struct.TIFFFieldInfo, ptr %445, i32 0, i32 0, !dbg !1872
  %447 = load i32, ptr %446, align 8, !dbg !1872
  %448 = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef %444, i32 noundef %447, ptr noundef %22), !dbg !1873
  br label %449

449:                                              ; preds = %443, %434
  br label %450

450:                                              ; preds = %449, %420
  %451 = load ptr, ptr %5, align 8, !dbg !1874
  %452 = load ptr, ptr %6, align 8, !dbg !1876
  %453 = load ptr, ptr %22, align 8, !dbg !1877
  %454 = call i32 @TIFFWriteByteArray(ptr noundef %451, ptr noundef %452, ptr noundef %453), !dbg !1878
  %455 = icmp ne i32 %454, 0, !dbg !1878
  br i1 %455, label %457, label %456, !dbg !1879

456:                                              ; preds = %450
  store i32 0, ptr %4, align 4, !dbg !1880
  br label %460, !dbg !1880

457:                                              ; preds = %450
  br label %459, !dbg !1881

458:                                              ; preds = %3
  br label %459, !dbg !1882

459:                                              ; preds = %3, %458, %457, %415, %370, %351, %294, %237, %180, %135
  store i32 1, ptr %4, align 4, !dbg !1883
  br label %460, !dbg !1883

460:                                              ; preds = %459, %456, %413, %401, %369, %349, %329, %292, %272, %235, %215, %170, %79
  %461 = load i32, ptr %4, align 4, !dbg !1884
  ret i32 %461, !dbg !1884
}

declare void @TIFFSwabArrayOfShort(ptr noundef, i64 noundef) #1

declare void @TIFFSwabArrayOfLong(ptr noundef, i64 noundef) #1

declare void @TIFFSwabShort(ptr noundef) #1

declare void @TIFFSwabLong(ptr noundef) #1

declare void @TIFFFreeDirectory(ptr noundef) #1

declare i32 @TIFFDefaultDirectory(ptr noundef) #1

declare i32 @TIFFGetField(ptr noundef, i32 noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @TIFFWriteShortArray(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) #0 !dbg !1885 {
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca ptr, align 8
  store ptr %0, ptr %8, align 8
    #dbg_declare(ptr %8, !1888, !DIExpression(), !1889)
  store i32 %1, ptr %9, align 4
    #dbg_declare(ptr %9, !1890, !DIExpression(), !1891)
  store i32 %2, ptr %10, align 4
    #dbg_declare(ptr %10, !1892, !DIExpression(), !1893)
  store ptr %3, ptr %11, align 8
    #dbg_declare(ptr %11, !1894, !DIExpression(), !1895)
  store i32 %4, ptr %12, align 4
    #dbg_declare(ptr %12, !1896, !DIExpression(), !1897)
  store ptr %5, ptr %13, align 8
    #dbg_declare(ptr %13, !1898, !DIExpression(), !1899)
  %14 = load i32, ptr %10, align 4, !dbg !1900
  %15 = trunc i32 %14 to i16, !dbg !1901
  %16 = load ptr, ptr %11, align 8, !dbg !1902
  %17 = getelementptr inbounds nuw %struct.TIFFDirEntry, ptr %16, i32 0, i32 0, !dbg !1903
  store i16 %15, ptr %17, align 4, !dbg !1904
  %18 = load i32, ptr %9, align 4, !dbg !1905
  %19 = trunc i32 %18 to i16, !dbg !1906
  %20 = load ptr, ptr %11, align 8, !dbg !1907
  %21 = getelementptr inbounds nuw %struct.TIFFDirEntry, ptr %20, i32 0, i32 1, !dbg !1908
  store i16 %19, ptr %21, align 2, !dbg !1909
  %22 = load i32, ptr %12, align 4, !dbg !1910
  %23 = load ptr, ptr %11, align 8, !dbg !1911
  %24 = getelementptr inbounds nuw %struct.TIFFDirEntry, ptr %23, i32 0, i32 2, !dbg !1912
  store i32 %22, ptr %24, align 4, !dbg !1913
  %25 = load i32, ptr %12, align 4, !dbg !1914
  %26 = icmp ule i32 %25, 2, !dbg !1916
  br i1 %26, label %27, label %80, !dbg !1916

27:                                               ; preds = %6
  %28 = load ptr, ptr %8, align 8, !dbg !1917
  %29 = getelementptr inbounds nuw %struct.tiff, ptr %28, i32 0, i32 7, !dbg !1920
  %30 = getelementptr inbounds nuw %struct.TIFFHeader, ptr %29, i32 0, i32 0, !dbg !1921
  %31 = load i16, ptr %30, align 8, !dbg !1921
  %32 = zext i16 %31 to i32, !dbg !1917
  %33 = icmp eq i32 %32, 19789, !dbg !1922
  br i1 %33, label %34, label %56, !dbg !1922

34:                                               ; preds = %27
  %35 = load ptr, ptr %13, align 8, !dbg !1923
  %36 = getelementptr inbounds i16, ptr %35, i64 0, !dbg !1923
  %37 = load i16, ptr %36, align 2, !dbg !1923
  %38 = zext i16 %37 to i64, !dbg !1925
  %39 = shl i64 %38, 16, !dbg !1926
  %40 = trunc i64 %39 to i32, !dbg !1927
  %41 = load ptr, ptr %11, align 8, !dbg !1928
  %42 = getelementptr inbounds nuw %struct.TIFFDirEntry, ptr %41, i32 0, i32 3, !dbg !1929
  store i32 %40, ptr %42, align 4, !dbg !1930
  %43 = load i32, ptr %12, align 4, !dbg !1931
  %44 = icmp eq i32 %43, 2, !dbg !1933
  br i1 %44, label %45, label %55, !dbg !1933

45:                                               ; preds = %34
  %46 = load ptr, ptr %13, align 8, !dbg !1934
  %47 = getelementptr inbounds i16, ptr %46, i64 1, !dbg !1934
  %48 = load i16, ptr %47, align 2, !dbg !1934
  %49 = zext i16 %48 to i32, !dbg !1934
  %50 = and i32 %49, 65535, !dbg !1935
  %51 = load ptr, ptr %11, align 8, !dbg !1936
  %52 = getelementptr inbounds nuw %struct.TIFFDirEntry, ptr %51, i32 0, i32 3, !dbg !1937
  %53 = load i32, ptr %52, align 4, !dbg !1938
  %54 = or i32 %53, %50, !dbg !1938
  store i32 %54, ptr %52, align 4, !dbg !1938
  br label %55, !dbg !1936

55:                                               ; preds = %45, %34
  br label %79, !dbg !1939

56:                                               ; preds = %27
  %57 = load ptr, ptr %13, align 8, !dbg !1940
  %58 = getelementptr inbounds i16, ptr %57, i64 0, !dbg !1940
  %59 = load i16, ptr %58, align 2, !dbg !1940
  %60 = zext i16 %59 to i32, !dbg !1940
  %61 = and i32 %60, 65535, !dbg !1942
  %62 = load ptr, ptr %11, align 8, !dbg !1943
  %63 = getelementptr inbounds nuw %struct.TIFFDirEntry, ptr %62, i32 0, i32 3, !dbg !1944
  store i32 %61, ptr %63, align 4, !dbg !1945
  %64 = load i32, ptr %12, align 4, !dbg !1946
  %65 = icmp eq i32 %64, 2, !dbg !1948
  br i1 %65, label %66, label %78, !dbg !1948

66:                                               ; preds = %56
  %67 = load ptr, ptr %13, align 8, !dbg !1949
  %68 = getelementptr inbounds i16, ptr %67, i64 1, !dbg !1949
  %69 = load i16, ptr %68, align 2, !dbg !1949
  %70 = zext i16 %69 to i64, !dbg !1950
  %71 = shl i64 %70, 16, !dbg !1951
  %72 = load ptr, ptr %11, align 8, !dbg !1952
  %73 = getelementptr inbounds nuw %struct.TIFFDirEntry, ptr %72, i32 0, i32 3, !dbg !1953
  %74 = load i32, ptr %73, align 4, !dbg !1954
  %75 = zext i32 %74 to i64, !dbg !1954
  %76 = or i64 %75, %71, !dbg !1954
  %77 = trunc i64 %76 to i32, !dbg !1954
  store i32 %77, ptr %73, align 4, !dbg !1954
  br label %78, !dbg !1952

78:                                               ; preds = %66, %56
  br label %79

79:                                               ; preds = %78, %55
  store i32 1, ptr %7, align 4, !dbg !1955
  br label %85, !dbg !1955

80:                                               ; preds = %6
  %81 = load ptr, ptr %8, align 8, !dbg !1956
  %82 = load ptr, ptr %11, align 8, !dbg !1957
  %83 = load ptr, ptr %13, align 8, !dbg !1958
  %84 = call i32 @TIFFWriteData(ptr noundef %81, ptr noundef %82, ptr noundef %83), !dbg !1959
  store i32 %84, ptr %7, align 4, !dbg !1960
  br label %85, !dbg !1960

85:                                               ; preds = %80, %79
  %86 = load i32, ptr %7, align 4, !dbg !1961
  ret i32 %86, !dbg !1961
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @TIFFWriteFloatArray(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) #0 !dbg !1962 {
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca ptr, align 8
  store ptr %0, ptr %8, align 8
    #dbg_declare(ptr %8, !1963, !DIExpression(), !1964)
  store i32 %1, ptr %9, align 4
    #dbg_declare(ptr %9, !1965, !DIExpression(), !1966)
  store i32 %2, ptr %10, align 4
    #dbg_declare(ptr %10, !1967, !DIExpression(), !1968)
  store ptr %3, ptr %11, align 8
    #dbg_declare(ptr %11, !1969, !DIExpression(), !1970)
  store i32 %4, ptr %12, align 4
    #dbg_declare(ptr %12, !1971, !DIExpression(), !1972)
  store ptr %5, ptr %13, align 8
    #dbg_declare(ptr %13, !1973, !DIExpression(), !1974)
  %14 = load i32, ptr %10, align 4, !dbg !1975
  %15 = trunc i32 %14 to i16, !dbg !1976
  %16 = load ptr, ptr %11, align 8, !dbg !1977
  %17 = getelementptr inbounds nuw %struct.TIFFDirEntry, ptr %16, i32 0, i32 0, !dbg !1978
  store i16 %15, ptr %17, align 4, !dbg !1979
  %18 = load i32, ptr %9, align 4, !dbg !1980
  %19 = trunc i32 %18 to i16, !dbg !1981
  %20 = load ptr, ptr %11, align 8, !dbg !1982
  %21 = getelementptr inbounds nuw %struct.TIFFDirEntry, ptr %20, i32 0, i32 1, !dbg !1983
  store i16 %19, ptr %21, align 2, !dbg !1984
  %22 = load i32, ptr %12, align 4, !dbg !1985
  %23 = load ptr, ptr %11, align 8, !dbg !1986
  %24 = getelementptr inbounds nuw %struct.TIFFDirEntry, ptr %23, i32 0, i32 2, !dbg !1987
  store i32 %22, ptr %24, align 4, !dbg !1988
  %25 = load i32, ptr %12, align 4, !dbg !1989
  %26 = icmp eq i32 %25, 1, !dbg !1991
  br i1 %26, label %27, label %33, !dbg !1991

27:                                               ; preds = %6
  %28 = load ptr, ptr %13, align 8, !dbg !1992
  %29 = getelementptr inbounds float, ptr %28, i64 0, !dbg !1992
  %30 = load i32, ptr %29, align 4, !dbg !1994
  %31 = load ptr, ptr %11, align 8, !dbg !1995
  %32 = getelementptr inbounds nuw %struct.TIFFDirEntry, ptr %31, i32 0, i32 3, !dbg !1996
  store i32 %30, ptr %32, align 4, !dbg !1997
  store i32 1, ptr %7, align 4, !dbg !1998
  br label %38, !dbg !1998

33:                                               ; preds = %6
  %34 = load ptr, ptr %8, align 8, !dbg !1999
  %35 = load ptr, ptr %11, align 8, !dbg !2000
  %36 = load ptr, ptr %13, align 8, !dbg !2001
  %37 = call i32 @TIFFWriteData(ptr noundef %34, ptr noundef %35, ptr noundef %36), !dbg !2002
  store i32 %37, ptr %7, align 4, !dbg !2003
  br label %38, !dbg !2003

38:                                               ; preds = %33, %27
  %39 = load i32, ptr %7, align 4, !dbg !2004
  ret i32 %39, !dbg !2004
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @TIFFWriteDoubleArray(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) #0 !dbg !2005 {
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca ptr, align 8
  store ptr %0, ptr %7, align 8
    #dbg_declare(ptr %7, !2008, !DIExpression(), !2009)
  store i32 %1, ptr %8, align 4
    #dbg_declare(ptr %8, !2010, !DIExpression(), !2011)
  store i32 %2, ptr %9, align 4
    #dbg_declare(ptr %9, !2012, !DIExpression(), !2013)
  store ptr %3, ptr %10, align 8
    #dbg_declare(ptr %10, !2014, !DIExpression(), !2015)
  store i32 %4, ptr %11, align 4
    #dbg_declare(ptr %11, !2016, !DIExpression(), !2017)
  store ptr %5, ptr %12, align 8
    #dbg_declare(ptr %12, !2018, !DIExpression(), !2019)
  %13 = load i32, ptr %9, align 4, !dbg !2020
  %14 = trunc i32 %13 to i16, !dbg !2021
  %15 = load ptr, ptr %10, align 8, !dbg !2022
  %16 = getelementptr inbounds nuw %struct.TIFFDirEntry, ptr %15, i32 0, i32 0, !dbg !2023
  store i16 %14, ptr %16, align 4, !dbg !2024
  %17 = load i32, ptr %8, align 4, !dbg !2025
  %18 = trunc i32 %17 to i16, !dbg !2026
  %19 = load ptr, ptr %10, align 8, !dbg !2027
  %20 = getelementptr inbounds nuw %struct.TIFFDirEntry, ptr %19, i32 0, i32 1, !dbg !2028
  store i16 %18, ptr %20, align 2, !dbg !2029
  %21 = load i32, ptr %11, align 4, !dbg !2030
  %22 = load ptr, ptr %10, align 8, !dbg !2031
  %23 = getelementptr inbounds nuw %struct.TIFFDirEntry, ptr %22, i32 0, i32 2, !dbg !2032
  store i32 %21, ptr %23, align 4, !dbg !2033
  %24 = load ptr, ptr %7, align 8, !dbg !2034
  %25 = load ptr, ptr %10, align 8, !dbg !2035
  %26 = load ptr, ptr %12, align 8, !dbg !2036
  %27 = call i32 @TIFFWriteData(ptr noundef %24, ptr noundef %25, ptr noundef %26), !dbg !2037
  ret i32 %27, !dbg !2038
}

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @TIFFWriteByteArray(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !2039 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
    #dbg_declare(ptr %5, !2042, !DIExpression(), !2043)
  store ptr %1, ptr %6, align 8
    #dbg_declare(ptr %6, !2044, !DIExpression(), !2045)
  store ptr %2, ptr %7, align 8
    #dbg_declare(ptr %7, !2046, !DIExpression(), !2047)
  %8 = load ptr, ptr %6, align 8, !dbg !2048
  %9 = getelementptr inbounds nuw %struct.TIFFDirEntry, ptr %8, i32 0, i32 2, !dbg !2050
  %10 = load i32, ptr %9, align 4, !dbg !2050
  %11 = icmp ugt i32 %10, 4, !dbg !2051
  br i1 %11, label %12, label %20, !dbg !2051

12:                                               ; preds = %3
  %13 = load ptr, ptr %5, align 8, !dbg !2052
  %14 = load ptr, ptr %6, align 8, !dbg !2055
  %15 = load ptr, ptr %7, align 8, !dbg !2056
  %16 = call i32 @TIFFWriteData(ptr noundef %13, ptr noundef %14, ptr noundef %15), !dbg !2057
  %17 = icmp ne i32 %16, 0, !dbg !2057
  br i1 %17, label %19, label %18, !dbg !2058

18:                                               ; preds = %12
  store i32 0, ptr %4, align 4, !dbg !2059
  br label %28, !dbg !2059

19:                                               ; preds = %12
  br label %27, !dbg !2060

20:                                               ; preds = %3
  %21 = load ptr, ptr %6, align 8, !dbg !2061
  %22 = getelementptr inbounds nuw %struct.TIFFDirEntry, ptr %21, i32 0, i32 3, !dbg !2062
  %23 = load ptr, ptr %7, align 8, !dbg !2063
  %24 = load ptr, ptr %6, align 8, !dbg !2064
  %25 = getelementptr inbounds nuw %struct.TIFFDirEntry, ptr %24, i32 0, i32 2, !dbg !2065
  %26 = load i32, ptr %25, align 4, !dbg !2065
  call void @_TIFFmemcpy(ptr noundef %22, ptr noundef %23, i32 noundef %26), !dbg !2066
  br label %27

27:                                               ; preds = %20, %19
  store i32 1, ptr %4, align 4, !dbg !2067
  br label %28, !dbg !2067

28:                                               ; preds = %27, %18
  %29 = load i32, ptr %4, align 4, !dbg !2068
  ret i32 %29, !dbg !2068
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @TIFFWriteData(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !2069 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
    #dbg_declare(ptr %5, !2070, !DIExpression(), !2071)
  store ptr %1, ptr %6, align 8
    #dbg_declare(ptr %6, !2072, !DIExpression(), !2073)
  store ptr %2, ptr %7, align 8
    #dbg_declare(ptr %7, !2074, !DIExpression(), !2075)
    #dbg_declare(ptr %8, !2076, !DIExpression(), !2077)
  %9 = load ptr, ptr %5, align 8, !dbg !2078
  %10 = getelementptr inbounds nuw %struct.tiff, ptr %9, i32 0, i32 3, !dbg !2080
  %11 = load i32, ptr %10, align 8, !dbg !2080
  %12 = and i32 %11, 128, !dbg !2081
  %13 = icmp ne i32 %12, 0, !dbg !2081
  br i1 %13, label %14, label %45, !dbg !2081

14:                                               ; preds = %3
  %15 = load ptr, ptr %6, align 8, !dbg !2082
  %16 = getelementptr inbounds nuw %struct.TIFFDirEntry, ptr %15, i32 0, i32 1, !dbg !2084
  %17 = load i16, ptr %16, align 2, !dbg !2084
  %18 = zext i16 %17 to i32, !dbg !2082
  switch i32 %18, label %44 [
    i32 3, label %19
    i32 8, label %19
    i32 4, label %25
    i32 9, label %25
    i32 11, label %25
    i32 5, label %31
    i32 10, label %31
    i32 12, label %38
  ], !dbg !2085

19:                                               ; preds = %14, %14
  %20 = load ptr, ptr %7, align 8, !dbg !2086
  %21 = load ptr, ptr %6, align 8, !dbg !2088
  %22 = getelementptr inbounds nuw %struct.TIFFDirEntry, ptr %21, i32 0, i32 2, !dbg !2089
  %23 = load i32, ptr %22, align 4, !dbg !2089
  %24 = zext i32 %23 to i64, !dbg !2088
  call void @TIFFSwabArrayOfShort(ptr noundef %20, i64 noundef %24), !dbg !2090
  br label %44, !dbg !2091

25:                                               ; preds = %14, %14, %14
  %26 = load ptr, ptr %7, align 8, !dbg !2092
  %27 = load ptr, ptr %6, align 8, !dbg !2093
  %28 = getelementptr inbounds nuw %struct.TIFFDirEntry, ptr %27, i32 0, i32 2, !dbg !2094
  %29 = load i32, ptr %28, align 4, !dbg !2094
  %30 = zext i32 %29 to i64, !dbg !2093
  call void @TIFFSwabArrayOfLong(ptr noundef %26, i64 noundef %30), !dbg !2095
  br label %44, !dbg !2096

31:                                               ; preds = %14, %14
  %32 = load ptr, ptr %7, align 8, !dbg !2097
  %33 = load ptr, ptr %6, align 8, !dbg !2098
  %34 = getelementptr inbounds nuw %struct.TIFFDirEntry, ptr %33, i32 0, i32 2, !dbg !2099
  %35 = load i32, ptr %34, align 4, !dbg !2099
  %36 = mul i32 2, %35, !dbg !2100
  %37 = zext i32 %36 to i64, !dbg !2101
  call void @TIFFSwabArrayOfLong(ptr noundef %32, i64 noundef %37), !dbg !2102
  br label %44, !dbg !2103

38:                                               ; preds = %14
  %39 = load ptr, ptr %7, align 8, !dbg !2104
  %40 = load ptr, ptr %6, align 8, !dbg !2105
  %41 = getelementptr inbounds nuw %struct.TIFFDirEntry, ptr %40, i32 0, i32 2, !dbg !2106
  %42 = load i32, ptr %41, align 4, !dbg !2106
  %43 = zext i32 %42 to i64, !dbg !2105
  call void @TIFFSwabArrayOfDouble(ptr noundef %39, i64 noundef %43), !dbg !2107
  br label %44, !dbg !2108

44:                                               ; preds = %14, %38, %31, %25, %19
  br label %45, !dbg !2109

45:                                               ; preds = %44, %3
  %46 = load ptr, ptr %5, align 8, !dbg !2110
  %47 = getelementptr inbounds nuw %struct.tiff, ptr %46, i32 0, i32 15, !dbg !2111
  %48 = load i32, ptr %47, align 8, !dbg !2111
  %49 = load ptr, ptr %6, align 8, !dbg !2112
  %50 = getelementptr inbounds nuw %struct.TIFFDirEntry, ptr %49, i32 0, i32 3, !dbg !2113
  store i32 %48, ptr %50, align 4, !dbg !2114
  %51 = load ptr, ptr %6, align 8, !dbg !2115
  %52 = getelementptr inbounds nuw %struct.TIFFDirEntry, ptr %51, i32 0, i32 2, !dbg !2116
  %53 = load i32, ptr %52, align 4, !dbg !2116
  %54 = load ptr, ptr %6, align 8, !dbg !2117
  %55 = getelementptr inbounds nuw %struct.TIFFDirEntry, ptr %54, i32 0, i32 1, !dbg !2118
  %56 = load i16, ptr %55, align 2, !dbg !2118
  %57 = zext i16 %56 to i64, !dbg !2119
  %58 = getelementptr inbounds nuw [0 x i32], ptr @tiffDataWidth, i64 0, i64 %57, !dbg !2119
  %59 = load i32, ptr %58, align 4, !dbg !2119
  %60 = mul i32 %53, %59, !dbg !2120
  store i32 %60, ptr %8, align 4, !dbg !2121
  %61 = load ptr, ptr %5, align 8, !dbg !2122
  %62 = getelementptr inbounds nuw %struct.tiff, ptr %61, i32 0, i32 51, !dbg !2122
  %63 = load ptr, ptr %62, align 8, !dbg !2122
  %64 = load ptr, ptr %5, align 8, !dbg !2122
  %65 = getelementptr inbounds nuw %struct.tiff, ptr %64, i32 0, i32 48, !dbg !2122
  %66 = load ptr, ptr %65, align 8, !dbg !2122
  %67 = load ptr, ptr %6, align 8, !dbg !2122
  %68 = getelementptr inbounds nuw %struct.TIFFDirEntry, ptr %67, i32 0, i32 3, !dbg !2122
  %69 = load i32, ptr %68, align 4, !dbg !2122
  %70 = call i32 %63(ptr noundef %66, i32 noundef %69, i32 noundef 0), !dbg !2122
  %71 = load ptr, ptr %6, align 8, !dbg !2122
  %72 = getelementptr inbounds nuw %struct.TIFFDirEntry, ptr %71, i32 0, i32 3, !dbg !2122
  %73 = load i32, ptr %72, align 4, !dbg !2122
  %74 = icmp eq i32 %70, %73, !dbg !2122
  br i1 %74, label %75, label %95, !dbg !2124

75:                                               ; preds = %45
  %76 = load ptr, ptr %5, align 8, !dbg !2125
  %77 = getelementptr inbounds nuw %struct.tiff, ptr %76, i32 0, i32 50, !dbg !2125
  %78 = load ptr, ptr %77, align 8, !dbg !2125
  %79 = load ptr, ptr %5, align 8, !dbg !2125
  %80 = getelementptr inbounds nuw %struct.tiff, ptr %79, i32 0, i32 48, !dbg !2125
  %81 = load ptr, ptr %80, align 8, !dbg !2125
  %82 = load ptr, ptr %7, align 8, !dbg !2125
  %83 = load i32, ptr %8, align 4, !dbg !2125
  %84 = call i32 %78(ptr noundef %81, ptr noundef %82, i32 noundef %83), !dbg !2125
  %85 = load i32, ptr %8, align 4, !dbg !2125
  %86 = icmp eq i32 %84, %85, !dbg !2125
  br i1 %86, label %87, label %95, !dbg !2124

87:                                               ; preds = %75
  %88 = load i32, ptr %8, align 4, !dbg !2126
  %89 = add nsw i32 %88, 1, !dbg !2128
  %90 = and i32 %89, -2, !dbg !2129
  %91 = load ptr, ptr %5, align 8, !dbg !2130
  %92 = getelementptr inbounds nuw %struct.tiff, ptr %91, i32 0, i32 15, !dbg !2131
  %93 = load i32, ptr %92, align 8, !dbg !2132
  %94 = add nsw i32 %93, %90, !dbg !2132
  store i32 %94, ptr %92, align 8, !dbg !2132
  store i32 1, ptr %4, align 4, !dbg !2133
  br label %107, !dbg !2133

95:                                               ; preds = %75, %45
  %96 = load ptr, ptr %5, align 8, !dbg !2134
  %97 = getelementptr inbounds nuw %struct.tiff, ptr %96, i32 0, i32 0, !dbg !2135
  %98 = load ptr, ptr %97, align 8, !dbg !2135
  %99 = load ptr, ptr %5, align 8, !dbg !2136
  %100 = load ptr, ptr %6, align 8, !dbg !2137
  %101 = getelementptr inbounds nuw %struct.TIFFDirEntry, ptr %100, i32 0, i32 0, !dbg !2138
  %102 = load i16, ptr %101, align 4, !dbg !2138
  %103 = zext i16 %102 to i32, !dbg !2137
  %104 = call ptr @_TIFFFieldWithTag(ptr noundef %99, i32 noundef %103), !dbg !2139
  %105 = getelementptr inbounds nuw %struct.TIFFFieldInfo, ptr %104, i32 0, i32 7, !dbg !2140
  %106 = load ptr, ptr %105, align 8, !dbg !2140
  call void (ptr, ptr, ...) @TIFFError(ptr noundef %98, ptr noundef @.str.6, ptr noundef %106), !dbg !2141
  store i32 0, ptr %4, align 4, !dbg !2142
  br label %107, !dbg !2142

107:                                              ; preds = %95, %87
  %108 = load i32, ptr %4, align 4, !dbg !2143
  ret i32 %108, !dbg !2143
}

declare void @TIFFSwabArrayOfDouble(ptr noundef, i64 noundef) #1

declare ptr @_TIFFFieldWithTag(ptr noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @TIFFWriteAnyArray(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) #0 !dbg !2144 {
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca ptr, align 8
  %14 = alloca [80 x i8], align 16
  %15 = alloca ptr, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca ptr, align 8
  %19 = alloca ptr, align 8
  %20 = alloca ptr, align 8
  %21 = alloca ptr, align 8
  %22 = alloca ptr, align 8
  %23 = alloca ptr, align 8
  %24 = alloca ptr, align 8
  store ptr %0, ptr %8, align 8
    #dbg_declare(ptr %8, !2145, !DIExpression(), !2146)
  store i32 %1, ptr %9, align 4
    #dbg_declare(ptr %9, !2147, !DIExpression(), !2148)
  store i32 %2, ptr %10, align 4
    #dbg_declare(ptr %10, !2149, !DIExpression(), !2150)
  store ptr %3, ptr %11, align 8
    #dbg_declare(ptr %11, !2151, !DIExpression(), !2152)
  store i32 %4, ptr %12, align 4
    #dbg_declare(ptr %12, !2153, !DIExpression(), !2154)
  store ptr %5, ptr %13, align 8
    #dbg_declare(ptr %13, !2155, !DIExpression(), !2156)
    #dbg_declare(ptr %14, !2157, !DIExpression(), !2161)
    #dbg_declare(ptr %15, !2162, !DIExpression(), !2163)
  %25 = getelementptr inbounds [80 x i8], ptr %14, i64 0, i64 0, !dbg !2164
  store ptr %25, ptr %15, align 8, !dbg !2163
    #dbg_declare(ptr %16, !2165, !DIExpression(), !2166)
    #dbg_declare(ptr %17, !2167, !DIExpression(), !2168)
  store i32 0, ptr %17, align 4, !dbg !2168
  %26 = load i32, ptr %12, align 4, !dbg !2169
  %27 = load i32, ptr %9, align 4, !dbg !2171
  %28 = zext i32 %27 to i64, !dbg !2172
  %29 = getelementptr inbounds nuw [0 x i32], ptr @tiffDataWidth, i64 0, i64 %28, !dbg !2172
  %30 = load i32, ptr %29, align 4, !dbg !2172
  %31 = mul i32 %26, %30, !dbg !2173
  %32 = zext i32 %31 to i64, !dbg !2169
  %33 = icmp ugt i64 %32, 80, !dbg !2174
  br i1 %33, label %34, label %42, !dbg !2174

34:                                               ; preds = %6
  %35 = load i32, ptr %12, align 4, !dbg !2175
  %36 = load i32, ptr %9, align 4, !dbg !2176
  %37 = zext i32 %36 to i64, !dbg !2177
  %38 = getelementptr inbounds nuw [0 x i32], ptr @tiffDataWidth, i64 0, i64 %37, !dbg !2177
  %39 = load i32, ptr %38, align 4, !dbg !2177
  %40 = mul i32 %35, %39, !dbg !2178
  %41 = call ptr @_TIFFmalloc(i32 noundef %40), !dbg !2179
  store ptr %41, ptr %15, align 8, !dbg !2180
  br label %42, !dbg !2181

42:                                               ; preds = %34, %6
  %43 = load i32, ptr %9, align 4, !dbg !2182
  switch i32 %43, label %285 [
    i32 1, label %44
    i32 6, label %83
    i32 3, label %122
    i32 8, label %153
    i32 4, label %184
    i32 9, label %215
    i32 11, label %246
    i32 12, label %277
  ], !dbg !2183

44:                                               ; preds = %42
    #dbg_declare(ptr %18, !2184, !DIExpression(), !2187)
  %45 = load ptr, ptr %15, align 8, !dbg !2188
  store ptr %45, ptr %18, align 8, !dbg !2187
  store i32 0, ptr %16, align 4, !dbg !2189
  br label %46, !dbg !2191

46:                                               ; preds = %61, %44
  %47 = load i32, ptr %16, align 4, !dbg !2192
  %48 = load i32, ptr %12, align 4, !dbg !2194
  %49 = icmp slt i32 %47, %48, !dbg !2195
  br i1 %49, label %50, label %64, !dbg !2196

50:                                               ; preds = %46
  %51 = load ptr, ptr %13, align 8, !dbg !2197
  %52 = load i32, ptr %16, align 4, !dbg !2198
  %53 = sext i32 %52 to i64, !dbg !2197
  %54 = getelementptr inbounds double, ptr %51, i64 %53, !dbg !2197
  %55 = load double, ptr %54, align 8, !dbg !2197
  %56 = fptoui double %55 to i8, !dbg !2199
  %57 = load ptr, ptr %18, align 8, !dbg !2200
  %58 = load i32, ptr %16, align 4, !dbg !2201
  %59 = sext i32 %58 to i64, !dbg !2200
  %60 = getelementptr inbounds i8, ptr %57, i64 %59, !dbg !2200
  store i8 %56, ptr %60, align 1, !dbg !2202
  br label %61, !dbg !2200

61:                                               ; preds = %50
  %62 = load i32, ptr %16, align 4, !dbg !2203
  %63 = add nsw i32 %62, 1, !dbg !2203
  store i32 %63, ptr %16, align 4, !dbg !2203
  br label %46, !dbg !2204, !llvm.loop !2205

64:                                               ; preds = %46
  %65 = load i32, ptr %10, align 4, !dbg !2207
  %66 = trunc i32 %65 to i16, !dbg !2208
  %67 = load ptr, ptr %11, align 8, !dbg !2209
  %68 = getelementptr inbounds nuw %struct.TIFFDirEntry, ptr %67, i32 0, i32 0, !dbg !2210
  store i16 %66, ptr %68, align 4, !dbg !2211
  %69 = load i32, ptr %9, align 4, !dbg !2212
  %70 = trunc i32 %69 to i16, !dbg !2213
  %71 = load ptr, ptr %11, align 8, !dbg !2214
  %72 = getelementptr inbounds nuw %struct.TIFFDirEntry, ptr %71, i32 0, i32 1, !dbg !2215
  store i16 %70, ptr %72, align 2, !dbg !2216
  %73 = load i32, ptr %12, align 4, !dbg !2217
  %74 = load ptr, ptr %11, align 8, !dbg !2218
  %75 = getelementptr inbounds nuw %struct.TIFFDirEntry, ptr %74, i32 0, i32 2, !dbg !2219
  store i32 %73, ptr %75, align 4, !dbg !2220
  %76 = load ptr, ptr %8, align 8, !dbg !2221
  %77 = load ptr, ptr %11, align 8, !dbg !2223
  %78 = load ptr, ptr %18, align 8, !dbg !2224
  %79 = call i32 @TIFFWriteByteArray(ptr noundef %76, ptr noundef %77, ptr noundef %78), !dbg !2225
  %80 = icmp ne i32 %79, 0, !dbg !2225
  br i1 %80, label %82, label %81, !dbg !2226

81:                                               ; preds = %64
  br label %287, !dbg !2227

82:                                               ; preds = %64
  br label %286, !dbg !2228

83:                                               ; preds = %42
    #dbg_declare(ptr %19, !2229, !DIExpression(), !2231)
  %84 = load ptr, ptr %15, align 8, !dbg !2232
  store ptr %84, ptr %19, align 8, !dbg !2231
  store i32 0, ptr %16, align 4, !dbg !2233
  br label %85, !dbg !2235

85:                                               ; preds = %100, %83
  %86 = load i32, ptr %16, align 4, !dbg !2236
  %87 = load i32, ptr %12, align 4, !dbg !2238
  %88 = icmp slt i32 %86, %87, !dbg !2239
  br i1 %88, label %89, label %103, !dbg !2240

89:                                               ; preds = %85
  %90 = load ptr, ptr %13, align 8, !dbg !2241
  %91 = load i32, ptr %16, align 4, !dbg !2242
  %92 = sext i32 %91 to i64, !dbg !2241
  %93 = getelementptr inbounds double, ptr %90, i64 %92, !dbg !2241
  %94 = load double, ptr %93, align 8, !dbg !2241
  %95 = fptosi double %94 to i8, !dbg !2243
  %96 = load ptr, ptr %19, align 8, !dbg !2244
  %97 = load i32, ptr %16, align 4, !dbg !2245
  %98 = sext i32 %97 to i64, !dbg !2244
  %99 = getelementptr inbounds i8, ptr %96, i64 %98, !dbg !2244
  store i8 %95, ptr %99, align 1, !dbg !2246
  br label %100, !dbg !2244

100:                                              ; preds = %89
  %101 = load i32, ptr %16, align 4, !dbg !2247
  %102 = add nsw i32 %101, 1, !dbg !2247
  store i32 %102, ptr %16, align 4, !dbg !2247
  br label %85, !dbg !2248, !llvm.loop !2249

103:                                              ; preds = %85
  %104 = load i32, ptr %10, align 4, !dbg !2251
  %105 = trunc i32 %104 to i16, !dbg !2252
  %106 = load ptr, ptr %11, align 8, !dbg !2253
  %107 = getelementptr inbounds nuw %struct.TIFFDirEntry, ptr %106, i32 0, i32 0, !dbg !2254
  store i16 %105, ptr %107, align 4, !dbg !2255
  %108 = load i32, ptr %9, align 4, !dbg !2256
  %109 = trunc i32 %108 to i16, !dbg !2257
  %110 = load ptr, ptr %11, align 8, !dbg !2258
  %111 = getelementptr inbounds nuw %struct.TIFFDirEntry, ptr %110, i32 0, i32 1, !dbg !2259
  store i16 %109, ptr %111, align 2, !dbg !2260
  %112 = load i32, ptr %12, align 4, !dbg !2261
  %113 = load ptr, ptr %11, align 8, !dbg !2262
  %114 = getelementptr inbounds nuw %struct.TIFFDirEntry, ptr %113, i32 0, i32 2, !dbg !2263
  store i32 %112, ptr %114, align 4, !dbg !2264
  %115 = load ptr, ptr %8, align 8, !dbg !2265
  %116 = load ptr, ptr %11, align 8, !dbg !2267
  %117 = load ptr, ptr %19, align 8, !dbg !2268
  %118 = call i32 @TIFFWriteByteArray(ptr noundef %115, ptr noundef %116, ptr noundef %117), !dbg !2269
  %119 = icmp ne i32 %118, 0, !dbg !2269
  br i1 %119, label %121, label %120, !dbg !2270

120:                                              ; preds = %103
  br label %287, !dbg !2271

121:                                              ; preds = %103
  br label %286, !dbg !2272

122:                                              ; preds = %42
    #dbg_declare(ptr %20, !2273, !DIExpression(), !2275)
  %123 = load ptr, ptr %15, align 8, !dbg !2276
  store ptr %123, ptr %20, align 8, !dbg !2275
  store i32 0, ptr %16, align 4, !dbg !2277
  br label %124, !dbg !2279

124:                                              ; preds = %139, %122
  %125 = load i32, ptr %16, align 4, !dbg !2280
  %126 = load i32, ptr %12, align 4, !dbg !2282
  %127 = icmp slt i32 %125, %126, !dbg !2283
  br i1 %127, label %128, label %142, !dbg !2284

128:                                              ; preds = %124
  %129 = load ptr, ptr %13, align 8, !dbg !2285
  %130 = load i32, ptr %16, align 4, !dbg !2286
  %131 = sext i32 %130 to i64, !dbg !2285
  %132 = getelementptr inbounds double, ptr %129, i64 %131, !dbg !2285
  %133 = load double, ptr %132, align 8, !dbg !2285
  %134 = fptoui double %133 to i16, !dbg !2287
  %135 = load ptr, ptr %20, align 8, !dbg !2288
  %136 = load i32, ptr %16, align 4, !dbg !2289
  %137 = sext i32 %136 to i64, !dbg !2288
  %138 = getelementptr inbounds i16, ptr %135, i64 %137, !dbg !2288
  store i16 %134, ptr %138, align 2, !dbg !2290
  br label %139, !dbg !2288

139:                                              ; preds = %128
  %140 = load i32, ptr %16, align 4, !dbg !2291
  %141 = add nsw i32 %140, 1, !dbg !2291
  store i32 %141, ptr %16, align 4, !dbg !2291
  br label %124, !dbg !2292, !llvm.loop !2293

142:                                              ; preds = %124
  %143 = load ptr, ptr %8, align 8, !dbg !2295
  %144 = load i32, ptr %9, align 4, !dbg !2297
  %145 = load i32, ptr %10, align 4, !dbg !2298
  %146 = load ptr, ptr %11, align 8, !dbg !2299
  %147 = load i32, ptr %12, align 4, !dbg !2300
  %148 = load ptr, ptr %20, align 8, !dbg !2301
  %149 = call i32 @TIFFWriteShortArray(ptr noundef %143, i32 noundef %144, i32 noundef %145, ptr noundef %146, i32 noundef %147, ptr noundef %148), !dbg !2302
  %150 = icmp ne i32 %149, 0, !dbg !2302
  br i1 %150, label %152, label %151, !dbg !2303

151:                                              ; preds = %142
  br label %287, !dbg !2304

152:                                              ; preds = %142
  br label %286, !dbg !2305

153:                                              ; preds = %42
    #dbg_declare(ptr %21, !2306, !DIExpression(), !2308)
  %154 = load ptr, ptr %15, align 8, !dbg !2309
  store ptr %154, ptr %21, align 8, !dbg !2308
  store i32 0, ptr %16, align 4, !dbg !2310
  br label %155, !dbg !2312

155:                                              ; preds = %170, %153
  %156 = load i32, ptr %16, align 4, !dbg !2313
  %157 = load i32, ptr %12, align 4, !dbg !2315
  %158 = icmp slt i32 %156, %157, !dbg !2316
  br i1 %158, label %159, label %173, !dbg !2317

159:                                              ; preds = %155
  %160 = load ptr, ptr %13, align 8, !dbg !2318
  %161 = load i32, ptr %16, align 4, !dbg !2319
  %162 = sext i32 %161 to i64, !dbg !2318
  %163 = getelementptr inbounds double, ptr %160, i64 %162, !dbg !2318
  %164 = load double, ptr %163, align 8, !dbg !2318
  %165 = fptosi double %164 to i16, !dbg !2320
  %166 = load ptr, ptr %21, align 8, !dbg !2321
  %167 = load i32, ptr %16, align 4, !dbg !2322
  %168 = sext i32 %167 to i64, !dbg !2321
  %169 = getelementptr inbounds i16, ptr %166, i64 %168, !dbg !2321
  store i16 %165, ptr %169, align 2, !dbg !2323
  br label %170, !dbg !2321

170:                                              ; preds = %159
  %171 = load i32, ptr %16, align 4, !dbg !2324
  %172 = add nsw i32 %171, 1, !dbg !2324
  store i32 %172, ptr %16, align 4, !dbg !2324
  br label %155, !dbg !2325, !llvm.loop !2326

173:                                              ; preds = %155
  %174 = load ptr, ptr %8, align 8, !dbg !2328
  %175 = load i32, ptr %9, align 4, !dbg !2330
  %176 = load i32, ptr %10, align 4, !dbg !2331
  %177 = load ptr, ptr %11, align 8, !dbg !2332
  %178 = load i32, ptr %12, align 4, !dbg !2333
  %179 = load ptr, ptr %21, align 8, !dbg !2334
  %180 = call i32 @TIFFWriteShortArray(ptr noundef %174, i32 noundef %175, i32 noundef %176, ptr noundef %177, i32 noundef %178, ptr noundef %179), !dbg !2335
  %181 = icmp ne i32 %180, 0, !dbg !2335
  br i1 %181, label %183, label %182, !dbg !2336

182:                                              ; preds = %173
  br label %287, !dbg !2337

183:                                              ; preds = %173
  br label %286, !dbg !2338

184:                                              ; preds = %42
    #dbg_declare(ptr %22, !2339, !DIExpression(), !2341)
  %185 = load ptr, ptr %15, align 8, !dbg !2342
  store ptr %185, ptr %22, align 8, !dbg !2341
  store i32 0, ptr %16, align 4, !dbg !2343
  br label %186, !dbg !2345

186:                                              ; preds = %201, %184
  %187 = load i32, ptr %16, align 4, !dbg !2346
  %188 = load i32, ptr %12, align 4, !dbg !2348
  %189 = icmp slt i32 %187, %188, !dbg !2349
  br i1 %189, label %190, label %204, !dbg !2350

190:                                              ; preds = %186
  %191 = load ptr, ptr %13, align 8, !dbg !2351
  %192 = load i32, ptr %16, align 4, !dbg !2352
  %193 = sext i32 %192 to i64, !dbg !2351
  %194 = getelementptr inbounds double, ptr %191, i64 %193, !dbg !2351
  %195 = load double, ptr %194, align 8, !dbg !2351
  %196 = fptoui double %195 to i32, !dbg !2353
  %197 = load ptr, ptr %22, align 8, !dbg !2354
  %198 = load i32, ptr %16, align 4, !dbg !2355
  %199 = sext i32 %198 to i64, !dbg !2354
  %200 = getelementptr inbounds i32, ptr %197, i64 %199, !dbg !2354
  store i32 %196, ptr %200, align 4, !dbg !2356
  br label %201, !dbg !2354

201:                                              ; preds = %190
  %202 = load i32, ptr %16, align 4, !dbg !2357
  %203 = add nsw i32 %202, 1, !dbg !2357
  store i32 %203, ptr %16, align 4, !dbg !2357
  br label %186, !dbg !2358, !llvm.loop !2359

204:                                              ; preds = %186
  %205 = load ptr, ptr %8, align 8, !dbg !2361
  %206 = load i32, ptr %9, align 4, !dbg !2363
  %207 = load i32, ptr %10, align 4, !dbg !2364
  %208 = load ptr, ptr %11, align 8, !dbg !2365
  %209 = load i32, ptr %12, align 4, !dbg !2366
  %210 = load ptr, ptr %22, align 8, !dbg !2367
  %211 = call i32 @TIFFWriteLongArray(ptr noundef %205, i32 noundef %206, i32 noundef %207, ptr noundef %208, i32 noundef %209, ptr noundef %210), !dbg !2368
  %212 = icmp ne i32 %211, 0, !dbg !2368
  br i1 %212, label %214, label %213, !dbg !2369

213:                                              ; preds = %204
  br label %287, !dbg !2370

214:                                              ; preds = %204
  br label %286, !dbg !2371

215:                                              ; preds = %42
    #dbg_declare(ptr %23, !2372, !DIExpression(), !2374)
  %216 = load ptr, ptr %15, align 8, !dbg !2375
  store ptr %216, ptr %23, align 8, !dbg !2374
  store i32 0, ptr %16, align 4, !dbg !2376
  br label %217, !dbg !2378

217:                                              ; preds = %232, %215
  %218 = load i32, ptr %16, align 4, !dbg !2379
  %219 = load i32, ptr %12, align 4, !dbg !2381
  %220 = icmp slt i32 %218, %219, !dbg !2382
  br i1 %220, label %221, label %235, !dbg !2383

221:                                              ; preds = %217
  %222 = load ptr, ptr %13, align 8, !dbg !2384
  %223 = load i32, ptr %16, align 4, !dbg !2385
  %224 = sext i32 %223 to i64, !dbg !2384
  %225 = getelementptr inbounds double, ptr %222, i64 %224, !dbg !2384
  %226 = load double, ptr %225, align 8, !dbg !2384
  %227 = fptosi double %226 to i32, !dbg !2386
  %228 = load ptr, ptr %23, align 8, !dbg !2387
  %229 = load i32, ptr %16, align 4, !dbg !2388
  %230 = sext i32 %229 to i64, !dbg !2387
  %231 = getelementptr inbounds i32, ptr %228, i64 %230, !dbg !2387
  store i32 %227, ptr %231, align 4, !dbg !2389
  br label %232, !dbg !2387

232:                                              ; preds = %221
  %233 = load i32, ptr %16, align 4, !dbg !2390
  %234 = add nsw i32 %233, 1, !dbg !2390
  store i32 %234, ptr %16, align 4, !dbg !2390
  br label %217, !dbg !2391, !llvm.loop !2392

235:                                              ; preds = %217
  %236 = load ptr, ptr %8, align 8, !dbg !2394
  %237 = load i32, ptr %9, align 4, !dbg !2396
  %238 = load i32, ptr %10, align 4, !dbg !2397
  %239 = load ptr, ptr %11, align 8, !dbg !2398
  %240 = load i32, ptr %12, align 4, !dbg !2399
  %241 = load ptr, ptr %23, align 8, !dbg !2400
  %242 = call i32 @TIFFWriteLongArray(ptr noundef %236, i32 noundef %237, i32 noundef %238, ptr noundef %239, i32 noundef %240, ptr noundef %241), !dbg !2401
  %243 = icmp ne i32 %242, 0, !dbg !2401
  br i1 %243, label %245, label %244, !dbg !2402

244:                                              ; preds = %235
  br label %287, !dbg !2403

245:                                              ; preds = %235
  br label %286, !dbg !2404

246:                                              ; preds = %42
    #dbg_declare(ptr %24, !2405, !DIExpression(), !2407)
  %247 = load ptr, ptr %15, align 8, !dbg !2408
  store ptr %247, ptr %24, align 8, !dbg !2407
  store i32 0, ptr %16, align 4, !dbg !2409
  br label %248, !dbg !2411

248:                                              ; preds = %263, %246
  %249 = load i32, ptr %16, align 4, !dbg !2412
  %250 = load i32, ptr %12, align 4, !dbg !2414
  %251 = icmp slt i32 %249, %250, !dbg !2415
  br i1 %251, label %252, label %266, !dbg !2416

252:                                              ; preds = %248
  %253 = load ptr, ptr %13, align 8, !dbg !2417
  %254 = load i32, ptr %16, align 4, !dbg !2418
  %255 = sext i32 %254 to i64, !dbg !2417
  %256 = getelementptr inbounds double, ptr %253, i64 %255, !dbg !2417
  %257 = load double, ptr %256, align 8, !dbg !2417
  %258 = fptrunc double %257 to float, !dbg !2419
  %259 = load ptr, ptr %24, align 8, !dbg !2420
  %260 = load i32, ptr %16, align 4, !dbg !2421
  %261 = sext i32 %260 to i64, !dbg !2420
  %262 = getelementptr inbounds float, ptr %259, i64 %261, !dbg !2420
  store float %258, ptr %262, align 4, !dbg !2422
  br label %263, !dbg !2420

263:                                              ; preds = %252
  %264 = load i32, ptr %16, align 4, !dbg !2423
  %265 = add nsw i32 %264, 1, !dbg !2423
  store i32 %265, ptr %16, align 4, !dbg !2423
  br label %248, !dbg !2424, !llvm.loop !2425

266:                                              ; preds = %248
  %267 = load ptr, ptr %8, align 8, !dbg !2427
  %268 = load i32, ptr %9, align 4, !dbg !2429
  %269 = load i32, ptr %10, align 4, !dbg !2430
  %270 = load ptr, ptr %11, align 8, !dbg !2431
  %271 = load i32, ptr %12, align 4, !dbg !2432
  %272 = load ptr, ptr %24, align 8, !dbg !2433
  %273 = call i32 @TIFFWriteFloatArray(ptr noundef %267, i32 noundef %268, i32 noundef %269, ptr noundef %270, i32 noundef %271, ptr noundef %272), !dbg !2434
  %274 = icmp ne i32 %273, 0, !dbg !2434
  br i1 %274, label %276, label %275, !dbg !2435

275:                                              ; preds = %266
  br label %287, !dbg !2436

276:                                              ; preds = %266
  br label %286, !dbg !2437

277:                                              ; preds = %42
  %278 = load ptr, ptr %8, align 8, !dbg !2438
  %279 = load i32, ptr %9, align 4, !dbg !2439
  %280 = load i32, ptr %10, align 4, !dbg !2440
  %281 = load ptr, ptr %11, align 8, !dbg !2441
  %282 = load i32, ptr %12, align 4, !dbg !2442
  %283 = load ptr, ptr %13, align 8, !dbg !2443
  %284 = call i32 @TIFFWriteDoubleArray(ptr noundef %278, i32 noundef %279, i32 noundef %280, ptr noundef %281, i32 noundef %282, ptr noundef %283), !dbg !2444
  store i32 %284, ptr %7, align 4, !dbg !2445
  br label %295, !dbg !2445

285:                                              ; preds = %42
  br label %287, !dbg !2446

286:                                              ; preds = %276, %245, %214, %183, %152, %121, %82
  store i32 1, ptr %17, align 4, !dbg !2447
  br label %287, !dbg !2448

287:                                              ; preds = %286, %285, %275, %244, %213, %182, %151, %120, %81
    #dbg_label(!2449, !2450)
  %288 = load ptr, ptr %15, align 8, !dbg !2451
  %289 = getelementptr inbounds [80 x i8], ptr %14, i64 0, i64 0, !dbg !2453
  %290 = icmp ne ptr %288, %289, !dbg !2454
  br i1 %290, label %291, label %293, !dbg !2454

291:                                              ; preds = %287
  %292 = load ptr, ptr %15, align 8, !dbg !2455
  call void @_TIFFfree(ptr noundef %292), !dbg !2456
  br label %293, !dbg !2456

293:                                              ; preds = %291, %287
  %294 = load i32, ptr %17, align 4, !dbg !2457
  store i32 %294, ptr %7, align 4, !dbg !2458
  br label %295, !dbg !2458

295:                                              ; preds = %293, %277
  %296 = load i32, ptr %7, align 4, !dbg !2459
  ret i32 %296, !dbg !2459
}

declare void @TIFFWarning(ptr noundef, ptr noundef, ...) #1

declare i32 @_TIFFmemcmp(ptr noundef, ptr noundef, i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) }

!llvm.dbg.cu = !{!399}
!llvm.module.flags = !{!442, !443, !444, !445, !446, !447, !448}
!llvm.ident = !{!449}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 115, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "cBench/consumer_tiff2bw/src/tif_dirwrite.c", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "d4e4304231b6ab523ea7144fc7aa3af4")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 344, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 43)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 126, type: !3, isLocal: true, isDefinition: true)
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(scope: null, file: !2, line: 150, type: !11, isLocal: true, isDefinition: true)
!11 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 296, elements: !12)
!12 = !{!13}
!13 = !DISubrange(count: 37)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(scope: null, file: !2, line: 342, type: !16, isLocal: true, isDefinition: true)
!16 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !17)
!17 = !{!18}
!18 = !DISubrange(count: 30)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(scope: null, file: !2, line: 346, type: !21, isLocal: true, isDefinition: true)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, elements: !22)
!22 = !{!23}
!23 = !DISubrange(count: 33)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(scope: null, file: !2, line: 350, type: !26, isLocal: true, isDefinition: true)
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !27)
!27 = !{!28}
!28 = !DISubrange(count: 29)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(scope: null, file: !2, line: 940, type: !31, isLocal: true, isDefinition: true)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !32)
!32 = !{!33}
!33 = !DISubrange(count: 34)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(scope: null, file: !2, line: 723, type: !36, isLocal: true, isDefinition: true)
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 520, elements: !37)
!37 = !{!38}
!38 = !DISubrange(count: 65)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(name: "module", scope: !41, file: !2, line: 952, type: !438, isLocal: true, isDefinition: true)
!41 = distinct !DISubprogram(name: "TIFFLinkDirectory", scope: !2, file: !2, line: 950, type: !42, scopeLine: 951, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, retainedNodes: !437)
!42 = !DISubroutineType(types: !43)
!43 = !{!44, !45}
!44 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "TIFF", file: !47, line: 48, baseType: !48)
!47 = !DIFile(filename: "cBench/consumer_tiff2bw/src/tiffio.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "881752c035a7937b11611441903a05b9")
!48 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tiff", file: !49, line: 70, size: 7040, elements: !50)
!49 = !DIFile(filename: "cBench/consumer_tiff2bw/src/tiffiop.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "6324af1ca1eb1b70648c0ebf381681c1")
!50 = !{!51, !53, !54, !55, !59, !62, !63, !163, !170, !175, !178, !182, !183, !185, !186, !187, !188, !189, !190, !191, !193, !195, !198, !204, !205, !206, !207, !212, !213, !214, !215, !216, !217, !222, !227, !228, !233, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !256, !261, !262, !267, !268, !273, !278, !283, !288, !324, !325, !337, !339}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "tif_name", scope: !48, file: !49, line: 71, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "tif_fd", scope: !48, file: !49, line: 72, baseType: !44, size: 32, offset: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "tif_mode", scope: !48, file: !49, line: 73, baseType: !44, size: 32, offset: 96)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "tif_flags", scope: !48, file: !49, line: 74, baseType: !56, size: 32, offset: 128)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !57, line: 66, baseType: !58)
!57 = !DIFile(filename: "cBench/consumer_tiff2bw/src/tiff.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "481b1fc81ef74ff952bf85d3f2d42aca")
!58 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "tif_diroff", scope: !48, file: !49, line: 90, baseType: !60, size: 32, offset: 160)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "toff_t", file: !47, line: 75, baseType: !61)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32", file: !57, line: 65, baseType: !44)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "tif_nextdiroff", scope: !48, file: !49, line: 91, baseType: !60, size: 32, offset: 192)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "tif_dir", scope: !48, file: !49, line: 92, baseType: !64, size: 3776, offset: 256)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "TIFFDirectory", file: !65, line: 121, baseType: !66)
!65 = !DIFile(filename: "cBench/consumer_tiff2bw/src/tif_dir.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "467bfe3104f8edda1690c4215d0ca70c")
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !65, line: 36, size: 3776, elements: !67)
!67 = !{!68, !77, !78, !79, !80, !81, !82, !83, !84, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !99, !100, !102, !103, !104, !105, !106, !107, !111, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !129, !130, !132, !133, !134, !135, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "td_fieldsset", scope: !66, file: !65, line: 39, baseType: !69, size: 192)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 192, elements: !75)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_long", file: !71, line: 36, baseType: !72)
!71 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_long", file: !73, line: 34, baseType: !74)
!73 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!74 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!75 = !{!76}
!76 = !DISubrange(count: 3)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "td_imagewidth", scope: !66, file: !65, line: 41, baseType: !56, size: 32, offset: 192)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "td_imagelength", scope: !66, file: !65, line: 41, baseType: !56, size: 32, offset: 224)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "td_imagedepth", scope: !66, file: !65, line: 41, baseType: !56, size: 32, offset: 256)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "td_tilewidth", scope: !66, file: !65, line: 42, baseType: !56, size: 32, offset: 288)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "td_tilelength", scope: !66, file: !65, line: 42, baseType: !56, size: 32, offset: 320)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "td_tiledepth", scope: !66, file: !65, line: 42, baseType: !56, size: 32, offset: 352)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "td_subfiletype", scope: !66, file: !65, line: 43, baseType: !56, size: 32, offset: 384)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "td_bitspersample", scope: !66, file: !65, line: 44, baseType: !85, size: 16, offset: 416)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16", file: !57, line: 62, baseType: !86)
!86 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "td_sampleformat", scope: !66, file: !65, line: 45, baseType: !85, size: 16, offset: 432)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "td_compression", scope: !66, file: !65, line: 46, baseType: !85, size: 16, offset: 448)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "td_photometric", scope: !66, file: !65, line: 47, baseType: !85, size: 16, offset: 464)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "td_threshholding", scope: !66, file: !65, line: 48, baseType: !85, size: 16, offset: 480)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "td_fillorder", scope: !66, file: !65, line: 49, baseType: !85, size: 16, offset: 496)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "td_orientation", scope: !66, file: !65, line: 50, baseType: !85, size: 16, offset: 512)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "td_samplesperpixel", scope: !66, file: !65, line: 51, baseType: !85, size: 16, offset: 528)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "td_rowsperstrip", scope: !66, file: !65, line: 52, baseType: !56, size: 32, offset: 544)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "td_minsamplevalue", scope: !66, file: !65, line: 53, baseType: !85, size: 16, offset: 576)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "td_maxsamplevalue", scope: !66, file: !65, line: 53, baseType: !85, size: 16, offset: 592)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "td_sminsamplevalue", scope: !66, file: !65, line: 54, baseType: !98, size: 64, offset: 640)
!98 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "td_smaxsamplevalue", scope: !66, file: !65, line: 54, baseType: !98, size: 64, offset: 704)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "td_xresolution", scope: !66, file: !65, line: 55, baseType: !101, size: 32, offset: 768)
!101 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "td_yresolution", scope: !66, file: !65, line: 55, baseType: !101, size: 32, offset: 800)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "td_resolutionunit", scope: !66, file: !65, line: 56, baseType: !85, size: 16, offset: 832)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "td_planarconfig", scope: !66, file: !65, line: 57, baseType: !85, size: 16, offset: 848)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "td_xposition", scope: !66, file: !65, line: 58, baseType: !101, size: 32, offset: 864)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "td_yposition", scope: !66, file: !65, line: 58, baseType: !101, size: 32, offset: 896)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "td_pagenumber", scope: !66, file: !65, line: 59, baseType: !108, size: 32, offset: 928)
!108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 32, elements: !109)
!109 = !{!110}
!110 = !DISubrange(count: 2)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "td_colormap", scope: !66, file: !65, line: 60, baseType: !112, size: 192, offset: 960)
!112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, size: 192, elements: !75)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "td_halftonehints", scope: !66, file: !65, line: 61, baseType: !108, size: 32, offset: 1152)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "td_extrasamples", scope: !66, file: !65, line: 62, baseType: !85, size: 16, offset: 1184)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "td_sampleinfo", scope: !66, file: !65, line: 63, baseType: !113, size: 64, offset: 1216)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "td_stonits", scope: !66, file: !65, line: 64, baseType: !98, size: 64, offset: 1280)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "td_documentname", scope: !66, file: !65, line: 65, baseType: !52, size: 64, offset: 1344)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "td_artist", scope: !66, file: !65, line: 66, baseType: !52, size: 64, offset: 1408)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "td_datetime", scope: !66, file: !65, line: 67, baseType: !52, size: 64, offset: 1472)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "td_hostcomputer", scope: !66, file: !65, line: 68, baseType: !52, size: 64, offset: 1536)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "td_imagedescription", scope: !66, file: !65, line: 69, baseType: !52, size: 64, offset: 1600)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "td_make", scope: !66, file: !65, line: 70, baseType: !52, size: 64, offset: 1664)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "td_model", scope: !66, file: !65, line: 71, baseType: !52, size: 64, offset: 1728)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "td_software", scope: !66, file: !65, line: 72, baseType: !52, size: 64, offset: 1792)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "td_pagename", scope: !66, file: !65, line: 73, baseType: !52, size: 64, offset: 1856)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "td_stripsperimage", scope: !66, file: !65, line: 74, baseType: !128, size: 32, offset: 1920)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "tstrip_t", file: !47, line: 71, baseType: !56)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "td_nstrips", scope: !66, file: !65, line: 75, baseType: !128, size: 32, offset: 1952)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "td_stripoffset", scope: !66, file: !65, line: 76, baseType: !131, size: 64, offset: 1984)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "td_stripbytecount", scope: !66, file: !65, line: 77, baseType: !131, size: 64, offset: 2048)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "td_nsubifd", scope: !66, file: !65, line: 79, baseType: !85, size: 16, offset: 2112)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "td_subifd", scope: !66, file: !65, line: 80, baseType: !131, size: 64, offset: 2176)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "td_ycbcrcoeffs", scope: !66, file: !65, line: 83, baseType: !136, size: 64, offset: 2240)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "td_ycbcrsubsampling", scope: !66, file: !65, line: 84, baseType: !108, size: 32, offset: 2304)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "td_ycbcrpositioning", scope: !66, file: !65, line: 85, baseType: !85, size: 16, offset: 2336)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "td_whitepoint", scope: !66, file: !65, line: 88, baseType: !136, size: 64, offset: 2368)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "td_primarychromas", scope: !66, file: !65, line: 89, baseType: !136, size: 64, offset: 2432)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "td_refblackwhite", scope: !66, file: !65, line: 90, baseType: !136, size: 64, offset: 2496)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "td_transferfunction", scope: !66, file: !65, line: 91, baseType: !112, size: 192, offset: 2560)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "td_inkset", scope: !66, file: !65, line: 94, baseType: !85, size: 16, offset: 2752)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "td_ninks", scope: !66, file: !65, line: 95, baseType: !85, size: 16, offset: 2768)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "td_dotrange", scope: !66, file: !65, line: 96, baseType: !108, size: 32, offset: 2784)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "td_inknameslen", scope: !66, file: !65, line: 97, baseType: !44, size: 32, offset: 2816)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "td_inknames", scope: !66, file: !65, line: 98, baseType: !52, size: 64, offset: 2880)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "td_targetprinter", scope: !66, file: !65, line: 99, baseType: !52, size: 64, offset: 2944)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "td_profileLength", scope: !66, file: !65, line: 102, baseType: !56, size: 32, offset: 3008)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "td_profileData", scope: !66, file: !65, line: 103, baseType: !151, size: 64, offset: 3072)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "td_photoshopLength", scope: !66, file: !65, line: 106, baseType: !56, size: 32, offset: 3136)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "td_photoshopData", scope: !66, file: !65, line: 107, baseType: !151, size: 64, offset: 3200)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "td_richtiffiptcLength", scope: !66, file: !65, line: 110, baseType: !56, size: 32, offset: 3264)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "td_richtiffiptcData", scope: !66, file: !65, line: 111, baseType: !151, size: 64, offset: 3328)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "td_imagefullwidth", scope: !66, file: !65, line: 114, baseType: !56, size: 32, offset: 3392)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "td_imagefulllength", scope: !66, file: !65, line: 114, baseType: !56, size: 32, offset: 3424)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "td_textureformat", scope: !66, file: !65, line: 115, baseType: !52, size: 64, offset: 3456)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "td_wrapmodes", scope: !66, file: !65, line: 116, baseType: !52, size: 64, offset: 3520)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "td_fovcot", scope: !66, file: !65, line: 117, baseType: !101, size: 32, offset: 3584)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "td_matrixWorldToScreen", scope: !66, file: !65, line: 118, baseType: !136, size: 64, offset: 3648)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "td_matrixWorldToCamera", scope: !66, file: !65, line: 119, baseType: !136, size: 64, offset: 3712)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "tif_header", scope: !48, file: !49, line: 93, baseType: !164, size: 64, offset: 4032)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "TIFFHeader", file: !57, line: 85, baseType: !165)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !57, line: 81, size: 64, elements: !166)
!166 = !{!167, !168, !169}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "tiff_magic", scope: !165, file: !57, line: 82, baseType: !85, size: 16)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "tiff_version", scope: !165, file: !57, line: 83, baseType: !85, size: 16, offset: 16)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "tiff_diroff", scope: !165, file: !57, line: 84, baseType: !56, size: 32, offset: 32)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "tif_clientdir", scope: !48, file: !49, line: 94, baseType: !171, size: 64, offset: 4096)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "tidata_t", file: !49, line: 56, baseType: !172)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "tidataval_t", file: !49, line: 55, baseType: !174)
!174 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "tif_typeshift", scope: !48, file: !49, line: 95, baseType: !176, size: 64, offset: 4160)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "tif_typemask", scope: !48, file: !49, line: 96, baseType: !179, size: 64, offset: 4224)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !181)
!181 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "tif_row", scope: !48, file: !49, line: 97, baseType: !56, size: 32, offset: 4288)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "tif_curdir", scope: !48, file: !49, line: 98, baseType: !184, size: 16, offset: 4320)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "tdir_t", file: !47, line: 69, baseType: !85)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "tif_curstrip", scope: !48, file: !49, line: 99, baseType: !128, size: 32, offset: 4352)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "tif_curoff", scope: !48, file: !49, line: 100, baseType: !60, size: 32, offset: 4384)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "tif_dataoff", scope: !48, file: !49, line: 101, baseType: !60, size: 32, offset: 4416)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "tif_nsubifd", scope: !48, file: !49, line: 103, baseType: !85, size: 16, offset: 4448)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "tif_subifdoff", scope: !48, file: !49, line: 104, baseType: !60, size: 32, offset: 4480)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "tif_col", scope: !48, file: !49, line: 107, baseType: !56, size: 32, offset: 4512)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "tif_curtile", scope: !48, file: !49, line: 108, baseType: !192, size: 32, offset: 4544)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "ttile_t", file: !47, line: 72, baseType: !56)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "tif_tilesize", scope: !48, file: !49, line: 109, baseType: !194, size: 32, offset: 4576)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "tsize_t", file: !47, line: 73, baseType: !61)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "tif_setupdecode", scope: !48, file: !49, line: 111, baseType: !196, size: 64, offset: 4608)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "TIFFBoolMethod", file: !49, line: 59, baseType: !197)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "tif_predecode", scope: !48, file: !49, line: 112, baseType: !199, size: 64, offset: 4672)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "TIFFPreMethod", file: !49, line: 60, baseType: !200)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = !DISubroutineType(types: !202)
!202 = !{!44, !45, !203}
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "tsample_t", file: !47, line: 70, baseType: !85)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "tif_setupencode", scope: !48, file: !49, line: 113, baseType: !196, size: 64, offset: 4736)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "tif_preencode", scope: !48, file: !49, line: 114, baseType: !199, size: 64, offset: 4800)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "tif_postencode", scope: !48, file: !49, line: 115, baseType: !196, size: 64, offset: 4864)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "tif_decoderow", scope: !48, file: !49, line: 116, baseType: !208, size: 64, offset: 4928)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "TIFFCodeMethod", file: !49, line: 61, baseType: !209)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = !DISubroutineType(types: !211)
!211 = !{!44, !45, !171, !194, !203}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "tif_encoderow", scope: !48, file: !49, line: 117, baseType: !208, size: 64, offset: 4992)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "tif_decodestrip", scope: !48, file: !49, line: 118, baseType: !208, size: 64, offset: 5056)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "tif_encodestrip", scope: !48, file: !49, line: 119, baseType: !208, size: 64, offset: 5120)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "tif_decodetile", scope: !48, file: !49, line: 120, baseType: !208, size: 64, offset: 5184)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "tif_encodetile", scope: !48, file: !49, line: 121, baseType: !208, size: 64, offset: 5248)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "tif_close", scope: !48, file: !49, line: 122, baseType: !218, size: 64, offset: 5312)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "TIFFVoidMethod", file: !49, line: 58, baseType: !219)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DISubroutineType(types: !221)
!221 = !{null, !45}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "tif_seek", scope: !48, file: !49, line: 123, baseType: !223, size: 64, offset: 5376)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "TIFFSeekMethod", file: !49, line: 62, baseType: !224)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = !DISubroutineType(types: !226)
!226 = !{!44, !45, !56}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "tif_cleanup", scope: !48, file: !49, line: 124, baseType: !218, size: 64, offset: 5440)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "tif_defstripsize", scope: !48, file: !49, line: 125, baseType: !229, size: 64, offset: 5504)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "TIFFStripMethod", file: !49, line: 67, baseType: !230)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = !DISubroutineType(types: !232)
!232 = !{!56, !45, !56}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "tif_deftilesize", scope: !48, file: !49, line: 126, baseType: !234, size: 64, offset: 5568)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "TIFFTileMethod", file: !49, line: 68, baseType: !235)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = !DISubroutineType(types: !237)
!237 = !{null, !45, !131, !131}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "tif_data", scope: !48, file: !49, line: 127, baseType: !171, size: 64, offset: 5632)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "tif_scanlinesize", scope: !48, file: !49, line: 129, baseType: !194, size: 32, offset: 5696)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "tif_scanlineskew", scope: !48, file: !49, line: 130, baseType: !194, size: 32, offset: 5728)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "tif_rawdata", scope: !48, file: !49, line: 131, baseType: !171, size: 64, offset: 5760)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "tif_rawdatasize", scope: !48, file: !49, line: 132, baseType: !194, size: 32, offset: 5824)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "tif_rawcp", scope: !48, file: !49, line: 133, baseType: !171, size: 64, offset: 5888)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "tif_rawcc", scope: !48, file: !49, line: 134, baseType: !194, size: 32, offset: 5952)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "tif_base", scope: !48, file: !49, line: 136, baseType: !171, size: 64, offset: 6016)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "tif_size", scope: !48, file: !49, line: 137, baseType: !60, size: 32, offset: 6080)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "tif_mapproc", scope: !48, file: !49, line: 138, baseType: !248, size: 64, offset: 6144)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "TIFFMapFileProc", file: !47, line: 206, baseType: !249)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = !DISubroutineType(types: !251)
!251 = !{!44, !252, !253, !255}
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "thandle_t", file: !47, line: 88, baseType: !151)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "tdata_t", file: !47, line: 74, baseType: !151)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "tif_unmapproc", scope: !48, file: !49, line: 139, baseType: !257, size: 64, offset: 6208)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "TIFFUnmapFileProc", file: !47, line: 207, baseType: !258)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DISubroutineType(types: !260)
!260 = !{null, !252, !254, !60}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "tif_clientdata", scope: !48, file: !49, line: 141, baseType: !252, size: 64, offset: 6272)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "tif_readproc", scope: !48, file: !49, line: 142, baseType: !263, size: 64, offset: 6336)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "TIFFReadWriteProc", file: !47, line: 202, baseType: !264)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DISubroutineType(types: !266)
!266 = !{!194, !252, !254, !194}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "tif_writeproc", scope: !48, file: !49, line: 143, baseType: !263, size: 64, offset: 6400)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "tif_seekproc", scope: !48, file: !49, line: 144, baseType: !269, size: 64, offset: 6464)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "TIFFSeekProc", file: !47, line: 203, baseType: !270)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = !DISubroutineType(types: !272)
!272 = !{!60, !252, !60, !44}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "tif_closeproc", scope: !48, file: !49, line: 145, baseType: !274, size: 64, offset: 6528)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "TIFFCloseProc", file: !47, line: 204, baseType: !275)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = !DISubroutineType(types: !277)
!277 = !{!44, !252}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "tif_sizeproc", scope: !48, file: !49, line: 146, baseType: !279, size: 64, offset: 6592)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "TIFFSizeProc", file: !47, line: 205, baseType: !280)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = !DISubroutineType(types: !282)
!282 = !{!60, !252}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "tif_postdecode", scope: !48, file: !49, line: 148, baseType: !284, size: 64, offset: 6656)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "TIFFPostMethod", file: !49, line: 63, baseType: !285)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = !DISubroutineType(types: !287)
!287 = !{null, !45, !171, !194}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "tif_fieldinfo", scope: !48, file: !49, line: 150, baseType: !289, size: 64, offset: 6720)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "TIFFFieldInfo", file: !65, line: 238, baseType: !292)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !65, line: 229, size: 192, elements: !293)
!293 = !{!294, !296, !298, !299, !316, !319, !322, !323}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "field_tag", scope: !292, file: !65, line: 230, baseType: !295, size: 32)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "ttag_t", file: !47, line: 68, baseType: !56)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "field_readcount", scope: !292, file: !65, line: 231, baseType: !297, size: 16, offset: 32)
!297 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "field_writecount", scope: !292, file: !65, line: 232, baseType: !297, size: 16, offset: 48)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "field_type", scope: !292, file: !65, line: 233, baseType: !300, size: 32, offset: 64)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "TIFFDataType", file: !57, line: 134, baseType: !301)
!301 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !57, line: 120, baseType: !58, size: 32, elements: !302)
!302 = !{!303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315}
!303 = !DIEnumerator(name: "TIFF_NOTYPE", value: 0)
!304 = !DIEnumerator(name: "TIFF_BYTE", value: 1)
!305 = !DIEnumerator(name: "TIFF_ASCII", value: 2)
!306 = !DIEnumerator(name: "TIFF_SHORT", value: 3)
!307 = !DIEnumerator(name: "TIFF_LONG", value: 4)
!308 = !DIEnumerator(name: "TIFF_RATIONAL", value: 5)
!309 = !DIEnumerator(name: "TIFF_SBYTE", value: 6)
!310 = !DIEnumerator(name: "TIFF_UNDEFINED", value: 7)
!311 = !DIEnumerator(name: "TIFF_SSHORT", value: 8)
!312 = !DIEnumerator(name: "TIFF_SLONG", value: 9)
!313 = !DIEnumerator(name: "TIFF_SRATIONAL", value: 10)
!314 = !DIEnumerator(name: "TIFF_FLOAT", value: 11)
!315 = !DIEnumerator(name: "TIFF_DOUBLE", value: 12)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "field_bit", scope: !292, file: !65, line: 234, baseType: !317, size: 16, offset: 96)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_short", file: !71, line: 34, baseType: !318)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_short", file: !73, line: 32, baseType: !86)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "field_oktochange", scope: !292, file: !65, line: 235, baseType: !320, size: 8, offset: 112)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_char", file: !71, line: 33, baseType: !321)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_char", file: !73, line: 31, baseType: !174)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "field_passcount", scope: !292, file: !65, line: 236, baseType: !320, size: 8, offset: 120)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "field_name", scope: !292, file: !65, line: 237, baseType: !52, size: 64, offset: 128)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "tif_nfields", scope: !48, file: !49, line: 151, baseType: !44, size: 32, offset: 6784)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "tif_vsetfield", scope: !48, file: !49, line: 152, baseType: !326, size: 64, offset: 6848)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "TIFFVSetMethod", file: !49, line: 64, baseType: !327)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = !DISubroutineType(types: !329)
!329 = !{!44, !45, !295, !330}
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !332)
!332 = !{!333, !334, !335, !336}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !331, file: !2, baseType: !58, size: 32)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !331, file: !2, baseType: !58, size: 32, offset: 32)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !331, file: !2, baseType: !151, size: 64, offset: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !331, file: !2, baseType: !151, size: 64, offset: 128)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "tif_vgetfield", scope: !48, file: !49, line: 153, baseType: !338, size: 64, offset: 6912)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "TIFFVGetMethod", file: !49, line: 65, baseType: !327)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "tif_printdir", scope: !48, file: !49, line: 154, baseType: !340, size: 64, offset: 6976)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "TIFFPrintMethod", file: !49, line: 66, baseType: !341)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = !DISubroutineType(types: !343)
!343 = !{null, !45, !344, !181}
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !346, line: 7, baseType: !347)
!346 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !348, line: 49, size: 1728, elements: !349)
!348 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!349 = !{!350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !365, !367, !368, !369, !371, !372, !374, !378, !381, !383, !386, !389, !390, !391, !394, !395}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !347, file: !348, line: 51, baseType: !44, size: 32)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !347, file: !348, line: 54, baseType: !52, size: 64, offset: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !347, file: !348, line: 55, baseType: !52, size: 64, offset: 128)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !347, file: !348, line: 56, baseType: !52, size: 64, offset: 192)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !347, file: !348, line: 57, baseType: !52, size: 64, offset: 256)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !347, file: !348, line: 58, baseType: !52, size: 64, offset: 320)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !347, file: !348, line: 59, baseType: !52, size: 64, offset: 384)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !347, file: !348, line: 60, baseType: !52, size: 64, offset: 448)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !347, file: !348, line: 61, baseType: !52, size: 64, offset: 512)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !347, file: !348, line: 64, baseType: !52, size: 64, offset: 576)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !347, file: !348, line: 65, baseType: !52, size: 64, offset: 640)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !347, file: !348, line: 66, baseType: !52, size: 64, offset: 704)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !347, file: !348, line: 68, baseType: !363, size: 64, offset: 768)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !348, line: 36, flags: DIFlagFwdDecl)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !347, file: !348, line: 70, baseType: !366, size: 64, offset: 832)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !347, file: !348, line: 72, baseType: !44, size: 32, offset: 896)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !347, file: !348, line: 73, baseType: !44, size: 32, offset: 928)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !347, file: !348, line: 74, baseType: !370, size: 64, offset: 960)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !73, line: 152, baseType: !181)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !347, file: !348, line: 77, baseType: !86, size: 16, offset: 1024)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !347, file: !348, line: 78, baseType: !373, size: 8, offset: 1040)
!373 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !347, file: !348, line: 79, baseType: !375, size: 8, offset: 1048)
!375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !376)
!376 = !{!377}
!377 = !DISubrange(count: 1)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !347, file: !348, line: 81, baseType: !379, size: 64, offset: 1088)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !348, line: 43, baseType: null)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !347, file: !348, line: 89, baseType: !382, size: 64, offset: 1152)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !73, line: 153, baseType: !181)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !347, file: !348, line: 91, baseType: !384, size: 64, offset: 1216)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !348, line: 37, flags: DIFlagFwdDecl)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !347, file: !348, line: 92, baseType: !387, size: 64, offset: 1280)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !348, line: 38, flags: DIFlagFwdDecl)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !347, file: !348, line: 93, baseType: !366, size: 64, offset: 1344)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !347, file: !348, line: 94, baseType: !151, size: 64, offset: 1408)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !347, file: !348, line: 95, baseType: !392, size: 64, offset: 1472)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !393, line: 18, baseType: !74)
!393 = !DIFile(filename: "/usr/local/lib/clang/20/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!394 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !347, file: !348, line: 96, baseType: !44, size: 32, offset: 1536)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !347, file: !348, line: 98, baseType: !396, size: 160, offset: 1568)
!396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !397)
!397 = !{!398}
!398 = !DISubrange(count: 20)
!399 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !400, retainedTypes: !401, globals: !419, splitDebugInlining: false, nameTableKind: None)
!400 = !{!301}
!401 = !{!70, !52, !151, !60, !402, !56, !85, !254, !194, !128, !317, !297, !181, !113, !131, !410, !44, !411, !412, !413, !414, !415, !416, !417, !61, !136, !101, !418}
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "TIFFDirEntry", file: !57, line: 105, baseType: !404)
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !57, line: 100, size: 96, elements: !405)
!405 = !{!406, !407, !408, !409}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "tdir_tag", scope: !404, file: !57, line: 101, baseType: !85, size: 16)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "tdir_type", scope: !404, file: !57, line: 102, baseType: !85, size: 16, offset: 16)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "tdir_count", scope: !404, file: !57, line: 103, baseType: !56, size: 32, offset: 32)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "tdir_offset", scope: !404, file: !57, line: 104, baseType: !56, size: 32, offset: 64)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8", file: !57, line: 60, baseType: !174)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8", file: !57, line: 56, baseType: !373)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16", file: !57, line: 61, baseType: !297)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!419 = !{!0, !7, !9, !14, !19, !24, !29, !34, !39, !420, !425, !430, !435}
!420 = !DIGlobalVariableExpression(var: !421, expr: !DIExpression())
!421 = distinct !DIGlobalVariable(scope: null, file: !2, line: 965, type: !422, isLocal: true, isDefinition: true)
!422 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !423)
!423 = !{!424}
!424 = !DISubrange(count: 40)
!425 = !DIGlobalVariableExpression(var: !426, expr: !DIExpression())
!426 = distinct !DIGlobalVariable(scope: null, file: !2, line: 989, type: !427, isLocal: true, isDefinition: true)
!427 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !428)
!428 = !{!429}
!429 = !DISubrange(count: 26)
!430 = !DIGlobalVariableExpression(var: !431, expr: !DIExpression())
!431 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1003, type: !432, isLocal: true, isDefinition: true)
!432 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !433)
!433 = !{!434}
!434 = !DISubrange(count: 31)
!435 = !DIGlobalVariableExpression(var: !436, expr: !DIExpression())
!436 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1011, type: !16, isLocal: true, isDefinition: true)
!437 = !{}
!438 = !DICompositeType(tag: DW_TAG_array_type, baseType: !439, size: 144, elements: !440)
!439 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!440 = !{!441}
!441 = !DISubrange(count: 18)
!442 = !{i32 7, !"Dwarf Version", i32 5}
!443 = !{i32 2, !"Debug Info Version", i32 3}
!444 = !{i32 1, !"wchar_size", i32 4}
!445 = !{i32 8, !"PIC Level", i32 2}
!446 = !{i32 7, !"PIE Level", i32 2}
!447 = !{i32 7, !"uwtable", i32 2}
!448 = !{i32 7, !"frame-pointer", i32 2}
!449 = !{!"clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)"}
!450 = distinct !DISubprogram(name: "TIFFWriteDirectory", scope: !2, file: !2, line: 91, type: !42, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !399, retainedNodes: !437)
!451 = !DILocalVariable(name: "tif", arg: 1, scope: !450, file: !2, line: 91, type: !45)
!452 = !DILocation(line: 91, column: 26, scope: !450)
!453 = !DILocalVariable(name: "dircount", scope: !450, file: !2, line: 93, type: !85)
!454 = !DILocation(line: 93, column: 9, scope: !450)
!455 = !DILocalVariable(name: "diroff", scope: !450, file: !2, line: 94, type: !56)
!456 = !DILocation(line: 94, column: 9, scope: !450)
!457 = !DILocalVariable(name: "tag", scope: !450, file: !2, line: 95, type: !295)
!458 = !DILocation(line: 95, column: 9, scope: !450)
!459 = !DILocalVariable(name: "nfields", scope: !450, file: !2, line: 96, type: !56)
!460 = !DILocation(line: 96, column: 9, scope: !450)
!461 = !DILocalVariable(name: "dirsize", scope: !450, file: !2, line: 97, type: !194)
!462 = !DILocation(line: 97, column: 10, scope: !450)
!463 = !DILocalVariable(name: "data", scope: !450, file: !2, line: 98, type: !52)
!464 = !DILocation(line: 98, column: 8, scope: !450)
!465 = !DILocalVariable(name: "dir", scope: !450, file: !2, line: 99, type: !402)
!466 = !DILocation(line: 99, column: 16, scope: !450)
!467 = !DILocalVariable(name: "td", scope: !450, file: !2, line: 100, type: !468)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!469 = !DILocation(line: 100, column: 17, scope: !450)
!470 = !DILocalVariable(name: "b", scope: !450, file: !2, line: 101, type: !70)
!471 = !DILocation(line: 101, column: 9, scope: !450)
!472 = !DILocalVariable(name: "fields", scope: !450, file: !2, line: 101, type: !69)
!473 = !DILocation(line: 101, column: 12, scope: !450)
!474 = !DILocalVariable(name: "fi", scope: !450, file: !2, line: 102, type: !44)
!475 = !DILocation(line: 102, column: 6, scope: !450)
!476 = !DILocalVariable(name: "nfi", scope: !450, file: !2, line: 102, type: !44)
!477 = !DILocation(line: 102, column: 10, scope: !450)
!478 = !DILocation(line: 104, column: 6, scope: !479)
!479 = distinct !DILexicalBlock(scope: !450, file: !2, line: 104, column: 6)
!480 = !DILocation(line: 104, column: 11, scope: !479)
!481 = !DILocation(line: 104, column: 20, scope: !479)
!482 = !DILocation(line: 105, column: 3, scope: !479)
!483 = !DILocation(line: 111, column: 6, scope: !484)
!484 = distinct !DILexicalBlock(scope: !450, file: !2, line: 111, column: 6)
!485 = !DILocation(line: 111, column: 11, scope: !484)
!486 = !DILocation(line: 111, column: 21, scope: !484)
!487 = !DILocation(line: 112, column: 3, scope: !488)
!488 = distinct !DILexicalBlock(scope: !484, file: !2, line: 111, column: 40)
!489 = !DILocation(line: 112, column: 8, scope: !488)
!490 = !DILocation(line: 112, column: 18, scope: !488)
!491 = !DILocation(line: 113, column: 10, scope: !492)
!492 = distinct !DILexicalBlock(scope: !488, file: !2, line: 113, column: 7)
!493 = !DILocation(line: 113, column: 15, scope: !492)
!494 = !DILocation(line: 113, column: 31, scope: !492)
!495 = !DILocation(line: 113, column: 8, scope: !492)
!496 = !DILocation(line: 113, column: 7, scope: !492)
!497 = !DILocation(line: 114, column: 14, scope: !498)
!498 = distinct !DILexicalBlock(scope: !492, file: !2, line: 113, column: 37)
!499 = !DILocation(line: 114, column: 19, scope: !498)
!500 = !DILocation(line: 114, column: 4, scope: !498)
!501 = !DILocation(line: 116, column: 4, scope: !498)
!502 = !DILocation(line: 118, column: 2, scope: !488)
!503 = !DILocation(line: 119, column: 4, scope: !450)
!504 = !DILocation(line: 119, column: 9, scope: !450)
!505 = !DILocation(line: 119, column: 20, scope: !450)
!506 = !DILocation(line: 119, column: 2, scope: !450)
!507 = !DILocation(line: 124, column: 6, scope: !508)
!508 = distinct !DILexicalBlock(scope: !450, file: !2, line: 124, column: 6)
!509 = !DILocation(line: 124, column: 11, scope: !508)
!510 = !DILocation(line: 124, column: 21, scope: !508)
!511 = !DILocation(line: 124, column: 25, scope: !508)
!512 = !DILocation(line: 124, column: 44, scope: !508)
!513 = !DILocation(line: 124, column: 29, scope: !508)
!514 = !DILocation(line: 125, column: 13, scope: !515)
!515 = distinct !DILexicalBlock(scope: !508, file: !2, line: 124, column: 50)
!516 = !DILocation(line: 125, column: 18, scope: !515)
!517 = !DILocation(line: 125, column: 3, scope: !515)
!518 = !DILocation(line: 127, column: 3, scope: !515)
!519 = !DILocation(line: 129, column: 7, scope: !520)
!520 = distinct !DILexicalBlock(scope: !450, file: !2, line: 129, column: 6)
!521 = !DILocation(line: 129, column: 12, scope: !520)
!522 = !DILocation(line: 129, column: 22, scope: !520)
!523 = !DILocation(line: 129, column: 39, scope: !520)
!524 = !DILocation(line: 129, column: 42, scope: !520)
!525 = !DILocation(line: 129, column: 47, scope: !520)
!526 = !DILocation(line: 130, column: 13, scope: !527)
!527 = distinct !DILexicalBlock(scope: !520, file: !2, line: 129, column: 60)
!528 = !DILocation(line: 130, column: 18, scope: !527)
!529 = !DILocation(line: 130, column: 3, scope: !527)
!530 = !DILocation(line: 131, column: 3, scope: !527)
!531 = !DILocation(line: 131, column: 8, scope: !527)
!532 = !DILocation(line: 131, column: 20, scope: !527)
!533 = !DILocation(line: 132, column: 3, scope: !527)
!534 = !DILocation(line: 132, column: 8, scope: !527)
!535 = !DILocation(line: 132, column: 18, scope: !527)
!536 = !DILocation(line: 133, column: 2, scope: !527)
!537 = !DILocation(line: 134, column: 2, scope: !450)
!538 = !DILocation(line: 134, column: 7, scope: !450)
!539 = !DILocation(line: 134, column: 17, scope: !450)
!540 = !DILocation(line: 136, column: 8, scope: !450)
!541 = !DILocation(line: 136, column: 13, scope: !450)
!542 = !DILocation(line: 136, column: 5, scope: !450)
!543 = !DILocation(line: 142, column: 10, scope: !450)
!544 = !DILocation(line: 143, column: 9, scope: !545)
!545 = distinct !DILexicalBlock(scope: !450, file: !2, line: 143, column: 2)
!546 = !DILocation(line: 143, column: 7, scope: !545)
!547 = !DILocation(line: 143, column: 14, scope: !548)
!548 = distinct !DILexicalBlock(scope: !545, file: !2, line: 143, column: 2)
!549 = !DILocation(line: 143, column: 16, scope: !548)
!550 = !DILocation(line: 143, column: 2, scope: !545)
!551 = !DILocation(line: 144, column: 7, scope: !552)
!552 = distinct !DILexicalBlock(scope: !548, file: !2, line: 144, column: 7)
!553 = !DILocation(line: 145, column: 16, scope: !552)
!554 = !DILocation(line: 145, column: 18, scope: !552)
!555 = !DILocation(line: 145, column: 12, scope: !552)
!556 = !DILocation(line: 145, column: 4, scope: !552)
!557 = !DILocation(line: 143, column: 32, scope: !548)
!558 = !DILocation(line: 143, column: 2, scope: !548)
!559 = distinct !{!559, !550, !560, !561}
!560 = !DILocation(line: 145, column: 45, scope: !545)
!561 = !{!"llvm.loop.mustprogress"}
!562 = !DILocation(line: 146, column: 12, scope: !450)
!563 = !DILocation(line: 146, column: 20, scope: !450)
!564 = !DILocation(line: 146, column: 10, scope: !450)
!565 = !DILocation(line: 147, column: 29, scope: !450)
!566 = !DILocation(line: 147, column: 17, scope: !450)
!567 = !DILocation(line: 147, column: 7, scope: !450)
!568 = !DILocation(line: 148, column: 6, scope: !569)
!569 = distinct !DILexicalBlock(scope: !450, file: !2, line: 148, column: 6)
!570 = !DILocation(line: 148, column: 11, scope: !569)
!571 = !DILocation(line: 149, column: 13, scope: !572)
!572 = distinct !DILexicalBlock(scope: !569, file: !2, line: 148, column: 20)
!573 = !DILocation(line: 149, column: 18, scope: !572)
!574 = !DILocation(line: 149, column: 3, scope: !572)
!575 = !DILocation(line: 151, column: 3, scope: !572)
!576 = !DILocation(line: 158, column: 6, scope: !577)
!577 = distinct !DILexicalBlock(scope: !450, file: !2, line: 158, column: 6)
!578 = !DILocation(line: 158, column: 11, scope: !577)
!579 = !DILocation(line: 158, column: 22, scope: !577)
!580 = !DILocation(line: 158, column: 27, scope: !577)
!581 = !DILocation(line: 158, column: 49, scope: !577)
!582 = !DILocation(line: 158, column: 31, scope: !577)
!583 = !DILocation(line: 159, column: 3, scope: !577)
!584 = !DILocation(line: 161, column: 6, scope: !450)
!585 = !DILocation(line: 161, column: 11, scope: !450)
!586 = !DILocation(line: 161, column: 22, scope: !450)
!587 = !DILocation(line: 161, column: 42, scope: !450)
!588 = !DILocation(line: 161, column: 40, scope: !450)
!589 = !DILocation(line: 161, column: 50, scope: !450)
!590 = !DILocation(line: 160, column: 21, scope: !450)
!591 = !DILocation(line: 160, column: 2, scope: !450)
!592 = !DILocation(line: 160, column: 7, scope: !450)
!593 = !DILocation(line: 160, column: 19, scope: !450)
!594 = !DILocation(line: 162, column: 6, scope: !595)
!595 = distinct !DILexicalBlock(scope: !450, file: !2, line: 162, column: 6)
!596 = !DILocation(line: 162, column: 11, scope: !595)
!597 = !DILocation(line: 162, column: 23, scope: !595)
!598 = !DILocation(line: 163, column: 3, scope: !595)
!599 = !DILocation(line: 163, column: 8, scope: !595)
!600 = !DILocation(line: 163, column: 19, scope: !595)
!601 = !DILocation(line: 164, column: 9, scope: !450)
!602 = !DILocation(line: 165, column: 2, scope: !450)
!603 = !DILocation(line: 165, column: 7, scope: !450)
!604 = !DILocation(line: 165, column: 17, scope: !450)
!605 = !DILocation(line: 166, column: 24, scope: !450)
!606 = !DILocation(line: 166, column: 6, scope: !450)
!607 = !DILocation(line: 171, column: 14, scope: !450)
!608 = !DILocation(line: 171, column: 22, scope: !450)
!609 = !DILocation(line: 171, column: 26, scope: !450)
!610 = !DILocation(line: 171, column: 2, scope: !450)
!611 = !DILocation(line: 176, column: 6, scope: !612)
!612 = distinct !DILexicalBlock(scope: !450, file: !2, line: 176, column: 6)
!613 = !DILocation(line: 176, column: 43, scope: !612)
!614 = !DILocation(line: 176, column: 47, scope: !612)
!615 = !DILocation(line: 176, column: 51, scope: !612)
!616 = !DILocation(line: 177, column: 3, scope: !617)
!617 = distinct !DILexicalBlock(scope: !612, file: !2, line: 176, column: 68)
!618 = !DILocation(line: 178, column: 10, scope: !617)
!619 = !DILocation(line: 179, column: 11, scope: !617)
!620 = !DILocation(line: 180, column: 2, scope: !617)
!621 = !DILocation(line: 181, column: 10, scope: !622)
!622 = distinct !DILexicalBlock(scope: !450, file: !2, line: 181, column: 2)
!623 = !DILocation(line: 181, column: 21, scope: !622)
!624 = !DILocation(line: 181, column: 26, scope: !622)
!625 = !DILocation(line: 181, column: 19, scope: !622)
!626 = !DILocation(line: 181, column: 7, scope: !622)
!627 = !DILocation(line: 181, column: 39, scope: !628)
!628 = distinct !DILexicalBlock(scope: !622, file: !2, line: 181, column: 2)
!629 = !DILocation(line: 181, column: 43, scope: !628)
!630 = !DILocation(line: 181, column: 2, scope: !622)
!631 = !DILocalVariable(name: "fip", scope: !632, file: !2, line: 182, type: !633)
!632 = distinct !DILexicalBlock(scope: !628, file: !2, line: 181, column: 61)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !291)
!635 = !DILocation(line: 182, column: 24, scope: !632)
!636 = !DILocation(line: 182, column: 30, scope: !632)
!637 = !DILocation(line: 182, column: 35, scope: !632)
!638 = !DILocation(line: 182, column: 49, scope: !632)
!639 = !DILocation(line: 183, column: 8, scope: !640)
!640 = distinct !DILexicalBlock(scope: !632, file: !2, line: 183, column: 7)
!641 = !DILocation(line: 183, column: 7, scope: !640)
!642 = !DILocation(line: 184, column: 4, scope: !640)
!643 = !DILocation(line: 185, column: 11, scope: !632)
!644 = !DILocation(line: 185, column: 16, scope: !632)
!645 = !DILocation(line: 185, column: 3, scope: !632)
!646 = !DILocation(line: 193, column: 10, scope: !647)
!647 = distinct !DILexicalBlock(scope: !632, file: !2, line: 185, column: 27)
!648 = !DILocation(line: 193, column: 8, scope: !647)
!649 = !DILocation(line: 195, column: 8, scope: !650)
!650 = distinct !DILexicalBlock(scope: !647, file: !2, line: 195, column: 8)
!651 = !DILocation(line: 195, column: 15, scope: !650)
!652 = !DILocation(line: 195, column: 20, scope: !650)
!653 = !DILocation(line: 195, column: 12, scope: !650)
!654 = !DILocation(line: 196, column: 5, scope: !650)
!655 = !DILocation(line: 197, column: 28, scope: !656)
!656 = distinct !DILexicalBlock(scope: !647, file: !2, line: 197, column: 8)
!657 = !DILocation(line: 197, column: 44, scope: !656)
!658 = !DILocation(line: 197, column: 49, scope: !656)
!659 = !DILocation(line: 198, column: 17, scope: !656)
!660 = !DILocation(line: 198, column: 21, scope: !656)
!661 = !DILocation(line: 198, column: 33, scope: !656)
!662 = !DILocation(line: 198, column: 37, scope: !656)
!663 = !DILocation(line: 197, column: 9, scope: !656)
!664 = !DILocation(line: 197, column: 8, scope: !656)
!665 = !DILocation(line: 199, column: 5, scope: !656)
!666 = !DILocation(line: 200, column: 4, scope: !647)
!667 = !DILocation(line: 208, column: 10, scope: !647)
!668 = !DILocation(line: 208, column: 8, scope: !647)
!669 = !DILocation(line: 210, column: 8, scope: !670)
!670 = distinct !DILexicalBlock(scope: !647, file: !2, line: 210, column: 8)
!671 = !DILocation(line: 210, column: 15, scope: !670)
!672 = !DILocation(line: 210, column: 20, scope: !670)
!673 = !DILocation(line: 210, column: 12, scope: !670)
!674 = !DILocation(line: 211, column: 5, scope: !670)
!675 = !DILocation(line: 212, column: 28, scope: !676)
!676 = distinct !DILexicalBlock(scope: !647, file: !2, line: 212, column: 8)
!677 = !DILocation(line: 212, column: 44, scope: !676)
!678 = !DILocation(line: 212, column: 49, scope: !676)
!679 = !DILocation(line: 213, column: 17, scope: !676)
!680 = !DILocation(line: 213, column: 21, scope: !676)
!681 = !DILocation(line: 213, column: 33, scope: !676)
!682 = !DILocation(line: 213, column: 37, scope: !676)
!683 = !DILocation(line: 212, column: 9, scope: !676)
!684 = !DILocation(line: 212, column: 8, scope: !676)
!685 = !DILocation(line: 214, column: 5, scope: !676)
!686 = !DILocation(line: 215, column: 4, scope: !647)
!687 = !DILocation(line: 217, column: 23, scope: !647)
!688 = !DILocation(line: 218, column: 8, scope: !647)
!689 = !DILocation(line: 218, column: 13, scope: !647)
!690 = !DILocation(line: 218, column: 17, scope: !647)
!691 = !DILocation(line: 217, column: 4, scope: !647)
!692 = !DILocation(line: 219, column: 4, scope: !647)
!693 = !DILocation(line: 221, column: 29, scope: !694)
!694 = distinct !DILexicalBlock(scope: !647, file: !2, line: 221, column: 8)
!695 = !DILocation(line: 221, column: 52, scope: !694)
!696 = !DILocation(line: 222, column: 11, scope: !694)
!697 = !DILocation(line: 222, column: 15, scope: !694)
!698 = !DILocation(line: 221, column: 9, scope: !694)
!699 = !DILocation(line: 221, column: 8, scope: !694)
!700 = !DILocation(line: 223, column: 5, scope: !694)
!701 = !DILocation(line: 224, column: 4, scope: !647)
!702 = !DILocation(line: 226, column: 23, scope: !647)
!703 = !DILocation(line: 227, column: 11, scope: !647)
!704 = !DILocation(line: 227, column: 15, scope: !647)
!705 = !DILocation(line: 227, column: 19, scope: !647)
!706 = !DILocation(line: 226, column: 4, scope: !647)
!707 = !DILocation(line: 228, column: 23, scope: !647)
!708 = !DILocation(line: 229, column: 8, scope: !647)
!709 = !DILocation(line: 229, column: 13, scope: !647)
!710 = !DILocation(line: 229, column: 17, scope: !647)
!711 = !DILocation(line: 228, column: 4, scope: !647)
!712 = !DILocation(line: 230, column: 4, scope: !647)
!713 = !DILocation(line: 232, column: 23, scope: !647)
!714 = !DILocation(line: 233, column: 11, scope: !647)
!715 = !DILocation(line: 233, column: 15, scope: !647)
!716 = !DILocation(line: 233, column: 19, scope: !647)
!717 = !DILocation(line: 232, column: 4, scope: !647)
!718 = !DILocation(line: 234, column: 23, scope: !647)
!719 = !DILocation(line: 235, column: 8, scope: !647)
!720 = !DILocation(line: 235, column: 13, scope: !647)
!721 = !DILocation(line: 235, column: 17, scope: !647)
!722 = !DILocation(line: 234, column: 4, scope: !647)
!723 = !DILocation(line: 236, column: 4, scope: !647)
!724 = !DILocation(line: 238, column: 4, scope: !725)
!725 = distinct !DILexicalBlock(scope: !726, file: !2, line: 238, column: 4)
!726 = distinct !DILexicalBlock(scope: !647, file: !2, line: 238, column: 4)
!727 = !DILocation(line: 238, column: 4, scope: !728)
!728 = distinct !DILexicalBlock(scope: !726, file: !2, line: 238, column: 4)
!729 = !DILocation(line: 238, column: 4, scope: !726)
!730 = !DILocation(line: 241, column: 4, scope: !647)
!731 = !DILocation(line: 243, column: 4, scope: !732)
!732 = distinct !DILexicalBlock(scope: !733, file: !2, line: 243, column: 4)
!733 = distinct !DILexicalBlock(scope: !647, file: !2, line: 243, column: 4)
!734 = !DILocation(line: 243, column: 4, scope: !735)
!735 = distinct !DILexicalBlock(scope: !733, file: !2, line: 243, column: 4)
!736 = !DILocation(line: 243, column: 4, scope: !733)
!737 = !DILocation(line: 246, column: 4, scope: !647)
!738 = !DILocation(line: 251, column: 34, scope: !739)
!739 = distinct !DILexicalBlock(scope: !647, file: !2, line: 251, column: 8)
!740 = !DILocation(line: 251, column: 39, scope: !739)
!741 = !DILocation(line: 251, column: 44, scope: !739)
!742 = !DILocation(line: 251, column: 55, scope: !739)
!743 = !DILocation(line: 251, column: 9, scope: !739)
!744 = !DILocation(line: 251, column: 8, scope: !739)
!745 = !DILocation(line: 252, column: 5, scope: !739)
!746 = !DILocation(line: 253, column: 4, scope: !647)
!747 = !DILocation(line: 256, column: 32, scope: !748)
!748 = distinct !DILexicalBlock(scope: !647, file: !2, line: 256, column: 8)
!749 = !DILocation(line: 257, column: 29, scope: !748)
!750 = !DILocation(line: 257, column: 8, scope: !748)
!751 = !DILocation(line: 257, column: 35, scope: !748)
!752 = !DILocation(line: 257, column: 40, scope: !748)
!753 = !DILocation(line: 257, column: 51, scope: !748)
!754 = !DILocation(line: 256, column: 9, scope: !748)
!755 = !DILocation(line: 256, column: 8, scope: !748)
!756 = !DILocation(line: 258, column: 5, scope: !748)
!757 = !DILocation(line: 259, column: 4, scope: !647)
!758 = !DILocation(line: 268, column: 28, scope: !759)
!759 = distinct !DILexicalBlock(scope: !647, file: !2, line: 268, column: 8)
!760 = !DILocation(line: 268, column: 33, scope: !759)
!761 = !DILocation(line: 268, column: 38, scope: !759)
!762 = !DILocation(line: 268, column: 49, scope: !759)
!763 = !DILocation(line: 268, column: 9, scope: !759)
!764 = !DILocation(line: 268, column: 8, scope: !759)
!765 = !DILocation(line: 269, column: 5, scope: !759)
!766 = !DILocation(line: 270, column: 4, scope: !647)
!767 = !DILocation(line: 273, column: 27, scope: !768)
!768 = distinct !DILexicalBlock(scope: !647, file: !2, line: 273, column: 8)
!769 = !DILocation(line: 273, column: 32, scope: !768)
!770 = !DILocation(line: 273, column: 9, scope: !768)
!771 = !DILocation(line: 273, column: 8, scope: !768)
!772 = !DILocation(line: 274, column: 5, scope: !768)
!773 = !DILocation(line: 275, column: 4, scope: !647)
!774 = !DILocation(line: 279, column: 35, scope: !775)
!775 = distinct !DILexicalBlock(scope: !647, file: !2, line: 279, column: 8)
!776 = !DILocation(line: 279, column: 40, scope: !775)
!777 = !DILocation(line: 279, column: 9, scope: !775)
!778 = !DILocation(line: 279, column: 8, scope: !775)
!779 = !DILocation(line: 280, column: 5, scope: !775)
!780 = !DILocation(line: 281, column: 4, scope: !647)
!781 = !DILocation(line: 285, column: 28, scope: !782)
!782 = distinct !DILexicalBlock(scope: !647, file: !2, line: 285, column: 8)
!783 = !DILocation(line: 285, column: 33, scope: !782)
!784 = !DILocation(line: 285, column: 38, scope: !782)
!785 = !DILocation(line: 285, column: 9, scope: !782)
!786 = !DILocation(line: 285, column: 8, scope: !782)
!787 = !DILocation(line: 286, column: 5, scope: !782)
!788 = !DILocation(line: 295, column: 8, scope: !789)
!789 = distinct !DILexicalBlock(scope: !647, file: !2, line: 295, column: 8)
!790 = !DILocation(line: 295, column: 13, scope: !789)
!791 = !DILocation(line: 295, column: 24, scope: !789)
!792 = !DILocation(line: 296, column: 5, scope: !793)
!793 = distinct !DILexicalBlock(scope: !789, file: !2, line: 295, column: 29)
!794 = !DILocation(line: 296, column: 10, scope: !793)
!795 = !DILocation(line: 296, column: 20, scope: !793)
!796 = !DILocation(line: 297, column: 33, scope: !793)
!797 = !DILocation(line: 297, column: 38, scope: !793)
!798 = !DILocation(line: 297, column: 24, scope: !793)
!799 = !DILocation(line: 297, column: 5, scope: !793)
!800 = !DILocation(line: 297, column: 10, scope: !793)
!801 = !DILocation(line: 297, column: 22, scope: !793)
!802 = !DILocation(line: 298, column: 9, scope: !803)
!803 = distinct !DILexicalBlock(scope: !793, file: !2, line: 298, column: 9)
!804 = !DILocation(line: 298, column: 14, scope: !803)
!805 = !DILocation(line: 298, column: 25, scope: !803)
!806 = !DILocation(line: 299, column: 27, scope: !803)
!807 = !DILocation(line: 299, column: 32, scope: !803)
!808 = !DILocation(line: 299, column: 6, scope: !803)
!809 = !DILocation(line: 299, column: 11, scope: !803)
!810 = !DILocation(line: 299, column: 25, scope: !803)
!811 = !DILocation(line: 302, column: 12, scope: !803)
!812 = !DILocation(line: 302, column: 17, scope: !803)
!813 = !DILocation(line: 303, column: 10, scope: !803)
!814 = !DILocation(line: 304, column: 21, scope: !803)
!815 = !DILocation(line: 304, column: 26, scope: !803)
!816 = !DILocation(line: 304, column: 38, scope: !803)
!817 = !DILocation(line: 304, column: 37, scope: !803)
!818 = !DILocation(line: 304, column: 10, scope: !803)
!819 = !DILocation(line: 301, column: 27, scope: !803)
!820 = !DILocation(line: 301, column: 6, scope: !803)
!821 = !DILocation(line: 301, column: 11, scope: !803)
!822 = !DILocation(line: 301, column: 25, scope: !803)
!823 = !DILocation(line: 305, column: 4, scope: !793)
!824 = !DILocation(line: 306, column: 4, scope: !647)
!825 = !DILocation(line: 309, column: 28, scope: !826)
!826 = distinct !DILexicalBlock(scope: !647, file: !2, line: 309, column: 8)
!827 = !DILocation(line: 309, column: 33, scope: !826)
!828 = !DILocation(line: 309, column: 38, scope: !826)
!829 = !DILocation(line: 309, column: 9, scope: !826)
!830 = !DILocation(line: 309, column: 8, scope: !826)
!831 = !DILocation(line: 310, column: 5, scope: !826)
!832 = !DILocation(line: 311, column: 4, scope: !647)
!833 = !DILocation(line: 313, column: 6, scope: !632)
!834 = !DILocation(line: 314, column: 3, scope: !632)
!835 = !DILocation(line: 315, column: 2, scope: !632)
!836 = !DILocation(line: 181, column: 51, scope: !628)
!837 = !DILocation(line: 181, column: 57, scope: !628)
!838 = !DILocation(line: 181, column: 2, scope: !628)
!839 = distinct !{!839, !630, !840, !561}
!840 = !DILocation(line: 315, column: 2, scope: !622)
!841 = !DILocation(line: 319, column: 22, scope: !450)
!842 = !DILocation(line: 319, column: 13, scope: !450)
!843 = !DILocation(line: 319, column: 11, scope: !450)
!844 = !DILocation(line: 320, column: 20, scope: !450)
!845 = !DILocation(line: 320, column: 25, scope: !450)
!846 = !DILocation(line: 320, column: 9, scope: !450)
!847 = !DILocation(line: 321, column: 6, scope: !848)
!848 = distinct !DILexicalBlock(scope: !450, file: !2, line: 321, column: 6)
!849 = !DILocation(line: 321, column: 11, scope: !848)
!850 = !DILocation(line: 321, column: 21, scope: !848)
!851 = !DILocation(line: 332, column: 30, scope: !852)
!852 = distinct !DILexicalBlock(scope: !853, file: !2, line: 332, column: 3)
!853 = distinct !DILexicalBlock(scope: !848, file: !2, line: 321, column: 34)
!854 = !DILocation(line: 332, column: 12, scope: !852)
!855 = !DILocation(line: 332, column: 8, scope: !852)
!856 = !DILocation(line: 332, column: 36, scope: !857)
!857 = distinct !DILexicalBlock(scope: !852, file: !2, line: 332, column: 3)
!858 = !DILocation(line: 332, column: 3, scope: !852)
!859 = !DILocation(line: 333, column: 26, scope: !860)
!860 = distinct !DILexicalBlock(scope: !857, file: !2, line: 332, column: 65)
!861 = !DILocation(line: 333, column: 31, scope: !860)
!862 = !DILocation(line: 333, column: 4, scope: !860)
!863 = !DILocation(line: 334, column: 25, scope: !860)
!864 = !DILocation(line: 334, column: 30, scope: !860)
!865 = !DILocation(line: 334, column: 4, scope: !860)
!866 = !DILocation(line: 335, column: 3, scope: !860)
!867 = !DILocation(line: 332, column: 49, scope: !857)
!868 = !DILocation(line: 332, column: 61, scope: !857)
!869 = !DILocation(line: 332, column: 3, scope: !857)
!870 = distinct !{!870, !858, !871, !561}
!871 = !DILocation(line: 335, column: 3, scope: !852)
!872 = !DILocation(line: 336, column: 23, scope: !853)
!873 = !DILocation(line: 336, column: 14, scope: !853)
!874 = !DILocation(line: 336, column: 12, scope: !853)
!875 = !DILocation(line: 337, column: 3, scope: !853)
!876 = !DILocation(line: 338, column: 3, scope: !853)
!877 = !DILocation(line: 339, column: 2, scope: !853)
!878 = !DILocation(line: 340, column: 9, scope: !450)
!879 = !DILocation(line: 341, column: 7, scope: !880)
!880 = distinct !DILexicalBlock(scope: !450, file: !2, line: 341, column: 6)
!881 = !DILocation(line: 341, column: 6, scope: !880)
!882 = !DILocation(line: 342, column: 13, scope: !883)
!883 = distinct !DILexicalBlock(scope: !880, file: !2, line: 341, column: 51)
!884 = !DILocation(line: 342, column: 18, scope: !883)
!885 = !DILocation(line: 342, column: 3, scope: !883)
!886 = !DILocation(line: 343, column: 3, scope: !883)
!887 = !DILocation(line: 345, column: 7, scope: !888)
!888 = distinct !DILexicalBlock(scope: !450, file: !2, line: 345, column: 6)
!889 = !DILocation(line: 345, column: 6, scope: !888)
!890 = !DILocation(line: 346, column: 13, scope: !891)
!891 = distinct !DILexicalBlock(scope: !888, file: !2, line: 345, column: 36)
!892 = !DILocation(line: 346, column: 18, scope: !891)
!893 = !DILocation(line: 346, column: 3, scope: !891)
!894 = !DILocation(line: 347, column: 3, scope: !891)
!895 = !DILocation(line: 349, column: 7, scope: !896)
!896 = distinct !DILexicalBlock(scope: !450, file: !2, line: 349, column: 6)
!897 = !DILocation(line: 349, column: 6, scope: !896)
!898 = !DILocation(line: 350, column: 13, scope: !899)
!899 = distinct !DILexicalBlock(scope: !896, file: !2, line: 349, column: 47)
!900 = !DILocation(line: 350, column: 18, scope: !899)
!901 = !DILocation(line: 350, column: 3, scope: !899)
!902 = !DILocation(line: 351, column: 3, scope: !899)
!903 = !DILocation(line: 353, column: 20, scope: !450)
!904 = !DILocation(line: 353, column: 2, scope: !450)
!905 = !DILocation(line: 354, column: 12, scope: !450)
!906 = !DILocation(line: 354, column: 2, scope: !450)
!907 = !DILocation(line: 355, column: 2, scope: !450)
!908 = !DILocation(line: 355, column: 7, scope: !450)
!909 = !DILocation(line: 355, column: 17, scope: !450)
!910 = !DILocation(line: 356, column: 4, scope: !450)
!911 = !DILocation(line: 356, column: 9, scope: !450)
!912 = !DILocation(line: 356, column: 22, scope: !450)
!913 = !DILocation(line: 356, column: 2, scope: !450)
!914 = !DILocation(line: 362, column: 23, scope: !450)
!915 = !DILocation(line: 362, column: 2, scope: !450)
!916 = !DILocation(line: 363, column: 2, scope: !450)
!917 = !DILocation(line: 363, column: 7, scope: !450)
!918 = !DILocation(line: 363, column: 18, scope: !450)
!919 = !DILocation(line: 364, column: 2, scope: !450)
!920 = !DILocation(line: 364, column: 7, scope: !450)
!921 = !DILocation(line: 364, column: 18, scope: !450)
!922 = !DILocation(line: 365, column: 2, scope: !450)
!923 = !DILocation(line: 365, column: 7, scope: !450)
!924 = !DILocation(line: 365, column: 15, scope: !450)
!925 = !DILocation(line: 366, column: 2, scope: !450)
!926 = !DILocation(line: 366, column: 7, scope: !450)
!927 = !DILocation(line: 366, column: 20, scope: !450)
!928 = !DILocation(line: 367, column: 2, scope: !450)
!929 = !DILabel(scope: !450, name: "bad", file: !2, line: 368)
!930 = !DILocation(line: 368, column: 1, scope: !450)
!931 = !DILocation(line: 369, column: 12, scope: !450)
!932 = !DILocation(line: 369, column: 2, scope: !450)
!933 = !DILocation(line: 370, column: 2, scope: !450)
!934 = !DILocation(line: 371, column: 1, scope: !450)
!935 = !DILocalVariable(name: "tif", arg: 1, scope: !41, file: !2, line: 950, type: !45)
!936 = !DILocation(line: 950, column: 25, scope: !41)
!937 = !DILocalVariable(name: "nextdir", scope: !41, file: !2, line: 953, type: !56)
!938 = !DILocation(line: 953, column: 9, scope: !41)
!939 = !DILocalVariable(name: "diroff", scope: !41, file: !2, line: 954, type: !56)
!940 = !DILocation(line: 954, column: 9, scope: !41)
!941 = !DILocation(line: 956, column: 21, scope: !41)
!942 = !DILocation(line: 956, column: 60, scope: !41)
!943 = !DILocation(line: 956, column: 64, scope: !41)
!944 = !DILocation(line: 956, column: 2, scope: !41)
!945 = !DILocation(line: 956, column: 7, scope: !41)
!946 = !DILocation(line: 956, column: 18, scope: !41)
!947 = !DILocation(line: 957, column: 20, scope: !41)
!948 = !DILocation(line: 957, column: 25, scope: !41)
!949 = !DILocation(line: 957, column: 9, scope: !41)
!950 = !DILocation(line: 958, column: 6, scope: !951)
!951 = distinct !DILexicalBlock(scope: !41, file: !2, line: 958, column: 6)
!952 = !DILocation(line: 958, column: 11, scope: !951)
!953 = !DILocation(line: 958, column: 21, scope: !951)
!954 = !DILocation(line: 959, column: 3, scope: !951)
!955 = !DILocation(line: 961, column: 6, scope: !956)
!956 = distinct !DILexicalBlock(scope: !41, file: !2, line: 961, column: 6)
!957 = !DILocation(line: 961, column: 11, scope: !956)
!958 = !DILocation(line: 961, column: 21, scope: !956)
!959 = !DILocation(line: 962, column: 10, scope: !960)
!960 = distinct !DILexicalBlock(scope: !956, file: !2, line: 961, column: 38)
!961 = !DILocation(line: 963, column: 8, scope: !962)
!962 = distinct !DILexicalBlock(scope: !960, file: !2, line: 963, column: 7)
!963 = !DILocation(line: 963, column: 7, scope: !962)
!964 = !DILocation(line: 966, column: 8, scope: !965)
!965 = distinct !DILexicalBlock(scope: !962, file: !2, line: 963, column: 48)
!966 = !DILocation(line: 966, column: 13, scope: !965)
!967 = !DILocation(line: 964, column: 4, scope: !965)
!968 = !DILocation(line: 967, column: 4, scope: !965)
!969 = !DILocation(line: 974, column: 9, scope: !970)
!970 = distinct !DILexicalBlock(scope: !960, file: !2, line: 974, column: 7)
!971 = !DILocation(line: 974, column: 14, scope: !970)
!972 = !DILocation(line: 974, column: 7, scope: !970)
!973 = !DILocation(line: 975, column: 4, scope: !970)
!974 = !DILocation(line: 975, column: 9, scope: !970)
!975 = !DILocation(line: 975, column: 23, scope: !970)
!976 = !DILocation(line: 977, column: 4, scope: !970)
!977 = !DILocation(line: 977, column: 9, scope: !970)
!978 = !DILocation(line: 977, column: 19, scope: !970)
!979 = !DILocation(line: 978, column: 3, scope: !960)
!980 = !DILocation(line: 981, column: 6, scope: !981)
!981 = distinct !DILexicalBlock(scope: !41, file: !2, line: 981, column: 6)
!982 = !DILocation(line: 981, column: 11, scope: !981)
!983 = !DILocation(line: 981, column: 22, scope: !981)
!984 = !DILocation(line: 981, column: 34, scope: !981)
!985 = !DILocation(line: 985, column: 42, scope: !986)
!986 = distinct !DILexicalBlock(scope: !981, file: !2, line: 981, column: 40)
!987 = !DILocation(line: 985, column: 47, scope: !986)
!988 = !DILocation(line: 985, column: 3, scope: !986)
!989 = !DILocation(line: 985, column: 8, scope: !986)
!990 = !DILocation(line: 985, column: 19, scope: !986)
!991 = !DILocation(line: 985, column: 31, scope: !986)
!992 = !DILocation(line: 987, column: 10, scope: !986)
!993 = !DILocation(line: 988, column: 8, scope: !994)
!994 = distinct !DILexicalBlock(scope: !986, file: !2, line: 988, column: 7)
!995 = !DILocation(line: 988, column: 7, scope: !994)
!996 = !DILocation(line: 989, column: 14, scope: !997)
!997 = distinct !DILexicalBlock(scope: !994, file: !2, line: 988, column: 48)
!998 = !DILocation(line: 989, column: 19, scope: !997)
!999 = !DILocation(line: 989, column: 4, scope: !997)
!1000 = !DILocation(line: 990, column: 4, scope: !997)
!1001 = !DILocation(line: 992, column: 3, scope: !986)
!1002 = !DILocation(line: 997, column: 12, scope: !41)
!1003 = !DILocation(line: 997, column: 17, scope: !41)
!1004 = !DILocation(line: 997, column: 28, scope: !41)
!1005 = !DILocation(line: 997, column: 10, scope: !41)
!1006 = !DILocation(line: 998, column: 2, scope: !41)
!1007 = !DILocalVariable(name: "dircount", scope: !1008, file: !2, line: 999, type: !85)
!1008 = distinct !DILexicalBlock(scope: !41, file: !2, line: 998, column: 5)
!1009 = !DILocation(line: 999, column: 10, scope: !1008)
!1010 = !DILocation(line: 1001, column: 8, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !1008, file: !2, line: 1001, column: 7)
!1012 = !DILocation(line: 1001, column: 29, scope: !1011)
!1013 = !DILocation(line: 1002, column: 8, scope: !1011)
!1014 = !DILocation(line: 1003, column: 4, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !1011, file: !2, line: 1002, column: 51)
!1016 = !DILocation(line: 1004, column: 4, scope: !1015)
!1017 = !DILocation(line: 1006, column: 7, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !1008, file: !2, line: 1006, column: 7)
!1019 = !DILocation(line: 1006, column: 12, scope: !1018)
!1020 = !DILocation(line: 1006, column: 22, scope: !1018)
!1021 = !DILocation(line: 1007, column: 4, scope: !1018)
!1022 = !DILocation(line: 1008, column: 10, scope: !1008)
!1023 = !DILocation(line: 1010, column: 8, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !1008, file: !2, line: 1010, column: 7)
!1025 = !DILocation(line: 1010, column: 7, scope: !1024)
!1026 = !DILocation(line: 1011, column: 4, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !1024, file: !2, line: 1010, column: 49)
!1028 = !DILocation(line: 1012, column: 4, scope: !1027)
!1029 = !DILocation(line: 1014, column: 7, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !1008, file: !2, line: 1014, column: 7)
!1031 = !DILocation(line: 1014, column: 12, scope: !1030)
!1032 = !DILocation(line: 1014, column: 22, scope: !1030)
!1033 = !DILocation(line: 1015, column: 4, scope: !1030)
!1034 = !DILocation(line: 1016, column: 2, scope: !1008)
!1035 = !DILocation(line: 1016, column: 11, scope: !41)
!1036 = !DILocation(line: 1016, column: 19, scope: !41)
!1037 = distinct !{!1037, !1006, !1038, !561}
!1038 = !DILocation(line: 1016, column: 23, scope: !41)
!1039 = !DILocation(line: 1017, column: 9, scope: !41)
!1040 = !DILocation(line: 1018, column: 7, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !41, file: !2, line: 1018, column: 6)
!1042 = !DILocation(line: 1018, column: 6, scope: !1041)
!1043 = !DILocation(line: 1019, column: 3, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !1041, file: !2, line: 1018, column: 47)
!1045 = !DILocation(line: 1020, column: 3, scope: !1044)
!1046 = !DILocation(line: 1022, column: 2, scope: !41)
!1047 = !DILocation(line: 1023, column: 1, scope: !41)
!1048 = distinct !DISubprogram(name: "TIFFWriteLongArray", scope: !2, file: !2, line: 686, type: !1049, scopeLine: 688, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, retainedNodes: !437)
!1049 = !DISubroutineType(types: !1050)
!1050 = !{!44, !45, !300, !295, !402, !56, !131}
!1051 = !DILocalVariable(name: "tif", arg: 1, scope: !1048, file: !2, line: 686, type: !45)
!1052 = !DILocation(line: 686, column: 26, scope: !1048)
!1053 = !DILocalVariable(name: "type", arg: 2, scope: !1048, file: !2, line: 687, type: !300)
!1054 = !DILocation(line: 687, column: 18, scope: !1048)
!1055 = !DILocalVariable(name: "tag", arg: 3, scope: !1048, file: !2, line: 687, type: !295)
!1056 = !DILocation(line: 687, column: 31, scope: !1048)
!1057 = !DILocalVariable(name: "dir", arg: 4, scope: !1048, file: !2, line: 687, type: !402)
!1058 = !DILocation(line: 687, column: 50, scope: !1048)
!1059 = !DILocalVariable(name: "n", arg: 5, scope: !1048, file: !2, line: 687, type: !56)
!1060 = !DILocation(line: 687, column: 62, scope: !1048)
!1061 = !DILocalVariable(name: "v", arg: 6, scope: !1048, file: !2, line: 687, type: !131)
!1062 = !DILocation(line: 687, column: 73, scope: !1048)
!1063 = !DILocation(line: 689, column: 27, scope: !1048)
!1064 = !DILocation(line: 689, column: 18, scope: !1048)
!1065 = !DILocation(line: 689, column: 2, scope: !1048)
!1066 = !DILocation(line: 689, column: 7, scope: !1048)
!1067 = !DILocation(line: 689, column: 16, scope: !1048)
!1068 = !DILocation(line: 690, column: 27, scope: !1048)
!1069 = !DILocation(line: 690, column: 19, scope: !1048)
!1070 = !DILocation(line: 690, column: 2, scope: !1048)
!1071 = !DILocation(line: 690, column: 7, scope: !1048)
!1072 = !DILocation(line: 690, column: 17, scope: !1048)
!1073 = !DILocation(line: 691, column: 20, scope: !1048)
!1074 = !DILocation(line: 691, column: 2, scope: !1048)
!1075 = !DILocation(line: 691, column: 7, scope: !1048)
!1076 = !DILocation(line: 691, column: 18, scope: !1048)
!1077 = !DILocation(line: 692, column: 6, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1048, file: !2, line: 692, column: 6)
!1079 = !DILocation(line: 692, column: 8, scope: !1078)
!1080 = !DILocation(line: 693, column: 22, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !1078, file: !2, line: 692, column: 14)
!1082 = !DILocation(line: 693, column: 3, scope: !1081)
!1083 = !DILocation(line: 693, column: 8, scope: !1081)
!1084 = !DILocation(line: 693, column: 20, scope: !1081)
!1085 = !DILocation(line: 694, column: 3, scope: !1081)
!1086 = !DILocation(line: 696, column: 25, scope: !1078)
!1087 = !DILocation(line: 696, column: 30, scope: !1078)
!1088 = !DILocation(line: 696, column: 43, scope: !1078)
!1089 = !DILocation(line: 696, column: 11, scope: !1078)
!1090 = !DILocation(line: 696, column: 3, scope: !1078)
!1091 = !DILocation(line: 697, column: 1, scope: !1048)
!1092 = distinct !DISubprogram(name: "TIFFSetupShortLong", scope: !2, file: !2, line: 526, type: !1093, scopeLine: 527, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, retainedNodes: !437)
!1093 = !DISubroutineType(types: !1094)
!1094 = !{null, !45, !295, !402, !56}
!1095 = !DILocalVariable(name: "tif", arg: 1, scope: !1092, file: !2, line: 526, type: !45)
!1096 = !DILocation(line: 526, column: 26, scope: !1092)
!1097 = !DILocalVariable(name: "tag", arg: 2, scope: !1092, file: !2, line: 526, type: !295)
!1098 = !DILocation(line: 526, column: 38, scope: !1092)
!1099 = !DILocalVariable(name: "dir", arg: 3, scope: !1092, file: !2, line: 526, type: !402)
!1100 = !DILocation(line: 526, column: 57, scope: !1092)
!1101 = !DILocalVariable(name: "v", arg: 4, scope: !1092, file: !2, line: 526, type: !56)
!1102 = !DILocation(line: 526, column: 69, scope: !1092)
!1103 = !DILocation(line: 528, column: 27, scope: !1092)
!1104 = !DILocation(line: 528, column: 18, scope: !1092)
!1105 = !DILocation(line: 528, column: 2, scope: !1092)
!1106 = !DILocation(line: 528, column: 7, scope: !1092)
!1107 = !DILocation(line: 528, column: 16, scope: !1092)
!1108 = !DILocation(line: 529, column: 2, scope: !1092)
!1109 = !DILocation(line: 529, column: 7, scope: !1092)
!1110 = !DILocation(line: 529, column: 18, scope: !1092)
!1111 = !DILocation(line: 530, column: 6, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !1092, file: !2, line: 530, column: 6)
!1113 = !DILocation(line: 530, column: 8, scope: !1112)
!1114 = !DILocation(line: 531, column: 3, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !1112, file: !2, line: 530, column: 19)
!1116 = !DILocation(line: 531, column: 8, scope: !1115)
!1117 = !DILocation(line: 531, column: 18, scope: !1115)
!1118 = !DILocation(line: 532, column: 22, scope: !1115)
!1119 = !DILocation(line: 532, column: 3, scope: !1115)
!1120 = !DILocation(line: 532, column: 8, scope: !1115)
!1121 = !DILocation(line: 532, column: 20, scope: !1115)
!1122 = !DILocation(line: 533, column: 2, scope: !1115)
!1123 = !DILocation(line: 534, column: 3, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1112, file: !2, line: 533, column: 9)
!1125 = !DILocation(line: 534, column: 8, scope: !1124)
!1126 = !DILocation(line: 534, column: 18, scope: !1124)
!1127 = !DILocation(line: 535, column: 22, scope: !1124)
!1128 = !DILocation(line: 535, column: 3, scope: !1124)
!1129 = !DILocation(line: 535, column: 8, scope: !1124)
!1130 = !DILocation(line: 535, column: 20, scope: !1124)
!1131 = !DILocation(line: 537, column: 1, scope: !1092)
!1132 = distinct !DISubprogram(name: "TIFFWriteShortTable", scope: !2, file: !2, line: 623, type: !1133, scopeLine: 625, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, retainedNodes: !437)
!1133 = !DISubroutineType(types: !1134)
!1134 = !{!44, !45, !295, !402, !56, !1135}
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!1136 = !DILocalVariable(name: "tif", arg: 1, scope: !1132, file: !2, line: 623, type: !45)
!1137 = !DILocation(line: 623, column: 27, scope: !1132)
!1138 = !DILocalVariable(name: "tag", arg: 2, scope: !1132, file: !2, line: 624, type: !295)
!1139 = !DILocation(line: 624, column: 12, scope: !1132)
!1140 = !DILocalVariable(name: "dir", arg: 3, scope: !1132, file: !2, line: 624, type: !402)
!1141 = !DILocation(line: 624, column: 31, scope: !1132)
!1142 = !DILocalVariable(name: "n", arg: 4, scope: !1132, file: !2, line: 624, type: !56)
!1143 = !DILocation(line: 624, column: 43, scope: !1132)
!1144 = !DILocalVariable(name: "table", arg: 5, scope: !1132, file: !2, line: 624, type: !1135)
!1145 = !DILocation(line: 624, column: 55, scope: !1132)
!1146 = !DILocalVariable(name: "i", scope: !1132, file: !2, line: 626, type: !56)
!1147 = !DILocation(line: 626, column: 9, scope: !1132)
!1148 = !DILocalVariable(name: "off", scope: !1132, file: !2, line: 626, type: !56)
!1149 = !DILocation(line: 626, column: 12, scope: !1132)
!1150 = !DILocation(line: 628, column: 27, scope: !1132)
!1151 = !DILocation(line: 628, column: 18, scope: !1132)
!1152 = !DILocation(line: 628, column: 2, scope: !1132)
!1153 = !DILocation(line: 628, column: 7, scope: !1132)
!1154 = !DILocation(line: 628, column: 16, scope: !1132)
!1155 = !DILocation(line: 629, column: 2, scope: !1132)
!1156 = !DILocation(line: 629, column: 7, scope: !1132)
!1157 = !DILocation(line: 629, column: 17, scope: !1132)
!1158 = !DILocation(line: 631, column: 34, scope: !1132)
!1159 = !DILocation(line: 631, column: 39, scope: !1132)
!1160 = !DILocation(line: 631, column: 47, scope: !1132)
!1161 = !DILocation(line: 631, column: 32, scope: !1132)
!1162 = !DILocation(line: 631, column: 20, scope: !1132)
!1163 = !DILocation(line: 631, column: 2, scope: !1132)
!1164 = !DILocation(line: 631, column: 7, scope: !1132)
!1165 = !DILocation(line: 631, column: 18, scope: !1132)
!1166 = !DILocation(line: 632, column: 8, scope: !1132)
!1167 = !DILocation(line: 632, column: 13, scope: !1132)
!1168 = !DILocation(line: 632, column: 6, scope: !1132)
!1169 = !DILocation(line: 633, column: 9, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1132, file: !2, line: 633, column: 2)
!1171 = !DILocation(line: 633, column: 7, scope: !1170)
!1172 = !DILocation(line: 633, column: 14, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !1170, file: !2, line: 633, column: 2)
!1174 = !DILocation(line: 633, column: 18, scope: !1173)
!1175 = !DILocation(line: 633, column: 16, scope: !1173)
!1176 = !DILocation(line: 633, column: 2, scope: !1170)
!1177 = !DILocation(line: 634, column: 22, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !1173, file: !2, line: 634, column: 7)
!1179 = !DILocation(line: 634, column: 27, scope: !1178)
!1180 = !DILocation(line: 634, column: 40, scope: !1178)
!1181 = !DILocation(line: 634, column: 46, scope: !1178)
!1182 = !DILocation(line: 634, column: 8, scope: !1178)
!1183 = !DILocation(line: 634, column: 7, scope: !1178)
!1184 = !DILocation(line: 635, column: 4, scope: !1178)
!1185 = !DILocation(line: 634, column: 48, scope: !1178)
!1186 = !DILocation(line: 633, column: 22, scope: !1173)
!1187 = !DILocation(line: 633, column: 2, scope: !1173)
!1188 = distinct !{!1188, !1176, !1189, !561}
!1189 = !DILocation(line: 635, column: 13, scope: !1170)
!1190 = !DILocation(line: 636, column: 21, scope: !1132)
!1191 = !DILocation(line: 636, column: 2, scope: !1132)
!1192 = !DILocation(line: 636, column: 7, scope: !1132)
!1193 = !DILocation(line: 636, column: 18, scope: !1132)
!1194 = !DILocation(line: 637, column: 21, scope: !1132)
!1195 = !DILocation(line: 637, column: 2, scope: !1132)
!1196 = !DILocation(line: 637, column: 7, scope: !1132)
!1197 = !DILocation(line: 637, column: 19, scope: !1132)
!1198 = !DILocation(line: 638, column: 2, scope: !1132)
!1199 = !DILocation(line: 639, column: 1, scope: !1132)
!1200 = distinct !DISubprogram(name: "TIFFWriteRationalArray", scope: !2, file: !2, line: 704, type: !1201, scopeLine: 706, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, retainedNodes: !437)
!1201 = !DISubroutineType(types: !1202)
!1202 = !{!44, !45, !300, !295, !402, !56, !136}
!1203 = !DILocalVariable(name: "tif", arg: 1, scope: !1200, file: !2, line: 704, type: !45)
!1204 = !DILocation(line: 704, column: 30, scope: !1200)
!1205 = !DILocalVariable(name: "type", arg: 2, scope: !1200, file: !2, line: 705, type: !300)
!1206 = !DILocation(line: 705, column: 18, scope: !1200)
!1207 = !DILocalVariable(name: "tag", arg: 3, scope: !1200, file: !2, line: 705, type: !295)
!1208 = !DILocation(line: 705, column: 31, scope: !1200)
!1209 = !DILocalVariable(name: "dir", arg: 4, scope: !1200, file: !2, line: 705, type: !402)
!1210 = !DILocation(line: 705, column: 50, scope: !1200)
!1211 = !DILocalVariable(name: "n", arg: 5, scope: !1200, file: !2, line: 705, type: !56)
!1212 = !DILocation(line: 705, column: 62, scope: !1200)
!1213 = !DILocalVariable(name: "v", arg: 6, scope: !1200, file: !2, line: 705, type: !136)
!1214 = !DILocation(line: 705, column: 72, scope: !1200)
!1215 = !DILocalVariable(name: "i", scope: !1200, file: !2, line: 707, type: !56)
!1216 = !DILocation(line: 707, column: 9, scope: !1200)
!1217 = !DILocalVariable(name: "t", scope: !1200, file: !2, line: 708, type: !131)
!1218 = !DILocation(line: 708, column: 10, scope: !1200)
!1219 = !DILocalVariable(name: "status", scope: !1200, file: !2, line: 709, type: !44)
!1220 = !DILocation(line: 709, column: 6, scope: !1200)
!1221 = !DILocation(line: 711, column: 27, scope: !1200)
!1222 = !DILocation(line: 711, column: 18, scope: !1200)
!1223 = !DILocation(line: 711, column: 2, scope: !1200)
!1224 = !DILocation(line: 711, column: 7, scope: !1200)
!1225 = !DILocation(line: 711, column: 16, scope: !1200)
!1226 = !DILocation(line: 712, column: 27, scope: !1200)
!1227 = !DILocation(line: 712, column: 19, scope: !1200)
!1228 = !DILocation(line: 712, column: 2, scope: !1200)
!1229 = !DILocation(line: 712, column: 7, scope: !1200)
!1230 = !DILocation(line: 712, column: 17, scope: !1200)
!1231 = !DILocation(line: 713, column: 20, scope: !1200)
!1232 = !DILocation(line: 713, column: 2, scope: !1200)
!1233 = !DILocation(line: 713, column: 7, scope: !1200)
!1234 = !DILocation(line: 713, column: 18, scope: !1200)
!1235 = !DILocation(line: 714, column: 30, scope: !1200)
!1236 = !DILocation(line: 714, column: 29, scope: !1200)
!1237 = !DILocation(line: 714, column: 28, scope: !1200)
!1238 = !DILocation(line: 714, column: 32, scope: !1200)
!1239 = !DILocation(line: 714, column: 16, scope: !1200)
!1240 = !DILocation(line: 714, column: 4, scope: !1200)
!1241 = !DILocation(line: 715, column: 9, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !1200, file: !2, line: 715, column: 2)
!1243 = !DILocation(line: 715, column: 7, scope: !1242)
!1244 = !DILocation(line: 715, column: 14, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1242, file: !2, line: 715, column: 2)
!1246 = !DILocation(line: 715, column: 18, scope: !1245)
!1247 = !DILocation(line: 715, column: 16, scope: !1245)
!1248 = !DILocation(line: 715, column: 2, scope: !1242)
!1249 = !DILocalVariable(name: "fv", scope: !1250, file: !2, line: 716, type: !101)
!1250 = distinct !DILexicalBlock(scope: !1245, file: !2, line: 715, column: 26)
!1251 = !DILocation(line: 716, column: 9, scope: !1250)
!1252 = !DILocation(line: 716, column: 14, scope: !1250)
!1253 = !DILocation(line: 716, column: 16, scope: !1250)
!1254 = !DILocalVariable(name: "sign", scope: !1250, file: !2, line: 717, type: !44)
!1255 = !DILocation(line: 717, column: 7, scope: !1250)
!1256 = !DILocalVariable(name: "den", scope: !1250, file: !2, line: 718, type: !56)
!1257 = !DILocation(line: 718, column: 10, scope: !1250)
!1258 = !DILocation(line: 720, column: 7, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1250, file: !2, line: 720, column: 7)
!1260 = !DILocation(line: 720, column: 10, scope: !1259)
!1261 = !DILocation(line: 721, column: 8, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1263, file: !2, line: 721, column: 8)
!1263 = distinct !DILexicalBlock(scope: !1259, file: !2, line: 720, column: 15)
!1264 = !DILocation(line: 721, column: 13, scope: !1262)
!1265 = !DILocation(line: 722, column: 17, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !1262, file: !2, line: 721, column: 31)
!1267 = !DILocation(line: 722, column: 22, scope: !1266)
!1268 = !DILocation(line: 724, column: 23, scope: !1266)
!1269 = !DILocation(line: 724, column: 27, scope: !1266)
!1270 = !DILocation(line: 724, column: 5, scope: !1266)
!1271 = !DILocation(line: 724, column: 33, scope: !1266)
!1272 = !DILocation(line: 724, column: 45, scope: !1266)
!1273 = !DILocation(line: 722, column: 5, scope: !1266)
!1274 = !DILocation(line: 725, column: 8, scope: !1266)
!1275 = !DILocation(line: 726, column: 4, scope: !1266)
!1276 = !DILocation(line: 727, column: 11, scope: !1262)
!1277 = !DILocation(line: 727, column: 10, scope: !1262)
!1278 = !DILocation(line: 727, column: 8, scope: !1262)
!1279 = !DILocation(line: 727, column: 20, scope: !1262)
!1280 = !DILocation(line: 728, column: 3, scope: !1263)
!1281 = !DILocation(line: 729, column: 7, scope: !1250)
!1282 = !DILocation(line: 730, column: 7, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !1250, file: !2, line: 730, column: 7)
!1284 = !DILocation(line: 730, column: 10, scope: !1283)
!1285 = !DILocation(line: 731, column: 4, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1283, file: !2, line: 730, column: 15)
!1287 = !DILocation(line: 731, column: 11, scope: !1286)
!1288 = !DILocation(line: 731, column: 14, scope: !1286)
!1289 = !DILocation(line: 731, column: 27, scope: !1286)
!1290 = !DILocation(line: 731, column: 30, scope: !1286)
!1291 = !DILocation(line: 731, column: 34, scope: !1286)
!1292 = !DILocation(line: 0, scope: !1286)
!1293 = !DILocation(line: 732, column: 8, scope: !1286)
!1294 = !DILocation(line: 732, column: 21, scope: !1286)
!1295 = distinct !{!1295, !1285, !1296, !561}
!1296 = !DILocation(line: 732, column: 28, scope: !1286)
!1297 = !DILocation(line: 733, column: 3, scope: !1286)
!1298 = !DILocation(line: 734, column: 24, scope: !1250)
!1299 = !DILocation(line: 734, column: 32, scope: !1250)
!1300 = !DILocation(line: 734, column: 35, scope: !1250)
!1301 = !DILocation(line: 734, column: 29, scope: !1250)
!1302 = !DILocation(line: 734, column: 14, scope: !1250)
!1303 = !DILocation(line: 734, column: 3, scope: !1250)
!1304 = !DILocation(line: 734, column: 7, scope: !1250)
!1305 = !DILocation(line: 734, column: 6, scope: !1250)
!1306 = !DILocation(line: 734, column: 8, scope: !1250)
!1307 = !DILocation(line: 734, column: 12, scope: !1250)
!1308 = !DILocation(line: 735, column: 14, scope: !1250)
!1309 = !DILocation(line: 735, column: 3, scope: !1250)
!1310 = !DILocation(line: 735, column: 7, scope: !1250)
!1311 = !DILocation(line: 735, column: 6, scope: !1250)
!1312 = !DILocation(line: 735, column: 8, scope: !1250)
!1313 = !DILocation(line: 735, column: 12, scope: !1250)
!1314 = !DILocation(line: 736, column: 2, scope: !1250)
!1315 = !DILocation(line: 715, column: 22, scope: !1245)
!1316 = !DILocation(line: 715, column: 2, scope: !1245)
!1317 = distinct !{!1317, !1248, !1318, !561}
!1318 = !DILocation(line: 736, column: 2, scope: !1242)
!1319 = !DILocation(line: 737, column: 25, scope: !1200)
!1320 = !DILocation(line: 737, column: 30, scope: !1200)
!1321 = !DILocation(line: 737, column: 43, scope: !1200)
!1322 = !DILocation(line: 737, column: 11, scope: !1200)
!1323 = !DILocation(line: 737, column: 9, scope: !1200)
!1324 = !DILocation(line: 738, column: 20, scope: !1200)
!1325 = !DILocation(line: 738, column: 2, scope: !1200)
!1326 = !DILocation(line: 739, column: 10, scope: !1200)
!1327 = !DILocation(line: 739, column: 2, scope: !1200)
!1328 = distinct !DISubprogram(name: "TIFFWritePerSampleShorts", scope: !2, file: !2, line: 561, type: !1329, scopeLine: 562, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, retainedNodes: !437)
!1329 = !DISubroutineType(types: !1330)
!1330 = !{!44, !45, !295, !402}
!1331 = !DILocalVariable(name: "tif", arg: 1, scope: !1328, file: !2, line: 561, type: !45)
!1332 = !DILocation(line: 561, column: 32, scope: !1328)
!1333 = !DILocalVariable(name: "tag", arg: 2, scope: !1328, file: !2, line: 561, type: !295)
!1334 = !DILocation(line: 561, column: 44, scope: !1328)
!1335 = !DILocalVariable(name: "dir", arg: 3, scope: !1328, file: !2, line: 561, type: !402)
!1336 = !DILocation(line: 561, column: 63, scope: !1328)
!1337 = !DILocalVariable(name: "buf", scope: !1328, file: !2, line: 563, type: !1338)
!1338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 160, elements: !1339)
!1339 = !{!1340}
!1340 = !DISubrange(count: 10)
!1341 = !DILocation(line: 563, column: 9, scope: !1328)
!1342 = !DILocalVariable(name: "v", scope: !1328, file: !2, line: 563, type: !85)
!1343 = !DILocation(line: 563, column: 18, scope: !1328)
!1344 = !DILocalVariable(name: "w", scope: !1328, file: !2, line: 564, type: !113)
!1345 = !DILocation(line: 564, column: 10, scope: !1328)
!1346 = !DILocation(line: 564, column: 14, scope: !1328)
!1347 = !DILocalVariable(name: "i", scope: !1328, file: !2, line: 565, type: !44)
!1348 = !DILocation(line: 565, column: 6, scope: !1328)
!1349 = !DILocalVariable(name: "status", scope: !1328, file: !2, line: 565, type: !44)
!1350 = !DILocation(line: 565, column: 9, scope: !1328)
!1351 = !DILocalVariable(name: "samples", scope: !1328, file: !2, line: 565, type: !44)
!1352 = !DILocation(line: 565, column: 17, scope: !1328)
!1353 = !DILocation(line: 565, column: 27, scope: !1328)
!1354 = !DILocation(line: 565, column: 32, scope: !1328)
!1355 = !DILocation(line: 565, column: 40, scope: !1328)
!1356 = !DILocation(line: 567, column: 6, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1328, file: !2, line: 567, column: 6)
!1358 = !DILocation(line: 567, column: 14, scope: !1357)
!1359 = !DILocation(line: 568, column: 29, scope: !1357)
!1360 = !DILocation(line: 568, column: 37, scope: !1357)
!1361 = !DILocation(line: 568, column: 17, scope: !1357)
!1362 = !DILocation(line: 568, column: 5, scope: !1357)
!1363 = !DILocation(line: 568, column: 3, scope: !1357)
!1364 = !DILocation(line: 569, column: 15, scope: !1328)
!1365 = !DILocation(line: 569, column: 20, scope: !1328)
!1366 = !DILocation(line: 569, column: 2, scope: !1328)
!1367 = !DILocation(line: 570, column: 9, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1328, file: !2, line: 570, column: 2)
!1369 = !DILocation(line: 570, column: 7, scope: !1368)
!1370 = !DILocation(line: 570, column: 14, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1368, file: !2, line: 570, column: 2)
!1372 = !DILocation(line: 570, column: 18, scope: !1371)
!1373 = !DILocation(line: 570, column: 16, scope: !1371)
!1374 = !DILocation(line: 570, column: 2, scope: !1368)
!1375 = !DILocation(line: 571, column: 10, scope: !1371)
!1376 = !DILocation(line: 571, column: 3, scope: !1371)
!1377 = !DILocation(line: 571, column: 5, scope: !1371)
!1378 = !DILocation(line: 571, column: 8, scope: !1371)
!1379 = !DILocation(line: 570, column: 28, scope: !1371)
!1380 = !DILocation(line: 570, column: 2, scope: !1371)
!1381 = distinct !{!1381, !1374, !1382, !561}
!1382 = !DILocation(line: 571, column: 10, scope: !1368)
!1383 = !DILocation(line: 572, column: 31, scope: !1328)
!1384 = !DILocation(line: 572, column: 48, scope: !1328)
!1385 = !DILocation(line: 572, column: 53, scope: !1328)
!1386 = !DILocation(line: 572, column: 58, scope: !1328)
!1387 = !DILocation(line: 572, column: 67, scope: !1328)
!1388 = !DILocation(line: 572, column: 11, scope: !1328)
!1389 = !DILocation(line: 572, column: 9, scope: !1328)
!1390 = !DILocation(line: 573, column: 6, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1328, file: !2, line: 573, column: 6)
!1392 = !DILocation(line: 573, column: 11, scope: !1391)
!1393 = !DILocation(line: 573, column: 8, scope: !1391)
!1394 = !DILocation(line: 574, column: 21, scope: !1391)
!1395 = !DILocation(line: 574, column: 3, scope: !1391)
!1396 = !DILocation(line: 575, column: 10, scope: !1328)
!1397 = !DILocation(line: 575, column: 2, scope: !1328)
!1398 = distinct !DISubprogram(name: "TIFFWritePerSampleAnys", scope: !2, file: !2, line: 584, type: !1399, scopeLine: 586, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, retainedNodes: !437)
!1399 = !DISubroutineType(types: !1400)
!1400 = !{!44, !45, !300, !295, !402}
!1401 = !DILocalVariable(name: "tif", arg: 1, scope: !1398, file: !2, line: 584, type: !45)
!1402 = !DILocation(line: 584, column: 30, scope: !1398)
!1403 = !DILocalVariable(name: "type", arg: 2, scope: !1398, file: !2, line: 585, type: !300)
!1404 = !DILocation(line: 585, column: 18, scope: !1398)
!1405 = !DILocalVariable(name: "tag", arg: 3, scope: !1398, file: !2, line: 585, type: !295)
!1406 = !DILocation(line: 585, column: 31, scope: !1398)
!1407 = !DILocalVariable(name: "dir", arg: 4, scope: !1398, file: !2, line: 585, type: !402)
!1408 = !DILocation(line: 585, column: 50, scope: !1398)
!1409 = !DILocalVariable(name: "buf", scope: !1398, file: !2, line: 587, type: !1410)
!1410 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 640, elements: !1339)
!1411 = !DILocation(line: 587, column: 9, scope: !1398)
!1412 = !DILocalVariable(name: "v", scope: !1398, file: !2, line: 587, type: !98)
!1413 = !DILocation(line: 587, column: 18, scope: !1398)
!1414 = !DILocalVariable(name: "w", scope: !1398, file: !2, line: 588, type: !410)
!1415 = !DILocation(line: 588, column: 10, scope: !1398)
!1416 = !DILocation(line: 588, column: 14, scope: !1398)
!1417 = !DILocalVariable(name: "i", scope: !1398, file: !2, line: 589, type: !44)
!1418 = !DILocation(line: 589, column: 6, scope: !1398)
!1419 = !DILocalVariable(name: "status", scope: !1398, file: !2, line: 589, type: !44)
!1420 = !DILocation(line: 589, column: 9, scope: !1398)
!1421 = !DILocalVariable(name: "samples", scope: !1398, file: !2, line: 590, type: !44)
!1422 = !DILocation(line: 590, column: 6, scope: !1398)
!1423 = !DILocation(line: 590, column: 22, scope: !1398)
!1424 = !DILocation(line: 590, column: 27, scope: !1398)
!1425 = !DILocation(line: 590, column: 35, scope: !1398)
!1426 = !DILocation(line: 590, column: 16, scope: !1398)
!1427 = !DILocation(line: 592, column: 6, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1398, file: !2, line: 592, column: 6)
!1429 = !DILocation(line: 592, column: 14, scope: !1428)
!1430 = !DILocation(line: 593, column: 29, scope: !1428)
!1431 = !DILocation(line: 593, column: 37, scope: !1428)
!1432 = !DILocation(line: 593, column: 17, scope: !1428)
!1433 = !DILocation(line: 593, column: 5, scope: !1428)
!1434 = !DILocation(line: 593, column: 3, scope: !1428)
!1435 = !DILocation(line: 594, column: 15, scope: !1398)
!1436 = !DILocation(line: 594, column: 20, scope: !1398)
!1437 = !DILocation(line: 594, column: 2, scope: !1398)
!1438 = !DILocation(line: 595, column: 9, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1398, file: !2, line: 595, column: 2)
!1440 = !DILocation(line: 595, column: 7, scope: !1439)
!1441 = !DILocation(line: 595, column: 14, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !1439, file: !2, line: 595, column: 2)
!1443 = !DILocation(line: 595, column: 18, scope: !1442)
!1444 = !DILocation(line: 595, column: 16, scope: !1442)
!1445 = !DILocation(line: 595, column: 2, scope: !1439)
!1446 = !DILocation(line: 596, column: 10, scope: !1442)
!1447 = !DILocation(line: 596, column: 3, scope: !1442)
!1448 = !DILocation(line: 596, column: 5, scope: !1442)
!1449 = !DILocation(line: 596, column: 8, scope: !1442)
!1450 = !DILocation(line: 595, column: 28, scope: !1442)
!1451 = !DILocation(line: 595, column: 2, scope: !1442)
!1452 = distinct !{!1452, !1445, !1453, !561}
!1453 = !DILocation(line: 596, column: 10, scope: !1439)
!1454 = !DILocation(line: 597, column: 29, scope: !1398)
!1455 = !DILocation(line: 597, column: 34, scope: !1398)
!1456 = !DILocation(line: 597, column: 40, scope: !1398)
!1457 = !DILocation(line: 597, column: 45, scope: !1398)
!1458 = !DILocation(line: 597, column: 50, scope: !1398)
!1459 = !DILocation(line: 597, column: 59, scope: !1398)
!1460 = !DILocation(line: 597, column: 11, scope: !1398)
!1461 = !DILocation(line: 597, column: 9, scope: !1398)
!1462 = !DILocation(line: 598, column: 6, scope: !1463)
!1463 = distinct !DILexicalBlock(scope: !1398, file: !2, line: 598, column: 6)
!1464 = !DILocation(line: 598, column: 11, scope: !1463)
!1465 = !DILocation(line: 598, column: 8, scope: !1463)
!1466 = !DILocation(line: 599, column: 13, scope: !1463)
!1467 = !DILocation(line: 599, column: 3, scope: !1463)
!1468 = !DILocation(line: 600, column: 10, scope: !1398)
!1469 = !DILocation(line: 600, column: 2, scope: !1398)
!1470 = distinct !DISubprogram(name: "TIFFSetupShortPair", scope: !2, file: !2, line: 609, type: !1329, scopeLine: 610, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, retainedNodes: !437)
!1471 = !DILocalVariable(name: "tif", arg: 1, scope: !1470, file: !2, line: 609, type: !45)
!1472 = !DILocation(line: 609, column: 26, scope: !1470)
!1473 = !DILocalVariable(name: "tag", arg: 2, scope: !1470, file: !2, line: 609, type: !295)
!1474 = !DILocation(line: 609, column: 38, scope: !1470)
!1475 = !DILocalVariable(name: "dir", arg: 3, scope: !1470, file: !2, line: 609, type: !402)
!1476 = !DILocation(line: 609, column: 57, scope: !1470)
!1477 = !DILocalVariable(name: "v", scope: !1470, file: !2, line: 611, type: !108)
!1478 = !DILocation(line: 611, column: 9, scope: !1470)
!1479 = !DILocation(line: 613, column: 15, scope: !1470)
!1480 = !DILocation(line: 613, column: 20, scope: !1470)
!1481 = !DILocation(line: 613, column: 26, scope: !1470)
!1482 = !DILocation(line: 613, column: 33, scope: !1470)
!1483 = !DILocation(line: 613, column: 2, scope: !1470)
!1484 = !DILocation(line: 614, column: 30, scope: !1470)
!1485 = !DILocation(line: 614, column: 47, scope: !1470)
!1486 = !DILocation(line: 614, column: 52, scope: !1470)
!1487 = !DILocation(line: 614, column: 60, scope: !1470)
!1488 = !DILocation(line: 614, column: 10, scope: !1470)
!1489 = !DILocation(line: 614, column: 2, scope: !1470)
!1490 = distinct !DISubprogram(name: "TIFFWriteInkNames", scope: !2, file: !2, line: 894, type: !1491, scopeLine: 895, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, retainedNodes: !437)
!1491 = !DISubroutineType(types: !1492)
!1492 = !{!44, !45, !402}
!1493 = !DILocalVariable(name: "tif", arg: 1, scope: !1490, file: !2, line: 894, type: !45)
!1494 = !DILocation(line: 894, column: 25, scope: !1490)
!1495 = !DILocalVariable(name: "dir", arg: 2, scope: !1490, file: !2, line: 894, type: !402)
!1496 = !DILocation(line: 894, column: 44, scope: !1490)
!1497 = !DILocalVariable(name: "td", scope: !1490, file: !2, line: 896, type: !468)
!1498 = !DILocation(line: 896, column: 17, scope: !1490)
!1499 = !DILocation(line: 896, column: 23, scope: !1490)
!1500 = !DILocation(line: 896, column: 28, scope: !1490)
!1501 = !DILocation(line: 898, column: 2, scope: !1490)
!1502 = !DILocation(line: 898, column: 7, scope: !1490)
!1503 = !DILocation(line: 898, column: 16, scope: !1490)
!1504 = !DILocation(line: 899, column: 2, scope: !1490)
!1505 = !DILocation(line: 899, column: 7, scope: !1490)
!1506 = !DILocation(line: 899, column: 17, scope: !1490)
!1507 = !DILocation(line: 900, column: 20, scope: !1490)
!1508 = !DILocation(line: 900, column: 24, scope: !1490)
!1509 = !DILocation(line: 900, column: 2, scope: !1490)
!1510 = !DILocation(line: 900, column: 7, scope: !1490)
!1511 = !DILocation(line: 900, column: 18, scope: !1490)
!1512 = !DILocation(line: 901, column: 29, scope: !1490)
!1513 = !DILocation(line: 901, column: 34, scope: !1490)
!1514 = !DILocation(line: 901, column: 39, scope: !1490)
!1515 = !DILocation(line: 901, column: 43, scope: !1490)
!1516 = !DILocation(line: 901, column: 10, scope: !1490)
!1517 = !DILocation(line: 901, column: 2, scope: !1490)
!1518 = distinct !DISubprogram(name: "TIFFWriteTransferFunction", scope: !2, file: !2, line: 869, type: !1491, scopeLine: 870, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, retainedNodes: !437)
!1519 = !DILocalVariable(name: "tif", arg: 1, scope: !1518, file: !2, line: 869, type: !45)
!1520 = !DILocation(line: 869, column: 33, scope: !1518)
!1521 = !DILocalVariable(name: "dir", arg: 2, scope: !1518, file: !2, line: 869, type: !402)
!1522 = !DILocation(line: 869, column: 52, scope: !1518)
!1523 = !DILocalVariable(name: "td", scope: !1518, file: !2, line: 871, type: !468)
!1524 = !DILocation(line: 871, column: 17, scope: !1518)
!1525 = !DILocation(line: 871, column: 23, scope: !1518)
!1526 = !DILocation(line: 871, column: 28, scope: !1518)
!1527 = !DILocalVariable(name: "n", scope: !1518, file: !2, line: 872, type: !194)
!1528 = !DILocation(line: 872, column: 10, scope: !1518)
!1529 = !DILocation(line: 872, column: 19, scope: !1518)
!1530 = !DILocation(line: 872, column: 23, scope: !1518)
!1531 = !DILocation(line: 872, column: 17, scope: !1518)
!1532 = !DILocation(line: 872, column: 41, scope: !1518)
!1533 = !DILocation(line: 872, column: 14, scope: !1518)
!1534 = !DILocalVariable(name: "tf", scope: !1518, file: !2, line: 873, type: !1135)
!1535 = !DILocation(line: 873, column: 11, scope: !1518)
!1536 = !DILocation(line: 873, column: 16, scope: !1518)
!1537 = !DILocation(line: 873, column: 20, scope: !1518)
!1538 = !DILocalVariable(name: "ncols", scope: !1518, file: !2, line: 874, type: !44)
!1539 = !DILocation(line: 874, column: 6, scope: !1518)
!1540 = !DILocation(line: 882, column: 10, scope: !1518)
!1541 = !DILocation(line: 882, column: 14, scope: !1518)
!1542 = !DILocation(line: 882, column: 35, scope: !1518)
!1543 = !DILocation(line: 882, column: 39, scope: !1518)
!1544 = !DILocation(line: 882, column: 33, scope: !1518)
!1545 = !DILocation(line: 882, column: 2, scope: !1518)
!1546 = !DILocation(line: 883, column: 27, scope: !1547)
!1547 = distinct !DILexicalBlock(scope: !1548, file: !2, line: 883, column: 15)
!1548 = distinct !DILexicalBlock(scope: !1518, file: !2, line: 882, column: 56)
!1549 = !DILocation(line: 883, column: 34, scope: !1547)
!1550 = !DILocation(line: 883, column: 41, scope: !1547)
!1551 = !DILocation(line: 883, column: 15, scope: !1547)
!1552 = !DILocation(line: 883, column: 53, scope: !1553)
!1553 = distinct !DILexicalBlock(scope: !1547, file: !2, line: 883, column: 45)
!1554 = !DILocation(line: 883, column: 58, scope: !1553)
!1555 = !DILocation(line: 883, column: 42, scope: !1547)
!1556 = !DILocation(line: 884, column: 27, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !1548, file: !2, line: 884, column: 15)
!1558 = !DILocation(line: 884, column: 34, scope: !1557)
!1559 = !DILocation(line: 884, column: 41, scope: !1557)
!1560 = !DILocation(line: 884, column: 15, scope: !1557)
!1561 = !DILocation(line: 884, column: 53, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !1557, file: !2, line: 884, column: 45)
!1563 = !DILocation(line: 884, column: 58, scope: !1562)
!1564 = !DILocation(line: 884, column: 42, scope: !1557)
!1565 = !DILocation(line: 885, column: 24, scope: !1548)
!1566 = !DILocation(line: 886, column: 2, scope: !1548)
!1567 = !DILocation(line: 887, column: 30, scope: !1518)
!1568 = !DILocation(line: 888, column: 32, scope: !1518)
!1569 = !DILocation(line: 888, column: 37, scope: !1518)
!1570 = !DILocation(line: 888, column: 44, scope: !1518)
!1571 = !DILocation(line: 887, column: 10, scope: !1518)
!1572 = !DILocation(line: 887, column: 2, scope: !1518)
!1573 = distinct !DISubprogram(name: "TIFFWriteNormalTag", scope: !2, file: !2, line: 378, type: !1574, scopeLine: 379, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, retainedNodes: !437)
!1574 = !DISubroutineType(types: !1575)
!1575 = !{!44, !45, !402, !633}
!1576 = !DILocalVariable(name: "tif", arg: 1, scope: !1573, file: !2, line: 378, type: !45)
!1577 = !DILocation(line: 378, column: 26, scope: !1573)
!1578 = !DILocalVariable(name: "dir", arg: 2, scope: !1573, file: !2, line: 378, type: !402)
!1579 = !DILocation(line: 378, column: 45, scope: !1573)
!1580 = !DILocalVariable(name: "fip", arg: 3, scope: !1573, file: !2, line: 378, type: !633)
!1581 = !DILocation(line: 378, column: 71, scope: !1573)
!1582 = !DILocalVariable(name: "wc", scope: !1573, file: !2, line: 380, type: !317)
!1583 = !DILocation(line: 380, column: 10, scope: !1573)
!1584 = !DILocation(line: 380, column: 25, scope: !1573)
!1585 = !DILocation(line: 380, column: 30, scope: !1573)
!1586 = !DILocalVariable(name: "wc2", scope: !1573, file: !2, line: 381, type: !56)
!1587 = !DILocation(line: 381, column: 9, scope: !1573)
!1588 = !DILocation(line: 383, column: 27, scope: !1573)
!1589 = !DILocation(line: 383, column: 32, scope: !1573)
!1590 = !DILocation(line: 383, column: 18, scope: !1573)
!1591 = !DILocation(line: 383, column: 2, scope: !1573)
!1592 = !DILocation(line: 383, column: 7, scope: !1573)
!1593 = !DILocation(line: 383, column: 16, scope: !1573)
!1594 = !DILocation(line: 384, column: 29, scope: !1573)
!1595 = !DILocation(line: 384, column: 34, scope: !1573)
!1596 = !DILocation(line: 384, column: 19, scope: !1573)
!1597 = !DILocation(line: 384, column: 2, scope: !1573)
!1598 = !DILocation(line: 384, column: 7, scope: !1573)
!1599 = !DILocation(line: 384, column: 17, scope: !1573)
!1600 = !DILocation(line: 385, column: 20, scope: !1573)
!1601 = !DILocation(line: 385, column: 2, scope: !1573)
!1602 = !DILocation(line: 385, column: 7, scope: !1573)
!1603 = !DILocation(line: 385, column: 18, scope: !1573)
!1604 = !DILocation(line: 387, column: 10, scope: !1573)
!1605 = !DILocation(line: 387, column: 15, scope: !1573)
!1606 = !DILocation(line: 387, column: 2, scope: !1573)
!1607 = !DILocation(line: 390, column: 7, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1609, file: !2, line: 390, column: 7)
!1609 = distinct !DILexicalBlock(scope: !1573, file: !2, line: 387, column: 27)
!1610 = !DILocation(line: 390, column: 10, scope: !1608)
!1611 = !DILocalVariable(name: "wp", scope: !1612, file: !2, line: 391, type: !113)
!1612 = distinct !DILexicalBlock(scope: !1608, file: !2, line: 390, column: 15)
!1613 = !DILocation(line: 391, column: 12, scope: !1612)
!1614 = !DILocation(line: 392, column: 8, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !1612, file: !2, line: 392, column: 8)
!1616 = !DILocation(line: 392, column: 11, scope: !1615)
!1617 = !DILocation(line: 393, column: 18, scope: !1615)
!1618 = !DILocation(line: 393, column: 23, scope: !1615)
!1619 = !DILocation(line: 393, column: 28, scope: !1615)
!1620 = !DILocation(line: 393, column: 5, scope: !1615)
!1621 = !DILocation(line: 395, column: 18, scope: !1615)
!1622 = !DILocation(line: 395, column: 23, scope: !1615)
!1623 = !DILocation(line: 395, column: 28, scope: !1615)
!1624 = !DILocation(line: 395, column: 5, scope: !1615)
!1625 = !DILocation(line: 396, column: 9, scope: !1626)
!1626 = distinct !DILexicalBlock(scope: !1612, file: !2, line: 396, column: 8)
!1627 = !DILocation(line: 396, column: 8, scope: !1626)
!1628 = !DILocation(line: 397, column: 5, scope: !1626)
!1629 = !DILocation(line: 398, column: 3, scope: !1612)
!1630 = !DILocalVariable(name: "sv", scope: !1631, file: !2, line: 399, type: !85)
!1631 = distinct !DILexicalBlock(scope: !1608, file: !2, line: 398, column: 10)
!1632 = !DILocation(line: 399, column: 11, scope: !1631)
!1633 = !DILocation(line: 400, column: 17, scope: !1631)
!1634 = !DILocation(line: 400, column: 22, scope: !1631)
!1635 = !DILocation(line: 400, column: 27, scope: !1631)
!1636 = !DILocation(line: 400, column: 4, scope: !1631)
!1637 = !DILocation(line: 402, column: 8, scope: !1631)
!1638 = !DILocation(line: 401, column: 4, scope: !1631)
!1639 = !DILocation(line: 401, column: 9, scope: !1631)
!1640 = !DILocation(line: 401, column: 21, scope: !1631)
!1641 = !DILocation(line: 404, column: 3, scope: !1609)
!1642 = !DILocation(line: 407, column: 7, scope: !1643)
!1643 = distinct !DILexicalBlock(scope: !1609, file: !2, line: 407, column: 7)
!1644 = !DILocation(line: 407, column: 10, scope: !1643)
!1645 = !DILocalVariable(name: "lp", scope: !1646, file: !2, line: 408, type: !131)
!1646 = distinct !DILexicalBlock(scope: !1643, file: !2, line: 407, column: 15)
!1647 = !DILocation(line: 408, column: 12, scope: !1646)
!1648 = !DILocation(line: 409, column: 8, scope: !1649)
!1649 = distinct !DILexicalBlock(scope: !1646, file: !2, line: 409, column: 8)
!1650 = !DILocation(line: 409, column: 11, scope: !1649)
!1651 = !DILocation(line: 410, column: 18, scope: !1649)
!1652 = !DILocation(line: 410, column: 23, scope: !1649)
!1653 = !DILocation(line: 410, column: 28, scope: !1649)
!1654 = !DILocation(line: 410, column: 5, scope: !1649)
!1655 = !DILocation(line: 412, column: 18, scope: !1649)
!1656 = !DILocation(line: 412, column: 23, scope: !1649)
!1657 = !DILocation(line: 412, column: 28, scope: !1649)
!1658 = !DILocation(line: 412, column: 5, scope: !1649)
!1659 = !DILocation(line: 413, column: 9, scope: !1660)
!1660 = distinct !DILexicalBlock(scope: !1646, file: !2, line: 413, column: 8)
!1661 = !DILocation(line: 413, column: 8, scope: !1660)
!1662 = !DILocation(line: 414, column: 5, scope: !1660)
!1663 = !DILocation(line: 415, column: 3, scope: !1646)
!1664 = !DILocation(line: 417, column: 17, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !1643, file: !2, line: 415, column: 10)
!1666 = !DILocation(line: 417, column: 22, scope: !1665)
!1667 = !DILocation(line: 417, column: 27, scope: !1665)
!1668 = !DILocation(line: 417, column: 39, scope: !1665)
!1669 = !DILocation(line: 417, column: 44, scope: !1665)
!1670 = !DILocation(line: 417, column: 4, scope: !1665)
!1671 = !DILocation(line: 419, column: 3, scope: !1609)
!1672 = !DILocation(line: 422, column: 7, scope: !1673)
!1673 = distinct !DILexicalBlock(scope: !1609, file: !2, line: 422, column: 7)
!1674 = !DILocation(line: 422, column: 10, scope: !1673)
!1675 = !DILocalVariable(name: "fp", scope: !1676, file: !2, line: 423, type: !136)
!1676 = distinct !DILexicalBlock(scope: !1673, file: !2, line: 422, column: 15)
!1677 = !DILocation(line: 423, column: 11, scope: !1676)
!1678 = !DILocation(line: 424, column: 8, scope: !1679)
!1679 = distinct !DILexicalBlock(scope: !1676, file: !2, line: 424, column: 8)
!1680 = !DILocation(line: 424, column: 11, scope: !1679)
!1681 = !DILocation(line: 425, column: 18, scope: !1679)
!1682 = !DILocation(line: 425, column: 23, scope: !1679)
!1683 = !DILocation(line: 425, column: 28, scope: !1679)
!1684 = !DILocation(line: 425, column: 5, scope: !1679)
!1685 = !DILocation(line: 427, column: 18, scope: !1679)
!1686 = !DILocation(line: 427, column: 23, scope: !1679)
!1687 = !DILocation(line: 427, column: 28, scope: !1679)
!1688 = !DILocation(line: 427, column: 5, scope: !1679)
!1689 = !DILocation(line: 428, column: 9, scope: !1690)
!1690 = distinct !DILexicalBlock(scope: !1676, file: !2, line: 428, column: 8)
!1691 = !DILocation(line: 428, column: 8, scope: !1690)
!1692 = !DILocation(line: 429, column: 5, scope: !1690)
!1693 = !DILocation(line: 430, column: 3, scope: !1676)
!1694 = !DILocalVariable(name: "fv", scope: !1695, file: !2, line: 431, type: !101)
!1695 = distinct !DILexicalBlock(scope: !1673, file: !2, line: 430, column: 10)
!1696 = !DILocation(line: 431, column: 10, scope: !1695)
!1697 = !DILocation(line: 432, column: 17, scope: !1695)
!1698 = !DILocation(line: 432, column: 22, scope: !1695)
!1699 = !DILocation(line: 432, column: 27, scope: !1695)
!1700 = !DILocation(line: 432, column: 4, scope: !1695)
!1701 = !DILocation(line: 433, column: 9, scope: !1702)
!1702 = distinct !DILexicalBlock(scope: !1695, file: !2, line: 433, column: 8)
!1703 = !DILocation(line: 433, column: 8, scope: !1702)
!1704 = !DILocation(line: 434, column: 5, scope: !1702)
!1705 = !DILocation(line: 436, column: 3, scope: !1609)
!1706 = !DILocation(line: 438, column: 7, scope: !1707)
!1707 = distinct !DILexicalBlock(scope: !1609, file: !2, line: 438, column: 7)
!1708 = !DILocation(line: 438, column: 10, scope: !1707)
!1709 = !DILocalVariable(name: "fp", scope: !1710, file: !2, line: 439, type: !136)
!1710 = distinct !DILexicalBlock(scope: !1707, file: !2, line: 438, column: 15)
!1711 = !DILocation(line: 439, column: 11, scope: !1710)
!1712 = !DILocation(line: 440, column: 8, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1710, file: !2, line: 440, column: 8)
!1714 = !DILocation(line: 440, column: 11, scope: !1713)
!1715 = !DILocation(line: 441, column: 18, scope: !1713)
!1716 = !DILocation(line: 441, column: 23, scope: !1713)
!1717 = !DILocation(line: 441, column: 28, scope: !1713)
!1718 = !DILocation(line: 441, column: 5, scope: !1713)
!1719 = !DILocation(line: 443, column: 18, scope: !1713)
!1720 = !DILocation(line: 443, column: 23, scope: !1713)
!1721 = !DILocation(line: 443, column: 28, scope: !1713)
!1722 = !DILocation(line: 443, column: 5, scope: !1713)
!1723 = !DILocation(line: 444, column: 9, scope: !1724)
!1724 = distinct !DILexicalBlock(scope: !1710, file: !2, line: 444, column: 8)
!1725 = !DILocation(line: 444, column: 8, scope: !1724)
!1726 = !DILocation(line: 445, column: 5, scope: !1724)
!1727 = !DILocation(line: 446, column: 3, scope: !1710)
!1728 = !DILocalVariable(name: "fv", scope: !1729, file: !2, line: 447, type: !101)
!1729 = distinct !DILexicalBlock(scope: !1707, file: !2, line: 446, column: 10)
!1730 = !DILocation(line: 447, column: 10, scope: !1729)
!1731 = !DILocation(line: 448, column: 17, scope: !1729)
!1732 = !DILocation(line: 448, column: 22, scope: !1729)
!1733 = !DILocation(line: 448, column: 27, scope: !1729)
!1734 = !DILocation(line: 448, column: 4, scope: !1729)
!1735 = !DILocation(line: 449, column: 9, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !1729, file: !2, line: 449, column: 8)
!1737 = !DILocation(line: 449, column: 8, scope: !1736)
!1738 = !DILocation(line: 450, column: 5, scope: !1736)
!1739 = !DILocation(line: 452, column: 3, scope: !1609)
!1740 = !DILocation(line: 454, column: 7, scope: !1741)
!1741 = distinct !DILexicalBlock(scope: !1609, file: !2, line: 454, column: 7)
!1742 = !DILocation(line: 454, column: 10, scope: !1741)
!1743 = !DILocalVariable(name: "dp", scope: !1744, file: !2, line: 455, type: !410)
!1744 = distinct !DILexicalBlock(scope: !1741, file: !2, line: 454, column: 15)
!1745 = !DILocation(line: 455, column: 12, scope: !1744)
!1746 = !DILocation(line: 456, column: 8, scope: !1747)
!1747 = distinct !DILexicalBlock(scope: !1744, file: !2, line: 456, column: 8)
!1748 = !DILocation(line: 456, column: 11, scope: !1747)
!1749 = !DILocation(line: 457, column: 18, scope: !1747)
!1750 = !DILocation(line: 457, column: 23, scope: !1747)
!1751 = !DILocation(line: 457, column: 28, scope: !1747)
!1752 = !DILocation(line: 457, column: 5, scope: !1747)
!1753 = !DILocation(line: 459, column: 18, scope: !1747)
!1754 = !DILocation(line: 459, column: 23, scope: !1747)
!1755 = !DILocation(line: 459, column: 28, scope: !1747)
!1756 = !DILocation(line: 459, column: 5, scope: !1747)
!1757 = !DILocation(line: 460, column: 9, scope: !1758)
!1758 = distinct !DILexicalBlock(scope: !1744, file: !2, line: 460, column: 8)
!1759 = !DILocation(line: 460, column: 8, scope: !1758)
!1760 = !DILocation(line: 461, column: 5, scope: !1758)
!1761 = !DILocation(line: 462, column: 3, scope: !1744)
!1762 = !DILocalVariable(name: "dv", scope: !1763, file: !2, line: 463, type: !98)
!1763 = distinct !DILexicalBlock(scope: !1741, file: !2, line: 462, column: 10)
!1764 = !DILocation(line: 463, column: 11, scope: !1763)
!1765 = !DILocation(line: 464, column: 17, scope: !1763)
!1766 = !DILocation(line: 464, column: 22, scope: !1763)
!1767 = !DILocation(line: 464, column: 27, scope: !1763)
!1768 = !DILocation(line: 464, column: 4, scope: !1763)
!1769 = !DILocation(line: 465, column: 9, scope: !1770)
!1770 = distinct !DILexicalBlock(scope: !1763, file: !2, line: 465, column: 8)
!1771 = !DILocation(line: 465, column: 8, scope: !1770)
!1772 = !DILocation(line: 466, column: 5, scope: !1770)
!1773 = !DILocation(line: 468, column: 3, scope: !1609)
!1774 = !DILocalVariable(name: "cp", scope: !1775, file: !2, line: 470, type: !52)
!1775 = distinct !DILexicalBlock(scope: !1609, file: !2, line: 470, column: 3)
!1776 = !DILocation(line: 470, column: 11, scope: !1775)
!1777 = !DILocation(line: 471, column: 18, scope: !1775)
!1778 = !DILocation(line: 471, column: 23, scope: !1775)
!1779 = !DILocation(line: 471, column: 28, scope: !1775)
!1780 = !DILocation(line: 471, column: 5, scope: !1775)
!1781 = !DILocation(line: 472, column: 40, scope: !1775)
!1782 = !DILocation(line: 472, column: 33, scope: !1775)
!1783 = !DILocation(line: 472, column: 44, scope: !1775)
!1784 = !DILocation(line: 472, column: 23, scope: !1775)
!1785 = !DILocation(line: 472, column: 5, scope: !1775)
!1786 = !DILocation(line: 472, column: 10, scope: !1775)
!1787 = !DILocation(line: 472, column: 21, scope: !1775)
!1788 = !DILocation(line: 473, column: 29, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !1775, file: !2, line: 473, column: 9)
!1790 = !DILocation(line: 473, column: 34, scope: !1789)
!1791 = !DILocation(line: 473, column: 39, scope: !1789)
!1792 = !DILocation(line: 473, column: 10, scope: !1789)
!1793 = !DILocation(line: 473, column: 9, scope: !1789)
!1794 = !DILocation(line: 474, column: 4, scope: !1789)
!1795 = !DILocation(line: 476, column: 3, scope: !1609)
!1796 = !DILocation(line: 482, column: 21, scope: !1797)
!1797 = distinct !DILexicalBlock(scope: !1609, file: !2, line: 482, column: 21)
!1798 = !DILocation(line: 482, column: 24, scope: !1797)
!1799 = !DILocalVariable(name: "cp", scope: !1800, file: !2, line: 483, type: !52)
!1800 = distinct !DILexicalBlock(scope: !1797, file: !2, line: 482, column: 29)
!1801 = !DILocation(line: 483, column: 27, scope: !1800)
!1802 = !DILocation(line: 484, column: 25, scope: !1803)
!1803 = distinct !DILexicalBlock(scope: !1800, file: !2, line: 484, column: 25)
!1804 = !DILocation(line: 484, column: 28, scope: !1803)
!1805 = !DILocation(line: 485, column: 38, scope: !1806)
!1806 = distinct !DILexicalBlock(scope: !1803, file: !2, line: 484, column: 56)
!1807 = !DILocation(line: 485, column: 43, scope: !1806)
!1808 = !DILocation(line: 485, column: 48, scope: !1806)
!1809 = !DILocation(line: 485, column: 25, scope: !1806)
!1810 = !DILocation(line: 486, column: 43, scope: !1806)
!1811 = !DILocation(line: 486, column: 25, scope: !1806)
!1812 = !DILocation(line: 486, column: 30, scope: !1806)
!1813 = !DILocation(line: 486, column: 41, scope: !1806)
!1814 = !DILocation(line: 487, column: 21, scope: !1806)
!1815 = !DILocation(line: 488, column: 38, scope: !1803)
!1816 = !DILocation(line: 488, column: 43, scope: !1803)
!1817 = !DILocation(line: 488, column: 48, scope: !1803)
!1818 = !DILocation(line: 488, column: 25, scope: !1803)
!1819 = !DILocation(line: 489, column: 45, scope: !1820)
!1820 = distinct !DILexicalBlock(scope: !1800, file: !2, line: 489, column: 25)
!1821 = !DILocation(line: 489, column: 50, scope: !1820)
!1822 = !DILocation(line: 489, column: 55, scope: !1820)
!1823 = !DILocation(line: 489, column: 26, scope: !1820)
!1824 = !DILocation(line: 489, column: 25, scope: !1820)
!1825 = !DILocation(line: 490, column: 25, scope: !1820)
!1826 = !DILocation(line: 491, column: 17, scope: !1800)
!1827 = !DILocalVariable(name: "cv", scope: !1828, file: !2, line: 492, type: !4)
!1828 = distinct !DILexicalBlock(scope: !1797, file: !2, line: 491, column: 24)
!1829 = !DILocation(line: 492, column: 26, scope: !1828)
!1830 = !DILocation(line: 493, column: 34, scope: !1828)
!1831 = !DILocation(line: 493, column: 39, scope: !1828)
!1832 = !DILocation(line: 493, column: 44, scope: !1828)
!1833 = !DILocation(line: 493, column: 21, scope: !1828)
!1834 = !DILocation(line: 494, column: 45, scope: !1835)
!1835 = distinct !DILexicalBlock(scope: !1828, file: !2, line: 494, column: 25)
!1836 = !DILocation(line: 494, column: 50, scope: !1835)
!1837 = !DILocation(line: 494, column: 26, scope: !1835)
!1838 = !DILocation(line: 494, column: 25, scope: !1835)
!1839 = !DILocation(line: 495, column: 25, scope: !1835)
!1840 = !DILocation(line: 497, column: 17, scope: !1609)
!1841 = !DILocalVariable(name: "cp", scope: !1842, file: !2, line: 500, type: !52)
!1842 = distinct !DILexicalBlock(scope: !1609, file: !2, line: 500, column: 3)
!1843 = !DILocation(line: 500, column: 11, scope: !1842)
!1844 = !DILocation(line: 501, column: 9, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !1842, file: !2, line: 501, column: 9)
!1846 = !DILocation(line: 501, column: 12, scope: !1845)
!1847 = !DILocation(line: 502, column: 17, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !1845, file: !2, line: 501, column: 40)
!1849 = !DILocation(line: 502, column: 22, scope: !1848)
!1850 = !DILocation(line: 502, column: 27, scope: !1848)
!1851 = !DILocation(line: 502, column: 4, scope: !1848)
!1852 = !DILocation(line: 503, column: 22, scope: !1848)
!1853 = !DILocation(line: 503, column: 4, scope: !1848)
!1854 = !DILocation(line: 503, column: 9, scope: !1848)
!1855 = !DILocation(line: 503, column: 20, scope: !1848)
!1856 = !DILocation(line: 504, column: 5, scope: !1848)
!1857 = !DILocation(line: 504, column: 16, scope: !1858)
!1858 = distinct !DILexicalBlock(scope: !1845, file: !2, line: 504, column: 16)
!1859 = !DILocation(line: 504, column: 19, scope: !1858)
!1860 = !DILocation(line: 505, column: 17, scope: !1861)
!1861 = distinct !DILexicalBlock(scope: !1858, file: !2, line: 504, column: 48)
!1862 = !DILocation(line: 505, column: 22, scope: !1861)
!1863 = !DILocation(line: 505, column: 27, scope: !1861)
!1864 = !DILocation(line: 505, column: 4, scope: !1861)
!1865 = !DILocation(line: 506, column: 22, scope: !1861)
!1866 = !DILocation(line: 506, column: 4, scope: !1861)
!1867 = !DILocation(line: 506, column: 9, scope: !1861)
!1868 = !DILocation(line: 506, column: 20, scope: !1861)
!1869 = !DILocation(line: 507, column: 5, scope: !1861)
!1870 = !DILocation(line: 508, column: 17, scope: !1858)
!1871 = !DILocation(line: 508, column: 22, scope: !1858)
!1872 = !DILocation(line: 508, column: 27, scope: !1858)
!1873 = !DILocation(line: 508, column: 4, scope: !1858)
!1874 = !DILocation(line: 509, column: 29, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1842, file: !2, line: 509, column: 9)
!1876 = !DILocation(line: 509, column: 34, scope: !1875)
!1877 = !DILocation(line: 509, column: 39, scope: !1875)
!1878 = !DILocation(line: 509, column: 10, scope: !1875)
!1879 = !DILocation(line: 509, column: 9, scope: !1875)
!1880 = !DILocation(line: 510, column: 4, scope: !1875)
!1881 = !DILocation(line: 512, column: 3, scope: !1609)
!1882 = !DILocation(line: 515, column: 17, scope: !1609)
!1883 = !DILocation(line: 517, column: 2, scope: !1573)
!1884 = !DILocation(line: 518, column: 1, scope: !1573)
!1885 = distinct !DISubprogram(name: "TIFFWriteShortArray", scope: !2, file: !2, line: 660, type: !1886, scopeLine: 662, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, retainedNodes: !437)
!1886 = !DISubroutineType(types: !1887)
!1887 = !{!44, !45, !300, !295, !402, !56, !113}
!1888 = !DILocalVariable(name: "tif", arg: 1, scope: !1885, file: !2, line: 660, type: !45)
!1889 = !DILocation(line: 660, column: 27, scope: !1885)
!1890 = !DILocalVariable(name: "type", arg: 2, scope: !1885, file: !2, line: 661, type: !300)
!1891 = !DILocation(line: 661, column: 18, scope: !1885)
!1892 = !DILocalVariable(name: "tag", arg: 3, scope: !1885, file: !2, line: 661, type: !295)
!1893 = !DILocation(line: 661, column: 31, scope: !1885)
!1894 = !DILocalVariable(name: "dir", arg: 4, scope: !1885, file: !2, line: 661, type: !402)
!1895 = !DILocation(line: 661, column: 50, scope: !1885)
!1896 = !DILocalVariable(name: "n", arg: 5, scope: !1885, file: !2, line: 661, type: !56)
!1897 = !DILocation(line: 661, column: 62, scope: !1885)
!1898 = !DILocalVariable(name: "v", arg: 6, scope: !1885, file: !2, line: 661, type: !113)
!1899 = !DILocation(line: 661, column: 73, scope: !1885)
!1900 = !DILocation(line: 663, column: 27, scope: !1885)
!1901 = !DILocation(line: 663, column: 18, scope: !1885)
!1902 = !DILocation(line: 663, column: 2, scope: !1885)
!1903 = !DILocation(line: 663, column: 7, scope: !1885)
!1904 = !DILocation(line: 663, column: 16, scope: !1885)
!1905 = !DILocation(line: 664, column: 27, scope: !1885)
!1906 = !DILocation(line: 664, column: 19, scope: !1885)
!1907 = !DILocation(line: 664, column: 2, scope: !1885)
!1908 = !DILocation(line: 664, column: 7, scope: !1885)
!1909 = !DILocation(line: 664, column: 17, scope: !1885)
!1910 = !DILocation(line: 665, column: 20, scope: !1885)
!1911 = !DILocation(line: 665, column: 2, scope: !1885)
!1912 = !DILocation(line: 665, column: 7, scope: !1885)
!1913 = !DILocation(line: 665, column: 18, scope: !1885)
!1914 = !DILocation(line: 666, column: 6, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !1885, file: !2, line: 666, column: 6)
!1916 = !DILocation(line: 666, column: 8, scope: !1915)
!1917 = !DILocation(line: 667, column: 7, scope: !1918)
!1918 = distinct !DILexicalBlock(scope: !1919, file: !2, line: 667, column: 7)
!1919 = distinct !DILexicalBlock(scope: !1915, file: !2, line: 666, column: 14)
!1920 = !DILocation(line: 667, column: 12, scope: !1918)
!1921 = !DILocation(line: 667, column: 23, scope: !1918)
!1922 = !DILocation(line: 667, column: 34, scope: !1918)
!1923 = !DILocation(line: 668, column: 40, scope: !1924)
!1924 = distinct !DILexicalBlock(scope: !1918, file: !2, line: 667, column: 53)
!1925 = !DILocation(line: 668, column: 33, scope: !1924)
!1926 = !DILocation(line: 668, column: 45, scope: !1924)
!1927 = !DILocation(line: 668, column: 23, scope: !1924)
!1928 = !DILocation(line: 668, column: 4, scope: !1924)
!1929 = !DILocation(line: 668, column: 9, scope: !1924)
!1930 = !DILocation(line: 668, column: 21, scope: !1924)
!1931 = !DILocation(line: 669, column: 8, scope: !1932)
!1932 = distinct !DILexicalBlock(scope: !1924, file: !2, line: 669, column: 8)
!1933 = !DILocation(line: 669, column: 10, scope: !1932)
!1934 = !DILocation(line: 670, column: 25, scope: !1932)
!1935 = !DILocation(line: 670, column: 30, scope: !1932)
!1936 = !DILocation(line: 670, column: 5, scope: !1932)
!1937 = !DILocation(line: 670, column: 10, scope: !1932)
!1938 = !DILocation(line: 670, column: 22, scope: !1932)
!1939 = !DILocation(line: 671, column: 3, scope: !1924)
!1940 = !DILocation(line: 672, column: 23, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1918, file: !2, line: 671, column: 10)
!1942 = !DILocation(line: 672, column: 28, scope: !1941)
!1943 = !DILocation(line: 672, column: 4, scope: !1941)
!1944 = !DILocation(line: 672, column: 9, scope: !1941)
!1945 = !DILocation(line: 672, column: 21, scope: !1941)
!1946 = !DILocation(line: 673, column: 8, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !1941, file: !2, line: 673, column: 8)
!1948 = !DILocation(line: 673, column: 10, scope: !1947)
!1949 = !DILocation(line: 674, column: 32, scope: !1947)
!1950 = !DILocation(line: 674, column: 25, scope: !1947)
!1951 = !DILocation(line: 674, column: 37, scope: !1947)
!1952 = !DILocation(line: 674, column: 5, scope: !1947)
!1953 = !DILocation(line: 674, column: 10, scope: !1947)
!1954 = !DILocation(line: 674, column: 22, scope: !1947)
!1955 = !DILocation(line: 676, column: 3, scope: !1919)
!1956 = !DILocation(line: 678, column: 25, scope: !1915)
!1957 = !DILocation(line: 678, column: 30, scope: !1915)
!1958 = !DILocation(line: 678, column: 43, scope: !1915)
!1959 = !DILocation(line: 678, column: 11, scope: !1915)
!1960 = !DILocation(line: 678, column: 3, scope: !1915)
!1961 = !DILocation(line: 679, column: 1, scope: !1885)
!1962 = distinct !DISubprogram(name: "TIFFWriteFloatArray", scope: !2, file: !2, line: 743, type: !1201, scopeLine: 745, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, retainedNodes: !437)
!1963 = !DILocalVariable(name: "tif", arg: 1, scope: !1962, file: !2, line: 743, type: !45)
!1964 = !DILocation(line: 743, column: 27, scope: !1962)
!1965 = !DILocalVariable(name: "type", arg: 2, scope: !1962, file: !2, line: 744, type: !300)
!1966 = !DILocation(line: 744, column: 18, scope: !1962)
!1967 = !DILocalVariable(name: "tag", arg: 3, scope: !1962, file: !2, line: 744, type: !295)
!1968 = !DILocation(line: 744, column: 31, scope: !1962)
!1969 = !DILocalVariable(name: "dir", arg: 4, scope: !1962, file: !2, line: 744, type: !402)
!1970 = !DILocation(line: 744, column: 50, scope: !1962)
!1971 = !DILocalVariable(name: "n", arg: 5, scope: !1962, file: !2, line: 744, type: !56)
!1972 = !DILocation(line: 744, column: 62, scope: !1962)
!1973 = !DILocalVariable(name: "v", arg: 6, scope: !1962, file: !2, line: 744, type: !136)
!1974 = !DILocation(line: 744, column: 72, scope: !1962)
!1975 = !DILocation(line: 746, column: 27, scope: !1962)
!1976 = !DILocation(line: 746, column: 18, scope: !1962)
!1977 = !DILocation(line: 746, column: 2, scope: !1962)
!1978 = !DILocation(line: 746, column: 7, scope: !1962)
!1979 = !DILocation(line: 746, column: 16, scope: !1962)
!1980 = !DILocation(line: 747, column: 27, scope: !1962)
!1981 = !DILocation(line: 747, column: 19, scope: !1962)
!1982 = !DILocation(line: 747, column: 2, scope: !1962)
!1983 = !DILocation(line: 747, column: 7, scope: !1962)
!1984 = !DILocation(line: 747, column: 17, scope: !1962)
!1985 = !DILocation(line: 748, column: 20, scope: !1962)
!1986 = !DILocation(line: 748, column: 2, scope: !1962)
!1987 = !DILocation(line: 748, column: 7, scope: !1962)
!1988 = !DILocation(line: 748, column: 18, scope: !1962)
!1989 = !DILocation(line: 750, column: 6, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1962, file: !2, line: 750, column: 6)
!1991 = !DILocation(line: 750, column: 8, scope: !1990)
!1992 = !DILocation(line: 751, column: 34, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !1990, file: !2, line: 750, column: 14)
!1994 = !DILocation(line: 751, column: 22, scope: !1993)
!1995 = !DILocation(line: 751, column: 3, scope: !1993)
!1996 = !DILocation(line: 751, column: 8, scope: !1993)
!1997 = !DILocation(line: 751, column: 20, scope: !1993)
!1998 = !DILocation(line: 752, column: 3, scope: !1993)
!1999 = !DILocation(line: 754, column: 25, scope: !1990)
!2000 = !DILocation(line: 754, column: 30, scope: !1990)
!2001 = !DILocation(line: 754, column: 43, scope: !1990)
!2002 = !DILocation(line: 754, column: 11, scope: !1990)
!2003 = !DILocation(line: 754, column: 3, scope: !1990)
!2004 = !DILocation(line: 755, column: 1, scope: !1962)
!2005 = distinct !DISubprogram(name: "TIFFWriteDoubleArray", scope: !2, file: !2, line: 758, type: !2006, scopeLine: 760, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, retainedNodes: !437)
!2006 = !DISubroutineType(types: !2007)
!2007 = !{!44, !45, !300, !295, !402, !56, !410}
!2008 = !DILocalVariable(name: "tif", arg: 1, scope: !2005, file: !2, line: 758, type: !45)
!2009 = !DILocation(line: 758, column: 28, scope: !2005)
!2010 = !DILocalVariable(name: "type", arg: 2, scope: !2005, file: !2, line: 759, type: !300)
!2011 = !DILocation(line: 759, column: 18, scope: !2005)
!2012 = !DILocalVariable(name: "tag", arg: 3, scope: !2005, file: !2, line: 759, type: !295)
!2013 = !DILocation(line: 759, column: 31, scope: !2005)
!2014 = !DILocalVariable(name: "dir", arg: 4, scope: !2005, file: !2, line: 759, type: !402)
!2015 = !DILocation(line: 759, column: 50, scope: !2005)
!2016 = !DILocalVariable(name: "n", arg: 5, scope: !2005, file: !2, line: 759, type: !56)
!2017 = !DILocation(line: 759, column: 62, scope: !2005)
!2018 = !DILocalVariable(name: "v", arg: 6, scope: !2005, file: !2, line: 759, type: !410)
!2019 = !DILocation(line: 759, column: 73, scope: !2005)
!2020 = !DILocation(line: 761, column: 27, scope: !2005)
!2021 = !DILocation(line: 761, column: 18, scope: !2005)
!2022 = !DILocation(line: 761, column: 2, scope: !2005)
!2023 = !DILocation(line: 761, column: 7, scope: !2005)
!2024 = !DILocation(line: 761, column: 16, scope: !2005)
!2025 = !DILocation(line: 762, column: 27, scope: !2005)
!2026 = !DILocation(line: 762, column: 19, scope: !2005)
!2027 = !DILocation(line: 762, column: 2, scope: !2005)
!2028 = !DILocation(line: 762, column: 7, scope: !2005)
!2029 = !DILocation(line: 762, column: 17, scope: !2005)
!2030 = !DILocation(line: 763, column: 20, scope: !2005)
!2031 = !DILocation(line: 763, column: 2, scope: !2005)
!2032 = !DILocation(line: 763, column: 7, scope: !2005)
!2033 = !DILocation(line: 763, column: 18, scope: !2005)
!2034 = !DILocation(line: 765, column: 24, scope: !2005)
!2035 = !DILocation(line: 765, column: 29, scope: !2005)
!2036 = !DILocation(line: 765, column: 42, scope: !2005)
!2037 = !DILocation(line: 765, column: 10, scope: !2005)
!2038 = !DILocation(line: 765, column: 2, scope: !2005)
!2039 = distinct !DISubprogram(name: "TIFFWriteByteArray", scope: !2, file: !2, line: 645, type: !2040, scopeLine: 646, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, retainedNodes: !437)
!2040 = !DISubroutineType(types: !2041)
!2041 = !{!44, !45, !402, !52}
!2042 = !DILocalVariable(name: "tif", arg: 1, scope: !2039, file: !2, line: 645, type: !45)
!2043 = !DILocation(line: 645, column: 26, scope: !2039)
!2044 = !DILocalVariable(name: "dir", arg: 2, scope: !2039, file: !2, line: 645, type: !402)
!2045 = !DILocation(line: 645, column: 45, scope: !2039)
!2046 = !DILocalVariable(name: "cp", arg: 3, scope: !2039, file: !2, line: 645, type: !52)
!2047 = !DILocation(line: 645, column: 56, scope: !2039)
!2048 = !DILocation(line: 647, column: 6, scope: !2049)
!2049 = distinct !DILexicalBlock(scope: !2039, file: !2, line: 647, column: 6)
!2050 = !DILocation(line: 647, column: 11, scope: !2049)
!2051 = !DILocation(line: 647, column: 22, scope: !2049)
!2052 = !DILocation(line: 648, column: 22, scope: !2053)
!2053 = distinct !DILexicalBlock(scope: !2054, file: !2, line: 648, column: 7)
!2054 = distinct !DILexicalBlock(scope: !2049, file: !2, line: 647, column: 27)
!2055 = !DILocation(line: 648, column: 27, scope: !2053)
!2056 = !DILocation(line: 648, column: 32, scope: !2053)
!2057 = !DILocation(line: 648, column: 8, scope: !2053)
!2058 = !DILocation(line: 648, column: 7, scope: !2053)
!2059 = !DILocation(line: 649, column: 4, scope: !2053)
!2060 = !DILocation(line: 650, column: 2, scope: !2054)
!2061 = !DILocation(line: 651, column: 16, scope: !2049)
!2062 = !DILocation(line: 651, column: 21, scope: !2049)
!2063 = !DILocation(line: 651, column: 34, scope: !2049)
!2064 = !DILocation(line: 651, column: 38, scope: !2049)
!2065 = !DILocation(line: 651, column: 43, scope: !2049)
!2066 = !DILocation(line: 651, column: 3, scope: !2049)
!2067 = !DILocation(line: 652, column: 2, scope: !2039)
!2068 = !DILocation(line: 653, column: 1, scope: !2039)
!2069 = distinct !DISubprogram(name: "TIFFWriteData", scope: !2, file: !2, line: 909, type: !2040, scopeLine: 910, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, retainedNodes: !437)
!2070 = !DILocalVariable(name: "tif", arg: 1, scope: !2069, file: !2, line: 909, type: !45)
!2071 = !DILocation(line: 909, column: 21, scope: !2069)
!2072 = !DILocalVariable(name: "dir", arg: 2, scope: !2069, file: !2, line: 909, type: !402)
!2073 = !DILocation(line: 909, column: 40, scope: !2069)
!2074 = !DILocalVariable(name: "cp", arg: 3, scope: !2069, file: !2, line: 909, type: !52)
!2075 = !DILocation(line: 909, column: 51, scope: !2069)
!2076 = !DILocalVariable(name: "cc", scope: !2069, file: !2, line: 911, type: !194)
!2077 = !DILocation(line: 911, column: 10, scope: !2069)
!2078 = !DILocation(line: 913, column: 6, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !2069, file: !2, line: 913, column: 6)
!2080 = !DILocation(line: 913, column: 11, scope: !2079)
!2081 = !DILocation(line: 913, column: 21, scope: !2079)
!2082 = !DILocation(line: 914, column: 11, scope: !2083)
!2083 = distinct !DILexicalBlock(scope: !2079, file: !2, line: 913, column: 34)
!2084 = !DILocation(line: 914, column: 16, scope: !2083)
!2085 = !DILocation(line: 914, column: 3, scope: !2083)
!2086 = !DILocation(line: 917, column: 35, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !2083, file: !2, line: 914, column: 27)
!2088 = !DILocation(line: 917, column: 39, scope: !2087)
!2089 = !DILocation(line: 917, column: 44, scope: !2087)
!2090 = !DILocation(line: 917, column: 4, scope: !2087)
!2091 = !DILocation(line: 918, column: 4, scope: !2087)
!2092 = !DILocation(line: 922, column: 34, scope: !2087)
!2093 = !DILocation(line: 922, column: 38, scope: !2087)
!2094 = !DILocation(line: 922, column: 43, scope: !2087)
!2095 = !DILocation(line: 922, column: 4, scope: !2087)
!2096 = !DILocation(line: 923, column: 4, scope: !2087)
!2097 = !DILocation(line: 926, column: 34, scope: !2087)
!2098 = !DILocation(line: 926, column: 40, scope: !2087)
!2099 = !DILocation(line: 926, column: 45, scope: !2087)
!2100 = !DILocation(line: 926, column: 39, scope: !2087)
!2101 = !DILocation(line: 926, column: 38, scope: !2087)
!2102 = !DILocation(line: 926, column: 4, scope: !2087)
!2103 = !DILocation(line: 927, column: 4, scope: !2087)
!2104 = !DILocation(line: 929, column: 36, scope: !2087)
!2105 = !DILocation(line: 929, column: 40, scope: !2087)
!2106 = !DILocation(line: 929, column: 45, scope: !2087)
!2107 = !DILocation(line: 929, column: 4, scope: !2087)
!2108 = !DILocation(line: 930, column: 4, scope: !2087)
!2109 = !DILocation(line: 932, column: 2, scope: !2083)
!2110 = !DILocation(line: 933, column: 21, scope: !2069)
!2111 = !DILocation(line: 933, column: 26, scope: !2069)
!2112 = !DILocation(line: 933, column: 2, scope: !2069)
!2113 = !DILocation(line: 933, column: 7, scope: !2069)
!2114 = !DILocation(line: 933, column: 19, scope: !2069)
!2115 = !DILocation(line: 934, column: 7, scope: !2069)
!2116 = !DILocation(line: 934, column: 12, scope: !2069)
!2117 = !DILocation(line: 934, column: 39, scope: !2069)
!2118 = !DILocation(line: 934, column: 44, scope: !2069)
!2119 = !DILocation(line: 934, column: 25, scope: !2069)
!2120 = !DILocation(line: 934, column: 23, scope: !2069)
!2121 = !DILocation(line: 934, column: 5, scope: !2069)
!2122 = !DILocation(line: 935, column: 6, scope: !2123)
!2123 = distinct !DILexicalBlock(scope: !2069, file: !2, line: 935, column: 6)
!2124 = !DILocation(line: 935, column: 36, scope: !2123)
!2125 = !DILocation(line: 936, column: 6, scope: !2123)
!2126 = !DILocation(line: 937, column: 24, scope: !2127)
!2127 = distinct !DILexicalBlock(scope: !2123, file: !2, line: 936, column: 28)
!2128 = !DILocation(line: 937, column: 27, scope: !2127)
!2129 = !DILocation(line: 937, column: 32, scope: !2127)
!2130 = !DILocation(line: 937, column: 3, scope: !2127)
!2131 = !DILocation(line: 937, column: 8, scope: !2127)
!2132 = !DILocation(line: 937, column: 20, scope: !2127)
!2133 = !DILocation(line: 938, column: 3, scope: !2127)
!2134 = !DILocation(line: 940, column: 12, scope: !2069)
!2135 = !DILocation(line: 940, column: 17, scope: !2069)
!2136 = !DILocation(line: 941, column: 24, scope: !2069)
!2137 = !DILocation(line: 941, column: 29, scope: !2069)
!2138 = !DILocation(line: 941, column: 34, scope: !2069)
!2139 = !DILocation(line: 941, column: 6, scope: !2069)
!2140 = !DILocation(line: 941, column: 45, scope: !2069)
!2141 = !DILocation(line: 940, column: 2, scope: !2069)
!2142 = !DILocation(line: 942, column: 2, scope: !2069)
!2143 = !DILocation(line: 943, column: 1, scope: !2069)
!2144 = distinct !DISubprogram(name: "TIFFWriteAnyArray", scope: !2, file: !2, line: 778, type: !2006, scopeLine: 780, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !399, retainedNodes: !437)
!2145 = !DILocalVariable(name: "tif", arg: 1, scope: !2144, file: !2, line: 778, type: !45)
!2146 = !DILocation(line: 778, column: 25, scope: !2144)
!2147 = !DILocalVariable(name: "type", arg: 2, scope: !2144, file: !2, line: 779, type: !300)
!2148 = !DILocation(line: 779, column: 18, scope: !2144)
!2149 = !DILocalVariable(name: "tag", arg: 3, scope: !2144, file: !2, line: 779, type: !295)
!2150 = !DILocation(line: 779, column: 31, scope: !2144)
!2151 = !DILocalVariable(name: "dir", arg: 4, scope: !2144, file: !2, line: 779, type: !402)
!2152 = !DILocation(line: 779, column: 50, scope: !2144)
!2153 = !DILocalVariable(name: "n", arg: 5, scope: !2144, file: !2, line: 779, type: !56)
!2154 = !DILocation(line: 779, column: 62, scope: !2144)
!2155 = !DILocalVariable(name: "v", arg: 6, scope: !2144, file: !2, line: 779, type: !410)
!2156 = !DILocation(line: 779, column: 73, scope: !2144)
!2157 = !DILocalVariable(name: "buf", scope: !2144, file: !2, line: 781, type: !2158)
!2158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 640, elements: !2159)
!2159 = !{!2160}
!2160 = !DISubrange(count: 80)
!2161 = !DILocation(line: 781, column: 7, scope: !2144)
!2162 = !DILocalVariable(name: "w", scope: !2144, file: !2, line: 782, type: !52)
!2163 = !DILocation(line: 782, column: 8, scope: !2144)
!2164 = !DILocation(line: 782, column: 12, scope: !2144)
!2165 = !DILocalVariable(name: "i", scope: !2144, file: !2, line: 783, type: !44)
!2166 = !DILocation(line: 783, column: 6, scope: !2144)
!2167 = !DILocalVariable(name: "status", scope: !2144, file: !2, line: 783, type: !44)
!2168 = !DILocation(line: 783, column: 9, scope: !2144)
!2169 = !DILocation(line: 785, column: 6, scope: !2170)
!2170 = distinct !DILexicalBlock(scope: !2144, file: !2, line: 785, column: 6)
!2171 = !DILocation(line: 785, column: 24, scope: !2170)
!2172 = !DILocation(line: 785, column: 10, scope: !2170)
!2173 = !DILocation(line: 785, column: 8, scope: !2170)
!2174 = !DILocation(line: 785, column: 30, scope: !2170)
!2175 = !DILocation(line: 786, column: 27, scope: !2170)
!2176 = !DILocation(line: 786, column: 45, scope: !2170)
!2177 = !DILocation(line: 786, column: 31, scope: !2170)
!2178 = !DILocation(line: 786, column: 29, scope: !2170)
!2179 = !DILocation(line: 786, column: 15, scope: !2170)
!2180 = !DILocation(line: 786, column: 5, scope: !2170)
!2181 = !DILocation(line: 786, column: 3, scope: !2170)
!2182 = !DILocation(line: 787, column: 10, scope: !2144)
!2183 = !DILocation(line: 787, column: 2, scope: !2144)
!2184 = !DILocalVariable(name: "bp", scope: !2185, file: !2, line: 789, type: !411)
!2185 = distinct !DILexicalBlock(scope: !2186, file: !2, line: 789, column: 3)
!2186 = distinct !DILexicalBlock(scope: !2144, file: !2, line: 787, column: 16)
!2187 = !DILocation(line: 789, column: 12, scope: !2185)
!2188 = !DILocation(line: 789, column: 26, scope: !2185)
!2189 = !DILocation(line: 790, column: 12, scope: !2190)
!2190 = distinct !DILexicalBlock(scope: !2185, file: !2, line: 790, column: 5)
!2191 = !DILocation(line: 790, column: 10, scope: !2190)
!2192 = !DILocation(line: 790, column: 17, scope: !2193)
!2193 = distinct !DILexicalBlock(scope: !2190, file: !2, line: 790, column: 5)
!2194 = !DILocation(line: 790, column: 27, scope: !2193)
!2195 = !DILocation(line: 790, column: 19, scope: !2193)
!2196 = !DILocation(line: 790, column: 5, scope: !2190)
!2197 = !DILocation(line: 791, column: 20, scope: !2193)
!2198 = !DILocation(line: 791, column: 22, scope: !2193)
!2199 = !DILocation(line: 791, column: 12, scope: !2193)
!2200 = !DILocation(line: 791, column: 4, scope: !2193)
!2201 = !DILocation(line: 791, column: 7, scope: !2193)
!2202 = !DILocation(line: 791, column: 10, scope: !2193)
!2203 = !DILocation(line: 790, column: 31, scope: !2193)
!2204 = !DILocation(line: 790, column: 5, scope: !2193)
!2205 = distinct !{!2205, !2196, !2206, !561}
!2206 = !DILocation(line: 791, column: 23, scope: !2190)
!2207 = !DILocation(line: 792, column: 30, scope: !2185)
!2208 = !DILocation(line: 792, column: 21, scope: !2185)
!2209 = !DILocation(line: 792, column: 5, scope: !2185)
!2210 = !DILocation(line: 792, column: 10, scope: !2185)
!2211 = !DILocation(line: 792, column: 19, scope: !2185)
!2212 = !DILocation(line: 793, column: 30, scope: !2185)
!2213 = !DILocation(line: 793, column: 22, scope: !2185)
!2214 = !DILocation(line: 793, column: 5, scope: !2185)
!2215 = !DILocation(line: 793, column: 10, scope: !2185)
!2216 = !DILocation(line: 793, column: 20, scope: !2185)
!2217 = !DILocation(line: 794, column: 23, scope: !2185)
!2218 = !DILocation(line: 794, column: 5, scope: !2185)
!2219 = !DILocation(line: 794, column: 10, scope: !2185)
!2220 = !DILocation(line: 794, column: 21, scope: !2185)
!2221 = !DILocation(line: 795, column: 29, scope: !2222)
!2222 = distinct !DILexicalBlock(scope: !2185, file: !2, line: 795, column: 9)
!2223 = !DILocation(line: 795, column: 34, scope: !2222)
!2224 = !DILocation(line: 795, column: 47, scope: !2222)
!2225 = !DILocation(line: 795, column: 10, scope: !2222)
!2226 = !DILocation(line: 795, column: 9, scope: !2222)
!2227 = !DILocation(line: 796, column: 4, scope: !2222)
!2228 = !DILocation(line: 798, column: 3, scope: !2186)
!2229 = !DILocalVariable(name: "bp", scope: !2230, file: !2, line: 800, type: !413)
!2230 = distinct !DILexicalBlock(scope: !2186, file: !2, line: 800, column: 3)
!2231 = !DILocation(line: 800, column: 11, scope: !2230)
!2232 = !DILocation(line: 800, column: 24, scope: !2230)
!2233 = !DILocation(line: 801, column: 12, scope: !2234)
!2234 = distinct !DILexicalBlock(scope: !2230, file: !2, line: 801, column: 5)
!2235 = !DILocation(line: 801, column: 10, scope: !2234)
!2236 = !DILocation(line: 801, column: 17, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !2234, file: !2, line: 801, column: 5)
!2238 = !DILocation(line: 801, column: 27, scope: !2237)
!2239 = !DILocation(line: 801, column: 19, scope: !2237)
!2240 = !DILocation(line: 801, column: 5, scope: !2234)
!2241 = !DILocation(line: 802, column: 19, scope: !2237)
!2242 = !DILocation(line: 802, column: 21, scope: !2237)
!2243 = !DILocation(line: 802, column: 12, scope: !2237)
!2244 = !DILocation(line: 802, column: 4, scope: !2237)
!2245 = !DILocation(line: 802, column: 7, scope: !2237)
!2246 = !DILocation(line: 802, column: 10, scope: !2237)
!2247 = !DILocation(line: 801, column: 31, scope: !2237)
!2248 = !DILocation(line: 801, column: 5, scope: !2237)
!2249 = distinct !{!2249, !2240, !2250, !561}
!2250 = !DILocation(line: 802, column: 22, scope: !2234)
!2251 = !DILocation(line: 803, column: 30, scope: !2230)
!2252 = !DILocation(line: 803, column: 21, scope: !2230)
!2253 = !DILocation(line: 803, column: 5, scope: !2230)
!2254 = !DILocation(line: 803, column: 10, scope: !2230)
!2255 = !DILocation(line: 803, column: 19, scope: !2230)
!2256 = !DILocation(line: 804, column: 30, scope: !2230)
!2257 = !DILocation(line: 804, column: 22, scope: !2230)
!2258 = !DILocation(line: 804, column: 5, scope: !2230)
!2259 = !DILocation(line: 804, column: 10, scope: !2230)
!2260 = !DILocation(line: 804, column: 20, scope: !2230)
!2261 = !DILocation(line: 805, column: 23, scope: !2230)
!2262 = !DILocation(line: 805, column: 5, scope: !2230)
!2263 = !DILocation(line: 805, column: 10, scope: !2230)
!2264 = !DILocation(line: 805, column: 21, scope: !2230)
!2265 = !DILocation(line: 806, column: 29, scope: !2266)
!2266 = distinct !DILexicalBlock(scope: !2230, file: !2, line: 806, column: 9)
!2267 = !DILocation(line: 806, column: 34, scope: !2266)
!2268 = !DILocation(line: 806, column: 47, scope: !2266)
!2269 = !DILocation(line: 806, column: 10, scope: !2266)
!2270 = !DILocation(line: 806, column: 9, scope: !2266)
!2271 = !DILocation(line: 807, column: 4, scope: !2266)
!2272 = !DILocation(line: 809, column: 3, scope: !2186)
!2273 = !DILocalVariable(name: "bp", scope: !2274, file: !2, line: 811, type: !113)
!2274 = distinct !DILexicalBlock(scope: !2186, file: !2, line: 811, column: 3)
!2275 = !DILocation(line: 811, column: 13, scope: !2274)
!2276 = !DILocation(line: 811, column: 28, scope: !2274)
!2277 = !DILocation(line: 812, column: 12, scope: !2278)
!2278 = distinct !DILexicalBlock(scope: !2274, file: !2, line: 812, column: 5)
!2279 = !DILocation(line: 812, column: 10, scope: !2278)
!2280 = !DILocation(line: 812, column: 17, scope: !2281)
!2281 = distinct !DILexicalBlock(scope: !2278, file: !2, line: 812, column: 5)
!2282 = !DILocation(line: 812, column: 27, scope: !2281)
!2283 = !DILocation(line: 812, column: 19, scope: !2281)
!2284 = !DILocation(line: 812, column: 5, scope: !2278)
!2285 = !DILocation(line: 813, column: 21, scope: !2281)
!2286 = !DILocation(line: 813, column: 23, scope: !2281)
!2287 = !DILocation(line: 813, column: 12, scope: !2281)
!2288 = !DILocation(line: 813, column: 4, scope: !2281)
!2289 = !DILocation(line: 813, column: 7, scope: !2281)
!2290 = !DILocation(line: 813, column: 10, scope: !2281)
!2291 = !DILocation(line: 812, column: 31, scope: !2281)
!2292 = !DILocation(line: 812, column: 5, scope: !2281)
!2293 = distinct !{!2293, !2284, !2294, !561}
!2294 = !DILocation(line: 813, column: 24, scope: !2278)
!2295 = !DILocation(line: 814, column: 30, scope: !2296)
!2296 = distinct !DILexicalBlock(scope: !2274, file: !2, line: 814, column: 9)
!2297 = !DILocation(line: 814, column: 35, scope: !2296)
!2298 = !DILocation(line: 814, column: 41, scope: !2296)
!2299 = !DILocation(line: 814, column: 46, scope: !2296)
!2300 = !DILocation(line: 814, column: 51, scope: !2296)
!2301 = !DILocation(line: 814, column: 63, scope: !2296)
!2302 = !DILocation(line: 814, column: 10, scope: !2296)
!2303 = !DILocation(line: 814, column: 9, scope: !2296)
!2304 = !DILocation(line: 815, column: 5, scope: !2296)
!2305 = !DILocation(line: 817, column: 3, scope: !2186)
!2306 = !DILocalVariable(name: "bp", scope: !2307, file: !2, line: 819, type: !415)
!2307 = distinct !DILexicalBlock(scope: !2186, file: !2, line: 819, column: 3)
!2308 = !DILocation(line: 819, column: 12, scope: !2307)
!2309 = !DILocation(line: 819, column: 26, scope: !2307)
!2310 = !DILocation(line: 820, column: 12, scope: !2311)
!2311 = distinct !DILexicalBlock(scope: !2307, file: !2, line: 820, column: 5)
!2312 = !DILocation(line: 820, column: 10, scope: !2311)
!2313 = !DILocation(line: 820, column: 17, scope: !2314)
!2314 = distinct !DILexicalBlock(scope: !2311, file: !2, line: 820, column: 5)
!2315 = !DILocation(line: 820, column: 27, scope: !2314)
!2316 = !DILocation(line: 820, column: 19, scope: !2314)
!2317 = !DILocation(line: 820, column: 5, scope: !2311)
!2318 = !DILocation(line: 821, column: 20, scope: !2314)
!2319 = !DILocation(line: 821, column: 22, scope: !2314)
!2320 = !DILocation(line: 821, column: 12, scope: !2314)
!2321 = !DILocation(line: 821, column: 4, scope: !2314)
!2322 = !DILocation(line: 821, column: 7, scope: !2314)
!2323 = !DILocation(line: 821, column: 10, scope: !2314)
!2324 = !DILocation(line: 820, column: 31, scope: !2314)
!2325 = !DILocation(line: 820, column: 5, scope: !2314)
!2326 = distinct !{!2326, !2317, !2327, !561}
!2327 = !DILocation(line: 821, column: 23, scope: !2311)
!2328 = !DILocation(line: 822, column: 30, scope: !2329)
!2329 = distinct !DILexicalBlock(scope: !2307, file: !2, line: 822, column: 9)
!2330 = !DILocation(line: 822, column: 35, scope: !2329)
!2331 = !DILocation(line: 822, column: 41, scope: !2329)
!2332 = !DILocation(line: 822, column: 46, scope: !2329)
!2333 = !DILocation(line: 822, column: 51, scope: !2329)
!2334 = !DILocation(line: 822, column: 63, scope: !2329)
!2335 = !DILocation(line: 822, column: 10, scope: !2329)
!2336 = !DILocation(line: 822, column: 9, scope: !2329)
!2337 = !DILocation(line: 823, column: 4, scope: !2329)
!2338 = !DILocation(line: 825, column: 3, scope: !2186)
!2339 = !DILocalVariable(name: "bp", scope: !2340, file: !2, line: 827, type: !131)
!2340 = distinct !DILexicalBlock(scope: !2186, file: !2, line: 827, column: 3)
!2341 = !DILocation(line: 827, column: 13, scope: !2340)
!2342 = !DILocation(line: 827, column: 28, scope: !2340)
!2343 = !DILocation(line: 828, column: 12, scope: !2344)
!2344 = distinct !DILexicalBlock(scope: !2340, file: !2, line: 828, column: 5)
!2345 = !DILocation(line: 828, column: 10, scope: !2344)
!2346 = !DILocation(line: 828, column: 17, scope: !2347)
!2347 = distinct !DILexicalBlock(scope: !2344, file: !2, line: 828, column: 5)
!2348 = !DILocation(line: 828, column: 27, scope: !2347)
!2349 = !DILocation(line: 828, column: 19, scope: !2347)
!2350 = !DILocation(line: 828, column: 5, scope: !2344)
!2351 = !DILocation(line: 829, column: 21, scope: !2347)
!2352 = !DILocation(line: 829, column: 23, scope: !2347)
!2353 = !DILocation(line: 829, column: 12, scope: !2347)
!2354 = !DILocation(line: 829, column: 4, scope: !2347)
!2355 = !DILocation(line: 829, column: 7, scope: !2347)
!2356 = !DILocation(line: 829, column: 10, scope: !2347)
!2357 = !DILocation(line: 828, column: 31, scope: !2347)
!2358 = !DILocation(line: 828, column: 5, scope: !2347)
!2359 = distinct !{!2359, !2350, !2360, !561}
!2360 = !DILocation(line: 829, column: 24, scope: !2344)
!2361 = !DILocation(line: 830, column: 29, scope: !2362)
!2362 = distinct !DILexicalBlock(scope: !2340, file: !2, line: 830, column: 9)
!2363 = !DILocation(line: 830, column: 34, scope: !2362)
!2364 = !DILocation(line: 830, column: 40, scope: !2362)
!2365 = !DILocation(line: 830, column: 45, scope: !2362)
!2366 = !DILocation(line: 830, column: 50, scope: !2362)
!2367 = !DILocation(line: 830, column: 53, scope: !2362)
!2368 = !DILocation(line: 830, column: 10, scope: !2362)
!2369 = !DILocation(line: 830, column: 9, scope: !2362)
!2370 = !DILocation(line: 831, column: 4, scope: !2362)
!2371 = !DILocation(line: 833, column: 3, scope: !2186)
!2372 = !DILocalVariable(name: "bp", scope: !2373, file: !2, line: 835, type: !417)
!2373 = distinct !DILexicalBlock(scope: !2186, file: !2, line: 835, column: 3)
!2374 = !DILocation(line: 835, column: 12, scope: !2373)
!2375 = !DILocation(line: 835, column: 26, scope: !2373)
!2376 = !DILocation(line: 836, column: 12, scope: !2377)
!2377 = distinct !DILexicalBlock(scope: !2373, file: !2, line: 836, column: 5)
!2378 = !DILocation(line: 836, column: 10, scope: !2377)
!2379 = !DILocation(line: 836, column: 17, scope: !2380)
!2380 = distinct !DILexicalBlock(scope: !2377, file: !2, line: 836, column: 5)
!2381 = !DILocation(line: 836, column: 27, scope: !2380)
!2382 = !DILocation(line: 836, column: 19, scope: !2380)
!2383 = !DILocation(line: 836, column: 5, scope: !2377)
!2384 = !DILocation(line: 837, column: 20, scope: !2380)
!2385 = !DILocation(line: 837, column: 22, scope: !2380)
!2386 = !DILocation(line: 837, column: 12, scope: !2380)
!2387 = !DILocation(line: 837, column: 4, scope: !2380)
!2388 = !DILocation(line: 837, column: 7, scope: !2380)
!2389 = !DILocation(line: 837, column: 10, scope: !2380)
!2390 = !DILocation(line: 836, column: 31, scope: !2380)
!2391 = !DILocation(line: 836, column: 5, scope: !2380)
!2392 = distinct !{!2392, !2383, !2393, !561}
!2393 = !DILocation(line: 837, column: 23, scope: !2377)
!2394 = !DILocation(line: 838, column: 29, scope: !2395)
!2395 = distinct !DILexicalBlock(scope: !2373, file: !2, line: 838, column: 9)
!2396 = !DILocation(line: 838, column: 34, scope: !2395)
!2397 = !DILocation(line: 838, column: 40, scope: !2395)
!2398 = !DILocation(line: 838, column: 45, scope: !2395)
!2399 = !DILocation(line: 838, column: 50, scope: !2395)
!2400 = !DILocation(line: 838, column: 63, scope: !2395)
!2401 = !DILocation(line: 838, column: 10, scope: !2395)
!2402 = !DILocation(line: 838, column: 9, scope: !2395)
!2403 = !DILocation(line: 839, column: 4, scope: !2395)
!2404 = !DILocation(line: 841, column: 3, scope: !2186)
!2405 = !DILocalVariable(name: "bp", scope: !2406, file: !2, line: 843, type: !136)
!2406 = distinct !DILexicalBlock(scope: !2186, file: !2, line: 843, column: 3)
!2407 = !DILocation(line: 843, column: 12, scope: !2406)
!2408 = !DILocation(line: 843, column: 26, scope: !2406)
!2409 = !DILocation(line: 844, column: 12, scope: !2410)
!2410 = distinct !DILexicalBlock(scope: !2406, file: !2, line: 844, column: 5)
!2411 = !DILocation(line: 844, column: 10, scope: !2410)
!2412 = !DILocation(line: 844, column: 17, scope: !2413)
!2413 = distinct !DILexicalBlock(scope: !2410, file: !2, line: 844, column: 5)
!2414 = !DILocation(line: 844, column: 27, scope: !2413)
!2415 = !DILocation(line: 844, column: 19, scope: !2413)
!2416 = !DILocation(line: 844, column: 5, scope: !2410)
!2417 = !DILocation(line: 845, column: 20, scope: !2413)
!2418 = !DILocation(line: 845, column: 22, scope: !2413)
!2419 = !DILocation(line: 845, column: 12, scope: !2413)
!2420 = !DILocation(line: 845, column: 4, scope: !2413)
!2421 = !DILocation(line: 845, column: 7, scope: !2413)
!2422 = !DILocation(line: 845, column: 10, scope: !2413)
!2423 = !DILocation(line: 844, column: 31, scope: !2413)
!2424 = !DILocation(line: 844, column: 5, scope: !2413)
!2425 = distinct !{!2425, !2416, !2426, !561}
!2426 = !DILocation(line: 845, column: 23, scope: !2410)
!2427 = !DILocation(line: 846, column: 30, scope: !2428)
!2428 = distinct !DILexicalBlock(scope: !2406, file: !2, line: 846, column: 9)
!2429 = !DILocation(line: 846, column: 35, scope: !2428)
!2430 = !DILocation(line: 846, column: 41, scope: !2428)
!2431 = !DILocation(line: 846, column: 46, scope: !2428)
!2432 = !DILocation(line: 846, column: 51, scope: !2428)
!2433 = !DILocation(line: 846, column: 54, scope: !2428)
!2434 = !DILocation(line: 846, column: 10, scope: !2428)
!2435 = !DILocation(line: 846, column: 9, scope: !2428)
!2436 = !DILocation(line: 847, column: 4, scope: !2428)
!2437 = !DILocation(line: 849, column: 3, scope: !2186)
!2438 = !DILocation(line: 851, column: 32, scope: !2186)
!2439 = !DILocation(line: 851, column: 37, scope: !2186)
!2440 = !DILocation(line: 851, column: 43, scope: !2186)
!2441 = !DILocation(line: 851, column: 48, scope: !2186)
!2442 = !DILocation(line: 851, column: 53, scope: !2186)
!2443 = !DILocation(line: 851, column: 56, scope: !2186)
!2444 = !DILocation(line: 851, column: 11, scope: !2186)
!2445 = !DILocation(line: 851, column: 3, scope: !2186)
!2446 = !DILocation(line: 858, column: 3, scope: !2186)
!2447 = !DILocation(line: 860, column: 9, scope: !2144)
!2448 = !DILocation(line: 860, column: 2, scope: !2144)
!2449 = !DILabel(scope: !2144, name: "out", file: !2, line: 861)
!2450 = !DILocation(line: 861, column: 2, scope: !2144)
!2451 = !DILocation(line: 862, column: 6, scope: !2452)
!2452 = distinct !DILexicalBlock(scope: !2144, file: !2, line: 862, column: 6)
!2453 = !DILocation(line: 862, column: 11, scope: !2452)
!2454 = !DILocation(line: 862, column: 8, scope: !2452)
!2455 = !DILocation(line: 863, column: 13, scope: !2452)
!2456 = !DILocation(line: 863, column: 3, scope: !2452)
!2457 = !DILocation(line: 864, column: 10, scope: !2144)
!2458 = !DILocation(line: 864, column: 2, scope: !2144)
!2459 = !DILocation(line: 865, column: 1, scope: !2144)
