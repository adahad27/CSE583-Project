; ModuleID = '../src/aha-mont64/mont64.c'
source_filename = "../src/aha-mont64/mont64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@in_m = internal unnamed_addr global i1 false, align 8
@in_b = internal unnamed_addr global i1 false, align 8
@in_a = internal unnamed_addr global i1 false, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @mulul64(i64 noundef %0, i64 noundef %1, ptr nocapture noundef writeonly initializes((0, 8)) %2, ptr nocapture noundef writeonly initializes((0, 8)) %3) local_unnamed_addr #0 {
  %5 = zext i64 %0 to i128
  %6 = zext i64 %1 to i128
  %7 = mul nuw i128 %6, %5
  %8 = trunc i128 %7 to i64
  store i64 %8, ptr %3, align 8, !tbaa !5
  %9 = lshr i128 %7, 64
  %10 = trunc nuw i128 %9 to i64
  store i64 %10, ptr %2, align 8, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local i64 @modul64(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 {
  br label %4

4:                                                ; preds = %4, %3
  %5 = phi i64 [ %0, %3 ], [ %25, %4 ]
  %6 = phi i64 [ 1, %3 ], [ %26, %4 ]
  %7 = phi i64 [ %1, %3 ], [ %23, %4 ]
  %8 = ashr i64 %5, 63
  %9 = tail call i64 @llvm.fshl.i64(i64 %5, i64 %7, i64 1)
  %10 = shl i64 %7, 1
  %11 = or i64 %9, %8
  %12 = icmp uge i64 %11, %2
  %13 = zext i1 %12 to i64
  %14 = or disjoint i64 %10, %13
  %15 = select i1 %12, i64 %2, i64 0
  %16 = sub i64 %9, %15
  %17 = ashr i64 %16, 63
  %18 = tail call i64 @llvm.fshl.i64(i64 %16, i64 %10, i64 1)
  %19 = shl i64 %14, 1
  %20 = or i64 %18, %17
  %21 = icmp uge i64 %20, %2
  %22 = zext i1 %21 to i64
  %23 = or disjoint i64 %19, %22
  %24 = select i1 %21, i64 %2, i64 0
  %25 = sub i64 %18, %24
  %26 = add nuw nsw i64 %6, 2
  %27 = icmp eq i64 %26, 65
  br i1 %27, label %28, label %4, !llvm.loop !9

28:                                               ; preds = %4
  ret i64 %25
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @montmul(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #3 {
  %5 = zext i64 %0 to i128
  %6 = zext i64 %1 to i128
  %7 = mul nuw i128 %6, %5
  %8 = trunc i128 %7 to i64
  %9 = lshr i128 %7, 64
  %10 = trunc nuw i128 %9 to i64
  %11 = mul i64 %3, %8
  %12 = zext i64 %11 to i128
  %13 = zext i64 %2 to i128
  %14 = mul nuw i128 %12, %13
  %15 = trunc i128 %14 to i64
  %16 = lshr i128 %14, 64
  %17 = trunc nuw i128 %16 to i64
  %18 = add i64 %17, %10
  %19 = xor i64 %8, -1
  %20 = icmp ult i64 %19, %15
  %21 = zext i1 %20 to i64
  %22 = add i64 %18, %21
  %23 = icmp ult i64 %22, %10
  %24 = icmp eq i64 %22, %10
  %25 = and i1 %20, %24
  %26 = or i1 %23, %25
  %27 = icmp uge i64 %22, %2
  %28 = or i1 %27, %26
  %29 = select i1 %28, i64 %2, i64 0
  %30 = sub i64 %22, %29
  ret i64 %30
}

; Function Attrs: nofree norecurse nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @xbinGCD(i64 noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 {
  %5 = icmp eq i64 %0, 0
  br i1 %5, label %27, label %6

6:                                                ; preds = %4, %23
  %7 = phi i64 [ %25, %23 ], [ 0, %4 ]
  %8 = phi i64 [ %24, %23 ], [ 1, %4 ]
  %9 = phi i64 [ %10, %23 ], [ %0, %4 ]
  %10 = lshr i64 %9, 1
  %11 = and i64 %8, 1
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %6
  %14 = lshr exact i64 %8, 1
  %15 = lshr i64 %7, 1
  br label %23

16:                                               ; preds = %6
  %17 = xor i64 %8, %1
  %18 = lshr i64 %17, 1
  %19 = and i64 %8, %1
  %20 = add i64 %18, %19
  %21 = lshr i64 %7, 1
  %22 = add i64 %21, %0
  br label %23

23:                                               ; preds = %16, %13
  %24 = phi i64 [ %14, %13 ], [ %20, %16 ]
  %25 = phi i64 [ %15, %13 ], [ %22, %16 ]
  %26 = icmp ult i64 %9, 2
  br i1 %26, label %27, label %6, !llvm.loop !11

27:                                               ; preds = %23, %4
  %28 = phi i64 [ 1, %4 ], [ %24, %23 ]
  %29 = phi i64 [ 0, %4 ], [ %25, %23 ]
  store volatile i64 %28, ptr %2, align 8, !tbaa !5
  store volatile i64 %29, ptr %3, align 8, !tbaa !5
  ret void
}

; Function Attrs: nofree norecurse nounwind memory(read, inaccessiblemem: readwrite) uwtable
define dso_local void @warm_caches(i32 noundef %0) local_unnamed_addr #5 {
  %2 = tail call fastcc i32 @benchmark_body(i32 noundef 1, i32 noundef %0)
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind memory(read, argmem: none, inaccessiblemem: readwrite) uwtable
define internal fastcc i32 @benchmark_body(i32 noundef range(i32 1, 473) %0, i32 noundef %1) unnamed_addr #6 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = icmp eq i32 %1, 0
  %6 = load i1, ptr @in_m, align 8
  %7 = select i1 %6, i64 -366962936819156833, i64 0
  %8 = load i1, ptr @in_b, align 8
  %9 = select i1 %8, i64 1473642379452024179, i64 0
  %10 = load i1, ptr @in_a, align 8
  %11 = select i1 %10, i64 380896260630216687, i64 0
  %12 = zext nneg i64 %11 to i128
  %13 = zext nneg i64 %9 to i128
  %14 = mul nuw nsw i128 %12, %13
  %15 = trunc i128 %14 to i64
  %16 = lshr i128 %14, 64
  %17 = trunc nuw nsw i128 %16 to i64
  %18 = zext i64 %7 to i128
  %19 = select i1 %6, i64 366962936819156833, i64 0
  br i1 %5, label %300, label %20

20:                                               ; preds = %2, %291
  %21 = phi i32 [ %292, %291 ], [ 0, %2 ]
  br label %22

22:                                               ; preds = %20, %288
  %23 = phi i32 [ 0, %20 ], [ %289, %288 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4)
  br label %24

24:                                               ; preds = %24, %22
  %25 = phi i64 [ %17, %22 ], [ %45, %24 ]
  %26 = phi i64 [ 1, %22 ], [ %46, %24 ]
  %27 = phi i64 [ %15, %22 ], [ %43, %24 ]
  %28 = ashr i64 %25, 63
  %29 = tail call i64 @llvm.fshl.i64(i64 %25, i64 %27, i64 1)
  %30 = shl i64 %27, 1
  %31 = or i64 %29, %28
  %32 = icmp uge i64 %31, %7
  %33 = zext i1 %32 to i64
  %34 = or disjoint i64 %30, %33
  %35 = select i1 %32, i64 %7, i64 0
  %36 = sub i64 %29, %35
  %37 = ashr i64 %36, 63
  %38 = tail call i64 @llvm.fshl.i64(i64 %36, i64 %30, i64 1)
  %39 = shl i64 %34, 1
  %40 = or i64 %38, %37
  %41 = icmp uge i64 %40, %7
  %42 = zext i1 %41 to i64
  %43 = or disjoint i64 %39, %42
  %44 = select i1 %41, i64 %7, i64 0
  %45 = sub i64 %38, %44
  %46 = add nuw nsw i64 %26, 2
  %47 = icmp eq i64 %46, 65
  br i1 %47, label %48, label %24, !llvm.loop !9

48:                                               ; preds = %24
  %49 = zext i64 %45 to i128
  %50 = mul nuw i128 %49, %49
  %51 = trunc i128 %50 to i64
  %52 = lshr i128 %50, 64
  %53 = trunc nuw i128 %52 to i64
  br label %54

54:                                               ; preds = %54, %48
  %55 = phi i64 [ %53, %48 ], [ %75, %54 ]
  %56 = phi i64 [ 1, %48 ], [ %76, %54 ]
  %57 = phi i64 [ %51, %48 ], [ %73, %54 ]
  %58 = ashr i64 %55, 63
  %59 = tail call i64 @llvm.fshl.i64(i64 %55, i64 %57, i64 1)
  %60 = shl i64 %57, 1
  %61 = or i64 %59, %58
  %62 = icmp uge i64 %61, %7
  %63 = zext i1 %62 to i64
  %64 = or disjoint i64 %60, %63
  %65 = select i1 %62, i64 %7, i64 0
  %66 = sub i64 %59, %65
  %67 = ashr i64 %66, 63
  %68 = tail call i64 @llvm.fshl.i64(i64 %66, i64 %60, i64 1)
  %69 = shl i64 %64, 1
  %70 = or i64 %68, %67
  %71 = icmp uge i64 %70, %7
  %72 = zext i1 %71 to i64
  %73 = or disjoint i64 %69, %72
  %74 = select i1 %71, i64 %7, i64 0
  %75 = sub i64 %68, %74
  %76 = add nuw nsw i64 %56, 2
  %77 = icmp eq i64 %76, 65
  br i1 %77, label %78, label %54, !llvm.loop !9

78:                                               ; preds = %54
  %79 = zext i64 %75 to i128
  %80 = mul nuw i128 %79, %79
  %81 = trunc i128 %80 to i64
  %82 = lshr i128 %80, 64
  %83 = trunc nuw i128 %82 to i64
  br label %84

84:                                               ; preds = %84, %78
  %85 = phi i64 [ %83, %78 ], [ %105, %84 ]
  %86 = phi i64 [ 1, %78 ], [ %106, %84 ]
  %87 = phi i64 [ %81, %78 ], [ %103, %84 ]
  %88 = ashr i64 %85, 63
  %89 = tail call i64 @llvm.fshl.i64(i64 %85, i64 %87, i64 1)
  %90 = shl i64 %87, 1
  %91 = or i64 %89, %88
  %92 = icmp uge i64 %91, %7
  %93 = zext i1 %92 to i64
  %94 = or disjoint i64 %90, %93
  %95 = select i1 %92, i64 %7, i64 0
  %96 = sub i64 %89, %95
  %97 = ashr i64 %96, 63
  %98 = tail call i64 @llvm.fshl.i64(i64 %96, i64 %90, i64 1)
  %99 = shl i64 %94, 1
  %100 = or i64 %98, %97
  %101 = icmp uge i64 %100, %7
  %102 = zext i1 %101 to i64
  %103 = or disjoint i64 %99, %102
  %104 = select i1 %101, i64 %7, i64 0
  %105 = sub i64 %98, %104
  %106 = add nuw nsw i64 %86, 2
  %107 = icmp eq i64 %106, 65
  br i1 %107, label %108, label %84, !llvm.loop !9

108:                                              ; preds = %84, %125
  %109 = phi i64 [ %127, %125 ], [ 0, %84 ]
  %110 = phi i64 [ %126, %125 ], [ 1, %84 ]
  %111 = phi i64 [ %112, %125 ], [ -9223372036854775808, %84 ]
  %112 = lshr i64 %111, 1
  %113 = and i64 %110, 1
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %122, label %115

115:                                              ; preds = %108
  %116 = xor i64 %110, %7
  %117 = lshr i64 %116, 1
  %118 = and i64 %110, %7
  %119 = add i64 %117, %118
  %120 = lshr i64 %109, 1
  %121 = or disjoint i64 %120, -9223372036854775808
  br label %125

122:                                              ; preds = %108
  %123 = lshr exact i64 %110, 1
  %124 = lshr i64 %109, 1
  br label %125

125:                                              ; preds = %122, %115
  %126 = phi i64 [ %123, %122 ], [ %119, %115 ]
  %127 = phi i64 [ %124, %122 ], [ %121, %115 ]
  %128 = icmp ult i64 %111, 2
  br i1 %128, label %129, label %108, !llvm.loop !11

129:                                              ; preds = %125
  store volatile i64 %126, ptr %3, align 8, !tbaa !5
  store volatile i64 %127, ptr %4, align 8, !tbaa !5
  %130 = load volatile i64, ptr %3, align 8, !tbaa !5
  %131 = load volatile i64, ptr %4, align 8, !tbaa !5
  br label %132

132:                                              ; preds = %132, %129
  %133 = phi i64 [ %11, %129 ], [ %153, %132 ]
  %134 = phi i64 [ 1, %129 ], [ %154, %132 ]
  %135 = phi i64 [ 0, %129 ], [ %151, %132 ]
  %136 = ashr i64 %133, 63
  %137 = tail call i64 @llvm.fshl.i64(i64 %133, i64 %135, i64 1)
  %138 = shl i64 %135, 1
  %139 = or i64 %137, %136
  %140 = icmp uge i64 %139, %7
  %141 = zext i1 %140 to i64
  %142 = or disjoint i64 %138, %141
  %143 = select i1 %140, i64 %7, i64 0
  %144 = sub i64 %137, %143
  %145 = ashr i64 %144, 63
  %146 = tail call i64 @llvm.fshl.i64(i64 %144, i64 %138, i64 1)
  %147 = shl i64 %142, 1
  %148 = or i64 %146, %145
  %149 = icmp uge i64 %148, %7
  %150 = zext i1 %149 to i64
  %151 = or disjoint i64 %147, %150
  %152 = select i1 %149, i64 %7, i64 0
  %153 = sub i64 %146, %152
  %154 = add nuw nsw i64 %134, 2
  %155 = icmp eq i64 %154, 65
  br i1 %155, label %156, label %132, !llvm.loop !9

156:                                              ; preds = %132, %156
  %157 = phi i64 [ %177, %156 ], [ %9, %132 ]
  %158 = phi i64 [ %178, %156 ], [ 1, %132 ]
  %159 = phi i64 [ %175, %156 ], [ 0, %132 ]
  %160 = ashr i64 %157, 63
  %161 = tail call i64 @llvm.fshl.i64(i64 %157, i64 %159, i64 1)
  %162 = shl i64 %159, 1
  %163 = or i64 %161, %160
  %164 = icmp uge i64 %163, %7
  %165 = zext i1 %164 to i64
  %166 = or disjoint i64 %162, %165
  %167 = select i1 %164, i64 %7, i64 0
  %168 = sub i64 %161, %167
  %169 = ashr i64 %168, 63
  %170 = tail call i64 @llvm.fshl.i64(i64 %168, i64 %162, i64 1)
  %171 = shl i64 %166, 1
  %172 = or i64 %170, %169
  %173 = icmp uge i64 %172, %7
  %174 = zext i1 %173 to i64
  %175 = or disjoint i64 %171, %174
  %176 = select i1 %173, i64 %7, i64 0
  %177 = sub i64 %170, %176
  %178 = add nuw nsw i64 %158, 2
  %179 = icmp eq i64 %178, 65
  br i1 %179, label %180, label %156, !llvm.loop !9

180:                                              ; preds = %156
  %181 = load volatile i64, ptr %4, align 8, !tbaa !5
  %182 = zext i64 %153 to i128
  %183 = zext i64 %177 to i128
  %184 = mul nuw i128 %183, %182
  %185 = trunc i128 %184 to i64
  %186 = lshr i128 %184, 64
  %187 = trunc nuw i128 %186 to i64
  %188 = mul i64 %181, %185
  %189 = zext i64 %188 to i128
  %190 = mul nuw i128 %189, %18
  %191 = trunc i128 %190 to i64
  %192 = lshr i128 %190, 64
  %193 = trunc nuw i128 %192 to i64
  %194 = add i64 %193, %187
  %195 = xor i64 %185, -1
  %196 = icmp ult i64 %195, %191
  %197 = zext i1 %196 to i64
  %198 = add i64 %194, %197
  %199 = icmp ult i64 %198, %187
  %200 = icmp eq i64 %198, %187
  %201 = and i1 %196, %200
  %202 = or i1 %199, %201
  %203 = icmp uge i64 %198, %7
  %204 = or i1 %203, %202
  %205 = select i1 %204, i64 %7, i64 0
  %206 = sub i64 %198, %205
  %207 = load volatile i64, ptr %4, align 8, !tbaa !5
  %208 = zext i64 %206 to i128
  %209 = mul nuw i128 %208, %208
  %210 = trunc i128 %209 to i64
  %211 = lshr i128 %209, 64
  %212 = trunc nuw i128 %211 to i64
  %213 = mul i64 %207, %210
  %214 = zext i64 %213 to i128
  %215 = mul nuw i128 %214, %18
  %216 = trunc i128 %215 to i64
  %217 = lshr i128 %215, 64
  %218 = trunc nuw i128 %217 to i64
  %219 = add i64 %218, %212
  %220 = xor i64 %210, -1
  %221 = icmp ult i64 %220, %216
  %222 = zext i1 %221 to i64
  %223 = add i64 %219, %222
  %224 = icmp ult i64 %223, %212
  %225 = icmp eq i64 %223, %212
  %226 = and i1 %221, %225
  %227 = or i1 %224, %226
  %228 = icmp uge i64 %223, %7
  %229 = or i1 %228, %227
  %230 = select i1 %229, i64 %7, i64 0
  %231 = sub i64 %223, %230
  %232 = load volatile i64, ptr %4, align 8, !tbaa !5
  %233 = zext i64 %231 to i128
  %234 = mul nuw i128 %233, %233
  %235 = trunc i128 %234 to i64
  %236 = lshr i128 %234, 64
  %237 = trunc nuw i128 %236 to i64
  %238 = mul i64 %232, %235
  %239 = zext i64 %238 to i128
  %240 = mul nuw i128 %239, %18
  %241 = trunc i128 %240 to i64
  %242 = lshr i128 %240, 64
  %243 = trunc nuw i128 %242 to i64
  %244 = add i64 %243, %237
  %245 = xor i64 %235, -1
  %246 = icmp ult i64 %245, %241
  %247 = zext i1 %246 to i64
  %248 = add i64 %244, %247
  %249 = icmp ult i64 %248, %237
  %250 = icmp eq i64 %248, %237
  %251 = and i1 %246, %250
  %252 = or i1 %249, %251
  %253 = icmp uge i64 %248, %7
  %254 = or i1 %253, %252
  %255 = select i1 %254, i64 %7, i64 0
  %256 = sub i64 %248, %255
  %257 = load volatile i64, ptr %3, align 8, !tbaa !5
  %258 = zext i64 %256 to i128
  %259 = zext i64 %257 to i128
  %260 = mul nuw i128 %258, %259
  %261 = trunc i128 %260 to i64
  %262 = lshr i128 %260, 64
  %263 = trunc nuw i128 %262 to i64
  br label %264

264:                                              ; preds = %264, %180
  %265 = phi i64 [ %263, %180 ], [ %285, %264 ]
  %266 = phi i64 [ 1, %180 ], [ %286, %264 ]
  %267 = phi i64 [ %261, %180 ], [ %283, %264 ]
  %268 = ashr i64 %265, 63
  %269 = tail call i64 @llvm.fshl.i64(i64 %265, i64 %267, i64 1)
  %270 = shl i64 %267, 1
  %271 = or i64 %269, %268
  %272 = icmp uge i64 %271, %7
  %273 = zext i1 %272 to i64
  %274 = or disjoint i64 %270, %273
  %275 = select i1 %272, i64 %7, i64 0
  %276 = sub i64 %269, %275
  %277 = ashr i64 %276, 63
  %278 = tail call i64 @llvm.fshl.i64(i64 %276, i64 %270, i64 1)
  %279 = shl i64 %274, 1
  %280 = or i64 %278, %277
  %281 = icmp uge i64 %280, %7
  %282 = zext i1 %281 to i64
  %283 = or disjoint i64 %279, %282
  %284 = select i1 %281, i64 %7, i64 0
  %285 = sub i64 %278, %284
  %286 = add nuw nsw i64 %266, 2
  %287 = icmp eq i64 %286, 65
  br i1 %287, label %288, label %264, !llvm.loop !9

288:                                              ; preds = %264
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3)
  %289 = add nuw i32 %23, 1
  %290 = icmp eq i32 %289, %1
  br i1 %290, label %291, label %22, !llvm.loop !12

291:                                              ; preds = %288
  %292 = add nuw nsw i32 %21, 1
  %293 = icmp eq i32 %292, %0
  br i1 %293, label %294, label %20, !llvm.loop !13

294:                                              ; preds = %291
  %295 = mul i64 %131, %19
  %296 = icmp ne i64 %295, 1
  %297 = icmp ne i64 %285, %105
  %298 = select i1 %297, i1 true, i1 %296
  %299 = zext i1 %298 to i32
  br label %300

300:                                              ; preds = %2, %294
  %301 = phi i32 [ %299, %294 ], [ undef, %2 ]
  ret i32 %301
}

; Function Attrs: nofree noinline norecurse nounwind memory(read, inaccessiblemem: readwrite) uwtable
define dso_local i32 @benchmark() local_unnamed_addr #7 {
  %1 = tail call fastcc i32 @benchmark_body(i32 noundef 472, i32 noundef 20)
  ret i32 %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @initialise_benchmark() local_unnamed_addr #8 {
  store i1 true, ptr @in_m, align 8
  store i1 true, ptr @in_b, align 8
  store i1 true, ptr @in_a, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 0, 2) i32 @verify_benchmark(i32 noundef %0) local_unnamed_addr #3 {
  %2 = icmp eq i32 %0, 0
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nounwind memory(read, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nounwind memory(read, argmem: none, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline norecurse nounwind memory(read, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"long", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
!12 = distinct !{!12, !10}
!13 = distinct !{!13, !10}
