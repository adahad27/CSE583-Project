; ModuleID = '../src/slre/libslre.c'
source_filename = "../src/slre/libslre.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.branch = type { i32, ptr }
%struct.regex_info = type { [100 x %struct.bracket_pair], i32, [100 x %struct.branch], i32, ptr, i32, i32 }
%struct.bracket_pair = type { ptr, i32, i32, i32 }
%struct.slre_cap = type { ptr, i32 }

@.str = private unnamed_addr constant [5 x i8] c"(?i)\00", align 1
@text = dso_local global [46 x i8] c"abbbababaabccababcacbcbcbabbabcbabcabcbbcbbac\00", align 16
@.str.1 = private unnamed_addr constant [6 x i8] c"(ab)+\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"(b.+)+\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"a[ab]*\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"([ab^c][ab^c])+\00", align 1
@regexes = dso_local local_unnamed_addr global [4 x ptr] [ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], align 16
@.str.5 = private unnamed_addr constant [16 x i8] c"^$().[]*+?|\\Ssd\00", align 1

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @slre_match(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.branch, align 8
  %7 = alloca %struct.regex_info, align 8
  call void @llvm.lifetime.start.p0(i64 4032, ptr nonnull %7) #12
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 4008
  store i32 0, ptr %8, align 8, !tbaa !5
  %9 = getelementptr inbounds nuw i8, ptr %7, i64 2400
  %10 = getelementptr inbounds nuw i8, ptr %7, i64 4028
  store i32 0, ptr %10, align 4, !tbaa !12
  %11 = getelementptr inbounds nuw i8, ptr %7, i64 4024
  store i32 %4, ptr %11, align 8, !tbaa !13
  %12 = getelementptr inbounds nuw i8, ptr %7, i64 4016
  store ptr %3, ptr %12, align 8, !tbaa !14
  %13 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %0, ptr noundef nonnull dereferenceable(4) @.str, i64 4)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %5
  store i32 1, ptr %10, align 4, !tbaa !12
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %17

17:                                               ; preds = %15, %5
  %18 = phi ptr [ %16, %15 ], [ %0, %5 ]
  %19 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %18) #13
  %20 = trunc i64 %19 to i32
  store ptr %18, ptr %7, align 8, !tbaa !15
  %21 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %20, ptr %21, align 8, !tbaa !18
  store i32 1, ptr %9, align 8, !tbaa !19
  %22 = getelementptr i8, ptr %18, i64 -1
  %23 = icmp sgt i32 %20, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6)
  br label %177

25:                                               ; preds = %17
  %26 = add nsw i32 %20, -1
  %27 = add nsw i32 %20, -3
  %28 = getelementptr inbounds nuw i8, ptr %7, i64 2408
  %29 = icmp sgt i32 %4, 0
  br label %30

30:                                               ; preds = %152, %25
  %31 = phi i32 [ 0, %25 ], [ %153, %152 ]
  %32 = phi i32 [ 1, %25 ], [ %154, %152 ]
  %33 = phi i32 [ 1, %25 ], [ %155, %152 ]
  %34 = phi i32 [ 1, %25 ], [ %156, %152 ]
  %35 = phi i32 [ 0, %25 ], [ %158, %152 ]
  %36 = phi i32 [ 0, %25 ], [ %159, %152 ]
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, ptr %18, i64 %37
  %39 = sub nsw i32 %20, %36
  %40 = load i8, ptr %38, align 1, !tbaa !20
  switch i8 %40, label %69 [
    i8 91, label %41
    i8 92, label %64
  ]

41:                                               ; preds = %30
  %42 = getelementptr inbounds nuw i8, ptr %38, i64 1
  %43 = add nsw i32 %39, -1
  %44 = icmp sgt i32 %39, 1
  br i1 %44, label %45, label %59

45:                                               ; preds = %41, %55
  %46 = phi i32 [ %57, %55 ], [ 0, %41 ]
  %47 = zext nneg i32 %46 to i64
  %48 = getelementptr inbounds nuw i8, ptr %42, i64 %47
  %49 = load i8, ptr %48, align 1, !tbaa !20
  switch i8 %49, label %55 [
    i8 93, label %59
    i8 92, label %50
  ]

50:                                               ; preds = %45
  %51 = getelementptr inbounds nuw i8, ptr %48, i64 1
  %52 = load i8, ptr %51, align 1, !tbaa !20
  %53 = icmp eq i8 %52, 120
  %54 = select i1 %53, i32 4, i32 2
  br label %55

55:                                               ; preds = %50, %45
  %56 = phi i32 [ %54, %50 ], [ 1, %45 ]
  %57 = add nuw nsw i32 %56, %46
  %58 = icmp slt i32 %57, %43
  br i1 %58, label %45, label %59, !llvm.loop !21

59:                                               ; preds = %55, %45, %41
  %60 = phi i32 [ 0, %41 ], [ %57, %55 ], [ %46, %45 ]
  %61 = icmp slt i32 %60, %39
  %62 = add nsw i32 %60, 2
  %63 = select i1 %61, i32 %62, i32 0
  br label %69

64:                                               ; preds = %30
  %65 = getelementptr inbounds nuw i8, ptr %38, i64 1
  %66 = load i8, ptr %65, align 1, !tbaa !20
  %67 = icmp eq i8 %66, 120
  %68 = select i1 %67, i32 4, i32 2
  br label %86

69:                                               ; preds = %59, %30
  %70 = phi i32 [ %63, %59 ], [ 1, %30 ]
  switch i8 %40, label %152 [
    i8 124, label %71
    i8 92, label %86
    i8 40, label %117
    i8 41, label %128
  ]

71:                                               ; preds = %69
  %72 = icmp sgt i32 %31, 99
  br i1 %72, label %324, label %73

73:                                               ; preds = %71
  %74 = add nsw i32 %33, -1
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [100 x %struct.bracket_pair], ptr %7, i64 0, i64 %75, i32 1
  %77 = load i32, ptr %76, align 8, !tbaa !18
  %78 = icmp eq i32 %77, -1
  %79 = select i1 %78, i32 %74, i32 %35
  %80 = sext i32 %31 to i64
  %81 = getelementptr inbounds [100 x %struct.branch], ptr %28, i64 0, i64 %80
  store i32 %79, ptr %81, align 8, !tbaa !23
  %82 = shl nsw i64 %80, 4
  %83 = or disjoint i64 %82, 8
  %84 = getelementptr inbounds i8, ptr %28, i64 %83
  store ptr %38, ptr %84, align 8, !tbaa !25
  %85 = add nsw i32 %31, 1
  br label %152

86:                                               ; preds = %69, %64
  %87 = phi i32 [ %68, %64 ], [ %70, %69 ]
  %88 = icmp slt i32 %36, %26
  br i1 %88, label %89, label %324

89:                                               ; preds = %86
  %90 = getelementptr i8, ptr %38, i64 1
  %91 = load i8, ptr %90, align 1, !tbaa !20
  %92 = icmp eq i8 %91, 120
  br i1 %92, label %93, label %113

93:                                               ; preds = %89
  %94 = icmp slt i32 %36, %27
  br i1 %94, label %95, label %324

95:                                               ; preds = %93
  %96 = tail call ptr @__ctype_b_loc() #14
  %97 = load ptr, ptr %96, align 8, !tbaa !26
  %98 = getelementptr i8, ptr %38, i64 2
  %99 = load i8, ptr %98, align 1, !tbaa !20
  %100 = zext i8 %99 to i64
  %101 = getelementptr inbounds nuw i16, ptr %97, i64 %100
  %102 = load i16, ptr %101, align 2, !tbaa !28
  %103 = and i16 %102, 4096
  %104 = icmp eq i16 %103, 0
  br i1 %104, label %324, label %105

105:                                              ; preds = %95
  %106 = getelementptr i8, ptr %38, i64 3
  %107 = load i8, ptr %106, align 1, !tbaa !20
  %108 = zext i8 %107 to i64
  %109 = getelementptr inbounds nuw i16, ptr %97, i64 %108
  %110 = load i16, ptr %109, align 2, !tbaa !28
  %111 = and i16 %110, 4096
  %112 = icmp eq i16 %111, 0
  br i1 %112, label %324, label %152

113:                                              ; preds = %89
  %114 = zext i8 %91 to i32
  %115 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.5, i32 %114, i64 16)
  %116 = icmp eq ptr %115, null
  br i1 %116, label %324, label %152

117:                                              ; preds = %69
  %118 = icmp sgt i32 %34, 99
  br i1 %118, label %324, label %119

119:                                              ; preds = %117
  %120 = add nsw i32 %35, 1
  %121 = getelementptr inbounds nuw i8, ptr %38, i64 1
  %122 = sext i32 %34 to i64
  %123 = getelementptr inbounds [100 x %struct.bracket_pair], ptr %7, i64 0, i64 %122
  store ptr %121, ptr %123, align 8, !tbaa !15
  %124 = getelementptr inbounds [100 x %struct.bracket_pair], ptr %7, i64 0, i64 %122, i32 1
  store i32 -1, ptr %124, align 8, !tbaa !18
  %125 = add nsw i32 %34, 1
  %126 = icmp sgt i32 %34, %4
  %127 = and i1 %29, %126
  br i1 %127, label %324, label %152

128:                                              ; preds = %69
  %129 = add nsw i32 %34, -1
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [100 x %struct.bracket_pair], ptr %7, i64 0, i64 %130, i32 1
  %132 = load i32, ptr %131, align 8, !tbaa !18
  %133 = icmp eq i32 %132, -1
  %134 = select i1 %133, i32 %129, i32 %35
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [100 x %struct.bracket_pair], ptr %7, i64 0, i64 %135
  %137 = load ptr, ptr %136, align 8, !tbaa !15
  %138 = ptrtoint ptr %38 to i64
  %139 = ptrtoint ptr %137 to i64
  %140 = sub i64 %138, %139
  %141 = trunc i64 %140 to i32
  %142 = getelementptr inbounds nuw i8, ptr %136, i64 8
  store i32 %141, ptr %142, align 8, !tbaa !18
  %143 = add nsw i32 %35, -1
  %144 = icmp slt i32 %35, 1
  br i1 %144, label %324, label %145

145:                                              ; preds = %128
  %146 = icmp sgt i32 %36, 0
  br i1 %146, label %147, label %152

147:                                              ; preds = %145
  %148 = zext nneg i32 %36 to i64
  %149 = getelementptr i8, ptr %22, i64 %148
  %150 = load i8, ptr %149, align 1, !tbaa !20
  %151 = icmp eq i8 %150, 40
  br i1 %151, label %324, label %152

152:                                              ; preds = %147, %145, %119, %113, %105, %73, %69
  %153 = phi i32 [ %85, %73 ], [ %31, %105 ], [ %31, %113 ], [ %31, %119 ], [ %31, %69 ], [ %31, %145 ], [ %31, %147 ]
  %154 = phi i32 [ %32, %73 ], [ %32, %105 ], [ %32, %113 ], [ %125, %119 ], [ %32, %69 ], [ %32, %145 ], [ %32, %147 ]
  %155 = phi i32 [ %33, %73 ], [ %33, %105 ], [ %33, %113 ], [ %125, %119 ], [ %33, %69 ], [ %33, %145 ], [ %33, %147 ]
  %156 = phi i32 [ %33, %73 ], [ %34, %105 ], [ %34, %113 ], [ %125, %119 ], [ %34, %69 ], [ %34, %145 ], [ %34, %147 ]
  %157 = phi i32 [ %70, %73 ], [ %87, %105 ], [ %87, %113 ], [ %70, %119 ], [ %70, %69 ], [ %70, %145 ], [ %70, %147 ]
  %158 = phi i32 [ %35, %73 ], [ %35, %105 ], [ %35, %113 ], [ %120, %119 ], [ %35, %69 ], [ %143, %145 ], [ %143, %147 ]
  %159 = add nsw i32 %157, %36
  %160 = icmp slt i32 %159, %20
  br i1 %160, label %30, label %161, !llvm.loop !30

161:                                              ; preds = %152
  store i32 %154, ptr %9, align 8
  store i32 %153, ptr %8, align 8
  %162 = icmp eq i32 %158, 0
  br i1 %162, label %163, label %324

163:                                              ; preds = %161
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6)
  %164 = icmp sgt i32 %153, 0
  br i1 %164, label %165, label %174

165:                                              ; preds = %163
  %166 = getelementptr inbounds nuw i8, ptr %7, i64 2408
  br label %183

167:                                              ; preds = %202
  %168 = sext i32 %203 to i64
  br label %169

169:                                              ; preds = %183, %167
  %170 = phi i64 [ %168, %167 ], [ %188, %183 ]
  %171 = phi i32 [ %203, %167 ], [ %184, %183 ]
  %172 = icmp slt i64 %187, %170
  %173 = add nuw nsw i64 %186, 1
  br i1 %172, label %183, label %174, !llvm.loop !31

174:                                              ; preds = %169, %163
  %175 = phi i32 [ %153, %163 ], [ %171, %169 ]
  %176 = icmp sgt i32 %155, 0
  br i1 %176, label %177, label %234

177:                                              ; preds = %24, %174
  %178 = phi i32 [ 0, %24 ], [ %175, %174 ]
  %179 = phi i32 [ 1, %24 ], [ %155, %174 ]
  %180 = getelementptr inbounds nuw i8, ptr %7, i64 2408
  %181 = sext i32 %178 to i64
  %182 = zext nneg i32 %179 to i64
  br label %208

183:                                              ; preds = %169, %165
  %184 = phi i32 [ %153, %165 ], [ %171, %169 ]
  %185 = phi i64 [ 0, %165 ], [ %187, %169 ]
  %186 = phi i64 [ 1, %165 ], [ %173, %169 ]
  %187 = add nuw nsw i64 %185, 1
  %188 = sext i32 %184 to i64
  %189 = icmp slt i64 %187, %188
  br i1 %189, label %190, label %169

190:                                              ; preds = %183
  %191 = getelementptr inbounds nuw [100 x %struct.branch], ptr %166, i64 0, i64 %185
  br label %192

192:                                              ; preds = %202, %190
  %193 = phi i32 [ %184, %190 ], [ %203, %202 ]
  %194 = phi i32 [ %184, %190 ], [ %204, %202 ]
  %195 = phi i64 [ %186, %190 ], [ %205, %202 ]
  %196 = load i32, ptr %191, align 8, !tbaa !23
  %197 = getelementptr inbounds nuw [100 x %struct.branch], ptr %166, i64 0, i64 %195
  %198 = load i32, ptr %197, align 8, !tbaa !23
  %199 = icmp sgt i32 %196, %198
  br i1 %199, label %200, label %202

200:                                              ; preds = %192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %191, i64 16, i1 false), !tbaa.struct !32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %191, ptr noundef nonnull align 8 dereferenceable(16) %197, i64 16, i1 false), !tbaa.struct !32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %197, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !32
  %201 = load i32, ptr %8, align 8, !tbaa !5
  br label %202

202:                                              ; preds = %200, %192
  %203 = phi i32 [ %193, %192 ], [ %201, %200 ]
  %204 = phi i32 [ %194, %192 ], [ %201, %200 ]
  %205 = add nuw nsw i64 %195, 1
  %206 = trunc nuw i64 %205 to i32
  %207 = icmp sgt i32 %204, %206
  br i1 %207, label %192, label %167, !llvm.loop !35

208:                                              ; preds = %230, %177
  %209 = phi i64 [ 0, %177 ], [ %232, %230 ]
  %210 = phi i32 [ 0, %177 ], [ %231, %230 ]
  %211 = getelementptr inbounds nuw [100 x %struct.bracket_pair], ptr %7, i64 0, i64 %209
  %212 = getelementptr inbounds nuw i8, ptr %211, i64 16
  store i32 0, ptr %212, align 8, !tbaa !36
  %213 = getelementptr inbounds nuw i8, ptr %211, i64 12
  store i32 %210, ptr %213, align 4, !tbaa !37
  %214 = icmp slt i32 %210, %178
  br i1 %214, label %215, label %230

215:                                              ; preds = %208
  %216 = sext i32 %210 to i64
  br label %217

217:                                              ; preds = %224, %215
  %218 = phi i32 [ 0, %215 ], [ %225, %224 ]
  %219 = phi i64 [ %216, %215 ], [ %226, %224 ]
  %220 = getelementptr inbounds [100 x %struct.branch], ptr %180, i64 0, i64 %219
  %221 = load i32, ptr %220, align 8, !tbaa !23
  %222 = zext i32 %221 to i64
  %223 = icmp eq i64 %209, %222
  br i1 %223, label %224, label %228

224:                                              ; preds = %217
  %225 = add nuw nsw i32 %218, 1
  store i32 %225, ptr %212, align 8, !tbaa !36
  %226 = add nsw i64 %219, 1
  %227 = icmp eq i64 %226, %181
  br i1 %227, label %230, label %217, !llvm.loop !38

228:                                              ; preds = %217
  %229 = trunc nsw i64 %219 to i32
  br label %230

230:                                              ; preds = %224, %228, %208
  %231 = phi i32 [ %210, %208 ], [ %229, %228 ], [ %178, %224 ]
  %232 = add nuw nsw i64 %209, 1
  %233 = icmp eq i64 %232, %182
  br i1 %233, label %234, label %208, !llvm.loop !39

234:                                              ; preds = %230, %174
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6)
  %235 = load ptr, ptr %7, align 8, !tbaa !15
  %236 = load i8, ptr %235, align 1, !tbaa !20
  %237 = icmp eq i8 %236, 94
  %238 = icmp slt i32 %2, 0
  br i1 %238, label %324, label %239

239:                                              ; preds = %234
  %240 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %241 = getelementptr inbounds nuw i8, ptr %7, i64 12
  %242 = getelementptr inbounds nuw i8, ptr %7, i64 2416
  %243 = zext nneg i32 %2 to i64
  %244 = load i32, ptr %240, align 8, !tbaa !36
  br label %245

245:                                              ; preds = %320, %239
  %246 = phi i32 [ %314, %320 ], [ %244, %239 ]
  %247 = phi i64 [ %321, %320 ], [ 0, %239 ]
  %248 = getelementptr inbounds nuw i8, ptr %1, i64 %247
  %249 = load ptr, ptr %7, align 8, !tbaa !15
  %250 = icmp eq i32 %246, 0
  br i1 %250, label %261, label %251

251:                                              ; preds = %245
  %252 = load i32, ptr %241, align 4, !tbaa !37
  %253 = sext i32 %252 to i64
  %254 = shl nsw i64 %253, 4
  %255 = getelementptr i8, ptr %242, i64 %254
  %256 = load ptr, ptr %255, align 8, !tbaa !25
  %257 = ptrtoint ptr %256 to i64
  %258 = ptrtoint ptr %249 to i64
  %259 = sub i64 %257, %258
  %260 = trunc i64 %259 to i32
  br label %263

261:                                              ; preds = %245
  %262 = load i32, ptr %21, align 8, !tbaa !18
  br label %263

263:                                              ; preds = %261, %251
  %264 = phi i32 [ %262, %261 ], [ %260, %251 ]
  %265 = trunc i64 %247 to i32
  %266 = sub i32 %2, %265
  %267 = call fastcc i32 @bar(ptr noundef %249, i32 noundef %264, ptr noundef %248, i32 noundef %266, ptr noundef nonnull %7, i32 noundef 0)
  %268 = icmp slt i32 %267, 1
  br i1 %268, label %269, label %317

269:                                              ; preds = %263
  %270 = load i32, ptr %240, align 8, !tbaa !36
  %271 = icmp sgt i32 %270, 0
  br i1 %271, label %272, label %313

272:                                              ; preds = %269, %309
  %273 = phi i32 [ %311, %309 ], [ %270, %269 ]
  %274 = phi i32 [ %310, %309 ], [ 1, %269 ]
  %275 = load i32, ptr %241, align 4, !tbaa !37
  %276 = add i32 %275, %274
  %277 = add i32 %276, -1
  %278 = sext i32 %277 to i64
  %279 = shl nsw i64 %278, 4
  %280 = getelementptr i8, ptr %242, i64 %279
  %281 = load ptr, ptr %280, align 8, !tbaa !25
  %282 = getelementptr inbounds nuw i8, ptr %281, i64 1
  %283 = icmp eq i32 %273, 0
  br i1 %283, label %284, label %287

284:                                              ; preds = %272
  %285 = load i32, ptr %21, align 8, !tbaa !18
  %286 = zext i32 %285 to i64
  br label %304

287:                                              ; preds = %272
  %288 = icmp eq i32 %274, %273
  %289 = ptrtoint ptr %282 to i64
  br i1 %288, label %290, label %297

290:                                              ; preds = %287
  %291 = load ptr, ptr %7, align 8, !tbaa !15
  %292 = load i32, ptr %21, align 8, !tbaa !18
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i8, ptr %291, i64 %293
  %295 = ptrtoint ptr %294 to i64
  %296 = sub i64 %295, %289
  br label %304

297:                                              ; preds = %287
  %298 = sext i32 %276 to i64
  %299 = shl nsw i64 %298, 4
  %300 = getelementptr i8, ptr %242, i64 %299
  %301 = load ptr, ptr %300, align 8, !tbaa !25
  %302 = ptrtoint ptr %301 to i64
  %303 = sub i64 %302, %289
  br label %304

304:                                              ; preds = %297, %290, %284
  %305 = phi i64 [ %286, %284 ], [ %296, %290 ], [ %303, %297 ]
  %306 = trunc i64 %305 to i32
  %307 = call fastcc i32 @bar(ptr noundef nonnull %282, i32 noundef %306, ptr noundef %248, i32 noundef %266, ptr noundef nonnull %7, i32 noundef 0)
  %308 = icmp slt i32 %307, 1
  br i1 %308, label %309, label %317

309:                                              ; preds = %304
  %310 = add nuw nsw i32 %274, 1
  %311 = load i32, ptr %240, align 8, !tbaa !36
  %312 = icmp slt i32 %274, %311
  br i1 %312, label %272, label %313, !llvm.loop !40

313:                                              ; preds = %309, %269
  %314 = phi i32 [ %270, %269 ], [ %311, %309 ]
  %315 = phi i32 [ %267, %269 ], [ %307, %309 ]
  %316 = icmp sgt i32 %315, -1
  br i1 %316, label %317, label %320

317:                                              ; preds = %313, %263, %304
  %318 = phi i32 [ %307, %304 ], [ %267, %263 ], [ 0, %313 ]
  %319 = add nuw nsw i32 %318, %265
  br label %324

320:                                              ; preds = %313
  %321 = add nuw nsw i64 %247, 1
  %322 = icmp samesign uge i64 %247, %243
  %323 = select i1 %237, i1 true, i1 %322
  br i1 %323, label %324, label %245, !llvm.loop !42

324:                                              ; preds = %71, %86, %93, %95, %105, %113, %117, %119, %128, %147, %320, %161, %234, %317
  %325 = phi i32 [ -3, %161 ], [ %319, %317 ], [ -1, %234 ], [ %315, %320 ], [ -8, %71 ], [ -6, %86 ], [ -6, %93 ], [ -6, %105 ], [ -6, %95 ], [ -6, %113 ], [ -9, %117 ], [ -7, %119 ], [ -1, %147 ], [ -3, %128 ]
  call void @llvm.lifetime.end.p0(i64 4032, ptr nonnull %7) #12
  ret i32 %325
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @initialise_benchmark() local_unnamed_addr #3 {
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @warm_caches(i32 noundef %0) local_unnamed_addr #4 {
  %2 = tail call fastcc i32 @benchmark_body(i32 noundef 1, i32 noundef %0)
  ret void
}

; Function Attrs: nofree noinline nounwind uwtable
define internal fastcc i32 @benchmark_body(i32 noundef range(i32 1, 117) %0, i32 noundef %1) unnamed_addr #5 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.slre_cap, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3)
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %33, label %6

6:                                                ; preds = %2, %30
  %7 = phi i32 [ %31, %30 ], [ 0, %2 ]
  br label %8

8:                                                ; preds = %6, %8
  %9 = phi i32 [ 0, %6 ], [ %28, %8 ]
  %10 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) @text) #13
  %11 = trunc i64 %10 to i32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #12
  store volatile i32 0, ptr %3, align 4, !tbaa !33
  %12 = load ptr, ptr @regexes, align 16, !tbaa !34
  %13 = call i32 @slre_match(ptr noundef %12, ptr noundef nonnull @text, i32 noundef %11, ptr noundef nonnull %4, i32 noundef 1)
  %14 = load volatile i32, ptr %3, align 4, !tbaa !33
  %15 = add nsw i32 %14, %13
  store volatile i32 %15, ptr %3, align 4, !tbaa !33
  %16 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @regexes, i64 8), align 8, !tbaa !34
  %17 = call i32 @slre_match(ptr noundef %16, ptr noundef nonnull @text, i32 noundef %11, ptr noundef nonnull %4, i32 noundef 1)
  %18 = load volatile i32, ptr %3, align 4, !tbaa !33
  %19 = add nsw i32 %18, %17
  store volatile i32 %19, ptr %3, align 4, !tbaa !33
  %20 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @regexes, i64 16), align 16, !tbaa !34
  %21 = call i32 @slre_match(ptr noundef %20, ptr noundef nonnull @text, i32 noundef %11, ptr noundef nonnull %4, i32 noundef 1)
  %22 = load volatile i32, ptr %3, align 4, !tbaa !33
  %23 = add nsw i32 %22, %21
  store volatile i32 %23, ptr %3, align 4, !tbaa !33
  %24 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @regexes, i64 24), align 8, !tbaa !34
  %25 = call i32 @slre_match(ptr noundef %24, ptr noundef nonnull @text, i32 noundef %11, ptr noundef nonnull %4, i32 noundef 1)
  %26 = load volatile i32, ptr %3, align 4, !tbaa !33
  %27 = add nsw i32 %26, %25
  store volatile i32 %27, ptr %3, align 4, !tbaa !33
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #12
  %28 = add nuw i32 %9, 1
  %29 = icmp eq i32 %28, %1
  br i1 %29, label %30, label %8, !llvm.loop !43

30:                                               ; preds = %8
  %31 = add nuw nsw i32 %7, 1
  %32 = icmp eq i32 %31, %0
  br i1 %32, label %33, label %6, !llvm.loop !44

33:                                               ; preds = %30, %2
  %34 = load volatile i32, ptr %3, align 4, !tbaa !33
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3)
  ret i32 %34
}

; Function Attrs: nofree noinline nounwind uwtable
define dso_local i32 @benchmark() local_unnamed_addr #5 {
  %1 = tail call fastcc i32 @benchmark_body(i32 noundef 116, i32 noundef 20)
  ret i32 %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 0, 2) i32 @verify_benchmark(i32 noundef %0) local_unnamed_addr #3 {
  %2 = icmp eq i32 %0, 102
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @bar(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull %4, i32 noundef %5) unnamed_addr #8 {
  %7 = icmp sgt i32 %1, 0
  %8 = icmp sgt i32 %3, -1
  %9 = and i1 %7, %8
  br i1 %9, label %10, label %490

10:                                               ; preds = %6
  %11 = getelementptr inbounds nuw i8, ptr %4, i64 2400
  %12 = getelementptr i8, ptr %4, i64 2416
  %13 = getelementptr inbounds nuw i8, ptr %4, i64 4016
  %14 = add nsw i32 %1, -2
  %15 = getelementptr inbounds nuw i8, ptr %4, i64 4028
  %16 = add nuw i32 %3, 1
  br label %17

17:                                               ; preds = %10, %482
  %18 = phi i32 [ 0, %10 ], [ %486, %482 ]
  %19 = phi i32 [ %5, %10 ], [ %485, %482 ]
  %20 = phi i32 [ 0, %10 ], [ %483, %482 ]
  %21 = phi i32 [ 0, %10 ], [ %484, %482 ]
  %22 = zext nneg i32 %20 to i64
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 %22
  %24 = load i8, ptr %23, align 1, !tbaa !20
  %25 = icmp eq i8 %24, 40
  br i1 %25, label %26, label %32

26:                                               ; preds = %17
  %27 = add nsw i32 %19, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [100 x %struct.bracket_pair], ptr %4, i64 0, i64 %28, i32 1
  %30 = load i32, ptr %29, align 8, !tbaa !18
  %31 = add nsw i32 %30, 2
  br label %64

32:                                               ; preds = %17
  %33 = sub nsw i32 %1, %20
  switch i8 %24, label %62 [
    i8 91, label %34
    i8 92, label %57
  ]

34:                                               ; preds = %32
  %35 = getelementptr inbounds nuw i8, ptr %23, i64 1
  %36 = add nsw i32 %33, -1
  %37 = icmp sgt i32 %33, 1
  br i1 %37, label %38, label %52

38:                                               ; preds = %34, %48
  %39 = phi i32 [ %50, %48 ], [ 0, %34 ]
  %40 = zext nneg i32 %39 to i64
  %41 = getelementptr inbounds nuw i8, ptr %35, i64 %40
  %42 = load i8, ptr %41, align 1, !tbaa !20
  switch i8 %42, label %48 [
    i8 93, label %52
    i8 92, label %43
  ]

43:                                               ; preds = %38
  %44 = getelementptr inbounds nuw i8, ptr %41, i64 1
  %45 = load i8, ptr %44, align 1, !tbaa !20
  %46 = icmp eq i8 %45, 120
  %47 = select i1 %46, i32 4, i32 2
  br label %48

48:                                               ; preds = %43, %38
  %49 = phi i32 [ %47, %43 ], [ 1, %38 ]
  %50 = add nuw nsw i32 %49, %39
  %51 = icmp slt i32 %50, %36
  br i1 %51, label %38, label %52, !llvm.loop !21

52:                                               ; preds = %48, %38, %34
  %53 = phi i32 [ 0, %34 ], [ %39, %38 ], [ %50, %48 ]
  %54 = icmp slt i32 %53, %33
  %55 = add nsw i32 %53, 2
  %56 = select i1 %54, i32 %55, i32 0
  br label %62

57:                                               ; preds = %32
  %58 = getelementptr inbounds nuw i8, ptr %23, i64 1
  %59 = load i8, ptr %58, align 1, !tbaa !20
  %60 = icmp eq i8 %59, 120
  %61 = select i1 %60, i32 4, i32 2
  br label %67

62:                                               ; preds = %52, %32
  %63 = phi i32 [ %56, %52 ], [ 1, %32 ]
  switch i8 %24, label %64 [
    i8 63, label %490
    i8 43, label %490
    i8 42, label %490
  ]

64:                                               ; preds = %26, %62
  %65 = phi i32 [ %63, %62 ], [ %31, %26 ]
  %66 = icmp slt i32 %65, 1
  br i1 %66, label %490, label %67

67:                                               ; preds = %57, %64
  %68 = phi i32 [ %61, %57 ], [ %65, %64 ]
  %69 = add nuw nsw i32 %68, %20
  %70 = icmp slt i32 %69, %1
  br i1 %70, label %71, label %189

71:                                               ; preds = %67
  %72 = zext nneg i32 %68 to i64
  %73 = getelementptr inbounds nuw i8, ptr %23, i64 %72
  %74 = load i8, ptr %73, align 1, !tbaa !20
  switch i8 %74, label %189 [
    i8 63, label %75
    i8 43, label %75
    i8 42, label %75
  ]

75:                                               ; preds = %71, %71, %71
  %76 = zext nneg i32 %69 to i64
  %77 = getelementptr inbounds nuw i8, ptr %0, i64 %76
  %78 = load i8, ptr %77, align 1, !tbaa !20
  switch i8 %78, label %482 [
    i8 63, label %79
    i8 43, label %88
    i8 42, label %88
  ]

79:                                               ; preds = %75
  %80 = sext i32 %21 to i64
  %81 = getelementptr inbounds i8, ptr %2, i64 %80
  %82 = sub nsw i32 %3, %21
  %83 = tail call fastcc i32 @bar(ptr noundef nonnull %23, i32 noundef %68, ptr noundef %81, i32 noundef %82, ptr noundef %4, i32 noundef %19)
  %84 = tail call i32 @llvm.smax.i32(i32 %83, i32 0)
  %85 = add nsw i32 %84, %21
  %86 = add nuw nsw i32 %20, 1
  %87 = add nuw nsw i32 %86, %68
  br label %482

88:                                               ; preds = %75, %75
  %89 = getelementptr inbounds nuw i8, ptr %0, i64 %76
  %90 = add nuw nsw i32 %69, 1
  %91 = icmp slt i32 %90, %1
  br i1 %91, label %92, label %99

92:                                               ; preds = %88
  %93 = zext nneg i32 %90 to i64
  %94 = getelementptr inbounds nuw i8, ptr %0, i64 %93
  %95 = load i8, ptr %94, align 1, !tbaa !20
  %96 = icmp ne i8 %95, 63
  %97 = add nuw nsw i32 %69, 2
  %98 = select i1 %96, i32 %90, i32 %97
  br label %99

99:                                               ; preds = %92, %88
  %100 = phi i32 [ %90, %88 ], [ %98, %92 ]
  %101 = phi i1 [ true, %88 ], [ %96, %92 ]
  %102 = freeze i32 %100
  %103 = icmp slt i32 %102, %1
  %104 = zext nneg i32 %102 to i64
  %105 = getelementptr inbounds nuw i8, ptr %0, i64 %104
  %106 = sub nsw i32 %1, %102
  br i1 %103, label %107, label %143

107:                                              ; preds = %99
  %108 = sext i32 %21 to i64
  %109 = getelementptr inbounds i8, ptr %2, i64 %108
  %110 = sub nsw i32 %3, %21
  %111 = tail call fastcc i32 @bar(ptr noundef nonnull %23, i32 noundef %68, ptr noundef %109, i32 noundef %110, ptr noundef %4, i32 noundef %19)
  %112 = load i8, ptr %89, align 1, !tbaa !20
  %113 = icmp eq i8 %112, 43
  %114 = icmp slt i32 %111, 0
  %115 = and i1 %114, %113
  br i1 %115, label %177, label %125

116:                                              ; preds = %125
  %117 = sext i32 %131 to i64
  %118 = getelementptr inbounds i8, ptr %2, i64 %117
  %119 = sub nsw i32 %3, %131
  %120 = tail call fastcc i32 @bar(ptr noundef nonnull %23, i32 noundef %68, ptr noundef %118, i32 noundef %119, ptr noundef %4, i32 noundef %19)
  %121 = load i8, ptr %89, align 1, !tbaa !20
  %122 = icmp eq i8 %121, 43
  %123 = icmp slt i32 %120, 0
  %124 = and i1 %123, %122
  br i1 %124, label %177, label %125, !llvm.loop !45

125:                                              ; preds = %107, %116
  %126 = phi i1 [ %123, %116 ], [ %114, %107 ]
  %127 = phi i32 [ %120, %116 ], [ %111, %107 ]
  %128 = phi i32 [ %139, %116 ], [ %21, %107 ]
  %129 = phi i32 [ %131, %116 ], [ %21, %107 ]
  %130 = tail call i32 @llvm.smax.i32(i32 %127, i32 0)
  %131 = add nsw i32 %130, %129
  %132 = icmp sgt i32 %127, 0
  %133 = sext i32 %131 to i64
  %134 = getelementptr inbounds i8, ptr %2, i64 %133
  %135 = sub nsw i32 %3, %131
  %136 = tail call fastcc i32 @bar(ptr noundef nonnull %105, i32 noundef %106, ptr noundef %134, i32 noundef %135, ptr noundef %4, i32 noundef %19)
  %137 = add nsw i32 %136, %131
  %138 = icmp slt i32 %136, 0
  %139 = select i1 %138, i32 %128, i32 %137
  %140 = icmp sle i32 %139, %21
  %141 = or i1 %101, %140
  %142 = and i1 %132, %141
  br i1 %142, label %116, label %160, !llvm.loop !45

143:                                              ; preds = %99, %153
  %144 = phi i32 [ %155, %153 ], [ %21, %99 ]
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8, ptr %2, i64 %145
  %147 = sub nsw i32 %3, %144
  %148 = tail call fastcc i32 @bar(ptr noundef nonnull %23, i32 noundef %68, ptr noundef %146, i32 noundef %147, ptr noundef %4, i32 noundef %19)
  %149 = load i8, ptr %89, align 1, !tbaa !20
  %150 = icmp eq i8 %149, 43
  %151 = icmp slt i32 %148, 0
  %152 = and i1 %151, %150
  br i1 %152, label %177, label %153

153:                                              ; preds = %143
  %154 = tail call i32 @llvm.smax.i32(i32 %148, i32 0)
  %155 = add nsw i32 %154, %144
  %156 = icmp sgt i32 %148, 0
  %157 = icmp sle i32 %155, %21
  %158 = or i1 %101, %157
  %159 = and i1 %156, %158
  br i1 %159, label %143, label %162, !llvm.loop !45

160:                                              ; preds = %125
  %161 = load i8, ptr %89, align 1, !tbaa !20
  br i1 %126, label %163, label %177

162:                                              ; preds = %153
  br i1 %151, label %163, label %177

163:                                              ; preds = %160, %162
  %164 = phi i32 [ %136, %160 ], [ -1, %162 ]
  %165 = phi i32 [ %139, %160 ], [ %155, %162 ]
  %166 = phi i8 [ %161, %160 ], [ %149, %162 ]
  %167 = icmp eq i8 %166, 42
  br i1 %167, label %168, label %177

168:                                              ; preds = %163
  %169 = sext i32 %21 to i64
  %170 = getelementptr inbounds i8, ptr %2, i64 %169
  %171 = sub nsw i32 %3, %21
  %172 = tail call fastcc i32 @bar(ptr noundef nonnull %105, i32 noundef %106, ptr noundef %170, i32 noundef %171, ptr noundef %4, i32 noundef %19)
  %173 = icmp sgt i32 %172, 0
  %174 = add nsw i32 %172, %21
  %175 = select i1 %173, i32 %174, i32 %165
  %176 = load i8, ptr %89, align 1, !tbaa !20
  br label %177

177:                                              ; preds = %143, %116, %107, %160, %168, %163, %162
  %178 = phi i8 [ %166, %163 ], [ %149, %162 ], [ %176, %168 ], [ %161, %160 ], [ 43, %107 ], [ 43, %116 ], [ 43, %143 ]
  %179 = phi i32 [ %165, %163 ], [ %155, %162 ], [ %175, %168 ], [ %139, %160 ], [ %21, %107 ], [ %139, %116 ], [ %144, %143 ]
  %180 = phi i32 [ %164, %163 ], [ -1, %162 ], [ %172, %168 ], [ %136, %160 ], [ -1, %107 ], [ %136, %116 ], [ -1, %143 ]
  %181 = icmp eq i8 %178, 43
  %182 = icmp eq i32 %179, %21
  %183 = select i1 %181, i1 %182, i1 false
  br i1 %183, label %490, label %184

184:                                              ; preds = %177
  %185 = icmp slt i32 %180, 0
  %186 = and i1 %182, %103
  %187 = select i1 %186, i1 %185, i1 false
  %188 = select i1 %187, i32 -1, i32 %179
  br label %490

189:                                              ; preds = %71, %67
  switch i8 %24, label %473 [
    i8 91, label %190
    i8 40, label %275
    i8 94, label %469
    i8 36, label %471
  ]

190:                                              ; preds = %189
  %191 = getelementptr inbounds nuw i8, ptr %23, i64 1
  %192 = sext i32 %21 to i64
  %193 = getelementptr inbounds i8, ptr %2, i64 %192
  %194 = load i8, ptr %191, align 1, !tbaa !20
  %195 = icmp eq i8 %194, 94
  %196 = sext i1 %195 to i32
  %197 = sub i32 %14, %20
  %198 = add nsw i32 %197, %196
  %199 = zext i1 %195 to i64
  %200 = getelementptr inbounds nuw i8, ptr %191, i64 %199
  %201 = icmp slt i32 %198, 0
  br i1 %201, label %266, label %202

202:                                              ; preds = %190, %259
  %203 = phi i32 [ %261, %259 ], [ 0, %190 ]
  %204 = phi i32 [ %260, %259 ], [ -1, %190 ]
  %205 = sext i32 %203 to i64
  %206 = getelementptr inbounds i8, ptr %200, i64 %205
  %207 = load i8, ptr %206, align 1, !tbaa !20
  %208 = icmp ne i8 %207, 93
  %209 = icmp slt i32 %204, 1
  %210 = select i1 %208, i1 %209, i1 false
  br i1 %210, label %211, label %263

211:                                              ; preds = %202
  %212 = icmp eq i8 %207, 45
  br i1 %212, label %213, label %215

213:                                              ; preds = %211
  %214 = tail call fastcc i32 @match_op(ptr noundef nonnull readonly %206, ptr noundef readonly %193, ptr noundef nonnull readonly %4)
  br label %255

215:                                              ; preds = %211
  %216 = getelementptr i8, ptr %206, i64 1
  %217 = load i8, ptr %216, align 1, !tbaa !20
  %218 = icmp eq i8 %217, 45
  br i1 %218, label %219, label %249

219:                                              ; preds = %215
  %220 = getelementptr i8, ptr %206, i64 2
  %221 = load i8, ptr %220, align 1, !tbaa !20
  switch i8 %221, label %222 [
    i8 93, label %249
    i8 0, label %249
  ]

222:                                              ; preds = %219
  %223 = load i32, ptr %15, align 4, !tbaa !12
  %224 = icmp eq i32 %223, 0
  %225 = load i8, ptr %193, align 1, !tbaa !20
  br i1 %224, label %230, label %226

226:                                              ; preds = %222
  %227 = icmp sge i8 %225, %207
  %228 = icmp sle i8 %225, %221
  %229 = and i1 %227, %228
  br label %245

230:                                              ; preds = %222
  %231 = tail call ptr @__ctype_tolower_loc() #14
  %232 = load ptr, ptr %231, align 8, !tbaa !46
  %233 = sext i8 %225 to i64
  %234 = getelementptr inbounds i32, ptr %232, i64 %233
  %235 = load i32, ptr %234, align 4, !tbaa !33
  %236 = sext i8 %207 to i64
  %237 = getelementptr inbounds i32, ptr %232, i64 %236
  %238 = load i32, ptr %237, align 4, !tbaa !33
  %239 = icmp slt i32 %235, %238
  br i1 %239, label %245, label %240

240:                                              ; preds = %230
  %241 = sext i8 %221 to i64
  %242 = getelementptr inbounds i32, ptr %232, i64 %241
  %243 = load i32, ptr %242, align 4, !tbaa !33
  %244 = icmp sle i32 %235, %243
  br label %245

245:                                              ; preds = %240, %230, %226
  %246 = phi i1 [ %229, %226 ], [ false, %230 ], [ %244, %240 ]
  %247 = zext i1 %246 to i32
  %248 = add nsw i32 %203, 3
  br label %259

249:                                              ; preds = %219, %219, %215
  %250 = tail call fastcc i32 @match_op(ptr noundef nonnull readonly %206, ptr noundef readonly %193, ptr noundef nonnull readonly %4)
  %251 = icmp eq i8 %207, 92
  br i1 %251, label %252, label %255

252:                                              ; preds = %249
  %253 = icmp eq i8 %217, 120
  %254 = select i1 %253, i32 4, i32 2
  br label %255

255:                                              ; preds = %252, %249, %213
  %256 = phi i32 [ %250, %249 ], [ %250, %252 ], [ %214, %213 ]
  %257 = phi i32 [ 1, %249 ], [ %254, %252 ], [ 1, %213 ]
  %258 = add nsw i32 %257, %203
  br label %259

259:                                              ; preds = %255, %245
  %260 = phi i32 [ %247, %245 ], [ %256, %255 ]
  %261 = phi i32 [ %248, %245 ], [ %258, %255 ]
  %262 = icmp sgt i32 %261, %198
  br i1 %262, label %263, label %202, !llvm.loop !48

263:                                              ; preds = %259, %202
  %264 = phi i32 [ %260, %259 ], [ %204, %202 ]
  %265 = icmp slt i32 %264, 1
  br label %266

266:                                              ; preds = %190, %263
  %267 = phi i1 [ true, %190 ], [ %265, %263 ]
  %268 = select i1 %195, i1 true, i1 %267
  %269 = select i1 %195, i1 %267, i1 false
  %270 = select i1 %269, i32 1, i32 -1
  %271 = select i1 %268, i32 %270, i32 1
  %272 = icmp slt i32 %271, 1
  br i1 %272, label %490, label %273

273:                                              ; preds = %266
  %274 = add nsw i32 %271, %21
  br label %482

275:                                              ; preds = %189
  %276 = add nsw i32 %19, 1
  %277 = load i32, ptr %11, align 8, !tbaa !19
  %278 = icmp slt i32 %276, %277
  br i1 %278, label %279, label %490

279:                                              ; preds = %275
  %280 = sub nsw i32 %1, %69
  %281 = icmp slt i32 %280, 1
  br i1 %281, label %296, label %282

282:                                              ; preds = %279
  %283 = icmp slt i32 %3, %21
  br i1 %283, label %490, label %284

284:                                              ; preds = %282
  %285 = sext i32 %21 to i64
  %286 = getelementptr inbounds i8, ptr %2, i64 %285
  %287 = add i32 %18, %3
  %288 = sext i32 %276 to i64
  %289 = getelementptr inbounds [100 x %struct.bracket_pair], ptr %4, i64 0, i64 %288
  %290 = getelementptr inbounds nuw i8, ptr %289, i64 16
  %291 = getelementptr inbounds nuw i8, ptr %289, i64 12
  %292 = getelementptr inbounds nuw i8, ptr %289, i64 8
  %293 = zext nneg i32 %68 to i64
  %294 = getelementptr inbounds nuw i8, ptr %23, i64 %293
  %295 = sub i32 %16, %21
  br label %371

296:                                              ; preds = %279
  %297 = sext i32 %21 to i64
  %298 = getelementptr inbounds i8, ptr %2, i64 %297
  %299 = sub nsw i32 %3, %21
  %300 = sext i32 %276 to i64
  %301 = getelementptr inbounds [100 x %struct.bracket_pair], ptr %4, i64 0, i64 %300
  %302 = getelementptr inbounds nuw i8, ptr %301, i64 16
  %303 = getelementptr inbounds nuw i8, ptr %301, i64 12
  %304 = getelementptr inbounds nuw i8, ptr %301, i64 8
  %305 = load ptr, ptr %301, align 8, !tbaa !15
  %306 = load i32, ptr %302, align 8, !tbaa !36
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %318, label %308

308:                                              ; preds = %296
  %309 = load i32, ptr %303, align 4, !tbaa !37
  %310 = sext i32 %309 to i64
  %311 = shl nsw i64 %310, 4
  %312 = getelementptr i8, ptr %12, i64 %311
  %313 = load ptr, ptr %312, align 8, !tbaa !25
  %314 = ptrtoint ptr %313 to i64
  %315 = ptrtoint ptr %305 to i64
  %316 = sub i64 %314, %315
  %317 = trunc i64 %316 to i32
  br label %320

318:                                              ; preds = %296
  %319 = load i32, ptr %304, align 8, !tbaa !18
  br label %320

320:                                              ; preds = %318, %308
  %321 = phi i32 [ %319, %318 ], [ %317, %308 ]
  %322 = tail call fastcc i32 @bar(ptr noundef %305, i32 noundef %321, ptr noundef %298, i32 noundef %299, ptr noundef nonnull %4, i32 noundef range(i32 -2147483647, -2147483648) %276)
  %323 = icmp slt i32 %322, 1
  br i1 %323, label %324, label %457

324:                                              ; preds = %320
  %325 = load i32, ptr %302, align 8, !tbaa !36
  %326 = icmp sgt i32 %325, 0
  br i1 %326, label %327, label %454

327:                                              ; preds = %324, %367
  %328 = phi i32 [ %369, %367 ], [ %325, %324 ]
  %329 = phi i32 [ %368, %367 ], [ 1, %324 ]
  %330 = load i32, ptr %303, align 4, !tbaa !37
  %331 = add nsw i32 %329, -1
  %332 = add i32 %331, %330
  %333 = sext i32 %332 to i64
  %334 = shl nsw i64 %333, 4
  %335 = getelementptr i8, ptr %12, i64 %334
  %336 = load ptr, ptr %335, align 8, !tbaa !25
  %337 = getelementptr inbounds nuw i8, ptr %336, i64 1
  %338 = icmp eq i32 %328, 0
  br i1 %338, label %339, label %342

339:                                              ; preds = %327
  %340 = load i32, ptr %304, align 8, !tbaa !18
  %341 = zext i32 %340 to i64
  br label %362

342:                                              ; preds = %327
  %343 = icmp eq i32 %329, %328
  br i1 %343, label %344, label %352

344:                                              ; preds = %342
  %345 = load ptr, ptr %301, align 8, !tbaa !15
  %346 = load i32, ptr %304, align 8, !tbaa !18
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds i8, ptr %345, i64 %347
  %349 = ptrtoint ptr %348 to i64
  %350 = ptrtoint ptr %337 to i64
  %351 = sub i64 %349, %350
  br label %362

352:                                              ; preds = %342
  %353 = load i32, ptr %303, align 4, !tbaa !37
  %354 = add nsw i32 %353, %329
  %355 = sext i32 %354 to i64
  %356 = shl nsw i64 %355, 4
  %357 = getelementptr i8, ptr %12, i64 %356
  %358 = load ptr, ptr %357, align 8, !tbaa !25
  %359 = ptrtoint ptr %358 to i64
  %360 = ptrtoint ptr %337 to i64
  %361 = sub i64 %359, %360
  br label %362

362:                                              ; preds = %352, %344, %339
  %363 = phi i64 [ %341, %339 ], [ %351, %344 ], [ %361, %352 ]
  %364 = trunc i64 %363 to i32
  %365 = tail call fastcc i32 @bar(ptr noundef nonnull %337, i32 noundef %364, ptr noundef %298, i32 noundef %299, ptr noundef nonnull %4, i32 noundef range(i32 -2147483647, -2147483648) %276)
  %366 = icmp slt i32 %365, 1
  br i1 %366, label %367, label %457

367:                                              ; preds = %362
  %368 = add nuw nsw i32 %329, 1
  %369 = load i32, ptr %302, align 8, !tbaa !36
  %370 = icmp slt i32 %329, %369
  br i1 %370, label %327, label %454, !llvm.loop !49

371:                                              ; preds = %284, %450
  %372 = phi i32 [ 0, %284 ], [ %452, %450 ]
  %373 = sub i32 %287, %372
  %374 = load ptr, ptr %289, align 8, !tbaa !15
  %375 = load i32, ptr %290, align 8, !tbaa !36
  %376 = icmp eq i32 %375, 0
  br i1 %376, label %387, label %377

377:                                              ; preds = %371
  %378 = load i32, ptr %291, align 4, !tbaa !37
  %379 = sext i32 %378 to i64
  %380 = shl nsw i64 %379, 4
  %381 = getelementptr i8, ptr %12, i64 %380
  %382 = load ptr, ptr %381, align 8, !tbaa !25
  %383 = ptrtoint ptr %382 to i64
  %384 = ptrtoint ptr %374 to i64
  %385 = sub i64 %383, %384
  %386 = trunc i64 %385 to i32
  br label %389

387:                                              ; preds = %371
  %388 = load i32, ptr %292, align 8, !tbaa !18
  br label %389

389:                                              ; preds = %387, %377
  %390 = phi i32 [ %388, %387 ], [ %386, %377 ]
  %391 = tail call fastcc i32 @bar(ptr noundef %374, i32 noundef %390, ptr noundef %286, i32 noundef %373, ptr noundef nonnull %4, i32 noundef range(i32 -2147483647, -2147483648) %276)
  %392 = icmp slt i32 %391, 1
  br i1 %392, label %393, label %443

393:                                              ; preds = %389
  %394 = load i32, ptr %290, align 8, !tbaa !36
  %395 = icmp sgt i32 %394, 0
  br i1 %395, label %396, label %440

396:                                              ; preds = %393, %436
  %397 = phi i32 [ %438, %436 ], [ %394, %393 ]
  %398 = phi i32 [ %437, %436 ], [ 1, %393 ]
  %399 = load i32, ptr %291, align 4, !tbaa !37
  %400 = add nsw i32 %398, -1
  %401 = add i32 %400, %399
  %402 = sext i32 %401 to i64
  %403 = shl nsw i64 %402, 4
  %404 = getelementptr i8, ptr %12, i64 %403
  %405 = load ptr, ptr %404, align 8, !tbaa !25
  %406 = getelementptr inbounds nuw i8, ptr %405, i64 1
  %407 = icmp eq i32 %397, 0
  br i1 %407, label %408, label %411

408:                                              ; preds = %396
  %409 = load i32, ptr %292, align 8, !tbaa !18
  %410 = zext i32 %409 to i64
  br label %431

411:                                              ; preds = %396
  %412 = icmp eq i32 %398, %397
  br i1 %412, label %413, label %421

413:                                              ; preds = %411
  %414 = load ptr, ptr %289, align 8, !tbaa !15
  %415 = load i32, ptr %292, align 8, !tbaa !18
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds i8, ptr %414, i64 %416
  %418 = ptrtoint ptr %417 to i64
  %419 = ptrtoint ptr %406 to i64
  %420 = sub i64 %418, %419
  br label %431

421:                                              ; preds = %411
  %422 = load i32, ptr %291, align 4, !tbaa !37
  %423 = add nsw i32 %422, %398
  %424 = sext i32 %423 to i64
  %425 = shl nsw i64 %424, 4
  %426 = getelementptr i8, ptr %12, i64 %425
  %427 = load ptr, ptr %426, align 8, !tbaa !25
  %428 = ptrtoint ptr %427 to i64
  %429 = ptrtoint ptr %406 to i64
  %430 = sub i64 %428, %429
  br label %431

431:                                              ; preds = %421, %413, %408
  %432 = phi i64 [ %410, %408 ], [ %420, %413 ], [ %430, %421 ]
  %433 = trunc i64 %432 to i32
  %434 = tail call fastcc i32 @bar(ptr noundef nonnull %406, i32 noundef %433, ptr noundef %286, i32 noundef %373, ptr noundef nonnull %4, i32 noundef range(i32 -2147483647, -2147483648) %276)
  %435 = icmp slt i32 %434, 1
  br i1 %435, label %436, label %443

436:                                              ; preds = %431
  %437 = add nuw nsw i32 %398, 1
  %438 = load i32, ptr %290, align 8, !tbaa !36
  %439 = icmp slt i32 %398, %438
  br i1 %439, label %396, label %440, !llvm.loop !50

440:                                              ; preds = %436, %393
  %441 = phi i32 [ %391, %393 ], [ %434, %436 ]
  %442 = icmp sgt i32 %441, -1
  br i1 %442, label %443, label %450

443:                                              ; preds = %431, %389, %440
  %444 = phi i32 [ 0, %440 ], [ %391, %389 ], [ %434, %431 ]
  %445 = zext nneg i32 %444 to i64
  %446 = getelementptr inbounds nuw i8, ptr %286, i64 %445
  %447 = sub i32 %287, %444
  %448 = tail call fastcc i32 @bar(ptr noundef nonnull %294, i32 noundef %280, ptr noundef %446, i32 noundef %447, ptr noundef %4, i32 noundef %276)
  %449 = icmp sgt i32 %448, -1
  br i1 %449, label %457, label %450

450:                                              ; preds = %440, %443
  %451 = phi i32 [ %441, %440 ], [ %444, %443 ]
  %452 = add nuw i32 %372, 1
  %453 = icmp eq i32 %452, %295
  br i1 %453, label %454, label %371, !llvm.loop !51

454:                                              ; preds = %450, %367, %324
  %455 = phi i32 [ %322, %324 ], [ %365, %367 ], [ %451, %450 ]
  %456 = icmp slt i32 %455, 0
  br i1 %456, label %490, label %457

457:                                              ; preds = %443, %362, %320, %454
  %458 = phi i32 [ %455, %454 ], [ %322, %320 ], [ %365, %362 ], [ %444, %443 ]
  %459 = load ptr, ptr %13, align 8, !tbaa !14
  %460 = icmp eq ptr %459, null
  br i1 %460, label %467, label %461

461:                                              ; preds = %457
  %462 = sext i32 %21 to i64
  %463 = getelementptr inbounds i8, ptr %2, i64 %462
  %464 = sext i32 %19 to i64
  %465 = getelementptr inbounds %struct.slre_cap, ptr %459, i64 %464
  store ptr %463, ptr %465, align 8, !tbaa !52
  %466 = getelementptr inbounds %struct.slre_cap, ptr %459, i64 %464, i32 1
  store i32 %458, ptr %466, align 8, !tbaa !54
  br label %467

467:                                              ; preds = %461, %457
  %468 = add nsw i32 %458, %21
  br label %482

469:                                              ; preds = %189
  %470 = icmp eq i32 %21, 0
  br i1 %470, label %482, label %490

471:                                              ; preds = %189
  %472 = icmp eq i32 %21, %3
  br i1 %472, label %482, label %490

473:                                              ; preds = %189
  %474 = icmp slt i32 %21, %3
  br i1 %474, label %475, label %490

475:                                              ; preds = %473
  %476 = sext i32 %21 to i64
  %477 = getelementptr inbounds i8, ptr %2, i64 %476
  %478 = tail call fastcc i32 @match_op(ptr noundef nonnull %23, ptr noundef %477, ptr noundef %4)
  %479 = icmp slt i32 %478, 1
  br i1 %479, label %490, label %480

480:                                              ; preds = %475
  %481 = add nsw i32 %478, %21
  br label %482

482:                                              ; preds = %75, %273, %469, %471, %480, %467, %79
  %483 = phi i32 [ %69, %75 ], [ %69, %273 ], [ %69, %469 ], [ %69, %471 ], [ %69, %480 ], [ %69, %467 ], [ %87, %79 ]
  %484 = phi i32 [ %21, %75 ], [ %274, %273 ], [ 0, %469 ], [ %3, %471 ], [ %481, %480 ], [ %468, %467 ], [ %85, %79 ]
  %485 = phi i32 [ %19, %75 ], [ %19, %273 ], [ %19, %469 ], [ %19, %471 ], [ %19, %480 ], [ %276, %467 ], [ %19, %79 ]
  %486 = sub i32 0, %484
  %487 = icmp slt i32 %483, %1
  %488 = icmp sle i32 %484, %3
  %489 = select i1 %487, i1 %488, i1 false
  br i1 %489, label %17, label %490, !llvm.loop !55

490:                                              ; preds = %282, %64, %266, %275, %454, %469, %471, %473, %475, %482, %62, %62, %62, %184, %6, %177
  %491 = phi i32 [ -1, %177 ], [ 0, %6 ], [ %188, %184 ], [ -1, %282 ], [ -5, %64 ], [ -1, %266 ], [ -4, %275 ], [ %455, %454 ], [ -1, %469 ], [ -1, %471 ], [ -1, %473 ], [ %478, %475 ], [ %484, %482 ], [ -2, %62 ], [ -2, %62 ], [ -2, %62 ]
  ret i32 %491
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc range(i32 -4, 2) i32 @match_op(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef nonnull readonly %2) unnamed_addr #9 {
  %4 = load i8, ptr %0, align 1, !tbaa !20
  switch i8 %4, label %73 [
    i8 92, label %5
    i8 124, label %93
    i8 36, label %72
    i8 46, label %92
  ]

5:                                                ; preds = %3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %7 = load i8, ptr %6, align 1, !tbaa !20
  switch i8 %7, label %69 [
    i8 83, label %8
    i8 115, label %17
    i8 100, label %26
    i8 120, label %35
  ]

8:                                                ; preds = %5
  %9 = tail call ptr @__ctype_b_loc() #14
  %10 = load ptr, ptr %9, align 8, !tbaa !26
  %11 = load i8, ptr %1, align 1, !tbaa !20
  %12 = zext i8 %11 to i64
  %13 = getelementptr inbounds nuw i16, ptr %10, i64 %12
  %14 = load i16, ptr %13, align 2, !tbaa !28
  %15 = and i16 %14, 8192
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %92, label %93

17:                                               ; preds = %5
  %18 = tail call ptr @__ctype_b_loc() #14
  %19 = load ptr, ptr %18, align 8, !tbaa !26
  %20 = load i8, ptr %1, align 1, !tbaa !20
  %21 = zext i8 %20 to i64
  %22 = getelementptr inbounds nuw i16, ptr %19, i64 %21
  %23 = load i16, ptr %22, align 2, !tbaa !28
  %24 = and i16 %23, 8192
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %93, label %92

26:                                               ; preds = %5
  %27 = tail call ptr @__ctype_b_loc() #14
  %28 = load ptr, ptr %27, align 8, !tbaa !26
  %29 = load i8, ptr %1, align 1, !tbaa !20
  %30 = zext i8 %29 to i64
  %31 = getelementptr inbounds nuw i16, ptr %28, i64 %30
  %32 = load i16, ptr %31, align 2, !tbaa !28
  %33 = and i16 %32, 2048
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %93, label %92

35:                                               ; preds = %5
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %37 = load i8, ptr %36, align 1, !tbaa !20
  %38 = getelementptr i8, ptr %0, i64 3
  %39 = load i8, ptr %38, align 1, !tbaa !20
  %40 = tail call ptr @__ctype_tolower_loc() #14
  %41 = load ptr, ptr %40, align 8, !tbaa !46
  %42 = zext i8 %37 to i64
  %43 = getelementptr inbounds nuw i32, ptr %41, i64 %42
  %44 = load i32, ptr %43, align 4, !tbaa !33
  %45 = tail call ptr @__ctype_b_loc() #14
  %46 = load ptr, ptr %45, align 8, !tbaa !26
  %47 = sext i32 %44 to i64
  %48 = getelementptr inbounds i16, ptr %46, i64 %47
  %49 = load i16, ptr %48, align 2, !tbaa !28
  %50 = and i16 %49, 2048
  %51 = icmp eq i16 %50, 0
  %52 = select i1 %51, i32 268435369, i32 268435408
  %53 = add i32 %52, %44
  %54 = shl i32 %53, 4
  %55 = zext i8 %39 to i64
  %56 = getelementptr inbounds nuw i32, ptr %41, i64 %55
  %57 = load i32, ptr %56, align 4, !tbaa !33
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i16, ptr %46, i64 %58
  %60 = load i16, ptr %59, align 2, !tbaa !28
  %61 = and i16 %60, 2048
  %62 = icmp eq i16 %61, 0
  %63 = select i1 %62, i32 -87, i32 -48
  %64 = add nsw i32 %63, %57
  %65 = or i32 %64, %54
  %66 = load i8, ptr %1, align 1, !tbaa !20
  %67 = zext i8 %66 to i32
  %68 = icmp eq i32 %65, %67
  br i1 %68, label %92, label %93

69:                                               ; preds = %5
  %70 = load i8, ptr %1, align 1, !tbaa !20
  %71 = icmp eq i8 %7, %70
  br i1 %71, label %92, label %93

72:                                               ; preds = %3
  br label %93

73:                                               ; preds = %3
  %74 = getelementptr inbounds nuw i8, ptr %2, i64 4028
  %75 = load i32, ptr %74, align 4, !tbaa !12
  %76 = and i32 %75, 1
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %89, label %78

78:                                               ; preds = %73
  %79 = tail call ptr @__ctype_tolower_loc() #14
  %80 = load ptr, ptr %79, align 8, !tbaa !46
  %81 = zext i8 %4 to i64
  %82 = getelementptr inbounds nuw i32, ptr %80, i64 %81
  %83 = load i32, ptr %82, align 4, !tbaa !33
  %84 = load i8, ptr %1, align 1, !tbaa !20
  %85 = zext i8 %84 to i64
  %86 = getelementptr inbounds nuw i32, ptr %80, i64 %85
  %87 = load i32, ptr %86, align 4, !tbaa !33
  %88 = icmp eq i32 %83, %87
  br i1 %88, label %92, label %93

89:                                               ; preds = %73
  %90 = load i8, ptr %1, align 1, !tbaa !20
  %91 = icmp eq i8 %4, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %78, %89, %3, %69, %35, %26, %17, %8
  br label %93

93:                                               ; preds = %89, %78, %3, %69, %35, %26, %17, %8, %92, %72
  %94 = phi i32 [ 1, %92 ], [ -1, %72 ], [ -1, %8 ], [ -1, %17 ], [ -1, %26 ], [ -1, %35 ], [ -1, %69 ], [ -4, %3 ], [ -1, %78 ], [ -1, %89 ]
  ret i32 %94
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_tolower_loc() local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #10

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr, i32, i64) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

attributes #0 = { nofree nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind willreturn memory(argmem: read) }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }
attributes #13 = { nounwind willreturn memory(read) }
attributes #14 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)"}
!5 = !{!6, !9, i64 4008}
!6 = !{!"regex_info", !7, i64 0, !9, i64 2400, !7, i64 2408, !9, i64 4008, !10, i64 4016, !9, i64 4024, !9, i64 4028}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"int", !7, i64 0}
!10 = !{!"p1 _ZTS8slre_cap", !11, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!6, !9, i64 4028}
!13 = !{!6, !9, i64 4024}
!14 = !{!6, !10, i64 4016}
!15 = !{!16, !17, i64 0}
!16 = !{!"bracket_pair", !17, i64 0, !9, i64 8, !9, i64 12, !9, i64 16}
!17 = !{!"p1 omnipotent char", !11, i64 0}
!18 = !{!16, !9, i64 8}
!19 = !{!6, !9, i64 2400}
!20 = !{!7, !7, i64 0}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!24, !9, i64 0}
!24 = !{!"branch", !9, i64 0, !17, i64 8}
!25 = !{!24, !17, i64 8}
!26 = !{!27, !27, i64 0}
!27 = !{!"p1 short", !11, i64 0}
!28 = !{!29, !29, i64 0}
!29 = !{!"short", !7, i64 0}
!30 = distinct !{!30, !22}
!31 = distinct !{!31, !22}
!32 = !{i64 0, i64 4, !33, i64 8, i64 8, !34}
!33 = !{!9, !9, i64 0}
!34 = !{!17, !17, i64 0}
!35 = distinct !{!35, !22}
!36 = !{!16, !9, i64 16}
!37 = !{!16, !9, i64 12}
!38 = distinct !{!38, !22}
!39 = distinct !{!39, !22}
!40 = distinct !{!40, !22, !41}
!41 = !{!"llvm.loop.peeled.count", i32 1}
!42 = distinct !{!42, !22}
!43 = distinct !{!43, !22}
!44 = distinct !{!44, !22}
!45 = distinct !{!45, !22}
!46 = !{!47, !47, i64 0}
!47 = !{!"p1 int", !11, i64 0}
!48 = distinct !{!48, !22}
!49 = distinct !{!49, !22, !41}
!50 = distinct !{!50, !22, !41}
!51 = distinct !{!51, !22}
!52 = !{!53, !17, i64 0}
!53 = !{!"slre_cap", !17, i64 0, !9, i64 8}
!54 = !{!53, !9, i64 8}
!55 = distinct !{!55, !22}
