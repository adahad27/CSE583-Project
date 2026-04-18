; ModuleID = '../src/huffbench/libhuffbench.c'
source_filename = "../src/huffbench/libhuffbench.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_data = internal global [500 x i8] zeroinitializer, align 16
@orig_data = internal constant [500 x i8] c"J2OZF50FYLD5UTVYYRMT0VXO01VC5FNIB1CG12MTIPT2CIV00BOUWFDRAYTA3AI42KFXHRKPA3LCGA3ABLUYQXJRQ2RN2ZMYERPLC00CXFE3GB3HMS53JIOZE5HBYTZ2EJHGDBI0HMYNOVU0HUXR2FKBERC3E1ZIEBOHCWCJD0WRPLLX5DI1IS2NE4KI0DR4E5GHWIQZCHKRSVIRYQMBDJOHHYPB1AAAAGHWOXPQ4ZBQOKBH0OI3XWE4OUAJUAJUGQKUIZEGSFXBPYIKGQH3GM2UA23U2HJCXTW5N0G553APVIZ2YAZ4MVSMRQBNXKPO3FOK5UK5RKOGTHCLH2KUR2ADMBQDLASJFATFU3EFISL1ZOGAKQU1NV4ZWP3CPPLUP4ZD23IEPT5IBFJLW3HDSF2JUZLDIWYXUR0QPCU4WTHXZQDPNKSAPOJEIUHQK5I4RCPAFD41XFSQVV5D5RDP5MTHA0YK0AILCXLH1JCSPVCEKBHKSKZR", align 16
@heap = internal global [8192 x i8] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define dso_local void @compdecomp(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [512 x i64], align 16
  %4 = alloca [256 x i64], align 16
  %5 = alloca [512 x i32], align 16
  %6 = alloca [256 x i64], align 16
  %7 = alloca [256 x i8], align 16
  %8 = alloca [256 x i64], align 16
  %9 = alloca [256 x i8], align 16
  %10 = add i64 %1, 1
  %11 = tail call ptr @malloc_beebs(i64 noundef %10) #10
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(i64 2048, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 2048, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 2048, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %7) #10
  tail call void @llvm.memset.p0.i64(ptr align 1 %11, i8 0, i64 %10, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %3, i8 0, i64 4096, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %4, i8 0, i64 2048, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %5, i8 0, i64 2048, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %6, i8 0, i64 2048, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %7, i8 0, i64 256, i1 false)
  %12 = icmp eq i64 %1, 0
  br i1 %12, label %32, label %13

13:                                               ; preds = %2
  %14 = and i64 %1, 3
  %15 = icmp ult i64 %1, 4
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  %17 = and i64 %1, -4
  br label %33

18:                                               ; preds = %33, %13
  %19 = phi ptr [ %0, %13 ], [ %59, %33 ]
  %20 = icmp eq i64 %14, 0
  br i1 %20, label %32, label %21

21:                                               ; preds = %18, %21
  %22 = phi ptr [ %29, %21 ], [ %19, %18 ]
  %23 = phi i64 [ %30, %21 ], [ 0, %18 ]
  %24 = load i8, ptr %22, align 1, !tbaa !5
  %25 = zext i8 %24 to i64
  %26 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %25
  %27 = load i64, ptr %26, align 8, !tbaa !8
  %28 = add i64 %27, 1
  store i64 %28, ptr %26, align 8, !tbaa !8
  %29 = getelementptr inbounds nuw i8, ptr %22, i64 1
  %30 = add i64 %23, 1
  %31 = icmp eq i64 %30, %14
  br i1 %31, label %32, label %21, !llvm.loop !10

32:                                               ; preds = %18, %21, %2
  br label %68

33:                                               ; preds = %33, %16
  %34 = phi ptr [ %0, %16 ], [ %59, %33 ]
  %35 = phi i64 [ 0, %16 ], [ %60, %33 ]
  %36 = load i8, ptr %34, align 1, !tbaa !5
  %37 = zext i8 %36 to i64
  %38 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %37
  %39 = load i64, ptr %38, align 8, !tbaa !8
  %40 = add i64 %39, 1
  store i64 %40, ptr %38, align 8, !tbaa !8
  %41 = getelementptr inbounds nuw i8, ptr %34, i64 1
  %42 = load i8, ptr %41, align 1, !tbaa !5
  %43 = zext i8 %42 to i64
  %44 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %43
  %45 = load i64, ptr %44, align 8, !tbaa !8
  %46 = add i64 %45, 1
  store i64 %46, ptr %44, align 8, !tbaa !8
  %47 = getelementptr inbounds nuw i8, ptr %34, i64 2
  %48 = load i8, ptr %47, align 1, !tbaa !5
  %49 = zext i8 %48 to i64
  %50 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %49
  %51 = load i64, ptr %50, align 8, !tbaa !8
  %52 = add i64 %51, 1
  store i64 %52, ptr %50, align 8, !tbaa !8
  %53 = getelementptr inbounds nuw i8, ptr %34, i64 3
  %54 = load i8, ptr %53, align 1, !tbaa !5
  %55 = zext i8 %54 to i64
  %56 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %55
  %57 = load i64, ptr %56, align 8, !tbaa !8
  %58 = add i64 %57, 1
  store i64 %58, ptr %56, align 8, !tbaa !8
  %59 = getelementptr inbounds nuw i8, ptr %34, i64 4
  %60 = add i64 %35, 4
  %61 = icmp eq i64 %60, %17
  br i1 %61, label %18, label %33, !llvm.loop !12

62:                                               ; preds = %86
  %63 = icmp eq i64 %87, 0
  br i1 %63, label %244, label %64

64:                                               ; preds = %62
  %65 = trunc i64 %87 to i32
  %66 = getelementptr inbounds i8, ptr %4, i64 -8
  %67 = sdiv i32 %65, 2
  br label %94

68:                                               ; preds = %86, %32
  %69 = phi i64 [ 0, %32 ], [ %88, %86 ]
  %70 = phi i64 [ 0, %32 ], [ %87, %86 ]
  %71 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %69
  %72 = load i64, ptr %71, align 16, !tbaa !8
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %68
  %75 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %70
  store i64 %69, ptr %75, align 8, !tbaa !8
  %76 = add i64 %70, 1
  br label %77

77:                                               ; preds = %68, %74
  %78 = phi i64 [ %76, %74 ], [ %70, %68 ]
  %79 = or disjoint i64 %69, 1
  %80 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %79
  %81 = load i64, ptr %80, align 8, !tbaa !8
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %77
  %84 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %78
  store i64 %79, ptr %84, align 8, !tbaa !8
  %85 = add i64 %78, 1
  br label %86

86:                                               ; preds = %83, %77
  %87 = phi i64 [ %85, %83 ], [ %78, %77 ]
  %88 = add nuw nsw i64 %69, 2
  %89 = icmp eq i64 %88, 256
  br i1 %89, label %62, label %68, !llvm.loop !14

90:                                               ; preds = %137
  %91 = icmp eq i64 %87, 1
  br i1 %91, label %244, label %92

92:                                               ; preds = %90
  %93 = getelementptr inbounds i8, ptr %4, i64 -8
  br label %143

94:                                               ; preds = %64, %137
  %95 = phi i64 [ %87, %64 ], [ %141, %137 ]
  %96 = trunc i64 %95 to i32
  %97 = shl i64 %95, 32
  %98 = ashr exact i64 %97, 32
  %99 = getelementptr inbounds i64, ptr %66, i64 %98
  %100 = load i64, ptr %99, align 8, !tbaa !8
  %101 = icmp slt i32 %67, %96
  %102 = shl i64 %100, 32
  br i1 %101, label %137, label %103

103:                                              ; preds = %94
  %104 = ashr exact i64 %102, 29
  %105 = getelementptr inbounds i8, ptr %3, i64 %104
  %106 = load i64, ptr %105, align 8, !tbaa !8
  br label %107

107:                                              ; preds = %134, %103
  %108 = phi i32 [ %96, %103 ], [ %126, %134 ]
  %109 = shl nsw i32 %108, 1
  %110 = icmp slt i32 %109, %65
  br i1 %110, label %111, label %125

111:                                              ; preds = %107
  %112 = sext i32 %109 to i64
  %113 = getelementptr inbounds i64, ptr %66, i64 %112
  %114 = load i64, ptr %113, align 8, !tbaa !8
  %115 = getelementptr inbounds nuw i64, ptr %3, i64 %114
  %116 = load i64, ptr %115, align 8, !tbaa !8
  %117 = or disjoint i32 %109, 1
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i64, ptr %66, i64 %118
  %120 = load i64, ptr %119, align 16, !tbaa !8
  %121 = getelementptr inbounds nuw i64, ptr %3, i64 %120
  %122 = load i64, ptr %121, align 8, !tbaa !8
  %123 = icmp ugt i64 %116, %122
  %124 = select i1 %123, i32 %117, i32 %109
  br label %125

125:                                              ; preds = %111, %107
  %126 = phi i32 [ %109, %107 ], [ %124, %111 ]
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i64, ptr %66, i64 %127
  %129 = load i64, ptr %128, align 8, !tbaa !8
  %130 = getelementptr inbounds nuw i64, ptr %3, i64 %129
  %131 = load i64, ptr %130, align 8, !tbaa !8
  %132 = icmp ult i64 %106, %131
  %133 = sext i32 %108 to i64
  br i1 %132, label %137, label %134

134:                                              ; preds = %125
  %135 = getelementptr inbounds i64, ptr %66, i64 %133
  store i64 %129, ptr %135, align 8, !tbaa !8
  %136 = icmp sgt i32 %126, %67
  br i1 %136, label %137, label %107, !llvm.loop !15

137:                                              ; preds = %134, %125, %94
  %138 = phi i64 [ %98, %94 ], [ %127, %134 ], [ %133, %125 ]
  %139 = ashr exact i64 %102, 32
  %140 = getelementptr inbounds i64, ptr %66, i64 %138
  store i64 %139, ptr %140, align 8, !tbaa !8
  %141 = add i64 %95, -1
  %142 = icmp eq i64 %141, 0
  br i1 %142, label %90, label %94, !llvm.loop !16

143:                                              ; preds = %92, %239
  %144 = phi i64 [ %87, %92 ], [ %145, %239 ]
  %145 = add i64 %144, -1
  %146 = load i64, ptr %4, align 16, !tbaa !8
  %147 = getelementptr inbounds nuw [256 x i64], ptr %4, i64 0, i64 %145
  %148 = load i64, ptr %147, align 8, !tbaa !8
  store i64 %148, ptr %4, align 16, !tbaa !8
  %149 = trunc i64 %145 to i32
  %150 = sdiv i32 %149, 2
  %151 = icmp slt i32 %149, 2
  %152 = shl i64 %148, 32
  br i1 %151, label %187, label %153

153:                                              ; preds = %143
  %154 = ashr exact i64 %152, 29
  %155 = getelementptr inbounds i8, ptr %3, i64 %154
  %156 = load i64, ptr %155, align 8, !tbaa !8
  br label %157

157:                                              ; preds = %184, %153
  %158 = phi i32 [ 1, %153 ], [ %176, %184 ]
  %159 = shl nsw i32 %158, 1
  %160 = icmp slt i32 %159, %149
  br i1 %160, label %161, label %175

161:                                              ; preds = %157
  %162 = sext i32 %159 to i64
  %163 = getelementptr inbounds i64, ptr %93, i64 %162
  %164 = load i64, ptr %163, align 8, !tbaa !8
  %165 = getelementptr inbounds nuw i64, ptr %3, i64 %164
  %166 = load i64, ptr %165, align 8, !tbaa !8
  %167 = or disjoint i32 %159, 1
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i64, ptr %93, i64 %168
  %170 = load i64, ptr %169, align 16, !tbaa !8
  %171 = getelementptr inbounds nuw i64, ptr %3, i64 %170
  %172 = load i64, ptr %171, align 8, !tbaa !8
  %173 = icmp ugt i64 %166, %172
  %174 = select i1 %173, i32 %167, i32 %159
  br label %175

175:                                              ; preds = %161, %157
  %176 = phi i32 [ %159, %157 ], [ %174, %161 ]
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i64, ptr %93, i64 %177
  %179 = load i64, ptr %178, align 8, !tbaa !8
  %180 = getelementptr inbounds nuw i64, ptr %3, i64 %179
  %181 = load i64, ptr %180, align 8, !tbaa !8
  %182 = icmp ult i64 %156, %181
  %183 = sext i32 %158 to i64
  br i1 %182, label %187, label %184

184:                                              ; preds = %175
  %185 = getelementptr inbounds i64, ptr %93, i64 %183
  store i64 %179, ptr %185, align 8, !tbaa !8
  %186 = icmp sgt i32 %176, %150
  br i1 %186, label %187, label %157, !llvm.loop !15

187:                                              ; preds = %184, %175, %143
  %188 = phi i64 [ 1, %143 ], [ %177, %184 ], [ %183, %175 ]
  %189 = ashr exact i64 %152, 32
  %190 = getelementptr inbounds i64, ptr %93, i64 %188
  store i64 %189, ptr %190, align 8, !tbaa !8
  %191 = load i64, ptr %4, align 16, !tbaa !8
  %192 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %191
  %193 = load i64, ptr %192, align 8, !tbaa !8
  %194 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %146
  %195 = load i64, ptr %194, align 8, !tbaa !8
  %196 = add i64 %195, %193
  %197 = add i64 %144, 255
  %198 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %197
  store i64 %196, ptr %198, align 8, !tbaa !8
  %199 = trunc i64 %197 to i32
  %200 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %146
  store i32 %199, ptr %200, align 4, !tbaa !17
  %201 = trunc i64 %144 to i32
  %202 = sub i32 -255, %201
  %203 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %191
  store i32 %202, ptr %203, align 4, !tbaa !17
  store i64 %197, ptr %4, align 16, !tbaa !8
  %204 = shl i64 %197, 32
  br i1 %151, label %239, label %205

205:                                              ; preds = %187
  %206 = ashr exact i64 %204, 29
  %207 = getelementptr inbounds i8, ptr %3, i64 %206
  %208 = load i64, ptr %207, align 8, !tbaa !8
  br label %209

209:                                              ; preds = %236, %205
  %210 = phi i32 [ 1, %205 ], [ %228, %236 ]
  %211 = shl nsw i32 %210, 1
  %212 = icmp slt i32 %211, %149
  br i1 %212, label %213, label %227

213:                                              ; preds = %209
  %214 = sext i32 %211 to i64
  %215 = getelementptr inbounds i64, ptr %93, i64 %214
  %216 = load i64, ptr %215, align 8, !tbaa !8
  %217 = getelementptr inbounds nuw i64, ptr %3, i64 %216
  %218 = load i64, ptr %217, align 8, !tbaa !8
  %219 = or disjoint i32 %211, 1
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i64, ptr %93, i64 %220
  %222 = load i64, ptr %221, align 16, !tbaa !8
  %223 = getelementptr inbounds nuw i64, ptr %3, i64 %222
  %224 = load i64, ptr %223, align 8, !tbaa !8
  %225 = icmp ugt i64 %218, %224
  %226 = select i1 %225, i32 %219, i32 %211
  br label %227

227:                                              ; preds = %213, %209
  %228 = phi i32 [ %211, %209 ], [ %226, %213 ]
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i64, ptr %93, i64 %229
  %231 = load i64, ptr %230, align 8, !tbaa !8
  %232 = getelementptr inbounds nuw i64, ptr %3, i64 %231
  %233 = load i64, ptr %232, align 8, !tbaa !8
  %234 = icmp ult i64 %208, %233
  %235 = sext i32 %210 to i64
  br i1 %234, label %239, label %236

236:                                              ; preds = %227
  %237 = getelementptr inbounds i64, ptr %93, i64 %235
  store i64 %231, ptr %237, align 8, !tbaa !8
  %238 = icmp sgt i32 %228, %150
  br i1 %238, label %239, label %209, !llvm.loop !15

239:                                              ; preds = %236, %227, %187
  %240 = phi i64 [ 1, %187 ], [ %229, %236 ], [ %235, %227 ]
  %241 = ashr exact i64 %204, 32
  %242 = getelementptr inbounds i64, ptr %93, i64 %240
  store i64 %241, ptr %242, align 8, !tbaa !8
  %243 = icmp ugt i64 %145, 1
  br i1 %243, label %143, label %244, !llvm.loop !19

244:                                              ; preds = %239, %62, %90
  %245 = phi i64 [ %87, %90 ], [ 0, %62 ], [ 1, %239 ]
  %246 = or disjoint i64 %245, 256
  %247 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %246
  store i32 0, ptr %247, align 4, !tbaa !17
  br label %248

248:                                              ; preds = %244, %285
  %249 = phi i64 [ 0, %244 ], [ %287, %285 ]
  %250 = phi i64 [ 0, %244 ], [ %286, %285 ]
  %251 = phi i64 [ 0, %244 ], [ %288, %285 ]
  %252 = getelementptr inbounds nuw [512 x i64], ptr %3, i64 0, i64 %251
  %253 = load i64, ptr %252, align 8, !tbaa !8
  %254 = icmp eq i64 %253, 0
  br i1 %254, label %259, label %255

255:                                              ; preds = %248
  %256 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %251
  %257 = load i32, ptr %256, align 4, !tbaa !17
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %277, label %262

259:                                              ; preds = %248
  %260 = getelementptr inbounds nuw [256 x i64], ptr %6, i64 0, i64 %251
  store i64 0, ptr %260, align 8, !tbaa !8
  %261 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %251
  store i8 0, ptr %261, align 1, !tbaa !5
  br label %285

262:                                              ; preds = %255, %262
  %263 = phi i32 [ %275, %262 ], [ %257, %255 ]
  %264 = phi i64 [ %269, %262 ], [ 0, %255 ]
  %265 = phi i64 [ %273, %262 ], [ 0, %255 ]
  %266 = phi i64 [ %272, %262 ], [ 1, %255 ]
  %267 = icmp slt i32 %263, 0
  %268 = select i1 %267, i64 %266, i64 0
  %269 = add i64 %268, %264
  %270 = tail call i32 @llvm.abs.i32(i32 %263, i1 true)
  %271 = zext nneg i32 %270 to i64
  %272 = shl i64 %266, 1
  %273 = add i64 %265, 1
  %274 = getelementptr inbounds nuw [512 x i32], ptr %5, i64 0, i64 %271
  %275 = load i32, ptr %274, align 4, !tbaa !17
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %277, label %262, !llvm.loop !20

277:                                              ; preds = %262, %255
  %278 = phi i64 [ 0, %255 ], [ %273, %262 ]
  %279 = phi i64 [ 0, %255 ], [ %269, %262 ]
  %280 = getelementptr inbounds nuw [256 x i64], ptr %6, i64 0, i64 %251
  store i64 %279, ptr %280, align 8, !tbaa !8
  %281 = trunc i64 %278 to i8
  %282 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %251
  store i8 %281, ptr %282, align 1, !tbaa !5
  %283 = tail call i64 @llvm.umax.i64(i64 %279, i64 %250)
  %284 = tail call i64 @llvm.umax.i64(i64 %278, i64 %249)
  br label %285

285:                                              ; preds = %277, %259
  %286 = phi i64 [ %250, %259 ], [ %283, %277 ]
  %287 = phi i64 [ %249, %259 ], [ %284, %277 ]
  %288 = add nuw nsw i64 %251, 1
  %289 = icmp eq i64 %288, 256
  br i1 %289, label %290, label %248, !llvm.loop !21

290:                                              ; preds = %285
  %291 = icmp ugt i64 %287, 64
  %292 = icmp eq i64 %286, 0
  %293 = select i1 %291, i1 true, i1 %292
  br i1 %293, label %495, label %294

294:                                              ; preds = %290
  br i1 %12, label %358, label %295

295:                                              ; preds = %294, %346
  %296 = phi i32 [ %349, %346 ], [ -1, %294 ]
  %297 = phi i8 [ %348, %346 ], [ 0, %294 ]
  %298 = phi i64 [ %347, %346 ], [ 0, %294 ]
  %299 = phi i64 [ %351, %346 ], [ 0, %294 ]
  %300 = phi ptr [ %350, %346 ], [ %0, %294 ]
  %301 = load i8, ptr %300, align 1, !tbaa !5
  %302 = zext i8 %301 to i64
  %303 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %302
  %304 = load i8, ptr %303, align 1, !tbaa !5
  %305 = icmp eq i8 %304, 0
  br i1 %305, label %346, label %306

306:                                              ; preds = %295
  %307 = zext i8 %304 to i32
  %308 = add nsw i32 %307, -1
  %309 = shl nuw i32 1, %308
  %310 = sext i32 %309 to i64
  br label %311

311:                                              ; preds = %306, %328
  %312 = phi i8 [ %329, %328 ], [ %301, %306 ]
  %313 = phi i32 [ %332, %328 ], [ %296, %306 ]
  %314 = phi i8 [ %339, %328 ], [ %297, %306 ]
  %315 = phi i64 [ %330, %328 ], [ %298, %306 ]
  %316 = phi i64 [ %341, %328 ], [ 0, %306 ]
  %317 = phi i64 [ %340, %328 ], [ %310, %306 ]
  %318 = icmp eq i32 %313, 7
  br i1 %318, label %319, label %325

319:                                              ; preds = %311
  %320 = getelementptr inbounds nuw i8, ptr %11, i64 %315
  store i8 %314, ptr %320, align 1, !tbaa !5
  %321 = add i64 %315, 1
  %322 = icmp eq i64 %321, %1
  br i1 %322, label %495, label %323

323:                                              ; preds = %319
  %324 = load i8, ptr %300, align 1, !tbaa !5
  br label %328

325:                                              ; preds = %311
  %326 = add nsw i32 %313, 1
  %327 = shl i8 %314, 1
  br label %328

328:                                              ; preds = %323, %325
  %329 = phi i8 [ %312, %325 ], [ %324, %323 ]
  %330 = phi i64 [ %315, %325 ], [ %321, %323 ]
  %331 = phi i8 [ %327, %325 ], [ 0, %323 ]
  %332 = phi i32 [ %326, %325 ], [ 0, %323 ]
  %333 = zext i8 %329 to i64
  %334 = getelementptr inbounds nuw [256 x i64], ptr %6, i64 0, i64 %333
  %335 = load i64, ptr %334, align 8, !tbaa !8
  %336 = and i64 %335, %317
  %337 = icmp ne i64 %336, 0
  %338 = zext i1 %337 to i8
  %339 = or disjoint i8 %331, %338
  %340 = lshr i64 %317, 1
  %341 = add nuw nsw i64 %316, 1
  %342 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %333
  %343 = load i8, ptr %342, align 1, !tbaa !5
  %344 = zext i8 %343 to i64
  %345 = icmp samesign ult i64 %341, %344
  br i1 %345, label %311, label %346, !llvm.loop !22

346:                                              ; preds = %328, %295
  %347 = phi i64 [ %298, %295 ], [ %330, %328 ]
  %348 = phi i8 [ %297, %295 ], [ %339, %328 ]
  %349 = phi i32 [ %296, %295 ], [ %332, %328 ]
  %350 = getelementptr inbounds nuw i8, ptr %300, i64 1
  %351 = add nuw i64 %299, 1
  %352 = icmp eq i64 %351, %1
  br i1 %352, label %353, label %295, !llvm.loop !23

353:                                              ; preds = %346
  %354 = sub nsw i32 7, %349
  %355 = zext i8 %348 to i32
  %356 = shl i32 %355, %354
  %357 = trunc i32 %356 to i8
  br label %358

358:                                              ; preds = %353, %294
  %359 = phi i64 [ 0, %294 ], [ %347, %353 ]
  %360 = phi i8 [ 0, %294 ], [ %357, %353 ]
  %361 = getelementptr inbounds nuw i8, ptr %11, i64 %359
  store i8 %360, ptr %361, align 1, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 2048, ptr nonnull %8) #10
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %9) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %8, i8 0, i64 2048, i1 false)
  br label %362

362:                                              ; preds = %358, %421
  %363 = phi ptr [ %9, %358 ], [ %366, %421 ]
  %364 = phi i64 [ 0, %358 ], [ %422, %421 ]
  %365 = trunc nuw i64 %364 to i8
  store i8 %365, ptr %363, align 1, !tbaa !5
  %366 = getelementptr inbounds nuw i8, ptr %363, i64 1
  %367 = getelementptr inbounds nuw [256 x i64], ptr %6, i64 0, i64 %364
  %368 = load i64, ptr %367, align 8, !tbaa !8
  %369 = getelementptr inbounds nuw [256 x i8], ptr %7, i64 0, i64 %364
  %370 = load i8, ptr %369, align 1, !tbaa !5
  %371 = zext i8 %370 to i64
  %372 = or i64 %368, %371
  %373 = icmp eq i64 %372, 0
  br i1 %373, label %421, label %374

374:                                              ; preds = %362
  %375 = icmp eq i8 %370, 0
  br i1 %375, label %418, label %376

376:                                              ; preds = %374
  %377 = zext i8 %370 to i32
  %378 = add nsw i32 %377, -1
  %379 = shl nuw i32 1, %378
  %380 = sext i32 %379 to i64
  %381 = and i64 %371, 1
  %382 = icmp eq i8 %370, 1
  br i1 %382, label %407, label %383

383:                                              ; preds = %376
  %384 = and i64 %371, 254
  br label %385

385:                                              ; preds = %385, %383
  %386 = phi i64 [ %380, %383 ], [ %402, %385 ]
  %387 = phi i64 [ 0, %383 ], [ %401, %385 ]
  %388 = phi i64 [ 0, %383 ], [ %403, %385 ]
  %389 = shl i64 %387, 1
  %390 = or disjoint i64 %389, 1
  %391 = and i64 %386, %368
  %392 = icmp eq i64 %391, 0
  %393 = add i64 %389, 2
  %394 = select i1 %392, i64 %390, i64 %393
  %395 = lshr i64 %386, 1
  %396 = shl i64 %394, 1
  %397 = or disjoint i64 %396, 1
  %398 = and i64 %395, %368
  %399 = icmp eq i64 %398, 0
  %400 = add i64 %396, 2
  %401 = select i1 %399, i64 %397, i64 %400
  %402 = lshr i64 %386, 2
  %403 = add i64 %388, 2
  %404 = icmp eq i64 %403, %384
  br i1 %404, label %405, label %385, !llvm.loop !24

405:                                              ; preds = %385
  %406 = shl i64 %401, 1
  br label %407

407:                                              ; preds = %405, %376
  %408 = phi i64 [ poison, %376 ], [ %401, %405 ]
  %409 = phi i64 [ %380, %376 ], [ %402, %405 ]
  %410 = phi i64 [ 0, %376 ], [ %406, %405 ]
  %411 = icmp eq i64 %381, 0
  br i1 %411, label %418, label %412

412:                                              ; preds = %407
  %413 = or disjoint i64 %410, 1
  %414 = and i64 %409, %368
  %415 = icmp eq i64 %414, 0
  %416 = add i64 %410, 2
  %417 = select i1 %415, i64 %413, i64 %416
  br label %418

418:                                              ; preds = %412, %407, %374
  %419 = phi i64 [ 0, %374 ], [ %408, %407 ], [ %417, %412 ]
  %420 = getelementptr inbounds nuw [256 x i64], ptr %8, i64 0, i64 %364
  store i64 %419, ptr %420, align 8, !tbaa !8
  br label %421

421:                                              ; preds = %362, %418
  %422 = add nuw nsw i64 %364, 1
  %423 = icmp eq i64 %422, 256
  br i1 %423, label %424, label %362, !llvm.loop !25

424:                                              ; preds = %421, %442
  %425 = phi i64 [ %446, %442 ], [ 1, %421 ]
  %426 = getelementptr inbounds nuw [256 x i64], ptr %8, i64 0, i64 %425
  %427 = load i64, ptr %426, align 8, !tbaa !8
  %428 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %425
  %429 = load i8, ptr %428, align 1, !tbaa !5
  br label %430

430:                                              ; preds = %424, %436
  %431 = phi i64 [ %425, %424 ], [ %432, %436 ]
  %432 = add nsw i64 %431, -1
  %433 = getelementptr inbounds nuw [256 x i64], ptr %8, i64 0, i64 %432
  %434 = load i64, ptr %433, align 8, !tbaa !8
  %435 = icmp ugt i64 %434, %427
  br i1 %435, label %436, label %442

436:                                              ; preds = %430
  %437 = getelementptr inbounds nuw [256 x i64], ptr %8, i64 0, i64 %431
  store i64 %434, ptr %437, align 8, !tbaa !8
  %438 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %432
  %439 = load i8, ptr %438, align 1, !tbaa !5
  %440 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %431
  store i8 %439, ptr %440, align 1, !tbaa !5
  %441 = icmp eq i64 %432, 0
  br i1 %441, label %442, label %430, !llvm.loop !26

442:                                              ; preds = %436, %430
  %443 = phi i64 [ 0, %436 ], [ %431, %430 ]
  %444 = getelementptr inbounds nuw [256 x i64], ptr %8, i64 0, i64 %443
  store i64 %427, ptr %444, align 8, !tbaa !8
  %445 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %443
  store i8 %429, ptr %445, align 1, !tbaa !5
  %446 = add nuw nsw i64 %425, 1
  %447 = icmp eq i64 %446, 256
  br i1 %447, label %448, label %424, !llvm.loop !27

448:                                              ; preds = %442, %448
  %449 = phi i64 [ %453, %448 ], [ 0, %442 ]
  %450 = getelementptr inbounds nuw [256 x i64], ptr %8, i64 0, i64 %449
  %451 = load i64, ptr %450, align 8, !tbaa !8
  %452 = icmp eq i64 %451, 0
  %453 = add i64 %449, 1
  br i1 %452, label %448, label %454, !llvm.loop !28

454:                                              ; preds = %448
  br i1 %12, label %494, label %455

455:                                              ; preds = %454, %483
  %456 = phi i64 [ %487, %483 ], [ %449, %454 ]
  %457 = phi ptr [ %486, %483 ], [ %0, %454 ]
  %458 = phi ptr [ %492, %483 ], [ %11, %454 ]
  %459 = phi i64 [ %485, %483 ], [ 0, %454 ]
  %460 = phi i64 [ %490, %483 ], [ 128, %454 ]
  %461 = phi i64 [ %484, %483 ], [ 0, %454 ]
  %462 = shl i64 %461, 1
  %463 = or disjoint i64 %462, 1
  %464 = load i8, ptr %458, align 1, !tbaa !5
  %465 = zext i8 %464 to i64
  %466 = and i64 %460, %465
  %467 = icmp eq i64 %466, 0
  %468 = add i64 %462, 2
  %469 = select i1 %467, i64 %463, i64 %468
  br label %470

470:                                              ; preds = %470, %455
  %471 = phi i64 [ %456, %455 ], [ %475, %470 ]
  %472 = getelementptr inbounds nuw [256 x i64], ptr %8, i64 0, i64 %471
  %473 = load i64, ptr %472, align 8, !tbaa !8
  %474 = icmp ult i64 %473, %469
  %475 = add i64 %471, 1
  br i1 %474, label %470, label %476, !llvm.loop !29

476:                                              ; preds = %470
  %477 = icmp eq i64 %469, %473
  br i1 %477, label %478, label %483

478:                                              ; preds = %476
  %479 = getelementptr inbounds nuw [256 x i8], ptr %9, i64 0, i64 %471
  %480 = load i8, ptr %479, align 1, !tbaa !5
  store i8 %480, ptr %457, align 1, !tbaa !5
  %481 = getelementptr inbounds nuw i8, ptr %457, i64 1
  %482 = add i64 %459, 1
  br label %483

483:                                              ; preds = %478, %476
  %484 = phi i64 [ 0, %478 ], [ %469, %476 ]
  %485 = phi i64 [ %482, %478 ], [ %459, %476 ]
  %486 = phi ptr [ %481, %478 ], [ %457, %476 ]
  %487 = phi i64 [ %449, %478 ], [ %471, %476 ]
  %488 = icmp ult i64 %460, 2
  %489 = lshr i64 %460, 1
  %490 = select i1 %488, i64 128, i64 %489
  %491 = zext i1 %488 to i64
  %492 = getelementptr inbounds nuw i8, ptr %458, i64 %491
  %493 = icmp ult i64 %485, %1
  br i1 %493, label %455, label %494, !llvm.loop !30

494:                                              ; preds = %483, %454
  tail call void @free_beebs(ptr noundef %11) #10
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 2048, ptr nonnull %8) #10
  br label %495

495:                                              ; preds = %319, %494, %290
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 2048, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 2048, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 2048, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #10
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @malloc_beebs(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

declare void @free_beebs(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local range(i32 0, 2) i32 @verify_benchmark(i32 noundef %0) local_unnamed_addr #4 {
  %2 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(500) @test_data, ptr noundef nonnull dereferenceable(500) @orig_data, i64 500)
  %3 = icmp eq i32 %2, 0
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @initialise_benchmark() local_unnamed_addr #5 {
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @warm_caches(i32 noundef %0) local_unnamed_addr #0 {
  tail call fastcc void @benchmark_body(i32 noundef 1, i32 noundef %0)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @benchmark_body(i32 noundef range(i32 1, 12) %0, i32 noundef %1) unnamed_addr #6 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %13, label %4

4:                                                ; preds = %2, %10
  %5 = phi i32 [ %11, %10 ], [ 0, %2 ]
  br label %6

6:                                                ; preds = %4, %6
  %7 = phi i32 [ 0, %4 ], [ %8, %6 ]
  tail call void @init_heap_beebs(ptr noundef nonnull @heap, i64 noundef 8192) #10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(500) @test_data, ptr noundef nonnull align 16 dereferenceable(500) @orig_data, i64 500, i1 false)
  tail call void @compdecomp(ptr noundef nonnull @test_data, i64 noundef 500)
  %8 = add nuw i32 %7, 1
  %9 = icmp eq i32 %8, %1
  br i1 %9, label %10, label %6, !llvm.loop !31

10:                                               ; preds = %6
  %11 = add nuw nsw i32 %5, 1
  %12 = icmp eq i32 %11, %0
  br i1 %12, label %13, label %4, !llvm.loop !32

13:                                               ; preds = %10, %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local noundef i32 @benchmark() local_unnamed_addr #6 {
  tail call fastcc void @benchmark_body(i32 noundef 11, i32 noundef 20)
  ret i32 0
}

declare void @init_heap_beebs(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nofree nounwind willreturn memory(argmem: read) }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 20.1.8 (https://github.com/llvm/llvm-project.git 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"long", !6, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = distinct !{!14, !13}
!15 = distinct !{!15, !13}
!16 = distinct !{!16, !13}
!17 = !{!18, !18, i64 0}
!18 = !{!"int", !6, i64 0}
!19 = distinct !{!19, !13}
!20 = distinct !{!20, !13}
!21 = distinct !{!21, !13}
!22 = distinct !{!22, !13}
!23 = distinct !{!23, !13}
!24 = distinct !{!24, !13}
!25 = distinct !{!25, !13}
!26 = distinct !{!26, !13}
!27 = distinct !{!27, !13}
!28 = distinct !{!28, !13}
!29 = distinct !{!29, !13}
!30 = distinct !{!30, !13}
!31 = distinct !{!31, !13}
!32 = distinct !{!32, !13}
