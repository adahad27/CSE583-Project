; ModuleID = 'cBench/consumer_tiff2bw/src/tif_aux.c'
source_filename = "cBench/consumer_tiff2bw/src/tif_aux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tiff = type { ptr, i32, i32, i32, i32, i32, %struct.TIFFDirectory, %struct.TIFFHeader, ptr, ptr, ptr, i32, i16, i32, i32, i32, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr }
%struct.TIFFDirectory = type { [3 x i64], i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, double, double, float, float, i16, i16, float, float, [2 x i16], [3 x ptr], [2 x i16], i16, ptr, double, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i16, ptr, ptr, [2 x i16], i16, ptr, ptr, ptr, [3 x ptr], i16, i16, [2 x i16], i32, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i32, ptr, ptr, float, ptr, ptr }
%struct.TIFFHeader = type { i16, i16, i32 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @TIFFVGetFieldDefaulted(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 !dbg !35 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
    #dbg_declare(ptr %5, !372, !DIExpression(), !373)
  store i32 %1, ptr %6, align 4
    #dbg_declare(ptr %6, !374, !DIExpression(), !375)
  store ptr %2, ptr %7, align 8
    #dbg_declare(ptr %7, !376, !DIExpression(), !377)
    #dbg_declare(ptr %8, !378, !DIExpression(), !380)
  %9 = load ptr, ptr %5, align 8, !dbg !381
  %10 = getelementptr inbounds nuw %struct.tiff, ptr %9, i32 0, i32 6, !dbg !382
  store ptr %10, ptr %8, align 8, !dbg !380
  %11 = load ptr, ptr %5, align 8, !dbg !383
  %12 = load i32, ptr %6, align 4, !dbg !385
  %13 = load ptr, ptr %7, align 8, !dbg !386
  %14 = call i32 @TIFFVGetField(ptr noundef %11, i32 noundef %12, ptr noundef %13), !dbg !387
  %15 = icmp ne i32 %14, 0, !dbg !387
  br i1 %15, label %16, label %17, !dbg !387

16:                                               ; preds = %3
  store i32 1, ptr %4, align 4, !dbg !388
  br label %666, !dbg !388

17:                                               ; preds = %3
  %18 = load i32, ptr %6, align 4, !dbg !389
  switch i32 %18, label %665 [
    i32 254, label %19
    i32 258, label %39
    i32 263, label %59
    i32 266, label %79
    i32 274, label %99
    i32 277, label %119
    i32 278, label %139
    i32 280, label %159
    i32 281, label %179
    i32 284, label %199
    i32 296, label %219
    i32 336, label %239
    i32 332, label %279
    i32 334, label %299
    i32 338, label %319
    i32 32995, label %358
    i32 32998, label %392
    i32 32996, label %412
    i32 32997, label %435
    i32 529, label %455
    i32 530, label %496
    i32 531, label %537
    i32 301, label %557
    i32 532, label %638
  ], !dbg !390

19:                                               ; preds = %17
  %20 = load ptr, ptr %8, align 8, !dbg !391
  %21 = getelementptr inbounds nuw %struct.TIFFDirectory, ptr %20, i32 0, i32 7, !dbg !393
  %22 = load i32, ptr %21, align 8, !dbg !393
  %23 = load ptr, ptr %7, align 8, !dbg !394
  %24 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %23, i32 0, i32 0, !dbg !394
  %25 = load i32, ptr %24, align 8, !dbg !394
  %26 = icmp ule i32 %25, 40, !dbg !394
  br i1 %26, label %27, label %32, !dbg !394

27:                                               ; preds = %19
  %28 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %23, i32 0, i32 3, !dbg !394
  %29 = load ptr, ptr %28, align 8, !dbg !394
  %30 = getelementptr i8, ptr %29, i32 %25, !dbg !394
  %31 = add i32 %25, 8, !dbg !394
  store i32 %31, ptr %24, align 8, !dbg !394
  br label %36, !dbg !394

32:                                               ; preds = %19
  %33 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %23, i32 0, i32 2, !dbg !394
  %34 = load ptr, ptr %33, align 8, !dbg !394
  %35 = getelementptr i8, ptr %34, i32 8, !dbg !394
  store ptr %35, ptr %33, align 8, !dbg !394
  br label %36, !dbg !394

36:                                               ; preds = %32, %27
  %37 = phi ptr [ %30, %27 ], [ %34, %32 ], !dbg !394
  %38 = load ptr, ptr %37, align 8, !dbg !394
  store i32 %22, ptr %38, align 4, !dbg !395
  store i32 1, ptr %4, align 4, !dbg !396
  br label %666, !dbg !396

39:                                               ; preds = %17
  %40 = load ptr, ptr %8, align 8, !dbg !397
  %41 = getelementptr inbounds nuw %struct.TIFFDirectory, ptr %40, i32 0, i32 8, !dbg !398
  %42 = load i16, ptr %41, align 4, !dbg !398
  %43 = load ptr, ptr %7, align 8, !dbg !399
  %44 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %43, i32 0, i32 0, !dbg !399
  %45 = load i32, ptr %44, align 8, !dbg !399
  %46 = icmp ule i32 %45, 40, !dbg !399
  br i1 %46, label %47, label %52, !dbg !399

47:                                               ; preds = %39
  %48 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %43, i32 0, i32 3, !dbg !399
  %49 = load ptr, ptr %48, align 8, !dbg !399
  %50 = getelementptr i8, ptr %49, i32 %45, !dbg !399
  %51 = add i32 %45, 8, !dbg !399
  store i32 %51, ptr %44, align 8, !dbg !399
  br label %56, !dbg !399

52:                                               ; preds = %39
  %53 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %43, i32 0, i32 2, !dbg !399
  %54 = load ptr, ptr %53, align 8, !dbg !399
  %55 = getelementptr i8, ptr %54, i32 8, !dbg !399
  store ptr %55, ptr %53, align 8, !dbg !399
  br label %56, !dbg !399

56:                                               ; preds = %52, %47
  %57 = phi ptr [ %50, %47 ], [ %54, %52 ], !dbg !399
  %58 = load ptr, ptr %57, align 8, !dbg !399
  store i16 %42, ptr %58, align 2, !dbg !400
  store i32 1, ptr %4, align 4, !dbg !401
  br label %666, !dbg !401

59:                                               ; preds = %17
  %60 = load ptr, ptr %8, align 8, !dbg !402
  %61 = getelementptr inbounds nuw %struct.TIFFDirectory, ptr %60, i32 0, i32 12, !dbg !403
  %62 = load i16, ptr %61, align 4, !dbg !403
  %63 = load ptr, ptr %7, align 8, !dbg !404
  %64 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %63, i32 0, i32 0, !dbg !404
  %65 = load i32, ptr %64, align 8, !dbg !404
  %66 = icmp ule i32 %65, 40, !dbg !404
  br i1 %66, label %67, label %72, !dbg !404

67:                                               ; preds = %59
  %68 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %63, i32 0, i32 3, !dbg !404
  %69 = load ptr, ptr %68, align 8, !dbg !404
  %70 = getelementptr i8, ptr %69, i32 %65, !dbg !404
  %71 = add i32 %65, 8, !dbg !404
  store i32 %71, ptr %64, align 8, !dbg !404
  br label %76, !dbg !404

72:                                               ; preds = %59
  %73 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %63, i32 0, i32 2, !dbg !404
  %74 = load ptr, ptr %73, align 8, !dbg !404
  %75 = getelementptr i8, ptr %74, i32 8, !dbg !404
  store ptr %75, ptr %73, align 8, !dbg !404
  br label %76, !dbg !404

76:                                               ; preds = %72, %67
  %77 = phi ptr [ %70, %67 ], [ %74, %72 ], !dbg !404
  %78 = load ptr, ptr %77, align 8, !dbg !404
  store i16 %62, ptr %78, align 2, !dbg !405
  store i32 1, ptr %4, align 4, !dbg !406
  br label %666, !dbg !406

79:                                               ; preds = %17
  %80 = load ptr, ptr %8, align 8, !dbg !407
  %81 = getelementptr inbounds nuw %struct.TIFFDirectory, ptr %80, i32 0, i32 13, !dbg !408
  %82 = load i16, ptr %81, align 2, !dbg !408
  %83 = load ptr, ptr %7, align 8, !dbg !409
  %84 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %83, i32 0, i32 0, !dbg !409
  %85 = load i32, ptr %84, align 8, !dbg !409
  %86 = icmp ule i32 %85, 40, !dbg !409
  br i1 %86, label %87, label %92, !dbg !409

87:                                               ; preds = %79
  %88 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %83, i32 0, i32 3, !dbg !409
  %89 = load ptr, ptr %88, align 8, !dbg !409
  %90 = getelementptr i8, ptr %89, i32 %85, !dbg !409
  %91 = add i32 %85, 8, !dbg !409
  store i32 %91, ptr %84, align 8, !dbg !409
  br label %96, !dbg !409

92:                                               ; preds = %79
  %93 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %83, i32 0, i32 2, !dbg !409
  %94 = load ptr, ptr %93, align 8, !dbg !409
  %95 = getelementptr i8, ptr %94, i32 8, !dbg !409
  store ptr %95, ptr %93, align 8, !dbg !409
  br label %96, !dbg !409

96:                                               ; preds = %92, %87
  %97 = phi ptr [ %90, %87 ], [ %94, %92 ], !dbg !409
  %98 = load ptr, ptr %97, align 8, !dbg !409
  store i16 %82, ptr %98, align 2, !dbg !410
  store i32 1, ptr %4, align 4, !dbg !411
  br label %666, !dbg !411

99:                                               ; preds = %17
  %100 = load ptr, ptr %8, align 8, !dbg !412
  %101 = getelementptr inbounds nuw %struct.TIFFDirectory, ptr %100, i32 0, i32 14, !dbg !413
  %102 = load i16, ptr %101, align 8, !dbg !413
  %103 = load ptr, ptr %7, align 8, !dbg !414
  %104 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %103, i32 0, i32 0, !dbg !414
  %105 = load i32, ptr %104, align 8, !dbg !414
  %106 = icmp ule i32 %105, 40, !dbg !414
  br i1 %106, label %107, label %112, !dbg !414

107:                                              ; preds = %99
  %108 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %103, i32 0, i32 3, !dbg !414
  %109 = load ptr, ptr %108, align 8, !dbg !414
  %110 = getelementptr i8, ptr %109, i32 %105, !dbg !414
  %111 = add i32 %105, 8, !dbg !414
  store i32 %111, ptr %104, align 8, !dbg !414
  br label %116, !dbg !414

112:                                              ; preds = %99
  %113 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %103, i32 0, i32 2, !dbg !414
  %114 = load ptr, ptr %113, align 8, !dbg !414
  %115 = getelementptr i8, ptr %114, i32 8, !dbg !414
  store ptr %115, ptr %113, align 8, !dbg !414
  br label %116, !dbg !414

116:                                              ; preds = %112, %107
  %117 = phi ptr [ %110, %107 ], [ %114, %112 ], !dbg !414
  %118 = load ptr, ptr %117, align 8, !dbg !414
  store i16 %102, ptr %118, align 2, !dbg !415
  store i32 1, ptr %4, align 4, !dbg !416
  br label %666, !dbg !416

119:                                              ; preds = %17
  %120 = load ptr, ptr %8, align 8, !dbg !417
  %121 = getelementptr inbounds nuw %struct.TIFFDirectory, ptr %120, i32 0, i32 15, !dbg !418
  %122 = load i16, ptr %121, align 2, !dbg !418
  %123 = load ptr, ptr %7, align 8, !dbg !419
  %124 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %123, i32 0, i32 0, !dbg !419
  %125 = load i32, ptr %124, align 8, !dbg !419
  %126 = icmp ule i32 %125, 40, !dbg !419
  br i1 %126, label %127, label %132, !dbg !419

127:                                              ; preds = %119
  %128 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %123, i32 0, i32 3, !dbg !419
  %129 = load ptr, ptr %128, align 8, !dbg !419
  %130 = getelementptr i8, ptr %129, i32 %125, !dbg !419
  %131 = add i32 %125, 8, !dbg !419
  store i32 %131, ptr %124, align 8, !dbg !419
  br label %136, !dbg !419

132:                                              ; preds = %119
  %133 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %123, i32 0, i32 2, !dbg !419
  %134 = load ptr, ptr %133, align 8, !dbg !419
  %135 = getelementptr i8, ptr %134, i32 8, !dbg !419
  store ptr %135, ptr %133, align 8, !dbg !419
  br label %136, !dbg !419

136:                                              ; preds = %132, %127
  %137 = phi ptr [ %130, %127 ], [ %134, %132 ], !dbg !419
  %138 = load ptr, ptr %137, align 8, !dbg !419
  store i16 %122, ptr %138, align 2, !dbg !420
  store i32 1, ptr %4, align 4, !dbg !421
  br label %666, !dbg !421

139:                                              ; preds = %17
  %140 = load ptr, ptr %8, align 8, !dbg !422
  %141 = getelementptr inbounds nuw %struct.TIFFDirectory, ptr %140, i32 0, i32 16, !dbg !423
  %142 = load i32, ptr %141, align 4, !dbg !423
  %143 = load ptr, ptr %7, align 8, !dbg !424
  %144 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %143, i32 0, i32 0, !dbg !424
  %145 = load i32, ptr %144, align 8, !dbg !424
  %146 = icmp ule i32 %145, 40, !dbg !424
  br i1 %146, label %147, label %152, !dbg !424

147:                                              ; preds = %139
  %148 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %143, i32 0, i32 3, !dbg !424
  %149 = load ptr, ptr %148, align 8, !dbg !424
  %150 = getelementptr i8, ptr %149, i32 %145, !dbg !424
  %151 = add i32 %145, 8, !dbg !424
  store i32 %151, ptr %144, align 8, !dbg !424
  br label %156, !dbg !424

152:                                              ; preds = %139
  %153 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %143, i32 0, i32 2, !dbg !424
  %154 = load ptr, ptr %153, align 8, !dbg !424
  %155 = getelementptr i8, ptr %154, i32 8, !dbg !424
  store ptr %155, ptr %153, align 8, !dbg !424
  br label %156, !dbg !424

156:                                              ; preds = %152, %147
  %157 = phi ptr [ %150, %147 ], [ %154, %152 ], !dbg !424
  %158 = load ptr, ptr %157, align 8, !dbg !424
  store i32 %142, ptr %158, align 4, !dbg !425
  store i32 1, ptr %4, align 4, !dbg !426
  br label %666, !dbg !426

159:                                              ; preds = %17
  %160 = load ptr, ptr %8, align 8, !dbg !427
  %161 = getelementptr inbounds nuw %struct.TIFFDirectory, ptr %160, i32 0, i32 17, !dbg !428
  %162 = load i16, ptr %161, align 8, !dbg !428
  %163 = load ptr, ptr %7, align 8, !dbg !429
  %164 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %163, i32 0, i32 0, !dbg !429
  %165 = load i32, ptr %164, align 8, !dbg !429
  %166 = icmp ule i32 %165, 40, !dbg !429
  br i1 %166, label %167, label %172, !dbg !429

167:                                              ; preds = %159
  %168 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %163, i32 0, i32 3, !dbg !429
  %169 = load ptr, ptr %168, align 8, !dbg !429
  %170 = getelementptr i8, ptr %169, i32 %165, !dbg !429
  %171 = add i32 %165, 8, !dbg !429
  store i32 %171, ptr %164, align 8, !dbg !429
  br label %176, !dbg !429

172:                                              ; preds = %159
  %173 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %163, i32 0, i32 2, !dbg !429
  %174 = load ptr, ptr %173, align 8, !dbg !429
  %175 = getelementptr i8, ptr %174, i32 8, !dbg !429
  store ptr %175, ptr %173, align 8, !dbg !429
  br label %176, !dbg !429

176:                                              ; preds = %172, %167
  %177 = phi ptr [ %170, %167 ], [ %174, %172 ], !dbg !429
  %178 = load ptr, ptr %177, align 8, !dbg !429
  store i16 %162, ptr %178, align 2, !dbg !430
  store i32 1, ptr %4, align 4, !dbg !431
  br label %666, !dbg !431

179:                                              ; preds = %17
  %180 = load ptr, ptr %8, align 8, !dbg !432
  %181 = getelementptr inbounds nuw %struct.TIFFDirectory, ptr %180, i32 0, i32 18, !dbg !433
  %182 = load i16, ptr %181, align 2, !dbg !433
  %183 = load ptr, ptr %7, align 8, !dbg !434
  %184 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %183, i32 0, i32 0, !dbg !434
  %185 = load i32, ptr %184, align 8, !dbg !434
  %186 = icmp ule i32 %185, 40, !dbg !434
  br i1 %186, label %187, label %192, !dbg !434

187:                                              ; preds = %179
  %188 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %183, i32 0, i32 3, !dbg !434
  %189 = load ptr, ptr %188, align 8, !dbg !434
  %190 = getelementptr i8, ptr %189, i32 %185, !dbg !434
  %191 = add i32 %185, 8, !dbg !434
  store i32 %191, ptr %184, align 8, !dbg !434
  br label %196, !dbg !434

192:                                              ; preds = %179
  %193 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %183, i32 0, i32 2, !dbg !434
  %194 = load ptr, ptr %193, align 8, !dbg !434
  %195 = getelementptr i8, ptr %194, i32 8, !dbg !434
  store ptr %195, ptr %193, align 8, !dbg !434
  br label %196, !dbg !434

196:                                              ; preds = %192, %187
  %197 = phi ptr [ %190, %187 ], [ %194, %192 ], !dbg !434
  %198 = load ptr, ptr %197, align 8, !dbg !434
  store i16 %182, ptr %198, align 2, !dbg !435
  store i32 1, ptr %4, align 4, !dbg !436
  br label %666, !dbg !436

199:                                              ; preds = %17
  %200 = load ptr, ptr %8, align 8, !dbg !437
  %201 = getelementptr inbounds nuw %struct.TIFFDirectory, ptr %200, i32 0, i32 24, !dbg !438
  %202 = load i16, ptr %201, align 2, !dbg !438
  %203 = load ptr, ptr %7, align 8, !dbg !439
  %204 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %203, i32 0, i32 0, !dbg !439
  %205 = load i32, ptr %204, align 8, !dbg !439
  %206 = icmp ule i32 %205, 40, !dbg !439
  br i1 %206, label %207, label %212, !dbg !439

207:                                              ; preds = %199
  %208 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %203, i32 0, i32 3, !dbg !439
  %209 = load ptr, ptr %208, align 8, !dbg !439
  %210 = getelementptr i8, ptr %209, i32 %205, !dbg !439
  %211 = add i32 %205, 8, !dbg !439
  store i32 %211, ptr %204, align 8, !dbg !439
  br label %216, !dbg !439

212:                                              ; preds = %199
  %213 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %203, i32 0, i32 2, !dbg !439
  %214 = load ptr, ptr %213, align 8, !dbg !439
  %215 = getelementptr i8, ptr %214, i32 8, !dbg !439
  store ptr %215, ptr %213, align 8, !dbg !439
  br label %216, !dbg !439

216:                                              ; preds = %212, %207
  %217 = phi ptr [ %210, %207 ], [ %214, %212 ], !dbg !439
  %218 = load ptr, ptr %217, align 8, !dbg !439
  store i16 %202, ptr %218, align 2, !dbg !440
  store i32 1, ptr %4, align 4, !dbg !441
  br label %666, !dbg !441

219:                                              ; preds = %17
  %220 = load ptr, ptr %8, align 8, !dbg !442
  %221 = getelementptr inbounds nuw %struct.TIFFDirectory, ptr %220, i32 0, i32 23, !dbg !443
  %222 = load i16, ptr %221, align 8, !dbg !443
  %223 = load ptr, ptr %7, align 8, !dbg !444
  %224 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %223, i32 0, i32 0, !dbg !444
  %225 = load i32, ptr %224, align 8, !dbg !444
  %226 = icmp ule i32 %225, 40, !dbg !444
  br i1 %226, label %227, label %232, !dbg !444

227:                                              ; preds = %219
  %228 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %223, i32 0, i32 3, !dbg !444
  %229 = load ptr, ptr %228, align 8, !dbg !444
  %230 = getelementptr i8, ptr %229, i32 %225, !dbg !444
  %231 = add i32 %225, 8, !dbg !444
  store i32 %231, ptr %224, align 8, !dbg !444
  br label %236, !dbg !444

232:                                              ; preds = %219
  %233 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %223, i32 0, i32 2, !dbg !444
  %234 = load ptr, ptr %233, align 8, !dbg !444
  %235 = getelementptr i8, ptr %234, i32 8, !dbg !444
  store ptr %235, ptr %233, align 8, !dbg !444
  br label %236, !dbg !444

236:                                              ; preds = %232, %227
  %237 = phi ptr [ %230, %227 ], [ %234, %232 ], !dbg !444
  %238 = load ptr, ptr %237, align 8, !dbg !444
  store i16 %222, ptr %238, align 2, !dbg !445
  store i32 1, ptr %4, align 4, !dbg !446
  br label %666, !dbg !446

239:                                              ; preds = %17
  %240 = load ptr, ptr %7, align 8, !dbg !447
  %241 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %240, i32 0, i32 0, !dbg !447
  %242 = load i32, ptr %241, align 8, !dbg !447
  %243 = icmp ule i32 %242, 40, !dbg !447
  br i1 %243, label %244, label %249, !dbg !447

244:                                              ; preds = %239
  %245 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %240, i32 0, i32 3, !dbg !447
  %246 = load ptr, ptr %245, align 8, !dbg !447
  %247 = getelementptr i8, ptr %246, i32 %242, !dbg !447
  %248 = add i32 %242, 8, !dbg !447
  store i32 %248, ptr %241, align 8, !dbg !447
  br label %253, !dbg !447

249:                                              ; preds = %239
  %250 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %240, i32 0, i32 2, !dbg !447
  %251 = load ptr, ptr %250, align 8, !dbg !447
  %252 = getelementptr i8, ptr %251, i32 8, !dbg !447
  store ptr %252, ptr %250, align 8, !dbg !447
  br label %253, !dbg !447

253:                                              ; preds = %249, %244
  %254 = phi ptr [ %247, %244 ], [ %251, %249 ], !dbg !447
  %255 = load ptr, ptr %254, align 8, !dbg !447
  store i16 0, ptr %255, align 2, !dbg !448
  %256 = load ptr, ptr %8, align 8, !dbg !449
  %257 = getelementptr inbounds nuw %struct.TIFFDirectory, ptr %256, i32 0, i32 8, !dbg !450
  %258 = load i16, ptr %257, align 4, !dbg !450
  %259 = zext i16 %258 to i32, !dbg !449
  %260 = shl i32 1, %259, !dbg !451
  %261 = sub nsw i32 %260, 1, !dbg !452
  %262 = trunc i32 %261 to i16, !dbg !453
  %263 = load ptr, ptr %7, align 8, !dbg !454
  %264 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %263, i32 0, i32 0, !dbg !454
  %265 = load i32, ptr %264, align 8, !dbg !454
  %266 = icmp ule i32 %265, 40, !dbg !454
  br i1 %266, label %267, label %272, !dbg !454

267:                                              ; preds = %253
  %268 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %263, i32 0, i32 3, !dbg !454
  %269 = load ptr, ptr %268, align 8, !dbg !454
  %270 = getelementptr i8, ptr %269, i32 %265, !dbg !454
  %271 = add i32 %265, 8, !dbg !454
  store i32 %271, ptr %264, align 8, !dbg !454
  br label %276, !dbg !454

272:                                              ; preds = %253
  %273 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %263, i32 0, i32 2, !dbg !454
  %274 = load ptr, ptr %273, align 8, !dbg !454
  %275 = getelementptr i8, ptr %274, i32 8, !dbg !454
  store ptr %275, ptr %273, align 8, !dbg !454
  br label %276, !dbg !454

276:                                              ; preds = %272, %267
  %277 = phi ptr [ %270, %267 ], [ %274, %272 ], !dbg !454
  %278 = load ptr, ptr %277, align 8, !dbg !454
  store i16 %262, ptr %278, align 2, !dbg !455
  store i32 1, ptr %4, align 4, !dbg !456
  br label %666, !dbg !456

279:                                              ; preds = %17
  %280 = load ptr, ptr %8, align 8, !dbg !457
  %281 = getelementptr inbounds nuw %struct.TIFFDirectory, ptr %280, i32 0, i32 55, !dbg !458
  %282 = load i16, ptr %281, align 8, !dbg !458
  %283 = load ptr, ptr %7, align 8, !dbg !459
  %284 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %283, i32 0, i32 0, !dbg !459
  %285 = load i32, ptr %284, align 8, !dbg !459
  %286 = icmp ule i32 %285, 40, !dbg !459
  br i1 %286, label %287, label %292, !dbg !459

287:                                              ; preds = %279
  %288 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %283, i32 0, i32 3, !dbg !459
  %289 = load ptr, ptr %288, align 8, !dbg !459
  %290 = getelementptr i8, ptr %289, i32 %285, !dbg !459
  %291 = add i32 %285, 8, !dbg !459
  store i32 %291, ptr %284, align 8, !dbg !459
  br label %296, !dbg !459

292:                                              ; preds = %279
  %293 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %283, i32 0, i32 2, !dbg !459
  %294 = load ptr, ptr %293, align 8, !dbg !459
  %295 = getelementptr i8, ptr %294, i32 8, !dbg !459
  store ptr %295, ptr %293, align 8, !dbg !459
  br label %296, !dbg !459

296:                                              ; preds = %292, %287
  %297 = phi ptr [ %290, %287 ], [ %294, %292 ], !dbg !459
  %298 = load ptr, ptr %297, align 8, !dbg !459
  store i16 %282, ptr %298, align 2, !dbg !460
  store i32 1, ptr %4, align 4, !dbg !461
  br label %666, !dbg !461

299:                                              ; preds = %17
  %300 = load ptr, ptr %8, align 8, !dbg !462
  %301 = getelementptr inbounds nuw %struct.TIFFDirectory, ptr %300, i32 0, i32 56, !dbg !463
  %302 = load i16, ptr %301, align 2, !dbg !463
  %303 = load ptr, ptr %7, align 8, !dbg !464
  %304 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %303, i32 0, i32 0, !dbg !464
  %305 = load i32, ptr %304, align 8, !dbg !464
  %306 = icmp ule i32 %305, 40, !dbg !464
  br i1 %306, label %307, label %312, !dbg !464

307:                                              ; preds = %299
  %308 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %303, i32 0, i32 3, !dbg !464
  %309 = load ptr, ptr %308, align 8, !dbg !464
  %310 = getelementptr i8, ptr %309, i32 %305, !dbg !464
  %311 = add i32 %305, 8, !dbg !464
  store i32 %311, ptr %304, align 8, !dbg !464
  br label %316, !dbg !464

312:                                              ; preds = %299
  %313 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %303, i32 0, i32 2, !dbg !464
  %314 = load ptr, ptr %313, align 8, !dbg !464
  %315 = getelementptr i8, ptr %314, i32 8, !dbg !464
  store ptr %315, ptr %313, align 8, !dbg !464
  br label %316, !dbg !464

316:                                              ; preds = %312, %307
  %317 = phi ptr [ %310, %307 ], [ %314, %312 ], !dbg !464
  %318 = load ptr, ptr %317, align 8, !dbg !464
  store i16 %302, ptr %318, align 2, !dbg !465
  store i32 1, ptr %4, align 4, !dbg !466
  br label %666, !dbg !466

319:                                              ; preds = %17
  %320 = load ptr, ptr %8, align 8, !dbg !467
  %321 = getelementptr inbounds nuw %struct.TIFFDirectory, ptr %320, i32 0, i32 30, !dbg !468
  %322 = load i16, ptr %321, align 4, !dbg !468
  %323 = load ptr, ptr %7, align 8, !dbg !469
  %324 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %323, i32 0, i32 0, !dbg !469
  %325 = load i32, ptr %324, align 8, !dbg !469
  %326 = icmp ule i32 %325, 40, !dbg !469
  br i1 %326, label %327, label %332, !dbg !469

327:                                              ; preds = %319
  %328 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %323, i32 0, i32 3, !dbg !469
  %329 = load ptr, ptr %328, align 8, !dbg !469
  %330 = getelementptr i8, ptr %329, i32 %325, !dbg !469
  %331 = add i32 %325, 8, !dbg !469
  store i32 %331, ptr %324, align 8, !dbg !469
  br label %336, !dbg !469

332:                                              ; preds = %319
  %333 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %323, i32 0, i32 2, !dbg !469
  %334 = load ptr, ptr %333, align 8, !dbg !469
  %335 = getelementptr i8, ptr %334, i32 8, !dbg !469
  store ptr %335, ptr %333, align 8, !dbg !469
  br label %336, !dbg !469

336:                                              ; preds = %332, %327
  %337 = phi ptr [ %330, %327 ], [ %334, %332 ], !dbg !469
  %338 = load ptr, ptr %337, align 8, !dbg !469
  store i16 %322, ptr %338, align 2, !dbg !470
  %339 = load ptr, ptr %8, align 8, !dbg !471
  %340 = getelementptr inbounds nuw %struct.TIFFDirectory, ptr %339, i32 0, i32 31, !dbg !472
  %341 = load ptr, ptr %340, align 8, !dbg !472
  %342 = load ptr, ptr %7, align 8, !dbg !473
  %343 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %342, i32 0, i32 0, !dbg !473
  %344 = load i32, ptr %343, align 8, !dbg !473
  %345 = icmp ule i32 %344, 40, !dbg !473
  br i1 %345, label %346, label %351, !dbg !473

346:                                              ; preds = %336
  %347 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %342, i32 0, i32 3, !dbg !473
  %348 = load ptr, ptr %347, align 8, !dbg !473
  %349 = getelementptr i8, ptr %348, i32 %344, !dbg !473
  %350 = add i32 %344, 8, !dbg !473
  store i32 %350, ptr %343, align 8, !dbg !473
  br label %355, !dbg !473

351:                                              ; preds = %336
  %352 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %342, i32 0, i32 2, !dbg !473
  %353 = load ptr, ptr %352, align 8, !dbg !473
  %354 = getelementptr i8, ptr %353, i32 8, !dbg !473
  store ptr %354, ptr %352, align 8, !dbg !473
  br label %355, !dbg !473

355:                                              ; preds = %351, %346
  %356 = phi ptr [ %349, %346 ], [ %353, %351 ], !dbg !473
  %357 = load ptr, ptr %356, align 8, !dbg !473
  store ptr %341, ptr %357, align 8, !dbg !474
  store i32 1, ptr %4, align 4, !dbg !475
  br label %666, !dbg !475

358:                                              ; preds = %17
  %359 = load ptr, ptr %8, align 8, !dbg !476
  %360 = getelementptr inbounds nuw %struct.TIFFDirectory, ptr %359, i32 0, i32 30, !dbg !477
  %361 = load i16, ptr %360, align 4, !dbg !477
  %362 = zext i16 %361 to i32, !dbg !476
  %363 = icmp eq i32 %362, 1, !dbg !478
  br i1 %363, label %364, label %372, !dbg !479

364:                                              ; preds = %358
  %365 = load ptr, ptr %8, align 8, !dbg !480
  %366 = getelementptr inbounds nuw %struct.TIFFDirectory, ptr %365, i32 0, i32 31, !dbg !481
  %367 = load ptr, ptr %366, align 8, !dbg !481
  %368 = getelementptr inbounds i16, ptr %367, i64 0, !dbg !480
  %369 = load i16, ptr %368, align 2, !dbg !480
  %370 = zext i16 %369 to i32, !dbg !480
  %371 = icmp eq i32 %370, 1, !dbg !482
  br label %372

372:                                              ; preds = %364, %358
  %373 = phi i1 [ false, %358 ], [ %371, %364 ], !dbg !483
  %374 = zext i1 %373 to i32, !dbg !479
  %375 = trunc i32 %374 to i16, !dbg !484
  %376 = load ptr, ptr %7, align 8, !dbg !485
  %377 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %376, i32 0, i32 0, !dbg !485
  %378 = load i32, ptr %377, align 8, !dbg !485
  %379 = icmp ule i32 %378, 40, !dbg !485
  br i1 %379, label %380, label %385, !dbg !485

380:                                              ; preds = %372
  %381 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %376, i32 0, i32 3, !dbg !485
  %382 = load ptr, ptr %381, align 8, !dbg !485
  %383 = getelementptr i8, ptr %382, i32 %378, !dbg !485
  %384 = add i32 %378, 8, !dbg !485
  store i32 %384, ptr %377, align 8, !dbg !485
  br label %389, !dbg !485

385:                                              ; preds = %372
  %386 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %376, i32 0, i32 2, !dbg !485
  %387 = load ptr, ptr %386, align 8, !dbg !485
  %388 = getelementptr i8, ptr %387, i32 8, !dbg !485
  store ptr %388, ptr %386, align 8, !dbg !485
  br label %389, !dbg !485

389:                                              ; preds = %385, %380
  %390 = phi ptr [ %383, %380 ], [ %387, %385 ], !dbg !485
  %391 = load ptr, ptr %390, align 8, !dbg !485
  store i16 %375, ptr %391, align 2, !dbg !486
  store i32 1, ptr %4, align 4, !dbg !487
  br label %666, !dbg !487

392:                                              ; preds = %17
  %393 = load ptr, ptr %8, align 8, !dbg !488
  %394 = getelementptr inbounds nuw %struct.TIFFDirectory, ptr %393, i32 0, i32 6, !dbg !489
  %395 = load i32, ptr %394, align 4, !dbg !489
  %396 = load ptr, ptr %7, align 8, !dbg !490
  %397 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %396, i32 0, i32 0, !dbg !490
  %398 = load i32, ptr %397, align 8, !dbg !490
  %399 = icmp ule i32 %398, 40, !dbg !490
  br i1 %399, label %400, label %405, !dbg !490

400:                                              ; preds = %392
  %401 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %396, i32 0, i32 3, !dbg !490
  %402 = load ptr, ptr %401, align 8, !dbg !490
  %403 = getelementptr i8, ptr %402, i32 %398, !dbg !490
  %404 = add i32 %398, 8, !dbg !490
  store i32 %404, ptr %397, align 8, !dbg !490
  br label %409, !dbg !490

405:                                              ; preds = %392
  %406 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %396, i32 0, i32 2, !dbg !490
  %407 = load ptr, ptr %406, align 8, !dbg !490
  %408 = getelementptr i8, ptr %407, i32 8, !dbg !490
  store ptr %408, ptr %406, align 8, !dbg !490
  br label %409, !dbg !490

409:                                              ; preds = %405, %400
  %410 = phi ptr [ %403, %400 ], [ %407, %405 ], !dbg !490
  %411 = load ptr, ptr %410, align 8, !dbg !490
  store i32 %395, ptr %411, align 4, !dbg !491
  store i32 1, ptr %4, align 4, !dbg !492
  br label %666, !dbg !492

412:                                              ; preds = %17
  %413 = load ptr, ptr %8, align 8, !dbg !493
  %414 = getelementptr inbounds nuw %struct.TIFFDirectory, ptr %413, i32 0, i32 9, !dbg !494
  %415 = load i16, ptr %414, align 2, !dbg !494
  %416 = zext i16 %415 to i32, !dbg !493
  %417 = sub nsw i32 %416, 1, !dbg !495
  %418 = trunc i32 %417 to i16, !dbg !493
  %419 = load ptr, ptr %7, align 8, !dbg !496
  %420 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %419, i32 0, i32 0, !dbg !496
  %421 = load i32, ptr %420, align 8, !dbg !496
  %422 = icmp ule i32 %421, 40, !dbg !496
  br i1 %422, label %423, label %428, !dbg !496

423:                                              ; preds = %412
  %424 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %419, i32 0, i32 3, !dbg !496
  %425 = load ptr, ptr %424, align 8, !dbg !496
  %426 = getelementptr i8, ptr %425, i32 %421, !dbg !496
  %427 = add i32 %421, 8, !dbg !496
  store i32 %427, ptr %420, align 8, !dbg !496
  br label %432, !dbg !496

428:                                              ; preds = %412
  %429 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %419, i32 0, i32 2, !dbg !496
  %430 = load ptr, ptr %429, align 8, !dbg !496
  %431 = getelementptr i8, ptr %430, i32 8, !dbg !496
  store ptr %431, ptr %429, align 8, !dbg !496
  br label %432, !dbg !496

432:                                              ; preds = %428, %423
  %433 = phi ptr [ %426, %423 ], [ %430, %428 ], !dbg !496
  %434 = load ptr, ptr %433, align 8, !dbg !496
  store i16 %418, ptr %434, align 2, !dbg !497
  store i32 1, ptr %4, align 4, !dbg !498
  br label %666, !dbg !498

435:                                              ; preds = %17
  %436 = load ptr, ptr %8, align 8, !dbg !499
  %437 = getelementptr inbounds nuw %struct.TIFFDirectory, ptr %436, i32 0, i32 3, !dbg !500
  %438 = load i32, ptr %437, align 8, !dbg !500
  %439 = load ptr, ptr %7, align 8, !dbg !501
  %440 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %439, i32 0, i32 0, !dbg !501
  %441 = load i32, ptr %440, align 8, !dbg !501
  %442 = icmp ule i32 %441, 40, !dbg !501
  br i1 %442, label %443, label %448, !dbg !501

443:                                              ; preds = %435
  %444 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %439, i32 0, i32 3, !dbg !501
  %445 = load ptr, ptr %444, align 8, !dbg !501
  %446 = getelementptr i8, ptr %445, i32 %441, !dbg !501
  %447 = add i32 %441, 8, !dbg !501
  store i32 %447, ptr %440, align 8, !dbg !501
  br label %452, !dbg !501

448:                                              ; preds = %435
  %449 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %439, i32 0, i32 2, !dbg !501
  %450 = load ptr, ptr %449, align 8, !dbg !501
  %451 = getelementptr i8, ptr %450, i32 8, !dbg !501
  store ptr %451, ptr %449, align 8, !dbg !501
  br label %452, !dbg !501

452:                                              ; preds = %448, %443
  %453 = phi ptr [ %446, %443 ], [ %450, %448 ], !dbg !501
  %454 = load ptr, ptr %453, align 8, !dbg !501
  store i32 %438, ptr %454, align 4, !dbg !502
  store i32 1, ptr %4, align 4, !dbg !503
  br label %666, !dbg !503

455:                                              ; preds = %17
  %456 = load ptr, ptr %8, align 8, !dbg !504
  %457 = getelementptr inbounds nuw %struct.TIFFDirectory, ptr %456, i32 0, i32 48, !dbg !506
  %458 = load ptr, ptr %457, align 8, !dbg !506
  %459 = icmp ne ptr %458, null, !dbg !504
  br i1 %459, label %476, label %460, !dbg !507

460:                                              ; preds = %455
  %461 = call ptr @_TIFFmalloc(i32 noundef 12), !dbg !508
  %462 = load ptr, ptr %8, align 8, !dbg !510
  %463 = getelementptr inbounds nuw %struct.TIFFDirectory, ptr %462, i32 0, i32 48, !dbg !511
  store ptr %461, ptr %463, align 8, !dbg !512
  %464 = load ptr, ptr %8, align 8, !dbg !513
  %465 = getelementptr inbounds nuw %struct.TIFFDirectory, ptr %464, i32 0, i32 48, !dbg !514
  %466 = load ptr, ptr %465, align 8, !dbg !514
  %467 = getelementptr inbounds float, ptr %466, i64 0, !dbg !513
  store float 0x3FD322D0E0000000, ptr %467, align 4, !dbg !515
  %468 = load ptr, ptr %8, align 8, !dbg !516
  %469 = getelementptr inbounds nuw %struct.TIFFDirectory, ptr %468, i32 0, i32 48, !dbg !517
  %470 = load ptr, ptr %469, align 8, !dbg !517
  %471 = getelementptr inbounds float, ptr %470, i64 1, !dbg !516
  store float 0x3FE2C8B440000000, ptr %471, align 4, !dbg !518
  %472 = load ptr, ptr %8, align 8, !dbg !519
  %473 = getelementptr inbounds nuw %struct.TIFFDirectory, ptr %472, i32 0, i32 48, !dbg !520
  %474 = load ptr, ptr %473, align 8, !dbg !520
  %475 = getelementptr inbounds float, ptr %474, i64 2, !dbg !519
  store float 0x3FBD2F1AA0000000, ptr %475, align 4, !dbg !521
  br label %476, !dbg !522

476:                                              ; preds = %460, %455
  %477 = load ptr, ptr %8, align 8, !dbg !523
  %478 = getelementptr inbounds nuw %struct.TIFFDirectory, ptr %477, i32 0, i32 48, !dbg !524
  %479 = load ptr, ptr %478, align 8, !dbg !524
  %480 = load ptr, ptr %7, align 8, !dbg !525
  %481 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %480, i32 0, i32 0, !dbg !525
  %482 = load i32, ptr %481, align 8, !dbg !525
  %483 = icmp ule i32 %482, 40, !dbg !525
  br i1 %483, label %484, label %489, !dbg !525

484:                                              ; preds = %476
  %485 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %480, i32 0, i32 3, !dbg !525
  %486 = load ptr, ptr %485, align 8, !dbg !525
  %487 = getelementptr i8, ptr %486, i32 %482, !dbg !525
  %488 = add i32 %482, 8, !dbg !525
  store i32 %488, ptr %481, align 8, !dbg !525
  br label %493, !dbg !525

489:                                              ; preds = %476
  %490 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %480, i32 0, i32 2, !dbg !525
  %491 = load ptr, ptr %490, align 8, !dbg !525
  %492 = getelementptr i8, ptr %491, i32 8, !dbg !525
  store ptr %492, ptr %490, align 8, !dbg !525
  br label %493, !dbg !525

493:                                              ; preds = %489, %484
  %494 = phi ptr [ %487, %484 ], [ %491, %489 ], !dbg !525
  %495 = load ptr, ptr %494, align 8, !dbg !525
  store ptr %479, ptr %495, align 8, !dbg !526
  store i32 1, ptr %4, align 4, !dbg !527
  br label %666, !dbg !527

496:                                              ; preds = %17
  %497 = load ptr, ptr %8, align 8, !dbg !528
  %498 = getelementptr inbounds nuw %struct.TIFFDirectory, ptr %497, i32 0, i32 49, !dbg !529
  %499 = getelementptr inbounds [2 x i16], ptr %498, i64 0, i64 0, !dbg !528
  %500 = load i16, ptr %499, align 8, !dbg !528
  %501 = load ptr, ptr %7, align 8, !dbg !530
  %502 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %501, i32 0, i32 0, !dbg !530
  %503 = load i32, ptr %502, align 8, !dbg !530
  %504 = icmp ule i32 %503, 40, !dbg !530
  br i1 %504, label %505, label %510, !dbg !530

505:                                              ; preds = %496
  %506 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %501, i32 0, i32 3, !dbg !530
  %507 = load ptr, ptr %506, align 8, !dbg !530
  %508 = getelementptr i8, ptr %507, i32 %503, !dbg !530
  %509 = add i32 %503, 8, !dbg !530
  store i32 %509, ptr %502, align 8, !dbg !530
  br label %514, !dbg !530

510:                                              ; preds = %496
  %511 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %501, i32 0, i32 2, !dbg !530
  %512 = load ptr, ptr %511, align 8, !dbg !530
  %513 = getelementptr i8, ptr %512, i32 8, !dbg !530
  store ptr %513, ptr %511, align 8, !dbg !530
  br label %514, !dbg !530

514:                                              ; preds = %510, %505
  %515 = phi ptr [ %508, %505 ], [ %512, %510 ], !dbg !530
  %516 = load ptr, ptr %515, align 8, !dbg !530
  store i16 %500, ptr %516, align 2, !dbg !531
  %517 = load ptr, ptr %8, align 8, !dbg !532
  %518 = getelementptr inbounds nuw %struct.TIFFDirectory, ptr %517, i32 0, i32 49, !dbg !533
  %519 = getelementptr inbounds [2 x i16], ptr %518, i64 0, i64 1, !dbg !532
  %520 = load i16, ptr %519, align 2, !dbg !532
  %521 = load ptr, ptr %7, align 8, !dbg !534
  %522 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %521, i32 0, i32 0, !dbg !534
  %523 = load i32, ptr %522, align 8, !dbg !534
  %524 = icmp ule i32 %523, 40, !dbg !534
  br i1 %524, label %525, label %530, !dbg !534

525:                                              ; preds = %514
  %526 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %521, i32 0, i32 3, !dbg !534
  %527 = load ptr, ptr %526, align 8, !dbg !534
  %528 = getelementptr i8, ptr %527, i32 %523, !dbg !534
  %529 = add i32 %523, 8, !dbg !534
  store i32 %529, ptr %522, align 8, !dbg !534
  br label %534, !dbg !534

530:                                              ; preds = %514
  %531 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %521, i32 0, i32 2, !dbg !534
  %532 = load ptr, ptr %531, align 8, !dbg !534
  %533 = getelementptr i8, ptr %532, i32 8, !dbg !534
  store ptr %533, ptr %531, align 8, !dbg !534
  br label %534, !dbg !534

534:                                              ; preds = %530, %525
  %535 = phi ptr [ %528, %525 ], [ %532, %530 ], !dbg !534
  %536 = load ptr, ptr %535, align 8, !dbg !534
  store i16 %520, ptr %536, align 2, !dbg !535
  store i32 1, ptr %4, align 4, !dbg !536
  br label %666, !dbg !536

537:                                              ; preds = %17
  %538 = load ptr, ptr %8, align 8, !dbg !537
  %539 = getelementptr inbounds nuw %struct.TIFFDirectory, ptr %538, i32 0, i32 50, !dbg !538
  %540 = load i16, ptr %539, align 4, !dbg !538
  %541 = load ptr, ptr %7, align 8, !dbg !539
  %542 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %541, i32 0, i32 0, !dbg !539
  %543 = load i32, ptr %542, align 8, !dbg !539
  %544 = icmp ule i32 %543, 40, !dbg !539
  br i1 %544, label %545, label %550, !dbg !539

545:                                              ; preds = %537
  %546 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %541, i32 0, i32 3, !dbg !539
  %547 = load ptr, ptr %546, align 8, !dbg !539
  %548 = getelementptr i8, ptr %547, i32 %543, !dbg !539
  %549 = add i32 %543, 8, !dbg !539
  store i32 %549, ptr %542, align 8, !dbg !539
  br label %554, !dbg !539

550:                                              ; preds = %537
  %551 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %541, i32 0, i32 2, !dbg !539
  %552 = load ptr, ptr %551, align 8, !dbg !539
  %553 = getelementptr i8, ptr %552, i32 8, !dbg !539
  store ptr %553, ptr %551, align 8, !dbg !539
  br label %554, !dbg !539

554:                                              ; preds = %550, %545
  %555 = phi ptr [ %548, %545 ], [ %552, %550 ], !dbg !539
  %556 = load ptr, ptr %555, align 8, !dbg !539
  store i16 %540, ptr %556, align 2, !dbg !540
  store i32 1, ptr %4, align 4, !dbg !541
  br label %666, !dbg !541

557:                                              ; preds = %17
  %558 = load ptr, ptr %8, align 8, !dbg !542
  %559 = getelementptr inbounds nuw %struct.TIFFDirectory, ptr %558, i32 0, i32 54, !dbg !544
  %560 = getelementptr inbounds [3 x ptr], ptr %559, i64 0, i64 0, !dbg !542
  %561 = load ptr, ptr %560, align 8, !dbg !542
  %562 = icmp ne ptr %561, null, !dbg !542
  br i1 %562, label %565, label %563, !dbg !545

563:                                              ; preds = %557
  %564 = load ptr, ptr %8, align 8, !dbg !546
  call void @TIFFDefaultTransferFunction(ptr noundef %564), !dbg !547
  br label %565, !dbg !547

565:                                              ; preds = %563, %557
  %566 = load ptr, ptr %8, align 8, !dbg !548
  %567 = getelementptr inbounds nuw %struct.TIFFDirectory, ptr %566, i32 0, i32 54, !dbg !549
  %568 = getelementptr inbounds [3 x ptr], ptr %567, i64 0, i64 0, !dbg !548
  %569 = load ptr, ptr %568, align 8, !dbg !548
  %570 = load ptr, ptr %7, align 8, !dbg !550
  %571 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %570, i32 0, i32 0, !dbg !550
  %572 = load i32, ptr %571, align 8, !dbg !550
  %573 = icmp ule i32 %572, 40, !dbg !550
  br i1 %573, label %574, label %579, !dbg !550

574:                                              ; preds = %565
  %575 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %570, i32 0, i32 3, !dbg !550
  %576 = load ptr, ptr %575, align 8, !dbg !550
  %577 = getelementptr i8, ptr %576, i32 %572, !dbg !550
  %578 = add i32 %572, 8, !dbg !550
  store i32 %578, ptr %571, align 8, !dbg !550
  br label %583, !dbg !550

579:                                              ; preds = %565
  %580 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %570, i32 0, i32 2, !dbg !550
  %581 = load ptr, ptr %580, align 8, !dbg !550
  %582 = getelementptr i8, ptr %581, i32 8, !dbg !550
  store ptr %582, ptr %580, align 8, !dbg !550
  br label %583, !dbg !550

583:                                              ; preds = %579, %574
  %584 = phi ptr [ %577, %574 ], [ %581, %579 ], !dbg !550
  %585 = load ptr, ptr %584, align 8, !dbg !550
  store ptr %569, ptr %585, align 8, !dbg !551
  %586 = load ptr, ptr %8, align 8, !dbg !552
  %587 = getelementptr inbounds nuw %struct.TIFFDirectory, ptr %586, i32 0, i32 15, !dbg !554
  %588 = load i16, ptr %587, align 2, !dbg !554
  %589 = zext i16 %588 to i32, !dbg !552
  %590 = load ptr, ptr %8, align 8, !dbg !555
  %591 = getelementptr inbounds nuw %struct.TIFFDirectory, ptr %590, i32 0, i32 30, !dbg !556
  %592 = load i16, ptr %591, align 4, !dbg !556
  %593 = zext i16 %592 to i32, !dbg !555
  %594 = sub nsw i32 %589, %593, !dbg !557
  %595 = icmp sgt i32 %594, 1, !dbg !558
  br i1 %595, label %596, label %637, !dbg !558

596:                                              ; preds = %583
  %597 = load ptr, ptr %8, align 8, !dbg !559
  %598 = getelementptr inbounds nuw %struct.TIFFDirectory, ptr %597, i32 0, i32 54, !dbg !561
  %599 = getelementptr inbounds [3 x ptr], ptr %598, i64 0, i64 1, !dbg !559
  %600 = load ptr, ptr %599, align 8, !dbg !559
  %601 = load ptr, ptr %7, align 8, !dbg !562
  %602 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %601, i32 0, i32 0, !dbg !562
  %603 = load i32, ptr %602, align 8, !dbg !562
  %604 = icmp ule i32 %603, 40, !dbg !562
  br i1 %604, label %605, label %610, !dbg !562

605:                                              ; preds = %596
  %606 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %601, i32 0, i32 3, !dbg !562
  %607 = load ptr, ptr %606, align 8, !dbg !562
  %608 = getelementptr i8, ptr %607, i32 %603, !dbg !562
  %609 = add i32 %603, 8, !dbg !562
  store i32 %609, ptr %602, align 8, !dbg !562
  br label %614, !dbg !562

610:                                              ; preds = %596
  %611 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %601, i32 0, i32 2, !dbg !562
  %612 = load ptr, ptr %611, align 8, !dbg !562
  %613 = getelementptr i8, ptr %612, i32 8, !dbg !562
  store ptr %613, ptr %611, align 8, !dbg !562
  br label %614, !dbg !562

614:                                              ; preds = %610, %605
  %615 = phi ptr [ %608, %605 ], [ %612, %610 ], !dbg !562
  %616 = load ptr, ptr %615, align 8, !dbg !562
  store ptr %600, ptr %616, align 8, !dbg !563
  %617 = load ptr, ptr %8, align 8, !dbg !564
  %618 = getelementptr inbounds nuw %struct.TIFFDirectory, ptr %617, i32 0, i32 54, !dbg !565
  %619 = getelementptr inbounds [3 x ptr], ptr %618, i64 0, i64 2, !dbg !564
  %620 = load ptr, ptr %619, align 8, !dbg !564
  %621 = load ptr, ptr %7, align 8, !dbg !566
  %622 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %621, i32 0, i32 0, !dbg !566
  %623 = load i32, ptr %622, align 8, !dbg !566
  %624 = icmp ule i32 %623, 40, !dbg !566
  br i1 %624, label %625, label %630, !dbg !566

625:                                              ; preds = %614
  %626 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %621, i32 0, i32 3, !dbg !566
  %627 = load ptr, ptr %626, align 8, !dbg !566
  %628 = getelementptr i8, ptr %627, i32 %623, !dbg !566
  %629 = add i32 %623, 8, !dbg !566
  store i32 %629, ptr %622, align 8, !dbg !566
  br label %634, !dbg !566

630:                                              ; preds = %614
  %631 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %621, i32 0, i32 2, !dbg !566
  %632 = load ptr, ptr %631, align 8, !dbg !566
  %633 = getelementptr i8, ptr %632, i32 8, !dbg !566
  store ptr %633, ptr %631, align 8, !dbg !566
  br label %634, !dbg !566

634:                                              ; preds = %630, %625
  %635 = phi ptr [ %628, %625 ], [ %632, %630 ], !dbg !566
  %636 = load ptr, ptr %635, align 8, !dbg !566
  store ptr %620, ptr %636, align 8, !dbg !567
  br label %637, !dbg !568

637:                                              ; preds = %634, %583
  store i32 1, ptr %4, align 4, !dbg !569
  br label %666, !dbg !569

638:                                              ; preds = %17
  %639 = load ptr, ptr %8, align 8, !dbg !570
  %640 = getelementptr inbounds nuw %struct.TIFFDirectory, ptr %639, i32 0, i32 53, !dbg !572
  %641 = load ptr, ptr %640, align 8, !dbg !572
  %642 = icmp ne ptr %641, null, !dbg !570
  br i1 %642, label %645, label %643, !dbg !573

643:                                              ; preds = %638
  %644 = load ptr, ptr %8, align 8, !dbg !574
  call void @TIFFDefaultRefBlackWhite(ptr noundef %644), !dbg !575
  br label %645, !dbg !575

645:                                              ; preds = %643, %638
  %646 = load ptr, ptr %8, align 8, !dbg !576
  %647 = getelementptr inbounds nuw %struct.TIFFDirectory, ptr %646, i32 0, i32 53, !dbg !577
  %648 = load ptr, ptr %647, align 8, !dbg !577
  %649 = load ptr, ptr %7, align 8, !dbg !578
  %650 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %649, i32 0, i32 0, !dbg !578
  %651 = load i32, ptr %650, align 8, !dbg !578
  %652 = icmp ule i32 %651, 40, !dbg !578
  br i1 %652, label %653, label %658, !dbg !578

653:                                              ; preds = %645
  %654 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %649, i32 0, i32 3, !dbg !578
  %655 = load ptr, ptr %654, align 8, !dbg !578
  %656 = getelementptr i8, ptr %655, i32 %651, !dbg !578
  %657 = add i32 %651, 8, !dbg !578
  store i32 %657, ptr %650, align 8, !dbg !578
  br label %662, !dbg !578

658:                                              ; preds = %645
  %659 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %649, i32 0, i32 2, !dbg !578
  %660 = load ptr, ptr %659, align 8, !dbg !578
  %661 = getelementptr i8, ptr %660, i32 8, !dbg !578
  store ptr %661, ptr %659, align 8, !dbg !578
  br label %662, !dbg !578

662:                                              ; preds = %658, %653
  %663 = phi ptr [ %656, %653 ], [ %660, %658 ], !dbg !578
  %664 = load ptr, ptr %663, align 8, !dbg !578
  store ptr %648, ptr %664, align 8, !dbg !579
  store i32 1, ptr %4, align 4, !dbg !580
  br label %666, !dbg !580

665:                                              ; preds = %17
  store i32 0, ptr %4, align 4, !dbg !581
  br label %666, !dbg !581

666:                                              ; preds = %665, %662, %637, %554, %534, %493, %452, %432, %409, %389, %355, %316, %296, %276, %236, %216, %196, %176, %156, %136, %116, %96, %76, %56, %36, %16
  %667 = load i32, ptr %4, align 4, !dbg !582
  ret i32 %667, !dbg !582
}

declare i32 @TIFFVGetField(ptr noundef, i32 noundef, ptr noundef) #1

declare ptr @_TIFFmalloc(i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @TIFFDefaultTransferFunction(ptr noundef %0) #0 !dbg !583 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca double, align 8
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !586, !DIExpression(), !587)
    #dbg_declare(ptr %3, !588, !DIExpression(), !590)
  %7 = load ptr, ptr %2, align 8, !dbg !591
  %8 = getelementptr inbounds nuw %struct.TIFFDirectory, ptr %7, i32 0, i32 54, !dbg !592
  %9 = getelementptr inbounds [3 x ptr], ptr %8, i64 0, i64 0, !dbg !591
  store ptr %9, ptr %3, align 8, !dbg !590
    #dbg_declare(ptr %4, !593, !DIExpression(), !594)
    #dbg_declare(ptr %5, !595, !DIExpression(), !596)
  %10 = load ptr, ptr %2, align 8, !dbg !597
  %11 = getelementptr inbounds nuw %struct.TIFFDirectory, ptr %10, i32 0, i32 8, !dbg !598
  %12 = load i16, ptr %11, align 4, !dbg !598
  %13 = zext i16 %12 to i32, !dbg !597
  %14 = shl i32 1, %13, !dbg !599
  %15 = sext i32 %14 to i64, !dbg !600
  store i64 %15, ptr %5, align 8, !dbg !596
  %16 = load i64, ptr %5, align 8, !dbg !601
  %17 = mul i64 %16, 2, !dbg !602
  %18 = trunc i64 %17 to i32, !dbg !601
  %19 = call ptr @_TIFFmalloc(i32 noundef %18), !dbg !603
  %20 = load ptr, ptr %3, align 8, !dbg !604
  %21 = getelementptr inbounds ptr, ptr %20, i64 0, !dbg !604
  store ptr %19, ptr %21, align 8, !dbg !605
  %22 = load ptr, ptr %3, align 8, !dbg !606
  %23 = getelementptr inbounds ptr, ptr %22, i64 0, !dbg !606
  %24 = load ptr, ptr %23, align 8, !dbg !606
  %25 = getelementptr inbounds i16, ptr %24, i64 0, !dbg !606
  store i16 0, ptr %25, align 2, !dbg !607
  store i64 1, ptr %4, align 8, !dbg !608
  br label %26, !dbg !610

26:                                               ; preds = %47, %1
  %27 = load i64, ptr %4, align 8, !dbg !611
  %28 = load i64, ptr %5, align 8, !dbg !613
  %29 = icmp slt i64 %27, %28, !dbg !614
  br i1 %29, label %30, label %50, !dbg !615

30:                                               ; preds = %26
    #dbg_declare(ptr %6, !616, !DIExpression(), !618)
  %31 = load i64, ptr %4, align 8, !dbg !619
  %32 = sitofp i64 %31 to double, !dbg !620
  %33 = load i64, ptr %5, align 8, !dbg !621
  %34 = sitofp i64 %33 to double, !dbg !622
  %35 = fsub double %34, 1.000000e+00, !dbg !623
  %36 = fdiv double %32, %35, !dbg !624
  store double %36, ptr %6, align 8, !dbg !618
  %37 = load double, ptr %6, align 8, !dbg !625
  %38 = call double @pow(double noundef %37, double noundef 2.200000e+00) #5, !dbg !626
  %39 = call double @llvm.fmuladd.f64(double 6.553500e+04, double %38, double 5.000000e-01), !dbg !627
  %40 = call double @llvm.floor.f64(double %39), !dbg !628
  %41 = fptoui double %40 to i16, !dbg !629
  %42 = load ptr, ptr %3, align 8, !dbg !630
  %43 = getelementptr inbounds ptr, ptr %42, i64 0, !dbg !630
  %44 = load ptr, ptr %43, align 8, !dbg !630
  %45 = load i64, ptr %4, align 8, !dbg !631
  %46 = getelementptr inbounds i16, ptr %44, i64 %45, !dbg !630
  store i16 %41, ptr %46, align 2, !dbg !632
  br label %47, !dbg !633

47:                                               ; preds = %30
  %48 = load i64, ptr %4, align 8, !dbg !634
  %49 = add nsw i64 %48, 1, !dbg !634
  store i64 %49, ptr %4, align 8, !dbg !634
  br label %26, !dbg !635, !llvm.loop !636

50:                                               ; preds = %26
  %51 = load ptr, ptr %2, align 8, !dbg !639
  %52 = getelementptr inbounds nuw %struct.TIFFDirectory, ptr %51, i32 0, i32 15, !dbg !641
  %53 = load i16, ptr %52, align 2, !dbg !641
  %54 = zext i16 %53 to i32, !dbg !639
  %55 = load ptr, ptr %2, align 8, !dbg !642
  %56 = getelementptr inbounds nuw %struct.TIFFDirectory, ptr %55, i32 0, i32 30, !dbg !643
  %57 = load i16, ptr %56, align 4, !dbg !643
  %58 = zext i16 %57 to i32, !dbg !642
  %59 = sub nsw i32 %54, %58, !dbg !644
  %60 = icmp sgt i32 %59, 1, !dbg !645
  br i1 %60, label %61, label %92, !dbg !645

61:                                               ; preds = %50
  %62 = load i64, ptr %5, align 8, !dbg !646
  %63 = mul i64 %62, 2, !dbg !648
  %64 = trunc i64 %63 to i32, !dbg !646
  %65 = call ptr @_TIFFmalloc(i32 noundef %64), !dbg !649
  %66 = load ptr, ptr %3, align 8, !dbg !650
  %67 = getelementptr inbounds ptr, ptr %66, i64 1, !dbg !650
  store ptr %65, ptr %67, align 8, !dbg !651
  %68 = load ptr, ptr %3, align 8, !dbg !652
  %69 = getelementptr inbounds ptr, ptr %68, i64 1, !dbg !652
  %70 = load ptr, ptr %69, align 8, !dbg !652
  %71 = load ptr, ptr %3, align 8, !dbg !653
  %72 = getelementptr inbounds ptr, ptr %71, i64 0, !dbg !653
  %73 = load ptr, ptr %72, align 8, !dbg !653
  %74 = load i64, ptr %5, align 8, !dbg !654
  %75 = mul i64 %74, 2, !dbg !655
  %76 = trunc i64 %75 to i32, !dbg !654
  call void @_TIFFmemcpy(ptr noundef %70, ptr noundef %73, i32 noundef %76), !dbg !656
  %77 = load i64, ptr %5, align 8, !dbg !657
  %78 = mul i64 %77, 2, !dbg !658
  %79 = trunc i64 %78 to i32, !dbg !657
  %80 = call ptr @_TIFFmalloc(i32 noundef %79), !dbg !659
  %81 = load ptr, ptr %3, align 8, !dbg !660
  %82 = getelementptr inbounds ptr, ptr %81, i64 2, !dbg !660
  store ptr %80, ptr %82, align 8, !dbg !661
  %83 = load ptr, ptr %3, align 8, !dbg !662
  %84 = getelementptr inbounds ptr, ptr %83, i64 2, !dbg !662
  %85 = load ptr, ptr %84, align 8, !dbg !662
  %86 = load ptr, ptr %3, align 8, !dbg !663
  %87 = getelementptr inbounds ptr, ptr %86, i64 0, !dbg !663
  %88 = load ptr, ptr %87, align 8, !dbg !663
  %89 = load i64, ptr %5, align 8, !dbg !664
  %90 = mul i64 %89, 2, !dbg !665
  %91 = trunc i64 %90 to i32, !dbg !664
  call void @_TIFFmemcpy(ptr noundef %85, ptr noundef %88, i32 noundef %91), !dbg !666
  br label %92, !dbg !667

92:                                               ; preds = %61, %50
  ret void, !dbg !668
}

; Function Attrs: noinline nounwind uwtable
define internal void @TIFFDefaultRefBlackWhite(ptr noundef %0) #0 !dbg !669 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
    #dbg_declare(ptr %2, !670, !DIExpression(), !671)
    #dbg_declare(ptr %3, !672, !DIExpression(), !673)
  %4 = call ptr @_TIFFmalloc(i32 noundef 24), !dbg !674
  %5 = load ptr, ptr %2, align 8, !dbg !675
  %6 = getelementptr inbounds nuw %struct.TIFFDirectory, ptr %5, i32 0, i32 53, !dbg !676
  store ptr %4, ptr %6, align 8, !dbg !677
  store i32 0, ptr %3, align 4, !dbg !678
  br label %7, !dbg !680

7:                                                ; preds = %35, %1
  %8 = load i32, ptr %3, align 4, !dbg !681
  %9 = icmp slt i32 %8, 3, !dbg !683
  br i1 %9, label %10, label %38, !dbg !684

10:                                               ; preds = %7
  %11 = load ptr, ptr %2, align 8, !dbg !685
  %12 = getelementptr inbounds nuw %struct.TIFFDirectory, ptr %11, i32 0, i32 53, !dbg !687
  %13 = load ptr, ptr %12, align 8, !dbg !687
  %14 = load i32, ptr %3, align 4, !dbg !688
  %15 = mul nsw i32 2, %14, !dbg !689
  %16 = add nsw i32 %15, 0, !dbg !690
  %17 = sext i32 %16 to i64, !dbg !685
  %18 = getelementptr inbounds float, ptr %13, i64 %17, !dbg !685
  store float 0.000000e+00, ptr %18, align 4, !dbg !691
  %19 = load ptr, ptr %2, align 8, !dbg !692
  %20 = getelementptr inbounds nuw %struct.TIFFDirectory, ptr %19, i32 0, i32 8, !dbg !693
  %21 = load i16, ptr %20, align 4, !dbg !693
  %22 = zext i16 %21 to i32, !dbg !692
  %23 = zext i32 %22 to i64, !dbg !694
  %24 = shl i64 1, %23, !dbg !694
  %25 = sub nsw i64 %24, 1, !dbg !695
  %26 = sitofp i64 %25 to float, !dbg !696
  %27 = load ptr, ptr %2, align 8, !dbg !697
  %28 = getelementptr inbounds nuw %struct.TIFFDirectory, ptr %27, i32 0, i32 53, !dbg !698
  %29 = load ptr, ptr %28, align 8, !dbg !698
  %30 = load i32, ptr %3, align 4, !dbg !699
  %31 = mul nsw i32 2, %30, !dbg !700
  %32 = add nsw i32 %31, 1, !dbg !701
  %33 = sext i32 %32 to i64, !dbg !697
  %34 = getelementptr inbounds float, ptr %29, i64 %33, !dbg !697
  store float %26, ptr %34, align 4, !dbg !702
  br label %35, !dbg !703

35:                                               ; preds = %10
  %36 = load i32, ptr %3, align 4, !dbg !704
  %37 = add nsw i32 %36, 1, !dbg !704
  store i32 %37, ptr %3, align 4, !dbg !704
  br label %7, !dbg !705, !llvm.loop !706

38:                                               ; preds = %7
  ret void, !dbg !708
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @TIFFGetFieldDefaulted(ptr noundef %0, i32 noundef %1, ...) #0 !dbg !709 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  store ptr %0, ptr %3, align 8
    #dbg_declare(ptr %3, !712, !DIExpression(), !713)
  store i32 %1, ptr %4, align 4
    #dbg_declare(ptr %4, !714, !DIExpression(), !715)
    #dbg_declare(ptr %5, !716, !DIExpression(), !717)
    #dbg_declare(ptr %6, !718, !DIExpression(), !723)
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %6, i64 0, i64 0, !dbg !724
  call void @llvm.va_start.p0(ptr %7), !dbg !724
  %8 = load ptr, ptr %3, align 8, !dbg !725
  %9 = load i32, ptr %4, align 4, !dbg !726
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %6, i64 0, i64 0, !dbg !727
  %11 = call i32 @TIFFVGetFieldDefaulted(ptr noundef %8, i32 noundef %9, ptr noundef %10), !dbg !728
  store i32 %11, ptr %5, align 4, !dbg !729
  %12 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %6, i64 0, i64 0, !dbg !730
  call void @llvm.va_end.p0(ptr %12), !dbg !730
  %13 = load i32, ptr %5, align 4, !dbg !731
  ret i32 %13, !dbg !732
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #2

; Function Attrs: nounwind
declare double @pow(double noundef, double noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #4

declare void @_TIFFmemcpy(ptr noundef, ptr noundef, i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !20, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "cBench/consumer_tiff2bw/src/tif_aux.c", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "fef19fe23a65dfc6cc85f6e39767b00c")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 120, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "cBench/consumer_tiff2bw/src/tiff.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "481b1fc81ef74ff952bf85d3f2d42aca")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19}
!7 = !DIEnumerator(name: "TIFF_NOTYPE", value: 0)
!8 = !DIEnumerator(name: "TIFF_BYTE", value: 1)
!9 = !DIEnumerator(name: "TIFF_ASCII", value: 2)
!10 = !DIEnumerator(name: "TIFF_SHORT", value: 3)
!11 = !DIEnumerator(name: "TIFF_LONG", value: 4)
!12 = !DIEnumerator(name: "TIFF_RATIONAL", value: 5)
!13 = !DIEnumerator(name: "TIFF_SBYTE", value: 6)
!14 = !DIEnumerator(name: "TIFF_UNDEFINED", value: 7)
!15 = !DIEnumerator(name: "TIFF_SSHORT", value: 8)
!16 = !DIEnumerator(name: "TIFF_SLONG", value: 9)
!17 = !DIEnumerator(name: "TIFF_SRATIONAL", value: 10)
!18 = !DIEnumerator(name: "TIFF_FLOAT", value: 11)
!19 = !DIEnumerator(name: "TIFF_DOUBLE", value: 12)
!20 = !{!21, !23, !26, !24, !22}
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16", file: !4, line: 62, baseType: !25)
!25 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!26 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!27 = !{i32 7, !"Dwarf Version", i32 5}
!28 = !{i32 2, !"Debug Info Version", i32 3}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)"}
!35 = distinct !DISubprogram(name: "TIFFVGetFieldDefaulted", scope: !1, file: !1, line: 79, type: !36, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !371)
!36 = !DISubroutineType(types: !37)
!37 = !{!38, !39, !284, !364}
!38 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "TIFF", file: !41, line: 48, baseType: !42)
!41 = !DIFile(filename: "cBench/consumer_tiff2bw/src/tiffio.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "881752c035a7937b11611441903a05b9")
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tiff", file: !43, line: 70, size: 7040, elements: !44)
!43 = !DIFile(filename: "cBench/consumer_tiff2bw/src/tiffiop.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "6324af1ca1eb1b70648c0ebf381681c1")
!44 = !{!45, !48, !49, !50, !52, !55, !56, !150, !157, !162, !165, !169, !170, !172, !173, !174, !175, !176, !177, !178, !180, !182, !187, !193, !194, !195, !196, !201, !202, !203, !204, !205, !206, !211, !216, !217, !222, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !245, !250, !251, !256, !257, !262, !267, !272, !277, !298, !299, !302, !304}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "tif_name", scope: !42, file: !43, line: 71, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "tif_fd", scope: !42, file: !43, line: 72, baseType: !38, size: 32, offset: 64)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "tif_mode", scope: !42, file: !43, line: 73, baseType: !38, size: 32, offset: 96)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "tif_flags", scope: !42, file: !43, line: 74, baseType: !51, size: 32, offset: 128)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !4, line: 66, baseType: !5)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "tif_diroff", scope: !42, file: !43, line: 90, baseType: !53, size: 32, offset: 160)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "toff_t", file: !41, line: 75, baseType: !54)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32", file: !4, line: 65, baseType: !38)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "tif_nextdiroff", scope: !42, file: !43, line: 91, baseType: !53, size: 32, offset: 192)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "tif_dir", scope: !42, file: !43, line: 92, baseType: !57, size: 3776, offset: 256)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "TIFFDirectory", file: !58, line: 121, baseType: !59)
!58 = !DIFile(filename: "cBench/consumer_tiff2bw/src/tif_dir.h", directory: "/n/eecs583b/home/adahad/hw0", checksumkind: CSK_MD5, checksum: "467bfe3104f8edda1690c4215d0ca70c")
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !58, line: 36, size: 3776, elements: !60)
!60 = !{!61, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !100, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !117, !118, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "td_fieldsset", scope: !59, file: !58, line: 39, baseType: !62, size: 192)
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 192, elements: !68)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_long", file: !64, line: 36, baseType: !65)
!64 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_long", file: !66, line: 34, baseType: !67)
!66 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!67 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!68 = !{!69}
!69 = !DISubrange(count: 3)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "td_imagewidth", scope: !59, file: !58, line: 41, baseType: !51, size: 32, offset: 192)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "td_imagelength", scope: !59, file: !58, line: 41, baseType: !51, size: 32, offset: 224)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "td_imagedepth", scope: !59, file: !58, line: 41, baseType: !51, size: 32, offset: 256)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "td_tilewidth", scope: !59, file: !58, line: 42, baseType: !51, size: 32, offset: 288)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "td_tilelength", scope: !59, file: !58, line: 42, baseType: !51, size: 32, offset: 320)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "td_tiledepth", scope: !59, file: !58, line: 42, baseType: !51, size: 32, offset: 352)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "td_subfiletype", scope: !59, file: !58, line: 43, baseType: !51, size: 32, offset: 384)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "td_bitspersample", scope: !59, file: !58, line: 44, baseType: !24, size: 16, offset: 416)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "td_sampleformat", scope: !59, file: !58, line: 45, baseType: !24, size: 16, offset: 432)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "td_compression", scope: !59, file: !58, line: 46, baseType: !24, size: 16, offset: 448)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "td_photometric", scope: !59, file: !58, line: 47, baseType: !24, size: 16, offset: 464)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "td_threshholding", scope: !59, file: !58, line: 48, baseType: !24, size: 16, offset: 480)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "td_fillorder", scope: !59, file: !58, line: 49, baseType: !24, size: 16, offset: 496)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "td_orientation", scope: !59, file: !58, line: 50, baseType: !24, size: 16, offset: 512)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "td_samplesperpixel", scope: !59, file: !58, line: 51, baseType: !24, size: 16, offset: 528)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "td_rowsperstrip", scope: !59, file: !58, line: 52, baseType: !51, size: 32, offset: 544)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "td_minsamplevalue", scope: !59, file: !58, line: 53, baseType: !24, size: 16, offset: 576)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "td_maxsamplevalue", scope: !59, file: !58, line: 53, baseType: !24, size: 16, offset: 592)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "td_sminsamplevalue", scope: !59, file: !58, line: 54, baseType: !26, size: 64, offset: 640)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "td_smaxsamplevalue", scope: !59, file: !58, line: 54, baseType: !26, size: 64, offset: 704)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "td_xresolution", scope: !59, file: !58, line: 55, baseType: !22, size: 32, offset: 768)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "td_yresolution", scope: !59, file: !58, line: 55, baseType: !22, size: 32, offset: 800)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "td_resolutionunit", scope: !59, file: !58, line: 56, baseType: !24, size: 16, offset: 832)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "td_planarconfig", scope: !59, file: !58, line: 57, baseType: !24, size: 16, offset: 848)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "td_xposition", scope: !59, file: !58, line: 58, baseType: !22, size: 32, offset: 864)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "td_yposition", scope: !59, file: !58, line: 58, baseType: !22, size: 32, offset: 896)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "td_pagenumber", scope: !59, file: !58, line: 59, baseType: !97, size: 32, offset: 928)
!97 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 32, elements: !98)
!98 = !{!99}
!99 = !DISubrange(count: 2)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "td_colormap", scope: !59, file: !58, line: 60, baseType: !101, size: 192, offset: 960)
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 192, elements: !68)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "td_halftonehints", scope: !59, file: !58, line: 61, baseType: !97, size: 32, offset: 1152)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "td_extrasamples", scope: !59, file: !58, line: 62, baseType: !24, size: 16, offset: 1184)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "td_sampleinfo", scope: !59, file: !58, line: 63, baseType: !23, size: 64, offset: 1216)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "td_stonits", scope: !59, file: !58, line: 64, baseType: !26, size: 64, offset: 1280)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "td_documentname", scope: !59, file: !58, line: 65, baseType: !46, size: 64, offset: 1344)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "td_artist", scope: !59, file: !58, line: 66, baseType: !46, size: 64, offset: 1408)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "td_datetime", scope: !59, file: !58, line: 67, baseType: !46, size: 64, offset: 1472)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "td_hostcomputer", scope: !59, file: !58, line: 68, baseType: !46, size: 64, offset: 1536)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "td_imagedescription", scope: !59, file: !58, line: 69, baseType: !46, size: 64, offset: 1600)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "td_make", scope: !59, file: !58, line: 70, baseType: !46, size: 64, offset: 1664)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "td_model", scope: !59, file: !58, line: 71, baseType: !46, size: 64, offset: 1728)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "td_software", scope: !59, file: !58, line: 72, baseType: !46, size: 64, offset: 1792)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "td_pagename", scope: !59, file: !58, line: 73, baseType: !46, size: 64, offset: 1856)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "td_stripsperimage", scope: !59, file: !58, line: 74, baseType: !116, size: 32, offset: 1920)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "tstrip_t", file: !41, line: 71, baseType: !51)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "td_nstrips", scope: !59, file: !58, line: 75, baseType: !116, size: 32, offset: 1952)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "td_stripoffset", scope: !59, file: !58, line: 76, baseType: !119, size: 64, offset: 1984)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "td_stripbytecount", scope: !59, file: !58, line: 77, baseType: !119, size: 64, offset: 2048)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "td_nsubifd", scope: !59, file: !58, line: 79, baseType: !24, size: 16, offset: 2112)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "td_subifd", scope: !59, file: !58, line: 80, baseType: !119, size: 64, offset: 2176)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "td_ycbcrcoeffs", scope: !59, file: !58, line: 83, baseType: !21, size: 64, offset: 2240)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "td_ycbcrsubsampling", scope: !59, file: !58, line: 84, baseType: !97, size: 32, offset: 2304)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "td_ycbcrpositioning", scope: !59, file: !58, line: 85, baseType: !24, size: 16, offset: 2336)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "td_whitepoint", scope: !59, file: !58, line: 88, baseType: !21, size: 64, offset: 2368)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "td_primarychromas", scope: !59, file: !58, line: 89, baseType: !21, size: 64, offset: 2432)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "td_refblackwhite", scope: !59, file: !58, line: 90, baseType: !21, size: 64, offset: 2496)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "td_transferfunction", scope: !59, file: !58, line: 91, baseType: !101, size: 192, offset: 2560)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "td_inkset", scope: !59, file: !58, line: 94, baseType: !24, size: 16, offset: 2752)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "td_ninks", scope: !59, file: !58, line: 95, baseType: !24, size: 16, offset: 2768)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "td_dotrange", scope: !59, file: !58, line: 96, baseType: !97, size: 32, offset: 2784)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "td_inknameslen", scope: !59, file: !58, line: 97, baseType: !38, size: 32, offset: 2816)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "td_inknames", scope: !59, file: !58, line: 98, baseType: !46, size: 64, offset: 2880)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "td_targetprinter", scope: !59, file: !58, line: 99, baseType: !46, size: 64, offset: 2944)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "td_profileLength", scope: !59, file: !58, line: 102, baseType: !51, size: 32, offset: 3008)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "td_profileData", scope: !59, file: !58, line: 103, baseType: !138, size: 64, offset: 3072)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "td_photoshopLength", scope: !59, file: !58, line: 106, baseType: !51, size: 32, offset: 3136)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "td_photoshopData", scope: !59, file: !58, line: 107, baseType: !138, size: 64, offset: 3200)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "td_richtiffiptcLength", scope: !59, file: !58, line: 110, baseType: !51, size: 32, offset: 3264)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "td_richtiffiptcData", scope: !59, file: !58, line: 111, baseType: !138, size: 64, offset: 3328)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "td_imagefullwidth", scope: !59, file: !58, line: 114, baseType: !51, size: 32, offset: 3392)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "td_imagefulllength", scope: !59, file: !58, line: 114, baseType: !51, size: 32, offset: 3424)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "td_textureformat", scope: !59, file: !58, line: 115, baseType: !46, size: 64, offset: 3456)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "td_wrapmodes", scope: !59, file: !58, line: 116, baseType: !46, size: 64, offset: 3520)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "td_fovcot", scope: !59, file: !58, line: 117, baseType: !22, size: 32, offset: 3584)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "td_matrixWorldToScreen", scope: !59, file: !58, line: 118, baseType: !21, size: 64, offset: 3648)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "td_matrixWorldToCamera", scope: !59, file: !58, line: 119, baseType: !21, size: 64, offset: 3712)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "tif_header", scope: !42, file: !43, line: 93, baseType: !151, size: 64, offset: 4032)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "TIFFHeader", file: !4, line: 85, baseType: !152)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 81, size: 64, elements: !153)
!153 = !{!154, !155, !156}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "tiff_magic", scope: !152, file: !4, line: 82, baseType: !24, size: 16)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "tiff_version", scope: !152, file: !4, line: 83, baseType: !24, size: 16, offset: 16)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "tiff_diroff", scope: !152, file: !4, line: 84, baseType: !51, size: 32, offset: 32)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "tif_clientdir", scope: !42, file: !43, line: 94, baseType: !158, size: 64, offset: 4096)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "tidata_t", file: !43, line: 56, baseType: !159)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "tidataval_t", file: !43, line: 55, baseType: !161)
!161 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "tif_typeshift", scope: !42, file: !43, line: 95, baseType: !163, size: 64, offset: 4160)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "tif_typemask", scope: !42, file: !43, line: 96, baseType: !166, size: 64, offset: 4224)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !168)
!168 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "tif_row", scope: !42, file: !43, line: 97, baseType: !51, size: 32, offset: 4288)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "tif_curdir", scope: !42, file: !43, line: 98, baseType: !171, size: 16, offset: 4320)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "tdir_t", file: !41, line: 69, baseType: !24)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "tif_curstrip", scope: !42, file: !43, line: 99, baseType: !116, size: 32, offset: 4352)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "tif_curoff", scope: !42, file: !43, line: 100, baseType: !53, size: 32, offset: 4384)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "tif_dataoff", scope: !42, file: !43, line: 101, baseType: !53, size: 32, offset: 4416)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "tif_nsubifd", scope: !42, file: !43, line: 103, baseType: !24, size: 16, offset: 4448)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "tif_subifdoff", scope: !42, file: !43, line: 104, baseType: !53, size: 32, offset: 4480)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "tif_col", scope: !42, file: !43, line: 107, baseType: !51, size: 32, offset: 4512)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "tif_curtile", scope: !42, file: !43, line: 108, baseType: !179, size: 32, offset: 4544)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "ttile_t", file: !41, line: 72, baseType: !51)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "tif_tilesize", scope: !42, file: !43, line: 109, baseType: !181, size: 32, offset: 4576)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "tsize_t", file: !41, line: 73, baseType: !54)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "tif_setupdecode", scope: !42, file: !43, line: 111, baseType: !183, size: 64, offset: 4608)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "TIFFBoolMethod", file: !43, line: 59, baseType: !184)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = !DISubroutineType(types: !186)
!186 = !{!38, !39}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "tif_predecode", scope: !42, file: !43, line: 112, baseType: !188, size: 64, offset: 4672)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "TIFFPreMethod", file: !43, line: 60, baseType: !189)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = !DISubroutineType(types: !191)
!191 = !{!38, !39, !192}
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "tsample_t", file: !41, line: 70, baseType: !24)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "tif_setupencode", scope: !42, file: !43, line: 113, baseType: !183, size: 64, offset: 4736)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "tif_preencode", scope: !42, file: !43, line: 114, baseType: !188, size: 64, offset: 4800)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "tif_postencode", scope: !42, file: !43, line: 115, baseType: !183, size: 64, offset: 4864)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "tif_decoderow", scope: !42, file: !43, line: 116, baseType: !197, size: 64, offset: 4928)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "TIFFCodeMethod", file: !43, line: 61, baseType: !198)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = !DISubroutineType(types: !200)
!200 = !{!38, !39, !158, !181, !192}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "tif_encoderow", scope: !42, file: !43, line: 117, baseType: !197, size: 64, offset: 4992)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "tif_decodestrip", scope: !42, file: !43, line: 118, baseType: !197, size: 64, offset: 5056)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "tif_encodestrip", scope: !42, file: !43, line: 119, baseType: !197, size: 64, offset: 5120)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "tif_decodetile", scope: !42, file: !43, line: 120, baseType: !197, size: 64, offset: 5184)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "tif_encodetile", scope: !42, file: !43, line: 121, baseType: !197, size: 64, offset: 5248)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "tif_close", scope: !42, file: !43, line: 122, baseType: !207, size: 64, offset: 5312)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "TIFFVoidMethod", file: !43, line: 58, baseType: !208)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DISubroutineType(types: !210)
!210 = !{null, !39}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "tif_seek", scope: !42, file: !43, line: 123, baseType: !212, size: 64, offset: 5376)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "TIFFSeekMethod", file: !43, line: 62, baseType: !213)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DISubroutineType(types: !215)
!215 = !{!38, !39, !51}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "tif_cleanup", scope: !42, file: !43, line: 124, baseType: !207, size: 64, offset: 5440)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "tif_defstripsize", scope: !42, file: !43, line: 125, baseType: !218, size: 64, offset: 5504)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "TIFFStripMethod", file: !43, line: 67, baseType: !219)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DISubroutineType(types: !221)
!221 = !{!51, !39, !51}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "tif_deftilesize", scope: !42, file: !43, line: 126, baseType: !223, size: 64, offset: 5568)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "TIFFTileMethod", file: !43, line: 68, baseType: !224)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = !DISubroutineType(types: !226)
!226 = !{null, !39, !119, !119}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "tif_data", scope: !42, file: !43, line: 127, baseType: !158, size: 64, offset: 5632)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "tif_scanlinesize", scope: !42, file: !43, line: 129, baseType: !181, size: 32, offset: 5696)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "tif_scanlineskew", scope: !42, file: !43, line: 130, baseType: !181, size: 32, offset: 5728)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "tif_rawdata", scope: !42, file: !43, line: 131, baseType: !158, size: 64, offset: 5760)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "tif_rawdatasize", scope: !42, file: !43, line: 132, baseType: !181, size: 32, offset: 5824)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "tif_rawcp", scope: !42, file: !43, line: 133, baseType: !158, size: 64, offset: 5888)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "tif_rawcc", scope: !42, file: !43, line: 134, baseType: !181, size: 32, offset: 5952)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "tif_base", scope: !42, file: !43, line: 136, baseType: !158, size: 64, offset: 6016)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "tif_size", scope: !42, file: !43, line: 137, baseType: !53, size: 32, offset: 6080)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "tif_mapproc", scope: !42, file: !43, line: 138, baseType: !237, size: 64, offset: 6144)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "TIFFMapFileProc", file: !41, line: 206, baseType: !238)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = !DISubroutineType(types: !240)
!240 = !{!38, !241, !242, !244}
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "thandle_t", file: !41, line: 88, baseType: !138)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "tdata_t", file: !41, line: 74, baseType: !138)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "tif_unmapproc", scope: !42, file: !43, line: 139, baseType: !246, size: 64, offset: 6208)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "TIFFUnmapFileProc", file: !41, line: 207, baseType: !247)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = !DISubroutineType(types: !249)
!249 = !{null, !241, !243, !53}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "tif_clientdata", scope: !42, file: !43, line: 141, baseType: !241, size: 64, offset: 6272)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "tif_readproc", scope: !42, file: !43, line: 142, baseType: !252, size: 64, offset: 6336)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "TIFFReadWriteProc", file: !41, line: 202, baseType: !253)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = !DISubroutineType(types: !255)
!255 = !{!181, !241, !243, !181}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "tif_writeproc", scope: !42, file: !43, line: 143, baseType: !252, size: 64, offset: 6400)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "tif_seekproc", scope: !42, file: !43, line: 144, baseType: !258, size: 64, offset: 6464)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "TIFFSeekProc", file: !41, line: 203, baseType: !259)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = !DISubroutineType(types: !261)
!261 = !{!53, !241, !53, !38}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "tif_closeproc", scope: !42, file: !43, line: 145, baseType: !263, size: 64, offset: 6528)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "TIFFCloseProc", file: !41, line: 204, baseType: !264)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DISubroutineType(types: !266)
!266 = !{!38, !241}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "tif_sizeproc", scope: !42, file: !43, line: 146, baseType: !268, size: 64, offset: 6592)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "TIFFSizeProc", file: !41, line: 205, baseType: !269)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = !DISubroutineType(types: !271)
!271 = !{!53, !241}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "tif_postdecode", scope: !42, file: !43, line: 148, baseType: !273, size: 64, offset: 6656)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "TIFFPostMethod", file: !43, line: 63, baseType: !274)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = !DISubroutineType(types: !276)
!276 = !{null, !39, !158, !181}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "tif_fieldinfo", scope: !42, file: !43, line: 150, baseType: !278, size: 64, offset: 6720)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "TIFFFieldInfo", file: !58, line: 238, baseType: !281)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !58, line: 229, size: 192, elements: !282)
!282 = !{!283, !285, !287, !288, !290, !293, !296, !297}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "field_tag", scope: !281, file: !58, line: 230, baseType: !284, size: 32)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "ttag_t", file: !41, line: 68, baseType: !51)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "field_readcount", scope: !281, file: !58, line: 231, baseType: !286, size: 16, offset: 32)
!286 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "field_writecount", scope: !281, file: !58, line: 232, baseType: !286, size: 16, offset: 48)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "field_type", scope: !281, file: !58, line: 233, baseType: !289, size: 32, offset: 64)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "TIFFDataType", file: !4, line: 134, baseType: !3)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "field_bit", scope: !281, file: !58, line: 234, baseType: !291, size: 16, offset: 96)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_short", file: !64, line: 34, baseType: !292)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_short", file: !66, line: 32, baseType: !25)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "field_oktochange", scope: !281, file: !58, line: 235, baseType: !294, size: 8, offset: 112)
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_char", file: !64, line: 33, baseType: !295)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_char", file: !66, line: 31, baseType: !161)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "field_passcount", scope: !281, file: !58, line: 236, baseType: !294, size: 8, offset: 120)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "field_name", scope: !281, file: !58, line: 237, baseType: !46, size: 64, offset: 128)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "tif_nfields", scope: !42, file: !43, line: 151, baseType: !38, size: 32, offset: 6784)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "tif_vsetfield", scope: !42, file: !43, line: 152, baseType: !300, size: 64, offset: 6848)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "TIFFVSetMethod", file: !43, line: 64, baseType: !301)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "tif_vgetfield", scope: !42, file: !43, line: 153, baseType: !303, size: 64, offset: 6912)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "TIFFVGetMethod", file: !43, line: 65, baseType: !301)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "tif_printdir", scope: !42, file: !43, line: 154, baseType: !305, size: 64, offset: 6976)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "TIFFPrintMethod", file: !43, line: 66, baseType: !306)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = !DISubroutineType(types: !308)
!308 = !{null, !39, !309, !168}
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !311, line: 7, baseType: !312)
!311 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !313, line: 49, size: 1728, elements: !314)
!313 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!314 = !{!315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !330, !332, !333, !334, !336, !337, !339, !343, !346, !348, !351, !354, !355, !356, !359, !360}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !312, file: !313, line: 51, baseType: !38, size: 32)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !312, file: !313, line: 54, baseType: !46, size: 64, offset: 64)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !312, file: !313, line: 55, baseType: !46, size: 64, offset: 128)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !312, file: !313, line: 56, baseType: !46, size: 64, offset: 192)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !312, file: !313, line: 57, baseType: !46, size: 64, offset: 256)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !312, file: !313, line: 58, baseType: !46, size: 64, offset: 320)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !312, file: !313, line: 59, baseType: !46, size: 64, offset: 384)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !312, file: !313, line: 60, baseType: !46, size: 64, offset: 448)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !312, file: !313, line: 61, baseType: !46, size: 64, offset: 512)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !312, file: !313, line: 64, baseType: !46, size: 64, offset: 576)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !312, file: !313, line: 65, baseType: !46, size: 64, offset: 640)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !312, file: !313, line: 66, baseType: !46, size: 64, offset: 704)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !312, file: !313, line: 68, baseType: !328, size: 64, offset: 768)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !313, line: 36, flags: DIFlagFwdDecl)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !312, file: !313, line: 70, baseType: !331, size: 64, offset: 832)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !312, file: !313, line: 72, baseType: !38, size: 32, offset: 896)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !312, file: !313, line: 73, baseType: !38, size: 32, offset: 928)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !312, file: !313, line: 74, baseType: !335, size: 64, offset: 960)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !66, line: 152, baseType: !168)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !312, file: !313, line: 77, baseType: !25, size: 16, offset: 1024)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !312, file: !313, line: 78, baseType: !338, size: 8, offset: 1040)
!338 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !312, file: !313, line: 79, baseType: !340, size: 8, offset: 1048)
!340 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 8, elements: !341)
!341 = !{!342}
!342 = !DISubrange(count: 1)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !312, file: !313, line: 81, baseType: !344, size: 64, offset: 1088)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !313, line: 43, baseType: null)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !312, file: !313, line: 89, baseType: !347, size: 64, offset: 1152)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !66, line: 153, baseType: !168)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !312, file: !313, line: 91, baseType: !349, size: 64, offset: 1216)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !313, line: 37, flags: DIFlagFwdDecl)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !312, file: !313, line: 92, baseType: !352, size: 64, offset: 1280)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !313, line: 38, flags: DIFlagFwdDecl)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !312, file: !313, line: 93, baseType: !331, size: 64, offset: 1344)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !312, file: !313, line: 94, baseType: !138, size: 64, offset: 1408)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !312, file: !313, line: 95, baseType: !357, size: 64, offset: 1472)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !358, line: 18, baseType: !67)
!358 = !DIFile(filename: "/usr/local/lib/clang/20/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!359 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !312, file: !313, line: 96, baseType: !38, size: 32, offset: 1536)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !312, file: !313, line: 98, baseType: !361, size: 160, offset: 1568)
!361 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 160, elements: !362)
!362 = !{!363}
!363 = !DISubrange(count: 20)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !366)
!366 = !{!367, !368, !369, !370}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !365, file: !1, baseType: !5, size: 32)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !365, file: !1, baseType: !5, size: 32, offset: 32)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !365, file: !1, baseType: !138, size: 64, offset: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !365, file: !1, baseType: !138, size: 64, offset: 128)
!371 = !{}
!372 = !DILocalVariable(name: "tif", arg: 1, scope: !35, file: !1, line: 79, type: !39)
!373 = !DILocation(line: 79, column: 30, scope: !35)
!374 = !DILocalVariable(name: "tag", arg: 2, scope: !35, file: !1, line: 79, type: !284)
!375 = !DILocation(line: 79, column: 42, scope: !35)
!376 = !DILocalVariable(name: "ap", arg: 3, scope: !35, file: !1, line: 79, type: !364)
!377 = !DILocation(line: 79, column: 55, scope: !35)
!378 = !DILocalVariable(name: "td", scope: !35, file: !1, line: 81, type: !379)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!380 = !DILocation(line: 81, column: 17, scope: !35)
!381 = !DILocation(line: 81, column: 23, scope: !35)
!382 = !DILocation(line: 81, column: 28, scope: !35)
!383 = !DILocation(line: 83, column: 20, scope: !384)
!384 = distinct !DILexicalBlock(scope: !35, file: !1, line: 83, column: 6)
!385 = !DILocation(line: 83, column: 25, scope: !384)
!386 = !DILocation(line: 83, column: 30, scope: !384)
!387 = !DILocation(line: 83, column: 6, scope: !384)
!388 = !DILocation(line: 84, column: 3, scope: !384)
!389 = !DILocation(line: 85, column: 10, scope: !35)
!390 = !DILocation(line: 85, column: 2, scope: !35)
!391 = !DILocation(line: 87, column: 27, scope: !392)
!392 = distinct !DILexicalBlock(scope: !35, file: !1, line: 85, column: 15)
!393 = !DILocation(line: 87, column: 31, scope: !392)
!394 = !DILocation(line: 87, column: 4, scope: !392)
!395 = !DILocation(line: 87, column: 25, scope: !392)
!396 = !DILocation(line: 88, column: 3, scope: !392)
!397 = !DILocation(line: 90, column: 27, scope: !392)
!398 = !DILocation(line: 90, column: 31, scope: !392)
!399 = !DILocation(line: 90, column: 4, scope: !392)
!400 = !DILocation(line: 90, column: 25, scope: !392)
!401 = !DILocation(line: 91, column: 3, scope: !392)
!402 = !DILocation(line: 93, column: 27, scope: !392)
!403 = !DILocation(line: 93, column: 31, scope: !392)
!404 = !DILocation(line: 93, column: 4, scope: !392)
!405 = !DILocation(line: 93, column: 25, scope: !392)
!406 = !DILocation(line: 94, column: 3, scope: !392)
!407 = !DILocation(line: 96, column: 27, scope: !392)
!408 = !DILocation(line: 96, column: 31, scope: !392)
!409 = !DILocation(line: 96, column: 4, scope: !392)
!410 = !DILocation(line: 96, column: 25, scope: !392)
!411 = !DILocation(line: 97, column: 3, scope: !392)
!412 = !DILocation(line: 99, column: 27, scope: !392)
!413 = !DILocation(line: 99, column: 31, scope: !392)
!414 = !DILocation(line: 99, column: 4, scope: !392)
!415 = !DILocation(line: 99, column: 25, scope: !392)
!416 = !DILocation(line: 100, column: 3, scope: !392)
!417 = !DILocation(line: 102, column: 27, scope: !392)
!418 = !DILocation(line: 102, column: 31, scope: !392)
!419 = !DILocation(line: 102, column: 4, scope: !392)
!420 = !DILocation(line: 102, column: 25, scope: !392)
!421 = !DILocation(line: 103, column: 3, scope: !392)
!422 = !DILocation(line: 105, column: 27, scope: !392)
!423 = !DILocation(line: 105, column: 31, scope: !392)
!424 = !DILocation(line: 105, column: 4, scope: !392)
!425 = !DILocation(line: 105, column: 25, scope: !392)
!426 = !DILocation(line: 106, column: 3, scope: !392)
!427 = !DILocation(line: 108, column: 27, scope: !392)
!428 = !DILocation(line: 108, column: 31, scope: !392)
!429 = !DILocation(line: 108, column: 4, scope: !392)
!430 = !DILocation(line: 108, column: 25, scope: !392)
!431 = !DILocation(line: 109, column: 3, scope: !392)
!432 = !DILocation(line: 111, column: 27, scope: !392)
!433 = !DILocation(line: 111, column: 31, scope: !392)
!434 = !DILocation(line: 111, column: 4, scope: !392)
!435 = !DILocation(line: 111, column: 25, scope: !392)
!436 = !DILocation(line: 112, column: 3, scope: !392)
!437 = !DILocation(line: 114, column: 27, scope: !392)
!438 = !DILocation(line: 114, column: 31, scope: !392)
!439 = !DILocation(line: 114, column: 4, scope: !392)
!440 = !DILocation(line: 114, column: 25, scope: !392)
!441 = !DILocation(line: 115, column: 3, scope: !392)
!442 = !DILocation(line: 117, column: 27, scope: !392)
!443 = !DILocation(line: 117, column: 31, scope: !392)
!444 = !DILocation(line: 117, column: 4, scope: !392)
!445 = !DILocation(line: 117, column: 25, scope: !392)
!446 = !DILocation(line: 118, column: 3, scope: !392)
!447 = !DILocation(line: 121, column: 4, scope: !392)
!448 = !DILocation(line: 121, column: 25, scope: !392)
!449 = !DILocation(line: 122, column: 31, scope: !392)
!450 = !DILocation(line: 122, column: 35, scope: !392)
!451 = !DILocation(line: 122, column: 29, scope: !392)
!452 = !DILocation(line: 122, column: 52, scope: !392)
!453 = !DILocation(line: 122, column: 27, scope: !392)
!454 = !DILocation(line: 122, column: 4, scope: !392)
!455 = !DILocation(line: 122, column: 25, scope: !392)
!456 = !DILocation(line: 123, column: 3, scope: !392)
!457 = !DILocation(line: 125, column: 27, scope: !392)
!458 = !DILocation(line: 125, column: 31, scope: !392)
!459 = !DILocation(line: 125, column: 4, scope: !392)
!460 = !DILocation(line: 125, column: 25, scope: !392)
!461 = !DILocation(line: 126, column: 3, scope: !392)
!462 = !DILocation(line: 128, column: 27, scope: !392)
!463 = !DILocation(line: 128, column: 31, scope: !392)
!464 = !DILocation(line: 128, column: 4, scope: !392)
!465 = !DILocation(line: 128, column: 25, scope: !392)
!466 = !DILocation(line: 129, column: 3, scope: !392)
!467 = !DILocation(line: 132, column: 27, scope: !392)
!468 = !DILocation(line: 132, column: 31, scope: !392)
!469 = !DILocation(line: 132, column: 4, scope: !392)
!470 = !DILocation(line: 132, column: 25, scope: !392)
!471 = !DILocation(line: 133, column: 28, scope: !392)
!472 = !DILocation(line: 133, column: 32, scope: !392)
!473 = !DILocation(line: 133, column: 4, scope: !392)
!474 = !DILocation(line: 133, column: 26, scope: !392)
!475 = !DILocation(line: 134, column: 3, scope: !392)
!476 = !DILocation(line: 137, column: 8, scope: !392)
!477 = !DILocation(line: 137, column: 12, scope: !392)
!478 = !DILocation(line: 137, column: 28, scope: !392)
!479 = !DILocation(line: 137, column: 33, scope: !392)
!480 = !DILocation(line: 138, column: 8, scope: !392)
!481 = !DILocation(line: 138, column: 12, scope: !392)
!482 = !DILocation(line: 138, column: 29, scope: !392)
!483 = !DILocation(line: 0, scope: !392)
!484 = !DILocation(line: 137, column: 7, scope: !392)
!485 = !DILocation(line: 136, column: 4, scope: !392)
!486 = !DILocation(line: 136, column: 25, scope: !392)
!487 = !DILocation(line: 139, column: 3, scope: !392)
!488 = !DILocation(line: 141, column: 27, scope: !392)
!489 = !DILocation(line: 141, column: 31, scope: !392)
!490 = !DILocation(line: 141, column: 4, scope: !392)
!491 = !DILocation(line: 141, column: 25, scope: !392)
!492 = !DILocation(line: 142, column: 3, scope: !392)
!493 = !DILocation(line: 144, column: 27, scope: !392)
!494 = !DILocation(line: 144, column: 31, scope: !392)
!495 = !DILocation(line: 144, column: 46, scope: !392)
!496 = !DILocation(line: 144, column: 4, scope: !392)
!497 = !DILocation(line: 144, column: 25, scope: !392)
!498 = !DILocation(line: 145, column: 3, scope: !392)
!499 = !DILocation(line: 147, column: 27, scope: !392)
!500 = !DILocation(line: 147, column: 31, scope: !392)
!501 = !DILocation(line: 147, column: 4, scope: !392)
!502 = !DILocation(line: 147, column: 25, scope: !392)
!503 = !DILocation(line: 148, column: 3, scope: !392)
!504 = !DILocation(line: 151, column: 8, scope: !505)
!505 = distinct !DILexicalBlock(scope: !392, file: !1, line: 151, column: 7)
!506 = !DILocation(line: 151, column: 12, scope: !505)
!507 = !DILocation(line: 151, column: 7, scope: !505)
!508 = !DILocation(line: 153, column: 8, scope: !509)
!509 = distinct !DILexicalBlock(scope: !505, file: !1, line: 151, column: 28)
!510 = !DILocation(line: 152, column: 4, scope: !509)
!511 = !DILocation(line: 152, column: 8, scope: !509)
!512 = !DILocation(line: 152, column: 23, scope: !509)
!513 = !DILocation(line: 155, column: 4, scope: !509)
!514 = !DILocation(line: 155, column: 8, scope: !509)
!515 = !DILocation(line: 155, column: 26, scope: !509)
!516 = !DILocation(line: 156, column: 4, scope: !509)
!517 = !DILocation(line: 156, column: 8, scope: !509)
!518 = !DILocation(line: 156, column: 26, scope: !509)
!519 = !DILocation(line: 157, column: 4, scope: !509)
!520 = !DILocation(line: 157, column: 8, scope: !509)
!521 = !DILocation(line: 157, column: 26, scope: !509)
!522 = !DILocation(line: 158, column: 3, scope: !509)
!523 = !DILocation(line: 159, column: 27, scope: !392)
!524 = !DILocation(line: 159, column: 31, scope: !392)
!525 = !DILocation(line: 159, column: 4, scope: !392)
!526 = !DILocation(line: 159, column: 25, scope: !392)
!527 = !DILocation(line: 160, column: 3, scope: !392)
!528 = !DILocation(line: 162, column: 27, scope: !392)
!529 = !DILocation(line: 162, column: 31, scope: !392)
!530 = !DILocation(line: 162, column: 4, scope: !392)
!531 = !DILocation(line: 162, column: 25, scope: !392)
!532 = !DILocation(line: 163, column: 27, scope: !392)
!533 = !DILocation(line: 163, column: 31, scope: !392)
!534 = !DILocation(line: 163, column: 4, scope: !392)
!535 = !DILocation(line: 163, column: 25, scope: !392)
!536 = !DILocation(line: 164, column: 3, scope: !392)
!537 = !DILocation(line: 166, column: 27, scope: !392)
!538 = !DILocation(line: 166, column: 31, scope: !392)
!539 = !DILocation(line: 166, column: 4, scope: !392)
!540 = !DILocation(line: 166, column: 25, scope: !392)
!541 = !DILocation(line: 167, column: 3, scope: !392)
!542 = !DILocation(line: 171, column: 8, scope: !543)
!543 = distinct !DILexicalBlock(scope: !392, file: !1, line: 171, column: 7)
!544 = !DILocation(line: 171, column: 12, scope: !543)
!545 = !DILocation(line: 171, column: 7, scope: !543)
!546 = !DILocation(line: 172, column: 32, scope: !543)
!547 = !DILocation(line: 172, column: 4, scope: !543)
!548 = !DILocation(line: 173, column: 28, scope: !392)
!549 = !DILocation(line: 173, column: 32, scope: !392)
!550 = !DILocation(line: 173, column: 4, scope: !392)
!551 = !DILocation(line: 173, column: 26, scope: !392)
!552 = !DILocation(line: 174, column: 7, scope: !553)
!553 = distinct !DILexicalBlock(scope: !392, file: !1, line: 174, column: 7)
!554 = !DILocation(line: 174, column: 11, scope: !553)
!555 = !DILocation(line: 174, column: 32, scope: !553)
!556 = !DILocation(line: 174, column: 36, scope: !553)
!557 = !DILocation(line: 174, column: 30, scope: !553)
!558 = !DILocation(line: 174, column: 52, scope: !553)
!559 = !DILocation(line: 175, column: 29, scope: !560)
!560 = distinct !DILexicalBlock(scope: !553, file: !1, line: 174, column: 57)
!561 = !DILocation(line: 175, column: 33, scope: !560)
!562 = !DILocation(line: 175, column: 5, scope: !560)
!563 = !DILocation(line: 175, column: 27, scope: !560)
!564 = !DILocation(line: 176, column: 29, scope: !560)
!565 = !DILocation(line: 176, column: 33, scope: !560)
!566 = !DILocation(line: 176, column: 5, scope: !560)
!567 = !DILocation(line: 176, column: 27, scope: !560)
!568 = !DILocation(line: 177, column: 3, scope: !560)
!569 = !DILocation(line: 178, column: 3, scope: !392)
!570 = !DILocation(line: 180, column: 8, scope: !571)
!571 = distinct !DILexicalBlock(scope: !392, file: !1, line: 180, column: 7)
!572 = !DILocation(line: 180, column: 12, scope: !571)
!573 = !DILocation(line: 180, column: 7, scope: !571)
!574 = !DILocation(line: 181, column: 29, scope: !571)
!575 = !DILocation(line: 181, column: 4, scope: !571)
!576 = !DILocation(line: 182, column: 27, scope: !392)
!577 = !DILocation(line: 182, column: 31, scope: !392)
!578 = !DILocation(line: 182, column: 4, scope: !392)
!579 = !DILocation(line: 182, column: 25, scope: !392)
!580 = !DILocation(line: 183, column: 3, scope: !392)
!581 = !DILocation(line: 186, column: 2, scope: !35)
!582 = !DILocation(line: 187, column: 1, scope: !35)
!583 = distinct !DISubprogram(name: "TIFFDefaultTransferFunction", scope: !1, file: !1, line: 38, type: !584, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !371)
!584 = !DISubroutineType(types: !585)
!585 = !{null, !379}
!586 = !DILocalVariable(name: "td", arg: 1, scope: !583, file: !1, line: 38, type: !379)
!587 = !DILocation(line: 38, column: 44, scope: !583)
!588 = !DILocalVariable(name: "tf", scope: !583, file: !1, line: 40, type: !589)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!590 = !DILocation(line: 40, column: 11, scope: !583)
!591 = !DILocation(line: 40, column: 16, scope: !583)
!592 = !DILocation(line: 40, column: 20, scope: !583)
!593 = !DILocalVariable(name: "i", scope: !583, file: !1, line: 41, type: !168)
!594 = !DILocation(line: 41, column: 7, scope: !583)
!595 = !DILocalVariable(name: "n", scope: !583, file: !1, line: 41, type: !168)
!596 = !DILocation(line: 41, column: 10, scope: !583)
!597 = !DILocation(line: 41, column: 17, scope: !583)
!598 = !DILocation(line: 41, column: 21, scope: !583)
!599 = !DILocation(line: 41, column: 15, scope: !583)
!600 = !DILocation(line: 41, column: 14, scope: !583)
!601 = !DILocation(line: 43, column: 32, scope: !583)
!602 = !DILocation(line: 43, column: 34, scope: !583)
!603 = !DILocation(line: 43, column: 20, scope: !583)
!604 = !DILocation(line: 43, column: 2, scope: !583)
!605 = !DILocation(line: 43, column: 8, scope: !583)
!606 = !DILocation(line: 44, column: 2, scope: !583)
!607 = !DILocation(line: 44, column: 11, scope: !583)
!608 = !DILocation(line: 45, column: 9, scope: !609)
!609 = distinct !DILexicalBlock(scope: !583, file: !1, line: 45, column: 2)
!610 = !DILocation(line: 45, column: 7, scope: !609)
!611 = !DILocation(line: 45, column: 14, scope: !612)
!612 = distinct !DILexicalBlock(scope: !609, file: !1, line: 45, column: 2)
!613 = !DILocation(line: 45, column: 18, scope: !612)
!614 = !DILocation(line: 45, column: 16, scope: !612)
!615 = !DILocation(line: 45, column: 2, scope: !609)
!616 = !DILocalVariable(name: "t", scope: !617, file: !1, line: 46, type: !26)
!617 = distinct !DILexicalBlock(scope: !612, file: !1, line: 45, column: 26)
!618 = !DILocation(line: 46, column: 10, scope: !617)
!619 = !DILocation(line: 46, column: 22, scope: !617)
!620 = !DILocation(line: 46, column: 14, scope: !617)
!621 = !DILocation(line: 46, column: 34, scope: !617)
!622 = !DILocation(line: 46, column: 25, scope: !617)
!623 = !DILocation(line: 46, column: 35, scope: !617)
!624 = !DILocation(line: 46, column: 23, scope: !617)
!625 = !DILocation(line: 47, column: 39, scope: !617)
!626 = !DILocation(line: 47, column: 35, scope: !617)
!627 = !DILocation(line: 47, column: 47, scope: !617)
!628 = !DILocation(line: 47, column: 22, scope: !617)
!629 = !DILocation(line: 47, column: 14, scope: !617)
!630 = !DILocation(line: 47, column: 3, scope: !617)
!631 = !DILocation(line: 47, column: 9, scope: !617)
!632 = !DILocation(line: 47, column: 12, scope: !617)
!633 = !DILocation(line: 48, column: 2, scope: !617)
!634 = !DILocation(line: 45, column: 22, scope: !612)
!635 = !DILocation(line: 45, column: 2, scope: !612)
!636 = distinct !{!636, !615, !637, !638}
!637 = !DILocation(line: 48, column: 2, scope: !609)
!638 = !{!"llvm.loop.mustprogress"}
!639 = !DILocation(line: 49, column: 6, scope: !640)
!640 = distinct !DILexicalBlock(scope: !583, file: !1, line: 49, column: 6)
!641 = !DILocation(line: 49, column: 10, scope: !640)
!642 = !DILocation(line: 49, column: 31, scope: !640)
!643 = !DILocation(line: 49, column: 35, scope: !640)
!644 = !DILocation(line: 49, column: 29, scope: !640)
!645 = !DILocation(line: 49, column: 51, scope: !640)
!646 = !DILocation(line: 50, column: 33, scope: !647)
!647 = distinct !DILexicalBlock(scope: !640, file: !1, line: 49, column: 56)
!648 = !DILocation(line: 50, column: 35, scope: !647)
!649 = !DILocation(line: 50, column: 21, scope: !647)
!650 = !DILocation(line: 50, column: 3, scope: !647)
!651 = !DILocation(line: 50, column: 9, scope: !647)
!652 = !DILocation(line: 51, column: 15, scope: !647)
!653 = !DILocation(line: 51, column: 22, scope: !647)
!654 = !DILocation(line: 51, column: 29, scope: !647)
!655 = !DILocation(line: 51, column: 31, scope: !647)
!656 = !DILocation(line: 51, column: 3, scope: !647)
!657 = !DILocation(line: 52, column: 33, scope: !647)
!658 = !DILocation(line: 52, column: 35, scope: !647)
!659 = !DILocation(line: 52, column: 21, scope: !647)
!660 = !DILocation(line: 52, column: 3, scope: !647)
!661 = !DILocation(line: 52, column: 9, scope: !647)
!662 = !DILocation(line: 53, column: 15, scope: !647)
!663 = !DILocation(line: 53, column: 22, scope: !647)
!664 = !DILocation(line: 53, column: 29, scope: !647)
!665 = !DILocation(line: 53, column: 31, scope: !647)
!666 = !DILocation(line: 53, column: 3, scope: !647)
!667 = !DILocation(line: 54, column: 2, scope: !647)
!668 = !DILocation(line: 55, column: 1, scope: !583)
!669 = distinct !DISubprogram(name: "TIFFDefaultRefBlackWhite", scope: !1, file: !1, line: 58, type: !584, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !371)
!670 = !DILocalVariable(name: "td", arg: 1, scope: !669, file: !1, line: 58, type: !379)
!671 = !DILocation(line: 58, column: 41, scope: !669)
!672 = !DILocalVariable(name: "i", scope: !669, file: !1, line: 60, type: !38)
!673 = !DILocation(line: 60, column: 6, scope: !669)
!674 = !DILocation(line: 62, column: 34, scope: !669)
!675 = !DILocation(line: 62, column: 2, scope: !669)
!676 = !DILocation(line: 62, column: 6, scope: !669)
!677 = !DILocation(line: 62, column: 23, scope: !669)
!678 = !DILocation(line: 63, column: 9, scope: !679)
!679 = distinct !DILexicalBlock(scope: !669, file: !1, line: 63, column: 2)
!680 = !DILocation(line: 63, column: 7, scope: !679)
!681 = !DILocation(line: 63, column: 14, scope: !682)
!682 = distinct !DILexicalBlock(scope: !679, file: !1, line: 63, column: 2)
!683 = !DILocation(line: 63, column: 16, scope: !682)
!684 = !DILocation(line: 63, column: 2, scope: !679)
!685 = !DILocation(line: 64, column: 6, scope: !686)
!686 = distinct !DILexicalBlock(scope: !682, file: !1, line: 63, column: 26)
!687 = !DILocation(line: 64, column: 10, scope: !686)
!688 = !DILocation(line: 64, column: 29, scope: !686)
!689 = !DILocation(line: 64, column: 28, scope: !686)
!690 = !DILocation(line: 64, column: 30, scope: !686)
!691 = !DILocation(line: 64, column: 34, scope: !686)
!692 = !DILocation(line: 65, column: 49, scope: !686)
!693 = !DILocation(line: 65, column: 53, scope: !686)
!694 = !DILocation(line: 65, column: 47, scope: !686)
!695 = !DILocation(line: 65, column: 70, scope: !686)
!696 = !DILocation(line: 65, column: 36, scope: !686)
!697 = !DILocation(line: 65, column: 6, scope: !686)
!698 = !DILocation(line: 65, column: 10, scope: !686)
!699 = !DILocation(line: 65, column: 29, scope: !686)
!700 = !DILocation(line: 65, column: 28, scope: !686)
!701 = !DILocation(line: 65, column: 30, scope: !686)
!702 = !DILocation(line: 65, column: 34, scope: !686)
!703 = !DILocation(line: 66, column: 2, scope: !686)
!704 = !DILocation(line: 63, column: 22, scope: !682)
!705 = !DILocation(line: 63, column: 2, scope: !682)
!706 = distinct !{!706, !684, !707, !638}
!707 = !DILocation(line: 66, column: 2, scope: !679)
!708 = !DILocation(line: 67, column: 1, scope: !669)
!709 = distinct !DISubprogram(name: "TIFFGetFieldDefaulted", scope: !1, file: !1, line: 194, type: !710, scopeLine: 195, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !371)
!710 = !DISubroutineType(types: !711)
!711 = !{!38, !39, !284, null}
!712 = !DILocalVariable(name: "tif", arg: 1, scope: !709, file: !1, line: 194, type: !39)
!713 = !DILocation(line: 194, column: 29, scope: !709)
!714 = !DILocalVariable(name: "tag", arg: 2, scope: !709, file: !1, line: 194, type: !284)
!715 = !DILocation(line: 194, column: 41, scope: !709)
!716 = !DILocalVariable(name: "ok", scope: !709, file: !1, line: 196, type: !38)
!717 = !DILocation(line: 196, column: 6, scope: !709)
!718 = !DILocalVariable(name: "ap", scope: !709, file: !1, line: 197, type: !719)
!719 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !720, line: 12, baseType: !721)
!720 = !DIFile(filename: "/usr/local/lib/clang/20/include/__stdarg_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "7bd78a282b99fcfe41a9e3c566d14f7d")
!721 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, baseType: !722)
!722 = !DICompositeType(tag: DW_TAG_array_type, baseType: !365, size: 192, elements: !341)
!723 = !DILocation(line: 197, column: 10, scope: !709)
!724 = !DILocation(line: 199, column: 2, scope: !709)
!725 = !DILocation(line: 200, column: 31, scope: !709)
!726 = !DILocation(line: 200, column: 36, scope: !709)
!727 = !DILocation(line: 200, column: 41, scope: !709)
!728 = !DILocation(line: 200, column: 8, scope: !709)
!729 = !DILocation(line: 200, column: 5, scope: !709)
!730 = !DILocation(line: 201, column: 2, scope: !709)
!731 = !DILocation(line: 202, column: 10, scope: !709)
!732 = !DILocation(line: 202, column: 2, scope: !709)
