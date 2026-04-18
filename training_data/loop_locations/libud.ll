; ModuleID = '../src/ud/libud.c'
source_filename = "../src/ud/libud.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@x = dso_local global [20 x i64] zeroinitializer, align 16
@a = dso_local local_unnamed_addr global [20 x [20 x i64]] zeroinitializer, align 16
@b = dso_local local_unnamed_addr global [20 x i64] zeroinitializer, align 16
@chkerr = dso_local global i32 0, align 4

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local range(i32 0, 2) i32 @verify_benchmark(i32 noundef %0) local_unnamed_addr #0 {
  %2 = alloca [20 x i64], align 16
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %2) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %2, i8 0, i64 160, i1 false)
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 1, ptr %3, align 16
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 1, ptr %4, align 8
  %5 = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 1, ptr %5, align 16
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 2, ptr %6, align 8
  %7 = call i32 @memcmp(ptr noundef nonnull dereferenceable(160) @x, ptr noundef nonnull dereferenceable(160) %2, i64 noundef 160) #11
  %8 = or i32 %7, %0
  %9 = icmp eq i32 %8, 0
  %10 = zext i1 %9 to i32
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %2) #10
  ret i32 %10
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @initialise_benchmark() local_unnamed_addr #4 {
  ret void
}

; Function Attrs: nofree norecurse nounwind uwtable
define dso_local void @warm_caches(i32 noundef %0) local_unnamed_addr #5 {
  %2 = tail call fastcc i32 @benchmark_body(i32 noundef 1, i32 noundef %0)
  ret void
}

; Function Attrs: nofree noinline norecurse nounwind memory(readwrite, argmem: none) uwtable
define internal fastcc i32 @benchmark_body(i32 noundef range(i32 1, 1786) %0, i32 noundef %1) unnamed_addr #6 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %574, label %4

4:                                                ; preds = %2, %571
  %5 = phi i32 [ %572, %571 ], [ 0, %2 ]
  br label %569

6:                                                ; preds = %461, %569
  %7 = phi i64 [ 0, %569 ], [ %9, %461 ]
  %8 = phi i64 [ 1, %569 ], [ %462, %461 ]
  %9 = add nuw nsw i64 %7, 1
  %10 = icmp eq i64 %7, 0
  %11 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 %7, i64 %7
  br i1 %10, label %205, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 %8, i64 %7
  %14 = load i64, ptr %13, align 8, !tbaa !5
  %15 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 %8, i64 0
  %16 = load i64, ptr %15, align 16, !tbaa !5
  %17 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 0, i64 %7
  %18 = load i64, ptr %17, align 8, !tbaa !5
  %19 = mul nsw i64 %18, %16
  %20 = sub nsw i64 %14, %19
  %21 = icmp eq i64 %7, 1
  br i1 %21, label %45, label %22, !llvm.loop !9

22:                                               ; preds = %12
  %23 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 %8, i64 1
  %24 = load i64, ptr %23, align 8, !tbaa !5
  %25 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 1, i64 %7
  %26 = load i64, ptr %25, align 8, !tbaa !5
  %27 = mul nsw i64 %26, %24
  %28 = sub nsw i64 %20, %27
  %29 = icmp eq i64 %7, 2
  br i1 %29, label %45, label %30, !llvm.loop !9

30:                                               ; preds = %22
  %31 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 %8, i64 2
  %32 = load i64, ptr %31, align 16, !tbaa !5
  %33 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 2, i64 %7
  %34 = load i64, ptr %33, align 8, !tbaa !5
  %35 = mul nsw i64 %34, %32
  %36 = sub nsw i64 %28, %35
  %37 = icmp eq i64 %7, 3
  br i1 %37, label %45, label %38, !llvm.loop !9

38:                                               ; preds = %30
  %39 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 %8, i64 3
  %40 = load i64, ptr %39, align 8, !tbaa !5
  %41 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 3, i64 %7
  %42 = load i64, ptr %41, align 8, !tbaa !5
  %43 = mul nsw i64 %42, %40
  %44 = sub nsw i64 %36, %43
  br label %45

45:                                               ; preds = %38, %30, %22, %12
  %46 = phi i64 [ %20, %12 ], [ %28, %22 ], [ %36, %30 ], [ %44, %38 ]
  %47 = load i64, ptr %11, align 8, !tbaa !5
  %48 = sdiv i64 %46, %47
  store i64 %48, ptr %13, align 8, !tbaa !5
  %49 = add nuw nsw i64 %8, 1
  %50 = icmp eq i64 %49, 6
  br i1 %50, label %238, label %51, !llvm.loop !11

51:                                               ; preds = %45
  %52 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 %49, i64 %7
  %53 = load i64, ptr %52, align 8, !tbaa !5
  %54 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 %49, i64 0
  %55 = load i64, ptr %54, align 16, !tbaa !5
  %56 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 0, i64 %7
  %57 = load i64, ptr %56, align 8, !tbaa !5
  %58 = mul nsw i64 %57, %55
  %59 = sub nsw i64 %53, %58
  %60 = icmp eq i64 %7, 1
  br i1 %60, label %84, label %61, !llvm.loop !9

61:                                               ; preds = %51
  %62 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 %49, i64 1
  %63 = load i64, ptr %62, align 8, !tbaa !5
  %64 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 1, i64 %7
  %65 = load i64, ptr %64, align 8, !tbaa !5
  %66 = mul nsw i64 %65, %63
  %67 = sub nsw i64 %59, %66
  %68 = icmp eq i64 %7, 2
  br i1 %68, label %84, label %69, !llvm.loop !9

69:                                               ; preds = %61
  %70 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 %49, i64 2
  %71 = load i64, ptr %70, align 16, !tbaa !5
  %72 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 2, i64 %7
  %73 = load i64, ptr %72, align 8, !tbaa !5
  %74 = mul nsw i64 %73, %71
  %75 = sub nsw i64 %67, %74
  %76 = icmp eq i64 %7, 3
  br i1 %76, label %84, label %77, !llvm.loop !9

77:                                               ; preds = %69
  %78 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 %49, i64 3
  %79 = load i64, ptr %78, align 8, !tbaa !5
  %80 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 3, i64 %7
  %81 = load i64, ptr %80, align 8, !tbaa !5
  %82 = mul nsw i64 %81, %79
  %83 = sub nsw i64 %75, %82
  br label %84

84:                                               ; preds = %77, %69, %61, %51
  %85 = phi i64 [ %59, %51 ], [ %67, %61 ], [ %75, %69 ], [ %83, %77 ]
  %86 = load i64, ptr %11, align 8, !tbaa !5
  %87 = sdiv i64 %85, %86
  store i64 %87, ptr %52, align 8, !tbaa !5
  %88 = add nuw nsw i64 %8, 2
  %89 = icmp eq i64 %88, 6
  br i1 %89, label %238, label %90, !llvm.loop !11

90:                                               ; preds = %84
  %91 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 %88, i64 %7
  %92 = load i64, ptr %91, align 8, !tbaa !5
  %93 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 %88, i64 0
  %94 = load i64, ptr %93, align 16, !tbaa !5
  %95 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 0, i64 %7
  %96 = load i64, ptr %95, align 8, !tbaa !5
  %97 = mul nsw i64 %96, %94
  %98 = sub nsw i64 %92, %97
  %99 = icmp eq i64 %7, 1
  br i1 %99, label %123, label %100, !llvm.loop !9

100:                                              ; preds = %90
  %101 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 %88, i64 1
  %102 = load i64, ptr %101, align 8, !tbaa !5
  %103 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 1, i64 %7
  %104 = load i64, ptr %103, align 8, !tbaa !5
  %105 = mul nsw i64 %104, %102
  %106 = sub nsw i64 %98, %105
  %107 = icmp eq i64 %7, 2
  br i1 %107, label %123, label %108, !llvm.loop !9

108:                                              ; preds = %100
  %109 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 %88, i64 2
  %110 = load i64, ptr %109, align 16, !tbaa !5
  %111 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 2, i64 %7
  %112 = load i64, ptr %111, align 8, !tbaa !5
  %113 = mul nsw i64 %112, %110
  %114 = sub nsw i64 %106, %113
  %115 = icmp eq i64 %7, 3
  br i1 %115, label %123, label %116, !llvm.loop !9

116:                                              ; preds = %108
  %117 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 %88, i64 3
  %118 = load i64, ptr %117, align 8, !tbaa !5
  %119 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 3, i64 %7
  %120 = load i64, ptr %119, align 8, !tbaa !5
  %121 = mul nsw i64 %120, %118
  %122 = sub nsw i64 %114, %121
  br label %123

123:                                              ; preds = %116, %108, %100, %90
  %124 = phi i64 [ %98, %90 ], [ %106, %100 ], [ %114, %108 ], [ %122, %116 ]
  %125 = load i64, ptr %11, align 8, !tbaa !5
  %126 = sdiv i64 %124, %125
  store i64 %126, ptr %91, align 8, !tbaa !5
  %127 = add nuw nsw i64 %8, 3
  %128 = icmp eq i64 %127, 6
  br i1 %128, label %238, label %129, !llvm.loop !11

129:                                              ; preds = %123
  %130 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 %127, i64 %7
  %131 = load i64, ptr %130, align 8, !tbaa !5
  %132 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 %127, i64 0
  %133 = load i64, ptr %132, align 16, !tbaa !5
  %134 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 0, i64 %7
  %135 = load i64, ptr %134, align 8, !tbaa !5
  %136 = mul nsw i64 %135, %133
  %137 = sub nsw i64 %131, %136
  %138 = icmp eq i64 %7, 1
  br i1 %138, label %162, label %139, !llvm.loop !9

139:                                              ; preds = %129
  %140 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 %127, i64 1
  %141 = load i64, ptr %140, align 8, !tbaa !5
  %142 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 1, i64 %7
  %143 = load i64, ptr %142, align 8, !tbaa !5
  %144 = mul nsw i64 %143, %141
  %145 = sub nsw i64 %137, %144
  %146 = icmp eq i64 %7, 2
  br i1 %146, label %162, label %147, !llvm.loop !9

147:                                              ; preds = %139
  %148 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 %127, i64 2
  %149 = load i64, ptr %148, align 16, !tbaa !5
  %150 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 2, i64 %7
  %151 = load i64, ptr %150, align 8, !tbaa !5
  %152 = mul nsw i64 %151, %149
  %153 = sub nsw i64 %145, %152
  %154 = icmp eq i64 %7, 3
  br i1 %154, label %162, label %155, !llvm.loop !9

155:                                              ; preds = %147
  %156 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 %127, i64 3
  %157 = load i64, ptr %156, align 8, !tbaa !5
  %158 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 3, i64 %7
  %159 = load i64, ptr %158, align 8, !tbaa !5
  %160 = mul nsw i64 %159, %157
  %161 = sub nsw i64 %153, %160
  br label %162

162:                                              ; preds = %155, %147, %139, %129
  %163 = phi i64 [ %137, %129 ], [ %145, %139 ], [ %153, %147 ], [ %161, %155 ]
  %164 = load i64, ptr %11, align 8, !tbaa !5
  %165 = sdiv i64 %163, %164
  store i64 %165, ptr %130, align 8, !tbaa !5
  %166 = add nuw nsw i64 %8, 4
  %167 = icmp eq i64 %166, 6
  br i1 %167, label %238, label %168, !llvm.loop !11

168:                                              ; preds = %162
  %169 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 %166, i64 %7
  %170 = load i64, ptr %169, align 8, !tbaa !5
  %171 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 %166, i64 0
  %172 = load i64, ptr %171, align 16, !tbaa !5
  %173 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 0, i64 %7
  %174 = load i64, ptr %173, align 8, !tbaa !5
  %175 = mul nsw i64 %174, %172
  %176 = sub nsw i64 %170, %175
  %177 = icmp eq i64 %7, 1
  br i1 %177, label %201, label %178, !llvm.loop !9

178:                                              ; preds = %168
  %179 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 %166, i64 1
  %180 = load i64, ptr %179, align 8, !tbaa !5
  %181 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 1, i64 %7
  %182 = load i64, ptr %181, align 8, !tbaa !5
  %183 = mul nsw i64 %182, %180
  %184 = sub nsw i64 %176, %183
  %185 = icmp eq i64 %7, 2
  br i1 %185, label %201, label %186, !llvm.loop !9

186:                                              ; preds = %178
  %187 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 %166, i64 2
  %188 = load i64, ptr %187, align 16, !tbaa !5
  %189 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 2, i64 %7
  %190 = load i64, ptr %189, align 8, !tbaa !5
  %191 = mul nsw i64 %190, %188
  %192 = sub nsw i64 %184, %191
  %193 = icmp eq i64 %7, 3
  br i1 %193, label %201, label %194, !llvm.loop !9

194:                                              ; preds = %186
  %195 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 %166, i64 3
  %196 = load i64, ptr %195, align 8, !tbaa !5
  %197 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 3, i64 %7
  %198 = load i64, ptr %197, align 8, !tbaa !5
  %199 = mul nsw i64 %198, %196
  %200 = sub nsw i64 %192, %199
  br label %201

201:                                              ; preds = %194, %186, %178, %168
  %202 = phi i64 [ %176, %168 ], [ %184, %178 ], [ %192, %186 ], [ %200, %194 ]
  %203 = load i64, ptr %11, align 8, !tbaa !5
  %204 = sdiv i64 %202, %203
  store i64 %204, ptr %169, align 8, !tbaa !5
  br label %238

205:                                              ; preds = %6
  %206 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 %8, i64 0
  %207 = load i64, ptr %206, align 16, !tbaa !5
  %208 = load i64, ptr %11, align 8, !tbaa !5
  %209 = sdiv i64 %207, %208
  store i64 %209, ptr %206, align 16, !tbaa !5
  %210 = add nuw nsw i64 %8, 1
  %211 = icmp eq i64 %210, 6
  br i1 %211, label %238, label %212, !llvm.loop !11

212:                                              ; preds = %205
  %213 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 %210, i64 0
  %214 = load i64, ptr %213, align 16, !tbaa !5
  %215 = load i64, ptr %11, align 8, !tbaa !5
  %216 = sdiv i64 %214, %215
  store i64 %216, ptr %213, align 16, !tbaa !5
  %217 = add nuw nsw i64 %8, 2
  %218 = icmp eq i64 %217, 6
  br i1 %218, label %238, label %219, !llvm.loop !11

219:                                              ; preds = %212
  %220 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 %217, i64 0
  %221 = load i64, ptr %220, align 16, !tbaa !5
  %222 = load i64, ptr %11, align 8, !tbaa !5
  %223 = sdiv i64 %221, %222
  store i64 %223, ptr %220, align 16, !tbaa !5
  %224 = add nuw nsw i64 %8, 3
  %225 = icmp eq i64 %224, 6
  br i1 %225, label %238, label %226, !llvm.loop !11

226:                                              ; preds = %219
  %227 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 %224, i64 0
  %228 = load i64, ptr %227, align 16, !tbaa !5
  %229 = load i64, ptr %11, align 8, !tbaa !5
  %230 = sdiv i64 %228, %229
  store i64 %230, ptr %227, align 16, !tbaa !5
  %231 = add nuw nsw i64 %8, 4
  %232 = icmp eq i64 %231, 6
  br i1 %232, label %238, label %233, !llvm.loop !11

233:                                              ; preds = %226
  %234 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 %231, i64 0
  %235 = load i64, ptr %234, align 16, !tbaa !5
  %236 = load i64, ptr %11, align 8, !tbaa !5
  %237 = sdiv i64 %235, %236
  store i64 %237, ptr %234, align 16, !tbaa !5
  br label %238

238:                                              ; preds = %233, %226, %219, %212, %205, %201, %162, %123, %84, %45
  %239 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 %9, i64 %8
  %240 = load i64, ptr %239, align 8, !tbaa !5
  %241 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 %9, i64 0
  %242 = load i64, ptr %241, align 16, !tbaa !5
  %243 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 0, i64 %8
  %244 = load i64, ptr %243, align 8, !tbaa !5
  %245 = mul nsw i64 %244, %242
  %246 = sub nsw i64 %240, %245
  %247 = icmp eq i64 %8, 1
  br i1 %247, label %279, label %248, !llvm.loop !12

248:                                              ; preds = %238
  %249 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 %9, i64 1
  %250 = load i64, ptr %249, align 8, !tbaa !5
  %251 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 1, i64 %8
  %252 = load i64, ptr %251, align 8, !tbaa !5
  %253 = mul nsw i64 %252, %250
  %254 = sub nsw i64 %246, %253
  %255 = icmp eq i64 %8, 2
  br i1 %255, label %279, label %256, !llvm.loop !12

256:                                              ; preds = %248
  %257 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 %9, i64 2
  %258 = load i64, ptr %257, align 16, !tbaa !5
  %259 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 2, i64 %8
  %260 = load i64, ptr %259, align 8, !tbaa !5
  %261 = mul nsw i64 %260, %258
  %262 = sub nsw i64 %254, %261
  %263 = icmp eq i64 %8, 3
  br i1 %263, label %279, label %264, !llvm.loop !12

264:                                              ; preds = %256
  %265 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 %9, i64 3
  %266 = load i64, ptr %265, align 8, !tbaa !5
  %267 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 3, i64 %8
  %268 = load i64, ptr %267, align 8, !tbaa !5
  %269 = mul nsw i64 %268, %266
  %270 = sub nsw i64 %262, %269
  %271 = icmp eq i64 %8, 4
  br i1 %271, label %279, label %272, !llvm.loop !12

272:                                              ; preds = %264
  %273 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 %9, i64 4
  %274 = load i64, ptr %273, align 16, !tbaa !5
  %275 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 4, i64 %8
  %276 = load i64, ptr %275, align 8, !tbaa !5
  %277 = mul nsw i64 %276, %274
  %278 = sub nsw i64 %270, %277
  br label %279

279:                                              ; preds = %272, %264, %256, %248, %238
  %280 = phi i64 [ %246, %238 ], [ %254, %248 ], [ %262, %256 ], [ %270, %264 ], [ %278, %272 ]
  store i64 %280, ptr %239, align 8, !tbaa !5
  %281 = add nuw nsw i64 %8, 1
  %282 = icmp eq i64 %281, 6
  br i1 %282, label %461, label %283, !llvm.loop !13

283:                                              ; preds = %279
  %284 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 %9, i64 %281
  %285 = load i64, ptr %284, align 8, !tbaa !5
  %286 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 %9, i64 0
  %287 = load i64, ptr %286, align 16, !tbaa !5
  %288 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 0, i64 %281
  %289 = load i64, ptr %288, align 8, !tbaa !5
  %290 = mul nsw i64 %289, %287
  %291 = sub nsw i64 %285, %290
  %292 = icmp eq i64 %8, 1
  br i1 %292, label %324, label %293, !llvm.loop !12

293:                                              ; preds = %283
  %294 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 %9, i64 1
  %295 = load i64, ptr %294, align 8, !tbaa !5
  %296 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 1, i64 %281
  %297 = load i64, ptr %296, align 8, !tbaa !5
  %298 = mul nsw i64 %297, %295
  %299 = sub nsw i64 %291, %298
  %300 = icmp eq i64 %8, 2
  br i1 %300, label %324, label %301, !llvm.loop !12

301:                                              ; preds = %293
  %302 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 %9, i64 2
  %303 = load i64, ptr %302, align 16, !tbaa !5
  %304 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 2, i64 %281
  %305 = load i64, ptr %304, align 8, !tbaa !5
  %306 = mul nsw i64 %305, %303
  %307 = sub nsw i64 %299, %306
  %308 = icmp eq i64 %8, 3
  br i1 %308, label %324, label %309, !llvm.loop !12

309:                                              ; preds = %301
  %310 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 %9, i64 3
  %311 = load i64, ptr %310, align 8, !tbaa !5
  %312 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 3, i64 %281
  %313 = load i64, ptr %312, align 8, !tbaa !5
  %314 = mul nsw i64 %313, %311
  %315 = sub nsw i64 %307, %314
  %316 = icmp eq i64 %8, 4
  br i1 %316, label %324, label %317, !llvm.loop !12

317:                                              ; preds = %309
  %318 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 %9, i64 4
  %319 = load i64, ptr %318, align 16, !tbaa !5
  %320 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 4, i64 %281
  %321 = load i64, ptr %320, align 8, !tbaa !5
  %322 = mul nsw i64 %321, %319
  %323 = sub nsw i64 %315, %322
  br label %324

324:                                              ; preds = %317, %309, %301, %293, %283
  %325 = phi i64 [ %291, %283 ], [ %299, %293 ], [ %307, %301 ], [ %315, %309 ], [ %323, %317 ]
  store i64 %325, ptr %284, align 8, !tbaa !5
  %326 = add nuw nsw i64 %8, 2
  %327 = icmp eq i64 %326, 6
  br i1 %327, label %461, label %328, !llvm.loop !13

328:                                              ; preds = %324
  %329 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 %9, i64 %326
  %330 = load i64, ptr %329, align 8, !tbaa !5
  %331 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 %9, i64 0
  %332 = load i64, ptr %331, align 16, !tbaa !5
  %333 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 0, i64 %326
  %334 = load i64, ptr %333, align 8, !tbaa !5
  %335 = mul nsw i64 %334, %332
  %336 = sub nsw i64 %330, %335
  %337 = icmp eq i64 %8, 1
  br i1 %337, label %369, label %338, !llvm.loop !12

338:                                              ; preds = %328
  %339 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 %9, i64 1
  %340 = load i64, ptr %339, align 8, !tbaa !5
  %341 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 1, i64 %326
  %342 = load i64, ptr %341, align 8, !tbaa !5
  %343 = mul nsw i64 %342, %340
  %344 = sub nsw i64 %336, %343
  %345 = icmp eq i64 %8, 2
  br i1 %345, label %369, label %346, !llvm.loop !12

346:                                              ; preds = %338
  %347 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 %9, i64 2
  %348 = load i64, ptr %347, align 16, !tbaa !5
  %349 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 2, i64 %326
  %350 = load i64, ptr %349, align 8, !tbaa !5
  %351 = mul nsw i64 %350, %348
  %352 = sub nsw i64 %344, %351
  %353 = icmp eq i64 %8, 3
  br i1 %353, label %369, label %354, !llvm.loop !12

354:                                              ; preds = %346
  %355 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 %9, i64 3
  %356 = load i64, ptr %355, align 8, !tbaa !5
  %357 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 3, i64 %326
  %358 = load i64, ptr %357, align 8, !tbaa !5
  %359 = mul nsw i64 %358, %356
  %360 = sub nsw i64 %352, %359
  %361 = icmp eq i64 %8, 4
  br i1 %361, label %369, label %362, !llvm.loop !12

362:                                              ; preds = %354
  %363 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 %9, i64 4
  %364 = load i64, ptr %363, align 16, !tbaa !5
  %365 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 4, i64 %326
  %366 = load i64, ptr %365, align 8, !tbaa !5
  %367 = mul nsw i64 %366, %364
  %368 = sub nsw i64 %360, %367
  br label %369

369:                                              ; preds = %362, %354, %346, %338, %328
  %370 = phi i64 [ %336, %328 ], [ %344, %338 ], [ %352, %346 ], [ %360, %354 ], [ %368, %362 ]
  store i64 %370, ptr %329, align 8, !tbaa !5
  %371 = add nuw nsw i64 %8, 3
  %372 = icmp eq i64 %371, 6
  br i1 %372, label %461, label %373, !llvm.loop !13

373:                                              ; preds = %369
  %374 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 %9, i64 %371
  %375 = load i64, ptr %374, align 8, !tbaa !5
  %376 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 %9, i64 0
  %377 = load i64, ptr %376, align 16, !tbaa !5
  %378 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 0, i64 %371
  %379 = load i64, ptr %378, align 8, !tbaa !5
  %380 = mul nsw i64 %379, %377
  %381 = sub nsw i64 %375, %380
  %382 = icmp eq i64 %8, 1
  br i1 %382, label %414, label %383, !llvm.loop !12

383:                                              ; preds = %373
  %384 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 %9, i64 1
  %385 = load i64, ptr %384, align 8, !tbaa !5
  %386 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 1, i64 %371
  %387 = load i64, ptr %386, align 8, !tbaa !5
  %388 = mul nsw i64 %387, %385
  %389 = sub nsw i64 %381, %388
  %390 = icmp eq i64 %8, 2
  br i1 %390, label %414, label %391, !llvm.loop !12

391:                                              ; preds = %383
  %392 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 %9, i64 2
  %393 = load i64, ptr %392, align 16, !tbaa !5
  %394 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 2, i64 %371
  %395 = load i64, ptr %394, align 8, !tbaa !5
  %396 = mul nsw i64 %395, %393
  %397 = sub nsw i64 %389, %396
  %398 = icmp eq i64 %8, 3
  br i1 %398, label %414, label %399, !llvm.loop !12

399:                                              ; preds = %391
  %400 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 %9, i64 3
  %401 = load i64, ptr %400, align 8, !tbaa !5
  %402 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 3, i64 %371
  %403 = load i64, ptr %402, align 8, !tbaa !5
  %404 = mul nsw i64 %403, %401
  %405 = sub nsw i64 %397, %404
  %406 = icmp eq i64 %8, 4
  br i1 %406, label %414, label %407, !llvm.loop !12

407:                                              ; preds = %399
  %408 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 %9, i64 4
  %409 = load i64, ptr %408, align 16, !tbaa !5
  %410 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 4, i64 %371
  %411 = load i64, ptr %410, align 8, !tbaa !5
  %412 = mul nsw i64 %411, %409
  %413 = sub nsw i64 %405, %412
  br label %414

414:                                              ; preds = %407, %399, %391, %383, %373
  %415 = phi i64 [ %381, %373 ], [ %389, %383 ], [ %397, %391 ], [ %405, %399 ], [ %413, %407 ]
  store i64 %415, ptr %374, align 8, !tbaa !5
  %416 = add nuw nsw i64 %8, 4
  %417 = icmp eq i64 %416, 6
  br i1 %417, label %461, label %418, !llvm.loop !13

418:                                              ; preds = %414
  %419 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 %9, i64 %416
  %420 = load i64, ptr %419, align 8, !tbaa !5
  %421 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 %9, i64 0
  %422 = load i64, ptr %421, align 16, !tbaa !5
  %423 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 0, i64 %416
  %424 = load i64, ptr %423, align 8, !tbaa !5
  %425 = mul nsw i64 %424, %422
  %426 = sub nsw i64 %420, %425
  %427 = icmp eq i64 %8, 1
  br i1 %427, label %459, label %428, !llvm.loop !12

428:                                              ; preds = %418
  %429 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 %9, i64 1
  %430 = load i64, ptr %429, align 8, !tbaa !5
  %431 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 1, i64 %416
  %432 = load i64, ptr %431, align 8, !tbaa !5
  %433 = mul nsw i64 %432, %430
  %434 = sub nsw i64 %426, %433
  %435 = icmp eq i64 %8, 2
  br i1 %435, label %459, label %436, !llvm.loop !12

436:                                              ; preds = %428
  %437 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 %9, i64 2
  %438 = load i64, ptr %437, align 16, !tbaa !5
  %439 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 2, i64 %416
  %440 = load i64, ptr %439, align 8, !tbaa !5
  %441 = mul nsw i64 %440, %438
  %442 = sub nsw i64 %434, %441
  %443 = icmp eq i64 %8, 3
  br i1 %443, label %459, label %444, !llvm.loop !12

444:                                              ; preds = %436
  %445 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 %9, i64 3
  %446 = load i64, ptr %445, align 8, !tbaa !5
  %447 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 3, i64 %416
  %448 = load i64, ptr %447, align 8, !tbaa !5
  %449 = mul nsw i64 %448, %446
  %450 = sub nsw i64 %442, %449
  %451 = icmp eq i64 %8, 4
  br i1 %451, label %459, label %452, !llvm.loop !12

452:                                              ; preds = %444
  %453 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 %9, i64 4
  %454 = load i64, ptr %453, align 16, !tbaa !5
  %455 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 4, i64 %416
  %456 = load i64, ptr %455, align 8, !tbaa !5
  %457 = mul nsw i64 %456, %454
  %458 = sub nsw i64 %450, %457
  br label %459

459:                                              ; preds = %452, %444, %436, %428, %418
  %460 = phi i64 [ %426, %418 ], [ %434, %428 ], [ %442, %436 ], [ %450, %444 ], [ %458, %452 ]
  store i64 %460, ptr %419, align 8, !tbaa !5
  br label %461

461:                                              ; preds = %459, %414, %369, %324, %279
  %462 = add nuw nsw i64 %8, 1
  %463 = icmp eq i64 %9, 5
  br i1 %463, label %464, label %6, !llvm.loop !14

464:                                              ; preds = %461
  %465 = load i64, ptr getelementptr inbounds nuw (i8, ptr @a, i64 160), align 16, !tbaa !5
  %466 = mul i64 %465, -29
  %467 = add i64 %466, 37
  %468 = load i64, ptr getelementptr inbounds nuw (i8, ptr @a, i64 320), align 16, !tbaa !5
  %469 = mul i64 %468, -29
  %470 = add i64 %469, 45
  %471 = load i64, ptr getelementptr inbounds nuw (i8, ptr @a, i64 328), align 8, !tbaa !5
  %472 = mul nsw i64 %467, %471
  %473 = sub nsw i64 %470, %472
  %474 = load i64, ptr getelementptr inbounds nuw (i8, ptr @a, i64 480), align 16, !tbaa !5
  %475 = mul i64 %474, -29
  %476 = add i64 %475, 53
  %477 = load i64, ptr getelementptr inbounds nuw (i8, ptr @a, i64 488), align 8, !tbaa !5
  %478 = mul nsw i64 %467, %477
  %479 = load i64, ptr getelementptr inbounds nuw (i8, ptr @a, i64 496), align 16, !tbaa !5
  %480 = mul nsw i64 %473, %479
  %481 = add i64 %478, %480
  %482 = sub i64 %476, %481
  %483 = load i64, ptr getelementptr inbounds nuw (i8, ptr @a, i64 640), align 16, !tbaa !5
  %484 = mul i64 %483, -29
  %485 = add i64 %484, 61
  %486 = load i64, ptr getelementptr inbounds nuw (i8, ptr @a, i64 648), align 8, !tbaa !5
  %487 = mul nsw i64 %467, %486
  %488 = load i64, ptr getelementptr inbounds nuw (i8, ptr @a, i64 656), align 16, !tbaa !5
  %489 = mul nsw i64 %473, %488
  %490 = add i64 %487, %489
  %491 = load i64, ptr getelementptr inbounds nuw (i8, ptr @a, i64 664), align 8, !tbaa !5
  %492 = mul nsw i64 %482, %491
  %493 = add i64 %490, %492
  %494 = sub i64 %485, %493
  %495 = load i64, ptr getelementptr inbounds nuw (i8, ptr @a, i64 800), align 16, !tbaa !5
  %496 = mul i64 %495, -29
  %497 = add i64 %496, 69
  %498 = load i64, ptr getelementptr inbounds nuw (i8, ptr @a, i64 808), align 8, !tbaa !5
  %499 = mul nsw i64 %467, %498
  %500 = load i64, ptr getelementptr inbounds nuw (i8, ptr @a, i64 816), align 16, !tbaa !5
  %501 = mul nsw i64 %473, %500
  %502 = add i64 %499, %501
  %503 = load i64, ptr getelementptr inbounds nuw (i8, ptr @a, i64 824), align 8, !tbaa !5
  %504 = mul nsw i64 %482, %503
  %505 = add i64 %502, %504
  %506 = load i64, ptr getelementptr inbounds nuw (i8, ptr @a, i64 832), align 16, !tbaa !5
  %507 = mul nsw i64 %494, %506
  %508 = add i64 %505, %507
  %509 = sub i64 %497, %508
  %510 = load i64, ptr getelementptr inbounds nuw (i8, ptr @a, i64 840), align 8, !tbaa !5
  %511 = sdiv i64 %509, %510
  store i64 %511, ptr getelementptr inbounds nuw (i8, ptr @x, i64 40), align 8, !tbaa !5
  %512 = load i64, ptr getelementptr inbounds nuw (i8, ptr @a, i64 680), align 8, !tbaa !5
  %513 = mul nsw i64 %511, %512
  %514 = sub nsw i64 %494, %513
  %515 = load i64, ptr getelementptr inbounds nuw (i8, ptr @a, i64 672), align 16, !tbaa !5
  %516 = sdiv i64 %514, %515
  store i64 %516, ptr getelementptr inbounds nuw (i8, ptr @x, i64 32), align 16, !tbaa !5
  %517 = load i64, ptr getelementptr inbounds nuw (i8, ptr @a, i64 520), align 8, !tbaa !5
  %518 = mul nsw i64 %511, %517
  %519 = load i64, ptr getelementptr inbounds nuw (i8, ptr @a, i64 512), align 16, !tbaa !5
  %520 = mul nsw i64 %516, %519
  %521 = add i64 %520, %518
  %522 = sub i64 %482, %521
  %523 = load i64, ptr getelementptr inbounds nuw (i8, ptr @a, i64 504), align 8, !tbaa !5
  %524 = sdiv i64 %522, %523
  store i64 %524, ptr getelementptr inbounds nuw (i8, ptr @x, i64 24), align 8, !tbaa !5
  %525 = load i64, ptr getelementptr inbounds nuw (i8, ptr @a, i64 360), align 8, !tbaa !5
  %526 = mul nsw i64 %511, %525
  %527 = load i64, ptr getelementptr inbounds nuw (i8, ptr @a, i64 344), align 8, !tbaa !5
  %528 = mul nsw i64 %524, %527
  %529 = load i64, ptr getelementptr inbounds nuw (i8, ptr @a, i64 352), align 16, !tbaa !5
  %530 = mul nsw i64 %516, %529
  %531 = add i64 %528, %530
  %532 = add i64 %531, %526
  %533 = sub i64 %473, %532
  %534 = load i64, ptr getelementptr inbounds nuw (i8, ptr @a, i64 336), align 16, !tbaa !5
  %535 = sdiv i64 %533, %534
  store i64 %535, ptr getelementptr inbounds nuw (i8, ptr @x, i64 16), align 16, !tbaa !5
  %536 = load i64, ptr getelementptr inbounds nuw (i8, ptr @a, i64 200), align 8, !tbaa !5
  %537 = mul nsw i64 %511, %536
  %538 = load i64, ptr getelementptr inbounds nuw (i8, ptr @a, i64 176), align 16, !tbaa !5
  %539 = mul nsw i64 %535, %538
  %540 = load i64, ptr getelementptr inbounds nuw (i8, ptr @a, i64 184), align 8, !tbaa !5
  %541 = mul nsw i64 %524, %540
  %542 = add i64 %539, %541
  %543 = load i64, ptr getelementptr inbounds nuw (i8, ptr @a, i64 192), align 16, !tbaa !5
  %544 = mul nsw i64 %516, %543
  %545 = add i64 %542, %544
  %546 = add i64 %545, %537
  %547 = sub i64 %467, %546
  %548 = load i64, ptr getelementptr inbounds nuw (i8, ptr @a, i64 168), align 8, !tbaa !5
  %549 = sdiv i64 %547, %548
  store i64 %549, ptr getelementptr inbounds nuw (i8, ptr @x, i64 8), align 8, !tbaa !5
  %550 = load i64, ptr getelementptr inbounds nuw (i8, ptr @a, i64 40), align 8, !tbaa !5
  %551 = mul nsw i64 %511, %550
  %552 = load i64, ptr getelementptr inbounds nuw (i8, ptr @a, i64 8), align 8, !tbaa !5
  %553 = mul nsw i64 %549, %552
  %554 = load i64, ptr getelementptr inbounds nuw (i8, ptr @a, i64 16), align 16, !tbaa !5
  %555 = mul nsw i64 %535, %554
  %556 = add i64 %553, %555
  %557 = load i64, ptr getelementptr inbounds nuw (i8, ptr @a, i64 24), align 8, !tbaa !5
  %558 = mul nsw i64 %524, %557
  %559 = add i64 %556, %558
  %560 = load i64, ptr getelementptr inbounds nuw (i8, ptr @a, i64 32), align 16, !tbaa !5
  %561 = mul nsw i64 %516, %560
  %562 = add i64 %559, %561
  %563 = add i64 %562, %551
  %564 = sub i64 29, %563
  %565 = load i64, ptr @a, align 16, !tbaa !5
  %566 = sdiv i64 %564, %565
  store i64 %566, ptr @x, align 16, !tbaa !5
  store volatile i32 0, ptr @chkerr, align 4, !tbaa !15
  %567 = add nuw i32 %570, 1
  %568 = icmp eq i32 %567, %1
  br i1 %568, label %571, label %569, !llvm.loop !17

569:                                              ; preds = %4, %464
  %570 = phi i32 [ 0, %4 ], [ %567, %464 ]
  store i64 4, ptr @a, align 16, !tbaa !5
  store i64 3, ptr getelementptr inbounds nuw (i8, ptr @a, i64 8), align 8, !tbaa !5
  store i64 4, ptr getelementptr inbounds nuw (i8, ptr @a, i64 16), align 16, !tbaa !5
  store i64 5, ptr getelementptr inbounds nuw (i8, ptr @a, i64 24), align 8, !tbaa !5
  store i64 6, ptr getelementptr inbounds nuw (i8, ptr @a, i64 32), align 16, !tbaa !5
  store i64 7, ptr getelementptr inbounds nuw (i8, ptr @a, i64 40), align 8, !tbaa !5
  store i64 29, ptr @b, align 16, !tbaa !5
  store i64 3, ptr getelementptr inbounds nuw (i8, ptr @a, i64 160), align 16, !tbaa !5
  store i64 8, ptr getelementptr inbounds nuw (i8, ptr @a, i64 168), align 8, !tbaa !5
  store i64 5, ptr getelementptr inbounds nuw (i8, ptr @a, i64 176), align 16, !tbaa !5
  store i64 6, ptr getelementptr inbounds nuw (i8, ptr @a, i64 184), align 8, !tbaa !5
  store i64 7, ptr getelementptr inbounds nuw (i8, ptr @a, i64 192), align 16, !tbaa !5
  store i64 8, ptr getelementptr inbounds nuw (i8, ptr @a, i64 200), align 8, !tbaa !5
  store i64 37, ptr getelementptr inbounds nuw (i8, ptr @b, i64 8), align 8, !tbaa !5
  store i64 4, ptr getelementptr inbounds nuw (i8, ptr @a, i64 320), align 16, !tbaa !5
  store i64 5, ptr getelementptr inbounds nuw (i8, ptr @a, i64 328), align 8, !tbaa !5
  store i64 12, ptr getelementptr inbounds nuw (i8, ptr @a, i64 336), align 16, !tbaa !5
  store i64 7, ptr getelementptr inbounds nuw (i8, ptr @a, i64 344), align 8, !tbaa !5
  store i64 8, ptr getelementptr inbounds nuw (i8, ptr @a, i64 352), align 16, !tbaa !5
  store i64 9, ptr getelementptr inbounds nuw (i8, ptr @a, i64 360), align 8, !tbaa !5
  store i64 45, ptr getelementptr inbounds nuw (i8, ptr @b, i64 16), align 16, !tbaa !5
  store i64 5, ptr getelementptr inbounds nuw (i8, ptr @a, i64 480), align 16, !tbaa !5
  store i64 6, ptr getelementptr inbounds nuw (i8, ptr @a, i64 488), align 8, !tbaa !5
  store i64 7, ptr getelementptr inbounds nuw (i8, ptr @a, i64 496), align 16, !tbaa !5
  store i64 16, ptr getelementptr inbounds nuw (i8, ptr @a, i64 504), align 8, !tbaa !5
  store i64 9, ptr getelementptr inbounds nuw (i8, ptr @a, i64 512), align 16, !tbaa !5
  store i64 10, ptr getelementptr inbounds nuw (i8, ptr @a, i64 520), align 8, !tbaa !5
  store i64 53, ptr getelementptr inbounds nuw (i8, ptr @b, i64 24), align 8, !tbaa !5
  store i64 6, ptr getelementptr inbounds nuw (i8, ptr @a, i64 640), align 16, !tbaa !5
  store i64 7, ptr getelementptr inbounds nuw (i8, ptr @a, i64 648), align 8, !tbaa !5
  store i64 8, ptr getelementptr inbounds nuw (i8, ptr @a, i64 656), align 16, !tbaa !5
  store i64 9, ptr getelementptr inbounds nuw (i8, ptr @a, i64 664), align 8, !tbaa !5
  store i64 20, ptr getelementptr inbounds nuw (i8, ptr @a, i64 672), align 16, !tbaa !5
  store i64 11, ptr getelementptr inbounds nuw (i8, ptr @a, i64 680), align 8, !tbaa !5
  store i64 61, ptr getelementptr inbounds nuw (i8, ptr @b, i64 32), align 16, !tbaa !5
  store i64 7, ptr getelementptr inbounds nuw (i8, ptr @a, i64 800), align 16, !tbaa !5
  store i64 8, ptr getelementptr inbounds nuw (i8, ptr @a, i64 808), align 8, !tbaa !5
  store i64 9, ptr getelementptr inbounds nuw (i8, ptr @a, i64 816), align 16, !tbaa !5
  store i64 10, ptr getelementptr inbounds nuw (i8, ptr @a, i64 824), align 8, !tbaa !5
  store i64 11, ptr getelementptr inbounds nuw (i8, ptr @a, i64 832), align 16, !tbaa !5
  store i64 24, ptr getelementptr inbounds nuw (i8, ptr @a, i64 840), align 8, !tbaa !5
  store i64 69, ptr getelementptr inbounds nuw (i8, ptr @b, i64 40), align 8, !tbaa !5
  br label %6

571:                                              ; preds = %464
  %572 = add nuw nsw i32 %5, 1
  %573 = icmp eq i32 %572, %0
  br i1 %573, label %574, label %4, !llvm.loop !18

574:                                              ; preds = %571, %2
  %575 = load volatile i32, ptr @chkerr, align 4, !tbaa !15
  ret i32 %575
}

; Function Attrs: nofree noinline norecurse nounwind uwtable
define dso_local i32 @benchmark() local_unnamed_addr #7 {
  %1 = tail call fastcc i32 @benchmark_body(i32 noundef 1785, i32 noundef 20)
  ret i32 %1
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef i32 @ludcmp(i32 noundef %0, i32 noundef %1) local_unnamed_addr #8 {
  %3 = alloca [100 x i64], align 16
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %3) #10
  %4 = icmp sgt i32 %1, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = load i64, ptr @b, align 16, !tbaa !5
  store i64 %6, ptr %3, align 16, !tbaa !5
  br label %191

7:                                                ; preds = %2
  %8 = add nuw i32 %1, 1
  %9 = zext nneg i32 %1 to i64
  %10 = zext i32 %8 to i64
  %11 = zext i32 %8 to i64
  %12 = zext i32 %8 to i64
  %13 = add nsw i64 %12, -2
  %14 = and i32 %1, 1
  %15 = icmp eq i32 %14, 0
  br label %19

16:                                               ; preds = %134
  %17 = add nuw nsw i64 %21, 1
  %18 = icmp eq i64 %22, %9
  br i1 %18, label %138, label %19, !llvm.loop !14

19:                                               ; preds = %16, %7
  %20 = phi i64 [ 0, %7 ], [ %22, %16 ]
  %21 = phi i64 [ 1, %7 ], [ %17, %16 ]
  %22 = add nuw nsw i64 %20, 1
  %23 = icmp eq i64 %20, 0
  %24 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 %20, i64 %20
  br i1 %23, label %30, label %25

25:                                               ; preds = %19
  %26 = and i64 %20, 1
  %27 = icmp eq i64 %20, 1
  %28 = and i64 %20, 9223372036854775806
  %29 = icmp eq i64 %26, 0
  br label %53

30:                                               ; preds = %19
  br i1 %15, label %37, label %31

31:                                               ; preds = %30
  %32 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 %21, i64 0
  %33 = load i64, ptr %32, align 16, !tbaa !5
  %34 = load i64, ptr %24, align 8, !tbaa !5
  %35 = sdiv i64 %33, %34
  store i64 %35, ptr %32, align 16, !tbaa !5
  %36 = add nuw nsw i64 %21, 1
  br label %37

37:                                               ; preds = %31, %30
  %38 = phi i64 [ %21, %30 ], [ %36, %31 ]
  %39 = icmp eq i64 %13, %20
  br i1 %39, label %94, label %40

40:                                               ; preds = %37, %40
  %41 = phi i64 [ %51, %40 ], [ %38, %37 ]
  %42 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 %41, i64 0
  %43 = load i64, ptr %42, align 16, !tbaa !5
  %44 = load i64, ptr %24, align 8, !tbaa !5
  %45 = sdiv i64 %43, %44
  store i64 %45, ptr %42, align 16, !tbaa !5
  %46 = add nuw nsw i64 %41, 1
  %47 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 %46, i64 0
  %48 = load i64, ptr %47, align 16, !tbaa !5
  %49 = load i64, ptr %24, align 8, !tbaa !5
  %50 = sdiv i64 %48, %49
  store i64 %50, ptr %47, align 16, !tbaa !5
  %51 = add nuw nsw i64 %41, 2
  %52 = icmp eq i64 %51, %11
  br i1 %52, label %94, label %40, !llvm.loop !11

53:                                               ; preds = %25, %88
  %54 = phi i64 [ %92, %88 ], [ %21, %25 ]
  %55 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 %54, i64 %20
  %56 = load i64, ptr %55, align 8, !tbaa !5
  br i1 %27, label %77, label %57

57:                                               ; preds = %53, %57
  %58 = phi i64 [ %74, %57 ], [ 0, %53 ]
  %59 = phi i64 [ %73, %57 ], [ %56, %53 ]
  %60 = phi i64 [ %75, %57 ], [ 0, %53 ]
  %61 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 %54, i64 %58
  %62 = load i64, ptr %61, align 16, !tbaa !5
  %63 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 %58, i64 %20
  %64 = load i64, ptr %63, align 8, !tbaa !5
  %65 = mul nsw i64 %64, %62
  %66 = or disjoint i64 %58, 1
  %67 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 %54, i64 %66
  %68 = load i64, ptr %67, align 8, !tbaa !5
  %69 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 %66, i64 %20
  %70 = load i64, ptr %69, align 8, !tbaa !5
  %71 = mul nsw i64 %70, %68
  %72 = add i64 %65, %71
  %73 = sub i64 %59, %72
  %74 = add nuw nsw i64 %58, 2
  %75 = add i64 %60, 2
  %76 = icmp eq i64 %75, %28
  br i1 %76, label %77, label %57, !llvm.loop !9

77:                                               ; preds = %57, %53
  %78 = phi i64 [ poison, %53 ], [ %73, %57 ]
  %79 = phi i64 [ 0, %53 ], [ %74, %57 ]
  %80 = phi i64 [ %56, %53 ], [ %73, %57 ]
  br i1 %29, label %88, label %81

81:                                               ; preds = %77
  %82 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 %54, i64 %79
  %83 = load i64, ptr %82, align 8, !tbaa !5
  %84 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 %79, i64 %20
  %85 = load i64, ptr %84, align 8, !tbaa !5
  %86 = mul nsw i64 %85, %83
  %87 = sub nsw i64 %80, %86
  br label %88

88:                                               ; preds = %77, %81
  %89 = phi i64 [ %78, %77 ], [ %87, %81 ]
  %90 = load i64, ptr %24, align 8, !tbaa !5
  %91 = sdiv i64 %89, %90
  store i64 %91, ptr %55, align 8, !tbaa !5
  %92 = add nuw nsw i64 %54, 1
  %93 = icmp eq i64 %92, %10
  br i1 %93, label %94, label %53, !llvm.loop !11

94:                                               ; preds = %88, %37, %40
  %95 = and i64 %21, 1
  %96 = icmp eq i64 %20, 0
  %97 = and i64 %21, 9223372036854775806
  %98 = icmp eq i64 %95, 0
  br label %99

99:                                               ; preds = %94, %134
  %100 = phi i64 [ %136, %134 ], [ %21, %94 ]
  %101 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 %22, i64 %100
  %102 = load i64, ptr %101, align 8, !tbaa !5
  br i1 %96, label %123, label %103

103:                                              ; preds = %99, %103
  %104 = phi i64 [ %120, %103 ], [ 0, %99 ]
  %105 = phi i64 [ %119, %103 ], [ %102, %99 ]
  %106 = phi i64 [ %121, %103 ], [ 0, %99 ]
  %107 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 %22, i64 %104
  %108 = load i64, ptr %107, align 16, !tbaa !5
  %109 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 %104, i64 %100
  %110 = load i64, ptr %109, align 8, !tbaa !5
  %111 = mul nsw i64 %110, %108
  %112 = or disjoint i64 %104, 1
  %113 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 %22, i64 %112
  %114 = load i64, ptr %113, align 8, !tbaa !5
  %115 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 %112, i64 %100
  %116 = load i64, ptr %115, align 8, !tbaa !5
  %117 = mul nsw i64 %116, %114
  %118 = add i64 %111, %117
  %119 = sub i64 %105, %118
  %120 = add nuw nsw i64 %104, 2
  %121 = add i64 %106, 2
  %122 = icmp eq i64 %121, %97
  br i1 %122, label %123, label %103, !llvm.loop !12

123:                                              ; preds = %103, %99
  %124 = phi i64 [ poison, %99 ], [ %119, %103 ]
  %125 = phi i64 [ 0, %99 ], [ %120, %103 ]
  %126 = phi i64 [ %102, %99 ], [ %119, %103 ]
  br i1 %98, label %134, label %127

127:                                              ; preds = %123
  %128 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 %22, i64 %125
  %129 = load i64, ptr %128, align 8, !tbaa !5
  %130 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 %125, i64 %100
  %131 = load i64, ptr %130, align 8, !tbaa !5
  %132 = mul nsw i64 %131, %129
  %133 = sub nsw i64 %126, %132
  br label %134

134:                                              ; preds = %123, %127
  %135 = phi i64 [ %124, %123 ], [ %133, %127 ]
  store i64 %135, ptr %101, align 8, !tbaa !5
  %136 = add nuw nsw i64 %100, 1
  %137 = icmp eq i64 %136, %12
  br i1 %137, label %16, label %99, !llvm.loop !13

138:                                              ; preds = %16
  %139 = load i64, ptr @b, align 16, !tbaa !5
  store i64 %139, ptr %3, align 16, !tbaa !5
  %140 = add nuw i32 %1, 1
  %141 = zext i32 %140 to i64
  br label %142

142:                                              ; preds = %138, %186
  %143 = phi i64 [ 1, %138 ], [ %189, %186 ]
  %144 = getelementptr inbounds nuw [20 x i64], ptr @b, i64 0, i64 %143
  %145 = load i64, ptr %144, align 8, !tbaa !5
  %146 = icmp samesign ult i64 %143, 4
  br i1 %146, label %172, label %147

147:                                              ; preds = %142
  %148 = and i64 %143, 9223372036854775804
  %149 = insertelement <2 x i64> <i64 poison, i64 0>, i64 %145, i64 0
  br label %150

150:                                              ; preds = %150, %147
  %151 = phi i64 [ 0, %147 ], [ %166, %150 ]
  %152 = phi <2 x i64> [ %149, %147 ], [ %164, %150 ]
  %153 = phi <2 x i64> [ zeroinitializer, %147 ], [ %165, %150 ]
  %154 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 %143, i64 %151
  %155 = getelementptr inbounds nuw i8, ptr %154, i64 16
  %156 = load <2 x i64>, ptr %154, align 16, !tbaa !5
  %157 = load <2 x i64>, ptr %155, align 16, !tbaa !5
  %158 = getelementptr inbounds nuw [100 x i64], ptr %3, i64 0, i64 %151
  %159 = getelementptr inbounds nuw i8, ptr %158, i64 16
  %160 = load <2 x i64>, ptr %158, align 16, !tbaa !5
  %161 = load <2 x i64>, ptr %159, align 16, !tbaa !5
  %162 = mul nsw <2 x i64> %160, %156
  %163 = mul nsw <2 x i64> %161, %157
  %164 = sub <2 x i64> %152, %162
  %165 = sub <2 x i64> %153, %163
  %166 = add nuw i64 %151, 4
  %167 = icmp eq i64 %166, %148
  br i1 %167, label %168, label %150, !llvm.loop !19

168:                                              ; preds = %150
  %169 = add <2 x i64> %165, %164
  %170 = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %169)
  %171 = icmp eq i64 %143, %148
  br i1 %171, label %186, label %172

172:                                              ; preds = %142, %168
  %173 = phi i64 [ 0, %142 ], [ %148, %168 ]
  %174 = phi i64 [ %145, %142 ], [ %170, %168 ]
  br label %175

175:                                              ; preds = %172, %175
  %176 = phi i64 [ %184, %175 ], [ %173, %172 ]
  %177 = phi i64 [ %183, %175 ], [ %174, %172 ]
  %178 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 %143, i64 %176
  %179 = load i64, ptr %178, align 8, !tbaa !5
  %180 = getelementptr inbounds nuw [100 x i64], ptr %3, i64 0, i64 %176
  %181 = load i64, ptr %180, align 8, !tbaa !5
  %182 = mul nsw i64 %181, %179
  %183 = sub nsw i64 %177, %182
  %184 = add nuw nsw i64 %176, 1
  %185 = icmp eq i64 %184, %143
  br i1 %185, label %186, label %175, !llvm.loop !22

186:                                              ; preds = %175, %168
  %187 = phi i64 [ %170, %168 ], [ %183, %175 ]
  %188 = getelementptr inbounds nuw [100 x i64], ptr %3, i64 0, i64 %143
  store i64 %187, ptr %188, align 8, !tbaa !5
  %189 = add nuw nsw i64 %143, 1
  %190 = icmp eq i64 %189, %141
  br i1 %190, label %191, label %142, !llvm.loop !23

191:                                              ; preds = %186, %5
  %192 = sext i32 %1 to i64
  %193 = getelementptr inbounds [100 x i64], ptr %3, i64 0, i64 %192
  %194 = load i64, ptr %193, align 8, !tbaa !5
  %195 = getelementptr inbounds [20 x [20 x i64]], ptr @a, i64 0, i64 %192, i64 %192
  %196 = load i64, ptr %195, align 8, !tbaa !5
  %197 = sdiv i64 %194, %196
  %198 = getelementptr inbounds [20 x i64], ptr @x, i64 0, i64 %192
  store i64 %197, ptr %198, align 8, !tbaa !5
  br i1 %4, label %199, label %266

199:                                              ; preds = %191
  %200 = zext nneg i32 %1 to i64
  br label %201

201:                                              ; preds = %199, %258
  %202 = phi i32 [ 0, %199 ], [ %265, %258 ]
  %203 = phi i64 [ %200, %199 ], [ %210, %258 ]
  %204 = sub i32 %1, %202
  %205 = tail call i32 @llvm.smax.i32(i32 %1, i32 %204)
  %206 = sub i32 %202, %1
  %207 = add i32 %205, %206
  %208 = zext i32 %207 to i64
  %209 = add nuw nsw i64 %208, 1
  %210 = add nsw i64 %203, -1
  %211 = getelementptr inbounds nuw [100 x i64], ptr %3, i64 0, i64 %210
  %212 = load i64, ptr %211, align 8, !tbaa !5
  %213 = icmp sgt i64 %203, %192
  br i1 %213, label %258, label %214

214:                                              ; preds = %201
  %215 = icmp ult i32 %207, 3
  br i1 %215, label %243, label %216

216:                                              ; preds = %214
  %217 = and i64 %209, 8589934588
  %218 = add i64 %203, %217
  %219 = insertelement <2 x i64> <i64 poison, i64 0>, i64 %212, i64 0
  br label %220

220:                                              ; preds = %220, %216
  %221 = phi i64 [ 0, %216 ], [ %237, %220 ]
  %222 = phi <2 x i64> [ %219, %216 ], [ %235, %220 ]
  %223 = phi <2 x i64> [ zeroinitializer, %216 ], [ %236, %220 ]
  %224 = add i64 %203, %221
  %225 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 %210, i64 %224
  %226 = getelementptr inbounds nuw i8, ptr %225, i64 16
  %227 = load <2 x i64>, ptr %225, align 8, !tbaa !5
  %228 = load <2 x i64>, ptr %226, align 8, !tbaa !5
  %229 = getelementptr inbounds nuw [20 x i64], ptr @x, i64 0, i64 %224
  %230 = getelementptr inbounds nuw i8, ptr %229, i64 16
  %231 = load <2 x i64>, ptr %229, align 8, !tbaa !5
  %232 = load <2 x i64>, ptr %230, align 8, !tbaa !5
  %233 = mul nsw <2 x i64> %231, %227
  %234 = mul nsw <2 x i64> %232, %228
  %235 = sub <2 x i64> %222, %233
  %236 = sub <2 x i64> %223, %234
  %237 = add nuw i64 %221, 4
  %238 = icmp eq i64 %237, %217
  br i1 %238, label %239, label %220, !llvm.loop !24

239:                                              ; preds = %220
  %240 = add <2 x i64> %236, %235
  %241 = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %240)
  %242 = icmp eq i64 %209, %217
  br i1 %242, label %258, label %243

243:                                              ; preds = %214, %239
  %244 = phi i64 [ %203, %214 ], [ %218, %239 ]
  %245 = phi i64 [ %212, %214 ], [ %241, %239 ]
  br label %246

246:                                              ; preds = %243, %246
  %247 = phi i64 [ %255, %246 ], [ %244, %243 ]
  %248 = phi i64 [ %254, %246 ], [ %245, %243 ]
  %249 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 %210, i64 %247
  %250 = load i64, ptr %249, align 8, !tbaa !5
  %251 = getelementptr inbounds nuw [20 x i64], ptr @x, i64 0, i64 %247
  %252 = load i64, ptr %251, align 8, !tbaa !5
  %253 = mul nsw i64 %252, %250
  %254 = sub nsw i64 %248, %253
  %255 = add nuw nsw i64 %247, 1
  %256 = trunc nuw i64 %247 to i32
  %257 = icmp sgt i32 %1, %256
  br i1 %257, label %246, label %258, !llvm.loop !25

258:                                              ; preds = %246, %239, %201
  %259 = phi i64 [ %212, %201 ], [ %241, %239 ], [ %254, %246 ]
  %260 = getelementptr inbounds nuw [20 x [20 x i64]], ptr @a, i64 0, i64 %210, i64 %210
  %261 = load i64, ptr %260, align 8, !tbaa !5
  %262 = sdiv i64 %259, %261
  %263 = getelementptr inbounds nuw [20 x i64], ptr @x, i64 0, i64 %210
  store i64 %262, ptr %263, align 8, !tbaa !5
  %264 = icmp sgt i64 %203, 1
  %265 = add i32 %202, 1
  br i1 %264, label %201, label %266, !llvm.loop !26

266:                                              ; preds = %258, %191
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %3) #10
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

attributes #0 = { mustprogress nofree nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nounwind memory(readwrite, argmem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(read) }

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
!14 = distinct !{!14, !10}
!15 = !{!16, !16, i64 0}
!16 = !{!"int", !7, i64 0}
!17 = distinct !{!17, !10}
!18 = distinct !{!18, !10}
!19 = distinct !{!19, !10, !20, !21}
!20 = !{!"llvm.loop.isvectorized", i32 1}
!21 = !{!"llvm.loop.unroll.runtime.disable"}
!22 = distinct !{!22, !10, !21, !20}
!23 = distinct !{!23, !10}
!24 = distinct !{!24, !10, !20, !21}
!25 = distinct !{!25, !10, !21, !20}
!26 = distinct !{!26, !10}
